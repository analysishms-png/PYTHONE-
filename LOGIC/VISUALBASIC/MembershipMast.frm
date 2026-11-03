VERSION 5.00
Begin VB.Form MembershipMast
  Caption = "Member Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Picture = "MembershipMast.frx":0
  Icon = "MembershipMast.frx":342
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 15240
  ClientHeight = 9750
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 53
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 4785
    Width = 4470
    Height = 255
    Enabled = 0   'False
    TabIndex = 29
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
  Begin TextBox TxtAgeing
    BackColor = &HC0FFFF&
    ForeColor = &HFF&
    Left = 9600
    Top = 15
    Width = 7215
    Height = 420
    TabIndex = 188
    BorderStyle = 0 'None
    MultiLine = -1  'True
    TabStop = 0   'False
    MaxLength = 200
    Locked = -1  'True
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame Frame1
    Left = 18600
    Top = 660
    Width = 7290
    Height = 4605
    Visible = 0   'False
    TabIndex = 78
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 49
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6030
      Top = 90
      Width = 1185
      Height = 285
      TabIndex = 80
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
      Index = 52
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6795
      Top = 720
      Width = 420
      Height = 285
      TabIndex = 83
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 51
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6030
      Top = 720
      Width = 420
      Height = 285
      TabIndex = 82
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 50
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6030
      Top = 405
      Width = 1185
      Height = 285
      TabIndex = 81
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
    Begin CheckBox Check1
      Caption = "All"
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 675
      Top = 990
      Width = 915
      Height = 195
      TabIndex = 103
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdFindz
      Caption = "SMS"
      Index = 2
      Left = 5625
      Top = 1125
      Width = 1215
      Height = 450
      Visible = 0   'False
      TabIndex = 92
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
    Begin Frame frmList1
      Left = 100
      Top = 2205
      Width = 1470
      Height = 1725
      Visible = 0   'False
      TabIndex = 90
      BorderStyle = 0 'None
      Begin ListView ListView1
        Left = 15
        Top = 0
        Width = 1380
        Height = 1665
        TabStop = 0   'False
        TabIndex = 91
      End
    End
    Begin TextBox Txt
      Index = 34
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2310
      Top = 105
      Width = 1800
      Height = 285
      TabIndex = 79
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
      Index = 33
      BackColor = &HFFFFFF&
      Left = 3510
      Top = 435
      Width = 1290
      Height = 255
      Visible = 0   'False
      TabIndex = 86
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
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      Left = 1965
      Top = 435
      Width = 1290
      Height = 255
      Visible = 0   'False
      TabIndex = 85
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
    Begin MSHFlexGrid GridSel
      Left = 630
      Top = 435
      Width = 4500
      Height = 4005
      TabIndex = 84
    End
    Begin BtnEnh CmdFind
      Index = 0
      Left = 5685
      Top = 1620
      Width = 945
      Height = 540
      TabIndex = 163
    End
    Begin BtnEnh CmdFind
      Index = 1
      Left = 5670
      Top = 2220
      Width = 945
      Height = 540
      TabIndex = 164
    End
    Begin Label LblName
      Caption = "Age Of"
      Index = 3
      ForeColor = &HFF0000&
      Left = 5205
      Top = 105
      Width = 645
      Height = 240
      TabIndex = 192
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
      Caption = "To"
      Index = 6
      ForeColor = &HFF0000&
      Left = 6510
      Top = 735
      Width = 240
      Height = 240
      TabIndex = 191
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
      Caption = "From"
      Index = 5
      ForeColor = &HFF0000&
      Left = 5235
      Top = 735
      Width = 495
      Height = 240
      TabIndex = 190
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
      Caption = "On Date"
      Index = 4
      ForeColor = &HFF0000&
      Left = 5205
      Top = 420
      Width = 765
      Height = 240
      TabIndex = 189
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
    Begin Image tmpImage
      Left = 135
      Top = 240
      Width = 1740
      Height = 1980
      Visible = 0   'False
      Stretch = -1  'True
    End
    Begin Label LblName
      Caption = "Print Type"
      Index = 2
      ForeColor = &HFF0000&
      Left = 1275
      Top = 120
      Width = 975
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
      Caption = "To"
      Index = 1
      ForeColor = &H0&
      Left = 3270
      Top = 435
      Width = 225
      Height = 240
      Visible = 0   'False
      TabIndex = 88
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
      Caption = "Date Between"
      Index = 0
      ForeColor = &H0&
      Left = 705
      Top = 435
      Width = 1185
      Height = 240
      Visible = 0   'False
      TabIndex = 87
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
  Begin TextBox Txt
    Index = 48
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 13995
    Top = 480
    Width = 1170
    Height = 255
    Enabled = 0   'False
    TabIndex = 4
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
    Index = 47
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 2790
    Width = 4365
    Height = 255
    Enabled = 0   'False
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
    Index = 46
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 1935
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 33
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
    Index = 45
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 11055
    Top = 480
    Width = 1170
    Height = 255
    Enabled = 0   'False
    TabIndex = 3
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
    Index = 44
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 4500
    Width = 4470
    Height = 255
    Enabled = 0   'False
    TabIndex = 28
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
    Index = 42
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 1365
    Width = 4470
    Height = 255
    TabIndex = 10
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
    Index = 43
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 4215
    Width = 4470
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 14430
    Top = 3690
    Width = 2340
    Height = 255
    Visible = 0   'False
    TabIndex = 73
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
  Begin PictureBox Picture1
    Picture = "MembershipMast.frx":784
    Left = 15930
    Top = 4155
    Width = 390
    Height = 405
    Visible = 0   'False
    TabIndex = 160
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGMemMeshAc
    Left = 18150
    Top = 4680
    Width = 5010
    Height = 2625
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 97
  End
  Begin MSHFlexGrid FGrid
    Left = 18060
    Top = 4290
    Width = 5760
    Height = 1485
    Visible = 0   'False
    TabIndex = 48
  End
  Begin DataGrid DGAcName
    Left = 17895
    Top = 4005
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 51
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15240
    Height = 450
    TabIndex = 156
  End
  Begin TextBox Txt
    Index = 41
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 1080
    Width = 4470
    Height = 255
    TabIndex = 9
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
  Begin Frame FrmList
    Left = 16980
    Top = 630
    Width = 1470
    Height = 1725
    Visible = 0   'False
    TabIndex = 62
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -15
      Width = 1380
      Height = 1665
      TabStop = 0   'False
      TabIndex = 63
    End
  End
  Begin CommandButton CmdImgDelete
    Caption = "Delete"
    Left = 16785
    Top = 4185
    Width = 735
    Height = 255
    Visible = 0   'False
    TabIndex = 154
  End
  Begin SSTab SSTab1
    Left = 45
    Top = 5115
    Width = 16500
    Height = 3870
    TabIndex = 64
    Begin TextBox TxtA
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -66060
      Top = 2805
      Width = 2340
      Height = 285
      Enabled = 0   'False
      TabIndex = 187
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
    Begin TextBox TxtGrid
      Index = 1
      BackColor = &HE0E0E0&
      Left = -73770
      Top = 630
      Width = 1200
      Height = 240
      Visible = 0   'False
      TabIndex = 177
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin Frame FrmList3
      Left = -73905
      Top = 885
      Width = 1470
      Height = 1725
      Visible = 0   'False
      TabIndex = 171
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      BorderStyle = 0 'None
      Begin ListView ListView3
        Left = 0
        Top = -15
        Width = 1380
        Height = 1665
        TabStop = 0   'False
        TabIndex = 172
      End
    End
    Begin MSFlexGrid FGPoint1
      Left = -66675
      Top = 1785
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 170
    End
    Begin Frame FrmList4
      Left = -64050
      Top = 1095
      Width = 1845
      Height = 1815
      Visible = 0   'False
      TabIndex = 168
      BorderStyle = 0 'None
      Begin ListView ListView4
        Left = -15
        Top = 90
        Width = 1845
        Height = 1815
        TabStop = 0   'False
        TabIndex = 169
      End
    End
    Begin TextBox TxtGrid
      Index = 2
      BackColor = &HE0E0E0&
      Left = -70860
      Top = 405
      Width = 1200
      Height = 240
      Visible = 0   'False
      TabIndex = 167
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin DataGrid DGRev
      Left = -68250
      Top = 1215
      Width = 3930
      Height = 2565
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 166
    End
    Begin BtnEnh CmdAdd
      Index = 3
      Left = -64560
      Top = 3435
      Width = 840
      Height = 330
      TabIndex = 159
    End
    Begin BtnEnh CmdAdd
      Index = 0
      Left = -69840
      Top = 450
      Width = 2565
      Height = 390
      TabIndex = 157
    End
    Begin BtnEnh CmdAdd
      Index = 1
      Left = -66270
      Top = 450
      Width = 2565
      Height = 390
      TabIndex = 158
    End
    Begin Frame FrmList2
      Left = 585
      Top = 1455
      Width = 1470
      Height = 1725
      Visible = 0   'False
      TabIndex = 148
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      BorderStyle = 0 'None
      Begin ListView ListView2
        Left = 0
        Top = -15
        Width = 1380
        Height = 1665
        TabStop = 0   'False
        TabIndex = 149
      End
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HE0E0E0&
      Left = 135
      Top = 615
      Width = 1200
      Height = 240
      Visible = 0   'False
      TabIndex = 47
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin TextBox TxtA
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -66060
      Top = 1890
      Width = 2340
      Height = 285
      Enabled = 0   'False
      TabIndex = 122
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
    Begin TextBox TxtA
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 2190
      Width = 2925
      Height = 285
      Enabled = 0   'False
      TabIndex = 123
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
    Begin TextBox TxtA
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 3105
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 129
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
    Begin TextBox TxtA
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 2805
      Width = 2925
      Height = 285
      Enabled = 0   'False
      TabIndex = 127
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
    Begin TextBox TxtA
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 2490
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 125
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
    Begin TextBox TxtA
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 1590
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 120
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
    Begin TextBox TxtA
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 1290
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 119
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
    Begin TextBox TxtA
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 990
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 118
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
    Begin TextBox TxtA
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 1890
      Width = 2925
      Height = 285
      Enabled = 0   'False
      TabIndex = 121
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox TxtA
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -66060
      Top = 2190
      Width = 2340
      Height = 285
      Enabled = 0   'False
      TabIndex = 124
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin CommandButton CmdAddz
      Caption = "Residential Address"
      Index = 0
      Left = -69285
      Top = 555
      Width = 975
      Height = 345
      Visible = 0   'False
      TabIndex = 115
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdAddz
      Caption = "WorkPlace Address"
      Index = 1
      Left = -67200
      Top = 570
      Width = 2220
      Height = 345
      Visible = 0   'False
      TabIndex = 117
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdAddz
      Caption = "Abroad Address"
      Index = 2
      Left = -68745
      Top = 630
      Width = 2220
      Height = 345
      Visible = 0   'False
      TabIndex = 116
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CheckBox ChkCorresAdd
      Caption = "Correspondence Address"
      ForeColor = &H80&
      Left = -69855
      Top = 3480
      Width = 2490
      Height = 210
      TabIndex = 131
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdAddz
      Caption = "Confirm"
      Index = 3
      Left = -65130
      Top = 3585
      Width = 1440
      Height = 315
      Visible = 0   'False
      TabIndex = 133
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSHFlexGrid FAGrid
      Left = 0
      Top = 405
      Width = 13920
      Height = 3270
      TabIndex = 46
    End
    Begin MSHFlexGrid FGrid1
      Left = -74955
      Top = 390
      Width = 7905
      Height = 3270
      TabIndex = 165
    End
    Begin DataGrid DGPropMember
      Left = -72060
      Top = 630
      Width = 3360
      Height = 2145
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 173
    End
    Begin MSHFlexGrid FPGrid
      Left = -75000
      Top = 405
      Width = 13260
      Height = 3255
      TabIndex = 174
    End
    Begin Label Lbl
      Caption = "Mobile2"
      Index = 46
      ForeColor = &HC00000&
      Left = -66870
      Top = 2820
      Width = 750
      Height = 240
      TabIndex = 186
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
    Begin Image ImgPropMemSign
      Left = -61305
      Top = 2880
      Width = 2295
      Height = 705
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin Image ImgPropMemPhoto
      Left = -61080
      Top = 585
      Width = 1860
      Height = 2280
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin Label LblPropMemSign
      Caption = "Signature"
      ForeColor = &HC0&
      Left = -60570
      Top = 3090
      Width = 825
      Height = 225
      TabIndex = 176
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
    Begin Label LblPropMemPhoto
      Caption = "Photo"
      ForeColor = &HC0&
      Left = -60390
      Top = 1560
      Width = 495
      Height = 225
      TabIndex = 175
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
    Begin Label Lbl
      Caption = "City"
      Index = 36
      ForeColor = &HC00000&
      Left = -71745
      Top = 1875
      Width = 360
      Height = 240
      TabIndex = 132
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
    Begin Label LblAddType
      Caption = "Residential Address"
      ForeColor = &HC00000&
      Left = -71745
      Top = 990
      Width = 1875
      Height = 240
      TabIndex = 134
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
    Begin Image ImgFamilyMemSign
      Left = 14145
      Top = 2745
      Width = 2295
      Height = 705
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin Image ImgFamilyMemPhoto
      Left = 14355
      Top = 435
      Width = 1860
      Height = 2280
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin Label LblFamilyMemSign
      Caption = "Signature"
      ForeColor = &HC0&
      Left = 14865
      Top = 2955
      Width = 825
      Height = 225
      TabIndex = 153
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
    Begin Label LblFamilyMemPhoto
      Caption = "Photo"
      ForeColor = &HC0&
      Left = 15045
      Top = 1425
      Width = 495
      Height = 225
      TabIndex = 152
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
    Begin Label Lbl
      Caption = "State"
      Index = 31
      ForeColor = &HC00000&
      Left = -66645
      Top = 1905
      Width = 495
      Height = 240
      TabIndex = 137
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
      Caption = "Country"
      Index = 32
      ForeColor = &HC00000&
      Left = -71745
      Top = 2190
      Width = 735
      Height = 240
      TabIndex = 136
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
      Caption = "Phone No(s)"
      Index = 33
      ForeColor = &HC00000&
      Left = -71745
      Top = 2505
      Width = 1140
      Height = 240
      TabIndex = 135
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
      Caption = "Mobile1"
      Index = 37
      ForeColor = &HC00000&
      Left = -71745
      Top = 2820
      Width = 750
      Height = 240
      TabIndex = 130
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
      Caption = "E-Mail"
      Index = 39
      ForeColor = &HC00000&
      Left = -71745
      Top = 3120
      Width = 585
      Height = 240
      TabIndex = 128
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
      Caption = "PinCode"
      Index = 40
      ForeColor = &HC00000&
      Left = -66885
      Top = 2205
      Width = 810
      Height = 240
      TabIndex = 126
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
    Index = 35
    BackColor = &HC0FFFF&
    ForeColor = &HFF&
    Left = 12285
    Top = 795
    Width = 4530
    Height = 1065
    TabIndex = 45
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 200
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdProposedMemInf
    Caption = "Proposed Member Detail"
    Left = 18930
    Top = 6150
    Width = 2220
    Height = 345
    Visible = 0   'False
    TabIndex = 100
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdMCard
    Caption = "Generate Member Card"
    BackColor = &HFFC0C0&
    Left = 18375
    Top = 8475
    Width = 2565
    Height = 510
    Visible = 0   'False
    TabIndex = 77
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdVarifyCard
    Caption = "Verify Member Card"
    BackColor = &HFFC0C0&
    Left = 18375
    Top = 7980
    Width = 2565
    Height = 510
    Visible = 0   'False
    TabIndex = 76
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 28
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 480
    Width = 1170
    Height = 255
    Enabled = 0   'False
    TabIndex = 2
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
    Left = 4590
    Top = 480
    Width = 1545
    Height = 255
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 480
    Width = 1470
    Height = 255
    Enabled = 0   'False
    TabIndex = 0
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 15840
    Top = 2700
    Width = 765
    Height = 255
    Enabled = 0   'False
    TabIndex = 43
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 15840
    Top = 2985
    Width = 645
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 44
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
  Begin CommandButton CmdAddz
    Caption = "Additionals/Family Members"
    Index = 10
    Left = 18930
    Top = 7260
    Width = 2220
    Height = 345
    Visible = 0   'False
    TabIndex = 72
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdAddz
    Caption = "C&hildren Details"
    Index = 9
    Left = 18930
    Top = 6900
    Width = 2220
    Height = 345
    Visible = 0   'False
    TabIndex = 71
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdAddz
    Caption = "Spo&use Details"
    Index = 8
    Left = 18930
    Top = 6495
    Width = 2220
    Height = 345
    Visible = 0   'False
    TabIndex = 70
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DgMemType
    Left = 2460
    Top = 5670
    Width = 4830
    Height = 2730
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 59
  End
  Begin DataGrid DGUnderAc
    Left = 1650
    Top = 6390
    Width = 5610
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 50
  End
  Begin MSFlexGrid FGPoint
    Left = 17235
    Top = 2250
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 61
  End
  Begin DataGrid DGCity
    Left = 720
    Top = 6015
    Width = 4845
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 60
  End
  Begin TextBox txtCurrBal
    Left = 15840
    Top = 2985
    Width = 765
    Height = 255
    Enabled = 0   'False
    TabIndex = 56
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
  Begin CommonDialog CDlg
  End
  Begin TextBox Txt
    Index = 38
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 10590
    Top = 795
    Width = 1635
    Height = 255
    Enabled = 0   'False
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
    Index = 37
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 795
    Width = 1635
    Height = 255
    Enabled = 0   'False
    TabIndex = 7
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3255
    Top = 795
    Width = 2880
    Height = 255
    Enabled = 0   'False
    TabIndex = 6
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 795
    Width = 525
    Height = 255
    Enabled = 0   'False
    Text = "Mr."
    TabIndex = 5
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 2505
    Width = 570
    Height = 255
    Enabled = 0   'False
    TabIndex = 14
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 2220
    Width = 4470
    Height = 255
    Enabled = 0   'False
    TabIndex = 13
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 1650
    Width = 4470
    Height = 255
    TabIndex = 11
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 1935
    Width = 4470
    Height = 255
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
    Index = 30
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 2790
    Width = 1845
    Height = 255
    Enabled = 0   'False
    TabIndex = 17
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
    ForeColor = &HFF0000&
    Left = 4290
    Top = 3075
    Width = 1845
    Height = 255
    Enabled = 0   'False
    TabIndex = 19
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
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 3360
    Width = 1845
    Height = 255
    Enabled = 0   'False
    TabIndex = 21
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 3360
    Width = 1275
    Height = 255
    TabIndex = 20
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
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 3075
    Width = 1275
    Height = 255
    Enabled = 0   'False
    TabIndex = 18
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
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 3645
    Width = 1845
    Height = 255
    Enabled = 0   'False
    TabIndex = 24
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
    Index = 26
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 2790
    Width = 570
    Height = 255
    Enabled = 0   'False
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
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 3645
    Width = 1275
    Height = 255
    Enabled = 0   'False
    TabIndex = 22
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
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 3930
    Width = 1845
    Height = 255
    TabIndex = 26
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 3360
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 38
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
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 3075
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 37
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 2505
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 35
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 2220
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 34
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
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 1650
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 32
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 1080
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 30
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 1365
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 31
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
    Index = 39
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 3930
    Width = 1275
    Height = 255
    Enabled = 0   'False
    TabIndex = 25
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
    Index = 40
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 2505
    Width = 1845
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
    Index = 36
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 4485
    Width = 4365
    Height = 255
    TabIndex = 39
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
  Begin Frame FrBlackListed
    Caption = "Frame2"
    ForeColor = &HFF0000&
    Left = 6165
    Top = 3930
    Width = 6090
    Height = 555
    TabIndex = 94
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
      Index = 29
      BackColor = &HFFFFFF&
      Left = 1695
      Top = -15
      Width = 4365
      Height = 255
      Enabled = 0   'False
      TabIndex = 41
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
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      Left = 1695
      Top = 270
      Width = 4365
      Height = 255
      Enabled = 0   'False
      TabIndex = 42
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
    Begin Label Lbl
      Caption = "BlackList Reason  "
      Index = 20
      ForeColor = &HFF0000&
      Left = 30
      Top = -15
      Width = 1740
      Height = 240
      TabIndex = 96
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
      Caption = "Black List By  "
      Index = 21
      ForeColor = &HFF0000&
      Left = 30
      Top = 270
      Width = 1335
      Height = 240
      TabIndex = 95
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
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 3645
    Width = 500
    Height = 255
    Enabled = 0   'False
    TabIndex = 40
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
  Begin TextBox Txt
    Index = 24
    BackColor = &HFFFFFF&
    Left = 19860
    Top = 7605
    Width = 1845
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 23
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
    Appearance = 0 'Flat
  End
  Begin Label Lbl
    Caption = "GSTIN"
    Index = 47
    ForeColor = &HFF0000&
    Left = 195
    Top = 4785
    Width = 600
    Height = 240
    TabIndex = 193
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
  Begin Line Line1
    BorderColor = &HFF0000&
    X1 = 45
    Y1 = 765
    X2 = 16965
    Y2 = 765
    BorderWidth = 2
  End
  Begin Label Lbl
    Caption = "Mobile1"
    Index = 45
    ForeColor = &HC00000&
    Left = 8355
    Top = 7860
    Width = 750
    Height = 240
    TabIndex = 185
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
    Caption = "Cessation Date"
    Index = 44
    ForeColor = &HFF0000&
    Left = 12465
    Top = 480
    Width = 1410
    Height = 240
    TabIndex = 184
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
    Caption = "Posted At"
    Index = 43
    ForeColor = &HFF0000&
    Left = 6195
    Top = 2790
    Width = 900
    Height = 240
    TabIndex = 183
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
    Caption = "CIN No."
    Index = 38
    ForeColor = &HFF0000&
    Left = 6195
    Top = 1935
    Width = 705
    Height = 240
    TabIndex = 182
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
    Caption = "Id Proof No."
    Index = 35
    ForeColor = &HFF0000&
    Left = 195
    Top = 4500
    Width = 1125
    Height = 240
    TabIndex = 181
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
    Caption = "Id Proof"
    Index = 25
    ForeColor = &HFF0000&
    Left = 195
    Top = 4200
    Width = 750
    Height = 240
    TabIndex = 180
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
    Caption = "Mother Name"
    Index = 22
    ForeColor = &HFF0000&
    Left = 195
    Top = 1350
    Width = 1275
    Height = 240
    TabIndex = 179
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
    Caption = "MemberShip Date"
    Index = 12
    ForeColor = &HFF0000&
    Left = 9255
    Top = 480
    Width = 1710
    Height = 240
    TabIndex = 178
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
    Caption = "Corporate Membership #"
    Index = 75
    ForeColor = &HFF0000&
    Left = 14250
    Top = 3435
    Width = 2340
    Height = 240
    Visible = 0   'False
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 14190
    Top = 4350
    Width = 2520
    Height = 255
    TabIndex = 162
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 14175
    Top = 4665
    Width = 2520
    Height = 255
    TabIndex = 161
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
  Begin Label Lbl
    Caption = "Father Name"
    Index = 14
    ForeColor = &HFF0000&
    Left = 195
    Top = 1065
    Width = 1230
    Height = 240
    TabIndex = 155
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
  Begin Image ImgMemPhoto
    Left = 12285
    Top = 1920
    Width = 1860
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
  End
  Begin Image ImgMemSign
    Left = 14250
    Top = 1935
    Width = 2295
    Height = 705
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
  End
  Begin Label LblMemSign
    Caption = "Member Signature"
    ForeColor = &HC0&
    Left = 14550
    Top = 2220
    Width = 1575
    Height = 225
    TabIndex = 151
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
  Begin Label LblMemPhoto
    Caption = "Member Photo"
    ForeColor = &HC0&
    Left = 12600
    Top = 2985
    Width = 1245
    Height = 225
    TabIndex = 150
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
  Begin Label Lbl
    Caption = "Residing Since"
    Index = 41
    ForeColor = &H0&
    Left = 18570
    Top = 7575
    Width = 1305
    Height = 240
    Visible = 0   'False
    TabIndex = 108
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
  Begin Label Lbl
    Caption = "Application Date"
    Index = 11
    ForeColor = &HFF0000&
    Left = 6210
    Top = 480
    Width = 1575
    Height = 240
    TabIndex = 74
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
    Caption = "Member ID"
    Index = 74
    ForeColor = &HFF0000&
    Left = 195
    Top = 480
    Width = 1035
    Height = 240
    TabIndex = 68
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
    Caption = "Application No."
    Index = 73
    ForeColor = &HFF0000&
    Left = 3135
    Top = 480
    Width = 1455
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
  Begin Label LblOpBalType
    Caption = "Dr/Cr"
    ForeColor = &HC0&
    Left = 16650
    Top = 2700
    Width = 555
    Height = 240
    TabIndex = 55
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
  Begin Label LblCurBalType
    Caption = "Dr/Cr"
    ForeColor = &HC0&
    Left = 16650
    Top = 2985
    Width = 555
    Height = 240
    TabIndex = 54
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
    Caption = "Opening Balance"
    Index = 17
    ForeColor = &HFF0000&
    Left = 14190
    Top = 2670
    Width = 1650
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
    Caption = "Current Balance"
    Index = 16
    ForeColor = &HFF0000&
    Left = 14190
    Top = 2985
    Width = 1545
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
  Begin Label Label1
    Caption = "First Name"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2235
    Top = 795
    Width = 1020
    Height = 240
    TabIndex = 145
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
    Caption = "Last Name"
    Index = 4
    ForeColor = &HFF0000&
    Left = 9555
    Top = 795
    Width = 1005
    Height = 240
    TabIndex = 102
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
    ForeColor = &HFF0000&
    Left = 6195
    Top = 795
    Width = 1260
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
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 1
    ForeColor = &HFF0000&
    Left = 195
    Top = 795
    Width = 1440
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
  Begin Label Lbl
    Caption = "Credit Limit"
    Index = 6
    ForeColor = &HFF0000&
    Left = 3000
    Top = 2520
    Width = 1110
    Height = 240
    TabIndex = 147
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
    Left = 195
    Top = 3900
    Width = 1200
    Height = 240
    TabIndex = 146
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
    Left = 6195
    Top = 1080
    Width = 1590
    Height = 240
    TabIndex = 144
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
    Left = 6195
    Top = 1365
    Width = 1635
    Height = 240
    TabIndex = 143
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
    Left = 6195
    Top = 1650
    Width = 1590
    Height = 240
    TabIndex = 142
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
    Left = 6195
    Top = 2220
    Width = 855
    Height = 240
    TabIndex = 141
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
    Left = 6195
    Top = 2505
    Width = 1125
    Height = 240
    TabIndex = 140
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
    Left = 6195
    Top = 3090
    Width = 975
    Height = 240
    TabIndex = 139
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
    Left = 3000
    Top = 3645
    Width = 795
    Height = 240
    TabIndex = 138
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
    Left = 6180
    Top = 3375
    Width = 1485
    Height = 240
    TabIndex = 114
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
    Left = 3000
    Top = 3930
    Width = 780
    Height = 240
    TabIndex = 110
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
    Left = 195
    Top = 3615
    Width = 1020
    Height = 240
    TabIndex = 109
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
    Left = 195
    Top = 3330
    Width = 1185
    Height = 240
    TabIndex = 107
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
    Left = 3000
    Top = 3360
    Width = 1050
    Height = 240
    TabIndex = 106
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
    Left = 3000
    Top = 3075
    Width = 1305
    Height = 240
    TabIndex = 105
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
    Left = 195
    Top = 3045
    Width = 705
    Height = 240
    TabIndex = 104
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
    ForeColor = &HC0&
    Left = 2280
    Top = 2805
    Width = 435
    Height = 240
    TabIndex = 99
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
    ForeColor = &HC0&
    Left = 2280
    Top = 2535
    Width = 435
    Height = 240
    TabIndex = 98
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
    Left = 195
    Top = 2760
    Width = 585
    Height = 240
    TabIndex = 93
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
    Left = 3000
    Top = 2790
    Width = 960
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
  Begin Label Lbl
    Caption = "A/c Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 195
    Top = 1635
    Width = 915
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
  Begin Label Lbl
    Caption = "Allow Credit"
    Index = 23
    ForeColor = &HFF0000&
    Left = 195
    Top = 2475
    Width = 1170
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
    Caption = "Category"
    Index = 18
    ForeColor = &HFF0000&
    Left = 195
    Top = 2175
    Width = 855
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
    Caption = "Under Group"
    Index = 2
    ForeColor = &HFF0000&
    Left = 195
    Top = 1890
    Width = 1215
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
  Begin Label LblMessAc
    Caption = "Mess A/c"
    ForeColor = &HFF0000&
    Left = 6195
    Top = 4515
    Width = 825
    Height = 240
    TabIndex = 113
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
    Left = 6180
    Top = 3660
    Width = 1155
    Height = 240
    TabIndex = 112
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
    Index = 2
    ForeColor = &HC0&
    Left = 8400
    Top = 3645
    Width = 435
    Height = 240
    TabIndex = 111
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

Attribute VB_Name = "MembershipMast"

Private global_156 As Byte
Private global_52 As Integer
Private global_112 As Integer
Private global_110 As Integer
Private global_104 As Integer
Private global_228 As Variant
Private global_272 As Integer
Private global_274 As Integer
Private global_60 As Integer
Private global_80 As Integer
Private global_120 As Long

Private Sub Form_Load() '136CDA8
  'Data Table: 5ADD9C
  Dim var_94 As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_90 As Variant
  Dim var_C8 As String
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim unk_5ADDC8 As Connection15
  Dim var_8C As Recordset15
  loc_136C534: On Error Goto loc_136CD6C
  loc_136C542: Set var_90 = Me.LblName
  loc_136C548: Call 0.Method_Form_Load0 (0, var_94)
  loc_136C550: var_94.Visible = False
  loc_136C567: Set var_90 = Me.LblName
  loc_136C56D: Call 0.Method_Form_Load0 (1, var_94)
  loc_136C575: var_94.Visible = False
  loc_136C58E: Set var_90 = Me.Txt
  loc_136C594: Call 0.Method_Form_Load0 (CInt(&H20), var_94)
  loc_136C59C: var_94.Visible = False
  loc_136C5B5: Set var_90 = Me.Txt
  loc_136C5BB: Call 0.Method_Form_Load0 (CInt(&H21), var_94)
  loc_136C5C3: var_94.Visible = False
  loc_136C5E5: unk_5ADE06.Execute "Delete From MemAddRWA where  Mark='*'", var_B4, -1
  loc_136C600: Me.SSTab1.Tab = 0
  loc_136C610: Call 0.Method_MeC (CDbl(7590))
  loc_136C61D: Call 0.Method_Me4 (CDbl(11900))
  loc_136C629: Call 0.Method_arg_7C (CDbl(0))
  loc_136C635: Call 0.Method_arg_74 (CDbl(0))
  loc_136C641: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_136C659: Me.SSTab1.BackColor = CVar(CLng(MemVar_1F921B4))
  loc_136C66F: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_136C683: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_136C694: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_136C6A5: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_136C6B6: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_136C6C7: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_136C6D8: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_136C6E9: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_136C6FA: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_136C70B: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_136C71C: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_136C736: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_136C744: Set var_90 = MemVar_1F92044
  loc_136C753: Call 0.Method_Form_Load8 (var_90)
  loc_136C769: Me.Recordset20.Clone
  loc_136C783: Call 0.Method_Form_LoadC (var_90, -1)
  loc_136C79D: Me.Recordset20.Clone
  loc_136C7B7: Call 0.Method_arg_50 (var_90, -1, var_90)
  loc_136C7CA: global_156 = CByte(1)
  loc_136C7FB: Proc_183_1_F5B310(Me, CStr(-2147483643), CStr(&HC00000), CByte(1))
  loc_136C813: Set var_90 = Me.txtCurrBal
  loc_136C819: Me.txtCurrBal.BackColor = -2147483643
  loc_136C830: Me.txtCurrBal.ForeColor = &HC00000
  loc_136C83D: global_52 = 0
  loc_136C84A: Set global_168 = New 
  loc_136C85C: Me.Recordset15.CursorLocation = 3
  loc_136C886: var_B4 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE NATURE='Customer' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_136C890: Me.Open var_B4, CVar(MemVar_1F921DC), 2
  loc_136C8A4: CVarUnk
  loc_136C8A9: VerifyVarObj
  loc_136C8AF: Set var_90 = Me.DGAcName
  loc_136C8B5: LateIdStAd
  loc_136C8CD: Set global_180 = New 
  loc_136C8DF: Me.DGAcName.CursorLocation = 3
  loc_136C902: var_C8 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where NATURE='Customer' AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_136C913: Me.Open CVar(var_C8 & "' or LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F921DC), 2
  loc_136C927: CVarUnk
  loc_136C92C: VerifyVarObj
  loc_136C932: Set var_90 = Me.DGUnderAc
  loc_136C938: LateIdStAd
  loc_136C950: Set global_176 = New 
  loc_136C962: Me.DGUnderAc.CursorLocation = 3
  loc_136C98C: var_B4 = CVar("Select SubCode As Code,Name From SubGroup Where CompanyType in ('Mesh') And ActiveYN=1 And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name") 'String
  loc_136C996: Me.Open var_B4, CVar(MemVar_1F921DC), 2
  loc_136C9AA: CVarUnk
  loc_136C9AF: VerifyVarObj
  loc_136C9B5: Set var_90 = Me.DGMemMeshAc
  loc_136C9BB: LateIdStAd
  loc_136C9D3: Set global_184 = New 
  loc_136C9E5: Me.DGMemMeshAc.CursorLocation = 3
  loc_136CA08: var_C8 = "Select CityCode As Code,CityName As Name,CityHelp,S.Name As SName,S.Code As SCode,C.Name As CName,C.Code As CCode From ((City Inner Join State S On S.Code=City.State) Inner Join Country C On C.Code=City.Country)  WHERE (City.LOGSITE_CODE='" & MemVar_1F92078
  loc_136CA19: Me.Open CVar(var_C8 & "' or City.LOGSITE_CODE='HO')  Order by CityName"), CVar(MemVar_1F921DC), 2
  loc_136CA2D: CVarUnk
  loc_136CA32: VerifyVarObj
  loc_136CA38: Set var_90 = Me.DGCity
  loc_136CA3E: LateIdStAd
  loc_136CA56: Set global_188 = New 
  loc_136CA68: Me.DGCity.CursorLocation = 3
  loc_136CA92: var_B4 = CVar("Select  Code, Name, Corporate From MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_136CAB0: CVarUnk
  loc_136CAB5: VerifyVarObj
  loc_136CABB: Set var_90 = Me.DgMemType
  loc_136CAC1: LateIdStAd
  loc_136CAEB: Me.DgMemType.CursorLocation = 3
  loc_136CB0E: var_C8 = "Select M.SubCode as PMemCode,M.Name,M.CardNo,M.ConPrefix,M.Gender,M.Mobile,M.Email,M.Desig,M.PicPath,M.SigPath,M.Label From MemberFamily M Inner Join SubGroup S On M.SubCode=S.SubCode And M. RelationShip='Member' Where M.LOGSITE_CODE='" & MemVar_1F92078
  loc_136CB15: var_B4 = CVar(var_C8 & "' And M.RelationShip='Member' And S.ActiveYN=1 Order by M.Name") 'String
  loc_136CB1F: r_B4, CVar(MemVar_1F921DC), 2 var_B4, CVar(MemVar_1F92044), 2
  loc_136CB33: CVarUnk
  loc_136CB38: VerifyVarObj
  loc_136CB44: LateIdStAd
  loc_136CB66: var_C8 = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_136CB76: unk_5ADDC8.Execute var_C8 & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_B4, -1
  loc_136CBA5: CVarUnk
  loc_136CBAA: VerifyVarObj
  loc_136CBB6: LateIdStAd
  loc_136CBE8: unk_5ADDC8.Execute "Select * From MemEnviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_B4, -1
  loc_136CBF3: Set var_8C = Me.DGRev
  loc_136CC17: If (var_8C.RecordCount > 0) Then
  loc_136CC29:   var_90 = var_8C.Fields
  loc_136CC48:   global_268 = Proc_6_38_E68A98(CVar(var_90.Item("Interface")), var_90, var_90, Me.DGPropMember, var_90, var_90, New)
  loc_136CC58: Else
  loc_136CC6B:   var_B4 = "Member EnvironMent Settings NOT SET!"
  loc_136CC71:   MsgBox(var_B4, 0, var_E0, var_100, var_120)
  loc_136CC81: End If
  loc_136CC8B: Set global_164 = New 
  loc_136CC9D: Me.Recordset15.LockType = 3
  loc_136CCAD: Me.CursorLocation = 3
  loc_136CCBD: Me.CursorType = 2
  loc_136CCD6: var_C8 = "Select SubCode As SearchCode,SubCode,Site_Code,Name From SubGroup Where CompanyType in (SELECT Code FROM MemCatMast WHERE Corporate='N') and (LOGSITE_CODE='" & MemVar_1F92078
  loc_136CCE6: unk_5ADE06.Execute var_C8 & "' or LOGSITE_CODE='HO') order by Name", var_B4, -1
  loc_136CD21: var_C8 = "INI"
  loc_136CD2F: Call Proc_265_103_10EBC50(Proc_5_1_100CB50(var_C8, Me, Me, Me, 3), -1, Me)
  loc_136CD3A: Call Proc_265_91_1545684(global_188, 3)
  loc_136CD3F: Call Proc_265_108_10E2A44(-1)
  loc_136CD44: Call Proc_265_92_12D4514()
  loc_136CD49: Call Proc_265_112_1B45AC0()
  loc_136CD5B: Me.LblAddType.Caption = "Residential Address"
  loc_136CD68: Set var_8C = Nothing
  loc_136CD6B: Exit Sub
  loc_136CD6C: ' Referenced from: 136C534
  loc_136CD74: Set var_90 = Err()
  loc_136CD7A: Call 0.Method_arg_2C (var_C8)
  loc_136CD93: MsgBox(CVar(var_C8), &H40, var_E0, var_100, var_120)
  loc_136CDA6: Exit Sub
End Sub

Private Sub Form_Resize() '11258D4
  'Data Table: 5ADD9C
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim arg_24D0 As Variant
  loc_1125560: Call Proc_265_107_1057550()
  loc_1125573: Set var_88 = Me.Txt
  loc_1125579: Call 0.Method_Form_Resize0 (CInt(1), var_8C)
  loc_1125598: Me.DGAcName.Left = CVar(var_8C.Left)
  loc_11255B4: Set var_B4 = Me.Txt
  loc_11255BA: Call 0.Method_Form_Resize0 (CInt(1), var_B8)
  loc_11255D5: Set var_88 = Me.Txt
  loc_11255DB: Call 0.Method_Form_Resize0 (CInt(1), var_8C)
  loc_11255F3: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_1125602: Me.DGAcName.Top = CVar(var_8C.Left)
  loc_1125622: Set var_88 = Me.Txt
  loc_1125628: Call 0.Method_Form_Resize0 (CInt(2), var_8C)
  loc_1125647: Me.DGUnderAc.Left = CVar(var_8C.Left)
  loc_1125663: Set var_B4 = Me.Txt
  loc_1125669: Call 0.Method_Form_Resize0 (CInt(2), var_B8)
  loc_1125684: Set var_88 = Me.Txt
  loc_112568A: Call 0.Method_Form_Resize0 (CInt(2), var_8C)
  loc_11256A2: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_11256B1: Me.DGUnderAc.Top = CVar(var_8C.Left)
  loc_11256D1: Set var_88 = Me.Txt
  loc_11256D7: Call 0.Method_Form_Resize0 (CInt(&H24), var_8C)
  loc_11256F6: Me.DGMemMeshAc.Left = CVar(var_8C.Left)
  loc_1125712: Set var_B4 = Me.Txt
  loc_1125718: Call 0.Method_Form_Resize0 (CInt(&H24), var_B8)
  loc_1125733: Set var_88 = Me.Txt
  loc_1125739: Call 0.Method_Form_Resize0 (CInt(&H24), var_8C)
  loc_1125751: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_1125760: Me.DGMemMeshAc.Top = CVar(var_8C.Left)
  loc_1125780: Set var_88 = Me.TxtA
  loc_1125786: Call 0.Method_Form_Resize0 (CInt(3), var_8C)
  loc_11257A5: Me.DGCity.Left = CVar(var_8C.Left)
  loc_11257C1: Set var_B4 = Me.TxtA
  loc_11257C7: Call 0.Method_Form_Resize0 (CInt(3), var_B8)
  loc_11257E2: Set var_88 = Me.TxtA
  loc_11257E8: Call 0.Method_Form_Resize0 (CInt(3), var_8C)
  loc_1125800: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_112580F: Me.DGCity.Top = CVar(var_8C.Left)
  loc_112582F: Set var_88 = Me.Txt
  loc_1125835: Call 0.Method_Form_Resize0 (CInt(7), var_8C)
  loc_1125854: Me.DgMemType.Left = CVar(var_8C.Left)
  loc_1125870: Set var_B4 = Me.Txt
  loc_1125876: Call 0.Method_Form_Resize0 (CInt(7), var_B8)
  loc_1125891: Set var_88 = Me.Txt
  loc_1125897: Call 0.Method_Form_Resize0 (CInt(7), var_8C)
  loc_11258AF: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_11258BE: Me.DgMemType.Top = CVar(var_8C.Left)
  loc_11258D0: Exit Sub
  loc_11258D1: arg_24D0 =  
End Sub

Private Sub Form_Unload(Cancel As Integer) 'FE85EC
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_A0 As TextBox
  Dim var_D0 As Variant
  Dim unk_5ADE06 As Connection15
  loc_FE8427: Set global_164 = Nothing
  loc_FE8439: Set global_168 = Nothing
  loc_FE844B: Set global_172 = Nothing
  loc_FE845D: Set global_180 = Nothing
  loc_FE846F: Set global_184 = Nothing
  loc_FE8481: Set global_188 = Nothing
  loc_FE8493: Set global_192 = Nothing
  loc_FE84A5: Set global_276 = Nothing
  loc_FE84B0: Set var_88 = Me.TopCtrl1
  loc_FE84B6: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE84BE: var_9C = CStr()
  loc_FE84CF: If (var_9C = "Add") Then
  loc_FE84F2:   Set var_88 = Me.Txt
  loc_FE84F8:   Call 0.Method_Form_Unload0 (CInt(0), var_A0, var_9C, "Delete From MemAddRWA where SubCode='")
  loc_FE8500:   var_114 = var_A0.Text
  loc_FE8516:   var_D0 = -1 & Trim(CVar(var_9C)) 
  loc_FE852D:   unk_5ADE06.Execute CStr(var_D0 & "'"), var_118, 
  loc_FE854B: End If
  loc_FE854F: Set var_88 = Me.TopCtrl1
  loc_FE8555: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE855D: var_9C = CStr()
  loc_FE856E: If (var_9C = "Edit") Then
  loc_FE8591:   Set var_88 = Me.Txt
  loc_FE8597:   Call 0.Method_Form_Unload0 (CInt(0), var_A0, var_9C, "Delete From MemAddRWA where SubCode='")
  loc_FE859F:   var_114 = var_A0.Text
  loc_FE85B5:   var_D0 = -1 & Trim(CVar(var_9C)) 
  loc_FE85CC:   unk_5ADE06.Execute CStr(var_D0 & "'And Mark='*'"), var_118, 
  loc_FE85EA: End If
  loc_FE85EA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EB00E4
  'Data Table: 5ADD9C
  loc_EB005C: On Error Goto loc_EB007C
  loc_EB0073: Proc_6_88_FE81B4(Me, KeyCode)
  loc_EB007B: Exit Sub
  loc_EB007C: ' Referenced from: EB005C
  loc_EB0084: Set var_88 = Err()
  loc_EB008A: Call 0.Method_arg_1C (var_8C, Shift)
  loc_EB009B: If (var_8C <> 0) Then
  loc_EB00A6:   Set var_88 = Err()
  loc_EB00AC:   Call 0.Method_arg_2C (var_90)
  loc_EB00CD:   MsgBox(CVar(var_90), &H40, "Validation", var_E0, var_100)
  loc_EB00E0: End If
  loc_EB00E0: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1ABB8
  'Data Table: 5ADD9C
  Dim KeyAscii As Integer
  loc_E1ABAC: If (KeyAscii = CInt(&HD)) Then
  loc_E1ABB1:   KeyAscii = 0
  loc_E1ABB4: End If
  loc_E1ABB4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10863E8
  'Data Table: 5ADD9C
  Dim var_8C As String
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_90 As Variant
  Dim var_CC As Field20
  Dim var_88 As Long
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As TextBox
  Dim var_A4 As Variant
  loc_1086148: On Error Goto loc_1086381
  loc_108614B: Call Proc_265_104_124C4B4()
  loc_1086150: Call Proc_265_105_EAFDB4()
  loc_1086178: Call Proc_265_103_10EBC50(Proc_5_1_100CB50("ADD", Me))
  loc_1086186: var_A4 = Date
  loc_108619D: Set var_90 = Me.Txt
  loc_10861A3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1C), var_A8)
  loc_10861AB: var_A8.Text = CStr(var_A4)
  loc_10861C3: var_C8 = 0
  loc_10861E2: unk_5ADE06.Execute "Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup Where IsNumeric(substring(SubCode,3,6))=1", var_A4, -1
  loc_10861EA: var_90 = var_90.Fields
  loc_10861F2: var_C8 = var_A8.Item(var_A8)
  loc_10861FA: var_CC = var_CC.Value
  loc_1086204: var_88 = CLng(var_DC)
  loc_1086224: var_EC = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2, var_88)) 'String
  loc_108624F: var_FC = (1 + Format(var_88, "000000"))
  loc_1086253: var_8C = CStr(var_FC)
  loc_1086262: Set var_90 = Me.Txt
  loc_1086268: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_A8, var_8C, 1)
  loc_1086298: Set var_90 = Me.Txt
  loc_108629E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_A8, var_8C)
  loc_10862A6: var_DC = var_EC
  loc_10862B9: Set var_CC = Me.Txt
  loc_10862BF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_100)
  loc_10862C7: var_100.Tag = var_8C
  loc_10862E5: Set var_90 = Me.Txt
  loc_10862EB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_A8)
  loc_10862F3: var_A8.SetFocus
  loc_108630E: global_152 = vbNullString
  loc_1086318: global_116 = "N"
  loc_1086329: Set var_90 = Me.Txt
  loc_108632F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1B), var_A8, 0)
  loc_1086337: var_A8.Enabled = CDbl(0)
  loc_108634F: Me.CmdMCard.Enabled = False
  loc_1086363: Me.CmdVarifyCard.Enabled = False
  loc_1086378: Me.LblAddType.Caption = "Residential Address"
  loc_1086380: Exit Sub
  loc_1086381: ' Referenced from: 1086148
  loc_1086389: Set var_90 = Err()
  loc_108638F: Call 0.Method_arg_1C (var_104)
  loc_10863A0: If (var_104 <> 0) Then
  loc_10863AB:   Set var_90 = Err()
  loc_10863B1:   Call 0.Method_arg_2C (var_8C)
  loc_10863D2:   MsgBox(CVar(var_8C), &H40, "Validation", var_EC, var_FC)
  loc_10863E5: End If
  loc_10863E5: Exit Sub
  loc_10863E6: Set arg_2474 = global_164
End Sub

Private Sub TopCtrl1_UnknownEvent_B '10C1468
  'Data Table: 5ADD9C
  Dim var_114 As String
  Dim var_118 As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_110 As CommandButton
  loc_10C1190: On Error Goto loc_10C1403
  loc_10C1193: Call Proc_265_106_104DB04()
  loc_10C11CF: If (MsgBox("Cancel ?", 4, "Terminate Process", var_EC, var_10C) = 6) Then
  loc_10C11D6:   Set var_110 = Me.TopCtrl1
  loc_10C11DC:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C11E4:   var_114 = CStr()
  loc_10C11F5:   If (var_114 = "Add") Then
  loc_10C1218:     Set var_110 = Me.Txt
  loc_10C121E:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(0), var_118, var_114, "Delete From MemAddRWA where SubCode='")
  loc_10C1226:     var_12C = var_118.Text
  loc_10C123C:     var_EC = -1 & Trim(CVar(var_114)) 
  loc_10C1253:     unk_5ADE06.Execute CStr(var_EC & "'"), var_130, 
  loc_10C1271:   End If
  loc_10C1275:   Set var_110 = Me.TopCtrl1
  loc_10C127B:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C1283:   var_114 = CStr()
  loc_10C1294:   If (var_114 = "Edit") Then
  loc_10C12B7:     Set var_110 = Me.Txt
  loc_10C12BD:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(0), var_118, var_114, "Delete From MemAddRWA where SubCode='")
  loc_10C12C5:     var_12C = var_118.Text
  loc_10C12DB:     var_EC = -1 & Trim(CVar(var_114)) 
  loc_10C12E4:     var_10C = var_EC & "'And Mark='*'" 
  loc_10C12F2:     unk_5ADE06.Execute CStr(var_10C), var_130, 
  loc_10C1310:   End If
  loc_10C1325:   var_114 = "INI"
  loc_10C1333:   Call Proc_265_103_10EBC50(Proc_5_1_100CB50(var_114, Me))
  loc_10C133E:   Call Proc_265_112_1B45AC0(global_164)
  loc_10C1351:   Set var_110 = Me.Txt
  loc_10C1357:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_132, var_86)
  loc_10C1367:   For var_136 =  To CByte((var_132 - 1)): CByte(0) = var_136 'Byte
  loc_10C1376:     If (CInt(var_86) <> 3) Then
  loc_10C138B:       Set var_110 = Me.Txt
  loc_10C1391:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_118)
  loc_10C1399:       var_118.BackColor = -2147483643
  loc_10C13B7:       Set var_110 = Me.Txt
  loc_10C13BD:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_118)
  loc_10C13C5:       var_118.ForeColor = &HC00000
  loc_10C13D1:     End If
  loc_10C13D4:   Next var_136 'Byte
  loc_10C13E6:   Me.CmdMCard.Enabled = True
  loc_10C13FA:   Me.CmdVarifyCard.Enabled = True
  loc_10C1402: End If
  loc_10C1402: Exit Sub
  loc_10C1403: ' Referenced from: 10C1190
  loc_10C140B: Set var_110 = Err()
  loc_10C1411: Call 0.Method_arg_1C (var_13C)
  loc_10C1422: If (var_13C <> 0) Then
  loc_10C142D:   Set var_110 = Err()
  loc_10C1433:   Call 0.Method_arg_2C (var_114)
  loc_10C1454:   MsgBox(CVar(var_114), &H40, "Validation", var_EC, var_10C)
  loc_10C1467: End If
  loc_10C1467: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '102CA34
  'Data Table: 5ADD9C
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_8C As Fields15
  loc_102C82B: If (Me.RecordCount > 0) Then
  loc_102C85B:   Set var_8C = Me.Txt
  loc_102C861:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where SubCode= '", var_BC, -1)
  loc_102C882:   unk_5ADE06.Execute var_C4 & var_94 & "' AND V_TYPE<>'F_AO'", 0, var_D8
  loc_102C892:    = var_C4.Item()
  loc_102C89A:    = var_D8.Value
  loc_102C8C7:   If (var_90.Text.Fields > 0) Then
  loc_102C8EB:     MsgBox("Transactions Exist Can't Delete it", &H40, "Information", var_108, var_128)
  loc_102C8FB:     Exit Sub
  loc_102C8FC:   End If
  loc_102C92E:   var_12C = "Smart Card Registration"
  loc_102C976:   If (Proc_6_108_1010FEC(MemVar_1F92044, "SmartCardRegistration", "MemberCode", CStr(Me.Fields.Item("subcode").Value)) = 0) Then
  loc_102C979:     Exit Sub
  loc_102C97A:   End If
  loc_102C9AC:   var_12C = "Member Billing"
  loc_102C9F4:   If (Proc_6_108_1010FEC(MemVar_1F92044, "MemBill", "MemCode", CStr(Me.Fields.Item("subcode").Value), 0) = 0) Then
  loc_102C9F7:     Exit Sub
  loc_102C9F8:   End If
  loc_102C9F8:   Call Proc_265_116_129E7E8(var_12C, 0, 0)
  loc_102CA00: Else
  loc_102CA21:   MsgBox("There Is No Record To Delete", &H40, "Information", var_108, var_128)
  loc_102CA31: End If
  loc_102CA31: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1174ECC
  'Data Table: 5ADD9C
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_D8 As Variant
  Dim var_90 As String
  Dim unk_5ADDC8 As Connection15
  Dim var_11C As Variant
  Dim var_128 As Variant
  Dim var_124 As Fields15
  Dim var_134 As TextBox
  Dim var_B8 As Variant
  loc_1174B18: On Error Goto loc_1174E65
  loc_1174B24: var_88 = Me.RecordCount
  loc_1174B32: If (var_88 > 0) Then
  loc_1174B41:   Me.CmdMCard.Enabled = False
  loc_1174B55:   Me.CmdVarifyCard.Enabled = False
  loc_1174B80:   Call Proc_265_103_10EBC50(Proc_5_1_100CB50("EDIT", Me))
  loc_1174B98:   Set var_8C = Me.Txt
  loc_1174B9E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_1174BA6:   var_98.Enabled = False
  loc_1174BDB:   Proc_6_17_EAA2B0(var_B8, MemVar_1F92078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1)
  loc_1174BF1:   unk_5ADDC8.Execute CStr(var_8C & var_B8), var_98, 0
  loc_1174C01:    = var_98.Item(global_164)
  loc_1174C33:   If (Proc_6_38_E68A98(CVar(var_8C.Fields)) <> vbNullString) Then
  loc_1174C5F:     Proc_6_17_EAA2B0(var_B8, MemVar_1F92078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1)
  loc_1174C6B:     var_90 = CStr(var_8C & var_B8)
  loc_1174C75:     unk_5ADDC8.Execute var_90, var_98, 0
  loc_1174C85:      = var_98.Item()
  loc_1174C8D:     var_11C = CVar(var_8C.Fields) 'Address
  loc_1174CA4:     Set var_124 = Me.Txt
  loc_1174CAA:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_128)
  loc_1174CB2:     var_128.Tag = Proc_6_38_E68A98(var_11C)
  loc_1174D01:     Set var_8C = Me.Txt
  loc_1174D07:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98, var_90, "Select GroupName From Acgroup Where GroupCode='", var_B8, -1)
  loc_1174D28:     unk_5ADDC8.Execute var_124 & var_90 & "'", 0, var_128
  loc_1174D38:      = var_124.Item()
  loc_1174D40:      = var_128.Value
  loc_1174D57:     Set var_130 = Me.Txt
  loc_1174D5D:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_134)
  loc_1174D65:     var_134.Text = CStr(var_98.Tag.Fields)
  loc_1174D9A:     Set var_8C = Me.Txt
  loc_1174DA0:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_1174DA8:     var_98.Enabled = False
  loc_1174DC0:     Call Txt_Validate(CInt(2))
  loc_1174DC5:   End If
  loc_1174DCD:   Call Proc_265_111_E5AB00(CByte(1))
  loc_1174DE7:   var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1174DEF:   Set var_98 = Me.FGrid
  loc_1174E16:   Set var_8C = Me.Txt
  loc_1174E1C:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98, FGrid.DispID_10000)
  loc_1174E24:   var_98.SetFocus
  loc_1174E33: Else
  loc_1174E3E:   var_D8 = "Information"
  loc_1174E54:   MsgBox("There Is No Record To Edit.", &H40, var_D8, var_F8, var_11C)
  loc_1174E64: End If
  loc_1174E64: Exit Sub
  loc_1174E65: ' Referenced from: 1174B18
  loc_1174E6D: Set var_8C = Err()
  loc_1174E73: Call 0.Method_arg_1C (var_88, var_D8)
  loc_1174E84: If (var_88 <> 0) Then
  loc_1174E8F:   Set var_8C = Err()
  loc_1174E95:   Call 0.Method_arg_2C (var_90)
  loc_1174EB6:   MsgBox(CVar(var_90), &H40, "Validation", var_F8, var_11C)
  loc_1174EC9: End If
  loc_1174EC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B23C
  'Data Table: 5ADD9C
  loc_E1B231: Me.Global.Unload Me
  loc_E1B239: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F27EE0
  'Data Table: 5ADD9C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F27DE0: On Error Goto loc_F27E78
  loc_F27DEC: var_88 = Me.RecordCount
  loc_F27DFA: If (var_88 <= 0) Then
  loc_F27E03:   var_B8 = "Information"
  loc_F27E1E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F27E2E:   Exit Sub
  loc_F27E2F: End If
  loc_F27E36: var_10C = "Select SubCode As SearchCode,AppNo As ApplicationNo,Name,CardNo,G.GroupName As UnderGroup,ConPrefix,RTrim(ConPerson+' '+ConPersonMName+' '+ConPersonLName) ConPerson,FatherName,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,a.areaname,Phone,Mobile,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,GSTIN,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active,CreditLimit,CreditDays,Remark From (((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode)) Left Join AreaMast a on (s.areacode=a.areacode)) Where S.Companytype in (SELECT Code FROM MemCatMast WHERE Corporate='N') AND  (S.LOGSITE_CODE='" & MemVar_1F92078
  loc_F27E3D: MemVar_1F920E4 = var_10C & "' OR S.LOGSITE_CODE='HO') Order by Name"
  loc_F27E4A: MemVar_1F92120 = Me
  loc_F27E51: var_10C = "1500,2500,900,900,500,2500,2500"
  loc_F27E57: Proc_183_54_F1DE80(var_10C)
  loc_F27E72: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F27E77: Exit Sub
  loc_F27E78: ' Referenced from: F27DE0
  loc_F27E80: Set var_110 = Err()
  loc_F27E86: Call 0.Method_arg_1C (var_88)
  loc_F27E97: If (var_88 <> 0) Then
  loc_F27EA2:   Set var_110 = Err()
  loc_F27EA8:   Call 0.Method_arg_2C (var_10C)
  loc_F27EC9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F27EDC: End If
  loc_F27EDC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C5F8
  'Data Table: 5ADD9C
  loc_E2C5E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2C5F0: Call Proc_265_112_1B45AC0(global_164)
  loc_E2C5F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2BBD8
  'Data Table: 5ADD9C
  loc_E2BBC8: Proc_5_0_110649C(&HFF, Me)
  loc_E2BBD0: Call Proc_265_112_1B45AC0(global_164)
  loc_E2BBD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2BE78
  'Data Table: 5ADD9C
  loc_E2BE68: Proc_5_0_110649C(&HFF, Me)
  loc_E2BE70: Call Proc_265_112_1B45AC0(global_164)
  loc_E2BE75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2B458
  'Data Table: 5ADD9C
  loc_E2B448: Proc_5_0_110649C(&HFF, Me)
  loc_E2B450: Call Proc_265_112_1B45AC0(global_164)
  loc_E2B455: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F0D284
  'Data Table: 5ADD9C
  Dim var_8C As Variant
  Dim var_88 As Frame
  loc_F0D19C: Call Proc_265_93_1016FA4()
  loc_F0D1AC: Set var_88 = Me.Txt
  loc_F0D1B2: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H32))
  loc_F0D1CA: If Not(IsDate(CVar(var_8C))) Then
  loc_F0D204:   Set var_88 = Me.Txt
  loc_F0D20A:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H32), var_8C, CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy")))
  loc_F0D212:   var_8C.Text = 1
  loc_F0D228: End If
  loc_F0D22C: Set var_88 = Me.TopCtrl1
  loc_F0D232: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010006(1)
  loc_F0D246: Me.Frame1.Top = CDbl(Me.Frame1)
  loc_F0D264: Me.Frame1.Left = CDbl(2900)
  loc_F0D278: Me.Frame1.Visible = True
  loc_F0D280: Exit Sub
  loc_F0D281: StUdtVar
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E636A4
  'Data Table: 5ADD9C
  Dim Me As Recordset15
  loc_E6365B: Me.Requery -1
  loc_E6366B: Me.Requery -1
  loc_E6367B: Me.Requery -1
  loc_E6368B: Me.Requery -1
  loc_E6369B: Me.Requery -1
  loc_E636A0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1510954
  'Data Table: 5ADD9C
  Dim var_94 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_104 As Variant
  Dim var_A0 As String
  Dim var_F0 As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_9C As Variant
  Dim var_F4 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_180 As String
  Dim var_188 As String
  Dim var_190 As String
  Dim var_90 As Variant
  Dim var_158 As Variant
  Dim var_C0 As Variant
  Dim var_1AC As Variant
  Dim unk_5ADDC8 As Connection15
  Dim var_204 As Field20
  loc_150FA7C: Set var_90 = Me.TxtGrid
  loc_150FA82: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_94)
  loc_150FA9C: If (var_94.Visible = &HFF) Then
  loc_150FAA7:   Call Proc_265_118_170B4C0(0)
  loc_150FAB2:   If (var_98 = 0) Then
  loc_150FABE:     Set var_90 = Me.TxtGrid
  loc_150FAC4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_94)
  loc_150FACC:     var_94.SetFocus
  loc_150FAD8:     Exit Sub
  loc_150FAD9:   End If
  loc_150FAD9: End If
  loc_150FAE5: Set var_90 = Me.TxtGrid
  loc_150FAEB: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_150FAF3: var_96 = var_94.Visible
  loc_150FB05: If (var_96 = &HFF) Then
  loc_150FB10:   Call Proc_265_118_170B4C0(0, var_98)
  loc_150FB1B:   If (var_98 = 0) Then
  loc_150FB27:     Set var_90 = Me.TxtGrid
  loc_150FB2D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_150FB35:     var_94.SetFocus
  loc_150FB41:     Exit Sub
  loc_150FB42:   End If
  loc_150FB42: End If
  loc_150FB42: Call Proc_265_106_104DB04(var_98)
  loc_150FB52: Set var_90 = Me.Txt
  loc_150FB58: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5))
  loc_150FB81: If (Proc_183_19_E8DAFC(var_94, "Application No.") = 0) Then
  loc_150FB84:   Exit Sub
  loc_150FB85: End If
  loc_150FB90: Set var_90 = Me.Txt
  loc_150FB96: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_150FBBF: If (Proc_183_19_E8DAFC(var_94, "A/C Name") = 0) Then
  loc_150FBC2:   Exit Sub
  loc_150FBC3: End If
  loc_150FBC6: Call Proc_265_97_10F7CDC(var_96)
  loc_150FBD1: If (var_96 = &HFF) Then
  loc_150FBD4:   Exit Sub
  loc_150FBD5: End If
  loc_150FBD8: Call Proc_265_98_1082EA4(var_96)
  loc_150FBE3: If (var_96 = &HFF) Then
  loc_150FBE6:   Exit Sub
  loc_150FBE7: End If
  loc_150FBF2: Set var_90 = Me.Txt
  loc_150FBF8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_150FC21: If (Proc_183_19_E8DAFC(var_94, "Under Group") = 0) Then
  loc_150FC24:   Exit Sub
  loc_150FC25: End If
  loc_150FC30: Set var_90 = Me.Txt
  loc_150FC36: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_94)
  loc_150FC5F: If (Proc_6_27_EA565C(var_94, "Id. Proof") = 0) Then
  loc_150FC69:   Call Txt_GotFocus()
  loc_150FC6E:   Exit Sub
  loc_150FC6F: End If
  loc_150FC7A: Set var_90 = Me.Txt
  loc_150FC80: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_94)
  loc_150FCB0: Set var_9C = Me.Txt
  loc_150FCB6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_F4, (Len(Trim(CVar(var_94))) <> 0))
  loc_150FCBE: var_104 = CVar(var_F4) 'Address
  loc_150FCEF: If CBool(CInt(&H2B) And (Trim(var_104) <> "NA")) Then
  loc_150FCFD:   Set var_90 = Me.Txt
  loc_150FD03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_94)
  loc_150FD2C:   If (Proc_6_27_EA565C(var_94, "Id. Proof No.") = 0) Then
  loc_150FD36:     Call Txt_GotFocus()
  loc_150FD3B:     Exit Sub
  loc_150FD3C:   End If
  loc_150FD3C: End If
  loc_150FD40: Set var_90 = Me.TopCtrl1
  loc_150FD46: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(&H2C))
  loc_150FD4E: var_A0 = CStr(var_94)
  loc_150FD5F: If (var_A0 = "Add") Then
  loc_150FD91:   Set var_90 = Me.Txt
  loc_150FD97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_A0, "Select Count(*) from memAddRWA where Name='Residential Address'  And Subcode='", var_104, -1)
  loc_150FDB5:   var_D0 = var_F4 & Trim(CVar(var_A0)) 
  loc_150FDBE:   var_F0 = var_D0 & "' And Mark='*'" 
  loc_150FDCC:   unk_5ADE06.Execute CStr(var_F0), 0, var_16C
  loc_150FDDC:    = var_F4.Item()
  loc_150FDE4:    = var_16C.Value
  loc_150FE13:   If (var_94.Text.Fields <= 0) Then
  loc_150FE37:     MsgBox("Residential Address is required Field", &H10, "Validation Error", var_D0, var_F0)
  loc_150FE47:     Exit Sub
  loc_150FE48:   End If
  loc_150FE48: End If
  loc_150FE4C: Set var_90 = Me.TopCtrl1
  loc_150FE52: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_150FE5A: var_A0 = CStr()
  loc_150FE6B: If (var_A0 = "Edit") Then
  loc_150FE9D:   Set var_90 = Me.Txt
  loc_150FEA3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_A0, "Select Count(*) from memAddRWA where Name='Residential Address'  And Subcode='", var_104, -1)
  loc_150FEAB:   var_9C = var_94.Text
  loc_150FEC1:   var_D0 = var_F4 & Trim(CVar(var_A0)) 
  loc_150FECA:   var_F0 = var_D0 & "'" 
  loc_150FED8:   unk_5ADE06.Execute CStr(var_F0), 0, var_16C
  loc_150FEE8:    = var_F4.Item()
  loc_150FEF0:    = var_16C.Value
  loc_150FF1F:   If (var_9C.Fields <= 0) Then
  loc_150FF43:     MsgBox("Residential Address is required Field", &H10, "Validation Error", var_D0, var_F0)
  loc_150FF53:     Exit Sub
  loc_150FF54:   End If
  loc_150FF54: End If
  loc_150FF58: Set var_90 = Me.TopCtrl1
  loc_150FF5E: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_150FF66: var_A0 = CStr()
  loc_150FF77: If (var_A0 = "Add") Then
  loc_150FF98:   Set var_90 = Me.Txt
  loc_150FF9E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_150FFA6:   var_B0 = var_94.Text
  loc_150FFB7:   var_180 = Proc_183_20_FB3974(var_A0, -1)
  loc_150FFCB:   unk_5ADE06.Execute var_9C & var_180 & "'", , 
  loc_1510004:   If (var_9C.RecordCount > 0) Then
  loc_1510028:     MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_D0, var_F0)
  loc_1510043:     Set var_90 = Me.Txt
  loc_1510049:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1510051:     var_94.SetFocus
  loc_151005D:     Exit Sub
  loc_151005E:   End If
  loc_1510061: Else
  loc_1510065:   Set var_90 = Me.TopCtrl1
  loc_151006B:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1510073:   var_A0 = CStr()
  loc_1510084:   If (var_A0 = "Edit") Then
  loc_15100A5:     Set var_90 = Me.Txt
  loc_15100AB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_15100B3:     var_B0 = var_94.Text
  loc_15100C4:     var_180 = Proc_183_20_FB3974(var_A0, -1)
  loc_15100CF:     var_188 = var_9C & var_180 & "' and Name<>'"
  loc_15100E9:     unk_5ADE06.Execute var_188 & global_136 & "'", , 
  loc_1510126:     If (var_9C.RecordCount > 0) Then
  loc_151014A:       MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_D0, var_F0)
  loc_151016B:       Set var_90 = Me.Txt
  loc_1510171:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1510179:       var_94.Text = global_136
  loc_1510190:       Set var_90 = Me.Txt
  loc_1510196:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_151019E:       var_94.SetFocus
  loc_15101AA:       Exit Sub
  loc_15101AB:     End If
  loc_15101AB:   End If
  loc_15101AB: End If
  loc_15101D0: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_198 'Integer
  loc_15101DA:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_15101E2:   var_158 = CVar(CLng(3)) 'Long
  loc_1510212:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1510219:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1510221:     var_158 = CVar(CLng(4)) 'Long
  loc_151024C:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1510274:       MsgBox(CVar("Please Specify Cr/Dr in Row No " & CStr(var_86)), &H40, "Validation", var_D0, var_F0)
  loc_151029A:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_15102B4:       Me.FGrid.Col = CVar(CLng(4))
  loc_15102C0:       Set var_90 = Me.FGrid
  loc_15102E4:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_15102EC:       Exit Sub
  loc_15102ED:     End If
  loc_15102ED:   End If
  loc_15102F0: Next var_198 'Integer
  loc_151031A: For var_19C = 1 To CInt((CLng(Me.FAGrid.Rows) - 1)): var_86 = var_19C 'Integer
  loc_1510324:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_151032C:   var_158 = CVar(CLng(5)) 'Long
  loc_1510346:   var_A0 = CStr(Me.FAGrid.TextMatrix))
  loc_1510352:   var_17C = CVar(CLng(var_86)) 'Long
  loc_1510392:   If (CVar(CLng(&H1E)) Or (CStr(Me.FAGrid.TextMatrix)) <> vbNullString)) Then
  loc_1510399:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_15103A1:     var_158 = CVar(CLng(4)) 'Long
  loc_15103CC:     If (CStr(Me.FAGrid.TextMatrix)) = vbNullString) Then
  loc_15103EF:       MsgBox(CVar("Prefix" & " is a required field."), &H10, "Validation Error", var_D0, var_F0)
  loc_1510412:       Me.FAGrid.Row = CVar(CLng(var_86))
  loc_151042C:       Me.FAGrid.Col = CVar(CLng(4))
  loc_1510438:       Set var_90 = Me.FAGrid
  loc_1510449:       Exit Sub
  loc_151044A:     End If
  loc_151044E:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1510456:     var_158 = CVar(CLng(3)) 'Long
  loc_1510481:     If (CStr(Me.FAGrid.TextMatrix)) = vbNullString) Then
  loc_15104A4:       MsgBox(CVar("Relation" & " is a required field."), &H10, "Validation Error", var_D0, var_F0)
  loc_15104C7:       Me.FAGrid.Row = CVar(CLng(var_86))
  loc_15104E1:       Me.FAGrid.Col = CVar(CLng(3))
  loc_15104ED:       Set var_90 = Me.FAGrid
  loc_15104FE:       Exit Sub
  loc_15104FF:     End If
  loc_1510503:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_151050B:     var_158 = CVar(CLng(3)) 'Long
  loc_1510525:     var_C0 = CVar(CStr(Me.FAGrid.TextMatrix))) 'String
  loc_151052B:     var_D0 = Ucase(var_C0)
  loc_1510558:     var_104 = Me.FAGrid.TextMatrix)
  loc_1510597:     If CBool(CVar(CLng(3)) Or (Ucase(CVar(CStr(var_104))) = "MOTHER")) Then
  loc_15105B5:       var_B0 = Me.FAGrid.TextMatrix)
  loc_15105CF:       Set var_94 = Me.Txt
  loc_15105D5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_188, var_B0, CVar(CLng(3)), CVar(CLng(var_86)), CVar(CLng(var_86)))
  loc_15105DD:       (var_D0 = "FATHER") = var_9C.Text
  loc_15105E8:       var_1AC = 0
  loc_151061E:       var_190 = "Select Count(*) From MemberFamily Where LogSite_Code='" & MemVar_1F92078 & "' And Relationship='" & CStr(var_B0) & "' And SubCode='"
  loc_1510635:       unk_5ADDC8.Execute var_190 & var_188 & "'", var_C0, -1
  loc_151063D:       var_F4 = var_F4.Fields
  loc_1510645:       var_1AC = var_16C.Item(var_16C)
  loc_151064D:       var_204 = var_204.Value
  loc_1510688:       If (var_D0 > 0) Then
  loc_151068F:         var_E0 = CVar(CLng(var_86)) 'Long
  loc_1510697:         var_158 = CVar(CLng(3)) 'Long
  loc_15106CE:         MsgBox(CVar(CStr(Me.FAGrid.TextMatrix)) & " Detail Already Exists."), &H40, var_D0, var_F0, var_104)
  loc_15106F9:         Me.FAGrid.Row = CVar(CLng(var_86))
  loc_1510713:         Me.FAGrid.Col = CVar(CLng(3))
  loc_151071F:         Set var_90 = Me.FAGrid
  loc_1510730:         Exit Sub
  loc_1510731:       End If
  loc_1510731:     End If
  loc_1510735:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_151073D:     var_158 = CVar(CLng(5)) 'Long
  loc_1510768:     If (CStr(Me.FAGrid.TextMatrix)) = vbNullString) Then
  loc_151078B:       MsgBox(CVar("Name" & " is a required field."), &H10, "Validation Error", var_D0, var_F0)
  loc_15107AE:       Me.FAGrid.Row = CVar(CLng(var_86))
  loc_15107C8:       Me.FAGrid.Col = CVar(CLng(5))
  loc_15107D4:       Set var_90 = Me.FAGrid
  loc_15107E5:       Exit Sub
  loc_15107E6:     End If
  loc_15107EA:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_15107F2:     var_158 = CVar(CLng(6)) 'Long
  loc_151081D:     If (CStr(Me.FAGrid.TextMatrix)) = vbNullString) Then
  loc_1510840:       MsgBox(CVar("Gender" & " is a required field."), &H10, "Validation Error", var_D0, var_F0)
  loc_1510863:       Me.FAGrid.Row = CVar(CLng(var_86))
  loc_151087D:       Me.FAGrid.Col = CVar(CLng(6))
  loc_1510889:       Set var_90 = Me.FAGrid
  loc_151089A:       Exit Sub
  loc_151089B:     End If
  loc_151089B:   End If
  loc_151089E: Next var_19C 'Integer
  loc_15108A7: Set var_90 = Me.TopCtrl1
  loc_15108AD: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15108C6: If (CStr() = "Add") Then
  loc_15108C9:   Call Proc_265_114_1773D8C()
  loc_15108D1: Else
  loc_15108D1:   Call Proc_265_115_1A74880()
  loc_15108E2:   Me.CmdMCard.Enabled = True
  loc_15108F6:   Me.CmdVarifyCard.Enabled = True
  loc_15108FE: End If
  loc_151090E: Set var_90 = Me.Txt
  loc_1510914: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_94)
  loc_151091C: var_94.BackColor = &HC0FFFF
  loc_1510938: Set var_90 = Me.Txt
  loc_151093E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_94)
  loc_1510946: var_94.ForeColor = &HFF
  loc_1510952: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E5F3B4
  'Data Table: 5ADD9C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5F37F: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E5F392: Set var_A8 = Me.TxtGrid
  loc_E5F398: Call 0.Method_Fgrid1_UnknownEvent_00 (2, var_AC)
  loc_E5F3A0: var_AC.Visible = False
  loc_E5F3AC: Call Proc_265_106_104DB04()
  loc_E5F3B1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E69870
  'Data Table: 5ADD9C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6982C: Set var_88 = Me.TxtGrid
  loc_E69832: Call 0.Method_Fgrid1_UnknownEvent_10 (2, var_8C)
  loc_E6984C: If (var_8C.Visible = 0) Then
  loc_E69865:   Me.FGrid1.BackColorSel = CVar(CLng(global_280))
  loc_E6986D: End If
  loc_E6986D: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E48D1C
  'Data Table: 5ADD9C
  loc_E48CF4: Set var_88 = Me.TopCtrl1
  loc_E48CFA: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E48D13: If (CStr() <> "Browse") Then
  loc_E48D16:   Call Proc_265_94_E41814()
  loc_E48D1B: End If
  loc_E48D1B: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '10D5790
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyAscii As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10D5490: Set var_88 = Me.TopCtrl1
  loc_10D5496: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10D54DB: If ((CStr() = "Browse") And ((((CLng(KeyAscii) = &H24) Or (CLng(KeyAscii) = &H23)) Or (CLng(KeyAscii) = &H21)) Or (CLng(KeyAscii) = &H22))) Then
  loc_10D54E4:   Call Form_KeyDown(KeyAscii, arg_10)
  loc_10D54E9: End If
  loc_10D54ED: Set var_88 = Me.TopCtrl1
  loc_10D54F3: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10D550C: If (CStr() = "Browse") Then
  loc_10D550F:   Exit Sub
  loc_10D5510: End If
  loc_10D5584: If ((CLng(KeyAscii) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_10D558F:   var_9C = "+{Tab}"
  loc_10D5595:   Proc_303_0_FB9B68(CStr(Me.FGrid1.Tag), 0)
  loc_10D559F:   KeyAscii = 0
  loc_10D55A5: Else
  loc_10D55FC:   If ((CLng(KeyAscii) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_10D5601:     KeyAscii = 0
  loc_10D5604:   End If
  loc_10D5604: End If
  loc_10D560A: global_112 = KeyAscii
  loc_10D5630: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_10D5654: If ((CLng(KeyAscii) = &H2E) And (arg_10 = 0)) Then
  loc_10D566A:   var_DC = CLng(Me.FGrid1.Col)
  loc_10D567A:   If (var_DC = CLng(1)) Then
  loc_10D5690:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D5698:     var_FC = CVar(CLng(1)) 'Long
  loc_10D569D:     var_11C = vbNullString
  loc_10D56A7:     Set var_A0 = Me.FGrid1
  loc_10D56AD:     LateIdCallSt
  loc_10D56D2:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D56DA:     var_FC = CVar(CLng(6)) 'Long
  loc_10D56DF:     var_11C = vbNullString
  loc_10D56E9:     Set var_A0 = Me.FGrid1
  loc_10D56EF:     LateIdCallSt
  loc_10D5704:   Else
  loc_10D570B:     If (var_DC = CLng(2)) Then
  loc_10D5721:       var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D5739:       var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10D573E:       var_11C = vbNullString
  loc_10D5748:       Set var_B4 = Me.FGrid1
  loc_10D574E:       LateIdCallSt
  loc_10D5766:     End If
  loc_10D5766:   End If
  loc_10D5766: End If
  loc_10D5770: If (CLng(KeyAscii) = &HD) Then
  loc_10D577C:   Call Fgrid1_UnknownEvent_C()
  loc_10D5786:   global_110 = 0
  loc_10D5789: End If
  loc_10D578B: KeyAscii = 0
  loc_10D578E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E5831C
  'Data Table: 5ADD9C
  loc_E582E8: Set var_88 = Me.TopCtrl1
  loc_E582EE: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E58307: If (CStr() = "Browse") Then
  loc_E5830A:   Exit Sub
  loc_E5830B: End If
  loc_E58314: Call Fgrid1_UnknownEvent_C()
  loc_E58319: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C '111803C
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_CE As Integer
  Dim var_C8 As TextBox
  loc_1117CEC: Set var_88 = Me.TopCtrl1
  loc_1117CF2: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1117D0B: If (CStr() = "Browse") Then
  loc_1117D0E:   Exit Sub
  loc_1117D0F: End If
  loc_1117D22: var_A0 = CLng(Me.FGrid1.Col)
  loc_1117D32: If (var_A0 = CLng(1)) Then
  loc_1117D43:   Set var_88 = Me.TxtGrid
  loc_1117D49:   Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_1117D51:   var_A4.MaxLength = &H32
  loc_1117D60: Else
  loc_1117D67:   If (var_A0 = CLng(2)) Then
  loc_1117D78:     Set var_88 = Me.TxtGrid
  loc_1117D7E:     Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_1117D86:     var_A4.MaxLength = 8
  loc_1117D95:   Else
  loc_1117D9C:     If (var_A0 = CLng(3)) Then
  loc_1117DAD:       Set var_88 = Me.TxtGrid
  loc_1117DB3:       Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_1117DBB:       var_A4.MaxLength = &HF
  loc_1117DCA:     Else
  loc_1117DD1:       If (var_A0 = CLng(4)) Then
  loc_1117DE2:         Set var_88 = Me.TxtGrid
  loc_1117DE8:         Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_1117DF0:         var_A4.MaxLength = &HB
  loc_1117DFF:       Else
  loc_1117E06:         If (var_A0 = CLng(5)) Then
  loc_1117E17:           Set var_88 = Me.TxtGrid
  loc_1117E1D:           Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_1117E25:           var_A4.MaxLength = 3
  loc_1117E31:         End If
  loc_1117E31:       End If
  loc_1117E31:     End If
  loc_1117E31:   End If
  loc_1117E31: End If
  loc_1117E44: var_A8 = CLng(Me.FGrid1.Col)
  loc_1117E54: If Not (var_A8 = CLng(1)) Then
  loc_1117E5E:   If Not (var_A8 = CLng(3)) Then
  loc_1117E68:     If Not (var_A8 = CLng(5)) Then
  loc_1117E72:       If (var_A8 = CLng(4)) Then
  loc_1117E75:       End If
  loc_1117E75:     End If
  loc_1117E75:   End If
  loc_1117E79:   Set var_C8 = Me.FGrid1
  loc_1117E9D:   var_9C = CStr(Ucase(Chr(CLng(KeyAscii))))
  loc_1117ECA:   Set var_A4 = var_C8
  loc_1117EDC:   Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 2, 0)
  loc_1117F04:   Set var_88 = Me.TxtGrid
  loc_1117F0A:   Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4, var_9C, Asc(var_9C))
  loc_1117F12:   0 = var_A4.Text
  loc_1117F2B:   If (Len(var_9C) <= 1) Then
  loc_1117F3A:     Set var_88 = Me.TxtGrid
  loc_1117F40:     Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4, var_9C)
  loc_1117F48:     var_CE = var_A4.Text
  loc_1117F59:     Set var_BC = Me.TxtGrid
  loc_1117F5F:     Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_C8, var_9C)
  loc_1117F67:     var_C8.Text = var_A8
  loc_1117F7A:   End If
  loc_1117F86:   Set var_88 = Me.TxtGrid
  loc_1117F8C:   Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_1117FA6:   Set var_BC = Me.TxtGrid
  loc_1117FAC:   Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_C8)
  loc_1117FB4:   var_C8.SelStart = Len(var_A4.Text)
  loc_1117FCA: Else
  loc_1117FD1:   If (var_A8 = CLng(2)) Then
  loc_1118012:     Proc_6_63_110ABA4(Me, Me.FGrid1, Me.TxtGrid, 2)
  loc_1118024:   End If
  loc_1118024: End If
  loc_111802E: If (CLng(KeyAscii) <> &HD) Then
  loc_1118036:   global_110 = &HFF
  loc_1118039: End If
  loc_1118039: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FE56BC
  'Data Table: 5ADD9C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE54EC: Set var_88 = Me.TopCtrl1
  loc_FE54F2: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE550B: If (CStr() = "Browse") Then
  loc_FE550E:   Exit Sub
  loc_FE550F: End If
  loc_FE552C: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FE552F:   Exit Sub
  loc_FE5530: End If
  loc_FE5541: If ((CLng(KeyAscii) = &H44) And (arg_10 = 2)) Then
  loc_FE5563:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_FE559D:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE55BF:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FE55D5:         var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FE55DE:         Set var_110 = Me.FGrid1
  loc_FE55F9:       Else
  loc_FE560C:         Me.FGrid1.Rows = 1
  loc_FE5632:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, CInt(0)))) 'String
  loc_FE563A:         Set var_110 = Me.FGrid1
  loc_FE5667:         Me.FGrid1.FixedRows = 1
  loc_FE566F:       End If
  loc_FE566F:     End If
  loc_FE5672:   Else
  loc_FE5693:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE56A3:   End If
  loc_FE56A7:   Set var_88 = Me.FGrid1
  loc_FE56B8: End If
  loc_FE56B8: Exit Sub
  loc_FE56B9: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E4187C
  'Data Table: 5ADD9C
  Dim var_8C As TextBox
  loc_E41850: Call Proc_265_106_104DB04()
  loc_E41860: Set var_88 = Me.TxtGrid
  loc_E41866: Call 0.Method_Fgrid1_UnknownEvent_150 (2, var_8C)
  loc_E4186E: var_8C.Visible = False
  loc_E4187A: Exit Sub
End Sub

Private Sub CmdAdd_UnknownEvent_9 '1A96E40
  'Data Table: 5ADD9C
  Dim var_D8 As String
  Dim var_FC As Variant
  Dim var_DC As Variant
  Dim var_D4 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_130 As String
  Dim unk_5ADE06 As Connection15
  Dim var_A4 As Recordset15
  Dim var_154 As Variant
  Dim var_150 As Variant
  Dim var_140 As String
  Dim var_160 As Fields15
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_A8 As Recordset15
  Dim var_1B8 As Fields15
  Dim var_220 As Fields15
  Dim var_264 As Variant
  Dim var_AC As Recordset15
  Dim var_288 As Fields15
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_2EC As Variant
  Dim var_2F0 As Fields15
  Dim var_334 As Variant
  Dim var_37A As Integer
  Dim var_94 As Recordset15
  Dim var_C4 As Variant
  Dim var_15C As TextBox
  Dim var_9C As Recordset15
  Dim var_EC As Variant
  Dim var_A0 As Recordset15
  Dim var_B0 As Recordset15
  Dim var_86 As Integer
  Dim var_164 As TextBox
  Dim var_1CC As TextBox
  Dim var_234 As TextBox
  Dim var_29C As TextBox
  Dim var_304 As TextBox
  Dim var_3A0 As TextBox
  Dim var_3CC As TextBox
  Dim var_408 As TextBox
  Dim var_444 As TextBox
  Dim var_480 As TextBox
  Dim var_4EC As TextBox
  Dim var_1EC As Variant
  Dim var_2BC As Variant
  Dim var_374 As Variant
  Dim var_3F0 As Variant
  Dim var_42C As Variant
  Dim var_510 As Variant
  Dim var_5A0 As Variant
  Dim var_660 As Variant
  Dim var_6A0 As Variant
  Dim var_70C As TextBox
  Dim var_704 As Variant
  Dim var_74C As Variant
  Dim unk_5ADDC8 As Connection15
  loc_1A9328C: On Error Goto loc_1A96DE0
  loc_1A93293: Set var_C4 = Me.TopCtrl1
  loc_1A93299: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A932A1: var_D8 = CStr()
  loc_1A932B2: If (var_D8 = "Browse") Then
  loc_1A932C2:   var_FC = "Select MemAddRWA.*,City.CityName As CityN,State.Name As StateN,Country.Name As CountryN From MemAddRWA Left join City On MemAddRWA.City=City.CityCode Left Join State On MemAddRWA.State=State.Code Left Join Country On MemAddRWA.Country=Country.Code where MemAddRWA.Subcode='"
  loc_1A932D5:   Set var_C4 = Me.Txt
  loc_1A932DB:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, var_FC)
  loc_1A932E3:   var_150 = var_DC.Text
  loc_1A932F9:   var_10C = -1 & Trim(CVar(var_D8)) 
  loc_1A93310:   unk_5ADE06.Execute CStr(var_10C & "' And Mark=''"), var_154, 
  loc_1A9331B:   Set var_94 = var_154
  loc_1A93337: End If
  loc_1A9333B: Set var_C4 = Me.TopCtrl1
  loc_1A93341: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A93349: var_D8 = CStr()
  loc_1A9335A: If (var_D8 = "Add") Then
  loc_1A9336A:   var_FC = "Select MemAddRWA.*,City.CityName As CityN,State.Name As StateN,Country.Name As CountryN From MemAddRWA Left join City On MemAddRWA.City=City.CityCode Left Join State On MemAddRWA.State=State.Code Left Join Country On MemAddRWA.Country=Country.Code where MemAddRWA.Subcode='"
  loc_1A9337D:   Set var_C4 = Me.Txt
  loc_1A93383:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, var_FC)
  loc_1A9338B:   var_150 = var_DC.Text
  loc_1A93399:   var_EC = Trim(CVar(var_D8))
  loc_1A933A1:   var_10C = -1 & var_EC 
  loc_1A933B8:   unk_5ADE06.Execute CStr(var_10C & "' And Mark='*'"), var_154, 
  loc_1A933C3:   Set var_9C = var_154
  loc_1A933DF: End If
  loc_1A933E3: Set var_C4 = Me.TopCtrl1
  loc_1A933E9: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A933F1: var_D8 = CStr()
  loc_1A93402: If (var_D8 = "Edit") Then
  loc_1A93423:   Set var_C4 = Me.Txt
  loc_1A93429:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A93431:   var_D4 = var_DC.Text
  loc_1A9343A:   var_130 = -1 & var_D8
  loc_1A9344A:   unk_5ADE06.Execute CStr(var_10C & "' And Mark='*'") & "' And Name='Residential Address'", var_154, 
  loc_1A93455:   Set var_A4 = var_154
  loc_1A9348B:   Set var_C4 = Me.Txt
  loc_1A93491:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A93499:   var_D4 = var_DC.Text
  loc_1A934A2:   var_130 = -1 & var_D8
  loc_1A934B2:   unk_5ADE06.Execute CStr(var_10C & "' And Mark='*'") & "' And Name='WorkPlace Address'", var_154, 
  loc_1A934BD:   Set var_A8 = var_154
  loc_1A934F3:   Set var_C4 = Me.Txt
  loc_1A934F9:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A93501:   var_D4 = var_DC.Text
  loc_1A9350A:   var_130 = -1 & var_D8
  loc_1A9351A:   unk_5ADE06.Execute CStr(var_10C & "' And Mark='*'") & "' And Name='Abroad Address'", var_154, 
  loc_1A93525:   Set var_AC = var_154
  loc_1A9355B:   Set var_C4 = Me.Txt
  loc_1A93561:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select MemAddRWA.*,City.CityName As CityN,State.Name As StateN,Country.Name As CountryN From MemAddRWA Left join City On MemAddRWA.City=City.CityCode Left Join State On MemAddRWA.State=State.Code Left Join Country On MemAddRWA.Country=Country.Code where MemAddRWA.subcode ='")
  loc_1A93569:   var_374 = var_DC.Text
  loc_1A93572:   var_130 = -1 & var_D8
  loc_1A93593:   var_15C = var_A4.Fields.Item("SNo")
  loc_1A935A2:   Proc_183_3_E7D1C8(var_EC, CVar(var_15C))
  loc_1A935B3:   var_150 = CVar(CStr(CVar(CStr(var_10C & "' And Mark='*'") & "' And ((MemAddRWA.SNo=") & "' And Mark='*'") & "' And ((MemAddRWA.SNo=") & var_EC & " And MemAddRWA.Name ='" 
  loc_1A935BA:   var_140 = "Name"
  loc_1A935C6:   var_160 = var_A4.Fields
  loc_1A935E2:   var_194 = var_378 & CVar(Proc_183_2_E5A304(CVar(var_160.Item(var_140)), var_150)) 
  loc_1A93615:   Proc_183_3_E7D1C8(var_1EC, CVar(var_A8.Fields.Item("SNo")))
  loc_1A93655:   var_264 = var_194 & "')  Or (MemAddRWA.SNo=" & var_1EC & " And MemAddRWA.Name ='" & CVar(Proc_183_2_E5A304(CVar(var_A8.Fields.Item("Name")))) 
  loc_1A93688:   Proc_183_3_E7D1C8(var_2BC, CVar(var_AC.Fields.Item("SNo")))
  loc_1A936C8:   var_334 = var_264 & "')  Or (MemAddRWA.SNo=" & var_2BC & " And MemAddRWA.Name ='" & CVar(Proc_183_2_E5A304(CVar(var_AC.Fields.Item("Name")))) 
  loc_1A936DF:   unk_5ADE06.Execute CStr(var_334 & "'))"), , 
  loc_1A936EA:   Set var_94 = var_378
  loc_1A93742: End If
  loc_1A93745: var_37A = KeyAscii
  loc_1A93750: If (var_37A = CInt(0)) Then
  loc_1A9375D:   Set var_C4 = Me.CmdAdd
  loc_1A93763:   Call 0.Method_CmdAdd_UnknownEvent_90 (KeyAscii, var_DC)
  loc_1A9376B:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA(var_37A)
  loc_1A93780:   Me.LblAddType.Caption = CStr()
  loc_1A93798:   Set var_C4 = Me.TopCtrl1
  loc_1A9379E:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A937B2:   Set var_DC = Me.TopCtrl1
  loc_1A937B8:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Edit"))
  loc_1A937DE:   If ( Or (CStr() = "Browse")) Then
  loc_1A937E1:     Call Proc_265_105_EAFDB4()
  loc_1A937E9:     var_94.MoveFirst
  loc_1A93838:     var_94.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A93862:     If (var_94.AbsolutePosition > 0) Then
  loc_1A9389B:       Set var_154 = Me.TxtA
  loc_1A938A1:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A938A9:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add1")))
  loc_1A938F3:       Set var_154 = Me.TxtA
  loc_1A938F9:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A93901:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add2")))
  loc_1A9394B:       Set var_154 = Me.TxtA
  loc_1A93951:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A93959:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add3")))
  loc_1A939A3:       Set var_154 = Me.TxtA
  loc_1A939A9:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A939B1:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("PinCode")))
  loc_1A939FB:       Set var_154 = Me.TxtA
  loc_1A93A01:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A93A09:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("CityN")))
  loc_1A93A53:       Set var_154 = Me.TxtA
  loc_1A93A59:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A93A61:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("City")))
  loc_1A93AAB:       Set var_154 = Me.TxtA
  loc_1A93AB1:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A93AB9:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("StateN")))
  loc_1A93B03:       Set var_154 = Me.TxtA
  loc_1A93B09:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A93B11:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("State")))
  loc_1A93B5B:       Set var_154 = Me.TxtA
  loc_1A93B61:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A93B69:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("CountryN")))
  loc_1A93BB3:       Set var_154 = Me.TxtA
  loc_1A93BB9:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A93BC1:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Country")))
  loc_1A93C0B:       Set var_154 = Me.TxtA
  loc_1A93C11:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A93C19:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Phone")))
  loc_1A93C63:       Set var_154 = Me.TxtA
  loc_1A93C69:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A93C71:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Mobile")))
  loc_1A93CBB:       Set var_154 = Me.TxtA
  loc_1A93CC1:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A93CC9:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Mobile1")))
  loc_1A93D13:       Set var_154 = Me.TxtA
  loc_1A93D19:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A93D21:       var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Email")))
  loc_1A93D96:       Me.ChkCorresAdd.Value = CInt(IIf((var_94.Fields.Item("CorresYN").Value = "Y"), 1, 0))
  loc_1A93DB6:       Set var_94 = Nothing
  loc_1A93DB9:     End If
  loc_1A93DB9:   End If
  loc_1A93DBD:   Set var_C4 = Me.TopCtrl1
  loc_1A93DC3:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_1A93DDC:   If (CStr() = "Add") Then
  loc_1A93DDF:     Call Proc_265_105_EAFDB4()
  loc_1A93DE7:     var_9C.MoveFirst
  loc_1A93E36:     var_9C.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A93E60:     If (var_9C.AbsolutePosition > 0) Then
  loc_1A93E99:       Set var_154 = Me.TxtA
  loc_1A93E9F:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A93EA7:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1")))
  loc_1A93EF1:       Set var_154 = Me.TxtA
  loc_1A93EF7:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A93EFF:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2")))
  loc_1A93F49:       Set var_154 = Me.TxtA
  loc_1A93F4F:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A93F57:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add3")))
  loc_1A93FA1:       Set var_154 = Me.TxtA
  loc_1A93FA7:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A93FAF:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("PinCode")))
  loc_1A93FF9:       Set var_154 = Me.TxtA
  loc_1A93FFF:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A94007:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CityN")))
  loc_1A94051:       Set var_154 = Me.TxtA
  loc_1A94057:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A9405F:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("City")))
  loc_1A940A9:       Set var_154 = Me.TxtA
  loc_1A940AF:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A940B7:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("StateN")))
  loc_1A94101:       Set var_154 = Me.TxtA
  loc_1A94107:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A9410F:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("State")))
  loc_1A94159:       Set var_154 = Me.TxtA
  loc_1A9415F:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A94167:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CountryN")))
  loc_1A941B1:       Set var_154 = Me.TxtA
  loc_1A941B7:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A941BF:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Country")))
  loc_1A94209:       Set var_154 = Me.TxtA
  loc_1A9420F:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A94217:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Phone")))
  loc_1A94261:       Set var_154 = Me.TxtA
  loc_1A94267:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A9426F:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Mobile")))
  loc_1A942B9:       Set var_154 = Me.TxtA
  loc_1A942BF:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A942C7:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Mobile1")))
  loc_1A94311:       Set var_154 = Me.TxtA
  loc_1A94317:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A9431F:       var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Email")))
  loc_1A9434D:       var_DC = var_9C.Fields.Item("CorresYN")
  loc_1A94394:       Me.ChkCorresAdd.Value = CInt(IIf((var_DC.Value = "Y"), 1, 0))
  loc_1A943AF:     End If
  loc_1A943AF:   End If
  loc_1A943B2: Else
  loc_1A943BA:   If (var_37A = CInt(1)) Then
  loc_1A943C7:     Set var_C4 = Me.CmdAdd
  loc_1A943CD:     Call 0.Method_CmdAdd_UnknownEvent_90 (KeyAscii, var_DC)
  loc_1A943D5:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA(var_140)
  loc_1A943EA:     Me.LblAddType.Caption = CStr()
  loc_1A94402:     Set var_C4 = Me.TopCtrl1
  loc_1A94408:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A9441C:     Set var_DC = Me.TopCtrl1
  loc_1A94422:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Edit"))
  loc_1A94448:     If ( Or (CStr() = "Browse")) Then
  loc_1A9444B:       Call Proc_265_105_EAFDB4()
  loc_1A94453:       var_94.MoveFirst
  loc_1A944A2:       var_94.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A944CC:       If (var_94.AbsolutePosition > 0) Then
  loc_1A94505:         Set var_154 = Me.TxtA
  loc_1A9450B:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A94513:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add1")))
  loc_1A9455D:         Set var_154 = Me.TxtA
  loc_1A94563:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A9456B:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add2")))
  loc_1A945B5:         Set var_154 = Me.TxtA
  loc_1A945BB:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A945C3:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add3")))
  loc_1A9460D:         Set var_154 = Me.TxtA
  loc_1A94613:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A9461B:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("PinCode")))
  loc_1A94665:         Set var_154 = Me.TxtA
  loc_1A9466B:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A94673:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("CityN")))
  loc_1A946BD:         Set var_154 = Me.TxtA
  loc_1A946C3:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A946CB:         var_15C.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("City")))
  loc_1A94715:         Set var_154 = Me.TxtA
  loc_1A9471B:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A94723:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("StateN")))
  loc_1A9476D:         Set var_154 = Me.TxtA
  loc_1A94773:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A9477B:         var_15C.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("State")))
  loc_1A947C5:         Set var_154 = Me.TxtA
  loc_1A947CB:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A947D3:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("CountryN")))
  loc_1A9481D:         Set var_154 = Me.TxtA
  loc_1A94823:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A9482B:         var_15C.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Country")))
  loc_1A94875:         Set var_154 = Me.TxtA
  loc_1A9487B:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A94883:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Phone")))
  loc_1A948CD:         Set var_154 = Me.TxtA
  loc_1A948D3:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A948DB:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Mobile")))
  loc_1A94925:         Set var_154 = Me.TxtA
  loc_1A9492B:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A94933:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Mobile1")))
  loc_1A9497D:         Set var_154 = Me.TxtA
  loc_1A94983:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A9498B:         var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Email")))
  loc_1A94A00:         Me.ChkCorresAdd.Value = CInt(IIf((var_94.Fields.Item("CorresYN").Value = "Y"), 1, 0))
  loc_1A94A20:         Set var_94 = Nothing
  loc_1A94A23:       End If
  loc_1A94A23:     End If
  loc_1A94A27:     Set var_C4 = Me.TopCtrl1
  loc_1A94A2D:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_1A94A46:     If (CStr() = "Add") Then
  loc_1A94A49:       Call Proc_265_105_EAFDB4()
  loc_1A94A51:       var_9C.MoveFirst
  loc_1A94AA0:       var_9C.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A94ACA:       If (var_9C.AbsolutePosition > 0) Then
  loc_1A94B03:         Set var_154 = Me.TxtA
  loc_1A94B09:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A94B11:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1")))
  loc_1A94B5B:         Set var_154 = Me.TxtA
  loc_1A94B61:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A94B69:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2")))
  loc_1A94BB3:         Set var_154 = Me.TxtA
  loc_1A94BB9:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A94BC1:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add3")))
  loc_1A94C0B:         Set var_154 = Me.TxtA
  loc_1A94C11:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A94C19:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("PinCode")))
  loc_1A94C63:         Set var_154 = Me.TxtA
  loc_1A94C69:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A94C71:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CityN")))
  loc_1A94CBB:         Set var_154 = Me.TxtA
  loc_1A94CC1:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A94CC9:         var_15C.Tag = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("City")))
  loc_1A94D13:         Set var_154 = Me.TxtA
  loc_1A94D19:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A94D21:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("StateN")))
  loc_1A94D6B:         Set var_154 = Me.TxtA
  loc_1A94D71:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A94D79:         var_15C.Tag = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("State")))
  loc_1A94DC3:         Set var_154 = Me.TxtA
  loc_1A94DC9:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A94DD1:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CountryN")))
  loc_1A94E1B:         Set var_154 = Me.TxtA
  loc_1A94E21:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A94E29:         var_15C.Tag = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Country")))
  loc_1A94E73:         Set var_154 = Me.TxtA
  loc_1A94E79:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A94E81:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Phone")))
  loc_1A94ECB:         Set var_154 = Me.TxtA
  loc_1A94ED1:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A94ED9:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Mobile")))
  loc_1A94F23:         Set var_154 = Me.TxtA
  loc_1A94F29:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A94F31:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Mobile1")))
  loc_1A94F7B:         Set var_154 = Me.TxtA
  loc_1A94F81:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A94F89:         var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Email")))
  loc_1A94FB7:         var_DC = var_9C.Fields.Item("CorresYN")
  loc_1A94FFE:         Me.ChkCorresAdd.Value = CInt(IIf((var_DC.Value = "Y"), 1, 0))
  loc_1A95019:       End If
  loc_1A95019:     End If
  loc_1A9501C:   Else
  loc_1A95024:     If (var_37A = CInt(2)) Then
  loc_1A95031:       Set var_C4 = Me.CmdAdd
  loc_1A95037:       Call 0.Method_CmdAdd_UnknownEvent_90 (KeyAscii, var_DC)
  loc_1A9503F:       Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA(var_140)
  loc_1A95054:       Me.LblAddType.Caption = CStr()
  loc_1A9506C:       Set var_C4 = Me.TopCtrl1
  loc_1A95072:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A95086:       Set var_DC = Me.TopCtrl1
  loc_1A9508C:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Edit"))
  loc_1A950B2:       If ( Or (CStr() = "Browse")) Then
  loc_1A950B5:         Call Proc_265_105_EAFDB4()
  loc_1A950BD:         var_94.MoveFirst
  loc_1A9510C:         var_94.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A95136:         If (var_94.AbsolutePosition > 0) Then
  loc_1A9516F:           Set var_154 = Me.TxtA
  loc_1A95175:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A9517D:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add1")))
  loc_1A951C7:           Set var_154 = Me.TxtA
  loc_1A951CD:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A951D5:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add2")))
  loc_1A9521F:           Set var_154 = Me.TxtA
  loc_1A95225:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A9522D:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add3")))
  loc_1A95277:           Set var_154 = Me.TxtA
  loc_1A9527D:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A95285:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("PinCode")))
  loc_1A952CF:           Set var_154 = Me.TxtA
  loc_1A952D5:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A952DD:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("CityN")))
  loc_1A95327:           Set var_154 = Me.TxtA
  loc_1A9532D:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A95335:           var_15C.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("City")))
  loc_1A9537F:           Set var_154 = Me.TxtA
  loc_1A95385:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A9538D:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("StateN")))
  loc_1A953D7:           Set var_154 = Me.TxtA
  loc_1A953DD:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A953E5:           var_15C.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("State")))
  loc_1A9542F:           Set var_154 = Me.TxtA
  loc_1A95435:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A9543D:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("CountryN")))
  loc_1A95487:           Set var_154 = Me.TxtA
  loc_1A9548D:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A95495:           var_15C.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Country")))
  loc_1A954DF:           Set var_154 = Me.TxtA
  loc_1A954E5:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A954ED:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Phone")))
  loc_1A95537:           Set var_154 = Me.TxtA
  loc_1A9553D:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A95545:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Mobile")))
  loc_1A9558F:           Set var_154 = Me.TxtA
  loc_1A95595:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A9559D:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Mobile1")))
  loc_1A955E7:           Set var_154 = Me.TxtA
  loc_1A955ED:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A955F5:           var_15C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Email")))
  loc_1A9566A:           Me.ChkCorresAdd.Value = CInt(IIf((var_94.Fields.Item("CorresYN").Value = "Y"), 1, 0))
  loc_1A9568A:           Set var_94 = Nothing
  loc_1A9568D:         End If
  loc_1A9568D:       End If
  loc_1A95691:       Set var_C4 = Me.TopCtrl1
  loc_1A95697:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_1A956B0:       If (CStr() = "Add") Then
  loc_1A956B3:         Call Proc_265_105_EAFDB4()
  loc_1A956BB:         var_9C.MoveFirst
  loc_1A9570A:         var_9C.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A95734:         If (var_9C.AbsolutePosition > 0) Then
  loc_1A9576D:           Set var_154 = Me.TxtA
  loc_1A95773:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A9577B:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1")))
  loc_1A957C5:           Set var_154 = Me.TxtA
  loc_1A957CB:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A957D3:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2")))
  loc_1A9581D:           Set var_154 = Me.TxtA
  loc_1A95823:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A9582B:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add3")))
  loc_1A95875:           Set var_154 = Me.TxtA
  loc_1A9587B:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A95883:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("PinCode")))
  loc_1A958CD:           Set var_154 = Me.TxtA
  loc_1A958D3:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A958DB:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CityN")))
  loc_1A95925:           Set var_154 = Me.TxtA
  loc_1A9592B:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A95933:           var_15C.Tag = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("City")))
  loc_1A9597D:           Set var_154 = Me.TxtA
  loc_1A95983:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A9598B:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("StateN")))
  loc_1A959D5:           Set var_154 = Me.TxtA
  loc_1A959DB:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A959E3:           var_15C.Tag = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("State")))
  loc_1A95A2D:           Set var_154 = Me.TxtA
  loc_1A95A33:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A95A3B:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CountryN")))
  loc_1A95A85:           Set var_154 = Me.TxtA
  loc_1A95A8B:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A95A93:           var_15C.Tag = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Country")))
  loc_1A95ADD:           Set var_154 = Me.TxtA
  loc_1A95AE3:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A95AEB:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Phone")))
  loc_1A95B35:           Set var_154 = Me.TxtA
  loc_1A95B3B:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A95B43:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Mobile")))
  loc_1A95B8D:           Set var_154 = Me.TxtA
  loc_1A95B93:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A95B9B:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Mobile1")))
  loc_1A95BE5:           Set var_154 = Me.TxtA
  loc_1A95BEB:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A95BF3:           var_15C.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Email")))
  loc_1A95C21:           var_DC = var_9C.Fields.Item("CorresYN")
  loc_1A95C2E:           var_150 = 0
  loc_1A95C62:           Set var_154 = Me.ChkCorresAdd
  loc_1A95C68:           var_154.Value = CInt(IIf((var_DC.Value = "Y"), 1, var_150))
  loc_1A95C83:         End If
  loc_1A95C83:       End If
  loc_1A95C86:     Else
  loc_1A95C8E:       If (var_37A = CInt(3)) Then
  loc_1A95C94:         Call Proc_265_100_FA1808(var_382)
  loc_1A95C9F:         If (var_382 = 0) Then
  loc_1A95CA2:           Exit Sub
  loc_1A95CA3:         End If
  loc_1A95CA7:         Set var_C4 = Me.TopCtrl1
  loc_1A95CAD:         Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_1A95CC6:         If (CStr() = "Add") Then
  loc_1A95D2C:           Set var_C4 = Me.Txt
  loc_1A95D32:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, "Select CorresYN,Name from memAddRWA where SubCode='", var_150)
  loc_1A95D49:           var_10C = -1 & Trim(CVar(var_DC)) 
  loc_1A95D52:           var_12C = IIf((Me.ChkCorresAdd.Value = 1), 1, 0) & "' And Mark='*' And CorresYN='Y'" 
  loc_1A95D60:           unk_5ADE06.Execute CStr(var_12C), var_154, CInt(IIf((Me.ChkCorresAdd.Value = 1), 1, 0))
  loc_1A95D6B:           Set var_A0 = var_154
  loc_1A95D99:           If (var_A0.RecordCount > 0) Then
  loc_1A95DD8:             If (var_A0.Fields.Item("CorresYN").Value = "Y") Then
  loc_1A95E12:               If (MsgBox("Would U Like to Change Correspond Address", &H44, "Validation", IIf((Me.ChkCorresAdd.Value = 1), 1, 0), var_12C) = 6) Then
  loc_1A95E41:                 var_DC = var_A0.Fields.Item("Name")
  loc_1A95E69:                 Set var_154 = Me.Txt
  loc_1A95E6F:                 Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C, "Update MemAddRWA set CorresYN='N' Where Name ='" & var_DC.Value & "' And SubCode='")
  loc_1A95E9D:                 unk_5ADE06.Execute CStr(var_194 & Trim(CVar(var_15C)) & "' And Mark='*' And CorresYN='Y'"), -1, var_160
  loc_1A95EDE:                 If (Me.ChkCorresAdd.Value = 1) Then
  loc_1A95EE6:                   global_104 = 1
  loc_1A95EEC:                 Else
  loc_1A95EF1:                   global_104 = 0
  loc_1A95EF4:                 End If
  loc_1A95EF7:               Else
  loc_1A95EFC:                 global_104 = 0
  loc_1A95EFF:               End If
  loc_1A95EFF:             End If
  loc_1A95EFF:           End If
  loc_1A95EFF:         End If
  loc_1A95F03:         Set var_C4 = Me.TopCtrl1
  loc_1A95F09:         Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(global_104)
  loc_1A95F11:         var_D8 = CStr(global_104)
  loc_1A95F22:         If (var_D8 = "Edit") Then
  loc_1A95F37:           var_EC = 0
  loc_1A95F5A:           global_104 = CInt(IIf((Me.ChkCorresAdd.Value = 1), 1, var_EC))
  loc_1A95F89:           Set var_C4 = Me.Txt
  loc_1A95F8F:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select CorresYN,Name from MemAddRWA where subcode ='", var_374)
  loc_1A95F97:           -1 = var_DC.Text
  loc_1A95FA7:           var_10C = CVar(var_378 & var_D8 & "' And CorresYN='Y' And ((SNo=") 'String
  loc_1A95FC1:           var_15C = var_A4.Fields.Item("SNo")
  loc_1A95FD0:           Proc_183_3_E7D1C8(var_EC, CVar(var_15C), var_10C)
  loc_1A95FD8:           var_12C = global_104 & var_EC 
  loc_1A95FF4:           var_160 = var_A4.Fields
  loc_1A95FFC:           var_164 = var_160.Item("Name")
  loc_1A96010:           var_194 = global_104 & CVar(Proc_183_2_E5A304(CVar(var_164), var_12C & " And Name ='")) 
  loc_1A96019:           var_1B4 = var_194 & "')  Or (SNo=" 
  loc_1A96034:           var_1CC = var_A8.Fields.Item("SNo")
  loc_1A96043:           Proc_183_3_E7D1C8(var_1EC, CVar(var_1CC))
  loc_1A9606F:           var_234 = var_A8.Fields.Item("Name")
  loc_1A960A7:           var_29C = var_AC.Fields.Item("SNo")
  loc_1A960B6:           Proc_183_3_E7D1C8(var_2BC, CVar(var_29C))
  loc_1A960C7:           var_2EC = var_1B4 & var_1EC & " And Name ='" & CVar(Proc_183_2_E5A304(CVar(var_234))) & "')  Or (SNo=" & var_2BC & " And Name ='" 
  loc_1A960E2:           var_304 = var_AC.Fields.Item("Name")
  loc_1A9610D:           unk_5ADE06.Execute CStr(var_2EC & CVar(Proc_183_2_E5A304(CVar(var_304))) & "'))"), , 
  loc_1A96118:           Set var_B0 = var_378
  loc_1A96176:           var_380 = var_B0.RecordCount
  loc_1A96184:           If (var_380 > 0) Then
  loc_1A961C3:             If (var_B0.Fields.Item("CorresYN").Value = "Y") Then
  loc_1A961FD:               If (MsgBox("Would U Like to Change Correspond Address", &H44, "Validation", var_10C, var_12C) = 6) Then
  loc_1A96254:                 Set var_154 = Me.Txt
  loc_1A9625A:                 Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C, "Update MemAddRWA set CorresYN='N' Where Name ='" & var_B0.Fields.Item("Name").Value & "' And SubCode='")
  loc_1A96288:                 unk_5ADE06.Execute CStr(var_194 & Trim(CVar(var_15C)) & "' And CorresYN='Y'"), -1, var_160
  loc_1A962C9:                 If (Me.ChkCorresAdd.Value = 1) Then
  loc_1A962D1:                   global_104 = 1
  loc_1A962D7:                 Else
  loc_1A962DC:                   global_104 = 0
  loc_1A962DF:                 End If
  loc_1A962E2:               Else
  loc_1A962FD:                 If (Me.ChkCorresAdd.Value = 1) Then
  loc_1A96305:                   global_104 = 1
  loc_1A9630B:                 Else
  loc_1A96310:                   global_104 = 0
  loc_1A96313:                 End If
  loc_1A96313:               End If
  loc_1A96313:             End If
  loc_1A96313:           End If
  loc_1A96313:         End If
  loc_1A9631C:         unk_5ADE06.BeginTrans var_380
  loc_1A9632A:         Set var_C4 = Me.TopCtrl1
  loc_1A96330:         Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_1A96349:         If (CStr(global_104) = "Add") Then
  loc_1A96399:           Set var_DC = Me.Txt
  loc_1A9639F:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_154, "Delete From MemAddRWA Where Name ='" & Trim(CVar(Me.LblAddType.Caption)) & "' And SubCode='", var_1B4, -1)
  loc_1A963CD:           unk_5ADE06.Execute CStr(var_15C & Trim(CVar(var_154)) & "' And Mark='*'"), global_104, global_104
  loc_1A96401:           Set var_C4 = Me.Txt
  loc_1A96407:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC)
  loc_1A96432:           Set var_154 = Me.TxtA
  loc_1A96438:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A96453:           Set var_160 = Me.TxtA
  loc_1A96459:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_164)
  loc_1A96474:           Set var_1B8 = Me.TxtA
  loc_1A9647A:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_1CC)
  loc_1A96495:           Set var_220 = Me.TxtA
  loc_1A9649B:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_234)
  loc_1A964B6:           Set var_288 = Me.TxtA
  loc_1A964BC:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_29C)
  loc_1A964D7:           Set var_2F0 = Me.TxtA
  loc_1A964DD:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_304)
  loc_1A964F8:           Set var_378 = Me.TxtA
  loc_1A964FE:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_3A0)
  loc_1A96519:           Set var_3C8 = Me.Txt
  loc_1A9651F:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&H11), var_3CC)
  loc_1A9653A:           Set var_404 = Me.TxtA
  loc_1A96540:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_408)
  loc_1A9655B:           Set var_440 = Me.TxtA
  loc_1A96561:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_444)
  loc_1A9657C:           Set var_47C = Me.TxtA
  loc_1A96582:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_480)
  loc_1A9659D:           Set var_4E8 = Me.TxtA
  loc_1A965A3:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_4EC)
  loc_1A965EF:           var_130 = "Insert Into MemAddRWA(SubCode,Name,SNo,Add1,Add2,Add3,PinCode,City,State,Country,PAN,Phone,Mobile,Mobile1,Email, " & "CorresYN,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) Values ('"
  loc_1A96628:           var_1B4 = CVar(var_130 & var_DC.Text & "','") & Trim(CVar(Me.LblAddType)) & "',1," & "'" & CVar(var_15C.Text) & "','" 
  loc_1A9666B:           var_2CC = var_1B4 & CVar(var_164.Text) & "','" & CVar(var_1CC.Text) & "','" & CVar(var_234.Text) & "','" & CVar(var_29C.Tag) 
  loc_1A966C0:           var_42C = var_2CC & "','" & CVar(var_304.Tag) & "','" & CVar(var_3A0.Tag) & "'," & "'" & CVar(var_3CC.Text) & "','" & CVar(var_408.Text) 
  loc_1A96712:           var_5A0 = var_42C & "','" & CVar(var_444.Text) & "','" & CVar(var_480.Text) & "', " & "'" & CVar(var_4EC.Text) & "','" & IIf((global_104 = 1), "Y", "N") 
  loc_1A9675D:           var_6A0 = var_5A0 & "', '*' ,'" & CVar(MemVar_1F92070) & "', " & "'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "','" 
  loc_1A9677F:           unk_5ADE06.Execute CStr(var_6A0 & CDate(MemVar_1F920EC) & "','A')"), var_704, -1
  loc_1A96846:         Else
  loc_1A9684A:           Set var_C4 = Me.TopCtrl1
  loc_1A96850:           Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_708)
  loc_1A96869:           If (CStr(global_104) = "Edit") Then
  loc_1A968A9:             Set var_C4 = Me.Txt
  loc_1A968AF:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, "Select Max(SNo) As SNo From MemAddRWA Where Name='" & Trim(CVar(Me.LblAddType)) & "' And Subcode='")
  loc_1A968C6:             var_184 = var_1B4 & Trim(CVar(var_DC)) 
  loc_1A968DD:             unk_5ADE06.Execute CStr(var_184 & "'"), -1, var_154
  loc_1A96918:             Set var_C4 = Me.Txt
  loc_1A9691E:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC)
  loc_1A9695A:             var_174 = CVar(var_154.Fields.Item("SNo")) 'Address
  loc_1A96961:             Proc_6_39_E7C810(var_184)
  loc_1A96974:             Set var_160 = Me.TxtA
  loc_1A9697A:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_164)
  loc_1A96995:             Set var_1B8 = Me.TxtA
  loc_1A9699B:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_1CC)
  loc_1A969B6:             Set var_220 = Me.TxtA
  loc_1A969BC:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_234)
  loc_1A969D7:             Set var_288 = Me.TxtA
  loc_1A969DD:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_29C)
  loc_1A969F8:             Set var_2F0 = Me.TxtA
  loc_1A969FE:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_304)
  loc_1A96A19:             Set var_378 = Me.TxtA
  loc_1A96A1F:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_3A0)
  loc_1A96A3A:             Set var_3C8 = Me.TxtA
  loc_1A96A40:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_3CC)
  loc_1A96A5B:             Set var_404 = Me.Txt
  loc_1A96A61:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&H11), var_408)
  loc_1A96A7C:             Set var_440 = Me.TxtA
  loc_1A96A82:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_444)
  loc_1A96A9D:             Set var_47C = Me.TxtA
  loc_1A96AA3:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_480)
  loc_1A96ABE:             Set var_4E8 = Me.TxtA
  loc_1A96AC4:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_4EC)
  loc_1A96ADF:             Set var_708 = Me.TxtA
  loc_1A96AE5:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_70C)
  loc_1A96B31:             var_130 = "Insert Into MemAddRWA(SubCode,Name,SNo,Add1,Add2,Add3,PinCode,City,State,Country,PAN,Phone,Mobile,Mobile1,Email, " & "CorresYN,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) Values ('"
  loc_1A96B3F:             var_10C = CVar(var_130 & var_DC.Text & "','") 'String
  loc_1A96B45:             var_12C = var_10C & Trim(CVar(Me.LblAddType)) 
  loc_1A96B59:             var_140 = " +1 ,"
  loc_1A96B97:             var_2AC = var_12C & "'," & var_184 & "'" & "'" & CVar(var_164.Text) & "','" & CVar(var_1CC.Text) & "','" & CVar(var_234.Text) 
  loc_1A96BE3:             var_3F0 = var_2AC & "','" & CVar(var_29C.Text) & "','" & CVar(var_304.Tag) & "','" & CVar(var_3A0.Tag) & "','" & CVar(var_3CC.Tag) 
  loc_1A96C38:             var_510 = var_3F0 & "'," & "'" & CVar(var_408.Text) & "','" & CVar(var_444.Text) & "','" & CVar(var_480.Text) & "','" & CVar(var_4EC.Text) 
  loc_1A96C77:             var_660 = var_510 & "', " & "'" & CVar(var_70C.Text) & "','" & IIf((global_104 = 1), "Y", "N") & "','*','" & CVar(MemVar_1F92070) 
  loc_1A96CC3:             var_74C = var_660 & "', " & "'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "','" & CDate(MemVar_1F920EC) & "','E')" 
  loc_1A96CD1:             unk_5ADE06.Execute CStr(var_74C), var_76C, -1
  loc_1A96DC0:             MsgBox("Record Inserted", &H40, "Information", var_10C, var_12C)
  loc_1A96DD0:           End If
  loc_1A96DD0:         End If
  loc_1A96DD6:         unk_5ADE06.CommitTrans
  loc_1A96DDD:         var_86 = 0
  loc_1A96DE0:         ' Referenced from:       1A9328C
  loc_1A96DE6:         If (var_86 = &HFF) Then
  loc_1A96DEF:           unk_5ADDC8.RollbackTrans
  loc_1A96DF4:         End If
  loc_1A96DF4:       End If
  loc_1A96DF4:     End If
  loc_1A96DF4:   End If
  loc_1A96DF4: End If
  loc_1A96DF9: Set var_9C = Nothing
  loc_1A96E01: Set var_A4 = Nothing
  loc_1A96E09: Set var_A8 = Nothing
  loc_1A96E11: Set var_AC = Nothing
  loc_1A96E19: Set var_A0 = Nothing
  loc_1A96E21: Set var_B0 = Nothing
  loc_1A96E2F: Set global_92 = Nothing
  loc_1A96E3B: Set var_B4 = Nothing
  loc_1A96E3E: Exit Sub
End Sub

Private Sub CmdProposedMemInf_Click() 'EBB3D4
  'Data Table: 5ADD9C
  loc_EBB348: Set global_92 = New MemberProposedMemInf
  loc_EBB35E: Set var_88 = Me.Txt
  loc_EBB364: Call 0.Method_CmdProposedMemInf_Click0 (CInt(0))
  loc_EBB382: Me.subcode = Trim(CVar(var_8C))
  loc_EBB394: Set var_88 = (var_8C)
  loc_EBB3AC: Me.Mode = CVar(CStr(Txt.DispID_68030005))
  loc_EBB3CD: Me.Show 1, var_CC
  loc_EBB3D2: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8A11C
  'Data Table: 5ADD9C
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F89FD8: On Error Goto loc_F8A0B6
  loc_F89FDF: Set var_A4 = Me.ListView
  loc_F8A029: Set var_BC = Me.Txt
  loc_F8A02F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F8A037: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F8A063: Me.FrmList.Visible = False
  loc_F8A07D: var_A0 = CStr(Me.ListView.Tag)
  loc_F8A085: var_C8 = Val(var_A0)
  loc_F8A093: Set var_9C = Me.Txt
  loc_F8A099: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F8A0A1: var_A4.SetFocus
  loc_F8A0B5: Exit Sub
  loc_F8A0B6: ' Referenced from: F89FD8
  loc_F8A0BE: Set var_88 = Err()
  loc_F8A0C4: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F8A0D5: If (var_CC <> 0) Then
  loc_F8A0D8:   ' Referenced from: F89F8D
  loc_F8A0E0:   Set var_88 = Err()
  loc_F8A0E6:   Call 0.Method_arg_2C (var_A0)
  loc_F8A107:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F8A11A: End If
  loc_F8A11A: Exit Sub
End Sub

Public Sub CmdFind_UnknownEvent_9(Index As Integer) '19073DC
  'Data Table: 5ADD9C
  Dim var_AE As Integer
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_CC As String
  Dim var_D0 As Variant
  Dim var_E8 As Variant
  Dim var_F0 As TextBox
  Dim var_FC As TextBox
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_D8 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_170 As String
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_F4 As String
  Dim var_100 As String
  Dim var_1A8 As String
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim var_1C4 As String
  Dim var_88 As Recordset15
  Dim var_1D0 As Recordset15
  Dim var_D4 As Variant
  Dim var_110 As Variant
  Dim var_1E0 As String
  Dim var_EC As Variant
  Dim var_1A4 As Image
  Dim var_B6 As Integer
  Dim unk_5ADE06 As Connection15
  Dim Me As Recordset15
  loc_190490B: var_AE = Index
  loc_1904916: If (var_AE = 0) Then
  loc_190493A:   If (CLng(Me.Check1.Value) = 0) Then
  loc_1904955:     Call Proc_265_101_120167C(global_64, CByte(1))
  loc_1904960:     global_88 = var_CC
  loc_1904972:     If (global_80 = 0) Then
  loc_1904977:       Exit Sub
  loc_1904978:     End If
  loc_1904978:   End If
  loc_1904999:   If (CLng(Me.Check1.Value) = 0) Then
  loc_19049A8:     var_CC = "CompanyType in (" & global_88
  loc_19049AF:     var_A0 = var_CC & ")"
  loc_19049B8:   Else
  loc_19049C2:     global_84 = "All"
  loc_19049CB:     var_A0 = "CompanyType in (SELECT Code FROM MemCatMast WHERE Corporate='N')"
  loc_19049CE:   End If
  loc_19049E0:   Set var_B4 = Me.Txt
  loc_19049E6:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H31), var_D0, var_CC)
  loc_1904A06:   Set var_D4 = Me.Txt
  loc_1904A0C:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D8)
  loc_1904A2C:   Set var_EC = Me.Txt
  loc_1904A32:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_F0, var_F4)
  loc_1904A3A:   ((var_D0.Text = "Member") And IsDate(CVar(var_D8))) = var_F0.Text
  loc_1904A5A:   Set var_F8 = Me.Txt
  loc_1904A60:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_FC, var_100)
  loc_1904A68:   (CDbl(Val(var_F4)) <> CDbl(0)) = var_FC.Text
  loc_1904A99:   If ( And (var_AE Or (CDbl(Val(var_100)) <> CDbl(0)))) Then
  loc_1904AB3:     Set var_B4 = Me.Txt
  loc_1904AB9:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D0)
  loc_1904AC8:     Proc_6_7_F25D88(var_110, CVar(var_D0))
  loc_1904AEB:     Set var_D4 = Me.Txt
  loc_1904AF1:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_D8)
  loc_1904B25:     Set var_EC = Me.Txt
  loc_1904B2B:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_F0)
  loc_1904B44:     var_1A0 = CVar(var_A0 & " And DATEDIFF(YY,MF.DOB,") & var_110 & ") Between " & CVar(Val(var_D8.Text)) & " And " & CVar(Val(var_F0.Text)) 
  loc_1904B49:     var_A0 = CStr(var_1A0)
  loc_1904B73:   End If
  loc_1904B85:   Set var_B4 = Me.Txt
  loc_1904B8B:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H31), var_D0)
  loc_1904BAB:   Set var_D4 = Me.Txt
  loc_1904BB1:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D8)
  loc_1904BD1:   Set var_EC = Me.Txt
  loc_1904BD7:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_F0)
  loc_1904BFF:   Set var_F8 = Me.Txt
  loc_1904C05:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_FC, var_100)
  loc_1904C0D:   (CDbl(Val(var_F0.Text)) <> CDbl(0)) = var_FC.Text
  loc_1904C3E:   If ( And (((var_D0.Text = "Membership") And IsDate(CVar(var_D8))) Or (CDbl(Val(var_100)) <> CDbl(0)))) Then
  loc_1904C58:     Set var_B4 = Me.Txt
  loc_1904C5E:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D0)
  loc_1904C6D:     Proc_6_7_F25D88(var_110, CVar(var_D0))
  loc_1904C90:     Set var_D4 = Me.Txt
  loc_1904C96:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_D8)
  loc_1904CAB:     var_150 = CVar(Val(var_D8.Text)) 'Double
  loc_1904CCA:     Set var_EC = Me.Txt
  loc_1904CD0:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_F0)
  loc_1904CEE:     var_A0 = CStr(CVar(var_A0 & " And DATEDIFF(YY,S.ValidFrom,") & var_110 & ") Between " & var_150 & " And " & CVar(Val(var_F0.Text)))
  loc_1904D18:   End If
  loc_1904D27:   Set var_B4 = Me.Txt
  loc_1904D2D:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H22))
  loc_1904D35:   var_E8 = CVar(var_D0) 'Address
  loc_1904D3C:   var_110 = Trim(var_E8)
  loc_1904D44:   var_C8 = "Detailed"
  loc_1904D56:   If (var_110 = var_C8) Then
  loc_1904D6A:     Call Proc_265_102_13E8120(New, var_B4)
  loc_1904D72:     Set var_AC = var_B4
  loc_1904D8B:     var_CC = "Select MF.Subcode,MF.SNo,MF.RelationShip,MF.ConPrefix+' '+MF.Name As Name,MF.Gender,MF.MaritalStatus,MF.DOB As Birthday,MF.POB,MF.WedDate As Anniversary," & "MF.Phone,MF.Mobile,MF.Mobile1,MF.Fax,MF.EMail,MF.Nationality,MF.Religion,MF.BloodGroup,MF.ProOcc,MF.EdQuali,MF.TBusiness,MF.TurnOver,MF.Desig,MF.PostedAt,MF.Passport,MF.PAN,"
  loc_1904D99:     var_100 = var_D8.Text & "MF.SpInterest,MF.SigPath,MF.PicPath,MF.CardNo,MF.CardIssDate,MF.CardRegId,MF.CardValidUpto," & "MCat.Name as CompanyType,S.Name As AcName,S.AllowCredit,S.CreditLimit,S.Discount,S.ActiveYN,S.CINNo,S.BlackListed,S.ReasonBlackList,S.BlackListedBy,"
  loc_1904DA0:     var_1A8 = var_100 & "IsNull(RW.AddType,'')AddType,IsNull(RW.Add1,'')Add1,IsNull(RW.Add2,'')Add2,IsNull(RW.Add3,'')Add3,IsNull(RW.City,'')City,IsNull(RW.State,'')State,IsNull(RW.Country,'')Country,IsNull(RW.PinCode,'')PinCode,IsNull(RW.CorresYN,'')CorresYN,SCR.CurrBal,SCR.CurBalType "
  loc_1904DA7:     var_1AC = var_1A8 & "From (((Subgroup S Inner Join MemberFamily MF On S.SubCode=MF.Subcode)Inner Join MemCatMast Mcat On S.CompanyType=Mcat.code) "
  loc_1904DAE:     var_1B0 = var_1AC & "Left Join (Select RWA.Subcode,RWA.CorresYN,RWA.Name AddType,Add1,Add2,Add3,C.CityName As City,ST.Name As State,CO.Name As Country,PinCode As PinCode "
  loc_1904DB5:     var_1B4 = var_1B0 & "From (((MemADDRWA RWA Left Join City C On RWA.City=C.CityCode) Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) Where RWA.Name In ('Residential Address','WorkPlace Address'))RW On S.Subcode=RW.Subcode And MF.SNo=1) "
  loc_1904DBC:     var_1B8 = var_1B4 & "Left Join (SELECT SUBCODE,ABS(ISNULL(SUM(CURR_BAL),0)) AS CurrBal,CASE WHEN ISNULL(SUM(CURR_BAL),0)>0 THEN 'Cr' WHEN ISNULL(SUM(CURR_BAL),0)<0 THEN 'Dr' Else '' END CurBalType "
  loc_1904DD1:     var_1C4 = var_1B8 & "FROM SUBGROUPCURRBAL GROUP BY SUBCODE) SCR On SCR.SubCode=S.SubCode where ActiveYN=1 And " & var_A0 & " Order by "
  loc_1904DE8:     Me.Connection15.Execute var_1C4 & var_A8 & " Mcat.Name,S.Name,MF.SNo,RW.AddType", var_E8, -1
  loc_1904DF3:     Set var_88 = var_B4
  loc_1904E19:     ' Referenced from: 19068E5
  loc_1904E21:     var_B6 = var_88.EOF
  loc_1904E2A:     If Not(var_B6) Then
  loc_1904E32:       Set var_1D0 = var_AC 
  loc_1904E43:       var_1D0.AddNew var_C8, var_150
  loc_1904E6F:       var_1D0.Fields.Item("mLine").Value = vbNullString
  loc_1904EA3:       Proc_6_39_E7C810(var_110, CVar(var_88.Fields.Item("SNo")))
  loc_1904ECB:       var_1D0.Fields.Item("SNo").Value = var_110
  loc_1904EF1:       var_B4 = var_88.Fields
  loc_1904F2D:       var_1D0.Fields.Item("Relation").Value = CVar(Proc_6_38_E68A98(CVar(var_B4.Item("RelationShip")), var_B4))
  loc_1904F8F:       var_1D0.Fields.Item("Name").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name"))))
  loc_1904FF1:       var_1D0.Fields.Item("Sex").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Gender"))))
  loc_1905053:       var_1D0.Fields.Item("MaritalStatus").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MaritalStatus"))))
  loc_19050AD:       var_1D0.Fields.Item("Birthday").Value = CVar(var_88.Fields.Item("Birthday"))
  loc_190510B:       var_1D0.Fields.Item("PlaceOfBirth").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("POB"))))
  loc_1905165:       var_1D0.Fields.Item("Anniversary").Value = CVar(var_88.Fields.Item("Anniversary"))
  loc_19051C3:       var_1D0.Fields.Item("Phone").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Phone"))))
  loc_1905225:       var_1D0.Fields.Item("Mobile").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile"))))
  loc_1905287:       var_1D0.Fields.Item("Fax").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Fax"))))
  loc_19052E9:       var_1D0.Fields.Item("EMail").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Email"))))
  loc_190534B:       var_1D0.Fields.Item("Nationality").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nationality"))))
  loc_19053AD:       var_1D0.Fields.Item("Religion").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Religion"))))
  loc_190540F:       var_1D0.Fields.Item("BloodGroup").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("bloodGroup"))))
  loc_1905471:       var_1D0.Fields.Item("ProOcc").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ProOcc"))))
  loc_19054D3:       var_1D0.Fields.Item("EdQuali").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Edquali"))))
  loc_1905535:       var_1D0.Fields.Item("TBusiness").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TBusiness"))))
  loc_1905597:       var_1D0.Fields.Item("TurnOver").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Turnover"))))
  loc_19055F9:       var_1D0.Fields.Item("Desig").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Desig"))))
  loc_190565B:       var_1D0.Fields.Item("Passport").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Passport"))))
  loc_19056BD:       var_1D0.Fields.Item("PAN").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PAN"))))
  loc_190571F:       var_1D0.Fields.Item("SpInterest").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SpInterest"))))
  loc_1905781:       var_1D0.Fields.Item("MemberId").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo"))))
  loc_19057E3:       var_1D0.Fields.Item("CardRegId").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardRegId"))))
  loc_190583D:       var_1D0.Fields.Item("CardIssDate").Value = CVar(var_88.Fields.Item("CardIssDate"))
  loc_1905893:       var_1D0.Fields.Item("CardValidUpto").Value = CVar(var_88.Fields.Item("CardValidUpto"))
  loc_19058F1:       var_1D0.Fields.Item("MemberType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyType"))))
  loc_1905953:       var_1D0.Fields.Item("AcName").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AcName"))))
  loc_19059A5:       var_110 = "Yes"
  loc_19059E5:       var_1D0.Fields.Item("AllowCredit").Value = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("AllowCredit"))) = "Y"), var_110, "No")
  loc_1905A2F:       Proc_6_39_E7C810(var_110, CVar(var_88.Fields.Item("CreditLimit")))
  loc_1905A57:       var_1D0.Fields.Item("CreditLimit").Value = var_110
  loc_1905A94:       Proc_6_39_E7C810(var_110, CVar(var_88.Fields.Item("Discount")))
  loc_1905ABC:       var_1D0.Fields.Item("Discount").Value = var_110
  loc_1905AF9:       Proc_6_39_E7C810(var_110, CVar(var_88.Fields.Item("ActiveYN")))
  loc_1905B53:       var_1D0.Fields.Item("ActiveYN").Value = IIf((var_110 = 1), "Yes", "No")
  loc_1905BD1:       var_1E0 = "BlackListed"
  loc_1905BED:       var_1D0.Fields.Item(var_1E0).Value = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("BlackListed"))) = "Y"), "Yes", "No")
  loc_1905C5C:       var_1D0.Fields.Item("ReasonBlackList").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ReasonBlackList"))))
  loc_1905C9B:       var_110 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("BlackListedBy")))) 'String
  loc_1905CBE:       var_1D0.Fields.Item("BlackListedBy").Value = var_110
  loc_1905CFB:       Proc_6_39_E7C810(var_110, CVar(var_88.Fields.Item("CurrBal")))
  loc_1905D23:       var_1D0.Fields.Item("CurrBal").Value = var_110
  loc_1905D85:       var_1D0.Fields.Item("CurBalType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CurBalType"))))
  loc_1905DAB:       var_B4 = var_88.Fields
  loc_1905DB3:       var_D0 = var_B4.Item("PicPath")
  loc_1905DC4:       var_190 = IsNull(CVar(var_D0))
  loc_1905DCB:       var_150 = "PicPath"
  loc_1905DFE:       var_170 = vbNullString
  loc_1905E22:       If CBool(var_D0 Or (Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_150)), var_190))) = var_170)) Then
  loc_1905E45:         Me.Global.LoadPicture var_C8, var_150, var_170, var_190, var_1E0
  loc_1905E54:         Set var_D4 = Me.tmpImage
  loc_1905E5A:         var_D4.Picture = var_B4
  loc_1905E69:       Else
  loc_1905EA4:         Call 0.Method_CmdFind_UnknownEvent_94 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("PicPath")), var_B6))
  loc_1905EB5:         If var_B6 Then
  loc_1905EBA:           On Error Resume Next
  loc_1905EE1:           var_B4 = var_88.Fields
  loc_1905F04:           Me.Global.LoadPicture CVar(Proc_6_38_E68A98(CVar(var_B4.Item("PicPath")), var_150, var_170, var_190)), var_1E0, var_D4, var_B4, 
  loc_1905F19:           Me.tmpImage.Picture = var_D4
  loc_1905F34:           Set var_B4 = Me.tmpImage
  loc_1905F3A:           var_B4.Refresh
  loc_1905F45:         Else
  loc_1905F67:           Me.Global.LoadPicture var_C8, var_150, var_170, var_190, var_1E0
  loc_1905F7C:           Me.tmpImage.Picture = var_B4
  loc_1905F88:         End If
  loc_1905F8A:       End If
  loc_1905FA3:       Set var_1A4 = Me.tmpImage.Picture
  loc_1905FC8:       If ((var_1A4 Is Nothing) Or (CLng(var_1A4._Default) = 0)) Then
  loc_1905FCB:         GoTo loc_190600F
  loc_1905FCE:       End If
  loc_1905FDC:       var_CC = "Picture"
  loc_1905FE5:       Set var_D0 = var_AC 
  loc_1905FF5:       Proc_142_0_F96C2C(Me.tmpImage, var_D0)
  loc_1906000:       Set var_AC = var_D0
  loc_190600F:       ' Referenced from: 1905FCB
  loc_190604C:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("RelationShip")), var_CC) = "Member") Then
  loc_190604F:         ' Referenced from: 1906882
  loc_1906060:         If Not(var_88.EOF) Then
  loc_1906074:           var_B4 = var_88.Fields
  loc_19060F3:           var_160 = var_B4 And ((Proc_6_38_E68A98(CVar(var_B4.Item("RelationShip"))) = "Member") = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AcName")), var_1D0.Fields.Item("AcName").Value)))
  loc_1906114:           If CBool(var_160) Then
  loc_1906152:             If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("AddType"))) = "Residential Address") Then
  loc_19061A2:               var_1D0.Fields.Item("AddRType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AddType"))))
  loc_1906204:               var_1D0.Fields.Item("AddR1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1"))))
  loc_1906266:               var_1D0.Fields.Item("AddR2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2"))))
  loc_19062C8:               var_1D0.Fields.Item("AddR3").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add3"))))
  loc_190632A:               var_1D0.Fields.Item("CityR").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("City"))))
  loc_190638C:               var_1D0.Fields.Item("StateR").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("State"))))
  loc_19063EE:               var_1D0.Fields.Item("CountryR").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Country"))))
  loc_1906450:               var_1D0.Fields.Item("PinCodeR").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PinCode"))))
  loc_1906468:             Else
  loc_19064A3:               If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("AddType"))) = "WorkPlace Address") Then
  loc_19064F3:                 var_1D0.Fields.Item("AddWType").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AddType"))))
  loc_1906555:                 var_1D0.Fields.Item("AddW1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1"))))
  loc_19065B7:                 var_1D0.Fields.Item("AddW2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2"))))
  loc_1906619:                 var_1D0.Fields.Item("AddW3").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add3"))))
  loc_190667B:                 var_1D0.Fields.Item("CityW").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("City"))))
  loc_19066DD:                 var_1D0.Fields.Item("StateW").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("State"))))
  loc_190673F:                 var_1D0.Fields.Item("CountryW").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Country"))))
  loc_19067A1:                 var_1D0.Fields.Item("PinCodeW").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PinCode"))))
  loc_19067B6:               End If
  loc_19067B6:             End If
  loc_19067BD:             var_88.MoveNext
  loc_19067C5:           Else
  loc_190684D:             var_130 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AcName")), var_1D0.Fields.Item("AcName").Value)) 'String
  loc_1906876:             If CBool( Or ((Proc_6_38_E68A98(CVar(var_88.Fields.Item("RelationShip"))) <> "Member") <> var_130)) Then
  loc_190687B:               GoTo loc_1906885
  loc_190687E:             End If
  loc_190687E:           End If
  loc_1906882:           GoTo loc_190604F
  loc_1906885:           ' Referenced from: 190687B
  loc_1906885:         End If
  loc_1906888:       Else
  loc_190688F:         var_88.MoveNext
  loc_1906894:       End If
  loc_1906898:       var_150 = "*"
  loc_19068A1:       var_C8 = "Mark"
  loc_19068B5:       var_D0 = var_1D0.Fields.Item(var_C8)
  loc_19068BD:       var_D0.Value = var_150
  loc_19068D6:       var_1D0.Update var_C8, var_150
  loc_19068DF:       Set var_1D0 = Nothing 
  loc_19068E5:       GoTo loc_1904E19
  loc_19068E8:     End If
  loc_1906900:     Set var_B4 = var_AC 
  loc_190690C:     var_B6 = CreateFieldDefFile(var_B4, MemVar_1F920B4 & "\MemberList.ttx")
  loc_1906916:     Set var_AC = var_B4
  loc_190691C:     var_C8 = CVar(var_B6) 'Integer
  loc_190691F:     var_98 = var_C8 'Variant
  loc_190693D:     var_CC = MemVar_1F920B4 & "\MemberList.RPT"
  loc_1906946:     Call 0.Method_arg_1C (var_CC, var_C8, var_B4)
  loc_1906951:     MemVar_1F921E4 = var_B4
  loc_190696E:     Call 0.Method_arg_90 (var_B4, var_1E4, var_9A)
  loc_1906976:     Call 0.Method_arg_24 (1, var_B6)
  loc_1906982:     For var_1E8 =  To CInt(var_1E4): &HFF = var_1E8 'Integer
  loc_190699D:       Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_19069A5:       Call 0.Method_arg_20 (var_D0)
  loc_19069AD:       Call 0.Method_arg_30 (var_CC)
  loc_19069C3:       var_1F8 = Ucase(CVar(var_CC)) 'Variant
  loc_19069F5:       If (var_1F8 = Ucase("Title")) Then
  loc_1906A0D:         Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1906A15:         Call 0.Method_arg_20 (var_D0)
  loc_1906A1D:         Call 0.Method_arg_38 ("'Member Information'")
  loc_1906A2C:       Else
  loc_1906A50:         If (var_1F8 = Ucase("MemberType")) Then
  loc_1906A55:           var_150 = "'"
  loc_1906A96:           Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1906A9E:           Call 0.Method_arg_20 (var_D0)
  loc_1906AA6:           Call 0.Method_arg_38 (CStr(var_150 & Left(global_84, &HFF) & "'"))
  loc_1906AC1:         Else
  loc_1906AD4:           var_110 = Ucase("PrintType")
  loc_1906AE5:           If (var_1F8 = var_110) Then
  loc_1906AEF:             var_E8 = "Detailed"
  loc_1906AF8:             Proc_6_17_EAA2B0(var_110)
  loc_1906B00:             var_CC = CStr(var_110)
  loc_1906B14:             Call 0.Method_arg_90 (var_B4, CLng(var_9A), var_D0)
  loc_1906B1C:             Call 0.Method_arg_20 (var_CC)
  loc_1906B24:             Call 0.Method_arg_38 (var_E8)
  loc_1906B3A:           End If
  loc_1906B3A:         End If
  loc_1906B3A:       End If
  loc_1906B41:     Next var_1E8 'Integer
  loc_1906B61:     Call 0.Method_arg_64 (var_B4, CVar(var_AC))
  loc_1906B69:     Call 0.Method_arg_2C (var_150)
  loc_1906B79:     Call 0.Method_arg_50 (var_CC)
  loc_1906B83:     Set var_D0 = Nothing
  loc_1906B9D:     Set var_B4 = MemVar_1F921E4 
  loc_1906BA9:     Proc_6_99_1483714(var_B4, 0, var_CC)
  loc_1906BB4:     MemVar_1F921E4 = var_B4
  loc_1906BD0:     Me.Frame1.Visible = False
  loc_1906BE5:     Set var_B4 = Me.LblName
  loc_1906BEB:     Call 0.Method_CmdFind_UnknownEvent_90 (0, var_D0, 0)
  loc_1906BF3:     var_D0.Visible = True
  loc_1906C0C:     Set var_B4 = Me.LblName
  loc_1906C12:     Call 0.Method_CmdFind_UnknownEvent_90 (1, var_D0, 0)
  loc_1906C1A:     var_D0.Visible = var_D0
  loc_1906C35:     Set var_B4 = Me.Txt
  loc_1906C3B:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_1906C43:     var_D0.Visible = False
  loc_1906C5E:     Set var_B4 = Me.Txt
  loc_1906C64:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_1906C6C:     var_D0.Visible = False
  loc_1906C88:     Set var_B4 = Me.Txt
  loc_1906C8E:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_1906C96:     var_D0.Text = vbNullString
  loc_1906CB2:     Set var_B4 = Me.Txt
  loc_1906CB8:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_1906CC0:     var_D0.Text = vbNullString
  loc_1906CCF:   Else
  loc_1906CE7:     var_CC = "Select MF.ConPrefix+' '+MF.Name As Name, S.Name As AcName,MF.CardNo, MCat.Name as CompanyType,MF.DOB As Birthday,MF.WedDate As Anniversary,S.Phone,S.Mobile,(Substring(LTrim(IsNull(S.AddName,'')),1,4)+'.- '+IsNull(S.Add1,'')+IsNull(S.Add2,'')+IsNull(S.Add3,'')) as Address,C.CityName As City,CO.Name As Country,ST.Name As State,S.Pin As PinCode, S.EMail,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Father' And SubCode=S.SubCode),'') Father,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Mother' And SubCode=S.SubCode),'') Mother,SCR.CurrBal,SCR.CurBalType,MF.SNo,MF.PicPath,S.GSTIN " & "From (((((Subgroup S Inner Join MemberFamily MF On S.SubCode=MF.Subcode)Inner Join MemCatMast Mcat On S.CompanyType=Mcat.code) Left Join City C On S.CityCode=C.CityCode) Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) Left Join (SELECT SUBCODE,ABS(ISNULL(SUM(CURR_BAL),0)) AS CurrBal,CASE WHEN ISNULL(SUM(CURR_BAL),0)>0 THEN 'Cr' WHEN ISNULL(SUM(CURR_BAL),0)<0 THEN 'Dr' Else '' END CurBalType FROM SUBGROUPCURRBAL GROUP BY SUBCODE) SCR On SCR.SubCode=S.SubCode where ActiveYN=1 And "
  loc_1906D0C:     unk_5ADE06.Execute var_CC & var_A0 & " Order by " & var_A8 & " Mcat.Name,S.ConPerson,MF.SNo", var_E8, -1
  loc_1906D3E:     var_F4 = MemVar_1F920B4 & "\MemberListSummerised.ttx"
  loc_1906D45:     Set var_B4 = var_B4 
  loc_1906D51:     var_B6 = CreateFieldDefFile(var_B4, var_F4, &HFF)
  loc_1906D5B:     Set var_88 = var_B4
  loc_1906D61:     var_C8 = CVar(var_B6) 'Integer
  loc_1906D64:     var_98 = var_C8 'Variant
  loc_1906D82:     var_CC = MemVar_1F920B4 & "\MemberListSummerised.RPT"
  loc_1906D8B:     Call 0.Method_arg_1C (var_CC, var_C8, var_B4)
  loc_1906D96:     MemVar_1F921E4 = var_B4
  loc_1906DB3:     Call 0.Method_arg_90 (var_B4, var_1E4, var_9A, 1)
  loc_1906DBB:     Call 0.Method_arg_24 (var_B6, var_B4)
  loc_1906DC7:     For var_1FE =  To CInt(var_1E4):   var_170 = var_1FE 'Integer
  loc_1906DE2:       Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1906DEA:       Call 0.Method_arg_20 (var_D0)
  loc_1906DF2:       Call 0.Method_arg_30 (var_CC)
  loc_1906E08:       var_210 = Ucase(CVar(var_CC)) 'Variant
  loc_1906E3A:       If (var_210 = Ucase("Title")) Then
  loc_1906E52:         Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1906E5A:         Call 0.Method_arg_20 (var_D0)
  loc_1906E62:         Call 0.Method_arg_38 ("'Member Information'")
  loc_1906E71:       Else
  loc_1906E95:         If (var_210 = Ucase("MemberType")) Then
  loc_1906E9A:           var_150 = "'"
  loc_1906EC3:           var_120 = var_150 & Left(global_84, &HFF) & "'" 
  loc_1906EDB:           Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1906EE3:           Call 0.Method_arg_20 (var_D0)
  loc_1906EEB:           Call 0.Method_arg_38 (CStr(var_120))
  loc_1906F06:         Else
  loc_1906F19:           var_110 = Ucase("PrintType")
  loc_1906F2A:           If (var_210 = var_110) Then
  loc_1906F3D:             Proc_6_17_EAA2B0(var_110)
  loc_1906F45:             var_CC = CStr(var_110)
  loc_1906F59:             Call 0.Method_arg_90 (var_B4, CLng(var_9A), var_D0)
  loc_1906F61:             Call 0.Method_arg_20 (var_CC)
  loc_1906F69:             Call 0.Method_arg_38 ("Summerised")
  loc_1906F7F:           End If
  loc_1906F7F:         End If
  loc_1906F7F:       End If
  loc_1906F86:     Next var_1FE 'Integer
  loc_1906FA6:     Call 0.Method_arg_64 (var_B4, CVar(var_88))
  loc_1906FAE:     Call 0.Method_arg_2C (var_150)
  loc_1906FBE:     Call 0.Method_arg_50 (var_CC)
  loc_1906FC8:     Set var_D0 = Nothing
  loc_1906FE2:     Set var_B4 = MemVar_1F921E4 
  loc_1906FEE:     Proc_6_99_1483714(var_B4, 0, var_CC)
  loc_1906FF9:     MemVar_1F921E4 = var_B4
  loc_1907015:     Me.Frame1.Visible = False
  loc_190702A:     Set var_B4 = Me.LblName
  loc_1907030:     Call 0.Method_CmdFind_UnknownEvent_90 (0, var_D0, 0)
  loc_1907038:     var_D0.Visible = True
  loc_1907051:     Set var_B4 = Me.LblName
  loc_1907057:     Call 0.Method_CmdFind_UnknownEvent_90 (1, var_D0, 0)
  loc_190705F:     var_D0.Visible = var_D0
  loc_190707A:     Set var_B4 = Me.Txt
  loc_1907080:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_1907088:     var_D0.Visible = False
  loc_19070A3:     Set var_B4 = Me.Txt
  loc_19070A9:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_19070B1:     var_D0.Visible = False
  loc_19070CD:     Set var_B4 = Me.Txt
  loc_19070D3:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_19070DB:     var_D0.Text = vbNullString
  loc_19070F7:     Set var_B4 = Me.Txt
  loc_19070FD:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_1907105:     var_D0.Text = vbNullString
  loc_1907111:   End If
  loc_1907116: Else
  loc_190711E:   If (var_AE = 1) Then
  loc_190712E:     Set var_B4 = Me.LblName
  loc_1907134:     Call 0.Method_CmdFind_UnknownEvent_90 (0, var_D0)
  loc_190713C:     var_D0.Visible = False
  loc_1907155:     Set var_B4 = Me.LblName
  loc_190715B:     Call 0.Method_CmdFind_UnknownEvent_90 (1, var_D0)
  loc_1907163:     var_D0.Visible = False
  loc_190717E:     Set var_B4 = Me.Txt
  loc_1907184:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_190718C:     var_D0.Visible = False
  loc_19071A7:     Set var_B4 = Me.Txt
  loc_19071AD:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_19071B5:     var_D0.Visible = False
  loc_19071D1:     Set var_B4 = Me.Txt
  loc_19071D7:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_19071DF:     var_D0.Text = vbNullString
  loc_19071FB:     Set var_B4 = Me.Txt
  loc_1907201:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_1907209:     var_D0.Text = vbNullString
  loc_1907225:     Set var_B4 = Me.Txt
  loc_190722B:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H22), var_D0)
  loc_1907233:     var_D0.Text = vbNullString
  loc_190724F:     Set var_B4 = Me.Txt
  loc_1907255:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D0)
  loc_190725D:     var_D0.Text = vbNullString
  loc_1907279:     Set var_B4 = Me.Txt
  loc_190727F:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_D0)
  loc_1907287:     var_D0.Text = vbNullString
  loc_19072A3:     Set var_B4 = Me.Txt
  loc_19072A9:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_D0)
  loc_19072B1:     var_D0.Text = vbNullString
  loc_19072CB:     Me.Frame1.Visible = False
  loc_19072D6:   Else
  loc_19072DE:     If (var_AE = 2) Then
  loc_19072FA:       If (Me.RecordCount <= 0) Then
  loc_1907305:         var_150 = "Information"
  loc_1907320:         MsgBox("No Records To Search.", &H40, var_150, var_120, var_130)
  loc_1907332:         Exit Sub
  loc_1907333:       End If
  loc_1907338:       MemVar_1F920E4 = "Select S.Mobile,S.SUBCODE,(S.ConPrefix+S.ConPerson + Case When IsNull(S.ConPersonMName,'')<>'' Then ' '+S.ConPersonMName Else '' End + Case When IsNull(S.ConPersonLName,'')<>'' Then ' '+S.ConPersonLName Else '' End) As Name,Mcat.Name AS CompanyType,MF.DOB As Birthday,MF.WedDate As AnniversaryDay,S.Phone,S.Mobile,S.AddName,(S.Add1+S.Add2+S.Add3) as Address,S.EMail From ((Subgroup S Left Join MemberFamily MF On S.SubCode=MF.Subcode And )Inner Join MemCat MCat On S.companytype=Mcat.Code)  where ActiveYN=1 AND COMPANYTYPE IN (SELECT Code FROM MemCatMast WHERE Corporate='N' ) Order by S.ConPerson"
  loc_1907344:       MemVar_1F92120 = Me
  loc_190734D:       var_CC = "0,2000,1500,1500,1500,1500,1500,1500,1500,1500,1500"
  loc_1907353:       Proc_6_126_F1BCC0(var_CC)
  loc_1907370:       Call 0.Method_arg_2B0 (1, var_150)
  loc_1907375:     End If
  loc_1907375:   End If
  loc_1907375: End If
  loc_190737E: Set var_88 = Nothing
  loc_1907388: Set var_AC = Nothing
  loc_190738D: Exit Sub
  loc_1907398: Set var_B4 = Err()
  loc_190739E: Call 0.Method_arg_2C (var_CC)
  loc_19073A9: Call 0.Method_arg_50 (var_F4)
  loc_19073C5: MsgBox(CVar(var_CC), &H10, CVar(var_F4), var_120, var_130)
  loc_19073DA: Exit Sub
End Sub

Private Sub TxtA_GotFocus(Index As Integer) '10C81CC
  'Data Table: 5ADD9C
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_88 As DataGrid
  Dim var_8C As TextBox
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_D0 As TextBox
  Dim Me As Recordset15
  loc_10C7EFA: Set var_88 = Me.TxtA
  loc_10C7F00: Call 0.Method_TxtA_GotFocus0 (Index)
  loc_10C7F0E: Proc_183_28_E20B20(var_8C)
  loc_10C7F1A: Call Proc_265_106_104DB04(var_8C)
  loc_10C7F22: var_92 = Index
  loc_10C7F2D: If (var_92 = CInt(3)) Then
  loc_10C7F43:   Me.DGCity.Tag = CVar(CStr(Index))
  loc_10C7F58:   var_A4 = Me.SSTab1.Left
  loc_10C7F6E:   Set var_88 = Me.TxtA
  loc_10C7F74:   Call 0.Method_TxtA_GotFocus0 (Index, var_8C, var_B8)
  loc_10C7F8A:   var_B4 = CVar((var_B8 + CDbl(var_8C.Left))) 'Single
  loc_10C7F99:   Me.DGCity.Left = var_B4
  loc_10C7FB6:   var_A4 = Me.SSTab1.Top
  loc_10C7FCC:   Set var_CC = Me.TxtA
  loc_10C7FD2:   Call 0.Method_TxtA_GotFocus0 (Index, var_D0, var_D4)
  loc_10C7FEC:   Set var_88 = Me.TxtA
  loc_10C7FF2:   Call 0.Method_TxtA_GotFocus0 (Index, var_8C)
  loc_10C8010:   var_B4 = CVar((((var_8C.Top + CDbl(var_D0.Height)) + var_D4) + CDbl(&HF))) 'Single
  loc_10C801F:   Me.DGCity.Top = var_B4
  loc_10C804D:   If (Me.RecordCount > 0) Then
  loc_10C805B:     Set var_8C = Me.FGPoint
  loc_10C8073:     Proc_6_137_1193554(Me.DGCity, global_184, Index)
  loc_10C8081:   End If
  loc_10C80CF:   Set var_88 = Me.TxtA
  loc_10C80D5:   Call 0.Method_TxtA_GotFocus0 (Index, var_8C, var_E0)
  loc_10C80DD:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10C80F5:   If (var_8C Or (var_E0 = vbNullString)) Then
  loc_10C80F8:     Exit Sub
  loc_10C80F9:   End If
  loc_10C8106:   Set var_88 = Me.TxtA
  loc_10C810C:   Call 0.Method_TxtA_GotFocus0 (Index, var_8C)
  loc_10C8114:   var_E0 = var_8C.Text
  loc_10C8126:   var_B4 = "Name"
  loc_10C8161:   If CBool(CVar(var_E0) <> Me.Fields.Item(var_B4).Value) Then
  loc_10C816A:     Me.MoveFirst
  loc_10C818D:     Set var_88 = Me.TxtA
  loc_10C8193:     Call 0.Method_TxtA_GotFocus0 (Index, var_8C, var_E0, "Name ='")
  loc_10C819B:     0 = var_8C.Text
  loc_10C81B4:     Me.Find 1 & var_E0 & "'", var_B4, var_92
  loc_10C81C9:   End If
  loc_10C81C9: End If
  loc_10C81C9: Exit Sub
End Sub

Private Sub TxtA_KeyDown(KeyCode As Integer, Shift As Integer) '109753C
  'Data Table: 5ADD9C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As Frame
  loc_10972AA: If (CLng(Shift) = &H1B) Then
  loc_10972AD:   Call Proc_265_106_104DB04()
  loc_10972B2:   Exit Sub
  loc_10972B3: End If
  loc_10972B6: var_86 = KeyCode
  loc_10972C1: If (var_86 = CInt(3)) Then
  loc_10972E1:   Set var_9C = Me.FGPoint
  loc_10972EC:   Set var_98 = Nothing
  loc_109731A:   Proc_6_69_134A198(Me.DGCity, Me.TxtA, KeyCode, global_184, Shift, 0)
  loc_1097389:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10973AF:     Proc_6_138_106D6F8(Me.DGCity, global_184, KeyCode, Me.FGPoint, 1)
  loc_10973BD:   End If
  loc_10973BD: End If
  loc_10973EE: Set var_98 = Me.DGCity
  loc_1097408: Set var_9C = Me.FrmList
  loc_109747F: If (((((((CBool(Me.DGUnderAc.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (var_9C.Visible = 0)) And (Me.frmList1.Visible = 0)) And (CBool(Me.DgMemType.Visible) = 0)) And (CBool(Me.DGUnderAc.Visible) = 0)) Then
  loc_1097497:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10974A0:     Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_10974A5:   End If
  loc_10974A9:   Set var_8C = Me.TopCtrl1
  loc_10974AF:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_10974C8:   If (CStr(0) = "Add") Then
  loc_10974E0:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10974E9:       Proc_6_76_E52838(Shift, arg_14)
  loc_10974EE:     End If
  loc_10974F1:   Else
  loc_10974F5:     Set var_8C = Me.TopCtrl1
  loc_10974FB:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_1097514:     If (CStr() = "Edit") Then
  loc_109752C:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1097535:         Proc_6_76_E52838(Shift)
  loc_109753A:       End If
  loc_109753A:     End If
  loc_109753A:   End If
  loc_109753A: End If
  loc_109753A: Exit Sub
  loc_109753B: Exit Sub
End Sub

Private Sub TxtA_KeyPress(KeyAscii As Integer) 'EE6CC8
  'Data Table: 5ADD9C
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE6C0E: Proc_6_133_E7EF78(var_94)
  loc_EE6C23: If (CInt(var_94) = &H27) Then
  loc_EE6C28:   arg_10 = 0
  loc_EE6C2B:   Exit Sub
  loc_EE6C2C: End If
  loc_EE6C3A: If (KeyAscii = CInt(3)) Then
  loc_EE6C59:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EE6C86:     Proc_183_41_1459C78(Me.TxtA, KeyAscii, global_184, arg_10, "Name")
  loc_EE6CB8:     Proc_6_138_106D6F8(Me.DGCity, global_184, KeyAscii, Me.FGPoint, 0)
  loc_EE6CC6:   End If
  loc_EE6CC6: End If
  loc_EE6CC6: Exit Sub
End Sub

Private Sub TxtA_LostFocus(Index As Integer) 'E4A034
  'Data Table: 5ADD9C
  loc_E4A012: Set var_88 = Me.TxtA
  loc_E4A018: Call 0.Method_TxtA_LostFocus0 (Index)
  loc_E4A026: Proc_183_27_E22608(var_8C)
  loc_E4A032: Exit Sub
End Sub

Private Sub TxtA_Validate(Cancel As Boolean) '1162D4C
  'Data Table: 5ADD9C
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_B4 As TextBox
  loc_116299E: If (Cancel = CInt(3)) Then
  loc_11629E2:   If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_11629F2:     Set var_94 = Me.TxtA
  loc_11629F8:     Call 0.Method_TxtA_Validate0 (Cancel, var_98)
  loc_1162A17:     If (var_98.Text <> vbNullString) Then
  loc_1162A55:       Set var_B0 = Me.TxtA
  loc_1162A5B:       Call 0.Method_TxtA_Validate0 (Cancel, var_B4)
  loc_1162A63:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1162AB4:       Set var_B0 = Me.TxtA
  loc_1162ABA:       Call 0.Method_TxtA_Validate0 (Cancel, var_B4)
  loc_1162AC2:       var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1162B14:       Set var_B0 = Me.TxtA
  loc_1162B1A:       Call 0.Method_TxtA_Validate0 (CInt(4), var_B4)
  loc_1162B22:       var_B4.Text = CStr(Me.Fields.Item("SName").Value)
  loc_1162B74:       Set var_B0 = Me.TxtA
  loc_1162B7A:       Call 0.Method_TxtA_Validate0 (CInt(4), var_B4)
  loc_1162B82:       var_B4.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_1162BD4:       Set var_B0 = Me.TxtA
  loc_1162BDA:       Call 0.Method_TxtA_Validate0 (CInt(5), var_B4)
  loc_1162BE2:       var_B4.Text = CStr(Me.Fields.Item("CName").Value)
  loc_1162C15:       var_98 = Me.Fields.Item("cCode")
  loc_1162C34:       Set var_B0 = Me.TxtA
  loc_1162C3A:       Call 0.Method_TxtA_Validate0 (CInt(5), var_B4)
  loc_1162C42:       var_B4.Tag = CStr(var_98.Value)
  loc_1162C5B:     Else
  loc_1162C68:       Set var_94 = Me.TxtA
  loc_1162C6E:       Call 0.Method_TxtA_Validate0 (Cancel, var_98)
  loc_1162C76:       var_98.Text = vbNullString
  loc_1162C8F:       Set var_94 = Me.TxtA
  loc_1162C95:       Call 0.Method_TxtA_Validate0 (Cancel, var_98)
  loc_1162C9D:       var_98.Tag = vbNullString
  loc_1162CB7:       Set var_94 = Me.TxtA
  loc_1162CBD:       Call 0.Method_TxtA_Validate0 (CInt(4), var_98)
  loc_1162CC5:       var_98.Text = vbNullString
  loc_1162CDF:       Set var_94 = Me.TxtA
  loc_1162CE5:       Call 0.Method_TxtA_Validate0 (CInt(4), var_98)
  loc_1162CED:       var_98.Tag = vbNullString
  loc_1162D07:       Set var_94 = Me.TxtA
  loc_1162D0D:       Call 0.Method_TxtA_Validate0 (CInt(5), var_98)
  loc_1162D15:       var_98.Text = vbNullString
  loc_1162D2F:       Set var_94 = Me.TxtA
  loc_1162D35:       Call 0.Method_TxtA_Validate0 (CInt(5), var_98)
  loc_1162D3D:       var_98.Tag = vbNullString
  loc_1162D49:     End If
  loc_1162D49:   End If
  loc_1162D49: End If
  loc_1162D49: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '155F590
  'Data Table: 5ADD9C
  Dim var_92 As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim var_120 As Long
  Dim Me As Recordset15
  Dim var_170 As Long
  loc_155E52E: Set var_88 = Me.TxtGrid
  loc_155E534: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_155E542: Proc_6_74_E226B0(var_8C)
  loc_155E54E: Call Proc_265_106_104DB04(var_8C)
  loc_155E556: var_92 = Index
  loc_155E55F: If (var_92 = 0) Then
  loc_155E575:   var_C4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_155E5A7:   var_110 = CStr(Me.FAGrid.TextMatrix))
  loc_155E5B4:   Set var_108 = Me.TxtGrid
  loc_155E5BA:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, var_110)
  loc_155E5C2:   var_10C.Tag = CVar(CLng(Me.FAGrid.Col))
  loc_155E5F3:   var_114 = CLng(Me.FAGrid.Col)
  loc_155E603:   If (var_114 = CLng(3)) Then
  loc_155E611:     If (global_68 = "Y") Then
  loc_155E621:       ReDim var_118(0 To 0)
  loc_155E638:       var_118(0) = "Corporate"
  loc_155E68F:       Set global_244 = Proc_6_66_EFF8FC(Me.ListView2, Me.TxtGrid, Index, Array(var_118), 1)
  loc_155E6A3:     Else
  loc_155E6AE:       If (global_68 = "N") Then
  loc_155E6BE:         ReDim var_118(0 To 2)
  loc_155E6D5:         var_118(0) = "Spouse"
  loc_155E6E4:         var_118(1) = "Child"
  loc_155E6F3:         var_118(2) = "Other"
  loc_155E70A:         global_228 = Array(var_118)
  loc_155E715:         Set var_108 = Me.ListView2
  loc_155E730:         Set var_8C = Me.TxtGrid
  loc_155E74A:         Set global_244 = Proc_6_66_EFF8FC(var_108, var_8C, Index, global_228, 3)
  loc_155E75B:       End If
  loc_155E75B:     End If
  loc_155E768:     Set var_88 = Me.TxtGrid
  loc_155E76E:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_228)
  loc_155E776:     global_228 = var_8C.Text
  loc_155E788:     Set var_90 = Me.TxtGrid
  loc_155E78E:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155E796:     var_108.Tag = var_114
  loc_155E7AC:   Else
  loc_155E7B3:     If (var_114 = CLng(4)) Then
  loc_155E7C1:       If (global_68 = "Y") Then
  loc_155E7D1:         ReDim var_118(0 To 2)
  loc_155E7E8:         var_118(0) = "Mr."
  loc_155E7F7:         var_118(1) = "Mrs."
  loc_155E806:         var_118(2) = "Miss"
  loc_155E85D:         Set global_244 = Proc_6_66_EFF8FC(Me.ListView2, Me.TxtGrid, Index, Array(var_118))
  loc_155E871:       Else
  loc_155E87C:         If (global_68 = "N") Then
  loc_155E88C:           ReDim var_118(0 To 3)
  loc_155E8A3:           var_118(0) = "Mr."
  loc_155E8B2:           var_118(1) = "Mrs."
  loc_155E8C1:           var_118(2) = "Master"
  loc_155E8D0:           var_118(3) = "Miss"
  loc_155E8E7:           global_228 = Array(var_118)
  loc_155E8F2:           Set var_108 = Me.ListView2
  loc_155E90D:           Set var_8C = Me.TxtGrid
  loc_155E927:           Set global_244 = Proc_6_66_EFF8FC(var_108, var_8C, Index, global_228, 4)
  loc_155E938:         End If
  loc_155E938:       End If
  loc_155E945:       Set var_88 = Me.TxtGrid
  loc_155E94B:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_228)
  loc_155E953:       3 = var_8C.Text
  loc_155E965:       Set var_90 = Me.TxtGrid
  loc_155E96B:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155E973:       var_108.Tag = global_228
  loc_155E989:     Else
  loc_155E990:       If (var_114 = CLng(6)) Then
  loc_155E9A0:         ReDim var_118(0 To 1)
  loc_155E9AA:         var_C4 = "Male"
  loc_155E9B7:         var_118(0) = var_C4
  loc_155E9C6:         var_118(1) = "Female"
  loc_155E9E8:         Set var_108 = Me.ListView2
  loc_155E9EF:         Set var_10C = Me.TxtGrid
  loc_155EA03:         Set var_8C = var_10C
  loc_155EA1D:         Set global_244 = Proc_6_66_EFF8FC(var_108, var_8C, Index, Array(var_118))
  loc_155EA3B:         Set var_88 = Me.TxtGrid
  loc_155EA41:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, 2)
  loc_155EA49:         global_228 = var_8C.Text
  loc_155EA5B:         Set var_90 = Me.TxtGrid
  loc_155EA61:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155EA69:         var_108.Tag = var_C4
  loc_155EA7C:       End If
  loc_155EA7C:     End If
  loc_155EA7C:   End If
  loc_155EA7F: Else
  loc_155EA85:   If (var_92 = 1) Then
  loc_155EA9B:     var_C4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_155EACD:     var_110 = CStr(Me.FPGrid.TextMatrix))
  loc_155EADA:     Set var_108 = Me.TxtGrid
  loc_155EAE0:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, var_110)
  loc_155EAE8:     var_10C.Tag = CVar(CLng(Me.FPGrid.Col))
  loc_155EB29:     If (CLng(Me.FPGrid.Col) = CLng(4)) Then
  loc_155EB39:       ReDim var_118(0 To 1)
  loc_155EB43:       var_C4 = "Proposed"
  loc_155EB50:       var_118(0) = var_C4
  loc_155EB5F:       var_118(1) = "Seconded"
  loc_155EB76:       global_228 = Array(var_118)
  loc_155EB81:       Set var_108 = Me.ListView3
  loc_155EB9C:       Set var_8C = Me.TxtGrid
  loc_155EBB6:       Set global_244 = Proc_6_66_EFF8FC(var_108, var_8C, Index, global_228, 2)
  loc_155EBD4:       Set var_88 = Me.TxtGrid
  loc_155EBDA:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_228)
  loc_155EBE2:       var_120 = var_8C.Text
  loc_155EBF4:       Set var_90 = Me.TxtGrid
  loc_155EBFA:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155EC02:       var_108.Tag = var_C4
  loc_155EC18:     Else
  loc_155EC1F:       If (var_120 = CLng(5)) Then
  loc_155EC31:         Set var_88 = Me.TxtGrid
  loc_155EC37:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_155EC3F:         var_8C.MaxLength = &H4B
  loc_155EC58:         Set var_90 = Me.TxtGrid
  loc_155EC5E:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_155EC66:         var_128 = var_108.Width
  loc_155EC78:         Set var_88 = Me.TxtGrid
  loc_155EC7E:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_155EC92:         var_C4 = CVar((var_8C.Left + var_128)) 'Single
  loc_155ECA1:         Me.DGPropMember.Left = var_C4
  loc_155ECB3:         var_C4 = 0
  loc_155ECF0:         var_E4 = CVar(((CDbl(Me.FPGrid.Top) + CDbl(CLng(Me.FPGrid.RowHeight)))) + CDbl(&HF))) 'Single
  loc_155ECFF:         Me.DGPropMember.Top = CVar(CLng(Me.FPGrid.Col))
  loc_155ED2C:         var_C4 = CVar((CDbl(Me.FPGrid.Height) - CDbl(250))) 'Single
  loc_155ED3B:         Me.DGPropMember.Height = var_C4
  loc_155ED53:         var_124 = Me.RecordCount
  loc_155ED8B:         If ((var_124 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_155ED8E:           Exit Sub
  loc_155ED8F:         End If
  loc_155EDA2:         var_C4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_155EDAA:         var_E4 = CVar(CLng(3)) 'Long
  loc_155EDDD:         If (CStr(Me.FPGrid.TextMatrix)) <> vbNullString) Then
  loc_155EDE6:           Me.MoveFirst
  loc_155EDFE:           var_C4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_155EE0F:           Set var_8C = Me.FPGrid
  loc_155EE26:           Proc_6_17_EAA2B0(var_13C, CVar(CStr(var_8C.TextMatrix))), CVar(CLng(3)), var_C4, CVar(CLng(3)))
  loc_155EE4F:           Me.Find CStr("PMemCode=" & var_13C), 0, 1
  loc_155EE7F:           If (Me.EOF = &HFF) Then
  loc_155EE88:             Me.MoveFirst
  loc_155EE8D:           End If
  loc_155EE8D:         End If
  loc_155EE90:       Else
  loc_155EE97:         If (var_120 = CLng(7)) Then
  loc_155EEA9:           Set var_88 = Me.TxtGrid
  loc_155EEAF:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H4B, var_16C)
  loc_155EEB7:           var_8C.MaxLength = var_C4
  loc_155EED0:           Set var_90 = Me.TxtGrid
  loc_155EED6:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_128)
  loc_155EEDE:           var_B4 = var_108.Width
  loc_155EEF0:           Set var_88 = Me.TxtGrid
  loc_155EEF6:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_124)
  loc_155EEFE:           var_C4 = var_8C.Left
  loc_155EF0A:           var_C4 = CVar((var_124 + var_128)) 'Single
  loc_155EF13:           Set var_10C = Me.DGPropMember
  loc_155EF19:           var_10C.Left = var_C4
  loc_155EF2B:           var_C4 = 0
  loc_155EF68:           var_E4 = CVar(((CDbl(Me.FPGrid.Top) + CDbl(CLng(Me.FPGrid.RowHeight)))) + CDbl(&HF))) 'Single
  loc_155EF77:           Me.DGPropMember.Top = CVar(CLng(3))
  loc_155EFA4:           var_C4 = CVar((CDbl(Me.FPGrid.Height) - CDbl(250))) 'Single
  loc_155EFB3:           Me.DGPropMember.Height = var_C4
  loc_155F003:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_155F006:             Exit Sub
  loc_155F007:           End If
  loc_155F01A:           var_C4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_155F022:           var_E4 = CVar(CLng(3)) 'Long
  loc_155F055:           If (CStr(Me.FPGrid.TextMatrix)) <> vbNullString) Then
  loc_155F05E:             Me.MoveFirst
  loc_155F09E:             Proc_6_17_EAA2B0(var_13C, CVar(CStr(Me.FPGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(Me.FPGrid.Row)), CVar(CLng(3)))
  loc_155F0C7:             Me.Find CStr("PMemCode=" & var_13C), 0, 1
  loc_155F0F7:             If (Me.EOF = &HFF) Then
  loc_155F100:               Me.MoveFirst
  loc_155F105:             End If
  loc_155F105:           End If
  loc_155F105:         End If
  loc_155F105:       End If
  loc_155F105:     End If
  loc_155F108:   Else
  loc_155F10E:     If (var_92 = 2) Then
  loc_155F127:       Me.FGrid1.CellBackColor = CVar(CLng(global_280))
  loc_155F181:       Set var_108 = Me.TxtGrid
  loc_155F187:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))
  loc_155F18F:       var_10C.Tag = var_16C
  loc_155F1C0:       var_170 = CLng(Me.FGrid1.Col)
  loc_155F1D0:       If (var_170 = CLng(1)) Then
  loc_155F214:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_155F217:           Exit Sub
  loc_155F218:         End If
  loc_155F23B:         Proc_6_137_1193554(Me.DGRev, global_56, Index, Me.FGPoint1, var_170)
  loc_155F25C:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_155F264:         var_E4 = CVar(CLng(1)) 'Long
  loc_155F297:         If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_155F2A0:           Me.MoveFirst
  loc_155F2CF:           var_B4 = Me.FGrid1.TextMatrix)
  loc_155F2E0:           Proc_6_17_EAA2B0(var_13C, CVar(CStr(var_B4)), CVar(CLng(6)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(6)))
  loc_155F2FF:           var_110 = CStr("Code=" & var_13C)
  loc_155F309:           Me.Find var_110, 0, 1
  loc_155F339:           If (Me.EOF = &HFF) Then
  loc_155F342:             Me.MoveFirst
  loc_155F347:           End If
  loc_155F347:         End If
  loc_155F34A:       Else
  loc_155F351:         If (var_170 = CLng(3)) Then
  loc_155F361:           ReDim var_118(0 To 4)
  loc_155F36B:           var_C4 = "Monthly"
  loc_155F378:           var_118(0) = var_C4
  loc_155F387:           var_118(1) = "Bi Monthly"
  loc_155F396:           var_118(2) = "Quarterly"
  loc_155F3A5:           var_118(3) = "Half Yearly"
  loc_155F3B4:           var_118(4) = "Annual"
  loc_155F3D6:           Set var_108 = Me.ListView4
  loc_155F3F1:           Set var_8C = Me.TxtGrid
  loc_155F40B:           Set global_244 = Proc_6_66_EFF8FC(var_108, var_8C, Index, Array(var_118), 5, Array(var_118))
  loc_155F429:           Set var_88 = Me.TxtGrid
  loc_155F42F:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, var_16C, var_C4)
  loc_155F437:           var_C4 = var_8C.Text
  loc_155F449:           Set var_90 = Me.TxtGrid
  loc_155F44F:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155F457:           var_108.Tag = var_B4
  loc_155F46D:         Else
  loc_155F474:           If (var_170 = CLng(5)) Then
  loc_155F484:             ReDim var_118(0 To 1)
  loc_155F48E:             var_C4 = "Yes"
  loc_155F49B:             var_118(0) = var_C4
  loc_155F4AA:             var_118(1) = "No"
  loc_155F4CC:             Set var_108 = Me.ListView4
  loc_155F4E7:             Set var_8C = Me.TxtGrid
  loc_155F501:             Set global_244 = Proc_6_66_EFF8FC(var_108, var_8C, Index, Array(var_118))
  loc_155F51F:             Set var_88 = Me.TxtGrid
  loc_155F525:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, 2)
  loc_155F52D:             global_228 = var_8C.Text
  loc_155F53F:             Set var_90 = Me.TxtGrid
  loc_155F545:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155F54D:             var_108.Tag = var_C4
  loc_155F563:           Else
  loc_155F56A:             If (var_170 = CLng(2)) Then
  loc_155F576:               If (global_110 = 0) Then
  loc_155F581:                 var_110 = "{Home}+{End}"
  loc_155F587:                 Proc_303_0_FB9B68(var_110, 0)
  loc_155F58F:               End If
  loc_155F58F:             End If
  loc_155F58F:           End If
  loc_155F58F:         End If
  loc_155F58F:       End If
  loc_155F58F:     End If
  loc_155F58F:   End If
  loc_155F58F: End If
  loc_155F58F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '164BEDC
  'Data Table: 5ADD9C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C0 As TextBox
  Dim var_CC As TextBox
  Dim var_F4 As Long
  Dim var_F8 As Long
  Dim var_108 As Variant
  Dim var_98 As DataGrid
  Dim var_BC As DataGrid
  Dim Me As Recordset15
  loc_164A893: var_86 = Shift
  loc_164A8A2: If (KeyCode = 0) Then
  loc_164A8AF:   If (CLng(Shift) = &H1B) Then
  loc_164A8BF:     Set var_8C = Me.TxtGrid
  loc_164A8C5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_164A8CD:     var_88 = var_90.Tag
  loc_164A8DF:     Set var_98 = Me.TxtGrid
  loc_164A8E5:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_164A8ED:     var_9C.Text = var_94
  loc_164A909:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_164A90E:     Call Proc_265_106_104DB04(arg_14)
  loc_164A917:     Set var_8C = Me.FAGrid
  loc_164A934:     Set var_8C = Me.TxtGrid
  loc_164A93A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_164A942:     var_90.Visible = FAGrid.DispID_8001
  loc_164A94E:     Exit Sub
  loc_164A94F:   End If
  loc_164A972:   If (CLng(Me.FAGrid.Col) = CLng(3)) Then
  loc_164A980:     If (global_68 = "Y") Then
  loc_164A9A5:       Set var_8C = Me.TxtGrid
  loc_164A9AB:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_164A9B3:       var_B0 = var_90.Left
  loc_164A9C5:       Set var_98 = Me.TxtGrid
  loc_164A9CB:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_164A9D3:       var_B8 = var_9C.Top
  loc_164A9E5:       Set var_BC = Me.TxtGrid
  loc_164A9EB:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0)
  loc_164A9F3:       var_C4 = var_C0.Height
  loc_164AA05:       Set var_C8 = Me.TxtGrid
  loc_164AA0B:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164AA13:       var_D0 = var_CC.Width
  loc_164AA5B:       Proc_6_65_119423C(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164AA82:     Else
  loc_164AA8D:       If (global_68 = "N") Then
  loc_164AAB2:         Set var_8C = Me.TxtGrid
  loc_164AAB8:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, CInt(var_B4))
  loc_164AAC0:         CInt((var_B8 + var_C4)) = var_90.Left
  loc_164AAD2:         Set var_98 = Me.TxtGrid
  loc_164AAD8:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164AAE0:         CInt(var_D0) = var_9C.Top
  loc_164AAF2:         Set var_BC = Me.TxtGrid
  loc_164AAF8:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164AB00:         215 = var_C0.Height
  loc_164AB12:         Set var_C8 = Me.TxtGrid
  loc_164AB18:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164AB20:         var_D0 = var_CC.Width
  loc_164AB68:         Proc_6_65_119423C(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164AB8C:       End If
  loc_164AB8C:     End If
  loc_164AB96:     If (CLng(Shift) = &HD) Then
  loc_164AB9F:       Call Proc_265_118_170B4C0(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164ABAA:       If (var_DE = &HFF) Then
  loc_164ABB8:         Set var_9C = Me.TxtGrid
  loc_164ABE1:         Set var_90 = var_9C
  loc_164ABF0:         Proc_6_62_1253BC4(Me.FAGrid, var_90, KeyCode, Shift, global_110, &H22)
  loc_164AC00:       End If
  loc_164AC00:     End If
  loc_164AC03:   Else
  loc_164AC0A:     If (var_B0 = CLng(4)) Then
  loc_164AC18:       If (global_68 = "Y") Then
  loc_164AC3D:         Set var_8C = Me.TxtGrid
  loc_164AC43:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, 0, 4)
  loc_164AC4B:         0 = var_90.Left
  loc_164AC5D:         Set var_98 = Me.TxtGrid
  loc_164AC63:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164AC6B:         CInt(var_D0) = var_9C.Top
  loc_164AC7D:         Set var_BC = Me.TxtGrid
  loc_164AC83:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164AC8B:         645 = var_C0.Height
  loc_164AC9D:         Set var_C8 = Me.TxtGrid
  loc_164ACA3:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164ACAB:         var_D0 = var_CC.Width
  loc_164ACF3:         Proc_6_65_119423C(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164AD1A:       Else
  loc_164AD25:         If (global_68 = "N") Then
  loc_164AD4A:           Set var_8C = Me.TxtGrid
  loc_164AD50:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, CInt(var_B4))
  loc_164AD58:           CInt((var_B8 + var_C4)) = var_90.Left
  loc_164AD6A:           Set var_98 = Me.TxtGrid
  loc_164AD70:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164AD78:           CInt(var_D0) = var_9C.Top
  loc_164AD8A:           Set var_BC = Me.TxtGrid
  loc_164AD90:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164AD98:           645 = var_C0.Height
  loc_164ADAA:           Set var_C8 = Me.TxtGrid
  loc_164ADB0:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164ADB8:           var_D0 = var_CC.Width
  loc_164AE00:           Proc_6_65_119423C(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164AE24:         End If
  loc_164AE24:       End If
  loc_164AE2E:       If (CLng(Shift) = &HD) Then
  loc_164AE37:         Call Proc_265_118_170B4C0(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164AE42:         If (var_DE = &HFF) Then
  loc_164AE88:           Proc_6_62_1253BC4(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22)
  loc_164AE98:         End If
  loc_164AE98:       End If
  loc_164AE9B:     Else
  loc_164AEA2:       If (var_B0 = CLng(5)) Then
  loc_164AEAF:         If (CLng(Shift) = &HD) Then
  loc_164AEB8:           Call Proc_265_118_170B4C0(KeyCode, var_DE, 0, 5)
  loc_164AEC3:           If (var_DE = &HFF) Then
  loc_164AED1:             Set var_9C = Me.TxtGrid
  loc_164AEFA:             Set var_90 = var_9C
  loc_164AF09:             Proc_6_62_1253BC4(Me.FAGrid, var_90, KeyCode, Shift, global_110, &H22, 0)
  loc_164AF19:           End If
  loc_164AF19:         End If
  loc_164AF1C:       Else
  loc_164AF23:         If (var_B0 = CLng(6)) Then
  loc_164AF48:           Set var_8C = Me.TxtGrid
  loc_164AF4E:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, 6, 0)
  loc_164AF56:           0 = var_90.Left
  loc_164AF68:           Set var_98 = Me.TxtGrid
  loc_164AF6E:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164AF76:           CInt(var_D0) = var_9C.Top
  loc_164AF88:           Set var_BC = Me.TxtGrid
  loc_164AF8E:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164AF96:           860 = var_C0.Height
  loc_164AFA8:           Set var_C8 = Me.TxtGrid
  loc_164AFAE:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164AFB6:           var_D0 = var_CC.Width
  loc_164AFFE:           Proc_6_65_119423C(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164B02C:           If (CLng(Shift) = &HD) Then
  loc_164B035:             Call Proc_265_118_170B4C0(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164B040:             If (var_DE = &HFF) Then
  loc_164B086:               Proc_6_62_1253BC4(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22)
  loc_164B096:             End If
  loc_164B096:           End If
  loc_164B099:         Else
  loc_164B0A0:           If (var_B0 = CLng(8)) Then
  loc_164B0AD:             If (CLng(Shift) = &HD) Then
  loc_164B0B6:               Call Proc_265_118_170B4C0(KeyCode, var_DE, 0, 8)
  loc_164B0C1:               If (var_DE = &HFF) Then
  loc_164B107:                 Proc_6_62_1253BC4(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164B117:               End If
  loc_164B117:             End If
  loc_164B11A:           Else
  loc_164B121:             If (var_B0 = CLng(&HA)) Then
  loc_164B12E:               If (CLng(Shift) = &HD) Then
  loc_164B137:                 Call Proc_265_118_170B4C0(KeyCode, var_DE, &HA, 0)
  loc_164B142:                 If (var_DE = &HFF) Then
  loc_164B188:                   Proc_6_62_1253BC4(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164B198:                 End If
  loc_164B198:               End If
  loc_164B19B:             Else
  loc_164B1A2:               If (var_B0 = CLng(&HC)) Then
  loc_164B1AF:                 If (CLng(Shift) = &HD) Then
  loc_164B1B8:                   Call Proc_265_118_170B4C0(KeyCode, var_DE, &HC, 0)
  loc_164B1C3:                   If (var_DE = &HFF) Then
  loc_164B209:                     Proc_6_62_1253BC4(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164B219:                   End If
  loc_164B219:                 End If
  loc_164B21C:               Else
  loc_164B223:                 If (var_B0 = CLng(&HE)) Then
  loc_164B230:                   If (CLng(Shift) = &HD) Then
  loc_164B239:                     Call Proc_265_118_170B4C0(KeyCode, var_DE, &HE, 0)
  loc_164B244:                     If (var_DE = &HFF) Then
  loc_164B28A:                       Proc_6_62_1253BC4(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164B29A:                     End If
  loc_164B29A:                   End If
  loc_164B29D:                 Else
  loc_164B2A4:                   If (var_B0 = CLng(&H18)) Then
  loc_164B2B1:                     If (CLng(Shift) = &HD) Then
  loc_164B2BA:                       Call Proc_265_118_170B4C0(KeyCode, var_DE, &H18, 0)
  loc_164B2C5:                       If (var_DE = &HFF) Then
  loc_164B30B:                         Proc_6_62_1253BC4(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164B31B:                       End If
  loc_164B31B:                     End If
  loc_164B31E:                   Else
  loc_164B325:                     If (var_B0 = CLng(&H1D)) Then
  loc_164B332:                       If (CLng(Shift) = &HD) Then
  loc_164B33B:                         Call Proc_265_118_170B4C0(KeyCode, var_DE, &H1D, 0)
  loc_164B346:                         If (var_DE = &HFF) Then
  loc_164B354:                           Set var_9C = Me.TxtGrid
  loc_164B37F:                           Set var_90 = var_9C
  loc_164B38E:                           Proc_6_62_1253BC4(Me.FAGrid, var_90, KeyCode, Shift, global_110, &H22, CByte(4))
  loc_164B39E:                         End If
  loc_164B39E:                       End If
  loc_164B39E:                     End If
  loc_164B39E:                   End If
  loc_164B39E:                 End If
  loc_164B39E:               End If
  loc_164B39E:             End If
  loc_164B39E:           End If
  loc_164B39E:         End If
  loc_164B39E:       End If
  loc_164B39E:     End If
  loc_164B39E:   End If
  loc_164B3A1: Else
  loc_164B3A7:   If (var_88 = 1) Then
  loc_164B3B4:     If (CLng(Shift) = &H1B) Then
  loc_164B3C4:       Set var_8C = Me.TxtGrid
  loc_164B3CA:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 0, 0)
  loc_164B3D2:       0 = var_90.Tag
  loc_164B3E4:       Set var_98 = Me.TxtGrid
  loc_164B3EA:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_164B3F2:       var_9C.Text = CInt(var_D0)
  loc_164B40E:       Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_164B413:       Call Proc_265_106_104DB04(arg_14, 430)
  loc_164B41C:       Set var_8C = Me.FPGrid
  loc_164B439:       Set var_8C = Me.TxtGrid
  loc_164B43F:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_164B447:       var_90.Visible = FPGrid.DispID_8001
  loc_164B453:       Exit Sub
  loc_164B454:     End If
  loc_164B477:     If (CLng(Me.FPGrid.Col) = CLng(4)) Then
  loc_164B49C:       Set var_8C = Me.TxtGrid
  loc_164B4A2:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_164B4AA:       var_F4 = var_90.Left
  loc_164B4BC:       Set var_98 = Me.TxtGrid
  loc_164B4C2:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_164B4CA:       var_B8 = var_9C.Top
  loc_164B4DC:       Set var_BC = Me.TxtGrid
  loc_164B4E2:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0)
  loc_164B4EA:       var_C4 = var_C0.Height
  loc_164B4FC:       Set var_C8 = Me.TxtGrid
  loc_164B502:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164B50A:       var_D0 = var_CC.Width
  loc_164B552:       Proc_6_65_119423C(Me.FrmList3, Me.ListView3, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164B580:       If (CLng(Shift) = &HD) Then
  loc_164B589:         Call Proc_265_118_170B4C0(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164B594:         If (var_DE = &HFF) Then
  loc_164B5DA:           Proc_6_62_1253BC4(Me.FPGrid, Me.TxtGrid, KeyCode, Shift, global_110, &HE)
  loc_164B5EA:         End If
  loc_164B5EA:       End If
  loc_164B5ED:     Else
  loc_164B5F4:       If (var_F4 = CLng(5)) Then
  loc_164B601:         If (CLng(Shift) = &HD) Then
  loc_164B60A:           Call Proc_265_118_170B4C0(KeyCode, var_DE, 0, 5)
  loc_164B615:           If (var_DE = &HFF) Then
  loc_164B65B:             Proc_6_62_1253BC4(Me.FPGrid, Me.TxtGrid, KeyCode, Shift, global_110, &HE, 0)
  loc_164B66B:           End If
  loc_164B66B:         End If
  loc_164B66E:       Else
  loc_164B675:         If (var_F4 = CLng(7)) Then
  loc_164B6C9:           Proc_6_69_134A198(Me.DGPropMember, Me.TxtGrid, KeyCode, global_192, Shift, &HFF, 1, Nothing)
  loc_164B6E7:           If (CLng(Shift) = &HD) Then
  loc_164B6F0:             Call Proc_265_118_170B4C0(KeyCode, var_DE, Nothing, 0, 7)
  loc_164B6FB:             If (var_DE = &HFF) Then
  loc_164B741:               Proc_6_62_1253BC4(Me.FPGrid, Me.TxtGrid, KeyCode, Shift, global_110, &HE, 0)
  loc_164B751:             End If
  loc_164B751:           End If
  loc_164B754:         Else
  loc_164B75B:           If (var_F4 = CLng(&HE)) Then
  loc_164B768:             If (CLng(Shift) = &HD) Then
  loc_164B771:               Call Proc_265_118_170B4C0(KeyCode, var_DE, &HE, 0, 0)
  loc_164B77C:               If (var_DE = &HFF) Then
  loc_164B78A:                 Set var_9C = Me.TxtGrid
  loc_164B7B5:                 Set var_90 = var_9C
  loc_164B7C4:                 Proc_6_62_1253BC4(Me.FPGrid, var_90, KeyCode, Shift, global_110, &HE, CByte(4))
  loc_164B7D4:               End If
  loc_164B7D4:             End If
  loc_164B7D4:           End If
  loc_164B7D4:         End If
  loc_164B7D4:       End If
  loc_164B7D4:     End If
  loc_164B7D7:   Else
  loc_164B7DD:     If (var_88 = 2) Then
  loc_164B7EA:       If (CLng(Shift) = &H1B) Then
  loc_164B7FA:         Set var_8C = Me.TxtGrid
  loc_164B800:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 0, 0)
  loc_164B808:         0 = var_90.Tag
  loc_164B81A:         Set var_98 = Me.TxtGrid
  loc_164B820:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_164B828:         var_9C.Text = CInt(var_D0)
  loc_164B83F:         Set var_8C = Me.FGrid1
  loc_164B85C:         Set var_8C = Me.TxtGrid
  loc_164B862:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_164B86A:         var_90.Visible = FGrid1.DispID_8001
  loc_164B876:         Exit Sub
  loc_164B877:       End If
  loc_164B89A:       If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_164B8AA:         Set var_8C = Me.TxtGrid
  loc_164B8B0:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_164B8B8:         var_F8 = var_90.Left
  loc_164B8CF:         Me.DGRev.Left = CVar(var_B4)
  loc_164B8EA:         Set var_98 = Me.TxtGrid
  loc_164B8F0:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164B8F8:         430 = var_9C.Height
  loc_164B90A:         Set var_8C = Me.TxtGrid
  loc_164B910:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_164B924:         var_108 = CVar((var_90.Top + var_B8)) 'Single
  loc_164B933:         Me.DGRev.Top = CVar(var_90.Top)
  loc_164B950:         Set var_C0 = Me.TxtGrid
  loc_164B962:         Set var_9C = Me.FGPoint1
  loc_164B96D:         Set var_98 = Nothing
  loc_164B99B:         Proc_6_69_134A198(Me.DGRev, var_C0, KeyCode, global_56, Shift, &HFF)
  loc_164B9BA:         var_B4 = Me.RecordCount
  loc_164B9C8:         If (var_B4 > 0) Then
  loc_164B9CF:           Set var_98 = Me.DGRev
  loc_164B9EE:           Proc_6_138_106D6F8(var_98, global_56, KeyCode, Me.FGPoint1, 1)
  loc_164B9FC:         End If
  loc_164BA06:         If (CLng(Shift) = &HD) Then
  loc_164BA0F:           Call Proc_265_118_170B4C0(KeyCode, var_DE, var_98)
  loc_164BA1A:           If (var_DE = &HFF) Then
  loc_164BA60:             Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_110, 6)
  loc_164BA70:           End If
  loc_164BA70:         End If
  loc_164BA73:       Else
  loc_164BA7A:         If (var_F8 = CLng(2)) Then
  loc_164BABD:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_164BAC6:             Call Proc_265_118_170B4C0(KeyCode, var_DE, 0, 2)
  loc_164BAD1:             If (var_DE = &HFF) Then
  loc_164BADF:               Set var_9C = Me.TxtGrid
  loc_164BB08:               Set var_90 = var_9C
  loc_164BB17:               Proc_6_62_1253BC4(Me.FGrid1, var_90, KeyCode, Shift, global_110, 6, 0)
  loc_164BB27:             End If
  loc_164BB27:           End If
  loc_164BB2A:         Else
  loc_164BB31:           If (var_F8 = CLng(3)) Then
  loc_164BB56:             Set var_8C = Me.TxtGrid
  loc_164BB5C:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, 3, 0)
  loc_164BB64:             0 = var_90.Left
  loc_164BB76:             Set var_98 = Me.TxtGrid
  loc_164BB7C:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164BB84:             var_9C = var_9C.Top
  loc_164BB96:             Set var_BC = Me.TxtGrid
  loc_164BB9C:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164BBA4:             0 = var_C0.Height
  loc_164BBB6:             Set var_C8 = Me.TxtGrid
  loc_164BBBC:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164BBC4:             var_D0 = var_CC.Width
  loc_164BC0C:             Proc_6_65_119423C(Me.FrmList4, Me.ListView4, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164BC3A:             If (CLng(Shift) = &HD) Then
  loc_164BC43:               Call Proc_265_118_170B4C0(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164BC4E:               If (var_DE = &HFF) Then
  loc_164BC94:                 Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_110, 6)
  loc_164BCA4:               End If
  loc_164BCA4:             End If
  loc_164BCA7:           Else
  loc_164BCAE:             If (var_F8 = CLng(4)) Then
  loc_164BCF1:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_164BCFA:                 Call Proc_265_118_170B4C0(KeyCode, var_DE, 0, 4)
  loc_164BD05:                 If (var_DE = &HFF) Then
  loc_164BD13:                   Set var_9C = Me.TxtGrid
  loc_164BD3C:                   Set var_90 = var_9C
  loc_164BD4B:                   Proc_6_62_1253BC4(Me.FGrid1, var_90, KeyCode, Shift, global_110, 6, 0)
  loc_164BD5B:                 End If
  loc_164BD5B:               End If
  loc_164BD5E:             Else
  loc_164BD65:               If (var_F8 = CLng(5)) Then
  loc_164BD8A:                 Set var_8C = Me.TxtGrid
  loc_164BD90:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, 5, 0)
  loc_164BD98:                 0 = var_90.Left
  loc_164BDAA:                 Set var_98 = Me.TxtGrid
  loc_164BDB0:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164BDB8:                 CInt(var_D0) = var_9C.Top
  loc_164BDCA:                 Set var_BC = Me.TxtGrid
  loc_164BDD0:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164BDD8:                 1300 = var_C0.Height
  loc_164BDEA:                 Set var_C8 = Me.TxtGrid
  loc_164BDF0:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164BDF8:                 var_D0 = var_CC.Width
  loc_164BE40:                 Proc_6_65_119423C(Me.FrmList4, Me.ListView4, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164BE6E:                 If (CLng(Shift) = &HD) Then
  loc_164BE77:                   Call Proc_265_118_170B4C0(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164BE82:                   If (var_DE = &HFF) Then
  loc_164BEC8:                     Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_110, 6)
  loc_164BED8:                   End If
  loc_164BED8:                 End If
  loc_164BED8:               End If
  loc_164BED8:             End If
  loc_164BED8:           End If
  loc_164BED8:         End If
  loc_164BED8:       End If
  loc_164BED8:     End If
  loc_164BED8:   End If
  loc_164BED8: End If
  loc_164BED8: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '102F048
  'Data Table: 5ADD9C
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim var_B8 As Long
  loc_102EE07: Proc_6_58_E054C0(arg_10)
  loc_102EE0F: var_86 = KeyAscii
  loc_102EE18: If (var_86 = 0) Then
  loc_102EE3E:   If (CLng(Me.FAGrid.Col) = CLng(&H1D)) Then
  loc_102EE4B:     Set var_8C = Me.TxtGrid
  loc_102EE51:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_102EE6C:     Proc_6_42_129A86C(var_A4, arg_10, 3)
  loc_102EE78:   End If
  loc_102EE7B: Else
  loc_102EE81:   If (var_86 = 1) Then
  loc_102EE97:     var_B0 = CLng(Me.FPGrid.Col)
  loc_102EEA7:     If (var_B0 = CLng(7)) Then
  loc_102EEC6:       If (CBool(Me.DGPropMember.Visible) = &HFF) Then
  loc_102EECD:         Set var_A4 = Me.TxtGrid
  loc_102EEF3:         Proc_6_89_146F1AC(var_A4, KeyAscii, global_192, arg_10, "Name")
  loc_102EF02:       End If
  loc_102EF05:     Else
  loc_102EF0C:       If (var_B0 = CLng(&HE)) Then
  loc_102EF19:         Set var_8C = Me.TxtGrid
  loc_102EF1F:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 0, var_B0)
  loc_102EF3A:         Proc_6_42_129A86C(var_A4, arg_10, 1, 0)
  loc_102EF46:       End If
  loc_102EF46:     End If
  loc_102EF49:   Else
  loc_102EF4F:     If (var_86 = 2) Then
  loc_102EF65:       var_B8 = CLng(Me.FGrid1.Col)
  loc_102EF75:       If (var_B8 = CLng(1)) Then
  loc_102EF94:         If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_102EFC1:           Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_56, arg_10, "Name")
  loc_102EFDB:           Set var_A4 = Me.FGPoint1
  loc_102EFF3:           Proc_6_138_106D6F8(Me.DGRev, global_56, KeyAscii, var_A4, 0)
  loc_102F001:         End If
  loc_102F004:       Else
  loc_102F00B:         If (var_B8 = CLng(2)) Then
  loc_102F018:           Set var_8C = Me.TxtGrid
  loc_102F01E:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, var_B8)
  loc_102F039:           Proc_6_42_129A86C(var_A4, arg_10, 5, 2)
  loc_102F045:         End If
  loc_102F045:       End If
  loc_102F045:     End If
  loc_102F045:   End If
  loc_102F045: End If
  loc_102F045: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10CCD0C
  'Data Table: 5ADD9C
  Dim var_86 As Integer
  Dim var_A0 As Long
  Dim var_B4 As Long
  Dim var_B8 As Long
  loc_10CCA0C: On Error Goto loc_10CCD04
  loc_10CCA12: var_86 = KeyCode
  loc_10CCA1B: If (var_86 = 0) Then
  loc_10CCA31:   var_A0 = CLng(Me.FAGrid.Col)
  loc_10CCA41:   If Not (var_A0 = CLng(3)) Then
  loc_10CCA4B:     If Not (var_A0 = CLng(4)) Then
  loc_10CCA55:       If (var_A0 = CLng(6)) Then
  loc_10CCA58:       End If
  loc_10CCA58:     End If
  loc_10CCA7E:     If ((CLng(Shift) <> &HD) And (Me.FrmList2.Visible = 0)) Then
  loc_10CCA8F:       Call TxtGrid_KeyDown(KeyCode, global_112)
  loc_10CCA94:     End If
  loc_10CCAAF:     If (Me.FrmList2.Visible = &HFF) Then
  loc_10CCADE:       Proc_6_64_F28E58(Me.ListView2, Me.TxtGrid, KeyCode, Shift)
  loc_10CCAEE:     End If
  loc_10CCAEE:   End If
  loc_10CCAF1: Else
  loc_10CCAF7:   If (var_86 = 1) Then
  loc_10CCB0D:     var_B4 = CLng(Me.FPGrid.Col)
  loc_10CCB1D:     If (var_B4 = CLng(4)) Then
  loc_10CCB46:       If ((CLng(Shift) <> &HD) And (Me.FrmList3.Visible = 0)) Then
  loc_10CCB57:         Call TxtGrid_KeyDown(KeyCode, global_112)
  loc_10CCB5C:       End If
  loc_10CCB77:       If (Me.FrmList3.Visible = &HFF) Then
  loc_10CCBA6:         Proc_6_64_F28E58(Me.ListView3, Me.TxtGrid, KeyCode, Shift, global_244, 0)
  loc_10CCBB6:       End If
  loc_10CCBB6:     End If
  loc_10CCBB9:   Else
  loc_10CCBBF:     If (var_86 = 2) Then
  loc_10CCBD5:       var_B8 = CLng(Me.FGrid1.Col)
  loc_10CCBE5:       If (var_B8 = CLng(1)) Then
  loc_10CCC0B:         If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_10CCC1C:           Call TxtGrid_KeyDown(KeyCode, global_112)
  loc_10CCC4B:           Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_56, Shift, "Name", &HFF, 0)
  loc_10CCC5A:         End If
  loc_10CCC5D:       Else
  loc_10CCC64:         If Not (var_B8 = CLng(3)) Then
  loc_10CCC6E:           If (var_B8 = CLng(5)) Then
  loc_10CCC71:           End If
  loc_10CCC93:           If ((Shift <> &HD) And (Me.FrmList4.Visible = 0)) Then
  loc_10CCCA4:             Call TxtGrid_KeyDown(KeyCode, global_112)
  loc_10CCCA9:           End If
  loc_10CCCC4:           If (Me.FrmList4.Visible = &HFF) Then
  loc_10CCCF3:             Proc_6_64_F28E58(Me.ListView4, Me.TxtGrid, KeyCode, Shift, global_244, 0)
  loc_10CCD03:           End If
  loc_10CCD03:         End If
  loc_10CCD03:       End If
  loc_10CCD03:     End If
  loc_10CCD03:   End If
  loc_10CCD03: End If
  loc_10CCD03: Exit Sub
  loc_10CCD04: ' Referenced from: 10CCA0C
  loc_10CCD04: Proc_6_60_E62BC4(var_B8, var_B4, global_244)
  loc_10CCD09: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E41E60
  'Data Table: 5ADD9C
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E41E2F: var_86 = Cancel
  loc_E41E38: If Not (var_86 = 0) Then
  loc_E41E41:   If Not (var_86 = 1) Then
  loc_E41E4A:     If (var_86 = 2) Then
  loc_E41E4D:     End If
  loc_E41E4D:   End If
  loc_E41E53:   Call Proc_265_118_170B4C0(Cancel, var_88)
  loc_E41E5C:   arg_10 = Not(var_88)
  loc_E41E5F: End If
  loc_E41E5F: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'F88BFC
  'Data Table: 5ADD9C
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F88AB8: On Error Goto loc_F88B96
  loc_F88ABF: Set var_A4 = Me.ListView1
  loc_F88B09: Set var_BC = Me.Txt
  loc_F88B0F: Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F88B17: var_C0.Text = Me.ListView1.SelectedItem.Text
  loc_F88B43: Me.frmList1.Visible = False
  loc_F88B5D: var_A0 = CStr(Me.ListView1.Tag)
  loc_F88B65: var_C8 = Val(var_A0)
  loc_F88B73: Set var_9C = Me.Txt
  loc_F88B79: Call 0.Method_ListView1_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F88B81: var_A4.SetFocus
  loc_F88B95: Exit Sub
  loc_F88B96: ' Referenced from: F88AB8
  loc_F88B9E: Set var_88 = Err()
  loc_F88BA4: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F88BB5: If (var_CC <> 0) Then
  loc_F88BC0:   Set var_88 = Err()
  loc_F88BC6:   Call 0.Method_arg_2C (var_A0)
  loc_F88BE7:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F88BFA: End If
  loc_F88BFA: Exit Sub
End Sub

Private Sub DGMemType_UnknownEvent_9 '10D6B64
  'Data Table: 5ADD9C
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_C8 As TextBox
  Dim var_10C As Boolean
  Dim var_C4 As Label
  Dim arg_2460 As Variant
  loc_10D686C: On Error Goto loc_10D6AFC
  loc_10D687E: Me.DgMemType.Visible = False
  loc_10D6892: Me.LblMessAc.Visible = False
  loc_10D68A7: Set var_A8 = Me.Txt
  loc_10D68AD: Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H24), var_AC)
  loc_10D68B5: var_AC.Visible = False
  loc_10D68CA: var_B0 = Me.RecordCount
  loc_10D68D8: If (var_B0 > 0) Then
  loc_10D6914:   Set var_C4 = Me.Txt
  loc_10D691A:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(7), var_C8)
  loc_10D6922:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_10D696F:   Set var_C4 = Me.Txt
  loc_10D6975:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(7), var_C8)
  loc_10D697D:   var_C8.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_10D69C2:   global_68 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Corporate")))
  loc_10D6A2A:   Me.LblMessAc.Visible = CBool(IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("MessAcYN"))) = "Y"), True, False))
  loc_10D6A64:   var_AC = Me.Fields.Item("MessAcYN")
  loc_10D6A78:   var_10C = False
  loc_10D6A82:   var_CC = Proc_6_38_E68A98(CVar(var_AC))
  loc_10D6A91:   var_11C = IIf((var_CC = "Y"), True, var_10C)
  loc_10D6AA6:   Set var_C4 = Me.Txt
  loc_10D6AAC:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H24), var_C8)
  loc_10D6AB4:   var_C8.Visible = CBool(var_11C)
  loc_10D6AD6: End If
  loc_10D6AE1: Set var_A8 = Me.Txt
  loc_10D6AE7: Call 0.Method_DGMemType_UnknownEvent_90 (CInt(7))
  loc_10D6AEF: var_AC.SetFocus
  loc_10D6AFB: Exit Sub
  loc_10D6AFC: ' Referenced from: 10D686C
  loc_10D6B04: Set var_A8 = Err()
  loc_10D6B0A: Call 0.Method_arg_1C (var_B0)
  loc_10D6B1B: If (var_B0 <> 0) Then
  loc_10D6B26:   Set var_A8 = Err()
  loc_10D6B2C:   Call 0.Method_arg_2C (var_CC)
  loc_10D6B4D:   MsgBox(CVar(var_CC), &H40, "Validation", var_10C, var_11C)
  loc_10D6B60: End If
  loc_10D6B60: Exit Sub
  loc_10D6B61: arg_2460 = ( + var_AC)
End Sub

Private Sub DGMemType_UnknownEvent_1F 'EA58A8
  'Data Table: 5ADD9C
  Dim var_A8 As Variant
  loc_EA5828: Set var_88 = Me.DgMemType
  loc_EA5852: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA585A: Set var_BC = Me.DgMemType
  loc_EA5896: Proc_6_138_106D6F8(Me.DgMemType, global_188, CInt(7), Me.FGPoint)
  loc_EA58A4: Exit Sub
  loc_EA58A5: DgMemType.DispID_1B = var_A8
End Sub

Private Sub ImgMemPhoto_DblClick() '103AB08
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_88 As CommonDialog
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim var_BC As String
  loc_103A8E8: On Error Goto loc_103AAAA
  loc_103A8EF: Set var_88 = Me.TopCtrl1
  loc_103A8F5: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103A90E: If (CStr() = "Browse") Then
  loc_103A911:   Exit Sub
  loc_103A912: End If
  loc_103A922: Me.CDlg.Filter = "*.*"
  loc_103A93A: Me.CDlg.Action = 1
  loc_103A94C: Me.CDlg.FileName = 
  loc_103A954: var_CC = CVar(CStr()) 'String
  loc_103A95A: var_DC = Trim(var_CC)
  loc_103A963: Set var_110 = Me.CDlg
  loc_103A969: var_110.FileName = 
  loc_103A987: var_EC = Right(var_DC, 3)
  loc_103A9C2: var_BC = "AVI"
  loc_103A9F0: If CBool((Ucase(var_EC) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_BC)) Then
  loc_103AA01:   var_AC = "Invalid Format"
  loc_103AA0C:   MsgBox(var_AC, &H40, var_CC, var_DC, var_EC)
  loc_103AA1F: Else
  loc_103AA36:   Set var_88 = Me.CDlg
  loc_103AA3C:   var_88.FileName = var_AC
  loc_103AA44:   var_CC = CVar(CStr(var_BC)) 'String
  loc_103AA4E:   Me.var_88.LoadPicture var_CC, var_190, var_1A0, var_110, 
  loc_103AA63:   Me.ImgMemPhoto.Picture = var_110
  loc_103AA82:   Me.CDlg.FileName = 
  loc_103AA8A:   var_9C = CStr()
  loc_103AA97:   Me.ImgMemPhoto.Tag = var_9C
  loc_103AAA9: End If
  loc_103AAA9: Exit Sub
  loc_103AAAA: ' Referenced from: 103A8E8
  loc_103AAB2: Set var_88 = Err()
  loc_103AAB8: Call 0.Method_arg_1C (var_1AC)
  loc_103AAC9: If (var_1AC <> 0) Then
  loc_103AAE2:   Set var_88 = Err()
  loc_103AAE8:   Call 0.Method_arg_2C (var_9C, 0, var_CC)
  loc_103AAF3:   MsgBox(CVar(var_9C), var_DC, var_EC, , )
  loc_103AB06: End If
  loc_103AB06: Exit Sub
End Sub

Private Sub ImgMemPhoto_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F15870
  'Data Table: 5ADD9C
  Dim var_88 As Variant
  loc_F1577C: Set var_88 = Me.TopCtrl1
  loc_F15782: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F1579B: If (CStr() = "Browse") Then
  loc_F1579E:   Exit Sub
  loc_F1579F: End If
  loc_F157BF: If (Me.ImgMemPhoto.Tag = vbNullString) Then
  loc_F157C2:   Exit Sub
  loc_F157C3: End If
  loc_F157C9: If (Button = 2) Then
  loc_F157EB:   Me.CmdImgDelete.Tag = Me.ImgMemPhoto.Name
  loc_F1581E:   Me.CmdImgDelete.Left = (Me.ImgMemPhoto.Left + X)
  loc_F1584E:   Me.CmdImgDelete.Top = (Me.ImgMemPhoto.Top + Y)
  loc_F15866:   Me.CmdImgDelete.Visible = True
  loc_F1586E: End If
  loc_F1586E: Exit Sub
End Sub

Private Sub ImgMemSign_DblClick() '103A340
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_88 As CommonDialog
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim var_BC As String
  loc_103A120: On Error Goto loc_103A2E2
  loc_103A127: Set var_88 = Me.TopCtrl1
  loc_103A12D: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103A146: If (CStr() = "Browse") Then
  loc_103A149:   Exit Sub
  loc_103A14A: End If
  loc_103A15A: Me.CDlg.Filter = "*.*"
  loc_103A172: Me.CDlg.Action = 1
  loc_103A184: Me.CDlg.FileName = 
  loc_103A18C: var_CC = CVar(CStr()) 'String
  loc_103A192: var_DC = Trim(var_CC)
  loc_103A19B: Set var_110 = Me.CDlg
  loc_103A1A1: var_110.FileName = 
  loc_103A1BF: var_EC = Right(var_DC, 3)
  loc_103A1FA: var_BC = "AVI"
  loc_103A228: If CBool((Ucase(var_EC) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_BC)) Then
  loc_103A239:   var_AC = "Invalid Format"
  loc_103A244:   MsgBox(var_AC, &H40, var_CC, var_DC, var_EC)
  loc_103A257: Else
  loc_103A26E:   Set var_88 = Me.CDlg
  loc_103A274:   var_88.FileName = var_AC
  loc_103A27C:   var_CC = CVar(CStr(var_BC)) 'String
  loc_103A286:   Me.var_88.LoadPicture var_CC, var_190, var_1A0, var_110, 
  loc_103A29B:   Me.ImgMemSign.Picture = var_110
  loc_103A2BA:   Me.CDlg.FileName = 
  loc_103A2C2:   var_9C = CStr()
  loc_103A2CF:   Me.ImgMemSign.Tag = var_9C
  loc_103A2E1: End If
  loc_103A2E1: Exit Sub
  loc_103A2E2: ' Referenced from: 103A120
  loc_103A2EA: Set var_88 = Err()
  loc_103A2F0: Call 0.Method_arg_1C (var_1AC)
  loc_103A301: If (var_1AC <> 0) Then
  loc_103A31A:   Set var_88 = Err()
  loc_103A320:   Call 0.Method_arg_2C (var_9C, 0, var_CC)
  loc_103A32B:   MsgBox(CVar(var_9C), var_DC, var_EC, , )
  loc_103A33E: End If
  loc_103A33E: Exit Sub
End Sub

Private Sub ImgMemSign_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F15FC0
  'Data Table: 5ADD9C
  Dim var_88 As Variant
  loc_F15ECC: Set var_88 = Me.TopCtrl1
  loc_F15ED2: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F15EEB: If (CStr() = "Browse") Then
  loc_F15EEE:   Exit Sub
  loc_F15EEF: End If
  loc_F15F0F: If (Me.ImgMemSign.Tag = vbNullString) Then
  loc_F15F12:   Exit Sub
  loc_F15F13: End If
  loc_F15F19: If (Button = 2) Then
  loc_F15F3B:   Me.CmdImgDelete.Tag = Me.ImgMemSign.Name
  loc_F15F6E:   Me.CmdImgDelete.Left = (Me.ImgMemSign.Left + X)
  loc_F15F9E:   Me.CmdImgDelete.Top = (Me.ImgMemSign.Top + Y)
  loc_F15FB6:   Me.CmdImgDelete.Visible = True
  loc_F15FBE: End If
  loc_F15FBE: Exit Sub
End Sub

Private Sub ImgFamilyMemPhoto_DblClick() '10895F8
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_88 As CommonDialog
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim var_BC As String
  Dim var_190 As Variant
  Dim var_DC As Variant
  loc_108937C: On Error Goto loc_1089598
  loc_1089383: Set var_88 = Me.TopCtrl1
  loc_1089389: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10893A2: If (CStr() = "Browse") Then
  loc_10893A5:   Exit Sub
  loc_10893A6: End If
  loc_10893B6: Me.CDlg.Filter = "*.*"
  loc_10893CE: Me.CDlg.Action = 1
  loc_10893E0: Me.CDlg.FileName = 
  loc_10893E8: var_CC = CVar(CStr()) 'String
  loc_10893EE: var_DC = Trim(var_CC)
  loc_10893F7: Set var_110 = Me.CDlg
  loc_10893FD: var_110.FileName = 
  loc_108941B: var_EC = Right(var_DC, 3)
  loc_1089456: var_BC = "AVI"
  loc_1089484: If CBool((Ucase(var_EC) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_BC)) Then
  loc_1089495:   var_AC = "Invalid Picture"
  loc_10894A0:   MsgBox(var_AC, &H40, var_CC, var_DC, var_EC)
  loc_10894B3: Else
  loc_10894CA:   Set var_88 = Me.CDlg
  loc_10894D0:   var_88.FileName = var_AC
  loc_10894E2:   Me.var_88.LoadPicture CVar(CStr(var_BC)), var_190, var_1A0, var_110, 
  loc_10894F7:   Me.ImgFamilyMemPhoto.Picture = var_110
  loc_1089516:   Me.CDlg.FileName = 
  loc_108951E:   var_9C = CStr()
  loc_108952B:   Me.ImgFamilyMemPhoto.Tag = var_9C
  loc_1089547:   var_CC = Me.FAGrid.Row
  loc_1089567:   Me.CDlg.FileName = CVar(CLng(&H1B))
  loc_108956F:   var_DC = CVar(CStr(CVar(CLng(var_CC)))) 'String
  loc_1089577:   Set var_1A4 = Me.FAGrid
  loc_108957D:   LateIdCallSt
  loc_1089597: End If
  loc_1089597: Exit Sub
  loc_1089598: ' Referenced from: 108937C
  loc_10895A0: Set var_88 = Err()
  loc_10895A6: Call 0.Method_arg_1C (var_1BC, var_1A4)
  loc_10895B7: If (var_1BC <> 0) Then
  loc_10895D0:   Set var_88 = Err()
  loc_10895D6:   Call 0.Method_arg_2C (var_9C, 0, var_CC)
  loc_10895E1:   MsgBox(CVar(var_9C), var_DC, var_EC, var_DC, )
  loc_10895F4: End If
  loc_10895F4: Exit Sub
End Sub

Private Sub ImgFamilyMemPhoto_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F60514
  'Data Table: 5ADD9C
  Dim var_88 As Variant
  loc_F603EC: Set var_88 = Me.TopCtrl1
  loc_F603F2: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F6040B: If (CStr() = "Browse") Then
  loc_F6040E:   Exit Sub
  loc_F6040F: End If
  loc_F6042F: If (Me.ImgFamilyMemPhoto.Tag = vbNullString) Then
  loc_F60432:   Exit Sub
  loc_F60433: End If
  loc_F60439: If (Button = 2) Then
  loc_F6045B:   Me.CmdImgDelete.Tag = Me.ImgFamilyMemPhoto.Name
  loc_F604A2:   Me.CmdImgDelete.Left = ((CDbl(Me.SSTab1.Left) + Me.ImgFamilyMemPhoto.Left) + X)
  loc_F604EB:   Me.CmdImgDelete.Top = ((CDbl(Me.SSTab1.Top) + Me.ImgFamilyMemPhoto.Top) + Y)
  loc_F60508:   Me.CmdImgDelete.Visible = True
  loc_F60510: End If
  loc_F60510: Exit Sub
End Sub

Private Sub ImgFamilyMemSign_DblClick() '1087870
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_88 As CommonDialog
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim var_BC As String
  Dim var_190 As Variant
  Dim var_DC As Variant
  loc_10875F4: On Error Goto loc_1087810
  loc_10875FB: Set var_88 = Me.TopCtrl1
  loc_1087601: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108761A: If (CStr() = "Browse") Then
  loc_108761D:   Exit Sub
  loc_108761E: End If
  loc_108762E: Me.CDlg.Filter = "*.*"
  loc_1087646: Me.CDlg.Action = 1
  loc_1087658: Me.CDlg.FileName = 
  loc_1087660: var_CC = CVar(CStr()) 'String
  loc_1087666: var_DC = Trim(var_CC)
  loc_108766F: Set var_110 = Me.CDlg
  loc_1087675: var_110.FileName = 
  loc_1087693: var_EC = Right(var_DC, 3)
  loc_10876CE: var_BC = "AVI"
  loc_10876FC: If CBool((Ucase(var_EC) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_BC)) Then
  loc_108770D:   var_AC = "Invalid Format"
  loc_1087718:   MsgBox(var_AC, &H40, var_CC, var_DC, var_EC)
  loc_108772B: Else
  loc_1087742:   Set var_88 = Me.CDlg
  loc_1087748:   var_88.FileName = var_AC
  loc_108775A:   Me.var_88.LoadPicture CVar(CStr(var_BC)), var_190, var_1A0, var_110, 
  loc_108776F:   Me.ImgFamilyMemSign.Picture = var_110
  loc_108778E:   Me.CDlg.FileName = 
  loc_1087796:   var_9C = CStr()
  loc_10877A3:   Me.ImgFamilyMemSign.Tag = var_9C
  loc_10877BF:   var_CC = Me.FAGrid.Row
  loc_10877DF:   Me.CDlg.FileName = CVar(CLng(&H1C))
  loc_10877E7:   var_DC = CVar(CStr(CVar(CLng(var_CC)))) 'String
  loc_10877EF:   Set var_1A4 = Me.FAGrid
  loc_10877F5:   LateIdCallSt
  loc_108780F: End If
  loc_108780F: Exit Sub
  loc_1087810: ' Referenced from: 10875F4
  loc_1087818: Set var_88 = Err()
  loc_108781E: Call 0.Method_arg_1C (var_1BC, var_1A4)
  loc_108782F: If (var_1BC <> 0) Then
  loc_1087848:   Set var_88 = Err()
  loc_108784E:   Call 0.Method_arg_2C (var_9C, 0, var_CC)
  loc_1087859:   MsgBox(CVar(var_9C), var_DC, var_EC, var_DC, )
  loc_108786C: End If
  loc_108786C: Exit Sub
End Sub

Private Sub ImgFamilyMemSign_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F60234
  'Data Table: 5ADD9C
  Dim var_88 As Variant
  loc_F6010C: Set var_88 = Me.TopCtrl1
  loc_F60112: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F6012B: If (CStr() = "Browse") Then
  loc_F6012E:   Exit Sub
  loc_F6012F: End If
  loc_F6014F: If (Me.ImgFamilyMemSign.Tag = vbNullString) Then
  loc_F60152:   Exit Sub
  loc_F60153: End If
  loc_F60159: If (Button = 2) Then
  loc_F6017B:   Me.CmdImgDelete.Tag = Me.ImgFamilyMemSign.Name
  loc_F601C2:   Me.CmdImgDelete.Left = ((CDbl(Me.SSTab1.Left) + Me.ImgFamilyMemSign.Left) + X)
  loc_F6020B:   Me.CmdImgDelete.Top = ((CDbl(Me.SSTab1.Top) + Me.ImgFamilyMemSign.Top) + Y)
  loc_F60228:   Me.CmdImgDelete.Visible = True
  loc_F60230: End If
  loc_F60230: Exit Sub
End Sub

Private Sub CmdVarifyCard_Click() 'E00578
  'Data Table: 5ADD9C
  loc_E0056F: var_86 = Varify_Member()
  loc_E00574: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAD904
  'Data Table: 5ADD9C
  loc_EAD88C: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_EAD88F:   Call DGUnderAc_UnknownEvent_9()
  loc_EAD894: End If
  loc_EAD8B0: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EAD8B3:   Call DGAcName_UnknownEvent_9()
  loc_EAD8B8: End If
  loc_EAD8D4: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EAD8D7:   Call DGCity_UnknownEvent_9()
  loc_EAD8DC: End If
  loc_EAD8F8: If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_EAD8FB:   Call DGMemType_UnknownEvent_9()
  loc_EAD900: End If
  loc_EAD900: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_9 'F394C4
  'Data Table: 5ADD9C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F393BB: Me.DGAcName.Visible = False
  loc_F393DA: If (Me.RecordCount > 0) Then
  loc_F39419:   Set var_B4 = Me.Txt
  loc_F3941F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F39427:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3945A:   var_B0 = Me.Fields.Item("Code")
  loc_F39479:   Set var_B4 = Me.Txt
  loc_F3947F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F39487:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3949D: End If
  loc_F394A8: Set var_A8 = Me.Txt
  loc_F394AE: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1))
  loc_F394B6: var_B0.SetFocus
  loc_F394C2: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'EA2310
  'Data Table: 5ADD9C
  Dim var_A8 As Variant
  loc_EA2290: Set var_88 = Me.DGAcName
  loc_EA22BA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA22C2: Set var_BC = Me.DGAcName
  loc_EA22FE: Proc_6_138_106D6F8(Me.DGAcName, global_168, CInt(1), Me.FGPoint)
  loc_EA230C: Exit Sub
  loc_EA230D: DGAcName.DispID_1B = var_A8
End Sub

Private Sub DGCity_UnknownEvent_9 'FEF298
  'Data Table: 5ADD9C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FEF0C4: On Error Goto loc_FEF233
  loc_FEF0D6: Me.DGCity.Visible = False
  loc_FEF0E7: var_AC = Me.RecordCount
  loc_FEF0F5: If (var_AC > 0) Then
  loc_FEF147:   Set var_CC = Me.TxtA
  loc_FEF14D:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(Me.DGCity.Tag)), var_D0)
  loc_FEF155:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEF1AD:   Set var_B4 = Me.DGCity
  loc_FEF1C4:   Set var_CC = Me.TxtA
  loc_FEF1CA:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FEF1D2:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FEF1F2: End If
  loc_FEF207: var_C8 = CStr(Me.DGCity.Tag)
  loc_FEF210: Set var_B0 = Me.TxtA
  loc_FEF216: Call 0.Method_DGCity_UnknownEvent_90 (CInt(var_C8))
  loc_FEF21E: var_B4.SetFocus
  loc_FEF232: Exit Sub
  loc_FEF233: ' Referenced from: FEF0C4
  loc_FEF23B: Set var_A8 = Err()
  loc_FEF241: Call 0.Method_arg_1C (var_AC)
  loc_FEF252: If (var_AC <> 0) Then
  loc_FEF25D:   Set var_A8 = Err()
  loc_FEF263:   Call 0.Method_arg_2C (var_C8)
  loc_FEF284:   MsgBox(CVar(var_C8), &H40, "Validation", var_F4, var_114)
  loc_FEF297: End If
  loc_FEF297: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'EA68BC
  'Data Table: 5ADD9C
  Dim var_A8 As Variant
  loc_EA683C: Set var_88 = Me.DGCity
  loc_EA6866: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA686E: Set var_BC = Me.DGCity
  loc_EA68AA: Proc_6_138_106D6F8(Me.DGCity, global_184, CInt(3), Me.FGPoint)
  loc_EA68B8: Exit Sub
  loc_EA68B9: DGCity.DispID_1B = var_A8
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1489D4C
  'Data Table: 5ADD9C
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_A0 As String
  loc_14890FA: Set var_88 = Me.Txt
  loc_1489100: Call 0.Method_Txt_GotFocus0 (Index)
  loc_148910E: Proc_183_28_E20B20(var_8C)
  loc_148911A: Call Proc_265_106_104DB04(var_8C)
  loc_1489122: var_92 = Index
  loc_148912D: If (var_92 = CInt(1)) Then
  loc_1489147:   If (Me.RecordCount > 0) Then
  loc_1489155:     Set var_8C = Me.FGPoint
  loc_148916D:     Proc_6_137_1193554(Me.DGAcName, global_168, Index)
  loc_148917B:   End If
  loc_14891C9:   Set var_88 = Me.Txt
  loc_14891CF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14891D7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14891EF:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_14891F2:     Exit Sub
  loc_14891F3:   End If
  loc_1489200:   Set var_88 = Me.Txt
  loc_1489206:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_148920E:   var_A0 = var_8C.Text
  loc_1489220:   var_B0 = "Name"
  loc_148925B:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1489264:     Me.MoveFirst
  loc_1489287:     Set var_88 = Me.Txt
  loc_148928D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1489295:     0 = var_8C.Text
  loc_14892AE:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_14892C3:   End If
  loc_14892C6: Else
  loc_14892CE:   If (var_92 = CInt(2)) Then
  loc_14892E8:     If (Me.RecordCount > 0) Then
  loc_14892F6:       Set var_8C = Me.FGPoint
  loc_148930E:       Proc_6_137_1193554(Me.DGUnderAc, global_180)
  loc_148931C:     End If
  loc_148936A:     Set var_88 = Me.Txt
  loc_1489370:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1489378:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1489390:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1489393:       Exit Sub
  loc_1489394:     End If
  loc_14893A1:     Set var_88 = Me.Txt
  loc_14893A7:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14893AF:     var_A0 = var_8C.Text
  loc_14893C1:     var_B0 = "Name"
  loc_14893FC:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1489405:       Me.MoveFirst
  loc_1489428:       Set var_88 = Me.Txt
  loc_148942E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1489436:       0 = var_8C.Text
  loc_148944F:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1489464:     End If
  loc_1489467:   Else
  loc_148946F:     If (var_92 = CInt(&H24)) Then
  loc_1489489:       If (Me.RecordCount > 0) Then
  loc_1489497:         Set var_8C = Me.FGPoint
  loc_14894AF:         Proc_6_137_1193554(Me.DGMemMeshAc, global_176)
  loc_14894BD:       End If
  loc_148950B:       Set var_88 = Me.Txt
  loc_1489511:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1489519:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1489531:       If (Index Or (var_A0 = vbNullString)) Then
  loc_1489534:         Exit Sub
  loc_1489535:       End If
  loc_1489542:       Set var_88 = Me.Txt
  loc_1489548:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1489550:       var_A0 = var_8C.Text
  loc_1489562:       var_B0 = "Name"
  loc_148959D:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14895A6:         Me.MoveFirst
  loc_14895C9:         Set var_88 = Me.Txt
  loc_14895CF:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14895D7:         0 = var_8C.Text
  loc_14895F0:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1489605:       End If
  loc_1489608:     Else
  loc_1489610:       If (var_92 = CInt(7)) Then
  loc_148962A:         If (Me.RecordCount > 0) Then
  loc_1489638:           Set var_8C = Me.FGPoint
  loc_1489650:           Proc_6_137_1193554(Me.DgMemType, global_188)
  loc_148965E:         End If
  loc_14896AC:         Set var_88 = Me.Txt
  loc_14896B2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14896BA:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14896D2:         If (Index Or (var_A0 = vbNullString)) Then
  loc_14896D5:           Exit Sub
  loc_14896D6:         End If
  loc_14896E3:         Set var_88 = Me.Txt
  loc_14896E9:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14896F1:         var_A0 = var_8C.Text
  loc_1489703:         var_B0 = "Name"
  loc_148973E:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1489747:           Me.MoveFirst
  loc_148976A:           Set var_88 = Me.Txt
  loc_1489770:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1489778:           0 = var_8C.Text
  loc_1489791:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_14897A6:         End If
  loc_14897A9:       Else
  loc_14897B1:         If (var_92 = CInt(3)) Then
  loc_14897C1:           ReDim var_F0(0 To 3)
  loc_14897D8:           var_F0(0) = "Mr."
  loc_14897E7:           var_F0(1) = "Mrs."
  loc_14897F6:           var_F0(2) = "Miss"
  loc_1489805:           var_F0(3) = "M/S"
  loc_148981C:           global_228 = Array(var_F0)
  loc_148985C:           Set global_244 = Proc_183_37_EFE3E8(Me.ListView, Me.Txt, Index)
  loc_1489870:         Else
  loc_1489878:           If (var_92 = CInt(&H22)) Then
  loc_1489888:             ReDim var_F0(0 To 1)
  loc_148989F:             var_F0(0) = "Detailed"
  loc_14898AE:             var_F0(1) = "Summerised"
  loc_1489905:             Set global_264 = Proc_183_37_EFE3E8(Me.ListView1, Me.Txt, Index, Array(var_F0), 2)
  loc_1489919:           Else
  loc_1489921:             If (var_92 = CInt(&H31)) Then
  loc_1489931:               ReDim var_F0(0 To 1)
  loc_1489948:               var_F0(0) = "Member"
  loc_1489957:               var_F0(1) = "Membership"
  loc_148996E:               global_248 = Array(var_F0)
  loc_14899AE:               Set global_264 = Proc_183_37_EFE3E8(Me.ListView1, Me.Txt, Index, global_248, 2)
  loc_14899C2:             Else
  loc_14899CA:               If (var_92 = CInt(3)) Then
  loc_14899CD:                 GoTo loc_1489D4B
  loc_14899D0:               End If
  loc_14899D8:               If Not (var_92 = CInt(8)) Then
  loc_14899E3:                 If Not (var_92 = CInt(&H1A)) Then
  loc_14899EE:                   If (var_92 = CInt(&H1B)) Then
  loc_14899F1:                   End If
  loc_14899F1:                 End If
  loc_14899FE:                 ReDim var_F0(0 To 1)
  loc_1489A15:                 var_F0(0) = "Yes"
  loc_1489A24:                 var_F0(1) = "No"
  loc_1489A7B:                 Set global_244 = Proc_183_37_EFE3E8(Me.ListView, Me.Txt, Index, Array(var_F0), 2, Array(var_F0))
  loc_1489A8F:               Else
  loc_1489A97:                 If (var_92 = CInt(&H13)) Then
  loc_1489AA7:                   ReDim var_F0(0 To 1)
  loc_1489ABE:                   var_F0(0) = "Male"
  loc_1489ACD:                   var_F0(1) = "Female"
  loc_1489B24:                   Set global_244 = Proc_183_37_EFE3E8(Me.ListView, Me.Txt, Index, Array(var_F0), 2, Array(var_F0))
  loc_1489B38:                 Else
  loc_1489B40:                   If (var_92 = CInt(&H16)) Then
  loc_1489B50:                     ReDim var_F0(0 To 1)
  loc_1489B67:                     var_F0(0) = "Married"
  loc_1489B76:                     var_F0(1) = "Single"
  loc_1489BCD:                     Set global_244 = Proc_183_37_EFE3E8(Me.ListView, Me.Txt, Index, Array(var_F0), 2, Array(var_F0))
  loc_1489BE1:                   Else
  loc_1489BE9:                     If (var_92 = CInt(&H2B)) Then
  loc_1489BF9:                       ReDim var_F0(0 To 5)
  loc_1489C10:                       var_F0(0) = "COMPANY ID"
  loc_1489C1F:                       var_F0(1) = "DRIVING LICENCE"
  loc_1489C2E:                       var_F0(2) = "GREEN CARD"
  loc_1489C3D:                       var_F0(3) = "UIDAI/AADHAR CARD"
  loc_1489C4C:                       var_F0(4) = "VOTER ID"
  loc_1489C5B:                       var_F0(5) = "NA"
  loc_1489C72:                       global_228 = Array(var_F0)
  loc_1489C98:                       Set var_8C = Me.Txt
  loc_1489CB2:                       Set global_244 = Proc_6_66_EFF8FC(Me.ListView, var_8C, Index, global_228, 6, global_228)
  loc_1489CC6:                     Else
  loc_1489CCE:                       If (var_92 = CInt(&H23)) Then
  loc_1489CD5:                         Set var_88 = Me.TopCtrl1
  loc_1489CDB:                         Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(global_248)
  loc_1489CF4:                         If (CStr(global_248) = "Browse") Then
  loc_1489D07:                           Set var_88 = Me.Txt
  loc_1489D0D:                           Call 0.Method_Txt_GotFocus0 (CInt(&H23), var_8C, &HC0FFFF)
  loc_1489D15:                           var_8C.BackColor = global_228
  loc_1489D31:                           Set var_88 = Me.Txt
  loc_1489D37:                           Call 0.Method_Txt_GotFocus0 (CInt(&H23), var_8C, &HFF)
  loc_1489D3F:                           var_8C.ForeColor = 4
  loc_1489D4B:                         End If
  loc_1489D4B:                       End If
  loc_1489D4B:                     End If
  loc_1489D4B:                   End If
  loc_1489D4B:                   ' Referenced from:               14899CD
  loc_1489D4B:                 End If
  loc_1489D4B:               End If
  loc_1489D4B:             End If
  loc_1489D4B:           End If
  loc_1489D4B:         End If
  loc_1489D4B:       End If
  loc_1489D4B:     End If
  loc_1489D4B:   End If
  loc_1489D4B: End If
  loc_1489D4B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '14E4CD4
  'Data Table: 5ADD9C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_8C As Variant
  Dim var_98 As DataGrid
  Dim var_10C As Variant
  Dim var_A4 As Frame
  Dim var_11C As Variant
  Dim var_B0 As DataGrid
  Dim var_140 As String
  loc_14E3F00: On Error Goto loc_14E4C6C
  loc_14E3F0D: If (CLng(Shift) = &H1B) Then
  loc_14E3F10:   Call Proc_265_106_104DB04()
  loc_14E3F15:   Exit Sub
  loc_14E3F16: End If
  loc_14E3F19: var_86 = KeyCode
  loc_14E3F24: If (var_86 = CInt(1)) Then
  loc_14E3F44:   Set var_98 = Me.FGPoint
  loc_14E3F72:   Proc_6_79_11ACE04(Me.DGAcName, Me.Txt, KeyCode, global_168, Shift)
  loc_14E3FDF:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14E4005:     Proc_6_138_106D6F8(Me.DGAcName, global_168, KeyCode, Me.FGPoint, 0)
  loc_14E4013:   End If
  loc_14E4016: Else
  loc_14E401E:   If (var_86 = CInt(2)) Then
  loc_14E4049:     Set var_98 = Nothing
  loc_14E4077:     Proc_6_69_134A198(Me.DGUnderAc, Me.Txt, KeyCode, global_180, Shift, 0, 1)
  loc_14E40E6:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14E40ED:       Set var_98 = Me.DGUnderAc
  loc_14E410C:       Proc_6_138_106D6F8(var_98, global_180, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_14E411A:     End If
  loc_14E411D:   Else
  loc_14E4125:     If (var_86 = CInt(&H24)) Then
  loc_14E417E:       Proc_6_69_134A198(Me.DGMemMeshAc, Me.Txt, KeyCode, global_176, Shift, 0, 1, Nothing)
  loc_14E41ED:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14E4213:         Proc_6_138_106D6F8(Me.DGMemMeshAc, global_176, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14E4221:       End If
  loc_14E4224:     Else
  loc_14E422C:       If (var_86 = CInt(7)) Then
  loc_14E423A:         Set var_A8 = Me.Txt
  loc_14E424C:         Set var_A0 = Me.FGPoint
  loc_14E4285:         Proc_6_69_134A198(Me.DgMemType, var_A8, KeyCode, global_188, Shift, 0, 1, Nothing)
  loc_14E42A4:         var_AC = Me.RecordCount
  loc_14E42F4:         If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14E4302:           Set var_90 = Me.FGPoint
  loc_14E431A:           Proc_6_138_106D6F8(Me.DgMemType, global_188, KeyCode, var_90, var_A0, 0)
  loc_14E4328:         End If
  loc_14E432B:       Else
  loc_14E4333:         If (var_86 = CInt(3)) Then
  loc_14E4358:           Set var_8C = Me.Txt
  loc_14E435E:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_14E4366:           1 = var_90.Left
  loc_14E4378:           Set var_98 = Me.Txt
  loc_14E437E:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E4386:           var_98 = var_A0.Top
  loc_14E4398:           Set var_A4 = Me.Txt
  loc_14E439E:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E43A6:           0 = var_A8.Height
  loc_14E43B8:           Set var_B0 = Me.Txt
  loc_14E43BE:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E43C6:           var_C0 = var_BC.Width
  loc_14E440E:           Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E4435:         Else
  loc_14E443D:           If (var_86 = CInt(&H1E)) Then
  loc_14E444A:             Set var_8C = Me.Txt
  loc_14E4450:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, CInt(var_AC), CInt((var_B4 + var_B8)))
  loc_14E446B:             Proc_183_21_FA163C(var_90, Shift, 2, 2)
  loc_14E447A:           Else
  loc_14E4482:             If (var_86 = CInt(&H28)) Then
  loc_14E448F:               Set var_8C = Me.Txt
  loc_14E4495:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, CInt(var_C0))
  loc_14E44B0:               Proc_183_21_FA163C(var_90, Shift, 8)
  loc_14E44BF:             Else
  loc_14E44C7:               If Not (var_86 = CInt(&H33)) Then
  loc_14E44D2:                 If (var_86 = CInt(&H34)) Then
  loc_14E44D5:                 End If
  loc_14E44DF:                 Set var_8C = Me.Txt
  loc_14E44E5:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, 0)
  loc_14E4500:                 Proc_183_21_FA163C(var_90, Shift, 3)
  loc_14E450F:               Else
  loc_14E4517:                 If Not (var_86 = CInt(8)) Then
  loc_14E4522:                   If Not (var_86 = CInt(&H1A)) Then
  loc_14E452D:                     If (var_86 = CInt(&H1B)) Then
  loc_14E4530:                     End If
  loc_14E4530:                   End If
  loc_14E4552:                   Set var_8C = Me.Txt
  loc_14E4558:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC)
  loc_14E4560:                   0 = var_90.Left
  loc_14E4572:                   Set var_98 = Me.Txt
  loc_14E4578:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E4580:                   1200 = var_A0.Top
  loc_14E4592:                   Set var_A4 = Me.Txt
  loc_14E4598:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_14E45A0:                   var_B8 = var_A8.Height
  loc_14E45B2:                   Set var_B0 = Me.Txt
  loc_14E45B8:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E45C0:                   var_C0 = var_BC.Width
  loc_14E4608:                   Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E462F:                 Else
  loc_14E4637:                   If (var_86 = CInt(&H13)) Then
  loc_14E465C:                     Set var_8C = Me.Txt
  loc_14E4662:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_14E466A:                     CInt((var_B4 + var_B8)) = var_90.Left
  loc_14E467C:                     Set var_98 = Me.Txt
  loc_14E4682:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E468A:                     CInt(var_C0) = var_A0.Top
  loc_14E469C:                     Set var_A4 = Me.Txt
  loc_14E46A2:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E46AA:                     600 = var_A8.Height
  loc_14E46BC:                     Set var_B0 = Me.Txt
  loc_14E46C2:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E46CA:                     var_C0 = var_BC.Width
  loc_14E4712:                     Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E4739:                   Else
  loc_14E4741:                     If (var_86 = CInt(&H16)) Then
  loc_14E4766:                       Set var_8C = Me.Txt
  loc_14E476C:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_14E4774:                       CInt((var_B4 + var_B8)) = var_90.Left
  loc_14E4786:                       Set var_98 = Me.Txt
  loc_14E478C:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E4794:                       CInt(var_C0) = var_A0.Top
  loc_14E47A6:                       Set var_A4 = Me.Txt
  loc_14E47AC:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E47B4:                       510 = var_A8.Height
  loc_14E47C6:                       Set var_B0 = Me.Txt
  loc_14E47CC:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E47D4:                       var_C0 = var_BC.Width
  loc_14E481C:                       Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E4843:                     Else
  loc_14E484B:                       If (var_86 = CInt(&H2B)) Then
  loc_14E4870:                         Set var_8C = Me.Txt
  loc_14E4876:                         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_14E487E:                         CInt((var_B4 + var_B8)) = var_90.Left
  loc_14E4890:                         Set var_98 = Me.Txt
  loc_14E4896:                         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E489E:                         CInt(var_C0) = var_A0.Top
  loc_14E48B0:                         Set var_A4 = Me.Txt
  loc_14E48B6:                         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E48BE:                         510 = var_A8.Height
  loc_14E48D0:                         Set var_B0 = Me.Txt
  loc_14E48D6:                         Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E48DE:                         var_C0 = var_BC.Width
  loc_14E4926:                         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E494D:                       Else
  loc_14E4955:                         If Not (var_86 = CInt(&H22)) Then
  loc_14E4960:                           If (var_86 = CInt(&H31)) Then
  loc_14E4963:                           End If
  loc_14E4985:                           Set var_8C = Me.Txt
  loc_14E498B:                           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_14E4993:                           CInt((var_B4 + var_B8)) = var_90.Left
  loc_14E49A5:                           Set var_98 = Me.Txt
  loc_14E49AB:                           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E49B3:                           CInt(var_C0) = var_A0.Top
  loc_14E49C5:                           Set var_A4 = Me.Txt
  loc_14E49CB:                           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E49D3:                           1560 = var_A8.Height
  loc_14E49E5:                           Set var_B0 = Me.Txt
  loc_14E49EB:                           Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E49F3:                           var_C0 = var_BC.Width
  loc_14E4A3B:                           Proc_183_36_114886C(Me.frmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E4A5F:                         End If
  loc_14E4A5F:                       End If
  loc_14E4A5F:                     End If
  loc_14E4A5F:                   End If
  loc_14E4A5F:                 End If
  loc_14E4A5F:               End If
  loc_14E4A5F:             End If
  loc_14E4A5F:           End If
  loc_14E4A5F:         End If
  loc_14E4A5F:       End If
  loc_14E4A5F:     End If
  loc_14E4A5F:   End If
  loc_14E4A5F: End If
  loc_14E4A96: var_10C = Me.DGCity.Visible
  loc_14E4ADF: var_11C = Me.DgMemType.Visible
  loc_14E4B57: If (((((((((CBool(Me.DGUnderAc.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) And (CBool(var_10C) = 0)) And (Me.FrmList.Visible = 0)) And (Me.frmList1.Visible = 0)) And (CBool(var_11C) = 0)) And (CBool(Me.DGUnderAc.Visible) = 0)) And (CBool(Me.DGMemMeshAc.Visible) = 0)) And (Me.Frame1.Visible = 0)) Then
  loc_14E4B6F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14E4B78:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_AC), CInt((var_B4 + var_B8)))
  loc_14E4B7D:   End If
  loc_14E4B81:   Set var_8C = Me.TopCtrl1
  loc_14E4B87:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(var_C0))
  loc_14E4BA0:   If (CStr(510) = "Add") Then
  loc_14E4BB8:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_14E4BC1:       Proc_6_76_E52838(Shift, arg_14)
  loc_14E4BC6:     End If
  loc_14E4BC9:   Else
  loc_14E4BCD:     Set var_8C = Me.TopCtrl1
  loc_14E4BD3:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_14E4BDB:     var_140 = CStr()
  loc_14E4BEC:     If (var_140 = "Edit") Then
  loc_14E4C04:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_14E4C0D:         Proc_6_76_E52838(Shift)
  loc_14E4C12:       End If
  loc_14E4C12:     End If
  loc_14E4C12:   End If
  loc_14E4C2D:   If (Me.Frame1.Visible = &HFF) Then
  loc_14E4C45:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14E4C4E:       Proc_6_75_E527CC(Shift, arg_14)
  loc_14E4C53:     End If
  loc_14E4C5D:     If (CLng(Shift) = &H26) Then
  loc_14E4C66:       Proc_6_76_E52838(Shift, arg_14)
  loc_14E4C6B:     End If
  loc_14E4C6B:   End If
  loc_14E4C6B: End If
  loc_14E4C6B: Exit Sub
  loc_14E4C6C: ' Referenced from: 14E3F00
  loc_14E4C74: Set var_8C = Err()
  loc_14E4C7A: Call 0.Method_arg_1C (var_AC)
  loc_14E4C8B: If (var_AC <> 0) Then
  loc_14E4C96:   Set var_8C = Err()
  loc_14E4C9C:   Call 0.Method_arg_2C (var_140)
  loc_14E4CBD:   MsgBox(CVar(var_140), &H40, "Validation", var_10C, var_11C)
  loc_14E4CD0: End If
  loc_14E4CD0: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10FF020
  'Data Table: 5ADD9C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_10FECF0: On Error Goto loc_10FEFBA
  loc_10FECF9: Proc_6_133_E7EF78(var_94)
  loc_10FED0E: If (CInt(var_94) = &H27) Then
  loc_10FED13:   arg_10 = 0
  loc_10FED16:   Exit Sub
  loc_10FED17: End If
  loc_10FED1A: var_96 = KeyAscii
  loc_10FED25: If (var_96 = CInt(2)) Then
  loc_10FED44:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_10FED71:     Proc_183_41_1459C78(Me.Txt, KeyAscii, global_180, arg_10, "Name")
  loc_10FEDA3:     Proc_6_138_106D6F8(Me.DGUnderAc, global_180, KeyAscii, Me.FGPoint, 0)
  loc_10FEDB1:   End If
  loc_10FEDB4: Else
  loc_10FEDBC:   If (var_96 = CInt(&H24)) Then
  loc_10FEDDB:     If (CBool(Me.DGMemMeshAc.Visible) = &HFF) Then
  loc_10FEE08:       Proc_183_41_1459C78(Me.Txt, KeyAscii, global_176, arg_10, "Name")
  loc_10FEE3A:       Proc_6_138_106D6F8(Me.DGMemMeshAc, global_176, KeyAscii, Me.FGPoint, 0)
  loc_10FEE48:     End If
  loc_10FEE4B:   Else
  loc_10FEE53:     If (var_96 = CInt(7)) Then
  loc_10FEE72:       If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_10FEE84:         var_A0 = "Name"
  loc_10FEE9F:         Proc_183_41_1459C78(Me.Txt, KeyAscii, global_188, arg_10, var_A0)
  loc_10FEEB9:         Set var_A8 = Me.FGPoint
  loc_10FEED1:         Proc_6_138_106D6F8(Me.DgMemType, global_188, KeyAscii, var_A8, 0)
  loc_10FEEDF:       End If
  loc_10FEEE2:     Else
  loc_10FEEEA:       If (var_96 = CInt(&H1E)) Then
  loc_10FEEF7:         Set var_9C = Me.Txt
  loc_10FEEFD:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_10FEF18:         Proc_183_22_129AEBC(var_A8, arg_10, 2, 2)
  loc_10FEF27:       Else
  loc_10FEF2F:         If (var_96 = CInt(&H28)) Then
  loc_10FEF3C:           Set var_9C = Me.Txt
  loc_10FEF42:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, arg_10)
  loc_10FEF5D:           Proc_183_22_129AEBC(var_A8, arg_10, 8)
  loc_10FEF6C:         Else
  loc_10FEF74:           If Not (var_96 = CInt(&H33)) Then
  loc_10FEF7F:             If (var_96 = CInt(&H34)) Then
  loc_10FEF82:             End If
  loc_10FEF8C:             Set var_9C = Me.Txt
  loc_10FEF92:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_10FEFAD:             Proc_183_22_129AEBC(var_A8, arg_10, 3)
  loc_10FEFB9:           End If
  loc_10FEFB9:         End If
  loc_10FEFB9:       End If
  loc_10FEFB9:     End If
  loc_10FEFB9:   End If
  loc_10FEFB9: End If
  loc_10FEFB9: Exit Sub
  loc_10FEFBA: ' Referenced from: 10FECF0
  loc_10FEFC2: Set var_9C = Err()
  loc_10FEFC8: Call 0.Method_arg_1C (var_B4, 0)
  loc_10FEFD9: If (var_B4 <> 0) Then
  loc_10FEFE4:   Set var_9C = Err()
  loc_10FEFEA:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_10FF00B:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_10FF01E: End If
  loc_10FF01E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '11044BC
  'Data Table: 5ADD9C
  Dim var_86 As Integer
  Dim var_8C As Variant
  loc_1104188: On Error Goto loc_1104455
  loc_110418E: var_86 = KeyCode
  loc_1104199: If (var_86 = CInt(1)) Then
  loc_11041B8:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_11041C5:     var_A0 = "Name"
  loc_11041E0:     Proc_183_32_FE7F70(Me.Txt, KeyCode, global_168)
  loc_1104212:     Proc_6_138_106D6F8(Me.DGAcName, global_168, KeyCode, Me.FGPoint)
  loc_1104220:   End If
  loc_1104223: Else
  loc_110422B:   If (var_86 = CInt(3)) Then
  loc_1104249:     If (Me.FrmList.Visible = &HFF) Then
  loc_1104278:       Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_1104288:     End If
  loc_110428B:   Else
  loc_1104293:     If Not (var_86 = CInt(8)) Then
  loc_110429E:       If Not (var_86 = CInt(&H1A)) Then
  loc_11042A9:         If (var_86 = CInt(&H1B)) Then
  loc_11042AC:         End If
  loc_11042AC:       End If
  loc_11042C7:       If (Me.FrmList.Visible = &HFF) Then
  loc_11042F6:         Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode, Shift, global_244)
  loc_1104306:       End If
  loc_1104309:     Else
  loc_1104311:       If Not (var_86 = CInt(&H13)) Then
  loc_110431C:         If (var_86 = CInt(&H16)) Then
  loc_110431F:         End If
  loc_110433A:         If (Me.FrmList.Visible = &HFF) Then
  loc_1104369:           Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode, Shift, global_244)
  loc_1104379:         End If
  loc_110437C:       Else
  loc_1104384:         If (var_86 = CInt(&H2B)) Then
  loc_11043A2:           If (Me.FrmList.Visible = &HFF) Then
  loc_11043D1:             Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_244)
  loc_11043E1:           End If
  loc_11043E4:         Else
  loc_11043EC:           If Not (var_86 = CInt(&H22)) Then
  loc_11043F7:             If (var_86 = CInt(&H31)) Then
  loc_11043FA:             End If
  loc_1104415:             If (Me.frmList1.Visible = &HFF) Then
  loc_1104444:               Proc_183_35_F29A04(Me.ListView1, Me.Txt, KeyCode, Shift, global_244)
  loc_1104454:             End If
  loc_1104454:           End If
  loc_1104454:         End If
  loc_1104454:       End If
  loc_1104454:     End If
  loc_1104454:   End If
  loc_1104454: End If
  loc_1104454: Exit Sub
  loc_1104455: ' Referenced from: 1104188
  loc_110445D: Set var_8C = Err()
  loc_1104463: Call 0.Method_arg_1C (var_B4, global_244, Shift)
  loc_1104474: If (var_B4 <> 0) Then
  loc_110447F:   Set var_8C = Err()
  loc_1104485:   Call 0.Method_arg_2C (var_A0, var_A0)
  loc_11044A6:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_11044B9: End If
  loc_11044B9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'F13098
  'Data Table: 5ADD9C
  Dim var_8C As TextBox
  loc_F12FBA: Set var_88 = Me.Txt
  loc_F12FC0: Call 0.Method_Txt_LostFocus0 (CInt(5), var_8C)
  loc_F12FE0: If ((Index = CInt(5)) And (var_8C.Text = vbNullString)) Then
  loc_F12FEE:   Set var_88 = Me.Txt
  loc_F12FF4:   Call 0.Method_Txt_LostFocus0 (CInt(5))
  loc_F12FFC:   var_8C.SetFocus
  loc_F1300B: Else
  loc_F13013:   If (Index = CInt(&H23)) Then
  loc_F13026:     Set var_88 = Me.Txt
  loc_F1302C:     Call 0.Method_Txt_LostFocus0 (CInt(&H23), var_8C)
  loc_F13034:     var_8C.BackColor = &HC0FFFF
  loc_F13050:     Set var_88 = Me.Txt
  loc_F13056:     Call 0.Method_Txt_LostFocus0 (CInt(&H23), var_8C)
  loc_F1305E:     var_8C.ForeColor = &HFF
  loc_F1306D:   Else
  loc_F13077:     Set var_88 = Me.Txt
  loc_F1307D:     Call 0.Method_Txt_LostFocus0 (Index, var_8C)
  loc_F1308B:     Proc_183_27_E22608(var_8C)
  loc_F13097:   End If
  loc_F13097: End If
  loc_F13097: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '157A3E8
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_9E As Integer
  Dim var_A4 As Variant
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim arg_10 As Integer
  Dim var_B0 As Variant
  Dim var_C0 As Integer
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_A8 As Variant
  Dim Me As Variant
  Dim var_D4 As Variant
  Dim var_B8 As Recordset15
  Dim var_134 As Variant
  loc_15792C8: Set var_88 = Me.TopCtrl1
  loc_15792CE: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15792E7: If (CStr() = "Browse") Then
  loc_15792ED:   var_9E = Cancel
  loc_15792F8:   If Not (var_9E = CInt(&H22)) Then
  loc_1579303:     If (var_9E = CInt(&H31)) Then
  loc_1579306:     End If
  loc_1579313:     Set var_88 = Me.Txt
  loc_1579319:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579338:     If (var_A4.Text <> vbNullString) Then
  loc_1579353:       Set var_A4 = Me.ListView1.SelectedItem
  loc_157936B:       Set var_A8 = Me.Txt
  loc_1579371:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_1579379:       var_AC.Text = var_A4.Text
  loc_157938F:     End If
  loc_1579392:   Else
  loc_157939A:     If (var_9E = CInt(&H20)) Then
  loc_15793AB:       Set var_88 = Me.Txt
  loc_15793B1:       Call 0.Method_Txt_Validate0 (CInt(&H20), var_A4)
  loc_15793D0:       If (var_A4.Text <> vbNullString) Then
  loc_15793DE:         Set var_88 = Me.Txt
  loc_15793E4:         Call 0.Method_Txt_Validate0 (CInt(&H20), var_A4)
  loc_15793F7:         Set var_A8 = Me.Txt
  loc_15793FD:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_AC)
  loc_1579418:         Set var_B0 = var_A4
  loc_1579438:         If (Proc_6_27_EA565C(var_B0, var_AC.Text & " From") = 0) Then
  loc_157943D:           arg_10 = &HFF
  loc_1579440:           Exit Sub
  loc_1579441:         End If
  loc_1579444:       Else
  loc_1579446:         arg_10 = &HFF
  loc_1579449:       End If
  loc_1579454:       Set var_88 = Me.Txt
  loc_157945A:       Call 0.Method_Txt_Validate0 (CInt(&H20), var_A4, arg_10)
  loc_157947B:       Set var_AC = Me.Txt
  loc_1579481:       Call 0.Method_Txt_Validate0 (CInt(&H20), var_B0)
  loc_1579489:       var_B0.Text = Proc_6_33_1512840(var_A4, arg_10)
  loc_157949F:     Else
  loc_15794A7:       If (var_9E = CInt(&H21)) Then
  loc_15794B8:         Set var_88 = Me.Txt
  loc_15794BE:         Call 0.Method_Txt_Validate0 (CInt(&H21), var_A4)
  loc_15794DD:         If (var_A4.Text <> vbNullString) Then
  loc_15794EB:           Set var_88 = Me.Txt
  loc_15794F1:           Call 0.Method_Txt_Validate0 (CInt(&H21), var_A4)
  loc_1579504:           Set var_A8 = Me.Txt
  loc_157950A:           Call 0.Method_Txt_Validate0 (CInt(&H22), var_AC)
  loc_1579525:           Set var_B0 = var_A4
  loc_1579545:           If (Proc_183_19_E8DAFC(var_B0, var_AC.Text & " From") = 0) Then
  loc_157954A:             arg_10 = &HFF
  loc_157954D:             Exit Sub
  loc_157954E:           End If
  loc_1579551:         Else
  loc_1579553:           arg_10 = &HFF
  loc_1579556:         End If
  loc_1579561:         Set var_88 = Me.Txt
  loc_1579567:         Call 0.Method_Txt_Validate0 (CInt(&H21), var_A4, arg_10)
  loc_1579588:         Set var_AC = Me.Txt
  loc_157958E:         Call 0.Method_Txt_Validate0 (CInt(&H21), var_B0)
  loc_1579596:         var_B0.Text = Proc_6_33_1512840(var_A4, arg_10)
  loc_15795AC:       Else
  loc_15795B4:         If (var_9E = CInt(&H32)) Then
  loc_15795C5:           Set var_88 = Me.Txt
  loc_15795CB:           Call 0.Method_Txt_Validate0 (CInt(&H32), var_A4)
  loc_15795EA:           If (var_A4.Text <> vbNullString) Then
  loc_15795F8:             Set var_88 = Me.Txt
  loc_15795FE:             Call 0.Method_Txt_Validate0 (CInt(&H32), var_A4)
  loc_1579611:             Set var_A8 = Me.Txt
  loc_1579617:             Call 0.Method_Txt_Validate0 (CInt(&H22), var_AC)
  loc_1579632:             Set var_B0 = var_A4
  loc_1579652:             If (Proc_183_19_E8DAFC(var_B0, var_AC.Text & vbNullString) = 0) Then
  loc_1579657:               arg_10 = &HFF
  loc_157965A:               Exit Sub
  loc_157965B:             End If
  loc_157965E:           Else
  loc_1579660:             arg_10 = &HFF
  loc_1579663:           End If
  loc_157966E:           Set var_88 = Me.Txt
  loc_1579674:           Call 0.Method_Txt_Validate0 (CInt(&H32), var_A4, arg_10)
  loc_1579695:           Set var_AC = Me.Txt
  loc_157969B:           Call 0.Method_Txt_Validate0 (CInt(&H32), var_B0)
  loc_15796A3:           var_B0.Text = Proc_6_33_1512840(var_A4, arg_10)
  loc_15796B6:         End If
  loc_15796B6:       End If
  loc_15796B6:     End If
  loc_15796B6:   End If
  loc_15796B6:   Exit Sub
  loc_15796B7: End If
  loc_15796BA: var_C0 = Cancel
  loc_15796C5: If (var_C0 = CInt(1)) Then
  loc_15796CB:   Call Proc_265_97_10F7CDC(var_C2, var_C0)
  loc_15796D6:   If (var_C2 = &HFF) Then
  loc_15796DB:     arg_10 = &HFF
  loc_15796DE:     Exit Sub
  loc_15796DF:   End If
  loc_15796E2: Else
  loc_15796EA:   If (var_C0 = CInt(6)) Then
  loc_15796F0:     Call Proc_265_98_1082EA4(var_C2, arg_10)
  loc_15796FB:     If (var_C2 = &HFF) Then
  loc_1579700:       arg_10 = &HFF
  loc_1579703:       Exit Sub
  loc_1579704:     End If
  loc_1579707:   Else
  loc_157970F:     If (var_C0 = CInt(5)) Then
  loc_157971D:       Set var_88 = Me.Txt
  loc_1579723:       Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_1579734:       Set var_A8 = var_A4
  loc_157974C:       If (Proc_183_19_E8DAFC(var_A8, "Application No.") = 0) Then
  loc_157974F:         Exit Sub
  loc_1579750:       End If
  loc_157977B:       Set var_88 = Me.Txt
  loc_1579781:       Call 0.Method_Txt_Validate0 (Cancel, var_A4, "Select Count(*) from SubGroup where AppNo='", var_134, -1, var_A8)
  loc_1579798:       var_F4 = var_AC & Trim(CVar(var_A4)) 
  loc_15797A1:       var_114 = var_F4 & "'" 
  loc_15797AF:       unk_5ADE06.Execute CStr(var_114), 0, var_B0
  loc_15797BF:       var_9E = var_AC.Item(arg_10)
  loc_15797C7:        = var_B0.Value
  loc_15797F4:       If (var_A8.Fields > 0) Then
  loc_1579805:         Set var_88 = Me.Txt
  loc_157980B:         Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_1579813:         var_A4.Text = vbNullString
  loc_1579840:         MsgBox("Application No. Already Exists", &H40, "Validation", var_F4, var_114)
  loc_1579850:       End If
  loc_1579853:     Else
  loc_157985B:       If (var_C0 = CInt(2)) Then
  loc_157986B:         Set var_88 = Me.Txt
  loc_1579871:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579890:         If (var_A4.Text = vbNullString) Then
  loc_1579893:           Exit Sub
  loc_1579894:         End If
  loc_15798E2:         Set var_88 = Me.Txt
  loc_15798E8:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579908:         If (((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Or (var_A4.Text <> vbNullString)) Then
  loc_157994A:           var_D4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value 
  loc_1579961:           unk_5ADE06.Execute CStr(var_D4 & "'"), var_114, -1
  loc_157996C:           Set var_B8 = var_A8
  loc_157999A:           If (var_B8.RecordCount > 0) Then
  loc_15799A4:             global_156 = CByte(1)
  loc_15799F6:             var_AC = var_B8.Fields.Item("GroupNature")
  loc_1579A28:             If CBool((var_B8.Fields.Item("GroupNature").Value = "A") Or (var_AC.Value = "L")) Then
  loc_1579A32:               global_156 = CByte(1)
  loc_1579A39:             Else
  loc_1579A40:               global_156 = CByte(0)
  loc_1579A44:               ' Referenced from:         1579B5D
  loc_1579A44:             End If
  loc_1579A53:             If Not(var_B8.EOF) Then
  loc_1579A92:               If (var_B8.Fields.Item("AliasYN").Value = "N") Then
  loc_1579AD2:                 Set var_A8 = Me.Txt
  loc_1579AD8:                 Call 0.Method_Txt_Validate0 (CInt(2), var_AC, CStr(Trim(CVar(var_B8.Fields.Item("GroupName")))), global_156)
  loc_1579AE0:                 var_AC.Text = global_156
  loc_1579B12:                 var_A4 = var_B8.Fields.Item("GroupCode")
  loc_1579B23:                 var_9C = CStr(var_A4.Value)
  loc_1579B31:                 Set var_A8 = Me.Txt
  loc_1579B37:                 Call 0.Method_Txt_Validate0 (CInt(2), var_AC, var_9C)
  loc_1579B3F:                 var_AC.Tag = global_156
  loc_1579B55:               End If
  loc_1579B58:               var_B8.MoveNext
  loc_1579B5D:               GoTo loc_1579A44
  loc_1579B60:             End If
  loc_1579B60:           End If
  loc_1579B60:         End If
  loc_1579B63:       Else
  loc_1579B6B:         If (var_C0 = CInt(&H24)) Then
  loc_1579B78:           Set var_88 = Me.Txt
  loc_1579B7E:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579BA7:           If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_1579BB7:             Set var_88 = Me.Txt
  loc_1579BBD:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579BC5:             var_A4.Tag = vbNullString
  loc_1579BD1:           End If
  loc_1579C12:           var_104 = ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF)))
  loc_1579C23:           Set var_88 = Me.Txt
  loc_1579C29:           Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_9C)
  loc_1579C31:           var_104 = var_A4.Text
  loc_1579C67:           If CBool(var_A8 Or (Trim(CVar(var_9C)) = vbNullString)) Then
  loc_1579C6A:             Exit Sub
  loc_1579C6B:           End If
  loc_1579CA3:           Set var_A8 = Me.Txt
  loc_1579CA9:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_1579CB1:           var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_1579CDF:           var_A4 = Me.Fields.Item("Code")
  loc_1579CFD:           Set var_A8 = Me.Txt
  loc_1579D03:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_1579D0B:           var_AC.Tag = Proc_6_38_E68A98(CVar(var_A4))
  loc_1579D22:         Else
  loc_1579D2A:           If Not (var_C0 = CInt(&H14)) Then
  loc_1579D35:             If (var_C0 = CInt(&H18)) Then
  loc_1579D38:             End If
  loc_1579D42:             Set var_88 = Me.Txt
  loc_1579D48:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_1579D68:             Set var_AC = Me.Txt
  loc_1579D6E:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_1579D76:             var_B0.Text = Proc_6_33_1512840(var_A4)
  loc_1579D8C:           Else
  loc_1579D94:             If (var_C0 = CInt(&H1C)) Then
  loc_1579DA1:               Set var_88 = Me.Txt
  loc_1579DA7:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579DC7:               Set var_AC = Me.Txt
  loc_1579DCD:               Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_1579DD5:               var_B0.Text = Proc_6_33_1512840(var_A4)
  loc_1579DEB:             Else
  loc_1579DF3:               If Not (var_C0 = CInt(&H2D)) Then
  loc_1579DFE:                 If (var_C0 = CInt(&H30)) Then
  loc_1579E01:                 End If
  loc_1579E0B:                 Set var_88 = Me.Txt
  loc_1579E11:                 Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579E31:                 Set var_AC = Me.Txt
  loc_1579E37:                 Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_1579E3F:                 var_B0.Text = Proc_6_33_1512840(var_A4)
  loc_1579E55:               Else
  loc_1579E5D:                 If (var_C0 = CInt(3)) Then
  loc_1579E6D:                   Set var_88 = Me.Txt
  loc_1579E73:                   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579E92:                   If (var_A4.Text <> vbNullString) Then
  loc_1579EAD:                     Set var_A4 = Me.ListView.SelectedItem
  loc_1579EC5:                     Set var_A8 = Me.Txt
  loc_1579ECB:                     Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_1579ED3:                     var_AC.Text = var_A4.Text
  loc_1579EE9:                   End If
  loc_1579EEC:                 Else
  loc_1579EF4:                   If Not (var_C0 = CInt(8)) Then
  loc_1579EFF:                     If (var_C0 = CInt(&H1A)) Then
  loc_1579F02:                     End If
  loc_1579F0F:                     Set var_88 = Me.Txt
  loc_1579F15:                     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579F34:                     If (var_A4.Text <> vbNullString) Then
  loc_1579F4F:                       Set var_A4 = Me.ListView.SelectedItem
  loc_1579F67:                       Set var_A8 = Me.Txt
  loc_1579F6D:                       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_1579F75:                       var_AC.Text = var_A4.Text
  loc_1579F8B:                     End If
  loc_1579F8E:                   Else
  loc_1579F96:                     If (var_C0 = CInt(&H1B)) Then
  loc_1579FA6:                       Set var_88 = Me.Txt
  loc_1579FAC:                       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1579FCB:                       If (var_A4.Text <> vbNullString) Then
  loc_1579FE6:                         Set var_A4 = Me.ListView.SelectedItem
  loc_1579FFE:                         Set var_A8 = Me.Txt
  loc_157A004:                         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157A00C:                         var_AC.Text = var_A4.Text
  loc_157A022:                       End If
  loc_157A030:                       Set var_88 = Me.Txt
  loc_157A036:                       Call 0.Method_Txt_Validate0 (CInt(&H1B), var_A4)
  loc_157A055:                       If (var_A4.Text = "Yes") Then
  loc_157A064:                         Me.FrBlackListed.Visible = True
  loc_157A077:                         Set var_88 = Me.Txt
  loc_157A07D:                         Call 0.Method_Txt_Validate0 (CInt(&H1D), var_A4)
  loc_157A085:                         var_A4.SetFocus
  loc_157A094:                       Else
  loc_157A0A0:                         Me.FrBlackListed.Visible = False
  loc_157A0A8:                       End If
  loc_157A0AB:                     Else
  loc_157A0B3:                       If Not (var_C0 = CInt(&H13)) Then
  loc_157A0BE:                         If (var_C0 = CInt(&H16)) Then
  loc_157A0C1:                         End If
  loc_157A0CE:                         Set var_88 = Me.Txt
  loc_157A0D4:                         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A0F3:                         If (var_A4.Text <> vbNullString) Then
  loc_157A10E:                           Set var_A4 = Me.ListView.SelectedItem
  loc_157A114:                           var_9C = var_A4.Text
  loc_157A126:                           Set var_A8 = Me.Txt
  loc_157A12C:                           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157A134:                           var_AC.Text = var_9C
  loc_157A14A:                         End If
  loc_157A14D:                       Else
  loc_157A155:                         If (var_C0 = CInt(7)) Then
  loc_157A162:                           Set var_88 = Me.Txt
  loc_157A168:                           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A191:                           If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_157A1A1:                             Set var_88 = Me.Txt
  loc_157A1A7:                             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A1AF:                             var_A4.Tag = vbNullString
  loc_157A1BB:                           End If
  loc_157A1FC:                           var_104 = ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF)))
  loc_157A20D:                           Set var_88 = Me.Txt
  loc_157A213:                           Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_9C)
  loc_157A21B:                           var_104 = var_A4.Text
  loc_157A251:                           If CBool(var_A4 Or (Trim(CVar(var_9C)) = vbNullString)) Then
  loc_157A261:                             Set var_88 = Me.Txt
  loc_157A267:                             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A26F:                             var_A4.Text = vbNullString
  loc_157A288:                             Set var_88 = Me.Txt
  loc_157A28E:                             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A296:                             var_A4.Tag = vbNullString
  loc_157A2A8:                             global_68 = vbNullString
  loc_157A2B8:                             Me.LblMessAc.Visible = False
  loc_157A2CD:                             Set var_88 = Me.Txt
  loc_157A2D3:                             Call 0.Method_Txt_Validate0 (CInt(&H24), var_A4)
  loc_157A2DB:                             var_A4.Visible = False
  loc_157A2EA:                           Else
  loc_157A322:                             Set var_A8 = Me.Txt
  loc_157A328:                             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157A330:                             var_AC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_157A37C:                             Set var_A8 = Me.Txt
  loc_157A382:                             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157A38A:                             var_AC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_157A3CF:                             global_68 = Proc_6_38_E68A98(CVar(Me.Fields.Item("Corporate")))
  loc_157A3DC:                           End If
  loc_157A3DC:                         End If
  loc_157A3DC:                       End If
  loc_157A3DC:                     End If
  loc_157A3DC:                   End If
  loc_157A3DC:                 End If
  loc_157A3DC:               End If
  loc_157A3DC:             End If
  loc_157A3DC:           End If
  loc_157A3DC:         End If
  loc_157A3DC:       End If
  loc_157A3DC:     End If
  loc_157A3DC:   End If
  loc_157A3DC: End If
  loc_157A3E1: Set var_B8 = Nothing
  loc_157A3E4: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'FAA860
  'Data Table: 5ADD9C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FAA6E0: On Error Goto loc_FAA7FA
  loc_FAA6F2: Me.DGUnderAc.Visible = False
  loc_FAA703: var_AC = Me.RecordCount
  loc_FAA711: If (var_AC > 0) Then
  loc_FAA750:   Set var_B4 = Me.Txt
  loc_FAA756:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FAA75E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FAA791:   var_B0 = Me.Fields.Item("Code")
  loc_FAA7A2:   var_CC = CStr(var_B0.Value)
  loc_FAA7B0:   Set var_B4 = Me.Txt
  loc_FAA7B6:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FAA7BE:   var_B8.Tag = var_CC
  loc_FAA7D4: End If
  loc_FAA7DF: Set var_A8 = Me.Txt
  loc_FAA7E5: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2))
  loc_FAA7ED: var_B0.SetFocus
  loc_FAA7F9: Exit Sub
  loc_FAA7FA: ' Referenced from: FAA6E0
  loc_FAA802: Set var_A8 = Err()
  loc_FAA808: Call 0.Method_arg_1C (var_AC)
  loc_FAA819: If (var_AC <> 0) Then
  loc_FAA824:   Set var_A8 = Err()
  loc_FAA82A:   Call 0.Method_arg_2C (var_CC)
  loc_FAA84B:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FAA85E: End If
  loc_FAA85E: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_1F 'EA6360
  'Data Table: 5ADD9C
  Dim var_A8 As Variant
  loc_EA62E0: Set var_88 = Me.DGUnderAc
  loc_EA630A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6312: Set var_BC = Me.DGUnderAc
  loc_EA634E: Proc_6_138_106D6F8(Me.DGUnderAc, global_180, CInt(2), Me.FGPoint)
  loc_EA635C: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_0 'EADE94
  'Data Table: 5ADD9C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_EADE17: Me.FAGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EADE2A: Set var_A8 = Me.TxtGrid
  loc_EADE30: Call 0.Method_FAGrid_UnknownEvent_00 (0, var_AC)
  loc_EADE38: var_AC.Visible = False
  loc_EADE44: Call Proc_265_106_104DB04()
  loc_EADE6A: If (CLng(global_272) <> CLng(Me.FAGrid.Row)) Then
  loc_EADE8D:   Call Proc_265_121_132A0A8(CInt(CLng(Me.FAGrid.Row)))
  loc_EADE92: End If
  loc_EADE92: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_1 'E67010
  'Data Table: 5ADD9C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66FCC: Set var_88 = Me.TxtGrid
  loc_E66FD2: Call 0.Method_FAGrid_UnknownEvent_10 (0, var_8C)
  loc_E66FEC: If (var_8C.Visible = 0) Then
  loc_E67005:   Me.FAGrid.BackColorSel = CVar(CLng(global_280))
  loc_E6700D: End If
  loc_E6700D: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_9 'DFDF4C
  'Data Table: 5ADD9C
  loc_DFDF44: Call Proc_265_120_DFD9D8()
  loc_DFDF49: Exit Sub
  loc_DFDF4A: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_A '104D840
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_104D5E0: Set var_88 = Me.TopCtrl1
  loc_104D5E6: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104D62B: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_104D634:   Call Form_KeyDown(Cancel, arg_10)
  loc_104D639: End If
  loc_104D63D: Set var_88 = Me.TopCtrl1
  loc_104D643: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104D65C: If (CStr() = "Browse") Then
  loc_104D65F:   Exit Sub
  loc_104D660: End If
  loc_104D6D4: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FAGrid.Tag))) = CDbl((CLng(Me.FAGrid.Rows) - (CLng(Me.FAGrid.Rows) - 1))))) Then
  loc_104D6ED:   Me.FAGrid.CellBackColor = CVar(CLng(global_280))
  loc_104D6FD:   var_9C = "+{Tab}"
  loc_104D703:   Proc_303_0_FB9B68(CStr(Me.FAGrid.Tag), 0)
  loc_104D70D:   Cancel = 0
  loc_104D713: Else
  loc_104D71D:   var_B0 = Me.FAGrid.Rows
  loc_104D76A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FAGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_104D783:     Me.FAGrid.CellBackColor = CVar(CLng(global_280))
  loc_104D799:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_104D7A3:     Cancel = 0
  loc_104D7A6:   End If
  loc_104D7A6: End If
  loc_104D7AC: global_112 = Cancel
  loc_104D7D2: Me.FAGrid.Tag = CVar(CStr(CLng(Me.FAGrid.Row)))
  loc_104D7F6: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_104D80C:   var_EC = CLng(Me.FAGrid.Col)
  loc_104D815: End If
  loc_104D81F: If (CLng(Cancel) = &HD) Then
  loc_104D82B:   Call FAGrid_UnknownEvent_C()
  loc_104D835:   global_110 = 0
  loc_104D838: End If
  loc_104D83A: Cancel = 0
  loc_104D83D: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_B 'E14B28
  'Data Table: 5ADD9C
  loc_E14B19: Call FAGrid_UnknownEvent_C()
  loc_E14B23: global_110 = 0
  loc_E14B26: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_C '1169A4C
  'Data Table: 5ADD9C
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim Cancel As Integer
  Dim var_134 As Long
  loc_1169698: Set var_88 = Me.TopCtrl1
  loc_116969E: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11696B7: If (CStr() = "Browse") Then
  loc_11696BA:   Exit Sub
  loc_11696BB: End If
  loc_11696CE: var_AC = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_11696D6: var_CC = CVar(CLng(3)) 'Long
  loc_11696DF: Set var_E0 = Me.FAGrid
  loc_11696F0: var_100 = CVar(CStr(var_E0.TextMatrix))) 'String
  loc_11696F6: var_110 = Ucase(var_100)
  loc_1169718: If (var_110 = "MEMBER") Then
  loc_116973C:   MsgBox("Can't Change Member Information From Grid.", &H40, "Validation", var_100, var_110)
  loc_116974E:   Cancel = 0
  loc_1169751: End If
  loc_1169764: var_134 = CLng(Me.FAGrid.Col)
  loc_1169774: If (var_134 = CLng(3)) Then
  loc_1169785:   Set var_88 = Me.TxtGrid
  loc_116978B:   Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, &HF, var_134)
  loc_1169793:   var_E0.MaxLength = Cancel
  loc_11697CB:   Set var_E0 = Me.FAGrid
  loc_11697DD:   Proc_6_63_110ABA4(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_11697F2: Else
  loc_11697F9:   If Not (var_134 = CLng(4)) Then
  loc_1169803:     If (var_134 = CLng(6)) Then
  loc_1169806:     End If
  loc_1169814:     Set var_88 = Me.TxtGrid
  loc_116981A:     Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, 6, Cancel)
  loc_1169822:     var_E0.MaxLength = 0
  loc_116985A:     Set var_E0 = Me.FAGrid
  loc_116986C:     Proc_6_63_110ABA4(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_1169881:   Else
  loc_1169888:     If Not (var_134 = CLng(5)) Then
  loc_1169892:       If Not (var_134 = CLng(&HC)) Then
  loc_116989C:         If Not (var_134 = CLng(&HE)) Then
  loc_11698A6:           If (var_134 = CLng(&H18)) Then
  loc_11698A9:           End If
  loc_11698A9:         End If
  loc_11698A9:       End If
  loc_11698B7:       Set var_88 = Me.TxtGrid
  loc_11698BD:       Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, &H32, Cancel)
  loc_11698C5:       var_E0.MaxLength = 0
  loc_11698FD:       Set var_E0 = Me.FAGrid
  loc_116990F:       Proc_6_63_110ABA4(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_1169924:     Else
  loc_116992B:       If Not (var_134 = CLng(8)) Then
  loc_1169935:         If (var_134 = CLng(&HA)) Then
  loc_1169938:         End If
  loc_1169946:         Set var_88 = Me.TxtGrid
  loc_116994C:         Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, &HB, Cancel)
  loc_1169954:         var_E0.MaxLength = 0
  loc_116998C:         Set var_E0 = Me.FAGrid
  loc_116999E:         Proc_6_63_110ABA4(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_11699B3:       Else
  loc_11699BA:         If (var_134 = CLng(&H1D)) Then
  loc_11699CB:           Set var_88 = Me.TxtGrid
  loc_11699D1:           Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, 3, Cancel)
  loc_11699D9:           var_E0.MaxLength = 0
  loc_1169A23:           Proc_6_63_110ABA4(Me, Me.FAGrid, Me.TxtGrid, 0, 0)
  loc_1169A35:         End If
  loc_1169A35:       End If
  loc_1169A35:     End If
  loc_1169A35:   End If
  loc_1169A35: End If
  loc_1169A3F: If (CLng(Cancel) <> &HD) Then
  loc_1169A47:   global_110 = &HFF
  loc_1169A4A: End If
  loc_1169A4A: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_D '11224C8
  'Data Table: 5ADD9C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_114 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_110 As Variant
  Dim var_1A8 As Integer
  Dim var_170 As String
  Dim unk_5ADDC8 As Connection15
  Dim var_194 As Recordset15
  Dim var_198 As Fields15
  Dim var_1AC As Field20
  loc_11221A0: Set var_88 = Me.TopCtrl1
  loc_11221A6: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11221BF: If (CStr() = "Browse") Then
  loc_11221C2:   Exit Sub
  loc_11221C3: End If
  loc_11221E0: If (CLng(Me.FAGrid.ColSel) = CLng(0)) Then
  loc_11221E3:   Exit Sub
  loc_11221E4: End If
  loc_11221F5: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1122217:   If (CLng(Me.FAGrid.Row) >= 1) Then
  loc_1122251:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_1122267:       var_B0 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_112226F:       var_E0 = CVar(CLng(2)) 'Long
  loc_1122294:       var_F0 = Me.FAGrid.Row
  loc_112229D:       var_12C = CVar(CLng(var_F0)) 'Long
  loc_11222A5:       var_14C = CVar(CLng(1)) 'Long
  loc_11222B4:       var_110 = Me.FAGrid.TextMatrix)
  loc_11222D0:       var_1A8 = 0
  loc_1122304:       var_170 = "Select Count(*) From MemberFamily Where HW_ID<>'' And Subcode='" & CStr(Me.FAGrid.TextMatrix)) & "' And SNo=" & CStr(Val(CStr(var_110)))
  loc_112230D:       unk_5ADDC8.Execute var_170, var_190, -1
  loc_1122315:       var_194 = var_194.Fields
  loc_112231D:       var_1A8 = var_198.Item(var_198)
  loc_1122325:       var_1AC = var_1AC.Value
  loc_1122364:       If (var_1BC > 0) Then
  loc_1122388:         MsgBox("Can't Delete Information Smart Card Issued.", &H10, "Validation Error", var_F0, var_110)
  loc_112239C:         Set var_88 = Me.FAGrid
  loc_11223AD:         Exit Sub
  loc_11223AE:       End If
  loc_11223CD:       If (CLng(Me.FAGrid.Rows) > 2) Then
  loc_11223E3:         var_B0 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_11223EC:         Set var_114 = Me.FAGrid
  loc_1122407:       Else
  loc_1122407:         var_B0 = 1
  loc_112241A:         Me.FAGrid.Rows = var_B0
  loc_1122440:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FAGrid, CInt(0), FAGrid.DispID_10000, var_B0, FAGrid.DispID_8001, var_1BC))) 'String
  loc_1122448:         Set var_114 = Me.FAGrid
  loc_1122475:         Me.FAGrid.FixedRows = 1
  loc_112247D:       End If
  loc_112247D:     End If
  loc_1122480:   Else
  loc_11224A1:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_11224B1:   End If
  loc_11224B5:   Set var_88 = Me.FAGrid
  loc_11224C6: End If
  loc_11224C6: Exit Sub
  loc_11224C7: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_12 'E62B44
  'Data Table: 5ADD9C
  loc_E62B19: If (CLng(global_272) <> CLng(Me.FAGrid.Row)) Then
  loc_E62B3C:   Call Proc_265_121_132A0A8(CInt(CLng(Me.FAGrid.Row)))
  loc_E62B41: End If
  loc_E62B41: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_15 'E42628
  'Data Table: 5ADD9C
  Dim var_8C As TextBox
  loc_E425FC: Call Proc_265_106_104DB04()
  loc_E4260C: Set var_88 = Me.TxtGrid
  loc_E42612: Call 0.Method_FAGrid_UnknownEvent_150 (0, var_8C)
  loc_E4261A: var_8C.Visible = False
  loc_E42626: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_0 'EAD1D4
  'Data Table: 5ADD9C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_EAD157: Me.FPGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EAD16A: Set var_A8 = Me.TxtGrid
  loc_EAD170: Call 0.Method_FPGrid_UnknownEvent_00 (1, var_AC)
  loc_EAD178: var_AC.Visible = False
  loc_EAD184: Call Proc_265_106_104DB04()
  loc_EAD1AA: If (CLng(global_274) <> CLng(Me.FPGrid.Row)) Then
  loc_EAD1CD:   Call Proc_265_122_13298B4(CInt(CLng(Me.FPGrid.Row)))
  loc_EAD1D2: End If
  loc_EAD1D2: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_1 'E69320
  'Data Table: 5ADD9C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E692DC: Set var_88 = Me.TxtGrid
  loc_E692E2: Call 0.Method_FPGrid_UnknownEvent_10 (1, var_8C)
  loc_E692FC: If (var_8C.Visible = 0) Then
  loc_E69315:   Me.FPGrid.BackColorSel = CVar(CLng(global_280))
  loc_E6931D: End If
  loc_E6931D: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_9 'E0001C
  'Data Table: 5ADD9C
  loc_E00014: Call Proc_265_95_DFD220()
  loc_E00019: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_A '104E050
  'Data Table: 5ADD9C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_104DDF0: Set var_88 = Me.TopCtrl1
  loc_104DDF6: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104DE3B: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_104DE44:   Call Form_KeyDown(Cancel, arg_10)
  loc_104DE49: End If
  loc_104DE4D: Set var_88 = Me.TopCtrl1
  loc_104DE53: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_104DE6C: If (CStr() = "Browse") Then
  loc_104DE6F:   Exit Sub
  loc_104DE70: End If
  loc_104DEE4: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FPGrid.Tag))) = CDbl((CLng(Me.FPGrid.Rows) - (CLng(Me.FPGrid.Rows) - 1))))) Then
  loc_104DEFD:   Me.FPGrid.CellBackColor = CVar(CLng(global_280))
  loc_104DF0D:   var_9C = "+{Tab}"
  loc_104DF13:   Proc_303_0_FB9B68(CStr(Me.FPGrid.Tag), 0)
  loc_104DF1D:   Cancel = 0
  loc_104DF23: Else
  loc_104DF2D:   var_B0 = Me.FPGrid.Rows
  loc_104DF7A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FPGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_104DF93:     Me.FPGrid.CellBackColor = CVar(CLng(global_280))
  loc_104DFA9:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_104DFB3:     Cancel = 0
  loc_104DFB6:   End If
  loc_104DFB6: End If
  loc_104DFBC: global_112 = Cancel
  loc_104DFE2: Me.FPGrid.Tag = CVar(CStr(CLng(Me.FPGrid.Row)))
  loc_104E006: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_104E01C:   var_EC = CLng(Me.FPGrid.Col)
  loc_104E025: End If
  loc_104E02F: If (CLng(Cancel) = &HD) Then
  loc_104E03B:   Call FPGrid_UnknownEvent_C()
  loc_104E045:   global_110 = 0
  loc_104E048: End If
  loc_104E04A: Cancel = 0
  loc_104E04D: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_B 'E14C00
  'Data Table: 5ADD9C
  loc_E14BF1: Call FPGrid_UnknownEvent_C()
  loc_E14BFB: global_110 = 0
  loc_E14BFE: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_C '1054F04
  'Data Table: 5ADD9C
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  loc_1054C9C: Set var_88 = Me.TopCtrl1
  loc_1054CA2: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1054CBB: If (CStr() = "Browse") Then
  loc_1054CBE:   Exit Sub
  loc_1054CBF: End If
  loc_1054CD2: var_A0 = CLng(Me.FPGrid.Col)
  loc_1054CE2: If (var_A0 = CLng(4)) Then
  loc_1054CF3:   Set var_88 = Me.TxtGrid
  loc_1054CF9:   Call 0.Method_FPGrid_UnknownEvent_C0 (1, var_A4)
  loc_1054D01:   var_A4.MaxLength = 8
  loc_1054D39:   Set var_A4 = Me.FPGrid
  loc_1054D4B:   Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 1)
  loc_1054D60: Else
  loc_1054D67:   If (var_A0 = CLng(5)) Then
  loc_1054D78:     Set var_88 = Me.TxtGrid
  loc_1054D7E:     Call 0.Method_FPGrid_UnknownEvent_C0 (1, var_A4, &H19, 0)
  loc_1054D86:     var_A4.MaxLength = Cancel
  loc_1054DBE:     Set var_A4 = Me.FPGrid
  loc_1054DD0:     Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 1, 0)
  loc_1054DE5:   Else
  loc_1054DEC:     If (var_A0 = CLng(7)) Then
  loc_1054DFD:       Set var_88 = Me.TxtGrid
  loc_1054E03:       Call 0.Method_FPGrid_UnknownEvent_C0 (1, var_A4, &H4B, Cancel)
  loc_1054E0B:       var_A4.MaxLength = 0
  loc_1054E43:       Set var_A4 = Me.FPGrid
  loc_1054E55:       Proc_6_63_110ABA4(Me, var_A4, Me.TxtGrid, 1, 0)
  loc_1054E6A:     Else
  loc_1054E71:       If (var_A0 = CLng(&HE)) Then
  loc_1054E82:         Set var_88 = Me.TxtGrid
  loc_1054E88:         Call 0.Method_FPGrid_UnknownEvent_C0 (1, var_A4, 3, Cancel)
  loc_1054E90:         var_A4.MaxLength = 0
  loc_1054EDA:         Proc_6_63_110ABA4(Me, Me.FPGrid, Me.TxtGrid, 1, 0)
  loc_1054EEC:       End If
  loc_1054EEC:     End If
  loc_1054EEC:   End If
  loc_1054EEC: End If
  loc_1054EF6: If (CLng(Cancel) <> &HD) Then
  loc_1054EFE:   global_110 = &HFF
  loc_1054F01: End If
  loc_1054F01: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_D 'FE58E0
  'Data Table: 5ADD9C
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_B0 As Variant
  loc_FE5710: Set var_88 = Me.TopCtrl1
  loc_FE5716: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE572F: If (CStr() = "Browse") Then
  loc_FE5732:   Exit Sub
  loc_FE5733: End If
  loc_FE5750: If (CLng(Me.FPGrid.ColSel) = CLng(0)) Then
  loc_FE5753:   Exit Sub
  loc_FE5754: End If
  loc_FE5765: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE5787:   If (CLng(Me.FPGrid.Row) >= 1) Then
  loc_FE57C1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FE57E3:       If (CLng(Me.FPGrid.Rows) > 2) Then
  loc_FE57F9:         var_B0 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_FE5802:         Set var_114 = Me.FPGrid
  loc_FE581D:       Else
  loc_FE5830:         Me.FPGrid.Rows = 1
  loc_FE5856:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FPGrid, CInt(0)))) 'String
  loc_FE585E:         Set var_114 = Me.FPGrid
  loc_FE588B:         Me.FPGrid.FixedRows = 1
  loc_FE5893:       End If
  loc_FE5893:     End If
  loc_FE5896:   Else
  loc_FE58B7:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_FE58C7:   End If
  loc_FE58CB:   Set var_88 = Me.FPGrid
  loc_FE58DC: End If
  loc_FE58DC: Exit Sub
  loc_FE58DD: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_12 'E63C48
  'Data Table: 5ADD9C
  loc_E63C1D: If (CLng(global_274) <> CLng(Me.FPGrid.Row)) Then
  loc_E63C40:   Call Proc_265_122_13298B4(CInt(CLng(Me.FPGrid.Row)))
  loc_E63C45: End If
  loc_E63C45: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_15 'E41944
  'Data Table: 5ADD9C
  Dim var_8C As TextBox
  loc_E41918: Call Proc_265_106_104DB04()
  loc_E41928: Set var_88 = Me.TxtGrid
  loc_E4192E: Call 0.Method_FPGrid_UnknownEvent_150 (1, var_8C)
  loc_E41936: var_8C.Visible = False
  loc_E41942: Exit Sub
End Sub

Private Sub CmdImgDelete_Click() 'FAC038
  'Data Table: 5ADD9C
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_DC As CommandButton
  Dim var_E4 As CommandButton
  Dim var_A8 As String
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_FABEB6: Set var_88 = Me.CmdImgDelete
  loc_FABEBC: var_88.Visible = False
  loc_FABEE2: Me.Global.LoadPicture var_98, var_A8, var_B8, var_C8, var_D8
  loc_FABEF6: Set var_DC = Me.CmdImgDelete
  loc_FABEFC: var_E0 = var_DC.Tag
  loc_FABF0E: Call 0.Method_arg_218 (var_E4, CVar(var_E0))
  loc_FABF20: ).Picture = CVar(var_88)
  loc_FABF41: Set var_88 = vbNullString(var_E0)
  loc_FABF47: var_88 = ).CommandButton.Tag
  loc_FABF59: Call 0.Method_arg_218 (var_DC)
  loc_FABF6B: ).Tag = CVar(var_E0)
  loc_FABF84: Set var_88 = (var_E0)
  loc_FABF8A:  = ).CommandButton.Tag
  loc_FABF92: var_138 = var_E0
  loc_FABFA0: If (var_138 = "ImgFamilyMemPhoto") Then
  loc_FABFB6:   var_98 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_FABFBE:   var_B8 = CVar(CLng(&H1B)) 'Long
  loc_FABFC3:   var_D8 = vbNullString
  loc_FABFCD:   Set var_DC = Me.FAGrid
  loc_FABFD3:   LateIdCallSt
  loc_FABFE8: Else
  loc_FABFF0:   If (var_138 = "ImgFamilyMemSign") Then
  loc_FAC006:     var_98 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_FAC00E:     var_B8 = CVar(CLng(&H1C)) 'Long
  loc_FAC013:     var_D8 = vbNullString
  loc_FAC01D:     Set var_DC = Me.FAGrid
  loc_FAC023:     LateIdCallSt
  loc_FAC035:   End If
  loc_FAC035: End If
  loc_FAC035: Exit Sub
End Sub

Private Sub Check1_Click() 'F6878C
  'Data Table: 5ADD9C
  Dim var_9C As Variant
  loc_F6866F: If (CLng(Me.Check1.Value) = 0) Then
  loc_F68680:   Me.GridSel.Enabled = True
  loc_F686A7:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F686BD:     Me.GridSel.Row = 1
  loc_F686D8:     Me.GridSel.Col = 0
  loc_F686E0:   End If
  loc_F686E3: Else
  loc_F686F2:   Me.GridSel.Enabled = False
  loc_F68719:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6872F:     Me.GridSel.Row = 0
  loc_F6874A:     Me.GridSel.Col = 0
  loc_F6876B:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F6877A:     Me.GridSel.RowSel = 0
  loc_F68789:   End If
  loc_F68789: End If
  loc_F68789: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E227FC
  'Data Table: 5ADD9C
  loc_E227E2: If (KeyCode = &HD) Then
  loc_E227F3:   Proc_303_0_FB9B68("	")
  loc_E227FB: End If
  loc_E227FB: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FD9BF4
  'Data Table: 5ADD9C
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  Dim arg_1900 As Variant
  loc_FD9A42: If (KeyCode = &HD) Then
  loc_FD9A53:   Proc_303_0_FB9B68("	")
  loc_FD9A5B: End If
  loc_FD9A7A: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FD9A7D:   Exit Sub
  loc_FD9A7E: End If
  loc_FD9AA8: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FD9ABB:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FD9AD5:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FD9AF0:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD9AF5:   var_D4 = 0
  loc_FD9B27:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FD9B2C:   var_19C = 0
  loc_FD9B67:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FD9B6F:   Set var_1D0 = Me.GridSel
  loc_FD9B75:   LateIdCallSt
  loc_FD9BAF:   var_86 = CInt((UBound(global_64, 1) + 1))
  loc_FD9BC1:   ReDim Preserve global_64(0 To CLng(var_86))
  loc_FD9BE9:   global_64(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FD9BF0: End If
  loc_FD9BF0: Exit Sub
  loc_FD9BF1: arg_1900 = CVar(var_86) 'Integer
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D280
  'Data Table: 5ADD9C
  loc_E5D25B: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5D25E:   Exit Sub
  loc_E5D25F: End If
  loc_E5D276: global_60 = CInt(CLng(Me.GridSel.Row))
  loc_E5D27F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1026DD0
  'Data Table: 5ADD9C
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1026BD1: If ((CLng(Me.GridSel.Col) <> 0) Or (global_60 = 0)) Then
  loc_1026BD4:   Exit Sub
  loc_1026BD5: End If
  loc_1026C31: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1026C34:   Exit Sub
  loc_1026C35: End If
  loc_1026C64: For var_BA = global_60 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1026C7D:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1026C98:   Me.GridSel.Col = 0
  loc_1026CB0:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1026CCA:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1026CD6:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1026CDB:   var_EC = 0
  loc_1026CFE:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1026D03:   var_180 = 0
  loc_1026D3E:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1026D46:   Set var_A0 = Me.GridSel
  loc_1026D4C:   LateIdCallSt
  loc_1026D7E:   var_86 = CInt((UBound(global_64, 1) + 1))
  loc_1026D90:   ReDim Preserve global_64(0 To CLng(var_86))
  loc_1026DB8:   global_64(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1026DC2: Next var_BA 'Integer
  loc_1026DCC: global_60 = 0
  loc_1026DCF: Exit Sub
End Sub

Public Function Varify_Member() '154D9F0
  'Data Table: 5ADD9C
  Dim var_B0 As String
  Dim unk_5ADDC8 As Connection15
  Dim var_98 As Recordset15
  Dim var_D8 As Variant
  Dim var_D4 As Variant
  Dim var_F0 As Variant
  Dim var_A6 As Integer
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_90 As Recordset15
  Dim var_140 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_268 As Double
  Dim var_258 As String
  Dim var_86 As Integer
  Dim var_210 As Variant
  Dim var_2A8 As String
  loc_154CA74: unk_5ADDC8.Execute "Select * From MemEnviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_D4, -1
  loc_154CA7F: Set var_98 = var_D8
  loc_154CAA3: If (var_98.RecordCount > 0) Then
  loc_154CAB5:   var_D8 = var_98.Fields
  loc_154CAD4:   global_268 = Proc_6_38_E68A98(CVar(var_D8.Item("Interface")))
  loc_154CAE4: Else
  loc_154CAFD:   MsgBox("Member EnvironMent Settings NOT SET!", 0, var_100, var_120, var_140)
  loc_154CB0D: End If
  loc_154CB18: If (global_268 = "SmartCard_ACR") Then
  loc_154CB29:   If (Proc_275_6_1132B28(var_9C, var_A0) = &HFF) Then
  loc_154CB69:     var_140 = Left(var_9C, 2)
  loc_154CB7C:     var_150 = Ucase(MemVar_1F92070)
  loc_154CB99:     If CBool((Trim(Left(var_9C, 8)) <> vbNullString) And (var_140 = var_150)) Then
  loc_154CBBA:       var_A4 = CStr(Mid(var_9C, 9, 1))
  loc_154CBEB:       var_A6 = CInt(Val(CStr(Mid(var_9C, &HA, 2))))
  loc_154CC1A:       var_F0 = "Select ConPrefix + ' ' + Name As mName,AllowCredit From SubGroup Where Subcode='"
  loc_154CC39:       unk_5ADDC8.Execute CStr(vbNullString & Left(var_9C, 8) & "'"), var_140, -1
  loc_154CC44:       Set var_90 = var_D8
  loc_154CC6C:       If (var_90.RecordCount > 0) Then
  loc_154CC7E:         var_D8 = var_90.Fields
  loc_154CC97:         var_94 = Proc_6_38_E68A98(CVar(var_D8.Item("mName")), var_D8)
  loc_154CCAF:         var_D8 = var_90.Fields
  loc_154CCC8:         var_AC = Proc_6_38_E68A98(CVar(var_D8.Item("AllowCredit")), var_A6)
  loc_154CCD1:       End If
  loc_154CCD6:       Set var_90 = Nothing
  loc_154CCDC:       var_174 = var_A4
  loc_154CCE7:       If (var_174 = "S") Then
  loc_154CD0C:         var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From MemSpouseGen Where Subcode='"
  loc_154CD2B:         unk_5ADDC8.Execute CStr(vbNullString & Left(var_9C, 8) & "'"), var_140, -1
  loc_154CD36:         Set var_8C = var_D8
  loc_154CD4D:       Else
  loc_154CD55:         If (var_174 = "C") Then
  loc_154CD7A:           var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From MemChildrenGenPic Where Subcode='"
  loc_154CDA3:           unk_5ADDC8.Execute CStr(vbNullString & Left(var_9C, 8) & "' And Sno=" & CVar(var_A6)), var_150, -1
  loc_154CDAE:           Set var_8C = var_D8
  loc_154CDC7:         Else
  loc_154CDCF:           If (var_174 = "A") Then
  loc_154CDF4:             var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From memFamily Where Subcode='"
  loc_154CE0F:             var_140 = vbNullString & Left(var_9C, 8) & "' And Sno=" & CVar(var_A6) 
  loc_154CE1D:             unk_5ADDC8.Execute CStr(var_140), var_150, -1
  loc_154CE28:             Set var_8C = var_D8
  loc_154CE41:           Else
  loc_154CE63:             var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From SubGroup Where Subcode='"
  loc_154CE82:             unk_5ADDC8.Execute CStr(vbNullString & Left(var_9C, 8) & "'"), var_140, -1
  loc_154CE8D:             Set var_8C = var_D8
  loc_154CEA4:             var_A4 = vbNullString
  loc_154CEA9:             var_A6 = 0
  loc_154CEAC:           End If
  loc_154CEAC:         End If
  loc_154CEAC:       End If
  loc_154CEC0:       If (var_8C.RecordCount > 0) Then
  loc_154CED2:         var_D8 = var_8C.Fields
  loc_154CEEB:         var_120 = CVar(Proc_6_38_E68A98(CVar(var_D8.Item("TINNo")), var_A6, var_D8, var_D8)) 'String
  loc_154CF10:         If CBool(var_120 <> Trim(var_A0)) Then
  loc_154CF34:           MsgBox("Duplicate Card", &H10, "Membership Varification", var_120, var_140)
  loc_154CF49:           Set var_8C = Nothing
  loc_154CF51:           Set var_90 = Nothing
  loc_154CF54:           Varify_Member = var_D8
  loc_154CF5A:         End If
  loc_154CF7B:         MsgBox("Card Varified", &H40, "Membership Varification", var_120, var_140)
  loc_154CF98:         Me.Global.Load Me
  loc_154CFBF:         Call MembershipMast.SEARCHBACK(CStr(Left(var_9C, 8)))
  loc_154CFCD:         var_188 = var_A4
  loc_154CFD8:         If (var_188 = "S") Then
  loc_154CFEA:           var_D8 = var_8C.Fields
  loc_154D066:           var_160 = CVar("Card No : " & Proc_6_38_E68A98(CVar(var_D8.Item("CardNo")), var_D8) & vbCrLf) & Ucase(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("mName"))))) 
  loc_154D098:           MsgBox(var_160 & vbCrLf & vbCrLf & "Member : " & vbCrLf & CVar(var_94), &H40, "Spouse Detail", var_230, var_250)
  loc_154D0CF:         Else
  loc_154D0D7:           If (var_188 = "C") Then
  loc_154D165:             var_160 = CVar("Card No :   " & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo"))) & vbCrLf) & Ucase(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("mName"))))) 
  loc_154D197:             MsgBox(var_160 & vbCrLf & vbCrLf & "Member :   " & vbCrLf & CVar(var_94), &H40, "Children Detail", var_230, var_250)
  loc_154D1CE:           Else
  loc_154D1D6:             If (var_188 = "A") Then
  loc_154D264:               var_160 = CVar("Card No :     " & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo"))) & vbCrLf) & Ucase(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("mName"))))) 
  loc_154D296:               MsgBox(var_160 & vbCrLf & vbCrLf & "Member :     " & vbCrLf & CVar(var_94), &H40, "Additional Family Member Detail", var_230, var_250)
  loc_154D2CD:             Else
  loc_154D2DC:               var_D8 = var_8C.Fields
  loc_154D2F5:               var_260 = Proc_6_38_E68A98(CVar(var_D8.Item("CardNo")))
  loc_154D326:               var_140 = Ucase(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("mName")))))
  loc_154D348:               Proc_96_2_100DE2C(CStr(Left(var_9C, 8)))
  loc_154D34D:               var_268 = var_D8
  loc_154D3B9:               var_1F0 = CVar("Card No :       " & var_260 & vbCrLf) & var_140 & IIf((var_AC = "N"), CVar(vbCrLf & "Credit Balance :       " & CStr(var_268)), vbNullString) 
  loc_154D3BD:               MsgBox(var_1F0, &H40, "Member Detail", var_230, var_250)
  loc_154D3F9:             End If
  loc_154D3F9:           End If
  loc_154D3F9:         End If
  loc_154D3FB:         var_86 = &HFF
  loc_154D431:         var_120 = "Select Validateupto From SubGroup Where validateupto Is Not Null And Subcode='" & Left(var_9C, 8) & "'" 
  loc_154D43F:         unk_5ADDC8.Execute CStr(var_120), var_140, -1
  loc_154D44A:         Set var_90 = var_D8
  loc_154D472:         If (var_90.RecordCount > 0) Then
  loc_154D492:           var_D8 = var_90.Fields
  loc_154D4BA:           If (Date > var_D8.Item("ValidateUpto").Value) Then
  loc_154D4DE:             MsgBox("Validity Of Card has been Expired", &H10, "Membership Varification", var_120, var_140)
  loc_154D4EE:           End If
  loc_154D4EE:         End If
  loc_154D4F3:         Set var_90 = Nothing
  loc_154D4F9:       Else
  loc_154D51A:         MsgBox("Record Not Found!", &H10, "Member Varification", var_120, var_140)
  loc_154D52C:         var_86 = 0
  loc_154D52F:       End If
  loc_154D532:     Else
  loc_154D573:       unk_5ADDC8.Execute CStr("Select * From SmartCardRegistration Where code='" & Left(var_9C, 8) & "'"), var_140, -1
  loc_154D57E:       Set var_8C = var_D8
  loc_154D5A6:       If (var_8C.RecordCount > 0) Then
  loc_154D5B8:         var_D8 = var_8C.Fields
  loc_154D5D1:         var_258 = Proc_6_38_E68A98(CVar(var_D8.Item("Code")), var_D8, var_86)
  loc_154D602:         var_140 = Ucase(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo")), var_D8)))
  loc_154D687:         var_210 = CVar("Reg. No :   " & var_258 & vbCrLf & "Card No :   ") & var_140 & vbCrLf & "Holder :   " & Ucase(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")), var_86))) 
  loc_154D68B:         MsgBox(var_210, &H40, "Cash Card Detail", var_250, var_280)
  loc_154D6ED:         var_120 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("SerialNo")))) 'String
  loc_154D712:         If CBool(var_120 <> Trim(var_A0)) Then
  loc_154D736:           MsgBox("Duplicate Cash Card", &H10, "Cash Card Verification", var_120, var_140)
  loc_154D746:         End If
  loc_154D77F:         If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BlockedYN"))) = "Y") Then
  loc_154D7A3:           MsgBox("Transations of This Cash Card has been blocked By Administrator.", &H10, "Cash Card Verification", var_120, var_140)
  loc_154D7B3:         End If
  loc_154D7B8:         var_B0 = Proc_6_15_EF2C1C(var_268)
  loc_154D7FB:         If (CDate(CDate(var_B0)) > var_8C.Fields.Item("ValidUpto").Value) Then
  loc_154D81F:           MsgBox("Validity Of This Cash Card has been Expired", &H10, "Cash Card Verification", var_120, var_140)
  loc_154D82F:         End If
  loc_154D832:       Else
  loc_154D853:         MsgBox("This Card is not registered Yet!", &H10, "Smart Card Verification", var_120, var_140)
  loc_154D863:       End If
  loc_154D865:       var_86 = 0
  loc_154D868:     End If
  loc_154D86B:   Else
  loc_154D86D:     var_86 = 0
  loc_154D870:   End If
  loc_154D873: Else
  loc_154D87E:   If (global_268 = "NBSD_Mifare") Then
  loc_154D888:     Call Proc_265_99_FA1BA4(1, 1, var_B0)
  loc_154D89F:     var_9C = CStr(Trim(CVar(var_B0)))
  loc_154D8B1:     If (var_9C <> vbNullString) Then
  loc_154D8BB:       Call Proc_265_99_FA1BA4(1, 2, var_258)
  loc_154D8C7:       Call Proc_265_99_FA1BA4(1, 3, var_260)
  loc_154D8D3:       Call Proc_265_99_FA1BA4(2, 1, var_28C)
  loc_154D8DF:       Call Proc_265_99_FA1BA4(2, 2, var_294)
  loc_154D8EB:       Call Proc_265_99_FA1BA4(2, 3, var_2A0)
  loc_154D953:       var_2A8 = "Card Belongs to:" & vbCrLf & vbCrLf & var_9C & vbCrLf & var_258 & var_260 & vbCrLf & var_28C & var_294 & vbCrLf & var_2A0
  loc_154D95D:       MsgBox(CVar(var_2A8 & vbCrLf), &H40, "Membership Varification", var_120, var_140)
  loc_154D996:       Call MembershipMast.SEARCHBACK(var_9C)
  loc_154D99D:       var_86 = &HFF
  loc_154D9A3:     Else
  loc_154D9C4:       MsgBox("Invalid Information!", &H10, "Member Varification", var_120, var_140)
  loc_154D9D6:       var_86 = 0
  loc_154D9D9:     End If
  loc_154D9D9:   End If
  loc_154D9D9: End If
  loc_154D9DE: Set var_8C = Nothing
  loc_154D9E6: Set var_98 = Nothing
  loc_154D9E9: Varify_Member = var_86
End Function

Public Sub SEARCHBACK(MyValue) 'F061D4
  'Data Table: 5ADD9C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_F06106: On Error Goto loc_F0616F
  loc_F0610F: Me.MoveFirst
  loc_F06129: var_8C = "SearchCode='" & MyValue
  loc_F06139: Me.Find var_8C & "'", 0, 1
  loc_F06145: Call Proc_265_112_1B45AC0(var_A0)
  loc_F06166: Proc_5_0_110649C(&HFF, Me)
  loc_F0616E: Exit Sub
  loc_F0616F: ' Referenced from: F06106
  loc_F06177: Set var_A8 = Err()
  loc_F0617D: Call 0.Method_arg_1C (var_B0, global_164)
  loc_F0618E: If (var_B0 <> 0) Then
  loc_F06199:   Set var_A8 = Err()
  loc_F0619F:   Call 0.Method_arg_2C (var_8C)
  loc_F061C0:   MsgBox(CVar(var_8C), &H40, "Validation", var_F0, var_110)
  loc_F061D3: End If
  loc_F061D3: Exit Sub
End Sub

Public Sub Proc_265_91_1545684
  'Data Table: 5ADD9C
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_154466A: Me.FAGrid.Left = CVar(CDbl(1))
  loc_1544685: Me.FAGrid.Top = CVar(CDbl(400))
  loc_15446A0: Me.FAGrid.Width = CVar(CDbl(14100))
  loc_15446AC: Set var_AC = Me.FAGrid
  loc_15446C3: global_280 = CStr(CLng(var_AC.BackColor))
  loc_15446D9: var_AC.Cols = &H23
  loc_15446DE: var_94 = 0
  loc_15446EA: var_D0 = CVar(CLng(0)) 'Long
  loc_15446EF: var_F0 = "SNo."
  loc_15446F8: LateIdCallSt
  loc_1544703: var_94 = CVar(CLng(0)) 'Long
  loc_1544708: var_D0 = &H1C2
  loc_1544714: LateIdCallSt
  loc_154471C: var_94 = 0
  loc_1544728: var_D0 = CVar(CLng(1)) 'Long
  loc_154472D: var_F0 = "SNo1"
  loc_1544736: LateIdCallSt
  loc_1544741: var_94 = CVar(CLng(1)) 'Long
  loc_1544746: var_D0 = 0
  loc_1544752: LateIdCallSt
  loc_154475A: var_94 = 0
  loc_1544766: var_D0 = CVar(CLng(2)) 'Long
  loc_154476B: var_F0 = "Member Code"
  loc_1544774: LateIdCallSt
  loc_154477F: var_94 = CVar(CLng(2)) 'Long
  loc_154478A: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544791: LateIdCallSt
  loc_154479C: var_94 = CVar(CLng(2)) 'Long
  loc_15447A1: var_D0 = 0
  loc_15447AD: LateIdCallSt
  loc_15447B5: var_94 = 0
  loc_15447C1: var_D0 = CVar(CLng(3)) 'Long
  loc_15447C6: var_F0 = "Relation"
  loc_15447CF: LateIdCallSt
  loc_15447DA: var_94 = CVar(CLng(3)) 'Long
  loc_15447E5: var_D0 = CVar(CInt(1)) 'Integer
  loc_15447EC: LateIdCallSt
  loc_15447F7: var_94 = CVar(CLng(3)) 'Long
  loc_15447FC: var_D0 = &H320
  loc_1544808: LateIdCallSt
  loc_1544810: var_94 = 0
  loc_154481C: var_D0 = CVar(CLng(4)) 'Long
  loc_1544821: var_F0 = "Prefix"
  loc_154482A: LateIdCallSt
  loc_1544835: var_94 = CVar(CLng(4)) 'Long
  loc_1544840: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544847: LateIdCallSt
  loc_1544852: var_94 = CVar(CLng(4)) 'Long
  loc_1544857: var_D0 = &H28A
  loc_1544863: LateIdCallSt
  loc_154486B: var_94 = 0
  loc_1544877: var_D0 = CVar(CLng(5)) 'Long
  loc_154487C: var_F0 = "Name"
  loc_1544885: LateIdCallSt
  loc_1544890: var_94 = CVar(CLng(5)) 'Long
  loc_154489B: var_D0 = CVar(CInt(1)) 'Integer
  loc_15448A2: LateIdCallSt
  loc_15448AD: var_94 = CVar(CLng(5)) 'Long
  loc_15448B8: var_D0 = CVar(CInt(1)) 'Integer
  loc_15448BF: LateIdCallSt
  loc_15448CA: var_94 = CVar(CLng(5)) 'Long
  loc_15448CF: var_D0 = &H9C4
  loc_15448DB: LateIdCallSt
  loc_15448E3: var_94 = 0
  loc_15448EF: var_D0 = CVar(CLng(6)) 'Long
  loc_15448F4: var_F0 = "Gender"
  loc_15448FD: LateIdCallSt
  loc_1544908: var_94 = CVar(CLng(6)) 'Long
  loc_1544913: var_D0 = CVar(CInt(1)) 'Integer
  loc_154491A: LateIdCallSt
  loc_1544925: var_94 = CVar(CLng(6)) 'Long
  loc_1544930: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544937: LateIdCallSt
  loc_1544942: var_94 = CVar(CLng(6)) 'Long
  loc_1544947: var_D0 = &H2BC
  loc_1544953: LateIdCallSt
  loc_154495B: var_94 = 0
  loc_1544967: var_D0 = CVar(CLng(7)) 'Long
  loc_154496C: var_F0 = "Marital Status"
  loc_1544975: LateIdCallSt
  loc_1544980: var_94 = CVar(CLng(7)) 'Long
  loc_154498B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544992: LateIdCallSt
  loc_154499D: var_94 = CVar(CLng(7)) 'Long
  loc_15449A8: var_D0 = CVar(CInt(1)) 'Integer
  loc_15449AF: LateIdCallSt
  loc_15449BA: var_94 = CVar(CLng(7)) 'Long
  loc_15449BF: var_D0 = 0
  loc_15449CB: LateIdCallSt
  loc_15449D3: var_94 = 0
  loc_15449DF: var_D0 = CVar(CLng(8)) 'Long
  loc_15449E4: var_F0 = "DOB"
  loc_15449ED: LateIdCallSt
  loc_15449F8: var_94 = CVar(CLng(8)) 'Long
  loc_1544A03: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544A0A: LateIdCallSt
  loc_1544A15: var_94 = CVar(CLng(8)) 'Long
  loc_1544A20: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544A27: LateIdCallSt
  loc_1544A32: var_94 = CVar(CLng(8)) 'Long
  loc_1544A37: var_D0 = &H44C
  loc_1544A43: LateIdCallSt
  loc_1544A4B: var_94 = 0
  loc_1544A57: var_D0 = CVar(CLng(9)) 'Long
  loc_1544A5C: var_F0 = "POB"
  loc_1544A65: LateIdCallSt
  loc_1544A70: var_94 = CVar(CLng(9)) 'Long
  loc_1544A7B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544A82: LateIdCallSt
  loc_1544A8D: var_94 = CVar(CLng(9)) 'Long
  loc_1544A98: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544A9F: LateIdCallSt
  loc_1544AAA: var_94 = CVar(CLng(9)) 'Long
  loc_1544AAF: var_D0 = 0
  loc_1544ABB: LateIdCallSt
  loc_1544AC3: var_94 = 0
  loc_1544ACF: var_D0 = CVar(CLng(&HA)) 'Long
  loc_1544AD4: var_F0 = "Anniversary"
  loc_1544ADD: LateIdCallSt
  loc_1544AE8: var_94 = CVar(CLng(&HA)) 'Long
  loc_1544AF3: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544AFA: LateIdCallSt
  loc_1544B05: var_94 = CVar(CLng(&HA)) 'Long
  loc_1544B10: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544B17: LateIdCallSt
  loc_1544B22: var_94 = CVar(CLng(&HA)) 'Long
  loc_1544B27: var_D0 = &H44C
  loc_1544B33: LateIdCallSt
  loc_1544B3B: var_94 = 0
  loc_1544B47: var_D0 = CVar(CLng(&HB)) 'Long
  loc_1544B4C: var_F0 = "Phone"
  loc_1544B55: LateIdCallSt
  loc_1544B60: var_94 = CVar(CLng(&HB)) 'Long
  loc_1544B6B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544B72: LateIdCallSt
  loc_1544B7D: var_94 = CVar(CLng(&HB)) 'Long
  loc_1544B88: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544B8F: LateIdCallSt
  loc_1544B9A: var_94 = CVar(CLng(&HB)) 'Long
  loc_1544B9F: var_D0 = 0
  loc_1544BAB: LateIdCallSt
  loc_1544BB3: var_94 = 0
  loc_1544BBF: var_D0 = CVar(CLng(&HC)) 'Long
  loc_1544BC4: var_F0 = "Mobile No."
  loc_1544BCD: LateIdCallSt
  loc_1544BD8: var_94 = CVar(CLng(&HC)) 'Long
  loc_1544BE3: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544BEA: LateIdCallSt
  loc_1544BF5: var_94 = CVar(CLng(&HC)) 'Long
  loc_1544C00: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544C07: LateIdCallSt
  loc_1544C12: var_94 = CVar(CLng(&HC)) 'Long
  loc_1544C17: var_D0 = &H44C
  loc_1544C23: LateIdCallSt
  loc_1544C2B: var_94 = 0
  loc_1544C37: var_D0 = CVar(CLng(&HD)) 'Long
  loc_1544C3C: var_F0 = "Fax"
  loc_1544C45: LateIdCallSt
  loc_1544C50: var_94 = CVar(CLng(&HD)) 'Long
  loc_1544C5B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544C62: LateIdCallSt
  loc_1544C6D: var_94 = CVar(CLng(&HD)) 'Long
  loc_1544C78: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544C7F: LateIdCallSt
  loc_1544C8A: var_94 = CVar(CLng(&HD)) 'Long
  loc_1544C8F: var_D0 = 0
  loc_1544C9B: LateIdCallSt
  loc_1544CA3: var_94 = 0
  loc_1544CAF: var_D0 = CVar(CLng(&HE)) 'Long
  loc_1544CB4: var_F0 = "Email ID"
  loc_1544CBD: LateIdCallSt
  loc_1544CC8: var_94 = CVar(CLng(&HE)) 'Long
  loc_1544CD3: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544CDA: LateIdCallSt
  loc_1544CE5: var_94 = CVar(CLng(&HE)) 'Long
  loc_1544CF0: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544CF7: LateIdCallSt
  loc_1544D02: var_94 = CVar(CLng(&HE)) 'Long
  loc_1544D07: var_D0 = &H708
  loc_1544D13: LateIdCallSt
  loc_1544D1B: var_94 = 0
  loc_1544D27: var_D0 = CVar(CLng(&HF)) 'Long
  loc_1544D2C: var_F0 = "Nationality"
  loc_1544D35: LateIdCallSt
  loc_1544D40: var_94 = CVar(CLng(&HF)) 'Long
  loc_1544D4B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544D52: LateIdCallSt
  loc_1544D5D: var_94 = CVar(CLng(&HF)) 'Long
  loc_1544D68: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544D6F: LateIdCallSt
  loc_1544D7A: var_94 = CVar(CLng(&HF)) 'Long
  loc_1544D7F: var_D0 = 0
  loc_1544D8B: LateIdCallSt
  loc_1544D93: var_94 = 0
  loc_1544D9F: var_D0 = CVar(CLng(&H10)) 'Long
  loc_1544DA4: var_F0 = "Religion"
  loc_1544DAD: LateIdCallSt
  loc_1544DB8: var_94 = CVar(CLng(&H10)) 'Long
  loc_1544DC3: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544DCA: LateIdCallSt
  loc_1544DD5: var_94 = CVar(CLng(&H10)) 'Long
  loc_1544DE0: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544DE7: LateIdCallSt
  loc_1544DF2: var_94 = CVar(CLng(&H10)) 'Long
  loc_1544DF7: var_D0 = 0
  loc_1544E03: LateIdCallSt
  loc_1544E0B: var_94 = 0
  loc_1544E17: var_D0 = CVar(CLng(&H11)) 'Long
  loc_1544E1C: var_F0 = "Blood Group"
  loc_1544E25: LateIdCallSt
  loc_1544E30: var_94 = CVar(CLng(&H11)) 'Long
  loc_1544E3B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544E42: LateIdCallSt
  loc_1544E4D: var_94 = CVar(CLng(&H11)) 'Long
  loc_1544E58: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544E5F: LateIdCallSt
  loc_1544E6A: var_94 = CVar(CLng(&H11)) 'Long
  loc_1544E6F: var_D0 = 0
  loc_1544E7B: LateIdCallSt
  loc_1544E83: var_94 = 0
  loc_1544E8F: var_D0 = CVar(CLng(&H12)) 'Long
  loc_1544E94: var_F0 = "Pro.Occ."
  loc_1544E9D: LateIdCallSt
  loc_1544EA8: var_94 = CVar(CLng(&H12)) 'Long
  loc_1544EB3: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544EBA: LateIdCallSt
  loc_1544EC5: var_94 = CVar(CLng(&H12)) 'Long
  loc_1544ED0: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544ED7: LateIdCallSt
  loc_1544EE2: var_94 = CVar(CLng(&H12)) 'Long
  loc_1544EE7: var_D0 = 0
  loc_1544EF3: LateIdCallSt
  loc_1544EFB: var_94 = 0
  loc_1544F07: var_D0 = CVar(CLng(&H13)) 'Long
  loc_1544F0C: var_F0 = "Ed.Quali."
  loc_1544F15: LateIdCallSt
  loc_1544F20: var_94 = CVar(CLng(&H13)) 'Long
  loc_1544F2B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544F32: LateIdCallSt
  loc_1544F3D: var_94 = CVar(CLng(&H13)) 'Long
  loc_1544F48: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544F4F: LateIdCallSt
  loc_1544F5A: var_94 = CVar(CLng(&H13)) 'Long
  loc_1544F5F: var_D0 = 0
  loc_1544F6B: LateIdCallSt
  loc_1544F73: var_94 = 0
  loc_1544F7F: var_D0 = CVar(CLng(&H14)) 'Long
  loc_1544F84: var_F0 = "Business"
  loc_1544F8D: LateIdCallSt
  loc_1544F98: var_94 = CVar(CLng(&H14)) 'Long
  loc_1544FA3: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544FAA: LateIdCallSt
  loc_1544FB5: var_94 = CVar(CLng(&H14)) 'Long
  loc_1544FC0: var_D0 = CVar(CInt(1)) 'Integer
  loc_1544FC7: LateIdCallSt
  loc_1544FD2: var_94 = CVar(CLng(&H14)) 'Long
  loc_1544FD7: var_D0 = 0
  loc_1544FE3: LateIdCallSt
  loc_1544FEB: var_94 = 0
  loc_1544FF7: var_D0 = CVar(CLng(&H15)) 'Long
  loc_1544FFC: var_F0 = "TurnOver"
  loc_1545005: LateIdCallSt
  loc_1545010: var_94 = CVar(CLng(&H15)) 'Long
  loc_154501B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545022: LateIdCallSt
  loc_154502D: var_94 = CVar(CLng(&H15)) 'Long
  loc_1545038: var_D0 = CVar(CInt(1)) 'Integer
  loc_154503F: LateIdCallSt
  loc_154504A: var_94 = CVar(CLng(&H15)) 'Long
  loc_154504F: var_D0 = 0
  loc_154505B: LateIdCallSt
  loc_1545063: var_94 = 0
  loc_154506F: var_D0 = CVar(CLng(&H16)) 'Long
  loc_1545074: var_F0 = "Passport No."
  loc_154507D: LateIdCallSt
  loc_1545088: var_94 = CVar(CLng(&H16)) 'Long
  loc_1545093: var_D0 = CVar(CInt(1)) 'Integer
  loc_154509A: LateIdCallSt
  loc_15450A5: var_94 = CVar(CLng(&H16)) 'Long
  loc_15450B0: var_D0 = CVar(CInt(1)) 'Integer
  loc_15450B7: LateIdCallSt
  loc_15450C2: var_94 = CVar(CLng(&H16)) 'Long
  loc_15450C7: var_D0 = 0
  loc_15450D3: LateIdCallSt
  loc_15450DB: var_94 = 0
  loc_15450E7: var_D0 = CVar(CLng(&H17)) 'Long
  loc_15450EC: var_F0 = "PAN No."
  loc_15450F5: LateIdCallSt
  loc_1545100: var_94 = CVar(CLng(&H17)) 'Long
  loc_154510B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545112: LateIdCallSt
  loc_154511D: var_94 = CVar(CLng(&H17)) 'Long
  loc_1545128: var_D0 = CVar(CInt(1)) 'Integer
  loc_154512F: LateIdCallSt
  loc_154513A: var_94 = CVar(CLng(&H17)) 'Long
  loc_154513F: var_D0 = 0
  loc_154514B: LateIdCallSt
  loc_1545153: var_94 = 0
  loc_154515F: var_D0 = CVar(CLng(&H18)) 'Long
  loc_1545164: var_F0 = "Designation"
  loc_154516D: LateIdCallSt
  loc_1545178: var_94 = CVar(CLng(&H18)) 'Long
  loc_1545183: var_D0 = CVar(CInt(1)) 'Integer
  loc_154518A: LateIdCallSt
  loc_1545195: var_94 = CVar(CLng(&H18)) 'Long
  loc_15451A0: var_D0 = CVar(CInt(1)) 'Integer
  loc_15451A7: LateIdCallSt
  loc_15451B2: var_94 = CVar(CLng(&H18)) 'Long
  loc_15451B7: var_D0 = &H4B0
  loc_15451C3: LateIdCallSt
  loc_15451CB: var_94 = 0
  loc_15451D7: var_D0 = CVar(CLng(&H19)) 'Long
  loc_15451DC: var_F0 = "In Tax"
  loc_15451E5: LateIdCallSt
  loc_15451F0: var_94 = CVar(CLng(&H19)) 'Long
  loc_15451FB: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545202: LateIdCallSt
  loc_154520D: var_94 = CVar(CLng(&H19)) 'Long
  loc_1545218: var_D0 = CVar(CInt(1)) 'Integer
  loc_154521F: LateIdCallSt
  loc_154522A: var_94 = CVar(CLng(&H19)) 'Long
  loc_154522F: var_D0 = 0
  loc_154523B: LateIdCallSt
  loc_1545243: var_94 = 0
  loc_154524F: var_D0 = CVar(CLng(&H1A)) 'Long
  loc_1545254: var_F0 = "Special Interest"
  loc_154525D: LateIdCallSt
  loc_1545268: var_94 = CVar(CLng(&H1A)) 'Long
  loc_1545273: var_D0 = CVar(CInt(1)) 'Integer
  loc_154527A: LateIdCallSt
  loc_1545285: var_94 = CVar(CLng(&H1A)) 'Long
  loc_1545290: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545297: LateIdCallSt
  loc_15452A2: var_94 = CVar(CLng(&H1A)) 'Long
  loc_15452A7: var_D0 = 0
  loc_15452B3: LateIdCallSt
  loc_15452BB: var_94 = 0
  loc_15452C7: var_D0 = CVar(CLng(&H1B)) 'Long
  loc_15452CC: var_F0 = "Pic.Path"
  loc_15452D5: LateIdCallSt
  loc_15452E0: var_94 = CVar(CLng(&H1B)) 'Long
  loc_15452EB: var_D0 = CVar(CInt(1)) 'Integer
  loc_15452F2: LateIdCallSt
  loc_15452FD: var_94 = CVar(CLng(&H1B)) 'Long
  loc_1545308: var_D0 = CVar(CInt(1)) 'Integer
  loc_154530F: LateIdCallSt
  loc_154531A: var_94 = CVar(CLng(&H1B)) 'Long
  loc_154531F: var_D0 = 0
  loc_154532B: LateIdCallSt
  loc_1545333: var_94 = 0
  loc_154533F: var_D0 = CVar(CLng(&H1C)) 'Long
  loc_1545344: var_F0 = "Sig.Path"
  loc_154534D: LateIdCallSt
  loc_1545358: var_94 = CVar(CLng(&H1C)) 'Long
  loc_1545363: var_D0 = CVar(CInt(1)) 'Integer
  loc_154536A: LateIdCallSt
  loc_1545375: var_94 = CVar(CLng(&H1C)) 'Long
  loc_1545380: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545387: LateIdCallSt
  loc_1545392: var_94 = CVar(CLng(&H1C)) 'Long
  loc_1545397: var_D0 = 0
  loc_15453A3: LateIdCallSt
  loc_15453AB: var_94 = 0
  loc_15453B7: var_D0 = CVar(CLng(&H1D)) 'Long
  loc_15453BC: var_F0 = "Lvl"
  loc_15453C5: LateIdCallSt
  loc_15453D0: var_94 = CVar(CLng(&H1D)) 'Long
  loc_15453DB: var_D0 = CVar(CInt(1)) 'Integer
  loc_15453E2: LateIdCallSt
  loc_15453ED: var_94 = CVar(CLng(&H1D)) 'Long
  loc_15453F8: var_D0 = CVar(CInt(1)) 'Integer
  loc_15453FF: LateIdCallSt
  loc_154540A: var_94 = CVar(CLng(&H1D)) 'Long
  loc_154540F: var_D0 = &H15E
  loc_154541B: LateIdCallSt
  loc_1545423: var_94 = 0
  loc_154542F: var_D0 = CVar(CLng(&H1E)) 'Long
  loc_1545434: var_F0 = "HW_Id"
  loc_154543D: LateIdCallSt
  loc_1545448: var_94 = CVar(CLng(&H1E)) 'Long
  loc_1545453: var_D0 = CVar(CInt(1)) 'Integer
  loc_154545A: LateIdCallSt
  loc_1545465: var_94 = CVar(CLng(&H1E)) 'Long
  loc_1545470: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545477: LateIdCallSt
  loc_1545482: var_94 = CVar(CLng(&H1E)) 'Long
  loc_1545487: var_D0 = 0
  loc_1545493: LateIdCallSt
  loc_154549B: var_94 = 0
  loc_15454A7: var_D0 = CVar(CLng(&H1F)) 'Long
  loc_15454AC: var_F0 = "Card No."
  loc_15454B5: LateIdCallSt
  loc_15454C0: var_94 = CVar(CLng(&H1F)) 'Long
  loc_15454CB: var_D0 = CVar(CInt(1)) 'Integer
  loc_15454D2: LateIdCallSt
  loc_15454DD: var_94 = CVar(CLng(&H1F)) 'Long
  loc_15454E8: var_D0 = CVar(CInt(1)) 'Integer
  loc_15454EF: LateIdCallSt
  loc_15454FA: var_94 = CVar(CLng(&H1F)) 'Long
  loc_15454FF: var_D0 = 0
  loc_154550B: LateIdCallSt
  loc_1545513: var_94 = 0
  loc_154551F: var_D0 = CVar(CLng(&H20)) 'Long
  loc_1545524: var_F0 = "Card Issue"
  loc_154552D: LateIdCallSt
  loc_1545538: var_94 = CVar(CLng(&H20)) 'Long
  loc_1545543: var_D0 = CVar(CInt(1)) 'Integer
  loc_154554A: LateIdCallSt
  loc_1545555: var_94 = CVar(CLng(&H20)) 'Long
  loc_1545560: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545567: LateIdCallSt
  loc_1545572: var_94 = CVar(CLng(&H20)) 'Long
  loc_1545577: var_D0 = &H47E
  loc_1545583: LateIdCallSt
  loc_154558B: var_94 = 0
  loc_1545597: var_D0 = CVar(CLng(&H21)) 'Long
  loc_154559C: var_F0 = "CardRegId"
  loc_15455A5: LateIdCallSt
  loc_15455B0: var_94 = CVar(CLng(&H21)) 'Long
  loc_15455BB: var_D0 = CVar(CInt(1)) 'Integer
  loc_15455C2: LateIdCallSt
  loc_15455CD: var_94 = CVar(CLng(&H21)) 'Long
  loc_15455D8: var_D0 = CVar(CInt(1)) 'Integer
  loc_15455DF: LateIdCallSt
  loc_15455EA: var_94 = CVar(CLng(&H21)) 'Long
  loc_15455EF: var_D0 = 0
  loc_15455FB: LateIdCallSt
  loc_1545603: var_94 = 0
  loc_154560F: var_D0 = CVar(CLng(&H22)) 'Long
  loc_1545614: var_F0 = "Card Valid"
  loc_154561D: LateIdCallSt
  loc_1545628: var_94 = CVar(CLng(&H22)) 'Long
  loc_1545633: var_D0 = CVar(CInt(1)) 'Integer
  loc_154563A: LateIdCallSt
  loc_1545645: var_94 = CVar(CLng(&H22)) 'Long
  loc_1545650: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545657: LateIdCallSt
  loc_1545662: var_94 = CVar(CLng(&H22)) 'Long
  loc_1545667: var_D0 = &H47E
  loc_1545673: LateIdCallSt
  loc_154567D: Set var_AC = Nothing 
  loc_1545681: Exit Sub
End Sub

Public Sub Proc_265_92_12D4514
  'Data Table: 5ADD9C
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_12D3E76: Me.FPGrid.Left = CVar(CDbl(1))
  loc_12D3E91: Me.FPGrid.Top = CVar(CDbl(400))
  loc_12D3EAC: Me.FPGrid.Width = CVar(CDbl(13260))
  loc_12D3EB8: Set var_AC = Me.FPGrid
  loc_12D3ECF: global_280 = CStr(CLng(var_AC.BackColor))
  loc_12D3EE5: var_AC.Cols = &HF
  loc_12D3EEA: var_94 = 0
  loc_12D3EF6: var_D0 = CVar(CLng(0)) 'Long
  loc_12D3EFB: var_F0 = "SNo."
  loc_12D3F04: LateIdCallSt
  loc_12D3F0F: var_94 = CVar(CLng(0)) 'Long
  loc_12D3F14: var_D0 = &H1C2
  loc_12D3F20: LateIdCallSt
  loc_12D3F28: var_94 = 0
  loc_12D3F34: var_D0 = CVar(CLng(1)) 'Long
  loc_12D3F39: var_F0 = "SNo1"
  loc_12D3F42: LateIdCallSt
  loc_12D3F4D: var_94 = CVar(CLng(1)) 'Long
  loc_12D3F52: var_D0 = 0
  loc_12D3F5E: LateIdCallSt
  loc_12D3F66: var_94 = 0
  loc_12D3F72: var_D0 = CVar(CLng(2)) 'Long
  loc_12D3F77: var_F0 = "Member Code"
  loc_12D3F80: LateIdCallSt
  loc_12D3F8B: var_94 = CVar(CLng(2)) 'Long
  loc_12D3F96: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D3F9D: LateIdCallSt
  loc_12D3FA8: var_94 = CVar(CLng(2)) 'Long
  loc_12D3FAD: var_D0 = 0
  loc_12D3FB9: LateIdCallSt
  loc_12D3FC1: var_94 = 0
  loc_12D3FCD: var_D0 = CVar(CLng(3)) 'Long
  loc_12D3FD2: var_F0 = "Prop Member Code"
  loc_12D3FDB: LateIdCallSt
  loc_12D3FE6: var_94 = CVar(CLng(3)) 'Long
  loc_12D3FF1: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D3FF8: LateIdCallSt
  loc_12D4003: var_94 = CVar(CLng(3)) 'Long
  loc_12D4008: var_D0 = 0
  loc_12D4014: LateIdCallSt
  loc_12D401C: var_94 = 0
  loc_12D4028: var_D0 = CVar(CLng(4)) 'Long
  loc_12D402D: var_F0 = "Mem. Type"
  loc_12D4036: LateIdCallSt
  loc_12D4041: var_94 = CVar(CLng(4)) 'Long
  loc_12D404C: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D4053: LateIdCallSt
  loc_12D405E: var_94 = CVar(CLng(4)) 'Long
  loc_12D4063: var_D0 = &H44C
  loc_12D406F: LateIdCallSt
  loc_12D4077: var_94 = 0
  loc_12D4083: var_D0 = CVar(CLng(5)) 'Long
  loc_12D4088: var_F0 = "Member Id"
  loc_12D4091: LateIdCallSt
  loc_12D409C: var_94 = CVar(CLng(5)) 'Long
  loc_12D40A7: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D40AE: LateIdCallSt
  loc_12D40B9: var_94 = CVar(CLng(5)) 'Long
  loc_12D40C4: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D40CB: LateIdCallSt
  loc_12D40D6: var_94 = CVar(CLng(5)) 'Long
  loc_12D40DB: var_D0 = &H4B0
  loc_12D40E7: LateIdCallSt
  loc_12D40EF: var_94 = 0
  loc_12D40FB: var_D0 = CVar(CLng(6)) 'Long
  loc_12D4100: var_F0 = "Prefix"
  loc_12D4109: LateIdCallSt
  loc_12D4114: var_94 = CVar(CLng(6)) 'Long
  loc_12D411F: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D4126: LateIdCallSt
  loc_12D4131: var_94 = CVar(CLng(6)) 'Long
  loc_12D4136: var_D0 = &H28A
  loc_12D4142: LateIdCallSt
  loc_12D414A: var_94 = 0
  loc_12D4156: var_D0 = CVar(CLng(7)) 'Long
  loc_12D415B: var_F0 = "Name"
  loc_12D4164: LateIdCallSt
  loc_12D416F: var_94 = CVar(CLng(7)) 'Long
  loc_12D417A: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D4181: LateIdCallSt
  loc_12D418C: var_94 = CVar(CLng(7)) 'Long
  loc_12D4197: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D419E: LateIdCallSt
  loc_12D41A9: var_94 = CVar(CLng(7)) 'Long
  loc_12D41AE: var_D0 = &HBB8
  loc_12D41BA: LateIdCallSt
  loc_12D41C2: var_94 = 0
  loc_12D41CE: var_D0 = CVar(CLng(8)) 'Long
  loc_12D41D3: var_F0 = "Gender"
  loc_12D41DC: LateIdCallSt
  loc_12D41E7: var_94 = CVar(CLng(8)) 'Long
  loc_12D41F2: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D41F9: LateIdCallSt
  loc_12D4204: var_94 = CVar(CLng(8)) 'Long
  loc_12D420F: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D4216: LateIdCallSt
  loc_12D4221: var_94 = CVar(CLng(8)) 'Long
  loc_12D4226: var_D0 = &H2BC
  loc_12D4232: LateIdCallSt
  loc_12D423A: var_94 = 0
  loc_12D4246: var_D0 = CVar(CLng(9)) 'Long
  loc_12D424B: var_F0 = "Mobile No."
  loc_12D4254: LateIdCallSt
  loc_12D425F: var_94 = CVar(CLng(9)) 'Long
  loc_12D426A: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D4271: LateIdCallSt
  loc_12D427C: var_94 = CVar(CLng(9)) 'Long
  loc_12D4287: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D428E: LateIdCallSt
  loc_12D4299: var_94 = CVar(CLng(9)) 'Long
  loc_12D429E: var_D0 = &H514
  loc_12D42AA: LateIdCallSt
  loc_12D42B2: var_94 = 0
  loc_12D42BE: var_D0 = CVar(CLng(&HA)) 'Long
  loc_12D42C3: var_F0 = "Email ID"
  loc_12D42CC: LateIdCallSt
  loc_12D42D7: var_94 = CVar(CLng(&HA)) 'Long
  loc_12D42E2: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D42E9: LateIdCallSt
  loc_12D42F4: var_94 = CVar(CLng(&HA)) 'Long
  loc_12D42FF: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D4306: LateIdCallSt
  loc_12D4311: var_94 = CVar(CLng(&HA)) 'Long
  loc_12D4316: var_D0 = &H9C4
  loc_12D4322: LateIdCallSt
  loc_12D432A: var_94 = 0
  loc_12D4336: var_D0 = CVar(CLng(&HB)) 'Long
  loc_12D433B: var_F0 = "Designation"
  loc_12D4344: LateIdCallSt
  loc_12D434F: var_94 = CVar(CLng(&HB)) 'Long
  loc_12D435A: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D4361: LateIdCallSt
  loc_12D436C: var_94 = CVar(CLng(&HB)) 'Long
  loc_12D4377: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D437E: LateIdCallSt
  loc_12D4389: var_94 = CVar(CLng(&HB)) 'Long
  loc_12D438E: var_D0 = &H5DC
  loc_12D439A: LateIdCallSt
  loc_12D43A2: var_94 = 0
  loc_12D43AE: var_D0 = CVar(CLng(&HC)) 'Long
  loc_12D43B3: var_F0 = "Pic.Path"
  loc_12D43BC: LateIdCallSt
  loc_12D43C7: var_94 = CVar(CLng(&HC)) 'Long
  loc_12D43D2: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D43D9: LateIdCallSt
  loc_12D43E4: var_94 = CVar(CLng(&HC)) 'Long
  loc_12D43EF: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D43F6: LateIdCallSt
  loc_12D4401: var_94 = CVar(CLng(&HC)) 'Long
  loc_12D4406: var_D0 = 0
  loc_12D4412: LateIdCallSt
  loc_12D441A: var_94 = 0
  loc_12D4426: var_D0 = CVar(CLng(&HD)) 'Long
  loc_12D442B: var_F0 = "Sig.Path"
  loc_12D4434: LateIdCallSt
  loc_12D443F: var_94 = CVar(CLng(&HD)) 'Long
  loc_12D444A: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D4451: LateIdCallSt
  loc_12D445C: var_94 = CVar(CLng(&HD)) 'Long
  loc_12D4467: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D446E: LateIdCallSt
  loc_12D4479: var_94 = CVar(CLng(&HD)) 'Long
  loc_12D447E: var_D0 = 0
  loc_12D448A: LateIdCallSt
  loc_12D4492: var_94 = 0
  loc_12D449E: var_D0 = CVar(CLng(&HE)) 'Long
  loc_12D44A3: var_F0 = "Lvl"
  loc_12D44AC: LateIdCallSt
  loc_12D44B7: var_94 = CVar(CLng(&HE)) 'Long
  loc_12D44C2: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D44C9: LateIdCallSt
  loc_12D44D4: var_94 = CVar(CLng(&HE)) 'Long
  loc_12D44DF: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D44E6: LateIdCallSt
  loc_12D44F1: var_94 = CVar(CLng(&HE)) 'Long
  loc_12D44F6: var_D0 = &H15E
  loc_12D4502: LateIdCallSt
  loc_12D450C: Set var_AC = Nothing 
  loc_12D4510: Exit Sub
End Sub

Public Sub Proc_265_93_1016FA4
  'Data Table: 5ADD9C
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  Dim var_D8 As Long
  Dim var_C4 As Variant
  loc_1016D96: var_88 = "Select '' as [All],Name As MemberType,Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & MemVar_1F92078 & "' Order By Name"
  loc_1016DAB: Me.Recordset15.CursorLocation = 3
  loc_1016DD1: New.Open CVar(var_88), CVar(MemVar_1F92044), 3
  loc_1016DDC: CVarUnk
  loc_1016DE1: VerifyVarObj
  loc_1016DE7: Set var_C4 = Me.GridSel
  loc_1016DED: LateIdStAd
  loc_1016E0B: ReDim Preserve global_64(0 To 0)
  loc_1016E22: global_64(0) = 0
  loc_1016E27: Set var_C8 = Me.GridSel
  loc_1016E36: var_C8.Height = CVar(CDbl(4000))
  loc_1016E47: var_C8.Width = CVar(CDbl(4500))
  loc_1016E4C: var_A0 = 0
  loc_1016E55: var_D8 = &H258
  loc_1016E61: LateIdCallSt
  loc_1016E69: var_A0 = 1
  loc_1016E72: var_D8 = &HDAC
  loc_1016E7E: LateIdCallSt
  loc_1016E86: var_A0 = 2
  loc_1016E8F: var_D8 = 0
  loc_1016E9B: LateIdCallSt
  loc_1016EA5: Set var_C8 = Nothing 
  loc_1016EA9: var_A0 = 0
  loc_1016EDA: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_1016EE9: var_A0 = 0
  loc_1016F1A: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_1016F4B: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_1016F7C: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_1016F9B: Me.Check1.Value = CInt(0)
  loc_1016FA3: Exit Sub
End Sub

Public Sub Proc_265_94_E41814
  'Data Table: 5ADD9C
  loc_E417F0: Set var_88 = Me.TopCtrl1
  loc_E417F6: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4180F: If (CStr() = "Browse") Then
  loc_E41812:   Exit Sub
  loc_E41813: End If
  loc_E41813: Exit Sub
End Sub

Public Sub Proc_265_95_DFD220
  'Data Table: 5ADD9C
  Dim Proc_265_95_DFD220FF As String
  loc_DFD21C: Exit Sub
  loc_DFD21D: Proc_265_95_DFD220FF = 
End Sub

Public Sub Proc_265_96_FEFB6C(arg_C, arg_10, arg_14) 'FEFB6C
  'Data Table: 5ADD9C
  Dim var_86 As Integer
  Dim var_8E As Integer
  Dim var_116 As Integer
  loc_FEF987: var_8C = arg_14
  loc_FEF99D: If Not(((arg_C > 0) And (arg_C < &H10))) Then
  loc_FEF9B9:   MsgBox("Invalid Sector No!", &H40, var_D4, var_F4, var_114)
  loc_FEF9C9:   Proc_265_96_FEFB6C = 0
  loc_FEF9D2: Else
  loc_FEF9E0:   If Not(((arg_10 > 0) And (arg_10 < 4))) Then
  loc_FEF9FC:     MsgBox("Invalid Block No!", &H40, var_D4, var_F4, var_114)
  loc_FEFA0C:     Proc_265_96_FEFB6C = 
  loc_FEFA15:   Else
  loc_FEFA20:     If Not((Len(var_8C) <= &H10)) Then
  loc_FEFA3C:       MsgBox("Data String Length Greater than 16 Characters!", &H40, var_D4, var_F4, var_114)
  loc_FEFA4C:       Proc_265_96_FEFB6C = 
  loc_FEFA52:     End If
  loc_FEFA52:   End If
  loc_FEFA52: End If
  loc_FEFA5F: var_8E = (((arg_C * 4) + arg_10) - 1)
  loc_FEFA65: var_116 = var_8E
  loc_FEFA6E: If Not (var_116 = &HFF) Then
  loc_FEFA77:   If Not (var_116 = 0) Then
  loc_FEFA80:     If Not (var_116 = 1) Then
  loc_FEFA89:       If Not (var_116 = 2) Then
  loc_FEFA92:         If Not (var_116 = 3) Then
  loc_FEFA9B:           If Not (var_116 = 7) Then
  loc_FEFAA4:             If Not (var_116 = &HB) Then
  loc_FEFAAD:               If Not (var_116 = &HF) Then
  loc_FEFAB6:                 If Not (var_116 = &H13) Then
  loc_FEFABF:                   If Not (var_116 = &H17) Then
  loc_FEFAC8:                     If Not (var_116 = &H1B) Then
  loc_FEFAD1:                       If Not (var_116 = &H1F) Then
  loc_FEFADA:                         If Not (var_116 = &H23) Then
  loc_FEFAE3:                           If Not (var_116 = &H27) Then
  loc_FEFAEC:                             If Not (var_116 = &H2B) Then
  loc_FEFAF5:                               If Not (var_116 = &H2F) Then
  loc_FEFAFE:                                 If Not (var_116 = &H33) Then
  loc_FEFB07:                                   If Not (var_116 = &H37) Then
  loc_FEFB10:                                     If Not (var_116 = &H3B) Then
  loc_FEFB19:                                       If (var_116 = &H3F) Then
  loc_FEFB1C:                                       End If
  loc_FEFB1C:                                     End If
  loc_FEFB1C:                                   End If
  loc_FEFB1C:                                 End If
  loc_FEFB1C:                               End If
  loc_FEFB1C:                             End If
  loc_FEFB1C:                           End If
  loc_FEFB1C:                         End If
  loc_FEFB1C:                       End If
  loc_FEFB1C:                     End If
  loc_FEFB1C:                   End If
  loc_FEFB1C:                 End If
  loc_FEFB1C:               End If
  loc_FEFB1C:             End If
  loc_FEFB1C:           End If
  loc_FEFB1C:         End If
  loc_FEFB1C:       End If
  loc_FEFB1C:     End If
  loc_FEFB1C:   End If
  loc_FEFB35:   MsgBox("Invalid Block No Will Damage the Card!", &H40, var_D4, var_F4, var_114)
  loc_FEFB48: Else
  loc_FEFB5A:   Call 0.Method_arg_20 (arg_C, var_8E, var_8C)
  loc_FEFB62:   var_86 = var_118
  loc_FEFB65: End If
  loc_FEFB65: Proc_265_96_FEFB6C = var_86
End Sub

Public Sub Proc_265_97_10F7CDC
  'Data Table: 5ADD9C
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_5ADDC8 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10F79FF: If (Me.RecordCount = 0) Then
  loc_10F7A02:   Proc_265_97_10F7CDC = 
  loc_10F7A08: End If
  loc_10F7A0C: Set var_90 = Me.TopCtrl1
  loc_10F7A12: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F7A2B: If (CStr() = "Add") Then
  loc_10F7A34:   var_F4 = 0
  loc_10F7A69:   Set var_90 = Me.Txt
  loc_10F7A6F:   Call 0.Method_Proc_265_97_10F7CDC0 (CInt(1), var_A8, var_AC, "Select Count(*) From Subgroup  Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and subcode='", var_A0, -1)
  loc_10F7A98:   Set var_B8 = Me.Txt
  loc_10F7A9E:   Call 0.Method_Proc_265_97_10F7CDC0 (CInt(1), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F7AA6:   var_F4 = var_BC.Text
  loc_10F7ABF:   unk_5ADDC8.Execute var_F8 & var_C0 & "'", var_108, 
  loc_10F7AC7:    = var_A8.Tag.Fields
  loc_10F7ACF:    = var_E4.Item()
  loc_10F7AD7:    = var_F8.Value
  loc_10F7B12:   If (var_108 > 0) Then
  loc_10F7B20:     var_108 = "Information"
  loc_10F7B30:     var_A0 = "Duplicate Name"
  loc_10F7B36:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F7B51:     Set var_90 = Me.Txt
  loc_10F7B57:     Call 0.Method_Proc_265_97_10F7CDC0 (CInt(1))
  loc_10F7B5F:     var_A8.SetFocus
  loc_10F7B70:     Proc_265_97_10F7CDC = &HFF
  loc_10F7B76:   End If
  loc_10F7B79: Else
  loc_10F7B7F:   var_F4 = 0
  loc_10F7BB4:   Set var_90 = Me.Txt
  loc_10F7BBA:   Call 0.Method_Proc_265_97_10F7CDC0 (CInt(1), var_A8, var_AC, "Select Count(*) From SubGroup Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and subcode='", var_A0, -1)
  loc_10F7BE3:   Set var_B8 = Me.Txt
  loc_10F7BE9:   Call 0.Method_Proc_265_97_10F7CDC0 (CInt(1), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F7BF1:   var_F4 = var_BC.Text
  loc_10F7C1B:   unk_5ADDC8.Execute var_F8 & var_C0 & "' And Name<>'" & global_72 & "'", var_108, var_A8
  loc_10F7C23:    = var_A8.Tag.Fields
  loc_10F7C2B:    = var_E4.Item()
  loc_10F7C33:    = var_F8.Value
  loc_10F7C72:   If (var_108 > 0) Then
  loc_10F7C96:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F7CB1:     Set var_90 = Me.Txt
  loc_10F7CB7:     Call 0.Method_Proc_265_97_10F7CDC0 (CInt(1))
  loc_10F7CBF:     var_A8.SetFocus
  loc_10F7CD0:     Proc_265_97_10F7CDC = &HFF
  loc_10F7CD6:   End If
  loc_10F7CD6: End If
  loc_10F7CD6: Proc_265_97_10F7CDC = var_A8
End Sub

Public Sub Proc_265_98_1082EA4
  'Data Table: 5ADD9C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_5ADDC8 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1082C37: If (Me.RecordCount = 0) Then
  loc_1082C3A:   Proc_265_98_1082EA4 = 
  loc_1082C40: End If
  loc_1082C44: Set var_90 = Me.TopCtrl1
  loc_1082C4A: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1082C63: If (CStr() = "Add") Then
  loc_1082CA1:   Set var_90 = Me.Txt
  loc_1082CA7:   Call 0.Method_Proc_265_98_1082EA40 (CInt(6), var_A8, var_AC, "Select Count(*) From Subgroup  Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and CardNo='", var_A0, -1)
  loc_1082CC8:   unk_5ADDC8.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1082CD8:    = var_D0.Item()
  loc_1082CE0:    = var_E4.Value
  loc_1082D11:   If (var_A8.Text.Fields > 0) Then
  loc_1082D2F:     var_A0 = "Duplicate Card No."
  loc_1082D35:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1082D50:     Set var_90 = Me.Txt
  loc_1082D56:     Call 0.Method_Proc_265_98_1082EA40 (CInt(6))
  loc_1082D5E:     var_A8.SetFocus
  loc_1082D6F:     Proc_265_98_1082EA4 = &HFF
  loc_1082D75:   End If
  loc_1082D78: Else
  loc_1082DB3:   Set var_90 = Me.Txt
  loc_1082DB9:   Call 0.Method_Proc_265_98_1082EA40 (CInt(6), var_A8, var_AC, "Select Count(*) From SubGroup Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and CardNo='", var_A0, -1)
  loc_1082DEB:   unk_5ADDC8.Execute var_D0 & var_AC & "' And CardNo<>'" & global_76 & "'", 0, var_E4
  loc_1082DFB:    = var_D0.Item(var_A8)
  loc_1082E03:    = var_E4.Value
  loc_1082E38:   If (var_A8.Text.Fields > 0) Then
  loc_1082E5C:     MsgBox("Duplicate Card No.", &H40, "Information", var_114, var_134)
  loc_1082E77:     Set var_90 = Me.Txt
  loc_1082E7D:     Call 0.Method_Proc_265_98_1082EA40 (CInt(6))
  loc_1082E85:     var_A8.SetFocus
  loc_1082E96:     Proc_265_98_1082EA4 = &HFF
  loc_1082E9C:   End If
  loc_1082E9C: End If
  loc_1082E9C: Proc_265_98_1082EA4 = var_A8
End Sub

Public Sub Proc_265_99_FA1BA4(arg_C, arg_10) 'FA1BA4
  'Data Table: 5ADD9C
  Dim var_8A As Integer
  Dim var_112 As Integer
  loc_FA1A3C: If Not(((arg_C > 0) And (arg_C < &H10))) Then
  loc_FA1A58:   MsgBox("Invalid Sector No!", &H40, var_D0, var_F0, var_110)
  loc_FA1A68:   Proc_265_99_FA1BA4 = 
  loc_FA1A71: Else
  loc_FA1A7F:   If Not(((arg_10 > 0) And (arg_10 < 4))) Then
  loc_FA1A9B:     MsgBox("Invalid Block No!", &H40, var_D0, var_F0, var_110)
  loc_FA1AAB:     Proc_265_99_FA1BA4 = 
  loc_FA1AB1:   End If
  loc_FA1AB1: End If
  loc_FA1ABE: var_8A = (((arg_C * 4) + arg_10) - 1)
  loc_FA1AC4: var_112 = var_8A
  loc_FA1ACD: If Not (var_112 = 3) Then
  loc_FA1AD6:   If Not (var_112 = 7) Then
  loc_FA1ADF:     If Not (var_112 = &HB) Then
  loc_FA1AE8:       If Not (var_112 = &HF) Then
  loc_FA1AF1:         If Not (var_112 = &H13) Then
  loc_FA1AFA:           If Not (var_112 = &H17) Then
  loc_FA1B03:             If Not (var_112 = &H1B) Then
  loc_FA1B0C:               If Not (var_112 = &H1F) Then
  loc_FA1B15:                 If Not (var_112 = &H23) Then
  loc_FA1B1E:                   If Not (var_112 = &H27) Then
  loc_FA1B27:                     If Not (var_112 = &H2B) Then
  loc_FA1B30:                       If Not (var_112 = &H2F) Then
  loc_FA1B39:                         If Not (var_112 = &H33) Then
  loc_FA1B42:                           If Not (var_112 = &H37) Then
  loc_FA1B4B:                             If Not (var_112 = &H3B) Then
  loc_FA1B54:                               If (var_112 = &H3F) Then
  loc_FA1B57:                               End If
  loc_FA1B57:                             End If
  loc_FA1B57:                           End If
  loc_FA1B57:                         End If
  loc_FA1B57:                       End If
  loc_FA1B57:                     End If
  loc_FA1B57:                   End If
  loc_FA1B57:                 End If
  loc_FA1B57:               End If
  loc_FA1B57:             End If
  loc_FA1B57:           End If
  loc_FA1B57:         End If
  loc_FA1B57:       End If
  loc_FA1B57:     End If
  loc_FA1B57:   End If
  loc_FA1B70:   MsgBox("Invalid Block No Will Damage the Card!", &H40, var_D0, var_F0, var_110)
  loc_FA1B83: Else
  loc_FA1B92:   Call 0.Method_arg_1C (arg_C, var_8A, var_118)
  loc_FA1B9A:   var_88 = var_118
  loc_FA1B9D: End If
  loc_FA1B9D: Proc_265_99_FA1BA4 = var_112
End Sub

Public Sub Proc_265_100_FA1808
  'Data Table: 5ADD9C
  Dim var_90 As TextBox
  Dim var_C4 As Variant
  Dim var_10C As Variant
  Dim var_EC As TextBox
  loc_FA16B2: Set var_8C = Me.TxtA
  loc_FA16B8: Call 0.Method_Proc_265_100_FA18080 (CInt(9), var_90)
  loc_FA16D7: If (var_90.Text <> vbNullString) Then
  loc_FA16EA:   Set var_8C = Me.TxtA
  loc_FA16F0:   Call 0.Method_Proc_265_100_FA18080 (CInt(9), var_90)
  loc_FA1706:   var_C4 = InStr(1, CVar(var_90), "@", 0)
  loc_FA1724:   Set var_E8 = Me.TxtA
  loc_FA172A:   Call 0.Method_Proc_265_100_FA18080 (CInt(9), var_EC)
  loc_FA1732:   var_10C = CVar(var_EC) 'Address
  loc_FA1766:   If CBool((var_C4 = 0) Or (InStr(1, var_10C, ".", 0) = 0)) Then
  loc_FA1782:     MsgBox("Please fill a Valid EMail Id.", 0, var_C4, var_E4, var_10C)
  loc_FA1797:     Proc_265_100_FA1808 = 0
  loc_FA179D:   End If
  loc_FA17A8:   Set var_8C = Me.TxtA
  loc_FA17AE:   Call 0.Method_Proc_265_100_FA18080 (CInt(9))
  loc_FA17D4:   Set var_E8 = Me.TxtA
  loc_FA17DA:   Call 0.Method_Proc_265_100_FA18080 (CInt(9), var_EC)
  loc_FA17E2:   var_EC.Text = CStr(LCase(CVar(var_90)))
  loc_FA17FA: End If
  loc_FA17FF: Proc_265_100_FA1808 = &HFF
End Sub

Public Sub Proc_265_101_120167C(arg_C, arg_10) '120167C
  'Data Table: 5ADD9C
  Dim var_B4 As Integer
  Dim var_90 As Integer
  Dim var_A4 As Variant
  Dim var_E4 As Long
  Dim var_F8 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_190 As Variant
  Dim var_10C As Variant
  Dim var_170 As Variant
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_1A8 As String
  loc_12011E6: On Error Goto loc_1201669
  loc_12011EE: global_80 = &HFF
  loc_12011F7: global_84 = vbNullString
  loc_12011FE: var_8C = vbNullString
  loc_1201209: CRefVarAry
  loc_1201211: For var_94 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_94 'Integer
  loc_1201232:   If (arg_C(var_8E) = 0) Then
  loc_1201235:     GoTo loc_120154B
  loc_1201238:   End If
  loc_1201249:   var_90 = CInt(arg_C(var_8E))
  loc_1201253:   var_A4 = CVar(CLng(var_90)) 'Long
  loc_1201258:   var_E4 = 0
  loc_1201287:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_1201293:     If (CInt(arg_10) = 0) Then
  loc_120129A:       var_A4 = CVar(CLng(var_90)) 'Long
  loc_120129F:       var_E4 = 2
  loc_12012C1:       var_190 = CVar(var_8C) 'String
  loc_1201313:       var_1A0 = (CVar(CLng(var_90)) + IIf((var_8C = vbNullString), CVar(CStr(Me.GridSel.TextMatrix))), CVar(2 & CStr(Me.GridSel.TextMatrix)))))
  loc_1201318:       var_8C = CStr(var_1A0)
  loc_1201339:     Else
  loc_1201342:       If (CInt(arg_10) = 1) Then
  loc_1201349:         var_A4 = CVar(CLng(var_90)) 'Long
  loc_120134E:         var_E4 = 2
  loc_1201370:         var_190 = CVar(var_8C) 'String
  loc_120137A:         var_1A8 = "," & "'"
  loc_12013D6:         var_180 = IIf((var_8C = vbNullString), CVar("'" & CStr(Me.GridSel.TextMatrix)) & "'"), CVar(2 & CStr(Me.GridSel.TextMatrix)) & "'"))
  loc_12013DE:         var_1A0 = (CVar(CLng(var_90)) + var_180)
  loc_12013E3:         var_8C = CStr(var_1A0)
  loc_120140B:       End If
  loc_120140B:     End If
  loc_1201415:     var_A4 = CVar(CLng(var_90)) 'Long
  loc_1201453:     If (Len(1 & CStr(Me.GridSel.TextMatrix))) < &HFF) Then
  loc_120145A:       var_A4 = CVar(CLng(var_90)) 'Long
  loc_120145F:       var_E4 = 1
  loc_1201484:       var_190 = CVar(global_84) 'String
  loc_12014B5:       var_170 = CVar(1 & CStr(Me.GridSel.TextMatrix))) 'String
  loc_12014BC:       var_160 = CVar(CStr(Me.GridSel.TextMatrix))) 'String
  loc_12014D1:       var_180 = IIf((global_84 = vbNullString), var_160, var_170)
  loc_12014D9:       var_1A0 = (CVar(CLng(var_90)) + var_180)
  loc_12014E4:       global_84 = CStr(var_1A0)
  loc_1201507:     End If
  loc_120150B:     var_A4 = CVar(CLng(var_90)) 'Long
  loc_1201510:     var_E4 = 0
  loc_1201519:     var_10C = vbNullString
  loc_1201523:     Set var_F8 = Me.GridSel
  loc_1201529:     LateIdCallSt
  loc_1201537:   Else
  loc_120153E:     var_B4 = 0
  loc_1201547:     VarIndexSt
  loc_120154B:   End If
  loc_120154B:   ' Referenced from: 1201235
  loc_120154E: Next var_94 'Integer
  loc_120155B: CRefVarAry
  loc_1201563: For var_1B4 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1B4 'Integer
  loc_120159B:   If CBool(arg_C(var_8E) <> 0) Then
  loc_12015A2:     var_A4 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_12015A7:     var_E4 = 0
  loc_12015B0:     var_10C = "ü"
  loc_12015BA:     Set var_F8 = Me.GridSel
  loc_12015C0:     LateIdCallSt
  loc_12015CB:   End If
  loc_12015CE: Next var_1B4 'Integer
  loc_12015DB: If (var_8C = vbNullString) Then
  loc_12015DE:   var_A4 = 0
  loc_12015E7:   var_E4 = 1
  loc_12015FA:   var_C4 = Me.GridSel.TextMatrix)
  loc_1201622:   MsgBox(CVar("Select " & CStr(var_C4)), &H40, var_160, var_170, var_180)
  loc_120163E:   Set var_F8 = Me.GridSel
  loc_1201657:   Proc_265_101_120167C = 0
  loc_120165D: End If
  loc_1201660: var_88 = var_8C
  loc_1201663: Proc_265_101_120167C = GridSel.DispID_8001
  loc_1201669: ' Referenced from: 12011E6
  loc_1201671: Proc_6_60_E62BC4(0, var_C4)
  loc_1201676: Proc_265_101_120167C = var_E4
End Sub

Public Sub Proc_265_102_13E8120(arg_C) '13E8120
  'Data Table: 5ADD9C
  Dim var_8C As Recordset15
  loc_13E7701: Set var_8C = arg_C 
  loc_13E7729: var_8C.Fields.Append "mLine", &HC8, 2
  loc_13E7755: var_8C.Fields.Append "SNo", 2, 2
  loc_13E7781: var_8C.Fields.Append "Relation", &HC8, &H14
  loc_13E77AD: var_8C.Fields.Append "Name", &HC8, &H4B
  loc_13E77D9: var_8C.Fields.Append "Sex", &HC8, 6
  loc_13E7805: var_8C.Fields.Append "MaritalStatus", &HC8, 7
  loc_13E7831: var_8C.Fields.Append "Birthday", 7, 0
  loc_13E785D: var_8C.Fields.Append "PlaceOfBirth", &HC8, &H32
  loc_13E7889: var_8C.Fields.Append "Anniversary", 7, 0
  loc_13E78B5: var_8C.Fields.Append "Phone", &HC8, &H32
  loc_13E78E1: var_8C.Fields.Append "Mobile", &HC8, &H32
  loc_13E790D: var_8C.Fields.Append "Fax", &HC8, &H3C
  loc_13E7939: var_8C.Fields.Append "EMail", &HC8, &H32
  loc_13E7965: var_8C.Fields.Append "Nationality", &HC8, &H1E
  loc_13E7991: var_8C.Fields.Append "Religion", &HC8, &H1E
  loc_13E79BD: var_8C.Fields.Append "BloodGroup", &HC8, 3
  loc_13E79E9: var_8C.Fields.Append "ProOcc", &HC8, &H32
  loc_13E7A15: var_8C.Fields.Append "EdQuali", &HC8, &H32
  loc_13E7A41: var_8C.Fields.Append "TBusiness", &HC8, &H32
  loc_13E7A6D: var_8C.Fields.Append "TurnOver", &HC8, &H19
  loc_13E7A99: var_8C.Fields.Append "Desig", &HC8, &H32
  loc_13E7AC5: var_8C.Fields.Append "Passport", &HC8, &H32
  loc_13E7AF1: var_8C.Fields.Append "PAN", &HC8, &H14
  loc_13E7B1D: var_8C.Fields.Append "SpInterest", &HC8, &H50
  loc_13E7B49: var_8C.Fields.Append "MemberId", &HC8, &H19
  loc_13E7B75: var_8C.Fields.Append "CardRegId", &HC8, &HB
  loc_13E7BA1: var_8C.Fields.Append "CardIssDate", 7, 0
  loc_13E7BCD: var_8C.Fields.Append "CardValidUpto", 7, 0
  loc_13E7BF9: var_8C.Fields.Append "MemberType", &HC8, &H4B
  loc_13E7C25: var_8C.Fields.Append "AcName", &HC8, &H4B
  loc_13E7C51: var_8C.Fields.Append "AllowCredit", &HC8, 3
  loc_13E7C7D: var_8C.Fields.Append "CreditLimit", 5, &H13
  loc_13E7CA9: var_8C.Fields.Append "Discount", 5, &H13
  loc_13E7CD5: var_8C.Fields.Append "ActiveYN", &HC8, 3
  loc_13E7D01: var_8C.Fields.Append "BlackListed", &HC8, 3
  loc_13E7D2D: var_8C.Fields.Append "ReasonBlackList", &HC8, &H23
  loc_13E7D59: var_8C.Fields.Append "BlackListedBy", &HC8, &HA
  loc_13E7D85: var_8C.Fields.Append "AddRType", &HC8, &H1E
  loc_13E7DB1: var_8C.Fields.Append "AddR1", &HC8, &H32
  loc_13E7DDD: var_8C.Fields.Append "AddR2", &HC8, &H32
  loc_13E7E09: var_8C.Fields.Append "AddR3", &HC8, &H32
  loc_13E7E35: var_8C.Fields.Append "CityR", &HC8, &H23
  loc_13E7E61: var_8C.Fields.Append "StateR", &HC8, &H23
  loc_13E7E8D: var_8C.Fields.Append "CountryR", &HC8, &H23
  loc_13E7EB9: var_8C.Fields.Append "PinCodeR", &HC8, &HC
  loc_13E7EE5: var_8C.Fields.Append "AddWType", &HC8, &H1E
  loc_13E7F11: var_8C.Fields.Append "AddW1", &HC8, &H32
  loc_13E7F3D: var_8C.Fields.Append "AddW2", &HC8, &H32
  loc_13E7F69: var_8C.Fields.Append "AddW3", &HC8, &H32
  loc_13E7F95: var_8C.Fields.Append "CityW", &HC8, &H23
  loc_13E7FC1: var_8C.Fields.Append "StateW", &HC8, &H23
  loc_13E7FED: var_8C.Fields.Append "CountryW", &HC8, &H23
  loc_13E8019: var_8C.Fields.Append "PinCodeW", &HC8, &HC
  loc_13E8045: var_8C.Fields.Append "CurrBal", 5, &H13
  loc_13E8071: var_8C.Fields.Append "CurBalType", &HC8, 2
  loc_13E809D: var_8C.Fields.Append "Picture", &HCD, &H3E8
  loc_13E80C9: var_8C.Fields.Append "Mark", &HC8, 1
  loc_13E80D9: var_8C.CursorType = 3
  loc_13E80E6: var_8C.LockType = 3
  loc_13E8105: var_8C.Open var_A0, var_B0, -1
  loc_13E810C: Set var_8C = Nothing 
  loc_13E8113: Set var_88 = arg_C 
  loc_13E8117: Proc_265_102_13E8120 = -1
End Sub

Public Sub Proc_265_103_10EBC50(arg_C) '10EBC50
  'Data Table: 5ADD9C
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_10EB92E: Set var_8C = Me.Txt
  loc_10EB934: Call 0.Method_Proc_265_103_10EBC50C (var_8E, var_86)
  loc_10EB944: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10EB959:   If ((var_86 = 9) Or (var_86 = &HA)) Then
  loc_10EB95C:     GoTo loc_10EB9C1
  loc_10EB95F:   End If
  loc_10EB966:   If (var_86 = &H23) Then
  loc_10EB97A:     Set var_8C = Me.Txt
  loc_10EB980:     Call 0.Method_Proc_265_103_10EBC500 (CInt(var_86), var_98)
  loc_10EB988:     var_98.Locked = Not(arg_C)
  loc_10EB997:   Else
  loc_10EB9A7:     Set var_8C = Me.Txt
  loc_10EB9AD:     Call 0.Method_Proc_265_103_10EBC500 (CInt(var_86), var_98)
  loc_10EB9B5:     var_98.Enabled = arg_C
  loc_10EB9C1:   End If
  loc_10EB9C1:   ' Referenced from: 10EB95C
  loc_10EB9C4: Next var_92 'Byte
  loc_10EB9D8: Set var_8C = Me.TxtA
  loc_10EB9DE: Call 0.Method_Proc_265_103_10EBC508 (var_8E, var_86)
  loc_10EB9EB: For var_9C =  To CByte(var_8E): CByte(0) = var_9C 'Byte
  loc_10EBA01:   Set var_8C = Me.TxtA
  loc_10EBA07:   Call 0.Method_Proc_265_103_10EBC500 (CInt(var_86), var_98)
  loc_10EBA0F:   var_98.Enabled = arg_C
  loc_10EBA1E: Next var_9C 'Byte
  loc_10EBA31: Me.ChkCorresAdd.Enabled = arg_C
  loc_10EBA4B: Set var_8C = Me.CmdAdd
  loc_10EBA51: Call 0.Method_Proc_265_103_10EBC500 (CInt(3), var_98)
  loc_10EBA59: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(arg_C)
  loc_10EBA72: Set var_8C = Me.Txt
  loc_10EBA78: Call 0.Method_Proc_265_103_10EBC500 (CInt(0), var_98)
  loc_10EBA80: var_98.Enabled = False
  loc_10EBA99: Set var_8C = Me.Txt
  loc_10EBA9F: Call 0.Method_Proc_265_103_10EBC500 (CInt(9), var_98)
  loc_10EBAA7: var_98.Enabled = False
  loc_10EBAC0: Set var_8C = Me.Txt
  loc_10EBAC6: Call 0.Method_Proc_265_103_10EBC500 (CInt(&HA), var_98)
  loc_10EBACE: var_98.Enabled = False
  loc_10EBAE6: Me.txtCurrBal.Enabled = False
  loc_10EBAFB: Set var_8C = Me.TxtA
  loc_10EBB01: Call 0.Method_Proc_265_103_10EBC500 (CInt(4), var_98)
  loc_10EBB09: var_98.Enabled = False
  loc_10EBB22: Set var_8C = Me.TxtA
  loc_10EBB28: Call 0.Method_Proc_265_103_10EBC500 (CInt(5), var_98)
  loc_10EBB30: var_98.Enabled = False
  loc_10EBB49: Set var_8C = Me.Txt
  loc_10EBB4F: Call 0.Method_Proc_265_103_10EBC500 (CInt(&H20), var_98)
  loc_10EBB57: var_98.Enabled = True
  loc_10EBB70: Set var_8C = Me.Txt
  loc_10EBB76: Call 0.Method_Proc_265_103_10EBC500 (CInt(&H21), var_98)
  loc_10EBB7E: var_98.Enabled = True
  loc_10EBB97: Set var_8C = Me.Txt
  loc_10EBB9D: Call 0.Method_Proc_265_103_10EBC500 (CInt(&H22), var_98)
  loc_10EBBA5: var_98.Enabled = True
  loc_10EBBBE: Set var_8C = Me.Txt
  loc_10EBBC4: Call 0.Method_Proc_265_103_10EBC500 (CInt(&H31), var_98)
  loc_10EBBCC: var_98.Enabled = True
  loc_10EBBE5: Set var_8C = Me.Txt
  loc_10EBBEB: Call 0.Method_Proc_265_103_10EBC500 (CInt(&H32), var_98)
  loc_10EBBF3: var_98.Enabled = True
  loc_10EBC0C: Set var_8C = Me.Txt
  loc_10EBC12: Call 0.Method_Proc_265_103_10EBC500 (CInt(&H33), var_98)
  loc_10EBC1A: var_98.Enabled = True
  loc_10EBC33: Set var_8C = Me.Txt
  loc_10EBC39: Call 0.Method_Proc_265_103_10EBC500 (CInt(&H34), var_98)
  loc_10EBC41: var_98.Enabled = True
  loc_10EBC4D: Exit Sub
End Sub

Public Sub Proc_265_104_124C4B4
  'Data Table: 5ADD9C
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  loc_124BF6E: Set var_8C = Me.Txt
  loc_124BF74: Call 0.Method_Proc_265_104_124C4B4C (var_8E, var_86)
  loc_124BF84: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_124BF9A:   Set var_8C = Me.Txt
  loc_124BFA0:   Call 0.Method_Proc_265_104_124C4B40 (CInt(var_86), var_98)
  loc_124BFA8:   var_98.Text = vbNullString
  loc_124BFC4:   Set var_8C = Me.Txt
  loc_124BFCA:   Call 0.Method_Proc_265_104_124C4B40 (CInt(var_86), var_98)
  loc_124BFD2:   var_98.Tag = vbNullString
  loc_124BFE1: Next var_92 'Byte
  loc_124C005: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C01A: Me.ImgMemPhoto.Picture = var_8C
  loc_124C033: Me.ImgMemPhoto.Tag = vbNullString
  loc_124C041: Set var_8C = Me.ImgMemPhoto
  loc_124C047: var_8C.Visible = True
  loc_124C06D: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C082: Me.ImgMemSign.Picture = var_8C
  loc_124C09B: Me.ImgMemSign.Tag = vbNullString
  loc_124C0A9: Set var_8C = Me.ImgMemSign
  loc_124C0AF: var_8C.Visible = True
  loc_124C0D5: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C0EA: Me.ImgFamilyMemPhoto.Picture = var_8C
  loc_124C103: Me.ImgFamilyMemPhoto.Tag = vbNullString
  loc_124C111: Set var_8C = Me.ImgFamilyMemPhoto
  loc_124C117: var_8C.Visible = True
  loc_124C13D: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C152: Me.ImgFamilyMemSign.Picture = var_8C
  loc_124C16B: Me.ImgFamilyMemSign.Tag = vbNullString
  loc_124C179: Set var_8C = Me.ImgFamilyMemSign
  loc_124C17F: var_8C.Visible = True
  loc_124C1A5: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C1BA: Me.ImgPropMemPhoto.Picture = var_8C
  loc_124C1D3: Me.ImgPropMemPhoto.Tag = vbNullString
  loc_124C1E1: Set var_8C = Me.ImgPropMemPhoto
  loc_124C1E7: var_8C.Visible = True
  loc_124C20D: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C222: Me.ImgPropMemSign.Picture = var_8C
  loc_124C23B: Me.ImgPropMemSign.Tag = vbNullString
  loc_124C24F: Me.ImgPropMemSign.Visible = True
  loc_124C264: Me.LblOpBalType.Caption = vbNullString
  loc_124C279: Me.LblCurBalType.Caption = vbNullString
  loc_124C28E: Me.txtCurrBal.Text = vbNullString
  loc_124C2A9: Me.FGrid.Rows = 1
  loc_124C2C6: var_10C = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_124C2CE: Set var_98 = Me.FGrid
  loc_124C2FD: Me.FGrid.FixedRows = 1
  loc_124C318: Me.FGrid1.Rows = 1
  loc_124C335: var_10C = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_124C33D: Set var_98 = Me.FGrid1
  loc_124C36C: Me.FGrid1.FixedRows = 1
  loc_124C387: Me.FAGrid.Rows = 1
  loc_124C3A4: var_10C = CVar(CStr(CLng(Me.FAGrid.Rows))) 'String
  loc_124C3AC: Set var_98 = Me.FAGrid
  loc_124C3DB: Me.FAGrid.FixedRows = 1
  loc_124C3F6: Me.FPGrid.Rows = 1
  loc_124C41B: Set var_98 = Me.FPGrid
  loc_124C44A: Me.FPGrid.FixedRows = 1
  loc_124C474: Proc_183_1_F5B310(Me, CStr(-2147483643), CStr(&HC00000), FPGrid.DispID_10000, CVar(CStr(CLng(Me.FAGrid.Rows))), FAGrid.DispID_10000, CVar(CStr(CLng(Me.FAGrid.Rows))), FGrid1.DispID_10000)
  loc_124C492: Me.txtCurrBal.BackColor = -2147483643
  loc_124C4A9: Me.txtCurrBal.ForeColor = &HC00000
  loc_124C4B1: Exit Sub
End Sub

Public Sub Proc_265_105_EAFDB4
  'Data Table: 5ADD9C
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_EAFD28: Set var_8C = Me.TxtA
  loc_EAFD2E: Call 0.Method_Proc_265_105_EAFDB4C (var_8E, var_86)
  loc_EAFD3C: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_EAFD4F:   Set var_8C = Me.TxtA
  loc_EAFD55:   Call 0.Method_Proc_265_105_EAFDB40 (var_86, var_98)
  loc_EAFD5D:   var_98.Text = vbNullString
  loc_EAFD76:   Set var_8C = Me.TxtA
  loc_EAFD7C:   Call 0.Method_Proc_265_105_EAFDB40 (var_86, var_98)
  loc_EAFD84:   var_98.Tag = vbNullString
  loc_EAFD93: Next var_92 'Integer
  loc_EAFDA8: Me.ChkCorresAdd.Value = CInt(0)
  loc_EAFDB0: Exit Sub
End Sub

Public Sub Proc_265_106_104DB04
  'Data Table: 5ADD9C
  loc_104D8A8: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_104D8BA:   Me.DGAcName.Visible = False
  loc_104D8C2: End If
  loc_104D8DE: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_104D8F0:   Me.DGUnderAc.Visible = False
  loc_104D8F8: End If
  loc_104D914: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_104D926:   Me.DGCity.Visible = False
  loc_104D92E: End If
  loc_104D949: If (Me.FrmList.Visible = &HFF) Then
  loc_104D958:   Me.FrmList.Visible = False
  loc_104D960: End If
  loc_104D97C: If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_104D98E:   Me.DgMemType.Visible = False
  loc_104D996: End If
  loc_104D9B2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_104D9C4:   Me.FGPoint.Visible = False
  loc_104D9CC: End If
  loc_104D9E8: If (CBool(Me.DGMemMeshAc.Visible) = &HFF) Then
  loc_104D9FA:   Me.DGMemMeshAc.Visible = False
  loc_104DA02: End If
  loc_104DA1D: If (Me.frmList1.Visible = &HFF) Then
  loc_104DA2C:   Me.frmList1.Visible = False
  loc_104DA34: End If
  loc_104DA4F: If (Me.FrmList2.Visible = &HFF) Then
  loc_104DA5E:   Me.FrmList2.Visible = False
  loc_104DA66: End If
  loc_104DA81: If (Me.FrmList4.Visible = &HFF) Then
  loc_104DA90:   Me.FrmList4.Visible = False
  loc_104DA98: End If
  loc_104DAB3: If (Me.CmdImgDelete.Visible = &HFF) Then
  loc_104DAC2:   Me.CmdImgDelete.Visible = False
  loc_104DACA: End If
  loc_104DAE6: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_104DAF8:   Me.DGRev.Visible = False
  loc_104DB00: End If
  loc_104DB00: Exit Sub
End Sub

Public Sub Proc_265_107_1057550
  'Data Table: 5ADD9C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_10572CC: Set var_88 = Me.FGrid
  loc_10572DB: var_88.Height = CVar(CDbl(1380))
  loc_10572EC: var_88.Left = CVar(CDbl(240))
  loc_10572FD: var_88.Top = CVar(CDbl(2475))
  loc_105730E: var_88.RowHeightMin = &HDC
  loc_105731F: var_88.Cols = 6
  loc_1057324: var_98 = 0
  loc_1057330: var_B8 = CVar(CLng(0)) 'Long
  loc_1057335: var_D8 = "S.No"
  loc_105733E: LateIdCallSt
  loc_1057349: var_98 = CVar(CLng(0)) 'Long
  loc_1057354: var_B8 = CVar(CInt(1)) 'Integer
  loc_105735B: LateIdCallSt
  loc_1057366: var_98 = CVar(CLng(0)) 'Long
  loc_105736B: var_B8 = &H1C2
  loc_1057377: LateIdCallSt
  loc_105737F: var_98 = 0
  loc_105738B: var_B8 = CVar(CLng(5)) 'Long
  loc_1057390: var_D8 = "Voucher No"
  loc_1057399: LateIdCallSt
  loc_10573A4: var_98 = CVar(CLng(5)) 'Long
  loc_10573AF: var_B8 = CVar(CInt(1)) 'Integer
  loc_10573B6: LateIdCallSt
  loc_10573C1: var_98 = CVar(CLng(5)) 'Long
  loc_10573C6: var_B8 = 0
  loc_10573D2: LateIdCallSt
  loc_10573DA: var_98 = 0
  loc_10573E6: var_B8 = CVar(CLng(1)) 'Long
  loc_10573EB: var_D8 = "Ref. Date"
  loc_10573F4: LateIdCallSt
  loc_10573FF: var_98 = CVar(CLng(1)) 'Long
  loc_105740A: var_B8 = CVar(CInt(1)) 'Integer
  loc_1057411: LateIdCallSt
  loc_105741C: var_98 = CVar(CLng(1)) 'Long
  loc_1057421: var_B8 = &H5DC
  loc_105742D: LateIdCallSt
  loc_1057435: var_98 = 0
  loc_1057441: var_B8 = CVar(CLng(2)) 'Long
  loc_1057446: var_D8 = "Narration"
  loc_105744F: LateIdCallSt
  loc_105745A: var_98 = CVar(CLng(2)) 'Long
  loc_1057465: var_B8 = CVar(CInt(1)) 'Integer
  loc_105746C: LateIdCallSt
  loc_1057477: var_98 = CVar(CLng(2)) 'Long
  loc_105747C: var_B8 = &H640
  loc_1057488: LateIdCallSt
  loc_1057490: var_98 = 0
  loc_105749C: var_B8 = CVar(CLng(3)) 'Long
  loc_10574A1: var_D8 = "Amount"
  loc_10574AA: LateIdCallSt
  loc_10574B5: var_98 = CVar(CLng(3)) 'Long
  loc_10574C0: var_B8 = CVar(CInt(7)) 'Integer
  loc_10574C7: LateIdCallSt
  loc_10574D2: var_98 = CVar(CLng(3)) 'Long
  loc_10574D7: var_B8 = &H4B0
  loc_10574E3: LateIdCallSt
  loc_10574EB: var_98 = 0
  loc_10574F7: var_B8 = CVar(CLng(4)) 'Long
  loc_10574FC: var_D8 = "Cr/Dr"
  loc_1057505: LateIdCallSt
  loc_1057510: var_98 = CVar(CLng(4)) 'Long
  loc_105751B: var_B8 = CVar(CInt(1)) 'Integer
  loc_1057522: LateIdCallSt
  loc_105752D: var_98 = CVar(CLng(4)) 'Long
  loc_1057532: var_B8 = &H258
  loc_105753E: LateIdCallSt
  loc_1057548: Set var_88 = Nothing 
  loc_105754C: Exit Sub
End Sub

Public Sub Proc_265_108_10E2A44
  'Data Table: 5ADD9C
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_10E2737: Me.FGrid1.Left = CVar(CDbl(4250))
  loc_10E2752: Me.FGrid1.Top = CVar(CDbl(400))
  loc_10E275E: Set var_AC = Me.FGrid1
  loc_10E276D: var_AC.Width = CVar(CDbl(7900))
  loc_10E277E: var_AC.Cols = 7
  loc_10E278F: var_AC.Rows = 2
  loc_10E27A8: global_280 = CStr(CLng(var_AC.BackColor))
  loc_10E27B2: var_94 = 0
  loc_10E27BE: var_D0 = CVar(CLng(0)) 'Long
  loc_10E27C3: var_F0 = "O"
  loc_10E27CC: LateIdCallSt
  loc_10E27D7: var_94 = CVar(CLng(0)) 'Long
  loc_10E27DC: var_D0 = &H64
  loc_10E27E8: LateIdCallSt
  loc_10E27F3: var_94 = CVar(CLng(0)) 'Long
  loc_10E27FE: var_D0 = CVar(CInt(4)) 'Integer
  loc_10E2805: LateIdCallSt
  loc_10E280D: var_94 = 0
  loc_10E2819: var_D0 = CVar(CLng(1)) 'Long
  loc_10E281E: var_F0 = "Revenue"
  loc_10E2827: LateIdCallSt
  loc_10E2832: var_94 = CVar(CLng(1)) 'Long
  loc_10E2837: var_D0 = &HBB8
  loc_10E2843: LateIdCallSt
  loc_10E284E: var_94 = CVar(CLng(1)) 'Long
  loc_10E2859: var_D0 = CVar(CInt(1)) 'Integer
  loc_10E2860: LateIdCallSt
  loc_10E2868: var_94 = 0
  loc_10E2874: var_D0 = CVar(CLng(2)) 'Long
  loc_10E2879: var_F0 = "Amount"
  loc_10E2882: LateIdCallSt
  loc_10E288D: var_94 = CVar(CLng(2)) 'Long
  loc_10E2892: var_D0 = &H4B0
  loc_10E289E: LateIdCallSt
  loc_10E28A9: var_94 = CVar(CLng(2)) 'Long
  loc_10E28B4: var_D0 = CVar(CInt(7)) 'Integer
  loc_10E28BB: LateIdCallSt
  loc_10E28C3: var_94 = 0
  loc_10E28CF: var_D0 = CVar(CLng(3)) 'Long
  loc_10E28D4: var_F0 = "Nature"
  loc_10E28DD: LateIdCallSt
  loc_10E28E8: var_94 = CVar(CLng(3)) 'Long
  loc_10E28ED: var_D0 = &H4B0
  loc_10E28F9: LateIdCallSt
  loc_10E2904: var_94 = CVar(CLng(3)) 'Long
  loc_10E290F: var_D0 = CVar(CInt(1)) 'Integer
  loc_10E2916: LateIdCallSt
  loc_10E291E: var_94 = 0
  loc_10E292A: var_D0 = CVar(CLng(4)) 'Long
  loc_10E292F: var_F0 = "App Date"
  loc_10E2938: LateIdCallSt
  loc_10E2943: var_94 = CVar(CLng(4)) 'Long
  loc_10E2948: var_D0 = &H4B0
  loc_10E2954: LateIdCallSt
  loc_10E295F: var_94 = CVar(CLng(4)) 'Long
  loc_10E296A: var_D0 = CVar(CInt(1)) 'Integer
  loc_10E2971: LateIdCallSt
  loc_10E2979: var_94 = 0
  loc_10E2985: var_D0 = CVar(CLng(5)) 'Long
  loc_10E298A: var_F0 = "Active"
  loc_10E2993: LateIdCallSt
  loc_10E299E: var_94 = CVar(CLng(5)) 'Long
  loc_10E29A3: var_D0 = &H320
  loc_10E29AF: LateIdCallSt
  loc_10E29BA: var_94 = CVar(CLng(5)) 'Long
  loc_10E29C5: var_D0 = CVar(CInt(1)) 'Integer
  loc_10E29CC: LateIdCallSt
  loc_10E29D7: var_94 = CVar(CLng(6)) 'Long
  loc_10E29DC: var_D0 = 0
  loc_10E29E8: LateIdCallSt
  loc_10E29F3: var_94 = CVar(CLng(6)) 'Long
  loc_10E29FE: var_D0 = CVar(CInt(4)) 'Integer
  loc_10E2A05: LateIdCallSt
  loc_10E2A0D: var_94 = 1
  loc_10E2A19: var_D0 = CVar(CLng(6)) 'Long
  loc_10E2A1E: var_F0 = "1"
  loc_10E2A27: LateIdCallSt
  loc_10E2A36: var_AC.Enabled = True
  loc_10E2A3D: Set var_AC = Nothing 
  loc_10E2A41: Exit Sub
End Sub

Public Sub Proc_265_109_112A364
  'Data Table: 5ADD9C
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim var_104 As Double
  Dim var_128 As TextBox
  Dim var_130 As TextBox
  Dim var_12C As TextBox
  loc_112A003: var_90 = CDbl(0)
  loc_112A009: var_98 = CDbl(0)
  loc_112A00F: var_A0 = CDbl(0)
  loc_112A037: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_112A041:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_112A049:   var_E8 = CVar(CLng(4)) 'Long
  loc_112A074:   If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_112A07B:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_112A083:     var_E8 = CVar(CLng(3)) 'Long
  loc_112A0AF:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_112A0BE:   Else
  loc_112A0C2:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_112A0CA:     var_E8 = CVar(CLng(4)) 'Long
  loc_112A0F5:     If (CStr(Me.FGrid.TextMatrix)) = "Dr") Then
  loc_112A0FC:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_112A104:       var_E8 = CVar(CLng(3)) 'Long
  loc_112A130:       var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_112A13C:     End If
  loc_112A13C:   End If
  loc_112A13F: Next var_B8 'Integer
  loc_112A160: var_B4 = CVar((var_98 - var_90)) 'Double
  loc_112A170: var_A0 = CSng(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_112A1A4: var_FC = CStr(Format(CVar(Abs(var_A0)), "0.00"))
  loc_112A1B3: Set var_A4 = Me.Txt
  loc_112A1B9: Call 0.Method_Proc_265_109_112A3640 (CInt(9), var_128, var_FC, 1)
  loc_112A1C1: var_128.Text = 1
  loc_112A1E0: If (var_A0 < CDbl(0)) Then
  loc_112A1F0:   Me.LblOpBalType.Caption = "Cr"
  loc_112A1FB: Else
  loc_112A208:   Me.LblOpBalType.Caption = "Dr"
  loc_112A210: End If
  loc_112A21E: Set var_A4 = Me.Txt
  loc_112A224: Call 0.Method_Proc_265_109_112A3640 (CInt(&HA), var_128, var_FC)
  loc_112A22C: var_A0 = var_128.Tag
  loc_112A259: var_B4 = CVar(Abs((Val(var_FC) + var_A0))) 'Double
  loc_112A277: Set var_12C = Me.Txt
  loc_112A27D: Call 0.Method_Proc_265_109_112A3640 (CInt(&HA), var_130, CStr(Format(CVar(Abs(var_A0)), "0.00")), 1)
  loc_112A285: var_130.Text = 1
  loc_112A2B3: Set var_A4 = Me.Txt
  loc_112A2B9: Call 0.Method_Proc_265_109_112A3640 (CInt(0), var_128, var_FC)
  loc_112A2C1: var_104 = var_128.Text
  loc_112A2DF: Me.txtCurrBal.Text = Proc_183_42_107D990(var_FC, 1)
  loc_112A302: Set var_A4 = Me.Txt
  loc_112A308: Call 0.Method_Proc_265_109_112A3640 (CInt(&HA), var_128)
  loc_112A330: If (CDbl((Val(var_128.Tag) + var_A0)) < CDbl(0)) Then
  loc_112A340:   Me.LblCurBalType.Caption = "Cr"
  loc_112A34B: Else
  loc_112A358:   Me.LblCurBalType.Caption = "Dr"
  loc_112A360: End If
  loc_112A360: Exit Sub
End Sub

Public Sub Proc_265_110_10BBB04(arg_C) '10BBB04
  'Data Table: 5ADD9C
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim var_B4 As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  loc_10BB87E: On Error Goto loc_10BBAD7
  loc_10BB884: var_90 = "F_AO"
  loc_10BB88B: Set var_8C = New 
  loc_10BB896: Me.Recordset15.CursorLocation = 3
  loc_10BB89E: var_D0 = arg_C
  loc_10BB8A6: Proc_183_7_EB0C44(var_E0)
  loc_10BB8C9: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F92070
  loc_10BB8FA: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F92070 & "' AND VP.LOGSITE_CODE='"
  loc_10BB925: var_120 = CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BB92D: var_8C.Open var_120, CVar(MemVar_1F921DC), 2
  loc_10BB96A: If (var_8C.RecordCount > 0) Then
  loc_10BB99C:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BB9A5:   global_120 = CLng(CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BB9E1:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BB9FE:   var_98 = Proc_183_15_EAC900(MemVar_1F92070, 2, MemVar_1F9206C, global_120)
  loc_10BBA08:   var_D0 = var_90
  loc_10BBA18:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BBA29:   var_120 = Space((5 - Len(var_90)))
  loc_10BBA31:   var_150 = (CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BBA42:   var_160 = Space((5 - Len(var_94)))
  loc_10BBA4A:   var_170 = (var_150 + var_160)
  loc_10BBA54:   var_180 = (var_170 + CVar(var_94))
  loc_10BBA6D:   var_190 = Space((8 - Len(CStr(global_120))))
  loc_10BBA75:   var_1A0 = (var_180 + var_190)
  loc_10BBA84:   var_1C0 = (var_1A0 + CVar(CStr(global_120)))
  loc_10BBABD:   var_88 = CStr(var_1C0)
  loc_10BBAC3: Else
  loc_10BBAC6:   var_88 = vbNullString
  loc_10BBAC9: End If
  loc_10BBACE: Set var_8C = Nothing
  loc_10BBAD1: Proc_265_110_10BBB04 = -1
  loc_10BBAD7: ' Referenced from: 10BB87E
  loc_10BBADD: Call 0.Method_arg_50 (var_98)
  loc_10BBAF2: Proc_183_57_104AA84(var_98, "VoucherNo")
  loc_10BBAFE: Proc_265_110_10BBB04 = var_D0
End Sub

Public Sub Proc_265_111_E5AB00(arg_C) 'E5AB00
  'Data Table: 5ADD9C
  Dim var_90 As TextBox
  loc_E5AAC9: If (CInt(arg_C) = 1) Then
  loc_E5AAE3:   Set var_8C = Me.Txt
  loc_E5AAE9:   Call 0.Method_Proc_265_111_E5AB000 (CInt(CByte(5)), var_90)
  loc_E5AAF1:   var_90.Enabled = False
  loc_E5AAFD: End If
  loc_E5AAFD: Exit Sub
End Sub

Public Sub Proc_265_112_1B45AC0
  'Data Table: 5ADD9C
  Dim Me As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_F0 As String
  Dim var_DC As Variant
  Dim var_F4 As String
  Dim var_F8 As String
  Dim var_FC As String
  Dim var_104 As String
  Dim var_10C As String
  Dim var_114 As String
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_88 As Recordset15
  Dim var_EC As Variant
  Dim var_D8 As Variant
  Dim var_198 As Variant
  Dim var_188 As Variant
  Dim var_168 As Variant
  Dim var_1DC As Variant
  Dim var_224 As Label
  Dim var_178 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_8C As Recordset15
  Dim var_226 As Integer
  Dim var_1F0 As TextBox
  Dim unk_5ADDC8 As Connection15
  Dim var_23C As Recordset15
  Dim var_AE As Integer
  Dim var_1C8 As Variant
  Dim var_238 As Variant
  Dim var_AA As Integer
  Dim var_A8 As Double
  Dim var_264 As Variant
  Dim var_334 As Variant
  loc_1B40E8C: On Error Goto loc_1B45A54
  loc_1B40EA8: If (Me.RecordCount > 0) Then
  loc_1B40EEF:   Call 0.Method_Proc_265_112_1B45AC00 (CInt(0), var_DC)
  loc_1B40EF7:   var_DC.Text = CStr(Me.Fields.Item("subcode").Value)
  loc_1B40F23:   var_F0 = "Select S.Name,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.FatherName,S.MotherName,S.PanNo,S.GSTIN,S.GroupCode,S.ApplDate,S.ValidFrom,S.ValidateUpto,S.Discount," & "S.meshAc,S.U_AE,S.U_Name,S.U_EntDt,S.AddName,S.Add1,S.Add2,S.Add3,S.CITYCODE,S.Pin,S.Phone,S.Mobile,S.Mobile1,S.Email,S.AppNo,S.CardNo,S.IdProof,S.IdProofNo,S.Remark,S.subcorresYN,"
  loc_1B40F31:   var_F8 = var_F0 & "S.CompanyType,S.AllowCredit,S.CreditLimit,S.ActiveYN,S.CINNo,S.Blacklisted,S.ReasonBlackList,S.BlackListedBy," & "MF.bloodGroup,MF.ProOcc,MF.Edquali,MF.TBusiness,MF.Turnover,MF.Desig,MF.PostedAt,MF.Passport,MF.SpInterest,MF.Gender,MF.DOB,MF.POB,"
  loc_1B40F38:   var_FC = var_F8 & "MF.MaritalStatus,MF.Nationality,MF.Religion,MF.PicPath,MF.SigPath,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,a.areaname,C.CityName,T.CATEGORY_Desc, "
  loc_1B40F46:   var_104 = var_FC & "TDSCAT.NAME AS TDSNAME,St.Name As StateN,St.Code As StateC,Co.Name As CountryN, Co.Code As CountryC, " & "MM.Name As MeshAcName From ((((((((subGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode "
  loc_1B40F54:   var_10C = var_104 & "Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) " & "left join areamast a on s.areacode=a.areacode) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg) "
  loc_1B40F62:   var_114 = var_10C & "Left Join State St On St.Code=C.State) Left Join Country Co On Co.Code=C.Country) " & "Left Join MemberFamily MF On MF.Subcode= S.Subcode And MF.RelationShip='Member' And MF.SNo=1) left Join SubGroup MM On MM.SubCode=S.MeshAc) "
  loc_1B40FB0:   unk_5ADE06.Execute CStr(CVar(var_114 & "Where S.SubCode='") & Me.Fields.Item("subcode").Value & "'"), var_178, -1
  loc_1B40FBB:   Set var_88 = Me.Txt
  loc_1B41029:   var_D8 = var_88.Fields
  loc_1B41092:   var_1D8 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_D8.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1B410D7:   Me.LblUser.Caption = CStr(var_D8 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_1D8)))
  loc_1B41153:   var_DC = var_88.Fields.Item("U_AE")
  loc_1B4115B:   var_124 = CVar(var_DC) 'Address
  loc_1B411B4:   var_1D8 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(var_124) = "E"), "Last Update : ", "entdt : "))
  loc_1B411D3:   var_1F0 = var_88.Fields.Item("U_EntDt")
  loc_1B411F9:   Me.LblLDt.Caption = CStr(var_1D8 & CVar(Proc_6_38_E68A98(CVar(var_1F0))))
  loc_1B41247:   If (var_88.RecordCount > 0) Then
  loc_1B4128B:     If (Me.Fields.Item("Name").Value = "Cash") Then
  loc_1B41296:       global_116 = "Y"
  loc_1B4129D:     Else
  loc_1B412A7:       global_116 = "N"
  loc_1B412AB:     End If
  loc_1B412C9:     var_D4 = var_88.Fields.Item("Name")
  loc_1B412E8:     Set var_D8 = Me.Txt
  loc_1B412EE:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(1), var_DC)
  loc_1B412F6:     var_DC.Text = CStr(var_D4.Value)
  loc_1B4131C:     Set var_C0 = Me.Txt
  loc_1B41322:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(1), var_D4)
  loc_1B41335:     global_136 = var_D4.Text
  loc_1B4137B:     Set var_D8 = Me.Txt
  loc_1B41381:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(2), var_DC)
  loc_1B41389:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GroupName")))
  loc_1B413D8:     Set var_D8 = Me.Txt
  loc_1B413DE:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(2), var_DC)
  loc_1B413E6:     var_DC.Tag = CStr(var_88.Fields.Item("GroupCode").Value)
  loc_1B41429:     var_F0 = CStr(var_88.Fields.Item("MainGrCode").Value)
  loc_1B4142F:     global_140 = var_F0
  loc_1B41448:     var_D0 = "GNature"
  loc_1B4145C:     var_D4 = var_88.Fields.Item(var_D0)
  loc_1B41464:     var_EC = var_D4.Value
  loc_1B41490:     var_DC = var_88.Fields.Item("GNature")
  loc_1B414C2:     If CBool((var_EC = "A") Or (var_DC.Value = "L")) Then
  loc_1B414CE:       global_156 = CByte(1)
  loc_1B414D5:     Else
  loc_1B414E0:       global_156 = CByte(0)
  loc_1B414E4:     End If
  loc_1B414FF:     If (Me.RecordCount > 0) Then
  loc_1B4150A:       Me.MoveFirst
  loc_1B41530:       Set var_C0 = Me.Txt
  loc_1B41536:       Call 0.Method_Proc_265_112_1B45AC00 (CInt(2), var_D4, var_F0, "Name ='", 0)
  loc_1B4153E:       1 = var_D4.Text
  loc_1B41557:       Me.Find var_D0 & var_F0 & "'", global_156, global_156
  loc_1B4156C:     End If
  loc_1B4157E:     Set var_C0 = Me.Txt
  loc_1B41584:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(0), var_D4)
  loc_1B4158C:     var_F4 = var_D4.Text
  loc_1B41597:     var_144 = 0
  loc_1B415D2:     unk_5ADE06.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_F4 & "'", var_EC, -1
  loc_1B415DA:     var_D8 = var_D8.Fields
  loc_1B415E2:     var_144 = var_DC.Item(var_DC)
  loc_1B415EA:     var_1DC = var_1DC.Value
  loc_1B415F3:     var_94 = CSng(var_124)
  loc_1B41627:     Set var_C0 = Me.Txt
  loc_1B4162D:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(0), var_D4, var_F4)
  loc_1B41635:     var_94 = var_D4.Text
  loc_1B41640:     var_144 = 0
  loc_1B4167B:     unk_5ADE06.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_F4 & "'", var_EC, -1
  loc_1B41683:     var_D8 = var_D8.Fields
  loc_1B4168B:     var_144 = var_DC.Item(var_DC)
  loc_1B41693:     var_1DC = var_1DC.Value
  loc_1B4169C:     var_9C = CSng(var_124)
  loc_1B416DF:     var_EC = CVar(Abs((var_9C - var_94))) 'Double
  loc_1B416FD:     Set var_C0 = Me.Txt
  loc_1B41703:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(9), var_D4, CStr(Format(var_EC, "0.00")), 1)
  loc_1B4170B:     var_D4.Text = 1
  loc_1B4172A:     var_124 = vbNullString
  loc_1B41772:     var_F0 = CStr(IIf((var_94 > var_9C), "Cr", IIf((var_94 < var_9C), "Dr", var_124)))
  loc_1B41780:     Me.LblOpBalType.Caption = var_F0
  loc_1B417AC:     Set var_C0 = Me.Txt
  loc_1B417B2:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(0), var_D4, var_F0)
  loc_1B417BA:     var_9C = var_D4.Text
  loc_1B417D2:     Set var_D8 = Me.txtCurrBal
  loc_1B417D8:     var_D8.Text = Proc_183_42_107D990(var_F0, var_124)
  loc_1B417F7:     If (MemVar_1F92078 = "HO") Then
  loc_1B4181A:       Set var_C0 = Me.Txt
  loc_1B41820:       Call 0.Method_Proc_265_112_1B45AC00 (CInt(0), var_D4, var_F0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_1B41828:       var_EC = var_D4.Text
  loc_1B41831:       var_F4 = -1 & var_F0
  loc_1B41841:       unk_5ADE06.Execute var_F4 & "'", var_D8, var_124
  loc_1B4184C:       Set var_8C = var_D8
  loc_1B41867:     Else
  loc_1B41889:       Set var_C0 = Me.Txt
  loc_1B4188F:       Call 0.Method_Proc_265_112_1B45AC00 (CInt(0), var_D4, var_F0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_1B41897:       var_EC = var_D4.Text
  loc_1B418A0:       var_F4 = -1 & var_F0
  loc_1B418BE:       unk_5ADE06.Execute var_F4 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "'", var_D8, 
  loc_1B418C9:       Set var_8C = var_D8
  loc_1B418E5:     End If
  loc_1B418FD:     If (var_8C.RecordCount > 0) Then
  loc_1B4192A:       var_226 = IsNull(CVar(var_8C.Fields.Item("CurrBal")))
  loc_1B419A8:       Set var_1DC = Me.Txt
  loc_1B419AE:       Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HA), var_1F0, CStr(Format(IIf(var_226, 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00")))
  loc_1B419B6:       var_1F0.Text = 1
  loc_1B41A21:       var_DC = var_8C.Fields.Item("CurrBal")
  loc_1B41A39:       var_198 = "Cr"
  loc_1B41A9B:       Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_DC.Value < 0), var_198, vbNullString)))
  loc_1B41B67:       global_152 = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", "Cr"))
  loc_1B41B9E:       var_D4 = var_8C.Fields.Item("CurrBal")
  loc_1B41BB5:       var_144 = CVar((var_94 - var_9C)) 'Double
  loc_1B41BB9:       var_124 = (var_D4.Value + 0)
  loc_1B41BCC:       Set var_D8 = Me.Txt
  loc_1B41BD2:       Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HA), var_DC, CStr((var_8C.Fields.Item("CurrBal").Value > 0)))
  loc_1B41BDA:       var_DC.Tag = CSng(var_8C.Fields.Item("CurrBal").Value)
  loc_1B41BF7:     Else
  loc_1B41C0D:       Set var_C0 = Me.Txt
  loc_1B41C13:       Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HA), var_D4, CStr(0))
  loc_1B41C1B:       var_D4.Text = 1
  loc_1B41C39:       Me.LblCurBalType.Caption = vbNullString
  loc_1B41C54:       global_152 = "Cr"
  loc_1B41C6C:       Set var_C0 = Me.Txt
  loc_1B41C72:       Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HA), var_D4, CStr(0))
  loc_1B41C7A:       var_D4.Tag = CDbl(0)
  loc_1B41C89:     End If
  loc_1B41CC3:     Set var_D8 = Me.Txt
  loc_1B41CC9:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(3), var_DC)
  loc_1B41CD1:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPrefix")))
  loc_1B41D1D:     Set var_D8 = Me.Txt
  loc_1B41D23:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(4), var_DC)
  loc_1B41D2B:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPerson")))
  loc_1B41D77:     Set var_D8 = Me.Txt
  loc_1B41D7D:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H25), var_DC)
  loc_1B41D85:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_1B41DD1:     Set var_D8 = Me.Txt
  loc_1B41DD7:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H26), var_DC)
  loc_1B41DDF:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_1B41E2B:     Set var_D8 = Me.Txt
  loc_1B41E31:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H29), var_DC)
  loc_1B41E39:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FatherName")))
  loc_1B41E85:     Set var_D8 = Me.Txt
  loc_1B41E8B:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H2A), var_DC)
  loc_1B41E93:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MotherName")))
  loc_1B41EDF:     Set var_D8 = Me.Txt
  loc_1B41EE5:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H27), var_DC)
  loc_1B41EED:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("bloodGroup")))
  loc_1B41F55:     Set var_D8 = Me.Txt
  loc_1B41F5B:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H1C), var_DC, CStr(Format(CVar(var_88.Fields.Item("ApplDate")), "DD/MMM/YYYY")))
  loc_1B41F63:     var_DC.Text = 1
  loc_1B41FD1:     Set var_D8 = Me.Txt
  loc_1B41FD7:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H2D), var_DC, CStr(Format(CVar(var_88.Fields.Item("ValidFrom")), "DD/MMM/YYYY")), 1)
  loc_1B41FDF:     var_DC.Text = 1
  loc_1B42026:     var_124 = "DD/MMM/YYYY"
  loc_1B4204D:     Set var_D8 = Me.Txt
  loc_1B42053:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H30), var_DC, CStr(Format(CVar(var_88.Fields.Item("ValidateUpto")), var_124)), 1)
  loc_1B4205B:     var_DC.Text = 1
  loc_1B4209D:     Proc_6_47_EF59D0(var_124, CVar(var_88.Fields.Item("Discount")))
  loc_1B420B4:     Set var_D8 = Me.Txt
  loc_1B420BA:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H1E), var_DC, CStr(var_124))
  loc_1B420C2:     var_DC.Text = 1
  loc_1B42112:     Set var_D8 = Me.Txt
  loc_1B42118:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H24), var_DC)
  loc_1B42120:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MeshAcName")))
  loc_1B4216C:     Set var_D8 = Me.Txt
  loc_1B42172:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H24), var_DC)
  loc_1B4217A:     var_DC.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("meshAc")))
  loc_1B421C5:     Me.LblAddType.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("AddName")))
  loc_1B4220F:     Set var_D8 = Me.TxtA
  loc_1B42215:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(0), var_DC)
  loc_1B4221D:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_1B42269:     Set var_D8 = Me.TxtA
  loc_1B4226F:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(1), var_DC)
  loc_1B42277:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")))
  loc_1B422C3:     Set var_D8 = Me.TxtA
  loc_1B422C9:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(2), var_DC)
  loc_1B422D1:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add3")))
  loc_1B4231D:     Set var_D8 = Me.TxtA
  loc_1B42323:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(3), var_DC)
  loc_1B4232B:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_1B42377:     Set var_D8 = Me.TxtA
  loc_1B4237D:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(3), var_DC)
  loc_1B42385:     var_DC.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CITYCODE")))
  loc_1B423D1:     Set var_D8 = Me.TxtA
  loc_1B423D7:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(4), var_DC)
  loc_1B423DF:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateN")))
  loc_1B4242B:     Set var_D8 = Me.TxtA
  loc_1B42431:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(4), var_DC)
  loc_1B42439:     var_DC.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateC")))
  loc_1B42485:     Set var_D8 = Me.TxtA
  loc_1B4248B:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(5), var_DC)
  loc_1B42493:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CountryN")))
  loc_1B424DF:     Set var_D8 = Me.TxtA
  loc_1B424E5:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(5), var_DC)
  loc_1B424ED:     var_DC.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CountryC")))
  loc_1B42539:     Set var_D8 = Me.TxtA
  loc_1B4253F:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(6), var_DC)
  loc_1B42547:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin")))
  loc_1B42593:     Set var_D8 = Me.TxtA
  loc_1B42599:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(7), var_DC)
  loc_1B425A1:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Phone")))
  loc_1B425ED:     Set var_D8 = Me.TxtA
  loc_1B425F3:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(8), var_DC)
  loc_1B425FB:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile")))
  loc_1B42647:     Set var_D8 = Me.TxtA
  loc_1B4264D:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HA), var_DC)
  loc_1B42655:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile1")))
  loc_1B426A1:     Set var_D8 = Me.TxtA
  loc_1B426A7:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(9), var_DC)
  loc_1B426AF:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Email")))
  loc_1B426FB:     Set var_D8 = Me.Txt
  loc_1B42701:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(5), var_DC)
  loc_1B42709:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("AppNo")))
  loc_1B42755:     Set var_D8 = Me.Txt
  loc_1B4275B:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(6), var_DC)
  loc_1B42763:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))
  loc_1B427A7:     global_76 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))
  loc_1B427EC:     Set var_D8 = Me.Txt
  loc_1B427F2:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H11), var_DC)
  loc_1B427FA:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PanNo")))
  loc_1B42846:     Set var_D8 = Me.Txt
  loc_1B4284C:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H35), var_DC)
  loc_1B42854:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GSTIN")))
  loc_1B428AC:     var_DC = var_88.Fields.Item("IdProof")
  loc_1B428BD:     var_154 = CVar(Proc_6_38_E68A98(CVar(var_DC))) 'String
  loc_1B428F4:     Set var_1DC = Me.Txt
  loc_1B428FA:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H2B), var_1F0)
  loc_1B42902:     var_1F0.Text = CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("IdProof"))) = vbNullString), "NA", var_154))
  loc_1B42962:     Set var_D8 = Me.Txt
  loc_1B42968:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H2C), var_DC)
  loc_1B42970:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("IdProofNo")))
  loc_1B429BC:     Set var_D8 = Me.Txt
  loc_1B429C2:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H23), var_DC)
  loc_1B429CA:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remark")))
  loc_1B42A19:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("subcorresYN"))) = "Y") Then
  loc_1B42A2E:       Me.ChkCorresAdd.Value = CInt(1)
  loc_1B42A39:     Else
  loc_1B42A4D:       Me.ChkCorresAdd.Value = CInt(0)
  loc_1B42A55:     End If
  loc_1B42A95:     var_124 = "select code,Name,Corporate from MemcatMast where code='" & var_88.Fields.Item("CompanyType").Value 
  loc_1B42AAC:     unk_5ADDC8.Execute CStr(var_124 & "'"), var_154, -1
  loc_1B42AB7:     Set var_23C = var_D8
  loc_1B42B09:     Set var_D8 = Me.Txt
  loc_1B42B0F:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(7), var_DC)
  loc_1B42B17:     var_DC.Text = Proc_6_38_E68A98(CVar(var_23C.Fields.Item("Name")), var_D8)
  loc_1B42B63:     Set var_D8 = Me.Txt
  loc_1B42B69:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(7), var_DC)
  loc_1B42B71:     var_DC.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyType")))
  loc_1B42BB5:     global_68 = Proc_6_38_E68A98(CVar(var_23C.Fields.Item("Corporate")))
  loc_1B42C33:     Set var_D8 = Me.Txt
  loc_1B42C39:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(8), var_DC)
  loc_1B42C41:     var_DC.Text = Proc_6_38_E68A98(IIf((var_88.Fields.Item("AllowCredit").Value = "Y"), "Yes", "No"))
  loc_1B42C89:     Proc_6_47_EF59D0(var_124, CVar(var_88.Fields.Item("CreditLimit")))
  loc_1B42CA0:     Set var_D8 = Me.Txt
  loc_1B42CA6:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H28), var_DC)
  loc_1B42CAE:     var_DC.Text = CStr(var_124)
  loc_1B42CFE:     Set var_D8 = Me.Txt
  loc_1B42D04:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HB), var_DC)
  loc_1B42D0C:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ProOcc")))
  loc_1B42D58:     Set var_D8 = Me.Txt
  loc_1B42D5E:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HC), var_DC)
  loc_1B42D66:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Edquali")))
  loc_1B42DB2:     Set var_D8 = Me.Txt
  loc_1B42DB8:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HD), var_DC)
  loc_1B42DC0:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TBusiness")))
  loc_1B42E0C:     Set var_D8 = Me.Txt
  loc_1B42E12:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HE), var_DC)
  loc_1B42E1A:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Turnover")))
  loc_1B42E66:     Set var_D8 = Me.Txt
  loc_1B42E6C:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&HF), var_DC)
  loc_1B42E74:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Desig")))
  loc_1B42EC0:     Set var_D8 = Me.Txt
  loc_1B42EC6:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H2F), var_DC)
  loc_1B42ECE:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostedAt")))
  loc_1B42F1A:     Set var_D8 = Me.Txt
  loc_1B42F20:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H10), var_DC)
  loc_1B42F28:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Passport")))
  loc_1B42F74:     Set var_D8 = Me.Txt
  loc_1B42F7A:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H12), var_DC)
  loc_1B42F82:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("SpInterest")))
  loc_1B42FCE:     Set var_D8 = Me.Txt
  loc_1B42FD4:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H13), var_DC)
  loc_1B42FDC:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Gender")))
  loc_1B43044:     Set var_D8 = Me.Txt
  loc_1B4304A:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H14), var_DC, CStr(Format(CVar(var_88.Fields.Item("DOB")), "DD/MMM/YYYY")))
  loc_1B43052:     var_DC.Text = 1
  loc_1B430A4:     Set var_D8 = Me.Txt
  loc_1B430AA:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H15), var_DC)
  loc_1B430B2:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("POB")), 1)
  loc_1B430FE:     Set var_D8 = Me.Txt
  loc_1B43104:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H16), var_DC)
  loc_1B4310C:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MaritalStatus")))
  loc_1B43158:     Set var_D8 = Me.Txt
  loc_1B4315E:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H17), var_DC)
  loc_1B43166:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nationality")))
  loc_1B431B2:     Set var_D8 = Me.Txt
  loc_1B431B8:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H19), var_DC)
  loc_1B431C0:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Religion")))
  loc_1B43241:     Set var_D8 = Me.Txt
  loc_1B43247:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H1A), var_DC)
  loc_1B4324F:     var_DC.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 1), "Yes", "No"))
  loc_1B432A7:     Set var_D8 = Me.Txt
  loc_1B432AD:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H2E), var_DC)
  loc_1B432B5:     var_DC.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CINNo")))
  loc_1B432E5:     var_D4 = var_88.Fields.Item("BlackListed")
  loc_1B43336:     Set var_D8 = Me.Txt
  loc_1B4333C:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H1B), var_DC)
  loc_1B43344:     var_DC.Text = CStr(IIf((var_D4.Value = "Y"), "Yes", "No"))
  loc_1B43374:     Set var_C0 = Me.Txt
  loc_1B4337A:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H1B), var_D4)
  loc_1B43399:     If (var_D4.Text = "Yes") Then
  loc_1B433AA:       Me.FrBlackListed.Visible = True
  loc_1B433B5:     Else
  loc_1B433C5:       Me.FrBlackListed.Visible = False
  loc_1B433CD:     End If
  loc_1B4340A:     Set var_D8 = Me.Txt
  loc_1B43410:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H1D), var_DC)
  loc_1B43418:     var_DC.Text = CStr(var_88.Fields.Item("ReasonBlackList").Value)
  loc_1B43469:     Set var_D8 = Me.Txt
  loc_1B4346F:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(&H1F), var_DC)
  loc_1B43477:     var_DC.Text = CStr(var_88.Fields.Item("BlackListedBy").Value)
  loc_1B434BD:     If IsDate(CVar(var_88.Fields.Item("DOB"))) Then
  loc_1B43513:       var_AE = CInt(DateDiff("yyyy", CDate(CDate(var_88.Fields.Item("DOB").Value)), MemVar_1F920EC, 1, 1))
  loc_1B43548:       Me.TxtAgeing.Text = "Member Age: " & CStr(var_AE) & " Yrs."
  loc_1B43561:       If (var_AE >= &H32) Then
  loc_1B43575:         Me.TxtAgeing.BackColor = &HC0FFFF
  loc_1B4358E:         Me.TxtAgeing.ForeColor = &HFF
  loc_1B43599:       Else
  loc_1B435AC:         Me.TxtAgeing.BackColor = -2147483643
  loc_1B435C5:         Me.TxtAgeing.ForeColor = &HC00000
  loc_1B435CD:       End If
  loc_1B435CF:     End If
  loc_1B43601:     If IsDate(CVar(var_88.Fields.Item("ValidFrom"))) Then
  loc_1B4360C:       If (var_AE = 0) Then
  loc_1B43637:         Me.TxtAgeing.Text = Me.TxtAgeing.Text & "Age Of Membership: "
  loc_1B4364D:       Else
  loc_1B43677:         Me.TxtAgeing.Text = Me.TxtAgeing.Text & " & Age Of Membership:   "
  loc_1B4368A:       End If
  loc_1B436FF:       var_1C8 = CVar(Me.TxtAgeing.Text) & DateDiff("yyyy", CDate(CDate(var_88.Fields.Item("ValidFrom").Value)), MemVar_1F920EC, 1, 1) & " Yrs." 
  loc_1B43703:       var_F4 = CStr(var_1C8)
  loc_1B43711:       Me.TxtAgeing.Text = var_F4
  loc_1B43733:     End If
  loc_1B43746:     var_C0 = var_88.Fields
  loc_1B4375F:     var_188 = IsNull(CVar(var_C0.Item("PicPath")))
  loc_1B43766:     var_144 = "PicPath"
  loc_1B43791:     var_168 = vbNullString
  loc_1B437B3:     If CBool(var_188 Or (Trim(CVar(var_88.Fields.Item(var_144))) = var_168)) Then
  loc_1B437D6:       Me.Global.LoadPicture var_D0, var_144, var_168, var_188, var_198
  loc_1B437EB:       Me.ImgMemPhoto.Picture = var_C0
  loc_1B43806:       Me.ImgMemPhoto.Tag = vbNullString
  loc_1B43811:     Else
  loc_1B43843:       var_168 = "PicPath"
  loc_1B43889:       var_144 = "DAT"
  loc_1B438B1:       var_188 = "AVI"
  loc_1B438BB:       var_238 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_144) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_168))), 3)) = var_188)
  loc_1B438DB:       If CBool(var_238) Then
  loc_1B438EC:         Me.ImgMemPhoto.Visible = False
  loc_1B438F7:       Else
  loc_1B43933:         Me.ImgMemPhoto.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_1B43952:         var_D0 = "PicPath"
  loc_1B4395E:         var_C0 = var_88.Fields
  loc_1B43966:         var_D4 = var_C0.Item(var_D0)
  loc_1B43983:         Call 0.Method_Proc_265_112_1B45AC04 (CStr(var_D4.Value), var_226, var_C0)
  loc_1B43998:         If var_226 Then
  loc_1B4399D:           On Error Resume Next
  loc_1B439D4:           Me.Global.LoadPicture CVar(Me.ImgMemPhoto.Tag), var_D0, var_144, var_168, var_188
  loc_1B439E9:           Me.ImgMemPhoto.Picture = var_D4
  loc_1B43A00:           Set var_C0 = Me.ImgMemPhoto
  loc_1B43A06:           var_C0.Refresh
  loc_1B43A11:         Else
  loc_1B43A33:           Me.Global.LoadPicture var_D0, var_144, var_168, var_188, var_198
  loc_1B43A48:           Me.ImgMemPhoto.Picture = var_C0
  loc_1B43A54:         End If
  loc_1B43A56:       End If
  loc_1B43A58:     End If
  loc_1B43A6B:     var_C0 = var_88.Fields
  loc_1B43A84:     var_188 = IsNull(CVar(var_C0.Item("SigPath")))
  loc_1B43A8B:     var_144 = "SigPath"
  loc_1B43AB6:     var_168 = vbNullString
  loc_1B43AC0:     var_178 = var_188 Or (Trim(CVar(var_88.Fields.Item(var_144))) = var_168)
  loc_1B43AD8:     If CBool(var_178) Then
  loc_1B43AFB:       Me.Global.LoadPicture var_D0, var_144, var_168, var_188, var_198
  loc_1B43B10:       Me.ImgMemSign.Picture = var_C0
  loc_1B43B2B:       Me.ImgMemSign.Tag = vbNullString
  loc_1B43B36:     Else
  loc_1B43B60:       var_124 = Trim(CVar(var_88.Fields.Item("SigPath")))
  loc_1B43B68:       var_168 = "SigPath"
  loc_1B43BAE:       var_144 = "DAT"
  loc_1B43BD6:       var_188 = "AVI"
  loc_1B43C00:       If CBool((Ucase(Right(var_124, 3)) = var_144) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_168))), 3)) = var_188)) Then
  loc_1B43C11:         Me.ImgMemSign.Visible = False
  loc_1B43C1C:       Else
  loc_1B43C58:         Me.ImgMemSign.Tag = CStr(var_88.Fields.Item("SigPath").Value)
  loc_1B43C77:         var_D0 = "SigPath"
  loc_1B43C83:         var_C0 = var_88.Fields
  loc_1B43C8B:         var_D4 = var_C0.Item(var_D0)
  loc_1B43CA8:         Call 0.Method_Proc_265_112_1B45AC04 (CStr(var_D4.Value), var_226, var_C0, var_C0)
  loc_1B43CBD:         If var_226 Then
  loc_1B43CC2:           On Error Resume Next
  loc_1B43CEF:           var_EC = CVar(Me.ImgMemSign.Tag) 'String
  loc_1B43CF9:           Me.Global.LoadPicture var_EC, var_D0, var_144, var_168, var_188
  loc_1B43D0E:           Me.ImgMemSign.Picture = var_D4
  loc_1B43D25:           Set var_C0 = Me.ImgMemSign
  loc_1B43D2B:           var_C0.Refresh
  loc_1B43D36:         Else
  loc_1B43D58:           Me.Global.LoadPicture var_D0, var_144, var_168, var_188, var_198
  loc_1B43D6D:           Me.ImgMemSign.Picture = var_C0
  loc_1B43D79:         End If
  loc_1B43D7B:       End If
  loc_1B43D7D:     End If
  loc_1B43D94:     Me.FAGrid.Rows = 1
  loc_1B43DD0:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(0), var_D4, var_F4, "Select * From MemberFamily Where LOGSITE_CODE='" & MemVar_1F92078 & "' And SubCode='", var_EC, -1)
  loc_1B43DD8:     var_D8 = var_D4.Text
  loc_1B43DE1:     var_FC = Me.Txt & var_F4
  loc_1B43DF1:     unk_5ADDC8.Execute var_FC & "' And RelationShip<>'Member' Order by SNo", var_D4, var_D4
  loc_1B43DFC:     Set var_88 = var_D8
  loc_1B43E2E:     If (var_88.RecordCount > 0) Then
  loc_1B43E35:       var_AA = 1
  loc_1B43E38:       ' Referenced from: 1B44A3E
  loc_1B43E49:       If Not(var_88.EOF) Then
  loc_1B43E52:         Set var_240 = Me.FAGrid
  loc_1B43E5C:         var_EC = CVar(CStr(var_AA)) 'String
  loc_1B43EA7:         Proc_6_39_E7C810(var_124, CVar(var_88.Fields.Item("SNo")), CVar(CLng(1)), CVar(CLng(var_AA)), FAGrid.DispID_10000)
  loc_1B43EB7:         LateIdCallSt
  loc_1B43F06:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("subcode")), CVar(CLng(2)), CVar(CLng(var_AA)), var_240, CVar(CStr(var_124)))) 'String
  loc_1B43F0D:         LateIdCallSt
  loc_1B43F5A:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RelationShip")), CVar(CLng(3)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B43F61:         LateIdCallSt
  loc_1B43FAE:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPrefix")), CVar(CLng(4)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B43FB5:         LateIdCallSt
  loc_1B44002:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(5)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B44009:         LateIdCallSt
  loc_1B44056:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Gender")), CVar(CLng(6)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B4405D:         LateIdCallSt
  loc_1B440AA:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MaritalStatus")), CVar(CLng(7)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B440B1:         LateIdCallSt
  loc_1B440E5:         var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B440ED:         var_198 = CVar(CLng(8)) 'Long
  loc_1B44121:         LateIdCallSt
  loc_1B44172:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("POB")), CVar(CLng(9)), CVar(CLng(var_AA)), var_240, CVar(CStr(Format(CVar(var_88.Fields.Item("DOB")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1B44179:         LateIdCallSt
  loc_1B441AD:         var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B441E9:         LateIdCallSt
  loc_1B4423A:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Phone")), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_240, CVar(CStr(Format(CVar(var_88.Fields.Item("WedDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1B44241:         LateIdCallSt
  loc_1B4428E:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile")), CVar(CLng(&HC)), CVar(CLng(var_AA)), var_240, var_124, CVar(CLng(&HA)))) 'String
  loc_1B44295:         LateIdCallSt
  loc_1B442E2:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Fax")), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B442E9:         LateIdCallSt
  loc_1B44336:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Email")), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B4433D:         LateIdCallSt
  loc_1B4438A:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nationality")), CVar(CLng(&HF)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B44391:         LateIdCallSt
  loc_1B443DE:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Religion")), CVar(CLng(&H10)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B443E5:         LateIdCallSt
  loc_1B44432:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("bloodGroup")), CVar(CLng(&H11)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B44439:         LateIdCallSt
  loc_1B44486:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ProOcc")), CVar(CLng(&H12)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B4448D:         LateIdCallSt
  loc_1B444DA:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Edquali")), CVar(CLng(&H13)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B444E1:         LateIdCallSt
  loc_1B4452E:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TBusiness")), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B44535:         LateIdCallSt
  loc_1B44582:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Turnover")), CVar(CLng(&H15)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B44589:         LateIdCallSt
  loc_1B445D6:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Passport")), CVar(CLng(&H16)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B445DD:         LateIdCallSt
  loc_1B4462A:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PAN")), CVar(CLng(&H17)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B44631:         LateIdCallSt
  loc_1B4467E:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Desig")), CVar(CLng(&H18)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B44685:         LateIdCallSt
  loc_1B446D2:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("InTax")), CVar(CLng(&H19)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B446D9:         LateIdCallSt
  loc_1B44726:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SpInterest")), CVar(CLng(&H1A)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B4472D:         LateIdCallSt
  loc_1B4477A:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PicPath")), CVar(CLng(&H1B)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B44781:         LateIdCallSt
  loc_1B447CE:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SigPath")), CVar(CLng(&H1C)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B447D5:         LateIdCallSt
  loc_1B44822:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Label")), CVar(CLng(&H1D)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B44829:         LateIdCallSt
  loc_1B44876:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("HW_Id")), CVar(CLng(&H1E)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B4487D:         LateIdCallSt
  loc_1B448CA:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")), CVar(CLng(&H1F)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B448D1:         LateIdCallSt
  loc_1B44905:         var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B4490D:         var_198 = CVar(CLng(&H20)) 'Long
  loc_1B44941:         LateIdCallSt
  loc_1B44992:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardRegId")), CVar(CLng(&H21)), CVar(CLng(var_AA)), var_240, CVar(CStr(Format(CVar(var_88.Fields.Item("CardIssDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1B44999:         LateIdCallSt
  loc_1B449CD:         var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B449D5:         var_198 = CVar(CLng(&H22)) 'Long
  loc_1B44A02:         var_154 = CVar(CStr(Format(CVar(var_88.Fields.Item("CardValidUpto")), "dd/MMM/yyyy"))) 'String
  loc_1B44A09:         LateIdCallSt
  loc_1B44A23:         Set var_240 = Nothing 
  loc_1B44A2F:         var_AA = (var_AA + 1)
  loc_1B44A37:         var_88.MoveNext
  loc_1B44A3E:         GoTo loc_1B43E38
  loc_1B44A41:       End If
  loc_1B44A44:     Else
  loc_1B44A5D:       var_124 = CVar(CStr(CLng(Me.FAGrid.Rows))) 'String
  loc_1B44A65:       Set var_D4 = Me.FAGrid
  loc_1B44A81:     End If
  loc_1B44A98:     Me.FAGrid.FixedRows = 1
  loc_1B44ABF:     Me.FAGrid.Row = 1
  loc_1B44AC9:     Call Proc_265_121_132A0A8(0, FAGrid.DispID_10000, var_124, var_AA, var_240, var_154, 1)
  loc_1B44AE3:     Me.FPGrid.Rows = 1
  loc_1B44B01:     var_F0 = "Select *,MPF.Mark From (Select * From MemberFamily Where RelationShip='Member') MF Inner Join MemProposedMemInf MPF On MF.SubCode=MPF.PMemCode Where MPF.LOGSITE_CODE='" & MemVar_1F92078
  loc_1B44B08:     var_124 = CVar(var_F0 & "' And MPF.SubCode='") 'String
  loc_1B44B4F:     unk_5ADDC8.Execute CStr(var_124 & Me.Fields.Item("subcode").Value & "' Order By MPF.SNo"), var_178, -1
  loc_1B44B5A:     Set var_88 = var_D8
  loc_1B44B90:     If (var_88.RecordCount > 0) Then
  loc_1B44B97:       var_AA = 1
  loc_1B44B9A:       ' Referenced from: 1B45090
  loc_1B44BAB:       If Not(var_88.EOF) Then
  loc_1B44BB4:         Set var_244 = Me.FPGrid
  loc_1B44BBE:         var_EC = CVar(CStr(var_AA)) 'String
  loc_1B44C09:         Proc_6_39_E7C810(var_124, CVar(var_88.Fields.Item("SNo")), CVar(CLng(1)), CVar(CLng(var_AA)), FPGrid.DispID_10000, CVar(var_88.Fields.Item("SNo")), var_AA)
  loc_1B44C19:         LateIdCallSt
  loc_1B44C68:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("subcode")), CVar(CLng(2)), CVar(CLng(var_AA)), var_244, CVar(CStr(var_124)), var_D8)) 'String
  loc_1B44C6F:         LateIdCallSt
  loc_1B44CBC:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PMemCode")), CVar(CLng(3)), CVar(CLng(var_AA)), var_244, var_124, 1)) 'String
  loc_1B44CC3:         LateIdCallSt
  loc_1B44D10:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemberType")), CVar(CLng(4)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B44D17:         LateIdCallSt
  loc_1B44D64:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")), CVar(CLng(5)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B44D6B:         LateIdCallSt
  loc_1B44DB8:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPrefix")), CVar(CLng(6)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B44DBF:         LateIdCallSt
  loc_1B44E0C:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(7)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B44E13:         LateIdCallSt
  loc_1B44E60:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Gender")), CVar(CLng(8)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B44E67:         LateIdCallSt
  loc_1B44EB4:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile")), CVar(CLng(9)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B44EBB:         LateIdCallSt
  loc_1B44F08:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Email")), CVar(CLng(&HA)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B44F0F:         LateIdCallSt
  loc_1B44F5C:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Desig")), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B44F63:         LateIdCallSt
  loc_1B44FB0:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PicPath")), CVar(CLng(&HC)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B44FB7:         LateIdCallSt
  loc_1B45004:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SigPath")), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B4500B:         LateIdCallSt
  loc_1B45058:         var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mark")), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B4505F:         LateIdCallSt
  loc_1B45075:         Set var_244 = Nothing 
  loc_1B45081:         var_AA = (var_AA + 1)
  loc_1B45089:         var_88.MoveNext
  loc_1B45090:         GoTo loc_1B44B9A
  loc_1B45093:       End If
  loc_1B45096:     Else
  loc_1B450A4:       var_EC = Me.FPGrid.Rows
  loc_1B450AF:       var_124 = CVar(CStr(CLng(var_EC))) 'String
  loc_1B450B7:       Set var_D4 = Me.FPGrid
  loc_1B450D3:     End If
  loc_1B450EA:     Me.FPGrid.FixedRows = 1
  loc_1B45111:     Me.FPGrid.Row = 1
  loc_1B4511B:     Call Proc_265_122_13298B4(0, FPGrid.DispID_10000, var_124, var_AA, var_244, var_124)
  loc_1B45127:     Set var_88 = Nothing
  loc_1B4512E:     var_AA = 1
  loc_1B45146:     Me.FGrid.Rows = 1
  loc_1B45164:     var_F0 = "Select NARRATION,DocID,V_SNo,V_Type,V_No,V_Date,Site_Code,SubCode,AmtCr,AmtDr,Chq_No,Chq_Date From Ledger Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1B4518A:     Set var_C0 = Me.Txt
  loc_1B45190:     Call 0.Method_Proc_265_112_1B45AC00 (CInt(0), var_D4, var_FC, var_F0 & "' or LOGSITE_CODE='HO') and V_Type='" & "F_AO" & "' and SubCode='", var_EC, -1, var_D8)
  loc_1B45198:     var_AA = var_D4.Text
  loc_1B451B1:     unk_5ADE06.Execute var_198 & var_FC & "' Order by V_SNo", var_168, var_240
  loc_1B451BC:     Set var_88 = var_D8
  loc_1B451F2:     If (var_88.RecordCount > 0) Then
  loc_1B451F9:       var_AA = 1
  loc_1B4522F:       global_132 = CStr(var_88.Fields.Item("DocID").Value)
  loc_1B45271:       global_120 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_1B45287:       global_124 = CByte(1)
  loc_1B4528B:       ' Referenced from: 1B45577
  loc_1B4529C:       If Not(var_88.EOF) Then
  loc_1B452DD:         If (var_88.Fields.Item("AmtCr").Value = 0) Then
  loc_1B452E5:           var_A0 = "Dr"
  loc_1B45310:           Proc_183_3_E7D1C8(var_124, CVar(var_88.Fields.Item("AmtDr")), global_124, global_120)
  loc_1B45319:           var_A8 = CSng(var_124)
  loc_1B45329:         Else
  loc_1B45367:           If (var_88.Fields.Item("AmtDr").Value = 0) Then
  loc_1B4536F:             var_A0 = "Cr"
  loc_1B4539A:             Proc_183_3_E7D1C8(var_124, CVar(var_88.Fields.Item("AmtCr")), var_A8)
  loc_1B453A3:             var_A8 = CSng(var_124)
  loc_1B453B0:           End If
  loc_1B453B0:         End If
  loc_1B453DB:         Proc_183_3_E7D1C8(var_274, var_A8, var_A8)
  loc_1B45419:         var_178 = Format(CVar(var_88.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1B45448:         var_D8 = var_88.Fields
  loc_1B45478:         var_264 = var_AA & CVar(Proc_183_2_E5A304(CVar(var_D8.Item("Narration")), 1 & var_178 & Chr(9), 1, CVar(var_AA) & Chr(9))) & Chr(9) 
  loc_1B454FB:         Proc_183_3_E7D1C8(var_314, CVar(var_88.Fields.Item("V_NO")), 1 & Format(var_274, "0.00") & Chr(9) & CVar(var_A0) & Chr(9), 1)
  loc_1B45508:         var_334 = CVar(CStr(var_264 & var_314)) 'String
  loc_1B45510:         Set var_224 = Me.FGrid
  loc_1B45568:         var_AA = (var_AA + 1)
  loc_1B45570:         var_88.MoveNext
  loc_1B45577:         GoTo loc_1B4528B
  loc_1B4557A:       End If
  loc_1B4558F:       Me.FGrid.FixedRows = 1
  loc_1B4559A:     Else
  loc_1B455A4:       global_132 = vbNullString
  loc_1B455B2:       global_120 = 0
  loc_1B455BE:       global_124 = CByte(0)
  loc_1B455D9:       var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1B455E1:       Set var_D4 = Me.FGrid
  loc_1B45612:       Me.FGrid.FixedRows = 1
  loc_1B4561A:     End If
  loc_1B45623:     Set var_88 = Nothing
  loc_1B45626:   End If
  loc_1B4563D:   Me.FGrid1.Rows = 1
  loc_1B4565B:   var_F0 = "Select MembershipRevMast.Code As RevCode,MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.ActiveYN From (MemRevWise MR Left Join MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F92070
  loc_1B456A0:   var_134 = CVar(var_F0 & "' and (MR.LOGSITE_CODE='" & MemVar_1F92078 & "' or MR.LOGSITE_CODE='HO') and MR.MemCode='") & Me.Fields.Item("SearchCode").Value 
  loc_1B456B7:   unk_5ADDC8.Execute CStr(var_134 & "'"), var_178, -1
  loc_1B456C2:   Set var_88 = var_D8
  loc_1B456EE:   var_BC = var_88.RecordCount
  loc_1B456FC:   If (var_BC > 0) Then
  loc_1B45703:     var_AA = 1
  loc_1B45706:     ' Referenced from: 1B459AB
  loc_1B45717:     If Not(var_88.EOF) Then
  loc_1B4571C:       var_D0 = vbNullString
  loc_1B45726:       Set var_C0 = Me.FGrid1
  loc_1B4573D:       Set var_348 = Me.FGrid1
  loc_1B45746:       var_144 = CVar(CLng(var_AA)) 'Long
  loc_1B4574E:       var_188 = CVar(CLng(6)) 'Long
  loc_1B4577E:       var_124 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_1B45785:       LateIdCallSt
  loc_1B457D6:       var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")), CVar(CLng(1)), CVar(CLng(var_AA)), var_348, var_124, CVar(CLng(1)), CVar(CLng(var_AA)))) 'String
  loc_1B457DD:       LateIdCallSt
  loc_1B45817:       Proc_6_39_E7C810(var_124, CVar(var_88.Fields.Item("Amount")), var_348, var_124, FGrid1.DispID_10000)
  loc_1B45820:       var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B45828:       var_198 = CVar(CLng(2)) 'Long
  loc_1B45858:       LateIdCallSt
  loc_1B458AB:       var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_AA)), var_348, CVar(CStr(Format(var_124, "0.00"))), 1, 1)) 'String
  loc_1B458B2:       LateIdCallSt
  loc_1B458E6:       var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B458EE:       var_198 = CVar(CLng(4)) 'Long
  loc_1B45912:       var_134 = Format(CVar(var_88.Fields.Item("AppDate")), "dd/mmm/yyyy")
  loc_1B4591B:       var_154 = CVar(CStr(var_134)) 'String
  loc_1B45922:       LateIdCallSt
  loc_1B45973:       var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ActiveYN")), CVar(CLng(5)), CVar(CLng(var_AA)), var_348, var_154, 1, 1)) 'String
  loc_1B4597A:       LateIdCallSt
  loc_1B45990:       Set var_348 = Nothing 
  loc_1B4599C:       var_AA = (var_AA + 1)
  loc_1B459A4:       var_88.MoveNext
  loc_1B459AB:       GoTo loc_1B45706
  loc_1B459AE:     End If
  loc_1B459AE:   End If
  loc_1B459B2:   var_D0 = 0
  loc_1B459BC:   Set var_C0 = Me.FGrid1
  loc_1B459EB:   If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1B459F0:     var_D0 = vbNullString
  loc_1B459FA:     Set var_C0 = Me.FGrid1
  loc_1B45A0B:   End If
  loc_1B45A0D:   var_D0 = 1
  loc_1B45A20:   Me.FGrid1.FixedRows = var_D0
  loc_1B45A2B: Else
  loc_1B45A2F:   Call Proc_265_104_124C4B4(FGrid1.DispID_10000, var_D0, FGrid1.DispID_2E, var_D0, var_AA, var_348, var_124)
  loc_1B45A34: End If
  loc_1B45A38: Call Proc_265_106_104DB04(var_198, var_168, var_348)
  loc_1B45A44: Set var_88 = Nothing
  loc_1B45A4E: Set var_B8 = Nothing
  loc_1B45A53: Exit Sub
  loc_1B45A54: ' Referenced from: 1B40E8C
  loc_1B45A5E: Set var_C0 = Err()
  loc_1B45A64: Call 0.Method_arg_1C (var_BC, var_124)
  loc_1B45A75: If (var_BC <> 0) Then
  loc_1B45A82:   Set var_C0 = Err()
  loc_1B45A88:   Call 0.Method_arg_2C (var_F0, var_198)
  loc_1B45AA9:   MsgBox(CVar(var_F0), &H40, "Validation", var_134, var_154)
  loc_1B45ABC: End If
  loc_1B45ABE: Exit Sub
End Sub

Public Sub Proc_265_113_1A49144(arg_C, arg_10, arg_14, arg_18, arg_1C) '1A49144
  'Data Table: 5ADD9C
  Dim var_D4 As Variant
  Dim var_DC As Variant
  Dim var_E0 As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_88 As Variant
  Dim var_F0 As Variant
  Dim var_D0 As Variant
  Dim var_100 As Variant
  Dim var_12C As Variant
  Dim var_98 As Variant
  Dim var_104 As Variant
  Dim var_15C As Variant
  Dim var_160 As Fields15
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_9C As Variant
  Dim var_1C8 As Fields15
  Dim var_230 As Fields15
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_A0 As Variant
  Dim var_298 As Fields15
  Dim var_2FC As Variant
  Dim var_300 As Fields15
  Dim var_334 As Variant
  Dim var_364 As Variant
  Dim var_94 As Variant
  Dim var_A98 As TextBox
  Dim var_C24 As TextBox
  Dim var_D8 As Variant
  Dim var_38C As String
  Dim var_390 As String
  Dim var_398 As String
  Dim var_174 As TextBox
  Dim var_1FC As Variant
  Dim var_1DC As TextBox
  Dim var_2CC As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_474 As Variant
  Dim var_48C As Variant
  Dim var_4CC As Variant
  Dim var_4EC As Variant
  Dim var_54C As Variant
  Dim var_60C As Variant
  Dim var_66C As Variant
  Dim var_6AC As Variant
  Dim var_6EC As Variant
  Dim var_714 As TextBox
  Dim var_758 As Variant
  Dim var_760 As TextBox
  Dim var_7C4 As Variant
  Dim var_7E4 As Variant
  Dim var_814 As Variant
  Dim var_87C As TextBox
  Dim var_890 As Variant
  Dim var_8C0 As Variant
  Dim var_900 As Variant
  Dim var_920 As Variant
  Dim var_928 As TextBox
  Dim var_974 As TextBox
  Dim var_9B8 As Variant
  Dim var_9E4 As Variant
  Dim var_A30 As Variant
  Dim var_A70 As Variant
  Dim var_A90 As Variant
  Dim var_BBC As Variant
  Dim var_C98 As Variant
  Dim var_CB8 As Variant
  Dim var_CC0 As TextBox
  Dim var_D58 As TextBox
  Dim var_DB4 As Variant
  Dim var_E2C As Variant
  Dim var_EAC As TextBox
  Dim var_244 As TextBox
  Dim var_2AC As TextBox
  Dim var_314 As TextBox
  Dim var_384 As Variant
  Dim var_47C As TextBox
  Dim var_3F0 As Variant
  Dim var_B34 As TextBox
  Dim var_B8C As TextBox
  Dim var_7F4 As Variant
  Dim var_804 As Variant
  Dim unk_5ADDC8 As Connection15
  Dim var_F4E As Integer
  Dim var_3AC As String
  Dim var_10C As TextBox
  Dim var_424 As TextBox
  Dim var_BAC As Variant
  Dim var_E54 As TextBox
  Dim var_E1C As Variant
  Dim var_E74 As Variant
  loc_1A45CF0: On Error Goto loc_1A4911A
  loc_1A45D11: Set var_D0 = Me.Txt
  loc_1A45D17: Call 0.Method_Proc_265_113_1A491440 (CInt(2), var_D4, var_D8, "SELECT * From AcGroup Where GroupCode='")
  loc_1A45D1F: var_100 = var_D4.Tag
  loc_1A45D28: var_DC = -1 & var_D8
  loc_1A45D38: unk_5ADE06.Execute var_DC & "'", var_104, 
  loc_1A45D43: Set var_88 = var_104
  loc_1A45D6F: If (var_88.RecordCount > 0) Then
  loc_1A45D9A:   var_8C = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Nature")))
  loc_1A45DBA:   var_D4 = var_88.Fields.Item("GroupNature")
  loc_1A45DCB:   var_90 = Proc_183_2_E5A304(CVar(var_D4))
  loc_1A45DD7: Else
  loc_1A45DDA:   var_8C = "Other"
  loc_1A45DE0:   var_90 = vbNullString
  loc_1A45DE3: End If
  loc_1A45E01: Set var_D0 = Me.Txt
  loc_1A45E07: Call 0.Method_Proc_265_113_1A491440 (CInt(0), var_D4, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A45E0F: var_100 = var_D4.Text
  loc_1A45E18: var_DC = -1 & var_D8
  loc_1A45E28: unk_5ADE06.Execute var_DC & "' And Name='Residential Address'", var_104, 
  loc_1A45E33: Set var_98 = var_104
  loc_1A45E69: Set var_D0 = Me.Txt
  loc_1A45E6F: Call 0.Method_Proc_265_113_1A491440 (CInt(0), var_D4, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A45E77: var_100 = var_D4.Text
  loc_1A45E80: var_DC = -1 & var_D8
  loc_1A45E90: unk_5ADE06.Execute var_DC & "' And Name='WorkPlace Address'", var_104, 
  loc_1A45E9B: Set var_9C = var_104
  loc_1A45ED1: Set var_D0 = Me.Txt
  loc_1A45ED7: Call 0.Method_Proc_265_113_1A491440 (CInt(0), var_D4, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A45EDF: var_100 = var_D4.Text
  loc_1A45EE8: var_DC = -1 & var_D8
  loc_1A45EF8: unk_5ADE06.Execute var_DC & "' And Name='Abroad Address'", var_104, 
  loc_1A45F03: Set var_A0 = var_104
  loc_1A45F39: Set var_D0 = Me.Txt
  loc_1A45F3F: Call 0.Method_Proc_265_113_1A491440 (CInt(0), var_D4, var_D8, "Select * from MemAddRWA where subcode ='")
  loc_1A45F47: var_384 = var_D4.Text
  loc_1A45F50: var_DC = -1 & var_D8
  loc_1A45F71: var_10C = var_98.Fields.Item("SNo")
  loc_1A45F80: Proc_183_3_E7D1C8(var_11C, CVar(var_10C))
  loc_1A45FAC: var_174 = var_98.Fields.Item("Name")
  loc_1A45FC0: var_1A4 = var_388 & CVar(Proc_183_2_E5A304(CVar(var_174), CVar(var_DC & "' And ((SNo=") & var_11C & " And Name ='")) 
  loc_1A45FE4: var_1DC = var_9C.Fields.Item("SNo")
  loc_1A45FF3: Proc_183_3_E7D1C8(var_1FC, CVar(var_1DC))
  loc_1A4601F: var_244 = var_9C.Fields.Item("Name")
  loc_1A46057: var_2AC = var_A0.Fields.Item("SNo")
  loc_1A46066: Proc_183_3_E7D1C8(var_2CC, CVar(var_2AC))
  loc_1A46077: var_2FC = var_1A4 & "')  Or (SNo=" & var_1FC & " And Name ='" & CVar(Proc_183_2_E5A304(CVar(var_244))) & "')  Or (SNo=" & var_2CC & " And Name ='" 
  loc_1A46092: var_314 = var_A0.Fields.Item("Name")
  loc_1A460BD: unk_5ADE06.Execute CStr(var_2FC & CVar(Proc_183_2_E5A304(CVar(var_314))) & "'))"), , 
  loc_1A460C8: Set var_94 = var_388
  loc_1A46134: If (var_94.RecordCount > 0) Then
  loc_1A4613A:   var_94.MoveFirst
  loc_1A46153:   var_94.Find "corresYN='Y'", 0, 1
  loc_1A4616C:   If (var_94.AbsolutePosition > 0) Then
  loc_1A4619A:     var_A4 = CStr(var_94.Fields.Item("Name").Value)
  loc_1A461D2:     var_A8 = CStr(var_94.Fields.Item("Add1").Value)
  loc_1A4620A:     var_AC = CStr(var_94.Fields.Item("Add2").Value)
  loc_1A46242:     var_B0 = CStr(var_94.Fields.Item("Add3").Value)
  loc_1A4627A:     var_B4 = CStr(var_94.Fields.Item("City").Value)
  loc_1A462B2:     var_B8 = CStr(var_94.Fields.Item("PinCode").Value)
  loc_1A462EA:     var_BC = CStr(var_94.Fields.Item("Phone").Value)
  loc_1A46322:     var_C0 = CStr(var_94.Fields.Item("Mobile").Value)
  loc_1A46357:     var_C4 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Mobile1")))
  loc_1A4638B:     var_C8 = CStr(var_94.Fields.Item("Email").Value)
  loc_1A463C3:     var_CC = CStr(var_94.Fields.Item("CorresYN").Value)
  loc_1A463D3:   Else
  loc_1A463D6:     var_94.MoveFirst
  loc_1A463EF:     var_94.Find "Name='Residential Address'", 0, 1
  loc_1A46408:     If (var_94.AbsolutePosition > 0) Then
  loc_1A46436:       var_A4 = CStr(var_94.Fields.Item("Name").Value)
  loc_1A4646E:       var_A8 = CStr(var_94.Fields.Item("Add1").Value)
  loc_1A464A6:       var_AC = CStr(var_94.Fields.Item("Add2").Value)
  loc_1A464DE:       var_B0 = CStr(var_94.Fields.Item("Add3").Value)
  loc_1A46516:       var_B4 = CStr(var_94.Fields.Item("City").Value)
  loc_1A4654E:       var_B8 = CStr(var_94.Fields.Item("PinCode").Value)
  loc_1A46586:       var_BC = CStr(var_94.Fields.Item("Phone").Value)
  loc_1A465BE:       var_C0 = CStr(var_94.Fields.Item("Mobile").Value)
  loc_1A465CE:       var_F0 = "Mobile1"
  loc_1A465F3:       var_C4 = Proc_6_38_E68A98(CVar(var_94.Fields.Item(var_F0)), var_F0)
  loc_1A46602:       var_F0 = "Email"
  loc_1A46616:       var_D4 = var_94.Fields.Item(var_F0)
  loc_1A46627:       var_C8 = CStr(var_D4.Value)
  loc_1A46637:       var_CC = "Y"
  loc_1A4663A:     End If
  loc_1A4663A:   End If
  loc_1A4663A: End If
  loc_1A46642: If (arg_C = "Add") Then
  loc_1A46653:   Set var_D0 = Me.Txt
  loc_1A46659:   Call 0.Method_Proc_265_113_1A491440 (CInt(8), var_D4)
  loc_1A46674:   Set var_A94 = Me.Txt
  loc_1A4667A:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H1A), var_A98)
  loc_1A46695:   Set var_C20 = Me.Txt
  loc_1A4669B:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H1B), var_C24)
  loc_1A466AF:   var_D8 = "Insert Into " & arg_10
  loc_1A466B6:   var_DC = var_D8 & " (Site_Code,SubCode,Name,NameHelp,AllowCredit,CreditLimit,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,ConPersonMName,ConPersonLName,FatherName,MotherName,Add1,Add2,Add3,CityCode,PIN,Phone,Mobile,Mobile1,EMail,PANNo,GSTIN,U_Name,U_EntDt,U_AE,CompanyType,LOGSITE_CODE,AppNo,CardNo,IdProof,IdProofNo,SubCorresYN,ActiveYN,CINNo,Discount,AddName,blacklisted,reasonblacklist,blacklistedby,bloodGroup,ApplDate,ValidFrom,ValidateUpto,MeshAc,Remark) Values ('"
  loc_1A466BD:   var_E0 = var_DC & MemVar_1F92070
  loc_1A466CB:   var_390 = var_E0 & "','" & arg_14
  loc_1A46717:   var_F0 = (var_D4.Text = "Yes")
  loc_1A4673E:   Set var_104 = Me.Txt
  loc_1A46744:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H28), var_10C)
  loc_1A46753:   Proc_6_39_E7C810(var_1A4, CVar(var_10C))
  loc_1A4675B:   var_1C4 = CVar(var_F0 & Proc_183_20_FB3974(arg_18, var_390 & "','" & arg_18 & "','") & "','") & IIf(var_F0, "Y", "N") & "'," & var_1A4 
  loc_1A46776:   Set var_160 = Me.Txt
  loc_1A4677C:   Call 0.Method_Proc_265_113_1A491440 (CInt(2), var_174)
  loc_1A467D0:   Set var_1C8 = Me.Txt
  loc_1A467D6:   Call 0.Method_Proc_265_113_1A491440 (CInt(3), var_1DC)
  loc_1A46801:   Set var_230 = Me.Txt
  loc_1A46807:   Call 0.Method_Proc_265_113_1A491440 (CInt(4), var_244)
  loc_1A4681E:   var_334 = var_1C4 & ",'" & CVar(var_174.Tag) & "','" & CVar(var_90) & "','" & CVar(var_8C) & "','" & CVar(var_1DC.Text) & "','" & Trim(CVar(var_244)) 
  loc_1A46836:   Set var_298 = Me.Txt
  loc_1A4683C:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H25), var_2AC)
  loc_1A46844:   var_364 = CVar(var_2AC) 'Address
  loc_1A4686B:   Set var_300 = Me.Txt
  loc_1A46871:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H26), var_314)
  loc_1A468A0:   Set var_388 = Me.Txt
  loc_1A468A6:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H29), var_424)
  loc_1A468D5:   Set var_478 = Me.Txt
  loc_1A468DB:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H2A), var_47C)
  loc_1A468FB:   var_4CC = var_334 & "','" & Trim(var_364) & "','" & Trim(CVar(var_314)) & "','" & Trim(CVar(var_424)) & "','" & Trim(CVar(var_47C)) & "','" 
  loc_1A4695A:   var_60C = var_4CC & CVar(var_A8) & "','" & CVar(var_AC) & "','" & CVar(var_B0) & "','" & CVar(var_B4) & "','" & CVar(var_B8) & "','" 
  loc_1A469B8:   Set var_710 = Me.Txt
  loc_1A469BE:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H11), var_714)
  loc_1A469DA:   var_758 = var_60C & CVar(var_BC) & "','" & CVar(var_C0) & "','" & CVar(var_C4) & "','" & CVar(var_C8) & "','" & CVar(var_714.Text) & "','" 
  loc_1A469EC:   Set var_75C = Me.Txt
  loc_1A469F2:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H35), var_760)
  loc_1A46A33:   Proc_183_7_EB0C44(var_804, Now)
  loc_1A46A69:   Set var_878 = Me.Txt
  loc_1A46A6F:   Call 0.Method_Proc_265_113_1A491440 (CInt(7), var_87C)
  loc_1A46A7F:   var_890 = CVar(var_87C.Tag) 'String
  loc_1A46A8B:   var_8C0 = var_758 & CVar(var_760.Text) & "','" & CVar(MemVar_1F920C8) & "'," & var_804 & ",'" & CVar(arg_1C) & "','" & var_890 & "', " 
  loc_1A46AB9:   Set var_924 = Me.Txt
  loc_1A46ABF:   Call 0.Method_Proc_265_113_1A491440 (CInt(5), var_928)
  loc_1A46AED:   Set var_970 = Me.Txt
  loc_1A46AF3:   Call 0.Method_Proc_265_113_1A491440 (CInt(6), var_974)
  loc_1A46B21:   Set var_9BC = Me.Txt
  loc_1A46B27:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H2B), var_9C0)
  loc_1A46B3A:   var_9E4 = var_8C0 & " '" & CVar(MemVar_1F92078) & "','" & CVar(var_928.Text) & "','" & CVar(var_974.Text) & "','" & CVar(var_9C0.Text) 
  loc_1A46B55:   Set var_A08 = Me.Txt
  loc_1A46B5B:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H2C), var_A0C)
  loc_1A46B6E:   var_A30 = var_9E4 & "','" & CVar(var_A0C.Text) 
  loc_1A46BA7:   var_AFC = IIf((var_A98.Text = "Yes"), 1, 0)
  loc_1A46BC7:   Set var_B30 = Me.Txt
  loc_1A46BCD:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H2E), var_B34)
  loc_1A46BDC:   Proc_6_17_EAA2B0(var_B54, CVar(var_B34))
  loc_1A46BFC:   Set var_B88 = Me.Txt
  loc_1A46C02:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H1E), var_B8C)
  loc_1A46C11:   Proc_6_39_E7C810(var_BAC, CVar(var_B8C))
  loc_1A46C66:   var_C98 = var_A30 & "','" & CVar(var_CC) & "'," & var_AFC & "," & var_B54 & "," & var_BAC & ",'" & CVar(var_A4) & "','" & IIf((var_C24.Text = "Yes"), "Y", "N") 
  loc_1A46C81:   Set var_CBC = Me.Txt
  loc_1A46C87:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H1D), var_CC0)
  loc_1A46CB5:   Set var_D08 = Me.Txt
  loc_1A46CBB:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H1F), var_D0C)
  loc_1A46CEF:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H27), var_D58)
  loc_1A46D1A:   Set var_DA0 = Me.Txt
  loc_1A46D20:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H1C), var_DA4)
  loc_1A46D2F:   Proc_6_7_F25D88(var_DC4, CVar(var_DA4))
  loc_1A46D4F:   Set var_DF8 = Me.Txt
  loc_1A46D55:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H2D), var_DFC)
  loc_1A46D64:   Proc_6_7_F25D88(var_E1C, CVar(var_DFC))
  loc_1A46D6C:   var_E2C = var_C98 & "','" & CVar(var_CC0.Text) & "','" & CVar(var_D0C.Text) & "','" & CVar(var_D58.Text) & "'," & var_DC4 & "," & var_E1C 
  loc_1A46D84:   Set var_E50 = Me.Txt
  loc_1A46D8A:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H30), var_E54)
  loc_1A46D99:   Proc_6_7_F25D88(var_E74, CVar(var_E54))
  loc_1A46DBC:   Set var_EA8 = Me.Txt
  loc_1A46DC2:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H24), var_EAC)
  loc_1A46DED:   Set var_EF4 = Me.Txt
  loc_1A46DF3:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H23), var_EF8)
  loc_1A46E02:   Proc_6_17_EAA2B0(var_F18, CVar(var_EF8))
  loc_1A46E1E:   global_224 = CStr(var_E2C & "," & var_E74 & ",'" & CVar(var_EAC.Tag) & "'," & var_F18 & ")")
  loc_1A46FD1:   var_D8 = "Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone," & "Mobile,Mobile1,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PostedAt,PassPort,PAN,InTax,SpInterest,PicPath,"
  loc_1A46FFE:   Set var_D0 = Me.Txt
  loc_1A47004:   Call 0.Method_Proc_265_113_1A491440 (CInt(3), var_D4, var_390, var_D8 & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('" & arg_14 & "',1,'")
  loc_1A4700C:   var_A90 = var_D4.Text
  loc_1A47015:   var_398 = -1 & var_390
  loc_1A4702A:   Set var_104 = Me.Txt
  loc_1A47030:   Call 0.Method_Proc_265_113_1A491440 (CInt(4), var_10C)
  loc_1A47038:   var_100 = CVar(var_10C) 'Address
  loc_1A4704C:   var_12C = Trim(var_100) & " " 
  loc_1A4705B:   Set var_160 = Me.Txt
  loc_1A47061:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H25), var_174, var_12C)
  loc_1A47090:   Set var_1C8 = Me.Txt
  loc_1A47096:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H26), var_1DC)
  loc_1A470D7:   Set var_230 = Me.Txt
  loc_1A470DD:   Call 0.Method_Proc_265_113_1A491440 (CInt(6), var_244)
  loc_1A470F0:   var_274 = Me.Txt & Trim(CVar(var_390 & "','" & arg_18 & "','") & Trim(CVar(var_174)) & " " & Trim(CVar(var_1DC))) & "','" & CVar(var_244.Text) 
  loc_1A4710B:   Set var_298 = Me.Txt
  loc_1A47111:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H13), var_2AC)
  loc_1A4713F:   Set var_300 = Me.Txt
  loc_1A47145:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H16), var_314)
  loc_1A47170:   Set var_388 = Me.Txt
  loc_1A47176:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H14), var_424)
  loc_1A47185:   Proc_183_7_EB0C44(var_364, CVar(var_424))
  loc_1A471A8:   Set var_478 = Me.Txt
  loc_1A471AE:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H15), var_47C)
  loc_1A471CA:   var_3F0 = var_274 & "','Member','" & CVar(var_2AC.Text) & "','" & CVar(var_314.Text) & "'," & var_364 & ",'" & CVar(var_47C.Text) & "',Null,'" 
  loc_1A47228:   Set var_710 = Me.Txt
  loc_1A4722E:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H17), var_714)
  loc_1A4724A:   var_4EC = var_3F0 & CVar(var_BC) & "','" & CVar(var_C0) & "','" & CVar(var_C4) & "','" & CVar(var_C8) & "','" & CVar(var_714.Text) & "','" 
  loc_1A4725C:   Set var_75C = Me.Txt
  loc_1A47262:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H19), var_760)
  loc_1A47290:   Set var_878 = Me.Txt
  loc_1A47296:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H27), var_87C)
  loc_1A472C4:   Set var_924 = Me.Txt
  loc_1A472CA:   Call 0.Method_Proc_265_113_1A491440 (CInt(&HB), var_928)
  loc_1A472F8:   Set var_970 = Me.Txt
  loc_1A472FE:   Call 0.Method_Proc_265_113_1A491440 (CInt(&HC), var_974)
  loc_1A4731A:   var_66C = var_4EC & CVar(var_760.Text) & "','" & CVar(var_87C.Text) & "','" & CVar(var_928.Text) & "','" & CVar(var_974.Text) & "','" 
  loc_1A4732C:   Set var_9BC = Me.Txt
  loc_1A47332:   Call 0.Method_Proc_265_113_1A491440 (CInt(&HD), var_9C0)
  loc_1A47360:   Set var_A08 = Me.Txt
  loc_1A47366:   Call 0.Method_Proc_265_113_1A491440 (CInt(&HE), var_A0C)
  loc_1A47376:   var_6EC = CVar(var_A0C.Text) 'String
  loc_1A47394:   Set var_A94 = Me.Txt
  loc_1A4739A:   Call 0.Method_Proc_265_113_1A491440 (CInt(&HF), var_A98)
  loc_1A473C8:   Set var_B30 = Me.Txt
  loc_1A473CE:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H2F), var_B34)
  loc_1A473FC:   Set var_B88 = Me.Txt
  loc_1A47402:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H10), var_B8C)
  loc_1A47415:   var_7F4 = var_66C & CVar(var_9C0.Text) & "','" & var_6EC & "','" & CVar(var_A98.Text) & "','" & CVar(var_B34.Text) & "','" & CVar(var_B8C.Text) 
  loc_1A47430:   Set var_C20 = Me.Txt
  loc_1A47436:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H11), var_C24)
  loc_1A47446:   var_814 = CVar(var_C24.Text) 'String
  loc_1A47461:   Set var_CBC = Me.Txt
  loc_1A47467:   Call 0.Method_Proc_265_113_1A491440 (CInt(&H12), var_CC0)
  loc_1A47476:   Proc_6_17_EAA2B0(var_890, CVar(var_CC0))
  loc_1A474B7:   Set var_D0C = Me.ImgMemSign
  loc_1A474DB:   var_988 = var_7F4 & "','" & var_814 & "',''," & var_890 & ",'" & CVar(Me.ImgMemPhoto.Tag) & "','" & CVar(var_D0C.Tag) & "',1,'" & CVar(MemVar_1F92070) 
  loc_1A4750A:   var_A04 = var_988 & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_1A4751C:   Proc_183_7_EB0C44(var_A30, Now)
  loc_1A4752D:   var_A70 = var_A04 & var_A30 & ",'A')" 
  loc_1A4753B:   unk_5ADE06.Execute CStr(var_A70), , 
  loc_1A47664: Else
  loc_1A4766C:   If (arg_C = "Edit") Then
  loc_1A47690:     var_DC = -1 & Proc_6_38_E68A98(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100)
  loc_1A47697:     var_E0 = Proc_6_38_E68A98(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100) & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "'"
  loc_1A476A0:     unk_5ADDC8.Execute var_E0, var_D0, 
  loc_1A476E0:     var_D8 = Proc_6_38_E68A98(arg_14, "Select Max(SeqNo) From SubgroupLog  Where SUBCODE='", var_100, -1, var_D0)
  loc_1A476F4:     unk_5ADDC8.Execute var_D4 & Proc_6_38_E68A98(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100) & "'", 0, var_104
  loc_1A47704:      = var_D4.Item()
  loc_1A4770C:      = var_104.Value
  loc_1A47717:     Proc_6_39_E7C810(var_12C)
  loc_1A47720:     var_F4E = CInt(var_12C)
  loc_1A47756:     var_D8 = CStr((var_F4E + 1))
  loc_1A4775A:     var_DC = "Update SubgroupLog Set SeqNo=" & Proc_6_38_E68A98(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100)
  loc_1A47771:     var_38C = Proc_6_38_E68A98(arg_14, var_DC & " Where IsNull(SeqNo,0)=0 And SUBCODE='", var_100, -1)
  loc_1A47775:     var_390 = var_D0 & Proc_6_38_E68A98(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100) & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('" & arg_14
  loc_1A47785:     unk_5ADDC8.Execute var_390 & "'", var_F4E, var_D0.Fields
  loc_1A477B3:     If (var_94.AbsolutePosition > 0) Then
  loc_1A477C4:       Set var_878 = Me.Txt
  loc_1A477CA:       Call 0.Method_Proc_265_113_1A491440 (CInt(8), var_87C)
  loc_1A477E5:       Set var_A08 = Me.Txt
  loc_1A477EB:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1A), var_A0C)
  loc_1A47806:       Set var_B30 = Me.Txt
  loc_1A4780C:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1B), var_B34)
  loc_1A47820:       var_D8 = "Update " & arg_10
  loc_1A47827:       var_DC = var_D8 & " Set Name='"
  loc_1A4782E:       var_E0 = var_DC & arg_18
  loc_1A4785C:       Set var_D0 = Me.Txt
  loc_1A47862:       Call 0.Method_Proc_265_113_1A491440 (CInt(2), var_D4)
  loc_1A47888:       var_3AC = var_E0 & "',NameHelp='" & Proc_183_20_FB3974(arg_18) & "',GroupCode='" & var_D4.Tag & "',GroupNature='" & var_90 & "',Nature='"
  loc_1A478A7:       Set var_104 = Me.Txt
  loc_1A478AD:       Call 0.Method_Proc_265_113_1A491440 (CInt(3), var_10C)
  loc_1A478D3:       Set var_160 = Me.Txt
  loc_1A478D9:       Call 0.Method_Proc_265_113_1A491440 (CInt(4), var_174)
  loc_1A478F9:       var_15C = CVar(var_3AC & var_8C & "',ConPrefix='" & var_10C.Text & "',ConPerson='") & Trim(CVar(var_174)) & "',ConPersonMName='" 
  loc_1A47908:       Set var_1C8 = Me.Txt
  loc_1A4790E:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H25), var_1DC)
  loc_1A4793D:       Set var_230 = Me.Txt
  loc_1A47943:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H26), var_244)
  loc_1A47972:       Set var_298 = Me.Txt
  loc_1A47978:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H29), var_2AC)
  loc_1A47998:       var_294 = var_15C & Trim(CVar(var_1DC)) & "',ConPersonLName='" & Trim(CVar(var_244)) & "',FatherName='" & Trim(CVar(var_2AC)) & "',MotherName='" 
  loc_1A479A7:       Set var_300 = Me.Txt
  loc_1A479AD:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2A), var_314)
  loc_1A479F2:       Proc_183_7_EB0C44(var_364, Now)
  loc_1A47A0D:       var_3D0 = var_294 & Trim(CVar(var_314)) & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_364 & ",U_AE='" & CVar(arg_1C) 
  loc_1A47A28:       Set var_388 = Me.Txt
  loc_1A47A2E:       Call 0.Method_Proc_265_113_1A491440 (CInt(7), var_424)
  loc_1A47A6C:       Set var_478 = Me.Txt
  loc_1A47A72:       Call 0.Method_Proc_265_113_1A491440 (CInt(6), var_47C)
  loc_1A47A89:       var_48C = var_3D0 & "',CompanyType='" & CVar(var_424.Tag) & "',LOGSITE_CODE='" & CVar(MemVar_1F92078) & "',CardNo='" & Trim(CVar(var_47C)) 
  loc_1A47AA1:       Set var_710 = Me.Txt
  loc_1A47AA7:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2B), var_714)
  loc_1A47AD6:       Set var_75C = Me.Txt
  loc_1A47ADC:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2C), var_760)
  loc_1A47B2D:       var_60C = var_48C & "',IdProof='" & Trim(CVar(var_714)) & "',IdProofNo='" & Trim(CVar(var_760)) & "',AllowCredit='" & IIf((var_87C.Text = "Yes"), "Y", "N") 
  loc_1A47B45:       Set var_924 = Me.Txt
  loc_1A47B4B:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H28), var_928)
  loc_1A47B5A:       Proc_6_39_E7C810(var_66C, CVar(var_928))
  loc_1A47B7A:       Set var_970 = Me.Txt
  loc_1A47B80:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1E), var_974)
  loc_1A47B8F:       Proc_6_39_E7C810(var_6EC, CVar(var_974))
  loc_1A47BB2:       Set var_9BC = Me.Txt
  loc_1A47BB8:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H24), var_9C0)
  loc_1A47BF9:       var_7E4 = var_60C & "',CreditLimit=" & var_66C & ",Discount=" & var_6EC & ",MeshAc='" & CVar(var_9C0.Tag) & "', ActiveYN =" & IIf((var_A0C.Text = "Yes"), 1, 0) 
  loc_1A47C11:       Set var_A94 = Me.Txt
  loc_1A47C17:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2E), var_A98)
  loc_1A47C26:       Proc_6_17_EAA2B0(var_814, CVar(var_A98))
  loc_1A47C83:       Set var_B88 = Me.Txt
  loc_1A47C89:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1D), var_B8C)
  loc_1A47C9C:       var_920 = var_7E4 & ",CINNo=" & var_814 & ",BlackListed='" & IIf((var_B34.Text = "Yes"), "Y", "N") & "',ReasonBlackList='" & CVar(var_B8C.Text) 
  loc_1A47CB7:       Set var_C20 = Me.Txt
  loc_1A47CBD:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1F), var_C24)
  loc_1A47CEB:       Set var_CBC = Me.Txt
  loc_1A47CF1:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H27), var_CC0)
  loc_1A47D1C:       Set var_D08 = Me.Txt
  loc_1A47D22:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1C), var_D0C)
  loc_1A47D31:       Proc_6_7_F25D88(var_A04, CVar(var_D0C))
  loc_1A47D42:       var_A30 = var_920 & "',BlackListedBy='" & CVar(var_C24.Text) & "', BloodGroup='" & CVar(var_CC0.Text) & "',ApplDate=" & var_A04 & ",ValidFrom=" 
  loc_1A47D51:       Set var_D54 = Me.Txt
  loc_1A47D57:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2D), var_D58)
  loc_1A47D66:       Proc_6_7_F25D88(var_A70, CVar(var_D58))
  loc_1A47D86:       Set var_DA0 = Me.Txt
  loc_1A47D8C:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H30), var_DA4)
  loc_1A47D9B:       Proc_6_7_F25D88(var_AFC, CVar(var_DA4))
  loc_1A47DBB:       Set var_DF8 = Me.Txt
  loc_1A47DC1:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H23), var_DFC)
  loc_1A47DD0:       Proc_6_17_EAA2B0(var_B54, CVar(var_DFC))
  loc_1A47DFE:       var_BBC = var_A30 & var_A70 & ",ValidateUpto=" & var_AFC & ",Remark=" & var_B54 & ",Add1='" & CVar(var_A8) & "',Add2='" & CVar(var_AC) 
  loc_1A47E4A:       var_CB8 = var_BBC & "',Add3='" & CVar(var_B0) & "',CityCode='" & CVar(var_B4) & "',Pin='" & CVar(var_B8) & "',Phone='" & CVar(var_BC) 
  loc_1A47EA7:       Set var_E50 = Me.Txt
  loc_1A47EAD:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H11), var_E54)
  loc_1A47EC0:       var_DB4 = var_CB8 & "',Mobile='" & CVar(var_C0) & "',Mobile1='" & CVar(var_C4) & "',EMail='" & CVar(var_C8) & "'," & "PANNo='" & CVar(var_E54.Text) 
  loc_1A47EE4:       Set var_EA8 = Me.Txt
  loc_1A47EEA:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H35), var_EAC)
  loc_1A47F2C:       var_E74 = var_DB4 & "'," & "GSTIN='" & CVar(var_EAC.Text) & "',SubCorresYN='" & CVar(var_CC) & "',AddName='" & CVar(var_A4) & "' Where SUBCODE='" 
  loc_1A47F4A:       global_224 = CStr(var_E74 & CVar(arg_14) & "'")
  loc_1A480E0:     Else
  loc_1A480EE:       Set var_878 = Me.Txt
  loc_1A480F4:       Call 0.Method_Proc_265_113_1A491440 (CInt(8), var_87C)
  loc_1A4810F:       Set var_A08 = Me.Txt
  loc_1A48115:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1A), var_A0C)
  loc_1A48130:       Set var_B30 = Me.Txt
  loc_1A48136:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1B), var_B34)
  loc_1A4814A:       var_D8 = "Update " & arg_10
  loc_1A48151:       var_DC = var_D8 & " Set Name='"
  loc_1A48158:       var_E0 = var_DC & arg_18
  loc_1A48186:       Set var_D0 = Me.Txt
  loc_1A4818C:       Call 0.Method_Proc_265_113_1A491440 (CInt(2), var_D4)
  loc_1A481B2:       var_3AC = var_E0 & "',NameHelp='" & Proc_183_20_FB3974(arg_18) & "',GroupCode='" & var_D4.Tag & "',GroupNature='" & var_90 & "',Nature='"
  loc_1A481D1:       Set var_104 = Me.Txt
  loc_1A481D7:       Call 0.Method_Proc_265_113_1A491440 (CInt(3), var_10C)
  loc_1A481FD:       Set var_160 = Me.Txt
  loc_1A48203:       Call 0.Method_Proc_265_113_1A491440 (CInt(4), var_174)
  loc_1A48223:       var_15C = CVar(var_3AC & var_8C & "',ConPrefix='" & var_10C.Text & "',ConPerson='") & Trim(CVar(var_174)) & "',ConPersonMName='" 
  loc_1A48232:       Set var_1C8 = Me.Txt
  loc_1A48238:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H25), var_1DC)
  loc_1A48267:       Set var_230 = Me.Txt
  loc_1A4826D:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H26), var_244)
  loc_1A4829C:       Set var_298 = Me.Txt
  loc_1A482A2:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H29), var_2AC)
  loc_1A482C2:       var_294 = var_15C & Trim(CVar(var_1DC)) & "',ConPersonLName='" & Trim(CVar(var_244)) & "',FatherName='" & Trim(CVar(var_2AC)) & "',MotherName='" 
  loc_1A482D1:       Set var_300 = Me.Txt
  loc_1A482D7:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2A), var_314)
  loc_1A4831C:       Proc_183_7_EB0C44(var_364, Now)
  loc_1A48337:       var_3D0 = var_294 & Trim(CVar(var_314)) & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_364 & ",U_AE='" & CVar(arg_1C) 
  loc_1A48352:       Set var_388 = Me.Txt
  loc_1A48358:       Call 0.Method_Proc_265_113_1A491440 (CInt(7), var_424)
  loc_1A48396:       Set var_478 = Me.Txt
  loc_1A4839C:       Call 0.Method_Proc_265_113_1A491440 (CInt(6), var_47C)
  loc_1A483B3:       var_48C = var_3D0 & "',CompanyType='" & CVar(var_424.Tag) & "',LOGSITE_CODE='" & CVar(MemVar_1F92078) & "',CardNo='" & Trim(CVar(var_47C)) 
  loc_1A483CB:       Set var_710 = Me.Txt
  loc_1A483D1:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2B), var_714)
  loc_1A48400:       Set var_75C = Me.Txt
  loc_1A48406:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2C), var_760)
  loc_1A48457:       var_60C = var_48C & "',IdProof='" & Trim(CVar(var_714)) & "',IdProofNo='" & Trim(CVar(var_760)) & "',AllowCredit='" & IIf((var_87C.Text = "Yes"), "Y", "N") 
  loc_1A4846F:       Set var_924 = Me.Txt
  loc_1A48475:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H28), var_928)
  loc_1A48484:       Proc_6_39_E7C810(var_66C, CVar(var_928))
  loc_1A484A4:       Set var_970 = Me.Txt
  loc_1A484AA:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1E), var_974)
  loc_1A484B9:       Proc_6_39_E7C810(var_6EC, CVar(var_974))
  loc_1A484DC:       Set var_9BC = Me.Txt
  loc_1A484E2:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H24), var_9C0)
  loc_1A48523:       var_7E4 = var_60C & "',CreditLimit=" & var_66C & ",Discount=" & var_6EC & ",MeshAc='" & CVar(var_9C0.Tag) & "', ActiveYN =" & IIf((var_A0C.Text = "Yes"), 1, 0) 
  loc_1A4853B:       Set var_A94 = Me.Txt
  loc_1A48541:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2E), var_A98)
  loc_1A48550:       Proc_6_17_EAA2B0(var_814, CVar(var_A98))
  loc_1A4856A:       var_890 = "N"
  loc_1A485AD:       Set var_B88 = Me.Txt
  loc_1A485B3:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1D), var_B8C)
  loc_1A485C6:       var_920 = var_7E4 & ",CINNo=" & var_814 & ",BlackListed='" & IIf((var_B34.Text = "Yes"), "Y", var_890) & "',ReasonBlackList='" & CVar(var_B8C.Text) 
  loc_1A485E1:       Set var_C20 = Me.Txt
  loc_1A485E7:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1F), var_C24)
  loc_1A48615:       Set var_CBC = Me.Txt
  loc_1A4861B:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H27), var_CC0)
  loc_1A48646:       Set var_D08 = Me.Txt
  loc_1A4864C:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H1C), var_D0C)
  loc_1A4865B:       Proc_6_7_F25D88(var_A04, CVar(var_D0C))
  loc_1A4866C:       var_A30 = var_920 & "',BlackListedBy='" & CVar(var_C24.Text) & "', BloodGroup='" & CVar(var_CC0.Text) & "',ApplDate=" & var_A04 & ",ValidFrom=" 
  loc_1A4867B:       Set var_D54 = Me.Txt
  loc_1A48681:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H2D), var_D58)
  loc_1A48690:       Proc_6_7_F25D88(var_A70, CVar(var_D58))
  loc_1A486B0:       Set var_DA0 = Me.Txt
  loc_1A486B6:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H30), var_DA4)
  loc_1A486C5:       Proc_6_7_F25D88(var_AFC, CVar(var_DA4))
  loc_1A486E5:       Set var_DF8 = Me.Txt
  loc_1A486EB:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H23), var_DFC)
  loc_1A486FA:       Proc_6_17_EAA2B0(var_B54, CVar(var_DFC))
  loc_1A48728:       var_BBC = var_A30 & var_A70 & ",ValidateUpto=" & var_AFC & ",Remark=" & var_B54 & ",Add1='" & CVar(var_A8) & "',Add2='" & CVar(var_AC) 
  loc_1A48774:       var_CB8 = var_BBC & "',Add3='" & CVar(var_B0) & "',CityCode='" & CVar(var_B4) & "',Pin='" & CVar(var_B8) & "',Phone='" & CVar(var_BC) 
  loc_1A487D1:       Set var_E50 = Me.Txt
  loc_1A487D7:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H11), var_E54)
  loc_1A487EA:       var_DB4 = var_CB8 & "',Mobile='" & CVar(var_C0) & "',Mobile1='" & CVar(var_C4) & "',EMail='" & CVar(var_C8) & "'," & "PANNo='" & CVar(var_E54.Text) 
  loc_1A4880E:       Set var_EA8 = Me.Txt
  loc_1A48814:       Call 0.Method_Proc_265_113_1A491440 (CInt(&H35), var_EAC)
  loc_1A48856:       var_E74 = var_DB4 & "'," & "GSTIN='" & CVar(var_EAC.Text) & "',SubCorresYN='" & CVar(var_CC) & "',AddName='" & CVar(var_A4) & "' Where SUBCODE='" 
  loc_1A48874:       global_224 = CStr(var_E74 & CVar(arg_14) & "'")
  loc_1A48A07:     End If
  loc_1A48A25:     Set var_D0 = Me.Txt
  loc_1A48A2B:     Call 0.Method_Proc_265_113_1A491440 (CInt(3), var_D4, var_D8, "Update MemberFamily Set ConPrefix='")
  loc_1A48A33:     var_A90 = var_D4.Text
  loc_1A48A3C:     var_DC = -1 & var_D8
  loc_1A48A57:     Call 0.Method_Proc_265_113_1A491440 (CInt(4), var_10C)
  loc_1A48A82:     Set var_160 = Me.Txt
  loc_1A48A88:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H25), var_174, Trim(CVar(var_10C)) & " ")
  loc_1A48AB7:     Set var_1C8 = Me.Txt
  loc_1A48ABD:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H26), var_1DC)
  loc_1A48AFE:     Set var_230 = Me.Txt
  loc_1A48B04:     Call 0.Method_Proc_265_113_1A491440 (CInt(6), var_244)
  loc_1A48B17:     var_274 = var_D54 & Trim(CVar(var_DC & "',Name='") & Trim(CVar(var_174)) & " " & Trim(CVar(var_1DC))) & "',CardNo='" & CVar(var_244.Text) 
  loc_1A48B32:     Set var_298 = Me.Txt
  loc_1A48B38:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H13), var_2AC)
  loc_1A48B66:     Set var_300 = Me.Txt
  loc_1A48B6C:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H16), var_314)
  loc_1A48B97:     Set var_388 = Me.Txt
  loc_1A48B9D:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H14), var_424)
  loc_1A48BAC:     Proc_183_7_EB0C44(var_364, CVar(var_424))
  loc_1A48BCF:     Set var_478 = Me.Txt
  loc_1A48BD5:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H15), var_47C)
  loc_1A48BE8:     var_3E0 = var_274 & "',Gender='" & CVar(var_2AC.Text) & "',MaritalStatus='" & CVar(var_314.Text) & "',DOB=" & var_364 & ",POB='" & CVar(var_47C.Text) 
  loc_1A48C2A:     var_474 = var_3E0 & "',WedDate=Null,Phone='" & CVar(var_BC) & "',Mobile='" & CVar(var_C0) & "',Mobile1='" & CVar(var_C4) & "',Email='" 
  loc_1A48C4F:     Set var_710 = Me.Txt
  loc_1A48C55:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H17), var_714)
  loc_1A48C83:     Set var_75C = Me.Txt
  loc_1A48C89:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H19), var_760)
  loc_1A48CA5:     var_54C = var_474 & CVar(var_C8) & "',Nationality='" & CVar(var_714.Text) & "',Religion='" & CVar(var_760.Text) & "',BloodGroup='" 
  loc_1A48CB7:     Set var_878 = Me.Txt
  loc_1A48CBD:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H27), var_87C)
  loc_1A48CEB:     Set var_924 = Me.Txt
  loc_1A48CF1:     Call 0.Method_Proc_265_113_1A491440 (CInt(&HB), var_928)
  loc_1A48D1F:     Set var_970 = Me.Txt
  loc_1A48D25:     Call 0.Method_Proc_265_113_1A491440 (CInt(&HC), var_974)
  loc_1A48D53:     Set var_9BC = Me.Txt
  loc_1A48D59:     Call 0.Method_Proc_265_113_1A491440 (CInt(&HD), var_9C0)
  loc_1A48D6C:     var_6AC = var_54C & CVar(var_87C.Text) & "',ProOcc='" & CVar(var_928.Text) & "',EdQuali='" & CVar(var_974.Text) & "',TBusiness='" & CVar(var_9C0.Text) 
  loc_1A48D87:     Set var_A08 = Me.Txt
  loc_1A48D8D:     Call 0.Method_Proc_265_113_1A491440 (CInt(&HE), var_A0C)
  loc_1A48DBB:     Set var_A94 = Me.Txt
  loc_1A48DC1:     Call 0.Method_Proc_265_113_1A491440 (CInt(&HF), var_A98)
  loc_1A48DEF:     Set var_B30 = Me.Txt
  loc_1A48DF5:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H2F), var_B34)
  loc_1A48E11:     var_7C4 = var_6AC & "',TurnOver='" & CVar(var_A0C.Text) & "',Desig='" & CVar(var_A98.Text) & "',PostedAt='" & CVar(var_B34.Text) & "',PassPort='" 
  loc_1A48E23:     Set var_B88 = Me.Txt
  loc_1A48E29:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H10), var_B8C)
  loc_1A48E57:     Set var_C20 = Me.Txt
  loc_1A48E5D:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H11), var_C24)
  loc_1A48E88:     Set var_CBC = Me.Txt
  loc_1A48E8E:     Call 0.Method_Proc_265_113_1A491440 (CInt(&H12), var_CC0)
  loc_1A48E9D:     Proc_6_17_EAA2B0(var_890, CVar(var_CC0))
  loc_1A48ECA:     var_900 = var_7C4 & CVar(var_B8C.Text) & "',PAN='" & CVar(var_C24.Text) & "',SpInterest=" & var_890 & ",PicPath='" & CVar(Me.ImgMemPhoto.Tag) 
  loc_1A48F15:     var_9B8 = var_900 & "',SigPath='" & CVar(Me.ImgMemSign.Tag) & "',Label=1,LogSite_Code='" & CVar(MemVar_1F92078) & "',U_Name='" & CVar(MemVar_1F920C8) 
  loc_1A48F30:     Proc_183_7_EB0C44(var_A04, Now)
  loc_1A48F62:     unk_5ADE06.Execute CStr(var_9B8 & "',U_EntDt=" & var_A04 & ",U_AE='E' Where SubCode='" & CVar(arg_14) & "' And SNo=1"), , 
  loc_1A4909C:     Set var_D0 = Me.Txt
  loc_1A490A2:     Call 0.Method_Proc_265_113_1A491440 (CInt(2), var_D4, var_D8, "UPDATE LEDGER SET LEDGER.GROUPCODE='")
  loc_1A490AA:     var_100 = var_D4.Tag
  loc_1A490B3:     var_DC = -1 & var_D8
  loc_1A490DF:     unk_5ADE06.Execute var_DC & "',LEDGER.GROUPNATURE='" & var_90 & "' Where LEDGER.SUBCODE='" & arg_14 & "'", Me.Txt, 
  loc_1A49101:   End If
  loc_1A49101: End If
  loc_1A49106: Set var_98 = Nothing
  loc_1A4910E: Set var_9C = Nothing
  loc_1A49116: Set var_A0 = Nothing
  loc_1A49119: Exit Sub
  loc_1A4911A: ' Referenced from: 1A45CF0
  loc_1A49120: Call 0.Method_arg_50 (var_D8)
  loc_1A49128: var_E0 = "SubGroupUpdate"
  loc_1A49135: Proc_183_57_104AA84(var_D8)
  loc_1A49141: Exit Sub
End Sub

Public Sub Proc_265_114_1773D8C
  'Data Table: 5ADD9C
  Dim var_CC As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_98 As Integer
  Dim var_D4 As Variant
  Dim var_DC As Variant
  Dim var_B4 As Integer
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_104 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_158 As Variant
  Dim var_198 As Variant
  Dim var_1AC As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_20C As Variant
  Dim var_228 As Variant
  Dim var_26C As Variant
  Dim var_2BC As MSHFlexGrid
  Dim var_2CC As Variant
  Dim var_32C As Variant
  Dim var_3E0 As Variant
  Dim var_484 As Variant
  Dim var_4D4 As Variant
  Dim var_4F4 As Variant
  Dim var_568 As Variant
  Dim var_588 As Variant
  Dim var_5FC As Variant
  Dim var_61C As Variant
  Dim var_690 As Variant
  Dim var_6B0 As Variant
  Dim var_724 As Variant
  Dim var_744 As Variant
  Dim var_768 As Variant
  Dim var_7B8 As Variant
  Dim var_7D8 As Variant
  Dim var_84C As Variant
  Dim var_86C As Variant
  Dim var_8E0 As Variant
  Dim var_900 As Variant
  Dim var_974 As Variant
  Dim var_994 As Variant
  Dim var_A08 As Variant
  Dim var_A28 As Variant
  Dim var_A9C As Variant
  Dim var_ABC As Variant
  Dim var_B30 As Variant
  Dim var_B50 As Variant
  Dim var_BC4 As Variant
  Dim var_BE4 As Variant
  Dim var_C58 As Variant
  Dim var_C78 As Variant
  Dim var_C9C As Variant
  Dim var_D30 As Variant
  Dim var_E24 As Variant
  Dim var_E44 As Variant
  Dim var_EFC As Variant
  Dim var_1114 As Double
  Dim var_E0 As Variant
  Dim var_E8 As Variant
  Dim var_EC As String
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim var_1B8 As String
  Dim var_278 As String
  Dim var_35C As Variant
  Dim var_3F0 As Variant
  Dim var_420 As Variant
  Dim var_538 As Variant
  Dim var_558 As Variant
  Dim var_5CC As Variant
  Dim var_660 As Variant
  Dim var_788 As Variant
  Dim var_944 As Variant
  Dim var_B00 As Variant
  Dim var_CBC As Variant
  Dim var_F1C As Variant
  Dim var_1074 As Variant
  Dim var_118 As Variant
  Dim var_E4 As String
  Dim var_1A8 As Variant
  Dim var_A8 As Recordset15
  Dim var_1B0 As String
  Dim var_34C As Variant
  Dim unk_5ADDC8 As Connection15
  Dim var_494 As Variant
  Dim Me As Recordset15
  loc_17721B8: On Error Goto loc_1773D4D
  loc_17721BF: Set var_B8 = Me.TopCtrl1
  loc_17721C5: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17721DE: If (CStr() = "Add") Then
  loc_17721EA:   unk_5ADE06.BeginTrans var_D0
  loc_17721F1:   var_98 = &HFF
  loc_1772202:   Set var_B8 = Me.Txt
  loc_1772208:   Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4)
  loc_1772210:   var_E4 = var_D4.Text
  loc_1772223:   Set var_D8 = Me.Txt
  loc_1772229:   Call 0.Method_Proc_265_114_1773D8C0 (CInt(1), var_DC)
  loc_1772239:   var_F4 = "A"
  loc_177225F:   Call Proc_265_113_1A49144("Add", "SubGroup", var_E4, var_DC.Text, var_F4)
  loc_1772295:   unk_5ADE06.Execute global_224, var_C8, -1
  loc_17722CA:   For var_108 = 1 To CInt((CLng(Me.FAGrid.Rows) - 1)): var_9E = var_108 'Integer
  loc_1772307:     If (CStr(Me.FAGrid.TextMatrix)) <> vbNullString) Then
  loc_1772318:       Set var_B8 = Me.Txt
  loc_177231E:       Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_E4, CVar(CLng(5)), CVar(CLng(var_9E)))
  loc_1772326:       1 = var_D4.Text
  loc_177232F:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_1772337:       var_128 = CVar(CLng(4)) 'Long
  loc_1772340:       Set var_D8 = Me.FAGrid
  loc_1772346:       var_C8 = var_D8.TextMatrix)
  loc_1772367:       Set var_DC = Me.FAGrid
  loc_177236D:       var_198 = var_DC.TextMatrix)
  loc_1772387:       Set var_1A8 = Me.Txt
  loc_177238D:       Call 0.Method_Proc_265_114_1773D8C0 (CInt(6), var_1AC, var_1B0, var_198, CVar(CLng(5)), CVar(CLng(var_9E)))
  loc_1772395:       var_C8 = var_1AC.Text
  loc_177239E:       var_1C8 = CVar(CLng(var_9E)) 'Long
  loc_17723A6:       var_1E8 = CVar(CLng(3)) 'Long
  loc_17723B5:       var_20C = Me.FAGrid.TextMatrix)
  loc_17723C5:       var_228 = CVar(CLng(var_9E)) 'Long
  loc_17723DC:       var_26C = Me.FAGrid.TextMatrix)
  loc_1772403:       var_2CC = Me.FAGrid.TextMatrix)
  loc_177242A:       var_32C = Me.FAGrid.TextMatrix)
  loc_177243B:       Proc_183_7_EB0C44(var_34C, CVar(CStr(var_32C)), CVar(CLng(8)), CVar(CLng(var_9E)), var_2CC, CVar(CLng(7)), CVar(CLng(var_9E)), var_26C)
  loc_177245B:       var_3E0 = Me.FAGrid.TextMatrix)
  loc_1772493:       Proc_183_7_EB0C44(var_494, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_9E)), var_3E0, CVar(CLng(9)), CVar(CLng(var_9E)), CVar(CLng(6)))
  loc_177249C:       var_4D4 = CVar(CLng(var_9E)) 'Long
  loc_17724A4:       var_4F4 = CVar(CLng(&HB)) 'Long
  loc_17724C3:       var_568 = CVar(CLng(var_9E)) 'Long
  loc_17724CB:       var_588 = CVar(CLng(&HC)) 'Long
  loc_17724EA:       var_5FC = CVar(CLng(var_9E)) 'Long
  loc_17724F2:       var_61C = CVar(CLng(&HD)) 'Long
  loc_1772511:       var_690 = CVar(CLng(var_9E)) 'Long
  loc_1772519:       var_6B0 = CVar(CLng(&HE)) 'Long
  loc_1772538:       var_724 = CVar(CLng(var_9E)) 'Long
  loc_1772540:       var_744 = CVar(CLng(&HF)) 'Long
  loc_177254F:       var_768 = Me.FAGrid.TextMatrix)
  loc_177255F:       var_7B8 = CVar(CLng(var_9E)) 'Long
  loc_1772567:       var_7D8 = CVar(CLng(&H10)) 'Long
  loc_1772586:       var_84C = CVar(CLng(var_9E)) 'Long
  loc_177258E:       var_86C = CVar(CLng(&H11)) 'Long
  loc_17725AD:       var_8E0 = CVar(CLng(var_9E)) 'Long
  loc_17725B5:       var_900 = CVar(CLng(&H12)) 'Long
  loc_17725D4:       var_974 = CVar(CLng(var_9E)) 'Long
  loc_17725DC:       var_994 = CVar(CLng(&H13)) 'Long
  loc_17725FB:       var_A08 = CVar(CLng(var_9E)) 'Long
  loc_1772603:       var_A28 = CVar(CLng(&H14)) 'Long
  loc_1772622:       var_A9C = CVar(CLng(var_9E)) 'Long
  loc_177262A:       var_ABC = CVar(CLng(&H15)) 'Long
  loc_1772649:       var_B30 = CVar(CLng(var_9E)) 'Long
  loc_1772651:       var_B50 = CVar(CLng(&H18)) 'Long
  loc_1772670:       var_BC4 = CVar(CLng(var_9E)) 'Long
  loc_1772678:       var_BE4 = CVar(CLng(&H16)) 'Long
  loc_1772697:       var_C58 = CVar(CLng(var_9E)) 'Long
  loc_177269F:       var_C78 = CVar(CLng(&H17)) 'Long
  loc_17726AE:       var_C9C = Me.FAGrid.TextMatrix)
  loc_17726D5:       var_D30 = Me.FAGrid.TextMatrix)
  loc_177270D:       Proc_6_17_EAA2B0(var_DE4, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_9E)), var_D30, CVar(CLng(&H19)), CVar(CLng(var_9E)), var_C9C)
  loc_1772716:       var_E24 = CVar(CLng(var_9E)) 'Long
  loc_177271E:       var_E44 = CVar(CLng(&H1B)) 'Long
  loc_1772754:       var_EFC = Me.FAGrid.TextMatrix)
  loc_177278E:       var_1114 = Val(CStr(Me.FAGrid.TextMatrix)))
  loc_177279F:       Proc_183_7_EB0C44(var_10B4, Now, var_1114, CVar(CLng(&H1D)), CVar(CLng(var_9E)), var_EFC, CVar(CLng(&H1C)), CVar(CLng(var_9E)))
  loc_17727B8:       var_CC = "Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone," & "Mobile,Fax,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PassPort,PAN,InTax,SpInterest,PicPath,  "
  loc_17727BF:       var_E0 = var_CC & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) "
  loc_17727C6:       var_E8 = var_E0 & "Values ('"
  loc_17727D4:       var_F0 = var_E8 & var_E4 & "',"
  loc_1772836:       var_278 = var_F0 & CStr(2) & ",'" & CStr(var_C8) & "','" & CStr(var_198) & "','" & var_1B0 & "','" & CStr(var_20C) & "','" & CStr(var_26C)
  loc_177284F:       var_35C = CVar(var_278 & "','" & CStr(var_2CC) & "',") 'String
  loc_1772896:       var_558 = var_35C & var_34C & ",'" & CVar(CStr(var_3E0)) & "'," & var_494 & ",'" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" 
  loc_17728A1:       var_5CC = var_558 & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_17728DD:       var_788 = var_5CC & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(var_768)) 
  loc_1772919:       var_944 = var_788 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1772955:       var_B00 = var_944 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1772991:       var_CBC = var_B00 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(var_C9C)) 
  loc_17729DD:       var_F1C = var_CBC & "','" & CVar(CStr(var_D30)) & "'," & var_DE4 & ",'" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(var_EFC)) 
  loc_1772A2A:       var_1074 = var_F1C & "'," & CVar(var_1114) & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) 
  loc_1772A51:       unk_5ADE06.Execute CStr(var_1074 & "'," & var_10B4 & ",'A')"), var_1108, -1
  loc_1772BB3:       var_B4 = (var_B4 + 1)
  loc_1772BB6:     End If
  loc_1772BB9:   Next var_108 'Integer
  loc_1772BEB:   Set var_B8 = Me.Txt
  loc_1772BF1:   Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_CC, "SELECT IsNull(Max(SNo),0)+1 From MemberFamily Where SubCode= '", var_C8, -1)
  loc_1772BF9:   var_D8 = var_D4.Text
  loc_1772C12:   unk_5ADE06.Execute var_DC & var_CC & "'", 0, var_1A8
  loc_1772C22:    = var_DC.Item()
  loc_1772C2A:    = var_1A8.Value
  loc_1772C33:   var_B4 = CInt(var_D8.Fields)
  loc_1772C71:   Set var_B8 = Me.Txt
  loc_1772C77:   Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemberFamily Where SubCode= '")
  loc_1772C7F:   var_C8 = var_D4.Text
  loc_1772C88:   var_E0 = -1 & var_CC
  loc_1772C98:   unk_5ADE06.Execute var_DC & var_CC & "' And SNo<>1 Order By Label,SNo", var_D8, var_B4
  loc_1772CA3:   Set var_A8 = var_D8
  loc_1772CBB:   ' Referenced from: 1772D9F
  loc_1772CCA:   If Not(var_A8.EOF) Then
  loc_1772CE2:     var_CC = CStr(var_B4)
  loc_1772D07:     var_D4 = var_A8.Fields.Item("subcode")
  loc_1772D0F:     var_C8 = CVar(var_D4) 'Address
  loc_1772D1C:     var_EC = -1 & Proc_6_38_E68A98(var_C8, "Update MemberFamily Set SNo=" & var_CC & " where Subcode='", var_32C)
  loc_1772D23:     var_26C = CVar(Proc_6_38_E68A98(var_C8, "Update MemberFamily Set SNo=" & var_CC & " where Subcode='", var_32C) & "Update MemberFamily Set SNo=" & var_CC & " where Subcode='" & "' And SNo=") 'String
  loc_1772D35:     var_D8 = var_A8.Fields
  loc_1772D4C:     Proc_6_39_E7C810(var_20C, CVar(var_D8.Item("SNo")))
  loc_1772D62:     unk_5ADE06.Execute CStr(var_26C & var_20C), var_1A8, 
  loc_1772D94:     var_B4 = (var_B4 + 1)
  loc_1772D9A:     var_A8.MoveNext
  loc_1772D9F:     GoTo loc_1772CBB
  loc_1772DA2:   End If
  loc_1772DA4:   var_B4 = 2
  loc_1772DC5:   Set var_B8 = Me.Txt
  loc_1772DCB:   Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemberFamily Where SubCode= '", var_C8)
  loc_1772DD3:   -1 = var_D4.Text
  loc_1772DEC:   unk_5ADE06.Execute var_D8 & var_CC & "' And SNo<>1 Order By SNo", var_B4, var_B4
  loc_1772DF7:   Set var_A8 = var_D8
  loc_1772E0F:   ' Referenced from: 1772EF3
  loc_1772E1E:   If Not(var_A8.EOF) Then
  loc_1772E5B:     var_D4 = var_A8.Fields.Item("subcode")
  loc_1772E70:     var_EC = -1 & Proc_6_38_E68A98(CVar(var_D4), "Update MemberFamily Set SNo=" & CStr(var_B4) & " where Subcode='", var_32C)
  loc_1772E77:     var_26C = CVar(Proc_6_38_E68A98(CVar(var_D4), "Update MemberFamily Set SNo=" & CStr(var_B4) & " where Subcode='", var_32C) & "Update MemberFamily Set SNo=" & CStr(var_B4) & " where Subcode='" & "' And SNo=") 'String
  loc_1772EA0:     Proc_6_39_E7C810(var_20C, CVar(var_A8.Fields.Item("SNo")))
  loc_1772EA8:     var_2CC = var_26C & var_20C 
  loc_1772EB6:     unk_5ADE06.Execute CStr(var_2CC), var_1A8, 
  loc_1772EE8:     var_B4 = (var_B4 + 1)
  loc_1772EEE:     var_A8.MoveNext
  loc_1772EF3:     GoTo loc_1772E0F
  loc_1772EF6:   End If
  loc_1772F20:   For var_111A = 1 To CInt((CLng(Me.FPGrid.Rows) - 1)): var_9E = var_111A 'Integer
  loc_1772F2A:     var_104 = CVar(CLng(var_9E)) 'Long
  loc_1772F4C:     var_CC = CStr(Me.FPGrid.TextMatrix))
  loc_1772F5D:     If (var_CC <> vbNullString) Then
  loc_1772F6E:       Set var_B8 = Me.Txt
  loc_1772F74:       Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_CC, CVar(CLng(3)))
  loc_1772F7C:       var_104 = var_D4.Text
  loc_1772F85:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_1772F8D:       var_128 = CVar(CLng(3)) 'Long
  loc_1772F9C:       var_C8 = Me.FPGrid.TextMatrix)
  loc_1772FAC:       var_158 = CVar(CLng(var_9E)) 'Long
  loc_1772FBD:       Set var_DC = Me.FPGrid
  loc_1772FC3:       var_198 = var_DC.TextMatrix)
  loc_1772FE4:       Set var_1A8 = Me.FPGrid
  loc_1772FEA:       var_20C = var_1A8.TextMatrix)
  loc_1773004:       Proc_183_7_EB0C44(var_2CC, Now, var_20C, CVar(CLng(&HE)), CVar(CLng(var_9E)), var_198, CVar(CLng(4)))
  loc_177301D:       var_E0 = "Insert into MemProposedMemInf(Subcode,SNo,PMemCode,MemberType,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('"
  loc_177307B:       var_1B8 = var_E0 & var_CC & "'," & CStr(1) & ",'" & CStr(var_C8) & "','" & CStr(var_198) & "','" & CStr(var_20C) & "','" & MemVar_1F92070
  loc_177309E:       var_32C = CVar(var_1B8 & "','" & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',") 'String
  loc_17730BB:       unk_5ADE06.Execute CStr(var_32C & var_2CC & ",'A')"), var_35C, -1
  loc_1773119:       var_B4 = (var_B4 + 1)
  loc_177311C:     End If
  loc_177311F:   Next var_111A 'Integer
  loc_1773151:   Set var_B8 = Me.Txt
  loc_1773157:   Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_CC, "SELECT IsNull(Max(SNo),0)+1 From MemProposedMemInf Where SubCode= '", var_C8, -1)
  loc_177315F:   var_D8 = var_D4.Text
  loc_1773178:   unk_5ADE06.Execute var_DC & var_CC & "'", 0, var_1A8
  loc_1773188:    = var_DC.Item()
  loc_1773190:    = var_1A8.Value
  loc_1773199:   var_B4 = CInt(var_D8.Fields)
  loc_17731D7:   Set var_B8 = Me.Txt
  loc_17731DD:   Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '")
  loc_17731E5:   var_C8 = var_D4.Text
  loc_17731EE:   var_E0 = -1 & var_CC
  loc_17731FE:   unk_5ADE06.Execute var_DC & var_CC & "' Order By Cast(Mark As Integer),SNo", var_D8, var_B4
  loc_1773209:   Set var_A8 = var_D8
  loc_1773221:   ' Referenced from: 1773305
  loc_1773230:   If Not(var_A8.EOF) Then
  loc_1773248:     var_CC = CStr(var_B4)
  loc_177326D:     var_D4 = var_A8.Fields.Item("subcode")
  loc_1773275:     var_C8 = CVar(var_D4) 'Address
  loc_1773282:     var_EC = -1 & Proc_6_38_E68A98(var_C8, "Update MemProposedMemInf Set SNo=" & var_CC & " where Subcode='", var_32C)
  loc_177329B:     var_D8 = var_A8.Fields
  loc_17732B2:     Proc_6_39_E7C810(var_20C, CVar(var_D8.Item("SNo")))
  loc_17732C8:     unk_5ADE06.Execute CStr(CVar(CStr(1) & "' And SNo=") & var_20C), var_1A8, 
  loc_17732FA:     var_B4 = (var_B4 + 1)
  loc_1773300:     var_A8.MoveNext
  loc_1773305:     GoTo loc_1773221
  loc_1773308:   End If
  loc_177330A:   var_B4 = 1
  loc_177332B:   Set var_B8 = Me.Txt
  loc_1773331:   Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '", var_C8)
  loc_1773339:   -1 = var_D4.Text
  loc_1773352:   unk_5ADE06.Execute var_D8 & var_CC & "' Order By SNo", var_B4, var_B4
  loc_177335D:   Set var_A8 = var_D8
  loc_1773375:   ' Referenced from: 1773459
  loc_1773384:   If Not(var_A8.EOF) Then
  loc_177339C:     var_CC = CStr(var_B4)
  loc_17733C1:     var_D4 = var_A8.Fields.Item("subcode")
  loc_17733D6:     var_EC = -1 & Proc_6_38_E68A98(CVar(var_D4), "Update MemProposedMemInf Set SNo=" & var_CC & " where Subcode='", var_32C)
  loc_17733EF:     var_D8 = var_A8.Fields
  loc_17733F7:     var_DC = var_D8.Item("SNo")
  loc_1773406:     Proc_6_39_E7C810(var_20C, CVar(var_DC))
  loc_177340E:     var_2CC = CVar(CStr(1) & "' And SNo=") & var_20C 
  loc_177341C:     unk_5ADE06.Execute CStr(var_2CC), var_1A8, 
  loc_177344E:     var_B4 = (var_B4 + 1)
  loc_1773454:     var_A8.MoveNext
  loc_1773459:     GoTo loc_1773375
  loc_177345C:   End If
  loc_1773462:   unk_5ADE06.CommitTrans
  loc_177348C:   Set var_B8 = Me.Txt
  loc_1773492:   Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_CC, "Update memAddRWA set Mark='' where Subcode='", var_2CC)
  loc_177349A:   -1 = var_D4.Text
  loc_17734B9:   var_26C = var_D8 & Trim(CVar(var_CC)) & "'" 
  loc_17734BD:   var_E0 = CStr(var_26C)
  loc_17734C7:   unk_5ADE06.Execute var_E0, 0, var_B4
  loc_17734E5: End If
  loc_17734E9: Set var_B8 = Me.TopCtrl1
  loc_17734EF: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1773508: If (CStr() = "Add") Then
  loc_1773530:   For var_111E = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_9E = var_111E 'Integer
  loc_1773561:     If ((var_9E > 1) And (CLng(var_9E) < (CLng(Me.FGrid1.Rows) - 1))) Then
  loc_1773568:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_1773570:       var_128 = CVar(CLng(6)) 'Long
  loc_177358A:       var_198 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1773590:       var_20C = Trim(var_198)
  loc_17735AC:       If (var_20C = vbNullString) Then
  loc_17735C8:         MsgBox("Define revenue ", &H40, var_198, var_20C, var_26C)
  loc_17735D8:         Exit Sub
  loc_17735D9:       End If
  loc_17735D9:     End If
  loc_17735DD:     var_104 = CVar(CLng(var_9E)) 'Long
  loc_17735E5:     var_128 = CVar(CLng(6)) 'Long
  loc_1773605:     var_20C = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1773621:     If CBool(var_20C <> vbNullString) Then
  loc_1773628:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_177364A:       var_CC = CStr(Me.FGrid1.TextMatrix))
  loc_1773660:       If (CDbl(Val(var_CC)) <= CDbl(0)) Then
  loc_1773676:         Me.FGrid1.Row = CVar(CLng(var_9E))
  loc_1773681:         var_104 = CVar(CLng(2)) 'Long
  loc_1773690:         Me.FGrid1.Col = var_104
  loc_177369C:         Set var_B8 = Me.FGrid1
  loc_17736AD:         Call Fgrid1_UnknownEvent_B()
  loc_17736B7:         Call TxtGrid_GotFocus(2)
  loc_17736C2:         Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, CVar(CLng(2)), var_104, CVar(CLng(2)))
  loc_17736E3:         MsgBox("Please Fill Valid Amount.", 0, CVar(var_CC), var_20C, var_26C)
  loc_17736F3:         Exit Sub
  loc_17736F4:       End If
  loc_17736F8:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_177371A:       var_CC = CStr(Me.FGrid1.TextMatrix))
  loc_177372B:       If (var_CC = vbNullString) Then
  loc_1773741:         Me.FGrid1.Row = CVar(CLng(var_9E))
  loc_177374C:         var_104 = CVar(CLng(3)) 'Long
  loc_177375B:         Me.FGrid1.Col = var_104
  loc_1773767:         Set var_B8 = Me.FGrid1
  loc_1773778:         Call Fgrid1_UnknownEvent_B()
  loc_1773782:         Call TxtGrid_GotFocus(2)
  loc_177378D:         Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, CVar(CLng(3)), var_104)
  loc_17737AE:         MsgBox("Please Fill Valid Nature.", 0, CVar(var_CC), var_20C, var_26C)
  loc_17737BE:         Exit Sub
  loc_17737BF:       End If
  loc_17737C3:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_17737F8:       If Not(IsDate(CVar(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_177380E:         Me.FGrid1.Row = CVar(CLng(var_9E))
  loc_1773819:         var_104 = CVar(CLng(4)) 'Long
  loc_1773828:         Me.FGrid1.Col = var_104
  loc_1773834:         Set var_B8 = Me.FGrid1
  loc_1773845:         Call Fgrid1_UnknownEvent_B()
  loc_177384F:         Call TxtGrid_GotFocus(2)
  loc_177385A:         Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, CVar(CLng(4)), var_104)
  loc_177387B:         MsgBox("Please Fill Valid Applicable.", 0, CVar(var_CC), var_20C, var_26C)
  loc_177388B:         Exit Sub
  loc_177388C:       End If
  loc_1773890:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_17738B2:       var_CC = CStr(Me.FGrid1.TextMatrix))
  loc_17738C3:       If (var_CC = vbNullString) Then
  loc_17738D9:         Me.FGrid1.Row = CVar(CLng(var_9E))
  loc_17738E4:         var_104 = CVar(CLng(5)) 'Long
  loc_17738F3:         Me.FGrid1.Col = var_104
  loc_17738FF:         Set var_B8 = Me.FGrid1
  loc_1773910:         Call Fgrid1_UnknownEvent_B()
  loc_177391A:         Call TxtGrid_GotFocus(2)
  loc_1773925:         Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, CVar(CLng(5)), var_104)
  loc_1773946:         MsgBox("Please Fill Valid Status.", 0, CVar(var_CC), var_20C, var_26C)
  loc_1773956:         Exit Sub
  loc_1773957:       End If
  loc_1773957:     End If
  loc_177395A:   Next var_111E 'Integer
  loc_1773968:   unk_5ADDC8.BeginTrans var_D0
  loc_177396F:   var_98 = &HFF
  loc_1773997:   For var_1122 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_9E = var_1122 'Integer
  loc_17739A1:     var_104 = CVar(CLng(var_9E)) 'Long
  loc_17739C3:     var_198 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_17739E5:     If CBool(Trim(var_198) <> vbNullString) Then
  loc_17739F6:       Set var_B8 = Me.Txt
  loc_17739FC:       Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4, var_E0, CVar(CLng(6)))
  loc_1773A04:       var_104 = var_D4.Text
  loc_1773A14:       Set var_D8 = Me.Txt
  loc_1773A1A:       Call 0.Method_Proc_265_114_1773D8C0 (CInt(4), var_DC)
  loc_1773A29:       Proc_6_7_F25D88(var_198, CVar(var_DC))
  loc_1773A32:       var_118 = CVar(CLng(var_9E)) 'Long
  loc_1773A49:       var_32C = Me.FGrid1.TextMatrix)
  loc_1773A83:       var_1114 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1773AA1:       var_3F0 = Me.FGrid1.TextMatrix)
  loc_1773AC8:       var_484 = Me.FGrid1.TextMatrix)
  loc_1773AD9:       var_538 = CVar(Proc_6_15_EF2C1C(var_484, CVar(CLng(5)), CVar(CLng(var_9E)), var_3F0, CVar(CLng(3)), CVar(CLng(var_9E)), var_1114)) 'String
  loc_1773ADF:       Proc_6_7_F25D88(var_558, var_538, CVar(CLng(2)), CVar(CLng(var_9E)), var_32C)
  loc_1773AE8:       Set var_2BC = Me.TopCtrl1
  loc_1773AEE:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(6)))
  loc_1773B39:       var_CC = "Insert into MemRevWise (MemCode,AppDate,RevCode,Amount,Nature," & "ActiveYN,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_1773B58:       var_104 = ",'"
  loc_1773B90:       var_420 = CVar(var_CC & " Values ('" & var_E0 & "',") & var_198 & var_104 & CVar(CStr(var_32C)) & "'," & CVar(var_1114) & ",'" & CVar(CStr(var_3F0)) 
  loc_1773BD7:       var_660 = var_420 & "','" & CVar(CStr(var_484)) & "','" & CVar(MemVar_1F920C8) & "'," & var_558 & ",'" & IIf((CStr(var_5CC) = "Add"), "A", "E") 
  loc_1773C14:       unk_5ADDC8.Execute CStr(var_660 & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_768, -1
  loc_1773C8E:     End If
  loc_1773C91:   Next var_1122 'Integer
  loc_1773C9C:   unk_5ADDC8.CommitTrans
  loc_1773CA3:   var_98 = 0
  loc_1773CA6: End If
  loc_1773CB1: Me.Requery -1
  loc_1773CC4: Set var_B8 = Me.Txt
  loc_1773CCA: Call 0.Method_Proc_265_114_1773D8C0 (CInt(0), var_D4)
  loc_1773CF6: Me.Requery -1
  loc_1773D13: var_CC = "SearchCode = '" & var_D4.Text
  loc_1773D23: Me.Find var_CC & "'", 0, 1
  loc_1773D2F: Call TopCtrl1_UnknownEvent_A()
  loc_1773D39: Set var_9C = Nothing
  loc_1773D41: Set var_A8 = Nothing
  loc_1773D49: Set var_B0 = Nothing
  loc_1773D4C: Exit Sub
  loc_1773D4D: ' Referenced from: 17721B8
  loc_1773D53: If (var_98 = &HFF) Then
  loc_1773D5C:   unk_5ADE06.RollbackTrans
  loc_1773D61: End If
  loc_1773D67: Call 0.Method_arg_50 (var_CC, var_104)
  loc_1773D7C: Proc_183_57_104AA84(var_CC, "UpdateDataBaseAdd")
  loc_1773D88: Exit Sub
End Sub

Public Sub Proc_265_115_1A74880
  'Data Table: 5ADD9C
  Dim var_104 As Variant
  Dim var_C0 As Variant
  Dim var_C8 As String
  Dim var_CC As Variant
  Dim unk_5ADE06 As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_8A As Variant
  Dim var_C4 As Variant
  Dim var_120 As String
  Dim var_124 As String
  Dim var_94 As Variant
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_140 As Variant
  Dim var_154 As Variant
  Dim var_168 As Variant
  Dim var_158 As Variant
  Dim var_B2 As Variant
  Dim var_EC As Variant
  Dim var_174 As Double
  Dim var_1D4 As Variant
  Dim var_118 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_184 As Variant
  Dim var_278 As Variant
  Dim var_19C As Variant
  Dim var_1AC As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_404 As Variant
  Dim var_498 As Variant
  Dim var_4A8 As Variant
  Dim var_4F8 As Variant
  Dim var_518 As Variant
  Dim var_58C As Variant
  Dim var_5AC As Variant
  Dim var_5D0 As Variant
  Dim var_620 As Variant
  Dim var_640 As Variant
  Dim var_6B4 As Variant
  Dim var_6D4 As Variant
  Dim var_748 As Variant
  Dim var_768 As Variant
  Dim var_7DC As Variant
  Dim var_7FC As Variant
  Dim var_870 As Variant
  Dim var_890 As Variant
  Dim var_904 As Variant
  Dim var_924 As Variant
  Dim var_998 As Variant
  Dim var_9B8 As Variant
  Dim var_A2C As Variant
  Dim var_A4C As Variant
  Dim var_AC0 As Variant
  Dim var_AE0 As Variant
  Dim var_B54 As Variant
  Dim var_B74 As Variant
  Dim var_BE8 As Variant
  Dim var_C7C As Variant
  Dim var_C9C As Variant
  Dim var_D54 As Variant
  Dim var_E48 As Variant
  Dim var_E68 As Variant
  Dim var_E8C As Variant
  Dim var_F10 As MSHFlexGrid
  Dim var_F20 As Variant
  Dim var_FA4 As Variant
  Dim var_1E8 As String
  Dim var_1EC As String
  Dim var_21C As String
  Dim var_2B0 As String
  Dim var_2B4 As String
  Dim var_380 As Variant
  Dim var_414 As Variant
  Dim var_424 As Variant
  Dim var_54C As Variant
  Dim var_55C As Variant
  Dim var_57C As Variant
  Dim var_610 As Variant
  Dim var_674 As Variant
  Dim var_6A4 As Variant
  Dim var_718 As Variant
  Dim var_79C As Variant
  Dim var_7AC As Variant
  Dim var_8D4 As Variant
  Dim var_8F4 As Variant
  Dim var_A90 As Variant
  Dim var_BD8 As Variant
  Dim var_D94 As Variant
  Dim var_EAC As Variant
  Dim var_FD8 As Variant
  Dim var_1058 As Variant
  Dim var_10B8 As Variant
  Dim var_10F8 As Variant
  Dim var_1140 As Variant
  Dim var_214 As String
  Dim var_10D8 As Variant
  Dim var_112C As Variant
  Dim var_370 As Variant
  Dim var_B0 As Recordset15
  Dim unk_5ADDC8 As Connection15
  Dim var_4B8 As Variant
  Dim Me As Recordset15
  loc_1A71054: On Error Goto loc_1A74843
  loc_1A71084: Set var_BC = Me.Txt
  loc_1A7108A: Call 0.Method_Proc_265_115_1A748800 (CInt(2), var_C0, var_C4, "Select MainGrCode From AcGroup Where GroupCode='", var_EC, -1)
  loc_1A71092: var_F0 = var_C0.Tag
  loc_1A7109B: var_C8 = var_F4 & var_C4
  loc_1A710AB: unk_5ADE06.Execute var_C8 & "'", 0, var_108
  loc_1A710BB:  = var_F4.Item()
  loc_1A710C3:  = var_108.Value
  loc_1A710CC: var_A4 = CStr(var_F0.Fields)
  loc_1A710F5: unk_5ADE06.BeginTrans var_11C
  loc_1A710FC: var_8A = &HFF
  loc_1A7111A: var_CC = "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '"
  loc_1A7112B: Set var_BC = Me.Txt
  loc_1A71131: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C8, var_CC)
  loc_1A71139: var_EC = var_C0.Text
  loc_1A71142: var_120 = -1 & var_C8
  loc_1A71149: var_124 = var_120 & "'"
  loc_1A71152: unk_5ADE06.Execute var_124, var_F0, var_8A
  loc_1A7115D: Set var_94 = var_F0
  loc_1A71179: ' Referenced from: 1A712B2
  loc_1A71188: If Not(var_94.EOF) Then
  loc_1A711A5:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A711B8:   var_104 = "AmtCr"
  loc_1A711CC:   var_F4 = var_94.Fields.Item(var_104)
  loc_1A711D4:   var_118 = var_F4.Value
  loc_1A711EB:   var_108 = var_94.Fields
  loc_1A711FB:   var_184 = var_108.Item("AmtDr").Value
  loc_1A71222:   var_19C = var_94.Fields.Item("GroupCode").Value
  loc_1A71249:   var_1AC = var_94.Fields.Item("V_DATE").Value
  loc_1A7127A:   Proc_183_0_1279094(MemVar_1F921DC, CStr(var_C0.Value), CSng(var_118))
  loc_1A712AD:   var_94.MoveNext
  loc_1A712B2:   GoTo loc_1A71179
  loc_1A712B5: End If
  loc_1A712C3: Set var_BC = Me.Txt
  loc_1A712C9: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_CC)
  loc_1A712D1: CSng(var_184) = var_C0.Text
  loc_1A712E4: Set var_F0 = Me.Txt
  loc_1A712EA: Call 0.Method_Proc_265_115_1A748800 (CInt(1), var_F4, var_124)
  loc_1A712F2: CStr(var_19C) = var_F4.Text
  loc_1A7131A: var_C4 = "Edit"
  loc_1A71320: Call Proc_265_113_1A49144(var_C4, "SubGroup", var_CC, var_124, "E")
  loc_1A7135B: Set var_BC = Me.Txt
  loc_1A71361: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "UPdate MemAddRWA  Set Mark='' Where SubCode= '")
  loc_1A71369: var_EC = var_C0.Text
  loc_1A71372: var_C8 = -1 & var_C4
  loc_1A71382: unk_5ADE06.Execute "SubGroup" & "' And Sno=1", var_F0, CDate(var_1AC)
  loc_1A713BA: Set var_BC = Me.Txt
  loc_1A713C0: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "UPdate MemAddRWA  Set Mark='*' Where SubCode= '")
  loc_1A713D1: var_C8 = -1 & var_C4
  loc_1A713E1: unk_5ADE06.Execute "SubGroup" & "' And Sno<>1", var_F0, 
  loc_1A71414: unk_5ADE06.Execute global_224, var_C0.Text, -1
  loc_1A7144C: For var_1C0 = CByte(1) To CByte((CLng(Me.FAGrid.Rows) - 1)): var_8C = var_1C0 'Byte
  loc_1A71457:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A7145F:   var_138 = CVar(CLng(1)) 'Long
  loc_1A71496:   If (CDbl(2) = CDbl(Val(CStr(Me.FAGrid.TextMatrix))))) Then
  loc_1A7149F:     var_B2 = (var_B2 + 1)
  loc_1A714A2:     ' Referenced from: 1A71561
  loc_1A714A2:   End If
  loc_1A714BE:   var_EC = Me.FAGrid.TextMatrix)
  loc_1A714C9:   var_C4 = CStr(var_EC)
  loc_1A714E6:   If (CDbl(2) < CDbl(Val(var_C4))) Then
  loc_1A71507:     Set var_BC = Me.Txt
  loc_1A7150D:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "Delete From MemberFamily Where Subcode='", var_EC, -1, var_F0)
  loc_1A71515:     var_174 = var_C0.Text
  loc_1A7153A:     unk_5ADE06.Execute CVar(CLng(1)) & var_C4 & "' And SNo=" & CStr(2), CVar(CLng(var_8C)), 2
  loc_1A7155E:     var_B2 = (var_B2 + 1)
  loc_1A71561:     GoTo loc_1A714A2
  loc_1A71564:   End If
  loc_1A71567: Next var_1C0 'Byte
  loc_1A71573: If (2 = 2) Then
  loc_1A71594:   Set var_BC = Me.Txt
  loc_1A7159A:   Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "Delete From MemberFamily Where Subcode='")
  loc_1A715A2:   var_EC = var_C0.Text
  loc_1A715AB:   var_C8 = -1 & var_C4
  loc_1A715BB:   unk_5ADE06.Execute CVar(CLng(1)) & var_C4 & "' And SNo<>1", var_F0, 
  loc_1A715D5: End If
  loc_1A715D7: var_B2 = 2
  loc_1A71602: For var_1C4 = CByte(1) To CByte((CLng(Me.FAGrid.Rows) - 1)): var_8C = var_1C4 'Byte
  loc_1A7160D:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A7162F:   var_C4 = CStr(Me.FAGrid.TextMatrix))
  loc_1A71640:   If (var_C4 <> vbNullString) Then
  loc_1A71651:     Set var_BC = Me.Txt
  loc_1A71657:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, CVar(CLng(5)))
  loc_1A7165F:     var_DC = var_C0.Text
  loc_1A71669:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A71671:     var_138 = CVar(CLng(1)) 'Long
  loc_1A7168B:     var_CC = CStr(Me.FAGrid.TextMatrix))
  loc_1A71693:     var_174 = Val(var_CC)
  loc_1A7169C:     var_1D4 = 0
  loc_1A716D5:     unk_5ADE06.Execute "Select Count(*) From MemberFamily where Subcode='" & var_C4 & "' And SNo=" & CStr(var_174), var_118, -1
  loc_1A716DD:     var_F4 = var_F4.Fields
  loc_1A716E5:     var_1D4 = var_108.Item(var_108)
  loc_1A716ED:     var_13C = var_13C.Value
  loc_1A71724:     If (var_184 = 0) Then
  loc_1A71735:       Set var_BC = Me.Txt
  loc_1A7173B:       Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_CC, var_184, var_174)
  loc_1A71743:       var_138 = var_C0.Text
  loc_1A7174D:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A71755:       var_138 = CVar(CLng(4)) 'Long
  loc_1A71764:       var_EC = Me.FAGrid.TextMatrix)
  loc_1A71786:       Set var_F4 = Me.FAGrid
  loc_1A7178C:       var_118 = var_F4.TextMatrix)
  loc_1A717A6:       Set var_108 = Me.Txt
  loc_1A717AC:       Call 0.Method_Proc_265_115_1A748800 (CInt(6), var_13C, var_214, var_118, CVar(CLng(5)), CVar(CLng(var_8C)))
  loc_1A717B4:       var_EC = var_13C.Text
  loc_1A717BE:       var_22C = CVar(CLng(var_8C)) 'Long
  loc_1A717C6:       var_24C = CVar(CLng(3)) 'Long
  loc_1A717E6:       var_278 = CVar(CLng(var_8C)) 'Long
  loc_1A717FD:       var_19C = Me.FAGrid.TextMatrix)
  loc_1A71825:       var_1AC = Me.FAGrid.TextMatrix)
  loc_1A7185E:       Proc_183_7_EB0C44(var_370, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(var_8C)), var_1AC, CVar(CLng(7)), CVar(CLng(var_8C)), var_19C)
  loc_1A7187F:       var_404 = Me.FAGrid.TextMatrix)
  loc_1A718B8:       Proc_183_7_EB0C44(var_4B8, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_8C)), var_404, CVar(CLng(9)), CVar(CLng(var_8C)), CVar(CLng(6)))
  loc_1A718C2:       var_4F8 = CVar(CLng(var_8C)) 'Long
  loc_1A718CA:       var_518 = CVar(CLng(&HB)) 'Long
  loc_1A718EA:       var_58C = CVar(CLng(var_8C)) 'Long
  loc_1A718F2:       var_5AC = CVar(CLng(&HC)) 'Long
  loc_1A71912:       var_620 = CVar(CLng(var_8C)) 'Long
  loc_1A7191A:       var_640 = CVar(CLng(&HD)) 'Long
  loc_1A7193A:       var_6B4 = CVar(CLng(var_8C)) 'Long
  loc_1A71942:       var_6D4 = CVar(CLng(&HE)) 'Long
  loc_1A71962:       var_748 = CVar(CLng(var_8C)) 'Long
  loc_1A7196A:       var_768 = CVar(CLng(&HF)) 'Long
  loc_1A7198A:       var_7DC = CVar(CLng(var_8C)) 'Long
  loc_1A71992:       var_7FC = CVar(CLng(&H10)) 'Long
  loc_1A719B2:       var_870 = CVar(CLng(var_8C)) 'Long
  loc_1A719BA:       var_890 = CVar(CLng(&H11)) 'Long
  loc_1A719DA:       var_904 = CVar(CLng(var_8C)) 'Long
  loc_1A719E2:       var_924 = CVar(CLng(&H12)) 'Long
  loc_1A71A02:       var_998 = CVar(CLng(var_8C)) 'Long
  loc_1A71A0A:       var_9B8 = CVar(CLng(&H13)) 'Long
  loc_1A71A2A:       var_A2C = CVar(CLng(var_8C)) 'Long
  loc_1A71A32:       var_A4C = CVar(CLng(&H14)) 'Long
  loc_1A71A52:       var_AC0 = CVar(CLng(var_8C)) 'Long
  loc_1A71A5A:       var_AE0 = CVar(CLng(&H15)) 'Long
  loc_1A71A7A:       var_B54 = CVar(CLng(var_8C)) 'Long
  loc_1A71A82:       var_B74 = CVar(CLng(&H18)) 'Long
  loc_1A71AA2:       var_BE8 = CVar(CLng(var_8C)) 'Long
  loc_1A71AAA:       var_C08 = CVar(CLng(&H16)) 'Long
  loc_1A71ACA:       var_C7C = CVar(CLng(var_8C)) 'Long
  loc_1A71AD2:       var_C9C = CVar(CLng(&H17)) 'Long
  loc_1A71AE1:       var_CC0 = Me.FAGrid.TextMatrix)
  loc_1A71B09:       var_D54 = Me.FAGrid.TextMatrix)
  loc_1A71B42:       Proc_6_17_EAA2B0(var_E08, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_8C)), var_D54, CVar(CLng(&H19)), CVar(CLng(var_8C)), var_CC0)
  loc_1A71B4C:       var_E48 = CVar(CLng(var_8C)) 'Long
  loc_1A71B54:       var_E68 = CVar(CLng(&H1B)) 'Long
  loc_1A71B8B:       var_F20 = Me.FAGrid.TextMatrix)
  loc_1A71BAD:       Set var_FA4 = Me.FAGrid
  loc_1A71BC6:       var_174 = Val(CStr(var_FA4.TextMatrix)))
  loc_1A71BD7:       Proc_183_7_EB0C44(var_10D8, Now, var_174, CVar(CLng(&H1D)), CVar(CLng(var_8C)), var_F20, CVar(CLng(&H1C)), CVar(CLng(var_8C)))
  loc_1A71BF0:       var_C4 = "Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone," & "Mobile,Fax,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PassPort,PAN,InTax,SpInterest,PicPath,"
  loc_1A71C1F:       var_1EC = var_C4 & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('" & var_CC & "'," & CStr(var_B2) & ",'"
  loc_1A71C6A:       var_2B0 = CStr(var_19C)
  loc_1A71C6E:       var_2B4 = var_1EC & CStr(var_EC) & "','" & CStr(var_118) & "','" & var_214 & "','" & CStr(Me.FAGrid.TextMatrix)) & "','" & var_2B0
  loc_1A71CC5:       var_55C = CVar(var_2B4 & "','" & CStr(var_1AC) & "',") & var_370 & ",'" & CVar(CStr(var_404)) & "'," & var_4B8 & ",'" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A71D01:       var_718 = var_55C & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A71D3D:       var_8D4 = var_718 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A71D79:       var_A90 = var_8D4 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A71DB5:       var_C4C = var_A90 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A71E01:       var_EAC = var_C4C & "','" & CVar(CStr(var_CC0)) & "','" & CVar(CStr(var_D54)) & "'," & var_E08 & ",'" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A71E4F:       var_1058 = var_EAC & "','" & CVar(CStr(var_F20)) & "'," & CVar(var_174) & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_1A71E6B:       var_10B8 = var_1058 & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_1A71E89:       unk_5ADE06.Execute CStr(var_10B8 & var_10D8 & ",'A')"), var_112C, -1
  loc_1A71FE8:     Else
  loc_1A71FED:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A71FF5:       var_138 = CVar(CLng(4)) 'Long
  loc_1A71FFE:       Set var_BC = Me.FAGrid
  loc_1A72004:       var_EC = var_BC.TextMatrix)
  loc_1A72026:       Set var_C0 = Me.FAGrid
  loc_1A7202C:       var_118 = var_C0.TextMatrix)
  loc_1A72046:       Set var_F0 = Me.Txt
  loc_1A7204C:       Call 0.Method_Proc_265_115_1A748800 (CInt(6), var_F4, var_1EC, var_118, CVar(CLng(5)), CVar(CLng(var_8C)), var_EC)
  loc_1A72054:       var_138 = var_F4.Text
  loc_1A7205E:       var_22C = CVar(CLng(var_8C)) 'Long
  loc_1A72066:       var_24C = CVar(CLng(3)) 'Long
  loc_1A7206F:       Set var_108 = Me.FAGrid
  loc_1A72075:       var_184 = var_108.TextMatrix)
  loc_1A72086:       var_278 = CVar(CLng(var_8C)) 'Long
  loc_1A7209D:       var_19C = Me.FAGrid.TextMatrix)
  loc_1A720C5:       var_1AC = Me.FAGrid.TextMatrix)
  loc_1A720ED:       var_350 = Me.FAGrid.TextMatrix)
  loc_1A720FE:       Proc_183_7_EB0C44(var_370, CVar(CStr(var_350)), CVar(CLng(8)), CVar(CLng(var_8C)), var_1AC, CVar(CLng(7)), CVar(CLng(var_8C)), var_19C)
  loc_1A72119:       Set var_158 = Me.FAGrid
  loc_1A7211F:       var_404 = var_158.TextMatrix)
  loc_1A72158:       Proc_183_7_EB0C44(var_4B8, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_8C)), var_404, CVar(CLng(9)), CVar(CLng(var_8C)), CVar(CLng(6)))
  loc_1A72162:       var_4F8 = CVar(CLng(var_8C)) 'Long
  loc_1A7216A:       var_518 = CVar(CLng(&HB)) 'Long
  loc_1A7218A:       var_58C = CVar(CLng(var_8C)) 'Long
  loc_1A72192:       var_5AC = CVar(CLng(&HC)) 'Long
  loc_1A721A1:       var_5D0 = Me.FAGrid.TextMatrix)
  loc_1A721B2:       var_620 = CVar(CLng(var_8C)) 'Long
  loc_1A721BA:       var_640 = CVar(CLng(&HD)) 'Long
  loc_1A721DA:       var_6B4 = CVar(CLng(var_8C)) 'Long
  loc_1A721E2:       var_6D4 = CVar(CLng(&HE)) 'Long
  loc_1A72202:       var_748 = CVar(CLng(var_8C)) 'Long
  loc_1A7220A:       var_768 = CVar(CLng(&HF)) 'Long
  loc_1A7222A:       var_7DC = CVar(CLng(var_8C)) 'Long
  loc_1A72232:       var_7FC = CVar(CLng(&H10)) 'Long
  loc_1A72252:       var_870 = CVar(CLng(var_8C)) 'Long
  loc_1A7225A:       var_890 = CVar(CLng(&H11)) 'Long
  loc_1A7227A:       var_904 = CVar(CLng(var_8C)) 'Long
  loc_1A72282:       var_924 = CVar(CLng(&H12)) 'Long
  loc_1A722A2:       var_998 = CVar(CLng(var_8C)) 'Long
  loc_1A722AA:       var_9B8 = CVar(CLng(&H13)) 'Long
  loc_1A722CA:       var_A2C = CVar(CLng(var_8C)) 'Long
  loc_1A722D2:       var_A4C = CVar(CLng(&H14)) 'Long
  loc_1A722F2:       var_AC0 = CVar(CLng(var_8C)) 'Long
  loc_1A722FA:       var_AE0 = CVar(CLng(&H15)) 'Long
  loc_1A7231A:       var_B54 = CVar(CLng(var_8C)) 'Long
  loc_1A72322:       var_B74 = CVar(CLng(&H18)) 'Long
  loc_1A72342:       var_BE8 = CVar(CLng(var_8C)) 'Long
  loc_1A7234A:       var_C08 = CVar(CLng(&H16)) 'Long
  loc_1A7236A:       var_C7C = CVar(CLng(var_8C)) 'Long
  loc_1A72372:       var_C9C = CVar(CLng(&H17)) 'Long
  loc_1A72381:       var_CC0 = Me.FAGrid.TextMatrix)
  loc_1A723A9:       var_D54 = Me.FAGrid.TextMatrix)
  loc_1A723E2:       Proc_6_17_EAA2B0(var_E08, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_8C)), var_D54, CVar(CLng(&H19)), CVar(CLng(var_8C)), var_CC0)
  loc_1A72403:       var_E8C = Me.FAGrid.TextMatrix)
  loc_1A7242B:       var_F20 = Me.FAGrid.TextMatrix)
  loc_1A72466:       var_174 = Val(CStr(Me.FAGrid.TextMatrix)))
  loc_1A72477:       Proc_183_7_EB0C44(var_10B8, Now, var_174, CVar(CLng(&H1D)), CVar(CLng(var_8C)), var_F20, CVar(CLng(&H1C)), CVar(CLng(var_8C)))
  loc_1A7248A:       Set var_F10 = Me.Txt
  loc_1A72490:       Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_FA4, var_2B0, var_E8C, CVar(CLng(&H1B)), CVar(CLng(var_8C)))
  loc_1A72498:       var_C9C = var_FA4.Text
  loc_1A724A2:       var_10F8 = CVar(CLng(var_8C)) 'Long
  loc_1A724AA:       var_1140 = CVar(CLng(1)) 'Long
  loc_1A724E4:       var_C4 = CStr(var_B2)
  loc_1A724EF:       var_CC = "Update MemberFamily Set SNo=" & var_C4 & ",ConPrefix='"
  loc_1A72533:       var_214 = var_CC & CStr(var_EC) & "',Name='" & CStr(var_118) & "',CardNo='" & var_1EC & "',Relationship='" & CStr(var_184) & "',Gender='"
  loc_1A72557:       var_380 = CVar(var_214 & CStr(var_19C) & "',MaritalStatus='" & CStr(var_1AC) & "',DOB=") 'String
  loc_1A72595:       var_55C = var_380 & var_370 & ",POB='" & CVar(CStr(var_404)) & "',WedDate=" & var_4B8 & ",Phone='" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A725B2:       var_610 = var_55C & "',Mobile='" & CVar(CStr(var_5D0)) & "',Fax='" 
  loc_1A725E2:       var_79C = CVar(CStr(Me.FAGrid.TextMatrix))) 'String
  loc_1A725E5:       var_7AC = var_610 & CVar(CStr(Me.FAGrid.TextMatrix))) & "',Email='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',Nationality='" & var_79C 
  loc_1A72616:       var_8F4 = var_7AC & "',Religion='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',BloodGroup='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',ProOcc='" 
  loc_1A72649:       var_A90 = var_8F4 & CVar(CStr(Me.FAGrid.TextMatrix))) & "',EdQuali='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',TBusiness='" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A7267A:       var_BD8 = var_A90 & "',TurnOver='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',Desig='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',PassPort='" 
  loc_1A726B6:       var_D94 = var_BD8 & CVar(CStr(Me.FAGrid.TextMatrix))) & "',PAN='" & CVar(CStr(var_CC0)) & "',InTax='" & CVar(CStr(var_D54)) & "',SpInterest=" 
  loc_1A726F9:       var_FD8 = var_D94 & var_E08 & ",PicPath='" & CVar(CStr(var_E8C)) & "',SigPath='" & CVar(CStr(var_F20)) & "',Label=" & CVar(var_174) 
  loc_1A72738:       var_10D8 = var_FD8 & ",LogSite_Code='" & CVar(MemVar_1F92078) & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_10B8 & ",U_AE='E' where Subcode='" 
  loc_1A72764:       unk_5ADE06.Execute CStr(var_10D8 & CVar(var_2B0) & "' And SNo=" & CVar(Val(CStr(Me.FAGrid.TextMatrix))))), var_11A0, -1
  loc_1A728BE:     End If
  loc_1A728C4:     var_B2 = (var_B2 + 1)
  loc_1A728C7:   End If
  loc_1A728CA: Next var_1C4 'Byte
  loc_1A728FD: Set var_BC = Me.Txt
  loc_1A72903: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "SELECT IsNull(Max(SNo),0)+1 From MemberFamily Where SubCode= '", var_EC, -1)
  loc_1A7290B: var_F0 = var_C0.Text
  loc_1A72924: unk_5ADE06.Execute var_F4 & var_C4 & "'", 0, var_108
  loc_1A72934:  = var_F4.Item()
  loc_1A7293C:  = var_108.Value
  loc_1A72945: var_B2 = CInt(var_F0.Fields)
  loc_1A72983: Set var_BC = Me.Txt
  loc_1A72989: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemberFamily Where SubCode= '")
  loc_1A72991: var_EC = var_C0.Text
  loc_1A7299A: var_C8 = -1 & var_C4
  loc_1A729AA: unk_5ADE06.Execute var_F4 & var_C4 & "' And SNo<>1 Order By Label,SNo", var_F0, var_B2
  loc_1A729B5: Set var_94 = var_F0
  loc_1A729CD: ' Referenced from: 1A72AB1
  loc_1A729DC: If Not(var_94.EOF) Then
  loc_1A729F4:   var_C4 = CStr(var_B2)
  loc_1A72A19:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A72A21:   var_EC = CVar(var_C0) 'Address
  loc_1A72A2E:   var_124 = -1 & Proc_6_38_E68A98(var_EC, "Update MemberFamily Set SNo=" & var_C4 & " where Subcode='", var_350)
  loc_1A72A47:   var_F0 = var_94.Fields
  loc_1A72A5E:   Proc_6_39_E7C810(var_184, CVar(var_F0.Item("SNo")))
  loc_1A72A74:   unk_5ADE06.Execute CStr(CVar("Update MemberFamily Set SNo=" & var_C4 & " where Subcode='" & CStr(var_EC) & "' And SNo=") & var_184), var_108, 
  loc_1A72AA6:   var_B2 = (var_B2 + 1)
  loc_1A72AAC:   var_94.MoveNext
  loc_1A72AB1:   GoTo loc_1A729CD
  loc_1A72AB4: End If
  loc_1A72AB6: var_B2 = 2
  loc_1A72AD7: Set var_BC = Me.Txt
  loc_1A72ADD: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemberFamily Where SubCode= '", var_EC)
  loc_1A72AE5: -1 = var_C0.Text
  loc_1A72AFE: unk_5ADE06.Execute var_F0 & var_C4 & "' And SNo<>1 Order By SNo", var_B2, var_B2
  loc_1A72B09: Set var_94 = var_F0
  loc_1A72B21: ' Referenced from: 1A72C05
  loc_1A72B30: If Not(var_94.EOF) Then
  loc_1A72B48:   var_C4 = CStr(var_B2)
  loc_1A72B6D:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A72B82:   var_124 = -1 & Proc_6_38_E68A98(CVar(var_C0), "Update MemberFamily Set SNo=" & var_C4 & " where Subcode='", var_350)
  loc_1A72B9B:   var_F0 = var_94.Fields
  loc_1A72BB2:   Proc_6_39_E7C810(var_184, CVar(var_F0.Item("SNo")))
  loc_1A72BBA:   var_1AC = CVar("Update MemberFamily Set SNo=" & var_C4 & " where Subcode='" & CStr(CVar(var_C0)) & "' And SNo=") & var_184 
  loc_1A72BC8:   unk_5ADE06.Execute CStr(var_1AC), var_108, 
  loc_1A72BFA:   var_B2 = (var_B2 + 1)
  loc_1A72C00:   var_94.MoveNext
  loc_1A72C05:   GoTo loc_1A72B21
  loc_1A72C08: End If
  loc_1A72C26: Set var_BC = Me.Txt
  loc_1A72C2C: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "Delete From MemProposedMemInf Where subcode='")
  loc_1A72C34: var_EC = var_C0.Text
  loc_1A72C3D: var_C8 = -1 & var_C4
  loc_1A72C4D: unk_5ADE06.Execute "Update MemberFamily Set SNo=" & var_C4 & "'", var_F0, var_B2
  loc_1A72C94: For var_11A8 = CByte(1) To CByte((CLng(Me.FPGrid.Rows) - 1)): var_8C = var_11A8 'Byte
  loc_1A72C9F:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A72CC1:   var_C4 = CStr(Me.FPGrid.TextMatrix))
  loc_1A72CD2:   If (var_C4 <> vbNullString) Then
  loc_1A72CE3:     Set var_BC = Me.Txt
  loc_1A72CE9:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, CVar(CLng(3)))
  loc_1A72CF1:     var_DC = var_C0.Text
  loc_1A72CFB:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A72D03:     var_138 = CVar(CLng(3)) 'Long
  loc_1A72D12:     var_EC = Me.FPGrid.TextMatrix)
  loc_1A72D23:     var_168 = CVar(CLng(var_8C)) 'Long
  loc_1A72D34:     Set var_F4 = Me.FPGrid
  loc_1A72D3A:     var_118 = var_F4.TextMatrix)
  loc_1A72D5C:     Set var_108 = Me.FPGrid
  loc_1A72D62:     var_184 = var_108.TextMatrix)
  loc_1A72D7C:     Proc_183_7_EB0C44(var_1AC, Now, var_184, CVar(CLng(&HE)), CVar(CLng(var_8C)), var_118, CVar(CLng(4)))
  loc_1A72D95:     var_C8 = "Insert into MemProposedMemInf(Subcode,SNo,PMemCode,MemberType,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('"
  loc_1A72DF3:     var_21C = var_C8 & var_C4 & "'," & CStr(1) & ",'" & CStr(var_EC) & "','" & CStr(var_118) & "','" & CStr(var_184) & "','" & MemVar_1F92070
  loc_1A72E16:     var_350 = CVar(var_21C & "','" & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',") 'String
  loc_1A72E1C:     var_360 = var_350 & var_1AC 
  loc_1A72E33:     unk_5ADE06.Execute CStr(var_360 & ",'E')"), var_380, -1
  loc_1A72E91:     var_B2 = (var_B2 + 1)
  loc_1A72E94:   End If
  loc_1A72E97: Next var_11A8 'Byte
  loc_1A72ECA: Set var_BC = Me.Txt
  loc_1A72ED0: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "SELECT IsNull(Max(SNo),0)+1 From MemProposedMemInf Where SubCode= '", var_EC, -1)
  loc_1A72ED8: var_F0 = var_C0.Text
  loc_1A72EF1: unk_5ADE06.Execute var_F4 & var_C4 & "'", 0, var_108
  loc_1A72F01:  = var_F4.Item()
  loc_1A72F09:  = var_108.Value
  loc_1A72F12: var_B2 = CInt(var_F0.Fields)
  loc_1A72F50: Set var_BC = Me.Txt
  loc_1A72F56: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '")
  loc_1A72F5E: var_EC = var_C0.Text
  loc_1A72F67: var_C8 = -1 & var_C4
  loc_1A72F77: unk_5ADE06.Execute var_F4 & var_C4 & "' Order By Cast(Mark As Integer),SNo", var_F0, var_B2
  loc_1A72F82: Set var_94 = var_F0
  loc_1A72F9A: ' Referenced from: 1A7307E
  loc_1A72FA9: If Not(var_94.EOF) Then
  loc_1A72FC1:   var_C4 = CStr(var_B2)
  loc_1A72FE6:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A72FEE:   var_EC = CVar(var_C0) 'Address
  loc_1A72FFB:   var_124 = -1 & Proc_6_38_E68A98(var_EC, "Update MemProposedMemInf Set SNo=" & var_C4 & " where Subcode='", var_350)
  loc_1A73014:   var_F0 = var_94.Fields
  loc_1A7302B:   Proc_6_39_E7C810(var_184, CVar(var_F0.Item("SNo")))
  loc_1A73041:   unk_5ADE06.Execute CStr(CVar(CStr(1) & "' And SNo=") & var_184), var_108, 
  loc_1A73073:   var_B2 = (var_B2 + 1)
  loc_1A73079:   var_94.MoveNext
  loc_1A7307E:   GoTo loc_1A72F9A
  loc_1A73081: End If
  loc_1A73083: var_B2 = 1
  loc_1A730A4: Set var_BC = Me.Txt
  loc_1A730AA: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '", var_EC)
  loc_1A730B2: -1 = var_C0.Text
  loc_1A730CB: unk_5ADE06.Execute var_F0 & var_C4 & "' Order By SNo", var_B2, var_B2
  loc_1A730D6: Set var_94 = var_F0
  loc_1A730EE: ' Referenced from: 1A731D2
  loc_1A730FD: If Not(var_94.EOF) Then
  loc_1A73115:   var_C4 = CStr(var_B2)
  loc_1A7313A:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A7314F:   var_124 = -1 & Proc_6_38_E68A98(CVar(var_C0), "Update MemProposedMemInf Set SNo=" & var_C4 & " where Subcode='", var_350)
  loc_1A73168:   var_F0 = var_94.Fields
  loc_1A7317F:   Proc_6_39_E7C810(var_184, CVar(var_F0.Item("SNo")))
  loc_1A73187:   var_1AC = CVar(CStr(1) & "' And SNo=") & var_184 
  loc_1A73195:   unk_5ADE06.Execute CStr(var_1AC), var_108, 
  loc_1A731C7:   var_B2 = (var_B2 + 1)
  loc_1A731CD:   var_94.MoveNext
  loc_1A731D2:   GoTo loc_1A730EE
  loc_1A731D5: End If
  loc_1A731F3: Set var_BC = Me.Txt
  loc_1A731F9: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "SELECT SubCode,CardRegId,ConPrefix + ' ' + Name As Name,CardNo From MemberFamily Where SubCode= '")
  loc_1A73201: var_EC = var_C0.Text
  loc_1A7320A: var_C8 = -1 & var_C4
  loc_1A7321A: unk_5ADE06.Execute "Update MemProposedMemInf Set SNo=" & var_C4 & "' And IsNull(HW_Id,'')<>'' And IsNull(CardRegId,'')<>'' Order By SNo", var_F0, var_B2
  loc_1A73225: Set var_94 = var_F0
  loc_1A7323D: ' Referenced from: 1A7337F
  loc_1A7324C: If Not(var_94.EOF) Then
  loc_1A73276:   var_C0 = var_94.Fields.Item("Name")
  loc_1A7328B:   var_C8 = -1 & Proc_6_38_E68A98(CVar(var_C0), "Update SmartCardRegistration Set Name='", var_1AC)
  loc_1A73292:   var_CC = "Update MemProposedMemInf Set SNo=" & Proc_6_38_E68A98(CVar(var_C0), "Update SmartCardRegistration Set Name='", var_1AC) & "',CardNo='"
  loc_1A732A4:   var_F0 = var_94.Fields
  loc_1A732AC:   var_F4 = var_F0.Item("CardNo")
  loc_1A732F7:   var_1E8 = var_158 & Proc_6_38_E68A98(CVar(var_F4), var_CC) & "' where MemberCode='" & Proc_6_38_E68A98(CVar(var_94.Fields.Item("subcode")))
  loc_1A7333D:   unk_5ADE06.Execute var_1E8 & "' And Code='" & Proc_6_38_E68A98(CVar(var_94.Fields.Item("CardRegId"))) & "'", , 
  loc_1A7337A:   var_94.MoveNext
  loc_1A7337F:   GoTo loc_1A7323D
  loc_1A73382: End If
  loc_1A73388: unk_5ADE06.CommitTrans
  loc_1A733AF: Set var_BC = Me.Txt
  loc_1A733B5: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, "Select max(SNo) As SNo From MemAddRWA Where SubCode='", var_1AC)
  loc_1A733C4: var_118 = Trim(CVar(var_C0))
  loc_1A733CC: var_184 = -1 & var_118 
  loc_1A733E3: unk_5ADE06.Execute CStr(CVar(var_94.Fields.Item("subcode")) & "' And Name ='Residential Address' And Mark ='*'"), var_F0, 0
  loc_1A733EE: Set var_B0 = var_F0
  loc_1A7340A: var_B2 = 0
  loc_1A73421: If (var_B0.RecordCount > 0) Then
  loc_1A7343B:   var_C0 = var_B0.Fields.Item("SNo")
  loc_1A7344A:   Proc_6_39_E7C810(var_118, CVar(var_C0))
  loc_1A73453:   var_B2 = CInt(var_118)
  loc_1A73466:   If (var_B2 <> 0) Then
  loc_1A73481:     var_C4 = CStr((var_B2 + 1))
  loc_1A73485:     var_C8 = "Update MemAddRWA Set SNo=" & CStr(CVar(var_94.Fields.Item("subcode")) & "' And Name ='Residential Address' And Mark ='*'")
  loc_1A7349A:     Set var_BC = Me.Txt
  loc_1A734A0:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, CVar(var_C8 & " , Mark='*' Where Subcode='"), var_350)
  loc_1A734B7:     var_19C = -1 & Trim(CVar(var_C0)) 
  loc_1A734C0:     var_1AC = CVar(var_94.Fields.Item("subcode")) & "' And Name ='Residential Address' And Mark ='*'" & "' And Name='Residential Address' And SNo=1 And Mark=''" 
  loc_1A734CE:     unk_5ADE06.Execute CStr(var_1AC), var_F0, var_B2
  loc_1A7350F:     Set var_BC = Me.Txt
  loc_1A73515:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, "Update MemAddRWA Set SNo=1 , Mark='' Where Subcode='", var_360)
  loc_1A7352C:     var_184 = -1 & Trim(CVar(var_C0)) 
  loc_1A7353F:     var_1AC = CVar(var_C8 & " , Mark='*' Where Subcode='") & "' And Name='Residential Address' And SNo=" & CVar(var_B2) 
  loc_1A73548:     var_350 = var_1AC & " And Mark='*'" 
  loc_1A73556:     unk_5ADE06.Execute CStr(var_350), var_F0, var_B2
  loc_1A73593:     Set var_BC = Me.Txt
  loc_1A73599:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, "Delete From MemAddRWA Where Subcode='")
  loc_1A735C7:     unk_5ADE06.Execute CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name='Residential Address' And SNo<>1 And Mark='*'"), -1, var_F0
  loc_1A735E3:   End If
  loc_1A735E3: End If
  loc_1A735E8: Set var_B0 = Nothing
  loc_1A7360D: Set var_BC = Me.Txt
  loc_1A73613: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, "Select max(SNo) As SNo From MemAddRWA Where SubCode='", var_1AC)
  loc_1A73622: var_118 = Trim(CVar(var_C0))
  loc_1A7362A: var_184 = -1 & var_118 
  loc_1A73641: unk_5ADE06.Execute CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='WorkPlace Address' And Mark ='*'"), var_F0, 0
  loc_1A7364C: Set var_B0 = var_F0
  loc_1A7367A: If (var_B0.RecordCount > 0) Then
  loc_1A73694:   var_C0 = var_B0.Fields.Item("SNo")
  loc_1A7369C:   var_EC = CVar(var_C0) 'Address
  loc_1A736A3:   Proc_6_39_E7C810(var_118)
  loc_1A736AC:   var_B2 = CInt(var_118)
  loc_1A736BF:   If (var_B2 <> 0) Then
  loc_1A736DA:     var_C4 = CStr((var_B2 + 1))
  loc_1A736E5:     var_184 = CVar("Update MemAddRWA Set SNo=" & CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='WorkPlace Address' And Mark ='*'") & " , Mark='*' Where Subcode='") 'String
  loc_1A736F3:     Set var_BC = Me.Txt
  loc_1A736F9:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_184, var_350)
  loc_1A73710:     var_19C = -1 & Trim(CVar(var_C0)) 
  loc_1A73719:     var_1AC = var_1AC & Trim(CVar(var_C0)) & "' And Name ='WorkPlace Address' And Mark ='*'" & "' And Name='WorkPlace Address' And SNo=1 And Mark=''" 
  loc_1A73727:     unk_5ADE06.Execute CStr(var_1AC), var_F0, var_B2
  loc_1A73768:     Set var_BC = Me.Txt
  loc_1A7376E:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, "Update MemAddRWA Set SNo=1 , Mark='' Where Subcode='", var_360)
  loc_1A73776:     var_EC = CVar(var_C0) 'Address
  loc_1A73785:     var_184 = -1 & Trim(var_EC) 
  loc_1A73798:     var_1AC = var_184 & "' And Name='WorkPlace Address' And SNo=" & CVar(var_B2) 
  loc_1A737A1:     var_350 = var_1AC & " And Mark='*'" 
  loc_1A737AF:     unk_5ADE06.Execute CStr(var_350), var_F0, var_EC
  loc_1A737EC:     Set var_BC = Me.Txt
  loc_1A737F2:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, "Delete From MemAddRWA Where Subcode='")
  loc_1A73820:     unk_5ADE06.Execute CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name='WorkPlace Address' And SNo<>1 And Mark='*'"), -1, var_F0
  loc_1A7383C:   End If
  loc_1A7383C: End If
  loc_1A73841: Set var_B0 = Nothing
  loc_1A73866: Set var_BC = Me.Txt
  loc_1A7386C: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, "Select max(SNo) As SNo From MemAddRWA Where SubCode='", var_1AC)
  loc_1A7387B: var_118 = Trim(CVar(var_C0))
  loc_1A73883: var_184 = -1 & var_118 
  loc_1A7389A: unk_5ADE06.Execute CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'"), var_F0, 0
  loc_1A738A5: Set var_B0 = var_F0
  loc_1A738C5: var_11C = var_B0.RecordCount
  loc_1A738D3: If (var_11C > 0) Then
  loc_1A738ED:   var_C0 = var_B0.Fields.Item("SNo")
  loc_1A738F5:   var_EC = CVar(var_C0) 'Address
  loc_1A738FC:   Proc_6_39_E7C810(var_118)
  loc_1A73905:   var_B2 = CInt(var_118)
  loc_1A73918:   If (var_B2 <> 0) Then
  loc_1A73933:     var_C4 = CStr((var_B2 + 1))
  loc_1A7393E:     var_184 = CVar("Update MemAddRWA Set SNo=" & CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'") & " , Mark='*' Where Subcode='") 'String
  loc_1A7394C:     Set var_BC = Me.Txt
  loc_1A73952:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_184, var_350)
  loc_1A73969:     var_19C = -1 & Trim(CVar(var_C0)) 
  loc_1A73972:     var_1AC = var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'" & "' And Name='Abroad Address' And SNo=1 And Mark=''" 
  loc_1A73980:     unk_5ADE06.Execute CStr(var_1AC), var_F0, var_B2
  loc_1A739C1:     Set var_BC = Me.Txt
  loc_1A739C7:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, "Update MemAddRWA Set SNo=1 , Mark='' Where Subcode='", var_360)
  loc_1A739CF:     var_EC = CVar(var_C0) 'Address
  loc_1A739DE:     var_184 = -1 & Trim(var_EC) 
  loc_1A739F1:     var_1AC = var_184 & "' And Name='Abroad Address' And SNo=" & CVar(var_B2) 
  loc_1A73A08:     unk_5ADE06.Execute CStr(var_1AC & "  And Mark='*'"), var_F0, var_EC
  loc_1A73A45:     Set var_BC = Me.Txt
  loc_1A73A4B:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, "Delete From MemAddRWA Where Subcode='")
  loc_1A73A6B:     var_19C = var_1AC & Trim(CVar(var_C0)) & "' And Name='Abroad Address' And SNo<>1 And Mark='*'" 
  loc_1A73A79:     unk_5ADE06.Execute CStr(var_19C), -1, var_F0
  loc_1A73A95:   End If
  loc_1A73A95: End If
  loc_1A73ABD: For var_11AC = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8C = var_11AC 'Byte
  loc_1A73AF2:   If ((CInt(var_8C) > 1) And (CLng(var_8C) < (CLng(Me.FGrid1.Rows) - 1))) Then
  loc_1A73AFA:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73B02:     var_138 = CVar(CLng(6)) 'Long
  loc_1A73B1C:     var_118 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1A73B22:     var_184 = Trim(var_118)
  loc_1A73B3E:     If (var_184 = vbNullString) Then
  loc_1A73B5A:       MsgBox("Define revenue ", &H40, var_118, var_184, var_19C)
  loc_1A73B6A:       Exit Sub
  loc_1A73B6B:     End If
  loc_1A73B6B:   End If
  loc_1A73B70:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73B78:   var_138 = CVar(CLng(6)) 'Long
  loc_1A73B98:   var_184 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1A73BB4:   If CBool(var_184 <> vbNullString) Then
  loc_1A73BBC:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73BDE:     var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_1A73BF4:     If (CDbl(Val(var_C4)) <= CDbl(0)) Then
  loc_1A73C0B:       Me.FGrid1.Row = CVar(CLng(var_8C))
  loc_1A73C16:       var_DC = CVar(CLng(2)) 'Long
  loc_1A73C25:       Me.FGrid1.Col = var_DC
  loc_1A73C31:       Set var_BC = Me.FGrid1
  loc_1A73C42:       Call Fgrid1_UnknownEvent_B()
  loc_1A73C4C:       Call TxtGrid_GotFocus(2)
  loc_1A73C57:       Call 0.Method_arg_50 (var_C4, FGrid1.DispID_8001, CVar(CLng(2)), var_DC, CVar(CLng(2)))
  loc_1A73C78:       MsgBox("Please Fill Valid Amount.", 0, CVar(var_C4), var_184, var_19C)
  loc_1A73C88:       Exit Sub
  loc_1A73C89:     End If
  loc_1A73C8E:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73CB0:     var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_1A73CC1:     If (var_C4 = vbNullString) Then
  loc_1A73CD8:       Me.FGrid1.Row = CVar(CLng(var_8C))
  loc_1A73CE3:       var_DC = CVar(CLng(3)) 'Long
  loc_1A73CF2:       Me.FGrid1.Col = var_DC
  loc_1A73CFE:       Set var_BC = Me.FGrid1
  loc_1A73D0F:       Call Fgrid1_UnknownEvent_B()
  loc_1A73D19:       Call TxtGrid_GotFocus(2)
  loc_1A73D24:       Call 0.Method_arg_50 (var_C4, FGrid1.DispID_8001, CVar(CLng(3)), var_DC)
  loc_1A73D45:       MsgBox("Please Fill Valid Nature.", 0, CVar(var_C4), var_184, var_19C)
  loc_1A73D55:       Exit Sub
  loc_1A73D56:     End If
  loc_1A73D5B:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73D90:     If Not(IsDate(CVar(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_1A73DA7:       Me.FGrid1.Row = CVar(CLng(var_8C))
  loc_1A73DB2:       var_DC = CVar(CLng(4)) 'Long
  loc_1A73DC1:       Me.FGrid1.Col = var_DC
  loc_1A73DCD:       Set var_BC = Me.FGrid1
  loc_1A73DDE:       Call Fgrid1_UnknownEvent_B()
  loc_1A73DE8:       Call TxtGrid_GotFocus(2)
  loc_1A73DF3:       Call 0.Method_arg_50 (var_C4, FGrid1.DispID_8001, CVar(CLng(4)), var_DC)
  loc_1A73E14:       MsgBox("Please Fill Valid Applicable.", 0, CVar(var_C4), var_184, var_19C)
  loc_1A73E24:       Exit Sub
  loc_1A73E25:     End If
  loc_1A73E2A:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73E4C:     var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_1A73E5D:     If (var_C4 = vbNullString) Then
  loc_1A73E74:       Me.FGrid1.Row = CVar(CLng(var_8C))
  loc_1A73E7F:       var_DC = CVar(CLng(5)) 'Long
  loc_1A73E8E:       Me.FGrid1.Col = var_DC
  loc_1A73E9A:       Set var_BC = Me.FGrid1
  loc_1A73EAB:       Call Fgrid1_UnknownEvent_B()
  loc_1A73EB5:       Call TxtGrid_GotFocus(2)
  loc_1A73EC0:       Call 0.Method_arg_50 (var_C4, FGrid1.DispID_8001, CVar(CLng(5)), var_DC)
  loc_1A73EE1:       MsgBox("Please Fill Valid Status.", 0, CVar(var_C4), var_184, var_19C)
  loc_1A73EF1:       Exit Sub
  loc_1A73EF2:     End If
  loc_1A73EF2:   End If
  loc_1A73EF5: Next var_11AC 'Byte
  loc_1A73F04: unk_5ADDC8.BeginTrans var_11C
  loc_1A73F0B: var_8A = &HFF
  loc_1A73F36: For var_11B4 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8C = var_11B4 'Byte
  loc_1A73F41:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73F49:   var_138 = CVar(CLng(6)) 'Long
  loc_1A73F85:   If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1A73F90:     If (var_11B0 = vbNullString) Then
  loc_1A73F98:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73FA0:       var_138 = CVar(CLng(6)) 'Long
  loc_1A73FC9:       var_11B0 = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1A73FDB:     Else
  loc_1A73FE2:       var_19C = CVar(var_11B0 & "','") 'String
  loc_1A73FEA:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A7401A:       var_1AC = (CVar(CLng(6)) + Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1A7401F:       var_11B0 = CStr(var_1AC)
  loc_1A74032:     End If
  loc_1A74032:   End If
  loc_1A74035: Next var_11B4 'Byte
  loc_1A74059: Set var_BC = Me.Txt
  loc_1A7405F: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4, "Delete From MemRevWise Where MemCode='")
  loc_1A74067: var_EC = var_C0.Text
  loc_1A74070: var_C8 = -1 & var_C4
  loc_1A74077: var_CC = "Update MemAddRWA Set SNo=" & CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'") & "' And RevCode Not In('"
  loc_1A7408E: unk_5ADE06.Execute var_CC & var_11B0 & "')", var_F0, 
  loc_1A740D4: For var_11B8 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8C = var_11B8 'Byte
  loc_1A740DF:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A740E7:   var_138 = CVar(CLng(6)) 'Long
  loc_1A74123:   If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1A74134:     Set var_BC = Me.Txt
  loc_1A7413A:     Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4)
  loc_1A74142:     var_138 = var_C0.Text
  loc_1A7414C:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A74154:     var_138 = CVar(CLng(6)) 'Long
  loc_1A74174:     var_184 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1A7418D:     var_C8 = "Select * from MemRevWise where MemCode='" & var_C4
  loc_1A741B1:     unk_5ADDC8.Execute CStr(CVar(var_C8 & "' And RevCode='") & var_184 & "'"), var_360, -1
  loc_1A741F8:     If (var_F4.RecordCount = 0) Then
  loc_1A74209:       Set var_BC = Me.Txt
  loc_1A7420F:       Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C8, var_F4)
  loc_1A74217:       var_138 = var_C0.Text
  loc_1A74249:       Proc_6_7_F25D88(var_184, CVar(CStr(Me.FGrid1.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_8C)))
  loc_1A7426A:       var_360 = Me.FGrid1.TextMatrix)
  loc_1A742A5:       var_174 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1A742C4:       var_424 = Me.FGrid1.TextMatrix)
  loc_1A742E6:       Set var_140 = Me.FGrid1
  loc_1A742EC:       var_4B8 = var_140.TextMatrix)
  loc_1A742FD:       var_57C = CVar(Proc_6_15_EF2C1C(var_4B8, CVar(CLng(5)), CVar(CLng(var_8C)), var_424, CVar(CLng(3)), CVar(CLng(var_8C)), var_174, CVar(CLng(2)))) 'String
  loc_1A74303:       Proc_6_7_F25D88(var_5D0, var_57C, CVar(CLng(var_8C)), var_360, CVar(CLng(6)))
  loc_1A7430C:       Set var_154 = Me.TopCtrl1
  loc_1A74312:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_8C)))
  loc_1A7435D:       var_C4 = "Insert into MemRevWise (MemCode,AppDate,RevCode,Amount,Nature," & "ActiveYN,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_1A743B4:       var_498 = CVar(var_C4 & " Values ('" & var_C8 & "',") & var_184 & ",'" & CVar(CStr(var_360)) & "'," & CVar(var_174) & ",'" & CVar(CStr(var_424)) 
  loc_1A743FB:       var_6A4 = var_498 & "','" & CVar(CStr(var_4B8)) & "','" & CVar(MemVar_1F920C8) & "'," & var_5D0 & ",'" & IIf((CStr(var_610) = "Add"), "A", "E") 
  loc_1A74438:       unk_5ADDC8.Execute CStr(var_6A4 & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_79C, -1
  loc_1A744B7:     Else
  loc_1A744BC:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A744E4:       Proc_6_7_F25D88(var_184, CVar(CStr(Me.FGrid1.TextMatrix))), CVar(CLng(4)), var_DC)
  loc_1A744FF:       Set var_C0 = Me.FGrid1
  loc_1A74505:       var_350 = var_C0.TextMatrix)
  loc_1A74538:       var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_1A74540:       var_174 = Val(var_C4)
  loc_1A7455F:       var_414 = Me.FGrid1.TextMatrix)
  loc_1A74587:       var_4A8 = Me.FGrid1.TextMatrix)
  loc_1A74598:       var_55C = CVar(Proc_6_15_EF2C1C(var_4A8, CVar(CLng(5)), CVar(CLng(var_8C)), var_414, CVar(CLng(3)), CVar(CLng(var_8C)), var_174, CVar(CLng(2)))) 'String
  loc_1A7459E:       Proc_6_7_F25D88(var_57C, var_55C, CVar(CLng(var_8C)), var_350, CVar(CLng(6)))
  loc_1A745B1:       Set var_13C = Me.Txt
  loc_1A745B7:       Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_140, var_C8, CVar(CLng(var_8C)))
  loc_1A745BF:       var_158 = var_140.Text
  loc_1A745C9:       var_4F8 = CVar(CLng(var_8C)) 'Long
  loc_1A745D1:       var_518 = CVar(CLng(6)) 'Long
  loc_1A7463C:       var_404 = "Update MemRevWise Set Appdate=" & var_184 & ",RevCode='" & CVar(CStr(var_350)) & "',Amount=" & CVar(var_174) & ",Nature='" 
  loc_1A74677:       var_54C = var_404 & CVar(CStr(var_414)) & "',ActiveYN='" & CVar(CStr(var_4A8)) & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" 
  loc_1A746AD:       var_674 = var_54C & var_57C & ",U_AE='E',Site_Code='" & CVar(MemVar_1F92070) & "',LogSite_Code='" & CVar(MemVar_1F92078) & "' where MemCode='" 
  loc_1A746DE:       unk_5ADDC8.Execute CStr(var_674 & CVar(var_C8) & "' And RevCode='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "'"), var_7AC, -1
  loc_1A74750:     End If
  loc_1A74750:   End If
  loc_1A74753: Next var_11B8 'Byte
  loc_1A7475F: unk_5ADDC8.CommitTrans
  loc_1A74766: var_8A = 0
  loc_1A7476E: Set var_B0 = Nothing
  loc_1A7477C: Me.Requery -1
  loc_1A74783: var_8A = 0
  loc_1A74794: Set var_BC = Me.Txt
  loc_1A7479A: Call 0.Method_Proc_265_115_1A748800 (CInt(0), var_C0, var_C4)
  loc_1A747A2: var_8A = var_C0.Text
  loc_1A747C6: Me.Requery -1
  loc_1A747F3: Me.Find "SearchCode = '" & var_C4 & "'", 0, 1
  loc_1A74814: var_C4 = "INI"
  loc_1A74822: Call Proc_265_103_10EBC50(Proc_5_1_100CB50(var_C4, Me, global_164))
  loc_1A7482D: Call Proc_265_112_1B45AC0(var_DC)
  loc_1A74837: Set var_88 = Nothing
  loc_1A7483F: Set var_98 = Nothing
  loc_1A74842: Exit Sub
  loc_1A74843: ' Referenced from: 1A71054
  loc_1A74849: If (var_8A = &HFF) Then
  loc_1A74852:   unk_5ADE06.RollbackTrans
  loc_1A74857: End If
  loc_1A7485D: Call 0.Method_arg_50 (var_C4)
  loc_1A74872: Proc_183_57_104AA84(var_C4, "UpdateDataBaseEdit")
  loc_1A7487E: Exit Sub
End Sub

Public Sub Proc_265_116_129E7E8
  'Data Table: 5ADD9C
  Dim Me As Recordset15
  Dim unk_5ADE06 As Connection15
  Dim var_96 As Integer
  Dim var_124 As String
  Dim var_12C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_140 As Fields15
  Dim var_FC As Variant
  Dim var_BC As Variant
  Dim var_11C As Variant
  Dim var_190 As Variant
  Dim var_130 As String
  loc_129E214: On Error Goto loc_129E7AA
  loc_129E222: If (global_116 = "Y") Then
  loc_129E246:   MsgBox("You Can not Delete this A/c", &H40, "Validation Check", var_FC, var_11C)
  loc_129E256:   Exit Sub
  loc_129E257: End If
  loc_129E28E: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_129E29A:   var_120 = Me.AbsolutePosition
  loc_129E2A6:   var_94 = CVar(var_120) 'Variant
  loc_129E2B3:   unk_5ADE06.BeginTrans var_120
  loc_129E2E9:   Set var_128 = Me.Txt
  loc_129E2EF:   Call 0.Method_Proc_265_116_129E7E80 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_129E2F7:   var_BC = var_12C.Text
  loc_129E300:   var_138 = -1 & var_130
  loc_129E310:   unk_5ADE06.Execute var_138 & "'", var_140, &HFF
  loc_129E31B:   Set var_9C = var_140
  loc_129E337:   ' Referenced from: 129E470
  loc_129E346:   If Not(var_9C.EOF) Then
  loc_129E363:     var_12C = var_9C.Fields.Item("subcode")
  loc_129E382:     var_140 = var_9C.Fields
  loc_129E3B9:     var_FC = var_9C.Fields.Item("AmtDr").Value
  loc_129E3E0:     var_11C = var_9C.Fields.Item("GroupCode").Value
  loc_129E407:     var_190 = var_9C.Fields.Item("V_DATE").Value
  loc_129E438:     Proc_183_0_1279094(MemVar_1F921DC, CStr(var_12C.Value), CSng(var_140.Item("AmtCr").Value))
  loc_129E46B:     var_9C.MoveNext
  loc_129E470:     GoTo loc_129E337
  loc_129E473:   End If
  loc_129E48E:   var_FC = CVar("Delete From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '") 'String
  loc_129E49C:   Set var_128 = Me.Txt
  loc_129E4A2:   Call 0.Method_Proc_265_116_129E7E80 (CInt(0), var_12C, var_FC, var_1A8, -1)
  loc_129E4B9:   var_11C = var_140 & Trim(CVar(var_12C)) 
  loc_129E4C2:   var_190 = var_11C & "'" 
  loc_129E4D0:   unk_5ADE06.Execute CStr(var_190), CSng(var_FC), CStr(var_11C)
  loc_129E50F:   Set var_128 = Me.Txt
  loc_129E515:   Call 0.Method_Proc_265_116_129E7E80 (CInt(0), var_12C, "Delete From SubGroup Where SUBCode='", var_190)
  loc_129E52C:   var_FC = -1 & Trim(CVar(var_12C)) 
  loc_129E543:   unk_5ADE06.Execute CStr(var_FC & "'"), var_140, CDate(var_190)
  loc_129E57C:   Set var_128 = Me.Txt
  loc_129E582:   Call 0.Method_Proc_265_116_129E7E80 (CInt(0), var_12C, "Delete From MemberFamily Where subcode='")
  loc_129E5B0:   unk_5ADE06.Execute CStr(var_190 & Trim(CVar(var_12C)) & "'"), -1, var_140
  loc_129E5E9:   Set var_128 = Me.Txt
  loc_129E5EF:   Call 0.Method_Proc_265_116_129E7E80 (CInt(0), var_12C, "Delete From MemProposedMemInf Where subcode='")
  loc_129E61D:   unk_5ADE06.Execute CStr(var_190 & Trim(CVar(var_12C)) & "'"), -1, var_140
  loc_129E656:   Set var_128 = Me.Txt
  loc_129E65C:   Call 0.Method_Proc_265_116_129E7E80 (CInt(0), var_12C, "Delete From MemAddRWA Where subcode='")
  loc_129E68A:   unk_5ADE06.Execute CStr(var_190 & Trim(CVar(var_12C)) & "'"), -1, var_140
  loc_129E6C3:   Set var_128 = Me.Txt
  loc_129E6C9:   Call 0.Method_Proc_265_116_129E7E80 (CInt(0), var_12C, "Delete From MemRevWise Where Memcode='")
  loc_129E6ED:   var_124 = CStr(var_190 & Trim(CVar(var_12C)) & "'")
  loc_129E6F7:   unk_5ADE06.Execute var_124, -1, var_140
  loc_129E719:   unk_5ADE06.CommitTrans
  loc_129E720:   var_96 = 0
  loc_129E72E:   Me.Requery -1
  loc_129E74A:   If (Me.RecordCount > 0) Then
  loc_129E764:     If (Me.AbsolutePosition > 1) Then
  loc_129E76F:       var_BC = (var_94 - 1)
  loc_129E77B:       Me.AbsolutePosition = CLng(CVar(var_12C))
  loc_129E780:     End If
  loc_129E780:   End If
  loc_129E79C:   Proc_5_0_110649C(&HFF, Me, global_164)
  loc_129E7A4:   Call Proc_265_112_1B45AC0(0)
  loc_129E7A9: End If
  loc_129E7A9: Exit Sub
  loc_129E7AA: ' Referenced from: 129E214
  loc_129E7B0: If (var_96 = &HFF) Then
  loc_129E7B9:   unk_5ADE06.RollbackTrans
  loc_129E7BE: End If
  loc_129E7C4: Call 0.Method_arg_50 (var_124)
  loc_129E7D9: Proc_183_57_104AA84(var_124, "UpdateDataBaseDelete")
  loc_129E7E5: Exit Sub
  loc_129E7E6: Exit Sub
End Sub

Public Sub Proc_265_117_E05700
  'Data Table: 5ADD9C
  loc_E056F0: Call Proc_265_106_104DB04()
  loc_E056F8: Call Me.SetFocus
  loc_E056FE: Exit Sub
End Sub

Public Sub Proc_265_118_170B4C0(arg_C) '170B4C0
  'Data Table: 5ADD9C
  Dim var_9A As Integer
  Dim var_A0 As Variant
  Dim var_B4 As Long
  Dim var_B8 As Variant
  Dim var_C4 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_BC As String
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1C0 As Long
  Dim Me As Recordset15
  Dim var_1DC As Long
  Dim var_168 As Variant
  loc_17098FF: var_9A = arg_C
  loc_1709908: If (var_9A = 0) Then
  loc_170991E:   var_B4 = CLng(Me.FAGrid.Col)
  loc_170992E:   If Not (var_B4 = CLng(3)) Then
  loc_1709938:     If Not (var_B4 = CLng(4)) Then
  loc_1709942:       If (var_B4 = CLng(6)) Then
  loc_1709945:       End If
  loc_1709945:     End If
  loc_1709952:     Set var_A0 = Me.TxtGrid
  loc_1709958:     Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC)
  loc_1709960:     var_B4 = var_B8.Text
  loc_1709977:     If (var_BC <> vbNullString) Then
  loc_1709992:       Set var_B8 = Me.ListView2.SelectedItem
  loc_1709998:       var_BC = var_B8.Text
  loc_17099AA:       Set var_C0 = Me.TxtGrid
  loc_17099B0:       Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_C4)
  loc_17099B8:       var_C4.Text = var_BC
  loc_17099CE:     End If
  loc_17099E1:     var_E4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_17099F9:     var_104 = CVar(CLng(Me.FAGrid.Col)) 'Long
  loc_1709A0B:     Set var_A0 = Me.TxtGrid
  loc_1709A11:     Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC)
  loc_1709A19:     var_104 = var_B8.Text
  loc_1709A21:     var_124 = CVar(var_BC) 'String
  loc_1709A29:     Set var_138 = Me.FAGrid
  loc_1709A2F:     LateIdCallSt
  loc_1709A50:   Else
  loc_1709A57:     If Not (var_B4 = CLng(8)) Then
  loc_1709A61:       If (var_B4 = CLng(&HA)) Then
  loc_1709A64:       End If
  loc_1709A6E:       Set var_A0 = Me.TxtGrid
  loc_1709A74:       Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_138)
  loc_1709A87:       var_BC = Proc_6_33_1512840(var_B8, var_124)
  loc_1709A94:       Set var_C4 = Me.TxtGrid
  loc_1709A9A:       Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_138, var_BC)
  loc_1709AA2:       var_138.Text = var_E4
  loc_1709AC8:       var_E4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1709AD1:       Set var_C4 = Me.FAGrid
  loc_1709AE0:       var_104 = CVar(CLng(var_C4.Col)) 'Long
  loc_1709AF2:       Set var_A0 = Me.TxtGrid
  loc_1709AF8:       Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC)
  loc_1709B00:       var_104 = var_B8.Text
  loc_1709B08:       var_124 = CVar(var_BC) 'String
  loc_1709B10:       Set var_138 = Me.FAGrid
  loc_1709B16:       LateIdCallSt
  loc_1709B37:     Else
  loc_1709B3E:       If (var_B4 = CLng(&HE)) Then
  loc_1709B4B:         Set var_A0 = Me.TxtGrid
  loc_1709B51:         Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_138)
  loc_1709B68:         var_E4 = vbNullString
  loc_1709B81:         Set var_C0 = Me.TxtGrid
  loc_1709B87:         Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_C4, 1, (Trim(CVar(var_B8)) <> var_E4))
  loc_1709B8F:         var_148 = CVar(var_C4) 'Address
  loc_1709B93:         var_F4 = "@"
  loc_1709BBA:         Set var_138 = Me.TxtGrid
  loc_1709BC0:         Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_16C, 1)
  loc_1709C06:         If CBool(var_9A And var_E4 Or (InStr((InStr(var_124, var_148, var_F4, 0) = 0), CVar(var_16C), ".", 0) = 0)) Then
  loc_1709C0F:           Call 0.Method_arg_50 (var_BC)
  loc_1709C46:           If (MsgBox("InValid Email ID!", &H141, CVar(var_BC), var_124, var_148) = 2) Then
  loc_1709C4E:             Proc_265_118_170B4C0 = 0
  loc_1709C54:           End If
  loc_1709C54:         End If
  loc_1709C67:         var_E4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1709C7F:         var_104 = CVar(CLng(Me.FAGrid.Col)) 'Long
  loc_1709C91:         Set var_A0 = Me.TxtGrid
  loc_1709C97:         Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC)
  loc_1709C9F:         var_104 = var_B8.Text
  loc_1709CA7:         var_124 = CVar(var_BC) 'String
  loc_1709CAF:         Set var_138 = Me.FAGrid
  loc_1709CB5:         LateIdCallSt
  loc_1709CD6:       Else
  loc_1709CDD:         If (var_B4 = CLng(&H1D)) Then
  loc_1709CEA:           Set var_A0 = Me.TxtGrid
  loc_1709CF0:           Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_138)
  loc_1709D19:           If (Trim(CVar(var_B8)) = vbNullString) Then
  loc_1709D29:             Set var_A0 = Me.TxtGrid
  loc_1709D2F:             Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, "0")
  loc_1709D37:             var_B8.Text = var_124
  loc_1709D43:           End If
  loc_1709D56:           var_E4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1709D6E:           var_104 = CVar(CLng(Me.FAGrid.Col)) 'Long
  loc_1709D80:           Set var_A0 = Me.TxtGrid
  loc_1709D86:           Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC)
  loc_1709D8E:           var_104 = var_B8.Text
  loc_1709D96:           var_124 = CVar(var_BC) 'String
  loc_1709D9E:           Set var_138 = Me.FAGrid
  loc_1709DA4:           LateIdCallSt
  loc_1709DC5:         Else
  loc_1709DE1:           Set var_C4 = Me.FAGrid
  loc_1709E02:           Set var_A0 = Me.TxtGrid
  loc_1709E08:           Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, CVar(CLng(var_C4.Col)), CVar(CLng(Me.FAGrid.Row)))
  loc_1709E10:           var_138 = var_B8.Text
  loc_1709E18:           var_124 = CVar(var_BC) 'String
  loc_1709E20:           Set var_138 = Me.FAGrid
  loc_1709E26:           LateIdCallSt
  loc_1709E44:         End If
  loc_1709E44:       End If
  loc_1709E44:     End If
  loc_1709E44:   End If
  loc_1709E47: Else
  loc_1709E4D:   If (var_9A = 1) Then
  loc_1709E63:     var_1C0 = CLng(Me.FPGrid.Col)
  loc_1709E73:     If (var_1C0 = CLng(4)) Then
  loc_1709E83:       Set var_A0 = Me.TxtGrid
  loc_1709E89:       Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, var_1C0, var_138)
  loc_1709EA8:       If (var_BC <> vbNullString) Then
  loc_1709EC3:         Set var_B8 = Me.ListView3.SelectedItem
  loc_1709EC9:         var_BC = var_B8.Text
  loc_1709EDB:         Set var_C0 = Me.TxtGrid
  loc_1709EE1:         Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_C4, var_BC)
  loc_1709EE9:         var_C4.Text = var_B8.Text
  loc_1709EFF:       End If
  loc_1709F12:       var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_1709F21:       var_D4 = Me.FPGrid.Col
  loc_1709F3C:       Set var_A0 = Me.TxtGrid
  loc_1709F42:       Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, CVar(CLng(var_D4)))
  loc_1709F4A:       var_E4 = var_B8.Text
  loc_1709F52:       var_124 = CVar(var_BC) 'String
  loc_1709F5A:       Set var_138 = Me.FPGrid
  loc_1709F60:       LateIdCallSt
  loc_1709F81:     Else
  loc_1709F88:       If (var_1C0 = CLng(5)) Then
  loc_1709FA2:         If (Me.RecordCount > 0) Then
  loc_1709FB2:           Set var_A0 = Me.TxtGrid
  loc_1709FB8:           Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, var_138)
  loc_1709FC0:           var_124 = var_B8.Text
  loc_1709FD7:           If (var_BC <> vbNullString) Then
  loc_1709FE0:             Me.MoveFirst
  loc_1709FF3:             var_E4 = "CardNo="
  loc_170A002:             Set var_A0 = Me.TxtGrid
  loc_170A008:             Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_E4, 0)
  loc_170A017:             Proc_6_17_EAA2B0(var_D4, CVar(var_B8), 1)
  loc_170A02D:             Me.Find CStr(var_F4 & var_D4), var_E4, var_E4
  loc_170A041:           End If
  loc_170A041:         End If
  loc_170A08F:         Set var_A0 = Me.TxtGrid
  loc_170A095:         Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8)
  loc_170A09D:         var_BC = var_B8.Text
  loc_170A0B5:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_BC = vbNullString)) Then
  loc_170A0BD:           Proc_265_118_170B4C0 = 0
  loc_170A0C6:         Else
  loc_170A0D9:           var_F4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A111:           var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PMemCode")), CVar(CLng(3)))) 'String
  loc_170A119:           Set var_C4 = Me.FPGrid
  loc_170A11F:           LateIdCallSt
  loc_170A184:           var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CardNo")), CVar(CLng(5)), CVar(CLng(Me.FPGrid.Row)))) 'String
  loc_170A192:           LateIdCallSt
  loc_170A1F7:           var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ConPrefix")), CVar(CLng(6)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid)) 'String
  loc_170A205:           LateIdCallSt
  loc_170A26A:           var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")), CVar(CLng(7)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170A278:           LateIdCallSt
  loc_170A2DD:           var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Gender")), CVar(CLng(8)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170A2EB:           LateIdCallSt
  loc_170A350:           var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Mobile")), CVar(CLng(9)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170A35E:           LateIdCallSt
  loc_170A3C3:           var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Email")), CVar(CLng(&HA)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170A3D1:           LateIdCallSt
  loc_170A436:           var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Desig")), CVar(CLng(&HB)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170A444:           LateIdCallSt
  loc_170A4A9:           var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PicPath")), CVar(CLng(&HC)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170A4B7:           LateIdCallSt
  loc_170A50B:           var_B8 = Me.Fields.Item("SigPath")
  loc_170A51C:           var_124 = CVar(Proc_6_38_E68A98(CVar(var_B8), CVar(CLng(&HD)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170A524:           Set var_C4 = Me.FPGrid
  loc_170A52A:           LateIdCallSt
  loc_170A544:         End If
  loc_170A547:       Else
  loc_170A54E:         If (var_1C0 = CLng(7)) Then
  loc_170A59F:           Set var_A0 = Me.TxtGrid
  loc_170A5A5:           Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_C4)
  loc_170A5C5:           If (var_B8.Text Or (var_BC = vbNullString)) Then
  loc_170A5DB:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A5E3:             var_104 = CVar(CLng(3)) 'Long
  loc_170A5E8:             var_134 = vbNullString
  loc_170A5F2:             Set var_B8 = Me.FPGrid
  loc_170A5F8:             LateIdCallSt
  loc_170A61D:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A625:             var_104 = CVar(CLng(5)) 'Long
  loc_170A62A:             var_134 = vbNullString
  loc_170A634:             Set var_B8 = Me.FPGrid
  loc_170A63A:             LateIdCallSt
  loc_170A65F:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A667:             var_104 = CVar(CLng(6)) 'Long
  loc_170A66C:             var_134 = vbNullString
  loc_170A676:             Set var_B8 = Me.FPGrid
  loc_170A67C:             LateIdCallSt
  loc_170A6A1:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A6A9:             var_104 = CVar(CLng(7)) 'Long
  loc_170A6AE:             var_134 = vbNullString
  loc_170A6B8:             Set var_B8 = Me.FPGrid
  loc_170A6BE:             LateIdCallSt
  loc_170A6E3:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A6EB:             var_104 = CVar(CLng(8)) 'Long
  loc_170A6F0:             var_134 = vbNullString
  loc_170A6FA:             Set var_B8 = Me.FPGrid
  loc_170A700:             LateIdCallSt
  loc_170A725:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A72D:             var_104 = CVar(CLng(9)) 'Long
  loc_170A732:             var_134 = vbNullString
  loc_170A73C:             Set var_B8 = Me.FPGrid
  loc_170A742:             LateIdCallSt
  loc_170A767:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A76F:             var_104 = CVar(CLng(&HA)) 'Long
  loc_170A774:             var_134 = vbNullString
  loc_170A77E:             Set var_B8 = Me.FPGrid
  loc_170A784:             LateIdCallSt
  loc_170A7A9:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A7B1:             var_104 = CVar(CLng(&HB)) 'Long
  loc_170A7B6:             var_134 = vbNullString
  loc_170A7C0:             Set var_B8 = Me.FPGrid
  loc_170A7C6:             LateIdCallSt
  loc_170A7EB:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A7F3:             var_104 = CVar(CLng(&HC)) 'Long
  loc_170A7F8:             var_134 = vbNullString
  loc_170A802:             Set var_B8 = Me.FPGrid
  loc_170A808:             LateIdCallSt
  loc_170A82D:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170A835:             var_104 = CVar(CLng(&HD)) 'Long
  loc_170A83A:             var_134 = vbNullString
  loc_170A844:             Set var_B8 = Me.FPGrid
  loc_170A84A:             LateIdCallSt
  loc_170A85F:           Else
  loc_170A882:             var_E4 = "PMemCode"
  loc_170A899:             var_B8 = Me.Fields.Item(var_E4)
  loc_170A8AA:             var_124 = CVar(Proc_6_38_E68A98(CVar(var_B8), CVar(CLng(3)), CVar(CLng(Me.FPGrid.Row)), var_B8, var_134, var_104, var_E4)) 'String
  loc_170A8B8:             LateIdCallSt
  loc_170A90C:             var_B8 = Me.Fields.Item("CardNo")
  loc_170A91D:             var_124 = CVar(Proc_6_38_E68A98(CVar(var_B8), CVar(CLng(5)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124, var_B8)) 'String
  loc_170A92B:             LateIdCallSt
  loc_170A990:             var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ConPrefix")), CVar(CLng(6)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170A99E:             LateIdCallSt
  loc_170AA03:             var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")), CVar(CLng(7)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170AA11:             LateIdCallSt
  loc_170AA76:             var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Gender")), CVar(CLng(8)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170AA84:             LateIdCallSt
  loc_170AAE9:             var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Mobile")), CVar(CLng(9)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170AAF7:             LateIdCallSt
  loc_170AB5C:             var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Email")), CVar(CLng(&HA)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170AB6A:             LateIdCallSt
  loc_170ABCF:             var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Desig")), CVar(CLng(&HB)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170ABDD:             LateIdCallSt
  loc_170AC42:             var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PicPath")), CVar(CLng(&HC)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170AC50:             LateIdCallSt
  loc_170ACB5:             var_124 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SigPath")), CVar(CLng(&HD)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170ACBD:             Set var_C4 = Me.FPGrid
  loc_170ACC3:             LateIdCallSt
  loc_170ACDD:           End If
  loc_170ACF0:           var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170ACF8:           var_104 = CVar(CLng(3)) 'Long
  loc_170AD01:           Set var_B8 = Me.FPGrid
  loc_170AD12:           var_124 = CVar(CStr(var_B8.TextMatrix))) 'String
  loc_170AD20:           var_134 = vbNullString
  loc_170AD3A:           If (Trim(var_124) = var_134) Then
  loc_170AD42:             Proc_265_118_170B4C0 = 0
  loc_170AD48:           End If
  loc_170AD4B:         Else
  loc_170AD52:           If (var_1C0 = CLng(&HE)) Then
  loc_170AD5F:             Set var_A0 = Me.TxtGrid
  loc_170AD65:             Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_104, var_E4, var_C4, var_124)
  loc_170AD8E:             If (Trim(CVar(var_B8)) = vbNullString) Then
  loc_170AD9E:               Set var_A0 = Me.TxtGrid
  loc_170ADA4:               Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, "0", var_134)
  loc_170ADAC:               var_B8.Text = var_104
  loc_170ADB8:             End If
  loc_170ADCB:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170ADF5:             Set var_A0 = Me.TxtGrid
  loc_170ADFB:             Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, CVar(CLng(Me.FPGrid.Col)))
  loc_170AE03:             var_E4 = var_B8.Text
  loc_170AE0B:             var_124 = CVar(var_BC) 'String
  loc_170AE13:             Set var_138 = Me.FPGrid
  loc_170AE19:             LateIdCallSt
  loc_170AE3A:           Else
  loc_170AE77:             Set var_A0 = Me.TxtGrid
  loc_170AE7D:             Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, CVar(CLng(Me.FPGrid.Col)), CVar(CLng(Me.FPGrid.Row)))
  loc_170AE85:             var_138 = var_B8.Text
  loc_170AE8D:             var_124 = CVar(var_BC) 'String
  loc_170AE95:             Set var_138 = Me.FPGrid
  loc_170AE9B:             LateIdCallSt
  loc_170AEB9:           End If
  loc_170AEB9:         End If
  loc_170AEB9:       End If
  loc_170AEB9:     End If
  loc_170AEBC:   Else
  loc_170AEC2:     If (var_9A = 2) Then
  loc_170AED8:       var_1DC = CLng(Me.FGrid1.Col)
  loc_170AEE8:       If (var_1DC = CLng(1)) Then
  loc_170AF0B:         var_1C6 = Me.EOF
  loc_170AF39:         Set var_A0 = Me.TxtGrid
  loc_170AF3F:         Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((var_1C6 = &HFF) Or (Me.BOF = &HFF))), var_1DC, var_138)
  loc_170AF5F:         If (var_B8.Text Or (var_BC = vbNullString)) Then
  loc_170AF75:           var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170AF7D:           var_104 = CVar(CLng(1)) 'Long
  loc_170AF82:           var_134 = vbNullString
  loc_170AF8C:           Set var_B8 = Me.FGrid1
  loc_170AF92:           LateIdCallSt
  loc_170AFB7:           var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170AFBF:           var_104 = CVar(CLng(6)) 'Long
  loc_170AFC4:           var_134 = vbNullString
  loc_170AFCE:           Set var_B8 = Me.FGrid1
  loc_170AFD4:           LateIdCallSt
  loc_170AFE9:         Else
  loc_170AFEC:           Call Proc_265_119_FC1C40(var_1C6, var_B8, var_134, var_104, var_E4, var_B8)
  loc_170AFF7:           If (var_1C6 = 0) Then
  loc_170AFFF:             Proc_265_118_170B4C0 = 0
  loc_170B005:           End If
  loc_170B018:           var_F4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170B020:           var_114 = CVar(CLng(1)) 'Long
  loc_170B053:           var_124 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_170B05B:           Set var_C4 = Me.FGrid1
  loc_170B061:           LateIdCallSt
  loc_170B090:           var_F4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170B098:           var_114 = CVar(CLng(6)) 'Long
  loc_170B0CB:           var_124 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_170B0D3:           Set var_C4 = Me.FGrid1
  loc_170B0D9:           LateIdCallSt
  loc_170B0F5:         End If
  loc_170B10E:         var_E4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_170B116:         var_104 = CVar(CLng(6)) 'Long
  loc_170B11F:         Set var_B8 = Me.FGrid1
  loc_170B130:         var_BC = CStr(var_B8.TextMatrix))
  loc_170B149:         If (var_BC <> vbNullString) Then
  loc_170B14C:           var_E4 = vbNullString
  loc_170B156:           Set var_A0 = Me.FGrid1
  loc_170B167:         End If
  loc_170B16A:       Else
  loc_170B171:         If (var_1DC = CLng(2)) Then
  loc_170B17E:           Set var_A0 = Me.TxtGrid
  loc_170B184:           Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, FGrid1.DispID_10000, var_E4, var_104, var_E4, var_C4)
  loc_170B1A3:           Set var_C0 = Me.TxtGrid
  loc_170B1A9:           Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_C4, var_BC, Not(IsNumeric(CVar(var_B8))), var_124, var_114)
  loc_170B1B1:           var_F4 = var_C4.Text
  loc_170B1D3:           If (var_C4 Or (CDbl(Val(var_BC)) <= CDbl(0))) Then
  loc_170B1DA:             var_BC = CStr(0)
  loc_170B1E7:             Set var_A0 = Me.TxtGrid
  loc_170B1ED:             Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC)
  loc_170B1F5:             var_B8.Text = var_124
  loc_170B209:             Proc_265_118_170B4C0 = 0
  loc_170B20F:           End If
  loc_170B21C:           Set var_A0 = Me.TxtGrid
  loc_170B222:           Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC)
  loc_170B22A:           var_114 = var_B8.Text
  loc_170B242:           var_F4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170B24B:           Set var_C4 = Me.FGrid1
  loc_170B25A:           var_114 = CVar(CLng(var_C4.Col)) 'Long
  loc_170B286:           var_168 = CVar(CStr(Format(CVar(var_BC), "0.00"))) 'String
  loc_170B28E:           Set var_138 = Me.FGrid1
  loc_170B294:           LateIdCallSt
  loc_170B2BB:         Else
  loc_170B2C2:           If Not (var_1DC = CLng(3)) Then
  loc_170B2CC:             If (var_1DC = CLng(5)) Then
  loc_170B2CF:             End If
  loc_170B2DC:             Set var_A0 = Me.TxtGrid
  loc_170B2E2:             Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, var_138, var_168)
  loc_170B2EA:             1 = var_B8.Text
  loc_170B301:             If (var_BC <> vbNullString) Then
  loc_170B31C:               Set var_B8 = Me.ListView4.SelectedItem
  loc_170B322:               var_BC = var_B8.Text
  loc_170B334:               Set var_C0 = Me.TxtGrid
  loc_170B33A:               Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_C4, var_BC, 1)
  loc_170B342:               var_C4.Text = var_114
  loc_170B358:             End If
  loc_170B36B:             var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170B395:             Set var_A0 = Me.TxtGrid
  loc_170B39B:             Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_BC, CVar(CLng(Me.FGrid1.Col)))
  loc_170B3A3:             var_E4 = var_B8.Text
  loc_170B3AB:             var_124 = CVar(var_BC) 'String
  loc_170B3B3:             Set var_138 = Me.FGrid1
  loc_170B3B9:             LateIdCallSt
  loc_170B3DA:           Else
  loc_170B3E1:             If (var_1DC = CLng(4)) Then
  loc_170B3EE:               Set var_A0 = Me.TxtGrid
  loc_170B3F4:               Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, var_138)
  loc_170B414:               Set var_C4 = Me.TxtGrid
  loc_170B41A:               Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_138, Proc_6_33_1512840(var_B8, var_124))
  loc_170B422:               var_138.Text = var_F4
  loc_170B46F:               Set var_A0 = Me.TxtGrid
  loc_170B475:               Call 0.Method_Proc_265_118_170B4C00 (arg_C, var_B8, CVar(CLng(Me.FGrid1.Col)))
  loc_170B488:               var_124 = CVar(Proc_6_33_1512840(var_B8, CVar(CLng(Me.FGrid1.Row)))) 'String
  loc_170B490:               Set var_16C = Me.FGrid1
  loc_170B496:               LateIdCallSt
  loc_170B4B4:             End If
  loc_170B4B4:           End If
  loc_170B4B4:         End If
  loc_170B4B4:       End If
  loc_170B4B4:     End If
  loc_170B4B4:   End If
  loc_170B4B4: End If
  loc_170B4B9: Proc_265_118_170B4C0 = &HFF
End Sub

Public Sub Proc_265_119_FC1C40
  'Data Table: 5ADD9C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC1AC3: If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_FC1AC8:   var_92 = 1 'Byte
  loc_FC1ACC: End If
  loc_FC1AD5: Set var_98 = Me.TxtGrid
  loc_FC1ADB: Call 0.Method_Proc_265_119_FC1C400 (2, var_B0)
  loc_FC1AFE: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC1B32: For var_D4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC1B56:   If (CLng(var_88) = CLng(Me.FGrid1.Row)) Then
  loc_FC1B59:     GoTo loc_FC1C2B
  loc_FC1B5C:   End If
  loc_FC1B60:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC1B8A:   var_D0 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_FC1B94:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC1BC9:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC1BED:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC1C06:     Set var_98 = Me.TxtGrid
  loc_FC1C0C:     Call 0.Method_Proc_265_119_FC1C400 (2, var_B0, CVar(CLng(var_92)))
  loc_FC1C14:     var_B0.SetFocus
  loc_FC1C25:     Proc_265_119_FC1C40 = 0
  loc_FC1C2B:     ' Referenced from: FC1B59
  loc_FC1C2B:   End If
  loc_FC1C2E: Next var_D4 'Integer
  loc_FC1C38: Proc_265_119_FC1C40 = &HFF
End Sub

Public Sub Proc_265_120_DFD9D8
  'Data Table: 5ADD9C
  Dim Proc_265_120_DFD9D8FF As String
  loc_DFD9D4: Exit Sub
  loc_DFD9D5: Proc_265_120_DFD9D8FF = 
End Sub

Public Sub Proc_265_121_132A0A8
  'Data Table: 5ADD9C
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_1B4 As Variant
  Dim var_120 As Variant
  Dim var_164 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_224 As Variant
  loc_1329944: Set var_88 = Me.FAGrid
  loc_1329953: var_A8 = CVar(CLng(var_88.Row)) 'Long
  loc_132997D: var_1B4 = IsNull(CVar(CStr(Me.FAGrid.TextMatrix))))
  loc_13299AB: var_164 = Me.FAGrid.TextMatrix)
  loc_13299F2: If CBool(CVar(CLng(&H1B)) Or (Trim(CVar(CStr(var_164))) = vbNullString)) Then
  loc_1329A15:   Me.var_164.LoadPicture var_A8, var_B8, CVar(CLng(&H1B)), var_D8, CVar(CLng(Me.FAGrid.Row))
  loc_1329A2A:   Me.ImgFamilyMemPhoto.Picture = var_88
  loc_1329A45:   Me.ImgFamilyMemPhoto.Tag = vbNullString
  loc_1329A50: Else
  loc_1329A67:   var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329A6F:   var_C8 = CVar(CLng(&H1B)) 'Long
  loc_1329AA7:   var_130 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329AAF:   var_150 = CVar(CLng(&H1B)) 'Long
  loc_1329AF2:   var_120 = "DAT"
  loc_1329B24:   var_224 = (Ucase(Right(Trim(CVar(CStr(Me.FAGrid.TextMatrix)))), 3)) = var_120) Or (Ucase(Right(Trim(CVar(CStr(Me.FAGrid.TextMatrix)))), 3)) = "AVI")
  loc_1329B50:   If CBool(var_224) Then
  loc_1329B61:     Me.ImgFamilyMemPhoto.Visible = False
  loc_1329B6C:   Else
  loc_1329B83:     var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329B8B:     var_C8 = CVar(CLng(&H1B)) 'Long
  loc_1329BB2:     Me.ImgFamilyMemPhoto.Tag = CStr(Me.FAGrid.TextMatrix))
  loc_1329BDF:     var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329BE7:     var_C8 = CVar(CLng(&H1B)) 'Long
  loc_1329BF0:     Set var_DC = Me.FAGrid
  loc_1329BF6:     var_EC = var_DC.TextMatrix)
  loc_1329C15:     Call 0.Method_Proc_265_121_132A0A84 (CStr(var_EC), var_22A, var_EC, var_C8, var_A8, var_C8, var_A8, var_150)
  loc_1329C2E:     If var_22A Then
  loc_1329C33:       On Error Resume Next
  loc_1329C6A:       Me.Global.LoadPicture CVar(Me.ImgFamilyMemPhoto.Tag), var_A8, var_B8, var_C8, var_D8
  loc_1329C7F:       Me.ImgFamilyMemPhoto.Picture = var_DC
  loc_1329C96:       Set var_88 = Me.ImgFamilyMemPhoto
  loc_1329C9C:       var_88.Refresh
  loc_1329CA7:     Else
  loc_1329CC9:       Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_120
  loc_1329CDE:       Me.ImgFamilyMemPhoto.Picture = var_88
  loc_1329CEA:     End If
  loc_1329CEC:   End If
  loc_1329CEE: End If
  loc_1329CF6: Set var_88 = Me.FAGrid
  loc_1329D05: var_A8 = CVar(CLng(var_88.Row)) 'Long
  loc_1329D2F: var_1B4 = IsNull(CVar(CStr(Me.FAGrid.TextMatrix))))
  loc_1329D5D: var_164 = Me.FAGrid.TextMatrix)
  loc_1329DA4: If CBool(CVar(CLng(&H1C)) Or (Trim(CVar(CStr(var_164))) = vbNullString)) Then
  loc_1329DC7:   Me.var_164.LoadPicture var_A8, var_B8, CVar(CLng(&H1C)), var_D8, CVar(CLng(Me.FAGrid.Row))
  loc_1329DDC:   Me.ImgFamilyMemSign.Picture = var_88
  loc_1329DF7:   Me.ImgFamilyMemSign.Tag = vbNullString
  loc_1329E02: Else
  loc_1329E19:   var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329E21:   var_C8 = CVar(CLng(&H1C)) 'Long
  loc_1329E59:   var_130 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329E61:   var_150 = CVar(CLng(&H1C)) 'Long
  loc_1329EA4:   var_120 = "DAT"
  loc_1329ED6:   var_224 = (Ucase(Right(Trim(CVar(CStr(Me.FAGrid.TextMatrix)))), 3)) = var_120) Or (Ucase(Right(Trim(CVar(CStr(Me.FAGrid.TextMatrix)))), 3)) = "AVI")
  loc_1329F02:   If CBool(var_224) Then
  loc_1329F13:     Me.ImgFamilyMemSign.Visible = False
  loc_1329F1E:   Else
  loc_1329F35:     var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329F3D:     var_C8 = CVar(CLng(&H1C)) 'Long
  loc_1329F64:     Me.ImgFamilyMemSign.Tag = CStr(Me.FAGrid.TextMatrix))
  loc_1329F91:     var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329F99:     var_C8 = CVar(CLng(&H1C)) 'Long
  loc_1329FA2:     Set var_DC = Me.FAGrid
  loc_1329FA8:     var_EC = var_DC.TextMatrix)
  loc_1329FC7:     Call 0.Method_Proc_265_121_132A0A84 (CStr(var_EC), var_22A, var_EC, var_C8, var_A8, var_C8, var_A8, var_150)
  loc_1329FE0:     If var_22A Then
  loc_1329FE5:       On Error Resume Next
  loc_132A01C:       Me.Global.LoadPicture CVar(Me.ImgFamilyMemSign.Tag), var_A8, var_B8, var_C8, var_D8
  loc_132A031:       Me.ImgFamilyMemSign.Picture = var_DC
  loc_132A048:       Set var_88 = Me.ImgFamilyMemSign
  loc_132A04E:       var_88.Refresh
  loc_132A059:     Else
  loc_132A07B:       Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_120
  loc_132A090:       Me.ImgFamilyMemSign.Picture = var_88
  loc_132A09C:     End If
  loc_132A09E:   End If
  loc_132A0A0: End If
  loc_132A0A4: Exit Sub
End Sub

Public Sub Proc_265_122_13298B4
  'Data Table: 5ADD9C
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_1B4 As Variant
  Dim var_120 As Variant
  Dim var_164 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_224 As Variant
  loc_1329150: Set var_88 = Me.FPGrid
  loc_132915F: var_A8 = CVar(CLng(var_88.Row)) 'Long
  loc_1329189: var_1B4 = IsNull(CVar(CStr(Me.FPGrid.TextMatrix))))
  loc_13291B7: var_164 = Me.FPGrid.TextMatrix)
  loc_13291FE: If CBool(CVar(CLng(&HC)) Or (Trim(CVar(CStr(var_164))) = vbNullString)) Then
  loc_1329221:   Me.var_164.LoadPicture var_A8, var_B8, CVar(CLng(&HC)), var_D8, CVar(CLng(Me.FPGrid.Row))
  loc_1329236:   Me.ImgPropMemPhoto.Picture = var_88
  loc_1329251:   Me.ImgPropMemPhoto.Tag = vbNullString
  loc_132925C: Else
  loc_1329273:   var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132927B:   var_C8 = CVar(CLng(&HC)) 'Long
  loc_13292B3:   var_130 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_13292BB:   var_150 = CVar(CLng(&HC)) 'Long
  loc_13292FE:   var_120 = "DAT"
  loc_1329330:   var_224 = (Ucase(Right(Trim(CVar(CStr(Me.FPGrid.TextMatrix)))), 3)) = var_120) Or (Ucase(Right(Trim(CVar(CStr(Me.FPGrid.TextMatrix)))), 3)) = "AVI")
  loc_132935C:   If CBool(var_224) Then
  loc_132936D:     Me.ImgPropMemPhoto.Visible = False
  loc_1329378:   Else
  loc_132938F:     var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_1329397:     var_C8 = CVar(CLng(&HC)) 'Long
  loc_13293BE:     Me.ImgPropMemPhoto.Tag = CStr(Me.FPGrid.TextMatrix))
  loc_13293EB:     var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_13293F3:     var_C8 = CVar(CLng(&HC)) 'Long
  loc_13293FC:     Set var_DC = Me.FPGrid
  loc_1329402:     var_EC = var_DC.TextMatrix)
  loc_1329421:     Call 0.Method_Proc_265_122_13298B44 (CStr(var_EC), var_22A, var_EC, var_C8, var_A8, var_C8, var_A8, var_150)
  loc_132943A:     If var_22A Then
  loc_132943F:       On Error Resume Next
  loc_1329476:       Me.Global.LoadPicture CVar(Me.ImgPropMemPhoto.Tag), var_A8, var_B8, var_C8, var_D8
  loc_132948B:       Me.ImgPropMemPhoto.Picture = var_DC
  loc_13294A2:       Set var_88 = Me.ImgPropMemPhoto
  loc_13294A8:       var_88.Refresh
  loc_13294B3:     Else
  loc_13294D5:       Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_120
  loc_13294EA:       Me.ImgPropMemPhoto.Picture = var_88
  loc_13294F6:     End If
  loc_13294F8:   End If
  loc_13294FA: End If
  loc_1329502: Set var_88 = Me.FPGrid
  loc_1329511: var_A8 = CVar(CLng(var_88.Row)) 'Long
  loc_132953B: var_1B4 = IsNull(CVar(CStr(Me.FPGrid.TextMatrix))))
  loc_1329569: var_164 = Me.FPGrid.TextMatrix)
  loc_13295B0: If CBool(CVar(CLng(&HD)) Or (Trim(CVar(CStr(var_164))) = vbNullString)) Then
  loc_13295D3:   Me.var_164.LoadPicture var_A8, var_B8, CVar(CLng(&HD)), var_D8, CVar(CLng(Me.FPGrid.Row))
  loc_13295E8:   Me.ImgPropMemSign.Picture = var_88
  loc_1329603:   Me.ImgPropMemSign.Tag = vbNullString
  loc_132960E: Else
  loc_1329625:   var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132962D:   var_C8 = CVar(CLng(&HD)) 'Long
  loc_1329665:   var_130 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132966D:   var_150 = CVar(CLng(&HD)) 'Long
  loc_13296B0:   var_120 = "DAT"
  loc_13296E2:   var_224 = (Ucase(Right(Trim(CVar(CStr(Me.FPGrid.TextMatrix)))), 3)) = var_120) Or (Ucase(Right(Trim(CVar(CStr(Me.FPGrid.TextMatrix)))), 3)) = "AVI")
  loc_132970E:   If CBool(var_224) Then
  loc_132971F:     Me.ImgPropMemSign.Visible = False
  loc_132972A:   Else
  loc_1329741:     var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_1329749:     var_C8 = CVar(CLng(&HD)) 'Long
  loc_1329770:     Me.ImgPropMemSign.Tag = CStr(Me.FPGrid.TextMatrix))
  loc_132979D:     var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_13297A5:     var_C8 = CVar(CLng(&HD)) 'Long
  loc_13297AE:     Set var_DC = Me.FPGrid
  loc_13297B4:     var_EC = var_DC.TextMatrix)
  loc_13297D3:     Call 0.Method_Proc_265_122_13298B44 (CStr(var_EC), var_22A, var_EC, var_C8, var_A8, var_C8, var_A8, var_150)
  loc_13297EC:     If var_22A Then
  loc_13297F1:       On Error Resume Next
  loc_1329828:       Me.Global.LoadPicture CVar(Me.ImgPropMemSign.Tag), var_A8, var_B8, var_C8, var_D8
  loc_132983D:       Me.ImgPropMemSign.Picture = var_DC
  loc_1329854:       Set var_88 = Me.ImgPropMemSign
  loc_132985A:       var_88.Refresh
  loc_1329865:     Else
  loc_1329887:       Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_120
  loc_132989C:       Me.ImgPropMemSign.Picture = var_88
  loc_13298A8:     End If
  loc_13298AA:   End If
  loc_13298AC: End If
  loc_13298B0: Exit Sub
End Sub
