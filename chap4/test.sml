structure A = Absyn

val prog = A.OpExp(rigth= A.StringExp ("Hello", 3), left= A.IntExp 5, oper= A.PlusOp, pos=1);

val prog2 = A.OpExp (rigth= A.IntExp 3, left = A.IntExp 5, oper= A.PlusOp, pos=1);

fun checkInt (A.IntExp _) = true
	|	checkInt (A.OpExp (left=exp1, right=exp2, oper=_, pos=_)) = checkInt exp1 andalso checkInt exp2
	|	checkInt _ = false;