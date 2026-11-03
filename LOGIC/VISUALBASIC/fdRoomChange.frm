VERSION 5.00
Begin VB.Form fdRoomChange
  Caption = "Room Change"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdRoomChange.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 1215
  ClientWidth = 12270
  ClientHeight = 8595
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin DataGrid DGPackage
    Left = 3180
    Top = 1005
    Width = 4230
    Height = 1920
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin Frame FrPackage
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1005
    Top = 570
    Width = 10125
    Height = 4980
    Visible = 0   'False
    TabIndex = 50
    Appearance = 0 'Flat
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4890
      Top = 435
      Width = 900
      Height = 270
      TabIndex = 53
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 42
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 6000
      Top = 435
      Width = 900
      Height = 270
      TabIndex = 54
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 45
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 6000
      Top = 720
      Width = 900
      Height = 270
      TabIndex = 57
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 44
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4890
      Top = 720
      Width = 900
      Height = 270
      TabIndex = 56
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 47
      BackColor = &HFFFFFF&
      Left = 8100
      Top = 150
      Width = 1605
      Height = 270
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 63
      BorderStyle = 0 'None
      MaxLength = 30
      Locked = -1  'True
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
      Index = 48
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 7335
      Top = 3825
      Width = 1290
      Height = 270
      TabIndex = 59
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      Locked = -1  'True
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
      Index = 46
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2175
      Top = 1005
      Width = 1035
      Height = 270
      TabIndex = 58
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 43
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2175
      Top = 720
      Width = 345
      Height = 270
      Text = "Yes"
      TabIndex = 55
      BorderStyle = 0 'None
      Alignment = 2 'Center
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
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HE0E0E0&
      ForeColor = &H80000012&
      Left = 60
      Top = 1650
      Width = 975
      Height = 240
      Visible = 0   'False
      TabIndex = 62
      BorderStyle = 0 'None
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
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2175
      Top = 150
      Width = 4230
      Height = 270
      TabIndex = 51
      BorderStyle = 0 'None
      MaxLength = 30
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdOk
      Caption = "&Ok"
      Left = 3615
      Top = 4125
      Width = 1740
      Height = 465
      TabIndex = 60
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2175
      Top = 435
      Width = 1080
      Height = 270
      TabIndex = 52
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid FGrid3
      Left = 45
      Top = 1410
      Width = 9510
      Height = 2415
      TabIndex = 61
    End
    Begin Label Lbl
      Caption = "Extra Person"
      Index = 69
      ForeColor = &HC00000&
      Left = 3375
      Top = 435
      Width = 1110
      Height = 225
      TabIndex = 77
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
      Caption = "@"
      Index = 68
      ForeColor = &HC00000&
      Left = 5820
      Top = 450
      Width = 180
      Height = 225
      TabIndex = 76
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
    Begin Label LblDiscAppOn
      Caption = "-"
      ForeColor = &H0&
      Left = 7005
      Top = 720
      Width = 75
      Height = 240
      TabIndex = 75
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
      Caption = "%"
      Index = 67
      ForeColor = &HC00000&
      Left = 5790
      Top = 735
      Width = 135
      Height = 225
      TabIndex = 74
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
      Caption = "Package Discount "
      Index = 66
      ForeColor = &HC00000&
      Left = 3345
      Top = 720
      Width = 1590
      Height = 225
      TabIndex = 73
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
    Begin Label lblLTDet
      ForeColor = &HC0&
      Left = 75
      Top = 3780
      Width = 5835
      Height = 240
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
      Caption = " Calculation Mode"
      Index = 65
      ForeColor = &H0&
      Left = 6540
      Top = 150
      Width = 1515
      Height = 240
      Visible = 0   'False
      TabIndex = 71
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
      Caption = "Total Package Amount"
      Index = 64
      ForeColor = &HC00000&
      Left = 5295
      Top = 3840
      Width = 1920
      Height = 225
      TabIndex = 70
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
      Caption = "-"
      Index = 63
      ForeColor = &H0&
      Left = 3300
      Top = 1035
      Width = 90
      Height = 240
      TabIndex = 69
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
      Caption = "Room Rate"
      Index = 62
      ForeColor = &HC00000&
      Left = 60
      Top = 1005
      Width = 930
      Height = 225
      TabIndex = 68
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
      Caption = "&Yes/&No"
      Index = 61
      ForeColor = &HC00000&
      Left = 2550
      Top = 720
      Width = 585
      Height = 225
      TabIndex = 67
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
      Caption = "Inc. in Room Rate"
      Index = 60
      ForeColor = &HC00000&
      Left = 60
      Top = 720
      Width = 1470
      Height = 225
      TabIndex = 66
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
      Caption = "Plan/Package"
      Index = 44
      ForeColor = &HC00000&
      Left = 60
      Top = 150
      Width = 1170
      Height = 225
      TabIndex = 65
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
      Caption = "Plan/Package Amount"
      Index = 35
      ForeColor = &HC00000&
      Left = 60
      Top = 435
      Width = 1875
      Height = 225
      TabIndex = 64
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
  Begin TextBox Txt
    Index = 50
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11205
    Top = 4125
    Width = 1125
    Height = 285
    Visible = 0   'False
    TabIndex = 89
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8130
    Width = 12270
    Height = 465
    Visible = 0   'False
    TabIndex = 88
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Left = 14160
    Top = 6840
    Width = 1230
    Height = 1245
    Visible = 0   'False
    TabIndex = 84
  End
  Begin TextBox Txt
    Index = 30
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 6015
    Width = 4350
    Height = 285
    TabIndex = 41
    BorderStyle = 0 'None
    MaxLength = 30
    Locked = -1  'True
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
    ForeColor = &HC00000&
    Left = 7770
    Top = 5385
    Width = 1125
    Height = 285
    TabIndex = 37
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
    Index = 49
    BackColor = &HFFFFFF&
    Left = 13935
    Top = 2370
    Width = 480
    Height = 285
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 0 'None
    MaxLength = 2
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 15765
    Top = 4095
    Width = 525
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 16320
    Top = 4095
    Width = 510
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 14010
    Top = 4095
    Width = 1725
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 22
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 4125
    Width = 4350
    Height = 285
    TabIndex = 25
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 4755
    Width = 1140
    Height = 285
    TabIndex = 27
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8355
    Top = 4755
    Width = 540
    Height = 285
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 2
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
    Left = 7755
    Top = 4755
    Width = 570
    Height = 285
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 2
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
    Left = 4545
    Top = 5070
    Width = 1140
    Height = 285
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 1
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
    ForeColor = &HC00000&
    Left = 7755
    Top = 5070
    Width = 1140
    Height = 285
    TabIndex = 34
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
    Picture = "fdRoomChange.frx":442
    Left = 14145
    Top = 3315
    Width = 300
    Height = 285
    Visible = 0   'False
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 4440
    Width = 4350
    Height = 285
    TabIndex = 26
    BorderStyle = 0 'None
    MaxLength = 100
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
  Begin PictureBox Picture4
    Picture = "fdRoomChange.frx":790
    Left = 18300
    Top = 4080
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 20
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 38
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 5700
    Width = 510
    Height = 285
    Text = "No"
    TabIndex = 38
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
    Index = 39
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 5385
    Width = 1140
    Height = 285
    TabIndex = 36
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
    Index = 41
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7770
    Top = 5700
    Width = 540
    Height = 285
    Text = "No"
    TabIndex = 40
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 13770
    Top = 1725
    Width = 480
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture2
    Picture = "fdRoomChange.frx":ADE
    Left = 15060
    Top = 330
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 8
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame Frmrate
    BackColor = &HFF0000&
    Left = 14190
    Top = 180
    Width = 4830
    Height = 795
    Visible = 0   'False
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 22
      BackColor = &HFFFFFF&
      Left = 1440
      Top = 120
      Width = 3285
      Height = 270
      TabIndex = 0
      BorderStyle = 0 'None
      MaxLength = 30
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
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1440
      Top = 420
      Width = 3285
      Height = 270
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 30
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
    Begin Label Lbl
      Caption = "Remarks"
      Index = 47
      ForeColor = &HFFFFFF&
      Left = 120
      Top = 45
      Width = 750
      Height = 240
      TabIndex = 6
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
      Caption = "Authorization"
      Index = 48
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 405
      Width = 1125
      Height = 240
      TabIndex = 5
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
    Begin Label Label4
      Caption = "*"
      ForeColor = &HFF&
      Left = 930
      Top = 105
      Width = 120
      Height = 210
      TabIndex = 4
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
    Begin Label Label5
      Caption = "*"
      ForeColor = &HFF&
      Left = 1215
      Top = 405
      Width = 120
      Height = 210
      TabIndex = 3
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
  End
  Begin DataGrid DGPlanPkg
    Left = 165
    Top = 5370
    Width = 3285
    Height = 1650
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGNewRoomNo
    Left = 14805
    Top = 1815
    Width = 2805
    Height = 1875
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin DataGrid DGRoomNo
    Left = 14700
    Top = 1410
    Width = 2685
    Height = 1695
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
End

Attribute VB_Name = "fdRoomChange"

Private global_110 As Integer
Private MasterFormExit As Integer
Private global_108 As Integer
Private global_68 As Integer
Private global_104 As Long

Private Sub Txt_GotFocus(Index As Integer) '14BF378
  'Data Table: 52DB2C
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_B4 As String
  Dim var_D8 As Variant
  Dim var_C4 As Variant
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_114 As String
  Dim unk_52DB4B As Connection15
  Dim var_154 As Double
  Dim var_A0 As String
  loc_14BE666: Set var_88 = Me.Txt
  loc_14BE66C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_14BE67A: Proc_6_74_E226B0(var_8C)
  loc_14BE689: var_92 = Index
  loc_14BE694: If (var_92 = CInt(0)) Then
  loc_14BE6AE:   If (Me.RecordCount > 0) Then
  loc_14BE6BC:     Set var_8C = var_8C(var_92)
  loc_14BE6D4:     Proc_6_137_1193554(Me.DGRoomNo, global_88)
  loc_14BE6E2:   End If
  loc_14BE730:   Set var_88 = Me.Txt
  loc_14BE736:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14BE73E:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14BE764:   If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_14BE767:     Exit Sub
  loc_14BE768:   End If
  loc_14BE775:   Set var_88 = Me.Txt
  loc_14BE77B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BE783:   var_A0 = var_8C.Text
  loc_14BE795:   var_C4 = "RoomNo"
  loc_14BE7D0:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_14BE7D9:     Me.MoveFirst
  loc_14BE7FC:     Set var_88 = Me.Txt
  loc_14BE802:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_14BE80A:     0 = var_8C.Text
  loc_14BE823:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_14BE838:   End If
  loc_14BE83B: Else
  loc_14BE843:   If (var_92 = CInt(&HB)) Then
  loc_14BE85D:     If (Me.RecordCount > 0) Then
  loc_14BE86B:       Set var_8C = ()
  loc_14BE883:       Proc_6_137_1193554((), global_92)
  loc_14BE891:     End If
  loc_14BE8DF:     Set var_88 = Me.Txt
  loc_14BE8E5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14BE8ED:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14BE913:     If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_14BE916:       Exit Sub
  loc_14BE917:     End If
  loc_14BE924:     Set var_88 = Me.Txt
  loc_14BE92A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BE932:     var_A0 = var_8C.Text
  loc_14BE944:     var_C4 = "Name"
  loc_14BE97F:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_14BE988:       Me.MoveFirst
  loc_14BE9AB:       Set var_88 = Me.Txt
  loc_14BE9B1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14BE9B9:       0 = var_8C.Text
  loc_14BE9D2:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_14BE9E7:     End If
  loc_14BE9EA:   Else
  loc_14BE9F2:     If (var_92 = CInt(&HC)) Then
  loc_14BEA0C:       If (Me.RecordCount > 0) Then
  loc_14BEA1A:         Set var_8C = ()
  loc_14BEA32:         Proc_6_137_1193554(Me.DGNewRoomNo, global_96)
  loc_14BEA40:       End If
  loc_14BEA8E:       Set var_88 = Me.Txt
  loc_14BEA94:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14BEA9C:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14BEAC2:       If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), Index) = vbNullString)) Then
  loc_14BEAC5:         Exit Sub
  loc_14BEAC6:       End If
  loc_14BEAD3:       Set var_88 = Me.Txt
  loc_14BEAD9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BEAE1:       var_A0 = var_8C.Text
  loc_14BEAF3:       var_C4 = "RoomNo"
  loc_14BEB2E:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_14BEB37:         Me.MoveFirst
  loc_14BEB5A:         Set var_88 = Me.Txt
  loc_14BEB60:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_14BEB68:         0 = var_8C.Text
  loc_14BEB81:         Me.Find 1 & var_A0 & "'", var_C4, 
  loc_14BEB96:       End If
  loc_14BEB99:     Else
  loc_14BEBA1:       If (var_92 = CInt(&H18)) Then
  loc_14BEBBB:         If (Me.RecordCount > 0) Then
  loc_14BEBC9:           Set var_8C = ()
  loc_14BEBE1:           Proc_6_137_1193554(Me.DGPackage, global_100)
  loc_14BEBEF:         End If
  loc_14BEC3D:         Set var_88 = Me.Txt
  loc_14BEC43:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14BEC4B:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14BEC63:         If (Index Or (var_A0 = vbNullString)) Then
  loc_14BEC66:           Exit Sub
  loc_14BEC67:         End If
  loc_14BEC74:         Set var_88 = Me.Txt
  loc_14BEC7A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BEC82:         var_A0 = var_8C.Text
  loc_14BEC94:         var_C4 = "Name"
  loc_14BECA3:         var_90 = Me.Fields
  loc_14BECAB:         var_C8 = var_90.Item(var_C4)
  loc_14BECCF:         If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_14BECD8:           Me.MoveFirst
  loc_14BECFB:           Set var_88 = Me.Txt
  loc_14BED01:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14BED09:           0 = var_8C.Text
  loc_14BED22:           Me.Find 1 & var_A0 & "'", var_C4, var_8C
  loc_14BED37:         End If
  loc_14BED3A:       Else
  loc_14BED42:         If (var_92 = CInt(&H1E)) Then
  loc_14BED53:           Set var_88 = Me.Txt
  loc_14BED59:           Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_8C)
  loc_14BED61:           var_A0 = var_8C.Tag
  loc_14BED69:           var_B0 = CVar(var_A0) 'String
  loc_14BED8D:           If CBool(Trim(var_B0) <> vbNullString) Then
  loc_14BED9B:             If (global_116 = "Room Category") Then
  loc_14BEDBC:               Set var_88 = Me.Txt
  loc_14BEDC2:               Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_8C, var_A0, "Select Code, Name,total,App_Date,RoomTaxStru From PlanMast where ROOMCAT='")
  loc_14BEDCA:               var_134 = var_8C.Tag
  loc_14BEDD3:               var_B4 = -1 & var_A0
  loc_14BEDE8:               var_D8 = CVar(1 & var_A0 & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<=") 'String
  loc_14BEDF6:               Proc_6_7_F25D88(var_B0, MemVar_1F920EC)
  loc_14BEE15:               unk_52DB4B.Execute CStr(var_D8 & var_B0 & " Order by Name"), var_90, 
  loc_14BEE26:               Set global_100 = var_90
  loc_14BEE52:             Else
  loc_14BEE60:               Set var_88 = Me.Txt
  loc_14BEE66:               Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_14BEE8A:               If (CDbl(Val(var_8C.Text)) <> CDbl(0)) Then
  loc_14BEE9B:                 Set var_88 = Me.Txt
  loc_14BEEA1:                 Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_14BEEB6:                 var_154 = Val(var_8C.Text)
  loc_14BEEC7:                 Set var_90 = Me.Txt
  loc_14BEECD:                 Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_C8)
  loc_14BEEE5:                 Proc_6_7_F25D88(var_B0, MemVar_1F920EC)
  loc_14BEF0A:                 var_114 = "Select Code, Name,total,App_Date,RoomTaxStru From PlanMast where ADULTS=" & CStr(var_154) & " AND ROOMCAT='"
  loc_14BEF26:                 var_D8 = CVar(var_114 & var_C8.Tag & "' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<=") 'String
  loc_14BEF43:                 unk_52DB4B.Execute CStr(var_D8 & var_B0 & " Order by Name"), var_134, -1
  loc_14BEF54:                 Set global_100 = var_148
  loc_14BEF8C:               Else
  loc_14BEFA7:                 var_D8 = CVar("Select Code, Name,total,App_Date,RoomTaxStru From PlanMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<=") 'String
  loc_14BEFB5:                 Proc_6_7_F25D88(var_B0, MemVar_1F920EC, var_D8, var_134)
  loc_14BEFBD:                 var_E8 = -1 & var_B0 
  loc_14BEFD4:                 unk_52DB4B.Execute CStr(var_D8 & var_B0 & " Order by Name"), var_88, var_148
  loc_14BEFE5:                 Set global_100 = var_88
  loc_14BF004:               End If
  loc_14BF004:             End If
  loc_14BF007:           Else
  loc_14BF01B:             var_A0 = "Select Code, Name,total,App_Date,RoomTaxStru From PlanMast where (LOGSITE_CODE='" & MemVar_1F92078
  loc_14BF030:             Proc_6_7_F25D88(var_B0, MemVar_1F920EC, CVar(var_A0 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<="), var_134)
  loc_14BF038:             var_E8 = -1 & var_B0 
  loc_14BF04F:             unk_52DB4B.Execute CStr(CVar(var_A0 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<=") & var_B0 & " Order by Name"), var_88, var_154
  loc_14BF060:             Set global_100 = var_88
  loc_14BF07F:           End If
  loc_14BF088:           CVarUnk
  loc_14BF08D:           VerifyVarObj
  loc_14BF093:           Set var_88 = Me.DGPlanPkg
  loc_14BF099:           LateIdStAd
  loc_14BF0B0:           CVarUnk
  loc_14BF0B5:           VerifyVarObj
  loc_14BF0C1:           LateIdStAd
  loc_14BF0E6:           If (Me.RecordCount > 0) Then
  loc_14BF0F4:             Set var_8C = global_100(Me.DGPackage)
  loc_14BF10C:             Proc_6_137_1193554(Me.DGPlanPkg, global_100, Index)
  loc_14BF11A:           End If
  loc_14BF16E:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_14BF176:           var_8C = var_8C.Text
  loc_14BF18E:           If (Me.Txt Or (var_A0 = vbNullString)) Then
  loc_14BF19E:             Set var_88 = Me.Txt
  loc_14BF1A4:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BF1AC:             var_8C.Text = vbNullString
  loc_14BF1C5:             Set var_88 = Me.Txt
  loc_14BF1CB:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BF1D3:             var_8C.Tag = vbNullString
  loc_14BF1DF:             Exit Sub
  loc_14BF1E0:           End If
  loc_14BF1ED:           Set var_88 = Me.Txt
  loc_14BF1F3:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BF1FB:           var_A0 = var_8C.Text
  loc_14BF20D:           var_C4 = "Name"
  loc_14BF224:           var_C8 = Me.Fields.Item(var_C4)
  loc_14BF248:           If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_14BF251:             Me.MoveFirst
  loc_14BF274:             Set var_88 = Me.Txt
  loc_14BF27A:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14BF282:             0 = var_8C.Text
  loc_14BF29B:             Me.Find 1 & var_A0 & "'", var_C4, global_100
  loc_14BF2B0:           End If
  loc_14BF2B3:         Else
  loc_14BF2BB:           If (var_92 = CInt(&H10)) Then
  loc_14BF2CC:             Set var_88 = Me.Txt
  loc_14BF2D2:             Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_14BF2EA:             global_72 = Val(var_8C.Text)
  loc_14BF2F7:           End If
  loc_14BF2F7:         End If
  loc_14BF2F7:       End If
  loc_14BF2F7:     End If
  loc_14BF2F7:   End If
  loc_14BF2F7: End If
  loc_14BF306: Set var_88 = Me.Txt
  loc_14BF30C: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BF314: var_8C.SelStart = 0
  loc_14BF32D: Set var_88 = Me.Txt
  loc_14BF333: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BF34E: Set var_90 = Me.Txt
  loc_14BF354: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_14BF35C: var_C8.SelLength = Len(var_8C.Text)
  loc_14BF36F: Call Proc_59_42_F6DF1C(global_72)
  loc_14BF374: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '14D93B4
  'Data Table: 52DB2C
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_A0 As Variant
  Dim var_AC As Variant
  Dim var_F0 As Variant
  Dim var_B4 As DataGrid
  Dim var_100 As Variant
  Dim var_B8 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_134 As String
  Dim unk_52DB4B As Connection15
  Dim var_158 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim var_16C As String
  Dim var_8C As Recordset15
  loc_14D8617: var_8E = Shift
  loc_14D8624: If (CLng(Shift) = &H1B) Then
  loc_14D8627:   Call Proc_59_42_F6DF1C(var_8E)
  loc_14D8639:   Me.Global.Unload Me
  loc_14D8641:   Exit Sub
  loc_14D8642: End If
  loc_14D8645: var_96 = KeyCode
  loc_14D8650: If Not (var_96 = CInt(&H27)) Then
  loc_14D865B:   If (var_96 = CInt(&H28)) Then
  loc_14D865E:   End If
  loc_14D8668:   Set var_94 = Me.Txt
  loc_14D866E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_14D8689:   Proc_6_41_FA0BA4(var_9C, Shift, 2)
  loc_14D8698: Else
  loc_14D86A0:   If (var_96 = CInt(0)) Then
  loc_14D86C0:     Set var_AC = var_96(2)
  loc_14D86CB:     Set var_A0 = Nothing
  loc_14D86FD:     Proc_6_69_134A198(Me.DGRoomNo, Me.Txt, CInt(0), global_88, Shift)
  loc_14D876C:     If ((Me.RecordCount > 0) And ((((((CLng(var_8E) = &H28) Or (CLng(var_8E) = &H26)) Or (CLng(var_8E) = &H25)) Or (CLng(var_8E) = &H27)) Or (CLng(var_8E) = &H21)) Or (CLng(var_8E) = &H22))) Then
  loc_14D8773:       Set var_A0 = Me.DGRoomNo
  loc_14D8792:       Proc_6_138_106D6F8(var_A0, global_88, KeyCode, 1(0))
  loc_14D87A0:     End If
  loc_14D87A3:   Else
  loc_14D87AB:     If (var_96 = CInt(&HB)) Then
  loc_14D87D6:       Set var_A0 = Nothing
  loc_14D8808:       Proc_6_69_134A198((0)(var_A0), Me.Txt, CInt(&HB), global_92, Shift)
  loc_14D8877:       If ((Me.RecordCount > 0) And ((((((CLng(var_8E) = &H28) Or (CLng(var_8E) = &H26)) Or (CLng(var_8E) = &H25)) Or (CLng(var_8E) = &H27)) Or (CLng(var_8E) = &H21)) Or (CLng(var_8E) = &H22))) Then
  loc_14D887E:         Set var_A0 = 1(0)
  loc_14D8885:         Set var_9C = (0)(var_A0)
  loc_14D889D:         Proc_6_138_106D6F8(var_A0, global_92, KeyCode)
  loc_14D88AB:       End If
  loc_14D88AE:     Else
  loc_14D88B6:       If (var_96 = CInt(&HC)) Then
  loc_14D88CB:         Set var_BC = 0(var_9C)
  loc_14D88D6:         Set var_AC = var_BC
  loc_14D88E1:         Set var_A0 = Nothing
  loc_14D8913:         Proc_6_69_134A198(Me.DGNewRoomNo, Me.Txt, CInt(&HC), global_96, Shift)
  loc_14D8932:         var_C0 = Me.RecordCount
  loc_14D8982:         If ((var_C0 > 0) And ((((((CLng(var_8E) = &H28) Or (CLng(var_8E) = &H26)) Or (CLng(var_8E) = &H25)) Or (CLng(var_8E) = &H27)) Or (CLng(var_8E) = &H21)) Or (CLng(var_8E) = &H22))) Then
  loc_14D8989:           Set var_A0 = Me.DGNewRoomNo
  loc_14D8990:           Set var_9C = 1(0)
  loc_14D89A8:           Proc_6_138_106D6F8(var_A0, global_96, KeyCode, var_9C)
  loc_14D89B6:         End If
  loc_14D89B9:       Else
  loc_14D89C1:         If (var_96 = CInt(&H10)) Then
  loc_14D89CE:           Set var_94 = Me.Txt
  loc_14D89D4:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0)
  loc_14D89EF:           Proc_6_41_FA0BA4(var_9C, Shift, 6)
  loc_14D89FE:         Else
  loc_14D8A06:           If (var_96 = CInt(&H18)) Then
  loc_14D8A21:             Set var_AC = Nothing
  loc_14D8A2C:             Set var_A0 = Nothing
  loc_14D8A5E:             Proc_6_69_134A198(Me.DGPackage, Me.Txt, CInt(&H18), global_100, Shift, 0, 1)
  loc_14D8A75:           Else
  loc_14D8A7D:             If (var_96 = CInt(&H1E)) Then
  loc_14D8A98:               Set var_AC = Nothing
  loc_14D8AD5:               Proc_6_69_134A198(Me.DGPlanPkg, Me.Txt, CInt(&H1E), global_100, Shift, 0, 1, Nothing)
  loc_14D8AE9:             End If
  loc_14D8AE9:           End If
  loc_14D8AE9:         End If
  loc_14D8AE9:       End If
  loc_14D8AE9:     End If
  loc_14D8AE9:   End If
  loc_14D8AE9: End If
  loc_14D8B03: Set var_9C = Me.DGPlanPkg
  loc_14D8B1D: Set var_A0 = Me.Frmrate
  loc_14D8B33: Set var_AC = Me.DGRoomNo
  loc_14D8B61: Set var_B8 = var_AC((((((CBool(Me.DGPackage.Visible) = 0) And (CBool(var_9C.Visible) = 0)) And (var_A0.Visible = 0)) And (CBool(var_AC.Visible) = 0)) And (CBool(Me.DGNewRoomNo.Visible) = 0)))
  loc_14D8B67: var_110 = var_B8.Visible
  loc_14D8B90: If (0 And (CBool(var_110) = 0)) Then
  loc_14D8BB1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_14D8BBF:     Set var_94 = Me.Txt
  loc_14D8BC5:     Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C, var_A0, var_AC)
  loc_14D8BE7:     Set var_A0 = Me.Txt
  loc_14D8BED:     Call 0.Method_Txt_KeyDown0 (CInt(&HC), var_AC, Trim(CVar(var_9C)), 0)
  loc_14D8C18:     If CBool(2 <> Trim(CVar(var_AC))) Then
  loc_14D8C3B:       Set var_94 = Me.Txt
  loc_14D8C41:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C, "Select * from KOT Where Pending='Y' and RoomNo='", var_110, -1)
  loc_14D8C50:       var_E0 = Trim(CVar(var_9C))
  loc_14D8C58:       var_F0 = var_A0 & var_E0 
  loc_14D8C61:       var_100 = var_F0 & "' and roomtype='RO' and VoidYN='N' and NCKOT<>'Y' and DelFlag<>'Y'" 
  loc_14D8C6F:       unk_52DB4B.Execute CStr(var_100), var_C0, var_AC
  loc_14D8C77:       0 = var_A0.RecordCount
  loc_14D8C9C:       If (var_C0 > 0) Then
  loc_14D8CAD:         var_120 = "There is some KOT Pending for this Room."
  loc_14D8CB8:         MsgBox(var_120, &H10, var_E0, var_F0, var_100)
  loc_14D8CC8:         Exit Sub
  loc_14D8CC9:       End If
  loc_14D8CC9:     End If
  loc_14D8CC9:   End If
  loc_14D8CE7:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_14D8CF8:     Set var_94 = Me.Txt
  loc_14D8CFE:     Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D8D06:     var_134 = var_9C.Text
  loc_14D8D1D:     If (var_134 = vbNullString) Then
  loc_14D8D2E:       Set var_94 = Me.Txt
  loc_14D8D34:       Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D8D3C:       var_9C.Tag = vbNullString
  loc_14D8D5F:       If (Me.RecordCount > 0) Then
  loc_14D8D68:         Me.MoveFirst
  loc_14D8D8C:         Set var_94 = Me.Txt
  loc_14D8D92:         Call 0.Method_Txt_KeyDown0 (CInt(&HB), var_9C, var_134, "Code='")
  loc_14D8D9A:         0 = var_9C.Tag
  loc_14D8DAA:         var_15C = 1 & var_134 & "'"
  loc_14D8DB3:         Me.Find var_15C, var_120, 
  loc_14D8DF2:         If Not(((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_14D8E0F:           var_9C = Me.Fields.Item("RoomTaxStru")
  loc_14D8E2E:           Set var_A0 = Me.Txt
  loc_14D8E34:           Call 0.Method_Txt_KeyDown0 (CInt(&H32), var_AC)
  loc_14D8E3C:           var_AC.Text = Proc_6_38_E68A98(CVar(var_9C))
  loc_14D8E50:         End If
  loc_14D8E50:       End If
  loc_14D8E50:     End If
  loc_14D8E5E:     Set var_94 = Me.Txt
  loc_14D8E64:     Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D8E8D:     If ((var_9C.Tag <> vbNullString) And (global_110 = &HFF)) Then
  loc_14D8EB6:       Set var_9C = Me.Txt
  loc_14D8EBC:       Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_A0)
  loc_14D8EDE:       If ((Me.FrPackage.Visible = 0) And (var_A0.Text <> vbNullString)) Then
  loc_14D8EF1:         Me.FrPackage.ZOrder 0
  loc_14D8F05:         Me.FrPackage.Visible = True
  loc_14D8F1B:         Set var_94 = Me.Txt
  loc_14D8F21:         Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D8F3C:         Set var_A0 = Me.Txt
  loc_14D8F42:         Call 0.Method_Txt_KeyDown0 (CInt(&H18), var_AC)
  loc_14D8F4A:         var_AC.Text = var_9C.Text
  loc_14D8F6B:         Set var_94 = Me.Txt
  loc_14D8F71:         Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D8F8C:         Set var_A0 = Me.Txt
  loc_14D8F92:         Call 0.Method_Txt_KeyDown0 (CInt(&H18), var_AC)
  loc_14D8F9A:         var_AC.Tag = var_9C.Tag
  loc_14D8FB8:         Set var_94 = Me.Txt
  loc_14D8FBE:         Call 0.Method_Txt_KeyDown0 (CInt(&H18))
  loc_14D8FC6:         var_9C.SetFocus
  loc_14D8FD2:       End If
  loc_14D8FD5:     Else
  loc_14D8FE3:       Set var_94 = Me.Txt
  loc_14D8FE9:       Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D8FF1:       var_134 = var_9C.Tag
  loc_14D9008:       If (var_134 <> vbNullString) Then
  loc_14D9029:         Set var_94 = Me.Txt
  loc_14D902F:         Call 0.Method_Txt_KeyDown0 (CInt(8), var_9C, var_134, "Select * from Comp_PlanDet where companyCode='")
  loc_14D9037:         var_D0 = var_9C.Tag
  loc_14D9040:         var_158 = -1 & var_134
  loc_14D9047:         var_160 = 1 & var_134 & "' and RoomCat='"
  loc_14D9058:         Set var_A0 = Me.Txt
  loc_14D905E:         Call 0.Method_Txt_KeyDown0 (CInt(&HB), var_AC, var_15C)
  loc_14D9066:         var_160 = var_AC.Tag
  loc_14D9076:         var_16C = var_BC & var_15C & "' and PLanCode='"
  loc_14D9087:         Set var_B4 = Me.Txt
  loc_14D908D:         Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_B8, var_168)
  loc_14D9095:         var_16C = var_B8.Tag
  loc_14D90AE:         unk_52DB4B.Execute var_9C & var_168 & "'", , 
  loc_14D90B9:         Set var_8C = var_BC
  loc_14D90F9:         If (var_8C.RecordCount > 0) Then
  loc_14D9138:           If (var_8C.Fields.Item("PLANAmt").Value > 0) Then
  loc_14D916A:             If (MsgBox("Apply Trarrif as per defined Condition?", &H24, var_E0, var_F0, var_100) = 6) Then
  loc_14D9184:               var_9C = var_8C.Fields.Item("PLANAmt")
  loc_14D918C:               var_D0 = CVar(var_9C) 'Address
  loc_14D9193:               Proc_6_39_E7C810(var_E0)
  loc_14D91CA:               Set var_A0 = Me.Txt
  loc_14D91D0:               Call 0.Method_Txt_KeyDown0 (CInt(&H10), var_AC, CStr(Format(var_E0, "0.00")))
  loc_14D91D8:               var_AC.Text = 1
  loc_14D9202:               Set var_94 = Me.Txt
  loc_14D9208:               Call 0.Method_Txt_KeyDown0 (CInt(&H26), var_9C, "Yes")
  loc_14D9210:               var_9C.Text = 1
  loc_14D9228:               Call Txt_Validate(CInt(&H26))
  loc_14D922D:             End If
  loc_14D922D:           End If
  loc_14D922D:         End If
  loc_14D922D:       End If
  loc_14D922D:     End If
  loc_14D922D:   End If
  loc_14D9242:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14D924B:     Proc_6_75_E527CC(Shift, arg_14)
  loc_14D9250:   End If
  loc_14D925A:   If (CLng(Shift) = &H26) Then
  loc_14D9263:     Proc_6_76_E52838(Shift, arg_14)
  loc_14D9268:   End If
  loc_14D9268: End If
  loc_14D9272: var_D0 = Me.DGPackage.Visible
  loc_14D92C7: Set var_B4 = 0(((((CBool(var_D0) = 0) And (CBool(Me.DGPlanPkg.Visible) = 0)) And (CBool(Me.DGRoomNo.Visible) = 0)) And (CBool(Me.DGNewRoomNo.Visible) = 0)))
  loc_14D92F4: If (var_D0 And (CBool(var_B4.Visible) = 0)) Then
  loc_14D9315:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_14D931E:     Call Txt_Validate(KeyCode)
  loc_14D9329:     If (var_86 = &HFF) Then
  loc_14D932C:       Exit Sub
  loc_14D932D:     End If
  loc_14D933D:     Me.Frmrate.ZOrder 1
  loc_14D9351:     Me.Frmrate.Visible = False
  loc_14D9365:     Me.Frame1.Enabled = True
  loc_14D936D:     Exit Sub
  loc_14D936E:   End If
  loc_14D9383:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14D938C:     Proc_6_75_E527CC(Shift, arg_14)
  loc_14D9391:   End If
  loc_14D939B:   If (CLng(Shift) = &H26) Then
  loc_14D93A4:     Proc_6_76_E52838(Shift, arg_14)
  loc_14D93A9:   End If
  loc_14D93A9: End If
  loc_14D93AE: Set var_8C = Nothing
  loc_14D93B1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11A3F24
  'Data Table: 52DB2C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_A0 As TextBox
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_11A3B07: Proc_6_58_E054C0(arg_10)
  loc_11A3B12: Proc_6_133_E7EF78(var_94)
  loc_11A3B1B: arg_10 = CInt(var_94)
  loc_11A3B24: var_96 = KeyAscii
  loc_11A3B2F: If Not (var_96 = CInt(&H28)) Then
  loc_11A3B3A:   If (var_96 = CInt(&H27)) Then
  loc_11A3B3D:   End If
  loc_11A3B47:   Set var_9C = Me.Txt
  loc_11A3B4D:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_11A3B68:   Proc_6_42_129A86C(var_A0, arg_10, 2)
  loc_11A3B77: Else
  loc_11A3B7F:   If Not (var_96 = CInt(&H26)) Then
  loc_11A3B8A:     If (var_96 = CInt(&H29)) Then
  loc_11A3B8D:     End If
  loc_11A3BB6:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11A3BC6:       Set var_9C = Me.Txt
  loc_11A3BCC:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_11A3BD4:       var_A0.Text = 2
  loc_11A3BE3:     Else
  loc_11A3C0C:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11A3C1C:         Set var_9C = Me.Txt
  loc_11A3C22:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_11A3C2A:         var_A0.Text = arg_10
  loc_11A3C36:       End If
  loc_11A3C36:     End If
  loc_11A3C38:     arg_10 = 0
  loc_11A3C3E:   Else
  loc_11A3C46:     If (var_96 = CInt(0)) Then
  loc_11A3C65:       If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_11A3C92:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_88, arg_10)
  loc_11A3CAC:         Set var_A0 = 0("RoomNo")
  loc_11A3CC4:         Proc_6_138_106D6F8(Me.DGRoomNo, global_88, KeyAscii)
  loc_11A3CD2:       End If
  loc_11A3CD5:     Else
  loc_11A3CDD:       If (var_96 = CInt(&HC)) Then
  loc_11A3CFC:         If (CBool(Me.DGNewRoomNo.Visible) = &HFF) Then
  loc_11A3D29:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_96, arg_10, "RoomNo")
  loc_11A3D43:           Set var_A0 = var_A0(0)
  loc_11A3D5B:           Proc_6_138_106D6F8(Me.DGNewRoomNo, global_96, KeyAscii)
  loc_11A3D69:         End If
  loc_11A3D6C:       Else
  loc_11A3D74:         If (var_96 = CInt(&HB)) Then
  loc_11A3D93:           If (CBool(arg_10(var_A0).Visible) = &HFF) Then
  loc_11A3DC0:             Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_92, arg_10)
  loc_11A3DDA:             Set var_A0 = (arg_10)
  loc_11A3DF2:             Proc_6_138_106D6F8(0("Name"), global_92)
  loc_11A3E00:           End If
  loc_11A3E03:         Else
  loc_11A3E0B:           If (var_96 = CInt(&H18)) Then
  loc_11A3E2A:             If (CBool(Me.DGPackage.Visible) = &HFF) Then
  loc_11A3E31:               Set var_A0 = Me.Txt
  loc_11A3E3C:               var_DC = "Name"
  loc_11A3E57:               Proc_6_89_146F1AC(var_A0, KeyAscii, global_100, arg_10)
  loc_11A3E66:             End If
  loc_11A3E69:           Else
  loc_11A3E71:             If (var_96 = CInt(&H2B)) Then
  loc_11A3E9D:               If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11A3EAD:                 Set var_9C = Me.Txt
  loc_11A3EB3:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No", var_DC)
  loc_11A3EBB:                 var_A0.Text = 0
  loc_11A3ECA:               Else
  loc_11A3EF3:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11A3F03:                   Set var_9C = Me.Txt
  loc_11A3F09:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_11A3F11:                   var_A0.Text = KeyAscii
  loc_11A3F1D:                 End If
  loc_11A3F1D:               End If
  loc_11A3F1F:               arg_10 = 0
  loc_11A3F22:             End If
  loc_11A3F22:           End If
  loc_11A3F22:         End If
  loc_11A3F22:       End If
  loc_11A3F22:     End If
  loc_11A3F22:   End If
  loc_11A3F22: End If
  loc_11A3F22: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1155D30
  'Data Table: 52DB2C
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As TextBox
  Dim var_108 As Double
  Dim var_B0 As TextBox
  Dim var_110 As Double
  Dim var_FC As TextBox
  loc_115599B: var_86 = KeyCode
  loc_11559A6: If (var_86 = CInt(0)) Then
  loc_11559C5:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_11559D9:     var_A8 = "RoomNO"
  loc_1155A01:     Proc_6_68_129FB34(Me.DGRoomNo, Me.Txt, CInt(0), global_88)
  loc_1155A14:   End If
  loc_1155A17: Else
  loc_1155A1F:   If (var_86 = CInt(&HB)) Then
  loc_1155A3E:     If (CBool(var_A8(Shift).Visible) = &HFF) Then
  loc_1155A52:       var_A8 = "Name"
  loc_1155A7A:       Proc_6_68_129FB34((var_86), Me.Txt, CInt(&HB))
  loc_1155A8D:     End If
  loc_1155A90:   Else
  loc_1155A98:     If (var_86 = CInt(&HC)) Then
  loc_1155AB7:       If (CBool(Me.DGNewRoomNo.Visible) = &HFF) Then
  loc_1155ACB:         var_A8 = "RoomNO"
  loc_1155AF3:         Proc_6_68_129FB34(Me.DGNewRoomNo, Me.Txt, CInt(&HC), global_96, Shift)
  loc_1155B06:       End If
  loc_1155B09:     Else
  loc_1155B11:       If (var_86 = CInt(&H18)) Then
  loc_1155B30:         If (CBool(Me.DGPackage.Visible) = &HFF) Then
  loc_1155B3E:           Set var_B0 = Me.Txt
  loc_1155B44:           var_A8 = "Name"
  loc_1155B5D:           Set var_A0 = var_B0
  loc_1155B6C:           Proc_6_68_129FB34(Me.DGPackage, var_A0, CInt(&H18), global_100, Shift)
  loc_1155B7F:         End If
  loc_1155B82:       Else
  loc_1155B8A:         If (var_86 = CInt(&H2C)) Then
  loc_1155B9B:           Set var_8C = Me.Txt
  loc_1155BA1:           Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A0, var_A8, var_A8)
  loc_1155BA9:           var_A8 = var_A0.Text
  loc_1155BB6:           var_108 = Val(var_A8)
  loc_1155BC6:           Set var_AC = Me.Txt
  loc_1155BCC:           Call 0.Method_Txt_KeyUp0 (KeyCode, var_B0, var_B4, var_108)
  loc_1155BD4:           global_92 = var_B0.Text
  loc_1155C22:           Set var_F8 = Me.Txt
  loc_1155C28:           Call 0.Method_Txt_KeyUp0 (CInt(&H2D), var_FC, CStr(Format(CVar(((var_108 * Val(var_B4)) / CDbl(&H64))), "0.00")), 1)
  loc_1155C30:           var_FC.Text = 1
  loc_1155C59:         Else
  loc_1155C61:           If (var_86 = CInt(&H2D)) Then
  loc_1155C71:             Set var_8C = Me.Txt
  loc_1155C77:             Call 0.Method_Txt_KeyUp0 (KeyCode, var_A0, var_A8)
  loc_1155C7F:             var_110 = var_A0.Text
  loc_1155C8C:             var_108 = Val(var_A8)
  loc_1155C9D:             Set var_AC = Me.Txt
  loc_1155CA3:             Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_B0, var_B4)
  loc_1155CF9:             Set var_F8 = Me.Txt
  loc_1155CFF:             Call 0.Method_Txt_KeyUp0 (CInt(&H2C), var_FC, CStr(Format(CVar(((var_B0.Text * CDbl(&H64)) / Val(var_B4))), "0.00000")), 1)
  loc_1155D07:             var_FC.Text = 1
  loc_1155D2D:           End If
  loc_1155D2D:         End If
  loc_1155D2D:       End If
  loc_1155D2D:     End If
  loc_1155D2D:   End If
  loc_1155D2D: End If
  loc_1155D2D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46824
  'Data Table: 52DB2C
  loc_E46802: Set var_88 = Me.Txt
  loc_E46808: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46816: Proc_6_73_E22704(var_8C)
  loc_E46822: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1AE7434
  'Data Table: 52DB2C
  Dim var_EA As Integer
  Dim var_F4 As Variant
  Dim arg_10 As Integer
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_168 As Double
  Dim var_140 As Variant
  Dim var_170 As Double
  Dim var_154 As Variant
  Dim var_160 As String
  Dim var_15C As Variant
  Dim var_F0 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_F8 As String
  Dim var_1A8 As Variant
  Dim var_1B0 As TextBox
  Dim var_138 As Variant
  Dim Me As Variant
  Dim var_13C As Variant
  Dim var_118 As Variant
  Dim var_144 As String
  Dim var_158 As Fields15
  Dim var_1E4 As TextBox
  Dim var_1B8 As String
  Dim var_1BC As String
  Dim var_1D4 As String
  Dim var_190 As Variant
  Dim var_1C0 As String
  Dim var_1C4 As String
  Dim unk_52DB4B As Connection15
  Dim var_1A4 As Variant
  Dim var_E8 As Recordset15
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_AE As String
  Dim var_B8 As Double
  Dim var_9C As String
  Dim var_DA As Integer
  Dim var_9A As String
  Dim var_1F8 As Variant
  Dim var_98 As Recordset15
  Dim var_298 As Variant
  Dim var_9E As Integer
  Dim var_E4 As Double
  loc_1AE316F: var_EA = Cancel
  loc_1AE317A: If (var_EA = CInt(&H19)) Then
  loc_1AE318A:   Set var_F0 = Me.Txt
  loc_1AE3190:   Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE3198:   var_F8 = var_F4.Text
  loc_1AE31B4:   If (CDbl(Val(var_F8)) = CDbl(0)) Then
  loc_1AE31B9:     arg_10 = &HFF
  loc_1AE31BC:     Exit Sub
  loc_1AE31BD:   End If
  loc_1AE31C6:   If (global_110 = &HFF) Then
  loc_1AE31C9:     Call Proc_59_43_E601A8(arg_10)
  loc_1AE31CE:   End If
  loc_1AE31D1: Else
  loc_1AE31D9:   If (var_EA = CInt(&H2B)) Then
  loc_1AE31E6:     Set var_F0 = Me.Txt
  loc_1AE31EC:     Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE3215:     If (Trim(CVar(var_F4)) = vbNullString) Then
  loc_1AE321A:       arg_10 = &HFF
  loc_1AE321D:       Exit Sub
  loc_1AE321E:     End If
  loc_1AE322C:     Set var_F0 = Me.Txt
  loc_1AE3232:     Call 0.Method_Txt_Validate0 (CInt(&H2B), var_F4, var_F8)
  loc_1AE323A:     arg_10 = var_F4.Text
  loc_1AE3251:     If (var_F8 = "Yes") Then
  loc_1AE3262:       Set var_F0 = Me.Txt
  loc_1AE3268:       Call 0.Method_Txt_Validate0 (CInt(&H19), var_F4)
  loc_1AE327D:       var_168 = Val(var_F4.Text)
  loc_1AE328E:       Set var_13C = Me.Txt
  loc_1AE3294:       Call 0.Method_Txt_Validate0 (CInt(&H30), var_140, var_144)
  loc_1AE32A9:       var_170 = Val(var_144)
  loc_1AE32C8:       var_108 = CVar((var_140.Text - var_170)) 'Double
  loc_1AE32E6:       Set var_158 = Me.Txt
  loc_1AE32EC:       Call 0.Method_Txt_Validate0 (CInt(&H2E), var_15C, CStr(Format(CVar(var_F4), "0.00")), 1)
  loc_1AE32F4:       var_15C.Tag = 1
  loc_1AE331A:       Call Proc_59_48_1D76B48(var_170)
  loc_1AE3322:     Else
  loc_1AE3330:       Set var_F0 = Me.Txt
  loc_1AE3336:       Call 0.Method_Txt_Validate0 (CInt(&H2E), var_F4)
  loc_1AE3358:       Set var_F0 = Me.Txt
  loc_1AE335E:       Call 0.Method_Txt_Validate0 (CInt(&H2E), var_F4)
  loc_1AE3366:       var_F4.Tag = vbNullString
  loc_1AE337F:       Me.lblLTDet.Caption = vbNullString
  loc_1AE3387:       Call Proc_59_48_1D76B48(var_EA)
  loc_1AE339A:       Set var_F0 = Me.Txt
  loc_1AE33A0:       Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE33BB:       Set var_13C = Me.Txt
  loc_1AE33C1:       Call 0.Method_Txt_Validate0 (CInt(&H2E), var_140)
  loc_1AE33C9:       var_140.Text = vbNullString
  loc_1AE33E7:       Set var_F0 = Me.Txt
  loc_1AE33ED:       Call 0.Method_Txt_Validate0 (CInt(&H10))
  loc_1AE33F2:       var_154 = "Net Room Rate is :"
  loc_1AE343F:       Set var_13C = Me.Lbl
  loc_1AE3445:       Call 0.Method_Txt_Validate0 (&H3F, var_140, CStr(1 & Trim(CVar(CStr(Format(CVar(var_F4), "0.00"))))))
  loc_1AE344D:       var_140.Caption = 1
  loc_1AE346F:     End If
  loc_1AE3472:   Else
  loc_1AE347A:     If Not (var_EA = CInt(&H26)) Then
  loc_1AE3485:       If (var_EA = CInt(&H29)) Then
  loc_1AE3488:       End If
  loc_1AE3492:       Set var_F0 = Me.Txt
  loc_1AE3498:       Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE34D3:       If (Ucase(Left(CVar(var_F4), 1)) = "Y") Then
  loc_1AE34E3:         Set var_F0 = Me.Txt
  loc_1AE34E9:         Call 0.Method_Txt_Validate0 (Cancel, var_F4, "Yes")
  loc_1AE34F1:         var_F4.Text = var_154
  loc_1AE3500:       Else
  loc_1AE350D:         Set var_F0 = Me.Txt
  loc_1AE3513:         Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE351B:         var_F4.Text = "No"
  loc_1AE3527:       End If
  loc_1AE3532:       Set var_F0 = Me.Txt
  loc_1AE3538:       Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE354B:       Set var_13C = Me.Txt
  loc_1AE3551:       Call 0.Method_Txt_Validate0 (CInt(&H26), var_140)
  loc_1AE356C:       Set var_158 = Me.Txt
  loc_1AE3572:       Call 0.Method_Txt_Validate0 (CInt(&H29), var_15C)
  loc_1AE358D:       Set var_1A4 = Me.Txt
  loc_1AE3593:       Call 0.Method_Txt_Validate0 (CInt(&H32), var_1A8)
  loc_1AE35AE:       Set var_1AC = Me.Txt
  loc_1AE35B4:       Call 0.Method_Txt_Validate0 (CInt(&H33), var_1B0)
  loc_1AE35BC:       var_F8 = var_1B0.Text
  loc_1AE35C9:       var_170 = Val(var_F8)
  loc_1AE35F1:       Proc_96_76_1840070(var_F4, var_140.Text, var_15C.Text, var_1A8.Text)
  loc_1AE361B:     Else
  loc_1AE3623:       If (var_EA = CInt(0)) Then
  loc_1AE3634:         Set var_F0 = Me.Txt
  loc_1AE363A:         Call 0.Method_Txt_Validate0 (CInt(0), var_F4, var_F8)
  loc_1AE3642:         var_170 = var_F4.Text
  loc_1AE3659:         If (var_F8 = vbNullString) Then
  loc_1AE365E:           arg_10 = &HFF
  loc_1AE3661:         End If
  loc_1AE367F:         Set var_F0 = Me.Txt
  loc_1AE3685:         Call 0.Method_Txt_Validate0 (CInt(0), var_F4, "Roomno='", 0, 1)
  loc_1AE36A9:         var_F8 = CStr(var_1D4 & Trim(CVar(var_F4)) & "'")
  loc_1AE36B3:         Me.Find var_F8, arg_10, var_170
  loc_1AE3717:         Set var_F0 = Me.Txt
  loc_1AE371D:         Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE3725:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_F4.Text
  loc_1AE373D:         If (var_F4 Or (var_F8 = vbNullString)) Then
  loc_1AE374D:           Set var_F0 = Me.Txt
  loc_1AE3753:           Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE375B:           var_F4.Tag = vbNullString
  loc_1AE3767:           Exit Sub
  loc_1AE3768:         End If
  loc_1AE37A3:         Set var_13C = Me.Txt
  loc_1AE37A9:         Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE37B1:         var_140.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_1AE3803:         Set var_13C = Me.Txt
  loc_1AE3809:         Call 0.Method_Txt_Validate0 (CInt(&HC), var_140)
  loc_1AE3811:         var_140.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_1AE385F:         (Proc_6_38_E68A98(CVar(Me.Fields.Item("BookingDocId")))).Caption = 
  loc_1AE38A9:         (Proc_6_38_E68A98(CVar(Me.Fields.Item("CheckInDocId")))).Caption = 
  loc_1AE38F6:         Set var_13C = Me.Txt
  loc_1AE38FC:         Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE3904:         var_140.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_1AE3953:         Set var_13C = Me.Txt
  loc_1AE3959:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_140)
  loc_1AE3961:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_1AE398F:         var_F4 = Me.Fields.Item("ChkInDate")
  loc_1AE39AE:         Set var_13C = Me.Txt
  loc_1AE39B4:         Call 0.Method_Txt_Validate0 (CInt(1), var_140)
  loc_1AE39BC:         var_140.Text = Proc_6_38_E68A98(CVar(var_F4))
  loc_1AE39DB:         Set var_F0 = Me.Txt
  loc_1AE39E1:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1AE3A1B:         1(CStr(Format(CVar(var_F4), "DDDD"))).Caption = 1
  loc_1AE3A86:         Set var_13C = Me.Txt
  loc_1AE3A8C:         Call 0.Method_Txt_Validate0 (CInt(2), var_140)
  loc_1AE3A94:         var_140.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_1AE3ACC:         var_F4 = Me.Fields.Item("ChkInTime")
  loc_1AE3B05:         Set var_13C = Me.Txt
  loc_1AE3B0B:         Call 0.Method_Txt_Validate0 (CInt(3), var_140)
  loc_1AE3B13:         var_140.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_F4))), 2))
  loc_1AE3B61:         Set var_F0 = Me.Txt
  loc_1AE3B67:         Call 0.Method_Txt_Validate0 (CInt(4), var_F4, Format$(MemVar_1F920EC, "dd/MMM/yyyy"))
  loc_1AE3B6F:         var_F4.Text = 1
  loc_1AE3BD9:         Set var_F0 = Me.Txt
  loc_1AE3BDF:         Call 0.Method_Txt_Validate0 (CInt(5), var_F4, CStr(Left(CVar(Proc_6_38_E68A98(Format(Time, "hh:mm"), 1, 1)), 2)))
  loc_1AE3BE7:         var_F4.Text = 1
  loc_1AE3C1E:         var_118 = "hh:mm"
  loc_1AE3C5F:         Set var_F0 = Me.Txt
  loc_1AE3C65:         Call 0.Method_Txt_Validate0 (CInt(6), var_F4, CStr(Right(CVar(Proc_6_38_E68A98(Format(Time, var_118), 1)), 2)))
  loc_1AE3C6D:         var_F4.Text = 1
  loc_1AE3CA7:         var_F4 = Me.Fields.Item("NoDays")
  loc_1AE3CB6:         Proc_6_39_E7C810(var_118, CVar(var_F4))
  loc_1AE3CCD:         Set var_13C = Me.Txt
  loc_1AE3CD3:         Call 0.Method_Txt_Validate0 (CInt(&H31), var_140)
  loc_1AE3CDB:         var_140.Text = CStr(var_118)
  loc_1AE3CFE:         Set var_F0 = Me.Txt
  loc_1AE3D04:         Call 0.Method_Txt_Validate0 (CInt(4), var_F4)
  loc_1AE3D18:         var_118 = "DDDD"
  loc_1AE3D3E:         1(CStr(Format(CVar(var_F4), var_118))).Caption = 1
  loc_1AE3D92:         Set var_13C = Me.Txt
  loc_1AE3D98:         Call 0.Method_Txt_Validate0 (CInt(7), var_140)
  loc_1AE3DA0:         var_140.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_1AE3DF2:         Set var_13C = Me.Txt
  loc_1AE3DF8:         Call 0.Method_Txt_Validate0 (CInt(7), var_140)
  loc_1AE3E00:         var_140.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_1AE3E4F:         Set var_13C = Me.Txt
  loc_1AE3E55:         Call 0.Method_Txt_Validate0 (CInt(8), var_140)
  loc_1AE3E5D:         var_140.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_1AE3EAA:         Set var_13C = Me.Txt
  loc_1AE3EB0:         Call 0.Method_Txt_Validate0 (CInt(8), var_140)
  loc_1AE3EB8:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_1AE3F05:         Set var_13C = Me.Txt
  loc_1AE3F0B:         Call 0.Method_Txt_Validate0 (CInt(&H15), var_140)
  loc_1AE3F13:         var_140.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_1AE3F60:         Set var_13C = Me.Txt
  loc_1AE3F66:         Call 0.Method_Txt_Validate0 (CInt(&H15), var_140)
  loc_1AE3F6E:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_1AE3F9C:         var_F4 = Me.Fields.Item("OldAdult")
  loc_1AE3FAB:         Proc_6_39_E7C810(var_118, CVar(var_F4))
  loc_1AE3FC2:         Set var_13C = Me.Txt
  loc_1AE3FC8:         Call 0.Method_Txt_Validate0 (CInt(&H13), var_140)
  loc_1AE3FD0:         var_140.Text = CStr(var_118)
  loc_1AE3FF6:         Set var_F0 = Me.Txt
  loc_1AE3FFC:         Call 0.Method_Txt_Validate0 (CInt(&H13), var_F4)
  loc_1AE4021:         Set var_13C = Me.Txt
  loc_1AE4027:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_140)
  loc_1AE402F:         var_140.Text = CStr(Val(var_F4.Text))
  loc_1AE4060:         var_F4 = Me.Fields.Item("OldChild")
  loc_1AE406F:         Proc_6_39_E7C810(var_118, CVar(var_F4))
  loc_1AE4086:         Set var_13C = Me.Txt
  loc_1AE408C:         Call 0.Method_Txt_Validate0 (CInt(&H14), var_140)
  loc_1AE4094:         var_140.Text = CStr(var_118)
  loc_1AE40BA:         Set var_F0 = Me.Txt
  loc_1AE40C0:         Call 0.Method_Txt_Validate0 (CInt(&H14), var_F4)
  loc_1AE40E5:         Set var_13C = Me.Txt
  loc_1AE40EB:         Call 0.Method_Txt_Validate0 (CInt(&HE), var_140)
  loc_1AE40F3:         var_140.Text = CStr(Val(var_F4.Text))
  loc_1AE4143:         Set var_13C = Me.Txt
  loc_1AE4149:         Call 0.Method_Txt_Validate0 (CInt(&H12), var_140)
  loc_1AE4151:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_1AE417F:         var_F4 = Me.Fields.Item("RoomRate")
  loc_1AE418E:         Proc_6_39_E7C810(var_118, CVar(var_F4))
  loc_1AE41A5:         Set var_13C = Me.Txt
  loc_1AE41AB:         Call 0.Method_Txt_Validate0 (CInt(&H11), var_140)
  loc_1AE41B3:         var_140.Text = CStr(var_118)
  loc_1AE41D6:         Set var_F0 = Me.Txt
  loc_1AE41DC:         Call 0.Method_Txt_Validate0 (CInt(&H12), var_F4)
  loc_1AE41FB:         Set var_13C = Me.Txt
  loc_1AE4201:         Call 0.Method_Txt_Validate0 (CInt(&HF), var_140)
  loc_1AE4209:         var_140.Text = Proc_6_38_E68A98(CVar(var_F4))
  loc_1AE422B:         Set var_F0 = Me.Txt
  loc_1AE4231:         Call 0.Method_Txt_Validate0 (CInt(&H15), var_F4)
  loc_1AE4257:         Set var_13C = Me.Txt
  loc_1AE425D:         Call 0.Method_Txt_Validate0 (CInt(&HB), var_140)
  loc_1AE4265:         var_140.Tag = Proc_6_38_E68A98(CVar(var_F4.Tag))
  loc_1AE4286:         Set var_F0 = Me.Txt
  loc_1AE428C:         Call 0.Method_Txt_Validate0 (CInt(&H15), var_F4)
  loc_1AE42AB:         Set var_13C = Me.Txt
  loc_1AE42B1:         Call 0.Method_Txt_Validate0 (CInt(&HB), var_140)
  loc_1AE42B9:         var_140.Text = Proc_6_38_E68A98(CVar(var_F4))
  loc_1AE4306:         Set var_13C = Me.Txt
  loc_1AE430C:         Call 0.Method_Txt_Validate0 (CInt(&H32), var_140)
  loc_1AE4314:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomTaxStru")))
  loc_1AE4361:         Set var_13C = Me.Txt
  loc_1AE4367:         Call 0.Method_Txt_Validate0 (CInt(&H26), var_140)
  loc_1AE436F:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RRTaxInc")))
  loc_1AE43BC:         Set var_13C = Me.Txt
  loc_1AE43C2:         Call 0.Method_Txt_Validate0 (CInt(&H29), var_140)
  loc_1AE43F8:         var_F4 = Me.Fields.Item("RoomTarrif")
  loc_1AE4407:         Proc_6_39_E7C810(var_118, CVar(var_F4))
  loc_1AE4421:         If (var_118 = 0) Then
  loc_1AE442F:           Set var_F0 = Me.Txt
  loc_1AE4435:           Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE4448:           Set var_13C = Me.Txt
  loc_1AE444E:           Call 0.Method_Txt_Validate0 (CInt(&H26), var_140)
  loc_1AE4475:           var_15C = Me.Fields.Item("RoomRate")
  loc_1AE4484:           Proc_6_39_E7C810(var_118, CVar(var_15C))
  loc_1AE4497:           Set var_1A4 = Me.Txt
  loc_1AE449D:           Call 0.Method_Txt_Validate0 (CInt(&H32), var_1A8)
  loc_1AE44A5:           var_160 = var_1A8.Text
  loc_1AE44C9:           Proc_96_77_1443D08(var_F4, Proc_6_38_E68A98(CVar(Me.Fields.Item("RRServiceChrg"))), CSng(var_118))
  loc_1AE44F0:         Else
  loc_1AE4519:           Proc_6_39_E7C810(var_118, CVar(Me.Fields.Item("RoomTarrif")))
  loc_1AE4530:           Set var_13C = Me.Txt
  loc_1AE4536:           Call 0.Method_Txt_Validate0 (CInt(&H10), var_140, CStr(var_118))
  loc_1AE453E:           var_140.Text = var_160
  loc_1AE457F:           Proc_6_39_E7C810(var_118, CVar(Me.Fields.Item("RoomRate")))
  loc_1AE4596:           Set var_13C = Me.Txt
  loc_1AE459C:           Call 0.Method_Txt_Validate0 (CInt(&H10), var_140)
  loc_1AE45A4:           var_140.Tag = CStr(var_118)
  loc_1AE45BC:         End If
  loc_1AE45D6:         var_F4 = Me.Fields.Item("RoomTarrif")
  loc_1AE45E5:         Proc_6_39_E7C810(var_118, CVar(var_F4))
  loc_1AE45FF:         If (var_118 = 0) Then
  loc_1AE4610:           Set var_F0 = Me.Txt
  loc_1AE4616:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4)
  loc_1AE4631:           Set var_13C = Me.Txt
  loc_1AE4637:           Call 0.Method_Txt_Validate0 (CInt(0), var_140)
  loc_1AE4652:           Set var_158 = Me.Txt
  loc_1AE4658:           Call 0.Method_Txt_Validate0 (CInt(1), var_15C)
  loc_1AE4673:           Set var_1A4 = Me.Txt
  loc_1AE4679:           Call 0.Method_Txt_Validate0 (CInt(&HD), var_1A8)
  loc_1AE468E:           var_170 = Val(var_1A8.Text)
  loc_1AE469F:           Set var_1AC = Me.Txt
  loc_1AE46A5:           Call 0.Method_Txt_Validate0 (CInt(&HF), var_1B0, var_1C4)
  loc_1AE46D7:           Proc_96_78_13902F0(var_F4.Tag, var_140.Text, CDate(var_15C.Text))
  loc_1AE46EC:           Set var_1B4 = Me.Txt
  loc_1AE46F2:           Call 0.Method_Txt_Validate0 (CInt(&H33), var_1E4, CStr(CInt(var_1B0.Text)))
  loc_1AE46FA:           var_1E4.Text = var_1C4
  loc_1AE472C:         Else
  loc_1AE4755:           Proc_6_39_E7C810(var_118, CVar(Me.Fields.Item("RackRate")))
  loc_1AE476C:           Set var_13C = Me.Txt
  loc_1AE4772:           Call 0.Method_Txt_Validate0 (CInt(&H33), var_140)
  loc_1AE477A:           var_140.Text = CStr(var_118)
  loc_1AE4792:         End If
  loc_1AE47CB:         Set var_13C = Me.Txt
  loc_1AE47D1:         Call 0.Method_Txt_Validate0 (CInt(&H1E), var_140)
  loc_1AE47D9:         var_140.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("PlanCode")))
  loc_1AE4826:         Set var_13C = Me.Txt
  loc_1AE482C:         Call 0.Method_Txt_Validate0 (CInt(&H1E), var_140)
  loc_1AE4834:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("PlanName")))
  loc_1AE488C:         Set var_13C = Me.Txt
  loc_1AE4892:         Call 0.Method_Txt_Validate0 (CInt(&H1A), var_140)
  loc_1AE489A:         var_140.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_1AE48F6:         Set var_13C = Me.Txt
  loc_1AE48FC:         Call 0.Method_Txt_Validate0 (CInt(&H1B), var_140)
  loc_1AE4904:         var_140.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_1AE4936:         var_F4 = Me.Fields.Item("CityName")
  loc_1AE4976:         var_140 = Me.Fields.Item("StateName")
  loc_1AE4992:         var_160 = Proc_6_38_E68A98(Trim(CVar(var_140)), Proc_6_38_E68A98(Trim(CVar(var_F4))) & ",")
  loc_1AE49A3:         var_1D4 = "CountryName"
  loc_1AE49B2:         var_158 = Me.Fields
  loc_1AE49C9:         var_1A0 = Trim(CVar(var_158.Item(var_1D4)))
  loc_1AE49E8:         Set var_1A4 = Me.Txt
  loc_1AE49EE:         Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1A8)
  loc_1AE49F6:         var_1A8.Text = var_F4 & var_160 & "," & Proc_6_38_E68A98(var_1A0)
  loc_1AE4A61:         Set var_13C = Me.Txt
  loc_1AE4A67:         Call 0.Method_Txt_Validate0 (CInt(&H23), var_140)
  loc_1AE4A6F:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_1AE4AD6:         Set var_13C = Me.Txt
  loc_1AE4ADC:         Call 0.Method_Txt_Validate0 (CInt(&H24), var_140)
  loc_1AE4AE4:         var_140.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_1AE4B38:         var_118 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_1AE4B55:         Set var_13C = Me.Txt
  loc_1AE4B5B:         Call 0.Method_Txt_Validate0 (CInt(&H25), var_140)
  loc_1AE4B63:         var_140.Text = CStr(Right(var_118, 2))
  loc_1AE4BBA:         Set var_13C = Me.Txt
  loc_1AE4BC0:         Call 0.Method_Txt_Validate0 (CInt(&H20), var_140)
  loc_1AE4BC8:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_1AE4C15:         Set var_13C = Me.Txt
  loc_1AE4C1B:         Call 0.Method_Txt_Validate0 (CInt(&H21), var_140)
  loc_1AE4C23:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_1AE4C70:         Set var_13C = Me.Txt
  loc_1AE4C76:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_140)
  loc_1AE4C7E:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments3")))
  loc_1AE4CCB:         Set var_13C = Me.Txt
  loc_1AE4CD1:         Call 0.Method_Txt_Validate0 (CInt(9), var_140)
  loc_1AE4CD9:         var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_1AE4D0F:         var_108 = CVar(Me.Fields.Item("PlanDisc")) 'Address
  loc_1AE4D16:         Proc_6_39_E7C810(var_118)
  loc_1AE4D4D:         Set var_13C = Me.Txt
  loc_1AE4D53:         Call 0.Method_Txt_Validate0 (CInt(&H2C), var_140, CStr(Format(var_118, "0.00000")))
  loc_1AE4D5B:         var_140.Text = 1
  loc_1AE4DA0:         Proc_6_39_E7C810(var_118, CVar(Me.Fields.Item("PlanDiscAmt")))
  loc_1AE4DC0:         var_180 = Format(var_118, "0.00")
  loc_1AE4DD7:         Set var_13C = Me.Txt
  loc_1AE4DDD:         Call 0.Method_Txt_Validate0 (CInt(&H2D), var_140, CStr(var_180), 1)
  loc_1AE4DE5:         var_140.Text = 1
  loc_1AE4E39:         Me.LblDiscAppOn.Caption = Proc_6_38_E68A98(CVar(Me.Fields.Item("PlanDiscAppon")), 1)
  loc_1AE4E74:         Proc_6_39_E7C810(var_118, CVar(Me.Fields.Item("RoDisc")))
  loc_1AE4E8B:         Set var_13C = Me.Txt
  loc_1AE4E91:         Call 0.Method_Txt_Validate0 (CInt(&H27), var_140)
  loc_1AE4E99:         var_140.Text = CStr(var_118)
  loc_1AE4ECB:         var_F4 = Me.Fields.Item("RSDisc")
  loc_1AE4EDA:         Proc_6_39_E7C810(var_118, CVar(var_F4))
  loc_1AE4EE2:         var_F8 = CStr(var_118)
  loc_1AE4EF1:         Set var_13C = Me.Txt
  loc_1AE4EF7:         Call 0.Method_Txt_Validate0 (CInt(&H28), var_140)
  loc_1AE4F35:         Set var_F0 = Me.Txt
  loc_1AE4F3B:         Call 0.Method_Txt_Validate0 (CInt(0), var_F4, var_F8, "Select Code as SearchCode,Code as RoomNo, Name as Quot from roommast where type='RO' and Code='")
  loc_1AE4F43:         var_108 = var_F4.Text
  loc_1AE4F4C:         var_144 = -1 & var_F8
  loc_1AE4F53:         var_1B8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime"))) & "' and Code not in (Select RoomNO from roomOcc where ChkOutDate is NULL and RoomNO <>'"
  loc_1AE4F64:         Set var_13C = Me.Txt
  loc_1AE4F6A:         Call 0.Method_Txt_Validate0 (CInt(0), var_140, var_160)
  loc_1AE4F72:         var_1B8 = var_F8
  loc_1AE4F8B:         unk_52DB4B.Execute var_158 & var_160 & "')", var_108, 
  loc_1AE4FCA:         CVarUnk
  loc_1AE4FCF:         VerifyVarObj
  loc_1AE4FD5:         Set var_F0 = Me.DGNewRoomNo
  loc_1AE4FDB:         LateIdStAd
  loc_1AE500D:         Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4, var_F8, "Select Name from PlanMast where Code='", var_108)
  loc_1AE5015:         -1 = var_F4.Tag
  loc_1AE501E:         var_144 = var_13C & var_F8
  loc_1AE502E:         unk_52DB4B.Execute var_144 & "'", Me.Txt, var_158
  loc_1AE5065:         If (var_13C.RecordCount > 0) Then
  loc_1AE50A0:           Set var_F0 = Me.Txt
  loc_1AE50A6:           Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4, var_144, "Select Name from PlanMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Code='", var_108)
  loc_1AE50AE:           -1 = var_F4.Tag
  loc_1AE50C7:           unk_52DB4B.Execute var_13C & var_144 & "'", var_140, 0
  loc_1AE50D7:            = var_140.Item()
  loc_1AE50DF:           var_118 = CVar(var_13C.Fields) 'Address
  loc_1AE50F6:           Set var_15C = Me.Txt
  loc_1AE50FC:           Call 0.Method_Txt_Validate0 (CInt(&H1E), var_1A4)
  loc_1AE5104:           var_1A4.Text = Proc_6_38_E68A98(var_118)
  loc_1AE513C:           Set var_F0 = Me.Txt
  loc_1AE5142:           Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4)
  loc_1AE516B:           If ((var_F4.Tag <> vbNullString) And (global_110 = &HFF)) Then
  loc_1AE517C:             Set var_F0 = Me.Txt
  loc_1AE5182:             Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4)
  loc_1AE519D:             Set var_13C = Me.Txt
  loc_1AE51A3:             Call 0.Method_Txt_Validate0 (CInt(&H18), var_140)
  loc_1AE51AB:             var_140.Tag = var_F4.Tag
  loc_1AE51BE:             Call Proc_59_50_14EB20C()
  loc_1AE51D1:             Set var_F0 = Me.Txt
  loc_1AE51D7:             Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE51DF:             var_F8 = var_F4.Tag
  loc_1AE51E7:             var_108 = CVar(var_F8) 'String
  loc_1AE51ED:             Proc_6_39_E7C810(var_118)
  loc_1AE5204:             Set var_13C = Me.Txt
  loc_1AE520A:             Call 0.Method_Txt_Validate0 (CInt(&H2E), var_140)
  loc_1AE5212:             var_140.Text = CStr(var_118)
  loc_1AE522F:           Else
  loc_1AE523D:             Set var_F0 = Me.Txt
  loc_1AE5243:             Call 0.Method_Txt_Validate0 (CInt(&H18), var_F4)
  loc_1AE524B:             var_F4.Tag = vbNullString
  loc_1AE526A:             Me.FGrid3.Row = 1
  loc_1AE5272:             var_128 = vbNullString
  loc_1AE527C:             Set var_F0 = Me.FGrid3
  loc_1AE528D:             var_128 = 1
  loc_1AE52A0:             Me.FGrid3.FixedRows = var_128
  loc_1AE52A8:           End If
  loc_1AE52A8:         End If
  loc_1AE52AB:       Else
  loc_1AE52B3:         If (var_EA = CInt(4)) Then
  loc_1AE52C3:           Set var_F0 = Me.Txt
  loc_1AE52C9:           Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE52D1:           FGrid3.DispID_10000 = var_F4.Text
  loc_1AE52EF:           Set var_13C = Me.Txt
  loc_1AE52F5:           Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE531F:           Set var_F0 = Me.Txt
  loc_1AE5325:           Call 0.Method_Txt_Validate0 (CInt(4), var_F4)
  loc_1AE5339:           var_118 = "DDDD"
  loc_1AE5349:           var_138 = Format(CVar(var_F4), var_118)
  loc_1AE535F:           1(CStr(var_138)).Caption = 1
  loc_1AE5385:           Set var_13C = Me.Txt
  loc_1AE538B:           Call 0.Method_Txt_Validate0 (CInt(4), var_140)
  loc_1AE5393:           var_144 = Proc_6_34_14ECF20(CStr(var_138), "DDDD")
  loc_1AE53A6:           Set var_F0 = Me.Txt
  loc_1AE53AC:           Call 0.Method_Txt_Validate0 (CInt(1), var_F4)
  loc_1AE53B4:           var_F8 = var_F4.Text
  loc_1AE53D6:           If (CDate(var_F8) > CDate(var_144)) Then
  loc_1AE53F2:             MsgBox("Departure Date Must Be Greater than Check in Date", &H40, var_118, var_138, var_180)
  loc_1AE5404:             arg_10 = &HFF
  loc_1AE5407:           End If
  loc_1AE540A:         Else
  loc_1AE5412:           If Not (var_EA = CInt(5)) Then
  loc_1AE541D:             If (var_EA = CInt(2)) Then
  loc_1AE5420:             End If
  loc_1AE542D:             Set var_F0 = Me.Txt
  loc_1AE5433:             Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE543B:             arg_10 = var_F4.Text
  loc_1AE5457:             If (CDbl(Val(var_F8)) > CDbl(&H17)) Then
  loc_1AE5473:               MsgBox("Invalid Time", &H40, var_118, var_138, var_180)
  loc_1AE5485:               arg_10 = &HFF
  loc_1AE5488:             End If
  loc_1AE5492:             Set var_F0 = Me.Txt
  loc_1AE5498:             Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE54AC:             var_118 = "00"
  loc_1AE54BC:             var_138 = Format(CVar(var_F4), var_118)
  loc_1AE54C4:             var_F8 = CStr(var_138)
  loc_1AE54D2:             Set var_13C = Me.Txt
  loc_1AE54D8:             Call 0.Method_Txt_Validate0 (Cancel, var_140, var_F8, 1)
  loc_1AE54E0:             var_140.Text = 1
  loc_1AE54FD:           Else
  loc_1AE5505:             If Not (var_EA = CInt(3)) Then
  loc_1AE5510:               If (var_EA = CInt(6)) Then
  loc_1AE5513:               End If
  loc_1AE5520:               Set var_F0 = Me.Txt
  loc_1AE5526:               Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE552E:               arg_10 = var_F4.Text
  loc_1AE554A:               If (CDbl(Val(var_F8)) > CDbl(&H3B)) Then
  loc_1AE5566:                 MsgBox("Invalid Time", &H40, var_118, var_138, var_180)
  loc_1AE5578:                 arg_10 = &HFF
  loc_1AE557B:               End If
  loc_1AE5585:               Set var_F0 = Me.Txt
  loc_1AE558B:               Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE55A8:               var_108 = CVar(var_F4) 'Address
  loc_1AE55B7:               var_F8 = CStr(Format(var_108, "00"))
  loc_1AE55C5:               Set var_13C = Me.Txt
  loc_1AE55CB:               Call 0.Method_Txt_Validate0 (Cancel, var_140, var_F8, 1)
  loc_1AE55D3:               var_140.Text = 1
  loc_1AE55F0:             Else
  loc_1AE55F8:               If (var_EA = CInt(&HC)) Then
  loc_1AE5609:                 Set var_F0 = Me.Txt
  loc_1AE560F:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4, var_F8)
  loc_1AE5617:                 arg_10 = var_F4.Text
  loc_1AE5632:                 Set var_13C = Me.Txt
  loc_1AE5638:                 Call 0.Method_Txt_Validate0 (CInt(&HC), var_140, var_144)
  loc_1AE5640:                 (var_F8 = vbNullString) = var_140.Text
  loc_1AE5660:                 If (var_108 And (var_144 = vbNullString)) Then
  loc_1AE5665:                   arg_10 = &HFF
  loc_1AE5668:                 End If
  loc_1AE5673:                 Set var_F0 = Me.Txt
  loc_1AE5679:                 Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4)
  loc_1AE56A2:                 If CBool(Trim(CVar(var_F4)) <> vbNullString) Then
  loc_1AE56B9:                   var_F8 = "Select RoomMast.RoomCat,RoomCat.Name,Revmast.TaxStru as RoomTaxStru From RoomMast Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_1AE56C0:                   var_138 = CVar(var_F8 & "' or RoomMast.LOGSITE_CODE='HO') AND RoomMast.Type='RO' AND RoomMast.InclCount='Y' and RoomMast.Code='") 'String
  loc_1AE56CE:                   Set var_F0 = Me.Txt
  loc_1AE56D4:                   Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4, var_138, var_1A0)
  loc_1AE56EB:                   var_180 = -1 & Trim(CVar(var_F4)) 
  loc_1AE56F4:                   var_190 = var_180 & "'" 
  loc_1AE5702:                   unk_52DB4B.Execute CStr(var_190), var_13C, arg_10
  loc_1AE570D:                   Set var_E8 = var_13C
  loc_1AE5741:                   If (var_E8.RecordCount > 0) Then
  loc_1AE577A:                     Set var_13C = Me.Txt
  loc_1AE5780:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_140)
  loc_1AE5788:                     var_140.Text = Proc_6_38_E68A98(CVar(var_E8.Fields.Item("Name")))
  loc_1AE57B6:                     var_F4 = var_E8.Fields.Item("RoomCat")
  loc_1AE57D5:                     Set var_13C = Me.Txt
  loc_1AE57DB:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_140)
  loc_1AE57E3:                     var_140.Tag = CStr(var_F4.Value)
  loc_1AE5807:                     Set var_F0 = Me.Txt
  loc_1AE580D:                     Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4)
  loc_1AE582C:                     If (var_F4.Tag = vbNullString) Then
  loc_1AE5846:                       var_F4 = var_E8.Fields.Item("RoomTaxStru")
  loc_1AE5865:                       Set var_13C = Me.Txt
  loc_1AE586B:                       Call 0.Method_Txt_Validate0 (CInt(&H32), var_140)
  loc_1AE5873:                       var_140.Text = Proc_6_38_E68A98(CVar(var_F4))
  loc_1AE5887:                     End If
  loc_1AE5895:                     Set var_F0 = Me.Txt
  loc_1AE589B:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4)
  loc_1AE58A3:                     var_F8 = var_F4.Tag
  loc_1AE58B6:                     Set var_13C = Me.Txt
  loc_1AE58BC:                     Call 0.Method_Txt_Validate0 (CInt(0), var_140)
  loc_1AE58C4:                     var_1BC = var_140.Text
  loc_1AE58D7:                     Set var_158 = Me.Txt
  loc_1AE58DD:                     Call 0.Method_Txt_Validate0 (CInt(1), var_15C)
  loc_1AE58F8:                     Set var_1A4 = Me.Txt
  loc_1AE58FE:                     Call 0.Method_Txt_Validate0 (CInt(&HD), var_1A8)
  loc_1AE5913:                     var_170 = Val(var_1A8.Text)
  loc_1AE5924:                     Set var_1AC = Me.Txt
  loc_1AE592A:                     Call 0.Method_Txt_Validate0 (CInt(&HF), var_1B0)
  loc_1AE595C:                     Proc_96_78_13902F0(var_F8, var_1BC, CDate(var_15C.Text))
  loc_1AE5971:                     Set var_1B4 = Me.Txt
  loc_1AE5977:                     Call 0.Method_Txt_Validate0 (CInt(&H33), var_1E4, CStr(CInt(var_170)))
  loc_1AE597F:                     var_1E4.Text = var_1B0.Text
  loc_1AE59AE:                   End If
  loc_1AE59AE:                 End If
  loc_1AE59B1:               Else
  loc_1AE59B9:                 If (var_EA = CInt(&H18)) Then
  loc_1AE59C7:                   Set var_F0 = Me.Txt
  loc_1AE59CD:                   Call 0.Method_Txt_Validate0 (CInt(&H18), var_F4)
  loc_1AE59F6:                   If (Trim(CVar(var_F4)) = vbNullString) Then
  loc_1AE59FB:                     arg_10 = &HFF
  loc_1AE59FE:                     Exit Sub
  loc_1AE59FF:                   End If
  loc_1AE5A4D:                   Set var_F0 = Me.Txt
  loc_1AE5A53:                   Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE5A5B:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_F4.Text
  loc_1AE5A73:                   If (arg_10 Or (var_F8 = vbNullString)) Then
  loc_1AE5A83:                     Set var_F0 = Me.Txt
  loc_1AE5A89:                     Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE5A91:                     var_F4.Tag = vbNullString
  loc_1AE5A9D:                     Exit Sub
  loc_1AE5A9E:                   End If
  loc_1AE5AD9:                   Set var_13C = Me.Txt
  loc_1AE5ADF:                   Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE5AE7:                   var_140.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1AE5B38:                   Set var_13C = Me.Txt
  loc_1AE5B3E:                   Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE5B46:                   var_140.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1AE5B95:                   Set var_13C = Me.Txt
  loc_1AE5B9B:                   Call 0.Method_Txt_Validate0 (CInt(&H32), var_140)
  loc_1AE5BA3:                   var_140.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomTaxStru")))
  loc_1AE5BC0:                   If (global_110 = &HFF) Then
  loc_1AE5BC3:                     Call Proc_59_44_19808A8(var_170)
  loc_1AE5BC8:                   End If
  loc_1AE5C04:                   Set var_13C = Me.Txt
  loc_1AE5C0A:                   Call 0.Method_Txt_Validate0 (CInt(&H19), var_140)
  loc_1AE5C12:                   var_140.Text = CStr(Me.Fields.Item("Total").Value)
  loc_1AE5C64:                   Set var_13C = Me.Txt
  loc_1AE5C6A:                   Call 0.Method_Txt_Validate0 (CInt(&H19), var_140)
  loc_1AE5C72:                   var_140.Tag = CStr(Me.Fields.Item("App_Date").Value)
  loc_1AE5CC4:                   Set var_13C = Me.Txt
  loc_1AE5CCA:                   Call 0.Method_Txt_Validate0 (CInt(&H1E), var_140)
  loc_1AE5CD2:                   var_140.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1AE5D05:                   var_F4 = Me.Fields.Item("Code")
  loc_1AE5D0D:                   var_108 = var_F4.Value
  loc_1AE5D24:                   Set var_13C = Me.Txt
  loc_1AE5D2A:                   Call 0.Method_Txt_Validate0 (CInt(&H1E), var_140)
  loc_1AE5D32:                   var_140.Tag = CStr(var_108)
  loc_1AE5D4B:                 Else
  loc_1AE5D53:                   If (var_EA = CInt(&HB)) Then
  loc_1AE5D63:                     Set var_F0 = Me.Txt
  loc_1AE5D69:                     Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE5D88:                     If (var_F4.Text = vbNullString) Then
  loc_1AE5D98:                       Set var_F0 = Me.Txt
  loc_1AE5D9E:                       Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE5DA6:                       var_F4.Tag = vbNullString
  loc_1AE5DBC:                       Set global_96 = New 
  loc_1AE5DCE:                       Me.Recordset15.CursorLocation = 3
  loc_1AE5DE7:                       var_F8 = "Select Code as SearchCode, Code as RoomNo,Name as Quot from RoomMast Where LogSite_Code='" & MemVar_1F92078
  loc_1AE5DEE:                       var_118 = CVar(var_F8 & "' and type='RO' And InclCount='Y' and Code not in ( Select RoomNo from RoomOcc where type not  in ('C','O')) and Code not in ( Select RoomCode from RoomBLockOut where Type In ('O','M') And ") 'String
  loc_1AE5DFC:                       Proc_6_7_F25D88(var_108, MemVar_1F920EC, var_118)
  loc_1AE5E11:                       var_144 = CStr(var_190 & var_108 & " between Fromdate and ToDate) order by Code")
  loc_1AE5E1B:                       unk_52DB4B.Execute var_144, -1, var_F0
  loc_1AE5E2C:                       Set global_96 = var_F0
  loc_1AE5E54:                       CVarUnk
  loc_1AE5E59:                       VerifyVarObj
  loc_1AE5E5F:                       Set var_F0 = Me.DGNewRoomNo
  loc_1AE5E65:                       LateIdStAd
  loc_1AE5E87:                       Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4, vbNullString)
  loc_1AE5E8F:                       var_F4.Text = Me.Txt
  loc_1AE5E9E:                     Else
  loc_1AE5EEC:                       Set var_F0 = Me.Txt
  loc_1AE5EF2:                       Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE5EFA:                       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_F4.Text
  loc_1AE5F12:                       If (global_96 Or (var_F8 = vbNullString)) Then
  loc_1AE5F22:                         Set var_F0 = Me.Txt
  loc_1AE5F28:                         Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE5F30:                         var_F4.Tag = vbNullString
  loc_1AE5F3C:                         Exit Sub
  loc_1AE5F3D:                       End If
  loc_1AE5F78:                       Set var_13C = Me.Txt
  loc_1AE5F7E:                       Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE5F86:                       var_140.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1AE5FB9:                       var_F4 = Me.Fields.Item("Code")
  loc_1AE5FD7:                       Set var_13C = Me.Txt
  loc_1AE5FDD:                       Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE5FE5:                       var_140.Tag = CStr(var_F4.Value)
  loc_1AE6009:                       Set var_F0 = Me.Txt
  loc_1AE600F:                       Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4)
  loc_1AE602E:                       If (var_F4.Tag = vbNullString) Then
  loc_1AE604B:                         var_F4 = Me.Fields.Item("RoomTaxStru")
  loc_1AE6053:                         var_108 = CVar(var_F4) 'Address
  loc_1AE606A:                         Set var_13C = Me.Txt
  loc_1AE6070:                         Call 0.Method_Txt_Validate0 (CInt(&H32), var_140)
  loc_1AE6078:                         var_140.Text = Proc_6_38_E68A98(var_108)
  loc_1AE608C:                       End If
  loc_1AE6096:                       Set global_96 = New 
  loc_1AE60A8:                       Me.CursorLocation = 3
  loc_1AE60C1:                       var_F8 = "Select Code as SearchCode, Code as RoomNo,Name as Quot from RoomMast Where LogSite_Code='" & MemVar_1F92078
  loc_1AE60C8:                       var_160 = var_F8 & "' and type='RO' And InclCount='Y' and Code not in ( Select RoomNo from RoomOcc where type not  in ('C','O') AND ROOMNO<>'"
  loc_1AE60D9:                       Set var_F0 = Me.Txt
  loc_1AE60DF:                       Call 0.Method_Txt_Validate0 (CInt(0), var_F4, var_144, var_160)
  loc_1AE60E7:                       var_190 = var_F4.Text
  loc_1AE60F0:                       var_1B8 = -1 & var_144
  loc_1AE60F7:                       var_1C0 = var_13C & var_144 & "') AND TYPE='RO' And RoomCat='"
  loc_1AE6107:                       Set var_13C = Me.Txt
  loc_1AE610D:                       Call 0.Method_Txt_Validate0 (Cancel, var_140, var_1BC)
  loc_1AE6115:                       var_1C0 = var_140.Tag
  loc_1AE6125:                       var_118 = CVar(var_158 & var_1BC & "' and Code not in ( Select RoomCode from RoomBLockOut where Type In ('O','M') And ") 'String
  loc_1AE6133:                       Proc_6_7_F25D88(var_108, MemVar_1F920EC)
  loc_1AE6152:                       unk_52DB4B.Execute CStr(var_118 & var_108 & " between Fromdate and ToDate) order by code"), , 
  loc_1AE6163:                       Set global_96 = var_158
  loc_1AE619F:                       CVarUnk
  loc_1AE61A4:                       VerifyVarObj
  loc_1AE61AA:                       Set var_F0 = Me.DGNewRoomNo
  loc_1AE61B0:                       LateIdStAd
  loc_1AE61E2:                       Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4, "RoomNo='", 0)
  loc_1AE6210:                       Me.Find CStr(1 & Trim(CVar(var_F4)) & "'"), var_1D4, Me.Txt
  loc_1AE6267:                       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1AE6278:                         Set var_F0 = Me.Txt
  loc_1AE627E:                         Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4)
  loc_1AE6286:                         var_F4.Text = vbNullString
  loc_1AE62A0:                         Set var_F0 = Me.Txt
  loc_1AE62A6:                         Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4)
  loc_1AE62AE:                         var_F4.Tag = vbNullString
  loc_1AE62BA:                       End If
  loc_1AE62BA:                     End If
  loc_1AE62BD:                   Else
  loc_1AE62C5:                     If (var_EA = CInt(&H10)) Then
  loc_1AE62D6:                       Set var_F0 = Me.Txt
  loc_1AE62DC:                       Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4)
  loc_1AE62E4:                       var_F8 = var_F4.Text
  loc_1AE6300:                       Set var_13C = Me.Txt
  loc_1AE6306:                       Call 0.Method_Txt_Validate0 (CInt(0), var_140)
  loc_1AE6342:                       If CBool((var_F8 = vbNullString) And (Trim(CVar(var_140)) = vbNullString)) Then
  loc_1AE6350:                         Set var_F0 = Me.Txt
  loc_1AE6356:                         Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4)
  loc_1AE635E:                         var_F4.SetFocus
  loc_1AE636C:                         arg_10 = &HFF
  loc_1AE636F:                         Exit Sub
  loc_1AE6370:                       End If
  loc_1AE6373:                     Else
  loc_1AE637B:                       If (var_EA = CInt(&H16)) Then
  loc_1AE638B:                         Set var_F0 = Me.Txt
  loc_1AE6391:                         Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE6399:                         arg_10 = var_F4.Text
  loc_1AE63B0:                         If (var_F8 = vbNullString) Then
  loc_1AE63B5:                           arg_10 = &HFF
  loc_1AE63B8:                           Exit Sub
  loc_1AE63B9:                         End If
  loc_1AE63BC:                       Else
  loc_1AE63C4:                         If (var_EA = CInt(&H17)) Then
  loc_1AE63D4:                           Set var_F0 = Me.Txt
  loc_1AE63DA:                           Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE63E2:                           arg_10 = var_F4.Text
  loc_1AE63F9:                           If (var_F8 = vbNullString) Then
  loc_1AE63FE:                             arg_10 = &HFF
  loc_1AE6401:                             GoTo loc_1AE6404
  loc_1AE6404:                             ' Referenced from:                         1AE6401
  loc_1AE6404:                           End If
  loc_1AE6407:                         Else
  loc_1AE640F:                           If (var_EA = CInt(&H2C)) Then
  loc_1AE641B:                             If (global_110 = &HFF) Then
  loc_1AE641E:                               Call Proc_59_48_1D76B48(arg_10)
  loc_1AE6423:                             End If
  loc_1AE6426:                           Else
  loc_1AE642E:                             If (var_EA = CInt(&H2D)) Then
  loc_1AE643A:                               If (global_110 = &HFF) Then
  loc_1AE643D:                                 Call Proc_59_48_1D76B48(global_96)
  loc_1AE6442:                               End If
  loc_1AE6445:                             Else
  loc_1AE644D:                               If (var_EA = CInt(&HF)) Then
  loc_1AE6453:                                 var_C0 = CDbl(0)
  loc_1AE6459:                                 var_C8 = CDbl(0)
  loc_1AE645F:                                 var_D0 = CDbl(0)
  loc_1AE6476:                                 Set var_F0 = Me.Txt
  loc_1AE647C:                                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4, var_F8, CDbl(0))
  loc_1AE6484:                                 var_D0 = var_F4.Tag
  loc_1AE649E:                                 var_AE = CStr(Trim(CVar(var_F8)))
  loc_1AE64BB:                                 Set var_F0 = Me.Txt
  loc_1AE64C1:                                 Call 0.Method_Txt_Validate0 (CInt(0), var_F4, var_AE)
  loc_1AE64D9:                                 var_A4 = CStr(Trim(CVar(var_F4)))
  loc_1AE64F4:                                 Set var_F0 = Me.Txt
  loc_1AE64FA:                                 Call 0.Method_Txt_Validate0 (CInt(1), var_F4, var_F8)
  loc_1AE6502:                                 var_C8 = var_F4.Text
  loc_1AE650C:                                 var_B8 = CDate(var_F8)
  loc_1AE6524:                                 Set var_F0 = Me.Txt
  loc_1AE652A:                                 Call 0.Method_Txt_Validate0 (CInt(&HF), var_F4)
  loc_1AE6539:                                 var_118 = Trim(CVar(var_F4))
  loc_1AE6550:                                 var_9C = CStr(Ucase(var_118))
  loc_1AE656B:                                 var_108 = Trim(var_A4)
  loc_1AE657E:                                 If CBool(var_108 <> vbNullString) Then
  loc_1AE659C:                                   var_144 = "SELECT MULTPER,* FROM ROOMMAST WHERE LogSite_Code='" & MemVar_1F92078 & "' and TYPE='RO' AND ROOMCAT='"
  loc_1AE65A9:                                   var_1B8 = var_144 & var_AE
  loc_1AE65B9:                                   unk_52DB4B.Execute var_1B8 & "'", var_108, -1
  loc_1AE65C4:                                   Set var_98 = var_F0
  loc_1AE65DD:                                 Else
  loc_1AE6607:                                   unk_52DB4B.Execute "SELECT MULTPER FROM ROOMCAT WHERE CODE='" & var_AE & "'", var_108, -1
  loc_1AE6612:                                   Set var_98 = var_F0
  loc_1AE6624:                                 End If
  loc_1AE663B:                                 If (Me.Recordset15.RecordCount > 0) Then
  loc_1AE6650:                                   var_F0 = Me.Recordset15.Fields
  loc_1AE6660:                                   var_108 = CVar(var_F0.Item("MultPer")) 'Address
  loc_1AE6667:                                   Proc_6_39_E7C810(var_118, var_108, var_F0, var_F0)
  loc_1AE66A4:                                   var_180 = (var_118 = 0) 'Variant
  loc_1AE66B7:                                   var_DA = CInt(IIf(var_180, 2, CVar(Me.Recordset15.Fields.Item("MultPer"))))
  loc_1AE66D3:                                 Else
  loc_1AE66D5:                                   var_DA = 2
  loc_1AE66D8:                                 End If
  loc_1AE66F5:                                 Proc_6_7_F25D88(var_108, var_B8, "SELECT * FROM SEASONMAST WHERE ", var_180, -1, var_F0)
  loc_1AE6706:                                 var_138 = var_DA & var_108 & " BETWEEN FROMDATE AND TODATE" 
  loc_1AE6714:                                 unk_52DB4B.Execute CStr(var_138), var_DA, var_9C
  loc_1AE671F:                                 Set var_98 = var_F0
  loc_1AE674A:                                 If (Me.Recordset15.RecordCount > 0) Then
  loc_1AE675F:                                   var_F0 = Me.Recordset15.Fields
  loc_1AE6767:                                   var_F4 = var_F0.Item("RateCode")
  loc_1AE676F:                                   var_108 = CVar(var_F4) 'Address
  loc_1AE6776:                                   var_118 = Trim(var_108)
  loc_1AE6782:                                   var_9A = CStr(var_118)
  loc_1AE6793:                                 Else
  loc_1AE6799:                                   var_9A = "*"
  loc_1AE679C:                                 End If
  loc_1AE67B2:                                 var_F8 = var_AE
  loc_1AE67B6:                                 var_144 = "SELECT * FROM RATELIST WHERE ROOMCAT='" & var_F8
  loc_1AE67C6:                                 unk_52DB4B.Execute var_144 & "' ORDER BY ROOMCAT,ROOMNO,CODE,OCCTYPE", var_108, -1
  loc_1AE67D1:                                 Set var_98 = var_F0
  loc_1AE67FA:                                 If (Me.Recordset15.RecordCount <= 0) Then
  loc_1AE6816:                                   MsgBox("Empty Rate table", 0, var_118, var_138, var_180)
  loc_1AE6826:                                   Exit Sub
  loc_1AE6827:                                 End If
  loc_1AE6838:                                 Call 0.Method_Txt_Validate0 (CInt(&HF), var_F4, Me.Txt)
  loc_1AE685A:                                 var_218 = Ucase(Trim(CVar(var_F4))) 'Variant
  loc_1AE6873:                                 If Not (var_218 = "1") Then
  loc_1AE6881:                                   If Not (var_218 = "2") Then
  loc_1AE688F:                                     If Not (var_218 = "3") Then
  loc_1AE689D:                                       If Not (var_218 = "4") Then
  loc_1AE68AB:                                         If (var_218 = "5") Then
  loc_1AE68AE:                                         End If
  loc_1AE68AE:                                       End If
  loc_1AE68AE:                                     End If
  loc_1AE68AE:                                   End If
  loc_1AE68B4:                                   var_98.MoveFirst
  loc_1AE68B9:                                   ' Referenced from:                               1AE6C1E
  loc_1AE68BB:                                   If &HFF Then
  loc_1AE6931:                                     var_1A0 = (Trim(CVar(Me.Recordset15.Fields.Item("RoomNo"))) = CVar(var_A4)) Or (Me.Recordset15.Fields.Item("RoomNo").Value = "*****")
  loc_1AE69A7:                                     var_298 = (Me.Recordset15.Fields.Item("Code").Value = CVar(var_9A)) Or (Me.Recordset15.Fields.Item("Code").Value = "*")
  loc_1AE69D1:                                     If CBool(var_1A0 And var_298) Then
  loc_1AE6A01:                                       var_2B8 = Me.Recordset15.Fields.Item("OccType").Value 'Variant
  loc_1AE6A17:                                       If (var_2B8 = "Extra Person") Then
  loc_1AE6A37:                                         var_9C = var_F8
  loc_1AE6A48:                                         var_118 = ("Rate" + Trim(var_9C))
  loc_1AE6A6F:                                         var_C0 = CSng(Me.Recordset15.Fields.Item(Trim(CVar(Me.Recordset15.Fields.Item("RoomNo")))).Value)
  loc_1AE6A88:                                       Else
  loc_1AE6A93:                                         If (var_2B8 = "Multiple") Then
  loc_1AE6AB3:                                           var_9C = var_F8
  loc_1AE6AC4:                                           var_118 = ("Rate" + Trim(var_9C))
  loc_1AE6AEB:                                           var_C8 = CSng(Me.Recordset15.Fields.Item(Trim(CVar(Me.Recordset15.Fields.Item("RoomNo")))).Value)
  loc_1AE6B04:                                         Else
  loc_1AE6B0F:                                           If (var_2B8 = "Single") Then
  loc_1AE6B2F:                                             var_9C = var_F8
  loc_1AE6B40:                                             var_118 = ("Rate" + Trim(var_9C))
  loc_1AE6B5E:                                             var_138 = Me.Recordset15.Fields.Item(Trim(CVar(Me.Recordset15.Fields.Item("RoomNo")))).Value
  loc_1AE6B67:                                             var_D0 = CSng(var_138)
  loc_1AE6B80:                                           Else
  loc_1AE6B8B:                                             If (var_2B8 = "Weekend") Then
  loc_1AE6BA0:                                               var_108 = Trim(var_9C)
  loc_1AE6BAB:                                               var_9C = var_F8
  loc_1AE6BBC:                                               var_118 = ("Rate" + var_108)
  loc_1AE6BCA:                                               var_F0 = Me.Recordset15.Fields
  loc_1AE6BE3:                                               var_D8 = CSng(var_F0.Item(Trim(CVar(Me.Recordset15.Fields.Item("RoomNo")))).Value)
  loc_1AE6BF9:                                             End If
  loc_1AE6BF9:                                           End If
  loc_1AE6BF9:                                         End If
  loc_1AE6BF9:                                       End If
  loc_1AE6BF9:                                     End If
  loc_1AE6BFF:                                     var_98.MoveNext
  loc_1AE6C18:                                     If (var_98.EOF = &HFF) Then
  loc_1AE6C1B:                                       GoTo loc_1AE6C21
  loc_1AE6C1E:                                     End If
  loc_1AE6C1E:                                     GoTo loc_1AE68B9
  loc_1AE6C21:                                     ' Referenced from:                               1AE6C1B
  loc_1AE6C21:                                   End If
  loc_1AE6C37:                                   unk_52DB4B.Execute "Select * from SeasonMast1", var_108, -1
  loc_1AE6C42:                                   Set var_98 = var_F0
  loc_1AE6C62:                                   If (Me.Recordset15.RecordCount > 0) Then
  loc_1AE6C7F:                                     var_F4 = Me.Recordset15.Fields.Item("WeekEnd")
  loc_1AE6CD3:                                     If (Mid(CVar(var_F4), CLng(DatePart("W", var_B8, 2, 1)), 1) = "*") Then
  loc_1AE6CD8:                                       var_9E = &HFF
  loc_1AE6CDB:                                     End If
  loc_1AE6CDB:                                   End If
  loc_1AE6CEF:                                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_F4, var_F8, var_9E, Me.Txt, var_D8)
  loc_1AE6D13:                                   If (CDbl(Val(var_F8)) = CDbl(1)) Then
  loc_1AE6D3F:                                     var_138 = (CVar(var_F4.Text) + IIf((var_9E = &HFF), var_D8, 0))
  loc_1AE6D44:                                     var_E4 = CSng(1)
  loc_1AE6D55:                                   Else
  loc_1AE6D63:                                     Set var_F0 = Me.Txt
  loc_1AE6D69:                                     Call 0.Method_Txt_Validate0 (CInt(&HD), var_F4, var_F8, var_E4, var_C8)
  loc_1AE6D7E:                                     var_168 = Val(var_F8)
  loc_1AE6D91:                                     var_1F8 = CVar((var_C8 + (var_F4.Text * (var_168 - CDbl(var_DA))))) 'Double
  loc_1AE6DB7:                                     var_138 = (CVar(var_F4.Text) + IIf((var_9E = &HFF), var_D8, 0))
  loc_1AE6DBC:                                     var_E4 = CSng(1)
  loc_1AE6DD4:                                   End If
  loc_1AE6DD7:                                 Else
  loc_1AE6DE2:                                   If Not (var_218 = "W") Then
  loc_1AE6DF0:                                     If (var_218 = "M") Then
  loc_1AE6DF3:                                     End If
  loc_1AE6DF9:                                     var_98.MoveFirst
  loc_1AE6DFE:                                     ' Referenced from:                                 1AE6FA5
  loc_1AE6E00:                                     If &HFF Then
  loc_1AE6E50:                                       var_13C = Me.Recordset15.Fields
  loc_1AE6E58:                                       var_140 = var_13C.Item("RoomNo")
  loc_1AE6E72:                                       var_190 = (Me.Recordset15.Fields.Item("RoomNo").Value = CVar(var_A4)) Or (var_140.Value = "*****")
  loc_1AE6E93:                                       var_15C = Me.Recordset15.Fields.Item("Code")
  loc_1AE6ECE:                                       var_1A8 = Me.Recordset15.Fields.Item("Code")
  loc_1AE6F12:                                       If CBool(var_190 And (var_15C.Value = CVar(var_9A)) Or (var_1A8.Value = "*")) Then
  loc_1AE6F32:                                         var_9C = var_F8
  loc_1AE6F43:                                         var_118 = ("Rate" + Trim(var_9C))
  loc_1AE6F6A:                                         var_E4 = CSng(Me.Recordset15.Fields.Item(IIf((var_9E = &HFF), var_D8, 0)).Value)
  loc_1AE6F80:                                       End If
  loc_1AE6F86:                                       var_98.MoveNext
  loc_1AE6F9F:                                       If (var_98.EOF = &HFF) Then
  loc_1AE6FA2:                                         GoTo loc_1AE6FA8
  loc_1AE6FA5:                                       End If
  loc_1AE6FA5:                                       GoTo loc_1AE6DFE
  loc_1AE6FA8:                                       ' Referenced from:                                 1AE6FA2
  loc_1AE6FA8:                                     End If
  loc_1AE6FAB:                                   Else
  loc_1AE6FB6:                                     If (var_218 = "P") Then
  loc_1AE6FDE:                                       var_180 = CVar(global_80) 'String
  loc_1AE6FED:                                       Set var_F4 = Me.Txt
  loc_1AE6FF3:                                       Call 0.Method_Txt_Validate0 (CInt(&HF), var_13C, var_180, (Me.FrPackage.Visible = 0), var_E4)
  loc_1AE7002:                                       var_118 = Trim(CVar(var_13C))
  loc_1AE700D:                                       var_138 = Ucase(var_118)
  loc_1AE7033:                                       If CBool(var_168 And (var_E4 <> var_138)) Then
  loc_1AE7046:                                         Me.FrPackage.ZOrder 0
  loc_1AE705A:                                         Me.FrPackage.Visible = True
  loc_1AE7064:                                         arg_10 = &HFF
  loc_1AE7067:                                       End If
  loc_1AE706A:                                     Else
  loc_1AE7089:                                       MsgBox(CVar("Select Valid Rate Code" & vbCrLf & "1,2,3,4,5,M,W,P"), &H40, var_118, var_138, var_180)
  loc_1AE709E:                                       arg_10 = &HFF
  loc_1AE70A1:                                       Exit Sub
  loc_1AE70A2:                                     End If
  loc_1AE70A2:                                   End If
  loc_1AE70A2:                                 End If
  loc_1AE70CA:                                 var_F8 = CStr(Format(var_E4, "0.00"))
  loc_1AE70D9:                                 Set var_F0 = Me.Txt
  loc_1AE70DF:                                 Call 0.Method_Txt_Validate0 (CInt(&H33), var_F4, var_F8, 1, 1)
  loc_1AE710B:                                 Set var_13C = Me.Txt
  loc_1AE7111:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_140, var_144, arg_10)
  loc_1AE7119:                                 var_9A = var_140.Text
  loc_1AE7126:                                 var_168 = Val(var_144)
  loc_1AE7137:                                 Set var_F0 = Me.Txt
  loc_1AE713D:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4, var_F8)
  loc_1AE716F:                                 Set var_158 = Me.Txt
  loc_1AE7175:                                 Call 0.Method_Txt_Validate0 (CInt(&HF), var_15C, ((CDbl(Val(var_F8)) <> CDbl(0)) And (var_E4 <> CDbl(arg_10))))
  loc_1AE7184:                                 var_118 = Trim(CVar(var_15C))
  loc_1AE718F:                                 var_138 = Ucase(var_118)
  loc_1AE71C6:                                 If CBool(var_B8 And (var_138 <> "P")) Then
  loc_1AE71D7:                                   var_128 = "Re-Calculate Room Rate ?"
  loc_1AE71F8:                                   If (MsgBox("P", &H24, var_118, var_138, var_180) = 6) Then
  loc_1AE720E:                                     Set var_F0 = Me.Txt
  loc_1AE7214:                                     Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE721C:                                     var_F4.Text = CStr(var_E4)
  loc_1AE722B:                                   End If
  loc_1AE722E:                                 Else
  loc_1AE7241:                                   Set var_F0 = Me.Txt
  loc_1AE7247:                                   Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE724F:                                   var_F4.Text = CStr(var_E4)
  loc_1AE725E:                                 End If
  loc_1AE726C:                                 Set var_F0 = Me.Txt
  loc_1AE7272:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE727A:                                 var_F8 = var_F4.Text
  loc_1AE728A:                                 global_72 = Val(var_F8)
  loc_1AE72A5:                                 Set var_F0 = Me.Txt
  loc_1AE72AB:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4, var_F8)
  loc_1AE72B3:                                 global_72 = var_F4.Text
  loc_1AE72F9:                                 Set var_13C = Me.Txt
  loc_1AE72FF:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_140, CStr(Format(CVar(Val(var_F8)), "0.00")), 1)
  loc_1AE7307:                                 var_140.Text = 1
  loc_1AE7332:                                 Set var_F0 = Me.Txt
  loc_1AE7338:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE7348:                                 Set var_13C = Me.Txt
  loc_1AE734E:                                 Call 0.Method_Txt_Validate0 (CInt(&H26), var_140)
  loc_1AE736D:                                 Set var_158 = Me.Txt
  loc_1AE7373:                                 Call 0.Method_Txt_Validate0 (CInt(&H29), var_15C)
  loc_1AE7395:                                 Set var_1A4 = Me.Txt
  loc_1AE739B:                                 Call 0.Method_Txt_Validate0 (CInt(&H32), var_1A8, var_1B8)
  loc_1AE73A3:                                 var_168 = var_1A8.Text
  loc_1AE73B6:                                 Set var_1AC = Me.Txt
  loc_1AE73BC:                                 Call 0.Method_Txt_Validate0 (CInt(&H33), var_1B0)
  loc_1AE73D1:                                 var_170 = Val(var_1B0.Text)
  loc_1AE73FB:                                 Proc_96_76_1840070(var_F4, CStr(Trim(CVar(var_140))), CStr(Trim(CVar(var_15C))), var_1B8)
  loc_1AE7429:                               End If
  loc_1AE7429:                             End If
  loc_1AE7429:                           End If
  loc_1AE7429:                         End If
  loc_1AE7429:                       End If
  loc_1AE7429:                     End If
  loc_1AE7429:                   End If
  loc_1AE7429:                 End If
  loc_1AE7429:               End If
  loc_1AE7429:             End If
  loc_1AE7429:           End If
  loc_1AE7429:         End If
  loc_1AE7429:       End If
  loc_1AE7429:     End If
  loc_1AE7429:   End If
  loc_1AE7429: End If
  loc_1AE742E: Set var_E8 = Nothing
  loc_1AE7431: Exit Sub
End Sub

Private Sub BtnEnh1_UnknownEvent_9 'DFEBFC
  'Data Table: 52DB2C
  loc_DFEBF4: Call TopCtrl1_UnknownEvent_16()
  loc_DFEBF9: Exit Sub
End Sub

Private Sub DGNewRoomNo_UnknownEvent_9 'F3F664
  'Data Table: 52DB2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F55B: Me.DGNewRoomNo.Visible = False
  loc_F3F57A: If (Me.RecordCount > 0) Then
  loc_F3F5B9:   Set var_B4 = Me.Txt
  loc_F3F5BF:   Call 0.Method_DGNewRoomNo_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F3F5C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3F5FA:   var_B0 = Me.Fields.Item("Name")
  loc_F3F619:   Set var_B4 = Me.Txt
  loc_F3F61F:   Call 0.Method_DGNewRoomNo_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F3F627:   var_B8.Text = CStr(var_B0.Value)
  loc_F3F63D: End If
  loc_F3F648: Set var_A8 = Me.Txt
  loc_F3F64E: Call 0.Method_DGNewRoomNo_UnknownEvent_90 (CInt(&HC))
  loc_F3F656: var_B0.SetFocus
  loc_F3F662: Exit Sub
  loc_F3F663: Exit Sub
End Sub

Private Sub Form_Load() '14024C4
  'Data Table: 52DB2C
  Dim var_8C As Variant
  Dim var_90 As String
  Dim var_9C As String
  Dim var_A0 As String
  Dim unk_52DB4B As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim Me As Recordset15
  Dim var_120 As Variant
  Dim var_12C As Variant
  Dim var_128 As Variant
  Dim var_CC As TextBox
  loc_1401AA4: On Error Goto loc_14024BD
  loc_1401AAF: Call 0.Method_arg_7C (CDbl(1450))
  loc_1401ABC: Call 0.Method_arg_74 (CDbl(1625))
  loc_1401AC9: Call 0.Method_MeC (CDbl(9200))
  loc_1401AD6: Call 0.Method_Me4 (CDbl(17000))
  loc_1401AE2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1401AF5: (CLng(MemVar_1F921B0)).BackColor = 
  loc_1401B0C: Me.FrPackage.Top = CDbl(4020)
  loc_1401B23: Me.FrPackage.Left = CDbl(1095)
  loc_1401B3A: Me.Frmrate.Top = CDbl(2745)
  loc_1401B4B: Set var_8C = Me.Frmrate
  loc_1401B51: var_8C.Left = CDbl(2520)
  loc_1401B82: var_9C = "SELECT ChangeRoomDtl FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='" & MemVar_1F92128 & "' And UserName='"
  loc_1401B99: unk_52DB4B.Execute var_9C & MemVar_1F920C8 & "'", var_C4, -1
  loc_1401BA4: Set var_88 = var_8C
  loc_1401BD0: If (var_88.RecordCount > 0) Then
  loc_1401BE2:   var_8C = var_88.Fields
  loc_1401BF2:   var_C4 = CVar(var_8C.Item("ChangeRoomDtl")) 'Address
  loc_1401C01:   global_112 = Proc_6_38_E68A98(var_C4)
  loc_1401C0E: End If
  loc_1401C22: var_90 = "Select NCUR,PlanCalc,RoomRateEditable,RoomIncTaxEditable,RoomServiceChargeEditable,BlockInvalidTarrifIncTaxYN,PlanSelectionBasedOn from enviro WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_1401C32: unk_52DB4B.Execute var_90 & "'", var_C4, -1
  loc_1401C3D: Set var_88 = var_8C
  loc_1401C5C: var_8C = var_88.Fields
  loc_1401C7B: global_120 = Proc_6_38_E68A98(CVar(var_8C.Item("RoomRateEditable")), var_8C)
  loc_1401CB6: global_124 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomIncTaxEditable")))
  loc_1401CF1: global_128 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomServiceChargeEditable")))
  loc_1401D2C: global_132 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("BlockInvalidTarrifIncTaxYN")))
  loc_1401D67: global_116 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PlanSelectionBasedOn")))
  loc_1401D93: var_C4 = CVar(var_88.Fields.Item("PlanCalc")) 'Address
  loc_1401DAD: If (Proc_6_38_E68A98(var_C4) = "No") Then
  loc_1401DB5:   global_110 = 0
  loc_1401DBB: Else
  loc_1401DC0:   global_110 = &HFF
  loc_1401DC3: End If
  loc_1401DDF: Me.Recordset15.CursorLocation = 3
  loc_1401DEF: Proc_6_7_F25D88(var_C4, MemVar_1F920EC, global_110)
  loc_1401E19: var_DC = CVar("Select Code,Name,total,App_Date,RoomTaxStru From PlanMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ActiveYN='Yes' and App_date<=") 'String
  loc_1401E33: Me.Open var_DC & var_C4 & " Order by Name", CVar(MemVar_1F92044), 2
  loc_1401E4F: CVarUnk
  loc_1401E54: VerifyVarObj
  loc_1401E5A: Set var_8C = Me.DGPackage
  loc_1401E60: LateIdStAd
  loc_1401E77: CVarUnk
  loc_1401E7C: VerifyVarObj
  loc_1401E88: LateIdStAd
  loc_1401EA4: Set var_CC = Me.Txt
  loc_1401EAA: Call 0.Method_Form_Load0 (CInt(&H18), var_120, var_124, Me.DGPlanPkg, New, Me.DGPlanPkg)
  loc_1401EB2: global_100 = var_120.Top
  loc_1401EC5: Set var_128 = Me.Txt
  loc_1401ECB: Call 0.Method_Form_Load0 (CInt(&H18), var_12C, var_130, 3)
  loc_1401ED3: -1 = var_12C.Height
  loc_1401EF5: var_B4 = CVar(((Me.FrPackage.Top + var_124) + var_130)) 'Single
  loc_1401F04: Me.DGPackage.Top = MemVar_1F920EC
  loc_1401F26: Set var_CC = Me.Txt
  loc_1401F2C: Call 0.Method_Form_Load0 (CInt(&H18), var_120, var_124)
  loc_1401F34: global_110 = var_120.Left
  loc_1401F52: var_B4 = CVar((Me.FrPackage.Left + var_124)) 'Single
  loc_1401F5B: Set var_128 = Me.DGPackage
  loc_1401F61: var_128.Left = MemVar_1F920EC
  loc_1401F7F: Set var_120 = Me.Txt
  loc_1401F85: Call 0.Method_Form_Load0 (CInt(&H1E), var_128)
  loc_1401FA0: Set var_8C = Me.Txt
  loc_1401FA6: Call 0.Method_Form_Load0 (CInt(&H1E), var_CC)
  loc_1401FBA: var_B4 = CVar((var_CC.Top + var_128.Height)) 'Single
  loc_1401FC9: Me.DGPlanPkg.Top = MemVar_1F920EC
  loc_1401FE9: Set var_8C = Me.Txt
  loc_1401FEF: Call 0.Method_Form_Load0 (CInt(&H1E), var_CC)
  loc_140200E: Me.DGPlanPkg.Left = CVar(var_CC.Left)
  loc_140202A: Set var_8C = Me.Txt
  loc_1402030: Call 0.Method_Form_Load0 (CInt(&HC), var_CC)
  loc_140204F: Me.DGNewRoomNo.Left = CVar(var_CC.Left)
  loc_140206B: Set var_120 = Me.Txt
  loc_1402071: Call 0.Method_Form_Load0 (CInt(&HC), var_128)
  loc_140208C: Set var_8C = Me.Txt
  loc_1402092: Call 0.Method_Form_Load0 (CInt(&HC), var_CC)
  loc_14020AA: var_B4 = CVar(((var_CC.Top + var_128.Height) + CDbl(&H1E))) 'Single
  loc_14020B9: Me.DGNewRoomNo.Top = CVar(var_CC.Left)
  loc_14020DF: Call 0.Method_Form_Load0 (CInt(&HB), var_CC)
  loc_14020FE: Me.Txt(CVar(var_CC.Left)).Left = 
  loc_140211A: Set var_120 = Me.Txt
  loc_1402120: Call 0.Method_Form_Load0 (CInt(&HB), var_128)
  loc_140213B: Set var_8C = Me.Txt
  loc_1402141: Call 0.Method_Form_Load0 (CInt(&HB), var_CC)
  loc_1402159: var_B4 = CVar(((var_CC.Top + var_128.Height) + CDbl(&H1E))) 'Single
  loc_1402168: (CVar(var_CC.Left)).Top = 
  loc_1402188: Set var_8C = Me.Txt
  loc_140218E: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_14021AD: Me.DGRoomNo.Left = CVar(var_CC.Left)
  loc_14021C9: Set var_120 = Me.Txt
  loc_14021CF: Call 0.Method_Form_Load0 (CInt(0), var_128)
  loc_14021EA: Set var_8C = Me.Txt
  loc_14021F0: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_1402208: var_B4 = CVar(((var_CC.Top + var_128.Height) + CDbl(&H1E))) 'Single
  loc_1402211: Set var_12C = Me.DGRoomNo
  loc_1402217: var_12C.Top = CVar(var_CC.Left)
  loc_1402233: Set global_96 = New 
  loc_1402245: Me.var_12C.CursorLocation = 3
  loc_1402268: var_90 = "Select RoomMast.Code as SearchCode,RoomMast.Code as RoomNo,RoomMast.Name as Quot,RoomMast.RoomCat,Revmast.TaxStru as RoomTaxStru From RoomMast Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_140226F: var_C4 = CVar(var_90 & "' or RoomMast.LOGSITE_CODE='HO') AND RoomMast.Type='RO' AND RoomMast.InclCount='Y' Order by RoomMast.Code") 'String
  loc_1402279: Me.Open var_C4, CVar(MemVar_1F92044), 2
  loc_140228D: CVarUnk
  loc_1402292: VerifyVarObj
  loc_1402298: Set var_8C = Me.DGNewRoomNo
  loc_140229E: LateIdStAd
  loc_14022C8: Me.DGNewRoomNo.CursorLocation = 3
  loc_14022EB: var_90 = "Select RoomCat.Code, RoomCat.Name, Revmast.TaxStru as RoomTaxStru From RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code where (RoomCat.LOGSITE_CODE='" & MemVar_1F92078
  loc_1402310: CVarUnk
  loc_1402315: VerifyVarObj
  loc_140231B: Set var_8C = 3(New)
  loc_1402321: LateIdStAd
  loc_140233F: Me.Frmrate.ZOrder 1
  loc_1402351: Set global_88 = New 
  loc_1402363: Me.Recordset15.CursorLocation = 3
  loc_1402386: var_90 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.RoomTarrif, RoomOcc.RoomTaxStru, GuestProf.Name as GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.GuestStatus,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.DocId as CheckInDocId,GuestFolio.FolioNO as FolioNo,GuestFolio.RoDisc,GuestFolio.RSDisc,GuestFolio.BookingDocId as BookingDocId, RoomOcc.RateCode, RoomOcc.RoomRate,RoomOcc.PlanCode,PlanMast.Name As PlanName, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GUESTSTAT.NAME AS STATUSNAME,RoomOcc.RRTaxInc,RoomOcc.RRServiceChrg,RoomOcc.PlanDisc,RoomOcc.PlanDiscAmt,RoomOcc.PlanDiscAppon,RoomOcc.RackRate,GuestFolio.NoDays " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS Left Join PlanMast On PlanMast.Code=RoomOcc.PlanCode where ROOMMAST.LOGSITE_CODE='"
  loc_14023A2: var_A0 = var_90 & MemVar_1F92078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F92078 & "' AND RoomMast.type='RO' and RoomMAst.Code in (Select ISNULL(RoomNo,'') from RoomOcc where ROOMMAST.LOGSITE_CODE='"
  loc_14023BE: var_C4 = CVar(var_A0 & MemVar_1F92078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  isnull(type,'') Not In ('O','C')) and isnull(RoomOcc.type,'') Not In ('O','C') Order by RoomMast.Code") 'String
  loc_14023C8: ar(var_90 & "' or RoomCat.LOGSITE_CODE='HO') Order by RoomCat.Name"), CVar(MemVar_1F92044), 2 var_C4, CVar(MemVar_1F92044), 2
  loc_14023EC: CVarUnk
  loc_14023F1: VerifyVarObj
  loc_14023FD: LateIdStAd
  loc_140240B: Call Proc_59_46_138712C(Me.DGRoomNo, global_88, 3, -1, Me.DGRoomNo)
  loc_1402420: Me.Frmrate.ZOrder 1
  loc_1402438: Me.FrPackage.ZOrder 1
  loc_140245B: If (Me.Frmrate.Visible = &HFF) Then
  loc_140246A:   Me.Frmrate.Visible = False
  loc_140247E:   Me.Frame1.Enabled = True
  loc_1402486: End If
  loc_14024A9: Call Proc_59_40_106D9E8(Proc_5_1_100CB50("EDIT", Me, global_88, -1), Me, global_96)
  loc_14024B9: Set var_88 = Nothing
  loc_14024BC: Exit Sub
  loc_14024BD: ' Referenced from: 1401AA4
  loc_14024BD: Proc_6_60_E62BC4(3)
  loc_14024C2: Exit Sub
End Sub

Private Sub Form_Resize() 'E744B0
  'Data Table: 52DB2C
  loc_E7445A: Call 0.Method_arg_50 (var_88)
  loc_E7446C: (var_88).Caption = 
  loc_E74485: (CDbl(0)).Left = 
  loc_E74493: Call 0.Method_arg_100 (var_90)
  loc_E744A5: (var_90).Width = 
  loc_E744AD: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E68994
  'Data Table: 52DB2C
  loc_E6894B: Set global_88 = Nothing
  loc_E6895D: Set global_84 = Nothing
  loc_E6896F: Set global_96 = Nothing
  loc_E68981: Set global_92 = Nothing
  loc_E6898D: MasterFormExit = 0
  loc_E68990: Exit Sub
End Sub

Private Sub Form_Activate() 'E84668
  'Data Table: 52DB2C
  Dim var_A4 As TextBox
  loc_E84600: On Error Goto loc_E84662
  loc_E84607: Set var_8C = Me.TopCtrl1
  loc_E8460D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E84622: If (CLng(CInt()) = &H2D) Then
  loc_E84625: End If
  loc_E84639: If (fdRoomChange.OpenMode = 1) Then
  loc_E84647:   Set var_8C = Me.Txt
  loc_E8464D:   Call 0.Method_Form_Activate0 (CInt(&HB))
  loc_E84655:   var_A4.SetFocus
  loc_E84661: End If
  loc_E84661: Exit Sub
  loc_E84662: ' Referenced from: E84600
  loc_E84662: Proc_6_60_E62BC4(var_A4)
  loc_E84667: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2682C
  'Data Table: 52DB2C
  loc_E26811: If (MasterFormExit = &HFF) Then
  loc_E26821:   Me.Global.Unload Me
  loc_E26829: End If
  loc_E26829: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E282A4
  'Data Table: 52DB2C
  loc_E2827C: On Error Goto loc_E2829C
  loc_E28293: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2829B: Exit Sub
  loc_E2829C: ' Referenced from: E2827C
  loc_E2829C: Proc_6_60_E62BC4(Shift)
  loc_E282A1: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E84D00
  'Data Table: 52DB2C
  loc_E84CAC: If (CBool(().Visible) = &HFF) Then
  loc_E84CAF:   Call DGRoomType_UnknownEvent_9()
  loc_E84CB4: End If
  loc_E84CD0: If (CBool(Me.DGNewRoomNo.Visible) = &HFF) Then
  loc_E84CD3:   Call DGNewRoomNo_UnknownEvent_9()
  loc_E84CD8: End If
  loc_E84CF4: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E84CF7:   Call DGRoomNo_UnknownEvent_9()
  loc_E84CFC: End If
  loc_E84CFC: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_0 'E60734
  'Data Table: 52DB2C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E606FF: Me.FGrid3.BackColorSel = CVar(CLng("14737632"))
  loc_E60712: Set var_A8 = Me.TxtGrid
  loc_E60718: Call 0.Method_FGrid3_UnknownEvent_00 (0, var_AC)
  loc_E60720: var_AC.Visible = False
  loc_E6072C: Call Proc_59_42_F6DF1C()
  loc_E60731: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_9 'DFDEDC
  'Data Table: 52DB2C
  loc_DFDED4: Call Proc_59_51_DFD6CC()
  loc_DFDED9: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_A '10660D0
  'Data Table: 52DB2C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1065E54: Set var_88 = Me.TopCtrl1
  loc_1065E5A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1065E9F: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_1065EA8:   Call Form_KeyDown(KeyCode, Shift)
  loc_1065EAD: End If
  loc_1065EB1: Set var_88 = Me.TopCtrl1
  loc_1065EB7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1065ED0: If (CStr() = "Browse") Then
  loc_1065ED3:   Exit Sub
  loc_1065ED4: End If
  loc_1065F48: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid3.Tag))) = CDbl((CLng(Me.FGrid3.Rows) - (CLng(Me.FGrid3.Rows) - 1))))) Then
  loc_1065F53:   var_9C = "+{Tab}"
  loc_1065F59:   Proc_303_0_FB9B68(CStr(Me.FGrid3.Tag), 0)
  loc_1065F63:   KeyCode = 0
  loc_1065F69: Else
  loc_1065F73:   var_B0 = Me.FGrid3.Rows
  loc_1065FC0:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid3.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1065FD1:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1065FDB:     KeyCode = 0
  loc_1065FDE:   End If
  loc_1065FDE: End If
  loc_1065FE4: global_108 = KeyCode
  loc_106600A: Me.FGrid3.Tag = CVar(CStr(CLng(Me.FGrid3.Row)))
  loc_106602E: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1066044:   var_DC = CLng(Me.FGrid3.Col)
  loc_1066054:   If Not (var_DC = CLng(&H12)) Then
  loc_106605E:     If (var_DC = CLng(&HF)) Then
  loc_1066061:     End If
  loc_1066074:     var_D8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_106608C:     var_FC = CVar(CLng(Me.FGrid3.Col)) 'Long
  loc_1066091:     var_11C = vbNullString
  loc_106609B:     Set var_B4 = Me.FGrid3
  loc_10660A1:     LateIdCallSt
  loc_10660B9:   End If
  loc_10660B9: End If
  loc_10660BF: If (KeyCode = &HD) Then
  loc_10660C7:   global_68 = 0
  loc_10660CA: End If
  loc_10660CC: KeyCode = 0
  loc_10660CF: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_B 'E0FA28
  'Data Table: 52DB2C
  loc_E0FA19: Call FGrid3_UnknownEvent_C()
  loc_E0FA23: global_68 = 0
  loc_E0FA26: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_C 'EEF9B8
  'Data Table: 52DB2C
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_EEF8FC: Set var_88 = Me.TopCtrl1
  loc_EEF902: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EEF91B: If (CStr() = "Browse") Then
  loc_EEF91E:   Exit Sub
  loc_EEF91F: End If
  loc_EEF932: var_A0 = CLng(Me.FGrid3.Col)
  loc_EEF942: If Not (var_A0 = CLng(&H12)) Then
  loc_EEF94C:   If (var_A0 = CLng(&HF)) Then
  loc_EEF94F:   End If
  loc_EEF98D:   Proc_6_63_110ABA4(Me, Me.FGrid3, Me.TxtGrid, 0)
  loc_EEF99F: End If
  loc_EEF9A9: If (CLng(KeyCode) <> &HD) Then
  loc_EEF9B1:   global_68 = &HFF
  loc_EEF9B4: End If
  loc_EEF9B4: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_D 'E67804
  'Data Table: 52DB2C
  Dim var_8C As MSHFlexGrid
  loc_E677BC: Set var_8C = Me.TopCtrl1
  loc_E677C2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E677DB: If (CStr() = "Browse") Then
  loc_E677DE:   Exit Sub
  loc_E677DF: End If
  loc_E677FC: If (CLng(Me.FGrid3.ColSel) = CLng(0)) Then
  loc_E677FF:   Exit Sub
  loc_E67800: End If
  loc_E67800: Exit Sub
  loc_E67802: Loop Until Not ( = ) 'do at: E62C0F
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F13EFC
  'Data Table: 52DB2C
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F13E14: On Error Goto loc_F13EB9
  loc_F13E2E: If (Me.RecordCount > 0) Then
  loc_F13E46:   var_8C = "EDIT"
  loc_F13E54:   Call Proc_59_40_106D9E8(Proc_5_1_100CB50(var_8C, Me))
  loc_F13E6A:   Set var_90 = Me.Txt
  loc_F13E70:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F13E78:   var_98.SetFocus
  loc_F13E87: Else
  loc_F13EA8:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F13EB8: End If
  loc_F13EB8: Exit Sub
  loc_F13EB9: ' Referenced from: F13E14
  loc_F13EC1: Set var_90 = Err()
  loc_F13EC7: Call 0.Method_arg_2C (var_8C)
  loc_F13EE8: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F13EFB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECBD64
  'Data Table: 52DB2C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F920E4 As String
  loc_ECBCC0: On Error Goto loc_ECBD5B
  loc_ECBCDA: If (Me.RecordCount <= 0) Then
  loc_ECBCE3:   var_B8 = "Information"
  loc_ECBCFE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ECBD0E:   Exit Sub
  loc_ECBD0F: End If
  loc_ECBD20: MemVar_1F920E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & mVType & "' ORDER BY VDate"
  loc_ECBD2D: MemVar_1F92120 = Me
  loc_ECBD3A: Proc_6_126_F1BCC0("2000,2000,2000,2000")
  loc_ECBD55: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECBD5A: Exit Sub
  loc_ECBD5B: ' Referenced from: ECBCC0
  loc_ECBD5B: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_ECBD60: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '18BCE60
  'Data Table: 52DB2C
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_148 As String
  Dim var_14C As String
  Dim unk_52DB4B As Connection15
  Dim var_BC As Variant
  Dim var_150 As Variant
  Dim var_154 As Variant
  Dim var_124 As Variant
  Dim var_104 As Variant
  Dim var_144 As Variant
  Dim var_C0 As Variant
  Dim unk_52DB8D As Connection15
  Dim var_B4 As Variant
  Dim var_9C As Variant
  Dim var_16C As String
  Dim var_170 As String
  Dim var_178 As String
  Dim var_17C As String
  Dim var_188 As String
  Dim var_180 As Variant
  Dim var_190 As String
  Dim var_174 As String
  Dim var_198 As Variant
  Dim var_1A0 As Variant
  Dim var_1B4 As Double
  Dim var_164 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_8E As Variant
  Dim var_224 As Variant
  Dim var_284 As Variant
  Dim var_2D4 As Variant
  Dim var_194 As Variant
  Dim var_2E4 As Variant
  Dim var_334 As Variant
  Dim var_19C As Variant
  Dim var_388 As Variant
  Dim var_3CC As Variant
  Dim var_3E0 As Variant
  Dim var_428 As Variant
  Dim var_470 As Variant
  Dim var_4C8 As Variant
  Dim var_4D0 As Variant
  Dim var_1AC As Double
  Dim var_4D8 As TextBox
  Dim var_580 As Variant
  Dim var_5E8 As Variant
  Dim var_628 As Variant
  Dim var_650 As Variant
  Dim var_680 As Variant
  Dim var_6C8 As TextBox
  Dim var_710 As TextBox
  Dim var_B30 As Double
  Dim var_764 As Variant
  Dim var_7CC As Variant
  Dim var_930 As TextBox
  Dim var_A28 As TextBox
  Dim var_B38 As Double
  Dim var_A70 As TextBox
  Dim var_AB8 As TextBox
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_274 As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_364 As Variant
  Dim var_384 As Variant
  Dim var_3B8 As Variant
  Dim var_400 As Variant
  Dim var_410 As Variant
  Dim var_420 As Variant
  Dim var_438 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_548 As Variant
  Dim var_558 As Variant
  Dim var_5C0 As Variant
  Dim var_6D8 As Variant
  Dim var_6E8 As Variant
  Dim var_720 As Variant
  Dim var_820 As Variant
  Dim var_830 As Variant
  Dim var_890 As Variant
  Dim var_8D0 As Variant
  Dim var_960 As Variant
  Dim var_9A8 As Variant
  Dim var_ADC As Variant
  Dim var_294 As Variant
  Dim var_1A4 As Variant
  Dim var_2F4 As Variant
  Dim var_354 As Variant
  Dim var_184 As String
  Dim var_ABC As String
  Dim var_E4 As Variant
  Dim var_4F8 As Variant
  Dim var_244 As Variant
  Dim var_424 As MSHFlexGrid
  Dim var_EC4 As Double
  Dim var_46C As MSHFlexGrid
  Dim var_ECC As Double
  Dim var_ED4 As Double
  Dim var_4B4 As MSHFlexGrid
  Dim var_4B8 As MSHFlexGrid
  Dim var_D54 As Variant
  Dim var_4CC As MSHFlexGrid
  Dim var_EDC As Double
  Dim var_EE4 As Double
  Dim var_56C As Fields15
  Dim var_62C As MSHFlexGrid
  Dim var_EEC As Double
  Dim var_B68 As String
  Dim var_B94 As String
  Dim var_BD4 As String
  Dim var_DBC As Variant
  Dim var_590 As Variant
  Dim Me As Recordset15
  loc_18BA8EC: On Error Goto loc_18BCE0B
  loc_18BA8F3: var_86 = CByte(0) 'Byte
  loc_18BA902: Set var_B4 = Me.Txt
  loc_18BA908: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D))
  loc_18BA931: If (Proc_6_27_EA565C(var_B8, "Reason") = 0) Then
  loc_18BA93B:   Call Txt_GotFocus(CInt(&H1D))
  loc_18BA940:   Exit Sub
  loc_18BA941: End If
  loc_18BA94C: Set var_B4 = Me.Txt
  loc_18BA952: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_B8)
  loc_18BA95A: var_C0 = "Room Type"
  loc_18BA97B: If (Proc_6_27_EA565C(var_B8, var_C0) = 0) Then
  loc_18BA985:   Call Txt_GotFocus(CInt(&HB))
  loc_18BA98A:   Exit Sub
  loc_18BA98B: End If
  loc_18BA997: Call Txt_Validate(CInt(&HB))
  loc_18BA9AA: Set var_B4 = Me.Txt
  loc_18BA9B0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_B8, var_C0)
  loc_18BA9B8: 0 = var_B8.Tag
  loc_18BA9C6: var_E4 = Trim(CVar(var_C0))
  loc_18BA9E4: If (var_E4 = vbNullString) Then
  loc_18BAA00:   MsgBox("Room Type is a required field.", &H10, var_E4, var_104, var_144)
  loc_18BAA17:   Call Txt_GotFocus(CInt(&HB))
  loc_18BAA1C:   Exit Sub
  loc_18BAA1D: End If
  loc_18BAA28: Set var_B4 = Me.Txt
  loc_18BAA2E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8)
  loc_18BAA57: If (Proc_6_27_EA565C(var_B8, "Room No") = 0) Then
  loc_18BAA61:   Call Txt_GotFocus(CInt(0))
  loc_18BAA66:   Exit Sub
  loc_18BAA67: End If
  loc_18BAA75: Set var_B4 = Me.Txt
  loc_18BAA7B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_B8)
  loc_18BAA83: var_C0 = var_B8.Text
  loc_18BAA9F: If (CDbl(Val(var_C0)) <= CDbl(0)) Then
  loc_18BAAB5:   var_D4 = "Adult should not be zero."
  loc_18BAABB:   MsgBox(var_D4, &H10, var_E4, var_104, var_144)
  loc_18BAAD2:   Call Txt_GotFocus(CInt(&HD))
  loc_18BAAD7:   Exit Sub
  loc_18BAAD8: End If
  loc_18BAB05: Set var_B4 = Me.Txt
  loc_18BAB0B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_C0, "Select Count(*) from RoomMast Where Type='RO' and Code='", var_D4, -1)
  loc_18BAB23: var_14C = var_150 & var_C0 & "'"
  loc_18BAB2C: unk_52DB4B.Execute var_14C, 0, var_154
  loc_18BAB34: var_E4 = var_B8.Text.Fields
  loc_18BAB3C:  = var_150.Item(var_B8)
  loc_18BAB44:  = var_154.Value
  loc_18BAB71: If (var_E4 = 0) Then
  loc_18BAB8D:   MsgBox("Re Select Room No", 0, var_E4, var_104, var_144)
  loc_18BAB9D:   Exit Sub
  loc_18BAB9E: End If
  loc_18BABA9: Set var_B4 = Me.Txt
  loc_18BABAF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_18BABD1: Set var_BC = Me.Txt
  loc_18BABD7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_150)
  loc_18BAC02: If CBool(Trim(CVar(var_B8)) <> Trim(CVar(var_150))) Then
  loc_18BAC25:   Set var_B4 = Me.Txt
  loc_18BAC2B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, "Select * from KOT Where Pending='Y' and RoomNo='", var_164)
  loc_18BAC3A:   var_E4 = Trim(CVar(var_B8))
  loc_18BAC42:   var_104 = -1 & var_E4 
  loc_18BAC4B:   var_144 = CVar(var_150) & "' and roomtype='RO' and VoidYN='N' and NCKOT<>'Y' and DelFlag<>'Y'" 
  loc_18BAC59:   unk_52DB4B.Execute CStr(var_144), var_BC, var_168
  loc_18BAC61:   var_B8 = var_BC.RecordCount
  loc_18BAC86:   If (var_168 > 0) Then
  loc_18BACA2:     MsgBox("There is some KOT Pending for this Room.", &H10, var_E4, CVar(var_150), var_144)
  loc_18BACB2:     Exit Sub
  loc_18BACB3:   End If
  loc_18BACB3: End If
  loc_18BACC1: Set var_B4 = Me.Txt
  loc_18BACC7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_B8)
  loc_18BACEB: If (CDbl(Val(var_B8.Text)) <= CDbl(0)) Then
  loc_18BACF9:   var_E4 = "Validation Error"
  loc_18BAD09:   var_D4 = "Tariff should be greater than zero."
  loc_18BAD0F:   MsgBox(var_D4, &H10, var_E4, CVar(var_150), var_144)
  loc_18BAD2D:   Set var_B4 = Me.Txt
  loc_18BAD33:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_B8)
  loc_18BAD3B:   var_C2 = var_B8.Enabled
  loc_18BAD4D:   If (var_C2 = &HFF) Then
  loc_18BAD5B:     Set var_B4 = Me.Txt
  loc_18BAD61:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10))
  loc_18BAD69:     var_B8.SetFocus
  loc_18BAD75:     Exit Sub
  loc_18BAD76:   End If
  loc_18BAD76: End If
  loc_18BAD7E: If (MemVar_1F921D0 = "Y") Then
  loc_18BAD87:   var_114 = 0
  loc_18BADA6:   unk_52DB8D.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_D4, -1
  loc_18BADAE:   var_B4 = var_B4.Fields
  loc_18BADB6:   var_114 = var_B8.Item(var_B8)
  loc_18BADBE:   var_BC = var_BC.Value
  loc_18BAE0C:   Set var_B4 = Me.Txt
  loc_18BAE12:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, var_14C, "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME) VALUES (" & CStr(CLng(var_E4)) & ",'CHKOT','", var_D4)
  loc_18BAE1A:   -1 = var_B8.Text
  loc_18BAE3B:   Set var_BC = Me.Txt
  loc_18BAE41:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_150, var_174, var_194 & var_14C & "','")
  loc_18BAE49:   var_9C = var_150.Text
  loc_18BAE59:   var_188 = var_E4 & var_174 & "','"
  loc_18BAE6A:   Set var_154 = Me.Txt
  loc_18BAE70:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_180, var_184)
  loc_18BAE78:   var_188 = var_180.Text
  loc_18BAE91:   unk_52DB8D.Execute var_B8 & var_184 & "')", , 
  loc_18BAEFC:   If (MsgBox("Do You Want to Open Dial Facility ?", &H104, "Dial Facility", CVar(var_150), var_144) = 6) Then
  loc_18BAF1A:     var_C0 = CStr((var_9C + 1))
  loc_18BAF36:     Set var_B4 = Me.Txt
  loc_18BAF3C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_14C, "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME) VALUES(" & CStr(CLng("Dial Facility")) & ",'CHKIN','")
  loc_18BAF44:     var_D4 = var_B8.Text
  loc_18BAF4D:     var_170 = -1 & var_14C
  loc_18BAF54:     var_178 = var_194 & var_14C & "','"
  loc_18BAF65:     Set var_BC = Me.Txt
  loc_18BAF6B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_150, var_174)
  loc_18BAF73:     var_178 = var_150.Text
  loc_18BAF94:     Set var_154 = Me.Txt
  loc_18BAF9A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_180)
  loc_18BAFA2:     var_184 = var_180.Text
  loc_18BAFB2:     var_190 = var_194 & var_174 & "','" & var_184 & "')"
  loc_18BAFBB:     unk_52DB8D.Execute var_190, , 
  loc_18BAFEF:   End If
  loc_18BAFEF: End If
  loc_18BAFF8: unk_52DB4B.BeginTrans var_168
  loc_18BB001: var_86 = CByte(1) 'Byte
  loc_18BB022: var_D4 = "Select * from roomocc where DocId='"(CStr(CLng("Dial Facility"))).Caption
  loc_18BB02B: var_148 = -1 & CStr(CLng("Dial Facility"))
  loc_18BB032: var_14C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME) VALUES(" & CStr(CLng("Dial Facility")) & "' and (Type is NULL or Type='') and Site_Code='"
  loc_18BB040: var_174 = var_14C & MemVar_1F92070 & "' and RoomNo='"
  loc_18BB057: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_BC, var_194 & var_14C)
  loc_18BB05F: var_174 = var_BC.Text
  loc_18BB068: var_178 = var_150 & var_194 & var_14C
  loc_18BB06F: var_17C = var_178 & "'"
  loc_18BB078: unk_52DB4B.Execute var_17C, , 
  loc_18BB083: Set var_94 = var_150
  loc_18BB0B2: Set var_B4 = Me.Txt
  loc_18BB0B8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10))
  loc_18BB0CB: Set var_BC = Me.Txt
  loc_18BB0D1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_150)
  loc_18BB0EC: Set var_154 = Me.Txt
  loc_18BB0F2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_180)
  loc_18BB10D: Set var_194 = Me.Txt
  loc_18BB113: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_198)
  loc_18BB12E: Set var_19C = Me.Txt
  loc_18BB134: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_1A0)
  loc_18BB13C: var_C0 = var_1A0.Text
  loc_18BB171: Proc_96_76_1840070(Me.Txt, var_150.Text, var_180.Text, var_198.Text)
  loc_18BB1D3: var_E4 = Trim(CVar(Me.Recordset15.Fields.Item("DocID")))
  loc_18BB1F7: var_1D4 = "Select MAX(sno) AS SNO from RoomOcc  where DocId='" & var_E4 & "' and Site_Code='" & CVar(MemVar_1F92070) & "' and RoomNO='" 
  loc_18BB209: Set var_BC = Me.Txt
  loc_18BB20F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_150, var_C0, var_1D4, var_234)
  loc_18BB217: -1 = var_150.Text
  loc_18BB239: unk_52DB4B.Execute CStr(var_154 & CVar(var_C0) & "'"), Val(var_C0), Val(var_C0)
  loc_18BB244: Set var_8C = var_154
  loc_18BB283: If (Me.Recordset15.RecordCount > 0) Then
  loc_18BB2AF:   Proc_6_39_E7C810(var_E4, CVar(Me.Recordset15.Fields.Item("SNo")))
  loc_18BB2BC:   var_104 = (var_E4 + 1)
  loc_18BB2C1:   var_8E = CInt("Select MAX(sno) AS SNO from RoomOcc  where DocId='" & var_E4)
  loc_18BB2D3: Else
  loc_18BB2D5:   var_8E = 1
  loc_18BB2D8: End If
  loc_18BB2F2: var_B8 = Me.Recordset15.Fields.Item("DocID")
  loc_18BB317: Proc_96_84_FFBAD4(CStr(Trim(CVar(var_B8))), "E", var_8E)
  loc_18BB34F: If CBool(Trim(CVar(var_B8(var_8E))) <> vbNullString) Then
  loc_18BB370:   Set var_B4 = Me.Txt
  loc_18BB376:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_C0, "Update Booking Set OccRoom='")
  loc_18BB37E:   var_1D4 = var_B8.Text
  loc_18BB387:   var_148 = -1 & var_C0
  loc_18BB3B1:   var_14C = CStr(Trim(CVar(var_BC(CVar("E" & "' where docid='")))) & "'")
  loc_18BB3BB:   unk_52DB4B.Execute var_14C, , 
  loc_18BB3F4:   var_148 = "E"
  loc_18BB402:   Proc_96_85_FFC628(CStr(Trim(CVar(()))))
  loc_18BB415: End If
  loc_18BB433: Set var_B4 = Me.Txt
  loc_18BB439: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_B8, var_C0, "Update GuestFolio Set RoDisc='")
  loc_18BB441: var_1D4 = var_B8.Text
  loc_18BB44A: var_148 = -1 & var_C0
  loc_18BB451: var_16C = var_148 & "',RSDisc='"
  loc_18BB462: Set var_BC = Me.Txt
  loc_18BB468: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_150, var_14C)
  loc_18BB470: var_16C = var_150.Text
  loc_18BB4C1: var_174 = CStr(CVar(var_194 & var_14C & "' where docid='") & Trim(CVar(Me.Recordset15.Fields.Item("DocID"))) & "'")
  loc_18BB4CB: unk_52DB4B.Execute var_174, var_148, 
  loc_18BB50F: var_B4 = Me.Recordset15.Fields
  loc_18BB517: var_B8 = var_B4.Item("DocID")
  loc_18BB536: Set var_BC = Me.Txt
  loc_18BB53C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA))
  loc_18BB544: var_1E4 = CVar(var_150) 'Address
  loc_18BB56D: var_180 = Me.Txt.Fields.Item("vType")
  loc_18BB575: var_244 = var_180.Value
  loc_18BB585: Proc_6_17_EAA2B0(var_294, MemVar_1F92070)
  loc_18BB5A4: var_198 = Me.Recordset15.Fields.Item("vPrefix")
  loc_18BB5B3: Proc_6_17_EAA2B0(var_2F4, CVar(var_198))
  loc_18BB5D2: var_1A0 = Me.Recordset15.Fields.Item("GuestProf")
  loc_18BB5E1: Proc_6_17_EAA2B0(var_354, CVar(var_1A0))
  loc_18BB5F4: Set var_1A4 = Me.Txt
  loc_18BB5FA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_388)
  loc_18BB602: var_C0 = var_388.Tag
  loc_18BB624: var_3E0 = Me.Recordset15.Fields.Item("Roomtype")
  loc_18BB63F: Set var_424 = Me.Txt
  loc_18BB645: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_428)
  loc_18BB660: Set var_46C = Me.Txt
  loc_18BB666: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_470)
  loc_18BB67E: Set var_4B4 = Me.Txt
  loc_18BB684: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_4B8)
  loc_18BB68C: var_4C8 = CVar(var_4B8) 'Address
  loc_18BB6A6: Set var_4CC = Me.Txt
  loc_18BB6AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_4D0)
  loc_18BB6C1: var_1AC = Val(var_4D0.Tag)
  loc_18BB6D2: Set var_4D4 = Me.Txt
  loc_18BB6D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_4D8, var_174)
  loc_18BB71A: Set var_56C = Me.Txt
  loc_18BB720: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_570)
  loc_18BB72F: Proc_6_7_F25D88(var_590, CVar(var_570))
  loc_18BB73F: Set var_5C4 = Me.Txt
  loc_18BB745: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_5C8)
  loc_18BB755: Set var_62C = Me.Txt
  loc_18BB75B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_630)
  loc_18BB78C: var_628 = (Format(CVar(var_5C8), "00") + ":")
  loc_18BB7B7: var_680 = (1 + Format(CVar(var_630), "00"))
  loc_18BB7BE: Proc_6_17_EAA2B0(var_690, var_680, 1, var_628)
  loc_18BB7D1: Set var_6C4 = Me.Txt
  loc_18BB7D7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_6C8, var_178)
  loc_18BB7DF: 1 = var_6C8.Text
  loc_18BB7EC: var_1B4 = Val(var_178)
  loc_18BB7FD: Set var_70C = Me.Txt
  loc_18BB803: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_710, var_17C)
  loc_18BB818: var_B30 = Val(var_17C)
  loc_18BB844: Proc_6_7_F25D88(var_788, CVar(Me.Recordset15.Fields.Item("DepDate")), var_B30)
  loc_18BB881: Proc_6_7_F25D88(var_870, Date)
  loc_18BB894: Set var_8E4 = Me.Txt
  loc_18BB89A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_8E8, var_184)
  loc_18BB8A2: 1 = var_8E8.Text
  loc_18BB8B5: Set var_92C = Me.Txt
  loc_18BB8BB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_930)
  loc_18BB8D3: Set var_974 = Me.Txt
  loc_18BB8D9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_978)
  loc_18BB8E8: Proc_6_7_F25D88(var_998, CVar(var_978))
  loc_18BB925: Set var_A24 = Me.Txt
  loc_18BB92B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_A28)
  loc_18BB940: var_B38 = Val(var_A28.Text)
  loc_18BB951: Set var_A6C = Me.Txt
  loc_18BB957: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_A70, var_190)
  loc_18BB96C: var_B40 = Val(var_190)
  loc_18BB97D: Set var_AB4 = Me.Txt
  loc_18BB983: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_AB8, var_ABC)
  loc_18BB99D: var_114 = "Insert Into RoomOcc (DocID,Sno,FolioNo,VType, Site_Code,vPrefix,GuestProf,RoomCat,RoomType,RoomNo,RateCode,RoomRate,ChkInDate,ChkInTime,aDult,Children,DepDate,DepTime,Type,U_Name,U_EntDt,U_AE,LogSite_Code,RRTaxInc,RRServiceChrg,ChngDate,Extrabed,RoomTarrif,RackRate,RoomTaxStru) Values ('"
  loc_18BBA01: var_324 = var_114 & Trim(CVar(var_B8)) & "'," & CVar(var_8E) & "," & Trim(var_1E4) & ",'" & var_244 & "'," & var_294 & "," & var_2F4 & "," 
  loc_18BBA4E: var_480 = CVar(var_470.Text) 'String
  loc_18BBA61: var_548 = var_324 & var_354 & ",'" & CVar(var_C0) & "','" & var_3E0.Value & "','" & CVar(var_428.Text) & "','" & var_480 & "'," & IIf((Proc_6_38_E68A98(var_4C8) = "Yes"), CVar(var_4D8.Text), CVar(Val(var_174))) 
  loc_18BBA7A: var_5C0 = var_548 & "," & var_590 & "," 
  loc_18BBA95: var_6E8 = var_5C0 & var_690 & "," & CVar(var_710.Text) 
  loc_18BBADC: var_830 = var_6E8 & "," & CVar(var_B30) & "," & var_788 & ",'" & Me.Recordset15.Fields.Item("DepTime").Value & "','','" & CVar(MemVar_1F920C8) 
  loc_18BBB35: var_9A8 = var_830 & "'," & var_870 & ",'A','" & CVar(MemVar_1F92078) & "','" & CVar(var_184) & "','" & CVar(var_930.Text) & "'," & var_998 
  loc_18BBB80: var_ADC = var_9A8 & "," & Me.Txt.Fields.Item("ExtraBed").Value & "," & CVar(var_A70.Text) & "," & CVar(var_AB8.Text) & ",'" & CVar(var_ABC) 
  loc_18BBB97: unk_52DB4B.Execute CStr(var_ADC & "')"), var_B20, -1
  loc_18BBCDC: Set var_B4 = Me.Txt
  loc_18BBCE2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_B8)
  loc_18BBD11: Set var_BC = Me.Txt
  loc_18BBD17: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_150, var_C0)
  loc_18BBD1F: (Trim(CVar(var_B8)) <> vbNullString) = var_150.Tag
  loc_18BBD4B: If CBool(var_B24 And (var_C0 <> vbNullString)) Then
  loc_18BBD5C:   Set var_B4 = Me.Txt
  loc_18BBD62:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_B8)
  loc_18BBD6A:   var_C0 = var_B8.Tag
  loc_18BBD7D:   Set var_BC = Me.Txt
  loc_18BBD83:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_150)
  loc_18BBD8B:   var_14C = var_150.Text
  loc_18BBD98:   var_1AC = Val(var_14C)
  loc_18BBDA6:   Set var_154 = Me.Txt
  loc_18BBDAC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_180)
  loc_18BBDB4:   var_D4 = CVar(var_180) 'Address
  loc_18BBDBB:   var_E4 = Trim(var_D4)
  loc_18BBDCB:   Set var_194 = Me.Txt
  loc_18BBDD1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_198)
  loc_18BBDE0:   Proc_6_39_E7C810(var_1E4, CVar(var_198))
  loc_18BBDF0:   Set var_19C = Me.Txt
  loc_18BBDF6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_1A0)
  loc_18BBE05:   Proc_6_39_E7C810(var_244, CVar(var_1A0))
  loc_18BBE2A:   var_304 = CVar(Proc_6_15_EF2C1C(var_150)) 'String
  loc_18BBE30:   Proc_6_7_F25D88(var_324)
  loc_18BBE71:   Set var_3CC = Me.Txt
  loc_18BBE77:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_3E0)
  loc_18BBEAB:   var_174 = "Update RoomOcc Set PlanCode='" & var_C0 & "',PlanAmt=" & CStr(var_1AC)
  loc_18BBEEB:   var_2E4 = CVar(var_174 & ",IncInRate='") & var_E4 & "',PlanDisc=" & var_1E4 & ",PlanDiscAmt=" & var_244 & ",PlanDiscAppOn='" & CVar(Proc_6_38_E68A98(Trim(CVar(Me.LblDiscAppOn)), var_1AC)) 
  loc_18BBF0E:   var_364 = var_2E4 & "',U_EntDt=" & var_324 & ",U_AE='E' where Sno=" & CVar(var_8E) 
  loc_18BBF3A:   var_420 = var_364 & " And DocId='" & Trim(CVar(Me.LblDiscAppOn.Fields.Item("DocID"))) & "' and Site_Code='" & CVar(MemVar_1F92070) & "' and RoomNO='" 
  loc_18BBF5B:   unk_52DB4B.Execute CStr(var_420 & CVar(var_3E0.Text) & "'"), var_480, -1
  loc_18BBFD3: End If
  loc_18BBFF1: Set var_B4 = Me.Txt
  loc_18BBFF7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_C0, "Update GuestMessage set RoomNo='", var_D4)
  loc_18BBFFF: -1 = var_B8.Text
  loc_18BC00F: var_16C = var_19C & var_C0 & "',RoomCat='"
  loc_18BC020: Set var_BC = Me.Txt
  loc_18BC026: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_150, var_14C)
  loc_18BC02E: var_16C = var_150.Tag
  loc_18BC03E: var_178 = var_424 & var_14C & "' where FolioNo="
  loc_18BC04F: Set var_154 = Me.Txt
  loc_18BC055: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_180, var_174)
  loc_18BC05D: var_178 = var_180.Text
  loc_18BC08C: Set var_194 = Me.Txt
  loc_18BC092: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_198)
  loc_18BC0B3: unk_52DB4B.Execute var_304 & var_174 & " and LogSite_Code='" & MemVar_1F92078 & "' and RoomNO='" & var_198.Text & "'", , 
  loc_18BC0FA: Set var_B4 = Me.Txt
  loc_18BC100: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4))
  loc_18BC10F: Proc_6_7_F25D88(var_E4, CVar(var_B8))
  loc_18BC11F: Set var_BC = Me.Txt
  loc_18BC125: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_150)
  loc_18BC149: var_1E4 = Format(CVar(var_150), "00")
  loc_18BC159: Set var_154 = Me.Txt
  loc_18BC15F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_180, 1)
  loc_18BC183: var_244 = Format(CVar(var_180), "00")
  loc_18BC196: Set var_194 = Me.Txt
  loc_18BC19C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_198, var_C0, 1)
  loc_18BC1A4: 1 = var_198.Text
  loc_18BC1B4: Set var_19C = Me.Txt
  loc_18BC1BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_1A0)
  loc_18BC1C2: var_2F4 = CVar(var_1A0) 'Address
  loc_18BC1C9: Proc_6_17_EAA2B0(var_304, var_2F4)
  loc_18BC1D9: Proc_6_7_F25D88(var_364, CVar(Proc_6_15_EF2C1C(1)))
  loc_18BC21A: Set var_3CC = Me.Txt
  loc_18BC220: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_3E0)
  loc_18BC257: var_1F4 = (var_1E4 + ":")
  loc_18BC25E: var_254 = (CVar(var_174 & ",IncInRate='") & var_E4 & "',PlanDisc=" & var_1E4 + var_244)
  loc_18BC262: var_274 = "Update RoomOcc set CHKOUTDATE=" & var_E4 & ",CHKOUTTIME='" & CVar(var_174 & ",IncInRate='") & var_E4 & "',PlanDisc=" & var_1E4 & ",PlanDiscAmt=" & var_244 
  loc_18BC295: var_384 = var_274 & "',Type='C',NewRoomNo='" & CVar(var_C0) & "',Reason=" & var_304 & ",U_EntDt=" & var_364 
  loc_18BC2A8: var_2B4 = CVar((var_8E - 1)) 'Integer
  loc_18BC2C4: var_438 = var_384 & ",U_AE='E' where Sno=" & CVar(MemVar_1F92070) & " And DocId='" & Trim(CVar(Me.Txt.Fields.Item("DocID"))) & "' and Site_Code='" 
  loc_18BC2F8: unk_52DB4B.Execute CStr(var_438 & CVar(MemVar_1F92070) & "' and RoomNO='" & CVar(var_3E0.Text) & "'"), var_4C8, -1
  loc_18BC36F: Set var_B4 = Me.Txt
  loc_18BC375: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8)
  loc_18BC39D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_150, Trim(CVar(var_B8)))
  loc_18BC3C8: If CBool(var_424 <> Trim(CVar(var_150))) Then
  loc_18BC3E8:   Set var_B4 = Me.Txt
  loc_18BC3EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, "Update RoomMast set RoomStat='D' Where Type='RO' And Code='", var_1E4)
  loc_18BC405:   var_104 = -1 & Trim(CVar(var_B8)) 
  loc_18BC421:   var_1D4 = CVar(var_150) & "' And Site_Code='" & CVar(MemVar_1F92070) & "'" 
  loc_18BC42F:   unk_52DB4B.Execute CStr(var_1D4), Me.Txt, var_B8
  loc_18BC44F: End If
  loc_18BC47B: var_B8 = Me.Recordset15.Fields.Item("DocID")
  loc_18BC4AA: Set var_BC = Me.Txt
  loc_18BC4B0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_150, "Delete from PlanDetails where DocId='" & Trim(CVar(var_B8)) & "' And PlanAppDate=")
  loc_18BC4BF: Proc_6_7_F25D88(var_1D4, CVar(var_150), var_244)
  loc_18BC4C7: var_1E4 = -1 & var_1D4 
  loc_18BC4E7: var_C0 = CStr(var_1E4 & " And Site_Code='" & CVar(MemVar_1F92070) & "'")
  loc_18BC4F1: unk_52DB4B.Execute var_C0, var_154, 
  loc_18BC526: Set var_B4 = Me.Txt
  loc_18BC52C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E))
  loc_18BC55B: Set var_BC = Me.Txt
  loc_18BC561: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_150, var_C0)
  loc_18BC569: (Trim(CVar(var_B8)) <> vbNullString) = var_150.Tag
  loc_18BC5A8: If CBool(var_B8 And (var_C0 <> vbNullString) And (global_110 = &HFF)) Then
  loc_18BC5B6:   Set var_B4 = Me.FGrid3
  loc_18BC5D3:   For var_B44 = CByte(1) To CByte((CLng(var_B4.Rows) - 1)): var_96 = var_B44 'Byte
  loc_18BC5E6:     var_124 = CVar(CLng(2)) 'Long
  loc_18BC600:     var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_18BC611:     If (var_C0 <> vbNullString) Then
  loc_18BC622:       Set var_B4 = Me.Txt
  loc_18BC628:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B8, var_C0)
  loc_18BC630:       var_124 = var_B8.Text
  loc_18BC63D:       var_1AC = Val(var_C0)
  loc_18BC64B:       Set var_BC = Me.Txt
  loc_18BC651:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_150, var_1AC)
  loc_18BC66A:       var_F4 = CVar(CLng(var_96)) 'Long
  loc_18BC672:       var_124 = CVar(CLng(2)) 'Long
  loc_18BC681:       var_E4 = Me.FGrid3.TextMatrix)
  loc_18BC692:       var_1C4 = CVar(CLng(var_96)) 'Long
  loc_18BC69A:       var_224 = CVar(CLng(&H11)) 'Long
  loc_18BC6A9:       var_104 = Me.FGrid3.TextMatrix)
  loc_18BC6BA:       var_284 = CVar(CLng(var_96)) 'Long
  loc_18BC6C2:       var_2D4 = CVar(CLng(5)) 'Long
  loc_18BC6D1:       var_144 = Me.FGrid3.TextMatrix)
  loc_18BC6E2:       var_334 = CVar(CLng(var_96)) 'Long
  loc_18BC6EA:       var_3B8 = CVar(CLng(3)) 'Long
  loc_18BC70A:       var_410 = CVar(CLng(var_96)) 'Long
  loc_18BC712:       var_4A0 = CVar(CLng(&HB)) 'Long
  loc_18BC732:       var_4F8 = CVar(CLng(var_96)) 'Long
  loc_18BC73A:       var_558 = CVar(CLng(&HC)) 'Long
  loc_18BC75A:       var_5E8 = CVar(CLng(var_96)) 'Long
  loc_18BC762:       var_650 = CVar(CLng(&HD)) 'Long
  loc_18BC782:       var_6D8 = CVar(CLng(var_96)) 'Long
  loc_18BC78A:       var_720 = CVar(CLng(&HE)) 'Long
  loc_18BC7B4:       var_764 = CVar(CLng(var_96)) 'Long
  loc_18BC7BC:       var_7CC = CVar(CLng(6)) 'Long
  loc_18BC7E6:       var_820 = CVar(CLng(var_96)) 'Long
  loc_18BC7EE:       var_890 = CVar(CLng(7)) 'Long
  loc_18BC818:       var_8D0 = CVar(CLng(var_96)) 'Long
  loc_18BC820:       var_960 = CVar(CLng(8)) 'Long
  loc_18BC842:       var_B40 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BC874:       var_EC4 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BC8A6:       var_ECC = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BC8D8:       var_ED4 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BC908:       Proc_6_7_F25D88(var_2F4, CVar(CStr(Me.FGrid3.TextMatrix))), CVar(CLng(&H13)), CVar(CLng(var_96)), var_ED4, CVar(CLng(&H12)), CVar(CLng(var_96)), var_ECC)
  loc_18BC93A:       Proc_6_17_EAA2B0(var_384, CVar(CStr(Me.FGrid3.TextMatrix))), CVar(CLng(&H15)), CVar(CLng(var_96)), CVar(CLng(&HA)), CVar(CLng(var_96)))
  loc_18BC94A:       Proc_6_7_F25D88(var_438, MemVar_1F920EC, var_EC4, CVar(CLng(9)))
  loc_18BC95C:       var_D54 = CVar(CLng(&HF)) 'Long
  loc_18BC97E:       var_EDC = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BC9B0:       var_EE4 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BC9C1:       Set var_4D4 = Me.Txt
  loc_18BC9C7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_4D8, var_DD0, var_EE4, CVar(CLng(&H14)), CVar(CLng(var_96)), var_EDC)
  loc_18BC9CF:       var_D54 = var_4D8.Tag
  loc_18BCA0D:       Set var_5C4 = Me.Txt
  loc_18BCA13:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_5C8, CVar(CLng(var_96)), CVar(CLng(var_96)))
  loc_18BCA22:       Proc_6_39_E7C810(var_5C0, CVar(var_5C8), var_B40)
  loc_18BCA56:       var_EEC = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BCA64:       Set var_630 = Me.Txt
  loc_18BCA6A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_6C4, var_EEC, CVar(CLng(&H14)))
  loc_18BCA79:       Proc_6_7_F25D88(var_690, CVar(var_6C4), CVar(CLng(var_96)))
  loc_18BCA97:       var_14C = "Insert Into PlanDetails (FolioNo,RoomNo,RevCode,Chrgcode,TaxInc,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild,NoOfDays,PlanPer,App_Date,FixRate,Site_Code,U_Name,U_EntDt,U_AE,Amount,PlanCode,Docid,NetPackageAmount,Logsite_Code,DiscAmt,PlanAppDate) Values (" & CStr(var_1AC)
  loc_18BCAD3:       var_ABC = var_14C & ",'" & Proc_6_38_E68A98(CVar(var_150), CVar(CLng(var_96))) & "','" & CStr(var_E4) & "','" & CStr(var_104) & "','"
  loc_18BCB14:       var_B68 = var_ABC & CStr(var_144) & "','" & CStr(Me.FGrid3.TextMatrix)) & "','" & CStr(Me.FGrid3.TextMatrix)) & "','" & CStr(Me.FGrid3.TextMatrix))
  loc_18BCB4C:       var_B94 = var_B68 & "','" & CStr(Me.FGrid3.TextMatrix)) & "'," & CStr(Val(CStr(Me.FGrid3.TextMatrix)))) & "," & CStr(Val(CStr(Me.FGrid3.TextMatrix))))
  loc_18BCB98:       var_BD4 = var_B94 & "," & CStr(Val(CStr(Me.FGrid3.TextMatrix)))) & "," & CStr(var_B40) & "," & CStr(var_EC4) & "," & CStr(var_ECC)
  loc_18BCBEE:       var_400 = CVar(var_BD4 & "," & CStr(var_ED4) & ",") & var_2F4 & "," & var_384 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_18BCC12:       var_DBC = CVar((var_EDC - var_EE4)) 'Double
  loc_18BCC39:       var_580 = var_400 & "'," & var_438 & ",'A'," & var_DBC & ",'" & CVar(var_DD0) & "','" & Trim(CVar(Me.Recordset15.Fields.Item("DocID"))) 
  loc_18BCC97:       unk_52DB4B.Execute CStr(var_580 & "'," & var_5C0 & ",'" & CVar(MemVar_1F92078) & "'," & CVar(var_EEC) & "," & var_690 & ")"), var_6E8, -1
  loc_18BCDC9:     End If
  loc_18BCDCC:   Next var_B44 'Byte
  loc_18BCDD2: End If
  loc_18BCDD8: unk_52DB4B.CommitTrans
  loc_18BCDE2: Set var_8C = Nothing
  loc_18BCDE9: var_86 = CByte(0) 'Byte
  loc_18BCDED: Call Proc_59_41_E9AFD8()
  loc_18BCDFD: Me.Requery -1
  loc_18BCE07: Set var_94 = Nothing
  loc_18BCE0A: Exit Sub
  loc_18BCE0B: ' Referenced from: 18BA8EC
  loc_18BCE14: If (CInt(var_86) = 1) Then
  loc_18BCE1D:   unk_52DB4B.RollbackTrans
  loc_18BCE22: End If
  loc_18BCE2A: Set var_B4 = Err()
  loc_18BCE30: Call 0.Method_arg_2C (var_C0)
  loc_18BCE49: MsgBox(CVar(var_C0), &H10, var_E4, var_104, var_144)
  loc_18BCE5C: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F515E4
  'Data Table: 52DB2C
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F514D4: Call Proc_59_42_F6DF1C()
  loc_F514E5: If (Index = 0) Then
  loc_F514FB:   var_C0 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_F51504:   Set var_A0 = Me.FGrid3
  loc_F5153A:   Set var_108 = Me.TxtGrid
  loc_F51540:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid3.TextMatrix)))
  loc_F51548:   var_10C.Tag = CVar(CLng(var_A0.Col))
  loc_F51579:   var_114 = CLng(Me.FGrid3.Col)
  loc_F51589:   If Not (var_114 = CLng(&H12)) Then
  loc_F51593:     If (var_114 = CLng(&HF)) Then
  loc_F51596:     End If
  loc_F515A5:     Set var_8C = Me.TxtGrid
  loc_F515AB:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_F515B3:     var_A0.MaxLength = var_114
  loc_F515C8:     If (global_68 = 0) Then
  loc_F515D3:       var_110 = "{Home}+{End}"
  loc_F515D9:       Proc_303_0_FB9B68(CStr(Me.FGrid3.TextMatrix)), 0)
  loc_F515E1:     End If
  loc_F515E1:   End If
  loc_F515E1: End If
  loc_F515E1: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FAC218
  'Data Table: 52DB2C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Long
  loc_FAC088: On Error Goto loc_FAC210
  loc_FAC095: If (CLng(Shift) = &H1B) Then
  loc_FAC0A5:   Set var_88 = Me.TxtGrid
  loc_FAC0AB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FAC0C5:   Set var_94 = Me.TxtGrid
  loc_FAC0CB:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_FAC0D3:   var_98.Text = var_8C.Tag
  loc_FAC0EF:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FAC0F4:   Call Proc_59_42_F6DF1C(arg_14)
  loc_FAC105:   Set var_88 = Me.TxtGrid
  loc_FAC10B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FAC113:   var_8C.Visible = False
  loc_FAC11F:   Exit Sub
  loc_FAC120: End If
  loc_FAC12C: If (KeyCode = 0) Then
  loc_FAC142:   var_B0 = CLng(Me.FGrid3.Col)
  loc_FAC152:   If Not (var_B0 = CLng(&H12)) Then
  loc_FAC15C:     If (var_B0 = CLng(&HF)) Then
  loc_FAC15F:     End If
  loc_FAC19F:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_68 = &HFF))) Then
  loc_FAC1A8:       Call Proc_59_47_1290BE0(KeyCode, var_B2)
  loc_FAC1B3:       If (var_B2 = &HFF) Then
  loc_FAC200:         Proc_6_62_1253BC4(Me.FGrid3, Me.TxtGrid, KeyCode, Shift, global_68, CByte((CInt(&HF) + 1)))
  loc_FAC210:         ' Referenced from: FAC088
  loc_FAC210:       End If
  loc_FAC210:     End If
  loc_FAC210:   End If
  loc_FAC210: End If
  loc_FAC210: Proc_6_60_E62BC4(0, 0, 0)
  loc_FAC215: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EDA984
  'Data Table: 52DB2C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_EDA8DC: If (KeyAscii = 0) Then
  loc_EDA8F2:   var_A0 = CLng(Me.FGrid3.Col)
  loc_EDA902:   If (var_A0 = CLng(&H12)) Then
  loc_EDA90F:     Set var_8C = Me.TxtGrid
  loc_EDA915:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EDA930:     Proc_6_42_129A86C(var_A4, arg_10, 2)
  loc_EDA93F:   Else
  loc_EDA946:     If (var_A0 = CLng(&HF)) Then
  loc_EDA953:       Set var_8C = Me.TxtGrid
  loc_EDA959:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 2)
  loc_EDA974:       Proc_6_42_129A86C(var_A4, arg_10, 8)
  loc_EDA980:     End If
  loc_EDA980:   End If
  loc_EDA980: End If
  loc_EDA980: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E026C0
  'Data Table: 52DB2C
  loc_E026B4: On Error Goto loc_E026B8
  loc_E026B7: Exit Sub
  loc_E026B8: ' Referenced from: E026B4
  loc_E026B8: Proc_6_60_E62BC4()
  loc_E026BD: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E1FEA8
  'Data Table: 52DB2C
  Dim arg_10 As Integer
  loc_E1FE90: If (Cancel = 0) Then
  loc_E1FE99:   Call Proc_59_47_1290BE0(Cancel, var_88)
  loc_E1FEA2:   arg_10 = Not(var_88)
  loc_E1FEA5: End If
  loc_E1FEA5: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_9 'F61090
  'Data Table: 52DB2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F60F77: (False).Visible = 
  loc_F60F96: If (Me.RecordCount > 0) Then
  loc_F60FD5:   Set var_B4 = Me.Txt
  loc_F60FDB:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F60FE3:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F61016:   var_B0 = Me.Fields.Item("Name")
  loc_F61035:   Set var_B4 = Me.Txt
  loc_F6103B:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F61043:   var_B8.Text = CStr(var_B0.Value)
  loc_F61065:   Call Txt_Validate(CInt(&HB))
  loc_F6106A: End If
  loc_F61075: Set var_A8 = Me.Txt
  loc_F6107B: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(&HB), var_B0)
  loc_F61083: var_B0.SetFocus
  loc_F6108F: Exit Sub
End Sub

Private Sub CmdOK_Click() '1414668
  'Data Table: 52DB2C
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_98 As TextBox
  Dim var_148 As Double
  Dim var_124 As TextBox
  Dim var_150 As Double
  Dim var_130 As TextBox
  Dim var_158 As Double
  Dim var_13C As TextBox
  Dim var_160 As Double
  Dim var_164 As String
  Dim var_178 As TextBox
  Dim var_200 As Double
  Dim var_184 As TextBox
  Dim var_208 As Double
  Dim var_16C As TextBox
  Dim var_18C As String
  Dim var_210 As Double
  Dim var_118 As Variant
  Dim var_1D8 As Variant
  Dim var_94 As Frame
  loc_1413C41: Set var_94 = Me.Lbl
  loc_1413C47: Call 0.Method_CmdOK_Click0 (&H3F)
  loc_1413C56: var_B8 = Trim(CVar(var_98))
  loc_1413C70: If (var_B8 = vbNullString) Then
  loc_1413C81:   var_C8 = "Re-Check Package Details"
  loc_1413C8C:   MsgBox(vbNullString, 0, var_B8, var_D8, var_118)
  loc_1413C9C:   Exit Sub
  loc_1413C9D: End If
  loc_1413CAB: Set var_94 = Me.Txt
  loc_1413CB1: Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_98)
  loc_1413CD0: If (var_98.Text = "No") Then
  loc_1413CE1:   Set var_94 = Me.Txt
  loc_1413CE7:   Call 0.Method_CmdOK_Click0 (CInt(&H19), var_98)
  loc_1413CEF:   var_11C = var_98.Text
  loc_1413CFC:   var_148 = Val(var_11C)
  loc_1413D0D:   Set var_120 = Me.Txt
  loc_1413D13:   Call 0.Method_CmdOK_Click0 (CInt(&H2D), var_124, var_128)
  loc_1413D28:   var_150 = Val(var_128)
  loc_1413D39:   Set var_12C = Me.Txt
  loc_1413D3F:   Call 0.Method_CmdOK_Click0 (CInt(&H30), var_130, var_134)
  loc_1413D54:   var_158 = Val(var_134)
  loc_1413D65:   Set var_138 = Me.Txt
  loc_1413D6B:   Call 0.Method_CmdOK_Click0 (CInt(&H10), var_13C, var_140)
  loc_1413D92:   var_B8 = "0"
  loc_1413DA7:   var_A8 = CVar((((var_124.Text - var_130.Text) - var_13C.Text) - Val(var_140))) 'Double
  loc_1413DAE:   var_D8 = Format(vbNullString, var_B8)
  loc_1413DE5:   If CBool(var_D8 <> 0) Then
  loc_1413E01:     MsgBox("Invalid Package Amount", 0, var_B8, var_D8, var_118)
  loc_1413E11:     Exit Sub
  loc_1413E12:   End If
  loc_1413E15: Else
  loc_1413E23:   Set var_94 = Me.Txt
  loc_1413E29:   Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_98, var_11C, 1)
  loc_1413E31:   1 = var_98.Text
  loc_1413E48:   If (var_11C = "Yes") Then
  loc_1413E59:     Set var_12C = Me.Txt
  loc_1413E5F:     Call 0.Method_CmdOK_Click0 (CInt(&H2D), var_130, var_134)
  loc_1413E67:     var_160 = var_130.Text
  loc_1413E74:     var_150 = Val(var_134)
  loc_1413E85:     Set var_138 = Me.Txt
  loc_1413E8B:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_13C, var_140)
  loc_1413EA0:     var_158 = Val(var_140)
  loc_1413EB1:     Set var_120 = Me.Txt
  loc_1413EB7:     Call 0.Method_CmdOK_Click0 (CInt(&H30), var_124, var_128)
  loc_1413ED6:     var_164 = CStr(((Val(var_128) + var_13C.Tag) + var_124.Text))
  loc_1413EDE:     var_160 = Val(var_164)
  loc_1413EEF:     Set var_174 = Me.Txt
  loc_1413EF5:     Call 0.Method_CmdOK_Click0 (CInt(&H2D), var_178, var_17C)
  loc_1413F0A:     var_200 = Val(var_17C)
  loc_1413F1B:     Set var_180 = Me.Txt
  loc_1413F21:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_184, var_188)
  loc_1413F36:     var_208 = Val(var_188)
  loc_1413F47:     Set var_168 = Me.Txt
  loc_1413F4D:     Call 0.Method_CmdOK_Click0 (CInt(&H30), var_16C, var_170)
  loc_1413F6C:     var_18C = CStr(((Val(var_170) + var_184.Tag) + var_16C.Text))
  loc_1413F8F:     var_118 = CVar(Val(var_18C)) 'Double
  loc_1413FA9:     Set var_94 = Me.Txt
  loc_1413FAF:     Call 0.Method_CmdOK_Click0 (CInt(&H19), var_98, var_11C, 1)
  loc_1413FB7:     1 = var_98.Text
  loc_1413FD8:     var_B8 = "0.00"
  loc_1413FE8:     var_D8 = Format(CVar(var_178.Text), var_B8)
  loc_141400F:     Proc_6_142_14A55B0(CSng(Format(var_118, "0.00")), CByte(0), "U", 2, var_D8)
  loc_1414018:     var_1D8 = (1 + CVar(1))
  loc_1414065:     If CBool(CVar(Val(var_11C)) <> var_1D8) Then
  loc_1414081:       MsgBox("Invalid Room Rate", 0, var_B8, var_D8, var_118)
  loc_1414091:       Exit Sub
  loc_1414092:     End If
  loc_1414092:   End If
  loc_1414092: End If
  loc_14140A0: Set var_94 = Me.Txt
  loc_14140A6: Call 0.Method_CmdOK_Click0 (CInt(&H30), var_98, var_11C)
  loc_14140AE: var_210 = var_98.Text
  loc_14140CA: If (CDbl(Val(var_11C)) < CDbl(0)) Then
  loc_14140E6:   MsgBox("Invalid Meal Charges", &H40, var_B8, var_D8, var_118)
  loc_1414101:   Set var_94 = Me.Txt
  loc_1414107:   Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_141410F:   var_98.SetFocus
  loc_141411B:   Exit Sub
  loc_141411C: End If
  loc_141412A: Set var_94 = Me.Txt
  loc_1414130: Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_1414159: Set var_120 = Me.Txt
  loc_141415F: Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_124)
  loc_141416E: var_B8 = Trim(CVar(var_124))
  loc_1414180: var_118 = (CDbl(Val(var_98.Text)) = CDbl(0)) And (var_B8 = "Yes")
  loc_141419B: If CBool(var_118) Then
  loc_14141B7:   MsgBox("Invalid Room Rate", &H40, var_B8, var_D8, var_118)
  loc_14141D2:   Set var_94 = Me.Txt
  loc_14141D8:   Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_14141E0:   var_98.SetFocus
  loc_14141EC:   Exit Sub
  loc_14141ED: End If
  loc_14141FB: Set var_94 = Me.Txt
  loc_1414201: Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_1414225: If (CDbl(Val(var_98.Text)) < CDbl(0)) Then
  loc_1414241:   MsgBox("Negative Room Rate", &H40, var_B8, var_D8, var_118)
  loc_141425C:   Set var_94 = Me.Txt
  loc_1414262:   Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_141426A:   var_98.SetFocus
  loc_1414276:   Exit Sub
  loc_1414277: End If
  loc_1414282: If (global_132 = "Yes") Then
  loc_1414293:   Set var_94 = Me.Txt
  loc_1414299:   Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_14142A1:   var_11C = var_98.Text
  loc_14142C2:   Set var_120 = Me.Txt
  loc_14142C8:   Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_124)
  loc_14142D7:   var_B8 = Trim(CVar(var_124))
  loc_14142E9:   var_118 = (CDbl(Val(var_11C)) <> CDbl(0)) And (var_B8 = "Yes")
  loc_1414304:   If CBool(var_118) Then
  loc_1414315:     Set var_120 = Me.Txt
  loc_141431B:     Call 0.Method_CmdOK_Click0 (CInt(&H33), var_124)
  loc_1414330:     var_160 = Val(var_124.Text)
  loc_1414341:     Set var_12C = Me.Txt
  loc_1414347:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_130, var_134)
  loc_141435C:     var_200 = Val(var_134)
  loc_141436D:     Set var_138 = Me.Txt
  loc_1414373:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_13C, var_140)
  loc_1414388:     var_208 = Val(var_140)
  loc_1414399:     Set var_168 = Me.Txt
  loc_141439F:     Call 0.Method_CmdOK_Click0 (CInt(&H32), var_16C, var_17C)
  loc_14143DA:     Proc_96_79_17B0CC8(var_130.Tag, var_13C.Text, var_16C.Text, "Yes")
  loc_14143DF:     var_210 = "Yes"
  loc_14143F0:     Set var_94 = Me.Txt
  loc_14143F6:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98, var_11C)
  loc_141443D:     If (CDbl(Abs((Val(var_11C) - var_98.Tag))) > CDbl(1)) Then
  loc_1414459:       MsgBox("Block Range Room Rate Inc.", &H40, var_B8, var_D8, var_118)
  loc_1414474:       Set var_94 = Me.Txt
  loc_141447A:       Call 0.Method_CmdOK_Click0 (CInt(&H19), var_98)
  loc_1414482:       var_98.SetFocus
  loc_141448E:       Exit Sub
  loc_141448F:     End If
  loc_141448F:   End If
  loc_141448F: End If
  loc_141449F: Me.FrPackage.ZOrder 1
  loc_14144B3: Me.FrPackage.Visible = False
  loc_14144C7: Me.Frame1.Enabled = True
  loc_14144DA: Set var_94 = Me.Txt
  loc_14144E0: Call 0.Method_CmdOK_Click0 (CInt(&H18), var_98)
  loc_1414509: If (Proc_6_27_EA565C(var_98, "Plan/Package") = 0) Then
  loc_1414513:   Call Txt_GotFocus(CInt(&H18))
  loc_1414518:   Exit Sub
  loc_1414519: End If
  loc_1414524: Set var_94 = Me.Txt
  loc_141452A: Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_98)
  loc_1414553: If (Proc_6_27_EA565C(var_98, "Inc.in Rate") = 0) Then
  loc_141455D:   Call Txt_GotFocus(CInt(&H2B))
  loc_1414562:   Exit Sub
  loc_1414563: End If
  loc_141456E: Set var_94 = Me.Txt
  loc_1414574: Call 0.Method_CmdOK_Click0 (CInt(&H19), var_98)
  loc_141457C: var_11C = "Plan/Package Amount"
  loc_141459D: If (Proc_6_27_EA565C(var_98, var_11C) = 0) Then
  loc_14145A7:   Call Txt_GotFocus(CInt(&H19))
  loc_14145AC:   Exit Sub
  loc_14145AD: End If
  loc_14145BB: Set var_94 = Me.Txt
  loc_14145C1: Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98, var_11C)
  loc_14145C9: var_17C = var_98.Text
  loc_14145E5: If (CDbl(Val(var_11C)) = CDbl(0)) Then
  loc_14145F3:   Set var_94 = Me.Txt
  loc_14145F9:   Call 0.Method_CmdOK_Click0 (CInt(&H10), var_98)
  loc_1414601:   var_98.SetFocus
  loc_1414610: Else
  loc_141461B:   Set var_94 = Me.Txt
  loc_1414621:   Call 0.Method_CmdOK_Click0 (CInt(&H29), var_98)
  loc_1414629:   var_98.SetFocus
  loc_1414635: End If
  loc_1414643: Set var_94 = Me.Txt
  loc_1414649: Call 0.Method_CmdOK_Click0 (CInt(&H27), var_98)
  loc_1414651: var_98.Text = vbNullString
  loc_1414662: Set var_88 = Nothing
  loc_1414665: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F3FA84
  'Data Table: 52DB2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F97B: Me.DGRoomNo.Visible = False
  loc_F3F99A: If (Me.RecordCount > 0) Then
  loc_F3F9D9:   Set var_B4 = Me.Txt
  loc_F3F9DF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3F9E7:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F3FA1A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F3FA39:   Set var_B4 = Me.Txt
  loc_F3FA3F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3FA47:   var_B8.Text = CStr(var_B0.Value)
  loc_F3FA5D: End If
  loc_F3FA68: Set var_A8 = Me.Txt
  loc_F3FA6E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F3FA76: var_B0.SetFocus
  loc_F3FA82: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9B090
  'Data Table: 52DB2C
  Dim var_A8 As Variant
  loc_E9B014: Set var_88 = Me.DGRoomNo
  loc_E9B03E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9B046: Set var_BC = Me.DGRoomNo
  loc_E9B066: Set var_BC = var_A8(DGRoomNo.DispID_1B)
  loc_E9B080: Proc_6_138_106D6F8(Me.DGRoomNo, global_88, 0)
  loc_E9B08E: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1A3FC
  'Data Table: 52DB2C
  loc_E1A3F1: Me.Global.Unload Me
  loc_E1A3F9: Exit Sub
End Sub

Public Function MasterFormExitGet() '52F6F0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '52F6FF
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '52F70E
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '52F71D
  mVType = Value
End Sub

Public Property Get OpenMode() 'E06800
  'Data Table: 52DB2C
  loc_E067F9: OpenMode = global_104
End Sub

Public Property Let OpenMode(vNewValue) 'E01DD8
  'Data Table: 52DB2C
  loc_E01DD2: global_104 = vNewValue
  loc_E01DD5: Exit Sub
End Sub

Public Sub Proc_59_40_106D9E8(arg_C) '106D9E8
  'Data Table: 52DB2C
  Dim var_98 As TextBox
  loc_106D75A: Set var_8C = Me.Txt
  loc_106D760: Call 0.Method_Proc_59_40_106D9E8C (var_8E, var_86)
  loc_106D770: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_106D786:   Set var_8C = Me.Txt
  loc_106D78C:   Call 0.Method_Proc_59_40_106D9E80 (CInt(var_86), var_98)
  loc_106D794:   var_98.Enabled = arg_C
  loc_106D7A3: Next var_92 'Byte
  loc_106D7B6: Set var_8C = Me.Txt
  loc_106D7BC: Call 0.Method_Proc_59_40_106D9E80 (CInt(&H1F), var_98)
  loc_106D7C4: var_98.Enabled = False
  loc_106D7DD: Set var_8C = Me.Txt
  loc_106D7E3: Call 0.Method_Proc_59_40_106D9E80 (CInt(&H2A), var_98)
  loc_106D7EB: var_98.Enabled = False
  loc_106D804: Set var_8C = Me.Txt
  loc_106D80A: Call 0.Method_Proc_59_40_106D9E80 (CInt(&H30), var_98)
  loc_106D812: var_98.Enabled = False
  loc_106D82B: Set var_8C = Me.Txt
  loc_106D831: Call 0.Method_Proc_59_40_106D9E80 (CInt(&H33), var_98)
  loc_106D839: var_98.Enabled = False
  loc_106D857: If ((MemVar_1F920B8 = 0) And (global_112 <> "Yes")) Then
  loc_106D867:   Set var_8C = Me.Txt
  loc_106D86D:   Call 0.Method_Proc_59_40_106D9E80 (CInt(&H10), var_98)
  loc_106D875:   var_98.Enabled = False
  loc_106D88E:   Set var_8C = Me.Txt
  loc_106D894:   Call 0.Method_Proc_59_40_106D9E80 (CInt(&H1E), var_98)
  loc_106D89C:   var_98.Enabled = False
  loc_106D8B5:   Set var_8C = Me.Txt
  loc_106D8BB:   Call 0.Method_Proc_59_40_106D9E80 (CInt(&H26), var_98)
  loc_106D8C3:   var_98.Enabled = False
  loc_106D8DC:   Set var_8C = Me.Txt
  loc_106D8E2:   Call 0.Method_Proc_59_40_106D9E80 (CInt(&H29), var_98)
  loc_106D8EA:   var_98.Enabled = False
  loc_106D903:   Set var_8C = Me.Txt
  loc_106D909:   Call 0.Method_Proc_59_40_106D9E80 (CInt(&H27), var_98)
  loc_106D911:   var_98.Enabled = False
  loc_106D92A:   Set var_8C = Me.Txt
  loc_106D930:   Call 0.Method_Proc_59_40_106D9E80 (CInt(&H28), var_98)
  loc_106D938:   var_98.Enabled = False
  loc_106D947: Else
  loc_106D952:   If (global_120 = "N") Then
  loc_106D962:     Set var_8C = Me.Txt
  loc_106D968:     Call 0.Method_Proc_59_40_106D9E80 (CInt(&H10), var_98)
  loc_106D970:     var_98.Enabled = False
  loc_106D97C:   End If
  loc_106D987:   If (global_124 = "N") Then
  loc_106D997:     Set var_8C = Me.Txt
  loc_106D99D:     Call 0.Method_Proc_59_40_106D9E80 (CInt(&H26), var_98)
  loc_106D9A5:     var_98.Enabled = False
  loc_106D9B1:   End If
  loc_106D9BC:   If (global_128 = "N") Then
  loc_106D9CC:     Set var_8C = Me.Txt
  loc_106D9D2:     Call 0.Method_Proc_59_40_106D9E80 (CInt(&H29), var_98)
  loc_106D9DA:     var_98.Enabled = False
  loc_106D9E6:   End If
  loc_106D9E6: End If
  loc_106D9E6: Exit Sub
End Sub

Public Sub Proc_59_41_E9AFD8
  'Data Table: 52DB2C
  Dim var_98 As TextBox
  loc_E9AF5E: Set var_8C = Me.Txt
  loc_E9AF64: Call 0.Method_Proc_59_41_E9AFD8C (var_8E, var_86)
  loc_E9AF74: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9AF8A:   Set var_8C = Me.Txt
  loc_E9AF90:   Call 0.Method_Proc_59_41_E9AFD80 (CInt(var_86), var_98)
  loc_E9AF98:   var_98.Text = vbNullString
  loc_E9AFB4:   Set var_8C = Me.Txt
  loc_E9AFBA:   Call 0.Method_Proc_59_41_E9AFD80 (CInt(var_86), var_98)
  loc_E9AFC2:   var_98.Tag = vbNullString
  loc_E9AFD1: Next var_92 'Byte
  loc_E9AFD7: Exit Sub
End Sub

Public Sub Proc_59_42_F6DF1C
  'Data Table: 52DB2C
  loc_F6DDF0: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6DE02:   Me.DGRoomNo.Visible = False
  loc_F6DE0A: End If
  loc_F6DE26: If (CBool(Me.DGNewRoomNo.Visible) = &HFF) Then
  loc_F6DE38:   Me.DGNewRoomNo.Visible = False
  loc_F6DE40: End If
  loc_F6DE5C: If (CBool(().Visible) = &HFF) Then
  loc_F6DE6E:   (False).Visible = 
  loc_F6DE76: End If
  loc_F6DE92: If (CBool(Me.DGPlanPkg.Visible) = &HFF) Then
  loc_F6DEA4:   Me.DGPlanPkg.Visible = False
  loc_F6DEAC: End If
  loc_F6DEC8: If (CBool(Me.DGPackage.Visible) = &HFF) Then
  loc_F6DEDA:   Me.DGPackage.Visible = False
  loc_F6DEE2: End If
  loc_F6DEFE: If (CBool(().Visible) = &HFF) Then
  loc_F6DF10:   (False).Visible = 
  loc_F6DF18: End If
  loc_F6DF18: Exit Sub
End Sub

Public Sub Proc_59_43_E601A8
  'Data Table: 52DB2C
  Dim var_A8 As TextBox
  loc_E6017A: Set var_A4 = Me.Txt
  loc_E60180: Call 0.Method_Proc_59_43_E601A80 (CInt(&H19), var_A8)
  loc_E601A2: Call Proc_59_48_1D76B48(Val(var_A8.Text))
  loc_E601A7: Exit Sub
End Sub

Public Sub Proc_59_44_19808A8
  'Data Table: 52DB2C
  Dim var_B4 As String
  Dim var_C4 As String
  Dim var_BC As Variant
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_52DB4B As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As String
  Dim var_F8 As Variant
  Dim var_100 As Variant
  Dim var_B0 As Recordset15
  Dim var_DC As Variant
  Dim var_B8 As Variant
  Dim var_124 As Variant
  Dim var_EC As Variant
  Dim var_134 As Variant
  Dim var_F0 As Variant
  Dim var_164 As Variant
  Dim var_17C As Double
  Dim var_144 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_154 As Variant
  Dim var_114 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_FC As Variant
  Dim var_204 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_2D8 As Double
  Dim var_2E0 As Double
  Dim var_2E8 As Double
  Dim var_27C As TextBox
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_1D4 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_300 As TextBox
  loc_197DB24: var_B4 = "SELECT plan1.Code, plan1.Chrgcode, FixedCharge.Name,plan1.Revcode, plan1.TaxStru, plan1.TaxInc, plan1.PrintOption,plan1.PostingMethod, plan1.ChargeType, plan1.FlatRate,plan1.Adult, plan1.Child, plan1.ExtraAdult, plan1.ExtraChild,Plan1.App_Date , Plan1.PlanPer, PlanMast.PercentApp,PlanMast.plan_package,Plan1.NoofDays,Plan1.PerDayAmount,Plan1.NetAmount,Plan1.FixRate,pLANmAST.RoomPer,PlanMast.RoomRate,PlanMast.PackageAmount,PlanMast.DiscAppYN,PlanMAst.DiscAppOn,planmast.Nights,planmast.Adults,PlanMast.Childs,PLanMast.RRIncTax,PLanMast.RoomTaxStru FROM (PlanMast Left join plan1 on Planmast.Code=Plan1.Code) Left Join FixedCharge ON plan1.Chrgcode = FixedCharge.Code  where (PlanMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_197DB2B: var_C4 = var_B4 & "' or PlanMast.LOGSITE_CODE='HO') and PlanMast.code='"
  loc_197DB3C: Set var_B8 = Me.Txt
  loc_197DB42: Call 0.Method_Proc_59_44_19808A80 (CInt(&H18), var_BC, var_C0, var_C4)
  loc_197DB4A: var_EC = var_BC.Tag
  loc_197DB53: var_C8 = -1 & var_C0
  loc_197DB63: unk_52DB4B.Execute var_C8 & "'", var_F0, 
  loc_197DB6E: Set var_88 = var_F0
  loc_197DB9E: If (var_88.RecordCount > 0) Then
  loc_197DBBF:   Set var_B8 = Me.Txt
  loc_197DBC5:   Call 0.Method_Proc_59_44_19808A80 (CInt(8), var_BC, var_B4, "Select * from Comp_PlanDet where companyCode='")
  loc_197DBCD:   var_EC = var_BC.Tag
  loc_197DBD6:   var_C0 = -1 & var_B4
  loc_197DBDD:   var_C8 = var_C0 & "' and RoomCat='"
  loc_197DBEE:   Set var_F0 = Me.Txt
  loc_197DBF4:   Call 0.Method_Proc_59_44_19808A80 (CInt(&HB), var_F8, var_C4)
  loc_197DBFC:   var_C8 = var_F8.Tag
  loc_197DC05:   var_CC = var_114 & var_C4
  loc_197DC1D:   Set var_FC = Me.Txt
  loc_197DC23:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H18), var_100)
  loc_197DC44:   unk_52DB4B.Execute var_CC & "' and PLanCode='" & var_100.Tag & "'", , 
  loc_197DC4F:   Set var_B0 = var_114
  loc_197DC8F:   If (var_B0.RecordCount > 0) Then
  loc_197DCCE:     If (var_B0.Fields.Item("PLANAmt").Value > 0) Then
  loc_197DCF0:       var_EC = CVar(var_B0.Fields.Item("PLANAmt")) 'Address
  loc_197DCF7:       Proc_6_39_E7C810(var_134)
  loc_197DD2E:       Set var_F0 = Me.Txt
  loc_197DD34:       Call 0.Method_Proc_59_44_19808A80 (CInt(&H19), var_F8, CStr(Format(var_134, "0.00")))
  loc_197DD3C:       var_F8.Text = 1
  loc_197DD5B:     Else
  loc_197DD81:       Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("PackageAmount")))
  loc_197DDB8:       Set var_F0 = Me.Txt
  loc_197DDBE:       Call 0.Method_Proc_59_44_19808A80 (CInt(&H19), var_F8, CStr(Format(var_134, "0.00")), 1)
  loc_197DDC6:       var_F8.Text = 1
  loc_197DDE2:     End If
  loc_197DDE5:   Else
  loc_197DE0B:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("PackageAmount")))
  loc_197DE42:     Set var_F0 = Me.Txt
  loc_197DE48:     Call 0.Method_Proc_59_44_19808A80 (CInt(&H19), var_F8, CStr(Format(var_134, "0.00")), 1)
  loc_197DE50:     var_F8.Text = 1
  loc_197DE6C:   End If
  loc_197DE92:   Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("RoomRate")))
  loc_197DEA9:   Set var_F0 = Me.Txt
  loc_197DEAF:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H2E), var_F8, CStr(var_134))
  loc_197DEB7:   var_F8.Text = 1
  loc_197DEE6:   var_BC = var_88.Fields.Item("RoomRate")
  loc_197DEF5:   Proc_6_39_E7C810(var_134, CVar(var_BC))
  loc_197DF0C:   Set var_F0 = Me.Txt
  loc_197DF12:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H10), var_F8)
  loc_197DF1A:   var_F8.Text = CStr(var_134)
  loc_197DF40:   Set var_B8 = Me.Txt
  loc_197DF46:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H2B), var_BC)
  loc_197DF4E:   var_BC.Text = "Yes"
  loc_197DF74:   var_BC = var_88.Fields.Item("DiscAppYN")
  loc_197DF96:   If CBool(var_BC.Value <> "Yes") Then
  loc_197DFA6:     Set var_B8 = Me.Txt
  loc_197DFAC:     Call 0.Method_Proc_59_44_19808A80 (CInt(&H2D), var_BC)
  loc_197DFB4:     var_BC.Enabled = False
  loc_197DFCD:     Set var_B8 = Me.Txt
  loc_197DFD3:     Call 0.Method_Proc_59_44_19808A80 (CInt(&H2C), var_BC)
  loc_197DFDB:     var_BC.Enabled = False
  loc_197DFE7:   End If
  loc_197E01D:   var_B4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiscAppOn"))))))
  loc_197E02B:   Me.LblDiscAppOn.Caption = var_B4
  loc_197E05D:   var_BC = var_88.Fields.Item("PLan_Package")
  loc_197E07F:   If (var_BC.Value = "Plan") Then
  loc_197E08E:     Set var_B8 = Me.Lbl
  loc_197E094:     Call 0.Method_Proc_59_44_19808A80 (&H2C, var_BC)
  loc_197E09C:     var_BC.Caption = "Plan"
  loc_197E0B4:     Set var_B8 = Me.Lbl
  loc_197E0BA:     Call 0.Method_Proc_59_44_19808A80 (&H23, var_BC)
  loc_197E0C2:     var_BC.Caption = "Plan Amount"
  loc_197E0DA:     Set var_B8 = Me.Lbl
  loc_197E0E0:     Call 0.Method_Proc_59_44_19808A80 (&H40, var_BC)
  loc_197E0E8:     var_BC.Caption = "Total Plan Amount"
  loc_197E100:     Set var_B8 = Me.Lbl
  loc_197E106:     Call 0.Method_Proc_59_44_19808A80 (&H42, var_BC)
  loc_197E10E:     var_BC.Caption = "Plan Discount"
  loc_197E11D:   Else
  loc_197E129:     Set var_B8 = Me.Lbl
  loc_197E12F:     Call 0.Method_Proc_59_44_19808A80 (&H2C, var_BC)
  loc_197E137:     var_BC.Caption = "Package"
  loc_197E14F:     Set var_B8 = Me.Lbl
  loc_197E155:     Call 0.Method_Proc_59_44_19808A80 (&H23, var_BC)
  loc_197E15D:     var_BC.Caption = "Package Amount"
  loc_197E175:     Set var_B8 = Me.Lbl
  loc_197E17B:     Call 0.Method_Proc_59_44_19808A80 (&H40, var_BC)
  loc_197E183:     var_BC.Caption = "Total Package Amount"
  loc_197E19B:     Set var_B8 = Me.Lbl
  loc_197E1A1:     Call 0.Method_Proc_59_44_19808A80 (&H42, var_BC)
  loc_197E1A9:     var_BC.Caption = "Package Discount"
  loc_197E1B5:   End If
  loc_197E1B5: End If
  loc_197E1C8: Me.FGrid3.Rows = 1
  loc_197E1D4: var_8A = CByte(1) 'Byte
  loc_197E1D8: var_DC = vbNullString
  loc_197E1E2: Set var_B8 = Me.FGrid3
  loc_197E206: Me.FGrid3.FixedRows = 1
  loc_197E221: Me.FGrid3.Row = 1
  loc_197E23D: If (var_88.RecordCount > 0) Then
  loc_197E25A:   var_BC = var_88.Fields.Item("PercentApp")
  loc_197E27C:   If (var_BC.Value = "Yes") Then
  loc_197E294:     Set var_B8 = Me.FGrid3
  loc_197E29A:     LateIdCallSt
  loc_197E2A8:     var_A0 = "Percentage"
  loc_197E2BF:     Call 0.Method_Proc_59_44_19808A80 (CInt(&H2F), var_BC, "Percentage", Me.Txt, &H4B0)
  loc_197E2C7:     var_BC.Text = CVar(CLng(&H12))
  loc_197E2D6:   Else
  loc_197E2EB:     Set var_B8 = Me.FGrid3
  loc_197E2F1:     LateIdCallSt
  loc_197E2FF:     var_A0 = "Amount"
  loc_197E316:     Call 0.Method_Proc_59_44_19808A80 (CInt(&H2F), var_BC, "Amount", Me.Txt, 0)
  loc_197E31E:     var_BC.Text = CVar(CLng(&H12))
  loc_197E32A:   End If
  loc_197E32D: Else
  loc_197E330:   var_DC = CVar(CLng(&H12)) 'Long
  loc_197E335:   var_164 = 0
  loc_197E342:   Set var_B8 = Me.FGrid3
  loc_197E348:   LateIdCallSt
  loc_197E353: End If
  loc_197E367: If (var_88.RecordCount > 0) Then
  loc_197E37E:   Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_BC, var_B4, Me.Txt, var_164)
  loc_197E386:   var_DC = var_BC.Text
  loc_197E3D5:   If (CVar(Val(var_B4)) > var_88.Fields.Item("Adults").Value) Then
  loc_197E3DE:     var_DC = "Adults"
  loc_197E3F2:     var_F8 = var_88.Fields.Item(var_DC)
  loc_197E40B:     var_17C = Val(CStr(var_F8.Value))
  loc_197E41C:     Set var_B8 = Me.Txt
  loc_197E422:     Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_BC, var_B4, var_17C)
  loc_197E42A:     FGrid3.DispID_10000 = var_BC.Text
  loc_197E43D:     var_C4 = CStr((Val(var_B4) - var_17C))
  loc_197E44B:     Set var_FC = Me.Txt
  loc_197E451:     Call 0.Method_Proc_59_44_19808A80 (CInt(&H1F), var_100, var_C4)
  loc_197E459:     var_100.Text = var_DC
  loc_197E47C:     var_DC = CVar(CLng(8)) 'Long
  loc_197E481:     var_164 = &H3E8
  loc_197E48E:     Set var_B8 = Me.FGrid3
  loc_197E494:     LateIdCallSt
  loc_197E4A2:     var_DC = CVar(CLng(9)) 'Long
  loc_197E4A7:     var_164 = &H3E8
  loc_197E4B4:     Set var_B8 = Me.FGrid3
  loc_197E4BA:     LateIdCallSt
  loc_197E4C5:     ' Referenced from: 197F25E
  loc_197E4C5:   End If
  loc_197E4C5: End If
  loc_197E4D4: If Not(var_88.EOF) Then
  loc_197E4DA:   var_DC = "RevCode"
  loc_197E4E6:   var_B8 = var_88.Fields
  loc_197E510:   If (Proc_6_38_E68A98(CVar(var_B8.Item(var_DC)), var_B8, var_164, var_DC) <> vbNullString) Then
  loc_197E517:     Set var_184 = Me.FGrid3
  loc_197E52D:     var_194 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197E553:     var_DC = CVar((CLng(Me.FGrid3.Row) - 1)) 'Long
  loc_197E575:     var_B4 = CStr(Me.FGrid3.TextMatrix))
  loc_197E583:     var_154 = CVar(CStr((Val(var_B4) + CDbl(1)))) 'String
  loc_197E58A:     LateIdCallSt
  loc_197E5CC:     var_DC = "Name"
  loc_197E5F1:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_DC)), CVar(CLng(1)), CVar(CLng(Me.FGrid3.Row)), var_184, Format(Me.FGrid3.Row, "0.00"), CVar(CLng(0)), var_DC)) 'String
  loc_197E5F8:     LateIdCallSt
  loc_197E658:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(Me.FGrid3.Row)), var_184, var_144, CVar(CLng(0)))) 'String
  loc_197E65F:     LateIdCallSt
  loc_197E6AE:     var_BC = var_88.Fields.Item("TaxStru")
  loc_197E6BF:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_BC), CVar(CLng(3)), CVar(CLng(Me.FGrid3.Row)), var_184, var_144)) 'String
  loc_197E6C6:     LateIdCallSt
  loc_197E70C:     Set var_B8 = Me.Txt
  loc_197E712:     Call 0.Method_Proc_59_44_19808A80 (CInt(&H18), var_BC, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid3.Row)), var_184)
  loc_197E71A:     var_144 = var_BC.Tag
  loc_197E722:     var_134 = CVar(var_B4) 'String
  loc_197E729:     LateIdCallSt
  loc_197E74B:     var_134 = Me.FGrid3.Row
  loc_197E790:     LateIdCallSt
  loc_197E7E4:     If (var_88.Fields.Item("PLan_Package").Value = "Package") Then
  loc_197E812:       var_B4 = CStr(var_88.Fields.Item("NoofDays").Value)
  loc_197E81A:       var_17C = Val(var_B4)
  loc_197E828:       Set var_F0 = Me.Txt
  loc_197E82E:       Call 0.Method_Proc_59_44_19808A80 (CInt(&H31), var_F8, var_17C, var_184, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_134)), var_184, var_134)))
  loc_197E846:       var_194 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197E84E:       var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197E875:       var_134 = var_88.Fields.Item("NoofDays").Value
  loc_197E87E:       var_C0 = CStr(var_134)
  loc_197E8A0:       var_1E4 = IIf((CDbl(var_17C) = CDbl(0)), CVar(var_F8), CVar(Val(var_C0)))
  loc_197E8A9:       var_204 = CVar(CStr(var_1E4)) 'String
  loc_197E8B0:       LateIdCallSt
  loc_197E8E4:     Else
  loc_197E8F7:       var_DC = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197E8FF:       var_164 = CVar(CLng(&HA)) 'Long
  loc_197E904:       var_194 = "1"
  loc_197E90D:       LateIdCallSt
  loc_197E91B:     End If
  loc_197E961:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("PrintOption")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid3.Row)), var_184, var_194, var_164)
  loc_197E971:     LateIdCallSt
  loc_197E9AE:     var_DC = "PostingMethod"
  loc_197E9D3:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_DC)), CVar(CLng(&HC)), CVar(CLng(Me.FGrid3.Row)), var_184, CVar(CStr(Me.FGrid3.Row)), var_DC)) 'String
  loc_197E9DA:     LateIdCallSt
  loc_197E9FC:     var_134 = Me.FGrid3.Row
  loc_197EA3A:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(&HD)), CVar(CLng(var_134)), var_184, var_144, var_184)) 'String
  loc_197EA41:     LateIdCallSt
  loc_197EA63:     var_144 = Me.FGrid3.Row
  loc_197EA9F:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("FlatRate")), CVar(CLng(&HE)), CVar(CLng(var_144)), var_184, var_144)
  loc_197EAAF:     LateIdCallSt
  loc_197EAD3:     var_134 = Me.FGrid3.Row
  loc_197EB11:     var_144 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChrgCode")), CVar(CLng(&H11)), CVar(CLng(var_134)), var_184, CVar(CStr(var_134)))) 'String
  loc_197EB18:     LateIdCallSt
  loc_197EB3A:     var_144 = Me.FGrid3.Row
  loc_197EB76:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("App_Date")), CVar(CLng(&H13)), CVar(CLng(var_144)), var_184, var_144)
  loc_197EB86:     LateIdCallSt
  loc_197EBC6:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("FlatRate")), var_184, CVar(CStr(var_134)), var_204)
  loc_197EBF1:     Proc_6_39_E7C810(var_1E4, CVar(var_88.Fields.Item("FlatRate")), var_1B4)
  loc_197EC05:     var_FC = var_88.Fields
  loc_197EC1C:     Proc_6_39_E7C810(var_204, CVar(var_FC.Item("Adult")), var_194)
  loc_197EC56:     var_1A4 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197EC5E:     var_1C4 = CVar(CLng(6)) 'Long
  loc_197EC8E:     LateIdCallSt
  loc_197ECE2:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("PerDayAmount")), var_184, CVar(CStr(Format(IIf((var_134 <> 0), var_1E4, var_204), "0.00"))), 1)
  loc_197ECFA:     var_164 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197ED32:     LateIdCallSt
  loc_197ED76:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("NetAmount")), var_184, CVar(CStr(Format(var_134, "0.00"))), 1, 1, CVar(CLng(&HF)))
  loc_197ED8E:     var_164 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197EDC6:     LateIdCallSt
  loc_197EE2A:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("PlanPer")), CVar(CLng(&H12)), CVar(CLng(Me.FGrid3.Row)), var_184, CVar(CStr(Format(var_134, "0.00"))), 1)
  loc_197EE3A:     LateIdCallSt
  loc_197EE8B:     var_BC = var_88.Fields.Item("Child")
  loc_197EE9A:     Proc_6_39_E7C810(var_134, CVar(var_BC), CVar(CLng(7)), CVar(CLng(Me.FGrid3.Row)), var_184, CVar(CStr(var_134)), 1)
  loc_197EEAA:     LateIdCallSt
  loc_197EED2:     Set var_B8 = Me.Txt
  loc_197EED8:     Call 0.Method_Proc_59_44_19808A80 (CInt(&H1F), var_BC, var_B4, var_184, CVar(CStr(var_134)), CVar(CLng(&H10)))
  loc_197EEE0:     var_164 = var_BC.Text
  loc_197EF1C:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("ExtraAdult")), (CDbl(Val(var_B4)) > CDbl(0)), (CDbl(Val(var_B4)) > CDbl(0)))
  loc_197EF49:     If CBool(1 And (var_134 = 0)) Then
  loc_197EF5F:       var_124 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197EF92:       Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("Adult")), CVar(CLng(8)))
  loc_197EF9B:       var_154 = CVar(CStr(var_134)) 'String
  loc_197EFA2:       LateIdCallSt
  loc_197EFBF:     Else
  loc_197EFF6:       var_BC = var_88.Fields.Item("ExtraAdult")
  loc_197F005:       Proc_6_39_E7C810(var_134, CVar(var_BC), CVar(CLng(8)), CVar(CLng(Me.FGrid3.Row)), var_184)
  loc_197F00E:       var_154 = CVar(CStr(var_134)) 'String
  loc_197F015:       LateIdCallSt
  loc_197F02F:     End If
  loc_197F03D:     Set var_B8 = Me.Txt
  loc_197F043:     Call 0.Method_Proc_59_44_19808A80 (CInt(&H1F), var_BC, var_B4, var_184, var_154)
  loc_197F04B:     var_154 = var_BC.Text
  loc_197F087:     Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("ExtraChild")), (CDbl(Val(var_B4)) > CDbl(0)))
  loc_197F0B4:     If CBool(0 And (var_134 = 0)) Then
  loc_197F0CA:       var_124 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197F0FD:       Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("Child")), CVar(CLng(9)))
  loc_197F106:       var_154 = CVar(CStr(var_134)) 'String
  loc_197F10D:       LateIdCallSt
  loc_197F12A:     Else
  loc_197F170:       Proc_6_39_E7C810(var_134, CVar(var_88.Fields.Item("ExtraChild")), CVar(CLng(9)), CVar(CLng(Me.FGrid3.Row)), var_184)
  loc_197F179:       var_154 = CVar(CStr(var_134)) 'String
  loc_197F180:       LateIdCallSt
  loc_197F19A:     End If
  loc_197F19E:     Set var_F0 = Me.FGrid3
  loc_197F1D1:     var_BC = var_88.Fields.Item("FixRate")
  loc_197F1E0:     Proc_6_39_E7C810(var_134, CVar(var_BC), CVar(CLng(&H15)), CVar(CLng(var_F0.Row)), var_184)
  loc_197F1E9:     var_154 = CVar(CStr(var_134)) 'String
  loc_197F1F0:     LateIdCallSt
  loc_197F215:     var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_197F219:     var_DC = vbNullString
  loc_197F223:     Set var_B8 = Me.FGrid3
  loc_197F239:     var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F248:     Me.FGrid3.Row = var_DC
  loc_197F252:     Set var_184 = Nothing 
  loc_197F256:   End If
  loc_197F259:   var_88.MoveNext
  loc_197F25E:   GoTo loc_197E4C5
  loc_197F261: End If
  loc_197F269: If (var_A0 = "Percentage") Then
  loc_197F27A:   Set var_B8 = Me.Txt
  loc_197F280:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H1F), var_BC, var_B4, FGrid3.DispID_10000, var_DC, var_184)
  loc_197F288:   var_154 = var_BC.Text
  loc_197F2A4:   If (CDbl(Val(var_B4)) > CDbl(0)) Then
  loc_197F2CF:     For var_278 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)): var_8A = var_278 'Byte
  loc_197F2DA:       var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F2E2:       var_164 = CVar(CLng(&H11)) 'Long
  loc_197F30D:       If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_197F33F:         var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197F350:         Set var_BC = Me.Txt
  loc_197F356:         Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)), CVar(CLng(6)))
  loc_197F35E:         var_DC = var_F0.Text
  loc_197F36B:         var_2D8 = Val(var_C0)
  loc_197F37C:         Set var_F8 = Me.Txt
  loc_197F382:         Call 0.Method_Proc_59_44_19808A80 (CInt(&H1F), var_FC, var_C4, var_2D8, CByte(1))
  loc_197F38A:         var_154 = var_FC.Text
  loc_197F397:         var_2E0 = Val(var_C4)
  loc_197F3B0:         Set var_100 = Me.FGrid3
  loc_197F3C9:         var_2E8 = Val(CStr(var_100.TextMatrix)))
  loc_197F3DA:         Set var_114 = Me.Txt
  loc_197F3E0:         Call 0.Method_Proc_59_44_19808A80 (CInt(&H1F), var_27C, var_CC, var_2E8, CVar(CLng(8)), CVar(CLng(var_8A)))
  loc_197F3FD:         var_28C = CVar(CLng(var_8A)) 'Long
  loc_197F405:         var_2AC = CVar(CLng(&HF)) 'Long
  loc_197F432:         var_144 = CVar(((var_17C * (var_2D8 - var_27C.Text)) + (var_2E8 * Val(var_CC)))) 'Double
  loc_197F442:         var_1F4 = CVar(CStr(Format(var_F0.Row, "0.00"))) 'String
  loc_197F450:         LateIdCallSt
  loc_197F4B8:         var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197F4C9:         Set var_BC = Me.Txt
  loc_197F4CF:         Call 0.Method_Proc_59_44_19808A80 (CInt(&H19), var_F0, var_C0, var_17C, CVar(CLng(&HF)), CVar(CLng(var_8A)), Me.FGrid3)
  loc_197F4D7:         var_1F4 = var_F0.Text
  loc_197F4EC:         var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197F4F4:         var_1D4 = CVar(CLng(&H12)) 'Long
  loc_197F529:         var_1E4 = CVar(CStr(Format(CVar(((var_17C * CDbl(&H64)) / Val(var_C0))), "0.00"))) 'String
  loc_197F531:         Set var_F8 = Me.FGrid3
  loc_197F537:         LateIdCallSt
  loc_197F563:         var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F56B:         var_164 = CVar(CLng(&HF)) 'Long
  loc_197F595:         var_194 = CVar(CLng(var_8A)) 'Long
  loc_197F59D:         var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197F5A6:         Set var_BC = Me.FGrid3
  loc_197F5AC:         var_134 = var_BC.TextMatrix)
  loc_197F5B7:         var_C0 = CStr(var_134)
  loc_197F5C7:         var_28C = CVar(CLng(var_8A)) 'Long
  loc_197F5CF:         var_2AC = CVar(CLng(&H10)) 'Long
  loc_197F5E3:         var_154 = "0.00"
  loc_197F5F0:         var_144 = CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))) 'Double
  loc_197F600:         var_1F4 = CVar(CStr(Format(var_144, var_154))) 'String
  loc_197F608:         Set var_F0 = Me.FGrid3
  loc_197F60E:         LateIdCallSt
  loc_197F635:       End If
  loc_197F638:     Next var_278 'Byte
  loc_197F63E:   End If
  loc_197F63E:   Call Proc_59_43_E601A8()
  loc_197F646: Else
  loc_197F654:   Set var_B8 = Me.Txt
  loc_197F65A:   Call 0.Method_Proc_59_44_19808A80 (CInt(&HE), var_BC)
  loc_197F67E:   If (CDbl(Val(var_BC.Text)) <> CDbl(0)) Then
  loc_197F6B0:     If (MsgBox("Want Include Child in Plan/Package Value?", &H24, var_134, var_144, var_154) = 6) Then
  loc_197F6DB:       For var_2F4 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):   var_8A = var_2F4 'Byte
  loc_197F6E6:         var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F6EE:         var_164 = CVar(CLng(&H11)) 'Long
  loc_197F719:         If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_197F721:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F729:           var_164 = CVar(CLng(&HD)) 'Long
  loc_197F754:           If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_197F786:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197F797:             Set var_BC = Me.Txt
  loc_197F79D:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_197F7A5:             var_164 = var_F0.Text
  loc_197F7B2:             var_2D8 = Val(var_C0)
  loc_197F7C3:             Set var_F8 = Me.Txt
  loc_197F7C9:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HE), var_FC, var_C4, var_2D8)
  loc_197F7D1:             var_DC = var_FC.Text
  loc_197F7F0:             var_94 = (var_94 + (var_17C * (var_2D8 + Val(var_C4))))
  loc_197F83B:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197F84C:             Set var_BC = Me.Txt
  loc_197F852:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)))
  loc_197F85A:             var_94 = var_F0.Text
  loc_197F86F:             var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197F877:             var_1D4 = CVar(CLng(&HF)) 'Long
  loc_197F8A8:             var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_197F8B0:             Set var_F8 = Me.FGrid3
  loc_197F8B6:             LateIdCallSt
  loc_197F8E2:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F8EA:             var_164 = CVar(CLng(&HF)) 'Long
  loc_197F914:             var_194 = CVar(CLng(var_8A)) 'Long
  loc_197F91C:             var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197F936:             var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_197F946:             var_28C = CVar(CLng(var_8A)) 'Long
  loc_197F94E:             var_2AC = CVar(CLng(&H10)) 'Long
  loc_197F97F:             var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))), "0.00"))) 'String
  loc_197F987:             Set var_F0 = Me.FGrid3
  loc_197F98D:             LateIdCallSt
  loc_197F9B9:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F9C1:             var_164 = CVar(CLng(&H10)) 'Long
  loc_197F9ED:             var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197F9FC:           Else
  loc_197FA09:             var_164 = CVar(CLng(&HE)) 'Long
  loc_197FA3C:             Set var_BC = Me.Txt
  loc_197FA42:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, Val(CStr(Me.FGrid3.TextMatrix))), var_164, CVar(CLng(var_8A)), var_9C)
  loc_197FA57:             var_2D8 = Val(var_C0)
  loc_197FA68:             Set var_F8 = Me.Txt
  loc_197FA6E:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HE), var_FC, var_C4, var_2D8, var_164)
  loc_197FA76:             var_DC = var_FC.Text
  loc_197FA95:             var_94 = (var_94 + (var_F0.Text * (var_2D8 + Val(var_C4))))
  loc_197FAE0:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197FAF1:             Set var_BC = Me.Txt
  loc_197FAF7:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)))
  loc_197FAFF:             var_94 = var_F0.Text
  loc_197FB14:             var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197FB1C:             var_1D4 = CVar(CLng(&HF)) 'Long
  loc_197FB4D:             var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_197FB55:             Set var_F8 = Me.FGrid3
  loc_197FB5B:             LateIdCallSt
  loc_197FB87:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197FB8F:             var_164 = CVar(CLng(&HF)) 'Long
  loc_197FBB9:             var_194 = CVar(CLng(var_8A)) 'Long
  loc_197FBC1:             var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197FBDB:             var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_197FBEB:             var_28C = CVar(CLng(var_8A)) 'Long
  loc_197FBF3:             var_2AC = CVar(CLng(&H10)) 'Long
  loc_197FC24:             var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))), "0.00"))) 'String
  loc_197FC2C:             Set var_F0 = Me.FGrid3
  loc_197FC32:             LateIdCallSt
  loc_197FC5E:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197FC66:             var_164 = CVar(CLng(&H10)) 'Long
  loc_197FC92:             var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197FC9E:           End If
  loc_197FC9E:         End If
  loc_197FCA1:       Next var_2F4 'Byte
  loc_197FCAA:     Else
  loc_197FCD2:       For var_2F8 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_8A = var_2F8 'Byte
  loc_197FCDD:         var_DC = CVar(CLng(var_8A)) 'Long
  loc_197FCE5:         var_164 = CVar(CLng(&H11)) 'Long
  loc_197FD10:         If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_197FD18:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197FD20:           var_164 = CVar(CLng(&HD)) 'Long
  loc_197FD4B:           If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_197FD7D:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197FD8E:             Set var_BC = Me.Txt
  loc_197FD94:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_197FD9C:             var_164 = var_F0.Text
  loc_197FDB7:             var_94 = (var_94 + (var_17C * Val(var_C0)))
  loc_197FDFC:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197FE0D:             Set var_BC = Me.Txt
  loc_197FE13:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)))
  loc_197FE1B:             var_94 = var_F0.Text
  loc_197FE30:             var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197FE38:             var_1D4 = CVar(CLng(&HF)) 'Long
  loc_197FE69:             var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_197FE71:             Set var_F8 = Me.FGrid3
  loc_197FE77:             LateIdCallSt
  loc_197FEA3:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197FEAB:             var_164 = CVar(CLng(&HF)) 'Long
  loc_197FED5:             var_194 = CVar(CLng(var_8A)) 'Long
  loc_197FEDD:             var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197FEF7:             var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_197FF07:             var_28C = CVar(CLng(var_8A)) 'Long
  loc_197FF0F:             var_2AC = CVar(CLng(&H10)) 'Long
  loc_197FF40:             var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))), "0.00"))) 'String
  loc_197FF48:             Set var_F0 = Me.FGrid3
  loc_197FF4E:             LateIdCallSt
  loc_197FF7A:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197FF82:             var_164 = CVar(CLng(&H10)) 'Long
  loc_197FFAE:             var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197FFBD:           Else
  loc_197FFFD:             Set var_BC = Me.Txt
  loc_1980003:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, Val(CStr(Me.FGrid3.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_9C)
  loc_1980026:             var_94 = (var_94 + (var_F0.Text * Val(var_C0)))
  loc_198006B:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_198007C:             Set var_BC = Me.Txt
  loc_1980082:             Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)), var_94)
  loc_198008A:             var_2D8 = var_F0.Text
  loc_198009F:             var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_19800A7:             var_1D4 = CVar(CLng(&HF)) 'Long
  loc_19800D8:             var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_19800E0:             Set var_F8 = Me.FGrid3
  loc_19800E6:             LateIdCallSt
  loc_1980112:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_198011A:             var_164 = CVar(CLng(&HF)) 'Long
  loc_1980144:             var_194 = CVar(CLng(var_8A)) 'Long
  loc_198014C:             var_1B4 = CVar(CLng(&HA)) 'Long
  loc_1980176:             var_28C = CVar(CLng(var_8A)) 'Long
  loc_198017E:             var_2AC = CVar(CLng(&H10)) 'Long
  loc_19801AF:             var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_19801B7:             Set var_F0 = Me.FGrid3
  loc_19801BD:             LateIdCallSt
  loc_19801E9:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_19801F1:             var_164 = CVar(CLng(&H10)) 'Long
  loc_198021D:             var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_1980229:           End If
  loc_1980229:         End If
  loc_198022C:       Next var_2F8 'Byte
  loc_1980232:     End If
  loc_1980235:   Else
  loc_198025D:     For var_2FC = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_8A = var_2FC 'Byte
  loc_1980268:       var_DC = CVar(CLng(var_8A)) 'Long
  loc_1980270:       var_164 = CVar(CLng(&H11)) 'Long
  loc_198029B:       If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_19802A3:         var_DC = CVar(CLng(var_8A)) 'Long
  loc_19802AB:         var_164 = CVar(CLng(&HD)) 'Long
  loc_19802D6:         If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_19802DE:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_19802E6:           var_164 = CVar(CLng(&HE)) 'Long
  loc_1980312:           var_94 = (var_94 + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_1980323:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_198032B:           var_164 = CVar(CLng(&HE)) 'Long
  loc_1980355:           var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_198035D:           var_1D4 = CVar(CLng(&HF)) 'Long
  loc_198038A:           var_1E4 = CVar(CStr(Format(CVar(Val(CStr(Me.FGrid3.TextMatrix)))), "0.00"))) 'String
  loc_1980392:           Set var_BC = Me.FGrid3
  loc_1980398:           LateIdCallSt
  loc_19803BC:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_19803C4:           var_164 = CVar(CLng(&HF)) 'Long
  loc_19803EE:           var_194 = CVar(CLng(var_8A)) 'Long
  loc_19803F6:           var_1B4 = CVar(CLng(&HA)) 'Long
  loc_1980410:           var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_1980420:           var_28C = CVar(CLng(var_8A)) 'Long
  loc_1980428:           var_2AC = CVar(CLng(&H10)) 'Long
  loc_1980459:           var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))), "0.00"))) 'String
  loc_1980461:           Set var_F0 = Me.FGrid3
  loc_1980467:           LateIdCallSt
  loc_1980493:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_198049B:           var_164 = CVar(CLng(&H10)) 'Long
  loc_19804C7:           var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_19804D6:         Else
  loc_1980516:           Set var_BC = Me.Txt
  loc_198051C:           Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, Val(CStr(Me.FGrid3.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_8A)), var_9C)
  loc_198053F:           var_94 = (var_94 + (var_F0.Text * Val(var_C0)))
  loc_1980584:           var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1980595:           Set var_BC = Me.Txt
  loc_198059B:           Call 0.Method_Proc_59_44_19808A80 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)), var_94)
  loc_19805A3:           var_2D8 = var_F0.Text
  loc_19805B8:           var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_19805C0:           var_1D4 = CVar(CLng(&HF)) 'Long
  loc_19805F1:           var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_19805F9:           Set var_F8 = Me.FGrid3
  loc_19805FF:           LateIdCallSt
  loc_198062B:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_1980633:           var_164 = CVar(CLng(&HF)) 'Long
  loc_198065D:           var_194 = CVar(CLng(var_8A)) 'Long
  loc_1980665:           var_1B4 = CVar(CLng(&HA)) 'Long
  loc_198066E:           Set var_BC = Me.FGrid3
  loc_198068F:           var_28C = CVar(CLng(var_8A)) 'Long
  loc_1980697:           var_2AC = CVar(CLng(&H10)) 'Long
  loc_19806C8:           var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_BC.TextMatrix))))), "0.00"))) 'String
  loc_19806D0:           Set var_F0 = Me.FGrid3
  loc_19806D6:           LateIdCallSt
  loc_1980702:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_198070A:           var_164 = CVar(CLng(&H10)) 'Long
  loc_1980736:           var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_1980742:         End If
  loc_1980742:       End If
  loc_1980745:     Next var_2FC 'Byte
  loc_198074B:   End If
  loc_1980782:   Set var_B8 = Me.Txt
  loc_1980788:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H30), var_BC, CStr(Format(var_9C, "0.00")))
  loc_1980790:   var_BC.Text = 1
  loc_19807B1:   Set var_B8 = Me.Txt
  loc_19807B7:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H10), var_BC)
  loc_19807CA:   Set var_F0 = Me.Txt
  loc_19807D0:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H26), var_F8)
  loc_19807EB:   Set var_FC = Me.Txt
  loc_19807F1:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H29), var_100)
  loc_198080C:   Set var_114 = Me.Txt
  loc_1980812:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H32), var_27C)
  loc_198082D:   Set var_2D0 = Me.Txt
  loc_1980833:   Call 0.Method_Proc_59_44_19808A80 (CInt(&H33), var_300)
  loc_1980848:   var_2D8 = Val(var_300.Text)
  loc_1980870:   Proc_96_76_1840070(var_BC, var_F8.Text, var_100.Text, var_27C.Text)
  loc_1980897: End If
  loc_198089C: Set var_88 = Nothing
  loc_19808A4: Set var_A4 = Nothing
  loc_19808A7: Exit Sub
End Sub

Public Sub Proc_59_45_1561764
  'Data Table: 52DB2C
  Dim var_9C As Variant
  Dim var_A4 As String
  Dim var_A8 As String
  Dim unk_52DB4B As Connection15
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_C8 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_174 As Variant
  Dim var_1B8 As Double
  Dim var_1C0 As Double
  Dim var_1B0 As TextBox
  Dim var_1C8 As Double
  Dim var_94 As Double
  loc_15606FE: Set var_98 = Me.Txt
  loc_1560704: Call 0.Method_Proc_59_45_15617640 (CInt(&H18), var_9C, var_A0, "SELECT plan1.Code, plan1.Chrgcode, FixedCharge.Name, plan1.Revcode, plan1.TaxStru, plan1.TaxInc, plan1.PrintOption, plan1.PostingMethod, plan1.ChargeType, plan1.FlatRate, plan1.Adult, plan1.Child, plan1.ExtraAdult, plan1.ExtraChild,Plan1.App_Date,Plan1.PlanPer,Plan1.noofDays,Plan1.FixRate FROM plan1 INNER JOIN FixedCharge ON plan1.Chrgcode = FixedCharge.Code where plan1.code='")
  loc_156070C: var_C8 = var_9C.Tag
  loc_1560715: var_A4 = -1 & var_A0
  loc_156071C: var_A8 = var_A4 & "'"
  loc_1560725: unk_52DB4B.Execute var_A8, var_CC, 
  loc_1560730: Set var_88 = var_CC
  loc_156075B: Me.FGrid3.Rows = 1
  loc_1560767: var_8A = CByte(1) 'Byte
  loc_156076B: var_B8 = vbNullString
  loc_1560775: Set var_98 = Me.FGrid3
  loc_1560799: Me.FGrid3.FixedRows = 1
  loc_15607B4: Me.FGrid3.Row = 1
  loc_15607BC: ' Referenced from: 15610A7
  loc_15607CB: If Not(var_88.EOF) Then
  loc_15607D2:   Set var_E4 = Me.FGrid3
  loc_15607E8:   var_134 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_15607F0:   var_154 = CVar(CLng(0)) 'Long
  loc_156080E:   var_B8 = CVar((CLng(Me.FGrid3.Row) - 1)) 'Long
  loc_1560830:   var_A0 = CStr(Me.FGrid3.TextMatrix))
  loc_156083E:   var_174 = CVar(CStr((Val(var_A0) + CDbl(1)))) 'String
  loc_1560845:   LateIdCallSt
  loc_15608AC:   var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(Me.FGrid3.Row)), var_E4, var_174, CVar(CLng(0)))) 'String
  loc_15608B3:   LateIdCallSt
  loc_1560913:   var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(Me.FGrid3.Row)), var_E4, var_124)) 'String
  loc_156091A:   LateIdCallSt
  loc_1560969:   var_9C = var_88.Fields.Item("TaxStru")
  loc_156097A:   var_124 = CVar(Proc_6_38_E68A98(CVar(var_9C), CVar(CLng(3)), CVar(CLng(Me.FGrid3.Row)), var_E4, var_124)) 'String
  loc_1560981:   LateIdCallSt
  loc_15609C7:   Set var_98 = Me.Txt
  loc_15609CD:   Call 0.Method_Proc_59_45_15617640 (CInt(&H18), var_9C, var_A0, CVar(CLng(4)), CVar(CLng(Me.FGrid3.Row)), var_E4)
  loc_15609D5:   var_124 = var_9C.Tag
  loc_15609DD:   var_114 = CVar(var_A0) 'String
  loc_15609E4:   LateIdCallSt
  loc_1560A06:   var_114 = Me.FGrid3.Row
  loc_1560A4B:   LateIdCallSt
  loc_1560A66:   var_B8 = "Adult"
  loc_1560A89:   Proc_6_39_E7C810(var_114, CVar(var_88.Fields.Item(var_B8)), var_E4, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_114)), var_E4, var_114)), var_B8)
  loc_1560AA1:   var_F4 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1560AD9:   LateIdCallSt
  loc_1560B3D:   Proc_6_39_E7C810(var_114, CVar(var_88.Fields.Item("Child")), CVar(CLng(7)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(Format(var_114, "0.00"))), 1)
  loc_1560B4D:   LateIdCallSt
  loc_1560BAD:   Proc_6_39_E7C810(var_114, CVar(var_88.Fields.Item("ExtraAdult")), CVar(CLng(8)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)), 1)
  loc_1560BBD:   LateIdCallSt
  loc_1560C1D:   Proc_6_39_E7C810(var_114, CVar(var_88.Fields.Item("ExtraChild")), CVar(CLng(9)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)))
  loc_1560C2D:   LateIdCallSt
  loc_1560C8D:   Proc_6_39_E7C810(var_114, CVar(var_88.Fields.Item("NoofDays")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)))
  loc_1560C9D:   LateIdCallSt
  loc_1560CFD:   Proc_6_39_E7C810(var_114, CVar(var_88.Fields.Item("PrintOption")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)))
  loc_1560D0D:   LateIdCallSt
  loc_1560D6F:   var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostingMethod")), CVar(CLng(&HC)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(Me.FGrid3.Row)), CVar(CLng(6)))) 'String
  loc_1560D76:   LateIdCallSt
  loc_1560D98:   var_114 = Me.FGrid3.Row
  loc_1560DD6:   var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(&HD)), CVar(CLng(var_114)), var_E4, var_124)) 'String
  loc_1560DDD:   LateIdCallSt
  loc_1560DFF:   var_124 = Me.FGrid3.Row
  loc_1560E3B:   Proc_6_39_E7C810(var_114, CVar(var_88.Fields.Item("FlatRate")), CVar(CLng(&HE)), CVar(CLng(var_124)), var_E4, var_124)
  loc_1560E44:   var_174 = CVar(CStr(var_114)) 'String
  loc_1560E4B:   LateIdCallSt
  loc_1560E78:   var_B8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1560E8E:   LateIdCallSt
  loc_1560EA6:   var_114 = Me.FGrid3.Row
  loc_1560EBF:   var_B8 = "ChrgCode"
  loc_1560EE4:   var_124 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_B8)), CVar(CLng(&H11)), CVar(CLng(var_114)), var_E4, vbNullString, CVar(CLng(&HF)), var_B8)) 'String
  loc_1560EEB:   LateIdCallSt
  loc_1560F0D:   var_124 = Me.FGrid3.Row
  loc_1560F49:   Proc_6_39_E7C810(var_114, CVar(var_88.Fields.Item("PlanPer")), CVar(CLng(&H12)), CVar(CLng(var_124)), var_E4, var_124)
  loc_1560F59:   LateIdCallSt
  loc_1560FB9:   Proc_6_39_E7C810(var_114, CVar(var_88.Fields.Item("App_Date")), CVar(CLng(&H13)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)))
  loc_1560FC9:   LateIdCallSt
  loc_1560FE7:   Set var_CC = Me.FGrid3
  loc_1560FED:   var_124 = var_CC.Row
  loc_156101A:   var_9C = var_88.Fields.Item("FixRate")
  loc_1561029:   Proc_6_39_E7C810(var_114, CVar(var_9C), CVar(CLng(&H15)), CVar(CLng(var_124)), var_E4, CVar(CStr(var_114)))
  loc_1561032:   var_174 = CVar(CStr(var_114)) 'String
  loc_1561039:   LateIdCallSt
  loc_156105E:   var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_1561062:   var_B8 = vbNullString
  loc_156106C:   Set var_98 = Me.FGrid3
  loc_1561082:   var_B8 = CVar(CLng(var_8A)) 'Long
  loc_1561091:   Me.FGrid3.Row = var_B8
  loc_156109B:   Set var_E4 = Nothing 
  loc_15610A2:   var_88.MoveNext
  loc_15610A7:   GoTo loc_15607BC
  loc_15610AA: End If
  loc_15610B8: Set var_98 = Me.Txt
  loc_15610BE: Call 0.Method_Proc_59_45_15617640 (CInt(&HE), var_9C, var_A0, FGrid3.DispID_10000, var_B8, var_E4, var_174)
  loc_15610C6: var_E4 = var_9C.Text
  loc_15610E2: If (CDbl(Val(var_A0)) <> CDbl(0)) Then
  loc_1561114:   If (MsgBox("Want Include Child in Plan/Package Value?", &H24, var_114, var_124, var_174) = 6) Then
  loc_156113F:     For var_1A8 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)): var_8A = var_1A8 'Byte
  loc_156114A:       var_B8 = CVar(CLng(var_8A)) 'Long
  loc_1561152:       var_F4 = CVar(CLng(&H11)) 'Long
  loc_156117D:       If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_1561185:         var_B8 = CVar(CLng(var_8A)) 'Long
  loc_156118D:         var_F4 = CVar(CLng(&HD)) 'Long
  loc_15611B8:         If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_15611C8:           var_F4 = CVar(CLng(&HE)) 'Long
  loc_15611EA:           var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_15611FB:           Set var_9C = Me.Txt
  loc_1561201:           Call 0.Method_Proc_59_45_15617640 (CInt(&HD), var_CC, var_A4, var_1B8, var_F4, CVar(CLng(var_8A)), var_F4)
  loc_1561209:           var_B8 = var_CC.Text
  loc_1561216:           var_1C0 = Val(var_A4)
  loc_1561227:           Set var_1AC = Me.Txt
  loc_156122D:           Call 0.Method_Proc_59_45_15617640 (CInt(&HE), var_1B0, var_A8, var_1C0, var_F4)
  loc_1561235:           var_B8 = var_1B0.Text
  loc_1561242:           var_1C8 = Val(var_A8)
  loc_1561254:           var_94 = (var_94 + (var_1B8 * (var_1C0 + var_1C8)))
  loc_1561273:         Else
  loc_15612A2:           var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_15612B3:           Set var_9C = Me.Txt
  loc_15612B9:           Call 0.Method_Proc_59_45_15617640 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_15612C1:           var_94 = var_CC.Text
  loc_15612CE:           var_1C0 = Val(var_A4)
  loc_15612DF:           Set var_1AC = Me.Txt
  loc_15612E5:           Call 0.Method_Proc_59_45_15617640 (CInt(&HE), var_1B0, var_A8, var_1C0, var_1C8)
  loc_15612ED:           CByte(1) = var_1B0.Text
  loc_156130C:           var_94 = (var_94 + (var_1B8 * (var_1C0 + Val(var_A8))))
  loc_1561328:         End If
  loc_1561328:       End If
  loc_156132B:     Next var_1A8 'Byte
  loc_1561334:   Else
  loc_156135C:     For var_1CC = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):   var_8A = var_1CC 'Byte
  loc_1561367:       var_B8 = CVar(CLng(var_8A)) 'Long
  loc_156136F:       var_F4 = CVar(CLng(&H11)) 'Long
  loc_156139A:       If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_15613A2:         var_B8 = CVar(CLng(var_8A)) 'Long
  loc_15613AA:         var_F4 = CVar(CLng(&HD)) 'Long
  loc_15613D5:         If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_1561407:           var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1561418:           Set var_9C = Me.Txt
  loc_156141E:           Call 0.Method_Proc_59_45_15617640 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_1561426:           var_F4 = var_CC.Text
  loc_1561441:           var_94 = (var_94 + (var_1B8 * Val(var_A4)))
  loc_156145A:         Else
  loc_1561489:           var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_156149A:           Set var_9C = Me.Txt
  loc_15614A0:           Call 0.Method_Proc_59_45_15617640 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_15614A8:           var_94 = var_CC.Text
  loc_15614C3:           var_94 = (var_94 + (var_1B8 * Val(var_A4)))
  loc_15614D9:         End If
  loc_15614D9:       End If
  loc_15614DC:     Next var_1CC 'Byte
  loc_15614E2:   End If
  loc_15614E5: Else
  loc_156150D:   For var_1D0 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):   var_8A = var_1D0 'Byte
  loc_1561518:     var_B8 = CVar(CLng(var_8A)) 'Long
  loc_1561520:     var_F4 = CVar(CLng(&H11)) 'Long
  loc_156154B:     If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_1561553:       var_B8 = CVar(CLng(var_8A)) 'Long
  loc_156155B:       var_F4 = CVar(CLng(&HD)) 'Long
  loc_1561586:       If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_15615B8:         var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_15615C9:         Set var_9C = Me.Txt
  loc_15615CF:         Call 0.Method_Proc_59_45_15617640 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_15615D7:         var_F4 = var_CC.Text
  loc_15615E4:         var_1C0 = Val(var_A4)
  loc_15615F5:         Set var_1AC = Me.Txt
  loc_15615FB:         Call 0.Method_Proc_59_45_15617640 (CInt(&HE), var_1B0, var_A8, var_1C0)
  loc_1561603:         var_B8 = var_1B0.Text
  loc_1561622:         var_94 = (var_94 + (var_1B8 * (var_1C0 + Val(var_A8))))
  loc_1561641:       Else
  loc_1561670:         var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1561681:         Set var_9C = Me.Txt
  loc_1561687:         Call 0.Method_Proc_59_45_15617640 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_156168F:         var_94 = var_CC.Text
  loc_156169C:         var_1C0 = Val(var_A4)
  loc_15616AD:         Set var_1AC = Me.Txt
  loc_15616B3:         Call 0.Method_Proc_59_45_15617640 (CInt(&HE), var_1B0, var_A8, var_1C0)
  loc_15616BB:         var_1C8 = var_1B0.Text
  loc_15616DA:         var_94 = (var_94 + (var_1B8 * (var_1C0 + Val(var_A8))))
  loc_15616F6:       End If
  loc_15616F6:     End If
  loc_15616F9:   Next var_1D0 'Byte
  loc_15616FF: End If
  loc_1561736: Set var_98 = Me.Txt
  loc_156173C: Call 0.Method_Proc_59_45_15617640 (CInt(&H19), var_9C, CStr(Format(var_94, "0.00")))
  loc_1561744: var_9C.Text = 1
  loc_156175F: Set var_88 = Nothing
  loc_1561762: Exit Sub
End Sub

Public Sub Proc_59_46_138712C
  'Data Table: 52DB2C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_1386857: Me.FGrid3.Cols = &H16
  loc_138685C: var_98 = 0
  loc_1386868: var_B8 = CVar(CLng(0)) 'Long
  loc_138686D: var_D8 = "No."
  loc_1386876: LateIdCallSt
  loc_1386881: var_98 = CVar(CLng(0)) 'Long
  loc_138688C: var_B8 = CVar(CInt(4)) 'Integer
  loc_1386893: LateIdCallSt
  loc_138689E: var_98 = CVar(CLng(0)) 'Long
  loc_13868A9: var_B8 = CVar(CInt(4)) 'Integer
  loc_13868B0: LateIdCallSt
  loc_13868BB: var_98 = CVar(CLng(0)) 'Long
  loc_13868C0: var_B8 = &H190
  loc_13868CC: LateIdCallSt
  loc_13868D4: var_98 = 0
  loc_13868E0: var_B8 = CVar(CLng(1)) 'Long
  loc_13868E5: var_D8 = "Fixed Charge"
  loc_13868EE: LateIdCallSt
  loc_13868F9: var_98 = CVar(CLng(1)) 'Long
  loc_1386904: var_B8 = CVar(CInt(1)) 'Integer
  loc_138690B: LateIdCallSt
  loc_1386916: var_98 = CVar(CLng(1)) 'Long
  loc_1386921: var_B8 = CVar(CInt(1)) 'Integer
  loc_1386928: LateIdCallSt
  loc_1386933: var_98 = CVar(CLng(1)) 'Long
  loc_1386938: var_B8 = &H7D0
  loc_1386944: LateIdCallSt
  loc_138694F: var_98 = CVar(CLng(2)) 'Long
  loc_1386954: var_B8 = 0
  loc_1386960: LateIdCallSt
  loc_138696B: var_98 = CVar(CLng(&H11)) 'Long
  loc_1386970: var_B8 = 0
  loc_138697C: LateIdCallSt
  loc_1386984: var_98 = 0
  loc_1386990: var_B8 = CVar(CLng(3)) 'Long
  loc_1386995: var_D8 = "TaxStru"
  loc_138699E: LateIdCallSt
  loc_13869A9: var_98 = CVar(CLng(3)) 'Long
  loc_13869B4: var_B8 = CVar(CInt(1)) 'Integer
  loc_13869BB: LateIdCallSt
  loc_13869C6: var_98 = CVar(CLng(3)) 'Long
  loc_13869D1: var_B8 = CVar(CInt(1)) 'Integer
  loc_13869D8: LateIdCallSt
  loc_13869E3: var_98 = CVar(CLng(3)) 'Long
  loc_13869E8: var_B8 = 0
  loc_13869F4: LateIdCallSt
  loc_13869FF: var_98 = CVar(CLng(4)) 'Long
  loc_1386A04: var_B8 = 0
  loc_1386A10: LateIdCallSt
  loc_1386A18: var_98 = 0
  loc_1386A24: var_B8 = CVar(CLng(5)) 'Long
  loc_1386A29: var_D8 = "Tax Inc"
  loc_1386A32: LateIdCallSt
  loc_1386A3D: var_98 = CVar(CLng(5)) 'Long
  loc_1386A48: var_B8 = CVar(CInt(4)) 'Integer
  loc_1386A4F: LateIdCallSt
  loc_1386A5A: var_98 = CVar(CLng(5)) 'Long
  loc_1386A65: var_B8 = CVar(CInt(4)) 'Integer
  loc_1386A6C: LateIdCallSt
  loc_1386A77: var_98 = CVar(CLng(5)) 'Long
  loc_1386A7C: var_B8 = 0
  loc_1386A88: LateIdCallSt
  loc_1386A90: var_98 = 0
  loc_1386A9C: var_B8 = CVar(CLng(6)) 'Long
  loc_1386AA1: var_D8 = "Adult Rate"
  loc_1386AAA: LateIdCallSt
  loc_1386AB5: var_98 = CVar(CLng(6)) 'Long
  loc_1386AC0: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386AC7: LateIdCallSt
  loc_1386AD2: var_98 = CVar(CLng(6)) 'Long
  loc_1386ADD: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386AE4: LateIdCallSt
  loc_1386AEF: var_98 = CVar(CLng(6)) 'Long
  loc_1386AF4: var_B8 = 0
  loc_1386B00: LateIdCallSt
  loc_1386B08: var_98 = 0
  loc_1386B14: var_B8 = CVar(CLng(7)) 'Long
  loc_1386B19: var_D8 = "Child Rate"
  loc_1386B22: LateIdCallSt
  loc_1386B2D: var_98 = CVar(CLng(7)) 'Long
  loc_1386B38: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386B3F: LateIdCallSt
  loc_1386B4A: var_98 = CVar(CLng(7)) 'Long
  loc_1386B55: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386B5C: LateIdCallSt
  loc_1386B67: var_98 = CVar(CLng(7)) 'Long
  loc_1386B6C: var_B8 = 0
  loc_1386B78: LateIdCallSt
  loc_1386B80: var_98 = 0
  loc_1386B8C: var_B8 = CVar(CLng(8)) 'Long
  loc_1386B91: var_D8 = "Extra Adult"
  loc_1386B9A: LateIdCallSt
  loc_1386BA5: var_98 = CVar(CLng(8)) 'Long
  loc_1386BB0: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386BB7: LateIdCallSt
  loc_1386BC2: var_98 = CVar(CLng(8)) 'Long
  loc_1386BCD: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386BD4: LateIdCallSt
  loc_1386BDF: var_98 = CVar(CLng(8)) 'Long
  loc_1386BE4: var_B8 = 0
  loc_1386BF0: LateIdCallSt
  loc_1386BF8: var_98 = 0
  loc_1386C04: var_B8 = CVar(CLng(9)) 'Long
  loc_1386C09: var_D8 = "Extra Child"
  loc_1386C12: LateIdCallSt
  loc_1386C1D: var_98 = CVar(CLng(9)) 'Long
  loc_1386C28: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386C2F: LateIdCallSt
  loc_1386C3A: var_98 = CVar(CLng(9)) 'Long
  loc_1386C45: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386C4C: LateIdCallSt
  loc_1386C57: var_98 = CVar(CLng(9)) 'Long
  loc_1386C5C: var_B8 = 0
  loc_1386C68: LateIdCallSt
  loc_1386C70: var_98 = 0
  loc_1386C7C: var_B8 = CVar(CLng(&HA)) 'Long
  loc_1386C81: var_D8 = "Occurences"
  loc_1386C8A: LateIdCallSt
  loc_1386C95: var_98 = CVar(CLng(&HA)) 'Long
  loc_1386CA0: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386CA7: LateIdCallSt
  loc_1386CB2: var_98 = CVar(CLng(&HA)) 'Long
  loc_1386CBD: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386CC4: LateIdCallSt
  loc_1386CCF: var_98 = CVar(CLng(&HA)) 'Long
  loc_1386CD4: var_B8 = &H4B0
  loc_1386CE0: LateIdCallSt
  loc_1386CE8: var_98 = 0
  loc_1386CF4: var_B8 = CVar(CLng(&HF)) 'Long
  loc_1386CF9: var_D8 = "Amt/Day"
  loc_1386D02: LateIdCallSt
  loc_1386D0D: var_98 = CVar(CLng(&HF)) 'Long
  loc_1386D18: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386D1F: LateIdCallSt
  loc_1386D2A: var_98 = CVar(CLng(&HF)) 'Long
  loc_1386D35: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386D3C: LateIdCallSt
  loc_1386D47: var_98 = CVar(CLng(&HF)) 'Long
  loc_1386D4C: var_B8 = &H4B0
  loc_1386D58: LateIdCallSt
  loc_1386D60: var_98 = 0
  loc_1386D6C: var_B8 = CVar(CLng(&H10)) 'Long
  loc_1386D71: var_D8 = "Amount"
  loc_1386D7A: LateIdCallSt
  loc_1386D85: var_98 = CVar(CLng(&H10)) 'Long
  loc_1386D90: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386D97: LateIdCallSt
  loc_1386DA2: var_98 = CVar(CLng(&H10)) 'Long
  loc_1386DAD: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386DB4: LateIdCallSt
  loc_1386DBF: var_98 = CVar(CLng(&H10)) 'Long
  loc_1386DC4: var_B8 = &H4B0
  loc_1386DD0: LateIdCallSt
  loc_1386DD8: var_98 = 0
  loc_1386DE4: var_B8 = CVar(CLng(&HB)) 'Long
  loc_1386DE9: var_D8 = "Print Option"
  loc_1386DF2: LateIdCallSt
  loc_1386DFD: var_98 = CVar(CLng(&HB)) 'Long
  loc_1386E08: var_B8 = CVar(CInt(1)) 'Integer
  loc_1386E0F: LateIdCallSt
  loc_1386E1A: var_98 = CVar(CLng(&HB)) 'Long
  loc_1386E25: var_B8 = CVar(CInt(1)) 'Integer
  loc_1386E2C: LateIdCallSt
  loc_1386E37: var_98 = CVar(CLng(&HB)) 'Long
  loc_1386E3C: var_B8 = 0
  loc_1386E48: LateIdCallSt
  loc_1386E50: var_98 = 0
  loc_1386E5C: var_B8 = CVar(CLng(&HC)) 'Long
  loc_1386E61: var_D8 = "Posting Method"
  loc_1386E6A: LateIdCallSt
  loc_1386E75: var_98 = CVar(CLng(&HC)) 'Long
  loc_1386E80: var_B8 = CVar(CInt(1)) 'Integer
  loc_1386E87: LateIdCallSt
  loc_1386E92: var_98 = CVar(CLng(&HC)) 'Long
  loc_1386E9D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1386EA4: LateIdCallSt
  loc_1386EAF: var_98 = CVar(CLng(&HC)) 'Long
  loc_1386EB4: var_B8 = 0
  loc_1386EC0: LateIdCallSt
  loc_1386EC8: var_98 = 0
  loc_1386ED4: var_B8 = CVar(CLng(&HD)) 'Long
  loc_1386ED9: var_D8 = "Charge Type"
  loc_1386EE2: LateIdCallSt
  loc_1386EED: var_98 = CVar(CLng(&HD)) 'Long
  loc_1386EF8: var_B8 = CVar(CInt(1)) 'Integer
  loc_1386EFF: LateIdCallSt
  loc_1386F0A: var_98 = CVar(CLng(&HD)) 'Long
  loc_1386F15: var_B8 = CVar(CInt(1)) 'Integer
  loc_1386F1C: LateIdCallSt
  loc_1386F27: var_98 = CVar(CLng(&HD)) 'Long
  loc_1386F2C: var_B8 = 0
  loc_1386F38: LateIdCallSt
  loc_1386F40: var_98 = 0
  loc_1386F4C: var_B8 = CVar(CLng(&HE)) 'Long
  loc_1386F51: var_D8 = "Flat Rate"
  loc_1386F5A: LateIdCallSt
  loc_1386F65: var_98 = CVar(CLng(&HE)) 'Long
  loc_1386F70: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386F77: LateIdCallSt
  loc_1386F82: var_98 = CVar(CLng(&HE)) 'Long
  loc_1386F8D: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386F94: LateIdCallSt
  loc_1386F9F: var_98 = CVar(CLng(&HE)) 'Long
  loc_1386FA4: var_B8 = 0
  loc_1386FB0: LateIdCallSt
  loc_1386FB8: var_98 = 0
  loc_1386FC4: var_B8 = CVar(CLng(&H13)) 'Long
  loc_1386FC9: var_D8 = "AppDate"
  loc_1386FD2: LateIdCallSt
  loc_1386FDD: var_98 = CVar(CLng(&H13)) 'Long
  loc_1386FE8: var_B8 = CVar(CInt(7)) 'Integer
  loc_1386FEF: LateIdCallSt
  loc_1386FFA: var_98 = CVar(CLng(&H13)) 'Long
  loc_1387005: var_B8 = CVar(CInt(7)) 'Integer
  loc_138700C: LateIdCallSt
  loc_1387017: var_98 = CVar(CLng(&H13)) 'Long
  loc_138701C: var_B8 = 0
  loc_1387028: LateIdCallSt
  loc_1387030: var_98 = 0
  loc_138703C: var_B8 = CVar(CLng(&H12)) 'Long
  loc_1387041: var_D8 = "Plan Percentage"
  loc_138704A: LateIdCallSt
  loc_1387055: var_98 = CVar(CLng(&H12)) 'Long
  loc_1387060: var_B8 = CVar(CInt(7)) 'Integer
  loc_1387067: LateIdCallSt
  loc_1387072: var_98 = CVar(CLng(&H12)) 'Long
  loc_138707D: var_B8 = CVar(CInt(7)) 'Integer
  loc_1387084: LateIdCallSt
  loc_138708F: var_98 = CVar(CLng(&H12)) 'Long
  loc_1387094: var_B8 = 0
  loc_13870A0: LateIdCallSt
  loc_13870A8: var_98 = 0
  loc_13870B4: var_B8 = CVar(CLng(&H14)) 'Long
  loc_13870B9: var_D8 = "Disc Amount"
  loc_13870C2: LateIdCallSt
  loc_13870CD: var_98 = CVar(CLng(&H14)) 'Long
  loc_13870D2: var_B8 = 0
  loc_13870DE: LateIdCallSt
  loc_13870E6: var_98 = 0
  loc_13870F2: var_B8 = CVar(CLng(&H15)) 'Long
  loc_13870F7: var_D8 = "Fix Rate"
  loc_1387100: LateIdCallSt
  loc_138710B: var_98 = CVar(CLng(&H15)) 'Long
  loc_1387110: var_B8 = 0
  loc_138711C: LateIdCallSt
  loc_1387126: Set var_88 = Nothing 
  loc_138712A: Exit Sub
End Sub

Public Sub Proc_59_47_1290BE0(arg_C) '1290BE0
  'Data Table: 52DB2C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_110 As Variant
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_B8 As Variant
  Dim var_150 As Variant
  Dim var_1D8 As Double
  Dim var_120 As Variant
  Dim var_168 As String
  Dim var_1E0 As Double
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_A8 As String
  Dim var_140 As Variant
  loc_129062C: If (arg_C = 0) Then
  loc_1290652:   If (CLng(Me.FGrid3.Col) = CLng(&H12)) Then
  loc_1290662:     Set var_8C = Me.TxtGrid
  loc_1290668:     Call 0.Method_Proc_59_47_1290BE00 (arg_C, var_A4, var_A8)
  loc_1290670:     var_A0 = var_A4.Text
  loc_1290688:     var_110 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_12906A0:     var_130 = CVar(CLng(Me.FGrid3.Col)) 'Long
  loc_12906DA:     LateIdCallSt
  loc_129070C:     Set var_8C = Me.Txt
  loc_1290712:     Call 0.Method_Proc_59_47_1290BE00 (CInt(&H19), var_A4, var_A8, Me.FGrid3, CVar(CStr(Format(CVar(var_A8), "0.00"))))
  loc_129071A:     1 = var_A4.Text
  loc_129073D:     var_B8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290745:     var_120 = CVar(CLng(&H12)) 'Long
  loc_1290788:     var_17C = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290790:     var_19C = CVar(CLng(&HF)) 'Long
  loc_12907C1:     var_1BC = CVar(CStr(Format(CVar((Val(var_A8) * Val(CStr((CDbl(CStr(Me.FGrid3.TextMatrix))) / CDbl(&H64)))))), "0.00"))) 'String
  loc_12907C9:     Set var_1D0 = Me.FGrid3
  loc_12907CF:     LateIdCallSt
  loc_1290813:     var_B8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_129081B:     var_120 = CVar(CLng(&HF)) 'Long
  loc_1290824:     Set var_A4 = Me.FGrid3
  loc_1290835:     var_A8 = CStr(var_A4.TextMatrix))
  loc_129083D:     var_1D8 = Val(var_A8)
  loc_1290853:     var_140 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290875:     var_168 = CStr(Me.FGrid3.TextMatrix))
  loc_129087D:     var_1E0 = Val(var_168)
  loc_12908DA:     LateIdCallSt
  loc_129090D:     Call Proc_59_48_1D76B48(Me.FGrid3, CVar(CStr(Format(CVar((var_1D8 * var_1E0)), "0.00"))), 1, 1, CVar(CLng(&H10)), CVar(CLng(Me.FGrid3.Row)), var_1E0, CVar(CLng(&HA)))
  loc_1290915:   Else
  loc_129091C:     If (var_A0 = CLng(&HF)) Then
  loc_129092C:       Set var_8C = Me.TxtGrid
  loc_1290932:       Call 0.Method_Proc_59_47_1290BE00 (arg_C, var_A4, var_A8, var_140, var_1D8)
  loc_129093A:       var_120 = var_A4.Text
  loc_1290952:       var_110 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_129095B:       Set var_F0 = Me.FGrid3
  loc_129096A:       var_130 = CVar(CLng(var_F0.Col)) 'Long
  loc_1290996:       var_150 = CVar(CStr(Format(CVar(var_A8), "0.00"))) 'String
  loc_12909A4:       LateIdCallSt
  loc_1290A05:       var_1D8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1290A16:       Set var_DC = Me.Txt
  loc_1290A1C:       Call 0.Method_Proc_59_47_1290BE00 (CInt(&H19), var_F0, var_168, var_1D8, CVar(CLng(&HF)), CVar(CLng(Me.FGrid3.Row)), Me.FGrid3)
  loc_1290A24:       var_150 = var_F0.Text
  loc_1290A47:       var_17C = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290A4F:       var_19C = CVar(CLng(&H12)) 'Long
  loc_1290A84:       var_1BC = CVar(CStr(Format(CVar(((var_1D8 * CDbl(&H64)) / Val(var_168))), "0.00"))) 'String
  loc_1290A8C:       Set var_1D0 = Me.FGrid3
  loc_1290A92:       LateIdCallSt
  loc_1290AD4:       var_B8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290ADC:       var_120 = CVar(CLng(&HF)) 'Long
  loc_1290B14:       var_140 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290B3E:       var_1E0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1290B9B:       LateIdCallSt
  loc_1290BCE:       Call Proc_59_48_1D76B48(Me.FGrid3, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * var_1E0)), "0.00"))), 1, 1, CVar(CLng(&H10)), CVar(CLng(Me.FGrid3.Row)), var_1E0, CVar(CLng(&HA)))
  loc_1290BD3:     End If
  loc_1290BD3:   End If
  loc_1290BD3: End If
  loc_1290BD8: Proc_59_47_1290BE0 = &HFF
End Sub

Public Sub Proc_59_48_1D76B48
  'Data Table: 52DB2C
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_10C As Variant
  Dim var_118 As Variant
  Dim var_C4 As Double
  Dim var_108 As Variant
  Dim var_13C As Variant
  Dim var_110 As String
  Dim var_1E8 As Double
  Dim var_114 As Variant
  Dim var_1F0 As Double
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_E4 As Variant
  Dim var_1D0 As Variant
  Dim var_150 As String
  Dim var_160 As Variant
  Dim var_90 As Double
  Dim var_12C As Variant
  Dim var_1F4 As String
  Dim var_1F8 As String
  Dim unk_52DB4B As Connection15
  Dim var_208 As Variant
  Dim var_218 As Double
  Dim var_210 As Variant
  Dim var_1E0 As Variant
  Dim var_204 As Variant
  Dim var_104 As Variant
  Dim var_2C4 As Double
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_180 As Variant
  Dim var_2AC As Variant
  Dim var_23C As Variant
  Dim var_2BC As Variant
  Dim var_2E4 As Variant
  Dim var_29C As Variant
  Dim var_304 As Variant
  Dim var_20C As Variant
  Dim var_31C As TextBox
  Dim var_1C0 As Variant
  Dim var_22C As Variant
  Dim var_27C As Variant
  Dim var_25C As Variant
  Dim var_98 As Recordset15
  Dim var_A0 As Double
  loc_1D6EBFA: If CBool(Trim(CVar(())) <> vbNullString) Then
  loc_1D6EC0B:   Set var_108 = Me.Txt
  loc_1D6EC11:   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H1E), var_10C)
  loc_1D6EC2C:   Set var_114 = Me.Txt
  loc_1D6EC32:   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H18), var_118)
  loc_1D6EC3A:   var_118.Tag = var_10C.Tag
  loc_1D6EC4D: End If
  loc_1D6EC50: var_C4 = CDbl(&H64)
  loc_1D6EC7B: For var_11C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)): var_86 = var_11C 'Byte
  loc_1D6EC86:   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6EC8E:   var_13C = CVar(CLng(&H11)) 'Long
  loc_1D6ECB9:   If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_1D6ECC1:     var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6ECC9:     var_13C = CVar(CLng(&H15)) 'Long
  loc_1D6ECF4:     If (CStr(Me.FGrid3.TextMatrix)) = "Yes") Then
  loc_1D6ED26:       var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D6ED37:       Set var_10C = Me.Txt
  loc_1D6ED3D:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_114, var_150, var_1E8, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_1D6ED45:       var_13C = var_114.Text
  loc_1D6ED5A:       var_190 = CVar(CLng(var_86)) 'Long
  loc_1D6ED62:       var_1B0 = CVar(CLng(&H12)) 'Long
  loc_1D6ED97:       var_1D0 = CVar(CStr(Format(CVar(((var_1E8 * CDbl(&H64)) / Val(var_150))), "0.00"))) 'String
  loc_1D6ED9F:       Set var_118 = Me.FGrid3
  loc_1D6EDA5:       LateIdCallSt
  loc_1D6EDD1:       var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6EDD9:       var_13C = CVar(CLng(&H12)) 'Long
  loc_1D6EDF3:       var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D6EDFB:       var_1E8 = Val(var_110)
  loc_1D6EE05:       var_C4 = (var_C4 - var_1E8)
  loc_1D6EE14:     Else
  loc_1D6EE22:       Set var_108 = Me.Txt
  loc_1D6EE28:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C, var_110, var_C4, var_1E8, var_13C, var_F4)
  loc_1D6EE30:       var_118 = var_10C.Text
  loc_1D6EE45:       var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6EE4D:       var_13C = CVar(CLng(&H12)) 'Long
  loc_1D6EE56:       Set var_114 = Me.FGrid3
  loc_1D6EE77:       var_190 = CVar(CLng(var_86)) 'Long
  loc_1D6EE7F:       var_1B0 = CVar(CLng(&HF)) 'Long
  loc_1D6EEB4:       var_1D0 = CVar(CStr(Format(CVar(((Val(var_110) * Val(CStr(var_114.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1D6EEBC:       Set var_118 = Me.FGrid3
  loc_1D6EEC2:       LateIdCallSt
  loc_1D6EEEE:       var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6EEF6:       var_13C = CVar(CLng(&H12)) 'Long
  loc_1D6EF22:       var_C4 = (var_C4 - Val(CStr(Me.FGrid3.TextMatrix))))
  loc_1D6EF2E:     End If
  loc_1D6EF33:     var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6EF3B:     var_13C = CVar(CLng(&HA)) 'Long
  loc_1D6EF65:     var_160 = CVar(CLng(var_86)) 'Long
  loc_1D6EF6D:     var_190 = CVar(CLng(&HF)) 'Long
  loc_1D6EF76:     Set var_10C = Me.FGrid3
  loc_1D6EF87:     var_150 = CStr(var_10C.TextMatrix))
  loc_1D6EF8F:     var_1F0 = Val(var_150)
  loc_1D6EF9D:     var_90 = (var_90 + (Val(CStr(Me.FGrid3.TextMatrix))) * var_1F0))
  loc_1D6EFB5:   End If
  loc_1D6EFEC:   Set var_108 = Me.Txt
  loc_1D6EFF2:   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(Format(var_90, "0.00")), 1, 1, var_90, var_1F0)
  loc_1D6EFFA:   var_10C.Text = var_190
  loc_1D6F013: Next var_11C 'Byte
  loc_1D6F02D: var_110 = "SELECT PlanMast.Code,PlanMast.RRIncTax,PlanMast.RoomPer,PlanMast.PercentApp,PlanMast.plan_package, plan1.Chrgcode, FixedCharge.Name,plan1.Revcode, plan1.TaxStru, plan1.TaxInc, plan1.PrintOption,plan1.PostingMethod, plan1.ChargeType, plan1.FlatRate,plan1.Adult, plan1.Child, plan1.ExtraAdult, plan1.ExtraChild,Plan1.App_Date , Plan1.PlanPer,Plan1.NoofDays FROM (PlanMast left join plan1 on Planmast.Code=Plan1.Code) Left JOIN FixedCharge ON plan1.Chrgcode = FixedCharge.Code where (PlanMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_1D6F045: Set var_108 = Me.Txt
  loc_1D6F04B: Call 0.Method_Proc_59_48_1D76B480 (CInt(&H18), var_10C, var_150, var_110 & "' or PlanMast.LOGSITE_CODE='HO') and PlanMast.code='")
  loc_1D6F053: var_D4 = var_10C.Tag
  loc_1D6F05C: var_1F8 = -1 & var_150
  loc_1D6F06C: unk_52DB4B.Execute var_1F8 & "'", var_114, 
  loc_1D6F077: Set var_94 = var_114
  loc_1D6F0AA: If (Me.Recordset15.RecordCount = 0) Then
  loc_1D6F0B2:   Set var_94 = Nothing
  loc_1D6F0BA:   Set var_98 = Nothing
  loc_1D6F0BD:   Exit Sub
  loc_1D6F0BE: End If
  loc_1D6F0CC: Set var_108 = Me.Txt
  loc_1D6F0D2: Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2B), var_10C)
  loc_1D6F0F1: If (var_10C.Text = "Yes") Then
  loc_1D6F100:   Set var_108 = Me.Lbl
  loc_1D6F106:   Call 0.Method_Proc_59_48_1D76B480 (&H3F, var_10C)
  loc_1D6F10E:   var_10C.Caption = vbNullString
  loc_1D6F128:   Set var_108 = Me.Txt
  loc_1D6F12E:   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D6F136:   var_110 = var_10C.Text
  loc_1D6F154:   Set var_114 = Me.Txt
  loc_1D6F15A:   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D6F162:   var_150 = var_118.Text
  loc_1D6F18E:   var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D6F19D:   var_1F4 = CStr(Format(var_D4, "0.00"))
  loc_1D6F1AC:   Set var_204 = Me.Txt
  loc_1D6F1B2:   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D6F1BA:   var_208.Tag = 1
  loc_1D6F21F:   If (Me.Recordset15.Fields.Item("RRIncTax").Value = "Yes") Then
  loc_1D6F23F:     var_10C = Me.Recordset15.Fields.Item("PLan_Package")
  loc_1D6F261:     If (var_10C.Value = "Package") Then
  loc_1D6F272:       Set var_108 = Me.Txt
  loc_1D6F278:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_10C, var_110)
  loc_1D6F280:       var_1F0 = var_10C.Text
  loc_1D6F29C:       If (CDbl(Val(var_110)) >= CDbl(0)) Then
  loc_1D6F2BF:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D6F2D0:           Set var_108 = Me.Txt
  loc_1D6F2D6:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D6F2EB:           var_1E8 = Val(var_10C.Text)
  loc_1D6F2FC:           Set var_114 = Me.Txt
  loc_1D6F302:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118, var_150)
  loc_1D6F317:           var_1F0 = Val(var_150)
  loc_1D6F328:           Set var_204 = Me.Txt
  loc_1D6F32E:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D6F366:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D6F384:           Set var_20C = Me.Txt
  loc_1D6F38A:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D6F392:           var_210.Tag = 1
  loc_1D6F3C1:         Else
  loc_1D6F3CE:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D6F3E1:           If (var_110 = "Disc On Food") Then
  loc_1D6F3F2:             Set var_108 = Me.Txt
  loc_1D6F3F8:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C, var_110)
  loc_1D6F400:             var_218 = var_10C.Text
  loc_1D6F40D:             var_1E8 = Val(var_110)
  loc_1D6F41E:             Set var_114 = Me.Txt
  loc_1D6F424:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_150)
  loc_1D6F439:             var_1F0 = Val(var_150)
  loc_1D6F44A:             Set var_204 = Me.Txt
  loc_1D6F450:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D6F488:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D6F4A6:             Set var_20C = Me.Txt
  loc_1D6F4AC:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D6F4B4:             var_210.Text = 1
  loc_1D6F508:             For var_21C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):   var_86 = var_21C 'Byte
  loc_1D6F513:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6F51B:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D6F54B:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D6F555:                 If (var_90 <> CDbl(0)) Then
  loc_1D6F55D:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6F565:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D6F587:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D6F5B9:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D6F5CA:                   Set var_114 = Me.Txt
  loc_1D6F5D0:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D6F5D8:                   var_13C = var_118.Text
  loc_1D6F5ED:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D6F5F5:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D6F61F:                   var_26C = CVar(CLng(var_86)) 'Long
  loc_1D6F627:                   var_28C = CVar(CLng(&H14)) 'Long
  loc_1D6F664:                   var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D6F66C:                   Set var_208 = Me.FGrid3
  loc_1D6F672:                   LateIdCallSt
  loc_1D6F6A8:                 Else
  loc_1D6F6AD:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6F6B5:                   var_13C = CVar(CLng(&HF)) 'Long
  loc_1D6F6DF:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D6F6E7:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D6F714:                   var_1D0 = CVar(CStr(Format(CVar(Val(CStr(Me.FGrid3.TextMatrix)))), "0.00"))) 'String
  loc_1D6F71C:                   Set var_10C = Me.FGrid3
  loc_1D6F722:                   LateIdCallSt
  loc_1D6F741:                 End If
  loc_1D6F746:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6F74E:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D6F778:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D6F780:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D6F789:                 Set var_10C = Me.FGrid3
  loc_1D6F7AA:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D6F7B2:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D6F7CC:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D6F7DC:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D6F7E4:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D6F7ED:                 Set var_118 = Me.FGrid3
  loc_1D6F80E:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D6F816:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D6F83F:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D6F84F:                 var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D6F857:                 Set var_204 = Me.FGrid3
  loc_1D6F85D:                 LateIdCallSt
  loc_1D6F890:               End If
  loc_1D6F893:             Next var_21C 'Byte
  loc_1D6F89C:           Else
  loc_1D6F8BC:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D6F8CD:               Set var_108 = Me.Txt
  loc_1D6F8D3:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D6F8F9:               Set var_114 = Me.Txt
  loc_1D6F8FF:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D6F914:               var_1F0 = Val(var_118.Text)
  loc_1D6F925:               Set var_204 = Me.Txt
  loc_1D6F92B:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D6F979:               var_2C4 = Val(CStr(Me.Recordset15.Fields.Item("RoomPer").Value))
  loc_1D6F9A4:               var_E4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((Val(var_1F4) * var_2C4) / CDbl(&H64)))) 'Double
  loc_1D6F9C2:               Set var_318 = Me.Txt
  loc_1D6F9C8:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_31C, CStr(Format(var_10C.TextMatrix), "0.00")), 1)
  loc_1D6F9D0:               var_31C.Tag = 1
  loc_1D6FA16:               Set var_108 = Me.Txt
  loc_1D6FA1C:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D6FA24:               var_10C.Text = var_2C4
  loc_1D6FA5B:               For var_320 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_86 = var_320 'Byte
  loc_1D6FA66:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6FA6E:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D6FA9E:                 If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D6FAA6:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6FAAE:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D6FAD0:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D6FB02:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D6FB13:                   Set var_114 = Me.Txt
  loc_1D6FB19:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D6FB21:                   var_13C = var_118.Text
  loc_1D6FB4E:                   var_208 = Me.Recordset15.Fields.Item("RoomPer")
  loc_1D6FB6F:                   var_1C0 = CVar(CLng(var_86)) 'Long
  loc_1D6FB77:                   var_22C = CVar(CLng(&HA)) 'Long
  loc_1D6FBA1:                   var_27C = CVar(CLng(var_86)) 'Long
  loc_1D6FBA9:                   var_29C = CVar(CLng(&H14)) 'Long
  loc_1D6FBE2:                   var_1D0 = CVar(((((((var_1E8 * var_1F0) * Val(var_1F4)) * (CDbl(&H64) - Val(CStr(var_208.Value)))) / CDbl(&H64)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))) 'Double
  loc_1D6FBF2:                   var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D6FBFA:                   Set var_210 = Me.FGrid3
  loc_1D6FC00:                   LateIdCallSt
  loc_1D6FC40:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6FC48:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D6FC62:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D6FC72:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D6FC7A:                   var_190 = CVar(CLng(&HF)) 'Long
  loc_1D6FC83:                   Set var_10C = Me.FGrid3
  loc_1D6FCA4:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D6FCAC:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D6FCD6:                   var_23C = CVar(CLng(var_86)) 'Long
  loc_1D6FCDE:                   var_26C = CVar(CLng(&H14)) 'Long
  loc_1D6FD08:                   var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D6FD39:                   var_1D0 = CVar(((Val(var_110) * Val(CStr(var_10C.TextMatrix)))) - (Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(Me.FGrid3.TextMatrix)))))) 'Double
  loc_1D6FD49:                   var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D6FD51:                   Set var_204 = Me.FGrid3
  loc_1D6FD57:                   LateIdCallSt
  loc_1D6FDB9:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D6FDCA:                   Set var_108 = Me.Txt
  loc_1D6FDD0:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D6FDD8:                   var_304 = var_10C.Text
  loc_1D6FDEB:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D6FDF9:                   Set var_118 = Me.Txt
  loc_1D6FDFF:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D6FE07:                   var_204.Text = CVar(CLng(&H10))
  loc_1D6FE25:                 End If
  loc_1D6FE28:               Next var_320 'Byte
  loc_1D6FE31:             Else
  loc_1D6FE3F:               Set var_108 = Me.Txt
  loc_1D6FE45:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D6FE6B:               Set var_114 = Me.Txt
  loc_1D6FE71:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D6FE86:               var_1F0 = Val(var_118.Text)
  loc_1D6FEA5:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D6FEB4:               var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D6FEC3:               Set var_204 = Me.Txt
  loc_1D6FEC9:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D6FED1:               var_208.Tag = 1
  loc_1D6FF09:               Set var_108 = Me.Txt
  loc_1D6FF0F:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D6FF17:               var_10C.Text = var_1F0
  loc_1D6FF4E:               For var_32C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_32C 'Byte
  loc_1D6FF59:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D6FF61:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D6FF7B:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D6FF83:                 var_1E8 = Val(var_110)
  loc_1D6FF9C:                 Set var_10C = Me.FGrid3
  loc_1D6FFB5:                 var_1F0 = Val(CStr(var_10C.TextMatrix)))
  loc_1D6FFC6:                 Set var_114 = Me.Txt
  loc_1D6FFCC:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_1D6FFE9:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D6FFF1:                 var_1E0 = CVar(CLng(&H12)) 'Long
  loc_1D6FFFA:                 Set var_204 = Me.FGrid3
  loc_1D7001B:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D70050:                 var_180 = CVar(((var_118.Text * var_1F0) - ((Val(var_1F4) * Val(CStr(var_204.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D70060:                 var_2AC = CVar(CStr(Format(Me.FGrid3.TextMatrix), "0.00"))) 'String
  loc_1D70068:                 Set var_208 = Me.FGrid3
  loc_1D7006E:                 LateIdCallSt
  loc_1D700D0:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D700E1:                 Set var_108 = Me.Txt
  loc_1D700E7:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_208)
  loc_1D700EF:                 var_2AC = var_10C.Text
  loc_1D70102:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D70110:                 Set var_118 = Me.Txt
  loc_1D70116:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, var_1F4, 1, 1)
  loc_1D7011E:                 var_204.Text = CVar(CLng(&H10))
  loc_1D7013F:               Next var_32C 'Byte
  loc_1D70145:             End If
  loc_1D70145:           End If
  loc_1D70145:         End If
  loc_1D70148:       Else
  loc_1D70156:         Set var_108 = Me.Txt
  loc_1D7015C:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D70164:         var_110 = var_10C.Text
  loc_1D70182:         Set var_114 = Me.Txt
  loc_1D70188:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D70190:         var_150 = var_118.Text
  loc_1D701BC:         var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D701DA:         Set var_204 = Me.Txt
  loc_1D701E0:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D701E8:         var_208.Tag = 1
  loc_1D7020E:       End If
  loc_1D7021C:       Set var_108 = Me.Txt
  loc_1D70222:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D7022A:       var_1F0 = var_10C.Tag
  loc_1D70237:       var_1E8 = Val(var_110)
  loc_1D70248:       Set var_114 = Me.Txt
  loc_1D7024E:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D70263:       var_1F0 = Val(var_150)
  loc_1D702A0:       Set var_204 = Me.Txt
  loc_1D702A6:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / var_1F0)), "0.00")), 1)
  loc_1D702AE:       var_208.Text = 1
  loc_1D702F1:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D70310:       Set var_114 = Me.Txt
  loc_1D70316:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D7031E:       var_118.Text = var_1F0
  loc_1D70342:       Set var_108 = Me.Txt
  loc_1D70348:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C)
  loc_1D7035D:       var_1E8 = Val(var_10C.Tag)
  loc_1D7036E:       Set var_114 = Me.Txt
  loc_1D70374:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D703B7:       var_1F4 = CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00"))
  loc_1D703C6:       Set var_204 = Me.Txt
  loc_1D703CC:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_208, var_1F4, 1)
  loc_1D703D4:       var_208.Text = 1
  loc_1D70405:       Set var_108 = Me.Txt
  loc_1D7040B:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C)
  loc_1D7041E:       Set var_114 = Me.Txt
  loc_1D70424:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118, var_150)
  loc_1D7042C:       var_1F0 = var_118.Text
  loc_1D7043F:       Set var_204 = Me.Txt
  loc_1D70445:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H29), var_208)
  loc_1D70460:       Set var_20C = Me.Txt
  loc_1D70466:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H32), var_210)
  loc_1D70481:       Set var_318 = Me.Txt
  loc_1D70487:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H33), var_31C)
  loc_1D7048F:       var_110 = var_31C.Text
  loc_1D7049C:       var_1F0 = Val(var_110)
  loc_1D704C4:       Proc_96_76_1840070(var_10C, var_150, var_208.Text, var_210.Text)
  loc_1D704F9:       Set var_108 = Me.Txt
  loc_1D704FF:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C, var_110)
  loc_1D7051A:       Set var_114 = Me.Txt
  loc_1D70520:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_110)
  loc_1D70528:       var_118.Text = var_10C.Tag
  loc_1D7053E:     Else
  loc_1D7054C:       Set var_108 = Me.Txt
  loc_1D70552:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_10C)
  loc_1D70576:       If (CDbl(Val(var_10C.Text)) >= CDbl(0)) Then
  loc_1D70599:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D705AA:           Set var_108 = Me.Txt
  loc_1D705B0:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D705C5:           var_1E8 = Val(var_10C.Text)
  loc_1D705D6:           Set var_114 = Me.Txt
  loc_1D705DC:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118, var_150)
  loc_1D705F1:           var_1F0 = Val(var_150)
  loc_1D70602:           Set var_204 = Me.Txt
  loc_1D70608:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D70640:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D7065E:           Set var_20C = Me.Txt
  loc_1D70664:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D7066C:           var_210.Tag = 1
  loc_1D7069B:         Else
  loc_1D706A8:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D706BB:           If (var_110 = "Disc On Food") Then
  loc_1D706CC:             Set var_108 = Me.Txt
  loc_1D706D2:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C, var_110)
  loc_1D706DA:             var_218 = var_10C.Text
  loc_1D706E7:             var_1E8 = Val(var_110)
  loc_1D706F8:             Set var_114 = Me.Txt
  loc_1D706FE:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_150)
  loc_1D70713:             var_1F0 = Val(var_150)
  loc_1D70724:             Set var_204 = Me.Txt
  loc_1D7072A:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D70762:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D70780:             Set var_20C = Me.Txt
  loc_1D70786:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D7078E:             var_210.Text = 1
  loc_1D707E2:             For var_33C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_86 = var_33C 'Byte
  loc_1D707ED:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D707F5:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D70825:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D7082D:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D70835:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D70857:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D70889:                 var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D7089A:                 Set var_114 = Me.Txt
  loc_1D708A0:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D708A8:                 var_13C = var_118.Text
  loc_1D708BD:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D708C5:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D708EF:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D708F7:                 var_28C = CVar(CLng(&H14)) 'Long
  loc_1D70934:                 var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D7093C:                 Set var_208 = Me.FGrid3
  loc_1D70942:                 LateIdCallSt
  loc_1D7097A:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D70982:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D709AC:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D709B4:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D709BD:                 Set var_10C = Me.FGrid3
  loc_1D709DE:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D709E6:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D70A00:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D70A10:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D70A18:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D70A21:                 Set var_118 = Me.FGrid3
  loc_1D70A42:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D70A4A:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D70A73:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D70A83:                 var_304 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D70A8B:                 Set var_204 = Me.FGrid3
  loc_1D70A91:                 LateIdCallSt
  loc_1D70AC4:               End If
  loc_1D70AC7:             Next var_33C 'Byte
  loc_1D70AD0:           Else
  loc_1D70AF0:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D70B01:               Set var_108 = Me.Txt
  loc_1D70B07:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D70B2D:               Set var_114 = Me.Txt
  loc_1D70B33:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D70B48:               var_1F0 = Val(var_118.Text)
  loc_1D70B59:               Set var_204 = Me.Txt
  loc_1D70B5F:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D70B74:               var_218 = Val(var_1F4)
  loc_1D70B9F:               var_D4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((var_218 * var_C4) / CDbl(&H64)))) 'Double
  loc_1D70BBD:               Set var_20C = Me.Txt
  loc_1D70BC3:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_210, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D70BCB:               var_210.Tag = 1
  loc_1D70C09:               Set var_108 = Me.Txt
  loc_1D70C0F:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D70C17:               var_10C.Text = var_218
  loc_1D70C4E:               For var_340 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_340 'Byte
  loc_1D70C59:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D70C7B:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D70C91:                 If (CDbl(Val(var_110)) <> CDbl(0)) Then
  loc_1D70CA2:                   Set var_108 = Me.Txt
  loc_1D70CA8:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_10C, var_110, CVar(CLng(&HF)))
  loc_1D70CB0:                   var_F4 = var_10C.Text
  loc_1D70CC5:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D70CCD:                   var_13C = CVar(CLng(&H12)) 'Long
  loc_1D70CD6:                   Set var_114 = Me.FGrid3
  loc_1D70CE7:                   var_150 = CStr(var_114.TextMatrix))
  loc_1D70CF7:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D70CFF:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D70D34:                   var_1D0 = CVar(CStr(Format(CVar(((Val(var_110) * Val(var_150)) / CDbl(&H64))), "0.00"))) 'String
  loc_1D70D42:                   LateIdCallSt
  loc_1D70D90:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D70D98:                   var_1E8 = Val(var_110)
  loc_1D70DA9:                   Set var_10C = Me.Txt
  loc_1D70DAF:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_114, var_150, var_1E8, CVar(CLng(&HF)), CVar(CLng(var_86)), Me.FGrid3)
  loc_1D70DB7:                   var_1D0 = var_114.Text
  loc_1D70DCC:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D70DD4:                   var_190 = CVar(CLng(&H12)) 'Long
  loc_1D70DFE:                   var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D70E2F:                   var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D70E3F:                   var_25C = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D70E47:                   Set var_204 = Me.FGrid3
  loc_1D70E4D:                   LateIdCallSt
  loc_1D70EA9:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D70EBA:                   Set var_108 = Me.Txt
  loc_1D70EC0:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D70EC8:                   var_25C = var_10C.Text
  loc_1D70EDB:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D70EE9:                   Set var_118 = Me.Txt
  loc_1D70EEF:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D70EF7:                   var_204.Text = CVar(CLng(&H10))
  loc_1D70F15:                 End If
  loc_1D70F18:               Next var_340 'Byte
  loc_1D70F21:             Else
  loc_1D70F2F:               Set var_108 = Me.Txt
  loc_1D70F35:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D70F5B:               Set var_114 = Me.Txt
  loc_1D70F61:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D70F69:               var_150 = var_118.Text
  loc_1D70F76:               var_1F0 = Val(var_150)
  loc_1D70F95:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D70FB3:               Set var_204 = Me.Txt
  loc_1D70FB9:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D70FC1:               var_208.Tag = 1
  loc_1D70FF9:               Set var_108 = Me.Txt
  loc_1D70FFF:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D71007:               var_10C.Text = var_1F0
  loc_1D7103E:               For var_344 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_344 'Byte
  loc_1D71049:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71051:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D7106B:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D71073:                 var_1E8 = Val(var_110)
  loc_1D71084:                 Set var_10C = Me.Txt
  loc_1D7108A:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_114, var_150, var_1E8)
  loc_1D71092:                 var_13C = var_114.Text
  loc_1D710A7:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D710AF:                 var_190 = CVar(CLng(&H12)) 'Long
  loc_1D710D9:                 var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D7110A:                 var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D7111A:                 var_25C = CVar(CStr(Format(Format(Me.FGrid3.TextMatrix), "0.00"), "0.00"))) 'String
  loc_1D71122:                 Set var_204 = Me.FGrid3
  loc_1D71128:                 LateIdCallSt
  loc_1D71184:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D71195:                 Set var_108 = Me.Txt
  loc_1D7119B:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D711A3:                 var_25C = var_10C.Text
  loc_1D711B6:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D711C4:                 Set var_118 = Me.Txt
  loc_1D711CA:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D711D2:                 var_204.Text = CVar(CLng(&H10))
  loc_1D711F3:               Next var_344 'Byte
  loc_1D711F9:             End If
  loc_1D711F9:           End If
  loc_1D711F9:         End If
  loc_1D711FC:       Else
  loc_1D7120A:         Set var_108 = Me.Txt
  loc_1D71210:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D71225:         var_1E8 = Val(var_10C.Text)
  loc_1D71236:         Set var_114 = Me.Txt
  loc_1D7123C:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D71251:         var_1F0 = Val(var_118.Text)
  loc_1D71270:         var_D4 = CVar((var_1E8 - var_1F0)) 'Double
  loc_1D7127F:         var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D7128E:         Set var_204 = Me.Txt
  loc_1D71294:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D7129C:         var_208.Tag = 1
  loc_1D712C2:       End If
  loc_1D712DF:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D712FE:       Set var_114 = Me.Txt
  loc_1D71304:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D7130C:       var_118.Text = var_1F0
  loc_1D71330:       Set var_108 = Me.Txt
  loc_1D71336:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C)
  loc_1D71351:       Set var_114 = Me.Txt
  loc_1D71357:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_118)
  loc_1D7137D:       Set var_108 = Me.Txt
  loc_1D71383:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C)
  loc_1D71396:       Set var_114 = Me.Txt
  loc_1D7139C:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118)
  loc_1D713B7:       Set var_204 = Me.Txt
  loc_1D713BD:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H29), var_208)
  loc_1D713D8:       Set var_20C = Me.Txt
  loc_1D713DE:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H32), var_210)
  loc_1D713F9:       Set var_318 = Me.Txt
  loc_1D713FF:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H33), var_31C)
  loc_1D71407:       var_110 = var_31C.Text
  loc_1D71414:       var_1F0 = Val(var_110)
  loc_1D7143C:       Proc_96_76_1840070(var_10C, var_10C.Tag, var_208.Text, var_210.Text)
  loc_1D71471:       Set var_108 = Me.Txt
  loc_1D71477:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C, var_110)
  loc_1D71492:       Set var_114 = Me.Txt
  loc_1D71498:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_110)
  loc_1D714A0:       var_118.Text = var_10C.Tag
  loc_1D714B3:     End If
  loc_1D714B3:     var_F4 = "Net Room Rate including Tax is :"
  loc_1D714C6:     Set var_108 = Me.Txt
  loc_1D714CC:     Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D714D4:     var_F4 = var_10C.Tag
  loc_1D714FB:     Set var_114 = Me.Lbl
  loc_1D71501:     Call 0.Method_Proc_59_48_1D76B480 (&H3F, var_118)
  loc_1D71509:     var_118.Caption = CStr(var_1E8 & Trim(CVar(var_110)))
  loc_1D71532:     Me.lblLTDet.Caption = vbNullString
  loc_1D7153D:   Else
  loc_1D7155A:     var_10C = Me.Recordset15.Fields.Item("PLan_Package")
  loc_1D7157C:     If (var_10C.Value = "Package") Then
  loc_1D7158D:       Set var_108 = Me.Txt
  loc_1D71593:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_10C)
  loc_1D715B7:       If (CDbl(Val(var_10C.Text)) >= CDbl(0)) Then
  loc_1D715DA:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D715EB:           Set var_108 = Me.Txt
  loc_1D715F1:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D71617:           Set var_114 = Me.Txt
  loc_1D7161D:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D71625:           var_150 = var_118.Text
  loc_1D71632:           var_1F0 = Val(var_150)
  loc_1D71643:           Set var_204 = Me.Txt
  loc_1D71649:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D71681:           var_D4 = CVar(((Val(var_10C.Text) - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D7169F:           Set var_20C = Me.Txt
  loc_1D716A5:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D716AD:           var_210.Tag = 1
  loc_1D716DC:         Else
  loc_1D716E9:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D716FC:           If (var_110 = "Disc On Food") Then
  loc_1D7170D:             Set var_108 = Me.Txt
  loc_1D71713:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C, var_110)
  loc_1D7171B:             var_218 = var_10C.Text
  loc_1D71728:             var_1E8 = Val(var_110)
  loc_1D71739:             Set var_114 = Me.Txt
  loc_1D7173F:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_150)
  loc_1D71754:             var_1F0 = Val(var_150)
  loc_1D71765:             Set var_204 = Me.Txt
  loc_1D7176B:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D717A3:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D717C1:             Set var_20C = Me.Txt
  loc_1D717C7:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D717CF:             var_210.Text = 1
  loc_1D71823:             For var_348 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_86 = var_348 'Byte
  loc_1D7182E:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71836:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D71866:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D71870:                 If (var_90 <> CDbl(0)) Then
  loc_1D71878:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71880:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D718A2:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D718D4:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D718E5:                   Set var_114 = Me.Txt
  loc_1D718EB:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D718F3:                   var_13C = var_118.Text
  loc_1D71908:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D71910:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D7193A:                   var_26C = CVar(CLng(var_86)) 'Long
  loc_1D71942:                   var_28C = CVar(CLng(&H14)) 'Long
  loc_1D7197F:                   var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D71987:                   Set var_208 = Me.FGrid3
  loc_1D7198D:                   LateIdCallSt
  loc_1D719C3:                 Else
  loc_1D719C8:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D719D0:                   var_13C = CVar(CLng(&HF)) 'Long
  loc_1D719FA:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D71A02:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D71A2F:                   var_1D0 = CVar(CStr(Format(CVar(Val(CStr(Me.FGrid3.TextMatrix)))), "0.00"))) 'String
  loc_1D71A37:                   Set var_10C = Me.FGrid3
  loc_1D71A3D:                   LateIdCallSt
  loc_1D71A5C:                 End If
  loc_1D71A61:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71A69:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D71A93:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D71A9B:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D71AA4:                 Set var_10C = Me.FGrid3
  loc_1D71AC5:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D71ACD:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D71AE7:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D71AF7:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D71AFF:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D71B08:                 Set var_118 = Me.FGrid3
  loc_1D71B29:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D71B31:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D71B5A:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D71B6A:                 var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D71B72:                 Set var_204 = Me.FGrid3
  loc_1D71B78:                 LateIdCallSt
  loc_1D71BAB:               End If
  loc_1D71BAE:             Next var_348 'Byte
  loc_1D71BB7:           Else
  loc_1D71BD7:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D71BE8:               Set var_108 = Me.Txt
  loc_1D71BEE:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D71C14:               Set var_114 = Me.Txt
  loc_1D71C1A:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D71C2F:               var_1F0 = Val(var_118.Text)
  loc_1D71C40:               Set var_204 = Me.Txt
  loc_1D71C46:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D71C94:               var_2C4 = Val(CStr(Me.Recordset15.Fields.Item("RoomPer").Value))
  loc_1D71CBF:               var_E4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((Val(var_1F4) * var_2C4) / CDbl(&H64)))) 'Double
  loc_1D71CDD:               Set var_318 = Me.Txt
  loc_1D71CE3:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_31C, CStr(Format(var_10C.TextMatrix), "0.00")), 1)
  loc_1D71CEB:               var_31C.Tag = 1
  loc_1D71D31:               Set var_108 = Me.Txt
  loc_1D71D37:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D71D3F:               var_10C.Text = var_2C4
  loc_1D71D76:               For var_34C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_34C 'Byte
  loc_1D71D81:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71D89:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D71DB9:                 If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D71DC1:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71DC9:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D71DEB:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D71E1D:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D71E2E:                   Set var_114 = Me.Txt
  loc_1D71E34:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D71E3C:                   var_13C = var_118.Text
  loc_1D71E69:                   var_208 = Me.Recordset15.Fields.Item("RoomPer")
  loc_1D71E8A:                   var_1C0 = CVar(CLng(var_86)) 'Long
  loc_1D71E92:                   var_22C = CVar(CLng(&HA)) 'Long
  loc_1D71EBC:                   var_27C = CVar(CLng(var_86)) 'Long
  loc_1D71EC4:                   var_29C = CVar(CLng(&H14)) 'Long
  loc_1D71EFD:                   var_1D0 = CVar(((((((var_1E8 * var_1F0) * Val(var_1F4)) * (CDbl(&H64) - Val(CStr(var_208.Value)))) / CDbl(&H64)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))) 'Double
  loc_1D71F0D:                   var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D71F15:                   Set var_210 = Me.FGrid3
  loc_1D71F1B:                   LateIdCallSt
  loc_1D71F5B:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71F63:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D71F7D:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D71F8D:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D71F95:                   var_190 = CVar(CLng(&HF)) 'Long
  loc_1D71F9E:                   Set var_10C = Me.FGrid3
  loc_1D71FBF:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D71FC7:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D71FF1:                   var_23C = CVar(CLng(var_86)) 'Long
  loc_1D71FF9:                   var_26C = CVar(CLng(&H14)) 'Long
  loc_1D72023:                   var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D72054:                   var_1D0 = CVar(((Val(var_110) * Val(CStr(var_10C.TextMatrix)))) - (Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(Me.FGrid3.TextMatrix)))))) 'Double
  loc_1D72064:                   var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D7206C:                   Set var_204 = Me.FGrid3
  loc_1D72072:                   LateIdCallSt
  loc_1D720D4:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D720E5:                   Set var_108 = Me.Txt
  loc_1D720EB:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D720F3:                   var_304 = var_10C.Text
  loc_1D72106:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D72114:                   Set var_118 = Me.Txt
  loc_1D7211A:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D72122:                   var_204.Text = CVar(CLng(&H10))
  loc_1D72140:                 End If
  loc_1D72143:               Next var_34C 'Byte
  loc_1D7214C:             Else
  loc_1D7215A:               Set var_108 = Me.Txt
  loc_1D72160:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D72186:               Set var_114 = Me.Txt
  loc_1D7218C:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D721A1:               var_1F0 = Val(var_118.Text)
  loc_1D721C0:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D721CF:               var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D721DE:               Set var_204 = Me.Txt
  loc_1D721E4:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D721EC:               var_208.Tag = 1
  loc_1D72224:               Set var_108 = Me.Txt
  loc_1D7222A:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D72232:               var_10C.Text = var_1F0
  loc_1D72269:               For var_350 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_350 'Byte
  loc_1D72274:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7227C:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D72296:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D7229E:                 var_1E8 = Val(var_110)
  loc_1D722B7:                 Set var_10C = Me.FGrid3
  loc_1D722D0:                 var_1F0 = Val(CStr(var_10C.TextMatrix)))
  loc_1D722E1:                 Set var_114 = Me.Txt
  loc_1D722E7:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_1D72304:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D7230C:                 var_1E0 = CVar(CLng(&H12)) 'Long
  loc_1D72315:                 Set var_204 = Me.FGrid3
  loc_1D72336:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D7236B:                 var_180 = CVar(((var_118.Text * var_1F0) - ((Val(var_1F4) * Val(CStr(var_204.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D7237B:                 var_2AC = CVar(CStr(Format(Me.FGrid3.TextMatrix), "0.00"))) 'String
  loc_1D72383:                 Set var_208 = Me.FGrid3
  loc_1D72389:                 LateIdCallSt
  loc_1D723EB:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D723FC:                 Set var_108 = Me.Txt
  loc_1D72402:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_208)
  loc_1D7240A:                 var_2AC = var_10C.Text
  loc_1D7241D:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D7242B:                 Set var_118 = Me.Txt
  loc_1D72431:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, var_1F4, 1, 1)
  loc_1D72439:                 var_204.Text = CVar(CLng(&H10))
  loc_1D7245A:               Next var_350 'Byte
  loc_1D72460:             End If
  loc_1D72460:           End If
  loc_1D72460:         End If
  loc_1D72463:       Else
  loc_1D72471:         Set var_108 = Me.Txt
  loc_1D72477:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D7247F:         var_110 = var_10C.Text
  loc_1D7249D:         Set var_114 = Me.Txt
  loc_1D724A3:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D724AB:         var_150 = var_118.Text
  loc_1D724D7:         var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D724F5:         Set var_204 = Me.Txt
  loc_1D724FB:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D72503:         var_208.Tag = 1
  loc_1D72529:       End If
  loc_1D72537:       Set var_108 = Me.Txt
  loc_1D7253D:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D72545:       var_1F0 = var_10C.Tag
  loc_1D72552:       var_1E8 = Val(var_110)
  loc_1D72563:       Set var_114 = Me.Txt
  loc_1D72569:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D7257E:       var_1F0 = Val(var_150)
  loc_1D725BB:       Set var_204 = Me.Txt
  loc_1D725C1:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / var_1F0)), "0.00")), 1)
  loc_1D725C9:       var_208.Text = 1
  loc_1D7260C:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D7262B:       Set var_114 = Me.Txt
  loc_1D72631:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D72639:       var_118.Text = var_1F0
  loc_1D7265D:       Set var_108 = Me.Txt
  loc_1D72663:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C)
  loc_1D72678:       var_1E8 = Val(var_10C.Tag)
  loc_1D72689:       Set var_114 = Me.Txt
  loc_1D7268F:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D726D2:       var_1F4 = CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00"))
  loc_1D726E1:       Set var_204 = Me.Txt
  loc_1D726E7:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_208, var_1F4, 1)
  loc_1D726EF:       var_208.Text = 1
  loc_1D72720:       Set var_108 = Me.Txt
  loc_1D72726:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C)
  loc_1D72739:       Set var_114 = Me.Txt
  loc_1D7273F:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118, var_150)
  loc_1D72747:       var_1F0 = var_118.Text
  loc_1D7275A:       Set var_204 = Me.Txt
  loc_1D72760:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H29), var_208)
  loc_1D7277B:       Set var_20C = Me.Txt
  loc_1D72781:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H32), var_210)
  loc_1D7279C:       Set var_318 = Me.Txt
  loc_1D727A2:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H33), var_31C)
  loc_1D727AA:       var_110 = var_31C.Text
  loc_1D727B7:       var_1F0 = Val(var_110)
  loc_1D727DF:       Proc_96_76_1840070(var_10C, var_150, var_208.Text, var_210.Text)
  loc_1D72814:       Set var_108 = Me.Txt
  loc_1D7281A:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C, var_110)
  loc_1D72835:       Set var_114 = Me.Txt
  loc_1D7283B:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_110)
  loc_1D72843:       var_118.Text = var_10C.Tag
  loc_1D72859:     Else
  loc_1D72867:       Set var_108 = Me.Txt
  loc_1D7286D:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_10C)
  loc_1D72891:       If (CDbl(Val(var_10C.Text)) >= CDbl(0)) Then
  loc_1D728B4:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D728C5:           Set var_108 = Me.Txt
  loc_1D728CB:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D728E0:           var_1E8 = Val(var_10C.Text)
  loc_1D728F1:           Set var_114 = Me.Txt
  loc_1D728F7:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118, var_150)
  loc_1D7290C:           var_1F0 = Val(var_150)
  loc_1D7291D:           Set var_204 = Me.Txt
  loc_1D72923:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D7295B:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D72979:           Set var_20C = Me.Txt
  loc_1D7297F:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D72987:           var_210.Tag = 1
  loc_1D729B6:         Else
  loc_1D729C3:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D729D6:           If (var_110 = "Disc On Food") Then
  loc_1D729E7:             Set var_108 = Me.Txt
  loc_1D729ED:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C, var_110)
  loc_1D729F5:             var_218 = var_10C.Text
  loc_1D72A02:             var_1E8 = Val(var_110)
  loc_1D72A13:             Set var_114 = Me.Txt
  loc_1D72A19:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_150)
  loc_1D72A2E:             var_1F0 = Val(var_150)
  loc_1D72A3F:             Set var_204 = Me.Txt
  loc_1D72A45:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D72A7D:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D72A9B:             Set var_20C = Me.Txt
  loc_1D72AA1:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D72AA9:             var_210.Text = 1
  loc_1D72AFD:             For var_354 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_354 'Byte
  loc_1D72B08:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D72B10:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D72B40:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D72B48:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D72B50:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D72B72:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D72BA4:                 var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D72BB5:                 Set var_114 = Me.Txt
  loc_1D72BBB:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D72BC3:                 var_13C = var_118.Text
  loc_1D72BD8:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D72BE0:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D72C0A:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D72C12:                 var_28C = CVar(CLng(&H14)) 'Long
  loc_1D72C4F:                 var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D72C57:                 Set var_208 = Me.FGrid3
  loc_1D72C5D:                 LateIdCallSt
  loc_1D72C95:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D72C9D:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D72CC7:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D72CCF:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D72CD8:                 Set var_10C = Me.FGrid3
  loc_1D72CF9:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D72D01:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D72D1B:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D72D2B:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D72D33:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D72D3C:                 Set var_118 = Me.FGrid3
  loc_1D72D5D:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D72D65:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D72D8E:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D72D9E:                 var_304 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D72DA6:                 Set var_204 = Me.FGrid3
  loc_1D72DAC:                 LateIdCallSt
  loc_1D72DDF:               End If
  loc_1D72DE2:             Next var_354 'Byte
  loc_1D72DEB:           Else
  loc_1D72E0B:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D72E1C:               Set var_108 = Me.Txt
  loc_1D72E22:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D72E48:               Set var_114 = Me.Txt
  loc_1D72E4E:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D72E63:               var_1F0 = Val(var_118.Text)
  loc_1D72E74:               Set var_204 = Me.Txt
  loc_1D72E7A:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D72E8F:               var_218 = Val(var_1F4)
  loc_1D72EBA:               var_D4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((var_218 * var_C4) / CDbl(&H64)))) 'Double
  loc_1D72ED8:               Set var_20C = Me.Txt
  loc_1D72EDE:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_210, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D72EE6:               var_210.Tag = 1
  loc_1D72F24:               Set var_108 = Me.Txt
  loc_1D72F2A:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D72F32:               var_10C.Text = var_218
  loc_1D72F69:               For var_358 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_358 'Byte
  loc_1D72F74:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D72F96:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D72FAC:                 If (CDbl(Val(var_110)) <> CDbl(0)) Then
  loc_1D72FBD:                   Set var_108 = Me.Txt
  loc_1D72FC3:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_10C, var_110, CVar(CLng(&HF)))
  loc_1D72FCB:                   var_F4 = var_10C.Text
  loc_1D72FE0:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D72FE8:                   var_13C = CVar(CLng(&H12)) 'Long
  loc_1D72FF1:                   Set var_114 = Me.FGrid3
  loc_1D73002:                   var_150 = CStr(var_114.TextMatrix))
  loc_1D73012:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D7301A:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D7304F:                   var_1D0 = CVar(CStr(Format(CVar(((Val(var_110) * Val(var_150)) / CDbl(&H64))), "0.00"))) 'String
  loc_1D7305D:                   LateIdCallSt
  loc_1D730AB:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D730B3:                   var_1E8 = Val(var_110)
  loc_1D730C4:                   Set var_10C = Me.Txt
  loc_1D730CA:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_114, var_150, var_1E8, CVar(CLng(&HF)), CVar(CLng(var_86)), Me.FGrid3)
  loc_1D730D2:                   var_1D0 = var_114.Text
  loc_1D730E7:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D730EF:                   var_190 = CVar(CLng(&H12)) 'Long
  loc_1D73119:                   var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D7314A:                   var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D7315A:                   var_25C = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D73162:                   Set var_204 = Me.FGrid3
  loc_1D73168:                   LateIdCallSt
  loc_1D731C4:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D731D5:                   Set var_108 = Me.Txt
  loc_1D731DB:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D731E3:                   var_25C = var_10C.Text
  loc_1D731F6:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D73204:                   Set var_118 = Me.Txt
  loc_1D7320A:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D73212:                   var_204.Text = CVar(CLng(&H10))
  loc_1D73230:                 End If
  loc_1D73233:               Next var_358 'Byte
  loc_1D7323C:             Else
  loc_1D7324A:               Set var_108 = Me.Txt
  loc_1D73250:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D73276:               Set var_114 = Me.Txt
  loc_1D7327C:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D73284:               var_150 = var_118.Text
  loc_1D73291:               var_1F0 = Val(var_150)
  loc_1D732B0:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D732CE:               Set var_204 = Me.Txt
  loc_1D732D4:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D732DC:               var_208.Tag = 1
  loc_1D73314:               Set var_108 = Me.Txt
  loc_1D7331A:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D73322:               var_10C.Text = var_1F0
  loc_1D73359:               For var_35C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):           var_86 = var_35C 'Byte
  loc_1D73364:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7336C:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D73386:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D7338E:                 var_1E8 = Val(var_110)
  loc_1D7339F:                 Set var_10C = Me.Txt
  loc_1D733A5:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_114, var_150, var_1E8)
  loc_1D733AD:                 var_13C = var_114.Text
  loc_1D733C2:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D733CA:                 var_190 = CVar(CLng(&H12)) 'Long
  loc_1D733F4:                 var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D73425:                 var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D73435:                 var_25C = CVar(CStr(Format(Format(Me.FGrid3.TextMatrix), "0.00"), "0.00"))) 'String
  loc_1D7343D:                 Set var_204 = Me.FGrid3
  loc_1D73443:                 LateIdCallSt
  loc_1D7349F:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D734B0:                 Set var_108 = Me.Txt
  loc_1D734B6:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D734BE:                 var_25C = var_10C.Text
  loc_1D734D1:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D734DF:                 Set var_118 = Me.Txt
  loc_1D734E5:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D734ED:                 var_204.Text = CVar(CLng(&H10))
  loc_1D7350E:               Next var_35C 'Byte
  loc_1D73514:             End If
  loc_1D73514:           End If
  loc_1D73514:         End If
  loc_1D73517:       Else
  loc_1D73525:         Set var_108 = Me.Txt
  loc_1D7352B:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D73540:         var_1E8 = Val(var_10C.Text)
  loc_1D73551:         Set var_114 = Me.Txt
  loc_1D73557:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D7356C:         var_1F0 = Val(var_118.Text)
  loc_1D7358B:         var_D4 = CVar((var_1E8 - var_1F0)) 'Double
  loc_1D735A9:         Set var_204 = Me.Txt
  loc_1D735AF:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D735B7:         var_208.Tag = 1
  loc_1D735DD:       End If
  loc_1D735FA:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D73619:       Set var_114 = Me.Txt
  loc_1D7361F:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D73627:       var_118.Text = var_1F0
  loc_1D7364B:       Set var_108 = Me.Txt
  loc_1D73651:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C)
  loc_1D7366C:       Set var_114 = Me.Txt
  loc_1D73672:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_118)
  loc_1D73698:       Set var_108 = Me.Txt
  loc_1D7369E:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C)
  loc_1D736B1:       Set var_114 = Me.Txt
  loc_1D736B7:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118)
  loc_1D736D2:       Set var_204 = Me.Txt
  loc_1D736D8:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H29), var_208)
  loc_1D736F3:       Set var_20C = Me.Txt
  loc_1D736F9:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H32), var_210)
  loc_1D73714:       Set var_318 = Me.Txt
  loc_1D7371A:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H33), var_31C)
  loc_1D73722:       var_110 = var_31C.Text
  loc_1D7372F:       var_1F0 = Val(var_110)
  loc_1D73757:       Proc_96_76_1840070(var_10C, var_10C.Tag, var_208.Text, var_210.Text)
  loc_1D7378C:       Set var_108 = Me.Txt
  loc_1D73792:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C, var_110)
  loc_1D737AD:       Set var_114 = Me.Txt
  loc_1D737B3:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_110)
  loc_1D737BB:       var_118.Text = var_10C.Tag
  loc_1D737CE:     End If
  loc_1D737CE:     var_F4 = "Net Room Rate Excluding Tax is :"
  loc_1D737E1:     Set var_108 = Me.Txt
  loc_1D737E7:     Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D737EF:     var_F4 = var_10C.Tag
  loc_1D73816:     Set var_114 = Me.Lbl
  loc_1D7381C:     Call 0.Method_Proc_59_48_1D76B480 (&H3F, var_118)
  loc_1D73824:     var_118.Caption = CStr(var_1E8 & Trim(CVar(var_110)))
  loc_1D7384D:     Me.lblLTDet.Caption = vbNullString
  loc_1D73855:   End If
  loc_1D73858: Else
  loc_1D73864:   Set var_108 = Me.Lbl
  loc_1D7386A:   Call 0.Method_Proc_59_48_1D76B480 (&H3F, var_10C)
  loc_1D73872:   var_10C.Caption = vbNullString
  loc_1D7388C:   Set var_108 = Me.Txt
  loc_1D73892:   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D7389A:   var_110 = var_10C.Text
  loc_1D738B8:   Set var_114 = Me.Txt
  loc_1D738BE:   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D738C6:   var_150 = var_118.Text
  loc_1D738F2:   var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D73901:   var_1F4 = CStr(Format(CVar(var_110), "0.00"))
  loc_1D73910:   Set var_204 = Me.Txt
  loc_1D73916:   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D7391E:   var_208.Tag = 1
  loc_1D73983:   If (Me.Recordset15.Fields.Item("RRIncTax").Value = "Yes") Then
  loc_1D739A3:     var_10C = Me.Recordset15.Fields.Item("PLan_Package")
  loc_1D739C5:     If (var_10C.Value = "Package") Then
  loc_1D739D6:       Set var_108 = Me.Txt
  loc_1D739DC:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_10C, var_110)
  loc_1D739E4:       var_1F0 = var_10C.Text
  loc_1D73A00:       If (CDbl(Val(var_110)) >= CDbl(0)) Then
  loc_1D73A23:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D73A34:           Set var_108 = Me.Txt
  loc_1D73A3A:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D73A4F:           var_1E8 = Val(var_10C.Text)
  loc_1D73A60:           Set var_114 = Me.Txt
  loc_1D73A66:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118, var_150)
  loc_1D73A7B:           var_1F0 = Val(var_150)
  loc_1D73A8C:           Set var_204 = Me.Txt
  loc_1D73A92:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D73ACA:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D73AE8:           Set var_20C = Me.Txt
  loc_1D73AEE:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D73AF6:           var_210.Tag = 1
  loc_1D73B25:         Else
  loc_1D73B32:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D73B45:           If (var_110 = "Disc On Food") Then
  loc_1D73B56:             Set var_108 = Me.Txt
  loc_1D73B5C:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C, var_110)
  loc_1D73B64:             var_218 = var_10C.Text
  loc_1D73B71:             var_1E8 = Val(var_110)
  loc_1D73B82:             Set var_114 = Me.Txt
  loc_1D73B88:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_150)
  loc_1D73B9D:             var_1F0 = Val(var_150)
  loc_1D73BAE:             Set var_204 = Me.Txt
  loc_1D73BB4:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D73BEC:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D73C0A:             Set var_20C = Me.Txt
  loc_1D73C10:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D73C18:             var_210.Text = 1
  loc_1D73C6C:             For var_360 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_86 = var_360 'Byte
  loc_1D73C77:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D73C7F:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D73CAF:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D73CB7:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D73CBF:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D73CE1:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D73D13:                 var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D73D24:                 Set var_114 = Me.Txt
  loc_1D73D2A:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D73D32:                 var_13C = var_118.Text
  loc_1D73D47:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D73D4F:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D73D79:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D73D81:                 var_28C = CVar(CLng(&H14)) 'Long
  loc_1D73DBE:                 var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D73DC6:                 Set var_208 = Me.FGrid3
  loc_1D73DCC:                 LateIdCallSt
  loc_1D73E04:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D73E0C:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D73E36:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D73E3E:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D73E47:                 Set var_10C = Me.FGrid3
  loc_1D73E68:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D73E70:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D73E8A:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D73E9A:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D73EA2:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D73EAB:                 Set var_118 = Me.FGrid3
  loc_1D73ECC:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D73ED4:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D73EFD:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D73F0D:                 var_304 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D73F15:                 Set var_204 = Me.FGrid3
  loc_1D73F1B:                 LateIdCallSt
  loc_1D73F4E:               End If
  loc_1D73F51:             Next var_360 'Byte
  loc_1D73F5A:           Else
  loc_1D73F7A:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D73F8B:               Set var_108 = Me.Txt
  loc_1D73F91:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D73FB7:               Set var_114 = Me.Txt
  loc_1D73FBD:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D73FD2:               var_1F0 = Val(var_118.Text)
  loc_1D73FE3:               Set var_204 = Me.Txt
  loc_1D73FE9:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D7401E:               var_210 = Me.Recordset15.Fields.Item("RoomPer")
  loc_1D74037:               var_2C4 = Val(CStr(var_210.Value))
  loc_1D74062:               var_E4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((Val(var_1F4) * var_2C4) / CDbl(&H64)))) 'Double
  loc_1D74080:               Set var_318 = Me.Txt
  loc_1D74086:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_31C, CStr(Format(var_10C.TextMatrix), "0.00")), 1)
  loc_1D7408E:               var_31C.Tag = 1
  loc_1D740D4:               Set var_108 = Me.Txt
  loc_1D740DA:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D740E2:               var_10C.Text = var_2C4
  loc_1D74119:               For var_364 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_364 'Byte
  loc_1D74124:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7412C:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D7415C:                 If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D74164:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7416C:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D7418E:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D741C0:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D741D1:                   Set var_114 = Me.Txt
  loc_1D741D7:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D741DF:                   var_13C = var_118.Text
  loc_1D741F4:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D741FC:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D74226:                   var_26C = CVar(CLng(var_86)) 'Long
  loc_1D7422E:                   var_28C = CVar(CLng(&H14)) 'Long
  loc_1D7426B:                   var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D74273:                   Set var_208 = Me.FGrid3
  loc_1D74279:                   LateIdCallSt
  loc_1D742B1:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D742B9:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D742D3:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D742DB:                   var_1E8 = Val(var_110)
  loc_1D742F4:                   Set var_10C = Me.FGrid3
  loc_1D7430D:                   var_1F0 = Val(CStr(var_10C.TextMatrix)))
  loc_1D7431E:                   Set var_114 = Me.Txt
  loc_1D74324:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D7432C:                   var_13C = var_118.Text
  loc_1D74341:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D74349:                   var_1E0 = CVar(CLng(&H12)) 'Long
  loc_1D74352:                   Set var_204 = Me.FGrid3
  loc_1D74373:                   var_26C = CVar(CLng(var_86)) 'Long
  loc_1D743A8:                   var_180 = CVar(((var_1E8 * var_1F0) - ((Val(var_1F4) * Val(CStr(var_204.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D743B8:                   var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D743C0:                   Set var_208 = Me.FGrid3
  loc_1D743C6:                   LateIdCallSt
  loc_1D74428:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D74439:                   Set var_108 = Me.Txt
  loc_1D7443F:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_208)
  loc_1D74447:                   var_2AC = var_10C.Text
  loc_1D7445A:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D74468:                   Set var_118 = Me.Txt
  loc_1D7446E:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, var_1F4, 1, 1)
  loc_1D74476:                   var_204.Text = CVar(CLng(&H10))
  loc_1D74494:                 End If
  loc_1D74497:               Next var_364 'Byte
  loc_1D744A0:             Else
  loc_1D744AE:               Set var_108 = Me.Txt
  loc_1D744B4:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D744DA:               Set var_114 = Me.Txt
  loc_1D744E0:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D744F5:               var_1F0 = Val(var_118.Text)
  loc_1D74514:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D74523:               var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D74532:               Set var_204 = Me.Txt
  loc_1D74538:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D74540:               var_208.Tag = 1
  loc_1D74578:               Set var_108 = Me.Txt
  loc_1D7457E:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D74586:               var_10C.Text = var_1F0
  loc_1D745BD:               For var_368 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_368 'Byte
  loc_1D745C8:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D745D0:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D745EA:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D745F2:                 var_1E8 = Val(var_110)
  loc_1D7460B:                 Set var_10C = Me.FGrid3
  loc_1D74624:                 var_1F0 = Val(CStr(var_10C.TextMatrix)))
  loc_1D74635:                 Set var_114 = Me.Txt
  loc_1D7463B:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_1D74658:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D74660:                 var_1E0 = CVar(CLng(&H12)) 'Long
  loc_1D74669:                 Set var_204 = Me.FGrid3
  loc_1D7468A:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D746BF:                 var_180 = CVar(((var_118.Text * var_1F0) - ((Val(var_1F4) * Val(CStr(var_204.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D746C6:                 var_25C = Format(CVar(((((var_118.Text * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00")
  loc_1D746CF:                 var_2AC = CVar(CStr(var_25C)) 'String
  loc_1D746D7:                 Set var_208 = Me.FGrid3
  loc_1D746DD:                 LateIdCallSt
  loc_1D7473F:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D74750:                 Set var_108 = Me.Txt
  loc_1D74756:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_208)
  loc_1D7475E:                 var_2AC = var_10C.Text
  loc_1D74771:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D7477F:                 Set var_118 = Me.Txt
  loc_1D74785:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, var_1F4, 1, 1)
  loc_1D7478D:                 var_204.Text = CVar(CLng(&H10))
  loc_1D747AE:               Next var_368 'Byte
  loc_1D747B4:             End If
  loc_1D747B4:           End If
  loc_1D747B4:         End If
  loc_1D747B7:       Else
  loc_1D747C5:         Set var_108 = Me.Txt
  loc_1D747CB:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D747D3:         var_110 = var_10C.Text
  loc_1D747F1:         Set var_114 = Me.Txt
  loc_1D747F7:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D747FF:         var_150 = var_118.Text
  loc_1D7482B:         var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D74849:         Set var_204 = Me.Txt
  loc_1D7484F:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D74857:         var_208.Tag = 1
  loc_1D7487D:       End If
  loc_1D74891:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D74899:       var_1F0 = var_118.Text
  loc_1D748A6:       var_1E8 = Val(var_150)
  loc_1D748BD:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D748EE:       If (CDbl((Val(var_110) / var_10C.Tag)) > CDbl(1000)) Then
  loc_1D7490C:         var_150 = "Select * from taxStru where Code='" & MemVar_1F92070 & "TR'"
  loc_1D74915:         unk_52DB4B.Execute var_150, Me.FGrid3.TextMatrix), -1
  loc_1D74920:         Set var_94 = Me.Txt
  loc_1D74947:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1D74957:           var_12C = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1D74979:           var_10C = Me.Recordset15.Fields.Item("Code")
  loc_1D74996:           var_110 = CStr(var_12C & var_10C.Value & "' Group By TaxStru.Nature ")
  loc_1D749A0:           unk_52DB4B.Execute var_110, CVar(((((var_10C.Tag * var_1F0) * Val(CStr(Format(Me.FGrid3.TextMatrix), "0.00")))) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), -1
  loc_1D749AB:           Set var_98 = Me.Txt
  loc_1D749D9:           If (var_98.RecordCount > 0) Then
  loc_1D749EA:             Set var_108 = Me.Txt
  loc_1D749F0:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D749F8:             var_114 = var_10C.Tag
  loc_1D74A05:             var_1E8 = Val(var_110)
  loc_1D74A22:             var_118 = var_98.Fields.Item("Rate")
  loc_1D74A3D:             Set var_204 = Me.Txt
  loc_1D74A43:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_208, var_150)
  loc_1D74A58:             var_1F0 = Val(var_150)
  loc_1D74A6F:             var_E4 = (100 + var_118.Value)
  loc_1D74A73:             var_104 = (CVar(var_208.Text) / 100 & var_10C.Value)
  loc_1D74A7C:             var_180 = (var_104 * 100)
  loc_1D74A9E:             var_A0 = CSng(Round((var_180 / CVar(var_1F0)), 2))
  loc_1D74AE7:             var_10C = Me.Recordset15.Fields.Item("Limit")
  loc_1D74B03:             If (CVar(var_A0) < var_10C.Value) Then
  loc_1D74B1F:               MsgBox("Invalid Package Amount", 0, CVar(var_A0) & var_10C.Value, var_104, var_180)
  loc_1D74B34:               Set var_94 = Nothing
  loc_1D74B3C:               Set var_98 = Nothing
  loc_1D74B3F:               Exit Sub
  loc_1D74B40:             End If
  loc_1D74B53:             Set var_108 = Me.Txt
  loc_1D74B59:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, CStr(var_A0), var_A0)
  loc_1D74B61:             var_10C.Text = var_1F0
  loc_1D74B89:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C, CStr(var_A0))
  loc_1D74B91:             var_10C.Text = Me.Txt
  loc_1D74BA0:           End If
  loc_1D74BA0:         End If
  loc_1D74BA3:       Else
  loc_1D74BB1:         Set var_108 = Me.Txt
  loc_1D74BB7:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C)
  loc_1D74BBF:         var_110 = var_10C.Tag
  loc_1D74BCC:         var_1E8 = Val(var_110)
  loc_1D74BDD:         Set var_114 = Me.Txt
  loc_1D74BE3:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D74C35:         Set var_204 = Me.Txt
  loc_1D74C3B:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D74C43:         var_208.Text = 1
  loc_1D74C77:         Set var_108 = Me.Txt
  loc_1D74C7D:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D74C85:         var_1F0 = var_10C.Tag
  loc_1D74C92:         var_1E8 = Val(var_110)
  loc_1D74CA3:         Set var_114 = Me.Txt
  loc_1D74CA9:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D74CEC:         var_1F4 = CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00"))
  loc_1D74CFB:         Set var_204 = Me.Txt
  loc_1D74D01:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_208, var_1F4, 1)
  loc_1D74D09:         var_208.Text = 1
  loc_1D74D2F:       End If
  loc_1D74D32:     Else
  loc_1D74D40:       Set var_108 = Me.Txt
  loc_1D74D46:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_10C, var_110)
  loc_1D74D4E:       var_1F0 = var_10C.Text
  loc_1D74D6A:       If (CDbl(Val(var_110)) >= CDbl(0)) Then
  loc_1D74D8D:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D74D9E:           Set var_108 = Me.Txt
  loc_1D74DA4:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D74DB9:           var_1E8 = Val(var_10C.Text)
  loc_1D74DCA:           Set var_114 = Me.Txt
  loc_1D74DD0:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118, var_150)
  loc_1D74DE5:           var_1F0 = Val(var_150)
  loc_1D74DF6:           Set var_204 = Me.Txt
  loc_1D74DFC:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D74E34:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D74E52:           Set var_20C = Me.Txt
  loc_1D74E58:           Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D74E60:           var_210.Tag = 1
  loc_1D74E8F:         Else
  loc_1D74E9C:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D74EAF:           If (var_110 = "Disc On Food") Then
  loc_1D74EC0:             Set var_108 = Me.Txt
  loc_1D74EC6:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C, var_110)
  loc_1D74ECE:             var_218 = var_10C.Text
  loc_1D74EDB:             var_1E8 = Val(var_110)
  loc_1D74EEC:             Set var_114 = Me.Txt
  loc_1D74EF2:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_150)
  loc_1D74F07:             var_1F0 = Val(var_150)
  loc_1D74F18:             Set var_204 = Me.Txt
  loc_1D74F1E:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D74F56:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D74F74:             Set var_20C = Me.Txt
  loc_1D74F7A:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D74F82:             var_210.Text = 1
  loc_1D74FD6:             For var_36C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_36C 'Byte
  loc_1D74FE1:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D74FE9:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D75019:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D75021:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D75029:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D7504B:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D7507D:                 var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D7508E:                 Set var_114 = Me.Txt
  loc_1D75094:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D7509C:                 var_13C = var_118.Text
  loc_1D750B1:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D750B9:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D750E3:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D750EB:                 var_28C = CVar(CLng(&H14)) 'Long
  loc_1D75128:                 var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D75130:                 Set var_208 = Me.FGrid3
  loc_1D75136:                 LateIdCallSt
  loc_1D7516E:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D75176:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D751A0:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D751A8:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D751B1:                 Set var_10C = Me.FGrid3
  loc_1D751D2:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D751DA:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D751F4:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D75204:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D7520C:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D75215:                 Set var_118 = Me.FGrid3
  loc_1D75236:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D7523E:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D75267:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D75277:                 var_304 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D7527F:                 Set var_204 = Me.FGrid3
  loc_1D75285:                 LateIdCallSt
  loc_1D752B8:               End If
  loc_1D752BB:             Next var_36C 'Byte
  loc_1D752C4:           Else
  loc_1D752E4:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D752F5:               Set var_108 = Me.Txt
  loc_1D752FB:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D75321:               Set var_114 = Me.Txt
  loc_1D75327:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D7533C:               var_1F0 = Val(var_118.Text)
  loc_1D7534D:               Set var_204 = Me.Txt
  loc_1D75353:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_208, var_1F4)
  loc_1D75368:               var_218 = Val(var_1F4)
  loc_1D75393:               var_D4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((var_218 * var_C4) / CDbl(&H64)))) 'Double
  loc_1D753B1:               Set var_20C = Me.Txt
  loc_1D753B7:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_210, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D753BF:               var_210.Tag = 1
  loc_1D753FD:               Set var_108 = Me.Txt
  loc_1D75403:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D7540B:               var_10C.Text = var_218
  loc_1D75442:               For var_370 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_370 'Byte
  loc_1D7544D:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7546F:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D75485:                 If (CDbl(Val(var_110)) <> CDbl(0)) Then
  loc_1D75496:                   Set var_108 = Me.Txt
  loc_1D7549C:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_10C, var_110, CVar(CLng(&HF)))
  loc_1D754A4:                   var_F4 = var_10C.Text
  loc_1D754B9:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D754C1:                   var_13C = CVar(CLng(&H12)) 'Long
  loc_1D754CA:                   Set var_114 = Me.FGrid3
  loc_1D754DB:                   var_150 = CStr(var_114.TextMatrix))
  loc_1D754EB:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D754F3:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D75528:                   var_1D0 = CVar(CStr(Format(CVar(((Val(var_110) * Val(var_150)) / CDbl(&H64))), "0.00"))) 'String
  loc_1D75536:                   LateIdCallSt
  loc_1D75584:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D7558C:                   var_1E8 = Val(var_110)
  loc_1D7559D:                   Set var_10C = Me.Txt
  loc_1D755A3:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_114, var_150, var_1E8, CVar(CLng(&HF)), CVar(CLng(var_86)), Me.FGrid3)
  loc_1D755AB:                   var_1D0 = var_114.Text
  loc_1D755C0:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D755C8:                   var_190 = CVar(CLng(&H12)) 'Long
  loc_1D755F2:                   var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D75623:                   var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D75633:                   var_25C = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D7563B:                   Set var_204 = Me.FGrid3
  loc_1D75641:                   LateIdCallSt
  loc_1D7569D:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D756AE:                   Set var_108 = Me.Txt
  loc_1D756B4:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D756BC:                   var_25C = var_10C.Text
  loc_1D756CF:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D756DD:                   Set var_118 = Me.Txt
  loc_1D756E3:                   Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D756EB:                   var_204.Text = CVar(CLng(&H10))
  loc_1D75709:                 End If
  loc_1D7570C:               Next var_370 'Byte
  loc_1D75715:             Else
  loc_1D75723:               Set var_108 = Me.Txt
  loc_1D75729:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D7574F:               Set var_114 = Me.Txt
  loc_1D75755:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D7575D:               var_150 = var_118.Text
  loc_1D7576A:               var_1F0 = Val(var_150)
  loc_1D75789:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D757A7:               Set var_204 = Me.Txt
  loc_1D757AD:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D757B5:               var_208.Tag = 1
  loc_1D757ED:               Set var_108 = Me.Txt
  loc_1D757F3:               Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, CStr(0))
  loc_1D757FB:               var_10C.Text = var_1F0
  loc_1D75832:               For var_374 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):           var_86 = var_374 'Byte
  loc_1D7583D:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D75845:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D7585F:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D75867:                 var_1E8 = Val(var_110)
  loc_1D75878:                 Set var_10C = Me.Txt
  loc_1D7587E:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2D), var_114, var_150, var_1E8)
  loc_1D75886:                 var_13C = var_114.Text
  loc_1D7589B:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D758A3:                 var_190 = CVar(CLng(&H12)) 'Long
  loc_1D758CD:                 var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D758E9:                 var_180 = "0.00"
  loc_1D758FE:                 var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D7590E:                 var_25C = CVar(CStr(Format(Format(Me.FGrid3.TextMatrix), "0.00"), var_180))) 'String
  loc_1D75916:                 Set var_204 = Me.FGrid3
  loc_1D7591C:                 LateIdCallSt
  loc_1D75978:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D75989:                 Set var_108 = Me.Txt
  loc_1D7598F:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D75997:                 var_25C = var_10C.Text
  loc_1D759AA:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D759B8:                 Set var_118 = Me.Txt
  loc_1D759BE:                 Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D759C6:                 var_204.Text = CVar(CLng(&H10))
  loc_1D759E7:               Next var_374 'Byte
  loc_1D759ED:             End If
  loc_1D759ED:           End If
  loc_1D759ED:         End If
  loc_1D759F0:       Else
  loc_1D759FE:         Set var_108 = Me.Txt
  loc_1D75A04:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H19), var_10C)
  loc_1D75A19:         var_1E8 = Val(var_10C.Text)
  loc_1D75A2A:         Set var_114 = Me.Txt
  loc_1D75A30:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H30), var_118)
  loc_1D75A45:         var_1F0 = Val(var_118.Text)
  loc_1D75A64:         var_D4 = CVar((var_1E8 - var_1F0)) 'Double
  loc_1D75A73:         var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D75A82:         Set var_204 = Me.Txt
  loc_1D75A88:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D75A90:         var_208.Tag = 1
  loc_1D75AB6:       End If
  loc_1D75AD3:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D75AF2:       Set var_114 = Me.Txt
  loc_1D75AF8:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D75B00:       var_118.Text = var_1F0
  loc_1D75B24:       Set var_108 = Me.Txt
  loc_1D75B2A:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C)
  loc_1D75B45:       Set var_114 = Me.Txt
  loc_1D75B4B:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_118)
  loc_1D75B71:       Set var_108 = Me.Txt
  loc_1D75B77:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C)
  loc_1D75B8A:       Set var_114 = Me.Txt
  loc_1D75B90:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H26), var_118)
  loc_1D75BAB:       Set var_204 = Me.Txt
  loc_1D75BB1:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H29), var_208)
  loc_1D75BB9:       var_1F8 = var_208.Text
  loc_1D75BCC:       Set var_20C = Me.Txt
  loc_1D75BD2:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H32), var_210)
  loc_1D75BED:       Set var_318 = Me.Txt
  loc_1D75BF3:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H33), var_31C)
  loc_1D75BFB:       var_110 = var_31C.Text
  loc_1D75C08:       var_1F0 = Val(var_110)
  loc_1D75C30:       Proc_96_76_1840070(var_10C, var_10C.Tag, var_1F8, var_210.Text)
  loc_1D75C65:       Set var_108 = Me.Txt
  loc_1D75C6B:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_10C, var_110)
  loc_1D75C86:       Set var_114 = Me.Txt
  loc_1D75C8C:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_110)
  loc_1D75C94:       var_118.Text = var_10C.Tag
  loc_1D75CA7:     End If
  loc_1D75CA7:     var_F4 = "Net Room Rate including Tax is :"
  loc_1D75CBA:     Set var_108 = Me.Txt
  loc_1D75CC0:     Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D75CC8:     var_F4 = var_10C.Tag
  loc_1D75CEF:     Set var_114 = Me.Lbl
  loc_1D75CF5:     Call 0.Method_Proc_59_48_1D76B480 (&H3F, var_118)
  loc_1D75CFD:     var_118.Caption = CStr(var_1E8 & Trim(CVar(var_110)))
  loc_1D75D26:     Me.lblLTDet.Caption = vbNullString
  loc_1D75D31:   Else
  loc_1D75D4E:     var_10C = Me.Recordset15.Fields.Item("PLan_Package")
  loc_1D75D56:     var_D4 = var_10C.Value
  loc_1D75D70:     If (var_D4 = "Package") Then
  loc_1D75D87:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118)
  loc_1D75DB3:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C)
  loc_1D75DE4:       If (CDbl((Val(var_10C.Tag) / Val(var_118.Text))) >= CDbl(1000)) Then
  loc_1D75E02:         var_150 = "Select * from taxStru where Code='" & MemVar_1F92078 & "TR'"
  loc_1D75E0B:         unk_52DB4B.Execute var_150, var_D4, -1
  loc_1D75E16:         Set var_94 = Me.Txt
  loc_1D75E3D:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1D75E4D:           var_12C = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1D75E6F:           var_10C = Me.Recordset15.Fields.Item("Code")
  loc_1D75E8C:           var_110 = CStr(var_12C & var_10C.Value & "' Group By TaxStru.Nature ")
  loc_1D75E96:           unk_52DB4B.Execute var_110, var_180, -1
  loc_1D75EA1:           Set var_98 = Me.Txt
  loc_1D75ECF:           If (var_98.RecordCount > 0) Then
  loc_1D75EE0:             Set var_108 = Me.Txt
  loc_1D75EE6:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D75EEE:             var_114 = var_10C.Tag
  loc_1D75EFB:             var_1E8 = Val(var_110)
  loc_1D75F0C:             Set var_114 = Me.Txt
  loc_1D75F12:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D75F27:             var_1F0 = Val(var_150)
  loc_1D75F38:             Set var_204 = Me.Txt
  loc_1D75F3E:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, var_1F4)
  loc_1D75F53:             var_218 = Val(var_1F4)
  loc_1D75F78:             var_104 = var_98.Fields.Item("Rate").Value
  loc_1D75F8B:             Set var_318 = Me.Txt
  loc_1D75F91:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_31C, var_1F8)
  loc_1D75FBC:             var_E4 = Round(CVar((var_118.Text / var_208.Tag)), 2)
  loc_1D75FD7:             var_180 = (CVar((var_31C.Text / CDbl(&H64))) * var_104)
  loc_1D75FF8:             var_304 = (var_E4 + Round((var_180 / CVar(Val(var_1F8))), 2))
  loc_1D75FFD:             var_A0 = CSng(var_304)
  loc_1D76056:             var_10C = Me.Recordset15.Fields.Item("Limit")
  loc_1D76072:             If (CVar(var_A0) < var_10C.Value) Then
  loc_1D7608E:               MsgBox("Invalid Package Amount", 0, var_E4, var_104, var_180)
  loc_1D760A3:               Set var_94 = Nothing
  loc_1D760AB:               Set var_98 = Nothing
  loc_1D760AE:               Exit Sub
  loc_1D760AF:             End If
  loc_1D760AF:           End If
  loc_1D760AF:         End If
  loc_1D760BD:         Set var_108 = Me.Txt
  loc_1D760C3:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110, var_A0)
  loc_1D760CB:         var_2C4 = var_10C.Tag
  loc_1D760D8:         var_1E8 = Val(var_110)
  loc_1D760E9:         Set var_114 = Me.Txt
  loc_1D760EF:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D76141:         Set var_204 = Me.Txt
  loc_1D76147:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D7614F:         var_208.Text = 1
  loc_1D76183:         Set var_108 = Me.Txt
  loc_1D76189:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D76191:         var_1F0 = var_10C.Tag
  loc_1D7619E:         var_1E8 = Val(var_110)
  loc_1D761AF:         Set var_114 = Me.Txt
  loc_1D761B5:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D76207:         Set var_204 = Me.Txt
  loc_1D7620D:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_208, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D76215:         var_208.Text = 1
  loc_1D76270:         var_180 = Trim(CVar(CStr(Format(var_A0, "0.00"))))
  loc_1D7627C:         var_110 = CStr(1 & var_180)
  loc_1D76289:         Set var_108 = Me.Lbl
  loc_1D7628F:         Call 0.Method_Proc_59_48_1D76B480 (&H3F, var_10C, var_110, 1)
  loc_1D76297:         var_10C.Caption = "Net Room Rate including Tax is :"
  loc_1D762B8:       Else
  loc_1D762C6:         Set var_108 = Me.Txt
  loc_1D762CC:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D762D4:         var_1F0 = var_10C.Tag
  loc_1D762E1:         var_1E8 = Val(var_110)
  loc_1D762F2:         Set var_114 = Me.Txt
  loc_1D762F8:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D7634A:         Set var_204 = Me.Txt
  loc_1D76350:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D76358:         var_208.Text = 1
  loc_1D7638C:         Set var_108 = Me.Txt
  loc_1D76392:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D7639A:         var_1F0 = var_10C.Tag
  loc_1D763A7:         var_1E8 = Val(var_110)
  loc_1D763B8:         Set var_114 = Me.Txt
  loc_1D763BE:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H31), var_118, var_150)
  loc_1D763D3:         var_1F0 = Val(var_150)
  loc_1D76410:         Set var_204 = Me.Txt
  loc_1D76416:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_208, CStr(Format(CVar((var_118.Text / var_1F0)), "0.00")), 1)
  loc_1D7641E:         var_208.Text = 1
  loc_1D7645A:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, "Net Room Rate including Tax is :")
  loc_1D76462:         var_D4 = CVar(var_10C) 'Address
  loc_1D76482:         Set var_114 = Me.Lbl
  loc_1D76488:         Call 0.Method_Proc_59_48_1D76B480 (&H3F, var_118, CStr(var_1F0 & Trim(var_D4)))
  loc_1D76490:         var_118.Caption = Me.Txt
  loc_1D764AA:       End If
  loc_1D764AD:     Else
  loc_1D764C1:       Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C)
  loc_1D764E6:       If (CDbl(Val(var_10C.Tag)) >= CDbl(1000)) Then
  loc_1D76504:         var_150 = "Select * from taxStru where Code='" & MemVar_1F92070 & "TR'"
  loc_1D7650D:         unk_52DB4B.Execute var_150, var_D4, -1
  loc_1D76518:         Set var_94 = Me.Txt
  loc_1D7653F:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1D7654F:           var_12C = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1D76571:           var_10C = Me.Recordset15.Fields.Item("Code")
  loc_1D7658E:           var_110 = CStr(var_12C & var_10C.Value & "' Group By TaxStru.Nature ")
  loc_1D76598:           unk_52DB4B.Execute var_110, var_180, -1
  loc_1D765A3:           Set var_98 = var_114
  loc_1D765D1:           If (var_98.RecordCount > 0) Then
  loc_1D765E2:             Set var_108 = Me.Txt
  loc_1D765E8:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D765F0:             var_114 = var_10C.Tag
  loc_1D765FD:             var_1E8 = Val(var_110)
  loc_1D7660E:             Set var_114 = Me.Txt
  loc_1D76614:             Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, var_150)
  loc_1D7664E:             var_104 = var_98.Fields.Item("Rate").Value
  loc_1D76662:             var_E4 = Round(CVar(var_118.Tag), 2)
  loc_1D7667D:             var_180 = (CVar((Val(var_150) / CDbl(&H64))) * var_104)
  loc_1D76693:             var_2AC = (var_E4 + Round(var_180, 2))
  loc_1D76698:             var_A0 = CSng(Round((var_180 / CVar(Val(var_1F8))), 2))
  loc_1D766E5:             var_10C = Me.Recordset15.Fields.Item("Limit")
  loc_1D76701:             If (CVar(var_A0) < var_10C.Value) Then
  loc_1D7671D:               MsgBox("Invalid Package Amount", 0, var_E4, var_104, var_180)
  loc_1D76732:               Set var_94 = Nothing
  loc_1D7673A:               Set var_98 = Nothing
  loc_1D7673D:               Exit Sub
  loc_1D7673E:             End If
  loc_1D7673E:           End If
  loc_1D7673E:         End If
  loc_1D7674C:         Set var_108 = Me.Txt
  loc_1D76752:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110, var_A0)
  loc_1D7675A:         var_1F0 = var_10C.Tag
  loc_1D767A0:         Set var_114 = Me.Txt
  loc_1D767A6:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, CStr(Format(CVar(Val(var_110)), "0.00")), 1)
  loc_1D767AE:         var_118.Text = 1
  loc_1D767DC:         Set var_108 = Me.Txt
  loc_1D767E2:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D767EA:         var_1E8 = var_10C.Tag
  loc_1D76830:         Set var_114 = Me.Txt
  loc_1D76836:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_118, CStr(Format(CVar(Val(var_110)), "0.00")), 1)
  loc_1D7683E:         var_118.Text = 1
  loc_1D7689F:         var_110 = CStr(1 & Trim(CVar(CStr(Format(var_A0, "0.00")))))
  loc_1D768AC:         Set var_108 = Me.Lbl
  loc_1D768B2:         Call 0.Method_Proc_59_48_1D76B480 (&H3F, var_10C, var_110, 1)
  loc_1D768BA:         var_10C.Caption = "Net Room Rate including Tax is :"
  loc_1D768E6:         Set var_108 = Me.Txt
  loc_1D768EC:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D768F4:         var_1E8 = var_10C.Tag
  loc_1D7691E:         var_118 = var_98.Fields.Item("Rate")
  loc_1D76971:         Me.lblLTDet.Caption = "Plan Amount Should Increase @ " & CStr(Round((CVar((Val(var_110) / CDbl(&H64))) * var_118.Value), 2)) & " Per Day"
  loc_1D7699C:       Else
  loc_1D769AA:         Set var_108 = Me.Txt
  loc_1D769B0:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D769B8:         var_1E8 = var_10C.Tag
  loc_1D769FE:         Set var_114 = Me.Txt
  loc_1D76A04:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_118, CStr(Format(CVar(Val(var_110)), "0.00")), 1)
  loc_1D76A0C:         var_118.Text = 1
  loc_1D76A3A:         Set var_108 = Me.Txt
  loc_1D76A40:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, var_110)
  loc_1D76A48:         var_1E8 = var_10C.Tag
  loc_1D76A55:         var_1E8 = Val(var_110)
  loc_1D76A8E:         Set var_114 = Me.Txt
  loc_1D76A94:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H10), var_118, CStr(Format(CVar(var_1E8), "0.00")), 1)
  loc_1D76A9C:         var_118.Text = 1
  loc_1D76AD2:         Call 0.Method_Proc_59_48_1D76B480 (CInt(&H2E), var_10C, "Net Room Rate including Tax is :")
  loc_1D76AFA:         Set var_114 = Me.Lbl
  loc_1D76B00:         Call 0.Method_Proc_59_48_1D76B480 (&H3F, var_118, CStr(var_1E8 & Trim(CVar(var_10C))))
  loc_1D76B08:         var_118.Caption = Me.Txt
  loc_1D76B2F:         Me.lblLTDet.Caption = vbNullString
  loc_1D76B37:       End If
  loc_1D76B37:     End If
  loc_1D76B37:   End If
  loc_1D76B37: End If
  loc_1D76B3C: Set var_94 = Nothing
  loc_1D76B44: Set var_98 = Nothing
  loc_1D76B47: Exit Sub
End Sub

Public Sub Proc_59_49_FB2124(arg_C, arg_10, arg_14, arg_18) 'FB2124
  'Data Table: 52DB2C
  Dim var_C0 As Variant
  Dim var_9C As Double
  Dim var_94 As Double
  Dim arg_C As Double
  loc_FB1F87: var_A0 = arg_10
  loc_FB1F92: If Not (var_A0 = "<=") Then
  loc_FB1F9D:   If Not (var_A0 = "<") Then
  loc_FB1FA8:     If (var_A0 = "=") Then
  loc_FB1FAB:     End If
  loc_FB1FAB:   End If
  loc_FB1FCF:   var_C0 = CVar(((arg_14 * CDbl(&H64)) / (CDbl(&H64) + arg_24))) 'Double
  loc_FB1FDF:   var_9C = CSng(Format(var_C0, "0.00"))
  loc_FB1FF3:   If (arg_10 = "<=") Then
  loc_FB1FFD:     If (arg_18 <= var_9C) Then
  loc_FB2007:       var_94 = (arg_14 - var_9C)
  loc_FB200D:     Else
  loc_FB2010:       arg_C = arg_14
  loc_FB2013:     End If
  loc_FB2016:   Else
  loc_FB201E:     If (arg_10 = "<") Then
  loc_FB2028:       If (arg_18 < var_9C) Then
  loc_FB2032:         var_94 = (arg_14 - var_9C)
  loc_FB2038:       Else
  loc_FB203B:         arg_C = arg_14
  loc_FB203E:       End If
  loc_FB2041:     Else
  loc_FB2049:       If (arg_10 = "=") Then
  loc_FB2053:         If (arg_18 = var_9C) Then
  loc_FB205D:           var_94 = (arg_14 - var_9C)
  loc_FB2063:         Else
  loc_FB2066:           arg_C = arg_14
  loc_FB2069:         End If
  loc_FB2069:       End If
  loc_FB2069:     End If
  loc_FB2069:   End If
  loc_FB206C: Else
  loc_FB2074:   If Not (var_A0 = ">=") Then
  loc_FB207F:     If (var_A0 = ">") Then
  loc_FB2082:     End If
  loc_FB20A6:     var_C0 = CVar(((arg_14 * CDbl(&H64)) / (CDbl(&H64) + arg_24))) 'Double
  loc_FB20B6:     var_9C = CSng(Format(var_C0, "0.00"))
  loc_FB20CA:     If (arg_10 = ">=") Then
  loc_FB20D4:       If (arg_18 >= var_9C) Then
  loc_FB20DE:         var_94 = (arg_14 - var_9C)
  loc_FB20E4:       Else
  loc_FB20E7:         arg_C = arg_14
  loc_FB20EA:       End If
  loc_FB20ED:     Else
  loc_FB20F5:       If (arg_10 = ">") Then
  loc_FB20FF:         If (arg_18 > var_9C) Then
  loc_FB2109:           var_94 = (arg_14 - var_9C)
  loc_FB210F:         Else
  loc_FB2112:           arg_C = arg_14
  loc_FB2115:         End If
  loc_FB2115:       End If
  loc_FB2115:     End If
  loc_FB2115:   End If
  loc_FB2115: End If
  loc_FB211B: Proc_59_49_FB2124 = var_94
  loc_FB2121: WMemLdUI1
End Sub

Public Sub Proc_59_50_14EB20C
  'Data Table: 52DB2C
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_52DB4B As Connection15
  Dim var_128 As Variant
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_130 As Variant
  Dim var_114 As Variant
  Dim var_148 As Variant
  Dim var_160 As Double
  Dim var_158 As String
  Dim var_154 As TextBox
  Dim var_C0 As Variant
  Dim var_144 As Variant
  Dim var_124 As Variant
  Dim var_150 As MSHFlexGrid
  Dim var_188 As Variant
  loc_14EA41D: var_D0 = "SELECT plan1.PlanCode as Code, Plan1.Amount, Plan1.NetPackageAmount,plan1.Chrgcode, FixedCharge.Name,plan1.Revcode, plan1.TaxStru, plan1.TaxInc, plan1.PrintOption,plan1.PostingMethod, plan1.ChargeType, plan1.FlatRate,plan1.Adult, plan1.Child, plan1.ExtraAdult, plan1.ExtraChild,Plan1.App_Date , Plan1.PlanPer, PlanMast.PercentApp,Plan1.NoofDays,Plan1.DiscAmt,Plan1.FixRate,PlanMast.DiscAppOn,PlanMast.Adults FROM (PlanMast inner join PlanDetails as plan1 on Planmast.Code=Plan1.planCode) INNER JOIN FixedCharge ON plan1.Chrgcode = FixedCharge.Code  where Plan1.Docid='"
  loc_14EA435: var_E0 = -1 & Trim(CVar(var_124(var_D0))) 
  loc_14EA44C: unk_52DB4B.Execute CStr(var_E0 & "'"), var_128, 
  loc_14EA457: Set var_88 = var_128
  loc_14EA480: Me.FGrid3.Rows = 1
  loc_14EA48C: var_8A = CByte(1) 'Byte
  loc_14EA490: var_D0 = vbNullString
  loc_14EA49A: Set var_128 = Me.FGrid3
  loc_14EA4BE: Me.FGrid3.FixedRows = 1
  loc_14EA4D9: Me.FGrid3.Row = 1
  loc_14EA4F5: If (var_88.RecordCount > 0) Then
  loc_14EA520:   var_104 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiscAppOn")), FGrid3.DispID_10000)
  loc_14EA52D:   Me.LblDiscAppOn.Caption = var_104
  loc_14EA559:   var_130 = var_88.Fields.Item("PercentApp")
  loc_14EA57B:   If (var_130.Value = "Yes") Then
  loc_14EA581:     var_D0 = CVar(CLng(&H12)) 'Long
  loc_14EA586:     var_114 = &H4B0
  loc_14EA593:     Set var_128 = Me.FGrid3
  loc_14EA599:     LateIdCallSt
  loc_14EA5A7:   Else
  loc_14EA5AA:     var_D0 = CVar(CLng(&H12)) 'Long
  loc_14EA5AF:     var_114 = 0
  loc_14EA5BC:     Set var_128 = Me.FGrid3
  loc_14EA5C2:     LateIdCallSt
  loc_14EA5CD:   End If
  loc_14EA5D0: Else
  loc_14EA5D3:   var_D0 = CVar(CLng(&H12)) 'Long
  loc_14EA5D8:   var_114 = 0
  loc_14EA5E5:   Set var_128 = Me.FGrid3
  loc_14EA5EB:   LateIdCallSt
  loc_14EA5F6: End If
  loc_14EA60A: Call 0.Method_Proc_59_50_14EB20C0 (CInt(&HD), var_130, var_104, Me.Txt, var_114, var_D0, Me.Txt)
  loc_14EA661: If (CVar(Val(var_104)) > var_88.Fields.Item("Adults").Value) Then
  loc_14EA66A:   var_D0 = "Adults"
  loc_14EA697:   var_160 = Val(CStr(var_88.Fields.Item(var_D0).Value))
  loc_14EA6A8:   Set var_128 = Me.Txt
  loc_14EA6AE:   Call 0.Method_Proc_59_50_14EB20C0 (CInt(&HD), var_130, var_104, var_160, var_D0)
  loc_14EA6B6:   var_128 = var_130.Text
  loc_14EA6C9:   var_158 = CStr((Val(var_104) - var_160))
  loc_14EA6D7:   Set var_150 = Me.Txt
  loc_14EA6DD:   Call 0.Method_Proc_59_50_14EB20C0 (CInt(&H1F), var_154, var_158)
  loc_14EA6E5:   var_154.Text = var_130.Text
  loc_14EA708:   var_D0 = CVar(CLng(8)) 'Long
  loc_14EA70D:   var_114 = &H3E8
  loc_14EA71A:   Set var_128 = Me.FGrid3
  loc_14EA720:   LateIdCallSt
  loc_14EA72E:   var_D0 = CVar(CLng(9)) 'Long
  loc_14EA733:   var_114 = &H3E8
  loc_14EA740:   Set var_128 = Me.FGrid3
  loc_14EA746:   LateIdCallSt
  loc_14EA751:   ' Referenced from: 14EB1FE
  loc_14EA751: End If
  loc_14EA760: If Not(var_88.EOF) Then
  loc_14EA767:   Set var_168 = Me.FGrid3
  loc_14EA7A3:   var_D0 = CVar((CLng(Me.FGrid3.Row) - 1)) 'Long
  loc_14EA7C5:   var_104 = CStr(Me.FGrid3.TextMatrix))
  loc_14EA7D3:   var_100 = CVar(CStr((Val(var_104) + CDbl(1)))) 'String
  loc_14EA7DA:   LateIdCallSt
  loc_14EA81C:   var_D0 = "Name"
  loc_14EA841:   var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_D0)), CVar(CLng(1)), CVar(CLng(Me.FGrid3.Row)), var_168, var_E0 & "'", CVar(CLng(0)), var_D0)) 'String
  loc_14EA848:   LateIdCallSt
  loc_14EA8A8:   var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(Me.FGrid3.Row)), var_168, var_E0, CVar(CLng(0)))) 'String
  loc_14EA8AF:   LateIdCallSt
  loc_14EA8FE:   var_130 = var_88.Fields.Item("TaxStru")
  loc_14EA90F:   var_E0 = CVar(Proc_6_38_E68A98(CVar(var_130), CVar(CLng(3)), CVar(CLng(Me.FGrid3.Row)), var_168, var_E0)) 'String
  loc_14EA916:   LateIdCallSt
  loc_14EA95C:   Set var_128 = Me.Txt
  loc_14EA962:   Call 0.Method_Proc_59_50_14EB20C0 (CInt(&H18), var_130, var_104, CVar(CLng(4)), CVar(CLng(Me.FGrid3.Row)), var_168)
  loc_14EA96A:   var_E0 = var_130.Tag
  loc_14EA972:   var_C0 = CVar(var_104) 'String
  loc_14EA979:   LateIdCallSt
  loc_14EA99B:   var_C0 = Me.FGrid3.Row
  loc_14EA9E0:   LateIdCallSt
  loc_14EAA1E:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("Adult")), var_168, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_C0)), var_168, var_C0)), CVar(CLng(Me.FGrid3.Row)))
  loc_14EAA6E:   LateIdCallSt
  loc_14EAAD2:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("Child")), CVar(CLng(7)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(Format(var_C0, "0.00"))), 1)
  loc_14EAAE2:   LateIdCallSt
  loc_14EAB42:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("ExtraAdult")), CVar(CLng(8)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(var_C0)), 1)
  loc_14EAB52:   LateIdCallSt
  loc_14EABB2:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("ExtraChild")), CVar(CLng(9)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(var_C0)))
  loc_14EABC2:   LateIdCallSt
  loc_14EAC22:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("NoofDays")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(var_C0)))
  loc_14EAC32:   LateIdCallSt
  loc_14EAC92:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("PrintOption")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(var_C0)))
  loc_14EACA2:   LateIdCallSt
  loc_14EAD04:   var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostingMethod")), CVar(CLng(&HC)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(Me.FGrid3.Row)), CVar(CLng(6)))) 'String
  loc_14EAD0B:   LateIdCallSt
  loc_14EAD2D:   var_C0 = Me.FGrid3.Row
  loc_14EAD6B:   var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(&HD)), CVar(CLng(var_C0)), var_168, var_E0)) 'String
  loc_14EAD72:   LateIdCallSt
  loc_14EAD94:   var_E0 = Me.FGrid3.Row
  loc_14EADD0:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("FlatRate")), CVar(CLng(&HE)), CVar(CLng(var_E0)), var_168, var_E0)
  loc_14EADD9:   var_100 = CVar(CStr(var_C0)) 'String
  loc_14EADE0:   LateIdCallSt
  loc_14EAE09:   var_128 = var_88.Fields
  loc_14EAE20:   Proc_6_39_E7C810(var_C0, CVar(var_128.Item("Amount")), var_168, var_100, CVar(CLng(Me.FGrid3.Row)))
  loc_14EAE4B:   Proc_6_39_E7C810(var_100, CVar(var_88.Fields.Item("DiscAmt")), var_128)
  loc_14EAE8B:   var_124 = (var_C0 + var_100)
  loc_14EAEA2:   LateIdCallSt
  loc_14EAEEE:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("Amount")), var_168, CVar(CStr(Format(Me.FGrid3.Row, "0.00"))), 1, 1)
  loc_14EAF0A:   var_148 = var_88.Fields.Item("NoofDays")
  loc_14EAF19:   Proc_6_39_E7C810(var_100, CVar(var_148), CVar(CLng(&HF)), CVar(CLng(Me.FGrid3.Row)))
  loc_14EAF31:   var_144 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_14EAF39:   var_188 = CVar(CLng(&H10)) 'Long
  loc_14EAF77:   LateIdCallSt
  loc_14EAFA7:   var_C0 = Me.FGrid3.Row
  loc_14EAFE5:   var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChrgCode")), CVar(CLng(&H11)), CVar(CLng(var_C0)), var_168, CVar(CStr(Format((var_C0 * var_100), "0.00"))), 1)) 'String
  loc_14EAFEC:   LateIdCallSt
  loc_14EB00E:   var_E0 = Me.FGrid3.Row
  loc_14EB04A:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("PlanPer")), CVar(CLng(&H12)), CVar(CLng(var_E0)), var_168, var_E0)
  loc_14EB05A:   LateIdCallSt
  loc_14EB087:   var_F0 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_14EB08F:   var_144 = CVar(CLng(&H13)) 'Long
  loc_14EB0BF:   var_E0 = CVar(CStr(var_88.Fields.Item("App_Date").Value)) 'String
  loc_14EB0C6:   LateIdCallSt
  loc_14EB0EA:   var_C0 = Me.FGrid3.Row
  loc_14EB128:   var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FixRate")), CVar(CLng(&H15)), CVar(CLng(var_C0)), var_168, var_E0, CVar(CLng(&H15)), CVar(CLng(var_C0)))) 'String
  loc_14EB12F:   LateIdCallSt
  loc_14EB16D:   Proc_6_39_E7C810(var_C0, CVar(var_88.Fields.Item("NetPackageAmount")), var_168, var_E0, var_168)
  loc_14EB184:   Set var_134 = Me.Txt
  loc_14EB18A:   Call 0.Method_Proc_59_50_14EB20C0 (CInt(&H19), var_148, CStr(var_C0), CVar(CStr(var_C0)))
  loc_14EB192:   var_148.Text = 1
  loc_14EB1B5:   var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_14EB1B9:   var_D0 = vbNullString
  loc_14EB1C3:   Set var_128 = Me.FGrid3
  loc_14EB1E8:   Me.FGrid3.Row = CVar(CLng(var_8A))
  loc_14EB1F2:   Set var_168 = Nothing 
  loc_14EB1F9:   var_88.MoveNext
  loc_14EB1FE:   GoTo loc_14EA751
  loc_14EB201: End If
  loc_14EB206: Set var_88 = Nothing
  loc_14EB209: Exit Sub
End Sub

Public Sub Proc_59_51_DFD6CC
  'Data Table: 52DB2C
  loc_DFD6C8: Exit Sub
End Sub
