VERSION 5.00
Begin VB.Form ASCIIEYES 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "ASCII天眼"
   ClientHeight    =   1275
   ClientLeft      =   4845
   ClientTop       =   1665
   ClientWidth     =   2685
   Icon            =   "ASCII查看工具.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1275
   ScaleWidth      =   2685
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton clear 
      Caption         =   "清除"
      Height          =   375
      Left            =   1920
      TabIndex        =   15
      Top             =   1320
      Width           =   615
   End
   Begin VB.CommandButton coy 
      Caption         =   "复制"
      Height          =   375
      Left            =   1320
      TabIndex        =   14
      Top             =   1320
      Width           =   615
   End
   Begin VB.CommandButton Command4 
      Caption         =   "扩"
      Height          =   375
      Left            =   1920
      TabIndex        =   13
      Top             =   840
      Width           =   615
   End
   Begin VB.CommandButton Command3 
      Caption         =   "退出"
      Height          =   375
      Left            =   1320
      TabIndex        =   12
      Top             =   840
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "关于"
      Height          =   375
      Left            =   720
      TabIndex        =   11
      Top             =   840
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "码表"
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   840
      Width           =   615
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   480
      TabIndex        =   9
      Top             =   2760
      Width           =   1410
   End
   Begin VB.ComboBox Combo1 
      Appearance      =   0  'Flat
      Height          =   300
      ItemData        =   "ASCII查看工具.frx":0ECA
      Left            =   720
      List            =   "ASCII查看工具.frx":0EDA
      TabIndex        =   8
      Text            =   " "
      Top             =   1335
      Width           =   555
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      Height          =   300
      Left            =   120
      TabIndex        =   7
      Top             =   1800
      Width           =   2445
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Enabled         =   0   'False
      Height          =   255
      Left            =   1170
      TabIndex        =   2
      Top             =   75
      Width           =   1275
   End
   Begin VB.Label Label11 
      Caption         =   "分隔符："
      Height          =   225
      Left            =   15
      TabIndex        =   6
      Top             =   1395
      Width           =   795
   End
   Begin VB.Label Label6 
      Caption         =   "十六进制："
      Height          =   210
      Left            =   210
      TabIndex        =   5
      Top             =   570
      Width           =   990
   End
   Begin VB.Label Label5 
      Caption         =   "十进制："
      Height          =   255
      Left            =   375
      TabIndex        =   4
      Top             =   360
      Width           =   840
   End
   Begin VB.Label Label4 
      Caption         =   "您输入的是："
      Height          =   255
      Left            =   45
      TabIndex        =   3
      Top             =   105
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "? ? ? ?"
      Height          =   165
      Left            =   1260
      TabIndex        =   1
      Top             =   570
      Width           =   765
   End
   Begin VB.Label Label2 
      Caption         =   "? ? ? ?"
      Height          =   315
      Left            =   1260
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
End
Attribute VB_Name = "ASCIIEYES"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Combo1_Click()
Text2.SetFocus
End Sub

Private Sub coy_Click()
Clipboard.SetText Text3.Text
End Sub

Private Sub clear_Click()
Text3.Text = ""
End Sub

Private Sub Form_KeyPress(keyascii As Integer)
Label2.Caption = keyascii
Label3.Caption = Hex(keyascii)
Select Case keyascii
Case 8
 Text1.Text = "BackSpace"
Case 9
 Text1.Text = "Tab"
Case 13
 Text1.Text = "Enter"
Case 32
 Text1.Text = "Space"
Case Else
Text1.Text = Chr(Label2.Caption)
End Select
If ASCIIEYES.Height = 2550 Then
 Text3.Text = Text3.Text & Label3.Caption & Combo1.Text
End If
End Sub

Private Sub Form_Load()
frmlad Me.hwnd
End Sub

Private Sub Label1_Click()
ASCII码表.Show
End Sub

Private Sub command4_Click()
If Command4.Caption = "扩" Then
 ASCIIEYES.Height = 2550
 Command4.Caption = "缩"
 Else
  Command4.Caption = "扩"
  ASCIIEYES.Height = 1650
End If
Text3.Text = ""
End Sub

Private Sub command2_Click()
frmAbout.Show
End Sub

Private Sub command3_Click()
End
End Sub

Private Sub Command1_Click()
Find.Show
End Sub


Private Sub Text3_KeyPress(keyascii As Integer)
keyascii = 0
End Sub

Private Sub Form_Activate()
SetWindowLong Command1.hwnd, GWL_STYLE, 1342275584
SetWindowLong Command2.hwnd, GWL_STYLE, 1342275584
SetWindowLong Command3.hwnd, GWL_STYLE, 1342275584
SetWindowLong Command4.hwnd, GWL_STYLE, 1342275584
SetWindowLong coy.hwnd, GWL_STYLE, 1342275584
SetWindowLong clear.hwnd, GWL_STYLE, 1342275584
End Sub
