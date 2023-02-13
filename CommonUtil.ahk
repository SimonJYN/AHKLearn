#NoEnv
#SingleInstance, Force

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
;随机时间的延迟
RandomSleep(time, offset := 1500){
    Random, randX, 0, offset
    time += randX
    Sleep, time
    Return
}