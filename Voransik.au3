;Pothack Voransik
;Kyle GusToughSon Bishop
;Discord : GusToughSon#7073
;GusToughSon@Icloud.com

HotKeySet("{ins}", "mouse")
HotKeySet("{end}", "close")
HotKeySet("{del}", "check")
HotKeySet("{home}", "reset")
HotKeySet("{pgup}", "setup")
HotKeySet("{pgdn}", "setdwn")
HotKeySet("{home}", "gold")
HotKeySet("{pause}", "kill")

Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)

Global $pickx = 0, $picky = 0, $Gold = 1, $on = 0, $set = 0, $sleep = 2500

While 1
	While $on
	If WinActive("Dransik Classic") Then ;Make sure the game is in Focus
		If $pickx = 0 Then ;Are the pots set as the location yet?;
			ConsoleWrite("set the pots dumbass" & @CRLF)
			$on = 0 ;return function to off as u cant click air;
			Sleep(500)
		Else
		PixelSearch(430, 12, 430, 12, 0x00C800) ;health bar green check;
			If Not @error Then ;no heal needed as it sees green;
				$CoOrd = PixelSearch(188, 188, 245, 245, 0xE4D008) ; Looks for goldwww.
				If Not @error Then ;If it exists then
					ControlClick("Dransik Classic", "", "", "right", 1, $CoOrd[0], $CoOrd[1]) ;Clicks the first instance of that colour
					;MouseClick ("right",$Coord[0],$Coord[1],1);test function to visualize the ghost click
				Else
						ConsoleWrite ("no go gringo" &@crlf)
						Sleep(50)
				EndIf
			EndIf
		EndIf
	EndIf
	Wend
WEnd



Func reset();this is Unused and will be removed in next github update
	$set = 0
EndFunc   ;==>reset

Func setup();this is Unused and will be removed in next github update
	$sleep += 100
	ConsoleWrite($sleep & @CRLF)
EndFunc   ;==>setup

Func setdwn() ;this is Unused and will be removed in next github update
	$sleep -= 100
	ConsoleWrite($sleep & @CRLF)
EndFunc

Func check() ;on and off function;
	If $on = 1 Then
		$on = 0
		ConsoleWrite ("off" & @crlf)
	Else
		$on = 1
		ConsoleWrite ("on" & @CRLF)
	EndIf
EndFunc

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