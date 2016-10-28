module Expr =
  struct

    open Language.Expr
   
    let eval_op op l r =
    let int stat = if stat then 1 else 0 in
    let bool b = b <> 0 in

    match op with
    | "+"  -> l + r
    | "-"  -> l - r
    | "*"  -> l * r
    | "/"  -> l / r
    | "%"  -> l mod r
    | "==" -> int (l == r)
    | "!=" -> int (l != r)
    | "<"  -> int (l < r)
    | "<=" -> int (l <= r)
    | ">"  -> int (l > r)
    | ">=" -> int (l >= r)
    | "&&" -> int ((bool l) && (bool r))                
    | "!!" -> int ((bool l) || (bool r))
    | _ -> failwith "unsupported operation" 
                               
    let rec eval state = function
    | Const  n          -> n
    | Var    x          -> state x
    | Binop (op, l, r)  -> eval_op op (eval state l) (eval state r)
                                   
  end
  
module Stmt =
  struct

    open Language.Stmt

    let eval input stmt =
      let rec eval' ((state, input, output) as c) stmt =
	let state' x = List.assoc x state in
	match stmt with
	| Skip           -> c
	| Seq    (l, r)  -> eval' (eval' c l) r
	| Assign (x, e)  -> ((x, Expr.eval state' e) :: state, input, output)
	| Write   e      -> (state, input, output @ [Expr.eval state' e])
	| Read    x      ->
	    let y::input' = input in
	    ((x, y) :: state, input', output)
        | If (e, s1, s2) -> if (Expr.eval state' e) != 0 then (eval' c s1) else (eval' c s2)
        | While (e, s)   -> if (Expr.eval state' e) != 0 then eval' (eval' c s) (While (e, s)) else c
        | Repeat (e, s)  -> let (state'', input'', output'') = (eval' c s) in
                            let fun_state'' x = List.assoc x state'' in
                            if (Expr.eval fun_state'' e) != 0                            
                            then (state'', input'', output'')
                            else eval' (state'', input'', output'') stmt
      in
      let (_, _, result) = eval' ([], input, []) stmt in
      result

  end
