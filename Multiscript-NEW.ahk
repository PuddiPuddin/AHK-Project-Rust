#NoEnv
SendMode Input
 
;###########################################
;
;   Keybinds
;
;###########################################
 
;Recoil Off ->  Numpad 0
;AK         ->  Numpad1
;Semirifle  ->  Numpad2
;Semi scope ->  P+Numpad2
;LR300      ->  Numpad3
;P250       ->  Numpad4
;Thompson   ->  Numpad5
;M249       ->  Numpad6
;Revolver   ->  Numpad7
;MP5        ->  Numpad8
;M92        ->  Numpad9
;Close      ->  End
 
;###########################################
;
;   Menu
;
;###########################################

;Recoil off
~Numpad0::
ToolTip, Recoil off, 1, 1, SplashTextOn
AK:=false
Semirifle:=false
SemirifleImprovisedScope:=false
LR300:=false
P250:=false
Thompson:=false
M249:=false
Revolver:=false
MP5:=false
M92:=false

Return

;Select AK
~Numpad1::
ToolTip, AK Selected, 1, 1, SplashTextOn
AK:=true
Semirifle:=false
SemirifleImprovisedScope:=false
LR300:=false
P250:=false
Thompson:=false
M249:=false
Revolver:=false
MP5:=false
M92:=false

Return

~Numpad2::
;Semirifle
ToolTip, Semirifle Selected, 1, 1, SplashTextOn
AK:=false
Semirifle:=true
SemirifleImprovisedScope:=false
LR300:=false
P250:=false
Thompson:=false
M249:=false
Revolver:=false
MP5:=false
M92:=false

Return

~P & ~Numpad2::
;Semirifle with Improvised scope
ToolTip, Semirifle Improvised Selected, 1, 1, SplashTextOn
AK:=false
Semirifle:=false
SemirifleImprovisedScope:=true
LR300:=false
P250:=false
Thompson:=false
M249:=false
Revolver:=false
MP5:=false
M92:=false

Return

~Numpad3::
;LR300
ToolTip, LR300 Selected, 1, 1, SplashTextOn
AK:=false
Semirifle:=false
SemirifleImprovisedScope:=false
LR300:=true
P250:=false
Thompson:=false
M249:=false
Revolver:=false
MP5:=false
M92:=false

Return

~Numpad4::
;P250
ToolTip, P250 Selected, 1, 1, SplashTextOn
AK:=false
Semirifle:=false
SemirifleImprovisedScope:=false
LR300:=false
P250:=true
Thompson:=false
M249:=false
Revolver:=false
MP5:=false
M92:=false

Return

~Numpad5::
;Thompson
ToolTip, Thompson Selected, 1, 1, SplashTextOn
AK:=false
Semirifle:=false
SemirifleImprovisedScope:=false
LR300:=false
P250:=false
Thompson:=true
M249:=false
Revolver:=false
MP5:=false
M92:=false

Return

~Numpad6::
;M249
ToolTip, M249 Selected, 1, 1, SplashTextOn
AK:=false
Semirifle:=false
SemirifleImprovisedScope:=false
LR300:=false
P250:=false
Thompson:=false
M249:=true
Revolver:=false
MP5:=false
M92:=false

Return

~Numpad7::
;Revolver
ToolTip, Revolver Selected, 1, 1, SplashTextOn
AK:=false
Semirifle:=false
SemirifleImprovisedScope:=false
LR300:=false
P250:=false
Thompson:=false
M249:=false
Revolver:=true
MP5:=false
M92:=false

Return

~Numpad8::
;MP5
ToolTip, MP5 Selected, 1, 1, SplashTextOn
AK:=false
Semirifle:=false
SemirifleImprovisedScope:=false
LR300:=false
P250:=false
Thompson:=false
M249:=false
Revolver:=false
MP5:=true
M92:=false

Return

~Numpad9::
;M92
ToolTip, M92 Selected, 1, 1, SplashTextOn
AK:=false
Semirifle:=false
LR300:=false
P250:=false
Thompson:=false
M249:=false
Revolver:=false
MP5:=false
M92:=true

Return

;###########################################
;
;   Start recoil controller
;
;###########################################


~LCtrl & ~LButton::
Loop
{
	While GetKeyState("LButton") && GetKeyState("LCtrl")
	{
		If AK
		{
			Sleep 5
			MouseXY(3,5)
			Sleep 5
			MouseXY(-3,5)
			Sleep 5
			MouseXY(3,5)
			Sleep 5
			MouseXY(-3,5)
    		}
    
   		else
    		If Semirifle
    		{
			Sleep, 35
			MouseXY(-3,12)
    		}
    
   		else
   		If LR300
    		{
			Sleep 5
			MouseXY(-1,3)
			Sleep 5
			MouseXY(-2,4)
			Sleep 5
			MouseXY(-1,4)
			Sleep 5
			MouseXY(-1,3)
    		}
    
   		else
   		If P250
    		{
    			Sleep 40
    			MouseXY(-3,15)
    		}
    
    		else
    		If Thompson
    		{
    
    			Sleep 5
			MouseXY(0,2)
			Sleep 5
			MouseXY(0,1)
			Sleep 5
			MouseXY(0,2)
			Sleep 5
			MouseXY(0,1)
    		}
    
    		else
    		If M249
    		{
    		}
    
    		else
    		If Revolver
    		{
			Sleep 34
			MouseXY(-2,7)
    		}
    
   		else
    		If MP5
    		{
    		}
    
    		else
    		If M92
    		{
    			Sleep 30
			mouseXY(-2,7)
    		}
    
    		else
    		If SemirifleImprovisedScope
    		{    
    			Sleep 35
			MouseXY(-2,7)
		}
    
	}
	While GetKeyState("MButton") && GetKeyState("LCtrl")
	{
 		If Semirifle
		{
                	SendInput {LButton DownTemp}
               		Sleep 25
                	MouseXY(-4,16)
                	Sleep 1
                	SendInput {LButton Up}
                	Sleep 1
		
		}

		else
  		If Revolver
  		{
  			SendInput {LButton DownTemp}
			MouseXY(-3,6)
			SendInput {LButton Up}
			Sleep 35
		}

		else
		If SemirifleImprovisedScope
		{
	
			SendInput {LButton DownTemp}
			MouseXY(-2,5)
			Sleep 5
			MouseXY(-1,5)
			Sleep 5
			MouseXY(-1,5)
			Sleep 5
			SendInput {LButton Up}
			Sleep 35
		}

	}
}

Return

MouseXY(x,y)
{
	DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}

Return
