VERSION 5.00
Begin VB.Form Find 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "查询"
   ClientHeight    =   825
   ClientLeft      =   4845
   ClientTop       =   4140
   ClientWidth     =   1980
   Icon            =   "Find.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   825
   ScaleWidth      =   1980
   ShowInTaskbar   =   0   'False
   Begin VB.TextBox Text1 
      Height          =   270
      Left            =   1020
      TabIndex        =   3
      Top             =   75
      Width           =   735
   End
   Begin VB.TextBox Text2 
      Height          =   270
      Left            =   1020
      TabIndex        =   2
      Top             =   465
      Width           =   750
   End
   Begin VB.Label Label2 
      Caption         =   "对应字符："
      Height          =   165
      Left            =   120
      TabIndex        =   1
      Top             =   525
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "ASCII码："
      Height          =   270
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   930
   End
End
Attribute VB_Name = "Find"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
frmlad Me.hwnd
End Sub

Private Sub Label1_Click()
If Label1.Caption = "ASCII码：" Then
Label1.Caption = "十六进制："
Else: Label1.Caption = "ASCII码："
End If
End Sub

Private Sub Text1_KeyPress(keyascii As Integer)
On Error Resume Next
Dim x As Integer
 If Label1.Caption = "ASCII码：" Then
  Text2.Text = Chr(Text1.Text)
 Else
 x = Hex(Text1.Text)
 Text2.Text = Chr(Text1.Text)
 End If
End Sub

Private Sub Text1_Click()
Text1.Text = ""
End Sub
