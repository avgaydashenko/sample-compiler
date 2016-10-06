module Expr =
  struct

    open Language.Expr

    let eval_op op l r =
    let int = function
    | false -> 0
    | true  -> 1
    in
    let bool = function
    | 0 -> false
    | _ -> true
    in

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
	| Skip          -> c
	| Seq    (l, r) -> eval' (eval' c l) r
	| Assign (x, e) -> ((x, Expr.eval state' e) :: state, input, output)
	| Write   e     -> (state, input, output @ [Expr.eval state' e])
	| Read    x     ->
	    let y::input' = input in
	    ((x, y) :: state, input', output)
      in
      let (_, _, result) = eval' ([], input, []) stmt in
      result

  end
