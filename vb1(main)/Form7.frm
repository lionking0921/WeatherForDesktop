VERSION 5.00
Begin VB.Form Form7 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "天气"
   ClientHeight    =   2355
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5670
   Icon            =   "Form7.frx":0000
   LinkTopic       =   "Form7"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2355
   ScaleWidth      =   5670
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer1 
      Left            =   240
      Top             =   1920
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
      Left            =   1920
      TabIndex        =   1
      Top             =   1440
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "您更改了相关设置，系统正在更新天气信息，请稍候..."
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   4935
   End
End
Attribute VB_Name = "Form7"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form7.Hide
Unload Form7
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
iCount = 0
Timer1.Interval = 0
End If
End Sub
