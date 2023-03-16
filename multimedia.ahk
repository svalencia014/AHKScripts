#Requires AutoHotkey v2.0
Media_Play_Pause::
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
#Media_Play_Pause::{
    MsgBox("Exiting", "Multimedia Script")
    ExitApp 0
}