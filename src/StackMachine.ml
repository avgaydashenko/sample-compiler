type i =
| S_READ
| S_WRITE
| S_PUSH  of int
| S_LD    of string
| S_ST    of string
| S_BINOP of string
| S_JMP   of string
| S_CJMP  of string * string
| S_LBL   of string
| S_CALL  of string * string list
| S_RET
| S_BEGIN of string * string list * string list
| S_END   
             
module Interpreter =
  struct

  open Interpreter.Expr
    
    let run reader writer program =
      let rec env s program =
        match program with
        | [] -> []
        | (S_LBL l)::program' ->
           if s == l then program else env s program'
        | instr::program' -> env s program'
      in                           
      let rec run' (state, stack) code =
	match code with
	| []       -> (state, stack)
	| i::code' ->
              (match i with
              | S_READ ->
		  let y = reader() in
		  run' (state, y::stack) code'
              | S_WRITE ->
		  let y::stack' = stack in writer y;
		  run' (state, stack') code'
              | S_PUSH n ->
		  run' (state, n::stack) code'
              | S_LD x ->
		  run' (state, (List.assoc x state)::stack) code'
              | S_ST x ->
		  let y::stack' = stack in
		  run' ((x, y)::state, stack') code'
              | S_BINOP s ->
		  let y::x::stack' = stack in
                  run' (state, (Interpreter.Expr.eval_op s x y)::stack') code'
              | S_JMP s ->
                 run' (state, stack) (env s program)
              | S_CJMP (l, s) ->
                 let y::stack'= stack in
                 (match l with
                 | "z"  when (y == 0) -> run' (state, stack') (env s program)
                 | "nz" when (y <> 0) -> run' (state, stack') (env s program)
                 | _ -> run' (state, stack) code')
              | S_LBL _ -> run' (state, stack) code'
              )
      in
      run' ([], []) program; ()
	
  end

module Compile =
  struct

    open Language.Expr
    open Language.Stmt

    let rec expr = function
    | Var   x -> [S_LD   x]
    | Const n -> [S_PUSH n]
    | Binop (s, x, y) -> expr x @ expr y @ [S_BINOP s]

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
  end
