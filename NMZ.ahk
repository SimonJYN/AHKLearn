#Include <FindText>
#Include <CommonUtil>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global LoopCount := 0
global StopLimitTime := 9000000
global LowThreshold := 0

SetTitleMatchMode, 2
SetControlDelay -1
SetKeyDelay, 50, 50

;定时停止运行
; AutoStopTimer()

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

; While, true{
;     X := 1217
;     Y := 887
;     RandomSleep(1000, 200)
;     ControlClick, ,ahk_id %runeWin%, ,R, 1, x%X% y%Y% NA
;     RandomSleep(50,10)
;     ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
;     RandomSleep(1000, 100)
; }
; ExitApp

While, true{
    CheckThreshold()

    ;Prayer page  1222  640
    X := 1222
    Y := 640
    GetRandomPos(X,Y,4)
    ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
    RandomSleep(200, 100)

    ;Click Rapid Heal
    X := 1230
    Y := 720
    GetRandomPos(X,Y,4)
    ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
    RandomSleep(300, 100)
    ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
    RandomSleep(200, 100)

    ;是否达到门槛，是则表示应该喝 Absorption ，否则继续循环
    if (LowThreshold) {
        ;切换到背包
        X := 1155
        Y := 640
        GetRandomPos(X,Y,4)
        ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
        RandomSleep(200, 100)

        ;不知为何，只能激活窗口后才能使用 ControlSend
        ; ControlSend, , {Esc Down}, ahk_id %runeWin%
        ; RandomSleep(50,50)
        ; ControlSend, , {Esc Up}, ahk_id %runeWin%

        ;是否存在 Absorption ，是则
        if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("Absorption"))) {
            drinkCount := 0
            For k, v in ok
            {
                If (drinkCount < 11)
                {
                    X := ok[k].x
                    Y := ok[k].y
                    GetRandomPos(X, Y, 6, 6)
                    ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                    RandomSleep(1500, 300)
                    ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                    RandomSleep(1500, 300)
                    ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                    RandomSleep(1500, 300)
                    ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                    RandomSleep(1500, 300)
                    drinkCount := drinkCount + 4
                }
            }
            RandomSleep(200, 500)
        }
        Else{
            OutputDebug, "找不到 Absorption "
            RandomSleep(45000,8000)
        }
    }
    Else{
        ;先判断是否还存在  ，如果不存在说明已经退出了NMZ，需要退出脚本
        if (ok := FindText(X, Y, 0, 0, 100, 150, 0, 0, FindText().PicLib("AbsorptionStatIcon"))) {
            RandomSleep(200, 500)
            ;判断 生命值是否是 1 ，是则继续循环，否则使用 Rock Cake （ 1217 ,887  ）
            if (ok := FindText(X, Y, 1020, 0, 1280, 150, 0, 0, FindText().PicLib("HPNum1"))) {
                RandomSleep(45000,10000)
            }Else{
                ;切换到背包
                ControlSend, , {Esc Down}, ahk_id %runeWin%
                RandomSleep(50,50)
                ControlSend, , {Esc Up}, ahk_id %runeWin%

                X := 1217
                Y := 887
                RandomSleep(100, 100)
                ControlClick, ,ahk_id %runeWin%, ,R, 1, x%X% y%Y% NA
                RandomSleep(10,10)
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(10,10)
                ControlClick, ,ahk_id %runeWin%, ,R, 1, x%X% y%Y% NA
                RandomSleep(10,10)
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(10,10)
                ControlClick, ,ahk_id %runeWin%, ,R, 1, x%X% y%Y% NA
                RandomSleep(10,10)
                ControlClick, ,ahk_id %runeWin%, ,L, 1, x%X% y%Y% NA
                RandomSleep(1000)
            }
        }
        Else{
            FormatTime, hhmmss, T8, hh:mm:ss
            OutputDebug, "! Auto Stop , Time： " %hhmmss% " !"
            ExitApp
        }
    }
}

ExitApp

InitPicLab(){
    FindText().PicLib("|<AbsorptionStatIcon>##0$0/0/A6933C,2/3/958435,-1/10/BDC4C8,4/14/647E89,-3/14/B6BFC4",1)
    FindText().PicLib("|<PurplePixel>0xFF00FF@1.00$1.k",1)
    ; FindText().PicLib("|<HPNum1>0xFF0800@1.00$4.1AF4FC08",1)
    FindText().PicLib("|<HPNum1>##0$0/0/FF0700,1/-1/FF0700,1/0/FF0700,1/1/FF0700,1/2/FF0700,1/3/FF0700,1/4/FF0700,1/5/FF0700,1/6/FF0700,0/6/FF0700,2/6/FF0700,-10/-4/685A4B,-10/9/685A4B,4/9/685A4B,4/-4/685A4B",1)
    FindText().PicLib("|<Absorption>##0$0/0/A6933C,4/0/5B5121,0/3/A3903B,4/3/52481D,-2/10/000001,-1/26/A4B1B7,4/26/647E89,-6/25/000001,8/25/000001",1)
}

CheckThreshold(){
    if (ok := FindText(X, Y, 0, 0, 100, 150, 0, 0, FindText().PicLib("PurplePixel"))) {
        LowThreshold := 1
        RandomSleep(200)
    }
    Else{
        LowThreshold := 0
        RandomSleep(200)
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