VERSION 5.00
Begin VB.Form Form9 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "菜单"
   ClientHeight    =   11370
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   19770
   Icon            =   "Form9.frx":0000
   LinkTopic       =   "Form9"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11370
   ScaleMode       =   0  'User
   ScaleWidth      =   19770
   StartUpPosition =   2  '屏幕中心
   Begin VB.Timer Timer2 
      Left            =   2640
      Top             =   10920
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   2640
      Top             =   10200
   End
   Begin VB.CommandButton Command1 
      Caption         =   "设置"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   0
      TabIndex        =   0
      Top             =   360
      Width           =   3135
   End
   Begin VB.CommandButton Command2 
      Caption         =   "动态天气壁纸"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   0
      TabIndex        =   1
      Top             =   2040
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      Caption         =   "检查更新"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   0
      TabIndex        =   2
      Top             =   3720
      Width           =   3135
   End
   Begin VB.CommandButton Command4 
      Caption         =   "关于此软件"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   0
      TabIndex        =   3
      Top             =   5400
      Width           =   3135
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H000000FF&
      Caption         =   "关闭软件"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   0
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   7080
      Width           =   3135
   End
   Begin VB.CommandButton Command6 
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
      Height          =   1335
      Left            =   0
      TabIndex        =   16
      Top             =   8760
      Width           =   3135
   End
   Begin VB.HScrollBar daily15 
      Height          =   255
      Left            =   3120
      Max             =   40
      TabIndex        =   69
      Top             =   11160
      Width           =   16695
   End
   Begin VB.HScrollBar hourly 
      Height          =   255
      Left            =   3120
      Max             =   37
      TabIndex        =   68
      Top             =   5320
      Width           =   16695
   End
   Begin VB.Label uv 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "暂无数据"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   4800
      TabIndex        =   168
      Top             =   2580
      Width           =   1695
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "风力"
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
      Height          =   495
      Index           =   7
      Left            =   16440
      TabIndex        =   167
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "紫外线"
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
      Height          =   495
      Index           =   5
      Left            =   4800
      TabIndex        =   166
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Image Image1 
      Height          =   975
      Left            =   240
      MouseIcon       =   "Form9.frx":1084A
      MousePointer    =   99  'Custom
      Picture         =   "Form9.frx":14A94
      Stretch         =   -1  'True
      Top             =   10320
      Width           =   2415
   End
   Begin VB.Label color0 
      BackColor       =   &H00000000&
      Height          =   11475
      Left            =   0
      TabIndex        =   5
      Top             =   0
      Width           =   3135
   End
   Begin VB.Label hw24 
      Caption         =   "Label1"
      Height          =   135
      Left            =   24480
      TabIndex        =   165
      Top             =   2520
      Width           =   135
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00FF0000&
      X1              =   16455
      X2              =   16455
      Y1              =   840
      Y2              =   3030
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00FF0000&
      X1              =   14760
      X2              =   18150
      Y1              =   1935
      Y2              =   1935
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00FF0000&
      X1              =   6495
      X2              =   6495
      Y1              =   840
      Y2              =   3030
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FF0000&
      X1              =   4800
      X2              =   8190
      Y1              =   1935
      Y2              =   1935
   End
   Begin VB.Label hw23 
      Caption         =   "Label1"
      Height          =   135
      Left            =   24480
      TabIndex        =   164
      Top             =   2040
      Width           =   135
   End
   Begin VB.Label hw22 
      Caption         =   "Label1"
      Height          =   255
      Left            =   24120
      TabIndex        =   163
      Top             =   2160
      Width           =   135
   End
   Begin VB.Label hw21 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23640
      TabIndex        =   162
      Top             =   2160
      Width           =   255
   End
   Begin VB.Label hw20 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23160
      TabIndex        =   161
      Top             =   2160
      Width           =   255
   End
   Begin VB.Label hw19 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22680
      TabIndex        =   160
      Top             =   2160
      Width           =   255
   End
   Begin VB.Label hw18 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22440
      TabIndex        =   159
      Top             =   2160
      Width           =   150
   End
   Begin VB.Label hw17 
      Caption         =   "Label1"
      Height          =   135
      Left            =   21840
      TabIndex        =   158
      Top             =   2160
      Width           =   255
   End
   Begin VB.Label hw16 
      Caption         =   "Label1"
      Height          =   135
      Left            =   21480
      TabIndex        =   157
      Top             =   2160
      Width           =   135
   End
   Begin VB.Label hw15 
      Caption         =   "Label1"
      Height          =   135
      Left            =   21120
      TabIndex        =   156
      Top             =   2160
      Width           =   135
   End
   Begin VB.Label hw14 
      Caption         =   "Label1"
      Height          =   135
      Left            =   20760
      TabIndex        =   155
      Top             =   2040
      Width           =   135
   End
   Begin VB.Label hw13 
      Caption         =   "Label1"
      Height          =   15
      Left            =   20280
      TabIndex        =   154
      Top             =   2160
      Width           =   255
   End
   Begin VB.Label hw12 
      Caption         =   "Label1"
      Height          =   15
      Left            =   19920
      TabIndex        =   153
      Top             =   2160
      Width           =   135
   End
   Begin VB.Label hw11 
      Caption         =   "Label1"
      Height          =   255
      Left            =   24480
      TabIndex        =   152
      Top             =   1680
      Width           =   255
   End
   Begin VB.Label hw10 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23880
      TabIndex        =   151
      Top             =   1800
      Width           =   255
   End
   Begin VB.Label hw9 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23280
      TabIndex        =   150
      Top             =   1800
      Width           =   255
   End
   Begin VB.Label hw8 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22920
      TabIndex        =   149
      Top             =   1800
      Width           =   135
   End
   Begin VB.Label hw7 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22560
      TabIndex        =   148
      Top             =   1800
      Width           =   135
   End
   Begin VB.Label hw6 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22200
      TabIndex        =   147
      Top             =   1800
      Width           =   135
   End
   Begin VB.Label hw5 
      Caption         =   "Label1"
      Height          =   135
      Left            =   21720
      TabIndex        =   146
      Top             =   1800
      Width           =   255
   End
   Begin VB.Label hw4 
      Caption         =   "Label1"
      Height          =   135
      Left            =   21360
      TabIndex        =   145
      Top             =   1800
      Width           =   135
   End
   Begin VB.Label hw3 
      Caption         =   "Label1"
      Height          =   135
      Left            =   20760
      TabIndex        =   144
      Top             =   1800
      Width           =   255
   End
   Begin VB.Label hw2 
      Caption         =   "Label1"
      Height          =   135
      Left            =   20400
      TabIndex        =   143
      Top             =   1800
      Width           =   135
   End
   Begin VB.Label hw1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   3600
      TabIndex        =   142
      Top             =   4920
      Width           =   855
   End
   Begin VB.Image hp24 
      Height          =   135
      Left            =   24720
      Top             =   1320
      Width           =   15
   End
   Begin VB.Image hp23 
      Height          =   135
      Left            =   24240
      Top             =   1320
      Width           =   135
   End
   Begin VB.Image hp22 
      Height          =   135
      Left            =   23760
      Top             =   1320
      Width           =   135
   End
   Begin VB.Image hp21 
      Height          =   255
      Left            =   23160
      Top             =   1200
      Width           =   255
   End
   Begin VB.Image hp20 
      Height          =   135
      Left            =   22680
      Top             =   1320
      Width           =   135
   End
   Begin VB.Image hp19 
      Height          =   135
      Left            =   22320
      Top             =   1320
      Width           =   135
   End
   Begin VB.Image hp18 
      Height          =   255
      Left            =   21960
      Top             =   1320
      Width           =   135
   End
   Begin VB.Image hp17 
      Height          =   15
      Left            =   21600
      Top             =   1440
      Width           =   135
   End
   Begin VB.Image hp16 
      Height          =   135
      Left            =   21240
      Top             =   1440
      Width           =   135
   End
   Begin VB.Image hp15 
      Height          =   135
      Left            =   20880
      Top             =   1440
      Width           =   135
   End
   Begin VB.Image hp14 
      Height          =   135
      Left            =   20520
      Top             =   1440
      Width           =   135
   End
   Begin VB.Image hp13 
      Height          =   135
      Left            =   20040
      Top             =   1440
      Width           =   255
   End
   Begin VB.Image hp12 
      Height          =   135
      Left            =   24120
      Top             =   960
      Width           =   135
   End
   Begin VB.Image hp11 
      Height          =   135
      Left            =   23640
      Top             =   960
      Width           =   135
   End
   Begin VB.Image hp10 
      Height          =   135
      Left            =   23160
      Top             =   960
      Width           =   135
   End
   Begin VB.Image hp9 
      Height          =   135
      Left            =   22920
      Top             =   960
      Width           =   135
   End
   Begin VB.Image hp8 
      Height          =   135
      Left            =   22680
      Top             =   960
      Width           =   15
   End
   Begin VB.Image hp7 
      Height          =   135
      Left            =   22320
      Top             =   960
      Width           =   135
   End
   Begin VB.Image hp6 
      Height          =   135
      Left            =   21960
      Top             =   960
      Width           =   135
   End
   Begin VB.Image hp5 
      Height          =   135
      Left            =   21480
      Top             =   960
      Width           =   255
   End
   Begin VB.Image hp4 
      Height          =   255
      Left            =   21120
      Top             =   960
      Width           =   135
   End
   Begin VB.Image hp3 
      Height          =   255
      Left            =   20880
      Top             =   960
      Width           =   135
   End
   Begin VB.Image hp2 
      Height          =   135
      Left            =   20520
      Top             =   960
      Width           =   135
   End
   Begin VB.Image hp1 
      Height          =   615
      Left            =   3720
      Picture         =   "Form9.frx":190AB
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label ht24 
      Caption         =   "Label1"
      Height          =   135
      Left            =   24360
      TabIndex        =   141
      Top             =   600
      Width           =   255
   End
   Begin VB.Label ht23 
      Caption         =   "Label1"
      Height          =   135
      Left            =   24480
      TabIndex        =   140
      Top             =   240
      Width           =   135
   End
   Begin VB.Label ht22 
      Caption         =   "Label1"
      Height          =   135
      Left            =   24000
      TabIndex        =   139
      Top             =   600
      Width           =   135
   End
   Begin VB.Label ht21 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23640
      TabIndex        =   138
      Top             =   600
      Width           =   135
   End
   Begin VB.Label ht20 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23040
      TabIndex        =   137
      Top             =   600
      Width           =   255
   End
   Begin VB.Label ht19 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22680
      TabIndex        =   136
      Top             =   600
      Width           =   135
   End
   Begin VB.Label ht18 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22200
      TabIndex        =   135
      Top             =   480
      Width           =   255
   End
   Begin VB.Label ht17 
      Caption         =   "Label1"
      Height          =   255
      Left            =   21720
      TabIndex        =   134
      Top             =   480
      Width           =   255
   End
   Begin VB.Label ht16 
      Caption         =   "Label1"
      Height          =   135
      Left            =   21360
      TabIndex        =   133
      Top             =   600
      Width           =   135
   End
   Begin VB.Label ht15 
      Caption         =   "Label1"
      Height          =   135
      Left            =   20880
      TabIndex        =   132
      Top             =   600
      Width           =   255
   End
   Begin VB.Label ht14 
      Caption         =   "Label1"
      Height          =   255
      Left            =   20520
      TabIndex        =   131
      Top             =   600
      Width           =   135
   End
   Begin VB.Label ht13 
      Caption         =   "Label1"
      Height          =   255
      Left            =   20040
      TabIndex        =   130
      Top             =   600
      Width           =   255
   End
   Begin VB.Label ht12 
      Caption         =   "Label1"
      Height          =   255
      Left            =   24000
      TabIndex        =   129
      Top             =   120
      Width           =   255
   End
   Begin VB.Label ht11 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23520
      TabIndex        =   128
      Top             =   240
      Width           =   255
   End
   Begin VB.Label ht10 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23280
      TabIndex        =   127
      Top             =   240
      Width           =   135
   End
   Begin VB.Label ht9 
      Caption         =   "Label1"
      Height          =   255
      Left            =   22920
      TabIndex        =   126
      Top             =   240
      Width           =   135
   End
   Begin VB.Label ht8 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22560
      TabIndex        =   125
      Top             =   240
      Width           =   135
   End
   Begin VB.Label ht7 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22080
      TabIndex        =   124
      Top             =   240
      Width           =   255
   End
   Begin VB.Label ht6 
      Caption         =   "Label1"
      Height          =   255
      Left            =   21720
      TabIndex        =   123
      Top             =   240
      Width           =   255
   End
   Begin VB.Label ht5 
      Caption         =   "Label1"
      Height          =   135
      Left            =   21360
      TabIndex        =   122
      Top             =   240
      Width           =   135
   End
   Begin VB.Label ht4 
      Caption         =   "Label1"
      Height          =   135
      Left            =   21000
      TabIndex        =   121
      Top             =   240
      Width           =   255
   End
   Begin VB.Label ht3 
      Caption         =   "Label1"
      Height          =   255
      Left            =   20760
      TabIndex        =   120
      Top             =   240
      Width           =   255
   End
   Begin VB.Label ht2 
      Caption         =   "Label1"
      Height          =   375
      Left            =   20280
      TabIndex        =   119
      Top             =   3720
      Width           =   855
   End
   Begin VB.Label ht1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00时"
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
      Height          =   375
      Left            =   3600
      TabIndex        =   118
      Top             =   3720
      Width           =   855
   End
   Begin VB.Label nw15 
      Caption         =   "Label1"
      Height          =   375
      Left            =   24600
      TabIndex        =   117
      Top             =   9600
      Width           =   375
   End
   Begin VB.Label nw14 
      Caption         =   "Label1"
      Height          =   255
      Left            =   24120
      TabIndex        =   116
      Top             =   9720
      Width           =   255
   End
   Begin VB.Label nw13 
      Caption         =   "Label1"
      Height          =   255
      Left            =   23400
      TabIndex        =   115
      Top             =   9720
      Width           =   495
   End
   Begin VB.Label nw12 
      Caption         =   "Label1"
      Height          =   255
      Left            =   22680
      TabIndex        =   114
      Top             =   9720
      Width           =   375
   End
   Begin VB.Label nw11 
      Caption         =   "Label1"
      Height          =   255
      Left            =   22080
      TabIndex        =   113
      Top             =   9840
      Width           =   375
   End
   Begin VB.Label nw10 
      Caption         =   "Label1"
      Height          =   255
      Left            =   21600
      TabIndex        =   112
      Top             =   9840
      Width           =   255
   End
   Begin VB.Label nw9 
      Caption         =   "Label1"
      Height          =   255
      Left            =   20760
      TabIndex        =   111
      Top             =   9840
      Width           =   495
   End
   Begin VB.Label nw8 
      Caption         =   "Label1"
      Height          =   255
      Left            =   20160
      TabIndex        =   110
      Top             =   9720
      Width           =   375
   End
   Begin VB.Image np15 
      Height          =   135
      Left            =   24120
      Top             =   9120
      Width           =   135
   End
   Begin VB.Image np14 
      Height          =   255
      Left            =   23400
      Top             =   9120
      Width           =   375
   End
   Begin VB.Image np13 
      Height          =   255
      Left            =   22920
      Top             =   9120
      Width           =   255
   End
   Begin VB.Image np12 
      Height          =   375
      Left            =   22440
      Top             =   9240
      Width           =   255
   End
   Begin VB.Image np11 
      Height          =   255
      Left            =   21840
      Top             =   9240
      Width           =   135
   End
   Begin VB.Image np10 
      Height          =   255
      Left            =   21360
      Top             =   9240
      Width           =   135
   End
   Begin VB.Image np9 
      Height          =   255
      Left            =   20760
      Top             =   9360
      Width           =   255
   End
   Begin VB.Image np8 
      Height          =   135
      Left            =   20160
      Top             =   9360
      Width           =   255
   End
   Begin VB.Label nt15 
      Caption         =   "Label1"
      Height          =   135
      Left            =   24480
      TabIndex        =   109
      Top             =   8760
      Width           =   255
   End
   Begin VB.Label nt14 
      Caption         =   "Label1"
      Height          =   255
      Left            =   23880
      TabIndex        =   108
      Top             =   8760
      Width           =   255
   End
   Begin VB.Label nt13 
      Caption         =   "Label1"
      Height          =   255
      Left            =   23280
      TabIndex        =   107
      Top             =   8760
      Width           =   375
   End
   Begin VB.Label nt12 
      Caption         =   "Label1"
      Height          =   255
      Left            =   22680
      TabIndex        =   106
      Top             =   8760
      Width           =   375
   End
   Begin VB.Label nt11 
      Caption         =   "Label1"
      Height          =   255
      Left            =   22200
      TabIndex        =   105
      Top             =   8760
      Width           =   375
   End
   Begin VB.Label nt10 
      Caption         =   "Label1"
      Height          =   255
      Left            =   21600
      TabIndex        =   104
      Top             =   8760
      Width           =   375
   End
   Begin VB.Label nt9 
      Caption         =   "Label1"
      Height          =   255
      Left            =   20880
      TabIndex        =   103
      Top             =   8760
      Width           =   375
   End
   Begin VB.Label nt8 
      Caption         =   "Label1"
      Height          =   135
      Left            =   20160
      TabIndex        =   102
      Top             =   8880
      Width           =   495
   End
   Begin VB.Line nt14_15 
      X1              =   23760
      X2              =   24120
      Y1              =   8400
      Y2              =   8400
   End
   Begin VB.Line nt13_14 
      X1              =   23160
      X2              =   23400
      Y1              =   8400
      Y2              =   8400
   End
   Begin VB.Line nt12_13 
      X1              =   22560
      X2              =   22800
      Y1              =   8400
      Y2              =   8400
   End
   Begin VB.Line nt11_12 
      X1              =   22080
      X2              =   22320
      Y1              =   8400
      Y2              =   8400
   End
   Begin VB.Line nt10_11 
      X1              =   21600
      X2              =   21720
      Y1              =   8400
      Y2              =   8400
   End
   Begin VB.Line nt9_10 
      X1              =   21120
      X2              =   21240
      Y1              =   8400
      Y2              =   8400
   End
   Begin VB.Line nt8_9 
      X1              =   20520
      X2              =   20760
      Y1              =   8400
      Y2              =   8400
   End
   Begin VB.Line nt7_8 
      X1              =   20160
      X2              =   20280
      Y1              =   8400
      Y2              =   8400
   End
   Begin VB.Line dt14_15 
      X1              =   24360
      X2              =   24720
      Y1              =   8040
      Y2              =   8160
   End
   Begin VB.Line dt13_14 
      X1              =   24000
      X2              =   24120
      Y1              =   8160
      Y2              =   8160
   End
   Begin VB.Line dt12_13 
      X1              =   23160
      X2              =   23520
      Y1              =   8040
      Y2              =   8040
   End
   Begin VB.Line dt11_12 
      X1              =   22560
      X2              =   22800
      Y1              =   8040
      Y2              =   8040
   End
   Begin VB.Line dt10_11 
      X1              =   21960
      X2              =   22320
      Y1              =   8040
      Y2              =   8040
   End
   Begin VB.Line dt9_10 
      X1              =   21480
      X2              =   21720
      Y1              =   8040
      Y2              =   8040
   End
   Begin VB.Line dt8_9 
      X1              =   20880
      X2              =   21240
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Line dt7_8 
      X1              =   20040
      X2              =   20640
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Label dt15 
      Caption         =   "Label1"
      Height          =   255
      Left            =   24480
      TabIndex        =   101
      Top             =   7560
      Width           =   255
   End
   Begin VB.Label dt14 
      Caption         =   "Label1"
      Height          =   255
      Left            =   24000
      TabIndex        =   100
      Top             =   7680
      Width           =   255
   End
   Begin VB.Label dt13 
      Caption         =   "Label1"
      Height          =   255
      Left            =   23280
      TabIndex        =   99
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label dt12 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22560
      TabIndex        =   98
      Top             =   7680
      Width           =   375
   End
   Begin VB.Label dt11 
      Caption         =   "Label1"
      Height          =   255
      Left            =   21960
      TabIndex        =   97
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label dt10 
      Caption         =   "Label1"
      Height          =   135
      Left            =   21360
      TabIndex        =   96
      Top             =   7560
      Width           =   255
   End
   Begin VB.Label dt9 
      Caption         =   "Label1"
      Height          =   255
      Left            =   20760
      TabIndex        =   95
      Top             =   7560
      Width           =   375
   End
   Begin VB.Label dt8 
      Caption         =   "Label1"
      Height          =   255
      Left            =   20040
      TabIndex        =   94
      Top             =   7440
      Width           =   375
   End
   Begin VB.Label dwin15 
      Caption         =   "Label1"
      Height          =   255
      Left            =   24360
      TabIndex        =   93
      Top             =   7200
      Width           =   615
   End
   Begin VB.Label dwin14 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23880
      TabIndex        =   92
      Top             =   7200
      Width           =   255
   End
   Begin VB.Label dwin13 
      Caption         =   "Label1"
      Height          =   255
      Left            =   23280
      TabIndex        =   91
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label dwin12 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22800
      TabIndex        =   90
      Top             =   7200
      Width           =   255
   End
   Begin VB.Label dwin11 
      Caption         =   "Label1"
      Height          =   135
      Left            =   22080
      TabIndex        =   89
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label dwin10 
      Caption         =   "Label1"
      Height          =   255
      Left            =   21360
      TabIndex        =   88
      Top             =   7200
      Width           =   375
   End
   Begin VB.Label dwin9 
      Caption         =   "Label1"
      Height          =   255
      Left            =   20760
      TabIndex        =   87
      Top             =   7080
      Width           =   375
   End
   Begin VB.Label dwin8 
      Caption         =   "Label1"
      Height          =   135
      Left            =   20040
      TabIndex        =   86
      Top             =   7080
      Width           =   375
   End
   Begin VB.Label dw15 
      Caption         =   "Label1"
      Height          =   135
      Left            =   24360
      TabIndex        =   85
      Top             =   6840
      Width           =   255
   End
   Begin VB.Label dw14 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23880
      TabIndex        =   84
      Top             =   6840
      Width           =   255
   End
   Begin VB.Label dw13 
      Caption         =   "Label1"
      Height          =   135
      Left            =   23160
      TabIndex        =   83
      Top             =   6840
      Width           =   495
   End
   Begin VB.Label dw12 
      Caption         =   "Label1"
      Height          =   255
      Left            =   22680
      TabIndex        =   82
      Top             =   6720
      Width           =   255
   End
   Begin VB.Label dw11 
      Caption         =   "Label1"
      Height          =   255
      Left            =   22080
      TabIndex        =   81
      Top             =   6720
      Width           =   375
   End
   Begin VB.Label dw10 
      Caption         =   "Label1"
      Height          =   255
      Left            =   21360
      TabIndex        =   80
      Top             =   6720
      Width           =   375
   End
   Begin VB.Label dw9 
      Caption         =   "Label1"
      Height          =   135
      Left            =   20880
      TabIndex        =   79
      Top             =   6720
      Width           =   255
   End
   Begin VB.Label dw8 
      Caption         =   "Label1"
      Height          =   135
      Left            =   20160
      TabIndex        =   78
      Top             =   6720
      Width           =   495
   End
   Begin VB.Image dp15 
      Height          =   255
      Left            =   24240
      Top             =   6360
      Width           =   135
   End
   Begin VB.Image dp14 
      Height          =   255
      Left            =   23520
      Top             =   6360
      Width           =   375
   End
   Begin VB.Image dp13 
      Height          =   255
      Left            =   22920
      Top             =   6360
      Width           =   255
   End
   Begin VB.Image dp12 
      Height          =   255
      Left            =   22320
      Top             =   6360
      Width           =   255
   End
   Begin VB.Image dp11 
      Height          =   135
      Left            =   21840
      Top             =   6360
      Width           =   135
   End
   Begin VB.Image dp10 
      Height          =   135
      Left            =   21360
      Top             =   6360
      Width           =   255
   End
   Begin VB.Image dp9 
      Height          =   135
      Left            =   20760
      Top             =   6240
      Width           =   255
   End
   Begin VB.Image dp8 
      Height          =   255
      Left            =   20160
      Top             =   6240
      Width           =   375
   End
   Begin VB.Label wee15 
      Caption         =   "Label1"
      Height          =   375
      Left            =   24240
      TabIndex        =   77
      Top             =   5760
      Width           =   495
   End
   Begin VB.Label wee14 
      Caption         =   "Label1"
      Height          =   375
      Left            =   23640
      TabIndex        =   76
      Top             =   5760
      Width           =   495
   End
   Begin VB.Label wee13 
      Caption         =   "Label1"
      Height          =   255
      Left            =   23280
      TabIndex        =   75
      Top             =   5760
      Width           =   495
   End
   Begin VB.Label wee12 
      Caption         =   "Label1"
      Height          =   375
      Left            =   22800
      TabIndex        =   74
      Top             =   5760
      Width           =   495
   End
   Begin VB.Label wee11 
      Caption         =   "Label1"
      Height          =   495
      Left            =   22080
      TabIndex        =   73
      Top             =   5760
      Width           =   615
   End
   Begin VB.Label wee10 
      Caption         =   "Label1"
      Height          =   495
      Left            =   21360
      TabIndex        =   72
      Top             =   5760
      Width           =   615
   End
   Begin VB.Label wee9 
      Caption         =   "Label1"
      Height          =   495
      Left            =   20760
      TabIndex        =   71
      Top             =   5760
      Width           =   495
   End
   Begin VB.Label wee8 
      Caption         =   "Label1"
      Height          =   495
      Left            =   20160
      TabIndex        =   70
      Top             =   5760
      Width           =   495
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      X1              =   3120
      X2              =   19800
      Y1              =   3680
      Y2              =   3680
   End
   Begin VB.Label state 
      BackStyle       =   0  'Transparent
      Caption         =   "状态：正常"
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
      Left            =   3360
      TabIndex        =   67
      Top             =   3240
      Width           =   3855
   End
   Begin VB.Label vis 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00.0km"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   14760
      TabIndex        =   66
      Top             =   1500
      Width           =   1695
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "能见度"
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
      Height          =   495
      Index           =   6
      Left            =   14760
      TabIndex        =   65
      Top             =   960
      Width           =   1695
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FF0000&
      FillColor       =   &H00FF8080&
      Height          =   2190
      Index           =   2
      Left            =   14760
      Top             =   840
      Width           =   3390
   End
   Begin VB.Line nt5_6 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   2
      X1              =   13680
      X2              =   15960
      Y1              =   9360
      Y2              =   9360
   End
   Begin VB.Line nt6_7 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   2
      X1              =   15960
      X2              =   18240
      Y1              =   9360
      Y2              =   9360
   End
   Begin VB.Line nt4_5 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   2
      X1              =   11400
      X2              =   13680
      Y1              =   9360
      Y2              =   9360
   End
   Begin VB.Line nt3_4 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   2
      X1              =   9000
      X2              =   11400
      Y1              =   9360
      Y2              =   9360
   End
   Begin VB.Line nt2_3 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   2
      X1              =   6720
      X2              =   9000
      Y1              =   9360
      Y2              =   9360
   End
   Begin VB.Line nt1_2 
      BorderColor     =   &H00FFFF00&
      BorderWidth     =   2
      X1              =   4440
      X2              =   6720
      Y1              =   9360
      Y2              =   9360
   End
   Begin VB.Line dt6_7 
      BorderColor     =   &H0000FFFF&
      BorderWidth     =   2
      X1              =   15960
      X2              =   18240
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Line dt5_6 
      BorderColor     =   &H0000FFFF&
      BorderWidth     =   2
      X1              =   13560
      X2              =   15960
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Line dt4_5 
      BorderColor     =   &H0000FFFF&
      BorderWidth     =   2
      X1              =   11280
      X2              =   13560
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Line dt3_4 
      BorderColor     =   &H0000FFFF&
      BorderWidth     =   2
      X1              =   9000
      X2              =   11280
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Line dt2_3 
      BorderColor     =   &H0000FFFF&
      BorderWidth     =   2
      X1              =   6720
      X2              =   9000
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Line dt1_2 
      BorderColor     =   &H0000FFFF&
      BorderWidth     =   2
      X1              =   4440
      X2              =   6720
      Y1              =   7920
      Y2              =   7920
   End
   Begin VB.Label nt7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   17760
      TabIndex        =   64
      Top             =   9480
      Width           =   855
   End
   Begin VB.Label nt6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   15480
      TabIndex        =   63
      Top             =   9480
      Width           =   855
   End
   Begin VB.Label nt5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   13200
      TabIndex        =   62
      Top             =   9480
      Width           =   855
   End
   Begin VB.Label nt4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   10920
      TabIndex        =   61
      Top             =   9480
      Width           =   855
   End
   Begin VB.Label nt3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   8640
      TabIndex        =   60
      Top             =   9480
      Width           =   855
   End
   Begin VB.Label nt2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   6360
      TabIndex        =   59
      Top             =   9480
      Width           =   855
   End
   Begin VB.Label nt1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   375
      Left            =   4080
      TabIndex        =   58
      Top             =   9480
      Width           =   855
   End
   Begin VB.Label dt7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   17760
      TabIndex        =   57
      Top             =   7560
      Width           =   855
   End
   Begin VB.Label dt6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   15480
      TabIndex        =   56
      Top             =   7560
      Width           =   855
   End
   Begin VB.Label dt5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   13200
      TabIndex        =   55
      Top             =   7560
      Width           =   855
   End
   Begin VB.Label dt4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   10920
      TabIndex        =   54
      Top             =   7560
      Width           =   855
   End
   Begin VB.Label dt3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   8640
      TabIndex        =   53
      Top             =   7560
      Width           =   855
   End
   Begin VB.Label dt2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   6360
      TabIndex        =   52
      Top             =   7560
      Width           =   855
   End
   Begin VB.Label dt1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   4080
      TabIndex        =   51
      Top             =   7560
      Width           =   855
   End
   Begin VB.Image np7 
      Height          =   615
      Left            =   17880
      Picture         =   "Form9.frx":1BD3C
      Stretch         =   -1  'True
      Top             =   9960
      Width           =   615
   End
   Begin VB.Image np6 
      Height          =   615
      Left            =   15600
      Picture         =   "Form9.frx":1E9CD
      Stretch         =   -1  'True
      Top             =   9960
      Width           =   615
   End
   Begin VB.Image np5 
      Height          =   615
      Left            =   13320
      Picture         =   "Form9.frx":2165E
      Stretch         =   -1  'True
      Top             =   9960
      Width           =   615
   End
   Begin VB.Image np4 
      Height          =   615
      Left            =   11040
      Picture         =   "Form9.frx":242EF
      Stretch         =   -1  'True
      Top             =   9960
      Width           =   615
   End
   Begin VB.Image np3 
      Height          =   615
      Left            =   8760
      Picture         =   "Form9.frx":26F80
      Stretch         =   -1  'True
      Top             =   9960
      Width           =   615
   End
   Begin VB.Image np2 
      Height          =   615
      Left            =   6480
      Picture         =   "Form9.frx":29C11
      Stretch         =   -1  'True
      Top             =   9960
      Width           =   615
   End
   Begin VB.Image np1 
      Height          =   615
      Left            =   4200
      Picture         =   "Form9.frx":2C8A2
      Stretch         =   -1  'True
      Top             =   9960
      Width           =   615
   End
   Begin VB.Label nw7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚天气"
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
      Height          =   375
      Left            =   17280
      TabIndex        =   50
      Top             =   10680
      Width           =   1815
   End
   Begin VB.Label nw6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚天气"
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
      Height          =   375
      Left            =   15000
      TabIndex        =   49
      Top             =   10680
      Width           =   1815
   End
   Begin VB.Label nw5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚天气"
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
      Height          =   375
      Left            =   12720
      TabIndex        =   48
      Top             =   10680
      Width           =   1815
   End
   Begin VB.Label nw4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚天气"
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
      Height          =   375
      Left            =   10440
      TabIndex        =   47
      Top             =   10680
      Width           =   1815
   End
   Begin VB.Label nw3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚天气"
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
      Height          =   375
      Left            =   8160
      TabIndex        =   46
      Top             =   10680
      Width           =   1815
   End
   Begin VB.Label nw2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚天气"
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
      Height          =   375
      Left            =   5880
      TabIndex        =   45
      Top             =   10680
      Width           =   1815
   End
   Begin VB.Label nw1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "夜晚天气"
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
      Height          =   375
      Left            =   3600
      TabIndex        =   44
      Top             =   10680
      Width           =   1815
   End
   Begin VB.Label dwin7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "某某风 xx~xx级"
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
      Height          =   375
      Left            =   17280
      TabIndex        =   43
      Top             =   7080
      Width           =   1815
   End
   Begin VB.Label dwin6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "某某风 xx~xx级"
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
      Height          =   375
      Left            =   15000
      TabIndex        =   42
      Top             =   7080
      Width           =   1815
   End
   Begin VB.Label dwin5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "某某风 xx~xx级"
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
      Height          =   375
      Left            =   12720
      TabIndex        =   41
      Top             =   7080
      Width           =   1815
   End
   Begin VB.Label dwin4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "某某风 xx~xx级"
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
      Height          =   375
      Left            =   10440
      TabIndex        =   40
      Top             =   7080
      Width           =   1815
   End
   Begin VB.Label dwin3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "某某风 xx~xx级"
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
      Height          =   375
      Left            =   8160
      TabIndex        =   39
      Top             =   7080
      Width           =   1815
   End
   Begin VB.Label dwin2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "某某风 xx~xx级"
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
      Height          =   375
      Left            =   5880
      TabIndex        =   38
      Top             =   7080
      Width           =   1815
   End
   Begin VB.Label dwin1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "某某风 xx~xx级"
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
      Height          =   375
      Left            =   3600
      TabIndex        =   37
      Top             =   7080
      Width           =   1815
   End
   Begin VB.Label dw7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白天天气"
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
      Height          =   375
      Left            =   17280
      TabIndex        =   36
      Top             =   6720
      Width           =   1815
   End
   Begin VB.Label dw6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白天天气"
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
      Height          =   375
      Left            =   15000
      TabIndex        =   35
      Top             =   6720
      Width           =   1815
   End
   Begin VB.Label dw5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白天天气"
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
      Height          =   375
      Left            =   12720
      TabIndex        =   34
      Top             =   6720
      Width           =   1815
   End
   Begin VB.Label dw4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白天天气"
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
      Height          =   375
      Left            =   10440
      TabIndex        =   33
      Top             =   6720
      Width           =   1815
   End
   Begin VB.Label dw3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白天天气"
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
      Height          =   375
      Left            =   8160
      TabIndex        =   32
      Top             =   6720
      Width           =   1815
   End
   Begin VB.Label dw2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白天天气"
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
      Height          =   375
      Left            =   5880
      TabIndex        =   31
      Top             =   6720
      Width           =   1815
   End
   Begin VB.Label dw1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "白天天气"
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
      Height          =   375
      Left            =   3600
      TabIndex        =   30
      Top             =   6720
      Width           =   1815
   End
   Begin VB.Image dp7 
      Height          =   615
      Left            =   17880
      Picture         =   "Form9.frx":2F533
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   615
   End
   Begin VB.Image dp6 
      Height          =   615
      Left            =   15600
      Picture         =   "Form9.frx":321C4
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   615
   End
   Begin VB.Image dp5 
      Height          =   615
      Left            =   13320
      Picture         =   "Form9.frx":34E55
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   615
   End
   Begin VB.Image dp4 
      Height          =   615
      Left            =   11040
      Picture         =   "Form9.frx":37AE6
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   615
   End
   Begin VB.Image dp3 
      Height          =   615
      Left            =   8760
      Picture         =   "Form9.frx":3A777
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   615
   End
   Begin VB.Image dp2 
      Height          =   615
      Left            =   6480
      Picture         =   "Form9.frx":3D408
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   615
   End
   Begin VB.Image dp1 
      Height          =   615
      Left            =   4200
      Picture         =   "Form9.frx":40099
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   615
   End
   Begin VB.Label wee7 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00月00日(周八)"
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
      Height          =   375
      Left            =   17280
      TabIndex        =   29
      Top             =   5640
      Width           =   1815
   End
   Begin VB.Label wee6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00月00日(周八)"
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
      Height          =   375
      Left            =   15000
      TabIndex        =   28
      Top             =   5640
      Width           =   1815
   End
   Begin VB.Label wee5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00月00日(周八)"
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
      Height          =   375
      Left            =   12720
      TabIndex        =   27
      Top             =   5640
      Width           =   1935
   End
   Begin VB.Label wee4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00月00日(周八)"
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
      Height          =   375
      Left            =   10440
      TabIndex        =   26
      Top             =   5640
      Width           =   1935
   End
   Begin VB.Label wee3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00月00日(周八)"
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
      Height          =   375
      Left            =   8160
      TabIndex        =   25
      Top             =   5640
      Width           =   1815
   End
   Begin VB.Label wee2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00月00日(周八)"
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
      Height          =   375
      Left            =   5880
      TabIndex        =   24
      Top             =   5640
      Width           =   1815
   End
   Begin VB.Label wee1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00月00日(周八)"
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
      Height          =   375
      Left            =   3600
      TabIndex        =   23
      Top             =   5640
      Width           =   1815
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "风速"
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
      Height          =   495
      Index           =   4
      Left            =   14760
      TabIndex        =   22
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "风向"
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
      Height          =   495
      Index           =   3
      Left            =   16440
      TabIndex        =   21
      Top             =   960
      Width           =   1695
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FF0000&
      FillColor       =   &H00FF8080&
      Height          =   2190
      Index           =   0
      Left            =   4800
      Top             =   840
      Width           =   3390
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "湿度"
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
      Height          =   495
      Index           =   2
      Left            =   6480
      TabIndex        =   20
      Top             =   2040
      Width           =   1695
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "体感温度"
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
      Height          =   495
      Index           =   1
      Left            =   4800
      TabIndex        =   19
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label info 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "气压"
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
      Height          =   495
      Index           =   0
      Left            =   6480
      TabIndex        =   18
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label pre 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0000hPa"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   6480
      TabIndex        =   17
      Top             =   1500
      Width           =   1695
   End
   Begin VB.Label warn 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "预警信息:某某颜色预警"
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
      Height          =   495
      Left            =   7200
      TabIndex        =   15
      Top             =   3240
      Width           =   8655
   End
   Begin VB.Label wl 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00级"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   16440
      TabIndex        =   14
      Top             =   2580
      Width           =   1695
   End
   Begin VB.Label ws 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000.0km/h"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   14760
      TabIndex        =   13
      Top             =   2580
      Width           =   1695
   End
   Begin VB.Label wd 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "风向标"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   375
      Left            =   16440
      TabIndex        =   12
      Top             =   1500
      Width           =   1695
   End
   Begin VB.Label hu 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "000%"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   6480
      TabIndex        =   11
      Top             =   2580
      Width           =   1695
   End
   Begin VB.Label feel 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0.0℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   4800
      TabIndex        =   10
      Top             =   1500
      Width           =   1695
   End
   Begin VB.Label cw 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "当前"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   975
      Left            =   9480
      TabIndex        =   9
      Top             =   2160
      Width           =   3975
   End
   Begin VB.Label update 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "更新时间:0000-00-00 00:00"
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
      Height          =   375
      Left            =   15960
      TabIndex        =   8
      Top             =   3240
      Width           =   3375
   End
   Begin VB.Label ct 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "0℃"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   42
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   975
      Left            =   9600
      TabIndex        =   7
      Top             =   1080
      Width           =   3615
   End
   Begin VB.Label location 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "地点"
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
      Left            =   8880
      TabIndex        =   6
      Top             =   240
      Width           =   5175
   End
   Begin VB.Image background 
      Appearance      =   0  'Flat
      Height          =   11175
      Left            =   3120
      Picture         =   "Form9.frx":42D2A
      Stretch         =   -1  'True
      Top             =   0
      Width           =   16695
   End
End
Attribute VB_Name = "Form9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" _
(ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, _
ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Const SW_SHOW = 5
Private Function loadHour(hr As Integer, lin As Integer)
Dim p As Integer
Dim hou, w, flag As String
Open "C:\weather\24.txt" For Binary As #1
s = Split(Input(LOF(1), #1), vbCrLf)
hou = s(lin)
p = Val(s(lin + 1))
flag = s(lin + 2)
w = s(lin + 3)
Close #1
Me.Controls("ht" & hr).Caption = hou & "时"
Me.Controls("hw" & hr).Caption = w & "℃"

If p >= 0 And p <= 3 And flag = "D" Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\sun.jpg")
ElseIf p >= 0 And p <= 3 And flag = "N" Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\moon.jpg")
ElseIf p >= 4 And p <= 8 And flag = "D" Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\sunny.jpg")
ElseIf p >= 4 And p <= 8 And flag = "N" Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\moony.jpg")
ElseIf p = 9 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\cloud.jpg")
ElseIf p = 10 And flag = "D" Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\zy1.jpg")
ElseIf p = 10 And flag = "N" Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\zy2.jpg")
ElseIf p = 11 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\th.jpg")
ElseIf p = 12 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\hail.jpg")
ElseIf p = 13 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\rain.jpg")
ElseIf p = 14 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\mrain.jpg")
ElseIf p = 15 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\lrain.jpg")
ElseIf p >= 16 And p <= 18 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\xlrain.jpg")
ElseIf p = 19 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\ice.jpg")
ElseIf p = 20 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\ras.jpg")
ElseIf p = 21 And flag = "D" Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\zx1.jpg")
ElseIf p = 21 And flag = "N" Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\zx2.jpg")
ElseIf p = 22 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\snow.jpg")
ElseIf p = 23 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\msnow.jpg")
ElseIf p = 24 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\lsnow.jpg")
ElseIf p = 25 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\xlsnow.jpg")
ElseIf p >= 26 And p <= 29 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\sa.jpg")
ElseIf p = 30 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\fr.jpg")
ElseIf p = 31 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\haze.jpg")
ElseIf p >= 32 And p <= 36 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\wind.jpg")
ElseIf p = 37 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\co.jpg")
ElseIf p = 38 Then
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\ht.jpg")
Else
Me.Controls("hp" & hr).Picture = LoadPicture("C:\weather\p\null.jpg")
End If

End Function
Private Function loadMessage(cm As Integer, li As Integer)

Open "C:\weather\data.txt" For Binary As #1

s = Split(Input(LOF(1), #1), vbCrLf)

nweek = s(li)
nmon = s(li + 1)
ndaily = s(li + 2)
nwea1 = s(li + 3)
nwd1 = s(li + 4)
nwl1 = s(li + 5)
ntemp1 = s(li + 6)
ntemp2 = s(li + 7)
nwea2 = s(li + 8)
nwd2 = s(li + 9)
nwl2 = s(li + 10)

Close #1


weekly = Mid(nweek, 2, Len(nweek))
mon = Mid(nmon, 2, Len(nmon))
daily = Mid(ndaily, 2, Len(ndaily))
wea1 = Mid(nwea1, 2, Len(nwea1))
wea2 = Mid(nwea2, 2, Len(nwea2))
temp1 = Mid(ntemp1, 2, Len(ntemp1))
temp2 = Mid(ntemp2, 2, Len(ntemp2))
wd1 = Mid(nwd1, 2, Len(nwd1))
wd2 = Mid(nwd2, 2, Len(nwd2))
wl1 = Mid(nwl1, 2, Len(nwl1))
wl2 = Mid(nwl2, 2, Len(nwl2))


dd = mon & "月" & daily & "日(" & weekly & ")"
If wd1 = "无持续风向" Then
wind1 = wd1 + wl1
Else
wind1 = wd1 + "风" + wl1
End If
wind2 = wd2 + wl2

Me.Controls("wee" & cm).Caption = dd
Me.Controls("dw" & cm).Caption = wea1
Me.Controls("nw" & cm).Caption = wea2
Me.Controls("dwin" & cm).Caption = wind1
'Me.Controls("nwin" & cm).Caption = wind2
Me.Controls("dt" & cm).Caption = temp1
Me.Controls("nt" & cm).Caption = temp2

If InStr(1, wea1, "雷") = 0 And InStr(1, wea1, "夹") = 0 And InStr(1, wea1, "雾") = 0 And InStr(1, wea1, "霾") = 0 And InStr(1, wea1, "冻") = 0 And InStr(1, wea1, "霰") = 0 And InStr(1, wea1, "风") = 0 And InStr(1, wea1, "沙") = 0 And InStr(1, wea1, "尘") = 0 And InStr(1, wea1, "冰") = 0 And InStr(1, wea1, "雹") = 0 And InStr(1, wea1, "冷") = 0 And InStr(1, wea1, "热") = 0 Then

If InStr(1, wea1, "晴") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\sun.jpg")
ElseIf InStr(1, wea1, "云") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\sunny.jpg")
ElseIf InStr(1, wea1, "阴") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\cloud.jpg")
ElseIf InStr(1, wea1, "雨") <> 0 Then

If InStr(1, wea1, "中") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\mrain.jpg")
ElseIf InStr(1, wea1, "暴") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\xlrain.jpg")
ElseIf InStr(1, wea1, "大") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\lrain.jpg")
ElseIf InStr(1, wea1, "阵") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\zy1.jpg")
Else
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\rain.jpg")
End If

ElseIf InStr(1, wea1, "雪") <> 0 Then

If InStr(1, wea1, "中") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\msnow.jpg")
ElseIf InStr(1, wea1, "暴") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\xlsnow.jpg")
ElseIf InStr(1, wea1, "大") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\lsnow.jpg")
ElseIf InStr(1, wea1, "阵") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\zx1.jpg")

Else
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\snow.jpg")
End If

Else
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\null.jpg")

End If

Else

If InStr(1, wea1, "雷") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\th.jpg")
ElseIf InStr(1, wea1, "夹") <> 0 Or InStr(1, wea1, "霰") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\ras.jpg")
ElseIf InStr(1, wea1, "雾") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\fr.jpg")
ElseIf InStr(1, wea1, "霾") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\haze.jpg")
ElseIf InStr(1, wea1, "雹") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\hail.jpg")
ElseIf InStr(1, wea1, "冻") <> 0 Or InStr(1, wea1, "冰") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\ice.jpg")
ElseIf InStr(1, wea1, "风") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\wind.jpg")
ElseIf InStr(1, wea1, "沙") <> 0 Or InStr(1, wea1, "尘") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\sa.jpg")
ElseIf InStr(1, wea1, "冷") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\co.jpg")
ElseIf InStr(1, wea1, "热") <> 0 Then
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\ht.jpg")
Else
Me.Controls("dp" & cm).Picture = LoadPicture("C:\weather\p\null.jpg")
End If

End If



If InStr(1, wea2, "雷") = 0 And InStr(1, wea2, "夹") = 0 And InStr(1, wea2, "雾") = 0 And InStr(1, wea2, "霾") = 0 And InStr(1, wea2, "冻") = 0 And InStr(1, wea2, "霰") = 0 And InStr(1, wea2, "风") = 0 And InStr(1, wea2, "沙") = 0 And InStr(1, wea2, "尘") = 0 And InStr(1, wea2, "冰") = 0 And InStr(1, wea2, "雹") = 0 And InStr(1, wea2, "冷") = 0 And InStr(1, wea2, "热") = 0 Then

If InStr(1, wea2, "晴") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\moon.jpg")
ElseIf InStr(1, wea2, "云") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\moony.jpg")
ElseIf InStr(1, wea2, "阴") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\cloud.jpg")
ElseIf InStr(1, wea2, "雨") <> 0 Then

If InStr(1, wea2, "中") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\mrain.jpg")
ElseIf InStr(1, wea2, "暴") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\xlrain.jpg")
ElseIf InStr(1, wea2, "大") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\lrain.jpg")
ElseIf InStr(1, wea2, "阵") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\zy2.jpg")
Else
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\rain.jpg")
End If

ElseIf InStr(1, wea2, "雪") <> 0 Then

If InStr(1, wea2, "中") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\msnow.jpg")
ElseIf InStr(1, wea2, "暴") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\xlsnow.jpg")
ElseIf InStr(1, wea2, "大") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\lsnow.jpg")
ElseIf InStr(1, wea2, "阵") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\zx2.jpg")

Else
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\snow.jpg")
End If

Else
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\null.jpg")

End If

Else

If InStr(1, wea2, "雷") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\th.jpg")
ElseIf InStr(1, wea2, "夹") <> 0 Or InStr(1, wea2, "霰") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\ras.jpg")
ElseIf InStr(1, wea2, "雾") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\fr.jpg")
ElseIf InStr(1, wea2, "霾") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\haze.jpg")
ElseIf InStr(1, wea2, "雹") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\hail.jpg")
ElseIf InStr(1, wea2, "冻") <> 0 Or InStr(1, wea2, "冰") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\ice.jpg")
ElseIf InStr(1, wea2, "风") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\wind.jpg")
ElseIf InStr(1, wea2, "沙") <> 0 Or InStr(1, wea2, "尘") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\sa.jpg")
ElseIf InStr(1, wea2, "冷") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\co.jpg")
ElseIf InStr(1, wea2, "热") <> 0 Then
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\ht.jpg")
Else
Me.Controls("np" & cm).Picture = LoadPicture("C:\weather\p\null.jpg")
End If

End If


End Function
Private Function move24hours(num As Integer)
For i = 1 To 24
Me.Controls("ht" & i).Left = 3600 + (i - 1) * 1250 - num
Me.Controls("hp" & i).Left = 3720 + (i - 1) * 1250 - num
Me.Controls("hw" & i).Left = 3600 + (i - 1) * 1250 - num
Next i
End Function
Private Function move15days(num As Integer)
For i = 1 To 15
Me.Controls("wee" & i).Left = 3600 + (i - 1) * 2280 - num
Me.Controls("dp" & i).Left = 4200 + (i - 1) * 2280 - num
Me.Controls("dw" & i).Left = 3600 + (i - 1) * 2280 - num
Me.Controls("dwin" & i).Left = 3600 + (i - 1) * 2280 - num
Me.Controls("dt" & i).Left = 4080 + (i - 1) * 2280 - num
Me.Controls("nt" & i).Left = 4080 + (i - 1) * 2280 - num
Me.Controls("np" & i).Left = 4200 + (i - 1) * 2280 - num
Me.Controls("nw" & i).Left = 3600 + (i - 1) * 2280 - num
Next i
For i = 1 To 14
Me.Controls("dt" & i & "_" & (i + 1)).X1 = 4500 + (i - 1) * 2280 - num
Me.Controls("dt" & i & "_" & (i + 1)).X2 = 4500 + i * 2280 - num
Me.Controls("nt" & i & "_" & (i + 1)).X1 = 4500 + (i - 1) * 2280 - num
Me.Controls("nt" & i & "_" & (i + 1)).X2 = 4500 + i * 2280 - num
Next i
End Function

Private Function newLevel()
'获取地点（用户设置）
Dim loc As String
Open "C:\weather\rename.txt" For Input As #1
Input #1, loc
Close #1
location.Caption = loc
'获取当前天气信息
Dim cwcw, temp, aa, bb, cc, dd, ee, ff, gg, hh As String
Open "C:\weather\wea.txt" For Input As #2
Input #2, cwcw, temp, aa, bb, cc, dd, ee, ff, gg, hh, jj
Close #2

If cwcw <> "-" Then
cw.Caption = cwcw
Else
cw.Caption = "未知"
End If

If Val(Mid(temp, 2, Len(temp))) < 9900 Then
ct.Caption = Mid(temp, 2, Len(temp)) & "℃"
Else
ct.Caption = "无数据"
End If

If Val(Mid(aa, 2, Len(aa))) < 9900 Then
feel.Caption = Mid(aa, 2, Len(aa)) & "℃"
Else
feel.Caption = "暂无数据"
End If

If Val(Mid(bb, 2, Len(bb))) < 9900 Then
pre.Caption = Mid(bb, 2, Len(bb)) & "hPa"
Else
pre.Caption = "暂无数据"
End If

If Val(Mid(cc, 2, Len(cc))) < 9900 Then
hu.Caption = Mid(cc, 2, Len(cc)) & "%"
Else
hu.Caption = "暂无数据"
End If

If Val(dd) = 0 Then
wd.Caption = dd
Else
wd.Caption = "无确定风向"
End If

If Val(Mid(ee, 2, Len(ee))) < 9900 Then
ws.Caption = Mid(ee, 2, Len(ee)) & "km/h"
Else
ws.Caption = "暂无数据"
End If

If ff <> "你暂无数据" Then
wl.Caption = Mid(ff, 2, Len(ff))
Else
wl.Caption = "暂无数据"
End If

If Val(Mid(gg, 2, Len(gg))) < 9900 Then
vis.Caption = Mid(gg, 2, Len(gg)) & "km"
Else
vis.Caption = "暂无数据"
End If

uv.Caption = hh

update.Caption = "更新时间:" & Mid(jj, 2, 10) & " " & Mid(jj, 13, 5)

Open "C:\weather\al.txt" For Input As #4
Input #4, ii
Close #4

If ii <> "99999999" Then
warn.Caption = ii & "预警"
Else
warn.Caption = "暂无预警信息"
End If

Dim sta, jkl As String
Open "C:\weather\net.txt" For Input As #3
Input #3, sta, jkl
Close #3

If sta = "0" Then
state.Caption = "状态：正常"
state.ForeColor = vbWhite
ElseIf sta = "1" Then
state.Caption = "状态：连接超时，请检查网络设置"
state.ForeColor = vbYellow
Else
state.Caption = "状态：更新失败，点此查看帮助"
state.ForeColor = vbRed
End If

'获取昼夜信息并选择背景图
Dim zy, back As String
Open "C:\weather\wp\pa.txt" For Input As #4
Input #4, zy, back
Close #4

If zy = "D" And back = "1" Then
background.Picture = LoadPicture("C:\weather\wp\s.jpg")
End If
If zy = "D" And back = "2" Then
background.Picture = LoadPicture("C:\weather\wp\sy.jpg")
End If
If zy = "D" And back = "3" Then
background.Picture = LoadPicture("C:\weather\wp\dc.jpg")
End If
If zy = "D" And back = "4" Then
background.Picture = LoadPicture("C:\weather\wp\dr.jpg")
End If
If zy = "D" And back = "5" Then
background.Picture = LoadPicture("C:\weather\wp\ds.jpg")
End If

If zy = "N" And back = "1" Then
background.Picture = LoadPicture("C:\weather\wp\m.jpg")
End If
If zy = "N" And back = "2" Then
background.Picture = LoadPicture("C:\weather\wp\my.jpg")
End If
If zy = "N" And back = "3" Then
background.Picture = LoadPicture("C:\weather\wp\nc.jpg")
End If
If zy = "N" And back = "4" Then
background.Picture = LoadPicture("C:\weather\wp\nr.jpg")
End If
If zy = "N" And back = "5" Then
background.Picture = LoadPicture("C:\weather\wp\ns.jpg")
End If
'加载24小时预报
Dim ww As Integer
For i = 1 To 24
ww = Val(i)
loadHour ww, ((ww - 1) * 4 + 1)
Next i
'加载15日预报
Dim vv As Integer
For i = 1 To 15
vv = Val(i)
loadMessage vv, ((vv - 1) * 11 + 1)
Next i
'绘制折线图
'数组元素等于两倍天数
Dim tt(30), tmax, tmin, delta, T, del(30) As Integer

For i = 1 To 15
tt(i - 1) = Val(Split(Me.Controls("dt" & i).Caption, "℃~")(0))
tt(i + 14) = Val(Split(Me.Controls("nt" & i).Caption, "℃~")(0))
Next i


tmax = tt(0)
tmin = tt(0)
'找最大值到数组元素减去2
For i = 0 To 28
If tt(i + 1) > tmax Then
tmax = tt(i + 1)
End If
Next i
'找最小值到数组元素减去2
For i = 0 To 28
If tt(i + 1) < tmin Then
tmin = tt(i + 1)
End If
Next i
delta = Abs(tmax - tmin)

If delta > 0 Then
T = 1440 / delta

For i = 0 To 29
del(i) = tt(i) - tmin
Next i

For i = 1 To 14
Me.Controls("dt" & i & "_" & (i + 1)).Y1 = 9360 - del(i - 1) * T
Me.Controls("dt" & i & "_" & (i + 1)).Y2 = 9360 - del(i) * T
Me.Controls("nt" & i & "_" & (i + 1)).Y1 = 9360 - del(i + 14) * T
Me.Controls("nt" & i & "_" & (i + 1)).Y2 = 9360 - del(i + 15) * T
Next i

Else
For i = 1 To 14
Me.Controls("dt" & i & "_" & (i + 1)).Y1 = 8642
Me.Controls("dt" & i & "_" & (i + 1)).Y2 = 8642
Me.Controls("nt" & i & "_" & (i + 1)).Y1 = 8638
Me.Controls("nt" & i & "_" & (i + 1)).Y2 = 8638
Next i
End If


'温度文字随坐标变化
dt1.Top = dt1_2.Y1 - 360
nt1.Top = nt1_2.Y1 + 20
For i = 2 To 15
Me.Controls("dt" & i).Top = Me.Controls("dt" & (i - 1) & "_" & i).Y2 - 360
Me.Controls("nt" & i).Top = Me.Controls("nt" & (i - 1) & "_" & i).Y2 + 20
Next i



End Function


Private Sub Command1_Click()
If Form9.Caption = "菜单" Then
Form2.Show (0)
End If
End Sub

Private Sub Command2_Click()
Form6.Show (0)
End Sub

Private Sub Command3_Click()
Call ShellExecute(Me.hWnd, "open", "http://wjd.email/res/sw1.html", "", "", SW_SHOW)
End Sub

Private Sub Command4_Click()
Form4.Show (0)
End Sub

Private Sub Command5_Click()
Form3.Show (0)
End Sub


Private Sub Command6_Click()
Form9.Hide
Unload Form9
End Sub

Private Sub daily15_Change()
move15days daily15.Value * 456
End Sub
Private Sub daily15_Scroll()
move15days daily15.Value * 456
End Sub


Private Sub Form_Load()
hourly.Value = 0
daily15.Value = 0
'设置24小时预报控件格式
For i = 1 To 24
'这是时间
Me.Controls("ht" & i).Left = 3600 + (i - 1) * 1250
Me.Controls("ht" & i).Top = 3720
Me.Controls("ht" & i).Width = 855
Me.Controls("ht" & i).Height = 375
Me.Controls("ht" & i).Alignment = 2
Me.Controls("ht" & i).BackStyle = 0
Me.Controls("ht" & i).Font = "微软雅黑"
Me.Controls("ht" & i).FontSize = 12
Me.Controls("ht" & i).FontBold = True
Me.Controls("ht" & i).ForeColor = &HFFFFFF
'这是天气图片
Me.Controls("hp" & i).Left = 3720 + (i - 1) * 1250
Me.Controls("hp" & i).Top = 4200
Me.Controls("hp" & i).Stretch = True
Me.Controls("hp" & i).Width = 615
Me.Controls("hp" & i).Height = 615
Me.Controls("hp" & i).Picture = LoadPicture("C:\weather\p\null.jpg")
'这是气温
Me.Controls("hw" & i).Left = 3600 + (i - 1) * 1250
Me.Controls("hw" & i).Top = 4920
Me.Controls("hw" & i).Width = 855
Me.Controls("hw" & i).Height = 375
Me.Controls("hw" & i).Alignment = 2
Me.Controls("hw" & i).BackStyle = 0
Me.Controls("hw" & i).Font = "微软雅黑"
Me.Controls("hw" & i).FontSize = 12
Me.Controls("hw" & i).FontBold = True
Me.Controls("hw" & i).ForeColor = &HFFFF&
Next i


'设置15天预报文字控件格式
For i = 1 To 15
'这是日期
Me.Controls("wee" & i).Left = 3600 + (i - 1) * 2280
Me.Controls("wee" & i).Top = 5640
Me.Controls("wee" & i).Width = 1815
Me.Controls("wee" & i).Height = 375
Me.Controls("wee" & i).Alignment = 2
Me.Controls("wee" & i).BackStyle = 0
Me.Controls("wee" & i).Font = "微软雅黑"
Me.Controls("wee" & i).FontSize = 12
Me.Controls("wee" & i).FontBold = True
Me.Controls("wee" & i).ForeColor = &HFFFFFF
'这是白天图片
Me.Controls("dp" & i).Left = 4200 + (i - 1) * 2280
Me.Controls("dp" & i).Top = 6000
Me.Controls("dp" & i).Stretch = True
Me.Controls("dp" & i).Width = 615
Me.Controls("dp" & i).Height = 615
Me.Controls("dp" & i).Picture = LoadPicture("C:\weather\p\null.jpg")
'这是白天天气
Me.Controls("dw" & i).Left = 3600 + (i - 1) * 2280
Me.Controls("dw" & i).Top = 6720
Me.Controls("dw" & i).Width = 1815
Me.Controls("dw" & i).Height = 375
Me.Controls("dw" & i).Alignment = 2
Me.Controls("dw" & i).BackStyle = 0
Me.Controls("dw" & i).Font = "微软雅黑"
Me.Controls("dw" & i).FontSize = 12
Me.Controls("dw" & i).FontBold = True
Me.Controls("dw" & i).ForeColor = &HFFFFFF
'这是风力信息
Me.Controls("dwin" & i).Left = 3600 + (i - 1) * 2280
Me.Controls("dwin" & i).Top = 7080
Me.Controls("dwin" & i).Width = 1815
Me.Controls("dwin" & i).Height = 375
Me.Controls("dwin" & i).Alignment = 2
Me.Controls("dwin" & i).BackStyle = 0
Me.Controls("dwin" & i).Font = "微软雅黑"
Me.Controls("dwin" & i).FontSize = 12
Me.Controls("dwin" & i).FontBold = True
Me.Controls("dwin" & i).ForeColor = &HFFFFFF
'这是白天温度
Me.Controls("dt" & i).Left = 4080 + (i - 1) * 2280
Me.Controls("dt" & i).Top = 7560
Me.Controls("dt" & i).Width = 855
Me.Controls("dt" & i).Height = 375
Me.Controls("dt" & i).Alignment = 2
Me.Controls("dt" & i).BackStyle = 0
Me.Controls("dt" & i).Font = "微软雅黑"
Me.Controls("dt" & i).FontSize = 12
Me.Controls("dt" & i).FontBold = True
Me.Controls("dt" & i).ForeColor = &HFFFF&
'这是夜间温度
Me.Controls("nt" & i).Left = 4080 + (i - 1) * 2280
Me.Controls("nt" & i).Top = 9480
Me.Controls("nt" & i).Width = 855
Me.Controls("nt" & i).Height = 375
Me.Controls("nt" & i).Alignment = 2
Me.Controls("nt" & i).BackStyle = 0
Me.Controls("nt" & i).Font = "微软雅黑"
Me.Controls("nt" & i).FontSize = 12
Me.Controls("nt" & i).FontBold = True
Me.Controls("nt" & i).ForeColor = &HFFFF00
'这是夜间图片
Me.Controls("np" & i).Left = 4200 + (i - 1) * 2280
Me.Controls("np" & i).Top = 9960
Me.Controls("np" & i).Stretch = True
Me.Controls("np" & i).Width = 615
Me.Controls("np" & i).Height = 615
Me.Controls("np" & i).Picture = LoadPicture("C:\weather\p\null.jpg")
'这是夜间天气
Me.Controls("nw" & i).Left = 3600 + (i - 1) * 2280
Me.Controls("nw" & i).Top = 10680
Me.Controls("nw" & i).Width = 1815
Me.Controls("nw" & i).Height = 375
Me.Controls("nw" & i).Alignment = 2
Me.Controls("nw" & i).BackStyle = 0
Me.Controls("nw" & i).Font = "微软雅黑"
Me.Controls("nw" & i).FontSize = 12
Me.Controls("nw" & i).FontBold = True
Me.Controls("nw" & i).ForeColor = &HFFFFFF
Next i
'设置15天预报文字折线格式
For i = 1 To 14
'这是最高温度折线格式
Me.Controls("dt" & i & "_" & (i + 1)).BorderColor = &HFFFF&
Me.Controls("dt" & i & "_" & (i + 1)).BorderWidth = 2
Me.Controls("dt" & i & "_" & (i + 1)).X1 = 4500 + (i - 1) * 2280
Me.Controls("dt" & i & "_" & (i + 1)).X2 = 4500 + i * 2280
Me.Controls("dt" & i & "_" & (i + 1)).Y1 = 7920
Me.Controls("dt" & i & "_" & (i + 1)).Y2 = 7920
'这是最低温度折线格式
Me.Controls("nt" & i & "_" & (i + 1)).BorderColor = &HFFFF00
Me.Controls("nt" & i & "_" & (i + 1)).BorderWidth = 2
Me.Controls("nt" & i & "_" & (i + 1)).X1 = 4500 + (i - 1) * 2280
Me.Controls("nt" & i & "_" & (i + 1)).X2 = 4500 + i * 2280
Me.Controls("nt" & i & "_" & (i + 1)).Y1 = 9360
Me.Controls("nt" & i & "_" & (i + 1)).Y2 = 9360
Next i




newLevel
Dim zyzy, backg As String
Open "C:\weather\wp\pa.txt" For Input As #31
Input #31, zyzy, backg
Close #31
If zyzy = "N" And backg = "0" Then
background.Picture = LoadPicture("C:\weather\wp\m.jpg")
End If
End Sub


Private Sub hourly_Change()
move24hours hourly.Value * 375
End Sub
Private Sub hourly_Scroll()
move24hours hourly.Value * 375
End Sub

Private Sub Image1_Click()
Call ShellExecute(Me.hWnd, "open", "https://www.seniverse.com", "", "", SW_SHOW)
End Sub

Private Sub state_Click()
If state.Caption = "状态：更新失败，点此查看帮助" Then
Form11.Show (0)
End If
End Sub

Private Sub Timer1_Timer()
If Form1.Caption = "天气（正在刷新…）" Then
Timer1.Interval = 0
Timer2.Interval = 3000
End If
End Sub

Private Sub Timer2_Timer()
Timer2.Interval = 0
newLevel
Timer1.Interval = 1000
End Sub


