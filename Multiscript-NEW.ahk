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
If GetKeyState("Numpad0")
{
  ToolTip, Recoil off, 1, 1, SplashTextOn
  AK:=false
  Semirifle:=false
  LR300:=false
  P250:=false
  Thompson:=false
  M249:=false
  Revolver:=false
  MP5:=false
  M92:=false
}

Return

;Select AK
~Numpad1::
If GetKeyState("Numpad1")
{
  ToolTip, AK Selected, 1, 1, SplashTextOn
  AK:=true
  Semirifle:=false
  LR300:=false
  P250:=false
  Thompson:=false
  M249:=false
  Revolver:=false
  MP5:=false
  M92:=false
}

Return

;Semirifle
If GetKeyState("Numpad2")
{
  ToolTip, Semirifle Selected, 1, 1, SplashTextOn
  AK:=false
  Semirifle:=true
  LR300:=false
  P250:=false
  Thompson:=false
  M249:=false
  Revolver:=false
  MP5:=false
  M92:=false
}

Return

;LR300
If GetKeyState("Numpad3")
{
  ToolTip, LR300 Selected, 1, 1, SplashTextOn
  AK:=false
  Semirifle:=false
  LR300:=true
  P250:=false
  Thompson:=false
  M249:=false
  Revolver:=false
  MP5:=false
  M92:=false
}

Return

;P250
If GetKeyState("Numpad4")
{
  ToolTip, P250 Selected, 1, 1, SplashTextOn
  AK:=false
  Semirifle:=false
  LR300:=false
  P250:=true
  Thompson:=false
  M249:=false
  Revolver:=false
  MP5:=false
  M92:=false
}

Return

;Thompson
If GetKeyState("Numpad5")
{
  ToolTip, Thompson Selected, 1, 1, SplashTextOn
  AK:=false
  Semirifle:=false
  LR300:=false
  P250:=false
  Thompson:=true
  M249:=false
  Revolver:=false
  MP5:=false
  M92:=false
}

Return

;M249
If GetKeyState("Numpad6")
{
  ToolTip, M249 Selected, 1, 1, SplashTextOn
  AK:=false
  Semirifle:=false
  LR300:=false
  P250:=false
  Thompson:=false
  M249:=true
  Revolver:=false
  MP5:=false
  M92:=false
}

Return

;Revolver
If GetKeyState("Numpad7")
{
  ToolTip, Revolver Selected, 1, 1, SplashTextOn
  AK:=false
  Semirifle:=false
  LR300:=false
  P250:=false
  Thompson:=false
  M249:=false
  Revolver:=true
  MP5:=false
  M92:=false
}

Return

;MP5
If GetKeyState("Numpad8")
{
  ToolTip, MP5 Selected, 1, 1, SplashTextOn
  AK:=false
  Semirifle:=false
  LR300:=false
  P250:=false
  Thompson:=false
  M249:=false
  Revolver:=false
  MP5:=true
  M92:=false
}

Return

;M92
If GetKeyState("Numpad9")
{
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
}

Return

;###########################################
;
;   Start recoil controller
;
;###########################################

~LCtrl & ~MButton::

Loop
{
 If GetKeyState("MButton", "LCtrl")
 {
  If semirifle
  {
  }
  If Revolver
  {
  }
 }
}

Return

~LCtrl & ~LButton::

Loop
{
  If GetKeyState("LButton", "LCtrl")
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
	   	   MouseXY(-3,
    }
    
    else
    If Semirifle
    {
    
    Sleep 25
    MouseXY(-3,10)
    
    }
    
    else
    If LR300
    {
    }
    
    else
    If P250
    {
    }
    
    else
    If Thompson
    {
    }
    
    else
    If M249
    {
    }
    
    else
    If Revolver
    {
    }
    
    else
    If MP5
    {
    }
    
    else
    If M92
    {
    }
  }
  else
  break
}

Return

MouseXY(x,y)
{
  DllCall("mouse_event",int,1,int,x,int,y,uint,0,uint,0)
}

Return

