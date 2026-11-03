VERSION 5.00
Begin VB.Form RsTouchScreenTOKENEntry
  Caption = "KOT Entry"
  BackColor = &HDEE6FE&
  ForeColor = &H40&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 14640
  ClientHeight = 8835
  LockControls = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MSHFlexGrid FGrid1
    Left = 8280
    Top = 6960
    Width = 5940
    Height = 2325
    TabIndex = 122
  End
  Begin Frame Frame
    BackColor = &H80000003&
    Left = 0
    Top = 8055
    Width = 7425
    Height = 6405
    Visible = 0   'False
    TabIndex = 31
    BorderStyle = 0 'None
    Begin MSHFlexGrid FGNCType
      Left = 15
      Top = 465
      Width = 3735
      Height = 5925
      TabIndex = 35
    End
    Begin TextBox TxtNCTOKEN
      Index = 0
      Left = 180
      Top = 1935
      Width = 3420
      Height = 255
      Visible = 0   'False
      TabIndex = 33
      BorderStyle = 0 'None
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtNCTOKEN
      Index = 1
      Left = 15
      Top = 15
      Width = 3735
      Height = 435
      TabIndex = 32
      BorderStyle = 0 'None
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSFlexGrid FGPointSt
      Left = 540
      Top = 2640
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 34
    End
    Begin BtnEnh CmNC
      Index = 0
      Left = 3765
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 94
    End
    Begin BtnEnh CmNC
      Index = 1
      Left = 4680
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 95
    End
    Begin BtnEnh CmNC
      Index = 2
      Left = 5595
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 96
    End
    Begin BtnEnh CmNC
      Index = 3
      Left = 6510
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 97
    End
    Begin BtnEnh CmNC
      Index = 4
      Left = 3765
      Top = 915
      Width = 900
      Height = 900
      TabIndex = 98
    End
    Begin BtnEnh CmNC
      Index = 5
      Left = 4680
      Top = 915
      Width = 900
      Height = 900
      TabIndex = 99
    End
    Begin BtnEnh CmNC
      Index = 6
      Left = 5595
      Top = 915
      Width = 900
      Height = 900
      TabIndex = 100
    End
    Begin BtnEnh CmNC
      Index = 7
      Left = 6510
      Top = 915
      Width = 900
      Height = 900
      TabIndex = 101
    End
    Begin BtnEnh CmNC
      Index = 8
      Left = 3765
      Top = 1830
      Width = 900
      Height = 900
      TabIndex = 102
    End
    Begin BtnEnh CmNC
      Index = 9
      Left = 4680
      Top = 1830
      Width = 900
      Height = 900
      TabIndex = 103
    End
    Begin BtnEnh CmNC
      Index = 10
      Left = 5595
      Top = 1830
      Width = 900
      Height = 900
      TabIndex = 104
    End
    Begin BtnEnh CmNC
      Index = 11
      Left = 6510
      Top = 1830
      Width = 900
      Height = 900
      TabIndex = 105
    End
    Begin BtnEnh CmNC
      Index = 12
      Left = 3765
      Top = 2745
      Width = 900
      Height = 900
      TabIndex = 106
    End
    Begin BtnEnh CmNC
      Index = 13
      Left = 4680
      Top = 2745
      Width = 900
      Height = 900
      TabIndex = 107
    End
    Begin BtnEnh CmNC
      Index = 14
      Left = 5595
      Top = 2745
      Width = 900
      Height = 900
      TabIndex = 108
    End
    Begin BtnEnh CmNC
      Index = 15
      Left = 6510
      Top = 2745
      Width = 900
      Height = 900
      TabIndex = 109
    End
    Begin BtnEnh CmNC
      Index = 16
      Left = 3765
      Top = 3660
      Width = 900
      Height = 900
      TabIndex = 110
    End
    Begin BtnEnh CmNC
      Index = 17
      Left = 4680
      Top = 3660
      Width = 900
      Height = 900
      TabIndex = 111
    End
    Begin BtnEnh CmNC
      Index = 18
      Left = 5595
      Top = 3660
      Width = 900
      Height = 900
      TabIndex = 112
    End
    Begin BtnEnh CmNC
      Index = 19
      Left = 6510
      Top = 3660
      Width = 900
      Height = 900
      TabIndex = 113
    End
    Begin BtnEnh CmNC
      Index = 20
      Left = 3765
      Top = 4575
      Width = 900
      Height = 900
      TabIndex = 114
    End
    Begin BtnEnh CmNC
      Index = 21
      Left = 4680
      Top = 4575
      Width = 900
      Height = 900
      TabIndex = 115
    End
    Begin BtnEnh CmNC
      Index = 22
      Left = 5595
      Top = 4575
      Width = 900
      Height = 900
      TabIndex = 116
    End
    Begin BtnEnh CmNC
      Index = 23
      Left = 6510
      Top = 4575
      Width = 900
      Height = 900
      TabIndex = 117
    End
    Begin BtnEnh CmNC
      Index = 24
      Left = 3765
      Top = 5490
      Width = 900
      Height = 900
      TabIndex = 118
    End
    Begin BtnEnh CmNC
      Index = 25
      Left = 4680
      Top = 5490
      Width = 900
      Height = 900
      TabIndex = 119
    End
    Begin BtnEnh CmNC
      Index = 26
      Left = 5595
      Top = 5490
      Width = 900
      Height = 900
      TabIndex = 120
    End
    Begin BtnEnh CmNC
      Index = 27
      Left = 6510
      Top = 5490
      Width = 900
      Height = 900
      TabIndex = 121
    End
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8670
    Width = 14640
    Height = 165
    Visible = 0   'False
    TabIndex = 93
  End
  Begin CheckBox ChkNCTOKEN
    Caption = "NC "
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11190
    Top = 885
    Width = 1125
    Height = 270
    TabIndex = 80
    Alignment = 1 'Right Justify
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
    Index = 2
    Left = 7980
    Top = 30
    Width = 555
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 1
    Left = 6870
    Top = 30
    Width = 1095
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 0
    ForeColor = &HFF0000&
    Left = 5655
    Top = 30
    Width = 1200
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin Frame FrameQty
    BackColor = &H808080&
    ForeColor = &H8000000A&
    Left = 5685
    Top = 8445
    Width = 7755
    Height = 1590
    Visible = 0   'False
    TabIndex = 40
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox TxtQty
      ForeColor = &HFF0000&
      Left = 15
      Top = 1200
      Width = 2190
      Height = 390
      TabIndex = 43
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtQtyFormat
      Left = 45
      Top = 810
      Width = 495
      Height = 360
      Visible = 0   'False
      TabIndex = 42
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin BtnEnh CmdQty
      Index = 1
      Left = 2220
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 41
    End
    Begin BtnEnh CmdQty
      Index = 0
      Left = 4605
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 44
    End
    Begin BtnEnh CmdQty
      Index = 2
      Left = 3015
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 45
    End
    Begin BtnEnh CmdQty
      Index = 3
      Left = 3810
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 46
    End
    Begin BtnEnh CmdQty
      Index = 4
      Left = 4605
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 47
    End
    Begin BtnEnh CmdQty
      Index = 5
      Left = 5385
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 48
    End
    Begin BtnEnh CmdQty
      Index = 6
      Left = 6165
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 49
    End
    Begin BtnEnh CmdQty
      Index = 7
      Left = 2220
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 50
    End
    Begin BtnEnh CmdQty
      Index = 8
      Left = 3015
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 51
    End
    Begin BtnEnh CmdQty
      Index = 9
      Left = 3810
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 52
    End
    Begin BtnEnh CmdQty
      Index = 10
      Left = 5385
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 53
    End
    Begin BtnEnh CmdQty
      Index = 11
      Left = 6945
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 54
    End
    Begin BtnEnh CmdQty
      Index = 12
      Left = 6945
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 55
    End
    Begin BtnEnh CmdQty
      Index = 13
      Left = 6165
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 56
    End
    Begin Label LblVtype
      BackColor = &HFF8080&
      ForeColor = &HFFFFFF&
      Left = 15
      Top = 810
      Width = 2190
      Height = 390
      TabIndex = 58
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblIndex
      Left = 585
      Top = 825
      Width = 1500
      Height = 360
      Visible = 0   'False
      TabIndex = 57
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TextBox Txt
    Index = 13
    ForeColor = &HFF0000&
    Left = 2520
    Top = 930
    Width = 450
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 5
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
    Left = 5475
    Top = 1185
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 37
    BorderStyle = 0 'None
    MaxLength = 11
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
    ForeColor = &HFF0000&
    Left = 1110
    Top = 1185
    Width = 4350
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 36
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
    Index = 10
    ForeColor = &HFF0000&
    Left = 1035
    Top = 8580
    Width = 3480
    Height = 240
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
    Index = 9
    ForeColor = &HFF0000&
    Left = 1035
    Top = 8310
    Width = 3480
    Height = 240
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
    Index = 8
    ForeColor = &HFF0000&
    Left = 1035
    Top = 8040
    Width = 3480
    Height = 240
    Enabled = 0   'False
    TabIndex = 25
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
    ForeColor = &HFF0000&
    Left = 10725
    Top = 1170
    Width = 2730
    Height = 255
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
  Begin DataGrid DGTable
    Left = 13605
    Top = 8370
    Width = 9240
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HFF0000&
    Left = 6840
    Top = 915
    Width = 4350
    Height = 240
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
  Begin DataGrid DGRest
    Left = 13275
    Top = 8010
    Width = 5910
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGItem
    Left = 14145
    Top = 7860
    Width = 4035
    Height = 4710
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HFF0000&
    Left = 3705
    Top = 915
    Width = 2355
    Height = 240
    TabIndex = 5
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
    Index = 4
    ForeColor = &HFF0000&
    Left = 1110
    Top = 930
    Width = 960
    Height = 240
    TabIndex = 3
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
    Index = 3
    BackColor = &H80000000&
    Left = 8190
    Top = 10215
    Width = 2325
    Height = 210
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0FFFF&
    ForeColor = &H80000012&
    Left = 810
    Top = 1695
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGPoint
    Left = 11130
    Top = 9120
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 1440
    Width = 7200
    Height = 6090
    TabIndex = 7
  End
  Begin BtnEnh Head
    Index = 1
    Left = 0
    Top = 360
    Width = 945
    Height = 540
    TabIndex = 72
  End
  Begin BtnEnh Head
    Index = 2
    Left = 945
    Top = 360
    Width = 945
    Height = 540
    TabIndex = 73
  End
  Begin BtnEnh Head
    Index = 3
    Left = 1890
    Top = 360
    Width = 945
    Height = 540
    TabIndex = 74
  End
  Begin BtnEnh Head
    Index = 4
    Left = 2820
    Top = 360
    Width = 945
    Height = 540
    TabIndex = 75
  End
  Begin BtnEnh Head
    Index = 5
    Left = 3780
    Top = 345
    Width = 945
    Height = 540
    TabIndex = 76
  End
  Begin BtnEnh Head
    Index = 6
    Left = 4725
    Top = 345
    Width = 945
    Height = 540
    TabIndex = 77
  End
  Begin BtnEnh HeadExit
    Left = 5670
    Top = 345
    Width = 945
    Height = 540
    TabIndex = 78
  End
  Begin BtnEnh cmdNCBill
    Left = 11175
    Top = 345
    Width = 1140
    Height = 540
    Visible = 0   'False
    TabIndex = 79
  End
  Begin BtnEnh CmChngSteward
    Left = 6615
    Top = 345
    Width = 1140
    Height = 540
    TabIndex = 81
  End
  Begin BtnEnh CmNoOfPersons
    Left = 7755
    Top = 345
    Width = 1140
    Height = 540
    TabIndex = 82
  End
  Begin BtnEnh CmChngToNC
    Left = 8895
    Top = 345
    Width = 1140
    Height = 540
    TabIndex = 83
  End
  Begin BtnEnh CmTransKOT
    Left = 10035
    Top = 345
    Width = 1140
    Height = 540
    TabIndex = 84
  End
  Begin BtnEnh CmChngMember
    Left = 12315
    Top = 345
    Width = 1140
    Height = 540
    Visible = 0   'False
    TabIndex = 85
  End
  Begin BtnEnh CmFgrid
    Index = 0
    Left = 7215
    Top = 1455
    Width = 1050
    Height = 675
    TabIndex = 86
  End
  Begin BtnEnh CmFgrid
    Index = 1
    Left = 7215
    Top = 5505
    Width = 1050
    Height = 675
    TabIndex = 87
  End
  Begin BtnEnh CmFgrid
    Index = 2
    Left = 7215
    Top = 2130
    Width = 1050
    Height = 675
    TabIndex = 88
  End
  Begin BtnEnh CmFgrid
    Index = 3
    Left = 7215
    Top = 2805
    Width = 1050
    Height = 675
    TabIndex = 89
  End
  Begin BtnEnh CmFgrid
    Index = 4
    Left = 7215
    Top = 3480
    Width = 1050
    Height = 675
    TabIndex = 90
  End
  Begin BtnEnh CmFgrid
    Index = 6
    Left = 7215
    Top = 4155
    Width = 1050
    Height = 675
    TabIndex = 91
  End
  Begin BtnEnh CmFgrid
    Index = 5
    Left = 7215
    Top = 4830
    Width = 1050
    Height = 675
    TabIndex = 92
  End
  Begin Frame FrameGrpItem
    BackColor = &H80000003&
    Left = 8280
    Top = 1455
    Width = 6600
    Height = 5085
    TabIndex = 59
    BorderStyle = 0 'None
    Begin BtnEnh CmdCatType
      Index = 0
      Left = 0
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 60
    End
    Begin BtnEnh CmdCatType
      Index = 1
      Left = 1875
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 61
    End
    Begin BtnEnh CmdCatType
      Index = 2
      Left = 3750
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 62
    End
    Begin BtnEnh CmdCatType
      Index = 4
      Left = 1875
      Top = 600
      Width = 1875
      Height = 615
      TabIndex = 63
    End
    Begin BtnEnh CmdCatType
      Index = 5
      Left = 3750
      Top = 600
      Width = 1875
      Height = 615
      TabIndex = 64
    End
    Begin BtnEnh SSPNext
      Left = 5640
      Top = 600
      Width = 960
      Height = 615
      TabIndex = 65
    End
    Begin BtnEnh SSPPrevious
      Left = 5640
      Top = 0
      Width = 960
      Height = 600
      TabIndex = 66
    End
    Begin BtnEnh CmdCatType
      Index = 3
      Left = 0
      Top = 600
      Width = 1875
      Height = 615
      TabIndex = 67
    End
    Begin BtnEnh SSPGroup
      Index = 0
      Left = 15
      Top = 300
      Width = 1560
      Height = 945
      Visible = 0   'False
      TabIndex = 69
    End
    Begin BtnEnh SSPItem
      Index = 0
      Left = 15
      Top = 300
      Width = 1560
      Height = 945
      Visible = 0   'False
      TabIndex = 68
    End
  End
  Begin Label LblPendingKot
    ForeColor = &HC00000&
    Left = 8250
    Top = 6600
    Width = 4110
    Height = 345
    TabIndex = 123
    Alignment = 2 'Center
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
  Begin Label LblState
    BackColor = &HFFFFFF&
    ForeColor = &HFF&
    Left = 8550
    Top = 30
    Width = 2595
    Height = 285
    TabIndex = 16
    Alignment = 2 'Center
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
  Begin Label LblKotNm
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3915
    Top = 30
    Width = 1725
    Height = 285
    TabIndex = 71
    Alignment = 2 'Center
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
  Begin Label lblSession
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HC00000&
    Left = 2295
    Top = 30
    Width = 1665
    Height = 315
    TabIndex = 20
    Alignment = 2 'Center
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 60
    Top = 30
    Width = 2115
    Height = 270
    TabIndex = 15
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    BackColor = &HFFFFFF&
    Left = 0
    Top = 0
    Width = 11205
    Height = 345
    TabIndex = 70
  End
  Begin Label Label1
    Caption = "Pax"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2115
    Top = 900
    Width = 375
    Height = 240
    TabIndex = 39
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
    Caption = "Member"
    Index = 11
    ForeColor = &HFF0000&
    Left = 30
    Top = 1170
    Width = 780
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
    Caption = "Comment3"
    Index = 9
    ForeColor = &H80&
    Left = 15
    Top = 8595
    Width = 1020
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
  Begin Label Label1
    Caption = "Comment2"
    Index = 8
    ForeColor = &H80&
    Left = 15
    Top = 8325
    Width = 1020
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
  Begin Label Label1
    Caption = "Comment1"
    Index = 7
    ForeColor = &H80&
    Left = 15
    Top = 8055
    Width = 1020
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
  Begin Label Label1
    Caption = " NC Category"
    Index = 4
    ForeColor = &HFF0000&
    Left = 9405
    Top = 1170
    Width = 1245
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "Remark"
    Index = 0
    BackColor = &H80&
    ForeColor = &HFF0000&
    Left = 6090
    Top = 885
    Width = 735
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
  Begin Label Label1
    Caption = "Server"
    Index = 5
    ForeColor = &HFF0000&
    Left = 3030
    Top = 900
    Width = 630
    Height = 240
    TabIndex = 14
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
    Caption = "Table Code"
    Index = 2
    BackColor = &H80&
    ForeColor = &HFF0000&
    Left = 15
    Top = 915
    Width = 1095
    Height = 240
    TabIndex = 13
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
    Caption = "KOT#"
    Index = 3
    ForeColor = &H40&
    Left = 19680
    Top = 7425
    Width = 465
    Height = 225
    Visible = 0   'False
    TabIndex = 12
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &H40&
    Left = 19710
    Top = 7650
    Width = 390
    Height = 225
    Visible = 0   'False
    TabIndex = 11
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H40&
    Left = 19710
    Top = 7965
    Width = 630
    Height = 225
    Visible = 0   'False
    TabIndex = 10
    Alignment = 1 'Right Justify
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
End

Attribute VB_Name = "RsTouchScreenTOKENEntry"

Private global_126 As Integer
Private global_112 As Long
Private global_116 As Long
Private MasterFormExit As Integer
Private global_276 As Long
Private global_196 As Long
Private global_120 As Long
Private global_264 As Long

Private Sub CmNC_UnknownEvent_9 '1187EB4
  'Data Table: 58F128
  Dim var_8E As Integer
  Dim var_AC As String
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_D4 As TextBox
  Dim var_C8 As Variant
  Dim var_94 As Variant
  loc_1187ADB: var_8E = Cancel
  loc_1187AE4: If Not (var_8E = 0) Then
  loc_1187AED:   If Not (var_8E = 1) Then
  loc_1187AF6:     If Not (var_8E = 2) Then
  loc_1187AFF:       If Not (var_8E = 3) Then
  loc_1187B08:         If Not (var_8E = 4) Then
  loc_1187B11:           If Not (var_8E = 5) Then
  loc_1187B1A:             If Not (var_8E = 6) Then
  loc_1187B23:               If Not (var_8E = 7) Then
  loc_1187B2C:                 If Not (var_8E = 8) Then
  loc_1187B35:                   If Not (var_8E = 9) Then
  loc_1187B3E:                     If Not (var_8E = &HA) Then
  loc_1187B47:                       If Not (var_8E = &HB) Then
  loc_1187B50:                         If Not (var_8E = &HC) Then
  loc_1187B59:                           If Not (var_8E = &HD) Then
  loc_1187B62:                             If Not (var_8E = &HE) Then
  loc_1187B6B:                               If Not (var_8E = &HF) Then
  loc_1187B74:                                 If Not (var_8E = &H10) Then
  loc_1187B7D:                                   If Not (var_8E = &H11) Then
  loc_1187B86:                                     If Not (var_8E = &H12) Then
  loc_1187B8F:                                       If Not (var_8E = &H13) Then
  loc_1187B98:                                         If Not (var_8E = &H14) Then
  loc_1187BA1:                                           If Not (var_8E = &H15) Then
  loc_1187BAA:                                             If Not (var_8E = &H16) Then
  loc_1187BB3:                                               If Not (var_8E = &H17) Then
  loc_1187BBC:                                                 If Not (var_8E = &H18) Then
  loc_1187BC5:                                                   If (var_8E = &H19) Then
  loc_1187BC8:                                                   End If
  loc_1187BC8:                                                 End If
  loc_1187BC8:                                               End If
  loc_1187BC8:                                             End If
  loc_1187BC8:                                           End If
  loc_1187BC8:                                         End If
  loc_1187BC8:                                       End If
  loc_1187BC8:                                     End If
  loc_1187BC8:                                   End If
  loc_1187BC8:                                 End If
  loc_1187BC8:                               End If
  loc_1187BC8:                             End If
  loc_1187BC8:                           End If
  loc_1187BC8:                         End If
  loc_1187BC8:                       End If
  loc_1187BC8:                     End If
  loc_1187BC8:                   End If
  loc_1187BC8:                 End If
  loc_1187BC8:               End If
  loc_1187BC8:             End If
  loc_1187BC8:           End If
  loc_1187BC8:         End If
  loc_1187BC8:       End If
  loc_1187BC8:     End If
  loc_1187BC8:   End If
  loc_1187BD2:   Set var_94 = Me.CmNC
  loc_1187BD8:   Call 0.Method_CmNC_UnknownEvent_90 (Cancel, var_98)
  loc_1187BE0:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_8E)
  loc_1187BE8:   var_AC = CStr()
  loc_1187BF0:   var_86 = Asc(var_AC)
  loc_1187C10:   var_8C = CStr(Chr(CLng(var_86)))
  loc_1187C1C:   Me.MoveFirst
  loc_1187C40:   Set var_94 = Me.TxtNCTOKEN
  loc_1187C46:   Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98, var_AC, "NcType Like '")
  loc_1187C4E:   0 = var_98.Text
  loc_1187C6E:   Me.Find 1 & var_AC & var_8C & "", var_C8, var_86
  loc_1187CAE:   If ((Me.BOF = 0) And (Me.EOF = 0)) Then
  loc_1187CBF:     Set var_94 = Me.TxtNCTOKEN
  loc_1187CC5:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98)
  loc_1187CE7:     Set var_D0 = Me.TxtNCTOKEN
  loc_1187CED:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_D4)
  loc_1187CF5:     var_D4.Text = var_98.Text & var_8C
  loc_1187D2E:     Me.FGNCType.Row = CVar(CLng(Me.Bookmark))
  loc_1187D4C:     Me.FGNCType.Col = 1
  loc_1187D54:   End If
  loc_1187D57: Else
  loc_1187D5F:   If (var_8E = CInt(&H1A)) Then
  loc_1187D70:     Set var_94 = Me.TxtNCTOKEN
  loc_1187D76:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98)
  loc_1187D7E:     var_98.Text = vbNullString
  loc_1187D8D:   Else
  loc_1187D95:     If (var_8E = CInt(&H1B)) Then
  loc_1187DAB:       var_C8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_1187DDC:       Set var_D0 = Me.Txt
  loc_1187DE2:       Call 0.Method_CmNC_UnknownEvent_90 (CInt(7), var_D4, CStr(Me.FGNCType.TextMatrix)))
  loc_1187DEA:       var_D4.Text = 1
  loc_1187E17:       var_C8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_1187E48:       Set var_D0 = Me.Txt
  loc_1187E4E:       Call 0.Method_CmNC_UnknownEvent_90 (CInt(7), var_D4, CStr(Me.FGNCType.TextMatrix)))
  loc_1187E56:       var_D4.Tag = 0
  loc_1187E7C:       Me.Frame.Visible = False
  loc_1187E88:       Set var_94 = Me.CmChngSteward
  loc_1187E8E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_C8)
  loc_1187EA1:       Me.FrameGrpItem.Enabled = CBool(var_C8)
  loc_1187EB0:     End If
  loc_1187EB0:   End If
  loc_1187EB0: End If
  loc_1187EB0: Exit Sub
End Sub

Private Sub CmdQty_UnknownEvent_9 '1266204
  'Data Table: 58F128
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_C0 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_12C As MSHFlexGrid
  Dim var_13C As Variant
  Dim var_14C As Variant
  loc_1265C97: var_86 = Cancel
  loc_1265CA0: If Not (var_86 = 0) Then
  loc_1265CA9:   If Not (var_86 = 1) Then
  loc_1265CB2:     If Not (var_86 = 2) Then
  loc_1265CBB:       If Not (var_86 = 3) Then
  loc_1265CC4:         If Not (var_86 = 4) Then
  loc_1265CCD:           If Not (var_86 = 5) Then
  loc_1265CD6:             If Not (var_86 = 6) Then
  loc_1265CDF:               If Not (var_86 = 7) Then
  loc_1265CE8:                 If Not (var_86 = 8) Then
  loc_1265CF1:                   If (var_86 = 9) Then
  loc_1265CF4:                   End If
  loc_1265CF4:                 End If
  loc_1265CF4:               End If
  loc_1265CF4:             End If
  loc_1265CF4:           End If
  loc_1265CF4:         End If
  loc_1265CF4:       End If
  loc_1265CF4:     End If
  loc_1265CF4:   End If
  loc_1265D18:   If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_1265D3A:     Set var_BC = Me.CmdQty
  loc_1265D40:     Call 0.Method_CmdQty_UnknownEvent_90 (Cancel, var_C0)
  loc_1265D48:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1265D61:     Me.TxtQty.Text = CStr(var_86)
  loc_1265D80:   Else
  loc_1265D8F:     Me.TxtQty.MaxLength = 5
  loc_1265DB6:     Set var_BC = Me.CmdQty
  loc_1265DBC:     Call 0.Method_CmdQty_UnknownEvent_90 (Cancel, var_C0)
  loc_1265DC4:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1265DDD:     Me.TxtQty.Text = CStr()
  loc_1265DF9:   End If
  loc_1265DFC: Else
  loc_1265E02:   If (var_86 = &HA) Then
  loc_1265E2F:     If (InStr(1, CVar(Me.TxtQty), ".", 0) = 0) Then
  loc_1265E51:       Set var_C0 = Me.TxtQty
  loc_1265E57:       var_C0.MaxLength = (Me.TxtQty.MaxLength + 1)
  loc_1265E82:       Set var_BC = Me.CmdQty
  loc_1265E88:       Call 0.Method_CmdQty_UnknownEvent_90 (Cancel, var_C0)
  loc_1265E90:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1265EA9:       Me.TxtQty.Text = CStr()
  loc_1265F04:       var_128 = (Len(Left(CVar(Me.TxtQty), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 3)
  loc_1265F14:       Me.TxtQty.MaxLength = CLng(var_128)
  loc_1265F2D:     End If
  loc_1265F30:   Else
  loc_1265F38:     If (var_86 = CInt(&HB)) Then
  loc_1265F48:       Me.TxtQty.Text = vbNullString
  loc_1265F53:     Else
  loc_1265F5B:       If (var_86 = CInt(&HD)) Then
  loc_1265F7F:         Set var_C0 = Me.LblIndex
  loc_1265FA6:         If ((Me.LblVtype.Caption = "No.of Person") And (CDbl(Val(var_C0.Caption)) = CDbl(0))) Then
  loc_1265FB5:           Me.FrameGrpItem.Enabled = True
  loc_1265FCB:           Me.FGrid.Enabled = True
  loc_1266010:           Set var_BC = Me.Txt
  loc_1266016:           Call 0.Method_CmdQty_UnknownEvent_90 (CInt(&HD), var_C0, CStr(Format(CVar(Me.TxtQty), "0")))
  loc_126601E:           var_C0.Text = 1
  loc_126603B:         Else
  loc_1266083:           If ((Me.LblVtype.Caption = "Qty") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_126608A:             Set var_12C = Me.FGrid
  loc_1266099:             var_98 = CVar(CLng(var_12C.RowSel)) 'Long
  loc_12660A1:             var_13C = CVar(CLng(0)) 'Long
  loc_12660C6:             If (CStr(var_12C.TextMatrix)) = vbNullString) Then
  loc_12660C9:               Exit Sub
  loc_12660CA:             End If
  loc_12660EF:             If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(2)) Then
  loc_1266112:               If (Me.TxtQty.Text = vbNullString) Then
  loc_1266122:                 Me.TxtQty.Text = "1"
  loc_126612A:               End If
  loc_126613D:               var_E4 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1266145:               var_14C = CVar(CLng(7)) 'Long
  loc_1266172:               var_118 = CVar(CStr(Format(CVar(Me.TxtQty), "0.000"))) 'String
  loc_1266179:               LateIdCallSt
  loc_1266191:             End If
  loc_1266193:             Set var_12C = Nothing 
  loc_1266197:           End If
  loc_1266197:         End If
  loc_12661A4:         Me.TxtQty.Text = vbNullString
  loc_12661B8:         Me.FrameQty.Visible = False
  loc_12661C3:       Else
  loc_12661C9:         If (var_86 = &HC) Then
  loc_12661D8:           Me.FrameQty.Visible = False
  loc_12661E3:         Else
  loc_12661EB:           If (var_86 = CInt(&HC)) Then
  loc_12661FA:             Me.FrameGrpItem.Enabled = True
  loc_1266202:           End If
  loc_1266202:         End If
  loc_1266202:       End If
  loc_1266202:     End If
  loc_1266202:   End If
  loc_1266202: End If
  loc_1266202: Exit Sub
End Sub

Private Sub FGNCType_UnknownEvent_9 'E981CC
  'Data Table: 58F128
  Dim var_F4 As TextBox
  loc_E981A0: Set var_F0 = Me.TxtNCTOKEN
  loc_E981A6: Call 0.Method_FGNCType_UnknownEvent_90 (CInt(1), var_F4, CStr(Me.FGNCType.TextMatrix)))
  loc_E981AE: var_F4.Text = 1
  loc_E981C8: Exit Sub
  loc_E981C9: If CVar(CLng(Me.FGNCType.Row)) Then Exit Sub
  loc_E981C9: End If
End Sub

Private Sub FGPoint_UnknownEvent_9 'E85EB8
  'Data Table: 58F128
  loc_E85E64: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E85E67:   Call DGTable_UnknownEvent_9()
  loc_E85E6C: End If
  loc_E85E88: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E85E8B:   Call DGItem_UnknownEvent_9()
  loc_E85E90: End If
  loc_E85EAC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E85EAF:   Call DGRest_UnknownEvent_9()
  loc_E85EB4: End If
  loc_E85EB4: Exit Sub
  loc_E85EB5: CExtInstUnk
End Sub

Private Sub SSPPrevious_UnknownEvent_9 '10F00AC
  'Data Table: 58F128
  Dim Me As Variant
  loc_10EFD8F: If (global_228 = "Item") Then
  loc_10EFD98:   global_228 = "Item"
  loc_10EFDB3:   If (Me.AbsolutePosition = -3) Then
  loc_10EFDC1:     If (global_236 > CInt(&H10)) Then
  loc_10EFDE5:       Me.AbsolutePosition = CLng((((global_236 - (global_236 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10EFDFE:       Set var_94 = Me.SSPItem
  loc_10EFE21:       Call Proc_333_76_1284680(Me.SSPItem, CInt(4), global_244)
  loc_10EFE2D:       global_224 = CInt(var_A4)
  loc_10EFE3E:     End If
  loc_10EFE41:   Else
  loc_10EFE70:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EFE88:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10EFE96:         Me.AbsolutePosition = 1
  loc_10EFE9E:       Else
  loc_10EFEC4:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10EFEC9:       End If
  loc_10EFF00:       Call Proc_333_76_1284680(Me.SSPItem, CInt(4), global_244, CInt(4), Me.SSPItem)
  loc_10EFF0C:       global_224 = CInt(var_A4)
  loc_10EFF1D:     End If
  loc_10EFF1D:   End If
  loc_10EFF20: Else
  loc_10EFF26:   global_228 = "Group"
  loc_10EFF41:   If (Me.AbsolutePosition = -3) Then
  loc_10EFF4F:     If (global_232 > CInt(&H10)) Then
  loc_10EFF73:       Me.AbsolutePosition = CLng((((global_232 - (global_232 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10EFFAF:       Call Proc_333_76_1284680(Me.SSPGroup, CInt(4), global_248, CInt(4), Me.SSPGroup, var_A4)
  loc_10EFFBB:       global_224 = CInt(var_A4)
  loc_10EFFCC:     End If
  loc_10EFFCF:   Else
  loc_10EFFFE:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10F0016:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10F0024:         Me.AbsolutePosition = 1
  loc_10F002C:       Else
  loc_10F0052:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10F0057:       End If
  loc_10F008E:       Call Proc_333_76_1284680(Me.SSPGroup, CInt(4), global_248, CInt(4), Me.SSPGroup, var_A4, global_224)
  loc_10F009A:       global_224 = CInt(var_A4)
  loc_10F00AB:     End If
  loc_10F00AB:   End If
  loc_10F00AB: End If
  loc_10F00AB: Exit Sub
End Sub

Private Sub SSPNext_UnknownEvent_9 'F33B98
  'Data Table: 58F128
  Dim Me As Variant
  loc_F33A8B: If (global_228 = "Item") Then
  loc_F33A94:   global_228 = "Item"
  loc_F33AAF:   If (Me.AbsolutePosition > 0) Then
  loc_F33AB8:     Me.MoveNext
  loc_F33AD1:     Set var_94 = Me.SSPItem
  loc_F33AF4:     Call Proc_333_76_1284680(Me.SSPItem, CInt(4), global_244)
  loc_F33B00:     global_224 = CInt(var_A4)
  loc_F33B11:   End If
  loc_F33B14: Else
  loc_F33B1A:   global_228 = "Group"
  loc_F33B35:   If (Me.AbsolutePosition > 0) Then
  loc_F33B3E:     Me.MoveNext
  loc_F33B7A:     Call Proc_333_76_1284680(Me.SSPGroup, CInt(4), global_248, CInt(4), Me.SSPGroup)
  loc_F33B86:     global_224 = CInt(var_A4)
  loc_F33B97:   End If
  loc_F33B97: End If
  loc_F33B97: Exit Sub
End Sub

Private Sub CmChngMember_UnknownEvent_9 'F8E484
  'Data Table: 58F128
  Dim var_B4 As String
  Dim var_88 As Recordset15
  Dim var_CC As Fields15
  Dim var_C8 As Variant
  Dim var_D8 As TextBox
  Dim var_D0 As TextBox
  loc_F8E33D: RsTouchScreenSteward.pOpenAs = "Member"
  loc_F8E355: Call 0.Method_arg_2B0 (1)
  loc_F8E37C: var_B4 = "Select Name,CardNo From SubGroup where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And SubCode='" & MemVar_1F92230
  loc_F8E38C: RsTouchScreenSteward.Connection15.Execute var_B4 & "'", var_C8, -1
  loc_F8E397: Set var_88 = var_CC
  loc_F8E3BA: var_CC = var_88.Fields
  loc_F8E3C2: var_D0 = var_CC.Item("Name")
  loc_F8E3E1: Set var_D4 = Me.Txt
  loc_F8E3E7: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HB), var_D8)
  loc_F8E3EF: var_D8.Text = Proc_6_38_E68A98(CVar(var_D0), var_CC)
  loc_F8E411: Set var_CC = Me.Txt
  loc_F8E417: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HB), var_D0)
  loc_F8E41F: var_D0.Tag = MemVar_1F92230
  loc_F8E461: Set var_D4 = Me.Txt
  loc_F8E467: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HC), var_D8)
  loc_F8E46F: var_D8.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))
  loc_F8E483: Exit Sub
End Sub

Private Sub HeadExit_UnknownEvent_9 'E16D5C
  'Data Table: 58F128
  loc_E16D51: Me.Global.Unload Me
  loc_E16D59: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0D868
  'Data Table: 58F128
  loc_E0D859: Call FGrid_UnknownEvent_C()
  loc_E0D863: global_126 = 0
  loc_E0D866: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F7A6F4
  'Data Table: 58F128
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As MSHFlexGrid
  loc_F7A5AC: Set var_88 = Me.TopCtrl1
  loc_F7A5B2: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_F7A5CB: If (CStr() = "Browse") Then
  loc_F7A5CE:   Exit Sub
  loc_F7A5CF: End If
  loc_F7A5E2: var_A0 = CLng(Me.FGrid.Col)
  loc_F7A5F2: If (var_A0 = CLng(4)) Then
  loc_F7A5F5:   GoTo loc_F7A6DB
  loc_F7A5F8: End If
  loc_F7A5FF: If (var_A0 = CLng(2)) Then
  loc_F7A602:   GoTo loc_F7A6DB
  loc_F7A605: End If
  loc_F7A60C: If (var_A0 = CLng(6)) Then
  loc_F7A622:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7A62A:   var_D0 = CVar(CLng(&HA)) 'Long
  loc_F7A65D:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_F7A660:     Exit Sub
  loc_F7A661:   End If
  loc_F7A66D:   RsTouchScreenSteward.pRestCode = LocalRestCode
  loc_F7A67B:   RsTouchScreenSteward.pOpenAs = "Description"
  loc_F7A684:   var_B0 = 1
  loc_F7A693:   Call 0.Method_arg_2B0 (var_B0, var_C0, var_D0)
  loc_F7A69C:   Set var_88 = var_A0(var_B0)
  loc_F7A6AB:   var_B0 = CVar(CLng(RsTouchScreenSteward.FGrid.Row)) 'Long
  loc_F7A6B3:   var_D0 = CVar(CLng(6)) 'Long
  loc_F7A6C3:   Set var_E4 = Me.FGrid
  loc_F7A6C9:   LateIdCallSt
  loc_F7A6DB:   ' Referenced from: F7A602
  loc_F7A6DB:   ' Referenced from: F7A5F5
  loc_F7A6DB: End If
  loc_F7A6E5: If (CLng(Cancel) <> &HD) Then
  loc_F7A6ED:   global_126 = &HFF
  loc_F7A6F0: End If
  loc_F7A6F0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E5275C
  'Data Table: 58F128
  loc_E5272E: If (Cancel = 1) Then
  loc_E52747:   global_112 = CLng(Me.FGrid.TopRow)
  loc_E52757:   global_116 = CLng(arg_18)
  loc_E5275A: End If
  loc_E5275A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_F 'F2BE5C
  'Data Table: 58F128
  Dim var_A8 As Variant
  loc_F2BD52: If (Cancel = 1) Then
  loc_F2BD6E:   If (CDbl(Abs(((arg_18 - CDbl(global_116)) / CDbl(global_120)))) >= CDbl(1)) Then
  loc_F2BD7D:     If (CDbl(arg_18) > CDbl(global_116)) Then
  loc_F2BD9F:       If (CLng(Me.FGrid.TopRow) > 1) Then
  loc_F2BDBB:         var_A8 = CVar((CLng(Me.FGrid.TopRow) - 1)) 'Long
  loc_F2BDCA:         Me.FGrid.TopRow = var_A8
  loc_F2BDD9:       End If
  loc_F2BDDC:     Else
  loc_F2BE17:       If ((CLng(Me.FGrid.TopRow) + 1) < CLng(Me.FGrid.Rows)) Then
  loc_F2BE33:         var_A8 = CVar((CLng(Me.FGrid.TopRow) + 1)) 'Long
  loc_F2BE42:         Me.FGrid.TopRow = var_A8
  loc_F2BE51:       End If
  loc_F2BE51:     End If
  loc_F2BE58:     global_116 = CLng(arg_18)
  loc_F2BE5B:   End If
  loc_F2BE5B: End If
  loc_F2BE5B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'FA6FE8
  'Data Table: 58F128
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_FA6E69: Me.TxtQty.Text = vbNullString
  loc_FA6E7E: Me.TxtQty.Tag = vbNullString
  loc_FA6E93: Me.LblVtype.Caption = vbNullString
  loc_FA6E9F: Set var_88 = Me.TopCtrl1
  loc_FA6EA5: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_FA6EBE: If (CStr() = "Browse") Then
  loc_FA6EC1:   Exit Sub
  loc_FA6EC2: End If
  loc_FA6ED5: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA6EDD: var_CC = CVar(CLng(&HA)) 'Long
  loc_FA6F10: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FA6F13:   Exit Sub
  loc_FA6F14: End If
  loc_FA6F27: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA6F2F: var_CC = CVar(CLng(0)) 'Long
  loc_FA6F62: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FA6F65:   Exit Sub
  loc_FA6F66: End If
  loc_FA6F89: If (CLng(Me.FGrid.Col) = CLng(7)) Then
  loc_FA6F98:   Me.FrameQty.Visible = True
  loc_FA6FAD:   Me.TxtQty.Text = vbNullString
  loc_FA6FC6:   Me.TxtQty.Tag = CStr(2)
  loc_FA6FDE:   Me.LblVtype.Caption = "Qty"
  loc_FA6FE6: End If
  loc_FA6FE6: Exit Sub
End Sub

Private Sub Form_Load() '152321C
  'Data Table: 58F128
  Dim var_A8 As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_58F14B As Connection15
  Dim var_AC As Recordset15
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim MemVar_1F92E80 As String
  Dim var_104 As Variant
  Dim var_B8 As String
  Dim Me As Variant
  Dim var_EC As Variant
  Dim var_134 As Variant
  Dim var_11C As Variant
  Dim var_1EC As Integer
  Dim var_120 As Recordset15
  Dim var_1DC As Fields15
  Dim var_1F0 As Field20
  Dim var_114 As Variant
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As String
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  loc_1522304: On Error Goto loc_1523214
  loc_1522307: Call Proc_333_87_101DA4C()
  loc_1522313: Call 0.Method_arg_7C (CDbl(0))
  loc_152231F: Call 0.Method_arg_74 (CDbl(0))
  loc_1522335: If (OpenMode = 1) Then
  loc_1522346:   LocalRestCode = pRestCode
  loc_152234D: End If
  loc_1522350: MemVar_1F92E80 = "***P"
  loc_152237D: var_BC = "SELECT Param_Str AS UPrivilege FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128 & "' AND [Option]='"
  loc_1522386: Call 0.Method_arg_50 (var_B8, var_BC, var_EC)
  loc_152238F: var_C0 = -1 & var_B8
  loc_15223B0: unk_58F14B.Execute var_C0 & "' And OutletCode='" & LocalRestCode & "'", var_F0, 
  loc_15223BB: Set var_AC = var_F0
  loc_15223ED: If (var_AC.RecordCount > 0) Then
  loc_152240A:   var_F4 = var_AC.Fields.Item("UPrivilege")
  loc_152241B:   MemVar_1F92E80 = CStr(var_F4.Value)
  loc_1522429: End If
  loc_152242E: Set var_AC = Nothing
  loc_1522460: global_76 = LocalRestCode
  loc_1522474: Me.LblRest.Caption = global_80
  loc_152248A: var_EC = Trim(global_68)
  loc_152249D: If CBool(var_EC <> "Room Service") Then
  loc_15224AD:   Set var_F0 = Me.Label1
  loc_15224B3:   Call 0.Method_Form_Load0 (CInt(7), var_F4, 0, Proc_96_17_FDBD80(LocalRestCode, global_68, global_80))
  loc_15224BB:   var_F4.Visible = global_72
  loc_15224D4:   Set var_F0 = Me.Label1
  loc_15224DA:   Call 0.Method_Form_Load0 (CInt(8), var_F4, 0)
  loc_15224E2:   var_F4.Visible = global_84
  loc_15224FB:   Set var_F0 = Me.Label1
  loc_1522501:   Call 0.Method_Form_Load0 (CInt(9), var_F4)
  loc_1522509:   var_F4.Visible = False
  loc_1522522:   Set var_F0 = Me.Txt
  loc_1522528:   Call 0.Method_Form_Load0 (CInt(8), var_F4)
  loc_1522530:   var_F4.Visible = False
  loc_1522549:   Set var_F0 = Me.Txt
  loc_152254F:   Call 0.Method_Form_Load0 (CInt(9), var_F4)
  loc_1522557:   var_F4.Visible = False
  loc_1522570:   Set var_F0 = Me.Txt
  loc_1522576:   Call 0.Method_Form_Load0 (CInt(&HA), var_F4)
  loc_152257E:   var_F4.Visible = False
  loc_152258A: End If
  loc_15225A1: var_A8 = "Select Distinct IG.Code,IG.Name as Name,IC.CatType,IG.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & LocalRestCode
  loc_15225B6: var_B8 = var_A8 & "' And (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_15225BF: unk_58F14B.Execute var_B8, var_EC, -1
  loc_1522600: var_A8 = "Select I.Code,I.Name as Name,I.ItemGroup,IC.CatType,i.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & LocalRestCode
  loc_1522615: var_B8 = var_A8 & "' And (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_152261E: unk_58F14B.Execute var_B8, var_EC, -1
  loc_152262F: Set global_244 = var_F0
  loc_1522659: var_EC = CVar(Me.RecordCount) 'Long
  loc_1522660: Proc_6_39_E7C810(var_114, var_EC, var_F0)
  loc_152266C: global_232 = CInt(var_114)
  loc_152268A: Set var_F4 = Me.SSPItem
  loc_15226AD: Call Proc_333_76_1284680(Me.SSPGroup, CInt(4), Me.SSPGroup, CInt(4), var_F4)
  loc_15226B9: global_224 = CInt(var_EC)
  loc_15226D4: Set global_188 = New 
  loc_15226E6: Me.SSPItem.CursorLocation = 3
  loc_152270E: Me.Open "SELECT NcPer,NCType FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F92044), 3
  loc_152271C: CVarUnk
  loc_1522721: VerifyVarObj
  loc_1522727: Set var_F0 = Me.FGNCType
  loc_152272D: LateIdStAd
  loc_152273F: Set var_124 = Me.FGNCType
  loc_1522742: var_DC = 0
  loc_152274B: var_134 = 0
  loc_1522757: LateIdCallSt
  loc_152275F: var_DC = 1
  loc_1522768: var_134 = &HE74
  loc_1522774: LateIdCallSt
  loc_152277C: var_DC = 1
  loc_152278B: var_134 = CVar(CInt(1)) 'Integer
  loc_1522792: LateIdCallSt
  loc_152279A: var_DC = 1
  loc_15227A9: var_134 = CVar(CInt(1)) 'Integer
  loc_15227B0: LateIdCallSt
  loc_15227C7: var_EC = Me.FGNCType.Rows
  loc_15227DD: For var_148 = 1 To CInt((CLng(var_EC) - 1)): var_96 = var_148 'Integer
  loc_15227E7:   var_DC = CVar(CLng(var_96)) 'Long
  loc_15227EC:   var_134 = &H320
  loc_15227F8:   LateIdCallSt
  loc_1522803: Next var_148 'Integer
  loc_152280A: Set var_124 = Nothing 
  loc_152280E: Call Proc_333_93_11FE478()
  loc_152281D: Set global_92 = New 
  loc_152282F: Me.var_EC.CursorLocation = 3
  loc_1522837: var_DC = MemVar_1F920EC
  loc_152283F: Proc_6_7_F25D88(var_EC)
  loc_152284A: var_134 = 0
  loc_152287A: unk_58F14B.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_168, -1
  loc_1522882: var_F0 = var_F0.Fields
  loc_152288A: var_134 = var_F4.Item(var_F4)
  loc_1522892: var_11C = var_11C.Value
  loc_152289D: var_1EC = 0
  loc_15228BD: var_B8 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_15228CD: unk_58F14B.Execute var_B8 & "'", var_1D8, -1
  loc_15228D5: var_120 = var_120.Fields
  loc_15228DD: var_1EC = var_1DC.Item(var_1DC)
  loc_15228E5: var_1F0 = var_1F0.Value
  loc_1522908: var_A8 = "Select Distinct K.DocId as SearchCode,K.DocID,K.RESTCODE,K.SITE_CODE,K.LOGSITE_CODE  From TOKEN K WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_152290F: var_114 = CVar(var_A8 & "' AND (K.Pending='Y' AND NCTOKEN='N' And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") 'String
  loc_1522921: var_188 = (" And DelFlag NOT IN ('Y') OR DelFlag IS NULL) AND (K.VType='T" + var_178)
  loc_1522949: Me.Open var_114 & var_EC & var_188 & "' OR K.VType='" & var_200 & "') Order by Docid", CVar(MemVar_1F92044), 3
  loc_152298F: var_A8 = "RESTCODE='" & LocalRestCode
  loc_1522996: var_EC = CVar(var_A8 & "'") 'String
  loc_15229A0: Me.Filter = var_EC
  loc_15229D0: Call 0.Method_arg_50 (var_A8, "SELECT COUNT(*) FROM LASTVOU WHERE  ENAME='", var_EC, -1, var_F0, var_F4, 0)
  loc_15229F7: unk_58F14B.Execute var_11C & var_A8 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_114, 1
  loc_15229FF: -1 = var_F0.Fields
  loc_1522A07: var_178 = var_F4.Item(var_200)
  loc_1522A0F: var_DC = var_11C.Value
  loc_1522A3C: If (var_114 > 0) Then
  loc_1522A77:   Call 0.Method_arg_50 (var_A8, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_EC, -1, var_F0, var_F4, 0)
  loc_1522A9E:   unk_58F14B.Execute var_11C & var_A8 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_114, "SearchCode='"
  loc_1522AA6:   0 = var_F0.Fields
  loc_1522AAE:   var_1A8 = var_F4.Item(1)
  loc_1522AB6:    = var_11C.Value
  loc_1522AD5:   Me.Find CStr(var_114 & "'"), , 
  loc_1522AFD: End If
  loc_1522B14: If (Me.RecordCount > 0) Then
  loc_1522B20:   var_116 = Me.EOF
  loc_1522B2B:   If (var_116 = &HFF) Then
  loc_1522B34:     Me.MoveLast
  loc_1522B39:   End If
  loc_1522B39: End If
  loc_1522B42: Call 0.Method_arg_160 (var_F0)
  loc_1522B50: Call 0.Method_arg_164 (var_F0)
  loc_1522B7B: Call Proc_333_88_104D048(Proc_5_1_100CB50("INI", Me))
  loc_1522B92: Set var_F0 = Me.CmdCatType
  loc_1522B98: Call 0.Method_Form_Load8 (var_116, var_96)
  loc_1522BA3: For var_244 = global_92 To var_116: 0 = var_244 'Integer
  loc_1522BBA:   Set var_F0 = Me.CmdCatType
  loc_1522BC0:   Call 0.Method_Form_Load0 (var_96, var_F4)
  loc_1522BC8:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_1522BD7: Next var_244 'Integer
  loc_1522BE7: Set var_F0 = Me.SSPPrevious
  loc_1522BED: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_1522BF8: var_DC = CVar(MemVar_1F921B0) 'String
  loc_1522C00: Set var_F0 = Me.SSPNext
  loc_1522C06: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(var_DC)
  loc_1522C19: Set var_F0 = Me.CmChngSteward
  loc_1522C1F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_1522C32: Set var_F0 = Me.CmNoOfPersons
  loc_1522C38: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_1522C4B: Set var_F0 = Me.CmChngToNC
  loc_1522C51: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_1522C64: Set var_F0 = Me.CmTransKOT
  loc_1522C6A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_1522C7D: Set var_F0 = Me.CmChngMember
  loc_1522C83: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_1522C9E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1522CAD: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1522CC0: Me.FrameQty.BackColor = CLng(MemVar_1F921B0)
  loc_1522CDB: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_1522CF1: Me.LblPendingKot.BackColor = CLng(MemVar_1F921B0)
  loc_1522D05: Set var_F0 = Me.CmFgrid
  loc_1522D0B: Call 0.Method_Form_Load8 (var_116, var_96)
  loc_1522D16: For var_248 =  To var_116: 0 = var_248 'Integer
  loc_1522D2D:   Set var_F0 = Me.CmFgrid
  loc_1522D33:   Call 0.Method_Form_Load0 (var_96, var_F4)
  loc_1522D3B:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_1522D4A: Next var_248 'Integer
  loc_1522D5D: Me.ChkNCTOKEN.BackColor = CLng(MemVar_1F921B0)
  loc_1522D73: Me.FrameGrpItem.BackColor = CLng(MemVar_1F921B0)
  loc_1522D7B: Call Proc_333_72_1273128()
  loc_1522D89: Set var_F0 = Me.SSPGroup
  loc_1522D8F: Call 0.Method_Form_Load0 (0)
  loc_1522D97: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_F4)
  loc_1522DB8: Me.FrameGrpItem.Width = ((CDbl(4) * CDbl(var_EC)) + CDbl(&H32))
  loc_1522DE6: If (Me.FrameGrpItem.Width < CDbl(6600)) Then
  loc_1522DF8:   Me.FrameGrpItem.Width = CDbl(6600)
  loc_1522E00: End If
  loc_1522E09: Set var_F0 = Me.SSPGroup
  loc_1522E0F: Call 0.Method_Form_Load0 (0)
  loc_1522E17: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_F4)
  loc_1522E3C: Set var_11C = Me.FrameGrpItem
  loc_1522E42: var_11C.Height = (((CDbl((CInt(4) + 1)) * CDbl(var_EC)) + CDbl(&H32)) + CDbl(300))
  loc_1522E56: var_104 = 0
  loc_1522E83: unk_58F14B.Execute "Select FreeiteminKOT from enviro where LogSite_code='" & MemVar_1F92078 & "'", var_EC, -1
  loc_1522E8B: var_F0 = var_F0.Fields
  loc_1522E93: var_104 = var_F4.Item(var_F4)
  loc_1522E9B: var_114 = CVar(var_11C) 'Address
  loc_1522EC3: If (Proc_6_38_E68A98(var_114) <> "Yes") Then
  loc_1522ED6:   Set var_F0 = Me.CmFgrid
  loc_1522EDC:   Call 0.Method_Form_Load0 (CInt(5), var_F4)
  loc_1522EE4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1522EF0: End If
  loc_1522F0B: var_B0 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1522F19: var_158 = CVar(var_B0 & MemVar_1F92078 & "') and V_Type='") 'String
  loc_1522F22: var_104 = 0
  loc_1522F42: var_B8 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_1522F49: var_BC = var_11C & "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND UNAME='" & MemVar_1F920C8 & "'"
  loc_1522F52: unk_58F14B.Execute var_BC, var_EC, -1
  loc_1522F5A: var_F0 = var_F0.Fields
  loc_1522F62: var_104 = var_F4.Item(var_F4)
  loc_1522F6A: var_11C = var_11C.Value
  loc_1522F89: unk_58F14B.Execute CStr(var_114 & var_114 & "' Order by Description"), var_158, var_188
  loc_1522F94: Set var_8C = var_120
  loc_1522FD4: If (var_8C.RecordCount > 0) Then
  loc_1523008:   global_152 = CStr(var_8C.Fields.Item(0).Value)
  loc_1523019: End If
  loc_152301E: Set var_88 = Nothing
  loc_1523026: Set var_8C = Nothing
  loc_152302D: Set var_94 = New 
  loc_1523038: Me.Recordset15.CursorLocation = 3
  loc_152306C: var_B4 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 & "'or LOGSITE_CODE='HO') and Code='" & LocalRestCode
  loc_152307A: var_94.Open CVar(var_B4 & "'"), CVar(MemVar_1F92044), 3
  loc_152309F: If (var_94.RecordCount > 0) Then
  loc_15230B9:   var_F4 = var_94.Fields.Item("MemberInfo")
  loc_15230C1:   var_EC = CVar(var_F4) 'Address
  loc_15230CA:   var_A8 = Proc_6_38_E68A98(var_EC, 1, -1)
  loc_15230DB:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 = "Y") Then
  loc_15230EB:     Set var_F0 = Me.Txt
  loc_15230F1:     Call 0.Method_Form_Load0 (CInt(&HB), var_F4, &HFF)
  loc_15230F9:     var_F4.Visible = True
  loc_1523110:     Set var_F0 = Me.Label1
  loc_1523116:     Call 0.Method_Form_Load0 (&HB, var_F4, &HFF)
  loc_152311E:     var_F4.Visible = var_120
  loc_1523137:     Set var_F0 = Me.Txt
  loc_152313D:     Call 0.Method_Form_Load0 (CInt(&HC), var_F4)
  loc_1523145:     var_F4.Visible = True
  loc_1523159:     Set var_F0 = Me.CmChngMember
  loc_152315F:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_1523184:     Proc_6_17_EAA2B0(var_EC, MemVar_1F92078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_158)
  loc_152318C:     var_114 = -1 & var_EC 
  loc_152319A:     unk_58F14B.Execute CStr(var_114), var_F0, var_11C
  loc_15231A5:     Set var_90 = var_F0
  loc_15231CB:     If (var_90.RecordCount > 0) Then
  loc_15231FC:       global_168 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemberVarificationInKOT")))
  loc_1523209:     End If
  loc_1523209:   End If
  loc_1523209: End If
  loc_1523209: Call Proc_333_85_16BB8F4()
  loc_152320E: Call Proc_333_69_127C710()
  loc_1523213: Exit Sub
  loc_1523214: ' Referenced from: 1522304
  loc_1523214: Proc_6_60_E62BC4()
  loc_1523219: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8C458
  'Data Table: 58F128
  loc_E8C3EB: Set global_100 = Nothing
  loc_E8C3FD: Set global_88 = Nothing
  loc_E8C40F: Set global_104 = Nothing
  loc_E8C421: Set global_96 = Nothing
  loc_E8C433: Set global_92 = Nothing
  loc_E8C445: Set global_188 = Nothing
  loc_E8C451: MasterFormExit = 0
  loc_E8C454: Exit Sub
End Sub

Private Sub Form_Activate() 'F8F848
  'Data Table: 58F128
  Dim var_90 As String
  Dim var_F8 As Variant
  Dim var_D4 As Integer
  Dim var_98 As String
  Dim unk_58F14B As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  loc_F8F72F: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_F8F73D: var_F8 = CVar(var_90 & MemVar_1F92078 & "') AND V_Type='") 'String
  loc_F8F746: var_D4 = 0
  loc_F8F766: var_98 = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_F8F776: unk_58F14B.Execute var_98 & "'", var_BC, -1
  loc_F8F77E: var_C0 = var_C0.Fields
  loc_F8F786: var_D4 = var_C4.Item(var_C4)
  loc_F8F78E: var_D8 = var_D8.Value
  loc_F8F796: var_108 = var_E8 & var_E8 
  loc_F8F7AD: unk_58F14B.Execute CStr(var_108 & "' Order by Description"), var_F8, var_14C
  loc_F8F7F8: If (var_150.RecordCount > 0) Then
  loc_F8F7FB:   GoTo loc_F8F83D
  loc_F8F7FE: End If
  loc_F8F817: MsgBox("TOKEN Not Configured for selected Restaurant", 0, var_E8, var_F8, var_108)
  loc_F8F834: Me.Global.Unload Me
  loc_F8F83C: Exit Sub
  loc_F8F83D: ' Referenced from: F8F7FB
  loc_F8F842: Set var_88 = Nothing
  loc_F8F845: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24414
  'Data Table: 58F128
  loc_E243F9: If (MasterFormExit = &HFF) Then
  loc_E24409:   Me.Global.Unload Me
  loc_E24411: End If
  loc_E24411: Exit Sub
  loc_E24412: Loop Until  'do at: E1F3FF
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E98120
  'Data Table: 58F128
  Dim var_88 As Frame
  loc_E980A0: On Error Goto loc_E98118
  loc_E980A7: Set var_88 = Me.TopCtrl1
  loc_E980AD: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_E980C6: If (CStr() = "Edit") Then
  loc_E980DA:   If ((CLng(KeyCode) = &H4D) And (Shift = 2)) Then
  loc_E980EA:     Me.Frame.Caption = "Go"
  loc_E980F2:   End If
  loc_E980F2: End If
  loc_E980F2: Call Proc_333_74_DFBE6C()
  loc_E9810F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E98117: Exit Sub
  loc_E98118: ' Referenced from: E980A0
  loc_E98118: Proc_6_60_E62BC4(Shift)
  loc_E9811D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '11B2C90
  'Data Table: 58F128
  Dim var_9C As Variant
  Dim var_114 As Double
  Dim var_104 As String
  Dim var_10C As String
  Dim unk_58F14B As Connection15
  Dim var_94 As Variant
  Dim var_AC As Variant
  Dim var_11C As Variant
  Dim var_12C As Integer
  Dim MemVar_1F9201C As String
  Dim var_134 As TextBox
  loc_11B287C: On Error Goto loc_11B2C87
  loc_11B28A2: Call Proc_333_88_104D048(Proc_5_1_100CB50("ADD", Me))
  loc_11B28AD: Call Proc_333_69_127C710(global_92)
  loc_11B28B2: Call Proc_333_87_101DA4C()
  loc_11B28CA: Set var_94 = Me.Txt
  loc_11B28D0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_11B28D8: var_9C.Text = CStr(MemVar_1F920EC)
  loc_11B28E7: Call ChkNCTOKEN_Click()
  loc_11B292C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C, CStr(Format(Time, "hh:nn")))
  loc_11B2934: var_9C.Text = 1
  loc_11B294F: var_AC = Time
  loc_11B2963: var_CC = "HH:MM"
  loc_11B29AA: var_8C = Replace(CStr(Left(CVar(CStr(Format(var_AC, var_CC))), 5)), ":", ".", 1, -1, 0)
  loc_11B29C7: var_114 = Val(var_8C)
  loc_11B29F8: var_10C = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND " & CStr(var_114) & " BETWEEN FromTime AND ToTime"
  loc_11B2A01: unk_58F14B.Execute var_10C, var_AC, -1
  loc_11B2A0C: Set var_88 = Me.Txt
  loc_11B2A39: If (Me.Recordset15.RecordCount > 0) Then
  loc_11B2A4E:   var_94 = Me.Recordset15.Fields
  loc_11B2A56:   var_9C = var_94.Item("Name")
  loc_11B2A5E:   var_AC = CVar(var_9C) 'Address
  loc_11B2A74:   Me.lblSession.Caption = Proc_6_38_E68A98(var_AC, var_94, var_114)
  loc_11B2A86: End If
  loc_11B2A9A: If (RsTouchScreenTOKENEntry.OpenMode = 1) Then
  loc_11B2AAE:   Set var_94 = Me.Txt
  loc_11B2AB4:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C, global_204)
  loc_11B2ABC:   var_9C.Text = 1
  loc_11B2AD9:   Set var_94 = Me.Txt
  loc_11B2ADF:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C, global_204)
  loc_11B2AE7:   var_9C.Tag = 1
  loc_11B2AF3: End If
  loc_11B2AFE: If (global_212 = vbNullString) Then
  loc_11B2B01:   Call CmChngSteward_UnknownEvent_9()
  loc_11B2B09: Else
  loc_11B2B0F:   var_12C = 0
  loc_11B2B3D:   var_104 = "Select W.Code From Waiter W Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and W.name like ' & global_212
  loc_11B2B4D:   unk_58F14B.Execute var_104 & "", var_AC, -1
  loc_11B2B55:   var_94 = var_94.Fields
  loc_11B2B5D:   var_12C = var_9C.Item(var_9C)
  loc_11B2B65:   var_11C = var_11C.Value
  loc_11B2B72:   MemVar_1F9201C = Proc_6_38_E68A98(var_CC, var_CC)
  loc_11B2B91: End If
  loc_11B2B97: var_12C = 0
  loc_11B2BC2: var_104 = "Select Max(W.Name) As Name From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9201C
  loc_11B2BD2: unk_58F14B.Execute var_104 & "'", var_AC, -1
  loc_11B2BDA: var_94 = var_94.Fields
  loc_11B2BE2: var_12C = var_9C.Item(var_9C)
  loc_11B2BEA: var_11C = var_11C.Value
  loc_11B2C05: Set var_130 = Me.Txt
  loc_11B2C0B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_134, Proc_6_38_E68A98(var_CC, var_CC))
  loc_11B2C13: var_134.Text = MemVar_1F9201C
  loc_11B2C47: Set var_94 = Me.Txt
  loc_11B2C4D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_9C)
  loc_11B2C55: var_9C.Tag = MemVar_1F9201C
  loc_11B2C6C: Set var_94 = Me.Txt
  loc_11B2C72: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_11B2C7A: var_9C.SetFocus
  loc_11B2C86: Exit Sub
  loc_11B2C87: ' Referenced from: 11B287C
  loc_11B2C87: Proc_6_60_E62BC4(1)
  loc_11B2C8C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA5034
  'Data Table: 58F128
  loc_EA4FB8: On Error Goto loc_EA502E
  loc_EA4FF2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA5018:   Call Proc_333_88_104D048(Proc_5_1_100CB50("INI", Me))
  loc_EA5023:   Call Proc_333_85_16BB8F4(global_92)
  loc_EA5028:   Call Proc_333_69_127C710()
  loc_EA502D: End If
  loc_EA502D: Exit Sub
  loc_EA502E: ' Referenced from: EA4FB8
  loc_EA502E: Proc_6_60_E62BC4()
  loc_EA5033: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12392A8
  'Data Table: 58F128
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_114 As Fields15
  Dim var_158 As Variant
  Dim var_138 As Variant
  Dim var_1D4 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_178 As Variant
  Dim var_19C As String
  Dim unk_58F14B As Connection15
  Dim var_1C0 As Recordset15
  Dim var_1C4 As Fields15
  Dim var_1D8 As Field20
  Dim var_98 As Recordset15
  Dim var_220 As String
  loc_1238DD0: On Error Goto loc_1239257
  loc_1238DD6: Call Proc_333_97_FF5848(var_A6)
  loc_1238DE1: If (var_A6 = 0) Then
  loc_1238DE4:   Exit Sub
  loc_1238DE5: End If
  loc_1238DF3: If (Proc_183_56_FE8818(global_92) = &HFF) Then
  loc_1238DF6:   Exit Sub
  loc_1238DF7: End If
  loc_1238E33: var_114 = Me.Fields
  loc_1238E40: var_158 = 1
  loc_1238E4D: var_138 = CVar(var_114.Item("SearchCode")) 'Address
  loc_1238E54: var_168 = Mid(var_138, 4, var_158)
  loc_1238E5F: var_1D4 = 0
  loc_1238E8D: var_178 = "Select count(*) from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & var_168 
  loc_1238EA4: unk_58F14B.Execute CStr(var_178 & "'<>'N'"), var_1BC, -1
  loc_1238EAC: var_1C0 = var_1C0.Fields
  loc_1238EB4: var_1D4 = var_1C4.Item(var_1C4)
  loc_1238EBC: var_1D8 = var_1D8.Value
  loc_1238EF5: If (var_1E8 > 0) Then
  loc_1238F4E:   unk_58F14B.Execute CStr("Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_1238FA5:   var_110 = "**** Deletion Not Allowed ****"
  loc_1238FDF:   var_220 = "Bill Allready Prepared For this TOKEN" & vbCrLf & vbCrLf & "Ref. No. " & CStr(var_114.Fields.Item(0).Value) & vbCrLf & vbCrLf
  loc_1238FF0:   MsgBox(CVar(var_220 & vbCrLf & vbCrLf), &H10, var_110, var_138, var_158)
  loc_123901E:   Exit Sub
  loc_123901F: End If
  loc_1239056: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_110, var_138) = 6) Then
  loc_1239083:   var_9C = InputBox("Please Specify, Reason For Delete ?", "Reason", var_110, var_138, var_158, var_168, var_178)
  loc_12390A0:   unk_58F14B.BeginTrans var_228
  loc_12390B6:   var_94 = Me.Bookmark 'Variant
  loc_12390D1:   var_F0 = "N"
  loc_12390F8:   var_A4 = CStr(IIf((Me.ChkNCTOKEN.Value = 1), "Y", var_F0))
  loc_123911D:   var_19C = "Update TOKEN Set DelFlag='Y',U_Name1='" & MemVar_1F920C8
  loc_1239124:   var_110 = CVar(var_19C & "',U_EntDt1=") 'String
  loc_1239135:   Proc_6_7_F25D88(var_F0, Date, var_110, var_1BC)
  loc_123913D:   var_138 = -1 & var_F0 
  loc_123918E:   unk_58F14B.Execute CStr(var_138 & ",U_AE1='E' Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, var_114
  loc_12391BE:   unk_58F14B.CommitTrans
  loc_12391CE:   Me.Requery -1
  loc_12391EE:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12391FB:     Me.Bookmark = var_94
  loc_1239203:   Else
  loc_1239217:     If (Me.EOF = 0) Then
  loc_1239220:       Me.MoveLast
  loc_1239225:     End If
  loc_1239225:   End If
  loc_1239225:   Call Proc_333_85_16BB8F4(var_1E8)
  loc_1239246:   Proc_5_0_110649C(&HFF, Me)
  loc_123924E: End If
  loc_1239253: Set var_98 = Nothing
  loc_1239256: Exit Sub
  loc_1239257: ' Referenced from: 1238DD0
  loc_123925D: unk_58F14B.RollbackTrans
  loc_123926A: Set var_AC = Err()
  loc_1239270: Call 0.Method_arg_2C (var_19C, global_92)
  loc_1239291: MsgBox(CVar(var_19C), &H10, " Deletion Message", var_110, var_138)
  loc_12392A4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '12748BC
  'Data Table: 58F128
  Dim var_130 As Variant
  Dim var_A0 As String
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_F4 As Variant
  Dim unk_58F14B As Connection15
  Dim var_11C As Variant
  Dim var_120 As Variant
  Dim var_134 As Field20
  Dim var_144 As Integer
  Dim var_118 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_88 As Recordset15
  Dim var_1A4 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  loc_1274350: On Error Goto loc_12748B4
  loc_1274356: Call Proc_333_97_FF5848(var_8A)
  loc_1274361: If (var_8A = 0) Then
  loc_1274364:   Exit Sub
  loc_1274365: End If
  loc_1274373: If (Proc_183_55_FE7900(global_92) = &HFF) Then
  loc_1274376:   Exit Sub
  loc_1274377: End If
  loc_127437D: var_130 = 0
  loc_12743DC: unk_58F14B.Execute CStr("Select count(*) from TOKEN Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And ContraDocId is not null"), var_118, -1
  loc_12743E4: var_11C = var_11C.Fields
  loc_12743EC: var_130 = var_120.Item(var_120)
  loc_12743F4: var_134 = var_134.Value
  loc_1274421: If (var_144 > 0) Then
  loc_12744AB:   var_174 = "Select VType,VNo from Stock Where Delflag<>'D' and KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & Mid(CVar(Me.Fields.Item("SearchCode")), 4, 1) 
  loc_12744C2:   unk_58F14B.Execute CStr(var_174 & "'<>'N'"), var_1A4, -1
  loc_12744CD:   Set var_88 = var_134
  loc_1274507:   If (var_88.RecordCount > 0) Then
  loc_1274524:     var_A4 = var_88.Fields.Item("vType")
  loc_1274543:     var_11C = var_88.Fields
  loc_1274589:     var_F4 = (CVar("Bill Allready Prepared For this TOKEN" & vbCrLf & vbCrLf & "Ref. No. ") + var_A4.Value)
  loc_1274592:     var_118 = ("Select VType,VNo from Stock Where Delflag<>'D' and KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" + "/")
  loc_127459E:     var_174 = (CVar(Me.Fields.Item("SearchCode")) + CVar(CStr(var_11C.Item("VNo").Value)))
  loc_12745A7:     var_184 = (var_174 + vbCrLf)
  loc_12745B0:     var_1A4 = (var_174 & "'<>'N'" + vbCrLf)
  loc_12745B9:     var_1BC = (var_1A4 + vbCrLf)
  loc_12745C2:     var_1CC = (var_1BC + vbCrLf)
  loc_12745C6:     MsgBox(var_1CC, &H10, "**** Modification Not Allowed ****", var_20C, var_22C)
  loc_12745FC:     Exit Sub
  loc_1274600:   Else
  loc_1274600:     var_A0 = vbNullString
  loc_127460A:     Set var_90 = Me.FGrid
  loc_127461B:   End If
  loc_127461B: End If
  loc_127463E: Call Proc_333_88_104D048(Proc_5_1_100CB50("EDIT", Me, global_92, FGrid.DispID_10000), var_A0)
  loc_1274649: Call Proc_333_69_127C710(var_134)
  loc_127465B: Set var_90 = Me.Txt
  loc_1274661: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A4)
  loc_1274681: Me.ChkNCTOKEN.Enabled = False
  loc_1274697: Set var_90 = Me.Txt
  loc_127469D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A4)
  loc_12746B7: If (False = &HFF) Then
  loc_12746C5:   Set var_90 = Me.Txt
  loc_12746CB:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A4)
  loc_12746D3:   var_A4.SetFocus
  loc_12746E2: Else
  loc_12746ED:   Set var_90 = Me.Txt
  loc_12746F3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_A4)
  loc_12746FB:   var_A4.SetFocus
  loc_1274707: End If
  loc_127471E: If (Me.RecordCount > 0) Then
  loc_1274777:   unk_58F14B.Execute CStr("Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From TOKEN K Where K.Docid='" & Me.Fields.Item("DocID").Value & "'"), CVar(Me.Fields.Item("SearchCode")), -1
  loc_1274782:   Set var_88 = var_11C
  loc_127479F:   Set var_230 = var_88 
  loc_12747D4:   global_132 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_1274816:   global_144 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_1274856:   global_136 = CDate(var_88.Fields.Item("U_EntDt").Value)
  loc_1274894:   global_148 = CStr(var_88.Fields.Item("Pending").Value)
  loc_12748A7:   Set var_230 = Nothing 
  loc_12748AB: End If
  loc_12748B0: Set var_88 = Nothing
  loc_12748B3: Exit Sub
  loc_12748B4: ' Referenced from: 1274350
  loc_12748B4: Proc_6_60_E62BC4(global_136, var_11C)
  loc_12748B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16A64
  'Data Table: 58F128
  loc_E16A59: Me.Global.Unload Me
  loc_E16A61: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '112F9B8
  'Data Table: 58F128
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_D8 As Integer
  Dim unk_58F14B As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As Field20
  Dim var_140 As Variant
  Dim var_170 As Variant
  Dim var_1B0 As Integer
  Dim var_174 As String
  Dim var_19C As Recordset15
  Dim var_1A0 As Fields15
  Dim var_1B4 As Field20
  Dim MemVar_1F920E4 As String
  loc_112F68C: On Error Goto loc_112F9AF
  loc_112F6A6: If (Me.RecordCount <= 0) Then
  loc_112F6AF:   var_B8 = "Information"
  loc_112F6C4:   var_A8 = "No Records To Search."
  loc_112F6CA:   MsgBox(var_A8, &H40, var_B8, var_E8, var_108)
  loc_112F6DA:   Exit Sub
  loc_112F6DB: End If
  loc_112F6EE: If (OpenType = "Pending TOKEN") Then
  loc_112F6F8:   var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],K.VDate as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((TOKEN K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F92078
  loc_112F70D:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_112F715:   var_E8 = CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate=") & var_A8 
  loc_112F724:   var_D8 = 0
  loc_112F754:   unk_58F14B.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_112F75C:   var_118 = var_118.Fields
  loc_112F764:   var_D8 = var_11C.Item(var_11C)
  loc_112F76C:   var_120 = var_120.Value
  loc_112F774:   var_140 = (var_130 + var_130)
  loc_112F781:   var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_112F78B:   var_1B0 = 0
  loc_112F7AB:   var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_112F7BB:   unk_58F14B.Execute var_174 & "'", var_198, -1
  loc_112F7C3:   var_19C = var_19C.Fields
  loc_112F7CB:   var_1B0 = var_1A0.Item(var_1A0)
  loc_112F7D3:   var_1B4 = var_1B4.Value
  loc_112F804:   MemVar_1F920E4 = CStr(var_1C4 & var_1C4 & "') And Pending='Y' AND K.ROOMNO='" & CVar(PTableNo) & "' Order by Docid")
  loc_112F848: Else
  loc_112F84F:   var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],K.VDate as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((TOKEN K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F92078
  loc_112F864:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC, CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate="))
  loc_112F86C:   var_E8 = MemVar_1F920E4 & var_A8 
  loc_112F87B:   var_D8 = 0
  loc_112F8AB:   unk_58F14B.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_112F8B3:   var_118 = var_118.Fields
  loc_112F8BB:   var_D8 = var_11C.Item(var_11C)
  loc_112F8C3:   var_120 = var_120.Value
  loc_112F8CB:   var_140 = (var_130 + var_130)
  loc_112F8D8:   var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_112F8E2:   var_1B0 = 0
  loc_112F902:   var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_112F912:   unk_58F14B.Execute var_174 & "'", var_198, -1
  loc_112F91A:   var_19C = var_19C.Fields
  loc_112F922:   var_1B0 = var_1A0.Item(var_1A0)
  loc_112F92A:   var_1B4 = var_1B4.Value
  loc_112F940:   MemVar_1F920E4 = CStr(var_1C4 & var_1C4 & "') Order by Docid")
  loc_112F97B: End If
  loc_112F984: Proc_6_126_F1BCC0("800,1500,800,1000,1800,1800", MemVar_1F920E4, var_170)
  loc_112F992: MemVar_1F92120 = Me
  loc_112F9A9: Call 0.Method_arg_2B0 (1, var_B8, var_E8)
  loc_112F9AE: Exit Sub
  loc_112F9AF: ' Referenced from: 112F68C
  loc_112F9AF: Proc_6_60_E62BC4(var_170)
  loc_112F9B4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31AB8
  'Data Table: 58F128
  Dim var_4F01 As Double
  loc_E31AA8: Proc_5_0_110649C(&HFF, Me)
  loc_E31AB0: Call Proc_333_85_16BB8F4(global_92)
  loc_E31AB5: Exit Sub
  loc_E31AB6: var_4F01 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E319F8
  'Data Table: 58F128
  loc_E319E8: Proc_5_0_110649C(&HFF, Me)
  loc_E319F0: Call Proc_333_85_16BB8F4(global_92)
  loc_E319F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E318D8
  'Data Table: 58F128
  loc_E318C8: Proc_5_0_110649C(&HFF, Me)
  loc_E318D0: Call Proc_333_85_16BB8F4(global_92)
  loc_E318D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31818
  'Data Table: 58F128
  loc_E31808: Proc_5_0_110649C(&HFF, Me)
  loc_E31810: Call Proc_333_85_16BB8F4(global_92)
  loc_E31815: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1C7F504
  'Data Table: 58F128
  Dim var_138 As Variant
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_14C As String
  Dim unk_58F14B As Connection15
  Dim var_100 As Recordset15
  Dim var_170 As Variant
  Dim var_128 As Variant
  Dim var_17C As String
  Dim var_BC As Recordset15
  Dim var_E6 As Integer
  Dim var_15C As Variant
  Dim var_190 As Fields15
  Dim var_18C As Variant
  Dim var_1D4 As Variant
  Dim var_16C As Variant
  Dim var_E8 As Integer
  Dim Me As Recordset15
  Dim var_178 As Variant
  Dim var_1EC As String
  Dim var_D0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_102 As Integer
  Dim var_1A4 As Variant
  Dim var_194 As Field20
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_1FC As Variant
  Dim var_1E4 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_B8 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_284 As Variant
  Dim var_30C As String
  Dim var_310 As String
  Dim var_224 As Variant
  Dim var_354 As Variant
  Dim var_364 As Variant
  Dim var_DC As Recordset15
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_174 As Long
  Dim var_308 As String
  Dim var_304 As Variant
  Dim var_340 As Variant
  Dim var_2F4 As Variant
  Dim var_2B4 As Variant
  Dim var_3DC As Variant
  Dim var_3EC As Variant
  loc_1C78E84: On Error Goto loc_1C7F4FE
  loc_1C78EA4: Proc_6_17_EAA2B0(var_128, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1C78EBA: unk_58F14B.Execute CStr(var_16C & var_128), -1, var_170
  loc_1C78EC5: Set var_100 = var_170
  loc_1C78EEB: If (var_100.RecordCount > 0) Then
  loc_1C78F25:   var_F0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader1"))))))
  loc_1C78F6B:   var_F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader2"))))))
  loc_1C78FB1:   var_F8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader3"))))))
  loc_1C78FCF:   var_170 = var_100.Fields
  loc_1C78FDF:   var_128 = CVar(var_170.Item("KOTHeader4")) 'Address
  loc_1C78FF7:   var_FC = CStr(Trim(CVar(Proc_6_38_E68A98(var_128))))
  loc_1C79006: End If
  loc_1C7900B: Set var_100 = Nothing
  loc_1C79035: unk_58F14B.Execute "Select CKOTPrintYN,NoOfKot From Depart Where Code='" & LocalRestCode & "'", var_128, -1
  loc_1C79040: Set var_BC = var_170
  loc_1C79064: If (var_BC.RecordCount > 0) Then
  loc_1C7908F:   var_148 = CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1C790A9:   var_E4 = CStr(Ucase(Trim(var_148)))
  loc_1C790E0:   Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C790E9:   var_E6 = CInt(var_148)
  loc_1C7911C:   Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C79130:   var_190 = var_BC.Fields
  loc_1C79147:   Proc_6_39_E7C810(var_1A4, CVar(var_190.Item("NoOfKot")))
  loc_1C79174:   var_E8 = CInt(IIf((var_148 <= 0), 1, var_1A4))
  loc_1C7918F: End If
  loc_1C79197: If (var_E4 = "Y") Then
  loc_1C7919D:   Call Proc_333_81_1BB65B4(var_1E6, var_E8)
  loc_1C791A8:   If (var_1E6 = 0) Then
  loc_1C791AB:     Exit Sub
  loc_1C791AC:   End If
  loc_1C791AC: End If
  loc_1C791AF: MemVar_1F923C0 = "N"
  loc_1C791B6: MemVar_1F923C4 = "N"
  loc_1C791BD: MemVar_1F923C8 = "K"
  loc_1C791C8: var_14C = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCTOKEN, K.Remarks , K.ContraDocId, D.ShortName,K.U_AE " & "From ((TOKEN K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode)"
  loc_1C7920D: var_88 = CStr(CVar(var_14C & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C7922C: var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7924C: var_178 = Me.Fields.Item("SearchCode")
  loc_1C79254: var_128 = var_178.Value
  loc_1C7925C: var_16C = var_148 & var_128 
  loc_1C79265: var_18C = var_16C & "'" 
  loc_1C7926A: var_8C = CStr(var_18C)
  loc_1C79287: If (var_88 = vbNullString) Then
  loc_1C7928A:   Exit Sub
  loc_1C7928B: End If
  loc_1C79293: If (var_8C = vbNullString) Then
  loc_1C79296:   Exit Sub
  loc_1C79297: End If
  loc_1C792BB: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4), var_178, var_14C, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='", var_128)
  loc_1C792C3: -1 = var_178.Text
  loc_1C792DC: unk_58F14B.Execute var_190 & var_14C & "' AND CONTRADOCID IS NULL", var_E6, Me.Txt
  loc_1C79313: If (var_190.RecordCount = 1) Then
  loc_1C79319:   var_C8 = "New Order"
  loc_1C7931F: Else
  loc_1C79326:   Set var_170 = Me.LblState
  loc_1C79334:   var_C8 = var_170.Caption
  loc_1C7933A: End If
  loc_1C79350: unk_58F14B.Execute var_88, var_128, -1
  loc_1C7935B: Set var_B4 = var_170
  loc_1C7937A: unk_58F14B.Execute "SELECT KOTPrinting,KOTPrintEdited FROM Enviro", var_128, -1
  loc_1C79385: Set var_D0 = var_170
  loc_1C7939D: var_170 = var_B4.Fields
  loc_1C793C7: If (Proc_6_38_E68A98(CVar(var_170.Item("ContraDocId")), var_170) <> vbNullString) Then
  loc_1C793E3:   MsgBox("Sale Bill Already Generated !!", &H40, var_148, var_16C, var_18C)
  loc_1C793F3:   Exit Sub
  loc_1C793F4: End If
  loc_1C7942D: If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_AE"))) = "E") Then
  loc_1C79432:   var_102 = &HFF
  loc_1C79435: End If
  loc_1C79475: If (var_102 And (Proc_6_38_E68A98(CVar(var_D0.Fields.Item("KOTPrintEdited")), (var_102 = &HFF)) = "No Print")) Then
  loc_1C79478:   Exit Sub
  loc_1C79479: End If
  loc_1C79492: var_170 = var_D0.Fields
  loc_1C794C3: var_1A4 = var_170 And (Trim(CVar(Proc_6_38_E68A98(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "Void Items")
  loc_1C794D7: If CBool(var_1A4) Then
  loc_1C794E9:   var_170 = var_D0.Fields
  loc_1C794F9:   var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C79524:   If (Trim(CVar(Proc_6_38_E68A98(var_128))) = vbNullString) Then
  loc_1C7953B:     var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1C7954B:     unk_58F14B.Execute var_14C & "MK'", var_128, -1
  loc_1C79556:     Set var_BC = var_170
  loc_1C79569:   Else
  loc_1C7957D:     var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C795C4:     unk_58F14B.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'"), var_1A4, -1
  loc_1C795CF:     Set var_BC = var_190
  loc_1C795EB:   End If
  loc_1C795EE: Else
  loc_1C79638:   var_1A4 = var_190 And (Trim(CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "All Items")
  loc_1C7964C:   If CBool(var_1A4) Then
  loc_1C7965E:     var_170 = var_D0.Fields
  loc_1C7966E:     var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C79699:     If (Trim(CVar(Proc_6_38_E68A98(var_128))) = vbNullString) Then
  loc_1C796B0:       var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1C796C0:       unk_58F14B.Execute var_14C & "MK'", var_128, -1
  loc_1C796CB:       Set var_BC = var_170
  loc_1C796DE:     Else
  loc_1C796F2:       var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C79739:       unk_58F14B.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "'"), var_1A4, -1
  loc_1C79744:       Set var_BC = var_190
  loc_1C79760:     End If
  loc_1C79763:   Else
  loc_1C79772:     var_170 = var_D0.Fields
  loc_1C79782:     var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C797AD:     If (Trim(CVar(Proc_6_38_E68A98(var_128, var_190))) = vbNullString) Then
  loc_1C797C4:       var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1C797D4:       unk_58F14B.Execute var_14C & "MK'", var_128, -1
  loc_1C797DF:       Set var_BC = var_170
  loc_1C797F2:     Else
  loc_1C79806:       var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7984D:       unk_58F14B.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN<>'Y'"), var_1A4, -1
  loc_1C79858:       Set var_BC = var_190
  loc_1C79874:       ' Referenced from:       1C7F4E2
  loc_1C79874:     End If
  loc_1C79874:   End If
  loc_1C79874: End If
  loc_1C79883: If Not(var_BC.EOF) Then
  loc_1C7989F:   var_170 = var_D0.Fields
  loc_1C798E4:   If CBool(var_170 And (Trim(CVar(Proc_6_38_E68A98(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF), var_190))) = "Void Items")) Then
  loc_1C798F6:     var_170 = var_D0.Fields
  loc_1C79931:     If (Trim(CVar(Proc_6_38_E68A98(CVar(var_170.Item("KOTPrinting")), var_170))) = "Seperate for All Kitchen") Then
  loc_1C7993B:       var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C799B4:       var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C799F0:       var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN='Y'")
  loc_1C79A1E:     Else
  loc_1C79A25:       var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C79A63:       var_8C = CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'")
  loc_1C79A78:     End If
  loc_1C79A7B:   Else
  loc_1C79A94:     var_170 = var_D0.Fields
  loc_1C79AD9:     If CBool(var_170 And (Trim(CVar(Proc_6_38_E68A98(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "All Items")) Then
  loc_1C79B26:       If (Trim(CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("KOTPrinting"))))) = "Seperate for All Kitchen") Then
  loc_1C79B30:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C79BA9:         var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C79BE5:         var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "'")
  loc_1C79C13:       Else
  loc_1C79C1A:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C79C58:         var_8C = CStr(var_148 & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C79C6D:       End If
  loc_1C79C70:     Else
  loc_1C79CBA:       If (Trim(CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("KOTPrinting"))))) = "Seperate for All Kitchen") Then
  loc_1C79CC4:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C79D3D:         var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C79D79:         var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN<>'Y'")
  loc_1C79DA7:       Else
  loc_1C79DAE:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C79DC6:         var_170 = Me.Fields
  loc_1C79DD6:         var_128 = var_170.Item("SearchCode").Value
  loc_1C79DEC:         var_8C = CStr(var_148 & var_128 & "' And K.VoidYN<>'Y'")
  loc_1C79E01:       End If
  loc_1C79E01:     End If
  loc_1C79E01:   End If
  loc_1C79E17:   unk_58F14B.Execute var_8C, var_128, -1
  loc_1C79E22:   Set var_B8 = var_170
  loc_1C79E31:   var_174 = var_B8.RecordCount
  loc_1C79E3F:   If (var_174 > 0) Then
  loc_1C79E51:     var_170 = var_BC.Fields
  loc_1C79E70:     var_264 = Trim(CVar(var_170.Item("PrintType"))) 'Variant
  loc_1C79E85:     If (var_264 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1C79E95:       Call Proc_333_82_EF9974(New, var_170)
  loc_1C79E9D:       Set var_D4 = var_170
  loc_1C79EA3:       Me.Recordset15.MoveFirst
  loc_1C79EA8:       ' Referenced from: 1C7AC36
  loc_1C79EB7:       If Not(var_B4.EOF) Then
  loc_1C79EBC:         var_92 = 0
  loc_1C79FE4:         var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")), var_92) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C79FED:         var_90 = CStr(var_304)
  loc_1C7A031:         If (var_92 = 0) Then
  loc_1C7A037:           var_1EC = vbNullString
  loc_1C7A052:           Call Proc_333_83_F13A38(var_D4, vbNullString, vbNullString)
  loc_1C7A08E:           var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1C7A0C5:           var_148 = CVar(Me.LblRest.Caption) 'String
  loc_1C7A0C8:           var_16C = (Space(1) + var_148)
  loc_1C7A0DD:           Call Proc_333_83_F13A38(var_D4, vbNullString, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))))
  loc_1C7A10F:           Call Proc_333_83_F13A38(var_D4, vbNullString, var_90, vbNullString)
  loc_1C7A13E:           Call Proc_333_83_F13A38(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C7A172:           Proc_6_39_E7C810(var_148, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C7A1A6:           var_1EC = vbNullString
  loc_1C7A1AF:           Call Proc_333_83_F13A38(var_D4, var_1EC, " TOKEN No.   : " & Proc_6_45_EAD428(CStr(var_148), &HA, vbNullString))
  loc_1C7A26B:           var_310 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")), " TOKEN Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1C7A27F:           Call Proc_333_83_F13A38(var_D4, vbNullString, " TOKEN Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC) & " " & var_310)
  loc_1C7A2C6:           var_178 = var_B4.Fields.Item("Remarks")
  loc_1C7A311:           Call Proc_333_83_F13A38(var_D4, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178), vbNullString), &H1E))
  loc_1C7A343:           Set var_170 = Me.Label1
  loc_1C7A349:           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C7A3B4:           var_30C = vbNullString
  loc_1C7A3C3:           var_1A4 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C7A3CC:           var_1B4 = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) + ": ")
  loc_1C7A3D3:           var_1E4 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1C7A3D6:           var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) + var_1E4)
  loc_1C7A3EB:           Call Proc_333_83_F13A38(var_D4, vbNullString, CStr("* NC LOT *"))
  loc_1C7A422:           var_17C = vbNullString
  loc_1C7A437:           Call Proc_333_83_F13A38(var_D4, vbNullString, var_C0)
  loc_1C7A443:         End If
  loc_1C7A469:         var_16C = (var_17C + CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))))
  loc_1C7A47D:         var_1A4 = (Trim(CVar(var_178)) + Space(1))
  loc_1C7A494:         var_1B4 = CVar(Proc_6_52_EAD4F4("Qty", 6, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))) 'String
  loc_1C7A497:         var_1D4 = (var_30C + var_1B4)
  loc_1C7A49C:         var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C7A4BA:         var_17C = vbNullString
  loc_1C7A4CF:         Call Proc_333_83_F13A38(var_D4, vbNullString, var_AC)
  loc_1C7A4DE:         var_17C = vbNullString
  loc_1C7A4F3:         Call Proc_333_83_F13A38(var_D4, vbNullString, var_C0)
  loc_1C7A505:         var_92 = (var_92 + 4)
  loc_1C7A50B:         var_B8.MoveFirst
  loc_1C7A510:         ' Referenced from: 1C7A891
  loc_1C7A51F:         If Not(var_B8.EOF) Then
  loc_1C7A558:           var_190 = var_B8.Fields
  loc_1C7A56F:           Proc_6_39_E7C810(var_1E4, CVar(var_190.Item("qty")), &H12)
  loc_1C7A59A:           var_1C4 = "Cancel"
  loc_1C7A5D4:           var_1FC = "Y"
  loc_1C7A612:           var_18C = (1 + CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1C7A626:           var_1B4 = (Space(1) + Space(1))
  loc_1C7A63F:           var_284 = (var_17C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0")), 3, var_1B4)))
  loc_1C7A655:           var_354 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item(var_1C4).Value = var_1FC), "Void", vbNullString)), 5, CVar(var_B4.Fields.Item("NCTOKEN")))) 'String
  loc_1C7A658:           var_364 = (var_17C + var_354)
  loc_1C7A6B7:           Call Proc_333_83_F13A38(var_D4, vbNullString, CStr(var_364))
  loc_1C7A6C9:           var_92 = (var_92 + 1)
  loc_1C7A705:           If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C7A736:             var_30C = vbNullString
  loc_1C7A75D:             Call Proc_333_83_F13A38(var_D4, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), vbNullString) & ")")
  loc_1C7A77D:             var_92 = (var_92 + 1)
  loc_1C7A780:           End If
  loc_1C7A78A:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C7A7A5:             Call Proc_333_83_F13A38(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C7A7CF:             Call Proc_333_83_F13A38(var_D4, vbNullString, " Contd.", vbNullString)
  loc_1C7A7E3:             var_94 = (var_94 + 1)
  loc_1C7A803:             Call Proc_333_83_F13A38(var_D4, vbNullString, var_90, vbNullString, 0)
  loc_1C7A82C:             Call Proc_333_83_F13A38(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C7A850:             Call Proc_333_83_F13A38(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C7A874:             Call Proc_333_83_F13A38(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C7A886:             var_92 = (var_92 + 4)
  loc_1C7A889:           End If
  loc_1C7A88C:           var_B8.MoveNext
  loc_1C7A891:           GoTo loc_1C7A510
  loc_1C7A894:         End If
  loc_1C7A89E:         If (&H12 < (&H45 - var_A6)) Then
  loc_1C7A8A1:           ' Referenced from: 1C7A8E3
  loc_1C7A8AB:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C7A8CC:             Call Proc_333_83_F13A38(var_D4, vbNullString, vbNullString, vbNullString, &H12)
  loc_1C7A8E0:             var_92 = (var_92 + 1)
  loc_1C7A8E3:             GoTo loc_1C7A8A1
  loc_1C7A8E6:           End If
  loc_1C7A8E6:         End If
  loc_1C7A8FE:         Call Proc_333_83_F13A38(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C7A94C:         var_30C = vbNullString
  loc_1C7A96C:         Call Proc_333_83_F13A38(var_D4, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1C7A9C7:         Call Proc_333_83_F13A38(var_D4, vbNullString, CStr(" ***  " & Trim(var_C8) & "  ***"), vbNullString)
  loc_1C7AA26:         var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C7AA34:         unk_58F14B.Execute CStr(var_16C), Space(1), -1
  loc_1C7AA95:         If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C7AABF:           Call Proc_333_83_F13A38(var_D4, vbNullString, " ***  " & "Changed TOKEN" & "  ***", vbNullString)
  loc_1C7AAD2:         Else
  loc_1C7AADF:           var_138 = "Select Printed from TOKEN where docid='"
  loc_1C7AB15:           var_15C = "'"
  loc_1C7AB28:           unk_58F14B.Execute CStr(var_138 & Me.Fields.Item("SearchCode").Value & var_15C), Space(1), -1
  loc_1C7AB50:           var_118 = 0
  loc_1C7AB86:           If (Proc_6_38_E68A98(CVar(var_190.Fields.Item(var_118)), var_190, var_190) = "Y") Then
  loc_1C7ABB0:             Call Proc_333_83_F13A38(var_D4, vbNullString, " ***  " & "DUPLICATE TOKEN" & "  ***", vbNullString)
  loc_1C7ABC3:           Else
  loc_1C7ABE1:             Call Proc_333_83_F13A38(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C7ABEF:           End If
  loc_1C7ABEF:         End If
  loc_1C7ABF4:         Set var_DC = Nothing
  loc_1C7AC1E:         Call Proc_333_83_F13A38(var_D4, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1C7AC31:         var_B4.MoveNext
  loc_1C7AC36:         GoTo loc_1C79EA8
  loc_1C7AC39:       End If
  loc_1C7AC3C:       var_D8 = "WinKOTPrint"
  loc_1C7AC63:       Set var_170 = var_D4 
  loc_1C7AC6A:       CreateFieldDefFile(var_170, MemVar_1F920B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1C7ACAC:       Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_118, var_170)
  loc_1C7ACB7:       MemVar_1F921E4 = var_170
  loc_1C7ACE0:       Call 0.Method_arg_64 (var_170, CVar(var_170), var_138, var_15C)
  loc_1C7ACE8:       Call 0.Method_arg_2C (var_30C, var_30C)
  loc_1C7AD29:       If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1C7AD76:         If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C7ADA5:           Call Proc_333_80_F10558(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C7ADB3:         End If
  loc_1C7ADB3:       End If
  loc_1C7ADC2:       var_138 = CVar(var_E8) 'Integer
  loc_1C7ADD1:       Call 0.Method_Me8 (False, var_138, var_15C)
  loc_1C7ADDB:       Set var_D4 = Nothing
  loc_1C7ADE1:     Else
  loc_1C7ADEC:       If (var_264 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1C7ADF2:         var_B4.MoveFirst
  loc_1C7ADF7:         ' Referenced from:   1C7BBCB
  loc_1C7AE06:         If Not(var_B4.EOF) Then
  loc_1C7AE0C:           var_118 = "ShortName"
  loc_1C7AE3C:           var_18C = 3
  loc_1C7AE5F:           var_1C4 = "NCTOKEN"
  loc_1C7AE6B:           var_190 = var_B4.Fields
  loc_1C7AE73:           var_194 = var_190.Item(var_1C4)
  loc_1C7AEA8:           var_1FC = (Proc_6_38_E68A98(CVar(var_194), var_1FC) = "Y")
  loc_1C7AF15:           var_15C = "LAU"
  loc_1C7AF1F:           var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item(var_118)), var_1C4))), 1, var_18C)) = var_15C) 'Variant
  loc_1C7AF29:           var_304 = IIf(var_2F4, IIf(var_1FC, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7AF32:           var_90 = CStr(var_304)
  loc_1C7AF73:           var_D8 = "KOTPrint"
  loc_1C7AF9A:           Set var_170 = var_B8 
  loc_1C7AFA1:           CreateFieldDefFile(var_170, MemVar_1F920B4 & "\" & var_D8 & ".ttx")
  loc_1C7AFAD:           Set var_B8 = var_170
  loc_1C7AFE3:           Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_118, var_170)
  loc_1C7AFEE:           MemVar_1F921E4 = var_170
  loc_1C7B017:           Call 0.Method_arg_64 (var_170, CVar(var_B8), var_138)
  loc_1C7B01F:           Call 0.Method_arg_2C (var_15C, &HFF)
  loc_1C7B02D:           Call 0.Method_arg_150 (var_170)
  loc_1C7B07A:           var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C7B088:           unk_58F14B.Execute CStr(var_16C), var_18C, -1
  loc_1C7B0E9:           If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C7B0EF:             var_CC = "Changed TOKEN"
  loc_1C7B0F5:           Else
  loc_1C7B14B:             unk_58F14B.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C7B17F:             var_170 = var_190.Fields
  loc_1C7B187:             var_178 = var_170.Item(0)
  loc_1C7B198:             var_14C = Proc_6_38_E68A98(CVar(var_178), var_190)
  loc_1C7B1A9:             If (var_14C = "Y") Then
  loc_1C7B1AF:               var_CC = "DUPLICATE TOKEN"
  loc_1C7B1B5:             Else
  loc_1C7B1B8:               var_CC = vbNullString
  loc_1C7B1BB:             End If
  loc_1C7B1BB:           End If
  loc_1C7B1C0:           Set var_DC = Nothing
  loc_1C7B1D4:           Call 0.Method_arg_90 (var_170, var_174, var_AE)
  loc_1C7B1DC:           Call 0.Method_arg_24 (1)
  loc_1C7B1E8:           For var_368 =  To CInt(var_174):   var_190 = var_368 'Integer
  loc_1C7B201:             Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7B209:             Call 0.Method_arg_20 (var_178)
  loc_1C7B211:             Call 0.Method_arg_30 (var_14C)
  loc_1C7B227:             var_378 = Ucase(CVar(var_14C)) 'Variant
  loc_1C7B257:             If (var_378 = Ucase("comp_name")) Then
  loc_1C7B27B:               Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7B283:               Call 0.Method_arg_20 (var_178)
  loc_1C7B28B:               Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1C7B2A1:             Else
  loc_1C7B2C3:               If (var_378 = Ucase("comp_add1")) Then
  loc_1C7B2E7:                 Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7B2EF:                 Call 0.Method_arg_20 (var_178)
  loc_1C7B2F7:                 Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1C7B30D:               Else
  loc_1C7B32F:                 If (var_378 = Ucase("comp_pin")) Then
  loc_1C7B353:                   Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7B35B:                   Call 0.Method_arg_20 (var_178)
  loc_1C7B363:                   Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1C7B379:                 Else
  loc_1C7B39B:                   If (var_378 = Ucase("comp_GSTIN")) Then
  loc_1C7B3BF:                     Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7B3C7:                     Call 0.Method_arg_20 (var_178)
  loc_1C7B3CF:                     Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1C7B3E5:                   Else
  loc_1C7B407:                     If (var_378 = Ucase("RestName")) Then
  loc_1C7B414:                       Set var_170 = Me.LblRest
  loc_1C7B43D:                       Call 0.Method_arg_90 (var_178, CLng(var_AE))
  loc_1C7B445:                       Call 0.Method_arg_20 (var_190)
  loc_1C7B44D:                       Call 0.Method_arg_38 ("'" & var_170.Caption & "'")
  loc_1C7B467:                     Else
  loc_1C7B489:                       If (var_378 = Ucase("mTitle")) Then
  loc_1C7B4AD:                         Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7B4B5:                         Call 0.Method_arg_20 (var_178)
  loc_1C7B4BD:                         Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1C7B4D3:                       Else
  loc_1C7B4DB:                         var_128 = "Header1"
  loc_1C7B4F5:                         If (var_378 = Ucase(var_128)) Then
  loc_1C7B503:                           Proc_6_17_EAA2B0(var_128)
  loc_1C7B51F:                           Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C7B527:                           Call 0.Method_arg_20 (CStr(var_128))
  loc_1C7B52F:                           Call 0.Method_arg_38 (var_F0)
  loc_1C7B544:                         Else
  loc_1C7B54C:                           var_128 = "Header2"
  loc_1C7B566:                           If (var_378 = Ucase(var_128)) Then
  loc_1C7B574:                             Proc_6_17_EAA2B0(var_128)
  loc_1C7B590:                             Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C7B598:                             Call 0.Method_arg_20 (CStr(var_128))
  loc_1C7B5A0:                             Call 0.Method_arg_38 (var_F4)
  loc_1C7B5B5:                           Else
  loc_1C7B5BD:                             var_128 = "Header3"
  loc_1C7B5D7:                             If (var_378 = Ucase(var_128)) Then
  loc_1C7B5E5:                               Proc_6_17_EAA2B0(var_128)
  loc_1C7B601:                               Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C7B609:                               Call 0.Method_arg_20 (CStr(var_128))
  loc_1C7B611:                               Call 0.Method_arg_38 (var_F8)
  loc_1C7B626:                             Else
  loc_1C7B62E:                               var_128 = "Header4"
  loc_1C7B648:                               If (var_378 = Ucase(var_128)) Then
  loc_1C7B656:                                 Proc_6_17_EAA2B0(var_128)
  loc_1C7B672:                                 Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C7B67A:                                 Call 0.Method_arg_20 (CStr(var_128))
  loc_1C7B682:                                 Call 0.Method_arg_38 (var_FC)
  loc_1C7B697:                               Else
  loc_1C7B6A8:                                 var_148 = Ucase("KotNo")
  loc_1C7B6B9:                                 If (var_378 = var_148) Then
  loc_1C7B6E7:                                   Proc_6_39_E7C810(var_148, CVar(var_B4.Fields.Item("VNo")))
  loc_1C7B6F3:                                   var_15C = "'"
  loc_1C7B710:                                   Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7B718:                                   Call 0.Method_arg_20 (var_194)
  loc_1C7B720:                                   Call 0.Method_arg_38 (CStr("'" & var_148 & var_15C))
  loc_1C7B73F:                                 Else
  loc_1C7B761:                                   If (var_378 = Ucase("KotDate")) Then
  loc_1C7B7AD:                                     Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7B7B5:                                     Call 0.Method_arg_20 (var_194)
  loc_1C7B7BD:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1C7B7DA:                                   Else
  loc_1C7B7FC:                                     If (var_378 = Ucase("KotTime")) Then
  loc_1C7B848:                                       Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7B850:                                       Call 0.Method_arg_20 (var_194)
  loc_1C7B858:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1C7B875:                                     Else
  loc_1C7B897:                                       If (var_378 = Ucase("Remarks")) Then
  loc_1C7B8B4:                                         var_178 = var_B4.Fields.Item("Remarks")
  loc_1C7B8E3:                                         Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7B8EB:                                         Call 0.Method_arg_20 (var_194)
  loc_1C7B8F3:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_178)) & "'")
  loc_1C7B910:                                       Else
  loc_1C7B932:                                         If (var_378 = Ucase("TableTitle")) Then
  loc_1C7B943:                                           Set var_170 = Me.Label1
  loc_1C7B949:                                           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C7B981:                                           Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7B989:                                           Call 0.Method_arg_20 (var_194)
  loc_1C7B991:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_178)) & "'"))
  loc_1C7B9B0:                                         Else
  loc_1C7B9D2:                                           If (var_378 = Ucase("TableNo")) Then
  loc_1C7BA1E:                                             Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7BA26:                                             Call 0.Method_arg_20 (var_194)
  loc_1C7BA2E:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1C7BA4B:                                           Else
  loc_1C7BA6D:                                             If (var_378 = Ucase("Steward")) Then
  loc_1C7BA82:                                               var_170 = var_B4.Fields
  loc_1C7BA8A:                                               var_178 = var_170.Item("WaiterName")
  loc_1C7BAB9:                                               Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7BAC1:                                               Call 0.Method_arg_20 (var_194)
  loc_1C7BAC9:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_178)) & "'")
  loc_1C7BAE6:                                             Else
  loc_1C7BB08:                                               If (var_378 = Ucase("KotStatus")) Then
  loc_1C7BB2C:                                                 Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7BB34:                                                 Call 0.Method_arg_20 (var_178)
  loc_1C7BB3C:                                                 Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_1C7BB52:                                               Else
  loc_1C7BB74:                                                 If (var_378 = Ucase("KotRemark")) Then
  loc_1C7BB98:                                                   Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7BBA0:                                                   Call 0.Method_arg_20 (var_178)
  loc_1C7BBA8:                                                   Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1C7BBBB:                                                 End If
  loc_1C7BBBB:                                               End If
  loc_1C7BBBB:                                             End If
  loc_1C7BBBB:                                           End If
  loc_1C7BBBB:                                         End If
  loc_1C7BBBB:                                       End If
  loc_1C7BBBB:                                     End If
  loc_1C7BBBB:                                   End If
  loc_1C7BBBB:                                 End If
  loc_1C7BBBB:                               End If
  loc_1C7BBBB:                             End If
  loc_1C7BBBB:                           End If
  loc_1C7BBBB:                         End If
  loc_1C7BBBB:                       End If
  loc_1C7BBBB:                     End If
  loc_1C7BBBB:                   End If
  loc_1C7BBBB:                 End If
  loc_1C7BBBB:               End If
  loc_1C7BBBB:             End If
  loc_1C7BBBE:           Next var_368 'Integer
  loc_1C7BBC6:           var_B4.MoveNext
  loc_1C7BBCB:           GoTo loc_1C7ADF7
  loc_1C7BBCE:         End If
  loc_1C7BBF6:         var_14C = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")))
  loc_1C7BC07:         If (var_14C <> vbNullString) Then
  loc_1C7BC54:           If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C7BC83:             Call Proc_333_80_F10558(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C7BC91:           End If
  loc_1C7BC91:         End If
  loc_1C7BC97:         If (var_E6 <= 0) Then
  loc_1C7BCA0:           Call 0.Method_arg_50 (var_14C)
  loc_1C7BCAA:           Set var_178 = Nothing
  loc_1C7BCC4:           Set var_170 = MemVar_1F921E4 
  loc_1C7BCD0:           Proc_6_99_1483714(var_170, 0, var_14C)
  loc_1C7BCDB:           MemVar_1F921E4 = var_170
  loc_1C7BCEC:         Else
  loc_1C7BD0A:           Call 0.Method_Me8 (False, CVar(var_E6), var_15C, var_1C4)
  loc_1C7BD0F:         End If
  loc_1C7BD12:       Else
  loc_1C7BD1D:         If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1C7BD22:           Close 1
  loc_1C7BD49:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C7BD59:           var_B4.MoveFirst
  loc_1C7BD5E:           ' Referenced from:     1C7CDF6
  loc_1C7BD6D:           If Not(var_B4.EOF) Then
  loc_1C7BD72:             var_92 = 0
  loc_1C7BDAD:             var_18C = 3
  loc_1C7BE4D:             var_308 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")), &HFF)
  loc_1C7BE69:             var_17C = var_308
  loc_1C7BE90:             var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92))), 1, var_18C)) = "LAU") 'Variant
  loc_1C7BE9A:             var_304 = IIf(var_2F4, IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")), (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")), var_1FC) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_17C = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7BEA3:             var_90 = CStr(var_304)
  loc_1C7BEE7:             If (var_92 = 0) Then
  loc_1C7BEEC:               Print 1
  loc_1C7BF20:               var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C7BF31:               If (var_F0 <> vbNullString) Then
  loc_1C7BF5A:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1C7BF60:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C7BF72:               End If
  loc_1C7BF7A:               If (var_F4 <> vbNullString) Then
  loc_1C7BFA3:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1C7BFA9:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C7BFBB:               End If
  loc_1C7BFC3:               If (var_F8 <> vbNullString) Then
  loc_1C7BFEC:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1C7BFF2:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C7C004:               End If
  loc_1C7C00C:               If (var_FC <> vbNullString) Then
  loc_1C7C035:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1C7C03B:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C7C04D:               End If
  loc_1C7C04F:               Print 1
  loc_1C7C07F:               Call Proc_333_94_10AC2D0(Me.LblRest.Caption, "D", &H28)
  loc_1C7C089:               Print 1, var_308
  loc_1C7C0AF:               Call Proc_333_94_10AC2D0(var_90, "D", &H28)
  loc_1C7C0B9:               Print 1, var_17C
  loc_1C7C0CD:               Print 1
  loc_1C7C0D5:               Print 1
  loc_1C7C10E:               Proc_6_39_E7C810(var_18C, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C7C130:               var_148 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_1C7C13A:               var_1B4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_18C), &HA, Proc_6_45_EAD428(CStr(var_18C), &HA, var_17C))))
  loc_1C7C140:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, var_18C))
  loc_1C7C1F2:               var_148 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_1C7C1FC:               var_1A4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_308), &HC)))
  loc_1C7C205:               var_1B4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_308), &HC))), &HA, Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_308), &HC))), &HA, var_17C))) + " ")
  loc_1C7C20F:               var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_308), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C7C215:               Print 1, "* NC LOT *"
  loc_1C7C26A:               var_178 = var_B4.Fields.Item("Remarks")
  loc_1C7C2A7:               var_148 = (Chr(&HF) + "Remarks :     ")
  loc_1C7C2B1:               var_1A4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32)))
  loc_1C7C2B8:               var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32))), &HA, Proc_6_38_E68A98(CVar(var_178)))) + Chr(&H12))
  loc_1C7C2BE:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C7C2F7:               Set var_170 = Me.Label1
  loc_1C7C2FD:               Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C7C36E:               var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C7C377:               var_1B4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))), &HA, Proc_6_38_E68A98(CVar(var_178)))) + ":     ")
  loc_1C7C381:               var_224 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1C7C387:               Print 1, "* NC LOT *"
  loc_1C7C3CC:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7C3D2:               Print 1, CVar(var_178)
  loc_1C7C3DF:             End If
  loc_1C7C405:             var_16C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1B)) + Space(1))
  loc_1C7C41F:             var_1A4 = (Trim(CVar(var_178)) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1C7C424:             var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6))), &HA, "Qty")))
  loc_1C7C451:             var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C7C457:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H1B))
  loc_1C7C47A:             var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7C480:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H1B))
  loc_1C7C493:             var_92 = (var_92 + 4)
  loc_1C7C499:             var_B8.MoveFirst
  loc_1C7C49E:             ' Referenced from:     1C7CA0F
  loc_1C7C4AD:             If Not(var_B8.EOF) Then
  loc_1C7C4DE:               var_16C = Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ItemName")), &H12)))
  loc_1C7C4E7:               var_108 = CStr(var_16C)
  loc_1C7C51C:               Proc_6_39_E7C810(var_16C, CVar(var_B8.Fields.Item("qty")))
  loc_1C7C553:               var_190 = var_B8.Fields
  loc_1C7C5BF:               var_1D4 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_16C, "0.00")), 6, Space(1))))
  loc_1C7C5D5:               var_2D4 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_190.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, CVar(var_B4.Fields.Item("TableNo")))) 'String
  loc_1C7C5D8:               var_2E4 = (1 + var_2D4)
  loc_1C7C5DD:               var_C4 = CStr(IIf(("Qty" = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7C60F:               ' Referenced from:     1C7C814
  loc_1C7C619:               If (Len(var_108) <> 0) Then
  loc_1C7C64A:                 var_174 = InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0)
  loc_1C7C681:                 var_18C = CVar((InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0) - 1)) 'Long
  loc_1C7C6D4:                 var_308 = Proc_6_45_EAD428(CStr(Mid(var_108, 1, IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 27, "0.00"))), &H1B)
  loc_1C7C710:                 var_148 = (Chr(&HF) + CVar(var_308 & var_308 & var_C4))
  loc_1C7C716:                 Print 1, Left(var_108, &H1B)
  loc_1C7C729:                 var_92 = (var_92 + 1)
  loc_1C7C72F:                 var_C4 = vbNullString
  loc_1C7C73C:                 If (Len(var_108) > &H1B) Then
  loc_1C7C76D:                   var_174 = InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0)
  loc_1C7C795:                   var_17C = CStr(Left(var_108, &H1B))
  loc_1C7C7A4:                   var_18C = CVar((InStrRev(var_17C, " ", -1, 0) + 1)) 'Long
  loc_1C7C7E5:                   var_1D4 = Mid(var_108, CLng(IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00")), CVar(Len(var_108)))
  loc_1C7C7EE:                   var_108 = CStr(var_1D4)
  loc_1C7C80E:                 Else
  loc_1C7C811:                   var_108 = vbNullString
  loc_1C7C814:                 End If
  loc_1C7C814:                 GoTo loc_1C7C60F
  loc_1C7C817:               End If
  loc_1C7C850:               If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), var_BC.AbsolutePosition, &H12) <> vbNullString) Then
  loc_1C7C893:                 var_148 = (Chr(&HF) + "(")
  loc_1C7C89D:                 var_1A4 = (Left(var_108, &H1B) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), var_BC.AbsolutePosition)))
  loc_1C7C8A6:                 var_1B4 = (IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00") + ")")
  loc_1C7C8AC:                 Print 1, CVar(Len(var_108))
  loc_1C7C8CD:                 var_92 = (var_92 + 1)
  loc_1C7C8D0:               End If
  loc_1C7C8DA:               If (&H12 = (&H45 - var_A6)) Then
  loc_1C7C8F3:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7C8F9:                 Print 1, Left(var_108, &H1B)
  loc_1C7C90B:                 Print 1, "Contd."
  loc_1C7C923:                 Print 1, Chr(&HC)
  loc_1C7C932:                 var_94 = (var_94 + 1)
  loc_1C7C948:                 Call Proc_333_95_1201B54(1, 0, &H28, var_312)
  loc_1C7C967:                 Call Proc_333_94_10AC2D0(var_90, "B", &H28, var_17C, var_312)
  loc_1C7C971:                 Print 1, var_17C
  loc_1C7C980:                 var_92 = &H12
  loc_1C7C999:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7C99F:                 Print 1, Left(var_108, &H1B)
  loc_1C7C9C2:                 var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C7C9C8:                 Print 1, Left(var_108, &H1B)
  loc_1C7C9EB:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7C9F1:                 Print 1, Left(var_108, &H1B)
  loc_1C7CA04:                 var_92 = (var_92 + 4)
  loc_1C7CA07:               End If
  loc_1C7CA0A:               var_B8.MoveNext
  loc_1C7CA0F:               GoTo loc_1C7C49E
  loc_1C7CA12:             End If
  loc_1C7CA1C:             If (var_92 < (&H45 - var_A6)) Then
  loc_1C7CA1F:               ' Referenced from:     1C7CA40
  loc_1C7CA29:               If (var_92 = (&H45 - var_A6)) Then
  loc_1C7CA31:                 Print 1, vbNullString
  loc_1C7CA3D:                 var_92 = (var_92 + 1)
  loc_1C7CA40:                 GoTo loc_1C7CA1F
  loc_1C7CA43:               End If
  loc_1C7CA43:             End If
  loc_1C7CA59:             var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7CA5F:             Print 1, Left(var_108, &H1B)
  loc_1C7CAC0:             var_148 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1C7CAC7:             var_18C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C7CACA:             var_1A4 = (Left(var_108, &H1B) + var_18C)
  loc_1C7CAD0:             Print 1, IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00")
  loc_1C7CB14:             var_148 = (Chr(&HF) + "***  ")
  loc_1C7CB1B:             var_18C = Left(var_108, &H1B) & Trim(var_C8) 
  loc_1C7CB2A:             Print 1, var_18C & "  ***"
  loc_1C7CB85:             var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C7CB93:             unk_58F14B.Execute CStr(var_16C), var_18C, -1
  loc_1C7CBF4:             If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C7CC25:               Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("Changed TOKEN", &H14, var_190), "D", &H28, var_308)
  loc_1C7CC2F:               Print 1, var_308
  loc_1C7CC45:             Else
  loc_1C7CC9B:               unk_58F14B.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C7CCF9:               If (Proc_6_38_E68A98(CVar(var_190.Fields.Item(0)), var_190, 1) = "Y") Then
  loc_1C7CD0F:                 var_30C = Proc_6_45_EAD428("DUPLICATE TOKEN", &H14)
  loc_1C7CD2A:                 Call Proc_333_94_10AC2D0(var_30C, "D", &H28)
  loc_1C7CD34:                 Print 1, var_308
  loc_1C7CD4A:               Else
  loc_1C7CD4C:                 Print 1
  loc_1C7CD52:               End If
  loc_1C7CD52:             End If
  loc_1C7CD57:             Set var_DC = Nothing
  loc_1C7CD6F:             var_148 = (Chr(&HF) + "** ")
  loc_1C7CD79:             var_16C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1C7CD82:             var_18C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C7CD88:             Print 1, var_18C
  loc_1C7CD9C:             var_B4.MoveNext
  loc_1C7CDA3:             Print 1
  loc_1C7CDAB:             Print 1
  loc_1C7CDB3:             Print 1
  loc_1C7CDBB:             Print 1
  loc_1C7CDE1:             var_16C = (Chr(&H1B) + Chr(&H6D))
  loc_1C7CDE7:             Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C7CDF6:             GoTo loc_1C7BD5E
  loc_1C7CDF9:           End If
  loc_1C7CDFB:           Close 1
  loc_1C7CE36:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C7CE5E:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C7CEB6:             var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C7CEBC:             Print 1, var_16C
  loc_1C7CEDC:           Else
  loc_1C7CF01:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C7CF38:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C7CF49:           End If
  loc_1C7CF4B:           Close 1
  loc_1C7CF55:           If (MemVar_1F923B8 = "Y") Then
  loc_1C7CF87:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C7CF98:           Else
  loc_1C7CFA0:             For var_37C = 1 To var_E8:       var_EA = var_37C 'Integer
  loc_1C7CFD5:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C7CFE6:             Next var_37C 'Integer
  loc_1C7CFEB:           End If
  loc_1C7CFEE:         Else
  loc_1C7CFF9:           If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1C7CFFE:             Close 1
  loc_1C7D025:             Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C7D035:             var_B4.MoveFirst
  loc_1C7D03A:             ' Referenced from:       1C7DF2D
  loc_1C7D049:             If Not(var_B4.EOF) Then
  loc_1C7D089:               var_18C = 3
  loc_1C7D0D1:               var_1EC = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN")))
  loc_1C7D16C:               var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C)) = "LAU") 'Variant
  loc_1C7D176:               var_304 = IIf(var_2F4, IIf((var_1EC = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7D17F:               var_90 = CStr(var_304)
  loc_1C7D1C3:               If (0 = 0) Then
  loc_1C7D1C8:                 Print 1
  loc_1C7D1FC:                 var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C7D20D:                 If (var_F0 <> vbNullString) Then
  loc_1C7D236:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1C7D23C:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C7D24E:                 End If
  loc_1C7D256:                 If (var_F4 <> vbNullString) Then
  loc_1C7D27F:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1C7D285:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C7D297:                 End If
  loc_1C7D29F:                 If (var_F8 <> vbNullString) Then
  loc_1C7D2C8:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1C7D2CE:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C7D2E0:                 End If
  loc_1C7D2E8:                 If (var_FC <> vbNullString) Then
  loc_1C7D311:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1C7D317:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C7D329:                 End If
  loc_1C7D32B:                 Print 1
  loc_1C7D36F:                 Call Proc_333_94_10AC2D0(Proc_6_45_EAD428(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1C7D379:                 Print 1, var_30C
  loc_1C7D3B7:                 Call Proc_333_94_10AC2D0(Proc_6_45_EAD428(var_90, &H14), "D", &H28)
  loc_1C7D3C1:                 Print 1, var_1EC
  loc_1C7D3D9:                 Print 1
  loc_1C7D3E1:                 Print 1
  loc_1C7D41A:                 Proc_6_39_E7C810(var_18C, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C7D43C:                 var_148 = (Chr(&HF) + "TOKEN No.   :       ")
  loc_1C7D446:                 var_1B4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_18C), &HA, var_1EC)))
  loc_1C7D44C:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C))
  loc_1C7D4FE:                 var_148 = (Chr(&HF) + "TOKEN Dt.   :       ")
  loc_1C7D505:                 var_18C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1C7D508:                 var_1A4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + var_18C)
  loc_1C7D511:                 var_1B4 = (CVar(Proc_6_45_EAD428(CStr(var_18C), &HA, Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")))))) + " ")
  loc_1C7D51B:                 var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C7D521:                 Print 1, "* NC LOT *"
  loc_1C7D576:                 var_178 = var_B4.Fields.Item("Remarks")
  loc_1C7D5B3:                 var_148 = (Chr(&HF) + "Remarks :       ")
  loc_1C7D5BD:                 var_1A4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32)))
  loc_1C7D5C4:                 var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32))) + Chr(&H12))
  loc_1C7D5CA:                 Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C7D603:                 Set var_170 = Me.Label1
  loc_1C7D609:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C7D65A:                 var_308 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C7D67A:                 var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C7D683:                 var_1B4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))) + ":       ")
  loc_1C7D68D:                 var_224 = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_308, 5)))
  loc_1C7D693:                 Print 1, "* NC LOT *"
  loc_1C7D6D8:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7D6DE:                 Print 1, CVar(var_178)
  loc_1C7D6EB:               End If
  loc_1C7D711:               var_16C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1C7D71D:               var_17C = "Qty"
  loc_1C7D72B:               var_1A4 = (Trim(CVar(var_178)) + CVar(Proc_6_52_EAD4F4(var_17C, 6)))
  loc_1C7D730:               var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_17C, 6))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))))
  loc_1C7D75D:               var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C7D763:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C7D786:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7D78C:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C7D79F:               var_92 = (var_92 + 4)
  loc_1C7D7A5:               var_B8.MoveFirst
  loc_1C7D7AA:               ' Referenced from:       1C7DB4B
  loc_1C7D7B9:               If Not(var_B8.EOF) Then
  loc_1C7D7F2:                 var_190 = var_B8.Fields
  loc_1C7D809:                 Proc_6_39_E7C810(Chr(&H12), CVar(var_190.Item("qty")))
  loc_1C7D8AC:                 var_18C = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C7D8C5:                 var_234 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_17C, 6)))))
  loc_1C7D8DB:                 var_304 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C7D8DE:                 var_340 = (&H12 + var_304)
  loc_1C7D937:                 var_148 = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C7D93D:                 Print 1, Space(3)
  loc_1C7D950:                 var_92 = (var_92 + 1)
  loc_1C7D98C:                 If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C7D9CF:                   var_148 = (Chr(&HF) + "(")
  loc_1C7D9D9:                   var_1A4 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1C7D9E2:                   var_1B4 = (CVar(var_190.Item("qty")) + ")")
  loc_1C7D9E8:                   Print 1, Chr(&H12)
  loc_1C7DA09:                   var_92 = (var_92 + 1)
  loc_1C7DA0C:                 End If
  loc_1C7DA16:                 If (&H12 = (&H45 - var_A6)) Then
  loc_1C7DA2F:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7DA35:                   Print 1, Space(3)
  loc_1C7DA47:                   Print 1, "Contd."
  loc_1C7DA5F:                   Print 1, Chr(&HC)
  loc_1C7DA6E:                   var_94 = (var_94 + 1)
  loc_1C7DA84:                   Call Proc_333_95_1201B54(1, 0, &H28, var_312)
  loc_1C7DAA3:                   Call Proc_333_94_10AC2D0(var_90, "B", &H28, var_17C, var_312)
  loc_1C7DAAD:                   Print 1, var_17C
  loc_1C7DABC:                   var_92 = &H12
  loc_1C7DAD5:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7DADB:                   Print 1, Space(3)
  loc_1C7DAFE:                   var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C7DB04:                   Print 1, Space(3)
  loc_1C7DB27:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7DB2D:                   Print 1, Space(3)
  loc_1C7DB40:                   var_92 = (var_92 + 4)
  loc_1C7DB43:                 End If
  loc_1C7DB46:                 var_B8.MoveNext
  loc_1C7DB4B:                 GoTo loc_1C7D7AA
  loc_1C7DB4E:               End If
  loc_1C7DB58:               If (var_92 < (&H45 - var_A6)) Then
  loc_1C7DB5B:                 ' Referenced from:       1C7DB7C
  loc_1C7DB65:                 If (var_92 = (&H45 - var_A6)) Then
  loc_1C7DB6D:                   Print 1, vbNullString
  loc_1C7DB79:                   var_92 = (var_92 + 1)
  loc_1C7DB7C:                   GoTo loc_1C7DB5B
  loc_1C7DB7F:                 End If
  loc_1C7DB7F:               End If
  loc_1C7DB95:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7DB9B:               Print 1, Space(3)
  loc_1C7DBF1:               var_1EC = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)
  loc_1C7DBFC:               var_148 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1C7DC06:               var_1A4 = (Space(3) + CVar(var_1EC))
  loc_1C7DC0C:               Print 1, CVar(var_190.Item("qty"))
  loc_1C7DC50:               var_148 = (Chr(&HF) + "***  ")
  loc_1C7DC57:               var_18C = Space(3) & Trim(var_C8) 
  loc_1C7DC66:               Print 1, var_18C & "  ***"
  loc_1C7DCC1:               var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C7DCCF:               unk_58F14B.Execute CStr(var_16C), var_18C, -1
  loc_1C7DD30:               If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C7DD61:                 Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("Changed TOKEN", &H14, var_190), "D", &H28, var_308)
  loc_1C7DD6B:                 Print 1, var_308
  loc_1C7DD81:               Else
  loc_1C7DDD7:                 unk_58F14B.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C7DE35:                 If (Proc_6_38_E68A98(CVar(var_190.Fields.Item(0)), var_190, 1) = "Y") Then
  loc_1C7DE66:                   Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1C7DE70:                   Print 1, var_308
  loc_1C7DE86:                 Else
  loc_1C7DE88:                   Print 1
  loc_1C7DE8E:                 End If
  loc_1C7DE8E:               End If
  loc_1C7DE93:               Set var_DC = Nothing
  loc_1C7DEAB:               var_148 = (Chr(&HF) + "** ")
  loc_1C7DEB5:               var_16C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1C7DEBE:               var_18C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C7DEC4:               Print 1, var_18C
  loc_1C7DED8:               var_B4.MoveNext
  loc_1C7DEDF:               Print 1
  loc_1C7DEE7:               Print 1
  loc_1C7DEEF:               Print 1
  loc_1C7DEF7:               Print 1
  loc_1C7DEFF:               Print 1
  loc_1C7DF07:               Print 1
  loc_1C7DF0F:               Print 1
  loc_1C7DF17:               Print 1
  loc_1C7DF1F:               Print 1
  loc_1C7DF27:               Print 1
  loc_1C7DF2D:               GoTo loc_1C7D03A
  loc_1C7DF30:             End If
  loc_1C7DF32:             Close 1
  loc_1C7DF6D:             If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C7DF95:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C7DFED:               var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C7DFF3:               Print 1, var_16C
  loc_1C7E013:             Else
  loc_1C7E038:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C7E06F:               Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C7E080:             End If
  loc_1C7E082:             Close 1
  loc_1C7E08C:             If (MemVar_1F923B8 = "Y") Then
  loc_1C7E0BE:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C7E0CF:             Else
  loc_1C7E0D7:               For var_380 = 1 To var_E8:         var_EA = var_380 'Integer
  loc_1C7E10C:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C7E11D:               Next var_380 'Integer
  loc_1C7E122:             End If
  loc_1C7E125:           Else
  loc_1C7E130:             If (var_264 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1C7E135:               Close 1
  loc_1C7E15C:               Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C7E16C:               var_B4.MoveFirst
  loc_1C7E171:               ' Referenced from:         1C7F20B
  loc_1C7E180:               If Not(var_B4.EOF) Then
  loc_1C7E2AD:                 var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7E2B6:                 var_90 = CStr(var_304)
  loc_1C7E322:                 var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1C7E331:                 If (0 = 0) Then
  loc_1C7E336:                   Print 1
  loc_1C7E344:                   If (var_F0 <> vbNullString) Then
  loc_1C7E37A:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H2A)))
  loc_1C7E381:                     var_1A4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C7E387:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C7E39D:                   End If
  loc_1C7E3A5:                   If (var_F4 <> vbNullString) Then
  loc_1C7E3DB:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H2A)))
  loc_1C7E3E2:                     var_1A4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C7E3E8:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C7E3FE:                   End If
  loc_1C7E406:                   If (var_F8 <> vbNullString) Then
  loc_1C7E43C:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H2A)))
  loc_1C7E443:                     var_1A4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C7E449:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C7E45F:                   End If
  loc_1C7E467:                   If (var_FC <> vbNullString) Then
  loc_1C7E49D:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H2A)))
  loc_1C7E4A4:                     var_1A4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C7E4AA:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C7E4C0:                   End If
  loc_1C7E4C2:                   Print 1
  loc_1C7E4F1:                   var_1A4 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C7E534:                   var_2E4 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C7E546:                   var_304 = Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)))
  loc_1C7E55E:                   var_1E4 = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1C7E565:                   var_254 = (CVar(var_B4.Fields.Item("NCTOKEN")) + Trim(CVar(Me.LblRest)))
  loc_1C7E56C:                   var_340 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") + var_304)
  loc_1C7E573:                   var_364 = (IIf((var_B8.Fields.Item(2).Value = (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1C7E579:                   Print 1, var_364
  loc_1C7E5C7:                   var_18C = (40 - Len(Trim(var_90)))
  loc_1C7E5FA:                   var_254 = (40 - Len(Trim(var_90)))
  loc_1C7E60C:                   var_2B4 = Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") / 2)))
  loc_1C7E624:                   var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1C7E62E:                   var_1E4 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1C7E635:                   var_2D4 = (CVar(var_B4.Fields.Item("NCTOKEN")) + var_2B4)
  loc_1C7E63C:                   var_2F4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1C7E642:                   Print 1, (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)
  loc_1C7E666:                   Print 1
  loc_1C7E66E:                   Print 1
  loc_1C7E6A7:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")))
  loc_1C7E6D6:                   var_148 = (Chr(&HF) + "TOKEN No.   :         ")
  loc_1C7E6E0:                   var_1B4 = (Trim(var_90) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)))
  loc_1C7E6E7:                   var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1C7E6ED:                   Print 1, CVar(var_B4.Fields.Item("NCTOKEN"))
  loc_1C7E7B0:                   var_148 = (Chr(&HF) + "TOKEN Dt.   :         ")
  loc_1C7E7BA:                   var_1A4 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), &H12), &HC)))
  loc_1C7E7C3:                   var_1B4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + " ")
  loc_1C7E7CD:                   var_224 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C7E7D4:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C7E7DA:                   Print 1, IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *")
  loc_1C7E833:                   var_178 = var_B4.Fields.Item("Remarks")
  loc_1C7E870:                   var_148 = (Chr(&HF) + "Remarks :         ")
  loc_1C7E87A:                   var_1A4 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H20)))
  loc_1C7E881:                   var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + Chr(&H12))
  loc_1C7E887:                   Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C7E8C0:                   Set var_170 = Me.Label1
  loc_1C7E8C6:                   Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C7E917:                   var_308 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C7E944:                   var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C7E94D:                   var_1B4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + ":         ")
  loc_1C7E957:                   var_224 = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_308, 5)))
  loc_1C7E95E:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C7E964:                   Print 1, IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *")
  loc_1C7E9BA:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7E9C1:                   var_18C = (CVar(var_178) + Chr(&H12))
  loc_1C7E9C7:                   Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))
  loc_1C7E9D8:                 End If
  loc_1C7E9FE:                 var_16C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Space(1))
  loc_1C7EA18:                 var_1A4 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 7)))
  loc_1C7EA24:                 var_1B4 = Space(1)
  loc_1C7EA2C:                 var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + var_1B4)
  loc_1C7EA46:                 var_224 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 7)))
  loc_1C7EA8F:                 var_148 = (Chr(&HF) + CVar(CStr(Trim(var_90))))
  loc_1C7EA96:                 var_18C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C7EA9C:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1C7EAD0:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7EAD7:                 var_18C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C7EADD:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1C7EAF4:                 var_92 = (var_92 + 4)
  loc_1C7EAFA:                 var_B8.MoveFirst
  loc_1C7EAFF:                 ' Referenced from:         1C7EE0D
  loc_1C7EB0E:                 If Not(var_B8.EOF) Then
  loc_1C7EB47:                   var_190 = var_B8.Fields
  loc_1C7EB5E:                   Proc_6_39_E7C810(var_1B4, CVar(var_190.Item("qty")))
  loc_1C7EBA9:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1C7EC4C:                   var_18C = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1, 1)) + Space(1))
  loc_1C7EC65:                   var_234 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1B4, "0.000")), 7, CVar(Proc_6_52_EAD4F4("Qty", 7)))))
  loc_1C7EC79:                   var_284 = (Chr(&H12) + Space(1))
  loc_1C7EC8F:                   var_304 = CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 7, (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) 'String
  loc_1C7EC92:                   var_340 = (&H12 + var_304)
  loc_1C7ECA8:                   var_3DC = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C7ECAB:                   var_3EC = (IIf((var_B8.Fields.Item("Rate").Value = "0.00"), "Void", vbNullString) + var_3DC)
  loc_1C7ED25:                   var_148 = (Chr(&HF) + CVar(CStr(var_3EC)))
  loc_1C7ED2C:                   var_18C = (Space(1) + Chr(&H12))
  loc_1C7ED32:                   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1C7ED49:                   var_92 = (var_92 + 1)
  loc_1C7ED85:                   If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C7EDC8:                     var_148 = (Chr(&HF) + "(")
  loc_1C7EDD2:                     var_1A4 = (Space(1) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1C7EDDB:                     var_1B4 = (CVar(var_190.Item("qty")) + ")")
  loc_1C7EDE1:                     Print 1, var_1B4
  loc_1C7EE02:                     var_92 = (var_92 + 1)
  loc_1C7EE05:                   End If
  loc_1C7EE08:                   var_B8.MoveNext
  loc_1C7EE0D:                   GoTo loc_1C7EAFF
  loc_1C7EE10:                 End If
  loc_1C7EE33:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7EE3A:                 var_18C = (Space(1) + Chr(&H12))
  loc_1C7EE40:                 Print 1, CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description"))))
  loc_1C7EEB2:                 var_148 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1C7EEBC:                 var_1A4 = (Space(1) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1C7EEC3:                 var_1D4 = (CVar(var_190.Item("qty")) + Chr(&H12))
  loc_1C7EEC9:                 Print 1, "0.000"
  loc_1C7EF11:                 var_1A4 = Chr(&H12)
  loc_1C7EF1E:                 var_148 = (Chr(&HF) + "***  ")
  loc_1C7EF25:                 var_18C = Space(1) & Trim(var_C8) 
  loc_1C7EF31:                 var_1B4 = ("  ***" + var_1A4)
  loc_1C7EF3B:                 Print 1, var_18C & Chr(&H12)
  loc_1C7EF9A:                 var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C7EFA8:                 unk_58F14B.Execute CStr(var_16C), var_18C, -1
  loc_1C7F009:                 If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C7F03A:                   Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("Changed TOKEN", &H14), "D", &H28)
  loc_1C7F044:                   Print 1, var_308
  loc_1C7F05A:                 Else
  loc_1C7F0B0:                   unk_58F14B.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C7F10E:                   If (Proc_6_38_E68A98(CVar(var_190.Fields.Item(0)), var_190, var_308) = "Y") Then
  loc_1C7F13F:                     Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1C7F149:                     Print 1, var_308
  loc_1C7F15F:                   Else
  loc_1C7F161:                     Print 1
  loc_1C7F167:                   End If
  loc_1C7F167:                 End If
  loc_1C7F16C:                 Set var_DC = Nothing
  loc_1C7F184:                 var_148 = (Chr(&HF) + "** ")
  loc_1C7F18E:                 var_16C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1C7F197:                 var_18C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C7F19D:                 Print 1, var_18C
  loc_1C7F1B1:                 var_B4.MoveNext
  loc_1C7F1B8:                 Print 1
  loc_1C7F1C0:                 Print 1
  loc_1C7F1C8:                 Print 1
  loc_1C7F1D0:                 Print 1
  loc_1C7F1F6:                 var_16C = (Chr(&H1B) + Chr(&H6D))
  loc_1C7F1FC:                 Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C7F20B:                 GoTo loc_1C7E171
  loc_1C7F20E:               End If
  loc_1C7F210:               Close 1
  loc_1C7F24B:               If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C7F273:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C7F2CB:                 var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C7F2D1:                 Print 1, var_16C
  loc_1C7F2F1:               Else
  loc_1C7F316:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C7F34D:                 Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C7F35E:               End If
  loc_1C7F360:               Close 1
  loc_1C7F36A:               If (MemVar_1F923B8 = "Y") Then
  loc_1C7F39C:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C7F3AD:               Else
  loc_1C7F3B5:                 For var_3F0 = 1 To var_E8:           var_EA = var_3F0 'Integer
  loc_1C7F3EA:                   var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C7F3FB:                 Next var_3F0 'Integer
  loc_1C7F400:               End If
  loc_1C7F400:             End If
  loc_1C7F400:           End If
  loc_1C7F400:         End If
  loc_1C7F400:       End If
  loc_1C7F400:     End If
  loc_1C7F456:     unk_58F14B.Execute CStr("UPDATE TOKEN SET PRINTED='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C7F475:   Else
  loc_1C7F4BF:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_18C, var_1A4, Chr(&H12))
  loc_1C7F4DA:   End If
  loc_1C7F4DD:   var_BC.MoveNext
  loc_1C7F4E2:   GoTo loc_1C79874
  loc_1C7F4E5: End If
  loc_1C7F4EA: Set var_B4 = Nothing
  loc_1C7F4F2: Set var_B8 = Nothing
  loc_1C7F4FA: Set var_BC = Nothing
  loc_1C7F4FD: Exit Sub
  loc_1C7F4FE: ' Referenced from: 1C78E84
  loc_1C7F4FE: Proc_6_60_E62BC4(var_190)
  loc_1C7F503: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1A8B494
  'Data Table: 58F128
  Dim var_C4 As Variant
  Dim var_AC As Variant
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_A8 As Variant
  Dim var_F4 As Variant
  Dim var_148 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As Variant
  Dim var_158 As String
  Dim unk_58F14B As Connection15
  Dim var_B0 As Variant
  Dim MemVar_1F920EC As Double
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_114 As Variant
  Dim var_18C As Variant
  Dim var_17C As Variant
  Dim var_1DC As Variant
  Dim var_150 As Double
  Dim var_228 As TextBox
  Dim var_9C8 As Double
  Dim var_298 As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_320 As MSHFlexGrid
  Dim var_380 As Variant
  Dim var_3A0 As Variant
  Dim var_3B4 As Variant
  Dim var_3C4 As Variant
  Dim var_414 As Variant
  Dim var_45C As String
  Dim var_9D0 As Double
  Dim var_4F4 As String
  Dim var_9D8 As Double
  Dim var_5DC As String
  Dim var_67C As Variant
  Dim var_69C As Variant
  Dim var_710 As Variant
  Dim var_730 As Variant
  Dim var_744 As MSHFlexGrid
  Dim var_7FC As Variant
  Dim var_81C As Variant
  Dim var_9E0 As Double
  Dim var_914 As Variant
  Dim var_934 As Variant
  Dim var_948 As MSHFlexGrid
  Dim var_958 As Variant
  Dim var_200 As String
  Dim var_204 As String
  Dim var_208 As String
  Dim var_21C As String
  Dim var_230 As String
  Dim var_238 As String
  Dim var_134 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_2BC As Variant
  Dim var_340 As Variant
  Dim var_47C As Variant
  Dim var_514 As Variant
  Dim var_554 As Variant
  Dim var_5A4 As Variant
  Dim var_64C As Variant
  Dim var_6E0 As Variant
  Dim var_794 As Variant
  Dim var_7CC As Variant
  Dim var_854 As Variant
  Dim var_884 As Variant
  Dim var_8C4 As Variant
  Dim var_8E4 As Variant
  Dim var_23C As Label
  Dim var_294 As TextBox
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_3B0 As Variant
  Dim var_5C8 As MSHFlexGrid
  Dim var_5D8 As Variant
  Dim var_22C As String
  Dim var_EA4 As Double
  Dim var_9C0 As TextBox
  Dim var_B5C As Field20
  Dim var_29C As String
  Dim var_EAC As Double
  Dim var_C88 As Variant
  Dim var_CB8 As Variant
  Dim var_D18 As Variant
  Dim var_D5C As Variant
  Dim var_DA4 As Variant
  Dim var_DF4 As Variant
  Dim var_E14 As Variant
  Dim var_E28 As MSHFlexGrid
  Dim var_594 As Variant
  Dim var_9BC As Variant
  Dim var_A44 As Variant
  Dim var_B7C As Variant
  Dim var_C10 As Variant
  Dim var_C50 As Variant
  Dim var_D08 As Variant
  Dim var_D7C As Variant
  Dim var_DC4 As Variant
  Dim var_DD4 As Variant
  Dim var_E68 As Variant
  Dim var_BDC As Variant
  Dim var_C78 As TextBox
  Dim var_DA0 As MSHFlexGrid
  Dim var_E98 As Variant
  Dim var_88 As Recordset15
  Dim var_214 As String
  loc_1A87A08: On Error Goto loc_1A8B47A
  loc_1A87A16: Set var_A8 = Me.Txt
  loc_1A87A1C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1A87A45: If (Proc_6_27_EA565C(var_AC, "Voucher Date") = 0) Then
  loc_1A87A48:   Exit Sub
  loc_1A87A49: End If
  loc_1A87A54: Set var_A8 = Me.Txt
  loc_1A87A5A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1A87A83: If (Proc_6_27_EA565C(var_AC, "Voucher No") = 0) Then
  loc_1A87A86:   Exit Sub
  loc_1A87A87: End If
  loc_1A87A92: If (LocalRestCode = vbNullString) Then
  loc_1A87AAE:   MsgBox("Open RestaurantChange Master", 0, var_F4, var_114, var_134)
  loc_1A87ABE:   Exit Sub
  loc_1A87ABF: End If
  loc_1A87ACA: Set var_A8 = Me.Txt
  loc_1A87AD0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1A87AF9: If (Proc_6_27_EA565C(var_AC, "TOKEN Time") = 0) Then
  loc_1A87AFC:   Exit Sub
  loc_1A87AFD: End If
  loc_1A87B08: Set var_A8 = Me.Txt
  loc_1A87B0E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1A87B37: If (Proc_6_27_EA565C(var_AC, "WAITER") = 0) Then
  loc_1A87B3A:   Exit Sub
  loc_1A87B3B: End If
  loc_1A87B46: Set var_A8 = Me.Txt
  loc_1A87B4C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1A87B75: If (Proc_6_27_EA565C(var_AC, "TABLE CODE") = 0) Then
  loc_1A87B78:   Exit Sub
  loc_1A87B79: End If
  loc_1A87B87: Set var_A8 = Me.Txt
  loc_1A87B8D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1A87BA3: var_F4 = Trim(CVar(var_AC.Tag))
  loc_1A87BC1: If (var_F4 = vbNullString) Then
  loc_1A87BDD:   MsgBox("TABLE CODE is required field.", &H10, var_F4, var_114, var_134)
  loc_1A87BFB:   Set var_A8 = Me.Txt
  loc_1A87C01:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1A87C1B:   If (var_AC.Enabled = &HFF) Then
  loc_1A87C29:     Set var_A8 = Me.Txt
  loc_1A87C2F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1A87C37:     var_AC.SetFocus
  loc_1A87C43:   End If
  loc_1A87C43:   Exit Sub
  loc_1A87C44: End If
  loc_1A87C52: Set var_A8 = Me.Txt
  loc_1A87C58: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1A87C6E: var_F4 = Trim(CVar(var_AC.Tag))
  loc_1A87C8C: If (var_F4 = vbNullString) Then
  loc_1A87CA8:   MsgBox("Steward Name is required field.", &H10, var_F4, var_114, var_134)
  loc_1A87CC6:   Set var_A8 = Me.Txt
  loc_1A87CCC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1A87CD4:   var_136 = var_AC.Enabled
  loc_1A87CE6:   If (var_136 = &HFF) Then
  loc_1A87CF4:     Set var_A8 = Me.Txt
  loc_1A87CFA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1A87D02:     var_AC.SetFocus
  loc_1A87D0E:   End If
  loc_1A87D0E:   Exit Sub
  loc_1A87D0F: End If
  loc_1A87D0F: var_C4 = 1
  loc_1A87D18: var_104 = 1
  loc_1A87D36: var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A87D3C: var_114 = Trim(var_F4)
  loc_1A87D58: If (var_114 = vbNullString) Then
  loc_1A87D74:   MsgBox("Fill Item Name ", 0, var_F4, var_114, var_134)
  loc_1A87D97:   Me.FGrid.Row = 1
  loc_1A87DA3:   Set var_A8 = Me.FGrid
  loc_1A87DC7:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1A87DCF:   Exit Sub
  loc_1A87DD0: End If
  loc_1A87DD0: var_C4 = 1
  loc_1A87DDC: var_104 = CVar(CLng(4)) 'Long
  loc_1A87DF6: var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A87DFC: var_114 = Trim(var_F4)
  loc_1A87E18: If (var_114 = vbNullString) Then
  loc_1A87E34:   MsgBox("Item Detail Required ", 0, var_F4, var_114, var_134)
  loc_1A87E57:   Me.FGrid.Row = 1
  loc_1A87E63:   Set var_A8 = Me.FGrid
  loc_1A87E78:   var_C4 = CVar(CLng("14737632")) 'Long
  loc_1A87E87:   Me.FGrid.CellBackColor = var_C4
  loc_1A87E8F:   Exit Sub
  loc_1A87E90: End If
  loc_1A87E93: Call Proc_333_86_1081720(var_136, FGrid.DispID_8001, var_104, var_C4)
  loc_1A87EA3: Set var_A8 = Me.TxtGrid
  loc_1A87EA9: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_AC, 0, FGrid.DispID_8001)
  loc_1A87EB1: var_AC.Visible = var_104
  loc_1A87EBD: Call Proc_333_89_EF82C8(var_C4)
  loc_1A87ED0: Set var_A8 = Me.Txt
  loc_1A87ED6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1A87EFE: If (Proc_6_91_EF2D40(CDate(var_AC.Text)) = 0) Then
  loc_1A87F0C:   Set var_A8 = Me.Txt
  loc_1A87F12:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1A87F1A:   var_AC.SetFocus
  loc_1A87F26:   Exit Sub
  loc_1A87F27: End If
  loc_1A87F5C: var_114 = IIf((Me.ChkNCTOKEN.Value = 1), "Y", "N")
  loc_1A87F65: var_9C = CStr(var_114)
  loc_1A87F7A: Set var_A8 = Me.TopCtrl1
  loc_1A87F80: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_AC)
  loc_1A87F99: If (CStr() = "Add") Then
  loc_1A87FB7:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A87FBA:     ' Referenced from: 1A8806E
  loc_1A87FBE:     Set var_154 = New RsTouchScreenKeyBoard
  loc_1A87FCC:     var_154.ParentForm = CVar(Me)
  loc_1A87FD9:     var_154.CAPTION = "Please Specify, Reason of NC TOKEN ?"
  loc_1A87FEB:     var_154.TxtKeyBoard.MaxLength = 150
  loc_1A87FF2:     var_C4 = 1
  loc_1A87FFE:     Call var_154.Show
  loc_1A8803A:     If (Trim(TxtKeyBoard) = vbNullString) Then
  loc_1A88048:       var_F4 = "Reason"
  loc_1A88058:       var_D4 = "Please Enter a Valid Reason for NC TOKEN."
  loc_1A8805E:       MsgBox(var_D4, 0, var_F4, var_114, var_134)
  loc_1A8806E:       GoTo loc_1A87FBA
  loc_1A88071:     End If
  loc_1A88071:   End If
  loc_1A88077:   var_E4 = 0
  loc_1A88094:   var_B4 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F92078
  loc_1A880A4:   unk_58F14B.Execute var_B4 & "'", var_D4, -1
  loc_1A880AC:   var_A8 = var_A8.Fields
  loc_1A880B4:   var_E4 = var_AC.Item(var_AC)
  loc_1A880BC:   var_B0 = var_B0.Value
  loc_1A880C6:   MemVar_1F920EC = CDate(var_F4)
  loc_1A8810D:   Set var_A8 = Me.Txt
  loc_1A88113:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Select Count(*) From TOKEN Where DocID='", var_D4, -1, var_B0)
  loc_1A88134:   unk_58F14B.Execute 0 & var_B4 & "'", var_164, var_F4
  loc_1A8813C:   MemVar_1F920EC = var_B0.Fields
  loc_1A88144:   var_C4 = var_AC.Text.Item(var_F4)
  loc_1A8814C:    = var_164.Value
  loc_1A88179:   If (var_F4 > 0) Then
  loc_1A88182:     Call Proc_333_91_10E99F0(MemVar_1F92044)
  loc_1A88195:     Set var_A8 = Me.Txt
  loc_1A8819B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_1A881A3:     var_AC.Text = var_B4
  loc_1A881B2:   End If
  loc_1A881B5: Else
  loc_1A881E9:   global_256 = CStr(Me.Fields.Item("DocID").Value)
  loc_1A881FA:   ' Referenced from:   1A882AE
  loc_1A881FE:   Set var_154 = New RsTouchScreenKeyBoard
  loc_1A8820C:   var_154.ParentForm = CVar(Me)
  loc_1A88219:   var_154.CAPTION = "Please Specify, Reason of Editing ?"
  loc_1A8822B:   var_154.TxtKeyBoard.MaxLength = 150
  loc_1A88232:   var_C4 = 1
  loc_1A8823E:   Call var_154.Show
  loc_1A88252:   global_180 = TxtKeyBoard
  loc_1A8827A:   If (Trim(global_180) = vbNullString) Then
  loc_1A88293:     var_C4 = "Please Enter a Valid Reason for Editing."
  loc_1A8829E:     MsgBox(var_C4, 0, "Reason", var_114, var_134)
  loc_1A882AE:     GoTo loc_1A881FA
  loc_1A882B1:   End If
  loc_1A882B1: End If
  loc_1A882B3: Set var_154 = Nothing 
  loc_1A882B9: var_8A = &HFF
  loc_1A882C5: unk_58F14B.BeginTrans var_168
  loc_1A882CE: Set var_A8 = Me.TopCtrl1
  loc_1A882D4: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_8A)
  loc_1A882ED: If (CStr(var_C4) = "Edit") Then
  loc_1A88346:   unk_58F14B.Execute CStr("Select * from TOKEN Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1A88351:   Set var_88 = var_B0
  loc_1A88382:   If (Me.RecordCount > 0) Then
  loc_1A883DB:     unk_58F14B.Execute CStr("Delete From TOKEN Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1A8844D:     unk_58F14B.Execute CStr("Delete From Stock Where KOTDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1A88498:     var_AC = Me.Fields.Item("SearchCode")
  loc_1A884A0:     var_D4 = var_AC.Value
  loc_1A884B5:     var_B4 = CStr("Delete From Stock Where DocID='" & var_D4 & "'")
  loc_1A884BF:     unk_58F14B.Execute var_B4, var_134, -1
  loc_1A884DB:   End If
  loc_1A884F9:   Set var_A8 = Me.Txt
  loc_1A884FF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Delete From TOKEN Where DocID='", var_D4, -1)
  loc_1A88507:   var_B0 = var_AC.Text
  loc_1A88520:   unk_58F14B.Execute var_B0 & var_B4 & "'", var_B0, var_B0
  loc_1A8853A: End If
  loc_1A88555: If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A8857D:   For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_16C 'Integer
  loc_1A88587:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A8858F:     var_104 = CVar(CLng(9)) 'Long
  loc_1A885D8:     If (Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = "CANCEL") Then
  loc_1A885DE:       var_A0 = "Y"
  loc_1A885E4:     Else
  loc_1A885E7:       var_A0 = "N"
  loc_1A885EA:     End If
  loc_1A885EE:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A88616:     var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A8863D:     Set var_AC = Me.FGrid
  loc_1A8864E:     var_B4 = CStr(var_AC.TextMatrix))
  loc_1A8869D:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0)) And (Me.RecordCount > 0)) Then
  loc_1A886AE:       Set var_A8 = Me.Txt
  loc_1A886B4:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (var_114 <> vbNullString), CVar(CLng(&HA)))
  loc_1A886BC:       var_C4 = var_AC.Text
  loc_1A886C5:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A886EF:       var_150 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A88712:       Set var_164 = Me.Txt
  loc_1A88718:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_228, var_22C, var_150, CVar(CLng(0)), var_C4)
  loc_1A88720:       var_104 = var_228.Text
  loc_1A8872D:       var_9C8 = Val(var_22C)
  loc_1A8873B:       Set var_23C = Me.Txt
  loc_1A88741:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_240, var_9C8, var_C4)
  loc_1A88750:       Proc_6_7_F25D88(var_114, CVar(var_240), 1)
  loc_1A88763:       Set var_294 = Me.Txt
  loc_1A88769:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298, var_29C)
  loc_1A88771:       var_B0 = var_298.Tag
  loc_1A8877A:       var_2EC = CVar(CLng(var_92)) 'Long
  loc_1A88782:       var_30C = CVar(CLng(&HA)) 'Long
  loc_1A887A1:       var_380 = CVar(CLng(var_92)) 'Long
  loc_1A887A9:       var_3A0 = CVar(CLng(5)) 'Long
  loc_1A887B8:       var_3C4 = Me.FGrid.TextMatrix)
  loc_1A887F2:       var_9D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A88823:       var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A88834:       Proc_6_7_F25D88(var_594, Date, var_9D8, CVar(CLng(8)), CVar(CLng(var_92)), var_9D0, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A8883D:       Set var_5C8 = Me.TopCtrl1
  loc_1A88843:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_3C4)
  loc_1A8887E:       var_67C = CVar(CLng(var_92)) 'Long
  loc_1A88886:       var_69C = CVar(CLng(&HB)) 'Long
  loc_1A888A5:       var_710 = CVar(CLng(var_92)) 'Long
  loc_1A888AD:       var_730 = CVar(CLng(&HB)) 'Long
  loc_1A888F6:       var_7FC = CVar(CLng(var_92)) 'Long
  loc_1A888FE:       var_81C = CVar(CLng(0)) 'Long
  loc_1A88927:       var_914 = CVar(CLng(var_92)) 'Long
  loc_1A8892F:       var_934 = CVar(CLng(1)) 'Long
  loc_1A8895E:       var_158 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDOCID,KOTSNO,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B4
  loc_1A889A5:       var_230 = var_158 & "'," & CStr(var_150) & ",'" & global_152 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "',"
  loc_1A889FD:       var_280 = CVar(var_230 & CStr(var_9C8) & ",") & var_114 & ",'" & CVar(MemVar_1F921A4) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1A88A4C:       var_47C = var_280 & "','" & CVar(var_29C) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_3C4)) & "'," & CVar(var_9D0) 
  loc_1A88A93:       var_64C = var_47C & "," & CVar(var_9D8) & ",'" & CVar(MemVar_1F920C8) & "'," & var_594 & ",'" & IIf((CStr(var_5D8) = "Add"), "A", "E") 
  loc_1A88ACB:       var_7CC = var_64C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Me.Fields.Item("SearchCode").Value 
  loc_1A88B05:       var_8E4 = var_7CC & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(var_A0) & "','" & CVar(MemVar_1F92078) 
  loc_1A88B30:       unk_58F14B.Execute CStr(var_8E4 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_9BC, -1
  loc_1A88C19:     Else
  loc_1A88C45:       var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A88C6C:       Set var_AC = Me.FGrid
  loc_1A88C7D:       var_B4 = CStr(var_AC.TextMatrix))
  loc_1A88CAB:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1A88CBC:         Set var_A8 = Me.Txt
  loc_1A88CC2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (var_114 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A88CCA:         var_9C0 = var_AC.Text
  loc_1A88CE4:         Set var_B0 = Me.FGrid
  loc_1A88CFD:         var_150 = Val(CStr(var_B0.TextMatrix)))
  loc_1A88D07:         Set var_160 = Me.LblVPrefix
  loc_1A88D0D:         var_214 = var_160.Caption
  loc_1A88D20:         Set var_164 = Me.Txt
  loc_1A88D26:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_228, var_22C, var_150, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1A88D2E:         var_958 = var_228.Text
  loc_1A88D3B:         var_9C8 = Val(var_22C)
  loc_1A88D49:         Set var_23C = Me.Txt
  loc_1A88D4F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_240, var_9C8, var_934)
  loc_1A88D5E:         Proc_6_7_F25D88(var_114, CVar(var_240), var_914)
  loc_1A88D71:         Set var_294 = Me.Txt
  loc_1A88D77:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298, var_29C)
  loc_1A88D7F:         var_9E0 = var_298.Tag
  loc_1A88D88:         var_2EC = CVar(CLng(var_92)) 'Long
  loc_1A88D90:         var_30C = CVar(CLng(&HA)) 'Long
  loc_1A88DAF:         var_380 = CVar(CLng(var_92)) 'Long
  loc_1A88DB7:         var_3A0 = CVar(CLng(5)) 'Long
  loc_1A88DC0:         Set var_3B4 = Me.FGrid
  loc_1A88DC6:         var_3C4 = var_3B4.TextMatrix)
  loc_1A88DF8:         var_45C = CStr(Me.FGrid.TextMatrix))
  loc_1A88E00:         var_9D0 = Val(var_45C)
  loc_1A88E31:         var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A88E42:         Proc_6_7_F25D88(var_594, Date, var_9D8, CVar(CLng(8)), CVar(CLng(var_92)), var_9D0, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A88E4B:         Set var_5C8 = Me.TopCtrl1
  loc_1A88E51:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_3C4)
  loc_1A88E8C:         var_67C = CVar(CLng(var_92)) 'Long
  loc_1A88E94:         var_69C = CVar(CLng(&HB)) 'Long
  loc_1A88EB3:         var_710 = CVar(CLng(var_92)) 'Long
  loc_1A88EBB:         var_730 = CVar(CLng(&HB)) 'Long
  loc_1A88EDA:         var_81C = CVar(CLng(var_92)) 'Long
  loc_1A88EE2:         var_854 = CVar(CLng(1)) 'Long
  loc_1A88F11:         var_158 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B4
  loc_1A88F18:         var_200 = var_158 & "',"
  loc_1A88F43:         var_21C = var_200 & CStr(var_150) & ",'" & global_152 & "','" & var_214
  loc_1A88F64:         var_238 = var_21C & "','" & MemVar_1F92070 & "'," & CStr(var_9C8)
  loc_1A88F71:         var_17C = CVar(var_238 & ",") & var_114 
  loc_1A88FC3:         var_2BC = var_17C & ",'" & CVar(MemVar_1F921A4) & "','" & CVar(global_156) & "','" & CVar(global_160) & "','" & CVar(var_29C) 
  loc_1A89013:         var_514 = var_2BC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_3C4)) & "'," & CVar(var_9D0) & "," & CVar(var_9D8) 
  loc_1A8905A:         var_6E0 = var_514 & ",'" & CVar(MemVar_1F920C8) & "'," & var_594 & ",'" & IIf((CStr(var_5D8) = "Add"), "A", "E") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1A890A8:         var_8A4 = var_6E0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_A0) & "','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1A890B1:         var_8C4 = var_8A4 & "')" 
  loc_1A890BF:         unk_58F14B.Execute CStr(var_8C4), var_8E4, -1
  loc_1A89191:       End If
  loc_1A89191:     End If
  loc_1A89194:   Next var_16C 'Integer
  loc_1A8919C: Else
  loc_1A891A0:   Set var_A8 = Me.TopCtrl1
  loc_1A891A6:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_1A891BF:   If (CStr() = "Edit") Then
  loc_1A891D9:     If (Me.RecordCount > 0) Then
  loc_1A891F0:       var_B4 = "UPDATE TOKEN SET NCTOKEN='" & var_9C
  loc_1A89217:       var_AC = Me.Fields.Item("SearchCode")
  loc_1A8923E:       unk_58F14B.Execute CStr(CVar(var_B4 & "' Where DocID='") & var_AC.Value & "'"), var_17C, -1
  loc_1A89260:     End If
  loc_1A8927E:     Set var_A8 = Me.Txt
  loc_1A89284:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Delete From TOKEN Where CONTRADocID='")
  loc_1A8928C:     var_D4 = var_AC.Text
  loc_1A89295:     var_158 = -1 & var_B4
  loc_1A892A5:     unk_58F14B.Execute CStr(CVar(var_B4 & "' Where DocID='") & var_AC.Value & "'") & "'", var_B0, var_B0
  loc_1A892BF:   End If
  loc_1A892BF: End If
  loc_1A892E4: For var_9E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_9E4 'Integer
  loc_1A89305:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A8930C:     Set var_A8 = Me.TopCtrl1
  loc_1A89312:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(1)
  loc_1A8932B:     If (CStr() = "Edit") Then
  loc_1A89332:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A8933A:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1A89354:       var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A89381:       Set var_AC = Me.FGrid
  loc_1A89392:       var_B4 = CStr(var_AC.TextMatrix))
  loc_1A893C0:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1A893D1:         Set var_A8 = Me.Txt
  loc_1A893D7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)))
  loc_1A893DF:         (Trim(var_F4) <> vbNullString) = var_AC.Text
  loc_1A893F2:         Set var_B0 = Me.Txt
  loc_1A893F8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_200)
  loc_1A89400:         var_104 = var_160.Text
  loc_1A8940D:         var_150 = Val(var_200)
  loc_1A8941B:         Set var_164 = Me.Txt
  loc_1A89421:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_228)
  loc_1A89429:         var_D4 = CVar(var_228) 'Address
  loc_1A89430:         Proc_6_7_F25D88(var_F4, var_D4)
  loc_1A89455:         Set var_240 = Me.Txt
  loc_1A8945B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_294, var_214)
  loc_1A8946C:         var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A89474:         var_31C = CVar(CLng(0)) 'Long
  loc_1A89496:         var_9C8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A894A7:         Set var_320 = Me.Txt
  loc_1A894AD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_3B4, var_21C, var_9C8)
  loc_1A894B5:         var_31C = var_3B4.Text
  loc_1A894BE:         var_3B0 = CVar(CLng(var_92)) 'Long
  loc_1A894C6:         var_414 = CVar(CLng(&HA)) 'Long
  loc_1A894D5:         var_514 = Me.FGrid.TextMatrix)
  loc_1A8950F:         var_9D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A895CB:         var_794 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1A895DE:         Proc_6_7_F25D88(var_8C4, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_9D0)
  loc_1A895E7:         Set var_744 = Me.TopCtrl1
  loc_1A895ED:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(CVar(CLng(7)))
  loc_1A89652:         var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A89683:         var_9E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A896B4:         var_EA4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A896C7:         var_5DC = Proc_6_38_E68A98(global_180, var_EA4, CVar(CLng(8)), CVar(CLng(var_92)), var_9E0, CVar(CLng(7)), CVar(CLng(var_92)), var_9D8)
  loc_1A896D8:         Set var_948 = Me.Txt
  loc_1A896DE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C0, var_238, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1A89708:         var_B5C = Me.Fields.Item("SearchCode")
  loc_1A8973B:         var_29C = CStr(Me.FGrid.TextMatrix))
  loc_1A89743:         var_EAC = Val(var_29C)
  loc_1A89751:         Set var_C74 = Me.Txt
  loc_1A89757:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_C78, var_EAC, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1A89791:         var_D18 = CVar(CLng(var_92)) 'Long
  loc_1A897A8:         var_D5C = Me.FGrid.TextMatrix)
  loc_1A897C2:         Set var_DA0 = Me.Txt
  loc_1A897C8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_DA4, var_45C, var_D5C, CVar(CLng(6)))
  loc_1A897D0:         var_D18 = var_DA4.Tag
  loc_1A897D9:         var_DF4 = CVar(CLng(var_92)) 'Long
  loc_1A897E1:         var_E14 = CVar(CLng(1)) 'Long
  loc_1A89810:         var_158 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,Remarks,ContraDocID,ContraSno,Logsite_Code,NCType,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A8983B:         var_C4 = ",'"
  loc_1A8984A:         var_E4 = CVar(global_152) 'String
  loc_1A89860:         var_260 = CVar(var_158 & var_B4 & "'," & CStr(var_294.Tag) & ",") & var_F4 & var_C4 & var_E4 & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1A898B5:         var_340 = var_260 & "','" & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1A89903:         var_554 = var_340 & "','" & CVar(var_214) & "','Y'," & CVar(var_9C8) & ",'" & CVar(var_21C) & "','" & CVar(CStr(var_9C0.Text)) 
  loc_1A89956:         var_884 = var_554 & "'," & CVar(var_9D0) & ",'" & var_794 & "','" & CVar(MemVar_1F9201C) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_1A8999D:         var_A44 = var_884 & var_8C4 & ",'" & IIf((CStr(var_958) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_9D8) & "," 
  loc_1A899F6:         var_C10 = var_A44 & CVar((var_9E0 * var_EA4)) & ",'" & CVar(var_5DC) & "','" & CVar(var_238) & "','" & var_B5C.Value & "'," & CVar(var_EAC) 
  loc_1A89A2D:         var_D7C = var_C10 & ",'" & CVar(MemVar_1F92078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_C78)), vbNullString) & "','" & CVar(CStr(var_D5C)) 
  loc_1A89A6B:         unk_58F14B.Execute CStr(var_D7C & "','" & CVar(var_45C) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_E98, -1
  loc_1A89BA9:       End If
  loc_1A89BAC:     Else
  loc_1A89BB0:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A89BB8:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1A89BD8:       var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A89BE0:       var_148 = vbNullString
  loc_1A89BEE:       var_18C = CVar(CLng(var_92)) 'Long
  loc_1A89C3E:       If CBool(CVar(CLng(7)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_1A89C6C:         var_148 = CVar(CLng(var_92)) 'Long
  loc_1A89C7D:         Set var_AC = Me.FGrid
  loc_1A89C83:         var_F4 = var_AC.TextMatrix)
  loc_1A89C96:         var_150 = Val(CStr(var_F4))
  loc_1A89CAD:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1A89CB8:         var_200 = "Update TOKEN Set VoidYN='Y',PENDING='N' Where Docid='" & var_B4 & "' And Sno="
  loc_1A89CCD:         unk_58F14B.Execute var_200 & CStr(var_150), var_114, -1
  loc_1A89D01:         Set var_A8 = Me.Txt
  loc_1A89D07:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, var_B0, var_150, CVar(CLng(&HD)), var_148)
  loc_1A89D0F:         var_D4 = var_AC.Text
  loc_1A89D22:         Set var_B0 = Me.Txt
  loc_1A89D28:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_200, CVar(CLng(&HC)), CVar(CLng(var_92)))
  loc_1A89D30:         var_18C = var_160.Text
  loc_1A89D3D:         var_150 = Val(var_200)
  loc_1A89D4B:         Set var_164 = Me.Txt
  loc_1A89D51:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_228, var_150)
  loc_1A89D59:         var_D4 = CVar(var_228) 'Address
  loc_1A89D60:         Proc_6_7_F25D88(var_F4, var_D4, (var_114 <> var_148))
  loc_1A89D85:         Set var_240 = Me.Txt
  loc_1A89D8B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_294, var_214)
  loc_1A89D93:         var_104 = var_294.Tag
  loc_1A89D9C:         var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A89DA4:         var_31C = CVar(CLng(0)) 'Long
  loc_1A89DC6:         var_9C8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A89DD7:         Set var_320 = Me.Txt
  loc_1A89DDD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_3B4, var_21C, var_9C8)
  loc_1A89DE5:         var_31C = var_3B4.Text
  loc_1A89DEE:         var_3B0 = CVar(CLng(var_92)) 'Long
  loc_1A89E05:         var_514 = Me.FGrid.TextMatrix)
  loc_1A89E3F:         var_9D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A89EFB:         var_794 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1A89F0E:         Proc_6_7_F25D88(var_8C4, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_9D0)
  loc_1A89F17:         Set var_744 = Me.TopCtrl1
  loc_1A89F1D:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(CVar(CLng(7)))
  loc_1A89F82:         var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A89FB3:         var_9E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A89FE4:         var_EA4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A89FF7:         var_5DC = Proc_6_38_E68A98(global_180, var_EA4, CVar(CLng(8)), CVar(CLng(var_92)), var_9E0, CVar(CLng(7)), CVar(CLng(var_92)), var_9D8)
  loc_1A8A008:         Set var_948 = Me.Txt
  loc_1A8A00E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C0, var_238, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1A8A026:         Set var_B48 = Me.Txt
  loc_1A8A02C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B5C, CVar(CLng(&HA)))
  loc_1A8A066:         var_BDC = CVar(CLng(var_92)) 'Long
  loc_1A8A07D:         var_C88 = Me.FGrid.TextMatrix)
  loc_1A8A097:         Set var_C74 = Me.Txt
  loc_1A8A09D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_C78, var_29C, var_C88, CVar(CLng(6)))
  loc_1A8A0A5:         var_BDC = var_C78.Tag
  loc_1A8A0AE:         var_CB8 = CVar(CLng(var_92)) 'Long
  loc_1A8A0B6:         var_D18 = CVar(CLng(1)) 'Long
  loc_1A8A0D5:         var_D48 = CVar(CLng(var_92)) 'Long
  loc_1A8A0DD:         var_DD4 = CVar(CLng(&HC)) 'Long
  loc_1A8A0EC:         var_DC4 = Me.FGrid.TextMatrix)
  loc_1A8A0FC:         var_E14 = CVar(CLng(var_92)) 'Long
  loc_1A8A104:         var_E68 = CVar(CLng(&HD)) 'Long
  loc_1A8A126:         var_EAC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8A13D:         var_158 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Description,Party,ItemRestCode,ContraDocId,ContraSNo) " & " Values ('"
  loc_1A8A177:         var_E4 = CVar(global_152) 'String
  loc_1A8A196:         var_270 = CVar(var_158 & var_B4 & "'," & CStr(var_150) & ",") & var_F4 & ",'" & var_E4 & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1A8A1E2:         var_340 = var_270 & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1A8A230:         var_554 = var_340 & "','" & CVar(var_214) & "','Y'," & CVar(var_9C8) & ",'" & CVar(var_21C) & "','" & CVar(CStr(var_9C0.Text)) 
  loc_1A8A283:         var_884 = var_554 & "'," & CVar(var_9D0) & ",'" & var_794 & "','" & CVar(MemVar_1F9201C) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_1A8A2CA:         var_A44 = var_884 & var_8C4 & ",'" & IIf((CStr(var_958) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_9D8) & "," 
  loc_1A8A31B:         var_B7C = var_A44 & CVar((var_9E0 * var_EA4)) & ",'" & CVar(var_5DC) & "','" & CVar(var_238) & "','" & CVar(MemVar_1F92078) & "','" 
  loc_1A8A349:         var_D08 = var_B7C & IIf((var_9C = "Y"), Trim(CVar(var_B5C)), vbNullString) & "','" & CVar(CStr(var_C88)) & "','" & CVar(var_29C) 
  loc_1A8A39C:         unk_58F14B.Execute CStr(var_D08 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_DC4)) & "'," & CVar(var_EAC) & ")"), var_EEC, -1
  loc_1A8A4DA:       End If
  loc_1A8A4DA:     End If
  loc_1A8A4DD:   Else
  loc_1A8A503:     var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A8A530:     Set var_AC = Me.FGrid
  loc_1A8A541:     var_B4 = CStr(var_AC.TextMatrix))
  loc_1A8A56F:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1A8A580:       Set var_A8 = Me.Txt
  loc_1A8A586:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (Trim(var_F4) <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A8A58E:       var_E28 = var_AC.Text
  loc_1A8A5A1:       Set var_B0 = Me.Txt
  loc_1A8A5A7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_200, var_EAC, var_E68)
  loc_1A8A5AF:       var_E14 = var_160.Text
  loc_1A8A5BC:       var_150 = Val(var_200)
  loc_1A8A5CA:       Set var_164 = Me.Txt
  loc_1A8A5D0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_228, var_150)
  loc_1A8A5D8:       var_D4 = CVar(var_228) 'Address
  loc_1A8A5DF:       Proc_6_7_F25D88(var_F4, var_D4, var_DC4)
  loc_1A8A5EB:       Set var_23C = Me.LblVPrefix
  loc_1A8A604:       Set var_240 = Me.Txt
  loc_1A8A60A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_294, var_214)
  loc_1A8A612:       var_DD4 = var_294.Tag
  loc_1A8A61B:       var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A8A623:       var_31C = CVar(CLng(0)) 'Long
  loc_1A8A645:       var_9C8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8A656:       Set var_320 = Me.Txt
  loc_1A8A65C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_3B4, var_21C, var_9C8)
  loc_1A8A664:       var_31C = var_3B4.Text
  loc_1A8A66D:       var_3B0 = CVar(CLng(var_92)) 'Long
  loc_1A8A684:       var_514 = Me.FGrid.TextMatrix)
  loc_1A8A6BE:       var_9D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8A77A:       var_794 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1A8A78D:       Proc_6_7_F25D88(var_8C4, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_9D0)
  loc_1A8A796:       Set var_744 = Me.TopCtrl1
  loc_1A8A79C:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(CVar(CLng(7)))
  loc_1A8A801:       var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8A832:       var_9E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8A863:       var_EA4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8A876:       var_4F4 = Proc_6_38_E68A98(global_180, var_EA4, CVar(CLng(8)), CVar(CLng(var_92)), var_9E0, CVar(CLng(7)), CVar(CLng(var_92)), var_9D8)
  loc_1A8A887:       Set var_948 = Me.Txt
  loc_1A8A88D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C0, var_238, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1A8A8A5:       Set var_B48 = Me.Txt
  loc_1A8A8AB:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B5C, CVar(CLng(&HA)))
  loc_1A8A8E5:       var_BDC = CVar(CLng(var_92)) 'Long
  loc_1A8A8FC:       var_C88 = Me.FGrid.TextMatrix)
  loc_1A8A916:       Set var_C74 = Me.Txt
  loc_1A8A91C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_C78, var_29C, var_C88, CVar(CLng(6)))
  loc_1A8A924:       var_BDC = var_C78.Tag
  loc_1A8A92D:       var_CB8 = CVar(CLng(var_92)) 'Long
  loc_1A8A935:       var_D18 = CVar(CLng(1)) 'Long
  loc_1A8A964:       var_158 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A8A97A:       var_208 = CStr(var_150)
  loc_1A8A9B1:       var_250 = CVar(var_23C.Caption) 'String
  loc_1A8A9C7:       var_280 = CVar(var_158 & var_B4 & "'," & var_208 & ",") & var_F4 & ",'" & CVar(global_152) & "','" & var_250 & "','" & CVar(MemVar_1F92070) 
  loc_1A8AA1C:       var_3C4 = var_280 & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) & "','" & CVar(var_214) 
  loc_1A8AA74:       var_5A4 = var_3C4 & "','Y'," & CVar(var_9C8) & ",'" & CVar(var_21C) & "','" & CVar(CStr(var_9C0.Text)) & "'," & CVar(var_9D0) & ",'" 
  loc_1A8AAC1:       var_9BC = var_5A4 & var_794 & "','" & CVar(MemVar_1F9201C) & "','" & CVar(MemVar_1F920C8) & "'," & var_8C4 & ",'" & IIf((CStr(var_958) = "Add"), "A", "E") 
  loc_1A8AB1C:       var_B04 = var_9BC & "','" & CVar(var_9C) & "'," & CVar(var_9D8) & "," & CVar((var_9E0 * var_EA4)) & ",'" & CVar(var_4F4) & "','" 
  loc_1A8AB49:       var_C50 = var_B04 & CVar(var_238) & "','" & CVar(MemVar_1F92078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_B5C)), vbNullString) 
  loc_1A8AB9B:       unk_58F14B.Execute CStr(var_C50 & "','" & CVar(CStr(var_C88)) & "','" & CVar(var_29C) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_DC4, -1
  loc_1A8ACC5:     End If
  loc_1A8ACC5:   End If
  loc_1A8ACC8: Next var_9E4 'Integer
  loc_1A8ACD1: Set var_A8 = Me.TopCtrl1
  loc_1A8ACD7: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_1A8ACF0: If (CStr() = "Add") Then
  loc_1A8AD07:   var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1A8AD2D:   var_114 = CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_152 & "' And VP.Date_From<=") 'String
  loc_1A8AD3E:   Set var_A8 = Me.Txt
  loc_1A8AD44:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_208, var_114)
  loc_1A8AD4C:   var_1DC = var_AC.Text
  loc_1A8AD5A:   Proc_6_7_F25D88(var_F4, CVar(var_208))
  loc_1A8AD62:   var_134 = -1 & var_F4 
  loc_1A8AD79:   unk_58F14B.Execute CStr(CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & var_B4 & "'," & var_208 & ",") & var_F4 & " Order By VP.Date_From DESC"), var_B0, 
  loc_1A8AD84:   Set var_88 = var_B0
  loc_1A8ADC2:   If (var_88.RecordCount > 0) Then
  loc_1A8ADD3:     Set var_A8 = Me.Txt
  loc_1A8ADD9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1A8ADEE:     var_150 = Val(var_AC.Text)
  loc_1A8AE03:     var_B0 = var_88.Fields
  loc_1A8AE13:     var_D4 = var_B0.Item("V_Type").Value
  loc_1A8AE3E:     Proc_6_7_F25D88(var_1DC, CVar(var_88.Fields.Item("Date_From")))
  loc_1A8AE63:     var_200 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_150) & " Where (SITE_CODE='"
  loc_1A8AE8E:     var_134 = CVar(var_200 & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_D4 & "' and Date_From=" 
  loc_1A8AEA3:     unk_58F14B.Execute CStr(var_134 & var_1DC), var_250, -1
  loc_1A8AEDD:   End If
  loc_1A8AEDD: End If
  loc_1A8AEE1: Set var_A8 = Me.TopCtrl1
  loc_1A8AEE7: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_23C)
  loc_1A8AF00: If (CStr(var_150) = "Add") Then
  loc_1A8AF26:   var_B4 = "SELECT COUNT(*) FROM LASTVOU WHERE lOGSITE_CODE='" & MemVar_1F92078
  loc_1A8AF3B:   var_204 = var_B4 & "' AND UNAME='" & MemVar_1F920C8 & "' AND ENAME='"
  loc_1A8AF44:   Call 0.Method_arg_50 (var_200, var_204, var_D4, -1, var_A8)
  loc_1A8AF5D:   unk_58F14B.Execute var_AC & var_200 & "' ", 0, var_B0
  loc_1A8AF65:   var_F4 = var_A8.Fields
  loc_1A8AF6D:    = var_AC.Item()
  loc_1A8AF75:    = var_B0.Value
  loc_1A8AFA6:   If (var_F4 > 0) Then
  loc_1A8AFC7:     Set var_A8 = Me.Txt
  loc_1A8AFCD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "UPDATE LASTVOU  SET DOCID='")
  loc_1A8AFD5:     var_D4 = var_AC.Text
  loc_1A8AFDE:     var_158 = -1 & var_B4
  loc_1A8AFFC:     Call 0.Method_arg_50 (var_204, var_B4 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_1A8B015:     unk_58F14B.Execute var_B0 & var_204 & "'  ", , 
  loc_1A8B03C:   Else
  loc_1A8B060:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "','", var_250)
  loc_1A8B069:     var_200 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='"
  loc_1A8B070:     var_208 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_1A8B081:     Set var_A8 = Me.Txt
  loc_1A8B087:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_204)
  loc_1A8B08F:     var_208 = var_AC.Text
  loc_1A8B0BE:     Proc_6_7_F25D88(var_F4, Date)
  loc_1A8B0CA:     var_C4 = ",'A','"
  loc_1A8B0D6:     var_E4 = CVar(MemVar_1F92078) 'String
  loc_1A8B0F0:     unk_58F14B.Execute CStr(CVar(var_B0 & var_204 & "','" & MemVar_1F92078 & "',") & var_F4 & var_C4 & var_E4 & "')"), , 
  loc_1A8B128:   End If
  loc_1A8B128: End If
  loc_1A8B12E: unk_58F14B.CommitTrans
  loc_1A8B135: var_8A = 0
  loc_1A8B146: Set var_A8 = Me.Txt
  loc_1A8B14C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_1A8B168: var_8A = 0
  loc_1A8B176: Me.Requery -1
  loc_1A8B192: If (Me.RecordCount > 0) Then
  loc_1A8B1B0:   If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_1A8B1D8:     Me.Find "SearchCode ='" & var_AC.Text & "'", 0, 1
  loc_1A8B1E7:   Else
  loc_1A8B1ED:     Me.MoveLast
  loc_1A8B1F2:   End If
  loc_1A8B1F2: End If
  loc_1A8B215: Call Proc_333_88_104D048(Proc_5_1_100CB50("INI", Me, global_92), var_C4)
  loc_1A8B220: Call Proc_333_69_127C710(var_8A)
  loc_1A8B23C: If (Me.RecordCount > 0) Then
  loc_1A8B24F:   Me.Global.Load MemVar_1F93F60
  loc_1A8B272:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A8B282:     FrmMsgBox.ParentForm = Me
  loc_1A8B293:     Call 0.Method_arg_54 ("Print")
  loc_1A8B2A4:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1A8B2AA:     FrmMsgBox.LblMsg.Caption = "Print NC TOKEN ?"
  loc_1A8B2C0:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1A8B2C6:     FrmMsgBox.LblMsg.BackColor = &HFFFF
  loc_1A8B2D9:     Call 0.Method_arg_64 (&HFFFF)
  loc_1A8B2F1:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1A8B307:     If (MsgBoxTouch = 6) Then
  loc_1A8B30A:       Call TopCtrl1_UnknownEvent_14()
  loc_1A8B30F:     End If
  loc_1A8B31C:     FrmMsgBox.ParentForm = Me
  loc_1A8B32D:     Call 0.Method_arg_54 ("Print")
  loc_1A8B33E:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1A8B344:     FrmMsgBox.LblMsg.Caption = "Print NC BILL ?"
  loc_1A8B35A:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1A8B360:     FrmMsgBox.LblMsg.BackColor = &HFF00
  loc_1A8B373:     Call 0.Method_arg_64 (&HFF00)
  loc_1A8B38B:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1A8B3A1:     If (MsgBoxTouch = 6) Then
  loc_1A8B3A4:       Call cmdNCBill_UnknownEvent_9()
  loc_1A8B3A9:     End If
  loc_1A8B3AC:   Else
  loc_1A8B3B9:     FrmMsgBox.ParentForm = Me
  loc_1A8B3CA:     Call 0.Method_arg_54 ("Print")
  loc_1A8B3DB:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1A8B3E1:     FrmMsgBox.LblMsg.Caption = "Print TOKEN ?"
  loc_1A8B3F7:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1A8B3FD:     FrmMsgBox.LblMsg.BackColor = &HFFFF
  loc_1A8B410:     Call 0.Method_arg_64 (&HFFFF)
  loc_1A8B428:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1A8B43E:     If (MsgBoxTouch = 6) Then
  loc_1A8B441:       Call TopCtrl1_UnknownEvent_14()
  loc_1A8B446:     End If
  loc_1A8B446:   End If
  loc_1A8B446: End If
  loc_1A8B44B: Set var_88 = Nothing
  loc_1A8B45D: Me.FGrid1.Visible = False
  loc_1A8B471: Me.LblPendingKot.Visible = False
  loc_1A8B479: Exit Sub
  loc_1A8B47A: ' Referenced from: 1A87A08
  loc_1A8B480: If (var_8A = &HFF) Then
  loc_1A8B489:   unk_58F14B.RollbackTrans
  loc_1A8B48E: End If
  loc_1A8B48E: Proc_6_60_E62BC4(var_8A)
  loc_1A8B493: Exit Sub
End Sub

Private Sub Head_UnknownEvent_9 'F6BB44
  'Data Table: 58F128
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_8C As Variant
  loc_F6BA03: var_86 = KeyCode
  loc_F6BA0E: If (var_86 = CInt(0)) Then
  loc_F6BA11:   GoTo loc_F6BB42
  loc_F6BA14: End If
  loc_F6BA1C: If (var_86 = CInt(1)) Then
  loc_F6BA1F:   Call TopCtrl1_UnknownEvent_D()
  loc_F6BA27: Else
  loc_F6BA2F:   If (var_86 = CInt(2)) Then
  loc_F6BA32:     Call TopCtrl1_UnknownEvent_C()
  loc_F6BA3A:   Else
  loc_F6BA42:     If (var_86 = CInt(3)) Then
  loc_F6BA45:       Call TopCtrl1_UnknownEvent_F()
  loc_F6BA4D:     Else
  loc_F6BA55:       If (var_86 = CInt(4)) Then
  loc_F6BA58:         Call TopCtrl1_UnknownEvent_14()
  loc_F6BA60:       Else
  loc_F6BA68:         If (var_86 = CInt(5)) Then
  loc_F6BA6B:           Call TopCtrl1_UnknownEvent_16()
  loc_F6BA7D:           Set var_8C = Me.Txt
  loc_F6BA83:           Call 0.Method_Head_UnknownEvent_90 (CInt(7), var_90)
  loc_F6BA8B:           var_90.Visible = False
  loc_F6BAA2:           Set var_8C = Me.Label1
  loc_F6BAA8:           Call 0.Method_Head_UnknownEvent_90 (4, var_90)
  loc_F6BAB0:           var_90.Visible = False
  loc_F6BACA:           Set var_8C = Me.Txt
  loc_F6BAD0:           Call 0.Method_Head_UnknownEvent_90 (CInt(7), var_90)
  loc_F6BAD8:           var_90.Text = vbNullString
  loc_F6BAE8:           Set var_8C = Me.FGNCType
  loc_F6BB06:           Me.FGNCType.Unload Me
  loc_F6BB11:         Else
  loc_F6BB19:           If (var_86 = CInt(6)) Then
  loc_F6BB1C:             Call TopCtrl1_UnknownEvent_B()
  loc_F6BB24:           Else
  loc_F6BB2C:             If (var_86 = CInt(7)) Then
  loc_F6BB2F:               Call TopCtrl1_UnknownEvent_E()
  loc_F6BB37:             Else
  loc_F6BB3F:               If (var_86 = CInt(8)) Then
  loc_F6BB42:               End If
  loc_F6BB42:             End If
  loc_F6BB42:           End If
  loc_F6BB42:         End If
  loc_F6BB42:       End If
  loc_F6BB42:     End If
  loc_F6BB42:   End If
  loc_F6BB42:   ' Referenced from: F6BA11
  loc_F6BB42: End If
  loc_F6BB42: Exit Sub
End Sub

Private Sub CmChngToNC_UnknownEvent_9 '13FE500
  'Data Table: 58F128
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_118 As Field20
  Dim var_CC As Variant
  Dim var_13C As Variant
  Dim var_FC As Variant
  Dim unk_58F14B As Connection15
  Dim var_124 As Variant
  Dim var_128 As Fields15
  Dim var_12C As Field20
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_110 As Recordset15
  Dim var_112 As Integer
  Dim var_DC As Variant
  Dim var_AC As Variant
  Dim var_10C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  loc_13FDB11: var_8A = Me.ChkNCTOKEN.Value
  loc_13FDB1F: If (var_8A = 1) Then
  loc_13FDB3B:   MsgBox("Can't Change NC TOKEN.", &H10, var_CC, var_EC, var_10C)
  loc_13FDB4B:   Exit Sub
  loc_13FDB4C: End If
  loc_13FDB4F: Call Proc_333_97_FF5848(var_8A)
  loc_13FDB5A: If (var_8A = 0) Then
  loc_13FDB5D:   Exit Sub
  loc_13FDB5E: End If
  loc_13FDB6B: var_BC = "Select K1.*,I.name as ItemName,I.Unit,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (TOKEN K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Where K1.RoomNo In (Select RoomNo From TOKEN Where DocId='"
  loc_13FDBAC: var_FC = 0
  loc_13FDBDC: unk_58F14B.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_EC, -1
  loc_13FDBE4: var_124 = var_124.Fields
  loc_13FDBEC: var_FC = var_128.Item(var_128)
  loc_13FDBF4: var_12C = var_12C.Value
  loc_13FDBFC: var_14C = (var_10C + var_10C)
  loc_13FDC09: var_17C = "') And IsNull(K1.ContraDocId,'')='' And (K1.DelFlag NOT IN ('Y') OR K1.DelFlag IS NULL) AND K1.VType='K" & var_14C & "' And K1.VoidYN='N' order by K1.DocId,K1.Sno" 
  loc_13FDC17: unk_58F14B.Execute CStr(var_17C), var_BC & Me.Fields.Item("SearchCode").Value, var_1A0
  loc_13FDC64: If (var_1A4.RecordCount <= 0) Then
  loc_13FDC6C:   Set var_110 = Nothing
  loc_13FDC6F:   Exit Sub
  loc_13FDC70: End If
  loc_13FDC70: Call TopCtrl1_UnknownEvent_A()
  loc_13FDC81: Me.ChkNCTOKEN.Value = 1
  loc_13FDC95: Me.ChkNCTOKEN.Enabled = False
  loc_13FDCAC: Me.FGrid.Redraw = False
  loc_13FDCC7: Me.FGrid.Rows = 1
  loc_13FDCD1: var_112 = 1
  loc_13FDCE8: If (var_110.RecordCount > 0) Then
  loc_13FDCEB:   ' Referenced from: 13FE2B5
  loc_13FDCFA:   If Not(var_110.EOF) Then
  loc_13FDCFD:     var_9C = vbNullString
  loc_13FDD07:     Set var_88 = Me.FGrid
  loc_13FDD1C:     Set var_1AC = Me.FGrid
  loc_13FDD23:     var_9C = CVar(CLng(var_112)) 'Long
  loc_13FDD2B:     var_DC = CVar(CLng(0)) 'Long
  loc_13FDD35:     var_AC = CVar(CStr(var_112)) 'String
  loc_13FDD3C:     LateIdCallSt
  loc_13FDD4B:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FDD53:     var_FC = CVar(CLng(&HA)) 'Long
  loc_13FDD83:     var_CC = CVar(CStr(var_110.Fields.Item("Item").Value)) 'String
  loc_13FDD8A:     LateIdCallSt
  loc_13FDDD9:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_112)), var_1AC, var_CC, CVar(CLng(3)), CVar(CLng(var_112)))) 'String
  loc_13FDDE0:     LateIdCallSt
  loc_13FDE2B:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_112)), var_1AC, var_CC, var_1AC)) 'String
  loc_13FDE32:     LateIdCallSt
  loc_13FDE7D:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FDE84:     LateIdCallSt
  loc_13FDECF:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FDED6:     LateIdCallSt
  loc_13FDF08:     var_DC = CVar(CLng(var_112)) 'Long
  loc_13FDF10:     var_13C = CVar(CLng(7)) 'Long
  loc_13FDF3D:     var_10C = CVar(CStr(Format(CVar(var_110.Fields.Item("qty")), "0.00"))) 'String
  loc_13FDF44:     LateIdCallSt
  loc_13FDFAF:     var_10C = CVar(CStr(Format(CVar(var_110.Fields.Item("Rate")), "0.00"))) 'String
  loc_13FDFB6:     LateIdCallSt
  loc_13FDFF4:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("VoidYN")), var_1AC, var_10C, 1, 1, CVar(CLng(8)), CVar(CLng(var_112)))) 'String
  loc_13FE036:     var_22C = CVar(CLng(var_112)) 'Long
  loc_13FE03E:     var_24C = CVar(CLng(9)) 'Long
  loc_13FE070:     var_1EC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("VoidYN")), var_1AC, var_10C, 1))) = "Y"), "Cancel", vbNullString)
  loc_13FE0AA:     LateIdCallSt
  loc_13FE111:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_112)), var_1AC, CVar(CStr(IIf((Trim(var_CC) = "F"), "Free", var_1EC))))) 'String
  loc_13FE118:     LateIdCallSt
  loc_13FE163:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FE16A:     LateIdCallSt
  loc_13FE1B5:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FE1BC:     LateIdCallSt
  loc_13FE1D2:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FE1DA:     var_FC = CVar(CLng(&HC)) 'Long
  loc_13FE20A:     var_CC = CVar(CStr(var_110.Fields.Item("DocID").Value)) 'String
  loc_13FE211:     LateIdCallSt
  loc_13FE22B:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FE233:     var_FC = CVar(CLng(&HD)) 'Long
  loc_13FE263:     var_CC = CVar(CStr(var_110.Fields.Item("SNo").Value)) 'String
  loc_13FE26A:     LateIdCallSt
  loc_13FE284:     var_9C = CVar(CLng(var_112)) 'Long
  loc_13FE296:     LateIdCallSt
  loc_13FE2A0:     Set var_1AC = Nothing 
  loc_13FE2AA:     var_112 = (var_112 + 1)
  loc_13FE2B0:     var_110.MoveNext
  loc_13FE2B5:     GoTo loc_13FDCEB
  loc_13FE2B8:   End If
  loc_13FE2D1:   var_9C = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13FE2E4:   Set var_118 = Me.FGrid
  loc_13FE2EA:   LateIdCallSt
  loc_13FE30F:   Me.FGrid.FixedRows = 1
  loc_13FE317: End If
  loc_13FE325: Me.FGrid.Redraw = True
  loc_13FE32D: var_9C = vbNullString
  loc_13FE337: Set var_88 = Me.FGrid
  loc_13FE34E: If (var_112 = 1) Then
  loc_13FE351:   var_9C = 1
  loc_13FE364:   Me.FGrid.Rows = var_9C
  loc_13FE38A:   var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_9C, var_118, global_120, var_9C, var_112))) 'String
  loc_13FE392:   Set var_118 = Me.FGrid
  loc_13FE3B6:   var_AC = Me.FGrid.Rows
  loc_13FE3C5:   var_9C = CVar((CLng(var_AC) - 1)) 'Long
  loc_13FE3D8:   Set var_118 = Me.FGrid
  loc_13FE3DE:   LateIdCallSt
  loc_13FE403:   Me.FGrid.FixedRows = 1
  loc_13FE40B: End If
  loc_13FE414: Set var_88 = Me.CmChngSteward
  loc_13FE41A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_13FE42B: Set var_88 = Me.CmNoOfPersons
  loc_13FE431: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_13FE449: Set var_88 = Me.CmFgrid
  loc_13FE44F: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(2), var_118, False, var_118, global_120, False, FGrid.DispID_10000)
  loc_13FE457: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_AC)
  loc_13FE463: var_9C = False
  loc_13FE473: Set var_88 = Me.CmFgrid
  loc_13FE479: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(4), var_118, var_9C, var_1AC, global_120)
  loc_13FE481: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_9C)
  loc_13FE49D: Set var_88 = Me.CmFgrid
  loc_13FE4A3: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(5), var_118, False)
  loc_13FE4AB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_1AC)
  loc_13FE4C7: Set var_88 = Me.CmFgrid
  loc_13FE4CD: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(6), var_118, False)
  loc_13FE4D5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_CC)
  loc_13FE4ED: Me.FrameGrpItem.Enabled = False
  loc_13FE4FA: Set var_110 = Nothing
  loc_13FE4FD: Exit Sub
End Sub

Private Sub CmTransKOT_UnknownEvent_9 'EE4AC0
  'Data Table: 58F128
  loc_EE4A07: Call Proc_333_97_FF5848(var_86)
  loc_EE4A12: If (var_86 = 0) Then
  loc_EE4A15:   Exit Sub
  loc_EE4A16: End If
  loc_EE4A1E: If (MemVar_1F9220C = "Yes") Then
  loc_EE4A25:   Set var_8C = New RsTbChange
  loc_EE4A2B: Else
  loc_EE4A2F:   Set var_8C = New RsTbChange
  loc_EE4A32: End If
  loc_EE4A3D: var_8C.ParentForm = CVar(Me)
  loc_EE4A53: var_8C.PTableNo = CVar(PTableNo)
  loc_EE4A65: Set var_C4 = var_C8(CInt(3))
  loc_EE4A6B: Call 0.Method_CmTransKOT_UnknownEvent_90 ()
  loc_EE4A7B: var_8C.pDocId = CVar(var_C8)
  loc_EE4A92: var_8C.LocalRestCode = CVar(LocalRestCode)
  loc_EE4AA2: var_8C.OpenMode = 1
  loc_EE4AAF: var_8C.CAPTION = "Transfer TOKEN"
  loc_EE4AB6: Call var_8C.Show
  loc_EE4ABC: Exit Sub
End Sub

Private Sub CmChngSteward_UnknownEvent_9 'F50D80
  'Data Table: 58F128
  Dim var_A4 As Integer
  Dim var_B0 As String
  Dim var_C8 As Recordset15
  Dim var_CC As Variant
  Dim var_D0 As Field20
  Dim var_E8 As TextBox
  loc_F50C85: RsTouchScreenSteward.pOpenAs = "Steward"
  loc_F50C96: RsTouchScreenSteward.pRestCode = LocalRestCode
  loc_F50CAE: Call 0.Method_arg_2B0 (1)
  loc_F50CB9: var_A4 = 0
  loc_F50CE4: var_B0 = "Select W.Name As Name From Waiter W Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9201C
  loc_F50CF4: RsTouchScreenSteward.Connection15.Execute var_B0 & "'", var_C4, -1
  loc_F50CFC: var_C8 = var_C8.Fields
  loc_F50D04: var_A4 = var_CC.Item(var_CC)
  loc_F50D0C: var_D0 = var_D0.Value
  loc_F50D23: Set var_E4 = Me.Txt
  loc_F50D29: Call 0.Method_CmChngSteward_UnknownEvent_90 (CInt(5), var_E8, CStr(var_E0))
  loc_F50D31: var_E8.Text = var_E0
  loc_F50D65: Set var_C8 = Me.Txt
  loc_F50D6B: Call 0.Method_CmChngSteward_UnknownEvent_90 (CInt(5), var_CC)
  loc_F50D73: var_CC.Tag = MemVar_1F9201C
  loc_F50D7F: Exit Sub
End Sub

Private Sub ChkNCTOKEN_Click() '1263348
  'Data Table: 58F128
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim var_E0 As Integer
  Dim var_CC As String
  Dim unk_58F14B As Connection15
  Dim var_E4 As Field20
  Dim var_88 As Recordset15
  loc_1262DEC: Set var_8C = Me.TopCtrl1
  loc_1262DF2: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_1262E0B: If (CStr() = "Browse") Then
  loc_1262E0E:   Exit Sub
  loc_1262E0F: End If
  loc_1262E2A: If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1262E39:   Me.Frame.Visible = True
  loc_1262E51:   Me.Frame.ZOrder 0
  loc_1262E67:   Set var_8C = Me.Txt
  loc_1262E6D:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_1262E75:   var_B8.Text = vbNullString
  loc_1262E8D:   Me.FrameGrpItem.Enabled = False
  loc_1262EAD:   Call 0.Method_Me8 (var_BC)
  loc_1262ECA:   Me.Frame.Top = Int(((var_BC - Me.Frame.Height) / CDbl(2)))
  loc_1262EEE:   Call 0.Method_Me0 (var_BC)
  loc_1262F05:   Set var_B8 = Me.Frame
  loc_1262F0B:   var_B8.Left = Int(((var_BC - Me.Frame.Width) / CDbl(2)))
  loc_1262F25:   Set var_8C = Me.Txt
  loc_1262F2B:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_1262F45:   If (var_B8.Visible = 0) Then
  loc_1262F55:     Set var_8C = Me.Txt
  loc_1262F5B:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_1262F63:     var_B8.Visible = True
  loc_1262F7A:     Set var_8C = Me.Label1
  loc_1262F80:     Call 0.Method_ChkNCTOKEN_Click0 (4, var_B8)
  loc_1262F88:     var_B8.Visible = True
  loc_1262F94:   End If
  loc_1262FAF:   var_C4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1262FC6:   var_E0 = 0
  loc_1262FE6:   var_CC = "Select 'N'+ ShortName From Depart Where Code='" & LocalRestCode
  loc_1262FF6:   unk_58F14B.Execute var_CC & "'", var_9C, -1
  loc_1262FFE:   var_8C = var_8C.Fields
  loc_1263006:   var_E0 = var_B8.Item(var_B8)
  loc_126300E:   var_E4 = var_E4.Value
  loc_126302D:   unk_58F14B.Execute CStr(var_F4 & var_F4 & "' Order by Description"), CVar(var_C4 & MemVar_1F92078 & "') AND V_Type='"), var_158
  loc_1263038:   Set var_88 = var_15C
  loc_1263078:   If (var_88.RecordCount > 0) Then
  loc_1263095:     var_B8 = var_88.Fields.Item(0)
  loc_126309D:     var_9C = var_B8.Value
  loc_12630A6:     var_A0 = CStr(var_9C)
  loc_12630AC:     global_152 = var_A0
  loc_12630C3:     Call Proc_333_91_10E99F0(MemVar_1F92044, var_A0)
  loc_12630D6:     Set var_8C = Me.Txt
  loc_12630DC:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(3), var_B8, var_A0)
  loc_12630E4:     var_B8.Text = -1
  loc_1263100:     Me.LblKotNm.Caption = "NC TOKEN"
  loc_1263110:     Set var_8C = Me.cmdNCBill
  loc_1263116:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_126311E:   End If
  loc_1263121: Else
  loc_126312F:   Set var_8C = Me.Txt
  loc_1263135:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_126314F:   If (var_B8.Visible = &HFF) Then
  loc_126315F:     Set var_8C = Me.Txt
  loc_1263165:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_126316D:     var_B8.Visible = False
  loc_1263184:     Set var_8C = Me.Label1
  loc_126318A:     Call 0.Method_ChkNCTOKEN_Click0 (4, var_B8)
  loc_1263192:     var_B8.Visible = False
  loc_126319E:   End If
  loc_12631B9:   var_C4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_12631D0:   var_E0 = 0
  loc_12631F0:   var_CC = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_1263200:   unk_58F14B.Execute var_CC & "'", var_9C, -1
  loc_1263208:   var_8C = var_8C.Fields
  loc_1263210:   var_E0 = var_B8.Item(var_B8)
  loc_1263218:   var_E4 = var_E4.Value
  loc_1263237:   unk_58F14B.Execute CStr(var_F4 & var_F4 & "' Order by Description"), CVar(var_C4 & MemVar_1F92078 & "') AND V_Type='"), var_158
  loc_1263242:   Set var_88 = var_15C
  loc_1263282:   If (var_88.RecordCount > 0) Then
  loc_126329F:     var_B8 = var_88.Fields.Item(0)
  loc_12632B0:     var_A0 = CStr(var_B8.Value)
  loc_12632B6:     global_152 = var_A0
  loc_12632CD:     Call Proc_333_91_10E99F0(MemVar_1F92044, var_A0, -1)
  loc_12632E0:     Set var_8C = Me.Txt
  loc_12632E6:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(3), var_B8, var_A0)
  loc_12632EE:     var_B8.Text = var_15C
  loc_126330A:     Me.LblKotNm.Caption = "TOKEN"
  loc_126331B:     Set var_8C = Me.cmdNCBill
  loc_1263321:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_1263329:   End If
  loc_1263335:   Me.Frame.Visible = False
  loc_126333D: End If
  loc_1263342: Set var_88 = Nothing
  loc_1263345: Exit Sub
End Sub

Private Sub CmNoOfPersons_UnknownEvent_9 'EA989C
  'Data Table: 58F128
  loc_EA9814: Me.FrameQty.Visible = True
  loc_EA9829: Me.LblIndex.Caption = vbNullString
  loc_EA983E: Me.LblIndex.Tag = vbNullString
  loc_EA9853: Me.LblVtype.Caption = "No.of Person"
  loc_EA9868: Me.LblVtype.Tag = vbNullString
  loc_EA987D: Me.TxtQty.Text = vbNullString
  loc_EA9892: Me.TxtQty.Tag = vbNullString
  loc_EA989A: Exit Sub
End Sub

Public Sub CmFgrid_UnknownEvent_9(Index As Integer) '13CC188
  'Data Table: 58F128
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_C2 As Integer
  Dim var_D4 As Variant
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_11C As Variant
  loc_13CB812: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CB83A: var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CB849: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CB865: Me.LblIndex.Caption = vbNullString
  loc_13CB87A: Me.LblIndex.Tag = vbNullString
  loc_13CB88F: Me.LblVtype.Caption = vbNullString
  loc_13CB8A4: Me.LblVtype.Tag = vbNullString
  loc_13CB8B9: Me.TxtQty.Text = vbNullString
  loc_13CB8CE: Me.TxtQty.Tag = vbNullString
  loc_13CB8D9: var_C2 = Index
  loc_13CB8E4: If (var_C2 = CInt(0)) Then
  loc_13CB906:   If (CLng(Me.FGrid.Row) > 1) Then
  loc_13CB922:     var_AC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_13CB931:     Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CB959:     var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CB968:     Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CB999:     Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_13CB9A8:   End If
  loc_13CB9AB: Else
  loc_13CB9B3:   If (var_C2 = CInt(1)) Then
  loc_13CB9F1:     If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_13CBA0D:       var_AC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_13CBA1C:       Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CBA44:       var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CBA53:       Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CBA84:       Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_13CBA93:     End If
  loc_13CBA96:   Else
  loc_13CBA9E:     If (var_C2 = CInt(2)) Then
  loc_13CBAA5:       Set var_8C = Me.TopCtrl1
  loc_13CBAAB:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_C2)
  loc_13CBAC4:       If (CStr() = "Browse") Then
  loc_13CBAC7:         Exit Sub
  loc_13CBAC8:       End If
  loc_13CBADB:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBAE3:       var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CBB16:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CBB19:         Exit Sub
  loc_13CBB1A:       End If
  loc_13CBB2D:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBB35:       var_E8 = CVar(CLng(0)) 'Long
  loc_13CBB68:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CBB6B:         Exit Sub
  loc_13CBB6C:       End If
  loc_13CBB78:       Me.FrameQty.Visible = True
  loc_13CBB80:       var_AC = 0
  loc_13CBB90:       Me.FrameQty.ZOrder var_AC
  loc_13CBBA5:       Me.TxtQty.Text = vbNullString
  loc_13CBBBE:       Me.TxtQty.Tag = CStr(2)
  loc_13CBBD6:       Me.LblVtype.Caption = "Qty"
  loc_13CBBE1:     Else
  loc_13CBBE9:       If (var_C2 = CInt(3)) Then
  loc_13CBBF0:         Set var_8C = Me.TopCtrl1
  loc_13CBBF6:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_E8)
  loc_13CBC0F:         If (CStr(var_AC) = "Browse") Then
  loc_13CBC12:           Exit Sub
  loc_13CBC13:         End If
  loc_13CBC17:         Set var_FC = Me.FGrid
  loc_13CBC26:         var_AC = CVar(CLng(var_FC.Row)) 'Long
  loc_13CBC2E:         var_E8 = CVar(CLng(0)) 'Long
  loc_13CBC41:         var_D8 = CStr(var_FC.TextMatrix))
  loc_13CBC55:         var_11C = CVar(CLng(var_FC.Row)) 'Long
  loc_13CBC8B:         If (CVar(CLng(&HA)) And (CStr(var_FC.TextMatrix)) <> vbNullString)) Then
  loc_13CBC9A:           var_AC = CVar(CLng(var_FC.RowSel)) 'Long
  loc_13CBCD7:           For var_164 = CInt(CLng(var_FC.RowSel)) To CInt((CLng(var_FC.Rows) - 1)):       var_86 = var_164 'Integer
  loc_13CBCE1:             var_AC = CVar(CLng(var_86)) 'Long
  loc_13CBCE9:             var_E8 = CVar(CLng(0)) 'Long
  loc_13CBCF3:             var_9C = CVar(CStr(var_86)) 'String
  loc_13CBCFA:             LateIdCallSt
  loc_13CBD08:           Next var_164 'Integer
  loc_13CBD0D:         End If
  loc_13CBD0F:         Set var_FC = Nothing 
  loc_13CBD16:       Else
  loc_13CBD1E:         If (var_C2 = CInt(4)) Then
  loc_13CBD25:           Set var_8C = Me.TopCtrl1
  loc_13CBD2B:           Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_13CBD44:           If (CStr() = "Browse") Then
  loc_13CBD47:             Exit Sub
  loc_13CBD48:           End If
  loc_13CBD5B:           var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBD63:           var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CBD96:           If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CBD99:             Exit Sub
  loc_13CBD9A:           End If
  loc_13CBDAD:           var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBDB5:           var_E8 = CVar(CLng(9)) 'Long
  loc_13CBDF7:           If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "CANCEL") Then
  loc_13CBE0D:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBE15:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CBE1A:             var_11C = vbNullString
  loc_13CBE24:             Set var_C0 = Me.FGrid
  loc_13CBE2A:             LateIdCallSt
  loc_13CBE3F:           Else
  loc_13CBE52:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBE5A:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CBE5F:             var_11C = "Cancel"
  loc_13CBE69:             Set var_C0 = Me.FGrid
  loc_13CBE6F:             LateIdCallSt
  loc_13CBE81:           End If
  loc_13CBE84:         Else
  loc_13CBE8C:           If (var_C2 = CInt(5)) Then
  loc_13CBE93:             Set var_8C = Me.TopCtrl1
  loc_13CBE99:             Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_C0)
  loc_13CBEB2:             If (CStr(var_11C) = "Browse") Then
  loc_13CBEB5:               Exit Sub
  loc_13CBEB6:             End If
  loc_13CBEC9:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBED1:             var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CBF04:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CBF07:               Exit Sub
  loc_13CBF08:             End If
  loc_13CBF1B:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBF23:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CBF65:             If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "FREE") Then
  loc_13CBF7B:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBF83:               var_E8 = CVar(CLng(9)) 'Long
  loc_13CBF88:               var_11C = vbNullString
  loc_13CBF92:               Set var_C0 = Me.FGrid
  loc_13CBF98:               LateIdCallSt
  loc_13CBFAD:             Else
  loc_13CBFC0:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBFC8:               var_E8 = CVar(CLng(9)) 'Long
  loc_13CBFCD:               var_11C = "Free"
  loc_13CBFD7:               Set var_C0 = Me.FGrid
  loc_13CBFDD:               LateIdCallSt
  loc_13CBFEF:             End If
  loc_13CBFF2:           Else
  loc_13CBFFA:             If (var_C2 = CInt(6)) Then
  loc_13CC001:               Set var_8C = Me.TopCtrl1
  loc_13CC007:               Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_C0)
  loc_13CC020:               If (CStr(var_11C) = "Browse") Then
  loc_13CC023:                 Exit Sub
  loc_13CC024:               End If
  loc_13CC037:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC03F:               var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CC072:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CC075:                 Exit Sub
  loc_13CC076:               End If
  loc_13CC086:               Set global_240 = New RsTouchScreenKeyBoard
  loc_13CC094:               var_AC = CVar(Me) 'Address
  loc_13CC09F:               Me.ParentForm = var_AC
  loc_13CC0A7:               Set var_8C = var_AC(var_E8)
  loc_13CC0B6:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC0BE:               var_E8 = CVar(CLng(6)) 'Long
  loc_13CC102:               var_9C = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_13CC107:               var_9C.MaxLength = 0
  loc_13CC121:               var_9C.Show 1, var_BC
  loc_13CC139:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC141:               var_E8 = CVar(CLng(6)) 'Long
  loc_13CC151:               var_D4 = CVar(TxtKeyBoard) 'String
  loc_13CC159:               Set var_C0 = Me.FGrid
  loc_13CC15F:               LateIdCallSt
  loc_13CC180:               Set global_240 = Nothing
  loc_13CC187:             End If
  loc_13CC187:           End If
  loc_13CC187:         End If
  loc_13CC187:       End If
  loc_13CC187:     End If
  loc_13CC187:   End If
  loc_13CC187: End If
  loc_13CC187: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A12F0
  'Data Table: 58F128
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A103F: Me.DGItem.Visible = False
  loc_10A105E: If (Me.RecordCount > 0) Then
  loc_10A109B:   Set var_B4 = Me.TxtGrid
  loc_10A10A1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A10A9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A10D2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A10DA:   var_EC = CVar(CLng(4)) 'Long
  loc_10A110D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A1115:   Set var_B8 = Me.FGrid
  loc_10A111B:   LateIdCallSt
  loc_10A114A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A1152:   var_EC = CVar(CLng(&HA)) 'Long
  loc_10A1185:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A1193:   LateIdCallSt
  loc_10A11FA:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(5)))) 'String
  loc_10A1202:   Set var_B8 = Me.FGrid
  loc_10A1208:   LateIdCallSt
  loc_10A1235:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A123D:   var_EC = CVar(CLng(3)) 'Long
  loc_10A125F:   var_B0 = Me.Fields.Item("DispCode")
  loc_10A1270:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A1278:   Set var_B8 = Me.FGrid
  loc_10A127E:   LateIdCallSt
  loc_10A129A: End If
  loc_10A12A6: Set var_A8 = Me.TxtGrid
  loc_10A12AC: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A12B4: var_B8 = var_B0.Visible
  loc_10A12C6: If (var_12E = &HFF) Then
  loc_10A12D2:   Set var_A8 = Me.TxtGrid
  loc_10A12D8:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_A4)
  loc_10A12E0:   var_B0.SetFocus
  loc_10A12EC: End If
  loc_10A12EC: Exit Sub
  loc_10A12ED: If var_B8 Then Exit Sub
  loc_10A12ED: End If
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9D0D0
  'Data Table: 58F128
  Dim var_A8 As Variant
  loc_E9D054: Set var_88 = Me.DGItem
  loc_E9D07E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9D086: Set var_BC = Me.DGItem
  loc_E9D0C0: Proc_6_138_106D6F8(Me.DGItem, global_88, 0, Me.FGPoint)
  loc_E9D0CE: Exit Sub
End Sub

Public Sub CmdCatType_UnknownEvent_9(Index As Integer) '101CE10
  'Data Table: 58F128
  Dim Me As Variant
  Dim var_A8 As Variant
  loc_101CBF8: Set var_8C = Me.CmdCatType
  loc_101CBFE: Call 0.Method_CmdCatType_UnknownEvent_98 (var_8E, var_86)
  loc_101CC09: For var_92 =  To var_8E: 0 = var_92 'Integer
  loc_101CC19:   Set var_8C = Me.CmdCatType
  loc_101CC1F:   Call 0.Method_CmdCatType_UnknownEvent_90 (var_86)
  loc_101CC27:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69(var_98)
  loc_101CC3C:   If (CInt() = 1) Then
  loc_101CC49:     Set var_8C = Me.CmdCatType
  loc_101CC4F:     Call 0.Method_CmdCatType_UnknownEvent_90 (Index)
  loc_101CC57:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_98)
  loc_101CC65:     global_172 = CStr()
  loc_101CC76:   End If
  loc_101CC79: Next var_92 'Integer
  loc_101CC8D: Me.Filter = 0
  loc_101CC98: Me.MoveFirst
  loc_101CCAB: Set var_8C = Me.SSPGroup
  loc_101CCB1: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101CCB9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_101CCD3: Set var_8C = Me.SSPItem
  loc_101CCD9: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101CCE1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_101CD08: Me.Filter = CVar("CatType='" & global_172 & "'")
  loc_101CD24: var_A8 = CVar(Me.RecordCount) 'Long
  loc_101CD2B: Proc_6_39_E7C810(var_E0)
  loc_101CD37: global_236 = CInt(var_E0)
  loc_101CD4C: If (global_228 = "Group") Then
  loc_101CD55:   global_228 = "Group"
  loc_101CD6D:   Set var_98 = Me.SSPGroup
  loc_101CD90:   Call Proc_333_76_1284680(Me.SSPGroup, CInt(4), global_248, CInt(4))
  loc_101CD9C:   global_224 = CInt(var_A8)
  loc_101CDB0: Else
  loc_101CDB6:   global_228 = "Group"
  loc_101CDF1:   Call Proc_333_76_1284680(Me.SSPGroup, CInt(4), global_248, CInt(4), Me.SSPItem, var_A8)
  loc_101CDFD:   global_224 = CInt(var_A8)
  loc_101CE0E: End If
  loc_101CE0E: Exit Sub
End Sub

Public Sub SSPGroup_UnknownEvent_9(Index As Integer) 'F74D60
  'Data Table: 58F128
  Dim Me As Variant
  Dim var_CC As Variant
  loc_F74C3F: Me.Filter = 0
  loc_F74C4A: Me.MoveFirst
  loc_F74C5C: Set var_98 = Me.SSPGroup
  loc_F74C62: Call 0.Method_SSPGroup_UnknownEvent_90 (Index, var_9C)
  loc_F74C6A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B("ItemGroup='")
  loc_F74C8E: var_CC = CVar(CStr() & "' And CatType='" & global_172 & "'") 'String
  loc_F74C98: Me.Filter = var_CC
  loc_F74CCE: Proc_6_39_E7C810(var_CC)
  loc_F74CDA: global_236 = CInt(var_CC)
  loc_F74CFB: If (Me.RecordCount > 0) Then
  loc_F74D04:   global_228 = "Item"
  loc_F74D1C:   Set var_9C = Me.SSPGroup
  loc_F74D3F:   Call Proc_333_76_1284680(Me.SSPItem, CInt(4), global_244, CInt(4))
  loc_F74D4B:   global_224 = CInt(CVar(Me.RecordCount))
  loc_F74D5C: End If
  loc_F74D5C: Exit Sub
End Sub

Public Sub SSPItem_UnknownEvent_9(Index As Integer) '12EBB60
  'Data Table: 58F128
  Dim var_90 As String
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_C0 As String
  Dim unk_58F14B As Connection15
  Dim var_E8 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_D0 As Variant
  Dim var_108 As Variant
  Dim var_A8 As Variant
  Dim var_128 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_17C As TextBox
  Dim var_148 As Variant
  Dim var_1AC As Variant
  loc_12EB4D3: var_90 = "Select D.Code As OutletCode,D.Name As OutletName,I.Dispcode,I.Unit,I.Kitchen From ItemMast I Inner Join Depart D On I.RestCode=D.Code where I.RestCode='" & LocalRestCode
  loc_12EB4DA: var_AC = var_90 & "' And I.Code='"
  loc_12EB4E7: Set var_94 = Me.SSPItem
  loc_12EB4ED: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, var_AC)
  loc_12EB4F5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(var_E0)
  loc_12EB4FD: var_B0 = CStr(-1)
  loc_12EB516: var_C0 = var_E4 & var_B0 & "' And (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999  "
  loc_12EB51F: unk_58F14B.Execute var_C0, , 
  loc_12EB52A: Set var_8C = var_E4
  loc_12EB552: Set var_E8 = Me.FGrid
  loc_12EB567: var_D0 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EB56F: var_108 = CVar(CLng(0)) 'Long
  loc_12EB588: var_128 = CVar(CStr((CLng(var_E8.Rows) - 1))) 'String
  loc_12EB58F: LateIdCallSt
  loc_12EB5B2: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EB5BA: var_118 = CVar(CLng(1)) 'Long
  loc_12EB5EA: var_128 = CVar(CStr(var_8C.Fields.Item("OutletCode").Value)) 'String
  loc_12EB5F1: LateIdCallSt
  loc_12EB61B: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EB623: var_118 = CVar(CLng(2)) 'Long
  loc_12EB653: var_128 = CVar(CStr(var_8C.Fields.Item("OutLetName").Value)) 'String
  loc_12EB65A: LateIdCallSt
  loc_12EB684: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EB68C: var_118 = CVar(CLng(3)) 'Long
  loc_12EB6AB: var_98 = var_8C.Fields.Item("DispCode")
  loc_12EB6C3: LateIdCallSt
  loc_12EB6ED: var_D0 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EB704: Set var_94 = Me.SSPItem
  loc_12EB70A: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, CVar(CLng(4)), "DispCode", var_E8, CVar(CStr(var_98.Value)), var_118)
  loc_12EB712: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_F8)
  loc_12EB71A: var_128 = CVar(CStr(var_E8)) 'String
  loc_12EB721: LateIdCallSt
  loc_12EB73C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E8)
  loc_12EB74B: var_D0 = CVar((CLng(var_128) - 1)) 'Long
  loc_12EB762: Set var_94 = Me.SSPItem
  loc_12EB768: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, CVar(CLng(&HA)), "DispCode", var_128)
  loc_12EB770: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(var_118)
  loc_12EB77F: LateIdCallSt
  loc_12EB79A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E8)
  loc_12EB7A9: var_F8 = CVar((CLng(CVar(CStr(var_F8))) - 1)) 'Long
  loc_12EB7B1: var_118 = CVar(CLng(5)) 'Long
  loc_12EB7D0: var_98 = var_8C.Fields.Item("Unit")
  loc_12EB7E8: LateIdCallSt
  loc_12EB803: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E8)
  loc_12EB812: var_108 = CVar((CLng(CVar(CStr(var_98.Value))) - 1)) 'Long
  loc_12EB839: var_A8 = "1"
  loc_12EB852: LateIdCallSt
  loc_12EB871: Set var_94 = Me.SSPItem
  loc_12EB877: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, var_E8, CVar(CStr(Format(var_A8, "0.000"))), 1, 1)
  loc_12EB87F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(CVar(CLng(7)))
  loc_12EB896: Set var_E4 = Me.Txt
  loc_12EB89C: Call 0.Method_SSPItem_UnknownEvent_90 (CInt(1), var_17C, var_AC, CVar(CLng(&HA)))
  loc_12EB8A4: var_118 = var_17C.Text
  loc_12EB8EA: Call Proc_333_96_F1FCA4(CStr(var_A8), var_AC, CStr(var_8C.Fields.Item("OutletCode").Value), var_18C)
  loc_12EB901: var_118 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12EB909: var_148 = CVar(CLng(8)) 'Long
  loc_12EB936: var_1AC = CVar(CStr(Format(CVar(var_18C), "0.00"))) 'String
  loc_12EB93D: LateIdCallSt
  loc_12EB980: var_D0 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12EB996: LateIdCallSt
  loc_12EB9B3: var_F8 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12EB9C3: var_D0 = "Kitchen"
  loc_12EB9E8: var_128 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_D0)), CVar(CLng(&HB)), "0.000", var_E8, vbNullString, CVar(CLng(9)), var_D0)) 'String
  loc_12EB9EF: LateIdCallSt
  loc_12EBA15: var_D0 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12EBA27: LateIdCallSt
  loc_12EBA4B: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12EBA5A: Me.FGrid.Row = var_D0
  loc_12EBA8B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_12EBAAC: var_D0 = CVar((CLng(var_E8.Rows) + 1)) 'Long
  loc_12EBACE: var_D0 = CVar((CLng(CVar(CLng(Me.FGrid.Row))) - 1)) 'Long
  loc_12EBAE0: LateIdCallSt
  loc_12EBAED: Set var_E8 = Nothing 
  loc_12EBB0A: var_D0 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_12EBB19: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_12EBB41: var_D0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_12EBB50: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_12EBB5F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5B8B0
  'Data Table: 58F128
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5B790: On Error Goto loc_F5B8AA
  loc_F5B7A2: Me.DGTable.Visible = False
  loc_F5B7C1: If (Me.RecordCount > 0) Then
  loc_F5B800:   Set var_B4 = Me.Txt
  loc_F5B806:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5B80E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5B841:   var_B0 = Me.Fields.Item("Code")
  loc_F5B860:   Set var_B4 = Me.Txt
  loc_F5B866:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5B86E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5B884: End If
  loc_F5B88F: Set var_A8 = Me.Txt
  loc_F5B895: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F5B89D: var_B0.SetFocus
  loc_F5B8A9: Exit Sub
  loc_F5B8AA: ' Referenced from: F5B790
  loc_F5B8AA: Proc_6_60_E62BC4(var_B0)
  loc_F5B8AF: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA5288
  'Data Table: 58F128
  Dim var_A8 As Variant
  loc_EA5208: Set var_88 = Me.DGTable
  loc_EA5232: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA523A: Set var_BC = Me.DGTable
  loc_EA5276: Proc_6_138_106D6F8(Me.DGTable, global_100, CInt(4), Me.FGPoint)
  loc_EA5284: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'FE6394
  'Data Table: 58F128
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE61CF: Me.DGRest.Visible = False
  loc_FE61EE: If (Me.RecordCount > 0) Then
  loc_FE622B:   Set var_B4 = Me.TxtGrid
  loc_FE6231:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE6239:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE6262:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE626A:   var_EC = CVar(CLng(2)) 'Long
  loc_FE629D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE62A5:   Set var_B8 = Me.FGrid
  loc_FE62AB:   LateIdCallSt
  loc_FE62DA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE62E2:   var_EC = CVar(CLng(1)) 'Long
  loc_FE6304:   var_B0 = Me.Fields.Item("Code")
  loc_FE6315:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE631D:   Set var_B8 = Me.FGrid
  loc_FE6323:   LateIdCallSt
  loc_FE633F: End If
  loc_FE634B: Set var_A8 = Me.TxtGrid
  loc_FE6351: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE6359: var_A4 = var_B0.Visible
  loc_FE636B: If (var_12E = &HFF) Then
  loc_FE6377:   Set var_A8 = Me.TxtGrid
  loc_FE637D:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE6385:   var_B0.SetFocus
  loc_FE6391: End If
  loc_FE6391: Exit Sub
  loc_FE6392: ArrayRebase1Var
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9CA10
  'Data Table: 58F128
  Dim var_A8 As Variant
  loc_E9C994: Set var_88 = Me.DGRest
  loc_E9C9BE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9C9C6: Set var_BC = Me.DGRest
  loc_E9CA00: Proc_6_138_106D6F8(Me.DGRest, global_104, 0, Me.FGPoint)
  loc_E9CA0E: Exit Sub
End Sub

Private Sub cmdNCBill_UnknownEvent_9 '17A6BE4
  'Data Table: 58F128
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_E8 As String
  Dim unk_58F188 As Connection15
  Dim var_D0 As Recordset15
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim Me As Recordset15
  Dim var_178 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim unk_58F14B As Connection15
  Dim var_BC As Recordset15
  Dim var_B8 As Recordset15
  Dim var_108 As Variant
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_188 As Variant
  Dim var_1AC As Variant
  Dim var_18C As Fields15
  Dim var_1C0 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_20C As Variant
  Dim var_21C As Variant
  Dim var_230 As Variant
  Dim var_1FC As Variant
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_398 As Variant
  Dim var_D8 As Double
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_278 As Variant
  loc_17A4D1C: On Error Goto loc_17A6BDD
  loc_17A4D22: MemVar_1F923C0 = "N"
  loc_17A4D29: MemVar_1F923C4 = "N"
  loc_17A4D30: MemVar_1F923C8 = "K"
  loc_17A4D60: var_E8 = "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F92078 & "' AND RestCode='" & LocalRestCode & "'"
  loc_17A4D69: unk_58F188.Execute var_E8, var_108, -1
  loc_17A4D74: Set var_D0 = var_10C
  loc_17A4D9C: If (var_D0.RecordCount > 0) Then
  loc_17A4DA2:   var_D0.MoveFirst
  loc_17A4DAA: Else
  loc_17A4DC3:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_130, var_150, var_170)
  loc_17A4DD3:   Exit Sub
  loc_17A4DD4: End If
  loc_17A4DEF: If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_17A4DF2:   Exit Sub
  loc_17A4DF3: End If
  loc_17A4DFA: var_DC = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_17A4E3F: var_88 = CStr(CVar(var_DC & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_17A4E5E: var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A4E9C: var_8C = CStr(var_130 & Me.Fields.Item("SearchCode").Value & "'")
  loc_17A4EC5: var_130 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A4EE5: var_178 = Me.Fields.Item("SearchCode")
  loc_17A4EED: var_108 = var_178.Value
  loc_17A4F02: var_DC = CStr(var_130 & var_108 & "'")
  loc_17A4F0C: unk_58F14B.Execute var_DC, var_188, -1
  loc_17A4F17: Set var_BC = var_18C
  loc_17A4F3B: If (var_88 = vbNullString) Then
  loc_17A4F3E:   Exit Sub
  loc_17A4F3F: End If
  loc_17A4F47: If (var_8C = vbNullString) Then
  loc_17A4F4A:   Exit Sub
  loc_17A4F4B: End If
  loc_17A4F6F: Call 0.Method_cmdNCBill_UnknownEvent_90 (CInt(4), var_178, var_DC, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='", var_108)
  loc_17A4F77: -1 = var_178.Text
  loc_17A4F90: unk_58F14B.Execute var_18C & var_DC & "' AND CONTRADOCID IS NULL", var_18C, Me.Txt
  loc_17A4FC7: If (var_18C.RecordCount = 1) Then
  loc_17A4FCD:   var_C8 = "New Order"
  loc_17A4FD3: Else
  loc_17A4FDA:   Set var_10C = Me.LblState
  loc_17A4FE8:   var_C8 = var_10C.Caption
  loc_17A4FEE: End If
  loc_17A5004: unk_58F14B.Execute var_88, var_108, -1
  loc_17A500F: Set var_B4 = var_10C
  loc_17A5018: ' Referenced from: 17A6BB9
  loc_17A5027: If Not(var_BC.EOF) Then
  loc_17A5031:   var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A5049:   var_10C = Me.Fields
  loc_17A5059:   var_108 = var_10C.Item("SearchCode").Value
  loc_17A506A:   var_170 = var_130 & var_108 & "' and K.VoidYN<>'Y'" 
  loc_17A509A:   unk_58F14B.Execute CStr(var_170), var_108, -1
  loc_17A50A5:   Set var_B8 = var_10C
  loc_17A50C2:   If (var_B8.RecordCount > 0) Then
  loc_17A50F3:     var_19C = Trim(CVar(var_BC.Fields.Item("PrintType"))) 'Variant
  loc_17A5108:     If Not (var_19C = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_17A5116:       If (var_19C = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_17A5119:       End If
  loc_17A511B:       Close 1
  loc_17A5134:       var_E0 = "C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition)
  loc_17A5142:       Open var_E0 & ".TXT" For Output As 1 Len = &HFF
  loc_17A5152:       var_B4.MoveFirst
  loc_17A5157:       ' Referenced from: 17A5BAE
  loc_17A5166:       If Not(var_B4.EOF) Then
  loc_17A517F:         If (0 = 0) Then
  loc_17A5184:           Print 1
  loc_17A51B8:           var_C0 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_17A51EB:           Call Proc_333_94_10AC2D0(Me.LblRest.Caption, "D", &H28, var_E8)
  loc_17A51F5:           Print 1, var_E8
  loc_17A521B:           Call Proc_333_94_10AC2D0("* NC Bill *", "D", &H28, var_E0)
  loc_17A5225:           Print 1, var_E0
  loc_17A5234:           var_92 = &H12
  loc_17A5239:           Print 1
  loc_17A5241:           Print 1
  loc_17A527A:           Proc_6_39_E7C810(var_170, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_17A529C:           var_130 = (Chr(&HF) + "V No.     : ")
  loc_17A52A6:           var_1AC = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EAD428(CStr(var_170), &HA, var_92)))
  loc_17A52AC:           Print 1, var_1AC
  loc_17A52E7:           var_10C = var_B4.Fields
  loc_17A535E:           var_130 = (Chr(&HF) + "Date.     : ")
  loc_17A5368:           var_188 = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C.Item("VDate")), var_10C), &HC)))
  loc_17A5371:           var_1AC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C.Item("VDate")), var_10C), &HC))), &HA, var_92)) + " ")
  loc_17A537B:           var_1E4 = (var_1AC + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_17A5381:           Print 1, var_1E4
  loc_17A53D6:           var_178 = var_B4.Fields.Item("Remarks")
  loc_17A5413:           var_130 = (Chr(&HF) + "Remarks : ")
  loc_17A541D:           var_188 = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32)))
  loc_17A5424:           var_1C0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_17A542A:           Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_17A5463:           Set var_10C = Me.Label1
  loc_17A5469:           Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_178)
  loc_17A54FE:           var_188 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_17A5507:           var_1AC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))), &HA, var_92)) + ": ")
  loc_17A550E:           var_20C = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_17A5511:           var_21C = (Chr(&H12) + var_20C)
  loc_17A5517:           Print 1, var_21C
  loc_17A5562:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A5568:           Print 1, CVar(var_178)
  loc_17A5575:         End If
  loc_17A559B:         var_150 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_17A55B5:         var_188 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_178)))))
  loc_17A55C1:         var_1AC = Space(3)
  loc_17A55C9:         var_1C0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_178))))), &HA, var_92)) + var_1AC)
  loc_17A55E3:         var_1E4 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_17A55F7:         var_20C = ("000" + Space(3))
  loc_17A5611:         var_230 = (var_20C + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_17A5657:         var_130 = (Chr(&HF) + CVar(CStr(var_230)))
  loc_17A565D:         Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_17A5680:         var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A5686:         Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_17A5699:         var_92 = (var_92 + 4)
  loc_17A569F:         var_B8.MoveFirst
  loc_17A56A4:         ' Referenced from: 17A59AB
  loc_17A56B3:         If Not(var_B8.EOF) Then
  loc_17A5703:           Proc_6_39_E7C810(var_1AC, CVar(var_B8.Fields.Item("qty")))
  loc_17A574E:           Proc_6_39_E7C810(var_248, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A5799:           Proc_6_39_E7C810(var_2F0, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_17A57C4:           Proc_6_39_E7C810(var_328, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A5814:           var_130 = Space(3)
  loc_17A581C:           var_170 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + var_130)
  loc_17A5832:           var_1E4 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1AC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_17A5835:           var_1FC = (1 + var_1E4)
  loc_17A5849:           var_21C = (Space(3) + Space(3))
  loc_17A5862:           var_298 = (var_92 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_248, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", &HA)))))
  loc_17A5876:           var_2B8 = (var_298 + Space(3))
  loc_17A588F:           var_398 = (var_2B8 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_2F0 * var_328), "0.00")), &HA)))
  loc_17A5904:           var_10C = var_B8.Fields
  loc_17A591B:           Proc_6_39_E7C810(var_130, CVar(var_10C.Item("qty")))
  loc_17A5949:           Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_10C.Item("qty"))))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_17A5955:           var_1AC = (var_10C + (CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_10C.Item("qty")))))))
  loc_17A595A:           var_D8 = CSng(var_1AC)
  loc_17A5987:           var_130 = (Chr(&HF) + CVar(CStr(var_398)))
  loc_17A598D:           Print 1, var_130
  loc_17A59A0:           var_92 = (var_92 + 1)
  loc_17A59A6:           var_B8.MoveNext
  loc_17A59AB:           GoTo loc_17A56A4
  loc_17A59AE:         End If
  loc_17A59C4:         var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A59CA:         Print 1, var_130
  loc_17A59DC:         Print 1, vbNullString
  loc_17A5A62:         var_150 = (Chr(&HF) + Space(&H25))
  loc_17A5A6C:         var_188 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_45_EAD428("TOTAL  :", 8)))
  loc_17A5A76:         var_20C = ((CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_10C.Item("qty")))))) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_D8, "0.00"))))), &HB, 1)))
  loc_17A5A7C:         Print 1, Space(3)
  loc_17A5AAD:         Print 1, vbNullString
  loc_17A5B07:         var_130 = (Chr(&HF) + "Waiter Name  : ")
  loc_17A5B11:         var_188 = (Space(&H25) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_17A5B17:         Print 1, (CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B4.Fields.Item("qty"))))))
  loc_17A5B38:         Print 1
  loc_17A5B53:         var_130 = (Chr(&HF) + "A Analysis Software")
  loc_17A5B59:         Print 1, Space(&H25)
  loc_17A5B69:         var_B4.MoveNext
  loc_17A5B70:         Print 1
  loc_17A5B78:         Print 1
  loc_17A5B80:         Print 1
  loc_17A5B88:         Print 1
  loc_17A5B90:         Print 1
  loc_17A5B98:         Print 1
  loc_17A5BA0:         Print 1
  loc_17A5BA8:         Print 1
  loc_17A5BAE:         GoTo loc_17A5157
  loc_17A5BB1:       End If
  loc_17A5BB3:       Close 1
  loc_17A5BEE:       If (Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_17A5C16:         Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A5C74:         Print 1, CVar("TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_D0.Fields.Item("Printer").Value
  loc_17A5C94:       Else
  loc_17A5CBE:         Print 1, "TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_17A5CCF:       End If
  loc_17A5CD1:       Close 1
  loc_17A5CDB:       If (MemVar_1F923B8 = "Y") Then
  loc_17A5D0D:         var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_17A5D1E:       Else
  loc_17A5D4D:         var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_17A5D5B:       End If
  loc_17A5D5E:     Else
  loc_17A5D69:       If (var_19C = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_17A5D6E:         Close 1
  loc_17A5D95:         Open "C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_17A5DA5:         var_B4.MoveFirst
  loc_17A5DAA:         ' Referenced from:   17A696A
  loc_17A5DB9:         If Not(var_B4.EOF) Then
  loc_17A5DC9:           var_90 = "* NC BILL *"
  loc_17A5DFA:           var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_17A5E09:           If (0 = 0) Then
  loc_17A5E0E:             Print 1
  loc_17A5E3D:             var_188 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_17A5E80:             var_268 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_17A5EAA:             var_1D4 = (Chr(&HF) + Space(CLng(((CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_D0.Fields.Item("qty")))))) / 2))))
  loc_17A5EB1:             var_20C = (CVar(CStr(Format(var_D8, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_17A5EB8:             var_298 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_17A5EBF:             var_2B8 = (var_298 + Chr(&H12))
  loc_17A5EC5:             Print 1, var_2B8
  loc_17A5F13:             var_170 = (42 - Len(Trim(var_90)))
  loc_17A5F46:             var_20C = (42 - Len(Trim(var_90)))
  loc_17A5F70:             var_1C0 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_17A5F7A:             var_1D4 = (Space(CLng(((CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_D0.Fields.Item("qty")))))) / 2))) + CVar(var_90))
  loc_17A5F81:             var_248 = (CVar(CStr(Format(var_D8, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_17A5F88:             var_278 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_17A5F8E:             Print 1, ("0.00" / 2)
  loc_17A5FAD:             var_92 = &H12
  loc_17A5FB2:             Print 1
  loc_17A5FBA:             Print 1
  loc_17A5FF3:             Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")), var_92)
  loc_17A6022:             var_130 = (Chr(&HF) + "TOKEN No.   :   ")
  loc_17A602C:             var_1AC = (Trim(var_90) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_17A6033:             var_1D4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_17A6039:             Print 1, CVar(CStr(Format(var_D8, "0.00")))
  loc_17A60FC:             var_130 = (Chr(&HF) + "TOKEN Dt.   :   ")
  loc_17A6106:             var_188 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_92), &HC)))
  loc_17A610F:             var_1AC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_17A6119:             var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_17A6120:             var_20C = (Trim(var_90) + Chr(&H12))
  loc_17A6126:             Print 1, Space(3)
  loc_17A617F:             var_178 = var_B4.Fields.Item("Remarks")
  loc_17A61BC:             var_130 = (Chr(&HF) + "Remarks :   ")
  loc_17A61C6:             var_188 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H20)))
  loc_17A61CD:             var_1C0 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_17A61D3:             Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_17A620C:             Set var_10C = Me.Label1
  loc_17A6212:             Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_178)
  loc_17A62B4:             var_188 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_17A62BD:             var_1AC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":   ")
  loc_17A62C4:             var_20C = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_17A62C7:             var_21C = (Chr(&H12) + var_20C)
  loc_17A62CE:             var_248 = ((Space(3) / 2) + Chr(&H12))
  loc_17A62D4:             Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_17A6330:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A6337:             var_170 = (CVar(var_178) + Chr(&H12))
  loc_17A633D:             Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))
  loc_17A634E:           End If
  loc_17A6374:           var_150 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_17A638E:           var_188 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))
  loc_17A639A:           var_1AC = Space(3)
  loc_17A63A2:           var_1C0 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_1AC)
  loc_17A63BC:           var_1E4 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_17A6405:           var_130 = (Chr(&HF) + CVar(CStr("000")))
  loc_17A640C:           var_170 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_17A6412:           Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_17A6446:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A644D:           var_170 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_17A6453:           Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_17A646A:           var_92 = (var_92 + 4)
  loc_17A6470:           var_B8.MoveFirst
  loc_17A6475:           ' Referenced from:   17A66C7
  loc_17A6484:           If Not(var_B8.EOF) Then
  loc_17A64D4:             Proc_6_39_E7C810(var_1AC, CVar(var_B8.Fields.Item("qty")))
  loc_17A651F:             Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A6561:             var_130 = Space(3)
  loc_17A6569:             var_170 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H13, 1, 1)) + var_130)
  loc_17A6582:             var_1FC = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1AC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))))
  loc_17A6596:             var_21C = (Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000") + Space(3))
  loc_17A65AF:             var_298 = (var_92 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_17A661F:             Proc_6_39_E7C810(var_130, CVar(var_B8.Fields.Item("qty")))
  loc_17A664D:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_17A6659:             var_1AC = (var_D8 + (CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))))
  loc_17A665E:             var_D8 = CSng(var_1AC)
  loc_17A6698:             var_130 = (Chr(&HF) + CVar(CStr(var_298)))
  loc_17A669F:             var_170 = (var_130 + Chr(&H12))
  loc_17A66A5:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_17A66BC:             var_92 = (var_92 + 1)
  loc_17A66C2:             var_B8.MoveNext
  loc_17A66C7:             GoTo loc_17A6475
  loc_17A66CA:           End If
  loc_17A66ED:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A66F4:           var_170 = (var_130 + Chr(&H12))
  loc_17A66FA:           Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_17A6781:           var_150 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)))
  loc_17A678B:           var_1E4 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_D8, "0.00"))))), &HB, 1)))
  loc_17A6791:           Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(Format(var_D8, "0.00"))), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))))
  loc_17A67BE:           Print 1, vbNullString
  loc_17A6825:           var_130 = (Chr(&HF) + "Waiter Name  :   ")
  loc_17A682F:           var_188 = (CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_17A6836:           var_1C0 = (Format(var_D8, "0.00") + Chr(&H12))
  loc_17A683C:           Print 1, Trim(CVar(CStr(Format(var_D8, "0.00"))))
  loc_17A6884:           var_188 = Chr(&H12)
  loc_17A6891:           var_130 = (Chr(&HF) + "***  ")
  loc_17A68A4:           var_1AC = ("  ***" + var_188)
  loc_17A68AE:           Print 1, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_C8) & Chr(&H12)
  loc_17A68C7:           Print 1
  loc_17A68EF:           var_130 = (Chr(&HF) + "** A Analysis Software **")
  loc_17A68F6:           var_170 = (CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) + Chr(&H12))
  loc_17A68FC:           Print 1, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_C8)
  loc_17A6910:           var_B4.MoveNext
  loc_17A6917:           Print 1
  loc_17A691F:           Print 1
  loc_17A6927:           Print 1
  loc_17A692F:           Print 1
  loc_17A6955:           var_150 = (Chr(&H1B) + Chr(&H6D))
  loc_17A695B:           Print 1, Chr(&H12)
  loc_17A696A:           GoTo loc_17A5DAA
  loc_17A696D:         End If
  loc_17A696F:         Close 1
  loc_17A69AA:         If (Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_17A69D2:           Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A6A30:           Print 1, CVar("TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_D0.Fields.Item("Printer").Value
  loc_17A6A50:         Else
  loc_17A6A75:           Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A6AAC:           Print 1, "TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_17A6ABD:         End If
  loc_17A6ABF:         Close 1
  loc_17A6AC9:         If (MemVar_1F923B8 = "Y") Then
  loc_17A6AFB:           var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_17A6B0C:         Else
  loc_17A6B3B:           var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_17A6B49:         End If
  loc_17A6B49:       End If
  loc_17A6B49:     End If
  loc_17A6B4C:   Else
  loc_17A6B96:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_C8), var_188, Chr(&H12))
  loc_17A6BB1:   End If
  loc_17A6BB4:   var_BC.MoveNext
  loc_17A6BB9:   GoTo loc_17A5018
  loc_17A6BBC: End If
  loc_17A6BC1: Set var_B4 = Nothing
  loc_17A6BC9: Set var_B8 = Nothing
  loc_17A6BD1: Set var_BC = Nothing
  loc_17A6BD9: Set var_D0 = Nothing
  loc_17A6BDC: Exit Sub
  loc_17A6BDD: ' Referenced from: 17A4D1C
  loc_17A6BDD: Proc_6_60_E62BC4(var_D8)
  loc_17A6BE2: Exit Sub
End Sub

Public Function MasterFormExitGet() '5919A8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '5919B7
  MasterFormExit = Value
End Sub

Public Function LocalRestCodeGet() '5919C6
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '5919D5
  LocalRestCode = Value
End Sub

Public Function SpecialRateGet() '5919E4
  SpecialRateGet = SpecialRate
End Function

Public Sub SpecialRatePut(Value) '5919F3
  SpecialRate = Value
End Sub

Public Property Let MsgBoxTouch(vNewValue) 'E01D9C
  'Data Table: 58F128
  loc_E01D96: global_276 = vNewValue
  loc_E01D99: Exit Sub
End Sub

Public Property Get MsgBoxTouch() 'E06480
  'Data Table: 58F128
  loc_E06479: MsgBoxTouch = global_276
End Sub

Public Property Let PTableNo(vNewValue) 'E143D4
  'Data Table: 58F128
  loc_E143CC: global_204 = vNewValue
  loc_E143D0: Exit Sub
End Sub

Public Property Get PTableNo() 'E1414C
  'Data Table: 58F128
  loc_E14140: var_88 = global_204
  loc_E14143: PTableNo = 
End Sub

Public Property Let pRestCode(vNewValue) 'E13DA4
  'Data Table: 58F128
  loc_E13D9C: global_208 = vNewValue
  loc_E13DA0: Exit Sub
End Sub

Public Property Get pRestCode() 'E13D14
  'Data Table: 58F128
  loc_E13D08: var_88 = global_208
  loc_E13D0B: pRestCode = 
End Sub

Public Property Let OpenType(vNewValue) 'E13C84
  'Data Table: 58F128
  loc_E13C7C: global_200 = vNewValue
  loc_E13C80: Exit Sub
End Sub

Public Property Get OpenType() 'E13AD4
  'Data Table: 58F128
  loc_E13AC8: var_88 = global_200
  loc_E13ACB: OpenType = 
End Sub

Public Property Get OpenMode() 'E06100
  'Data Table: 58F128
  loc_E060F9: OpenMode = global_196
End Sub

Public Property Let OpenMode(vNewValue) 'E01A54
  'Data Table: 58F128
  loc_E01A4E: global_196 = vNewValue
  loc_E01A51: Exit Sub
End Sub

Public Property Let TxtKeyBoard(vNewValue) 'E13534
  'Data Table: 58F128
  loc_E1352C: global_216 = vNewValue
  loc_E13530: Exit Sub
End Sub

Public Property Get TxtKeyBoard() 'E134A4
  'Data Table: 58F128
  loc_E13498: var_88 = global_216
  loc_E1349B: TxtKeyBoard = 
End Sub

Public Property Let PSteward(vNewValue) 'E13414
  'Data Table: 58F128
  loc_E1340C: global_212 = vNewValue
  loc_E13410: Exit Sub
End Sub

Public Property Get PSteward() 'E133CC
  'Data Table: 58F128
  loc_E133C0: var_88 = global_212
  loc_E133C3: PSteward = 
End Sub

Public Sub SEARCHBACK_TransferKOT() 'E7CED0
  'Data Table: 58F128
  Dim Me As Recordset15
  loc_E7CE68: On Error Goto loc_E7CECA
  loc_E7CE76: Me.Requery -1
  loc_E7CE92: If (Me.RecordCount > 0) Then
  loc_E7CE9B:   Me.MoveFirst
  loc_E7CEA0: End If
  loc_E7CEBC: Proc_5_0_110649C(&HFF, Me)
  loc_E7CEC4: Call Proc_333_85_16BB8F4(global_92)
  loc_E7CEC9: Exit Sub
  loc_E7CECA: ' Referenced from: E7CE68
  loc_E7CECA: Proc_6_60_E62BC4(0)
  loc_E7CECF: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94F68
  'Data Table: 58F128
  Dim Me As Recordset15
  loc_E94EF6: On Error Goto loc_E94F5F
  loc_E94EFF: Me.MoveFirst
  loc_E94F29: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94F51: Proc_5_0_110649C(&HFF, Me, global_92)
  loc_E94F59: Call Proc_333_85_16BB8F4(0)
  loc_E94F5E: Exit Sub
  loc_E94F5F: ' Referenced from: E94EF6
  loc_E94F5F: Proc_6_60_E62BC4(var_A0)
  loc_E94F64: Exit Sub
End Sub

Public Sub Proc_333_69_127C710
  'Data Table: 58F128
  Dim var_88 As Frame
  loc_127C150: Set var_88 = Me.TopCtrl1
  loc_127C156: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030016()
  loc_127C16F: Set var_9C = Me.Head
  loc_127C175: Call 0.Method_Proc_333_69_127C7100 (CInt(1), var_A0)
  loc_127C17D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127C196: Set var_88 = Me.TopCtrl1
  loc_127C19C: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030017()
  loc_127C1B5: Set var_9C = Me.Head
  loc_127C1BB: Call 0.Method_Proc_333_69_127C7100 (CInt(2), var_A0)
  loc_127C1C3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127C1DC: Set var_88 = Me.TopCtrl1
  loc_127C1E2: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030014()
  loc_127C1FB: Set var_9C = Me.Head
  loc_127C201: Call 0.Method_Proc_333_69_127C7100 (CInt(3), var_A0)
  loc_127C209: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127C222: Set var_88 = Me.TopCtrl1
  loc_127C228: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_6803000F()
  loc_127C241: Set var_9C = Me.Head
  loc_127C247: Call 0.Method_Proc_333_69_127C7100 (CInt(4), var_A0)
  loc_127C24F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127C268: Set var_88 = Me.TopCtrl1
  loc_127C26E: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_6803000D()
  loc_127C287: Set var_9C = Me.Head
  loc_127C28D: Call 0.Method_Proc_333_69_127C7100 (CInt(5), var_A0)
  loc_127C295: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127C2AE: Set var_88 = Me.TopCtrl1
  loc_127C2B4: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030018()
  loc_127C2CD: Set var_9C = Me.Head
  loc_127C2D3: Call 0.Method_Proc_333_69_127C7100 (CInt(6), var_A0)
  loc_127C2DB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127C2F4: Set var_88 = Me.TopCtrl1
  loc_127C2FA: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030016()
  loc_127C30C: Set var_9C = Me.CmChngToNC
  loc_127C312: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127C329: Set var_88 = Me.TopCtrl1
  loc_127C32F: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030016()
  loc_127C341: Set var_9C = Me.CmTransKOT
  loc_127C347: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127C35E: Set var_88 = Me.TopCtrl1
  loc_127C364: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_127C37D: If (CStr() = "Add") Then
  loc_127C388:   Set var_88 = Me.CmChngSteward
  loc_127C38E:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C39E:   Set var_88 = Me.CmNoOfPersons
  loc_127C3A4:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C3BB:   Set var_88 = Me.CmFgrid
  loc_127C3C1:   Call 0.Method_Proc_333_69_127C7100 (CInt(2), var_9C)
  loc_127C3C9:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C3E4:   Set var_88 = Me.CmFgrid
  loc_127C3EA:   Call 0.Method_Proc_333_69_127C7100 (CInt(3), var_9C)
  loc_127C3F2:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C40D:   Set var_88 = Me.CmFgrid
  loc_127C413:   Call 0.Method_Proc_333_69_127C7100 (CInt(4), var_9C)
  loc_127C41B:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C436:   Set var_88 = Me.CmFgrid
  loc_127C43C:   Call 0.Method_Proc_333_69_127C7100 (CInt(5), var_9C)
  loc_127C444:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C45F:   Set var_88 = Me.CmFgrid
  loc_127C465:   Call 0.Method_Proc_333_69_127C7100 (CInt(6), var_9C)
  loc_127C46D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C485:   Me.FrameGrpItem.Enabled = True
  loc_127C490: Else
  loc_127C494:   Set var_88 = Me.TopCtrl1
  loc_127C49A:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_127C4B3:   If (CStr() = "Edit") Then
  loc_127C4BF:     Set var_88 = Me.CmChngSteward
  loc_127C4C5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C4D6:     Set var_88 = Me.CmNoOfPersons
  loc_127C4DC:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C4F3:     Set var_88 = Me.CmFgrid
  loc_127C4F9:     Call 0.Method_Proc_333_69_127C7100 (CInt(2), var_9C)
  loc_127C501:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C51D:     Set var_88 = Me.CmFgrid
  loc_127C523:     Call 0.Method_Proc_333_69_127C7100 (CInt(3), var_9C)
  loc_127C52B:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C546:     Set var_88 = Me.CmFgrid
  loc_127C54C:     Call 0.Method_Proc_333_69_127C7100 (CInt(4), var_9C)
  loc_127C554:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C56F:     Set var_88 = Me.CmFgrid
  loc_127C575:     Call 0.Method_Proc_333_69_127C7100 (CInt(5), var_9C)
  loc_127C57D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C598:     Set var_88 = Me.CmFgrid
  loc_127C59E:     Call 0.Method_Proc_333_69_127C7100 (CInt(6), var_9C)
  loc_127C5A6:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127C5BE:     Me.FrameGrpItem.Enabled = True
  loc_127C5C9:   Else
  loc_127C5CD:     Set var_88 = Me.TopCtrl1
  loc_127C5D3:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_127C5EC:     If (CStr() = "Browse") Then
  loc_127C5F8:       Set var_88 = Me.CmChngSteward
  loc_127C5FE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C60F:       Set var_88 = Me.CmNoOfPersons
  loc_127C615:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C62D:       Set var_88 = Me.CmFgrid
  loc_127C633:       Call 0.Method_Proc_333_69_127C7100 (CInt(2), var_9C)
  loc_127C63B:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C657:       Set var_88 = Me.CmFgrid
  loc_127C65D:       Call 0.Method_Proc_333_69_127C7100 (CInt(3), var_9C)
  loc_127C665:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C681:       Set var_88 = Me.CmFgrid
  loc_127C687:       Call 0.Method_Proc_333_69_127C7100 (CInt(4), var_9C)
  loc_127C68F:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C6AB:       Set var_88 = Me.CmFgrid
  loc_127C6B1:       Call 0.Method_Proc_333_69_127C7100 (CInt(5), var_9C)
  loc_127C6B9:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C6D5:       Set var_88 = Me.CmFgrid
  loc_127C6DB:       Call 0.Method_Proc_333_69_127C7100 (CInt(6), var_9C)
  loc_127C6E3:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127C6FB:       Me.FrameGrpItem.Enabled = False
  loc_127C708:       Call CmdCatType_UnknownEvent_9(0)
  loc_127C70D:     End If
  loc_127C70D:   End If
  loc_127C70D: End If
  loc_127C70D: Exit Sub
End Sub

Public Sub Proc_333_70_EF57C8
  'Data Table: 58F128
  Dim var_BC As Boolean
  loc_EF5701: For var_9C = 1 To CInt(Me.UBound): var_86 = var_9C 'Integer
  loc_EF5707:   var_BC = False
  loc_EF5720:   ).Visible = var_86
  loc_EF5747:   Me..FrameGrpItem.Unload )
  loc_EF5755: Next var_9C 'Integer
  loc_EF576B: For var_D4 = 1 To CInt(Me.UBound): var_86 = var_D4 'Integer
  loc_EF5771:   var_BC = False
  loc_EF578A:   ).Visible = var_86
  loc_EF57B1:   Me..FrameGrpItem.Unload )
  loc_EF57BF: Next var_D4 'Integer
  loc_EF57C4: Exit Sub
End Sub

Public Sub Proc_333_71_EF171C
  'Data Table: 58F128
  Dim var_BC As Boolean
  loc_EF1659: For var_9C = 1 To CInt(Me.UBound): var_86 = var_9C 'Integer
  loc_EF165F:   var_BC = True
  loc_EF1677:   ).Visible = var_86
  loc_EF169E:   Me..FrameGrpItem.Unload )
  loc_EF16AC: Next var_9C 'Integer
  loc_EF16C2: For var_D4 = 1 To CInt(Me.UBound): var_86 = var_D4 'Integer
  loc_EF16C8:   var_BC = True
  loc_EF16E0:   ).Visible = var_86
  loc_EF1707:   Me..FrameGrpItem.Unload )
  loc_EF1715: Next var_D4 'Integer
  loc_EF171A: Exit Sub
End Sub

Public Sub Proc_333_72_1273128
  'Data Table: 58F128
  Dim var_94 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  loc_1272B8E: Me.FGrid.Left = CVar(CDbl(0))
  loc_1272BA9: Me.FGrid.Top = CVar(CDbl(1500))
  loc_1272BC4: Me.FGrid.Height = CVar(CDbl(6300))
  loc_1272BDF: Me.FGrid.Width = CVar(CDbl(7200))
  loc_1272C05: Me.FrameGrpItem.Top = CDbl(Me.FGrid.Top)
  loc_1272C50: Me.FrameGrpItem.Left = ((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width)) + CDbl(1050))
  loc_1272C74: Me.FrameQty.Top = CDbl(7500)
  loc_1272CB3: Me.FrameQty.Left = (CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width))
  loc_1272CD0: global_120 = &H258
  loc_1272CE6: Me.FGrid.Cols = &HE
  loc_1272CEE: var_94 = CVar(CLng(0)) 'Long
  loc_1272CF3: var_E4 = &H13B
  loc_1272CFF: LateIdCallSt
  loc_1272D07: var_94 = 0
  loc_1272D13: var_E4 = CVar(CLng(1)) 'Long
  loc_1272D18: var_104 = "Rest"
  loc_1272D21: LateIdCallSt
  loc_1272D2C: var_94 = CVar(CLng(1)) 'Long
  loc_1272D37: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272D3E: LateIdCallSt
  loc_1272D49: var_94 = CVar(CLng(1)) 'Long
  loc_1272D4E: var_E4 = 0
  loc_1272D5A: LateIdCallSt
  loc_1272D62: var_94 = 0
  loc_1272D6E: var_E4 = CVar(CLng(2)) 'Long
  loc_1272D73: var_104 = "Rest."
  loc_1272D7C: LateIdCallSt
  loc_1272D87: var_94 = CVar(CLng(2)) 'Long
  loc_1272D92: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272D99: LateIdCallSt
  loc_1272DA4: var_94 = CVar(CLng(2)) 'Long
  loc_1272DA9: var_E4 = 0
  loc_1272DB5: LateIdCallSt
  loc_1272DBD: var_94 = 0
  loc_1272DC9: var_E4 = CVar(CLng(3)) 'Long
  loc_1272DCE: var_104 = "Code"
  loc_1272DD7: LateIdCallSt
  loc_1272DE2: var_94 = CVar(CLng(3)) 'Long
  loc_1272DED: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272DF4: LateIdCallSt
  loc_1272DFF: var_94 = CVar(CLng(3)) 'Long
  loc_1272E04: var_E4 = 0
  loc_1272E10: LateIdCallSt
  loc_1272E18: var_94 = 0
  loc_1272E24: var_E4 = CVar(CLng(4)) 'Long
  loc_1272E29: var_104 = "Item Name"
  loc_1272E32: LateIdCallSt
  loc_1272E3D: var_94 = CVar(CLng(4)) 'Long
  loc_1272E48: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272E4F: LateIdCallSt
  loc_1272E5A: var_94 = CVar(CLng(4)) 'Long
  loc_1272E5F: var_E4 = &H960
  loc_1272E6B: LateIdCallSt
  loc_1272E73: var_94 = 0
  loc_1272E7F: var_E4 = CVar(CLng(5)) 'Long
  loc_1272E84: var_104 = "Unit"
  loc_1272E8D: LateIdCallSt
  loc_1272E98: var_94 = CVar(CLng(5)) 'Long
  loc_1272EA3: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272EAA: LateIdCallSt
  loc_1272EB5: var_94 = CVar(CLng(5)) 'Long
  loc_1272EBA: var_E4 = &H320
  loc_1272EC6: LateIdCallSt
  loc_1272ECE: var_94 = 0
  loc_1272EDA: var_E4 = CVar(CLng(6)) 'Long
  loc_1272EDF: var_104 = "Description"
  loc_1272EE8: LateIdCallSt
  loc_1272EF3: var_94 = CVar(CLng(6)) 'Long
  loc_1272EFE: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272F05: LateIdCallSt
  loc_1272F10: var_94 = CVar(CLng(6)) 'Long
  loc_1272F1B: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272F22: LateIdCallSt
  loc_1272F2D: var_94 = CVar(CLng(6)) 'Long
  loc_1272F32: var_E4 = &H44C
  loc_1272F3E: LateIdCallSt
  loc_1272F46: var_94 = 0
  loc_1272F52: var_E4 = CVar(CLng(7)) 'Long
  loc_1272F57: var_104 = "Qty"
  loc_1272F60: LateIdCallSt
  loc_1272F6B: var_94 = CVar(CLng(7)) 'Long
  loc_1272F76: var_E4 = CVar(CInt(7)) 'Integer
  loc_1272F7D: LateIdCallSt
  loc_1272F88: var_94 = CVar(CLng(7)) 'Long
  loc_1272F93: var_E4 = CVar(CInt(7)) 'Integer
  loc_1272F9A: LateIdCallSt
  loc_1272FA5: var_94 = CVar(CLng(7)) 'Long
  loc_1272FAA: var_E4 = &H320
  loc_1272FB6: LateIdCallSt
  loc_1272FBE: var_94 = 0
  loc_1272FCA: var_E4 = CVar(CLng(8)) 'Long
  loc_1272FCF: var_104 = "Rate"
  loc_1272FD8: LateIdCallSt
  loc_1272FE3: var_94 = CVar(CLng(8)) 'Long
  loc_1272FEE: var_E4 = CVar(CInt(7)) 'Integer
  loc_1272FF5: LateIdCallSt
  loc_1273000: var_94 = CVar(CLng(8)) 'Long
  loc_127300B: var_E4 = CVar(CInt(7)) 'Integer
  loc_1273012: LateIdCallSt
  loc_127301D: var_94 = CVar(CLng(8)) 'Long
  loc_1273022: var_E4 = &H320
  loc_127302E: LateIdCallSt
  loc_1273036: var_94 = 0
  loc_1273042: var_E4 = CVar(CLng(9)) 'Long
  loc_1273047: var_104 = "Status"
  loc_1273050: LateIdCallSt
  loc_127305B: var_94 = CVar(CLng(9)) 'Long
  loc_1273066: var_E4 = CVar(CInt(1)) 'Integer
  loc_127306D: LateIdCallSt
  loc_1273078: var_94 = CVar(CLng(9)) 'Long
  loc_1273083: var_E4 = CVar(CInt(1)) 'Integer
  loc_127308A: LateIdCallSt
  loc_1273095: var_94 = CVar(CLng(9)) 'Long
  loc_127309A: var_E4 = &H2BC
  loc_12730A6: LateIdCallSt
  loc_12730B1: var_94 = CVar(CLng(&HA)) 'Long
  loc_12730B6: var_E4 = 0
  loc_12730C2: LateIdCallSt
  loc_12730CD: var_94 = CVar(CLng(&HB)) 'Long
  loc_12730D2: var_E4 = 0
  loc_12730DE: LateIdCallSt
  loc_12730E9: var_94 = CVar(CLng(&HC)) 'Long
  loc_12730EE: var_E4 = 0
  loc_12730FA: LateIdCallSt
  loc_1273105: var_94 = CVar(CLng(&HD)) 'Long
  loc_127310A: var_E4 = 0
  loc_1273116: LateIdCallSt
  loc_1273124: Exit Sub
  loc_1273125: Set var_88 = Nothing
End Sub

Public Sub Proc_333_73_1055F64
  'Data Table: 58F128
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_1055CF7: Me.LblPendingKot.Left = CDbl(8280)
  loc_1055D0E: Me.LblPendingKot.Top = CDbl(6630)
  loc_1055D29: Me.FGrid1.Left = CVar(CDbl(8280))
  loc_1055D44: Me.FGrid1.Top = CVar(CDbl(6960))
  loc_1055D5F: Me.FGrid1.Height = CVar(CDbl(5750))
  loc_1055D7A: Me.FGrid1.Width = CVar(CDbl(5100))
  loc_1055D86: Set var_AC = Me.FGrid1
  loc_1055D9D: global_252 = CStr(CLng(var_AC.BackColor))
  loc_1055DB3: var_AC.Cols = 5
  loc_1055DBB: var_98 = CVar(CLng(0)) 'Long
  loc_1055DC0: var_D0 = &H12C
  loc_1055DCC: LateIdCallSt
  loc_1055DD4: var_98 = 0
  loc_1055DE0: var_D0 = CVar(CLng(1)) 'Long
  loc_1055DE5: var_F0 = "KotNo"
  loc_1055DEE: LateIdCallSt
  loc_1055DF9: var_98 = CVar(CLng(1)) 'Long
  loc_1055E04: var_D0 = CVar(CInt(1)) 'Integer
  loc_1055E0B: LateIdCallSt
  loc_1055E16: var_98 = CVar(CLng(1)) 'Long
  loc_1055E1B: var_D0 = &H28A
  loc_1055E27: LateIdCallSt
  loc_1055E2F: var_98 = 0
  loc_1055E3B: var_D0 = CVar(CLng(2)) 'Long
  loc_1055E40: var_F0 = "Time"
  loc_1055E49: LateIdCallSt
  loc_1055E54: var_98 = CVar(CLng(2)) 'Long
  loc_1055E5F: var_D0 = CVar(CInt(1)) 'Integer
  loc_1055E66: LateIdCallSt
  loc_1055E71: var_98 = CVar(CLng(2)) 'Long
  loc_1055E76: var_D0 = &H258
  loc_1055E82: LateIdCallSt
  loc_1055E8A: var_98 = 0
  loc_1055E96: var_D0 = CVar(CLng(3)) 'Long
  loc_1055E9B: var_F0 = "Item Name"
  loc_1055EA4: LateIdCallSt
  loc_1055EAF: var_98 = CVar(CLng(3)) 'Long
  loc_1055EBA: var_D0 = CVar(CInt(1)) 'Integer
  loc_1055EC1: LateIdCallSt
  loc_1055ECC: var_98 = CVar(CLng(3)) 'Long
  loc_1055ED1: var_D0 = &H9C4
  loc_1055EDD: LateIdCallSt
  loc_1055EE5: var_98 = 0
  loc_1055EF1: var_D0 = CVar(CLng(4)) 'Long
  loc_1055EF6: var_F0 = "Qty"
  loc_1055EFF: LateIdCallSt
  loc_1055F0A: var_98 = CVar(CLng(4)) 'Long
  loc_1055F15: var_D0 = CVar(CInt(7)) 'Integer
  loc_1055F1C: LateIdCallSt
  loc_1055F27: var_98 = CVar(CLng(4)) 'Long
  loc_1055F32: var_D0 = CVar(CInt(7)) 'Integer
  loc_1055F39: LateIdCallSt
  loc_1055F44: var_98 = CVar(CLng(4)) 'Long
  loc_1055F49: var_D0 = &H2BC
  loc_1055F55: LateIdCallSt
  loc_1055F5F: Set var_AC = Nothing 
  loc_1055F63: Exit Sub
End Sub

Public Sub Proc_333_74_DFBE6C
  'Data Table: 58F128
  loc_DFBE68: Exit Sub
End Sub

Public Sub Proc_333_75_18FF0A4
  'Data Table: 58F128
  Dim var_E8 As Variant
  Dim var_F0 As String
  Dim var_124 As Variant
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_158 As String
  Dim var_15C As String
  Dim unk_58F14B As Connection15
  Dim var_160 As Variant
  Dim var_D0 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_114 As Variant
  Dim var_B8 As Recordset15
  Dim var_96 As Integer
  Dim var_17C As String
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_1E4 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_280 As Variant
  Dim var_2A4 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_3E4 As Variant
  Dim var_E4 As Double
  Dim var_2B4 As Variant
  Dim var_2C4 As Variant
  Dim var_3C4 As Variant
  Dim var_294 As Variant
  loc_18FC66C: On Error Goto loc_18FF096
  loc_18FC672: MemVar_1F923C0 = "N"
  loc_18FC679: MemVar_1F923C4 = "N"
  loc_18FC680: MemVar_1F923C8 = "K"
  loc_18FC69F: If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_18FC6A7:   Proc_333_75_18FF0A4 = 0
  loc_18FC6AD: End If
  loc_18FC6B4: var_F0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_18FC6F9: var_8C = CStr(CVar(var_F0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_18FC718: var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_18FC738: var_104 = Me.Fields.Item("SearchCode")
  loc_18FC756: var_90 = CStr(var_124 & var_104.Value & "'")
  loc_18FC773: If (var_8C = vbNullString) Then
  loc_18FC77B:   Proc_333_75_18FF0A4 = 0
  loc_18FC781: End If
  loc_18FC789: If (var_90 = vbNullString) Then
  loc_18FC791:   Proc_333_75_18FF0A4 = 0
  loc_18FC797: End If
  loc_18FC7B5: Set var_E8 = Me.Txt
  loc_18FC7BB: Call 0.Method_Proc_333_75_18FF0A40 (CInt(4), var_104, var_F0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_18FC7C3: var_114 = var_104.Text
  loc_18FC7CC: var_158 = -1 & var_F0
  loc_18FC7DC: unk_58F14B.Execute var_158 & "' AND CONTRADOCID IS NULL", var_160, 
  loc_18FC805: var_144 = 0
  loc_18FC835: unk_58F14B.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_114, -1
  loc_18FC845: var_144 = var_104.Item(var_104)
  loc_18FC84D: var_160 = var_160.Value
  loc_18FC85A: var_D4 = Proc_6_38_E68A98(var_124)
  loc_18FC888: var_F0 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_18FC898: unk_58F14B.Execute var_F0 & "MK'", var_114, -1
  loc_18FC8A3: Set var_C0 = var_E8.Fields
  loc_18FC8C7: If (var_160.RecordCount = 1) Then
  loc_18FC8CD:   var_CC = "New Order"
  loc_18FC8D3: Else
  loc_18FC8DA:   Set var_E8 = Me.LblState
  loc_18FC8E8:   var_CC = var_E8.Caption
  loc_18FC8EE: End If
  loc_18FC904: unk_58F14B.Execute var_8C, var_114, -1
  loc_18FC90F: Set var_B8 = var_E8
  loc_18FC918: ' Referenced from: 18FF060
  loc_18FC927: If Not(var_C0.EOF) Then
  loc_18FC940:   unk_58F14B.Execute "SELECT KOTPrinting FROM Enviro", var_114, -1
  loc_18FC94B:   Set var_D0 = var_E8
  loc_18FC95B:   var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_18FC973:   var_E8 = Me.Fields
  loc_18FC983:   var_114 = var_E8.Item("SearchCode").Value
  loc_18FC9C4:   unk_58F14B.Execute CStr(var_124 & var_114 & "' and K.VoidYN<>'Y'"), var_114, -1
  loc_18FC9CF:   Set var_BC = var_E8
  loc_18FC9EC:   If (var_BC.RecordCount > 0) Then
  loc_18FC9FE:     var_E8 = var_C0.Fields
  loc_18FCA1D:     var_174 = Trim(CVar(var_E8.Item("PrintType"))) 'Variant
  loc_18FCA32:     If (var_174 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_18FCA42:       Call Proc_333_82_EF9974(New, var_E8, var_E8, var_E8)
  loc_18FCA4A:       Set var_D8 = var_E8
  loc_18FCA50:       Me.Recordset15.MoveFirst
  loc_18FCA55:       ' Referenced from: 18FD6CF
  loc_18FCA64:       If Not(var_B8.EOF) Then
  loc_18FCA7D:         If (0 = 0) Then
  loc_18FCA9E:           Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString, 1)
  loc_18FCADA:           var_C4 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_18FCB11:           var_124 = CVar(Me.LblRest.Caption) 'String
  loc_18FCB14:           var_134 = (Space(1) + var_124)
  loc_18FCB29:           Call Proc_333_83_F13A38(var_D8, vbNullString, CStr(var_124 & Space(1)), vbNullString)
  loc_18FCB5B:           Call Proc_333_83_F13A38(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_18FCB69:           var_96 = &H12
  loc_18FCB8A:           Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString, var_96)
  loc_18FCBB6:           Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FCBD3:           var_E8 = var_B8.Fields
  loc_18FCBEA:           Proc_6_39_E7C810(var_124, CVar(var_E8.Item("VNo")), var_96)
  loc_18FCC27:           Call Proc_333_83_F13A38(var_D8, vbNullString, " V No.     : " & Proc_6_45_EAD428(CStr(var_124), &HA, var_E8))
  loc_18FCC54:           var_E8 = var_B8.Fields
  loc_18FCCF7:           Call Proc_333_83_F13A38(var_D8, vbNullString, " Date.     : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")), var_E8), 8))
  loc_18FCD3E:           var_104 = var_B8.Fields.Item("Remarks")
  loc_18FCD89:           Call Proc_333_83_F13A38(var_D8, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104), vbNullString), &H1E))
  loc_18FCDBB:           Set var_E8 = Me.Label1
  loc_18FCDC1:           Call 0.Method_Proc_333_75_18FF0A40 (2, var_104)
  loc_18FCE4A:           var_190 = Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_18FCE50:           var_17C = vbNullString
  loc_18FCE5F:           var_1B4 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_18FCE68:           var_1C4 = (var_1B4 + ": ")
  loc_18FCE72:           var_234 = (var_1C4 + CVar(var_190))
  loc_18FCE87:           Call Proc_333_83_F13A38(var_D8, vbNullString, CStr(var_234))
  loc_18FCED9:           Call Proc_333_83_F13A38(var_D8, vbNullString, var_C4, vbNullString)
  loc_18FCEE5:         End If
  loc_18FCF0B:         var_134 = (var_17C + CVar(Proc_6_45_EAD428("ITEM NAME", &H12, Space(1))))
  loc_18FCF1F:         var_1B4 = (Trim(CVar(var_104)) + Space(1))
  loc_18FCF39:         var_1D4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 3, var_1B4)))
  loc_18FCF45:         var_1E4 = Space(1)
  loc_18FCF4D:         var_204 = (CVar(var_B8.Fields.Item("TableNo")) + var_1E4)
  loc_18FCF67:         var_224 = ("000" + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_18FCF7B:         var_248 = (CVar(var_190) + Space(1))
  loc_18FCF95:         var_26C = (var_248 + CVar(Proc_6_52_EAD4F4("Amount", 7)))
  loc_18FCFCC:         var_158 = vbNullString
  loc_18FCFE1:         Call Proc_333_83_F13A38(var_D8, vbNullString, CStr(var_26C))
  loc_18FCFF0:         var_158 = vbNullString
  loc_18FD005:         Call Proc_333_83_F13A38(var_D8, vbNullString, var_C4)
  loc_18FD017:         var_96 = (var_96 + 4)
  loc_18FD01D:         var_BC.MoveFirst
  loc_18FD022:         ' Referenced from: 18FD33C
  loc_18FD031:         If Not(var_BC.EOF) Then
  loc_18FD056:           var_124 = var_BC.Fields.Item("ItemName").Value
  loc_18FD081:           Proc_6_39_E7C810(var_1E4, CVar(var_BC.Fields.Item("qty")), var_96)
  loc_18FD0A9:           var_280 = "Rate"
  loc_18FD0CC:           Proc_6_39_E7C810(var_294, CVar(var_BC.Fields.Item(var_280)), 1, 1)
  loc_18FD0DB:           var_2A4 = "0.00"
  loc_18FD117:           Proc_6_39_E7C810(var_33C, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_18FD142:           Proc_6_39_E7C810(var_374, CVar(var_BC.Fields.Item("Rate")), var_158)
  loc_18FD19A:           var_154 = (1 + CVar(Proc_6_45_EAD428(CStr(var_124), &H12, Space(1), 1)))
  loc_18FD1AE:           var_1C4 = (Space(1) + Space(1))
  loc_18FD1C7:           var_234 = (var_158 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0")), 3, CVar(Proc_6_52_EAD4F4("Qty", 3, Space(1))))))
  loc_18FD1DB:           var_25C = (Space(1) + Space(1))
  loc_18FD1F4:           var_2E4 = (CVar(Proc_6_52_EAD4F4("Amount", 7)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_294, var_2A4)), 6)))
  loc_18FD208:           var_304 = (var_2E4 + Space(1))
  loc_18FD221:           var_3E4 = (var_304 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_33C * var_374), "0.00")), 7)))
  loc_18FD287:           var_1F4 = CVar(var_E4) 'Double
  loc_18FD2B1:           Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_18FD2DF:           Proc_6_39_E7C810(Space(1), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_18FD2EB:           var_1C4 = (var_124 + (var_1F4 * Space(1)))
  loc_18FD2F0:           var_E4 = CSng(CVar(Proc_6_52_EAD4F4("Qty", 3, (var_1F4 * Space(1)))))
  loc_18FD30A:           var_158 = vbNullString
  loc_18FD31F:           Call Proc_333_83_F13A38(var_D8, vbNullString, CStr(var_3E4))
  loc_18FD331:           var_96 = (var_96 + 1)
  loc_18FD337:           var_BC.MoveNext
  loc_18FD33C:           GoTo loc_18FD022
  loc_18FD33F:         End If
  loc_18FD357:         Call Proc_333_83_F13A38(var_D8, vbNullString, var_C4, vbNullString)
  loc_18FD381:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD3BC:         var_144 = "0.00"
  loc_18FD3C1:         var_154 = var_144
  loc_18FD40E:         var_134 = (Space(&H16) + CVar(Proc_6_45_EAD428("TOTAL  :", 8, var_96)))
  loc_18FD418:         var_204 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, var_154))))), 8, 1)))
  loc_18FD42D:         Call Proc_333_83_F13A38(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_18FD478:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD489:         var_100 = "WaiterName"
  loc_18FD4C8:         var_17C = vbNullString
  loc_18FD4E8:         Call Proc_333_83_F13A38(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_100)), 1), &H14))
  loc_18FD522:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD557:         Call Proc_333_83_F13A38(var_D8, vbNullString, " ** " & MemVar_1F9221C & " **", vbNullString)
  loc_18FD56A:         var_B8.MoveNext
  loc_18FD58D:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD5B9:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD5E5:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD611:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD63D:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD669:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD695:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD6C1:         Call Proc_333_83_F13A38(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FD6CF:         GoTo loc_18FCA55
  loc_18FD6D2:       End If
  loc_18FD6D5:       var_DC = "WinKOTPrint"
  loc_18FD6FC:       Set var_E8 = var_D8 
  loc_18FD703:       CreateFieldDefFile(var_E8, MemVar_1F920B4 & "\" & var_DC & ".ttx", &HFF)
  loc_18FD735:       var_158 = MemVar_1F920B4 & "\" & var_DC
  loc_18FD73C:       var_15C = var_158 & ".RPT"
  loc_18FD745:       Call 0.Method_arg_1C (var_15C, var_100, var_E8)
  loc_18FD750:       MemVar_1F921E4 = var_E8
  loc_18FD779:       Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_144, var_1F4)
  loc_18FD781:       Call 0.Method_arg_2C (var_17C, var_158)
  loc_18FD791:       If (var_D4 <> vbNullString) Then
  loc_18FD7B2:         If CBool(Ucase(var_D4) <> "PRN") Then
  loc_18FD7B8:           Call Proc_333_80_F10558(var_D4)
  loc_18FD7BD:         End If
  loc_18FD7BD:       End If
  loc_18FD7DA:       Call 0.Method_Me8 (False, 1, var_1F4)
  loc_18FD7E4:       Set var_D8 = Nothing
  loc_18FD7EA:     Else
  loc_18FD7F5:       If Not (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_18FD803:         If (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_18FD806:         End If
  loc_18FD808:         Close 1
  loc_18FD811:         Open "C:\reptmp\NCBILL_C.TXT" For Output As 1 Len = &HFF
  loc_18FD818:         var_B8.MoveFirst
  loc_18FD81D:         ' Referenced from:   18FE2BB
  loc_18FD82C:         If Not(var_B8.EOF) Then
  loc_18FD831:           var_96 = 0
  loc_18FD845:           If (var_96 = 0) Then
  loc_18FD84A:             Print 1
  loc_18FD87E:             var_C4 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_18FD8C5:             Call Proc_333_94_10AC2D0(Proc_6_45_EAD428(Me.LblRest.Caption, &H14, 1, var_96), "D", &H28, var_17C)
  loc_18FD8CF:             Print 1, var_17C
  loc_18FD90D:             Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("* NC Bill *", &H14, var_280), "D", &H28)
  loc_18FD917:             Print 1, var_15C
  loc_18FD92F:             Print 1
  loc_18FD937:             Print 1
  loc_18FD970:             Proc_6_39_E7C810(var_154, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_18FD992:             var_124 = (Chr(&HF) + "V No.     :   ")
  loc_18FD99C:             var_1C4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(CStr(var_154), &HA, var_15C)))
  loc_18FD9A2:             Print 1, CVar(CStr(Format(var_E4, var_154)))
  loc_18FDA54:             var_124 = (Chr(&HF) + "Date.     :   ")
  loc_18FDA5E:             var_1B4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC)))
  loc_18FDA67:             var_1C4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))), &HA, Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4))) + " ")
  loc_18FDA71:             var_204 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_18FDA77:             Print 1, "0"
  loc_18FDACC:             var_104 = var_B8.Fields.Item("Remarks")
  loc_18FDB09:             var_124 = (Chr(&HF) + "Remarks :   ")
  loc_18FDB13:             var_1B4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32)))
  loc_18FDB1A:             var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32))) + Chr(&H12))
  loc_18FDB20:             Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_18FDB59:             Set var_E8 = Me.Label1
  loc_18FDB5F:             Call 0.Method_Proc_333_75_18FF0A40 (2, var_104)
  loc_18FDBF4:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_18FDBFD:             var_1C4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))) + ":   ")
  loc_18FDC04:             var_224 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_18FDC07:             var_234 = (Chr(&H12) + var_224)
  loc_18FDC0D:             Print 1, Space(1)
  loc_18FDC58:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FDC5E:             Print 1, CVar(var_104)
  loc_18FDC6B:           End If
  loc_18FDC91:           var_134 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_18FDCAB:           var_1B4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_104)))))
  loc_18FDCB7:           var_1C4 = Space(3)
  loc_18FDCBF:           var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_104))))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))) + var_1C4)
  loc_18FDCD9:           var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_18FDCED:           var_224 = ("000" + Space(3))
  loc_18FDD07:           var_248 = (var_224 + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_18FDD4D:           var_124 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_18FDD53:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_18FDD76:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FDD7C:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_18FDD8F:           var_96 = (var_96 + 4)
  loc_18FDD95:           var_BC.MoveFirst
  loc_18FDD9A:           ' Referenced from:   18FE0A1
  loc_18FDDA9:           If Not(var_BC.EOF) Then
  loc_18FDDF9:             Proc_6_39_E7C810(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_18FDE44:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Amount", 7)), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_18FDE8F:             Proc_6_39_E7C810(var_304, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_18FDEBA:             Proc_6_39_E7C810(var_33C, CVar(var_BC.Fields.Item("Rate")), 1)
  loc_18FDF0A:             var_124 = Space(3)
  loc_18FDF12:             var_154 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + var_124)
  loc_18FDF28:             var_204 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("ItemName"))))))) 'String
  loc_18FDF2B:             var_214 = (1 + var_204)
  loc_18FDF3F:             var_234 = (Space(3) + Space(3))
  loc_18FDF55:             var_2B4 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", &HA)))) 'String
  loc_18FDF58:             var_2C4 = (&H12 + var_2B4)
  loc_18FDF6C:             var_2E4 = (Format(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_18FDF85:             var_3C4 = (var_2E4 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_304 * var_33C), "0.00")), &HA)))
  loc_18FE011:             Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_18FE03F:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_18FE04B:             var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))))
  loc_18FE050:             var_E4 = CSng(var_1C4)
  loc_18FE07D:             var_124 = (Chr(&HF) + CVar(CStr(Format((var_33C * (var_304 * var_33C)), "0.00"))))
  loc_18FE083:             Print 1, var_124
  loc_18FE096:             var_96 = (var_96 + 1)
  loc_18FE09C:             var_BC.MoveNext
  loc_18FE0A1:             GoTo loc_18FDD9A
  loc_18FE0A4:           End If
  loc_18FE0BA:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FE0C0:           Print 1, var_124
  loc_18FE0D2:           Print 1, vbNullString
  loc_18FE158:           var_134 = (Chr(&HF) + Space(&H25))
  loc_18FE162:           var_1B4 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_45_EAD428("TOTAL  :", 8)))
  loc_18FE16C:           var_224 = ((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_18FE172:           Print 1, Space(3)
  loc_18FE1A3:           Print 1, vbNullString
  loc_18FE1FD:           var_124 = (Chr(&HF) + "Waiter Name  :   ")
  loc_18FE207:           var_1B4 = (Space(&H25) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_18FE20D:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))))
  loc_18FE22E:           Print 1
  loc_18FE249:           var_124 = (Chr(&HF) + "** ")
  loc_18FE253:           var_134 = (Space(&H25) + CVar(MemVar_1F9221C))
  loc_18FE25C:           var_154 = (CVar(var_B8.Fields.Item("WaiterName")) + " **")
  loc_18FE262:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14))
  loc_18FE276:           var_B8.MoveNext
  loc_18FE27D:           Print 1
  loc_18FE285:           Print 1
  loc_18FE28D:           Print 1
  loc_18FE295:           Print 1
  loc_18FE29D:           Print 1
  loc_18FE2A5:           Print 1
  loc_18FE2AD:           Print 1
  loc_18FE2B5:           Print 1
  loc_18FE2BB:           GoTo loc_18FD81D
  loc_18FE2BE:         End If
  loc_18FE2C0:         Close 1
  loc_18FE2CA:         If (var_D4 <> vbNullString) Then
  loc_18FE2D4:           Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FE2E4:           Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & var_D4
  loc_18FE2F0:         Else
  loc_18FE2F7:           Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FE307:           Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & MemVar_1F923B4
  loc_18FE310:         End If
  loc_18FE312:         Close 1
  loc_18FE31C:         If (MemVar_1F923B8 = "Y") Then
  loc_18FE338:           var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.PIF", 0)) 'Variant
  loc_18FE342:         Else
  loc_18FE35B:           var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.BAT", 0)) 'Variant
  loc_18FE362:         End If
  loc_18FE365:       Else
  loc_18FE370:         If (var_174 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_18FE375:           Close 1
  loc_18FE37E:           Open "C:\reptmp\NCBILL_C.TXT" For Output As 1 Len = &HFF
  loc_18FE385:           var_B8.MoveFirst
  loc_18FE38A:           ' Referenced from:     18FEF49
  loc_18FE399:           If Not(var_B8.EOF) Then
  loc_18FE3A9:             var_94 = "* NC BILL *"
  loc_18FE3DA:             var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_18FE3E9:             If (0 = 0) Then
  loc_18FE3EE:               Print 1
  loc_18FE41D:               var_1B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_18FE460:               var_26C = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_18FE48A:               var_1E4 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))))
  loc_18FE491:               var_224 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_18FE498:               var_2C4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_18FE49F:               var_2E4 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_18FE4A5:               Print 1, var_2E4
  loc_18FE4F3:               var_154 = (42 - Len(Trim(var_94)))
  loc_18FE526:               var_224 = (42 - Len(Trim(var_94)))
  loc_18FE550:               var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_18FE55A:               var_1E4 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))) + CVar(var_94))
  loc_18FE561:               var_25C = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_18FE568:               var_294 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_18FE56E:               Print 1, ("0.00" / 2)
  loc_18FE58D:               var_96 = &H12
  loc_18FE592:               Print 1
  loc_18FE59A:               Print 1
  loc_18FE5D3:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")), var_96, 1)
  loc_18FE602:               var_124 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_18FE60C:               var_1C4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)))
  loc_18FE613:               var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_18FE619:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_18FE6DC:               var_124 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_18FE6E6:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_96), &HC)))
  loc_18FE6EF:               var_1C4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + " ")
  loc_18FE6F9:               var_204 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_18FE700:               var_224 = (Trim(var_94) + Chr(&H12))
  loc_18FE706:               Print 1, Space(3)
  loc_18FE75F:               var_104 = var_B8.Fields.Item("Remarks")
  loc_18FE79C:               var_124 = (Chr(&HF) + "Remarks :     ")
  loc_18FE7A6:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H20)))
  loc_18FE7AD:               var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + Chr(&H12))
  loc_18FE7B3:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_18FE7EC:               Set var_E8 = Me.Label1
  loc_18FE7F2:               Call 0.Method_Proc_333_75_18FF0A40 (2, var_104)
  loc_18FE894:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_18FE89D:               var_1C4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + ":     ")
  loc_18FE8A4:               var_224 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_18FE8A7:               var_234 = (Chr(&H12) + var_224)
  loc_18FE8AE:               var_25C = ((Space(3) / 2) + Chr(&H12))
  loc_18FE8B4:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_18FE910:               var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FE917:               var_154 = (CVar(var_104) + Chr(&H12))
  loc_18FE91D:               Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))
  loc_18FE92E:             End If
  loc_18FE954:             var_134 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_18FE96E:             var_1B4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))
  loc_18FE97A:             var_1C4 = Space(3)
  loc_18FE982:             var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + var_1C4)
  loc_18FE99C:             var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_18FE9E5:             var_124 = (Chr(&HF) + CVar(CStr("000")))
  loc_18FE9EC:             var_154 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_18FE9F2:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_18FEA26:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FEA2D:             var_154 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_18FEA33:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_18FEA4A:             var_96 = (var_96 + 4)
  loc_18FEA50:             var_BC.MoveFirst
  loc_18FEA55:             ' Referenced from:     18FECA7
  loc_18FEA64:             If Not(var_BC.EOF) Then
  loc_18FEAB4:               Proc_6_39_E7C810(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_18FEAFF:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_18FEB41:               var_124 = Space(3)
  loc_18FEB49:               var_154 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + var_124)
  loc_18FEB62:               var_214 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))))
  loc_18FEB76:               var_234 = (Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000") + Space(3))
  loc_18FEB8F:               var_2C4 = (var_96 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_18FEBFF:               Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_18FEC2D:               Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_18FEC39:               var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))))
  loc_18FEC3E:               var_E4 = CSng(var_1C4)
  loc_18FEC78:               var_124 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_18FEC7F:               var_154 = (var_124 + Chr(&H12))
  loc_18FEC85:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_18FEC9C:               var_96 = (var_96 + 1)
  loc_18FECA2:               var_BC.MoveNext
  loc_18FECA7:               GoTo loc_18FEA55
  loc_18FECAA:             End If
  loc_18FECCD:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FECD4:             var_154 = (var_124 + Chr(&H12))
  loc_18FECDA:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_18FED61:             var_134 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)))
  loc_18FED6B:             var_204 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_18FED71:             Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(Format(var_E4, "0.00"))), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))))
  loc_18FED9E:             Print 1, vbNullString
  loc_18FEE05:             var_124 = (Chr(&HF) + "Waiter Name  :     ")
  loc_18FEE0F:             var_1B4 = (CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_18FEE16:             var_1D4 = (Format(var_E4, "0.00") + Chr(&H12))
  loc_18FEE1C:             Print 1, Trim(CVar(CStr(Format(var_E4, "0.00"))))
  loc_18FEE64:             var_1B4 = Chr(&H12)
  loc_18FEE71:             var_124 = (Chr(&HF) + "***  ")
  loc_18FEE84:             var_1C4 = ("  ***" + var_1B4)
  loc_18FEE8E:             Print 1, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_CC) & Chr(&H12)
  loc_18FEEA7:             Print 1
  loc_18FEEC2:             var_124 = (Chr(&HF) + "** ")
  loc_18FEECC:             var_134 = (CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) + CVar(MemVar_1F9221C))
  loc_18FEED5:             var_154 = (Trim(var_CC) + " **")
  loc_18FEEDB:             Print 1, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_CC)
  loc_18FEEEF:             var_B8.MoveNext
  loc_18FEEF6:             Print 1
  loc_18FEEFE:             Print 1
  loc_18FEF06:             Print 1
  loc_18FEF0E:             Print 1
  loc_18FEF34:             var_134 = (Chr(&H1B) + Chr(&H6D))
  loc_18FEF3A:             Print 1, Trim(var_CC)
  loc_18FEF49:             GoTo loc_18FE38A
  loc_18FEF4C:           End If
  loc_18FEF4E:           Close 1
  loc_18FEF58:           If (var_D4 <> vbNullString) Then
  loc_18FEF62:             Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FEF72:             Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & var_D4
  loc_18FEF7E:           Else
  loc_18FEF85:             Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FEF95:             Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & MemVar_1F923B4
  loc_18FEF9E:           End If
  loc_18FEFA0:           Close 1
  loc_18FEFAA:           If (MemVar_1F923B8 = "Y") Then
  loc_18FEFC6:             var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.PIF", 0)) 'Variant
  loc_18FEFD0:           Else
  loc_18FEFE9:             var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.BAT", 0)) 'Variant
  loc_18FEFF0:           End If
  loc_18FEFF0:         End If
  loc_18FEFF0:       End If
  loc_18FEFF0:     End If
  loc_18FEFF3:   Else
  loc_18FF03D:     MsgBox("Please Check Printer Setting of " & var_C0.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_CC), var_1B4, Chr(&H12))
  loc_18FF058:   End If
  loc_18FF05B:   var_C0.MoveNext
  loc_18FF060:   GoTo loc_18FC918
  loc_18FF063: End If
  loc_18FF068: Set var_B8 = Nothing
  loc_18FF070: Set var_BC = Nothing
  loc_18FF078: Set var_C0 = Nothing
  loc_18FF080: Set var_D0 = Nothing
  loc_18FF088: Set var_D8 = Nothing
  loc_18FF090: Proc_333_75_18FF0A4 = &HFF
  loc_18FF096: ' Referenced from: 18FC66C
  loc_18FF096: Proc_6_60_E62BC4(var_96)
  loc_18FF09B: Proc_333_75_18FF0A4 = var_E4
End Sub

Public Sub Proc_333_76_1284680
  'Data Table: 58F128
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_120 As Variant
  Dim var_144 As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  loc_12840CC: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(0)
  loc_12840D6: False.Visible = 
  loc_12840EB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(0)
  loc_12840F5: False.Visible = 
  loc_128410D: For var_F4 = 1 To CInt(Me.UBound): var_9E = var_F4 'Integer
  loc_1284122:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9E)
  loc_128412C:   False.Visible = 1
  loc_128413D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9E)
  loc_1284153:   Me.Global.Unload 
  loc_1284161: Next var_F4 'Integer
  loc_1284177: For var_FC = 1 To CInt(Me.UBound): var_9E = var_FC 'Integer
  loc_128418C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9E)
  loc_1284196:   False.Visible = 1
  loc_12841A7:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9E)
  loc_12841BD:   Me.Global.Unload 
  loc_12841CB: Next var_FC 'Integer
  loc_12841DE: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_12841E5: Proc_6_39_E7C810(var_110)
  loc_12841FC: If (var_110 > 0) Then
  loc_1284205:   var_96 = (arg_18 + 1)
  loc_128420A:   var_98 = 0
  loc_128420F:   var_9A = 0
  loc_1284225:   var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_128422C:   Proc_6_39_E7C810(var_110, var_F0, var_9C, 1)
  loc_128423C:   For var_124 = var_98 To CInt(var_110): var_9A = var_124 'Integer
  loc_128424C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1284262:     Me.Global.Load var_98
  loc_1284281:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_128428A:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_1284291:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(0)
  loc_12842A7:       var_D0 = CVar((var_9C - 1)) 'Integer
  loc_12842AE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(False)
  loc_12842BE:       var_144 = (var_F0 + var_96.top.height)
  loc_12842CD:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_12842D7:       var_144.top = 
  loc_12842F0:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_12842F7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(0)
  loc_1284312:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_128431C:       .left.left = 
  loc_1284337:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1284341:       True.Visible = 
  loc_128437E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1284388:       CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")))).CAPTION = 
  loc_12843CE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_12843D8:       CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")))).Tag = 
  loc_12843F3:       If (var_9C = (arg_18 * arg_10)) Then
  loc_1284408:         var_94 = CVar(Me.Recordset15.AbsolutePosition) 'Variant
  loc_128440C:         Exit For
  loc_128440F:       End If
  loc_1284412:     Else
  loc_128441D:       If ((var_9C Mod var_96) = var_98) Then
  loc_1284427:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_128442E:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(CVar(Me.Recordset15.AbsolutePosition))
  loc_1284438:         var_120 = .left
  loc_1284445:         var_D0 = CVar((var_9C - arg_18)) 'Integer
  loc_128444C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(False)
  loc_128445C:         var_144 = ( + var_120.width)
  loc_128446B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1284475:         var_144.left = 
  loc_128448F:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_1284496:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(CVar(Me.Recordset15.AbsolutePosition))
  loc_12844B1:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_12844BB:         .top.top = 
  loc_12844D6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_12844E0:         True.Visible = 
  loc_128451D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1284527:         CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")))).CAPTION = 
  loc_128455F:         var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")))) 'String
  loc_128456D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1284577:         var_110.Tag = 
  loc_128458D:         var_9A = (var_9A + 1)
  loc_1284597:         var_98 = (var_96 - var_9A)
  loc_128459A:       End If
  loc_128459A:     End If
  loc_128459D:     Me.MoveNext
  loc_12845B6:     If (Me.AbsolutePosition = -3) Then
  loc_12845B9:       GoTo loc_12845C4
  loc_12845BC:     End If
  loc_12845BF:   Next var_124 'Integer
  loc_12845C4:   ' Referenced from: 12845B9
  loc_12845C4:   ' Referenced from: 128440C
  loc_12845C4: End If
  loc_12845E4: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_12845EB: Proc_6_39_E7C810(var_110)
  loc_128460A: Call Proc_333_78_E60CB8(Me.SSPPrevious, CInt(Me.Recordset15.AbsolutePosition), CInt(var_110))
  loc_1284646: Proc_6_39_E7C810(var_110, CVar(Me.Recordset15.RecordCount))
  loc_1284665: Call Proc_333_77_E55390(Me.SSPNext, CInt(Me.AbsolutePosition), CInt(var_110))
  loc_128467A: Proc_333_76_1284680 = var_120
End Sub

Public Sub Proc_333_77_E55390
  'Data Table: 58F128
  loc_E5536C: If ((CLng(arg_10) = -3) Or ((arg_14 Mod CInt(&H10)) = 0)) Then
  loc_E55377:   Me.Enabled = False
  loc_E5537E: Else
  loc_E55385:   Me.Enabled = True
  loc_E55389: End If
  loc_E55389: Proc_333_77_E55390 = 
End Sub

Public Sub Proc_333_78_E60CB8
  'Data Table: 58F128
  loc_E60C95: If (((arg_10 = CInt(&H10)) Or (CLng(arg_10) = -1)) Or ((CLng(arg_10) = -3) And (arg_14 < CInt(&H10)))) Then
  loc_E60CA0:   Me.Enabled = False
  loc_E60CA7: Else
  loc_E60CAE:   Me.Enabled = True
  loc_E60CB2: End If
  loc_E60CB2: Proc_333_78_E60CB8 = 
End Sub

Public Sub Proc_333_79_EA4EB0
  'Data Table: 58F128
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_EA4E43: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EA4E4B: var_C8 = CVar(CLng(0)) 'Long
  loc_EA4E7E: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_EA4E81:   Exit Sub
  loc_EA4E82: End If
  loc_EA4E92: Me.FrameQty.ZOrder 0
  loc_EA4EA7: Me.TxtQty.Text = vbNullString
  loc_EA4EAF: Exit Sub
End Sub

Public Sub Proc_333_80_F10558(arg_C) 'F10558
  'Data Table: 58F128
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F10487: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F104B0: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F104B9: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F104E9: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F104FE: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F10518: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F1052D: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F1054F: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F10554: Exit Sub
End Sub

Public Sub Proc_333_81_1BB65B4
  'Data Table: 58F128
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_140 As String
  Dim unk_58F14B As Connection15
  Dim var_FC As Recordset15
  Dim var_164 As Variant
  Dim var_11C As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_160 As Variant
  Dim var_17C As Variant
  Dim var_180 As String
  Dim var_184 As String
  Dim var_D4 As Recordset15
  Dim var_188 As Variant
  Dim var_B8 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_198 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_278 As Variant
  Dim var_150 As Variant
  Dim var_300 As String
  Dim var_304 As String
  Dim var_1DC As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_220 As Variant
  Dim var_250 As Variant
  Dim var_348 As Variant
  Dim var_358 As Variant
  Dim var_E4 As Recordset15
  Dim var_1E0 As Field20
  Dim var_2C8 As Variant
  Dim var_2D8 As Variant
  Dim var_168 As Long
  Dim var_2FC As String
  Dim var_240 As Variant
  Dim var_2F8 As Variant
  Dim var_334 As Variant
  Dim var_2E8 As Variant
  loc_1BB10DC: On Error Goto loc_1BB65A6
  loc_1BB10FC: Proc_6_17_EAA2B0(var_11C, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1BB1112: unk_58F14B.Execute CStr(var_160 & var_11C), -1, var_164
  loc_1BB111D: Set var_FC = var_164
  loc_1BB1143: If (var_FC.RecordCount > 0) Then
  loc_1BB117D:   var_EC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KOTHeader1"))))))
  loc_1BB11C3:   var_F0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KOTHeader2"))))))
  loc_1BB1209:   var_F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KOTHeader3"))))))
  loc_1BB124F:   var_F8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KOTHeader4"))))))
  loc_1BB125E: End If
  loc_1BB1261: MemVar_1F923C0 = "N"
  loc_1BB1268: MemVar_1F923C4 = "N"
  loc_1BB126F: MemVar_1F923C8 = "K"
  loc_1BB127A: var_140 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCTOKEN,K.Remarks , K.ContraDocId, D.ShortName " & "From ((TOKEN K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode) "
  loc_1BB12BF: var_8C = CStr(CVar(var_140 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1BB12DE: var_13C = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BB12FE: var_16C = Me.Fields.Item("SearchCode")
  loc_1BB130E: var_160 = var_13C & var_16C.Value 
  loc_1BB1317: var_17C = var_160 & "'" 
  loc_1BB131C: var_90 = CStr(var_17C)
  loc_1BB1339: If (var_8C = vbNullString) Then
  loc_1BB1341:   Proc_333_81_1BB65B4 = 0
  loc_1BB1347: End If
  loc_1BB134F: If (var_90 = vbNullString) Then
  loc_1BB1357:   Proc_333_81_1BB65B4 = 0
  loc_1BB135D: End If
  loc_1BB137B: Set var_164 = Me.Txt
  loc_1BB1381: Call 0.Method_Proc_333_81_1BB65B40 (CInt(4), var_16C, var_140, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_1BB1389: var_11C = var_16C.Text
  loc_1BB1392: var_180 = -1 & var_140
  loc_1BB13A2: unk_58F14B.Execute var_180 & "' AND CONTRADOCID IS NULL", var_188, 
  loc_1BB13D9: If (var_188.RecordCount = 1) Then
  loc_1BB13DF:   var_CC = "New Order"
  loc_1BB13E5: Else
  loc_1BB13EC:   Set var_164 = Me.LblState
  loc_1BB13FA:   var_CC = var_164.Caption
  loc_1BB1400: End If
  loc_1BB1416: unk_58F14B.Execute var_8C, var_11C, -1
  loc_1BB1421: Set var_B8 = var_164
  loc_1BB1440: unk_58F14B.Execute "SELECT KOTPrinting FROM Enviro", var_11C, -1
  loc_1BB144B: Set var_D4 = var_164
  loc_1BB145A: var_12C = 0
  loc_1BB148A: unk_58F14B.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_11C, -1
  loc_1BB1492: var_164 = var_164.Fields
  loc_1BB149A: var_12C = var_16C.Item(var_16C)
  loc_1BB14A2: var_188 = var_188.Value
  loc_1BB14AF: var_D8 = Proc_6_38_E68A98(var_13C, var_13C)
  loc_1BB14D8: var_164 = var_B8.Fields
  loc_1BB1502: If (Proc_6_38_E68A98(CVar(var_164.Item("ContraDocId")), var_164) <> vbNullString) Then
  loc_1BB1518:   var_11C = "Sale Bill Already Generated !!"
  loc_1BB151E:   MsgBox(var_11C, &H40, var_13C, var_160, var_17C)
  loc_1BB1533:   Proc_333_81_1BB65B4 = 0
  loc_1BB1539: End If
  loc_1BB1550: var_140 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & LocalRestCode
  loc_1BB1560: unk_58F14B.Execute var_140 & "'", var_11C, -1
  loc_1BB156B: Set var_C0 = var_164
  loc_1BB157B: ' Referenced from: 1BB6580
  loc_1BB158A: If Not(var_C0.EOF) Then
  loc_1BB1594:   var_13C = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BB15AC:   var_164 = Me.Fields
  loc_1BB15BC:   var_11C = var_164.Item("SearchCode").Value
  loc_1BB15FD:   unk_58F14B.Execute CStr(var_13C & var_11C & "'"), var_11C, -1
  loc_1BB1608:   Set var_BC = var_164
  loc_1BB1617:   var_168 = var_BC.RecordCount
  loc_1BB1625:   If (var_168 > 0) Then
  loc_1BB1637:     var_164 = var_C0.Fields
  loc_1BB1656:     var_1AC = Trim(CVar(var_164.Item("PrintType"))) 'Variant
  loc_1BB166B:     If (var_1AC = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1BB167B:       Call Proc_333_82_EF9974(New, var_164, var_164)
  loc_1BB1683:       Set var_E0 = var_164
  loc_1BB1689:       Me.Recordset15.MoveFirst
  loc_1BB168E:       ' Referenced from: 1BB241C
  loc_1BB169D:       If Not(var_B8.EOF) Then
  loc_1BB16A2:         var_96 = 0
  loc_1BB16B9:         var_164 = var_B8.Fields
  loc_1BB17CA:         var_2F8 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_164.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_164) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB17D3:         var_94 = CStr(var_2F8)
  loc_1BB1817:         If (var_96 = 0) Then
  loc_1BB181D:           var_184 = vbNullString
  loc_1BB1838:           Call Proc_333_83_F13A38(var_E0, vbNullString, vbNullString)
  loc_1BB1874:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1BB18AB:           var_13C = CVar(Me.LblRest.Caption) 'String
  loc_1BB18AE:           var_160 = (Space(1) + var_13C)
  loc_1BB18C3:           Call Proc_333_83_F13A38(var_E0, vbNullString, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.LblRest.Item("ShortName")), 1, var_96)))))
  loc_1BB18F5:           Call Proc_333_83_F13A38(var_E0, vbNullString, var_94, vbNullString)
  loc_1BB1924:           Call Proc_333_83_F13A38(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1BB1958:           Proc_6_39_E7C810(var_13C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB198C:           var_184 = vbNullString
  loc_1BB1995:           Call Proc_333_83_F13A38(var_E0, var_184, " TOKEN No.   : " & Proc_6_45_EAD428(CStr(var_13C), &HA, vbNullString))
  loc_1BB1A51:           var_304 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")), " TOKEN Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1BB1A65:           Call Proc_333_83_F13A38(var_E0, vbNullString, " TOKEN Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_304)
  loc_1BB1AAC:           var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB1AF7:           Call Proc_333_83_F13A38(var_E0, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C), vbNullString), &H1E))
  loc_1BB1B29:           Set var_164 = Me.Label1
  loc_1BB1B2F:           Call 0.Method_Proc_333_81_1BB65B40 (2, var_16C)
  loc_1BB1B9A:           var_300 = vbNullString
  loc_1BB1BA9:           var_1BC = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB1BB2:           var_1CC = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1BB1BB9:           var_1F0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1BB1BBC:           var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3)) + var_1F0)
  loc_1BB1BD1:           Call Proc_333_83_F13A38(var_E0, vbNullString, CStr("* NC LOT *"))
  loc_1BB1C08:           var_180 = vbNullString
  loc_1BB1C1D:           Call Proc_333_83_F13A38(var_E0, vbNullString, var_C4)
  loc_1BB1C29:         End If
  loc_1BB1C4F:         var_160 = (var_180 + CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))))
  loc_1BB1C63:         var_1BC = (Trim(CVar(var_16C)) + Space(1))
  loc_1BB1C7A:         var_1CC = CVar(Proc_6_52_EAD4F4("Qty", 3, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1BB1C7D:         var_1DC = (var_300 + var_1CC)
  loc_1BB1C82:         var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BB1CA0:         var_180 = vbNullString
  loc_1BB1CB5:         Call Proc_333_83_F13A38(var_E0, vbNullString, var_B0)
  loc_1BB1CC4:         var_180 = vbNullString
  loc_1BB1CD9:         Call Proc_333_83_F13A38(var_E0, vbNullString, var_C4)
  loc_1BB1CEB:         var_96 = (var_96 + 4)
  loc_1BB1CF1:         var_BC.MoveFirst
  loc_1BB1CF6:         ' Referenced from: 1BB2077
  loc_1BB1D05:         If Not(var_BC.EOF) Then
  loc_1BB1D3E:           var_188 = var_BC.Fields
  loc_1BB1D55:           Proc_6_39_E7C810(var_1F0, CVar(var_188.Item("qty")), &H12)
  loc_1BB1D80:           var_198 = "Cancel"
  loc_1BB1DBA:           var_200 = "Y"
  loc_1BB1DF8:           var_17C = (1 + CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1BB1E0C:           var_1CC = (Space(1) + Space(1))
  loc_1BB1E25:           var_278 = (var_180 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F0, "0")), 3, var_1CC)))
  loc_1BB1E3B:           var_348 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item(var_198).Value = var_200), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCTOKEN")))) 'String
  loc_1BB1E3E:           var_358 = (var_180 + var_348)
  loc_1BB1E9D:           Call Proc_333_83_F13A38(var_E0, vbNullString, CStr(var_358))
  loc_1BB1EAF:           var_96 = (var_96 + 1)
  loc_1BB1EEB:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BB1F1C:             var_300 = vbNullString
  loc_1BB1F43:             Call Proc_333_83_F13A38(var_E0, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1BB1F63:             var_96 = (var_96 + 1)
  loc_1BB1F66:           End If
  loc_1BB1F70:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BB1F8B:             Call Proc_333_83_F13A38(var_E0, vbNullString, var_C4, vbNullString)
  loc_1BB1FB5:             Call Proc_333_83_F13A38(var_E0, vbNullString, " Contd.", vbNullString)
  loc_1BB1FC9:             var_98 = (var_98 + 1)
  loc_1BB1FE9:             Call Proc_333_83_F13A38(var_E0, vbNullString, var_94, vbNullString, 0)
  loc_1BB2012:             Call Proc_333_83_F13A38(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1BB2036:             Call Proc_333_83_F13A38(var_E0, vbNullString, var_B0, vbNullString)
  loc_1BB205A:             Call Proc_333_83_F13A38(var_E0, vbNullString, var_C4, vbNullString)
  loc_1BB206C:             var_96 = (var_96 + 4)
  loc_1BB206F:           End If
  loc_1BB2072:           var_BC.MoveNext
  loc_1BB2077:           GoTo loc_1BB1CF6
  loc_1BB207A:         End If
  loc_1BB2084:         If (&H12 < (&H45 - var_AA)) Then
  loc_1BB2087:           ' Referenced from: 1BB20C9
  loc_1BB2091:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BB20B2:             Call Proc_333_83_F13A38(var_E0, vbNullString, vbNullString, vbNullString, &H12)
  loc_1BB20C6:             var_96 = (var_96 + 1)
  loc_1BB20C9:             GoTo loc_1BB2087
  loc_1BB20CC:           End If
  loc_1BB20CC:         End If
  loc_1BB20E4:         Call Proc_333_83_F13A38(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1BB2132:         var_300 = vbNullString
  loc_1BB2152:         Call Proc_333_83_F13A38(var_E0, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1BB21AD:         Call Proc_333_83_F13A38(var_E0, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1BB220C:         var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB221A:         unk_58F14B.Execute CStr(var_160), Space(1), -1
  loc_1BB227B:         If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB22A5:           Call Proc_333_83_F13A38(var_E0, vbNullString, " ***  " & "Changed TOKEN" & "  ***", vbNullString)
  loc_1BB22B8:         Else
  loc_1BB22C5:           var_12C = "Select Printed from TOKEN where docid='"
  loc_1BB22FB:           var_150 = "'"
  loc_1BB230E:           unk_58F14B.Execute CStr(var_12C & Me.Fields.Item("SearchCode").Value & var_150), Space(1), -1
  loc_1BB2336:           var_10C = 0
  loc_1BB236C:           If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(var_10C)), var_188, var_188) = "Y") Then
  loc_1BB2396:             Call Proc_333_83_F13A38(var_E0, vbNullString, " ***  " & "DUPLICATE TOKEN" & "  ***", vbNullString)
  loc_1BB23A9:           Else
  loc_1BB23C7:             Call Proc_333_83_F13A38(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1BB23D5:           End If
  loc_1BB23D5:         End If
  loc_1BB23DA:         Set var_E4 = Nothing
  loc_1BB2404:         Call Proc_333_83_F13A38(var_E0, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1BB2417:         var_B8.MoveNext
  loc_1BB241C:         GoTo loc_1BB168E
  loc_1BB241F:       End If
  loc_1BB2422:       var_DC = "WinKOTPrint"
  loc_1BB2449:       Set var_164 = var_E0 
  loc_1BB2450:       CreateFieldDefFile(var_164, MemVar_1F920B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1BB2492:       Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_DC & ".RPT", var_10C, var_164)
  loc_1BB249D:       MemVar_1F921E4 = var_164
  loc_1BB24C6:       Call 0.Method_arg_64 (var_164, CVar(var_164), var_12C, var_150)
  loc_1BB24CE:       Call 0.Method_arg_2C (var_300, var_300)
  loc_1BB24DE:       If (var_D8 <> vbNullString) Then
  loc_1BB24FF:         If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1BB2505:           Call Proc_333_80_F10558(var_D8)
  loc_1BB250A:         End If
  loc_1BB250A:       End If
  loc_1BB2516:       var_12C = 1
  loc_1BB2527:       Call 0.Method_Me8 (False, var_12C, var_150)
  loc_1BB2531:       Set var_E0 = Nothing
  loc_1BB2537:     Else
  loc_1BB2542:       If (var_1AC = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1BB2548:         var_B8.MoveFirst
  loc_1BB254D:         ' Referenced from:   1BB3321
  loc_1BB255C:         If Not(var_B8.EOF) Then
  loc_1BB2562:           var_10C = "ShortName"
  loc_1BB2592:           var_17C = 3
  loc_1BB25C1:           var_188 = var_B8.Fields
  loc_1BB25C9:           var_1E0 = var_188.Item("NCTOKEN")
  loc_1BB266B:           var_150 = "LAU"
  loc_1BB2675:           var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_10C)), "NCTOKEN"))), 1, var_17C)) = var_150) 'Variant
  loc_1BB267F:           var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E68A98(CVar(var_1E0), (Proc_6_38_E68A98(CVar(var_1E0), var_200) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB2688:           var_94 = CStr(var_2F8)
  loc_1BB26C9:           var_DC = "KOTPrint"
  loc_1BB26F0:           Set var_164 = var_BC 
  loc_1BB26F7:           CreateFieldDefFile(var_164, MemVar_1F920B4 & "\" & var_DC & ".ttx")
  loc_1BB2703:           Set var_BC = var_164
  loc_1BB2739:           Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_DC & ".RPT", var_10C, var_164)
  loc_1BB2744:           MemVar_1F921E4 = var_164
  loc_1BB276D:           Call 0.Method_arg_64 (var_164, CVar(var_BC), var_12C)
  loc_1BB2775:           Call 0.Method_arg_2C (var_150, &HFF)
  loc_1BB2783:           Call 0.Method_arg_150 (var_164)
  loc_1BB27D0:           var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB27DE:           unk_58F14B.Execute CStr(var_160), var_17C, -1
  loc_1BB283F:           If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB2845:             var_D0 = "Changed TOKEN"
  loc_1BB284B:           Else
  loc_1BB28A1:             unk_58F14B.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB28D5:             var_164 = var_188.Fields
  loc_1BB28DD:             var_16C = var_164.Item(0)
  loc_1BB28EE:             var_140 = Proc_6_38_E68A98(CVar(var_16C), var_188)
  loc_1BB28FF:             If (var_140 = "Y") Then
  loc_1BB2905:               var_D0 = "DUPLICATE TOKEN"
  loc_1BB290B:             Else
  loc_1BB290E:               var_D0 = vbNullString
  loc_1BB2911:             End If
  loc_1BB2911:           End If
  loc_1BB2916:           Set var_E4 = Nothing
  loc_1BB292A:           Call 0.Method_arg_90 (var_164, var_168, var_B2)
  loc_1BB2932:           Call 0.Method_arg_24 (1)
  loc_1BB293E:           For var_35C =  To CInt(var_168):   var_188 = var_35C 'Integer
  loc_1BB2957:             Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB295F:             Call 0.Method_arg_20 (var_16C)
  loc_1BB2967:             Call 0.Method_arg_30 (var_140)
  loc_1BB297D:             var_36C = Ucase(CVar(var_140)) 'Variant
  loc_1BB29AD:             If (var_36C = Ucase("comp_name")) Then
  loc_1BB29D1:               Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB29D9:               Call 0.Method_arg_20 (var_16C)
  loc_1BB29E1:               Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1BB29F7:             Else
  loc_1BB2A19:               If (var_36C = Ucase("comp_add1")) Then
  loc_1BB2A3D:                 Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB2A45:                 Call 0.Method_arg_20 (var_16C)
  loc_1BB2A4D:                 Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1BB2A63:               Else
  loc_1BB2A85:                 If (var_36C = Ucase("comp_pin")) Then
  loc_1BB2AA9:                   Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB2AB1:                   Call 0.Method_arg_20 (var_16C)
  loc_1BB2AB9:                   Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1BB2ACF:                 Else
  loc_1BB2AF1:                   If (var_36C = Ucase("comp_GSTIN")) Then
  loc_1BB2B15:                     Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB2B1D:                     Call 0.Method_arg_20 (var_16C)
  loc_1BB2B25:                     Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1BB2B3B:                   Else
  loc_1BB2B5D:                     If (var_36C = Ucase("RestName")) Then
  loc_1BB2B6A:                       Set var_164 = Me.LblRest
  loc_1BB2B93:                       Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BB2B9B:                       Call 0.Method_arg_20 (var_188)
  loc_1BB2BA3:                       Call 0.Method_arg_38 ("'" & var_164.Caption & "'")
  loc_1BB2BBD:                     Else
  loc_1BB2BDF:                       If (var_36C = Ucase("mTitle")) Then
  loc_1BB2C03:                         Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB2C0B:                         Call 0.Method_arg_20 (var_16C)
  loc_1BB2C13:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1BB2C29:                       Else
  loc_1BB2C31:                         var_11C = "Header1"
  loc_1BB2C4B:                         If (var_36C = Ucase(var_11C)) Then
  loc_1BB2C59:                           Proc_6_17_EAA2B0(var_11C)
  loc_1BB2C75:                           Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB2C7D:                           Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB2C85:                           Call 0.Method_arg_38 (var_EC)
  loc_1BB2C9A:                         Else
  loc_1BB2CA2:                           var_11C = "Header2"
  loc_1BB2CBC:                           If (var_36C = Ucase(var_11C)) Then
  loc_1BB2CCA:                             Proc_6_17_EAA2B0(var_11C)
  loc_1BB2CE6:                             Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB2CEE:                             Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB2CF6:                             Call 0.Method_arg_38 (var_F0)
  loc_1BB2D0B:                           Else
  loc_1BB2D13:                             var_11C = "Header3"
  loc_1BB2D2D:                             If (var_36C = Ucase(var_11C)) Then
  loc_1BB2D3B:                               Proc_6_17_EAA2B0(var_11C)
  loc_1BB2D57:                               Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB2D5F:                               Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB2D67:                               Call 0.Method_arg_38 (var_F4)
  loc_1BB2D7C:                             Else
  loc_1BB2D84:                               var_11C = "Header4"
  loc_1BB2D9E:                               If (var_36C = Ucase(var_11C)) Then
  loc_1BB2DAC:                                 Proc_6_17_EAA2B0(var_11C)
  loc_1BB2DC8:                                 Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB2DD0:                                 Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB2DD8:                                 Call 0.Method_arg_38 (var_F8)
  loc_1BB2DED:                               Else
  loc_1BB2DFE:                                 var_13C = Ucase("KotNo")
  loc_1BB2E0F:                                 If (var_36C = var_13C) Then
  loc_1BB2E3D:                                   Proc_6_39_E7C810(var_13C, CVar(var_B8.Fields.Item("VNo")))
  loc_1BB2E49:                                   var_150 = "'"
  loc_1BB2E66:                                   Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB2E6E:                                   Call 0.Method_arg_20 (var_1E0)
  loc_1BB2E76:                                   Call 0.Method_arg_38 (CStr("'" & var_13C & var_150))
  loc_1BB2E95:                                 Else
  loc_1BB2EB7:                                   If (var_36C = Ucase("KotDate")) Then
  loc_1BB2F03:                                     Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB2F0B:                                     Call 0.Method_arg_20 (var_1E0)
  loc_1BB2F13:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1BB2F30:                                   Else
  loc_1BB2F52:                                     If (var_36C = Ucase("KotTime")) Then
  loc_1BB2F9E:                                       Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB2FA6:                                       Call 0.Method_arg_20 (var_1E0)
  loc_1BB2FAE:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1BB2FCB:                                     Else
  loc_1BB2FED:                                       If (var_36C = Ucase("Remarks")) Then
  loc_1BB300A:                                         var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB3039:                                         Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB3041:                                         Call 0.Method_arg_20 (var_1E0)
  loc_1BB3049:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_16C)) & "'")
  loc_1BB3066:                                       Else
  loc_1BB3088:                                         If (var_36C = Ucase("TableTitle")) Then
  loc_1BB3099:                                           Set var_164 = Me.Label1
  loc_1BB309F:                                           Call 0.Method_Proc_333_81_1BB65B40 (2, var_16C)
  loc_1BB30D7:                                           Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB30DF:                                           Call 0.Method_arg_20 (var_1E0)
  loc_1BB30E7:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_16C)) & "'"))
  loc_1BB3106:                                         Else
  loc_1BB3128:                                           If (var_36C = Ucase("TableNo")) Then
  loc_1BB3174:                                             Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB317C:                                             Call 0.Method_arg_20 (var_1E0)
  loc_1BB3184:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1BB31A1:                                           Else
  loc_1BB31C3:                                             If (var_36C = Ucase("Steward")) Then
  loc_1BB31D8:                                               var_164 = var_B8.Fields
  loc_1BB31E0:                                               var_16C = var_164.Item("WaiterName")
  loc_1BB320F:                                               Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB3217:                                               Call 0.Method_arg_20 (var_1E0)
  loc_1BB321F:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_16C)) & "'")
  loc_1BB323C:                                             Else
  loc_1BB325E:                                               If (var_36C = Ucase("KotStatus")) Then
  loc_1BB3282:                                                 Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB328A:                                                 Call 0.Method_arg_20 (var_16C)
  loc_1BB3292:                                                 Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1BB32A8:                                               Else
  loc_1BB32CA:                                                 If (var_36C = Ucase("KotRemark")) Then
  loc_1BB32EE:                                                   Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB32F6:                                                   Call 0.Method_arg_20 (var_16C)
  loc_1BB32FE:                                                   Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1BB3311:                                                 End If
  loc_1BB3311:                                               End If
  loc_1BB3311:                                             End If
  loc_1BB3311:                                           End If
  loc_1BB3311:                                         End If
  loc_1BB3311:                                       End If
  loc_1BB3311:                                     End If
  loc_1BB3311:                                   End If
  loc_1BB3311:                                 End If
  loc_1BB3311:                               End If
  loc_1BB3311:                             End If
  loc_1BB3311:                           End If
  loc_1BB3311:                         End If
  loc_1BB3311:                       End If
  loc_1BB3311:                     End If
  loc_1BB3311:                   End If
  loc_1BB3311:                 End If
  loc_1BB3311:               End If
  loc_1BB3311:             End If
  loc_1BB3314:           Next var_35C 'Integer
  loc_1BB331C:           var_B8.MoveNext
  loc_1BB3321:           GoTo loc_1BB254D
  loc_1BB3324:         End If
  loc_1BB332C:         If (var_D8 <> vbNullString) Then
  loc_1BB334D:           If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1BB3353:             Call Proc_333_80_F10558(var_D8)
  loc_1BB3358:           End If
  loc_1BB3358:         End If
  loc_1BB3375:         Call 0.Method_Me8 (False, 1, var_150)
  loc_1BB337D:       Else
  loc_1BB3388:         If (var_1AC = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1BB338D:           Close 1
  loc_1BB3396:           Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BB339D:           var_B8.MoveFirst
  loc_1BB33A2:           ' Referenced from:     1BB443A
  loc_1BB33B1:           If Not(var_B8.EOF) Then
  loc_1BB33B6:             var_96 = 0
  loc_1BB33F1:             var_17C = 3
  loc_1BB3414:             var_198 = "NCTOKEN"
  loc_1BB3491:             var_2FC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")))
  loc_1BB34AD:             var_180 = var_2FC
  loc_1BB34D4:             var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_17C)) = "LAU") 'Variant
  loc_1BB34DE:             var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_198)), var_198) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_180 = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB34E7:             var_94 = CStr(var_2F8)
  loc_1BB352B:             If (var_96 = 0) Then
  loc_1BB3530:               Print 1
  loc_1BB3564:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BB3575:               If (var_EC <> vbNullString) Then
  loc_1BB359E:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BB35A4:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB35B6:               End If
  loc_1BB35BE:               If (var_F0 <> vbNullString) Then
  loc_1BB35E7:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BB35ED:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB35FF:               End If
  loc_1BB3607:               If (var_F4 <> vbNullString) Then
  loc_1BB3630:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1BB3636:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB3648:               End If
  loc_1BB3650:               If (var_F8 <> vbNullString) Then
  loc_1BB3679:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1BB367F:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB3691:               End If
  loc_1BB3693:               Print 1
  loc_1BB36C3:               Call Proc_333_94_10AC2D0(Me.LblRest.Caption, "D", &H28)
  loc_1BB36CD:               Print 1, var_2FC
  loc_1BB36F3:               Call Proc_333_94_10AC2D0(var_94, "D", &H28)
  loc_1BB36FD:               Print 1, var_180
  loc_1BB3711:               Print 1
  loc_1BB3719:               Print 1
  loc_1BB3752:               Proc_6_39_E7C810(var_17C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB3774:               var_13C = (Chr(&HF) + "TOKEN No.   :     ")
  loc_1BB377E:               var_1CC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_17C), &HA, Proc_6_45_EAD428(CStr(var_17C), &HA, var_180))))
  loc_1BB3784:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C))
  loc_1BB3836:               var_13C = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_1BB3840:               var_1BC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC)))
  loc_1BB3849:               var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC))), &HA, Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC))), &HA, var_180))) + " ")
  loc_1BB3853:               var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BB3859:               Print 1, "* NC LOT *"
  loc_1BB38AE:               var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB38EB:               var_13C = (Chr(&HF) + "Remarks :     ")
  loc_1BB38F5:               var_1BC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32)))
  loc_1BB38FC:               var_1DC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32))), &HA, Proc_6_38_E68A98(CVar(var_16C)))) + Chr(&H12))
  loc_1BB3902:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BB393B:               Set var_164 = Me.Label1
  loc_1BB3941:               Call 0.Method_Proc_333_81_1BB65B40 (2, var_16C)
  loc_1BB39B2:               var_1BC = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB39BB:               var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA))), &HA, Proc_6_38_E68A98(CVar(var_16C)))) + ":     ")
  loc_1BB39C5:               var_220 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BB39CB:               Print 1, "* NC LOT *"
  loc_1BB3A10:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB3A16:               Print 1, CVar(var_16C)
  loc_1BB3A23:             End If
  loc_1BB3A49:             var_160 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1B)) + Space(1))
  loc_1BB3A63:             var_1BC = (Trim(CVar(var_16C)) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1BB3A68:             var_B0 = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6))), &HA, "Qty")))
  loc_1BB3A95:             var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB3A9B:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H1B))
  loc_1BB3ABE:             var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB3AC4:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H1B))
  loc_1BB3AD7:             var_96 = (var_96 + 4)
  loc_1BB3ADD:             var_BC.MoveFirst
  loc_1BB3AE2:             ' Referenced from:     1BB4053
  loc_1BB3AF1:             If Not(var_BC.EOF) Then
  loc_1BB3B22:               var_160 = Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ItemName")), &H12)))
  loc_1BB3B2B:               var_E8 = CStr(var_160)
  loc_1BB3B60:               Proc_6_39_E7C810(var_160, CVar(var_BC.Fields.Item("qty")))
  loc_1BB3B97:               var_188 = var_BC.Fields
  loc_1BB3C03:               var_1DC = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_160, "0.00")), 6, Space(1))))
  loc_1BB3C19:               var_2C8 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_188.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, CVar(var_B8.Fields.Item("TableNo")))) 'String
  loc_1BB3C1C:               var_2D8 = (1 + var_2C8)
  loc_1BB3C21:               var_C8 = CStr(IIf(("Qty" = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB3C53:               ' Referenced from:     1BB3E58
  loc_1BB3C5D:               If (Len(var_E8) <> 0) Then
  loc_1BB3C8E:                 var_168 = InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0)
  loc_1BB3CC5:                 var_17C = CVar((InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0) - 1)) 'Long
  loc_1BB3D18:                 var_2FC = Proc_6_45_EAD428(CStr(Mid(var_E8, 1, IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 27, "0.00"))), &H1B)
  loc_1BB3D54:                 var_13C = (Chr(&HF) + CVar(var_2FC & var_2FC & var_C8))
  loc_1BB3D5A:                 Print 1, Left(var_E8, &H1B)
  loc_1BB3D6D:                 var_96 = (var_96 + 1)
  loc_1BB3D73:                 var_C8 = vbNullString
  loc_1BB3D80:                 If (Len(var_E8) > &H1B) Then
  loc_1BB3DB1:                   var_168 = InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0)
  loc_1BB3DD9:                   var_180 = CStr(Left(var_E8, &H1B))
  loc_1BB3DE8:                   var_17C = CVar((InStrRev(var_180, " ", -1, 0) + 1)) 'Long
  loc_1BB3E32:                   var_E8 = CStr(Mid(var_E8, CLng(IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00")), CVar(Len(var_E8))))
  loc_1BB3E52:                 Else
  loc_1BB3E55:                   var_E8 = vbNullString
  loc_1BB3E58:                 End If
  loc_1BB3E58:                 GoTo loc_1BB3C53
  loc_1BB3E5B:               End If
  loc_1BB3E94:               If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), var_168, &H12) <> vbNullString) Then
  loc_1BB3ED7:                 var_13C = (Chr(&HF) + "(")
  loc_1BB3EE1:                 var_1BC = (Left(var_E8, &H1B) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), var_168)))
  loc_1BB3EEA:                 var_1CC = (IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00") + ")")
  loc_1BB3EF0:                 Print 1, CVar(Len(var_E8))
  loc_1BB3F11:                 var_96 = (var_96 + 1)
  loc_1BB3F14:               End If
  loc_1BB3F1E:               If (&H12 = (&H45 - var_AA)) Then
  loc_1BB3F37:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB3F3D:                 Print 1, Left(var_E8, &H1B)
  loc_1BB3F4F:                 Print 1, "Contd."
  loc_1BB3F67:                 Print 1, Chr(&HC)
  loc_1BB3F76:                 var_98 = (var_98 + 1)
  loc_1BB3F8C:                 Call Proc_333_95_1201B54(1, 0, &H28, var_306)
  loc_1BB3FAB:                 Call Proc_333_94_10AC2D0(var_94, "B", &H28, var_180, var_306)
  loc_1BB3FB5:                 Print 1, var_180
  loc_1BB3FC4:                 var_96 = &H12
  loc_1BB3FDD:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB3FE3:                 Print 1, Left(var_E8, &H1B)
  loc_1BB4006:                 var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB400C:                 Print 1, Left(var_E8, &H1B)
  loc_1BB402F:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB4035:                 Print 1, Left(var_E8, &H1B)
  loc_1BB4048:                 var_96 = (var_96 + 4)
  loc_1BB404B:               End If
  loc_1BB404E:               var_BC.MoveNext
  loc_1BB4053:               GoTo loc_1BB3AE2
  loc_1BB4056:             End If
  loc_1BB4060:             If (var_96 < (&H45 - var_AA)) Then
  loc_1BB4063:               ' Referenced from:     1BB4084
  loc_1BB406D:               If (var_96 = (&H45 - var_AA)) Then
  loc_1BB4075:                 Print 1, vbNullString
  loc_1BB4081:                 var_96 = (var_96 + 1)
  loc_1BB4084:                 GoTo loc_1BB4063
  loc_1BB4087:               End If
  loc_1BB4087:             End If
  loc_1BB409D:             var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB40A3:             Print 1, Left(var_E8, &H1B)
  loc_1BB4104:             var_13C = (Chr(&HF) + "Waiter Name  :     ")
  loc_1BB410B:             var_17C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)) 'String
  loc_1BB410E:             var_1BC = (Left(var_E8, &H1B) + var_17C)
  loc_1BB4114:             Print 1, IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00")
  loc_1BB4158:             var_13C = (Chr(&HF) + "***  ")
  loc_1BB415F:             var_17C = Left(var_E8, &H1B) & Trim(var_CC) 
  loc_1BB416E:             Print 1, var_17C & "  ***"
  loc_1BB41C9:             var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB41D7:             unk_58F14B.Execute CStr(var_160), var_17C, -1
  loc_1BB4238:             If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB4269:               Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("Changed TOKEN", &H14, var_188), "D", &H28, var_2FC)
  loc_1BB4273:               Print 1, var_2FC
  loc_1BB4289:             Else
  loc_1BB42DF:               unk_58F14B.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB433D:               If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1BB4353:                 var_300 = Proc_6_45_EAD428("DUPLICATE TOKEN", &H14)
  loc_1BB436E:                 Call Proc_333_94_10AC2D0(var_300, "D", &H28)
  loc_1BB4378:                 Print 1, var_2FC
  loc_1BB438E:               Else
  loc_1BB4390:                 Print 1
  loc_1BB4396:               End If
  loc_1BB4396:             End If
  loc_1BB439B:             Set var_E4 = Nothing
  loc_1BB43B3:             var_13C = (Chr(&HF) + "** ")
  loc_1BB43BD:             var_160 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1BB43C6:             var_17C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BB43CC:             Print 1, var_17C
  loc_1BB43E0:             var_B8.MoveNext
  loc_1BB43E7:             Print 1
  loc_1BB43EF:             Print 1
  loc_1BB43F7:             Print 1
  loc_1BB43FF:             Print 1
  loc_1BB4425:             var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1BB442B:             Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BB443A:             GoTo loc_1BB33A2
  loc_1BB443D:           End If
  loc_1BB443F:           Close 1
  loc_1BB4449:           If (var_D8 <> vbNullString) Then
  loc_1BB4453:             Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BB4463:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BB446F:           Else
  loc_1BB447B:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F923B4
  loc_1BB4484:           End If
  loc_1BB4486:           Close 1
  loc_1BB4490:           If (MemVar_1F923B8 = "Y") Then
  loc_1BB44AC:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BB44B6:           Else
  loc_1BB44CF:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BB44D6:           End If
  loc_1BB44D9:         Else
  loc_1BB44E4:           If (var_1AC = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1BB44E9:             Close 1
  loc_1BB44F2:             Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BB44F9:             var_B8.MoveFirst
  loc_1BB44FE:             ' Referenced from:       1BB53F1
  loc_1BB450D:             If Not(var_B8.EOF) Then
  loc_1BB4512:               var_96 = 0
  loc_1BB454D:               var_17C = 3
  loc_1BB4595:               var_184 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_2FC)
  loc_1BB4630:               var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_17C)) = "LAU") 'Variant
  loc_1BB463A:               var_2F8 = IIf(var_2E8, IIf((var_184 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB4643:               var_94 = CStr(var_2F8)
  loc_1BB4687:               If (var_96 = 0) Then
  loc_1BB468C:                 Print 1
  loc_1BB46C0:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BB46D1:                 If (var_EC <> vbNullString) Then
  loc_1BB46FA:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BB4700:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB4712:                 End If
  loc_1BB471A:                 If (var_F0 <> vbNullString) Then
  loc_1BB4743:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BB4749:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB475B:                 End If
  loc_1BB4763:                 If (var_F4 <> vbNullString) Then
  loc_1BB478C:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1BB4792:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB47A4:                 End If
  loc_1BB47AC:                 If (var_F8 <> vbNullString) Then
  loc_1BB47D5:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1BB47DB:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB47ED:                 End If
  loc_1BB47EF:                 Print 1
  loc_1BB4833:                 Call Proc_333_94_10AC2D0(Proc_6_45_EAD428(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1BB483D:                 Print 1, var_300
  loc_1BB487B:                 Call Proc_333_94_10AC2D0(Proc_6_45_EAD428(var_94, &H14), "D", &H28)
  loc_1BB4885:                 Print 1, var_184
  loc_1BB489D:                 Print 1
  loc_1BB48A5:                 Print 1
  loc_1BB48DE:                 Proc_6_39_E7C810(var_17C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB4900:                 var_13C = (Chr(&HF) + "TOKEN No.   :       ")
  loc_1BB490A:                 var_1CC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_17C), &HA, var_184)))
  loc_1BB4910:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C))
  loc_1BB49C2:                 var_13C = (Chr(&HF) + "TOKEN Dt.   :       ")
  loc_1BB49C9:                 var_17C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")))), &HC)) 'String
  loc_1BB49CC:                 var_1BC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + var_17C)
  loc_1BB49D5:                 var_1CC = (CVar(Proc_6_45_EAD428(CStr(var_17C), &HA, Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")))))) + " ")
  loc_1BB49DF:                 var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BB49E5:                 Print 1, "* NC LOT *"
  loc_1BB4A3A:                 var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB4A77:                 var_13C = (Chr(&HF) + "Remarks :       ")
  loc_1BB4A81:                 var_1BC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32)))
  loc_1BB4A88:                 var_1DC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32))) + Chr(&H12))
  loc_1BB4A8E:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BB4AC7:                 Set var_164 = Me.Label1
  loc_1BB4ACD:                 Call 0.Method_Proc_333_81_1BB65B40 (2, var_16C)
  loc_1BB4B1E:                 var_2FC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BB4B3E:                 var_1BC = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB4B47:                 var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA))) + ":       ")
  loc_1BB4B51:                 var_220 = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_2FC, 5)))
  loc_1BB4B57:                 Print 1, "* NC LOT *"
  loc_1BB4B9C:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB4BA2:                 Print 1, CVar(var_16C)
  loc_1BB4BAF:               End If
  loc_1BB4BD5:               var_160 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1BB4BE1:               var_180 = "Qty"
  loc_1BB4BEF:               var_1BC = (Trim(CVar(var_16C)) + CVar(Proc_6_52_EAD4F4(var_180, 6)))
  loc_1BB4BF4:               var_B0 = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_180, 6))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA))))
  loc_1BB4C21:               var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB4C27:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BB4C4A:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB4C50:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BB4C63:               var_96 = (var_96 + 4)
  loc_1BB4C69:               var_BC.MoveFirst
  loc_1BB4C6E:               ' Referenced from:       1BB500F
  loc_1BB4C7D:               If Not(var_BC.EOF) Then
  loc_1BB4CB6:                 var_188 = var_BC.Fields
  loc_1BB4CCD:                 Proc_6_39_E7C810(Chr(&H12), CVar(var_188.Item("qty")))
  loc_1BB4D70:                 var_17C = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BB4D89:                 var_240 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_180, 6)))))
  loc_1BB4D9F:                 var_2F8 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BB4DA2:                 var_334 = (&H12 + var_2F8)
  loc_1BB4DFB:                 var_13C = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BB4E01:                 Print 1, Space(3)
  loc_1BB4E14:                 var_96 = (var_96 + 1)
  loc_1BB4E50:                 If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BB4E93:                   var_13C = (Chr(&HF) + "(")
  loc_1BB4E9D:                   var_1BC = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BB4EA6:                   var_1CC = (CVar(var_188.Item("qty")) + ")")
  loc_1BB4EAC:                   Print 1, Chr(&H12)
  loc_1BB4ECD:                   var_96 = (var_96 + 1)
  loc_1BB4ED0:                 End If
  loc_1BB4EDA:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1BB4EF3:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB4EF9:                   Print 1, Space(3)
  loc_1BB4F0B:                   Print 1, "Contd."
  loc_1BB4F23:                   Print 1, Chr(&HC)
  loc_1BB4F32:                   var_98 = (var_98 + 1)
  loc_1BB4F48:                   Call Proc_333_95_1201B54(1, 0, &H28, var_306)
  loc_1BB4F67:                   Call Proc_333_94_10AC2D0(var_94, "B", &H28, var_180, var_306)
  loc_1BB4F71:                   Print 1, var_180
  loc_1BB4F80:                   var_96 = &H12
  loc_1BB4F99:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB4F9F:                   Print 1, Space(3)
  loc_1BB4FC2:                   var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB4FC8:                   Print 1, Space(3)
  loc_1BB4FEB:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB4FF1:                   Print 1, Space(3)
  loc_1BB5004:                   var_96 = (var_96 + 4)
  loc_1BB5007:                 End If
  loc_1BB500A:                 var_BC.MoveNext
  loc_1BB500F:                 GoTo loc_1BB4C6E
  loc_1BB5012:               End If
  loc_1BB501C:               If (var_96 < (&H45 - var_AA)) Then
  loc_1BB501F:                 ' Referenced from:       1BB5040
  loc_1BB5029:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1BB5031:                   Print 1, vbNullString
  loc_1BB503D:                   var_96 = (var_96 + 1)
  loc_1BB5040:                   GoTo loc_1BB501F
  loc_1BB5043:                 End If
  loc_1BB5043:               End If
  loc_1BB5059:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB505F:               Print 1, Space(3)
  loc_1BB50B5:               var_184 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)
  loc_1BB50C0:               var_13C = (Chr(&HF) + "Waiter Name  :       ")
  loc_1BB50CA:               var_1BC = (Space(3) + CVar(var_184))
  loc_1BB50D0:               Print 1, CVar(var_188.Item("qty"))
  loc_1BB5114:               var_13C = (Chr(&HF) + "***  ")
  loc_1BB511B:               var_17C = Space(3) & Trim(var_CC) 
  loc_1BB512A:               Print 1, var_17C & "  ***"
  loc_1BB5185:               var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB5193:               unk_58F14B.Execute CStr(var_160), var_17C, -1
  loc_1BB51F4:               If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB5225:                 Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("Changed TOKEN", &H14, var_188), "D", &H28, var_2FC)
  loc_1BB522F:                 Print 1, var_2FC
  loc_1BB5245:               Else
  loc_1BB529B:                 unk_58F14B.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB52F9:                 If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1BB532A:                   Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1BB5334:                   Print 1, var_2FC
  loc_1BB534A:                 Else
  loc_1BB534C:                   Print 1
  loc_1BB5352:                 End If
  loc_1BB5352:               End If
  loc_1BB5357:               Set var_E4 = Nothing
  loc_1BB536F:               var_13C = (Chr(&HF) + "** ")
  loc_1BB5379:               var_160 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1BB5382:               var_17C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BB5388:               Print 1, var_17C
  loc_1BB539C:               var_B8.MoveNext
  loc_1BB53A3:               Print 1
  loc_1BB53AB:               Print 1
  loc_1BB53B3:               Print 1
  loc_1BB53BB:               Print 1
  loc_1BB53C3:               Print 1
  loc_1BB53CB:               Print 1
  loc_1BB53D3:               Print 1
  loc_1BB53DB:               Print 1
  loc_1BB53E3:               Print 1
  loc_1BB53EB:               Print 1
  loc_1BB53F1:               GoTo loc_1BB44FE
  loc_1BB53F4:             End If
  loc_1BB53F6:             Close 1
  loc_1BB5400:             If (var_D8 <> vbNullString) Then
  loc_1BB540A:               Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BB541A:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BB5426:             Else
  loc_1BB5432:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F923B4
  loc_1BB543B:             End If
  loc_1BB543D:             Close 1
  loc_1BB5447:             If (MemVar_1F923B8 = "Y") Then
  loc_1BB5463:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BB546D:             Else
  loc_1BB5486:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BB548D:             End If
  loc_1BB5490:           Else
  loc_1BB549B:             If (var_1AC = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1BB54A0:               Close 1
  loc_1BB54A9:               Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BB54B0:               var_B8.MoveFirst
  loc_1BB54B5:               ' Referenced from:         1BB6469
  loc_1BB54C4:               If Not(var_B8.EOF) Then
  loc_1BB54C9:                 var_96 = 0
  loc_1BB55E7:                 var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1BB55F1:                 var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB55FA:                 var_94 = CStr(var_2F8)
  loc_1BB5666:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1BB5675:                 If (var_96 = 0) Then
  loc_1BB567A:                   Print 1
  loc_1BB5688:                   If (var_EC <> vbNullString) Then
  loc_1BB56B1:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BB56B7:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB56C9:                   End If
  loc_1BB56D1:                   If (var_F0 <> vbNullString) Then
  loc_1BB56FA:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BB5700:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB5712:                   End If
  loc_1BB571A:                   If (var_F4 <> vbNullString) Then
  loc_1BB5743:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1BB5749:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB575B:                   End If
  loc_1BB5763:                   If (var_F8 <> vbNullString) Then
  loc_1BB578C:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1BB5792:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB57A4:                   End If
  loc_1BB57A6:                   Print 1
  loc_1BB57D5:                   var_1BC = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BB57E7:                   var_1DC = Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3) / 2)))
  loc_1BB5818:                   var_2D8 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BB5821:                   var_2E8 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)
  loc_1BB5842:                   var_1F0 = (Chr(&HF) + var_1DC)
  loc_1BB5849:                   var_250 = (CVar(var_B8.Fields.Item("NCTOKEN")) + Trim(CVar(Me.LblRest)))
  loc_1BB5850:                   var_334 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng(var_2E8)))
  loc_1BB5857:                   var_358 = (IIf((var_BC.Fields.Item(2).Value = (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1BB585D:                   Print 1, var_358
  loc_1BB58AB:                   var_17C = (42 - Len(Trim(var_94)))
  loc_1BB58DE:                   var_250 = (42 - Len(Trim(var_94)))
  loc_1BB58E7:                   var_278 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *") / 2)
  loc_1BB5908:                   var_1DC = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1BB5912:                   var_1F0 = (var_1DC + CVar(var_94))
  loc_1BB5919:                   var_2C8 = (CVar(var_B8.Fields.Item("NCTOKEN")) + Space(CLng(var_278)))
  loc_1BB5920:                   var_2E8 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1BB5926:                   Print 1, var_2E8
  loc_1BB594A:                   Print 1
  loc_1BB5952:                   Print 1
  loc_1BB598B:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")))
  loc_1BB59BA:                   var_13C = (Chr(&HF) + "TOKEN No.   :         ")
  loc_1BB59C4:                   var_1CC = (Trim(var_94) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)))
  loc_1BB59CB:                   var_1F0 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1BB59D1:                   Print 1, CVar(var_B8.Fields.Item("NCTOKEN"))
  loc_1BB5A94:                   var_13C = (Chr(&HF) + "TOKEN Dt.   :         ")
  loc_1BB5A9E:                   var_1BC = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)))
  loc_1BB5AA7:                   var_1CC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + " ")
  loc_1BB5AB1:                   var_220 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BB5AB8:                   var_250 = (Trim(var_94) + Chr(&H12))
  loc_1BB5ABE:                   Print 1, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)) = "Y"), "* NC LOT *", "* LOT *")
  loc_1BB5B17:                   var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB5B54:                   var_13C = (Chr(&HF) + "Remarks :         ")
  loc_1BB5B5E:                   var_1BC = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H20)))
  loc_1BB5B65:                   var_1DC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + Chr(&H12))
  loc_1BB5B6B:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BB5BA4:                   Set var_164 = Me.Label1
  loc_1BB5BAA:                   Call 0.Method_Proc_333_81_1BB65B40 (2, var_16C)
  loc_1BB5BFB:                   var_2FC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BB5C28:                   var_1BC = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB5C31:                   var_1CC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + ":         ")
  loc_1BB5C3B:                   var_220 = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_2FC, 5)))
  loc_1BB5C42:                   var_250 = (Trim(var_94) + Chr(&H12))
  loc_1BB5C48:                   Print 1, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCTOKEN")), var_2FC) = "Y"), "* NC LOT *", "* LOT *")
  loc_1BB5C9E:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB5CA5:                   var_17C = (CVar(var_16C) + Chr(&H12))
  loc_1BB5CAB:                   Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA))
  loc_1BB5CBC:                 End If
  loc_1BB5CE2:                 var_160 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_1BB5CFC:                 var_1BC = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1BB5D08:                 var_1CC = Space(3)
  loc_1BB5D10:                 var_1DC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + var_1CC)
  loc_1BB5D2A:                 var_220 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1BB5D73:                 var_13C = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1BB5D7A:                 var_17C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BB5D80:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BB5DB4:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB5DBB:                 var_17C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BB5DC1:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BB5DD8:                 var_96 = (var_96 + 4)
  loc_1BB5DDE:                 var_BC.MoveFirst
  loc_1BB5DE3:                 ' Referenced from:         1BB606B
  loc_1BB5DF2:                 If Not(var_BC.EOF) Then
  loc_1BB5E2B:                   var_188 = var_BC.Fields
  loc_1BB5E42:                   Proc_6_39_E7C810(var_1CC, CVar(var_188.Item("qty")))
  loc_1BB5E8D:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1BB5E9C:                   var_200 = "0.00"
  loc_1BB5ED7:                   var_17C = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1BB5EF0:                   var_240 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1CC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1BB5F04:                   var_278 = (Chr(&H12) + Space(3))
  loc_1BB5F1D:                   var_334 = (&H12 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), var_200)), 6, var_278)))
  loc_1BB5F83:                   var_13C = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Rate").Value = var_200), "Void", vbNullString))))
  loc_1BB5F8A:                   var_17C = (Space(3) + Chr(&H12))
  loc_1BB5F90:                   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BB5FA7:                   var_96 = (var_96 + 1)
  loc_1BB5FE3:                   If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BB6026:                     var_13C = (Chr(&HF) + "(")
  loc_1BB6030:                     var_1BC = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BB6039:                     var_1CC = (CVar(var_188.Item("qty")) + ")")
  loc_1BB603F:                     Print 1, var_1CC
  loc_1BB6060:                     var_96 = (var_96 + 1)
  loc_1BB6063:                   End If
  loc_1BB6066:                   var_BC.MoveNext
  loc_1BB606B:                   GoTo loc_1BB5DE3
  loc_1BB606E:                 End If
  loc_1BB6091:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB6098:                 var_17C = (Space(3) + Chr(&H12))
  loc_1BB609E:                 Print 1, CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description"))))
  loc_1BB6110:                 var_13C = (Chr(&HF) + "Waiter Name  :         ")
  loc_1BB611A:                 var_1BC = (Space(3) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1BB6121:                 var_1DC = (CVar(var_188.Item("qty")) + Chr(&H12))
  loc_1BB6127:                 Print 1, "0.00"
  loc_1BB616F:                 var_1BC = Chr(&H12)
  loc_1BB617C:                 var_13C = (Chr(&HF) + "***  ")
  loc_1BB6183:                 var_17C = Space(3) & Trim(var_CC) 
  loc_1BB618F:                 var_1CC = ("  ***" + var_1BC)
  loc_1BB6199:                 Print 1, var_17C & Chr(&H12)
  loc_1BB61F8:                 var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB6206:                 unk_58F14B.Execute CStr(var_160), var_17C, -1
  loc_1BB6267:                 If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB6298:                   Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("Changed TOKEN", &H14), "D", &H28)
  loc_1BB62A2:                   Print 1, var_2FC
  loc_1BB62B8:                 Else
  loc_1BB630E:                   unk_58F14B.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB636C:                   If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(0)), var_188, var_2FC) = "Y") Then
  loc_1BB639D:                     Call Proc_333_94_10AC2D0(Proc_6_45_EAD428("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1BB63A7:                     Print 1, var_2FC
  loc_1BB63BD:                   Else
  loc_1BB63BF:                     Print 1
  loc_1BB63C5:                   End If
  loc_1BB63C5:                 End If
  loc_1BB63CA:                 Set var_E4 = Nothing
  loc_1BB63E2:                 var_13C = (Chr(&HF) + "** ")
  loc_1BB63EC:                 var_160 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1BB63F5:                 var_17C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BB63FB:                 Print 1, var_17C
  loc_1BB640F:                 var_B8.MoveNext
  loc_1BB6416:                 Print 1
  loc_1BB641E:                 Print 1
  loc_1BB6426:                 Print 1
  loc_1BB642E:                 Print 1
  loc_1BB6454:                 var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1BB645A:                 Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BB6469:                 GoTo loc_1BB54B5
  loc_1BB646C:               End If
  loc_1BB646E:               Close 1
  loc_1BB6478:               If (var_D8 <> vbNullString) Then
  loc_1BB6482:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BB6492:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BB649E:               Else
  loc_1BB64A5:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BB64B5:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F923B4
  loc_1BB64BE:               End If
  loc_1BB64C0:               Close 1
  loc_1BB64CA:               If (MemVar_1F923B8 = "Y") Then
  loc_1BB64E6:                 var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BB64F0:               Else
  loc_1BB6509:                 var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BB6510:               End If
  loc_1BB6510:             End If
  loc_1BB6510:           End If
  loc_1BB6510:         End If
  loc_1BB6510:       End If
  loc_1BB6510:     End If
  loc_1BB6513:   Else
  loc_1BB655D:     MsgBox("Please Check Printer Setting of Central TOKEN For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_17C, var_1BC, Chr(&H12))
  loc_1BB6578:   End If
  loc_1BB657B:   var_C0.MoveNext
  loc_1BB6580:   GoTo loc_1BB157B
  loc_1BB6583: End If
  loc_1BB6588: Set var_B8 = Nothing
  loc_1BB6590: Set var_BC = Nothing
  loc_1BB6598: Set var_C0 = Nothing
  loc_1BB65A0: Proc_333_81_1BB65B4 = &HFF
  loc_1BB65A6: ' Referenced from: 1BB10DC
  loc_1BB65A6: Proc_6_60_E62BC4(var_2FC, var_188)
  loc_1BB65AB: Proc_333_81_1BB65B4 = var_200
End Sub

Public Sub Proc_333_82_EF9974(arg_C) 'EF9974
  'Data Table: 58F128
  Dim var_8C As Recordset15
  loc_EF989D: Set var_8C = arg_C 
  loc_EF98C5: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EF98F1: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EF991D: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EF992D: var_8C.CursorType = 3
  loc_EF993A: var_8C.LockType = 3
  loc_EF9959: var_8C.Open var_A0, var_B0, -1
  loc_EF9960: Set var_8C = Nothing 
  loc_EF9967: Set var_88 = arg_C 
  loc_EF996B: Proc_333_82_EF9974 = -1
End Sub

Public Sub Proc_333_83_F13A38(arg_C, arg_10, arg_14, arg_18) 'F13A38
  'Data Table: 58F128
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F13947: Set var_88 = arg_C 
  loc_F13956: var_88.AddNew var_98, var_A8
  loc_F1398E: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F139D0: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F139E2: var_98 = arg_18
  loc_F139F6: var_A8 = "Mark"
  loc_F13A12: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F13A2C: var_88.Update var_98, var_A8
  loc_F13A33: Set var_88 = Nothing 
  loc_F13A37: Exit Sub
End Sub

Public Sub Proc_333_84_1571808
  'Data Table: 58F128
  Dim var_D0 As String
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim unk_58F14B As Connection15
  Dim var_160 As String
  Dim var_BC As Recordset15
  Dim var_F8 As Variant
  Dim var_15C As Fields15
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_158 As Variant
  Dim var_1E8 As Variant
  Dim var_238 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_21C As String
  loc_15707A8: On Error Goto loc_1571802
  loc_15707AE: MemVar_1F923C0 = "N"
  loc_15707B5: MemVar_1F923C4 = "N"
  loc_15707BC: MemVar_1F923C8 = "K"
  loc_15707C7: var_D0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_157080C: var_88 = CStr(CVar(var_D0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_157082B: var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1570869: var_8C = CStr(var_108 & Me.Fields.Item("SearchCode").Value & "'")
  loc_1570892: var_108 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15708B2: var_E8 = Me.Fields.Item("SearchCode")
  loc_15708CF: var_D0 = CStr(var_108 & var_E8.Value & "'")
  loc_15708D9: unk_58F14B.Execute var_D0, var_158, -1
  loc_15708E4: Set var_BC = var_15C
  loc_1570908: If (var_88 = vbNullString) Then
  loc_157090B:   Exit Sub
  loc_157090C: End If
  loc_1570914: If (var_8C = vbNullString) Then
  loc_1570917:   Exit Sub
  loc_1570918: End If
  loc_1570936: Set var_D4 = Me.Txt
  loc_157093C: Call 0.Method_Proc_333_84_15718080 (CInt(4), var_E8, var_D0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_1570944: var_F8 = var_E8.Text
  loc_157094D: var_160 = -1 & var_D0
  loc_157095D: unk_58F14B.Execute var_160 & "' AND CONTRADOCID IS NULL", var_15C, var_15C
  loc_1570994: If (var_15C.RecordCount = 1) Then
  loc_157099A:   var_C8 = "New Order"
  loc_15709A0: Else
  loc_15709A7:   Set var_D4 = Me.LblState
  loc_15709B5:   var_C8 = var_D4.Caption
  loc_15709BB: End If
  loc_15709D1: unk_58F14B.Execute var_88, var_F8, -1
  loc_15709DC: Set var_B4 = var_D4
  loc_15709E5: ' Referenced from: 15717E6
  loc_15709F4: If Not(var_BC.EOF) Then
  loc_1570A0D:   unk_58F14B.Execute "SELECT KOTPrinting FROM Enviro", var_F8, -1
  loc_1570A30:   var_D4 = var_D4.Fields
  loc_1570A6B:   If (Trim(CVar(Proc_6_38_E68A98(CVar(var_D4.Item("KOTPrinting")), var_D4))) = "Seperate for All Kitchen") Then
  loc_1570A75:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1570AEE:     var_1C0 = var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1570B2A:     var_8C = CStr(var_1C0 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_1570B58:   Else
  loc_1570B5F:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1570B77:     var_D4 = Me.Fields
  loc_1570B87:     var_F8 = var_D4.Item("SearchCode").Value
  loc_1570B98:     var_138 = var_108 & var_F8 & "' and K.VoidYN<>'Y'" 
  loc_1570B9D:     var_8C = CStr(var_138)
  loc_1570BB2:   End If
  loc_1570BC8:   unk_58F14B.Execute var_8C, var_F8, -1
  loc_1570BD3:   Set var_B8 = var_D4
  loc_1570BF0:   If (var_B8.RecordCount > 0) Then
  loc_1570BF5:     Close 1
  loc_1570C0E:     var_160 = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition)
  loc_1570C1C:     Open var_160 & ".TXT" For Output As 1 Len = &HFF
  loc_1570C2C:     var_B4.MoveFirst
  loc_1570C31:     ' Referenced from: 15715C9
  loc_1570C40:     If Not(var_B4.EOF) Then
  loc_1570C50:       var_90 = "* TOKEN *"
  loc_1570C59:       If (0 = 0) Then
  loc_1570C5E:         Print 1
  loc_1570C92:         var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1570CC5:         Call Proc_333_94_10AC2D0(Me.LblRest.Caption, "D", &H28, var_21C)
  loc_1570CCF:         Print 1, var_21C
  loc_1570CF5:         Call Proc_333_94_10AC2D0(var_90, "D", &H28, var_160)
  loc_1570CFF:         Print 1, var_160
  loc_1570D0E:         var_92 = &H12
  loc_1570D13:         Print 1
  loc_1570D1B:         Print 1
  loc_1570D54:         Proc_6_39_E7C810(var_138, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_1570D76:         var_108 = (Chr(&HF) + "TOKEN No.   : ")
  loc_1570D80:         var_180 = (var_108 + CVar(Proc_6_45_EAD428(CStr(var_138), &HA, var_92)))
  loc_1570D86:         Print 1, var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value
  loc_1570DC1:         var_D4 = var_B4.Fields
  loc_1570E38:         var_108 = (Chr(&HF) + "TOKEN Dt.   : ")
  loc_1570E42:         var_158 = (var_108 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_D4.Item("VDate")), var_D4), &HC)))
  loc_1570E4B:         var_180 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_D4.Item("VDate")), var_D4), &HC))), &HA, var_92)) + " ")
  loc_1570E55:         var_1E8 = (var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1570E5B:         Print 1, var_BC.Fields.Item("Code").Value
  loc_1570EB0:         var_E8 = var_B4.Fields.Item("Remarks")
  loc_1570EED:         var_108 = (Chr(&HF) + "Remarks : ")
  loc_1570EF7:         var_158 = (var_108 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8)), &H32)))
  loc_1570EFE:         var_1A0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_1570F04:         Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1570F3D:         Set var_D4 = Me.Label1
  loc_1570F43:         Call 0.Method_Proc_333_84_15718080 (2, var_E8)
  loc_1570FD8:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_E8))), &HA)))
  loc_1570FE1:         var_180 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_E8))), &HA))), &HA, var_92)) + ": ")
  loc_1570FE8:         var_218 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1570FEB:         var_238 = (Chr(&H12) + var_218)
  loc_1570FF1:         Print 1, var_238
  loc_157103C:         var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1571042:         Print 1, CVar(var_E8)
  loc_157104F:       End If
  loc_1571075:       var_118 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1571081:       var_160 = "Qty"
  loc_157108F:       var_158 = (1 + CVar(Proc_6_52_EAD4F4(var_160, 6, Trim(CVar(var_E8)))))
  loc_1571094:       var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_160, 6, Trim(CVar(var_E8))))), &HA, var_92)))
  loc_15710C1:       var_108 = (Chr(&HF) + CVar(var_AC))
  loc_15710C7:       Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_15710EA:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_15710F0:       Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1571103:       var_92 = (var_92 + 4)
  loc_1571109:       var_B8.MoveFirst
  loc_157110E:       ' Referenced from: 1571453
  loc_157111D:       If Not(var_B8.EOF) Then
  loc_157116D:         Proc_6_39_E7C810(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1571237:         var_300 = IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", IIf((var_B8.Fields.Item("Cancel").Value = "F"), "Free", vbNullString))
  loc_1571261:         var_138 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1571277:         var_1E8 = CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_160, 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_157127A:         var_1F8 = (1 + var_1E8)
  loc_1571290:         var_314 = CVar(Proc_6_52_EAD4F4(CStr(var_300), 6, Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000"))) 'String
  loc_1571293:         var_324 = (var_92 + var_314)
  loc_15712F8:         var_108 = (Chr(&HF) + CVar(CStr(var_324)))
  loc_15712FE:         Print 1, Space(3)
  loc_1571311:         var_92 = (var_92 + 1)
  loc_157131E:         If (var_92 = (&H45 - var_A6)) Then
  loc_1571337:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_157133D:           Print 1, Space(3)
  loc_157134F:           Print 1, "Contd."
  loc_1571367:           Print 1, Chr(&HC)
  loc_1571376:           var_94 = (var_94 + 1)
  loc_157138C:           Call Proc_333_95_1201B54(1, 0, &H28, var_21E)
  loc_15713AB:           Call Proc_333_94_10AC2D0(var_90, "B", &H28, var_160, var_21E)
  loc_15713B5:           Print 1, var_160
  loc_15713C4:           var_92 = &H12
  loc_15713DD:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_15713E3:           Print 1, Space(3)
  loc_1571406:           var_108 = (Chr(&HF) + CVar(var_AC))
  loc_157140C:           Print 1, Space(3)
  loc_157142F:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1571435:           Print 1, Space(3)
  loc_1571448:           var_92 = (var_92 + 4)
  loc_157144B:         End If
  loc_157144E:         var_B8.MoveNext
  loc_1571453:         GoTo loc_157110E
  loc_1571456:       End If
  loc_1571460:       If (var_92 < (&H45 - var_A6)) Then
  loc_1571463:         ' Referenced from: 1571484
  loc_157146D:         If (var_92 = (&H45 - var_A6)) Then
  loc_1571475:           Print 1, vbNullString
  loc_1571481:           var_92 = (var_92 + 1)
  loc_1571484:           GoTo loc_1571463
  loc_1571487:         End If
  loc_1571487:       End If
  loc_157149D:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_15714A3:       Print 1, Space(3)
  loc_1571504:       var_108 = (Chr(&HF) + "Waiter Name  : ")
  loc_157150B:       var_138 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_157150E:       var_158 = (Space(3) + var_138)
  loc_1571514:       Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1571558:       var_108 = (Chr(&HF) + "***  ")
  loc_157155F:       var_138 = Space(3) & Trim(var_C8) 
  loc_1571568:       var_158 = var_138 & "  ***" 
  loc_157156E:       Print 1, var_158
  loc_1571583:       Print 1
  loc_157159E:       var_108 = (Chr(&HF) + "** A Analysis Software **")
  loc_15715A4:       Print 1, Space(3)
  loc_15715B4:       var_B4.MoveNext
  loc_15715BB:       Print 1
  loc_15715C3:       Print 1
  loc_15715C9:       GoTo loc_1570C31
  loc_15715CC:     End If
  loc_15715CE:     Close 1
  loc_1571609:     If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), 1) <> vbNullString) Then
  loc_1571631:       Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_157168F:       Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_15716AF:     Else
  loc_15716D9:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_15716EA:     End If
  loc_15716EC:     Close 1
  loc_15716F6:     If (MemVar_1F923B8 = "Y") Then
  loc_1571728:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1571739:     Else
  loc_1571768:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1571776:     End If
  loc_1571779:   Else
  loc_15717C3:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_138, var_158, Chr(&H12))
  loc_15717DE:   End If
  loc_15717E1:   var_BC.MoveNext
  loc_15717E6:   GoTo loc_15709E5
  loc_15717E9: End If
  loc_15717EE: Set var_B4 = Nothing
  loc_15717F6: Set var_B8 = Nothing
  loc_15717FE: Set var_BC = Nothing
  loc_1571801: Exit Sub
  loc_1571802: ' Referenced from: 15707A8
  loc_1571802: Proc_6_60_E62BC4(var_92)
  loc_1571807: Exit Sub
End Sub

Public Sub Proc_333_85_16BB8F4
  'Data Table: 58F128
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As String
  Dim unk_58F14B As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Variant
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_144 As String
  Dim var_148 As String
  Dim var_12C As Variant
  Dim var_D4 As Variant
  Dim var_AC As Recordset15
  Dim var_B0 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_150 As Field20
  Dim var_128 As Variant
  Dim var_B2 As Integer
  Dim var_118 As Variant
  Dim var_190 As Variant
  Dim var_170 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_BC As Recordset15
  loc_16B9F78: On Error Goto loc_16BB8EB
  loc_16B9F8A: Me.FGrid1.Visible = False
  loc_16B9F9E: Me.LblPendingKot.Visible = False
  loc_16B9FBD: If (Me.RecordCount > 0) Then
  loc_16B9FFF:   var_E4 = "Select K.*,R.name as RName From TOKEN K left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo Where K.Docid='" & Me.Fields.Item("DocID").Value 
  loc_16BA016:   unk_58F14B.Execute CStr(var_E4 & "' order by K.Sno"), var_128, -1
  loc_16BA021:   Set var_AC = var_12C
  loc_16BA03E:   Set var_130 = var_AC 
  loc_16BA07B:   Set var_12C = Me.Txt
  loc_16BA081:   Call 0.Method_Proc_333_85_16BB8F40 (CInt(3), var_134)
  loc_16BA089:   var_134.Text = CStr(var_130.Fields.Item("DocID").Value)
  loc_16BA0B9:   var_C4 = var_130.Fields.Item("vType")
  loc_16BA0C1:   var_D4 = var_C4.Value
  loc_16BA0E7:   var_A4 = 0
  loc_16BA119:   var_140 = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='"
  loc_16BA133:   unk_58F14B.Execute var_140 & CStr(var_D4) & "'", var_D4, -1
  loc_16BA13B:   var_A8 = var_A8.Fields
  loc_16BA143:   var_A4 = var_C4.Item(var_C4)
  loc_16BA14B:   var_12C = var_12C.Value
  loc_16BA15A:   global_268 = CStr(var_E4)
  loc_16BA1B8:   Set var_12C = Me.Txt
  loc_16BA1BE:   Call 0.Method_Proc_333_85_16BB8F40 (CInt(0), var_134, CStr(var_130.Fields.Item("VNo").Value))
  loc_16BA1C6:   var_134.Text = var_E4
  loc_16BA207:   var_E4 = "DD/MMM/YYYY"
  loc_16BA22E:   Set var_12C = Me.Txt
  loc_16BA234:   Call 0.Method_Proc_333_85_16BB8F40 (CInt(1), var_134, CStr(Format(CVar(var_130.Fields.Item("VDate")), var_E4)))
  loc_16BA23C:   var_134.Text = 1
  loc_16BA28E:   Me.LblVPrefix.Caption = CStr(var_130.Fields.Item("vPrefix").Value)
  loc_16BA2D8:   Set var_12C = Me.Txt
  loc_16BA2DE:   Call 0.Method_Proc_333_85_16BB8F40 (CInt(6), var_134)
  loc_16BA2E6:   var_134.Text = Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Remarks")), 1)
  loc_16BA336:   If (var_130.Fields.Item("Pending").Value = "Y") Then
  loc_16BA346:     Me.LblState.Caption = "Running Order"
  loc_16BA351:   Else
  loc_16BA35E:     Me.LblState.Caption = "Completed Order"
  loc_16BA366:   End If
  loc_16BA39E:   var_108 = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='", var_E4)
  loc_16BA3A2:   var_138 = -1 & var_108
  loc_16BA3B2:   unk_58F14B.Execute "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "'", var_12C, var_12C
  loc_16BA3BD:   Set var_B0 = var_12C
  loc_16BA3EB:   If (var_B0.RecordCount > 0) Then
  loc_16BA427:     Set var_12C = Me.Txt
  loc_16BA42D:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(&HB), var_134)
  loc_16BA435:     var_134.Tag = CStr(var_B0.Fields.Item(0).Value)
  loc_16BA484:     Set var_12C = Me.Txt
  loc_16BA48A:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(&HB), var_134)
  loc_16BA492:     var_134.Text = CStr(var_B0.Fields.Item(1).Value)
  loc_16BA4C2:     var_C4 = var_B0.Fields.Item(2)
  loc_16BA4E1:     Set var_12C = Me.Txt
  loc_16BA4E7:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(&HC), var_134)
  loc_16BA4EF:     var_134.Text = CStr(var_C4.Value)
  loc_16BA508:   Else
  loc_16BA516:     Set var_A8 = Me.Txt
  loc_16BA51C:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(&HB), var_C4)
  loc_16BA524:     var_C4.Tag = vbNullString
  loc_16BA53E:     Set var_A8 = Me.Txt
  loc_16BA544:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(&HB), var_C4)
  loc_16BA54C:     var_C4.Text = vbNullString
  loc_16BA566:     Set var_A8 = Me.Txt
  loc_16BA56C:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(&HC), var_C4)
  loc_16BA574:     var_C4.Text = vbNullString
  loc_16BA580:   End If
  loc_16BA5A8:   var_108 = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Waiter")))
  loc_16BA5B6:   Set var_12C = Me.Txt
  loc_16BA5BC:   Call 0.Method_Proc_333_85_16BB8F40 (CInt(5), var_134)
  loc_16BA5C4:   var_134.Tag = var_108
  loc_16BA624:   var_C4 = var_130.Fields.Item("Waiter")
  loc_16BA646:   If CBool(var_C4.Value <> vbNullString) Then
  loc_16BA667:     Set var_A8 = Me.Txt
  loc_16BA66D:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(5), var_C4, var_108, "Select Name From Waiter Where Code='")
  loc_16BA675:     var_D4 = var_C4.Tag
  loc_16BA67E:     var_138 = -1 & var_108
  loc_16BA685:     var_13C = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "' and (code is not null or code <> '')"
  loc_16BA68E:     unk_58F14B.Execute var_13C, var_12C, Proc_6_38_E68A98(CVar(var_130.Fields.Item("Waiter")))
  loc_16BA699:     Set var_B8 = var_12C
  loc_16BA6C5:     If (var_B8.RecordCount > 0) Then
  loc_16BA701:       Set var_12C = Me.Txt
  loc_16BA707:       Call 0.Method_Proc_333_85_16BB8F40 (CInt(5), var_134)
  loc_16BA70F:       var_134.Text = CStr(var_B8.Fields.Item("Name").Value)
  loc_16BA725:     End If
  loc_16BA72A:     Set var_B8 = Nothing
  loc_16BA72D:   End If
  loc_16BA744:   If ((global_160 = "TB") Or (global_160 = "RO")) Then
  loc_16BA77D:     Set var_12C = Me.Txt
  loc_16BA783:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(4), var_134)
  loc_16BA78B:     var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("RoomNo")))
  loc_16BA7A2:   Else
  loc_16BA7D8:     Set var_12C = Me.Txt
  loc_16BA7DE:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(4), var_134)
  loc_16BA7E6:     var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("RName")))
  loc_16BA7FA:   End If
  loc_16BA814:   var_C4 = var_130.Fields.Item("Pending")
  loc_16BA81C:   var_D4 = var_C4.Value
  loc_16BA836:   If (var_D4 = "Y") Then
  loc_16BA877:     Set var_A8 = Me.Txt
  loc_16BA87D:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(4), var_C4, "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='", "sELECT COUNT(DISTINCT VNO) FROM TOKEN WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_D4, -1)
  loc_16BA895:     var_144 = var_134 & "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y')"
  loc_16BA89E:     unk_58F14B.Execute var_144, 0, var_150
  loc_16BA8AE:      = var_134.Item()
  loc_16BA8B6:      = var_150.Value
  loc_16BA8E7:     If (var_C4.Text.Fields = 1) Then
  loc_16BA8F7:       Me.LblState.Caption = "New Order"
  loc_16BA902:     Else
  loc_16BA90F:       Me.LblState.Caption = "Running Order"
  loc_16BA917:     End If
  loc_16BA91A:   Else
  loc_16BA927:     Me.LblState.Caption = "Completed Order"
  loc_16BA92F:   End If
  loc_16BA949:   var_C4 = var_130.Fields.Item("NCTOKEN")
  loc_16BA98A:   Me.ChkNCTOKEN.Value = CInt(IIf((var_C4.Value = "Y"), 1, 0))
  loc_16BA9C0:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_16BA9D0:     Set var_A8 = Me.Txt
  loc_16BA9D6:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(7), var_C4)
  loc_16BA9DE:     var_C4.Visible = True
  loc_16BA9F5:     Set var_A8 = Me.Label1
  loc_16BA9FB:     Call 0.Method_Proc_333_85_16BB8F40 (4, var_C4)
  loc_16BAA03:     var_C4.Visible = True
  loc_16BAA1B:     Me.Frame.Visible = False
  loc_16BAA30:     Me.LblKotNm.Caption = "NC TOKEN"
  loc_16BAA40:     Set var_A8 = Me.cmdNCBill
  loc_16BAA46:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_16BAA51:   Else
  loc_16BAA5E:     Set var_A8 = Me.Txt
  loc_16BAA64:     Call 0.Method_Proc_333_85_16BB8F40 (CInt(7), var_C4)
  loc_16BAA6C:     var_C4.Visible = False
  loc_16BAA83:     Set var_A8 = Me.Label1
  loc_16BAA89:     Call 0.Method_Proc_333_85_16BB8F40 (4, var_C4)
  loc_16BAA91:     var_C4.Visible = False
  loc_16BAAAA:     Me.LblKotNm.Caption = "TOKEN"
  loc_16BAABB:     Set var_A8 = Me.cmdNCBill
  loc_16BAAC1:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_16BAAC9:   End If
  loc_16BAAFF:   Set var_12C = Me.Txt
  loc_16BAB05:   Call 0.Method_Proc_333_85_16BB8F40 (CInt(7), var_134)
  loc_16BAB0D:   var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("NCType")))
  loc_16BAB76:   global_184 = CByte(IIf((var_130.Fields.Item("NCTOKEN").Value = "Y"), 1, 0))
  loc_16BABBA:   var_128 = 1
  loc_16BAC23:   var_108 = Proc_6_38_E68A98(CVar(var_130.Fields.Item("RoomNo")), CByte(IIf((var_130.Fields.Item("NCTOKEN").Value = "Y"), var_128, 0)))
  loc_16BAC31:   Set var_12C = Me.Txt
  loc_16BAC37:   Call 0.Method_Proc_333_85_16BB8F40 (CInt(4), var_134)
  loc_16BAC3F:   var_134.Tag = var_108
  loc_16BAC7E:   var_E4 = "hh:nn"
  loc_16BACA5:   Set var_12C = Me.Txt
  loc_16BACAB:   Call 0.Method_Proc_333_85_16BB8F40 (CInt(2), var_134, CStr(Format(CVar(var_130.Fields.Item("VTIME")), var_E4)))
  loc_16BACB3:   var_134.Text = 1
  loc_16BAD0D:   var_138 = CStr(var_130.Fields.Item("VTIME").Value)
  loc_16BAD15:   var_13C = Replace(var_138, ":", ".", 1, -1, 0)
  loc_16BAD47:   var_148 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and " & CStr(Val("sELECT COUNT(DISTINCT VNO) FROM TOKEN WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='"))
  loc_16BAD57:   unk_58F14B.Execute var_148 & " BETWEEN FromTime AND ToTime", var_E4, -1
  loc_16BAD62:   Set var_B8 = var_12C
  loc_16BAD88:   Set var_130 = Nothing 
  loc_16BAD9B:   Me.FGrid.Redraw = False
  loc_16BADB6:   Me.FGrid.Rows = 1
  loc_16BADC0:   var_B2 = 1
  loc_16BADD0:   var_A4 = "Select K1.*,I.name as ItemName,I.Unit,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (TOKEN K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Where K1.DocId='"
  loc_16BAE19:   unk_58F14B.Execute CStr(var_A4 & Me.Fields.Item("SearchCode").Value & "' order by K1.Sno"), var_128, -1
  loc_16BAE24:   Set var_AC = var_12C
  loc_16BAE52:   If (var_AC.RecordCount > 0) Then
  loc_16BAE55:     ' Referenced from: 16BB39E
  loc_16BAE64:     If Not(var_AC.EOF) Then
  loc_16BAE67:       var_94 = vbNullString
  loc_16BAE71:       Set var_A8 = Me.FGrid
  loc_16BAE86:       Set var_180 = Me.FGrid
  loc_16BAE8D:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_16BAE95:       var_118 = CVar(CLng(0)) 'Long
  loc_16BAEC5:       var_E4 = CVar(CStr(var_AC.Fields.Item("SNo").Value)) 'String
  loc_16BAECC:       LateIdCallSt
  loc_16BAEE6:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_16BAEEE:       var_118 = CVar(CLng(&HA)) 'Long
  loc_16BAF1E:       var_E4 = CVar(CStr(var_AC.Fields.Item("Item").Value)) 'String
  loc_16BAF25:       LateIdCallSt
  loc_16BAF74:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_B2)), var_180, var_E4, CVar(CLng(3)), CVar(CLng(var_B2)))) 'String
  loc_16BAF7B:       LateIdCallSt
  loc_16BAFC6:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_B2)), var_180, var_E4, var_180)) 'String
  loc_16BAFCD:       LateIdCallSt
  loc_16BB018:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16BB01F:       LateIdCallSt
  loc_16BB06A:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16BB071:       LateIdCallSt
  loc_16BB0A3:       var_F4 = CVar(CLng(var_B2)) 'Long
  loc_16BB0AB:       var_190 = CVar(CLng(7)) 'Long
  loc_16BB0D8:       var_128 = CVar(CStr(Format(CVar(var_AC.Fields.Item("qty")), "0.00"))) 'String
  loc_16BB0DF:       LateIdCallSt
  loc_16BB14A:       var_128 = CVar(CStr(Format(CVar(var_AC.Fields.Item("Rate")), "0.00"))) 'String
  loc_16BB151:       LateIdCallSt
  loc_16BB18F:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("VoidYN")), var_180, var_128, 1, 1, CVar(CLng(8)), CVar(CLng(var_B2)))) 'String
  loc_16BB1B1:       var_134 = var_AC.Fields.Item("VoidYN")
  loc_16BB1D1:       var_250 = CVar(CLng(var_B2)) 'Long
  loc_16BB1D9:       var_270 = CVar(CLng(9)) 'Long
  loc_16BB201:       var_1E0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_134), var_180, var_128, 1))) = "Y") 'Variant
  loc_16BB245:       LateIdCallSt
  loc_16BB2AC:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_B2)), var_180, CVar(CStr(IIf((Trim(var_E4) = "F"), "Free", IIf(var_1E0, "Cancel", vbNullString)))))) 'String
  loc_16BB2B3:       LateIdCallSt
  loc_16BB2FE:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16BB305:       LateIdCallSt
  loc_16BB350:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16BB357:       LateIdCallSt
  loc_16BB36D:       var_94 = CVar(CLng(var_B2)) 'Long
  loc_16BB37F:       LateIdCallSt
  loc_16BB389:       Set var_180 = Nothing 
  loc_16BB393:       var_B2 = (var_B2 + 1)
  loc_16BB399:       var_AC.MoveNext
  loc_16BB39E:       GoTo loc_16BAE55
  loc_16BB3A1:     End If
  loc_16BB3BA:     var_94 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16BB3CD:     Set var_C4 = Me.FGrid
  loc_16BB3D3:     LateIdCallSt
  loc_16BB3F8:     Me.FGrid.FixedRows = 1
  loc_16BB400:   End If
  loc_16BB40E:   Me.FGrid.Redraw = True
  loc_16BB41C:   If (var_B2 = 1) Then
  loc_16BB41F:     var_94 = 1
  loc_16BB432:     Me.FGrid.Rows = var_94
  loc_16BB43E:     Set var_12C = Me.FGrid
  loc_16BB458:     var_D4 = CVar(CStr(Proc_6_127_F24F80(var_12C, CInt(0), var_C4, global_120, var_94, var_B2, var_180, global_120))) 'String
  loc_16BB460:     Set var_C4 = Me.FGrid
  loc_16BB484:     var_D4 = Me.FGrid.Rows
  loc_16BB493:     var_94 = CVar((CLng(var_D4) - 1)) 'Long
  loc_16BB4A6:     Set var_C4 = Me.FGrid
  loc_16BB4AC:     LateIdCallSt
  loc_16BB4BE:     var_94 = 1
  loc_16BB4D1:     Me.FGrid.FixedRows = var_94
  loc_16BB4D9:   End If
  loc_16BB4E4:   If (global_68 = "Room Service") Then
  loc_16BB507:     If (Me.LblState.Caption = "Running Order") Then
  loc_16BB51E:       var_108 = "SELECT RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest,GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3 FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_16BB536:       Set var_A8 = Me.Txt
  loc_16BB53C:       Call 0.Method_Proc_333_85_16BB8F40 (CInt(4), var_C4, var_138, var_108 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL and RC.RoomNo='", var_D4, -1, var_12C)
  loc_16BB544:       var_C4 = var_C4.Tag
  loc_16BB55D:       unk_58F14B.Execute global_120 & var_138 & "'  Order by RC.ROOMNO", var_94, FGrid.DispID_10000
  loc_16BB568:       Set var_BC = var_12C
  loc_16BB587:     Else
  loc_16BB594:       var_A4 = "SELECT distinct GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, TOKEN.RoomNo, GuestProf.Name FROM  PayCharge INNER JOIN  TOKEN ON PayCharge.DocId = TOKEN.ContraDocId INNER JOIN   GuestProf ON PayCharge.GuestProf = GuestProf.Code WHERE (TOKEN.DocId = '"
  loc_16BB59F:       var_94 = "DocID"
  loc_16BB5BE:       var_D4 = Me.Fields.Item(var_94).Value
  loc_16BB5C6:       var_E4 = var_A4 & var_D4 
  loc_16BB5D9:       var_128 = var_E4 & "') AND  TOKEN.ContraDocID<>'' AND (PayCharge.RoomType = 'RO') AND (PayCharge.PayCode = '" & CVar(MemVar_1F92078) 
  loc_16BB5F4:       Set var_12C = Me.Txt
  loc_16BB5FA:       Call 0.Method_Proc_333_85_16BB8F40 (CInt(4), var_134, var_108, var_128 & "TOUT') AND  TOKEN.RoomNo='", var_1E0)
  loc_16BB602:       -1 = var_134.Tag
  loc_16BB60A:       var_170 = CVar(var_108) 'String
  loc_16BB624:       unk_58F14B.Execute CStr(var_150 & var_170 & "'"), var_D4, var_94
  loc_16BB62F:       Set var_BC = var_150
  loc_16BB657:     End If
  loc_16BB66B:     If (var_BC.RecordCount > 0) Then
  loc_16BB66E:       ' Referenced from: 16BB7A1
  loc_16BB67F:       If (var_BC.EOF = 0) Then
  loc_16BB6BB:         Set var_12C = Me.Txt
  loc_16BB6C1:         Call 0.Method_Proc_333_85_16BB8F40 (CInt(8), var_134)
  loc_16BB6C9:         var_134.Text = CStr(var_BC.Fields.Item("Comments1").Value)
  loc_16BB718:         Set var_12C = Me.Txt
  loc_16BB71E:         Call 0.Method_Proc_333_85_16BB8F40 (CInt(9), var_134)
  loc_16BB726:         var_134.Text = CStr(var_BC.Fields.Item("Comments2").Value)
  loc_16BB756:         var_C4 = var_BC.Fields.Item("Comments3")
  loc_16BB75E:         var_D4 = var_C4.Value
  loc_16BB775:         Set var_12C = Me.Txt
  loc_16BB77B:         Call 0.Method_Proc_333_85_16BB8F40 (CInt(&HA), var_134)
  loc_16BB783:         var_134.Text = CStr(var_D4)
  loc_16BB79C:         var_BC.MoveNext
  loc_16BB7A1:         GoTo loc_16BB66E
  loc_16BB7A4:       End If
  loc_16BB7A4:     End If
  loc_16BB7A4:   End If
  loc_16BB7A7: Else
  loc_16BB7A7:   Call Proc_333_87_101DA4C(var_180)
  loc_16BB7C7:   var_138 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_16BB7DE:   var_A4 = 0
  loc_16BB7FE:   var_140 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_16BB80E:   unk_58F14B.Execute global_120 & var_138 & "'", var_D4, -1
  loc_16BB816:   var_A8 = var_A8.Fields
  loc_16BB81E:   var_A4 = var_C4.Item(var_C4)
  loc_16BB826:   var_12C = var_12C.Value
  loc_16BB845:   unk_58F14B.Execute CStr(var_E4 & var_E4 & "' Order by Description"), CVar(var_138 & MemVar_1F92078 & "') and V_Type='"), var_170
  loc_16BB850:   Set var_AC = var_134
  loc_16BB890:   If (var_AC.RecordCount > 0) Then
  loc_16BB8C4:     global_152 = CStr(var_AC.Fields.Item(0).Value)
  loc_16BB8D5:   End If
  loc_16BB8D5: End If
  loc_16BB8D5: Call Proc_333_89_EF82C8(-1)
  loc_16BB8DF: Set var_AC = Nothing
  loc_16BB8E7: Set var_BC = Nothing
  loc_16BB8EA: Exit Sub
  loc_16BB8EB: ' Referenced from: 16B9F78
  loc_16BB8EB: Proc_6_60_E62BC4(var_134)
  loc_16BB8F0: Exit Sub
End Sub

Public Sub Proc_333_86_1081720
  'Data Table: 58F128
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_58F14B As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  loc_1081499: Set var_8C = Me.TopCtrl1
  loc_108149F: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(&HFF)
  loc_10814A7: var_A0 = CStr()
  loc_10814B8: If (var_A0 = "Add") Then
  loc_10814E8:   Set var_8C = Me.Txt
  loc_10814EE:   Call 0.Method_Proc_333_86_10817200 (CInt(3), var_A4, var_A0, "Select Count(*) From TOKEN Where DocID='", var_9C, -1)
  loc_108150F:   unk_58F14B.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_108151F:    = var_C4.Item()
  loc_1081527:    = var_D8.Value
  loc_1081554:   If (var_A4.Text.Fields > 0) Then
  loc_108155D:     Call 0.Method_arg_50 (var_A0)
  loc_108157E:     MsgBox("Duplicate TOKEN No.", &H40, CVar(var_A0), var_108, var_118)
  loc_1081594:     Call Proc_333_91_10E99F0(MemVar_1F92044)
  loc_10815A7:     Set var_8C = Me.Txt
  loc_10815AD:     Call 0.Method_Proc_333_86_10817200 (CInt(3), var_A4)
  loc_10815B5:     var_A4.Text = var_A0
  loc_10815C9:     Proc_333_86_1081720 = 0
  loc_10815CF:   End If
  loc_10815CF: End If
  loc_10815F4: For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_11C 'Integer
  loc_10815FE:   var_BC = CVar(CLng(var_88)) 'Long
  loc_1081606:   var_F8 = CVar(CLng(&HA)) 'Long
  loc_1081626:   var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1081642:   If CBool(var_108 <> vbNullString) Then
  loc_1081649:     var_BC = CVar(CLng(var_88)) 'Long
  loc_1081651:     var_F8 = CVar(CLng(7)) 'Long
  loc_1081681:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_10816A9:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_108, var_118)
  loc_10816CF:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_10816DB:       Set var_8C = Me.FGrid
  loc_10816FF:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_108170C:       Proc_333_86_1081720 = 0
  loc_1081712:     End If
  loc_1081712:   End If
  loc_1081715: Next var_11C 'Integer
  loc_108171A: Proc_333_86_1081720 = 
End Sub

Public Sub Proc_333_87_101DA4C
  'Data Table: 58F128
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_101D829: Me.LblVPrefix.Caption = vbNullString
  loc_101D83F: Set var_8C = Me.Txt
  loc_101D845: Call 0.Method_Proc_333_87_101DA4CC (var_8E, var_86)
  loc_101D855: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_101D86B:   Set var_8C = Me.Txt
  loc_101D871:   Call 0.Method_Proc_333_87_101DA4C0 (CInt(var_86), var_98)
  loc_101D879:   var_98.Text = vbNullString
  loc_101D895:   Set var_8C = Me.Txt
  loc_101D89B:   Call 0.Method_Proc_333_87_101DA4C0 (CInt(var_86), var_98)
  loc_101D8A3:   var_98.Tag = vbNullString
  loc_101D8B2: Next var_92 'Byte
  loc_101D8C6: Set var_8C = Me.Txt
  loc_101D8CC: Call 0.Method_Proc_333_87_101DA4C0 (CInt(2), var_98)
  loc_101D8D4: var_98.Text = "00:00"
  loc_101D8EE: Set var_8C = Me.Txt
  loc_101D8F4: Call 0.Method_Proc_333_87_101DA4C0 (CInt(2), var_98)
  loc_101D8FC: var_98.Tag = vbNullString
  loc_101D91B: Me.FGrid.Rows = 1
  loc_101D941: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_101D949: Set var_98 = Me.FGrid
  loc_101D963: var_A8 = 1
  loc_101D96F: var_DC = CVar(CLng(1)) 'Long
  loc_101D982: Set var_8C = Me.FGrid
  loc_101D988: LateIdCallSt
  loc_101D993: var_A8 = 1
  loc_101D99F: var_DC = CVar(CLng(2)) 'Long
  loc_101D9B2: Set var_8C = Me.FGrid
  loc_101D9B8: LateIdCallSt
  loc_101D9DC: var_A8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_101D9EF: Set var_98 = Me.FGrid
  loc_101D9F5: LateIdCallSt
  loc_101DA1A: Me.FGrid.FixedRows = 1
  loc_101DA2E: Me.ChkNCTOKEN.Value = 0
  loc_101DA43: Me.LblState.Caption = vbNullString
  loc_101DA4B: Exit Sub
End Sub

Public Sub Proc_333_88_104D048(arg_C) '104D048
  'Data Table: 58F128
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_104CDE2: Set var_8C = Me.Txt
  loc_104CDE8: Call 0.Method_Proc_333_88_104D048C (var_8E, var_86)
  loc_104CDF8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_104CE0E:   Set var_8C = Me.Txt
  loc_104CE14:   Call 0.Method_Proc_333_88_104D0480 (CInt(var_86), var_98)
  loc_104CE1C:   var_98.Enabled = arg_C
  loc_104CE2B: Next var_92 'Byte
  loc_104CE3E: Set var_8C = Me.cmdNCBill
  loc_104CE44: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(Not(arg_C))
  loc_104CE5C: Set var_8C = Me.Txt
  loc_104CE62: Call 0.Method_Proc_333_88_104D0480 (CInt(2), var_98)
  loc_104CE6A: var_98.Enabled = False
  loc_104CE83: Set var_8C = Me.Txt
  loc_104CE89: Call 0.Method_Proc_333_88_104D0480 (CInt(3), var_98)
  loc_104CE91: var_98.Enabled = False
  loc_104CEAA: Set var_8C = Me.Txt
  loc_104CEB0: Call 0.Method_Proc_333_88_104D0480 (CInt(1), var_98)
  loc_104CEB8: var_98.Enabled = False
  loc_104CED1: Set var_8C = Me.Txt
  loc_104CED7: Call 0.Method_Proc_333_88_104D0480 (CInt(0), var_98)
  loc_104CEDF: var_98.Enabled = False
  loc_104CEF8: Set var_8C = Me.Txt
  loc_104CEFE: Call 0.Method_Proc_333_88_104D0480 (CInt(4), var_98)
  loc_104CF06: var_98.Enabled = False
  loc_104CF1F: Set var_8C = Me.Txt
  loc_104CF25: Call 0.Method_Proc_333_88_104D0480 (CInt(&HD), var_98)
  loc_104CF2D: var_98.Enabled = False
  loc_104CF46: Set var_8C = Me.Txt
  loc_104CF4C: Call 0.Method_Proc_333_88_104D0480 (CInt(5), var_98)
  loc_104CF54: var_98.Enabled = False
  loc_104CF6D: Set var_8C = Me.Txt
  loc_104CF73: Call 0.Method_Proc_333_88_104D0480 (CInt(8), var_98)
  loc_104CF7B: var_98.Enabled = False
  loc_104CF94: Set var_8C = Me.Txt
  loc_104CF9A: Call 0.Method_Proc_333_88_104D0480 (CInt(9), var_98)
  loc_104CFA2: var_98.Enabled = False
  loc_104CFBB: Set var_8C = Me.Txt
  loc_104CFC1: Call 0.Method_Proc_333_88_104D0480 (CInt(&HA), var_98)
  loc_104CFC9: var_98.Enabled = False
  loc_104CFE0: If (global_168 = "Auto") Then
  loc_104CFF0:   Set var_8C = Me.Txt
  loc_104CFF6:   Call 0.Method_Proc_333_88_104D0480 (CInt(&HB), var_98)
  loc_104CFFE:   var_98.Enabled = False
  loc_104D017:   Set var_8C = Me.Txt
  loc_104D01D:   Call 0.Method_Proc_333_88_104D0480 (CInt(&HC), var_98)
  loc_104D025:   var_98.Enabled = False
  loc_104D031: End If
  loc_104D03E: Me.ChkNCTOKEN.Enabled = arg_C
  loc_104D046: Exit Sub
End Sub

Public Sub Proc_333_89_EF82C8
  'Data Table: 58F128
  loc_EF8208: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF821A:   Me.DGItem.Visible = False
  loc_EF8222: End If
  loc_EF823E: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF8250:   Me.DGTable.Visible = False
  loc_EF8258: End If
  loc_EF8274: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF8286:   Me.DGRest.Visible = False
  loc_EF828E: End If
  loc_EF82AA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF82BC:   Me.FGPoint.Visible = False
  loc_EF82C4: End If
  loc_EF82C4: Exit Sub
End Sub

Public Sub Proc_333_90_F0D4D0
  'Data Table: 58F128
  loc_F0D3F4: Call Proc_333_89_EF82C8()
  loc_F0D404: Set var_88 = Me.Txt
  loc_F0D40A: Call 0.Method_Proc_333_90_F0D4D00 (CInt(1))
  loc_F0D433: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0D436:   Exit Sub
  loc_F0D437: End If
  loc_F0D442: Set var_88 = Me.Txt
  loc_F0D448: Call 0.Method_Proc_333_90_F0D4D00 (CInt(0), var_8C)
  loc_F0D471: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0D474:   Exit Sub
  loc_F0D475: End If
  loc_F0D4AC: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0D4AF:   Call TopCtrl1_UnknownEvent_16()
  loc_F0D4B7: Else
  loc_F0D4BD:   Call 0.Method_arg_1E8 (var_88)
  loc_F0D4C5:   Call var_88.SetFocus
  loc_F0D4CE: End If
  loc_F0D4CE: Exit Sub
End Sub

Public Sub Proc_333_91_10E99F0
  'Data Table: 58F128
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_10E9718: var_90 = global_152
  loc_10E972F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10E9760: Set var_A8 = Me.Txt
  loc_10E9766: Call 0.Method_Proc_333_91_10E99F00 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E9775: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10E977D: var_EC = -1 & var_CC 
  loc_10E9791: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E979C: Set var_8C = var_134
  loc_10E97D8: If (var_8C.RecordCount > 0) Then
  loc_10E9817:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E984B:     global_260 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E9876:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E988B:     var_CC = (var_AC.Value + 1)
  loc_10E9894:     global_264 = CLng(var_CC)
  loc_10E98A5:   End If
  loc_10E98A5: End If
  loc_10E98D0: var_BC = Space((5 - Len(var_90)))
  loc_10E98D8: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10E98EC: var_EC = Space((5 - Len(global_260)))
  loc_10E98F4: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E9901: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_260))
  loc_10E991A: var_14C = Space((8 - Len(CStr(global_264))))
  loc_10E9922: var_15C = (var_130 + var_14C)
  loc_10E9931: var_17C = (var_15C + CVar(CStr(global_264)))
  loc_10E993C: global_256 = CStr(var_17C)
  loc_10E9972: Me.LblVPrefix.Caption = global_260
  loc_10E998B: Set var_A8 = Me.Txt
  loc_10E9991: Call 0.Method_Proc_333_91_10E99F00 (CInt(3), var_AC)
  loc_10E9999: var_AC.Text = global_256
  loc_10E99BB: Set var_A8 = Me.Txt
  loc_10E99C1: Call 0.Method_Proc_333_91_10E99F00 (CInt(0), var_AC)
  loc_10E99C9: var_AC.Text = CStr(global_264)
  loc_10E99DE: var_88 = global_256
  loc_10E99E6: Set var_8C = Nothing
  loc_10E99E9: Proc_333_91_10E99F0 = global_264
End Sub

Public Sub Proc_333_92_FC2028
  'Data Table: 58F128
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC1EAB: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FC1EB0:   var_92 = 4 'Byte
  loc_FC1EB4: End If
  loc_FC1EBD: Set var_98 = Me.TxtGrid
  loc_FC1EC3: Call 0.Method_Proc_333_92_FC20280 (0, var_B0)
  loc_FC1EE6: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC1F1A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC1F3E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC1F41:     GoTo loc_FC2013
  loc_FC1F44:   End If
  loc_FC1F48:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC1F72:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC1F7C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC1FB1:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC1FD5:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC1FEE:     Set var_98 = Me.TxtGrid
  loc_FC1FF4:     Call 0.Method_Proc_333_92_FC20280 (0, var_B0, CVar(CLng(var_92)))
  loc_FC1FFC:     var_B0.SetFocus
  loc_FC200D:     Proc_333_92_FC2028 = 0
  loc_FC2013:     ' Referenced from: FC1F41
  loc_FC2013:   End If
  loc_FC2016: Next var_D4 'Integer
  loc_FC2020: Proc_333_92_FC2028 = &HFF
End Sub

Public Sub Proc_333_93_11FE478
  'Data Table: 58F128
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_D0 As String
  loc_11FDFD2: Set global_100 = New 
  loc_11FDFE4: Me.Recordset15.CursorLocation = 3
  loc_11FDFEF: var_8C = global_68
  loc_11FDFFA: If (var_8C = "Hall") Then
  loc_11FE022:   var_A0 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')and  T.Type in('HL') Order by T.Code") 'String
  loc_11FE02C:   Me.Open var_A0, CVar(MemVar_1F92044), 3
  loc_11FE043:   Set var_88 = Me.Label1
  loc_11FE049:   Call 0.Method_Proc_333_93_11FE4780 (2, var_B4, "Hall")
  loc_11FE051:   var_B4.Caption = 1
  loc_11FE06D:   Set var_88 = Me.DGTable
  loc_11FE08C:   DGTable.DispID_69.Item(1).Caption = "Hall"
  loc_11FE0A3:   global_156 = "HALL"
  loc_11FE0AD:   global_160 = "HL"
  loc_11FE0C2:   Set var_88 = Me.DGTable
  loc_11FE0E1:   DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FE103:   Set var_88 = Me.DGTable
  loc_11FE114:   Set var_B4 = DGTable.DispID_69
  loc_11FE122:   var_B4.Item(3).Width = CDbl(0)
  loc_11FE141:   Set var_88 = Me.Txt
  loc_11FE147:   Call 0.Method_Proc_333_93_11FE4780 (CInt(4), var_B4)
  loc_11FE14F:   var_BC = var_B4.Width
  loc_11FE166:   Me.DGTable.Width = CVar(var_BC)
  loc_11FE177: Else
  loc_11FE17F:   If (var_8C = "Outlet") Then
  loc_11FE18E:     Set var_88 = Me.Label1
  loc_11FE194:     Call 0.Method_Proc_333_93_11FE4780 (2, var_B4)
  loc_11FE19C:     var_B4.Caption = "Table #"
  loc_11FE1B8:     Set var_88 = Me.DGTable
  loc_11FE1D7:     DGTable.DispID_69.Item(1).Caption = "Table No"
  loc_11FE20D:     var_D0 = "Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and T.Type in ('TB') And RestCode='"
  loc_11FE228:     Me.Open CVar(var_D0 & LocalRestCode & "' Order By T.Code"), CVar(MemVar_1F92044), 3
  loc_11FE23F:     global_156 = "REST"
  loc_11FE249:     global_160 = "TB"
  loc_11FE25E:     Set var_88 = Me.DGTable
  loc_11FE27D:     DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FE29F:     Set var_88 = Me.DGTable
  loc_11FE2B0:     Set var_B4 = DGTable.DispID_69
  loc_11FE2BE:     var_B4.Item(3).Width = CDbl(0)
  loc_11FE2DD:     Set var_88 = Me.Txt
  loc_11FE2E3:     Call 0.Method_Proc_333_93_11FE4780 (CInt(4), var_B4, var_BC)
  loc_11FE2EB:     1 = var_B4.Width
  loc_11FE302:     Me.DGTable.Width = CVar(var_BC)
  loc_11FE313:   Else
  loc_11FE31B:     If (var_8C = "Room Service") Then
  loc_11FE32A:       Set var_88 = Me.Label1
  loc_11FE330:       Call 0.Method_Proc_333_93_11FE4780 (2, var_B4, "Room #")
  loc_11FE338:       var_B4.Caption = -1
  loc_11FE354:       Set var_88 = Me.DGTable
  loc_11FE373:       DGTable.DispID_69.Item(1).Caption = "Room No"
  loc_11FE3A2:       var_90 = "SELECT RC.RoomNo AS Code, RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3  FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_11FE3A9:       var_A0 = CVar(var_90 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO") 'String
  loc_11FE3B3:       Me.Open var_A0, CVar(MemVar_1F92044), 3
  loc_11FE3C4:       global_160 = "RO"
  loc_11FE3DA:       Set var_88 = Me.DGTable
  loc_11FE3F9:       DGTable.DispID_69.Item(1).Width = CDbl(1515)
  loc_11FE41C:       Set var_88 = Me.DGTable
  loc_11FE43B:       DGTable.DispID_69.Item(2).Width = CDbl(3539)
  loc_11FE44C:       GoTo loc_11FE44F
  loc_11FE44F:       ' Referenced from:     11FE44C
  loc_11FE44F:     End If
  loc_11FE44F:   End If
  loc_11FE44F: End If
  loc_11FE458: CVarUnk
  loc_11FE45D: VerifyVarObj
  loc_11FE463: Set var_88 = Me.DGTable
  loc_11FE469: LateIdStAd
  loc_11FE477: Exit Sub
End Sub

Public Sub Proc_333_94_10AC2D0(arg_C, arg_10, arg_14) '10AC2D0
  'Data Table: 58F128
  Dim var_AC As Variant
  Dim var_8A As Integer
  Dim arg_14 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10AC025: var_88 = vbNullString
  loc_10AC03C: arg_C = CStr(Trim(arg_C))
  loc_10AC048: var_8A = CInt(Len(arg_C))
  loc_10AC04E: var_C0 = arg_10
  loc_10AC059: If (var_C0 = "A") Then
  loc_10AC078:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10AC07C:   var_9C = arg_C 'Variant
  loc_10AC0D2:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10AC0E6:   var_110 = (0 + Chr(&H1B))
  loc_10AC0EF:   var_120 = (var_110 + "G")
  loc_10AC103:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10AC10D:   var_150 = (var_140 + CVar(arg_C))
  loc_10AC121:   var_170 = (var_150 + Chr(&H1B))
  loc_10AC12A:   var_190 = (var_170 + "H")
  loc_10AC12F:   var_88 = CStr(var_190)
  loc_10AC150: Else
  loc_10AC158:   If (var_C0 = "D") Then
  loc_10AC166:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10AC177:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AC17B:     var_9C = "G" 'Variant
  loc_10AC1D1:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10AC1E5:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AC1EF:     var_120 = (var_110 + CVar(arg_C))
  loc_10AC1F4:     var_88 = CStr(var_120)
  loc_10AC209:   Else
  loc_10AC211:     If (var_C0 = "E") Then
  loc_10AC222:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AC226:       var_9C = CVar(arg_C) 'Variant
  loc_10AC27C:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10AC290:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AC29A:       var_120 = (var_110 + CVar(arg_C))
  loc_10AC2AE:       var_140 = (var_120 + Chr(&H12))
  loc_10AC2B3:       var_88 = CStr(var_140)
  loc_10AC2C9:     End If
  loc_10AC2C9:   End If
  loc_10AC2C9: End If
  loc_10AC2C9: Proc_333_94_10AC2D0 = arg_14
End Sub

Public Sub Proc_333_95_1201B54(arg_C, arg_10, arg_14) '1201B54
  'Data Table: 58F128
  Dim var_E0 As String
  Dim var_134 As Variant
  Dim var_164 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_264 As Variant
  Dim var_DC As Variant
  Dim var_194 As Variant
  Dim var_244 As Variant
  Dim var_184 As Variant
  Dim arg_10 As Integer
  loc_12016F1: var_90 = vbNullString
  loc_12016F7: var_94 = vbNullString
  loc_12016FD: var_98 = vbNullString
  loc_1201703: var_9C = vbNullString
  loc_120170E: If (MemVar_1F923C0 = "Y") Then
  loc_1201718:   var_E0 = vbNullString & "DATE "
  loc_1201749:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_120175C: End If
  loc_1201764: If (MemVar_1F923C4 = "Y") Then
  loc_12017C8:   var_164 = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, "dd/MM/yy")))), 0))
  loc_12017EF:   var_1B4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_12017F7:   var_1D4 = (var_164 - Len(var_1B4))
  loc_1201808:   var_204 = (CVar(var_8C) + Space(CLng(var_1D4)))
  loc_1201811:   var_224 = (var_204 + " PAGE NO ")
  loc_1201833:   var_264 = (var_224 + Trim(Str(arg_C)))
  loc_1201838:   var_8C = CStr(var_264)
  loc_1201865: End If
  loc_1201873: If (MemVar_1F923C8 = "K") Then
  loc_1201880:   If (Len(MemVar_1F92130) <= &H28) Then
  loc_1201899:     var_DC = (CVar(var_90) + Chr(&HF))
  loc_12018AD:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_12018C1:     var_164 = (0 + Chr(&H1B))
  loc_12018D5:     var_194 = (var_164 + Chr(&H45))
  loc_12018DF:     var_1B4 = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_12018F3:     var_1D4 = (var_1B4 + Chr(&H1B))
  loc_1201907:     var_204 = (var_1D4 + Chr(&H46))
  loc_120191B:     var_244 = (var_204 + Chr(&HE))
  loc_1201920:     var_90 = CStr(Str(arg_C))
  loc_1201947:   Else
  loc_120195D:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_1201971:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_1201985:     var_164 = (0 + Chr(&HF))
  loc_120198F:     var_184 = (var_164 + CVar(MemVar_1F92130))
  loc_12019A3:     var_1B4 = (Chr(&H45) + Chr(&H12))
  loc_12019A8:     var_90 = CStr(var_1B4)
  loc_12019C0:   End If
  loc_12019CA:   If (Len(MemVar_1F92134) > 0) Then
  loc_12019F6:     Call Proc_333_94_10AC2D0(MemVar_1F92134, "D", CInt(Val(CStr(arg_14))))
  loc_12019FF:     var_94 = var_270 & var_270
  loc_1201A0B:   End If
  loc_1201A15:   If (Len(MemVar_1F92138) > 0) Then
  loc_1201A41:     Call Proc_333_94_10AC2D0(MemVar_1F92138, "D", CInt(Val(CStr(arg_14))))
  loc_1201A4A:     var_98 = var_270 & var_270
  loc_1201A56:   End If
  loc_1201A60:   If (Len(MemVar_1F9213C) > 0) Then
  loc_1201A8C:     Call Proc_333_94_10AC2D0(MemVar_1F9213C, "D", CInt(Val(CStr(arg_14))))
  loc_1201A95:     var_9C = var_270 & var_270
  loc_1201AA1:   End If
  loc_1201AA1: End If
  loc_1201AAB: If (Len(var_8C) > 0) Then
  loc_1201AB3:   Print 1, var_8C
  loc_1201ABF:   arg_10 = (arg_10 + 1)
  loc_1201AC2: End If
  loc_1201ACC: If (Len(var_90) > 0) Then
  loc_1201AD4:   Print 1, var_90
  loc_1201AE0:   arg_10 = (arg_10 + 1)
  loc_1201AE3: End If
  loc_1201AED: If (Len(var_94) > 0) Then
  loc_1201AF5:   Print 1, var_94
  loc_1201B01:   arg_10 = (arg_10 + 1)
  loc_1201B04: End If
  loc_1201B0E: If (Len(var_98) > 0) Then
  loc_1201B16:   Print 1, var_98
  loc_1201B22:   arg_10 = (arg_10 + 1)
  loc_1201B25: End If
  loc_1201B2F: If (Len(var_9C) > 0) Then
  loc_1201B37:   Print 1, var_9C
  loc_1201B43:   arg_10 = (arg_10 + 1)
  loc_1201B46: End If
  loc_1201B4C: Proc_333_95_1201B54 = arg_10
End Sub

Public Sub Proc_333_96_F1FCA4(arg_C, arg_10, arg_14) 'F1FCA4
  'Data Table: 58F128
  Dim unk_58F14B As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F1FBE9: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F1FC1B: unk_58F14B.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F1FC26: Set var_90 = var_15C
  loc_F1FC58: If (var_90.RecordCount > 0) Then
  loc_F1FC86:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F1FC96: Else
  loc_F1FC99:   var_8C = CDbl(0)
  loc_F1FC9C: End If
  loc_F1FC9C: Proc_333_96_F1FCA4 = var_8C
End Sub

Public Sub Proc_333_97_FF5848
  'Data Table: 58F128
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As String
  Dim unk_58F14B As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_86 As Integer
  loc_FF5678: Set global_240 = New RsTouchScreenKeyBoard
  loc_FF5691: Me.ParentForm = CVar(Me)
  loc_FF56A6: Me.TxtKeyBoard.MaxLength = 20
  loc_FF56B3: var_C4 = Me.TxtKeyBoard
  loc_FF56C5: var_E4 = Me.TxtKeyBoard
  loc_FF56CA: var_E4.BackColor = var_C4.ForeColor
  loc_FF56E0: var_E4.Caption = "User Password"
  loc_FF56F8: Form.Show 1, var_B4
  loc_FF5729: Proc_6_17_EAA2B0(var_C4, MemVar_1F920C8, "SELECT IsNull(Max(PASSWD),'') FROM USERMAST WHERE USER_NAME=", var_E4, -1)
  loc_FF573F: unk_58F14B.Execute CStr(var_90 & var_C4), var_94, 0
  loc_FF574F:  = var_94.Item(var_11C)
  loc_FF5757:  = var_90.Fields.Value
  loc_FF57A2: If CBool(Trim(CVar(TxtKeyBoard)) <> vbNullString) Then
  loc_FF57C4:   Call Proc_333_98_EE8624(CStr(var_11C), var_120)
  loc_FF57CC:   var_E4 = CVar(var_120) 'String
  loc_FF57D2:   var_11C = Ucase(var_E4)
  loc_FF57E7:   If (Ucase(CVar(TxtKeyBoard)) = var_11C) Then
  loc_FF57EC:     var_86 = &HFF
  loc_FF57F2:   Else
  loc_FF5813:     MsgBox("Invalid Password.", &H10, "User Authentication", var_E4, var_11C)
  loc_FF5825:     var_86 = 0
  loc_FF5828:   End If
  loc_FF582B: Else
  loc_FF582D:   var_86 = 0
  loc_FF5830: End If
  loc_FF583B: Set global_240 = Nothing
  loc_FF5842: Proc_333_97_FF5848 = var_86
End Sub

Public Sub Proc_333_98_EE8624(arg_C) 'EE8624
  'Data Table: 58F128
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE8592: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE85B1: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE85D4:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE85F0:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE85F8:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE85FD:   var_8C = CStr(var_108)
  loc_EE8611: Next var_B8 'Integer
  loc_EE8619: var_88 = var_8C
  loc_EE861C: Proc_333_98_EE8624 = 
End Sub
