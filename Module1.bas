Attribute VB_Name = "Module1"
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long 'ÉùÃ÷API£ºSetWindowLong
Public Const GWL_STYLE = (-16)
Public Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hwnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Public Const WS_EX_LAYERED = &H80000
Public Const GWL_EXSTYLE = (-20)
Public Const LWA_ALPHA = &H2
Public Const LWA_COLORKEY = &H1
Public Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hwnd As Long, ByVal nIndex As Long) As Long
Public Function frmlad(fhwnd)
Dim sty As Long
sty = GetWindowLong(fhwnd, GWL_EXSTYLE)
sty = sty Or WS_EX_LAYERED
SetWindowLong fhwnd, GWL_EXSTYLE, sty
SetLayeredWindowAttributes fhwnd, 0, 175, LWA_ALPHA
SetWindowPos fhwnd, -1, 0, 0, 0, 0, 3
End Function


