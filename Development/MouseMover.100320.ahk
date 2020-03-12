toggle:=0
direction:=0
global vMinutes=0
global vSeconds=0
global vMoveSmall=0
global vMoveMed=0
global vMoveLarge=0
global vMoveObscene=0
global vTotalTime=0
 
F6::
If toggle:=!toggle
{
Gui, Destroy
Gui, New, AlwaysOnTop
;===================== START GUI Styling Options ========================;
Gui, Minimize
; Gui, +Resize -MaximizeBox 


;====================== END GUI Styling Options ==========================;
Gui, Add, Text,, Please enter how often the mouse should move(Must be NUMBERS ONLY):
Gui, Add, Text,, Minutes:
Gui, Add, Edit, vvMinutes, 0
Gui, Add, Text,, Seconds:
Gui, Add, Edit, vvSeconds, 0
Gui, Add, Text,, Please select how much the mouse should move:
Gui, Add, Radio, vvMoveSmall Checked, Small Distance(Recommended)`n
Gui, Add, Radio, vvMoveMed, Medium Distance`n
Gui, Add, Radio, vvMoveLarge, Large Distance(Very noticeable)`n
Gui, Add, Radio, vvMoveObscene, Obscenely Large(This likely should be a last resort.)
Gui, Add, Button, Default , OK
Gui, Add, Button,, Cancel
Gui, Show,, MouseMover - 200.310.01



}
else
{
SetTimer, MM, Off
MsgBox, Toggled to off!
vTotalTime:=0
}
return

ButtonOK:
Gui, Submit

vTotalTime=0
vTotalMinutesMS=0
vTotalSecondsMS=0
vTotalMinutesMS+=%vMinutes%
vTotalMinutesMS*=60000
vTotalSecondsMS+=%vSeconds%
vTotalSecondsMS*=1000
vTotalTime+=%vTotalMinutesMS%
vTotalTime+=%vTotalSecondsMS%

MsgBox, Toggled on!
SetTimer, MM, %vTotalTime%
return

GuiClose:
ButtonCancel:
Gui, Cancel
toggle:=!toggle
SetTimer, MM, Off
MsgBox, Cancelling input and remaining off.
return
 
MM:
If (vMoveSmall = 1) {
MouseMove, 0, 10,, R
}
else if (vMoveMed = 1) {
MouseMove, 0, 100,, R
}
else if (vMoveLarge = 1) {
MouseMove, 0, 200,, R
}
else if (vMoveObscene = 1) {
MouseMove, 0, 500,, R
}
else {
MsgBox, Something went wrong! Tell Thomas Harper that you got error ID 1001x!
}
Sleep, 100

If (vMoveSmall = 1) {
MouseMove, 0, -10,, R
}
else if (vMoveMed = 1) {
MouseMove, 0, -100,, R
}
else if (vMoveLarge = 1) {
MouseMove, 0, -200,, R
}
else if (vMoveObscene = 1) {
MouseMove, 0, -500,, R
}
else {
MsgBox, Something went wrong! Tell Thomas Harper that you got error ID 1001y!
}
return

::mousemoverversion::MouseMover is currently version 200.310.01!