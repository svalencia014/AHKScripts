#Requires AutoHotkey v2.0
Media_Play_Pause:: ;Play/Pause button
KeyMedia(ThisHotKey)
{
    static mpp_presses := 0
    if mpp_presses > 0 ;SetTimer already started
    {
        mpp_presses += 1
        return
    }
    mpp_presses := 1
    SetTimer After400, -400 ;Wait for more presses within 400ms
    After400()
    {
        if mpp_presses = 1
        {
            Send("{Media_Play_Pause}")
            Reload
        }
        else if mpp_presses = 2
        {
            Send("{Media_Next}")
            Reload
        }
        else if mpp_presses = 3
        {
            Send("{Media_Prev}")
            Reload
        }
    }
}
#Media_Play_Pause::{ ;Windows/Command + Play/Pause
    MsgBox("Exiting", "Multimedia Script")
    ExitApp 0
}

#NumpadMult::KeyMedia(A_ThisHotkey) ;Windows/command + numpad asterisk

#+NumpadMult::{ ;Windows/Command + shift + numpad asterisk
    MsgBox("Exiting", "Multimedia Script")
    ExitApp 0
}

#NumpadAdd::Volume_Up ;Windows/command + numpad plus
#NumpadSub::Volume_Down ;Windows/command + numpad minus
