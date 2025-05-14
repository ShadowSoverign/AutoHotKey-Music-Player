FileSelectFile, file, 2, %A_MyDocuments%, Select Music File:
if Errorlevel
   msgbox ERROR!
   ExitApp

Gui, +LastFound +Resize
Gui,+AlwaysOnTop
Gui, Add, ActiveX, x0 y0 w500 h300 vWMP, WMPLayer.OCX
WMP.Url := file
Gui, Show, w500 h300 Center, Player GUI
SetTimer, Position, 1000
return

GuiClose:
   ExitApp

GuiSize:
   GuiControl, Move, WMP, w%A_GuiWidth% h%A_GuiHeight%
   return
  
Position:
   Gui, Show, NA, % WMP.CurrentMedia.name " - " Format(WMP.Controls.currentPosition) " / " Format(WMP.CurrentMedia.duration)
   return

Format(m1) {
   static units := "sec,min,hr"
   Loop Parse, units, csv
      RegExMatch(m1/60, "(.*)(\.\d*)", m), %A_LoopField% := Pad(Round(m2*60))
   return (hr? hr ":":"") min ":" sec
}
Pad(p) {
   return (p<10? "0":"") p
}