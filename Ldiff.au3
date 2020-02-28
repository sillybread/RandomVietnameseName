#include <Array.au3>
$1 = FileReadToArray("___-F")
$2 = FileReadToArray("___0F")
#cs
For $i In $1
	For $j In $2
		If $i==$j Then FileWrite("same.txt",$i&@CRLF)
	Next
Next
#ce
For $i In $1
	$ii = _ArraySearch($2,$i)
	If $ii=-1 Then FileWrite("diff.txt",$i&@CRLF)
Next