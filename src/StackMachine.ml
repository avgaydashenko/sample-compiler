
type i =
| S_READ
| S_WRITE
| S_PUSH  of int
| S_LD    of string
| S_ST    of string
| S_ARG   of string
| S_BINOP of string
| S_JMP   of string
| S_CJMP  of string * string
| S_LBL   of string
| S_CALL  of string
| S_RET
| S_POP
             
module Interpreter =
  struct

  open Interpreter.Expr

    let rec go_to_lbl s prog = 
      match prog with
      | [] -> []
      | (S_LBL l)::prog' ->
          if l = s then prog' else go_to_lbl s prog'
      | instr::prog' -> go_to_lbl s prog'

    let rec go_to_instr n program =
      match n with
      | 0 -> program
      | _ -> let pr::program' = program in go_to_instr (n-1) program'
         
    let run reader writer program =
      let rec run' state stack code =
        let (ret_addr, curr_state)::state' = state in
	match code with
	| []       -> ()
	| i::code' -> 
              (match i with
              | S_READ ->
		  let y = reader() in
		  run' state (y::stack) code'
              | S_WRITE ->
		  let y::stack' = stack in writer y;
		  run' state stack' code'
              | S_PUSH n ->
		  run' state (n::stack) code'
              | S_LD x ->
		  run' state ((List.assoc x curr_state)::stack) code'
              | S_ST x ->
		  let y::stack' = stack in
		  run' ((ret_addr, (x, y)::curr_state)::state) stack' code'
              | S_ARG x ->
                  let y::stack' = stack in
		  run' ((ret_addr, (x, y)::curr_state)::state) stack' code'
              | S_BINOP s ->
		  let y::x::stack' = stack in
                  run' state ((Interpreter.Expr.eval_op s x y)::stack') code'
              | S_JMP s ->
                  run' state stack (go_to_lbl s program)
              | S_CJMP (l, s) ->
                 let y::stack'= stack in
                 (match l with
                 | "z"  when (y == 0) -> run' state stack' (go_to_lbl s program)
                 | "nz" when (y <> 0) -> run' state stack' (go_to_lbl s program)
                 | _ -> run' state stack code')
              | S_LBL _ ->
                 run' state stack code'
              | S_CALL s ->
                 run' (((List.length program) - (List.length code'), [])::state) stack (go_to_lbl s program)
              | S_RET ->
                 run' state' stack (go_to_instr ret_addr program)
              | S_POP ->
                 let y::stack' = stack in
                 run' state stack' code'
              )
      in
      run' [(0, [])] [] (go_to_lbl "main" program)
	
  end

module Compile =
  struct

    open Language.Expr
    open Language.Stmt

    let rec expr = function
    | Var   x -> [S_LD   x]
    | Const n -> [S_PUSH n]
    | Binop (s, x, y) -> expr x @ expr y @ [S_BINOP s]
    | Call  (f, args) -> (List.concat (List.map expr (List.rev args))) @ [S_CALL f]

    let label = 
      let count = ref (0) in
      fun () ->
      incr count;
      !count

    let rec stmt = function
    | Skip               -> []
    | Assign (x, e)      -> expr e @ [S_ST x]
    | Read    x          -> [S_READ; S_ST x]
    | Write   e          -> expr e @ [S_WRITE]
    | Seq    (l, r)      -> stmt l @ stmt r
    | If     (e, s1, s2) ->
       let l1 = "l"^string_of_int(label()) in
       let l2 = "l"^string_of_int(label()) in
         expr e @
         [S_CJMP ("z", l1)] @
         stmt s1 @
         [S_JMP l2; S_LBL l1] @
         stmt s2 @
         [S_LBL l2]    
    | While  (e, s)      ->
       let l1 = "l"^string_of_int(label()) in
       let l2 = "l"^string_of_int(label()) in
         [S_LBL l1] @
         expr e @
         [S_CJMP ("z", l2)] @
         stmt s @
         [S_JMP l1; S_LBL l2]
    | Repeat  (e, s)      ->
       let l1 = "l"^string_of_int(label()) in
         [S_LBL l1] @
         stmt s @
         expr e @
           [S_CJMP ("z", l1)]
    | Call (f, args) -> (expr (Call (f, args))) @ [S_POP]
    | Return v -> expr v @ [S_RET]

    let make_func f = let (func_name, args_names, body) = (fst f, fst (snd f), snd (snd f)) in
                      [S_LBL func_name] @ (List.map (fun x -> S_ARG x) args_names) @ (stmt body) @
                        [S_LBL (String.concat "_" [func_name; "end"])]

    let debug = function
    | S_READ    -> Printf.printf "read\n"
    | S_WRITE   -> Printf.printf "write\n"
    | S_PUSH _  -> Printf.printf "push\n"
    | S_LD s    -> Printf.printf "ld %s\n" s
    | S_ST s    -> Printf.printf "st %s\n" s
    | S_ARG s   -> Printf.printf "ld %s\n" s
    | S_BINOP s -> Printf.printf "binop %s\n" s
    | S_JMP s   -> Printf.printf "jmp %s\n" s
    | S_CJMP (s1, s2) -> Printf.printf "cjmp %s %s\n" s1 s2
    | S_LBL s   -> Printf.printf "lbl %s\n" s
    | S_CALL s  -> Printf.printf "call %s\n" s
    | S_RET     -> Printf.printf "ret\n"
    | S_POP     -> Printf.printf "pop\n"
                                 
    let compile funcs main = let res = ((List.concat (List.map make_func funcs)) @ [S_LBL "main"] @ (stmt main)) in
                             (*List.map debug res;*) res
                             
  end
