VERSION 5.00
Begin VB.Form Form5 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "请确认"
   ClientHeight    =   3015
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5370
   Icon            =   "Form5.frx":0000
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   5370
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer1 
      Left            =   4800
      Top             =   1080
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   3000
      TabIndex        =   4
      Top             =   1680
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H000000FF&
      Caption         =   "确定"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "此软件吗？"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2880
      TabIndex        =   2
      Top             =   360
      Width           =   2535
   End
   Begin VB.Label Label2 
      Caption         =   "卸载"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   855
      Left            =   1200
      TabIndex        =   1
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "确定"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   1095
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

Dim comnn As String
Open "c:\weather\wp\comm.txt" For Input As #1
Input #1, comnn
Close #1

If Val(comnn) = 1 Then
Open "c:\weather\wp\ren.txt" For Output As #2
Print #2, "2" & vbCrLf & ""
Close #2
End If
Timer1.Interval = 2000
Form9.Hide
Form1.Hide
Form2.Hide
Form3.Hide
Form4.Hide
Form5.Hide
Form6.Hide
Form7.Hide
Form8.Hide
Form10.Hide
Form11.Hide
Form12.Hide
Form13.Hide
End Sub

Private Sub Command2_Click()
Form5.Hide
End Sub

Private Sub Form_Load()
Me.Left = (Screen.Width - Me.Width) / 2
Me.Top = (Screen.Height - Me.Height) / 2
End Sub

Private Sub Timer1_Timer()
Dim RetVall
RetVall = Shell("C:\weather\kill.bat", 1)
Unload Form9
Unload Form1
Unload Form2
Unload Form3
Unload Form4
Unload Form6
Unload Form7
Unload Form8
Unload Form10
Unload Form11
Unload Form12
Unload Form13
Timer1.Interval = 0
Unload Form5
End Sub
