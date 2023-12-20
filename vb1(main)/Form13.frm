VERSION 5.00
Begin VB.Form Form13 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "动态天气壁纸"
   ClientHeight    =   2340
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5550
   Icon            =   "Form13.frx":0000
   LinkTopic       =   "Form13"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2340
   ScaleWidth      =   5550
   StartUpPosition =   3  '窗口缺省
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
      Left            =   1860
      TabIndex        =   1
      Top             =   1320
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Left            =   0
      Top             =   2280
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "请勿重复启动！"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   4335
   End
End
Attribute VB_Name = "Form13"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form13.Hide
Unload Form13
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
Form13.Hide
Unload Form13
End If
End Sub


