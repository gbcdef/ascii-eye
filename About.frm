VERSION 5.00
Begin VB.Form frmAbout 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "关于"
   ClientHeight    =   2385
   ClientLeft      =   7245
   ClientTop       =   1365
   ClientWidth     =   3330
   ClipControls    =   0   'False
   Icon            =   "About.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1646.169
   ScaleMode       =   0  'User
   ScaleWidth      =   3127.042
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox picIcon 
      AutoSize        =   -1  'True
      ClipControls    =   0   'False
      Height          =   780
      Left            =   30
      Picture         =   "About.frx":0ECA
      ScaleHeight     =   505.68
      ScaleMode       =   0  'User
      ScaleWidth      =   505.68
      TabIndex        =   1
      Top             =   30
      Width           =   780
   End
   Begin VB.CommandButton cmdOK 
      Cancel          =   -1  'True
      Caption         =   "确定"
      Default         =   -1  'True
      Height          =   345
      Left            =   1965
      TabIndex        =   0
      Top             =   1980
      Width           =   1215
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00808080&
      BorderStyle     =   6  'Inside Solid
      Index           =   1
      X1              =   84.515
      X2              =   3070.699
      Y1              =   1314.865
      Y2              =   1314.865
   End
   Begin VB.Label lblTitle 
      Caption         =   "ASCII天眼"
      BeginProperty Font 
         Name            =   "楷体_GB2312"
         Size            =   15.75
         Charset         =   134
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   480
      Left            =   825
      TabIndex        =   2
      Top             =   30
      Width           =   2220
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      Index           =   0
      X1              =   98.6
      X2              =   3070.699
      Y1              =   1314.865
      Y2              =   1325.218
   End
   Begin VB.Label lblVersion 
      Caption         =   "版本：V1.0"
      Height          =   225
      Left            =   840
      TabIndex        =   3
      Top             =   555
      Width           =   1665
   End
End
Attribute VB_Name = "frmAbout"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
Unload frmAbout
End Sub

Private Sub Form_Load()
frmlad Me.hwnd
End Sub
