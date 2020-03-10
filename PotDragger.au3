#include <Misc.au3>
;Potdragger Vorila Dransik
;Kyle GusToughSon Bishop
;Discord : GusToughSon#7073
;GusToughSon@Icloud.com



;~ HotKeySet ("{numpad1}", "DownLeft")
;~ HotKeySet ("{numpad2}", "Down")
;~ HotKeySet ("{numpad3}", "DownRight")
;~ HotKeySet ("{numpad4}", "Left")
;~ HotKeySet ("{numpad6}", "Right")
;~ HotKeySet ("{numpad7}", "UpLeft")
;~ HotKeySet ("{numpad8}", "Up")
;~ HotKeySet ("{numpad9}", "UpRight")

Global $clicklapwait = 25, $drag = 0, $DragWait = 5



	;60 Numeric keypad 0 key
   ; 61 Numeric keypad 1 key
   ; 62 Numeric keypad 2 key
   ; 63 Numeric keypad 3 key
   ; 64 Numeric keypad 4 key
   ; 65 Numeric keypad 5 key
   ; 66 Numeric keypad 6 key
    ;67 Numeric keypad 7 key
   ; 68 Numeric keypad 8 key
   ; 69 Numeric keypad 9 key



Func PotMover()
	If _IsPressed("60") Then
		Extra() ;Clickhack at mouse idea;
	ElseIf _IsPressed("61") Then
		DwnLeft()

	ElseIf _IsPressed("62") Then
		Down()

	ElseIf _IsPressed("63") Then
		DownRight()

	ElseIf _IsPressed("64") Then
		Left()


	ElseIf _IsPressed("66") Then
		Right()

	ElseIf _IsPressed("67") Then
		UpLeft()

	ElseIf _IsPressed("68") Then
		Up()

	ElseIf _IsPressed("69") Then
		UpRight()
	EndIf
EndFunc



Func DwnLeft()
	MouseClickDrag ("Left", 231, 199, 199, 231, $drag)
	sleep ($DragWait)
EndFunc

Func Down()
	MouseClickDrag ("Left", 215, 199, 215, 231, $drag)
	sleep ($DragWait)
	ControlSend

	sleep ($DragWait)
EndFunc

Func UpLeft()
	MouseClickDrag ("Left", 231, 231, 199, 199, $drag)
	sleep ($DragWait)
EndFunc

Func Left()
	MouseClickDrag ("Left", 231, 215, 199, 215, $drag)
	sleep ($DragWait)
EndFunc

Func Right()
	MouseClickDrag ("Left", 199, 215, 231, 215, $drag)
	sleep ($DragWait)
EndFunc

Func DownRight()
	MouseClickDrag ("Left", 199, 199, 231, 231, $drag)
	sleep ($DragWait)
EndFunc

Func Up()
	MouseClickDrag ("Left", 215, 231, 215, 199, $drag)
	sleep ($DragWait)
EndFunc

Func UpRight()
	MouseClickDrag ("Left", 199, 231,231, 199,$drag)
	sleep ($DragWait)
EndFunc