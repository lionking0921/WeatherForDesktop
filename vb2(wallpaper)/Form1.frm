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
   StartUpPosition =   3  '����ȱʡ
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


Function GetWindowHwnd(ByVal WindowClassVsWindowText As String) As Long '�񴰿ھ�� �����ǣ�  ������ ������ ��������
 
 
Dim stro As String
 
stro = WindowClassVsWindowText
 
   Dim chwnd As Long
       chwnd = FindWindow(vbNullString, WindowClassVsWindowText)
       
   If chwnd = 0 Then
       chwnd = FindWindow(WindowClassVsWindowText, vbNullString)
   End If
   
   GetWindowHwnd = chwnd
   
End Function
'��Ϣ����������WorkerW �������� ����Ҫö�ٲ�������SHELLDLL_DefView������� WorkerW ���� ���ص���
Private Function BackDesktop() As Long
Dim Desktop_h As Long
Desktop_h = FindWindow("Progman", "Program Manager") 'ȡ������Ķ�������
Dim result As Long
result = 0&
Dim state As Long
state = 0
state = SendMessageTimeout(Desktop_h, &H52C, 0&, 0&, 0, &H328, VarPtr(result))
If state <> 1 Then MsgBox "������ֽ����ʱ�����쳣��"
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

'�O�ô��w
           Desktop = BackDesktop
'�������O���鸸����
            SetParent Hwnd, Desktop
'ģ�Mˢ������
            'Call win32api.ShowWindow(hwnd, win32api.SW_HIDE)
            'Call win32api.ShowWindow(hwnd, win32api.SW_SHOW)

'Dim Desktop As Long
'��������ľ��:һ�����㶨
'Desktop = FindWindow("Progman", "Program Manager")
'������ģ�ⷢ�Ͱ���F5(ˢ��)
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
