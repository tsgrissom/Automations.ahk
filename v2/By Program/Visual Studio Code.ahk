#Requires AutoHotkey v2.0
#SingleInstance Force
SendMode "Input"

#HotIf WinActive("ahk_exe Code.exe")

^s:: { ; If file saved, cancel existing Code Runner before running it again
    Send "{Ctrl down}{s down}{Ctrl up}{s up}"
    Sleep 30
    Send "{Ctrl down}{Alt down}{m down}{Ctrl up}{Alt up}{m up}"
    Sleep 30
    Send "{Ctrl down}{Alt down}{n down}{Ctrl up}{Alt up}{n up}"
}