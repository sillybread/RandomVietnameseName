#include <Array.au3>
#include <File.au3>

$f = FileReadToArray(".female.txt")
ConsoleWrite("1")
For $i = 0 To UBound($f)-1
	$f[$i]&="|0"
Next
ConsoleWrite("1")
$m = FileReadToArray(".male.txt")
ConsoleWrite("2")
For $i = 0 To UBound($m)-1
	$m[$i]&="|1"
Next
ConsoleWrite("2")
_ArrayConcatenate($f,$m)
ConsoleWrite("3")
_ArrayShuffle($f)
ConsoleWrite("4")
_FileWriteFromArray("result.txt",$f)
ConsoleWrite("5")