#Include <FindText>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global SuperheatFinish := 0
global StopLimitTime := 9000000

global existUnaggressiveTimer := 0
global existSandBrabStat := 0

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

;相机视角拉进到最大(35次)
ControlClick, ,ahk_id %runeWin%, ,WheelDown, 35
RandomSleep(150)

InitPicLab()
LookNorth()
MouseClickDrag, M, 690, 480, 690, 750
RandomSleep(50)
WinMaximize, ahk_id %runeWin%
;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

InitPicLab(){
    FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)
    FindText().PicLib("|<A>0xFF00FF@1.00$6.8IWWyWWW0U",1)
    FindText().PicLib("|<B>0xFF00FF@1.00$6.wWWwWWWw0U",1)
    FindText().PicLib("|<C>0xFF00FF@1.00$6.AGUUUUGA0U",1)
    FindText().PicLib("|<UnaggressiveTimer>##0$0/0/C4C1BC,-6/6/502725,6/7/370703,9/-1/847E77,-10/8/462221",1)
    FindText().PicLib("|<SandCrabStat>0xFFFFFF@1.00$56.A000E60084U0042E02200011000UE000EE00823WkQ42XXUF4m910l4Y2D8YEE8D8UYG94424G+F4WF0YV4WMD8Xk68DD0000000002",1)
    FindText().PicLib("|<SandyRocksTag>0xFF00FA@1.00$60.0002000000Q002000080W002000080U002000080QAQCG2X3+C2GGGG34YAE2CGGG24YAAYGGGC24Y+2MCGC22339Q00002000000000G000000000A000000000000000U",1)
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

While, True{
    CheckSandCrabStat()

    ;是否存在沙蟹战斗状态，存在表示正在战斗，否则检查是否存在Unaggressive Timer
    If (existSandBrabStat){
        ;OutputDebug, " 正在战斗 "
        RandomSleep(8000, 10000)
    }
    Else{
        CheckUnaggressiveTimer()
        ;是否存在Unaggressive Timer，存在表示可以继续寻找沙蟹战斗，否则需要重新进入战斗区域
        If (existUnaggressiveTimer){
            ;OutputDebug, " 存在 Unaggressive Timer 继续寻找沙蟹 "
            ;CloseToSandyRocks()
            if (ok := FindText(X, Y, 0, 0, 1920, 1080, 0, 0, FindText().PicLib("SandyRocksTag"))) {
                OutputDebug, " CloseToSandyRocks "
                Random, randIdx, 1, ok.Length()
                X := ok[randIdx].x
                Y := ok[randIdx].y
                GetRandomPos(X, Y, 20, 20)
                ;MouseClick, L, X, Y, 1
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(4000)
            }
            Else{
                OutputDebug, "找不到 SandyRocksTag "
            }
            RandomSleep(200)
        }
        Else{
            OutputDebug, " GoOutCombatArea "
            ;GoOutCombatArea()
            if (ok := FindText(X, Y, 0, 0, 1920, 1080, 0, 0, FindText().PicLib("A"))) {
                Random, randIdx, 1, ok.Length()
                X := ok[randIdx].x
                Y := ok[randIdx].y
                GetRandomPos(X, Y, 20, 20)
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(3000)
            }
            Else{
                OutputDebug, "找不到 GoOutCombatArea A "
            }

            if (ok := FindText(X, Y, 0, 0, 1920, 1080, 0, 0, FindText().PicLib("B"))) {
                Random, randIdx, 1, ok.Length()
                X := ok[randIdx].x
                Y := ok[randIdx].y
                GetRandomPos(X, Y, 20, 20)
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(5000)
            }
            Else{
                OutputDebug, "找不到 GoOutCombatArea B "
            }

            if (ok := FindText(X, Y, 0, 0, 1920, 1080, 0, 0, FindText().PicLib("C"))) {
                Random, randIdx, 1, ok.Length()
                X := ok[randIdx].x
                Y := ok[randIdx].y
                GetRandomPos(X, Y, 20, 20)
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(6000)
            }
            Else{
                OutputDebug, "找不到 GoOutCombatArea C "
            }
            RandomSleep(200)

            ; GoBackCombatArea()
            if (ok := FindText(X, Y, 0, 0, 1920, 1080, 0, 0, FindText().PicLib("B"))) {
                Random, randIdx, 1, ok.Length()
                X := ok[randIdx].x
                Y := ok[randIdx].y
                GetRandomPos(X, Y, 20, 20)
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(8000)
            }
            Else{
                OutputDebug, "找不到 GoBackCombatArea B "
            }

            if (ok := FindText(X, Y, 0, 0, 1920, 1080, 0, 0, FindText().PicLib("A"))) {
                Random, randIdx, 1, ok.Length()
                X := ok[randIdx].x
                Y := ok[randIdx].y
                GetRandomPos(X, Y, 20, 20)
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(5000)
            }
            Else{
                OutputDebug, "找不到 GoBackCombatArea A "
            }
            RandomSleep(200)

            ; CloseToSandyRocks()
            if (ok := FindText(X, Y, 0, 0, 1920, 1080, 0, 0, FindText().PicLib("SandyRocksTag"))) {

                OutputDebug, " CloseToSandyRocks "
                Random, randIdx, 1, ok.Length()
                X := ok[randIdx].x
                Y := ok[randIdx].y
                GetRandomPos(X, Y, 20, 20)
                ;MouseClick, L, X, Y, 1
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(4000)
            }
            Else{
                OutputDebug, "找不到 SandyRocksTag "
            }
            RandomSleep(200)
        }
    }
}

CheckSandCrabStat(){
    if (ok := FindText(X, Y, 0, 0, 300, 300, 0, 0, FindText().PicLib("SandCrabStat"))) {
        existSandBrabStat := 1
        RandomSleep(200)
    }
    Else{
        existSandBrabStat := 0
        RandomSleep(200)
    }
}

CheckUnaggressiveTimer(){
    if (ok := FindText(X, Y, 0, 0, 300, 300, 0, 0, FindText().PicLib("UnaggressiveTimer"))) {
        existUnaggressiveTimer := 1
        RandomSleep(200)
    }
    Else{
        existUnaggressiveTimer := 0
        RandomSleep(200)
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