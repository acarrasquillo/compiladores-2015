use "slp.sml";

exception UnboundIdentifier

type table = (id * int) list

val mtenv = []

fun update(l: table, id: id,value: int): table = ((id, value)::l)

fun lookup (l: table, id: id): int =
  case l of [] =>
    raise UnboundIdentifier
  | (firstId, firstInt)::tail =>
    if firstId = id then firstInt else lookup(tail, id)

fun interpexp (IdExp id, env)  = (lookup (env, id), env)
  | interpexp (NumExp n, env) = (n, env)
  | interpexp (OpExp (e1, myop , e2), env) = 
    let
      val (v1, env1) = interpexp (e1, env) 
      val (v2, env2) = interpexp (e2, env1)
    in
      case myop of 
        Plus => (v1 + v2, env2)
        | Minus => (v1 - v2, env2)
        | Times => (v1 * v2, env2)
        | Div => (v1 div v2, env2)
    end
  | interpexp (EseqExp (s1, e1), env) =
  let
    val env1 = interpstm(s1, env)
  in
    interpexp(e1,env1)
  end
and interpstm (CompoundStm (s1,s2), env) = 
    let
       (*interp s1 with env and get the new env1*)
       val env1 = interpstm (s1, env)
       (*interp s2 with env1 and return env2*)
       val env2 = interpstm (s2, env1)
     in
       env2
     end
  | interpstm (AssignStm (id, e1), env) =
  let
      (*interp the e1 and get the new value and env*)
      val (value, env1) = interpexp (e1, env)  
    in
      (*update the env with the id and value*)
      update(env1, id, value)
    end  
  | interpstm (PrintStm (l: exp list), env) = interpexplist(l, env)

and interpexplist ([], env) = (print "\n"; env)
| interpexplist(e1::tail, env) =
let
  val (value, env1) = interpexp(e1,env)
in
  print (Int.toString value ^ " ");
  interpexplist(tail,env1)
end;  

(*Tests*)

(*testing Update function*)

update([("a", 1),("b", 2),("c",3)], "b", 7);

(*Testing interpexp*)

interpexp (NumExp 5, mtenv);

interpexp (IdExp "a", [("a", 5)]); 

interpexp (OpExp (NumExp 3, Plus, (NumExp 5)), mtenv);

interpexp (EseqExp (AssignStm ("b", NumExp 5), OpExp (IdExp "a", Plus, IdExp "b")),[("a", 5)]);

interpexp (EseqExp (AssignStm ("b", NumExp 4), OpExp (IdExp "a", Div, IdExp "b")),[("a", 20)]);

interpexp (EseqExp (AssignStm ("b", NumExp 20), OpExp (IdExp "a", Times, IdExp "b")),[("a", 4)]);

interpexp (EseqExp (AssignStm ("b", NumExp 4), OpExp (IdExp "a", Minus, IdExp "b")),[("a", 20)]);

(*test interpstmt*)

interpstm(PrintStm [ IdExp "a", IdExp "b", IdExp "c", IdExp "d" ], [("a", 1), ("b", 2), ("c", 3), ("d", 4)]);

interpstm(AssignStm ("a", NumExp 7),[]);

interpstm(CompoundStm (PrintStm [ IdExp "d", IdExp "c", IdExp "b", IdExp "a" ], AssignStm ("a", NumExp 7) ), [("a", 1), ("b", 2), ("c", 3), ("d", 4)]);
