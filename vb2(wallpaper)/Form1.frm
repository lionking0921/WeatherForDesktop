VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  '窗口缺省
   Visible         =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   4080
      Top             =   2520
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   855
      Left            =   2400
      TabIndex        =   1
      Top             =   1440
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   975
      Left            =   240
      TabIndex        =   0
      Top             =   1200
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Const def_MessageA = &H52C '0x52c
Private Const def_MessageB = &H3E8 '0x3e8

Private Desktop As Long
'Private Declare Function PostMessage Lib "user32" Alias "PostMessageA" (ByVal Hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Const WM_KEYDOWN = &H100




Private Declare Function EnumWindows Lib "user32" (ByVal lpEnumFunc As Long, ByVal lParam As Long) As Long
Private Declare Function ShowWindow Lib "user32" (ByVal Hwnd As Long, ByVal nCmdShow As Long) As Long
Private Declare Function SetParent Lib "user32" (ByVal hWndChild As Long, ByVal hWndNewParent As Long) As Long
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long

Private Declare Function SendMessageTimeout Lib "user32" Alias "SendMessageTimeoutA" (ByVal Hwnd As Long, ByVal msg As Long, ByVal wParam As Long, ByVal lParam As Long, ByVal fuFlags As Long, ByVal uTimeout As Long, lpdwResult As Long) As Long


Function GetWindowHwnd(ByVal WindowClassVsWindowText As String) As Long '获窗口句柄 可以是：  窗口名 或者是 窗口类名
 
 
Dim stro As String
 
stro = WindowClassVsWindowText
 
   Dim chwnd As Long
       chwnd = FindWindow(vbNullString, WindowClassVsWindowText)
       
   If chwnd = 0 Then
       chwnd = FindWindow(WindowClassVsWindowText, vbNullString)
   End If
   
   GetWindowHwnd = chwnd
   
End Function
'消息会生成两个WorkerW 顶级窗口 所以要枚举不包含“SHELLDLL_DefView”这个的 WorkerW 窗口 隐藏掉。
Private Function BackDesktop() As Long
Dim Desktop_h As Long
Desktop_h = FindWindow("Progman", "Program Manager") '取得桌面的顶级窗口
Dim result As Long
result = 0&
Dim state As Long
state = 0
state = SendMessageTimeout(Desktop_h, &H52C, 0&, 0&, 0, &H328, VarPtr(result))
If state <> 1 Then MsgBox "创建壁纸窗体时发生异常！"
'VarPtr(Workerw) = 0&

Workerw = 0&
' Win32.User32.ShowWindow(workerw, Win32.User32.SW_HIDE);
'Call EnumWindows(AddressOf EnumWindowsProcA, 0&)



EnumWindows AddressOf EnumWindowsProcA, 0&
BackDesktop = Desktop_h
End Function


Private Sub Command1_Click()
Dim i As Integer

For i = 1 To 2

Dim Hwnd As Long


Hwnd = GetWindowHwnd("Form2") 'Set hwnd

'設置窗體
           Desktop = BackDesktop
'將自身設定為父窗口
            SetParent Hwnd, Desktop
'模擬刷新桌面
            'Call win32api.ShowWindow(hwnd, win32api.SW_HIDE)
            'Call win32api.ShowWindow(hwnd, win32api.SW_SHOW)

'Dim Desktop As Long
'查找桌面的句柄:一个语句搞定
'Desktop = FindWindow("Progman", "Program Manager")
'向桌面模拟发送按键F5(刷新)
'PostMessage Desktop, WM_KEYDOWN, vbKeyF5, 0

Form2.Show (0)

Next i



End Sub

Private Sub Command2_Click()
Form2.Hide
Unload Form2
End Sub


Private Sub Timer1_Timer()

Static iCount As Integer

iCount = iCount + 1

If iCount = 5 Then
Call Command1_Click

ElseIf iCount = 10 Then
Call Command2_Click

ElseIf iCount = 15 Then
Call Command1_Click
iCount = 0
Timer1.Interval = 0
End If

End Sub
