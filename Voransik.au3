;Pothack Vorila Dransik
;Kyle GusToughSon Bishop
;Discord : GusToughSon#7073
;GusToughSon@Icloud.com

HotKeySet("{ins}", "mouse")
HotKeySet("{end}", "close")
HotKeySet("{del}", "check")
HotKeySet("{numpad0}", "chat")
HotKeySet("{home}", "gold")
HotKeySet("{pause}", "kill")

Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)

Global $pickx = 0, $picky = 0, $Gold = 1, $on = 0, $chat = 1

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
					GoldWhore()
				Else
					ControlClick("Dransik Classic", "", "", "right", 1, $pickx, $picky) ; it saw no green and thinks you need healing
					ConsoleWrite("I guess i should heal you you look pathetic" & @CRLF)
					Sleep(200)
					GoldWhore()
					Sleep(200)
					GoldWhore()
					Sleep(200)
					GoldWhore()
					Sleep(200)
					GoldWhore()
					Sleep(200)
					GoldWhore()
					Sleep(200)
					GoldWhore()
					Sleep(200)
					GoldWhore()
					Sleep(200)
					GoldWhore()
					Sleep(200)
					GoldWhore()
					Sleep(200)
					GoldWhore()
				EndIf
			EndIf
			GoldWhore()

		EndIf
	WEnd
WEnd

func GoldWhore()
	$CoOrd = PixelSearch(188, 188, 245, 245, 0xE4D008) ; Looks for goldwww.
			If Not @error Then         ;If it exists then
				ControlClick("Dransik Classic", "", "", "right", 1, $CoOrd[0], $CoOrd[1])         ;Clicks the first instance of that colour
				;MouseClick ("right",$Coord[0],$Coord[1],1);test function to visualize the ghost click
			Else
				;ConsoleWrite ("no go gringo" &@crlf)
				Sleep(50)
			EndIf
EndFunc


Func check()
	If $on = 1 Then
		$on = 0
	Else
		$on = 1
	EndIf
EndFunc   ;==>check


Func chat()
	send ("t" &"{enter}")
	Send ($chat & "{enter}")
	$chat = $chat *2
	ConsoleWrite ($chat)
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