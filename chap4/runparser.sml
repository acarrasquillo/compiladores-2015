CM.make "sources.cm";
PrintAbsyn.print (TextIO.stdOut, Parse.parse "let.tig");
OS.Process.exit(OS.Process.success);