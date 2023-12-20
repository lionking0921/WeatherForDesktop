VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "设置"
   ClientHeight    =   9570
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   17070
   Icon            =   "Form2.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9570
   ScaleWidth      =   17070
   StartUpPosition =   3  '窗口缺省
   Begin VB.TextBox Text2 
      Height          =   270
      Left            =   15600
      TabIndex        =   31
      Top             =   10440
      Width           =   495
   End
   Begin VB.CheckBox Check4 
      BackColor       =   &H00000000&
      Caption         =   "个性标题随地名变化"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   11640
      TabIndex        =   30
      Top             =   1680
      Width           =   2175
   End
   Begin VB.ComboBox Combo4 
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
      ItemData        =   "Form2.frx":1084A
      Left            =   14160
      List            =   "Form2.frx":10854
      Style           =   2  'Dropdown List
      TabIndex        =   29
      Top             =   6120
      Width           =   1695
   End
   Begin VB.ComboBox Combo3 
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
      ItemData        =   "Form2.frx":10864
      Left            =   14160
      List            =   "Form2.frx":10871
      Style           =   2  'Dropdown List
      TabIndex        =   27
      Top             =   5280
      Width           =   1695
   End
   Begin VB.ComboBox Combo2 
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
      ItemData        =   "Form2.frx":10885
      Left            =   13680
      List            =   "Form2.frx":108A7
      Style           =   2  'Dropdown List
      TabIndex        =   26
      Top             =   3600
      Width           =   855
   End
   Begin VB.ComboBox Combo1 
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
      ItemData        =   "Form2.frx":108C9
      Left            =   12600
      List            =   "Form2.frx":108EB
      Style           =   2  'Dropdown List
      TabIndex        =   25
      Top             =   3600
      Width           =   855
   End
   Begin VB.Timer Timer2 
      Left            =   17040
      Top             =   11040
   End
   Begin VB.CommandButton Command7 
      Caption         =   "定位"
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
      Left            =   9600
      TabIndex        =   18
      Top             =   2760
      Width           =   1575
   End
   Begin VB.TextBox Text9 
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
      Left            =   4440
      TabIndex        =   17
      Top             =   2760
      Width           =   5055
   End
   Begin VB.TextBox Text7 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   16320
      TabIndex        =   15
      Top             =   10320
      Width           =   495
   End
   Begin VB.CheckBox Check3 
      BackColor       =   &H00000000&
      Caption         =   "自动刷新"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   13800
      TabIndex        =   12
      Top             =   2520
      Value           =   1  'Checked
      Width           =   2055
   End
   Begin VB.CheckBox Check2 
      BackColor       =   &H00000000&
      Caption         =   "黑色背景"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   13800
      TabIndex        =   11
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Timer Timer1 
      Left            =   17040
      Top             =   10200
   End
   Begin VB.TextBox Text6 
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
      Left            =   14520
      TabIndex        =   9
      Top             =   10920
      Width           =   2415
   End
   Begin VB.TextBox Text5 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Left            =   17520
      TabIndex        =   7
      Top             =   10080
      Width           =   255
   End
   Begin VB.TextBox Text4 
      Appearance      =   0  'Flat
      BackColor       =   &H00E0E0E0&
      Height          =   375
      Left            =   17520
      TabIndex        =   6
      Top             =   9600
      Width           =   255
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00000000&
      Caption         =   "开机自启"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   11640
      TabIndex        =   5
      Top             =   2520
      Value           =   1  'Checked
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
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
      Height          =   855
      Left            =   9120
      TabIndex        =   4
      Top             =   8040
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "保存"
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
      Left            =   5880
      TabIndex        =   3
      Top             =   8040
      Width           =   2055
   End
   Begin VB.TextBox Text1 
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
      Left            =   3360
      TabIndex        =   2
      Top             =   1680
      Width           =   7785
   End
   Begin VB.Label note2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1815
      Left            =   11760
      TabIndex        =   37
      Top             =   6960
      Width           =   4095
   End
   Begin VB.Label note1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   1695
      Left            =   5880
      TabIndex        =   36
      Top             =   6120
      Width           =   5295
   End
   Begin VB.Label Label22 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "图示定位点可能存在偏差,仅供参考"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   1320
      TabIndex        =   35
      Top             =   7200
      Width           =   1935
   End
   Begin VB.Shape pp 
      BorderColor     =   &H000000FF&
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   120
      Left            =   15720
      Top             =   9840
      Width           =   120
   End
   Begin VB.Label Label21 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "自然资源部 监制"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1320
      TabIndex        =   34
      Top             =   8520
      Width           =   1935
   End
   Begin VB.Label Label20 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "审图号GS(2016)1553号"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   1320
      TabIndex        =   33
      Top             =   7920
      Width           =   1935
   End
   Begin VB.Label Label19 
      BackColor       =   &H00000000&
      Height          =   495
      Left            =   1560
      TabIndex        =   32
      Top             =   3720
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   5160
      Left            =   1320
      Picture         =   "Form2.frx":1090D
      Stretch         =   -1  'True
      Top             =   3720
      Width           =   4410
   End
   Begin VB.Label Label9 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "预报模式:"
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
      Left            =   11760
      TabIndex        =   28
      Top             =   6120
      Width           =   2415
   End
   Begin VB.Label Label15 
      BackStyle       =   0  'Transparent
      Caption         =   "状态:"
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
      Height          =   615
      Left            =   6600
      TabIndex        =   24
      Top             =   5325
      Width           =   1575
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "等待定位"
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
      Height          =   615
      Left            =   7920
      TabIndex        =   23
      Top             =   5325
      Width           =   2895
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF80&
      Height          =   735
      Left            =   7920
      TabIndex        =   22
      Top             =   4605
      Width           =   2895
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF80&
      Height          =   735
      Left            =   7920
      TabIndex        =   21
      Top             =   3900
      Width           =   2895
   End
   Begin VB.Label Label11 
      BackStyle       =   0  'Transparent
      Caption         =   "纬度:"
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
      Height          =   735
      Left            =   6600
      TabIndex        =   20
      Top             =   4605
      Width           =   1335
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "经度:"
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
      Height          =   615
      Left            =   6600
      TabIndex        =   19
      Top             =   3900
      Width           =   1335
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "真实地理位置"
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
      Left            =   1200
      TabIndex        =   16
      Top             =   2880
      Width           =   3135
   End
   Begin VB.Label Label10 
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "预报时长:"
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
      Left            =   11760
      TabIndex        =   14
      Top             =   5280
      Width           =   2415
   End
   Begin VB.Label Label7 
      BackStyle       =   0  'Transparent
      Caption         =   "分钟"
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
      Height          =   615
      Left            =   14640
      TabIndex        =   13
      Top             =   3600
      Width           =   1095
   End
   Begin VB.Label Label8 
      BackStyle       =   0  'Transparent
      Caption         =   "自动刷新1次"
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
      Height          =   615
      Left            =   11760
      TabIndex        =   10
      Top             =   4440
      Width           =   2775
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "每"
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
      Height          =   615
      Left            =   11640
      TabIndex        =   8
      Top             =   3600
      Width           =   735
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "个性标题"
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
      Height          =   615
      Left            =   1200
      TabIndex        =   1
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "设置"
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
      Left            =   6960
      TabIndex        =   0
      Top             =   480
      Width           =   3135
   End
   Begin VB.Image Image2 
      Height          =   9615
      Left            =   0
      Picture         =   "Form2.frx":26F1D
      Stretch         =   -1  'True
      Top             =   0
      Width           =   17160
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim co1, co2, su As Integer
Dim k1, k2 As String

Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" _
(ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, _
ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Const SW_SHOW = 5
Dim f As Integer
Dim urlbb As String
Private Function loa()
Form1.Hide
Form2.Hide
Unload Form1
Unload Form2
'msgbox是模式窗口1
Open "c:\weather\save.txt" For Output As #44
Print #44, "1"
Close #44
Form1.Show (0)
End Function
Private Function setpp(lon111, lat111)
Dim thta, R, pi, xx, yy As Single

pi = 3.1415926

'If Val(lon111) >= 95 Then
'R = 3900 + (50 - Val(lat111)) * 100
'xx = R * Cos(thta) + 780
'yy = (R - 900) * Sin(thta) + 4140
thta = (Val(lon111) - 104.4) / 180 * pi
R = 4070 + (50 - Val(lat111)) * 100
xx = R * Cos(thta) + 220
If Val(lon111) >= 95 Then
thta = (Val(lon111) - 110) / 180 * pi
R = 3900 + (50 - Val(lat111)) * 100
yy = (R - 900) * Sin(thta) + 4140
'东北地区修正
If Val(lat111) >= 44 And Val(lon111) >= 122.5 Then
yy = yy + Sin(thta) * 500
End If

Else
thta = (Val(lon111) - 104.4) / 180 * pi
R = 4070 + (50 - Val(lat111)) * 100
yy = (R - 900) * Sin(thta) + 3600
'yy = (R - 900) * Sin(thta) + 3650

End If
'Else
'thta = (Val(lon111) - 80) / 180 * pi
'R = 4070 + (50 - Val(lat111)) * 100
'xx = (R - 300) * Cos(thta) + 950
'yy = (R - 500) * Sin(thta) + 4200
'R = 3900 + (50 - Val(lat111)) * 100
'xx = R * Cos(thta) + 610
'yy = (R - 900) * Sin(thta) + 1500
'End If

'西北地区修正
If Val(lat111) >= 39 And Val(lon111) <= 104 Then
yy = yy + Sin(thta) * 550
If Val(lon111) > 83 Then
xx = xx - 60
Else
xx = xx + 100
yy = yy + 80
End If
End If


pp.Left = yy
pp.Top = xx
End Function

Private Sub Check4_Click()
If Check4.Value = 1 Then
Dim mylo As String
Open "c:\weather\location\myloc.txt" For Input As #13
Input #13, mylo
Close #13
Text1.Text = mylo
End If
End Sub



Private Sub Command1_Click()

co1 = Val(Combo1.Text)
co2 = Val(Combo2.Text)
Text6.Text = co1 * 10 + co2

If Val(Text6.Text) >= 1 Then


If Check1.Value = 1 Then
Text5.Text = "T"
Else
Text5.Text = "F"
End If



If Check2.Value = 1 Then
Text4.Text = "1"
Else
Text4.Text = "0"
End If



If Check3.Value = 1 Then
Text7.Text = "T"
Else
Text7.Text = "F"
End If


If Check4.Value = 1 Then
Text2.Text = "T"
Else
Text2.Text = "F"
End If


Dim T8 As String

If Combo3.Text = "当天" Then
T8 = "1"
ElseIf Combo3.Text = "4天" Then
T8 = "4"
Else
T8 = "7"
End If


Open "c:\weather\info.txt" For Output As #4
Print #4, Text1.Text & vbCrLf & Text6.Text & vbCrLf & Text4.Text & vbCrLf & Text5.Text & vbCrLf & Text7.Text & vbCrLf & T8 & vbCrLf & Text2.Text & ""
Close #4



If Text9.Text = k1 And Combo4.Text = k2 Then

loa

Else

If Label14.Caption <> "定位成功" Then
MsgBox "您尚未完成定位或定位失败，请点击“定位”按钮进行定位。", vbExclamation, "请先定位"
Else


Dim mmm As String
If Combo4.Text = "数值" Then
mmm = "1"
Else
mmm = "0"
End If

Open "c:\weather\mod.txt" For Output As #8
Print #8, mmm
Close #8

Dim p1, p2, p3, p4, p5, p6, p7, p8, p9, p0 As String
Open "C:\weather\wea.txt" For Input As #10
Input #10, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p0
Close #10

Dim cod, cod1 As String
cod1 = Mid(p0, 2, Len(p0) - 3)

Dim enc(11) As String

enc(0) = Mid(cod1, 13, 1)
enc(1) = Mid(cod1, 2, 1)
enc(2) = Mid(cod1, 6, 1)
enc(3) = Mid(cod1, 7, 1)
enc(4) = Mid(cod1, 1, 1)
enc(5) = Mid(cod1, 12, 1)
enc(6) = Mid(cod1, 3, 1)
enc(7) = Mid(cod1, 10, 1)
enc(8) = Mid(cod1, 4, 1)
enc(9) = Mid(cod1, 9, 1)
enc(10) = Mid(cod1, 15, 1)

Dim keyw As String
keyw = ""
For i = 0 To 10
If enc(i) = "0" Then
keyw = keyw + "c4hfoq"
ElseIf enc(i) = "1" Then
keyw = keyw + "rhuw"
ElseIf enc(i) = "2" Then
keyw = keyw + "q9cn6"
ElseIf enc(i) = "3" Then
keyw = keyw + "qp34ox"
ElseIf enc(i) = "4" Then
keyw = keyw + "nieol"
ElseIf enc(i) = "5" Then
keyw = keyw + "mo1aq7"
ElseIf enc(i) = "6" Then
keyw = keyw + "alzmc"
ElseIf enc(i) = "7" Then
keyw = keyw + "i0vm"
ElseIf enc(i) = "8" Then
keyw = keyw + "e5p2y"
ElseIf enc(i) = "9" Then
keyw = keyw + "zx8c"
End If
Next i
keyw = keyw + ";"

Dim st, dk As String
Open "C:\weather\net.txt" For Input As #11
Input #11, st, dk
Close #11

Open "c:\weather\net.txt" For Output As #9
Print #9, dk & vbCrLf & keyw & vbCrLf & ""
Close #9

Dim RetVall
RetVall = Shell("C:\weather\weather.exe", b)


Form2.Hide


Open "c:\weather\rename.txt" For Output As #7
Print #7, Text9.Text
Close #7


Open "c:\weather\longitude.txt" For Output As #8
Print #8, Label12.Caption
Close #8


Open "c:\weather\latitude.txt" For Output As #9
Print #9, Label13.Caption
Close #9


Timer1.Interval = 3000
Form7.Show (0)
Form1.Caption = "天气（正在刷新…）"
Form9.Caption = "菜单（正在加载…）"
End If





End If


Else


MsgBox "自动刷新频率不能为0！如需关闭此功能，请取消勾选上方的“自动刷新”选项。", vbExclamation, "非法频率"





End If




End Sub

Private Sub Command2_Click()
Form2.Hide
Unload Form2
End Sub


Private Sub Command7_Click()
If Label14.Caption <> "正在定位" And Label14.Caption <> "定位成功" Then
Dim tl As String
tl = Text9.Text

If InStr(1, tl, " ") = 0 And InStr(1, tl, "a") = 0 And InStr(1, tl, "b") = 0 And InStr(1, tl, "d") = 0 And InStr(1, tl, "s") = 0 And InStr(1, tl, "0") = 0 And InStr(1, tl, "1") = 0 And InStr(1, tl, "2") = 0 And InStr(1, tl, "3") = 0 And InStr(1, tl, "4") = 0 And InStr(1, tl, "5") = 0 And InStr(1, tl, "6") = 0 And InStr(1, tl, "7") = 0 And InStr(1, tl, "8") = 0 And InStr(1, tl, "9") = 0 And Len(tl) > 1 Then

Text9.Locked = True

Open "c:\weather\location\name.txt" For Output As #1
Print #1, Text9.Text
Close #1
Dim RetVal
RetVal = Shell("C:\weather\location\locate.exe", b)

Label12.Caption = "正在加载"
Label13.Caption = "正在加载"
Label14.Caption = "正在定位"

Timer2.Interval = 500

Else
MsgBox "请正确输入地名！不可含有空格或数字，同时地名长度不少于2个字符。", vbExclamation, "非法地名"
End If

End If
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
Call Command7_Click
End If
If KeyAscii = 27 Then
Call Command2_Click
End If
If KeyAscii = 32 Then
Call Command1_Click
End If
End Sub

Private Sub Form_Load()

Dim location, a, b, c, m As String
Open "c:\weather\info.txt" For Input As #1
Input #1, location, a, b, c, d, m, tit
Close #1

Dim k As String
Open "c:\weather\mod.txt" For Input As #11
Input #11, k
Close #11

e = Val(a)
f = Val(b)
n = Val(m)
l = Val(k)

Text6.Text = e
su = Val(Text6.Text)
co1 = su \ 10
co2 = su Mod 10
Combo1.Text = co1
Combo2.Text = co2

Text4.Text = f
Text5.Text = c
Text7.Text = d

If n = 1 Then
Combo3.Text = "当天"
ElseIf n = 4 Then
Combo3.Text = "4天"
Else
Combo3.Text = "7天"
End If

If f = 0 Then
Check2.Value = 0
Else
Check2.Value = 1
End If

If c = "F" Then
Check1.Value = 0
Else
Check1.Value = 1
End If

If d = "F" Then
Check3.Value = 0
Else
Check3.Value = 1
End If

If tit = "F" Then
Check4.Value = 0
Else
Check4.Value = 1
End If

If n = 1 Then
Combo3.Text = "当天"
ElseIf n = 4 Then
Combo3.Text = "4天"
ElseIf n = 7 Then
Combo3.Text = "7天"
End If

If l = 1 Then
Combo4.Text = "数值"
Else
Combo4.Text = "云量"
End If

Text1.Text = location

Dim name1 As String
Open "c:\weather\rename.txt" For Input As #4
Input #4, name1
Close #4

Text9.Text = name1

Dim lon As String
Open "c:\weather\longitude.txt" For Input As #5
Input #5, lon
Close #5

Dim lat As String
Open "c:\weather\latitude.txt" For Input As #6
Input #6, lat
Close #6


If lon = "F" And lat = "F" Then
Label12.Caption = "未找到"
Label13.Caption = "未找到"
Label14.Caption = "定位失败"
pp.Left = 20000
pp.Top = 20000
Else
Label12.Caption = lon
Label13.Caption = lat
Label14.Caption = "定位成功"
Dim lloo, llaa As Single
lloo = Split(lon, "°")(0)
llaa = Split(lat, "°")(0)
setpp lloo, llaa
End If

k1 = Text9.Text
k2 = Combo4.Text

note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"

End Sub

Private Sub Text9_Change()
Label12.Caption = "等待定位"
Label13.Caption = "等待定位"
Label14.Caption = "等待定位"
End Sub

Private Sub Timer1_Timer()
Timer1.Interval = 0
Form7.Hide
Unload Form7

loa

Dim aaa As String
Open "C:\weather\wp\comm.txt" For Input As #8
Input #8, aaa
Close #8
If aaa = "1" Then
Open "c:\weather\wp\ren.txt" For Output As #9
Print #9, "1" & vbCrLf & ""
Close #9
End If

Form8.Show (0)
Form9.Caption = "菜单"
End Sub

Private Sub Timer2_Timer()
Static iCount As Integer
iCount = iCount + 1
st = "1"
On Error GoTo judge
Open "C:\weather\location\st.txt" For Input As #18
Input #18, st
Close #18
judge:
If iCount > 1 And st = "0" Then

Timer2.Interval = 0
Dim lon111 As String
Open "c:\weather\location\lon.txt" For Input As #1
Input #1, lon111
Close #1
Dim lat111 As String
Open "c:\weather\location\lat.txt" For Input As #2
Input #2, lat111
Close #2

If lon111 = "F" Or lat111 = "F" Then
Label12.Caption = "未找到"
Label13.Caption = "未找到"
Label14.Caption = "定位失败"
pp.Left = 20000
pp.Top = 20000
Else
Text9.Locked = False
Dim nam As String
Open "c:\weather\location\name.txt" For Input As #5
Input #5, nam
Close #5
Text9.Text = nam
Label12.Caption = lon111 & "°E"
Label13.Caption = lat111 & "°N"
Label14.Caption = "定位成功"

setpp lon111, lat111

If Check4.Value = 1 Then
Dim myloc As String
Open "c:\weather\location\myloc.txt" For Input As #3
Input #3, myloc
Close #3
Text1.Text = myloc
End If
End If
Text9.Locked = False
End If

If iCount > 4 And st = "1" Then
Timer2.Interval = 0
Label12.Caption = "未找到"
Label13.Caption = "未找到"
Label14.Caption = "定位超时"
pp.Left = 20000
pp.Top = 20000
Text9.Locked = False
End If

End Sub
Private Sub Text1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = "填入您喜欢的个性标题，比如“中国·北京·城区”，“爱丽丝的家”，“地球上的某个角落”，“天涯海角”，“世外桃源”，“火星”等，此标题将展示在主界面上。"
End Sub
Private Sub Text9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = "必须填写真实地名，该地名为中国境内的地级行政区、县级行政区或直辖市的真实名称，例如“北京”。注意：地名中不能包括“市”、“县”或“区”字，比如应输入“北京”而非“北京市”。请您按照上述指引，先输入地名，然后点击“定位”按钮，待系统提示“定位成功”后即可点击“保存”按钮，完成设置。"
note2.Caption = "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
End Sub
Private Sub Command7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = "必须填写真实地名，该地名为中国境内的地级行政区、县级行政区或直辖市的真实名称，例如“北京”。注意：地名中不能包括“市”、“县”或“区”字，比如应输入“北京”而非“北京市”。请您按照上述指引，先输入地名，然后点击“定位”按钮，待系统提示“定位成功”后即可点击“保存”按钮，完成设置。"
note2.Caption = "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
End Sub
Private Sub Check2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "黑色背景适用于浅色桌面"
End Sub
Private Sub Combo1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "注：数据源每5分钟更新1次数据"
End Sub
Private Sub Combo2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "注：数据源每5分钟更新1次数据"
End Sub
Private Sub Label6_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "注：数据源每5分钟更新1次数据"
End Sub
Private Sub Label7_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "注：数据源每5分钟更新1次数据"
End Sub
Private Sub Label8_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "注：数据源每5分钟更新1次数据"
End Sub
Private Sub Combo3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "预报时长指电脑桌面显示的天气预报天数"
End Sub
Private Sub Label10_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "预报时长指电脑桌面显示的天气预报天数"
End Sub
Private Sub Combo4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = "云量模式指以云量数据来判断当前天气。数值模式指以服务器返回的数值计算出当前天气。二者在天气预报上给出的数据略有不同，对于不同地区和不同季节，二者准确度存在差异，用户可以根据实际需求选择合适的模式。"
note2.Caption = "若刷新成功后天气情况仍与实际不符请修改预报模式"
End Sub
Private Sub Label9_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = "云量模式指以云量数据来判断当前天气。数值模式指以服务器返回的数值计算出当前天气。二者在天气预报上给出的数据略有不同，对于不同地区和不同季节，二者准确度存在差异，用户可以根据实际需求选择合适的模式。"
note2.Caption = "若刷新成功后天气情况仍与实际不符请修改预报模式"
End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"
End Sub
Private Sub Image1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"
End Sub
Private Sub Image2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"
End Sub
Private Sub pp_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"
End Sub
Private Sub Check1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"
End Sub
Private Sub Check3_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"
End Sub
Private Sub Check4_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"
End Sub
Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"
End Sub
Private Sub Command2_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
note1.Caption = " " & vbCrLf & "快捷键说明" & vbCrLf & "定位：Enter" & vbCrLf & "保存：空格" & vbCrLf & "返回：Esc"
note2.Caption = "使用指南" & vbCrLf & "当鼠标移动相应的功能区域时，屏幕会显示该功能的使用指南"
End Sub
