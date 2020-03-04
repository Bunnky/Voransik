#include <Misc.au3>
;Pothack Vorila Dransik
;Kyle GusToughSon Bishop
;Discord : GusToughSon#7073
;GusToughSon@Icloud.com

HotKeySet ("{f3}", "mouse")    ;Press Insert over pots to set where the pothack clicks;
HotKeySet ("{ins}", "mouse")   ;Press Insert over pots to set where the pothack clicks;
HotKeySet ("{end}", "close")   ;press End To kill Voransik hack;
HotKeySet ("{del}", "check")   ;press DEL to turn it on or off;
HotKeySet ("{home}", "gold")   ;no function will be removed on cleanup;
HotKeySet ("{pause}", "kill")  ;Force close the Vorila/Dransik Client IE:Old Style dransik logout;
HotKeySet ("{`}","ClickBoner") ;Exctra Cleanup for left behind loot;

Opt("MouseCoordMode", 2) ;This sets the way the mouse interacts with the client (set as 2) ;
Opt("PixelCoordMode", 2) ;This sets the way the PixelSearch interacts with the client (set as 2) ;

ConsoleWrite ("Started" & @CRLF)

;This is Global Variables;
Global $pickx = 0, $picky = 0, $Gold = 1, $on = 0,$clicklapwait = 25

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
					 ;ConsoleWrite ("this shit" & @crlf)
					 GoldWhore()
				  Else
					 ControlClick("Dransik Classic", "", "", "right", 1, $pickx, $picky) ; it saw no green and thinks you need healing
					 ConsoleWrite("I guess i should heal you you look pathetic" & @CRLF)
					 Sleep(200)
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
				EndIf
			EndIf
			GoldWhore()
		EndIf
	WEnd
WEnd
;0xDC8C00;
Func ClickBoner ()
   ControlClick("Dransik Classic", "", "", "right", 1, 199, 231) ;topleft;
	  sleep($clicklapwait)
   ControlClick("Dransik Classic", "", "", "right", 1, 215, 231) ;top;
	  sleep($clicklapwait)
   ControlClick("Dransik Classic", "", "", "right", 1, 231, 231) ;topright;
	  sleep($clicklapwait)
   ControlClick("Dransik Classic", "", "", "right", 1, 199, 215) ;left;
	  sleep($clicklapwait)
   ControlClick("Dransik Classic", "", "", "right", 1, 231, 215) ;right;
	  sleep($clicklapwait)
   ControlClick("Dransik Classic", "", "", "right", 1, 199, 199) ;downleft;
	  sleep($clicklapwait)
   ControlClick("Dransik Classic", "", "", "right", 1, 215, 199) ;down;
	  sleep($clicklapwait)
   ControlClick("Dransik Classic", "", "", "right", 1, 231, 199) ;down right;
	  sleep($clicklapwait)
EndFunc

func GoldWhore()
   $CoOrd = PixelSearch(188, 188, 245, 245, 0xE4D008) ; Looks for goldwww.
	  If Not @error Then         ;If it exists then
		 ControlClick("Dransik Classic", "", "", "right", 1, $CoOrd[0], $CoOrd[1])         ;Clicks the first instance of that colour
	  Else
		 ;ConsoleWrite ("no go gringo" &@crlf)
		 Sleep(50)
	  EndIf
   $CaveGold = PixelSearch (188, 188, 245, 245, 0x7C611A) ;attempt for cave gold
	  If Not @error Then         ;If it exists then
		 ControlClick("Dransik Classic", "", "", "right", 1, $CaveGold[0], $CaveGold[1])         ;Clicks the first instance of that colour
	  Else
		 ;ConsoleWrite ("gringo gets nothing" &@crlf)
	  Sleep(50)
	  EndIf
EndFunc

Func check()
   If $on = 1 Then
	  $on = 0
   Else
	  $on = 1
   EndIf
EndFunc

Func close()
   ConsoleWrite(@CRLF & "Closing Via Close Command" & @CRLF)
   Exit
EndFunc

Func kill()
   ProcessClose ("Vorlia Client.exe")
   ConsoleWrite("tryed" & @CRLF)
EndFunc

Func mouse()
   $pickx = MouseGetPos(0)
   $picky = MouseGetPos(1)
   ConsoleWrite("Pots now Set At Location:" & @CRLF)
   ConsoleWrite("X = " & $pickx & @CRLF)
   ConsoleWrite("Y = " & $picky & @CRLF)
EndFunc