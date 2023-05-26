#SingleInstance Force
Persistent
SendMode "Input"

#HotIf WinActive("ahk_exe notepad++.exe")

PreviousTab() {
    Send "{Ctrl down}{PgUp down}{Ctrl up}{PgUp up}"
}

NextTab() {
    Send "{Ctrl down}{PgDn down}{Ctrl up}{PgDn up}"
}

!q::PreviousTab()
!e::NextTab()

!WheelUp::PreviousTab()
!WheelDown::NextTab()