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
    open String

    exception BreakExc of string * (string * int) list
    exception ContinueExc of string * (string * int) list
           
    let eval reader writer funcs stmt =
      let rec eval' state stmt =
        let ev_exp_with_state e state' = Expr.eval (state', eval', funcs) e in 
        let ev_exp e = ev_exp_with_state e state in 
        let comp_with_state stmt state' cont_case =
          let (state'', res) = eval' state' stmt in
          (match res with
           | `Return v -> (state'', `Return v)
           | `Continue -> cont_case state'') in
        let comp stmt cont_case = comp_with_state stmt state cont_case in
	match stmt with
	| Skip           -> (state, `Continue)
	| Seq    (l, r)  -> comp l (fun state' -> eval' state' r)
	| Assign (x, e)  -> ((x, ev_exp e) :: state, `Continue)
	| Write   e      -> writer (ev_exp e); (state, `Continue)
	| Read    x      -> let y = reader() in ((x, y) :: state, `Continue)
        | If (name, e, s1, s2) -> (try eval' state (if (ev_exp e) != 0 then s1 else s2)
                                   with (BreakExc (exc_name, state') | ContinueExc (exc_name, state'))
                                        when ((compare exc_name name) == 0 || (compare exc_name "unnamed") == 0) ->
                                     (state', `Continue)) 
        | While (name, e, s) -> (try
                                   if (ev_exp e) != 0 then comp s (fun state' -> eval' state' (While (name, e, s)))
                                   else (state, `Continue)
                                 with
                                 | BreakExc (exc_name, state')
                                      when ((compare exc_name name) == 0 || (compare exc_name "unnamed") == 0) ->
                                    (state', `Continue)
                                 | ContinueExc (exc_name, state')
                                      when ((compare exc_name name) == 0 || (compare exc_name "unnamed") == 0) ->
                                    eval' state' (While (name, e, s))
                                )
        | Repeat (name, e, s)  -> (try
                                     comp s (fun state' -> eval' state' (if (ev_exp_with_state e state') == 0
                                                                         then Repeat (name, e, s)
                                                                         else Skip))
                                   with
                                   | BreakExc (exc_name, state')
                                        when ((compare exc_name name) == 0 || (compare exc_name "unnamed") == 0) ->
                                      (state', `Continue)
                                   | ContinueExc (exc_name, state')
                                        when ((compare exc_name name) == 0 || (compare exc_name "unnamed") == 0) ->
                                      eval' state' (Repeat (name, e, s))
                                  ) 
        | For (name, s1, e, s2, s) -> (*Printf.printf "!!!%s!!!\n" name;*) (try
                                         comp s1 (fun state' -> eval' state' (if (ev_exp_with_state e state') == 1
                                                                              then
                                                                                Seq (s, Seq (s2, For (name, Skip, e, s2, s)))
                                                                              else Skip))
                                       with
                                       | BreakExc (exc_name, state')
                                            when ((compare exc_name name) == 0 || (compare exc_name "unnamed") == 0) ->
                                          (state', `Continue)
                                       | ContinueExc (exc_name, state')
                                            when ((compare exc_name name) == 0 || (compare exc_name "unnamed") == 0) ->
                                          (*     Printf.printf "name: %s; exc_name: %s\n" name exc_name; *)
                                          comp_with_state s2 state' (fun state'' ->
                                                            eval' state'' (For (name, Skip, e, s2, s)))
                                      )
        | Call (f, args) -> let _ = ev_exp (Call (f, args)) in (state, `Continue)
        | Return v       -> (state, `Return v)
        | Break name -> raise (BreakExc (name, state))
        | Continue name -> raise (ContinueExc (name, state))
      in
      eval' [] stmt; ()

  end
