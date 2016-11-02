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

let allocate env stack =
  match stack with
  | []                              -> R 0
  | (S n)::_                        -> env#allocate (n+1); S (n+1)
  | (R n)::_ when n < num_of_regs-3 -> R (n+1)
  | _                               -> env#allocate (0); S 0

module Show =
  struct

    let opnd = function
    | R i -> x86regs.(i)
    | S i -> Printf.sprintf "-%d(%%ebp)" (i * word_size)
    | M x -> x
    | L i -> Printf.sprintf "$%d" i

    let instr = function

    | X86Binop (s1, s2, p) -> Printf.sprintf "\t%s\t%s,\t%s"  p (opnd s1) (opnd s2)         
    | X86Div    s          -> Printf.sprintf "\tidivl\t%s"      (opnd s)
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
                                         
  end

module Compile =
  struct

    open StackMachine

    let stack_program env code =
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
		  let s = allocate env stack in
		  (s::stack, [X86Mov (L n, s)])
              | S_LD x   ->
		  env#local x;
		  let s = allocate env stack in
		  (s::stack, [X86Mov (M x, eax); X86Mov (eax, s)])
              | S_ST x   ->
		  env#local x;
		  let s::stack' = stack in
		  (stack', [X86Mov (s, eax); X86Mov (eax, M x)])
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
              | S_CJMP (cmp, l) ->
                 let x::stack' = stack in
                   (stack', [X86Cmp (L 0, x); X86Cjmp (cmp, l)])
                 
	    in
	    x86code @ compile stack' code'
      in
      compile [] code

  end

let compile stmt =
  let env = new x86env in
  let code = Compile.stack_program env @@ StackMachine.Compile.stmt stmt in
  let asm  = Buffer.create 1024 in
  let (!!) s = Buffer.add_string asm s in
  let (!)  s = !!s; !!"\n" in
  !"\t.text";
  List.iter (fun x ->
      !(Printf.sprintf "\t.comm\t%s,\t%d,\t%d" x word_size word_size))
    env#local_vars;
  !"\t.globl\tmain";
  let prologue, epilogue =
    if env#allocated = 0
    then (fun () -> ()), (fun () -> ())
    else
      (fun () ->
         !"\tpushl\t%ebp";
         !"\tmovl\t%esp,\t%ebp";
         !(Printf.sprintf "\tsubl\t$%d,\t%%esp" (env#allocated * word_size))
      ),
      (fun () ->
         !"\tmovl\t%ebp,\t%esp";
         !"\tpopl\t%ebp"
      )
  in
  !"main:";
  prologue();
  List.iter (fun i -> !(Show.instr i)) code;
  epilogue();
  !"\txorl\t%eax,\t%eax";
  !"\tret";
  Buffer.contents asm

let build stmt name =
  let outf = open_out (Printf.sprintf "%s.s" name) in
  Printf.fprintf outf "%s" (compile stmt);
  close_out outf;
  ignore (Sys.command (Printf.sprintf "gcc -m32 -o %s $RC_RUNTIME/runtime.o %s.s" name name))
