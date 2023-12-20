VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   210
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   210
   LinkTopic       =   "Form1"
   ScaleHeight     =   210
   ScaleWidth      =   210
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Visible         =   0   'False
   WindowState     =   1  'Minimized
   Begin VB.Timer Timer1 
      Left            =   120
      Top             =   120
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()

Dim d As String
Open "c:\weather\wp\comm.txt" For Output As #2
Print #2, "0" & vbCrLf & ""
Close #2
Open "C:\weather\info.txt" For Input As #4
Input #4, a, b, c, d
Close #4
If d = "T" Then
Timer1.Interval = 30000
Form1.Hide
Else
Form1.Hide
Unload Form1
End If

End Sub

Private Sub Timer1_Timer()
Dim RetVa
RetVa = Shell("C:\weather\appverweather0000.exe", 1)
Timer1.Interval = 0
iCount = 0
Unload Form1
End Sub
