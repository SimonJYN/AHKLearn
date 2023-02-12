#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

global account := ""
global pwd := ""

path := A_ScriptDir "\AccountInfo.txt"
FileReadLine, account, %path%, 2
FileReadLine, pwd, %path%, 4

If (Strlen(Trim(account))<1 || Strlen(Trim(pwd))<1)
    OutputDebug, " 账号密码不正确 "

