type opnd = R of int | S of int | M of string | L of int

let x86regs = [|
  "%eax"; 
  "%ebx"; 
  "%ecx"; 
  "%edx"; 
  "%esi"; 
  "%edi"
|]
                
let num_of_regs = Array.length x86regs
let word_size = 4

let eax = R 0
let ebx = R 1
let ecx = R 2
let edx = R 3
let esi = R 4
let edi = R 5

type x86instr =
| X86Add   of opnd * opnd
| X86Sub   of opnd * opnd                        
| X86Mul   of opnd * opnd
| X86Div   of opnd
| X86Mod   of opnd
| X86And   of opnd * opnd
| X86Or    of opnd * opnd
| X86Setl                        
| X86Setle
| X86Setg 
| X86Setge
| X86Sete 
| X86Setne
| X86Setnz
| X86Mov   of opnd * opnd
| X86Push  of opnd
| X86Pop   of opnd
| X86Ret
| X86Call  of string
| X86Cltd
| X86Cmp   of opnd * opnd

module S = Set.Make (String)

class x86env =
  object(self)
    val    local_vars = ref S.empty
    method local x    = local_vars := S.add x !local_vars
    method local_vars = S.elements !local_vars

    val    allocated  = ref 0
    method allocate n = allocated := max (n+1) !allocated
    method allocated  = !allocated
  end

let allocate env stack =
  match stack with
  | []                              -> R 4
  | (S n)::_                        -> env#allocate (n+1); S (n+1)
  | (R n)::_ when n < num_of_regs-1 -> R (n+1)
  | _                               -> env#allocate (0); S 0

module Show =
  struct

    let opnd = function
    | R i -> x86regs.(i)
    | S i -> Printf.sprintf "-%d(%%ebp)" (i * word_size)
    | M x -> x
    | L i -> Printf.sprintf "$%d" i

    let instr = function

    | X86Add  (s1, s2) -> Printf.sprintf "\taddl\t%s,\t%s"  (opnd s1) (opnd s2)
    | X86Sub  (s1, s2) -> Printf.sprintf "\tsubl\t%s,\t%s"  (opnd s1) (opnd s2)                                      
    | X86Mul  (s1, s2) -> Printf.sprintf "\timull\t%s,\t%s" (opnd s1) (opnd s2)
    | X86Div   s       -> Printf.sprintf "\tidivl\t%s"      (opnd s)
    | X86Mod   s       -> Printf.sprintf "\tidivl\t%s"      (opnd s)
    | X86And  (s1, s2) -> Printf.sprintf "\tandl\t%s,\t%s"  (opnd s1) (opnd s2)
    | X86Or   (s1, s2) -> Printf.sprintf "\torl\t%s,\t%s"   (opnd s1) (opnd s2)
    | X86Setl          -> Printf.sprintf "\tsetl\t%%al"
    | X86Setle         -> Printf.sprintf "\tsetle\t%%al"                                            
    | X86Setg          -> Printf.sprintf "\tsetg\t%%al"       
    | X86Setge         -> Printf.sprintf "\tsetge\t%%al"                                            
    | X86Sete          -> Printf.sprintf "\tsete\t%%al"       
    | X86Setne         -> Printf.sprintf "\tsetne\t%%al"
    | X86Setnz         -> Printf.sprintf "\tsetnz\t%%al"
    | X86Mov  (s1, s2) -> Printf.sprintf "\tmovl\t%s,\t%s"  (opnd s1) (opnd s2)
    | X86Push  s       -> Printf.sprintf "\tpushl\t%s"      (opnd s )
    | X86Pop   s       -> Printf.sprintf "\tpopl\t%s"       (opnd s )
    | X86Cmp  (s1, s2) -> Printf.sprintf "\tcmpl\t%s,\t%s"  (opnd s1) (opnd s2)                                         
    | X86Cltd          -> Printf.sprintf "\tcltd"                                         
    | X86Ret           -> "\tret"
    | X86Call  p       -> Printf.sprintf "\tcall\t%s" p
                                         
  end

module Compile =
  struct

    open StackMachine

    let stack_program env code =
      let rec compile stack code =
	match code with
	| []       -> []
	| i::code' ->
	    let (stack', x86code) =
              match i with
              | S_READ   -> ([eax], [X86Call "read"])
              | S_WRITE  -> ([], [X86Push (R 4); X86Call "write"; X86Pop (R 4)])
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
                  (y::stack', [X86Mov (y, eax); X86Mov (x, ebx)] @
                      match op with
                      | "+"  -> [X86Add   (ebx, eax); X86Mov (eax, y)]
                      | "-"  -> [X86Sub   (ebx, eax); X86Mov (eax, y)]
                      | "*"  -> [X86Mul   (ebx, eax); X86Mov (eax, y)]                                         
                      | "/"  -> [X86Cltd; X86Div ebx; X86Mov (eax, y)]
                      | "%"  -> [X86Cltd; X86Div ebx; X86Mov (edx, y)]
                      | "&&" -> [X86And   (ebx, eax); X86Mov (L 0, eax); X86Setnz;  X86Mov (eax, y)]
                      | "!!" -> [X86Or    (ebx, eax); X86Mov (L 0, eax); X86Setnz;  X86Mov (eax, y)]
                      | "<"  -> [X86Cmp   (ebx, eax); X86Mov (L 0, eax); X86Setl;  X86Mov (eax, y)]
                      | "<=" -> [X86Cmp   (ebx, eax); X86Mov (L 0, eax); X86Setle; X86Mov (eax, y)]
                      | ">"  -> [X86Cmp   (ebx, eax); X86Mov (L 0, eax); X86Setg;  X86Mov (eax, y)]
                      | ">=" -> [X86Cmp   (ebx, eax); X86Mov (L 0, eax); X86Setge; X86Mov (eax, y)]
                      | "!=" -> [X86Cmp   (ebx, eax); X86Mov (L 0, eax); X86Setne; X86Mov (eax, y)]
                      | "==" -> [X86Cmp   (ebx, eax); X86Mov (L 0, eax); X86Sete;  X86Mov (eax, y)]
                      | _ -> failwith "x86op")
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
  ignore (Sys.command (Printf.sprintf "gcc -m32 -o %s ../runtime/runtime.o %s.s" name name))
