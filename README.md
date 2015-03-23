# compiladores-2015
CCOM 4087 SML Compiler Course Spring 2015
Abimael Carrasquillo

To Run:
	sml lexer.sml

It will run the CM.make "sources.cm"; and the lexer "prueba.tig" contains examples of tokens and the merge.tig an example tiger program.


## Chap2
Tiger.lex

###COMMENTS
When the lexer is on the <INITIAL> state reading the characters /* the lexer moves to the <COMMENT> state and increments the comment counter variable "val commentcnt" there the lexer will continue until */ charcaters are found when this happens the "val commentcnt" is decreased and if it is 0 the lexer will go to the <INITIAL> state. While being on the comment state any character found the lexer will continue.

lines 89-92:
	<INITIAL>"/*" => (commentcnt := !commentcnt + 1; YYBEGIN COMMENT; continue());
	<COMMENT>"/*" => (commentcnt := !commentcnt + 1; continue());
	<COMMENT>"*/" => (commentcnt := !commentcnt - 1; if !commentcnt = 0 then YYBEGIN INITIAL else (); continue());
	<COMMENT>. => (continue());




###STRINGS
When the lexer is on the <INITIAL> state and the " character is found, it moves to the
<STRING> state initializing the "val strCreator", "val strPos" and "val strUnclosed" that will contain the string the lexer reads, the position where the string starts and if the string has been closed correctly respectively. While on the <STRING> state the parse will look for escape characters and convert them using the "valOf(String.fromString(yytex))" function. The multiple line string "\ ... \" the first "\" would make the lexer go to the <BIGSTRING> state and there the lexer will ignore and continue if any (spaces,tabs, newlines, returns, and formfeeds) are found, when the second "\" is foud the lexer goes back to the <STRING> state. 

lines 79-87:
	<INITIAL>\" => (YYBEGIN STRING; strCreator := ""; strUnclosed := true; strPos := yypos; continue());
	<STRING>\" => (YYBEGIN INITIAL; strUnclosed := false; Tokens.STRING(!strCreator, !strPos, !strPos+size(!strCreator)));
	<STRING>\\(n|t|b|a|f|v|([0-2][0-5][0-5])|\"|\^[A-Z]|\^@|\^_|\^\\|\\) => (strCreator := (!strCreator ^ valOf(String.fromString yytext)); continue());
	<STRING>[\\] => (YYBEGIN BIGSTRING;continue());
	<BIGSTRING>[\n] => (lineNum := !lineNum+1; linePos := yypos :: !linePos; continue());
	<BIGSTRING>[\ \t\f] => (continue());
	<BIGSTRING>[\\] => (YYBEGIN STRING; continue());
	<BIGSTRING>. => (ErrorMsg.error yypos ("illegal escape character " ^ yytext); YYBEGIN STRING; continue());
	<STRING>. => (strCreator := !strCreator ^ yytext; continue());


###End of File
The end of file function will display any error related to comments unclosed or strings unclosed here the  "val commentcnt" and "val strUnclosed" are verified to detect the errors. In all the cases the original return of the function is returned.

lines 12-21:
	fun eof() = let 
					val pos = hd(!linePos)
				in
					if !commentcnt > 0
						then (ErrorMsg.error pos (Int.toString(!commentcnt)^" comments not closed correctly"); commentcnt := 0;Tokens.EOF(pos,pos))
					else if !strUnclosed = true
						then (ErrorMsg.error pos ("String not closed correctly starting at position: "^ Int.toString(!strPos)); Tokens.EOF(pos,pos))
					else
						Tokens.EOF(pos,pos)
				end 