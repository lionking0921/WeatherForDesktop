VERSION 5.00
Begin VB.Form Form8 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "����"
   ClientHeight    =   2640
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5670
   Icon            =   "Form8.frx":0000
   LinkTopic       =   "Form8"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2640
   ScaleMode       =   0  'User
   ScaleWidth      =   5824.076
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Timer Timer1 
      Left            =   240
      Top             =   2160
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��3"
      BeginProperty Font 
         Name            =   "����"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   1869
      TabIndex        =   1
      Top             =   1680
      Width           =   1767
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "�������!"
      BeginProperty Font 
         Name            =   "����"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1080
      TabIndex        =   0
      Top             =   360
      Width           =   3570
   End
End
Attribute VB_Name = "Form8"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form8.Hide
Unload Form8
End Sub

Private Sub Form_Load()
Timer1.Interval = 1000
Me.Left = (Screen.Width - Me.Width) / 2
Me.Top = (Screen.Height - Me.Height) / 2
Dim nw As String
Open "C:\weather\net.txt" For Input As #18
Input #18, nw
Close #18
If nw = "1" Then
Label1.Caption = "���ӳ�ʱ��������������"
ElseIf nw = "2" Then
Label1.Caption = "����ʧ�ܣ��޷�������������"
End If
End Sub


Private Sub Timer1_Timer()
Static iCount As Integer
iCount = iCount + 1
If iCount = 1 Then
Command1.Caption = "ȷ��2"
ElseIf iCount = 2 Then
Command1.Caption = "ȷ��1"
ElseIf iCount = 3 Then
iCount = 0
Timer1.Interval = 0
Form8.Hide
Unload Form8
End If
End Sub

