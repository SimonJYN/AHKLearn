#Include <FindText>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global LoopCount := 0
global ErrorCount := 0
global BuyTimes := 0
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

InitPicLab()

;相机视角拉进到最大(35次)
ControlClick, ,ahk_id %runeWin%, ,WheelDown, 35
RandomSleep(150)
LookNorth()

MouseClickDrag, M, 690, 480, 690, 650
;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

While, True{
    OpenStore()
}

InitPicLab(){
    FindText().PicLib("|<closeStore>*41$14.00000kAC71nUDk1s0A07U3w1nUsQA300000U",1)
    FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)
    FindText().PicLib("|<Gerrant>0xFF00FA@1.00$37.A00000900000c00000I1WZ6CCF9X4YZ4sV1mGGEEV99678EQYM",1)
    FindText().PicLib("|<featherPacks>*106$21.z1wy0Tvk00S003s00T003s00D001s20D081s0UD021k08C00Vk02C009U00Q001U00Q003zzzw",1)
    FindText().PicLib("|<buy5FeatherPack>*157$20.TUT7zzxzzzzzzzzzzzzzzUTjtzvyTyzVzbzDtztyTyTbzbtyNyTkzbzzxzzzzzzzzzzzzzztwM",1)
    FindText().PicLib("|<tradeGerrant>0xFFFFFF@1.00$36.z000M0A000M0A000M0A000M0ASD1swAQNXNaAMDaNaAMNaNwAMNaNUAMDXsy000000U",1)
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

;找Gerrant
OpenStore()
{
    ;右键NPC
    if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("Gerrant")))
    {
        Y += 15
        GetRandomPos(X, Y, 10, 10, 0.5, 0)
        MouseClick, R, X, Y, 1, 0
        RandomSleep(500)
        ;查找右键菜单中的：Trade Gerrant
        if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("tradeGerrant"))){
            GetRandomPos(X, Y, 60, 4, 0, 0.5)
            MouseClick, L, X, Y, 1
            RandomSleep(3000,500)
            if (FindText(X1, Y1, 270, 230 - WinTitleOffset, 760, 600 + WinTitleOffset, 0, 0, FindText().PicLib("featherPacks"))) {
                LoopBuyAction()
            }
            Else{
                OutputDebug, "商店未打开，重新打开"
                OpenStore()
            }
        }Else{
            OutputDebug, "找不到 tradeGerrant "
            MouseMove, 100, 100
            RandomSleep(500)
            OpenStore()
        }
    }
    Else{
        OutputDebug, "找不到 Gerrant "
        RandomSleep(500)
        if (FindText(X1, Y1, 270, 230 - WinTitleOffset, 760, 600 + WinTitleOffset, 0, 0, FindText().PicLib("featherPacks"))) {
            OutputDebug, "商店已打开，开始购买"
            LoopBuyAction()
        }
    }
}

;循环购买 feather packs 5次，购买完成后关闭stroe
LoopBuyAction(){
    While, BuyTimes < 4
    {
        BuyTimes += 1
        BuyFeatherPacks()
        RandomSleep(5000)
    }

    BuyFeatherPacks()
    BuyTimes := 0
    RandomSleep(500)
    ;关闭Store
    if (ok := FindText(X, Y, 270, 230 - WinTitleOffset, 760, 600 + WinTitleOffset, 0, 0, FindText().PicLib("closeStore"), 0)) { ;0 使用上一次搜索"piedishB"的截图来调用 FindText
        ; 找到 "closeStore" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)

        OpenFeatherPacks()
    }
    Else{
        OutputDebug, "找不到 closeStore"
    }
}

;选择feather packs商品右键，购买5个；如果没有找到商品，重新执行打开商店
BuyFeatherPacks(){
    if (ok := FindText(X1, Y1, 270, 230 - WinTitleOffset, 760, 600 + WinTitleOffset, 0, 0, FindText().PicLib("featherPacks"))) {
        ; 找到 "featherPacks" 图像后要进行的操作
        GetRandomPos(X1, Y1, 8, 8)
        MouseClick, R, X1, Y1, 1
        RandomSleep(1000)

        if (ok := FindText(X2, Y2, 270, 230 - WinTitleOffset, 760, 600 + WinTitleOffset, 0, 0, FindText().PicLib("buy5FeatherPack"))) {
            ; 找到 "buy5FeatherPack" 图像后要进行的操作
            GetRandomPos(X2, Y2, 60, 4, 0, 0.5)
            MouseClick, L, X2, Y2, 1
        }
        Else{
            OutputDebug, "找不到 buy5FeatherPack"
        }
    }
    Else{
        OutputDebug, "找不到 featherPacks "
        OpenStore()
    }
}

;打开背包中的feather packs，等待30秒
OpenFeatherPacks(){
    if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("featherPacks"))) {
        ; 找到 "featherPacks" 图像后要进行的操作
        Random, randIdx, 1, ok.Length()
        X := ok[randIdx].x
        Y := ok[randIdx].y
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        ErrorCount := 0
        LoopCount += 1
        RandomSleep(30000)
        OutputDebug, "LoopCount: " %LoopCount%
    }
    Else{
        OutputDebug, "找不到 featherPacks"
        ErrorCount += 1
        If (ErrorCount > 2){
            OutputDebug, "背包没有 featherPack，检查金币是否充足"
            ExitApp
        }
        OpenFeatherPacks()
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
    StopLimitTime += StopLimitTime
    SetTimer, AutoStop, %StopLimitTime%
}
AutoStop(){
    isRuning := 0
    FormatTime, hhmmss, T8, hh:mm:ss
    OutputDebug, "! Auto Stop , Time： " %hhmmss% " !"
    ExitApp
}
ExitApp