#include <Misc.au3>
;Pothack Vorila Dransik
;Kyle GusToughSon Bishop
;Discord : GusToughSon#7073
;GusToughSon@Icloud.com


ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(9) :    HotKeySet ("{numpad0}", "Extra")'  & @CRLF) ;### Trace Console
HotKeySet ("{numpad0}", "Extra")
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(11) :    HotKeySet ("{-}", "mouse2") ;teehee'  & @CRLF) ;### Trace Console
HotKeySet ("{-}", "mouse2") ;teehee
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(13) :    HotKeySet ("{0}", "mouse1")  	;this is for cures'  & @CRLF) ;### Trace Console
HotKeySet ("{0}", "mouse1")  	;this is for cures
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(15) :    HotKeySet ("{9}", "mouse")  	;Press Insert over pots to set where the pothack clicks;'  & @CRLF) ;### Trace Console
HotKeySet ("{9}", "mouse")  	;Press Insert over pots to set where the pothack clicks;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(17) :    HotKeySet ("{ins}", "mouse")    ;Press Insert over pots to set where the pothack clicks;'  & @CRLF) ;### Trace Console
HotKeySet ("{ins}", "mouse")    ;Press Insert over pots to set where the pothack clicks;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(19) :    HotKeySet ("{end}", "close")    ;press End To kill Voransik hack;'  & @CRLF) ;### Trace Console
HotKeySet ("{end}", "close")    ;press End To kill Voransik hack;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(21) :    HotKeySet ("{del}", "check")    ;press DEL to turn it on or off;'  & @CRLF) ;### Trace Console
HotKeySet ("{del}", "check")    ;press DEL to turn it on or off;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(23) :    HotKeySet ("{pause}", "kill")   ;Force close the Vorila/Dransik Client IE:Old Style dransik logout;'  & @CRLF) ;### Trace Console
HotKeySet ("{pause}", "kill")   ;Force close the Vorila/Dransik Client IE:Old Style dransik logout;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(25) :    HotKeySet ("{`}","ClickBoner")  ;Exctra Cleanup for left behind loot;'  & @CRLF) ;### Trace Console
HotKeySet ("{`}","ClickBoner")  ;Exctra Cleanup for left behind loot;

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(28) :    Opt("MouseCoordMode", 2) ;This sets the way the mouse interacts with the client (set as 2) ;'  & @CRLF) ;### Trace Console
Opt("MouseCoordMode", 2) ;This sets the way the mouse interacts with the client (set as 2) ;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(30) :    Opt("PixelCoordMode", 2) ;This sets the way the PixelSearch interacts with the client (set as 2) ;'  & @CRLF) ;### Trace Console
Opt("PixelCoordMode", 2) ;This sets the way the PixelSearch interacts with the client (set as 2) ;

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(33) :    ConsoleWrite ("Started" & @CRLF)'  & @CRLF) ;### Trace Console
ConsoleWrite ("Started" & @CRLF)

;This is Global Variables; Disease is ;0xDC8C00;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(37) :    Global $pickx = 0, $picky = 0, $pickx1 = 0, $picky1 = 0, $pickx2 = 0, $picky2 = 0, $Gold = 1, $on = 0,$clicklapwait = 25'  & @CRLF) ;### Trace Console
Global $pickx = 0, $picky = 0, $pickx1 = 0, $picky1 = 0, $pickx2 = 0, $picky2 = 0, $Gold = 1, $on = 0,$clicklapwait = 25

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(40) :    While 1'  & @CRLF) ;### Trace Console
While 1
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(42) :    	While $on'  & @CRLF) ;### Trace Console
	While $on
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(44) :    		If WinActive("Dransik Classic") Then ;Make sure the game is in Focus'  & @CRLF) ;### Trace Console
		If WinActive("Dransik Classic") Then ;Make sure the game is in Focus
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(46) :    			If $pickx = 0 Then ;Are the pots set as the location yet?;'  & @CRLF) ;### Trace Console
			If $pickx = 0 Then ;Are the pots set as the location yet?;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(48) :    			   ConsoleWrite("set the pots dumbass" & @CRLF)'  & @CRLF) ;### Trace Console
			   ConsoleWrite("set the pots dumbass" & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(50) :    			   $on = 0 ;return function to off as u cant click air;'  & @CRLF) ;### Trace Console
			   $on = 0 ;return function to off as u cant click air;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(52) :    			   Sleep(500)'  & @CRLF) ;### Trace Console
			   Sleep(500)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(54) :    			Else'  & @CRLF) ;### Trace Console
			Else
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(56) :    			   PixelSearch (10, 99,69, 105,0xDC8C00) ; is there diease somewhere;'  & @CRLF) ;### Trace Console
			   PixelSearch (10, 99,69, 105,0xDC8C00) ; is there diease somewhere;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(58) :    				If not @Error Then'  & @CRLF) ;### Trace Console
				If not @Error Then
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(60) :    				  ClickCures()'  & @CRLF) ;### Trace Console
				  ClickCures()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(62) :    			   Else'  & @CRLF) ;### Trace Console
			   Else
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(64) :    				  DoShit () ;main program to do pots and gold'  & @CRLF) ;### Trace Console
				  DoShit () ;main program to do pots and gold
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(66) :    			   EndIf'  & @CRLF) ;### Trace Console
			   EndIf
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(68) :    			EndIf'  & @CRLF) ;### Trace Console
			EndIf
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(70) :    			GoldWhore()'  & @CRLF) ;### Trace Console
			GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(72) :    		EndIf'  & @CRLF) ;### Trace Console
		EndIf
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(74) :    	WEnd'  & @CRLF) ;### Trace Console
	WEnd
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(76) :    WEnd'  & @CRLF) ;### Trace Console
WEnd

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(79) :    Func ClickBoner ()'  & @CRLF) ;### Trace Console
Func ClickBoner ()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(81) :       ControlClick("Dransik Classic", "", "", "right", 1, 199, 231) ;topleft;'  & @CRLF) ;### Trace Console
   ControlClick("Dransik Classic", "", "", "right", 1, 199, 231) ;topleft;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(83) :    	  sleep($clicklapwait)'  & @CRLF) ;### Trace Console
	  sleep($clicklapwait)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(85) :       ControlClick("Dransik Classic", "", "", "right", 1, 215, 231) ;top;'  & @CRLF) ;### Trace Console
   ControlClick("Dransik Classic", "", "", "right", 1, 215, 231) ;top;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(87) :    	  sleep($clicklapwait)'  & @CRLF) ;### Trace Console
	  sleep($clicklapwait)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(89) :       ControlClick("Dransik Classic", "", "", "right", 1, 231, 231) ;topright;'  & @CRLF) ;### Trace Console
   ControlClick("Dransik Classic", "", "", "right", 1, 231, 231) ;topright;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(91) :    	  sleep($clicklapwait)'  & @CRLF) ;### Trace Console
	  sleep($clicklapwait)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(93) :       ControlClick("Dransik Classic", "", "", "right", 1, 199, 215) ;left;'  & @CRLF) ;### Trace Console
   ControlClick("Dransik Classic", "", "", "right", 1, 199, 215) ;left;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(95) :    	  sleep($clicklapwait)'  & @CRLF) ;### Trace Console
	  sleep($clicklapwait)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(97) :       ControlClick("Dransik Classic", "", "", "right", 1, 231, 215) ;right;'  & @CRLF) ;### Trace Console
   ControlClick("Dransik Classic", "", "", "right", 1, 231, 215) ;right;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(99) :    	  sleep($clicklapwait)'  & @CRLF) ;### Trace Console
	  sleep($clicklapwait)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(101) :       ControlClick("Dransik Classic", "", "", "right", 1, 199, 199) ;downleft;'  & @CRLF) ;### Trace Console
   ControlClick("Dransik Classic", "", "", "right", 1, 199, 199) ;downleft;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(103) :    	  sleep($clicklapwait)'  & @CRLF) ;### Trace Console
	  sleep($clicklapwait)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(105) :       ControlClick("Dransik Classic", "", "", "right", 1, 215, 199) ;down;'  & @CRLF) ;### Trace Console
   ControlClick("Dransik Classic", "", "", "right", 1, 215, 199) ;down;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(107) :    	  sleep($clicklapwait)'  & @CRLF) ;### Trace Console
	  sleep($clicklapwait)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(109) :       ControlClick("Dransik Classic", "", "", "right", 1, 231, 199) ;down right;'  & @CRLF) ;### Trace Console
   ControlClick("Dransik Classic", "", "", "right", 1, 231, 199) ;down right;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(111) :    	  sleep($clicklapwait)'  & @CRLF) ;### Trace Console
	  sleep($clicklapwait)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(113) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(116) :    func GoldWhore()'  & @CRLF) ;### Trace Console
func GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(118) :       $CoOrd = PixelSearch(188, 188, 245, 245, 0xE4D008) ; Looks for goldwww.'  & @CRLF) ;### Trace Console
   $CoOrd = PixelSearch(188, 188, 245, 245, 0xE4D008) ; Looks for goldwww.
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(120) :    	  If Not @error Then         ;If it exists then'  & @CRLF) ;### Trace Console
	  If Not @error Then         ;If it exists then
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(122) :    		 ControlClick("Dransik Classic", "", "", "right", 1, $CoOrd[0], $CoOrd[1])         ;Clicks the first instance of that colour'  & @CRLF) ;### Trace Console
		 ControlClick("Dransik Classic", "", "", "right", 1, $CoOrd[0], $CoOrd[1])         ;Clicks the first instance of that colour
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(124) :    	  Else'  & @CRLF) ;### Trace Console
	  Else
		 ;ConsoleWrite ("no go gringo" &@crlf)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(127) :    		 Sleep(50)'  & @CRLF) ;### Trace Console
		 Sleep(50)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(129) :    	  EndIf'  & @CRLF) ;### Trace Console
	  EndIf
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(131) :       $CaveGold = PixelSearch (188, 188, 245, 245, 0x7C611A) ;attempt for cave gold'  & @CRLF) ;### Trace Console
   $CaveGold = PixelSearch (188, 188, 245, 245, 0x7C611A) ;attempt for cave gold
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(133) :    	  If Not @error Then         ;If it exists then'  & @CRLF) ;### Trace Console
	  If Not @error Then         ;If it exists then
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(135) :    		 ControlClick("Dransik Classic", "", "", "right", 1, $CaveGold[0], $CaveGold[1])         ;Clicks the first instance of that colour'  & @CRLF) ;### Trace Console
		 ControlClick("Dransik Classic", "", "", "right", 1, $CaveGold[0], $CaveGold[1])         ;Clicks the first instance of that colour
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(137) :    	  Else'  & @CRLF) ;### Trace Console
	  Else
		 ;ConsoleWrite ("gringo gets nothing" &@crlf)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(140) :    	  Sleep(50)'  & @CRLF) ;### Trace Console
	  Sleep(50)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(142) :    	  EndIf'  & @CRLF) ;### Trace Console
	  EndIf
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(144) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(147) :    Func DoShit ()'  & @CRLF) ;### Trace Console
Func DoShit ()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(149) :       PixelSearch(430, 12, 430, 12, 0x00C800) ;health bar green check;'  & @CRLF) ;### Trace Console
   PixelSearch(430, 12, 430, 12, 0x00C800) ;health bar green check;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(151) :       If Not @error Then ;no heal needed as it sees green;'  & @CRLF) ;### Trace Console
   If Not @error Then ;no heal needed as it sees green;
	  ;ConsoleWrite ("this shit" & @crlf)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(154) :    	  GoldWhore()'  & @CRLF) ;### Trace Console
	  GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(156) :       Else'  & @CRLF) ;### Trace Console
   Else
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(158) :    	  ControlClick("Dransik Classic", "", "", "right", 1, $pickx, $picky) ; it saw no green and thinks you need healing'  & @CRLF) ;### Trace Console
	  ControlClick("Dransik Classic", "", "", "right", 1, $pickx, $picky) ; it saw no green and thinks you need healing
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(160) :    	  ConsoleWrite("I guess i should heal you you look pathetic" & @CRLF)'  & @CRLF) ;### Trace Console
	  ConsoleWrite("I guess i should heal you you look pathetic" & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(162) :    	  PotCoolDown()'  & @CRLF) ;### Trace Console
	  PotCoolDown()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(164) :       EndIf'  & @CRLF) ;### Trace Console
   EndIf
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(166) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(169) :    func ClickCures()'  & @CRLF) ;### Trace Console
func ClickCures()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(171) :    ConsoleWrite ("Nigga u got herpies" & @crlf) ;if there is;'  & @CRLF) ;### Trace Console
ConsoleWrite ("Nigga u got herpies" & @crlf) ;if there is;
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(173) :    ControlClick("Dransik Classic", "", "", "right", 1, $pickx1, $picky1)'  & @CRLF) ;### Trace Console
ControlClick("Dransik Classic", "", "", "right", 1, $pickx1, $picky1)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(175) :    PotCoolDown()'  & @CRLF) ;### Trace Console
PotCoolDown()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(177) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(180) :    Func PotCoolDown()'  & @CRLF) ;### Trace Console
Func PotCoolDown()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(182) :       Sleep(200)'  & @CRLF) ;### Trace Console
   Sleep(200)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(184) :       GoldWhore()'  & @CRLF) ;### Trace Console
   GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(186) :       Sleep(200)'  & @CRLF) ;### Trace Console
   Sleep(200)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(188) :       GoldWhore()'  & @CRLF) ;### Trace Console
   GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(190) :       Sleep(200)'  & @CRLF) ;### Trace Console
   Sleep(200)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(192) :       GoldWhore()'  & @CRLF) ;### Trace Console
   GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(194) :       Sleep(200)'  & @CRLF) ;### Trace Console
   Sleep(200)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(196) :       GoldWhore()'  & @CRLF) ;### Trace Console
   GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(198) :       Sleep(200)'  & @CRLF) ;### Trace Console
   Sleep(200)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(200) :       GoldWhore()'  & @CRLF) ;### Trace Console
   GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(202) :       Sleep(200)'  & @CRLF) ;### Trace Console
   Sleep(200)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(204) :       GoldWhore()'  & @CRLF) ;### Trace Console
   GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(206) :       Sleep(200)'  & @CRLF) ;### Trace Console
   Sleep(200)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(208) :       GoldWhore()'  & @CRLF) ;### Trace Console
   GoldWhore()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(210) :       Sleep(200)'  & @CRLF) ;### Trace Console
   Sleep(200)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(212) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(215) :    Func check()'  & @CRLF) ;### Trace Console
Func check()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(217) :       If $on = 1 Then'  & @CRLF) ;### Trace Console
   If $on = 1 Then
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(219) :    	  $on = 0'  & @CRLF) ;### Trace Console
	  $on = 0
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(221) :       Else'  & @CRLF) ;### Trace Console
   Else
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(223) :    	  $on = 1'  & @CRLF) ;### Trace Console
	  $on = 1
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(225) :       EndIf'  & @CRLF) ;### Trace Console
   EndIf
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(227) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(230) :    Func close()'  & @CRLF) ;### Trace Console
Func close()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(232) :       ConsoleWrite(@CRLF & "Closing Via Close Command" & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite(@CRLF & "Closing Via Close Command" & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(234) :       Exit'  & @CRLF) ;### Trace Console
   Exit
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(236) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(239) :    Func kill()'  & @CRLF) ;### Trace Console
Func kill()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(241) :       ProcessClose ("Vorlia Client.exe")'  & @CRLF) ;### Trace Console
   ProcessClose ("Vorlia Client.exe")
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(243) :       ConsoleWrite("tryed" & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("tryed" & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(245) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(248) :    Func mouse()'  & @CRLF) ;### Trace Console
Func mouse()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(250) :       $pickx = MouseGetPos(0)'  & @CRLF) ;### Trace Console
   $pickx = MouseGetPos(0)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(252) :       $picky = MouseGetPos(1)'  & @CRLF) ;### Trace Console
   $picky = MouseGetPos(1)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(254) :       ConsoleWrite("Pots now Set At Location:" & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("Pots now Set At Location:" & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(256) :       ConsoleWrite("X = " & $pickx & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("X = " & $pickx & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(258) :       ConsoleWrite("Y = " & $picky & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("Y = " & $picky & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(260) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(263) :    Func mouse1();this is for cures'  & @CRLF) ;### Trace Console
Func mouse1();this is for cures
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(265) :       $pickx1 = MouseGetPos(0)'  & @CRLF) ;### Trace Console
   $pickx1 = MouseGetPos(0)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(267) :       $picky1 = MouseGetPos(1)'  & @CRLF) ;### Trace Console
   $picky1 = MouseGetPos(1)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(269) :       ConsoleWrite("Cures are now Set At Location:" & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("Cures are now Set At Location:" & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(271) :       ConsoleWrite("X1 = " & $pickx1 & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("X1 = " & $pickx1 & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(273) :       ConsoleWrite("Y1 = " & $picky1 & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("Y1 = " & $picky1 & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(275) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(278) :    Func Extra()'  & @CRLF) ;### Trace Console
Func Extra()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(280) :       If $pickx2 = 0 Then'  & @CRLF) ;### Trace Console
   If $pickx2 = 0 Then
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(282) :    	  Mouse2()'  & @CRLF) ;### Trace Console
	  Mouse2()
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(284) :       Else'  & @CRLF) ;### Trace Console
   Else

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(287) :       ControlClick("Dransik Classic", "", "", "right", 1, $pickx2, $picky2)'  & @CRLF) ;### Trace Console
   ControlClick("Dransik Classic", "", "", "right", 1, $pickx2, $picky2)

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(290) :    EndIf'  & @CRLF) ;### Trace Console
EndIf

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(293) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc

ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(296) :    Func mouse2();extra as fuck'  & @CRLF) ;### Trace Console
Func mouse2();extra as fuck
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(298) :       $pickx2 = MouseGetPos(0)'  & @CRLF) ;### Trace Console
   $pickx2 = MouseGetPos(0)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(300) :       $picky2 = MouseGetPos(1)'  & @CRLF) ;### Trace Console
   $picky2 = MouseGetPos(1)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(302) :       ConsoleWrite("Cures are now Set At Location:" & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("Cures are now Set At Location:" & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(304) :       ConsoleWrite("X2 = " & $pickx2 & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("X2 = " & $pickx2 & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(306) :       ConsoleWrite("Y2 = " & $picky2 & @CRLF)'  & @CRLF) ;### Trace Console
   ConsoleWrite("Y2 = " & $picky2 & @CRLF)
ConsoleWrite('>Error code: ' & @error & @CRLF & @CRLF & '@@ Trace(308) :    EndFunc'  & @CRLF) ;### Trace Console
EndFunc