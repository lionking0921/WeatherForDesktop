VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   17235
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   30630
   LinkTopic       =   "Form2"
   ScaleHeight     =   17235
   ScaleWidth      =   30630
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '屏幕中心
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   17175
      Left            =   0
      ScaleHeight     =   17175
      ScaleWidth      =   30615
      TabIndex        =   0
      Top             =   0
      Width           =   30615
      Begin VB.Timer Timer1 
         Interval        =   1000
         Left            =   1440
         Top             =   3840
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim paper As String
Dim tt, ww As String

Private pMC As FilgraphManager

Private pVW As IVideoWindow
Private Function pap()
Dim t, w As String
Open "C:\weather\wp\pa.txt" For Input As #1
Input #1, t, w
Close #1

If w <> "0" Then

If t <> tt Or w <> ww Then

If t = "D" Then
If w = "1" Then
paper = "C:\weather\wp\s.gif"
tt = t
ww = w
ElseIf w = "2" Then
paper = "C:\weather\wp\sy.gif"
tt = t
ww = w
ElseIf w = "3" Then
paper = "C:\weather\wp\dc.gif"
tt = t
ww = w
ElseIf w = "4" Then
paper = "C:\weather\wp\dr.gif"
tt = t
ww = w
ElseIf w = "5" Then
paper = "C:\weather\wp\ds.gif"
tt = t
ww = w
End If
ElseIf t = "N" Then
If w = "1" Then
paper = "C:\weather\wp\m.gif"
tt = t
ww = w
ElseIf w = "2" Then
paper = "C:\weather\wp\my.gif"
tt = t
ww = w
ElseIf w = "3" Then
paper = "C:\weather\wp\nc.gif"
tt = t
ww = w
ElseIf w = "4" Then
paper = "C:\weather\wp\nr.gif"
tt = t
ww = w
ElseIf w = "5" Then
paper = "C:\weather\wp\ns.gif"
tt = t
ww = w
End If
End If

End If











End If

End Function


Private Function wall(giff As String)
On Error Resume Next
Set pMC = New FilgraphManager
pMC.Stop
pMC.RenderFile ""
'加载GIF文件

' pMC.RenderFile App.Path & "\enter.gif" '加载GIF动画（图片）

pMC.RenderFile giff


On Error Resume Next
Set pVW = pMC
pVW.WindowStyle = CLng(&H6000000)
'限定动画在Picture1的大小中
pVW.Left = 0
pVW.Top = 0
pVW.Width = Screen.Width
pVW.Height = Screen.Height
pVW.Owner = Picture1.Hwnd '在Picture1中显示
pVW.MessageDrain = Picture1.Hwnd '此行非常重要，用来定义动画的右键菜单所必须
pMC.Run


End Function
Private Sub Form_Load()



Open "c:\weather\wp\comm.txt" For Output As #6
Print #6, "1" & vbCrLf & ""
Close #6



Dim tre, wre As String
Open "C:\weather\wp\pa.txt" For Input As #8
Input #8, tre, wre
Close #8

If tre = "N" Then
paper = "C:\weather\wp\m.gif"
Else
paper = "C:\weather\wp\s.gif"
End If

tt = "D"
ww = "1"


Form2.Width = Screen.Width
Form2.Height = Screen.Height
Picture1.Width = Screen.Width
Picture1.Height = Screen.Height

pap

On Error GoTo Lhandle
wall paper
Exit Sub
Lhandle:
MsgBox ("壁纸加载出错！")


End Sub

Private Sub Timer1_Timer()

Dim r As String
Open "C:\weather\wp\ren.txt" For Input As #2
Input #2, r
Close #2






If r = "1" Then

Dim jkl As String
jkl = paper

pap

If jkl <> paper Then
On Error GoTo Lhandle
wall paper
Exit Sub
Lhandle:
MsgBox ("壁纸加载出错！")
End If


Open "c:\weather\wp\ren.txt" For Output As #3
Print #3, "0" & vbCrLf & ""
Close #3





ElseIf r = "2" Then

Open "c:\weather\wp\ren.txt" For Output As #4
Print #4, "0" & vbCrLf & ""
Close #4


Open "c:\weather\wp\comm.txt" For Output As #7
Print #7, "0" & vbCrLf & ""
Close #7


Form2.Hide
Unload Form2
Unload Form1




End If





End Sub

