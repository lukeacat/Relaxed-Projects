;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Minecraft Shortcut GUI v1.1 ;;
;; Original Script Created By  ;; 
;;  CannonFoddr 12th May 2016  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#IfWinActive, Minecraft 1.10

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Functions that makes it easier for repeatative commands in one go
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

toChat(text)
{
Sleep 300
SendInput t
Sleep 300
SendInput %text%
SendInput {enter}
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This one return you to Minecraft & presses 'esc' to run Chat/command

BackToGame(text) 
{
IfWinExist, Minecraft 1.10 
  WinActivate
SendInput {Esc}
toChatLong(text)
GUI, Destroy
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; for some reason long text (such as /gamemode 0) 
; doesnt work well with 'SendInput'

toChatLong(text)
{
Sleep 300
SendInput t
Sleep 300
Send %text% 
SendInput {enter}
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; My test Scripts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Normal Key Macros
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PgUp::toChat("/ascend")
PgDn::toChat("/desc")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CTRL + <Key> Macro's  ^
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^Numpad0::toChatLong(" is currently &6busy&r with another Player - &2Please be 

Patient&r")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ALT + <Key> Macro's  !
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  CTRL + ALT + <key>
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^!p::
toChat("/prism l t:2m r:1000 a:kill,pickup")


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Numpad Macro's
;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Experimental GUI
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; use [CTRL] + 'Y' to open; change if key alread used
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;
;; Actual Windows GUI
;;;;;;;;;;;;;;;;;;;;;

^y::
Gui, Show, w230 h215, Shortcuts
Gui, Add, Tab3,, Game Mode|Homes|Plots|Rank|Prism 
Gui, Add, Button, x22 y34 w90 h20 gMode0, Survival
Gui, Add, Button, w90 h20 gMode1, Creative
Gui, Add, Button, w90 h20 gMode2, Adventure
Gui, Add, Button, w90 h20 gMode3, Spectator
Gui, Add, Button, x114 y34 w90 h20 gMode6, _
Gui, Tab, 2
Gui, Add, Button, x22 y34 w90 h20 gHome1, Village
Gui, Add, Button, w90 h20 gHome2, XPFarm
Gui, Add, Button, w90 h20 gHome3, Guardian
Gui, Add, Button, w90 h20 gHome4, EndHouse
Gui, Add, Button, w90 h20 gHome5, EndstoneFarm
Gui, Add, Button, x114 y34 w90 h20 gHome6, NetherFortress
Gui, Add, Button, w90 h20 gHome7, Treefarm
Gui, Add, Button, w90 h20 gHome8, Witch
Gui, Add, Button, w90 h20 gHome9, Albatraz
Gui, Add, Button, w90 h20 gHome0, Seasonal
Gui, Tab, 3
Gui, Add, Button, x22 y34 w90 h20 gPlot1, [Drop Party]
Gui, Add, Button, w90 h20 gPlot2, Plot2
Gui, Add, Button, w90 h20 gPlot3, [AFK FishFarm]
Gui, Add, Button, w90 h20 gPlot4, Plot4
Gui, Add, Button, w90 h20 gPlot5, Plot5
Gui, Add, Button, x114 y34 w90 h20 gPlot6, Plot6
Gui, Add, Button, w90 h20 gPlot7, [Storage]
Gui, Add, Button, w90 h20 gPlot8, [Heads]
Gui, Add, Button, w90 h20 gPlot9, Plot9
Gui, Tab, 4
Gui, Add, Button, x22 y34 w90 h20 gRank1, Chest
Gui, Add, Button, w90 h20 gRank2, EnderChest
Gui, Add, Button, w90 h20 gRank3, Craft Table
Gui, Add, Button, w90 h20 gRank4, _ 
Gui, Add, Button, w90 h20 gRank5, Repair [24hr]
Gui, Add, Button, x114 y34 w90 h20 gRank6, _
Gui, Add, Button, w90 h20 gRank7, _
Gui, Add, Button, w90 h20 gRank8, _
Gui, Add, Button, w90 h20 gRank9, Trails
Gui, Add, Button, w90 h20 gRank0, Emote
Gui, Tab, 5
Gui, Add, Button, w90 h20 gPrism1, _
Gui, Tab  ; i.e. subsequently-added controls will not belong to the tab control.
return


;;;;;;;;;;;;;;;;;;;
;; Tab 1 - Gamemode
;;;;;;;;;;;;;;;;;;;

Mode0:
BackToGame("/gamemode 0")
return

Mode1:
BackToGame("/gamemode 1")
return

Mode2:
BackToGame("/gamemode 2")
return

Mode3:
BackToGame("/gamemode 3")
return

Mode6:
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tab 2: Teleport to 'Homes'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Home1:
BackToGame("/Home home")
return

Home2:
BackToGame("/Home XPFarm")
return

Home3:
BackToGame("/Home Guardian")
return

Home4:
BackToGame("/Home Endhouse")
return

Home5:
BackToGame("/Home EndStoneFarm")
return

Home6:
BackToGame("/Home NetherFortress")
return

Home7:
BackToGame("/Home TreeFarm")
return

Home8:
BackToGame("/Home Witch")
return

Home9:
BackToGame("/Home Albatraz")
return

Home0:
BackToGame("/Home Seasonal")
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tab 3 : Teleport to 'Plots'
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Plot1:
BackToGame("/Plot Home 1")
return

Plot2:
BackToGame("/Plot Home 2")
return

Plot3:
BackToGame("/Plot Home 3")
return

Plot4:
BackToGame("/Plot Home 4")
return

Plot5:
BackToGame("/Plot Home 5")
return

Plot6:
BackToGame("/Plot Home 6")
return

Plot7:
BackToGame("/Plot Home 7")
return

Plot8:
BackToGame("/Plot Home 8")
return

Plot9:
BackToGame("/Plot Home 9")
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tab 4 : Ranks Specific Commands
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Rank1:
BackToGame("/Chest")
return

Rank2:
BackToGame("/eChest")
return

Rank3:
BackToGame("/Craft")
return

Rank5:
BackToGame("/repair")
return

Rank4:
Rank6:
Rank7:
Rank8:
return

Rank9:
BackToGame("/trails")
return

Rank0:
BackToGame("/emote")
return

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tab 5 - Prism Shortcuts
;;;;;;;;;;;;;;;;;;;;;;;;;;

Prism1:
; Left blank as this tab I'm planning to have text boxes for entering
; the required parameters needed for Prism Searches
return


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Exit GUI & AutoHotKkey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

GuiClose:
ExitApp

return
