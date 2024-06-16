
try {
  CapsLock & w::Send {Up}
  CapsLock & s::Send {Down}
  CapsLock & a::Send {Left}
  CapsLock & d::Send {Right}
} finally {
  SetCapsLockState, AlwaysOff
}

;塔瑞斯世界
global EnabelTRSAutoAtk := true
#If WinActive("塔瑞斯世界")
F3::
	Loop {
		if (GetKeyState("z"))
			break
	  if WinActive("塔瑞斯世界") {
			Send, {1}
			Random, RandOut, 40, 700 
			Sleep,  RandOut
			Send, 34
		} else {
			break
		}
	}
return
#If