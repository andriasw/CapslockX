﻿
If(!CapslockX)
    ExitApp
Return


#IfWinActive .*的资料 ahk_class TXGuiFoundation ahk_exe QQ.exe
    F2:: ; 改备注
        Send {Tab 10}{Enter}
        return

#IfWinActive .*\d+个会话 ahk_class TXGuiFoundation ahk_exe QQ.exe
    F2:: ; 看资料
        Send +{Tab 3}{Enter}
        return

    !f:: ; 点开左上角搜索
        CoordMode, Mouse, Client
        Click 32, 32
        return

    !w:: ; 开出小窗口
        CoordMode, Mouse, Client
        MouseClickDrag, Left, 32, 128, 256, 128, 0
        return

    ; 接收文件
    !r::
        Send 1!s+{Tab 9}{Space}!s
        Return
        
#IfWinActive ahk_class TXGuiFoundation ahk_exe QQ.exe
    ; mute
    !m::
        Send {RButton}{Down 2}{Right}{Up}{Enter}
        MouseMove, 0, -86, 0, R
        Return
    ; 接收文件
    !r::
        Send 1!s+{Tab 8}{Space}!s
        Return

    F2:: ; 看资料
        Send +{Tab 2}{Enter}
        return