VERSION 5.00
Begin VB.Form Form12 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "消息"
   ClientHeight    =   2565
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6900
   Icon            =   "Form12.frx":0000
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2565
   ScaleWidth      =   6900
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer1 
      Left            =   0
      Top             =   2160
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定3"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2520
      TabIndex        =   1
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "点击后30秒内不能再次点击！"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   21.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   5895
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form12.Hide
Unload Form12
End Sub

Private Sub Form_Load()
Timer1.Interval = 1000
Me.Left = (Screen.Width - Me.Width) / 2
Me.Top = (Screen.Height - Me.Height) / 2
End Sub

Private Sub Timer1_Timer()
Static iCount As Integer
iCount = iCount + 1
If iCount = 1 Then
Command1.Caption = "确定2"
ElseIf iCount = 2 Then
Command1.Caption = "确定1"
ElseIf iCount = 3 Then
iCount = 0
Timer1.Interval = 0
Form12.Hide
Unload Form12
End If
End Sub

