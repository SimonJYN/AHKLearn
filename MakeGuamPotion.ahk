#Include <FindText>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global LoopCount := 0
global isRuning := 1
;默认自动停止时间：1.5小时 + 随机延时（0-30分钟）
global StopLimitTime := 5400000

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

OpenBank()
While, True{
  TakeOutItems()
  MakePieShell()
  OpenBank()
  DepositInventory()
}

InitPicLab(){
  FindText().PicLib("|<VialOfWater>*96$21.z1zzwDzzVzzwDzzVzzsDzy1zzk7zw0zzU7zs0zz03zk0Ty03zU0Tw03zU0Dy01zk0DzU3zzUzzzzzU",1)
  FindText().PicLib("|<GuamLeaf>*41$30.03zzy03zzy0Tzzy1zzzy3zzzw7zzzwDzzzsTzzzsDzzzs3zzzk0zzzk1zzzk3zzzU7zzzUDzzyUDzzfkTzzzUzzzw0Tzz0000000U",1)
  FindText().PicLib("|<depositInventory>*58$33.U0000M000000000000000000000001zs000k0U00C02001k6800T1xU07wCA01zkVU0Dr0A01zN3U0Dtww03DbxUFXy3g3EzkNUIDy0A23zk3UENy1w277kz0EESDk3z1zw0Dw7y00000000000000000000000400003k0000o",1)
  FindText().PicLib("|<banker>0xFF00FA@1.00$47.00000000000000000000000000000000000000000000000000000000D0040000F0080000W00E0001sMsclE02999WH004FmH74008YYZ8800S799CE0000000000000000000000000000000000000000000000000000000000000000000000000000001",1)
  FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)

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
;找Banker
OpenBank()
{
  if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("banker")))
  {
    ;再减去文本之下的空白区域 30px
    Y += 50
    GetRandomPos(X, Y, 40, 100, 0.5, 0)
    MouseClick, L, X, Y, 1
    RandomSleep(850,1200)
  }
  Else{
    OutputDebug, "找不到Banker"
  }
}

;找 pie dish 和 pastry dough
TakeOutItems()
{
  if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("VialOfWater"))) {
    ; 找到 "piedishB" 图像后要进行的操作
    GetRandomPos(X, Y, 8, 8)
    MouseClick, L, X, Y, 1
    RandomSleep(500)
  }
  Else{
    OutputDebug, "找不到 VialOfWater "
  }

  if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("GuamLeaf"), 0)) { ;0 使用上一次搜索"piedishB"的截图来调用 FindText
    ; 找到 "pastryDough" 图像后要进行的操作
    GetRandomPos(X, Y, 8, 8)
    MouseClick, L, X, Y, 1
    RandomSleep(500)
  }
  Else{
    OutputDebug, "找不到 GuamLeaf"
  }

  ;关闭Bank
  EscKeyFunc()
}

;合成pie shell
MakePieShell()
{
  RandomSleep(150)

  if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("VialOfWater"))) {
    ; 找到 "pieDishI" 图像后要进行的操作
    Random, randIdx, 1, ok.Length()
    X := ok[randIdx].x
    Y := ok[randIdx].y
    GetRandomPos(X, Y, 8, 8)
    MouseClick, L, X, Y, 1
    RandomSleep(500)
  }
  Else{
    OutputDebug, "找不到 VialOfWater "
  }

  if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("GuamLeaf"), 0)) { ;0 使用上一次搜索"pieDishI"的截图来调用 FindText
    ; 找到 "pastryDough" 图像后要进行的操作
    Random, randIdx, 1, ok.Length()
    X := ok[randIdx].x
    Y := ok[randIdx].y
    GetRandomPos(X, Y, 8, 8)
    MouseClick, L, X, Y, 1
    RandomSleep(1500)
  }
  Else{
    OutputDebug, "找不到 GuamLeaf"
  }
  SendInput {Space Down}
  Sleep 50
  SendInput {Space UP}
  RandomSleep(10000)
}

;全部放回Bank
DepositInventory(){
  if (FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("depositInventory")))
  {
    GetRandomPos(X, Y, 15, 15, 0.5, 0)
    MouseClick, L, X, Y, 1
    RandomSleep(150)

    ;检查是否还有库存，没有则退出循环
    if ((ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("VialOfWater")) == 0)){
      OutputDebug, "库存不足：VialOfWater"
      ExitApp
    }
    if((ok2 := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("GuamLeaf")) == 0)){
      OutputDebug, "库存不足：GuamLeaf"
      ExitApp
    }
    LoopCount ++
    OutputDebug, "LoopCount: " %LoopCount%
  }
  Else{
    OutputDebug, "找不到Deposit Inventory"
    EscKeyFunc()
    RandomSleep(500)
    OpenBank()
    RandomSleep(500)
    DepositInventory()
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