#SingleInstance Force
SendMode "Input"

^!l:: {
    WinActivate "Program Manager"
    Send "#b"
    Loop 4 {
        Send "{Right}"
    }
}