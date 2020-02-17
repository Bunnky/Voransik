;Pothack Voransik
;Kyle GusToughSon Bishop
;GusToughSon@Icloud.com

Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)

While 1
	While $on
	If WinActive("Dransik Classic") Then ;Make sure the game is in Focus
		If $pickx = 0 Then ;Are the pots set as the location yet?;
				ConsoleWrite("set the pots dumbass" & @CRLF)
				$on = 0 ;return function to off as u cant click air;
				Sleep(500)
		Else


		EndIf
	EndIf
	wend
WEnd



Func reset()
	$set = 0
EndFunc   ;==>reset

Func setup()
	$sleep += 100
	ConsoleWrite($sleep & @CRLF)
EndFunc   ;==>setup

Func setdwn()
	$sleep -= 100
	ConsoleWrite($sleep & @CRLF)
EndFunc   ;==>setdwn

Func check()
	If $on = 1 Then
		$on = 0
	Else
		$on = 1
	EndIf
EndFunc   ;==>check

Func gold()
	If $Gold = 1 Then
		$Gold = 0
	Else
		$Gold = 1
	EndIf
EndFunc   ;==>gold

Func close()
	ConsoleWrite(@CRLF & "Closing Via Close Command" & @CRLF)
	Exit
EndFunc   ;==>close

Func kill()
	ProcessClose ("Vorlia Client.exe")
	ConsoleWrite("tryed" & @CRLF)
EndFunc   ;==>kill

Func mouse()
	$pickx = MouseGetPos(0)
	$picky = MouseGetPos(1)
	$set = 1
	ConsoleWrite("Pots now Set At Location:" & @CRLF)
	ConsoleWrite("X = " & $pickx & @CRLF)
	ConsoleWrite("Y = " & $picky & @CRLF)
EndFunc   ;==>mouse