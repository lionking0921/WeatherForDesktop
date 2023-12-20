VERSION 5.00
Begin VB.Form Form6 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "动态天气壁纸"
   ClientHeight    =   11310
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   20250
   Icon            =   "Form6.frx":0000
   LinkTopic       =   "Form6"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11310
   ScaleWidth      =   20250
   StartUpPosition =   3  '窗口缺省
   Begin VB.CheckBox Check1 
      BackColor       =   &H00000000&
      Caption         =   " 软件启动时       自动开启壁纸"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1095
      Left            =   13080
      TabIndex        =   7
      Top             =   3720
      Width           =   4455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "返回"
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
      Left            =   17760
      TabIndex        =   5
      Top             =   3720
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H000000FF&
      Caption         =   "关闭壁纸"
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
      Left            =   6600
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   3720
      Width           =   2655
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0000FF00&
      Caption         =   "开启壁纸"
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
      Left            =   9840
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   3720
      Width           =   2655
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚雪天"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   9
      Left            =   16200
      TabIndex        =   18
      Top             =   10440
      Width           =   3375
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚雨天"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   8
      Left            =   12600
      TabIndex        =   17
      Top             =   10440
      Width           =   3375
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚阴天"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   7
      Left            =   9000
      TabIndex        =   16
      Top             =   10440
      Width           =   3375
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚多云"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   6
      Left            =   5400
      TabIndex        =   15
      Top             =   10440
      Width           =   3375
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚晴天"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   5
      Left            =   1800
      TabIndex        =   14
      Top             =   10440
      Width           =   3375
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   9
      Left            =   16080
      Picture         =   "Form6.frx":1084A
      Stretch         =   -1  'True
      Top             =   8040
      Width           =   3615
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   8
      Left            =   12480
      Picture         =   "Form6.frx":6E779
      Stretch         =   -1  'True
      Top             =   8040
      Width           =   3615
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   7
      Left            =   8880
      Picture         =   "Form6.frx":B83D1
      Stretch         =   -1  'True
      Top             =   8040
      Width           =   3615
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   6
      Left            =   5280
      Picture         =   "Form6.frx":10E29D
      Stretch         =   -1  'True
      Top             =   8040
      Width           =   3615
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   5
      Left            =   1680
      Picture         =   "Form6.frx":1681D3
      Stretch         =   -1  'True
      Top             =   8040
      Width           =   3615
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   0
      Left            =   1680
      Picture         =   "Form6.frx":23D5E4
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   3615
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白昼雪天"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   4
      Left            =   16200
      TabIndex        =   13
      Top             =   7440
      Width           =   3375
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   4
      Left            =   16080
      Picture         =   "Form6.frx":28526B
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   3615
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白昼雨天"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   3
      Left            =   12600
      TabIndex        =   12
      Top             =   7440
      Width           =   3375
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   3
      Left            =   12480
      Picture         =   "Form6.frx":2D3240
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   3615
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白昼阴天"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   2
      Left            =   9000
      TabIndex        =   11
      Top             =   7440
      Width           =   3375
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   2
      Left            =   8880
      Picture         =   "Form6.frx":31B923
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   3615
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白昼多云"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   1
      Left            =   5400
      TabIndex        =   10
      Top             =   7440
      Width           =   3375
   End
   Begin VB.Image Image1 
      Height          =   2295
      Index           =   1
      Left            =   5280
      Picture         =   "Form6.frx":37AA04
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   3615
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白昼晴天"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   0
      Left            =   1800
      TabIndex        =   9
      Top             =   7440
      Width           =   3375
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "效果展示"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   3135
      Left            =   480
      TabIndex        =   8
      Top             =   6240
      Width           =   735
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "当前状态：关闭"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   480
      TabIndex        =   6
      Top             =   3960
      Width           =   5655
   End
   Begin VB.Label Label3 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      Caption         =   $"Form6.frx":3EB0C2
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   360
      TabIndex        =   3
      Top             =   2520
      Width           =   19335
   End
   Begin VB.Label Label2 
      BackColor       =   &H0000FFFF&
      BackStyle       =   0  'Transparent
      Caption         =   $"Form6.frx":3EB1DC
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1095
      Left            =   360
      TabIndex        =   2
      Top             =   1440
      Width           =   19335
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "动态天气壁纸"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   7920
      TabIndex        =   0
      Top             =   360
      Width           =   4575
   End
   Begin VB.Image Image2 
      Height          =   11295
      Left            =   0
      Picture         =   "Form6.frx":3EB2B6
      Stretch         =   -1  'True
      Top             =   0
      Width           =   20295
   End
End
Attribute VB_Name = "Form6"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Check1_Click()
Dim ss As String
If Check1.Value = 1 Then
ss = "1"
Else
ss = "0"
End If
Open "c:\weather\wp\wp.txt" For Output As #8
Print #8, ss & vbCrLf & ""
Close #8
End Sub

Private Sub Command1_Click()

Dim comn As String
Open "c:\weather\wp\comm.txt" For Input As #2
Input #2, comn
Close #2


If Val(comn) = 0 Then
Dim RetVall
RetVall = Shell("C:\weather\dwp.exe", 1)
Label4.Caption = "当前状态：开启"
Else
Form13.Show (0)
End If





End Sub

Private Sub Command2_Click()
If Label4.Caption = "当前状态：开启" Then
Open "c:\weather\wp\ren.txt" For Output As #4
Print #4, "2" & vbCrLf & ""
Close #4
End If
Label4.Caption = "当前状态：关闭"
End Sub

Private Sub Command3_Click()
Form6.Hide
Unload Form6
End Sub


Private Sub Form_Load()

Dim com As String
Open "c:\weather\wp\comm.txt" For Input As #1
Input #1, com
Close #1


If Val(com) = 0 Then
Label4.Caption = "当前状态：关闭"
Else
Label4.Caption = "当前状态：开启"
End If

Dim che As String
Open "c:\weather\wp\wp.txt" For Input As #11
Input #11, che
Close #11

If che = "1" Then
Check1.Value = 1
End If

End Sub
