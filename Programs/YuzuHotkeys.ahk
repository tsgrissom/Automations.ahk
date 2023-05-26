#SingleInstance Force
SendMode "Input"

#HotIf WinExist("ahk_exe yuzu.exe")
^f:: { ; This script gets to the Controls section of Yuzu's settings, need to figure out how to send gamepad buttons
    WinActivate
    Sleep 10
    Send "{Alt}" ; Select menu bar
    Sleep 10
    Send "{Tab}" ; Move to Emulation button
    Sleep 10
    Send "{Enter}" ; Open active menu bar button
    Sleep 30
    Loop 3 {
        Send "{Tab}"
        Sleep 30
    }
    Send "{Enter}"
    Sleep 30
    Loop 6 {
        Send "{Tab}"
    }
    Sleep 30
    Loop 7 {
        Send "{Down}"
    }
}