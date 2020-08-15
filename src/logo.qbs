DECLARE SUB PlaySound ()
DECLARE SUB DelayStep ()
DECLARE SUB DrawRect (x!, y!, ColWidth!, ColHeight!)
CLS

DIM SHARED Delay

Delay = .2

'PlaySound

' This defines screen resolutions, change this if
' you change the screen mode
screenWidth = 640
screenHeight = 200

' Width of the N
nWidth = 140
nHeight = 180

' Space to the second part of the N
ColDivide = 60

' We calculate the N based off the starting location for x,y
'x = screenWidth - (screenWidth - nWidth)
x = screenWidth / 2 - (nWidth)

y = (screenHeight - nHeight) / 2
ColHeight = screenHeight - ((screenHeight - nHeight) * 2)
ColWidth = 40 ' Fix me, calculate it properly
crossbarWidth = 40

' Calculate the second part of the N
x2 = screenWidth - (nWidth * 2)

PRINT "X: " + STR$(x)
PRINT "Y: " + STR$(y)
PRINT "ColHeight " + STR$(ColHeight)

PRINT "X2: " + STR$(x2)
'INPUT "", dummy$


SCREEN 2

' Draw Left part of N
CALL DrawRect(x, y, ColWidth, ColHeight)
CALL DrawRect(x2, y, ColWidth, ColHeight)

' Now we draw the \ across the N
DelayStep
LINE (x + ColWidth, y)-(x2, y + ColHeight - crossbarWidth + 1)

DelayStep
LINE (x + ColWidth, y + crossbarWidth)-(x2, y + ColHeight)

' Remove the the notch
DelayStep
LINE (x + ColWidth, y + 1)-(x + ColWidth, y + crossbarWidth - 1), 0

DelayStep
LINE (x2, y + ColHeight - crossbarWidth)-(x2, y + ColHeight - 1), 0

PAINT (x + 1, y + 1), 1

Delay = .3
FOR i = 1 TO 3
        DelayStep
        LOCATE 23, 30
        PRINT "NOW LOADING .  "

        DelayStep
        LOCATE 23, 30
        PRINT "NOW LOADING .. "
       
        DelayStep
        LOCATE 23, 30
        PRINT "NOW LOADING ..."
NEXT i

SLEEP 5

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

SUB PlaySound

PLAY "MB O2 D E C O1 C G"
'PLAY "MB T64 O1 C# G# T128 O2 C# T56 B T255 A# G# T128 A# G# F# G#"
END SUB

