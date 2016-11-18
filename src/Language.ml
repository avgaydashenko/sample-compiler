open Ostap 
open Matcher

module Expr =
  struct

    type t =
    | Const of int
    | Var   of string
    | Binop of string * t * t
    | Call  of string * t list

  ostap (

      parse:
        l:andi suf:("!!" andi)* {
           List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | andi;

      andi:
        l:compi suf:("&&" compi)* {
           List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | compi;

      compi:
        l:addi suf:(("<=" | "<" | ">=" | ">" | "==" | "!=") addi)* {
           List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | addi;
        
      addi:
        l:mulli suf:(("+" | "-") mulli)* {
           List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | mulli;

      mulli:
        l:primary suf:(("*" | "/" | "%") primary)* {
           List.fold_left (fun l (op, r) -> Binop (Token.repr op, l, r)) l suf
        }
      | primary;

      primary:
        n:DECIMAL {Const n}
      | x:IDENT call:(-"(" !(Util.list0 parse) -")")? {
          match call with
          | Some (args) -> Call (x, args)
          | None        -> Var   x}
      | -"(" parse -")"
                      
    )

  end

module Stmt =
  struct

    type t =
    | Skip
    | Read   of string
    | Write  of Expr.t
    | Assign of string * Expr.t
    | Seq    of t * t
    | If     of Expr.t * t * t
    | While  of Expr.t * t
    | Repeat of Expr.t * t
    | Call   of string * Expr.t list
    | Return of Expr.t
                           
    ostap (
      parse: s:simple d:(-";" parse)? {
	match d with None -> s | Some d -> Seq (s, d)
                                    };
      expr : !(Expr.parse);
      simple:
        x:IDENT s:("(" args:!(Util.list0 expr) ")" {Call (x, args)} |
                   ":=" e:expr                     {Assign (x, e)}  
                  ) {s}       
      | %"read"    "("  x:IDENT ")"      {Read x}
      | %"write"   "("  e:expr  ")"      {Write e}
      | %"skip"                          {Skip}
      | %"return"       e:expr           {Return e}
      | %"if" e:expr %"then" s:parse
              elif:(%"elif" expr %"then" parse)*
              el:  (%"else" parse)?
        %"fi"
           {
             If (e, s,
                List.fold_right
                  (fun (e, s) elif -> If (e, s, elif))
                  elif
                  (
                    match el with
                    | Some e -> e
                    | _      -> Skip
                  )
                )
           }
      | %"while"  e:expr %"do"     s:parse %"od" {While (e, s)}
      | %"repeat" s:parse %"until" e:expr        {Repeat (e, s)}
      | %"for"    s1:parse "," e:expr "," s2:parse %"do" s:parse %"od" {Seq (s1, While (e, Seq (s, s2)))}
    )

  end

module Def =
  struct

    type t = string * (string list * Stmt.t)

    ostap (
      arg  : IDENT;
      parse: %"fun" name:IDENT "(" args:!(Util.list0 arg) ")" %"begin" body:!(Stmt.parse) %"end" {
        (name, (args, body))
      }
    )
    
  end
    
module Unit =
  struct

    type t = Def.t list * Stmt.t

    ostap (
      parse: !(Def.parse)* !(Stmt.parse)
    )

  end
    
