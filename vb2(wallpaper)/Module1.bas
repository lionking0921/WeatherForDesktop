Attribute VB_Name = "Module1"
Private Declare Function EnumWindows Lib "user32" (ByVal lpEnumFunc As Long, ByVal lParam As Long) As Long
Private Declare Function ShowWindow Lib "user32" (ByVal Hwnd As Long, ByVal nCmdShow As Long) As Long
Private Declare Function SetParent Lib "user32" (ByVal hWndChild As Long, ByVal hWndNewParent As Long) As Long
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long

Private Declare Function SendMessageTimeout Lib "user32" Alias "SendMessageTimeoutA" (ByVal Hwnd As Long, ByVal msg As Long, ByVal wParam As Long, ByVal lParam As Long, ByVal fuFlags As Long, ByVal uTimeout As Long, lpdwResult As Long) As Long
Private Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hWnd1 As Long, ByVal hWnd2 As Long, ByVal lpsz1 As String, ByVal lpsz2 As String) As Long



Public Workerw As Long, Tx As Long, Tx_B As Boolean
Public Function EnumWindowsProcA(ByVal Hwnd As Long, ByVal lParam As Long) As Boolean
If FindWindowEx(Hwnd, 0&, "SHELLDLL_DefView", "") <> 0& Then
Workerw = FindWindowEx(&O0, Hwnd, "WorkerW", "")
'Call win32api.ShowWindow(Workerw, SW_SHOW)
ShowWindow Workerw, SW_HIDE
End If
'特殊处理：
'__________关于腾讯桌面整理导致的问题
If Not Tx_B Then
Tx = FindWindowEx(Hwnd, 0&, "TXMiniSkin", "桌面整理")
If Tx <> 0 Then Call win32api.ShowWindow(Tx, SW_HIDE): Tx_B = True
End If
EnumWindowsProcA = True
End Function


