#Include <FindText>
#NoEnv
#SingleInstance, Force
global WinTitleOffset := 25
global BankerPositionX := 0
global BankerPositionY := 0
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

InitPicLab()

;相机视角拉进到最大(35次)
ControlClick, ,ahk_id %runeWin%, ,WheelDown, 35
RandomSleep(150)
LookNorth()

MouseClickDrag, M, 690, 480, 690, 650
;↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑    Finished Init Game View    ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

OpenStore()
; While, True{
;     TakeOutItems()
;     MakePastryDough()
;     OpenBank()
;     DepositInventory()
; }

InitPicLab(){
    FindText().PicLib("|<closeStore>*41$14.00000kAC71nUDk1s0A07U3w1nUsQA300000U",1)  
    FindText().PicLib("|<lookNorth>*151$27.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUV0TyCQlztrbDzZwtzyDaDznwXzxDbzzAwzznnXzwA8Dzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw",1)
    FindText().PicLib("|<Gerrant>0xFF00FA@1.00$37.A00000900000c00000I1WZ6CCF9X4YZ4sV1mGGEEV99678EQYM",1)
    FindText().PicLib("|<featherPacks>*106$21.z1wy0Tvk00S003s00T003s00D001s20D081s0UD021k08C00Vk02C009U00Q001U00Q003zzzw",1)
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

;找Banker
OpenStore()
{
    if (FindText(X, Y, 0, 0, 1280, 960, 0, 0, FindText().PicLib("Gerrant")))
    {
        Y += 5
        GetRandomPos(X, Y, 10, 20, 0.5, 0)
        MouseClick, L, X, Y, 1
        RandomSleep(850,1200)
    }
    Else{
        OutputDebug, "找不到 Gerrant "
    }
}

BuyFeatherPacks(){
    if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("featherPacks"))) {
        ; 找到 "featherPacks" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, R, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 featherPacks "
    }
}
;找 jugOfWater 和 pastry dough
TakeOutItems()
{
    if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("jugOfWater"))) {
        ; 找到 "jugOfWater" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 jugOfWater "
    }

    if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("potOfFlour"), 0)) { ;0 使用上一次搜索"piedishB"的截图来调用 FindText
        ; 找到 "potOfFlour" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 potOfFlour"
    }

    ;关闭Bank
    if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("closeBank"), 0)) { ;0 使用上一次搜索"piedishB"的截图来调用 FindText
        ; 找到 "closeBank" 图像后要进行的操作
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 closeBank"
    }
}

;合成pastry dough
MakePastryDough()
{
    RandomSleep(150)

    if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("jugOfWater"))) {
        ; 找到 "jugOfWater" 图像后要进行的操作
        Random, randIdx, 1, ok.Length()
        X := ok[randIdx].x
        Y := ok[randIdx].y
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(500)
    }
    Else{
        OutputDebug, "找不到 jugOfWater"
    }

    if (ok := FindText(X, Y, 1020, 660 - WinTitleOffset, 1280, 960 + WinTitleOffset, 0, 0, FindText().PicLib("potOfFlour"), 0)) { ;0 使用上一次搜索"pieDishI"的截图来调用 FindText
        ; 找到 "potOfFlour" 图像后要进行的操作
        Random, randIdx, 1, ok.Length()
        X := ok[randIdx].x
        Y := ok[randIdx].y
        GetRandomPos(X, Y, 8, 8)
        MouseClick, L, X, Y, 1
        RandomSleep(1500)
    }
    Else{
        OutputDebug, "找不到 potOfFlour"
    }
    SendInput {Numpad2 Down}
    Sleep 50
    SendInput {Numpad2 UP}
    RandomSleep(14000)
}

;全部放回Bank
DepositInventory(){
    if (FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("depositInventory")))
    {
        GetRandomPos(X, Y, 15, 15, 0.5, 0)
        MouseClick, L, X, Y, 1
        RandomSleep(150)

        ;检查是否还有库存，没有则退出循环
        if (ok := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("jugOfWater"))){
            If (ok.Length() < 1){
                OutputDebug, "库存不足： jugOfWater"
            }
        }
        if(ok2 := FindText(X, Y, 260, 30 - WinTitleOffset, 750, 785 + WinTitleOffset, 0, 0, FindText().PicLib("potOfFlour"))){
            If (ok2.Length() < 1){
                OutputDebug, "库存不足： potOfFlour"
            }
        }
        LoopCount ++
        OutputDebug, "LoopCount: " %LoopCount%
    }
    Else{
        OutputDebug, "找不到Deposit Inventory"
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
ExitApp