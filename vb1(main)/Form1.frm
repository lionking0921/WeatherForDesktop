VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "天气"
   ClientHeight    =   6045
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5055
   ControlBox      =   0   'False
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6045
   ScaleWidth      =   5055
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer3 
      Left            =   3120
      Top             =   120
   End
   Begin VB.Timer Timer2 
      Left            =   4680
      Top             =   5640
   End
   Begin VB.Timer Timer1 
      Left            =   0
      Top             =   5640
   End
   Begin VB.Label Label33 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "紫外线:暂无数据"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   35
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label31 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "能见度:00.0km"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   3600
      TabIndex        =   34
      Top             =   2160
      Width           =   1335
   End
   Begin VB.Label menu 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "菜单"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4440
      TabIndex        =   33
      Top             =   600
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label newe 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "刷新"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3960
      TabIndex        =   32
      Top             =   600
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label bobao 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "语音播报"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3360
      TabIndex        =   31
      Top             =   600
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Image Image17 
      Height          =   400
      Left            =   3600
      Picture         =   "Form1.frx":1084A
      Stretch         =   -1  'True
      Top             =   120
      Width           =   400
   End
   Begin VB.Image Image16 
      Height          =   400
      Left            =   4080
      Picture         =   "Form1.frx":136A1
      Stretch         =   -1  'True
      Top             =   120
      Width           =   400
   End
   Begin VB.Image Image15 
      Height          =   400
      Left            =   4560
      Picture         =   "Form1.frx":1ABF2
      Stretch         =   -1  'True
      Top             =   120
      Width           =   400
   End
   Begin VB.Label Label32 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "预警信息:某某颜色预警"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1680
      TabIndex        =   30
      Top             =   2400
      Width           =   3255
   End
   Begin VB.Label Label30 
      BackStyle       =   0  'Transparent
      Caption         =   "风力:00级"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   2040
      TabIndex        =   29
      Top             =   2160
      Width           =   1335
   End
   Begin VB.Label Label29 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "风速:000.0km/h"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   3600
      TabIndex        =   28
      Top             =   1920
      Width           =   1335
   End
   Begin VB.Label Label28 
      BackStyle       =   0  'Transparent
      Caption         =   "风向标"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   2040
      TabIndex        =   27
      Top             =   1920
      Width           =   975
   End
   Begin VB.Label Label27 
      BackStyle       =   0  'Transparent
      Caption         =   "湿度:000%"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   2040
      TabIndex        =   26
      Top             =   1440
      Width           =   1335
   End
   Begin VB.Label Label26 
      BackStyle       =   0  'Transparent
      Caption         =   "气压:0000hPa"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   2040
      TabIndex        =   25
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label Label25 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "体感温度:000.0℃"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   24
      Top             =   1440
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "当前"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   2040
      TabIndex        =   23
      Top             =   960
      Width           =   1035
   End
   Begin VB.Image Image14 
      Height          =   615
      Left            =   4320
      Picture         =   "Form1.frx":1E10B
      Stretch         =   -1  'True
      Top             =   4680
      Width           =   615
   End
   Begin VB.Image Image13 
      Height          =   615
      Left            =   3480
      Picture         =   "Form1.frx":20D9C
      Stretch         =   -1  'True
      Top             =   4680
      Width           =   615
   End
   Begin VB.Image Image12 
      Height          =   615
      Left            =   2640
      Picture         =   "Form1.frx":23A2D
      Stretch         =   -1  'True
      Top             =   4680
      Width           =   615
   End
   Begin VB.Image Image11 
      Height          =   615
      Left            =   1800
      Picture         =   "Form1.frx":266BE
      Stretch         =   -1  'True
      Top             =   4680
      Width           =   615
   End
   Begin VB.Image Image10 
      Height          =   615
      Left            =   960
      Picture         =   "Form1.frx":2934F
      Stretch         =   -1  'True
      Top             =   4680
      Width           =   615
   End
   Begin VB.Image Image9 
      Height          =   615
      Left            =   120
      Picture         =   "Form1.frx":2BFE0
      Stretch         =   -1  'True
      Top             =   4680
      Width           =   615
   End
   Begin VB.Image Image8 
      Height          =   615
      Left            =   4320
      Picture         =   "Form1.frx":2EC71
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   615
   End
   Begin VB.Image Image7 
      Height          =   615
      Left            =   3480
      Picture         =   "Form1.frx":31902
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   615
   End
   Begin VB.Image Image6 
      Height          =   615
      Left            =   2640
      Picture         =   "Form1.frx":34593
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   615
   End
   Begin VB.Image Image5 
      Height          =   615
      Left            =   1800
      Picture         =   "Form1.frx":37224
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   615
   End
   Begin VB.Image Image4 
      Height          =   615
      Left            =   960
      Picture         =   "Form1.frx":39EB5
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   615
   End
   Begin VB.Image Image3 
      Height          =   615
      Left            =   120
      Picture         =   "Form1.frx":3CB46
      Stretch         =   -1  'True
      Top             =   3000
      Width           =   615
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   840
      Picture         =   "Form1.frx":3F7D7
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   615
   End
   Begin VB.Image Image1 
      Height          =   615
      Left            =   120
      Picture         =   "Form1.frx":42468
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   615
   End
   Begin VB.Label Label24 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "温度6"
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   3600
      TabIndex        =   22
      Top             =   5760
      Width           =   1215
   End
   Begin VB.Label Label23 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "温度5"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1920
      TabIndex        =   21
      Top             =   5760
      Width           =   1215
   End
   Begin VB.Label Label22 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "温度4"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   360
      TabIndex        =   20
      Top             =   5760
      Width           =   1095
   End
   Begin VB.Label Label21 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "温度3"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3600
      TabIndex        =   19
      Top             =   4080
      Width           =   1215
   End
   Begin VB.Label Label20 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "温度2"
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   1920
      TabIndex        =   18
      Top             =   4080
      Width           =   1215
   End
   Begin VB.Label Label19 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "温度1"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   17
      Top             =   4080
      Width           =   1215
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "天气6"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3600
      TabIndex        =   16
      Top             =   5400
      Width           =   1215
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "天气5"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1920
      TabIndex        =   15
      Top             =   5400
      Width           =   1215
   End
   Begin VB.Label Label16 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "天气4"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   360
      TabIndex        =   14
      Top             =   5400
      Width           =   1095
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "天气3"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3600
      TabIndex        =   13
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "天气2"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1920
      TabIndex        =   12
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "天气1"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   11
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "日期6"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   10
      Top             =   4440
      Width           =   1455
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "日期5"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1800
      TabIndex        =   9
      Top             =   4440
      Width           =   1455
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "日期4"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   4440
      Width           =   1455
   End
   Begin VB.Label Label9 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "日期3"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   7
      Top             =   2760
      Width           =   1455
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "日期2"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1800
      TabIndex        =   6
      Top             =   2760
      Width           =   1455
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "日期1"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   2760
      Width           =   1455
   End
   Begin VB.Label Label6 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "0℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   30
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   3240
      TabIndex        =   4
      Top             =   720
      Width           =   1695
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "天气"
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
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   1920
      Width           =   1695
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "温度"
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
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "日期"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   10.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   1815
   End
   Begin VB.Line Line8 
      BorderColor     =   &H00FFFFFF&
      X1              =   0
      X2              =   0
      Y1              =   0
      Y2              =   6000
   End
   Begin VB.Line Line7 
      BorderColor     =   &H00FFFFFF&
      X1              =   5040
      X2              =   5040
      Y1              =   0
      Y2              =   6000
   End
   Begin VB.Line Line6 
      BorderColor     =   &H00FFFFFF&
      X1              =   0
      X2              =   5040
      Y1              =   6000
      Y2              =   6000
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00FFFFFF&
      X1              =   3360
      X2              =   3360
      Y1              =   2640
      Y2              =   6000
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00FFFFFF&
      X1              =   1680
      X2              =   1680
      Y1              =   2640
      Y2              =   6000
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FFFFFF&
      X1              =   0
      X2              =   5040
      Y1              =   4320
      Y2              =   4320
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      X1              =   0
      X2              =   5040
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   0
      X2              =   5040
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      Index           =   0
      X1              =   0
      X2              =   5040
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "地点"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   18
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim X As Integer
Dim f As Integer
Dim nnn As Integer

Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long) As Long
Private Declare Function SetWindowLong Lib "user32" Alias "SetWindowLongA" (ByVal hWnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function SetLayeredWindowAttributes Lib "user32" (ByVal hWnd As Long, ByVal crKey As Long, ByVal bAlpha As Byte, ByVal dwFlags As Long) As Long
Private Const WS_EX_LAYERED = &H80000
Private Const GWL_EXSTYLE = (-20)
Private Const LWA_ALPHA = &H2
Private Const LWA_COLORKEY = &H1

Private Function inf(linex As Integer, l1 As Integer, l2 As Integer, l3 As Integer)
Dim s() As String
Open "C:\weather\data.txt" For Binary As #1
s = Split(Input(LOF(1), #1), vbCrLf)
nweek = s(linex)
nmon = s(linex + 1)
ndaily = s(linex + 2)
nwea1 = s(linex + 3)
nwea2 = s(linex + 8)
ntemp1 = s(linex + 7)
ntemp2 = s(linex + 6)


Close #1

weekly = Mid(nweek, 2, Len(nweek))
mon = Mid(nmon, 2, Len(nmon))
daily = Mid(ndaily, 2, Len(ndaily))
wea1 = Mid(nwea1, 2, Len(nwea1))
wea2 = Mid(nwea2, 2, Len(nwea2))
temp1 = Mid(ntemp1, 2, Len(ntemp1))
temp2 = Mid(ntemp2, 2, Len(ntemp2))




ltext1 = mon & "月" & daily & "日（" & weekly & "）"
ltext3 = temp1 & "~" & temp2


If wea1 = wea2 Then
ltext2 = wea1
Else
wea3 = wea1 & "转" & wea2
ltext2 = wea3
End If

Me.Controls("Label" & l1).Caption = ltext1
Me.Controls("Label" & l2).Caption = ltext2
Me.Controls("Label" & l3).Caption = ltext3




End Function

Private Function pic(w As String, p1 As Integer, p2 As Integer)
If InStr(1, w, "转") = 0 Then
If InStr(1, w, "雷") = 0 And InStr(1, w, "夹") = 0 And InStr(1, w, "雾") = 0 And InStr(1, w, "霾") = 0 And InStr(1, w, "冻") = 0 And InStr(1, w, "霰") = 0 And InStr(1, w, "风") = 0 And InStr(1, w, "沙") = 0 And InStr(1, w, "尘") = 0 And InStr(1, w, "冰") = 0 And InStr(1, w, "雹") = 0 And InStr(1, w, "冷") = 0 And InStr(1, w, "热") = 0 Then
If InStr(1, w, "晴") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\sun.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\moon.jpg")
ElseIf InStr(1, w, "云") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\sunny.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\moony.jpg")
ElseIf InStr(1, w, "阴") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\cloud.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\cloud.jpg")
ElseIf InStr(1, w, "雨") <> 0 Then

If InStr(1, w, "中") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\mrain.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\mrain.jpg")
ElseIf InStr(1, w, "暴") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\xlrain.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\xlrain.jpg")
ElseIf InStr(1, w, "大") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\lrain.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\lrain.jpg")
ElseIf InStr(1, w, "阵") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\zy1.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\zy2.jpg")
Else
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\rain.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\rain.jpg")
End If

ElseIf InStr(1, w, "雪") <> 0 Then

If InStr(1, w, "中") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\msnow.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\msnow.jpg")
ElseIf InStr(1, w, "暴") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\xlsnow.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\xlsnow.jpg")
ElseIf InStr(1, w, "大") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\lsnow.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\lsnow.jpg")
ElseIf InStr(1, w, "阵") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\zx1.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\zx2.jpg")
Else
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\snow.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\snow.jpg")
End If

Else
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\null.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\null.jpg")
End If
Else
If InStr(1, w, "雷") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\th.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\th.jpg")
ElseIf InStr(1, w, "夹") <> 0 Or InStr(1, w, "霰") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\ras.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\ras.jpg")
ElseIf InStr(1, w, "雾") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\fr.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\fr.jpg")
ElseIf InStr(1, w, "霾") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\haze.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\haze.jpg")
ElseIf InStr(1, w, "雹") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\hail.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\hail.jpg")
ElseIf InStr(1, w, "冻") <> 0 Or InStr(1, w, "冰") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\ice.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\ice.jpg")
ElseIf InStr(1, w, "风") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\wind.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\wind.jpg")
ElseIf InStr(1, w, "沙") <> 0 Or InStr(1, w, "尘") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\sa.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\sa.jpg")
ElseIf InStr(1, w, "冷") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\co.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\co.jpg")
ElseIf InStr(1, w, "热") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\ht.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\ht.jpg")
Else
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\null.jpg")
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\null.jpg")
End If
End If
Else
If IsArray(Split(w, "转")) Then
qwe = Split(w, "转")(0)
asd = Split(w, "转")(1)
End If
If InStr(1, qwe, "雷") = 0 And InStr(1, qwe, "夹") = 0 And InStr(1, qwe, "雾") = 0 And InStr(1, qwe, "霾") = 0 And InStr(1, qwe, "冻") = 0 And InStr(1, qwe, "霰") = 0 And InStr(1, qwe, "风") = 0 And InStr(1, qwe, "沙") = 0 And InStr(1, qwe, "尘") = 0 And InStr(1, qwe, "冰") = 0 And InStr(1, qwe, "雹") = 0 And InStr(1, qwe, "冷") = 0 And InStr(1, qwe, "热") = 0 Then
If InStr(1, qwe, "晴") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\sun.jpg")
ElseIf InStr(1, qwe, "云") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\sunny.jpg")
ElseIf InStr(1, qwe, "阴") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\cloud.jpg")
ElseIf InStr(1, qwe, "雨") <> 0 Then

If InStr(1, qwe, "中") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\mrain.jpg")
ElseIf InStr(1, qwe, "暴") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\xlrain.jpg")
ElseIf InStr(1, qwe, "大") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\lrain.jpg")
ElseIf InStr(1, qwe, "阵") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\zy1.jpg")
Else
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\rain.jpg")
End If

ElseIf InStr(1, qwe, "雪") <> 0 Then

If InStr(1, qwe, "中") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\msnow.jpg")
ElseIf InStr(1, qwe, "暴") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\xlsnow.jpg")
ElseIf InStr(1, qwe, "大") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\lsnow.jpg")
ElseIf InStr(1, qwe, "阵") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\zx1.jpg")
Else
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\snow.jpg")
End If

Else
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\null.jpg")
End If
Else
If InStr(1, qwe, "雷") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\th.jpg")
ElseIf InStr(1, qwe, "夹") <> 0 Or InStr(1, qwe, "霰") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\ras.jpg")
ElseIf InStr(1, qwe, "雾") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\fr.jpg")
ElseIf InStr(1, qwe, "霾") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\haze.jpg")
ElseIf InStr(1, qwe, "雹") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\hail.jpg")
ElseIf InStr(1, qwe, "冻") <> 0 Or InStr(1, qwe, "冰") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\ice.jpg")
ElseIf InStr(1, qwe, "风") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\wind.jpg")
ElseIf InStr(1, qwe, "沙") <> 0 Or InStr(1, qwe, "尘") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\sa.jpg")
ElseIf InStr(1, qwe, "冷") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\co.jpg")
ElseIf InStr(1, qwe, "热") <> 0 Then
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\ht.jpg")
Else
Me.Controls("Image" & p1).Picture = LoadPicture("C:\weather\p\null.jpg")
End If
End If
If InStr(1, asd, "雷") = 0 And InStr(1, asd, "夹") = 0 And InStr(1, asd, "雾") = 0 And InStr(1, asd, "霾") = 0 And InStr(1, asd, "冻") = 0 And InStr(1, asd, "霰") = 0 And InStr(1, asd, "风") = 0 And InStr(1, asd, "沙") = 0 And InStr(1, asd, "尘") = 0 And InStr(1, asd, "冰") = 0 And InStr(1, asd, "雹") = 0 And InStr(1, asd, "冷") = 0 And InStr(1, asd, "热") = 0 Then
If InStr(1, asd, "晴") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\moon.jpg")
ElseIf InStr(1, asd, "云") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\moony.jpg")
ElseIf InStr(1, asd, "阴") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\cloud.jpg")
ElseIf InStr(1, asd, "雨") <> 0 Then

If InStr(1, asd, "中") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\mrain.jpg")
ElseIf InStr(1, asd, "暴") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\xlrain.jpg")
ElseIf InStr(1, asd, "大") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\lrain.jpg")
ElseIf InStr(1, asd, "阵") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\zy2.jpg")
Else
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\rain.jpg")
End If

ElseIf InStr(1, asd, "雪") <> 0 Then

If InStr(1, asd, "中") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\msnow.jpg")
ElseIf InStr(1, asd, "暴") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\xlsnow.jpg")
ElseIf InStr(1, asd, "大") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\lsnow.jpg")
ElseIf InStr(1, asd, "阵") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\zx2.jpg")
Else
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\snow.jpg")
End If

Else
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\null.jpg")
End If
Else
If InStr(1, asd, "雷") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\th.jpg")
ElseIf InStr(1, asd, "夹") <> 0 Or InStr(1, asd, "霰") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\ras.jpg")
ElseIf InStr(1, asd, "雾") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\fr.jpg")
ElseIf InStr(1, asd, "霾") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\haze.jpg")
ElseIf InStr(1, asd, "雹") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\hail.jpg")
ElseIf InStr(1, asd, "冻") <> 0 Or InStr(1, asd, "冰") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\ice.jpg")
ElseIf InStr(1, asd, "风") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\wind.jpg")
ElseIf InStr(1, asd, "沙") <> 0 Or InStr(1, asd, "尘") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\sa.jpg")
ElseIf InStr(1, asd, "冷") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\co.jpg")
ElseIf InStr(1, asd, "热") <> 0 Then
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\ht.jpg")
Else
Me.Controls("Image" & p2).Picture = LoadPicture("C:\weather\p\null.jpg")
End If
End If
End If
End Function
Private Function loadmain()
Dim cwcw, temp, aa, bb, cc, dd, ee, ff, gg, hh As String
Open "C:\weather\wea.txt" For Input As #3
Input #3, cwcw, temp, aa, bb, cc, dd, ee, ff, gg, hh
Close #3

If cwcw <> "9999" Then
Label2.Caption = cwcw
Else
Label2.Caption = "未知"
End If

If Val(Mid(temp, 2, Len(temp))) < 9900 Then
Label6.Caption = Mid(temp, 2, Len(temp)) & "℃"
Else
Label6.Caption = "无数据"
End If

If Val(Mid(aa, 2, Len(aa))) < 9900 Then
Label25.Caption = "体感温度:" & Mid(aa, 2, Len(aa)) & "℃"
Else
Label25.Caption = "体感温度:无数据"
End If

If Val(Mid(bb, 2, Len(bb))) < 9900 Then
Label26.Caption = "气压:" & Mid(bb, 2, Len(bb)) & "hPa"
Else
Label26.Caption = "气压:无数据"
End If

If Val(Mid(cc, 2, Len(cc))) < 9900 Then
Label27.Caption = "湿度:" & Mid(cc, 2, Len(cc)) & "%"
Else
Label27.Caption = "湿度:暂无数据"
End If

If Val(dd) = 0 Then
Label28.Caption = dd
Else
Label28.Caption = "无确定风向"
End If

If Val(Mid(ee, 2, Len(ee))) < 9900 Then
Label29.Caption = "风速:" & Mid(ee, 2, Len(ee)) & "km/h"
Else
Label29.Caption = "风速:暂无数据"
End If

If Val(Mid(ee, 2, Len(ee))) < 9900 Then
Label30.Caption = "风力:" & Mid(ff, 2, Len(ff))
Else
Label30.Caption = "风力:暂无数据"
End If

If Val(Mid(ee, 2, Len(ee))) < 9900 Then
Label31.Caption = "能见度:" & Mid(gg, 2, Len(gg)) & "km"
Else
Label31.Caption = "能见度:暂无数据"
End If

Open "C:\weather\al.txt" For Input As #1
Input #1, ii
Close #1

If ii <> "99999999" Then
Label32.Caption = ii & "预警"
Else
Label32.Caption = "暂无预警信息"
End If

Label33.Caption = "紫外线:" & hh

inf 1, 3, 5, 4
inf 12, 7, 13, 19
inf 23, 8, 14, 20
inf 34, 9, 15, 21
inf 45, 10, 16, 22
inf 56, 11, 17, 23
inf 67, 12, 18, 24
pic Label5.Caption, 1, 2
pic Label13.Caption, 3, 4
pic Label14.Caption, 5, 6
pic Label15.Caption, 7, 8
pic Label16.Caption, 9, 10
pic Label17.Caption, 11, 12
pic Label18.Caption, 13, 14
End Function

Private Sub Form_Load()

If exitproc("appverweather0000.exe") > 1 Then
MsgBox ("请勿重复启动！")
End
End If

nnn = 0

Form1.Hide
Form1.Show (0)

Dim rtn As Long
Dim BorderStyler

Me.Left = Screen.Width - Me.Width
Me.Top = 0

Dim loc, ab, cd, ef As String
Open "C:\weather\info.txt" For Input As #2
Input #2, loc, ab, cd, ef, fg, gh
Close #2
Label1.Caption = loc
X = Val(ab)
f = Val(cd)
Y = Val(gh)

If f = 0 Then
Me.BackColor = &HFF0000
BorderStyler = 0
rtn = GetWindowLong(hWnd, GWL_EXSTYLE)
rtn = rtn Or WS_EX_LAYERED
SetWindowLong hWnd, GWL_EXSTYLE, rtn
SetLayeredWindowAttributes hWnd, &HFF0000, 0, LWA_COLORKEY
End If

loadmain

If Y = 1 Then
Form1.Height = 3105
ElseIf Y = 4 Then
Form1.Height = 4785
End If


If fg = "T" Then
Timer1.Interval = 60000
End If



Dim wpp As String
Open "c:\weather\wp\wp.txt" For Input As #19
Input #19, wpp
Close #19


Dim comn As String
Open "c:\weather\wp\comm.txt" For Input As #20
Input #20, comn
Close #20

Dim nwk As String
Open "C:\weather\net.txt" For Input As #28
Input #28, nwk
Close #28

If nwk = "1" Then
Form1.Caption = "天气（连接超时，请检查网络设置）"
ElseIf nwk = "2" Then
Form1.Caption = "天气（刷新失败，无法连接至服务器）"
Else
Form1.Caption = "天气"
End If

Dim sa As String
Open "c:\weather\save.txt" For Input As #21
Input #21, sa
Close #21

If Val(sa) = 0 Then
Call Image16_Click
If Val(wpp) = 1 And Val(comn) = 0 Then
Dim RetVall
RetVall = Shell("C:\weather\dwp.exe", 1)
End If
Else
Open "c:\weather\save.txt" For Output As #34
Print #34, "0"
Close #34
End If


End Sub

Private Sub Image15_Click()
Form9.Show (0)
End Sub

Private Sub Image16_Click()
If Form1.Caption <> "天气（正在刷新…）" Then
Form1.Caption = "天气（正在刷新…）"

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
Timer2.Interval = 500
End If
End Sub

Private Sub Image17_Click()

If nnn = 0 Then
nnn = 1

Dim locatio As String
Open "C:\weather\rename.txt" For Input As #12
Input #12, locatio
Close #12


Dim cw, ttt1, ttt2, ttt3, xxx As String
cw = Label2.Caption
If cw = "未知" Or cw = "-" Then
cw = "天气未知"
End If


ttt1 = Split(Label4.Caption, "℃~")(0)

If Val(ttt1) < 0 Then
ttt1 = "零下" & Split(ttt1, "-")(1)
End If

ttt2 = "到" & Split(Label4.Caption, "℃~")(1)
ttt3 = ttt1 & ttt2
xxx = "今天是" & Label3.Caption & "（" & locatio & "（" & Label5.Caption & "）" & ttt3 & "）当前（" & cw & "（温度）" & Label6.Caption


If InStr(1, cw, "雷") = 0 And InStr(1, cw, "夹") = 0 And InStr(1, cw, "霰") = 0 Then
If InStr(1, cw, "雨") <> 0 Then
xxx = xxx & "（正在下雨）出门记得带伞"
ElseIf InStr(1, cw, "雪") <> 0 Then
xxx = xxx & "（正在下雪）出门记得带伞"
End If
Else
If InStr(1, cw, "雷") <> 0 Then
xxx = xxx & "（正在下雷阵雨）尽量呆在室内）出门注意安全"
ElseIf InStr(1, cw, "夹") <> 0 Then
xxx = xxx & "（正在下雨夹雪）出门记得带伞"
ElseIf InStr(1, cw, "霰") <> 0 Then
xxx = xxx & "（正在下霰）出门记得带伞"
ElseIf InStr(1, cw, "雹") <> 0 Then
xxx = xxx & "（正在下冰雹）尽量呆在室内）出门注意安全"
End If
End If

Dim cwcw, temp, aa, bb, cc, dd, ee, ff, gg, hh As String
Open "C:\weather\wea.txt" For Input As #13
Input #13, cwcw, temp, aa, bb, cc, dd, wi, ff, vi, hh
Close #13

Dim winb, visi As Boolean
winb = False
visi = False

If Val(Mid(vi, 2, Len(vi))) < 1.5 Then
visi = True
End If

If Val(Mid(wi, 2, Len(wi))) > 40# And Val(Mid(wi, 2, Len(wi))) < 9998.9 Then
winb = True
End If

If InStr(1, cw, "霾") <> 0 Then
xxx = xxx & "（户外空气质量差）出门注意防护"
End If

If InStr(1, cw, "雾") <> 0 Or InStr(1, cw, "沙") <> 0 Or visi = True Then
xxx = xxx & "（户外能见度差）出门注意安全"
End If

If InStr(1, cw, "风") <> 0 Or winb = True Then
xxx = xxx & "（户外风力大）出门注意安全"
End If


If Label32.Caption <> "暂无预警信息" Then

xxx = xxx & "（气象台发布" & Label32.Caption & "）请注意防范"


End If


Open "c:\weather\speak.txt" For Output As #13
Print #13, xxx
Close #13


Dim RetV
RetV = Shell("C:\weather\speaker.exe", 2)

Timer3.Interval = 30000

Else
Form12.Show (0)
End If

End Sub

Private Sub Timer1_Timer()
Static iCount As Integer
iCount = iCount + 1
If iCount = X Then
Call Image16_Click
iCount = 0
End If
End Sub
Private Function time2()
Dim loc, ab, cd, ef As String
Dim aaa As String
Open "C:\weather\wp\comm.txt" For Input As #8
Input #8, aaa
Close #8
If aaa = "1" Then
Open "c:\weather\wp\ren.txt" For Output As #9
Print #9, "1" & vbCrLf & ""
Close #9
End If
loadmain
End Function
Private Sub Timer2_Timer()

Static iCount As Integer
iCount = iCount + 1
Dim nw As String
nw = "1"
On Error GoTo judge
Open "C:\weather\net.txt" For Input As #18
Input #18, nw
Close #18
judge:
If iCount > 5 And nw = "0" Then
iCount = 0
Timer2.Interval = 0
time2
Form1.Caption = "天气"
End If
If iCount > 5 And nw = "2" Then
iCount = 0
Timer2.Interval = 0
Form1.Caption = "天气（刷新失败，无法连接至服务器）"
End If
If iCount > 12 Then
If nw = "1" Then
iCount = 0
Timer2.Interval = 0
Form1.Caption = "天气（连接超时，请检查网络设置）"
ElseIf nw = "2" Then
iCount = 0
Timer2.Interval = 0
Form1.Caption = "天气（刷新失败，无法连接至服务器）"
Else
Form1.Caption = "天气"
End If
End If

End Sub


Private Sub Timer3_Timer()
Timer3.Interval = 0
nnn = 0
End Sub

Private Sub Image15_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
menu.Visible = True
End Sub
Private Sub Image16_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
newe.Visible = True
End Sub
Private Sub Image17_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
bobao.Visible = True
End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
menu.Visible = False
newe.Visible = False
bobao.Visible = False
End Sub
