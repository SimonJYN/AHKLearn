#Include <FindText>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global BankerPositionX := 0
global BankerPositionY := 0
;get random postion  in  item image. offsetX: 坐标x距离边距的最大垂直距离
GetRandomPos(ByRef x, ByRef y, offsetX := 0, offsetY := 0, pivotX := 0.5, pivotY := 0.5, showTip := false)
{
  randX := 0.0
  randY := 0.0

  If (pivotX = 0.5) ;Center
  {
    x -= offsetX
    Random, randX, 0.0, offsetX * 2
    x := x + randX
  }
  Else if(pivotX = 0){ ;Left
    Random, randX, 0.0, offsetX
    x := x + randX
  }
  Else{ ;1 Right
    x -= offsetX
    Random, randX, 0.0, offsetX
    x := x + randX
  }

  If (pivotY = 0.5) ;Center
  {
    y -= offsetY
    Random, randY, 0.0, offsetY * 2
    y := y + randY
  }
  Else if(pivotY = 0){ ;Top
    Random, randY, 0.0, offsetY
    y := y + randY
  }
  Else{ ;1 Bottom
    y -= offsetY
    Random, randY, 0.0, offsetY
    y := y + randY
  }
  if(showTip)
    FindText().MouseTip(x, y)
  Return
}
MyControlClick(x, y, winTitle:="", winText:="", whichButton:="", wlickCount:="", options:="", excludeTitle:="", excludeText:="")
{
  y += WinTitleOffset
  ControlClick, x%x% y%y%, %runeWin%, %winText%, %whichButton%, %clickCount%, %options%, %excludeTitle%, %excludeText%
  return !ErrorLevel
}

SetTitleMatchMode, 2
SetControlDelay -1

runeWin := WinExist("ahk_exe RuneLite.exe")

if(runeWin == 0)
{
  MsgBox "没有找到RuneLite窗口"
  ExitApp
}
;FindText绑定查询窗口
FindText().BindWindow(WinExist("ahk_exe RuneLite.exe"))
;resize window
WinRestore, ahk_id %runeWin%
WinMove, ahk_id %runeWin%, , 0, 0, 1280, 960
Sleep, 150

;相机视角拉进到最小(35次)
ControlClick, ,ahk_id %runeWin%, ,WheelUp, 35
Sleep, 150

;LookNorth
Text:="|<>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw"
if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, Text))
{
  a := X + 40
  b := Y - 20
  GetRandomPos(a, b, 12, 12)
  MyControlClick(a, b, ahk_id %runeWin%,,,, "NA")
}
Else{
  MsgBox, "初始化失败，找不到LookNorth按钮"
  ExitApp
}
;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

;找Banker
Text:="|<>0xFF00FA@1.00$47.00000000000000000000000000000000000000000000000000000000D0040000F0080000W00E0001sMsclE02999WH004FmH74008YYZ8800S799CE0000000000000000000000000000000000000000000000000000000000000000000000000000001"
if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, Text))
{
  a := X + 40
  b := Y - 20
  GetRandomPos(a, b, 100, 250, 0.5, 0, true)
  MouseClick, Right, a, b, 1, 1
  ;MyControlClick(a, b, ahk_id %runeWin%,, "R",, "NA")
}
Else{
  MsgBox, "找不到Banker"
  ExitApp
}
ExitApp