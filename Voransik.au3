#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=C:\Users\gooro\Desktop\Voransik.Exe
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Misc.au3>
;Pothack Vorila Dransik
;Kyle GusToughSon Bishop
;Discord : GusToughSon#7073
;GusToughSon@Icloud.com

HotKeySet("{ins}", "mouse")
HotKeySet("{end}", "close")
HotKeySet("{del}", "check")
HotKeySet("{home}", "gold")
HotKeySet("{pause}", "kill")

Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)

Global $pickx = 0, $picky = 0, $Gold = 1, $on = 0, $off = 1
$chat = Random (0,99999999)
While 1
	While $on
		if _IsPressed (04) Then
			send ("{tab}")
			Sleep (100)
		EndIf

		If WinActive("Dransik Classic") Then ;Make sure the game is in Focus
			If $pickx = 0 Then ;Are the pots set as the location yet?;
				ConsoleWrite("set the pots dumbass" & @CRLF)
				$on = 0 ;return function to off as u cant click air;
				remap ()
				Sleep(500)
				remap ()
			Else
				PixelSearch(430, 12, 430, 12, 0x00C800) ;health bar green check;
				If Not @error Then ;no heal needed as it sees green;
					remap ()
					GoldWhore()
				Else
					ControlClick("Dransik Classic", "", "", "right", 1, $pickx, $picky) ; it saw no green and thinks you need healing
					ConsoleWrite("I guess i should heal you you look pathetic" & @CRLF)
					Sleep(200)
					remap ()
					GoldWhore()
					Sleep(200)
					remap ()
					GoldWhore()
					Sleep(200)
					remap ()
					GoldWhore()
					Sleep(200)
					remap ()
					GoldWhore()
					Sleep(200)
					remap ()
					GoldWhore()
					Sleep(200)
					remap ()
					GoldWhore()
					Sleep(200)
					remap ()
					GoldWhore()
					Sleep(200)
					remap ()
					GoldWhore()
					Sleep(200)
					remap ()
					GoldWhore()
					Sleep(200)
					remap ()
					GoldWhore()
				EndIf
			EndIf
			remap ()
			GoldWhore()

		EndIf

	WEnd
	While $off
		remap ()
	WEnd

WEnd


func remap()
	if _IsPressed (04) Then
			send ("{tab}")
			Sleep (100)
	EndIf
EndFunc

func GoldWhore()
	$CoOrd = PixelSearch(188, 188, 245, 245, 0xE4D008) ; Looks for goldwww.
		If Not @error Then         ;If it exists then
			ControlClick("Dransik Classic", "", "", "right", 1, $CoOrd[0], $CoOrd[1])         ;Clicks the first instance of that colour
			;MouseClick ("right",$Coord[0],$Coord[1],1);test function to visualize the ghost click
		Else
			;ConsoleWrite ("no go gringo" &@crlf)
			Sleep(50)
		EndIf
	$CaveGold = PixelSearch (188, 188, 245, 245, 0x7C611A) ;attempt for cave gold
		If Not @error Then         ;If it exists then
			ControlClick("Dransik Classic", "", "", "right", 1, $CaveGold[0], $CaveGold[1])         ;Clicks the first instance of that colour
			;MouseClick ("right",$Coord[0],$Coord[1],1);test function to visualize the ghost click
		Else
			;ConsoleWrite ("gringo gets nothing" &@crlf)
			Sleep(50)
		EndIf
EndFunc


Func check()
	If $on = 1 Then
		$on = 0
		$off = 1
	Else
		$off = 0
		$on = 1
	EndIf
EndFunc



Func gold()
	If $Gold = 1 Then
		$Gold = 0
	Else
		$Gold = 1
	EndIf
EndFunc ;still unused;

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