#Include <FindText>
#Include <CommonUtil>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global LoopCount := 0
global SuperheatFinish := 0
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

InitPicLab(){
    FindText().PicLib("|<BlueSquare>0x0013FF@1.00$8.zzzzzzzzzzzzzzzzzzzzzs",1)
    FindText().PicLib("|<PurpleSquare>0xFF00FF@1.00$9.zzzzzzzzzzzzzzzzzzU",1)
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
    CheckPurpleSquare()
    RandomSleep(500)
    CheckBlueSquare()
    RandomSleep(500)
}

CheckBlueSquare(){
    if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("BlueSquare")))
    {
        GetRandomPos(X, Y, 4, 7)
        MouseClick, L, X, Y, 1
        RandomSleep(3500)
    }
}
CheckPurpleSquare(){
    if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("PurpleSquare")))
    {
        GetRandomPos(X, Y, 4, 6)
        MouseClick, L, X, Y, 1
        RandomSleep(3500)
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