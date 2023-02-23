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

SendInput {F6 Down}
Sleep 50
SendInput {F6 UP}

While, True{
    ;1080 775
    X := 1080
    Y := 775
    GetRandomPos(X,Y,4)
    ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
    RandomSleep(850)
    ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
    RandomSleep(3050)
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