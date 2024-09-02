#Requires AutoHotkey v2.0
#SingleInstance Force
Persistent
SendMode "Input"

NewTabOrOpen(AhkClass, Delay := 500) {
    Qualifier := "ahk_class " . AhkClass
    if WinExist(Qualifier) {
        WinActivate
        Send "{Ctrl down}{n down}{Ctrl up}{n up}" 
    } else {
        Run AhkClass
        Sleep Delay
        WinActivate Qualifier
    }
}

#n::NewTabOrOpen("Notepad++") ; Win+N hotkey
#!n::NewTabOrOpen("Notepad", 750) ; Win+Alt+N hotkey

; TODO Put function keys to use!

#b::Run "ms-settings:bluetooth"
#!d::Run "explorer C:\Users\Tyler\Downloads"
#+e::MsgBox "Namespace for opening dual Windows Explorer windows", "Parallel Explorer shortcut" ; Parallel Explorer windows
#p::Run "explorer C:\Program Files\"

WinTermQualifier := "ahk_exe WindowsTerminal.exe"

#t:: {
    if not WinExist(WinTermQualifier) {
        Run "wt"
        Sleep 300
        WinActivate(WinTermQualifier)
    } else {
        WinActivate
        Send "{Ctrl down}{Shift down}{t down}{Ctrl up}{Shift up}{t up}" 
    }
}

#HotIf WinActive(WinTermQualifier)
^w:: {
    Send "{Ctrl down}{Shift down}{w down}{Ctrl up}{Shift up}{w up}"
}
; ^,:: {
;     SendInput "{F12 down}{F12 up}"
; }
; Couldn't figure out how to create a hotkey with comma