; WINDOWS HOTKEYS

#Requires AutoHotkey v2.0
#SingleInstance Force

; MARK: OS NAVIGATION

#Space:: SendInput "!{Space}"

#n:: {
    if WinExist("ahk_exe notepad++.exe") {
        WinActivate
        SendInput "^n"
    } else {
        Run "Notepad++"
        ; TODO Finish
        if not WinWaitActive("Notepad++") {
            MsgBox "Something went wrong: Notepad++ was not active when it should have been"
        } else {
            WinActivate
        }
    }
}

#!d:: {
    ; TODO Check if explorer already exists, if so open it there, otherwise do the below
    Run "explorer C:\Users\Tyler\Downloads"
}

QualifierWindowsTerminal := "ahk_exe WindowsTerminal.exe"

#t:: {
    if not WinExist(QualifierWindowsTerminal) {
        Run "wt"
        Sleep 300
        WinActivate(QualifierWindowsTerminal)
    } else {
        WinActivate
        SendInput "^+t"
    }
}

; MARK: PROGRAM SPECIFIC

; Terminal

#HotIf WinActive(QualifierWindowsTerminal)
^w:: SendInput "^+w"

; File Explorer

#HotIf WinActive("ahk_exe explorer.exe")
; Hotkey: F3
; Create a new folder by triggering the built-in keyboard shortcut
F3:: SendInput "^+{N}"