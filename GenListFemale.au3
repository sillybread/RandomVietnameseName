$pF = FileReadToArray("___+F")
$0F = FileReadToArray("___0F")
$nF = FileReadToArray("___-F")
$pM = FileReadToArray("__+M")
$0M = FileReadToArray("__0M")
$nM = FileReadToArray("__-M")
$_L = FileReadToArray("_L")

ConsoleWrite("4 ")
For $i In $_L
	For $j In $nM
		For $k In $nF
			FileWrite("female.txt",$i&" "&$j&" "&$k&@CRLF)
		Next
	Next
Next
ConsoleWrite("5 ")
For $i In $_L
	For $j In $0M
		For $k In $nF
			FileWrite("female.txt",$i&" "&$j&" "&$k&@CRLF)
		Next
	Next
Next
ConsoleWrite("6 ")
For $i In $_L
	For $j In $nM
		For $k In $0F
			FileWrite("female.txt",$i&" "&$j&" "&$k&@CRLF)
		Next
	Next
Next
ConsoleWrite("7 ")
For $i In $_L
	For $k In $nF
		FileWrite("female.txt",$i&" "&$k&@CRLF)
	Next
Next
ConsoleWrite("8 ##")