#Include <FindText>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global LoopCount := 0
global isRuning := 1
;默认自动停止时间：2.5小时 + 随机延时（0-30分钟）
global StopLimitTime := 9000000

SetTitleMatchMode, 2
SetControlDelay -1

;定时停止运行
AutoStopTimer()

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
RandomSleep(150)

;相机视角拉进到最小(35次)
ControlClick, ,ahk_id %runeWin%, ,WheelUp, 35
RandomSleep(150)

InitPicLab()
LookNorth()
MouseClickDrag, M, 690, 480, 690, 750
;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

DropAll()
While, True{
  RandomSleep(1000,1000)
  Woodcutting()
}

InitPicLab(){
  FindText().PicLib("|<WoodArea>0xFFFF00@1.00$69.000000000007zzzzzzzzzzyzzzzzzzzzzzrzzzzzzzzzzyzzzzzzzzzzzrzzzzzzzzzzyzzzzzzzzzzzrzzzzzzzzzzyzzzzzzzzzzzrzzzzzzzzzzy0000000001zk000000000Dy0000000001zk000000000Dy0000000001zk000000000Dy0000000001zk000000000Dy0000000001zk000000000Dy0000000001zk000000000DyU",1)
  FindText().PicLib("|<InventoryEmptyGrid>0x3E3529@1.00$35.zzzzzzzzzzzzzzzzzzzzzzszbzzzly7zzzjwDzzzTszzzzzvzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyTzzzzyzzzzzxzzzzzszzzzzUTzzzzUzzzzz1zzzzzXzzzzz7znzzyDzbzzsTzzzzkzzzzzVzzzzzbzzzzzzzzzzzzzzk",1)
  FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)
  FindText().PicLib("|<IronOre>*37$32.3y7zUVwHzk8k5z41A1TV0b0LwEFk5zY4w1TymC0Lzn205zz0U1Dzs80Hzy207DzUUD3js8AUXz2AE8zUQ4270010U000E40004200010U000Dk000000000000000000000008",1)
}
;LookNorth
LookNorth()
{
  if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("lookNorth")))
  {
    a := X + 40
    b := Y - 20
    GetRandomPos(a, b, 12, 12)
    MouseClick, L, a, b, 1
    RandomSleep(150)
  }
  Else{
    OutputDebug, "初始化失败，找不到LookNorth按钮"
  }
}

;按下ESC
EscKeyFunc(){
  ;关闭Bank
  SendInput {Esc Down}
  Sleep 50
  SendInput {Esc UP}
  RandomSleep(1000)
}

Woodcutting(){
  If (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("InventoryEmptyGrid"))){
    RandomSleep(500,100)
    if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("WoodArea"))){
      a := X - 80
      b := Y + 80
      GetRandomPos(a, b, 30, 30)
      MouseClick, L, a, b, 1
    }
  }
  Else{
    RandomSleep(500,500)
    DropAll()
  }
}

DropAll(){
  if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("IronOre"))) {
    SendInput {Shift Down}
    RandomSleep(50)
    For k, v in ok
    {
      X := ok[k].x
      Y := ok[k].y
      GetRandomPos(X, Y, 6, 6)
      MouseClick, L, X, Y, 1
      RandomSleep(200, 100)
    }
    SendInput {Shift Up}
  }
  Else{
    ;OutputDebug, "找不到 Cake "
  }
}
;get random postion in item image. offsetX: 坐标x距离边距的最大垂直距离
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
;;左键ControlClick 1次
; LeftControlClick(x, y)
; {
;   y += WinTitleOffset
;   ControlClick, x%x% y%y%, %runeWin%, , L, 1, "NA"
;   return !ErrorLevel
; }
;随机时间的延迟
RandomSleep(time, offset := 1500){
  Random, randX, 500, offset
  time += randX
  Sleep, time
  Return
}

;定时器，自动停止运行
AutoStopTimer(){
  Random, randomTime, 0, 1200000
  StopLimitTime += randomTime
  SetTimer, AutoStop, %StopLimitTime%
  OutputDebug, "! Auto Stop set Timer： " %StopLimitTime% " !"
}
AutoStop(){
  isRuning := 0
  FormatTime, hhmmss, T8, hh:mm:ss
  OutputDebug, "! Auto Stop , Time： " %hhmmss% " !"
  ExitApp
}
ExitApp