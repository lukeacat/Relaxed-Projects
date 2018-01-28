
; vmRelaxed
FileCreateDir, C:\Users\Public\weMusic
Sleep 1000
FileAppend,
(
Please place your songs in C:\Users\Public\weMusic.
), C:\Users\Public\weMusic\README.txt
Sleep 400
Run, C:\Users\Public\weMusic\README.txt
Sleep 400
Run, C:\Users\Public\weMusic\README.txt
Sleep 400
FileDelete, Setup.ahk
Sleep 40
MsgBox Setup Finished.
Sleep 200
ExitApp
