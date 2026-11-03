VERSION 5.00
Begin VB.Form RsMenuItemEntry
  Caption = "Menu Item Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 14460
  ClientHeight = 9780
  LockControls = -1  'True
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5160
    Top = 4485
    Width = 1275
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin BtnEnh CmdCopyConsumption
    Left = 6990
    Top = 1335
    Width = 2220
    Height = 465
    TabIndex = 84
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 14460
    Height = 450
    TabIndex = 83
  End
  Begin Frame FrLblInfo
    Caption = "Label Info."
    BackColor = &HC0FFFF&
    ForeColor = &H80&
    Left = 7005
    Top = 1800
    Width = 5175
    Height = 3045
    Visible = 0   'False
    TabIndex = 63
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
      Index = 26
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
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 1830
      Width = 3855
      Height = 285
      TabIndex = 74
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
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 1515
      Width = 3855
      Height = 285
      TabIndex = 72
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
      Index = 23
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 1200
      Width = 3855
      Height = 285
      TabIndex = 70
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
      Index = 22
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 885
      Width = 3855
      Height = 285
      TabIndex = 68
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
      Index = 21
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 570
      Width = 3855
      Height = 285
      TabIndex = 66
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
      Index = 20
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 255
      Width = 3855
      Height = 285
      TabIndex = 64
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
      Left = 1260
      Top = 2505
      Width = 1980
      Height = 315
      TabIndex = 78
    End
    Begin BtnEnh CmdLabelPrint
      Left = 3855
      Top = 2550
      Width = 1305
      Height = 465
      TabIndex = 87
    End
    Begin Label LblName
      Caption = "Packing Date"
      Index = 20
      ForeColor = &HC00000&
      Left = 0
      Top = 2535
      Width = 1260
      Height = 240
      TabIndex = 79
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
      TabIndex = 77
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
      TabIndex = 75
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
    Begin Label LblName
      Caption = "Remark 2"
      Index = 16
      ForeColor = &HC00000&
      Left = 105
      Top = 1200
      Width = 900
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
    Begin Label LblName
      Caption = "Remark 1"
      Index = 15
      ForeColor = &HC00000&
      Left = 105
      Top = 885
      Width = 900
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
      Caption = "Label Qty."
      Index = 14
      ForeColor = &HC00000&
      Left = 105
      Top = 570
      Width = 975
      Height = 240
      TabIndex = 67
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
      Caption = "Label Name"
      Index = 13
      ForeColor = &HC00000&
      Left = 105
      Top = 255
      Width = 1155
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
  End
  Begin Frame FrCopyConsumption
    Caption = "Copy Consumption:"
    BackColor = &HC0FFFF&
    ForeColor = &H80&
    Left = 6990
    Top = 1800
    Width = 3900
    Height = 1215
    Visible = 0   'False
    TabIndex = 57
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
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1140
      Top = 255
      Width = 2700
      Height = 285
      Enabled = 0   'False
      TabIndex = 58
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
    Begin BtnEnh CmdSaveConsumption
      Left = 2790
      Top = 615
      Width = 1080
      Height = 570
      TabIndex = 90
    End
    Begin BtnEnh Command2a
      Left = 1710
      Top = 615
      Width = 1080
      Height = 570
      TabIndex = 91
    End
    Begin Label LblOutlet
      Caption = "..."
      ForeColor = &H0&
      Left = 5865
      Top = 270
      Width = 180
      Height = 240
      TabIndex = 61
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
      Caption = "Finish Item"
      Index = 11
      ForeColor = &HC00000&
      Left = 45
      Top = 240
      Width = 1050
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
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    Left = 15285
    Top = 1155
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 55
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 60
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 56
    End
  End
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 5745
    Width = 3855
    Height = 255
    TabIndex = 15
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
  Begin DataGrid DGAppDate
    Left = 6855
    Top = 8955
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 53
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2580
    Top = 6030
    Width = 1275
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2580
    Top = 4800
    Width = 1275
    Height = 285
    TabIndex = 12
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2580
    Top = 4170
    Width = 1275
    Height = 285
    TabIndex = 9
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
  Begin DataGrid DGDispCode
    Left = 9330
    Top = 8910
    Width = 1605
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 43
  End
  Begin MSFlexGrid FGPoint
    Left = 16905
    Top = 7395
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 42
  End
  Begin DataGrid DGUnit
    Left = 6870
    Top = 8595
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGRest
    Left = 11655
    Top = 8880
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
End
Begin DataGrid DGItemGroup
  Left = 6855
  Top = 8235
  Width = 4665
  Height = 2295
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 22
End
Begin DataGrid DGItemCat
  Left = 11655
  Top = 8535
  Width = 4410
  Height = 2460
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 27
End
Begin DataGrid DGHelp
  Left = 11640
  Top = 8175
  Width = 4230
  Height = 2355
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 19
End
Begin Frame Frame1
  BackColor = &HC0FFFF&
  Left = 195
  Top = 7020
  Width = 5640
  Height = 2130
  Visible = 0   'False
  TabIndex = 36
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1500
    Top = 975
    Width = 630
    Height = 285
    TabIndex = 39
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
  Begin CheckBox Check2
    Caption = "Currently Applicable"
    ForeColor = &HC00000&
    Left = 105
    Top = 1695
    Width = 2280
    Height = 240
    TabIndex = 40
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
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1500
    Top = 645
    Width = 1590
    Height = 285
    TabIndex = 38
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1500
    Top = 330
    Width = 3855
    Height = 285
    TabIndex = 37
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
  Begin BtnEnh Command2
    Index = 1
    Left = 3450
    Top = 1530
    Width = 1080
    Height = 570
    TabIndex = 88
  End
  Begin BtnEnh Command2
    Index = 0
    Left = 4530
    Top = 1530
    Width = 1080
    Height = 570
    TabIndex = 89
  End
  Begin Label LblName
    Caption = "Active"
    Index = 9
    ForeColor = &HC00000&
    Left = 240
    Top = 1005
    Width = 585
    Height = 240
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
  Begin Label LblName
    Caption = "App. Date"
    Index = 8
    ForeColor = &HC00000&
    Left = 240
    Top = 660
    Width = 930
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 4
    ForeColor = &H80&
    Left = 2190
    Top = 1050
    Width = 885
    Height = 240
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
  Begin Label LblName
    Caption = "Restaurant"
    Index = 4
    ForeColor = &HC00000&
    Left = 240
    Top = 330
    Width = 1020
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
End
Begin CheckBox Check1
  Caption = "Carry Last Information"
  BackColor = &HFFC0C0&
  ForeColor = &H80&
  Left = 4950
  Top = 6045
  Width = 2595
  Height = 240
  TabIndex = 17
  Value = 1
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 2280
  Width = 1275
  Height = 285
  TabIndex = 3
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
  Index = 9
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 5115
  Width = 1275
  Height = 285
  TabIndex = 13
  BorderStyle = 0 'None
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
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 4485
  Width = 1275
  Height = 285
  TabIndex = 10
  BorderStyle = 0 'None
  Alignment = 1 'Right Justify
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
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 1335
  Width = 3855
  Height = 285
  TabIndex = 0
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
  Index = 6
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 3225
  Width = 3855
  Height = 285
  TabIndex = 6
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
  Index = 5
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 3540
  Width = 1275
  Height = 285
  TabIndex = 7
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
  Index = 4
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 3855
  Width = 1275
  Height = 285
  TabIndex = 8
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
  ForeColor = &HC00000&
  Left = 2580
  Top = 5430
  Width = 3855
  Height = 285
  TabIndex = 14
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
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 1965
  Width = 3855
  Height = 285
  TabIndex = 2
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
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 1650
  Width = 3855
  Height = 285
  TabIndex = 1
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
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 2910
  Width = 1275
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
Begin DataGrid DGFinItem
  Left = 6870
  Top = 7875
  Width = 8220
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 60
End
Begin TextBox Txt
  Index = 19
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 2595
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
Begin BtnEnh Command1
  Left = 3870
  Top = 5055
  Width = 1995
  Height = 375
  TabIndex = 85
End
Begin BtnEnh ChkLblInfo
  Left = 9210
  Top = 1335
  Width = 2955
  Height = 465
  TabIndex = 86
End
Begin TextBox Txt
  Index = 28
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 4950
  Top = 2280
  Width = 1485
  Height = 285
  TabIndex = 93
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
Begin Label LblLedgerAc
  Caption = "M.R.P."
  Index = 7
  ForeColor = &HC00000&
  Left = 4425
  Top = 4485
  Width = 615
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 15
  Top = 360
  Width = 180
  Height = 540
  TabIndex = 82
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
Begin Label LblLDt
  Caption = "Last Update"
  ForeColor = &HFF0000&
  Left = -15
  Top = 6690
  Width = 2430
  Height = 285
  TabIndex = 81
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
  Left = 15
  Top = 6420
  Width = 2520
  Height = 255
  TabIndex = 80
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
Begin Label LblLedgerAc
  Caption = "Bar Code"
  Index = 5
  ForeColor = &HC00000&
  Left = 1065
  Top = 2595
  Width = 885
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
Begin Label LblName
  Caption = "Type"
  Index = 10
  ForeColor = &HC00000&
  Left = 1065
  Top = 5715
  Width = 465
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
Begin Label LblLedgerAc
  Caption = "Active"
  Index = 4
  ForeColor = &HC00000&
  Left = 1065
  Top = 6030
  Width = 585
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
  Caption = "(Y)es/(N)o"
  Index = 3
  ForeColor = &H80&
  Left = 3885
  Top = 6030
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 2
  ForeColor = &H80&
  Left = 3870
  Top = 4815
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblName
  Caption = "Rate Inc. Tax"
  Index = 7
  ForeColor = &HC00000&
  Left = 1065
  Top = 4800
  Width = 1260
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
Begin Label LblName
  Caption = "Service Charge"
  Index = 6
  ForeColor = &HC00000&
  Left = 1065
  Top = 4170
  Width = 1470
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
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 1
  ForeColor = &H80&
  Left = 3870
  Top = 4185
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblLedgerAc
  Caption = "Item Code"
  Index = 3
  ForeColor = &HC00000&
  Left = 1065
  Top = 2280
  Width = 975
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
Begin Label LblName
  Caption = "Applicable Date"
  Index = 2
  ForeColor = &HC00000&
  Left = 1065
  Top = 5115
  Width = 1515
  Height = 240
  TabIndex = 33
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
  Caption = "Sale Rate"
  Index = 1
  ForeColor = &HC00000&
  Left = 1065
  Top = 4485
  Width = 930
  Height = 240
  TabIndex = 32
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
  Caption = "Restaurant"
  Index = 1
  ForeColor = &HC00000&
  Left = 1065
  Top = 1335
  Width = 1020
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
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 0
  ForeColor = &H80&
  Left = 3870
  Top = 3870
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 16
  ForeColor = &H80&
  Left = 3870
  Top = 3555
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblName
  Caption = "Item Category"
  Index = 12
  ForeColor = &HC00000&
  Left = 1065
  Top = 3225
  Width = 1335
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
Begin Label LblLedgerAc
  Caption = "Rate Edit"
  Index = 6
  ForeColor = &HC00000&
  Left = 1065
  Top = 3540
  Width = 855
  Height = 240
  TabIndex = 26
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
  Caption = "Disc Applicable"
  Index = 5
  ForeColor = &HC00000&
  Left = 1065
  Top = 3855
  Width = 1470
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
Begin Label LblName
  Caption = "Kitchen"
  Index = 3
  ForeColor = &HC00000&
  Left = 1065
  Top = 5430
  Width = 720
  Height = 240
  TabIndex = 24
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
  Caption = "Item Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1065
  Top = 1965
  Width = 1035
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
Begin Label LblLedgerAc
  Caption = "Item Group"
  Index = 0
  ForeColor = &HC00000&
  Left = 1065
  Top = 1650
  Width = 1065
  Height = 240
  TabIndex = 21
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
  Caption = "Item Unit"
  Index = 2
  ForeColor = &HC00000&
  Left = 1065
  Top = 2910
  Width = 855
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
Begin Label LblLedgerAc
  Caption = "HSN Code"
  Index = 8
  ForeColor = &HC00000&
  Left = 3930
  Top = 2295
  Width = 960
  Height = 240
  TabIndex = 94
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

Attribute VB_Name = "RsMenuItemEntry"


Private Sub Command1_UnknownEvent_9 '1062B80
  'Data Table: 53C1AC
  Dim var_9C As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_C0 As Variant
  Dim unk_53C1DA As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_D0 As Variant
  Dim var_94 As TextBox
  Dim var_124 As Boolean
  loc_1062930: Set var_8C = New FrmConsumMast
  loc_1062951: Set var_90 = Me.Frame1
  loc_1062957: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94, var_98, "Select Top 1 BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103) as SearchCode From BOM Where FinItem='")
  loc_106295F: var_134 = FrmConsumMast.Frame1.Tag
  loc_1062968: var_9C = -1 & var_98
  loc_106296F: var_AC = var_9C & "' And RestCode='"
  loc_1062980: Set var_A0 = Me.Txt
  loc_1062986: Call 0.Method_Command1_UnknownEvent_90 (CInt(8), var_A4, var_A8)
  loc_106298E: var_AC = var_A4.Tag
  loc_10629AC: Proc_6_7_F25D88(var_D0, MemVar_1F920EC)
  loc_10629CB: unk_53C1DA.Execute CStr(CVar(var_138 & var_A8 & "' And AppDate<=") & var_D0 & " Order By FinItem,RestCode,AppDate Desc"), , 
  loc_10629D6: Set var_88 = var_138
  loc_1062A16: If (var_88.RecordCount > 0) Then
  loc_1062A26:   Me.Global.Load var_8C
  loc_1062A45:   var_94 = var_88.Fields.Item("SearchCode")
  loc_1062A4D:   var_D0 = CVar(var_94) 'Address
  loc_1062A55:   Call var_8C.SEARCHBACK
  loc_1062A64:   Call var_8C.TopCtrl1_eEdit
  loc_1062A6D: Else
  loc_1062A70:   Call var_8C.TopCtrl1_eAdd
  loc_1062A76:   var_C0 = 0
  loc_1062A87:   Set var_90 = Me.Txt
  loc_1062A8D:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94)
  loc_1062A95:   var_D0 = CVar(var_94) 'Address
  loc_1062A9D:   LateMemCallSt
  loc_1062AB7:   Set var_90 = Me.Txt
  loc_1062ABD:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94, var_98, var_8C)
  loc_1062AC5:   var_D0 = var_94.Tag
  loc_1062AD1:   var_C0 = 0
  loc_1062AE2:   var_8C.Txt.Tag = var_C0
  loc_1062AFF:   Set var_90 = var_94(CInt(8))
  loc_1062B05:   Call 0.Method_Command1_UnknownEvent_90 (CVar(var_98), var_C0)
  loc_1062B2D:   Set var_90 = var_94(CInt(8))
  loc_1062B33:   Call 0.Method_Command1_UnknownEvent_90 (var_98)
  loc_1062B3B:   var_D0 = var_8C.TextBox.Tag
  loc_1062B4F:   CVar(var_94).Tag = CVar(var_98)
  loc_1062B61:   var_C0 = 0
  loc_1062B67:   var_124 = True
  loc_1062B6E:   Call var_8C.Txt_Validate
  loc_1062B74: End If
  loc_1062B77: Call var_8C.Show
  loc_1062B7D: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F3B5C4
  'Data Table: 53C1AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B4BB: Me.DGItemCat.Visible = False
  loc_F3B4DA: If (Me.RecordCount > 0) Then
  loc_F3B519:   Set var_B4 = Me.Txt
  loc_F3B51F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3B527:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3B55A:   var_B0 = Me.Fields.Item("Name")
  loc_F3B579:   Set var_B4 = Me.Txt
  loc_F3B57F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3B587:   var_B8.Text = CStr(var_B0.Value)
  loc_F3B59D: End If
  loc_F3B5A8: Set var_A8 = Me.Txt
  loc_F3B5AE: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6))
  loc_F3B5B6: var_B0.SetFocus
  loc_F3B5C2: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E70108
  'Data Table: 53C1AC
  loc_E700C6: Proc_6_153_E91194(Me.DGItemCat, arg_14)
  loc_E700DD: Set var_8C = Me.FGPoint
  loc_E700F9: Proc_6_138_106D6F8(Me.DGItemCat, global_80, CInt(6))
  loc_E70107: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '16EF734
  'Data Table: 53C1AC
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_E8 As String
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_88 As Variant
  Dim unk_53C1DA As Connection15
  loc_16EDC48: On Error Goto loc_16EF6EF
  loc_16EDC55: Set var_88 = Me.Txt
  loc_16EDC5B: Call 0.Method_Txt_GotFocus0 (Index)
  loc_16EDC69: Proc_6_74_E226B0(var_8C)
  loc_16EDC75: Call Proc_44_54_102D98C(var_8C)
  loc_16EDC7D: var_92 = Index
  loc_16EDC88: If (var_92 = CInt(0)) Then
  loc_16EDCA2:   If (Me.RecordCount > 0) Then
  loc_16EDCB0:     Set var_8C = Me.FGPoint
  loc_16EDCC8:     Proc_6_137_1193554(Me.DGHelp, global_68, Index)
  loc_16EDCD6:   End If
  loc_16EDD24:   Set var_88 = Me.Txt
  loc_16EDD2A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EDD32:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EDD4A:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_16EDD4D:     Exit Sub
  loc_16EDD4E:   End If
  loc_16EDD5B:   Set var_88 = Me.Txt
  loc_16EDD61:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EDD69:   var_A0 = var_8C.Text
  loc_16EDD7B:   var_B0 = "Name"
  loc_16EDDB6:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_16EDDBF:     Me.MoveFirst
  loc_16EDDE2:     Set var_88 = Me.Txt
  loc_16EDDE8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EDDF0:     0 = var_8C.Text
  loc_16EDE09:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_16EDE1E:   End If
  loc_16EDE21: Else
  loc_16EDE29:   If (var_92 = CInt(2)) Then
  loc_16EDE3B:     Me.Filter = 0
  loc_16EDE51:     Set var_88 = Me.Txt
  loc_16EDE57:     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EDE5F:     var_A0 = var_8C.Tag
  loc_16EDE79:     Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_16EDEA6:     If (Me.RecordCount > 0) Then
  loc_16EDEB4:       Set var_8C = Me.FGPoint
  loc_16EDECC:       Proc_6_137_1193554(Me.DGItemGroup, global_72)
  loc_16EDEDA:     End If
  loc_16EDF28:     Set var_88 = Me.Txt
  loc_16EDF2E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EDF36:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EDF4E:     If (Index Or (var_A0 = vbNullString)) Then
  loc_16EDF51:       Exit Sub
  loc_16EDF52:     End If
  loc_16EDF5F:     Set var_88 = Me.Txt
  loc_16EDF65:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EDF6D:     var_A0 = var_8C.Text
  loc_16EDF7F:     var_B0 = "Name"
  loc_16EDFBA:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_16EDFC3:       Me.MoveFirst
  loc_16EDFE6:       Set var_88 = Me.Txt
  loc_16EDFEC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EDFF4:       0 = var_8C.Text
  loc_16EE00D:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EE022:     End If
  loc_16EE025:   Else
  loc_16EE02D:     If (var_92 = CInt(6)) Then
  loc_16EE03F:       Me.Filter = 0
  loc_16EE055:       Set var_88 = Me.Txt
  loc_16EE05B:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EE063:       var_A0 = var_8C.Tag
  loc_16EE07D:       Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_16EE0AA:       If (Me.RecordCount > 0) Then
  loc_16EE0B8:         Set var_8C = Me.FGPoint
  loc_16EE0D0:         Proc_6_137_1193554(Me.DGItemCat, global_80)
  loc_16EE0DE:       End If
  loc_16EE12C:       Set var_88 = Me.Txt
  loc_16EE132:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EE13A:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EE152:       If (Index Or (var_A0 = vbNullString)) Then
  loc_16EE155:         Exit Sub
  loc_16EE156:       End If
  loc_16EE163:       Set var_88 = Me.Txt
  loc_16EE169:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EE171:       var_A0 = var_8C.Text
  loc_16EE183:       var_B0 = "Name"
  loc_16EE1BE:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_16EE1C7:         Me.MoveFirst
  loc_16EE1EA:         Set var_88 = Me.Txt
  loc_16EE1F0:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EE1F8:         0 = var_8C.Text
  loc_16EE211:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EE226:       End If
  loc_16EE229:     Else
  loc_16EE231:       If (var_92 = CInt(1)) Then
  loc_16EE24B:         If (Me.RecordCount > 0) Then
  loc_16EE259:           Set var_8C = Me.FGPoint
  loc_16EE271:           Proc_6_137_1193554(Me.DGUnit, global_84)
  loc_16EE27F:         End If
  loc_16EE2CD:         Set var_88 = Me.Txt
  loc_16EE2D3:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EE2DB:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EE2F3:         If (Index Or (var_A0 = vbNullString)) Then
  loc_16EE2F6:           Exit Sub
  loc_16EE2F7:         End If
  loc_16EE304:         Set var_88 = Me.Txt
  loc_16EE30A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EE312:         var_A0 = var_8C.Text
  loc_16EE324:         var_B0 = "Name"
  loc_16EE33B:         var_B4 = Me.Fields.Item(var_B0)
  loc_16EE35F:         If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_16EE368:           Me.MoveFirst
  loc_16EE38B:           Set var_88 = Me.Txt
  loc_16EE391:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EE399:           0 = var_8C.Text
  loc_16EE3B2:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EE3C7:         End If
  loc_16EE3CA:       Else
  loc_16EE3D2:         If Not (var_92 = CInt(4)) Then
  loc_16EE3DD:           If Not (var_92 = CInt(5)) Then
  loc_16EE3E8:             If (var_92 = CInt(&HC)) Then
  loc_16EE3EB:             End If
  loc_16EE3EB:           End If
  loc_16EE3FA:           Set var_88 = Me.Txt
  loc_16EE400:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EE408:           var_8C.SelStart = 0
  loc_16EE421:           Set var_88 = Me.Txt
  loc_16EE427:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EE442:           Set var_90 = Me.Txt
  loc_16EE448:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EE450:           var_B4.SelLength = Len(var_8C.Text)
  loc_16EE470:           Set var_88 = Me.Txt
  loc_16EE476:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EE490:           Set var_90 = Me.Txt
  loc_16EE496:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EE49E:           var_B4.Tag = var_8C.Text
  loc_16EE4B4:         Else
  loc_16EE4BC:           If Not (var_92 = CInt(7)) Then
  loc_16EE4C7:             If (var_92 = CInt(&H1B)) Then
  loc_16EE4CA:             End If
  loc_16EE4D7:             Set var_88 = Me.Txt
  loc_16EE4DD:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EE4F8:             Set var_90 = Me.Txt
  loc_16EE4FE:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EE506:             var_B4.SelLength = Len(var_8C.Text)
  loc_16EE526:             Set var_88 = Me.Txt
  loc_16EE52C:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EE534:             var_A0 = var_8C.Text
  loc_16EE546:             Set var_90 = Me.Txt
  loc_16EE54C:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EE554:             var_B4.Tag = var_A0
  loc_16EE56A:           Else
  loc_16EE572:             If (var_92 = CInt(3)) Then
  loc_16EE583:               Set var_88 = Me.Txt
  loc_16EE589:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_16EE5A8:               Me.DGRest.Left = CVar(var_8C.Left)
  loc_16EE5C4:               Set var_90 = Me.Txt
  loc_16EE5CA:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_B4)
  loc_16EE5E5:               Set var_88 = Me.Txt
  loc_16EE5EB:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_16EE603:               var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_16EE612:               Me.DGRest.Top = CVar(var_8C.Left)
  loc_16EE633:               Me.Filter = 0
  loc_16EE644:               Me.Filter = "RestType='Kitchen'"
  loc_16EE660:               If (Me.RecordCount > 0) Then
  loc_16EE66E:                 Set var_8C = Me.FGPoint
  loc_16EE686:                 Proc_6_137_1193554(Me.DGRest, global_76)
  loc_16EE694:               End If
  loc_16EE6E2:               Set var_88 = Me.Txt
  loc_16EE6E8:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EE6F0:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EE708:               If (Index Or (var_A0 = vbNullString)) Then
  loc_16EE70B:                 Exit Sub
  loc_16EE70C:               End If
  loc_16EE719:               Set var_88 = Me.Txt
  loc_16EE71F:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EE727:               var_A0 = var_8C.Text
  loc_16EE739:               var_B0 = "Name"
  loc_16EE750:               var_B4 = Me.Fields.Item(var_B0)
  loc_16EE774:               If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_16EE77D:                 Me.MoveFirst
  loc_16EE7A0:                 Set var_88 = Me.Txt
  loc_16EE7A6:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EE7AE:                 0 = var_8C.Text
  loc_16EE7C7:                 Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EE7DC:               End If
  loc_16EE7EF:               Me.DGRest.Tag = CVar(CStr(Index))
  loc_16EE7FD:             Else
  loc_16EE805:               If (var_92 = CInt(8)) Then
  loc_16EE816:                 Set var_88 = Me.Txt
  loc_16EE81C:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EE83B:                 Me.DGRest.Left = CVar(var_8C.Left)
  loc_16EE857:                 Set var_90 = Me.Txt
  loc_16EE85D:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_B4)
  loc_16EE878:                 Set var_88 = Me.Txt
  loc_16EE87E:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EE896:                 var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_16EE89F:                 Set var_104 = Me.DGRest
  loc_16EE8A5:                 var_104.Top = CVar(var_8C.Left)
  loc_16EE8C6:                 Me.Filter = 0
  loc_16EE8D7:                 Me.Filter = "RestType<>'Kitchen'"
  loc_16EE8F3:                 If (Me.RecordCount > 0) Then
  loc_16EE901:                   Set var_8C = Me.FGPoint
  loc_16EE919:                   Proc_6_137_1193554(Me.DGRest, global_76)
  loc_16EE927:                 End If
  loc_16EE975:                 Set var_88 = Me.Txt
  loc_16EE97B:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EE983:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EE99B:                 If (Index Or (var_A0 = vbNullString)) Then
  loc_16EE99E:                   Exit Sub
  loc_16EE99F:                 End If
  loc_16EE9AC:                 Set var_88 = Me.Txt
  loc_16EE9B2:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EE9BA:                 var_A0 = var_8C.Text
  loc_16EE9CC:                 var_B0 = "Name"
  loc_16EE9DB:                 var_90 = Me.Fields
  loc_16EEA07:                 If CBool(CVar(var_A0) <> var_90.Item(var_B0).Value) Then
  loc_16EEA10:                   Me.MoveFirst
  loc_16EEA33:                   Set var_88 = Me.Txt
  loc_16EEA39:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EEA41:                   0 = var_8C.Text
  loc_16EEA5A:                   Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EEA6F:                 End If
  loc_16EEA82:                 Me.DGRest.Tag = CVar(CStr(Index))
  loc_16EEA90:               Else
  loc_16EEA98:                 If (var_92 = CInt(&HB)) Then
  loc_16EEAA9:                   Set var_8C = Me.Txt
  loc_16EEAAF:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_16EEAD5:                   var_B0 = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_16EEAE4:                   Me.DGRest.Left = var_B0
  loc_16EEB02:                   Set var_8C = Me.Txt
  loc_16EEB08:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_16EEB23:                   Set var_B4 = Me.Txt
  loc_16EEB29:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_104)
  loc_16EEB57:                   var_B0 = CVar((((Me.Frame1.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_16EEB66:                   Me.DGRest.Top = var_B0
  loc_16EEB89:                   Me.Filter = 0
  loc_16EEB9A:                   Me.Filter = "RestType<>'Kitchen'"
  loc_16EEBB6:                   If (Me.RecordCount > 0) Then
  loc_16EEBC4:                     Set var_8C = Me.FGPoint
  loc_16EEBDC:                     Proc_6_137_1193554(Me.DGRest, global_76)
  loc_16EEBEA:                   End If
  loc_16EEC38:                   Set var_88 = Me.Txt
  loc_16EEC3E:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EEC46:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EEC5E:                   If (Index Or (var_A0 = vbNullString)) Then
  loc_16EEC61:                     Exit Sub
  loc_16EEC62:                   End If
  loc_16EEC6F:                   Set var_88 = Me.Txt
  loc_16EEC75:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EEC7D:                   var_A0 = var_8C.Text
  loc_16EEC8F:                   var_B0 = "Name"
  loc_16EEC9E:                   var_90 = Me.Fields
  loc_16EECCA:                   If CBool(CVar(var_A0) <> var_90.Item(var_B0).Value) Then
  loc_16EECD3:                     Me.MoveFirst
  loc_16EECF6:                     Set var_88 = Me.Txt
  loc_16EECFC:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EED04:                     0 = var_8C.Text
  loc_16EED1D:                     Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EED32:                   End If
  loc_16EED45:                   Me.DGRest.Tag = CVar(CStr(Index))
  loc_16EED53:                 Else
  loc_16EED5B:                   If (var_92 = CInt(&HF)) Then
  loc_16EED6B:                     Set var_8C = Me.Txt
  loc_16EED71:                     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_16EED97:                     var_B0 = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_16EEDA6:                     Me.DGAppDate.Left = var_B0
  loc_16EEDC3:                     Set var_8C = Me.Txt
  loc_16EEDC9:                     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_16EEDE3:                     Set var_B4 = Me.Txt
  loc_16EEDE9:                     Call 0.Method_Txt_GotFocus0 (Index, var_104)
  loc_16EEE17:                     var_B0 = CVar((((Me.Frame1.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_16EEE26:                     Me.DGAppDate.Top = var_B0
  loc_16EEE49:                     Me.Filter = 0
  loc_16EEE5F:                     Set var_88 = Me.Txt
  loc_16EEE65:                     Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_8C)
  loc_16EEE6D:                     var_A0 = var_8C.Tag
  loc_16EEE87:                     Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_16EEEB4:                     If (Me.RecordCount > 0) Then
  loc_16EEEC2:                       Set var_8C = Me.FGPoint
  loc_16EEEDA:                       Proc_6_137_1193554(Me.DGAppDate, global_92)
  loc_16EEEE8:                     End If
  loc_16EEF36:                     Set var_88 = Me.Txt
  loc_16EEF3C:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EEF44:                     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EEF5C:                     If (Index Or (var_A0 = vbNullString)) Then
  loc_16EEF5F:                       Exit Sub
  loc_16EEF60:                     End If
  loc_16EEF6D:                     Set var_88 = Me.Txt
  loc_16EEF73:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EEF7B:                     var_A0 = var_8C.Text
  loc_16EEF8D:                     var_B0 = "Name"
  loc_16EEFA4:                     var_B4 = Me.Fields.Item(var_B0)
  loc_16EEFC8:                     If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_16EEFD1:                       Me.MoveFirst
  loc_16EEFF4:                       Set var_88 = Me.Txt
  loc_16EEFFA:                       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EF002:                       0 = var_8C.Text
  loc_16EF01B:                       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EF030:                     End If
  loc_16EF043:                     Me.DGAppDate.Tag = CVar(CStr(Index))
  loc_16EF051:                   Else
  loc_16EF059:                     If (var_92 = CInt(9)) Then
  loc_16EF069:                       Set var_88 = Me.Txt
  loc_16EF06F:                       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF08A:                       Set var_90 = Me.Txt
  loc_16EF090:                       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EF098:                       var_B4.SelLength = Len(var_8C.Text)
  loc_16EF0B8:                       Set var_88 = Me.Txt
  loc_16EF0BE:                       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF0D8:                       Set var_90 = Me.Txt
  loc_16EF0DE:                       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EF0E6:                       var_B4.Tag = var_8C.Text
  loc_16EF0FC:                     Else
  loc_16EF104:                       If (var_92 = CInt(&HA)) Then
  loc_16EF115:                         Set var_88 = Me.Txt
  loc_16EF11B:                         Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_16EF13A:                         Me.DGDispCode.Left = CVar(var_8C.Left)
  loc_16EF156:                         Set var_90 = Me.Txt
  loc_16EF15C:                         Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_B4)
  loc_16EF177:                         Set var_88 = Me.Txt
  loc_16EF17D:                         Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_16EF195:                         var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_16EF1A4:                         Me.DGDispCode.Top = CVar(var_8C.Left)
  loc_16EF1C4:                         Set var_88 = Me.Txt
  loc_16EF1CA:                         Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EF1D2:                         var_A0 = var_8C.Text
  loc_16EF1E9:                         If (var_A0 = vbNullString) Then
  loc_16EF1F7:                           Set var_88 = Me.Txt
  loc_16EF1FD:                           Call 0.Method_Txt_GotFocus0 (CInt(8))
  loc_16EF205:                           var_8C.SetFocus
  loc_16EF211:                           Exit Sub
  loc_16EF212:                         End If
  loc_16EF230:                         Set var_88 = Me.Txt
  loc_16EF236:                         Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A0, "SELECT DispCode as COde,DispCode FROM ItemMast Where Type IN ('Finish','Semi Finish')  And DispCode<>9999 and RestCode ='")
  loc_16EF23E:                         var_C4 = var_8C.Tag
  loc_16EF247:                         var_E8 = -1 & var_A0
  loc_16EF257:                         unk_53C1DA.Execute 1 & var_A0 & "' ORDER BY DispCode", var_90, var_8C
  loc_16EF268:                         Set global_96 = var_90
  loc_16EF28C:                         CVarUnk
  loc_16EF291:                         VerifyVarObj
  loc_16EF297:                         Set var_88 = Me.DGDispCode
  loc_16EF29D:                         LateIdStAd
  loc_16EF2C2:                         If (Me.RecordCount > 0) Then
  loc_16EF2D0:                           Set var_8C = Me.FGPoint
  loc_16EF2E8:                           Proc_6_137_1193554(Me.DGDispCode, global_96, Index)
  loc_16EF2F6:                         End If
  loc_16EF2F9:                       Else
  loc_16EF301:                         If (var_92 = CInt(&H11)) Then
  loc_16EF311:                           ReDim var_110(0 To 3)
  loc_16EF328:                           var_110(0) = "Manufactured Item"
  loc_16EF337:                           var_110(1) = "Trade Item"
  loc_16EF346:                           var_110(2) = "Proprietary Item"
  loc_16EF355:                           var_110(3) = "Other"
  loc_16EF36C:                           global_100 = Array(var_110)
  loc_16EF377:                           Set var_B4 = Me.ListView
  loc_16EF37E:                           Set var_104 = Me.Txt
  loc_16EF392:                           Set var_8C = var_104
  loc_16EF3AC:                           Set global_116 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_100, 4)
  loc_16EF3D0:                           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, global_100)
  loc_16EF3D8:                           var_8C = var_8C.Text
  loc_16EF3EA:                           Set var_90 = Me.Txt
  loc_16EF3F0:                           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_16EF3F8:                           var_B4.Tag = Me.Txt
  loc_16EF40E:                         Else
  loc_16EF416:                           If (var_92 = CInt(&H12)) Then
  loc_16EF427:                             Set var_8C = Me.Txt
  loc_16EF42D:                             Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_90)
  loc_16EF453:                             var_B0 = CVar((Me.FrCopyConsumption.Left + var_90.Left)) 'Single
  loc_16EF462:                             Me.DGFinItem.Left = "Manufactured Item"
  loc_16EF480:                             Set var_8C = Me.Txt
  loc_16EF486:                             Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_90)
  loc_16EF4A1:                             Set var_B4 = Me.Txt
  loc_16EF4A7:                             Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_104)
  loc_16EF4D5:                             var_B0 = CVar((((Me.FrCopyConsumption.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_16EF4E4:                             Me.DGFinItem.Top = "Manufactured Item"
  loc_16EF507:                             Me.Filter = 0
  loc_16EF51D:                             Set var_88 = Me.Txt
  loc_16EF523:                             Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A0)
  loc_16EF52B:                             "RestCode<>'" = var_8C.Tag
  loc_16EF545:                             Me.Filter = CVar(global_96 & var_A0 & "'")
  loc_16EF572:                             If (Me.RecordCount > 0) Then
  loc_16EF580:                               Set var_8C = Me.FGPoint
  loc_16EF598:                               Proc_6_137_1193554(Me.DGFinItem, global_88)
  loc_16EF5A6:                             End If
  loc_16EF5F4:                             Set var_88 = Me.Txt
  loc_16EF5FA:                             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EF602:                             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EF61A:                             If (Index Or (var_A0 = vbNullString)) Then
  loc_16EF61D:                               Exit Sub
  loc_16EF61E:                             End If
  loc_16EF62B:                             Set var_88 = Me.Txt
  loc_16EF631:                             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF639:                             var_A0 = var_8C.Text
  loc_16EF64B:                             var_B0 = "Name"
  loc_16EF686:                             If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_16EF68F:                               Me.MoveFirst
  loc_16EF6B2:                               Set var_88 = Me.Txt
  loc_16EF6B8:                               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EF6C0:                               0 = var_8C.Text
  loc_16EF6D9:                               Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EF6EE:                             End If
  loc_16EF6EE:                           End If
  loc_16EF6EE:                         End If
  loc_16EF6EE:                       End If
  loc_16EF6EE:                     End If
  loc_16EF6EE:                   End If
  loc_16EF6EE:                 End If
  loc_16EF6EE:               End If
  loc_16EF6EE:             End If
  loc_16EF6EE:           End If
  loc_16EF6EE:         End If
  loc_16EF6EE:       End If
  loc_16EF6EE:     End If
  loc_16EF6EE:   End If
  loc_16EF6EE: End If
  loc_16EF6EE: Exit Sub
  loc_16EF6EF: ' Referenced from: 16EDC48
  loc_16EF6F7: Set var_88 = Err()
  loc_16EF6FD: Call 0.Method_arg_2C (var_A0)
  loc_16EF71E: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_140)
  loc_16EF731: Exit Sub
  loc_16EF732: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '145B458
  'Data Table: 53C1AC
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C0 As Variant
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_A4 As DataGrid
  Dim var_AC As DataGrid
  loc_145A8E6: If (CLng(Shift) = &H1B) Then
  loc_145A8E9:   Call Proc_44_54_102D98C()
  loc_145A8EE:   Exit Sub
  loc_145A8EF: End If
  loc_145A8F2: var_88 = KeyCode
  loc_145A8FD: If (var_88 = CInt(0)) Then
  loc_145A91D:   Set var_9C = Me.FGPoint
  loc_145A928:   Set var_98 = Nothing
  loc_145A956:   Proc_6_69_134A198(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_145A9C5:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145A9EB:     Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 1)
  loc_145A9F9:   End If
  loc_145A9FC: Else
  loc_145AA04:   If (var_88 = CInt(2)) Then
  loc_145AA2F:     Set var_98 = Nothing
  loc_145AA61:     Proc_6_69_134A198(Me.DGItemGroup, Me.Txt, CInt(2), global_72, Shift, 0, 1)
  loc_145AAD0:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145AAD7:       Set var_98 = Me.DGItemGroup
  loc_145AAF6:       Proc_6_138_106D6F8(var_98, global_72, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_145AB04:     End If
  loc_145AB07:   Else
  loc_145AB0F:     If (var_88 = CInt(6)) Then
  loc_145AB68:       Proc_6_69_134A198(Me.DGItemCat, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_145ABD7:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145ABFD:         Proc_6_138_106D6F8(Me.DGItemCat, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_145AC0B:       End If
  loc_145AC0E:     Else
  loc_145AC16:       If Not (var_88 = CInt(8)) Then
  loc_145AC21:         If Not (var_88 = CInt(3)) Then
  loc_145AC2C:           If (var_88 = CInt(&HB)) Then
  loc_145AC2F:           End If
  loc_145AC2F:         End If
  loc_145AC85:         Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_145ACF4:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145AD1A:           Proc_6_138_106D6F8(Me.DGRest, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_145AD28:         End If
  loc_145AD2B:       Else
  loc_145AD33:         If (var_88 = CInt(&HF)) Then
  loc_145AD8C:           Proc_6_69_134A198(Me.DGAppDate, Me.Txt, KeyCode, global_92, Shift, 0, 1, Nothing)
  loc_145ADFB:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145AE02:             Set var_98 = Me.DGAppDate
  loc_145AE09:             Set var_90 = Me.FGPoint
  loc_145AE21:             Proc_6_138_106D6F8(var_98, global_92, KeyCode, var_90, Me.FGPoint, 0)
  loc_145AE2F:           End If
  loc_145AE32:         Else
  loc_145AE3A:           If (var_88 = CInt(&HA)) Then
  loc_145AE47:             Set var_8C = Me.Txt
  loc_145AE4D:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, 0, var_98)
  loc_145AE68:             Proc_6_41_FA0BA4(var_90, Shift, 4, 0)
  loc_145AE96:             If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_145AEB6:               Set var_98 = Me.FGPoint
  loc_145AEE4:               Proc_6_79_11ACE04(Me.DGDispCode, Me.Txt, KeyCode, global_96, Shift, 0)
  loc_145AEF8:             End If
  loc_145AF51:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145AF77:               Proc_6_138_106D6F8(Me.DGDispCode, global_96, KeyCode, Me.FGPoint, 1)
  loc_145AF85:             End If
  loc_145AF88:           Else
  loc_145AF90:             If (var_88 = CInt(1)) Then
  loc_145AF97:               Set var_9C = Me.DGUnit
  loc_145AFA5:               Set var_A8 = Me.FGPoint
  loc_145AFB0:               Set var_98 = var_A8
  loc_145AFDE:               Proc_6_79_11ACE04(var_9C, Me.Txt, KeyCode, global_84, Shift, 0, 1)
  loc_145AFFB:               var_B0 = Me.RecordCount
  loc_145B04B:               If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145B052:                 Set var_98 = Me.DGUnit
  loc_145B059:                 Set var_90 = Me.FGPoint
  loc_145B071:                 Proc_6_138_106D6F8(var_98, global_84, KeyCode, var_90, var_98, 0)
  loc_145B07F:               End If
  loc_145B082:             Else
  loc_145B08A:               If (var_88 = CInt(&H11)) Then
  loc_145B0AF:                 Set var_8C = Me.Txt
  loc_145B0B5:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_145B0BD:                 0 = var_90.Left
  loc_145B0CF:                 Set var_98 = Me.Txt
  loc_145B0D5:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_145B0DD:                 var_9C = var_9C.Top
  loc_145B0EF:                 Set var_A4 = Me.Txt
  loc_145B0F5:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_145B0FD:                 0 = var_A8.Height
  loc_145B10F:                 Set var_AC = Me.Txt
  loc_145B115:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_145B11D:                 var_C4 = var_C0.Width
  loc_145B165:                 Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_145B18C:               Else
  loc_145B194:                 If (var_88 = CInt(&H12)) Then
  loc_145B1F1:                   Proc_6_69_134A198(Me.DGFinItem, Me.Txt, CInt(&H12), global_88, Shift, 0, 1, Nothing)
  loc_145B210:                   var_B0 = Me.RecordCount
  loc_145B260:                   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145B286:                     Proc_6_138_106D6F8(Me.DGFinItem, global_88, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_145B294:                   End If
  loc_145B294:                 End If
  loc_145B294:               End If
  loc_145B294:             End If
  loc_145B294:           End If
  loc_145B294:         End If
  loc_145B294:       End If
  loc_145B294:     End If
  loc_145B294:   End If
  loc_145B294: End If
  loc_145B38C: If (((((((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGDispCode.Visible) = 0)) And (CBool(Me.DGRest.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGItemCat.Visible) = 0)) And (CBool(Me.DGUnit.Visible) = 0)) And (CBool(Me.DGAppDate.Visible) = 0)) And (CBool(Me.ListView.Visible) = 0)) And (CBool(Me.DGFinItem.Visible) = 0)) Then
  loc_145B3AD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HE))) Then
  loc_145B3BA:     Call Txt_Validate(CInt(3))
  loc_145B3C4:     Call Proc_44_56_E80F80(0, var_86, CInt(var_B0), CInt((var_B8 + var_BC)))
  loc_145B3CC:   Else
  loc_145B3EA:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_145B3F3:       Call Txt_Validate(KeyCode)
  loc_145B3FE:       If (var_86 = &HFF) Then
  loc_145B401:         Exit Sub
  loc_145B402:       End If
  loc_145B408:       Proc_6_75_E527CC(Shift, arg_14, var_86)
  loc_145B410:     Else
  loc_145B425:       If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_145B42E:         Proc_6_75_E527CC(Shift, arg_14, CInt(var_C4))
  loc_145B436:       Else
  loc_145B449:         If ((CLng(Shift) = &H26) And (KeyCode <> CInt(8))) Then
  loc_145B452:           Proc_6_76_E52838(Shift, arg_14)
  loc_145B457:         End If
  loc_145B457:       End If
  loc_145B457:     End If
  loc_145B457:   End If
  loc_145B457: End If
  loc_145B457: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1248170
  'Data Table: 53C1AC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_1247C27: Proc_6_58_E054C0(arg_10)
  loc_1247C32: Proc_6_133_E7EF78(var_94)
  loc_1247C3B: arg_10 = CInt(var_94)
  loc_1247C44: var_96 = KeyAscii
  loc_1247C4F: If (var_96 = CInt(&HA)) Then
  loc_1247C5C:   Set var_9C = Me.Txt
  loc_1247C62:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_1247C7D:   Proc_6_42_129A86C(var_A0, arg_10, 4)
  loc_1247C8C: Else
  loc_1247C94:   If (var_96 = CInt(0)) Then
  loc_1247CB3:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_1247CE0:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1247D12:       Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyAscii, Me.FGPoint)
  loc_1247D20:     End If
  loc_1247D23:   Else
  loc_1247D2B:     If (var_96 = CInt(2)) Then
  loc_1247D4A:       If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_1247D77:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_1247DA9:         Proc_6_138_106D6F8(Me.DGItemGroup, global_72, KeyAscii, Me.FGPoint, 0)
  loc_1247DB7:       End If
  loc_1247DBA:     Else
  loc_1247DC2:       If Not (var_96 = CInt(8)) Then
  loc_1247DCD:         If Not (var_96 = CInt(3)) Then
  loc_1247DD8:           If (var_96 = CInt(&HB)) Then
  loc_1247DDB:           End If
  loc_1247DDB:         End If
  loc_1247DF7:         If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1247E24:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_1247E56:           Proc_6_138_106D6F8(Me.DGRest, global_76, KeyAscii, Me.FGPoint, 0)
  loc_1247E64:         End If
  loc_1247E67:       Else
  loc_1247E6F:         If (var_96 = CInt(&HF)) Then
  loc_1247E8E:           If (CBool(Me.DGAppDate.Visible) = &HFF) Then
  loc_1247EBB:             Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_92, arg_10, "Name")
  loc_1247EED:             Proc_6_138_106D6F8(Me.DGAppDate, global_92, KeyAscii, Me.FGPoint, 0)
  loc_1247EFB:           End If
  loc_1247EFE:         Else
  loc_1247F06:           If (var_96 = CInt(6)) Then
  loc_1247F25:             If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1247F52:               Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_1247F6C:               Set var_A0 = Me.FGPoint
  loc_1247F84:               Proc_6_138_106D6F8(Me.DGItemCat, global_80, KeyAscii, var_A0, 0)
  loc_1247F92:             End If
  loc_1247F95:           Else
  loc_1247F9D:             If Not (var_96 = CInt(7)) Then
  loc_1247FA8:               If (var_96 = CInt(&H1B)) Then
  loc_1247FAB:               End If
  loc_1247FB5:               Set var_9C = Me.Txt
  loc_1247FBB:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_1247FD6:               Proc_6_42_129A86C(var_A0, arg_10, 8, 2)
  loc_1247FE5:             Else
  loc_1247FED:               If Not (var_96 = CInt(4)) Then
  loc_1247FF8:                 If Not (var_96 = CInt(5)) Then
  loc_1248003:                   If Not (var_96 = CInt(&HC)) Then
  loc_124800E:                     If Not (var_96 = CInt(&HD)) Then
  loc_1248019:                       If Not (var_96 = CInt(&HE)) Then
  loc_1248024:                         If (var_96 = CInt(&H10)) Then
  loc_1248027:                         End If
  loc_1248027:                       End If
  loc_1248027:                     End If
  loc_1248027:                   End If
  loc_1248027:                 End If
  loc_1248050:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1248060:                   Set var_9C = Me.Txt
  loc_1248066:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_124806E:                   var_A0.Text = 0
  loc_124807D:                 Else
  loc_12480A6:                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_12480B6:                     Set var_9C = Me.Txt
  loc_12480BC:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_12480C4:                     var_A0.Text = arg_10
  loc_12480D0:                   End If
  loc_12480D0:                 End If
  loc_12480D2:                 arg_10 = 0
  loc_12480D8:               Else
  loc_12480E0:                 If (var_96 = CInt(&H12)) Then
  loc_12480FF:                   If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_1248111:                     var_AC = "Name"
  loc_124812C:                     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_88, arg_10)
  loc_124815E:                     Proc_6_138_106D6F8(Me.DGFinItem, global_88, KeyAscii, Me.FGPoint)
  loc_124816C:                   End If
  loc_124816C:                 End If
  loc_124816C:               End If
  loc_124816C:             End If
  loc_124816C:           End If
  loc_124816C:         End If
  loc_124816C:       End If
  loc_124816C:     End If
  loc_124816C:   End If
  loc_124816C: End If
  loc_124816C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FCF24C
  'Data Table: 53C1AC
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  loc_FCF08B: var_86 = KeyCode
  loc_FCF096: If (var_86 = CInt(&HA)) Then
  loc_FCF0BC:   Set var_A0 = Me.Txt
  loc_FCF0C2:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_FCF0CA:   (CBool(Me.DGDispCode.Visible) = &HFF) = var_A4.Text
  loc_FCF0E7:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_FCF0F4:     var_A8 = "DispCode"
  loc_FCF10F:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_96)
  loc_FCF129:     Set var_A0 = Me.FGPoint
  loc_FCF141:     Proc_6_138_106D6F8(Me.DGDispCode, global_96, KeyCode)
  loc_FCF14F:   End If
  loc_FCF152: Else
  loc_FCF15A:   If (var_86 = CInt(1)) Then
  loc_FCF179:     If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_FCF186:       var_A8 = "Name"
  loc_FCF1A1:       Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_84, Shift)
  loc_FCF1D3:       Proc_6_138_106D6F8(Me.DGUnit, global_84, KeyCode, Me.FGPoint)
  loc_FCF1E1:     End If
  loc_FCF1E4:   Else
  loc_FCF1EC:     If (var_86 = CInt(&H11)) Then
  loc_FCF20A:       If (Me.FrmList.Visible = &HFF) Then
  loc_FCF239:         Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_116)
  loc_FCF249:       End If
  loc_FCF249:     End If
  loc_FCF249:   End If
  loc_FCF249: End If
  loc_FCF249: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CC7C
  'Data Table: 53C1AC
  loc_E4CC5A: Set var_88 = Me.Txt
  loc_E4CC60: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CC6E: Proc_6_73_E22704(var_8C)
  loc_E4CC7A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '166D694
  'Data Table: 53C1AC
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As Variant
  Dim var_90 As Variant
  Dim var_D0 As Variant
  Dim var_B0 As String
  Dim arg_10 As Integer
  Dim var_98 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_E0 As Variant
  Dim var_124 As String
  Dim unk_53C1DA As Connection15
  Dim var_94 As Variant
  Dim var_13C As TextBox
  Dim var_100 As Variant
  loc_166BF20: On Error Goto loc_166D650
  loc_166BF26: var_86 = Cancel
  loc_166BF31: If (var_86 = CInt(9)) Then
  loc_166BF3E:   Set var_8C = Me.Txt
  loc_166BF44:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166BF64:   Set var_98 = Me.Txt
  loc_166BF6A:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_166BF72:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_166BF93:   Set var_8C = Me.Txt
  loc_166BF99:   Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_166BFA1:   var_A0 = var_90.Text
  loc_166BFB8:   If (var_A0 = vbNullString) Then
  loc_166BFDC:     MsgBox("First Enter Sale Rate", &H40, "Validation", var_100, var_120)
  loc_166BFEE:     arg_10 = &HFF
  loc_166BFFC:     Set var_8C = Me.Txt
  loc_166C002:     Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_166C00A:     var_90.SetFocus
  loc_166C016:     Exit Sub
  loc_166C017:   End If
  loc_166C025:   Set var_8C = Me.Txt
  loc_166C02B:   Call 0.Method_Txt_Validate0 (CInt(7), var_90, var_A0)
  loc_166C033:   arg_10 = var_90.Text
  loc_166C04E:   Set var_94 = Me.Txt
  loc_166C054:   Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_124)
  loc_166C05C:   (var_A0 <> vbNullString) = var_98.Text
  loc_166C07C:   If (var_86 And (var_124 = vbNullString)) Then
  loc_166C0A0:     MsgBox("First Enter App. Date", &H40, "Validation", var_100, var_120)
  loc_166C0B2:     arg_10 = &HFF
  loc_166C0B5:     Exit Sub
  loc_166C0B6:   End If
  loc_166C0B9: Else
  loc_166C0C1:   If (var_86 = CInt(&HA)) Then
  loc_166C0C7:     Call Proc_44_53_12F277C(var_126)
  loc_166C0D2:     If (var_126 = &HFF) Then
  loc_166C0D7:       arg_10 = &HFF
  loc_166C0DA:       Exit Sub
  loc_166C0DB:     End If
  loc_166C0DE:   Else
  loc_166C0E6:     If Not (var_86 = CInt(7)) Then
  loc_166C0F1:       If (var_86 = CInt(&H1B)) Then
  loc_166C0F4:       End If
  loc_166C0FE:       Set var_8C = Me.Txt
  loc_166C104:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166C13E:       Set var_94 = Me.Txt
  loc_166C144:       Call 0.Method_Txt_Validate0 (Cancel, var_98, CStr(Format(CVar(var_90), "0.00")), 1)
  loc_166C14C:       var_98.Text = 1
  loc_166C169:     Else
  loc_166C171:       If (var_86 = CInt(0)) Then
  loc_166C177:         Call Proc_44_53_12F277C(var_126, arg_10)
  loc_166C182:         If (var_126 = &HFF) Then
  loc_166C187:           arg_10 = &HFF
  loc_166C18A:           Exit Sub
  loc_166C18B:         End If
  loc_166C196:         Set var_8C = Me.Txt
  loc_166C19C:         Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_166C1A4:         var_A0 = "Item Name"
  loc_166C1C5:         If (Proc_6_27_EA565C(var_90, var_A0) = 0) Then
  loc_166C1D3:           Set var_8C = Me.Txt
  loc_166C1D9:           Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_166C1E1:           var_90.SetFocus
  loc_166C1EF:           arg_10 = &HFF
  loc_166C1F2:           Exit Sub
  loc_166C1F3:         End If
  loc_166C241:         Set var_8C = Me.Txt
  loc_166C247:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_166C24F:         arg_10 = var_90.Text
  loc_166C267:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_166C26A:           Exit Sub
  loc_166C26B:         End If
  loc_166C2A6:         Set var_94 = Me.Txt
  loc_166C2AC:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166C2B4:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166C2E7:         var_90 = Me.Fields.Item("Code")
  loc_166C305:         Set var_94 = Me.Txt
  loc_166C30B:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166C313:         var_98.Tag = CStr(var_90.Value)
  loc_166C334:         Set var_8C = Me.Txt
  loc_166C33A:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_90)
  loc_166C363:         If (Trim(CVar(var_90)) = vbNullString) Then
  loc_166C3C3:           Set var_94 = Me.Txt
  loc_166C3C9:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_98)
  loc_166C3D1:           var_98.Text = CStr(Val(CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCode")))), 4))))
  loc_166C3F1:         End If
  loc_166C42A:         Set var_94 = Me.Txt
  loc_166C430:         Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_166C438:         var_98.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCode")))
  loc_166C466:         var_90 = Me.Fields.Item("CommodityCode")
  loc_166C477:         var_A0 = Proc_6_38_E68A98(CVar(var_90))
  loc_166C485:         Set var_94 = Me.Txt
  loc_166C48B:         Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_166C493:         var_98.Text = var_A0
  loc_166C4B2:         Set var_8C = Me.Txt
  loc_166C4B8:         Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_166C4C0:         var_C0 = CVar(var_90) 'Address
  loc_166C4E1:         If (Trim(var_C0) = vbNullString) Then
  loc_166C510:           Set var_8C = Me.Txt
  loc_166C516:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "Select Max(Unit) From ItemMast Where Code='", var_C0, -1)
  loc_166C537:           unk_53C1DA.Execute var_98 & var_A0 & "' And ItemType<>'Store'", 0, var_9C
  loc_166C547:            = var_98.Item(arg_10)
  loc_166C54F:            = var_9C.Value
  loc_166C56A:           Set var_138 = Me.Txt
  loc_166C570:           Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_166C578:           var_13C.Text = Proc_6_38_E68A98(var_90.Tag.Fields)
  loc_166C5A0:         End If
  loc_166C5EE:         Set var_8C = Me.Txt
  loc_166C5F4:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166C614:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166C617:           Exit Sub
  loc_166C618:         End If
  loc_166C626:         Set var_8C = Me.Txt
  loc_166C62C:         Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_166C634:         var_A0 = var_90.Text
  loc_166C646:         var_B0 = "Name"
  loc_166C65D:         var_98 = Me.Fields.Item(var_B0)
  loc_166C681:         If CBool(CVar(var_A0) <> var_98.Value) Then
  loc_166C68A:           Me.MoveFirst
  loc_166C6AE:           Set var_8C = Me.Txt
  loc_166C6B4:           Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_A0, "Name ='")
  loc_166C6BC:           0 = var_90.Text
  loc_166C6D5:           Me.Find 1 & var_A0 & "'", var_B0, 
  loc_166C6EA:         End If
  loc_166C6ED:       Else
  loc_166C6F5:         If (var_86 = CInt(2)) Then
  loc_166C746:           Set var_8C = Me.Txt
  loc_166C74C:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166C76C:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166C76F:             Exit Sub
  loc_166C770:           End If
  loc_166C7AB:           Set var_94 = Me.Txt
  loc_166C7B1:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166C7B9:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166C80A:           Set var_94 = Me.Txt
  loc_166C810:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166C818:           var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_166C848:           var_90 = Me.Fields.Item("Type")
  loc_166C85F:           global_56 = Proc_6_38_E68A98(CVar(var_90))
  loc_166C86F:         Else
  loc_166C877:           If (var_86 = CInt(6)) Then
  loc_166C8C8:             Set var_8C = Me.Txt
  loc_166C8CE:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166C8EE:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166C8F1:               Exit Sub
  loc_166C8F2:             End If
  loc_166C92D:             Set var_94 = Me.Txt
  loc_166C933:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166C93B:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166C96E:             var_90 = Me.Fields.Item("Code")
  loc_166C98C:             Set var_94 = Me.Txt
  loc_166C992:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166C99A:             var_98.Tag = CStr(var_90.Value)
  loc_166C9B3:           Else
  loc_166C9BB:             If Not (var_86 = CInt(3)) Then
  loc_166C9C6:               If (var_86 = CInt(&HB)) Then
  loc_166C9C9:               End If
  loc_166CA17:               Set var_8C = Me.Txt
  loc_166CA1D:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166CA3D:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166CA4D:                 Set var_8C = Me.Txt
  loc_166CA53:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166CA5B:                 var_90.Text = vbNullString
  loc_166CA74:                 Set var_8C = Me.Txt
  loc_166CA7A:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166CA82:                 var_90.Tag = vbNullString
  loc_166CA8E:                 Exit Sub
  loc_166CA8F:               End If
  loc_166CACA:               Set var_94 = Me.Txt
  loc_166CAD0:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166CAD8:               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166CB0B:               var_90 = Me.Fields.Item("Code")
  loc_166CB29:               Set var_94 = Me.Txt
  loc_166CB2F:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166CB37:               var_98.Tag = CStr(var_90.Value)
  loc_166CB50:             Else
  loc_166CB58:               If (var_86 = CInt(&HF)) Then
  loc_166CBA9:                 Set var_8C = Me.Txt
  loc_166CBAF:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166CBCF:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166CBDF:                   Set var_8C = Me.Txt
  loc_166CBE5:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166CBED:                   var_90.Text = vbNullString
  loc_166CC06:                   Set var_8C = Me.Txt
  loc_166CC0C:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166CC14:                   var_90.Tag = vbNullString
  loc_166CC20:                   Exit Sub
  loc_166CC21:                 End If
  loc_166CC5C:                 Set var_94 = Me.Txt
  loc_166CC62:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166CC6A:                 var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166CC9D:                 var_90 = Me.Fields.Item("Code")
  loc_166CCBB:                 Set var_94 = Me.Txt
  loc_166CCC1:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166CCC9:                 var_98.Tag = CStr(var_90.Value)
  loc_166CCE2:               Else
  loc_166CCEA:                 If (var_86 = CInt(8)) Then
  loc_166CD3B:                   Set var_8C = Me.Txt
  loc_166CD41:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166CD61:                   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166CD66:                     arg_10 = &HFF
  loc_166CD69:                     Exit Sub
  loc_166CD6A:                   End If
  loc_166CDA5:                   Set var_94 = Me.Txt
  loc_166CDAB:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166CDB3:                   var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166CE04:                   Set var_94 = Me.Txt
  loc_166CE0A:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166CE12:                   var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_166CE35:                   var_D0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where Type IN ('Finish','Semi Finish') AND RESTCODE='"
  loc_166CE7E:                   unk_53C1DA.Execute CStr(var_D0 & Me.Fields.Item("Code").Value & "' ORDER BY Name"), var_120, -1
  loc_166CE8F:                   Set global_72 = var_94
  loc_166CEB5:                   CVarUnk
  loc_166CEBA:                   VerifyVarObj
  loc_166CEC0:                   Set var_8C = Me.DGItemGroup
  loc_166CEC6:                   LateIdStAd
  loc_166CF13:                   var_E0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (cattype is not NULL and cattype<>'')  AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_166CF2A:                   unk_53C1DA.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_166CF61:                   CVarUnk
  loc_166CF66:                   VerifyVarObj
  loc_166CF6C:                   Set var_8C = Me.DGItemCat
  loc_166CF72:                   LateIdStAd
  loc_166CF83:                   var_B0 = "DiscApp"
  loc_166CF92:                   var_8C = Me.Fields
  loc_166CF9A:                   var_90 = var_8C.Item(var_B0)
  loc_166CFAB:                   var_A0 = Proc_6_38_E68A98(CVar(var_90), var_8C, var_94, var_94)
  loc_166CFB1:                   global_120 = var_A0
  loc_166CFC1:                 Else
  loc_166CFC9:                   If (var_86 = CInt(1)) Then
  loc_166CFDF:                     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, Me.Txt)
  loc_166CFE7:                     global_72 = var_90.Text
  loc_166CFFE:                     If (var_A0 = vbNullString) Then
  loc_166D00E:                       Set var_8C = Me.Txt
  loc_166D014:                       Call 0.Method_Txt_Validate0 (Cancel, var_90, vbNullString)
  loc_166D01C:                       var_90.Tag = var_94
  loc_166D028:                       Exit Sub
  loc_166D029:                     End If
  loc_166D047:                     Set var_8C = Me.Txt
  loc_166D04D:                     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "Name like '")
  loc_166D055:                     0 = var_90.Text
  loc_166D06E:                     Me.Find 1 & var_A0 & "*'", var_B0, arg_10
  loc_166D0D1:                     Set var_8C = Me.Txt
  loc_166D0D7:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D0F7:                     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166D107:                       Set var_8C = Me.Txt
  loc_166D10D:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D115:                       var_90.Text = vbNullString
  loc_166D12E:                       Set var_8C = Me.Txt
  loc_166D134:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D13C:                       var_90.Tag = vbNullString
  loc_166D148:                       Exit Sub
  loc_166D149:                     End If
  loc_166D160:                     If (Me.AbsolutePosition > 0) Then
  loc_166D19E:                       Set var_94 = Me.Txt
  loc_166D1A4:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D1AC:                       var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166D1DF:                       var_90 = Me.Fields.Item("Code")
  loc_166D1FD:                       Set var_94 = Me.Txt
  loc_166D203:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D20B:                       var_98.Tag = CStr(var_90.Value)
  loc_166D221:                     End If
  loc_166D224:                   Else
  loc_166D22C:                     If Not (var_86 = CInt(4)) Then
  loc_166D237:                       If Not (var_86 = CInt(5)) Then
  loc_166D242:                         If (var_86 = CInt(&HC)) Then
  loc_166D245:                         End If
  loc_166D245:                       End If
  loc_166D24F:                       Set var_8C = Me.Txt
  loc_166D255:                       Call 0.Method_Txt_Validate0 (Cancel)
  loc_166D290:                       If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_166D2A0:                         Set var_8C = Me.Txt
  loc_166D2A6:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D2AE:                         var_90.Text = "Yes"
  loc_166D2BD:                       Else
  loc_166D2CA:                         Set var_8C = Me.Txt
  loc_166D2D0:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D2D8:                         var_90.Text = "No"
  loc_166D2E4:                       End If
  loc_166D2E7:                     Else
  loc_166D2EF:                       If (var_86 = CInt(&HE)) Then
  loc_166D2FC:                         Set var_8C = Me.Txt
  loc_166D302:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D321:                         var_100 = Ucase(Left(CVar(var_90), 1))
  loc_166D33D:                         If (var_100 = "N") Then
  loc_166D34D:                           Set var_8C = Me.Txt
  loc_166D353:                           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D35B:                           var_90.Text = "No"
  loc_166D36A:                         Else
  loc_166D377:                           Set var_8C = Me.Txt
  loc_166D37D:                           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D385:                           var_90.Text = "Yes"
  loc_166D391:                         End If
  loc_166D394:                       Else
  loc_166D39C:                         If (var_86 = CInt(&H11)) Then
  loc_166D3B7:                           Set var_90 = Me.ListView.SelectedItem
  loc_166D3BD:                           var_A0 = var_90.Text
  loc_166D3CF:                           Set var_94 = Me.Txt
  loc_166D3D5:                           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D3DD:                           var_98.Text = var_A0
  loc_166D3F6:                         Else
  loc_166D3FE:                           If (var_86 = CInt(&H12)) Then
  loc_166D44E:                             Set var_8C = Me.Txt
  loc_166D454:                             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0)
  loc_166D45C:                             ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) = var_90.Text
  loc_166D475:                             If (var_90 Or ((Me.RecordCount = 0) Or (var_A0 = vbNullString))) Then
  loc_166D485:                               Set var_8C = Me.Txt
  loc_166D48B:                               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D493:                               var_90.Text = vbNullString
  loc_166D4AC:                               Set var_8C = Me.Txt
  loc_166D4B2:                               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D4BA:                               var_90.Tag = vbNullString
  loc_166D4D3:                               Me.LblOutlet.Caption = "..."
  loc_166D4E8:                               Me.LblOutlet.Tag = vbNullString
  loc_166D4F3:                             Else
  loc_166D52E:                               Set var_94 = Me.Txt
  loc_166D534:                               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D53C:                               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166D58D:                               Set var_94 = Me.Txt
  loc_166D593:                               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D59B:                               var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_166D5EC:                               Me.LblOutlet.Caption = CStr(Me.Fields.Item("Outlet").Value)
  loc_166D62E:                               var_A0 = CStr(Me.Fields.Item("RestCode").Value)
  loc_166D63B:                               Me.LblOutlet.Tag = var_A0
  loc_166D64F:                             End If
  loc_166D64F:                           End If
  loc_166D64F:                         End If
  loc_166D64F:                       End If
  loc_166D64F:                     End If
  loc_166D64F:                   End If
  loc_166D64F:                 End If
  loc_166D64F:               End If
  loc_166D64F:             End If
  loc_166D64F:           End If
  loc_166D64F:         End If
  loc_166D64F:       End If
  loc_166D64F:     End If
  loc_166D64F:   End If
  loc_166D64F: End If
  loc_166D64F: Exit Sub
  loc_166D650: ' Referenced from: 166BF20
  loc_166D658: Set var_8C = Err()
  loc_166D65E: Call 0.Method_arg_2C (var_A0)
  loc_166D67F: MsgBox(CVar(var_A0), &H40, "Information", var_100, var_120)
  loc_166D692: Exit Sub
  loc_166D693: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F461A4
  'Data Table: 53C1AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4609B: Me.DGItemGroup.Visible = False
  loc_F460BA: If (Me.RecordCount > 0) Then
  loc_F460F9:   Set var_B4 = Me.Txt
  loc_F460FF:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F46107:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4613A:   var_B0 = Me.Fields.Item("Name")
  loc_F46159:   Set var_B4 = Me.Txt
  loc_F4615F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F46167:   var_B8.Text = CStr(var_B0.Value)
  loc_F4617D: End If
  loc_F46188: Set var_A8 = Me.Txt
  loc_F4618E: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2))
  loc_F46196: var_B0.SetFocus
  loc_F461A2: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E7019C
  'Data Table: 53C1AC
  loc_E7015A: Proc_6_153_E91194(Me.DGItemGroup, arg_14)
  loc_E70171: Set var_8C = Me.FGPoint
  loc_E7018D: Proc_6_138_106D6F8(Me.DGItemGroup, global_72, CInt(2))
  loc_E7019B: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_9 'F3ECC4
  'Data Table: 53C1AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3EBBB: Me.DGUnit.Visible = False
  loc_F3EBDA: If (Me.RecordCount > 0) Then
  loc_F3EC19:   Set var_B4 = Me.Txt
  loc_F3EC1F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3EC27:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3EC5A:   var_B0 = Me.Fields.Item("Name")
  loc_F3EC79:   Set var_B4 = Me.Txt
  loc_F3EC7F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3EC87:   var_B8.Text = CStr(var_B0.Value)
  loc_F3EC9D: End If
  loc_F3ECA8: Set var_A8 = Me.Txt
  loc_F3ECAE: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1))
  loc_F3ECB6: var_B0.SetFocus
  loc_F3ECC2: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_1F 'E70358
  'Data Table: 53C1AC
  loc_E70316: Proc_6_153_E91194(Me.DGUnit, arg_14)
  loc_E7032D: Set var_8C = Me.FGPoint
  loc_E70349: Proc_6_138_106D6F8(Me.DGUnit, global_84, CInt(1))
  loc_E70357: Exit Sub
End Sub

Private Sub Command2a_UnknownEvent_9 'E194D8
  'Data Table: 53C1AC
  loc_E194CC: Me.FrCopyConsumption.Visible = False
  loc_E194D4: Exit Sub
End Sub

Private Sub DGFinItem_UnknownEvent_9 'F453E4
  'Data Table: 53C1AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F452DB: Me.DGFinItem.Visible = False
  loc_F452FA: If (Me.RecordCount > 0) Then
  loc_F45339:   Set var_B4 = Me.Txt
  loc_F4533F:   Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H12), var_B8)
  loc_F45347:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4537A:   var_B0 = Me.Fields.Item("Name")
  loc_F45399:   Set var_B4 = Me.Txt
  loc_F4539F:   Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H12), var_B8)
  loc_F453A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F453BD: End If
  loc_F453C8: Set var_A8 = Me.Txt
  loc_F453CE: Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H12))
  loc_F453D6: var_B0.SetFocus
  loc_F453E2: Exit Sub
End Sub

Private Sub DGFinItem_UnknownEvent_1F 'E70514
  'Data Table: 53C1AC
  loc_E704D2: Proc_6_153_E91194(Me.DGFinItem, arg_14)
  loc_E704E9: Set var_8C = Me.FGPoint
  loc_E70505: Proc_6_138_106D6F8(Me.DGFinItem, global_88, CInt(&H12))
  loc_E70513: Exit Sub
End Sub

Private Sub CmdLabelPrint_UnknownEvent_9 '141DF70
  'Data Table: 53C1AC
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_C0 As String
  Dim var_18C As String
  Dim var_112 As Integer
  Dim var_D0 As Variant
  Dim var_9C As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim unk_53C1DA As Connection15
  Dim var_118 As Recordset15
  Dim var_198 As Recordset15
  Dim var_19C As Fields15
  Dim var_1A0 As Field20
  Dim var_1A2 As Integer
  loc_141D500: On Error Goto loc_141DF26
  loc_141D53F: If (Proc_6_38_E68A98(CVar(Me.Fields.Item("ActiveYN"))) = "No") Then
  loc_141D579:   If (MsgBox("Would U Wish to Print Non Active Item Labels", &H24, "Print Item Label", var_F0, var_110) = 7) Then
  loc_141D57C:     Exit Sub
  loc_141D57D:   End If
  loc_141D57D: End If
  loc_141D5AD: var_18C = InputBox(CVar("Enter Number Of Labels" & vbCrLf & "U Want to Print."), "Print Item Label", var_F0, var_110, var_148, var_168, var_188)
  loc_141D5B6: var_112 = CInt(Val(var_18C))
  loc_141D5D7: If (var_112 <= 0) Then
  loc_141D5DA:   Exit Sub
  loc_141D5DB: End If
  loc_141D5E2: var_D0 = CVar(var_134 & " And I.Code+I.RestCode='") 'String
  loc_141D5FA: var_88 = Me.Fields
  loc_141D60A: var_AC = var_88.Item("Code").Value
  loc_141D649: var_D0 = CVar("SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate, IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, " & " REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(ItemRate.Party,'')='' left Join TaxStru T On IC.TaxStru=T.Code Left Join Depart K on K.Code=I.Kitchen Inner Join (Select ItemCode,RestCode,Max(AppDate) As MaxDate from itemrate Where AppDate<=") 'String
  loc_141D657: Proc_6_7_F25D88(var_AC, MemVar_1F920EC, var_D0, var_188)
  loc_141D65F: var_F0 = -1 & var_AC 
  loc_141D663: var_C0 = " And IsNull(Party,'')='' Group by ItemCode,RestCode) Q On I.Code=Q.ItemCode And I.RestCode=Q.RestCode Where Q.MaxDate=ItemRate.AppDate And IG.Type IN ('Finish','Semi Finish') "
  loc_141D668: var_110 = "Print Item Label" & var_AC & var_C0 
  loc_141D689: unk_53C1DA.Execute CStr(var_110 & CVar(CStr("Print Item Label" & var_AC & "'")) & " And I.DispCode<>9999 order by I.Name"), var_88, var_112
  loc_141D694: Set var_118 = var_88
  loc_141D6B4: var_190 = var_118.RecordCount
  loc_141D6C2: If (var_190 <> 1) Then
  loc_141D6D3:   var_98 = "Related Record Not Exists"
  loc_141D6DE:   MsgBox(var_98, 0, var_D0, "Print Item Label" & var_98, var_110)
  loc_141D6EE:   Exit Sub
  loc_141D6EF: End If
  loc_141D6FC: Call Proc_44_49_1067CE8(New)
  loc_141D704: Set var_11C = var_88
  loc_141D70F: For var_194 = 1 To var_112: var_12E = var_194 'Integer
  loc_141D718:   Set var_198 = var_11C 
  loc_141D727:   var_198.AddNew var_98, var_C0
  loc_141D777:   var_198.Fields.Item("Code").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Code")), 1))
  loc_141D7D7:   var_198.Fields.Item("Item").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Name"))))
  loc_141D837:   var_198.Fields.Item("Unit").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("Unit"))))
  loc_141D89B:   var_198.Fields.Item("DispCode").Value = CVar(CStr(var_118.Fields.Item("DispCode").Value))
  loc_141D8FD:   var_198.Fields.Item("BarCode").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("BarCode"))))
  loc_141D94D:   var_F0 = Format(CVar(var_118.Fields.Item("SaleRate")), "0.00")
  loc_141D959:   var_E0 = "Rate"
  loc_141D975:   var_198.Fields.Item(var_E0).Value = var_F0
  loc_141D9D7:   var_198.Fields.Item("LblName").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("LabelName")), 1))
  loc_141DA37:   var_198.Fields.Item("LblQty").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("LabelQty")), 1))
  loc_141DA97:   var_198.Fields.Item("LblRem1").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("LabelRemark1"))))
  loc_141DAF7:   var_198.Fields.Item("LblRem2").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("LabelRemark2"))))
  loc_141DB57:   var_198.Fields.Item("LblRem3").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("LabelRemark3"))))
  loc_141DBB7:   var_198.Fields.Item("LblRem4").Value = CVar(Proc_6_38_E68A98(CVar(var_118.Fields.Item("LabelRemark4"))))
  loc_141DBCF:   var_98 = "LabelRemark5"
  loc_141DBE3:   var_9C = var_118.Fields.Item(var_98)
  loc_141DBFB:   var_C0 = "LblRem5"
  loc_141DC07:   var_19C = var_198.Fields
  loc_141DC0F:   var_1A0 = var_19C.Item(var_C0)
  loc_141DC17:   var_1A0.Value = CVar(Proc_6_38_E68A98(CVar(var_9C)))
  loc_141DC37:   var_198.Update var_98, var_C0
  loc_141DC3E:   Set var_198 = Nothing 
  loc_141DC45: Next var_194 'Integer
  loc_141DC60: Set var_88 = var_11C 
  loc_141DC6C: var_1A2 = CreateFieldDefFile(var_88, MemVar_1F920B4 & "\ItemLabelFinish.ttx")
  loc_141DC76: Set var_11C = var_88
  loc_141DC7C: var_98 = CVar(var_1A2) 'Integer
  loc_141DC7F: var_12C = var_98 'Variant
  loc_141DC9B: var_B0 = MemVar_1F920B4 & "\ItemLabelFinish.RPT"
  loc_141DCA4: Call 0.Method_arg_1C (var_B0, var_98, var_88)
  loc_141DCAF: MemVar_1F921E4 = var_88
  loc_141DCCA: Call 0.Method_arg_90 (var_88, var_190, var_12E)
  loc_141DCD2: Call 0.Method_arg_24 (1, var_1A2)
  loc_141DCDE: For var_1A6 =  To CInt(var_190): &HFF = var_1A6 'Integer
  loc_141DCF7:   Call 0.Method_arg_90 (var_88, CLng(var_12E))
  loc_141DCFF:   Call 0.Method_arg_20 (var_9C)
  loc_141DD07:   Call 0.Method_arg_30 (var_B0)
  loc_141DD1D:   var_1B8 = Ucase(CVar(var_B0)) 'Variant
  loc_141DD4D:   If (var_1B8 = Ucase("Title")) Then
  loc_141DD63:     Call 0.Method_arg_90 (var_88, CLng(var_12E))
  loc_141DD6B:     Call 0.Method_arg_20 (var_9C)
  loc_141DD73:     Call 0.Method_arg_38 ("'Menu Item Entry'")
  loc_141DD82:   Else
  loc_141DDA4:     If (var_1B8 = Ucase("RestName")) Then
  loc_141DDB8:       Set var_88 = Me.Txt
  loc_141DDBE:       Call 0.Method_CmdLabelPrint_UnknownEvent_90 (CInt(&HB), var_9C)
  loc_141DDCF:       var_18C = "'" & var_9C.Text
  loc_141DDE9:       Call 0.Method_arg_90 (var_19C, CLng(var_12E))
  loc_141DDF1:       Call 0.Method_arg_20 (var_1A0)
  loc_141DDF9:       Call 0.Method_arg_38 (var_18C & "'")
  loc_141DE15:     Else
  loc_141DE26:       var_D0 = Ucase("LogDate")
  loc_141DE37:       If (var_1B8 = var_D0) Then
  loc_141DE3E:         Set var_88 = Me.DTP
  loc_141DE4E:         Proc_6_7_F25D88(var_D0)
  loc_141DE56:         var_B0 = CStr(var_D0)
  loc_141DE6A:         Call 0.Method_arg_90 (var_9C, CLng(var_12E), var_19C)
  loc_141DE72:         Call 0.Method_arg_20 (var_B0)
  loc_141DE7A:         Call 0.Method_arg_38 (var_88.Value)
  loc_141DE92:       End If
  loc_141DE92:     End If
  loc_141DE92:   End If
  loc_141DE95: Next var_1A6 'Integer
  loc_141DEB3: Call 0.Method_arg_64 (var_88, CVar(var_11C))
  loc_141DEBB: Call 0.Method_arg_2C (var_C0)
  loc_141DEC9: Call 0.Method_arg_150 (var_E0)
  loc_141DED4: Call 0.Method_arg_50 (var_B0)
  loc_141DEDE: Set var_9C = Nothing
  loc_141DEF8: Set var_88 = MemVar_1F921E4 
  loc_141DF04: Proc_6_99_1483714(var_88, 0, var_B0)
  loc_141DF0F: MemVar_1F921E4 = var_88
  loc_141DF22: Set var_118 = Nothing
  loc_141DF25: Exit Sub
  loc_141DF26: ' Referenced from: 141D500
  loc_141DF2E: Set var_88 = Err()
  loc_141DF34: Call 0.Method_arg_2C (var_B0, &HFF)
  loc_141DF3F: Call 0.Method_arg_50 (var_18C)
  loc_141DF5B: MsgBox(CVar(var_B0), &H10, CVar(var_18C), var_F0, var_110)
  loc_141DF6E: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9E35C
  'Data Table: 53C1AC
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9E1FF: Me.DGRest.Visible = False
  loc_F9E21E: If (Me.RecordCount > 0) Then
  loc_F9E270:   Set var_CC = Me.Txt
  loc_F9E276:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9E27E:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9E2D6:   Set var_B4 = Me.DGRest
  loc_F9E2ED:   Set var_CC = Me.Txt
  loc_F9E2F3:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9E2FB:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9E31B: End If
  loc_F9E339: Set var_B0 = Me.Txt
  loc_F9E33F: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9E347: var_B4.SetFocus
  loc_F9E35B: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9C1C8
  'Data Table: 53C1AC
  loc_E9C166: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E9C190: Set var_A8 = Me.FGPoint
  loc_E9C1B1: Proc_6_138_106D6F8(Me.DGRest, global_76, CInt(CStr(Me.DGRest.Tag)))
  loc_E9C1C7: Exit Sub
End Sub

Private Sub CmdSaveConsumption_UnknownEvent_9 '133800C
  'Data Table: 53C1AC
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_D8 As Label
  Dim var_EC As Variant
  Dim var_10C As String
  Dim var_DC As String
  Dim unk_53C1DA As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Fields15
  Dim var_FC As Variant
  Dim var_160 As TextBox
  Dim var_3F8 As Variant
  Dim var_6F8 As TextBox
  Dim var_728 As Variant
  loc_13379D2: Set var_8C = Me.Txt
  loc_13379D8: Call 0.Method_CmdSaveConsumption_UnknownEvent_90 (CInt(&H12), var_90)
  loc_13379E0: var_94 = var_90.Tag
  loc_1337A15: var_EC = CVar(Me.LblOutlet.Tag) 'String
  loc_1337A47: If CBool((Trim(CVar(var_94)) = vbNullString) Or (Trim(var_EC) = vbNullString)) Then
  loc_1337A6B:   MsgBox("No Item Selected to Copy Consumption.", &H10, "Copy Conumption", var_D4, var_EC)
  loc_1337A7B:   Exit Sub
  loc_1337A7C: End If
  loc_1337A9A: Set var_8C = Me.Txt
  loc_1337AA0: Call 0.Method_CmdSaveConsumption_UnknownEvent_90 (CInt(&H12), var_90, var_94, "Select * From BOM Where FinItem='")
  loc_1337AA8: var_A4 = var_90.Tag
  loc_1337AB1: var_DC = -1 & var_94
  loc_1337AE1: unk_53C1DA.Execute Me.LblOutlet.Tag & "' And RestCode='" & Me.LblOutlet.Tag & "' Order By RawSno", var_160, 
  loc_1337AEC: Set var_88 = var_160
  loc_1337B12: var_164 = var_88.RecordCount
  loc_1337B20: If (var_164 > 0) Then
  loc_1337B2C:   unk_53C1DA.BeginTrans var_164
  loc_1337B31:   ' Referenced from: 1337FD3
  loc_1337B40:   If Not(var_88.EOF) Then
  loc_1337B50:     var_10C = "Insert Into BOM (Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,U_Name,U_EntDt,U_AE,Waste,Cost,Total,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values("
  loc_1337B83:     Proc_6_17_EAA2B0(var_D4, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Site_Code")), var_10C, var_768)))
  loc_1337B8B:     var_EC = -1 & var_D4 
  loc_1337B94:     var_FC = var_EC & "," 
  loc_1337BA6:     Set var_D8 = Me.Txt
  loc_1337BAC:     Call 0.Method_CmdSaveConsumption_UnknownEvent_90 (CInt(0), var_160, var_94)
  loc_1337BB4:     var_FC = var_160.Tag
  loc_1337BCA:     Proc_6_17_EAA2B0(var_178, CVar(Proc_6_38_E68A98(CVar(var_94))))
  loc_1337C05:     Proc_6_39_E7C810(var_1D0, CVar(var_88.Fields.Item("FinQty")))
  loc_1337C48:     Proc_6_17_EAA2B0(var_248, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RawItem")))))
  loc_1337C83:     Proc_6_39_E7C810(var_2B0, CVar(var_88.Fields.Item("RawQty")))
  loc_1337CBE:     Proc_6_39_E7C810(var_318, CVar(var_88.Fields.Item("RawSno")))
  loc_1337CE6:     Proc_6_17_EAA2B0(var_378, CVar(Proc_6_38_E68A98(MemVar_1F920C8)))
  loc_1337D06:     Proc_6_7_F25D88(var_3C8, MemVar_1F920EC)
  loc_1337D17:     var_3F8 = var_76C & var_178 & "," & var_1D0 & "," & var_248 & "," & var_2B0 & "," & var_318 & "," & var_378 & "," & var_3C8 & ",'A'," 
  loc_1337D41:     Proc_6_39_E7C810(var_430, CVar(var_88.Fields.Item("Waste")))
  loc_1337D7C:     Proc_6_39_E7C810(var_498, CVar(var_88.Fields.Item("Cost")))
  loc_1337DB7:     Proc_6_39_E7C810(var_500, CVar(var_88.Fields.Item("Total")))
  loc_1337DF2:     Proc_6_39_E7C810(var_568, CVar(var_88.Fields.Item("SavedForQty")))
  loc_1337E2D:     Proc_6_7_F25D88(var_5D0, CVar(var_88.Fields.Item("AppDate")))
  loc_1337E70:     Proc_6_17_EAA2B0(var_648, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("WtUnit")))))
  loc_1337EB3:     Proc_6_17_EAA2B0(var_6C0, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("LogSite_Code")))))
  loc_1337ED6:     Set var_6F4 = Me.Txt
  loc_1337EDC:     Call 0.Method_CmdSaveConsumption_UnknownEvent_90 (CInt(8), var_6F8)
  loc_1337EF2:     Proc_6_17_EAA2B0(var_718, CVar(var_6F8.Tag))
  loc_1337EFA:     var_728 = var_3F8 & var_430 & "," & var_498 & "," & var_500 & "," & var_568 & "," & var_5D0 & "," & var_648 & "," & var_6C0 & "," & var_718 
  loc_1337F11:     unk_53C1DA.Execute CStr(var_728 & ")"), , 
  loc_1337FCE:     var_88.MoveNext
  loc_1337FD3:     GoTo loc_1337B31
  loc_1337FD6:   End If
  loc_1337FDC:   unk_53C1DA.CommitTrans
  loc_1337FE1: End If
  loc_1337FE1: Call Proc_44_52_160A820()
  loc_1338002: Proc_5_0_110649C(&HFF, Me)
  loc_133800A: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F39A44
  'Data Table: 53C1AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3993B: Me.DGHelp.Visible = False
  loc_F3995A: If (Me.RecordCount > 0) Then
  loc_F39999:   Set var_B4 = Me.Txt
  loc_F3999F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F399A7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F399DA:   var_B0 = Me.Fields.Item("Name")
  loc_F399F9:   Set var_B4 = Me.Txt
  loc_F399FF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F39A07:   var_B8.Text = CStr(var_B0.Value)
  loc_F39A1D: End If
  loc_F39A28: Set var_A8 = Me.Txt
  loc_F39A2E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F39A36: var_B0.SetFocus
  loc_F39A42: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6FF4C
  'Data Table: 53C1AC
  loc_E6FF0A: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6FF21: Set var_8C = Me.FGPoint
  loc_E6FF3D: Proc_6_138_106D6F8(Me.DGHelp, global_68, CInt(0))
  loc_E6FF4B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF92F4
  'Data Table: 53C1AC
  loc_EF9234: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_EF9237:   Call DGUnit_UnknownEvent_9()
  loc_EF923C: End If
  loc_EF9258: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF925B:   Call DGHelp_UnknownEvent_9()
  loc_EF9260: End If
  loc_EF927C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF927F:   Call DGRest_UnknownEvent_9()
  loc_EF9284: End If
  loc_EF92A0: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF92A3:   Call DGItemCat_UnknownEvent_9()
  loc_EF92A8: End If
  loc_EF92C4: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF92C7:   Call DGItemGroup_UnknownEvent_9()
  loc_EF92CC: End If
  loc_EF92E8: If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_EF92EB:   Call DGFinItem_UnknownEvent_9()
  loc_EF92F0: End If
  loc_EF92F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1096F54
  'Data Table: 53C1AC
  Dim var_88 As Variant
  Dim var_90 As TextBox
  loc_1096CA0: On Error Goto loc_1096F0F
  loc_1096CB0: Me.LblUser.Caption = vbNullString
  loc_1096CC5: Me.LblLDt.Caption = vbNullString
  loc_1096CCD: Call Proc_44_51_F5F3F8()
  loc_1096CED: If (Me.Check1.Value = 1) Then
  loc_1096CF0:   Call Proc_44_52_160A820()
  loc_1096CF5: End If
  loc_1096D03: Set var_88 = Me.Txt
  loc_1096D09: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_90)
  loc_1096D11: var_90.Text = vbNullString
  loc_1096D2B: Set var_88 = Me.Txt
  loc_1096D31: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H13), var_90)
  loc_1096D39: var_90.Text = vbNullString
  loc_1096D53: Set var_88 = Me.Txt
  loc_1096D59: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1C), var_90)
  loc_1096D61: var_90.Text = vbNullString
  loc_1096D7B: Set var_88 = Me.Txt
  loc_1096D81: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_1096D89: var_90.Text = vbNullString
  loc_1096DA3: Set var_88 = Me.Txt
  loc_1096DA9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_1096DB1: var_90.Tag = vbNullString
  loc_1096DCB: Set var_88 = Me.Txt
  loc_1096DD1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_90)
  loc_1096DD9: var_90.Text = vbNullString
  loc_1096DF3: Set var_88 = Me.Txt
  loc_1096DF9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1B), var_90)
  loc_1096E01: var_90.Text = vbNullString
  loc_1096E1B: Set var_88 = Me.Txt
  loc_1096E21: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H11), var_90)
  loc_1096E29: var_90.Text = "Other"
  loc_1096E43: Set var_88 = Me.Txt
  loc_1096E49: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HE), var_90)
  loc_1096E80: Call Proc_44_50_FB3BA0(Proc_5_1_100CB50("ADD", Me))
  loc_1096E99: Set var_88 = Me.Txt
  loc_1096E9F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_90)
  loc_1096EA7: var_94 = "Yes"
  loc_1096EBE: If (var_94 = vbNullString) Then
  loc_1096ECC:   Set var_88 = Me.Txt
  loc_1096ED2:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_90)
  loc_1096EDA:   var_90.SetFocus
  loc_1096EE9: Else
  loc_1096EF4:   Set var_88 = Me.Txt
  loc_1096EFA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_1096F02:   var_90.SetFocus
  loc_1096F0E: End If
  loc_1096F0E: Exit Sub
  loc_1096F0F: ' Referenced from: 1096CA0
  loc_1096F17: Set var_88 = Err()
  loc_1096F1D: Call 0.Method_arg_2C (var_94)
  loc_1096F3E: MsgBox(CVar(var_94), &H40, "Information", var_E4, var_104)
  loc_1096F51: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBCE70
  'Data Table: 53C1AC
  loc_EBCDDC: On Error Goto loc_EBCE67
  loc_EBCE16: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBCE25:   Set var_110 = Me
  loc_EBCE3C:   Call Proc_44_50_FB3BA0(Proc_5_1_100CB50("INI", var_110))
  loc_EBCE47:   Call Proc_44_52_160A820(global_64)
  loc_EBCE4F: Else
  loc_EBCE55:   Call 0.Method_arg_1E8 (var_110)
  loc_EBCE5D:   Call var_110.SetFocus
  loc_EBCE66: End If
  loc_EBCE66: Exit Sub
  loc_EBCE67: ' Referenced from: EBCDDC
  loc_EBCE67: Proc_6_60_E62BC4()
  loc_EBCE6C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '118FDCC
  'Data Table: 53C1AC
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_E8 As String
  Dim var_96 As Integer
  Dim unk_53C1DA As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_118F9EC: On Error Goto loc_118FD72
  loc_118F9FD: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_118FA00:   Exit Sub
  loc_118FA01: End If
  loc_118FA33: var_D4 = "KOT"
  loc_118FA4C: var_B8 = "ITEM+ITEMRESTCODE"
  loc_118FA7B: If (Proc_6_108_1010FEC(MemVar_1F92044, "KOT", var_B8, CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_118FA7E:   Exit Sub
  loc_118FA7F: End If
  loc_118FAB1: var_D4 = "STOCK"
  loc_118FACA: var_B8 = "ITEM+ITEMRESTCODE"
  loc_118FAF9: If (Proc_6_108_1010FEC(MemVar_1F92044, "STOCK", var_B8, CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_118FAFC:   Exit Sub
  loc_118FAFD: End If
  loc_118FB2F: var_D4 = "Consumption"
  loc_118FB48: var_B8 = "FINITEM+RESTCODE"
  loc_118FB77: If (Proc_6_108_1010FEC(MemVar_1F92044, "BOM", var_B8, CStr(Me.Fields.Item("Code").Value), 0, var_D4) = 0) Then
  loc_118FB7A:   Exit Sub
  loc_118FB7B: End If
  loc_118FBB2: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_118FBB7:   var_96 = 0
  loc_118FBC3:   unk_53C1DA.BeginTrans var_D0
  loc_118FBCA:   var_96 = &HFF
  loc_118FBDE:   var_94 = Me.Bookmark 'Variant
  loc_118FBEF:   var_E8 = "Delete From ItemMast Where Code+RestCode='"
  loc_118FC38:   unk_53C1DA.Execute CStr("Confirmation" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_118FC61:   var_E8 = "Delete From ItemRate Where ItemCode+RestCode='"
  loc_118FC9C:   var_118 = "Confirmation" & Me.Fields.Item("Code").Value & "'" 
  loc_118FCA0:   var_B4 = CStr(var_118)
  loc_118FCAA:   unk_53C1DA.Execute var_B4, var_138, -1
  loc_118FCCC:   unk_53C1DA.CommitTrans
  loc_118FCD3:   var_96 = 0
  loc_118FCE1:   Me.Requery -1
  loc_118FCF1:   Me.Requery -1
  loc_118FD11:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_118FD1E:     Me.Bookmark = var_94
  loc_118FD26:   Else
  loc_118FD3A:     If (Me.EOF = 0) Then
  loc_118FD43:       Me.MoveLast
  loc_118FD48:     End If
  loc_118FD48:   End If
  loc_118FD48:   Call Proc_44_52_160A820(var_96, var_13C, var_13C, var_96, var_96)
  loc_118FD69:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_118FD71: End If
  loc_118FD71: Exit Sub
  loc_118FD72: ' Referenced from: 118F9EC
  loc_118FD78: If (var_96 = &HFF) Then
  loc_118FD81:   unk_53C1DA.RollbackTrans
  loc_118FD86: End If
  loc_118FD8E: Set var_9C = Err()
  loc_118FD94: Call 0.Method_arg_2C (var_B4, 0, var_D4)
  loc_118FDB5: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_118FDC8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FDBFA8
  'Data Table: 53C1AC
  Dim Me As Variant
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FDBDD8: On Error Goto loc_FDBF64
  loc_FDBDE9: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_FDBDEC:   Exit Sub
  loc_FDBDED: End If
  loc_FDBE04: If (Me.RecordCount > 0) Then
  loc_FDBE2A:   Call Proc_44_50_FB3BA0(Proc_5_1_100CB50("EDIT", Me))
  loc_FDBE43:   Set var_90 = Me.Txt
  loc_FDBE49:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_98)
  loc_FDBE51:   var_8C = var_98.Text
  loc_FDBE78:   Set var_90 = Me.Txt
  loc_FDBE7E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_98, 0)
  loc_FDBE86:   var_98.Enabled = CInt(var_8C)
  loc_FDBE9F:   Set var_90 = Me.Txt
  loc_FDBEA5:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_98)
  loc_FDBEAD:   var_98.Enabled = False
  loc_FDBEC6:   Set var_90 = Me.Txt
  loc_FDBECC:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FDBED4:   var_98.Enabled = False
  loc_FDBEEB:   Set var_90 = Me.Txt
  loc_FDBEF1:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FDBEF9:   var_98.SetFocus
  loc_FDBF08: Else
  loc_FDBF29:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FDBF39: End If
  loc_FDBF46: Me.LblUser.Caption = vbNullString
  loc_FDBF5B: Me.LblLDt.Caption = vbNullString
  loc_FDBF63: Exit Sub
  loc_FDBF64: ' Referenced from: FDBDD8
  loc_FDBF6C: Set var_90 = Err()
  loc_FDBF72: Call 0.Method_arg_2C (var_8C)
  loc_FDBF93: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FDBFA6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18EE8
  'Data Table: 53C1AC
  loc_E18EDD: Me.Global.Unload Me
  loc_E18EE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FA6894
  'Data Table: 53C1AC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_154 As Variant
  Dim var_A8 As Variant
  loc_FA671C: On Error Goto loc_FA682E
  loc_FA6728: var_88 = Me.RecordCount
  loc_FA6736: If (var_88 <= 0) Then
  loc_FA6754:   var_A8 = "Records Not Present For Searching."
  loc_FA675A:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_FA676A:   Exit Sub
  loc_FA676B: End If
  loc_FA6776: If (global_52 = "Banquet") Then
  loc_FA6780:   var_10C = "SELECT I.Code as SearchCode,I.Name,I.Unit,convert(varchar(8),I.Dispcode,103),convert(varchar(50),I.SaleRate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Where I.LOGSITE_CODE IN ('HO','" & MemVar_1F92078
  loc_FA6795:   MemVar_1F920E4 = var_10C & "') AND I.RestCode='" & MemVar_1F92078 & "BANQ' and IG.Type IN ('Finish')  And I.DispCode<>9999 Order by I.Name"
  loc_FA67A5: Else
  loc_FA67A5:   var_B8 = "SELECT I.Code+I.RestCode as SearchCode,I.Name,I.CommodityCode HSNCode,I.Unit,IG.Name as ItemGrpName,IC.Name As ItemCategory,convert(varchar(8),I.Dispcode,103) as Disp,Depart.Name as Restaurant,Rate=convert(varchar(50),R.Rate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,Active=I.ActiveYN,Kitchen=D.Name,Type=I.NType FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)  left join depart on I.restcode=depart.code left join depart D on I.Kitchen=D.code left join (Select itemcode,RestCode,Rate from itemrate inner join (Select ItemCode Itemcode1,RestCode RestCode1,Max(Appdate) as Appdate1 From ItemRate Where AppDate<="
  loc_FA67B5:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_FA67C1:   var_D8 = " And IsNull(Party,'')='' Group By ItemCode,RestCode) Q On Appdate=Q.Appdate1 And itemcode=Q.itemcode1 And RestCode=Q.RestCode1)R on I.code=R.Itemcode And I.RestCode=R.RestCode "
  loc_FA67C6:   var_E8 = "Information" & var_A8 & var_D8 
  loc_FA67CF:   var_108 = var_E8 & " Where I.LOGSITE_CODE IN ('HO','" 
  loc_FA67E2:   var_154 = var_108 & CVar(MemVar_1F92078) & "') AND Depart.RestType<>'Banquet' And I.ItemType<>'Store' And I.DispCode<>9999 Order by I.Name" 
  loc_FA67E7:   MemVar_1F920E4 = CStr(var_154)
  loc_FA67FA: End If
  loc_FA67FD: var_10C = "3000,1500,800,2500,2500,500,2000,500,600,600,500,1800,1800"
  loc_FA6803: Proc_6_126_F1BCC0(var_10C, MemVar_1F920E4)
  loc_FA6811: MemVar_1F92120 = Me
  loc_FA6828: Call 0.Method_arg_2B0 (1, "Information")
  loc_FA682D: Exit Sub
  loc_FA682E: ' Referenced from: FA671C
  loc_FA6836: Set var_158 = Err()
  loc_FA683C: Call 0.Method_arg_1C (var_88)
  loc_FA684D: If (var_88 <> 0) Then
  loc_FA6858:   Set var_158 = Err()
  loc_FA685E:   Call 0.Method_arg_2C (var_10C)
  loc_FA687F:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_FA6892: End If
  loc_FA6892: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33438
  'Data Table: 53C1AC
  loc_E33428: Proc_5_0_110649C(&HFF, Me)
  loc_E33430: Call Proc_44_52_160A820(global_64)
  loc_E33435: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33318
  'Data Table: 53C1AC
  loc_E33308: Proc_5_0_110649C(&HFF, Me)
  loc_E33310: Call Proc_44_52_160A820(global_64)
  loc_E33315: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33378
  'Data Table: 53C1AC
  loc_E33368: Proc_5_0_110649C(&HFF, Me)
  loc_E33370: Call Proc_44_52_160A820(global_64)
  loc_E33375: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E333D8
  'Data Table: 53C1AC
  loc_E333C8: Proc_5_0_110649C(&HFF, Me)
  loc_E333D0: Call Proc_44_52_160A820(global_64)
  loc_E333D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'EB2674
  'Data Table: 53C1AC
  Dim var_90 As Variant
  Dim var_88 As Variant
  loc_EB25E3: Set var_90 = Me.LblFormCaption
  loc_EB2612: Me.Frame1.Top = (Me.LblFormCaption.Top + var_90.Height)
  loc_EB262F: Me.Frame1.Left = CDbl(900)
  loc_EB2643: Me.Frame1.Visible = True
  loc_EB2656: Set var_88 = Me.Txt
  loc_EB265C: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB))
  loc_EB2664: var_90.SetFocus
  loc_EB2670: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E63938
  'Data Table: 53C1AC
  Dim Me As Recordset15
  loc_E638EF: Me.Requery -1
  loc_E638FF: Me.Requery -1
  loc_E6390F: Me.Requery -1
  loc_E6391F: Me.Requery -1
  loc_E6392F: Me.Requery -1
  loc_E63934: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16F1094
  'Data Table: 53C1AC
  Dim var_C0 As TextBox
  Dim var_CC As Double
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_FC As Variant
  Dim var_DC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim unk_53C1DA As Connection15
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_B8 As String
  Dim var_8C As Recordset15
  Dim var_EC As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_1F8 As TextBox
  Dim var_20C As TextBox
  Dim var_220 As TextBox
  Dim var_304 As TextBox
  Dim var_4C0 As TextBox
  Dim var_50C As TextBox
  Dim var_558 As TextBox
  Dim var_5A4 As TextBox
  Dim var_600 As Variant
  Dim var_760 As Variant
  Dim var_1D4 As String
  Dim var_1EC As String
  Dim var_218 As String
  Dim var_1D0 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_2AC As Variant
  Dim var_3A8 As Variant
  Dim var_400 As Variant
  Dim var_478 As Variant
  Dim var_530 As Variant
  Dim var_57C As Variant
  Dim var_5E8 As Variant
  Dim var_640 As Variant
  Dim var_698 As Variant
  Dim var_6F0 As Variant
  Dim var_748 As Variant
  Dim var_7A0 As Variant
  Dim var_830 As Variant
  Dim var_850 As Variant
  Dim var_880 As Double
  Dim var_1FC As String
  Dim var_29C As Variant
  Dim var_7A8 As TextBox
  Dim var_610 As Variant
  Dim var_668 As Variant
  Dim var_6C0 As Variant
  Dim var_718 As Variant
  Dim var_770 As Variant
  Dim var_7C8 As Variant
  Dim var_820 As Variant
  Dim var_C4 As String
  Dim var_A8 As Recordset15
  Dim var_BC As Field20
  loc_16EF7A4: On Error Goto loc_16F103F
  loc_16EF7AB: var_86 = CByte(0) 'Byte
  loc_16EF7BA: Set var_A0 = Me.Txt
  loc_16EF7C0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16EF7E9: If (Proc_183_19_E8DAFC(var_A4, "Name") = 0) Then
  loc_16EF7F3:   Call Txt_GotFocus(CInt(0))
  loc_16EF7F8:   Exit Sub
  loc_16EF7F9: End If
  loc_16EF804: Set var_A0 = Me.Txt
  loc_16EF80A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_16EF833: If (Proc_183_19_E8DAFC(var_A4, "Unit") = 0) Then
  loc_16EF83D:   Call Txt_GotFocus(CInt(1))
  loc_16EF842:   Exit Sub
  loc_16EF843: End If
  loc_16EF84E: Set var_A0 = Me.Txt
  loc_16EF854: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_16EF87D: If (Proc_183_19_E8DAFC(var_A4, "Item Group Name") = 0) Then
  loc_16EF887:   Call Txt_GotFocus(CInt(2))
  loc_16EF88C:   Exit Sub
  loc_16EF88D: End If
  loc_16EF898: Set var_A0 = Me.Txt
  loc_16EF89E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_A4)
  loc_16EF8C7: If (Proc_183_19_E8DAFC(var_A4, "Item Category") = 0) Then
  loc_16EF8D1:   Call Txt_GotFocus(CInt(6))
  loc_16EF8D6:   Exit Sub
  loc_16EF8D7: End If
  loc_16EF8E2: Set var_A0 = Me.Txt
  loc_16EF8E8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4)
  loc_16EF911: If (Proc_183_19_E8DAFC(var_A4, "Restaurant") = 0) Then
  loc_16EF91B:   Call Txt_GotFocus(CInt(8))
  loc_16EF920:   Exit Sub
  loc_16EF921: End If
  loc_16EF92C: Set var_A0 = Me.Txt
  loc_16EF932: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_16EF95B: If (Proc_183_19_E8DAFC(var_A4, "Kitchen") = 0) Then
  loc_16EF965:   Call Txt_GotFocus(CInt(3))
  loc_16EF96A:   Exit Sub
  loc_16EF96B: End If
  loc_16EF976: Set var_A0 = Me.Txt
  loc_16EF97C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A4)
  loc_16EF984: var_AC = "Service Charge"
  loc_16EF9A5: If (Proc_183_19_E8DAFC(var_A4, var_AC) = 0) Then
  loc_16EF9AF:   Call Txt_GotFocus(CInt(&HC))
  loc_16EF9B4:   Exit Sub
  loc_16EF9B5: End If
  loc_16EF9C3: Set var_BC = Me.Txt
  loc_16EF9C9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_C0)
  loc_16EF9DE: var_CC = Val(var_C0.Text)
  loc_16EF9EF: Set var_A0 = Me.Txt
  loc_16EF9F5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_A4, var_AC)
  loc_16EFA1D: Set var_A8 = Me.Txt
  loc_16EFA23: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B4, var_B8)
  loc_16EFA2B: (CDbl(Val(var_AC)) <> CDbl(0)) = var_B4.Text
  loc_16EFA57: If (var_A4 And (CDbl(Val(var_B8)) > CDbl(var_A4.Text))) Then
  loc_16EFA60:   Call 0.Method_arg_50 (var_AC)
  loc_16EFA81:   MsgBox("Sale Rate Greater than M.R.P.", &H10, CVar(var_AC), var_11C, var_13C)
  loc_16EFA9C:   Set var_A0 = Me.Txt
  loc_16EFAA2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7))
  loc_16EFAAA:   var_A4.SetFocus
  loc_16EFAB6:   Exit Sub
  loc_16EFAB7: End If
  loc_16EFABA: Call Proc_44_53_12F277C(var_AE)
  loc_16EFAC5: If (var_AE = &HFF) Then
  loc_16EFAC8:   Exit Sub
  loc_16EFAC9: End If
  loc_16EFACD: Set var_A0 = Me.TopCtrl1
  loc_16EFAD3: Call {DEE1AD8B-D1A7-407D-9EB73F75665FA3BF}.DispID_68030005(var_A4)
  loc_16EFAEC: If (CStr() = "Add") Then
  loc_16EFAFD:   Set var_A0 = Me.Txt
  loc_16EFB03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_16EFB16:   global_128 = var_A4.Tag
  loc_16EFB27: Else
  loc_16EFB44:   var_A4 = Me.Fields.Item("ItemCode")
  loc_16EFB4C:   var_EC = var_A4.Value
  loc_16EFB55:   var_AC = CStr(var_EC)
  loc_16EFB5B:   global_128 = var_AC
  loc_16EFB6C: End If
  loc_16EFB75: unk_53C1DA.BeginTrans var_140
  loc_16EFB7E: var_86 = CByte(1) 'Byte
  loc_16EFB9F: Proc_6_7_F25D88(var_EC, MemVar_1F920EC, "Select Rate,MRP,Appdate From ItemRate Where AppDate<=")
  loc_16EFBC6: var_170 = var_1D0 & var_EC & " And ItemCode='" & CVar(global_128) & "' And RestCode='" 
  loc_16EFBD8: Set var_A0 = Me.Txt
  loc_16EFBDE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4, var_AC)
  loc_16EFBE6: var_170 = var_A4.Tag
  loc_16EFBF1: var_190 = -1 & CVar(var_AC) 
  loc_16EFC08: unk_53C1DA.Execute CStr(var_190 & "' And IsNull(Party,'')='' Order By AppDate Desc "), var_A8, 
  loc_16EFC13: Set var_8C = var_A8
  loc_16EFC4B: If (var_8C.RecordCount > 0) Then
  loc_16EFC9A:   var_94 = Val(CStr(Format(CVar(var_8C.Fields.Item("Rate")), "0.00")))
  loc_16EFCC3:   var_A4 = var_8C.Fields.Item("MRP")
  loc_16EFCEF:   var_AC = CStr(Format(CVar(var_A4), "0.00"))
  loc_16EFCF8:   var_9C = Val(var_AC)
  loc_16EFD0D: Else
  loc_16EFD1B:   Set var_A0 = Me.Txt
  loc_16EFD21:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A4, var_AC, var_9C, 1)
  loc_16EFD29:   1 = var_A4.Text
  loc_16EFD51:   Set var_A0 = Me.Txt
  loc_16EFD57:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_A4, var_AC, Val(var_AC))
  loc_16EFD5F:   var_94 = var_A4.Text
  loc_16EFD6C:   var_9C = Val(var_AC)
  loc_16EFD79: End If
  loc_16EFD7D: Set var_A0 = Me.TopCtrl1
  loc_16EFD83: Call {DEE1AD8B-D1A7-407D-9EB73F75665FA3BF}.DispID_68030005(var_9C)
  loc_16EFD9C: If (CStr(1) = "Add") Then
  loc_16EFDAD:   Set var_A0 = Me.Txt
  loc_16EFDB3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_16EFDCE:   Set var_A8 = Me.Txt
  loc_16EFDD4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B4)
  loc_16EFDEF:   Set var_BC = Me.Txt
  loc_16EFDF5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_C0)
  loc_16EFE10:   Set var_1F4 = Me.Txt
  loc_16EFE16:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1F8)
  loc_16EFE31:   Set var_208 = Me.Txt
  loc_16EFE37:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C)
  loc_16EFE52:   Set var_21C = Me.Txt
  loc_16EFE58:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_220)
  loc_16EFE70:   Set var_230 = Me.Txt
  loc_16EFE76:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_234)
  loc_16EFE8A:   var_FC = Left(CVar(var_234), 1)
  loc_16EFE9A:   Set var_238 = Me.Txt
  loc_16EFEA0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_23C)
  loc_16EFEC7:   Proc_6_7_F25D88(var_29C, Date)
  loc_16EFEDA:   Set var_300 = Me.Txt
  loc_16EFEE0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_304)
  loc_16EFEF8:   Set var_3CC = Me.Txt
  loc_16EFEFE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_3D0)
  loc_16EFF22:   Set var_424 = Me.Txt
  loc_16EFF28:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_428)
  loc_16EFF4F:   Set var_4BC = Me.Txt
  loc_16EFF55:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_4C0)
  loc_16EFF70:   Set var_508 = Me.Txt
  loc_16EFF76:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_50C)
  loc_16EFF91:   Set var_554 = Me.Txt
  loc_16EFF97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_558)
  loc_16EFFB2:   Set var_5A0 = Me.Txt
  loc_16EFFB8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_5A4)
  loc_16EFFD0:   Set var_5EC = Me.Txt
  loc_16EFFD6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_5F0)
  loc_16EFFE5:   Proc_6_17_EAA2B0(var_610, CVar(var_5F0))
  loc_16EFFF5:   Set var_644 = Me.Txt
  loc_16EFFFB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_648)
  loc_16F000A:   Proc_6_17_EAA2B0(var_668, CVar(var_648))
  loc_16F001A:   Set var_69C = Me.Txt
  loc_16F0020:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_6A0)
  loc_16F002F:   Proc_6_17_EAA2B0(var_6C0, CVar(var_6A0))
  loc_16F003F:   Set var_6F4 = Me.Txt
  loc_16F0045:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_6F8)
  loc_16F0054:   Proc_6_17_EAA2B0(var_718, CVar(var_6F8))
  loc_16F0064:   Set var_74C = Me.Txt
  loc_16F006A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_750)
  loc_16F0079:   Proc_6_17_EAA2B0(var_770, CVar(var_750))
  loc_16F0089:   Set var_7A4 = Me.Txt
  loc_16F008F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_7A8)
  loc_16F009E:   Proc_6_17_EAA2B0(var_7C8, CVar(var_7A8))
  loc_16F00AE:   Set var_7FC = Me.Txt
  loc_16F00B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_800)
  loc_16F00C3:   Proc_6_17_EAA2B0(var_820, CVar(var_800))
  loc_16F00DC:   var_AC = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,MRP,SChrgApp,RateIncTax,LOGSITE_CODE,ActiveYN,NType,BarCode,CommodityCode,LabelName,LabelQty,LabelRemark1,LabelRemark2,LabelRemark3,LabelRemark4,LabelRemark5) " & " Values ('"
  loc_16F0109:   var_1EC = var_AC & global_128 & "','" & var_A4.Text & "','" & var_B4.Tag & "',"
  loc_16F0157:   var_1B0 = CVar(var_1EC & var_C0.Text & ",'" & var_1F8.Text & "','" & var_20C.Tag & "','" & var_220.Tag & "','") & var_FC & "','" & Left(CVar(var_23C), 1) 
  loc_16F0173:   var_25C = var_1B0 & "', '" & CVar(MemVar_1F92070) & "','" 
  loc_16F018D:   var_2AC = var_25C & CVar(MemVar_1F920C8) & "'," & var_29C 
  loc_16F01EE:   var_400 = var_2AC & ",'A','" & CVar(global_56) & "','" & CVar(var_304.Tag) & "'," & CVar(var_94) & "," & CVar(var_9C) & ",'" & Left(CVar(var_3D0), 1) 
  loc_16F0237:   var_530 = var_400 & "','" & Left(CVar(var_428), 1) & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_4C0.Text) & "','" & CVar(var_50C.Text) 
  loc_16F024A:   var_57C = var_530 & "','" & CVar(var_558.Text) 
  loc_16F0266:   var_5E8 = var_57C & "','" & CVar(var_5A4.Text) & "'," 
  loc_16F0276:   var_640 = var_5E8 & var_610 & "," 
  loc_16F0286:   var_698 = var_640 & var_668 & "," 
  loc_16F0296:   var_6F0 = var_698 & var_6C0 & "," 
  loc_16F02A6:   var_748 = var_6F0 & var_718 & "," 
  loc_16F02B6:   var_7A0 = var_748 & var_770 & "," 
  loc_16F02D6:   var_850 = var_7A0 & var_7C8 & "," & var_820 & ")" 
  loc_16F02E4:   unk_53C1DA.Execute CStr(var_850), var_874, -1
  loc_16F0408:   Set var_A0 = Me.Txt
  loc_16F040E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A4, var_AC)
  loc_16F0416:   var_878 = var_A4.Text
  loc_16F042D:   If (var_AC <> vbNullString) Then
  loc_16F043E:     Set var_A0 = Me.Txt
  loc_16F0444:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4)
  loc_16F044C:     var_C4 = var_A4.Tag
  loc_16F045F:     Set var_A8 = Me.Txt
  loc_16F0465:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B4)
  loc_16F047A:     var_CC = Val(var_B4.Text)
  loc_16F048B:     Set var_BC = Me.Txt
  loc_16F0491:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_C0, var_1EC)
  loc_16F04B4:     Set var_1F4 = Me.Txt
  loc_16F04BA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1F8)
  loc_16F04C9:     Proc_6_7_F25D88(var_FC, CVar(var_1F8))
  loc_16F04DC:     Proc_6_7_F25D88(var_25C, Date)
  loc_16F04F5:     var_AC = "Insert Into Itemrate(ItemCode,RestCode,Rate,MRP,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('"
  loc_16F0549:     var_170 = CVar(var_AC & global_128 & "','" & var_C4 & "'," & CStr(var_C0.Text) & "," & CStr(Val(var_1EC)) & ",") & var_FC & ",'" 
  loc_16F0592:     var_29C = var_170 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_25C & ",'A','" & CVar(MemVar_1F92078) & "')" 
  loc_16F05A0:     unk_53C1DA.Execute CStr(var_29C), var_2AC, -1
  loc_16F05FA:   End If
  loc_16F05FD: Else
  loc_16F060B:   Set var_A0 = Me.Txt
  loc_16F0611:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC)
  loc_16F0619:   var_208 = var_A4.Text
  loc_16F062C:   Set var_A8 = Me.Txt
  loc_16F0632:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B4, var_C4)
  loc_16F063A:   var_880 = var_B4.Tag
  loc_16F064D:   Set var_BC = Me.Txt
  loc_16F0653:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_C0)
  loc_16F066E:   Set var_1F4 = Me.Txt
  loc_16F0674:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1F8)
  loc_16F068F:   Set var_208 = Me.Txt
  loc_16F0695:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C)
  loc_16F069D:   var_1FC = var_20C.Tag
  loc_16F06B0:   Set var_21C = Me.Txt
  loc_16F06B6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_220)
  loc_16F06CE:   Set var_230 = Me.Txt
  loc_16F06D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_234)
  loc_16F06E8:   var_FC = Left(CVar(var_234), 1)
  loc_16F06F8:   Set var_238 = Me.Txt
  loc_16F06FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_23C)
  loc_16F0725:   Proc_6_7_F25D88(var_29C, Date)
  loc_16F0738:   Set var_300 = Me.Txt
  loc_16F073E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_304)
  loc_16F0756:   Set var_3CC = Me.Txt
  loc_16F075C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_3D0)
  loc_16F077B:   Set var_424 = Me.Txt
  loc_16F0781:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_428)
  loc_16F07A0:   Set var_4BC = Me.Txt
  loc_16F07A6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_4C0)
  loc_16F07CA:   Set var_508 = Me.Txt
  loc_16F07D0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_50C)
  loc_16F07F4:   Set var_554 = Me.Txt
  loc_16F07FA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_558)
  loc_16F0809:   Proc_6_17_EAA2B0(var_57C, CVar(var_558))
  loc_16F0819:   Set var_5A0 = Me.Txt
  loc_16F081F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_5A4)
  loc_16F082E:   Proc_6_17_EAA2B0(var_5E8, CVar(var_5A4))
  loc_16F083E:   Set var_5EC = Me.Txt
  loc_16F0844:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_5F0)
  loc_16F0853:   Proc_6_17_EAA2B0(var_640, CVar(var_5F0))
  loc_16F0863:   Set var_644 = Me.Txt
  loc_16F0869:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_648)
  loc_16F0878:   Proc_6_17_EAA2B0(var_698, CVar(var_648))
  loc_16F0888:   Set var_69C = Me.Txt
  loc_16F088E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_6A0)
  loc_16F089D:   Proc_6_17_EAA2B0(var_6F0, CVar(var_6A0))
  loc_16F08AD:   Set var_6F4 = Me.Txt
  loc_16F08B3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_6F8)
  loc_16F08C2:   Proc_6_17_EAA2B0(var_748, CVar(var_6F8))
  loc_16F08D2:   Set var_74C = Me.Txt
  loc_16F08D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_750)
  loc_16F08E7:   Proc_6_17_EAA2B0(var_7A0, CVar(var_750))
  loc_16F08FA:   Set var_7A4 = Me.Txt
  loc_16F0900:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_7A8)
  loc_16F0928:   var_1D4 = "UPDATE ItemMast SET Name='" & var_AC & "',RestCode='"
  loc_16F0967:   var_218 = var_1D4 & var_C4 & "',DispCode=" & var_C0.Text & ",Unit='" & var_1F8.Text & "',ItemGroup='" & var_1FC & "',ItemCatCode='" & var_220.Tag
  loc_16F09A0:   var_25C = CVar(var_218 & "',DiscApp='") & var_FC & "',RateEdit='" & Left(CVar(var_23C), 1) & "',SITE_CODE='" & CVar(MemVar_1F92070) & "',U_name='" 
  loc_16F09AA:   var_26C = var_25C & CVar(MemVar_1F920C8) 
  loc_16F09BA:   var_2AC = var_26C & "',U_EntDt=" & var_29C 
  loc_16F09F6:   var_3A8 = var_2AC & " ,U_AE='E',TYPE='" & CVar(global_56) & "',Kitchen='" & CVar(var_304.Tag) & "',ActiveYN='" & CVar(Proc_6_38_E68A98(CVar(var_3D0))) 
  loc_16F0A3A:   var_478 = var_3A8 & "',NType='" & CVar(Proc_6_38_E68A98(CVar(var_428))) & "',SaleRate=" & CVar(var_94) & ",MRP=" & CVar(var_9C) & ",SChrgApp='" 
  loc_16F0A71:   var_600 = var_478 & Left(CVar(var_4C0), 1) & "',RateIncTax='" & Left(CVar(var_50C), 1) & "',LabelName=" & var_57C & ",LabelQty=" & var_5E8 
  loc_16F0AB1:   var_760 = var_600 & ",LabelRemark1=" & var_640 & ",LabelRemark2=" & var_698 & ",LabelRemark3=" & var_6F0 & ",LabelRemark4=" & var_748 
  loc_16F0AF3:   var_830 = var_760 & ",LabelRemark5=" & var_7A0 & " WHERE Code='" & CVar(global_128) & "' And RestCode='" & CVar(var_7A8.Tag) & "'" 
  loc_16F0B01:   unk_53C1DA.Execute CStr(var_830), var_850, -1
  loc_16F0C19:   Set var_A0 = Me.Txt
  loc_16F0C1F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A4, var_AC)
  loc_16F0C27:   var_7FC = var_A4.Text
  loc_16F0C34:   var_CC = Val(var_AC)
  loc_16F0C45:   Set var_A8 = Me.Txt
  loc_16F0C4B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_B4, var_1D4)
  loc_16F0C60:   var_880 = Val(var_1D4)
  loc_16F0C66:   var_EC = Date
  loc_16F0C71:   Proc_6_7_F25D88(var_FC, var_EC)
  loc_16F0C84:   Set var_BC = Me.Txt
  loc_16F0C8A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_C0, var_1FC)
  loc_16F0CA2:   Set var_1F4 = Me.Txt
  loc_16F0CA8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1F8)
  loc_16F0CB0:   var_25C = CVar(var_1F8) 'Address
  loc_16F0CB7:   Proc_6_7_F25D88(var_26C, var_25C)
  loc_16F0CFD:   var_1EC = "Update ItemRate Set Rate=" & CStr(var_B4.Text) & ",MRP=" & CStr(var_C0.Tag) & ",Site_Code='" & MemVar_1F92070 & "',U_name='"
  loc_16F0D30:   var_190 = CVar(var_1EC & MemVar_1F920C8 & "',U_EntDt=") & var_FC & ",U_AE='E' Where ItemCode='" & CVar(global_128) & "' And RestCode='" 
  loc_16F0D61:   unk_53C1DA.Execute CStr(var_190 & CVar(var_1FC) & "' And AppDate=" & var_26C & " And IsNull(Party,'')=''"), var_29C, -1
  loc_16F0DB5: End If
  loc_16F0DE2: Set var_A0 = Me.Txt
  loc_16F0DE8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, "Select Count(*) From UnitMast Where Name='", var_EC, -1, var_A8)
  loc_16F0E09: unk_53C1DA.Execute 0 & var_AC & "'", var_BC, var_FC
  loc_16F0E11: var_208 = var_A8.Fields
  loc_16F0E19:  = var_A4.Text.Item(1)
  loc_16F0E21:  = var_BC.Value
  loc_16F0E4E: If (var_FC <= 0) Then
  loc_16F0E65:   var_11C = CVar("Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,lOGSITE_CODE)" & " Values('") 'String
  loc_16F0E73:   Set var_A0 = Me.Txt
  loc_16F0E79:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_11C)
  loc_16F0E88:   var_FC = Trim(CVar(var_A4))
  loc_16F0E90:   var_13C = var_2AC & var_FC 
  loc_16F0E94:   var_DC = "','"
  loc_16F0ED1:   Proc_6_7_F25D88(var_25C, Date, var_13C & var_DC & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "',")
  loc_16F0ED9:   var_26C = -1 & var_25C 
  loc_16F0EF9:   var_AC = CStr(var_26C & ",'A','" & CVar(MemVar_1F92078) & "')")
  loc_16F0F03:   unk_53C1DA.Execute var_AC, var_A8, 
  loc_16F0F35: End If
  loc_16F0F3B: unk_53C1DA.CommitTrans
  loc_16F0F44: var_86 = CByte(0) 'Byte
  loc_16F0F53: Me.Requery -1
  loc_16F0F63: Me.Requery -1
  loc_16F0F73: Me.Requery -1
  loc_16F0FA1: Set var_A0 = Me.Txt
  loc_16F0FA7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4, var_AC, "Code='" & global_128)
  loc_16F0FAF: 0 = var_A4.Tag
  loc_16F0FC8: Me.Find 1 & var_AC & "'", var_DC, 
  loc_16F0FE3: Set var_A0 = Me.TopCtrl1
  loc_16F0FE9: Call {DEE1AD8B-D1A7-407D-9EB73F75665FA3BF}.DispID_68030005()
  loc_16F1002: If (CStr() = "Add") Then
  loc_16F1005:   Call TopCtrl1_UnknownEvent_A()
  loc_16F100A:   Exit Sub
  loc_16F100B: End If
  loc_16F1020: var_AC = "INI"
  loc_16F102E: Call Proc_44_50_FB3BA0(Proc_5_1_100CB50(var_AC, Me))
  loc_16F1039: Call Proc_44_52_160A820(global_64)
  loc_16F103E: Exit Sub
  loc_16F103F: ' Referenced from: 16EF7A4
  loc_16F1048: If (CInt(var_86) = 1) Then
  loc_16F1051:   unk_53C1DA.RollbackTrans
  loc_16F1056: End If
  loc_16F105E: Set var_A0 = Err()
  loc_16F1064: Call 0.Method_arg_2C (var_AC)
  loc_16F107D: MsgBox(CVar(var_AC), &H10, var_FC, var_11C, var_13C)
  loc_16F1090: Exit Sub
End Sub

Private Sub Form_Load() '12BFE20
  'Data Table: 53C1AC
  Dim var_88 As Variant
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_53C1DA As Connection15
  Dim var_E0 As String
  Dim var_AC As Variant
  loc_12BF7CC: On Error Goto loc_12BFDDC
  loc_12BF7E5: Proc_6_23_DFBA28(Me, 0)
  loc_12BF7F4: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12BF807: Me.Check1.BackColor = CLng(MemVar_1F921B0)
  loc_12BF81D: Me.Check2.BackColor = CLng(MemVar_1F921B0)
  loc_12BF833: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_12BF849: Me.FrCopyConsumption.BackColor = CLng(MemVar_1F921B0)
  loc_12BF85F: Me.FrLblInfo.BackColor = CLng(MemVar_1F921B0)
  loc_12BF876: Me.LblUser.Left = CDbl(13500)
  loc_12BF88D: Me.LblUser.Top = CDbl(7800)
  loc_12BF8A4: Me.LblLDt.Top = CDbl(8160)
  loc_12BF8BB: Me.LblLDt.Left = CDbl(13500)
  loc_12BF8D4: Me.DTP.MinDate = MemVar_1F920F4
  loc_12BF8EE: var_AC = DateAdd("d", CDbl(7), MemVar_1F920FC)
  loc_12BF907: Me.DTP.MaxDate = CDate(CDate(var_AC))
  loc_12BF91E: Set var_88 = Me.DTP
  loc_12BF924: var_88.Value = CDate(MemVar_1F920EC)
  loc_12BF92C: Call Proc_44_55_1129844(0)
  loc_12BF94C: var_D4 = "SELECT Code,Name,BarCode,CommodityCode FROM Item Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_12BF955: unk_53C1DA.Execute var_D4, var_AC, -1
  loc_12BF966: Set global_68 = var_88
  loc_12BF984: CVarUnk
  loc_12BF989: VerifyVarObj
  loc_12BF995: LateIdStAd
  loc_12BF9AE: If (global_52 = "Banquet") Then
  loc_12BF9CC:   var_D4 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  AND ((OutletYN='Y' and RestType='Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_12BF9D5:   unk_53C1DA.Execute var_D4, var_AC, -1
  loc_12BF9E6:   Set global_76 = Me.DGHelp
  loc_12BFA04:   CVarUnk
  loc_12BFA09:   VerifyVarObj
  loc_12BFA0F:   Set var_88 = Me.DGRest
  loc_12BFA15:   LateIdStAd
  loc_12BFA26: Else
  loc_12BFA41:   var_D4 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_12BFA4A:   unk_53C1DA.Execute var_D4, var_AC, -1
  loc_12BFA5B:   Set global_76 = var_88
  loc_12BFA79:   CVarUnk
  loc_12BFA7E:   VerifyVarObj
  loc_12BFA84:   Set var_88 = Me.DGRest
  loc_12BFA8A:   LateIdStAd
  loc_12BFA98: End If
  loc_12BFABC: unk_53C1DA.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_AC, -1
  loc_12BFACD: Set global_84 = var_88
  loc_12BFAEB: CVarUnk
  loc_12BFAF0: VerifyVarObj
  loc_12BFAFC: LateIdStAd
  loc_12BFB1E: var_D0 = "SELECT I.Code,I.Name,I.Unit,D.Name As Outlet,I.RestCode FROM ItemMast I Left Join Depart D On I.RestCode=D.Code Where I.Code In (Select Distinct FinItem From BOM) And (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_12BFB25: var_D4 = var_D0 & "' or I.LOGSITE_CODE='HO') AND I.Type='Finish' And I.DispCode <>9999 and I.ActiveYN<>'No' And D.RestType In ('Room Service','Outlet','Production') Order by I.Name"
  loc_12BFB2E: unk_53C1DA.Execute var_D4, var_AC, -1
  loc_12BFB3F: Set global_88 = Me.DGUnit
  loc_12BFB5D: CVarUnk
  loc_12BFB62: VerifyVarObj
  loc_12BFB6E: LateIdStAd
  loc_12BFB90: var_D0 = "SELECT Distinct Convert(Varchar(11),AppDate,104) as Code,Convert(Varchar(11),AppDate,104) As Name,RestCode,AppDate FROM ItemRate WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_12BFBA0: unk_53C1DA.Execute var_D0 & "' or LOGSITE_CODE='HO') And IsNull(Party,'')='' ORDER BY AppDate", var_AC, -1
  loc_12BFBB1: Set global_92 = Me.DGFinItem
  loc_12BFBCF: CVarUnk
  loc_12BFBD4: VerifyVarObj
  loc_12BFBE0: LateIdStAd
  loc_12BFC09: var_D4 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Type IN ('Finish') ORDER BY Name"
  loc_12BFC12: unk_53C1DA.Execute var_D4, var_AC, -1
  loc_12BFC23: Set global_72 = Me.DGAppDate
  loc_12BFC41: CVarUnk
  loc_12BFC46: VerifyVarObj
  loc_12BFC52: LateIdStAd
  loc_12BFC7B: var_D4 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  AND (cattype is not NULL and cattype<>'') ORDER BY Name"
  loc_12BFC84: unk_53C1DA.Execute var_D4, var_AC, -1
  loc_12BFC95: Set global_80 = Me.DGItemGroup
  loc_12BFCB3: CVarUnk
  loc_12BFCB8: VerifyVarObj
  loc_12BFCBE: Set var_88 = Me.DGItemCat
  loc_12BFCC4: LateIdStAd
  loc_12BFCDD: If (global_52 = "Banquet") Then
  loc_12BFCF4:   var_D0 = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrgApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,I.RestCode,I.kitchen,K.Name as KitchenName,I.DiscApp,I.SITE_CODE,I.LOGSITE_CODE FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart K on K.Code=I.Kitchen) Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_12BFD09:   var_E0 = var_D0 & "' or I.LOGSITE_CODE='HO') AND I.RestCode='" & MemVar_1F92078 & "BANQ' and IG.Type IN ('Finish') aND DispCode<>9999 ORDER BY I.Name"
  loc_12BFD12:   unk_53C1DA.Execute var_E0, var_AC, -1
  loc_12BFD23:   Set global_64 = var_88
  loc_12BFD3F: Else
  loc_12BFD53:   var_D0 = "SELECT I.Code+I.RestCode Code,I.Code ItemCode,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName,R.DiscApp,I.RateIncTax,I.SITE_CODE,I.LOGSITE_CODE,I.ActiveYN,I.NType,I.BarCode,I.CommodityCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart R on R.Code=I.RestCode)Left Join Depart K on K.Code=I.Kitchen Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_12BFD5A:   var_D4 = var_D0 & "' or I.LOGSITE_CODE='HO') AND r.RestType IN ('Room Service','Outlet','Production') aND DispCode<>9999 ORDER BY R.Name,I.Name"
  loc_12BFD63:   unk_53C1DA.Execute var_D4, var_AC, -1
  loc_12BFD74:   Set global_64 = var_88
  loc_12BFD89: End If
  loc_12BFD95: Set var_88 = Me
  loc_12BFD9E: var_D0 = "INI"
  loc_12BFDAC: Call Proc_44_50_FB3BA0(Proc_5_1_100CB50(var_D0, var_88, global_64, var_88, var_88, var_88, global_80, var_88), var_88, global_72, var_88)
  loc_12BFDC0: Call 0.Method_arg_160 (var_88, var_88, global_92)
  loc_12BFDCE: Call 0.Method_arg_164 (var_88, var_88)
  loc_12BFDD6: Call Proc_44_52_160A820(var_88)
  loc_12BFDDB: Exit Sub
  loc_12BFDDC: ' Referenced from: 12BF7CC
  loc_12BFDE4: Set var_88 = Err()
  loc_12BFDEA: Call 0.Method_arg_2C (var_D0)
  loc_12BFE0B: MsgBox(CVar(var_D0), &H40, "Information", var_100, var_110)
  loc_12BFE1E: Exit Sub
  loc_12BFE1F: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6FE8
  'Data Table: 53C1AC
  Dim var_8C As Label
  loc_ED6F46: Call 0.Method_arg_50 (var_88)
  loc_ED6F58: Me.LblFormCaption.Caption = var_88
  loc_ED6F71: Me.LblFormCaption.Left = CDbl(0)
  loc_ED6F7D: Set var_A0 = Me.TopCtrl1
  loc_ED6F83: Call {DEE1AD8B-D1A7-407D-9EB73F75665FA3BF}.DispID_80010006()
  loc_ED6F90: Set var_8C = Me.TopCtrl1
  loc_ED6F96: Call {DEE1AD8B-D1A7-407D-9EB73F75665FA3BF}.DispID_80010004()
  loc_ED6FB0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6FCB: Call 0.Method_arg_100 (var_B8)
  loc_ED6FDD: Me.LblFormCaption.Width = var_B8
  loc_ED6FE5: Exit Sub
  loc_ED6FE6: CExtInstUnk
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6C438
  'Data Table: 53C1AC
  loc_E6C3E7: Set global_64 = Nothing
  loc_E6C3F9: Set global_68 = Nothing
  loc_E6C40B: Set global_76 = Nothing
  loc_E6C41D: Set global_72 = Nothing
  loc_E6C42F: Set global_80 = Nothing
  loc_E6C436: Exit Sub
End Sub

Private Sub Form_Activate() 'FB46D0
  'Data Table: 53C1AC
  Dim var_88 As Frame
  Dim var_E8 As Integer
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  Dim unk_53C1DA As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_FB455C: On Error Goto loc_FB46CA
  loc_FB457A: If (Me.FrCopyConsumption.Visible = &HFF) Then
  loc_FB4589:   Me.FrCopyConsumption.Visible = False
  loc_FB4591: End If
  loc_FB4597: var_E8 = 0
  loc_FB45BE: Set var_88 = Me.Txt
  loc_FB45C4: Call 0.Method_Form_Activate0 (CInt(0), var_90, var_94, "Select Count(*) From BOM Where FinItem='", var_D0, -1)
  loc_FB45ED: Set var_9C = Me.Txt
  loc_FB45F3: Call 0.Method_Form_Activate0 (CInt(8), var_A0, var_A4, var_D8 & var_94 & "' And RestCode='")
  loc_FB45FB: var_E8 = var_A0.Tag
  loc_FB4614: unk_53C1DA.Execute var_EC & var_A4 & "'", var_FC, 
  loc_FB461C:  = var_90.Tag.Fields
  loc_FB4624:  = var_D8.Item()
  loc_FB462C:  = var_EC.Value
  loc_FB4637: Proc_6_39_E7C810(var_10C)
  loc_FB4670: If (var_10C > 0) Then
  loc_FB467C:   Set var_88 = Me.CmdCopyConsumption
  loc_FB4682:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_FB468D: Else
  loc_FB4695:   Set var_88 = Me.CmdCopyConsumption
  loc_FB469B:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_FB46A3: End If
  loc_FB46A7: Set var_88 = Me.TopCtrl1
  loc_FB46AD: Call {DEE1AD8B-D1A7-407D-9EB73F75665FA3BF}.DispID_68030000(var_FC)
  loc_FB46C2: If (CLng(CInt()) = &H2D) Then
  loc_FB46C5:   Call TopCtrl1_UnknownEvent_15()
  loc_FB46CA:   ' Referenced from: FB455C
  loc_FB46CA: End If
  loc_FB46CA: Proc_6_60_E62BC4()
  loc_FB46CF: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28698
  'Data Table: 53C1AC
  loc_E28670: On Error Goto loc_E2868F
  loc_E28687: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2868F: ' Referenced from: E28670
  loc_E2868F: Proc_6_60_E62BC4(Shift)
  loc_E28694: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F54AF4
  'Data Table: 53C1AC
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F54A16: If (Me.ListView.ListItems.Count > 0) Then
  loc_F54A1D:   Set var_A8 = Me.ListView
  loc_F54A67:   Set var_C0 = Me.Txt
  loc_F54A6D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F54A75:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F54A95: End If
  loc_F54AA1: Me.FrmList.Visible = False
  loc_F54AD1: Set var_9C = Me.Txt
  loc_F54AD7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F54ADF: var_A8.SetFocus
  loc_F54AF3: Exit Sub
End Sub

Private Sub CmdCopyConsumption_UnknownEvent_9 'F16BF8
  'Data Table: 53C1AC
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_88 As Variant
  loc_F16B03: Me.Requery -1
  loc_F16B16: Set var_88 = Me.Txt
  loc_F16B1C: Call 0.Method_CmdCopyConsumption_UnknownEvent_90 (CInt(&H12), var_8C)
  loc_F16B24: var_8C.Text = vbNullString
  loc_F16B3E: Set var_88 = Me.Txt
  loc_F16B44: Call 0.Method_CmdCopyConsumption_UnknownEvent_90 (CInt(&H12), var_8C)
  loc_F16B4C: var_8C.Tag = vbNullString
  loc_F16B65: Me.LblOutlet.Caption = "..."
  loc_F16B88: If (Me.FrCopyConsumption.Visible = 0) Then
  loc_F16B97:   Me.FrCopyConsumption.Visible = True
  loc_F16B9F: End If
  loc_F16BAD: Set var_88 = Me.Txt
  loc_F16BB3: Call 0.Method_CmdCopyConsumption_UnknownEvent_90 (CInt(&H12), var_8C)
  loc_F16BCD: If (var_8C.Enabled = &HFF) Then
  loc_F16BDB:   Set var_88 = Me.Txt
  loc_F16BE1:   Call 0.Method_CmdCopyConsumption_UnknownEvent_90 (CInt(&H12))
  loc_F16BE9:   var_8C.SetFocus
  loc_F16BF5: End If
  loc_F16BF5: Exit Sub
End Sub

Private Sub Command2_UnknownEvent_9 '127EB1C
  'Data Table: 53C1AC
  Dim var_BC As String
  Dim var_B8 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As String
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_116 As Integer
  Dim var_A8 As Variant
  Dim var_E4 As Variant
  Dim var_128 As String
  Dim var_138 As Variant
  Dim unk_53C1DA As Connection15
  Dim var_118 As Integer
  loc_127E59B: Set var_A8 = Me.Txt
  loc_127E5A1: Call 0.Method_Command2_UnknownEvent_90 (CInt(&HF))
  loc_127E5A9: Set var_B0 = var_AC
  loc_127E5C2: Set var_B4 = Me.Txt
  loc_127E5C8: Call 0.Method_Command2_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_127E5D0: var_B8.Text = Proc_6_33_1512840(var_B0)
  loc_127E5F1: Set var_A8 = Me.Txt
  loc_127E5F7: Call 0.Method_Command2_UnknownEvent_90 (CInt(&HB), var_AC)
  loc_127E5FF: var_BC = var_AC.Tag
  loc_127E616: If (var_BC <> vbNullString) Then
  loc_127E620:   var_C0 = var_A0 & " And I.RestCode='"
  loc_127E631:   Set var_A8 = Me.Txt
  loc_127E637:   Call 0.Method_Command2_UnknownEvent_90 (CInt(&HB), var_AC, var_BC)
  loc_127E63F:   var_C0 = var_AC.Tag
  loc_127E64F:   var_A0 = var_AC & var_BC & "'"
  loc_127E662: End If
  loc_127E66D: Set var_A8 = Me.Txt
  loc_127E673: Call 0.Method_Command2_UnknownEvent_90 (CInt(&H10))
  loc_127E69C: If (Trim(CVar(var_AC)) = "Yes") Then
  loc_127E6A6:   var_A0 = var_A0 & " And I.ActiveYN<>'No' "
  loc_127E6A9: End If
  loc_127E6B4: Set var_A8 = Me.Txt
  loc_127E6BA: Call 0.Method_Command2_UnknownEvent_90 (CInt(&H10), var_AC)
  loc_127E6C9: var_E4 = Trim(CVar(var_AC))
  loc_127E6E3: If (var_E4 = "No") Then
  loc_127E6ED:   var_A0 = var_A0 & " And I.ActiveYN='No' "
  loc_127E6F0: End If
  loc_127E6FB: Set var_A8 = Me.Txt
  loc_127E701: Call 0.Method_Command2_UnknownEvent_90 (CInt(&HF), var_AC)
  loc_127E718: If IsDate(CVar(var_AC)) Then
  loc_127E730:   Set var_A8 = Me.Txt
  loc_127E736:   Call 0.Method_Command2_UnknownEvent_90 (CInt(&HF), var_AC)
  loc_127E73E:   var_D4 = CVar(var_AC) 'Address
  loc_127E745:   Proc_6_7_F25D88(var_E4, var_D4)
  loc_127E752:   var_A4 = CStr(CVar(var_A4 & " And ItemRate.AppDate=") & var_E4)
  loc_127E763: End If
  loc_127E763: On Error Goto loc_127EAD0
  loc_127E769: var_116 = KeyCode
  loc_127E772: If (var_116 = 0) Then
  loc_127E77C:   Set var_A8 = Me.Check2
  loc_127E790:   If (var_A8.Value = 1) Then
  loc_127E7A7:     var_E4 = CVar("SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate ,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, " & " REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,ItemRate.MRP,IsNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(itemrate.Party,'')='' left Join TaxStru T On IC.TaxStru=T.Code Left Join Depart K on K.Code=I.Kitchen Inner Join (Select Max(ItemCode) As mItem,Max(AppDate) As MaxDate from itemrate Where AppDate<=") 'String
  loc_127E7B5:     Proc_6_7_F25D88(var_D4, MemVar_1F920EC, var_E4, var_188)
  loc_127E7BD:     var_104 = -1 & var_D4 
  loc_127E7C1:     var_128 = " Group by itemcode ) Q On I.Code=Q.mItem Where Q.MaxDate=ItemRate.AppDate And IG.Type IN ('Finish','Semi Finish') "
  loc_127E7C6:     var_114 = CVar(var_A4 & " And ItemRate.AppDate=") & var_128 
  loc_127E7CD:     var_138 = CVar(var_A0) 'String
  loc_127E7E7:     unk_53C1DA.Execute CStr(var_114 & var_138 & " And I.DispCode<>9999 order by I.Name"), var_A8, var_116
  loc_127E7F2:     Set var_88 = var_A8
  loc_127E80F:   Else
  loc_127E823:     var_BC = "SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate ,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, " & " REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,ItemRate.MRP,IsNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(itemrate.Party,'')='' left Join TaxStru T On IC.TaxStru=T.Code Left Join Depart K on K.Code=I.Kitchen Where IG.Type IN ('Finish','Semi Finish') "
  loc_127E841:     unk_53C1DA.Execute var_BC & var_A0 & var_A4 & " And I.DispCode<>9999 order by I.Name", var_D4, -1
  loc_127E84C:     Set var_88 = var_A8
  loc_127E860:   End If
  loc_127E876:   Set var_A8 = var_88 
  loc_127E882:   var_118 = CreateFieldDefFile(var_A8, MemVar_1F920B4 & "\ItemMastFinish.ttx", &HFF)
  loc_127E88C:   Set var_88 = var_A8
  loc_127E892:   var_F4 = CVar(var_118) 'Integer
  loc_127E895:   var_98 = var_F4 'Variant
  loc_127E8B1:   var_BC = MemVar_1F920B4 & "\ItemMastFinish.RPT"
  loc_127E8BA:   Call 0.Method_arg_1C (var_BC, var_F4, var_A8)
  loc_127E8C5:   MemVar_1F921E4 = var_A8
  loc_127E8E0:   Call 0.Method_arg_90 (var_A8, var_190, var_9A, 1)
  loc_127E8E8:   Call 0.Method_arg_24 (var_118, var_A8)
  loc_127E8F4:   For var_194 =  To CInt(var_190): var_AC = var_194 'Integer
  loc_127E90D:     Call 0.Method_arg_90 (var_A8, CLng(var_9A))
  loc_127E915:     Call 0.Method_arg_20 (var_AC)
  loc_127E91D:     Call 0.Method_arg_30 (var_BC)
  loc_127E933:     var_1A4 = Ucase(CVar(var_BC)) 'Variant
  loc_127E963:     If (var_1A4 = Ucase("Title")) Then
  loc_127E979:       Call 0.Method_arg_90 (var_A8, CLng(var_9A))
  loc_127E981:       Call 0.Method_arg_20 (var_AC)
  loc_127E989:       Call 0.Method_arg_38 ("'Menu Item Entry'")
  loc_127E998:     Else
  loc_127E9BA:       If (var_1A4 = Ucase("RestName")) Then
  loc_127E9CE:         Set var_A8 = Me.Txt
  loc_127E9D4:         Call 0.Method_Command2_UnknownEvent_90 (CInt(&HB), var_AC)
  loc_127E9DC:         var_BC = var_AC.Text
  loc_127E9E5:         var_C0 = "'" & var_BC
  loc_127E9FF:         Call 0.Method_arg_90 (var_B0, CLng(var_9A))
  loc_127EA07:         Call 0.Method_arg_20 (var_B4)
  loc_127EA0F:         Call 0.Method_arg_38 (var_C0 & "'")
  loc_127EA28:       End If
  loc_127EA28:     End If
  loc_127EA2B:   Next var_194 'Integer
  loc_127EA49:   Call 0.Method_arg_64 (var_A8, CVar(var_88))
  loc_127EA51:   Call 0.Method_arg_2C (var_128)
  loc_127EA5F:   Call 0.Method_arg_150 (var_138)
  loc_127EA6A:   Call 0.Method_arg_50 (var_BC)
  loc_127EA74:   Set var_AC = Nothing
  loc_127EA8E:   Set var_A8 = MemVar_1F921E4 
  loc_127EA9A:   Proc_6_99_1483714(var_A8, 0, var_BC)
  loc_127EAA5:   MemVar_1F921E4 = var_A8
  loc_127EAB3: End If
  loc_127EAB8: Set var_88 = Nothing
  loc_127EAC7: Me.Frame1.Visible = False
  loc_127EACF: Exit Sub
  loc_127EAD0: ' Referenced from: 127E763
  loc_127EAD8: Set var_A8 = Err()
  loc_127EADE: Call 0.Method_arg_2C (var_BC, &HFF)
  loc_127EAE9: Call 0.Method_arg_50 (var_C0)
  loc_127EB05: MsgBox(CVar(var_BC), &H10, CVar(var_C0), CVar(var_A4 & " And ItemRate.AppDate="), var_114)
  loc_127EB18: Exit Sub
  loc_127EB19: var_AC = var_1701
End Sub

Private Sub Check2_Click() 'E838A8
  'Data Table: 53C1AC
  Dim var_88 As CheckBox
  Dim var_90 As TextBox
  loc_E83853: If (Me.Check2.Value = 1) Then
  loc_E83864:   Set var_88 = Me.Txt
  loc_E8386A:   Call 0.Method_Check2_Click0 (CInt(&HF), var_90)
  loc_E83872:   var_90.Text = vbNullString
  loc_E8388C:   Set var_88 = Me.Txt
  loc_E83892:   Call 0.Method_Check2_Click0 (CInt(&HF), var_90)
  loc_E8389A:   var_90.Tag = vbNullString
  loc_E838A6: End If
  loc_E838A6: Exit Sub
End Sub

Private Sub ChkLblInfo_UnknownEvent_9 'E93088
  'Data Table: 53C1AC
  Dim var_88 As Frame
  loc_E9300C: Set var_88 = Me.ChkLblInfo
  loc_E93012: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_E93027: If (CLng(CInt()) = 1) Then
  loc_E93036:   Me.FrLblInfo.Visible = True
  loc_E93048:   Set var_88 = Me.ChkLblInfo
  loc_E9304E:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Hide Label Information")
  loc_E93059: Else
  loc_E93065:   Me.FrLblInfo.Visible = False
  loc_E93077:   Set var_88 = Me.ChkLblInfo
  loc_E9307D:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Show Label Information")
  loc_E93085: End If
  loc_E93085: Exit Sub
End Sub

Public Function global_52Get() '53DF60
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '53DF6F
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EE996C
  'Data Table: 53C1AC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EE98BE: On Error Goto loc_EE9927
  loc_EE98C7: Me.MoveFirst
  loc_EE98E1: var_8C = "code='" & MyValue
  loc_EE98F1: Me.Find var_8C & "'", 0, 1
  loc_EE98FD: Call Proc_44_52_160A820(var_A0)
  loc_EE991E: Proc_5_0_110649C(&HFF, Me)
  loc_EE9926: Exit Sub
  loc_EE9927: ' Referenced from: EE98BE
  loc_EE992F: Set var_A8 = Err()
  loc_EE9935: Call 0.Method_arg_2C (var_8C, global_64)
  loc_EE9956: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EE9969: Exit Sub
  loc_EE996A: Exit Sub
End Sub

Public Sub Proc_44_49_1067CE8(arg_C) '1067CE8
  'Data Table: 53C1AC
  Dim var_8C As Recordset15
  loc_1067A59: Set var_8C = arg_C 
  loc_1067A81: var_8C.Fields.Append "Code", &HC8, 8
  loc_1067AAD: var_8C.Fields.Append "Item", &HC8, &H23
  loc_1067AD9: var_8C.Fields.Append "Unit", &HC8, 6
  loc_1067B05: var_8C.Fields.Append "DispCode", &HC8, 4
  loc_1067B31: var_8C.Fields.Append "BarCode", &HC8, &H1E
  loc_1067B5D: var_8C.Fields.Append "Rate", &HC8, &HB
  loc_1067B89: var_8C.Fields.Append "LblName", &HC8, &H28
  loc_1067BB5: var_8C.Fields.Append "LblQty", &HC8, &H28
  loc_1067BE1: var_8C.Fields.Append "LblRem1", &HC8, &H28
  loc_1067C0D: var_8C.Fields.Append "LblRem2", &HC8, &H28
  loc_1067C39: var_8C.Fields.Append "LblRem3", &HC8, &H28
  loc_1067C65: var_8C.Fields.Append "LblRem4", &HC8, &H28
  loc_1067C91: var_8C.Fields.Append "LblRem5", &HC8, &H28
  loc_1067CA1: var_8C.CursorType = 3
  loc_1067CAE: var_8C.LockType = 3
  loc_1067CCD: var_8C.Open var_A0, var_B0, -1
  loc_1067CD4: Set var_8C = Nothing 
  loc_1067CDB: Set var_88 = arg_C 
  loc_1067CDF: Proc_44_49_1067CE8 = -1
  loc_1067CE5: ArrayRebase1Var
End Sub

Public Sub Proc_44_50_FB3BA0(arg_C) 'FB3BA0
  'Data Table: 53C1AC
  Dim var_98 As TextBox
  Dim var_8C As DTPicker
  loc_FB3A02: Set var_8C = Me.Txt
  loc_FB3A08: Call 0.Method_Proc_44_50_FB3BA0C (var_8E, var_86)
  loc_FB3A18: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FB3A2E:   Set var_8C = Me.Txt
  loc_FB3A34:   Call 0.Method_Proc_44_50_FB3BA00 (CInt(var_86), var_98)
  loc_FB3A3C:   var_98.Enabled = arg_C
  loc_FB3A4B: Next var_92 'Byte
  loc_FB3A5E: Set var_8C = Me.Command1
  loc_FB3A64: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_FB3A7E: Set var_8C = Me.Txt
  loc_FB3A84: Call 0.Method_Proc_44_50_FB3BA00 (CInt(&HB), var_98)
  loc_FB3A8C: var_98.Enabled = Not(arg_C)
  loc_FB3AA7: Set var_8C = Me.Txt
  loc_FB3AAD: Call 0.Method_Proc_44_50_FB3BA00 (CInt(&HF), var_98)
  loc_FB3AB5: var_98.Enabled = Not(arg_C)
  loc_FB3AD0: Set var_8C = Me.Txt
  loc_FB3AD6: Call 0.Method_Proc_44_50_FB3BA00 (CInt(&H10), var_98)
  loc_FB3ADE: var_98.Enabled = Not(arg_C)
  loc_FB3AF9: Set var_8C = Me.Txt
  loc_FB3AFF: Call 0.Method_Proc_44_50_FB3BA00 (CInt(&H12), var_98)
  loc_FB3B07: var_98.Enabled = Not(arg_C)
  loc_FB3B20: Set var_8C = Me.Txt
  loc_FB3B26: Call 0.Method_Proc_44_50_FB3BA00 (CInt(&H13), var_98)
  loc_FB3B2E: var_98.Enabled = False
  loc_FB3B47: Set var_8C = Me.Txt
  loc_FB3B4D: Call 0.Method_Proc_44_50_FB3BA00 (CInt(&H1C), var_98)
  loc_FB3B55: var_98.Enabled = False
  loc_FB3B6E: Set var_8C = Me.CmdLabelPrint
  loc_FB3B74: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(Not(arg_C))
  loc_FB3B92: Me.DTP.Enabled = Not(arg_C)
  loc_FB3B9D: Exit Sub
End Sub

Public Sub Proc_44_51_F5F3F8
  'Data Table: 53C1AC
  Dim var_94 As TextBox
  loc_F5F2DA: Set var_90 = Me.Txt
  loc_F5F2E0: Call 0.Method_Proc_44_51_F5F3F80 (CInt(1), var_94)
  loc_F5F2F0: var_8C = var_94.Text
  loc_F5F308: Set var_90 = Me.Txt
  loc_F5F30E: Call 0.Method_Proc_44_51_F5F3F8C (var_9A, var_86)
  loc_F5F31E: For var_9E =  To CByte((var_9A - 1)): CByte(0) = var_9E 'Byte
  loc_F5F334:   Set var_90 = Me.Txt
  loc_F5F33A:   Call 0.Method_Proc_44_51_F5F3F80 (CInt(var_86), var_94)
  loc_F5F342:   var_94.Text = vbNullString
  loc_F5F351: Next var_9E 'Byte
  loc_F5F365: Set var_90 = Me.Txt
  loc_F5F36B: Call 0.Method_Proc_44_51_F5F3F80 (CInt(4), var_94)
  loc_F5F373: var_94.Text = "No"
  loc_F5F38D: Set var_90 = Me.Txt
  loc_F5F393: Call 0.Method_Proc_44_51_F5F3F80 (CInt(5), var_94)
  loc_F5F39B: var_94.Text = "No"
  loc_F5F3B5: Set var_90 = Me.Txt
  loc_F5F3BB: Call 0.Method_Proc_44_51_F5F3F80 (CInt(1), var_94)
  loc_F5F3C3: var_94.Text = var_8C
  loc_F5F3DD: Set var_90 = Me.Txt
  loc_F5F3E3: Call 0.Method_Proc_44_51_F5F3F80 (CInt(&HE), var_94)
  loc_F5F3EB: var_94.Text = "Yes"
  loc_F5F3F7: Exit Sub
End Sub

Public Sub Proc_44_52_160A820
  'Data Table: 53C1AC
  Dim Me As Variant
  Dim var_CC As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_53C1DA As Connection15
  Dim var_8C As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_190 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_1D8 As String
  Dim var_1DC As Variant
  Dim var_128 As Variant
  Dim var_1A4 As Variant
  Dim var_14C As Variant
  Dim var_88 As Recordset15
  loc_16093A8: On Error Goto loc_160A817
  loc_16093C2: If (Me.RecordCount > 0) Then
  loc_16093D2:   var_CC = "Select U_Name,U_AE,U_EntDt From ItemMast where Code+RestCode='"
  loc_160941B:   unk_53C1DA.Execute CStr(var_CC & Me.Fields.Item("Code").Value & "'  "), var_120, -1
  loc_1609426:   Set var_8C = var_124
  loc_160947A:   var_124 = var_8C.Fields
  loc_16094E3:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1609528:   Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_Name")), var_18C)))
  loc_16095A2:   var_128 = var_8C.Fields.Item("U_AE")
  loc_1609603:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_1609622:   var_1A4 = var_8C.Fields.Item("U_EntDt")
  loc_1609636:   var_1D4 = var_18C & CVar(Proc_6_38_E68A98(CVar(var_1A4))) 
  loc_1609642:   Set var_1DC = Me.LblLDt
  loc_1609648:   var_1DC.Caption = CStr(var_1D4)
  loc_1609680: End If
  loc_1609686: Proc_183_45_E5C118(global_64)
  loc_16096A2: If (Me.RecordCount <= 0) Then
  loc_16096A5:   Call Proc_44_51_F5F3F8()
  loc_16096AD: Else
  loc_16096E1:   global_56 = CStr(Me.Fields.Item("Type").Value)
  loc_1609726:   global_128 = CStr(Me.Fields.Item("Name").Value)
  loc_1609773:   Set var_124 = Me.Txt
  loc_1609779:   Call 0.Method_Proc_44_52_160A8200 (CInt(0), var_128)
  loc_1609781:   var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16097D3:   Set var_124 = Me.Txt
  loc_16097D9:   Call 0.Method_Proc_44_52_160A8200 (CInt(&HA), var_128)
  loc_16097E1:   var_128.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_1609833:   Set var_124 = Me.Txt
  loc_1609839:   Call 0.Method_Proc_44_52_160A8200 (CInt(0), var_128)
  loc_1609841:   var_128.Tag = CStr(Me.Fields.Item("ItemCode").Value)
  loc_1609890:   Set var_124 = Me.Txt
  loc_1609896:   Call 0.Method_Proc_44_52_160A8200 (CInt(1), var_128)
  loc_160989E:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")))
  loc_16098EB:   Set var_124 = Me.Txt
  loc_16098F1:   Call 0.Method_Proc_44_52_160A8200 (CInt(2), var_128)
  loc_16098F9:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGrpName")))
  loc_1609946:   Set var_124 = Me.Txt
  loc_160994C:   Call 0.Method_Proc_44_52_160A8200 (CInt(2), var_128)
  loc_1609954:   var_128.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemGroup")))
  loc_16099A1:   Set var_124 = Me.Txt
  loc_16099A7:   Call 0.Method_Proc_44_52_160A8200 (CInt(6), var_128)
  loc_16099AF:   var_128.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCatCode")))
  loc_16099FC:   Set var_124 = Me.Txt
  loc_1609A02:   Call 0.Method_Proc_44_52_160A8200 (CInt(6), var_128)
  loc_1609A0A:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ItemCategory")))
  loc_1609A57:   Set var_124 = Me.Txt
  loc_1609A5D:   Call 0.Method_Proc_44_52_160A8200 (CInt(4), var_128)
  loc_1609A65:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Disc")))
  loc_1609AB2:   Set var_124 = Me.Txt
  loc_1609AB8:   Call 0.Method_Proc_44_52_160A8200 (CInt(&HC), var_128)
  loc_1609AC0:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrApp")))
  loc_1609B1C:   var_128 = Me.Fields.Item("RateIncTax")
  loc_1609B64:   var_14C = IIf(((Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax"))) = vbNullString) Or (Proc_6_38_E68A98(CVar(var_128)) = "N")), "No", "Yes")
  loc_1609B6C:   var_1D8 = CStr(var_14C)
  loc_1609B7B:   Set var_190 = Me.Txt
  loc_1609B81:   Call 0.Method_Proc_44_52_160A8200 (CInt(&HD), var_1A4)
  loc_1609B89:   var_1A4.Text = var_1D8
  loc_1609BEE:   Set var_124 = Me.Txt
  loc_1609BF4:   Call 0.Method_Proc_44_52_160A8200 (CInt(5), var_128)
  loc_1609BFC:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("REdit")))
  loc_1609C49:   Set var_124 = Me.Txt
  loc_1609C4F:   Call 0.Method_Proc_44_52_160A8200 (CInt(8), var_128)
  loc_1609C57:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_1609CA4:   Set var_124 = Me.Txt
  loc_1609CAA:   Call 0.Method_Proc_44_52_160A8200 (CInt(8), var_128)
  loc_1609CB2:   var_128.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_1609CFF:   Set var_124 = Me.Txt
  loc_1609D05:   Call 0.Method_Proc_44_52_160A8200 (CInt(3), var_128)
  loc_1609D0D:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("KitchenName")))
  loc_1609D5A:   Set var_124 = Me.Txt
  loc_1609D60:   Call 0.Method_Proc_44_52_160A8200 (CInt(3), var_128)
  loc_1609D68:   var_128.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")))
  loc_1609DA7:   var_100 = Proc_6_38_E68A98(CVar(Me.Fields.Item("NType")))
  loc_1609DB5:   Set var_124 = Me.Txt
  loc_1609DBB:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H11), var_128)
  loc_1609DC3:   var_128.Text = var_100
  loc_1609DE4:   ReDim var_1E8(0 To 3)
  loc_1609DFB:   var_1E8(0) = "Manufactured Item"
  loc_1609E0A:   var_1E8(1) = "Trade Item"
  loc_1609E19:   var_1E8(2) = "Proprietary Item"
  loc_1609E28:   var_1E8(3) = "Other"
  loc_1609E3F:   global_100 = Array(var_1E8)
  loc_1609E4A:   Set var_128 = Me.ListView
  loc_1609E51:   Set var_190 = Me.Txt
  loc_1609E69:   Set var_AC = var_190
  loc_1609E83:   Set global_116 = Proc_6_66_EFF8FC(var_128, var_AC, CInt(&H11))
  loc_1609EA2:   Set var_98 = Me.Txt
  loc_1609EA8:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H11), var_AC, var_100)
  loc_1609EC3:   Set var_124 = Me.Txt
  loc_1609EC9:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H11), var_128, var_100)
  loc_1609ED1:   var_128.Tag = 4
  loc_1609F1D:   Me.ListView.SelectedItem = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("NType"))))
  loc_1609F69:   Set var_124 = Me.Txt
  loc_1609F6F:   Call 0.Method_Proc_44_52_160A8200 (CInt(&HE), var_128)
  loc_1609F77:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ActiveYN")))
  loc_1609FC4:   Set var_124 = Me.Txt
  loc_1609FCA:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H13), var_128)
  loc_1609FD2:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("BarCode")))
  loc_160A01F:   Set var_124 = Me.Txt
  loc_160A025:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H1C), var_128)
  loc_160A02D:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CommodityCode")))
  loc_160A07A:   Set var_124 = Me.Txt
  loc_160A080:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H14), var_128)
  loc_160A088:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelName")))
  loc_160A0D5:   Set var_124 = Me.Txt
  loc_160A0DB:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H15), var_128)
  loc_160A0E3:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelQty")))
  loc_160A130:   Set var_124 = Me.Txt
  loc_160A136:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H16), var_128)
  loc_160A13E:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark1")))
  loc_160A18B:   Set var_124 = Me.Txt
  loc_160A191:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H17), var_128)
  loc_160A199:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark2")))
  loc_160A1E6:   Set var_124 = Me.Txt
  loc_160A1EC:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H18), var_128)
  loc_160A1F4:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark3")))
  loc_160A241:   Set var_124 = Me.Txt
  loc_160A247:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H19), var_128)
  loc_160A24F:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark4")))
  loc_160A29C:   Set var_124 = Me.Txt
  loc_160A2A2:   Call 0.Method_Proc_44_52_160A8200 (CInt(&H1A), var_128)
  loc_160A2AA:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("LabelRemark5")))
  loc_160A2E0:   var_BC = CVar(Me.Fields.Item("DiscApp")) 'Address
  loc_160A2EF:   global_120 = Proc_6_38_E68A98(var_BC)
  loc_160A319:   Proc_6_7_F25D88(var_BC, MemVar_1F920EC, "Select Rate,MRP,Appdate From ItemRate Where AppDate<=", var_1D4)
  loc_160A321:   var_DC = -1 & var_BC 
  loc_160A353:   var_120 = Me.Fields.Item("ItemCode").Value
  loc_160A385:   var_128 = Me.Fields.Item("RestCode")
  loc_160A395:   var_1B4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("NType")))) & " And ItemCode='" & var_120 & "' And RestCode='" & var_128.Value 
  loc_160A3AC:   unk_53C1DA.Execute CStr(var_1B4 & "' And IsNull(Party,'')='' Order By AppDate Desc "), var_190, Me.Fields.Item("ItemCode").Text
  loc_160A3B7:   Set var_88 = var_190
  loc_160A3F5:   If (var_88.RecordCount > 0) Then
  loc_160A44A:     Set var_124 = Me.Txt
  loc_160A450:     Call 0.Method_Proc_44_52_160A8200 (CInt(7), var_128, CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_160A458:     var_128.Text = 1
  loc_160A49D:     var_DC = "0.00"
  loc_160A4AD:     var_FC = Format(CVar(var_88.Fields.Item("MRP")), var_DC)
  loc_160A4C4:     Set var_124 = Me.Txt
  loc_160A4CA:     Call 0.Method_Proc_44_52_160A8200 (CInt(&H1B), var_128, CStr(var_FC))
  loc_160A4D2:     var_128.Text = 1
  loc_160A506:     var_AC = var_88.Fields.Item("AppDate")
  loc_160A50E:     var_BC = var_AC.Value
  loc_160A517:     var_100 = CStr(var_BC)
  loc_160A525:     Set var_124 = Me.Txt
  loc_160A52B:     Call 0.Method_Proc_44_52_160A8200 (CInt(9), var_128, var_100)
  loc_160A533:     var_128.Text = 1
  loc_160A54C:   Else
  loc_160A55A:     Set var_98 = Me.Txt
  loc_160A560:     Call 0.Method_Proc_44_52_160A8200 (CInt(7), var_AC)
  loc_160A568:     var_AC.Text = vbNullString
  loc_160A582:     Set var_98 = Me.Txt
  loc_160A588:     Call 0.Method_Proc_44_52_160A8200 (CInt(&H1B), var_AC)
  loc_160A590:     var_AC.Text = vbNullString
  loc_160A5AA:     Set var_98 = Me.Txt
  loc_160A5B0:     Call 0.Method_Proc_44_52_160A8200 (CInt(9), var_AC)
  loc_160A5B8:     var_AC.Text = vbNullString
  loc_160A5C4:   End If
  loc_160A5C4: End If
  loc_160A5CA: var_CC = 0
  loc_160A5F1: Set var_98 = Me.Txt
  loc_160A5F7: Call 0.Method_Proc_44_52_160A8200 (CInt(0), var_AC, var_100, "Select Count(*) From BOM Where FinItem='", var_BC, -1)
  loc_160A620: Set var_124 = Me.Txt
  loc_160A626: Call 0.Method_Proc_44_52_160A8200 (CInt(8), var_128, var_1D8, var_1A4 & var_100 & "' And RestCode='")
  loc_160A62E: var_CC = var_128.Tag
  loc_160A647: unk_53C1DA.Execute var_1DC & var_1D8 & "'", var_DC, 1
  loc_160A64F:  = var_AC.Tag.Fields
  loc_160A657:  = var_1A4.Item()
  loc_160A65F:  = var_1DC.Value
  loc_160A66A: Proc_6_39_E7C810(var_FC)
  loc_160A6A3: If (var_FC > 0) Then
  loc_160A6AF:   Set var_98 = Me.CmdCopyConsumption
  loc_160A6B5:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_160A6C0: Else
  loc_160A6C8:   Set var_98 = Me.CmdCopyConsumption
  loc_160A6CE:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_160A6D6: End If
  loc_160A6F1: If (Me.FrCopyConsumption.Visible = &HFF) Then
  loc_160A700:   Me.FrCopyConsumption.Visible = False
  loc_160A708: End If
  loc_160A71F: If (Me.RecordCount > 0) Then
  loc_160A761:   var_DC = "Select LabelPrinting From Depart Where Code='" & Me.Fields.Item("RestCode").Value 
  loc_160A778:   unk_53C1DA.Execute CStr(var_DC & "'"), var_120, -1
  loc_160A7D6:   If (Proc_6_38_E68A98(CVar(var_124.Fields.Item("LabelPrinting")), var_124) = "Y") Then
  loc_160A7E1:     Set var_98 = Me.ChkLblInfo
  loc_160A7E7:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_160A7F2:   Else
  loc_160A7FB:     Set var_98 = Me.ChkLblInfo
  loc_160A801:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_160A809:   End If
  loc_160A809: End If
  loc_160A809: Call Proc_44_54_102D98C(var_DC)
  loc_160A813: Set var_88 = Nothing
  loc_160A816: Exit Sub
  loc_160A817: ' Referenced from: 16093A8
  loc_160A817: Proc_6_60_E62BC4()
  loc_160A81C: Exit Sub
End Sub

Public Sub Proc_44_53_12F277C
  'Data Table: 53C1AC
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_53C1DA As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_AC As String
  Dim var_A0 As Variant
  loc_12F20DB: If (Me.RecordCount = 0) Then
  loc_12F20DE:   Proc_44_53_12F277C = 
  loc_12F20E4: End If
  loc_12F20E8: Set var_90 = Me.TopCtrl1
  loc_12F20EE: Call {DEE1AD8B-D1A7-407D-9EB73F75665FA3BF}.DispID_68030005()
  loc_12F2107: If (CStr() = "Add") Then
  loc_12F2110:   var_F4 = 0
  loc_12F2145:   Set var_90 = Me.Txt
  loc_12F214B:   Call 0.Method_Proc_44_53_12F277C0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12F2174:   Set var_B8 = Me.Txt
  loc_12F217A:   Call 0.Method_Proc_44_53_12F277C0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Code='")
  loc_12F2182:   var_F4 = var_BC.Tag
  loc_12F219B:   unk_53C1DA.Execute var_F8 & var_C0 & "'", var_108, 
  loc_12F21A3:    = var_A8.Tag.Fields
  loc_12F21AB:    = var_E4.Item()
  loc_12F21B3:    = var_F8.Value
  loc_12F21EE:   If (var_108 > 0) Then
  loc_12F21FC:     var_108 = "Information"
  loc_12F220C:     var_A0 = "Duplicate Name"
  loc_12F2212:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F222D:     Set var_90 = Me.Txt
  loc_12F2233:     Call 0.Method_Proc_44_53_12F277C0 (CInt(0))
  loc_12F223B:     var_A8.SetFocus
  loc_12F224C:     Proc_44_53_12F277C = &HFF
  loc_12F2252:   End If
  loc_12F2260:   Set var_90 = Me.Txt
  loc_12F2266:   Call 0.Method_Proc_44_53_12F277C0 (CInt(&HA), var_A8)
  loc_12F2285:   If (var_A8.Text <> vbNullString) Then
  loc_12F228E:     var_F4 = 0
  loc_12F22C3:     Set var_90 = Me.Txt
  loc_12F22C9:     Call 0.Method_Proc_44_53_12F277C0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12F22F2:     Set var_B8 = Me.Txt
  loc_12F22F8:     Call 0.Method_Proc_44_53_12F277C0 (CInt(&HA), var_BC, var_C0, var_E4 & var_AC & "' and DispCode=")
  loc_12F2300:     var_F4 = var_BC.Text
  loc_12F2319:     unk_53C1DA.Execute var_F8 & var_C0 & vbNullString, var_108, var_A8
  loc_12F2321:      = var_A8.Tag.Fields
  loc_12F2329:      = var_E4.Item()
  loc_12F2331:      = var_F8.Value
  loc_12F236C:     If (var_108 > 0) Then
  loc_12F237A:       var_108 = "Information"
  loc_12F238A:       var_A0 = "Duplicate Disp Code"
  loc_12F2390:       MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F23AB:       Set var_90 = Me.Txt
  loc_12F23B1:       Call 0.Method_Proc_44_53_12F277C0 (CInt(&HA))
  loc_12F23B9:       var_A8.SetFocus
  loc_12F23CA:       Proc_44_53_12F277C = &HFF
  loc_12F23D0:     End If
  loc_12F23D0:   End If
  loc_12F23D3: Else
  loc_12F23D9:   var_F4 = 0
  loc_12F240E:   Set var_90 = Me.Txt
  loc_12F2414:   Call 0.Method_Proc_44_53_12F277C0 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Code='", var_A0, -1)
  loc_12F243D:   Set var_B8 = Me.Txt
  loc_12F2443:   Call 0.Method_Proc_44_53_12F277C0 (CInt(8), var_BC, var_C0, var_E4 & var_AC & "' And restcode='")
  loc_12F244B:   var_F4 = var_BC.Tag
  loc_12F2475:   unk_53C1DA.Execute var_F8 & var_C0 & "' and Name<>'" & global_128 & "'", var_108, var_A8
  loc_12F247D:    = var_A8.Tag.Fields
  loc_12F2485:    = var_E4.Item()
  loc_12F248D:    = var_F8.Value
  loc_12F24CC:   If (var_108 > 0) Then
  loc_12F24DA:     var_108 = "Information"
  loc_12F24EA:     var_A0 = "Duplicate Name"
  loc_12F24F0:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F250B:     Set var_90 = Me.Txt
  loc_12F2511:     Call 0.Method_Proc_44_53_12F277C0 (CInt(0))
  loc_12F2519:     var_A8.SetFocus
  loc_12F252A:     Proc_44_53_12F277C = &HFF
  loc_12F2530:   End If
  loc_12F253E:   Set var_90 = Me.Txt
  loc_12F2544:   Call 0.Method_Proc_44_53_12F277C0 (CInt(&HA), var_A8)
  loc_12F2563:   If (var_A8.Text <> vbNullString) Then
  loc_12F256C:     var_F4 = 0
  loc_12F25A1:     Set var_90 = Me.Txt
  loc_12F25A7:     Call 0.Method_Proc_44_53_12F277C0 (CInt(&HA), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1)
  loc_12F25D0:     Set var_B8 = Me.Txt
  loc_12F25D6:     Call 0.Method_Proc_44_53_12F277C0 (CInt(8), var_BC, var_C0, var_E4 & var_AC & " And restcode='")
  loc_12F25DE:     var_F4 = var_BC.Tag
  loc_12F260D:     unk_53C1DA.Execute var_F8 & var_C0 & "' and DispCode<> " & CStr(global_60) & vbNullString, var_108, var_A8
  loc_12F2615:      = var_A8.Text.Fields
  loc_12F261D:      = var_E4.Item()
  loc_12F2625:      = var_F8.Value
  loc_12F2666:     If (var_108 > 0) Then
  loc_12F268A:       MsgBox("Duplicate Disp Code", &H40, "Information", var_128, var_148)
  loc_12F26A5:       Set var_90 = Me.Txt
  loc_12F26AB:       Call 0.Method_Proc_44_53_12F277C0 (CInt(&HA))
  loc_12F26B3:       var_A8.SetFocus
  loc_12F26C4:       Proc_44_53_12F277C = &HFF
  loc_12F26CA:     End If
  loc_12F26CA:   End If
  loc_12F26CA: End If
  loc_12F26D8: Set var_90 = Me.Txt
  loc_12F26DE: Call 0.Method_Proc_44_53_12F277C0 (CInt(&HA), var_A8)
  loc_12F26FD: If (var_A8.Text = "9999") Then
  loc_12F272E:   MsgBox(CVar("This Code is reserved for special items" & vbCrLf & vbCrLf & "Please choose another code"), &H40, "HMS", var_128, var_148)
  loc_12F2750:   Set var_90 = Me.Txt
  loc_12F2756:   Call 0.Method_Proc_44_53_12F277C0 (CInt(&HA), var_A8)
  loc_12F275E:   var_A8.SetFocus
  loc_12F276F:   Proc_44_53_12F277C = &HFF
  loc_12F2775: End If
  loc_12F2775: Proc_44_53_12F277C = var_A8
End Sub

Public Sub Proc_44_54_102D98C
  'Data Table: 53C1AC
  loc_102D758: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_102D76A:   Me.DGHelp.Visible = False
  loc_102D772: End If
  loc_102D78E: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_102D7A0:   Me.DGRest.Visible = False
  loc_102D7A8: End If
  loc_102D7C4: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_102D7D6:   Me.DGItemGroup.Visible = False
  loc_102D7DE: End If
  loc_102D7FA: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_102D80C:   Me.DGItemCat.Visible = False
  loc_102D814: End If
  loc_102D830: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_102D842:   Me.DGUnit.Visible = False
  loc_102D84A: End If
  loc_102D866: If (CBool(Me.DGAppDate.Visible) = &HFF) Then
  loc_102D878:   Me.DGAppDate.Visible = False
  loc_102D880: End If
  loc_102D89B: If (Me.Frame1.Visible = &HFF) Then
  loc_102D8AD:   Me.DGUnit.Visible = False
  loc_102D8B5: End If
  loc_102D8D1: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_102D8E3:   Me.FGPoint.Visible = False
  loc_102D8EB: End If
  loc_102D907: If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_102D919:   Me.DGFinItem.Visible = False
  loc_102D921: End If
  loc_102D93D: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_102D94F:   Me.DGDispCode.Visible = False
  loc_102D957: End If
  loc_102D972: If (Me.FrmList.Visible = &HFF) Then
  loc_102D981:   Me.FrmList.Visible = False
  loc_102D989: End If
  loc_102D989: Exit Sub
End Sub

Public Sub Proc_44_55_1129844
  'Data Table: 53C1AC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_11294CC: On Error Goto loc_112983B
  loc_11294DD: Set var_88 = Me.Txt
  loc_11294E3: Call 0.Method_Proc_44_55_11298440 (CInt(0), var_8C)
  loc_1129502: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_112951E: Set var_B4 = Me.Txt
  loc_1129524: Call 0.Method_Proc_44_55_11298440 (CInt(0), var_B8)
  loc_112953F: Set var_88 = Me.Txt
  loc_1129545: Call 0.Method_Proc_44_55_11298440 (CInt(0), var_8C)
  loc_112955D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_112956C: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_112958C: Set var_88 = Me.Txt
  loc_1129592: Call 0.Method_Proc_44_55_11298440 (CInt(6), var_8C)
  loc_11295B1: Me.DGItemCat.Left = CVar(var_8C.Left)
  loc_11295CD: Set var_B4 = Me.Txt
  loc_11295D3: Call 0.Method_Proc_44_55_11298440 (CInt(6), var_B8)
  loc_11295EE: Set var_88 = Me.Txt
  loc_11295F4: Call 0.Method_Proc_44_55_11298440 (CInt(6), var_8C)
  loc_112960C: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_112961B: Me.DGItemCat.Top = CVar(var_8C.Left)
  loc_112963B: Set var_88 = Me.Txt
  loc_1129641: Call 0.Method_Proc_44_55_11298440 (CInt(2), var_8C)
  loc_1129660: Me.DGItemGroup.Left = CVar(var_8C.Left)
  loc_112967C: Set var_B4 = Me.Txt
  loc_1129682: Call 0.Method_Proc_44_55_11298440 (CInt(2), var_B8)
  loc_112969D: Set var_88 = Me.Txt
  loc_11296A3: Call 0.Method_Proc_44_55_11298440 (CInt(2), var_8C)
  loc_11296BB: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11296CA: Me.DGItemGroup.Top = CVar(var_8C.Left)
  loc_11296EA: Set var_88 = Me.Txt
  loc_11296F0: Call 0.Method_Proc_44_55_11298440 (CInt(1), var_8C)
  loc_112970F: Me.DGUnit.Left = CVar(var_8C.Left)
  loc_112972B: Set var_B4 = Me.Txt
  loc_1129731: Call 0.Method_Proc_44_55_11298440 (CInt(1), var_B8)
  loc_112974C: Set var_88 = Me.Txt
  loc_1129752: Call 0.Method_Proc_44_55_11298440 (CInt(1), var_8C)
  loc_112976A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1129779: Me.DGUnit.Top = CVar(var_8C.Left)
  loc_1129799: Set var_88 = Me.Txt
  loc_112979F: Call 0.Method_Proc_44_55_11298440 (CInt(&H12), var_8C)
  loc_11297BE: Me.DGFinItem.Left = CVar(var_8C.Left)
  loc_11297DA: Set var_B4 = Me.Txt
  loc_11297E0: Call 0.Method_Proc_44_55_11298440 (CInt(&H12), var_B8)
  loc_11297FB: Set var_88 = Me.Txt
  loc_1129801: Call 0.Method_Proc_44_55_11298440 (CInt(&H12), var_8C)
  loc_1129819: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1129828: Me.DGFinItem.Top = CVar(var_8C.Left)
  loc_112983A: Exit Sub
  loc_112983B: ' Referenced from: 11294CC
  loc_112983B: Proc_6_60_E62BC4()
  loc_1129840: Exit Sub
End Sub

Public Sub Proc_44_56_E80F80
  'Data Table: 53C1AC
  loc_E80F20: Call Proc_44_54_102D98C()
  loc_E80F5C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E80F5F:   Call TopCtrl1_UnknownEvent_16()
  loc_E80F67: Else
  loc_E80F6D:   Call 0.Method_arg_1E8 (var_108)
  loc_E80F75:   Call var_108.SetFocus
  loc_E80F7E: End If
  loc_E80F7E: Exit Sub
End Sub
