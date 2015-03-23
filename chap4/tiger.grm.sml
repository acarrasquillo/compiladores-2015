functor TigerLrValsFun(structure Token : TOKEN)
 : sig structure ParserData : PARSER_DATA
       structure Tokens : Tiger_TOKENS
   end
 = 
struct
structure ParserData=
struct
structure Header = 
struct
(*

  Abimael Carrasquillo Ayala
  801-08-0857

  Note: Parser in progress


*)

structure A = Absyn


end
structure LrTable = Token.LrTable
structure Token = Token
local open LrTable in 
val table=let val actionRows =
"\
\\001\000\001\000\000\000\000\000\
\\001\000\001\000\162\000\002\000\162\000\003\000\162\000\004\000\162\000\
\\005\000\162\000\007\000\162\000\008\000\162\000\009\000\162\000\
\\011\000\162\000\013\000\162\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\029\000\162\000\030\000\162\000\
\\031\000\162\000\032\000\162\000\033\000\162\000\034\000\162\000\
\\035\000\162\000\036\000\162\000\037\000\162\000\038\000\162\000\
\\040\000\162\000\041\000\162\000\042\000\162\000\043\000\162\000\
\\044\000\162\000\000\000\
\\001\000\001\000\163\000\002\000\163\000\003\000\163\000\004\000\163\000\
\\005\000\163\000\007\000\163\000\008\000\163\000\009\000\163\000\
\\011\000\163\000\013\000\163\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\029\000\163\000\030\000\163\000\
\\031\000\163\000\032\000\163\000\033\000\163\000\034\000\163\000\
\\035\000\163\000\036\000\163\000\037\000\163\000\038\000\163\000\
\\040\000\163\000\041\000\163\000\042\000\163\000\043\000\163\000\
\\044\000\163\000\000\000\
\\001\000\001\000\164\000\002\000\164\000\003\000\164\000\004\000\164\000\
\\005\000\164\000\007\000\164\000\008\000\164\000\009\000\164\000\
\\011\000\164\000\013\000\164\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\029\000\164\000\030\000\164\000\
\\031\000\164\000\032\000\164\000\033\000\164\000\034\000\164\000\
\\035\000\164\000\036\000\164\000\037\000\164\000\038\000\164\000\
\\040\000\164\000\041\000\164\000\042\000\164\000\043\000\164\000\
\\044\000\164\000\000\000\
\\001\000\001\000\165\000\002\000\165\000\003\000\165\000\004\000\165\000\
\\005\000\165\000\007\000\165\000\008\000\165\000\009\000\165\000\
\\011\000\165\000\013\000\165\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\029\000\165\000\030\000\165\000\
\\031\000\165\000\032\000\165\000\033\000\165\000\034\000\165\000\
\\035\000\165\000\036\000\165\000\037\000\165\000\038\000\165\000\
\\040\000\165\000\041\000\165\000\042\000\165\000\043\000\165\000\
\\044\000\165\000\000\000\
\\001\000\001\000\166\000\002\000\166\000\003\000\166\000\004\000\166\000\
\\005\000\166\000\007\000\166\000\008\000\166\000\009\000\166\000\
\\011\000\166\000\013\000\166\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\029\000\166\000\030\000\166\000\
\\031\000\166\000\032\000\166\000\033\000\166\000\034\000\166\000\
\\035\000\166\000\036\000\166\000\037\000\166\000\038\000\166\000\
\\040\000\166\000\041\000\166\000\042\000\166\000\043\000\166\000\
\\044\000\166\000\000\000\
\\001\000\001\000\167\000\002\000\167\000\003\000\167\000\004\000\167\000\
\\005\000\167\000\007\000\167\000\008\000\167\000\009\000\167\000\
\\011\000\167\000\013\000\167\000\015\000\032\000\016\000\031\000\
\\017\000\030\000\018\000\029\000\029\000\167\000\030\000\167\000\
\\031\000\167\000\032\000\167\000\033\000\167\000\034\000\167\000\
\\035\000\167\000\036\000\167\000\037\000\167\000\038\000\167\000\
\\040\000\167\000\041\000\167\000\042\000\167\000\043\000\167\000\
\\044\000\167\000\000\000\
\\001\000\002\000\150\000\003\000\150\000\004\000\150\000\008\000\150\000\
\\009\000\150\000\015\000\150\000\016\000\150\000\017\000\150\000\
\\018\000\150\000\019\000\150\000\020\000\150\000\021\000\150\000\
\\022\000\150\000\023\000\150\000\024\000\150\000\029\000\150\000\
\\032\000\150\000\033\000\150\000\036\000\150\000\040\000\150\000\
\\041\000\150\000\000\000\
\\001\000\002\000\019\000\003\000\018\000\004\000\017\000\008\000\016\000\
\\009\000\155\000\015\000\032\000\016\000\099\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\029\000\014\000\
\\032\000\013\000\033\000\012\000\036\000\011\000\040\000\010\000\
\\041\000\009\000\000\000\
\\001\000\002\000\019\000\003\000\018\000\004\000\017\000\008\000\016\000\
\\016\000\015\000\029\000\014\000\032\000\013\000\033\000\012\000\
\\036\000\011\000\040\000\010\000\041\000\009\000\000\000\
\\001\000\002\000\043\000\000\000\
\\001\000\002\000\053\000\000\000\
\\001\000\002\000\069\000\000\000\
\\001\000\002\000\070\000\000\000\
\\001\000\002\000\071\000\000\000\
\\001\000\002\000\079\000\000\000\
\\001\000\002\000\104\000\012\000\103\000\028\000\102\000\000\000\
\\001\000\002\000\106\000\000\000\
\\001\000\002\000\109\000\000\000\
\\001\000\002\000\129\000\000\000\
\\001\000\002\000\135\000\000\000\
\\001\000\002\000\138\000\000\000\
\\001\000\006\000\087\000\027\000\086\000\000\000\
\\001\000\006\000\124\000\000\000\
\\001\000\006\000\133\000\019\000\132\000\000\000\
\\001\000\008\000\088\000\000\000\
\\001\000\009\000\075\000\000\000\
\\001\000\009\000\097\000\000\000\
\\001\000\009\000\121\000\000\000\
\\001\000\011\000\083\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\000\000\
\\001\000\011\000\096\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\000\000\
\\001\000\013\000\113\000\000\000\
\\001\000\013\000\130\000\000\000\
\\001\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\030\000\074\000\000\000\
\\001\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\034\000\110\000\000\000\
\\001\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\035\000\073\000\000\000\
\\001\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\035\000\136\000\000\000\
\\001\000\019\000\085\000\000\000\
\\001\000\019\000\095\000\000\000\
\\001\000\019\000\141\000\000\000\
\\001\000\027\000\072\000\000\000\
\\001\000\027\000\120\000\000\000\
\\001\000\037\000\189\000\042\000\042\000\043\000\041\000\044\000\040\000\000\000\
\\001\000\037\000\066\000\000\000\
\\001\000\038\000\100\000\000\000\
\\001\000\039\000\118\000\000\000\
\\144\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\145\000\010\000\022\000\014\000\021\000\027\000\020\000\000\000\
\\146\000\000\000\
\\147\000\000\000\
\\148\000\000\000\
\\149\000\000\000\
\\150\000\000\000\
\\151\000\000\000\
\\152\000\000\000\
\\153\000\000\000\
\\154\000\000\000\
\\155\000\002\000\019\000\003\000\018\000\004\000\017\000\008\000\016\000\
\\016\000\015\000\029\000\014\000\032\000\013\000\033\000\012\000\
\\036\000\011\000\040\000\010\000\041\000\009\000\000\000\
\\157\000\000\000\
\\158\000\017\000\030\000\018\000\029\000\000\000\
\\159\000\017\000\030\000\018\000\029\000\000\000\
\\160\000\000\000\
\\161\000\000\000\
\\168\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\169\000\005\000\094\000\000\000\
\\170\000\000\000\
\\171\000\000\000\
\\172\000\000\000\
\\173\000\002\000\019\000\003\000\018\000\004\000\017\000\008\000\016\000\
\\016\000\015\000\029\000\014\000\032\000\013\000\033\000\012\000\
\\036\000\011\000\040\000\010\000\041\000\009\000\000\000\
\\174\000\000\000\
\\175\000\007\000\077\000\015\000\032\000\016\000\031\000\017\000\030\000\
\\018\000\029\000\019\000\028\000\020\000\027\000\021\000\026\000\
\\022\000\025\000\023\000\024\000\024\000\023\000\000\000\
\\176\000\000\000\
\\177\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\178\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\031\000\111\000\000\000\
\\179\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\180\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\181\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\182\000\000\000\
\\183\000\000\000\
\\184\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\185\000\008\000\051\000\010\000\050\000\012\000\049\000\000\000\
\\186\000\000\000\
\\187\000\000\000\
\\188\000\039\000\116\000\000\000\
\\189\000\042\000\042\000\043\000\041\000\044\000\040\000\000\000\
\\191\000\000\000\
\\192\000\000\000\
\\193\000\000\000\
\\194\000\000\000\
\\195\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\196\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\197\000\044\000\040\000\000\000\
\\198\000\000\000\
\\199\000\000\000\
\\200\000\000\000\
\\201\000\000\000\
\\202\000\000\000\
\\203\000\000\000\
\\204\000\002\000\109\000\000\000\
\\205\000\000\000\
\\206\000\005\000\123\000\000\000\
\\207\000\000\000\
\\208\000\042\000\042\000\000\000\
\\209\000\000\000\
\\210\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\\211\000\015\000\032\000\016\000\031\000\017\000\030\000\018\000\029\000\
\\019\000\028\000\020\000\027\000\021\000\026\000\022\000\025\000\
\\023\000\024\000\024\000\023\000\000\000\
\"
val actionRowNumbers =
"\009\000\047\000\049\000\050\000\
\\051\000\048\000\046\000\053\000\
\\077\000\084\000\010\000\009\000\
\\009\000\009\000\068\000\055\000\
\\054\000\080\000\009\000\011\000\
\\009\000\009\000\009\000\009\000\
\\009\000\009\000\009\000\009\000\
\\009\000\009\000\009\000\087\000\
\\091\000\043\000\042\000\088\000\
\\102\000\086\000\012\000\013\000\
\\014\000\040\000\035\000\033\000\
\\052\000\026\000\070\000\015\000\
\\009\000\057\000\072\000\081\000\
\\029\000\006\000\005\000\004\000\
\\003\000\002\000\001\000\062\000\
\\061\000\059\000\060\000\092\000\
\\068\000\085\000\103\000\037\000\
\\022\000\025\000\009\000\009\000\
\\009\000\067\000\069\000\009\000\
\\064\000\038\000\030\000\027\000\
\\008\000\082\000\044\000\016\000\
\\009\000\017\000\098\000\034\000\
\\075\000\073\000\070\000\031\000\
\\015\000\009\000\083\000\056\000\
\\058\000\009\000\078\000\093\000\
\\045\000\098\000\094\000\089\000\
\\041\000\028\000\100\000\023\000\
\\009\000\009\000\071\000\066\000\
\\064\000\063\000\009\000\007\000\
\\019\000\032\000\009\000\024\000\
\\099\000\018\000\020\000\036\000\
\\074\000\065\000\079\000\096\000\
\\095\000\090\000\009\000\021\000\
\\100\000\097\000\009\000\104\000\
\\039\000\101\000\076\000\009\000\
\\105\000\000\000"
val gotoT =
"\
\\001\000\006\000\002\000\141\000\003\000\005\000\004\000\004\000\
\\007\000\003\000\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\012\000\037\000\013\000\036\000\014\000\035\000\016\000\034\000\
\\017\000\033\000\022\000\032\000\023\000\031\000\000\000\
\\000\000\
\\001\000\042\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\043\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\044\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\046\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\009\000\045\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\050\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\001\000\052\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\053\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\054\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\055\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\056\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\057\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\058\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\059\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\060\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\061\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\062\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\022\000\032\000\023\000\063\000\000\000\
\\000\000\
\\012\000\037\000\013\000\036\000\014\000\035\000\016\000\034\000\
\\017\000\065\000\022\000\032\000\023\000\031\000\000\000\
\\000\000\
\\013\000\036\000\014\000\066\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\010\000\074\000\000\000\
\\005\000\076\000\000\000\
\\001\000\078\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\080\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\015\000\079\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\046\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\009\000\082\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\087\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\088\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\089\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\001\000\090\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\006\000\091\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\080\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\015\000\096\000\000\000\
\\000\000\
\\000\000\
\\018\000\099\000\000\000\
\\001\000\103\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\019\000\106\000\020\000\105\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\010\000\110\000\000\000\
\\000\000\
\\005\000\112\000\000\000\
\\001\000\113\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\115\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\019\000\106\000\020\000\117\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\021\000\120\000\000\000\
\\000\000\
\\001\000\123\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\001\000\124\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\006\000\125\000\000\000\
\\000\000\
\\001\000\126\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\129\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\019\000\132\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\135\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\021\000\137\000\000\000\
\\000\000\
\\001\000\138\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\\000\000\
\\000\000\
\\001\000\140\000\003\000\005\000\004\000\004\000\007\000\003\000\
\\008\000\002\000\011\000\001\000\000\000\
\\000\000\
\\000\000\
\"
val numstates = 142
val numrules = 68
val s = ref "" and index = ref 0
val string_to_int = fn () => 
let val i = !index
in index := i+2; Char.ord(String.sub(!s,i)) + Char.ord(String.sub(!s,i+1)) * 256
end
val string_to_list = fn s' =>
    let val len = String.size s'
        fun f () =
           if !index < len then string_to_int() :: f()
           else nil
   in index := 0; s := s'; f ()
   end
val string_to_pairlist = fn (conv_key,conv_entry) =>
     let fun f () =
         case string_to_int()
         of 0 => EMPTY
          | n => PAIR(conv_key (n-1),conv_entry (string_to_int()),f())
     in f
     end
val string_to_pairlist_default = fn (conv_key,conv_entry) =>
    let val conv_row = string_to_pairlist(conv_key,conv_entry)
    in fn () =>
       let val default = conv_entry(string_to_int())
           val row = conv_row()
       in (row,default)
       end
   end
val string_to_table = fn (convert_row,s') =>
    let val len = String.size s'
        fun f ()=
           if !index < len then convert_row() :: f()
           else nil
     in (s := s'; index := 0; f ())
     end
local
  val memo = Array.array(numstates+numrules,ERROR)
  val _ =let fun g i=(Array.update(memo,i,REDUCE(i-numstates)); g(i+1))
       fun f i =
            if i=numstates then g i
            else (Array.update(memo,i,SHIFT (STATE i)); f (i+1))
          in f 0 handle General.Subscript => ()
          end
in
val entry_to_action = fn 0 => ACCEPT | 1 => ERROR | j => Array.sub(memo,(j-2))
end
val gotoT=Array.fromList(string_to_table(string_to_pairlist(NT,STATE),gotoT))
val actionRows=string_to_table(string_to_pairlist_default(T,entry_to_action),actionRows)
val actionRowNumbers = string_to_list actionRowNumbers
val actionT = let val actionRowLookUp=
let val a=Array.fromList(actionRows) in fn i=>Array.sub(a,i) end
in Array.fromList(List.map actionRowLookUp actionRowNumbers)
end
in LrTable.mkLrTable {actions=actionT,gotos=gotoT,numRules=numrules,
numStates=numstates,initialState=STATE 0}
end
end
local open Header in
type pos = int
type arg = unit
structure MlyValue = 
struct
datatype svalue = VOID | ntVOID of unit ->  unit
 | STRING of unit ->  (string) | INT of unit ->  (int)
 | ID of unit ->  (string)
 | tydecs of unit ->  ({ name:Symbol.symbol,ty:A.ty,pos:pos }  list)
 | tydec of unit ->  ({ name:Symbol.symbol,ty:A.ty,pos:pos } )
 | tyFieldsList of unit ->  (A.field list)
 | tyFields of unit ->  (A.field list) | tyField of unit ->  (A.field)
 | ty of unit ->  (A.ty) | declist of unit ->  (A.dec list)
 | dec of unit ->  (A.dec) | funargs of unit ->  (A.exp list)
 | fundecs of unit ->  (A.fundec list) | fundec of unit ->  (A.fundec)
 | vardec of unit ->  (A.dec) | lvalue of unit ->  (A.var)
 | seqList of unit ->  ( ( A.exp * pos )  list)
 | seqexp of unit ->  ( ( A.exp * pos )  list)
 | sequence of unit ->  (A.exp) | control of unit ->  (A.exp)
 | recordFieldList of unit ->  ( ( Symbol.symbol * A.exp * pos )  list)
 | recordField of unit ->  ( ( Symbol.symbol * A.exp * pos ) )
 | record of unit ->  (A.exp) | array of unit ->  (A.exp)
 | program of unit ->  (A.exp) | exp of unit ->  (A.exp)
end
type svalue = MlyValue.svalue
type result = A.exp
end
structure EC=
struct
open LrTable
infix 5 $$
fun x $$ y = y::x
val is_keyword =
fn (T 31) => true | (T 32) => true | (T 33) => true | (T 39) => true
 | (T 35) => true | (T 36) => true | (T 37) => true | (T 41) => true
 | (T 42) => true | (T 43) => true | (T 27) => true | (T 28) => true
 | (T 29) => true | (T 30) => true | (T 34) => true | (T 38) => true
 | (T 40) => true | _ => false
val preferred_change : (term list * term list) list = 
(nil
,nil
 $$ (T 29))::
(nil
,nil
 $$ (T 30))::
(nil
,nil
 $$ (T 7))::
nil
val noShift = 
fn (T 0) => true | _ => false
val showTerminal =
fn (T 0) => "EOF"
  | (T 1) => "ID"
  | (T 2) => "INT"
  | (T 3) => "STRING"
  | (T 4) => "COMMA"
  | (T 5) => "COLON"
  | (T 6) => "SEMICOLON"
  | (T 7) => "LPAREN"
  | (T 8) => "RPAREN"
  | (T 9) => "LBRACK"
  | (T 10) => "RBRACK"
  | (T 11) => "LBRACE"
  | (T 12) => "RBRACE"
  | (T 13) => "DOT"
  | (T 14) => "PLUS"
  | (T 15) => "MINUS"
  | (T 16) => "TIMES"
  | (T 17) => "DIVIDE"
  | (T 18) => "EQ"
  | (T 19) => "NEQ"
  | (T 20) => "LT"
  | (T 21) => "LE"
  | (T 22) => "GT"
  | (T 23) => "GE"
  | (T 24) => "AND"
  | (T 25) => "OR"
  | (T 26) => "ASSIGN"
  | (T 27) => "ARRAY"
  | (T 28) => "IF"
  | (T 29) => "THEN"
  | (T 30) => "ELSE"
  | (T 31) => "WHILE"
  | (T 32) => "FOR"
  | (T 33) => "TO"
  | (T 34) => "DO"
  | (T 35) => "LET"
  | (T 36) => "IN"
  | (T 37) => "END"
  | (T 38) => "OF"
  | (T 39) => "BREAK"
  | (T 40) => "NIL"
  | (T 41) => "FUNCTION"
  | (T 42) => "VAR"
  | (T 43) => "TYPE"
  | (T 44) => "UMINUS"
  | (T 45) => "LOWPREC"
  | _ => "bogus-term"
local open Header in
val errtermvalue=
fn (T 1) => MlyValue.ID(fn () => ("bogus")) | 
(T 2) => MlyValue.INT(fn () => (1)) | 
(T 3) => MlyValue.STRING(fn () => ("")) | 
_ => MlyValue.VOID
end
val terms : term list = nil
 $$ (T 45) $$ (T 44) $$ (T 43) $$ (T 42) $$ (T 41) $$ (T 40) $$ (T 39)
 $$ (T 38) $$ (T 37) $$ (T 36) $$ (T 35) $$ (T 34) $$ (T 33) $$ (T 32)
 $$ (T 31) $$ (T 30) $$ (T 29) $$ (T 28) $$ (T 27) $$ (T 26) $$ (T 25)
 $$ (T 24) $$ (T 23) $$ (T 22) $$ (T 21) $$ (T 20) $$ (T 19) $$ (T 18)
 $$ (T 17) $$ (T 16) $$ (T 15) $$ (T 14) $$ (T 13) $$ (T 12) $$ (T 11)
 $$ (T 10) $$ (T 9) $$ (T 8) $$ (T 7) $$ (T 6) $$ (T 5) $$ (T 4) $$ 
(T 0)end
structure Actions =
struct 
exception mlyAction of int
local open Header in
val actions = 
fn (i392,defaultPos,stack,
    (()):arg) =>
case (i392,stack)
of  ( 0, ( ( _, ( MlyValue.exp exp1, exp1left, exp1right)) :: rest671)
) => let val  result = MlyValue.program (fn _ => let val  (exp as exp1
) = exp1 ()
 in (exp)
end)
 in ( LrTable.NT 1, ( result, exp1left, exp1right), rest671)
end
|  ( 1, ( ( _, ( MlyValue.lvalue lvalue1, lvalue1left, lvalue1right))
 :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (
lvalue as lvalue1) = lvalue1 ()
 in (A.VarExp lvalue)
end)
 in ( LrTable.NT 0, ( result, lvalue1left, lvalue1right), rest671)
end
|  ( 2, ( ( _, ( MlyValue.array array1, array1left, array1right)) :: 
rest671)) => let val  result = MlyValue.exp (fn _ => let val  (array
 as array1) = array1 ()
 in (array)
end)
 in ( LrTable.NT 0, ( result, array1left, array1right), rest671)
end
|  ( 3, ( ( _, ( MlyValue.sequence sequence1, sequence1left, 
sequence1right)) :: rest671)) => let val  result = MlyValue.exp (fn _
 => let val  (sequence as sequence1) = sequence1 ()
 in (sequence)
end)
 in ( LrTable.NT 0, ( result, sequence1left, sequence1right), rest671)

end
|  ( 4, ( ( _, ( MlyValue.control control1, control1left, 
control1right)) :: rest671)) => let val  result = MlyValue.exp (fn _
 => let val  (control as control1) = control1 ()
 in (control)
end)
 in ( LrTable.NT 0, ( result, control1left, control1right), rest671)

end
|  ( 5, ( ( _, ( MlyValue.record record1, record1left, record1right))
 :: rest671)) => let val  result = MlyValue.exp (fn _ => let val  (
record as record1) = record1 ()
 in (record)
end)
 in ( LrTable.NT 0, ( result, record1left, record1right), rest671)
end
|  ( 6, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, (
MINUSleft as MINUS1left), _)) :: rest671)) => let val  result = 
MlyValue.exp (fn _ => let val  (exp as exp1) = exp1 ()
 in (
A.OpExp {left=A.IntExp ~1, oper=A.TimesOp, right=exp, pos=MINUSleft})

end)
 in ( LrTable.NT 0, ( result, MINUS1left, exp1right), rest671)
end
|  ( 7, ( ( _, ( _, NIL1left, NIL1right)) :: rest671)) => let val  
result = MlyValue.exp (fn _ => (A.NilExp))
 in ( LrTable.NT 0, ( result, NIL1left, NIL1right), rest671)
end
|  ( 8, ( ( _, ( MlyValue.INT INT1, INT1left, INT1right)) :: rest671))
 => let val  result = MlyValue.exp (fn _ => let val  (INT as INT1) = 
INT1 ()
 in (A.IntExp INT)
end)
 in ( LrTable.NT 0, ( result, INT1left, INT1right), rest671)
end
|  ( 9, ( ( _, ( MlyValue.STRING STRING1, (STRINGleft as STRING1left),
 STRING1right)) :: rest671)) => let val  result = MlyValue.exp (fn _
 => let val  (STRING as STRING1) = STRING1 ()
 in (A.StringExp (STRING, STRINGleft))
end)
 in ( LrTable.NT 0, ( result, STRING1left, STRING1right), rest671)
end
|  ( 10, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.funargs 
funargs1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, (IDleft as ID1left),
 _)) :: rest671)) => let val  result = MlyValue.exp (fn _ => let val 
 (ID as ID1) = ID1 ()
 val  (funargs as funargs1) = funargs1 ()
 in (A.CallExp {func= Symbol.symbol ID, args=funargs, pos=IDleft})
end
)
 in ( LrTable.NT 0, ( result, ID1left, RPAREN1right), rest671)
end
|  ( 11, ( rest671)) => let val  result = MlyValue.funargs (fn _ => (
nil))
 in ( LrTable.NT 14, ( result, defaultPos, defaultPos), rest671)
end
|  ( 12, ( ( _, ( MlyValue.exp exp1, exp1left, exp1right)) :: rest671)
) => let val  result = MlyValue.funargs (fn _ => let val  (exp as exp1
) = exp1 ()
 in (exp :: nil)
end)
 in ( LrTable.NT 14, ( result, exp1left, exp1right), rest671)
end
|  ( 13, ( ( _, ( MlyValue.funargs funargs1, _, funargs1right)) :: ( _
, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) => let val  result =
 MlyValue.funargs (fn _ => let val  (exp as exp1) = exp1 ()
 val  (funargs as funargs1) = funargs1 ()
 in (exp :: funargs)
end)
 in ( LrTable.NT 14, ( result, exp1left, funargs1right), rest671)
end
|  ( 14, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
MINUSleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671))
 => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.MinusOp, right=exp2, pos=MINUSleft})

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 15, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
PLUSleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671))
 => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.PlusOp, right=exp2, pos=PLUSleft})
end
)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 16, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
TIMESleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671))
 => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.TimesOp, right=exp2, pos=TIMESleft})

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 17, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
DIVIDEleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)
) => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.DivideOp, right=exp2, pos=DIVIDEleft})

end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 18, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
EQleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) =>
 let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.EqOp, right=exp2, pos=EQleft})
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 19, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
NEQleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671))
 => let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.NeqOp, right=exp2, pos=NEQleft})
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 20, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
LTleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) =>
 let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.LtOp, right=exp2, pos=LTleft})
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 21, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
LEleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) =>
 let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.LeOp, right=exp2, pos=LEleft})
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 22, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
GTleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) =>
 let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.GtOp, right=exp2, pos=GTleft})
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 23, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: ( _, ( _, 
GEleft, _)) :: ( _, ( MlyValue.exp exp1, exp1left, _)) :: rest671)) =>
 let val  result = MlyValue.exp (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.OpExp {left=exp1, oper=A.GeOp, right=exp2, pos=GEleft})
end)
 in ( LrTable.NT 0, ( result, exp1left, exp2right), rest671)
end
|  ( 24, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( 
MlyValue.ID ID1, (IDleft as ID1left), _)) :: rest671)) => let val  
result = MlyValue.recordField (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in ((Symbol.symbol ID, exp, IDleft))
end)
 in ( LrTable.NT 4, ( result, ID1left, exp1right), rest671)
end
|  ( 25, ( rest671)) => let val  result = MlyValue.recordFieldList (fn
 _ => (nil))
 in ( LrTable.NT 5, ( result, defaultPos, defaultPos), rest671)
end
|  ( 26, ( ( _, ( MlyValue.recordFieldList recordFieldList1, _, 
recordFieldList1right)) :: ( _, ( MlyValue.recordField recordField1, _
, _)) :: ( _, ( _, COMMA1left, _)) :: rest671)) => let val  result = 
MlyValue.recordFieldList (fn _ => let val  (recordField as 
recordField1) = recordField1 ()
 val  (recordFieldList as recordFieldList1) = recordFieldList1 ()
 in (recordField :: recordFieldList)
end)
 in ( LrTable.NT 5, ( result, COMMA1left, recordFieldList1right), 
rest671)
end
|  ( 27, ( ( _, ( _, _, RBRACE1right)) :: ( _, ( 
MlyValue.recordFieldList recordFieldList1, _, _)) :: ( _, ( 
MlyValue.recordField recordField1, _, _)) :: _ :: ( _, ( MlyValue.ID 
ID1, ID1left, _)) :: rest671)) => let val  result = MlyValue.record
 (fn _ => let val  ID1 = ID1 ()
 val  (recordField as recordField1) = recordField1 ()
 val  (recordFieldList as recordFieldList1) = recordFieldList1 ()
 in (
A.RecordExp {fields= recordField :: recordFieldList, typ=Symbol.symbol ID1, pos=ID1left}
)
end)
 in ( LrTable.NT 3, ( result, ID1left, RBRACE1right), rest671)
end
|  ( 28, ( ( _, ( _, _, RPAREN1right)) :: ( _, ( MlyValue.seqexp 
seqexp1, _, _)) :: ( _, ( _, LPAREN1left, _)) :: rest671)) => let val 
 result = MlyValue.sequence (fn _ => let val  (seqexp as seqexp1) = 
seqexp1 ()
 in (A.SeqExp(seqexp))
end)
 in ( LrTable.NT 7, ( result, LPAREN1left, RPAREN1right), rest671)
end
|  ( 29, ( rest671)) => let val  result = MlyValue.seqexp (fn _ => (
nil))
 in ( LrTable.NT 8, ( result, defaultPos, defaultPos), rest671)
end
|  ( 30, ( ( _, ( MlyValue.seqList seqList1, _, seqList1right)) :: ( _
, ( MlyValue.exp exp1, (expleft as exp1left), _)) :: rest671)) => let
 val  result = MlyValue.seqexp (fn _ => let val  (exp as exp1) = exp1
 ()
 val  (seqList as seqList1) = seqList1 ()
 in ((exp, expleft) :: seqList)
end)
 in ( LrTable.NT 8, ( result, exp1left, seqList1right), rest671)
end
|  ( 31, ( rest671)) => let val  result = MlyValue.seqList (fn _ => (
nil))
 in ( LrTable.NT 9, ( result, defaultPos, defaultPos), rest671)
end
|  ( 32, ( ( _, ( MlyValue.seqList seqList1, _, seqList1right)) :: ( _
, ( MlyValue.exp exp1, expleft, _)) :: ( _, ( _, SEMICOLON1left, _))
 :: rest671)) => let val  result = MlyValue.seqList (fn _ => let val 
 (exp as exp1) = exp1 ()
 val  (seqList as seqList1) = seqList1 ()
 in ((exp,expleft) :: seqList)
end)
 in ( LrTable.NT 9, ( result, SEMICOLON1left, seqList1right), rest671)

end
|  ( 33, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: ( _, ( _, 
ASSIGNleft, _)) :: ( _, ( MlyValue.lvalue lvalue1, lvalue1left, _)) ::
 rest671)) => let val  result = MlyValue.exp (fn _ => let val  (lvalue
 as lvalue1) = lvalue1 ()
 val  (exp as exp1) = exp1 ()
 in (A.AssignExp {var=lvalue, exp=exp,pos=ASSIGNleft})
end)
 in ( LrTable.NT 0, ( result, lvalue1left, exp1right), rest671)
end
|  ( 34, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, _, _)) :: ( _, ( _, (IFleft as IF1left), _)) :: 
rest671)) => let val  result = MlyValue.control (fn _ => let val  exp1
 = exp1 ()
 val  exp2 = exp2 ()
 in (A.IfExp {test=exp1, then'=exp2, else'=NONE, pos=IFleft})
end)
 in ( LrTable.NT 6, ( result, IF1left, exp2right), rest671)
end
|  ( 35, ( ( _, ( MlyValue.exp exp3, _, exp3right)) :: _ :: ( _, ( 
MlyValue.exp exp2, _, _)) :: _ :: ( _, ( MlyValue.exp exp1, _, _)) :: 
( _, ( _, (IFleft as IF1left), _)) :: rest671)) => let val  result = 
MlyValue.control (fn _ => let val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 val  exp3 = exp3 ()
 in (A.IfExp {test=exp1, then'=exp2, else'= SOME exp3, pos=IFleft})

end)
 in ( LrTable.NT 6, ( result, IF1left, exp3right), rest671)
end
|  ( 36, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: ( _, ( 
MlyValue.exp exp1, _, _)) :: ( _, ( _, (WHILEleft as WHILE1left), _))
 :: rest671)) => let val  result = MlyValue.control (fn _ => let val  
exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (A.WhileExp {test=exp1, body=exp2, pos=WHILEleft})
end)
 in ( LrTable.NT 6, ( result, WHILE1left, exp2right), rest671)
end
|  ( 37, ( ( _, ( MlyValue.exp exp3, _, exp3right)) :: _ :: ( _, ( 
MlyValue.exp exp2, _, _)) :: _ :: ( _, ( MlyValue.exp exp1, _, _)) ::
 _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _, (FORleft as FOR1left
), _)) :: rest671)) => let val  result = MlyValue.control (fn _ => let
 val  (ID as ID1) = ID1 ()
 val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 val  exp3 = exp3 ()
 in (
A.ForExp {var= Symbol.symbol ID, escape= ref true, lo=exp1, hi=exp2, body=exp3, pos=FORleft}
)
end)
 in ( LrTable.NT 6, ( result, FOR1left, exp3right), rest671)
end
|  ( 38, ( ( _, ( _, (BREAKleft as BREAK1left), BREAK1right)) :: 
rest671)) => let val  result = MlyValue.control (fn _ => (
A.BreakExp (BREAKleft)))
 in ( LrTable.NT 6, ( result, BREAK1left, BREAK1right), rest671)
end
|  ( 39, ( ( _, ( _, _, END1right)) :: ( _, ( MlyValue.seqexp seqexp1,
 _, _)) :: _ :: ( _, ( MlyValue.declist declist1, _, _)) :: ( _, ( _,
 (LETleft as LET1left), _)) :: rest671)) => let val  result = 
MlyValue.control (fn _ => let val  (declist as declist1) = declist1 ()
 val  (seqexp as seqexp1) = seqexp1 ()
 in (A.LetExp{decs=declist,body=A.SeqExp(seqexp),pos=LETleft})
end)
 in ( LrTable.NT 6, ( result, LET1left, END1right), rest671)
end
|  ( 40, ( ( _, ( MlyValue.exp exp2, _, exp2right)) :: _ :: _ :: ( _, 
( MlyValue.exp exp1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, (IDleft
 as ID1left), _)) :: rest671)) => let val  result = MlyValue.array (fn
 _ => let val  (ID as ID1) = ID1 ()
 val  exp1 = exp1 ()
 val  exp2 = exp2 ()
 in (
A.ArrayExp {typ=Symbol.symbol ID, size=exp1, init=exp2,pos=IDleft})

end)
 in ( LrTable.NT 2, ( result, ID1left, exp2right), rest671)
end
|  ( 41, ( ( _, ( MlyValue.ID ID1, (IDleft as ID1left), ID1right)) :: 
rest671)) => let val  result = MlyValue.lvalue (fn _ => let val  (ID
 as ID1) = ID1 ()
 in (A.SimpleVar(Symbol.symbol ID, IDleft))
end)
 in ( LrTable.NT 10, ( result, ID1left, ID1right), rest671)
end
|  ( 42, ( ( _, ( MlyValue.ID ID1, _, ID1right)) :: ( _, ( _, DOTleft,
 _)) :: ( _, ( MlyValue.lvalue lvalue1, lvalue1left, _)) :: rest671))
 => let val  result = MlyValue.lvalue (fn _ => let val  (lvalue as 
lvalue1) = lvalue1 ()
 val  (ID as ID1) = ID1 ()
 in (A.FieldVar(lvalue, Symbol.symbol ID, DOTleft))
end)
 in ( LrTable.NT 10, ( result, lvalue1left, ID1right), rest671)
end
|  ( 43, ( ( _, ( _, _, RBRACK1right)) :: ( _, ( MlyValue.exp exp1, _,
 _)) :: ( _, ( _, LBRACKleft, _)) :: ( _, ( MlyValue.lvalue lvalue1, 
lvalue1left, _)) :: rest671)) => let val  result = MlyValue.lvalue (fn
 _ => let val  (lvalue as lvalue1) = lvalue1 ()
 val  (exp as exp1) = exp1 ()
 in (A.SubscriptVar(lvalue, exp, LBRACKleft))
end)
 in ( LrTable.NT 10, ( result, lvalue1left, RBRACK1right), rest671)

end
|  ( 44, ( ( _, ( _, _, RBRACK1right)) :: ( _, ( MlyValue.exp exp1, _,
 _)) :: ( _, ( _, LBRACKleft, _)) :: ( _, ( MlyValue.ID ID1, (IDleft
 as ID1left), _)) :: rest671)) => let val  result = MlyValue.lvalue
 (fn _ => let val  (ID as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in (
A.SubscriptVar(A.SimpleVar(Symbol.symbol ID, IDleft),exp, LBRACKleft))

end)
 in ( LrTable.NT 10, ( result, ID1left, RBRACK1right), rest671)
end
|  ( 45, ( rest671)) => let val  result = MlyValue.declist (fn _ => (
nil))
 in ( LrTable.NT 16, ( result, defaultPos, defaultPos), rest671)
end
|  ( 46, ( ( _, ( MlyValue.dec dec1, dec1left, dec1right)) :: rest671)
) => let val  result = MlyValue.declist (fn _ => let val  (dec as dec1
) = dec1 ()
 in (dec :: nil)
end)
 in ( LrTable.NT 16, ( result, dec1left, dec1right), rest671)
end
|  ( 47, ( ( _, ( MlyValue.declist declist1, _, declist1right)) :: ( _
, ( MlyValue.dec dec1, dec1left, _)) :: rest671)) => let val  result =
 MlyValue.declist (fn _ => let val  (dec as dec1) = dec1 ()
 val  (declist as declist1) = declist1 ()
 in (dec :: declist)
end)
 in ( LrTable.NT 16, ( result, dec1left, declist1right), rest671)
end
|  ( 48, ( ( _, ( MlyValue.vardec vardec1, vardec1left, vardec1right))
 :: rest671)) => let val  result = MlyValue.dec (fn _ => let val  (
vardec as vardec1) = vardec1 ()
 in (vardec)
end)
 in ( LrTable.NT 15, ( result, vardec1left, vardec1right), rest671)

end
|  ( 49, ( ( _, ( MlyValue.tydecs tydecs1, tydecs1left, tydecs1right))
 :: rest671)) => let val  result = MlyValue.dec (fn _ => let val  (
tydecs as tydecs1) = tydecs1 ()
 in (A.TypeDec tydecs)
end)
 in ( LrTable.NT 15, ( result, tydecs1left, tydecs1right), rest671)

end
|  ( 50, ( ( _, ( MlyValue.fundecs fundecs1, fundecs1left, 
fundecs1right)) :: rest671)) => let val  result = MlyValue.dec (fn _
 => let val  (fundecs as fundecs1) = fundecs1 ()
 in (A.FunctionDec fundecs)
end)
 in ( LrTable.NT 15, ( result, fundecs1left, fundecs1right), rest671)

end
|  ( 51, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( 
MlyValue.ID ID1, _, _)) :: ( _, ( _, (VARleft as VAR1left), _)) :: 
rest671)) => let val  result = MlyValue.vardec (fn _ => let val  (ID
 as ID1) = ID1 ()
 val  (exp as exp1) = exp1 ()
 in (
A.VarDec {name=Symbol.symbol ID, init=exp,pos=VARleft, escape= ref true, typ=NONE}
)
end)
 in ( LrTable.NT 11, ( result, VAR1left, exp1right), rest671)
end
|  ( 52, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( 
MlyValue.ID ID2, ID2left, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _))
 :: ( _, ( _, (VARleft as VAR1left), _)) :: rest671)) => let val  
result = MlyValue.vardec (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 val  (exp as exp1) = exp1 ()
 in (
A.VarDec {name=Symbol.symbol ID1, escape= ref true, typ= SOME (Symbol.symbol ID2, ID2left), init=exp,pos=VARleft}
)
end)
 in ( LrTable.NT 11, ( result, VAR1left, exp1right), rest671)
end
|  ( 53, ( ( _, ( MlyValue.tydec tydec1, tydec1left, tydec1right)) :: 
rest671)) => let val  result = MlyValue.tydecs (fn _ => let val  (
tydec as tydec1) = tydec1 ()
 in (tydec :: nil)
end)
 in ( LrTable.NT 22, ( result, tydec1left, tydec1right), rest671)
end
|  ( 54, ( ( _, ( MlyValue.tydecs tydecs1, _, tydecs1right)) :: ( _, (
 MlyValue.tydec tydec1, tydec1left, _)) :: rest671)) => let val  
result = MlyValue.tydecs (fn _ => let val  (tydec as tydec1) = tydec1
 ()
 val  (tydecs as tydecs1) = tydecs1 ()
 in (tydec :: tydecs)
end)
 in ( LrTable.NT 22, ( result, tydec1left, tydecs1right), rest671)
end
|  ( 55, ( ( _, ( MlyValue.ty ty1, _, ty1right)) :: _ :: ( _, ( 
MlyValue.ID ID1, _, _)) :: ( _, ( _, (TYPEleft as TYPE1left), _)) :: 
rest671)) => let val  result = MlyValue.tydec (fn _ => let val  (ID
 as ID1) = ID1 ()
 val  (ty as ty1) = ty1 ()
 in ({name= Symbol.symbol ID, ty=ty, pos=TYPEleft})
end)
 in ( LrTable.NT 21, ( result, TYPE1left, ty1right), rest671)
end
|  ( 56, ( ( _, ( MlyValue.ID ID1, (IDleft as ID1left), ID1right)) :: 
rest671)) => let val  result = MlyValue.ty (fn _ => let val  (ID as 
ID1) = ID1 ()
 in (A.NameTy(Symbol.symbol ID, IDleft))
end)
 in ( LrTable.NT 17, ( result, ID1left, ID1right), rest671)
end
|  ( 57, ( ( _, ( _, _, RBRACE1right)) :: ( _, ( MlyValue.tyFields 
tyFields1, _, _)) :: ( _, ( _, LBRACE1left, _)) :: rest671)) => let
 val  result = MlyValue.ty (fn _ => let val  (tyFields as tyFields1) =
 tyFields1 ()
 in (A.RecordTy(tyFields))
end)
 in ( LrTable.NT 17, ( result, LBRACE1left, RBRACE1right), rest671)

end
|  ( 58, ( ( _, ( MlyValue.ID ID1, _, ID1right)) :: _ :: ( _, ( _, (
ARRAYleft as ARRAY1left), _)) :: rest671)) => let val  result = 
MlyValue.ty (fn _ => let val  (ID as ID1) = ID1 ()
 in (A.ArrayTy(Symbol.symbol ID, ARRAYleft))
end)
 in ( LrTable.NT 17, ( result, ARRAY1left, ID1right), rest671)
end
|  ( 59, ( ( _, ( MlyValue.ID ID2, _, ID2right)) :: _ :: ( _, ( 
MlyValue.ID ID1, ID1left, _)) :: rest671)) => let val  result = 
MlyValue.tyField (fn _ => let val  ID1 = ID1 ()
 val  ID2 = ID2 ()
 in (
{name = Symbol.symbol ID1, escape= ref true, typ= Symbol.symbol ID2, pos= ID1left}
)
end)
 in ( LrTable.NT 18, ( result, ID1left, ID2right), rest671)
end
|  ( 60, ( rest671)) => let val  result = MlyValue.tyFields (fn _ => (
nil))
 in ( LrTable.NT 19, ( result, defaultPos, defaultPos), rest671)
end
|  ( 61, ( ( _, ( MlyValue.tyFieldsList tyFieldsList1, _, 
tyFieldsList1right)) :: ( _, ( MlyValue.tyField tyField1, tyField1left
, _)) :: rest671)) => let val  result = MlyValue.tyFields (fn _ => let
 val  (tyField as tyField1) = tyField1 ()
 val  (tyFieldsList as tyFieldsList1) = tyFieldsList1 ()
 in (tyField :: tyFieldsList)
end)
 in ( LrTable.NT 19, ( result, tyField1left, tyFieldsList1right), 
rest671)
end
|  ( 62, ( rest671)) => let val  result = MlyValue.tyFieldsList (fn _
 => (nil))
 in ( LrTable.NT 20, ( result, defaultPos, defaultPos), rest671)
end
|  ( 63, ( ( _, ( MlyValue.tyFieldsList tyFieldsList1, _, 
tyFieldsList1right)) :: ( _, ( MlyValue.tyField tyField1, _, _)) :: (
 _, ( _, COMMA1left, _)) :: rest671)) => let val  result = 
MlyValue.tyFieldsList (fn _ => let val  (tyField as tyField1) = 
tyField1 ()
 val  (tyFieldsList as tyFieldsList1) = tyFieldsList1 ()
 in (tyField :: tyFieldsList)
end)
 in ( LrTable.NT 20, ( result, COMMA1left, tyFieldsList1right), 
rest671)
end
|  ( 64, ( ( _, ( MlyValue.fundec fundec1, fundec1left, fundec1right))
 :: rest671)) => let val  result = MlyValue.fundecs (fn _ => let val 
 (fundec as fundec1) = fundec1 ()
 in (fundec :: nil)
end)
 in ( LrTable.NT 13, ( result, fundec1left, fundec1right), rest671)

end
|  ( 65, ( ( _, ( MlyValue.fundecs fundecs1, _, fundecs1right)) :: ( _
, ( MlyValue.fundec fundec1, fundec1left, _)) :: rest671)) => let val 
 result = MlyValue.fundecs (fn _ => let val  (fundec as fundec1) = 
fundec1 ()
 val  (fundecs as fundecs1) = fundecs1 ()
 in (fundec :: fundecs)
end)
 in ( LrTable.NT 13, ( result, fundec1left, fundecs1right), rest671)

end
|  ( 66, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: _ :: ( _, 
( MlyValue.tyFields tyFields1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1,
 _, _)) :: ( _, ( _, (FUNCTIONleft as FUNCTION1left), _)) :: rest671))
 => let val  result = MlyValue.fundec (fn _ => let val  (ID as ID1) = 
ID1 ()
 val  (tyFields as tyFields1) = tyFields1 ()
 val  (exp as exp1) = exp1 ()
 in (
{name=Symbol.symbol ID, params= tyFields, result= NONE, body= exp, pos=FUNCTIONleft}
)
end)
 in ( LrTable.NT 12, ( result, FUNCTION1left, exp1right), rest671)
end
|  ( 67, ( ( _, ( MlyValue.exp exp1, _, exp1right)) :: _ :: ( _, ( 
MlyValue.ID ID2, ID2left, _)) :: _ :: _ :: ( _, ( MlyValue.tyFields 
tyFields1, _, _)) :: _ :: ( _, ( MlyValue.ID ID1, _, _)) :: ( _, ( _,
 (FUNCTIONleft as FUNCTION1left), _)) :: rest671)) => let val  result
 = MlyValue.fundec (fn _ => let val  ID1 = ID1 ()
 val  (tyFields as tyFields1) = tyFields1 ()
 val  ID2 = ID2 ()
 val  (exp as exp1) = exp1 ()
 in (
{name= Symbol.symbol ID1, params= tyFields, result= SOME (Symbol.symbol ID2, ID2left), body= exp, pos=FUNCTIONleft}
)
end)
 in ( LrTable.NT 12, ( result, FUNCTION1left, exp1right), rest671)
end
| _ => raise (mlyAction i392)
end
val void = MlyValue.VOID
val extract = fn a => (fn MlyValue.program x => x
| _ => let exception ParseInternal
	in raise ParseInternal end) a ()
end
end
structure Tokens : Tiger_TOKENS =
struct
type svalue = ParserData.svalue
type ('a,'b) token = ('a,'b) Token.token
fun EOF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 0,(
ParserData.MlyValue.VOID,p1,p2))
fun ID (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 1,(
ParserData.MlyValue.ID (fn () => i),p1,p2))
fun INT (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 2,(
ParserData.MlyValue.INT (fn () => i),p1,p2))
fun STRING (i,p1,p2) = Token.TOKEN (ParserData.LrTable.T 3,(
ParserData.MlyValue.STRING (fn () => i),p1,p2))
fun COMMA (p1,p2) = Token.TOKEN (ParserData.LrTable.T 4,(
ParserData.MlyValue.VOID,p1,p2))
fun COLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 5,(
ParserData.MlyValue.VOID,p1,p2))
fun SEMICOLON (p1,p2) = Token.TOKEN (ParserData.LrTable.T 6,(
ParserData.MlyValue.VOID,p1,p2))
fun LPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 7,(
ParserData.MlyValue.VOID,p1,p2))
fun RPAREN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 8,(
ParserData.MlyValue.VOID,p1,p2))
fun LBRACK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 9,(
ParserData.MlyValue.VOID,p1,p2))
fun RBRACK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 10,(
ParserData.MlyValue.VOID,p1,p2))
fun LBRACE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 11,(
ParserData.MlyValue.VOID,p1,p2))
fun RBRACE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 12,(
ParserData.MlyValue.VOID,p1,p2))
fun DOT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 13,(
ParserData.MlyValue.VOID,p1,p2))
fun PLUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 14,(
ParserData.MlyValue.VOID,p1,p2))
fun MINUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 15,(
ParserData.MlyValue.VOID,p1,p2))
fun TIMES (p1,p2) = Token.TOKEN (ParserData.LrTable.T 16,(
ParserData.MlyValue.VOID,p1,p2))
fun DIVIDE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 17,(
ParserData.MlyValue.VOID,p1,p2))
fun EQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 18,(
ParserData.MlyValue.VOID,p1,p2))
fun NEQ (p1,p2) = Token.TOKEN (ParserData.LrTable.T 19,(
ParserData.MlyValue.VOID,p1,p2))
fun LT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 20,(
ParserData.MlyValue.VOID,p1,p2))
fun LE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 21,(
ParserData.MlyValue.VOID,p1,p2))
fun GT (p1,p2) = Token.TOKEN (ParserData.LrTable.T 22,(
ParserData.MlyValue.VOID,p1,p2))
fun GE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 23,(
ParserData.MlyValue.VOID,p1,p2))
fun AND (p1,p2) = Token.TOKEN (ParserData.LrTable.T 24,(
ParserData.MlyValue.VOID,p1,p2))
fun OR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 25,(
ParserData.MlyValue.VOID,p1,p2))
fun ASSIGN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 26,(
ParserData.MlyValue.VOID,p1,p2))
fun ARRAY (p1,p2) = Token.TOKEN (ParserData.LrTable.T 27,(
ParserData.MlyValue.VOID,p1,p2))
fun IF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 28,(
ParserData.MlyValue.VOID,p1,p2))
fun THEN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 29,(
ParserData.MlyValue.VOID,p1,p2))
fun ELSE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 30,(
ParserData.MlyValue.VOID,p1,p2))
fun WHILE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 31,(
ParserData.MlyValue.VOID,p1,p2))
fun FOR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 32,(
ParserData.MlyValue.VOID,p1,p2))
fun TO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 33,(
ParserData.MlyValue.VOID,p1,p2))
fun DO (p1,p2) = Token.TOKEN (ParserData.LrTable.T 34,(
ParserData.MlyValue.VOID,p1,p2))
fun LET (p1,p2) = Token.TOKEN (ParserData.LrTable.T 35,(
ParserData.MlyValue.VOID,p1,p2))
fun IN (p1,p2) = Token.TOKEN (ParserData.LrTable.T 36,(
ParserData.MlyValue.VOID,p1,p2))
fun END (p1,p2) = Token.TOKEN (ParserData.LrTable.T 37,(
ParserData.MlyValue.VOID,p1,p2))
fun OF (p1,p2) = Token.TOKEN (ParserData.LrTable.T 38,(
ParserData.MlyValue.VOID,p1,p2))
fun BREAK (p1,p2) = Token.TOKEN (ParserData.LrTable.T 39,(
ParserData.MlyValue.VOID,p1,p2))
fun NIL (p1,p2) = Token.TOKEN (ParserData.LrTable.T 40,(
ParserData.MlyValue.VOID,p1,p2))
fun FUNCTION (p1,p2) = Token.TOKEN (ParserData.LrTable.T 41,(
ParserData.MlyValue.VOID,p1,p2))
fun VAR (p1,p2) = Token.TOKEN (ParserData.LrTable.T 42,(
ParserData.MlyValue.VOID,p1,p2))
fun TYPE (p1,p2) = Token.TOKEN (ParserData.LrTable.T 43,(
ParserData.MlyValue.VOID,p1,p2))
fun UMINUS (p1,p2) = Token.TOKEN (ParserData.LrTable.T 44,(
ParserData.MlyValue.VOID,p1,p2))
fun LOWPREC (p1,p2) = Token.TOKEN (ParserData.LrTable.T 45,(
ParserData.MlyValue.VOID,p1,p2))
end
end
