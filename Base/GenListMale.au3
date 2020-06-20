$pF = FileReadToArray("___+F")
$0F = FileReadToArray("___0F")
$nF = FileReadToArray("___-F")
$pM = FileReadToArray("__+M")
$0M = FileReadToArray("__0M")
$nM = FileReadToArray("__-M")
$_L = FileReadToArray("_L")
ConsoleWrite("!8: ")
For $i In $_L
	For $j In $pM
		For $k In $pF
			FileWrite("male.txt",$i&" "&$j&" "&$k&@CRLF)
		Next
	Next
Next
ConsoleWrite("1 ")
For $i In $_L
	For $j In $0M
		For $k In $pF
			FileWrite("male.txt",$i&" "&$j&" "&$k&@CRLF)
		Next
	Next
Next
ConsoleWrite("2 ")
For $i In $_L
	For $j In $pM
		For $k In $0F
			FileWrite("male.txt",$i&" "&$j&" "&$k&@CRLF)
		Next
	Next
Next
ConsoleWrite("3 ")
For $i In $_L
	For $k In $pF
		FileWrite("male.txt",$i&" "&$k&@CRLF)
	Next
Next
ConsoleWrite("4 ")