#Requires AutoHotkey v2.0

try {
  CapsLock & w::Send "{Up}"
  CapsLock & s::Send "{Down}"
  CapsLock & a::Send "{Left}"
  CapsLock & d::Send "{Right}"
} finally {
  SetCapsLockState "AlwaysOff"
}

AppName := ""
AppPID := 0
F4::{
	MouseGetPos , , &AppPID
	global AppName := WinGetTitle(AppPID)
	TrayTip "AHK Change PID", "Current Window PID=" AppPID " Title=" AppName
}

F3::{
;塔瑞斯世界
	if WinActive(AppName) {
		Loop {
			if (GetKeyState("z"))
				break
			if WinActive(AppName) {
				Send "{1}"
				RandOut := Random(40, 700)
				Sleep  RandOut
				Send "34"
			} else {
				break
			}
		}
	}
}
