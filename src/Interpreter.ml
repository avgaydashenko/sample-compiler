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

    let rec eval ((state, eval_stmt, funcs) as c) =
      let rec eval' = function
      | Const  n          -> n
      | Var    x          -> List.assoc x state
      | Binop (op, l, r)  -> eval_op op (eval' l) (eval' r)
      | Call  (f, args)   -> let (args_names, body) = List.assoc f funcs in
                             let args_vals = List.map eval' args in
                             let vars = List.map2 (fun an av -> (an, av)) args_names args_vals in
                             let (state', res) = eval_stmt vars body in
                             match res with
                             | `Return v -> eval (state', eval_stmt, funcs) v
                             | `Continue -> failwith "function without return"
      in eval'

  end
  
module Stmt =
  struct

    open Language.Stmt

    let eval reader writer funcs stmt =
      let rec eval' state stmt =
        let ev_exp e = Expr.eval (state, eval', funcs) e in 
        let comp stmt cont_case =
          let (state', res) = eval' state stmt in
          (match res with
           | `Return v -> (state', `Return v)
           | `Continue -> cont_case state') in
	match stmt with
	| Skip           -> (state, `Continue)
	| Seq    (l, r)  -> comp l (fun state' -> eval' state' r)
	| Assign (x, e)  -> ((x, ev_exp e) :: state, `Continue)
	| Write   e      -> writer (ev_exp e); (state, `Continue)
	| Read    x      -> let y = reader() in ((x, y) :: state, `Continue)
        | If (name, e, s1, s2) -> eval' state (if (ev_exp e) != 0 then s1 else s2)
        | While (name, e, s) -> if (ev_exp e) != 0 then comp s (fun state' -> eval' state' (While (name, e, s)))
                                                   else (state, `Continue)
        | Repeat (name, e, s)  -> comp s (fun state' -> eval' state' (While (name, Binop("==", e, Const 0), s)))
        | For (name, s1, e, s2, s) -> comp s1 (fun state' -> eval' state' (While (name, e, Seq (s, s2))))
        | Call (f, args) -> let _ = ev_exp (Call (f, args)) in (state, `Continue)
        | Return v       -> (state, `Return v)
      in
      eval' [] stmt; ()

  end
