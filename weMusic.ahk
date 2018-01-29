#NoTrayIcon
#NoEnv
#SingleInstance
#Warn
SoundBeep, 800, 1000
Gui, New
Gui, Add, Text, CPurple gPF, Choose the file you want to listen to.
Gui, Add, Text, cRed gCancel, Cancel?
Gui, Add, Text, CPurple gVOLplus, Volume Higher
Gui, Add, Text, CRed gVOLminus,  Volume Lower
Gui, Add, Text, CPurple gGUI, Destroy this gui.
Gui, Add, Text, CRed gPause,  Stop
Gui, Add, Text, CPurple gDOOP, Run this to test if you have ran the Setup.ahk (RUN IT OR IT WONT WORK)
Gui, Add, Text, CPurple, CopyRighted by vmRelaxed
Gui, Add, Text, CRed, Run setup.ahk For this script to work.. (GO MY GITHUB)
Gui, Add, Text, CPurple gGithub, Github (Click This)


Gui, Show, AutoSize, weMusic
return

=::
Send {Volume_Up} {Volume_Up} {Volume_Up} {Volume_Up} {Volume_Up} {Volume_Up} {Volume_Up} {Volume_Up} {Volume_Up}
return

-::
Send {Volume_Down} {Volume_Down} {Volume_Down} {Volume_Down} {Volume_Down} {Volume_Down} {Volume_Down} {Volume_Down} {Volume_Down}
return
Github::
Run, https://vmrelaxed.github.io
return

PF:
FileSelectFile, Song, 3,C:\Users\Public\weMusic, Choose your song!, Audio (*.wav; *.mp2; *.mp3)
if Song =
{
    MsgBox, Please select a song
    return
}
else
{
SoundPlay, %Song%
}
Return
{}


DOOP:
Run, C:\Users\Public\weMusic
return
VOLplus:
Send {Volume_Up} {Volume_Up}
return

VOLminus:
Send {Volume_Down} {Volume_Down}
return

Gui:
Gui,Destroy

Pause:
SoundPlay, Nonexistant.avi
return

Cancel:
ExitApp
Gui, Destroy

GuiClose:
Gui, Destroy
ExitApp
