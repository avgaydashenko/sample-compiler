type opnd = R of int | S of int | M of string | L of int

let x86regs = [|
  "%ebx";
  "%ecx"; 
  "%esi"; 
  "%edi";
  "%eax"; 
  "%edx"
|]
                
let num_of_regs = Array.length x86regs
let word_size = 4

let ebx = R 0
let ecx = R 1           
let esi = R 2
let edi = R 3            
let eax = R 4
let edx = R 5

type x86instr =

| X86Binop of opnd * opnd * string 
| X86Div   of opnd
| X86Set   of string
| X86Mov   of opnd * opnd
| X86Push  of opnd
| X86Pop   of opnd
| X86Ret
| X86Call  of string
| X86Cltd
| X86Cmp   of opnd * opnd
| X86Lbl   of string
| X86Jmp   of string
| X86Cjmp  of string * string
| X86Leave
| X86Esp   of int
                       
module S = Set.Make (String)

class x86env =
  object(self)
    val    local_vars = ref S.empty
    method local x    = local_vars := S.add x !local_vars
    method local_vars = S.elements !local_vars

    val    allocated  = ref 0
    method allocate n = allocated := max n !allocated
    method allocated  = !allocated
  end

let allocate env stack num_locals =
  match stack with
  | []                              -> R 0
  | (S n)::_                        -> env#allocate (abs(n+num_locals)+1); S (n-1)
  | (R n)::_ when n < num_of_regs-3 -> R (n+1)
  | _                               -> env#allocate (1); S (-num_locals-1)

module Show =
  struct

    let opnd = function
    | R i -> x86regs.(i)
    | S i -> Printf.sprintf "%d(%%ebp)" (i * word_size)
    | M x -> x
    | L i -> Printf.sprintf "$%d" i

    let instr = function

    | X86Binop (s1, s2, p) -> Printf.sprintf "\t%s\t%s,\t%s"  p (opnd s1) (opnd s2)         
    | X86Div    s          -> Printf.sprintf "\tidivl\t%s"      (opnd s )
    | X86Set    p          -> Printf.sprintf "\tset%s\t%%al"     p
    | X86Mov   (s1, s2)    -> Printf.sprintf "\tmovl\t%s,\t%s"  (opnd s1) (opnd s2)
    | X86Push   s          -> Printf.sprintf "\tpushl\t%s"      (opnd s )
    | X86Pop    s          -> Printf.sprintf "\tpopl\t%s"       (opnd s )
    | X86Cmp   (s1, s2)    -> Printf.sprintf "\tcmpl\t%s,\t%s"  (opnd s1) (opnd s2)                                         
    | X86Cltd              -> Printf.sprintf "\tcltd"                                         
    | X86Ret               -> "\tret"
    | X86Call   p          -> Printf.sprintf "\tcall\t%s"        p
    | X86Lbl    l          -> Printf.sprintf "%s:"               l
    | X86Jmp    l          -> Printf.sprintf "\tjmp\t%s"         l
    | X86Cjmp  (s, l)      -> Printf.sprintf "\tj%s\t%s"         s l
    | X86Leave             -> "\tleave"
    | X86Esp    n          -> Printf.sprintf "\taddl\t$%d,\t%%esp" n
                                         
  end

module Compile =
  struct

    open StackMachine

    let contains x list = List.exists (fun y -> y = x) list
           
    let get_slot x args_names locals =
      let rec get_index s x = function
          | y::list' -> if x=y then s else get_index (s+1) x list'
      in
      if contains x args_names then S ((get_index 0 x args_names) + 2)
      else if contains x locals then S (-((get_index 0 x locals)+1)) else M x
           
    let stack_program env code (fname, (args_names, locals)) func_data =
      let rec compile stack code =
        let binop_command = function
          | "+" -> "addl"
          | "-" -> "subl"
          | "*" -> "imull"
        in
        let comp_command  = function
          | "<"  -> "l"
          | "<=" -> "le"
          | ">"  -> "g"
          | ">=" -> "ge"
          | "==" -> "e"
          | "!=" -> "ne"                    
        in
        let div_reg = function
          | "/"  -> eax
          | "%"  -> edx
        in
        let func y =
          match y with
          | R i -> (y, [])
          | S i -> (edx, [X86Mov (y, edx)])
        in                            
	match code with
	| []       -> []
	| i::code' ->
	    let (stack', x86code) =
              match i with
              | S_READ   -> ([eax], [X86Call "read"])
              | S_WRITE  -> ([], [X86Push (R 0); X86Call "write"; X86Pop (R 0)])
              | S_PUSH n ->
		 let s = allocate env stack (List.length locals) in
		 (s::stack, [X86Mov (L n, s)])
              | S_LD x   ->
                 let x_slot = get_slot x args_names locals in
                 if not (contains x args_names) then env#local x;
                 let s = allocate env stack (List.length locals) in
		  (s::stack, [X86Mov (x_slot, eax); X86Mov (eax, s)])
              | S_ST x   ->
                 let x_slot = get_slot x args_names locals in
                 if not (contains x args_names) then env#local x;
		 let s::stack' = stack in
                 (stack', [X86Mov (s, eax); X86Mov (eax, x_slot)])
      	      | S_BINOP op ->
       		 let x::y::stack' = stack in
                 let (y', pref) = func y in
                  (y::stack', pref @
                      match op with
                      | ("+" | "-" | "*")  -> [X86Binop (x, y', binop_command op); X86Mov (y', y)]
                      | ("/" | "%")        -> [X86Mov (y', eax); X86Cltd; X86Div x; X86Mov ((div_reg op), y)]

                      | "&&" -> [
                          X86Binop (y', y', "andl"); X86Mov (L 0, eax); X86Set "nz"; X86Mov (eax, edx); 
                          X86Mov (x, eax); X86Binop (eax, eax, "andl"); X86Mov (L 0, eax); X86Set "nz";
                          X86Binop (eax, edx, "andl"); X86Mov (L 0, eax); X86Set "nz"; X86Mov (eax, y)]
                                  
                      | "!!" -> [X86Binop (x, y', "orl"); X86Mov (L 0, eax); X86Set "nz"; X86Mov (eax, y)]

                      | ("<" | "<=" | ">" | ">=" | "==" | "!=")  -> [X86Cmp (x, y'); X86Mov (L 0, eax);
                                                                     X86Set (comp_command op); X86Mov (eax, y)]
                      | _ -> failwith "x86op")
              | S_LBL l -> (stack, [X86Lbl l])
              | S_JMP l -> (stack, [X86Jmp l])
              | S_CJMP (cmp, l) -> let x::stack' = stack in
                 (stack', [X86Cmp (L 0, x); X86Cjmp (cmp, l)])
              | S_CALL fname ->
                 let rec push_args push_code stack = function
                   | [] -> (stack, push_code)
                   | arg_name::args_names -> let s::stack' = stack in
                                             push_args ((X86Push s)::push_code) stack' args_names
                 in
                 let (stack', push_code) = push_args [] stack (fst (List.assoc fname func_data)) in
                 let (prologue, epilogue) =
                   match stack' with
                   | []       -> ([], [])
                   | (R 0)::_ -> ([X86Push ebx], [X86Pop ebx])
                   | (R 1)::_ -> ([X86Push ebx; X86Push ecx], [X86Pop ecx; X86Pop ebx])
                   | (R 2)::_ -> ([X86Push ebx; X86Push ecx; X86Push esi], [X86Pop esi; X86Pop ecx; X86Pop ebx])
                   | _        -> ([X86Push ebx; X86Push ecx; X86Push esi; X86Push edi],
                                  [X86Pop edi; X86Pop esi; X86Pop ecx; X86Pop ebx])
                 in
                 let s = allocate env stack' (List.length locals) in
                 let num = List.length (fst (List.assoc fname func_data)) in
                 (s::stack', prologue @ push_code @ [X86Call fname; X86Mov (eax, s);
                                                     X86Esp (word_size * num)] @ epilogue)
              | S_RET -> let y::stack' = stack in (stack', [X86Mov (y, eax); X86Leave; X86Ret])
              | S_ARG _ -> (stack, [])
              | S_POP -> let y::stack' = stack in (stack', [])
	    in
	    x86code @ compile stack' code'
      in
      compile [] code

  end

open Language.Stmt
    
let rec get_func_data res = function
  | [] -> res
  | (fname, (args_names, body))::funcs -> get_func_data ((fname, (args_names, (
       match fname with
       | "main" -> []
       | _ ->
          let rec get_loc_vars locals body =
            match body with
            | ((Read x) | (Assign (x, _))) -> let seek list = List.exists (fun y -> y = x) list in
                                              if (not (seek args_names) && not (seek locals)) then x::locals else locals
            | ((While (_, _, s)) | (Repeat (_, _, s))) -> get_loc_vars locals s
            | (For (_, s1, e, s2, s)) -> get_loc_vars (get_loc_vars (get_loc_vars locals s1) s) s2
            | ((If (_, _, s1, s2)) | (Seq (s1, s2))) -> get_loc_vars (get_loc_vars locals s1) s2
            | _ -> locals
          in
          get_loc_vars [] body
                                                         )))::res) funcs
    
    
let compile funcs stmt =
  let asm  = Buffer.create 1024 in
  let (!!) s = Buffer.add_string asm s in
  let (!)  s = !!s; !!"\n" in
  !"\t.text";
  let compile_func (fname, (args_names, body)) =
    let func_data = get_func_data [] (funcs @ [("main", ([], stmt))]) in
    let env = new x86env in
    let code = Compile.stack_program env (StackMachine.Compile.stmt body) (fname, (List.assoc fname func_data)) func_data in
    (fname, (code, env))
  in
  let funcs = List.map compile_func funcs in
  let main = compile_func ("main", ([], stmt)) in
  List.iter (fun x ->
      !(Printf.sprintf "\t.comm\t%s,\t%d,\t%d" x word_size word_size))
    (snd (snd main))#local_vars; 
  !"\t.globl\tmain";
  let print_func (fname, (code, env)) = 
    let prologue, epilogue =
      (fun () ->
         !"\tpushl\t%ebp";
         !"\tmovl\t%esp,\t%ebp";
         if fname = "main"
           then !(Printf.sprintf "\tsubl\t$%d,\t%%esp" (env#allocated * word_size))
           else !(Printf.sprintf "\tsubl\t$%d,\t%%esp" ((env#allocated + (List.length env#local_vars)) * word_size))
      ),
      (fun () -> if fname = "main" then (!"\txorl\t%eax,\t%eax"; !"\tleave"; !"\tret\n") else !(""))
    in
    !(Printf.sprintf "%s:" fname);
    prologue();
    List.iter (fun i -> !(Show.instr i)) code;
    epilogue();
  in
  List.iter print_func (funcs @ [main]);
  Buffer.contents asm

let build funcs stmt name =
  let outf = open_out (Printf.sprintf "%s.s" name) in
  Printf.fprintf outf "%s" (compile funcs stmt);
  close_out outf;
  ignore (Sys.command (Printf.sprintf "gcc -m32 -o %s $RC_RUNTIME/runtime.o %s.s" name name))
