#include <String.au3>
#include <WinAPI.au3>
#include <Array.au3>
#include "E:\UDF\Unicode2TCVN.au3"


;MsgBox(0,'',StringRegExp("Á","[A-Za-z\s]"))
;MsgBox(262144, 'Debug line ~' & @ScriptLineNumber, 'Selection:' & @CRLF & 'QueryName()' & @CRLF & @CRLF & 'Return:' & @CRLF & QueryName()) ;### Debug MSGBOX
Func QueryName()
	Local $nByte, $iCurrentByte, $iNextLineCount=0
	Local $sResult = ""
	$sFile = @ScriptDir & "\ndbt"
	$hFile = _WinAPI_CreateFile($sFile, 2, 2+4)
	For $i = 1 To 256
		_WinAPI_SetFilePointer($hFile, -$i, 2)
		$tBuffer = DllStructCreate("byte")
		_WinAPI_ReadFile($hFile,$tBuffer,1,$nByte)
		$iCurrentByte = DllStructGetData($tBuffer,1)
		If ($iCurrentByte = 0x0D) Or ($iCurrentByte = 0x0A) Then
			$iNextLineCount += 1
		Else
			$sResult = Hex($iCurrentByte,2) & $sResult
		EndIf
		If $iNextLineCount = 2 Then ExitLoop
	Next
	_WinAPI_SetFilePointer($hFile, -$i, 2)
	;MsgBox(0,'',_HexToString($sResult))
	_WinAPI_SetEndOfFile($hFile)
	_WinAPI_CloseHandle($hFile)
	Local $ret = U2T(_HexToString($sResult))
	$ret = StringReplace($ret," ","")
	$ret = StringSplit($ret,"|")
	If Not @error Then
		Local $lPrefix = ["zZz~zZz", "I~I", "zXz~zXz", "oX~Xo", "II~II", "Xz~zX", "zzz~zzz", "zxz~zxz", "zz~zz"]
		Local $ii = Random(0,UBound($lPrefix)-1,1)
		$ret[1] = StringReplace($lPrefix[$ii],"~",$ret[1])
		$ret[2] = ($ret[2]=0)?Random(2,3,1):Random(0,1,1)
	Else
		Return "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
	EndIf
	Return $ret
EndFunc