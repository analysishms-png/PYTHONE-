VERSION 5.00
Begin VB.Form MemAssistant
  Caption = "Member Assistant "
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  LockControls = -1  'True
  Begin MSFlexGrid FGPoint
    Left = 10620
    Top = 9495
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 106
  End
  Begin DataGrid DGMemName
    Left = 8670
    Top = 8790
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin TextBox TxtFrPeriod
    Left = 17535
    Top = 6585
    Width = 1485
    Height = 315
    Visible = 0   'False
    Text = "Text1"
    TabIndex = 104
  End
  Begin TextBox Txt
    Index = 36
    BackColor = &HFFFFFF&
    Left = 17580
    Top = 8145
    Width = 1140
    Height = 255
    Visible = 0   'False
    TabIndex = 95
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 37
    BackColor = &HFFFFFF&
    Left = 17565
    Top = 7860
    Width = 1140
    Height = 255
    Visible = 0   'False
    TabIndex = 94
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 38
    BackColor = &HFFFFFF&
    Left = 15750
    Top = 8895
    Width = 3855
    Height = 255
    Visible = 0   'False
    TabIndex = 93
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 35
    Left = 17610
    Top = 8415
    Width = 1140
    Height = 240
    Visible = 0   'False
    TabIndex = 92
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
End
Begin BtnEnh CmdBill
  Left = 13710
  Top = 480
  Width = 1995
  Height = 480
  TabIndex = 77
End
Begin BtnEnh LblPersonal
  Left = 165
  Top = 1935
  Width = 5715
  Height = 555
  TabIndex = 74
End
Begin TextBox txtCurrBal
  Left = 1845
  Top = 6300
  Width = 1440
  Height = 255
  Enabled = 0   'False
  TabIndex = 69
  BorderStyle = 0 'None
  MaxLength = 15
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin BtnEnh CmdExit
  Left = 4050
  Top = 7860
  Width = 1830
  Height = 435
  TabIndex = 68
End
Begin TextBox Txt
  Index = 20
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 6960
  Top = 9750
  Width = 1680
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 67
  BorderStyle = 0 'None
  MaxLength = 30
  BeginProperty Font
    Name = "Arial"
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
  Index = 28
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 15885
  Top = 9780
  Width = 615
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 36
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 50
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin Frame FrBlackListed
  Caption = "Frame2"
  ForeColor = &HFF0000&
  Left = 14175
  Top = 10080
  Width = 6135
  Height = 555
  Visible = 0   'False
  TabIndex = 31
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  BorderStyle = 0 'None
  Begin TextBox Txt
    Index = 30
    BackColor = &HFFFFFF&
    Left = 1770
    Top = 255
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 33
    BorderStyle = 0 'None
    MaxLength = 8
    BeginProperty Font
      Name = "Tahoma"
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
    Index = 29
    BackColor = &HFFFFFF&
    Left = 1755
    Top = -15
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Lbl
    Caption = "Black List By  "
    Index = 21
    ForeColor = &HFF0000&
    Left = 90
    Top = 270
    Width = 1335
    Height = 240
    TabIndex = 35
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "BlackList Reason  "
    Index = 20
    ForeColor = &HFF0000&
    Left = 90
    Top = -15
    Width = 1740
    Height = 240
    TabIndex = 34
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End
Begin TextBox Txt
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 4410
  Top = 5730
  Width = 1455
  Height = 255
  Enabled = 0   'False
  TabIndex = 30
  BorderStyle = 0 'None
  MaxLength = 30
  BeginProperty Font
    Name = "Arial"
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
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 5445
  Width = 570
  Height = 255
  Enabled = 0   'False
  TabIndex = 29
  BorderStyle = 0 'None
  MaxLength = 3
  BeginProperty Font
    Name = "Arial"
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
  Index = 22
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 4305
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 28
  BorderStyle = 0 'None
  MaxLength = 50
  BeginProperty Font
    Name = "Arial"
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
  Index = 21
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 4020
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 27
  BorderStyle = 0 'None
  MaxLength = 50
  BeginProperty Font
    Name = "Arial"
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
  Index = 23
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 4590
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 26
  BorderStyle = 0 'None
  MaxLength = 50
  BeginProperty Font
    Name = "Arial"
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
  Index = 24
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 4875
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 25
  BorderStyle = 0 'None
  MaxLength = 25
  BeginProperty Font
    Name = "Arial"
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
  Index = 25
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 5160
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 24
  BorderStyle = 0 'None
  MaxLength = 50
  BeginProperty Font
    Name = "Arial"
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
  Index = 26
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 15885
  Top = 9165
  Width = 4365
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 23
  BorderStyle = 0 'None
  MaxLength = 50
  BeginProperty Font
    Name = "Arial"
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
  Index = 27
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 15885
  Top = 9465
  Width = 4365
  Height = 285
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 22
  BorderStyle = 0 'None
  MultiLine = -1  'True
  MaxLength = 80
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 3300
  Top = 5445
  Width = 2565
  Height = 255
  TabIndex = 21
  BorderStyle = 0 'None
  MaxLength = 20
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 1845
  Top = 3735
  Width = 1245
  Height = 255
  Enabled = 0   'False
  TabIndex = 20
  BorderStyle = 0 'None
  MaxLength = 30
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 1845
  Top = 6015
  Width = 570
  Height = 255
  Enabled = 0   'False
  TabIndex = 19
  BorderStyle = 0 'None
  MaxLength = 15
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 4470
  Top = 3735
  Width = 1395
  Height = 255
  Enabled = 0   'False
  TabIndex = 18
  BorderStyle = 0 'None
  MaxLength = 30
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 1845
  Top = 3165
  Width = 1245
  Height = 255
  Enabled = 0   'False
  TabIndex = 17
  BorderStyle = 0 'None
  MaxLength = 6
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 1845
  Top = 3450
  Width = 1245
  Height = 255
  TabIndex = 16
  BorderStyle = 0 'None
  MaxLength = 15
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 4470
  Top = 3450
  Width = 1395
  Height = 255
  Enabled = 0   'False
  TabIndex = 15
  BorderStyle = 0 'None
  MaxLength = 30
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 4470
  Top = 3165
  Width = 1395
  Height = 255
  Enabled = 0   'False
  TabIndex = 14
  BorderStyle = 0 'None
  MaxLength = 10
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 4410
  Top = 6015
  Width = 1455
  Height = 255
  Enabled = 0   'False
  TabIndex = 13
  BorderStyle = 0 'None
  MaxLength = 20
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 1845
  Top = 2595
  Width = 4020
  Height = 255
  Enabled = 0   'False
  TabIndex = 12
  BorderStyle = 0 'None
  MaxLength = 50
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 1845
  Top = 5730
  Width = 570
  Height = 255
  Enabled = 0   'False
  TabIndex = 11
  BorderStyle = 0 'None
  MaxLength = 3
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 1845
  Top = 9750
  Width = 510
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  Text = "Mr."
  TabIndex = 10
  BorderStyle = 0 'None
  MaxLength = 4
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 2385
  Top = 9750
  Width = 2880
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 9
  BorderStyle = 0 'None
  MaxLength = 75
  BeginProperty Font
    Name = "Arial"
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
  Index = 19
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 5295
  Top = 9750
  Width = 1635
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 8
  BorderStyle = 0 'None
  MaxLength = 30
  BeginProperty Font
    Name = "Arial"
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
  BackColor = &HFFFFFF&
  ForeColor = &HFF0000&
  Left = 1845
  Top = 9465
  Width = 1470
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 7
  BorderStyle = 0 'None
  MaxLength = 11
  BeginProperty Font
    Name = "Arial"
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
  ForeColor = &HFF0000&
  Left = 1845
  Top = 2880
  Width = 4020
  Height = 255
  TabIndex = 6
  BorderStyle = 0 'None
  MaxLength = 50
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin BtnEnh CmdReset
  Left = 2205
  Top = 7860
  Width = 1830
  Height = 435
  TabIndex = 5
End
Begin TextBox Txt
  Index = 0
  BackColor = &HFFFFFF&
  Left = 1845
  Top = 7515
  Width = 4020
  Height = 255
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 75
  BeginProperty Font
    Name = "Tahoma"
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
  BackColor = &HFFFFFF&
  Left = 390
  Top = 7515
  Width = 1425
  Height = 255
  TabIndex = 0
  BorderStyle = 0 'None
  MaxLength = 11
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin CommonDialog CDlg
End
Begin BtnEnh CmdPayment
  Left = 13695
  Top = 1260
  Width = 1995
  Height = 480
  TabIndex = 78
End
Begin Frame FrBill
  Left = 6015
  Top = 2490
  Width = 9705
  Height = 6285
  TabIndex = 80
  Begin MSFlexGrid FGPoint1
    Left = 1290
    Top = 3645
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 103
  End
  Begin DataGrid DGRev
    Left = 435
    Top = 2670
    Width = 3930
    Height = 2565
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 102
  End
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 7005
    Top = 3645
    Width = 330
    Height = 255
    Visible = 0   'False
    TabIndex = 98
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 7575
    Top = 3645
    Width = 1185
    Height = 255
    Enabled = 0   'False
    TabIndex = 97
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 12
    BeginProperty Font
      Name = "Arial"
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
    Index = 32
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 840
    Top = 660
    Width = 1155
    Height = 255
    Enabled = 0   'False
    TabIndex = 91
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 30
    BeginProperty Font
      Name = "Arial"
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
    Index = 31
    BackColor = &H8000000F&
    ForeColor = &HFF0000&
    Left = 7545
    Top = 660
    Width = 2025
    Height = 255
    Enabled = 0   'False
    TabIndex = 90
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    Left = 390
    Top = 1305
    Width = 1065
    Height = 240
    Visible = 0   'False
    TabIndex = 87
    BorderStyle = 0 'None
    MaxLength = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 33
    BackColor = &HFFFFFF&
    Left = 5025
    Top = 660
    Width = 1155
    Height = 255
    TabIndex = 83
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 15
    BeginProperty Font
      Name = "Arial"
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
    Index = 34
    BackColor = &HFFFFFF&
    Left = 2835
    Top = 660
    Width = 1350
    Height = 255
    TabIndex = 82
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 15
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid Fgrid
    Left = 375
    Top = 1020
    Width = 7500
    Height = 2355
    TabIndex = 86
  End
  Begin MSHFlexGrid FGCat
    Left = 150
    Top = 3660
    Width = 4185
    Height = 2505
    Visible = 0   'False
    TabIndex = 88
  End
  Begin MainCtrl TopCtrl1
    Left = 75
    Top = 150
    Width = 9525
    Height = 450
    TabIndex = 89
  End
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 5040
    Top = 3645
    Width = 480
    Height = 240
    TabIndex = 101
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblAt
    Caption = "%"
    Index = 0
    ForeColor = &HFF0000&
    Left = 7380
    Top = 3645
    Width = 150
    Height = 240
    Visible = 0   'False
    TabIndex = 100
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &HFF0000&
    Left = 5010
    Top = 3960
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 99
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 6225
    Top = 690
    Width = 645
    Height = 210
    TabIndex = 96
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
    Caption = "Vr. Type"
    Index = 5
    ForeColor = &H0&
    Left = 4230
    Top = 690
    Width = 750
    Height = 210
    TabIndex = 85
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
    Caption = "Bill No."
    Index = 6
    ForeColor = &H0&
    Left = 180
    Top = 690
    Width = 615
    Height = 210
    TabIndex = 84
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
    Caption = "Bill Date"
    Index = 2
    ForeColor = &H0&
    Left = 2055
    Top = 690
    Width = 750
    Height = 210
    TabIndex = 81
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
End
Begin BtnEnh LblMsg
  Left = 1710
  Top = 1020
  Width = 8115
  Height = 450
  TabIndex = 75
End
Begin BtnEnh cmdFillDtl
  Left = 375
  Top = 7845
  Width = 1830
  Height = 435
  TabIndex = 105
End
Begin Label LblAt
  Caption = "%"
  Index = 1
  ForeColor = &H0&
  Left = 15375
  Top = 6645
  Width = 180
  Height = 240
  Visible = 0   'False
  TabIndex = 79
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblMember
  Left = 1260
  Top = 345
  Width = 8970
  Height = 300
  TabIndex = 76
  Alignment = 2 'Center
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Image ImgMemPhoto
  Left = 10860
  Top = 135
  Width = 2205
  Height = 2100
  Stretch = -1  'True
  BorderStyle = 1 'Fixed Single
End
Begin Label Lbl
  Caption = "Opening Balance"
  Index = 17
  ForeColor = &HFF0000&
  Left = 15570
  Top = 10695
  Width = 1650
  Height = 240
  Visible = 0   'False
  TabIndex = 73
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblOpBalType
  Caption = "Dr/Cr"
  ForeColor = &HC0&
  Left = 18030
  Top = 10755
  Width = 555
  Height = 240
  Visible = 0   'False
  TabIndex = 72
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Current Balance"
  Index = 16
  ForeColor = &HFF0000&
  Left = 150
  Top = 6300
  Width = 1545
  Height = 240
  TabIndex = 71
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblCurBalType
  Caption = "Dr/Cr"
  ForeColor = &HFF00FF&
  Left = 3345
  Top = 6300
  Width = 555
  Height = 240
  TabIndex = 70
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "(Y/N)"
  Index = 2
  ForeColor = &HC0&
  Left = 16590
  Top = 9825
  Width = 435
  Height = 240
  Visible = 0   'False
  TabIndex = 66
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Black Listed"
  Index = 19
  ForeColor = &HFF0000&
  Left = 14220
  Top = 9810
  Width = 1155
  Height = 240
  Visible = 0   'False
  TabIndex = 65
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Category"
  Index = 18
  ForeColor = &HFF0000&
  Left = 150
  Top = 2610
  Width = 855
  Height = 240
  TabIndex = 64
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Allow Credit"
  Index = 23
  ForeColor = &HFF0000&
  Left = 150
  Top = 5723
  Width = 1170
  Height = 240
  TabIndex = 63
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Discount%"
  Index = 13
  ForeColor = &HFF0000&
  Left = 3255
  Top = 6015
  Width = 960
  Height = 240
  TabIndex = 62
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Active"
  Index = 15
  ForeColor = &HFF0000&
  Left = 150
  Top = 6006
  Width = 585
  Height = 240
  TabIndex = 61
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "(Y/N)"
  Index = 0
  ForeColor = &HFF00FF&
  Left = 2445
  Top = 5730
  Width = 435
  Height = 240
  TabIndex = 60
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "(Y/N)"
  Index = 1
  ForeColor = &HFF00FF&
  Left = 2460
  Top = 6000
  Width = 435
  Height = 240
  TabIndex = 59
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Gender"
  Index = 27
  ForeColor = &HFF0000&
  Left = 150
  Top = 3176
  Width = 705
  Height = 240
  TabIndex = 58
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Marital Status"
  Index = 30
  ForeColor = &HFF0000&
  Left = 3135
  Top = 3180
  Width = 1305
  Height = 240
  TabIndex = 57
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Birth Place"
  Index = 29
  ForeColor = &HFF0000&
  Left = 3135
  Top = 3457
  Width = 1050
  Height = 240
  TabIndex = 56
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Date of Birth"
  Index = 28
  ForeColor = &HFF0000&
  Left = 150
  Top = 3459
  Width = 1185
  Height = 240
  TabIndex = 55
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Nationality"
  Index = 34
  ForeColor = &HFF0000&
  Left = 150
  Top = 3742
  Width = 1020
  Height = 240
  TabIndex = 54
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "PAN No."
  Index = 10
  ForeColor = &HFF0000&
  Left = 2475
  Top = 5460
  Width = 780
  Height = 240
  TabIndex = 53
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Special Interest"
  Index = 26
  ForeColor = &HFF0000&
  Left = 14220
  Top = 9510
  Width = 1485
  Height = 240
  Visible = 0   'False
  TabIndex = 52
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Religion"
  Index = 42
  ForeColor = &HFF0000&
  Left = 3135
  Top = 3735
  Width = 795
  Height = 240
  TabIndex = 51
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Passport #"
  Index = 9
  ForeColor = &HFF0000&
  Left = 14220
  Top = 9195
  Width = 975
  Height = 240
  Visible = 0   'False
  TabIndex = 50
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Designation"
  Index = 8
  ForeColor = &HFF0000&
  Left = 150
  Top = 5157
  Width = 1125
  Height = 240
  TabIndex = 49
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Turnover"
  Index = 7
  ForeColor = &HFF0000&
  Left = 150
  Top = 4874
  Width = 855
  Height = 240
  TabIndex = 48
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Type of Business"
  Index = 5
  ForeColor = &HFF0000&
  Left = 150
  Top = 4591
  Width = 1590
  Height = 240
  TabIndex = 47
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Edu.Qualification"
  Index = 4
  ForeColor = &HFF0000&
  Left = 150
  Top = 4308
  Width = 1635
  Height = 240
  TabIndex = 46
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Prof./Occupation"
  Index = 3
  ForeColor = &HFF0000&
  Left = 150
  Top = 4025
  Width = 1590
  Height = 240
  TabIndex = 45
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Blood Group"
  Index = 24
  ForeColor = &HFF0000&
  Left = 150
  Top = 5440
  Width = 1200
  Height = 240
  TabIndex = 44
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Credit Limit"
  Index = 6
  ForeColor = &HFF0000&
  Left = 3255
  Top = 5745
  Width = 1110
  Height = 240
  TabIndex = 43
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Contact Person"
  Index = 1
  ForeColor = &HFF0000&
  Left = 150
  Top = 9750
  Width = 1440
  Height = 240
  Visible = 0   'False
  TabIndex = 42
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "Middle Name"
  Index = 3
  ForeColor = &HFF00FF&
  Left = 5580
  Top = 10005
  Width = 1125
  Height = 240
  Visible = 0   'False
  TabIndex = 41
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "Last Name"
  Index = 4
  ForeColor = &HFF00FF&
  Left = 7350
  Top = 10005
  Width = 945
  Height = 240
  Visible = 0   'False
  TabIndex = 40
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "First Name"
  Index = 5
  ForeColor = &HFF00FF&
  Left = 3090
  Top = 10005
  Width = 960
  Height = 240
  Visible = 0   'False
  TabIndex = 39
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Member ID"
  Index = 74
  ForeColor = &HFF0000&
  Left = 150
  Top = 9465
  Width = 1035
  Height = 240
  Visible = 0   'False
  TabIndex = 38
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Lbl
  Caption = "Father Name"
  Index = 14
  ForeColor = &HFF0000&
  Left = 150
  Top = 2893
  Width = 1230
  Height = 240
  TabIndex = 37
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblName
  Caption = "Member Name"
  Index = 0
  ForeColor = &H0&
  Left = 3555
  Top = 7245
  Width = 1260
  Height = 240
  TabIndex = 4
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblName
  Caption = "Card No"
  Index = 1
  ForeColor = &H0&
  Left = 660
  Top = 7260
  Width = 690
  Height = 240
  TabIndex = 3
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
End

Attribute VB_Name = "MemAssistant"

Private global_74 As Integer
Private global_72 As Integer

Private Sub CmdReset_UnknownEvent_9 'E7EB20
  'Data Table: 537E24
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_E7EAB8: Call Proc_281_48_10C5178()
  loc_E7EAC9: Me.FrBill.Enabled = False
  loc_E7EADE: Set var_88 = Me.Txt
  loc_E7EAE4: Call 0.Method_CmdReset_UnknownEvent_90 (CInt(1), var_8C)
  loc_E7EAEC: var_8C.Enabled = True
  loc_E7EB05: Set var_88 = Me.Txt
  loc_E7EB0B: Call 0.Method_CmdReset_UnknownEvent_90 (CInt(0), var_8C)
  loc_E7EB13: var_8C.Enabled = True
  loc_E7EB1F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1093C4C
  'Data Table: 537E24
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim var_8C As TextBox
  Dim var_B4 As Variant
  Dim var_90 As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  loc_10939B6: Set var_88 = Me.Txt
  loc_10939BC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10939CA: Proc_183_28_E20B20(var_8C)
  loc_10939D6: Call Proc_281_54_EF882C(var_8C)
  loc_10939DE: var_92 = Index
  loc_10939E9: If (var_92 = CInt(0)) Then
  loc_10939FF:   Me.DGMemName.Tag = CVar(CStr(Index))
  loc_1093A17:   Set var_88 = Me.Txt
  loc_1093A1D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1093A3C:   Me.DGMemName.Left = CVar(var_8C.Left)
  loc_1093A57:   Set var_90 = Me.Txt
  loc_1093A5D:   Call 0.Method_Txt_GotFocus0 (Index, var_CC)
  loc_1093A77:   Set var_88 = Me.Txt
  loc_1093A7D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1093A95:   var_B4 = CVar(((var_8C.Top + var_CC.Height) + CDbl(&HF))) 'Single
  loc_1093AA4:   Me.DGMemName.Top = CVar(var_8C.Left)
  loc_1093ACD:   If (Me.RecordCount > 0) Then
  loc_1093ADB:     Set var_8C = Me.FGPoint
  loc_1093AF3:     Proc_6_137_1193554(Me.DGMemName, global_60, Index)
  loc_1093B01:   End If
  loc_1093B4F:   Set var_88 = Me.Txt
  loc_1093B55:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC)
  loc_1093B5D:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1093B75:   If (var_8C Or (var_DC = vbNullString)) Then
  loc_1093B78:     Exit Sub
  loc_1093B79:   End If
  loc_1093B86:   Set var_88 = Me.Txt
  loc_1093B8C:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1093B94:   var_DC = var_8C.Text
  loc_1093BA6:   var_B4 = "Name"
  loc_1093BE1:   If CBool(CVar(var_DC) <> Me.Fields.Item(var_B4).Value) Then
  loc_1093BEA:     Me.MoveFirst
  loc_1093C0D:     Set var_88 = Me.Txt
  loc_1093C13:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_DC, "Name ='")
  loc_1093C1B:     0 = var_8C.Text
  loc_1093C34:     Me.Find 1 & var_DC & "'", var_B4, var_92
  loc_1093C49:   End If
  loc_1093C49: End If
  loc_1093C49: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB08B8
  'Data Table: 537E24
  Dim Me As Recordset15
  loc_FB072E: If (CLng(Shift) = &H1B) Then
  loc_FB0731:   Call Proc_281_54_EF882C()
  loc_FB0736:   Exit Sub
  loc_FB0737: End If
  loc_FB0745: If (KeyCode = CInt(0)) Then
  loc_FB0760:   Set var_9C = Nothing
  loc_FB076B:   Set var_98 = Nothing
  loc_FB0799:   Proc_6_69_134A198(Me.DGMemName, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_FB0806:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FB080D:     Set var_98 = Me.DGMemName
  loc_FB082C:     Proc_6_138_106D6F8(var_98, global_60, KeyCode, Me.FGPoint, 1)
  loc_FB083A:   End If
  loc_FB083A: End If
  loc_FB0856: If (CBool(Me.DGMemName.Visible) = 0) Then
  loc_FB0877:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FB0880:     Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_FB0885:   End If
  loc_FB08A3:   If (((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(1))) Then
  loc_FB08AC:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_FB08B1:   End If
  loc_FB08B1:   Call Proc_281_54_EF882C(0)
  loc_FB08B6: End If
  loc_FB08B6: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F10420
  'Data Table: 537E24
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F10342: Proc_6_133_E7EF78(var_94)
  loc_F1034B: arg_10 = CInt(var_94)
  loc_F10354: var_96 = KeyAscii
  loc_F1035F: If (var_96 = CInt(0)) Then
  loc_F1037E:   If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_F10390:     var_A0 = "Name"
  loc_F103AB:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, var_A0)
  loc_F103BA:   End If
  loc_F103BA: End If
  loc_F103BA: Exit Sub
  loc_F103C3: Set var_9C = Err()
  loc_F103C9: Call 0.Method_arg_1C (var_AC, 0, var_96)
  loc_F103DA: If (var_AC <> 0) Then
  loc_F103E5:   Set var_9C = Err()
  loc_F103EB:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_F1040C:   MsgBox(CVar(var_A0), &H40, "Validation", var_EC, var_10C)
  loc_F1041F: End If
  loc_F1041F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'ED9760
  'Data Table: 537E24
  loc_ED96C2: If (KeyCode = CInt(0)) Then
  loc_ED96E1:   If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_ED96F5:     var_A4 = "Name"
  loc_ED9719:     Proc_6_68_129FB34(Me.DGMemName, Me.Txt, KeyCode, global_60)
  loc_ED974F:     Proc_6_138_106D6F8(Me.DGMemName, global_60, KeyCode, Me.FGPoint)
  loc_ED975D:   End If
  loc_ED975D: End If
  loc_ED975D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47934
  'Data Table: 537E24
  loc_E47912: Set var_88 = Me.Txt
  loc_E47918: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47926: Proc_6_73_E22704(var_8C)
  loc_E47932: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '129EE78
  'Data Table: 537E24
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As String
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_129E877: var_86 = Cancel
  loc_129E882: If (var_86 = CInt(0)) Then
  loc_129E8D3:   Set var_94 = Me.Txt
  loc_129E8D9:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_129E8E1:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_129E8F9:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_129E909:     Set var_94 = Me.Txt
  loc_129E90F:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_129E917:     var_98.Text = vbNullString
  loc_129E930:     Set var_94 = Me.Txt
  loc_129E936:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_129E93E:     var_98.Tag = vbNullString
  loc_129E958:     Set var_94 = Me.Txt
  loc_129E95E:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_129E966:     var_98.Text = vbNullString
  loc_129E980:     Set var_94 = Me.Txt
  loc_129E986:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_129E98E:     var_98.Tag = vbNullString
  loc_129E99D:   Else
  loc_129E9D8:     Set var_B0 = Me.Txt
  loc_129E9DE:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129E9E6:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_129EA37:     Set var_B0 = Me.Txt
  loc_129EA3D:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129EA45:     var_B4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_129EA97:     Set var_B0 = Me.Txt
  loc_129EA9D:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_129EAA5:     var_B4.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_129EAC1:     var_AC = "CompanyType"
  loc_129EAD8:     var_98 = Me.Fields.Item(var_AC)
  loc_129EAF7:     Set var_B0 = Me.Txt
  loc_129EAFD:     Call 0.Method_Txt_Validate0 (CInt(1), var_B4)
  loc_129EB05:     var_B4.Tag = CStr(var_98.Value)
  loc_129EB1B:   End If
  loc_129EB1E: Else
  loc_129EB26:   If (var_86 = CInt(1)) Then
  loc_129EB33:     Set var_94 = Me.Txt
  loc_129EB39:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_129EB48:     var_D4 = Trim(CVar(var_98))
  loc_129EB50:     var_9C = CStr(var_D4)
  loc_129EB5E:     Set var_B0 = Me.Txt
  loc_129EB64:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129EB6C:     var_B4.Text = var_9C
  loc_129EB9B:     If (Me.RecordCount > 0) Then
  loc_129EBA4:       Me.MoveFirst
  loc_129EBC7:       Set var_94 = Me.Txt
  loc_129EBCD:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, "CardNo='")
  loc_129EBD5:       0 = var_98.Text
  loc_129EBEE:       Me.Find 1 & var_9C & "'", var_AC, var_98
  loc_129EC2C:       If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_129EC48:         MsgBox("InValid Card no", &H40, var_D4, var_10C, var_12C)
  loc_129EC66:         Set var_94 = Me.Txt
  loc_129EC6C:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_129EC74:         var_98.Text = vbNullString
  loc_129EC8E:         Set var_94 = Me.Txt
  loc_129EC94:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_129EC9C:         var_98.Tag = vbNullString
  loc_129ECB5:         Set var_94 = Me.Txt
  loc_129ECBB:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_129ECC3:         var_98.Text = vbNullString
  loc_129ECDC:         Set var_94 = Me.Txt
  loc_129ECE2:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_129ECEA:         var_98.Tag = vbNullString
  loc_129ECF9:       Else
  loc_129ED35:         Set var_B0 = Me.Txt
  loc_129ED3B:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_129ED43:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_129ED95:         Set var_B0 = Me.Txt
  loc_129ED9B:         Call 0.Method_Txt_Validate0 (CInt(0), var_B4)
  loc_129EDA3:         var_B4.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_129EDF4:         Set var_B0 = Me.Txt
  loc_129EDFA:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129EE02:         var_B4.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_129EE53:         Set var_B0 = Me.Txt
  loc_129EE59:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_129EE61:         var_B4.Tag = CStr(Me.Fields.Item("CompanyType").Value)
  loc_129EE77:       End If
  loc_129EE77:     End If
  loc_129EE77:   End If
  loc_129EE77: End If
  loc_129EE77: Exit Sub
End Sub

Private Sub CmdBill_UnknownEvent_9 'DFB374
  'Data Table: 537E24
  loc_DFB370: Exit Sub
End Sub

Private Sub cmdFillDtl_UnknownEvent_9 'ED9A44
  'Data Table: 537E24
  Dim var_88 As Frame
  Dim var_8C As TextBox
  loc_ED999B: Set var_88 = Me.Txt
  loc_ED99A1: Call 0.Method_cmdFillDtl_UnknownEvent_90 (CInt(0))
  loc_ED99CA: If (Proc_6_27_EA565C(var_8C, "Member Name") = 0) Then
  loc_ED99D4:   Call Txt_GotFocus(CInt(0))
  loc_ED99D9:   Exit Sub
  loc_ED99DA: End If
  loc_ED99E6: Me.FrBill.Enabled = True
  loc_ED99EE: Call Proc_281_55_16CF518(var_8C)
  loc_ED9A00: Set var_88 = Me.Txt
  loc_ED9A06: Call 0.Method_cmdFillDtl_UnknownEvent_90 (CInt(1), var_8C)
  loc_ED9A0E: var_8C.Enabled = False
  loc_ED9A27: Set var_88 = Me.Txt
  loc_ED9A2D: Call 0.Method_cmdFillDtl_UnknownEvent_90 (CInt(0), var_8C)
  loc_ED9A35: var_8C.Enabled = False
  loc_ED9A41: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5E534
  'Data Table: 537E24
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5E4FF: Me.Fgrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5E512: Set var_A8 = Me.TxtGrid
  loc_E5E518: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5E520: var_AC.Visible = False
  loc_E5E52C: Call Proc_281_54_EF882C()
  loc_E5E531: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E683B8
  'Data Table: 537E24
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68374: Set var_88 = Me.TxtGrid
  loc_E6837A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68394: If (var_8C.Visible = 0) Then
  loc_E683AD:   Me.Fgrid.BackColorSel = CVar(CLng(global_52))
  loc_E683B5: End If
  loc_E683B5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E48B7C
  'Data Table: 537E24
  loc_E48B54: Set var_88 = Me.TopCtrl1
  loc_E48B5A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_E48B73: If (CStr() <> "Browse") Then
  loc_E48B76:   Call Proc_281_52_E44500()
  loc_E48B7B: End If
  loc_E48B7B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '100D72C
  'Data Table: 537E24
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_DC As Long
  loc_100D520: Set var_88 = Me.TopCtrl1
  loc_100D526: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_100D56B: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_100D574:   Call Form_KeyDown(Cancel, arg_10)
  loc_100D579: End If
  loc_100D57D: Set var_88 = Me.TopCtrl1
  loc_100D583: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_100D59C: If (CStr() = "Browse") Then
  loc_100D59F:   Exit Sub
  loc_100D5A0: End If
  loc_100D614: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.Fgrid.Tag))) = CDbl((CLng(Me.Fgrid.Rows) - (CLng(Me.Fgrid.Rows) - 1))))) Then
  loc_100D61F:   var_9C = "+{Tab}"
  loc_100D625:   Proc_303_0_FB9B68(CStr(Me.Fgrid.Tag), 0)
  loc_100D62F:   Cancel = 0
  loc_100D635: Else
  loc_100D68C:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.Fgrid.Tag))) = CDbl((CLng(Me.Fgrid.Rows) - 1)))) Then
  loc_100D691:     Cancel = 0
  loc_100D694:   End If
  loc_100D694: End If
  loc_100D69A: global_74 = Cancel
  loc_100D6C0: Me.Fgrid.Tag = CVar(CStr(CLng(Me.Fgrid.Row)))
  loc_100D6E4: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_100D6FA:   var_DC = CLng(Me.Fgrid.Col)
  loc_100D703: End If
  loc_100D70D: If (CLng(Cancel) = &HD) Then
  loc_100D719:   Call FGrid_UnknownEvent_C()
  loc_100D723:   global_72 = 0
  loc_100D726: End If
  loc_100D728: Cancel = 0
  loc_100D72B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E57014
  'Data Table: 537E24
  loc_E56FE0: Set var_88 = Me.TopCtrl1
  loc_E56FE6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_E56FFF: If (CStr() = "Browse") Then
  loc_E57002:   Exit Sub
  loc_E57003: End If
  loc_E5700C: Call FGrid_UnknownEvent_C()
  loc_E57011: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11C000C
  'Data Table: 537E24
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_CE As Integer
  Dim var_C8 As TextBox
  loc_11BFBBC: Set var_88 = Me.TopCtrl1
  loc_11BFBC2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_11BFBDB: If (CStr() = "Browse") Then
  loc_11BFBDE:   Exit Sub
  loc_11BFBDF: End If
  loc_11BFBF2: var_A0 = CLng(Me.Fgrid.Col)
  loc_11BFC02: If (var_A0 = CLng(1)) Then
  loc_11BFC13:   Set var_88 = Me.TxtGrid
  loc_11BFC19:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFC21:   var_A4.MaxLength = &H23
  loc_11BFC30: Else
  loc_11BFC37:   If (var_A0 = CLng(2)) Then
  loc_11BFC48:     Set var_88 = Me.TxtGrid
  loc_11BFC4E:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFC56:     var_A4.MaxLength = 9
  loc_11BFC65:   Else
  loc_11BFC6C:     If (var_A0 = CLng(5)) Then
  loc_11BFC7D:       Set var_88 = Me.TxtGrid
  loc_11BFC83:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFC8B:       var_A4.MaxLength = &HB
  loc_11BFC9A:     Else
  loc_11BFCA1:       If (var_A0 = CLng(3)) Then
  loc_11BFCB2:         Set var_88 = Me.TxtGrid
  loc_11BFCB8:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFCC0:         var_A4.MaxLength = &HB
  loc_11BFCCF:       Else
  loc_11BFCD6:         If (var_A0 = CLng(4)) Then
  loc_11BFCE7:           Set var_88 = Me.TxtGrid
  loc_11BFCED:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFCF5:           var_A4.MaxLength = 3
  loc_11BFD01:         End If
  loc_11BFD01:       End If
  loc_11BFD01:     End If
  loc_11BFD01:   End If
  loc_11BFD01: End If
  loc_11BFD14: var_A8 = CLng(Me.Fgrid.Col)
  loc_11BFD24: If Not (var_A8 = CLng(1)) Then
  loc_11BFD2E:   If Not (var_A8 = CLng(3)) Then
  loc_11BFD38:     If (var_A8 = CLng(5)) Then
  loc_11BFD3B:     End If
  loc_11BFD3B:   End If
  loc_11BFD3F:   Set var_C8 = Me.Fgrid
  loc_11BFD63:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11BFD90:   Set var_A4 = var_C8
  loc_11BFDA2:   Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, 0)
  loc_11BFDCA:   Set var_88 = Me.TxtGrid
  loc_11BFDD0:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_11BFDD8:   0 = var_A4.Text
  loc_11BFDF1:   If (Len(var_9C) <= 1) Then
  loc_11BFE00:     Set var_88 = Me.TxtGrid
  loc_11BFE06:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11BFE0E:     var_CE = var_A4.Text
  loc_11BFE1F:     Set var_BC = Me.TxtGrid
  loc_11BFE25:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8, var_9C)
  loc_11BFE2D:     var_C8.Text = var_A8
  loc_11BFE40:   End If
  loc_11BFE4C:   Set var_88 = Me.TxtGrid
  loc_11BFE52:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFE6C:   Set var_BC = Me.TxtGrid
  loc_11BFE72:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11BFE7A:   var_C8.SelStart = Len(var_A4.Text)
  loc_11BFE90: Else
  loc_11BFE97:   If Not (var_A8 = CLng(2)) Then
  loc_11BFEA1:     If (var_A8 = CLng(4)) Then
  loc_11BFEA4:     End If
  loc_11BFEA8:     Set var_C8 = Me.Fgrid
  loc_11BFECC:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11BFEF9:     Set var_A4 = var_C8
  loc_11BFF0B:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 0, &HFF)
  loc_11BFF33:     Set var_88 = Me.TxtGrid
  loc_11BFF39:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C, Asc(var_9C))
  loc_11BFF41:     0 = var_A4.Text
  loc_11BFF5A:     If (Len(var_9C) <= 1) Then
  loc_11BFF69:       Set var_88 = Me.TxtGrid
  loc_11BFF6F:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_9C)
  loc_11BFF77:       var_CE = var_A4.Text
  loc_11BFF88:       Set var_BC = Me.TxtGrid
  loc_11BFF8E:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11BFF96:       var_C8.Text = var_9C
  loc_11BFFA9:     End If
  loc_11BFFB5:     Set var_88 = Me.TxtGrid
  loc_11BFFBB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_11BFFD5:     Set var_BC = Me.TxtGrid
  loc_11BFFDB:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_11BFFE3:     var_C8.SelStart = Len(var_A4.Text)
  loc_11BFFF6:   End If
  loc_11BFFF6: End If
  loc_11C0000: If (CLng(Cancel) <> &HD) Then
  loc_11C0008:   global_72 = &HFF
  loc_11C000B: End If
  loc_11C000B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE92E4
  'Data Table: 537E24
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE9110: Set var_88 = Me.TopCtrl1
  loc_FE9116: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_FE912F: If (CStr() = "Browse") Then
  loc_FE9132:   Exit Sub
  loc_FE9133: End If
  loc_FE9150: If (CLng(Me.Fgrid.ColSel) = CLng(0)) Then
  loc_FE9153:   Exit Sub
  loc_FE9154: End If
  loc_FE9165: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE9187:   If (CLng(Me.Fgrid.Row) >= 1) Then
  loc_FE91C1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE91E3:       If (CLng(Me.Fgrid.Rows) > 2) Then
  loc_FE91F9:         var_AC = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_FE9202:         Set var_110 = Me.Fgrid
  loc_FE921D:       Else
  loc_FE9230:         Me.Fgrid.Rows = 1
  loc_FE9256:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.Fgrid, CInt(0)))) 'String
  loc_FE925E:         Set var_110 = Me.Fgrid
  loc_FE928B:         Me.Fgrid.FixedRows = 1
  loc_FE9293:       End If
  loc_FE9293:       Call Proc_281_42_15331B0(Fgrid.DispID_10000, var_98)
  loc_FE9298:     End If
  loc_FE929B:   Else
  loc_FE92BC:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE92CC:   End If
  loc_FE92D0:   Set var_88 = Me.Fgrid
  loc_FE92E1: End If
  loc_FE92E1: Exit Sub
  loc_FE92E2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44D9C
  'Data Table: 537E24
  Dim var_8C As TextBox
  loc_E44D70: Call Proc_281_54_EF882C()
  loc_E44D80: Set var_88 = Me.TxtGrid
  loc_E44D86: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44D8E: var_8C.Visible = False
  loc_E44D9A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E59ED0
  'Data Table: 537E24
  loc_E59E90: On Error Goto loc_E59EC7
  loc_E59EB6: Call Proc_281_49_F125CC(Proc_5_1_100CB50("ADD", Me))
  loc_E59EC1: Call Proc_281_45_1427940(global_56)
  loc_E59EC6: Exit Sub
  loc_E59EC7: ' Referenced from: E59E90
  loc_E59EC7: Proc_6_60_E62BC4()
  loc_E59ECC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBBB88
  'Data Table: 537E24
  loc_EBBAF4: On Error Goto loc_EBBB7F
  loc_EBBB2E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBBB3D:   Set var_10C = Me
  loc_EBBB54:   Call Proc_281_49_F125CC(Proc_5_1_100CB50("INI", var_10C))
  loc_EBBB5F:   Call Proc_281_44_1695034(global_56)
  loc_EBBB67: Else
  loc_EBBB6D:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBBB75:   Call var_10C.SetFocus
  loc_EBBB7E: End If
  loc_EBBB7E: Exit Sub
  loc_EBBB7F: ' Referenced from: EBBAF4
  loc_EBBB7F: Proc_6_60_E62BC4()
  loc_EBBB84: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '115C0F4
  'Data Table: 537E24
  Dim var_96 As Integer
  Dim unk_537E3E As Connection15
  Dim Me As Recordset15
  Dim var_120 As Fields15
  Dim var_F8 As Variant
  Dim var_128 As String
  loc_115BD48: On Error Goto loc_115C09A
  loc_115BD59: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_115BD5C:   Exit Sub
  loc_115BD5D: End If
  loc_115BD94: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_115BD99:   var_96 = 0
  loc_115BDA5:   unk_537E3E.BeginTrans var_11C
  loc_115BDAC:   var_96 = &HFF
  loc_115BDC0:   var_94 = Me.Bookmark 'Variant
  loc_115BE1A:   unk_537E3E.Execute CStr("Delete From Ledger Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115BE8C:   unk_537E3E.Execute CStr("Delete From MemBill Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115BEFE:   unk_537E3E.Execute CStr("Delete From MemBill1 Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115BF70:   unk_537E3E.Execute CStr("Delete From MemBill2 Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_115BFD4:   var_F8 = "Delete From MemSunTran Where DocId='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_115BFD8:   var_128 = CStr(var_F8)
  loc_115BFE2:   unk_537E3E.Execute var_128, var_118, -1
  loc_115C004:   unk_537E3E.CommitTrans
  loc_115C00B:   var_96 = 0
  loc_115C019:   Me.Requery -1
  loc_115C039:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_115C046:     Me.Bookmark = var_94
  loc_115C04E:   Else
  loc_115C062:     If (Me.EOF = 0) Then
  loc_115C06B:       Me.MoveLast
  loc_115C070:     End If
  loc_115C070:   End If
  loc_115C070:   Call Proc_281_44_1695034(var_96, var_12C, var_12C, var_12C)
  loc_115C091:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_115C099: End If
  loc_115C099: Exit Sub
  loc_115C09A: ' Referenced from: 115BD48
  loc_115C0A0: If (var_96 = &HFF) Then
  loc_115C0A9:   unk_537E3E.RollbackTrans
  loc_115C0AE: End If
  loc_115C0B6: Set var_120 = Err()
  loc_115C0BC: Call 0.Method_arg_2C (var_128, var_12C, var_12C)
  loc_115C0DD: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_115C0F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F24B9C
  'Data Table: 537E24
  Dim var_94 As TextBox
  loc_F24AA0: On Error Goto loc_F24B59
  loc_F24AB1: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_F24AB4:   Exit Sub
  loc_F24AB5: End If
  loc_F24ACA: var_88 = "EDIT"
  loc_F24AD8: Call Proc_281_49_F125CC(Proc_5_1_100CB50(var_88, Me))
  loc_F24AF0: Set var_8C = Me.Txt
  loc_F24AF6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H20), var_94)
  loc_F24AFE: var_94.Enabled = False
  loc_F24B17: Set var_8C = Me.Txt
  loc_F24B1D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H22), var_94)
  loc_F24B25: var_94.Enabled = False
  loc_F24B3E: Set var_8C = Me.Txt
  loc_F24B44: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H21), var_94)
  loc_F24B4C: var_94.Enabled = False
  loc_F24B58: Exit Sub
  loc_F24B59: ' Referenced from: F24AA0
  loc_F24B61: Set var_8C = Err()
  loc_F24B67: Call 0.Method_arg_2C (var_88)
  loc_F24B88: MsgBox(CVar(var_88), &H30, " Editing Error ", var_E4, var_104)
  loc_F24B9B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E189DC
  'Data Table: 537E24
  loc_E189D1: Me.Global.Unload Me
  loc_E189D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F5FF30
  'Data Table: 537E24
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_110 As TextBox
  Dim var_118 As String
  Dim MemVar_1F920E4 As String
  loc_F5FE2C: On Error Goto loc_F5FF29
  loc_F5FE46: If (Me.RecordCount <= 0) Then
  loc_F5FE4F:   var_B8 = "Information"
  loc_F5FE6A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F5FE7A:   Exit Sub
  loc_F5FE7B: End If
  loc_F5FE8C: Set var_10C = Me.Txt
  loc_F5FE92: Call 0.Method_TopCtrl1_UnknownEvent_F0 (CInt(0), var_110)
  loc_F5FEA3: var_118 = "Select DocId As SearchCode, Vno As BillNo, convert(Varchar(11),VDate,106) As BillDate,NetAmount From MemBill Where Memcode='" & var_110.Tag
  loc_F5FED7: MemVar_1F920E4 = var_118 & "' And VPrefix=" & MemVar_1F9212C & " And VType='" & global_80 & "' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By DocId"
  loc_F5FEFB: MemVar_1F92120 = Me
  loc_F5FF08: Proc_6_126_F1BCC0("700,1500,1500")
  loc_F5FF23: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5FF28: Exit Sub
  loc_F5FF29: ' Referenced from: F5FE2C
  loc_F5FF29: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F5FF2E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2ED58
  'Data Table: 537E24
  loc_E2ED48: Proc_5_0_110649C(&HFF, Me)
  loc_E2ED50: Call Proc_281_44_1695034(global_56)
  loc_E2ED55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2EFF8
  'Data Table: 537E24
  loc_E2EFE8: Proc_5_0_110649C(&HFF, Me)
  loc_E2EFF0: Call Proc_281_44_1695034(global_56)
  loc_E2EFF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2E6F8
  'Data Table: 537E24
  loc_E2E6E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2E6F0: Call Proc_281_44_1695034(global_56)
  loc_E2E6F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2E638
  'Data Table: 537E24
  loc_E2E628: Proc_5_0_110649C(&HFF, Me)
  loc_E2E630: Call Proc_281_44_1695034(global_56)
  loc_E2E635: Exit Sub
  loc_E2E636: Set var_5400 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E7E574
  'Data Table: 537E24
  Dim Me As Recordset15
  loc_E7E518: On Error Goto loc_E7E56D
  loc_E7E51E: var_B4 = "N"
  loc_E7E556: Proc_272_4_1852BF0(CStr(Me.Fields.Item("SearchCode").Value))
  loc_E7E56C: Exit Sub
  loc_E7E56D: ' Referenced from: E7E518
  loc_E7E56D: Proc_6_60_E62BC4(var_B4)
  loc_E7E572: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B0FC
  'Data Table: 537E24
  Dim Me As Recordset15
  loc_E0B0F3: Me.Requery -1
  loc_E0B0F8: Exit Sub
  loc_E0B0F9: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '169E534
  'Data Table: 537E24
  Dim unk_537E3E As Connection15
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_DC As Variant
  Dim var_128 As TextBox
  Dim var_170 As Label
  Dim var_1BC As Variant
  Dim var_208 As Variant
  Dim var_254 As Variant
  Dim var_2A0 As Variant
  Dim var_2F0 As Variant
  Dim var_614 As Double
  Dim var_38C As Variant
  Dim var_36C As Variant
  Dim var_35C As Variant
  Dim var_42C As Variant
  Dim var_554 As TextBox
  Dim var_61C As Double
  Dim var_5A0 As TextBox
  Dim var_624 As Double
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_CC As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1E0 As Variant
  Dim var_24C As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_2C4 As Variant
  Dim var_304 As Variant
  Dim var_314 As Variant
  Dim var_3BC As Variant
  Dim var_3CC As Variant
  Dim var_40C As Variant
  Dim var_44C As Variant
  Dim var_45C As Variant
  Dim var_47C As Variant
  Dim var_48C As Variant
  Dim var_49C As Variant
  Dim var_4CC As Variant
  Dim var_4DC As Variant
  Dim var_524 As Variant
  Dim var_534 As Variant
  Dim var_544 As Variant
  Dim var_568 As Variant
  Dim var_588 As Variant
  Dim var_5C4 As Variant
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_A8 As Variant
  Dim var_124 As Variant
  Dim var_1B8 As MSHFlexGrid
  Dim var_204 As MSHFlexGrid
  Dim var_5F8 As Variant
  Dim var_648 As Variant
  Dim var_250 As MSHFlexGrid
  Dim var_678 As Variant
  Dim var_698 As Variant
  Dim var_6D8 As Variant
  Dim var_6F8 As Variant
  Dim var_29C As MSHFlexGrid
  Dim var_558 As String
  Dim var_738 As Variant
  Dim var_758 As Variant
  Dim var_2E8 As MSHFlexGrid
  Dim var_43C As Variant
  Dim var_5A4 As String
  Dim var_2EC As MSHFlexGrid
  Dim var_938 As Variant
  Dim var_4F0 As MSHFlexGrid
  Dim var_4F4 As MSHFlexGrid
  Dim var_1C0 As String
  Dim var_348 As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_514 As Variant
  Dim var_908 As Variant
  Dim var_B38 As Variant
  Dim var_E0 As Variant
  Dim var_258 As String
  Dim var_B78 As Double
  Dim var_AC As String
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_169CDD8: On Error Goto loc_169E4E1
  loc_169CDDF: var_86 = CByte(0) 'Byte
  loc_169CDEE: Set var_A0 = Me.Txt
  loc_169CDF4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_9C))
  loc_169CDFC: var_AC = "Member Name"
  loc_169CE05: Set var_A8 = var_A4
  loc_169CE1D: If (Proc_6_27_EA565C(var_A8, var_AC) = 0) Then
  loc_169CE20:   Exit Sub
  loc_169CE21: End If
  loc_169CE24: Call Proc_281_58_137AA14(var_AE)
  loc_169CE2F: If (var_AE = 0) Then
  loc_169CE32:   Exit Sub
  loc_169CE33: End If
  loc_169CE3C: unk_537E3E.BeginTrans var_B4
  loc_169CE45: var_86 = CByte(1) 'Byte
  loc_169CE67: Set var_A0 = Me.Txt
  loc_169CE6D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From Ledger Where DocId='")
  loc_169CE75: var_DC = var_A4.Text
  loc_169CE7E: var_B8 = -1 & var_AC
  loc_169CE8E: unk_537E3E.Execute var_B8 & "'", var_A8, var_A4
  loc_169CEC6: Set var_A0 = Me.Txt
  loc_169CECC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From MemBill Where DocId='")
  loc_169CED4: var_DC = var_A4.Text
  loc_169CEDD: var_B8 = -1 & var_AC
  loc_169CEED: unk_537E3E.Execute var_B8 & "'", var_A8, 
  loc_169CF25: Set var_A0 = Me.Txt
  loc_169CF2B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From MemBill1 Where DocId='")
  loc_169CF33: var_DC = var_A4.Text
  loc_169CF3C: var_B8 = -1 & var_AC
  loc_169CF4C: unk_537E3E.Execute var_B8 & "'", var_A8, 
  loc_169CF84: Set var_A0 = Me.Txt
  loc_169CF8A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From MemBill2 Where DocId='")
  loc_169CF92: var_DC = var_A4.Text
  loc_169CF9B: var_B8 = -1 & var_AC
  loc_169CFAB: unk_537E3E.Execute var_B8 & "'", var_A8, 
  loc_169CFE3: Set var_A0 = Me.Txt
  loc_169CFE9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, "Delete From MemSunTran Where DocId='")
  loc_169CFF1: var_DC = var_A4.Text
  loc_169CFFA: var_B8 = -1 & var_AC
  loc_169D00A: unk_537E3E.Execute var_B8 & "'", var_A8, 
  loc_169D032: Set var_A0 = Me.Txt
  loc_169D038: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4)
  loc_169D040: var_AC = var_A4.Text
  loc_169D050: Set var_A8 = Me.Txt
  loc_169D056: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22))
  loc_169D065: Proc_6_7_F25D88(var_F0, CVar(var_E0))
  loc_169D078: Set var_124 = Me.Txt
  loc_169D07E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_128)
  loc_169D092: Set var_170 = Me.LblVPrefix
  loc_169D0AB: Set var_1B8 = Me.Txt
  loc_169D0B1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_1BC)
  loc_169D0CC: Set var_204 = Me.Txt
  loc_169D0D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_208)
  loc_169D0ED: Set var_250 = Me.Txt
  loc_169D0F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_254)
  loc_169D0FB: var_258 = var_254.Tag
  loc_169D10E: Set var_29C = Me.Txt
  loc_169D114: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2A0)
  loc_169D128: Set var_2E8 = Me.TxtGt
  loc_169D12E: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_AE)
  loc_169D140: Set var_2EC = Me.TxtGt
  loc_169D146: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_AE, var_2F0)
  loc_169D15B: var_614 = Val(var_2F0.Text)
  loc_169D162: Set var_338 = Me.TopCtrl1
  loc_169D168: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_614)
  loc_169D1A4: var_42C = CVar(Proc_6_15_EF2C1C(var_E0)) 'String
  loc_169D1AA: Proc_6_7_F25D88(var_43C)
  loc_169D1BA: Set var_4F0 = Me.Txt
  loc_169D1C0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_4F4)
  loc_169D1CF: Proc_6_7_F25D88(var_514, CVar(var_4F4))
  loc_169D1DB: Set var_548 = Me.TxtGt
  loc_169D1E1: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_54A)
  loc_169D1F6: Set var_550 = Me.TxtGt
  loc_169D1FC: Call 0.Method_TopCtrl1_UnknownEvent_160 ((var_54A - 1), var_554)
  loc_169D211: var_61C = Val(var_554.Text)
  loc_169D220: Set var_59C = Me.TxtGt
  loc_169D226: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_5A0, var_5A4)
  loc_169D252: var_B8 = "Insert Into MemBill (DocId,vDate,Vno,Vprefix,VType,MemCode,MemCatCode,CardNo,NetAmount,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,BillDate,RoundOff,Amount) " & " Values ('"
  loc_169D29F: var_1E0 = CVar(var_B8 & var_AC & "',") & var_F0 & "," & CVar(var_128.Text) & ",'" & CVar(var_170.Caption) & "','" & CVar(var_1BC.Text) 
  loc_169D2FC: var_3BC = var_1E0 & "','" & CVar(var_208.Tag) & "','" & CVar(var_258) & "','" & CVar(var_2A0.Text) & "'," & CVar(var_614) & ",'" & IIf((CStr(var_348) = "Add"), "A", "E") 
  loc_169D355: var_524 = var_3BC & "','" & CVar(MemVar_1F920C8) & "'," & var_43C & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "'," & var_514 
  loc_169D37D: var_5C4 = var_524 & "," & CVar(var_5A0.Text) & "," & CVar(Val(var_5A4)) 
  loc_169D394: unk_537E3E.Execute CStr(var_5C4 & ")"), var_608, -1
  loc_169D46F: For var_628 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_88 = var_628 'Integer
  loc_169D4A1:   var_100 = Trim(CVar(CStr(Me.Fgrid.TextMatrix))))
  loc_169D4BD:   If CBool(var_100 <> vbNullString) Then
  loc_169D4CE:     Set var_A0 = Me.Txt
  loc_169D4D4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC, CVar(CLng(&HA)), CVar(CLng(var_88)))
  loc_169D4DC:     1 = var_A4.Text
  loc_169D4E5:     var_CC = CVar(CLng(var_88)) 'Long
  loc_169D4F6:     Set var_A8 = Me.Fgrid
  loc_169D50F:     var_614 = Val(CStr(var_A8.TextMatrix)))
  loc_169D520:     Set var_E0 = Me.Txt
  loc_169D526:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_124, var_258, var_614, CVar(CLng(0)))
  loc_169D52E:     var_CC = var_124.Text
  loc_169D53E:     Set var_128 = Me.Txt
  loc_169D544:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_170, var_60C)
  loc_169D553:     Proc_6_7_F25D88(var_100, CVar(var_170))
  loc_169D55C:     var_288 = CVar(CLng(var_88)) 'Long
  loc_169D564:     var_304 = CVar(CLng(8)) 'Long
  loc_169D56D:     Set var_1B8 = Me.Fgrid
  loc_169D583:     var_36C = CVar(CLng(var_88)) 'Long
  loc_169D58B:     var_3CC = CVar(CLng(9)) 'Long
  loc_169D5AA:     var_45C = CVar(CLng(var_88)) 'Long
  loc_169D5B2:     var_49C = CVar(CLng(&HA)) 'Long
  loc_169D5D1:     var_534 = CVar(CLng(var_88)) 'Long
  loc_169D5D9:     var_588 = CVar(CLng(&HB)) 'Long
  loc_169D5F8:     var_5F8 = CVar(CLng(var_88)) 'Long
  loc_169D600:     var_648 = CVar(CLng(&HC)) 'Long
  loc_169D61F:     var_678 = CVar(CLng(var_88)) 'Long
  loc_169D627:     var_698 = CVar(CLng(2)) 'Long
  loc_169D650:     var_6D8 = CVar(CLng(var_88)) 'Long
  loc_169D658:     var_6F8 = CVar(CLng(&HD)) 'Long
  loc_169D672:     var_558 = CStr(Me.Fgrid.TextMatrix))
  loc_169D681:     var_738 = CVar(CLng(var_88)) 'Long
  loc_169D689:     var_758 = CVar(CLng(9)) 'Long
  loc_169D6BF:     var_42C = Me.Fgrid.TextMatrix)
  loc_169D710:     var_4CC = Me.Fgrid.TextMatrix)
  loc_169D737:     var_524 = Me.Fgrid.TextMatrix)
  loc_169D747:     Set var_338 = Me.TopCtrl1
  loc_169D74D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_524)
  loc_169D789:     var_938 = CVar(Proc_6_15_EF2C1C(CVar(CLng(&HF)), CVar(CLng(var_88)), var_4CC, CVar(CLng(&HE)), CVar(CLng(var_88)), var_42C)) 'String
  loc_169D78F:     Proc_6_7_F25D88(var_948, var_938, CVar(CLng(&H10)), CVar(CLng(var_88)))
  loc_169D7C0:     Proc_6_7_F25D88(var_A68, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_88)))
  loc_169D7F1:     Proc_6_7_F25D88(var_B08, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_88)))
  loc_169D80A:     var_B8 = "Insert Into MemBill1 (DocId,Sno,Vno,vDate,VType,Type,FacilityCode,TaxStru,AcCode,BaseAmt,TaxAmt,OutletCode,AcPosting,AcPostingYN,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,FrPeriod,ToPeriod) " & " Values ('"
  loc_169D839:     var_110 = CVar(var_B8 & var_AC & "'," & CStr(var_614) & "," & var_258 & ",") 'String
  loc_169D87B:     var_24C = var_110 & var_100 & ",'" & CVar(CStr(var_1B8.TextMatrix))) & "','" & CVar(CStr(Me.Fgrid.TextMatrix))) & "','" & CVar(CStr(Me.Fgrid.TextMatrix))) 
  loc_169D8B7:     var_39C = var_24C & "','" & CVar(CStr(Me.Fgrid.TextMatrix))) & "','" & CVar(CStr(Me.Fgrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.Fgrid.TextMatrix)))) 
  loc_169D8C0:     var_3AC = var_39C & "," 
  loc_169D8DB:     var_48C = var_3AC & CVar(Val(var_558)) & ",'" & IIf((CStr(Me.Fgrid.TextMatrix)) = "Outlet"), CVar(CStr(var_42C)), vbNullString) 
  loc_169D900:     var_544 = CVar(CStr(var_524)) 'String
  loc_169D926:     var_908 = var_48C & "','" & CVar(CStr(var_4CC)) & "','" & var_544 & "','" & IIf((CStr(var_5C4) = "Add"), "A", "E") & "','" & CVar(MemVar_1F920C8) 
  loc_169D985:     var_B38 = var_908 & "'," & var_948 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "'," & var_A68 & "," & var_B08 & ")" 
  loc_169D993:     unk_537E3E.Execute CStr(var_B38), var_B5C, -1
  loc_169DA81:   End If
  loc_169DA84: Next var_628 'Integer
  loc_169DAAE: For var_B60 = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_B60 'Integer
  loc_169DAB8:   var_CC = CVar(CLng(var_88)) 'Long
  loc_169DAC0:   var_1A4 = CVar(CLng(2)) 'Long
  loc_169DAFC:   If CBool(Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) Then
  loc_169DB0D:     Set var_A0 = Me.Txt
  loc_169DB13:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4, var_AC)
  loc_169DB1B:     var_1A4 = var_A4.Text
  loc_169DB4E:     var_614 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_169DB66:     Set var_E0 = Me.FGCat
  loc_169DB6C:     var_F0 = var_E0.TextMatrix)
  loc_169DB7F:     var_61C = Val(CStr(var_F0))
  loc_169DB90:     Set var_124 = Me.Txt
  loc_169DB96:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_128, var_558, var_61C, CVar(CLng(1)), CVar(CLng(var_88)))
  loc_169DBAE:     Set var_170 = Me.Txt
  loc_169DBB4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_1B8, CVar(CLng(0)))
  loc_169DBC3:     Proc_6_7_F25D88(var_110, CVar(var_1B8), CVar(CLng(var_88)))
  loc_169DBCC:     var_35C = CVar(CLng(var_88)) 'Long
  loc_169DBD4:     var_38C = CVar(CLng(4)) 'Long
  loc_169DBDD:     Set var_1BC = Me.FGCat
  loc_169DBF3:     var_40C = CVar(CLng(var_88)) 'Long
  loc_169DBFB:     var_47C = CVar(CLng(5)) 'Long
  loc_169DC1A:     var_4DC = CVar(CLng(var_88)) 'Long
  loc_169DC22:     var_568 = CVar(CLng(6)) 'Long
  loc_169DC2B:     Set var_208 = Me.FGCat
  loc_169DC58:     var_298 = Me.FGCat.TextMatrix)
  loc_169DC6B:     var_624 = Val(CStr(var_298))
  loc_169DC83:     Set var_254 = Me.FGCat
  loc_169DC9C:     var_B78 = Val(CStr(var_254.TextMatrix)))
  loc_169DCCD:     var_B80 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_169DCD4:     Set var_2A0 = Me.TopCtrl1
  loc_169DCDA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_B80)
  loc_169DD1C:     Proc_6_7_F25D88(var_48C, CVar(Proc_6_15_EF2C1C(CVar(CLng(&HA)), CVar(CLng(var_88)), var_B78, CVar(CLng(9)), CVar(CLng(var_88)), var_624)), CVar(CLng(8)), CVar(CLng(var_88)))
  loc_169DD35:     var_B8 = "Insert Into MemBill2 (DocId,Sno,Sno1,Vno,vDate,VType,FacilityCode,TaxCode,BaseAmt,TaxPer,TaxAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_169DD91:     var_194 = CVar(var_B8 & var_AC & "'," & CStr(var_128.Text) & "," & CStr(var_61C) & "," & var_558 & ",") & var_110 & ",'" & CVar(CStr(var_1BC.TextMatrix))) 
  loc_169DDD6:     var_2C4 = var_194 & "','" & CVar(CStr(Me.FGCat.TextMatrix))) & "','" & CVar(CStr(var_208.TextMatrix))) & "'," & CVar(var_624) & "," 
  loc_169DE18:     var_43C = var_2C4 & CVar(var_B78) & "," & CVar(var_B80) & ",'" & IIf((CStr(var_3AC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F920C8) 
  loc_169DE21:     var_44C = var_43C & "'," 
  loc_169DE65:     unk_537E3E.Execute CStr(var_44C & var_48C & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_544, -1
  loc_169DF13:   End If
  loc_169DF16: Next var_B60 'Integer
  loc_169DF27: Set var_A0 = Me.LblCap
  loc_169DF2D: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_AE, var_88)
  loc_169DF38: For var_B84 =  To var_AE: 1 = var_B84 'Integer
  loc_169DF4C:   Set var_A0 = Me.Txt
  loc_169DF52:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4)
  loc_169DF6A:   Set var_A8 = Me.Txt
  loc_169DF70:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22))
  loc_169DF7F:   Proc_6_7_F25D88(var_F0, CVar(var_E0))
  loc_169DF92:   Set var_124 = Me.Txt
  loc_169DF98:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_128)
  loc_169DFAC:   Set var_170 = Me.LblVPrefix
  loc_169DFC5:   Set var_1B8 = Me.Txt
  loc_169DFCB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_1BC)
  loc_169DFE5:   Set var_204 = Me.LblCap
  loc_169DFEB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_88, var_208)
  loc_169E005:   Set var_250 = Me.TxtGt
  loc_169E00B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_88, var_254)
  loc_169E020:   var_614 = Val(var_254.Text)
  loc_169E027:   Set var_29C = Me.TopCtrl1
  loc_169E02D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_614)
  loc_169E069:   var_39C = CVar(Proc_6_15_EF2C1C(var_E0)) 'String
  loc_169E06F:   Proc_6_7_F25D88(var_3AC)
  loc_169E088:   var_B8 = "Insert Into MemSunTran (DocId,Sno,vDate,Vno,Vprefix,VType,SunCode,SunAmt,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('"
  loc_169E0A2:   var_1C0 = var_B8 & var_A4.Text & "'," & CStr(var_88)
  loc_169E0CB:   var_16C = CVar(var_1C0 & ",") & var_F0 & "," & CVar(var_128.Text) & ",'" 
  loc_169E11F:   var_314 = var_16C & CVar(var_170.Caption) & "','" & CVar(var_1BC.Text) & "','" & CVar(var_208.Tag) & "'," & CVar(var_614) & ",'" & IIf((CStr(var_298) = "Add"), "A", "E") 
  loc_169E171:   var_43C = var_314 & "','" & CVar(MemVar_1F920C8) & "'," & var_3AC & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_169E17F:   unk_537E3E.Execute CStr(var_43C), var_44C, -1
  loc_169E208: Next var_B84 'Integer
  loc_169E211: Set var_A0 = Me.TopCtrl1
  loc_169E217: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_169E230: If (CStr() = "Add") Then
  loc_169E247:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_169E26D:   var_100 = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_80 & "' And VP.Date_From<=") 'String
  loc_169E27E:   Set var_A0 = Me.Txt
  loc_169E284:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_A4, var_1C0, var_100)
  loc_169E28C:   var_13C = var_A4.Text
  loc_169E29A:   Proc_6_7_F25D88(var_F0, CVar(var_1C0))
  loc_169E2A2:   var_110 = -1 & var_F0 
  loc_169E2B9:   unk_537E3E.Execute CStr(CVar(var_1C0 & ",") & var_F0 & " Order By VP.Date_From DESC"), var_A8, 
  loc_169E2C4:   Set var_8C = var_A8
  loc_169E302:   If (var_8C.RecordCount > 0) Then
  loc_169E313:     Set var_A0 = Me.Txt
  loc_169E319:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_A4)
  loc_169E32E:     var_614 = Val(var_A4.Text)
  loc_169E35B:     var_1A4 = "Date_From"
  loc_169E37E:     Proc_6_7_F25D88(var_13C, CVar(var_8C.Fields.Item(var_1A4)))
  loc_169E3B1:     var_1C0 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_614) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_169E3C5:     var_100 = CVar(var_1C0 & MemVar_1F92078 & "') and V_Type='") & var_8C.Fields.Item("V_Type").Value 
  loc_169E3CE:     var_110 = var_100 & "' and Date_From=" 
  loc_169E3E3:     unk_537E3E.Execute CStr(var_110 & var_13C), var_16C, -1
  loc_169E41D:   End If
  loc_169E41D: End If
  loc_169E423: unk_537E3E.CommitTrans
  loc_169E42C: var_86 = CByte(0) 'Byte
  loc_169E430: Call Proc_281_53_1653088(var_170)
  loc_169E440: Set var_A0 = Me.Txt
  loc_169E446: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_A4)
  loc_169E464: Me.Requery -1
  loc_169E488: var_F0 = "SearchCode ='" & CVar(var_A4) & "'" 
  loc_169E496: Me.Find CStr(var_F0), 0, 1
  loc_169E4BA: var_AC = "INI"
  loc_169E4C8: Call Proc_281_49_F125CC(Proc_5_1_100CB50(var_AC, Me, global_56), var_1A4)
  loc_169E4D3: Call Proc_281_44_1695034(var_614)
  loc_169E4DD: Set var_8C = Nothing
  loc_169E4E0: Exit Sub
  loc_169E4E1: ' Referenced from: 169CDD8
  loc_169E4EA: If (CInt(var_86) = 1) Then
  loc_169E4F3:   unk_537E3E.RollbackTrans
  loc_169E4F8: End If
  loc_169E500: Set var_A0 = Err()
  loc_169E506: Call 0.Method_arg_2C (var_AC)
  loc_169E51F: MsgBox(CVar(var_AC), &H10, var_F0, var_100, var_110)
  loc_169E532: Exit Sub
End Sub

Private Sub Form_Load() '10101C8
  'Data Table: 537E24
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim unk_537E3E As Connection15
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim var_5301 As Double
  loc_100FFB8: On Error Goto loc_10101C0
  loc_100FFC1: global_80 = "MFBIL"
  loc_100FFCC: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_100FFE4: Me.Fgrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_100FFFA: Me.FrBill.BackColor = CLng(MemVar_1F921B0)
  loc_101000C: Set global_60 = New 
  loc_101001E: Me.Recordset15.CursorLocation = 3
  loc_1010041: var_AC = "SELECT SubCode,subgroup.Name,CardNo,CompanyType FROM SUBGROUP INNER JOIN MEMCATMAST ON SUBGROUP.COMPANYTYPE=MEMCATMAST.CODE WHERE ActiveYN=1 And IsNull(FBilling,'')<>'N' And (COMPANYTYPE IS NOT NULL AND COMPANYTYPE<>'') and (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078
  loc_1010048: var_BC = CVar(var_AC & "' or SUBGROUP.LOGSITE_CODE='HO') Order by subgroup.Name") 'String
  loc_1010052: Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_1010066: CVarUnk
  loc_101006B: VerifyVarObj
  loc_1010077: LateIdStAd
  loc_1010099: var_AC = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_10100A9: unk_537E3E.Execute var_AC & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_BC, -1
  loc_10100D8: CVarUnk
  loc_10100DD: VerifyVarObj
  loc_10100E3: Set var_A8 = Me.DGRev
  loc_10100E9: LateIdStAd
  loc_101010B: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8, Me.Txt, Me.DGMemName)
  loc_101012A: Me.DGMemName.Left = CVar(var_C8)
  loc_1010146: Set var_CC = Me.Txt
  loc_101014C: Call 0.Method_Form_Load0 (CInt(0), var_D0, var_D4, var_C4.Left)
  loc_1010154: global_60 = var_D0.Height
  loc_1010167: Set var_A8 = Me.Txt
  loc_101016D: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_C8)
  loc_1010175: 1 = var_C4.Top
  loc_1010185: var_94 = CVar(((var_C8 + var_D4) + CDbl(&H19))) 'Single
  loc_1010194: Me.DGMemName.Top = CVar(var_C8)
  loc_10101A6: Call Proc_281_51_125E810(-1)
  loc_10101B7: Me.FrBill.Enabled = False
  loc_10101BF: Exit Sub
  loc_10101C0: ' Referenced from: 100FFB8
  loc_10101C0: Proc_6_60_E62BC4()
  loc_10101C5: Exit Sub
  loc_10101C6: var_5301 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E14DAC
  'Data Table: 537E24
  loc_E14DA3: Set global_60 = Nothing
  loc_E14DAA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EB0F84
  'Data Table: 537E24
  loc_EB0EFC: On Error Goto loc_EB0F1C
  loc_EB0F13: Proc_6_88_FE81B4(Me, KeyCode)
  loc_EB0F1B: Exit Sub
  loc_EB0F1C: ' Referenced from: EB0EFC
  loc_EB0F24: Set var_88 = Err()
  loc_EB0F2A: Call 0.Method_arg_1C (var_8C, Shift)
  loc_EB0F3B: If (var_8C <> 0) Then
  loc_EB0F46:   Set var_88 = Err()
  loc_EB0F4C:   Call 0.Method_arg_2C (var_90)
  loc_EB0F6D:   MsgBox(CVar(var_90), &H40, "Validation", var_E0, var_100)
  loc_EB0F80: End If
  loc_EB0F80: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10AE20C
  'Data Table: 537E24
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_10ADF52: Set var_88 = Me.TxtGrid
  loc_10ADF58: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_10ADF66: Proc_6_74_E226B0(var_8C)
  loc_10ADF72: Call Proc_281_54_EF882C(var_8C)
  loc_10ADF83: If (Index = 0) Then
  loc_10ADF9C:   Me.Fgrid.CellBackColor = CVar(CLng(global_52))
  loc_10ADFB7:   var_A4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_10ADFF6:   Set var_108 = Me.TxtGrid
  loc_10ADFFC:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.Fgrid.TextMatrix)))
  loc_10AE004:   var_10C.Tag = CVar(CLng(Me.Fgrid.Col))
  loc_10AE035:   var_114 = CLng(Me.Fgrid.Col)
  loc_10AE045:   If (var_114 = CLng(1)) Then
  loc_10AE089:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10AE08C:       Exit Sub
  loc_10AE08D:     End If
  loc_10AE0B0:     Proc_6_137_1193554(Me.DGRev, global_64, Index, Me.FGPoint1)
  loc_10AE0D1:     var_A4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_10AE0D9:     var_E4 = CVar(CLng(1)) 'Long
  loc_10AE10C:     If (CStr(Me.Fgrid.TextMatrix)) <> vbNullString) Then
  loc_10AE115:       Me.MoveFirst
  loc_10AE12D:       var_A4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_10AE155:       Proc_6_17_EAA2B0(var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), var_A4, CVar(CLng(&HA)))
  loc_10AE17E:       Me.Find CStr("Code=" & var_12C), 0, 1
  loc_10AE1AE:       If (Me.EOF = &HFF) Then
  loc_10AE1B7:         Me.MoveFirst
  loc_10AE1BC:       End If
  loc_10AE1BC:     End If
  loc_10AE1BF:   Else
  loc_10AE1C6:     If Not (var_114 = CLng(2)) Then
  loc_10AE1D0:       If Not (var_114 = CLng(3)) Then
  loc_10AE1DA:         If Not (var_114 = CLng(5)) Then
  loc_10AE1E4:           If (var_114 = CLng(4)) Then
  loc_10AE1E7:           End If
  loc_10AE1E7:         End If
  loc_10AE1E7:       End If
  loc_10AE1F0:       If (global_72 = 0) Then
  loc_10AE1FB:         var_110 = "{Home}+{End}"
  loc_10AE201:         Proc_303_0_FB9B68(CStr("Code=" & var_12C), 0, var_15C, var_A4)
  loc_10AE209:       End If
  loc_10AE209:     End If
  loc_10AE209:   End If
  loc_10AE209: End If
  loc_10AE209: Exit Sub
  loc_10AE20A: var_114 = var_A4
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1265668
  'Data Table: 537E24
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C4 As Variant
  Dim var_98 As DataGrid
  Dim Me As Recordset15
  loc_12650E7: var_86 = Shift
  loc_12650F6: If (KeyCode = 0) Then
  loc_1265103:   If (CLng(Shift) = &H1B) Then
  loc_1265113:     Set var_8C = Me.TxtGrid
  loc_1265119:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1265121:     var_88 = var_90.Tag
  loc_1265133:     Set var_98 = Me.TxtGrid
  loc_1265139:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1265141:     var_9C.Text = var_94
  loc_1265158:     Set var_8C = Me.Fgrid
  loc_1265175:     Set var_8C = Me.TxtGrid
  loc_126517B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1265183:     var_90.Visible = Fgrid.DispID_8001
  loc_126518F:     Exit Sub
  loc_1265190:   End If
  loc_12651B3:   If (CLng(Me.Fgrid.Col) = CLng(1)) Then
  loc_12651C3:     Set var_8C = Me.TxtGrid
  loc_12651C9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_12651D1:     var_B0 = var_90.Left
  loc_12651E8:     Me.DGRev.Left = CVar(var_B4)
  loc_1265203:     Set var_98 = Me.TxtGrid
  loc_1265209:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1265223:     Set var_8C = Me.TxtGrid
  loc_1265229:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_126523D:     var_C4 = CVar((var_90.Top + var_9C.Height)) 'Single
  loc_126524C:     Me.DGRev.Top = CVar(var_90.Top)
  loc_126527B:     Set var_9C = Me.FGPoint1
  loc_1265286:     Set var_98 = Nothing
  loc_12652B4:     Proc_6_69_134A198(Me.DGRev, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_12652E1:     If (Me.RecordCount > 0) Then
  loc_12652E8:       Set var_98 = Me.DGRev
  loc_1265307:       Proc_6_138_106D6F8(var_98, global_64, KeyCode, Me.FGPoint1, 1)
  loc_1265315:     End If
  loc_126531F:     If (CLng(Shift) = &HD) Then
  loc_1265328:       Call Proc_281_56_178D1C4(KeyCode, var_DE, var_98)
  loc_1265333:       If (var_DE = &HFF) Then
  loc_1265379:         Proc_6_62_1253BC4(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6)
  loc_1265389:       End If
  loc_1265389:     End If
  loc_126538C:   Else
  loc_1265393:     If (var_B0 = CLng(2)) Then
  loc_12653D6:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_12653DF:         Call Proc_281_56_178D1C4(KeyCode, var_DE, 0, 2)
  loc_12653EA:         If (var_DE = &HFF) Then
  loc_1265430:           Proc_6_62_1253BC4(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_1265440:         End If
  loc_1265440:       End If
  loc_1265443:     Else
  loc_126544A:       If (var_B0 = CLng(3)) Then
  loc_126548D:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_1265496:           Call Proc_281_56_178D1C4(KeyCode, var_DE, 3, 0)
  loc_12654A1:           If (var_DE = &HFF) Then
  loc_12654E7:             Proc_6_62_1253BC4(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_12654F7:           End If
  loc_12654F7:         End If
  loc_12654FA:       Else
  loc_1265501:         If (var_B0 = CLng(4)) Then
  loc_1265544:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_126554D:             Call Proc_281_56_178D1C4(KeyCode, var_DE, 4, 0)
  loc_1265558:             If (var_DE = &HFF) Then
  loc_126559E:               Proc_6_62_1253BC4(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_12655AE:             End If
  loc_12655AE:           End If
  loc_12655B1:         Else
  loc_12655B8:           If (var_B0 = CLng(5)) Then
  loc_12655FB:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_1265604:               Call Proc_281_56_178D1C4(KeyCode, var_DE, 5, 0)
  loc_126560F:               If (var_DE = &HFF) Then
  loc_1265655:                 Proc_6_62_1253BC4(Me.Fgrid, Me.TxtGrid, KeyCode, Shift, global_72, 6, 0)
  loc_1265665:               End If
  loc_1265665:             End If
  loc_1265665:           End If
  loc_1265665:         End If
  loc_1265665:       End If
  loc_1265665:     End If
  loc_1265665:   End If
  loc_1265665: End If
  loc_1265665: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F2D5F8
  'Data Table: 537E24
  Dim var_8C As Variant
  Dim var_A0 As Long
  loc_F2D4EF: Proc_6_58_E054C0(arg_10)
  loc_F2D500: If (KeyAscii = 0) Then
  loc_F2D516:   var_A0 = CLng(Me.Fgrid.Col)
  loc_F2D526:   If (var_A0 = CLng(1)) Then
  loc_F2D545:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F2D557:       var_A4 = "Name"
  loc_F2D572:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_64, arg_10)
  loc_F2D58C:       Set var_AC = Me.FGPoint1
  loc_F2D5A4:       Proc_6_138_106D6F8(Me.DGRev, global_64, KeyAscii, var_AC)
  loc_F2D5B2:     End If
  loc_F2D5B5:   Else
  loc_F2D5BC:     If (var_A0 = CLng(2)) Then
  loc_F2D5C9:       Set var_8C = Me.TxtGrid
  loc_F2D5CF:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F2D5EA:       Proc_6_42_129A86C(var_AC, arg_10, 6, 2)
  loc_F2D5F6:     End If
  loc_F2D5F6:   End If
  loc_F2D5F6: End If
  loc_F2D5F6: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'ED9674
  'Data Table: 537E24
  Dim var_A0 As Long
  Dim MeFF As Double
  loc_ED95C0: On Error Goto loc_ED966B
  loc_ED95CF: If (KeyCode = 0) Then
  loc_ED95E5:   var_A0 = CLng(Me.Fgrid.Col)
  loc_ED95F5:   If (var_A0 = CLng(1)) Then
  loc_ED961B:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_ED962C:       Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_ED965B:       Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_ED966A:     End If
  loc_ED966A:   End If
  loc_ED966A: End If
  loc_ED966A: Exit Sub
  loc_ED966B: ' Referenced from: ED95C0
  loc_ED966B: Proc_6_60_E62BC4(&HFF, 0)
  loc_ED9670: Exit Sub
  loc_ED9671: MeFF = var_A0
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E213FC
  'Data Table: 537E24
  Dim arg_10 As Integer
  loc_E213E4: If (Cancel = 0) Then
  loc_E213ED:   Call Proc_281_56_178D1C4(Cancel, var_88)
  loc_E213F6:   arg_10 = Not(var_88)
  loc_E213F9: End If
  loc_E213F9: Exit Sub
End Sub

Private Sub DGMemName_UnknownEvent_9 'F45544
  'Data Table: 537E24
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4543B: Me.DGMemName.Visible = False
  loc_F4545A: If (Me.RecordCount > 0) Then
  loc_F45499:   Set var_B4 = Me.Txt
  loc_F4549F:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F454A7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F454DA:   var_B0 = Me.Fields.Item("Code")
  loc_F454F9:   Set var_B4 = Me.Txt
  loc_F454FF:   Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F45507:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4551D: End If
  loc_F45528: Set var_A8 = Me.Txt
  loc_F4552E: Call 0.Method_DGMemName_UnknownEvent_90 (CInt(0))
  loc_F45536: var_B0.SetFocus
  loc_F45542: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E183A0
  'Data Table: 537E24
  loc_E18395: Me.Global.Unload Me
  loc_E1839D: Exit Sub
  loc_E1839E: Set var_5400 = 
End Sub

Public Sub SEARCHBACK(MyValue) 'E946C8
  'Data Table: 537E24
  Dim Me As Recordset15
  loc_E94656: On Error Goto loc_E946BF
  loc_E9465F: Me.MoveFirst
  loc_E94689: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E946B1: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E946B9: Call Proc_281_44_1695034(0)
  loc_E946BE: Exit Sub
  loc_E946BF: ' Referenced from: E94656
  loc_E946BF: Proc_6_60_E62BC4(var_A0)
  loc_E946C4: Exit Sub
  loc_E946C5: StAryRecMove
End Sub

Public Sub Proc_281_41_10F03D0
  'Data Table: 537E24
  Dim var_98 As String
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_94 As Long
  Dim var_134 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10F00F8: var_90 = global_80
  loc_10F010F: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10F0140: Set var_AC = Me.Txt
  loc_10F0146: Call 0.Method_Proc_281_41_10F03D00 (CInt(&H22), var_B0, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10F0155: Proc_6_7_F25D88(var_D0, CVar(var_B0), var_134)
  loc_10F015D: var_F0 = -1 & var_D0 
  loc_10F0171: Me.Txt.Execute CStr(var_F0 & " Order By VP.Date_From DESC"), var_138, 
  loc_10F017C: Set var_8C = var_138
  loc_10F01B8: If (var_8C.RecordCount > 0) Then
  loc_10F01F7:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10F01FA:     GoTo loc_10F026D
  loc_10F01FD:   End If
  loc_10F0220:   var_14C = CVar(var_8C.Fields.Item("Prefix")) 'Variant
  loc_10F0241:   var_B0 = var_8C.Fields.Item("start_srl_no")
  loc_10F0256:   var_D0 = (var_B0.Value + 1)
  loc_10F025C:   var_94 = CLng(var_D0)
  loc_10F026D:   ' Referenced from: 10F01FA
  loc_10F026D: End If
  loc_10F0298: var_C0 = Space((5 - Len(var_90)))
  loc_10F02A0: var_E0 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_B0.Value)
  loc_10F02A7: var_F0 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_14C)
  loc_10F02BD: var_110 = Space((5 - Len(CStr(var_14C))))
  loc_10F02C5: var_134 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_10F02DB: var_160 = Space((8 - Len(CStr(var_94))))
  loc_10F02E3: var_170 = (var_134 + var_160)
  loc_10F02EF: var_190 = (var_170 + CVar(CStr(var_94)))
  loc_10F02F3: var_1A0 = var_190 'Variant
  loc_10F0328: Me.LblVPrefix.Caption = CStr(var_14C)
  loc_10F0345: Set var_AC = Me.Txt
  loc_10F034B: Call 0.Method_Proc_281_41_10F03D00 (CInt(&H1F), var_B0)
  loc_10F0353: var_B0.Text = CStr(var_1A0)
  loc_10F0375: Set var_AC = Me.Txt
  loc_10F037B: Call 0.Method_Proc_281_41_10F03D00 (CInt(&H20), var_B0)
  loc_10F0383: var_B0.Text = CStr(var_94)
  loc_10F03A0: Set var_AC = Me.Txt
  loc_10F03A6: Call 0.Method_Proc_281_41_10F03D00 (CInt(&H21), var_B0)
  loc_10F03AE: var_B0.Text = var_90
  loc_10F03BF: var_88 = CStr(var_1A0)
  loc_10F03C7: Set var_8C = Nothing
  loc_10F03CA: Proc_281_41_10F03D0 = var_94
End Sub

Public Sub Proc_281_42_15331B0
  'Data Table: 537E24
  Dim unk_537E3E As Connection15
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_1D4 As Double
  Dim var_188 As Variant
  Dim var_1C0 As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_86 As Integer
  Dim var_9C As Recordset15
  Dim var_1E0 As Field20
  Dim var_134 As Variant
  Dim var_1E4 As Variant
  Dim var_1B8 As Variant
  Dim var_204 As Variant
  loc_1532234: unk_537E3E.Execute "Select Code,RoundOff from RevMast Where (LogSite_Code='" & MemVar_1F92078 & "' Or LogSite_Code='HO') Order By Name", var_DC, -1
  loc_153223F: Set var_9C = var_E0
  loc_1532262: Me.FGCat.Rows = 1
  loc_153228F: For var_F4 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_8A = var_F4 'Integer
  loc_1532299:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_15322A1:   var_104 = CVar(CLng(0)) 'Long
  loc_15322AB:   var_DC = CVar(CStr(var_8A)) 'String
  loc_15322B3:   Set var_E0 = Me.Fgrid
  loc_15322B9:   LateIdCallSt
  loc_15322CB:   var_CC = CVar(CLng(var_8A)) 'Long
  loc_15322D3:   var_104 = CVar(CLng(&HA)) 'Long
  loc_15322FE:   If (CStr(Me.Fgrid.TextMatrix)) <> vbNullString) Then
  loc_1532305:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_153230D:     var_104 = CVar(CLng(&HB)) 'Long
  loc_153232C:     var_124 = CVar(CLng(var_8A)) 'Long
  loc_1532334:     var_144 = CVar(CLng(2)) 'Long
  loc_153233D:     Set var_158 = Me.Fgrid
  loc_1532356:     var_1D4 = Val(CStr(var_158.TextMatrix)))
  loc_15323A6:     Call Proc_281_43_1857844(CStr(Me.Fgrid.TextMatrix)), var_8A, CSng(Format(CVar(var_1D4), "0.00")), vbNullString, 0, 1, 1, var_1D4)
  loc_15323CC:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_15323D4:     var_104 = CVar(CLng(2)) 'Long
  loc_1532400:     var_AC = (var_AC + Val(CStr(Me.Fgrid.TextMatrix))))
  loc_1532410:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_1532418:     var_104 = CVar(CLng(2)) 'Long
  loc_1532444:     var_B4 = (var_B4 + Val(CStr(Me.Fgrid.TextMatrix))))
  loc_1532450:   End If
  loc_1532453: Next var_F4 'Integer
  loc_1532477: If (CLng(Me.FGCat.Rows) = 1) Then
  loc_153247A:   var_CC = vbNullString
  loc_1532484:   Set var_E0 = Me.FGCat
  loc_1532495: End If
  loc_15324A8: Me.FGCat.FixedRows = 1
  loc_15324C3: Set var_E0 = Me.LblCap
  loc_15324C9: Call 0.Method_Proc_281_42_15331B00 (1, var_158, MemVar_1F92070 & "TOT")
  loc_15324D1: var_158.Tag = FGCat.DispID_10000
  loc_15324EC: Set var_E0 = Me.LblCap
  loc_15324F2: Call 0.Method_Proc_281_42_15331B00 (1, var_158)
  loc_15324FA: var_158.Caption = "Total"
  loc_153253B: Set var_E0 = Me.TxtGt
  loc_1532541: Call 0.Method_Proc_281_42_15331B00 (1, var_158, CStr(Format(var_AC, "0.00")))
  loc_1532549: var_158.Text = 1
  loc_1532561: var_86 = 2
  loc_1532564: ' Referenced from: 1532B07
  loc_153256A: var_1D6 = var_9C.EOF
  loc_1532573: If Not(var_1D6) Then
  loc_1532579:   var_A4 = vbNullString
  loc_153257F:   var_AC = CDbl(0)
  loc_15325A7:   For var_1DA = 1 To CInt((CLng(Me.FGCat.Rows) - 1)): var_8A = var_1DA 'Integer
  loc_15325B1:     var_CC = CVar(CLng(var_8A)) 'Long
  loc_15325B9:     var_104 = CVar(CLng(6)) 'Long
  loc_15325D3:     var_188 = CVar(CStr(Me.FGCat.TextMatrix))) 'String
  loc_15325E9:     var_158 = var_9C.Fields
  loc_15325F9:     var_168 = var_158.Item("Code").Value
  loc_1532609:     var_134 = CVar(CLng(var_8A)) 'Long
  loc_153261A:     Set var_1E4 = Me.FGCat
  loc_153265D:     If CBool(CVar(CLng(&HA)) And (CDbl(Val(CStr(var_1E4.TextMatrix)))) <> CDbl(0))) Then
  loc_1532664:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_153266C:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1532694:       var_AC = (var_AC + CDbl(CStr(Me.FGCat.TextMatrix))))
  loc_15326A4:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_15326AC:       var_104 = CVar(CLng(6)) 'Long
  loc_15326C6:       var_98 = CStr(Me.FGCat.TextMatrix))
  loc_15326D3:       var_CC = CVar(CLng(var_8A)) 'Long
  loc_15326DB:       var_104 = CVar(CLng(7)) 'Long
  loc_15326F5:       var_A4 = CStr(Me.FGCat.TextMatrix))
  loc_15326FE:     End If
  loc_1532701:   Next var_1DA 'Integer
  loc_153270E:   If (var_A4 <> vbNullString) Then
  loc_153271B:     Set var_E0 = Me.LblDummy
  loc_1532721:     Call 0.Method_Proc_281_42_15331B08 (var_1D6)
  loc_153272D:     If (var_86 > var_1D6) Then
  loc_153273A:       Set var_E0 = Me.LblDummy
  loc_1532740:       Call 0.Method_Proc_281_42_15331B00 (var_86)
  loc_1532751:       Me.LblDummy.Load var_158
  loc_1532769:       Set var_E0 = Me.LblDummy
  loc_153276F:       Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532777:       var_158.Visible = False
  loc_1532783:     End If
  loc_153278D:     Set var_E0 = Me.LblCap
  loc_1532793:     Call 0.Method_Proc_281_42_15331B08 (var_1D6, var_86)
  loc_153279F:     If (var_158 > var_1D6) Then
  loc_15327AC:       Set var_E0 = Me.LblCap
  loc_15327B2:       Call 0.Method_Proc_281_42_15331B00 (var_86)
  loc_15327C3:       Me.LblCap.Load var_158
  loc_15327DC:       Set var_1E0 = Me.LblCap
  loc_15327E2:       Call 0.Method_Proc_281_42_15331B00 (var_86, var_1E4)
  loc_15327FF:       Set var_E0 = Me.LblCap
  loc_1532805:       Call 0.Method_Proc_281_42_15331B00 ((var_86 - 1), var_158)
  loc_1532828:       Set var_200 = Me.LblCap
  loc_153282E:       Call 0.Method_Proc_281_42_15331B00 (var_86, var_204)
  loc_1532836:       var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_153284A:     End If
  loc_1532854:     Set var_E0 = Me.TxtGt
  loc_153285A:     Call 0.Method_Proc_281_42_15331B08 (var_1D6, var_86)
  loc_1532866:     If (var_158 > var_1D6) Then
  loc_1532873:       Set var_E0 = Me.TxtGt
  loc_1532879:       Call 0.Method_Proc_281_42_15331B00 (var_86)
  loc_153288A:       Me.TxtGt.Load var_158
  loc_15328A3:       Set var_1E0 = Me.TxtGt
  loc_15328A9:       Call 0.Method_Proc_281_42_15331B00 (var_86, var_1E4)
  loc_15328C6:       Set var_E0 = Me.TxtGt
  loc_15328CC:       Call 0.Method_Proc_281_42_15331B00 ((var_86 - 1), var_158)
  loc_15328EF:       Set var_200 = Me.TxtGt
  loc_15328F5:       Call 0.Method_Proc_281_42_15331B00 (var_86, var_204)
  loc_15328FD:       var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_1532911:     End If
  loc_153291E:     Set var_E0 = Me.LblCap
  loc_1532924:     Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_153292C:     var_158.Tag = var_98
  loc_1532963:     Set var_E0 = Me.LblCap
  loc_1532969:     Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532971:     var_158.Caption = CStr(StrConv(var_A4, 3, 0))
  loc_153299A:     var_158 = var_9C.Fields.Item("RoundOff")
  loc_15329C8:     Proc_6_142_14A55B0(var_AC, CByte(0), "S")
  loc_15329CD:     var_1C0 = 2
  loc_15329FD:     var_1B8 = (CVar(var_AC) + IIf((Proc_6_38_E68A98(CVar(var_158)) = "Yes"), CVar(var_1C0), 0))
  loc_1532A02:     var_AC = CSng(var_1E4.TextMatrix))
  loc_1532A27:     var_B4 = (var_B4 + var_AC)
  loc_1532A60:     Set var_E0 = Me.TxtGt
  loc_1532A66:     Call 0.Method_Proc_281_42_15331B00 (var_86, var_158, CStr(Format(var_AC, "0.00")), 1, 1)
  loc_1532A6E:     var_158.Text = var_B4
  loc_1532A90:     Set var_E0 = Me.LblDummy
  loc_1532A96:     Call 0.Method_Proc_281_42_15331B00 (var_86, var_158, 0)
  loc_1532A9E:     var_158.Visible = var_AC
  loc_1532AB6:     Set var_E0 = Me.LblCap
  loc_1532ABC:     Call 0.Method_Proc_281_42_15331B00 (var_86, var_158, &HFF)
  loc_1532AC4:     var_158.Visible = var_1C0
  loc_1532ADC:     Set var_E0 = Me.TxtGt
  loc_1532AE2:     Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532AEA:     var_158.Visible = True
  loc_1532AFC:     var_86 = (var_86 + 1)
  loc_1532AFF:   End If
  loc_1532B02:   var_9C.MoveNext
  loc_1532B07:   GoTo loc_1532564
  loc_1532B0A: End If
  loc_1532B14: Set var_E0 = Me.LblDummy
  loc_1532B1A: Call 0.Method_Proc_281_42_15331B08 (var_1D6, var_86)
  loc_1532B26: If (var_86 > var_1D6) Then
  loc_1532B33:   Set var_E0 = Me.LblDummy
  loc_1532B39:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532B4A:   Me.LblDummy.Load var_158
  loc_1532B62:   Set var_E0 = Me.LblDummy
  loc_1532B68:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532B70:   var_158.Visible = False
  loc_1532B7C: End If
  loc_1532B86: Set var_E0 = Me.LblCap
  loc_1532B8C: Call 0.Method_Proc_281_42_15331B08 (var_1D6, var_86)
  loc_1532B98: If (var_158 > var_1D6) Then
  loc_1532BA5:   Set var_E0 = Me.LblCap
  loc_1532BAB:   Call 0.Method_Proc_281_42_15331B00 (var_86)
  loc_1532BBC:   Me.LblCap.Load var_158
  loc_1532BD5:   Set var_1E0 = Me.LblCap
  loc_1532BDB:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_1E4)
  loc_1532BF8:   Set var_E0 = Me.LblCap
  loc_1532BFE:   Call 0.Method_Proc_281_42_15331B00 ((var_86 - 1), var_158)
  loc_1532C21:   Set var_200 = Me.LblCap
  loc_1532C27:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_204)
  loc_1532C2F:   var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_1532C43: End If
  loc_1532C4D: Set var_E0 = Me.TxtGt
  loc_1532C53: Call 0.Method_Proc_281_42_15331B08 (var_1D6, var_86)
  loc_1532C5F: If (var_158 > var_1D6) Then
  loc_1532C6C:   Set var_E0 = Me.TxtGt
  loc_1532C72:   Call 0.Method_Proc_281_42_15331B00 (var_86)
  loc_1532C83:   Me.TxtGt.Load var_158
  loc_1532C9C:   Set var_1E0 = Me.TxtGt
  loc_1532CA2:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_1E4)
  loc_1532CBF:   Set var_E0 = Me.TxtGt
  loc_1532CC5:   Call 0.Method_Proc_281_42_15331B00 ((var_86 - 1), var_158)
  loc_1532CE8:   Set var_200 = Me.TxtGt
  loc_1532CEE:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_204)
  loc_1532CF6:   var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_1532D0A: End If
  loc_1532D1E: Set var_E0 = Me.LblCap
  loc_1532D24: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532D2C: var_158.Tag = MemVar_1F92070 & "ROFF"
  loc_1532D48: Set var_E0 = Me.LblCap
  loc_1532D4E: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532D56: var_158.Caption = "Round Off"
  loc_1532D7C: Proc_6_142_14A55B0(var_B4, CByte(0), "S")
  loc_1532D81: var_1C0 = 2
  loc_1532DB9: Set var_E0 = Me.TxtGt
  loc_1532DBF: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158, CStr(Format(CVar(var_1C0), "0.00")), 1)
  loc_1532DC7: var_158.Text = 1
  loc_1532DEF: Set var_E0 = Me.LblDummy
  loc_1532DF5: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158, 0)
  loc_1532DFD: var_158.Visible = var_1C0
  loc_1532E15: Set var_E0 = Me.LblCap
  loc_1532E1B: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532E23: var_158.Visible = True
  loc_1532E3B: Set var_E0 = Me.TxtGt
  loc_1532E41: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532E49: var_158.Visible = True
  loc_1532E5B: var_86 = (var_86 + 1)
  loc_1532E68: Set var_E0 = Me.LblDummy
  loc_1532E6E: Call 0.Method_Proc_281_42_15331B08 (var_1D6, var_86)
  loc_1532E7A: If (var_86 > var_1D6) Then
  loc_1532E87:   Set var_E0 = Me.LblDummy
  loc_1532E8D:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532E9E:   Me.LblDummy.Load var_158
  loc_1532EB6:   Set var_E0 = Me.LblDummy
  loc_1532EBC:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1532EC4:   var_158.Visible = False
  loc_1532ED0: End If
  loc_1532EDA: Set var_E0 = Me.LblCap
  loc_1532EE0: Call 0.Method_Proc_281_42_15331B08 (var_1D6, var_86)
  loc_1532EEC: If (var_158 > var_1D6) Then
  loc_1532EF9:   Set var_E0 = Me.LblCap
  loc_1532EFF:   Call 0.Method_Proc_281_42_15331B00 (var_86)
  loc_1532F10:   Me.LblCap.Load var_158
  loc_1532F29:   Set var_1E0 = Me.LblCap
  loc_1532F2F:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_1E4)
  loc_1532F4C:   Set var_E0 = Me.LblCap
  loc_1532F52:   Call 0.Method_Proc_281_42_15331B00 ((var_86 - 1), var_158)
  loc_1532F75:   Set var_200 = Me.LblCap
  loc_1532F7B:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_204)
  loc_1532F83:   var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_1532F97: End If
  loc_1532FA1: Set var_E0 = Me.TxtGt
  loc_1532FA7: Call 0.Method_Proc_281_42_15331B08 (var_1D6, var_86)
  loc_1532FB3: If (var_158 > var_1D6) Then
  loc_1532FC0:   Set var_E0 = Me.TxtGt
  loc_1532FC6:   Call 0.Method_Proc_281_42_15331B00 (var_86)
  loc_1532FD7:   Me.TxtGt.Load var_158
  loc_1532FF0:   Set var_1E0 = Me.TxtGt
  loc_1532FF6:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_1E4)
  loc_1533013:   Set var_E0 = Me.TxtGt
  loc_1533019:   Call 0.Method_Proc_281_42_15331B00 ((var_86 - 1), var_158)
  loc_153303C:   Set var_200 = Me.TxtGt
  loc_1533042:   Call 0.Method_Proc_281_42_15331B00 (var_86, var_204)
  loc_153304A:   var_204.Top = ((var_158.Top + var_1E4.Height) + CDbl(&HF))
  loc_153305E: End If
  loc_1533072: Set var_E0 = Me.LblCap
  loc_1533078: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_1533080: var_158.Tag = MemVar_1F92070 & "NET"
  loc_153309C: Set var_E0 = Me.LblCap
  loc_15330A2: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_15330AA: var_158.Caption = "Net Amount"
  loc_15330D0: Proc_6_142_14A55B0(var_B4, CByte(0), "S")
  loc_15330D5: var_1C0 = 2
  loc_15330F4: var_DC = CVar((var_B4 + var_1C0)) 'Double
  loc_1533111: Set var_E0 = Me.TxtGt
  loc_1533117: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158, CStr(Format(CVar(var_1C0), "0.00")), 1)
  loc_153311F: var_158.Text = 1
  loc_1533147: Set var_E0 = Me.LblDummy
  loc_153314D: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158, 0)
  loc_1533155: var_158.Visible = var_1C0
  loc_153316D: Set var_E0 = Me.LblCap
  loc_1533173: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_153317B: var_158.Visible = True
  loc_1533193: Set var_E0 = Me.TxtGt
  loc_1533199: Call 0.Method_Proc_281_42_15331B00 (var_86, var_158)
  loc_15331A1: var_158.Visible = True
  loc_15331AD: Exit Sub
End Sub

Public Sub Proc_281_43_1857844(arg_C, arg_10, arg_14) '1857844
  'Data Table: 537E24
  Dim var_E4 As String
  Dim unk_537E3E As Connection15
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_170 As Variant
  Dim var_130 As Variant
  Dim var_D0 As Double
  Dim var_194 As Double
  Dim var_150 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_264 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_1C4 As Integer
  Dim var_274 As Variant
  Dim var_12C As MSHFlexGrid
  Dim var_180 As Double
  Dim var_9C As Double
  loc_1855334: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_1855344: unk_537E3E.Execute var_E4 & "'", var_108, -1
  loc_185534F: Set var_8C = var_10C
  loc_18553DF: If (((((((MemVar_1F92078 & "TPRB" = arg_C) Or (MemVar_1F92078 & "TPR1" = arg_C)) Or (MemVar_1F92078 & "TPR2" = arg_C)) Or (MemVar_1F92078 & "TPR3" = arg_C)) Or (MemVar_1F92078 & "TPR4" = arg_C)) Or (MemVar_1F92078 & "TMBA" = arg_C)) Or (MemVar_1F92078 & "TMPA" = arg_C)) Then
  loc_18553E4:   var_DA = &HFF
  loc_18553EA: Else
  loc_18553EC:   var_DA = 0
  loc_18553EF: End If
  loc_18553F2: var_94 = arg_14
  loc_18553F7: var_86 = 1
  loc_18553FD: var_A8 = var_94
  loc_1855403: var_B0 = var_94
  loc_1855409: var_B8 = CDbl(0)
  loc_1855420: If (var_8C.RecordCount > 0) Then
  loc_1855423:   ' Referenced from: 1857818
  loc_1855432:   If Not(var_8C.EOF) Then
  loc_1855439:     Set var_12C = Me.FGCat
  loc_1855450:     If (var_8C.RecordCount > 0) Then
  loc_1855459:       var_D2 = (var_D2 + 1)
  loc_1855492:       var_160 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Nature")), var_D2, var_B8, var_B0, var_A8))) 'Variant
  loc_18554AB:       If (var_160 = "On Base Amt") Then
  loc_18554EE:         If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1855530:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_1855543:         Else
  loc_1855565:           var_140 = var_8C.Fields.Item("Rate").Value
  loc_18555A3:           Proc_6_142_14A55B0(((Val(CStr(var_140)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0)
  loc_18555A8:           var_194 = var_86
  loc_18555D6:           var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_18555EE:           var_D0 = (((Val(var_E4) * (var_A8 + arg_1C)) / CDbl(&H64)) + var_194)
  loc_185560C:         End If
  loc_1855632:         Proc_6_39_E7C810(var_140, CVar(var_8C.Fields.Item("Limit")), var_D0, var_194)
  loc_185566C:         Proc_6_39_E7C810(var_1C4, CVar(var_8C.Fields.Item("Rate")), (var_140 <= CVar(var_94)), var_94)
  loc_1855696:         If CBool(var_DA And (var_1C4 > 0)) Then
  loc_18556A0:           If (var_D0 > CDbl(0)) Then
  loc_18556A3:             var_F8 = vbNullString
  loc_18556CD:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18556D5:             var_1A4 = CVar(CLng(0)) 'Long
  loc_18556DF:             var_140 = CVar(CStr(arg_10)) 'String
  loc_18556E6:             LateIdCallSt
  loc_1855711:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855719:             var_1A4 = CVar(CLng(1)) 'Long
  loc_1855723:             var_140 = CVar(CStr(var_86)) 'String
  loc_185572A:             LateIdCallSt
  loc_1855742:             If (var_DA = 0) Then
  loc_185575E:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855799:               var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(arg_10)), CVar(CLng(2)), var_204, var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)))) 'String
  loc_18557A0:               LateIdCallSt
  loc_18557D3:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185580E:               var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(arg_10)), CVar(CLng(3)), var_204, var_12C, var_1B4)) 'String
  loc_1855815:               LateIdCallSt
  loc_1855848:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855883:               var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(arg_10)), CVar(CLng(4)), var_204, var_12C, var_1B4)) 'String
  loc_185588A:               LateIdCallSt
  loc_18558A8:               Set var_130 = Me.FGCat
  loc_18558BD:               var_204 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_18558F8:               var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(arg_10)), CVar(CLng(5)), var_204, var_12C, var_1B4)) 'String
  loc_18558FF:               LateIdCallSt
  loc_185591C:             Else
  loc_1855935:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855950:               Set var_10C = Me.Txt
  loc_1855956:               Call 0.Method_Proc_281_43_18578440 (CInt(&H1F), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_1B4)
  loc_185595E:               var_F8 = var_130.Text
  loc_185596D:               LateIdCallSt
  loc_185599E:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18559B9:               Set var_10C = Me.Txt
  loc_18559BF:               Call 0.Method_Proc_281_43_18578440 (CInt(&H20), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_18559C7:               var_12C = var_130.Text
  loc_18559CF:               var_140 = CVar(var_E4) 'String
  loc_18559D6:               LateIdCallSt
  loc_1855A07:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855A22:               Set var_10C = Me.Txt
  loc_1855A28:               Call 0.Method_Proc_281_43_18578440 (CInt(&H21), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1855A30:               var_140 = var_130.Text
  loc_1855A38:               var_140 = CVar(var_E4) 'String
  loc_1855A3F:               LateIdCallSt
  loc_1855A70:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855A78:               var_1A4 = CVar(CLng(5)) 'Long
  loc_1855A87:               LateIdCallSt
  loc_1855A95:             End If
  loc_1855AAE:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855AB6:             var_1D4 = CVar(CLng(6)) 'Long
  loc_1855AE6:             var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1855AED:             LateIdCallSt
  loc_1855B20:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855B28:             var_1D4 = CVar(CLng(7)) 'Long
  loc_1855B58:             var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1855B5F:             LateIdCallSt
  loc_1855B92:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855B9A:             var_1A4 = CVar(CLng(8)) 'Long
  loc_1855BA8:             var_140 = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_1855BAF:             LateIdCallSt
  loc_1855BDA:             var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855BE2:             var_1D4 = CVar(CLng(9)) 'Long
  loc_1855C12:             var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1855C19:             LateIdCallSt
  loc_1855C77:             var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855C7F:             var_234 = CVar(CLng(&HA)) 'Long
  loc_1855CC3:             var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_1855CCA:             LateIdCallSt
  loc_1855CEE:           End If
  loc_1855D07:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855D0F:           var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1855D34:           var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_1855D5D:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855D65:           var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1855D80:           var_180 = Val(CStr(var_12C.TextMatrix)))
  loc_1855D8A:           var_94 = (var_94 + var_180)
  loc_1855DA1:           var_B0 = (var_B0 + var_D0)
  loc_1855DA7:           var_B8 = var_D0
  loc_1855DAA:         End If
  loc_1855DAD:       Else
  loc_1855DB8:         If (var_160 = "On Running Total") Then
  loc_1855DFB:           If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1855E39:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_1855E4C:           Else
  loc_1855E6E:             var_140 = var_8C.Fields.Item("Rate").Value
  loc_1855EA8:             Proc_6_142_14A55B0(((Val(CStr(var_140)) * var_B0) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0, var_B8, var_B0)
  loc_1855EAD:             var_194 = var_94
  loc_1855EDB:             var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_1855EEF:             var_D0 = (((Val(var_E4) * var_B0) / CDbl(&H64)) + var_194)
  loc_1855F0D:           End If
  loc_1855F33:           Proc_6_39_E7C810(var_140, CVar(var_8C.Fields.Item("Rate")), var_D0, var_194, var_180)
  loc_1855F4D:           If (var_140 > 0) Then
  loc_1855F57:             If (var_D0 > CDbl(0)) Then
  loc_1855F5A:               var_F8 = vbNullString
  loc_1855F84:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855F8C:               var_1A4 = CVar(CLng(0)) 'Long
  loc_1855F96:               var_140 = CVar(CStr(arg_10)) 'String
  loc_1855F9D:               LateIdCallSt
  loc_1855FC8:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1855FD0:               var_1A4 = CVar(CLng(1)) 'Long
  loc_1855FDA:               var_140 = CVar(CStr(var_86)) 'String
  loc_1855FE1:               LateIdCallSt
  loc_1855FF9:               If (var_DA = 0) Then
  loc_1856015:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856050:                 var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)))) 'String
  loc_1856057:                 LateIdCallSt
  loc_185608A:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18560C5:                 var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_1B4)) 'String
  loc_18560CC:                 LateIdCallSt
  loc_18560FF:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185613A:                 var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_1B4)) 'String
  loc_1856141:                 LateIdCallSt
  loc_185615F:                 Set var_130 = Me.FGCat
  loc_1856174:                 var_204 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_18561AF:                 var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_1B4)) 'String
  loc_18561B6:                 LateIdCallSt
  loc_18561D3:               Else
  loc_18561EC:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856207:                 Set var_10C = Me.Txt
  loc_185620D:                 Call 0.Method_Proc_281_43_18578440 (CInt(&H1F), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_1B4)
  loc_1856215:                 var_F8 = var_130.Text
  loc_1856224:                 LateIdCallSt
  loc_1856255:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856270:                 Set var_10C = Me.Txt
  loc_1856276:                 Call 0.Method_Proc_281_43_18578440 (CInt(&H20), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_185627E:                 var_12C = var_130.Text
  loc_1856286:                 var_140 = CVar(var_E4) 'String
  loc_185628D:                 LateIdCallSt
  loc_18562BE:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18562D9:                 Set var_10C = Me.Txt
  loc_18562DF:                 Call 0.Method_Proc_281_43_18578440 (CInt(&H21), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_18562E7:                 var_140 = var_130.Text
  loc_18562EF:                 var_140 = CVar(var_E4) 'String
  loc_18562F6:                 LateIdCallSt
  loc_1856327:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185632F:                 var_1A4 = CVar(CLng(5)) 'Long
  loc_185633E:                 LateIdCallSt
  loc_185634C:               End If
  loc_1856365:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185636D:               var_1D4 = CVar(CLng(6)) 'Long
  loc_185639D:               var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18563A4:               LateIdCallSt
  loc_18563D7:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18563DF:               var_1D4 = CVar(CLng(7)) 'Long
  loc_185640F:               var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1856416:               LateIdCallSt
  loc_1856449:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856451:               var_1A4 = CVar(CLng(8)) 'Long
  loc_185645B:               var_140 = CVar(CStr(var_B0)) 'String
  loc_1856462:               LateIdCallSt
  loc_185648D:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856495:               var_1D4 = CVar(CLng(9)) 'Long
  loc_18564C5:               var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_18564CC:               LateIdCallSt
  loc_185652A:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856532:               var_234 = CVar(CLng(&HA)) 'Long
  loc_1856576:               var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_185657D:               LateIdCallSt
  loc_18565A1:             End If
  loc_18565BA:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18565C2:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_18565E7:             var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_1856610:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856618:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_185663D:             var_94 = (var_94 + Val(CStr(var_12C.TextMatrix))))
  loc_1856654:             var_B0 = (var_B0 + var_D0)
  loc_185665A:             var_B8 = var_D0
  loc_185665D:           End If
  loc_1856660:         Else
  loc_185666B:           If (var_160 = "On Prev. Tax Amt") Then
  loc_18566AE:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_18566EC:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_18566FF:             Else
  loc_185675B:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_185678E:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_18567A2:               var_D0 = (((Val(var_E4) * var_B8) / CDbl(&H64)) + var_94)
  loc_18567C0:             End If
  loc_18567C7:             If (var_D0 > CDbl(0)) Then
  loc_18567CA:               var_F8 = vbNullString
  loc_18567F4:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18567FC:               var_1A4 = CVar(CLng(0)) 'Long
  loc_1856806:               var_140 = CVar(CStr(arg_10)) 'String
  loc_185680D:               LateIdCallSt
  loc_1856838:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856840:               var_1A4 = CVar(CLng(1)) 'Long
  loc_185684A:               var_140 = CVar(CStr(var_86)) 'String
  loc_1856851:               LateIdCallSt
  loc_1856869:               If (var_DA = 0) Then
  loc_1856885:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18568C0:                 var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)))) 'String
  loc_18568C7:                 LateIdCallSt
  loc_18568FA:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856935:                 var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_1B4)) 'String
  loc_185693C:                 LateIdCallSt
  loc_185696F:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18569AA:                 var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_1B4)) 'String
  loc_18569B1:                 LateIdCallSt
  loc_18569CF:                 Set var_130 = Me.FGCat
  loc_18569E4:                 var_204 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_1856A1F:                 var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_1B4)) 'String
  loc_1856A26:                 LateIdCallSt
  loc_1856A43:               Else
  loc_1856A5C:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856A77:                 Set var_10C = Me.Txt
  loc_1856A7D:                 Call 0.Method_Proc_281_43_18578440 (CInt(&H1F), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_1B4)
  loc_1856A85:                 var_F8 = var_130.Text
  loc_1856A94:                 LateIdCallSt
  loc_1856AC5:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856AE0:                 Set var_10C = Me.Txt
  loc_1856AE6:                 Call 0.Method_Proc_281_43_18578440 (CInt(&H20), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_1856AEE:                 var_12C = var_130.Text
  loc_1856AF6:                 var_140 = CVar(var_E4) 'String
  loc_1856AFD:                 LateIdCallSt
  loc_1856B2E:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856B49:                 Set var_10C = Me.Txt
  loc_1856B4F:                 Call 0.Method_Proc_281_43_18578440 (CInt(&H21), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1856B57:                 var_140 = var_130.Text
  loc_1856B5F:                 var_140 = CVar(var_E4) 'String
  loc_1856B66:                 LateIdCallSt
  loc_1856B97:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856B9F:                 var_1A4 = CVar(CLng(5)) 'Long
  loc_1856BAE:                 LateIdCallSt
  loc_1856BBC:               End If
  loc_1856BD5:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856BDD:               var_1D4 = CVar(CLng(6)) 'Long
  loc_1856C0D:               var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1856C14:               LateIdCallSt
  loc_1856C47:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856C4F:               var_1D4 = CVar(CLng(7)) 'Long
  loc_1856C7F:               var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1856C86:               LateIdCallSt
  loc_1856CB9:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856CC1:               var_1A4 = CVar(CLng(8)) 'Long
  loc_1856CCB:               var_140 = CVar(CStr(var_B8)) 'String
  loc_1856CD2:               LateIdCallSt
  loc_1856CFD:               var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856D05:               var_1D4 = CVar(CLng(9)) 'Long
  loc_1856D35:               var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1856D3C:               LateIdCallSt
  loc_1856D96:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856D9E:               var_234 = CVar(CLng(&HA)) 'Long
  loc_1856DA3:               var_1C4 = 2
  loc_1856DE2:               var_264 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_1C4))))) 'String
  loc_1856DE9:               LateIdCallSt
  loc_1856E0D:             End If
  loc_1856E26:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856E2E:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1856E53:             var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_1856E7C:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1856E84:             var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1856E9F:             var_180 = Val(CStr(var_12C.TextMatrix)))
  loc_1856EA9:             var_94 = (var_94 + var_180)
  loc_1856EC0:             var_B0 = (var_B0 + var_D0)
  loc_1856EC6:             var_B8 = var_D0
  loc_1856ECC:           Else
  loc_1856F0C:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_1856F4A:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1856F5D:             Else
  loc_1856F7F:               var_140 = var_8C.Fields.Item("Rate").Value
  loc_1856FB9:               Proc_6_142_14A55B0(((Val(CStr(var_140)) * var_A8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_140)), var_D0, var_B8, var_B0)
  loc_1856FBE:               var_194 = var_94
  loc_1856FEC:               var_E4 = CStr(var_8C.Fields.Item("Rate").Value)
  loc_1857000:               var_D0 = (((Val(var_E4) * var_A8) / CDbl(&H64)) + var_194)
  loc_185701E:             End If
  loc_1857021:             var_F8 = "Limit"
  loc_1857044:             Proc_6_39_E7C810(var_140, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_194, var_180)
  loc_185705B:             var_1A4 = "Rate"
  loc_185707E:             Proc_6_39_E7C810(var_1C4, CVar(var_8C.Fields.Item(var_1A4)), (var_140 <= CVar(var_94)), var_1A4)
  loc_18570A8:             If CBool(var_F8 And (var_1C4 > 0)) Then
  loc_18570B2:               If (var_D0 > CDbl(0)) Then
  loc_18570B5:                 var_F8 = vbNullString
  loc_18570DF:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18570E7:                 var_1A4 = CVar(CLng(0)) 'Long
  loc_18570F1:                 var_140 = CVar(CStr(arg_10)) 'String
  loc_18570F8:                 LateIdCallSt
  loc_1857123:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185712B:                 var_1A4 = CVar(CLng(1)) 'Long
  loc_1857135:                 var_140 = CVar(CStr(var_86)) 'String
  loc_185713C:                 LateIdCallSt
  loc_1857154:                 If (var_DA = 0) Then
  loc_1857170:                   var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18571AB:                   var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)), CVar(CLng(arg_10)), CVar(CLng(2)), var_D0, var_12C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(6)))) 'String
  loc_18571B2:                   LateIdCallSt
  loc_18571E5:                   var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1857220:                   var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(7)), CVar(CLng(arg_10)), CVar(CLng(3)), var_D0, var_12C, var_1B4)) 'String
  loc_1857227:                   LateIdCallSt
  loc_185725A:                   var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1857295:                   var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(arg_10)), CVar(CLng(4)), var_D0, var_12C, var_1B4)) 'String
  loc_185729C:                   LateIdCallSt
  loc_18572BA:                   Set var_130 = Me.FGCat
  loc_18572CF:                   var_204 = CVar((CLng(var_130.Rows) - 1)) 'Long
  loc_185730A:                   var_1B4 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(arg_10)), CVar(CLng(5)), var_D0, var_12C, var_1B4)) 'String
  loc_1857311:                   LateIdCallSt
  loc_185732E:                 Else
  loc_1857347:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1857362:                   Set var_10C = Me.Txt
  loc_1857368:                   Call 0.Method_Proc_281_43_18578440 (CInt(&H1F), var_130, var_E4, CVar(CLng(2)), CVar(CLng(arg_10)), var_12C, var_1B4)
  loc_1857370:                   var_F8 = var_130.Text
  loc_185737F:                   LateIdCallSt
  loc_18573B0:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18573CB:                   Set var_10C = Me.Txt
  loc_18573D1:                   Call 0.Method_Proc_281_43_18578440 (CInt(&H20), var_130, var_E4, CVar(CLng(3)), var_F8, var_12C, CVar(var_E4))
  loc_18573D9:                   var_12C = var_130.Text
  loc_18573E1:                   var_140 = CVar(var_E4) 'String
  loc_18573E8:                   LateIdCallSt
  loc_1857419:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1857434:                   Set var_10C = Me.Txt
  loc_185743A:                   Call 0.Method_Proc_281_43_18578440 (CInt(&H21), var_130, var_E4, CVar(CLng(4)), var_F8, var_12C)
  loc_1857442:                   var_140 = var_130.Text
  loc_185744A:                   var_140 = CVar(var_E4) 'String
  loc_1857451:                   LateIdCallSt
  loc_1857482:                   var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185748A:                   var_1A4 = CVar(CLng(5)) 'Long
  loc_1857499:                   LateIdCallSt
  loc_18574A7:                 End If
  loc_18574C0:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18574C8:                 var_1D4 = CVar(CLng(6)) 'Long
  loc_18574F8:                 var_150 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_18574FF:                 LateIdCallSt
  loc_1857532:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185753A:                 var_1D4 = CVar(CLng(7)) 'Long
  loc_185756A:                 var_150 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1857571:                 LateIdCallSt
  loc_18575A4:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18575AC:                 var_1A4 = CVar(CLng(8)) 'Long
  loc_18575B6:                 var_140 = CVar(CStr(var_A8)) 'String
  loc_18575BD:                 LateIdCallSt
  loc_18575E8:                 var_170 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18575F0:                 var_1D4 = CVar(CLng(9)) 'Long
  loc_1857620:                 var_150 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1857627:                 LateIdCallSt
  loc_1857685:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185768D:                 var_234 = CVar(CLng(&HA)) 'Long
  loc_18576D1:                 var_274 = CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))) 'String
  loc_18576D8:                 LateIdCallSt
  loc_18576FC:               End If
  loc_1857715:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_185771D:               var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1857742:               var_9C = (var_9C + Val(CStr(var_12C.TextMatrix))))
  loc_185776B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1857773:               var_1A4 = CVar(CLng(&HA)) 'Long
  loc_1857798:               var_94 = (var_94 + Val(CStr(var_12C.TextMatrix))))
  loc_18577AF:               var_B0 = (var_B0 + var_D0)
  loc_18577B5:               var_B8 = var_D0
  loc_18577B8:             End If
  loc_18577B8:           End If
  loc_18577B8:         End If
  loc_18577B8:       End If
  loc_18577B8:     End If
  loc_18577BE:     var_86 = (var_86 + 1)
  loc_18577C3:     Set var_12C = Nothing 
  loc_18577CD:     If (var_DA = 0) Then
  loc_18577D4:       var_F8 = CVar(CLng(arg_10)) 'Long
  loc_18577DC:       var_1A4 = CVar(CLng(&HD)) 'Long
  loc_18577E6:       var_108 = CVar(CStr(var_9C)) 'String
  loc_18577EE:       Set var_10C = Me.Fgrid
  loc_18577F4:       LateIdCallSt
  loc_1857805:     Else
  loc_185780C:       var_294 = CVar(var_9C) 'Variant
  loc_1857810:     End If
  loc_1857813:     var_8C.MoveNext
  loc_1857818:     GoTo loc_1855423
  loc_185781B:   End If
  loc_1857820:   Set var_8C = Nothing
  loc_1857828:   Set var_C4 = Nothing
  loc_1857830:   Set var_C0 = Nothing
  loc_1857838:   Set var_D8 = Nothing
  loc_1857840:   Set var_E0 = Nothing
  loc_1857843: End If
  loc_1857843: Exit Sub
End Sub

Public Sub Proc_281_44_1695034
  'Data Table: 537E24
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_184 As Variant
  Dim unk_537E3E As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_1B0 As Variant
  Dim var_1AC As Variant
  Dim var_8C As Recordset15
  Dim var_96 As Integer
  Dim var_90 As Recordset15
  Dim var_94 As Recordset15
  Dim var_1D8 As Variant
  loc_16937E0: On Error Goto loc_169502B
  loc_16937FA: If (Me.RecordCount > 0) Then
  loc_16937FD:   Call Proc_281_50_1028934()
  loc_1693841:   var_E4 = "Select S.Name As MemName,M.* From membill M Left Join SubGroup S On M.MemCode=S.SubCode Where M.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_1693870:   var_184 = var_E4 & "' And M.Site_Code='" & CVar(MemVar_1F92070) & "' And (M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M.LogSite_Code='HO')" 
  loc_169387E:   unk_537E3E.Execute CStr(var_184), var_1A8, -1
  loc_1693889:   Set var_88 = var_1AC
  loc_16938B8:   var_D4 = "Select MR.Description As Facility,M1.* From membill1 M1 Left Join MembershipRevMast MR On M1.FacilityCode=MR.Code Where M1.DocId='"
  loc_1693906:   var_144 = var_D4 & Me.Fields.Item("SearchCode").Value & "' And M1.Type='Revenue' And M1.Site_Code='" & CVar(MemVar_1F92070) & "' And (M1.LogSite_Code='" 
  loc_1693927:   unk_537E3E.Execute CStr(var_144 & CVar(MemVar_1F92078) & "' Or M1.LogSite_Code='HO')"), var_1A8, -1
  loc_1693932:   Set var_8C = var_1AC
  loc_1693993:   var_E4 = "Select R.Name As TaxName,M2.* From membill2 M2 Left Join RevMast R On M2.TaxCode=R.Code Where M2.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_16939C2:   var_184 = var_E4 & "' And M2.Site_Code='" & CVar(MemVar_1F92070) & "' And (M2.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or M2.LogSite_Code='HO') Order By Sno,Sno1" 
  loc_16939D0:   unk_537E3E.Execute CStr(var_184), var_1A8, -1
  loc_16939DB:   Set var_90 = var_1AC
  loc_1693A3C:   var_E4 = "Select R.Name As SunName,MS.* From memSunTran MS Left Join RevMast R On MS.SunCode=R.Code Where MS.DocId='" & Me.Fields.Item("SearchCode").Value 
  loc_1693A6B:   var_184 = var_E4 & "' And MS.Site_Code='" & CVar(MemVar_1F92070) & "' And (MS.LogSite_Code='" & CVar(MemVar_1F92078) & "' Or MS.LogSite_Code='HO') Order By Sno" 
  loc_1693A79:   unk_537E3E.Execute CStr(var_184), var_1A8, -1
  loc_1693A84:   Set var_94 = var_1AC
  loc_1693ABA:   If (var_88.RecordCount > 0) Then
  loc_1693AF9:     Call 0.Method_Proc_281_44_16950340 (CInt(&H1F), var_1B0, Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), Me.Txt, Me.Txt))
  loc_1693B01:     var_1B0.Text = Me.Txt
  loc_1693B40:     var_E4 = "dd/MMM/yyyy"
  loc_1693B67:     Set var_1AC = Me.Txt
  loc_1693B6D:     Call 0.Method_Proc_281_44_16950340 (CInt(&H22), var_1B0, CStr(Format(CVar(var_88.Fields.Item("VDate")), var_E4)))
  loc_1693B75:     var_1B0.Text = 1
  loc_1693BB5:     Proc_6_39_E7C810(var_E4, CVar(var_88.Fields.Item("VNo")))
  loc_1693BCC:     Set var_1AC = Me.Txt
  loc_1693BD2:     Call 0.Method_Proc_281_44_16950340 (CInt(&H20), var_1B0, CStr(var_E4))
  loc_1693BDA:     var_1B0.Text = 1
  loc_1693C27:     Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")))
  loc_1693C6F:     Set var_1AC = Me.Txt
  loc_1693C75:     Call 0.Method_Proc_281_44_16950340 (CInt(&H21), var_1B0)
  loc_1693C7D:     var_1B0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vType")))
  loc_1693CA5:     If (var_8C.RecordCount > 0) Then
  loc_1693CAA:       var_96 = 1
  loc_1693CC0:       Me.Fgrid.Rows = 1
  loc_1693CC8:       ' Referenced from: 1694354
  loc_1693CD7:       If Not(var_8C.EOF) Then
  loc_1693CDE:         Set var_1B8 = Me.Fgrid
  loc_1693CE6:         var_C4 = CVar(CStr(var_96)) 'String
  loc_1693D31:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Facility")), CVar(CLng(1)), CVar(CLng(var_96)), Fgrid.DispID_10000)) 'String
  loc_1693D38:         LateIdCallSt
  loc_1693D81:         Proc_6_39_E7C810(var_E4, CVar(var_8C.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_96)), var_1B8)
  loc_1693D8A:         var_104 = CVar(CStr(var_E4)) 'String
  loc_1693D91:         LateIdCallSt
  loc_1693DDC:         Proc_6_39_E7C810(var_E4, CVar(var_8C.Fields.Item("VNo")), CVar(CLng(7)), CVar(CLng(var_96)), var_1B8)
  loc_1693DE5:         var_104 = CVar(CStr(var_E4)) 'String
  loc_1693DEC:         LateIdCallSt
  loc_1693E39:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")), CVar(CLng(6)), CVar(CLng(var_96)), var_1B8, var_104)) 'String
  loc_1693E40:         LateIdCallSt
  loc_1693E8B:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("vType")), CVar(CLng(8)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1693E92:         LateIdCallSt
  loc_1693EDD:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Type")), CVar(CLng(9)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1693EE4:         LateIdCallSt
  loc_1693F36:         var_E4 = CVar(Proc_6_38_E68A98(var_8C.Fields.Item("FacilityCode").Value, CVar(CLng(&HA)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1693F3D:         LateIdCallSt
  loc_1693F8C:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("TaxStru")), CVar(CLng(&HB)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1693F93:         LateIdCallSt
  loc_1693FDE:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("AcCode")), CVar(CLng(&HC)), CVar(CLng(var_96)), var_1B8, var_E4)) 'String
  loc_1693FE5:         LateIdCallSt
  loc_169401D:         Proc_6_39_E7C810(var_E4, CVar(var_8C.Fields.Item("BaseAmt")), var_1B8, var_E4, var_104)
  loc_1694026:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_169402E:         var_134 = CVar(CLng(2)) 'Long
  loc_1694057:         var_144 = CVar(CStr(Format(var_E4, "0.00"))) 'String
  loc_169405E:         LateIdCallSt
  loc_1694096:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_169409E:         var_134 = CVar(CLng(3)) 'Long
  loc_16940CB:         var_124 = CVar(CStr(Format(CVar(var_8C.Fields.Item("FrPeriod")), "dd/MMM/YYYY"))) 'String
  loc_16940D2:         LateIdCallSt
  loc_1694108:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_1694110:         var_134 = CVar(CLng(5)) 'Long
  loc_169413D:         var_124 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ToPeriod")), "dd/MMM/YYYY"))) 'String
  loc_1694144:         LateIdCallSt
  loc_169418D:         var_1B0 = var_8C.Fields.Item("ToPeriod")
  loc_169419F:         var_E4 = CVar(var_1B0) 'Address
  loc_16941B9:         var_134 = CVar(CLng(var_96)) 'Long
  loc_16941E3:         var_124 = (DateDiff("d", CVar(var_8C.Fields.Item("FrPeriod")), var_E4, 1, 1) + 1)
  loc_16941FA:         LateIdCallSt
  loc_1694240:         Proc_6_39_E7C810(var_E4, CVar(var_8C.Fields.Item("TaxAmt")), var_1B8, CVar(CStr(Format(var_124, "0"))), 1, 1, CVar(CLng(4)))
  loc_1694249:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_1694281:         LateIdCallSt
  loc_16942D2:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ACPosting")), CVar(CLng(&HE)), CVar(CLng(var_96)), var_1B8, CVar(CStr(Format(var_E4, "0.00"))), 1, 1)) 'String
  loc_16942D9:         LateIdCallSt
  loc_1694324:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("AcPostingYN")), CVar(CLng(&HF)), CVar(CLng(var_96)), var_1B8, var_E4, CVar(CLng(&HD)))) 'String
  loc_169432B:         LateIdCallSt
  loc_169433F:         Set var_1B8 = Nothing 
  loc_1694349:         var_96 = (var_96 + 1)
  loc_169434F:         var_8C.MoveNext
  loc_1694354:         GoTo loc_1693CC8
  loc_1694357:       End If
  loc_1694357:     End If
  loc_1694357:     var_B0 = 0
  loc_1694361:     Set var_A0 = Me.Fgrid
  loc_169438E:     If (CLng(Me.Fgrid.Rows) = 1) Then
  loc_1694391:       var_B0 = "1"
  loc_169439B:       Set var_A0 = Me.Fgrid
  loc_16943AC:     End If
  loc_16943BF:     Me.Fgrid.FixedRows = 1
  loc_16943DB:     If (var_90.RecordCount > 0) Then
  loc_16943E0:       var_96 = 1
  loc_16943F6:       Me.FGCat.Rows = 1
  loc_16943FE:       ' Referenced from: 1694872
  loc_169440D:       If Not(var_90.EOF) Then
  loc_1694414:         Set var_1CC = Me.FGCat
  loc_1694417:         var_B0 = vbNullString
  loc_169443C:         var_B0 = "SNo"
  loc_169445F:         Proc_6_39_E7C810(var_E4, CVar(var_90.Fields.Item(var_B0)), CVar(CLng(0)), CVar(CLng(var_96)), FGCat.DispID_10000, var_B0, var_96)
  loc_169446F:         LateIdCallSt
  loc_16944BA:         Proc_6_39_E7C810(var_E4, CVar(var_90.Fields.Item("Sno1")), CVar(CLng(1)), CVar(CLng(var_96)), var_1CC, CVar(CStr(var_E4)), Fgrid.DispID_10000)
  loc_16944CA:         LateIdCallSt
  loc_16944F2:         var_B0 = "DocID"
  loc_1694517:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item(var_B0)), CVar(CLng(2)), CVar(CLng(var_96)), var_1CC, CVar(CStr(var_E4)), var_B0)) 'String
  loc_169451E:         LateIdCallSt
  loc_1694567:         Proc_6_39_E7C810(var_E4, CVar(var_90.Fields.Item("VNo")), CVar(CLng(3)), CVar(CLng(var_96)), var_1CC, var_E4)
  loc_1694577:         LateIdCallSt
  loc_16945C4:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("vType")), CVar(CLng(4)), CVar(CLng(var_96)), var_1CC, CVar(CStr(var_E4)))) 'String
  loc_16945CB:         LateIdCallSt
  loc_169461D:         var_E4 = CVar(Proc_6_38_E68A98(var_90.Fields.Item("FacilityCode").Value, CVar(CLng(5)), CVar(CLng(var_96)), var_1CC, var_E4)) 'String
  loc_1694624:         LateIdCallSt
  loc_1694673:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxCode")), CVar(CLng(6)), CVar(CLng(var_96)), var_1CC, var_E4)) 'String
  loc_169467A:         LateIdCallSt
  loc_16946C5:         var_E4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("TaxName")), CVar(CLng(7)), CVar(CLng(var_96)), var_1CC, var_E4)) 'String
  loc_16946CC:         LateIdCallSt
  loc_1694704:         Proc_6_39_E7C810(var_E4, CVar(var_90.Fields.Item("BaseAmt")), var_1CC, var_E4, Fgrid.DispID_2E)
  loc_169470D:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_1694715:         var_134 = CVar(CLng(8)) 'Long
  loc_1694745:         LateIdCallSt
  loc_1694783:         Proc_6_39_E7C810(var_E4, CVar(var_90.Fields.Item("TaxPer")), var_1CC, CVar(CStr(Format(var_E4, "0.00"))), 1, 1)
  loc_169478C:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_16947C4:         LateIdCallSt
  loc_16947F3:         var_B4 = var_90.Fields.Item("TaxAmt")
  loc_1694802:         Proc_6_39_E7C810(var_E4, CVar(var_B4), var_1CC, CVar(CStr(Format(var_E4, "0.00"))), 1, 1, CVar(CLng(9)))
  loc_169480B:         var_F4 = CVar(CLng(var_96)) 'Long
  loc_1694813:         var_134 = CVar(CLng(&HA)) 'Long
  loc_169483C:         var_144 = CVar(CStr(Format(var_E4, "0.00"))) 'String
  loc_1694843:         LateIdCallSt
  loc_169485D:         Set var_1CC = Nothing 
  loc_1694867:         var_96 = (var_96 + 1)
  loc_169486D:         var_90.MoveNext
  loc_1694872:         GoTo loc_16943FE
  loc_1694875:       End If
  loc_1694875:     End If
  loc_1694875:     var_B0 = 0
  loc_169487F:     Set var_A0 = Me.FGCat
  loc_16948AC:     If (CLng(Me.FGCat.Rows) = 1) Then
  loc_16948AF:       var_B0 = vbNullString
  loc_16948B9:       Set var_A0 = Me.FGCat
  loc_16948CA:     End If
  loc_16948CA:     var_B0 = 1
  loc_16948DD:     Me.FGCat.FixedRows = var_B0
  loc_16948E5:   End If
  loc_16948F9:   If (var_94.RecordCount > 0) Then
  loc_16948FE:     var_96 = 1
  loc_1694901:     ' Referenced from: 1694FFA
  loc_1694907:     var_1B2 = var_94.EOF
  loc_1694910:     If Not(var_1B2) Then
  loc_169491D:       Set var_A0 = Me.LblDummy
  loc_1694923:       Call 0.Method_Proc_281_44_16950348 (var_1B2, var_96, var_96, FGCat.DispID_10000, var_B0, FGCat.DispID_2E, var_B0)
  loc_169492F:       If (var_96 > var_1B2) Then
  loc_169493C:         Set var_A0 = Me.LblDummy
  loc_1694942:         Call 0.Method_Proc_281_44_16950340 (var_96, var_B4, var_1CC, var_144)
  loc_1694953:         Me.LblDummy.Load var_B4
  loc_169496B:         Set var_A0 = Me.LblDummy
  loc_1694971:         Call 0.Method_Proc_281_44_16950340 (var_96, var_B4, 0, 1)
  loc_1694979:         var_B4.Visible = True
  loc_1694985:       End If
  loc_169498F:       Set var_A0 = Me.LblCap
  loc_1694995:       Call 0.Method_Proc_281_44_16950348 (var_1B2, var_96)
  loc_16949A1:       If (var_134 > var_1B2) Then
  loc_16949AE:         Set var_A0 = Me.LblCap
  loc_16949B4:         Call 0.Method_Proc_281_44_16950340 (var_96, var_B4)
  loc_16949C5:         Me.LblCap.Load var_B4
  loc_16949DE:         Set var_1AC = Me.LblCap
  loc_16949E4:         Call 0.Method_Proc_281_44_16950340 (var_96, var_1B0)
  loc_1694A01:         Set var_A0 = Me.LblCap
  loc_1694A07:         Call 0.Method_Proc_281_44_16950340 ((var_96 - 1), var_B4)
  loc_1694A2A:         Set var_1D4 = Me.LblCap
  loc_1694A30:         Call 0.Method_Proc_281_44_16950340 (var_96, var_1D8)
  loc_1694A38:         var_1D8.Top = ((var_B4.Top + var_1B0.Height) + CDbl(&HF))
  loc_1694A4C:       End If
  loc_1694A56:       Set var_A0 = Me.TxtGt
  loc_1694A5C:       Call 0.Method_Proc_281_44_16950348 (var_1B2, var_96)
  loc_1694A68:       If (var_F4 > var_1B2) Then
  loc_1694A75:         Set var_A0 = Me.TxtGt
  loc_1694A7B:         Call 0.Method_Proc_281_44_16950340 (var_96)
  loc_1694A8C:         Me.TxtGt.Load var_B4
  loc_1694AA5:         Set var_1AC = Me.TxtGt
  loc_1694AAB:         Call 0.Method_Proc_281_44_16950340 (var_96, var_1B0)
  loc_1694AC8:         Set var_A0 = Me.TxtGt
  loc_1694ACE:         Call 0.Method_Proc_281_44_16950340 ((var_96 - 1), var_B4)
  loc_1694AF1:         Set var_1D4 = Me.TxtGt
  loc_1694AF7:         Call 0.Method_Proc_281_44_16950340 (var_96, var_1D8)
  loc_1694AFF:         var_1D8.Top = ((var_B4.Top + var_1B0.Height) + CDbl(&HF))
  loc_1694B13:       End If
  loc_1694B57:       If (Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunCode"))) = MemVar_1F92070 & "TOT") Then
  loc_1694B71:         var_B4 = var_94.Fields.Item("SunCode")
  loc_1694B8F:         Set var_1AC = Me.LblCap
  loc_1694B95:         Call 0.Method_Proc_281_44_16950340 (var_96, var_1B0)
  loc_1694B9D:         var_1B0.Tag = Proc_6_38_E68A98(CVar(var_B4))
  loc_1694BDF:         Set var_A0 = Me.LblCap
  loc_1694BE5:         Call 0.Method_Proc_281_44_16950340 (var_96, var_B4)
  loc_1694BED:         var_B4.Caption = CStr(StrConv("Total", 3, 0))
  loc_1694C62:         Set var_1AC = Me.TxtGt
  loc_1694C68:         Call 0.Method_Proc_281_44_16950340 (var_96, var_1B0, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunAmt")))), "0.00")))
  loc_1694C70:         var_1B0.Text = 1
  loc_1694C93:       Else
  loc_1694CD7:         If (Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunCode")), 1) = MemVar_1F92070 & "NET") Then
  loc_1694CF1:           var_B4 = var_94.Fields.Item("SunCode")
  loc_1694D0F:           Set var_1AC = Me.LblCap
  loc_1694D15:           Call 0.Method_Proc_281_44_16950340 (var_96, var_1B0)
  loc_1694D1D:           var_1B0.Tag = Proc_6_38_E68A98(CVar(var_B4))
  loc_1694D5F:           Set var_A0 = Me.LblCap
  loc_1694D65:           Call 0.Method_Proc_281_44_16950340 (var_96, var_B4)
  loc_1694D6D:           var_B4.Caption = CStr(StrConv("Net Amount", 3, 0))
  loc_1694DE2:           Set var_1AC = Me.TxtGt
  loc_1694DE8:           Call 0.Method_Proc_281_44_16950340 (var_96, var_1B0, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunAmt")))), "0.00")))
  loc_1694DF0:           var_1B0.Text = 1
  loc_1694E13:         Else
  loc_1694E48:           Set var_1AC = Me.LblCap
  loc_1694E4E:           Call 0.Method_Proc_281_44_16950340 (var_96, var_1B0)
  loc_1694E56:           var_1B0.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunCode")), 1)
  loc_1694EBE:           Set var_1AC = Me.LblCap
  loc_1694EC4:           Call 0.Method_Proc_281_44_16950340 (var_96, var_1B0)
  loc_1694ECC:           var_1B0.Caption = CStr(StrConv(CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SunName")))), 3, 0))
  loc_1694F01:           var_B4 = var_94.Fields.Item("SunAmt")
  loc_1694F49:           Set var_1AC = Me.TxtGt
  loc_1694F4F:           Call 0.Method_Proc_281_44_16950340 (var_96, var_1B0, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4))), "0.00")))
  loc_1694F57:           var_1B0.Text = 1
  loc_1694F77:         End If
  loc_1694F77:       End If
  loc_1694F83:       Set var_A0 = Me.LblDummy
  loc_1694F89:       Call 0.Method_Proc_281_44_16950340 (var_96, var_B4, 0)
  loc_1694F91:       var_B4.Visible = True
  loc_1694FA9:       Set var_A0 = Me.LblCap
  loc_1694FAF:       Call 0.Method_Proc_281_44_16950340 (var_96, var_B4)
  loc_1694FB7:       var_B4.Visible = True
  loc_1694FCF:       Set var_A0 = Me.TxtGt
  loc_1694FD5:       Call 0.Method_Proc_281_44_16950340 (var_96, var_B4)
  loc_1694FDD:       var_B4.Visible = True
  loc_1694FEF:       var_96 = (var_96 + 1)
  loc_1694FF5:       var_94.MoveNext
  loc_1694FFA:       GoTo loc_1694901
  loc_1694FFD:     End If
  loc_1694FFD:   End If
  loc_1695000: Else
  loc_1695000:   Call Proc_281_50_1028934(var_96)
  loc_1695005: End If
  loc_1695005: Call Proc_281_54_EF882C(var_B4)
  loc_169500F: Set var_88 = Nothing
  loc_1695017: Set var_8C = Nothing
  loc_169501F: Set var_90 = Nothing
  loc_1695027: Set var_94 = Nothing
  loc_169502A: Exit Sub
  loc_169502B: ' Referenced from: 16937E0
  loc_169502B: Proc_6_60_E62BC4()
  loc_1695030: Exit Sub
End Sub

Public Sub Proc_281_45_1427940
  'Data Table: 537E24
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_B8 As String
  Dim unk_537E3E As Connection15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_88 As Recordset15
  Dim var_8E As Integer
  Dim var_E0 As Variant
  Dim var_DC As Variant
  Dim var_B0 As String
  Dim var_8C As Recordset15
  Dim var_F0 As Variant
  Dim var_98 As Double
  Dim var_15C As Variant
  Dim var_118 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_1BC As Variant
  loc_1426ED4: var_9C = "Select MR.Code,MR.Description,M.Nature,M.Appdate,M.Amount,MR.AcountYN,MR.AcCode,MR.ACPosting,MR.TaxStru from (MemRevWise M Left Join MembershipRevMast MR on M.Revcode=MR.code) Where MR.Site_Code='" & MemVar_1F92070
  loc_1426EFA: Set var_A8 = Me.Txt
  loc_1426F00: Call 0.Method_Proc_281_45_14279400 (CInt(0), var_AC, var_B0, var_9C & "' and (MR.LOGSITE_CODE='" & MemVar_1F92078 & "' or MR.LOGSITE_CODE='HO') and M.MemCode='")
  loc_1426F08: var_DC = var_AC.Tag
  loc_1426F11: var_B8 = -1 & var_B0
  loc_1426F21: unk_537E3E.Execute var_B8 & "'", var_E0, 
  loc_1426F2C: Set var_88 = var_E0
  loc_1426F4C: Call Proc_281_50_1028934()
  loc_1426F56: var_9C = CStr(MemVar_1F920EC)
  loc_1426F64: Set var_A8 = Me.Txt
  loc_1426F6A: Call 0.Method_Proc_281_45_14279400 (CInt(&H22), var_AC)
  loc_1426F72: var_AC.Text = var_9C
  loc_1426F87: Call Proc_281_41_10F03D0(MemVar_1F92044)
  loc_1426F9A: Set var_A8 = Me.Txt
  loc_1426FA0: Call 0.Method_Proc_281_45_14279400 (CInt(&H1F), var_AC)
  loc_1426FA8: var_AC.Text = var_9C
  loc_1426FC6: Me.Fgrid.Redraw = False
  loc_1426FE1: Me.Fgrid.Rows = 1
  loc_1426FFD: If (var_88.RecordCount > 0) Then
  loc_1427002:   var_8E = 1
  loc_1427005:   ' Referenced from: 14278C1
  loc_1427014:   If Not(var_88.EOF) Then
  loc_1427035:     Set var_A8 = Me.Txt
  loc_142703B:     Call 0.Method_Proc_281_45_14279400 (CInt(0), var_AC, var_9C, "Select max(ToPeriod) ToPeriod from MemBill1 Inner Join MemBill On MemBill.DocId=MemBill1.DocId where MemBill.MemCode='", var_118)
  loc_1427043:     -1 = var_AC.Tag
  loc_1427089:     var_B8 = var_8E & Proc_6_38_E68A98(CVar(var_88.Fields.Item("Code")), var_11C & var_9C & "' And MemBill1.FacilityCode='") & "' and MemBill1.Site_Code='"
  loc_14270AE:     unk_537E3E.Execute var_B8 & MemVar_1F92070 & "' and (MemBill1.LOGSITE_CODE='" & MemVar_1F92078 & "' or MemBill1.LOGSITE_CODE='HO')", var_9C, 
  loc_14270B9:     Set var_8C = var_11C
  loc_1427113:     If IsNull(CVar(var_8C.Fields.Item("ToPeriod"))) Then
  loc_1427167:       Me.TxtFrPeriod.Text = CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/YYYY"))
  loc_1427182:     Else
  loc_14271EA:       If (var_8C.Fields.Item("ToPeriod").Value < var_88.Fields.Item("AppDate").Value) Then
  loc_142723E:         Me.TxtFrPeriod.Text = CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/MMM/YYYY"))
  loc_1427259:       Else
  loc_1427286:         var_118 = DateAdd("d", CDbl(1), CVar(var_8C.Fields.Item("ToPeriod")))
  loc_14272AE:         var_9C = CStr(Format(var_118, "dd/MMM/YYYY"))
  loc_14272BC:         Me.TxtFrPeriod.Text = var_9C
  loc_14272D6:       End If
  loc_14272D6:     End If
  loc_14272FC:     Proc_6_39_E7C810(var_118, CVar(var_88.Fields.Item("Amount")), 1, 1)
  loc_1427305:     var_98 = CSng(var_118)
  loc_1427319:     If (var_98 <> CDbl(0)) Then
  loc_1427321:       var_DC = CVar(CStr(var_8E)) 'String
  loc_1427329:       Set var_A8 = Me.Fgrid
  loc_1427376:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")), CVar(CLng(1)), CVar(CLng(var_8E)), Fgrid.DispID_10000, CVar(var_88.Fields.Item("Description")))) 'String
  loc_142737E:       Set var_E0 = Me.Fgrid
  loc_1427384:       LateIdCallSt
  loc_142739E:       var_14C = CVar(CLng(var_8E)) 'Long
  loc_14273A6:       var_16C = CVar(CLng(2)) 'Long
  loc_14273D4:       var_12C = CVar(CStr(Format(var_98, "0.00"))) 'String
  loc_14273DC:       Set var_A8 = Me.Fgrid
  loc_14273E2:       LateIdCallSt
  loc_1427401:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_1427409:       var_15C = CVar(CLng(3)) 'Long
  loc_1427436:       var_13C = CVar(CStr(Format(CVar(Me.TxtFrPeriod), "dd/MMM/YYYY"))) 'String
  loc_142743E:       Set var_A8 = Me.Fgrid
  loc_1427444:       LateIdCallSt
  loc_1427479:       var_14C = CVar(CLng(var_8E)) 'Long
  loc_1427481:       var_16C = CVar(CLng(5)) 'Long
  loc_14274A3:       var_12C = (DateAdd("m", CDbl(1), CVar(Me.TxtFrPeriod)) - 1)
  loc_14274BA:       var_1BC = CVar(CStr(Format(Format(CVar(Me.TxtFrPeriod), "dd/MMM/YYYY"), "dd/MMM/YYYY"))) 'String
  loc_14274C2:       Set var_A8 = Me.Fgrid
  loc_14274C8:       LateIdCallSt
  loc_1427523:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_142752B:       var_15C = CVar(CLng(4)) 'Long
  loc_1427554:       var_1BC = CVar(CStr(Format(DateDiff("d", CVar(Me.TxtFrPeriod), DateAdd("m", CDbl(1), CVar(Me.TxtFrPeriod)), 1, 1), "0"))) 'String
  loc_142755C:       Set var_A8 = Me.Fgrid
  loc_1427562:       LateIdCallSt
  loc_14275A2:       var_A8 = var_88.Fields
  loc_14275BB:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_A8.Item("AcCode")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_A8, var_1BC, 1, 1)) 'String
  loc_14275C9:       LateIdCallSt
  loc_1427618:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ACPosting")), CVar(CLng(&HE)), CVar(CLng(var_8E)), Me.Fgrid, var_118, CVar(CLng(&HE)))) 'String
  loc_1427626:       LateIdCallSt
  loc_1427664:       var_AC = var_88.Fields.Item("AcountYN")
  loc_1427675:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_AC), CVar(CLng(&HF)), CVar(CLng(var_8E)), Me.Fgrid, var_118)) 'String
  loc_1427683:       LateIdCallSt
  loc_14276B8:       Set var_A8 = Me.Txt
  loc_14276BE:       Call 0.Method_Proc_281_45_14279400 (CInt(&H1F), var_AC, var_9C, CVar(CLng(6)), CVar(CLng(var_8E)), Me.Fgrid)
  loc_14276C6:       var_118 = var_AC.Text
  loc_14276CE:       var_DC = CVar(var_9C) 'String
  loc_14276DC:       LateIdCallSt
  loc_142770F:       Set var_A8 = Me.Txt
  loc_1427715:       Call 0.Method_Proc_281_45_14279400 (CInt(&H20), var_AC, var_9C, CVar(CLng(7)), CVar(CLng(var_8E)), Me.Fgrid)
  loc_142771D:       var_DC = var_AC.Text
  loc_1427725:       var_DC = CVar(var_9C) 'String
  loc_142772D:       Set var_E0 = Me.Fgrid
  loc_1427733:       LateIdCallSt
  loc_142774B:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1427762:       Set var_A8 = Me.Fgrid
  loc_1427768:       LateIdCallSt
  loc_1427787:       var_CC = "Code"
  loc_1427793:       var_A8 = var_88.Fields
  loc_14277AC:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_A8.Item(var_CC)), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_A8, vbNullString, CVar(CLng(&H10)), var_CC)) 'String
  loc_14277BA:       LateIdCallSt
  loc_14277F8:       var_AC = var_88.Fields.Item("TaxStru")
  loc_1427809:       var_118 = CVar(Proc_6_38_E68A98(CVar(var_AC), CVar(CLng(&HB)), CVar(CLng(var_8E)), Me.Fgrid, var_118, Me.Fgrid)) 'String
  loc_1427817:       LateIdCallSt
  loc_142784C:       Set var_A8 = Me.Txt
  loc_1427852:       Call 0.Method_Proc_281_45_14279400 (CInt(&H21), var_AC, var_9C, CVar(CLng(8)), CVar(CLng(var_8E)), Me.Fgrid)
  loc_142785A:       var_118 = var_AC.Text
  loc_1427862:       var_DC = CVar(var_9C) 'String
  loc_142786A:       Set var_E0 = Me.Fgrid
  loc_1427870:       LateIdCallSt
  loc_1427888:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_1427890:       var_14C = CVar(CLng(9)) 'Long
  loc_1427895:       var_16C = "Revenue"
  loc_142789F:       Set var_A8 = Me.Fgrid
  loc_14278A5:       LateIdCallSt
  loc_14278B6:       var_8E = (var_8E + 1)
  loc_14278B9:     End If
  loc_14278BC:     var_88.MoveNext
  loc_14278C1:     GoTo loc_1427005
  loc_14278C4:   End If
  loc_14278C4: End If
  loc_14278E3: If (CLng(Me.Fgrid.Rows) = 1) Then
  loc_14278E6:   var_CC = "1"
  loc_14278F0:   Set var_A8 = Me.Fgrid
  loc_1427901: End If
  loc_1427914: Me.Fgrid.FixedRows = 1
  loc_142791C: var_CC = True
  loc_1427924: Set var_A8 = Me.Fgrid
  loc_142792A: var_A8.Redraw = var_CC
  loc_1427932: Call Proc_281_42_15331B0(Fgrid.DispID_10000, var_CC, var_8E, var_A8, var_16C, var_14C, var_CC)
  loc_142793C: Set var_88 = Nothing
  loc_142793F: Exit Sub
End Sub

Public Sub Proc_281_46_DFB1D4
  'Data Table: 537E24
  loc_DFB1D0: Exit Sub
End Sub

Public Sub Proc_281_47_DFB138
  'Data Table: 537E24
  loc_DFB134: Exit Sub
End Sub

Public Sub Proc_281_48_10C5178
  'Data Table: 537E24
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Variant
  Dim var_110 As Variant
  loc_10C4E92: Set var_8C = Me.Txt
  loc_10C4E98: Call 0.Method_Proc_281_48_10C5178C (var_8E, var_86)
  loc_10C4EA8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10C4EBE:   Set var_8C = Me.Txt
  loc_10C4EC4:   Call 0.Method_Proc_281_48_10C51780 (CInt(var_86), var_98)
  loc_10C4ECC:   var_98.Text = vbNullString
  loc_10C4EE8:   Set var_8C = Me.Txt
  loc_10C4EEE:   Call 0.Method_Proc_281_48_10C51780 (CInt(var_86), var_98)
  loc_10C4EF6:   var_98.Tag = vbNullString
  loc_10C4F05: Next var_92 'Byte
  loc_10C4F29: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_10C4F3E: Me.ImgMemPhoto.Picture = var_8C
  loc_10C4F57: Me.ImgMemPhoto.Tag = vbNullString
  loc_10C4F6B: Me.ImgMemPhoto.Visible = True
  loc_10C4F80: Me.LblOpBalType.Caption = vbNullString
  loc_10C4F95: Me.LblCurBalType.Caption = vbNullString
  loc_10C4FAA: Me.txtCurrBal.Text = vbNullString
  loc_10C4FC1: Me.txtCurrBal.BackColor = -2147483643
  loc_10C4FD8: Me.txtCurrBal.ForeColor = &HC00000
  loc_10C4FF4: Call 0.Method_Proc_281_48_10C51788 (var_8E, var_86)
  loc_10C5001: For var_F0 = Me.LblCap To CByte(var_8E): CByte(2) = var_F0 'Byte
  loc_10C5014:   Set var_8C = Me.LblCap
  loc_10C501A:   Call 0.Method_Proc_281_48_10C51780 (CInt(var_86), var_98)
  loc_10C502B:   Me.LblCap.Unload var_98
  loc_10C5044:   Set var_8C = Me.TxtGt
  loc_10C504A:   Call 0.Method_Proc_281_48_10C51780 (CInt(var_86), var_98)
  loc_10C505B:   Me.TxtGt.Unload var_98
  loc_10C506A: Next var_F0 'Byte
  loc_10C507C: Set var_8C = Me.TxtGt
  loc_10C5082: Call 0.Method_Proc_281_48_10C51780 (1, var_98)
  loc_10C508A: var_98.Text = vbNullString
  loc_10C50A9: Me.Fgrid.Rows = 1
  loc_10C50C6: var_110 = CVar(CStr(CLng(Me.Fgrid.Rows))) 'String
  loc_10C50CE: Set var_98 = Me.Fgrid
  loc_10C50FD: Me.Fgrid.FixedRows = 1
  loc_10C5118: Me.FGCat.Rows = 1
  loc_10C5135: var_110 = CVar(CStr(CLng(Me.FGCat.Rows))) 'String
  loc_10C513D: Set var_98 = Me.FGCat
  loc_10C516C: Me.FGCat.FixedRows = 1
  loc_10C5174: Exit Sub
End Sub

Public Sub Proc_281_49_F125CC
  'Data Table: 537E24
  Dim var_98 As TextBox
  loc_F124DE: Set var_8C = Me.Txt
  loc_F124E4: Call 0.Method_Proc_281_49_F125CCC (var_8E, var_86)
  loc_F124F4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F12509:   Set var_8C = Me.Txt
  loc_F1250F:   Call 0.Method_Proc_281_49_F125CC0 (CInt(var_86), var_98)
  loc_F12517:   var_98.Enabled = False
  loc_F12526: Next var_92 'Byte
  loc_F12539: Set var_8C = Me.Txt
  loc_F1253F: Call 0.Method_Proc_281_49_F125CC0 (CInt(&H1F), var_98)
  loc_F12547: var_98.Enabled = False
  loc_F12560: Set var_8C = Me.Txt
  loc_F12566: Call 0.Method_Proc_281_49_F125CC0 (CInt(&H20), var_98)
  loc_F1256E: var_98.Enabled = False
  loc_F12587: Set var_8C = Me.Txt
  loc_F1258D: Call 0.Method_Proc_281_49_F125CC0 (CInt(&H21), var_98)
  loc_F12595: var_98.Enabled = False
  loc_F125AE: Set var_8C = Me.Txt
  loc_F125B4: Call 0.Method_Proc_281_49_F125CC0 (CInt(&H22), var_98)
  loc_F125BC: var_98.Enabled = False
  loc_F125C8: Exit Sub
End Sub

Public Sub Proc_281_50_1028934
  'Data Table: 537E24
  Dim var_90 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_DC As Variant
  loc_102870A: Set var_8C = Me.Txt
  loc_1028710: Call 0.Method_Proc_281_50_10289340 (CInt(&H1F), var_90)
  loc_1028718: var_90.Text = vbNullString
  loc_1028732: Set var_8C = Me.Txt
  loc_1028738: Call 0.Method_Proc_281_50_10289340 (CInt(&H20), var_90)
  loc_1028740: var_90.Text = vbNullString
  loc_102875A: Set var_8C = Me.Txt
  loc_1028760: Call 0.Method_Proc_281_50_10289340 (CInt(&H21), var_90)
  loc_1028768: var_90.Text = vbNullString
  loc_1028782: Set var_8C = Me.Txt
  loc_1028788: Call 0.Method_Proc_281_50_10289340 (CInt(&H22), var_90)
  loc_1028790: var_90.Text = vbNullString
  loc_10287AA: Set var_8C = Me.LblCap
  loc_10287B0: Call 0.Method_Proc_281_50_10289348 (var_92, var_86)
  loc_10287BD: For var_96 =  To CByte(var_92): CByte(2) = var_96 'Byte
  loc_10287D0:   Set var_8C = Me.LblCap
  loc_10287D6:   Call 0.Method_Proc_281_50_10289340 (CInt(var_86))
  loc_10287E7:   Me.LblCap.Unload var_90
  loc_1028800:   Set var_8C = Me.TxtGt
  loc_1028806:   Call 0.Method_Proc_281_50_10289340 (CInt(var_86), var_90)
  loc_1028817:   Me.TxtGt.Unload var_90
  loc_1028826: Next var_96 'Byte
  loc_1028838: Set var_8C = Me.TxtGt
  loc_102883E: Call 0.Method_Proc_281_50_10289340 (1, var_90)
  loc_1028846: var_90.Text = vbNullString
  loc_1028865: Me.Fgrid.Rows = 1
  loc_1028882: var_DC = CVar(CStr(CLng(Me.Fgrid.Rows))) 'String
  loc_102888A: Set var_90 = Me.Fgrid
  loc_10288B9: Me.Fgrid.FixedRows = 1
  loc_10288D4: Me.FGCat.Rows = 1
  loc_10288F1: var_DC = CVar(CStr(CLng(Me.FGCat.Rows))) 'String
  loc_10288F9: Set var_90 = Me.FGCat
  loc_1028928: Me.FGCat.FixedRows = 1
  loc_1028930: Exit Sub
End Sub

Public Sub Proc_281_51_125E810
  'Data Table: 537E24
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_100 As MSHFlexGrid
  loc_125E28C: Set var_88 = Me.Fgrid
  loc_125E29B: var_88.Width = CVar(CDbl(8400))
  loc_125E2AC: var_88.Cols = &H11
  loc_125E2BD: var_88.Rows = 2
  loc_125E2CE: var_88.FixedCols = 1
  loc_125E2E7: global_52 = CStr(CLng(var_88.BackColor))
  loc_125E2F1: var_98 = 0
  loc_125E2FD: var_CC = CVar(CLng(0)) 'Long
  loc_125E302: var_EC = "SNo"
  loc_125E30B: LateIdCallSt
  loc_125E316: var_98 = CVar(CLng(0)) 'Long
  loc_125E31B: var_CC = &H1F4
  loc_125E327: LateIdCallSt
  loc_125E32F: var_98 = 0
  loc_125E33B: var_CC = CVar(CLng(1)) 'Long
  loc_125E340: var_EC = "Description"
  loc_125E349: LateIdCallSt
  loc_125E354: var_98 = CVar(CLng(1)) 'Long
  loc_125E359: var_CC = &HDAC
  loc_125E365: LateIdCallSt
  loc_125E36D: var_98 = 0
  loc_125E379: var_CC = CVar(CLng(2)) 'Long
  loc_125E37E: var_EC = "Amount"
  loc_125E387: LateIdCallSt
  loc_125E392: var_98 = CVar(CLng(2)) 'Long
  loc_125E397: var_CC = &H4B0
  loc_125E3A3: LateIdCallSt
  loc_125E3AE: var_98 = CVar(CLng(2)) 'Long
  loc_125E3B9: var_CC = CVar(CInt(7)) 'Integer
  loc_125E3C0: LateIdCallSt
  loc_125E3CB: var_98 = CVar(CLng(2)) 'Long
  loc_125E3D6: var_CC = CVar(CInt(7)) 'Integer
  loc_125E3DD: LateIdCallSt
  loc_125E3E5: var_98 = 0
  loc_125E3F1: var_CC = CVar(CLng(3)) 'Long
  loc_125E3F6: var_EC = "Date From"
  loc_125E3FF: LateIdCallSt
  loc_125E40A: var_98 = CVar(CLng(3)) 'Long
  loc_125E40F: var_CC = &H4B0
  loc_125E41B: LateIdCallSt
  loc_125E426: var_98 = CVar(CLng(3)) 'Long
  loc_125E431: var_CC = CVar(CInt(1)) 'Integer
  loc_125E438: LateIdCallSt
  loc_125E440: var_98 = 0
  loc_125E44C: var_CC = CVar(CLng(4)) 'Long
  loc_125E451: var_EC = "Days"
  loc_125E45A: LateIdCallSt
  loc_125E465: var_98 = CVar(CLng(4)) 'Long
  loc_125E46A: var_CC = &H2BC
  loc_125E476: LateIdCallSt
  loc_125E481: var_98 = CVar(CLng(4)) 'Long
  loc_125E48C: var_CC = CVar(CInt(4)) 'Integer
  loc_125E493: LateIdCallSt
  loc_125E49E: var_98 = CVar(CLng(4)) 'Long
  loc_125E4A9: var_CC = CVar(CInt(4)) 'Integer
  loc_125E4B0: LateIdCallSt
  loc_125E4B8: var_98 = 0
  loc_125E4C4: var_CC = CVar(CLng(5)) 'Long
  loc_125E4C9: var_EC = "Date To"
  loc_125E4D2: LateIdCallSt
  loc_125E4DD: var_98 = CVar(CLng(5)) 'Long
  loc_125E4E2: var_CC = &H4B0
  loc_125E4EE: LateIdCallSt
  loc_125E4F9: var_98 = CVar(CLng(5)) 'Long
  loc_125E504: var_CC = CVar(CInt(1)) 'Integer
  loc_125E50B: LateIdCallSt
  loc_125E513: var_98 = 0
  loc_125E51F: var_CC = CVar(CLng(6)) 'Long
  loc_125E524: var_EC = "Docid"
  loc_125E52D: LateIdCallSt
  loc_125E538: var_98 = CVar(CLng(6)) 'Long
  loc_125E53D: var_CC = 0
  loc_125E549: LateIdCallSt
  loc_125E551: var_98 = 0
  loc_125E55D: var_CC = CVar(CLng(7)) 'Long
  loc_125E562: var_EC = "Bill No"
  loc_125E56B: LateIdCallSt
  loc_125E576: var_98 = CVar(CLng(7)) 'Long
  loc_125E57B: var_CC = 0
  loc_125E587: LateIdCallSt
  loc_125E58F: var_98 = 0
  loc_125E59B: var_CC = CVar(CLng(8)) 'Long
  loc_125E5A0: var_EC = "VType"
  loc_125E5A9: LateIdCallSt
  loc_125E5B4: var_98 = CVar(CLng(8)) 'Long
  loc_125E5B9: var_CC = 0
  loc_125E5C5: LateIdCallSt
  loc_125E5CD: var_98 = 0
  loc_125E5D9: var_CC = CVar(CLng(9)) 'Long
  loc_125E5DE: var_EC = "Type"
  loc_125E5E7: LateIdCallSt
  loc_125E5F2: var_98 = CVar(CLng(9)) 'Long
  loc_125E5F7: var_CC = 0
  loc_125E603: LateIdCallSt
  loc_125E60B: var_98 = 0
  loc_125E617: var_CC = CVar(CLng(&HA)) 'Long
  loc_125E61C: var_EC = "FacilityCode"
  loc_125E625: LateIdCallSt
  loc_125E630: var_98 = CVar(CLng(&HA)) 'Long
  loc_125E635: var_CC = 0
  loc_125E641: LateIdCallSt
  loc_125E649: var_98 = 0
  loc_125E655: var_CC = CVar(CLng(&HB)) 'Long
  loc_125E65A: var_EC = "TaxStruCode"
  loc_125E663: LateIdCallSt
  loc_125E66E: var_98 = CVar(CLng(&HB)) 'Long
  loc_125E673: var_CC = 0
  loc_125E67F: LateIdCallSt
  loc_125E687: var_98 = 0
  loc_125E693: var_CC = CVar(CLng(&HC)) 'Long
  loc_125E698: var_EC = "AcCode"
  loc_125E6A1: LateIdCallSt
  loc_125E6AC: var_98 = CVar(CLng(&HC)) 'Long
  loc_125E6B1: var_CC = 0
  loc_125E6BD: LateIdCallSt
  loc_125E6C5: var_98 = 0
  loc_125E6D1: var_CC = CVar(CLng(&HD)) 'Long
  loc_125E6D6: var_EC = "Tax Amt"
  loc_125E6DF: LateIdCallSt
  loc_125E6EA: var_98 = CVar(CLng(&HD)) 'Long
  loc_125E6EF: var_CC = 0
  loc_125E6FB: LateIdCallSt
  loc_125E703: var_98 = 0
  loc_125E70F: var_CC = CVar(CLng(&HE)) 'Long
  loc_125E714: var_EC = "AcPosting"
  loc_125E71D: LateIdCallSt
  loc_125E728: var_98 = CVar(CLng(&HE)) 'Long
  loc_125E72D: var_CC = 0
  loc_125E739: LateIdCallSt
  loc_125E741: var_98 = 0
  loc_125E74D: var_CC = CVar(CLng(&HF)) 'Long
  loc_125E752: var_EC = "AcPostingYN"
  loc_125E75B: LateIdCallSt
  loc_125E766: var_98 = CVar(CLng(&HF)) 'Long
  loc_125E76B: var_CC = 0
  loc_125E777: LateIdCallSt
  loc_125E77F: var_98 = 0
  loc_125E78B: var_CC = CVar(CLng(&H10)) 'Long
  loc_125E790: var_EC = "OutletCode"
  loc_125E799: LateIdCallSt
  loc_125E7A4: var_98 = CVar(CLng(&H10)) 'Long
  loc_125E7A9: var_CC = 0
  loc_125E7B5: LateIdCallSt
  loc_125E7C9: var_88.FixedRows = 1
  loc_125E7D0: Set var_88 = Nothing 
  loc_125E7DE: var_98 = CVar(CLng(7)) 'Long
  loc_125E7E3: var_CC = &H7D0
  loc_125E7EF: LateIdCallSt
  loc_125E803: Me.FGCat.Cols = &HB
  loc_125E80A: Set var_100 = Nothing 
  loc_125E80E: Exit Sub
End Sub

Public Sub Proc_281_52_E44500
  'Data Table: 537E24
  loc_E444DC: Set var_88 = Me.TopCtrl1
  loc_E444E2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_E444FB: If (CStr() = "Browse") Then
  loc_E444FE:   Exit Sub
  loc_E444FF: End If
  loc_E444FF: Exit Sub
End Sub

Public Sub Proc_281_53_1653088
  'Data Table: 537E24
  Dim var_9E As Integer
  Dim var_A8 As Variant
  Dim var_B0 As String
  Dim var_B4 As String
  Dim unk_537E3E As Connection15
  Dim var_88 As Recordset15
  Dim var_D8 As Variant
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_94 As Double
  Dim var_15C As Label
  Dim var_11C As Variant
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_144 As TextBox
  Dim var_14C As String
  Dim var_120 As Variant
  Dim var_128 As Fields15
  Dim var_1A0 As TextBox
  Dim var_1A8 As TextBox
  Dim var_A4 As Fields15
  Dim var_1A4 As Label
  Dim var_F8 As Variant
  Dim var_224 As Integer
  Dim var_AC As String
  Dim var_1F4 As Variant
  Dim var_E8 As Recordset15
  Dim var_148 As String
  loc_1651A86: var_9E = 1
  loc_1651AA7: Set var_A4 = Me.Txt
  loc_1651AAD: Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_AC, "Select Sum(BaseAmt) as BaseAmt  from MemBill1 where Type='Outlet' and Docid='")
  loc_1651AB5: var_D4 = var_A8.Text
  loc_1651ABE: var_B0 = -1 & var_AC
  loc_1651ACE: unk_537E3E.Execute var_B0 & "'", var_D8, var_9E
  loc_1651AD9: Set var_88 = var_D8
  loc_1651B05: If (var_88.RecordCount > 0) Then
  loc_1651B0F:   Set var_A4 = Me.TxtGt
  loc_1651B15:   Call 0.Method_Proc_281_53_16530888 (var_DE)
  loc_1651B27:   Set var_A8 = Me.TxtGt
  loc_1651B2D:   Call 0.Method_Proc_281_53_16530880 (var_DE, var_D8)
  loc_1651B55:   var_E4 = var_88.Fields
  loc_1651B6C:   Proc_6_39_E7C810(var_F8, CVar(var_E4.Item("BaseAmt")))
  loc_1651B74:   var_118 = (CVar(Val(var_D8.Text)) - var_F8)
  loc_1651B79:   var_94 = CSng(var_118)
  loc_1651B94: Else
  loc_1651B9B:   Set var_A4 = Me.TxtGt
  loc_1651BA1:   Call 0.Method_Proc_281_53_16530888 (var_DE)
  loc_1651BB3:   Set var_A8 = Me.TxtGt
  loc_1651BB9:   Call 0.Method_Proc_281_53_16530880 (var_DE, var_D8)
  loc_1651BCE:   var_94 = Val(var_D8.Text)
  loc_1651BDD: End If
  loc_1651BEB: Set var_A4 = Me.Txt
  loc_1651BF1: Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_150)
  loc_1651C0C: Set var_D8 = Me.Txt
  loc_1651C12: Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_E4)
  loc_1651C1A: var_158 = var_E4.Text
  loc_1651C3F: Set var_E8 = Me.Txt
  loc_1651C45: Call 0.Method_Proc_281_53_16530880 (CInt(&H22), var_11C)
  loc_1651C60: Set var_120 = Me.Txt
  loc_1651C66: Call 0.Method_Proc_281_53_16530880 (CInt(0), var_124)
  loc_1651C6E: var_AC = var_124.Tag
  loc_1651C81: Set var_128 = Me.Txt
  loc_1651C87: Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_12C)
  loc_1651CA2: Set var_140 = Me.Txt
  loc_1651CA8: Call 0.Method_Proc_281_53_16530880 (CInt(var_13C), var_144)
  loc_1651CB0: var_148 = var_144.Text
  loc_1651CC2: var_19C = 0
  loc_1651CCD: var_198 = 0
  loc_1651CD8: var_194 = 0
  loc_1651CE1: var_190 = "A"
  loc_1651D01: var_14C = "Against bill no : " & var_12C.Text & " For "
  loc_1651D0F: var_180 = vbNullString
  loc_1651D53: Proc_6_141_12E1E18(MemVar_1F92044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_11C.Text))
  loc_1651D9F: var_9E = (var_9E + 1)
  loc_1651DC0: Set var_A4 = Me.Txt
  loc_1651DC6: Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_AC, "Select Sum(TaxAmt) as BaseAmt,max(Accode) as AcCode from MemBILL2 Inner join Revmast on revmast.code=Membill2.TaxCode Where Docid='", Now, -1, var_D8)
  loc_1651DCE: var_9E = var_A8.Text
  loc_1651DE7: unk_537E3E.Execute var_AC & var_AC & "' Group By TaxCode", CDbl(0), var_A8.Text
  loc_1651DF2: Set var_88 = var_D8
  loc_1651E0A: ' Referenced from: 1652049
  loc_1651E19: If Not(var_88.EOF) Then
  loc_1651E2A:   Set var_A4 = Me.Txt
  loc_1651E30:   Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_150)
  loc_1651E38:   var_180 = var_A8.Text
  loc_1651E4B:   Set var_D8 = Me.Txt
  loc_1651E51:   Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_E4, var_158)
  loc_1651E59:   var_14C & var_148 = var_E4.Text
  loc_1651E7E:   Set var_E8 = Me.Txt
  loc_1651E84:   Call 0.Method_Proc_281_53_16530880 (CInt(&H22), var_11C)
  loc_1651EB3:   var_F8 = var_88.Fields.Item("AcCode").Value
  loc_1651EDA:   var_118 = var_88.Fields.Item("BaseAmt").Value
  loc_1651EED:   Set var_140 = Me.Txt
  loc_1651EF3:   Call 0.Method_Proc_281_53_16530880 (CInt(0), var_144)
  loc_1651EFB:   var_AC = var_144.Tag
  loc_1651F0E:   Set var_15C = Me.Txt
  loc_1651F14:   Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_1A0)
  loc_1651F2F:   Set var_1A4 = Me.Txt
  loc_1651F35:   Call 0.Method_Proc_281_53_16530880 (CInt(var_13C), var_1A8)
  loc_1651F3D:   var_148 = var_1A8.Text
  loc_1651F45:   var_D4 = Now
  loc_1651F4F:   var_19C = 0
  loc_1651F5A:   var_198 = 0
  loc_1651F65:   var_194 = 0
  loc_1651F6E:   var_190 = "A"
  loc_1651F8E:   var_14C = "Against bill no : " & var_1A0.Text & " For "
  loc_1651FE4:   Proc_6_141_12E1E18(MemVar_1F92044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_11C.Text))
  loc_165203E:   var_9E = (var_9E + 1)
  loc_1652044:   var_88.MoveNext
  loc_1652049:   GoTo loc_1651E0A
  loc_165204C: End If
  loc_165206A: Set var_A4 = Me.Txt
  loc_1652070: Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_AC, "Select BaseAmt,MEMBILL1.AcCode,FacilityCode,Name from MemBill1 Left join MemFacilityMast on MemFacilitymast.code=Membill1.Facilitycode where Type='Facility' and Docid='", var_D4, -1, var_D8)
  loc_1652078: var_9E = var_A8.Text
  loc_1652091: unk_537E3E.Execute CStr(var_F8) & var_AC & "'", CSng(var_118), CDbl(0)
  loc_165209C: Set var_88 = var_D8
  loc_16520B4: ' Referenced from: 16522F3
  loc_16520C3: If Not(var_88.EOF) Then
  loc_16520D4:   Set var_A4 = Me.Txt
  loc_16520DA:   Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_150)
  loc_16520E2:   var_AC = var_A8.Text
  loc_16520F5:   Set var_D8 = Me.Txt
  loc_16520FB:   Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_E4, var_158)
  loc_1652103:   var_14C & var_148 = var_E4.Text
  loc_1652128:   Set var_E8 = Me.Txt
  loc_165212E:   Call 0.Method_Proc_281_53_16530880 (CInt(&H22), var_11C)
  loc_165215D:   var_F8 = var_88.Fields.Item("AcCode").Value
  loc_1652184:   var_118 = var_88.Fields.Item("BaseAmt").Value
  loc_1652197:   Set var_140 = Me.Txt
  loc_165219D:   Call 0.Method_Proc_281_53_16530880 (CInt(0), var_144)
  loc_16521A5:   var_AC = var_144.Tag
  loc_16521B8:   Set var_15C = Me.Txt
  loc_16521BE:   Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_1A0)
  loc_16521D9:   Set var_1A4 = Me.Txt
  loc_16521DF:   Call 0.Method_Proc_281_53_16530880 (CInt(var_13C), var_1A8)
  loc_16521E7:   var_148 = var_1A8.Text
  loc_16521EF:   var_D4 = Now
  loc_16521F9:   var_19C = 0
  loc_1652204:   var_198 = 0
  loc_165220F:   var_194 = 0
  loc_1652218:   var_190 = "A"
  loc_1652238:   var_14C = "Against bill no : " & var_1A0.Text & " For "
  loc_165228E:   Proc_6_141_12E1E18(MemVar_1F92044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_11C.Text))
  loc_16522E8:   var_9E = (var_9E + 1)
  loc_16522EE:   var_88.MoveNext
  loc_16522F3:   GoTo loc_16520B4
  loc_16522F6: End If
  loc_1652314: Set var_A4 = Me.Txt
  loc_165231A: Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_AC, "Select BaseAmt,MEMBILL1.AcCode,FacilityCode from MemBill1 Left join MembershipRevMast on MembershipRevMast.code=Membill1.Facilitycode where Type='Revenue' and Docid='", var_D4, -1, var_D8)
  loc_1652322: var_9E = var_A8.Text
  loc_165233B: unk_537E3E.Execute CStr(var_F8) & var_AC & "'", CSng(var_118), CDbl(0)
  loc_1652346: Set var_88 = var_D8
  loc_165235E: ' Referenced from: 165259D
  loc_165236D: If Not(var_88.EOF) Then
  loc_165237E:   Set var_A4 = Me.Txt
  loc_1652384:   Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_150)
  loc_165238C:   var_AC = var_A8.Text
  loc_165239F:   Set var_D8 = Me.Txt
  loc_16523A5:   Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_E4, var_158)
  loc_16523AD:   var_14C & var_148 = var_E4.Text
  loc_16523D2:   Set var_E8 = Me.Txt
  loc_16523D8:   Call 0.Method_Proc_281_53_16530880 (CInt(&H22), var_11C)
  loc_1652407:   var_F8 = var_88.Fields.Item("AcCode").Value
  loc_1652426:   var_12C = var_88.Fields.Item("BaseAmt")
  loc_165242E:   var_118 = var_12C.Value
  loc_1652441:   Set var_140 = Me.Txt
  loc_1652447:   Call 0.Method_Proc_281_53_16530880 (CInt(0), var_144)
  loc_165244F:   var_AC = var_144.Tag
  loc_1652462:   Set var_15C = Me.Txt
  loc_1652468:   Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_1A0)
  loc_1652483:   Set var_1A4 = Me.Txt
  loc_1652489:   Call 0.Method_Proc_281_53_16530880 (CInt(var_13C), var_1A8)
  loc_1652491:   var_148 = var_1A8.Text
  loc_1652499:   var_D4 = Now
  loc_16524A3:   var_19C = 0
  loc_16524AE:   var_198 = 0
  loc_16524B9:   var_194 = 0
  loc_16524C2:   var_190 = "A"
  loc_16524E2:   var_14C = "Against bill no : " & var_1A0.Text & " For "
  loc_1652538:   Proc_6_141_12E1E18(MemVar_1F92044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_11C.Text))
  loc_1652592:   var_9E = (var_9E + 1)
  loc_1652598:   var_88.MoveNext
  loc_165259D:   GoTo loc_165235E
  loc_16525A0: End If
  loc_16525BE: Set var_A4 = Me.Txt
  loc_16525C4: Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_AC, "Select IsNull(RoundOff,0) As RoundOff,MemBill.MemCode from MemBill Left join SubGroup on SubGroup.SubCode=Membill.MemCode Where Docid='", var_D4, -1, var_D8)
  loc_16525CC: var_9E = var_A8.Text
  loc_16525E5: unk_537E3E.Execute CStr(var_F8) & var_AC & "'", CSng(var_118), CDbl(0)
  loc_16525F0: Set var_88 = var_D8
  loc_1652608: ' Referenced from: 1652A94
  loc_1652617: If Not(var_88.EOF) Then
  loc_1652634:   var_A8 = var_88.Fields.Item("RoundOff")
  loc_1652656:   If (var_A8.Value > 0) Then
  loc_1652667:     Set var_A4 = Me.Txt
  loc_165266D:     Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_150)
  loc_1652675:     var_AC = var_A8.Text
  loc_1652688:     Set var_D8 = Me.Txt
  loc_165268E:     Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_E4, var_158)
  loc_1652696:     var_14C & var_148 = var_E4.Text
  loc_16526BB:     Set var_E8 = Me.Txt
  loc_16526C1:     Call 0.Method_Proc_281_53_16530880 (CInt(&H22), var_11C)
  loc_16526C9:     var_168 = var_11C.Text
  loc_16526F0:     var_F8 = var_88.Fields.Item("RoundOff").Value
  loc_1652703:     Set var_128 = Me.Txt
  loc_1652709:     Call 0.Method_Proc_281_53_16530880 (CInt(0), var_12C)
  loc_1652711:     var_AC = var_12C.Tag
  loc_1652724:     Set var_140 = Me.Txt
  loc_165272A:     Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_144)
  loc_1652745:     Set var_15C = Me.Txt
  loc_165274B:     Call 0.Method_Proc_281_53_16530880 (CInt(var_13C), var_1A0)
  loc_1652753:     var_148 = var_1A0.Text
  loc_165275B:     var_D4 = Now
  loc_1652765:     var_19C = 0
  loc_1652770:     var_198 = 0
  loc_165277B:     var_194 = 0
  loc_1652784:     var_190 = "A"
  loc_16527A4:     var_14C = "Against bill no : " & var_144.Text & " For "
  loc_16527FD:     Proc_6_141_12E1E18(MemVar_1F92044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_168))
  loc_165284E:   Else
  loc_1652868:     var_A8 = var_88.Fields.Item("RoundOff")
  loc_1652870:     var_D4 = var_A8.Value
  loc_165288A:     If (var_D4 < 0) Then
  loc_165289B:       Set var_A4 = Me.Txt
  loc_16528A1:       Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_150, MemVar_1F92070 & "ROFF", CSng(var_F8), CDbl(0))
  loc_16528A9:       var_AC = var_A8.Text
  loc_16528BC:       Set var_D8 = Me.Txt
  loc_16528C2:       Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_E4, var_158, var_14C & var_148)
  loc_16528CA:       MemVar_1F920C8 = var_E4.Text
  loc_16528EF:       Set var_E8 = Me.Txt
  loc_16528F5:       Call 0.Method_Proc_281_53_16530880 (CInt(&H22), var_11C, var_168)
  loc_16528FD:       CDate(var_D4) = var_11C.Text
  loc_1652924:       var_D4 = var_88.Fields.Item("RoundOff").Value
  loc_1652937:       Set var_128 = Me.Txt
  loc_165293D:       Call 0.Method_Proc_281_53_16530880 (CInt(0), var_12C)
  loc_1652945:       var_AC = var_12C.Tag
  loc_1652958:       Set var_140 = Me.Txt
  loc_165295E:       Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_144)
  loc_1652979:       Set var_15C = Me.Txt
  loc_165297F:       Call 0.Method_Proc_281_53_16530880 (CInt(var_13C), var_1A0)
  loc_1652987:       var_148 = var_1A0.Text
  loc_165298F:       var_118 = Now
  loc_1652999:       var_19C = 0
  loc_16529A4:       var_198 = 0
  loc_16529AF:       var_194 = 0
  loc_16529B8:       var_190 = "A"
  loc_16529D8:       var_14C = "Against bill no :   " & var_144.Text & " For "
  loc_16529ED:       var_F8 = Abs(var_D4)
  loc_1652A35:       Proc_6_141_12E1E18(MemVar_1F92044, var_150, var_9E, global_80, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_168))
  loc_1652A83:     End If
  loc_1652A83:   End If
  loc_1652A89:   var_9E = (var_9E + 1)
  loc_1652A8F:   var_88.MoveNext
  loc_1652A94:   GoTo loc_1652608
  loc_1652A97: End If
  loc_1652AB5: Set var_A4 = Me.Txt
  loc_1652ABB: Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_AC, "Select NetAmount,MemBill.MemCode,MeshAc,Vdate from MemBill Left join SubGroup on SubGroup.SubCode=Membill.MemCode Where Docid='", var_D4, -1, var_D8)
  loc_1652AC3: var_9E = var_A8.Text
  loc_1652ADC: unk_537E3E.Execute MemVar_1F92070 & "ROFF" & var_AC & "'", CDbl(0), CSng(var_F8)
  loc_1652AE7: Set var_88 = var_D8
  loc_1652B13: If (var_88.RecordCount > 0) Then
  loc_1652B44:   var_118 = Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("meshAc")), var_AC)))
  loc_1652B60:   If CBool(var_118 <> vbNullString) Then
  loc_1652B63:     ' Referenced from: 165307B
  loc_1652B72:     If Not(var_88.EOF) Then
  loc_1652B8C:       var_A8 = var_88.Fields.Item("MemCode")
  loc_1652BB7:       var_E4 = var_88.Fields.Item("VDate")
  loc_1652BC6:       Proc_6_7_F25D88(var_118, CVar(var_E4))
  loc_1652BD1:       var_224 = 0
  loc_1652BF1:       var_B0 = "Select isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0) As CreditAmt From Ledger Where SubCode='" & Proc_6_38_E68A98(CVar(var_A8), var_14C & var_148)
  loc_1652C07:       var_1F4 = CVar(MemVar_1F92070 & "ROFF" & Proc_6_38_E68A98(CVar(var_A8), var_14C & var_148) & "' And V_date<=") & var_118 & vbNullString 
  loc_1652C15:       unk_537E3E.Execute CStr(var_1F4), var_214, -1
  loc_1652C1D:       var_E8 = var_E8.Fields
  loc_1652C25:       var_224 = var_11C.Item(var_11C)
  loc_1652C2D:       var_120 = var_120.Value
  loc_1652C38:       Proc_6_39_E7C810(var_244, var_234)
  loc_1652C78:       If (CSng(var_244) > CDbl(0)) Then
  loc_1652C81:         var_9E = (var_9E + 1)
  loc_1652C92:         Set var_A4 = Me.Txt
  loc_1652C98:         Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_14C, var_9E)
  loc_1652CB3:         Set var_D8 = Me.Txt
  loc_1652CB9:         Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_E4, var_154)
  loc_1652CC1:         var_234 = var_E4.Text
  loc_1652CE6:         Set var_E8 = Me.Txt
  loc_1652CEC:         Call 0.Method_Proc_281_53_16530880 (CInt(&H22), var_11C)
  loc_1652CF4:         var_164 = var_11C.Text
  loc_1652D55:         Set var_140 = Me.Txt
  loc_1652D5B:         Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_144)
  loc_1652D63:         var_AC = var_144.Text
  loc_1652D76:         Set var_15C = Me.Txt
  loc_1652D7C:         Call 0.Method_Proc_281_53_16530880 (CInt(var_13C), var_1A0)
  loc_1652D84:         var_B4 = var_1A0.Text
  loc_1652D96:         var_198 = 0
  loc_1652DA1:         var_194 = 0
  loc_1652DAC:         var_190 = 0
  loc_1652DB5:         var_184 = "A"
  loc_1652E27:         Proc_6_141_12E1E18(MemVar_1F92044, var_14C, var_9E, global_80, CLng(var_154), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_164))
  loc_1652E7D:         var_9E = (var_9E + 1)
  loc_1652E8E:         Set var_A4 = Me.Txt
  loc_1652E94:         Call 0.Method_Proc_281_53_16530880 (CInt(&H1F), var_A8, var_14C, var_9E, CStr(var_88.Fields.Item("MemCode").Value), var_A8.Text)
  loc_1652E9C:         CDbl(0) = var_A8.Text
  loc_1652EAF:         Set var_D8 = Me.Txt
  loc_1652EB5:         Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_E4, var_154, CStr(var_88.Fields.Item("meshAc").Value))
  loc_1652EBD:         var_148 & var_B4 = var_E4.Text
  loc_1652EE2:         Set var_E8 = Me.Txt
  loc_1652EE8:         Call 0.Method_Proc_281_53_16530880 (CInt(&H22), var_11C, var_164)
  loc_1652EF0:         MemVar_1F920C8 = var_11C.Text
  loc_1652F17:         var_F8 = var_88.Fields.Item("meshAc").Value
  loc_1652F3E:         var_118 = var_88.Fields.Item("MemCode").Value
  loc_1652F51:         Set var_140 = Me.Txt
  loc_1652F57:         Call 0.Method_Proc_281_53_16530880 (CInt(&H20), var_144, var_AC)
  loc_1652F5F:         CDate(Now) = var_144.Text
  loc_1652F72:         Set var_15C = Me.Txt
  loc_1652F78:         Call 0.Method_Proc_281_53_16530880 (CInt(var_13C), var_1A0)
  loc_1652F80:         var_B4 = var_1A0.Text
  loc_1652F88:         var_D4 = Now
  loc_1652F92:         var_198 = 0
  loc_1652F9D:         var_194 = 0
  loc_1652FA8:         var_190 = 0
  loc_1652FB1:         var_184 = "A"
  loc_1652FD1:         var_148 = "Against bill no : " & var_AC & " For "
  loc_1653023:         Proc_6_141_12E1E18(MemVar_1F92044, var_14C, var_9E, global_80, CLng(var_154), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_164))
  loc_1653073:       End If
  loc_1653076:       var_88.MoveNext
  loc_165307B:       GoTo loc_1652B63
  loc_165307E:     End If
  loc_165307E:   End If
  loc_165307E: End If
  loc_1653083: Set var_88 = Nothing
  loc_1653086: Exit Sub
End Sub

Public Sub Proc_281_54_EF882C
  'Data Table: 537E24
  loc_EF876C: If (CBool(Me.DGMemName.Visible) = &HFF) Then
  loc_EF877E:   Me.DGMemName.Visible = False
  loc_EF8786: End If
  loc_EF87A2: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_EF87B4:   Me.DGRev.Visible = False
  loc_EF87BC: End If
  loc_EF87D8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF87EA:   Me.FGPoint.Visible = False
  loc_EF87F2: End If
  loc_EF880E: If (CBool(Me.FGPoint1.Visible) = &HFF) Then
  loc_EF8820:   Me.FGPoint1.Visible = False
  loc_EF8828: End If
  loc_EF8828: Exit Sub
End Sub

Public Sub Proc_281_55_16CF518
  'Data Table: 537E24
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D4 As String
  Dim var_DC As Variant
  Dim var_E8 As String
  Dim unk_537F40 As Connection15
  Dim unk_537E3E As Connection15
  Dim var_88 As Recordset15
  Dim var_FC As Variant
  Dim var_D8 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_E0 As String
  Dim var_8C As Recordset15
  Dim var_116 As Integer
  Dim var_114 As Variant
  Dim var_1C0 As String
  loc_16CDB6C: On Error Goto loc_16CF4AD
  loc_16CDB85: var_B0 = "Select S.SubCode,S.Name,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.FatherName,S.PanNo,S.GroupCode,S.ApplDate,S.Discount," & "S.meshAc,S.U_AE,S.U_Name,S.U_EntDt,S.AddName,S.Add1,S.Add2,S.Add3,S.CITYCODE,S.Pin,S.Phone,S.Mobile,S.Email,S.AppNo,S.CardNo,S.Remark,S.subcorresYN,"
  loc_16CDB93: var_B8 = var_B0 & "S.CompanyType,S.AllowCredit,S.CreditLimit,S.ActiveYN,S.Blacklisted,S.ReasonBlackList,S.BlackListedBy," & "MF.bloodGroup,MF.ProOcc,MF.Edquali,MF.TBusiness,MF.Turnover,MF.Desig,MF.Passport,MF.SpInterest,MF.Gender,MF.DOB,MF.POB,"
  loc_16CDB9A: var_BC = var_B8 & "MF.MaritalStatus,MF.Nationality,MF.Religion,MF.PicPath,MF.SigPath,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,a.areaname,C.CityName,T.CATEGORY_Desc, "
  loc_16CDBA8: var_C4 = var_BC & "TDSCAT.NAME AS TDSNAME,St.Name As StateN,St.Code As StateC,Co.Name As CountryN, Co.Code As CountryC, " & "MM.Name As MeshAcName From ((((((((subGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode "
  loc_16CDBB6: var_CC = var_C4 & "Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) " & "left join areamast a on s.areacode=a.areacode) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg) "
  loc_16CDBC4: var_D4 = var_CC & "Left Join State St On St.Code=C.State) Left Join Country Co On Co.Code=C.Country) " & "Left Join MemberFamily MF On MF.Subcode= S.Subcode And MF.RelationShip='Member' And MF.SNo=1) left Join SubGroup MM On MM.SubCode=S.MeshAc) "
  loc_16CDBDC: Set var_D8 = Me.Txt
  loc_16CDBE2: Call 0.Method_Proc_281_55_16CF5180 (CInt(0), var_DC, var_E0, var_D4 & "Where S.SubCode='")
  loc_16CDBEA: var_10C = var_DC.Tag
  loc_16CDBF3: var_E8 = -1 & var_E0
  loc_16CDC03: unk_537F40.Execute var_E8 & "'", var_110, 
  loc_16CDC0E: Set var_88 = var_110
  loc_16CDC5C: Set var_D8 = Me.Txt
  loc_16CDC62: Call 0.Method_Proc_281_55_16CF5180 (CInt(0), var_DC, var_B0, "Select DocId As SearchCode,* From MemBill Where Memcode='")
  loc_16CDC6A: var_10C = var_DC.Tag
  loc_16CDC73: var_B4 = -1 & var_B0
  loc_16CDC7A: var_B8 = var_B0 & "S.CompanyType,S.AllowCredit,S.CreditLimit,S.ActiveYN,S.Blacklisted,S.ReasonBlackList,S.BlackListedBy," & "' And VPrefix="
  loc_16CDCA7: var_D0 = var_B8 & MemVar_1F9212C & " And VType='" & global_80 & "' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By DocId"
  loc_16CDCB0: unk_537E3E.Execute var_D0, var_110, 
  loc_16CDCFF: var_B0 = "INI"
  loc_16CDD0D: Call Proc_281_49_F125CC(Proc_5_1_100CB50(var_B0, Me))
  loc_16CDD1A: Call TopCtrl1_UnknownEvent_11()
  loc_16CDD3F: Set var_D8 = Me.Txt
  loc_16CDD45: Call 0.Method_Proc_281_55_16CF5180 (CInt(0), var_DC, var_B0, "Select MR.Code,MR.Description As Name,M.Nature,M.Appdate,M.Amount,MR.AcountYN,MR.AcCode,MR.ACPosting,MR.TaxStru from (MembershipRevMast MR Left Join (Select * From MemRevWise Where MemCode='")
  loc_16CDD4D: var_10C = var_DC.Tag
  loc_16CDD56: var_B4 = -1 & var_B0
  loc_16CDD5D: var_B8 = var_B0 & "S.CompanyType,S.AllowCredit,S.CreditLimit,S.ActiveYN,S.Blacklisted,S.ReasonBlackList,S.BlackListedBy," & "') M on M.Revcode=MR.code) Where MR.Site_Code='"
  loc_16CDD82: unk_537E3E.Execute var_B8 & MemVar_1F92070 & "' and (MR.LOGSITE_CODE='" & MemVar_1F92078 & "' or MR.LOGSITE_CODE='HO') ORDER BY MR.Description", var_110, var_110
  loc_16CDDC1: CVarUnk
  loc_16CDDC6: VerifyVarObj
  loc_16CDDCC: Set var_D8 = Me.DGRev
  loc_16CDDD2: LateIdStAd
  loc_16CDDF6: If (var_88.RecordCount > 0) Then
  loc_16CDE0D:   var_D8 = var_88.Fields
  loc_16CDE60:   var_C0 = var_88.Fields & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPerson")), var_D8 & Proc_6_38_E68A98(CVar(var_D8.Item("CardNo")), "#") & " ")
  loc_16CDECC:   var_E0 = var_C0 & " " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonMName"))) & " " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_16CDED9:   Me.LblMember.Caption = var_E0
  loc_16CDF2B:   var_DC = var_88.Fields.Item("subcode")
  loc_16CDF49:   Me.LblMember.Tag = CStr(var_DC.Value)
  loc_16CDF6D:   Set var_D8 = Me.Txt
  loc_16CDF73:   Call 0.Method_Proc_281_55_16CF5180 (CInt(0), var_DC)
  loc_16CDF7B:   var_B0 = var_DC.Tag
  loc_16CDF93:   Set var_110 = Me.txtCurrBal
  loc_16CDF99:   var_110.Text = Proc_183_42_107D990(var_B0)
  loc_16CDFB8:   If (MemVar_1F92078 = "HO") Then
  loc_16CDFDB:     Set var_D8 = Me.Txt
  loc_16CDFE1:     Call 0.Method_Proc_281_55_16CF5180 (CInt(0), var_DC, var_B0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_16CDFE9:     var_10C = var_DC.Tag
  loc_16CDFF2:     var_B4 = -1 & var_B0
  loc_16CE002:     unk_537F40.Execute var_D8 & Proc_6_38_E68A98(CVar(var_D8.Item("CardNo")), "#") & "'", var_110, 
  loc_16CE00D:     Set var_8C = var_110
  loc_16CE028:   Else
  loc_16CE04A:     Set var_D8 = Me.Txt
  loc_16CE050:     Call 0.Method_Proc_281_55_16CF5180 (CInt(0), var_DC, var_B0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_16CE058:     var_10C = var_DC.Tag
  loc_16CE061:     var_B4 = -1 & var_B0
  loc_16CE07F:     unk_537F40.Execute var_D8 & Proc_6_38_E68A98(CVar(var_D8.Item("CardNo")), "#") & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_110, 
  loc_16CE08A:     Set var_8C = var_110
  loc_16CE0A6:   End If
  loc_16CE0B0:   var_11C = var_8C.RecordCount
  loc_16CE0BE:   If (var_11C > 0) Then
  loc_16CE0EB:     var_116 = IsNull(CVar(var_8C.Fields.Item("CurrBal")))
  loc_16CE15A:     var_1F0 = Format(IIf(var_116, 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00") 'Variant
  loc_16CE1BB:     var_114 = var_8C.Fields.Item("CurrBal")
  loc_16CE1D3:     var_1C0 = "Cr"
  loc_16CE235:     Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_114.Value < 0), var_1C0, vbNullString)))
  loc_16CE2A4:     If ((Me.LblCurBalType.Caption = "CR") Or (Me.LblCurBalType.Caption = vbNullString)) Then
  loc_16CE2A9:       var_FC = "MemberShip Up-to-Date!"
  loc_16CE2B3:       Set var_D8 = Me.LblMsg
  loc_16CE2B9:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA("CurrBal")
  loc_16CE2D0:       Set var_D8 = Me.LblMsg
  loc_16CE2D6:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(&H8000)
  loc_16CE2E1:     Else
  loc_16CE2EF:       Set var_D8 = Me.LblMsg
  loc_16CE2F5:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA("Payment Required!")
  loc_16CE30C:       Set var_D8 = Me.LblMsg
  loc_16CE312:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(&HC0)
  loc_16CE31A:     End If
  loc_16CE341:     var_250 = CVar(var_8C.Fields.Item("CurrBal")) 'Variant
  loc_16CE381:     var_18C = "Dr"
  loc_16CE3A6:     var_260 = IIf((var_8C.Fields.Item("CurrBal").Value > 0), var_18C, "Cr") 'Variant
  loc_16CE3EF:     var_12C = CVar((var_94 - var_9C)) 'Double
  loc_16CE3F3:     var_13C = (var_8C.Fields.Item("CurrBal").Value + 0)
  loc_16CE405:     Me.txtCurrBal.Tag = CStr((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_16CE420:   Else
  loc_16CE435:     Me.txtCurrBal.Text = CStr(0)
  loc_16CE44F:     Me.LblCurBalType.Caption = vbNullString
  loc_16CE45E:     var_250 = 0 'Variant
  loc_16CE469:     var_260 = "Cr" 'Variant
  loc_16CE478:     var_1F0.Tag = 0
  loc_16CE47C:   End If
  loc_16CE4B6:   Set var_110 = Me.Txt
  loc_16CE4BC:   Call 0.Method_Proc_281_55_16CF5180 (CInt(3), var_114, Proc_6_38_E68A98(CVar(var_1F0.Recordset15.Fields.Item("ConPrefix")), 1))
  loc_16CE4C4:   var_114.Text = 1
  loc_16CE510:   Set var_110 = Me.Txt
  loc_16CE516:   Call 0.Method_Proc_281_55_16CF5180 (CInt(4), var_114)
  loc_16CE51E:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPerson")))
  loc_16CE56A:   Set var_110 = Me.Txt
  loc_16CE570:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H13), var_114)
  loc_16CE578:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_16CE5C4:   Set var_110 = Me.Txt
  loc_16CE5CA:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H14), var_114)
  loc_16CE5D2:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_16CE61E:   Set var_110 = Me.Txt
  loc_16CE624:   Call 0.Method_Proc_281_55_16CF5180 (CInt(5), var_114)
  loc_16CE62C:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FatherName")))
  loc_16CE678:   Set var_110 = Me.Txt
  loc_16CE67E:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&HE), var_114)
  loc_16CE686:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("bloodGroup")))
  loc_16CE6C2:   Proc_6_47_EF59D0((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("Discount")))
  loc_16CE6D9:   Set var_110 = Me.Txt
  loc_16CE6DF:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&HA), var_114)
  loc_16CE6E7:   var_114.Text = CStr((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_16CE72C:   var_270 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AddName")))) 'Variant
  loc_16CE76E:   Set var_110 = Me.Txt
  loc_16CE774:   Call 0.Method_Proc_281_55_16CF5180 (CInt(1), var_114)
  loc_16CE77C:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))
  loc_16CE7BD:   var_280 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))) 'Variant
  loc_16CE7FF:   Set var_110 = Me.Txt
  loc_16CE805:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H12), var_114)
  loc_16CE80D:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PanNo")))
  loc_16CE85F:   var_13C = "select code,Name from MemcatMast where code='" & var_88.Fields.Item("CompanyType").Value 
  loc_16CE876:   unk_537E3E.Execute CStr(var_13C & "'"), var_18C, -1
  loc_16CE8D3:   Set var_110 = Me.Txt
  loc_16CE8D9:   Call 0.Method_Proc_281_55_16CF5180 (CInt(6), var_114)
  loc_16CE8E1:   var_114.Text = Proc_6_38_E68A98(CVar(var_110.Fields.Item("Name")), var_110)
  loc_16CE92D:   Set var_110 = Me.Txt
  loc_16CE933:   Call 0.Method_Proc_281_55_16CF5180 (CInt(6), var_114)
  loc_16CE93B:   var_114.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyType")))
  loc_16CE9C0:   Set var_110 = Me.Txt
  loc_16CE9C6:   Call 0.Method_Proc_281_55_16CF5180 (CInt(7), var_114)
  loc_16CE9CE:   var_114.Text = Proc_6_38_E68A98(IIf((var_88.Fields.Item("AllowCredit").Value = "Y"), "Yes", "No"))
  loc_16CEA16:   Proc_6_47_EF59D0(var_13C, CVar(var_88.Fields.Item("CreditLimit")))
  loc_16CEA2D:   Set var_110 = Me.Txt
  loc_16CEA33:   Call 0.Method_Proc_281_55_16CF5180 (CInt(8), var_114)
  loc_16CEA3B:   var_114.Text = CStr(var_13C)
  loc_16CEA8B:   Set var_110 = Me.Txt
  loc_16CEA91:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H15), var_114)
  loc_16CEA99:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ProOcc")))
  loc_16CEAE5:   Set var_110 = Me.Txt
  loc_16CEAEB:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H16), var_114)
  loc_16CEAF3:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Edquali")))
  loc_16CEB3F:   Set var_110 = Me.Txt
  loc_16CEB45:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H17), var_114)
  loc_16CEB4D:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TBusiness")))
  loc_16CEB99:   Set var_110 = Me.Txt
  loc_16CEB9F:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H18), var_114)
  loc_16CEBA7:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Turnover")))
  loc_16CEBF3:   Set var_110 = Me.Txt
  loc_16CEBF9:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H19), var_114)
  loc_16CEC01:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Desig")))
  loc_16CEC4D:   Set var_110 = Me.Txt
  loc_16CEC53:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H1A), var_114)
  loc_16CEC5B:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Passport")))
  loc_16CECA7:   Set var_110 = Me.Txt
  loc_16CECAD:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H1B), var_114)
  loc_16CECB5:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("SpInterest")))
  loc_16CED01:   Set var_110 = Me.Txt
  loc_16CED07:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&HB), var_114)
  loc_16CED0F:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Gender")))
  loc_16CED77:   Set var_110 = Me.Txt
  loc_16CED7D:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&HC), var_114, CStr(Format(CVar(var_88.Fields.Item("DOB")), "DD/MMM/YYYY")))
  loc_16CED85:   var_114.Text = 1
  loc_16CEDD7:   Set var_110 = Me.Txt
  loc_16CEDDD:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H10), var_114)
  loc_16CEDE5:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("POB")), 1)
  loc_16CEE31:   Set var_110 = Me.Txt
  loc_16CEE37:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&HF), var_114)
  loc_16CEE3F:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MaritalStatus")))
  loc_16CEE8B:   Set var_110 = Me.Txt
  loc_16CEE91:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&HD), var_114)
  loc_16CEE99:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nationality")))
  loc_16CEEE5:   Set var_110 = Me.Txt
  loc_16CEEEB:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H11), var_114)
  loc_16CEEF3:   var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Religion")))
  loc_16CEF74:   Set var_110 = Me.Txt
  loc_16CEF7A:   Call 0.Method_Proc_281_55_16CF5180 (CInt(9), var_114)
  loc_16CEF82:   var_114.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 1), "Yes", "No"))
  loc_16CEFBE:   var_DC = var_88.Fields.Item("BlackListed")
  loc_16CF00F:   Set var_110 = Me.Txt
  loc_16CF015:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H1C), var_114)
  loc_16CF01D:   var_114.Text = CStr(IIf((var_DC.Value = "Y"), "Yes", "No"))
  loc_16CF04D:   Set var_D8 = Me.Txt
  loc_16CF053:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H1C), var_DC)
  loc_16CF072:   If (var_DC.Text = "Yes") Then
  loc_16CF083:     Me.FrBlackListed.Visible = True
  loc_16CF08E:   Else
  loc_16CF09E:     Me.FrBlackListed.Visible = False
  loc_16CF0A6:   End If
  loc_16CF0E3:   Set var_110 = Me.Txt
  loc_16CF0E9:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H1D), var_114)
  loc_16CF0F1:   var_114.Text = CStr(var_88.Fields.Item("ReasonBlackList").Value)
  loc_16CF142:   Set var_110 = Me.Txt
  loc_16CF148:   Call 0.Method_Proc_281_55_16CF5180 (CInt(&H1E), var_114)
  loc_16CF150:   var_114.Text = CStr(var_88.Fields.Item("BlackListedBy").Value)
  loc_16CF177:   var_D8 = var_88.Fields
  loc_16CF190:   var_178 = IsNull(CVar(var_D8.Item("PicPath")))
  loc_16CF197:   var_12C = "PicPath"
  loc_16CF1C2:   var_150 = vbNullString
  loc_16CF1E4:   If CBool(var_178 Or (Trim(CVar(var_88.Fields.Item(var_12C))) = var_150)) Then
  loc_16CF207:     Me.Global.LoadPicture var_FC, var_12C, var_150, var_178, var_1C0
  loc_16CF21C:     Me.ImgMemPhoto.Picture = var_D8
  loc_16CF237:     Me.ImgMemPhoto.Tag = vbNullString
  loc_16CF242:   Else
  loc_16CF274:     var_150 = "PicPath"
  loc_16CF2A7:     var_164 = Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)
  loc_16CF2B2:     var_18C = Ucase(var_164)
  loc_16CF2BA:     var_12C = "DAT"
  loc_16CF2E2:     var_178 = "AVI"
  loc_16CF30C:     If CBool((var_18C = var_12C) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_150))), 3)) = var_178)) Then
  loc_16CF31D:       Me.ImgMemPhoto.Visible = False
  loc_16CF328:     Else
  loc_16CF364:       Me.ImgMemPhoto.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_16CF383:       var_FC = "PicPath"
  loc_16CF397:       var_DC = var_88.Fields.Item(var_FC)
  loc_16CF3B4:       Call 0.Method_Proc_281_55_16CF5184 (CStr(var_DC.Value), var_116)
  loc_16CF3C9:       If var_116 Then
  loc_16CF3CE:         On Error Resume Next
  loc_16CF3F3:         var_B0 = Me.ImgMemPhoto.Tag
  loc_16CF405:         Me.Global.LoadPicture CVar(var_B0), var_FC, var_12C, var_150, var_178
  loc_16CF41A:         Me.ImgMemPhoto.Picture = var_DC
  loc_16CF431:         Set var_D8 = Me.ImgMemPhoto
  loc_16CF437:         var_D8.Refresh
  loc_16CF442:       Else
  loc_16CF464:         Me.Global.LoadPicture var_FC, var_12C, var_150, var_178, var_1C0
  loc_16CF479:         Me.ImgMemPhoto.Picture = var_D8
  loc_16CF485:       End If
  loc_16CF487:     End If
  loc_16CF489:   End If
  loc_16CF48E: Else
  loc_16CF492:   Call Proc_281_48_10C5178(var_D8, var_DC)
  loc_16CF497: End If
  loc_16CF49B: Call Proc_281_54_EF882C(var_D8)
  loc_16CF4A7: Set var_88 = Nothing
  loc_16CF4AC: Exit Sub
  loc_16CF4AD: ' Referenced from: 16CDB6C
  loc_16CF4B7: Set var_D8 = Err()
  loc_16CF4BD: Call 0.Method_arg_1C (var_11C)
  loc_16CF4CE: If (var_11C <> 0) Then
  loc_16CF4DB:   Set var_D8 = Err()
  loc_16CF4E1:   Call 0.Method_arg_2C (var_B0)
  loc_16CF502:   MsgBox(CVar(var_B0), &H40, "Validation", var_164, var_18C)
  loc_16CF515: End If
  loc_16CF517: Exit Sub
End Sub

Public Sub Proc_281_56_178D1C4(arg_C) '178D1C4
  'Data Table: 537E24
  Dim var_A0 As Variant
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_13C As Variant
  Dim var_14C As String
  Dim var_160 As String
  Dim unk_537E3E As Connection15
  Dim var_98 As Recordset15
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim var_140 As Variant
  Dim var_104 As Variant
  Dim var_184 As Variant
  Dim var_170 As Variant
  Dim var_2D8 As Double
  Dim var_174 As Variant
  Dim var_124 As Variant
  Dim var_1C4 As Variant
  Dim var_1D8 As MSHFlexGrid
  Dim var_1E8 As Variant
  Dim var_218 As Variant
  Dim var_1F8 As Variant
  Dim var_25C As MSHFlexGrid
  Dim var_27C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_BA As Integer
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_228 As Variant
  Dim var_208 As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_258 As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_328 As Variant
  loc_178B378: If (arg_C = 0) Then
  loc_178B38E:   var_B4 = CLng(Me.Fgrid.Col)
  loc_178B39E:   If (var_B4 = CLng(1)) Then
  loc_178B3C1:     var_BA = Me.EOF
  loc_178B3EF:     Set var_A0 = Me.TxtGrid
  loc_178B3F5:     Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, var_C4)
  loc_178B3FD:     ((Me.RecordCount = 0) Or ((var_BA = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_178B415:     If (var_B4 Or (var_C4 = vbNullString)) Then
  loc_178B42B:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B433:       var_F4 = CVar(CLng(1)) 'Long
  loc_178B438:       var_114 = vbNullString
  loc_178B442:       Set var_C0 = Me.Fgrid
  loc_178B448:       LateIdCallSt
  loc_178B46D:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B475:       var_F4 = CVar(CLng(&HA)) 'Long
  loc_178B47A:       var_114 = vbNullString
  loc_178B484:       Set var_C0 = Me.Fgrid
  loc_178B48A:       LateIdCallSt
  loc_178B4AF:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B4B7:       var_F4 = CVar(CLng(1)) 'Long
  loc_178B4BC:       var_114 = vbNullString
  loc_178B4C6:       Set var_C0 = Me.Fgrid
  loc_178B4CC:       LateIdCallSt
  loc_178B4F1:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B4F9:       var_F4 = CVar(CLng(2)) 'Long
  loc_178B4FE:       var_114 = vbNullString
  loc_178B508:       Set var_C0 = Me.Fgrid
  loc_178B50E:       LateIdCallSt
  loc_178B533:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B53B:       var_F4 = CVar(CLng(3)) 'Long
  loc_178B540:       var_114 = vbNullString
  loc_178B54A:       Set var_C0 = Me.Fgrid
  loc_178B550:       LateIdCallSt
  loc_178B575:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B57D:       var_F4 = CVar(CLng(5)) 'Long
  loc_178B582:       var_114 = vbNullString
  loc_178B58C:       Set var_C0 = Me.Fgrid
  loc_178B592:       LateIdCallSt
  loc_178B5B7:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B5BF:       var_F4 = CVar(CLng(4)) 'Long
  loc_178B5C4:       var_114 = vbNullString
  loc_178B5CE:       Set var_C0 = Me.Fgrid
  loc_178B5D4:       LateIdCallSt
  loc_178B5F9:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B601:       var_F4 = CVar(CLng(&HC)) 'Long
  loc_178B606:       var_114 = vbNullString
  loc_178B610:       Set var_C0 = Me.Fgrid
  loc_178B616:       LateIdCallSt
  loc_178B63B:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B643:       var_F4 = CVar(CLng(&HE)) 'Long
  loc_178B648:       var_114 = vbNullString
  loc_178B652:       Set var_C0 = Me.Fgrid
  loc_178B658:       LateIdCallSt
  loc_178B67D:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B685:       var_F4 = CVar(CLng(&HF)) 'Long
  loc_178B68A:       var_114 = vbNullString
  loc_178B694:       Set var_C0 = Me.Fgrid
  loc_178B69A:       LateIdCallSt
  loc_178B6BF:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B6C7:       var_F4 = CVar(CLng(6)) 'Long
  loc_178B6CC:       var_114 = vbNullString
  loc_178B6D6:       Set var_C0 = Me.Fgrid
  loc_178B6DC:       LateIdCallSt
  loc_178B701:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B709:       var_F4 = CVar(CLng(7)) 'Long
  loc_178B70E:       var_114 = vbNullString
  loc_178B718:       Set var_C0 = Me.Fgrid
  loc_178B71E:       LateIdCallSt
  loc_178B743:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B74B:       var_F4 = CVar(CLng(&H10)) 'Long
  loc_178B750:       var_114 = vbNullString
  loc_178B75A:       Set var_C0 = Me.Fgrid
  loc_178B760:       LateIdCallSt
  loc_178B785:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B78D:       var_F4 = CVar(CLng(&HA)) 'Long
  loc_178B792:       var_114 = vbNullString
  loc_178B79C:       Set var_C0 = Me.Fgrid
  loc_178B7A2:       LateIdCallSt
  loc_178B7C7:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B7CF:       var_F4 = CVar(CLng(&HB)) 'Long
  loc_178B7D4:       var_114 = vbNullString
  loc_178B7DE:       Set var_C0 = Me.Fgrid
  loc_178B7E4:       LateIdCallSt
  loc_178B809:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B811:       var_F4 = CVar(CLng(8)) 'Long
  loc_178B816:       var_114 = vbNullString
  loc_178B820:       Set var_C0 = Me.Fgrid
  loc_178B826:       LateIdCallSt
  loc_178B84B:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178B853:       var_F4 = CVar(CLng(9)) 'Long
  loc_178B858:       var_114 = vbNullString
  loc_178B862:       Set var_C0 = Me.Fgrid
  loc_178B868:       LateIdCallSt
  loc_178B87D:     Else
  loc_178B880:       Call Proc_281_57_FC3D74(var_BA, var_C0, var_114, var_F4, var_D4, var_C0, var_114, var_F4)
  loc_178B88B:       If (var_BA = 0) Then
  loc_178B893:         Proc_281_56_178D1C4 = 0
  loc_178B899:       End If
  loc_178B8B7:       Set var_A0 = Me.Txt
  loc_178B8BD:       Call 0.Method_Proc_281_56_178D1C40 (CInt(var_134), var_C0, var_C4, "Select max(ToPeriod) ToPeriod from MemBill1 Inner Join MemBill On MemBill.DocId=MemBill1.DocId where MemBill.MemCode='", var_170, -1, var_174)
  loc_178B8C5:       var_D4 = var_C0.Tag
  loc_178B8DB:       var_D4 = "Code"
  loc_178B907:       var_14C = var_D4 & Proc_6_38_E68A98(CVar(Me.Fields.Item(var_D4)), var_C0 & var_C4 & "' And MemBill1.FacilityCode='", var_114, var_F4)
  loc_178B92A:       var_160 = var_14C & "' and MemBill1.Site_Code='" & MemVar_1F92070 & "' and (MemBill1.LOGSITE_CODE='" & MemVar_1F92078 & "' or MemBill1.LOGSITE_CODE='HO')"
  loc_178B933:       unk_537E3E.Execute var_160, var_C0, var_114
  loc_178B93E:       Set var_98 = var_174
  loc_178B998:       If IsNull(CVar(var_98.Fields.Item("ToPeriod"))) Then
  loc_178B9B5:         var_C0 = Me.Fields.Item("AppDate")
  loc_178B9CC:         If IsNull(CVar(var_C0)) Then
  loc_178B9DA:           Set var_A0 = Me.Txt
  loc_178B9E0:           Call 0.Method_Proc_281_56_178D1C40 (CInt(&H22))
  loc_178BA1A:           Me.TxtFrPeriod.Text = CStr(Format(CVar(var_C0), "dd/MMM/YYYY"))
  loc_178BA35:         Else
  loc_178BA89:           Me.TxtFrPeriod.Text = CStr(Format(CVar(Me.Fields.Item("AppDate")), "dd/MMM/YYYY"))
  loc_178BAA1:         End If
  loc_178BAA4:       Else
  loc_178BB0F:         If (var_98.Fields.Item("ToPeriod").Value < Me.Fields.Item("AppDate").Value) Then
  loc_178BB66:           Me.TxtFrPeriod.Text = CStr(Format(CVar(Me.Fields.Item("AppDate")), "dd/MMM/YYYY"))
  loc_178BB81:         Else
  loc_178BBCE:           var_194 = Format(DateAdd("d", CDbl(1), CVar(var_98.Fields.Item("ToPeriod"))), "dd/MMM/YYYY")
  loc_178BBE4:           Me.TxtFrPeriod.Text = CStr(var_194)
  loc_178BBFE:         End If
  loc_178BBFE:       End If
  loc_178BC11:       var_E4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BC19:       var_104 = CVar(CLng(1)) 'Long
  loc_178BC4C:       var_184 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_178BC54:       Set var_140 = Me.Fgrid
  loc_178BC5A:       LateIdCallSt
  loc_178BC89:       var_E4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BC91:       var_104 = CVar(CLng(&HA)) 'Long
  loc_178BCC4:       var_184 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_178BCCC:       Set var_140 = Me.Fgrid
  loc_178BCD2:       LateIdCallSt
  loc_178BD23:       var_C4 = CStr(Me.Fgrid.TextMatrix))
  loc_178BD2B:       var_2D8 = Val(var_C4)
  loc_178BD48:       var_140 = Me.Fields.Item("Amount")
  loc_178BD57:       Proc_6_39_E7C810(var_194, CVar(var_140), var_2D8, CVar(CLng(2)), CVar(CLng(Me.Fgrid.Row)), var_140, CVar(var_140))
  loc_178BD6F:       var_124 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BD77:       var_1C4 = CVar(CLng(2)) 'Long
  loc_178BDC7:       var_27C = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BDCF:       var_29C = CVar(CLng(2)) 'Long
  loc_178BDF8:       var_2BC = CVar(CStr(Format(IIf((CDbl(var_2D8) = CDbl(0)), var_194, CVar(Val(CStr(Me.Fgrid.TextMatrix))))), "0.00"))) 'String
  loc_178BE00:       Set var_2D0 = Me.Fgrid
  loc_178BE06:       LateIdCallSt
  loc_178BE56:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BE5E:       var_F4 = CVar(CLng(3)) 'Long
  loc_178BEC8:       var_1B4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BED0:       var_1D4 = CVar(CLng(3)) 'Long
  loc_178BEFD:       var_258 = IIf((IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0), IIf((IsDate(CVar(Me.TxtFrPeriod)) = 0), MemVar_1F920EC, CVar(Me.TxtFrPeriod)), CVar(CStr(Me.Fgrid.TextMatrix))))
  loc_178BF15:       var_27C = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BF1D:       var_29C = CVar(CLng(3)) 'Long
  loc_178BF46:       var_2F8 = CVar(CStr(Format(var_258, "dd/MMM/YYYY"))) 'String
  loc_178BF4E:       Set var_1D8 = Me.Fgrid
  loc_178BF54:       LateIdCallSt
  loc_178BFA1:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178BFA9:       var_F4 = CVar(CLng(5)) 'Long
  loc_178C025:       var_1C4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C02D:       var_1F8 = CVar(CLng(5)) 'Long
  loc_178C052:       var_228 = (DateAdd("m", CDbl(1), IIf((IsDate(CVar(Me.TxtFrPeriod)) = 0), MemVar_1F920EC, CVar(Me.TxtFrPeriod))) - 1)
  loc_178C082:       var_28C = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C08A:       var_2AC = CVar(CLng(5)) 'Long
  loc_178C0AA:       var_308 = Format(IIf((IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0), Me.Fgrid.TextMatrix), CVar(CStr(Me.Fgrid.TextMatrix)))), "dd/MMM/YYYY")
  loc_178C0B3:       var_328 = CVar(CStr(var_308)) 'String
  loc_178C0BB:       Set var_1D8 = Me.Fgrid
  loc_178C0C1:       LateIdCallSt
  loc_178C112:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C11A:       var_F4 = CVar(CLng(3)) 'Long
  loc_178C148:       var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C150:       var_1B4 = CVar(CLng(5)) 'Long
  loc_178C15F:       var_194 = Me.Fgrid.TextMatrix)
  loc_178C1A1:       var_208 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C1CB:       var_228 = (DateDiff("d", CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CStr(var_194)), 1, 1) + 1)
  loc_178C1E9:       LateIdCallSt
  loc_178C266:       var_184 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("AcCode")), CVar(CLng(&HC)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid, CVar(CStr(Format(Me.Fgrid.TextMatrix), "0"))), 1, 1)) 'String
  loc_178C274:       LateIdCallSt
  loc_178C2D9:       var_184 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ACPosting")), CVar(CLng(&HE)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid, var_184, CVar(CLng(4)))) 'String
  loc_178C2E7:       LateIdCallSt
  loc_178C33B:       var_C0 = Me.Fields.Item("AcountYN")
  loc_178C34C:       var_184 = CVar(Proc_6_38_E68A98(CVar(var_C0), CVar(CLng(&HF)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid, var_184)) 'String
  loc_178C35A:       LateIdCallSt
  loc_178C3A2:       Set var_A0 = Me.Txt
  loc_178C3A8:       Call 0.Method_Proc_281_56_178D1C40 (CInt(&H1F), var_C0, var_C4, CVar(CLng(6)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid)
  loc_178C3B0:       var_184 = var_C0.Text
  loc_178C3B8:       var_170 = CVar(var_C4) 'String
  loc_178C3C6:       LateIdCallSt
  loc_178C40E:       Set var_A0 = Me.Txt
  loc_178C414:       Call 0.Method_Proc_281_56_178D1C40 (CInt(&H20), var_C0, var_C4, CVar(CLng(7)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid)
  loc_178C41C:       var_170 = var_C0.Text
  loc_178C424:       var_170 = CVar(var_C4) 'String
  loc_178C42C:       Set var_140 = Me.Fgrid
  loc_178C432:       LateIdCallSt
  loc_178C45F:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C476:       Set var_C0 = Me.Fgrid
  loc_178C47C:       LateIdCallSt
  loc_178C4B1:       var_D4 = "TaxStru"
  loc_178C4C8:       var_C0 = Me.Fields.Item(var_D4)
  loc_178C4D9:       var_184 = CVar(Proc_6_38_E68A98(CVar(var_C0), CVar(CLng(&HB)), CVar(CLng(Me.Fgrid.Row)), var_C0, vbNullString, CVar(CLng(&H10)), var_D4)) 'String
  loc_178C4E7:       LateIdCallSt
  loc_178C52F:       Set var_A0 = Me.Txt
  loc_178C535:       Call 0.Method_Proc_281_56_178D1C40 (CInt(&H21), var_C0, var_C4, CVar(CLng(8)), CVar(CLng(Me.Fgrid.Row)), Me.Fgrid, var_184)
  loc_178C53D:       var_140 = var_C0.Text
  loc_178C545:       var_170 = CVar(var_C4) 'String
  loc_178C54D:       Set var_140 = Me.Fgrid
  loc_178C553:       LateIdCallSt
  loc_178C580:       var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C588:       var_F4 = CVar(CLng(9)) 'Long
  loc_178C58D:       var_114 = "Revenue"
  loc_178C597:       Set var_C0 = Me.Fgrid
  loc_178C59D:       LateIdCallSt
  loc_178C5AF:     End If
  loc_178C5AF:     Call Proc_281_42_15331B0(var_C0, var_114, var_F4, var_D4, var_140, var_170)
  loc_178C5CD:     var_D4 = CVar((CLng(Me.Fgrid.Rows) - 1)) 'Long
  loc_178C5D5:     var_F4 = CVar(CLng(&HA)) 'Long
  loc_178C5EF:     var_C4 = CStr(Me.Fgrid.TextMatrix))
  loc_178C608:     If (var_C4 <> vbNullString) Then
  loc_178C620:       var_170 = CVar(CStr(CLng(Me.Fgrid.Rows))) 'String
  loc_178C628:       Set var_C0 = Me.Fgrid
  loc_178C644:     End If
  loc_178C647:   Else
  loc_178C64E:     If (var_B4 = CLng(2)) Then
  loc_178C65B:       Set var_A0 = Me.TxtGrid
  loc_178C661:       Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, Fgrid.DispID_10000, var_170, var_F4, var_D4)
  loc_178C680:       Set var_13C = Me.TxtGrid
  loc_178C686:       Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_140, var_C4, Not(IsNumeric(CVar(var_C0))), var_170)
  loc_178C68E:       var_208 = var_140.Text
  loc_178C6B0:       If (var_194 Or (CDbl(Val(var_C4)) <= CDbl(0))) Then
  loc_178C6C4:         Set var_A0 = Me.TxtGrid
  loc_178C6CA:         Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, CStr(0))
  loc_178C6D2:         var_C0.Text = var_1B4
  loc_178C6E6:         Proc_281_56_178D1C4 = 0
  loc_178C6EC:       End If
  loc_178C6F9:       Set var_A0 = Me.TxtGrid
  loc_178C6FF:       Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0)
  loc_178C71F:       var_E4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C737:       var_104 = CVar(CLng(Me.Fgrid.Col)) 'Long
  loc_178C76B:       Set var_174 = Me.Fgrid
  loc_178C771:       LateIdCallSt
  loc_178C795:       Call Proc_281_42_15331B0(var_174, CVar(CStr(Format(CVar(var_C0.Text), "0.00"))), 1, 1)
  loc_178C79D:     Else
  loc_178C7A4:       If (var_B4 = CLng(3)) Then
  loc_178C7B1:         Set var_A0 = Me.TxtGrid
  loc_178C7B7:         Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, var_104)
  loc_178C7CA:         var_C4 = Proc_6_33_1512840(var_C0, var_E4)
  loc_178C7D7:         Set var_140 = Me.TxtGrid
  loc_178C7DD:         Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_174)
  loc_178C7E5:         var_174.Text = var_C4
  loc_178C802:         Set var_A0 = Me.TxtGrid
  loc_178C808:         Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0)
  loc_178C822:         If (IsDate(CVar(var_C0)) = 0) Then
  loc_178C82A:           Proc_281_56_178D1C4 = 0
  loc_178C830:         End If
  loc_178C843:         var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C85B:         var_F4 = CVar(CLng(Me.Fgrid.Col)) 'Long
  loc_178C86D:         Set var_A0 = Me.TxtGrid
  loc_178C873:         Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, var_C4)
  loc_178C87B:         var_F4 = var_C0.Text
  loc_178C883:         var_184 = CVar(var_C4) 'String
  loc_178C88B:         Set var_174 = Me.Fgrid
  loc_178C891:         LateIdCallSt
  loc_178C8C2:         var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C8CA:         var_F4 = CVar(CLng(4)) 'Long
  loc_178C902:         If (CDbl(Val(CStr(Me.Fgrid.TextMatrix)))) = CDbl(0)) Then
  loc_178C918:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C920:           var_F4 = CVar(CLng(4)) 'Long
  loc_178C929:           var_170 = CVar(CStr(1)) 'String
  loc_178C931:           Set var_C0 = Me.Fgrid
  loc_178C937:           LateIdCallSt
  loc_178C94D:         End If
  loc_178C960:         var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C968:         var_F4 = CVar(CLng(5)) 'Long
  loc_178C99D:         If (IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0) Then
  loc_178C9B3:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178C9BB:           var_F4 = CVar(CLng(4)) 'Long
  loc_178C9F3:           var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CA0B:           var_1B4 = CVar(CLng(Me.Fgrid.Col)) 'Long
  loc_178CA49:           var_208 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CA51:           var_27C = CVar(CLng(5)) 'Long
  loc_178CA73:           var_228 = (DateAdd("d", Val(CStr(Me.Fgrid.TextMatrix))), CVar(CStr(Me.Fgrid.TextMatrix)))) - 1)
  loc_178CA8A:           var_2E8 = CVar(CStr(Format(Me.Fgrid.TextMatrix), "dd/MMM/YYYY"))) 'String
  loc_178CA92:           Set var_25C = Me.Fgrid
  loc_178CA98:           LateIdCallSt
  loc_178CAD2:         Else
  loc_178CAE5:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CAED:           var_F4 = CVar(CLng(3)) 'Long
  loc_178CAF6:           Set var_C0 = Me.Fgrid
  loc_178CAFC:           var_170 = var_C0.TextMatrix)
  loc_178CB1B:           var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CB23:           var_1B4 = CVar(CLng(5)) 'Long
  loc_178CB32:           var_194 = Me.Fgrid.TextMatrix)
  loc_178CB65:           Set var_174 = Me.Fgrid
  loc_178CB74:           var_208 = CVar(CLng(var_174.Row)) 'Long
  loc_178CB7C:           var_27C = CVar(CLng(4)) 'Long
  loc_178CB9E:           var_228 = (DateDiff("d", CVar(CStr(var_170)), CVar(CStr(var_194)), 1, 1) + 1)
  loc_178CBAE:           var_2BC = CVar(CStr(Format(Me.Fgrid.TextMatrix), "0"))) 'String
  loc_178CBB6:           Set var_1D8 = Me.Fgrid
  loc_178CBBC:           LateIdCallSt
  loc_178CBEE:         End If
  loc_178CBF1:       Else
  loc_178CBF8:         If (var_B4 = CLng(5)) Then
  loc_178CC05:           Set var_A0 = Me.TxtGrid
  loc_178CC0B:           Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, var_1D8, var_2BC, 1, 1, var_27C)
  loc_178CC1E:           var_C4 = Proc_6_33_1512840(var_C0, var_208, var_194, var_1B4)
  loc_178CC2B:           Set var_140 = Me.TxtGrid
  loc_178CC31:           Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_174, var_C4, var_114)
  loc_178CC39:           var_174.Text = var_170
  loc_178CC56:           Set var_A0 = Me.TxtGrid
  loc_178CC5C:           Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0)
  loc_178CC76:           If (IsDate(CVar(var_C0)) = 0) Then
  loc_178CC7E:             Proc_281_56_178D1C4 = 0
  loc_178CC84:           End If
  loc_178CCBE:           Set var_A0 = Me.TxtGrid
  loc_178CCC4:           Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, CVar(CLng(Me.Fgrid.Col)))
  loc_178CCD7:           var_184 = CVar(Proc_6_33_1512840(var_C0, CVar(CLng(Me.Fgrid.Row)))) 'String
  loc_178CCDF:           Set var_1D8 = Me.Fgrid
  loc_178CCE5:           LateIdCallSt
  loc_178CD16:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CD1E:           var_F4 = CVar(CLng(3)) 'Long
  loc_178CD53:           If (IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0) Then
  loc_178CD69:             var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CD71:             var_F4 = CVar(CLng(3)) 'Long
  loc_178CD7B:             var_170 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_178CD83:             Set var_C0 = Me.Fgrid
  loc_178CD89:             LateIdCallSt
  loc_178CD9F:           End If
  loc_178CDB2:           var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CDBA:           var_F4 = CVar(CLng(3)) 'Long
  loc_178CDC3:           Set var_C0 = Me.Fgrid
  loc_178CDC9:           var_170 = var_C0.TextMatrix)
  loc_178CDE8:           var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CDF0:           var_1B4 = CVar(CLng(5)) 'Long
  loc_178CDF9:           Set var_140 = Me.Fgrid
  loc_178CDFF:           var_194 = var_140.TextMatrix)
  loc_178CE41:           var_208 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CE49:           var_27C = CVar(CLng(4)) 'Long
  loc_178CE6B:           var_228 = (DateDiff("d", CVar(CStr(var_170)), CVar(CStr(var_194)), 1, 1) + 1)
  loc_178CE7B:           var_2BC = CVar(CStr(Format(Me.Fgrid.TextMatrix), "0"))) 'String
  loc_178CE83:           Set var_1D8 = Me.Fgrid
  loc_178CE89:           LateIdCallSt
  loc_178CEBE:         Else
  loc_178CEC5:           If (var_B4 = CLng(4)) Then
  loc_178CED2:             Set var_A0 = Me.TxtGrid
  loc_178CED8:             Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, var_1D8, var_2BC, 1, 1, var_27C)
  loc_178CEF7:             Set var_13C = Me.TxtGrid
  loc_178CEFD:             Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_140, var_C4, Not(IsNumeric(CVar(var_C0))), var_208, var_194)
  loc_178CF05:             var_1B4 = var_140.Text
  loc_178CF27:             If (var_114 Or (CDbl(Val(var_C4)) <= CDbl(0))) Then
  loc_178CF2E:               var_C4 = CStr(1)
  loc_178CF3B:               Set var_A0 = Me.TxtGrid
  loc_178CF41:               Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, var_C4)
  loc_178CF49:               var_C0.Text = var_170
  loc_178CF58:             End If
  loc_178CF65:             Set var_A0 = Me.TxtGrid
  loc_178CF6B:             Call 0.Method_Proc_281_56_178D1C40 (arg_C, var_C0, var_C4)
  loc_178CF73:             var_F4 = var_C0.Text
  loc_178CF8B:             var_E4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178CFA3:             var_104 = CVar(CLng(Me.Fgrid.Col)) 'Long
  loc_178CFCF:             var_1E8 = CVar(CStr(Format(CVar(var_C4), "0"))) 'String
  loc_178CFD7:             Set var_174 = Me.Fgrid
  loc_178CFDD:             LateIdCallSt
  loc_178D014:             var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178D01C:             var_F4 = CVar(CLng(3)) 'Long
  loc_178D051:             If (IsDate(CVar(CStr(Me.Fgrid.TextMatrix)))) = 0) Then
  loc_178D067:               var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178D06F:               var_F4 = CVar(CLng(3)) 'Long
  loc_178D079:               var_170 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_178D081:               Set var_C0 = Me.Fgrid
  loc_178D087:               LateIdCallSt
  loc_178D09D:             End If
  loc_178D0B0:             var_D4 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178D0B8:             var_F4 = CVar(CLng(4)) 'Long
  loc_178D0F0:             var_114 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178D0F8:             var_1B4 = CVar(CLng(3)) 'Long
  loc_178D136:             var_208 = CVar(CLng(Me.Fgrid.Row)) 'Long
  loc_178D13E:             var_27C = CVar(CLng(5)) 'Long
  loc_178D160:             var_218 = (DateAdd("d", Val(CStr(Me.Fgrid.TextMatrix))), CVar(CStr(Me.Fgrid.TextMatrix)))) - 1)
  loc_178D177:             var_2BC = CVar(CStr(Format(DateDiff("d", CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CStr(Me.Fgrid.TextMatrix))), 1, 1), "dd/MMM/YYYY"))) 'String
  loc_178D17F:             Set var_1D8 = Me.Fgrid
  loc_178D185:             LateIdCallSt
  loc_178D1B8:           End If
  loc_178D1B8:         End If
  loc_178D1B8:       End If
  loc_178D1B8:     End If
  loc_178D1B8:   End If
  loc_178D1B8: End If
  loc_178D1BD: Proc_281_56_178D1C4 = &HFF
End Sub

Public Sub Proc_281_57_FC3D74
  'Data Table: 537E24
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC3BF7: If (CLng(Me.Fgrid.Col) = CLng(1)) Then
  loc_FC3BFC:   var_92 = 1 'Byte
  loc_FC3C00: End If
  loc_FC3C09: Set var_98 = Me.TxtGrid
  loc_FC3C0F: Call 0.Method_Proc_281_57_FC3D740 (0, var_B0)
  loc_FC3C32: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC3C66: For var_D4 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC3C8A:   If (CLng(var_88) = CLng(Me.Fgrid.Row)) Then
  loc_FC3C8D:     GoTo loc_FC3D5F
  loc_FC3C90:   End If
  loc_FC3C94:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC3CBE:   var_D0 = Trim(CVar(CStr(Me.Fgrid.TextMatrix))))
  loc_FC3CC8:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC3CFD:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC3D21:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC3D3A:     Set var_98 = Me.TxtGrid
  loc_FC3D40:     Call 0.Method_Proc_281_57_FC3D740 (0, var_B0, CVar(CLng(var_92)))
  loc_FC3D48:     var_B0.SetFocus
  loc_FC3D59:     Proc_281_57_FC3D74 = 0
  loc_FC3D5F:     ' Referenced from: FC3C8D
  loc_FC3D5F:   End If
  loc_FC3D62: Next var_D4 'Integer
  loc_FC3D6C: Proc_281_57_FC3D74 = &HFF
End Sub

Public Sub Proc_281_58_137AA14
  'Data Table: 537E24
  Dim var_86 As Integer
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_12C As String
  Dim var_138 As TextBox
  Dim var_108 As Variant
  Dim var_3B4 As TextBox
  Dim var_13C As String
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_3D8 As Variant
  Dim var_478 As Variant
  Dim unk_537E3E As Connection15
  Dim var_8C As Recordset15
  loc_137A222: var_86 = 0
  loc_137A24A: For var_A8 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_8E = var_A8 'Integer
  loc_137A27B:   If ((var_8E > 1) And (CLng(var_8E) < (CLng(Me.Fgrid.Rows) - 1))) Then
  loc_137A282:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A2A4:     var_F8 = CVar(CStr(Me.Fgrid.TextMatrix))) 'String
  loc_137A2AA:     var_108 = Trim(var_F8)
  loc_137A2C6:     If (var_108 = vbNullString) Then
  loc_137A2E2:       MsgBox("Define revenue ", &H40, var_F8, var_108, var_128)
  loc_137A2F2:       Proc_281_58_137AA14 = CVar(CLng(&HA))
  loc_137A2F8:     End If
  loc_137A2F8:   End If
  loc_137A2FC:   var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A304:   var_D8 = CVar(CLng(&HA)) 'Long
  loc_137A324:   var_108 = Trim(CVar(CStr(Me.Fgrid.TextMatrix))))
  loc_137A340:   If CBool(var_108 <> vbNullString) Then
  loc_137A347:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A369:     var_12C = CStr(Me.Fgrid.TextMatrix))
  loc_137A37F:     If (CDbl(Val(var_12C)) <= CDbl(0)) Then
  loc_137A395:       Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137A3A0:       var_B8 = CVar(CLng(2)) 'Long
  loc_137A3AF:       Me.Fgrid.Col = var_B8
  loc_137A3BB:       Set var_94 = Me.Fgrid
  loc_137A3CC:       Call FGrid_UnknownEvent_B()
  loc_137A3D6:       Call TxtGrid_GotFocus(0)
  loc_137A3E1:       Call 0.Method_arg_50 (var_12C, Fgrid.DispID_8001, CVar(CLng(2)), var_B8, CVar(CLng(2)))
  loc_137A3F7:       var_B8 = "Please Fill Valid Amount."
  loc_137A402:       MsgBox(var_B8, 0, CVar(var_12C), var_108, var_128)
  loc_137A412:       Proc_281_58_137AA14 = var_B8
  loc_137A418:     End If
  loc_137A41C:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A451:     If Not(IsDate(CVar(CStr(Me.Fgrid.TextMatrix))))) Then
  loc_137A467:       Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137A472:       var_B8 = CVar(CLng(3)) 'Long
  loc_137A481:       Me.Fgrid.Col = var_B8
  loc_137A48D:       Set var_94 = Me.Fgrid
  loc_137A49E:       Call FGrid_UnknownEvent_B()
  loc_137A4A8:       Call TxtGrid_GotFocus(0)
  loc_137A4B3:       Call 0.Method_arg_50 (var_12C, Fgrid.DispID_8001, CVar(CLng(3)), var_B8)
  loc_137A4C9:       var_B8 = "Please Fill Valid Date."
  loc_137A4D4:       MsgBox(var_B8, 0, CVar(var_12C), var_108, var_128)
  loc_137A4E4:       Proc_281_58_137AA14 = var_B8
  loc_137A4EA:     End If
  loc_137A4EE:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A510:     var_12C = CStr(Me.Fgrid.TextMatrix))
  loc_137A526:     If (CDbl(Val(var_12C)) <= CDbl(0)) Then
  loc_137A53C:       Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137A556:       Me.Fgrid.Col = CVar(CLng(4))
  loc_137A562:       Set var_94 = Me.Fgrid
  loc_137A573:       Call FGrid_UnknownEvent_B()
  loc_137A57D:       Call TxtGrid_GotFocus(0)
  loc_137A588:       Call 0.Method_arg_50 (var_12C, Fgrid.DispID_8001, CVar(CLng(4)))
  loc_137A59E:       var_B8 = "Please Fill Valid Days."
  loc_137A5A9:       MsgBox(var_B8, 0, CVar(var_12C), var_108, var_128)
  loc_137A5B9:       Proc_281_58_137AA14 = var_B8
  loc_137A5BF:     End If
  loc_137A5C3:     var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A5F8:     If Not(IsDate(CVar(CStr(Me.Fgrid.TextMatrix))))) Then
  loc_137A60E:       Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137A628:       Me.Fgrid.Col = CVar(CLng(5))
  loc_137A634:       Set var_94 = Me.Fgrid
  loc_137A645:       Call FGrid_UnknownEvent_B()
  loc_137A64F:       Call TxtGrid_GotFocus(0)
  loc_137A65A:       Call 0.Method_arg_50 (var_12C, Fgrid.DispID_8001, CVar(CLng(5)))
  loc_137A670:       var_B8 = "Please Fill Valid Date."
  loc_137A67B:       MsgBox(var_B8, 0, CVar(var_12C), var_108, var_128)
  loc_137A68B:       Proc_281_58_137AA14 = var_B8
  loc_137A691:     End If
  loc_137A691:   End If
  loc_137A694: Next var_A8 'Integer
  loc_137A6BE: For var_132 = 1 To CInt((CLng(Me.Fgrid.Rows) - 1)): var_8E = var_132 'Integer
  loc_137A6D2:   Set var_94 = Me.Txt
  loc_137A6D8:   Call 0.Method_Proc_281_58_137AA140 (CInt(0), var_138)
  loc_137A6E9:   var_B8 = CVar(CLng(var_8E)) 'Long
  loc_137A6F1:   var_D8 = CVar(CLng(&HA)) 'Long
  loc_137A700:   var_A4 = Me.Fgrid.TextMatrix)
  loc_137A727:   var_F8 = Me.Fgrid.TextMatrix)
  loc_137A738:   Proc_6_7_F25D88(var_128, CVar(CStr(var_F8)), CVar(CLng(3)), CVar(CLng(var_8E)))
  loc_137A769:   Proc_6_7_F25D88(var_234, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8E)))
  loc_137A79A:   Proc_6_7_F25D88(var_2D8, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_8E)))
  loc_137A7CB:   Proc_6_7_F25D88(var_37C, CVar(CStr(Me.Fgrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_8E)))
  loc_137A7DE:   Set var_3B0 = Me.Txt
  loc_137A7E4:   Call 0.Method_Proc_281_58_137AA140 (CInt(&H1F), var_3B4, var_3B8, var_A4)
  loc_137A7EC:   var_D8 = var_3B4.Text
  loc_137A805:   var_13C = "Select MemBill1.VNo from MemBill1 Inner Join MemBill On MemBill.DocId=MemBill1.DocId where MemBill.MemCode='" & var_138.Tag
  loc_137A81E:   var_190 = CVar(var_13C & "' And MemBill1.FacilityCode='" & CStr(var_A4) & "' And (MemBill1.FrPeriod Between ") 'String
  loc_137A824:   var_1A0 = var_190 & var_128 
  loc_137A867:   var_3D8 = var_1A0 & " And " & var_234 & " Or MemBill1.ToPeriod Between " & var_2D8 & " And " & var_37C & ") And MemBill1.DocId<>'" & CVar(var_3B8) 
  loc_137A896:   var_478 = var_3D8 & "' And MemBill1.Site_Code='" & CVar(MemVar_1F92070) & "' and (MemBill1.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or MemBill1.LOGSITE_CODE='HO')" 
  loc_137A8A4:   unk_537E3E.Execute CStr(var_478), var_49C, -1
  loc_137A8AF:   Set var_8C = var_4A0
  loc_137A92B:   If (var_8C.RecordCount > 0) Then
  loc_137A941:     Me.Fgrid.Row = CVar(CLng(var_8E))
  loc_137A95B:     Me.Fgrid.Col = CVar(CLng(1))
  loc_137A967:     Set var_94 = Me.Fgrid
  loc_137A978:     Call FGrid_UnknownEvent_B()
  loc_137A982:     Call TxtGrid_GotFocus(0)
  loc_137A9AD:     Proc_6_39_E7C810(var_F8, CVar(var_8C.Fields.Item("VNo")), Fgrid.DispID_8001)
  loc_137A9D4:     MsgBox("Revenue Adready Billed Against Voucher No. " & var_F8, &H40, "Information", var_190, var_1A0)
  loc_137A9F0:     Set var_8C = Nothing
  loc_137A9F3:     Proc_281_58_137AA14 = var_4A0
  loc_137A9F9:   End If
  loc_137A9FC: Next var_132 'Integer
  loc_137AA0B: Set var_8C = Nothing
  loc_137AA0E: Proc_281_58_137AA14 = &HFF
End Sub
