VERSION 5.00
Begin VB.Form FrmGuestAddObj
  Caption = "Guest Address & Observation"
  BackColor = &HC0C0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11595
  ClientHeight = 7545
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 1830
    Width = 1350
    Height = 255
    TabIndex = 14
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 2100
    Width = 1350
    Height = 255
    TabIndex = 15
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 2640
    Width = 1350
    Height = 255
    TabIndex = 17
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 2910
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 2370
    Width = 1350
    Height = 255
    TabIndex = 16
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 1560
    Width = 1350
    Height = 255
    TabIndex = 13
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 2040
    Width = 4185
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 1230
    Width = 4185
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 35
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    Left = 900
    Top = 750
    Width = 1425
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    Left = 4050
    Top = 750
    Width = 1500
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 6840
    Top = 750
    Width = 2310
    Height = 255
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 21
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 3285
    Width = 4185
    Height = 255
    TabIndex = 11
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 2580
    Width = 4185
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 2310
    Width = 4185
    Height = 255
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 1290
    Width = 1350
    Height = 255
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    Left = 4485
    Top = 2850
    Width = 1530
    Height = 255
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 2850
    Width = 1380
    Height = 255
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 1770
    Width = 4185
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 1845
    Top = 1500
    Width = 4185
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGWaiter
    Left = 6495
    Top = 4170
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin Frame FrmList
    Left = 4065
    Top = 4845
    Width = 2055
    Height = 1725
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 60
      Top = 75
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 23
    End
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11595
    Height = 375
    TabIndex = 0
  End
  Begin Shape Shape4
    BorderColor = &H400040&
    Left = 195
    Top = 3225
    Width = 5955
    Height = 405
    Shape = 4
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Label LblName
    Caption = "Quality Of Food"
    Index = 14
    ForeColor = &H0&
    Left = 6300
    Top = 1837
    Width = 1380
    Height = 240
    TabIndex = 42
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Service Of Food"
    Index = 15
    ForeColor = &H0&
    Left = 6300
    Top = 2107
    Width = 1455
    Height = 240
    TabIndex = 41
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Entertainment"
    Index = 17
    ForeColor = &H0&
    Left = 6300
    Top = 2647
    Width = 1215
    Height = 240
    TabIndex = 40
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "User"
    Index = 18
    ForeColor = &H0&
    Left = 6300
    Top = 2917
    Width = 435
    Height = 240
    TabIndex = 39
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Service Of Drinks"
    Index = 16
    ForeColor = &H0&
    Left = 6300
    Top = 2377
    Width = 1545
    Height = 240
    TabIndex = 38
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Reception"
    Index = 13
    ForeColor = &H0&
    Left = 6300
    Top = 1567
    Width = 930
    Height = 240
    TabIndex = 37
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape2
    BorderColor = &H400040&
    Left = 195
    Top = 1155
    Width = 5955
    Height = 2040
    Shape = 4
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Shape Shape3
    BorderColor = &H400040&
    Left = 6210
    Top = 1155
    Width = 3210
    Height = 2130
    Shape = 4
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Shape Shape1
    BorderColor = &H400040&
    Left = 195
    Top = 645
    Width = 9195
    Height = 450
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblName
    Caption = "Address1"
    Index = 6
    ForeColor = &H0&
    Left = 405
    Top = 2047
    Width = 870
    Height = 240
    TabIndex = 36
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Waiter"
    Index = 12
    ForeColor = &H0&
    Left = 315
    Top = 3292
    Width = 585
    Height = 240
    TabIndex = 35
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &H0&
    Left = 3465
    Top = 757
    Width = 435
    Height = 240
    TabIndex = 34
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 2490
    Top = 772
    Width = 645
    Height = 210
    TabIndex = 33
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &H0&
    Left = 285
    Top = 757
    Width = 510
    Height = 240
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 6075
    Top = 765
    Width = 585
    Height = 225
    TabIndex = 31
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Phone"
    Index = 8
    ForeColor = &H0&
    Left = 405
    Top = 2587
    Width = 585
    Height = 240
    TabIndex = 30
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Address2"
    Index = 7
    ForeColor = &H0&
    Left = 405
    Top = 2317
    Width = 870
    Height = 240
    TabIndex = 29
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Table No"
    Index = 11
    ForeColor = &H0&
    Left = 6300
    Top = 1297
    Width = 855
    Height = 240
    TabIndex = 28
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Date Of Anv."
    Index = 10
    ForeColor = &H0&
    Left = 3285
    Top = 2857
    Width = 1110
    Height = 240
    TabIndex = 27
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Date Of Birth"
    Index = 9
    ForeColor = &H0&
    Left = 405
    Top = 2857
    Width = 1110
    Height = 240
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Designation"
    Index = 5
    ForeColor = &H0&
    Left = 405
    Top = 1777
    Width = 1080
    Height = 240
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Company"
    Index = 4
    ForeColor = &H0&
    Left = 405
    Top = 1507
    Width = 900
    Height = 240
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Name"
    Index = 3
    ForeColor = &H0&
    Left = 405
    Top = 1237
    Width = 555
    Height = 240
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmGuestAddObj"


Private Sub TopCtrl1_UnknownEvent_11 'EDEEC4
  'Data Table: 44BFA4
  Dim var_94 As TextBox
  loc_EDEE08: On Error Goto loc_EDEEBC
  loc_EDEE2E: Call Proc_27_31_EF10D4(Proc_5_1_100CB50("ADD", Me))
  loc_EDEE39: Call Proc_27_29_EB7814(global_64)
  loc_EDEE51: Set var_8C = Me.Txt
  loc_EDEE57: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2), var_94)
  loc_EDEE5F: var_94.Text = CStr(MemVar_1F920EC)
  loc_EDEE79: Set var_8C = Me.Txt
  loc_EDEE7F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(2))
  loc_EDEE87: var_94.SetFocus
  loc_EDEEA1: Set var_8C = Me.Txt
  loc_EDEEA7: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(&H12), var_94)
  loc_EDEEAF: var_94.Text = MemVar_1F920C8
  loc_EDEEBB: Exit Sub
  loc_EDEEBC: ' Referenced from: EDEE08
  loc_EDEEBC: Proc_6_60_E62BC4(var_94)
  loc_EDEEC1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'F32F54
  'Data Table: 44BFA4
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F32E44: On Error Goto loc_F32F10
  loc_F32E5E: If (Me.RecordCount > 0) Then
  loc_F32E76:   var_8C = "EDIT"
  loc_F32E84:   Call Proc_27_31_EF10D4(Proc_5_1_100CB50(var_8C, Me))
  loc_F32E9C:   Set var_90 = Me.Txt
  loc_F32EA2:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(1), var_98)
  loc_F32EAA:   var_98.Enabled = False
  loc_F32EC1:   Set var_90 = Me.Txt
  loc_F32EC7:   Call 0.Method_TopCtrl1_UnknownEvent_120 (CInt(2), var_98)
  loc_F32ECF:   var_98.SetFocus
  loc_F32EDE: Else
  loc_F32EFF:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F32F0F: End If
  loc_F32F0F: Exit Sub
  loc_F32F10: ' Referenced from: F32E44
  loc_F32F18: Set var_90 = Err()
  loc_F32F1E: Call 0.Method_arg_2C (var_8C)
  loc_F32F3F: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F32F52: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '10BBE54
  'Data Table: 44BFA4
  Dim var_96 As Integer
  Dim unk_44BFB4 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_10BBBA8: On Error Goto loc_10BBDFA
  loc_10BBBE2: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10BBBF3:   unk_44BFB4.BeginTrans var_11C
  loc_10BBC09:   var_94 = Me.Bookmark 'Variant
  loc_10BBC2B:   Set var_120 = Me.Txt
  loc_10BBC31:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124, var_128, "Delete From Member Where DocID='")
  loc_10BBC39:   var_B8 = var_124.Text
  loc_10BBC42:   var_12C = -1 & var_128
  loc_10BBC52:   unk_44BFB4.Execute var_12C & "'", var_134, &HFF
  loc_10BBC7A:   Set var_120 = Me.Txt
  loc_10BBC80:   Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_124)
  loc_10BBC92:   var_168 = 0
  loc_10BBCA5:   var_160 = 0
  loc_10BBCB0:   var_15C = 0
  loc_10BBCC3:   var_154 = 0
  loc_10BBCCE:   var_150 = 0
  loc_10BBCE1:   var_148 = 0
  loc_10BBD20:   var_128 = "Member"
  loc_10BBD29:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_10BBD54:   unk_44BFB4.CommitTrans
  loc_10BBD5B:   var_96 = 0
  loc_10BBD69:   Me.Requery -1
  loc_10BBD79:   Me.Requery -1
  loc_10BBD99:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10BBDA6:     Me.Bookmark = var_94
  loc_10BBDAE:   Else
  loc_10BBDC2:     If (Me.EOF = 0) Then
  loc_10BBDCB:       Me.MoveLast
  loc_10BBDD0:     End If
  loc_10BBDD0:   End If
  loc_10BBDD0:   Call Proc_27_30_149D2E4(var_96, var_148, 0, var_150, var_154)
  loc_10BBDF1:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_10BBDF9: End If
  loc_10BBDF9: Exit Sub
  loc_10BBDFA: ' Referenced from: 10BBBA8
  loc_10BBE00: If (var_96 = &HFF) Then
  loc_10BBE09:   unk_44BFB4.RollbackTrans
  loc_10BBE0E: End If
  loc_10BBE16: Set var_120 = Err()
  loc_10BBE1C: Call 0.Method_arg_2C (var_128, 0, var_15C)
  loc_10BBE3D: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10BBE50: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E1AB68
  'Data Table: 44BFA4
  loc_E1AB5D: Me.Global.Unload Me
  loc_E1AB65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3C978
  'Data Table: 44BFA4
  Dim arg_2CFF As Double
  loc_E3C968: Proc_5_0_110649C(&HFF, Me)
  loc_E3C970: Call Proc_27_30_149D2E4(global_64)
  loc_E3C975: Exit Sub
  loc_E3C976: arg_2CFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3D278
  'Data Table: 44BFA4
  loc_E3D268: Proc_5_0_110649C(&HFF, Me)
  loc_E3D270: Call Proc_27_30_149D2E4(global_64)
  loc_E3D275: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3CCD8
  'Data Table: 44BFA4
  Dim arg_2CFF As Double
  loc_E3CCC8: Proc_5_0_110649C(&HFF, Me)
  loc_E3CCD0: Call Proc_27_30_149D2E4(global_64)
  loc_E3CCD5: Exit Sub
  loc_E3CCD6: arg_2CFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E3CAF8
  'Data Table: 44BFA4
  Dim arg_2CFF As Double
  loc_E3CAE8: Proc_5_0_110649C(&HFF, Me)
  loc_E3CAF0: Call Proc_27_30_149D2E4(global_64)
  loc_E3CAF5: Exit Sub
  loc_E3CAF6: arg_2CFF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1495C2C
  'Data Table: 44BFA4
  Dim var_9C As TextBox
  Dim var_86 As Integer
  Dim unk_44BFB4 As Connection15
  Dim var_B8 As String
  Dim var_A0 As Variant
  Dim var_FC As TextBox
  Dim var_B0 As Double
  Dim var_DC As Variant
  Dim var_16C As Variant
  Dim var_474 As TextBox
  Dim var_E8 As String
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_CC As String
  Dim var_154 As Variant
  Dim var_1E4 As Variant
  Dim var_46C As Variant
  Dim var_6F0 As Variant
  Dim var_A4 As String
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_14951A8: On Error Goto loc_1495C0F
  loc_14951B6: Set var_98 = Me.Txt
  loc_14951BC: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2))
  loc_14951E5: If (Proc_6_27_EA565C(var_9C, "Date") = 0) Then
  loc_14951E8:   Exit Sub
  loc_14951E9: End If
  loc_14951F4: Set var_98 = Me.Txt
  loc_14951FA: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_9C)
  loc_1495223: If (Proc_6_27_EA565C(var_9C, "Sr No") = 0) Then
  loc_1495226:   Exit Sub
  loc_1495227: End If
  loc_149522A: Call Proc_27_28_F9A11C(var_A6)
  loc_1495235: If (var_A6 = 0) Then
  loc_1495238:   Exit Sub
  loc_1495239: End If
  loc_1495244: Set var_98 = Me.Txt
  loc_149524A: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_9C)
  loc_149525B: Set var_A0 = var_9C
  loc_1495273: If (Proc_6_27_EA565C(var_A0, "Guest Name") = 0) Then
  loc_1495276:   Exit Sub
  loc_1495277: End If
  loc_1495285: Set var_98 = Me.Txt
  loc_149528B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_9C)
  loc_1495293: var_A4 = var_9C.Text
  loc_14952B3: If (Proc_6_91_EF2D40(CDate(var_A4)) = 0) Then
  loc_14952C1:   Set var_98 = Me.Txt
  loc_14952C7:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_9C)
  loc_14952CF:   var_9C.SetFocus
  loc_14952DB:   Exit Sub
  loc_14952DC: End If
  loc_14952EA: unk_44BFB4.BeginTrans var_B4
  loc_149530D: Set var_98 = Me.Txt
  loc_1495313: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_9C, var_A4, "Delete From Member Where DocID='", var_DC)
  loc_149531B: -1 = var_9C.Text
  loc_1495334: unk_44BFB4.Execute var_A0 & var_A4 & "'", &HFF, var_9C
  loc_149535C: Set var_98 = Me.Txt
  loc_1495362: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_9C)
  loc_1495376: Set var_A0 = Me.LblVPrefix
  loc_149538F: Set var_F8 = Me.Txt
  loc_1495395: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_FC)
  loc_14953AA: var_B0 = Val(var_FC.Text)
  loc_14953B8: Set var_110 = Me.Txt
  loc_14953BE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_114)
  loc_14953CD: Proc_6_7_F25D88(var_124, CVar(var_114))
  loc_14953DD: Set var_158 = Me.Txt
  loc_14953E3: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(3), var_15C)
  loc_14953F2: Proc_6_17_EAA2B0(var_17C, CVar(var_15C))
  loc_1495402: Set var_1B0 = Me.Txt
  loc_1495408: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(4), var_1B4)
  loc_1495417: Proc_6_17_EAA2B0(var_1D4, CVar(var_1B4))
  loc_1495427: Set var_208 = Me.Txt
  loc_149542D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(5), var_20C)
  loc_149543C: Proc_6_17_EAA2B0(var_22C, CVar(var_20C))
  loc_149544C: Set var_260 = Me.Txt
  loc_1495452: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(6), var_264)
  loc_1495461: Proc_6_17_EAA2B0(var_284, CVar(var_264))
  loc_1495471: Set var_2B8 = Me.Txt
  loc_1495477: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(7), var_2BC)
  loc_1495486: Proc_6_17_EAA2B0(var_2DC, CVar(var_2BC))
  loc_1495496: Set var_310 = Me.Txt
  loc_149549C: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(8), var_314)
  loc_14954AB: Proc_6_17_EAA2B0(var_334, CVar(var_314))
  loc_14954BB: Set var_368 = Me.Txt
  loc_14954C1: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(9), var_36C)
  loc_14954D0: Proc_6_7_F25D88(var_38C, CVar(var_36C))
  loc_14954E0: Set var_3C0 = Me.Txt
  loc_14954E6: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HA), var_3C4)
  loc_14954F5: Proc_6_7_F25D88(var_3E4, CVar(var_3C4))
  loc_1495505: Set var_418 = Me.Txt
  loc_149550B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HB), var_41C)
  loc_149551A: Proc_6_17_EAA2B0(var_43C, CVar(var_41C))
  loc_149552D: Set var_470 = Me.Txt
  loc_1495533: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HC), var_474)
  loc_1495549: Proc_6_17_EAA2B0(var_498, CVar(var_474.Tag))
  loc_1495559: Set var_4CC = Me.Txt
  loc_149555F: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HD), var_4D0)
  loc_149557E: Proc_6_17_EAA2B0(var_500, Left(CVar(var_4D0), 1))
  loc_149558E: Set var_534 = Me.Txt
  loc_1495594: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HE), var_538)
  loc_14955B3: Proc_6_17_EAA2B0(var_568, Left(CVar(var_538), 1))
  loc_14955C3: Set var_59C = Me.Txt
  loc_14955C9: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&HF), var_5A0)
  loc_14955E8: Proc_6_17_EAA2B0(var_5D0, Left(CVar(var_5A0), 1))
  loc_14955F8: Set var_604 = Me.Txt
  loc_14955FE: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H10), var_608)
  loc_149561D: Proc_6_17_EAA2B0(var_638, Left(CVar(var_608), 1))
  loc_149562D: Set var_66C = Me.Txt
  loc_1495633: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(&H11), var_670)
  loc_1495652: Proc_6_17_EAA2B0(var_6A0, Left(CVar(var_670), 1))
  loc_1495665: Proc_6_7_F25D88(var_730, Date)
  loc_149566E: Set var_764 = Me.TopCtrl1
  loc_1495674: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_B0)
  loc_14956C3: var_B8 = "Insert Into Member(DocID,VType,VPrefix,Site_Code,VNo,VDate,Name,Company,Design,Add1,Add2,Phone,DOB,DOA,TableNo,Waiter,RECP,QOF,SOF,SOD,Entert,U_Name,U_EntDt,U_AE) Values ('" & var_9C.Text
  loc_14956DB: var_E8 = var_B8 & "','" & global_60 & "','"
  loc_1495730: var_1E4 = CVar(var_E8 & var_A0.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_B0) & ",") & var_124 & "," & var_17C & "," & var_1D4 
  loc_14957A9: var_46C = var_1E4 & "," & var_22C & "," & var_284 & "," & var_2DC & "," & var_334 & "," & var_38C & "," & var_3E4 & "," & var_43C & "," 
  loc_1495813: var_6F0 = var_46C & var_498 & "," & var_500 & "," & var_568 & "," & var_5D0 & "," & var_638 & "," & var_6A0 & ",'" & CVar(MemVar_1F920C8) 
  loc_149584A: unk_44BFB4.Execute CStr(var_6F0 & "'," & var_730 & ",'" & IIf((var_784 = "Add"), "A", "E") & "')"), var_848, -1
  loc_1495950: Set var_98 = Me.TopCtrl1
  loc_1495956: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_84C)
  loc_149596B: If ( = "Add") Then
  loc_1495982:   var_A4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_14959A8:   var_134 = CVar(var_A4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_14959B9:   Set var_98 = Me.Txt
  loc_14959BF:   Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(2), var_9C, var_E8, var_134)
  loc_14959C7:   var_16C = var_9C.Text
  loc_14959D5:   Proc_6_7_F25D88(var_124, CVar(var_E8))
  loc_14959DD:   var_144 = -1 & var_124 
  loc_14959E6:   var_154 = CVar(var_E8 & var_A0.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_B0) & ",") & var_124 & " Order By VP.Date_From DESC" 
  loc_14959F4:   unk_44BFB4.Execute CStr(var_154), var_A0, 
  loc_14959FF:   Set var_8C = var_A0
  loc_1495A3D:   If (var_8C.RecordCount > 0) Then
  loc_1495A4E:     Set var_98 = Me.Txt
  loc_1495A54:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_9C)
  loc_1495A5C:     var_A4 = var_9C.Text
  loc_1495A69:     var_B0 = Val(var_A4)
  loc_1495A6F:     var_CC = "Date_From"
  loc_1495A92:     Proc_6_7_F25D88(var_124, CVar(var_8C.Fields.Item(var_CC)))
  loc_1495AC5:     var_E8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_B0) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1495AF8:     unk_44BFB4.Execute CStr(CVar(var_E8 & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_124), var_154, -1
  loc_1495B2C:   End If
  loc_1495B2C: End If
  loc_1495B32: unk_44BFB4.CommitTrans
  loc_1495B45: Set var_98 = Me.Txt
  loc_1495B4B: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_9C, var_A4)
  loc_1495B53: var_FC = var_9C.Text
  loc_1495B67: var_86 = 0
  loc_1495B75: Me.Requery -1
  loc_1495B9F: Me.Find "SearchCode ='" & "SearchCode ='" & var_A4 & "'", 0, 1
  loc_1495BAF: Set var_98 = Me.TopCtrl1
  loc_1495BB5: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_CC)
  loc_1495BCA: If (var_86 = "Add") Then
  loc_1495BCD:   Call TopCtrl1_UnknownEvent_11()
  loc_1495BD2:   Exit Sub
  loc_1495BD3: End If
  loc_1495BF6: Call Proc_27_31_EF10D4(Proc_5_1_100CB50("INI", Me), global_64)
  loc_1495C01: Call Proc_27_30_149D2E4(var_B0)
  loc_1495C0B: Set var_8C = Nothing
  loc_1495C0E: Exit Sub
  loc_1495C0F: ' Referenced from: 14951A8
  loc_1495C15: If (var_86 = &HFF) Then
  loc_1495C1E:   unk_44BFB4.RollbackTrans
  loc_1495C23: End If
  loc_1495C23: Proc_6_60_E62BC4()
  loc_1495C28: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'E9A488
  'Data Table: 44BFA4
  loc_E9A410: On Error Goto loc_E9A481
  loc_E9A44A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9A470:   Call Proc_27_31_EF10D4(Proc_5_1_100CB50("INI", Me))
  loc_E9A47B:   Call Proc_27_30_149D2E4(global_64)
  loc_E9A480: End If
  loc_E9A480: Exit Sub
  loc_E9A481: ' Referenced from: E9A410
  loc_E9A481: Proc_6_60_E62BC4()
  loc_E9A486: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB45E4
  'Data Table: 44BFA4
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB4554: On Error Goto loc_EB45DE
  loc_EB456E: If (Me.RecordCount <= 0) Then
  loc_EB4577:   var_B8 = "Information"
  loc_EB4592:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB45A2:   Exit Sub
  loc_EB45A3: End If
  loc_EB45A6: MemVar_1F920E4 = "Select M.DocID as SearchCode,CAST(VNo AS VARCHAR) AS VNO,VDate,M.Name As GuestName,Company,Design,Add1 As Address1,Add2 As Address2 From Member M Order by M.DocID,M.VNo"
  loc_EB45B3: Proc_6_126_F1BCC0("1000,1200,2500,1500,1500,1500,1500")
  loc_EB45C1: MemVar_1F92120 = Me
  loc_EB45D8: Call 0.Method_arg_2B0 (1)
  loc_EB45DD: Exit Sub
  loc_EB45DE: ' Referenced from: EB4554
  loc_EB45DE: Proc_6_60_E62BC4(var_B8)
  loc_EB45E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E0B3A4
  'Data Table: 44BFA4
  Dim Me As Recordset15
  loc_E0B39B: Me.Requery -1
  loc_E0B3A0: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '112426C
  'Data Table: 44BFA4
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_88 As DataGrid
  Dim Me As Variant
  Dim var_C8 As Variant
  loc_1123F2A: Set var_88 = Me.Txt
  loc_1123F30: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1123F3E: Proc_6_74_E226B0(var_8C)
  loc_1123F4A: Call Proc_27_32_E81DA4(var_8C)
  loc_1123F52: var_92 = Index
  loc_1123F5D: If Not (var_92 = CInt(1)) Then
  loc_1123F68:   If (var_92 = CInt(2)) Then
  loc_1123F6B:   End If
  loc_1123F73:   var_98 = "{Home}+{End}"
  loc_1123F79:   Proc_303_0_FB9B68(var_98, 0)
  loc_1123F84: Else
  loc_1123F8C:   If (var_92 = CInt(&HC)) Then
  loc_1123F9D:     Set var_88 = Me.Txt
  loc_1123FA3:     Call 0.Method_Txt_GotFocus0 (CInt(&HC), var_8C)
  loc_1123FB8:     var_B0 = CVar((var_8C.Left + CDbl(2000))) 'Single
  loc_1123FC7:     Me.DGWaiter.Left = var_B0
  loc_1123FE8:     Me.DGWaiter.Top = CVar(CDbl(1000))
  loc_112403E:     Set var_88 = Me.Txt
  loc_1124044:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_112404C:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1124064:     If (var_92 Or (var_98 = vbNullString)) Then
  loc_1124067:       Exit Sub
  loc_1124068:     End If
  loc_1124075:     Set var_88 = Me.Txt
  loc_112407B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1124083:     var_98 = var_8C.Text
  loc_1124095:     var_B0 = "Name"
  loc_11240D0:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_11240D9:       Me.MoveFirst
  loc_11240FC:       Set var_88 = Me.Txt
  loc_1124102:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_112410A:       0 = var_8C.Text
  loc_1124123:       Me.Find 1 & var_98 & "'", var_B0, 
  loc_1124138:     End If
  loc_112413B:   Else
  loc_1124143:     If Not (var_92 = CInt(&HD)) Then
  loc_112414E:       If Not (var_92 = CInt(&HE)) Then
  loc_1124159:         If Not (var_92 = CInt(&HF)) Then
  loc_1124164:           If Not (var_92 = CInt(&H10)) Then
  loc_112416F:             If (var_92 = CInt(&H11)) Then
  loc_1124172:             End If
  loc_1124172:           End If
  loc_1124172:         End If
  loc_1124172:       End If
  loc_112417F:       ReDim var_104(0 To 2)
  loc_1124196:       var_104(0) = "Excellent"
  loc_11241A5:       var_104(1) = "Good"
  loc_11241B4:       var_104(2) = "Poor"
  loc_11241CB:       global_72 = Array(var_104)
  loc_11241D6:       Set var_C8 = Me.ListView
  loc_11241F1:       Set var_8C = Me.Txt
  loc_112420B:       Set global_88 = Proc_6_66_EFF8FC(var_C8, var_8C, Index)
  loc_1124229:       Set var_88 = Me.Txt
  loc_112422F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1124237:       global_72 = var_8C.Text
  loc_1124249:       Set var_90 = Me.Txt
  loc_112424F:       Call 0.Method_Txt_GotFocus0 (Index, var_C8, var_98)
  loc_1124257:       var_C8.Tag = 3
  loc_112426A:     End If
  loc_112426A:   End If
  loc_112426A: End If
  loc_112426A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '111DB60
  'Data Table: 44BFA4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_111D836: If (CLng(Shift) = &H1B) Then
  loc_111D839:   Call Proc_27_32_E81DA4()
  loc_111D83E:   Exit Sub
  loc_111D83F: End If
  loc_111D842: var_86 = KeyCode
  loc_111D84D: If (var_86 = CInt(&HC)) Then
  loc_111D85B:   Set var_AC = Me.Txt
  loc_111D868:   Set var_A0 = Nothing
  loc_111D873:   Set var_9C = Nothing
  loc_111D896:   Set var_90 = var_AC
  loc_111D8A5:   Proc_6_69_134A198(Me.DGWaiter, var_90, CInt(&HC), global_68, Shift, 0)
  loc_111D8BC: Else
  loc_111D8C4:   If Not (var_86 = CInt(&HD)) Then
  loc_111D8CF:     If Not (var_86 = CInt(&HE)) Then
  loc_111D8DA:       If Not (var_86 = CInt(&HF)) Then
  loc_111D8E5:         If Not (var_86 = CInt(&H10)) Then
  loc_111D8F0:           If (var_86 = CInt(&H11)) Then
  loc_111D8F3:           End If
  loc_111D8F3:         End If
  loc_111D8F3:       End If
  loc_111D8F3:     End If
  loc_111D915:     Set var_8C = Me.Txt
  loc_111D91B:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 1)
  loc_111D923:     var_9C = var_90.Left
  loc_111D935:     Set var_9C = Me.Txt
  loc_111D93B:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_111D943:     var_A0 = var_A0.Top
  loc_111D955:     Set var_A8 = Me.Txt
  loc_111D95B:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B8)
  loc_111D963:     0 = var_AC.Height
  loc_111D975:     Set var_BC = Me.Txt
  loc_111D97B:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_111D983:     var_C4 = var_C0.Width
  loc_111D9CB:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_111D9EF:   End If
  loc_111D9EF: End If
  loc_111DA28: If ((CBool(Me.DGWaiter.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_111DA49:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&H11))) Then
  loc_111DA52:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_B0), CInt((var_B4 + var_B8)))
  loc_111DA57:   End If
  loc_111DA5B:   Set var_8C = Me.TopCtrl1
  loc_111DA61:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(CInt(var_C4))
  loc_111DAA0:   If CBool((780 = "Add") And (KeyCode <> CInt(1)) And (KeyCode <> CInt(2))) Then
  loc_111DAB8:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_111DAC1:       Proc_6_76_E52838(Shift, arg_14)
  loc_111DAC6:     End If
  loc_111DAC9:   Else
  loc_111DACD:     Set var_8C = Me.TopCtrl1
  loc_111DAD3:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_86)
  loc_111DB00:     If CBool(( = "Edit") And (KeyCode <> CInt(2))) Then
  loc_111DB18:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_111DB21:         Proc_6_76_E52838(Shift)
  loc_111DB26:       End If
  loc_111DB26:     End If
  loc_111DB26:   End If
  loc_111DB44:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H11))) Then
  loc_111DB4F:     Call Txt_Validate(KeyCode)
  loc_111DB57:     Call Proc_27_33_EE0538(KeyCode, 0)
  loc_111DB5C:   End If
  loc_111DB5C: End If
  loc_111DB5C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE966C
  'Data Table: 44BFA4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_EE95AC: On Error Goto loc_EE9666
  loc_EE95B2: Proc_6_58_E054C0(arg_10)
  loc_EE95BA: var_86 = KeyAscii
  loc_EE95C5: If (var_86 = CInt(1)) Then
  loc_EE95D2:   Set var_8C = Me.Txt
  loc_EE95D8:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_EE95F3:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_EE9602: Else
  loc_EE960A:   If (var_86 = CInt(&HC)) Then
  loc_EE9629:     If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_EE963B:       var_AC = "Name"
  loc_EE9656:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10)
  loc_EE9665:     End If
  loc_EE9665:   End If
  loc_EE9665: End If
  loc_EE9665: Exit Sub
  loc_EE9666: ' Referenced from: EE95AC
  loc_EE9666: Proc_6_60_E62BC4(var_AC, 0)
  loc_EE966B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EB7734
  'Data Table: 44BFA4
  Dim var_86 As Integer
  loc_EB769F: var_86 = KeyCode
  loc_EB76AA: If Not (var_86 = CInt(&HD)) Then
  loc_EB76B5:   If Not (var_86 = CInt(&HE)) Then
  loc_EB76C0:     If Not (var_86 = CInt(&HF)) Then
  loc_EB76CB:       If Not (var_86 = CInt(&H10)) Then
  loc_EB76D6:         If (var_86 = CInt(&H11)) Then
  loc_EB76D9:         End If
  loc_EB76D9:       End If
  loc_EB76D9:     End If
  loc_EB76D9:   End If
  loc_EB76F4:   If (Me.FrmList.Visible = &HFF) Then
  loc_EB7723:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_EB7733:   End If
  loc_EB7733: End If
  loc_EB7733: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47AD4
  'Data Table: 44BFA4
  loc_E47AB2: Set var_88 = Me.Txt
  loc_E47AB8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47AC6: Proc_6_73_E22704(var_8C)
  loc_E47AD2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '134359C
  'Data Table: 44BFA4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim unk_44BFB4 As Connection15
  Dim var_94 As Variant
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_98 As String
  Dim Me As Recordset15
  Dim var_8C As Variant
  loc_1342DBF: var_86 = Cancel
  loc_1342DCA: If (var_86 = CInt(1)) Then
  loc_1342DD8:   Set var_8C = Me.Txt
  loc_1342DDE:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1342DE6:   var_98 = "Sr No"
  loc_1342E07:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_1342E15:     Set var_8C = Me.Txt
  loc_1342E1B:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1342E23:     var_90.SetFocus
  loc_1342E31:     arg_10 = &HFF
  loc_1342E34:     Exit Sub
  loc_1342E35:   End If
  loc_1342E43:   Set var_8C = Me.Txt
  loc_1342E49:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_1342E51:   arg_10 = var_90.Text
  loc_1342E69:   If (CDbl(var_98) = CDbl(0)) Then
  loc_1342E7F:     var_B8 = "Sr No Can Not Be 0"
  loc_1342E85:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_1342E9F:     Set var_8C = Me.Txt
  loc_1342EA5:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1342EAD:     var_90.SetFocus
  loc_1342EBB:     arg_10 = &HFF
  loc_1342EBE:     Exit Sub
  loc_1342EBF:   End If
  loc_1342EC3:   Set var_8C = Me.TopCtrl1
  loc_1342EC9:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(arg_10)
  loc_1342EDE:   If (var_86 = "Add") Then
  loc_1342EE7:     Call Proc_27_34_115BCB8(MemVar_1F92044)
  loc_1342EFA:     Set var_8C = Me.Txt
  loc_1342F00:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1342F08:     var_90.Text = var_98
  loc_1342F17:   End If
  loc_1342F1B:   Set var_8C = Me.TopCtrl1
  loc_1342F21:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_1342F36:   If ( = "Add") Then
  loc_1342F66:     Set var_8C = Me.Txt
  loc_1342F6C:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From Member Where DocID='", var_B8, -1)
  loc_1342F8D:     unk_44BFB4.Execute var_124 & var_98 & "'", 0, var_128
  loc_1342F9D:      = var_124.Item()
  loc_1342FA5:      = var_128.Value
  loc_1342FD2:     If (var_90.Text.Fields > 0) Then
  loc_1342FDB:       Call 0.Method_arg_50 (var_98)
  loc_1342FFC:       MsgBox("Duplicate Sr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_1343012:       Call Proc_27_34_115BCB8(MemVar_1F92044)
  loc_1343022:       If (var_98 = vbNullString) Then
  loc_134302F:         Set var_8C = Me.Txt
  loc_1343035:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134303D:         var_90.SetFocus
  loc_134304B:         arg_10 = &HFF
  loc_134304E:         Exit Sub
  loc_134304F:       End If
  loc_1343055:       Call Proc_27_34_115BCB8(MemVar_1F92044, var_98)
  loc_1343068:       Set var_8C = Me.Txt
  loc_134306E:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1343076:       var_90.Text = arg_10
  loc_1343087:       arg_10 = &HFF
  loc_134308A:       Exit Sub
  loc_134308B:     End If
  loc_134308B:   End If
  loc_134308E: Else
  loc_1343096:   If (var_86 = CInt(2)) Then
  loc_13430A7:     Set var_8C = Me.Txt
  loc_13430AD:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_13430B5:     arg_10 = var_90.Text
  loc_13430E5:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_13430FB:       Set var_8C = Me.Txt
  loc_1343101:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1343109:       var_90.Text = CStr(MemVar_1F920EC)
  loc_134311B:     Else
  loc_1343125:       Set var_8C = Me.Txt
  loc_134312B:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134313E:       var_98 = Proc_6_33_1512840(var_90)
  loc_134314B:       Set var_124 = Me.Txt
  loc_1343151:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1343159:       var_128.Text = var_98
  loc_134316C:     End If
  loc_1343170:     Set var_8C = Me.TopCtrl1
  loc_1343176:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_134318B:     If ( = "Add") Then
  loc_1343194:       Call Proc_27_34_115BCB8(MemVar_1F92044)
  loc_13431A4:       If (var_98 = vbNullString) Then
  loc_13431B1:         Set var_8C = Me.Txt
  loc_13431B7:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13431BF:         var_90.SetFocus
  loc_13431CD:         arg_10 = &HFF
  loc_13431D0:         Exit Sub
  loc_13431D1:       End If
  loc_13431D7:       Call Proc_27_34_115BCB8(MemVar_1F92044, var_98)
  loc_13431EA:       Set var_8C = Me.Txt
  loc_13431F0:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_13431F8:       var_90.Text = arg_10
  loc_1343207:     End If
  loc_1343215:     Set var_8C = Me.Txt
  loc_134321B:     Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1343223:     var_98 = var_90.Text
  loc_1343243:     If (Proc_6_91_EF2D40(CDate(var_98)) = 0) Then
  loc_1343251:       Set var_8C = Me.Txt
  loc_1343257:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_134325F:       var_90.SetFocus
  loc_134326B:       Exit Sub
  loc_134326C:     End If
  loc_134326F:   Else
  loc_1343277:     If (var_86 = CInt(&HC)) Then
  loc_13432C8:       Set var_8C = Me.Txt
  loc_13432CE:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_13432D6:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13432EE:       If (var_98 Or (var_98 = vbNullString)) Then
  loc_13432FE:         Set var_8C = Me.Txt
  loc_1343304:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_134330C:         var_90.Text = vbNullString
  loc_1343325:         Set var_8C = Me.Txt
  loc_134332B:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1343333:         var_90.Tag = vbNullString
  loc_1343342:       Else
  loc_134337D:         Set var_94 = Me.Txt
  loc_1343383:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_134338B:         var_124.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13433BE:         var_90 = Me.Fields.Item("Code")
  loc_13433DC:         Set var_94 = Me.Txt
  loc_13433E2:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_13433EA:         var_124.Tag = CStr(var_90.Value)
  loc_1343400:       End If
  loc_1343403:     Else
  loc_134340B:       If Not (var_86 = CInt(9)) Then
  loc_1343416:         If (var_86 = CInt(&HA)) Then
  loc_1343419:         End If
  loc_1343423:         Set var_8C = Me.Txt
  loc_1343429:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1343449:         Set var_124 = Me.Txt
  loc_134344F:         Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1343457:         var_128.Text = Proc_6_33_1512840(var_90)
  loc_134346D:       Else
  loc_1343475:         If Not (var_86 = CInt(&HD)) Then
  loc_1343480:           If Not (var_86 = CInt(&HE)) Then
  loc_134348B:             If Not (var_86 = CInt(&HF)) Then
  loc_1343496:               If Not (var_86 = CInt(&H10)) Then
  loc_13434A1:                 If (var_86 = CInt(&H11)) Then
  loc_13434A4:                 End If
  loc_13434A4:               End If
  loc_13434A4:             End If
  loc_13434A4:           End If
  loc_13434B1:           Set var_8C = Me.Txt
  loc_13434B7:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13434D6:           If (var_90.Text <> vbNullString) Then
  loc_1343509:             Set var_94 = Me.Txt
  loc_134350F:             Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_1343517:             var_124.Text = Me.ListView.SelectedItem.Text
  loc_1343530:           Else
  loc_1343570:             Set var_124 = Me.Txt
  loc_1343576:             Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_134357E:             var_128.Text = Me.ListView.ListItems.Item(1).Text
  loc_134359A:           End If
  loc_134359A:         End If
  loc_134359A:       End If
  loc_134359A:     End If
  loc_134359A:   End If
  loc_134359A: End If
  loc_134359A: Exit Sub
End Sub

Private Sub Form_Load() 'F4DED0
  'Data Table: 44BFA4
  Dim Me As Recordset15
  loc_F4DDAC: On Error Goto loc_F4DEC7
  loc_F4DDCB: Me.Recordset15.CursorLocation = 3
  loc_F4DE01: CVarUnk
  loc_F4DE06: VerifyVarObj
  loc_F4DE0C: Set var_88 = Me.DGWaiter
  loc_F4DE12: LateIdStAd
  loc_F4DE3C: Me.DGWaiter.CursorLocation = 3
  loc_F4DE64: elect Code,Name From Waiter Order by Name", CVar(MemVar_1F92044), 2 "Select M.DocID as SearchCode,M.DocID From Member M Order by DocID", CVar(MemVar_1F92044), 2
  loc_F4DE6F: global_60 = "GSTAO"
  loc_F4DE96: Call Proc_27_31_EF10D4(Proc_5_1_100CB50("INI", Me, New, 3, -1), Me, New)
  loc_F4DEB9: Proc_6_23_DFBA28(Me, 4500, 10000)
  loc_F4DEC1: Call Proc_27_30_149D2E4(3)
  loc_F4DEC6: Exit Sub
  loc_F4DEC7: ' Referenced from: F4DDAC
  loc_F4DEC7: Proc_6_60_E62BC4(-1)
  loc_F4DECC: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E3EF7C
  'Data Table: 44BFA4
  loc_E3EF57: Set global_68 = Nothing
  loc_E3EF69: Set global_64 = Nothing
  loc_E3EF78: Exit Sub
  loc_E3EF7A: If ( > 0) Then Exit Sub
  loc_E3EF7A: End If
End Sub

Private Sub Form_Activate() 'E46B68
  'Data Table: 44BFA4
  loc_E46B38: On Error Goto loc_E46B62
  loc_E46B3F: Set var_88 = Me.TopCtrl1
  loc_E46B45: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E46B5A: If (CLng(CInt()) = &H2D) Then
  loc_E46B5D:   Call TopCtrl1_UnknownEvent_1D()
  loc_E46B62:   ' Referenced from: E46B38
  loc_E46B62: End If
  loc_E46B62: Proc_6_60_E62BC4()
  loc_E46B67: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E26884
  'Data Table: 44BFA4
  loc_E26869: If (MasterFormExit = &HFF) Then
  loc_E26879:   Me.Global.Unload Me
  loc_E26881: End If
  loc_E26881: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AF90
  'Data Table: 44BFA4
  loc_E2AF68: On Error Goto loc_E2AF88
  loc_E2AF7F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2AF87: Exit Sub
  loc_E2AF88: ' Referenced from: E2AF68
  loc_E2AF88: Proc_6_60_E62BC4(Shift)
  loc_E2AF8D: Exit Sub
End Sub

Private Sub DGWaiter_UnknownEvent_9 'F4E5A4
  'Data Table: 44BFA4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4E49B: Me.DGWaiter.Visible = False
  loc_F4E4BA: If (Me.RecordCount > 0) Then
  loc_F4E4F9:   Set var_B4 = Me.Txt
  loc_F4E4FF:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4E507:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4E53A:   var_B0 = Me.Fields.Item("Name")
  loc_F4E559:   Set var_B4 = Me.Txt
  loc_F4E55F:   Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F4E567:   var_B8.Text = CStr(var_B0.Value)
  loc_F4E57D: End If
  loc_F4E588: Set var_A8 = Me.Txt
  loc_F4E58E: Call 0.Method_DGWaiter_UnknownEvent_90 (CInt(&HC))
  loc_F4E596: var_B0.SetFocus
  loc_F4E5A2: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F53A14
  'Data Table: 44BFA4
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F53936: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5393D:   Set var_A8 = Me.ListView
  loc_F53987:   Set var_C0 = Me.Txt
  loc_F5398D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F53995:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F539B5: End If
  loc_F539C1: Me.FrmList.Visible = False
  loc_F539F1: Set var_9C = Me.Txt
  loc_F539F7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F539FF: var_A8.SetFocus
  loc_F53A13: Exit Sub
End Sub

Public Function MasterFormExitGet() '44C8EC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '44C8FB
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E93E28
  'Data Table: 44BFA4
  Dim Me As Recordset15
  loc_E93DB6: On Error Goto loc_E93E1F
  loc_E93DBF: Me.MoveFirst
  loc_E93DE9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93E11: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E93E19: Call Proc_27_30_149D2E4(0)
  loc_E93E1E: Exit Sub
  loc_E93E1F: ' Referenced from: E93DB6
  loc_E93E1F: Proc_6_60_E62BC4(var_A0)
  loc_E93E24: Exit Sub
End Sub

Public Sub Proc_27_28_F9A11C
  'Data Table: 44BFA4
  Dim var_C0 As String
  Dim var_C4 As TextBox
  Dim unk_44BFB4 As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  loc_F99FD1: Set var_8C = Me.TopCtrl1
  loc_F99FD7: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(&HFF)
  loc_F99FEC: If ( = "Add") Then
  loc_F9A012:   var_C0 = "Select Count(*) From Member Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_F9A02A:   Set var_8C = Me.Txt
  loc_F9A030:   Call 0.Method_Proc_27_28_F9A11C0 (CInt(0), var_C4, var_C8, var_C0 & "' or LOGSITE_CODE='HO') and DocID='", var_AC, -1)
  loc_F9A051:   unk_44BFB4.Execute var_DC & var_C8 & "'", 0, var_F0
  loc_F9A061:    = var_DC.Item()
  loc_F9A069:    = var_F0.Value
  loc_F9A09A:   If (var_C4.Text.Fields > 0) Then
  loc_F9A0A3:     Call 0.Method_arg_50 (var_C0)
  loc_F9A0C4:     MsgBox("Duplicate Serial No.", &H40, CVar(var_C0), var_110, var_120)
  loc_F9A0DA:     Call Proc_27_34_115BCB8(MemVar_1F92044)
  loc_F9A0ED:     Set var_8C = Me.Txt
  loc_F9A0F3:     Call 0.Method_Proc_27_28_F9A11C0 (CInt(0), var_C4)
  loc_F9A0FB:     var_C4.Text = var_C0
  loc_F9A10F:     Proc_27_28_F9A11C = 0
  loc_F9A115:   End If
  loc_F9A115: End If
  loc_F9A115: Proc_27_28_F9A11C = var_C0
End Sub

Public Sub Proc_27_29_EB7814
  'Data Table: 44BFA4
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_EB7782: Set var_8C = Me.Txt
  loc_EB7788: Call 0.Method_Proc_27_29_EB7814C (var_8E, var_86)
  loc_EB7798: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB77AE:   Set var_8C = Me.Txt
  loc_EB77B4:   Call 0.Method_Proc_27_29_EB78140 (CInt(var_86), var_98)
  loc_EB77BC:   var_98.Text = vbNullString
  loc_EB77D8:   Set var_8C = Me.Txt
  loc_EB77DE:   Call 0.Method_Proc_27_29_EB78140 (CInt(var_86), var_98)
  loc_EB77E6:   var_98.Tag = vbNullString
  loc_EB77F5: Next var_92 'Byte
  loc_EB7808: Me.LblVPrefix.Caption = vbNullString
  loc_EB7810: Exit Sub
End Sub

Public Sub Proc_27_30_149D2E4
  'Data Table: 44BFA4
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim var_FC As String
  Dim unk_44BFB4 As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Variant
  Dim var_120 As Variant
  Dim var_132 As Integer
  Dim var_130 As TextBox
  Dim var_8C As Recordset15
  loc_149C664: On Error Goto loc_149D2DB
  loc_149C67E: If (Me.RecordCount > 0) Then
  loc_149C6D7:   unk_44BFB4.Execute CStr("Select * From Member Where DocID='" & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_149C6FF:   Set var_124 = var_120 
  loc_149C73C:   Set var_120 = Me.Txt
  loc_149C742:   Call 0.Method_Proc_27_30_149D2E40 (CInt(0), var_128)
  loc_149C74A:   var_128.Text = CStr(var_124.Fields.Item("DocID").Value)
  loc_149C798:   Me.LblVPrefix.Caption = CStr(var_124.Fields.Item("vPrefix").Value)
  loc_149C7FE:   Set var_120 = Me.Txt
  loc_149C804:   Call 0.Method_Proc_27_30_149D2E40 (CInt(2), var_128, CStr(Format(CVar(var_124.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_149C80C:   var_128.Text = 1
  loc_149C85F:   Set var_120 = Me.Txt
  loc_149C865:   Call 0.Method_Proc_27_30_149D2E40 (CInt(1), var_128, CStr(var_124.Fields.Item("VNo").Value))
  loc_149C86D:   var_128.Text = 1
  loc_149C8B9:   Set var_120 = Me.Txt
  loc_149C8BF:   Call 0.Method_Proc_27_30_149D2E40 (CInt(3), var_128)
  loc_149C8C7:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Name")))
  loc_149C911:   Set var_120 = Me.Txt
  loc_149C917:   Call 0.Method_Proc_27_30_149D2E40 (CInt(4), var_128)
  loc_149C91F:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Company")))
  loc_149C969:   Set var_120 = Me.Txt
  loc_149C96F:   Call 0.Method_Proc_27_30_149D2E40 (CInt(5), var_128)
  loc_149C977:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Design")))
  loc_149C9C1:   Set var_120 = Me.Txt
  loc_149C9C7:   Call 0.Method_Proc_27_30_149D2E40 (CInt(6), var_128)
  loc_149C9CF:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Add1")))
  loc_149CA19:   Set var_120 = Me.Txt
  loc_149CA1F:   Call 0.Method_Proc_27_30_149D2E40 (CInt(7), var_128)
  loc_149CA27:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Add2")))
  loc_149CA71:   Set var_120 = Me.Txt
  loc_149CA77:   Call 0.Method_Proc_27_30_149D2E40 (CInt(8), var_128)
  loc_149CA7F:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("Phone")))
  loc_149CAE5:   Set var_120 = Me.Txt
  loc_149CAEB:   Call 0.Method_Proc_27_30_149D2E40 (CInt(9), var_128, CStr(Format(CVar(var_124.Fields.Item("DOB")), "dd/MMM/yyyy")))
  loc_149CAF3:   var_128.Text = 1
  loc_149CB5F:   Set var_120 = Me.Txt
  loc_149CB65:   Call 0.Method_Proc_27_30_149D2E40 (CInt(&HA), var_128, CStr(Format(CVar(var_124.Fields.Item("DOA")), "dd/MMM/yyyy")), 1)
  loc_149CB6D:   var_128.Text = 1
  loc_149CBBD:   Set var_120 = Me.Txt
  loc_149CBC3:   Call 0.Method_Proc_27_30_149D2E40 (CInt(&HB), var_128)
  loc_149CBCB:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("TableNo")), 1)
  loc_149CC07:   var_132 = IsNull(CVar(var_124.Fields.Item("Waiter")))
  loc_149CC19:   var_120 = var_124.Fields
  loc_149CC21:   var_128 = var_120.Item("Waiter")
  loc_149CC42:   var_11C = IIf(var_132, vbNullString, CVar(var_128))
  loc_149CC59:   Set var_12C = Me.Txt
  loc_149CC5F:   Call 0.Method_Proc_27_30_149D2E40 (CInt(&HC), var_130, CStr(var_11C))
  loc_149CC67:   var_130.Tag = var_132
  loc_149CCDA:   unk_44BFB4.Execute CStr("Select Name From Waiter Where Code='" & var_124.Fields.Item("Waiter").Value & "'"), var_11C, -1
  loc_149CCE5:   Set var_8C = var_120
  loc_149CD13:   If (var_8C.RecordCount > 0) Then
  loc_149CD2D:     var_A8 = var_8C.Fields.Item("Name")
  loc_149CD4C:     Set var_120 = Me.Txt
  loc_149CD52:     Call 0.Method_Proc_27_30_149D2E40 (CInt(&HC), var_128)
  loc_149CD5A:     var_128.Text = Proc_6_38_E68A98(CVar(var_A8), var_120)
  loc_149CD71:   Else
  loc_149CD7F:     Set var_94 = Me.Txt
  loc_149CD85:     Call 0.Method_Proc_27_30_149D2E40 (CInt(&HC), var_A8)
  loc_149CD8D:     var_A8.Text = vbNullString
  loc_149CD99:   End If
  loc_149CE3E:   var_1D4 = IIf((var_124.Fields.Item("RECP").Value = "E"), "Excellent", IIf((var_124.Fields.Item("RECP").Value = "G"), "Good", "Poor"))
  loc_149CE55:   Set var_12C = Me.Txt
  loc_149CE5B:   Call 0.Method_Proc_27_30_149D2E40 (CInt(&HD), var_130)
  loc_149CE63:   var_130.Text = CStr(var_1D4)
  loc_149CF3C:   var_FC = CStr(IIf((var_124.Fields.Item("QOF").Value = "E"), "Excellent", IIf((var_124.Fields.Item("QOF").Value = "G"), "Good", "Poor")))
  loc_149CF4B:   Set var_12C = Me.Txt
  loc_149CF51:   Call 0.Method_Proc_27_30_149D2E40 (CInt(&HE), var_130)
  loc_149CF59:   var_130.Text = var_FC
  loc_149D032:   var_FC = CStr(IIf((var_124.Fields.Item("SOF").Value = "E"), "Excellent", IIf((var_124.Fields.Item("SOF").Value = "G"), "Good", "Poor")))
  loc_149D041:   Set var_12C = Me.Txt
  loc_149D047:   Call 0.Method_Proc_27_30_149D2E40 (CInt(&HF), var_130)
  loc_149D04F:   var_130.Text = var_FC
  loc_149D128:   var_FC = CStr(IIf((var_124.Fields.Item("SOD").Value = "E"), "Excellent", IIf((var_124.Fields.Item("SOD").Value = "G"), "Good", "Poor")))
  loc_149D137:   Set var_12C = Me.Txt
  loc_149D13D:   Call 0.Method_Proc_27_30_149D2E40 (CInt(&H10), var_130)
  loc_149D145:   var_130.Text = var_FC
  loc_149D1B2:   var_128 = var_124.Fields.Item("Entert")
  loc_149D22D:   Set var_12C = Me.Txt
  loc_149D233:   Call 0.Method_Proc_27_30_149D2E40 (CInt(&H11), var_130)
  loc_149D23B:   var_130.Text = CStr(IIf((var_124.Fields.Item("Entert").Value = "E"), "Excellent", IIf((var_128.Value = "G"), "Good", "Poor")))
  loc_149D29D:   Set var_120 = Me.Txt
  loc_149D2A3:   Call 0.Method_Proc_27_30_149D2E40 (CInt(&H12), var_128)
  loc_149D2AB:   var_128.Text = Proc_6_38_E68A98(CVar(var_124.Fields.Item("U_Name")))
  loc_149D2C1:   Set var_124 = Nothing 
  loc_149D2C8: Else
  loc_149D2C8:   Call Proc_27_29_EB7814(var_120)
  loc_149D2CD: End If
  loc_149D2CD: Call Proc_27_32_E81DA4()
  loc_149D2D7: Set var_88 = Nothing
  loc_149D2DA: Exit Sub
  loc_149D2DB: ' Referenced from: 149C664
  loc_149D2DB: Proc_6_60_E62BC4()
  loc_149D2E0: Exit Sub
End Sub

Public Sub Proc_27_31_EF10D4(arg_C) 'EF10D4
  'Data Table: 44BFA4
  Dim var_98 As TextBox
  loc_EF100E: Set var_8C = Me.Txt
  loc_EF1014: Call 0.Method_Proc_27_31_EF10D4C (var_8E, var_86)
  loc_EF1024: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF103A:   Set var_8C = Me.Txt
  loc_EF1040:   Call 0.Method_Proc_27_31_EF10D40 (CInt(var_86), var_98)
  loc_EF1048:   var_98.Enabled = arg_C
  loc_EF1057: Next var_92 'Byte
  loc_EF106A: Set var_8C = Me.Txt
  loc_EF1070: Call 0.Method_Proc_27_31_EF10D40 (CInt(0), var_98)
  loc_EF1078: var_98.Enabled = False
  loc_EF1091: Set var_8C = Me.Txt
  loc_EF1097: Call 0.Method_Proc_27_31_EF10D40 (CInt(&H12), var_98)
  loc_EF109F: var_98.Enabled = False
  loc_EF10B9: Set var_8C = Me.Txt
  loc_EF10BF: Call 0.Method_Proc_27_31_EF10D40 (CInt(&H12), var_98)
  loc_EF10C7: var_98.Text = MemVar_1F920C8
  loc_EF10D3: Exit Sub
End Sub

Public Sub Proc_27_32_E81DA4
  'Data Table: 44BFA4
  loc_E81D54: If (CBool(Me.DGWaiter.Visible) = &HFF) Then
  loc_E81D66:   Me.DGWaiter.Visible = False
  loc_E81D6E: End If
  loc_E81D89: If (Me.FrmList.Visible = &HFF) Then
  loc_E81D98:   Me.FrmList.Visible = False
  loc_E81DA0: End If
  loc_E81DA0: Exit Sub
End Sub

Public Sub Proc_27_33_EE0538(arg_C) 'EE0538
  'Data Table: 44BFA4
  Dim var_8C As TextBox
  loc_EE048C: Call Proc_27_32_E81DA4()
  loc_EE049C: Set var_88 = Me.Txt
  loc_EE04A2: Call 0.Method_Proc_27_33_EE05380 (CInt(3))
  loc_EE04CB: If (Proc_6_27_EA565C(var_8C, "Guest Name") = 0) Then
  loc_EE04CE:   Exit Sub
  loc_EE04CF: End If
  loc_EE0506: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE0509:   Call TopCtrl1_UnknownEvent_19()
  loc_EE0511: Else
  loc_EE051B:   Set var_88 = Me.Txt
  loc_EE0521:   Call 0.Method_Proc_27_33_EE05380 (arg_C, var_8C)
  loc_EE0529:   var_8C.SetFocus
  loc_EE0535: End If
  loc_EE0535: Exit Sub
End Sub

Public Sub Proc_27_34_115BCB8
  'Data Table: 44BFA4
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115B950: var_90 = global_60
  loc_115B967: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115B98A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115B998: Set var_B4 = Me.Txt
  loc_115B99E: Call 0.Method_Proc_27_34_115BCB80 (CInt(2), var_B8, var_E8)
  loc_115B9AD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115B9B5: var_F8 = -1 & var_D8 
  loc_115B9C9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115B9D4: Set var_8C = var_140
  loc_115BA10: If (var_8C.RecordCount <= 0) Then
  loc_115BA2C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115BA3F:   var_88 = vbNullString
  loc_115BA42:   Proc_27_34_115BCB8 = 
  loc_115BA48: End If
  loc_115BA5C: If (var_8C.RecordCount > 0) Then
  loc_115BA9B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115BAB8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115BAC9:     var_9C = CStr(var_B8.Value)
  loc_115BAE4:     Set var_B4 = Me.Txt
  loc_115BAEA:     Call 0.Method_Proc_27_34_115BCB80 (CInt(1), var_B8)
  loc_115BB00:     var_94 = CLng(Val(var_B8.Text))
  loc_115BB10:   Else
  loc_115BB3B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115BB62:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115BB77:     var_D8 = (var_B8.Value + 1)
  loc_115BB7D:     var_94 = CLng(var_D8)
  loc_115BB8E:   End If
  loc_115BB8E: End If
  loc_115BBB9: var_C8 = Space((5 - Len(var_90)))
  loc_115BBC1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115BBCB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115BBDC: var_118 = Space((5 - Len(var_9C)))
  loc_115BBE4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115BBFA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115BC02: var_188 = (var_13C + var_178)
  loc_115BC0E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115BC13: var_98 = CStr(var_1A8)
  loc_115BC43: Me.LblVPrefix.Caption = var_9C
  loc_115BC59: Set var_B4 = Me.Txt
  loc_115BC5F: Call 0.Method_Proc_27_34_115BCB80 (CInt(0), var_B8)
  loc_115BC67: var_B8.Text = var_98
  loc_115BC86: Set var_B4 = Me.Txt
  loc_115BC8C: Call 0.Method_Proc_27_34_115BCB80 (CInt(1), var_B8)
  loc_115BC94: var_B8.Text = CStr(var_94)
  loc_115BCA6: var_88 = var_98
  loc_115BCAE: Set var_8C = Nothing
  loc_115BCB1: Proc_27_34_115BCB8 = var_94
End Sub
