#Include <FindText>
#Include <CommonUtil>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global LoopCount := 0
global SuperheatFinish := 0
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

InitPicLab()

;相机视角拉进到最小(35次)
ControlClick, ,ahk_id %runeWin%, ,WheelUp, 35
RandomSleep(150)
LookNorth()

;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

OpenBank()
While, True{
    TakeOutItems()
    Clean()
    OpenBank()
    DepositInventory()
}

InitPicLab(){
    FindText().PicLib("|<GrimyRanarrWeed>*37$29.03xzy07rU41zD08DkQ0EzUs13zU02Dxk08sM00Ewy00UTy020Ds040lk083k00UDU010z0021w0027z00sTy0S0Tzz0000002",1)
    FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)
    FindText().PicLib("|<depositInventory>*58$33.U0000M000000000000000000000001zs000k0U00C02001k6800T1xU07wCA01zkVU0Dr0A01zN3U0Dtww03DbxUFXy3g3EzkNUIDy0A23zk3UENy1w277kz0EESDk3z1zw0Dw7y00000000000000000000000400003k0000o",1)
    FindText().PicLib("|<banker>0xFF00FA@1.00$47.00000000000000000000000000000000000000000000000000000000D0040000F0080000W00E0001sMsclE02999WH004FmH74008YYZ8800S799CE0000000000000000000000000000000000000000000000000000000000000000000000000000001",1)
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
        Y += 30
        GetRandomPos(X, Y, 80, 200, 0.5, 0)
        MouseClick, L, X, Y, 1
        RandomSleep(850,1200)
    }
    Else{
        OutputDebug, "找不到Banker"
    }
}

TakeOutItems()
{
    if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0.000001, 0.000001, FindText().PicLib("GrimyRanarrWeed"))) {
        ; 找到 "GrimyRanarrWeed" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 GrimyRanarrWeed "
        ExitApp
    }

    ;关闭Bank
    EscKeyFunc()
}

Clean(){
    if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0.0001, 0.0001, FindText().PicLib("GrimyRanarrWeed"))) {
        ; 找到 "GrimyRanarrWeed" 图像后要进行的操作
        Random, randIdx, 1, ok.Length()
        X := ok[randIdx].x
        Y := ok[randIdx].y
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(200, 500)
        GetRandomPos(X, Y, 400, 300)
        MouseMove, X, Y
        RandomSleep(50, 100)
        Clean()
    }
    Else{
        OutputDebug, "找不到 GrimyRanarrWeed ，放回Bank"
        RandomSleep(500)
    }
}

;全部放回Bank
DepositInventory(){
    if (FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("depositInventory")))
    {
        GetRandomPos(X, Y, 15, 15, 0.5, 0)
        MouseClick, L, X, Y, 1
        RandomSleep(150)

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