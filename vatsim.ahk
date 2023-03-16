#Requires AutoHotkey v2.0

RAlt::F22 ;Right Alt -> F22
Pause::{
    Send(".sr")
}
LAlt & RAlt::{ ;Right AND left alt together
    Reload
}
#Pause:: { ;Windows key pause
    MsgBox("Exiting App", "VATSIM Script")
    ExitApp 0
}