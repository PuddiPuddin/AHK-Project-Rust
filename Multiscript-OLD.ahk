#NoEnv
SendMode Input
 
;Key binds
key_AK:="Numpad1"
key_SemiRifle:="Numpad2"
key_LR300:="Numpad3"
key_P250:="Numpad4"
key_Thompson:="Numpad5"
key_RCoff:="Numpad0"
key_M249:="Numpad6"
key_rev:="Numpad7"
key_mp5:="Numpad8"
key_m92:="Numpad9"
key_ExitApp:="End"
key_Reload:="F5"
 
;###########################################
;
;   Menu
;
;###########################################
 
loop {
sleep 1
 
;### Check if AK is selected
if GetKeyState(key_Thompson)
{
 
ToolTip, Thompson, 1, 1, SplashTextOn
ak:=false
semirifle:=false
lr300:=false
p250:=false
thompson:=true
m249:=false
rev:=false
mp5:=false
m92:=false
}
if GetKeyState(key_AK)
{
 
ToolTip, AK, 1, 1, SplashTextOn
ak:=true
semirifle:=false
lr300:=false
p250:=false
thompson:=true
m249:=false
rev:=false
mp5:=false
m92:=false
}
 
;### Check if Semirifle is selected
if GetKeyState(key_SemiRifle)
{
 
ToolTip, Semirifle, 1, 1, SplashTextOn
ak:=false
semirifle:=true
lr300:=false
p250:=false
thompson:=false
m249:=false
rev:=false
mp5:=false
m92:=false
}
 
;### Check if LR300 is selected
if GetKeyState(key_LR300)
{
 
ToolTip, LR300, 1, 1, SplashTextOn
ak:=false
semirifle:=false
lr300:=true
p250:=false
thompson:=false
m249:=false
rev:=false
mp5:=false
m92:=false
}
 
;### Check if P250 is selected
if GetKeyState(key_P250)
{
 
ToolTip, P250, 1, 1, SplashTextOn
ak:=false
semirifle:=false
lr300:=false
p250:=true
thompson:=false
m249:=false
rev:=false
mp5:=false
m92:=false
}
 
;### Check if M249 is selected
if GetKeyState(key_M249)
{
 
ToolTip, M249, 1, 1, SplashTextOn
ak:=false
semirifle:=false
lr300:=false
p250:=false
thompson:=false
m249:=true
rev:=false
mp5:=false
m92:=false
}
 
;### Check if Revolver is selected
if GetKeyState(key_rev)
{
 
ToolTip, Revolver, 1, 1, SplashTextOn
ak:=false
semirifle:=false
lr300:=false
p250:=false
thompson:=false
m249:=false
rev:=true
mp5:=false
m92:=false
}
 
if GetKeyState(key_mp5)
{
 
ToolTip, MP5, 1, 1, SplashTextOn
ak:=false
semirifle:=false
lr300:=false
p250:=false
thompson:=false
m249:=false
rev:=false
mp5:=true
m92:=false
}
 
if GetKeyState(key_m92)
{
 
ToolTip, M92, 1, 1, SplashTextOn
ak:=false
semirifle:=false
lr300:=false
p250:=false
thompson:=false
m249:=false
rev:=false
mp5:=false
m92:=true
}
 
;### Turn off recoil.
if GetKeyState(key_RCoff)
{
ToolTip, Off, 1, 1, SplashTextOn
ak:=false
semirifle:=false
lr300:=false
p250:=false
thompson:=false
m249:=false
rev:=false
mp5:=false
}
 
;### Reload script
if GetKeyState(key_Reload)
{
Reload
}
 
;### Exit Script
if GetKeyState(key_ExitApp)
{
ExitApp
}
 
} ;### END LOOP
 
;###########################################
;
;   Start recoil controller
;
;###########################################
 
Return
 
LCtrl & ~LButton::
if ak
{
    Sleep 100
}
Loop
    if GetKeyState("LButton", "LCtrl")
    {
        if ak
        {
 
        Sleep 1
        MouseXY(-5, 10)
        Sleep 23
        MouseXY(5, 10)
        Sleep 30
        MouseXY(-5, 10)
        Sleep 42
        MouseXY(5, 10)
 
        }
        else
        if lr300
        {
       
            Sleep, 6
            moveAmount := (moveAmount = 2) ? 1 : -1
            mouseXY(moveAmount,4)
       
        }
        else
        if semirifle
        ;### REWORKED
        {
 
        sleep, 35
        ;mouseXY(-1.4,5.6)
        mouseXY(-3,12)
 
        }
        else
        if p250
        {
 
        Sleep, 6
            moveAmount := (moveAmount = 2) ? 1 : -1
            mouseXY(moveAmount,5)
 
        }
        else
        if thompson
        {
 
        Sleep 1
        MouseXY(-2, 2)
        Sleep 20
        MouseXY(2, 1)
        Sleep 20
        MouseXY(-2, 2)
        Sleep 20
        MouseXY(2, 2)
 
        }
        else
        if m249
        {
 
        Sleep, 6
            moveAmount := (moveAmount = 2) ? 1 : 0
            mouseXY(moveAmount,5)
 
        }
        else
        if rev
        {
 
        Sleep, 1
        mouseXY(-1.5,4.1)
 
        }
        if mp5
        {
 
        Sleep, 10
        mouseXY(-1.9,4.5)
 
        }
        if m92
        {
       
        Sleep 30
        mouseXY(-2,7)
 
        }
       
    }
    else
    break  
Return
 
mouseXY(x,y)
{
DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}
