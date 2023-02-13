#Include <FindText>
#Include <CommonUtil>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global LoopCount := 0

SetTitleMatchMode, 2
SetControlDelay -1

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

SetSkillFilter()

;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

OpenBank()
While, True{
    TakeOutItems()
    EscKeyFunc()
    ShowSkillPageView()
}

InitPicLab(){
    FindText().PicLib("|<banker>0xFF00FA@1.00$47.00000000000000000000000000000000000000000000000000000000D0040000F0080000W00E0001sMsclE02999WH004FmH74008YYZ8800S799CE0000000000000000000000000000000000000000000000000000000000000000000000000000001",1)
    FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)
    ;IronOre

    ;SuperheatSkill

    ;IronBar

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

;TODO SetSkillFilter 设置技能筛选项
SetSkillFilter(){

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
;找 IronOre
TakeOutItems()
{
    if (FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("IronOre"))) {
        ; 找到 "IronOre" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 IronOre "
        Return
    }
}

;按下ESC
EscKeyFunc(){
    ;关闭Bank
    SendInput {Esc Down}
    Sleep 50
    SendInput {Esc UP}
    RandomSleep(500)
}

;按下技能栏的快捷键
ShowSkillPageView(){
    SendInput {F6 Down}
    Sleep 50
    SendInput {F6 UP}
    RandomSleep(500)
}

SuperheatOre(){
    While, true{
        if (FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("SuperheatSkill"))) {
            ; 找到 "SuperheatSkill" 图像后要进行的操作
            GetRandomPos(X, Y, 8, 8)
            MouseClick, L, X, Y, 1
            RandomSleep(500)
        }
        Else{
            OutputDebug, "找不到 SuperheatSkill "
            Return
        }

        if (FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("IronOre"))) {
            ; 找到 "IronOre" 图像后要进行的操作
            GetRandomPos(X, Y, 8, 8)
            MouseClick, L, X, Y, 1
            RandomSleep(1200)
        }
        Else{
            OutputDebug, "背包找不到 IronOre ，尝试存入Bar "
            BankBars()
            Return
        }
    }
}

BankBars(){
    OpenBank()

    if (FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("IronBar"))) {
        ; 找到 "IronBar" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(1200)
    }
    Else{
        OutputDebug, "背包找不到 IronBar "
        ExitApp
        Return
    }
}