#Include <FindText>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global LoopCount := 0
global isRuning := 1
;默认自动停止时间：2.5小时 + 随机延时（0-30分钟）
global StopLimitTime := 9000000

global StealCount := 0

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
;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

DropAll()
While, True{
  RandomSleep(2000)
  Steal()
}

InitPicLab(){
  FindText().PicLib("|<Stall>*176$55.00007zzzzU000Dzzzzk000Tzzzzs000Tzzzzw000Dzzzzy0003zzzzz0000zzzzzU000Dzzzzk0003zzzzs0000zzzzw0Dzzzzzzy07zzzzzzz03zzzzzzzU1zzzzzzzk0Tzzzzzzs07zzzzzzw00zzzzzzz",1)
  FindText().PicLib("|<pieDishI>*63$35.zzzzzzzzzzzzzzzzzzzs0Tzzz003zzs003zzU003zy0001zw0003zk0007zU0007z0000Ty0000zw0001zw0003zs000Dzk000Tzk001zzk003zzk00zzzs07zzzzzzzzzzzzzzzzzzzzzzzzz",1)
  FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)
  FindText().PicLib("|<Cake>*126$30.s00Tzk00TzU00DzU00DzU007zU007zU007zc003zw80Dzzw0TzjyATzrzzzzvzzzzwTzzzztzDzzzzzzzzzzzzzzzzzzzzzzzzzzU",1)
  FindText().PicLib("|<ChocolateSlice>*28$25.TzV0Tw0EDk0460022000V0008U004M001A000I00060003U001k000s000Q000C00050002U0018000X000EQ0081U040Dzx",1)
  FindText().PicLib("|<Bread>*68$27.zzkDzzw0zzz07zzk0zzt03zw307z031zm07Dw20BzU63zn06Tw70TzUC3zw0STzU1zzw07zzU1zzy0Dzzk3zzz0TzzwDzzzzzzzU",1)
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

Steal(){
  If (StealCount < 26){
    if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("Stall"))){
      X := 100
      Y := 330
      GetRandomPos(X, Y, 15, 15)
      MouseClick, L, X, Y, 1
      RandomSleep(3500)
      StealCount ++
      Steal()
    }Else{
      RandomSleep(50,50)
      Steal()
    }
  }
  Else{
    DropAll()
  }
}

DropAll(){
  StealCount := 0
  if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("Cake"))) {
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

  If (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("ChocolateSlice"))){
    SendInput {Shift Down}
    RandomSleep(50)
    For k, v in ok
    {
      X := ok[k].x
      Y := ok[k].y
      GetRandomPos(X, Y, 6, 6)
      MouseClick, L, X, Y, 1
      RandomSleep(200)
    }
    SendInput {Shift Up}
  }
  Else{
    ;OutputDebug, "找不到 ChocolateSlice "
  }

  If (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("Bread"))){
    SendInput {Shift Down}
    RandomSleep(50)
    For k, v in ok
    {
      X := ok[k].x
      Y := ok[k].y
      GetRandomPos(X, Y, 6, 6)
      MouseClick, L, X, Y, 1
      RandomSleep(200)
    }
    SendInput {Shift Up}
  }
  Else{
    ;OutputDebug, "找不到 Bread "
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