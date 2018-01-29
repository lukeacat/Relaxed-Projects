#NoTrayIcon
#SingleInstance
SetBatchLines, -1 ; Makes it fast as f**k..
Menu, Choose, Add, Play, Play
Menu, Main, Add, Choose, :Choose
Menu, tray, Icon , 02o.ico, 1, 1
gui, destroy
gui, Show, AutoSize
Gui, 1:New, +Resize
Gui, Menu, Main
Gui, Margin, 0, 0
Gui, Add, ActiveX, vWMP w240 h45, WMPlayer.OCX
Gui, Show, AutoSize

WMP.EnableContextMenu := 0            ; No built in context menu, this lets you have one instead.
WMP.UIMode := "mini"                ; Full UI, this is the default.
WMP.settings.Volume := 75            ; Set the volume. Cannot be a variable. Don't ask why.
WMP.StretchToFit := True            ; This stretches the video to fit the control no matter the size. It wil not distort the width or height.
WMP.settings.autoStart := True        ; Autostart apon doing `WMP.Url := File`
WMP.settings.setMode("loop", True)    ; Sets the player to play media in a loop.
OnExit, Exit
Return

GuiSize:
    GuiControl, Move, WMP, % "w" A_GuiWidth
Return

GuiClose:
Exit:
    ExitApp

Play:
    FileSelectFile, Choose, 3,, Open a Music File, Music (*.mp3;*.m3u;*.)
    If (!Choose)
        Return
    WMP.Url := Choose
Return
