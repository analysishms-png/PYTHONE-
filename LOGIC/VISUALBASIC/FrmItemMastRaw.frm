VERSION 5.00
Begin VB.Form FrmItemMastRaw
  Caption = "Item Entry (Raw)"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmItemMastRaw.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 11625
  ClientHeight = 9435
  LockControls = -1  'True
  Begin Frame FrLblInfo
    Caption = "Label Info."
    BackColor = &HC0FFFF&
    ForeColor = &H80&
    Left = 6990
    Top = 1995
    Width = 5175
    Height = 3045
    Visible = 0   'False
    TabIndex = 75
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 255
      Width = 3855
      Height = 285
      TabIndex = 82
      BorderStyle = 0 'None
      MaxLength = 40
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
      ForeColor = &HC00000&
      Left = 1260
      Top = 570
      Width = 3855
      Height = 285
      TabIndex = 81
      BorderStyle = 0 'None
      MaxLength = 40
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
      ForeColor = &HC00000&
      Left = 1260
      Top = 885
      Width = 3855
      Height = 285
      TabIndex = 80
      BorderStyle = 0 'None
      MaxLength = 40
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
      ForeColor = &HC00000&
      Left = 1260
      Top = 1200
      Width = 3855
      Height = 285
      TabIndex = 79
      BorderStyle = 0 'None
      MaxLength = 40
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
      ForeColor = &HC00000&
      Left = 1260
      Top = 1515
      Width = 3855
      Height = 285
      TabIndex = 78
      BorderStyle = 0 'None
      MaxLength = 40
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
      Index = 29
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 1830
      Width = 3855
      Height = 285
      TabIndex = 77
      BorderStyle = 0 'None
      MaxLength = 40
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
      Index = 30
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 2145
      Width = 3855
      Height = 285
      TabIndex = 76
      BorderStyle = 0 'None
      MaxLength = 40
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
    Begin DTPicker DTP
      Left = 1425
      Top = 2505
      Width = 1980
      Height = 315
      TabIndex = 83
    End
    Begin BtnEnh CmdLabelPrint
      Left = 3855
      Top = 2550
      Width = 1305
      Height = 465
      TabIndex = 84
    End
    Begin Label LblName
      Caption = "Label Name"
      Index = 21
      ForeColor = &HC00000&
      Left = 105
      Top = 255
      Width = 1155
      Height = 240
      TabIndex = 92
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
      Caption = "Label Qty."
      Index = 14
      ForeColor = &HC00000&
      Left = 105
      Top = 570
      Width = 975
      Height = 240
      TabIndex = 91
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
      Caption = "Remark 1"
      Index = 15
      ForeColor = &HC00000&
      Left = 105
      Top = 885
      Width = 900
      Height = 240
      TabIndex = 90
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
      Caption = "Remark 2"
      Index = 16
      ForeColor = &HC00000&
      Left = 105
      Top = 1200
      Width = 900
      Height = 240
      TabIndex = 89
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
      Caption = "Remark 3"
      Index = 17
      ForeColor = &HC00000&
      Left = 105
      Top = 1515
      Width = 900
      Height = 240
      TabIndex = 88
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
      Caption = "Remark 4"
      Index = 18
      ForeColor = &HC00000&
      Left = 105
      Top = 1830
      Width = 900
      Height = 240
      TabIndex = 87
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
      Caption = "Remark 5"
      Index = 19
      ForeColor = &HC00000&
      Left = 105
      Top = 2145
      Width = 900
      Height = 240
      TabIndex = 86
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
      Caption = "Packing Date"
      Index = 20
      ForeColor = &HC00000&
      Left = 105
      Top = 2535
      Width = 1260
      Height = 240
      TabIndex = 85
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11625
    Height = 450
    TabIndex = 74
  End
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2805
    Top = 1710
    Width = 3855
    Height = 285
    TabIndex = 2
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
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2805
    Top = 2340
    Width = 3855
    Height = 285
    TabIndex = 4
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
  Begin DataGrid DGFinItem
    Left = 7290
    Top = 5790
    Width = 8220
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 68
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    Left = 2850
    Top = 8265
    Width = 3855
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2805
    Top = 5490
    Width = 525
    Height = 285
    TabIndex = 16
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
  Begin Frame Frame1
    Caption = "Frame1"
    ForeColor = &HC00000&
    Left = 8550
    Top = 5730
    Width = 6510
    Height = 3375
    Visible = 0   'False
    TabIndex = 52
    Appearance = 0 'Flat
    Begin CommandButton Command6
      Caption = "X"
      BackColor = &HE0E0E0&
      Left = 6105
      Top = 120
      Width = 360
      Height = 315
      TabIndex = 64
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H8000000F&
    End
    Begin DataGrid DgNewUnit
      Left = 2205
      Top = 990
      Width = 2100
      Height = 2295
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 62
    End
  End
End
Begin DataGrid DgXItem
  Left = 2205
  Top = 435
  Width = 4230
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 61
End
Begin CommandButton Command4
  Caption = "Manage Item's Purchase Unit"
  BackColor = &HE0E0E0&
  Left = 2085
  Top = 2505
  Width = 2430
  Height = 705
  TabIndex = 59
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin TextBox Txt
  Index = 19
  BackColor = &HFFFFFF&
  Left = 2205
  Top = 720
  Width = 1440
  Height = 255
  TabIndex = 55
  BorderStyle = 0 'None
  MaxLength = 6
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
  Left = 2205
  Top = 450
  Width = 1440
  Height = 255
  TabIndex = 54
  BorderStyle = 0 'None
  MaxLength = 6
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
  Left = 2205
  Top = 180
  Width = 3855
  Height = 255
  TabIndex = 53
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
Begin Label Label3
  Caption = "Nature Of Units Must Be same"
  ForeColor = &HFF&
  Left = 255
  Top = 2205
  Width = 5955
  Height = 315
  TabIndex = 60
  Alignment = 2 'Center
  BeginProperty Font
    Name = "Tahoma"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblLedgerAc
  Caption = "Old Purchase Unit"
  Index = 5
  ForeColor = &H0&
  Left = 390
  Top = 435
  Width = 1605
  Height = 240
  TabIndex = 58
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
  Caption = "Item Name"
  Index = 11
  ForeColor = &H0&
  Left = 390
  Top = 180
  Width = 975
  Height = 240
  TabIndex = 57
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
Begin Label LblLedgerAc
  Caption = "New Purchase Unit"
  Index = 4
  ForeColor = &H0&
  Left = 405
  Top = 705
  Width = 1695
  Height = 240
  TabIndex = 56
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
Begin CommandButton Command5
  Caption = "Manage Item's Purchase Unit"
  BackColor = &HE0E0E0&
  Left = 4350
  Top = 8325
  Width = 2430
  Height = 705
  Visible = 0   'False
  TabIndex = 63
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin CommandButton Command3
  Caption = "Manage Item Issue Unit"
  BackColor = &HE0E0E0&
  Left = 4905
  Top = 10395
  Width = 1560
  Height = 465
  Visible = 0   'False
  TabIndex = 51
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin CommandButton Command2
  Caption = "&Wizard"
  BackColor = &HE0E0E0&
  Left = 4875
  Top = 5850
  Width = 1560
  Height = 1020
  Visible = 0   'False
  TabIndex = 50
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin DataGrid DGConsumptionItem
  Left = 3450
  Top = 8010
  Width = 4230
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 46
End
Begin DataGrid DGHelp
  Left = 3165
  Top = 7650
  Width = 4230
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 19
End
Begin DataGrid DGCat
  Left = 2865
  Top = 7290
  Width = 4410
  Height = 2040
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 32
End
Begin DataGrid DGItemGroup
  Left = 2520
  Top = 6945
  Width = 4965
  Height = 2130
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 24
End
Begin DataGrid DGUnit
  Left = 2235
  Top = 6600
  Width = 2100
  Height = 2295
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 39
End
Begin TextBox Txt
  Index = 16
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 2025
  Width = 3855
  Height = 285
  TabIndex = 3
  BorderStyle = 0 'None
  MaxLength = 35
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
Begin CommandButton Command1
  Caption = "&Consumption"
  BackColor = &HE0E0E0&
  Left = 2310
  Top = 9555
  Width = 1560
  Height = 1020
  Visible = 0   'False
  TabIndex = 43
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  MaskColor = &H8000000F&
End
Begin TextBox Txt
  Index = 13
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 1125
  Width = 1440
  Height = 285
  Visible = 0   'False
  TabIndex = 0
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
  Left = 10725
  Top = 660
  Width = 1230
  Height = 240
  Visible = 0   'False
  TabIndex = 35
  BorderStyle = 0 'None
  MaxLength = 8
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
  Index = 11
  Left = 8955
  Top = 390
  Width = 2460
  Height = 240
  Visible = 0   'False
  TabIndex = 33
  BorderStyle = 0 'None
  MaxLength = 21
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
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 3915
  Width = 3855
  Height = 285
  TabIndex = 9
  BorderStyle = 0 'None
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
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 5805
  Width = 1440
  Height = 285
  Visible = 0   'False
  TabIndex = 17
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  ForeColor = &HC00000&
  Left = 2760
  Top = 7725
  Width = 1440
  Height = 255
  Visible = 0   'False
  TabIndex = 18
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 5175
  Width = 1440
  Height = 285
  TabIndex = 14
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 4545
  Width = 1440
  Height = 285
  TabIndex = 12
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 4860
  Width = 1440
  Height = 285
  TabIndex = 13
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 4230
  Width = 1440
  Height = 285
  TabIndex = 11
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 1395
  Width = 3855
  Height = 285
  TabIndex = 1
  BorderStyle = 0 'None
  MaxLength = 35
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 3600
  Width = 3855
  Height = 285
  TabIndex = 8
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
  Index = 2
  BackColor = &HFFFFFF&
  Left = 2850
  Top = 7995
  Width = 3855
  Height = 255
  Enabled = 0   'False
  Visible = 0   'False
  TabIndex = 10
  BorderStyle = 0 'None
  MaxLength = 12
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
  ForeColor = &HC00000&
  Left = 2805
  Top = 2655
  Width = 1440
  Height = 285
  TabIndex = 5
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
  Index = 14
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 2970
  Width = 1440
  Height = 285
  TabIndex = 6
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
  Index = 15
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2805
  Top = 3285
  Width = 1440
  Height = 285
  TabIndex = 7
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
Begin MSFlexGrid FGPoint
  Left = 7365
  Top = 7635
  Width = 1980
  Height = 1440
  Visible = 0   'False
  TabIndex = 42
End
Begin BtnEnh ChkLblInfo
  Left = 9195
  Top = 1530
  Width = 2955
  Height = 465
  TabIndex = 93
End
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = 4050
  Top = 6855
  Width = 2790
  Height = 285
  TabIndex = 73
  Alignment = 2 'Center
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Times New Roman"
    Size = 12
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblUser
  Caption = "User"
  ForeColor = &HFF0000&
  Left = 675
  Top = 6855
  Width = 2880
  Height = 255
  TabIndex = 72
  Alignment = 2 'Center
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Times New Roman"
    Size = 11.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 360
  Width = 180
  Height = 540
  TabIndex = 71
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
  AutoSize = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 19.5
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblName
  Caption = "HSN Code"
  Index = 13
  ForeColor = &HC00000&
  Left = 1050
  Top = 1710
  Width = 960
  Height = 240
  TabIndex = 70
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
Begin Label LblLedgerAc
  Caption = "Bar Code"
  Index = 7
  ForeColor = &HC00000&
  Left = 1050
  Top = 2325
  Width = 885
  Height = 240
  TabIndex = 69
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
  Caption = "Finish Item"
  Index = 12
  ForeColor = &H0&
  Left = 1200
  Top = 8265
  Width = 945
  Height = 240
  Visible = 0   'False
  TabIndex = 67
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
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 4
  ForeColor = &H80&
  Left = 3345
  Top = 5505
  Width = 885
  Height = 240
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
Begin Label LblLedgerAc
  Caption = "Active"
  Index = 6
  ForeColor = &HC00000&
  Left = 1050
  Top = 5490
  Width = 585
  Height = 240
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
Begin Label Label1
  Caption = "In Wt. Unit"
  Index = 2
  ForeColor = &H80&
  Left = 4260
  Top = 5190
  Width = 990
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
Begin Label Label1
  Caption = "In Wt. Unit"
  Index = 1
  ForeColor = &H80&
  Left = 4260
  Top = 4860
  Width = 990
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
Begin Label Label1
  Caption = "In Wt. Unit"
  Index = 0
  ForeColor = &H80&
  Left = 4260
  Top = 4545
  Width = 990
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
Begin Label LblName
  Caption = "Consumption Item"
  Index = 5
  ForeColor = &HC00000&
  Left = 1050
  Top = 2025
  Width = 1725
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
Begin Label Label2
  BackColor = &HC0FFFF&
  ForeColor = &H80&
  Left = 4260
  Top = 2655
  Width = 2400
  Height = 270
  TabIndex = 44
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
Begin Label LblName
  Caption = "Conversion Ratio"
  Index = 4
  ForeColor = &HC00000&
  Left = 1050
  Top = 3285
  Width = 1620
  Height = 240
  TabIndex = 41
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
Begin Label LblLedgerAc
  Caption = "Wt. Unit"
  Index = 1
  ForeColor = &HC00000&
  Left = 1050
  Top = 2955
  Width = 750
  Height = 240
  TabIndex = 40
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
Begin Label LblLedgerAc
  Caption = "Code"
  Index = 3
  ForeColor = &HC00000&
  Left = 1050
  Top = 1125
  Width = 495
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
Begin Label Label1
  Caption = "Vr. No."
  Index = 3
  ForeColor = &H0&
  Left = 9405
  Top = 660
  Width = 585
  Height = 240
  Visible = 0   'False
  TabIndex = 37
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
Begin Label LblVPrefix
  Caption = "VPrefix"
  ForeColor = &HFF&
  Left = 10020
  Top = 660
  Width = 675
  Height = 240
  Visible = 0   'False
  TabIndex = 36
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
Begin Label Label1
  Caption = "DocID"
  Index = 29
  ForeColor = &H0&
  Left = 8385
  Top = 405
  Width = 555
  Height = 210
  Visible = 0   'False
  TabIndex = 34
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
  Caption = "Item Category"
  Index = 3
  ForeColor = &HC00000&
  Left = 1050
  Top = 3915
  Width = 1335
  Height = 240
  TabIndex = 31
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
  Caption = "Min Stock"
  Index = 8
  ForeColor = &HC00000&
  Left = 1050
  Top = 4545
  Width = 930
  Height = 240
  TabIndex = 30
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
  Caption = "Max Stock"
  Index = 10
  ForeColor = &HC00000&
  Left = 1050
  Top = 4860
  Width = 990
  Height = 240
  TabIndex = 29
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
  Caption = "Reorder Stock"
  Index = 9
  ForeColor = &HC00000&
  Left = 1050
  Top = 5175
  Width = 1350
  Height = 240
  TabIndex = 28
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
  Caption = "Purchase Rate"
  Index = 7
  ForeColor = &HC00000&
  Left = 1050
  Top = 4230
  Width = 1380
  Height = 240
  TabIndex = 27
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
  Caption = "Opening value"
  Index = 1
  ForeColor = &HC00000&
  Left = 975
  Top = 7725
  Width = 1365
  Height = 240
  Visible = 0   'False
  TabIndex = 26
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
Begin Label LblName
  Caption = "Item Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1050
  Top = 1395
  Width = 1035
  Height = 240
  TabIndex = 25
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
Begin Label LblLedgerAc
  Caption = "Item Group"
  Index = 0
  ForeColor = &HC00000&
  Left = 1050
  Top = 3600
  Width = 1065
  Height = 240
  TabIndex = 23
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
  Caption = "Opening Stock"
  Index = 6
  ForeColor = &HC00000&
  Left = 1050
  Top = 5805
  Width = 1395
  Height = 240
  Visible = 0   'False
  TabIndex = 22
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
  Caption = "Type"
  Index = 2
  ForeColor = &H0&
  Left = 1230
  Top = 7995
  Width = 420
  Height = 240
  Visible = 0   'False
  TabIndex = 21
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
Begin Label LblLedgerAc
  Caption = "Purchase Unit"
  Index = 2
  ForeColor = &HC00000&
  Left = 1050
  Top = 2640
  Width = 1320
  Height = 240
  TabIndex = 20
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

Attribute VB_Name = "FrmItemMastRaw"

Private global_120 As Integer
Private global_88 As Double
Private global_96 As Double

Private Sub DGUnit_UnknownEvent_9 'FB0130
  'Data Table: 525C54
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FAFFB3: Me.DGUnit.Visible = False
  loc_FAFFD2: If (Me.RecordCount > 0) Then
  loc_FB002E:   Set var_CC = Me.Txt
  loc_FB0034:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(Val(CStr(Me.DGUnit.Tag))), var_D0)
  loc_FB003C:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FB0060:   Set var_B4 = Me.DGUnit
  loc_FB0076:   var_EC = Val(CStr(var_B4.Tag))
  loc_FB00B5:   Set var_CC = Me.Txt
  loc_FB00BB:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Name").Value))
  loc_FB00C3:   var_D0.Text = var_EC
  loc_FB00E3: End If
  loc_FB00FD: var_EC = Val(CStr(Me.DGUnit.Tag))
  loc_FB010B: Set var_B0 = Me.Txt
  loc_FB0111: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(var_EC), var_B4)
  loc_FB0119: var_B4.SetFocus
  loc_FB012D: Exit Sub
  loc_FB012E: Set var_2400 = var_EC
End Sub

Private Sub DGUnit_UnknownEvent_1F 'EADA98
  'Data Table: 525C54
  loc_EADA1E: Proc_6_153_E91194(Me.DGUnit, arg_14)
  loc_EADA35: Set var_8C = Me.FGPoint
  loc_EADA51: Proc_6_138_106D6F8(Me.DGUnit, global_68, CInt(1))
  loc_EADA6A: Set var_8C = Me.FGPoint
  loc_EADA86: Proc_6_138_106D6F8(Me.DGUnit, global_68, CInt(&HE))
  loc_EADA94: Exit Sub
End Sub

Private Sub Command5_Click() 'EB665C
  'Data Table: 525C54
  Dim var_88 As Variant
  Dim var_8C As TextBox
  loc_EB65C8: Me.Frame1.Visible = True
  loc_EB65DC: Me.Command4.Enabled = True
  loc_EB65F1: Set var_88 = Me.Txt
  loc_EB65F7: Call 0.Method_Command5_Click0 (CInt(&H11), var_8C)
  loc_EB65FF: var_8C.Enabled = True
  loc_EB6618: Set var_88 = Me.Txt
  loc_EB661E: Call 0.Method_Command5_Click0 (CInt(&H12), var_8C)
  loc_EB6626: var_8C.Enabled = False
  loc_EB663F: Set var_88 = Me.Txt
  loc_EB6645: Call 0.Method_Command5_Click0 (CInt(&H13), var_8C)
  loc_EB664D: var_8C.Enabled = True
  loc_EB6659: Exit Sub
End Sub

Private Sub DGFinItem_UnknownEvent_9 'F43C84
  'Data Table: 525C54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F43B7B: Me.DGFinItem.Visible = False
  loc_F43B9A: If (Me.RecordCount > 0) Then
  loc_F43BD9:   Set var_B4 = Me.Txt
  loc_F43BDF:   Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H15), var_B8)
  loc_F43BE7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F43C1A:   var_B0 = Me.Fields.Item("Name")
  loc_F43C39:   Set var_B4 = Me.Txt
  loc_F43C3F:   Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H15), var_B8)
  loc_F43C47:   var_B8.Text = CStr(var_B0.Value)
  loc_F43C5D: End If
  loc_F43C68: Set var_A8 = Me.Txt
  loc_F43C6E: Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H15))
  loc_F43C76: var_B0.SetFocus
  loc_F43C82: Exit Sub
End Sub

Private Sub DGFinItem_UnknownEvent_1F 'E6E548
  'Data Table: 525C54
  loc_E6E506: Proc_6_153_E91194(Me.DGFinItem, arg_14)
  loc_E6E51D: Set var_8C = Me.FGPoint
  loc_E6E539: Proc_6_138_106D6F8(Me.DGFinItem, global_84, CInt(&H15))
  loc_E6E547: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '151667C
  'Data Table: 525C54
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_90 As Variant
  Dim var_88 As DataGrid
  loc_1515762: Set var_88 = Me.Txt
  loc_1515768: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1515776: Proc_6_74_E226B0(var_8C)
  loc_1515782: Call Proc_50_50_F979E8(var_8C)
  loc_1515787: On Error Goto loc_1516638
  loc_151578D: var_92 = Index
  loc_1515798: If Not (var_92 = CInt(6)) Then
  loc_15157A3:   If Not (var_92 = CInt(5)) Then
  loc_15157AE:     If Not (var_92 = CInt(7)) Then
  loc_15157B9:       If Not (var_92 = CInt(8)) Then
  loc_15157C4:         If Not (var_92 = CInt(4)) Then
  loc_15157CF:           If Not (var_92 = CInt(9)) Then
  loc_15157DA:             If (var_92 = CInt(&HF)) Then
  loc_15157DD:             End If
  loc_15157DD:           End If
  loc_15157DD:         End If
  loc_15157DD:       End If
  loc_15157DD:     End If
  loc_15157DD:   End If
  loc_15157EC:   Set var_88 = Me.Txt
  loc_15157F2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15157FA:   var_8C.SelStart = 0
  loc_1515813:   Set var_88 = Me.Txt
  loc_1515819:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1515821:   var_98 = var_8C.Text
  loc_1515834:   Set var_90 = Me.Txt
  loc_151583A:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1515842:   var_9C.SelLength = Len(var_98)
  loc_1515855: End If
  loc_1515858: var_9E = Index
  loc_1515863: If (var_9E = CInt(&H11)) Then
  loc_151587D:   If (Me.RecordCount > 0) Then
  loc_151588C:     Set var_8C = Nothing
  loc_15158A4:     Proc_6_137_1193554(Me.DgXItem, global_76, Index)
  loc_15158B2:   End If
  loc_1515900:   Set var_88 = Me.Txt
  loc_1515906:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_151590E:   var_8C = var_8C.Text
  loc_1515926:   If (var_9E Or (var_98 = vbNullString)) Then
  loc_1515929:     Exit Sub
  loc_151592A:   End If
  loc_1515937:   Set var_88 = Me.Txt
  loc_151593D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1515945:   var_98 = var_8C.Text
  loc_1515957:   var_B8 = "Name"
  loc_1515992:   If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_151599B:     Me.MoveFirst
  loc_15159BE:     Set var_88 = Me.Txt
  loc_15159C4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_15159CC:     0 = var_8C.Text
  loc_15159E5:     Me.Find 1 & var_98 & "'", var_B8, var_92
  loc_15159FA:   End If
  loc_15159FD: Else
  loc_1515A05:   If (var_9E = CInt(&H13)) Then
  loc_1515A1F:     If (Me.RecordCount > 0) Then
  loc_1515A2E:       Set var_8C = Nothing
  loc_1515A46:       Proc_6_137_1193554(Me.DgNewUnit, global_80)
  loc_1515A54:     End If
  loc_1515AA2:     Set var_88 = Me.Txt
  loc_1515AA8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1515AB0:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1515AC8:     If (Index Or (var_98 = vbNullString)) Then
  loc_1515ACB:       Exit Sub
  loc_1515ACC:     End If
  loc_1515AD9:     Set var_88 = Me.Txt
  loc_1515ADF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1515AE7:     var_98 = var_8C.Text
  loc_1515AF9:     var_B8 = "Name"
  loc_1515B34:     If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1515B3D:       Me.MoveFirst
  loc_1515B60:       Set var_88 = Me.Txt
  loc_1515B66:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1515B6E:       0 = var_8C.Text
  loc_1515B87:       Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1515B9C:     End If
  loc_1515B9F:   Else
  loc_1515BA7:     If (var_9E = CInt(&H10)) Then
  loc_1515BC1:       If (Me.RecordCount > 0) Then
  loc_1515BCF:         Set var_8C = Me.FGPoint
  loc_1515BE7:         Proc_6_137_1193554(Me.DGConsumptionItem, global_72)
  loc_1515BF5:       End If
  loc_1515C43:       Set var_88 = Me.Txt
  loc_1515C49:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1515C51:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1515C69:       If (Index Or (var_98 = vbNullString)) Then
  loc_1515C6C:         Exit Sub
  loc_1515C6D:       End If
  loc_1515C7A:       Set var_88 = Me.Txt
  loc_1515C80:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1515C88:       var_98 = var_8C.Text
  loc_1515C9A:       var_B8 = "Name"
  loc_1515CD5:       If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1515CDE:         Me.MoveFirst
  loc_1515D01:         Set var_88 = Me.Txt
  loc_1515D07:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1515D0F:         0 = var_8C.Text
  loc_1515D28:         Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1515D3D:       End If
  loc_1515D40:     Else
  loc_1515D48:       If (var_9E = CInt(&H15)) Then
  loc_1515D62:         If (Me.RecordCount > 0) Then
  loc_1515D70:           Set var_8C = Me.FGPoint
  loc_1515D88:           Proc_6_137_1193554(Me.DGFinItem, global_84)
  loc_1515D96:         End If
  loc_1515DE4:         Set var_88 = Me.Txt
  loc_1515DEA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1515DF2:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1515E0A:         If (Index Or (var_98 = vbNullString)) Then
  loc_1515E0D:           Exit Sub
  loc_1515E0E:         End If
  loc_1515E1B:         Set var_88 = Me.Txt
  loc_1515E21:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1515E29:         var_98 = var_8C.Text
  loc_1515E3B:         var_B8 = "Name"
  loc_1515E76:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1515E7F:           Me.MoveFirst
  loc_1515EA2:           Set var_88 = Me.Txt
  loc_1515EA8:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1515EB0:           0 = var_8C.Text
  loc_1515EC9:           Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1515EDE:         End If
  loc_1515EE1:       Else
  loc_1515EE9:         If (var_9E = CInt(0)) Then
  loc_1515F03:           If (Me.RecordCount > 0) Then
  loc_1515F11:             Set var_8C = Me.FGPoint
  loc_1515F29:             Proc_6_137_1193554(Me.DGHelp, global_56)
  loc_1515F37:           End If
  loc_1515F85:           Set var_88 = Me.Txt
  loc_1515F8B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1515F93:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1515FAB:           If (Index Or (var_98 = vbNullString)) Then
  loc_1515FAE:             Exit Sub
  loc_1515FAF:           End If
  loc_1515FBC:           Set var_88 = Me.Txt
  loc_1515FC2:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1515FCA:           var_98 = var_8C.Text
  loc_1515FDC:           var_B8 = "Name"
  loc_1516017:           If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_1516020:             Me.MoveFirst
  loc_1516043:             Set var_88 = Me.Txt
  loc_1516049:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1516051:             0 = var_8C.Text
  loc_151606A:             Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_151607F:           End If
  loc_1516082:         Else
  loc_151608A:           If (var_9E = CInt(3)) Then
  loc_15160A4:             If (Me.RecordCount > 0) Then
  loc_15160B2:               Set var_8C = Me.FGPoint
  loc_15160CA:               Proc_6_137_1193554(Me.DGItemGroup, global_60)
  loc_15160D8:             End If
  loc_1516126:             Set var_88 = Me.Txt
  loc_151612C:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1516134:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151614C:             If (Index Or (var_98 = vbNullString)) Then
  loc_151614F:               Exit Sub
  loc_1516150:             End If
  loc_151615D:             Set var_88 = Me.Txt
  loc_1516163:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151616B:             var_98 = var_8C.Text
  loc_151617D:             var_B8 = "Name"
  loc_15161B8:             If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_15161C1:               Me.MoveFirst
  loc_15161E4:               Set var_88 = Me.Txt
  loc_15161EA:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_15161F2:               0 = var_8C.Text
  loc_151620B:               Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1516220:             End If
  loc_1516223:           Else
  loc_151622B:             If (var_9E = CInt(&HA)) Then
  loc_1516245:               If (Me.RecordCount > 0) Then
  loc_1516253:                 Set var_8C = Me.FGPoint
  loc_151626B:                 Proc_6_137_1193554(Me.DGCat, global_64)
  loc_1516279:               End If
  loc_15162C7:               Set var_88 = Me.Txt
  loc_15162CD:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_15162D5:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15162ED:               If (Index Or (var_98 = vbNullString)) Then
  loc_15162F0:                 Exit Sub
  loc_15162F1:               End If
  loc_15162FE:               Set var_88 = Me.Txt
  loc_1516304:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151630C:               var_98 = var_8C.Text
  loc_151631E:               var_B8 = "Name"
  loc_1516335:               var_9C = Me.Fields.Item(var_B8)
  loc_1516359:               If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_1516362:                 Me.MoveFirst
  loc_1516385:                 Set var_88 = Me.Txt
  loc_151638B:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1516393:                 0 = var_8C.Text
  loc_15163AC:                 Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_15163C1:               End If
  loc_15163C4:             Else
  loc_15163CC:               If Not (var_9E = CInt(1)) Then
  loc_15163D7:                 If (var_9E = CInt(&HE)) Then
  loc_15163DA:                 End If
  loc_15163E7:                 Set var_88 = Me.Txt
  loc_15163ED:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151640C:                 Me.DGUnit.Left = CVar(var_8C.Left)
  loc_1516427:                 Set var_90 = Me.Txt
  loc_151642D:                 Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1516447:                 Set var_88 = Me.Txt
  loc_151644D:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1516465:                 var_B8 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H19))) 'Single
  loc_1516474:                 Me.DGUnit.Top = CVar(var_8C.Left)
  loc_1516499:                 Me.DGUnit.Tag = CVar(CStr(Index))
  loc_15164BB:                 If (Me.RecordCount > 0) Then
  loc_15164C9:                   Set var_8C = Me.FGPoint
  loc_15164E1:                   Proc_6_137_1193554(Me.DGUnit, global_68)
  loc_15164EF:                 End If
  loc_151653D:                 Set var_88 = Me.Txt
  loc_1516543:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_151654B:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1516563:                 If (Index Or (var_98 = vbNullString)) Then
  loc_1516566:                   Exit Sub
  loc_1516567:                 End If
  loc_1516574:                 Set var_88 = Me.Txt
  loc_151657A:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1516582:                 var_98 = var_8C.Text
  loc_1516594:                 var_B8 = "Name"
  loc_15165CF:                 If CBool(CVar(var_98) <> Me.Fields.Item(var_B8).Value) Then
  loc_15165D8:                   Me.MoveFirst
  loc_15165FB:                   Set var_88 = Me.Txt
  loc_1516601:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_1516609:                   0 = var_8C.Text
  loc_1516622:                   Me.Find 1 & var_98 & "'", var_B8, var_8C
  loc_1516637:                 End If
  loc_1516637:               End If
  loc_1516637:             End If
  loc_1516637:           End If
  loc_1516637:         End If
  loc_1516637:       End If
  loc_1516637:     End If
  loc_1516637:   End If
  loc_1516637: End If
  loc_1516637: Exit Sub
  loc_1516638: ' Referenced from: 1515787
  loc_1516640: Set var_88 = Err()
  loc_1516646: Call 0.Method_arg_2C (var_98)
  loc_1516667: MsgBox(CVar(var_98), &H40, "Information", var_E8, var_128)
  loc_151667A: Exit Sub
  loc_151667B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1391EB0
  'Data Table: 525C54
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As DataGrid
  Dim var_E4 As Variant
  Dim var_9C As DataGrid
  Dim var_F4 As Variant
  loc_13915F6: If (CLng(Shift) = &H1B) Then
  loc_13915F9:   Call Proc_50_50_F979E8()
  loc_13915FE:   Exit Sub
  loc_13915FF: End If
  loc_1391602: var_86 = KeyCode
  loc_139160D: If (var_86 = CInt(&H11)) Then
  loc_1391628:   Set var_9C = Nothing
  loc_1391633:   Set var_98 = Nothing
  loc_1391661:   Proc_6_69_134A198(Me.DgXItem, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_1391678: Else
  loc_1391680:   If (var_86 = CInt(&H13)) Then
  loc_139169B:     Set var_9C = Nothing
  loc_13916D4:     Proc_6_69_134A198(Me.DgNewUnit, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_13916EB:   Else
  loc_13916F3:     If (var_86 = CInt(0)) Then
  loc_139174C:       Proc_6_69_134A198(Me.DGHelp, Me.Txt, KeyCode, global_56, Shift, 0, 1, Nothing)
  loc_13917BB:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13917E1:         Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13917EF:       End If
  loc_13917F2:     Else
  loc_13917FA:       If (var_86 = CInt(3)) Then
  loc_1391857:         Proc_6_69_134A198(Me.DGItemGroup, Me.Txt, CInt(3), global_60, Shift, 0, 1, Nothing)
  loc_13918C6:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13918EC:           Proc_6_138_106D6F8(Me.DGItemGroup, global_60, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13918FA:         End If
  loc_13918FD:       Else
  loc_1391905:         If (var_86 = CInt(&H10)) Then
  loc_1391962:           Proc_6_69_134A198(Me.DGConsumptionItem, Me.Txt, CInt(&H10), global_72, Shift, 0, 2, Nothing)
  loc_13919D1:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13919F7:             Proc_6_138_106D6F8(Me.DGConsumptionItem, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1391A05:           End If
  loc_1391A08:         Else
  loc_1391A10:           If (var_86 = CInt(&H15)) Then
  loc_1391A6D:             Proc_6_69_134A198(Me.DGFinItem, Me.Txt, CInt(&H15), global_84, Shift, 0, 1, Nothing)
  loc_1391ADC:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1391B02:               Proc_6_138_106D6F8(Me.DGFinItem, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1391B10:             End If
  loc_1391B13:           Else
  loc_1391B1B:             If (var_86 = CInt(&HA)) Then
  loc_1391B74:               Proc_6_69_134A198(Me.DGCat, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1391BE3:               If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1391C09:                 Proc_6_138_106D6F8(Me.DGCat, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1391C17:               End If
  loc_1391C1A:             Else
  loc_1391C22:               If Not (var_86 = CInt(1)) Then
  loc_1391C2D:                 If (var_86 = CInt(&HE)) Then
  loc_1391C30:                 End If
  loc_1391C34:                 Set var_9C = Me.DGUnit
  loc_1391C7B:                 Proc_6_79_11ACE04(var_9C, Me.Txt, KeyCode, global_68, Shift, 0, 1, Me.FGPoint)
  loc_1391CE8:                 If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1391D0E:                   Proc_6_138_106D6F8(Me.DGUnit, global_68, KeyCode, Me.FGPoint, 0, var_9C)
  loc_1391D1C:                 End If
  loc_1391D1C:               End If
  loc_1391D1C:             End If
  loc_1391D1C:           End If
  loc_1391D1C:         End If
  loc_1391D1C:       End If
  loc_1391D1C:     End If
  loc_1391D1C:   End If
  loc_1391D1C: End If
  loc_1391D53: var_E4 = Me.DGUnit.Visible
  loc_1391D6A: var_F4 = Me.DGConsumptionItem.Visible
  loc_1391DF9: If ((((((((CBool(Me.DgNewUnit.Visible) = 0) And (CBool(Me.DgXItem.Visible) = 0)) And (CBool(var_E4) = 0)) And (CBool(var_F4) = 0)) And (CBool(Me.DGHelp.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGCat.Visible) = 0)) And (CBool(Me.DGFinItem.Visible) = 0)) Then
  loc_1391E1A:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H15))) Then
  loc_1391E25:     Call Txt_Validate(KeyCode)
  loc_1391E61:     If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_F4) = 6) Then
  loc_1391E64:       Call TopCtrl1_UnknownEvent_16()
  loc_1391E69:     End If
  loc_1391E69:     Exit Sub
  loc_1391E6A:   End If
  loc_1391E7F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1391E88:     Proc_6_75_E527CC(Shift, arg_14, &HFF, 0)
  loc_1391E8D:   End If
  loc_1391EA0:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_1391EA9:     Proc_6_76_E52838(Shift, arg_14, 1)
  loc_1391EAE:   End If
  loc_1391EAE: End If
  loc_1391EAE: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '126D7E8
  'Data Table: 525C54
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_126D24A: Proc_6_133_E7EF78(var_94)
  loc_126D253: arg_10 = CInt(var_94)
  loc_126D25C: Proc_6_58_E054C0(arg_10, arg_10)
  loc_126D264: var_96 = KeyAscii
  loc_126D26F: If (var_96 = CInt(&HD)) Then
  loc_126D27C:   Set var_9C = Me.Txt
  loc_126D282:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_126D29D:   Proc_6_42_129A86C(var_A0, arg_10, 4)
  loc_126D2AC: Else
  loc_126D2B4:   If (var_96 = CInt(0)) Then
  loc_126D2D3:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_126D300:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_126D332:       Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyAscii, Me.FGPoint)
  loc_126D340:     End If
  loc_126D343:   Else
  loc_126D34B:     If (var_96 = CInt(3)) Then
  loc_126D36A:       If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_126D397:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_126D3C9:         Proc_6_138_106D6F8(Me.DGItemGroup, global_60, KeyAscii, Me.FGPoint, 0)
  loc_126D3D7:       End If
  loc_126D3DA:     Else
  loc_126D3E2:       If (var_96 = CInt(&H10)) Then
  loc_126D401:         If (CBool(Me.DGConsumptionItem.Visible) = &HFF) Then
  loc_126D42E:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_126D460:           Proc_6_138_106D6F8(Me.DGConsumptionItem, global_72, KeyAscii, Me.FGPoint, 0)
  loc_126D46E:         End If
  loc_126D471:       Else
  loc_126D479:         If (var_96 = CInt(&H15)) Then
  loc_126D498:           If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_126D4C5:             Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_84, arg_10, "Name")
  loc_126D4F7:             Proc_6_138_106D6F8(Me.DGFinItem, global_84, KeyAscii, Me.FGPoint, 0)
  loc_126D505:           End If
  loc_126D508:         Else
  loc_126D510:           If (var_96 = CInt(&H11)) Then
  loc_126D52F:             If (CBool(Me.DgXItem.Visible) = &HFF) Then
  loc_126D55C:               Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_126D56B:             End If
  loc_126D56E:           Else
  loc_126D576:             If (var_96 = CInt(&H13)) Then
  loc_126D595:               If (CBool(Me.DgNewUnit.Visible) = &HFF) Then
  loc_126D5C2:                 Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Name", 0)
  loc_126D5D1:               End If
  loc_126D5D4:             Else
  loc_126D5DC:               If (var_96 = CInt(&HA)) Then
  loc_126D5FB:                 If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_126D628:                   Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name", 0)
  loc_126D642:                   Set var_A0 = Me.FGPoint
  loc_126D65A:                   Proc_6_138_106D6F8(Me.DGCat, global_64, KeyAscii, var_A0, 0)
  loc_126D668:                 End If
  loc_126D66B:               Else
  loc_126D673:                 If Not (var_96 = CInt(6)) Then
  loc_126D67E:                   If Not (var_96 = CInt(5)) Then
  loc_126D689:                     If Not (var_96 = CInt(7)) Then
  loc_126D694:                       If Not (var_96 = CInt(8)) Then
  loc_126D69F:                         If (var_96 = CInt(&HF)) Then
  loc_126D6A2:                         End If
  loc_126D6A2:                       End If
  loc_126D6A2:                     End If
  loc_126D6A2:                   End If
  loc_126D6AC:                   Set var_9C = Me.Txt
  loc_126D6B2:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_126D6CD:                   Proc_6_42_129A86C(var_A0, arg_10, 7, 3)
  loc_126D6DC:                 Else
  loc_126D6E4:                   If Not (var_96 = CInt(4)) Then
  loc_126D6EF:                     If (var_96 = CInt(9)) Then
  loc_126D6F2:                     End If
  loc_126D6FC:                     Set var_9C = Me.Txt
  loc_126D702:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_126D71D:                     Proc_6_42_129A86C(var_A0, arg_10, 7)
  loc_126D72C:                   Else
  loc_126D734:                     If (var_96 = CInt(&H14)) Then
  loc_126D760:                       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_126D770:                         Set var_9C = Me.Txt
  loc_126D776:                         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_126D77E:                         var_A0.Text = 2
  loc_126D78D:                       Else
  loc_126D7B6:                         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_126D7C6:                           Set var_9C = Me.Txt
  loc_126D7CC:                           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_126D7D4:                           var_A0.Text = var_96
  loc_126D7E0:                         End If
  loc_126D7E0:                       End If
  loc_126D7E2:                       arg_10 = 0
  loc_126D7E5:                     End If
  loc_126D7E5:                   End If
  loc_126D7E5:                 End If
  loc_126D7E5:               End If
  loc_126D7E5:             End If
  loc_126D7E5:           End If
  loc_126D7E5:         End If
  loc_126D7E5:       End If
  loc_126D7E5:     End If
  loc_126D7E5:   End If
  loc_126D7E5: End If
  loc_126D7E5: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'ECBAAC
  'Data Table: 525C54
  Dim var_86 As Integer
  loc_ECBA0B: var_86 = KeyCode
  loc_ECBA16: If Not (var_86 = CInt(1)) Then
  loc_ECBA21:   If (var_86 = CInt(&HE)) Then
  loc_ECBA24:   End If
  loc_ECBA40:   If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_ECBA4D:     var_A0 = "Name"
  loc_ECBA68:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_68)
  loc_ECBA9A:     Proc_6_138_106D6F8(Me.DGUnit, global_68, KeyCode, Me.FGPoint)
  loc_ECBAA8:   End If
  loc_ECBAA8: End If
  loc_ECBAA8: Exit Sub
  loc_ECBAA9: var_AC = Shift
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47794
  'Data Table: 525C54
  loc_E47772: Set var_88 = Me.Txt
  loc_E47778: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47786: Proc_6_73_E22704(var_8C)
  loc_E47792: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15D010C
  'Data Table: 525C54
  Dim var_8A As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_AC As String
  Dim var_98 As Fields15
  Dim var_C8 As String
  Dim var_B4 As TextBox
  Dim var_B0 As Variant
  Dim var_E8 As Variant
  loc_15CEDC0: On Error Goto loc_15D00C6
  loc_15CEDC6: var_8A = Cancel
  loc_15CEDD1: If (var_8A = CInt(&HD)) Then
  loc_15CEDD7:   Call Proc_50_49_108C834(var_8C)
  loc_15CEDE2:   If (var_8C = &HFF) Then
  loc_15CEDE7:     arg_10 = &HFF
  loc_15CEDEA:     Exit Sub
  loc_15CEDEB:   End If
  loc_15CEDEE: Else
  loc_15CEDF6:   If (var_8A = CInt(0)) Then
  loc_15CEDFC:     Call Proc_50_49_108C834(var_8C, arg_10)
  loc_15CEE07:     If (var_8C = &HFF) Then
  loc_15CEE0C:       arg_10 = &HFF
  loc_15CEE0F:       Exit Sub
  loc_15CEE10:     End If
  loc_15CEE51:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15CEE61:       Set var_98 = Me.Txt
  loc_15CEE67:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, vbNullString)
  loc_15CEE6F:       var_9C.Text = arg_10
  loc_15CEE88:       Set var_98 = Me.Txt
  loc_15CEE8E:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CEE96:       var_9C.Tag = vbNullString
  loc_15CEEB0:       Set var_98 = Me.Txt
  loc_15CEEB6:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_9C)
  loc_15CEEBE:       var_9C.Text = vbNullString
  loc_15CEED8:       Set var_98 = Me.Txt
  loc_15CEEDE:       Call 0.Method_Txt_Validate0 (CInt(&H16), var_9C)
  loc_15CEEE6:       var_9C.Text = vbNullString
  loc_15CEF00:       Set var_98 = Me.Txt
  loc_15CEF06:       Call 0.Method_Txt_Validate0 (CInt(&H17), var_9C)
  loc_15CEF0E:       var_9C.Text = vbNullString
  loc_15CEF1D:     Else
  loc_15CEF58:       Set var_B0 = Me.Txt
  loc_15CEF5E:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CEF66:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CEF99:       var_9C = Me.Fields.Item("Code")
  loc_15CEFB7:       Set var_B0 = Me.Txt
  loc_15CEFBD:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CEFC5:       var_B4.Tag = CStr(var_9C.Value)
  loc_15CEFE6:       Set var_98 = Me.Txt
  loc_15CEFEC:       Call 0.Method_Txt_Validate0 (CInt(&HD), var_9C)
  loc_15CF015:       If (Trim(CVar(var_9C)) = vbNullString) Then
  loc_15CF075:         Set var_B0 = Me.Txt
  loc_15CF07B:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_B4)
  loc_15CF083:         var_B4.Text = CStr(Val(CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCode")))), 4))))
  loc_15CF0A3:       End If
  loc_15CF0DC:       Set var_B0 = Me.Txt
  loc_15CF0E2:       Call 0.Method_Txt_Validate0 (CInt(&H16), var_B4)
  loc_15CF0EA:       var_B4.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCode")))
  loc_15CF118:       var_9C = Me.Fields.Item("CommodityCode")
  loc_15CF129:       var_C8 = Proc_6_38_E68A98(CVar(var_9C))
  loc_15CF137:       Set var_B0 = Me.Txt
  loc_15CF13D:       Call 0.Method_Txt_Validate0 (CInt(&H17), var_B4)
  loc_15CF145:       var_B4.Text = var_C8
  loc_15CF159:     End If
  loc_15CF15C:   Else
  loc_15CF164:     If Not (var_8A = CInt(1)) Then
  loc_15CF16F:       If (var_8A = CInt(&HE)) Then
  loc_15CF172:       End If
  loc_15CF1C0:       Set var_98 = Me.Txt
  loc_15CF1C6:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8)
  loc_15CF1CE:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_15CF1E6:       If (var_8A Or (var_C8 = vbNullString)) Then
  loc_15CF1E9:         Exit Sub
  loc_15CF1EA:       End If
  loc_15CF1F4:       Set var_98 = Me.Txt
  loc_15CF1FA:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_15CF22B:       var_B4 = Me.Fields.Item("Name")
  loc_15CF23A:       var_100 = Ucase(CVar(var_B4))
  loc_15CF256:       If (Ucase(CVar(var_9C)) = var_100) Then
  loc_15CF294:         Set var_B0 = Me.Txt
  loc_15CF29A:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF2A2:         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CF2BE:         var_AC = "Code"
  loc_15CF2D5:         var_9C = Me.Fields.Item(var_AC)
  loc_15CF2E6:         var_C8 = CStr(var_9C.Value)
  loc_15CF2F3:         Set var_B0 = Me.Txt
  loc_15CF2F9:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF301:         var_B4.Tag = var_C8
  loc_15CF317:       End If
  loc_15CF31D:       Me.MoveFirst
  loc_15CF340:       Set var_98 = Me.Txt
  loc_15CF346:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8, "Name like '")
  loc_15CF34E:       0 = var_9C.Text
  loc_15CF367:       Me.Find 1 & var_C8 & "*'", var_AC, var_9C
  loc_15CF393:       If (Me.AbsolutePosition > 0) Then
  loc_15CF3AD:         If (Me.RecordCount > 0) Then
  loc_15CF3EB:           Set var_B0 = Me.Txt
  loc_15CF3F1:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF3F9:           var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CF42C:           var_9C = Me.Fields.Item("Code")
  loc_15CF43D:           var_C8 = CStr(var_9C.Value)
  loc_15CF44A:           Set var_B0 = Me.Txt
  loc_15CF450:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF458:           var_B4.Tag = var_C8
  loc_15CF46E:           GoTo loc_15CF471
  loc_15CF471:           ' Referenced from:     15CF46E
  loc_15CF471:         End If
  loc_15CF471:       End If
  loc_15CF474:     Else
  loc_15CF47C:       If (var_8A = CInt(&H10)) Then
  loc_15CF4CC:         Set var_98 = Me.Txt
  loc_15CF4D2:         Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8)
  loc_15CF4DA:         ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) = var_9C.Text
  loc_15CF4F3:         If ( Or ((Me.RecordCount = 0) Or (var_C8 = vbNullString))) Then
  loc_15CF503:           Set var_98 = Me.Txt
  loc_15CF509:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CF511:           var_9C.Text = vbNullString
  loc_15CF52A:           Set var_98 = Me.Txt
  loc_15CF530:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CF538:           var_9C.Tag = vbNullString
  loc_15CF547:         Else
  loc_15CF582:           Set var_B0 = Me.Txt
  loc_15CF588:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF590:           var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CF5C3:           var_9C = Me.Fields.Item("Code")
  loc_15CF5D4:           var_C8 = CStr(var_9C.Value)
  loc_15CF5E1:           Set var_B0 = Me.Txt
  loc_15CF5E7:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF5EF:           var_B4.Tag = var_C8
  loc_15CF605:         End If
  loc_15CF608:       Else
  loc_15CF610:         If (var_8A = CInt(&H15)) Then
  loc_15CF660:           Set var_98 = Me.Txt
  loc_15CF666:           Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8)
  loc_15CF66E:           ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) = var_9C.Text
  loc_15CF687:           If ( Or ((Me.RecordCount = 0) Or (var_C8 = vbNullString))) Then
  loc_15CF697:             Set var_98 = Me.Txt
  loc_15CF69D:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CF6A5:             var_9C.Text = vbNullString
  loc_15CF6BE:             Set var_98 = Me.Txt
  loc_15CF6C4:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CF6CC:             var_9C.Tag = vbNullString
  loc_15CF6DB:           Else
  loc_15CF716:             Set var_B0 = Me.Txt
  loc_15CF71C:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF724:             var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CF757:             var_9C = Me.Fields.Item("Code")
  loc_15CF775:             Set var_B0 = Me.Txt
  loc_15CF77B:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF783:             var_B4.Tag = CStr(var_9C.Value)
  loc_15CF799:           End If
  loc_15CF79C:         Else
  loc_15CF7A4:           If (var_8A = CInt(&H11)) Then
  loc_15CF7E8:             If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15CF7F8:               Set var_98 = Me.Txt
  loc_15CF7FE:               Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CF806:               var_9C.Text = vbNullString
  loc_15CF81F:               Set var_98 = Me.Txt
  loc_15CF825:               Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CF82D:               var_9C.Tag = vbNullString
  loc_15CF847:               Set var_98 = Me.Txt
  loc_15CF84D:               Call 0.Method_Txt_Validate0 (CInt(&H12), var_9C)
  loc_15CF855:               var_9C.Text = vbNullString
  loc_15CF864:             Else
  loc_15CF89F:               Set var_B0 = Me.Txt
  loc_15CF8A5:               Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF8AD:               var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CF8FE:               Set var_B0 = Me.Txt
  loc_15CF904:               Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CF90C:               var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15CF93C:               var_9C = Me.Fields.Item("Unit")
  loc_15CF95B:               Set var_B0 = Me.Txt
  loc_15CF961:               Call 0.Method_Txt_Validate0 (CInt(&H12), var_B4)
  loc_15CF969:               var_B4.Text = Proc_6_38_E68A98(CVar(var_9C))
  loc_15CF97D:             End If
  loc_15CF980:           Else
  loc_15CF988:             If (var_8A = CInt(&H13)) Then
  loc_15CF9CC:               If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15CF9DC:                 Set var_98 = Me.Txt
  loc_15CF9E2:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CF9EA:                 var_9C.Text = vbNullString
  loc_15CFA03:                 Set var_98 = Me.Txt
  loc_15CFA09:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CFA11:                 var_9C.Tag = vbNullString
  loc_15CFA20:               Else
  loc_15CFA5B:                 Set var_B0 = Me.Txt
  loc_15CFA61:                 Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CFA69:                 var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CFA9C:                 var_9C = Me.Fields.Item("Code")
  loc_15CFABA:                 Set var_B0 = Me.Txt
  loc_15CFAC0:                 Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CFAC8:                 var_B4.Tag = CStr(var_9C.Value)
  loc_15CFADE:               End If
  loc_15CFAE1:             Else
  loc_15CFAE9:               If (var_8A = CInt(3)) Then
  loc_15CFB0C:                 var_8C = Me.EOF
  loc_15CFB2D:                 If ((Me.RecordCount = 0) Or ((var_8C = &HFF) Or (Me.BOF = &HFF))) Then
  loc_15CFB3D:                   Set var_98 = Me.Txt
  loc_15CFB43:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CFB4B:                   var_9C.Text = vbNullString
  loc_15CFB64:                   Set var_98 = Me.Txt
  loc_15CFB6A:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CFB72:                   var_9C.Tag = vbNullString
  loc_15CFB8C:                   Set var_98 = Me.Txt
  loc_15CFB92:                   Call 0.Method_Txt_Validate0 (CInt(2), var_9C)
  loc_15CFB9A:                   var_9C.Text = vbNullString
  loc_15CFBA9:                 Else
  loc_15CFBE4:                   Set var_B0 = Me.Txt
  loc_15CFBEA:                   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CFBF2:                   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CFC43:                   Set var_B0 = Me.Txt
  loc_15CFC49:                   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CFC51:                   var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15CFCA0:                   Set var_B0 = Me.Txt
  loc_15CFCA6:                   Call 0.Method_Txt_Validate0 (CInt(2), var_B4)
  loc_15CFCAE:                   var_B4.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Type")))
  loc_15CFCDC:                   var_9C = Me.Fields.Item("Type")
  loc_15CFCFA:                   Me.Label2.Caption = Proc_6_38_E68A98(CVar(var_9C))
  loc_15CFD0C:                 End If
  loc_15CFD0F:               Else
  loc_15CFD17:                 If (var_8A = CInt(4)) Then
  loc_15CFD24:                   Set var_98 = Me.Txt
  loc_15CFD2A:                   Call 0.Method_Txt_Validate0 (Cancel)
  loc_15CFD64:                   Set var_B0 = Me.Txt
  loc_15CFD6A:                   Call 0.Method_Txt_Validate0 (Cancel, var_B4, CStr(Format(CVar(var_9C), "0.00")))
  loc_15CFD72:                   var_B4.Text = 1
  loc_15CFD8F:                 Else
  loc_15CFD97:                   If Not (var_8A = CInt(9)) Then
  loc_15CFDA2:                     If (var_8A = CInt(8)) Then
  loc_15CFDA5:                     End If
  loc_15CFDAF:                     Set var_98 = Me.Txt
  loc_15CFDB5:                     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CFDEF:                     Set var_B0 = Me.Txt
  loc_15CFDF5:                     Call 0.Method_Txt_Validate0 (Cancel, var_B4, CStr(Format(CVar(var_9C), "0.00")), 1)
  loc_15CFDFD:                     var_B4.Text = 1
  loc_15CFE17:                     Call Proc_50_53_112E714(1)
  loc_15CFE1F:                   Else
  loc_15CFE27:                     If Not (var_8A = CInt(6)) Then
  loc_15CFE32:                       If Not (var_8A = CInt(5)) Then
  loc_15CFE3D:                         If Not (var_8A = CInt(7)) Then
  loc_15CFE48:                           If (var_8A = CInt(&HF)) Then
  loc_15CFE4B:                           End If
  loc_15CFE4B:                         End If
  loc_15CFE4B:                       End If
  loc_15CFE55:                       Set var_98 = Me.Txt
  loc_15CFE5B:                       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15CFE87:                       var_C8 = CStr(Format(CVar(var_9C), "0.000"))
  loc_15CFE95:                       Set var_B0 = Me.Txt
  loc_15CFE9B:                       Call 0.Method_Txt_Validate0 (Cancel, var_B4, var_C8)
  loc_15CFEA3:                       var_B4.Text = 1
  loc_15CFEC0:                     Else
  loc_15CFEC8:                       If (var_8A = CInt(&HA)) Then
  loc_15CFECE:                         Call Proc_50_49_108C834(var_8C, 1)
  loc_15CFED9:                         If (var_8C = &HFF) Then
  loc_15CFEDE:                           arg_10 = &HFF
  loc_15CFEE1:                           Exit Sub
  loc_15CFEE2:                         End If
  loc_15CFF30:                         Set var_98 = Me.Txt
  loc_15CFF36:                         Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_C8)
  loc_15CFF3E:                         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_15CFF56:                         If (arg_10 Or (var_C8 = vbNullString)) Then
  loc_15CFF59:                           Exit Sub
  loc_15CFF5A:                         End If
  loc_15CFF95:                         Set var_B0 = Me.Txt
  loc_15CFF9B:                         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15CFFA3:                         var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15CFFD6:                         var_9C = Me.Fields.Item("Code")
  loc_15CFFE7:                         var_C8 = CStr(var_9C.Value)
  loc_15CFFF4:                         Set var_B0 = Me.Txt
  loc_15CFFFA:                         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_15D0002:                         var_B4.Tag = var_C8
  loc_15D001B:                       Else
  loc_15D0023:                         If (var_8A = CInt(&H14)) Then
  loc_15D0030:                           Set var_98 = Me.Txt
  loc_15D0036:                           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D0055:                           var_E8 = Ucase(Left(CVar(var_9C), 1))
  loc_15D0071:                           If (var_E8 = "Y") Then
  loc_15D0081:                             Set var_98 = Me.Txt
  loc_15D0087:                             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D008F:                             var_9C.Text = "Yes"
  loc_15D009E:                           Else
  loc_15D00AB:                             Set var_98 = Me.Txt
  loc_15D00B1:                             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_15D00B9:                             var_9C.Text = "No"
  loc_15D00C5:                           End If
  loc_15D00C5:                         End If
  loc_15D00C5:                       End If
  loc_15D00C5:                     End If
  loc_15D00C5:                   End If
  loc_15D00C5:                 End If
  loc_15D00C5:               End If
  loc_15D00C5:             End If
  loc_15D00C5:           End If
  loc_15D00C5:         End If
  loc_15D00C5:       End If
  loc_15D00C5:     End If
  loc_15D00C5:   End If
  loc_15D00C5: End If
  loc_15D00C5: Exit Sub
  loc_15D00C6: ' Referenced from: 15CEDC0
  loc_15D00CE: Set var_98 = Err()
  loc_15D00D4: Call 0.Method_arg_2C (var_C8)
  loc_15D00F5: MsgBox(CVar(var_C8), &H40, "Information", var_E8, var_100)
  loc_15D0108: Exit Sub
  loc_15D0109: Exit Sub
End Sub

Private Sub CmdLabelPrint_UnknownEvent_9 'F80CF4
  'Data Table: 525C54
  Dim Me As Recordset15
  Dim var_168 As String
  loc_F80BF8: If (Proc_6_38_E68A98(CVar(Me.Fields.Item("ActiveYN"))) = "No") Then
  loc_F80C32:   If (MsgBox("Would U Wish to Print Non Active Item Labels", &H24, "Print Item Label", var_F0, var_110) = 7) Then
  loc_F80C35:     Exit Sub
  loc_F80C36:   End If
  loc_F80C36: End If
  loc_F80C66: var_168 = InputBox(CVar("Enter Number Of Labels" & vbCrLf & "U Want to Print."), "Print Item Label", var_F0, var_110, var_124, var_144, var_164)
  loc_F80CDB: Proc_96_100_1389558(CStr(Me.Fields.Item("SearchCode").Value), CLng(Val(var_168)), CDate(Me.DTP.Value))
  loc_F80CF3: Exit Sub
End Sub

Private Sub Command2_Click() 'E61EBC
  'Data Table: 525C54
  Dim Me As Recordset15
  loc_E61E83: If (Me.RecordCount > 0) Then
  loc_E61E8C:   Me.MoveFirst
  loc_E61E91:   ' Referenced from: E61EB5
  loc_E61EA3:   If Not(Me.EOF) Then
  loc_E61EA6:     Call TopCtrl1_UnknownEvent_D()
  loc_E61EAB:     Call TopCtrl1_UnknownEvent_16()
  loc_E61EB0:     Call TopCtrl1_UnknownEvent_12()
  loc_E61EB5:     GoTo loc_E61E91
  loc_E61EB8:   End If
  loc_E61EB8: End If
  loc_E61EB8: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F44364
  'Data Table: 525C54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4425B: Me.DGHelp.Visible = False
  loc_F4427A: If (Me.RecordCount > 0) Then
  loc_F442B9:   Set var_B4 = Me.Txt
  loc_F442BF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F442C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F442FA:   var_B0 = Me.Fields.Item("Name")
  loc_F44319:   Set var_B4 = Me.Txt
  loc_F4431F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44327:   var_B8.Text = CStr(var_B0.Value)
  loc_F4433D: End If
  loc_F44348: Set var_A8 = Me.Txt
  loc_F4434E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F44356: var_B0.SetFocus
  loc_F44362: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6EC38
  'Data Table: 525C54
  loc_E6EBF6: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6EC0D: Set var_8C = Me.FGPoint
  loc_E6EC29: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E6EC37: Exit Sub
End Sub

Private Sub Form_Load() '121E3F8
  'Data Table: 525C54
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_525C7A As Connection15
  Dim var_BC As String
  Dim Me As Recordset20
  Dim var_B4 As Variant
  loc_121DF10: On Error Goto loc_121E3B1
  loc_121DF22: Me.LblUser.Left = CDbl(13500)
  loc_121DF39: Me.LblUser.Top = CDbl(7800)
  loc_121DF50: Me.LblLDt.Top = CDbl(8160)
  loc_121DF61: Set var_8C = Me.LblLDt
  loc_121DF67: var_8C.Left = CDbl(13500)
  loc_121DF76: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_121DF7B: Call Proc_50_51_119DE4C()
  loc_121DF9B: var_94 = "SELECT Code,Name,BarCode,CommodityCode FROM Item Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_121DFA4: unk_525C7A.Execute var_94, var_B4, -1
  loc_121DFB5: Set global_56 = var_8C
  loc_121DFD3: CVarUnk
  loc_121DFD8: VerifyVarObj
  loc_121DFE4: LateIdStAd
  loc_121E00D: var_94 = "SELECT Code,Name,Unit FROM ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And ItemType='Store' ORDER BY Name"
  loc_121E016: unk_525C7A.Execute var_94, var_B4, -1
  loc_121E027: Set global_76 = Me.DGHelp
  loc_121E045: CVarUnk
  loc_121E04A: VerifyVarObj
  loc_121E056: LateIdStAd
  loc_121E078: var_90 = "SELECT I.Code,I.Name,I.Unit,D.Name As Outlet FROM ItemMast I Left Join Depart D On I.RestCode=D.Code Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_121E088: unk_525C7A.Execute var_90 & "' or I.LOGSITE_CODE='HO') AND I.Type='Finish' And I.DispCode <>9999 and I.ActiveYN<>'No' Order by I.Name", var_B4, -1
  loc_121E099: Set global_84 = Me.DgXItem
  loc_121E0B7: CVarUnk
  loc_121E0BC: VerifyVarObj
  loc_121E0C8: LateIdStAd
  loc_121E0FA: unk_525C7A.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_121E10B: Set global_80 = Me.DGFinItem
  loc_121E129: CVarUnk
  loc_121E12E: VerifyVarObj
  loc_121E13A: LateIdStAd
  loc_121E16A: var_BC = "SELECT Code,Name FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Restcode='" & MemVar_1F92078
  loc_121E17A: unk_525C7A.Execute var_BC & "PURC' ORDER BY Name", var_B4, -1
  loc_121E1AD: CVarUnk
  loc_121E1B2: VerifyVarObj
  loc_121E1BE: LateIdStAd
  loc_121E1E7: var_94 = "SELECT distinct Code,Name,Type FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Restcode='"
  loc_121E1FE: unk_525C7A.Execute var_94 & MemVar_1F92078 & "PURC' ORDER BY Name", var_B4, -1
  loc_121E231: CVarUnk
  loc_121E236: VerifyVarObj
  loc_121E242: LateIdStAd
  loc_121E274: unk_525C7A.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_121E2A3: CVarUnk
  loc_121E2A8: VerifyVarObj
  loc_121E2AE: Set var_8C = Me.DGUnit
  loc_121E2B4: LateIdStAd
  loc_121E2D6: var_90 = "SELECT I.Code+I.RestCode as SearchCode,I.Code,I.Name,I.CommodityCode,DispCode,I.Unit,I.ItemGroup,I.Type,I.PurchRate,I.MinStock,I.MaxStock,I.ReStock,I.U_Name,IG.Name as ItemGrpName,I.ItemCatCode,itemCatMast.Name as Category,I.ConvRatio as ConvRatio,I.IssueUnit as IssueUnit,I.ConsumptionItem,I.SITE_CODE,I.LOGSITE_CODE,I.FinItem,I.ActiveYN,I.RestCode,I.BarCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup)left join itemCatMast on itemCatMast.code=i.ItemCatCode) Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_121E2DD: var_94 = "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' ORDER BY I.Name"
  loc_121E2E6: unk_525C7A.Execute var_94, var_B4, -1
  loc_121E31A: Me.Clone
  loc_121E33F: CVarUnk
  loc_121E344: VerifyVarObj
  loc_121E34A: Set var_8C = Me.DGConsumptionItem
  loc_121E350: LateIdStAd
  loc_121E367: Call 0.Method_arg_160 (var_8C, var_8C, var_8C, -1, var_8C, var_8C, var_8C, Me.DGItemGroup)
  loc_121E375: Call 0.Method_arg_164 (var_8C, var_8C, var_8C, Me.DGCat)
  loc_121E392: var_90 = "INI"
  loc_121E3A0: Call Proc_50_46_F15D58(Proc_5_1_100CB50(var_90, Me, Me, Me), Me)
  loc_121E3AB: Call Proc_50_48_15780BC(Me.DgNewUnit)
  loc_121E3B0: Exit Sub
  loc_121E3B1: ' Referenced from: 121DF10
  loc_121E3B9: Set var_8C = Err()
  loc_121E3BF: Call 0.Method_arg_2C (var_90)
  loc_121E3E0: MsgBox(CVar(var_90), &H40, "Information", var_F4, var_114)
  loc_121E3F3: Exit Sub
  loc_121E3F4: Exit Sub
  loc_121E3F6: DOC
End Sub

Private Sub Form_Resize() 'ED7C18
  'Data Table: 525C54
  Dim var_8C As Label
  Dim var_23C8 As Double
  loc_ED7B76: Call 0.Method_arg_50 (var_88)
  loc_ED7B88: Me.LblFormCaption.Caption = var_88
  loc_ED7BA1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED7BAD: Set var_A0 = Me.TopCtrl1
  loc_ED7BB3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006()
  loc_ED7BC0: Set var_8C = Me.TopCtrl1
  loc_ED7BC6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004()
  loc_ED7BE0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED7BFB: Call 0.Method_arg_100 (var_B8)
  loc_ED7C0D: Me.LblFormCaption.Width = var_B8
  loc_ED7C15: Exit Sub
  loc_ED7C16: var_23C8 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E60038
  'Data Table: 525C54
  loc_E5FFF7: Set global_52 = Nothing
  loc_E60009: Set global_56 = Nothing
  loc_E6001B: Set global_60 = Nothing
  loc_E6002D: Set global_64 = Nothing
  loc_E60034: Exit Sub
End Sub

Private Sub Form_Activate() 'E471E8
  'Data Table: 525C54
  loc_E471B8: On Error Goto loc_E471E2
  loc_E471BF: Set var_88 = Me.TopCtrl1
  loc_E471C5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030000()
  loc_E471DA: If (CLng(CInt()) = &H2D) Then
  loc_E471DD:   Call TopCtrl1_UnknownEvent_15()
  loc_E471E2:   ' Referenced from: E471B8
  loc_E471E2: End If
  loc_E471E2: Proc_6_60_E62BC4()
  loc_E471E7: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A580
  'Data Table: 525C54
  loc_E2A558: On Error Goto loc_E2A577
  loc_E2A56F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A577: ' Referenced from: E2A558
  loc_E2A577: Proc_6_60_E62BC4(Shift)
  loc_E2A57C: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF8C7C
  'Data Table: 525C54
  loc_EF8BBC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF8BBF:   Call DGHelp_UnknownEvent_9()
  loc_EF8BC4: End If
  loc_EF8BE0: If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_EF8BE3:   Call DGCat_UnknownEvent_9()
  loc_EF8BE8: End If
  loc_EF8C04: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF8C07:   Call DGItemGroup_UnknownEvent_9()
  loc_EF8C0C: End If
  loc_EF8C28: If (CBool(Me.DGConsumptionItem.Visible) = &HFF) Then
  loc_EF8C2B:   Call DGConsumptionItem_UnknownEvent_9()
  loc_EF8C30: End If
  loc_EF8C4C: If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_EF8C4F:   Call DGFinItem_UnknownEvent_9()
  loc_EF8C54: End If
  loc_EF8C70: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_EF8C73:   Call DGUnit_UnknownEvent_9()
  loc_EF8C78: End If
  loc_EF8C78: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F6C88C
  'Data Table: 525C54
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F6C75C: On Error Goto loc_F6C847
  loc_F6C75F: Call Proc_50_47_E7875C()
  loc_F6C779: var_88 = "ADD"
  loc_F6C787: Call Proc_50_46_F15D58(Proc_5_1_100CB50(var_88, Me))
  loc_F6C7A0: Set var_8C = Me.Txt
  loc_F6C7A6: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_94)
  loc_F6C7AE: var_94.Text = vbNullString
  loc_F6C7C7: Me.Label2.Caption = vbNullString
  loc_F6C7DA: Set var_8C = Me.Txt
  loc_F6C7E0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F6C7E8: var_94.SetFocus
  loc_F6C801: Me.LblUser.Caption = vbNullString
  loc_F6C816: Me.LblLDt.Caption = vbNullString
  loc_F6C82C: Set var_8C = Me.Txt
  loc_F6C832: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_F6C83A: var_94.Text = "Yes"
  loc_F6C846: Exit Sub
  loc_F6C847: ' Referenced from: F6C75C
  loc_F6C84F: Set var_8C = Err()
  loc_F6C855: Call 0.Method_arg_2C (var_88)
  loc_F6C876: MsgBox(CVar(var_88), &H40, "Information", var_E4, var_104)
  loc_F6C889: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBC948
  'Data Table: 525C54
  loc_EBC8B4: On Error Goto loc_EBC93F
  loc_EBC8EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBC8FD:   Set var_110 = Me
  loc_EBC914:   Call Proc_50_46_F15D58(Proc_5_1_100CB50("INI", var_110))
  loc_EBC91F:   Call Proc_50_48_15780BC(global_52)
  loc_EBC927: Else
  loc_EBC92D:   Call 0.Method_arg_1E8 (var_110)
  loc_EBC935:   Call var_110.SetFocus
  loc_EBC93E: End If
  loc_EBC93E: Exit Sub
  loc_EBC93F: ' Referenced from: EBC8B4
  loc_EBC93F: Proc_6_60_E62BC4()
  loc_EBC944: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '129B4F8
  'Data Table: 525C54
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_194 As Integer
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim unk_525C7A As Connection15
  Dim var_180 As Variant
  Dim var_184 As Variant
  Dim var_198 As Field20
  Dim var_96 As Integer
  Dim var_17C As Variant
  loc_129AF40: On Error Goto loc_129B4A0
  loc_129AF51: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_129AF54:   Exit Sub
  loc_129AF55: End If
  loc_129AF87: var_D8 = "Indent or Requisition"
  loc_129AFCF: If (Proc_6_108_1010FEC(MemVar_1F92044, "INDENT1", "ITEM", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_129AFD2:   Exit Sub
  loc_129AFD3: End If
  loc_129B005: var_D8 = "Purchase Order"
  loc_129B04D: If (Proc_6_108_1010FEC(MemVar_1F92044, "POrder1", "ITEMCode", CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_129B050:   Exit Sub
  loc_129B051: End If
  loc_129B0CB: If (Proc_6_108_1010FEC(MemVar_1F92044, "Purch2", "ITEM", CStr(Me.Fields.Item("Code").Value), 0, "Purchase Bill") = 0) Then
  loc_129B0CE:   Exit Sub
  loc_129B0CF: End If
  loc_129B0D5: var_194 = 0
  loc_129B126: var_11C = "Select Count(*) From Stock Where ITEM='" & Me.Fields.Item("Code").Value & "' And (RestCode='" 
  loc_129B130: var_13C = var_11C & CVar(MemVar_1F92078) 
  loc_129B13D: var_B8 = CStr(var_13C & "PURC' Or RestCode='')")
  loc_129B147: unk_525C7A.Execute var_B8, var_17C, -1
  loc_129B14F: var_180 = var_180.Fields
  loc_129B157: var_194 = var_184.Item(var_184)
  loc_129B15F: var_198 = var_198.Value
  loc_129B190: If (var_1A8 > 0) Then
  loc_129B199:   Call 0.Method_arg_50 (var_B8, var_1A8, 0)
  loc_129B1BA:   MsgBox("TRANSACTION EXIST IN STOCK, ENTRY CAN'T BE DELETED", &H40, CVar(var_B8), var_11C, var_13C)
  loc_129B1CA:   Exit Sub
  loc_129B1CB: End If
  loc_129B202: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_11C, var_13C) = 6) Then
  loc_129B207:   var_96 = 0
  loc_129B213:   unk_525C7A.BeginTrans var_D4
  loc_129B21A:   var_96 = &HFF
  loc_129B22E:   var_94 = Me.Bookmark 'Variant
  loc_129B27A:   var_11C = "Delete From ItemMast Where Code='" & Me.Fields.Item("Code").Value & "' And RestCode='" 
  loc_129B2A3:   var_13C = Me.Fields.Item("RestCode").Value
  loc_129B2C2:   unk_525C7A.Execute CStr(var_11C & var_13C & "'"), var_1A8, -1
  loc_129B341:   var_1F4 = 0
  loc_129B354:   var_1EC = 0
  loc_129B35F:   var_1E8 = 0
  loc_129B372:   var_1E0 = 0
  loc_129B37D:   var_1DC = 0
  loc_129B390:   var_1D4 = 0
  loc_129B3CB:   var_B8 = "ItemMast"
  loc_129B3D4:   Proc_154_5_10E33A4(MemVar_1F92044, var_B8, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), "RestCode", &HC8, CStr(Me.Fields.Item("RestCode").Value))
  loc_129B40A:   unk_525C7A.CommitTrans
  loc_129B411:   var_96 = 0
  loc_129B41F:   Me.Requery -1
  loc_129B43F:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_129B44C:     Me.Bookmark = var_94
  loc_129B454:   Else
  loc_129B468:     If (Me.EOF = 0) Then
  loc_129B471:       Me.MoveLast
  loc_129B476:     End If
  loc_129B476:   End If
  loc_129B476:   Call Proc_50_48_15780BC(var_96, var_1D4, 0, var_1DC, var_1E0)
  loc_129B497:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_129B49F: End If
  loc_129B49F: Exit Sub
  loc_129B4A0: ' Referenced from: 129AF40
  loc_129B4A6: If (var_96 = &HFF) Then
  loc_129B4AF:   unk_525C7A.RollbackTrans
  loc_129B4B4: End If
  loc_129B4BC: Set var_A0 = Err()
  loc_129B4C2: Call 0.Method_arg_2C (var_B8, 0, var_1E8)
  loc_129B4E3: MsgBox(CVar(var_B8), &H30, " Deletion Error ", var_11C, var_13C)
  loc_129B4F6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA66D0
  'Data Table: 525C54
  Dim Me As Variant
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FA654C: On Error Goto loc_FA668A
  loc_FA655D: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_FA6560:   Exit Sub
  loc_FA6561: End If
  loc_FA6578: If (Me.RecordCount > 0) Then
  loc_FA659E:   Call Proc_50_46_F15D58(Proc_5_1_100CB50("EDIT", Me))
  loc_FA65B7:   Set var_90 = Me.Txt
  loc_FA65BD:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HD), var_98)
  loc_FA65C5:   var_8C = var_98.Text
  loc_FA65EA:   Set var_90 = Me.Txt
  loc_FA65F0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA65F8:   var_98.SetFocus
  loc_FA6611:   Set var_90 = Me.Txt
  loc_FA6617:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98, 0)
  loc_FA661F:   var_98.Enabled = CInt(var_8C)
  loc_FA662E: Else
  loc_FA664F:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FA665F: End If
  loc_FA666C: Me.LblUser.Caption = vbNullString
  loc_FA6681: Me.LblLDt.Caption = vbNullString
  loc_FA6689: Exit Sub
  loc_FA668A: ' Referenced from: FA654C
  loc_FA6692: Set var_90 = Err()
  loc_FA6698: Call 0.Method_arg_2C (var_8C)
  loc_FA66B9: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FA66CC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18F80
  'Data Table: 525C54
  loc_E18F75: Me.Global.Unload Me
  loc_E18F7D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F25870
  'Data Table: 525C54
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  Dim arg_30FF As Variant
  loc_F25770: On Error Goto loc_F25808
  loc_F2577C: var_88 = Me.RecordCount
  loc_F2578A: If (var_88 <= 0) Then
  loc_F25793:   var_B8 = "Information"
  loc_F257AE:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F257BE:   Exit Sub
  loc_F257BF: End If
  loc_F257C6: var_10C = "SELECT I.Code+I.RestCode as SearchCode,I.Name,I.CommodityCode HSNCode,I.Unit,CAST(I.ConvRatio AS vARcHAR(5)) AS ConvRatio ,I.IssueUnit,IG.Name as ItemGrpName ,IG.Type,cast(I.PurchRate as Varchar(13)) as PurchRate,cast(I.MinStock as VarChar(13)) as MinStock,Cast(I.MaxStock as VarChar(13)) as MaxStock,Cast(I.ReStock as VarChar(13)) as ReStock,itemCatMast.Name AS Category fROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup)left join itemCatMast on itemCatMast.code=i.ItemCatCode) Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_F257CD: MemVar_1F920E4 = var_10C & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' Order by I.Name"
  loc_F257DA: MemVar_1F92120 = Me
  loc_F257E1: var_10C = "3000,1700,1000,1100,1100,2200,1400,1000,1000,1000,1000,2500"
  loc_F257E7: Proc_6_126_F1BCC0(var_10C)
  loc_F25802: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F25807: Exit Sub
  loc_F25808: ' Referenced from: F25770
  loc_F25810: Set var_110 = Err()
  loc_F25816: Call 0.Method_arg_1C (var_88)
  loc_F25827: If (var_88 <> 0) Then
  loc_F25832:   Set var_110 = Err()
  loc_F25838:   Call 0.Method_arg_2C (var_10C)
  loc_F25859:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2586C: End If
  loc_F2586C: Exit Sub
  loc_F2586D: arg_30FF = CVar(MemVar_1F920E4) 'Integer
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3CD98
  'Data Table: 525C54
  loc_E3CD88: Proc_5_0_110649C(&HFF, Me)
  loc_E3CD90: Call Proc_50_48_15780BC(global_52)
  loc_E3CD95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3D098
  'Data Table: 525C54
  loc_E3D088: Proc_5_0_110649C(&HFF, Me)
  loc_E3D090: Call Proc_50_48_15780BC(global_52)
  loc_E3D095: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3AD58
  'Data Table: 525C54
  loc_E3AD48: Proc_5_0_110649C(&HFF, Me)
  loc_E3AD50: Call Proc_50_48_15780BC(global_52)
  loc_E3AD55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3AF38
  'Data Table: 525C54
  loc_E3AF28: Proc_5_0_110649C(&HFF, Me)
  loc_E3AF30: Call Proc_50_48_15780BC(global_52)
  loc_E3AF35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1083794
  'Data Table: 525C54
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_525C7A As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10834FC: On Error Goto loc_1083748
  loc_1083513: var_A0 = "SELECT I.Code as SearchCode,I.Name,I.Unit,IG.Name as ItemGrpName ,IG.Type,I.PurchRate,I.MinStock,I.MaxStock,I.ReStock,I.ItemCatCode,itemCatMast.Name AS Category,IsNull(I.BarCode,'') BarCode,IsNull(I.CommodityCode,'') HSNCode fROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup)left join itemCatMast on itemCatMast.code=i.ItemCatCode) Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_1083523: unk_525C7A.Execute var_A0 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' Order by I.Name", var_C4, -1
  loc_108352E: Set var_88 = var_C8
  loc_1083544: var_CC = var_88.RecordCount
  loc_1083552: If (var_CC = 0) Then
  loc_108356E:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108357E:   Exit Sub
  loc_108357F: End If
  loc_108358E: var_A4 = MemVar_1F920B4 & "\ItemMastRaw.ttx"
  loc_1083595: Set var_C8 = var_88 
  loc_10835A1: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_10835AB: Set var_88 = var_C8
  loc_10835B1: var_B4 = CVar(var_12E) 'Integer
  loc_10835B4: var_98 = var_B4 'Variant
  loc_10835D0: var_A0 = MemVar_1F920B4 & "\ItemMastRaw.RPT"
  loc_10835D9: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10835E4: MemVar_1F921E4 = var_C8
  loc_10835FF: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_1083607: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1083613: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108362C:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1083634:   Call 0.Method_arg_20 (var_138)
  loc_108363C:   Call 0.Method_arg_30 (var_A0)
  loc_1083682:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_1083698:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10836A0:     Call 0.Method_arg_20 (var_138)
  loc_10836A8:     Call 0.Method_arg_38 ("'Item Entry'")
  loc_10836B4:   End If
  loc_10836B7: Next var_132 'Integer
  loc_10836D5: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10836DD: Call 0.Method_arg_2C (var_DC)
  loc_10836EB: Call 0.Method_arg_150 (var_FC)
  loc_10836F6: Call 0.Method_arg_50 (var_A0)
  loc_1083700: Set var_138 = Nothing
  loc_108371A: Set var_C8 = MemVar_1F921E4 
  loc_1083726: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_1083731: MemVar_1F921E4 = var_C8
  loc_1083744: Set var_88 = Nothing
  loc_1083747: Exit Sub
  loc_1083748: ' Referenced from: 10834FC
  loc_1083750: Set var_C8 = Err()
  loc_1083756: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_1083761: Call 0.Method_arg_50 (var_A4)
  loc_108377D: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_1083790: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E56D68
  'Data Table: 525C54
  Dim Me As Recordset15
  loc_E56D2F: Me.Requery -1
  loc_E56D3F: Me.Requery -1
  loc_E56D4F: Me.Requery -1
  loc_E56D5F: Me.Requery -1
  loc_E56D64: Exit Sub
  loc_E56D65:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16EBDF4
  'Data Table: 525C54
  Dim var_98 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As String
  Dim var_C4 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_12C As String
  Dim unk_525C7A As Connection15
  Dim var_9C As Variant
  Dim var_130 As Variant
  Dim var_134 As Field20
  Dim var_158 As TextBox
  Dim var_194 As TextBox
  Dim var_1D0 As TextBox
  Dim var_20C As TextBox
  Dim var_230 As Variant
  Dim var_278 As TextBox
  Dim var_29C As Variant
  Dim var_2E4 As TextBox
  Dim var_350 As TextBox
  Dim var_3BC As TextBox
  Dim var_4D8 As TextBox
  Dim var_AFC As Double
  Dim var_524 As TextBox
  Dim var_B04 As Double
  Dim var_570 As TextBox
  Dim var_5FC As TextBox
  Dim var_608 As TextBox
  Dim var_714 As TextBox
  Dim var_78C As Variant
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1B8 As Variant
  Dim var_2DC As Variant
  Dim var_348 As Variant
  Dim var_3B4 As Variant
  Dim var_420 As Variant
  Dim var_460 As Variant
  Dim var_568 As Variant
  Dim var_594 As Variant
  Dim var_5B4 As Variant
  Dim var_67C As Variant
  Dim var_6AC As Variant
  Dim var_864 As Variant
  Dim var_914 As Variant
  Dim var_A54 As Variant
  Dim var_574 As String
  Dim var_240 As Variant
  Dim var_2AC As Variant
  Dim var_318 As Variant
  Dim var_384 As Variant
  Dim var_4A0 As Variant
  Dim var_69C As Variant
  Dim var_A44 As Variant
  Dim var_144 As String
  loc_16EA5A0: On Error Goto loc_16EBDA0
  loc_16EA5A7: var_86 = CByte(0) 'Byte
  loc_16EA5B6: Set var_94 = Me.Txt
  loc_16EA5BC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16EA5E5: If (Proc_183_19_E8DAFC(var_98, "Name") = 0) Then
  loc_16EA5EF:   Call Txt_GotFocus(CInt(0))
  loc_16EA5F4:   Exit Sub
  loc_16EA5F5: End If
  loc_16EA603: Set var_94 = Me.Txt
  loc_16EA609: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_16EA61F: var_C4 = Trim(CVar(var_98.Tag))
  loc_16EA63D: If (var_C4 = vbNullString) Then
  loc_16EA659:   MsgBox("Item Code Not Found!", 0, var_C4, var_E4, var_124)
  loc_16EA670:   Call Txt_GotFocus(CInt(0))
  loc_16EA675:   Exit Sub
  loc_16EA676: End If
  loc_16EA681: Set var_94 = Me.Txt
  loc_16EA687: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_16EA6B0: If (Proc_183_19_E8DAFC(var_98, "Unit") = 0) Then
  loc_16EA6BA:   Call Txt_GotFocus(CInt(1))
  loc_16EA6BF:   Exit Sub
  loc_16EA6C0: End If
  loc_16EA6CB: Set var_94 = Me.Txt
  loc_16EA6D1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_98)
  loc_16EA6FA: If (Proc_183_19_E8DAFC(var_98, "Issue Unit") = 0) Then
  loc_16EA704:   Call Txt_GotFocus(CInt(&HE))
  loc_16EA709:   Exit Sub
  loc_16EA70A: End If
  loc_16EA715: Set var_94 = Me.Txt
  loc_16EA71B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_98)
  loc_16EA744: If (Proc_183_19_E8DAFC(var_98, "Item Group Name") = 0) Then
  loc_16EA74E:   Call Txt_GotFocus(CInt(3))
  loc_16EA753:   Exit Sub
  loc_16EA754: End If
  loc_16EA75F: Set var_94 = Me.Txt
  loc_16EA765: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98)
  loc_16EA78E: If (Proc_183_19_E8DAFC(var_98, "Category") = 0) Then
  loc_16EA798:   Call Txt_GotFocus(CInt(&HA))
  loc_16EA79D:   Exit Sub
  loc_16EA79E: End If
  loc_16EA7A9: Set var_94 = Me.Txt
  loc_16EA7AF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_98)
  loc_16EA7D8: If (Proc_183_19_E8DAFC(var_98, "Item Type") = 0) Then
  loc_16EA7E2:   Call Txt_GotFocus(CInt(&HA))
  loc_16EA7E7:   Exit Sub
  loc_16EA7E8: End If
  loc_16EA7F6: Set var_94 = Me.Txt
  loc_16EA7FC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_98)
  loc_16EA804: var_A0 = var_98.Text
  loc_16EA821: If Not((CDbl(Val(var_A0)) > CDbl(0))) Then
  loc_16EA82A:   Call 0.Method_arg_50 (var_A0)
  loc_16EA84B:   MsgBox("Conversion Ratio should be greater than Zero.", &H40, CVar(var_A0), var_E4, var_124)
  loc_16EA862:   Call Txt_GotFocus(CInt(&HF))
  loc_16EA867:   Exit Sub
  loc_16EA868: End If
  loc_16EA86C: Set var_94 = Me.TopCtrl1
  loc_16EA872: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_98)
  loc_16EA88B: If (CStr() = "Add") Then
  loc_16EA89C:   Set var_94 = Me.Txt
  loc_16EA8A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_16EA8B5:   global_108 = var_98.Tag
  loc_16EA8C6: Else
  loc_16EA8E3:   var_98 = Me.Fields.Item("Code")
  loc_16EA8EB:   var_B4 = var_98.Value
  loc_16EA8FA:   global_108 = CStr(var_B4)
  loc_16EA90B: End If
  loc_16EA90B: Call Proc_50_53_112E714()
  loc_16EA914: Set var_94 = Me.TopCtrl1
  loc_16EA91A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_16EA922: var_A0 = CStr()
  loc_16EA933: If (var_A0 = "Add") Then
  loc_16EA963:   Set var_94 = Me.Txt
  loc_16EA969:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98, var_A0, "Select Count(*) From sTOCK Where DocID='", var_B4, -1)
  loc_16EA98A:   unk_525C7A.Execute var_130 & var_A0 & "'", 0, var_134
  loc_16EA99A:    = var_130.Item()
  loc_16EA9A2:    = var_134.Value
  loc_16EA9CF:   If (var_98.Text.Fields > 0) Then
  loc_16EA9D8:     Call Proc_50_52_1047FFC(MemVar_1F92044)
  loc_16EA9EB:     Set var_94 = Me.Txt
  loc_16EA9F1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_16EA9F9:     var_98.Text = var_A0
  loc_16EAA08:   End If
  loc_16EAA0B: Else
  loc_16EAA16:   Set var_94 = Me.Txt
  loc_16EAA1C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_16EAA45:   If (Trim(CVar(var_98)) = vbNullString) Then
  loc_16EAA4E:     Call Proc_50_52_1047FFC(MemVar_1F92044, var_A0)
  loc_16EAA61:     Set var_94 = Me.Txt
  loc_16EAA67:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_98)
  loc_16EAA6F:     var_98.Text = var_A0
  loc_16EAA7E:   End If
  loc_16EAA7E: End If
  loc_16EAA87: unk_525C7A.BeginTrans var_138
  loc_16EAA90: var_86 = CByte(1) 'Byte
  loc_16EAA98: Set var_94 = Me.TopCtrl1
  loc_16EAA9E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A0)
  loc_16EAAB7: If (CStr() = "Add") Then
  loc_16EAAC8:   Set var_94 = Me.Txt
  loc_16EAACE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_16EAAE9:   Set var_9C = Me.Txt
  loc_16EAAEF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_130)
  loc_16EAAF7:   var_144 = var_130.Text
  loc_16EAB18:   Set var_134 = Me.Txt
  loc_16EAB1E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_158)
  loc_16EAB39:   Set var_190 = Me.Txt
  loc_16EAB3F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_194)
  loc_16EAB5A:   Set var_1CC = Me.Txt
  loc_16EAB60:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1D0)
  loc_16EAB7B:   Set var_208 = Me.Txt
  loc_16EAB81:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_20C)
  loc_16EAB96:   var_230 = CVar(Val(var_20C.Text)) 'Double
  loc_16EAB9D:   Proc_6_39_E7C810(var_240)
  loc_16EABB0:   Set var_274 = Me.Txt
  loc_16EABB6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_278)
  loc_16EABD2:   Proc_6_39_E7C810(var_2AC, CVar(Val(var_278.Text)))
  loc_16EABE5:   Set var_2E0 = Me.Txt
  loc_16EABEB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2E4)
  loc_16EAC07:   Proc_6_39_E7C810(var_318, CVar(Val(var_2E4.Text)))
  loc_16EAC1A:   Set var_34C = Me.Txt
  loc_16EAC20:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_350)
  loc_16EAC3C:   Proc_6_39_E7C810(var_384, CVar(Val(var_350.Text)))
  loc_16EAC4F:   Set var_3B8 = Me.Txt
  loc_16EAC55:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_3BC)
  loc_16EAC70:   Proc_6_7_F25D88(var_4A0, Date)
  loc_16EAC83:   Set var_4D4 = Me.Txt
  loc_16EAC89:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_4D8)
  loc_16EAC9E:   var_AFC = Val(var_4D8.Text)
  loc_16EACAF:   Set var_520 = Me.Txt
  loc_16EACB5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_524, var_528)
  loc_16EACCA:   var_B04 = Val(var_528)
  loc_16EACDB:   Set var_56C = Me.Txt
  loc_16EACE1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_570, var_574)
  loc_16EACFC:   Set var_5F8 = Me.Txt
  loc_16EAD02:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_5FC)
  loc_16EAD1D:   Set var_604 = Me.Txt
  loc_16EAD23:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_608)
  loc_16EAD60:   Proc_6_7_F25D88(var_69C, MemVar_1F920EC)
  loc_16EAD73:   Set var_710 = Me.Txt
  loc_16EAD79:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_714)
  loc_16EAD91:   Set var_75C = Me.Txt
  loc_16EAD97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_760)
  loc_16EADB6:   Set var_778 = Me.Txt
  loc_16EADBC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_77C)
  loc_16EADED:   var_7DC = IIf((Proc_6_38_E68A98(CVar(var_760)) = vbNullString), "Yes", CVar(Proc_6_38_E68A98(CVar(var_77C))))
  loc_16EADFD:   Set var_810 = Me.Txt
  loc_16EAE03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_814)
  loc_16EAE12:   var_834 = Trim(CVar(var_814))
  loc_16EAE22:   Set var_868 = Me.Txt
  loc_16EAE28:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_86C)
  loc_16EAE37:   Proc_6_17_EAA2B0(var_88C, CVar(var_86C))
  loc_16EAE47:   Set var_8C0 = Me.Txt
  loc_16EAE4D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_8C4)
  loc_16EAE5C:   Proc_6_17_EAA2B0(var_8E4, CVar(var_8C4))
  loc_16EAE6C:   Set var_918 = Me.Txt
  loc_16EAE72:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_91C)
  loc_16EAE81:   Proc_6_17_EAA2B0(var_93C, CVar(var_91C))
  loc_16EAE91:   Set var_970 = Me.Txt
  loc_16EAE97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_974)
  loc_16EAEA6:   Proc_6_17_EAA2B0(var_994, CVar(var_974))
  loc_16EAEB6:   Set var_9C8 = Me.Txt
  loc_16EAEBC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_9CC)
  loc_16EAECB:   Proc_6_17_EAA2B0(var_9EC, CVar(var_9CC))
  loc_16EAEDB:   Set var_A20 = Me.Txt
  loc_16EAEE1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_A24)
  loc_16EAEF0:   Proc_6_17_EAA2B0(var_A44, CVar(var_A24))
  loc_16EAF00:   Set var_A78 = Me.Txt
  loc_16EAF06:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_A7C)
  loc_16EAF15:   Proc_6_17_EAA2B0(var_A9C, CVar(var_A7C))
  loc_16EAF2E:   var_A0 = "Insert Into ItemMast (Code,Name,CommodityCode,Unit,ItemGroup,Type,PurchRate,MinStock,MaxStock,ReStock,ItemCatCode,LPURRATE,Site_Code,U_Name,U_EntDt,U_AE,DispCode,ConvRatio,IssueUnit,DiscApp,RestCode,ConsumptionItem,LPurDate,LOGSITE_CODE,FinItem,ActiveYN,ItemType,BarCode,LabelName,LabelQty,LabelRemark1,LabelRemark2,LabelRemark3,LabelRemark4,LabelRemark5) " & "Values ('"
  loc_16EAF79:   var_1B8 = CVar(var_A0 & global_108 & "','" & var_98.Text & "','") & Trim(CVar(var_144)) & "','" & CVar(var_158.Text) & "','" & CVar(var_194.Tag) 
  loc_16EAFB5:   var_2DC = var_1B8 & "','" & CVar(var_1D0.Text) & "'," & var_240 & "," & var_2AC & "," 
  loc_16EAFC5:   var_348 = var_2DC & var_318 & "," 
  loc_16EAFD5:   var_3B4 = var_348 & var_384 & ",'" 
  loc_16EAFF2:   var_420 = var_3B4 & CVar(var_3BC.Tag) & "',0,'" & CVar(MemVar_1F92070) 
  loc_16EB050:   var_594 = var_420 & "','" & CVar(MemVar_1F920C8) & "'," & var_4A0 & ",'A'," & CVar(var_524.Text) & "," & CVar(var_570.Text) & ",'" & CVar(var_574) 
  loc_16EB059:   var_5B4 = var_594 & "','Y','" 
  loc_16EB07C:   var_67C = var_5B4 & CVar(MemVar_1F92078) & "PURC','" & IIf((var_5FC.Tag = vbNullString), global_108, CVar(var_608.Tag)) & "'," 
  loc_16EB0D2:   var_864 = var_67C & var_69C & ",'" & CVar(MemVar_1F92078) & "','" & CVar(var_714.Tag) & "','" & var_7DC & "','Store','" & var_834 & "'," 
  loc_16EB129:   var_A54 = var_864 & var_88C & "," & var_8E4 & "," & var_93C & "," & var_994 & "," & var_9EC & "," & var_A44 
  loc_16EB150:   unk_525C7A.Execute CStr(var_A54 & "," & var_A9C & ")"), var_AF0, -1
  loc_16EB2A5: Else
  loc_16EB2B3:   Set var_94 = Me.Txt
  loc_16EB2B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98, var_A0)
  loc_16EB2C1:   var_AF4 = var_98.Text
  loc_16EB2D1:   Set var_9C = Me.Txt
  loc_16EB2D7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_130)
  loc_16EB2DF:   var_B4 = CVar(var_130) 'Address
  loc_16EB2E6:   var_C4 = Trim(var_B4)
  loc_16EB2F9:   Set var_134 = Me.Txt
  loc_16EB2FF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_158)
  loc_16EB31A:   Set var_190 = Me.Txt
  loc_16EB320:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_194)
  loc_16EB360:   Set var_1CC = Me.Txt
  loc_16EB366:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_1D0)
  loc_16EB37B:   var_AFC = Val(var_1D0.Text)
  loc_16EB38C:   Set var_208 = Me.Txt
  loc_16EB392:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_20C, var_144)
  loc_16EB3AD:   Set var_274 = Me.Txt
  loc_16EB3B3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_278)
  loc_16EB3CE:   Set var_2E0 = Me.Txt
  loc_16EB3D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2E4)
  loc_16EB3EF:   Set var_34C = Me.Txt
  loc_16EB3F5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_350)
  loc_16EB411:   Proc_6_39_E7C810(var_2DC, CVar(Val(var_350.Text)))
  loc_16EB424:   Set var_3B8 = Me.Txt
  loc_16EB42A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_3BC)
  loc_16EB446:   Proc_6_39_E7C810(var_348, CVar(Val(var_3BC.Text)))
  loc_16EB459:   Set var_4D4 = Me.Txt
  loc_16EB45F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4D8)
  loc_16EB47B:   Proc_6_39_E7C810(var_3B4, CVar(Val(var_4D8.Text)))
  loc_16EB48E:   Set var_520 = Me.Txt
  loc_16EB494:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_524)
  loc_16EB4B0:   Proc_6_39_E7C810(var_420, CVar(Val(var_524.Text)))
  loc_16EB4C3:   Set var_56C = Me.Txt
  loc_16EB4C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_570)
  loc_16EB4E4:   Set var_5F8 = Me.Txt
  loc_16EB4EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_5FC)
  loc_16EB505:   Proc_6_7_F25D88(var_5B4, Date)
  loc_16EB518:   Set var_604 = Me.Txt
  loc_16EB51E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_608)
  loc_16EB539:   Set var_710 = Me.Txt
  loc_16EB53F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_714)
  loc_16EB557:   Set var_75C = Me.Txt
  loc_16EB55D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_760)
  loc_16EB57C:   Set var_778 = Me.Txt
  loc_16EB582:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_77C)
  loc_16EB5C3:   Set var_810 = Me.Txt
  loc_16EB5C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_814)
  loc_16EB5D8:   Proc_6_17_EAA2B0(var_7DC, CVar(var_814))
  loc_16EB5E8:   Set var_868 = Me.Txt
  loc_16EB5EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_86C)
  loc_16EB5FD:   Proc_6_17_EAA2B0(var_834, CVar(var_86C))
  loc_16EB60D:   Set var_8C0 = Me.Txt
  loc_16EB613:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_8C4)
  loc_16EB622:   Proc_6_17_EAA2B0(var_88C, CVar(var_8C4))
  loc_16EB632:   Set var_918 = Me.Txt
  loc_16EB638:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_91C)
  loc_16EB647:   Proc_6_17_EAA2B0(var_8E4, CVar(var_91C))
  loc_16EB657:   Set var_970 = Me.Txt
  loc_16EB65D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_974)
  loc_16EB66C:   Proc_6_17_EAA2B0(var_93C, CVar(var_974))
  loc_16EB67C:   Set var_9C8 = Me.Txt
  loc_16EB682:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_9CC)
  loc_16EB691:   Proc_6_17_EAA2B0(var_994, CVar(var_9CC))
  loc_16EB6A1:   Set var_A20 = Me.Txt
  loc_16EB6A7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_A24)
  loc_16EB6B6:   Proc_6_17_EAA2B0(var_9EC, CVar(var_A24))
  loc_16EB6EC:   var_18C = CVar("UPDATE ItemMast SET Name='" & var_A0 & "',CommodityCode='") & var_C4 & "',ConsumptionItem='" & IIf((var_158.Tag = vbNullString), global_108, CVar(var_194.Tag)) 
  loc_16EB723:   var_230 = CVar(var_278.Tag) 'String
  loc_16EB739:   var_29C = var_18C & "',DispCode=" & CVar(var_20C.Text) & ",Unit='" & CVar(var_144) & "',ItemGroup='" & var_230 & "',Type='" & CVar(var_2E4.Text) 
  loc_16EB782:   var_460 = var_29C & "',PurchRate=" & var_2DC & ",MinStock =" & var_348 & ",MaxStock=" & var_3B4 & ",ReStock=" & var_420 & ",ItemCatCode = '" 
  loc_16EB7C5:   var_568 = var_460 & CVar(var_570.Tag) & "',SITE_CODE='" & CVar(MemVar_1F92070) & "',FinItem='" & CVar(var_5FC.Tag) & "',U_name='" & CVar(MemVar_1F920C8) 
  loc_16EB804:   var_6AC = var_568 & "',U_EntDt=" & var_5B4 & " ,U_AE='E',ConvRatio=" & CVar(var_608.Text) & ",IssueUnit='" & CVar(var_714.Text) & "',RestCode='" 
  loc_16EB81E:   var_78C = var_6AC & CVar(MemVar_1F92078) & "PURC',ActiveYN='" & IIf((Proc_6_38_E68A98(CVar(var_760)) = vbNullString), "Yes", CVar(Proc_6_38_E68A98(CVar(var_77C)))) 
  loc_16EB867:   var_914 = var_78C & "',LabelName=" & var_7DC & ",LabelQty=" & var_834 & ",LabelRemark1=" & var_88C & ",LabelRemark2=" & var_8E4 & ",LabelRemark3=" 
  loc_16EB8AD:   var_A44 = var_914 & var_93C & ",LabelRemark4=" & var_994 & ",LabelRemark5=" & var_9EC & " WHERE Code='" & CVar(global_108) & "' And ItemType='Store'" 
  loc_16EB8BB:   unk_525C7A.Execute CStr(var_A44), var_A54, -1
  loc_16EB9F5: End If
  loc_16EBA22: Set var_94 = Me.Txt
  loc_16EBA28: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0, "Select Count(*) From UnitMast Where Name='", var_B4, -1, var_9C)
  loc_16EBA30: var_130 = var_98.Text
  loc_16EBA49: unk_525C7A.Execute 0 & var_A0 & "'", var_134, var_C4
  loc_16EBA51: var_A78 = var_9C.Fields
  loc_16EBA59:  = var_130.Item(var_230)
  loc_16EBA61:  = var_134.Value
  loc_16EBA8E: If (var_C4 <= 0) Then
  loc_16EBAB6:   Set var_94 = Me.Txt
  loc_16EBABC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('")
  loc_16EBAC4:   var_18C = var_98.Text
  loc_16EBACD:   var_12C = -1 & var_A0
  loc_16EBAF6:   var_B4 = Date
  loc_16EBB01:   Proc_6_7_F25D88(var_C4, var_B4)
  loc_16EBB1C:   var_16C = CVar(0 & var_A0 & "'" & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_C4 & ",'A','" & CVar(MemVar_1F92078) 
  loc_16EBB33:   unk_525C7A.Execute CStr(var_16C & "')"), var_9C, 
  loc_16EBB67: End If
  loc_16EBB94: Set var_94 = Me.Txt
  loc_16EBB9A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_98, var_A0, "Select Count(*) From UnitMast Where Name='", var_B4, -1)
  loc_16EBBA2: var_9C = var_98.Text
  loc_16EBBBB: unk_525C7A.Execute var_130 & var_A0 & "'", 0, var_134
  loc_16EBBC3: var_C4 = var_9C.Fields
  loc_16EBBCB:  = var_130.Item()
  loc_16EBBD3:  = var_134.Value
  loc_16EBC00: If (var_C4 <= 0) Then
  loc_16EBC28:   Set var_94 = Me.Txt
  loc_16EBC2E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_98, var_A0, "Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('")
  loc_16EBC36:   var_18C = var_98.Text
  loc_16EBC3F:   var_12C = -1 & var_A0
  loc_16EBC62:   var_E4 = CVar(var_130 & var_A0 & "'" & "','" & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',") 'String
  loc_16EBC73:   Proc_6_7_F25D88(var_C4, Date)
  loc_16EBC7B:   var_124 = var_E4 & var_C4 
  loc_16EBC7F:   var_D4 = ",'A','"
  loc_16EBCA5:   unk_525C7A.Execute CStr(var_124 & var_D4 & CVar(MemVar_1F92078) & "')"), var_9C, 
  loc_16EBCD9: End If
  loc_16EBCDF: unk_525C7A.CommitTrans
  loc_16EBCE8: var_86 = CByte(0) 'Byte
  loc_16EBCF7: Me.Requery -1
  loc_16EBD07: Me.Requery -1
  loc_16EBD34: Me.Find "Code='" & global_108 & "'", 0, 1
  loc_16EBD44: Set var_94 = Me.TopCtrl1
  loc_16EBD4A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_D4)
  loc_16EBD63: If (CStr() = "Add") Then
  loc_16EBD66:   Call TopCtrl1_UnknownEvent_A()
  loc_16EBD6B:   Exit Sub
  loc_16EBD6C: End If
  loc_16EBD81: var_A0 = "INI"
  loc_16EBD8F: Call Proc_50_46_F15D58(Proc_5_1_100CB50(var_A0, Me))
  loc_16EBD9A: Call Proc_50_48_15780BC(global_52)
  loc_16EBD9F: Exit Sub
  loc_16EBDA0: ' Referenced from: 16EA5A0
  loc_16EBDA9: If (CInt(var_86) = 1) Then
  loc_16EBDB2:   unk_525C7A.RollbackTrans
  loc_16EBDB7: End If
  loc_16EBDBF: Set var_94 = Err()
  loc_16EBDC5: Call 0.Method_arg_2C (var_A0)
  loc_16EBDDE: MsgBox(CVar(var_A0), &H10, var_C4, var_E4, var_124)
  loc_16EBDF1: Exit Sub
End Sub

Private Sub Command4_Click() 'DFBCCC
  'Data Table: 525C54
  loc_DFBCC8: Exit Sub
End Sub

Private Sub ChkLblInfo_UnknownEvent_9 'E96DA0
  'Data Table: 525C54
  Dim var_88 As Frame
  loc_E96D24: Set var_88 = Me.ChkLblInfo
  loc_E96D2A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_E96D3F: If (CLng(CInt()) = 1) Then
  loc_E96D4E:   Me.FrLblInfo.Visible = True
  loc_E96D60:   Set var_88 = Me.ChkLblInfo
  loc_E96D66:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Hide Label Information")
  loc_E96D71: Else
  loc_E96D7D:   Me.FrLblInfo.Visible = False
  loc_E96D8F:   Set var_88 = Me.ChkLblInfo
  loc_E96D95:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Show Label Information")
  loc_E96D9D: End If
  loc_E96D9D: Exit Sub
End Sub

Private Sub DGCat_UnknownEvent_9 'EE5FBC
  'Data Table: 525C54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE5F13: Me.DGCat.Visible = False
  loc_EE5F32: If (Me.RecordCount > 0) Then
  loc_EE5F52:   var_B0 = Me.Fields.Item("Name")
  loc_EE5F71:   Set var_B4 = Me.Txt
  loc_EE5F77:   Call 0.Method_DGCat_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_EE5F7F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE5F95: End If
  loc_EE5FA0: Set var_A8 = Me.Txt
  loc_EE5FA6: Call 0.Method_DGCat_UnknownEvent_90 (CInt(&HA))
  loc_EE5FAE: var_B0.SetFocus
  loc_EE5FBA: Exit Sub
  loc_EE5FBB: var_B0 = 
End Sub

Private Sub DGCat_UnknownEvent_1F 'E6EA7C
  'Data Table: 525C54
  loc_E6EA3A: Proc_6_153_E91194(Me.DGCat, arg_14)
  loc_E6EA51: Set var_8C = Me.FGPoint
  loc_E6EA6D: Proc_6_138_106D6F8(Me.DGCat, global_64, CInt(&HA))
  loc_E6EA7B: Exit Sub
End Sub

Private Sub Command1_Click() 'EA9C74
  'Data Table: 525C54
  Dim var_8C As Label
  Dim var_A4 As Integer
  Dim var_C4 As Variant
  Dim var_D4 As Boolean
  loc_EA9C10: If (Me.Label2.Caption = "Semi Finish") Then
  loc_EA9C17:   Set var_88 = New FrmConsumMast
  loc_EA9C1D:   Call var_88.TopCtrl1_eAdd
  loc_EA9C34:   Set var_8C = var_94(CInt(0))
  loc_EA9C3A:   Call 0.Method_Command1_Click0 (0)
  loc_EA9C42:   var_C4 = CVar(var_94) 'Address
  loc_EA9C4A:   LateMemCallSt
  loc_EA9C56:   var_A4 = 0
  loc_EA9C5C:   var_D4 = True
  loc_EA9C63:   Call var_88.Txt_Validate
  loc_EA9C6C:   Call var_88.Show
  loc_EA9C72: End If
  loc_EA9C72: Exit Sub
End Sub

Private Sub DGConsumptionItem_UnknownEvent_9 'F43B24
  'Data Table: 525C54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F43A1B: Me.DGConsumptionItem.Visible = False
  loc_F43A3A: If (Me.RecordCount > 0) Then
  loc_F43A79:   Set var_B4 = Me.Txt
  loc_F43A7F:   Call 0.Method_DGConsumptionItem_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F43A87:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F43ABA:   var_B0 = Me.Fields.Item("Name")
  loc_F43AD9:   Set var_B4 = Me.Txt
  loc_F43ADF:   Call 0.Method_DGConsumptionItem_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F43AE7:   var_B8.Text = CStr(var_B0.Value)
  loc_F43AFD: End If
  loc_F43B08: Set var_A8 = Me.Txt
  loc_F43B0E: Call 0.Method_DGConsumptionItem_UnknownEvent_90 (CInt(&H10))
  loc_F43B16: var_B0.SetFocus
  loc_F43B22: Exit Sub
End Sub

Private Sub DGConsumptionItem_UnknownEvent_1F 'E718BC
  'Data Table: 525C54
  loc_E7187A: Proc_6_153_E91194(Me.DGConsumptionItem, arg_14)
  loc_E71891: Set var_8C = Me.FGPoint
  loc_E718AD: Proc_6_138_106D6F8(Me.DGConsumptionItem, global_72, CInt(&H10))
  loc_E718BB: Exit Sub
End Sub

Private Sub Command3_Click() 'DFBC30
  'Data Table: 525C54
  loc_DFBC2C: Exit Sub
End Sub

Private Sub Command6_Click() 'E1B288
  'Data Table: 525C54
  loc_E1B27C: Me.Frame1.Visible = False
  loc_E1B284: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F9DAA8
  'Data Table: 525C54
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F9D93F: Me.DGItemGroup.Visible = False
  loc_F9D95E: If (Me.RecordCount > 0) Then
  loc_F9D99D:   Set var_B4 = Me.Txt
  loc_F9D9A3:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(3), var_B8)
  loc_F9D9AB:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9D9FD:   Set var_B4 = Me.Txt
  loc_F9DA03:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(3), var_B8)
  loc_F9DA0B:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9DA3E:   var_B0 = Me.Fields.Item("Type")
  loc_F9DA5D:   Set var_B4 = Me.Txt
  loc_F9DA63:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F9DA6B:   var_B8.Text = CStr(var_B0.Value)
  loc_F9DA81: End If
  loc_F9DA8C: Set var_A8 = Me.Txt
  loc_F9DA92: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(3))
  loc_F9DA9A: var_B0.SetFocus
  loc_F9DAA6: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E7166C
  'Data Table: 525C54
  loc_E7162A: Proc_6_153_E91194(Me.DGItemGroup, arg_14)
  loc_E71641: Set var_8C = Me.FGPoint
  loc_E7165D: Proc_6_138_106D6F8(Me.DGItemGroup, global_60, CInt(3))
  loc_E7166B: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC0DE4
  'Data Table: 525C54
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC0D5A: On Error Goto loc_EC0D9F
  loc_EC0D63: Me.MoveFirst
  loc_EC0D7D: var_8C = "SearchCode='" & MyValue
  loc_EC0D8D: Me.Find var_8C & "'", 0, 1
  loc_EC0D99: Call Proc_50_48_15780BC(var_A0)
  loc_EC0D9E: Exit Sub
  loc_EC0D9F: ' Referenced from: EC0D5A
  loc_EC0DA7: Set var_A4 = Err()
  loc_EC0DAD: Call 0.Method_arg_2C (var_8C)
  loc_EC0DCE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC0DE1: Exit Sub
  loc_EC0DE2: Exit Sub
End Sub

Public Sub Proc_50_46_F15D58(arg_C) 'F15D58
  'Data Table: 525C54
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_F15C66: Set var_8C = Me.Txt
  loc_F15C6C: Call 0.Method_Proc_50_46_F15D58C (var_8E, var_86)
  loc_F15C7C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F15C92:   Set var_8C = Me.Txt
  loc_F15C98:   Call 0.Method_Proc_50_46_F15D580 (CInt(var_86), var_98)
  loc_F15CA0:   var_98.Enabled = arg_C
  loc_F15CAF: Next var_92 'Byte
  loc_F15CC2: Set var_8C = Me.Txt
  loc_F15CC8: Call 0.Method_Proc_50_46_F15D580 (CInt(2), var_98)
  loc_F15CD0: var_98.Enabled = False
  loc_F15CE9: Set var_8C = Me.Txt
  loc_F15CEF: Call 0.Method_Proc_50_46_F15D580 (CInt(&H16), var_98)
  loc_F15CF7: var_98.Enabled = False
  loc_F15D10: Set var_8C = Me.Txt
  loc_F15D16: Call 0.Method_Proc_50_46_F15D580 (CInt(&H17), var_98)
  loc_F15D1E: var_98.Enabled = False
  loc_F15D38: Me.Command3.Enabled = Not(arg_C)
  loc_F15D4E: Me.Command4.Enabled = Not(arg_C)
  loc_F15D56: Exit Sub
End Sub

Public Sub Proc_50_47_E7875C
  'Data Table: 525C54
  Dim var_98 As TextBox
  loc_E7870A: Set var_8C = Me.Txt
  loc_E78710: Call 0.Method_Proc_50_47_E7875CC (var_8E, var_86)
  loc_E78720: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78736:   Set var_8C = Me.Txt
  loc_E7873C:   Call 0.Method_Proc_50_47_E7875C0 (CInt(var_86), var_98)
  loc_E78744:   var_98.Text = vbNullString
  loc_E78753: Next var_92 'Byte
  loc_E78759: Exit Sub
End Sub

Public Sub Proc_50_48_15780BC
  'Data Table: 525C54
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_525C7A As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Variant
  Dim var_130 As Variant
  Dim var_184 As Fields15
  Dim var_1D0 As Variant
  Dim var_11C As Variant
  Dim var_114 As Variant
  Dim var_198 As TextBox
  loc_1576FD0: On Error Goto loc_1578076
  loc_1576FD9: Proc_183_45_E5C118(global_52)
  loc_1577034: unk_525C7A.Execute CStr("Select U_Name,U_AE,U_EntDt From Itemmast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_114, -1
  loc_157703F: Set var_88 = var_118
  loc_1577093: var_118 = var_88.Fields
  loc_15770FC: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1577141: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_15771BB: var_11C = var_88.Fields.Item("U_AE")
  loc_15771D4: var_114 = "entdt : "
  loc_157721C: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", var_114))
  loc_1577233: var_184 = var_88.Fields
  loc_157725B: Set var_1D0 = Me.LblLDt
  loc_1577261: var_1D0.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_184.Item("U_EntDt")))))
  loc_15772B0: If (Me.RecordCount <= 0) Then
  loc_15772B3:   Call Proc_50_47_E7875C()
  loc_15772BB: Else
  loc_15772EF:   global_108 = CStr(Me.Fields.Item("Name").Value)
  loc_157733C:   Set var_118 = Me.Txt
  loc_1577342:   Call 0.Method_Proc_50_48_15780BC0 (CInt(0), var_11C)
  loc_157734A:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_157739C:   Set var_118 = Me.Txt
  loc_15773A2:   Call 0.Method_Proc_50_48_15780BC0 (CInt(0), var_11C)
  loc_15773AA:   var_11C.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15773F9:   Set var_118 = Me.Txt
  loc_15773FF:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H17), var_11C)
  loc_1577407:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CommodityCode")))
  loc_1577454:   Set var_118 = Me.Txt
  loc_157745A:   Call 0.Method_Proc_50_48_15780BC0 (CInt(1), var_11C)
  loc_1577462:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_15774AF:   Set var_118 = Me.Txt
  loc_15774B5:   Call 0.Method_Proc_50_48_15780BC0 (CInt(2), var_11C)
  loc_15774BD:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Type")))
  loc_157750A:   Set var_118 = Me.Txt
  loc_1577510:   Call 0.Method_Proc_50_48_15780BC0 (CInt(3), var_11C)
  loc_1577518:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGrpName")))
  loc_1577565:   Set var_118 = Me.Txt
  loc_157756B:   Call 0.Method_Proc_50_48_15780BC0 (CInt(3), var_11C)
  loc_1577573:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGroup")))
  loc_15775C0:   Set var_118 = Me.Txt
  loc_15775C6:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H10), var_11C)
  loc_15775CE:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ConsumptionItem")))
  loc_157761E:   If (Proc_6_38_E68A98(CVar(Me.Fields.Item("ConsumptionItem"))) <> vbNullString) Then
  loc_1577624:     var_130 = 0
  loc_157765C:     var_A0 = Me.Fields.Item("ConsumptionItem")
  loc_1577683:     unk_525C7A.Execute CStr("Select Max(Name) from Itemmast where Code='" & var_A0.Value & "'And ItemType='Store'"), var_114, -1
  loc_157768B:     var_118 = var_118.Fields
  loc_1577693:     var_130 = var_11C.Item(var_11C)
  loc_15776B2:     Set var_198 = Me.Txt
  loc_15776B8:     Call 0.Method_Proc_50_48_15780BC0 (CInt(&H10), var_1D0)
  loc_15776C0:     var_1D0.Text = Proc_6_38_E68A98(CVar(var_184))
  loc_15776EB:   Else
  loc_15776F9:     Set var_8C = Me.Txt
  loc_15776FF:     Call 0.Method_Proc_50_48_15780BC0 (CInt(&H10), var_A0)
  loc_1577707:     var_A0.Text = vbNullString
  loc_1577713:   End If
  loc_1577768:   Set var_118 = Me.Txt
  loc_157776E:   Call 0.Method_Proc_50_48_15780BC0 (CInt(4), var_11C, CStr(Format(CVar(Me.Fields.Item("PurchRate")), "0.00")))
  loc_1577776:   var_11C.Text = 1
  loc_15777E5:   Set var_118 = Me.Txt
  loc_15777EB:   Call 0.Method_Proc_50_48_15780BC0 (CInt(5), var_11C, CStr(Format(CVar(Me.Fields.Item("MinStock")), "0.000")), 1)
  loc_15777F3:   var_11C.Text = 1
  loc_1577862:   Set var_118 = Me.Txt
  loc_1577868:   Call 0.Method_Proc_50_48_15780BC0 (CInt(6), var_11C, CStr(Format(CVar(Me.Fields.Item("MaxStock")), "0.000")), 1)
  loc_1577870:   var_11C.Text = 1
  loc_15778B8:   var_D0 = "0.000"
  loc_15778DF:   Set var_118 = Me.Txt
  loc_15778E5:   Call 0.Method_Proc_50_48_15780BC0 (CInt(7), var_11C, CStr(Format(CVar(Me.Fields.Item("ReStock")), var_D0)), 1)
  loc_15778ED:   var_11C.Text = 1
  loc_1577940:   Set var_118 = Me.Txt
  loc_1577946:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&HA), var_11C)
  loc_157794E:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCatCode")), 1)
  loc_157799B:   Set var_118 = Me.Txt
  loc_15779A1:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&HA), var_11C)
  loc_15779A9:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Category")))
  loc_15779E6:   Proc_6_39_E7C810(var_D0, CVar(Me.Fields.Item("DispCode")))
  loc_15779FD:   Set var_118 = Me.Txt
  loc_1577A03:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&HD), var_11C)
  loc_1577A0B:   var_11C.Text = CStr(var_D0)
  loc_1577A4C:   Proc_6_39_E7C810(var_D0, CVar(Me.Fields.Item("ConvRatio")))
  loc_1577A63:   Set var_118 = Me.Txt
  loc_1577A69:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&HF), var_11C)
  loc_1577A71:   var_11C.Text = CStr(var_D0)
  loc_1577AC2:   Set var_118 = Me.Txt
  loc_1577AC8:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&HE), var_11C)
  loc_1577AD0:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("IssueUnit")))
  loc_1577B1D:   Set var_118 = Me.Txt
  loc_1577B23:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H15), var_11C)
  loc_1577B2B:   var_11C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("FinItem")))
  loc_1577B7B:   If (Proc_6_38_E68A98(CVar(Me.Fields.Item("FinItem"))) <> vbNullString) Then
  loc_1577B81:     var_130 = 0
  loc_1577BB9:     var_A0 = Me.Fields.Item("FinItem")
  loc_1577BE0:     unk_525C7A.Execute CStr("Select Max(Name) from Itemmast where Code='" & var_A0.Value & "'"), var_114, -1
  loc_1577BE8:     var_118 = var_118.Fields
  loc_1577BF0:     var_130 = var_11C.Item(var_11C)
  loc_1577C0F:     Set var_198 = Me.Txt
  loc_1577C15:     Call 0.Method_Proc_50_48_15780BC0 (CInt(&H15), var_1D0)
  loc_1577C1D:     var_1D0.Text = Proc_6_38_E68A98(CVar(var_184), var_184)
  loc_1577C48:   Else
  loc_1577C56:     Set var_8C = Me.Txt
  loc_1577C5C:     Call 0.Method_Proc_50_48_15780BC0 (CInt(&H15), var_A0)
  loc_1577C64:     var_A0.Text = vbNullString
  loc_1577C70:   End If
  loc_1577CB8:   var_11C = Me.Fields.Item("ActiveYN")
  loc_1577CC9:   var_114 = CVar(Proc_6_38_E68A98(CVar(var_11C))) 'String
  loc_1577D00:   Set var_184 = Me.Txt
  loc_1577D06:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H14), var_198)
  loc_1577D0E:   var_198.Text = CStr(IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("ActiveYN"))) = vbNullString), "Yes", var_114))
  loc_1577D6F:   Set var_118 = Me.Txt
  loc_1577D75:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H16), var_11C)
  loc_1577D7D:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCode")))
  loc_1577DCA:   Set var_118 = Me.Txt
  loc_1577DD0:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H18), var_11C)
  loc_1577DD8:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelName")))
  loc_1577E25:   Set var_118 = Me.Txt
  loc_1577E2B:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H19), var_11C)
  loc_1577E33:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelQty")))
  loc_1577E80:   Set var_118 = Me.Txt
  loc_1577E86:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H1A), var_11C)
  loc_1577E8E:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark1")))
  loc_1577EDB:   Set var_118 = Me.Txt
  loc_1577EE1:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H1B), var_11C)
  loc_1577EE9:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark2")))
  loc_1577F36:   Set var_118 = Me.Txt
  loc_1577F3C:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H1C), var_11C)
  loc_1577F44:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark3")))
  loc_1577F91:   Set var_118 = Me.Txt
  loc_1577F97:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H1D), var_11C)
  loc_1577F9F:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark4")))
  loc_1577FEC:   Set var_118 = Me.Txt
  loc_1577FF2:   Call 0.Method_Proc_50_48_15780BC0 (CInt(&H1E), var_11C)
  loc_1577FFA:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark5")))
  loc_157803F:   var_F0 = Trim(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Type")))))
  loc_1578047:   var_F4 = CStr(var_F0)
  loc_1578055:   Me.Label2.Caption = var_F4
  loc_157806D: End If
  loc_1578072: Set var_88 = Nothing
  loc_1578075: Exit Sub
  loc_1578076: ' Referenced from: 1576FD0
  loc_157807E: Set var_8C = Err()
  loc_1578084: Call 0.Method_arg_2C (var_F4)
  loc_15780A5: MsgBox(CVar(var_F4), &H40, "Information", var_F0, var_114)
  loc_15780B8: Exit Sub
End Sub

Public Sub Proc_50_49_108C834
  'Data Table: 525C54
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_525C7A As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108C5C7: If (Me.RecordCount = 0) Then
  loc_108C5CA:   Proc_50_49_108C834 = 
  loc_108C5D0: End If
  loc_108C5D4: Set var_90 = Me.TopCtrl1
  loc_108C5DA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_108C5F3: If (CStr() = "Add") Then
  loc_108C631:   Set var_90 = Me.Txt
  loc_108C637:   Call 0.Method_Proc_50_49_108C8340 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (restcode='" & MemVar_1F92078 & "PURC' ) and Code='", var_A0, -1)
  loc_108C658:   unk_525C7A.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_108C668:    = var_D0.Item()
  loc_108C670:    = var_E4.Value
  loc_108C6A1:   If (var_A8.Tag.Fields > 0) Then
  loc_108C6BF:     var_A0 = "Duplicate Name"
  loc_108C6C5:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_108C6E0:     Set var_90 = Me.Txt
  loc_108C6E6:     Call 0.Method_Proc_50_49_108C8340 (CInt(0))
  loc_108C6EE:     var_A8.SetFocus
  loc_108C6FF:     Proc_50_49_108C834 = &HFF
  loc_108C705:   End If
  loc_108C708: Else
  loc_108C743:   Set var_90 = Me.Txt
  loc_108C749:   Call 0.Method_Proc_50_49_108C8340 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108C77B:   unk_525C7A.Execute var_D0 & var_AC & "' And Name<>'" & global_108 & "'", 0, var_E4
  loc_108C78B:    = var_D0.Item(var_A8)
  loc_108C793:    = var_E4.Value
  loc_108C7C8:   If (var_A8.Text.Fields > 0) Then
  loc_108C7EC:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_108C807:     Set var_90 = Me.Txt
  loc_108C80D:     Call 0.Method_Proc_50_49_108C8340 (CInt(0))
  loc_108C815:     var_A8.SetFocus
  loc_108C826:     Proc_50_49_108C834 = &HFF
  loc_108C82C:   End If
  loc_108C82C: End If
  loc_108C82C: Proc_50_49_108C834 = var_A8
End Sub

Public Sub Proc_50_50_F979E8
  'Data Table: 525C54
  loc_F97888: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F9789A:   Me.DGHelp.Visible = False
  loc_F978A2: End If
  loc_F978BE: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_F978D0:   Me.DGItemGroup.Visible = False
  loc_F978D8: End If
  loc_F978F4: If (CBool(Me.DGCat.Visible) = &HFF) Then
  loc_F97906:   Me.DGCat.Visible = False
  loc_F9790E: End If
  loc_F9792A: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_F9793C:   Me.DGUnit.Visible = False
  loc_F97944: End If
  loc_F97960: If (CBool(Me.DGConsumptionItem.Visible) = &HFF) Then
  loc_F97972:   Me.DGConsumptionItem.Visible = False
  loc_F9797A: End If
  loc_F97996: If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_F979A8:   Me.DGFinItem.Visible = False
  loc_F979B0: End If
  loc_F979CC: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F979DE:   Me.FGPoint.Visible = False
  loc_F979E6: End If
  loc_F979E6: Exit Sub
End Sub

Public Sub Proc_50_51_119DE4C
  'Data Table: 525C54
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_119DA3E: Set var_88 = Me.Txt
  loc_119DA44: Call 0.Method_Proc_50_51_119DE4C0 (CInt(0), var_8C)
  loc_119DA63: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_119DA7F: Set var_B4 = Me.Txt
  loc_119DA85: Call 0.Method_Proc_50_51_119DE4C0 (CInt(0), var_B8)
  loc_119DAA0: Set var_88 = Me.Txt
  loc_119DAA6: Call 0.Method_Proc_50_51_119DE4C0 (CInt(0), var_8C)
  loc_119DABE: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119DACD: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_119DAED: Set var_88 = Me.Txt
  loc_119DAF3: Call 0.Method_Proc_50_51_119DE4C0 (CInt(3), var_8C)
  loc_119DB12: Me.DGItemGroup.Left = CVar(var_8C.Left)
  loc_119DB2E: Set var_B4 = Me.Txt
  loc_119DB34: Call 0.Method_Proc_50_51_119DE4C0 (CInt(3), var_B8)
  loc_119DB4F: Set var_88 = Me.Txt
  loc_119DB55: Call 0.Method_Proc_50_51_119DE4C0 (CInt(3), var_8C)
  loc_119DB6D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119DB7C: Me.DGItemGroup.Top = CVar(var_8C.Left)
  loc_119DB9C: Set var_88 = Me.Txt
  loc_119DBA2: Call 0.Method_Proc_50_51_119DE4C0 (CInt(&H10), var_8C)
  loc_119DBC1: Me.DGConsumptionItem.Left = CVar(var_8C.Left)
  loc_119DBDD: Set var_B4 = Me.Txt
  loc_119DBE3: Call 0.Method_Proc_50_51_119DE4C0 (CInt(&H10), var_B8)
  loc_119DBFE: Set var_88 = Me.Txt
  loc_119DC04: Call 0.Method_Proc_50_51_119DE4C0 (CInt(&H10), var_8C)
  loc_119DC1C: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119DC2B: Me.DGConsumptionItem.Top = CVar(var_8C.Left)
  loc_119DC4B: Set var_88 = Me.Txt
  loc_119DC51: Call 0.Method_Proc_50_51_119DE4C0 (CInt(&H15), var_8C)
  loc_119DC70: Me.DGFinItem.Left = CVar(var_8C.Left)
  loc_119DC8C: Set var_B4 = Me.Txt
  loc_119DC92: Call 0.Method_Proc_50_51_119DE4C0 (CInt(&H15), var_B8)
  loc_119DCAD: Set var_88 = Me.Txt
  loc_119DCB3: Call 0.Method_Proc_50_51_119DE4C0 (CInt(&H15), var_8C)
  loc_119DCCB: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119DCDA: Me.DGFinItem.Top = CVar(var_8C.Left)
  loc_119DCFA: Set var_88 = Me.Txt
  loc_119DD00: Call 0.Method_Proc_50_51_119DE4C0 (CInt(&HA), var_8C)
  loc_119DD1F: Me.DGCat.Left = CVar(var_8C.Left)
  loc_119DD3B: Set var_B4 = Me.Txt
  loc_119DD41: Call 0.Method_Proc_50_51_119DE4C0 (CInt(&HA), var_B8)
  loc_119DD5C: Set var_88 = Me.Txt
  loc_119DD62: Call 0.Method_Proc_50_51_119DE4C0 (CInt(&HA), var_8C)
  loc_119DD7A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119DD89: Me.DGCat.Top = CVar(var_8C.Left)
  loc_119DDA9: Set var_88 = Me.Txt
  loc_119DDAF: Call 0.Method_Proc_50_51_119DE4C0 (CInt(1), var_8C)
  loc_119DDCE: Me.DGUnit.Left = CVar(var_8C.Left)
  loc_119DDEA: Set var_B4 = Me.Txt
  loc_119DDF0: Call 0.Method_Proc_50_51_119DE4C0 (CInt(1), var_B8)
  loc_119DE0B: Set var_88 = Me.Txt
  loc_119DE11: Call 0.Method_Proc_50_51_119DE4C0 (CInt(1), var_8C)
  loc_119DE29: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_119DE38: Me.DGUnit.Top = CVar(var_8C.Left)
  loc_119DE4A: Exit Sub
End Sub

Public Sub Proc_50_52_1047FFC
  'Data Table: 525C54
  Dim var_8C As Recordset15
  Dim var_BC As Variant
  Dim var_B8 As Variant
  Dim var_F4 As Variant
  Dim var_D0 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_D4 As TextBox
  loc_1047DD5: var_90 = "STOP"
  loc_1047DF9: Me.Connection15.Execute "Select MAX(vno)AS VNO From STOCK s Where s.VType='" & var_90 & "' ", var_B8, -1
  loc_1047E04: Set var_8C = var_BC
  loc_1047E28: If (var_8C.RecordCount > 0) Then
  loc_1047E48:   var_D0 = Year(DateAdd("d", CDbl(&HFF), MemVar_1F920F4))
  loc_1047E57:   global_116 = CStr(var_D0)
  loc_1047E7C:   var_D4 = var_8C.Fields.Item("VNo")
  loc_1047E8B:   Proc_6_39_E7C810(var_D0, CVar(var_D4))
  loc_1047E98:   var_F4 = (var_D0 + 1)
  loc_1047EA0:   global_120 = CInt(var_F4)
  loc_1047EAF: End If
  loc_1047EDA: var_B8 = Space((5 - Len(var_90)))
  loc_1047EE2: var_F4 = (CVar(global_120 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + CVar(var_D4))
  loc_1047EF6: var_108 = Space((5 - Len(global_116)))
  loc_1047EFE: var_118 = (var_F4 + var_108)
  loc_1047F0B: var_128 = (var_118 + CVar(global_116))
  loc_1047F24: var_13C = Space((8 - Len(CStr(global_120))))
  loc_1047F2C: var_14C = (var_128 + var_13C)
  loc_1047F3B: var_16C = (var_14C + CVar(CStr(global_120)))
  loc_1047F46: global_112 = CStr(var_16C)
  loc_1047F7C: Me.LblVPrefix.Caption = global_116
  loc_1047F95: Set var_BC = Me.Txt
  loc_1047F9B: Call 0.Method_Proc_50_52_1047FFC0 (CInt(&HB), var_D4)
  loc_1047FA3: var_D4.Text = global_112
  loc_1047FCB: Call 0.Method_Proc_50_52_1047FFC0 (CInt(&HC), var_D4)
  loc_1047FD3: var_D4.Text = CStr(global_120)
  loc_1047FE8: var_88 = global_112
  loc_1047FF0: Set var_8C = Nothing
  loc_1047FF3: Proc_50_52_1047FFC = Me.Txt
End Sub

Public Sub Proc_50_53_112E714
  'Data Table: 525C54
  Dim var_A0 As String
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim unk_525C7A As Connection15
  Dim var_88 As Recordset15
  Dim var_12C As Double
  Dim var_B0 As String
  loc_112E3C2: Set var_8C = Me.TopCtrl1
  loc_112E3C8: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(CDbl(0))
  loc_112E3E1: If (CStr(CDbl(0)) <> "Add") Then
  loc_112E3F2:   Set var_8C = Me.Txt
  loc_112E3F8:   Call 0.Method_Proc_50_53_112E7140 (CInt(9), var_A4)
  loc_112E426:   Call 0.Method_Proc_50_53_112E7140 (CInt(8), var_AC)
  loc_112E42E:   var_B0 = var_AC.Text
  loc_112E453:   If ((CDbl(Val(var_A4.Text)) <> CDbl(0)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_112E485:     var_A4 = Me.Fields.Item("Code")
  loc_112E4AC:     unk_525C7A.Execute CStr("Select LPURRATE From iTEMMAST I Where I.CODE='" & var_A4.Value & "' And I.ItemType='Store'"), var_120, -1
  loc_112E4B7:     Set var_88 = Me.Txt
  loc_112E4E5:     If (var_88.RecordCount > 0) Then
  loc_112E4F6:       Set var_8C = Me.Txt
  loc_112E4FC:       Call 0.Method_Proc_50_53_112E7140 (CInt(9), var_A4)
  loc_112E504:       var_A0 = var_A4.Text
  loc_112E514:       global_96 = Val(var_A0)
  loc_112E53B:       var_A4 = var_88.Fields.Item("LPurRate")
  loc_112E55D:       If (var_A4.Value = 0) Then
  loc_112E56E:         Set var_8C = Me.Txt
  loc_112E574:         Call 0.Method_Proc_50_53_112E7140 (CInt(9), var_A4, var_A0)
  loc_112E57C:         global_96 = var_A4.Text
  loc_112E589:         var_12C = Val(var_A0)
  loc_112E59A:         Set var_A8 = Me.Txt
  loc_112E5A0:         Call 0.Method_Proc_50_53_112E7140 (CInt(8), var_AC, var_B0)
  loc_112E5E7:         global_88 = CSng(Format(CVar((var_AC.Text / Val(var_B0))), "0.00"))
  loc_112E605:       End If
  loc_112E605:     End If
  loc_112E605:   End If
  loc_112E60F:   If (global_88 = CDbl(0)) Then
  loc_112E629:     Set var_8C = Me.Txt
  loc_112E62F:     Call 0.Method_Proc_50_53_112E7140 (CInt(4), var_A4, var_A0, CDbl(0), global_88)
  loc_112E637:     1 = var_A4.Text
  loc_112E672:     global_88 = CSng(Format(CVar(Val(var_A0)), "0.00"))
  loc_112E696:     Set var_8C = Me.Txt
  loc_112E69C:     Call 0.Method_Proc_50_53_112E7140 (CInt(8), var_A4, var_A0, global_88, 1)
  loc_112E6A4:     1 = var_A4.Text
  loc_112E6F6:     global_96 = CSng(Format(CVar((Val(var_A0) * Val(CStr(global_88)))), "0.00"))
  loc_112E710:   End If
  loc_112E710: End If
  loc_112E710: Exit Sub
End Sub
