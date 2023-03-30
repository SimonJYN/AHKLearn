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
;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

OpenBank()
While, True{
    TakeOutItems()
    MakePastryDough()
    OpenBank()
    DepositInventory()
}

InitPicLab(){
    FindText().PicLib("|<piedishB>*68$37.zU000Tzk000Dzk0007zs0001zw0001zy0000zz0000Tzk000Dzs000Dzw0007zz0007zzk003zzw00DzzzU0TzzzzzzzzzzzzzzzzzzzzzzzzzzU",1)
    FindText().PicLib("|<pastryDough>*100$31.zzzzzzzzzzzzzzzzzzzzzzzzzzzw3zzzw0zzzy0Tzzy07zzy03zzz01zzzk0zzzy0zzzzkTzzzzzzzzzzzzzzzzzzzzzzU",1)
    FindText().PicLib("|<closeBank>*41$14.00000kAC71nUDk1s0A07U3w1nUsQA300000U",1)
    FindText().PicLib("|<pieDishI>*63$35.zzzzzzzzzzzzzzzzzzzs0Tzzz003zzs003zzU003zy0001zw0003zk0007zU0007z0000Ty0000zw0001zw0003zs000Dzk000Tzk001zzk003zzk00zzzs07zzzzzzzzzzzzzzzzzzzzzzzzz",1)
    FindText().PicLib("|<depositInventory>*58$33.U0000M000000000000000000000001zs000k0U00C02001k6800T1xU07wCA01zkVU0Dr0A01zN3U0Dtww03DbxUFXy3g3EzkNUIDy0A23zk3UENy1w277kz0EESDk3z1zw0Dw7y00000000000000000000000400003k0000o",1)
    FindText().PicLib("|<banker>0xFF00FA@1.00$47.00000000000000000000000000000000000000000000000000000000D0040000F0080000W00E0001sMsclE02999WH004FmH74008YYZ8800S799CE0000000000000000000000000000000000000000000000000000000000000000000000000000001",1)
    FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)

    FindText().PicLib("|<potOfFlour>*71$27.wy1zz00Tzs03zz00Tzk03zy00Dzk01zw00DzU00zw007zU00zw007zU00zw00Dzk01zy00Dzk01zz00Dzy01zzs0TzzkDzzznzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)
    FindText().PicLib("|<jugOfWater>*80$25.ywDzzbzzzUbzzk61zk00zk07Dk03ns00ks00Fw00Dy003z003zU01zs00zy00zz00Tzk0Tzw0Dzz0Tzzkzzzzzzzzzzzzzzzzzzzzzzzk",1)

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

;找 jugOfWater 和 pastry dough
TakeOutItems()
{
    if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("jugOfWater"))) {
        ; 找到 "jugOfWater" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 jugOfWater "
    }

    if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("potOfFlour"), 0)) { ;0 使用上一次搜索"piedishB"的截图来调用 FindText
        ; 找到 "potOfFlour" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 potOfFlour"
    }

    ;关闭Bank
    EscKeyFunc()
}

;合成pastry dough
MakePastryDough()
{
    RandomSleep(150)

    if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("jugOfWater"))) {
        ; 找到 "jugOfWater" 图像后要进行的操作
        Random, randIdx, 1, ok.Length()
        X := ok[randIdx].x
        Y := ok[randIdx].y
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 jugOfWater"
    }

    if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("potOfFlour"), 0)) { ;0 使用上一次搜索"pieDishI"的截图来调用 FindText
        ; 找到 "potOfFlour" 图像后要进行的操作
        Random, randIdx, 1, ok.Length()
        X := ok[randIdx].x
        Y := ok[randIdx].y
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(1500)
    }
    Else{
        OutputDebug, "找不到 potOfFlour"
    }
    SendInput {Numpad2 Down}
    Sleep 50
    SendInput {Numpad2 UP}
    RandomSleep(14000)
}

;全部放回Bank
DepositInventory(){
    if (FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("depositInventory")))
    {
        GetRandomPos(X, Y, 15, 15, 0.5, 0)
        MouseClick, L, X, Y, 1
        RandomSleep(150)

        ;检查是否还有库存，没有则退出循环
        if ((ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("jugOfWater")) == 0)){
            OutputDebug, "库存不足： jugOfWater"
            ExitApp
        }
        if((ok2 := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("potOfFlour")) == 0)){
            OutputDebug, "库存不足： potOfFlour"
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
    Random, randX, 0, offset
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