VERSION 5.00
Begin VB.Form RsTouchScreenKOTEntry
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
    Begin TextBox TxtNCKOT
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
    Begin TextBox TxtNCKOT
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
  Begin CheckBox ChkNCKOT
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

Attribute VB_Name = "RsTouchScreenKOTEntry"

Private global_110 As Integer
Private global_96 As Long
Private global_100 As Long
Private MasterFormExit As Integer
Private global_268 As Long
Private global_188 As Long
Private global_104 As Long
Private global_264 As Integer
Private global_256 As Long

Public Sub CmNC_UnknownEvent_9(Index As Integer) '1188724
  'Data Table: 5921C0
  Dim var_8E As Integer
  Dim var_AC As String
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_D4 As TextBox
  Dim var_C8 As Variant
  Dim var_94 As Variant
  Dim arg_1E00 As Integer
  loc_118834B: var_8E = Index
  loc_1188354: If Not (var_8E = 0) Then
  loc_118835D:   If Not (var_8E = 1) Then
  loc_1188366:     If Not (var_8E = 2) Then
  loc_118836F:       If Not (var_8E = 3) Then
  loc_1188378:         If Not (var_8E = 4) Then
  loc_1188381:           If Not (var_8E = 5) Then
  loc_118838A:             If Not (var_8E = 6) Then
  loc_1188393:               If Not (var_8E = 7) Then
  loc_118839C:                 If Not (var_8E = 8) Then
  loc_11883A5:                   If Not (var_8E = 9) Then
  loc_11883AE:                     If Not (var_8E = &HA) Then
  loc_11883B7:                       If Not (var_8E = &HB) Then
  loc_11883C0:                         If Not (var_8E = &HC) Then
  loc_11883C9:                           If Not (var_8E = &HD) Then
  loc_11883D2:                             If Not (var_8E = &HE) Then
  loc_11883DB:                               If Not (var_8E = &HF) Then
  loc_11883E4:                                 If Not (var_8E = &H10) Then
  loc_11883ED:                                   If Not (var_8E = &H11) Then
  loc_11883F6:                                     If Not (var_8E = &H12) Then
  loc_11883FF:                                       If Not (var_8E = &H13) Then
  loc_1188408:                                         If Not (var_8E = &H14) Then
  loc_1188411:                                           If Not (var_8E = &H15) Then
  loc_118841A:                                             If Not (var_8E = &H16) Then
  loc_1188423:                                               If Not (var_8E = &H17) Then
  loc_118842C:                                                 If Not (var_8E = &H18) Then
  loc_1188435:                                                   If (var_8E = &H19) Then
  loc_1188438:                                                   End If
  loc_1188438:                                                 End If
  loc_1188438:                                               End If
  loc_1188438:                                             End If
  loc_1188438:                                           End If
  loc_1188438:                                         End If
  loc_1188438:                                       End If
  loc_1188438:                                     End If
  loc_1188438:                                   End If
  loc_1188438:                                 End If
  loc_1188438:                               End If
  loc_1188438:                             End If
  loc_1188438:                           End If
  loc_1188438:                         End If
  loc_1188438:                       End If
  loc_1188438:                     End If
  loc_1188438:                   End If
  loc_1188438:                 End If
  loc_1188438:               End If
  loc_1188438:             End If
  loc_1188438:           End If
  loc_1188438:         End If
  loc_1188438:       End If
  loc_1188438:     End If
  loc_1188438:   End If
  loc_1188442:   Set var_94 = Me.CmNC
  loc_1188448:   Call 0.Method_CmNC_UnknownEvent_90 (Index, var_98)
  loc_1188450:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_8E)
  loc_1188458:   var_AC = CStr()
  loc_1188460:   var_86 = Asc(var_AC)
  loc_1188480:   var_8C = CStr(Chr(CLng(var_86)))
  loc_118848C:   Me.MoveFirst
  loc_11884B0:   Set var_94 = Me.TxtNCKOT
  loc_11884B6:   Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98, var_AC, "NcType Like '")
  loc_11884BE:   0 = var_98.Text
  loc_11884DE:   Me.Find 1 & var_AC & var_8C & "", var_C8, var_86
  loc_118851E:   If ((Me.BOF = 0) And (Me.EOF = 0)) Then
  loc_118852F:     Set var_94 = Me.TxtNCKOT
  loc_1188535:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98)
  loc_1188557:     Set var_D0 = Me.TxtNCKOT
  loc_118855D:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_D4)
  loc_1188565:     var_D4.Text = var_98.Text & var_8C
  loc_118859E:     Me.FGNCType.Row = CVar(CLng(Me.Bookmark))
  loc_11885BC:     Me.FGNCType.Col = 1
  loc_11885C4:   End If
  loc_11885C7: Else
  loc_11885CF:   If (var_8E = CInt(&H1A)) Then
  loc_11885E0:     Set var_94 = Me.TxtNCKOT
  loc_11885E6:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98)
  loc_11885EE:     var_98.Text = vbNullString
  loc_11885FD:   Else
  loc_1188605:     If (var_8E = CInt(&H1B)) Then
  loc_118861B:       var_C8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_118864C:       Set var_D0 = Me.Txt
  loc_1188652:       Call 0.Method_CmNC_UnknownEvent_90 (CInt(7), var_D4, CStr(Me.FGNCType.TextMatrix)))
  loc_118865A:       var_D4.Text = 1
  loc_1188687:       var_C8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_11886B8:       Set var_D0 = Me.Txt
  loc_11886BE:       Call 0.Method_CmNC_UnknownEvent_90 (CInt(7), var_D4, CStr(Me.FGNCType.TextMatrix)))
  loc_11886C6:       var_D4.Tag = 0
  loc_11886EC:       Me.Frame.Visible = False
  loc_11886F8:       Set var_94 = Me.CmChngSteward
  loc_11886FE:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_C8)
  loc_1188711:       Me.FrameGrpItem.Enabled = CBool(var_C8)
  loc_1188720:     End If
  loc_1188720:   End If
  loc_1188720: End If
  loc_1188720: Exit Sub
  loc_1188721: arg_1E00 = 
End Sub

Private Sub FGNCType_UnknownEvent_9 'E98D8C
  'Data Table: 5921C0
  Dim var_A8 As Variant
  Dim var_F4 As TextBox
  loc_E98D2F: var_A8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_E98D60: Set var_F0 = Me.TxtNCKOT
  loc_E98D66: Call 0.Method_FGNCType_UnknownEvent_90 (CInt(1), var_F4, CStr(Me.FGNCType.TextMatrix)))
  loc_E98D6E: var_F4.Text = 1
  loc_E98D88: Exit Sub
  loc_E98D89: CopyBytes -513
End Sub

Private Sub FGPoint_UnknownEvent_9 'E84868
  'Data Table: 5921C0
  loc_E84814: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E84817:   Call DGTable_UnknownEvent_9()
  loc_E8481C: End If
  loc_E84838: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E8483B:   Call DGItem_UnknownEvent_9()
  loc_E84840: End If
  loc_E8485C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E8485F:   Call DGRest_UnknownEvent_9()
  loc_E84864: End If
  loc_E84864: Exit Sub
  loc_E84865: CExtInstUnk
End Sub

Private Sub SSPPrevious_UnknownEvent_9 '10EEC24
  'Data Table: 5921C0
  Dim Me As Variant
  loc_10EE907: If (global_220 = "Item") Then
  loc_10EE910:   global_220 = "Item"
  loc_10EE92B:   If (Me.AbsolutePosition = -3) Then
  loc_10EE939:     If (global_228 > CInt(&H10)) Then
  loc_10EE95D:       Me.AbsolutePosition = CLng((((global_228 - (global_228 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10EE976:       Set var_94 = Me.SSPItem
  loc_10EE999:       Call Proc_251_78_1283A50(Me.SSPItem, CInt(4), global_236)
  loc_10EE9A5:       global_216 = CInt(var_A4)
  loc_10EE9B6:     End If
  loc_10EE9B9:   Else
  loc_10EE9E8:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EEA00:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10EEA0E:         Me.AbsolutePosition = 1
  loc_10EEA16:       Else
  loc_10EEA3C:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10EEA41:       End If
  loc_10EEA78:       Call Proc_251_78_1283A50(Me.SSPItem, CInt(4), global_236, CInt(4), Me.SSPItem)
  loc_10EEA84:       global_216 = CInt(var_A4)
  loc_10EEA95:     End If
  loc_10EEA95:   End If
  loc_10EEA98: Else
  loc_10EEA9E:   global_220 = "Group"
  loc_10EEAB9:   If (Me.AbsolutePosition = -3) Then
  loc_10EEAC7:     If (global_224 > CInt(&H10)) Then
  loc_10EEAEB:       Me.AbsolutePosition = CLng((((global_224 - (global_224 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10EEB27:       Call Proc_251_78_1283A50(Me.SSPGroup, CInt(4), global_240, CInt(4), Me.SSPGroup, var_A4)
  loc_10EEB33:       global_216 = CInt(var_A4)
  loc_10EEB44:     End If
  loc_10EEB47:   Else
  loc_10EEB76:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EEB8E:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10EEB9C:         Me.AbsolutePosition = 1
  loc_10EEBA4:       Else
  loc_10EEBCA:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10EEBCF:       End If
  loc_10EEC06:       Call Proc_251_78_1283A50(Me.SSPGroup, CInt(4), global_240, CInt(4), Me.SSPGroup, var_A4, global_216)
  loc_10EEC12:       global_216 = CInt(var_A4)
  loc_10EEC23:     End If
  loc_10EEC23:   End If
  loc_10EEC23: End If
  loc_10EEC23: Exit Sub
End Sub

Private Sub SSPNext_UnknownEvent_9 'F3451C
  'Data Table: 5921C0
  Dim Me As Variant
  loc_F3440F: If (global_220 = "Item") Then
  loc_F34418:   global_220 = "Item"
  loc_F34433:   If (Me.AbsolutePosition > 0) Then
  loc_F3443C:     Me.MoveNext
  loc_F34455:     Set var_94 = Me.SSPItem
  loc_F34478:     Call Proc_251_78_1283A50(Me.SSPItem, CInt(4), global_236)
  loc_F34484:     global_216 = CInt(var_A4)
  loc_F34495:   End If
  loc_F34498: Else
  loc_F3449E:   global_220 = "Group"
  loc_F344B9:   If (Me.AbsolutePosition > 0) Then
  loc_F344C2:     Me.MoveNext
  loc_F344FE:     Call Proc_251_78_1283A50(Me.SSPGroup, CInt(4), global_240, CInt(4), Me.SSPGroup)
  loc_F3450A:     global_216 = CInt(var_A4)
  loc_F3451B:   End If
  loc_F3451B: End If
  loc_F3451B: Exit Sub
End Sub

Private Sub CmChngMember_UnknownEvent_9 'F9074C
  'Data Table: 5921C0
  Dim var_B4 As String
  Dim var_88 As Recordset15
  Dim var_CC As Fields15
  Dim var_C8 As Variant
  Dim var_D8 As TextBox
  Dim var_D0 As TextBox
  loc_F90605: RsTouchScreenSteward.pOpenAs = "Member"
  loc_F9061D: Call 0.Method_arg_2B0 (1)
  loc_F90644: var_B4 = "Select Name,CardNo From SubGroup where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And SubCode='" & MemVar_1F92230
  loc_F90654: RsTouchScreenSteward.Connection15.Execute var_B4 & "'", var_C8, -1
  loc_F9065F: Set var_88 = var_CC
  loc_F90682: var_CC = var_88.Fields
  loc_F9068A: var_D0 = var_CC.Item("Name")
  loc_F906A9: Set var_D4 = Me.Txt
  loc_F906AF: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HB), var_D8)
  loc_F906B7: var_D8.Text = Proc_6_38_E68A98(CVar(var_D0), var_CC)
  loc_F906D9: Set var_CC = Me.Txt
  loc_F906DF: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HB), var_D0)
  loc_F906E7: var_D0.Tag = MemVar_1F92230
  loc_F90729: Set var_D4 = Me.Txt
  loc_F9072F: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HC), var_D8)
  loc_F90737: var_D8.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))
  loc_F9074B: Exit Sub
End Sub

Private Sub HeadExit_UnknownEvent_9 'E17398
  'Data Table: 5921C0
  loc_E1738D: Me.Global.Unload Me
  loc_E17395: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11C78
  'Data Table: 5921C0
  loc_E11C69: Call FGrid_UnknownEvent_C()
  loc_E11C73: global_110 = 0
  loc_E11C76: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F7B824
  'Data Table: 5921C0
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim arg_3AFE As Double
  loc_F7B6DC: Set var_88 = Me.TopCtrl1
  loc_F7B6E2: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_F7B6FB: If (CStr() = "Browse") Then
  loc_F7B6FE:   Exit Sub
  loc_F7B6FF: End If
  loc_F7B712: var_A0 = CLng(Me.FGrid.Col)
  loc_F7B722: If (var_A0 = CLng(4)) Then
  loc_F7B725:   GoTo loc_F7B80B
  loc_F7B728: End If
  loc_F7B72F: If (var_A0 = CLng(2)) Then
  loc_F7B732:   GoTo loc_F7B80B
  loc_F7B735: End If
  loc_F7B73C: If (var_A0 = CLng(6)) Then
  loc_F7B752:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7B75A:   var_D0 = CVar(CLng(&HA)) 'Long
  loc_F7B78D:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_F7B790:     Exit Sub
  loc_F7B791:   End If
  loc_F7B79D:   RsTouchScreenSteward.pRestCode = LocalRestCode
  loc_F7B7AB:   RsTouchScreenSteward.pOpenAs = "Description"
  loc_F7B7B4:   var_B0 = 1
  loc_F7B7C3:   Call 0.Method_arg_2B0 (var_B0, var_C0, var_D0)
  loc_F7B7CC:   Set var_88 = var_A0(var_B0)
  loc_F7B7DB:   var_B0 = CVar(CLng(RsTouchScreenSteward.FGrid.Row)) 'Long
  loc_F7B7E3:   var_D0 = CVar(CLng(6)) 'Long
  loc_F7B7F3:   Set var_E4 = Me.FGrid
  loc_F7B7F9:   LateIdCallSt
  loc_F7B80B:   ' Referenced from: F7B732
  loc_F7B80B:   ' Referenced from: F7B725
  loc_F7B80B: End If
  loc_F7B815: If (CLng(Index) <> &HD) Then
  loc_F7B81D:   global_110 = &HFF
  loc_F7B820: End If
  loc_F7B820: Exit Sub
  loc_F7B821: arg_3AFE = global_110
End Sub

Public Sub FGrid_UnknownEvent_E(Index As Integer) 'E51AB4
  'Data Table: 5921C0
  loc_E51A86: If (Index = 1) Then
  loc_E51A9F:   global_96 = CLng(Me.FGrid.TopRow)
  loc_E51AAF:   global_100 = CLng(arg_18)
  loc_E51AB2: End If
  loc_E51AB2: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_F(Index As Integer) 'F2E31C
  'Data Table: 5921C0
  Dim var_A8 As Variant
  loc_F2E212: If (Index = 1) Then
  loc_F2E22E:   If (CDbl(Abs(((arg_18 - CDbl(global_100)) / CDbl(global_104)))) >= CDbl(1)) Then
  loc_F2E23D:     If (CDbl(arg_18) > CDbl(global_100)) Then
  loc_F2E25F:       If (CLng(Me.FGrid.TopRow) > 1) Then
  loc_F2E27B:         var_A8 = CVar((CLng(Me.FGrid.TopRow) - 1)) 'Long
  loc_F2E28A:         Me.FGrid.TopRow = var_A8
  loc_F2E299:       End If
  loc_F2E29C:     Else
  loc_F2E2D7:       If ((CLng(Me.FGrid.TopRow) + 1) < CLng(Me.FGrid.Rows)) Then
  loc_F2E2F3:         var_A8 = CVar((CLng(Me.FGrid.TopRow) + 1)) 'Long
  loc_F2E302:         Me.FGrid.TopRow = var_A8
  loc_F2E311:       End If
  loc_F2E311:     End If
  loc_F2E318:     global_100 = CLng(arg_18)
  loc_F2E31B:   End If
  loc_F2E31B: End If
  loc_F2E31B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'FA8038
  'Data Table: 5921C0
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_FA7EB9: Me.TxtQty.Text = vbNullString
  loc_FA7ECE: Me.TxtQty.Tag = vbNullString
  loc_FA7EE3: Me.LblVtype.Caption = vbNullString
  loc_FA7EEF: Set var_88 = Me.TopCtrl1
  loc_FA7EF5: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_FA7F0E: If (CStr() = "Browse") Then
  loc_FA7F11:   Exit Sub
  loc_FA7F12: End If
  loc_FA7F25: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA7F2D: var_CC = CVar(CLng(&HA)) 'Long
  loc_FA7F60: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FA7F63:   Exit Sub
  loc_FA7F64: End If
  loc_FA7F77: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA7F7F: var_CC = CVar(CLng(0)) 'Long
  loc_FA7FB2: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FA7FB5:   Exit Sub
  loc_FA7FB6: End If
  loc_FA7FD9: If (CLng(Me.FGrid.Col) = CLng(7)) Then
  loc_FA7FE8:   Me.FrameQty.Visible = True
  loc_FA7FFD:   Me.TxtQty.Text = vbNullString
  loc_FA8016:   Me.TxtQty.Tag = CStr(2)
  loc_FA802E:   Me.LblVtype.Caption = "Qty"
  loc_FA8036: End If
  loc_FA8036: Exit Sub
End Sub

Private Sub Form_Load() '15A17A0
  'Data Table: 5921C0
  Dim var_A4 As String
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim unk_5921DC As Connection15
  Dim var_A8 As Recordset15
  Dim var_D8 As Variant
  Dim var_EC As Variant
  Dim var_F0 As Variant
  Dim MemVar_1F92E80 As String
  Dim var_B4 As String
  Dim var_88 As Recordset15
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_118 As Variant
  Dim Me As Variant
  Dim var_E8 As Variant
  Dim var_130 As Variant
  Dim var_1E8 As Integer
  Dim var_1D8 As Fields15
  Dim var_1EC As Field20
  Dim var_110 As Variant
  Dim var_154 As Variant
  Dim var_140 As String
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As String
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  loc_15A05E8: On Error Goto loc_15A1799
  loc_15A05EB: Call Proc_251_89_101FC6C()
  loc_15A05F7: Call 0.Method_arg_7C (CDbl(0))
  loc_15A0603: Call 0.Method_arg_74 (CDbl(0))
  loc_15A0619: If (OpenMode = 1) Then
  loc_15A062A:   LocalRestCode = pRestCode
  loc_15A0631: End If
  loc_15A0634: MemVar_1F92E80 = "***P"
  loc_15A0661: var_B8 = "SELECT Param_Str AS UPrivilege FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128 & "' AND [Option]='"
  loc_15A066A: Call 0.Method_arg_50 (var_B4, var_B8, var_E8)
  loc_15A0673: var_BC = -1 & var_B4
  loc_15A0694: unk_5921DC.Execute var_BC & "' And OutletCode='" & LocalRestCode & "'", var_EC, 
  loc_15A069F: Set var_A8 = var_EC
  loc_15A06D1: If (var_A8.RecordCount > 0) Then
  loc_15A06E6:   var_EC = var_A8.Fields
  loc_15A06F6:   var_E8 = var_EC.Item("UPrivilege").Value
  loc_15A06FF:   MemVar_1F92E80 = CStr(var_E8)
  loc_15A070D: End If
  loc_15A0712: Set var_A8 = Nothing
  loc_15A073A: var_B0 = "Select ShortName,Code,RestType from Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Code='" & LocalRestCode
  loc_15A074A: unk_5921DC.Execute var_B0 & "'", var_E8, -1
  loc_15A0755: Set var_88 = var_EC
  loc_15A077D: If (var_88.RecordCount > 0) Then
  loc_15A07B1:   global_152 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_15A07F3:   global_156 = CStr(var_88.Fields.Item("Code").Value)
  loc_15A081E:   var_F0 = var_88.Fields.Item("RestType")
  loc_15A0835:   LocalRestType = CStr(var_F0.Value)
  loc_15A0846: End If
  loc_15A0854: var_E8 = Trim(LocalRestType)
  loc_15A0867: If CBool(var_E8 <> "Room Service") Then
  loc_15A087D:   Call 0.Method_Form_Load0 (CInt(7), var_F0, 0)
  loc_15A0885:   var_F0.Visible = Me.Label1
  loc_15A089E:   Set var_EC = Me.Label1
  loc_15A08A4:   Call 0.Method_Form_Load0 (CInt(8), var_F0)
  loc_15A08AC:   var_F0.Visible = False
  loc_15A08C5:   Set var_EC = Me.Label1
  loc_15A08CB:   Call 0.Method_Form_Load0 (CInt(9), var_F0)
  loc_15A08D3:   var_F0.Visible = False
  loc_15A08EC:   Set var_EC = Me.Txt
  loc_15A08F2:   Call 0.Method_Form_Load0 (CInt(8), var_F0)
  loc_15A08FA:   var_F0.Visible = False
  loc_15A0913:   Set var_EC = Me.Txt
  loc_15A0919:   Call 0.Method_Form_Load0 (CInt(9), var_F0)
  loc_15A0921:   var_F0.Visible = False
  loc_15A093A:   Set var_EC = Me.Txt
  loc_15A0940:   Call 0.Method_Form_Load0 (CInt(&HA), var_F0)
  loc_15A0948:   var_F0.Visible = False
  loc_15A0954: End If
  loc_15A095A: var_100 = 0
  loc_15A098F: var_B4 = "Select Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Code ='" & LocalRestCode & "'"
  loc_15A0998: unk_5921DC.Execute var_B4, var_E8, -1
  loc_15A09A0: var_EC = var_EC.Fields
  loc_15A09A8: var_100 = var_F0.Item(var_F0)
  loc_15A09B0: var_114 = var_114.Value
  loc_15A09C6: Me.LblRest.Caption = CStr(var_110)
  loc_15A0A01: var_A4 = "Select Distinct IG.Code,IG.Name as Name,IC.CatType,IG.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & LocalRestCode
  loc_15A0A16: var_B4 = var_A4 & "' And (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_15A0A1F: unk_5921DC.Execute var_B4, var_E8, -1
  loc_15A0A60: var_A4 = "Select I.Code,I.Name as Name,I.ItemGroup,IC.CatType,i.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & LocalRestCode
  loc_15A0A75: var_B4 = var_A4 & "' And (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_15A0A7E: unk_5921DC.Execute var_B4, var_E8, -1
  loc_15A0A8F: Set global_236 = var_EC
  loc_15A0AB9: var_E8 = CVar(Me.RecordCount) 'Long
  loc_15A0AC0: Proc_6_39_E7C810(var_110, var_E8, var_EC)
  loc_15A0ACC: global_224 = CInt(var_110)
  loc_15A0AEA: Set var_F0 = Me.SSPItem
  loc_15A0B0D: Call Proc_251_78_1283A50(Me.SSPGroup, CInt(4), Me.SSPGroup, CInt(4), var_F0)
  loc_15A0B19: global_216 = CInt(var_E8)
  loc_15A0B34: Set global_180 = New 
  loc_15A0B46: Me.SSPItem.CursorLocation = 3
  loc_15A0B6E: Me.Open "SELECT NcPer,NCType FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F92044), 3
  loc_15A0B7C: CVarUnk
  loc_15A0B81: VerifyVarObj
  loc_15A0B87: Set var_EC = Me.FGNCType
  loc_15A0B8D: LateIdStAd
  loc_15A0B9F: Set var_120 = Me.FGNCType
  loc_15A0BA2: var_D8 = 0
  loc_15A0BAB: var_130 = 0
  loc_15A0BB7: LateIdCallSt
  loc_15A0BBF: var_D8 = 1
  loc_15A0BC8: var_130 = &HE74
  loc_15A0BD4: LateIdCallSt
  loc_15A0BDC: var_D8 = 1
  loc_15A0BEB: var_130 = CVar(CInt(1)) 'Integer
  loc_15A0BF2: LateIdCallSt
  loc_15A0BFA: var_D8 = 1
  loc_15A0C09: var_130 = CVar(CInt(1)) 'Integer
  loc_15A0C10: LateIdCallSt
  loc_15A0C27: var_E8 = Me.FGNCType.Rows
  loc_15A0C3D: For var_144 = 1 To CInt((CLng(var_E8) - 1)): var_96 = var_144 'Integer
  loc_15A0C47:   var_D8 = CVar(CLng(var_96)) 'Long
  loc_15A0C4C:   var_130 = &H320
  loc_15A0C58:   LateIdCallSt
  loc_15A0C63: Next var_144 'Integer
  loc_15A0C6A: Set var_120 = Nothing 
  loc_15A0C6E: Call Proc_251_95_11FD578()
  loc_15A0C7D: Set global_76 = New 
  loc_15A0C8F: Me.var_E8.CursorLocation = 3
  loc_15A0C97: var_D8 = MemVar_1F920EC
  loc_15A0C9F: Proc_6_7_F25D88(var_E8)
  loc_15A0CAA: var_130 = 0
  loc_15A0CDA: unk_5921DC.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_164, -1
  loc_15A0CE2: var_EC = var_EC.Fields
  loc_15A0CEA: var_130 = var_F0.Item(var_F0)
  loc_15A0CF2: var_114 = var_114.Value
  loc_15A0CFD: var_1E8 = 0
  loc_15A0D1D: var_B4 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_15A0D2D: unk_5921DC.Execute var_B4 & "'", var_1D4, -1
  loc_15A0D35: var_118 = var_118.Fields
  loc_15A0D3D: var_1E8 = var_1D8.Item(var_1D8)
  loc_15A0D45: var_1EC = var_1EC.Value
  loc_15A0D68: var_A4 = "Select Distinct K.DocId as SearchCode,K.DocID,K.RESTCODE,K.SITE_CODE,K.LOGSITE_CODE,K.ROOMNO,K.VDATE,K.Pending  From KOT K WHERE   LOGSITE_CODE='" & MemVar_1F92078
  loc_15A0D79: var_140 = " And DelFlag NOT IN ('Y') OR DelFlag IS NULL) AND (K.VType='K"
  loc_15A0D81: var_184 = (var_140 + var_174)
  loc_15A0D85: var_194 = CVar(var_A4 & "' AND (K.Pending='Y'  AND NCKOT='N'  And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") & var_E8 & var_184 
  loc_15A0DA9: Me.Open var_194 & "' OR K.VType='" & var_1FC & "') Order by Docid", CVar(MemVar_1F92044), 3
  loc_15A0DF8: If (OpenType = "Pending KOT") Then
  loc_15A0E30:   Proc_6_7_F25D88(var_E8, MemVar_1F920EC, CVar("RESTCODE='" & LocalRestCode & "' And RoomNo='" & PTableNo & "'And Pending='Y' AND Vdate="), 1)
  loc_15A0E38:   var_154 = -1 & var_E8 
  loc_15A0E43:   Me.Filter = CVar("RESTCODE='" & LocalRestCode & "' AND (K.Pending='Y'  AND NCKOT='N'  And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") & var_E8
  loc_15A0E73:   If (Me.RecordCount > 0) Then
  loc_15A0E8A:     If (Me.EOF = &HFF) Then
  loc_15A0E93:       Me.MoveFirst
  loc_15A0E98:     End If
  loc_15A0EC0:     var_EC = Me.Fields
  loc_15A0EC8:     var_F0 = var_EC.Item("SearchCode")
  loc_15A0ED8:     var_110 = "SearchCode='" & var_F0.Value 
  loc_15A0EEF:     Me.Find CStr(var_110 & "'"), 0, 1
  loc_15A0F07:   End If
  loc_15A0F0A: Else
  loc_15A0F14:   var_A4 = "RESTCODE='" & LocalRestCode
  loc_15A0F1B:   var_E8 = CVar(var_A4 & "'") 'String
  loc_15A0F25:   Me.Filter = var_E8
  loc_15A0F55:   Call 0.Method_arg_50 (var_A4, "SELECT COUNT(*) FROM LASTVOU WHERE  ENAME='", var_E8, -1, var_EC, var_F0, 0)
  loc_15A0F7C:   unk_5921DC.Execute var_114 & var_A4 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_110, var_140
  loc_15A0F84:   var_1FC = var_EC.Fields
  loc_15A0F8C:   var_D8 = var_F0.Item(var_174)
  loc_15A0F94:    = var_114.Value
  loc_15A0FC1:   If (var_110 > 0) Then
  loc_15A0FFC:     Call 0.Method_arg_50 (var_A4, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_E8, -1, var_EC, var_F0, 0)
  loc_15A1023:     unk_5921DC.Execute var_114 & var_A4 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_110, "SearchCode='"
  loc_15A102B:     0 = var_EC.Fields
  loc_15A1033:     var_1A4 = var_F0.Item(1)
  loc_15A103B:      = var_114.Value
  loc_15A105A:     Me.Find CStr(var_110 & "'"), , 
  loc_15A1082:   End If
  loc_15A1099:   If (Me.RecordCount > 0) Then
  loc_15A10A5:     var_11A = Me.EOF
  loc_15A10B0:     If (var_11A = &HFF) Then
  loc_15A10B9:       Me.MoveLast
  loc_15A10BE:     End If
  loc_15A10BE:   End If
  loc_15A10BE: End If
  loc_15A10C7: Call 0.Method_arg_160 (var_EC)
  loc_15A10D5: Call 0.Method_arg_164 (var_EC)
  loc_15A1100: Call Proc_251_90_104B2E4(Proc_5_1_100CB50("INI", Me))
  loc_15A1117: Set var_EC = Me.CmdCatType
  loc_15A111D: Call 0.Method_Form_Load8 (var_11A, var_96)
  loc_15A1128: For var_240 = global_76 To var_11A: 0 = var_240 'Integer
  loc_15A113F:   Set var_EC = Me.CmdCatType
  loc_15A1145:   Call 0.Method_Form_Load0 (var_96, var_F0)
  loc_15A114D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_15A115C: Next var_240 'Integer
  loc_15A116C: Set var_EC = Me.SSPPrevious
  loc_15A1172: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_15A117D: var_D8 = CVar(MemVar_1F921B0) 'String
  loc_15A1185: Set var_EC = Me.SSPNext
  loc_15A118B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(var_D8)
  loc_15A119E: Set var_EC = Me.CmChngSteward
  loc_15A11A4: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_15A11B7: Set var_EC = Me.CmNoOfPersons
  loc_15A11BD: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_15A11D0: Set var_EC = Me.CmChngToNC
  loc_15A11D6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_15A11E9: Set var_EC = Me.CmTransKOT
  loc_15A11EF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_15A1202: Set var_EC = Me.CmChngMember
  loc_15A1208: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_15A1223: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_15A1232: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_15A1245: Me.FrameQty.BackColor = CLng(MemVar_1F921B0)
  loc_15A1260: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_15A1276: Me.LblPendingKot.BackColor = CLng(MemVar_1F921B0)
  loc_15A128A: Set var_EC = Me.CmFgrid
  loc_15A1290: Call 0.Method_Form_Load8 (var_11A, var_96)
  loc_15A129B: For var_244 =  To var_11A: 0 = var_244 'Integer
  loc_15A12B2:   Set var_EC = Me.CmFgrid
  loc_15A12B8:   Call 0.Method_Form_Load0 (var_96, var_F0)
  loc_15A12C0:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_1D(CVar(MemVar_1F921B0))
  loc_15A12CF: Next var_244 'Integer
  loc_15A12E2: Me.ChkNCKOT.BackColor = CLng(MemVar_1F921B0)
  loc_15A12F8: Me.FrameGrpItem.BackColor = CLng(MemVar_1F921B0)
  loc_15A1300: Call Proc_251_74_1272B34()
  loc_15A130E: Set var_EC = Me.SSPGroup
  loc_15A1314: Call 0.Method_Form_Load0 (0)
  loc_15A131C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_F0)
  loc_15A133D: Me.FrameGrpItem.Width = ((CDbl(4) * CDbl(var_E8)) + CDbl(&H32))
  loc_15A136B: If (Me.FrameGrpItem.Width < CDbl(6600)) Then
  loc_15A137D:   Me.FrameGrpItem.Width = CDbl(6600)
  loc_15A1385: End If
  loc_15A138E: Set var_EC = Me.SSPGroup
  loc_15A1394: Call 0.Method_Form_Load0 (0)
  loc_15A139C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_F0)
  loc_15A13C1: Set var_114 = Me.FrameGrpItem
  loc_15A13C7: var_114.Height = (((CDbl((CInt(4) + 1)) * CDbl(var_E8)) + CDbl(&H32)) + CDbl(300))
  loc_15A13DB: var_100 = 0
  loc_15A1408: unk_5921DC.Execute "Select FreeiteminKOT from enviro where LogSite_code='" & MemVar_1F92078 & "'", var_E8, -1
  loc_15A1410: var_EC = var_EC.Fields
  loc_15A1418: var_100 = var_F0.Item(var_F0)
  loc_15A1420: var_110 = CVar(var_114) 'Address
  loc_15A1448: If (Proc_6_38_E68A98(var_110) <> "Yes") Then
  loc_15A145B:   Set var_EC = Me.CmFgrid
  loc_15A1461:   Call 0.Method_Form_Load0 (CInt(5), var_F0)
  loc_15A1469:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_15A1475: End If
  loc_15A1490: var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_15A149E: var_154 = CVar(var_AC & MemVar_1F92078 & "') and V_Type='") 'String
  loc_15A14A7: var_100 = 0
  loc_15A14C7: var_B4 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_15A14CE: var_B8 = var_114 & "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND UNAME='" & MemVar_1F920C8 & "'"
  loc_15A14D7: unk_5921DC.Execute var_B8, var_E8, -1
  loc_15A14DF: var_EC = var_EC.Fields
  loc_15A14E7: var_100 = var_F0.Item(var_F0)
  loc_15A14EF: var_114 = var_114.Value
  loc_15A150E: unk_5921DC.Execute CStr(var_110 & var_110 & "' Order by Description"), var_154, var_184
  loc_15A1519: Set var_8C = var_118
  loc_15A1559: If (var_8C.RecordCount > 0) Then
  loc_15A158D:   global_136 = CStr(var_8C.Fields.Item(0).Value)
  loc_15A159E: End If
  loc_15A15A3: Set var_88 = Nothing
  loc_15A15AB: Set var_8C = Nothing
  loc_15A15B2: Set var_94 = New 
  loc_15A15BD: Me.Recordset15.CursorLocation = 3
  loc_15A15F1: var_B0 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 & "'or LOGSITE_CODE='HO') and Code='" & LocalRestCode
  loc_15A15FF: var_94.Open CVar(var_B0 & "'"), CVar(MemVar_1F92044), 3
  loc_15A1624: If (var_94.RecordCount > 0) Then
  loc_15A163E:   var_F0 = var_94.Fields.Item("MemberInfo")
  loc_15A1646:   var_E8 = CVar(var_F0) 'Address
  loc_15A164F:   var_A4 = Proc_6_38_E68A98(var_E8, 1, -1)
  loc_15A1660:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F92078 = "Y") Then
  loc_15A1670:     Set var_EC = Me.Txt
  loc_15A1676:     Call 0.Method_Form_Load0 (CInt(&HB), var_F0, &HFF)
  loc_15A167E:     var_F0.Visible = True
  loc_15A1695:     Set var_EC = Me.Label1
  loc_15A169B:     Call 0.Method_Form_Load0 (&HB, var_F0, &HFF)
  loc_15A16A3:     var_F0.Visible = var_118
  loc_15A16BC:     Set var_EC = Me.Txt
  loc_15A16C2:     Call 0.Method_Form_Load0 (CInt(&HC), var_F0)
  loc_15A16CA:     var_F0.Visible = True
  loc_15A16DE:     Set var_EC = Me.CmChngMember
  loc_15A16E4:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_15A1709:     Proc_6_17_EAA2B0(var_E8, MemVar_1F92078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_154)
  loc_15A1711:     var_110 = -1 & var_E8 
  loc_15A171F:     unk_5921DC.Execute CStr(var_110), var_EC, var_114
  loc_15A172A:     Set var_90 = var_EC
  loc_15A1750:     If (var_90.RecordCount > 0) Then
  loc_15A1781:       global_160 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("MemberVarificationInKOT")))
  loc_15A178E:     End If
  loc_15A178E:   End If
  loc_15A178E: End If
  loc_15A178E: Call Proc_251_87_16D2A60()
  loc_15A1793: Call Proc_251_71_127B4F8()
  loc_15A1798: Exit Sub
  loc_15A1799: ' Referenced from: 15A05E8
  loc_15A1799: Proc_6_60_E62BC4()
  loc_15A179E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8A418
  'Data Table: 5921C0
  loc_E8A3AB: Set global_84 = Nothing
  loc_E8A3BD: Set global_72 = Nothing
  loc_E8A3CF: Set global_88 = Nothing
  loc_E8A3E1: Set global_80 = Nothing
  loc_E8A3F3: Set global_76 = Nothing
  loc_E8A405: Set global_180 = Nothing
  loc_E8A411: MasterFormExit = 0
  loc_E8A414: Exit Sub
End Sub

Private Sub Form_Activate() 'F8E118
  'Data Table: 5921C0
  Dim var_90 As String
  Dim var_F8 As Variant
  Dim var_D4 As Integer
  Dim var_98 As String
  Dim unk_5921DC As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  loc_F8DFFF: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_F8E00D: var_F8 = CVar(var_90 & MemVar_1F92078 & "') AND V_Type='") 'String
  loc_F8E016: var_D4 = 0
  loc_F8E036: var_98 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_F8E046: unk_5921DC.Execute var_98 & "'", var_BC, -1
  loc_F8E04E: var_C0 = var_C0.Fields
  loc_F8E056: var_D4 = var_C4.Item(var_C4)
  loc_F8E05E: var_D8 = var_D8.Value
  loc_F8E066: var_108 = var_E8 & var_E8 
  loc_F8E07D: unk_5921DC.Execute CStr(var_108 & "' Order by Description"), var_F8, var_14C
  loc_F8E0C8: If (var_150.RecordCount > 0) Then
  loc_F8E0CB:   GoTo loc_F8E10D
  loc_F8E0CE: End If
  loc_F8E0E7: MsgBox("KOT Not Configured for selected Restaurant", 0, var_E8, var_F8, var_108)
  loc_F8E104: Me.Global.Unload Me
  loc_F8E10C: Exit Sub
  loc_F8E10D: ' Referenced from: F8E0CB
  loc_F8E112: Set var_88 = Nothing
  loc_F8E115: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25E34
  'Data Table: 5921C0
  loc_E25E19: If (MasterFormExit = &HFF) Then
  loc_E25E29:   Me.Global.Unload Me
  loc_E25E31: End If
  loc_E25E31: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E98C24
  'Data Table: 5921C0
  Dim var_88 As Frame
  loc_E98BA4: On Error Goto loc_E98C1C
  loc_E98BAB: Set var_88 = Me.TopCtrl1
  loc_E98BB1: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_E98BCA: If (CStr() = "Edit") Then
  loc_E98BDE:   If ((CLng(KeyCode) = &H4D) And (Shift = 2)) Then
  loc_E98BEE:     Me.Frame.Caption = "Go"
  loc_E98BF6:   End If
  loc_E98BF6: End If
  loc_E98BF6: Call Proc_251_76_119BF94()
  loc_E98C13: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E98C1B: Exit Sub
  loc_E98C1C: ' Referenced from: E98BA4
  loc_E98C1C: Proc_6_60_E62BC4(Shift)
  loc_E98C21: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1219050
  'Data Table: 5921C0
  Dim var_9C As Variant
  Dim var_114 As Double
  Dim var_100 As String
  Dim var_104 As String
  Dim var_10C As String
  Dim unk_5921DC As Connection15
  Dim var_94 As Variant
  Dim var_AC As Variant
  Dim var_11C As Variant
  Dim var_12C As Integer
  Dim var_134 As TextBox
  Dim MemVar_1F9201C As String
  loc_1218B94: On Error Goto loc_1219049
  loc_1218BBA: Call Proc_251_90_104B2E4(Proc_5_1_100CB50("ADD", Me))
  loc_1218BC5: Call Proc_251_71_127B4F8(global_76)
  loc_1218BCA: Call Proc_251_89_101FC6C()
  loc_1218BE2: Set var_94 = Me.Txt
  loc_1218BE8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_1218BF0: var_9C.Text = CStr(MemVar_1F920EC)
  loc_1218BFF: Call ChkNCKOT_Click()
  loc_1218C44: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C, CStr(Format(Time, "hh:nn")))
  loc_1218C4C: var_9C.Text = 1
  loc_1218C67: var_AC = Time
  loc_1218C7B: var_CC = "HH:MM"
  loc_1218CC2: var_8C = Replace(CStr(Left(CVar(CStr(Format(var_AC, var_CC))), 5)), ":", ".", 1, -1, 0)
  loc_1218CDF: var_114 = Val(var_8C)
  loc_1218D10: var_10C = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND " & CStr(var_114) & " BETWEEN FromTime AND ToTime"
  loc_1218D19: unk_5921DC.Execute var_10C, var_AC, -1
  loc_1218D24: Set var_88 = Me.Txt
  loc_1218D51: If (Me.Recordset15.RecordCount > 0) Then
  loc_1218D66:   var_94 = Me.Recordset15.Fields
  loc_1218D6E:   var_9C = var_94.Item("Name")
  loc_1218D76:   var_AC = CVar(var_9C) 'Address
  loc_1218D8C:   Me.lblSession.Caption = Proc_6_38_E68A98(var_AC, var_94, var_114)
  loc_1218D9E: End If
  loc_1218DB2: If (RsTouchScreenKOTEntry.OpenMode = 1) Then
  loc_1218DBB:   var_12C = 0
  loc_1218DE2:   var_100 = "SELECT ISNULL(MAX(GUARATT),0) FROM (SELECT TOP 1 GUARATT FROM KOT WHERE RestCode='" & LocalRestCode & "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ROOMNO='"
  loc_1218DFC:   unk_5921DC.Execute var_100 & global_196 & "' Order By Vno Desc)Q", var_AC, -1
  loc_1218E04:   var_94 = var_94.Fields
  loc_1218E0C:   var_12C = var_9C.Item(var_9C)
  loc_1218E14:   var_11C = var_11C.Value
  loc_1218E2B:   Set var_130 = Me.Txt
  loc_1218E31:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_134, CStr(var_CC), var_CC)
  loc_1218E39:   var_134.Text = 1
  loc_1218E70:   Set var_94 = Me.Txt
  loc_1218E76:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C, global_196)
  loc_1218E7E:   var_9C.Text = 1
  loc_1218E9B:   Set var_94 = Me.Txt
  loc_1218EA1:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C)
  loc_1218EA9:   var_9C.Tag = global_196
  loc_1218EB5: End If
  loc_1218EC0: If (global_204 = vbNullString) Then
  loc_1218EC3:   Call CmChngSteward_UnknownEvent_9()
  loc_1218ECB: Else
  loc_1218ED1:   var_12C = 0
  loc_1218EFF:   var_104 = "Select W.Code From Waiter W Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and W.name like ' & global_204
  loc_1218F0F:   unk_5921DC.Execute var_104 & "", var_AC, -1
  loc_1218F17:   var_94 = var_94.Fields
  loc_1218F1F:   var_12C = var_9C.Item(var_9C)
  loc_1218F27:   var_11C = var_11C.Value
  loc_1218F34:   MemVar_1F9201C = Proc_6_38_E68A98(var_CC, var_CC)
  loc_1218F53: End If
  loc_1218F59: var_12C = 0
  loc_1218F84: var_104 = "Select Max(W.Name) As Name From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9201C
  loc_1218F94: unk_5921DC.Execute var_104 & "'", var_AC, -1
  loc_1218F9C: var_94 = var_94.Fields
  loc_1218FA4: var_12C = var_9C.Item(var_9C)
  loc_1218FAC: var_11C = var_11C.Value
  loc_1218FC7: Set var_130 = Me.Txt
  loc_1218FCD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_134, Proc_6_38_E68A98(var_CC, var_CC))
  loc_1218FD5: var_134.Text = MemVar_1F9201C
  loc_1219009: Set var_94 = Me.Txt
  loc_121900F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_9C)
  loc_1219017: var_9C.Tag = MemVar_1F9201C
  loc_121902E: Set var_94 = Me.Txt
  loc_1219034: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_121903C: var_9C.SetFocus
  loc_1219048: Exit Sub
  loc_1219049: ' Referenced from: 1218B94
  loc_1219049: Proc_6_60_E62BC4(1)
  loc_121904E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA30D0
  'Data Table: 5921C0
  loc_EA3054: On Error Goto loc_EA30CA
  loc_EA308E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA30B4:   Call Proc_251_90_104B2E4(Proc_5_1_100CB50("INI", Me))
  loc_EA30BF:   Call Proc_251_87_16D2A60(global_76)
  loc_EA30C4:   Call Proc_251_71_127B4F8()
  loc_EA30C9: End If
  loc_EA30C9: Exit Sub
  loc_EA30CA: ' Referenced from: EA3054
  loc_EA30CA: Proc_6_60_E62BC4()
  loc_EA30CF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '14AE598
  'Data Table: 5921C0
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_114 As Fields15
  Dim var_158 As Variant
  Dim var_138 As Variant
  Dim var_1D4 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_178 As Variant
  Dim var_19C As String
  Dim unk_5921DC As Connection15
  Dim var_1C0 As Recordset15
  Dim var_1C4 As Fields15
  Dim var_1D8 As Variant
  Dim var_98 As Recordset15
  Dim var_20C As String
  Dim var_210 As String
  Dim var_224 As String
  Dim var_168 As Variant
  Dim var_128 As TextBox
  Dim var_AA4 As Double
  Dim var_2D4 As TextBox
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_42C As Variant
  Dim var_44C As Variant
  Dim var_AB4 As Double
  Dim var_748 As TextBox
  Dim var_86C As Variant
  Dim var_88C As Variant
  Dim var_1BC As Variant
  Dim var_1E8 As Variant
  Dim var_2AC As Variant
  Dim var_41C As Variant
  Dim var_78C As Variant
  Dim var_8D4 As Variant
  Dim var_A04 As Variant
  loc_14ADA58: On Error Goto loc_14AE549
  loc_14ADA5E: Call Proc_251_99_FF7554(var_A6)
  loc_14ADA69: If (var_A6 = 0) Then
  loc_14ADA6C:   Exit Sub
  loc_14ADA6D: End If
  loc_14ADA7B: If (Proc_183_56_FE8818(global_76) = &HFF) Then
  loc_14ADA7E:   Exit Sub
  loc_14ADA7F: End If
  loc_14ADABB: var_114 = Me.Fields
  loc_14ADAC3: var_128 = var_114.Item("SearchCode")
  loc_14ADAC8: var_158 = 1
  loc_14ADAD5: var_138 = CVar(var_128) 'Address
  loc_14ADADC: var_168 = Mid(var_138, 4, var_158)
  loc_14ADAE7: var_1D4 = 0
  loc_14ADB15: var_178 = "Select count(*) from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & var_168 
  loc_14ADB2C: unk_5921DC.Execute CStr(var_178 & "'<>'N'"), var_1BC, -1
  loc_14ADB34: var_1C0 = var_1C0.Fields
  loc_14ADB3C: var_1D4 = var_1C4.Item(var_1C4)
  loc_14ADB44: var_1D8 = var_1D8.Value
  loc_14ADB7D: If (var_1E8 > 0) Then
  loc_14ADBD6:   unk_5921DC.Execute CStr("Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_14ADC2D:   var_110 = "**** Deletion Not Allowed ****"
  loc_14ADC4D:   var_210 = "Bill Allready Prepared For this KOT" & vbCrLf & vbCrLf & "Ref. No. "
  loc_14ADC6E:   var_224 = var_210 & CStr(var_114.Fields.Item(0).Value) & vbCrLf & vbCrLf & vbCrLf
  loc_14ADC78:   MsgBox(CVar(var_224 & vbCrLf), &H10, var_110, var_138, var_158)
  loc_14ADCA6:   Exit Sub
  loc_14ADCA7: End If
  loc_14ADCDE: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_110, var_138) = 6) Then
  loc_14ADD0B:   var_9C = InputBox("Please Specify, Reason For Delete ?", "Reason", var_110, var_138, var_158, var_168, var_178)
  loc_14ADD28:   unk_5921DC.BeginTrans var_228
  loc_14ADD3E:   var_94 = Me.Bookmark 'Variant
  loc_14ADD4F:   var_A6 = Me.ChkNCKOT.Value
  loc_14ADD80:   var_A4 = CStr(IIf((var_A6 = 1), "Y", "N"))
  loc_14ADDB6:   For var_22C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_22C 'Integer
  loc_14ADDC8:     var_100 = CVar(CLng(&HA)) 'Long
  loc_14ADDE2:     var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14ADE0F:     Set var_C0 = Me.FGrid
  loc_14ADE20:     var_19C = CStr(var_C0.TextMatrix))
  loc_14ADE4E:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_19C)) <> CDbl(0))) Then
  loc_14ADE5F:       Set var_AC = Me.Txt
  loc_14ADE65:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_C0, var_19C, CVar(CLng(var_9E)), (Trim(var_F0) <> vbNullString))
  loc_14ADE6D:       var_100 = var_C0.Text
  loc_14ADE80:       Set var_114 = Me.Txt
  loc_14ADE86:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_128, var_210, CVar(CLng(var_9E)))
  loc_14ADE8E:       1 = var_128.Text
  loc_14ADE9B:       var_AA4 = Val(var_210)
  loc_14ADEA9:       Set var_1C0 = Me.Txt
  loc_14ADEAF:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_1C4, var_AA4)
  loc_14ADEBE:       Proc_6_7_F25D88(var_F0, CVar(var_1C4))
  loc_14ADEE3:       Set var_2D0 = Me.Txt
  loc_14ADEE9:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_2D4, var_224)
  loc_14ADEF1:       var_114 = var_2D4.Tag
  loc_14ADEFA:       var_324 = CVar(CLng(var_9E)) 'Long
  loc_14ADF02:       var_344 = CVar(CLng(0)) 'Long
  loc_14ADF53:       var_42C = CVar(CLng(var_9E)) 'Long
  loc_14ADF5B:       var_44C = CVar(CLng(&HA)) 'Long
  loc_14ADFA4:       var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AE060:       var_710 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_14AE073:       Set var_744 = Me.Txt
  loc_14AE079:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_748, var_74C, CVar(CLng(9)), CVar(CLng(var_9E)), CVar(CLng(9)), CVar(CLng(var_9E)))
  loc_14AE094:       Proc_6_7_F25D88(var_7EC, Now, CVar(CLng(7)), CVar(CLng(var_9E)))
  loc_14AE09D:       var_86C = CVar(CLng(var_9E)) 'Long
  loc_14AE0A5:       var_88C = CVar(CLng(8)) 'Long
  loc_14AE0F8:       var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AE129:       var_ACC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AE150:       var_20C = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,DELFLAG,LogSite_Code) Values ('" & var_19C
  loc_14AE199:       var_1BC = CVar(var_20C & "'," & CStr(var_AA4) & ",") & var_F0 & ",'" & CVar(global_136) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_14AE1EE:       var_2AC = var_1BC & "','" & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_140) & "','" & CVar(global_144) 
  loc_14AE22E:       var_41C = var_2AC & "','" & CVar(var_224) & "','Y'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Format(Time, "hh:nn") & "','" 
  loc_14AE279:       var_78C = var_41C & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_748.Tag) & ",'" & var_710 & "','" & CVar(var_74C) & "','" 
  loc_14AE2BA:       var_8D4 = var_78C & CVar(MemVar_1F920C8) & "'," & var_7EC & ",'A','" & CVar(var_A4) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_14AE2E2:       var_A04 = CVar(Proc_6_38_E68A98(var_9C, var_ACC, CVar(CLng(8)), CVar(CLng(var_9E)), var_AC4, CVar(CLng(7)), CVar(CLng(var_9E)))) 'String
  loc_14AE30F:       unk_5921DC.Execute CStr(var_8D4 & "," & CVar((var_AC4 * var_ACC)) & ",'" & var_A04 & "','D','" & CVar(MemVar_1F92078) & "')"), var_A98, -1
  loc_14AE3F3:     End If
  loc_14AE3F6:   Next var_22C 'Integer
  loc_14AE40F:   var_19C = "Update Kot Set DelFlag='Y',U_Name1='" & MemVar_1F920C8
  loc_14AE416:   var_110 = CVar(var_19C & "',U_EntDt1=") 'String
  loc_14AE427:   Proc_6_7_F25D88(var_F0, Date, var_110)
  loc_14AE42F:   var_138 = var_1BC & var_F0 
  loc_14AE480:   unk_5921DC.Execute CStr(var_138 & ",U_AE1='E' Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), -1, var_114
  loc_14AE4B0:   unk_5921DC.CommitTrans
  loc_14AE4C0:   Me.Requery -1
  loc_14AE4E0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_14AE4ED:     Me.Bookmark = var_94
  loc_14AE4F5:   Else
  loc_14AE509:     If (Me.EOF = 0) Then
  loc_14AE512:       Me.MoveLast
  loc_14AE517:     End If
  loc_14AE517:   End If
  loc_14AE517:   Call Proc_251_87_16D2A60()
  loc_14AE538:   Proc_5_0_110649C(&HFF, Me)
  loc_14AE540: End If
  loc_14AE545: Set var_98 = Nothing
  loc_14AE548: Exit Sub
  loc_14AE549: ' Referenced from: 14ADA58
  loc_14AE54F: unk_5921DC.RollbackTrans
  loc_14AE55C: Set var_AC = Err()
  loc_14AE562: Call 0.Method_arg_2C (var_19C, global_76)
  loc_14AE583: MsgBox(CVar(var_19C), &H10, " Deletion Message", var_110, var_138)
  loc_14AE596: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1274EB4
  'Data Table: 5921C0
  Dim var_130 As Variant
  Dim var_A0 As String
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_F4 As Variant
  Dim unk_5921DC As Connection15
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
  loc_1274948: On Error Goto loc_1274EAC
  loc_127494E: Call Proc_251_99_FF7554(var_8A)
  loc_1274959: If (var_8A = 0) Then
  loc_127495C:   Exit Sub
  loc_127495D: End If
  loc_127496B: If (Proc_183_55_FE7900(global_76) = &HFF) Then
  loc_127496E:   Exit Sub
  loc_127496F: End If
  loc_1274975: var_130 = 0
  loc_12749D4: unk_5921DC.Execute CStr("Select count(*) from KOT Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And ContraDocId is not null"), var_118, -1
  loc_12749DC: var_11C = var_11C.Fields
  loc_12749E4: var_130 = var_120.Item(var_120)
  loc_12749EC: var_134 = var_134.Value
  loc_1274A19: If (var_144 > 0) Then
  loc_1274AA3:   var_174 = "Select VType,VNo from Stock Where Delflag<>'D' and KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & Mid(CVar(Me.Fields.Item("SearchCode")), 4, 1) 
  loc_1274ABA:   unk_5921DC.Execute CStr(var_174 & "'<>'N'"), var_1A4, -1
  loc_1274AC5:   Set var_88 = var_134
  loc_1274AFF:   If (var_88.RecordCount > 0) Then
  loc_1274B1C:     var_A4 = var_88.Fields.Item("vType")
  loc_1274B3B:     var_11C = var_88.Fields
  loc_1274B81:     var_F4 = (CVar("Bill Allready Prepared For this KOT" & vbCrLf & vbCrLf & "Ref. No. ") + var_A4.Value)
  loc_1274B8A:     var_118 = ("Select VType,VNo from Stock Where Delflag<>'D' and KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" + "/")
  loc_1274B96:     var_174 = (CVar(Me.Fields.Item("SearchCode")) + CVar(CStr(var_11C.Item("VNo").Value)))
  loc_1274B9F:     var_184 = (var_174 + vbCrLf)
  loc_1274BA8:     var_1A4 = (var_174 & "'<>'N'" + vbCrLf)
  loc_1274BB1:     var_1BC = (var_1A4 + vbCrLf)
  loc_1274BBA:     var_1CC = (var_1BC + vbCrLf)
  loc_1274BBE:     MsgBox(var_1CC, &H10, "**** Modification Not Allowed ****", var_20C, var_22C)
  loc_1274BF4:     Exit Sub
  loc_1274BF8:   Else
  loc_1274BF8:     var_A0 = vbNullString
  loc_1274C02:     Set var_90 = Me.FGrid
  loc_1274C13:   End If
  loc_1274C13: End If
  loc_1274C36: Call Proc_251_90_104B2E4(Proc_5_1_100CB50("EDIT", Me, global_76, FGrid.DispID_10000), var_A0)
  loc_1274C41: Call Proc_251_71_127B4F8(var_134)
  loc_1274C53: Set var_90 = Me.Txt
  loc_1274C59: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A4)
  loc_1274C79: Me.ChkNCKOT.Enabled = False
  loc_1274C8F: Set var_90 = Me.Txt
  loc_1274C95: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A4)
  loc_1274CAF: If (False = &HFF) Then
  loc_1274CBD:   Set var_90 = Me.Txt
  loc_1274CC3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A4)
  loc_1274CCB:   var_A4.SetFocus
  loc_1274CDA: Else
  loc_1274CE5:   Set var_90 = Me.Txt
  loc_1274CEB:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_A4)
  loc_1274CF3:   var_A4.SetFocus
  loc_1274CFF: End If
  loc_1274D16: If (Me.RecordCount > 0) Then
  loc_1274D6F:   unk_5921DC.Execute CStr("Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From KOT K Where K.Docid='" & Me.Fields.Item("DocID").Value & "'"), CVar(Me.Fields.Item("SearchCode")), -1
  loc_1274D7A:   Set var_88 = var_11C
  loc_1274D97:   Set var_230 = var_88 
  loc_1274DCC:   global_116 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_1274E0E:   global_128 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_1274E4E:   global_120 = CDate(var_88.Fields.Item("U_EntDt").Value)
  loc_1274E8C:   global_132 = CStr(var_88.Fields.Item("Pending").Value)
  loc_1274E9F:   Set var_230 = Nothing 
  loc_1274EA3: End If
  loc_1274EA8: Set var_88 = Nothing
  loc_1274EAB: Exit Sub
  loc_1274EAC: ' Referenced from: 1274948
  loc_1274EAC: Proc_6_60_E62BC4(global_120, var_11C)
  loc_1274EB1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17430
  'Data Table: 5921C0
  loc_E17425: Me.Global.Unload Me
  loc_E1742D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '1131068
  'Data Table: 5921C0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_D8 As Integer
  Dim unk_5921DC As Connection15
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
  loc_1130D3C: On Error Goto loc_113105F
  loc_1130D56: If (Me.RecordCount <= 0) Then
  loc_1130D5F:   var_B8 = "Information"
  loc_1130D74:   var_A8 = "No Records To Search."
  loc_1130D7A:   MsgBox(var_A8, &H40, var_B8, var_E8, var_108)
  loc_1130D8A:   Exit Sub
  loc_1130D8B: End If
  loc_1130D9E: If (OpenType = "Pending KOT") Then
  loc_1130DA8:   var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],K.VDate as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((KOT K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F92078
  loc_1130DBD:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_1130DC5:   var_E8 = CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate=") & var_A8 
  loc_1130DD4:   var_D8 = 0
  loc_1130E04:   unk_5921DC.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_1130E0C:   var_118 = var_118.Fields
  loc_1130E14:   var_D8 = var_11C.Item(var_11C)
  loc_1130E1C:   var_120 = var_120.Value
  loc_1130E24:   var_140 = (var_130 + var_130)
  loc_1130E31:   var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_1130E3B:   var_1B0 = 0
  loc_1130E5B:   var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_1130E6B:   unk_5921DC.Execute var_174 & "'", var_198, -1
  loc_1130E73:   var_19C = var_19C.Fields
  loc_1130E7B:   var_1B0 = var_1A0.Item(var_1A0)
  loc_1130E83:   var_1B4 = var_1B4.Value
  loc_1130EB4:   MemVar_1F920E4 = CStr(var_1C4 & var_1C4 & "') And Pending='Y' AND K.ROOMNO='" & CVar(PTableNo) & "' Order by Docid")
  loc_1130EF8: Else
  loc_1130EFF:   var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],K.VDate as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((KOT K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F92078
  loc_1130F14:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC, CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate="))
  loc_1130F1C:   var_E8 = MemVar_1F920E4 & var_A8 
  loc_1130F2B:   var_D8 = 0
  loc_1130F5B:   unk_5921DC.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_1130F63:   var_118 = var_118.Fields
  loc_1130F6B:   var_D8 = var_11C.Item(var_11C)
  loc_1130F73:   var_120 = var_120.Value
  loc_1130F7B:   var_140 = (var_130 + var_130)
  loc_1130F88:   var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_1130F92:   var_1B0 = 0
  loc_1130FB2:   var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_1130FC2:   unk_5921DC.Execute var_174 & "'", var_198, -1
  loc_1130FCA:   var_19C = var_19C.Fields
  loc_1130FD2:   var_1B0 = var_1A0.Item(var_1A0)
  loc_1130FDA:   var_1B4 = var_1B4.Value
  loc_1130FF0:   MemVar_1F920E4 = CStr(var_1C4 & var_1C4 & "') Order by Docid")
  loc_113102B: End If
  loc_1131034: Proc_6_126_F1BCC0("800,1500,800,1000,1800,1800", MemVar_1F920E4, var_170)
  loc_1131042: MemVar_1F92120 = Me
  loc_1131059: Call 0.Method_arg_2B0 (1, var_B8, var_E8)
  loc_113105E: Exit Sub
  loc_113105F: ' Referenced from: 1130D3C
  loc_113105F: Proc_6_60_E62BC4(var_170)
  loc_1131064: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E30D98
  'Data Table: 5921C0
  loc_E30D88: Proc_5_0_110649C(&HFF, Me)
  loc_E30D90: Call Proc_251_87_16D2A60(global_76)
  loc_E30D95: Exit Sub
  loc_E30D96: If 1 Then Exit Sub
  loc_E30D96: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38FB8
  'Data Table: 5921C0
  loc_E38FA8: Proc_5_0_110649C(&HFF, Me)
  loc_E38FB0: Call Proc_251_87_16D2A60(global_76)
  loc_E38FB5: Exit Sub
  loc_E38FB6: If 4 Then Exit Sub
  loc_E38FB6: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E392B8
  'Data Table: 5921C0
  loc_E392A8: Proc_5_0_110649C(&HFF, Me)
  loc_E392B0: Call Proc_251_87_16D2A60(global_76)
  loc_E392B5: Exit Sub
  loc_E392B6: If 3 Then Exit Sub
  loc_E392B6: End If
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32358
  'Data Table: 5921C0
  Dim TopCtrl1_UnknownEvent_138FF As Double
  loc_E32348: Proc_5_0_110649C(&HFF, Me)
  loc_E32350: Call Proc_251_87_16D2A60(global_76)
  loc_E32355: Exit Sub
  loc_E32356: TopCtrl1_UnknownEvent_138FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1C85D54
  'Data Table: 5921C0
  Dim var_138 As Variant
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_14C As String
  Dim unk_5921DC As Connection15
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
  loc_1C7F654: On Error Goto loc_1C85D4C
  loc_1C7F674: Proc_6_17_EAA2B0(var_128, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1C7F68A: unk_5921DC.Execute CStr(var_16C & var_128), -1, var_170
  loc_1C7F695: Set var_100 = var_170
  loc_1C7F6BB: If (var_100.RecordCount > 0) Then
  loc_1C7F6F5:   var_F0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader1"))))))
  loc_1C7F73B:   var_F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader2"))))))
  loc_1C7F781:   var_F8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader3"))))))
  loc_1C7F79F:   var_170 = var_100.Fields
  loc_1C7F7AF:   var_128 = CVar(var_170.Item("KOTHeader4")) 'Address
  loc_1C7F7C7:   var_FC = CStr(Trim(CVar(Proc_6_38_E68A98(var_128))))
  loc_1C7F7D6: End If
  loc_1C7F7DB: Set var_100 = Nothing
  loc_1C7F805: unk_5921DC.Execute "Select CKOTPrintYN,NoOfKot From Depart Where Code='" & LocalRestCode & "'", var_128, -1
  loc_1C7F810: Set var_BC = var_170
  loc_1C7F834: If (var_BC.RecordCount > 0) Then
  loc_1C7F85F:   var_148 = CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1C7F879:   var_E4 = CStr(Ucase(Trim(var_148)))
  loc_1C7F8B0:   Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C7F8B9:   var_E6 = CInt(var_148)
  loc_1C7F8EC:   Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C7F900:   var_190 = var_BC.Fields
  loc_1C7F917:   Proc_6_39_E7C810(var_1A4, CVar(var_190.Item("NoOfKot")))
  loc_1C7F944:   var_E8 = CInt(IIf((var_148 <= 0), 1, var_1A4))
  loc_1C7F95F: End If
  loc_1C7F967: If (var_E4 = "Y") Then
  loc_1C7F96D:   Call Proc_251_83_1BBBC38(var_1E6, var_E8)
  loc_1C7F978:   If (var_1E6 = 0) Then
  loc_1C7F97B:     Exit Sub
  loc_1C7F97C:   End If
  loc_1C7F97C: End If
  loc_1C7F97F: MemVar_1F923C0 = "N"
  loc_1C7F986: MemVar_1F923C4 = "N"
  loc_1C7F98D: MemVar_1F923C8 = "K"
  loc_1C7F998: var_14C = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT, K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE " & "From ((KOT K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode)"
  loc_1C7F9DD: var_88 = CStr(CVar(var_14C & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C7F9FC: var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7FA1C: var_178 = Me.Fields.Item("SearchCode")
  loc_1C7FA24: var_128 = var_178.Value
  loc_1C7FA2C: var_16C = var_148 & var_128 
  loc_1C7FA35: var_18C = var_16C & "'" 
  loc_1C7FA3A: var_8C = CStr(var_18C)
  loc_1C7FA57: If (var_88 = vbNullString) Then
  loc_1C7FA5A:   Exit Sub
  loc_1C7FA5B: End If
  loc_1C7FA63: If (var_8C = vbNullString) Then
  loc_1C7FA66:   Exit Sub
  loc_1C7FA67: End If
  loc_1C7FA8B: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4), var_178, var_14C, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='", var_128)
  loc_1C7FA93: -1 = var_178.Text
  loc_1C7FAAC: unk_5921DC.Execute var_190 & var_14C & "' AND CONTRADOCID IS NULL", var_E6, Me.Txt
  loc_1C7FAE3: If (var_190.RecordCount = 1) Then
  loc_1C7FAE9:   var_C8 = "New Order"
  loc_1C7FAEF: Else
  loc_1C7FAF6:   Set var_170 = Me.LblState
  loc_1C7FB04:   var_C8 = var_170.Caption
  loc_1C7FB0A: End If
  loc_1C7FB20: unk_5921DC.Execute var_88, var_128, -1
  loc_1C7FB2B: Set var_B4 = var_170
  loc_1C7FB4A: unk_5921DC.Execute "SELECT KOTPrinting,KOTPrintEdited FROM Enviro", var_128, -1
  loc_1C7FB55: Set var_D0 = var_170
  loc_1C7FB6D: var_170 = var_B4.Fields
  loc_1C7FB97: If (Proc_6_38_E68A98(CVar(var_170.Item("ContraDocId")), var_170) <> vbNullString) Then
  loc_1C7FBB3:   MsgBox("Sale Bill Already Generated !!", &H40, var_148, var_16C, var_18C)
  loc_1C7FBC3:   Exit Sub
  loc_1C7FBC4: End If
  loc_1C7FBFD: If (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_AE"))) = "E") Then
  loc_1C7FC02:   var_102 = &HFF
  loc_1C7FC05: End If
  loc_1C7FC45: If (var_102 And (Proc_6_38_E68A98(CVar(var_D0.Fields.Item("KOTPrintEdited")), (var_102 = &HFF)) = "No Print")) Then
  loc_1C7FC48:   Exit Sub
  loc_1C7FC49: End If
  loc_1C7FC62: var_170 = var_D0.Fields
  loc_1C7FC93: var_1A4 = var_170 And (Trim(CVar(Proc_6_38_E68A98(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "Void Items")
  loc_1C7FCA7: If CBool(var_1A4) Then
  loc_1C7FCB9:   var_170 = var_D0.Fields
  loc_1C7FCC9:   var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C7FCF4:   If (Trim(CVar(Proc_6_38_E68A98(var_128))) = vbNullString) Then
  loc_1C7FD0B:     var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1C7FD1B:     unk_5921DC.Execute var_14C & "MK'", var_128, -1
  loc_1C7FD26:     Set var_BC = var_170
  loc_1C7FD39:   Else
  loc_1C7FD4D:     var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7FD94:     unk_5921DC.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'"), var_1A4, -1
  loc_1C7FD9F:     Set var_BC = var_190
  loc_1C7FDBB:   End If
  loc_1C7FDBE: Else
  loc_1C7FE08:   var_1A4 = var_190 And (Trim(CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "All Items")
  loc_1C7FE1C:   If CBool(var_1A4) Then
  loc_1C7FE2E:     var_170 = var_D0.Fields
  loc_1C7FE3E:     var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C7FE69:     If (Trim(CVar(Proc_6_38_E68A98(var_128))) = vbNullString) Then
  loc_1C7FE80:       var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1C7FE90:       unk_5921DC.Execute var_14C & "MK'", var_128, -1
  loc_1C7FE9B:       Set var_BC = var_170
  loc_1C7FEAE:     Else
  loc_1C7FEC2:       var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7FF09:       unk_5921DC.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "'"), var_1A4, -1
  loc_1C7FF14:       Set var_BC = var_190
  loc_1C7FF30:     End If
  loc_1C7FF33:   Else
  loc_1C7FF42:     var_170 = var_D0.Fields
  loc_1C7FF52:     var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C7FF7D:     If (Trim(CVar(Proc_6_38_E68A98(var_128, var_190))) = vbNullString) Then
  loc_1C7FF94:       var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1C7FFA4:       unk_5921DC.Execute var_14C & "MK'", var_128, -1
  loc_1C7FFAF:       Set var_BC = var_170
  loc_1C7FFC2:     Else
  loc_1C7FFD6:       var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C8001D:       unk_5921DC.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN<>'Y'"), var_1A4, -1
  loc_1C80028:       Set var_BC = var_190
  loc_1C80044:       ' Referenced from:       1C85D30
  loc_1C80044:     End If
  loc_1C80044:   End If
  loc_1C80044: End If
  loc_1C80053: If Not(var_BC.EOF) Then
  loc_1C8006F:   var_170 = var_D0.Fields
  loc_1C800B4:   If CBool(var_170 And (Trim(CVar(Proc_6_38_E68A98(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF), var_190))) = "Void Items")) Then
  loc_1C800C6:     var_170 = var_D0.Fields
  loc_1C80101:     If (Trim(CVar(Proc_6_38_E68A98(CVar(var_170.Item("KOTPrinting")), var_170))) = "Seperate for All Kitchen") Then
  loc_1C8010B:       var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C80184:       var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C801C0:       var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN='Y'")
  loc_1C801EE:     Else
  loc_1C801F5:       var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C80233:       var_8C = CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'")
  loc_1C80248:     End If
  loc_1C8024B:   Else
  loc_1C80264:     var_170 = var_D0.Fields
  loc_1C802A9:     If CBool(var_170 And (Trim(CVar(Proc_6_38_E68A98(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "All Items")) Then
  loc_1C802F6:       If (Trim(CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("KOTPrinting"))))) = "Seperate for All Kitchen") Then
  loc_1C80300:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C80379:         var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C803B5:         var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "'")
  loc_1C803E3:       Else
  loc_1C803EA:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C80428:         var_8C = CStr(var_148 & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C8043D:       End If
  loc_1C80440:     Else
  loc_1C8048A:       If (Trim(CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("KOTPrinting"))))) = "Seperate for All Kitchen") Then
  loc_1C80494:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C8050D:         var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C80549:         var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN<>'Y'")
  loc_1C80577:       Else
  loc_1C8057E:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C80596:         var_170 = Me.Fields
  loc_1C805A6:         var_128 = var_170.Item("SearchCode").Value
  loc_1C805BC:         var_8C = CStr(var_148 & var_128 & "' And K.VoidYN<>'Y'")
  loc_1C805D1:       End If
  loc_1C805D1:     End If
  loc_1C805D1:   End If
  loc_1C805E7:   unk_5921DC.Execute var_8C, var_128, -1
  loc_1C805F2:   Set var_B8 = var_170
  loc_1C80601:   var_174 = var_B8.RecordCount
  loc_1C8060F:   If (var_174 > 0) Then
  loc_1C80621:     var_170 = var_BC.Fields
  loc_1C80640:     var_264 = Trim(CVar(var_170.Item("PrintType"))) 'Variant
  loc_1C80655:     If (var_264 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1C80665:       Call Proc_251_84_EFA11C(New, var_170)
  loc_1C8066D:       Set var_D4 = var_170
  loc_1C80673:       Me.Recordset15.MoveFirst
  loc_1C80678:       ' Referenced from: 1C81406
  loc_1C80687:       If Not(var_B4.EOF) Then
  loc_1C8068C:         var_92 = 0
  loc_1C807B4:         var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), var_92) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C807BD:         var_90 = CStr(var_304)
  loc_1C80801:         If (var_92 = 0) Then
  loc_1C80807:           var_1EC = vbNullString
  loc_1C80822:           Call Proc_251_85_F13DD4(var_D4, vbNullString, vbNullString)
  loc_1C8085E:           var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1C80895:           var_148 = CVar(Me.LblRest.Caption) 'String
  loc_1C80898:           var_16C = (Space(1) + var_148)
  loc_1C808AD:           Call Proc_251_85_F13DD4(var_D4, vbNullString, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))))
  loc_1C808DF:           Call Proc_251_85_F13DD4(var_D4, vbNullString, var_90, vbNullString)
  loc_1C8090E:           Call Proc_251_85_F13DD4(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C80942:           Proc_6_39_E7C810(var_148, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C80976:           var_1EC = vbNullString
  loc_1C8097F:           Call Proc_251_85_F13DD4(var_D4, var_1EC, " KOT No.   : " & Proc_6_45_EAD428(CStr(var_148), &HA, vbNullString))
  loc_1C80A3B:           var_310 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1C80A4F:           Call Proc_251_85_F13DD4(var_D4, vbNullString, " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC) & " " & var_310)
  loc_1C80A96:           var_178 = var_B4.Fields.Item("Remarks")
  loc_1C80AE1:           Call Proc_251_85_F13DD4(var_D4, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178), vbNullString), &H1E))
  loc_1C80B13:           Set var_170 = Me.Label1
  loc_1C80B19:           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C80B84:           var_30C = vbNullString
  loc_1C80B93:           var_1A4 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C80B9C:           var_1B4 = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) + ": ")
  loc_1C80BA3:           var_1E4 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1C80BA6:           var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) + var_1E4)
  loc_1C80BBB:           Call Proc_251_85_F13DD4(var_D4, vbNullString, CStr("* NC LOT *"))
  loc_1C80BF2:           var_17C = vbNullString
  loc_1C80C07:           Call Proc_251_85_F13DD4(var_D4, vbNullString, var_C0)
  loc_1C80C13:         End If
  loc_1C80C39:         var_16C = (var_17C + CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))))
  loc_1C80C4D:         var_1A4 = (Trim(CVar(var_178)) + Space(1))
  loc_1C80C64:         var_1B4 = CVar(Proc_6_52_EAD4F4("Qty", 6, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))) 'String
  loc_1C80C67:         var_1D4 = (var_30C + var_1B4)
  loc_1C80C6C:         var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C80C8A:         var_17C = vbNullString
  loc_1C80C9F:         Call Proc_251_85_F13DD4(var_D4, vbNullString, var_AC)
  loc_1C80CAE:         var_17C = vbNullString
  loc_1C80CC3:         Call Proc_251_85_F13DD4(var_D4, vbNullString, var_C0)
  loc_1C80CD5:         var_92 = (var_92 + 4)
  loc_1C80CDB:         var_B8.MoveFirst
  loc_1C80CE0:         ' Referenced from: 1C81061
  loc_1C80CEF:         If Not(var_B8.EOF) Then
  loc_1C80D28:           var_190 = var_B8.Fields
  loc_1C80D3F:           Proc_6_39_E7C810(var_1E4, CVar(var_190.Item("qty")), &H12)
  loc_1C80D6A:           var_1C4 = "Cancel"
  loc_1C80DA4:           var_1FC = "Y"
  loc_1C80DE2:           var_18C = (1 + CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1C80DF6:           var_1B4 = (Space(1) + Space(1))
  loc_1C80E0F:           var_284 = (var_17C + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0")), 3, var_1B4)))
  loc_1C80E25:           var_354 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item(var_1C4).Value = var_1FC), "Void", vbNullString)), 5, CVar(var_B4.Fields.Item("NCKOT")))) 'String
  loc_1C80E28:           var_364 = (var_17C + var_354)
  loc_1C80E87:           Call Proc_251_85_F13DD4(var_D4, vbNullString, CStr(var_364))
  loc_1C80E99:           var_92 = (var_92 + 1)
  loc_1C80ED5:           If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C80F06:             var_30C = vbNullString
  loc_1C80F2D:             Call Proc_251_85_F13DD4(var_D4, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), vbNullString) & ")")
  loc_1C80F4D:             var_92 = (var_92 + 1)
  loc_1C80F50:           End If
  loc_1C80F5A:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C80F75:             Call Proc_251_85_F13DD4(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C80F9F:             Call Proc_251_85_F13DD4(var_D4, vbNullString, " Contd.", vbNullString)
  loc_1C80FB3:             var_94 = (var_94 + 1)
  loc_1C80FD3:             Call Proc_251_85_F13DD4(var_D4, vbNullString, var_90, vbNullString, 0)
  loc_1C80FFC:             Call Proc_251_85_F13DD4(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C81020:             Call Proc_251_85_F13DD4(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C81044:             Call Proc_251_85_F13DD4(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C81056:             var_92 = (var_92 + 4)
  loc_1C81059:           End If
  loc_1C8105C:           var_B8.MoveNext
  loc_1C81061:           GoTo loc_1C80CE0
  loc_1C81064:         End If
  loc_1C8106E:         If (&H12 < (&H45 - var_A6)) Then
  loc_1C81071:           ' Referenced from: 1C810B3
  loc_1C8107B:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C8109C:             Call Proc_251_85_F13DD4(var_D4, vbNullString, vbNullString, vbNullString, &H12)
  loc_1C810B0:             var_92 = (var_92 + 1)
  loc_1C810B3:             GoTo loc_1C81071
  loc_1C810B6:           End If
  loc_1C810B6:         End If
  loc_1C810CE:         Call Proc_251_85_F13DD4(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C8111C:         var_30C = vbNullString
  loc_1C8113C:         Call Proc_251_85_F13DD4(var_D4, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1C81197:         Call Proc_251_85_F13DD4(var_D4, vbNullString, CStr(" ***  " & Trim(var_C8) & "  ***"), vbNullString)
  loc_1C811F6:         var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C81204:         unk_5921DC.Execute CStr(var_16C), Space(1), -1
  loc_1C81265:         If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C8128F:           Call Proc_251_85_F13DD4(var_D4, vbNullString, " ***  " & "Changed KOT" & "  ***", vbNullString)
  loc_1C812A2:         Else
  loc_1C812AF:           var_138 = "Select Printed from kot where docid='"
  loc_1C812E5:           var_15C = "'"
  loc_1C812F8:           unk_5921DC.Execute CStr(var_138 & Me.Fields.Item("SearchCode").Value & var_15C), Space(1), -1
  loc_1C81320:           var_118 = 0
  loc_1C81356:           If (Proc_6_38_E68A98(CVar(var_190.Fields.Item(var_118)), var_190, var_190) = "Y") Then
  loc_1C81380:             Call Proc_251_85_F13DD4(var_D4, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***", vbNullString)
  loc_1C81393:           Else
  loc_1C813B1:             Call Proc_251_85_F13DD4(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C813BF:           End If
  loc_1C813BF:         End If
  loc_1C813C4:         Set var_DC = Nothing
  loc_1C813EE:         Call Proc_251_85_F13DD4(var_D4, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1C81401:         var_B4.MoveNext
  loc_1C81406:         GoTo loc_1C80678
  loc_1C81409:       End If
  loc_1C8140C:       var_D8 = "WinKOTPrint"
  loc_1C81433:       Set var_170 = var_D4 
  loc_1C8143A:       CreateFieldDefFile(var_170, MemVar_1F920B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1C8147C:       Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_118, var_170)
  loc_1C81487:       MemVar_1F921E4 = var_170
  loc_1C814B0:       Call 0.Method_arg_64 (var_170, CVar(var_170), var_138, var_15C)
  loc_1C814B8:       Call 0.Method_arg_2C (var_30C, var_30C)
  loc_1C814F9:       If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1C81546:         If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C81575:           Call Proc_251_82_F0E678(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C81583:         End If
  loc_1C81583:       End If
  loc_1C81592:       var_138 = CVar(var_E8) 'Integer
  loc_1C815A1:       Call 0.Method_Me8 (False, var_138, var_15C)
  loc_1C815AB:       Set var_D4 = Nothing
  loc_1C815B1:     Else
  loc_1C815BC:       If (var_264 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1C815C2:         var_B4.MoveFirst
  loc_1C815C7:         ' Referenced from:   1C8239B
  loc_1C815D6:         If Not(var_B4.EOF) Then
  loc_1C815DC:           var_118 = "ShortName"
  loc_1C8160C:           var_18C = 3
  loc_1C8162F:           var_1C4 = "NCKOT"
  loc_1C8163B:           var_190 = var_B4.Fields
  loc_1C81643:           var_194 = var_190.Item(var_1C4)
  loc_1C81678:           var_1FC = (Proc_6_38_E68A98(CVar(var_194), var_1FC) = "Y")
  loc_1C816E5:           var_15C = "LAU"
  loc_1C816EF:           var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item(var_118)), var_1C4))), 1, var_18C)) = var_15C) 'Variant
  loc_1C816F9:           var_304 = IIf(var_2F4, IIf(var_1FC, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C81702:           var_90 = CStr(var_304)
  loc_1C81743:           var_D8 = "KOTPrint"
  loc_1C8176A:           Set var_170 = var_B8 
  loc_1C81771:           CreateFieldDefFile(var_170, MemVar_1F920B4 & "\" & var_D8 & ".ttx")
  loc_1C8177D:           Set var_B8 = var_170
  loc_1C817B3:           Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_118, var_170)
  loc_1C817BE:           MemVar_1F921E4 = var_170
  loc_1C817E7:           Call 0.Method_arg_64 (var_170, CVar(var_B8), var_138)
  loc_1C817EF:           Call 0.Method_arg_2C (var_15C, &HFF)
  loc_1C817FD:           Call 0.Method_arg_150 (var_170)
  loc_1C8184A:           var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C81858:           unk_5921DC.Execute CStr(var_16C), var_18C, -1
  loc_1C818B9:           If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C818BF:             var_CC = "Changed KOT"
  loc_1C818C5:           Else
  loc_1C8191B:             unk_5921DC.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C8194F:             var_170 = var_190.Fields
  loc_1C81957:             var_178 = var_170.Item(0)
  loc_1C81968:             var_14C = Proc_6_38_E68A98(CVar(var_178), var_190)
  loc_1C81979:             If (var_14C = "Y") Then
  loc_1C8197F:               var_CC = "DUPLICATE KOT"
  loc_1C81985:             Else
  loc_1C81988:               var_CC = vbNullString
  loc_1C8198B:             End If
  loc_1C8198B:           End If
  loc_1C81990:           Set var_DC = Nothing
  loc_1C819A4:           Call 0.Method_arg_90 (var_170, var_174, var_AE)
  loc_1C819AC:           Call 0.Method_arg_24 (1)
  loc_1C819B8:           For var_368 =  To CInt(var_174):   var_190 = var_368 'Integer
  loc_1C819D1:             Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C819D9:             Call 0.Method_arg_20 (var_178)
  loc_1C819E1:             Call 0.Method_arg_30 (var_14C)
  loc_1C819F7:             var_378 = Ucase(CVar(var_14C)) 'Variant
  loc_1C81A27:             If (var_378 = Ucase("comp_name")) Then
  loc_1C81A4B:               Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C81A53:               Call 0.Method_arg_20 (var_178)
  loc_1C81A5B:               Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1C81A71:             Else
  loc_1C81A93:               If (var_378 = Ucase("comp_add1")) Then
  loc_1C81AB7:                 Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C81ABF:                 Call 0.Method_arg_20 (var_178)
  loc_1C81AC7:                 Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1C81ADD:               Else
  loc_1C81AFF:                 If (var_378 = Ucase("comp_pin")) Then
  loc_1C81B23:                   Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C81B2B:                   Call 0.Method_arg_20 (var_178)
  loc_1C81B33:                   Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1C81B49:                 Else
  loc_1C81B6B:                   If (var_378 = Ucase("comp_GSTIN")) Then
  loc_1C81B8F:                     Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C81B97:                     Call 0.Method_arg_20 (var_178)
  loc_1C81B9F:                     Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1C81BB5:                   Else
  loc_1C81BD7:                     If (var_378 = Ucase("RestName")) Then
  loc_1C81BE4:                       Set var_170 = Me.LblRest
  loc_1C81C0D:                       Call 0.Method_arg_90 (var_178, CLng(var_AE))
  loc_1C81C15:                       Call 0.Method_arg_20 (var_190)
  loc_1C81C1D:                       Call 0.Method_arg_38 ("'" & var_170.Caption & "'")
  loc_1C81C37:                     Else
  loc_1C81C59:                       If (var_378 = Ucase("mTitle")) Then
  loc_1C81C7D:                         Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C81C85:                         Call 0.Method_arg_20 (var_178)
  loc_1C81C8D:                         Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1C81CA3:                       Else
  loc_1C81CAB:                         var_128 = "Header1"
  loc_1C81CC5:                         If (var_378 = Ucase(var_128)) Then
  loc_1C81CD3:                           Proc_6_17_EAA2B0(var_128)
  loc_1C81CEF:                           Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C81CF7:                           Call 0.Method_arg_20 (CStr(var_128))
  loc_1C81CFF:                           Call 0.Method_arg_38 (var_F0)
  loc_1C81D14:                         Else
  loc_1C81D1C:                           var_128 = "Header2"
  loc_1C81D36:                           If (var_378 = Ucase(var_128)) Then
  loc_1C81D44:                             Proc_6_17_EAA2B0(var_128)
  loc_1C81D60:                             Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C81D68:                             Call 0.Method_arg_20 (CStr(var_128))
  loc_1C81D70:                             Call 0.Method_arg_38 (var_F4)
  loc_1C81D85:                           Else
  loc_1C81D8D:                             var_128 = "Header3"
  loc_1C81DA7:                             If (var_378 = Ucase(var_128)) Then
  loc_1C81DB5:                               Proc_6_17_EAA2B0(var_128)
  loc_1C81DD1:                               Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C81DD9:                               Call 0.Method_arg_20 (CStr(var_128))
  loc_1C81DE1:                               Call 0.Method_arg_38 (var_F8)
  loc_1C81DF6:                             Else
  loc_1C81DFE:                               var_128 = "Header4"
  loc_1C81E18:                               If (var_378 = Ucase(var_128)) Then
  loc_1C81E26:                                 Proc_6_17_EAA2B0(var_128)
  loc_1C81E42:                                 Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C81E4A:                                 Call 0.Method_arg_20 (CStr(var_128))
  loc_1C81E52:                                 Call 0.Method_arg_38 (var_FC)
  loc_1C81E67:                               Else
  loc_1C81E78:                                 var_148 = Ucase("KotNo")
  loc_1C81E89:                                 If (var_378 = var_148) Then
  loc_1C81EB7:                                   Proc_6_39_E7C810(var_148, CVar(var_B4.Fields.Item("VNo")))
  loc_1C81EC3:                                   var_15C = "'"
  loc_1C81EE0:                                   Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C81EE8:                                   Call 0.Method_arg_20 (var_194)
  loc_1C81EF0:                                   Call 0.Method_arg_38 (CStr("'" & var_148 & var_15C))
  loc_1C81F0F:                                 Else
  loc_1C81F31:                                   If (var_378 = Ucase("KotDate")) Then
  loc_1C81F7D:                                     Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C81F85:                                     Call 0.Method_arg_20 (var_194)
  loc_1C81F8D:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1C81FAA:                                   Else
  loc_1C81FCC:                                     If (var_378 = Ucase("KotTime")) Then
  loc_1C82018:                                       Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C82020:                                       Call 0.Method_arg_20 (var_194)
  loc_1C82028:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1C82045:                                     Else
  loc_1C82067:                                       If (var_378 = Ucase("Remarks")) Then
  loc_1C82084:                                         var_178 = var_B4.Fields.Item("Remarks")
  loc_1C820B3:                                         Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C820BB:                                         Call 0.Method_arg_20 (var_194)
  loc_1C820C3:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_178)) & "'")
  loc_1C820E0:                                       Else
  loc_1C82102:                                         If (var_378 = Ucase("TableTitle")) Then
  loc_1C82113:                                           Set var_170 = Me.Label1
  loc_1C82119:                                           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C82151:                                           Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C82159:                                           Call 0.Method_arg_20 (var_194)
  loc_1C82161:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_178)) & "'"))
  loc_1C82180:                                         Else
  loc_1C821A2:                                           If (var_378 = Ucase("TableNo")) Then
  loc_1C821EE:                                             Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C821F6:                                             Call 0.Method_arg_20 (var_194)
  loc_1C821FE:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1C8221B:                                           Else
  loc_1C8223D:                                             If (var_378 = Ucase("Steward")) Then
  loc_1C82252:                                               var_170 = var_B4.Fields
  loc_1C8225A:                                               var_178 = var_170.Item("WaiterName")
  loc_1C82289:                                               Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C82291:                                               Call 0.Method_arg_20 (var_194)
  loc_1C82299:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_178)) & "'")
  loc_1C822B6:                                             Else
  loc_1C822D8:                                               If (var_378 = Ucase("KotStatus")) Then
  loc_1C822FC:                                                 Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C82304:                                                 Call 0.Method_arg_20 (var_178)
  loc_1C8230C:                                                 Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_1C82322:                                               Else
  loc_1C82344:                                                 If (var_378 = Ucase("KotRemark")) Then
  loc_1C82368:                                                   Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C82370:                                                   Call 0.Method_arg_20 (var_178)
  loc_1C82378:                                                   Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1C8238B:                                                 End If
  loc_1C8238B:                                               End If
  loc_1C8238B:                                             End If
  loc_1C8238B:                                           End If
  loc_1C8238B:                                         End If
  loc_1C8238B:                                       End If
  loc_1C8238B:                                     End If
  loc_1C8238B:                                   End If
  loc_1C8238B:                                 End If
  loc_1C8238B:                               End If
  loc_1C8238B:                             End If
  loc_1C8238B:                           End If
  loc_1C8238B:                         End If
  loc_1C8238B:                       End If
  loc_1C8238B:                     End If
  loc_1C8238B:                   End If
  loc_1C8238B:                 End If
  loc_1C8238B:               End If
  loc_1C8238B:             End If
  loc_1C8238E:           Next var_368 'Integer
  loc_1C82396:           var_B4.MoveNext
  loc_1C8239B:           GoTo loc_1C815C7
  loc_1C8239E:         End If
  loc_1C823C6:         var_14C = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")))
  loc_1C823D7:         If (var_14C <> vbNullString) Then
  loc_1C82424:           If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C82453:             Call Proc_251_82_F0E678(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C82461:           End If
  loc_1C82461:         End If
  loc_1C82467:         If (var_E6 <= 0) Then
  loc_1C82470:           Call 0.Method_arg_50 (var_14C)
  loc_1C8247A:           Set var_178 = Nothing
  loc_1C82494:           Set var_170 = MemVar_1F921E4 
  loc_1C824A0:           Proc_6_99_1483714(var_170, 0, var_14C)
  loc_1C824AB:           MemVar_1F921E4 = var_170
  loc_1C824BC:         Else
  loc_1C824DA:           Call 0.Method_Me8 (False, CVar(var_E6), var_15C, var_1C4)
  loc_1C824DF:         End If
  loc_1C824E2:       Else
  loc_1C824ED:         If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1C824F2:           Close 1
  loc_1C82519:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C82529:           var_B4.MoveFirst
  loc_1C8252E:           ' Referenced from:     1C835C6
  loc_1C8253D:           If Not(var_B4.EOF) Then
  loc_1C82542:             var_92 = 0
  loc_1C8257D:             var_18C = 3
  loc_1C8261D:             var_308 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), &HFF)
  loc_1C82639:             var_17C = var_308
  loc_1C82660:             var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92))), 1, var_18C)) = "LAU") 'Variant
  loc_1C8266A:             var_304 = IIf(var_2F4, IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")), var_1FC) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_17C = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C82673:             var_90 = CStr(var_304)
  loc_1C826B7:             If (var_92 = 0) Then
  loc_1C826BC:               Print 1
  loc_1C826F0:               var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C82701:               If (var_F0 <> vbNullString) Then
  loc_1C8272A:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1C82730:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C82742:               End If
  loc_1C8274A:               If (var_F4 <> vbNullString) Then
  loc_1C82773:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1C82779:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C8278B:               End If
  loc_1C82793:               If (var_F8 <> vbNullString) Then
  loc_1C827BC:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1C827C2:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C827D4:               End If
  loc_1C827DC:               If (var_FC <> vbNullString) Then
  loc_1C82805:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1C8280B:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C8281D:               End If
  loc_1C8281F:               Print 1
  loc_1C8284F:               Call Proc_251_96_10ACF40(Me.LblRest.Caption, "D", &H28)
  loc_1C82859:               Print 1, var_308
  loc_1C8287F:               Call Proc_251_96_10ACF40(var_90, "D", &H28)
  loc_1C82889:               Print 1, var_17C
  loc_1C8289D:               Print 1
  loc_1C828A5:               Print 1
  loc_1C828DE:               Proc_6_39_E7C810(var_18C, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C82900:               var_148 = (Chr(&HF) + "KOT No.   :     ")
  loc_1C8290A:               var_1B4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_18C), &HA, Proc_6_45_EAD428(CStr(var_18C), &HA, var_17C))))
  loc_1C82910:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, var_18C))
  loc_1C829C2:               var_148 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_1C829CC:               var_1A4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_308), &HC)))
  loc_1C829D5:               var_1B4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_308), &HC))), &HA, Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_308), &HC))), &HA, var_17C))) + " ")
  loc_1C829DF:               var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_308), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C829E5:               Print 1, "* NC LOT *"
  loc_1C82A3A:               var_178 = var_B4.Fields.Item("Remarks")
  loc_1C82A77:               var_148 = (Chr(&HF) + "Remarks :     ")
  loc_1C82A81:               var_1A4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32)))
  loc_1C82A88:               var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32))), &HA, Proc_6_38_E68A98(CVar(var_178)))) + Chr(&H12))
  loc_1C82A8E:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C82AC7:               Set var_170 = Me.Label1
  loc_1C82ACD:               Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C82B3E:               var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C82B47:               var_1B4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))), &HA, Proc_6_38_E68A98(CVar(var_178)))) + ":     ")
  loc_1C82B51:               var_224 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1C82B57:               Print 1, "* NC LOT *"
  loc_1C82B9C:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C82BA2:               Print 1, CVar(var_178)
  loc_1C82BAF:             End If
  loc_1C82BD5:             var_16C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1B)) + Space(1))
  loc_1C82BEF:             var_1A4 = (Trim(CVar(var_178)) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1C82BF4:             var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6))), &HA, "Qty")))
  loc_1C82C21:             var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C82C27:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H1B))
  loc_1C82C4A:             var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C82C50:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H1B))
  loc_1C82C63:             var_92 = (var_92 + 4)
  loc_1C82C69:             var_B8.MoveFirst
  loc_1C82C6E:             ' Referenced from:     1C831DF
  loc_1C82C7D:             If Not(var_B8.EOF) Then
  loc_1C82CAE:               var_16C = Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ItemName")), &H12)))
  loc_1C82CB7:               var_108 = CStr(var_16C)
  loc_1C82CEC:               Proc_6_39_E7C810(var_16C, CVar(var_B8.Fields.Item("qty")))
  loc_1C82D23:               var_190 = var_B8.Fields
  loc_1C82D8F:               var_1D4 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_16C, "0.00")), 6, Space(1))))
  loc_1C82DA5:               var_2D4 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_190.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, CVar(var_B4.Fields.Item("TableNo")))) 'String
  loc_1C82DA8:               var_2E4 = (1 + var_2D4)
  loc_1C82DAD:               var_C4 = CStr(IIf(("Qty" = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C82DDF:               ' Referenced from:     1C82FE4
  loc_1C82DE9:               If (Len(var_108) <> 0) Then
  loc_1C82E1A:                 var_174 = InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0)
  loc_1C82E51:                 var_18C = CVar((InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0) - 1)) 'Long
  loc_1C82EA4:                 var_308 = Proc_6_45_EAD428(CStr(Mid(var_108, 1, IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 27, "0.00"))), &H1B)
  loc_1C82EE0:                 var_148 = (Chr(&HF) + CVar(var_308 & var_308 & var_C4))
  loc_1C82EE6:                 Print 1, Left(var_108, &H1B)
  loc_1C82EF9:                 var_92 = (var_92 + 1)
  loc_1C82EFF:                 var_C4 = vbNullString
  loc_1C82F0C:                 If (Len(var_108) > &H1B) Then
  loc_1C82F3D:                   var_174 = InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0)
  loc_1C82F65:                   var_17C = CStr(Left(var_108, &H1B))
  loc_1C82F74:                   var_18C = CVar((InStrRev(var_17C, " ", -1, 0) + 1)) 'Long
  loc_1C82FB5:                   var_1D4 = Mid(var_108, CLng(IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00")), CVar(Len(var_108)))
  loc_1C82FBE:                   var_108 = CStr(var_1D4)
  loc_1C82FDE:                 Else
  loc_1C82FE1:                   var_108 = vbNullString
  loc_1C82FE4:                 End If
  loc_1C82FE4:                 GoTo loc_1C82DDF
  loc_1C82FE7:               End If
  loc_1C83020:               If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), var_BC.AbsolutePosition, &H12) <> vbNullString) Then
  loc_1C83063:                 var_148 = (Chr(&HF) + "(")
  loc_1C8306D:                 var_1A4 = (Left(var_108, &H1B) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), var_BC.AbsolutePosition)))
  loc_1C83076:                 var_1B4 = (IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00") + ")")
  loc_1C8307C:                 Print 1, CVar(Len(var_108))
  loc_1C8309D:                 var_92 = (var_92 + 1)
  loc_1C830A0:               End If
  loc_1C830AA:               If (&H12 = (&H45 - var_A6)) Then
  loc_1C830C3:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C830C9:                 Print 1, Left(var_108, &H1B)
  loc_1C830DB:                 Print 1, "Contd."
  loc_1C830F3:                 Print 1, Chr(&HC)
  loc_1C83102:                 var_94 = (var_94 + 1)
  loc_1C83118:                 Call Proc_251_97_120255C(1, 0, &H28, var_312)
  loc_1C83137:                 Call Proc_251_96_10ACF40(var_90, "B", &H28, var_17C, var_312)
  loc_1C83141:                 Print 1, var_17C
  loc_1C83150:                 var_92 = &H12
  loc_1C83169:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C8316F:                 Print 1, Left(var_108, &H1B)
  loc_1C83192:                 var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C83198:                 Print 1, Left(var_108, &H1B)
  loc_1C831BB:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C831C1:                 Print 1, Left(var_108, &H1B)
  loc_1C831D4:                 var_92 = (var_92 + 4)
  loc_1C831D7:               End If
  loc_1C831DA:               var_B8.MoveNext
  loc_1C831DF:               GoTo loc_1C82C6E
  loc_1C831E2:             End If
  loc_1C831EC:             If (var_92 < (&H45 - var_A6)) Then
  loc_1C831EF:               ' Referenced from:     1C83210
  loc_1C831F9:               If (var_92 = (&H45 - var_A6)) Then
  loc_1C83201:                 Print 1, vbNullString
  loc_1C8320D:                 var_92 = (var_92 + 1)
  loc_1C83210:                 GoTo loc_1C831EF
  loc_1C83213:               End If
  loc_1C83213:             End If
  loc_1C83229:             var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C8322F:             Print 1, Left(var_108, &H1B)
  loc_1C83290:             var_148 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1C83297:             var_18C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C8329A:             var_1A4 = (Left(var_108, &H1B) + var_18C)
  loc_1C832A0:             Print 1, IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00")
  loc_1C832E4:             var_148 = (Chr(&HF) + "***  ")
  loc_1C832EB:             var_18C = Left(var_108, &H1B) & Trim(var_C8) 
  loc_1C832FA:             Print 1, var_18C & "  ***"
  loc_1C83355:             var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C83363:             unk_5921DC.Execute CStr(var_16C), var_18C, -1
  loc_1C833C4:             If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C833F5:               Call Proc_251_96_10ACF40(Proc_6_45_EAD428("Changed KOT", &H14, var_190), "D", &H28, var_308)
  loc_1C833FF:               Print 1, var_308
  loc_1C83415:             Else
  loc_1C8346B:               unk_5921DC.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C834C9:               If (Proc_6_38_E68A98(CVar(var_190.Fields.Item(0)), var_190, 1) = "Y") Then
  loc_1C834DF:                 var_30C = Proc_6_45_EAD428("DUPLICATE KOT", &H14)
  loc_1C834FA:                 Call Proc_251_96_10ACF40(var_30C, "D", &H28)
  loc_1C83504:                 Print 1, var_308
  loc_1C8351A:               Else
  loc_1C8351C:                 Print 1
  loc_1C83522:               End If
  loc_1C83522:             End If
  loc_1C83527:             Set var_DC = Nothing
  loc_1C8353F:             var_148 = (Chr(&HF) + "** ")
  loc_1C83549:             var_16C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1C83552:             var_18C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C83558:             Print 1, var_18C
  loc_1C8356C:             var_B4.MoveNext
  loc_1C83573:             Print 1
  loc_1C8357B:             Print 1
  loc_1C83583:             Print 1
  loc_1C8358B:             Print 1
  loc_1C835B1:             var_16C = (Chr(&H1B) + Chr(&H6D))
  loc_1C835B7:             Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C835C6:             GoTo loc_1C8252E
  loc_1C835C9:           End If
  loc_1C835CB:           Close 1
  loc_1C83606:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C8362E:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C83686:             var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C8368C:             Print 1, var_16C
  loc_1C836AC:           Else
  loc_1C836D1:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C83708:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C83719:           End If
  loc_1C8371B:           Close 1
  loc_1C83725:           If (MemVar_1F923B8 = "Y") Then
  loc_1C83757:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C83768:           Else
  loc_1C83770:             For var_37C = 1 To var_E8:       var_EA = var_37C 'Integer
  loc_1C837A5:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C837B6:             Next var_37C 'Integer
  loc_1C837BB:           End If
  loc_1C837BE:         Else
  loc_1C837C9:           If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1C837CE:             Close 1
  loc_1C837F5:             Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C83805:             var_B4.MoveFirst
  loc_1C8380A:             ' Referenced from:       1C846FD
  loc_1C83819:             If Not(var_B4.EOF) Then
  loc_1C83859:               var_18C = 3
  loc_1C838A1:               var_1EC = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT")))
  loc_1C8393C:               var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C)) = "LAU") 'Variant
  loc_1C83946:               var_304 = IIf(var_2F4, IIf((var_1EC = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C8394F:               var_90 = CStr(var_304)
  loc_1C83993:               If (0 = 0) Then
  loc_1C83998:                 Print 1
  loc_1C839CC:                 var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C839DD:                 If (var_F0 <> vbNullString) Then
  loc_1C83A06:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1C83A0C:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C83A1E:                 End If
  loc_1C83A26:                 If (var_F4 <> vbNullString) Then
  loc_1C83A4F:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1C83A55:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C83A67:                 End If
  loc_1C83A6F:                 If (var_F8 <> vbNullString) Then
  loc_1C83A98:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1C83A9E:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C83AB0:                 End If
  loc_1C83AB8:                 If (var_FC <> vbNullString) Then
  loc_1C83AE1:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1C83AE7:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C83AF9:                 End If
  loc_1C83AFB:                 Print 1
  loc_1C83B3F:                 Call Proc_251_96_10ACF40(Proc_6_45_EAD428(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1C83B49:                 Print 1, var_30C
  loc_1C83B87:                 Call Proc_251_96_10ACF40(Proc_6_45_EAD428(var_90, &H14), "D", &H28)
  loc_1C83B91:                 Print 1, var_1EC
  loc_1C83BA9:                 Print 1
  loc_1C83BB1:                 Print 1
  loc_1C83BEA:                 Proc_6_39_E7C810(var_18C, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C83C0C:                 var_148 = (Chr(&HF) + "KOT No.   :       ")
  loc_1C83C16:                 var_1B4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_18C), &HA, var_1EC)))
  loc_1C83C1C:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C))
  loc_1C83CCE:                 var_148 = (Chr(&HF) + "KOT Dt.   :       ")
  loc_1C83CD5:                 var_18C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1C83CD8:                 var_1A4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + var_18C)
  loc_1C83CE1:                 var_1B4 = (CVar(Proc_6_45_EAD428(CStr(var_18C), &HA, Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")))))) + " ")
  loc_1C83CEB:                 var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C83CF1:                 Print 1, "* NC LOT *"
  loc_1C83D46:                 var_178 = var_B4.Fields.Item("Remarks")
  loc_1C83D83:                 var_148 = (Chr(&HF) + "Remarks :       ")
  loc_1C83D8D:                 var_1A4 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32)))
  loc_1C83D94:                 var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32))) + Chr(&H12))
  loc_1C83D9A:                 Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C83DD3:                 Set var_170 = Me.Label1
  loc_1C83DD9:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C83E2A:                 var_308 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C83E4A:                 var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C83E53:                 var_1B4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))) + ":       ")
  loc_1C83E5D:                 var_224 = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_308, 5)))
  loc_1C83E63:                 Print 1, "* NC LOT *"
  loc_1C83EA8:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C83EAE:                 Print 1, CVar(var_178)
  loc_1C83EBB:               End If
  loc_1C83EE1:               var_16C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1C83EED:               var_17C = "Qty"
  loc_1C83EFB:               var_1A4 = (Trim(CVar(var_178)) + CVar(Proc_6_52_EAD4F4(var_17C, 6)))
  loc_1C83F00:               var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_17C, 6))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))))
  loc_1C83F2D:               var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C83F33:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C83F56:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C83F5C:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C83F6F:               var_92 = (var_92 + 4)
  loc_1C83F75:               var_B8.MoveFirst
  loc_1C83F7A:               ' Referenced from:       1C8431B
  loc_1C83F89:               If Not(var_B8.EOF) Then
  loc_1C83FC2:                 var_190 = var_B8.Fields
  loc_1C83FD9:                 Proc_6_39_E7C810(Chr(&H12), CVar(var_190.Item("qty")))
  loc_1C8407C:                 var_18C = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C84095:                 var_234 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_17C, 6)))))
  loc_1C840AB:                 var_304 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C840AE:                 var_340 = (&H12 + var_304)
  loc_1C84107:                 var_148 = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C8410D:                 Print 1, Space(3)
  loc_1C84120:                 var_92 = (var_92 + 1)
  loc_1C8415C:                 If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C8419F:                   var_148 = (Chr(&HF) + "(")
  loc_1C841A9:                   var_1A4 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1C841B2:                   var_1B4 = (CVar(var_190.Item("qty")) + ")")
  loc_1C841B8:                   Print 1, Chr(&H12)
  loc_1C841D9:                   var_92 = (var_92 + 1)
  loc_1C841DC:                 End If
  loc_1C841E6:                 If (&H12 = (&H45 - var_A6)) Then
  loc_1C841FF:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C84205:                   Print 1, Space(3)
  loc_1C84217:                   Print 1, "Contd."
  loc_1C8422F:                   Print 1, Chr(&HC)
  loc_1C8423E:                   var_94 = (var_94 + 1)
  loc_1C84254:                   Call Proc_251_97_120255C(1, 0, &H28, var_312)
  loc_1C84273:                   Call Proc_251_96_10ACF40(var_90, "B", &H28, var_17C, var_312)
  loc_1C8427D:                   Print 1, var_17C
  loc_1C8428C:                   var_92 = &H12
  loc_1C842A5:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C842AB:                   Print 1, Space(3)
  loc_1C842CE:                   var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C842D4:                   Print 1, Space(3)
  loc_1C842F7:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C842FD:                   Print 1, Space(3)
  loc_1C84310:                   var_92 = (var_92 + 4)
  loc_1C84313:                 End If
  loc_1C84316:                 var_B8.MoveNext
  loc_1C8431B:                 GoTo loc_1C83F7A
  loc_1C8431E:               End If
  loc_1C84328:               If (var_92 < (&H45 - var_A6)) Then
  loc_1C8432B:                 ' Referenced from:       1C8434C
  loc_1C84335:                 If (var_92 = (&H45 - var_A6)) Then
  loc_1C8433D:                   Print 1, vbNullString
  loc_1C84349:                   var_92 = (var_92 + 1)
  loc_1C8434C:                   GoTo loc_1C8432B
  loc_1C8434F:                 End If
  loc_1C8434F:               End If
  loc_1C84365:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C8436B:               Print 1, Space(3)
  loc_1C843C1:               var_1EC = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)
  loc_1C843CC:               var_148 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1C843D6:               var_1A4 = (Space(3) + CVar(var_1EC))
  loc_1C843DC:               Print 1, CVar(var_190.Item("qty"))
  loc_1C84420:               var_148 = (Chr(&HF) + "***  ")
  loc_1C84427:               var_18C = Space(3) & Trim(var_C8) 
  loc_1C84436:               Print 1, var_18C & "  ***"
  loc_1C84491:               var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C8449F:               unk_5921DC.Execute CStr(var_16C), var_18C, -1
  loc_1C84500:               If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C84531:                 Call Proc_251_96_10ACF40(Proc_6_45_EAD428("Changed KOT", &H14, var_190), "D", &H28, var_308)
  loc_1C8453B:                 Print 1, var_308
  loc_1C84551:               Else
  loc_1C845A7:                 unk_5921DC.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C84605:                 If (Proc_6_38_E68A98(CVar(var_190.Fields.Item(0)), var_190, 1) = "Y") Then
  loc_1C84636:                   Call Proc_251_96_10ACF40(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1C84640:                   Print 1, var_308
  loc_1C84656:                 Else
  loc_1C84658:                   Print 1
  loc_1C8465E:                 End If
  loc_1C8465E:               End If
  loc_1C84663:               Set var_DC = Nothing
  loc_1C8467B:               var_148 = (Chr(&HF) + "** ")
  loc_1C84685:               var_16C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1C8468E:               var_18C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C84694:               Print 1, var_18C
  loc_1C846A8:               var_B4.MoveNext
  loc_1C846AF:               Print 1
  loc_1C846B7:               Print 1
  loc_1C846BF:               Print 1
  loc_1C846C7:               Print 1
  loc_1C846CF:               Print 1
  loc_1C846D7:               Print 1
  loc_1C846DF:               Print 1
  loc_1C846E7:               Print 1
  loc_1C846EF:               Print 1
  loc_1C846F7:               Print 1
  loc_1C846FD:               GoTo loc_1C8380A
  loc_1C84700:             End If
  loc_1C84702:             Close 1
  loc_1C8473D:             If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C84765:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C847BD:               var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C847C3:               Print 1, var_16C
  loc_1C847E3:             Else
  loc_1C84808:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C8483F:               Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C84850:             End If
  loc_1C84852:             Close 1
  loc_1C8485C:             If (MemVar_1F923B8 = "Y") Then
  loc_1C8488E:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C8489F:             Else
  loc_1C848A7:               For var_380 = 1 To var_E8:         var_EA = var_380 'Integer
  loc_1C848DC:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C848ED:               Next var_380 'Integer
  loc_1C848F2:             End If
  loc_1C848F5:           Else
  loc_1C84900:             If (var_264 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1C84905:               Close 1
  loc_1C8492C:               Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C8493C:               var_B4.MoveFirst
  loc_1C84941:               ' Referenced from:         1C85A59
  loc_1C84950:               If Not(var_B4.EOF) Then
  loc_1C84A7D:                 var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C84A86:                 var_90 = CStr(var_304)
  loc_1C84AF2:                 var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1C84B01:                 If (0 = 0) Then
  loc_1C84B06:                   Print 1
  loc_1C84B14:                   If (var_F0 <> vbNullString) Then
  loc_1C84B4A:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H2A)))
  loc_1C84B51:                     var_1A4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C84B57:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C84B6D:                   End If
  loc_1C84B75:                   If (var_F4 <> vbNullString) Then
  loc_1C84BAB:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H2A)))
  loc_1C84BB2:                     var_1A4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C84BB8:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C84BCE:                   End If
  loc_1C84BD6:                   If (var_F8 <> vbNullString) Then
  loc_1C84C0C:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H2A)))
  loc_1C84C13:                     var_1A4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C84C19:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C84C2F:                   End If
  loc_1C84C37:                   If (var_FC <> vbNullString) Then
  loc_1C84C6D:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H2A)))
  loc_1C84C74:                     var_1A4 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C84C7A:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C84C90:                   End If
  loc_1C84C92:                   Print 1
  loc_1C84CC1:                   var_1A4 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C84D04:                   var_2E4 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C84D16:                   var_304 = Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2)))
  loc_1C84D2E:                   var_1E4 = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1C84D35:                   var_254 = (CVar(var_B4.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1C84D3C:                   var_340 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") + var_304)
  loc_1C84D43:                   var_364 = (IIf((var_B8.Fields.Item(2).Value = (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1C84D49:                   Print 1, var_364
  loc_1C84D97:                   var_18C = (40 - Len(Trim(var_90)))
  loc_1C84DCA:                   var_254 = (40 - Len(Trim(var_90)))
  loc_1C84DDC:                   var_2B4 = Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2)))
  loc_1C84DF4:                   var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1C84DFE:                   var_1E4 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1C84E05:                   var_2D4 = (CVar(var_B4.Fields.Item("NCKOT")) + var_2B4)
  loc_1C84E0C:                   var_2F4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1C84E12:                   Print 1, (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1C84E36:                   Print 1
  loc_1C84E3E:                   Print 1
  loc_1C84E77:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")))
  loc_1C84EA6:                   var_148 = (Chr(&HF) + "KOT No.   :         ")
  loc_1C84EB0:                   var_1B4 = (Trim(var_90) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)))
  loc_1C84EB7:                   var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1C84EBD:                   Print 1, CVar(var_B4.Fields.Item("NCKOT"))
  loc_1C84F80:                   var_148 = (Chr(&HF) + "KOT Dt.   :         ")
  loc_1C84F8A:                   var_1A4 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), &H12), &HC)))
  loc_1C84F93:                   var_1B4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + " ")
  loc_1C84F9D:                   var_224 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C84FA4:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C84FAA:                   Print 1, IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *")
  loc_1C85003:                   var_178 = var_B4.Fields.Item("Remarks")
  loc_1C85040:                   var_148 = (Chr(&HF) + "Remarks :         ")
  loc_1C8504A:                   var_1A4 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H20)))
  loc_1C85051:                   var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + Chr(&H12))
  loc_1C85057:                   Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C85090:                   Set var_170 = Me.Label1
  loc_1C85096:                   Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C850BC:                   var_308 = Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)
  loc_1C85131:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1C85162:                   var_1A4 = (Chr(&HF) + CVar(var_308))
  loc_1C8516B:                   var_1B4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + ":         ")
  loc_1C85175:                   var_224 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1C8517C:                   var_254 = (Trim(var_90) + Space(&HA))
  loc_1C85185:                   var_284 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") + "Covers:         ")
  loc_1C8518F:                   var_2F4 = ((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), 7)))
  loc_1C85196:                   var_340 = ((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2) + Chr(&H12))
  loc_1C8519C:                   Print 1, IIf((var_B8.Fields.Item("GuarAtt").Value = var_90), "Void", vbNullString)
  loc_1C85208:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C8520F:                   var_18C = (CVar(var_178) + Chr(&H12))
  loc_1C85215:                   Print 1, CVar(var_308)
  loc_1C85226:                 End If
  loc_1C8524C:                 var_16C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Space(1))
  loc_1C85266:                 var_1A4 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 7)))
  loc_1C85272:                 var_1B4 = Space(1)
  loc_1C8527A:                 var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + var_1B4)
  loc_1C85294:                 var_224 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 7)))
  loc_1C852DD:                 var_148 = (Chr(&HF) + CVar(CStr(Trim(var_90))))
  loc_1C852E4:                 var_18C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C852EA:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1C8531E:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C85325:                 var_18C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C8532B:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1C85342:                 var_92 = (var_92 + 4)
  loc_1C85348:                 var_B8.MoveFirst
  loc_1C8534D:                 ' Referenced from:         1C8565B
  loc_1C8535C:                 If Not(var_B8.EOF) Then
  loc_1C85395:                   var_190 = var_B8.Fields
  loc_1C853AC:                   Proc_6_39_E7C810(var_1B4, CVar(var_190.Item("qty")))
  loc_1C853F7:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1C8549A:                   var_18C = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1, 1)) + Space(1))
  loc_1C854B3:                   var_234 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1B4, "0.000")), 7, CVar(Proc_6_52_EAD4F4("Qty", 7)))))
  loc_1C854C7:                   var_284 = (Space(&HA) + Space(1))
  loc_1C854DD:                   var_304 = CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 7, (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) 'String
  loc_1C854E0:                   var_340 = (&H12 + var_304)
  loc_1C854F6:                   var_3DC = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C854F9:                   var_3EC = (IIf((var_B8.Fields.Item("Rate").Value = "0.00"), "Void", vbNullString) + var_3DC)
  loc_1C85573:                   var_148 = (Chr(&HF) + CVar(CStr(var_3EC)))
  loc_1C8557A:                   var_18C = (Space(1) + Chr(&H12))
  loc_1C85580:                   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 7))
  loc_1C85597:                   var_92 = (var_92 + 1)
  loc_1C855D3:                   If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C85616:                     var_148 = (Chr(&HF) + "(")
  loc_1C85620:                     var_1A4 = (Space(1) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1C85629:                     var_1B4 = (CVar(var_190.Item("qty")) + ")")
  loc_1C8562F:                     Print 1, var_1B4
  loc_1C85650:                     var_92 = (var_92 + 1)
  loc_1C85653:                   End If
  loc_1C85656:                   var_B8.MoveNext
  loc_1C8565B:                   GoTo loc_1C8534D
  loc_1C8565E:                 End If
  loc_1C85681:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C85688:                 var_18C = (Space(1) + Chr(&H12))
  loc_1C8568E:                 Print 1, CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description"))))
  loc_1C85700:                 var_148 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1C8570A:                 var_1A4 = (Space(1) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1C85711:                 var_1D4 = (CVar(var_190.Item("qty")) + Chr(&H12))
  loc_1C85717:                 Print 1, "0.000"
  loc_1C8575F:                 var_1A4 = Chr(&H12)
  loc_1C8576C:                 var_148 = (Chr(&HF) + "***  ")
  loc_1C85773:                 var_18C = Space(1) & Trim(var_C8) 
  loc_1C8577F:                 var_1B4 = ("  ***" + var_1A4)
  loc_1C85789:                 Print 1, var_18C & Chr(&H12)
  loc_1C857E8:                 var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C857F6:                 unk_5921DC.Execute CStr(var_16C), var_18C, -1
  loc_1C85857:                 If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C85888:                   Call Proc_251_96_10ACF40(Proc_6_45_EAD428("Changed KOT", &H14), "D", &H28)
  loc_1C85892:                   Print 1, var_308
  loc_1C858A8:                 Else
  loc_1C858FE:                   unk_5921DC.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C8595C:                   If (Proc_6_38_E68A98(CVar(var_190.Fields.Item(0)), var_190, var_308) = "Y") Then
  loc_1C8598D:                     Call Proc_251_96_10ACF40(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1C85997:                     Print 1, var_308
  loc_1C859AD:                   Else
  loc_1C859AF:                     Print 1
  loc_1C859B5:                   End If
  loc_1C859B5:                 End If
  loc_1C859BA:                 Set var_DC = Nothing
  loc_1C859D2:                 var_148 = (Chr(&HF) + "** ")
  loc_1C859DC:                 var_16C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1C859E5:                 var_18C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C859EB:                 Print 1, var_18C
  loc_1C859FF:                 var_B4.MoveNext
  loc_1C85A06:                 Print 1
  loc_1C85A0E:                 Print 1
  loc_1C85A16:                 Print 1
  loc_1C85A1E:                 Print 1
  loc_1C85A44:                 var_16C = (Chr(&H1B) + Chr(&H6D))
  loc_1C85A4A:                 Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C85A59:                 GoTo loc_1C84941
  loc_1C85A5C:               End If
  loc_1C85A5E:               Close 1
  loc_1C85A99:               If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C85AC1:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C85B19:                 var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C85B1F:                 Print 1, var_16C
  loc_1C85B3F:               Else
  loc_1C85B64:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C85B9B:                 Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C85BAC:               End If
  loc_1C85BAE:               Close 1
  loc_1C85BB8:               If (MemVar_1F923B8 = "Y") Then
  loc_1C85BEA:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C85BFB:               Else
  loc_1C85C03:                 For var_3F0 = 1 To var_E8:           var_EA = var_3F0 'Integer
  loc_1C85C38:                   var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C85C49:                 Next var_3F0 'Integer
  loc_1C85C4E:               End If
  loc_1C85C4E:             End If
  loc_1C85C4E:           End If
  loc_1C85C4E:         End If
  loc_1C85C4E:       End If
  loc_1C85C4E:     End If
  loc_1C85CA4:     unk_5921DC.Execute CStr("UPDATE KOT SET PRINTED='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C85CC3:   Else
  loc_1C85D0D:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_18C, var_1A4, Chr(&H12))
  loc_1C85D28:   End If
  loc_1C85D2B:   var_BC.MoveNext
  loc_1C85D30:   GoTo loc_1C80044
  loc_1C85D33: End If
  loc_1C85D38: Set var_B4 = Nothing
  loc_1C85D40: Set var_B8 = Nothing
  loc_1C85D48: Set var_BC = Nothing
  loc_1C85D4B: Exit Sub
  loc_1C85D4C: ' Referenced from: 1C7F654
  loc_1C85D4C: Proc_6_60_E62BC4(var_190)
  loc_1C85D51: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1B0993C
  'Data Table: 5921C0
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
  Dim unk_5921DC As Connection15
  Dim var_B0 As Variant
  Dim MemVar_1F920EC As Double
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_114 As Variant
  Dim var_88 As Variant
  Dim var_198 As Variant
  Dim var_1AC As Variant
  Dim var_1F0 As Variant
  Dim var_204 As Field20
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_2F0 As Variant
  Dim var_2E0 As Variant
  Dim var_2F4 As Variant
  Dim var_348 As Variant
  Dim var_3A0 As Variant
  Dim var_390 As Variant
  Dim var_3F8 As Variant
  Dim var_3E8 As Variant
  Dim var_498 As Variant
  Dim var_4AC As Variant
  Dim var_560 As Fields15
  Dim var_574 As Field20
  Dim var_5CC As Field20
  Dim var_610 As Variant
  Dim var_668 As Fields15
  Dim var_67C As Variant
  Dim var_764 As Variant
  Dim var_7A8 As Variant
  Dim var_8C0 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_224 As Variant
  Dim var_2BC As Variant
  Dim var_2CC As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_36C As Variant
  Dim var_42C As Variant
  Dim var_43C As Variant
  Dim var_474 As Variant
  Dim var_484 As Variant
  Dim var_494 As Variant
  Dim var_4EC As Variant
  Dim var_53C As Variant
  Dim var_5B4 As Variant
  Dim var_60C As Variant
  Dim var_644 As Variant
  Dim var_6FC As Variant
  Dim var_72C As Variant
  Dim var_784 As Variant
  Dim var_7DC As Variant
  Dim var_7EC As Variant
  Dim var_844 As Variant
  Dim var_8E4 As Variant
  Dim var_914 As Variant
  Dim var_9D4 As Variant
  Dim var_9E4 As Variant
  Dim var_9F4 As Variant
  Dim var_150 As Double
  Dim var_19C As TextBox
  Dim var_B54 As Double
  Dim var_A5C As String
  Dim var_B5C As Double
  Dim var_A60 As String
  Dim var_B64 As Double
  Dim var_A64 As String
  Dim var_A74 As Variant
  Dim var_B6C As Double
  Dim var_AF8 As Variant
  Dim var_B18 As Variant
  Dim var_774 As Variant
  Dim var_A20 As String
  Dim var_A24 As String
  Dim var_A28 As String
  Dim var_A3C As String
  Dim var_A4C As String
  Dim var_A54 As String
  Dim var_134 As Variant
  Dim var_1BC As Variant
  Dim var_214 As Variant
  Dim var_26C As Variant
  Dim var_3B4 As Variant
  Dim var_40C As Variant
  Dim var_4BC As Variant
  Dim var_68C As Variant
  Dim var_A98 As Variant
  Dim var_70C As Variant
  Dim var_71C As Variant
  Dim var_A48 As String
  Dim var_F18 As Double
  Dim var_A58 As String
  Dim var_F20 As Double
  Dim var_CD0 As Variant
  Dim var_D00 As Variant
  Dim var_D60 As Variant
  Dim var_DA0 As Variant
  Dim var_E30 As Variant
  Dim var_E70 As Variant
  Dim var_F28 As Double
  Dim var_96C As Variant
  Dim var_A14 As Variant
  Dim var_C60 As Variant
  Dim var_CA0 As Variant
  Dim var_D50 As Variant
  Dim var_DB0 As Variant
  Dim var_DC0 As Variant
  Dim var_E00 As Variant
  Dim var_E10 As Variant
  Dim var_EA0 As Variant
  Dim var_EE0 As Variant
  Dim var_EF0 As Variant
  Dim var_C30 As Variant
  Dim var_F10 As Variant
  Dim var_A34 As String
  loc_1B05684: On Error Goto loc_1B09921
  loc_1B05692: Set var_A8 = Me.Txt
  loc_1B05698: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1B056C1: If (Proc_6_27_EA565C(var_AC, "Voucher Date") = 0) Then
  loc_1B056C4:   Exit Sub
  loc_1B056C5: End If
  loc_1B056D0: Set var_A8 = Me.Txt
  loc_1B056D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1B056FF: If (Proc_6_27_EA565C(var_AC, "Voucher No") = 0) Then
  loc_1B05702:   Exit Sub
  loc_1B05703: End If
  loc_1B0570E: If (LocalRestCode = vbNullString) Then
  loc_1B0572A:   MsgBox("Open RestaurantChange Master", 0, var_F4, var_114, var_134)
  loc_1B0573A:   Exit Sub
  loc_1B0573B: End If
  loc_1B05746: Set var_A8 = Me.Txt
  loc_1B0574C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1B05775: If (Proc_6_27_EA565C(var_AC, "KOT Time") = 0) Then
  loc_1B05778:   Exit Sub
  loc_1B05779: End If
  loc_1B05784: Set var_A8 = Me.Txt
  loc_1B0578A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1B057B3: If (Proc_6_27_EA565C(var_AC, "WAITER") = 0) Then
  loc_1B057B6:   Exit Sub
  loc_1B057B7: End If
  loc_1B057C2: Set var_A8 = Me.Txt
  loc_1B057C8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1B057F1: If (Proc_6_27_EA565C(var_AC, "TABLE CODE") = 0) Then
  loc_1B057F4:   Exit Sub
  loc_1B057F5: End If
  loc_1B05803: Set var_A8 = Me.Txt
  loc_1B05809: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1B0581F: var_F4 = Trim(CVar(var_AC.Tag))
  loc_1B0583D: If (var_F4 = vbNullString) Then
  loc_1B05859:   MsgBox("TABLE CODE is required field.", &H10, var_F4, var_114, var_134)
  loc_1B05877:   Set var_A8 = Me.Txt
  loc_1B0587D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1B05897:   If (var_AC.Enabled = &HFF) Then
  loc_1B058A5:     Set var_A8 = Me.Txt
  loc_1B058AB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1B058B3:     var_AC.SetFocus
  loc_1B058BF:   End If
  loc_1B058BF:   Exit Sub
  loc_1B058C0: End If
  loc_1B058CE: Set var_A8 = Me.Txt
  loc_1B058D4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1B058EA: var_F4 = Trim(CVar(var_AC.Tag))
  loc_1B05908: If (var_F4 = vbNullString) Then
  loc_1B05924:   MsgBox("Steward Name is required field.", &H10, var_F4, var_114, var_134)
  loc_1B05942:   Set var_A8 = Me.Txt
  loc_1B05948:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1B05950:   var_136 = var_AC.Enabled
  loc_1B05962:   If (var_136 = &HFF) Then
  loc_1B05970:     Set var_A8 = Me.Txt
  loc_1B05976:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1B0597E:     var_AC.SetFocus
  loc_1B0598A:   End If
  loc_1B0598A:   Exit Sub
  loc_1B0598B: End If
  loc_1B0598B: var_C4 = 1
  loc_1B05994: var_104 = 1
  loc_1B059B2: var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B059B8: var_114 = Trim(var_F4)
  loc_1B059D4: If (var_114 = vbNullString) Then
  loc_1B059F0:   MsgBox("Fill Item Name ", 0, var_F4, var_114, var_134)
  loc_1B05A13:   Me.FGrid.Row = 1
  loc_1B05A1F:   Set var_A8 = Me.FGrid
  loc_1B05A43:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1B05A4B:   Exit Sub
  loc_1B05A4C: End If
  loc_1B05A4C: var_C4 = 1
  loc_1B05A58: var_104 = CVar(CLng(4)) 'Long
  loc_1B05A72: var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B05A78: var_114 = Trim(var_F4)
  loc_1B05A94: If (var_114 = vbNullString) Then
  loc_1B05AB0:   MsgBox("Item Detail Required ", 0, var_F4, var_114, var_134)
  loc_1B05AD3:   Me.FGrid.Row = 1
  loc_1B05ADF:   Set var_A8 = Me.FGrid
  loc_1B05AF4:   var_C4 = CVar(CLng("14737632")) 'Long
  loc_1B05B03:   Me.FGrid.CellBackColor = var_C4
  loc_1B05B0B:   Exit Sub
  loc_1B05B0C: End If
  loc_1B05B0F: Call Proc_251_88_104DD8C(var_136, FGrid.DispID_8001, var_104, var_C4)
  loc_1B05B1F: Set var_A8 = Me.TxtGrid
  loc_1B05B25: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_AC, 0, FGrid.DispID_8001)
  loc_1B05B2D: var_AC.Visible = var_104
  loc_1B05B39: Call Proc_251_91_EF66C0(var_C4)
  loc_1B05B4C: Set var_A8 = Me.Txt
  loc_1B05B52: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1B05B7A: If (Proc_6_91_EF2D40(CDate(var_AC.Text)) = 0) Then
  loc_1B05B88:   Set var_A8 = Me.Txt
  loc_1B05B8E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1B05B96:   var_AC.SetFocus
  loc_1B05BA2:   Exit Sub
  loc_1B05BA3: End If
  loc_1B05BD8: var_114 = IIf((Me.ChkNCKOT.Value = 1), "Y", "N")
  loc_1B05BE1: var_9C = CStr(var_114)
  loc_1B05BF6: Set var_A8 = Me.TopCtrl1
  loc_1B05BFC: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_AC)
  loc_1B05C15: If (CStr() = "Add") Then
  loc_1B05C33:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B05C36:     ' Referenced from: 1B05CEA
  loc_1B05C3A:     Set var_154 = New RsTouchScreenKeyBoard
  loc_1B05C48:     var_154.ParentForm = CVar(Me)
  loc_1B05C55:     var_154.CAPTION = "Please Specify, Reason of NC KOT ?"
  loc_1B05C67:     var_154.TxtKeyBoard.MaxLength = 150
  loc_1B05C6E:     var_C4 = 1
  loc_1B05C7A:     Call var_154.Show
  loc_1B05CB6:     If (Trim(TxtKeyBoard) = vbNullString) Then
  loc_1B05CC4:       var_F4 = "Reason"
  loc_1B05CD4:       var_D4 = "Please Enter a Valid Reason for NC KOT."
  loc_1B05CDA:       MsgBox(var_D4, 0, var_F4, var_114, var_134)
  loc_1B05CEA:       GoTo loc_1B05C36
  loc_1B05CED:     End If
  loc_1B05CED:   End If
  loc_1B05CF3:   var_E4 = 0
  loc_1B05D10:   var_B4 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F92078
  loc_1B05D20:   unk_5921DC.Execute var_B4 & "'", var_D4, -1
  loc_1B05D28:   var_A8 = var_A8.Fields
  loc_1B05D30:   var_E4 = var_AC.Item(var_AC)
  loc_1B05D38:   var_B0 = var_B0.Value
  loc_1B05D42:   MemVar_1F920EC = CDate(var_F4)
  loc_1B05D89:   Set var_A8 = Me.Txt
  loc_1B05D8F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Select Count(*) From KOT Where DocID='", var_D4, -1, var_B0)
  loc_1B05DB0:   unk_5921DC.Execute 0 & var_B4 & "'", var_164, var_F4
  loc_1B05DB8:   MemVar_1F920EC = var_B0.Fields
  loc_1B05DC0:   var_C4 = var_AC.Text.Item(var_F4)
  loc_1B05DC8:    = var_164.Value
  loc_1B05DF5:   If (var_F4 > 0) Then
  loc_1B05DFE:     Call Proc_251_93_10E8C50(MemVar_1F92044)
  loc_1B05E11:     Set var_A8 = Me.Txt
  loc_1B05E17:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_1B05E1F:     var_AC.Text = var_B4
  loc_1B05E2E:   End If
  loc_1B05E31: Else
  loc_1B05E65:   global_248 = CStr(Me.Fields.Item("DocID").Value)
  loc_1B05E76:   ' Referenced from:   1B05F2A
  loc_1B05E7A:   Set var_154 = New RsTouchScreenKeyBoard
  loc_1B05E88:   var_154.ParentForm = CVar(Me)
  loc_1B05E95:   var_154.CAPTION = "Please Specify, Reason of Editing ?"
  loc_1B05EA7:   var_154.TxtKeyBoard.MaxLength = 150
  loc_1B05EAE:   var_C4 = 1
  loc_1B05EBA:   Call var_154.Show
  loc_1B05ECE:   global_172 = TxtKeyBoard
  loc_1B05EF6:   If (Trim(global_172) = vbNullString) Then
  loc_1B05F0F:     var_C4 = "Please Enter a Valid Reason for Editing."
  loc_1B05F1A:     MsgBox(var_C4, 0, "Reason", var_114, var_134)
  loc_1B05F2A:     GoTo loc_1B05E76
  loc_1B05F2D:   End If
  loc_1B05F2D: End If
  loc_1B05F2F: Set var_154 = Nothing 
  loc_1B05F35: var_8A = &HFF
  loc_1B05F41: unk_5921DC.BeginTrans var_168
  loc_1B05F4A: Set var_A8 = Me.TopCtrl1
  loc_1B05F50: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_8A)
  loc_1B05F69: If (CStr(var_C4) = "Edit") Then
  loc_1B05FC2:   unk_5921DC.Execute CStr("Select * from KOT Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1B05FCD:   Set var_88 = var_B0
  loc_1B05FE7:   ' Referenced from: 1B0667B
  loc_1B05FF6:   If Not(var_88.EOF) Then
  loc_1B06056:     var_164 = var_88.Fields
  loc_1B0605E:     var_19C = var_164.Item("VDate")
  loc_1B06066:     var_1AC = CVar(var_19C) 'Address
  loc_1B0606D:     Proc_6_7_F25D88(var_1BC, var_1AC)
  loc_1B0608C:     var_204 = var_88.Fields.Item("vType")
  loc_1B060B3:     var_25C = var_88.Fields.Item("vPrefix")
  loc_1B06232:     var_610 = var_88.Fields
  loc_1B06261:     var_67C = var_88.Fields.Item("Waiter")
  loc_1B0627C:     Proc_6_7_F25D88(var_71C, Now, 1)
  loc_1B062BA:     var_7A8 = var_88.Fields
  loc_1B0639F:     var_E4 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,DELFLAG,LogSite_Code,GuarAtt,ItemRestCode) Values ('"
  loc_1B063D7:     var_224 = var_E4 & var_88.Fields.Item("DocID").Value & "'," & var_88.Fields.Item("VNo").Value & "," & var_1BC & ",'" & var_204.Value 
  loc_1B0641A:     var_36C = var_224 & "','" & var_25C.Value & "','" & CVar(MemVar_1F92070) & "','" & var_88.Fields.Item("RestCode").Value & "','" & var_88.Fields.Item("RoomCat").Value 
  loc_1B0644A:     var_474 = var_36C & "','" & var_88.Fields.Item("Roomtype").Value & "','" & var_88.Fields.Item("RoomNo").Value & "','" & var_88.Fields.Item("Pending").Value 
  loc_1B06453:     var_494 = var_474 & "'," 
  loc_1B06463:     var_4EC = var_494 & var_88.Fields.Item("SNo").Value & ",'" 
  loc_1B06493:     var_60C = var_4EC & Format(Time, "hh:nn") & "','" & var_88.Fields.Item("Item").Value & "'," & var_88.Fields.Item("qty").Value & ",'" 
  loc_1B064DD:     var_784 = var_60C & var_610.Item("VoidYN").Value & "','" & var_67C.Value & "','" & CVar(MemVar_1F920C8) & "'," & var_71C & ",'" & var_88.Fields.Item("U_AE").Value 
  loc_1B064ED:     var_7DC = var_784 & "','" & var_7A8.Item("NCKOT").Value 
  loc_1B0651D:     var_8E4 = var_7DC & "'," & var_88.Fields.Item("Rate").Value & "," & var_88.Fields.Item("Amount").Value & ",'" & var_88.Fields.Item("Reasons").Value 
  loc_1B06550:     var_9D4 = var_8E4 & "','E','" & CVar(MemVar_1F92078) & "'," & var_88.Fields.Item("GuarAtt").Value & ",'" & var_88.Fields.Item("ItemRestcode").Value 
  loc_1B06567:     unk_5921DC.Execute CStr(var_9D4 & "')"), var_A14, -1
  loc_1B06676:     var_88.MoveNext
  loc_1B0667B:     GoTo loc_1B05FE7
  loc_1B0667E:   End If
  loc_1B0668B:   var_E4 = "Update KOTLog Set SeqNo=(Select ISNull(Max(SeqNo),0)+1 From KOTLog  Where Docid= '"
  loc_1B066DF:   var_B0 = Me.Fields
  loc_1B066EF:   var_134 = var_B0.Item("SearchCode").Value
  loc_1B0670E:   unk_5921DC.Execute CStr(var_E4 & Me.Fields.Item("SearchCode").Value & "') Where IsNull(SeqNo,0)=0 And Docid= '" & var_134 & "'"), var_1AC, -1
  loc_1B0674B:   If (Me.RecordCount > 0) Then
  loc_1B067A4:     unk_5921DC.Execute CStr("Delete From KOT Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1B06816:     unk_5921DC.Execute CStr("Delete From Stock Where KOTDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1B06861:     var_AC = Me.Fields.Item("SearchCode")
  loc_1B06869:     var_D4 = var_AC.Value
  loc_1B0687E:     var_B4 = CStr("Delete From Stock Where DocID='" & var_D4 & "'")
  loc_1B06888:     unk_5921DC.Execute var_B4, var_134, -1
  loc_1B068A4:   End If
  loc_1B068C2:   Set var_A8 = Me.Txt
  loc_1B068C8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Delete From KOT Where DocID='", var_D4, -1, var_B0)
  loc_1B068D0:   var_B0 = var_AC.Text
  loc_1B068E9:   unk_5921DC.Execute var_B0 & var_B4 & "'", var_B0, var_164
  loc_1B06903: End If
  loc_1B0691E: If (Me.ChkNCKOT.Value = 1) Then
  loc_1B06946:   For var_A1C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A1C 'Integer
  loc_1B06950:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B06958:     var_104 = CVar(CLng(9)) 'Long
  loc_1B069A1:     If (Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = "CANCEL") Then
  loc_1B069A7:       var_A0 = "Y"
  loc_1B069AD:     Else
  loc_1B069B0:       var_A0 = "N"
  loc_1B069B3:     End If
  loc_1B069DF:     var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B06A06:     Set var_AC = Me.FGrid
  loc_1B06A17:     var_B4 = CStr(var_AC.TextMatrix))
  loc_1B06A66:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0)) And (Me.RecordCount > 0)) Then
  loc_1B06A77:       Set var_A8 = Me.Txt
  loc_1B06A7D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (var_114 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1B06A85:       var_104 = var_AC.Text
  loc_1B06AB8:       var_150 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B06ADB:       Set var_164 = Me.Txt
  loc_1B06AE1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_19C, var_A48, var_150, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B06AE9:       var_C4 = var_19C.Text
  loc_1B06AF6:       var_B54 = Val(var_A48)
  loc_1B06B04:       Set var_1F0 = Me.Txt
  loc_1B06B0A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_204, var_B54, 1)
  loc_1B06B19:       Proc_6_7_F25D88(var_114, CVar(var_204), var_A18)
  loc_1B06B2C:       Set var_248 = Me.Txt
  loc_1B06B32:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_25C, var_A58)
  loc_1B06B3A:       1 = var_25C.Tag
  loc_1B06B43:       var_2CC = CVar(CLng(var_92)) 'Long
  loc_1B06B4B:       var_324 = CVar(CLng(&HA)) 'Long
  loc_1B06B6A:       var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1B06B72:       var_3F8 = CVar(CLng(5)) 'Long
  loc_1B06B81:       var_314 = Me.FGrid.TextMatrix)
  loc_1B06BBB:       var_B5C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B06BEC:       var_B64 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B06BFD:       Proc_6_7_F25D88(var_494, Date, var_B64, CVar(CLng(8)), CVar(CLng(var_92)), var_B5C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B06C06:       Set var_390 = Me.TopCtrl1
  loc_1B06C0C:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_314)
  loc_1B06C47:       var_7EC = CVar(CLng(var_92)) 'Long
  loc_1B06C4F:       var_844 = CVar(CLng(&HB)) 'Long
  loc_1B06C6E:       var_8C0 = CVar(CLng(var_92)) 'Long
  loc_1B06C76:       var_914 = CVar(CLng(&HB)) 'Long
  loc_1B06CBF:       var_9E4 = CVar(CLng(var_92)) 'Long
  loc_1B06CC7:       var_A74 = CVar(CLng(0)) 'Long
  loc_1B06CF0:       var_AF8 = CVar(CLng(var_92)) 'Long
  loc_1B06CF8:       var_B18 = CVar(CLng(1)) 'Long
  loc_1B06D27:       var_158 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDOCID,KOTSNO,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B4
  loc_1B06D6E:       var_A4C = var_158 & "'," & CStr(var_150) & ",'" & global_136 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "',"
  loc_1B06DC6:       var_214 = CVar(var_A4C & CStr(var_B54) & ",") & var_114 & ",'" & CVar(MemVar_1F921A4) & "','" & CVar(global_140) & "','" & CVar(global_144) 
  loc_1B06E15:       var_3B4 = var_214 & "','" & CVar(var_A58) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_314)) & "'," & CVar(var_B5C) 
  loc_1B06E5C:       var_53C = var_3B4 & "," & CVar(var_B64) & ",'" & CVar(MemVar_1F920C8) & "'," & var_494 & ",'" & IIf((CStr(var_4EC) = "Add"), "A", "E") 
  loc_1B06E94:       var_68C = var_53C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Me.Fields.Item("SearchCode").Value 
  loc_1B06ECE:       var_72C = var_68C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(var_A0) & "','" & CVar(MemVar_1F92078) 
  loc_1B06EF9:       unk_5921DC.Execute CStr(var_72C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_7DC, -1
  loc_1B06FE2:     Else
  loc_1B0700E:       var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B07035:       Set var_AC = Me.FGrid
  loc_1B07046:       var_B4 = CStr(var_AC.TextMatrix))
  loc_1B07074:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1B07085:         Set var_A8 = Me.Txt
  loc_1B0708B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (var_114 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1B07093:         var_4AC = var_AC.Text
  loc_1B070AD:         Set var_B0 = Me.FGrid
  loc_1B070C6:         var_150 = Val(CStr(var_B0.TextMatrix)))
  loc_1B070D0:         Set var_160 = Me.LblVPrefix
  loc_1B070D6:         var_A34 = var_160.Caption
  loc_1B070E9:         Set var_164 = Me.Txt
  loc_1B070EF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_19C, var_A48, var_150, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B070F7:         var_774 = var_19C.Text
  loc_1B07104:         var_B54 = Val(var_A48)
  loc_1B07112:         Set var_1F0 = Me.Txt
  loc_1B07118:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_204, var_B54, var_B18)
  loc_1B07127:         Proc_6_7_F25D88(var_114, CVar(var_204), var_AF8)
  loc_1B0713A:         Set var_248 = Me.Txt
  loc_1B07140:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_25C, var_A58)
  loc_1B07148:         var_B6C = var_25C.Tag
  loc_1B07151:         var_2CC = CVar(CLng(var_92)) 'Long
  loc_1B07159:         var_324 = CVar(CLng(&HA)) 'Long
  loc_1B07178:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1B07180:         var_3F8 = CVar(CLng(5)) 'Long
  loc_1B07189:         Set var_2F4 = Me.FGrid
  loc_1B0718F:         var_314 = var_2F4.TextMatrix)
  loc_1B071C1:         var_A5C = CStr(Me.FGrid.TextMatrix))
  loc_1B071C9:         var_B5C = Val(var_A5C)
  loc_1B071F2:         var_A60 = CStr(Me.FGrid.TextMatrix))
  loc_1B071FA:         var_B64 = Val(var_A60)
  loc_1B0720B:         Proc_6_7_F25D88(var_494, Date, var_B64, CVar(CLng(8)), CVar(CLng(var_92)), var_B5C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B07214:         Set var_390 = Me.TopCtrl1
  loc_1B0721A:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_314)
  loc_1B07255:         var_7EC = CVar(CLng(var_92)) 'Long
  loc_1B0725D:         var_844 = CVar(CLng(&HB)) 'Long
  loc_1B0727C:         var_8C0 = CVar(CLng(var_92)) 'Long
  loc_1B07284:         var_914 = CVar(CLng(&HB)) 'Long
  loc_1B072A3:         var_A74 = CVar(CLng(var_92)) 'Long
  loc_1B072AB:         var_A98 = CVar(CLng(1)) 'Long
  loc_1B072DA:         var_158 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B4
  loc_1B072E1:         var_A20 = var_158 & "',"
  loc_1B0730C:         var_A3C = var_A20 & CStr(var_150) & ",'" & global_136 & "','" & var_A34
  loc_1B0732D:         var_A54 = var_A3C & "','" & MemVar_1F92070 & "'," & CStr(var_B54)
  loc_1B0733A:         var_178 = CVar(var_A54 & ",") & var_114 
  loc_1B0738C:         var_26C = var_178 & ",'" & CVar(MemVar_1F921A4) & "','" & CVar(global_140) & "','" & CVar(global_144) & "','" & CVar(var_A58) 
  loc_1B073DC:         var_40C = var_26C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_314)) & "'," & CVar(var_B5C) & "," & CVar(var_B64) 
  loc_1B07423:         var_5B4 = var_40C & ",'" & CVar(MemVar_1F920C8) & "'," & var_494 & ",'" & IIf((CStr(var_4EC) = "Add"), "A", "E") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B07471:         var_70C = var_5B4 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_A0) & "','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B0747A:         var_71C = var_70C & "')" 
  loc_1B07488:         unk_5921DC.Execute CStr(var_71C), var_72C, -1
  loc_1B0755A:       End If
  loc_1B0755A:     End If
  loc_1B0755D:   Next var_A1C 'Integer
  loc_1B07565: Else
  loc_1B07569:   Set var_A8 = Me.TopCtrl1
  loc_1B0756F:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_1B07588:   If (CStr() = "Edit") Then
  loc_1B075A2:     If (Me.RecordCount > 0) Then
  loc_1B075B9:       var_B4 = "UPDATE KOT SET NCKOT='" & var_9C
  loc_1B075E0:       var_AC = Me.Fields.Item("SearchCode")
  loc_1B07607:       unk_5921DC.Execute CStr(CVar(var_B4 & "' Where DocID='") & var_AC.Value & "'"), var_178, -1
  loc_1B07629:     End If
  loc_1B07647:     Set var_A8 = Me.Txt
  loc_1B0764D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Delete From KOT Where CONTRADocID='")
  loc_1B07655:     var_D4 = var_AC.Text
  loc_1B0765E:     var_158 = -1 & var_B4
  loc_1B0766E:     unk_5921DC.Execute CStr(CVar(var_B4 & "' Where DocID='") & var_AC.Value & "'") & "'", var_B0, var_B0
  loc_1B07688:   End If
  loc_1B07688: End If
  loc_1B076AD: For var_B70 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_B70 'Integer
  loc_1B076CE:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B076D5:     Set var_A8 = Me.TopCtrl1
  loc_1B076DB:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(1)
  loc_1B076F4:     If (CStr() = "Edit") Then
  loc_1B076FB:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B07703:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1B0771D:       var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B0774A:       Set var_AC = Me.FGrid
  loc_1B0775B:       var_B4 = CStr(var_AC.TextMatrix))
  loc_1B07789:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1B0779A:         Set var_A8 = Me.Txt
  loc_1B077A0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)))
  loc_1B077A8:         (Trim(var_F4) <> vbNullString) = var_AC.Text
  loc_1B077BB:         Set var_B0 = Me.Txt
  loc_1B077C1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_A20)
  loc_1B077C9:         var_104 = var_160.Text
  loc_1B077D6:         var_150 = Val(var_A20)
  loc_1B077E4:         Set var_164 = Me.Txt
  loc_1B077EA:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C)
  loc_1B077F2:         var_D4 = CVar(var_19C) 'Address
  loc_1B077F9:         Proc_6_7_F25D88(var_F4, var_D4)
  loc_1B0781E:         Set var_204 = Me.Txt
  loc_1B07824:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_248, var_A34)
  loc_1B07835:         var_2F0 = CVar(CLng(var_92)) 'Long
  loc_1B0783D:         var_348 = CVar(CLng(0)) 'Long
  loc_1B0785F:         var_B54 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B07870:         Set var_2E0 = Me.Txt
  loc_1B07876:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_A3C, var_B54)
  loc_1B0787E:         var_348 = var_2F4.Text
  loc_1B07887:         var_42C = CVar(CLng(var_92)) 'Long
  loc_1B0788F:         var_484 = CVar(CLng(&HA)) 'Long
  loc_1B0789E:         var_40C = Me.FGrid.TextMatrix)
  loc_1B078D8:         var_B5C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B07994:         var_644 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1B079A7:         Proc_6_7_F25D88(var_71C, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_B5C)
  loc_1B079B0:         Set var_3E8 = Me.TopCtrl1
  loc_1B079B6:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(CVar(CLng(7)))
  loc_1B07A1B:         var_B64 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B07A4C:         var_B6C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B07A7D:         var_F18 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B07A90:         var_A88 = Proc_6_38_E68A98(global_172, var_F18, CVar(CLng(8)), CVar(CLng(var_92)), var_B6C, CVar(CLng(7)), CVar(CLng(var_92)), var_B64)
  loc_1B07AA1:         Set var_498 = Me.Txt
  loc_1B07AA7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4AC, var_A54, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1B07AD1:         var_574 = Me.Fields.Item("SearchCode")
  loc_1B07B04:         var_A58 = CStr(Me.FGrid.TextMatrix))
  loc_1B07B0C:         var_F20 = Val(var_A58)
  loc_1B07B1A:         Set var_5CC = Me.Txt
  loc_1B07B20:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_610, var_F20, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B07B5A:         var_D60 = CVar(CLng(var_92)) 'Long
  loc_1B07B71:         var_DA0 = Me.FGrid.TextMatrix)
  loc_1B07B8B:         Set var_668 = Me.Txt
  loc_1B07B91:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_67C, var_A5C, var_DA0, CVar(CLng(6)))
  loc_1B07B99:         var_D60 = var_67C.Tag
  loc_1B07BA2:         var_E30 = CVar(CLng(var_92)) 'Long
  loc_1B07BB9:         var_E70 = Me.FGrid.TextMatrix)
  loc_1B07BD3:         Set var_764 = Me.Txt
  loc_1B07BD9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_7A8, var_A60, var_E70, CVar(CLng(1)))
  loc_1B07BE1:         var_E30 = var_7A8.Text
  loc_1B07C05:         var_158 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,ContraDocID,ContraSno,Logsite_Code,NCType,Description,Party,ItemRestCode,GuarAtt) " & " Values ('"
  loc_1B07C3F:         var_E4 = CVar(global_136) 'String
  loc_1B07C55:         var_1CC = CVar(var_158 & var_B4 & "'," & CStr(var_248.Tag) & ",") & var_F4 & ",'" & var_E4 & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1B07CAA:         var_2BC = var_1CC & "','" & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_140) & "','" & CVar(global_144) 
  loc_1B07CF8:         var_43C = var_2BC & "','" & CVar(var_A34) & "','Y'," & CVar(var_B54) & ",'" & CVar(var_A3C) & "','" & CVar(CStr(var_4AC.Text)) 
  loc_1B07D4B:         var_6FC = var_43C & "'," & CVar(var_B5C) & ",'" & var_644 & "','" & CVar(MemVar_1F9201C) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_1B07D92:         var_88C = var_6FC & var_71C & ",'" & IIf((CStr(var_774) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_B64) & "," 
  loc_1B07DEB:         var_C60 = var_88C & CVar((var_B6C * var_F18)) & ",'" & CVar(var_A88) & "','" & CVar(var_A54) & "','" & var_574.Value & "'," & CVar(var_F20) 
  loc_1B07E22:         var_DC0 = var_C60 & ",'" & CVar(MemVar_1F92078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_610)), vbNullString) & "','" & CVar(CStr(var_DA0)) 
  loc_1B07E74:         unk_5921DC.Execute CStr(var_DC0 & "','" & CVar(var_A5C) & "','" & CVar(CStr(var_E70)) & "'," & CVar(Val(var_A60)) & ")"), var_F10, -1
  loc_1B07FBC:       End If
  loc_1B07FBF:     Else
  loc_1B07FC3:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B07FCB:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1B07FEB:       var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B07FF3:       var_148 = vbNullString
  loc_1B08001:       var_198 = CVar(CLng(var_92)) 'Long
  loc_1B08051:       If CBool(CVar(CLng(7)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_1B08058:         var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B0807F:         var_148 = CVar(CLng(var_92)) 'Long
  loc_1B08090:         Set var_AC = Me.FGrid
  loc_1B08096:         var_F4 = var_AC.TextMatrix)
  loc_1B080A9:         var_150 = Val(CStr(var_F4))
  loc_1B080C0:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1B080CB:         var_A20 = "Update KOT Set VoidYN='Y',PENDING='N' Where Docid='" & var_B4 & "' And Sno="
  loc_1B080E0:         unk_5921DC.Execute var_A20 & CStr(var_150), var_114, -1
  loc_1B08114:         Set var_A8 = Me.Txt
  loc_1B0811A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, var_B0, var_150, CVar(CLng(&HD)), var_148)
  loc_1B08122:         var_D4 = var_AC.Text
  loc_1B08135:         Set var_B0 = Me.Txt
  loc_1B0813B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_A20, CVar(CLng(&HC)), var_C4)
  loc_1B08143:         var_198 = var_160.Text
  loc_1B08150:         var_150 = Val(var_A20)
  loc_1B0815E:         Set var_164 = Me.Txt
  loc_1B08164:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C, var_150)
  loc_1B08173:         Proc_6_7_F25D88(var_F4, CVar(var_19C), (var_114 <> var_148))
  loc_1B08198:         Set var_204 = Me.Txt
  loc_1B0819E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_248, var_A34)
  loc_1B081A6:         var_104 = var_248.Tag
  loc_1B081AF:         var_2F0 = CVar(CLng(var_92)) 'Long
  loc_1B081B7:         var_348 = CVar(CLng(0)) 'Long
  loc_1B081D9:         var_B54 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B081EA:         Set var_2E0 = Me.Txt
  loc_1B081F0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_A3C, var_B54)
  loc_1B081F8:         var_348 = var_2F4.Text
  loc_1B08201:         var_42C = CVar(CLng(var_92)) 'Long
  loc_1B08218:         var_40C = Me.FGrid.TextMatrix)
  loc_1B08252:         var_B5C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0830E:         var_644 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1B08321:         Proc_6_7_F25D88(var_71C, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_B5C)
  loc_1B0832A:         Set var_3E8 = Me.TopCtrl1
  loc_1B08330:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(CVar(CLng(7)))
  loc_1B08395:         var_B64 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B083C6:         var_B6C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B083F7:         var_F18 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0840A:         var_A88 = Proc_6_38_E68A98(global_172, var_F18, CVar(CLng(8)), CVar(CLng(var_92)), var_B6C, CVar(CLng(7)), CVar(CLng(var_92)), var_B64)
  loc_1B0841B:         Set var_498 = Me.Txt
  loc_1B08421:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4AC, var_A54, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1B08439:         Set var_560 = Me.Txt
  loc_1B0843F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_574, CVar(CLng(&HA)))
  loc_1B08479:         var_C30 = CVar(CLng(var_92)) 'Long
  loc_1B08490:         var_CD0 = Me.FGrid.TextMatrix)
  loc_1B084AA:         Set var_5CC = Me.Txt
  loc_1B084B0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_610, var_A58, var_CD0, CVar(CLng(6)))
  loc_1B084B8:         var_C30 = var_610.Tag
  loc_1B084C1:         var_D00 = CVar(CLng(var_92)) 'Long
  loc_1B084D8:         var_DB0 = Me.FGrid.TextMatrix)
  loc_1B084F2:         Set var_668 = Me.Txt
  loc_1B084F8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_67C, var_A5C, var_DB0, CVar(CLng(1)))
  loc_1B08500:         var_D00 = var_67C.Text
  loc_1B08514:         var_E10 = CVar(CLng(var_92)) 'Long
  loc_1B0851C:         var_E40 = CVar(CLng(&HC)) 'Long
  loc_1B0852B:         var_E70 = Me.FGrid.TextMatrix)
  loc_1B0853B:         var_EA0 = CVar(CLng(var_92)) 'Long
  loc_1B08543:         var_EE0 = CVar(CLng(&HD)) 'Long
  loc_1B08565:         var_F28 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0857C:         var_158 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Description,Party,ItemRestCode,GuarAtt,ContraDocId,ContraSNo) " & " Values ('"
  loc_1B085B6:         var_E4 = CVar(global_136) 'String
  loc_1B085D5:         var_1EC = CVar(var_158 & var_B4 & "'," & CStr(var_150) & ",") & var_F4 & ",'" & var_E4 & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1B08621:         var_2BC = var_1EC & CVar(MemVar_1F92070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_140) & "','" & CVar(global_144) 
  loc_1B0866F:         var_43C = var_2BC & "','" & CVar(var_A34) & "','Y'," & CVar(var_B54) & ",'" & CVar(var_A3C) & "','" & CVar(CStr(var_4AC.Text)) 
  loc_1B086C2:         var_6FC = var_43C & "'," & CVar(var_B5C) & ",'" & var_644 & "','" & CVar(MemVar_1F9201C) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_1B08709:         var_88C = var_6FC & var_71C & ",'" & IIf((CStr(var_774) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_B64) & "," 
  loc_1B0875A:         var_9F4 = var_88C & CVar((var_B6C * var_F18)) & ",'" & CVar(var_A88) & "','" & CVar(var_A54) & "','" & CVar(MemVar_1F92078) & "','" 
  loc_1B08788:         var_D50 = var_9F4 & IIf((var_9C = "Y"), Trim(CVar(var_574)), vbNullString) & "','" & CVar(CStr(var_CD0)) & "','" & CVar(var_A58) 
  loc_1B087D8:         var_EF0 = var_D50 & "','" & CVar(CStr(var_DB0)) & "'," & CVar(Val(var_A5C)) & ",'" & CVar(CStr(var_E70)) & "'," & CVar(var_F28) 
  loc_1B087EF:         unk_5921DC.Execute CStr(var_EF0 & ")"), var_F68, -1
  loc_1B08937:       End If
  loc_1B08937:     End If
  loc_1B0893A:   Else
  loc_1B0893E:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B08960:     var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B0898D:     Set var_AC = Me.FGrid
  loc_1B0899E:     var_B4 = CStr(var_AC.TextMatrix))
  loc_1B089CC:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1B089DD:       Set var_A8 = Me.Txt
  loc_1B089E3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (Trim(var_F4) <> vbNullString), CVar(CLng(&HA)), var_C4)
  loc_1B089EB:       var_7A8 = var_AC.Text
  loc_1B089FE:       Set var_B0 = Me.Txt
  loc_1B08A04:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_A20, var_F28, var_EE0)
  loc_1B08A0C:       var_EA0 = var_160.Text
  loc_1B08A19:       var_150 = Val(var_A20)
  loc_1B08A27:       Set var_164 = Me.Txt
  loc_1B08A2D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C, var_150)
  loc_1B08A3C:       Proc_6_7_F25D88(var_F4, CVar(var_19C), var_E70)
  loc_1B08A48:       Set var_1F0 = Me.LblVPrefix
  loc_1B08A61:       Set var_204 = Me.Txt
  loc_1B08A67:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_248, var_A34)
  loc_1B08A6F:       var_E40 = var_248.Tag
  loc_1B08A78:       var_2F0 = CVar(CLng(var_92)) 'Long
  loc_1B08A80:       var_348 = CVar(CLng(0)) 'Long
  loc_1B08AA2:       var_B54 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B08AB3:       Set var_2E0 = Me.Txt
  loc_1B08AB9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_A3C, var_B54)
  loc_1B08AC1:       var_348 = var_2F4.Text
  loc_1B08ACA:       var_42C = CVar(CLng(var_92)) 'Long
  loc_1B08AE1:       var_40C = Me.FGrid.TextMatrix)
  loc_1B08B1B:       var_B5C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B08BD7:       var_644 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1B08BEA:       Proc_6_7_F25D88(var_71C, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_B5C)
  loc_1B08BF3:       Set var_3E8 = Me.TopCtrl1
  loc_1B08BF9:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(CVar(CLng(7)))
  loc_1B08C5E:       var_B64 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B08C8F:       var_B6C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B08CC0:       var_F18 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B08CD3:       var_A64 = Proc_6_38_E68A98(global_172, var_F18, CVar(CLng(8)), CVar(CLng(var_92)), var_B6C, CVar(CLng(7)), CVar(CLng(var_92)), var_B64)
  loc_1B08CE4:       Set var_498 = Me.Txt
  loc_1B08CEA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4AC, var_A54, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1B08D02:       Set var_560 = Me.Txt
  loc_1B08D08:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_574, CVar(CLng(&HA)))
  loc_1B08D42:       var_C30 = CVar(CLng(var_92)) 'Long
  loc_1B08D59:       var_CD0 = Me.FGrid.TextMatrix)
  loc_1B08D73:       Set var_5CC = Me.Txt
  loc_1B08D79:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_610, var_A58, var_CD0, CVar(CLng(6)))
  loc_1B08D81:       var_C30 = var_610.Tag
  loc_1B08D8A:       var_D00 = CVar(CLng(var_92)) 'Long
  loc_1B08DA1:       var_DB0 = Me.FGrid.TextMatrix)
  loc_1B08DBB:       Set var_668 = Me.Txt
  loc_1B08DC1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_67C, var_A5C, var_DB0, CVar(CLng(1)))
  loc_1B08DC9:       var_D00 = var_67C.Text
  loc_1B08DED:       var_158 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Description,Party,ItemRestCode,GuarAtt) " & " Values ('"
  loc_1B08E03:       var_A28 = CStr(var_150)
  loc_1B08E3A:       var_1BC = CVar(var_1F0.Caption) 'String
  loc_1B08E50:       var_214 = CVar(var_158 & var_B4 & "'," & var_A28 & ",") & var_F4 & ",'" & CVar(global_136) & "','" & var_1BC & "','" & CVar(MemVar_1F92070) 
  loc_1B08EA5:       var_314 = var_214 & "','" & CVar(LocalRestCode) & "','" & CVar(global_140) & "','" & CVar(global_144) & "','" & CVar(var_A34) 
  loc_1B08EFD:       var_4BC = var_314 & "','Y'," & CVar(var_B54) & ",'" & CVar(var_A3C) & "','" & CVar(CStr(var_4AC.Text)) & "'," & CVar(var_B5C) & ",'" 
  loc_1B08F4A:       var_7DC = var_4BC & var_644 & "','" & CVar(MemVar_1F9201C) & "','" & CVar(MemVar_1F920C8) & "'," & var_71C & ",'" & IIf((CStr(var_774) = "Add"), "A", "E") 
  loc_1B08FA5:       var_96C = var_7DC & "','" & CVar(var_9C) & "'," & CVar(var_B64) & "," & CVar((var_B6C * var_F18)) & ",'" & CVar(var_A64) & "','" 
  loc_1B08FD2:       var_CA0 = var_96C & CVar(var_A54) & "','" & CVar(MemVar_1F92078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_574)), vbNullString) 
  loc_1B09021:       var_E00 = var_CA0 & "','" & CVar(CStr(var_CD0)) & "','" & CVar(var_A58) & "','" & CVar(CStr(var_DB0)) & "'," & CVar(Val(var_A5C)) 
  loc_1B09038:       unk_5921DC.Execute CStr(var_E00 & ")"), var_E70, -1
  loc_1B0916C:     End If
  loc_1B0916C:   End If
  loc_1B0916F: Next var_B70 'Integer
  loc_1B09178: Set var_A8 = Me.TopCtrl1
  loc_1B0917E: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_1B09197: If (CStr() = "Add") Then
  loc_1B091AE:   var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1B091D4:   var_114 = CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_136 & "' And VP.Date_From<=") 'String
  loc_1B091E5:   Set var_A8 = Me.Txt
  loc_1B091EB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_A28, var_114)
  loc_1B091F3:   var_188 = var_AC.Text
  loc_1B09201:   Proc_6_7_F25D88(var_F4, CVar(var_A28))
  loc_1B09209:   var_134 = -1 & var_F4 
  loc_1B09220:   unk_5921DC.Execute CStr(CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & var_B4 & "'," & var_A28 & ",") & var_F4 & " Order By VP.Date_From DESC"), var_B0, 
  loc_1B0922B:   Set var_88 = var_B0
  loc_1B09269:   If (var_88.RecordCount > 0) Then
  loc_1B0927A:     Set var_A8 = Me.Txt
  loc_1B09280:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1B09295:     var_150 = Val(var_AC.Text)
  loc_1B092AA:     var_B0 = var_88.Fields
  loc_1B092BA:     var_D4 = var_B0.Item("V_Type").Value
  loc_1B092E5:     Proc_6_7_F25D88(var_188, CVar(var_88.Fields.Item("Date_From")))
  loc_1B0930A:     var_A20 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_150) & " Where (SITE_CODE='"
  loc_1B09335:     var_134 = CVar(var_A20 & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_D4 & "' and Date_From=" 
  loc_1B0934A:     unk_5921DC.Execute CStr(var_134 & var_188), var_1BC, -1
  loc_1B09384:   End If
  loc_1B09384: End If
  loc_1B09388: Set var_A8 = Me.TopCtrl1
  loc_1B0938E: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_1F0)
  loc_1B093A7: If (CStr(var_150) = "Add") Then
  loc_1B093CD:   var_B4 = "SELECT COUNT(*) FROM LASTVOU WHERE lOGSITE_CODE='" & MemVar_1F92078
  loc_1B093E2:   var_A24 = var_B4 & "' AND UNAME='" & MemVar_1F920C8 & "' AND ENAME='"
  loc_1B093EB:   Call 0.Method_arg_50 (var_A20, var_A24, var_D4, -1, var_A8)
  loc_1B09404:   unk_5921DC.Execute var_AC & var_A20 & "' ", 0, var_B0
  loc_1B0940C:   var_F4 = var_A8.Fields
  loc_1B09414:    = var_AC.Item()
  loc_1B0941C:    = var_B0.Value
  loc_1B0944D:   If (var_F4 > 0) Then
  loc_1B0946E:     Set var_A8 = Me.Txt
  loc_1B09474:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "UPDATE LASTVOU  SET DOCID='")
  loc_1B0947C:     var_D4 = var_AC.Text
  loc_1B09485:     var_158 = -1 & var_B4
  loc_1B094A3:     Call 0.Method_arg_50 (var_A24, var_B4 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F920C8 & "' AND ENAME='")
  loc_1B094BC:     unk_5921DC.Execute var_B0 & var_A24 & "'  ", , 
  loc_1B094E3:   Else
  loc_1B09507:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "','", var_1BC)
  loc_1B09510:     var_A20 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='"
  loc_1B09517:     var_A28 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F920C8 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F920C8 & "','"
  loc_1B09528:     Set var_A8 = Me.Txt
  loc_1B0952E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_A24)
  loc_1B09536:     var_A28 = var_AC.Text
  loc_1B09565:     Proc_6_7_F25D88(var_F4, Date)
  loc_1B09571:     var_C4 = ",'A','"
  loc_1B0957D:     var_E4 = CVar(MemVar_1F92078) 'String
  loc_1B09597:     unk_5921DC.Execute CStr(CVar(var_B0 & var_A24 & "','" & MemVar_1F92078 & "',") & var_F4 & var_C4 & var_E4 & "')"), , 
  loc_1B095CF:   End If
  loc_1B095CF: End If
  loc_1B095D5: unk_5921DC.CommitTrans
  loc_1B095DC: var_8A = 0
  loc_1B095ED: Set var_A8 = Me.Txt
  loc_1B095F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_1B0960F: var_8A = 0
  loc_1B0961D: Me.Requery -1
  loc_1B09639: If (Me.RecordCount > 0) Then
  loc_1B09657:   If (Me.ChkNCKOT.Value <> 1) Then
  loc_1B0967F:     Me.Find "SearchCode ='" & var_AC.Text & "'", 0, 1
  loc_1B0968E:   Else
  loc_1B09694:     Me.MoveLast
  loc_1B09699:   End If
  loc_1B09699: End If
  loc_1B096BC: Call Proc_251_90_104B2E4(Proc_5_1_100CB50("INI", Me, global_76), var_C4)
  loc_1B096C7: Call Proc_251_71_127B4F8(var_8A)
  loc_1B096E3: If (Me.RecordCount > 0) Then
  loc_1B096F6:   Me.Global.Load MemVar_1F93F60
  loc_1B09719:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B09729:     FrmMsgBox.ParentForm = Me
  loc_1B0973A:     Call 0.Method_arg_54 ("Print")
  loc_1B0974B:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1B09751:     FrmMsgBox.LblMsg.Caption = "Print NC KOT ?"
  loc_1B09767:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1B0976D:     FrmMsgBox.LblMsg.BackColor = &HFFFF
  loc_1B09780:     Call 0.Method_arg_64 (&HFFFF)
  loc_1B09798:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1B097AE:     If (MsgBoxTouch = 6) Then
  loc_1B097B1:       Call TopCtrl1_UnknownEvent_14()
  loc_1B097B6:     End If
  loc_1B097C3:     FrmMsgBox.ParentForm = Me
  loc_1B097D4:     Call 0.Method_arg_54 ("Print")
  loc_1B097E5:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1B097EB:     FrmMsgBox.LblMsg.Caption = "Print NC BILL ?"
  loc_1B09801:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1B09807:     FrmMsgBox.LblMsg.BackColor = &HFF00
  loc_1B0981A:     Call 0.Method_arg_64 (&HFF00)
  loc_1B09832:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1B09848:     If (MsgBoxTouch = 6) Then
  loc_1B0984B:       Call cmdNCBill_UnknownEvent_9()
  loc_1B09850:     End If
  loc_1B09853:   Else
  loc_1B09860:     FrmMsgBox.ParentForm = Me
  loc_1B09871:     Call 0.Method_arg_54 ("Print")
  loc_1B09882:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1B09888:     FrmMsgBox.LblMsg.Caption = "Print KOT ?"
  loc_1B0989E:     Set var_A8 = MemVar_1F93F60.LblMsg
  loc_1B098A4:     FrmMsgBox.LblMsg.BackColor = &HFFFF
  loc_1B098B7:     Call 0.Method_arg_64 (&HFFFF)
  loc_1B098CF:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1B098E5:     If (MsgBoxTouch = 6) Then
  loc_1B098E8:       Call TopCtrl1_UnknownEvent_14()
  loc_1B098ED:     End If
  loc_1B098ED:   End If
  loc_1B098ED: End If
  loc_1B098F2: Set var_88 = Nothing
  loc_1B09904: Me.FGrid1.Visible = False
  loc_1B09918: Me.LblPendingKot.Visible = False
  loc_1B09920: Exit Sub
  loc_1B09921: ' Referenced from: 1B05684
  loc_1B09927: If (var_8A = &HFF) Then
  loc_1B09930:   unk_5921DC.RollbackTrans
  loc_1B09935: End If
  loc_1B09935: Proc_6_60_E62BC4(var_8A)
  loc_1B0993A: Exit Sub
End Sub

Private Sub Head_UnknownEvent_9 'F6A7F8
  'Data Table: 5921C0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_8C As Variant
  loc_F6A6B7: var_86 = KeyCode
  loc_F6A6C2: If (var_86 = CInt(0)) Then
  loc_F6A6C5:   GoTo loc_F6A7F6
  loc_F6A6C8: End If
  loc_F6A6D0: If (var_86 = CInt(1)) Then
  loc_F6A6D3:   Call TopCtrl1_UnknownEvent_D()
  loc_F6A6DB: Else
  loc_F6A6E3:   If (var_86 = CInt(2)) Then
  loc_F6A6E6:     Call TopCtrl1_UnknownEvent_C()
  loc_F6A6EE:   Else
  loc_F6A6F6:     If (var_86 = CInt(3)) Then
  loc_F6A6F9:       Call TopCtrl1_UnknownEvent_F()
  loc_F6A701:     Else
  loc_F6A709:       If (var_86 = CInt(4)) Then
  loc_F6A70C:         Call TopCtrl1_UnknownEvent_14()
  loc_F6A714:       Else
  loc_F6A71C:         If (var_86 = CInt(5)) Then
  loc_F6A71F:           Call TopCtrl1_UnknownEvent_16()
  loc_F6A731:           Set var_8C = Me.Txt
  loc_F6A737:           Call 0.Method_Head_UnknownEvent_90 (CInt(7), var_90)
  loc_F6A73F:           var_90.Visible = False
  loc_F6A756:           Set var_8C = Me.Label1
  loc_F6A75C:           Call 0.Method_Head_UnknownEvent_90 (4, var_90)
  loc_F6A764:           var_90.Visible = False
  loc_F6A77E:           Set var_8C = Me.Txt
  loc_F6A784:           Call 0.Method_Head_UnknownEvent_90 (CInt(7), var_90)
  loc_F6A78C:           var_90.Text = vbNullString
  loc_F6A79C:           Set var_8C = Me.FGNCType
  loc_F6A7BA:           Me.FGNCType.Unload Me
  loc_F6A7C5:         Else
  loc_F6A7CD:           If (var_86 = CInt(6)) Then
  loc_F6A7D0:             Call TopCtrl1_UnknownEvent_B()
  loc_F6A7D8:           Else
  loc_F6A7E0:             If (var_86 = CInt(7)) Then
  loc_F6A7E3:               Call TopCtrl1_UnknownEvent_E()
  loc_F6A7EB:             Else
  loc_F6A7F3:               If (var_86 = CInt(8)) Then
  loc_F6A7F6:               End If
  loc_F6A7F6:             End If
  loc_F6A7F6:           End If
  loc_F6A7F6:         End If
  loc_F6A7F6:       End If
  loc_F6A7F6:     End If
  loc_F6A7F6:   End If
  loc_F6A7F6:   ' Referenced from: F6A6C5
  loc_F6A7F6: End If
  loc_F6A7F6: Exit Sub
End Sub

Private Sub CmChngToNC_UnknownEvent_9 '13FEF98
  'Data Table: 5921C0
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_118 As Field20
  Dim var_CC As Variant
  Dim var_13C As Variant
  Dim var_FC As Variant
  Dim unk_5921DC As Connection15
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
  loc_13FE5A9: var_8A = Me.ChkNCKOT.Value
  loc_13FE5B7: If (var_8A = 1) Then
  loc_13FE5D3:   MsgBox("Can't Change NC KOT.", &H10, var_CC, var_EC, var_10C)
  loc_13FE5E3:   Exit Sub
  loc_13FE5E4: End If
  loc_13FE5E7: Call Proc_251_99_FF7554(var_8A)
  loc_13FE5F2: If (var_8A = 0) Then
  loc_13FE5F5:   Exit Sub
  loc_13FE5F6: End If
  loc_13FE603: var_BC = "Select K1.*,I.name as ItemName,I.Unit,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (KOT K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Where K1.RoomNo In (Select RoomNo From KOT Where DocId='"
  loc_13FE644: var_FC = 0
  loc_13FE674: unk_5921DC.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_EC, -1
  loc_13FE67C: var_124 = var_124.Fields
  loc_13FE684: var_FC = var_128.Item(var_128)
  loc_13FE68C: var_12C = var_12C.Value
  loc_13FE694: var_14C = (var_10C + var_10C)
  loc_13FE6A1: var_17C = "') And IsNull(K1.ContraDocId,'')='' And (K1.DelFlag NOT IN ('Y') OR K1.DelFlag IS NULL) AND K1.VType='K" & var_14C & "' And K1.VoidYN='N' order by K1.DocId,K1.Sno" 
  loc_13FE6AF: unk_5921DC.Execute CStr(var_17C), var_BC & Me.Fields.Item("SearchCode").Value, var_1A0
  loc_13FE6FC: If (var_1A4.RecordCount <= 0) Then
  loc_13FE704:   Set var_110 = Nothing
  loc_13FE707:   Exit Sub
  loc_13FE708: End If
  loc_13FE708: Call TopCtrl1_UnknownEvent_A()
  loc_13FE719: Me.ChkNCKOT.Value = 1
  loc_13FE72D: Me.ChkNCKOT.Enabled = False
  loc_13FE744: Me.FGrid.Redraw = False
  loc_13FE75F: Me.FGrid.Rows = 1
  loc_13FE769: var_112 = 1
  loc_13FE780: If (var_110.RecordCount > 0) Then
  loc_13FE783:   ' Referenced from: 13FED4D
  loc_13FE792:   If Not(var_110.EOF) Then
  loc_13FE795:     var_9C = vbNullString
  loc_13FE79F:     Set var_88 = Me.FGrid
  loc_13FE7B4:     Set var_1AC = Me.FGrid
  loc_13FE7BB:     var_9C = CVar(CLng(var_112)) 'Long
  loc_13FE7C3:     var_DC = CVar(CLng(0)) 'Long
  loc_13FE7CD:     var_AC = CVar(CStr(var_112)) 'String
  loc_13FE7D4:     LateIdCallSt
  loc_13FE7E3:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FE7EB:     var_FC = CVar(CLng(&HA)) 'Long
  loc_13FE81B:     var_CC = CVar(CStr(var_110.Fields.Item("Item").Value)) 'String
  loc_13FE822:     LateIdCallSt
  loc_13FE871:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_112)), var_1AC, var_CC, CVar(CLng(3)), CVar(CLng(var_112)))) 'String
  loc_13FE878:     LateIdCallSt
  loc_13FE8C3:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_112)), var_1AC, var_CC, var_1AC)) 'String
  loc_13FE8CA:     LateIdCallSt
  loc_13FE915:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FE91C:     LateIdCallSt
  loc_13FE967:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FE96E:     LateIdCallSt
  loc_13FE9A0:     var_DC = CVar(CLng(var_112)) 'Long
  loc_13FE9A8:     var_13C = CVar(CLng(7)) 'Long
  loc_13FE9D5:     var_10C = CVar(CStr(Format(CVar(var_110.Fields.Item("qty")), "0.00"))) 'String
  loc_13FE9DC:     LateIdCallSt
  loc_13FEA47:     var_10C = CVar(CStr(Format(CVar(var_110.Fields.Item("Rate")), "0.00"))) 'String
  loc_13FEA4E:     LateIdCallSt
  loc_13FEA8C:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("VoidYN")), var_1AC, var_10C, 1, 1, CVar(CLng(8)), CVar(CLng(var_112)))) 'String
  loc_13FEACE:     var_22C = CVar(CLng(var_112)) 'Long
  loc_13FEAD6:     var_24C = CVar(CLng(9)) 'Long
  loc_13FEB08:     var_1EC = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("VoidYN")), var_1AC, var_10C, 1))) = "Y"), "Cancel", vbNullString)
  loc_13FEB42:     LateIdCallSt
  loc_13FEBA9:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_112)), var_1AC, CVar(CStr(IIf((Trim(var_CC) = "F"), "Free", var_1EC))))) 'String
  loc_13FEBB0:     LateIdCallSt
  loc_13FEBFB:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FEC02:     LateIdCallSt
  loc_13FEC4D:     var_CC = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FEC54:     LateIdCallSt
  loc_13FEC6A:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FEC72:     var_FC = CVar(CLng(&HC)) 'Long
  loc_13FECA2:     var_CC = CVar(CStr(var_110.Fields.Item("DocID").Value)) 'String
  loc_13FECA9:     LateIdCallSt
  loc_13FECC3:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FECCB:     var_FC = CVar(CLng(&HD)) 'Long
  loc_13FECFB:     var_CC = CVar(CStr(var_110.Fields.Item("SNo").Value)) 'String
  loc_13FED02:     LateIdCallSt
  loc_13FED1C:     var_9C = CVar(CLng(var_112)) 'Long
  loc_13FED2E:     LateIdCallSt
  loc_13FED38:     Set var_1AC = Nothing 
  loc_13FED42:     var_112 = (var_112 + 1)
  loc_13FED48:     var_110.MoveNext
  loc_13FED4D:     GoTo loc_13FE783
  loc_13FED50:   End If
  loc_13FED69:   var_9C = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13FED7C:   Set var_118 = Me.FGrid
  loc_13FED82:   LateIdCallSt
  loc_13FEDA7:   Me.FGrid.FixedRows = 1
  loc_13FEDAF: End If
  loc_13FEDBD: Me.FGrid.Redraw = True
  loc_13FEDC5: var_9C = vbNullString
  loc_13FEDCF: Set var_88 = Me.FGrid
  loc_13FEDE6: If (var_112 = 1) Then
  loc_13FEDE9:   var_9C = 1
  loc_13FEDFC:   Me.FGrid.Rows = var_9C
  loc_13FEE22:   var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_9C, var_118, global_104, var_9C, var_112))) 'String
  loc_13FEE2A:   Set var_118 = Me.FGrid
  loc_13FEE4E:   var_AC = Me.FGrid.Rows
  loc_13FEE5D:   var_9C = CVar((CLng(var_AC) - 1)) 'Long
  loc_13FEE70:   Set var_118 = Me.FGrid
  loc_13FEE76:   LateIdCallSt
  loc_13FEE9B:   Me.FGrid.FixedRows = 1
  loc_13FEEA3: End If
  loc_13FEEAC: Set var_88 = Me.CmChngSteward
  loc_13FEEB2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_13FEEC3: Set var_88 = Me.CmNoOfPersons
  loc_13FEEC9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_13FEEE1: Set var_88 = Me.CmFgrid
  loc_13FEEE7: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(2), var_118, False, var_118, global_104, False, FGrid.DispID_10000)
  loc_13FEEEF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_AC)
  loc_13FEEFB: var_9C = False
  loc_13FEF0B: Set var_88 = Me.CmFgrid
  loc_13FEF11: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(4), var_118, var_9C, var_1AC, global_104)
  loc_13FEF19: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_9C)
  loc_13FEF35: Set var_88 = Me.CmFgrid
  loc_13FEF3B: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(5), var_118, False)
  loc_13FEF43: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_1AC)
  loc_13FEF5F: Set var_88 = Me.CmFgrid
  loc_13FEF65: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(6), var_118, False)
  loc_13FEF6D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(var_CC)
  loc_13FEF85: Me.FrameGrpItem.Enabled = False
  loc_13FEF92: Set var_110 = Nothing
  loc_13FEF95: Exit Sub
End Sub

Private Sub CmTransKOT_UnknownEvent_9 'EE40C0
  'Data Table: 5921C0
  Dim .global_8702 As Integer
  loc_EE4007: Call Proc_251_99_FF7554(var_86)
  loc_EE4012: If (var_86 = 0) Then
  loc_EE4015:   Exit Sub
  loc_EE4016: End If
  loc_EE401E: If (MemVar_1F9220C = "Yes") Then
  loc_EE4025:   Set var_8C = New RsTbChange
  loc_EE402B: Else
  loc_EE402F:   Set var_8C = New RsTbChange
  loc_EE4032: End If
  loc_EE403D: var_8C.ParentForm = CVar(Me)
  loc_EE4053: var_8C.PTableNo = CVar(PTableNo)
  loc_EE4065: Set var_C4 = var_C8(CInt(3))
  loc_EE406B: Call 0.Method_CmTransKOT_UnknownEvent_90 ()
  loc_EE407B: var_8C.pDocId = CVar(var_C8)
  loc_EE4092: var_8C.LocalRestCode = CVar(LocalRestCode)
  loc_EE40A2: var_8C.OpenMode = 1
  loc_EE40AF: var_8C.CAPTION = "Transfer KOT"
  loc_EE40B6: Call var_8C.Show
  loc_EE40BC: Exit Sub
  loc_EE40BD: .global_8702 = 
End Sub

Private Sub CmChngSteward_UnknownEvent_9 'F53738
  'Data Table: 5921C0
  Dim var_A4 As Integer
  Dim var_B0 As String
  Dim var_C8 As Recordset15
  Dim var_CC As Variant
  Dim var_D0 As Field20
  Dim var_E8 As TextBox
  loc_F5363D: RsTouchScreenSteward.pOpenAs = "Steward"
  loc_F5364E: RsTouchScreenSteward.pRestCode = LocalRestCode
  loc_F53666: Call 0.Method_arg_2B0 (1)
  loc_F53671: var_A4 = 0
  loc_F5369C: var_B0 = "Select W.Name As Name From Waiter W Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9201C
  loc_F536AC: RsTouchScreenSteward.Connection15.Execute var_B0 & "'", var_C4, -1
  loc_F536B4: var_C8 = var_C8.Fields
  loc_F536BC: var_A4 = var_CC.Item(var_CC)
  loc_F536C4: var_D0 = var_D0.Value
  loc_F536DB: Set var_E4 = Me.Txt
  loc_F536E1: Call 0.Method_CmChngSteward_UnknownEvent_90 (CInt(5), var_E8, CStr(var_E0))
  loc_F536E9: var_E8.Text = var_E0
  loc_F5371D: Set var_C8 = Me.Txt
  loc_F53723: Call 0.Method_CmChngSteward_UnknownEvent_90 (CInt(5), var_CC)
  loc_F5372B: var_CC.Tag = MemVar_1F9201C
  loc_F53737: Exit Sub
End Sub

Private Sub CmNoOfPersons_UnknownEvent_9 'EAC5EC
  'Data Table: 5921C0
  loc_EAC564: Me.FrameQty.Visible = True
  loc_EAC579: Me.LblIndex.Caption = vbNullString
  loc_EAC58E: Me.LblIndex.Tag = vbNullString
  loc_EAC5A3: Me.LblVtype.Caption = "No.of Person"
  loc_EAC5B8: Me.LblVtype.Tag = vbNullString
  loc_EAC5CD: Me.TxtQty.Text = vbNullString
  loc_EAC5E2: Me.TxtQty.Tag = vbNullString
  loc_EAC5EA: Exit Sub
End Sub

Private Sub CmFgrid_UnknownEvent_9 '13CB798
  'Data Table: 5921C0
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
  loc_13CAE22: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CAE4A: var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CAE59: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CAE75: Me.LblIndex.Caption = vbNullString
  loc_13CAE8A: Me.LblIndex.Tag = vbNullString
  loc_13CAE9F: Me.LblVtype.Caption = vbNullString
  loc_13CAEB4: Me.LblVtype.Tag = vbNullString
  loc_13CAEC9: Me.TxtQty.Text = vbNullString
  loc_13CAEDE: Me.TxtQty.Tag = vbNullString
  loc_13CAEE9: var_C2 = KeyCode
  loc_13CAEF4: If (var_C2 = CInt(0)) Then
  loc_13CAF16:   If (CLng(Me.FGrid.Row) > 1) Then
  loc_13CAF32:     var_AC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_13CAF41:     Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CAF69:     var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CAF78:     Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CAFA9:     Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_13CAFB8:   End If
  loc_13CAFBB: Else
  loc_13CAFC3:   If (var_C2 = CInt(1)) Then
  loc_13CB001:     If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_13CB01D:       var_AC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_13CB02C:       Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CB054:       var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CB063:       Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CB094:       Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_13CB0A3:     End If
  loc_13CB0A6:   Else
  loc_13CB0AE:     If (var_C2 = CInt(2)) Then
  loc_13CB0B5:       Set var_8C = Me.TopCtrl1
  loc_13CB0BB:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_C2)
  loc_13CB0D4:       If (CStr() = "Browse") Then
  loc_13CB0D7:         Exit Sub
  loc_13CB0D8:       End If
  loc_13CB0EB:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB0F3:       var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CB126:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CB129:         Exit Sub
  loc_13CB12A:       End If
  loc_13CB13D:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB145:       var_E8 = CVar(CLng(0)) 'Long
  loc_13CB178:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CB17B:         Exit Sub
  loc_13CB17C:       End If
  loc_13CB188:       Me.FrameQty.Visible = True
  loc_13CB190:       var_AC = 0
  loc_13CB1A0:       Me.FrameQty.ZOrder var_AC
  loc_13CB1B5:       Me.TxtQty.Text = vbNullString
  loc_13CB1CE:       Me.TxtQty.Tag = CStr(2)
  loc_13CB1E6:       Me.LblVtype.Caption = "Qty"
  loc_13CB1F1:     Else
  loc_13CB1F9:       If (var_C2 = CInt(3)) Then
  loc_13CB200:         Set var_8C = Me.TopCtrl1
  loc_13CB206:         Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_E8)
  loc_13CB21F:         If (CStr(var_AC) = "Browse") Then
  loc_13CB222:           Exit Sub
  loc_13CB223:         End If
  loc_13CB227:         Set var_FC = Me.FGrid
  loc_13CB236:         var_AC = CVar(CLng(var_FC.Row)) 'Long
  loc_13CB23E:         var_E8 = CVar(CLng(0)) 'Long
  loc_13CB251:         var_D8 = CStr(var_FC.TextMatrix))
  loc_13CB265:         var_11C = CVar(CLng(var_FC.Row)) 'Long
  loc_13CB29B:         If (CVar(CLng(&HA)) And (CStr(var_FC.TextMatrix)) <> vbNullString)) Then
  loc_13CB2AA:           var_AC = CVar(CLng(var_FC.RowSel)) 'Long
  loc_13CB2E7:           For var_164 = CInt(CLng(var_FC.RowSel)) To CInt((CLng(var_FC.Rows) - 1)):       var_86 = var_164 'Integer
  loc_13CB2F1:             var_AC = CVar(CLng(var_86)) 'Long
  loc_13CB2F9:             var_E8 = CVar(CLng(0)) 'Long
  loc_13CB303:             var_9C = CVar(CStr(var_86)) 'String
  loc_13CB30A:             LateIdCallSt
  loc_13CB318:           Next var_164 'Integer
  loc_13CB31D:         End If
  loc_13CB31F:         Set var_FC = Nothing 
  loc_13CB326:       Else
  loc_13CB32E:         If (var_C2 = CInt(4)) Then
  loc_13CB335:           Set var_8C = Me.TopCtrl1
  loc_13CB33B:           Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_13CB354:           If (CStr() = "Browse") Then
  loc_13CB357:             Exit Sub
  loc_13CB358:           End If
  loc_13CB36B:           var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB373:           var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CB3A6:           If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CB3A9:             Exit Sub
  loc_13CB3AA:           End If
  loc_13CB3BD:           var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB3C5:           var_E8 = CVar(CLng(9)) 'Long
  loc_13CB407:           If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "CANCEL") Then
  loc_13CB41D:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB425:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CB42A:             var_11C = vbNullString
  loc_13CB434:             Set var_C0 = Me.FGrid
  loc_13CB43A:             LateIdCallSt
  loc_13CB44F:           Else
  loc_13CB462:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB46A:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CB46F:             var_11C = "Cancel"
  loc_13CB479:             Set var_C0 = Me.FGrid
  loc_13CB47F:             LateIdCallSt
  loc_13CB491:           End If
  loc_13CB494:         Else
  loc_13CB49C:           If (var_C2 = CInt(5)) Then
  loc_13CB4A3:             Set var_8C = Me.TopCtrl1
  loc_13CB4A9:             Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_C0)
  loc_13CB4C2:             If (CStr(var_11C) = "Browse") Then
  loc_13CB4C5:               Exit Sub
  loc_13CB4C6:             End If
  loc_13CB4D9:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB4E1:             var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CB514:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CB517:               Exit Sub
  loc_13CB518:             End If
  loc_13CB52B:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB533:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CB575:             If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "FREE") Then
  loc_13CB58B:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB593:               var_E8 = CVar(CLng(9)) 'Long
  loc_13CB598:               var_11C = vbNullString
  loc_13CB5A2:               Set var_C0 = Me.FGrid
  loc_13CB5A8:               LateIdCallSt
  loc_13CB5BD:             Else
  loc_13CB5D0:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB5D8:               var_E8 = CVar(CLng(9)) 'Long
  loc_13CB5DD:               var_11C = "Free"
  loc_13CB5E7:               Set var_C0 = Me.FGrid
  loc_13CB5ED:               LateIdCallSt
  loc_13CB5FF:             End If
  loc_13CB602:           Else
  loc_13CB60A:             If (var_C2 = CInt(6)) Then
  loc_13CB611:               Set var_8C = Me.TopCtrl1
  loc_13CB617:               Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(var_C0)
  loc_13CB630:               If (CStr(var_11C) = "Browse") Then
  loc_13CB633:                 Exit Sub
  loc_13CB634:               End If
  loc_13CB647:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB64F:               var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CB682:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CB685:                 Exit Sub
  loc_13CB686:               End If
  loc_13CB696:               Set global_232 = New RsTouchScreenKeyBoard
  loc_13CB6A4:               var_AC = CVar(Me) 'Address
  loc_13CB6AF:               Me.ParentForm = var_AC
  loc_13CB6B7:               Set var_8C = var_AC(var_E8)
  loc_13CB6C6:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB6CE:               var_E8 = CVar(CLng(6)) 'Long
  loc_13CB712:               var_9C = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_13CB717:               var_9C.MaxLength = 0
  loc_13CB731:               var_9C.Show 1, var_BC
  loc_13CB749:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CB751:               var_E8 = CVar(CLng(6)) 'Long
  loc_13CB761:               var_D4 = CVar(TxtKeyBoard) 'String
  loc_13CB769:               Set var_C0 = Me.FGrid
  loc_13CB76F:               LateIdCallSt
  loc_13CB790:               Set global_232 = Nothing
  loc_13CB797:             End If
  loc_13CB797:           End If
  loc_13CB797:         End If
  loc_13CB797:       End If
  loc_13CB797:     End If
  loc_13CB797:   End If
  loc_13CB797: End If
  loc_13CB797: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A1F30
  'Data Table: 5921C0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A1C7F: Me.DGItem.Visible = False
  loc_10A1C9E: If (Me.RecordCount > 0) Then
  loc_10A1CDB:   Set var_B4 = Me.TxtGrid
  loc_10A1CE1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A1CE9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A1D12:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A1D1A:   var_EC = CVar(CLng(4)) 'Long
  loc_10A1D4D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A1D55:   Set var_B8 = Me.FGrid
  loc_10A1D5B:   LateIdCallSt
  loc_10A1D8A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A1D92:   var_EC = CVar(CLng(&HA)) 'Long
  loc_10A1DC5:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A1DD3:   LateIdCallSt
  loc_10A1E3A:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(5)))) 'String
  loc_10A1E42:   Set var_B8 = Me.FGrid
  loc_10A1E48:   LateIdCallSt
  loc_10A1E75:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A1E7D:   var_EC = CVar(CLng(3)) 'Long
  loc_10A1E9F:   var_B0 = Me.Fields.Item("DispCode")
  loc_10A1EB0:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A1EB8:   Set var_B8 = Me.FGrid
  loc_10A1EBE:   LateIdCallSt
  loc_10A1EDA: End If
  loc_10A1EE6: Set var_A8 = Me.TxtGrid
  loc_10A1EEC: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A1EF4: var_B8 = var_B0.Visible
  loc_10A1F06: If (var_12E = &HFF) Then
  loc_10A1F12:   Set var_A8 = Me.TxtGrid
  loc_10A1F18:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_A4)
  loc_10A1F20:   var_B0.SetFocus
  loc_10A1F2C: End If
  loc_10A1F2C: Exit Sub
  loc_10A1F2D: If var_B8 Then Exit Sub
  loc_10A1F2D: End If
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9EB10
  'Data Table: 5921C0
  Dim var_A8 As Variant
  loc_E9EA94: Set var_88 = Me.DGItem
  loc_E9EABE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9EAC6: Set var_BC = Me.DGItem
  loc_E9EB00: Proc_6_138_106D6F8(Me.DGItem, global_72, 0, Me.FGPoint)
  loc_E9EB0E: Exit Sub
End Sub

Private Sub CmdCatType_UnknownEvent_9 '101D560
  'Data Table: 5921C0
  Dim Me As Variant
  Dim var_A8 As Variant
  loc_101D348: Set var_8C = Me.CmdCatType
  loc_101D34E: Call 0.Method_CmdCatType_UnknownEvent_98 (var_8E, var_86)
  loc_101D359: For var_92 =  To var_8E: 0 = var_92 'Integer
  loc_101D369:   Set var_8C = Me.CmdCatType
  loc_101D36F:   Call 0.Method_CmdCatType_UnknownEvent_90 (var_86)
  loc_101D377:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69(var_98)
  loc_101D38C:   If (CInt() = 1) Then
  loc_101D399:     Set var_8C = Me.CmdCatType
  loc_101D39F:     Call 0.Method_CmdCatType_UnknownEvent_90 (KeyCode)
  loc_101D3A7:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_98)
  loc_101D3B5:     global_164 = CStr()
  loc_101D3C6:   End If
  loc_101D3C9: Next var_92 'Integer
  loc_101D3DD: Me.Filter = 0
  loc_101D3E8: Me.MoveFirst
  loc_101D3FB: Set var_8C = Me.SSPGroup
  loc_101D401: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101D409: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_101D423: Set var_8C = Me.SSPItem
  loc_101D429: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101D431: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_101D458: Me.Filter = CVar("CatType='" & global_164 & "'")
  loc_101D474: var_A8 = CVar(Me.RecordCount) 'Long
  loc_101D47B: Proc_6_39_E7C810(var_E0)
  loc_101D487: global_228 = CInt(var_E0)
  loc_101D49C: If (global_220 = "Group") Then
  loc_101D4A5:   global_220 = "Group"
  loc_101D4BD:   Set var_98 = Me.SSPGroup
  loc_101D4E0:   Call Proc_251_78_1283A50(Me.SSPGroup, CInt(4), global_240, CInt(4))
  loc_101D4EC:   global_216 = CInt(var_A8)
  loc_101D500: Else
  loc_101D506:   global_220 = "Group"
  loc_101D541:   Call Proc_251_78_1283A50(Me.SSPGroup, CInt(4), global_240, CInt(4), Me.SSPItem, var_A8)
  loc_101D54D:   global_216 = CInt(var_A8)
  loc_101D55E: End If
  loc_101D55E: Exit Sub
End Sub

Private Sub SSPGroup_UnknownEvent_9 'F773A8
  'Data Table: 5921C0
  Dim Me As Variant
  Dim var_CC As Variant
  loc_F77287: Me.Filter = 0
  loc_F77292: Me.MoveFirst
  loc_F772A4: Set var_98 = Me.SSPGroup
  loc_F772AA: Call 0.Method_SSPGroup_UnknownEvent_90 (KeyCode, var_9C)
  loc_F772B2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B("ItemGroup='")
  loc_F772D6: var_CC = CVar(CStr() & "' And CatType='" & global_164 & "'") 'String
  loc_F772E0: Me.Filter = var_CC
  loc_F77316: Proc_6_39_E7C810(var_CC)
  loc_F77322: global_228 = CInt(var_CC)
  loc_F77343: If (Me.RecordCount > 0) Then
  loc_F7734C:   global_220 = "Item"
  loc_F77364:   Set var_9C = Me.SSPGroup
  loc_F77387:   Call Proc_251_78_1283A50(Me.SSPItem, CInt(4), global_236, CInt(4))
  loc_F77393:   global_216 = CInt(CVar(Me.RecordCount))
  loc_F773A4: End If
  loc_F773A4: Exit Sub
End Sub

Private Sub SSPItem_UnknownEvent_9 '12ED810
  'Data Table: 5921C0
  Dim var_90 As String
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_C0 As String
  Dim unk_5921DC As Connection15
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
  loc_12ED183: var_90 = "Select D.Code As OutletCode,D.Name As OutletName,I.Dispcode,I.Unit,I.Kitchen From ItemMast I Inner Join Depart D On I.RestCode=D.Code where I.RestCode='" & LocalRestCode
  loc_12ED18A: var_AC = var_90 & "' And I.Code='"
  loc_12ED197: Set var_94 = Me.SSPItem
  loc_12ED19D: Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode, var_98, var_AC)
  loc_12ED1A5: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(var_E0)
  loc_12ED1AD: var_B0 = CStr(-1)
  loc_12ED1C6: var_C0 = var_E4 & var_B0 & "' And (I.LOGSITE_CODE='" & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999  "
  loc_12ED1CF: unk_5921DC.Execute var_C0, , 
  loc_12ED1DA: Set var_8C = var_E4
  loc_12ED202: Set var_E8 = Me.FGrid
  loc_12ED217: var_D0 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12ED21F: var_108 = CVar(CLng(0)) 'Long
  loc_12ED238: var_128 = CVar(CStr((CLng(var_E8.Rows) - 1))) 'String
  loc_12ED23F: LateIdCallSt
  loc_12ED262: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12ED26A: var_118 = CVar(CLng(1)) 'Long
  loc_12ED29A: var_128 = CVar(CStr(var_8C.Fields.Item("OutletCode").Value)) 'String
  loc_12ED2A1: LateIdCallSt
  loc_12ED2CB: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12ED2D3: var_118 = CVar(CLng(2)) 'Long
  loc_12ED303: var_128 = CVar(CStr(var_8C.Fields.Item("OutLetName").Value)) 'String
  loc_12ED30A: LateIdCallSt
  loc_12ED334: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12ED33C: var_118 = CVar(CLng(3)) 'Long
  loc_12ED35B: var_98 = var_8C.Fields.Item("DispCode")
  loc_12ED373: LateIdCallSt
  loc_12ED39D: var_D0 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12ED3B4: Set var_94 = Me.SSPItem
  loc_12ED3BA: Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode, var_98, CVar(CLng(4)), "DispCode", var_E8, CVar(CStr(var_98.Value)), var_118)
  loc_12ED3C2: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(var_F8)
  loc_12ED3CA: var_128 = CVar(CStr(var_E8)) 'String
  loc_12ED3D1: LateIdCallSt
  loc_12ED3EC: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E8)
  loc_12ED3FB: var_D0 = CVar((CLng(var_128) - 1)) 'Long
  loc_12ED412: Set var_94 = Me.SSPItem
  loc_12ED418: Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode, var_98, CVar(CLng(&HA)), "DispCode", var_128)
  loc_12ED420: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(var_118)
  loc_12ED42F: LateIdCallSt
  loc_12ED44A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E8)
  loc_12ED459: var_F8 = CVar((CLng(CVar(CStr(var_F8))) - 1)) 'Long
  loc_12ED461: var_118 = CVar(CLng(5)) 'Long
  loc_12ED480: var_98 = var_8C.Fields.Item("Unit")
  loc_12ED498: LateIdCallSt
  loc_12ED4B3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_4(var_E8)
  loc_12ED4C2: var_108 = CVar((CLng(CVar(CStr(var_98.Value))) - 1)) 'Long
  loc_12ED4E9: var_A8 = "1"
  loc_12ED502: LateIdCallSt
  loc_12ED521: Set var_94 = Me.SSPItem
  loc_12ED527: Call 0.Method_SSPItem_UnknownEvent_90 (KeyCode, var_98, var_E8, CVar(CStr(Format(var_A8, "0.000"))), 1, 1)
  loc_12ED52F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(CVar(CLng(7)))
  loc_12ED546: Set var_E4 = Me.Txt
  loc_12ED54C: Call 0.Method_SSPItem_UnknownEvent_90 (CInt(1), var_17C, var_AC, CVar(CLng(&HA)))
  loc_12ED554: var_118 = var_17C.Text
  loc_12ED59A: Call Proc_251_98_F21D8C(CStr(var_A8), var_AC, CStr(var_8C.Fields.Item("OutletCode").Value), var_18C)
  loc_12ED5B1: var_118 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12ED5B9: var_148 = CVar(CLng(8)) 'Long
  loc_12ED5E6: var_1AC = CVar(CStr(Format(CVar(var_18C), "0.00"))) 'String
  loc_12ED5ED: LateIdCallSt
  loc_12ED630: var_D0 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12ED646: LateIdCallSt
  loc_12ED663: var_F8 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12ED673: var_D0 = "Kitchen"
  loc_12ED698: var_128 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_D0)), CVar(CLng(&HB)), "0.000", var_E8, vbNullString, CVar(CLng(9)), var_D0)) 'String
  loc_12ED69F: LateIdCallSt
  loc_12ED6C5: var_D0 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12ED6D7: LateIdCallSt
  loc_12ED6FB: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12ED70A: Me.FGrid.Row = var_D0
  loc_12ED73B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_12ED75C: var_D0 = CVar((CLng(var_E8.Rows) + 1)) 'Long
  loc_12ED77E: var_D0 = CVar((CLng(CVar(CLng(Me.FGrid.Row))) - 1)) 'Long
  loc_12ED790: LateIdCallSt
  loc_12ED79D: Set var_E8 = Nothing 
  loc_12ED7BA: var_D0 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_12ED7C9: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_12ED7F1: var_D0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_12ED800: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_12ED80F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F596F0
  'Data Table: 5921C0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F595D0: On Error Goto loc_F596EA
  loc_F595E2: Me.DGTable.Visible = False
  loc_F59601: If (Me.RecordCount > 0) Then
  loc_F59640:   Set var_B4 = Me.Txt
  loc_F59646:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5964E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F59681:   var_B0 = Me.Fields.Item("Code")
  loc_F596A0:   Set var_B4 = Me.Txt
  loc_F596A6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F596AE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F596C4: End If
  loc_F596CF: Set var_A8 = Me.Txt
  loc_F596D5: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F596DD: var_B0.SetFocus
  loc_F596E9: Exit Sub
  loc_F596EA: ' Referenced from: F595D0
  loc_F596EA: Proc_6_60_E62BC4(var_B0)
  loc_F596EF: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA3944
  'Data Table: 5921C0
  Dim var_A8 As Variant
  loc_EA38C4: Set var_88 = Me.DGTable
  loc_EA38EE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA38F6: Set var_BC = Me.DGTable
  loc_EA3932: Proc_6_138_106D6F8(Me.DGTable, global_84, CInt(4), Me.FGPoint)
  loc_EA3940: Exit Sub
End Sub

Private Sub ChkNCKOT_Click() '126391C
  'Data Table: 5921C0
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim var_E0 As Integer
  Dim var_CC As String
  Dim unk_5921DC As Connection15
  Dim var_E4 As Field20
  Dim var_88 As Recordset15
  loc_12633C0: Set var_8C = Me.TopCtrl1
  loc_12633C6: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_12633DF: If (CStr() = "Browse") Then
  loc_12633E2:   Exit Sub
  loc_12633E3: End If
  loc_12633FE: If (Me.ChkNCKOT.Value = 1) Then
  loc_126340D:   Me.Frame.Visible = True
  loc_1263425:   Me.Frame.ZOrder 0
  loc_126343B:   Set var_8C = Me.Txt
  loc_1263441:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_1263449:   var_B8.Text = vbNullString
  loc_1263461:   Me.FrameGrpItem.Enabled = False
  loc_1263481:   Call 0.Method_Me8 (var_BC)
  loc_126349E:   Me.Frame.Top = Int(((var_BC - Me.Frame.Height) / CDbl(2)))
  loc_12634C2:   Call 0.Method_Me0 (var_BC)
  loc_12634D9:   Set var_B8 = Me.Frame
  loc_12634DF:   var_B8.Left = Int(((var_BC - Me.Frame.Width) / CDbl(2)))
  loc_12634F9:   Set var_8C = Me.Txt
  loc_12634FF:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_1263519:   If (var_B8.Visible = 0) Then
  loc_1263529:     Set var_8C = Me.Txt
  loc_126352F:     Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_1263537:     var_B8.Visible = True
  loc_126354E:     Set var_8C = Me.Label1
  loc_1263554:     Call 0.Method_ChkNCKOT_Click0 (4, var_B8)
  loc_126355C:     var_B8.Visible = True
  loc_1263568:   End If
  loc_1263583:   var_C4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_126359A:   var_E0 = 0
  loc_12635BA:   var_CC = "Select 'N'+ ShortName From Depart Where Code='" & LocalRestCode
  loc_12635CA:   unk_5921DC.Execute var_CC & "'", var_9C, -1
  loc_12635D2:   var_8C = var_8C.Fields
  loc_12635DA:   var_E0 = var_B8.Item(var_B8)
  loc_12635E2:   var_E4 = var_E4.Value
  loc_1263601:   unk_5921DC.Execute CStr(var_F4 & var_F4 & "' Order by Description"), CVar(var_C4 & MemVar_1F92078 & "') AND V_Type='"), var_158
  loc_126360C:   Set var_88 = var_15C
  loc_126364C:   If (var_88.RecordCount > 0) Then
  loc_1263669:     var_B8 = var_88.Fields.Item(0)
  loc_1263671:     var_9C = var_B8.Value
  loc_126367A:     var_A0 = CStr(var_9C)
  loc_1263680:     global_136 = var_A0
  loc_1263697:     Call Proc_251_93_10E8C50(MemVar_1F92044, var_A0)
  loc_12636AA:     Set var_8C = Me.Txt
  loc_12636B0:     Call 0.Method_ChkNCKOT_Click0 (CInt(3), var_B8, var_A0)
  loc_12636B8:     var_B8.Text = -1
  loc_12636D4:     Me.LblKotNm.Caption = "NC Kot"
  loc_12636E4:     Set var_8C = Me.cmdNCBill
  loc_12636EA:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_12636F2:   End If
  loc_12636F5: Else
  loc_1263703:   Set var_8C = Me.Txt
  loc_1263709:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_1263723:   If (var_B8.Visible = &HFF) Then
  loc_1263733:     Set var_8C = Me.Txt
  loc_1263739:     Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_1263741:     var_B8.Visible = False
  loc_1263758:     Set var_8C = Me.Label1
  loc_126375E:     Call 0.Method_ChkNCKOT_Click0 (4, var_B8)
  loc_1263766:     var_B8.Visible = False
  loc_1263772:   End If
  loc_126378D:   var_C4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_12637A4:   var_E0 = 0
  loc_12637C4:   var_CC = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_12637D4:   unk_5921DC.Execute var_CC & "'", var_9C, -1
  loc_12637DC:   var_8C = var_8C.Fields
  loc_12637E4:   var_E0 = var_B8.Item(var_B8)
  loc_12637EC:   var_E4 = var_E4.Value
  loc_126380B:   unk_5921DC.Execute CStr(var_F4 & var_F4 & "' Order by Description"), CVar(var_C4 & MemVar_1F92078 & "') AND V_Type='"), var_158
  loc_1263816:   Set var_88 = var_15C
  loc_1263856:   If (var_88.RecordCount > 0) Then
  loc_1263873:     var_B8 = var_88.Fields.Item(0)
  loc_1263884:     var_A0 = CStr(var_B8.Value)
  loc_126388A:     global_136 = var_A0
  loc_12638A1:     Call Proc_251_93_10E8C50(MemVar_1F92044, var_A0, -1)
  loc_12638B4:     Set var_8C = Me.Txt
  loc_12638BA:     Call 0.Method_ChkNCKOT_Click0 (CInt(3), var_B8, var_A0)
  loc_12638C2:     var_B8.Text = var_15C
  loc_12638DE:     Me.LblKotNm.Caption = "Standard Kot"
  loc_12638EF:     Set var_8C = Me.cmdNCBill
  loc_12638F5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_12638FD:   End If
  loc_1263909:   Me.Frame.Visible = False
  loc_1263911: End If
  loc_1263916: Set var_88 = Nothing
  loc_1263919: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'FE347C
  'Data Table: 5921C0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE32B7: Me.DGRest.Visible = False
  loc_FE32D6: If (Me.RecordCount > 0) Then
  loc_FE3313:   Set var_B4 = Me.TxtGrid
  loc_FE3319:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE3321:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE334A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE3352:   var_EC = CVar(CLng(2)) 'Long
  loc_FE3385:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE338D:   Set var_B8 = Me.FGrid
  loc_FE3393:   LateIdCallSt
  loc_FE33C2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE33CA:   var_EC = CVar(CLng(1)) 'Long
  loc_FE33EC:   var_B0 = Me.Fields.Item("Code")
  loc_FE33FD:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE3405:   Set var_B8 = Me.FGrid
  loc_FE340B:   LateIdCallSt
  loc_FE3427: End If
  loc_FE3433: Set var_A8 = Me.TxtGrid
  loc_FE3439: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE3441: var_A4 = var_B0.Visible
  loc_FE3453: If (var_12E = &HFF) Then
  loc_FE345F:   Set var_A8 = Me.TxtGrid
  loc_FE3465:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE346D:   var_B0.SetFocus
  loc_FE3479: End If
  loc_FE3479: Exit Sub
  loc_FE347A: ArrayRebase1Var
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9E990
  'Data Table: 5921C0
  Dim var_A8 As Variant
  loc_E9E914: Set var_88 = Me.DGRest
  loc_E9E93E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9E946: Set var_BC = Me.DGRest
  loc_E9E980: Proc_6_138_106D6F8(Me.DGRest, global_88, 0, Me.FGPoint)
  loc_E9E98E: Exit Sub
End Sub

Private Sub cmdNCBill_UnknownEvent_9 '17A8BCC
  'Data Table: 5921C0
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_E8 As String
  Dim unk_592227 As Connection15
  Dim var_D0 As Recordset15
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim Me As Recordset15
  Dim var_178 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim unk_5921DC As Connection15
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
  loc_17A6D04: On Error Goto loc_17A8BC5
  loc_17A6D0A: MemVar_1F923C0 = "N"
  loc_17A6D11: MemVar_1F923C4 = "N"
  loc_17A6D18: MemVar_1F923C8 = "K"
  loc_17A6D48: var_E8 = "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F92078 & "' AND RestCode='" & LocalRestCode & "'"
  loc_17A6D51: unk_592227.Execute var_E8, var_108, -1
  loc_17A6D5C: Set var_D0 = var_10C
  loc_17A6D84: If (var_D0.RecordCount > 0) Then
  loc_17A6D8A:   var_D0.MoveFirst
  loc_17A6D92: Else
  loc_17A6DAB:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_130, var_150, var_170)
  loc_17A6DBB:   Exit Sub
  loc_17A6DBC: End If
  loc_17A6DD7: If (Me.ChkNCKOT.Value <> 1) Then
  loc_17A6DDA:   Exit Sub
  loc_17A6DDB: End If
  loc_17A6DE2: var_DC = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_17A6E27: var_88 = CStr(CVar(var_DC & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_17A6E46: var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A6E84: var_8C = CStr(var_130 & Me.Fields.Item("SearchCode").Value & "'")
  loc_17A6EAD: var_130 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A6ECD: var_178 = Me.Fields.Item("SearchCode")
  loc_17A6ED5: var_108 = var_178.Value
  loc_17A6EEA: var_DC = CStr(var_130 & var_108 & "'")
  loc_17A6EF4: unk_5921DC.Execute var_DC, var_188, -1
  loc_17A6EFF: Set var_BC = var_18C
  loc_17A6F23: If (var_88 = vbNullString) Then
  loc_17A6F26:   Exit Sub
  loc_17A6F27: End If
  loc_17A6F2F: If (var_8C = vbNullString) Then
  loc_17A6F32:   Exit Sub
  loc_17A6F33: End If
  loc_17A6F57: Call 0.Method_cmdNCBill_UnknownEvent_90 (CInt(4), var_178, var_DC, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='", var_108)
  loc_17A6F5F: -1 = var_178.Text
  loc_17A6F78: unk_5921DC.Execute var_18C & var_DC & "' AND CONTRADOCID IS NULL", var_18C, Me.Txt
  loc_17A6FAF: If (var_18C.RecordCount = 1) Then
  loc_17A6FB5:   var_C8 = "New Order"
  loc_17A6FBB: Else
  loc_17A6FC2:   Set var_10C = Me.LblState
  loc_17A6FD0:   var_C8 = var_10C.Caption
  loc_17A6FD6: End If
  loc_17A6FEC: unk_5921DC.Execute var_88, var_108, -1
  loc_17A6FF7: Set var_B4 = var_10C
  loc_17A7000: ' Referenced from: 17A8BA1
  loc_17A700F: If Not(var_BC.EOF) Then
  loc_17A7019:   var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A7031:   var_10C = Me.Fields
  loc_17A7041:   var_108 = var_10C.Item("SearchCode").Value
  loc_17A7052:   var_170 = var_130 & var_108 & "' and K.VoidYN<>'Y'" 
  loc_17A7082:   unk_5921DC.Execute CStr(var_170), var_108, -1
  loc_17A708D:   Set var_B8 = var_10C
  loc_17A70AA:   If (var_B8.RecordCount > 0) Then
  loc_17A70DB:     var_19C = Trim(CVar(var_BC.Fields.Item("PrintType"))) 'Variant
  loc_17A70F0:     If Not (var_19C = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_17A70FE:       If (var_19C = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_17A7101:       End If
  loc_17A7103:       Close 1
  loc_17A711C:       var_E0 = "C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition)
  loc_17A712A:       Open var_E0 & ".TXT" For Output As 1 Len = &HFF
  loc_17A713A:       var_B4.MoveFirst
  loc_17A713F:       ' Referenced from: 17A7B96
  loc_17A714E:       If Not(var_B4.EOF) Then
  loc_17A7167:         If (0 = 0) Then
  loc_17A716C:           Print 1
  loc_17A71A0:           var_C0 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_17A71D3:           Call Proc_251_96_10ACF40(Me.LblRest.Caption, "D", &H28, var_E8)
  loc_17A71DD:           Print 1, var_E8
  loc_17A7203:           Call Proc_251_96_10ACF40("* NC Bill *", "D", &H28, var_E0)
  loc_17A720D:           Print 1, var_E0
  loc_17A721C:           var_92 = &H12
  loc_17A7221:           Print 1
  loc_17A7229:           Print 1
  loc_17A7262:           Proc_6_39_E7C810(var_170, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_17A7284:           var_130 = (Chr(&HF) + "V No.     : ")
  loc_17A728E:           var_1AC = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EAD428(CStr(var_170), &HA, var_92)))
  loc_17A7294:           Print 1, var_1AC
  loc_17A72CF:           var_10C = var_B4.Fields
  loc_17A7346:           var_130 = (Chr(&HF) + "Date.     : ")
  loc_17A7350:           var_188 = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C.Item("VDate")), var_10C), &HC)))
  loc_17A7359:           var_1AC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C.Item("VDate")), var_10C), &HC))), &HA, var_92)) + " ")
  loc_17A7363:           var_1E4 = (var_1AC + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_17A7369:           Print 1, var_1E4
  loc_17A73BE:           var_178 = var_B4.Fields.Item("Remarks")
  loc_17A73FB:           var_130 = (Chr(&HF) + "Remarks : ")
  loc_17A7405:           var_188 = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32)))
  loc_17A740C:           var_1C0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_17A7412:           Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_17A744B:           Set var_10C = Me.Label1
  loc_17A7451:           Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_178)
  loc_17A74E6:           var_188 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_17A74EF:           var_1AC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))), &HA, var_92)) + ": ")
  loc_17A74F6:           var_20C = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_17A74F9:           var_21C = (Chr(&H12) + var_20C)
  loc_17A74FF:           Print 1, var_21C
  loc_17A754A:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A7550:           Print 1, CVar(var_178)
  loc_17A755D:         End If
  loc_17A7583:         var_150 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_17A759D:         var_188 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_178)))))
  loc_17A75A9:         var_1AC = Space(3)
  loc_17A75B1:         var_1C0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_178))))), &HA, var_92)) + var_1AC)
  loc_17A75CB:         var_1E4 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_17A75DF:         var_20C = ("000" + Space(3))
  loc_17A75F9:         var_230 = (var_20C + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_17A763F:         var_130 = (Chr(&HF) + CVar(CStr(var_230)))
  loc_17A7645:         Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_17A7668:         var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A766E:         Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_17A7681:         var_92 = (var_92 + 4)
  loc_17A7687:         var_B8.MoveFirst
  loc_17A768C:         ' Referenced from: 17A7993
  loc_17A769B:         If Not(var_B8.EOF) Then
  loc_17A76EB:           Proc_6_39_E7C810(var_1AC, CVar(var_B8.Fields.Item("qty")))
  loc_17A7736:           Proc_6_39_E7C810(var_248, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A7781:           Proc_6_39_E7C810(var_2F0, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_17A77AC:           Proc_6_39_E7C810(var_328, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A77FC:           var_130 = Space(3)
  loc_17A7804:           var_170 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + var_130)
  loc_17A781A:           var_1E4 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1AC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_17A781D:           var_1FC = (1 + var_1E4)
  loc_17A7831:           var_21C = (Space(3) + Space(3))
  loc_17A784A:           var_298 = (var_92 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_248, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", &HA)))))
  loc_17A785E:           var_2B8 = (var_298 + Space(3))
  loc_17A7877:           var_398 = (var_2B8 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_2F0 * var_328), "0.00")), &HA)))
  loc_17A78EC:           var_10C = var_B8.Fields
  loc_17A7903:           Proc_6_39_E7C810(var_130, CVar(var_10C.Item("qty")))
  loc_17A7931:           Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_10C.Item("qty"))))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_17A793D:           var_1AC = (var_10C + (CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_10C.Item("qty")))))))
  loc_17A7942:           var_D8 = CSng(var_1AC)
  loc_17A796F:           var_130 = (Chr(&HF) + CVar(CStr(var_398)))
  loc_17A7975:           Print 1, var_130
  loc_17A7988:           var_92 = (var_92 + 1)
  loc_17A798E:           var_B8.MoveNext
  loc_17A7993:           GoTo loc_17A768C
  loc_17A7996:         End If
  loc_17A79AC:         var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A79B2:         Print 1, var_130
  loc_17A79C4:         Print 1, vbNullString
  loc_17A7A4A:         var_150 = (Chr(&HF) + Space(&H25))
  loc_17A7A54:         var_188 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_45_EAD428("TOTAL  :", 8)))
  loc_17A7A5E:         var_20C = ((CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_10C.Item("qty")))))) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_D8, "0.00"))))), &HB, 1)))
  loc_17A7A64:         Print 1, Space(3)
  loc_17A7A95:         Print 1, vbNullString
  loc_17A7AEF:         var_130 = (Chr(&HF) + "Waiter Name  : ")
  loc_17A7AF9:         var_188 = (Space(&H25) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_17A7AFF:         Print 1, (CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_B4.Fields.Item("qty"))))))
  loc_17A7B20:         Print 1
  loc_17A7B3B:         var_130 = (Chr(&HF) + "A Analysis Software")
  loc_17A7B41:         Print 1, Space(&H25)
  loc_17A7B51:         var_B4.MoveNext
  loc_17A7B58:         Print 1
  loc_17A7B60:         Print 1
  loc_17A7B68:         Print 1
  loc_17A7B70:         Print 1
  loc_17A7B78:         Print 1
  loc_17A7B80:         Print 1
  loc_17A7B88:         Print 1
  loc_17A7B90:         Print 1
  loc_17A7B96:         GoTo loc_17A713F
  loc_17A7B99:       End If
  loc_17A7B9B:       Close 1
  loc_17A7BD6:       If (Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_17A7BFE:         Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A7C5C:         Print 1, CVar("TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_D0.Fields.Item("Printer").Value
  loc_17A7C7C:       Else
  loc_17A7CA6:         Print 1, "TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_17A7CB7:       End If
  loc_17A7CB9:       Close 1
  loc_17A7CC3:       If (MemVar_1F923B8 = "Y") Then
  loc_17A7CF5:         var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_17A7D06:       Else
  loc_17A7D35:         var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_17A7D43:       End If
  loc_17A7D46:     Else
  loc_17A7D51:       If (var_19C = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_17A7D56:         Close 1
  loc_17A7D7D:         Open "C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_17A7D8D:         var_B4.MoveFirst
  loc_17A7D92:         ' Referenced from:   17A8952
  loc_17A7DA1:         If Not(var_B4.EOF) Then
  loc_17A7DB1:           var_90 = "* NC BILL *"
  loc_17A7DE2:           var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_17A7DF1:           If (0 = 0) Then
  loc_17A7DF6:             Print 1
  loc_17A7E25:             var_188 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_17A7E68:             var_268 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_17A7E92:             var_1D4 = (Chr(&HF) + Space(CLng(((CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_D0.Fields.Item("qty")))))) / 2))))
  loc_17A7E99:             var_20C = (CVar(CStr(Format(var_D8, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_17A7EA0:             var_298 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_17A7EA7:             var_2B8 = (var_298 + Chr(&H12))
  loc_17A7EAD:             Print 1, var_2B8
  loc_17A7EFB:             var_170 = (42 - Len(Trim(var_90)))
  loc_17A7F2E:             var_20C = (42 - Len(Trim(var_90)))
  loc_17A7F58:             var_1C0 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_17A7F62:             var_1D4 = (Space(CLng(((CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_D0.Fields.Item("qty")))))) / 2))) + CVar(var_90))
  loc_17A7F69:             var_248 = (CVar(CStr(Format(var_D8, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_17A7F70:             var_278 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_17A7F76:             Print 1, ("0.00" / 2)
  loc_17A7F95:             var_92 = &H12
  loc_17A7F9A:             Print 1
  loc_17A7FA2:             Print 1
  loc_17A7FDB:             Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")), var_92)
  loc_17A800A:             var_130 = (Chr(&HF) + "KOT No.   :   ")
  loc_17A8014:             var_1AC = (Trim(var_90) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_17A801B:             var_1D4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_17A8021:             Print 1, CVar(CStr(Format(var_D8, "0.00")))
  loc_17A80E4:             var_130 = (Chr(&HF) + "KOT Dt.   :   ")
  loc_17A80EE:             var_188 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_92), &HC)))
  loc_17A80F7:             var_1AC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_17A8101:             var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_17A8108:             var_20C = (Trim(var_90) + Chr(&H12))
  loc_17A810E:             Print 1, Space(3)
  loc_17A8167:             var_178 = var_B4.Fields.Item("Remarks")
  loc_17A81A4:             var_130 = (Chr(&HF) + "Remarks :   ")
  loc_17A81AE:             var_188 = (Trim(var_90) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_178)), &H20)))
  loc_17A81B5:             var_1C0 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_17A81BB:             Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_17A81F4:             Set var_10C = Me.Label1
  loc_17A81FA:             Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_178)
  loc_17A829C:             var_188 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA)))
  loc_17A82A5:             var_1AC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":   ")
  loc_17A82AC:             var_20C = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_17A82AF:             var_21C = (Chr(&H12) + var_20C)
  loc_17A82B6:             var_248 = ((Space(3) / 2) + Chr(&H12))
  loc_17A82BC:             Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_17A8318:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A831F:             var_170 = (CVar(var_178) + Chr(&H12))
  loc_17A8325:             Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_178))), &HA))
  loc_17A8336:           End If
  loc_17A835C:           var_150 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_17A8376:           var_188 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))
  loc_17A8382:           var_1AC = Space(3)
  loc_17A838A:           var_1C0 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_1AC)
  loc_17A83A4:           var_1E4 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_17A83ED:           var_130 = (Chr(&HF) + CVar(CStr("000")))
  loc_17A83F4:           var_170 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_17A83FA:           Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_17A842E:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A8435:           var_170 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_17A843B:           Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_17A8452:           var_92 = (var_92 + 4)
  loc_17A8458:           var_B8.MoveFirst
  loc_17A845D:           ' Referenced from:   17A86AF
  loc_17A846C:           If Not(var_B8.EOF) Then
  loc_17A84BC:             Proc_6_39_E7C810(var_1AC, CVar(var_B8.Fields.Item("qty")))
  loc_17A8507:             Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A8549:             var_130 = Space(3)
  loc_17A8551:             var_170 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H13, 1, 1)) + var_130)
  loc_17A856A:             var_1FC = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1AC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))))
  loc_17A857E:             var_21C = (Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000") + Space(3))
  loc_17A8597:             var_298 = (var_92 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_17A8607:             Proc_6_39_E7C810(var_130, CVar(var_B8.Fields.Item("qty")))
  loc_17A8635:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_17A8641:             var_1AC = (var_D8 + (CVar(var_D8) * CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))))
  loc_17A8646:             var_D8 = CSng(var_1AC)
  loc_17A8680:             var_130 = (Chr(&HF) + CVar(CStr(var_298)))
  loc_17A8687:             var_170 = (var_130 + Chr(&H12))
  loc_17A868D:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_17A86A4:             var_92 = (var_92 + 1)
  loc_17A86AA:             var_B8.MoveNext
  loc_17A86AF:             GoTo loc_17A845D
  loc_17A86B2:           End If
  loc_17A86D5:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A86DC:           var_170 = (var_130 + Chr(&H12))
  loc_17A86E2:           Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_17A8769:           var_150 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)))
  loc_17A8773:           var_1E4 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_D8, "0.00"))))), &HB, 1)))
  loc_17A8779:           Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(Format(var_D8, "0.00"))), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))))
  loc_17A87A6:           Print 1, vbNullString
  loc_17A880D:           var_130 = (Chr(&HF) + "Waiter Name  :   ")
  loc_17A8817:           var_188 = (CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_17A881E:           var_1C0 = (Format(var_D8, "0.00") + Chr(&H12))
  loc_17A8824:           Print 1, Trim(CVar(CStr(Format(var_D8, "0.00"))))
  loc_17A886C:           var_188 = Chr(&H12)
  loc_17A8879:           var_130 = (Chr(&HF) + "***  ")
  loc_17A888C:           var_1AC = ("  ***" + var_188)
  loc_17A8896:           Print 1, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_C8) & Chr(&H12)
  loc_17A88AF:           Print 1
  loc_17A88D7:           var_130 = (Chr(&HF) + "** A Analysis Software **")
  loc_17A88DE:           var_170 = (CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) + Chr(&H12))
  loc_17A88E4:           Print 1, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_C8)
  loc_17A88F8:           var_B4.MoveNext
  loc_17A88FF:           Print 1
  loc_17A8907:           Print 1
  loc_17A890F:           Print 1
  loc_17A8917:           Print 1
  loc_17A893D:           var_150 = (Chr(&H1B) + Chr(&H6D))
  loc_17A8943:           Print 1, Chr(&H12)
  loc_17A8952:           GoTo loc_17A7D92
  loc_17A8955:         End If
  loc_17A8957:         Close 1
  loc_17A8992:         If (Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_17A89BA:           Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A8A18:           Print 1, CVar("TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_D0.Fields.Item("Printer").Value
  loc_17A8A38:         Else
  loc_17A8A5D:           Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A8A94:           Print 1, "TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_17A8AA5:         End If
  loc_17A8AA7:         Close 1
  loc_17A8AB1:         If (MemVar_1F923B8 = "Y") Then
  loc_17A8AE3:           var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_17A8AF4:         Else
  loc_17A8B23:           var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_17A8B31:         End If
  loc_17A8B31:       End If
  loc_17A8B31:     End If
  loc_17A8B34:   Else
  loc_17A8B7E:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_C8), var_188, Chr(&H12))
  loc_17A8B99:   End If
  loc_17A8B9C:   var_BC.MoveNext
  loc_17A8BA1:   GoTo loc_17A7000
  loc_17A8BA4: End If
  loc_17A8BA9: Set var_B4 = Nothing
  loc_17A8BB1: Set var_B8 = Nothing
  loc_17A8BB9: Set var_BC = Nothing
  loc_17A8BC1: Set var_D0 = Nothing
  loc_17A8BC4: Exit Sub
  loc_17A8BC5: ' Referenced from: 17A6D04
  loc_17A8BC5: Proc_6_60_E62BC4(var_D8)
  loc_17A8BCA: Exit Sub
End Sub

Public Sub CmdQty_UnknownEvent_9(Index As Integer) '126507C
  'Data Table: 5921C0
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
  loc_1264B0F: var_86 = Index
  loc_1264B18: If Not (var_86 = 0) Then
  loc_1264B21:   If Not (var_86 = 1) Then
  loc_1264B2A:     If Not (var_86 = 2) Then
  loc_1264B33:       If Not (var_86 = 3) Then
  loc_1264B3C:         If Not (var_86 = 4) Then
  loc_1264B45:           If Not (var_86 = 5) Then
  loc_1264B4E:             If Not (var_86 = 6) Then
  loc_1264B57:               If Not (var_86 = 7) Then
  loc_1264B60:                 If Not (var_86 = 8) Then
  loc_1264B69:                   If (var_86 = 9) Then
  loc_1264B6C:                   End If
  loc_1264B6C:                 End If
  loc_1264B6C:               End If
  loc_1264B6C:             End If
  loc_1264B6C:           End If
  loc_1264B6C:         End If
  loc_1264B6C:       End If
  loc_1264B6C:     End If
  loc_1264B6C:   End If
  loc_1264B90:   If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_1264BB2:     Set var_BC = Me.CmdQty
  loc_1264BB8:     Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_1264BC0:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1264BD9:     Me.TxtQty.Text = CStr(var_86)
  loc_1264BF8:   Else
  loc_1264C07:     Me.TxtQty.MaxLength = 5
  loc_1264C2E:     Set var_BC = Me.CmdQty
  loc_1264C34:     Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_1264C3C:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1264C55:     Me.TxtQty.Text = CStr()
  loc_1264C71:   End If
  loc_1264C74: Else
  loc_1264C7A:   If (var_86 = &HA) Then
  loc_1264CA7:     If (InStr(1, CVar(Me.TxtQty), ".", 0) = 0) Then
  loc_1264CC9:       Set var_C0 = Me.TxtQty
  loc_1264CCF:       var_C0.MaxLength = (Me.TxtQty.MaxLength + 1)
  loc_1264CFA:       Set var_BC = Me.CmdQty
  loc_1264D00:       Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_1264D08:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1264D21:       Me.TxtQty.Text = CStr()
  loc_1264D7C:       var_128 = (Len(Left(CVar(Me.TxtQty), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 3)
  loc_1264D8C:       Me.TxtQty.MaxLength = CLng(var_128)
  loc_1264DA5:     End If
  loc_1264DA8:   Else
  loc_1264DB0:     If (var_86 = CInt(&HB)) Then
  loc_1264DC0:       Me.TxtQty.Text = vbNullString
  loc_1264DCB:     Else
  loc_1264DD3:       If (var_86 = CInt(&HD)) Then
  loc_1264DF7:         Set var_C0 = Me.LblIndex
  loc_1264E1E:         If ((Me.LblVtype.Caption = "No.of Person") And (CDbl(Val(var_C0.Caption)) = CDbl(0))) Then
  loc_1264E2D:           Me.FrameGrpItem.Enabled = True
  loc_1264E43:           Me.FGrid.Enabled = True
  loc_1264E88:           Set var_BC = Me.Txt
  loc_1264E8E:           Call 0.Method_CmdQty_UnknownEvent_90 (CInt(&HD), var_C0, CStr(Format(CVar(Me.TxtQty), "0")))
  loc_1264E96:           var_C0.Text = 1
  loc_1264EB3:         Else
  loc_1264EFB:           If ((Me.LblVtype.Caption = "Qty") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1264F02:             Set var_12C = Me.FGrid
  loc_1264F11:             var_98 = CVar(CLng(var_12C.RowSel)) 'Long
  loc_1264F19:             var_13C = CVar(CLng(0)) 'Long
  loc_1264F3E:             If (CStr(var_12C.TextMatrix)) = vbNullString) Then
  loc_1264F41:               Exit Sub
  loc_1264F42:             End If
  loc_1264F67:             If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(2)) Then
  loc_1264F8A:               If (Me.TxtQty.Text = vbNullString) Then
  loc_1264F9A:                 Me.TxtQty.Text = "1"
  loc_1264FA2:               End If
  loc_1264FB5:               var_E4 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1264FBD:               var_14C = CVar(CLng(7)) 'Long
  loc_1264FEA:               var_118 = CVar(CStr(Format(CVar(Me.TxtQty), "0.000"))) 'String
  loc_1264FF1:               LateIdCallSt
  loc_1265009:             End If
  loc_126500B:             Set var_12C = Nothing 
  loc_126500F:           End If
  loc_126500F:         End If
  loc_126501C:         Me.TxtQty.Text = vbNullString
  loc_1265030:         Me.FrameQty.Visible = False
  loc_126503B:       Else
  loc_1265041:         If (var_86 = &HC) Then
  loc_1265050:           Me.FrameQty.Visible = False
  loc_126505B:         Else
  loc_1265063:           If (var_86 = CInt(&HC)) Then
  loc_1265072:             Me.FrameGrpItem.Enabled = True
  loc_126507A:           End If
  loc_126507A:         End If
  loc_126507A:       End If
  loc_126507A:     End If
  loc_126507A:   End If
  loc_126507A: End If
  loc_126507A: Exit Sub
End Sub

Public Function MasterFormExitGet() '594AB8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '594AC7
  MasterFormExit = Value
End Sub

Public Function LocalRestCodeGet() '594AD6
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '594AE5
  LocalRestCode = Value
End Sub

Public Function LocalRestTypeGet() '594AF4
  LocalRestTypeGet = LocalRestType
End Function

Public Sub LocalRestTypePut(Value) '594B03
  LocalRestType = Value
End Sub

Public Function SpecialRateGet() '594B12
  SpecialRateGet = SpecialRate
End Function

Public Sub SpecialRatePut(Value) '594B21
  SpecialRate = Value
End Sub

Public Property Let MsgBoxTouch(vNewValue) 'E01694
  'Data Table: 5921C0
  loc_E0168E: global_268 = vNewValue
  loc_E01691: Exit Sub
End Sub

Public Property Get MsgBoxTouch() 'E08600
  'Data Table: 5921C0
  loc_E085F9: MsgBoxTouch = global_268
End Sub

Public Property Let PTableNo(vNewValue) 'E13C3C
  'Data Table: 5921C0
  loc_E13C34: global_196 = vNewValue
  loc_E13C38: Exit Sub
End Sub

Public Property Get PTableNo() 'E1360C
  'Data Table: 5921C0
  loc_E13600: var_88 = global_196
  loc_E13603: PTableNo = 
End Sub

Public Property Let pRestCode(vNewValue) 'E0EDC4
  'Data Table: 5921C0
  loc_E0EDBC: global_200 = vNewValue
  loc_E0EDC0: Exit Sub
  loc_E0EDC1: CExtInstUnk
End Sub

Public Property Get pRestCode() 'E0ECA4
  'Data Table: 5921C0
  loc_E0EC98: var_88 = global_200
  loc_E0EC9B: pRestCode = 
  loc_E0ECA1: CExtInstUnk
End Sub

Public Property Let OpenType(vNewValue) 'E0EC14
  'Data Table: 5921C0
  loc_E0EC0C: global_192 = vNewValue
  loc_E0EC10: Exit Sub
  loc_E0EC12: ( <> ) = 
End Sub

Public Property Get OpenType() 'E0EBCC
  'Data Table: 5921C0
  loc_E0EBC0: var_88 = global_192
  loc_E0EBC3: OpenType = 
End Sub

Public Property Get OpenMode() 'E087C0
  'Data Table: 5921C0
  loc_E087B9: OpenMode = global_188
End Sub

Public Property Let OpenMode(vNewValue) 'E00CBC
  'Data Table: 5921C0
  loc_E00CB6: global_188 = vNewValue
  loc_E00CB9: Exit Sub
End Sub

Public Property Let TxtKeyBoard(vNewValue) 'E0E9D4
  'Data Table: 5921C0
  loc_E0E9CC: global_208 = vNewValue
  loc_E0E9D0: Exit Sub
End Sub

Public Property Get TxtKeyBoard() 'E0E98C
  'Data Table: 5921C0
  loc_E0E980: var_88 = global_208
  loc_E0E983: TxtKeyBoard = 
  loc_E0E98A: ( <> ) = 
End Sub

Public Property Let PSteward(vNewValue) 'E0E944
  'Data Table: 5921C0
  loc_E0E93C: global_204 = vNewValue
  loc_E0E940: Exit Sub
  loc_E0E942: ( <> ) = 
End Sub

Public Property Get PSteward() 'E0E794
  'Data Table: 5921C0
  loc_E0E788: var_88 = global_204
  loc_E0E78B: PSteward = 
End Sub

Public Sub SEARCHBACK_TransferKOT() 'E7D6BC
  'Data Table: 5921C0
  Dim Me As Recordset15
  loc_E7D654: On Error Goto loc_E7D6B6
  loc_E7D662: Me.Requery -1
  loc_E7D67E: If (Me.RecordCount > 0) Then
  loc_E7D687:   Me.MoveFirst
  loc_E7D68C: End If
  loc_E7D6A8: Proc_5_0_110649C(&HFF, Me)
  loc_E7D6B0: Call Proc_251_87_16D2A60(global_76)
  loc_E7D6B5: Exit Sub
  loc_E7D6B6: ' Referenced from: E7D654
  loc_E7D6B6: Proc_6_60_E62BC4(0)
  loc_E7D6BB: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E93D70
  'Data Table: 5921C0
  Dim Me As Recordset15
  Dim SEARCHBACK82C As Variant
  loc_E93CFE: On Error Goto loc_E93D67
  loc_E93D07: Me.MoveFirst
  loc_E93D31: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93D59: Proc_5_0_110649C(&HFF, Me, global_76)
  loc_E93D61: Call Proc_251_87_16D2A60(0)
  loc_E93D66: Exit Sub
  loc_E93D67: ' Referenced from: E93CFE
  loc_E93D67: Proc_6_60_E62BC4(var_A0)
  loc_E93D6C: Exit Sub
  loc_E93D6D: SEARCHBACK82C =  
End Sub

Public Sub Proc_251_71_127B4F8
  'Data Table: 5921C0
  Dim var_88 As Frame
  Dim MemVar_0 As Currency
  loc_127AF38: Set var_88 = Me.TopCtrl1
  loc_127AF3E: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030016()
  loc_127AF57: Set var_9C = Me.Head
  loc_127AF5D: Call 0.Method_Proc_251_71_127B4F80 (CInt(1), var_A0)
  loc_127AF65: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127AF7E: Set var_88 = Me.TopCtrl1
  loc_127AF84: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030017()
  loc_127AF9D: Set var_9C = Me.Head
  loc_127AFA3: Call 0.Method_Proc_251_71_127B4F80 (CInt(2), var_A0)
  loc_127AFAB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127AFC4: Set var_88 = Me.TopCtrl1
  loc_127AFCA: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030014()
  loc_127AFE3: Set var_9C = Me.Head
  loc_127AFE9: Call 0.Method_Proc_251_71_127B4F80 (CInt(3), var_A0)
  loc_127AFF1: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127B00A: Set var_88 = Me.TopCtrl1
  loc_127B010: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_6803000F()
  loc_127B029: Set var_9C = Me.Head
  loc_127B02F: Call 0.Method_Proc_251_71_127B4F80 (CInt(4), var_A0)
  loc_127B037: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127B050: Set var_88 = Me.TopCtrl1
  loc_127B056: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_6803000D()
  loc_127B06F: Set var_9C = Me.Head
  loc_127B075: Call 0.Method_Proc_251_71_127B4F80 (CInt(5), var_A0)
  loc_127B07D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127B096: Set var_88 = Me.TopCtrl1
  loc_127B09C: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030018()
  loc_127B0B5: Set var_9C = Me.Head
  loc_127B0BB: Call 0.Method_Proc_251_71_127B4F80 (CInt(6), var_A0)
  loc_127B0C3: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127B0DC: Set var_88 = Me.TopCtrl1
  loc_127B0E2: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030016()
  loc_127B0F4: Set var_9C = Me.CmChngToNC
  loc_127B0FA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127B111: Set var_88 = Me.TopCtrl1
  loc_127B117: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030016()
  loc_127B129: Set var_9C = Me.CmTransKOT
  loc_127B12F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(CBool())
  loc_127B146: Set var_88 = Me.TopCtrl1
  loc_127B14C: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_127B165: If (CStr() = "Add") Then
  loc_127B170:   Set var_88 = Me.CmChngSteward
  loc_127B176:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B186:   Set var_88 = Me.CmNoOfPersons
  loc_127B18C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B1A3:   Set var_88 = Me.CmFgrid
  loc_127B1A9:   Call 0.Method_Proc_251_71_127B4F80 (CInt(2), var_9C)
  loc_127B1B1:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B1CC:   Set var_88 = Me.CmFgrid
  loc_127B1D2:   Call 0.Method_Proc_251_71_127B4F80 (CInt(3), var_9C)
  loc_127B1DA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B1F5:   Set var_88 = Me.CmFgrid
  loc_127B1FB:   Call 0.Method_Proc_251_71_127B4F80 (CInt(4), var_9C)
  loc_127B203:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B21E:   Set var_88 = Me.CmFgrid
  loc_127B224:   Call 0.Method_Proc_251_71_127B4F80 (CInt(5), var_9C)
  loc_127B22C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B247:   Set var_88 = Me.CmFgrid
  loc_127B24D:   Call 0.Method_Proc_251_71_127B4F80 (CInt(6), var_9C)
  loc_127B255:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B26D:   Me.FrameGrpItem.Enabled = True
  loc_127B278: Else
  loc_127B27C:   Set var_88 = Me.TopCtrl1
  loc_127B282:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_127B29B:   If (CStr() = "Edit") Then
  loc_127B2A7:     Set var_88 = Me.CmChngSteward
  loc_127B2AD:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B2BE:     Set var_88 = Me.CmNoOfPersons
  loc_127B2C4:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B2DB:     Set var_88 = Me.CmFgrid
  loc_127B2E1:     Call 0.Method_Proc_251_71_127B4F80 (CInt(2), var_9C)
  loc_127B2E9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B305:     Set var_88 = Me.CmFgrid
  loc_127B30B:     Call 0.Method_Proc_251_71_127B4F80 (CInt(3), var_9C)
  loc_127B313:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B32E:     Set var_88 = Me.CmFgrid
  loc_127B334:     Call 0.Method_Proc_251_71_127B4F80 (CInt(4), var_9C)
  loc_127B33C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B357:     Set var_88 = Me.CmFgrid
  loc_127B35D:     Call 0.Method_Proc_251_71_127B4F80 (CInt(5), var_9C)
  loc_127B365:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B380:     Set var_88 = Me.CmFgrid
  loc_127B386:     Call 0.Method_Proc_251_71_127B4F80 (CInt(6), var_9C)
  loc_127B38E:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_127B3A6:     Me.FrameGrpItem.Enabled = True
  loc_127B3B1:   Else
  loc_127B3B5:     Set var_88 = Me.TopCtrl1
  loc_127B3BB:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_127B3D4:     If (CStr() = "Browse") Then
  loc_127B3E0:       Set var_88 = Me.CmChngSteward
  loc_127B3E6:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B3F7:       Set var_88 = Me.CmNoOfPersons
  loc_127B3FD:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B415:       Set var_88 = Me.CmFgrid
  loc_127B41B:       Call 0.Method_Proc_251_71_127B4F80 (CInt(2), var_9C)
  loc_127B423:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B43F:       Set var_88 = Me.CmFgrid
  loc_127B445:       Call 0.Method_Proc_251_71_127B4F80 (CInt(3), var_9C)
  loc_127B44D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B469:       Set var_88 = Me.CmFgrid
  loc_127B46F:       Call 0.Method_Proc_251_71_127B4F80 (CInt(4), var_9C)
  loc_127B477:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B493:       Set var_88 = Me.CmFgrid
  loc_127B499:       Call 0.Method_Proc_251_71_127B4F80 (CInt(5), var_9C)
  loc_127B4A1:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B4BD:       Set var_88 = Me.CmFgrid
  loc_127B4C3:       Call 0.Method_Proc_251_71_127B4F80 (CInt(6), var_9C)
  loc_127B4CB:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_127B4E3:       Me.FrameGrpItem.Enabled = False
  loc_127B4F0:       Call CmdCatType_UnknownEvent_9()
  loc_127B4F5:     End If
  loc_127B4F5:   End If
  loc_127B4F5: End If
  loc_127B4F5: Exit Sub
  loc_127B4F6: MemVar_0 = 0
End Sub

Public Sub Proc_251_72_EF2B28
  'Data Table: 5921C0
  Dim var_BC As Boolean
  loc_EF2A61: For var_9C = 1 To CInt(Me.UBound): var_86 = var_9C 'Integer
  loc_EF2A67:   var_BC = False
  loc_EF2A80:   ).Visible = var_86
  loc_EF2AA7:   Me..FrameGrpItem.Unload )
  loc_EF2AB5: Next var_9C 'Integer
  loc_EF2ACB: For var_D4 = 1 To CInt(Me.UBound): var_86 = var_D4 'Integer
  loc_EF2AD1:   var_BC = False
  loc_EF2AEA:   ).Visible = var_86
  loc_EF2B11:   Me..FrameGrpItem.Unload )
  loc_EF2B1F: Next var_D4 'Integer
  loc_EF2B24: Exit Sub
End Sub

Public Sub Proc_251_73_EEDC7C
  'Data Table: 5921C0
  Dim var_BC As Boolean
  loc_EEDBB9: For var_9C = 1 To CInt(Me.UBound): var_86 = var_9C 'Integer
  loc_EEDBBF:   var_BC = True
  loc_EEDBD7:   ).Visible = var_86
  loc_EEDBFE:   Me..FrameGrpItem.Unload )
  loc_EEDC0C: Next var_9C 'Integer
  loc_EEDC22: For var_D4 = 1 To CInt(Me.UBound): var_86 = var_D4 'Integer
  loc_EEDC28:   var_BC = True
  loc_EEDC40:   ).Visible = var_86
  loc_EEDC67:   Me..FrameGrpItem.Unload )
  loc_EEDC75: Next var_D4 'Integer
  loc_EEDC7A: Exit Sub
End Sub

Public Sub Proc_251_74_1272B34
  'Data Table: 5921C0
  Dim var_94 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  loc_127259A: Me.FGrid.Left = CVar(CDbl(0))
  loc_12725B5: Me.FGrid.Top = CVar(CDbl(1500))
  loc_12725D0: Me.FGrid.Height = CVar(CDbl(6300))
  loc_12725EB: Me.FGrid.Width = CVar(CDbl(7200))
  loc_1272611: Me.FrameGrpItem.Top = CDbl(Me.FGrid.Top)
  loc_127265C: Me.FrameGrpItem.Left = ((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width)) + CDbl(1050))
  loc_1272680: Me.FrameQty.Top = CDbl(7500)
  loc_12726BF: Me.FrameQty.Left = (CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width))
  loc_12726DC: global_104 = &H258
  loc_12726F2: Me.FGrid.Cols = &HE
  loc_12726FA: var_94 = CVar(CLng(0)) 'Long
  loc_12726FF: var_E4 = &H13B
  loc_127270B: LateIdCallSt
  loc_1272713: var_94 = 0
  loc_127271F: var_E4 = CVar(CLng(1)) 'Long
  loc_1272724: var_104 = "Rest"
  loc_127272D: LateIdCallSt
  loc_1272738: var_94 = CVar(CLng(1)) 'Long
  loc_1272743: var_E4 = CVar(CInt(1)) 'Integer
  loc_127274A: LateIdCallSt
  loc_1272755: var_94 = CVar(CLng(1)) 'Long
  loc_127275A: var_E4 = 0
  loc_1272766: LateIdCallSt
  loc_127276E: var_94 = 0
  loc_127277A: var_E4 = CVar(CLng(2)) 'Long
  loc_127277F: var_104 = "Rest."
  loc_1272788: LateIdCallSt
  loc_1272793: var_94 = CVar(CLng(2)) 'Long
  loc_127279E: var_E4 = CVar(CInt(1)) 'Integer
  loc_12727A5: LateIdCallSt
  loc_12727B0: var_94 = CVar(CLng(2)) 'Long
  loc_12727B5: var_E4 = 0
  loc_12727C1: LateIdCallSt
  loc_12727C9: var_94 = 0
  loc_12727D5: var_E4 = CVar(CLng(3)) 'Long
  loc_12727DA: var_104 = "Code"
  loc_12727E3: LateIdCallSt
  loc_12727EE: var_94 = CVar(CLng(3)) 'Long
  loc_12727F9: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272800: LateIdCallSt
  loc_127280B: var_94 = CVar(CLng(3)) 'Long
  loc_1272810: var_E4 = 0
  loc_127281C: LateIdCallSt
  loc_1272824: var_94 = 0
  loc_1272830: var_E4 = CVar(CLng(4)) 'Long
  loc_1272835: var_104 = "Item Name"
  loc_127283E: LateIdCallSt
  loc_1272849: var_94 = CVar(CLng(4)) 'Long
  loc_1272854: var_E4 = CVar(CInt(1)) 'Integer
  loc_127285B: LateIdCallSt
  loc_1272866: var_94 = CVar(CLng(4)) 'Long
  loc_127286B: var_E4 = &H960
  loc_1272877: LateIdCallSt
  loc_127287F: var_94 = 0
  loc_127288B: var_E4 = CVar(CLng(5)) 'Long
  loc_1272890: var_104 = "Unit"
  loc_1272899: LateIdCallSt
  loc_12728A4: var_94 = CVar(CLng(5)) 'Long
  loc_12728AF: var_E4 = CVar(CInt(1)) 'Integer
  loc_12728B6: LateIdCallSt
  loc_12728C1: var_94 = CVar(CLng(5)) 'Long
  loc_12728C6: var_E4 = &H320
  loc_12728D2: LateIdCallSt
  loc_12728DA: var_94 = 0
  loc_12728E6: var_E4 = CVar(CLng(6)) 'Long
  loc_12728EB: var_104 = "Description"
  loc_12728F4: LateIdCallSt
  loc_12728FF: var_94 = CVar(CLng(6)) 'Long
  loc_127290A: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272911: LateIdCallSt
  loc_127291C: var_94 = CVar(CLng(6)) 'Long
  loc_1272927: var_E4 = CVar(CInt(1)) 'Integer
  loc_127292E: LateIdCallSt
  loc_1272939: var_94 = CVar(CLng(6)) 'Long
  loc_127293E: var_E4 = &H44C
  loc_127294A: LateIdCallSt
  loc_1272952: var_94 = 0
  loc_127295E: var_E4 = CVar(CLng(7)) 'Long
  loc_1272963: var_104 = "Qty"
  loc_127296C: LateIdCallSt
  loc_1272977: var_94 = CVar(CLng(7)) 'Long
  loc_1272982: var_E4 = CVar(CInt(7)) 'Integer
  loc_1272989: LateIdCallSt
  loc_1272994: var_94 = CVar(CLng(7)) 'Long
  loc_127299F: var_E4 = CVar(CInt(7)) 'Integer
  loc_12729A6: LateIdCallSt
  loc_12729B1: var_94 = CVar(CLng(7)) 'Long
  loc_12729B6: var_E4 = &H320
  loc_12729C2: LateIdCallSt
  loc_12729CA: var_94 = 0
  loc_12729D6: var_E4 = CVar(CLng(8)) 'Long
  loc_12729DB: var_104 = "Rate"
  loc_12729E4: LateIdCallSt
  loc_12729EF: var_94 = CVar(CLng(8)) 'Long
  loc_12729FA: var_E4 = CVar(CInt(7)) 'Integer
  loc_1272A01: LateIdCallSt
  loc_1272A0C: var_94 = CVar(CLng(8)) 'Long
  loc_1272A17: var_E4 = CVar(CInt(7)) 'Integer
  loc_1272A1E: LateIdCallSt
  loc_1272A29: var_94 = CVar(CLng(8)) 'Long
  loc_1272A2E: var_E4 = &H320
  loc_1272A3A: LateIdCallSt
  loc_1272A42: var_94 = 0
  loc_1272A4E: var_E4 = CVar(CLng(9)) 'Long
  loc_1272A53: var_104 = "Status"
  loc_1272A5C: LateIdCallSt
  loc_1272A67: var_94 = CVar(CLng(9)) 'Long
  loc_1272A72: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272A79: LateIdCallSt
  loc_1272A84: var_94 = CVar(CLng(9)) 'Long
  loc_1272A8F: var_E4 = CVar(CInt(1)) 'Integer
  loc_1272A96: LateIdCallSt
  loc_1272AA1: var_94 = CVar(CLng(9)) 'Long
  loc_1272AA6: var_E4 = &H2BC
  loc_1272AB2: LateIdCallSt
  loc_1272ABD: var_94 = CVar(CLng(&HA)) 'Long
  loc_1272AC2: var_E4 = 0
  loc_1272ACE: LateIdCallSt
  loc_1272AD9: var_94 = CVar(CLng(&HB)) 'Long
  loc_1272ADE: var_E4 = 0
  loc_1272AEA: LateIdCallSt
  loc_1272AF5: var_94 = CVar(CLng(&HC)) 'Long
  loc_1272AFA: var_E4 = 0
  loc_1272B06: LateIdCallSt
  loc_1272B11: var_94 = CVar(CLng(&HD)) 'Long
  loc_1272B16: var_E4 = 0
  loc_1272B22: LateIdCallSt
  loc_1272B2C: Set var_D4 = Nothing 
  loc_1272B30: Exit Sub
End Sub

Public Sub Proc_251_75_10564DC
  'Data Table: 5921C0
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_105626F: Me.LblPendingKot.Left = CDbl(8280)
  loc_1056286: Me.LblPendingKot.Top = CDbl(6630)
  loc_10562A1: Me.FGrid1.Left = CVar(CDbl(8280))
  loc_10562BC: Me.FGrid1.Top = CVar(CDbl(6960))
  loc_10562D7: Me.FGrid1.Height = CVar(CDbl(5750))
  loc_10562F2: Me.FGrid1.Width = CVar(CDbl(5100))
  loc_10562FE: Set var_AC = Me.FGrid1
  loc_1056315: global_244 = CStr(CLng(var_AC.BackColor))
  loc_105632B: var_AC.Cols = 5
  loc_1056333: var_98 = CVar(CLng(0)) 'Long
  loc_1056338: var_D0 = &H12C
  loc_1056344: LateIdCallSt
  loc_105634C: var_98 = 0
  loc_1056358: var_D0 = CVar(CLng(1)) 'Long
  loc_105635D: var_F0 = "KotNo"
  loc_1056366: LateIdCallSt
  loc_1056371: var_98 = CVar(CLng(1)) 'Long
  loc_105637C: var_D0 = CVar(CInt(1)) 'Integer
  loc_1056383: LateIdCallSt
  loc_105638E: var_98 = CVar(CLng(1)) 'Long
  loc_1056393: var_D0 = &H28A
  loc_105639F: LateIdCallSt
  loc_10563A7: var_98 = 0
  loc_10563B3: var_D0 = CVar(CLng(2)) 'Long
  loc_10563B8: var_F0 = "Time"
  loc_10563C1: LateIdCallSt
  loc_10563CC: var_98 = CVar(CLng(2)) 'Long
  loc_10563D7: var_D0 = CVar(CInt(1)) 'Integer
  loc_10563DE: LateIdCallSt
  loc_10563E9: var_98 = CVar(CLng(2)) 'Long
  loc_10563EE: var_D0 = &H258
  loc_10563FA: LateIdCallSt
  loc_1056402: var_98 = 0
  loc_105640E: var_D0 = CVar(CLng(3)) 'Long
  loc_1056413: var_F0 = "Item Name"
  loc_105641C: LateIdCallSt
  loc_1056427: var_98 = CVar(CLng(3)) 'Long
  loc_1056432: var_D0 = CVar(CInt(1)) 'Integer
  loc_1056439: LateIdCallSt
  loc_1056444: var_98 = CVar(CLng(3)) 'Long
  loc_1056449: var_D0 = &H9C4
  loc_1056455: LateIdCallSt
  loc_105645D: var_98 = 0
  loc_1056469: var_D0 = CVar(CLng(4)) 'Long
  loc_105646E: var_F0 = "Qty"
  loc_1056477: LateIdCallSt
  loc_1056482: var_98 = CVar(CLng(4)) 'Long
  loc_105648D: var_D0 = CVar(CInt(7)) 'Integer
  loc_1056494: LateIdCallSt
  loc_105649F: var_98 = CVar(CLng(4)) 'Long
  loc_10564AA: var_D0 = CVar(CInt(7)) 'Integer
  loc_10564B1: LateIdCallSt
  loc_10564BC: var_98 = CVar(CLng(4)) 'Long
  loc_10564C1: var_D0 = &H2BC
  loc_10564CD: LateIdCallSt
  loc_10564D7: Set var_AC = Nothing 
  loc_10564DB: Exit Sub
End Sub

Public Sub Proc_251_76_119BF94
  'Data Table: 5921C0
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim var_C0 As String
  Dim unk_5921DC As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_FC As Variant
  Dim var_100 As TextBox
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_B8 As String
  Dim var_13C As Variant
  Dim var_A8 As Variant
  Dim var_14C As Variant
  Dim var_EC As Variant
  Dim var_15C As Variant
  loc_119BBBB: Me.FGrid1.Redraw = False
  loc_119BBD6: Me.FGrid1.Rows = 1
  loc_119BBE3: global_264 = 1
  loc_119BBFD: var_B0 = "select *,K.Vno as KotNo,K.VTime as KotTime,M.name as ItemName,k.qty as ItemQty from (Kot k left join itemmast M on k.item=M.code And M.restcode=k.itemrestcode) where K.PENDING IN('Y')AND VOIDYN NOT IN('Y')And K.RestCode='" & LocalRestCode
  loc_119BC15: Set var_AC = Me.Txt
  loc_119BC1B: Call 0.Method_Proc_251_76_119BF940 (CInt(4), var_B4, var_B8, var_B0 & "' and (k.DelFlag<>'Y' or k.DelFlag Is NULL) And NCKOT<>'Y' AND K.RoomNo = '")
  loc_119BC23: var_D4 = var_B4.Text
  loc_119BC2C: var_C0 = -1 & var_B8
  loc_119BC3C: unk_5921DC.Execute var_C0 & "' order by K.Vno ", var_D8, global_264
  loc_119BC47: Set var_88 = var_D8
  loc_119BC77: If (var_88.RecordCount = 0) Then
  loc_119BC89:   Me.FGrid1.Visible = False
  loc_119BC9D:   Me.LblPendingKot.Visible = False
  loc_119BCA8: Else
  loc_119BCB6:   Me.FGrid1.Visible = True
  loc_119BCCA:   Me.LblPendingKot.Visible = True
  loc_119BCE0:   Set var_AC = Me.Label1
  loc_119BCE6:   Call 0.Method_Proc_251_76_119BF940 (2, var_B4)
  loc_119BCFD:   var_FC = ("Running Item For The " + Trim(CVar(var_B4)))
  loc_119BD0F:   Set var_D8 = Me.Txt
  loc_119BD15:   Call 0.Method_Proc_251_76_119BF940 (CInt(4), var_100)
  loc_119BD28:   var_120 = (var_FC + CVar(var_100.Text))
  loc_119BD3A:   Me.LblPendingKot.Caption = CStr(var_120)
  loc_119BD5A:   ' Referenced from:   119BF51
  loc_119BD69:   If Not(var_88.EOF) Then
  loc_119BD73:     var_98 = vbNullString
  loc_119BD8B:     var_98 = CVar(CLng(global_264)) 'Long
  loc_119BD93:     var_13C = CVar(CLng(0)) 'Long
  loc_119BDA0:     var_D4 = CVar(CStr(global_264)) 'String
  loc_119BDA7:     LateIdCallSt
  loc_119BDB9:     var_A8 = CVar(CLng(global_264)) 'Long
  loc_119BDC1:     var_14C = CVar(CLng(1)) 'Long
  loc_119BDF1:     var_EC = CVar(CStr(var_88.Fields.Item("KOTNo").Value)) 'String
  loc_119BDF8:     LateIdCallSt
  loc_119BE15:     var_A8 = CVar(CLng(global_264)) 'Long
  loc_119BE1D:     var_14C = CVar(CLng(2)) 'Long
  loc_119BE4D:     var_EC = CVar(CStr(var_88.Fields.Item("KotTime").Value)) 'String
  loc_119BE54:     LateIdCallSt
  loc_119BEA6:     var_EC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(3)), CVar(CLng(global_264)), Me.FGrid1, var_EC, CVar(CLng(3)), CVar(CLng(global_264)))) 'String
  loc_119BEAD:     LateIdCallSt
  loc_119BEE2:     var_13C = CVar(CLng(global_264)) 'Long
  loc_119BEEA:     var_15C = CVar(CLng(4)) 'Long
  loc_119BF17:     var_110 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemQty")), "0.00"))) 'String
  loc_119BF1E:     LateIdCallSt
  loc_119BF36:     Set var_12C = Nothing 
  loc_119BF46:     global_264 = (global_264 + 1)
  loc_119BF4C:     var_88.MoveNext
  loc_119BF51:     GoTo loc_119BD5A
  loc_119BF54:   End If
  loc_119BF67:   Me.FGrid1.FixedRows = 1
  loc_119BF6F: End If
  loc_119BF7D: Me.FGrid1.Redraw = True
  loc_119BF8A: Set var_88 = Nothing
  loc_119BF8D: Call Proc_251_75_10564DC(global_264, var_12C, var_110, 1, 1, var_15C, var_13C)
  loc_119BF92: Exit Sub
End Sub

Public Sub Proc_251_77_1901C28
  'Data Table: 5921C0
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
  Dim unk_5921DC As Connection15
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
  loc_18FF1F0: On Error Goto loc_1901C1A
  loc_18FF1F6: MemVar_1F923C0 = "N"
  loc_18FF1FD: MemVar_1F923C4 = "N"
  loc_18FF204: MemVar_1F923C8 = "K"
  loc_18FF223: If (Me.ChkNCKOT.Value <> 1) Then
  loc_18FF22B:   Proc_251_77_1901C28 = 0
  loc_18FF231: End If
  loc_18FF238: var_F0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_18FF27D: var_8C = CStr(CVar(var_F0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_18FF29C: var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_18FF2BC: var_104 = Me.Fields.Item("SearchCode")
  loc_18FF2DA: var_90 = CStr(var_124 & var_104.Value & "'")
  loc_18FF2F7: If (var_8C = vbNullString) Then
  loc_18FF2FF:   Proc_251_77_1901C28 = 0
  loc_18FF305: End If
  loc_18FF30D: If (var_90 = vbNullString) Then
  loc_18FF315:   Proc_251_77_1901C28 = 0
  loc_18FF31B: End If
  loc_18FF339: Set var_E8 = Me.Txt
  loc_18FF33F: Call 0.Method_Proc_251_77_1901C280 (CInt(4), var_104, var_F0, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_18FF347: var_114 = var_104.Text
  loc_18FF350: var_158 = -1 & var_F0
  loc_18FF360: unk_5921DC.Execute var_158 & "' AND CONTRADOCID IS NULL", var_160, 
  loc_18FF389: var_144 = 0
  loc_18FF3B9: unk_5921DC.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_114, -1
  loc_18FF3C9: var_144 = var_104.Item(var_104)
  loc_18FF3D1: var_160 = var_160.Value
  loc_18FF3DE: var_D4 = Proc_6_38_E68A98(var_124)
  loc_18FF40C: var_F0 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_18FF41C: unk_5921DC.Execute var_F0 & "MK'", var_114, -1
  loc_18FF427: Set var_C0 = var_E8.Fields
  loc_18FF44B: If (var_160.RecordCount = 1) Then
  loc_18FF451:   var_CC = "New Order"
  loc_18FF457: Else
  loc_18FF45E:   Set var_E8 = Me.LblState
  loc_18FF46C:   var_CC = var_E8.Caption
  loc_18FF472: End If
  loc_18FF488: unk_5921DC.Execute var_8C, var_114, -1
  loc_18FF493: Set var_B8 = var_E8
  loc_18FF49C: ' Referenced from: 1901BE4
  loc_18FF4AB: If Not(var_C0.EOF) Then
  loc_18FF4C4:   unk_5921DC.Execute "SELECT KOTPrinting FROM Enviro", var_114, -1
  loc_18FF4CF:   Set var_D0 = var_E8
  loc_18FF4DF:   var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_18FF4F7:   var_E8 = Me.Fields
  loc_18FF507:   var_114 = var_E8.Item("SearchCode").Value
  loc_18FF548:   unk_5921DC.Execute CStr(var_124 & var_114 & "' and K.VoidYN<>'Y'"), var_114, -1
  loc_18FF553:   Set var_BC = var_E8
  loc_18FF570:   If (var_BC.RecordCount > 0) Then
  loc_18FF582:     var_E8 = var_C0.Fields
  loc_18FF5A1:     var_174 = Trim(CVar(var_E8.Item("PrintType"))) 'Variant
  loc_18FF5B6:     If (var_174 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_18FF5C6:       Call Proc_251_84_EFA11C(New, var_E8, var_E8, var_E8)
  loc_18FF5CE:       Set var_D8 = var_E8
  loc_18FF5D4:       Me.Recordset15.MoveFirst
  loc_18FF5D9:       ' Referenced from: 1900253
  loc_18FF5E8:       If Not(var_B8.EOF) Then
  loc_18FF601:         If (0 = 0) Then
  loc_18FF622:           Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString, 1)
  loc_18FF65E:           var_C4 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_18FF695:           var_124 = CVar(Me.LblRest.Caption) 'String
  loc_18FF698:           var_134 = (Space(1) + var_124)
  loc_18FF6AD:           Call Proc_251_85_F13DD4(var_D8, vbNullString, CStr(var_124 & Space(1)), vbNullString)
  loc_18FF6DF:           Call Proc_251_85_F13DD4(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_18FF6ED:           var_96 = &H12
  loc_18FF70E:           Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString, var_96)
  loc_18FF73A:           Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF757:           var_E8 = var_B8.Fields
  loc_18FF76E:           Proc_6_39_E7C810(var_124, CVar(var_E8.Item("VNo")), var_96)
  loc_18FF7AB:           Call Proc_251_85_F13DD4(var_D8, vbNullString, " V No.     : " & Proc_6_45_EAD428(CStr(var_124), &HA, var_E8))
  loc_18FF7D8:           var_E8 = var_B8.Fields
  loc_18FF87B:           Call Proc_251_85_F13DD4(var_D8, vbNullString, " Date.     : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")), var_E8), 8))
  loc_18FF8C2:           var_104 = var_B8.Fields.Item("Remarks")
  loc_18FF90D:           Call Proc_251_85_F13DD4(var_D8, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104), vbNullString), &H1E))
  loc_18FF93F:           Set var_E8 = Me.Label1
  loc_18FF945:           Call 0.Method_Proc_251_77_1901C280 (2, var_104)
  loc_18FF9CE:           var_190 = Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_18FF9D4:           var_17C = vbNullString
  loc_18FF9E3:           var_1B4 = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_18FF9EC:           var_1C4 = (var_1B4 + ": ")
  loc_18FF9F6:           var_234 = (var_1C4 + CVar(var_190))
  loc_18FFA0B:           Call Proc_251_85_F13DD4(var_D8, vbNullString, CStr(var_234))
  loc_18FFA5D:           Call Proc_251_85_F13DD4(var_D8, vbNullString, var_C4, vbNullString)
  loc_18FFA69:         End If
  loc_18FFA8F:         var_134 = (var_17C + CVar(Proc_6_45_EAD428("ITEM NAME", &H12, Space(1))))
  loc_18FFAA3:         var_1B4 = (Trim(CVar(var_104)) + Space(1))
  loc_18FFABD:         var_1D4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 3, var_1B4)))
  loc_18FFAC9:         var_1E4 = Space(1)
  loc_18FFAD1:         var_204 = (CVar(var_B8.Fields.Item("TableNo")) + var_1E4)
  loc_18FFAEB:         var_224 = ("000" + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_18FFAFF:         var_248 = (CVar(var_190) + Space(1))
  loc_18FFB19:         var_26C = (var_248 + CVar(Proc_6_52_EAD4F4("Amount", 7)))
  loc_18FFB50:         var_158 = vbNullString
  loc_18FFB65:         Call Proc_251_85_F13DD4(var_D8, vbNullString, CStr(var_26C))
  loc_18FFB74:         var_158 = vbNullString
  loc_18FFB89:         Call Proc_251_85_F13DD4(var_D8, vbNullString, var_C4)
  loc_18FFB9B:         var_96 = (var_96 + 4)
  loc_18FFBA1:         var_BC.MoveFirst
  loc_18FFBA6:         ' Referenced from: 18FFEC0
  loc_18FFBB5:         If Not(var_BC.EOF) Then
  loc_18FFBDA:           var_124 = var_BC.Fields.Item("ItemName").Value
  loc_18FFC05:           Proc_6_39_E7C810(var_1E4, CVar(var_BC.Fields.Item("qty")), var_96)
  loc_18FFC2D:           var_280 = "Rate"
  loc_18FFC50:           Proc_6_39_E7C810(var_294, CVar(var_BC.Fields.Item(var_280)), 1, 1)
  loc_18FFC5F:           var_2A4 = "0.00"
  loc_18FFC9B:           Proc_6_39_E7C810(var_33C, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_18FFCC6:           Proc_6_39_E7C810(var_374, CVar(var_BC.Fields.Item("Rate")), var_158)
  loc_18FFD1E:           var_154 = (1 + CVar(Proc_6_45_EAD428(CStr(var_124), &H12, Space(1), 1)))
  loc_18FFD32:           var_1C4 = (Space(1) + Space(1))
  loc_18FFD4B:           var_234 = (var_158 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E4, "0")), 3, CVar(Proc_6_52_EAD4F4("Qty", 3, Space(1))))))
  loc_18FFD5F:           var_25C = (Space(1) + Space(1))
  loc_18FFD78:           var_2E4 = (CVar(Proc_6_52_EAD4F4("Amount", 7)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_294, var_2A4)), 6)))
  loc_18FFD8C:           var_304 = (var_2E4 + Space(1))
  loc_18FFDA5:           var_3E4 = (var_304 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_33C * var_374), "0.00")), 7)))
  loc_18FFE0B:           var_1F4 = CVar(var_E4) 'Double
  loc_18FFE35:           Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_18FFE63:           Proc_6_39_E7C810(Space(1), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_18FFE6F:           var_1C4 = (var_124 + (var_1F4 * Space(1)))
  loc_18FFE74:           var_E4 = CSng(CVar(Proc_6_52_EAD4F4("Qty", 3, (var_1F4 * Space(1)))))
  loc_18FFE8E:           var_158 = vbNullString
  loc_18FFEA3:           Call Proc_251_85_F13DD4(var_D8, vbNullString, CStr(var_3E4))
  loc_18FFEB5:           var_96 = (var_96 + 1)
  loc_18FFEBB:           var_BC.MoveNext
  loc_18FFEC0:           GoTo loc_18FFBA6
  loc_18FFEC3:         End If
  loc_18FFEDB:         Call Proc_251_85_F13DD4(var_D8, vbNullString, var_C4, vbNullString)
  loc_18FFF05:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FFF40:         var_144 = "0.00"
  loc_18FFF45:         var_154 = var_144
  loc_18FFF92:         var_134 = (Space(&H16) + CVar(Proc_6_45_EAD428("TOTAL  :", 8, var_96)))
  loc_18FFF9C:         var_204 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, var_154))))), 8, 1)))
  loc_18FFFB1:         Call Proc_251_85_F13DD4(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_18FFFFC:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_190000D:         var_100 = "WaiterName"
  loc_190004C:         var_17C = vbNullString
  loc_190006C:         Call Proc_251_85_F13DD4(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_100)), 1), &H14))
  loc_19000A6:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19000DB:         Call Proc_251_85_F13DD4(var_D8, vbNullString, " ** " & MemVar_1F9221C & " **", vbNullString)
  loc_19000EE:         var_B8.MoveNext
  loc_1900111:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_190013D:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1900169:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1900195:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19001C1:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_19001ED:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1900219:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1900245:         Call Proc_251_85_F13DD4(var_D8, vbNullString, vbNullString, vbNullString)
  loc_1900253:         GoTo loc_18FF5D9
  loc_1900256:       End If
  loc_1900259:       var_DC = "WinKOTPrint"
  loc_1900280:       Set var_E8 = var_D8 
  loc_1900287:       CreateFieldDefFile(var_E8, MemVar_1F920B4 & "\" & var_DC & ".ttx", &HFF)
  loc_19002B9:       var_158 = MemVar_1F920B4 & "\" & var_DC
  loc_19002C0:       var_15C = var_158 & ".RPT"
  loc_19002C9:       Call 0.Method_arg_1C (var_15C, var_100, var_E8)
  loc_19002D4:       MemVar_1F921E4 = var_E8
  loc_19002FD:       Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_144, var_1F4)
  loc_1900305:       Call 0.Method_arg_2C (var_17C, var_158)
  loc_1900315:       If (var_D4 <> vbNullString) Then
  loc_1900336:         If CBool(Ucase(var_D4) <> "PRN") Then
  loc_190033C:           Call Proc_251_82_F0E678(var_D4)
  loc_1900341:         End If
  loc_1900341:       End If
  loc_190035E:       Call 0.Method_Me8 (False, 1, var_1F4)
  loc_1900368:       Set var_D8 = Nothing
  loc_190036E:     Else
  loc_1900379:       If Not (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1900387:         If (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_190038A:         End If
  loc_190038C:         Close 1
  loc_1900395:         Open "C:\reptmp\NCBILL_C.TXT" For Output As 1 Len = &HFF
  loc_190039C:         var_B8.MoveFirst
  loc_19003A1:         ' Referenced from:   1900E3F
  loc_19003B0:         If Not(var_B8.EOF) Then
  loc_19003B5:           var_96 = 0
  loc_19003C9:           If (var_96 = 0) Then
  loc_19003CE:             Print 1
  loc_1900402:             var_C4 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_1900449:             Call Proc_251_96_10ACF40(Proc_6_45_EAD428(Me.LblRest.Caption, &H14, 1, var_96), "D", &H28, var_17C)
  loc_1900453:             Print 1, var_17C
  loc_1900491:             Call Proc_251_96_10ACF40(Proc_6_45_EAD428("* NC Bill *", &H14, var_280), "D", &H28)
  loc_190049B:             Print 1, var_15C
  loc_19004B3:             Print 1
  loc_19004BB:             Print 1
  loc_19004F4:             Proc_6_39_E7C810(var_154, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1900516:             var_124 = (Chr(&HF) + "V No.     :   ")
  loc_1900520:             var_1C4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(CStr(var_154), &HA, var_15C)))
  loc_1900526:             Print 1, CVar(CStr(Format(var_E4, var_154)))
  loc_19005D8:             var_124 = (Chr(&HF) + "Date.     :   ")
  loc_19005E2:             var_1B4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC)))
  loc_19005EB:             var_1C4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))), &HA, Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4))) + " ")
  loc_19005F5:             var_204 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_19005FB:             Print 1, "0"
  loc_1900650:             var_104 = var_B8.Fields.Item("Remarks")
  loc_190068D:             var_124 = (Chr(&HF) + "Remarks :   ")
  loc_1900697:             var_1B4 = (CVar(Proc_6_45_EAD428("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32)))
  loc_190069E:             var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H32))) + Chr(&H12))
  loc_19006A4:             Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_19006DD:             Set var_E8 = Me.Label1
  loc_19006E3:             Call 0.Method_Proc_251_77_1901C280 (2, var_104)
  loc_1900778:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_1900781:             var_1C4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))) + ":   ")
  loc_1900788:             var_224 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_190078B:             var_234 = (Chr(&H12) + var_224)
  loc_1900791:             Print 1, Space(1)
  loc_19007DC:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_19007E2:             Print 1, CVar(var_104)
  loc_19007EF:           End If
  loc_1900815:           var_134 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_190082F:           var_1B4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_104)))))
  loc_190083B:           var_1C4 = Space(3)
  loc_1900843:           var_1D4 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_104))))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))) + var_1C4)
  loc_190085D:           var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1900871:           var_224 = ("000" + Space(3))
  loc_190088B:           var_248 = (var_224 + CVar(Proc_6_52_EAD4F4("Amount", &HA)))
  loc_19008D1:           var_124 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_19008D7:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_19008FA:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1900900:           Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1900913:           var_96 = (var_96 + 4)
  loc_1900919:           var_BC.MoveFirst
  loc_190091E:           ' Referenced from:   1900C25
  loc_190092D:           If Not(var_BC.EOF) Then
  loc_190097D:             Proc_6_39_E7C810(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_19009C8:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Amount", 7)), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1900A13:             Proc_6_39_E7C810(var_304, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_1900A3E:             Proc_6_39_E7C810(var_33C, CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1900A8E:             var_124 = Space(3)
  loc_1900A96:             var_154 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + var_124)
  loc_1900AAC:             var_204 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("ItemName"))))))) 'String
  loc_1900AAF:             var_214 = (1 + var_204)
  loc_1900AC3:             var_234 = (Space(3) + Space(3))
  loc_1900AD9:             var_2B4 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Amount", &HA)))) 'String
  loc_1900ADC:             var_2C4 = (&H12 + var_2B4)
  loc_1900AF0:             var_2E4 = (Format(Format(CVar(Proc_6_52_EAD4F4("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_1900B09:             var_3C4 = (var_2E4 + CVar(Proc_6_52_EAD4F4(CStr(Format((var_304 * var_33C), "0.00")), &HA)))
  loc_1900B95:             Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_1900BC3:             Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_1900BCF:             var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))))
  loc_1900BD4:             var_E4 = CSng(var_1C4)
  loc_1900C01:             var_124 = (Chr(&HF) + CVar(CStr(Format((var_33C * (var_304 * var_33C)), "0.00"))))
  loc_1900C07:             Print 1, var_124
  loc_1900C1A:             var_96 = (var_96 + 1)
  loc_1900C20:             var_BC.MoveNext
  loc_1900C25:             GoTo loc_190091E
  loc_1900C28:           End If
  loc_1900C3E:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1900C44:           Print 1, var_124
  loc_1900C56:           Print 1, vbNullString
  loc_1900CDC:           var_134 = (Chr(&HF) + Space(&H25))
  loc_1900CE6:           var_1B4 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_45_EAD428("TOTAL  :", 8)))
  loc_1900CF0:           var_224 = ((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_1900CF6:           Print 1, Space(3)
  loc_1900D27:           Print 1, vbNullString
  loc_1900D81:           var_124 = (Chr(&HF) + "Waiter Name  :   ")
  loc_1900D8B:           var_1B4 = (Space(&H25) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_1900D91:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))))
  loc_1900DB2:           Print 1
  loc_1900DCD:           var_124 = (Chr(&HF) + "** ")
  loc_1900DD7:           var_134 = (Space(&H25) + CVar(MemVar_1F9221C))
  loc_1900DE0:           var_154 = (CVar(var_B8.Fields.Item("WaiterName")) + " **")
  loc_1900DE6:           Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14))
  loc_1900DFA:           var_B8.MoveNext
  loc_1900E01:           Print 1
  loc_1900E09:           Print 1
  loc_1900E11:           Print 1
  loc_1900E19:           Print 1
  loc_1900E21:           Print 1
  loc_1900E29:           Print 1
  loc_1900E31:           Print 1
  loc_1900E39:           Print 1
  loc_1900E3F:           GoTo loc_19003A1
  loc_1900E42:         End If
  loc_1900E44:         Close 1
  loc_1900E4E:         If (var_D4 <> vbNullString) Then
  loc_1900E58:           Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1900E68:           Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & var_D4
  loc_1900E74:         Else
  loc_1900E7B:           Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1900E8B:           Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & MemVar_1F923B4
  loc_1900E94:         End If
  loc_1900E96:         Close 1
  loc_1900EA0:         If (MemVar_1F923B8 = "Y") Then
  loc_1900EBC:           var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.PIF", 0)) 'Variant
  loc_1900EC6:         Else
  loc_1900EDF:           var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.BAT", 0)) 'Variant
  loc_1900EE6:         End If
  loc_1900EE9:       Else
  loc_1900EF4:         If (var_174 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1900EF9:           Close 1
  loc_1900F02:           Open "C:\reptmp\NCBILL_C.TXT" For Output As 1 Len = &HFF
  loc_1900F09:           var_B8.MoveFirst
  loc_1900F0E:           ' Referenced from:     1901ACD
  loc_1900F1D:           If Not(var_B8.EOF) Then
  loc_1900F2D:             var_94 = "* NC BILL *"
  loc_1900F5E:             var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1900F6D:             If (0 = 0) Then
  loc_1900F72:               Print 1
  loc_1900FA1:               var_1B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1900FE4:               var_26C = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_190100E:               var_1E4 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))))
  loc_1901015:               var_224 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_190101C:               var_2C4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_1901023:               var_2E4 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_1901029:               Print 1, var_2E4
  loc_1901077:               var_154 = (42 - Len(Trim(var_94)))
  loc_19010AA:               var_224 = (42 - Len(Trim(var_94)))
  loc_19010D4:               var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_19010DE:               var_1E4 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))) + CVar(var_94))
  loc_19010E5:               var_25C = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_19010EC:               var_294 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_19010F2:               Print 1, ("0.00" / 2)
  loc_1901111:               var_96 = &H12
  loc_1901116:               Print 1
  loc_190111E:               Print 1
  loc_1901157:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")), var_96, 1)
  loc_1901186:               var_124 = (Chr(&HF) + "KOT No.   :     ")
  loc_1901190:               var_1C4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)))
  loc_1901197:               var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_190119D:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_1901260:               var_124 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_190126A:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_96), &HC)))
  loc_1901273:               var_1C4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + " ")
  loc_190127D:               var_204 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1901284:               var_224 = (Trim(var_94) + Chr(&H12))
  loc_190128A:               Print 1, Space(3)
  loc_19012E3:               var_104 = var_B8.Fields.Item("Remarks")
  loc_1901320:               var_124 = (Chr(&HF) + "Remarks :     ")
  loc_190132A:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_104)), &H20)))
  loc_1901331:               var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + Chr(&H12))
  loc_1901337:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1901370:               Set var_E8 = Me.Label1
  loc_1901376:               Call 0.Method_Proc_251_77_1901C280 (2, var_104)
  loc_1901418:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA)))
  loc_1901421:               var_1C4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + ":     ")
  loc_1901428:               var_224 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_190142B:               var_234 = (Chr(&H12) + var_224)
  loc_1901432:               var_25C = ((Space(3) / 2) + Chr(&H12))
  loc_1901438:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_1901494:               var_124 = (Chr(&HF) + CVar(var_C4))
  loc_190149B:               var_154 = (CVar(var_104) + Chr(&H12))
  loc_19014A1:               Print 1, CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_104))), &HA))
  loc_19014B2:             End If
  loc_19014D8:             var_134 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_19014F2:             var_1B4 = (1 + CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))
  loc_19014FE:             var_1C4 = Space(3)
  loc_1901506:             var_1D4 = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + var_1C4)
  loc_1901520:             var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1901569:             var_124 = (Chr(&HF) + CVar(CStr("000")))
  loc_1901570:             var_154 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1901576:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_19015AA:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_19015B1:             var_154 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_19015B7:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_19015CE:             var_96 = (var_96 + 4)
  loc_19015D4:             var_BC.MoveFirst
  loc_19015D9:             ' Referenced from:     190182B
  loc_19015E8:             If Not(var_BC.EOF) Then
  loc_1901638:               Proc_6_39_E7C810(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_1901683:               Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_19016C5:               var_124 = Space(3)
  loc_19016CD:               var_154 = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + var_124)
  loc_19016E6:               var_214 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))))))
  loc_19016FA:               var_234 = (Format(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))), "000") + Space(3))
  loc_1901713:               var_2C4 = (var_96 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_1901783:               Proc_6_39_E7C810(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_19017B1:               Proc_6_39_E7C810(CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_19017BD:               var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))))
  loc_19017C2:               var_E4 = CSng(var_1C4)
  loc_19017FC:               var_124 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_1901803:               var_154 = (var_124 + Chr(&H12))
  loc_1901809:               Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_1901820:               var_96 = (var_96 + 1)
  loc_1901826:               var_BC.MoveNext
  loc_190182B:               GoTo loc_19015D9
  loc_190182E:             End If
  loc_1901851:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1901858:             var_154 = (var_124 + Chr(&H12))
  loc_190185E:             Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))
  loc_19018E5:             var_134 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)))
  loc_19018EF:             var_204 = (Chr(&H12) + CVar(Proc_6_52_EAD4F4(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_19018F5:             Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(CStr(Format(var_E4, "0.00"))), "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6, Chr(&H12)))))
  loc_1901922:             Print 1, vbNullString
  loc_1901989:             var_124 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1901993:             var_1B4 = (CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_190199A:             var_1D4 = (Format(var_E4, "0.00") + Chr(&H12))
  loc_19019A0:             Print 1, Trim(CVar(CStr(Format(var_E4, "0.00"))))
  loc_19019E8:             var_1B4 = Chr(&H12)
  loc_19019F5:             var_124 = (Chr(&HF) + "***  ")
  loc_1901A08:             var_1C4 = ("  ***" + var_1B4)
  loc_1901A12:             Print 1, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_CC) & Chr(&H12)
  loc_1901A2B:             Print 1
  loc_1901A46:             var_124 = (Chr(&HF) + "** ")
  loc_1901A50:             var_134 = (CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) + CVar(MemVar_1F9221C))
  loc_1901A59:             var_154 = (Trim(var_CC) + " **")
  loc_1901A5F:             Print 1, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_CC)
  loc_1901A73:             var_B8.MoveNext
  loc_1901A7A:             Print 1
  loc_1901A82:             Print 1
  loc_1901A8A:             Print 1
  loc_1901A92:             Print 1
  loc_1901AB8:             var_134 = (Chr(&H1B) + Chr(&H6D))
  loc_1901ABE:             Print 1, Trim(var_CC)
  loc_1901ACD:             GoTo loc_1900F0E
  loc_1901AD0:           End If
  loc_1901AD2:           Close 1
  loc_1901ADC:           If (var_D4 <> vbNullString) Then
  loc_1901AE6:             Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1901AF6:             Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & var_D4
  loc_1901B02:           Else
  loc_1901B09:             Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1901B19:             Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & MemVar_1F923B4
  loc_1901B22:           End If
  loc_1901B24:           Close 1
  loc_1901B2E:           If (MemVar_1F923B8 = "Y") Then
  loc_1901B4A:             var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.PIF", 0)) 'Variant
  loc_1901B54:           Else
  loc_1901B6D:             var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.BAT", 0)) 'Variant
  loc_1901B74:           End If
  loc_1901B74:         End If
  loc_1901B74:       End If
  loc_1901B74:     End If
  loc_1901B77:   Else
  loc_1901BC1:     MsgBox("Please Check Printer Setting of " & var_C0.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_52_EAD4F4("TOTAL  :", &H1C)) & Trim(var_CC), var_1B4, Chr(&H12))
  loc_1901BDC:   End If
  loc_1901BDF:   var_C0.MoveNext
  loc_1901BE4:   GoTo loc_18FF49C
  loc_1901BE7: End If
  loc_1901BEC: Set var_B8 = Nothing
  loc_1901BF4: Set var_BC = Nothing
  loc_1901BFC: Set var_C0 = Nothing
  loc_1901C04: Set var_D0 = Nothing
  loc_1901C0C: Set var_D8 = Nothing
  loc_1901C14: Proc_251_77_1901C28 = &HFF
  loc_1901C1A: ' Referenced from: 18FF1F0
  loc_1901C1A: Proc_6_60_E62BC4(var_96)
  loc_1901C1F: Proc_251_77_1901C28 = var_E4
End Sub

Public Sub Proc_251_78_1283A50
  'Data Table: 5921C0
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
  loc_128349C: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(0)
  loc_12834A6: False.Visible = 
  loc_12834BB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(0)
  loc_12834C5: False.Visible = 
  loc_12834DD: For var_F4 = 1 To CInt(Me.UBound): var_9E = var_F4 'Integer
  loc_12834F2:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9E)
  loc_12834FC:   False.Visible = 1
  loc_128350D:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9E)
  loc_1283523:   Me.Global.Unload 
  loc_1283531: Next var_F4 'Integer
  loc_1283547: For var_FC = 1 To CInt(Me.UBound): var_9E = var_FC 'Integer
  loc_128355C:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9E)
  loc_1283566:   False.Visible = 1
  loc_1283577:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9E)
  loc_128358D:   Me.Global.Unload 
  loc_128359B: Next var_FC 'Integer
  loc_12835AE: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_12835B5: Proc_6_39_E7C810(var_110)
  loc_12835CC: If (var_110 > 0) Then
  loc_12835D5:   var_96 = (arg_18 + 1)
  loc_12835DA:   var_98 = 0
  loc_12835DF:   var_9A = 0
  loc_12835F5:   var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_12835FC:   Proc_6_39_E7C810(var_110, var_F0, var_9C, 1)
  loc_128360C:   For var_124 = var_98 To CInt(var_110): var_9A = var_124 'Integer
  loc_128361C:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1283632:     Me.Global.Load var_98
  loc_1283651:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_128365A:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_1283661:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(0)
  loc_1283677:       var_D0 = CVar((var_9C - 1)) 'Integer
  loc_128367E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(False)
  loc_128368E:       var_144 = (var_F0 + var_96.top.height)
  loc_128369D:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_12836A7:       var_144.top = 
  loc_12836C0:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_12836C7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(0)
  loc_12836E2:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_12836EC:       .left.left = 
  loc_1283707:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1283711:       True.Visible = 
  loc_128374E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1283758:       CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")))).CAPTION = 
  loc_128379E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_12837A8:       CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")))).Tag = 
  loc_12837C3:       If (var_9C = (arg_18 * arg_10)) Then
  loc_12837D8:         var_94 = CVar(Me.Recordset15.AbsolutePosition) 'Variant
  loc_12837DC:         Exit For
  loc_12837DF:       End If
  loc_12837E2:     Else
  loc_12837ED:       If ((var_9C Mod var_96) = var_98) Then
  loc_12837F7:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_12837FE:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(CVar(Me.Recordset15.AbsolutePosition))
  loc_1283808:         var_120 = .left
  loc_1283815:         var_D0 = CVar((var_9C - arg_18)) 'Integer
  loc_128381C:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(False)
  loc_128382C:         var_144 = ( + var_120.width)
  loc_128383B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1283845:         var_144.left = 
  loc_128385F:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_1283866:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(CVar(Me.Recordset15.AbsolutePosition))
  loc_1283881:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_128388B:         .top.top = 
  loc_12838A6:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_12838B0:         True.Visible = 
  loc_12838ED:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_12838F7:         CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name")))).CAPTION = 
  loc_128392F:         var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")))) 'String
  loc_128393D:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_0(var_9C)
  loc_1283947:         var_110.Tag = 
  loc_128395D:         var_9A = (var_9A + 1)
  loc_1283967:         var_98 = (var_96 - var_9A)
  loc_128396A:       End If
  loc_128396A:     End If
  loc_128396D:     Me.MoveNext
  loc_1283986:     If (Me.AbsolutePosition = -3) Then
  loc_1283989:       GoTo loc_1283994
  loc_128398C:     End If
  loc_128398F:   Next var_124 'Integer
  loc_1283994:   ' Referenced from: 1283989
  loc_1283994:   ' Referenced from: 12837DC
  loc_1283994: End If
  loc_12839B4: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_12839BB: Proc_6_39_E7C810(var_110)
  loc_12839DA: Call Proc_251_80_E61238(Me.SSPPrevious, CInt(Me.Recordset15.AbsolutePosition), CInt(var_110))
  loc_1283A16: Proc_6_39_E7C810(var_110, CVar(Me.Recordset15.RecordCount))
  loc_1283A35: Call Proc_251_79_E54EC0(Me.SSPNext, CInt(Me.AbsolutePosition), CInt(var_110))
  loc_1283A4A: Proc_251_78_1283A50 = var_120
End Sub

Public Sub Proc_251_79_E54EC0
  'Data Table: 5921C0
  loc_E54E9C: If ((CLng(arg_10) = -3) Or ((arg_14 Mod CInt(&H10)) = 0)) Then
  loc_E54EA7:   Me.Enabled = False
  loc_E54EAE: Else
  loc_E54EB5:   Me.Enabled = True
  loc_E54EB9: End If
  loc_E54EB9: Proc_251_79_E54EC0 = 
End Sub

Public Sub Proc_251_80_E61238
  'Data Table: 5921C0
  loc_E61215: If (((arg_10 = CInt(&H10)) Or (CLng(arg_10) = -1)) Or ((CLng(arg_10) = -3) And (arg_14 < CInt(&H10)))) Then
  loc_E61220:   Me.Enabled = False
  loc_E61227: Else
  loc_E6122E:   Me.Enabled = True
  loc_E61232: End If
  loc_E61232: Proc_251_80_E61238 = 
End Sub

Public Sub Proc_251_81_EA0D9C
  'Data Table: 5921C0
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_EA0D2F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EA0D37: var_C8 = CVar(CLng(0)) 'Long
  loc_EA0D6A: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_EA0D6D:   Exit Sub
  loc_EA0D6E: End If
  loc_EA0D7E: Me.FrameQty.ZOrder 0
  loc_EA0D93: Me.TxtQty.Text = vbNullString
  loc_EA0D9B: Exit Sub
End Sub

Public Sub Proc_251_82_F0E678(arg_C) 'F0E678
  'Data Table: 5921C0
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F0E5A7: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F0E5D0: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F0E5D9: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F0E609: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F0E61E: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F0E638: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F0E64D: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F0E66F: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F0E674: Exit Sub
End Sub

Public Sub Proc_251_83_1BBBC38
  'Data Table: 5921C0
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_140 As String
  Dim unk_5921DC As Connection15
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
  loc_1BB66E4: On Error Goto loc_1BBBC2C
  loc_1BB6704: Proc_6_17_EAA2B0(var_11C, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1BB671A: unk_5921DC.Execute CStr(var_160 & var_11C), -1, var_164
  loc_1BB6725: Set var_FC = var_164
  loc_1BB674B: If (var_FC.RecordCount > 0) Then
  loc_1BB6785:   var_EC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KOTHeader1"))))))
  loc_1BB67CB:   var_F0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KOTHeader2"))))))
  loc_1BB6811:   var_F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KOTHeader3"))))))
  loc_1BB6857:   var_F8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_FC.Fields.Item("KOTHeader4"))))))
  loc_1BB6866: End If
  loc_1BB6869: MemVar_1F923C0 = "N"
  loc_1BB6870: MemVar_1F923C4 = "N"
  loc_1BB6877: MemVar_1F923C8 = "K"
  loc_1BB6882: var_140 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt " & "From ((KOT K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode) "
  loc_1BB68C7: var_8C = CStr(CVar(var_140 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1BB68E6: var_13C = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BB6906: var_16C = Me.Fields.Item("SearchCode")
  loc_1BB6916: var_160 = var_13C & var_16C.Value 
  loc_1BB691F: var_17C = var_160 & "'" 
  loc_1BB6924: var_90 = CStr(var_17C)
  loc_1BB6941: If (var_8C = vbNullString) Then
  loc_1BB6949:   Proc_251_83_1BBBC38 = 0
  loc_1BB694F: End If
  loc_1BB6957: If (var_90 = vbNullString) Then
  loc_1BB695F:   Proc_251_83_1BBBC38 = 0
  loc_1BB6965: End If
  loc_1BB6983: Set var_164 = Me.Txt
  loc_1BB6989: Call 0.Method_Proc_251_83_1BBBC380 (CInt(4), var_16C, var_140, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_1BB6991: var_11C = var_16C.Text
  loc_1BB699A: var_180 = -1 & var_140
  loc_1BB69AA: unk_5921DC.Execute var_180 & "' AND CONTRADOCID IS NULL", var_188, 
  loc_1BB69E1: If (var_188.RecordCount = 1) Then
  loc_1BB69E7:   var_CC = "New Order"
  loc_1BB69ED: Else
  loc_1BB69F4:   Set var_164 = Me.LblState
  loc_1BB6A02:   var_CC = var_164.Caption
  loc_1BB6A08: End If
  loc_1BB6A1E: unk_5921DC.Execute var_8C, var_11C, -1
  loc_1BB6A29: Set var_B8 = var_164
  loc_1BB6A48: unk_5921DC.Execute "SELECT KOTPrinting FROM Enviro", var_11C, -1
  loc_1BB6A53: Set var_D4 = var_164
  loc_1BB6A62: var_12C = 0
  loc_1BB6A92: unk_5921DC.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_11C, -1
  loc_1BB6A9A: var_164 = var_164.Fields
  loc_1BB6AA2: var_12C = var_16C.Item(var_16C)
  loc_1BB6AAA: var_188 = var_188.Value
  loc_1BB6AB7: var_D8 = Proc_6_38_E68A98(var_13C, var_13C)
  loc_1BB6AE0: var_164 = var_B8.Fields
  loc_1BB6B0A: If (Proc_6_38_E68A98(CVar(var_164.Item("ContraDocId")), var_164) <> vbNullString) Then
  loc_1BB6B20:   var_11C = "Sale Bill Already Generated !!"
  loc_1BB6B26:   MsgBox(var_11C, &H40, var_13C, var_160, var_17C)
  loc_1BB6B3B:   Proc_251_83_1BBBC38 = 0
  loc_1BB6B41: End If
  loc_1BB6B58: var_140 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & LocalRestCode
  loc_1BB6B68: unk_5921DC.Execute var_140 & "'", var_11C, -1
  loc_1BB6B73: Set var_C0 = var_164
  loc_1BB6B83: ' Referenced from: 1BBBC06
  loc_1BB6B92: If Not(var_C0.EOF) Then
  loc_1BB6B9C:   var_13C = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BB6BB4:   var_164 = Me.Fields
  loc_1BB6BC4:   var_11C = var_164.Item("SearchCode").Value
  loc_1BB6C05:   unk_5921DC.Execute CStr(var_13C & var_11C & "'"), var_11C, -1
  loc_1BB6C10:   Set var_BC = var_164
  loc_1BB6C1F:   var_168 = var_BC.RecordCount
  loc_1BB6C2D:   If (var_168 > 0) Then
  loc_1BB6C3F:     var_164 = var_C0.Fields
  loc_1BB6C5E:     var_1AC = Trim(CVar(var_164.Item("PrintType"))) 'Variant
  loc_1BB6C73:     If (var_1AC = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1BB6C83:       Call Proc_251_84_EFA11C(New, var_164, var_164)
  loc_1BB6C8B:       Set var_E0 = var_164
  loc_1BB6C91:       Me.Recordset15.MoveFirst
  loc_1BB6C96:       ' Referenced from: 1BB7A24
  loc_1BB6CA5:       If Not(var_B8.EOF) Then
  loc_1BB6CAA:         var_96 = 0
  loc_1BB6CC1:         var_164 = var_B8.Fields
  loc_1BB6DD2:         var_2F8 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_164.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_164) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BB6DDB:         var_94 = CStr(var_2F8)
  loc_1BB6E1F:         If (var_96 = 0) Then
  loc_1BB6E25:           var_184 = vbNullString
  loc_1BB6E40:           Call Proc_251_85_F13DD4(var_E0, vbNullString, vbNullString)
  loc_1BB6E7C:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1BB6EB3:           var_13C = CVar(Me.LblRest.Caption) 'String
  loc_1BB6EB6:           var_160 = (Space(1) + var_13C)
  loc_1BB6ECB:           Call Proc_251_85_F13DD4(var_E0, vbNullString, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.LblRest.Item("ShortName")), 1, var_96)))))
  loc_1BB6EFD:           Call Proc_251_85_F13DD4(var_E0, vbNullString, var_94, vbNullString)
  loc_1BB6F2C:           Call Proc_251_85_F13DD4(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1BB6F60:           Proc_6_39_E7C810(var_13C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB6F94:           var_184 = vbNullString
  loc_1BB6F9D:           Call Proc_251_85_F13DD4(var_E0, var_184, " KOT No.   : " & Proc_6_45_EAD428(CStr(var_13C), &HA, vbNullString))
  loc_1BB7059:           var_304 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1BB706D:           Call Proc_251_85_F13DD4(var_E0, vbNullString, " KOT Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_304)
  loc_1BB70B4:           var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB70FF:           Call Proc_251_85_F13DD4(var_E0, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C), vbNullString), &H1E))
  loc_1BB7131:           Set var_164 = Me.Label1
  loc_1BB7137:           Call 0.Method_Proc_251_83_1BBBC380 (2, var_16C)
  loc_1BB71A2:           var_300 = vbNullString
  loc_1BB71B1:           var_1BC = (Space(1) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB71BA:           var_1CC = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1BB71C1:           var_1F0 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1BB71C4:           var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3)) + var_1F0)
  loc_1BB71D9:           Call Proc_251_85_F13DD4(var_E0, vbNullString, CStr("* NC LOT *"))
  loc_1BB7210:           var_180 = vbNullString
  loc_1BB7225:           Call Proc_251_85_F13DD4(var_E0, vbNullString, var_C4)
  loc_1BB7231:         End If
  loc_1BB7257:         var_160 = (var_180 + CVar(Proc_6_45_EAD428("ITEM NAME", &H19, Space(1))))
  loc_1BB726B:         var_1BC = (Trim(CVar(var_16C)) + Space(1))
  loc_1BB7282:         var_1CC = CVar(Proc_6_52_EAD4F4("Qty", 3, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1BB7285:         var_1DC = (var_300 + var_1CC)
  loc_1BB728A:         var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BB72A8:         var_180 = vbNullString
  loc_1BB72BD:         Call Proc_251_85_F13DD4(var_E0, vbNullString, var_B0)
  loc_1BB72CC:         var_180 = vbNullString
  loc_1BB72E1:         Call Proc_251_85_F13DD4(var_E0, vbNullString, var_C4)
  loc_1BB72F3:         var_96 = (var_96 + 4)
  loc_1BB72F9:         var_BC.MoveFirst
  loc_1BB72FE:         ' Referenced from: 1BB767F
  loc_1BB730D:         If Not(var_BC.EOF) Then
  loc_1BB7346:           var_188 = var_BC.Fields
  loc_1BB735D:           Proc_6_39_E7C810(var_1F0, CVar(var_188.Item("qty")), &H12)
  loc_1BB7388:           var_198 = "Cancel"
  loc_1BB73C2:           var_200 = "Y"
  loc_1BB7400:           var_17C = (1 + CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1BB7414:           var_1CC = (Space(1) + Space(1))
  loc_1BB742D:           var_278 = (var_180 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1F0, "0")), 3, var_1CC)))
  loc_1BB7443:           var_348 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item(var_198).Value = var_200), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCKOT")))) 'String
  loc_1BB7446:           var_358 = (var_180 + var_348)
  loc_1BB74A5:           Call Proc_251_85_F13DD4(var_E0, vbNullString, CStr(var_358))
  loc_1BB74B7:           var_96 = (var_96 + 1)
  loc_1BB74F3:           If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BB7524:             var_300 = vbNullString
  loc_1BB754B:             Call Proc_251_85_F13DD4(var_E0, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1BB756B:             var_96 = (var_96 + 1)
  loc_1BB756E:           End If
  loc_1BB7578:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BB7593:             Call Proc_251_85_F13DD4(var_E0, vbNullString, var_C4, vbNullString)
  loc_1BB75BD:             Call Proc_251_85_F13DD4(var_E0, vbNullString, " Contd.", vbNullString)
  loc_1BB75D1:             var_98 = (var_98 + 1)
  loc_1BB75F1:             Call Proc_251_85_F13DD4(var_E0, vbNullString, var_94, vbNullString, 0)
  loc_1BB761A:             Call Proc_251_85_F13DD4(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1BB763E:             Call Proc_251_85_F13DD4(var_E0, vbNullString, var_B0, vbNullString)
  loc_1BB7662:             Call Proc_251_85_F13DD4(var_E0, vbNullString, var_C4, vbNullString)
  loc_1BB7674:             var_96 = (var_96 + 4)
  loc_1BB7677:           End If
  loc_1BB767A:           var_BC.MoveNext
  loc_1BB767F:           GoTo loc_1BB72FE
  loc_1BB7682:         End If
  loc_1BB768C:         If (&H12 < (&H45 - var_AA)) Then
  loc_1BB768F:           ' Referenced from: 1BB76D1
  loc_1BB7699:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BB76BA:             Call Proc_251_85_F13DD4(var_E0, vbNullString, vbNullString, vbNullString, &H12)
  loc_1BB76CE:             var_96 = (var_96 + 1)
  loc_1BB76D1:             GoTo loc_1BB768F
  loc_1BB76D4:           End If
  loc_1BB76D4:         End If
  loc_1BB76EC:         Call Proc_251_85_F13DD4(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1BB773A:         var_300 = vbNullString
  loc_1BB775A:         Call Proc_251_85_F13DD4(var_E0, vbNullString, " Waiter Name  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1BB77B5:         Call Proc_251_85_F13DD4(var_E0, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1BB7814:         var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB7822:         unk_5921DC.Execute CStr(var_160), Space(1), -1
  loc_1BB7883:         If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB78AD:           Call Proc_251_85_F13DD4(var_E0, vbNullString, " ***  " & "Changed KOT" & "  ***", vbNullString)
  loc_1BB78C0:         Else
  loc_1BB78CD:           var_12C = "Select Printed from kot where docid='"
  loc_1BB7903:           var_150 = "'"
  loc_1BB7916:           unk_5921DC.Execute CStr(var_12C & Me.Fields.Item("SearchCode").Value & var_150), Space(1), -1
  loc_1BB793E:           var_10C = 0
  loc_1BB7974:           If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(var_10C)), var_188, var_188) = "Y") Then
  loc_1BB799E:             Call Proc_251_85_F13DD4(var_E0, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***", vbNullString)
  loc_1BB79B1:           Else
  loc_1BB79CF:             Call Proc_251_85_F13DD4(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1BB79DD:           End If
  loc_1BB79DD:         End If
  loc_1BB79E2:         Set var_E4 = Nothing
  loc_1BB7A0C:         Call Proc_251_85_F13DD4(var_E0, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1BB7A1F:         var_B8.MoveNext
  loc_1BB7A24:         GoTo loc_1BB6C96
  loc_1BB7A27:       End If
  loc_1BB7A2A:       var_DC = "WinKOTPrint"
  loc_1BB7A51:       Set var_164 = var_E0 
  loc_1BB7A58:       CreateFieldDefFile(var_164, MemVar_1F920B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1BB7A9A:       Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_DC & ".RPT", var_10C, var_164)
  loc_1BB7AA5:       MemVar_1F921E4 = var_164
  loc_1BB7ACE:       Call 0.Method_arg_64 (var_164, CVar(var_164), var_12C, var_150)
  loc_1BB7AD6:       Call 0.Method_arg_2C (var_300, var_300)
  loc_1BB7AE6:       If (var_D8 <> vbNullString) Then
  loc_1BB7B07:         If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1BB7B0D:           Call Proc_251_82_F0E678(var_D8)
  loc_1BB7B12:         End If
  loc_1BB7B12:       End If
  loc_1BB7B1E:       var_12C = 1
  loc_1BB7B2F:       Call 0.Method_Me8 (False, var_12C, var_150)
  loc_1BB7B39:       Set var_E0 = Nothing
  loc_1BB7B3F:     Else
  loc_1BB7B4A:       If (var_1AC = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1BB7B50:         var_B8.MoveFirst
  loc_1BB7B55:         ' Referenced from:   1BB8929
  loc_1BB7B64:         If Not(var_B8.EOF) Then
  loc_1BB7B6A:           var_10C = "ShortName"
  loc_1BB7B9A:           var_17C = 3
  loc_1BB7BC9:           var_188 = var_B8.Fields
  loc_1BB7BD1:           var_1E0 = var_188.Item("NCKOT")
  loc_1BB7C73:           var_150 = "LAU"
  loc_1BB7C7D:           var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_10C)), "NCKOT"))), 1, var_17C)) = var_150) 'Variant
  loc_1BB7C87:           var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E68A98(CVar(var_1E0), (Proc_6_38_E68A98(CVar(var_1E0), var_200) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BB7C90:           var_94 = CStr(var_2F8)
  loc_1BB7CD1:           var_DC = "KOTPrint"
  loc_1BB7CF8:           Set var_164 = var_BC 
  loc_1BB7CFF:           CreateFieldDefFile(var_164, MemVar_1F920B4 & "\" & var_DC & ".ttx")
  loc_1BB7D0B:           Set var_BC = var_164
  loc_1BB7D41:           Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_DC & ".RPT", var_10C, var_164)
  loc_1BB7D4C:           MemVar_1F921E4 = var_164
  loc_1BB7D75:           Call 0.Method_arg_64 (var_164, CVar(var_BC), var_12C)
  loc_1BB7D7D:           Call 0.Method_arg_2C (var_150, &HFF)
  loc_1BB7D8B:           Call 0.Method_arg_150 (var_164)
  loc_1BB7DD8:           var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB7DE6:           unk_5921DC.Execute CStr(var_160), var_17C, -1
  loc_1BB7E47:           If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB7E4D:             var_D0 = "Changed KOT"
  loc_1BB7E53:           Else
  loc_1BB7EA9:             unk_5921DC.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB7EDD:             var_164 = var_188.Fields
  loc_1BB7EE5:             var_16C = var_164.Item(0)
  loc_1BB7EF6:             var_140 = Proc_6_38_E68A98(CVar(var_16C), var_188)
  loc_1BB7F07:             If (var_140 = "Y") Then
  loc_1BB7F0D:               var_D0 = "DUPLICATE KOT"
  loc_1BB7F13:             Else
  loc_1BB7F16:               var_D0 = vbNullString
  loc_1BB7F19:             End If
  loc_1BB7F19:           End If
  loc_1BB7F1E:           Set var_E4 = Nothing
  loc_1BB7F32:           Call 0.Method_arg_90 (var_164, var_168, var_B2)
  loc_1BB7F3A:           Call 0.Method_arg_24 (1)
  loc_1BB7F46:           For var_35C =  To CInt(var_168):   var_188 = var_35C 'Integer
  loc_1BB7F5F:             Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB7F67:             Call 0.Method_arg_20 (var_16C)
  loc_1BB7F6F:             Call 0.Method_arg_30 (var_140)
  loc_1BB7F85:             var_36C = Ucase(CVar(var_140)) 'Variant
  loc_1BB7FB5:             If (var_36C = Ucase("comp_name")) Then
  loc_1BB7FD9:               Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB7FE1:               Call 0.Method_arg_20 (var_16C)
  loc_1BB7FE9:               Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1BB7FFF:             Else
  loc_1BB8021:               If (var_36C = Ucase("comp_add1")) Then
  loc_1BB8045:                 Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB804D:                 Call 0.Method_arg_20 (var_16C)
  loc_1BB8055:                 Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1BB806B:               Else
  loc_1BB808D:                 If (var_36C = Ucase("comp_pin")) Then
  loc_1BB80B1:                   Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB80B9:                   Call 0.Method_arg_20 (var_16C)
  loc_1BB80C1:                   Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1BB80D7:                 Else
  loc_1BB80F9:                   If (var_36C = Ucase("comp_GSTIN")) Then
  loc_1BB811D:                     Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB8125:                     Call 0.Method_arg_20 (var_16C)
  loc_1BB812D:                     Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1BB8143:                   Else
  loc_1BB8165:                     If (var_36C = Ucase("RestName")) Then
  loc_1BB8172:                       Set var_164 = Me.LblRest
  loc_1BB819B:                       Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BB81A3:                       Call 0.Method_arg_20 (var_188)
  loc_1BB81AB:                       Call 0.Method_arg_38 ("'" & var_164.Caption & "'")
  loc_1BB81C5:                     Else
  loc_1BB81E7:                       If (var_36C = Ucase("mTitle")) Then
  loc_1BB820B:                         Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB8213:                         Call 0.Method_arg_20 (var_16C)
  loc_1BB821B:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1BB8231:                       Else
  loc_1BB8239:                         var_11C = "Header1"
  loc_1BB8253:                         If (var_36C = Ucase(var_11C)) Then
  loc_1BB8261:                           Proc_6_17_EAA2B0(var_11C)
  loc_1BB827D:                           Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB8285:                           Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB828D:                           Call 0.Method_arg_38 (var_EC)
  loc_1BB82A2:                         Else
  loc_1BB82AA:                           var_11C = "Header2"
  loc_1BB82C4:                           If (var_36C = Ucase(var_11C)) Then
  loc_1BB82D2:                             Proc_6_17_EAA2B0(var_11C)
  loc_1BB82EE:                             Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB82F6:                             Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB82FE:                             Call 0.Method_arg_38 (var_F0)
  loc_1BB8313:                           Else
  loc_1BB831B:                             var_11C = "Header3"
  loc_1BB8335:                             If (var_36C = Ucase(var_11C)) Then
  loc_1BB8343:                               Proc_6_17_EAA2B0(var_11C)
  loc_1BB835F:                               Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB8367:                               Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB836F:                               Call 0.Method_arg_38 (var_F4)
  loc_1BB8384:                             Else
  loc_1BB838C:                               var_11C = "Header4"
  loc_1BB83A6:                               If (var_36C = Ucase(var_11C)) Then
  loc_1BB83B4:                                 Proc_6_17_EAA2B0(var_11C)
  loc_1BB83D0:                                 Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB83D8:                                 Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB83E0:                                 Call 0.Method_arg_38 (var_F8)
  loc_1BB83F5:                               Else
  loc_1BB8406:                                 var_13C = Ucase("KotNo")
  loc_1BB8417:                                 If (var_36C = var_13C) Then
  loc_1BB8445:                                   Proc_6_39_E7C810(var_13C, CVar(var_B8.Fields.Item("VNo")))
  loc_1BB8451:                                   var_150 = "'"
  loc_1BB846E:                                   Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB8476:                                   Call 0.Method_arg_20 (var_1E0)
  loc_1BB847E:                                   Call 0.Method_arg_38 (CStr("'" & var_13C & var_150))
  loc_1BB849D:                                 Else
  loc_1BB84BF:                                   If (var_36C = Ucase("KotDate")) Then
  loc_1BB850B:                                     Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB8513:                                     Call 0.Method_arg_20 (var_1E0)
  loc_1BB851B:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1BB8538:                                   Else
  loc_1BB855A:                                     If (var_36C = Ucase("KotTime")) Then
  loc_1BB85A6:                                       Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB85AE:                                       Call 0.Method_arg_20 (var_1E0)
  loc_1BB85B6:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1BB85D3:                                     Else
  loc_1BB85F5:                                       If (var_36C = Ucase("Remarks")) Then
  loc_1BB8612:                                         var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB8641:                                         Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB8649:                                         Call 0.Method_arg_20 (var_1E0)
  loc_1BB8651:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_16C)) & "'")
  loc_1BB866E:                                       Else
  loc_1BB8690:                                         If (var_36C = Ucase("TableTitle")) Then
  loc_1BB86A1:                                           Set var_164 = Me.Label1
  loc_1BB86A7:                                           Call 0.Method_Proc_251_83_1BBBC380 (2, var_16C)
  loc_1BB86DF:                                           Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB86E7:                                           Call 0.Method_arg_20 (var_1E0)
  loc_1BB86EF:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_16C)) & "'"))
  loc_1BB870E:                                         Else
  loc_1BB8730:                                           If (var_36C = Ucase("TableNo")) Then
  loc_1BB877C:                                             Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB8784:                                             Call 0.Method_arg_20 (var_1E0)
  loc_1BB878C:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1BB87A9:                                           Else
  loc_1BB87CB:                                             If (var_36C = Ucase("Steward")) Then
  loc_1BB87E0:                                               var_164 = var_B8.Fields
  loc_1BB87E8:                                               var_16C = var_164.Item("WaiterName")
  loc_1BB8817:                                               Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB881F:                                               Call 0.Method_arg_20 (var_1E0)
  loc_1BB8827:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_16C)) & "'")
  loc_1BB8844:                                             Else
  loc_1BB8866:                                               If (var_36C = Ucase("KotStatus")) Then
  loc_1BB888A:                                                 Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB8892:                                                 Call 0.Method_arg_20 (var_16C)
  loc_1BB889A:                                                 Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1BB88B0:                                               Else
  loc_1BB88D2:                                                 If (var_36C = Ucase("KotRemark")) Then
  loc_1BB88F6:                                                   Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB88FE:                                                   Call 0.Method_arg_20 (var_16C)
  loc_1BB8906:                                                   Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1BB8919:                                                 End If
  loc_1BB8919:                                               End If
  loc_1BB8919:                                             End If
  loc_1BB8919:                                           End If
  loc_1BB8919:                                         End If
  loc_1BB8919:                                       End If
  loc_1BB8919:                                     End If
  loc_1BB8919:                                   End If
  loc_1BB8919:                                 End If
  loc_1BB8919:                               End If
  loc_1BB8919:                             End If
  loc_1BB8919:                           End If
  loc_1BB8919:                         End If
  loc_1BB8919:                       End If
  loc_1BB8919:                     End If
  loc_1BB8919:                   End If
  loc_1BB8919:                 End If
  loc_1BB8919:               End If
  loc_1BB8919:             End If
  loc_1BB891C:           Next var_35C 'Integer
  loc_1BB8924:           var_B8.MoveNext
  loc_1BB8929:           GoTo loc_1BB7B55
  loc_1BB892C:         End If
  loc_1BB8934:         If (var_D8 <> vbNullString) Then
  loc_1BB8955:           If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1BB895B:             Call Proc_251_82_F0E678(var_D8)
  loc_1BB8960:           End If
  loc_1BB8960:         End If
  loc_1BB897D:         Call 0.Method_Me8 (False, 1, var_150)
  loc_1BB8985:       Else
  loc_1BB8990:         If (var_1AC = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1BB8995:           Close 1
  loc_1BB899E:           Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BB89A5:           var_B8.MoveFirst
  loc_1BB89AA:           ' Referenced from:     1BB9A42
  loc_1BB89B9:           If Not(var_B8.EOF) Then
  loc_1BB89BE:             var_96 = 0
  loc_1BB89F9:             var_17C = 3
  loc_1BB8A1C:             var_198 = "NCKOT"
  loc_1BB8A99:             var_2FC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")))
  loc_1BB8AB5:             var_180 = var_2FC
  loc_1BB8ADC:             var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_17C)) = "LAU") 'Variant
  loc_1BB8AE6:             var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_198)), var_198) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_180 = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BB8AEF:             var_94 = CStr(var_2F8)
  loc_1BB8B33:             If (var_96 = 0) Then
  loc_1BB8B38:               Print 1
  loc_1BB8B6C:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BB8B7D:               If (var_EC <> vbNullString) Then
  loc_1BB8BA6:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BB8BAC:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB8BBE:               End If
  loc_1BB8BC6:               If (var_F0 <> vbNullString) Then
  loc_1BB8BEF:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BB8BF5:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB8C07:               End If
  loc_1BB8C0F:               If (var_F4 <> vbNullString) Then
  loc_1BB8C38:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1BB8C3E:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB8C50:               End If
  loc_1BB8C58:               If (var_F8 <> vbNullString) Then
  loc_1BB8C81:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1BB8C87:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB8C99:               End If
  loc_1BB8C9B:               Print 1
  loc_1BB8CCB:               Call Proc_251_96_10ACF40(Me.LblRest.Caption, "D", &H28)
  loc_1BB8CD5:               Print 1, var_2FC
  loc_1BB8CFB:               Call Proc_251_96_10ACF40(var_94, "D", &H28)
  loc_1BB8D05:               Print 1, var_180
  loc_1BB8D19:               Print 1
  loc_1BB8D21:               Print 1
  loc_1BB8D5A:               Proc_6_39_E7C810(var_17C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB8D7C:               var_13C = (Chr(&HF) + "KOT No.   :     ")
  loc_1BB8D86:               var_1CC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_17C), &HA, Proc_6_45_EAD428(CStr(var_17C), &HA, var_180))))
  loc_1BB8D8C:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C))
  loc_1BB8E3E:               var_13C = (Chr(&HF) + "KOT Dt.   :     ")
  loc_1BB8E48:               var_1BC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC)))
  loc_1BB8E51:               var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC))), &HA, Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC))), &HA, var_180))) + " ")
  loc_1BB8E5B:               var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BB8E61:               Print 1, "* NC LOT *"
  loc_1BB8EB6:               var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB8EF3:               var_13C = (Chr(&HF) + "Remarks :     ")
  loc_1BB8EFD:               var_1BC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32)))
  loc_1BB8F04:               var_1DC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32))), &HA, Proc_6_38_E68A98(CVar(var_16C)))) + Chr(&H12))
  loc_1BB8F0A:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BB8F43:               Set var_164 = Me.Label1
  loc_1BB8F49:               Call 0.Method_Proc_251_83_1BBBC380 (2, var_16C)
  loc_1BB8FBA:               var_1BC = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB8FC3:               var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA))), &HA, Proc_6_38_E68A98(CVar(var_16C)))) + ":     ")
  loc_1BB8FCD:               var_220 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BB8FD3:               Print 1, "* NC LOT *"
  loc_1BB9018:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB901E:               Print 1, CVar(var_16C)
  loc_1BB902B:             End If
  loc_1BB9051:             var_160 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H1B)) + Space(1))
  loc_1BB906B:             var_1BC = (Trim(CVar(var_16C)) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1BB9070:             var_B0 = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4("Qty", 6))), &HA, "Qty")))
  loc_1BB909D:             var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB90A3:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H1B))
  loc_1BB90C6:             var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB90CC:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H1B))
  loc_1BB90DF:             var_96 = (var_96 + 4)
  loc_1BB90E5:             var_BC.MoveFirst
  loc_1BB90EA:             ' Referenced from:     1BB965B
  loc_1BB90F9:             If Not(var_BC.EOF) Then
  loc_1BB912A:               var_160 = Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("ItemName")), &H12)))
  loc_1BB9133:               var_E8 = CStr(var_160)
  loc_1BB9168:               Proc_6_39_E7C810(var_160, CVar(var_BC.Fields.Item("qty")))
  loc_1BB919F:               var_188 = var_BC.Fields
  loc_1BB920B:               var_1DC = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_160, "0.00")), 6, Space(1))))
  loc_1BB9221:               var_2C8 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_188.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, CVar(var_B8.Fields.Item("TableNo")))) 'String
  loc_1BB9224:               var_2D8 = (1 + var_2C8)
  loc_1BB9229:               var_C8 = CStr(IIf(("Qty" = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BB925B:               ' Referenced from:     1BB9460
  loc_1BB9265:               If (Len(var_E8) <> 0) Then
  loc_1BB9296:                 var_168 = InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0)
  loc_1BB92CD:                 var_17C = CVar((InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0) - 1)) 'Long
  loc_1BB9320:                 var_2FC = Proc_6_45_EAD428(CStr(Mid(var_E8, 1, IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 27, "0.00"))), &H1B)
  loc_1BB935C:                 var_13C = (Chr(&HF) + CVar(var_2FC & var_2FC & var_C8))
  loc_1BB9362:                 Print 1, Left(var_E8, &H1B)
  loc_1BB9375:                 var_96 = (var_96 + 1)
  loc_1BB937B:                 var_C8 = vbNullString
  loc_1BB9388:                 If (Len(var_E8) > &H1B) Then
  loc_1BB93B9:                   var_168 = InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0)
  loc_1BB93E1:                   var_180 = CStr(Left(var_E8, &H1B))
  loc_1BB93F0:                   var_17C = CVar((InStrRev(var_180, " ", -1, 0) + 1)) 'Long
  loc_1BB943A:                   var_E8 = CStr(Mid(var_E8, CLng(IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00")), CVar(Len(var_E8))))
  loc_1BB945A:                 Else
  loc_1BB945D:                   var_E8 = vbNullString
  loc_1BB9460:                 End If
  loc_1BB9460:                 GoTo loc_1BB925B
  loc_1BB9463:               End If
  loc_1BB949C:               If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), var_168, &H12) <> vbNullString) Then
  loc_1BB94DF:                 var_13C = (Chr(&HF) + "(")
  loc_1BB94E9:                 var_1BC = (Left(var_E8, &H1B) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), var_168)))
  loc_1BB94F2:                 var_1CC = (IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00") + ")")
  loc_1BB94F8:                 Print 1, CVar(Len(var_E8))
  loc_1BB9519:                 var_96 = (var_96 + 1)
  loc_1BB951C:               End If
  loc_1BB9526:               If (&H12 = (&H45 - var_AA)) Then
  loc_1BB953F:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB9545:                 Print 1, Left(var_E8, &H1B)
  loc_1BB9557:                 Print 1, "Contd."
  loc_1BB956F:                 Print 1, Chr(&HC)
  loc_1BB957E:                 var_98 = (var_98 + 1)
  loc_1BB9594:                 Call Proc_251_97_120255C(1, 0, &H28, var_306)
  loc_1BB95B3:                 Call Proc_251_96_10ACF40(var_94, "B", &H28, var_180, var_306)
  loc_1BB95BD:                 Print 1, var_180
  loc_1BB95CC:                 var_96 = &H12
  loc_1BB95E5:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB95EB:                 Print 1, Left(var_E8, &H1B)
  loc_1BB960E:                 var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB9614:                 Print 1, Left(var_E8, &H1B)
  loc_1BB9637:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB963D:                 Print 1, Left(var_E8, &H1B)
  loc_1BB9650:                 var_96 = (var_96 + 4)
  loc_1BB9653:               End If
  loc_1BB9656:               var_BC.MoveNext
  loc_1BB965B:               GoTo loc_1BB90EA
  loc_1BB965E:             End If
  loc_1BB9668:             If (var_96 < (&H45 - var_AA)) Then
  loc_1BB966B:               ' Referenced from:     1BB968C
  loc_1BB9675:               If (var_96 = (&H45 - var_AA)) Then
  loc_1BB967D:                 Print 1, vbNullString
  loc_1BB9689:                 var_96 = (var_96 + 1)
  loc_1BB968C:                 GoTo loc_1BB966B
  loc_1BB968F:               End If
  loc_1BB968F:             End If
  loc_1BB96A5:             var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB96AB:             Print 1, Left(var_E8, &H1B)
  loc_1BB970C:             var_13C = (Chr(&HF) + "Waiter Name  :     ")
  loc_1BB9713:             var_17C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)) 'String
  loc_1BB9716:             var_1BC = (Left(var_E8, &H1B) + var_17C)
  loc_1BB971C:             Print 1, IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00")
  loc_1BB9760:             var_13C = (Chr(&HF) + "***  ")
  loc_1BB9767:             var_17C = Left(var_E8, &H1B) & Trim(var_CC) 
  loc_1BB9776:             Print 1, var_17C & "  ***"
  loc_1BB97D1:             var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB97DF:             unk_5921DC.Execute CStr(var_160), var_17C, -1
  loc_1BB9840:             If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB9871:               Call Proc_251_96_10ACF40(Proc_6_45_EAD428("Changed KOT", &H14, var_188), "D", &H28, var_2FC)
  loc_1BB987B:               Print 1, var_2FC
  loc_1BB9891:             Else
  loc_1BB98E7:               unk_5921DC.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB9945:               If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1BB995B:                 var_300 = Proc_6_45_EAD428("DUPLICATE KOT", &H14)
  loc_1BB9976:                 Call Proc_251_96_10ACF40(var_300, "D", &H28)
  loc_1BB9980:                 Print 1, var_2FC
  loc_1BB9996:               Else
  loc_1BB9998:                 Print 1
  loc_1BB999E:               End If
  loc_1BB999E:             End If
  loc_1BB99A3:             Set var_E4 = Nothing
  loc_1BB99BB:             var_13C = (Chr(&HF) + "** ")
  loc_1BB99C5:             var_160 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1BB99CE:             var_17C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BB99D4:             Print 1, var_17C
  loc_1BB99E8:             var_B8.MoveNext
  loc_1BB99EF:             Print 1
  loc_1BB99F7:             Print 1
  loc_1BB99FF:             Print 1
  loc_1BB9A07:             Print 1
  loc_1BB9A2D:             var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1BB9A33:             Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BB9A42:             GoTo loc_1BB89AA
  loc_1BB9A45:           End If
  loc_1BB9A47:           Close 1
  loc_1BB9A51:           If (var_D8 <> vbNullString) Then
  loc_1BB9A5B:             Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BB9A6B:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BB9A77:           Else
  loc_1BB9A83:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F923B4
  loc_1BB9A8C:           End If
  loc_1BB9A8E:           Close 1
  loc_1BB9A98:           If (MemVar_1F923B8 = "Y") Then
  loc_1BB9AB4:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BB9ABE:           Else
  loc_1BB9AD7:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BB9ADE:           End If
  loc_1BB9AE1:         Else
  loc_1BB9AEC:           If (var_1AC = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1BB9AF1:             Close 1
  loc_1BB9AFA:             Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BB9B01:             var_B8.MoveFirst
  loc_1BB9B06:             ' Referenced from:       1BBA9F9
  loc_1BB9B15:             If Not(var_B8.EOF) Then
  loc_1BB9B1A:               var_96 = 0
  loc_1BB9B55:               var_17C = 3
  loc_1BB9B9D:               var_184 = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_2FC)
  loc_1BB9C38:               var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_17C)) = "LAU") 'Variant
  loc_1BB9C42:               var_2F8 = IIf(var_2E8, IIf((var_184 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BB9C4B:               var_94 = CStr(var_2F8)
  loc_1BB9C8F:               If (var_96 = 0) Then
  loc_1BB9C94:                 Print 1
  loc_1BB9CC8:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BB9CD9:                 If (var_EC <> vbNullString) Then
  loc_1BB9D02:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BB9D08:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB9D1A:                 End If
  loc_1BB9D22:                 If (var_F0 <> vbNullString) Then
  loc_1BB9D4B:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BB9D51:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB9D63:                 End If
  loc_1BB9D6B:                 If (var_F4 <> vbNullString) Then
  loc_1BB9D94:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1BB9D9A:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB9DAC:                 End If
  loc_1BB9DB4:                 If (var_F8 <> vbNullString) Then
  loc_1BB9DDD:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1BB9DE3:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB9DF5:                 End If
  loc_1BB9DF7:                 Print 1
  loc_1BB9E3B:                 Call Proc_251_96_10ACF40(Proc_6_45_EAD428(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1BB9E45:                 Print 1, var_300
  loc_1BB9E83:                 Call Proc_251_96_10ACF40(Proc_6_45_EAD428(var_94, &H14), "D", &H28)
  loc_1BB9E8D:                 Print 1, var_184
  loc_1BB9EA5:                 Print 1
  loc_1BB9EAD:                 Print 1
  loc_1BB9EE6:                 Proc_6_39_E7C810(var_17C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB9F08:                 var_13C = (Chr(&HF) + "KOT No.   :       ")
  loc_1BB9F12:                 var_1CC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_17C), &HA, var_184)))
  loc_1BB9F18:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C))
  loc_1BB9FCA:                 var_13C = (Chr(&HF) + "KOT Dt.   :       ")
  loc_1BB9FD1:                 var_17C = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")))), &HC)) 'String
  loc_1BB9FD4:                 var_1BC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + var_17C)
  loc_1BB9FDD:                 var_1CC = (CVar(Proc_6_45_EAD428(CStr(var_17C), &HA, Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME")))))) + " ")
  loc_1BB9FE7:                 var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BB9FED:                 Print 1, "* NC LOT *"
  loc_1BBA042:                 var_16C = var_B8.Fields.Item("Remarks")
  loc_1BBA07F:                 var_13C = (Chr(&HF) + "Remarks :       ")
  loc_1BBA089:                 var_1BC = (CVar(Proc_6_45_EAD428(var_F8, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32)))
  loc_1BBA090:                 var_1DC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32))), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H32))) + Chr(&H12))
  loc_1BBA096:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BBA0CF:                 Set var_164 = Me.Label1
  loc_1BBA0D5:                 Call 0.Method_Proc_251_83_1BBBC380 (2, var_16C)
  loc_1BBA126:                 var_2FC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BBA146:                 var_1BC = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BBA14F:                 var_1CC = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA))) + ":       ")
  loc_1BBA159:                 var_220 = (Chr(&H12) + CVar(Proc_6_45_EAD428(var_2FC, 5)))
  loc_1BBA15F:                 Print 1, "* NC LOT *"
  loc_1BBA1A4:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBA1AA:                 Print 1, CVar(var_16C)
  loc_1BBA1B7:               End If
  loc_1BBA1DD:               var_160 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1BBA1E9:               var_180 = "Qty"
  loc_1BBA1F7:               var_1BC = (Trim(CVar(var_16C)) + CVar(Proc_6_52_EAD4F4(var_180, 6)))
  loc_1BBA1FC:               var_B0 = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_180, 6))), &HA, Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA))))
  loc_1BBA229:               var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BBA22F:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BBA252:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBA258:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1BBA26B:               var_96 = (var_96 + 4)
  loc_1BBA271:               var_BC.MoveFirst
  loc_1BBA276:               ' Referenced from:       1BBA617
  loc_1BBA285:               If Not(var_BC.EOF) Then
  loc_1BBA2BE:                 var_188 = var_BC.Fields
  loc_1BBA2D5:                 Proc_6_39_E7C810(Chr(&H12), CVar(var_188.Item("qty")))
  loc_1BBA378:                 var_17C = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BBA391:                 var_240 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_180, 6)))))
  loc_1BBA3A7:                 var_2F8 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BBA3AA:                 var_334 = (&H12 + var_2F8)
  loc_1BBA403:                 var_13C = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BBA409:                 Print 1, Space(3)
  loc_1BBA41C:                 var_96 = (var_96 + 1)
  loc_1BBA458:                 If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BBA49B:                   var_13C = (Chr(&HF) + "(")
  loc_1BBA4A5:                   var_1BC = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BBA4AE:                   var_1CC = (CVar(var_188.Item("qty")) + ")")
  loc_1BBA4B4:                   Print 1, Chr(&H12)
  loc_1BBA4D5:                   var_96 = (var_96 + 1)
  loc_1BBA4D8:                 End If
  loc_1BBA4E2:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1BBA4FB:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBA501:                   Print 1, Space(3)
  loc_1BBA513:                   Print 1, "Contd."
  loc_1BBA52B:                   Print 1, Chr(&HC)
  loc_1BBA53A:                   var_98 = (var_98 + 1)
  loc_1BBA550:                   Call Proc_251_97_120255C(1, 0, &H28, var_306)
  loc_1BBA56F:                   Call Proc_251_96_10ACF40(var_94, "B", &H28, var_180, var_306)
  loc_1BBA579:                   Print 1, var_180
  loc_1BBA588:                   var_96 = &H12
  loc_1BBA5A1:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBA5A7:                   Print 1, Space(3)
  loc_1BBA5CA:                   var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BBA5D0:                   Print 1, Space(3)
  loc_1BBA5F3:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBA5F9:                   Print 1, Space(3)
  loc_1BBA60C:                   var_96 = (var_96 + 4)
  loc_1BBA60F:                 End If
  loc_1BBA612:                 var_BC.MoveNext
  loc_1BBA617:                 GoTo loc_1BBA276
  loc_1BBA61A:               End If
  loc_1BBA624:               If (var_96 < (&H45 - var_AA)) Then
  loc_1BBA627:                 ' Referenced from:       1BBA648
  loc_1BBA631:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1BBA639:                   Print 1, vbNullString
  loc_1BBA645:                   var_96 = (var_96 + 1)
  loc_1BBA648:                   GoTo loc_1BBA627
  loc_1BBA64B:                 End If
  loc_1BBA64B:               End If
  loc_1BBA661:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBA667:               Print 1, Space(3)
  loc_1BBA6BD:               var_184 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)
  loc_1BBA6C8:               var_13C = (Chr(&HF) + "Waiter Name  :       ")
  loc_1BBA6D2:               var_1BC = (Space(3) + CVar(var_184))
  loc_1BBA6D8:               Print 1, CVar(var_188.Item("qty"))
  loc_1BBA71C:               var_13C = (Chr(&HF) + "***  ")
  loc_1BBA723:               var_17C = Space(3) & Trim(var_CC) 
  loc_1BBA732:               Print 1, var_17C & "  ***"
  loc_1BBA78D:               var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BBA79B:               unk_5921DC.Execute CStr(var_160), var_17C, -1
  loc_1BBA7FC:               If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BBA82D:                 Call Proc_251_96_10ACF40(Proc_6_45_EAD428("Changed KOT", &H14, var_188), "D", &H28, var_2FC)
  loc_1BBA837:                 Print 1, var_2FC
  loc_1BBA84D:               Else
  loc_1BBA8A3:                 unk_5921DC.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BBA901:                 If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1BBA932:                   Call Proc_251_96_10ACF40(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1BBA93C:                   Print 1, var_2FC
  loc_1BBA952:                 Else
  loc_1BBA954:                   Print 1
  loc_1BBA95A:                 End If
  loc_1BBA95A:               End If
  loc_1BBA95F:               Set var_E4 = Nothing
  loc_1BBA977:               var_13C = (Chr(&HF) + "** ")
  loc_1BBA981:               var_160 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1BBA98A:               var_17C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BBA990:               Print 1, var_17C
  loc_1BBA9A4:               var_B8.MoveNext
  loc_1BBA9AB:               Print 1
  loc_1BBA9B3:               Print 1
  loc_1BBA9BB:               Print 1
  loc_1BBA9C3:               Print 1
  loc_1BBA9CB:               Print 1
  loc_1BBA9D3:               Print 1
  loc_1BBA9DB:               Print 1
  loc_1BBA9E3:               Print 1
  loc_1BBA9EB:               Print 1
  loc_1BBA9F3:               Print 1
  loc_1BBA9F9:               GoTo loc_1BB9B06
  loc_1BBA9FC:             End If
  loc_1BBA9FE:             Close 1
  loc_1BBAA08:             If (var_D8 <> vbNullString) Then
  loc_1BBAA12:               Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BBAA22:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BBAA2E:             Else
  loc_1BBAA3A:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F923B4
  loc_1BBAA43:             End If
  loc_1BBAA45:             Close 1
  loc_1BBAA4F:             If (MemVar_1F923B8 = "Y") Then
  loc_1BBAA6B:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BBAA75:             Else
  loc_1BBAA8E:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BBAA95:             End If
  loc_1BBAA98:           Else
  loc_1BBAAA3:             If (var_1AC = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1BBAAA8:               Close 1
  loc_1BBAAB1:               Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BBAAB8:               var_B8.MoveFirst
  loc_1BBAABD:               ' Referenced from:         1BBBAEF
  loc_1BBAACC:               If Not(var_B8.EOF) Then
  loc_1BBAAD1:                 var_96 = 0
  loc_1BBABEF:                 var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1BBABF9:                 var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BBAC02:                 var_94 = CStr(var_2F8)
  loc_1BBAC6E:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1BBAC7D:                 If (var_96 = 0) Then
  loc_1BBAC82:                   Print 1
  loc_1BBAC90:                   If (var_EC <> vbNullString) Then
  loc_1BBACB9:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_EC, &H28)))
  loc_1BBACBF:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBACD1:                   End If
  loc_1BBACD9:                   If (var_F0 <> vbNullString) Then
  loc_1BBAD02:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1BBAD08:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBAD1A:                   End If
  loc_1BBAD22:                   If (var_F4 <> vbNullString) Then
  loc_1BBAD4B:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1BBAD51:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBAD63:                   End If
  loc_1BBAD6B:                   If (var_F8 <> vbNullString) Then
  loc_1BBAD94:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1BBAD9A:                     Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBADAC:                   End If
  loc_1BBADAE:                   Print 1
  loc_1BBADDD:                   var_1BC = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BBADEF:                   var_1DC = Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3) / 2)))
  loc_1BBAE20:                   var_2D8 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BBAE32:                   var_2F8 = Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *") / 2)))
  loc_1BBAE4A:                   var_1F0 = (Chr(&HF) + var_1DC)
  loc_1BBAE51:                   var_250 = (CVar(var_B8.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1BBAE58:                   var_334 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *") + var_2F8)
  loc_1BBAE5F:                   var_358 = (IIf((var_BC.Fields.Item(2).Value = (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1BBAE65:                   Print 1, var_358
  loc_1BBAEB3:                   var_17C = (42 - Len(Trim(var_94)))
  loc_1BBAEE6:                   var_250 = (42 - Len(Trim(var_94)))
  loc_1BBAEEF:                   var_278 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *") / 2)
  loc_1BBAF10:                   var_1DC = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1BBAF1A:                   var_1F0 = (var_1DC + CVar(var_94))
  loc_1BBAF21:                   var_2C8 = (CVar(var_B8.Fields.Item("NCKOT")) + Space(CLng(var_278)))
  loc_1BBAF28:                   var_2E8 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1BBAF2E:                   Print 1, (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1BBAF52:                   Print 1
  loc_1BBAF5A:                   Print 1
  loc_1BBAF93:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")))
  loc_1BBAFC2:                   var_13C = (Chr(&HF) + "KOT No.   :         ")
  loc_1BBAFCC:                   var_1CC = (Trim(var_94) + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)))
  loc_1BBAFD3:                   var_1F0 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1BBAFD9:                   Print 1, CVar(var_B8.Fields.Item("NCKOT"))
  loc_1BBB09C:                   var_13C = (Chr(&HF) + "KOT Dt.   :         ")
  loc_1BBB0A6:                   var_1BC = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)))
  loc_1BBB0AF:                   var_1CC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + " ")
  loc_1BBB0B9:                   var_220 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BBB0C0:                   var_250 = (Trim(var_94) + Chr(&H12))
  loc_1BBB0C6:                   Print 1, IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)) = "Y"), "* NC LOT *", "* LOT *")
  loc_1BBB11F:                   var_16C = var_B8.Fields.Item("Remarks")
  loc_1BBB15C:                   var_13C = (Chr(&HF) + "Remarks :         ")
  loc_1BBB166:                   var_1BC = (Trim(var_94) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_16C)), &H20)))
  loc_1BBB16D:                   var_1DC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + Chr(&H12))
  loc_1BBB173:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BBB1AC:                   Set var_164 = Me.Label1
  loc_1BBB1B2:                   Call 0.Method_Proc_251_83_1BBBC380 (2, var_16C)
  loc_1BBB1D8:                   var_2FC = Proc_6_45_EAD428(CStr(Trim(CVar(var_16C))), &HA)
  loc_1BBB24D:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BBB27E:                   var_1BC = (Chr(&HF) + CVar(var_2FC))
  loc_1BBB287:                   var_1CC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + ":         ")
  loc_1BBB291:                   var_220 = (Chr(&H12) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BBB298:                   var_250 = (Trim(var_94) + Space(&HA))
  loc_1BBB2A1:                   var_278 = (IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), var_2FC) = "Y"), "* NC LOT *", "* LOT *") + "Covers:         ")
  loc_1BBB2AB:                   var_2E8 = (var_278 + CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), 7)))
  loc_1BBB2B2:                   var_334 = ((IIf((Proc_6_38_E68A98(CVar(var_B8.Fields.Item("NCKOT")), &H12) = "Y"), "* NC KOT *", "* KOT *") / 2) + Chr(&H12))
  loc_1BBB2B8:                   Print 1, IIf((var_BC.Fields.Item("GuarAtt").Value = var_94), "Void", vbNullString)
  loc_1BBB324:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBB32B:                   var_17C = (CVar(var_16C) + Chr(&H12))
  loc_1BBB331:                   Print 1, CVar(var_2FC)
  loc_1BBB342:                 End If
  loc_1BBB368:                 var_160 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Space(3))
  loc_1BBB382:                 var_1BC = (Chr(&H12) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1BBB38E:                 var_1CC = Space(3)
  loc_1BBB396:                 var_1DC = (CVar(Proc_6_45_EAD428(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + var_1CC)
  loc_1BBB3B0:                 var_220 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1BBB3F9:                 var_13C = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1BBB400:                 var_17C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BBB406:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BBB43A:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBB441:                 var_17C = (CVar(Proc_6_45_EAD428("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BBB447:                 Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BBB45E:                 var_96 = (var_96 + 4)
  loc_1BBB464:                 var_BC.MoveFirst
  loc_1BBB469:                 ' Referenced from:         1BBB6F1
  loc_1BBB478:                 If Not(var_BC.EOF) Then
  loc_1BBB4B1:                   var_188 = var_BC.Fields
  loc_1BBB4C8:                   Proc_6_39_E7C810(var_1CC, CVar(var_188.Item("qty")))
  loc_1BBB513:                   Proc_6_39_E7C810(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1BBB522:                   var_200 = "0.00"
  loc_1BBB55D:                   var_17C = (CVar(Proc_6_45_EAD428(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1BBB576:                   var_240 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1CC, "0.00")), 6, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1BBB58A:                   var_278 = (Space(&HA) + Space(3))
  loc_1BBB5A3:                   var_334 = (&H12 + CVar(Proc_6_52_EAD4F4(CStr(Format(Len(Trim(CVar(Me.LblRest))), var_200)), 6, var_278)))
  loc_1BBB609:                   var_13C = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Rate").Value = var_200), "Void", vbNullString))))
  loc_1BBB610:                   var_17C = (Space(3) + Chr(&H12))
  loc_1BBB616:                   Print 1, CVar(Proc_6_52_EAD4F4("Qty", 6))
  loc_1BBB62D:                   var_96 = (var_96 + 1)
  loc_1BBB669:                   If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BBB6AC:                     var_13C = (Chr(&HF) + "(")
  loc_1BBB6B6:                     var_1BC = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description")))))
  loc_1BBB6BF:                     var_1CC = (CVar(var_188.Item("qty")) + ")")
  loc_1BBB6C5:                     Print 1, var_1CC
  loc_1BBB6E6:                     var_96 = (var_96 + 1)
  loc_1BBB6E9:                   End If
  loc_1BBB6EC:                   var_BC.MoveNext
  loc_1BBB6F1:                   GoTo loc_1BBB469
  loc_1BBB6F4:                 End If
  loc_1BBB717:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBB71E:                 var_17C = (Space(3) + Chr(&H12))
  loc_1BBB724:                 Print 1, CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Description"))))
  loc_1BBB796:                 var_13C = (Chr(&HF) + "Waiter Name  :         ")
  loc_1BBB7A0:                 var_1BC = (Space(3) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1BBB7A7:                 var_1DC = (CVar(var_188.Item("qty")) + Chr(&H12))
  loc_1BBB7AD:                 Print 1, "0.00"
  loc_1BBB7F5:                 var_1BC = Chr(&H12)
  loc_1BBB802:                 var_13C = (Chr(&HF) + "***  ")
  loc_1BBB809:                 var_17C = Space(3) & Trim(var_CC) 
  loc_1BBB815:                 var_1CC = ("  ***" + var_1BC)
  loc_1BBB81F:                 Print 1, var_17C & Chr(&H12)
  loc_1BBB87E:                 var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BBB88C:                 unk_5921DC.Execute CStr(var_160), var_17C, -1
  loc_1BBB8ED:                 If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BBB91E:                   Call Proc_251_96_10ACF40(Proc_6_45_EAD428("Changed KOT", &H14), "D", &H28)
  loc_1BBB928:                   Print 1, var_2FC
  loc_1BBB93E:                 Else
  loc_1BBB994:                   unk_5921DC.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BBB9F2:                   If (Proc_6_38_E68A98(CVar(var_188.Fields.Item(0)), var_188, var_2FC) = "Y") Then
  loc_1BBBA23:                     Call Proc_251_96_10ACF40(Proc_6_45_EAD428("DUPLICATE KOT", &H14), "D", &H28)
  loc_1BBBA2D:                     Print 1, var_2FC
  loc_1BBBA43:                   Else
  loc_1BBBA45:                     Print 1
  loc_1BBBA4B:                   End If
  loc_1BBBA4B:                 End If
  loc_1BBBA50:                 Set var_E4 = Nothing
  loc_1BBBA68:                 var_13C = (Chr(&HF) + "** ")
  loc_1BBBA72:                 var_160 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F9221C))
  loc_1BBBA7B:                 var_17C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BBBA81:                 Print 1, var_17C
  loc_1BBBA95:                 var_B8.MoveNext
  loc_1BBBA9C:                 Print 1
  loc_1BBBAA4:                 Print 1
  loc_1BBBAAC:                 Print 1
  loc_1BBBAB4:                 Print 1
  loc_1BBBADA:                 var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1BBBAE0:                 Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BBBAEF:                 GoTo loc_1BBAABD
  loc_1BBBAF2:               End If
  loc_1BBBAF4:               Close 1
  loc_1BBBAFE:               If (var_D8 <> vbNullString) Then
  loc_1BBBB08:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BBBB18:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BBBB24:               Else
  loc_1BBBB2B:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BBBB3B:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F923B4
  loc_1BBBB44:               End If
  loc_1BBBB46:               Close 1
  loc_1BBBB50:               If (MemVar_1F923B8 = "Y") Then
  loc_1BBBB6C:                 var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BBBB76:               Else
  loc_1BBBB8F:                 var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BBBB96:               End If
  loc_1BBBB96:             End If
  loc_1BBBB96:           End If
  loc_1BBBB96:         End If
  loc_1BBBB96:       End If
  loc_1BBBB96:     End If
  loc_1BBBB99:   Else
  loc_1BBBBE3:     MsgBox("Please Check Printer Setting of Central KOT For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_17C, var_1BC, Chr(&H12))
  loc_1BBBBFE:   End If
  loc_1BBBC01:   var_C0.MoveNext
  loc_1BBBC06:   GoTo loc_1BB6B83
  loc_1BBBC09: End If
  loc_1BBBC0E: Set var_B8 = Nothing
  loc_1BBBC16: Set var_BC = Nothing
  loc_1BBBC1E: Set var_C0 = Nothing
  loc_1BBBC26: Proc_251_83_1BBBC38 = &HFF
  loc_1BBBC2C: ' Referenced from: 1BB66E4
  loc_1BBBC2C: Proc_6_60_E62BC4(var_2FC, var_188)
  loc_1BBBC31: Proc_251_83_1BBBC38 = var_200
End Sub

Public Sub Proc_251_84_EFA11C(arg_C) 'EFA11C
  'Data Table: 5921C0
  Dim var_8C As Recordset15
  loc_EFA045: Set var_8C = arg_C 
  loc_EFA06D: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EFA099: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EFA0C5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EFA0D5: var_8C.CursorType = 3
  loc_EFA0E2: var_8C.LockType = 3
  loc_EFA101: var_8C.Open var_A0, var_B0, -1
  loc_EFA108: Set var_8C = Nothing 
  loc_EFA10F: Set var_88 = arg_C 
  loc_EFA113: Proc_251_84_EFA11C = -1
End Sub

Public Sub Proc_251_85_F13DD4(arg_C, arg_10, arg_14, arg_18) 'F13DD4
  'Data Table: 5921C0
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F13CE3: Set var_88 = arg_C 
  loc_F13CF2: var_88.AddNew var_98, var_A8
  loc_F13D2A: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F13D6C: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F13D7E: var_98 = arg_18
  loc_F13D92: var_A8 = "Mark"
  loc_F13DAE: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F13DC8: var_88.Update var_98, var_A8
  loc_F13DCF: Set var_88 = Nothing 
  loc_F13DD3: Exit Sub
End Sub

Public Sub Proc_251_86_157295C
  'Data Table: 5921C0
  Dim var_D0 As String
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim unk_5921DC As Connection15
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
  loc_15718FC: On Error Goto loc_1572956
  loc_1571902: MemVar_1F923C0 = "N"
  loc_1571909: MemVar_1F923C4 = "N"
  loc_1571910: MemVar_1F923C8 = "K"
  loc_157191B: var_D0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_1571960: var_88 = CStr(CVar(var_D0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_157197F: var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15719BD: var_8C = CStr(var_108 & Me.Fields.Item("SearchCode").Value & "'")
  loc_15719E6: var_108 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1571A06: var_E8 = Me.Fields.Item("SearchCode")
  loc_1571A23: var_D0 = CStr(var_108 & var_E8.Value & "'")
  loc_1571A2D: unk_5921DC.Execute var_D0, var_158, -1
  loc_1571A38: Set var_BC = var_15C
  loc_1571A5C: If (var_88 = vbNullString) Then
  loc_1571A5F:   Exit Sub
  loc_1571A60: End If
  loc_1571A68: If (var_8C = vbNullString) Then
  loc_1571A6B:   Exit Sub
  loc_1571A6C: End If
  loc_1571A8A: Set var_D4 = Me.Txt
  loc_1571A90: Call 0.Method_Proc_251_86_157295C0 (CInt(4), var_E8, var_D0, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_1571A98: var_F8 = var_E8.Text
  loc_1571AA1: var_160 = -1 & var_D0
  loc_1571AB1: unk_5921DC.Execute var_160 & "' AND CONTRADOCID IS NULL", var_15C, var_15C
  loc_1571AE8: If (var_15C.RecordCount = 1) Then
  loc_1571AEE:   var_C8 = "New Order"
  loc_1571AF4: Else
  loc_1571AFB:   Set var_D4 = Me.LblState
  loc_1571B09:   var_C8 = var_D4.Caption
  loc_1571B0F: End If
  loc_1571B25: unk_5921DC.Execute var_88, var_F8, -1
  loc_1571B30: Set var_B4 = var_D4
  loc_1571B39: ' Referenced from: 157293A
  loc_1571B48: If Not(var_BC.EOF) Then
  loc_1571B61:   unk_5921DC.Execute "SELECT KOTPrinting FROM Enviro", var_F8, -1
  loc_1571B84:   var_D4 = var_D4.Fields
  loc_1571BBF:   If (Trim(CVar(Proc_6_38_E68A98(CVar(var_D4.Item("KOTPrinting")), var_D4))) = "Seperate for All Kitchen") Then
  loc_1571BC9:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1571C42:     var_1C0 = var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1571C7E:     var_8C = CStr(var_1C0 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_1571CAC:   Else
  loc_1571CB3:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1571CCB:     var_D4 = Me.Fields
  loc_1571CDB:     var_F8 = var_D4.Item("SearchCode").Value
  loc_1571CEC:     var_138 = var_108 & var_F8 & "' and K.VoidYN<>'Y'" 
  loc_1571CF1:     var_8C = CStr(var_138)
  loc_1571D06:   End If
  loc_1571D1C:   unk_5921DC.Execute var_8C, var_F8, -1
  loc_1571D27:   Set var_B8 = var_D4
  loc_1571D44:   If (var_B8.RecordCount > 0) Then
  loc_1571D49:     Close 1
  loc_1571D62:     var_160 = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition)
  loc_1571D70:     Open var_160 & ".TXT" For Output As 1 Len = &HFF
  loc_1571D80:     var_B4.MoveFirst
  loc_1571D85:     ' Referenced from: 157271D
  loc_1571D94:     If Not(var_B4.EOF) Then
  loc_1571DA4:       var_90 = "* KOT *"
  loc_1571DAD:       If (0 = 0) Then
  loc_1571DB2:         Print 1
  loc_1571DE6:         var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1571E19:         Call Proc_251_96_10ACF40(Me.LblRest.Caption, "D", &H28, var_21C)
  loc_1571E23:         Print 1, var_21C
  loc_1571E49:         Call Proc_251_96_10ACF40(var_90, "D", &H28, var_160)
  loc_1571E53:         Print 1, var_160
  loc_1571E62:         var_92 = &H12
  loc_1571E67:         Print 1
  loc_1571E6F:         Print 1
  loc_1571EA8:         Proc_6_39_E7C810(var_138, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_1571ECA:         var_108 = (Chr(&HF) + "KOT No.   : ")
  loc_1571ED4:         var_180 = (var_108 + CVar(Proc_6_45_EAD428(CStr(var_138), &HA, var_92)))
  loc_1571EDA:         Print 1, var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value
  loc_1571F15:         var_D4 = var_B4.Fields
  loc_1571F8C:         var_108 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1571F96:         var_158 = (var_108 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_D4.Item("VDate")), var_D4), &HC)))
  loc_1571F9F:         var_180 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_D4.Item("VDate")), var_D4), &HC))), &HA, var_92)) + " ")
  loc_1571FA9:         var_1E8 = (var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1571FAF:         Print 1, var_BC.Fields.Item("Code").Value
  loc_1572004:         var_E8 = var_B4.Fields.Item("Remarks")
  loc_1572041:         var_108 = (Chr(&HF) + "Remarks : ")
  loc_157204B:         var_158 = (var_108 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8)), &H32)))
  loc_1572052:         var_1A0 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E8)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_1572058:         Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1572091:         Set var_D4 = Me.Label1
  loc_1572097:         Call 0.Method_Proc_251_86_157295C0 (2, var_E8)
  loc_157212C:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_E8))), &HA)))
  loc_1572135:         var_180 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(Trim(CVar(var_E8))), &HA))), &HA, var_92)) + ": ")
  loc_157213C:         var_218 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_157213F:         var_238 = (Chr(&H12) + var_218)
  loc_1572145:         Print 1, var_238
  loc_1572190:         var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1572196:         Print 1, CVar(var_E8)
  loc_15721A3:       End If
  loc_15721C9:       var_118 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_15721D5:       var_160 = "Qty"
  loc_15721E3:       var_158 = (1 + CVar(Proc_6_52_EAD4F4(var_160, 6, Trim(CVar(var_E8)))))
  loc_15721E8:       var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_160, 6, Trim(CVar(var_E8))))), &HA, var_92)))
  loc_1572215:       var_108 = (Chr(&HF) + CVar(var_AC))
  loc_157221B:       Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_157223E:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1572244:       Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1572257:       var_92 = (var_92 + 4)
  loc_157225D:       var_B8.MoveFirst
  loc_1572262:       ' Referenced from: 15725A7
  loc_1572271:       If Not(var_B8.EOF) Then
  loc_15722C1:         Proc_6_39_E7C810(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_157238B:         var_300 = IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", IIf((var_B8.Fields.Item("Cancel").Value = "F"), "Free", vbNullString))
  loc_15723B5:         var_138 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_15723CB:         var_1E8 = CVar(Proc_6_52_EAD4F4(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_160, 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_15723CE:         var_1F8 = (1 + var_1E8)
  loc_15723E4:         var_314 = CVar(Proc_6_52_EAD4F4(CStr(var_300), 6, Format(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("TableNo")))), "000"))) 'String
  loc_15723E7:         var_324 = (var_92 + var_314)
  loc_157244C:         var_108 = (Chr(&HF) + CVar(CStr(var_324)))
  loc_1572452:         Print 1, Space(3)
  loc_1572465:         var_92 = (var_92 + 1)
  loc_1572472:         If (var_92 = (&H45 - var_A6)) Then
  loc_157248B:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1572491:           Print 1, Space(3)
  loc_15724A3:           Print 1, "Contd."
  loc_15724BB:           Print 1, Chr(&HC)
  loc_15724CA:           var_94 = (var_94 + 1)
  loc_15724E0:           Call Proc_251_97_120255C(1, 0, &H28, var_21E)
  loc_15724FF:           Call Proc_251_96_10ACF40(var_90, "B", &H28, var_160, var_21E)
  loc_1572509:           Print 1, var_160
  loc_1572518:           var_92 = &H12
  loc_1572531:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1572537:           Print 1, Space(3)
  loc_157255A:           var_108 = (Chr(&HF) + CVar(var_AC))
  loc_1572560:           Print 1, Space(3)
  loc_1572583:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1572589:           Print 1, Space(3)
  loc_157259C:           var_92 = (var_92 + 4)
  loc_157259F:         End If
  loc_15725A2:         var_B8.MoveNext
  loc_15725A7:         GoTo loc_1572262
  loc_15725AA:       End If
  loc_15725B4:       If (var_92 < (&H45 - var_A6)) Then
  loc_15725B7:         ' Referenced from: 15725D8
  loc_15725C1:         If (var_92 = (&H45 - var_A6)) Then
  loc_15725C9:           Print 1, vbNullString
  loc_15725D5:           var_92 = (var_92 + 1)
  loc_15725D8:           GoTo loc_15725B7
  loc_15725DB:         End If
  loc_15725DB:       End If
  loc_15725F1:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_15725F7:       Print 1, Space(3)
  loc_1572658:       var_108 = (Chr(&HF) + "Waiter Name  : ")
  loc_157265F:       var_138 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1572662:       var_158 = (Space(3) + var_138)
  loc_1572668:       Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_15726AC:       var_108 = (Chr(&HF) + "***  ")
  loc_15726B3:       var_138 = Space(3) & Trim(var_C8) 
  loc_15726BC:       var_158 = var_138 & "  ***" 
  loc_15726C2:       Print 1, var_158
  loc_15726D7:       Print 1
  loc_15726F2:       var_108 = (Chr(&HF) + "** A Analysis Software **")
  loc_15726F8:       Print 1, Space(3)
  loc_1572708:       var_B4.MoveNext
  loc_157270F:       Print 1
  loc_1572717:       Print 1
  loc_157271D:       GoTo loc_1571D85
  loc_1572720:     End If
  loc_1572722:     Close 1
  loc_157275D:     If (Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Printer")), 1) <> vbNullString) Then
  loc_1572785:       Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_15727E3:       Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_1572803:     Else
  loc_157282D:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_157283E:     End If
  loc_1572840:     Close 1
  loc_157284A:     If (MemVar_1F923B8 = "Y") Then
  loc_157287C:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_157288D:     Else
  loc_15728BC:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_15728CA:     End If
  loc_15728CD:   Else
  loc_1572917:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_138, var_158, Chr(&H12))
  loc_1572932:   End If
  loc_1572935:   var_BC.MoveNext
  loc_157293A:   GoTo loc_1571B39
  loc_157293D: End If
  loc_1572942: Set var_B4 = Nothing
  loc_157294A: Set var_B8 = Nothing
  loc_1572952: Set var_BC = Nothing
  loc_1572955: Exit Sub
  loc_1572956: ' Referenced from: 15718FC
  loc_1572956: Proc_6_60_E62BC4(var_92)
  loc_157295B: Exit Sub
End Sub

Public Sub Proc_251_87_16D2A60
  'Data Table: 5921C0
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As String
  Dim unk_5921DC As Connection15
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
  loc_16D1084: On Error Goto loc_16D2A5A
  loc_16D1096: Me.FGrid1.Visible = False
  loc_16D10AA: Me.LblPendingKot.Visible = False
  loc_16D10C9: If (Me.RecordCount > 0) Then
  loc_16D110B:   var_E4 = "Select K.*,R.name as RName From KOT K left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo Where K.Docid='" & Me.Fields.Item("DocID").Value 
  loc_16D1122:   unk_5921DC.Execute CStr(var_E4 & "' order by K.Sno"), var_128, -1
  loc_16D112D:   Set var_AC = var_12C
  loc_16D114A:   Set var_130 = var_AC 
  loc_16D1187:   Set var_12C = Me.Txt
  loc_16D118D:   Call 0.Method_Proc_251_87_16D2A600 (CInt(3), var_134)
  loc_16D1195:   var_134.Text = CStr(var_130.Fields.Item("DocID").Value)
  loc_16D11C5:   var_C4 = var_130.Fields.Item("vType")
  loc_16D11CD:   var_D4 = var_C4.Value
  loc_16D11F3:   var_A4 = 0
  loc_16D1225:   var_140 = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='"
  loc_16D123F:   unk_5921DC.Execute var_140 & CStr(var_D4) & "'", var_D4, -1
  loc_16D1247:   var_A8 = var_A8.Fields
  loc_16D124F:   var_A4 = var_C4.Item(var_C4)
  loc_16D1257:   var_12C = var_12C.Value
  loc_16D1266:   global_260 = CStr(var_E4)
  loc_16D12C4:   Set var_12C = Me.Txt
  loc_16D12CA:   Call 0.Method_Proc_251_87_16D2A600 (CInt(0), var_134, CStr(var_130.Fields.Item("VNo").Value))
  loc_16D12D2:   var_134.Text = var_E4
  loc_16D1313:   var_E4 = "DD/MMM/YYYY"
  loc_16D133A:   Set var_12C = Me.Txt
  loc_16D1340:   Call 0.Method_Proc_251_87_16D2A600 (CInt(1), var_134, CStr(Format(CVar(var_130.Fields.Item("VDate")), var_E4)))
  loc_16D1348:   var_134.Text = 1
  loc_16D139A:   Me.LblVPrefix.Caption = CStr(var_130.Fields.Item("vPrefix").Value)
  loc_16D13E4:   Set var_12C = Me.Txt
  loc_16D13EA:   Call 0.Method_Proc_251_87_16D2A600 (CInt(6), var_134)
  loc_16D13F2:   var_134.Text = Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Remarks")), 1)
  loc_16D1442:   If (var_130.Fields.Item("Pending").Value = "Y") Then
  loc_16D1452:     Me.LblState.Caption = "Running Order"
  loc_16D145D:   Else
  loc_16D146A:     Me.LblState.Caption = "Completed Order"
  loc_16D1472:   End If
  loc_16D14AA:   var_108 = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='", var_E4)
  loc_16D14AE:   var_138 = -1 & var_108
  loc_16D14BE:   unk_5921DC.Execute "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "'", var_12C, var_12C
  loc_16D14C9:   Set var_B0 = var_12C
  loc_16D14F7:   If (var_B0.RecordCount > 0) Then
  loc_16D1533:     Set var_12C = Me.Txt
  loc_16D1539:     Call 0.Method_Proc_251_87_16D2A600 (CInt(&HB), var_134)
  loc_16D1541:     var_134.Tag = CStr(var_B0.Fields.Item(0).Value)
  loc_16D1590:     Set var_12C = Me.Txt
  loc_16D1596:     Call 0.Method_Proc_251_87_16D2A600 (CInt(&HB), var_134)
  loc_16D159E:     var_134.Text = CStr(var_B0.Fields.Item(1).Value)
  loc_16D15CE:     var_C4 = var_B0.Fields.Item(2)
  loc_16D15ED:     Set var_12C = Me.Txt
  loc_16D15F3:     Call 0.Method_Proc_251_87_16D2A600 (CInt(&HC), var_134)
  loc_16D15FB:     var_134.Text = CStr(var_C4.Value)
  loc_16D1614:   Else
  loc_16D1622:     Set var_A8 = Me.Txt
  loc_16D1628:     Call 0.Method_Proc_251_87_16D2A600 (CInt(&HB), var_C4)
  loc_16D1630:     var_C4.Tag = vbNullString
  loc_16D164A:     Set var_A8 = Me.Txt
  loc_16D1650:     Call 0.Method_Proc_251_87_16D2A600 (CInt(&HB), var_C4)
  loc_16D1658:     var_C4.Text = vbNullString
  loc_16D1672:     Set var_A8 = Me.Txt
  loc_16D1678:     Call 0.Method_Proc_251_87_16D2A600 (CInt(&HC), var_C4)
  loc_16D1680:     var_C4.Text = vbNullString
  loc_16D168C:   End If
  loc_16D16B4:   var_108 = Proc_6_38_E68A98(CVar(var_130.Fields.Item("Waiter")))
  loc_16D16C2:   Set var_12C = Me.Txt
  loc_16D16C8:   Call 0.Method_Proc_251_87_16D2A600 (CInt(5), var_134)
  loc_16D16D0:   var_134.Tag = var_108
  loc_16D1730:   var_C4 = var_130.Fields.Item("Waiter")
  loc_16D1752:   If CBool(var_C4.Value <> vbNullString) Then
  loc_16D1773:     Set var_A8 = Me.Txt
  loc_16D1779:     Call 0.Method_Proc_251_87_16D2A600 (CInt(5), var_C4, var_108, "Select Name From Waiter Where Code='")
  loc_16D1781:     var_D4 = var_C4.Tag
  loc_16D178A:     var_138 = -1 & var_108
  loc_16D1791:     var_13C = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "' and (code is not null or code <> '')"
  loc_16D179A:     unk_5921DC.Execute var_13C, var_12C, Proc_6_38_E68A98(CVar(var_130.Fields.Item("Waiter")))
  loc_16D17A5:     Set var_B8 = var_12C
  loc_16D17D1:     If (var_B8.RecordCount > 0) Then
  loc_16D180D:       Set var_12C = Me.Txt
  loc_16D1813:       Call 0.Method_Proc_251_87_16D2A600 (CInt(5), var_134)
  loc_16D181B:       var_134.Text = CStr(var_B8.Fields.Item("Name").Value)
  loc_16D1831:     End If
  loc_16D1836:     Set var_B8 = Nothing
  loc_16D1839:   End If
  loc_16D1850:   If ((global_144 = "TB") Or (global_144 = "RO")) Then
  loc_16D1889:     Set var_12C = Me.Txt
  loc_16D188F:     Call 0.Method_Proc_251_87_16D2A600 (CInt(4), var_134)
  loc_16D1897:     var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("RoomNo")))
  loc_16D18AE:   Else
  loc_16D18E4:     Set var_12C = Me.Txt
  loc_16D18EA:     Call 0.Method_Proc_251_87_16D2A600 (CInt(4), var_134)
  loc_16D18F2:     var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("RName")))
  loc_16D1906:   End If
  loc_16D1920:   var_C4 = var_130.Fields.Item("Pending")
  loc_16D1928:   var_D4 = var_C4.Value
  loc_16D1942:   If (var_D4 = "Y") Then
  loc_16D1983:     Set var_A8 = Me.Txt
  loc_16D1989:     Call 0.Method_Proc_251_87_16D2A600 (CInt(4), var_C4, "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='", "sELECT COUNT(DISTINCT VNO) FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_D4, -1)
  loc_16D19A1:     var_144 = var_134 & "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='" & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y')"
  loc_16D19AA:     unk_5921DC.Execute var_144, 0, var_150
  loc_16D19B2:     var_E4 = var_C4.Text.Fields
  loc_16D19BA:      = var_134.Item()
  loc_16D19C2:      = var_150.Value
  loc_16D19F3:     If (var_E4 = 1) Then
  loc_16D1A03:       Me.LblState.Caption = "New Order"
  loc_16D1A0E:     Else
  loc_16D1A1B:       Me.LblState.Caption = "Running Order"
  loc_16D1A23:     End If
  loc_16D1A26:   Else
  loc_16D1A33:     Me.LblState.Caption = "Completed Order"
  loc_16D1A3B:   End If
  loc_16D1A5A:   var_D4 = CVar(var_130.Fields.Item("GuarAtt")) 'Address
  loc_16D1A61:   Proc_6_39_E7C810(var_E4)
  loc_16D1A78:   Set var_12C = Me.Txt
  loc_16D1A7E:   Call 0.Method_Proc_251_87_16D2A600 (CInt(&HD), var_134)
  loc_16D1A86:   var_134.Text = CStr(var_E4)
  loc_16D1AB8:   var_C4 = var_130.Fields.Item("NCKOT")
  loc_16D1AF9:   Me.ChkNCKOT.Value = CInt(IIf((var_C4.Value = "Y"), 1, 0))
  loc_16D1B2F:   If (Me.ChkNCKOT.Value = 1) Then
  loc_16D1B3F:     Set var_A8 = Me.Txt
  loc_16D1B45:     Call 0.Method_Proc_251_87_16D2A600 (CInt(7), var_C4)
  loc_16D1B4D:     var_C4.Visible = True
  loc_16D1B64:     Set var_A8 = Me.Label1
  loc_16D1B6A:     Call 0.Method_Proc_251_87_16D2A600 (4, var_C4)
  loc_16D1B72:     var_C4.Visible = True
  loc_16D1B8A:     Me.Frame.Visible = False
  loc_16D1B9F:     Me.LblKotNm.Caption = "NC Kot"
  loc_16D1BAF:     Set var_A8 = Me.cmdNCBill
  loc_16D1BB5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_16D1BC0:   Else
  loc_16D1BCD:     Set var_A8 = Me.Txt
  loc_16D1BD3:     Call 0.Method_Proc_251_87_16D2A600 (CInt(7), var_C4)
  loc_16D1BDB:     var_C4.Visible = False
  loc_16D1BF2:     Set var_A8 = Me.Label1
  loc_16D1BF8:     Call 0.Method_Proc_251_87_16D2A600 (4, var_C4)
  loc_16D1C00:     var_C4.Visible = False
  loc_16D1C19:     Me.LblKotNm.Caption = "Standerd Kot"
  loc_16D1C2A:     Set var_A8 = Me.cmdNCBill
  loc_16D1C30:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_16D1C38:   End If
  loc_16D1C6E:   Set var_12C = Me.Txt
  loc_16D1C74:   Call 0.Method_Proc_251_87_16D2A600 (CInt(7), var_134)
  loc_16D1C7C:   var_134.Text = Proc_6_38_E68A98(CVar(var_130.Fields.Item("NCType")))
  loc_16D1D29:   var_128 = 1
  loc_16D1DA0:   Set var_12C = Me.Txt
  loc_16D1DA6:   Call 0.Method_Proc_251_87_16D2A600 (CInt(4), var_134, Proc_6_38_E68A98(CVar(var_130.Fields.Item("RoomNo")), CByte(IIf((var_130.Fields.Item("NCKOT").Value = "Y"), var_128, 0))))
  loc_16D1DAE:   var_134.Tag = CByte(IIf((var_130.Fields.Item("NCKOT").Value = "Y"), 1, 0))
  loc_16D1DED:   var_E4 = "hh:nn"
  loc_16D1E14:   Set var_12C = Me.Txt
  loc_16D1E1A:   Call 0.Method_Proc_251_87_16D2A600 (CInt(2), var_134, CStr(Format(CVar(var_130.Fields.Item("VTIME")), var_E4)))
  loc_16D1E22:   var_134.Text = 1
  loc_16D1E7C:   var_138 = CStr(var_130.Fields.Item("VTIME").Value)
  loc_16D1E84:   var_13C = Replace(var_138, ":", ".", 1, -1, 0)
  loc_16D1EB6:   var_148 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and " & CStr(Val("sELECT COUNT(DISTINCT VNO) FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='"))
  loc_16D1EC6:   unk_5921DC.Execute var_148 & " BETWEEN FromTime AND ToTime", var_E4, -1
  loc_16D1ED1:   Set var_B8 = var_12C
  loc_16D1EF7:   Set var_130 = Nothing 
  loc_16D1F0A:   Me.FGrid.Redraw = False
  loc_16D1F25:   Me.FGrid.Rows = 1
  loc_16D1F2F:   var_B2 = 1
  loc_16D1F3F:   var_A4 = "Select K1.*,I.name as ItemName,I.Unit,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (KOT K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Where K1.DocId='"
  loc_16D1F88:   unk_5921DC.Execute CStr(var_A4 & Me.Fields.Item("SearchCode").Value & "' order by K1.Sno"), var_128, -1
  loc_16D1F93:   Set var_AC = var_12C
  loc_16D1FC1:   If (var_AC.RecordCount > 0) Then
  loc_16D1FC4:     ' Referenced from: 16D250D
  loc_16D1FD3:     If Not(var_AC.EOF) Then
  loc_16D1FD6:       var_94 = vbNullString
  loc_16D1FE0:       Set var_A8 = Me.FGrid
  loc_16D1FF5:       Set var_180 = Me.FGrid
  loc_16D1FFC:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_16D2004:       var_118 = CVar(CLng(0)) 'Long
  loc_16D2034:       var_E4 = CVar(CStr(var_AC.Fields.Item("SNo").Value)) 'String
  loc_16D203B:       LateIdCallSt
  loc_16D2055:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_16D205D:       var_118 = CVar(CLng(&HA)) 'Long
  loc_16D208D:       var_E4 = CVar(CStr(var_AC.Fields.Item("Item").Value)) 'String
  loc_16D2094:       LateIdCallSt
  loc_16D20E3:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_B2)), var_180, var_E4, CVar(CLng(3)), CVar(CLng(var_B2)))) 'String
  loc_16D20EA:       LateIdCallSt
  loc_16D2135:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_B2)), var_180, var_E4, var_180)) 'String
  loc_16D213C:       LateIdCallSt
  loc_16D2187:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16D218E:       LateIdCallSt
  loc_16D21D9:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16D21E0:       LateIdCallSt
  loc_16D2212:       var_F4 = CVar(CLng(var_B2)) 'Long
  loc_16D221A:       var_190 = CVar(CLng(7)) 'Long
  loc_16D2247:       var_128 = CVar(CStr(Format(CVar(var_AC.Fields.Item("qty")), "0.00"))) 'String
  loc_16D224E:       LateIdCallSt
  loc_16D22B9:       var_128 = CVar(CStr(Format(CVar(var_AC.Fields.Item("Rate")), "0.00"))) 'String
  loc_16D22C0:       LateIdCallSt
  loc_16D22FE:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("VoidYN")), var_180, var_128, 1, 1, CVar(CLng(8)), CVar(CLng(var_B2)))) 'String
  loc_16D2320:       var_134 = var_AC.Fields.Item("VoidYN")
  loc_16D2340:       var_250 = CVar(CLng(var_B2)) 'Long
  loc_16D2348:       var_270 = CVar(CLng(9)) 'Long
  loc_16D2370:       var_1E0 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_134), var_180, var_128, 1))) = "Y") 'Variant
  loc_16D23B4:       LateIdCallSt
  loc_16D241B:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_B2)), var_180, CVar(CStr(IIf((Trim(var_E4) = "F"), "Free", IIf(var_1E0, "Cancel", vbNullString)))))) 'String
  loc_16D2422:       LateIdCallSt
  loc_16D246D:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16D2474:       LateIdCallSt
  loc_16D24BF:       var_E4 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16D24C6:       LateIdCallSt
  loc_16D24DC:       var_94 = CVar(CLng(var_B2)) 'Long
  loc_16D24EE:       LateIdCallSt
  loc_16D24F8:       Set var_180 = Nothing 
  loc_16D2502:       var_B2 = (var_B2 + 1)
  loc_16D2508:       var_AC.MoveNext
  loc_16D250D:       GoTo loc_16D1FC4
  loc_16D2510:     End If
  loc_16D2529:     var_94 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16D253C:     Set var_C4 = Me.FGrid
  loc_16D2542:     LateIdCallSt
  loc_16D2567:     Me.FGrid.FixedRows = 1
  loc_16D256F:   End If
  loc_16D257D:   Me.FGrid.Redraw = True
  loc_16D258B:   If (var_B2 = 1) Then
  loc_16D258E:     var_94 = 1
  loc_16D25A1:     Me.FGrid.Rows = var_94
  loc_16D25AD:     Set var_12C = Me.FGrid
  loc_16D25C7:     var_D4 = CVar(CStr(Proc_6_127_F24F80(var_12C, CInt(0), var_C4, global_104, var_94, var_B2, var_180, global_104))) 'String
  loc_16D25CF:     Set var_C4 = Me.FGrid
  loc_16D25F3:     var_D4 = Me.FGrid.Rows
  loc_16D2602:     var_94 = CVar((CLng(var_D4) - 1)) 'Long
  loc_16D2615:     Set var_C4 = Me.FGrid
  loc_16D261B:     LateIdCallSt
  loc_16D262D:     var_94 = 1
  loc_16D2640:     Me.FGrid.FixedRows = var_94
  loc_16D2648:   End If
  loc_16D2653:   If (LocalRestType = "Room Service") Then
  loc_16D2676:     If (Me.LblState.Caption = "Running Order") Then
  loc_16D268D:       var_108 = "SELECT RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest,GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3 FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_16D26A5:       Set var_A8 = Me.Txt
  loc_16D26AB:       Call 0.Method_Proc_251_87_16D2A600 (CInt(4), var_C4, var_138, var_108 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL and RC.RoomNo='", var_D4, -1, var_12C)
  loc_16D26B3:       var_C4 = var_C4.Tag
  loc_16D26CC:       unk_5921DC.Execute global_104 & var_138 & "'  Order by RC.ROOMNO", var_94, FGrid.DispID_10000
  loc_16D26D7:       Set var_BC = var_12C
  loc_16D26F6:     Else
  loc_16D2703:       var_A4 = "SELECT distinct GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, KOT.RoomNo, GuestProf.Name FROM  PayCharge INNER JOIN  KOT ON PayCharge.DocId = KOT.ContraDocId INNER JOIN   GuestProf ON PayCharge.GuestProf = GuestProf.Code WHERE (KOT.DocId = '"
  loc_16D270E:       var_94 = "DocID"
  loc_16D272D:       var_D4 = Me.Fields.Item(var_94).Value
  loc_16D2735:       var_E4 = var_A4 & var_D4 
  loc_16D2748:       var_128 = var_E4 & "') AND  KOT.ContraDocID<>'' AND (PayCharge.RoomType = 'RO') AND (PayCharge.PayCode = '" & CVar(MemVar_1F92078) 
  loc_16D2763:       Set var_12C = Me.Txt
  loc_16D2769:       Call 0.Method_Proc_251_87_16D2A600 (CInt(4), var_134, var_108, var_128 & "TOUT') AND  KOT.RoomNo='", var_1E0)
  loc_16D2771:       -1 = var_134.Tag
  loc_16D2779:       var_170 = CVar(var_108) 'String
  loc_16D2793:       unk_5921DC.Execute CStr(var_150 & var_170 & "'"), var_D4, var_94
  loc_16D279E:       Set var_BC = var_150
  loc_16D27C6:     End If
  loc_16D27DA:     If (var_BC.RecordCount > 0) Then
  loc_16D27DD:       ' Referenced from: 16D2910
  loc_16D27EE:       If (var_BC.EOF = 0) Then
  loc_16D282A:         Set var_12C = Me.Txt
  loc_16D2830:         Call 0.Method_Proc_251_87_16D2A600 (CInt(8), var_134)
  loc_16D2838:         var_134.Text = CStr(var_BC.Fields.Item("Comments1").Value)
  loc_16D2887:         Set var_12C = Me.Txt
  loc_16D288D:         Call 0.Method_Proc_251_87_16D2A600 (CInt(9), var_134)
  loc_16D2895:         var_134.Text = CStr(var_BC.Fields.Item("Comments2").Value)
  loc_16D28C5:         var_C4 = var_BC.Fields.Item("Comments3")
  loc_16D28CD:         var_D4 = var_C4.Value
  loc_16D28E4:         Set var_12C = Me.Txt
  loc_16D28EA:         Call 0.Method_Proc_251_87_16D2A600 (CInt(&HA), var_134)
  loc_16D28F2:         var_134.Text = CStr(var_D4)
  loc_16D290B:         var_BC.MoveNext
  loc_16D2910:         GoTo loc_16D27DD
  loc_16D2913:       End If
  loc_16D2913:     End If
  loc_16D2913:   End If
  loc_16D2916: Else
  loc_16D2916:   Call Proc_251_89_101FC6C(var_180)
  loc_16D2936:   var_138 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_16D294D:   var_A4 = 0
  loc_16D296D:   var_140 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_16D297D:   unk_5921DC.Execute global_104 & var_138 & "'", var_D4, -1
  loc_16D2985:   var_A8 = var_A8.Fields
  loc_16D298D:   var_A4 = var_C4.Item(var_C4)
  loc_16D2995:   var_12C = var_12C.Value
  loc_16D29B4:   unk_5921DC.Execute CStr(var_E4 & var_E4 & "' Order by Description"), CVar(var_138 & MemVar_1F92078 & "') and V_Type='"), var_170
  loc_16D29BF:   Set var_AC = var_134
  loc_16D29FF:   If (var_AC.RecordCount > 0) Then
  loc_16D2A33:     global_136 = CStr(var_AC.Fields.Item(0).Value)
  loc_16D2A44:   End If
  loc_16D2A44: End If
  loc_16D2A44: Call Proc_251_91_EF66C0(-1)
  loc_16D2A4E: Set var_AC = Nothing
  loc_16D2A56: Set var_BC = Nothing
  loc_16D2A59: Exit Sub
  loc_16D2A5A: ' Referenced from: 16D1084
  loc_16D2A5A: Proc_6_60_E62BC4(var_134)
  loc_16D2A5F: Exit Sub
End Sub

Public Sub Proc_251_88_104DD8C
  'Data Table: 5921C0
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_5921DC As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_F8 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_BC As Variant
  loc_104DB45: Set var_8C = Me.TopCtrl1
  loc_104DB4B: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005(&HFF)
  loc_104DB53: var_A0 = CStr()
  loc_104DB64: If (var_A0 = "Add") Then
  loc_104DB94:   Set var_8C = Me.Txt
  loc_104DB9A:   Call 0.Method_Proc_251_88_104DD8C0 (CInt(3), var_A4, var_A0, "Select Count(*) From KOT Where DocID='", var_9C, -1)
  loc_104DBBB:   unk_5921DC.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_104DBCB:    = var_C4.Item()
  loc_104DBD3:    = var_D8.Value
  loc_104DC00:   If (var_A4.Text.Fields > 0) Then
  loc_104DC09:     Call Proc_251_93_10E8C50(MemVar_1F92044)
  loc_104DC1C:     Set var_8C = Me.Txt
  loc_104DC22:     Call 0.Method_Proc_251_88_104DD8C0 (CInt(3), var_A4)
  loc_104DC2A:     var_A4.Text = var_A0
  loc_104DC39:   End If
  loc_104DC39: End If
  loc_104DC5E: For var_10C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_10C 'Integer
  loc_104DC68:   var_BC = CVar(CLng(var_88)) 'Long
  loc_104DC70:   var_F8 = CVar(CLng(&HA)) 'Long
  loc_104DC90:   var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_104DCAC:   If CBool(var_108 <> vbNullString) Then
  loc_104DCB3:     var_BC = CVar(CLng(var_88)) 'Long
  loc_104DCBB:     var_F8 = CVar(CLng(7)) 'Long
  loc_104DCEB:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_104DD13:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_108, var_13C)
  loc_104DD39:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_104DD45:       Set var_8C = Me.FGrid
  loc_104DD69:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_104DD76:       Proc_251_88_104DD8C = 0
  loc_104DD7C:     End If
  loc_104DD7C:   End If
  loc_104DD7F: Next var_10C 'Integer
  loc_104DD84: Proc_251_88_104DD8C = 
End Sub

Public Sub Proc_251_89_101FC6C
  'Data Table: 5921C0
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_101FA49: Me.LblVPrefix.Caption = vbNullString
  loc_101FA5F: Set var_8C = Me.Txt
  loc_101FA65: Call 0.Method_Proc_251_89_101FC6CC (var_8E, var_86)
  loc_101FA75: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_101FA8B:   Set var_8C = Me.Txt
  loc_101FA91:   Call 0.Method_Proc_251_89_101FC6C0 (CInt(var_86), var_98)
  loc_101FA99:   var_98.Text = vbNullString
  loc_101FAB5:   Set var_8C = Me.Txt
  loc_101FABB:   Call 0.Method_Proc_251_89_101FC6C0 (CInt(var_86), var_98)
  loc_101FAC3:   var_98.Tag = vbNullString
  loc_101FAD2: Next var_92 'Byte
  loc_101FAE6: Set var_8C = Me.Txt
  loc_101FAEC: Call 0.Method_Proc_251_89_101FC6C0 (CInt(2), var_98)
  loc_101FAF4: var_98.Text = "00:00"
  loc_101FB0E: Set var_8C = Me.Txt
  loc_101FB14: Call 0.Method_Proc_251_89_101FC6C0 (CInt(2), var_98)
  loc_101FB1C: var_98.Tag = vbNullString
  loc_101FB3B: Me.FGrid.Rows = 1
  loc_101FB61: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_101FB69: Set var_98 = Me.FGrid
  loc_101FB83: var_A8 = 1
  loc_101FB8F: var_DC = CVar(CLng(1)) 'Long
  loc_101FBA2: Set var_8C = Me.FGrid
  loc_101FBA8: LateIdCallSt
  loc_101FBB3: var_A8 = 1
  loc_101FBBF: var_DC = CVar(CLng(2)) 'Long
  loc_101FBD2: Set var_8C = Me.FGrid
  loc_101FBD8: LateIdCallSt
  loc_101FBFC: var_A8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_101FC0F: Set var_98 = Me.FGrid
  loc_101FC15: LateIdCallSt
  loc_101FC3A: Me.FGrid.FixedRows = 1
  loc_101FC4E: Me.ChkNCKOT.Value = 0
  loc_101FC63: Me.LblState.Caption = vbNullString
  loc_101FC6B: Exit Sub
End Sub

Public Sub Proc_251_90_104B2E4(arg_C) '104B2E4
  'Data Table: 5921C0
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_104B07E: Set var_8C = Me.Txt
  loc_104B084: Call 0.Method_Proc_251_90_104B2E4C (var_8E, var_86)
  loc_104B094: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_104B0AA:   Set var_8C = Me.Txt
  loc_104B0B0:   Call 0.Method_Proc_251_90_104B2E40 (CInt(var_86), var_98)
  loc_104B0B8:   var_98.Enabled = arg_C
  loc_104B0C7: Next var_92 'Byte
  loc_104B0DA: Set var_8C = Me.cmdNCBill
  loc_104B0E0: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(Not(arg_C))
  loc_104B0F8: Set var_8C = Me.Txt
  loc_104B0FE: Call 0.Method_Proc_251_90_104B2E40 (CInt(2), var_98)
  loc_104B106: var_98.Enabled = False
  loc_104B11F: Set var_8C = Me.Txt
  loc_104B125: Call 0.Method_Proc_251_90_104B2E40 (CInt(3), var_98)
  loc_104B12D: var_98.Enabled = False
  loc_104B146: Set var_8C = Me.Txt
  loc_104B14C: Call 0.Method_Proc_251_90_104B2E40 (CInt(1), var_98)
  loc_104B154: var_98.Enabled = False
  loc_104B16D: Set var_8C = Me.Txt
  loc_104B173: Call 0.Method_Proc_251_90_104B2E40 (CInt(0), var_98)
  loc_104B17B: var_98.Enabled = False
  loc_104B194: Set var_8C = Me.Txt
  loc_104B19A: Call 0.Method_Proc_251_90_104B2E40 (CInt(4), var_98)
  loc_104B1A2: var_98.Enabled = False
  loc_104B1BB: Set var_8C = Me.Txt
  loc_104B1C1: Call 0.Method_Proc_251_90_104B2E40 (CInt(&HD), var_98)
  loc_104B1C9: var_98.Enabled = False
  loc_104B1E2: Set var_8C = Me.Txt
  loc_104B1E8: Call 0.Method_Proc_251_90_104B2E40 (CInt(5), var_98)
  loc_104B1F0: var_98.Enabled = False
  loc_104B209: Set var_8C = Me.Txt
  loc_104B20F: Call 0.Method_Proc_251_90_104B2E40 (CInt(8), var_98)
  loc_104B217: var_98.Enabled = False
  loc_104B230: Set var_8C = Me.Txt
  loc_104B236: Call 0.Method_Proc_251_90_104B2E40 (CInt(9), var_98)
  loc_104B23E: var_98.Enabled = False
  loc_104B257: Set var_8C = Me.Txt
  loc_104B25D: Call 0.Method_Proc_251_90_104B2E40 (CInt(&HA), var_98)
  loc_104B265: var_98.Enabled = False
  loc_104B27C: If (global_160 = "Auto") Then
  loc_104B28C:   Set var_8C = Me.Txt
  loc_104B292:   Call 0.Method_Proc_251_90_104B2E40 (CInt(&HB), var_98)
  loc_104B29A:   var_98.Enabled = False
  loc_104B2B3:   Set var_8C = Me.Txt
  loc_104B2B9:   Call 0.Method_Proc_251_90_104B2E40 (CInt(&HC), var_98)
  loc_104B2C1:   var_98.Enabled = False
  loc_104B2CD: End If
  loc_104B2DA: Me.ChkNCKOT.Enabled = arg_C
  loc_104B2E2: Exit Sub
End Sub

Public Sub Proc_251_91_EF66C0
  'Data Table: 5921C0
  loc_EF6600: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF6612:   Me.DGItem.Visible = False
  loc_EF661A: End If
  loc_EF6636: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF6648:   Me.DGTable.Visible = False
  loc_EF6650: End If
  loc_EF666C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF667E:   Me.DGRest.Visible = False
  loc_EF6686: End If
  loc_EF66A2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF66B4:   Me.FGPoint.Visible = False
  loc_EF66BC: End If
  loc_EF66BC: Exit Sub
End Sub

Public Sub Proc_251_92_F0AAA0
  'Data Table: 5921C0
  loc_F0A9C4: Call Proc_251_91_EF66C0()
  loc_F0A9D4: Set var_88 = Me.Txt
  loc_F0A9DA: Call 0.Method_Proc_251_92_F0AAA00 (CInt(1))
  loc_F0AA03: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0AA06:   Exit Sub
  loc_F0AA07: End If
  loc_F0AA12: Set var_88 = Me.Txt
  loc_F0AA18: Call 0.Method_Proc_251_92_F0AAA00 (CInt(0), var_8C)
  loc_F0AA41: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0AA44:   Exit Sub
  loc_F0AA45: End If
  loc_F0AA7C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0AA7F:   Call TopCtrl1_UnknownEvent_16()
  loc_F0AA87: Else
  loc_F0AA8D:   Call 0.Method_arg_1E8 (var_88)
  loc_F0AA95:   Call var_88.SetFocus
  loc_F0AA9E: End If
  loc_F0AA9E: Exit Sub
  loc_F0AA9F: Exit Sub
End Sub

Public Sub Proc_251_93_10E8C50
  'Data Table: 5921C0
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
  loc_10E8978: var_90 = global_136
  loc_10E898F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10E89C0: Set var_A8 = Me.Txt
  loc_10E89C6: Call 0.Method_Proc_251_93_10E8C500 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E89D5: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10E89DD: var_EC = -1 & var_CC 
  loc_10E89F1: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E89FC: Set var_8C = var_134
  loc_10E8A38: If (var_8C.RecordCount > 0) Then
  loc_10E8A77:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E8AAB:     global_252 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E8AD6:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E8AEB:     var_CC = (var_AC.Value + 1)
  loc_10E8AF4:     global_256 = CLng(var_CC)
  loc_10E8B05:   End If
  loc_10E8B05: End If
  loc_10E8B30: var_BC = Space((5 - Len(var_90)))
  loc_10E8B38: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10E8B4C: var_EC = Space((5 - Len(global_252)))
  loc_10E8B54: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E8B61: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_252))
  loc_10E8B7A: var_14C = Space((8 - Len(CStr(global_256))))
  loc_10E8B82: var_15C = (var_130 + var_14C)
  loc_10E8B91: var_17C = (var_15C + CVar(CStr(global_256)))
  loc_10E8B9C: global_248 = CStr(var_17C)
  loc_10E8BD2: Me.LblVPrefix.Caption = global_252
  loc_10E8BEB: Set var_A8 = Me.Txt
  loc_10E8BF1: Call 0.Method_Proc_251_93_10E8C500 (CInt(3), var_AC)
  loc_10E8BF9: var_AC.Text = global_248
  loc_10E8C1B: Set var_A8 = Me.Txt
  loc_10E8C21: Call 0.Method_Proc_251_93_10E8C500 (CInt(0), var_AC)
  loc_10E8C29: var_AC.Text = CStr(global_256)
  loc_10E8C3E: var_88 = global_248
  loc_10E8C46: Set var_8C = Nothing
  loc_10E8C49: Proc_251_93_10E8C50 = global_256
End Sub

Public Sub Proc_251_94_FBF148
  'Data Table: 5921C0
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBEFCB: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FBEFD0:   var_92 = 4 'Byte
  loc_FBEFD4: End If
  loc_FBEFDD: Set var_98 = Me.TxtGrid
  loc_FBEFE3: Call 0.Method_Proc_251_94_FBF1480 (0, var_B0)
  loc_FBF006: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBF03A: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBF05E:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBF061:     GoTo loc_FBF133
  loc_FBF064:   End If
  loc_FBF068:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBF092:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBF09C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBF0D1:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBF0F5:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBF10E:     Set var_98 = Me.TxtGrid
  loc_FBF114:     Call 0.Method_Proc_251_94_FBF1480 (0, var_B0, CVar(CLng(var_92)))
  loc_FBF11C:     var_B0.SetFocus
  loc_FBF12D:     Proc_251_94_FBF148 = 0
  loc_FBF133:     ' Referenced from: FBF061
  loc_FBF133:   End If
  loc_FBF136: Next var_D4 'Integer
  loc_FBF140: Proc_251_94_FBF148 = &HFF
End Sub

Public Sub Proc_251_95_11FD578
  'Data Table: 5921C0
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_D0 As String
  loc_11FD0D2: Set global_84 = New 
  loc_11FD0E4: Me.Recordset15.CursorLocation = 3
  loc_11FD0EF: var_8C = LocalRestType
  loc_11FD0FA: If (var_8C = "Hall") Then
  loc_11FD122:   var_A0 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')and  T.Type in('HL') Order by T.Code") 'String
  loc_11FD12C:   Me.Open var_A0, CVar(MemVar_1F92044), 3
  loc_11FD143:   Set var_88 = Me.Label1
  loc_11FD149:   Call 0.Method_Proc_251_95_11FD5780 (2, var_B4, "Hall")
  loc_11FD151:   var_B4.Caption = 1
  loc_11FD16D:   Set var_88 = Me.DGTable
  loc_11FD18C:   DGTable.DispID_69.Item(1).Caption = "Hall"
  loc_11FD1A3:   global_140 = "HALL"
  loc_11FD1AD:   global_144 = "HL"
  loc_11FD1C2:   Set var_88 = Me.DGTable
  loc_11FD1E1:   DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FD203:   Set var_88 = Me.DGTable
  loc_11FD214:   Set var_B4 = DGTable.DispID_69
  loc_11FD222:   var_B4.Item(3).Width = CDbl(0)
  loc_11FD241:   Set var_88 = Me.Txt
  loc_11FD247:   Call 0.Method_Proc_251_95_11FD5780 (CInt(4), var_B4)
  loc_11FD24F:   var_BC = var_B4.Width
  loc_11FD266:   Me.DGTable.Width = CVar(var_BC)
  loc_11FD277: Else
  loc_11FD27F:   If (var_8C = "Outlet") Then
  loc_11FD28E:     Set var_88 = Me.Label1
  loc_11FD294:     Call 0.Method_Proc_251_95_11FD5780 (2, var_B4)
  loc_11FD29C:     var_B4.Caption = "Table #"
  loc_11FD2B8:     Set var_88 = Me.DGTable
  loc_11FD2D7:     DGTable.DispID_69.Item(1).Caption = "Table No"
  loc_11FD30D:     var_D0 = "Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and T.Type in ('TB') And RestCode='"
  loc_11FD328:     Me.Open CVar(var_D0 & LocalRestCode & "' Order By T.Code"), CVar(MemVar_1F92044), 3
  loc_11FD33F:     global_140 = "REST"
  loc_11FD349:     global_144 = "TB"
  loc_11FD35E:     Set var_88 = Me.DGTable
  loc_11FD37D:     DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FD39F:     Set var_88 = Me.DGTable
  loc_11FD3B0:     Set var_B4 = DGTable.DispID_69
  loc_11FD3BE:     var_B4.Item(3).Width = CDbl(0)
  loc_11FD3DD:     Set var_88 = Me.Txt
  loc_11FD3E3:     Call 0.Method_Proc_251_95_11FD5780 (CInt(4), var_B4, var_BC)
  loc_11FD3EB:     1 = var_B4.Width
  loc_11FD402:     Me.DGTable.Width = CVar(var_BC)
  loc_11FD413:   Else
  loc_11FD41B:     If (var_8C = "Room Service") Then
  loc_11FD42A:       Set var_88 = Me.Label1
  loc_11FD430:       Call 0.Method_Proc_251_95_11FD5780 (2, var_B4, "Room #")
  loc_11FD438:       var_B4.Caption = -1
  loc_11FD454:       Set var_88 = Me.DGTable
  loc_11FD473:       DGTable.DispID_69.Item(1).Caption = "Room No"
  loc_11FD4A2:       var_90 = "SELECT RC.RoomNo AS Code, RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3  FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_11FD4A9:       var_A0 = CVar(var_90 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO") 'String
  loc_11FD4B3:       Me.Open var_A0, CVar(MemVar_1F92044), 3
  loc_11FD4C4:       global_144 = "RO"
  loc_11FD4DA:       Set var_88 = Me.DGTable
  loc_11FD4F9:       DGTable.DispID_69.Item(1).Width = CDbl(1515)
  loc_11FD51C:       Set var_88 = Me.DGTable
  loc_11FD53B:       DGTable.DispID_69.Item(2).Width = CDbl(3539)
  loc_11FD54C:       GoTo loc_11FD54F
  loc_11FD54F:       ' Referenced from:     11FD54C
  loc_11FD54F:     End If
  loc_11FD54F:   End If
  loc_11FD54F: End If
  loc_11FD558: CVarUnk
  loc_11FD55D: VerifyVarObj
  loc_11FD563: Set var_88 = Me.DGTable
  loc_11FD569: LateIdStAd
  loc_11FD577: Exit Sub
End Sub

Public Sub Proc_251_96_10ACF40(arg_C, arg_10, arg_14) '10ACF40
  'Data Table: 5921C0
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
  loc_10ACC95: var_88 = vbNullString
  loc_10ACCAC: arg_C = CStr(Trim(arg_C))
  loc_10ACCB8: var_8A = CInt(Len(arg_C))
  loc_10ACCBE: var_C0 = arg_10
  loc_10ACCC9: If (var_C0 = "A") Then
  loc_10ACCE8:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10ACCEC:   var_9C = arg_C 'Variant
  loc_10ACD42:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10ACD56:   var_110 = (0 + Chr(&H1B))
  loc_10ACD5F:   var_120 = (var_110 + "G")
  loc_10ACD73:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10ACD7D:   var_150 = (var_140 + CVar(arg_C))
  loc_10ACD91:   var_170 = (var_150 + Chr(&H1B))
  loc_10ACD9A:   var_190 = (var_170 + "H")
  loc_10ACD9F:   var_88 = CStr(var_190)
  loc_10ACDC0: Else
  loc_10ACDC8:   If (var_C0 = "D") Then
  loc_10ACDD6:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10ACDE7:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10ACDEB:     var_9C = "G" 'Variant
  loc_10ACE41:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10ACE55:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10ACE5F:     var_120 = (var_110 + CVar(arg_C))
  loc_10ACE64:     var_88 = CStr(var_120)
  loc_10ACE79:   Else
  loc_10ACE81:     If (var_C0 = "E") Then
  loc_10ACE92:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10ACE96:       var_9C = CVar(arg_C) 'Variant
  loc_10ACEEC:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10ACF00:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10ACF0A:       var_120 = (var_110 + CVar(arg_C))
  loc_10ACF1E:       var_140 = (var_120 + Chr(&H12))
  loc_10ACF23:       var_88 = CStr(var_140)
  loc_10ACF39:     End If
  loc_10ACF39:   End If
  loc_10ACF39: End If
  loc_10ACF39: Proc_251_96_10ACF40 = arg_14
End Sub

Public Sub Proc_251_97_120255C(arg_C, arg_10, arg_14) '120255C
  'Data Table: 5921C0
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
  loc_12020F9: var_90 = vbNullString
  loc_12020FF: var_94 = vbNullString
  loc_1202105: var_98 = vbNullString
  loc_120210B: var_9C = vbNullString
  loc_1202116: If (MemVar_1F923C0 = "Y") Then
  loc_1202120:   var_E0 = vbNullString & "DATE "
  loc_1202151:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_1202164: End If
  loc_120216C: If (MemVar_1F923C4 = "Y") Then
  loc_12021D0:   var_164 = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, "dd/MM/yy")))), 0))
  loc_12021F7:   var_1B4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_12021FF:   var_1D4 = (var_164 - Len(var_1B4))
  loc_1202210:   var_204 = (CVar(var_8C) + Space(CLng(var_1D4)))
  loc_1202219:   var_224 = (var_204 + " PAGE NO ")
  loc_120223B:   var_264 = (var_224 + Trim(Str(arg_C)))
  loc_1202240:   var_8C = CStr(var_264)
  loc_120226D: End If
  loc_120227B: If (MemVar_1F923C8 = "K") Then
  loc_1202288:   If (Len(MemVar_1F92130) <= &H28) Then
  loc_12022A1:     var_DC = (CVar(var_90) + Chr(&HF))
  loc_12022B5:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_12022C9:     var_164 = (0 + Chr(&H1B))
  loc_12022DD:     var_194 = (var_164 + Chr(&H45))
  loc_12022E7:     var_1B4 = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_12022FB:     var_1D4 = (var_1B4 + Chr(&H1B))
  loc_120230F:     var_204 = (var_1D4 + Chr(&H46))
  loc_1202323:     var_244 = (var_204 + Chr(&HE))
  loc_1202328:     var_90 = CStr(Str(arg_C))
  loc_120234F:   Else
  loc_1202365:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_1202379:     var_134 = (Format(MemVar_1F920EC, "dd/MM/yy") + Chr(&HE))
  loc_120238D:     var_164 = (0 + Chr(&HF))
  loc_1202397:     var_184 = (var_164 + CVar(MemVar_1F92130))
  loc_12023AB:     var_1B4 = (Chr(&H45) + Chr(&H12))
  loc_12023B0:     var_90 = CStr(var_1B4)
  loc_12023C8:   End If
  loc_12023D2:   If (Len(MemVar_1F92134) > 0) Then
  loc_12023FE:     Call Proc_251_96_10ACF40(MemVar_1F92134, "D", CInt(Val(CStr(arg_14))))
  loc_1202407:     var_94 = var_270 & var_270
  loc_1202413:   End If
  loc_120241D:   If (Len(MemVar_1F92138) > 0) Then
  loc_1202449:     Call Proc_251_96_10ACF40(MemVar_1F92138, "D", CInt(Val(CStr(arg_14))))
  loc_1202452:     var_98 = var_270 & var_270
  loc_120245E:   End If
  loc_1202468:   If (Len(MemVar_1F9213C) > 0) Then
  loc_1202494:     Call Proc_251_96_10ACF40(MemVar_1F9213C, "D", CInt(Val(CStr(arg_14))))
  loc_120249D:     var_9C = var_270 & var_270
  loc_12024A9:   End If
  loc_12024A9: End If
  loc_12024B3: If (Len(var_8C) > 0) Then
  loc_12024BB:   Print 1, var_8C
  loc_12024C7:   arg_10 = (arg_10 + 1)
  loc_12024CA: End If
  loc_12024D4: If (Len(var_90) > 0) Then
  loc_12024DC:   Print 1, var_90
  loc_12024E8:   arg_10 = (arg_10 + 1)
  loc_12024EB: End If
  loc_12024F5: If (Len(var_94) > 0) Then
  loc_12024FD:   Print 1, var_94
  loc_1202509:   arg_10 = (arg_10 + 1)
  loc_120250C: End If
  loc_1202516: If (Len(var_98) > 0) Then
  loc_120251E:   Print 1, var_98
  loc_120252A:   arg_10 = (arg_10 + 1)
  loc_120252D: End If
  loc_1202537: If (Len(var_9C) > 0) Then
  loc_120253F:   Print 1, var_9C
  loc_120254B:   arg_10 = (arg_10 + 1)
  loc_120254E: End If
  loc_1202554: Proc_251_97_120255C = arg_10
End Sub

Public Sub Proc_251_98_F21D8C(arg_C, arg_10, arg_14) 'F21D8C
  'Data Table: 5921C0
  Dim unk_5921DC As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F21CD1: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F21D03: unk_5921DC.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F21D0E: Set var_90 = var_15C
  loc_F21D40: If (var_90.RecordCount > 0) Then
  loc_F21D6E:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F21D7E: Else
  loc_F21D81:   var_8C = CDbl(0)
  loc_F21D84: End If
  loc_F21D84: Proc_251_98_F21D8C = var_8C
End Sub

Public Sub Proc_251_99_FF7554
  'Data Table: 5921C0
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As String
  Dim unk_5921DC As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_86 As Integer
  loc_FF7384: Set global_232 = New RsTouchScreenKeyBoard
  loc_FF739D: Me.ParentForm = CVar(Me)
  loc_FF73B2: Me.TxtKeyBoard.MaxLength = 20
  loc_FF73BF: var_C4 = Me.TxtKeyBoard
  loc_FF73D1: var_E4 = Me.TxtKeyBoard
  loc_FF73D6: var_E4.BackColor = var_C4.ForeColor
  loc_FF73EC: var_E4.Caption = "User Password"
  loc_FF7404: Form.Show 1, var_B4
  loc_FF7435: Proc_6_17_EAA2B0(var_C4, MemVar_1F920C8, "SELECT IsNull(Max(PASSWD),'') FROM USERMAST WHERE USER_NAME=", var_E4, -1)
  loc_FF744B: unk_5921DC.Execute CStr(var_90 & var_C4), var_94, 0
  loc_FF745B:  = var_94.Item(var_11C)
  loc_FF7463:  = var_90.Fields.Value
  loc_FF74AE: If CBool(Trim(CVar(TxtKeyBoard)) <> vbNullString) Then
  loc_FF74D0:   Call Proc_251_100_EE9254(CStr(var_11C), var_120)
  loc_FF74D8:   var_E4 = CVar(var_120) 'String
  loc_FF74DE:   var_11C = Ucase(var_E4)
  loc_FF74F3:   If (Ucase(CVar(TxtKeyBoard)) = var_11C) Then
  loc_FF74F8:     var_86 = &HFF
  loc_FF74FE:   Else
  loc_FF751F:     MsgBox("Invalid Password.", &H10, "User Authentication", var_E4, var_11C)
  loc_FF7531:     var_86 = 0
  loc_FF7534:   End If
  loc_FF7537: Else
  loc_FF7539:   var_86 = 0
  loc_FF753C: End If
  loc_FF7547: Set global_232 = Nothing
  loc_FF754E: Proc_251_99_FF7554 = var_86
End Sub

Public Sub Proc_251_100_EE9254(arg_C) 'EE9254
  'Data Table: 5921C0
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE91C2: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE91E1: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE9204:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE9220:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE9228:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE922D:   var_8C = CStr(var_108)
  loc_EE9241: Next var_B8 'Integer
  loc_EE9249: var_88 = var_8C
  loc_EE924C: Proc_251_100_EE9254 = 
End Sub
