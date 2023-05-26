#SingleInstance Force
Persistent
SendMode "Input"

PressArrowKey(Direction, HoldShift := false) {
    Inp := (HoldShift ? "{Shift down}{" : "{") . Direction . (HoldShift ? "}{Shift up}" : "}")
    Send Inp
}

; A few missing keys on 60% keyboards
^q::Send "~"
!q::Send "``"

; Alt-arrow keys with WASD
!w::PressArrowKey("Up")
!a::PressArrowKey("Left")
!s::PressArrowKey("Down")
!d::PressArrowKey("Right")

; Allows shift alt-arrow keys work
+!w::PressArrowKey("Up", true)
+!a::PressArrowKey("Left", true)
+!s::PressArrowKey("Down", true)
+!d::PressArrowKey("Right", true)