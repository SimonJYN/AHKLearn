#Include <FindText>
#Include <CommonUtil>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global LoopCount := 0
global NotFindCount := 0
global PickRewardNumber := 0
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

MouseClickDrag, M, 690, 480, 690, 750
;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

InitPicLab(){
    FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)
    FindText().PicLib("|<BlueSquare>0x0013FF@1.00$8.zzzzzzzzzs",1)
    FindText().PicLib("|<PurpleSquare>0xFF00FF@1.00$9.zzzzzzzzzU",1)
    FindText().PicLib("|<RedSquare>0xFF0000@1.00$9.zzzzzzzzzzw",1)
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
    if (ok := FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("BlueSquare")))
    {
        NotFindCount := 0
        PickRewardNumber := 0
        Random, randIdx, 1, ok.Length()
        X := ok[randIdx].x
        Y := ok[randIdx].y
        ;GetRandomPos(X, Y, 4, 12)
        MouseClick, L, X, Y, 1
        RandomSleep(3500)
    }
    else if (ok := FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("PurpleSquare")))
    {
        If (PickRewardNumber < 2){
            PickRewardNumber += 1
            Random, randIdx, 1, ok.Length()
            X := ok[randIdx].x
            Y := ok[randIdx].y
            ;GetRandomPos(X, Y, 4, 6)
            MouseClick, L, X, Y, 1
            RandomSleep(3500)
        }
        Else{
            If (ok := FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("PurpleSquare"))){
                Random, randIdx, 1, ok.Length()
                X := ok[randIdx].x
                Y := ok[randIdx].y
                MouseClick, L, X, Y, 1
                RandomSleep(3500)
                PickRewardNumber := 0
            }
        }
    }Else{
        NotFindCount += 1
        If (NotFindCount>4){
            X := 980
            Y := 540
            GetRandomPos(X, Y, 20, 20)
            MouseClick, L, X, Y, 1
        }
    }
    RandomSleep(3500)
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