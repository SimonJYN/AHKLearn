#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

global account := ""
global pwd := ""

InitWin()
ReadAccountInfo()

InitWin(){
    global runeWin := WinExist("ahk_exe RuneLite.exe")

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
}

ReadAccountInfo(){
    path := A_ScriptDir "\AccountInfo.txt"
    If (FileExist(path)){
        FileReadLine, account, %path%, 2
        FileReadLine, pwd, %path%, 4
        If (Strlen(Trim(account))<1 || Strlen(Trim(pwd))<1)
        {
            OutputDebug, " 账号密码不正确 "
            ExitApp
        }
    }
    Else{
        FileAppend, Acount: `n`n, %path%
        FileAppend, Pwd: `n`n, %path%
    }
}

InitPicLab(){
    ;AccountSettingButton
    FindText().PicLib("",1)
    ;LoginOutButton

    ;WorldSwitcherButton

    ;SelectWordsList

    ;434WordButton

    ;ExistingUserButton

    ;LoginInputTitle

    ;PwdInputTitle

    ;LoginButton

    ;TryAgainButton

    ;TapToPlayBtn

}