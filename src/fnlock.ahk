#Requires AutoHotKey v2.0
#SingleInstance
; See keypresses
;FN + ESC = FF + 27?
InstallKeybdHook True
#UseHook
#vkFF::MsgBox("You pressed fn", "Key Press")
#Escape::MsgBox("You pressed esc", "Key Press")
#UseHook False