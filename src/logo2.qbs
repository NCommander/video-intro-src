DECLARE SUB DelayStep ()
DECLARE SUB DrawRect (x!, y!, ColWidth!, ColHeight!)
DECLARE SUB FillInBar(steps!)
CLS

SCREEN 2

DIM SHARED Delay
DIM SHARED Location

Delay = .2

'PlaySound
' This defines screen resolutions, change this if
' you change the screen mode
screenWidth = 640
screenHeight = 200

CALL DrawRect(40, 40, 560, 40)

FOR i = 0 TO 540
NEXT i

Delay = .3

FOR i = 1 TO 3
        FillInBar(55)
        DelayStep
        LOCATE 23, 30
        PRINT "NOW LOADING .  "

        DelayStep
        FillInBar(55)
        LOCATE 23, 30
        PRINT "NOW LOADING .. "
       
        DelayStep
        FillInBar(55)
        LOCATE 23, 30
        PRINT "NOW LOADING ..."
NEXT i

FillInBar(35)
DelayStep
DelayStep
DelayStep
DelayStep

SUB DelayStep
    DIM Start AS SINGLE
    TIMER ON
    Start = TIMER
    DO
    LOOP UNTIL TIMER > Start + Delay
END SUB

SUB DrawRect (x, y, ColWidth, ColHeight)
    ' Draw Left part of N
    DelayStep
    LINE (x, y)-(x, y + ColHeight)

    DelayStep
    LINE (x, y + ColHeight)-(x + ColWidth, y + ColHeight)

    DelayStep
    LINE (x + ColWidth, y + ColHeight)-(x + ColWidth, y)

    DelayStep
    LINE (x + ColWidth, y)-(x, y)

END SUB

SUB FillInBar(steps)
    FOR i = 0 TO steps
        LINE(50+Location, 44)-(50+Location, 76)
        Location = Location + 1

    NEXT i
END SUB

