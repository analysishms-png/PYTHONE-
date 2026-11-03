VERSION 5.00
Begin VB.Form FrmRoomMast
  Caption = "Room  Master"
  BackColor = &HFFC0C0&
  ForeColor = &H400000&
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
  ClientWidth = 11880
  ClientHeight = 8490
  Begin TextBox Txt
    Index = 58
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10800
    Top = 1800
    Width = 1560
    Height = 285
    TabIndex = 118
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11880
    Height = 450
    TabIndex = 117
  End
  Begin PictureBox Picture4
    Picture = "FrmRoomMast.frx":0
    Left = 11115
    Top = 6405
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 113
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture2
    Picture = "FrmRoomMast.frx":34E
    Left = 11085
    Top = 6735
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 112
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin MSFlexGrid FGPoint
    Left = 13635
    Top = 450
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 111
  End
  Begin DataGrid DGRevenue
    Left = 12660
    Top = 5010
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 106
  End
  Begin DataGrid DGCategory
    Left = 12735
    Top = 4620
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 107
  End
  Begin Frame FrmList
    Left = 11490
    Top = 5775
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 109
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 285
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 110
    End
  End
  Begin DataGrid DGMaid
    Left = 12915
    Top = 4275
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 108
  End
  Begin PictureBox Picture123
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 13995
    Top = 5775
    Width = 2655
    Height = 3285
    Visible = 0   'False
    TabIndex = 105
    ScaleMode = 1
    AutoRedraw = True
    FontTransparent = True
    DrawStyle = 5
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 11505
    Top = 7650
    Width = 2115
    Height = 255
    Visible = 0   'False
    TabIndex = 100
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin CommandButton CmdRate
    Caption = "Season &Rate"
    Left = 14625
    Top = 3585
    Width = 1890
    Height = 405
    Visible = 0   'False
    TabIndex = 99
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
    Style = 1
  End
  Begin Frame Srate
    ForeColor = &H80000008&
    Left = 10800
    Top = 4185
    Width = 8430
    Height = 1935
    Visible = 0   'False
    TabIndex = 85
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 57
      BackColor = &HFFFFFF&
      Left = 2115
      Top = 2265
      Width = 1065
      Height = 255
      Visible = 0   'False
      TabIndex = 51
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 56
      BackColor = &HFFFFFF&
      Left = 2115
      Top = 2010
      Width = 1065
      Height = 255
      Visible = 0   'False
      TabIndex = 50
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 55
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 49
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 54
      BackColor = &HFFFFFF&
      Left = 5700
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 45
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 53
      BackColor = &HFFFFFF&
      Left = 4485
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 41
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 52
      BackColor = &HFFFFFF&
      Left = 3285
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 37
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 51
      BackColor = &HFFFFFF&
      Left = 2085
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 33
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 50
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 48
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 49
      BackColor = &HFFFFFF&
      Left = 5700
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 44
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 48
      BackColor = &HFFFFFF&
      Left = 4485
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 40
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 47
      BackColor = &HFFFFFF&
      Left = 3285
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 36
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 46
      BackColor = &HFFFFFF&
      Left = 2085
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 32
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 45
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 47
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 44
      BackColor = &HFFFFFF&
      Left = 5700
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 43
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 43
      BackColor = &HFFFFFF&
      Left = 4485
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 39
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 42
      BackColor = &HFFFFFF&
      Left = 3285
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 35
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 41
      BackColor = &HFFFFFF&
      Left = 2085
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 31
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 40
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 46
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 39
      BackColor = &HFFFFFF&
      Left = 5700
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 42
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 38
      BackColor = &HFFFFFF&
      Left = 4485
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 38
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 37
      BackColor = &HFFFFFF&
      Left = 3285
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 34
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 36
      BackColor = &HFFFFFF&
      Left = 2085
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 30
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin CommandButton cmdSave
      Caption = "Save/Exit"
      Left = 6540
      Top = 2085
      Width = 1890
      Height = 405
      TabIndex = 52
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
      Caption = "(+/-)"
      Index = 37
      ForeColor = &H400000&
      Left = 1200
      Top = 1620
      Width = 390
      Height = 195
      TabIndex = 102
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "High Rate"
      Index = 36
      ForeColor = &H400000&
      Left = 2055
      Top = 420
      Width = 960
      Height = 240
      TabIndex = 98
      Alignment = 2 'Center
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
      Caption = "Rack Rate"
      Index = 35
      ForeColor = &H400000&
      Left = 3285
      Top = 420
      Width = 990
      Height = 240
      TabIndex = 97
      Alignment = 2 'Center
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
      Caption = "Disc1 Rate"
      Index = 34
      ForeColor = &H400000&
      Left = 4470
      Top = 420
      Width = 1050
      Height = 240
      TabIndex = 96
      Alignment = 2 'Center
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
      Caption = "Disc2 Rate"
      Index = 33
      ForeColor = &H400000&
      Left = 5670
      Top = 420
      Width = 1050
      Height = 240
      TabIndex = 95
      Alignment = 2 'Center
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
      Caption = "Disc3 Rate"
      Index = 32
      ForeColor = &H400000&
      Left = 6870
      Top = 420
      Width = 1050
      Height = 240
      TabIndex = 94
      Alignment = 2 'Center
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
      Caption = "Single"
      Index = 31
      ForeColor = &H400000&
      Left = 315
      Top = 810
      Width = 570
      Height = 240
      TabIndex = 93
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
      Caption = "Multiple"
      Index = 30
      ForeColor = &H400000&
      Left = 315
      Top = 1080
      Width = 750
      Height = 240
      TabIndex = 92
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
      Caption = "Occupancy Type"
      Index = 29
      ForeColor = &H400000&
      Left = 315
      Top = 405
      Width = 1575
      Height = 240
      TabIndex = 91
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
      Caption = "Extra Person"
      Index = 28
      ForeColor = &H400000&
      Left = 315
      Top = 1350
      Width = 1245
      Height = 240
      TabIndex = 90
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
      Caption = "Weekend"
      Index = 27
      ForeColor = &H400000&
      Left = 315
      Top = 1620
      Width = 900
      Height = 240
      TabIndex = 89
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
    Begin Shape Shape5
      Left = 0
      Top = 375
      Width = 8445
      Height = 1590
    End
    Begin Shape Shape4
      Left = 0
      Top = 735
      Width = 8445
      Height = 1215
    End
    Begin Label Label3
      Caption = "Tariff"
      BackColor = &HBBDDD7&
      ForeColor = &H400000&
      Left = 15
      Top = 105
      Width = 510
      Height = 240
      TabIndex = 88
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Weekly Rate"
      Index = 26
      ForeColor = &H400000&
      Left = 345
      Top = 2040
      Width = 1230
      Height = 240
      Visible = 0   'False
      TabIndex = 87
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
      Caption = "Monthly Rate"
      Index = 25
      ForeColor = &H400000&
      Left = 345
      Top = 2310
      Width = 1305
      Height = 240
      Visible = 0   'False
      TabIndex = 86
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
  End
  Begin TextBox Txt
    Index = 35
    BackColor = &HFFFFFF&
    Left = 10680
    Top = 780
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 84
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 34
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4860
    Top = 1200
    Width = 765
    Height = 285
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 33
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2475
    Top = 1200
    Width = 1065
    Height = 285
    TabIndex = 0
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
    Index = 29
    BackColor = &HFFFFFF&
    Left = 15150
    Top = 2340
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 54
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
    Index = 32
    BackColor = &HFFFFFF&
    Left = 15150
    Top = 3150
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 57
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
    Index = 31
    BackColor = &HFFFFFF&
    Left = 15150
    Top = 2880
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 56
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
    Index = 30
    BackColor = &HFFFFFF&
    Left = 15150
    Top = 2610
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 55
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
    Index = 28
    BackColor = &HFFFFFF&
    Left = 12630
    Top = 8760
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 27
    BackColor = &HFFFFFF&
    Left = 12630
    Top = 8490
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 28
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 26
    BackColor = &HFFFFFF&
    Left = 8130
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 27
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 8130
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 26
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 25
    BackColor = &HFFFFFF&
    Left = 6900
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 23
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 20
    BackColor = &HFFFFFF&
    Left = 6900
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 22
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 24
    BackColor = &HFFFFFF&
    Left = 5640
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 5640
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 18
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 23
    BackColor = &HFFFFFF&
    Left = 4335
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 4335
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 22
    BackColor = &HFFFFFF&
    Left = 3045
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 3045
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 8130
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 25
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 6900
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 21
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 14
    BackColor = &HFFFFFF&
    Left = 5640
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 17
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 4335
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 3045
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 8130
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 24
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 6900
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 5640
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 4335
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 3045
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    ForeColor = &HC00000&
    Left = 8205
    Top = 1485
    Width = 1230
    Height = 285
    TabIndex = 6
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7380
    Top = 1800
    Width = 2055
    Height = 285
    TabIndex = 7
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8205
    Top = 1170
    Width = 1230
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 11715
    Top = 8040
    Width = 930
    Height = 255
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 25
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
    Left = 2475
    Top = 1830
    Width = 3150
    Height = 285
    TabIndex = 3
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2475
    Top = 1515
    Width = 3150
    Height = 285
    TabIndex = 2
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
  Begin MSHFlexGrid FGrid1
    Left = 930
    Top = 4320
    Width = 4500
    Height = 3120
    TabIndex = 53
  End
  Begin CommonDialog CDlg
  End
  Begin Label LblName
    Caption = "Door Lock ID"
    Index = 39
    ForeColor = &HC00000&
    Left = 9510
    Top = 1815
    Width = 1215
    Height = 240
    TabIndex = 119
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
  Begin Image Image1
    Picture = "FrmRoomMast.frx":69C
    Left = 2610
    Top = 3165
    Width = 360
    Height = 360
  End
  Begin Image Image2
    Picture = "FrmRoomMast.frx":D9E
    Left = 2610
    Top = 2775
    Width = 360
    Height = 360
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4800
    Top = 8160
    Width = 2790
    Height = 285
    TabIndex = 116
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
    Left = 1410
    Top = 8160
    Width = 2880
    Height = 255
    TabIndex = 115
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
    TabIndex = 114
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
  Begin Image Picture1
    Left = 5595
    Top = 4125
    Width = 3780
    Height = 3315
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label4
    Caption = "Click Here to insert Image "
    BackColor = &H80000009&
    ForeColor = &HFF0000&
    Left = 6915
    Top = 7470
    Width = 2655
    Height = 390
    TabIndex = 104
    Alignment = 2 'Center
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
    Caption = "(+/-)"
    Index = 38
    ForeColor = &HC00000&
    Left = 2655
    Top = 3780
    Width = 360
    Height = 240
    TabIndex = 103
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
    Caption = "Revenue Chg"
    Index = 3
    ForeColor = &H400000&
    Left = 10245
    Top = 7680
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 101
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
    Caption = "Room Type"
    Index = 6
    ForeColor = &HC00000&
    Left = 3765
    Top = 1215
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 83
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
  Begin Shape Shape3
    Left = 12825
    Top = 2265
    Width = 3690
    Height = 1215
    Visible = 0   'False
  End
  Begin Label Label2
    Caption = "Room Features"
    BackColor = &HC0C7D8&
    ForeColor = &HC00000&
    Left = 930
    Top = 4035
    Width = 1755
    Height = 285
    TabIndex = 82
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Room No"
    Index = 5
    ForeColor = &HC00000&
    Left = 945
    Top = 1200
    Width = 870
    Height = 240
    TabIndex = 81
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
    Caption = "House Keeping"
    Index = 4
    ForeColor = &HC00000&
    Left = 5925
    Top = 1785
    Width = 1440
    Height = 240
    TabIndex = 80
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
    Caption = "Connecting Room 1"
    Index = 24
    ForeColor = &H400000&
    Left = 13050
    Top = 2340
    Width = 1860
    Height = 240
    Visible = 0   'False
    TabIndex = 79
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
    Caption = "Connecting Room 2"
    Index = 23
    ForeColor = &H400000&
    Left = 13020
    Top = 2625
    Width = 1860
    Height = 240
    Visible = 0   'False
    TabIndex = 78
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
    Caption = "Connecting Room 3"
    Index = 22
    ForeColor = &H400000&
    Left = 13050
    Top = 2880
    Width = 1860
    Height = 240
    Visible = 0   'False
    TabIndex = 77
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
    Caption = "Connecting Room 4"
    Index = 21
    ForeColor = &H400000&
    Left = 13050
    Top = 3150
    Width = 1860
    Height = 240
    Visible = 0   'False
    TabIndex = 76
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
    Caption = "Monthly Rate"
    Index = 20
    ForeColor = &H400000&
    Left = 10830
    Top = 8760
    Width = 1305
    Height = 240
    Visible = 0   'False
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
  Begin Label LblName
    Caption = "Weekly Rate"
    Index = 19
    ForeColor = &H400000&
    Left = 10830
    Top = 8490
    Width = 1230
    Height = 240
    Visible = 0   'False
    TabIndex = 74
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
    Caption = "Tariff"
    BackColor = &HC0C7D8&
    ForeColor = &H80&
    Left = 330
    Top = 2415
    Width = 495
    Height = 240
    TabIndex = 73
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 900
    Top = 2370
    Width = 8400
    Height = 375
    BorderWidth = 2
  End
  Begin Label LblName
    Caption = "Weekend"
    Index = 18
    ForeColor = &HC00000&
    Left = 1755
    Top = 3795
    Width = 900
    Height = 240
    TabIndex = 72
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
    Caption = "Extra Person"
    Index = 17
    ForeColor = &HC00000&
    Left = 1755
    Top = 3480
    Width = 1215
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
    Caption = "Occupancy Type"
    Index = 16
    ForeColor = &H80&
    Left = 1005
    Top = 2370
    Width = 1575
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
  Begin Label LblName
    Caption = "Multiple"
    Index = 15
    ForeColor = &HC00000&
    Left = 10485
    Top = 3285
    Width = 765
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
  Begin Label LblName
    Caption = "Single"
    Index = 14
    ForeColor = &HC00000&
    Left = 10485
    Top = 3015
    Width = 615
    Height = 240
    Visible = 0   'False
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
  Begin Label LblName
    Caption = "Disc3 Rate"
    Index = 13
    ForeColor = &H80&
    Left = 8100
    Top = 2385
    Width = 990
    Height = 240
    TabIndex = 67
    Alignment = 2 'Center
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
    Caption = "Disc2 Rate"
    Index = 12
    ForeColor = &H80&
    Left = 6870
    Top = 2385
    Width = 990
    Height = 240
    TabIndex = 66
    Alignment = 2 'Center
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
    Caption = "Disc1 Rate"
    Index = 11
    ForeColor = &H80&
    Left = 5610
    Top = 2385
    Width = 990
    Height = 240
    TabIndex = 65
    Alignment = 2 'Center
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
    Caption = "Rack Rate"
    Index = 10
    ForeColor = &H80&
    Left = 4305
    Top = 2385
    Width = 960
    Height = 240
    TabIndex = 64
    Alignment = 2 'Center
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
    Caption = "High Rate"
    Index = 9
    ForeColor = &H80&
    Left = 3000
    Top = 2385
    Width = 930
    Height = 240
    TabIndex = 63
    Alignment = 2 'Center
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
    Caption = "Include Room Count"
    Index = 8
    ForeColor = &HC00000&
    Left = 5925
    Top = 1485
    Width = 1935
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
    Caption = "Multiple Persons"
    Index = 7
    ForeColor = &HC00000&
    Left = 5925
    Top = 1170
    Width = 1575
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
  Begin Label LblName
    Caption = "Extension"
    Index = 2
    ForeColor = &H400000&
    Left = 10800
    Top = 8025
    Width = 810
    Height = 240
    Visible = 0   'False
    TabIndex = 60
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
    Caption = "Room Category"
    Index = 1
    ForeColor = &HC00000&
    Left = 945
    Top = 1830
    Width = 1470
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
  Begin Label LblName
    Caption = "Room Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 945
    Top = 1515
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
End

Attribute VB_Name = "FrmRoomMast"

Private MasterFormExit As Integer

Private Sub Fgrid1_UnknownEvent_9 '10DA758
  'Data Table: 4FADD8
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_114 As String
  loc_10DA450: Set var_88 = Me.TopCtrl1
  loc_10DA456: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10DA46F: If (CStr() = "Browse") Then
  loc_10DA472:   Exit Sub
  loc_10DA473: End If
  loc_10DA492: If (CLng(Me.FGrid1.Col) = 1) Then
  loc_10DA4A8:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DA4C0:   var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10DA4F7:   If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_10DA51C:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_10DA53B:     Me.FGrid1.CellFontName = "wingdings"
  loc_10DA555:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_10DA57C:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_10DA592:       Me.FGrid1.CellForeColor = &HFF
  loc_10DA59D:     Else
  loc_10DA5B0:       Me.FGrid1.CellForeColor = &HFF0000
  loc_10DA5B8:     End If
  loc_10DA5CB:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DA5E3:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10DA5E8:     var_114 = "ü"
  loc_10DA5F2:     Set var_F4 = Me.FGrid1
  loc_10DA5F8:     LateIdCallSt
  loc_10DA613:   Else
  loc_10DA626:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DA63E:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10DA643:     var_114 = vbNullString
  loc_10DA64D:     Set var_F4 = Me.FGrid1
  loc_10DA653:     LateIdCallSt
  loc_10DA68A:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_10DA6A0:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DA6A5:       var_E0 = 7
  loc_10DA6AE:       var_114 = vbNullString
  loc_10DA6B8:       Set var_A0 = Me.FGrid1
  loc_10DA6BE:       LateIdCallSt
  loc_10DA6E3:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DA6E8:       var_E0 = 8
  loc_10DA6F1:       var_114 = vbNullString
  loc_10DA6FB:       Set var_A0 = Me.FGrid1
  loc_10DA701:       LateIdCallSt
  loc_10DA726:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DA72B:       var_E0 = 9
  loc_10DA734:       var_114 = vbNullString
  loc_10DA73E:       Set var_A0 = Me.FGrid1
  loc_10DA744:       LateIdCallSt
  loc_10DA756:     End If
  loc_10DA756:   End If
  loc_10DA756: End If
  loc_10DA756: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F36FA4
  'Data Table: 4FADD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F36E9B: Me.DGCategory.Visible = False
  loc_F36EBA: If (Me.RecordCount > 0) Then
  loc_F36EF9:   Set var_B4 = Me.Txt
  loc_F36EFF:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(1), var_B8)
  loc_F36F07:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F36F3A:   var_B0 = Me.Fields.Item("Name")
  loc_F36F59:   Set var_B4 = Me.Txt
  loc_F36F5F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(1), var_B8)
  loc_F36F67:   var_B8.Text = CStr(var_B0.Value)
  loc_F36F7D: End If
  loc_F36F88: Set var_A8 = Me.Txt
  loc_F36F8E: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(1))
  loc_F36F96: var_B0.SetFocus
  loc_F36FA2: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'F0270C
  'Data Table: 4FADD8
  Dim var_9C As DataGrid
  Dim var_BC As Variant
  loc_F02634: Set var_88 = Me.DGCategory
  loc_F0264D: Me.DGCategory.InsertColumnLabels DGCategory.DispID_1D, 
  loc_F02686: If (CDbl(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF)))) < CDbl(CLng(var_AC))) Then
  loc_F0268D:   Set var_88 = Me.DGCategory
  loc_F026B7:   var_BC = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_F026BF:   Set var_9C = Me.DGCategory
  loc_F026D4: End If
  loc_F026FB: Proc_6_138_106D6F8(Me.DGCategory, global_76, CInt(1), Me.FGPoint)
  loc_F02709: Exit Sub
End Sub

Private Sub Form_Load() '1417254
  'Data Table: 4FADD8
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim unk_4FADE5 As Connection15
  Dim var_BC As Variant
  Dim var_F8 As Variant
  Dim var_100 As Variant
  Dim var_FC As DataGrid
  Dim var_108 As DataGrid
  Dim Me As Recordset15
  loc_14167C8: On Error Goto loc_141724C
  loc_14167DA: Me.LblUser.Left = CDbl(13500)
  loc_14167F1: Me.LblUser.Top = CDbl(7800)
  loc_1416808: Me.LblLDt.Top = CDbl(8160)
  loc_141681F: Me.LblLDt.Left = CDbl(13500)
  loc_141682E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1416840: Set var_8C = Me.FGrid1
  loc_1416846: var_8C.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_141686B: Proc_6_17_EAA2B0(var_BC, MemVar_1F92078, "Select * from enviro WHERE logSITE_CODE=")
  loc_1416881: unk_4FADE5.Execute CStr(var_F0 & var_BC), -1, var_8C
  loc_141688C: Set var_88 = var_8C
  loc_14168B5: If (Me.Recordset15.RecordCount > 0) Then
  loc_14168FB:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate1"))) <> vbNullString) Then
  loc_1416938:     Set var_FC = Me.LblName
  loc_141693E:     Call 0.Method_Form_Load0 (9, var_100)
  loc_1416946:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate1").Value)
  loc_1416996:     Set var_FC = Me.LblName
  loc_141699C:     Call 0.Method_Form_Load0 (&H21, var_100)
  loc_14169A4:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate1").Value)
  loc_14169BA:   End If
  loc_14169FD:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate2"))) <> vbNullString) Then
  loc_1416A3A:     Set var_FC = Me.LblName
  loc_1416A40:     Call 0.Method_Form_Load0 (&HA, var_100)
  loc_1416A48:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate2").Value)
  loc_1416A98:     Set var_FC = Me.LblName
  loc_1416A9E:     Call 0.Method_Form_Load0 (&H20, var_100)
  loc_1416AA6:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate2").Value)
  loc_1416ABC:   End If
  loc_1416AFF:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate3"))) <> vbNullString) Then
  loc_1416B3C:     Set var_FC = Me.LblName
  loc_1416B42:     Call 0.Method_Form_Load0 (&HB, var_100)
  loc_1416B4A:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate3").Value)
  loc_1416B9A:     Set var_FC = Me.LblName
  loc_1416BA0:     Call 0.Method_Form_Load0 (&H1F, var_100)
  loc_1416BA8:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate3").Value)
  loc_1416BBE:   End If
  loc_1416C01:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate4"))) <> vbNullString) Then
  loc_1416C3E:     Set var_FC = Me.LblName
  loc_1416C44:     Call 0.Method_Form_Load0 (&HC, var_100)
  loc_1416C4C:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate4").Value)
  loc_1416C9C:     Set var_FC = Me.LblName
  loc_1416CA2:     Call 0.Method_Form_Load0 (&H1E, var_100)
  loc_1416CAA:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate4").Value)
  loc_1416CC0:   End If
  loc_1416D03:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate5"))) <> vbNullString) Then
  loc_1416D40:     Set var_FC = Me.LblName
  loc_1416D46:     Call 0.Method_Form_Load0 (&HD, var_100)
  loc_1416D4E:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate5").Value)
  loc_1416D81:     var_F8 = Me.Recordset15.Fields.Item("Rate5")
  loc_1416D9E:     Set var_FC = Me.LblName
  loc_1416DA4:     Call 0.Method_Form_Load0 (&H1D, var_100)
  loc_1416DAC:     var_100.Caption = CStr(var_F8.Value)
  loc_1416DC2:   End If
  loc_1416DC2: End If
  loc_1416DC7: Set var_88 = Nothing
  loc_1416DD9: Me.Srate.Top = CDbl(4035)
  loc_1416DF0: Me.Srate.Left = CDbl(990)
  loc_1416E07: Me.Picture1.Top = CDbl(4125)
  loc_1416E1E: Me.Picture1.Left = CDbl(5595)
  loc_1416E34: Set var_8C = Me.Txt
  loc_1416E3A: Call 0.Method_Form_Load0 (CInt(4), var_F8)
  loc_1416E59: Me.DGRevenue.Left = CVar(var_F8.Left)
  loc_1416E75: Set var_FC = Me.Txt
  loc_1416E7B: Call 0.Method_Form_Load0 (CInt(4), var_100)
  loc_1416E96: Set var_8C = Me.Txt
  loc_1416E9C: Call 0.Method_Form_Load0 (CInt(4), var_F8)
  loc_1416EB4: var_9C = CVar(((var_F8.Top + var_100.Height) + CDbl(&H1E))) 'Single
  loc_1416EC3: Me.DGRevenue.Top = CVar(var_F8.Left)
  loc_1416EE3: Set var_8C = Me.Txt
  loc_1416EE9: Call 0.Method_Form_Load0 (CInt(1), var_F8)
  loc_1416F08: Me.DGCategory.Left = CVar(var_F8.Left)
  loc_1416F24: Set var_FC = Me.Txt
  loc_1416F2A: Call 0.Method_Form_Load0 (CInt(1), var_100)
  loc_1416F32: var_104 = var_100.Height
  loc_1416F45: Set var_8C = Me.Txt
  loc_1416F4B: Call 0.Method_Form_Load0 (CInt(1), var_F8)
  loc_1416F53: var_F4 = var_F8.Top
  loc_1416F63: var_9C = CVar(((var_F4 + var_104) + CDbl(&H1E))) 'Single
  loc_1416F6C: Set var_108 = Me.DGCategory
  loc_1416F72: var_108.Top = CVar(var_F8.Left)
  loc_1416F8E: Set global_72 = New 
  loc_1416FA0: Me.var_108.CursorLocation = 3
  loc_1416FCA: var_BC = CVar("Select distinct Code As Code,Name,TaxStru From RevMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1416FD4: Me.Open var_BC, CVar(MemVar_1F92044), 2
  loc_1416FE8: CVarUnk
  loc_1416FED: VerifyVarObj
  loc_1416FF3: Set var_8C = Me.DGRevenue
  loc_1416FF9: LateIdStAd
  loc_1417023: Me.DGRevenue.CursorLocation = 3
  loc_141704D: var_BC = CVar("Select distinct Code As Code,Name From Depart where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RestType='House Keeping' Order by Name") 'String
  loc_1417057: Me.Open var_BC, CVar(MemVar_1F92044), 2
  loc_141706B: CVarUnk
  loc_1417070: VerifyVarObj
  loc_141707C: LateIdStAd
  loc_1417098: Set var_FC = Me.Txt
  loc_141709E: Call 0.Method_Form_Load0 (CInt(5), var_100, var_104, Me.DGMaid, New, 3)
  loc_14170A6: -1 = var_100.Height
  loc_14170BF: Call 0.Method_Form_Load0 (CInt(5), var_F8, var_F4, Me.Txt)
  loc_14170C7: global_72 = var_F8.Top
  loc_14170D3: var_9C = CVar((var_F4 + var_104)) 'Single
  loc_14170E2: Me.DGMaid.Top = CVar(MemVar_1F92044)
  loc_1417102: Set var_8C = Me.Txt
  loc_1417108: Call 0.Method_Form_Load0 (CInt(5), var_F8, var_F4)
  loc_1417110: 3 = var_F8.Left
  loc_1417121: Set var_FC = Me.DGMaid
  loc_1417127: var_FC.Left = CVar(var_F4)
  loc_1417151: Me.var_FC.CursorLocation = 3
  loc_141717B: var_BC = CVar("Select distinct Code As Code,Name,Type From RoomCat where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1417199: CVarUnk
  loc_141719E: VerifyVarObj
  loc_14171AA: LateIdStAd
  loc_14171D4: Me.DGCategory.CursorLocation = 3
  loc_14171FE: var_BC = CVar("Select Code as SearchCode,* From RoomMast where type in ('RO','CO')  and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Code") 'String
  loc_1417208: r_BC, CVar(MemVar_1F92044), 2 var_BC, CVar(MemVar_1F92044), 2
  loc_1417213: Call Proc_26_47_101B5E4(3, -1, Me.DGCategory, New)
  loc_141723B: Call Proc_26_43_E8A56C(Proc_5_1_100CB50("INI", Me, New), 3)
  loc_1417246: Call Proc_26_42_17CB2E4(-1)
  loc_141724B: Exit Sub
  loc_141724C: ' Referenced from: 14167C8
  loc_141724C: Proc_6_60_E62BC4(-1)
  loc_1417251: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3E38
  'Data Table: 4FADD8
  Dim var_8C As Label
  loc_ED3D96: Call 0.Method_arg_50 (var_88)
  loc_ED3DA8: Me.LblFormCaption.Caption = var_88
  loc_ED3DC1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED3DCD: Set var_A0 = Me.TopCtrl1
  loc_ED3DD3: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED3DE0: Set var_8C = Me.TopCtrl1
  loc_ED3DE6: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED3E00: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED3E1B: Call 0.Method_arg_100 (var_B8)
  loc_ED3E2D: Me.LblFormCaption.Width = var_B8
  loc_ED3E35: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E40048
  'Data Table: 4FADD8
  loc_E40023: Set global_72 = Nothing
  loc_E40035: Set global_68 = Nothing
  loc_E40041: MasterFormExit = 0
  loc_E40044: Exit Sub
End Sub

Private Sub Form_Activate() 'E4FDA8
  'Data Table: 4FADD8
  loc_E4FD78: On Error Goto loc_E4FDA2
  loc_E4FD7F: Set var_88 = Me.TopCtrl1
  loc_E4FD85: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4FD9A: If (CLng(CInt()) = &H2D) Then
  loc_E4FD9D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4FDA2:   ' Referenced from: E4FD78
  loc_E4FDA2: End If
  loc_E4FDA2: Proc_6_60_E62BC4()
  loc_E4FDA7: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2ABF8
  'Data Table: 4FADD8
  loc_E2ABD0: On Error Goto loc_E2ABF0
  loc_E2ABE7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2ABEF: Exit Sub
  loc_E2ABF0: ' Referenced from: E2ABD0
  loc_E2ABF0: Proc_6_60_E62BC4(Shift)
  loc_E2ABF5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12D4BDC
  'Data Table: 4FADD8
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_12D455E: Set var_88 = Me.Txt
  loc_12D4564: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12D4572: Proc_6_74_E226B0(var_8C)
  loc_12D457E: Call Proc_26_44_F1FE10(var_8C)
  loc_12D4586: var_92 = Index
  loc_12D4591: If (var_92 = CInt(5)) Then
  loc_12D45AB:   If (Me.RecordCount > 0) Then
  loc_12D45B9:     Set var_8C = Me.FGPoint
  loc_12D45D1:     Proc_6_137_1193554(Me.DGMaid, global_80, Index)
  loc_12D45DF:   End If
  loc_12D462D:   Set var_88 = Me.Txt
  loc_12D4633:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12D463B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12D4653:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12D4656:     Exit Sub
  loc_12D4657:   End If
  loc_12D4664:   Set var_88 = Me.Txt
  loc_12D466A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D4672:   var_A0 = var_8C.Text
  loc_12D4684:   var_B0 = "Name"
  loc_12D46BF:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12D46C8:     Me.MoveFirst
  loc_12D46EB:     Set var_88 = Me.Txt
  loc_12D46F1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12D46F9:     0 = var_8C.Text
  loc_12D4712:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_12D4727:   End If
  loc_12D472A: Else
  loc_12D4732:   If (var_92 = CInt(4)) Then
  loc_12D474C:     If (Me.RecordCount > 0) Then
  loc_12D475A:       Set var_8C = Me.FGPoint
  loc_12D4772:       Proc_6_137_1193554(Me.DGRevenue, global_72)
  loc_12D4780:     End If
  loc_12D47CE:     Set var_88 = Me.Txt
  loc_12D47D4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12D47DC:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12D47F4:     If (Index Or (var_A0 = vbNullString)) Then
  loc_12D47F7:       Exit Sub
  loc_12D47F8:     End If
  loc_12D4805:     Set var_88 = Me.Txt
  loc_12D480B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D4813:     var_A0 = var_8C.Text
  loc_12D4825:     var_B0 = "Name"
  loc_12D4860:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12D4869:       Me.MoveFirst
  loc_12D488C:       Set var_88 = Me.Txt
  loc_12D4892:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12D489A:       0 = var_8C.Text
  loc_12D48B3:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_12D48C8:     End If
  loc_12D48CB:   Else
  loc_12D48D3:     If (var_92 = CInt(1)) Then
  loc_12D48ED:       If (Me.RecordCount > 0) Then
  loc_12D48FB:         Set var_8C = Me.FGPoint
  loc_12D4913:         Proc_6_137_1193554(Me.DGCategory, global_76)
  loc_12D4921:       End If
  loc_12D496F:       Set var_88 = Me.Txt
  loc_12D4975:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12D497D:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12D4995:       If (Index Or (var_A0 = vbNullString)) Then
  loc_12D4998:         Exit Sub
  loc_12D4999:       End If
  loc_12D49A6:       Set var_88 = Me.Txt
  loc_12D49AC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D49B4:       var_A0 = var_8C.Text
  loc_12D49C6:       var_B0 = "Name"
  loc_12D4A01:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12D4A0A:         Me.MoveFirst
  loc_12D4A2D:         Set var_88 = Me.Txt
  loc_12D4A33:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12D4A3B:         0 = var_8C.Text
  loc_12D4A54:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_12D4A69:       End If
  loc_12D4A6C:     Else
  loc_12D4A74:       If (var_92 = CInt(6)) Then
  loc_12D4A84:         ReDim var_F0(0 To 1)
  loc_12D4A9B:         var_F0(0) = "Yes"
  loc_12D4AAA:         var_F0(1) = "No"
  loc_12D4AC1:         global_88 = Array(var_F0)
  loc_12D4ACC:         Set var_B4 = Me.ListView
  loc_12D4AE7:         Set var_8C = Me.Txt
  loc_12D4B01:         Set global_120 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_12D4B1F:         Set var_88 = Me.Txt
  loc_12D4B25:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12D4B2D:         global_88 = var_8C.Text
  loc_12D4B3F:         Set var_90 = Me.Txt
  loc_12D4B45:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12D4B4D:         var_B4.Tag = 2
  loc_12D4B60:       End If
  loc_12D4B60:     End If
  loc_12D4B60:   End If
  loc_12D4B60: End If
  loc_12D4B6F: Set var_88 = Me.Txt
  loc_12D4B75: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D4B7D: var_8C.SelStart = 0
  loc_12D4B96: Set var_88 = Me.Txt
  loc_12D4B9C: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D4BB7: Set var_90 = Me.Txt
  loc_12D4BBD: Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12D4BC5: var_B4.SelLength = Len(var_8C.Text)
  loc_12D4BD8: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '127DF08
  'Data Table: 4FADD8
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  Dim var_10C As Variant
  loc_127D97E: If (CLng(Shift) = &H1B) Then
  loc_127D981:   Call Proc_26_44_F1FE10()
  loc_127D986:   Exit Sub
  loc_127D987: End If
  loc_127D98A: var_86 = KeyCode
  loc_127D995: If (var_86 = CInt(5)) Then
  loc_127D9B5:   Set var_A0 = Me.FGPoint
  loc_127D9C0:   Set var_9C = Nothing
  loc_127D9F2:   Proc_6_69_134A198(Me.DGMaid, Me.Txt, CInt(5), global_80, Shift, 0)
  loc_127DA61:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127DA87:     Proc_6_138_106D6F8(Me.DGMaid, global_80, KeyCode, Me.FGPoint, 1)
  loc_127DA95:   End If
  loc_127DA98: Else
  loc_127DAA0:   If (var_86 = CInt(4)) Then
  loc_127DACB:     Set var_9C = Nothing
  loc_127DAFD:     Proc_6_69_134A198(Me.DGRevenue, Me.Txt, CInt(4), global_72, Shift, 0, 1)
  loc_127DB6C:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127DB73:       Set var_9C = Me.DGRevenue
  loc_127DB92:       Proc_6_138_106D6F8(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_127DBA0:     End If
  loc_127DBA3:   Else
  loc_127DBAB:     If (var_86 = CInt(1)) Then
  loc_127DBB9:       Set var_AC = Me.Txt
  loc_127DBCB:       Set var_A0 = Me.FGPoint
  loc_127DC08:       Proc_6_69_134A198(Me.DGCategory, var_AC, CInt(1), global_76, Shift, 0, 1, Nothing)
  loc_127DC27:       var_B4 = Me.RecordCount
  loc_127DC77:       If ((var_B4 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127DC85:         Set var_90 = Me.FGPoint
  loc_127DC9D:         Proc_6_138_106D6F8(Me.DGCategory, global_76, KeyCode, var_90, var_A0, 0)
  loc_127DCAB:       End If
  loc_127DCAE:     Else
  loc_127DCB6:       If (var_86 = CInt(6)) Then
  loc_127DCDB:         Set var_8C = Me.Txt
  loc_127DCE1:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, 0)
  loc_127DCE9:         var_9C = var_90.Left
  loc_127DCFB:         Set var_9C = Me.Txt
  loc_127DD01:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_127DD09:         var_A0 = var_A0.Top
  loc_127DD1B:         Set var_A8 = Me.Txt
  loc_127DD21:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_127DD29:         0 = var_AC.Height
  loc_127DD3B:         Set var_B0 = Me.Txt
  loc_127DD41:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_127DD49:         var_C4 = var_C0.Width
  loc_127DD91:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_127DDB5:       End If
  loc_127DDB5:     End If
  loc_127DDB5:   End If
  loc_127DDB5: End If
  loc_127DDCF: Set var_90 = Me.DGRevenue
  loc_127DDEC: var_10C = Me.DGCategory.Visible
  loc_127DE06: var_92 = Me.FrmList.Visible
  loc_127DE26: If ((((CBool(Me.DGMaid.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(var_10C) = 0)) And (var_92 = 0)) Then
  loc_127DE47:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H20))) Then
  loc_127DE4D:     Call Proc_26_40_107297C(var_92, CInt(var_B4), CInt((var_B8 + var_BC)))
  loc_127DE58:     If (var_92 = &HFF) Then
  loc_127DE68:       Set var_8C = Me.Txt
  loc_127DE6E:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_127DE76:       var_90.Text = CInt(var_C4)
  loc_127DE82:       Exit Sub
  loc_127DE83:     End If
  loc_127DEBA:     If (MsgBox("Save Record ?", 4, "Save Data", var_10C, var_15C) = 6) Then
  loc_127DEBD:       Call TopCtrl1_UnknownEvent_16()
  loc_127DEC2:     End If
  loc_127DEC2:     Exit Sub
  loc_127DEC3:   End If
  loc_127DED8:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_127DEE1:     Proc_6_75_E527CC(Shift, arg_14)
  loc_127DEE6:   End If
  loc_127DEF9:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(&H20))) Then
  loc_127DF02:     Proc_6_76_E52838(Shift, arg_14)
  loc_127DF07:   End If
  loc_127DF07: End If
  loc_127DF07: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '123AE90
  'Data Table: 4FADD8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_123A956: Proc_6_133_E7EF78(var_94)
  loc_123A95F: arg_10 = CInt(var_94)
  loc_123A968: Proc_6_58_E054C0(arg_10, arg_10)
  loc_123A970: var_96 = KeyAscii
  loc_123A97B: If (var_96 = CInt(5)) Then
  loc_123A99A:   If (CBool(Me.DGMaid.Visible) = &HFF) Then
  loc_123A9AC:     var_A4 = "Name"
  loc_123A9CB:     Proc_6_89_146F1AC(Me.Txt, CInt(5), global_80, arg_10)
  loc_123A9E5:     Set var_AC = Me.FGPoint
  loc_123A9FD:     Proc_6_138_106D6F8(Me.DGMaid, global_80, KeyAscii, var_AC)
  loc_123AA0B:   End If
  loc_123AA0E: Else
  loc_123AA16:   If (var_96 = CInt(3)) Then
  loc_123AA23:     Set var_9C = Me.Txt
  loc_123AA29:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_123AA44:     Proc_6_42_129A86C(var_AC, arg_10, 2, 0)
  loc_123AA53:   Else
  loc_123AA5B:     If (var_96 = CInt(4)) Then
  loc_123AA7A:       If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_123AAAB:         Proc_6_89_146F1AC(Me.Txt, CInt(4), global_72, arg_10, "Name")
  loc_123AAC5:         Set var_AC = Me.FGPoint
  loc_123AADD:         Proc_6_138_106D6F8(Me.DGRevenue, global_72, KeyAscii, var_AC)
  loc_123AAEB:       End If
  loc_123AAEE:     Else
  loc_123AAF6:       If Not (var_96 = CInt(7)) Then
  loc_123AB01:         If Not (var_96 = CInt(8)) Then
  loc_123AB0C:           If Not (var_96 = CInt(9)) Then
  loc_123AB17:             If Not (var_96 = CInt(&HA)) Then
  loc_123AB22:               If Not (var_96 = CInt(&HB)) Then
  loc_123AB2D:                 If Not (var_96 = CInt(&H24)) Then
  loc_123AB38:                   If Not (var_96 = CInt(8)) Then
  loc_123AB43:                     If Not (var_96 = CInt(&H26)) Then
  loc_123AB4E:                       If Not (var_96 = CInt(&H27)) Then
  loc_123AB59:                         If (var_96 = CInt(&H28)) Then
  loc_123AB5C:                         End If
  loc_123AB5C:                       End If
  loc_123AB5C:                     End If
  loc_123AB5C:                   End If
  loc_123AB5C:                 End If
  loc_123AB5C:               End If
  loc_123AB5C:             End If
  loc_123AB5C:           End If
  loc_123AB5C:         End If
  loc_123AB66:         Set var_9C = Me.Txt
  loc_123AB6C:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 0)
  loc_123AB87:         Proc_6_42_129A86C(var_AC, arg_10, 6, 2)
  loc_123AB96:       Else
  loc_123AB9E:         If Not (var_96 = CInt(&HC)) Then
  loc_123ABA9:           If Not (var_96 = CInt(&HD)) Then
  loc_123ABB4:             If Not (var_96 = CInt(&HE)) Then
  loc_123ABBF:               If Not (var_96 = CInt(&HF)) Then
  loc_123ABCA:                 If Not (var_96 = CInt(&H10)) Then
  loc_123ABD5:                   If Not (var_96 = CInt(&H29)) Then
  loc_123ABE0:                     If Not (var_96 = CInt(&H2A)) Then
  loc_123ABEB:                       If Not (var_96 = CInt(&H2B)) Then
  loc_123ABF6:                         If Not (var_96 = CInt(&H2C)) Then
  loc_123AC01:                           If (var_96 = CInt(&H2D)) Then
  loc_123AC04:                           End If
  loc_123AC04:                         End If
  loc_123AC04:                       End If
  loc_123AC04:                     End If
  loc_123AC04:                   End If
  loc_123AC04:                 End If
  loc_123AC04:               End If
  loc_123AC04:             End If
  loc_123AC04:           End If
  loc_123AC0E:           Set var_9C = Me.Txt
  loc_123AC14:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 0)
  loc_123AC2F:           Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_123AC3E:         Else
  loc_123AC46:           If Not (var_96 = CInt(&H11)) Then
  loc_123AC51:             If Not (var_96 = CInt(&H12)) Then
  loc_123AC5C:               If Not (var_96 = CInt(&H13)) Then
  loc_123AC67:                 If Not (var_96 = CInt(&H14)) Then
  loc_123AC72:                   If Not (var_96 = CInt(&H15)) Then
  loc_123AC7D:                     If Not (var_96 = CInt(&H2E)) Then
  loc_123AC88:                       If Not (var_96 = CInt(&H2F)) Then
  loc_123AC93:                         If Not (var_96 = CInt(&H30)) Then
  loc_123AC9E:                           If Not (var_96 = CInt(&H31)) Then
  loc_123ACA9:                             If (var_96 = CInt(&H32)) Then
  loc_123ACAC:                             End If
  loc_123ACAC:                           End If
  loc_123ACAC:                         End If
  loc_123ACAC:                       End If
  loc_123ACAC:                     End If
  loc_123ACAC:                   End If
  loc_123ACAC:                 End If
  loc_123ACAC:               End If
  loc_123ACAC:             End If
  loc_123ACB6:             Set var_9C = Me.Txt
  loc_123ACBC:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_123ACD7:             Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_123ACE6:           Else
  loc_123ACEE:             If Not (var_96 = CInt(&H16)) Then
  loc_123ACF9:               If Not (var_96 = CInt(&H17)) Then
  loc_123AD04:                 If Not (var_96 = CInt(&H18)) Then
  loc_123AD0F:                   If Not (var_96 = CInt(&H19)) Then
  loc_123AD1A:                     If Not (var_96 = CInt(&H1A)) Then
  loc_123AD25:                       If Not (var_96 = CInt(&H33)) Then
  loc_123AD30:                         If Not (var_96 = CInt(&H34)) Then
  loc_123AD3B:                           If Not (var_96 = CInt(&H35)) Then
  loc_123AD46:                             If Not (var_96 = CInt(&H36)) Then
  loc_123AD51:                               If (var_96 = CInt(&H37)) Then
  loc_123AD54:                               End If
  loc_123AD54:                             End If
  loc_123AD54:                           End If
  loc_123AD54:                         End If
  loc_123AD54:                       End If
  loc_123AD54:                     End If
  loc_123AD54:                   End If
  loc_123AD54:                 End If
  loc_123AD54:               End If
  loc_123AD5E:               Set var_9C = Me.Txt
  loc_123AD64:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_123AD7F:               Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_123AD8E:             Else
  loc_123AD96:               If Not (var_96 = CInt(&H1B)) Then
  loc_123ADA1:                 If Not (var_96 = CInt(&H1C)) Then
  loc_123ADAC:                   If Not (var_96 = CInt(&H38)) Then
  loc_123ADB7:                     If (var_96 = CInt(&H39)) Then
  loc_123ADBA:                     End If
  loc_123ADBA:                   End If
  loc_123ADBA:                 End If
  loc_123ADC4:                 Set var_9C = Me.Txt
  loc_123ADCA:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_123ADE5:                 Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_123ADF4:               Else
  loc_123ADFC:                 If (var_96 = CInt(1)) Then
  loc_123AE1B:                   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_123AE4C:                     Proc_6_89_146F1AC(Me.Txt, CInt(1), global_76, arg_10, "Name")
  loc_123AE7E:                     Proc_6_138_106D6F8(Me.DGCategory, global_76, KeyAscii, Me.FGPoint)
  loc_123AE8C:                   End If
  loc_123AE8C:                 End If
  loc_123AE8C:               End If
  loc_123AE8C:             End If
  loc_123AE8C:           End If
  loc_123AE8C:         End If
  loc_123AE8C:       End If
  loc_123AE8C:     End If
  loc_123AE8C:   End If
  loc_123AE8C: End If
  loc_123AE8C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FDD914
  'Data Table: 4FADD8
  Dim var_86 As Integer
  loc_FDD73F: var_86 = KeyCode
  loc_FDD74A: If (var_86 = CInt(5)) Then
  loc_FDD769:   If (CBool(Me.DGMaid.Visible) = &HFF) Then
  loc_FDD77D:     var_A8 = "Name"
  loc_FDD7A5:     Proc_6_68_129FB34(Me.DGMaid, Me.Txt, CInt(5), global_80)
  loc_FDD7B8:   End If
  loc_FDD7BB: Else
  loc_FDD7C3:   If (var_86 = CInt(4)) Then
  loc_FDD7E2:     If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_FDD7F6:       var_A8 = "Name"
  loc_FDD81E:       Proc_6_68_129FB34(Me.DGRevenue, Me.Txt, CInt(4), global_72, Shift)
  loc_FDD831:     End If
  loc_FDD834:   Else
  loc_FDD83C:     If (var_86 = CInt(1)) Then
  loc_FDD85B:       If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_FDD86F:         var_A8 = "Name"
  loc_FDD897:         Proc_6_68_129FB34(Me.DGCategory, Me.Txt, CInt(1), global_76, Shift)
  loc_FDD8AA:       End If
  loc_FDD8AD:     Else
  loc_FDD8B5:       If (var_86 = CInt(6)) Then
  loc_FDD8D3:         If (Me.FrmList.Visible = &HFF) Then
  loc_FDD902:           Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_120)
  loc_FDD912:         End If
  loc_FDD912:       End If
  loc_FDD912:     End If
  loc_FDD912:   End If
  loc_FDD912: End If
  loc_FDD912: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FE74
  'Data Table: 4FADD8
  loc_E4FE52: Set var_88 = Me.Txt
  loc_E4FE58: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FE66: Proc_6_73_E22704(var_8C)
  loc_E4FE72: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14CC19C
  'Data Table: 4FADD8
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B0 As TextBox
  Dim var_FC As Double
  loc_14CB41B: var_86 = Cancel
  loc_14CB426: If (var_86 = CInt(&H21)) Then
  loc_14CB434:   Set var_8C = Me.Txt
  loc_14CB43A:   Call 0.Method_Txt_Validate0 (CInt(&H21), var_90)
  loc_14CB442:   var_98 = "Room No."
  loc_14CB463:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_14CB470:     Set var_8C = Me.Txt
  loc_14CB476:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CB47E:     var_90.SetFocus
  loc_14CB48C:     arg_10 = &HFF
  loc_14CB48F:     Exit Sub
  loc_14CB490:   End If
  loc_14CB493:   Call Proc_26_40_107297C(var_9A, arg_10)
  loc_14CB49E:   If (var_9A = &HFF) Then
  loc_14CB4A3:     arg_10 = &HFF
  loc_14CB4A6:     Exit Sub
  loc_14CB4A7:   End If
  loc_14CB4AA: Else
  loc_14CB4B2:   If (var_86 = CInt(5)) Then
  loc_14CB4C2:     Set var_8C = Me.Txt
  loc_14CB4C8:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CB4D0:     arg_10 = var_90.Text
  loc_14CB4FC:     If ((var_98 <> vbNullString) And (Me.EOF = 0)) Then
  loc_14CB53A:       Set var_94 = Me.Txt
  loc_14CB540:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CB548:       var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14CB57B:       var_90 = Me.Fields.Item("Code")
  loc_14CB599:       Set var_94 = Me.Txt
  loc_14CB59F:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CB5A7:       var_B0.Tag = CStr(var_90.Value)
  loc_14CB5C0:     Else
  loc_14CB5CD:       Set var_8C = Me.Txt
  loc_14CB5D3:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CB5F2:       If (var_90.Text <> vbNullString) Then
  loc_14CB602:         Set var_8C = Me.Txt
  loc_14CB608:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CB610:         var_90.Text = vbNullString
  loc_14CB629:         Set var_8C = Me.Txt
  loc_14CB62F:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CB637:         var_90.Tag = vbNullString
  loc_14CB643:       End If
  loc_14CB643:     End If
  loc_14CB646:   Else
  loc_14CB64E:     If (var_86 = CInt(4)) Then
  loc_14CB65C:       Set var_8C = Me.Txt
  loc_14CB662:       Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_14CB68B:       If (Proc_6_27_EA565C(var_90, "Revenue Charge") = 0) Then
  loc_14CB698:         Set var_8C = Me.Txt
  loc_14CB69E:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CB6A6:         var_90.SetFocus
  loc_14CB6B4:         arg_10 = &HFF
  loc_14CB6B7:         Exit Sub
  loc_14CB6B8:       End If
  loc_14CB6CC:       If (Me.EOF = 0) Then
  loc_14CB70A:         Set var_94 = Me.Txt
  loc_14CB710:         Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Me.Fields.Item("Name").Value))
  loc_14CB718:         var_B0.Text = arg_10
  loc_14CB769:         Set var_94 = Me.Txt
  loc_14CB76F:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CB777:         var_B0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14CB7AA:         var_90 = Me.Fields.Item("TaxStru")
  loc_14CB7C9:         Set var_94 = Me.Txt
  loc_14CB7CF:         Call 0.Method_Txt_Validate0 (CInt(&H23), var_B0)
  loc_14CB7D7:         var_B0.Text = CStr(var_90.Value)
  loc_14CB7F0:       Else
  loc_14CB7FD:         Set var_8C = Me.Txt
  loc_14CB803:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CB80B:         var_90.Text = vbNullString
  loc_14CB824:         Set var_8C = Me.Txt
  loc_14CB82A:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CB832:         var_90.Tag = vbNullString
  loc_14CB84C:         Set var_8C = Me.Txt
  loc_14CB852:         Call 0.Method_Txt_Validate0 (CInt(&H23), var_90)
  loc_14CB85A:         var_90.Text = vbNullString
  loc_14CB866:       End If
  loc_14CB869:     Else
  loc_14CB871:       If (var_86 = CInt(1)) Then
  loc_14CB87F:         Set var_8C = Me.Txt
  loc_14CB885:         Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_14CB8AE:         If (Proc_6_27_EA565C(var_90, "Room Category") = 0) Then
  loc_14CB8BB:           Set var_8C = Me.Txt
  loc_14CB8C1:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CB8C9:           var_90.SetFocus
  loc_14CB8D7:           arg_10 = &HFF
  loc_14CB8DA:           Exit Sub
  loc_14CB8DB:         End If
  loc_14CB8EF:         If (Me.EOF = 0) Then
  loc_14CB92D:           Set var_94 = Me.Txt
  loc_14CB933:           Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Me.Fields.Item("Name").Value))
  loc_14CB93B:           var_B0.Text = arg_10
  loc_14CB98C:           Set var_94 = Me.Txt
  loc_14CB992:           Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CB99A:           var_B0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14CB9CD:           var_90 = Me.Fields.Item("Type")
  loc_14CB9EF:           If (var_90.Value = "RO") Then
  loc_14CBA00:             Set var_8C = Me.Txt
  loc_14CBA06:             Call 0.Method_Txt_Validate0 (CInt(&H22), var_90)
  loc_14CBA0E:             var_90.Text = "Room"
  loc_14CBA37:             var_90 = Me.Fields.Item("Type")
  loc_14CBA56:             Set var_94 = Me.Txt
  loc_14CBA5C:             Call 0.Method_Txt_Validate0 (CInt(&H22), var_B0)
  loc_14CBA64:             var_B0.Tag = CStr(var_90.Value)
  loc_14CBA88:             Set var_8C = Me.Txt
  loc_14CBA8E:             Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_14CBA96:             var_90.Text = "Yes"
  loc_14CBAA5:           Else
  loc_14CBAC2:             var_90 = Me.Fields.Item("Type")
  loc_14CBAE4:             If (var_90.Value = "CO") Then
  loc_14CBAF5:               Set var_8C = Me.Txt
  loc_14CBAFB:               Call 0.Method_Txt_Validate0 (CInt(&H22), var_90)
  loc_14CBB03:               var_90.Text = "Conf. Hall"
  loc_14CBB2C:               var_90 = Me.Fields.Item("Type")
  loc_14CBB4B:               Set var_94 = Me.Txt
  loc_14CBB51:               Call 0.Method_Txt_Validate0 (CInt(&H22), var_B0)
  loc_14CBB59:               var_B0.Tag = CStr(var_90.Value)
  loc_14CBB7D:               Set var_8C = Me.Txt
  loc_14CBB83:               Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_14CBB8B:               var_90.Text = "No"
  loc_14CBB97:             End If
  loc_14CBB97:           End If
  loc_14CBB9A:         Else
  loc_14CBBA7:           Set var_8C = Me.Txt
  loc_14CBBAD:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CBBB5:           var_90.Text = vbNullString
  loc_14CBBCE:           Set var_8C = Me.Txt
  loc_14CBBD4:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CBBDC:           var_90.Tag = vbNullString
  loc_14CBBE8:         End If
  loc_14CBBEB:       Else
  loc_14CBBF3:         If (var_86 = CInt(6)) Then
  loc_14CBC03:           Set var_8C = Me.Txt
  loc_14CBC09:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CBC28:           If (var_90.Text <> vbNullString) Then
  loc_14CBC43:             Set var_90 = Me.ListView.SelectedItem
  loc_14CBC5B:             Set var_94 = Me.Txt
  loc_14CBC61:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CBC69:             var_B0.Text = var_90.Text
  loc_14CBC7F:           End If
  loc_14CBC82:         Else
  loc_14CBC8A:           If Not (var_86 = CInt(7)) Then
  loc_14CBC95:             If Not (var_86 = CInt(9)) Then
  loc_14CBCA0:               If Not (var_86 = CInt(&HA)) Then
  loc_14CBCAB:                 If Not (var_86 = CInt(&HB)) Then
  loc_14CBCB6:                   If Not (var_86 = CInt(8)) Then
  loc_14CBCC1:                     If Not (var_86 = CInt(&H24)) Then
  loc_14CBCCC:                       If Not (var_86 = CInt(8)) Then
  loc_14CBCD7:                         If Not (var_86 = CInt(&H26)) Then
  loc_14CBCE2:                           If Not (var_86 = CInt(&H27)) Then
  loc_14CBCED:                             If (var_86 = CInt(&H28)) Then
  loc_14CBCF0:                             End If
  loc_14CBCF0:                           End If
  loc_14CBCF0:                         End If
  loc_14CBCF0:                       End If
  loc_14CBCF0:                     End If
  loc_14CBCF0:                   End If
  loc_14CBCF0:                 End If
  loc_14CBCF0:               End If
  loc_14CBCF0:             End If
  loc_14CBCFD:             Set var_8C = Me.Txt
  loc_14CBD03:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CBD0B:             var_98 = var_90.Text
  loc_14CBD50:             Set var_94 = Me.Txt
  loc_14CBD56:             Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CBD5E:             var_B0.Text = 1
  loc_14CBD81:           Else
  loc_14CBD89:             If Not (var_86 = CInt(&HC)) Then
  loc_14CBD94:               If Not (var_86 = CInt(&HE)) Then
  loc_14CBD9F:                 If Not (var_86 = CInt(&HF)) Then
  loc_14CBDAA:                   If Not (var_86 = CInt(&H10)) Then
  loc_14CBDB5:                     If Not (var_86 = CInt(&HD)) Then
  loc_14CBDC0:                       If Not (var_86 = CInt(&H29)) Then
  loc_14CBDCB:                         If Not (var_86 = CInt(&H2A)) Then
  loc_14CBDD6:                           If Not (var_86 = CInt(&H2B)) Then
  loc_14CBDE1:                             If Not (var_86 = CInt(&H2C)) Then
  loc_14CBDEC:                               If (var_86 = CInt(&H2D)) Then
  loc_14CBDEF:                               End If
  loc_14CBDEF:                             End If
  loc_14CBDEF:                           End If
  loc_14CBDEF:                         End If
  loc_14CBDEF:                       End If
  loc_14CBDEF:                     End If
  loc_14CBDEF:                   End If
  loc_14CBDEF:                 End If
  loc_14CBDEF:               End If
  loc_14CBDFC:               Set var_8C = Me.Txt
  loc_14CBE02:               Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CBE0A:               var_FC = var_90.Text
  loc_14CBE4F:               Set var_94 = Me.Txt
  loc_14CBE55:               Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CBE5D:               var_B0.Text = 1
  loc_14CBE80:             Else
  loc_14CBE88:               If Not (var_86 = CInt(&H11)) Then
  loc_14CBE93:                 If Not (var_86 = CInt(&H13)) Then
  loc_14CBE9E:                   If Not (var_86 = CInt(&H14)) Then
  loc_14CBEA9:                     If Not (var_86 = CInt(&H15)) Then
  loc_14CBEB4:                       If Not (var_86 = CInt(&H12)) Then
  loc_14CBEBF:                         If Not (var_86 = CInt(&H2E)) Then
  loc_14CBECA:                           If Not (var_86 = CInt(&H2F)) Then
  loc_14CBED5:                             If Not (var_86 = CInt(&H30)) Then
  loc_14CBEE0:                               If Not (var_86 = CInt(&H31)) Then
  loc_14CBEEB:                                 If (var_86 = CInt(&H32)) Then
  loc_14CBEEE:                                 End If
  loc_14CBEEE:                               End If
  loc_14CBEEE:                             End If
  loc_14CBEEE:                           End If
  loc_14CBEEE:                         End If
  loc_14CBEEE:                       End If
  loc_14CBEEE:                     End If
  loc_14CBEEE:                   End If
  loc_14CBEEE:                 End If
  loc_14CBEFB:                 Set var_8C = Me.Txt
  loc_14CBF01:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CBF09:                 var_FC = var_90.Text
  loc_14CBF4E:                 Set var_94 = Me.Txt
  loc_14CBF54:                 Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CBF5C:                 var_B0.Text = 1
  loc_14CBF7F:               Else
  loc_14CBF87:                 If Not (var_86 = CInt(&H16)) Then
  loc_14CBF92:                   If Not (var_86 = CInt(&H18)) Then
  loc_14CBF9D:                     If Not (var_86 = CInt(&H19)) Then
  loc_14CBFA8:                       If Not (var_86 = CInt(&H1A)) Then
  loc_14CBFB3:                         If Not (var_86 = CInt(&H17)) Then
  loc_14CBFBE:                           If Not (var_86 = CInt(&H33)) Then
  loc_14CBFC9:                             If Not (var_86 = CInt(&H34)) Then
  loc_14CBFD4:                               If Not (var_86 = CInt(&H35)) Then
  loc_14CBFDF:                                 If Not (var_86 = CInt(&H36)) Then
  loc_14CBFEA:                                   If (var_86 = CInt(&H37)) Then
  loc_14CBFED:                                   End If
  loc_14CBFED:                                 End If
  loc_14CBFED:                               End If
  loc_14CBFED:                             End If
  loc_14CBFED:                           End If
  loc_14CBFED:                         End If
  loc_14CBFED:                       End If
  loc_14CBFED:                     End If
  loc_14CBFED:                   End If
  loc_14CBFFA:                   Set var_8C = Me.Txt
  loc_14CC000:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CC008:                   var_FC = var_90.Text
  loc_14CC04D:                   Set var_94 = Me.Txt
  loc_14CC053:                   Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CC05B:                   var_B0.Text = 1
  loc_14CC07E:                 Else
  loc_14CC086:                   If Not (var_86 = CInt(&H1B)) Then
  loc_14CC091:                     If (var_86 = CInt(&H1C)) Then
  loc_14CC094:                     End If
  loc_14CC0A1:                     Set var_8C = Me.Txt
  loc_14CC0A7:                     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CC0AF:                     var_FC = var_90.Text
  loc_14CC0F4:                     Set var_94 = Me.Txt
  loc_14CC0FA:                     Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CC102:                     var_B0.Text = 1
  loc_14CC125:                   Else
  loc_14CC12D:                     If (var_86 = CInt(3)) Then
  loc_14CC13E:                       Set var_8C = Me.Txt
  loc_14CC144:                       Call 0.Method_Txt_Validate0 (CInt(3), var_90, var_98)
  loc_14CC14C:                       var_FC = var_90.Text
  loc_14CC168:                       If (CDbl(Val(var_98)) = CDbl(0)) Then
  loc_14CC17D:                         Set var_8C = Me.Txt
  loc_14CC183:                         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_14CC18B:                         var_90.Text = CStr(2)
  loc_14CC19A:                       End If
  loc_14CC19A:                     End If
  loc_14CC19A:                   End If
  loc_14CC19A:                 End If
  loc_14CC19A:               End If
  loc_14CC19A:             End If
  loc_14CC19A:           End If
  loc_14CC19A:         End If
  loc_14CC19A:       End If
  loc_14CC19A:     End If
  loc_14CC19A:   End If
  loc_14CC19A: End If
  loc_14CC19A: Exit Sub
End Sub

Private Sub CmdRate_Click() '15B2F9C
  'Data Table: 4FADD8
  Dim var_9C As Variant
  Dim var_8C As String
  Dim var_174 As String
  Dim var_178 As Variant
  Dim var_180 As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_16C As Variant
  Dim unk_4FADE5 As Connection15
  Dim var_170 As String
  Dim var_188 As Variant
  Dim var_88 As Recordset15
  loc_15B1D40: On Error Goto loc_15B2F95
  loc_15B1D57: var_CC = "Rate Category"
  loc_15B1D5D: var_9C = "Rate Category (A-Z)"
  loc_15B1DA2: var_8C = var_170
  loc_15B1DB6: If (Trim(InputBox(InputBox(var_9C, var_CC, var_EC, var_10C, var_12C, var_14C, var_16C), var_CC, var_EC, var_10C, var_12C, var_14C, var_16C)) = vbNullString) Then
  loc_15B1DB9:   Exit Sub
  loc_15B1DBA: End If
  loc_15B1DD7: var_8C = var_170
  loc_15B1DDD: var_174 = CStr(Trim(var_8C))
  loc_15B1DEB: Me.Srate.Tag = var_174
  loc_15B1E18: If (Me.Srate.Visible = 0) Then
  loc_15B1E27:   Me.Srate.Visible = True
  loc_15B1E2F: End If
  loc_15B1E3A: Set var_178 = Me.Txt
  loc_15B1E40: Call 0.Method_CmdRate_Click0 (CInt(&H24), var_180)
  loc_15B1E48: var_180.SetFocus
  loc_15B1E74: Set var_178 = Me.Txt
  loc_15B1E7A: Call 0.Method_CmdRate_Click0 (CInt(1), var_180, var_170, "Select * from RateList where Roomcat=")
  loc_15B1E82: var_1DC = var_180.Tag
  loc_15B1E90: Proc_6_17_EAA2B0(var_CC, CVar(var_170), -1)
  loc_15B1EB0: Set var_184 = Me.Txt
  loc_15B1EB6: Call 0.Method_CmdRate_Click0 (CInt(&H21), var_188)
  loc_15B1EC5: Proc_6_17_EAA2B0(var_14C, CVar(var_188))
  loc_15B1F00: Proc_6_17_EAA2B0(var_1B8, Trim(var_174))
  loc_15B1F16: unk_4FADE5.Execute CStr(var_1E0 & var_CC & " And RoomNo=" & var_14C & " And Code=" & var_1B8), var_174, 
  loc_15B1F21: Set var_88 = var_1E0
  loc_15B1F51: ' Referenced from: 15B2F89
  loc_15B1F63: If Not(Me.Recordset15.EOF) Then
  loc_15B1FA5:   If (Me.Recordset15.Fields.Item("OccType").Value = "Single") Then
  loc_15B1FDF:     Set var_184 = Me.LblName
  loc_15B1FE5:     Call 0.Method_CmdRate_Click0 (&HE, var_188)
  loc_15B1FED:     var_188.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OccType")))
  loc_15B2056:     Set var_184 = Me.Txt
  loc_15B205C:     Call 0.Method_CmdRate_Click0 (CInt(&H24), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_15B2064:     var_188.Text = 1
  loc_15B20D3:     Set var_184 = Me.Txt
  loc_15B20D9:     Call 0.Method_CmdRate_Click0 (CInt(&H25), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")))
  loc_15B20E1:     var_188.Text = 1
  loc_15B2150:     Set var_184 = Me.Txt
  loc_15B2156:     Call 0.Method_CmdRate_Click0 (CInt(&H26), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_15B215E:     var_188.Text = 1
  loc_15B21CD:     Set var_184 = Me.Txt
  loc_15B21D3:     Call 0.Method_CmdRate_Click0 (CInt(&H27), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_15B21DB:     var_188.Text = 1
  loc_15B224A:     Set var_184 = Me.Txt
  loc_15B2250:     Call 0.Method_CmdRate_Click0 (CInt(&H28), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_15B2258:     var_188.Text = 1
  loc_15B22C7:     Set var_184 = Me.Txt
  loc_15B22CD:     Call 0.Method_CmdRate_Click0 (CInt(&H38), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_15B22D5:     var_188.Text = 1
  loc_15B2344:     Set var_184 = Me.Txt
  loc_15B234A:     Call 0.Method_CmdRate_Click0 (CInt(&H39), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_15B2352:     var_188.Text = 1
  loc_15B236C:   End If
  loc_15B23AB:   If (Me.Recordset15.Fields.Item("OccType").Value = "Multiple") Then
  loc_15B23E5:     Set var_184 = Me.LblName
  loc_15B23EB:     Call 0.Method_CmdRate_Click0 (&HF, var_188)
  loc_15B23F3:     var_188.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_15B245C:     Set var_184 = Me.Txt
  loc_15B2462:     Call 0.Method_CmdRate_Click0 (CInt(&H29), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_15B246A:     var_188.Text = 1
  loc_15B24D9:     Set var_184 = Me.Txt
  loc_15B24DF:     Call 0.Method_CmdRate_Click0 (CInt(&H2A), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_15B24E7:     var_188.Text = 1
  loc_15B2556:     Set var_184 = Me.Txt
  loc_15B255C:     Call 0.Method_CmdRate_Click0 (CInt(&H2B), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_15B2564:     var_188.Text = 1
  loc_15B25D3:     Set var_184 = Me.Txt
  loc_15B25D9:     Call 0.Method_CmdRate_Click0 (CInt(&H2C), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_15B25E1:     var_188.Text = 1
  loc_15B2650:     Set var_184 = Me.Txt
  loc_15B2656:     Call 0.Method_CmdRate_Click0 (CInt(&H2D), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_15B265E:     var_188.Text = 1
  loc_15B26CD:     Set var_184 = Me.Txt
  loc_15B26D3:     Call 0.Method_CmdRate_Click0 (CInt(&H38), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_15B26DB:     var_188.Text = 1
  loc_15B274A:     Set var_184 = Me.Txt
  loc_15B2750:     Call 0.Method_CmdRate_Click0 (CInt(&H39), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_15B2758:     var_188.Text = 1
  loc_15B2772:   End If
  loc_15B27B1:   If (Me.Recordset15.Fields.Item("OccType").Value = "Extra Person") Then
  loc_15B27EB:     Set var_184 = Me.LblName
  loc_15B27F1:     Call 0.Method_CmdRate_Click0 (&H11, var_188)
  loc_15B27F9:     var_188.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_15B2862:     Set var_184 = Me.Txt
  loc_15B2868:     Call 0.Method_CmdRate_Click0 (CInt(&H2E), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_15B2870:     var_188.Text = 1
  loc_15B28DF:     Set var_184 = Me.Txt
  loc_15B28E5:     Call 0.Method_CmdRate_Click0 (CInt(&H2F), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_15B28ED:     var_188.Text = 1
  loc_15B295C:     Set var_184 = Me.Txt
  loc_15B2962:     Call 0.Method_CmdRate_Click0 (CInt(&H30), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_15B296A:     var_188.Text = 1
  loc_15B29D9:     Set var_184 = Me.Txt
  loc_15B29DF:     Call 0.Method_CmdRate_Click0 (CInt(&H31), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_15B29E7:     var_188.Text = 1
  loc_15B2A56:     Set var_184 = Me.Txt
  loc_15B2A5C:     Call 0.Method_CmdRate_Click0 (CInt(&H32), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_15B2A64:     var_188.Text = 1
  loc_15B2AD3:     Set var_184 = Me.Txt
  loc_15B2AD9:     Call 0.Method_CmdRate_Click0 (CInt(&H38), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_15B2AE1:     var_188.Text = 1
  loc_15B2B50:     Set var_184 = Me.Txt
  loc_15B2B56:     Call 0.Method_CmdRate_Click0 (CInt(&H39), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_15B2B5E:     var_188.Text = 1
  loc_15B2B78:   End If
  loc_15B2BB7:   If (Me.Recordset15.Fields.Item("OccType").Value = "Weekend") Then
  loc_15B2BF1:     Set var_184 = Me.LblName
  loc_15B2BF7:     Call 0.Method_CmdRate_Click0 (&H12, var_188)
  loc_15B2BFF:     var_188.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_15B2C68:     Set var_184 = Me.Txt
  loc_15B2C6E:     Call 0.Method_CmdRate_Click0 (CInt(&H33), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_15B2C76:     var_188.Text = 1
  loc_15B2CE5:     Set var_184 = Me.Txt
  loc_15B2CEB:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_15B2CF3:     var_188.Text = 1
  loc_15B2D62:     Set var_184 = Me.Txt
  loc_15B2D68:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_15B2D70:     var_188.Text = 1
  loc_15B2DDF:     Set var_184 = Me.Txt
  loc_15B2DE5:     Call 0.Method_CmdRate_Click0 (CInt(&H36), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_15B2DED:     var_188.Text = 1
  loc_15B2E5C:     Set var_184 = Me.Txt
  loc_15B2E62:     Call 0.Method_CmdRate_Click0 (CInt(&H37), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_15B2E6A:     var_188.Text = 1
  loc_15B2ED9:     Set var_184 = Me.Txt
  loc_15B2EDF:     Call 0.Method_CmdRate_Click0 (CInt(&H38), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_15B2EE7:     var_188.Text = 1
  loc_15B2F56:     Set var_184 = Me.Txt
  loc_15B2F5C:     Call 0.Method_CmdRate_Click0 (CInt(&H39), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_15B2F64:     var_188.Text = 1
  loc_15B2F7E:   End If
  loc_15B2F84:   var_88.MoveNext
  loc_15B2F89:   GoTo loc_15B1F51
  loc_15B2F8C: End If
  loc_15B2F91: Set var_88 = Nothing
  loc_15B2F94: Exit Sub
  loc_15B2F95: ' Referenced from: 15B1D40
  loc_15B2F95: Proc_6_60_E62BC4(1)
  loc_15B2F9A: Exit Sub
End Sub

Private Sub Picture1_DblClick() '105B6FC
  'Data Table: 4FADD8
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105B4B4: On Error Goto loc_105B69D
  loc_105B4BB: Set var_88 = Me.TopCtrl1
  loc_105B4C1: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105B4D5: Set var_A0 = Me.TopCtrl1
  loc_105B4DB: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105B501: If ( And (CStr() <> "Edit")) Then
  loc_105B504:   Exit Sub
  loc_105B505: End If
  loc_105B515: Me.CDlg.Filter = "*.*"
  loc_105B52D: Me.CDlg.Action = 1
  loc_105B53F: Me.CDlg.FileName = 
  loc_105B547: var_9C = CStr()
  loc_105B554: Me.Picture1.Tag = var_9C
  loc_105B570: Me.CDlg.FileName = 
  loc_105B578: var_B0 = CVar(CStr()) 'String
  loc_105B57E: var_E4 = Trim(var_B0)
  loc_105B587: Set var_A0 = Me.CDlg
  loc_105B58D: var_A0.FileName = 
  loc_105B5AB: var_F4 = Right(var_E4, 3)
  loc_105B5E6: var_D4 = "AVI"
  loc_105B614: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105B625:   var_C4 = "Invalid Format"
  loc_105B630:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105B643: Else
  loc_105B65A:   Set var_88 = Me.CDlg
  loc_105B660:   var_88.FileName = var_C4
  loc_105B668:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105B672:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105B687:   Me.Picture1.Picture = var_A0
  loc_105B69C: End If
  loc_105B69C: Exit Sub
  loc_105B69D: ' Referenced from: 105B4B4
  loc_105B6A5: Set var_88 = Err()
  loc_105B6AB: Call 0.Method_arg_1C (var_1B0)
  loc_105B6BC: If (var_1B0 <> 0) Then
  loc_105B6D5:   Set var_88 = Err()
  loc_105B6DB:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105B6E6:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105B6F9: End If
  loc_105B6F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EB0840
  'Data Table: 4FADD8
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EB07AC: On Error Goto loc_EB0837
  loc_EB07BC: Me.LblUser.Caption = vbNullString
  loc_EB07D1: Me.LblLDt.Caption = vbNullString
  loc_EB07FC: Call Proc_26_43_E8A56C(Proc_5_1_100CB50("ADD", Me))
  loc_EB0807: Call Proc_26_41_FEC074(global_68)
  loc_EB0817: Set var_88 = Me.Txt
  loc_EB081D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H21))
  loc_EB0825: var_94.SetFocus
  loc_EB0831: Call Proc_26_46_126AE38(var_94)
  loc_EB0836: Exit Sub
  loc_EB0837: ' Referenced from: EB07AC
  loc_EB0837: Proc_6_60_E62BC4()
  loc_EB083C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EDC244
  'Data Table: 4FADD8
  loc_EDC198: On Error Goto loc_EDC23B
  loc_EDC1D2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EDC1F8:   Call Proc_26_43_E8A56C(Proc_5_1_100CB50("INI", Me))
  loc_EDC203:   Call Proc_26_42_17CB2E4(global_68)
  loc_EDC208: End If
  loc_EDC223: If (Me.Srate.Visible = &HFF) Then
  loc_EDC232:   Me.Srate.Visible = False
  loc_EDC23A: End If
  loc_EDC23A: Exit Sub
  loc_EDC23B: ' Referenced from: EDC198
  loc_EDC23B: Proc_6_60_E62BC4()
  loc_EDC240: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1364A88
  'Data Table: 4FADD8
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim unk_4FADE5 As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_D4 As Variant
  loc_1364260: On Error Goto loc_1364A2F
  loc_1364271: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_1364274:   Exit Sub
  loc_1364275: End If
  loc_13642B0: Set var_A0 = Me.Txt
  loc_13642B6: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H21), var_A4, var_A8, "Select Count(*) from PayCharge where (LOGSITE_CODE='" & MemVar_1F92078 & "') and RoomNo='", var_D4, -1)
  loc_13642D7: unk_4FADE5.Execute var_DC & var_A8 & "'", 0, var_F0
  loc_13642DF: var_100 = var_A4.Text.Fields
  loc_13642E7:  = var_DC.Item()
  loc_13642EF:  = var_F0.Value
  loc_1364320: If (var_100 > 0) Then
  loc_1364336:   var_D4 = "Sorry! Related Record Exist "
  loc_136433C:   MsgBox(var_D4, &H40, var_100, var_120, var_140)
  loc_136434C:   Exit Sub
  loc_136434D: End If
  loc_1364388: Set var_A0 = Me.Txt
  loc_136438E: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H21), var_A4, var_A8, "Select Count(*) from RoomOcc where  (LOGSITE_CODE='" & MemVar_1F92078 & "') and RoomNo='", var_D4, -1)
  loc_13643AF: unk_4FADE5.Execute var_DC & var_A8 & "'", 0, var_F0
  loc_13643B7: var_100 = var_A4.Text.Fields
  loc_13643BF:  = var_DC.Item()
  loc_13643C7:  = var_F0.Value
  loc_13643F8: If (var_100 > 0) Then
  loc_136440E:   var_D4 = "Sorry! Related Record Exist "
  loc_1364414:   MsgBox(var_D4, &H40, var_100, var_120, var_140)
  loc_1364424:   Exit Sub
  loc_1364425: End If
  loc_1364460: Set var_A0 = Me.Txt
  loc_1364466: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H21), var_A4, var_A8, "Select Count(*) from Booking where (LOGSITE_CODE='" & MemVar_1F92078 & "') and RoomNo='", var_D4, -1)
  loc_1364487: unk_4FADE5.Execute var_DC & var_A8 & "'", 0, var_F0
  loc_136448F: var_100 = var_A4.Text.Fields
  loc_1364497:  = var_DC.Item()
  loc_136449F:  = var_F0.Value
  loc_13644D0: If (var_100 > 0) Then
  loc_13644EC:   MsgBox("Sorry! Related Record Exist ", &H40, var_100, var_120, var_140)
  loc_13644FC:   Exit Sub
  loc_13644FD: End If
  loc_1364534: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_120, var_140) = 6) Then
  loc_1364539:   var_96 = 0
  loc_1364545:   unk_4FADE5.BeginTrans var_144
  loc_136454C:   var_96 = &HFF
  loc_1364560:   var_94 = Me.Bookmark 'Variant
  loc_13645BA:   unk_4FADE5.Execute CStr("Delete From RoomMast Where Code='" & Me.Fields.Item("SearchCode").Value & "' AND TYPE='RO'"), var_140, -1
  loc_1364605:   var_16C = 0
  loc_1364618:   var_164 = 0
  loc_1364623:   var_160 = 0
  loc_1364636:   var_158 = 0
  loc_1364641:   var_154 = 0
  loc_1364654:   var_14C = 0
  loc_1364699:   Proc_154_5_10E33A4(MemVar_1F92044, "RoomMast", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), "Type", &HC8, "RO")
  loc_1364717:   unk_4FADE5.Execute CStr("Delete From RoomMast1 Where RoomCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_1364762:   var_16C = 0
  loc_1364775:   var_164 = 0
  loc_1364780:   var_160 = 0
  loc_1364793:   var_158 = 0
  loc_136479E:   var_154 = 0
  loc_13647B1:   var_14C = 0
  loc_13647FA:   Proc_154_5_10E33A4(MemVar_1F92044, "RoomMast1", "RoomCode", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_136486A:   var_120 = "Delete From RateList Where RoomNo='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1364878:   unk_4FADE5.Execute CStr(var_120), var_140, -1
  loc_13648C3:   var_16C = 0
  loc_13648D6:   var_164 = 0
  loc_13648E1:   var_160 = 0
  loc_13648F4:   var_158 = 0
  loc_13648FF:   var_154 = 0
  loc_1364912:   var_14C = 0
  loc_1364952:   var_9C = "RateList"
  loc_136495B:   Proc_154_5_10E33A4(MemVar_1F92044, var_9C, "RoomNo", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1364989:   unk_4FADE5.CommitTrans
  loc_1364990:   var_96 = 0
  loc_136499E:   Me.Requery -1
  loc_13649AE:   Me.Requery -1
  loc_13649CE:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_13649DB:     Me.Bookmark = var_94
  loc_13649E3:   Else
  loc_13649F7:     If (Me.EOF = 0) Then
  loc_1364A00:       Me.MoveLast
  loc_1364A05:     End If
  loc_1364A05:   End If
  loc_1364A05:   Call Proc_26_42_17CB2E4(var_96, var_14C, 0, var_154, var_158)
  loc_1364A26:   Proc_5_0_110649C(&HFF, Me, global_68, 0)
  loc_1364A2E: End If
  loc_1364A2E: Exit Sub
  loc_1364A2F: ' Referenced from: 1364260
  loc_1364A35: If (var_96 = &HFF) Then
  loc_1364A3E:   unk_4FADE5.RollbackTrans
  loc_1364A43: End If
  loc_1364A4B: Set var_A0 = Err()
  loc_1364A51: Call 0.Method_arg_2C (var_9C, 0, var_160)
  loc_1364A72: MsgBox(CVar(var_9C), &H30, " Deletion Error ", var_120, var_140)
  loc_1364A85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA44A8
  'Data Table: 4FADD8
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_FA4328: On Error Goto loc_FA4465
  loc_FA4338: Me.LblUser.Caption = vbNullString
  loc_FA434D: Me.LblLDt.Caption = vbNullString
  loc_FA4363: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_FA4366:   Exit Sub
  loc_FA4367: End If
  loc_FA437E: If (Me.RecordCount > 0) Then
  loc_FA43A4:   Call Proc_26_43_E8A56C(Proc_5_1_100CB50("EDIT", Me))
  loc_FA43BD:   Set var_88 = Me.Txt
  loc_FA43C3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H21), var_98)
  loc_FA43CB:   var_90 = var_98.Text
  loc_FA43D6:   global_84 = var_90
  loc_FA43F1:   Set var_88 = Me.Txt
  loc_FA43F7:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H21), var_98)
  loc_FA43FF:   var_98.Enabled = False
  loc_FA4416:   Set var_88 = Me.Txt
  loc_FA441C:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA4424:   var_98.SetFocus
  loc_FA4433: Else
  loc_FA4454:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FA4464: End If
  loc_FA4464: Exit Sub
  loc_FA4465: ' Referenced from: FA4328
  loc_FA446D: Set var_88 = Err()
  loc_FA4473: Call 0.Method_arg_2C (var_90)
  loc_FA4494: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_FA44A7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15BD8
  'Data Table: 4FADD8
  loc_E15BCD: Me.Global.Unload Me
  loc_E15BD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC80FC
  'Data Table: 4FADD8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC805C: On Error Goto loc_EC80F4
  loc_EC8076: If (Me.RecordCount <= 0) Then
  loc_EC807F:   var_B8 = "Information"
  loc_EC809A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC80AA:   Exit Sub
  loc_EC80AB: End If
  loc_EC80B2: var_10C = "Select RoomMast.Code as SearchCode,RoomMast.Code, RoomMast.Name,RoomCat.Name Category,Depart.Name as [Maid Station],RoomMast.MultPer [Max Person],RoomMast.InclCount [Incl. Room Count],RoomMast.DoorLockID FROM RoomMast Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat Left Join Depart ON RoomMast.MaidStation = Depart.Code where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC80B9: MemVar_1F920E4 = var_10C & "' or RoomMast.LOGSITE_CODE='HO') and RoomMast.Type in ('RO','CO')  Order by RoomMast.Name"
  loc_EC80C6: MemVar_1F92120 = Me
  loc_EC80D3: Proc_6_126_F1BCC0("1000,1600,2400,2400,800,1000,1500")
  loc_EC80EE: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC80F3: Exit Sub
  loc_EC80F4: ' Referenced from: EC805C
  loc_EC80F4: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC80F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2C958
  'Data Table: 4FADD8
  loc_E2C948: Proc_5_0_110649C(&HFF, Me)
  loc_E2C950: Call Proc_26_42_17CB2E4(global_68)
  loc_E2C955: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C8F8
  'Data Table: 4FADD8
  loc_E2C8E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2C8F0: Call Proc_26_42_17CB2E4(global_68)
  loc_E2C8F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2C898
  'Data Table: 4FADD8
  loc_E2C888: Proc_5_0_110649C(&HFF, Me)
  loc_E2C890: Call Proc_26_42_17CB2E4(global_68)
  loc_E2C895: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2C838
  'Data Table: 4FADD8
  Dim arg_60FF As Double
  loc_E2C828: Proc_5_0_110649C(&HFF, Me)
  loc_E2C830: Call Proc_26_42_17CB2E4(global_68)
  loc_E2C835: Exit Sub
  loc_E2C836: arg_60FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '14BA224
  'Data Table: 4FADD8
  Dim var_B4 As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_4FADE5 As Connection15
  Dim var_C0 As Variant
  Dim var_AC As Recordset15
  Dim var_A8 As Recordset15
  Dim var_100 As Recordset15
  Dim var_E0 As Variant
  Dim var_BC As Fields15
  Dim var_110 As String
  Dim var_F0 As Variant
  Dim var_120 As Variant
  Dim var_140 As String
  Dim var_C4 As String
  Dim var_B0 As Recordset15
  Dim var_9C As Recordset15
  Dim var_FA As Integer
  loc_14B9540: On Error Goto loc_14BA21B
  loc_14B9547: Set var_9C = New 
  loc_14B9552: Set var_9C = Proc_3_21_10D0854(var_9C)
  loc_14B9569: var_B4 = "SELECT R.Code AS RoomCode, R.Name AS RoomName, R.Extension, R.MultPer, R.MaidStation, R.InclCount, roomcat.Name AS Roomcategory FROM (RoomMast AS R LEFT JOIN roomcat ON R.RoomCat = roomcat.Code)" & "where (R.LOGSITE_CODE='"
  loc_14B9588: Set var_BC = Me.Txt
  loc_14B958E: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H21), var_C0, var_C4, var_B4 & MemVar_1F92078 & "' or R.LOGSITE_CODE='HO') and R.code='")
  loc_14B9596: var_F0 = Me.Txt.Text
  loc_14B959F: var_CC = -1 & var_C4
  loc_14B95AF: unk_4FADE5.Execute var_CC & "'", var_F4, 
  loc_14B95BA: Set var_A8 = var_F4
  loc_14B95DF: var_B4 = "SELECT RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT LEFT JOIN roomcat ON (RT.RoomCat = Roomcat.Code) " & "where (RT.LOGSITE_CODE='"
  loc_14B9604: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H21), var_C0)
  loc_14B960C: var_C4 = var_C0.Text
  loc_14B9649: unk_4FADE5.Execute var_B4 & MemVar_1F92078 & "' or RT.LOGSITE_CODE='HO') and RT.ROOMNO='" & var_C4 & "' AND RT.CODE='*'", var_F0, -1
  loc_14B9671: If (Me.Txt.RecordCount <= 0) Then
  loc_14B967B:   var_B4 = "SELECT roomcat.Name AS Roomcategory, RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT LEFT JOIN roomcat ON (RT.RoomCat = Roomcat.Code)" & "where (RT.LOGSITE_CODE='"
  loc_14B9689:   var_C8 = var_B4 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND RT.ROOMCat='"
  loc_14B969A:   Set var_BC = Me.Txt
  loc_14B96A0:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_C0, var_C4)
  loc_14B96A8:   var_C8 = var_C0.Tag
  loc_14B96E5:   unk_4FADE5.Execute var_BC & var_C4 & "' AND RT.CODE='*' AND RT.RoomNo ='*****'", var_F0, -1
  loc_14B96F0:   Set var_AC = var_BC
  loc_14B96F9: End If
  loc_14B970D: If (var_A8.RecordCount > 0) Then
  loc_14B9724:   If (var_AC.RecordCount > 0) Then
  loc_14B972A:     var_AC.MoveFirst
  loc_14B972F:     ' Referenced from: 14B9CB9
  loc_14B973E:     If Not(var_AC.EOF) Then
  loc_14B9744:       Set var_100 = var_9C 
  loc_14B9753:       var_100.AddNew var_E0, var_110
  loc_14B977A:       var_F0 = var_A8.Fields.Item("RoomCode").Value
  loc_14B978C:       var_100.Collect = "Code"
  loc_14B97BD:       var_F0 = var_A8.Fields.Item("RoomName").Value
  loc_14B97CF:       var_100.Collect = "RoomName"
  loc_14B9800:       var_F0 = var_A8.Fields.Item("RoomCategory").Value
  loc_14B9812:       var_100.Collect = "RoomCategory"
  loc_14B9843:       var_F0 = var_A8.Fields.Item("Extension").Value
  loc_14B9855:       var_100.Collect = "Extention"
  loc_14B9886:       var_F0 = var_A8.Fields.Item("MultPer").Value
  loc_14B9898:       var_100.Collect = "MultiPer"
  loc_14B98CF:       var_120 = CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("MaidStation")), CVar(var_A8.Fields.Item("MaidStation")), CVar(var_A8.Fields.Item("MaidStation")), CVar(var_A8.Fields.Item("MaidStation")))) 'String
  loc_14B98DC:       var_100.Collect = "MaidStation"
  loc_14B9951:       var_100.Collect = "InclCount"
  loc_14B9992:       var_120 = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("OccType")), IIf((var_A8.Fields.Item("InclCount").Value = "Y"), "Yes", "No"), var_120)) 'String
  loc_14B999F:       var_100.Collect = "OccType"
  loc_14B99D4:       Proc_6_39_E7C810(var_120, CVar(var_AC.Fields.Item("Rate1")), var_120)
  loc_14B9A06:       var_100.Collect = "Rate1"
  loc_14B9A3F:       Proc_6_39_E7C810(var_120, CVar(var_AC.Fields.Item("Rate2")), Format(var_120, "0.00"), 1)
  loc_14B9A71:       var_100.Collect = "Rate2"
  loc_14B9AAA:       Proc_6_39_E7C810(var_120, CVar(var_AC.Fields.Item("Rate3")), Format(var_120, "0.00"), 1, 1)
  loc_14B9ADC:       var_100.Collect = "Rate3"
  loc_14B9B15:       Proc_6_39_E7C810(var_120, CVar(var_AC.Fields.Item("Rate4")), Format(var_120, "0.00"), 1, 1)
  loc_14B9B47:       var_100.Collect = "Rate4"
  loc_14B9B80:       Proc_6_39_E7C810(var_120, CVar(var_AC.Fields.Item("Rate5")), Format(var_120, "0.00"), 1, 1)
  loc_14B9BB2:       var_100.Collect = "Rate5"
  loc_14B9BEB:       Proc_6_39_E7C810(var_120, CVar(var_AC.Fields.Item("RateW")), Format(var_120, "0.00"), 1, 1)
  loc_14B9C1D:       var_100.Collect = "WeekRate"
  loc_14B9C33:       var_E0 = "RateM"
  loc_14B9C47:       var_C0 = var_AC.Fields.Item(var_E0)
  loc_14B9C4F:       var_F0 = CVar(var_C0) 'Address
  loc_14B9C56:       Proc_6_39_E7C810(var_120, var_F0, Format(var_120, "0.00"), 1, 1)
  loc_14B9C65:       var_110 = "0.00"
  loc_14B9C6A:       var_130 = var_110
  loc_14B9C76:       var_150 = Format(var_120, var_130)
  loc_14B9C7F:       var_140 = "MonRate"
  loc_14B9C88:       var_100.Collect = var_140
  loc_14B9CA6:       var_100.Update var_E0, var_110
  loc_14B9CAD:       Set var_100 = Nothing 
  loc_14B9CB4:       var_AC.MoveNext
  loc_14B9CB9:       GoTo loc_14B972F
  loc_14B9CBC:     End If
  loc_14B9CBC:   End If
  loc_14B9CBC: End If
  loc_14B9CDA: Set var_BC = Me.Txt
  loc_14B9CE0: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H21), var_C0, var_B4, "Select ROOMFEATURE.Name as RoomFeature From RoomMast1 R1 left join ROOMFEATURE on R1.RoomFeat=ROOMFEATURE.code where R1.RoomCode='", var_F0, -1, var_F4)
  loc_14B9CE8: var_150 = var_C0.Text
  loc_14B9D01: unk_4FADE5.Execute 1 & var_B4 & "'", 1, 1
  loc_14B9D0C: Set var_B0 = var_F4
  loc_14B9D38: If (var_B0.RecordCount > 0) Then
  loc_14B9D3E:   var_B0.MoveFirst
  loc_14B9D43:   ' Referenced from: 14B9DC1
  loc_14B9D52:   If Not(var_B0.EOF) Then
  loc_14B9D60:     var_9C.AddNew var_E0, var_110
  loc_14B9D68:     var_E0 = "RoomFeature"
  loc_14B9D7C:     var_C0 = var_B0.Fields.Item(var_E0)
  loc_14B9D8D:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_C0), CVar(var_C0))) 'String
  loc_14B9D91:     var_110 = "RoomFeature"
  loc_14B9D9A:     var_9C.Collect = var_110
  loc_14B9DB4:     var_9C.Update var_E0, var_110
  loc_14B9DBC:     var_B0.MoveNext
  loc_14B9DC1:     GoTo loc_14B9D43
  loc_14B9DC4:   End If
  loc_14B9DC4: End If
  loc_14B9DCA: var_F8 = var_9C.RecordCount
  loc_14B9DD8: If (var_F8 <= 0) Then
  loc_14B9DE1:   Call 0.Method_arg_50 (var_B4, var_120)
  loc_14B9DFC:   var_F0 = "** No Records Found to Print **"
  loc_14B9E02:   MsgBox(var_F0, &H40, CVar(var_B4), var_130, var_150)
  loc_14B9E12:   Exit Sub
  loc_14B9E13: End If
  loc_14B9E29: Set var_BC = var_9C 
  loc_14B9E35: var_FA = CreateFieldDefFile(var_BC, MemVar_1F920B4 & "\RoomMast.ttx", &HFF)
  loc_14B9E3F: Set var_9C = var_BC
  loc_14B9E45: var_E0 = CVar(var_FA) 'Integer
  loc_14B9E48: var_98 = var_E0 'Variant
  loc_14B9E64: var_B4 = MemVar_1F920B4 & "\RoomMast.RPT"
  loc_14B9E6D: Call 0.Method_arg_1C (var_B4, var_E0, var_BC)
  loc_14B9E78: MemVar_1F921E4 = var_BC
  loc_14B9E93: Call 0.Method_arg_90 (var_BC, var_F8, var_9E, 1)
  loc_14B9E9B: Call 0.Method_arg_24 (var_FA, var_F0)
  loc_14B9EA7: For var_194 =  To CInt(var_F8): var_BC = var_194 'Integer
  loc_14B9EC0:   Call 0.Method_arg_90 (var_BC, CLng(var_9E))
  loc_14B9EC8:   Call 0.Method_arg_20 (var_C0)
  loc_14B9ED0:   Call 0.Method_arg_30 (var_B4)
  loc_14B9ED8:   var_198 = var_B4
  loc_14B9EEA:   If (var_198 = "Title") Then
  loc_14B9F00:     Call 0.Method_arg_90 (var_BC, CLng(var_9E))
  loc_14B9F08:     Call 0.Method_arg_20 (var_C0)
  loc_14B9F10:     Call 0.Method_arg_38 ("'ROOM MASTER'")
  loc_14B9F1F:   Else
  loc_14B9F27:     If (var_198 = "rate1") Then
  loc_14B9F39:       Set var_BC = Me.LblName
  loc_14B9F3F:       Call 0.Method_TopCtrl1_UnknownEvent_140 (9, var_C0)
  loc_14B9F6A:       Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14B9F72:       Call 0.Method_arg_20 (var_19C)
  loc_14B9F7A:       Call 0.Method_arg_38 ("'" & var_C0.Caption & "'")
  loc_14B9F96:     Else
  loc_14B9F9E:       If (var_198 = "rate2") Then
  loc_14B9FB0:         Set var_BC = Me.LblName
  loc_14B9FB6:         Call 0.Method_TopCtrl1_UnknownEvent_140 (&HA, var_C0)
  loc_14B9FE1:         Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14B9FE9:         Call 0.Method_arg_20 (var_19C)
  loc_14B9FF1:         Call 0.Method_arg_38 ("'" & var_C0.Caption & "'")
  loc_14BA00D:       Else
  loc_14BA015:         If (var_198 = "rate3") Then
  loc_14BA027:           Set var_BC = Me.LblName
  loc_14BA02D:           Call 0.Method_TopCtrl1_UnknownEvent_140 (&HB, var_C0)
  loc_14BA058:           Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14BA060:           Call 0.Method_arg_20 (var_19C)
  loc_14BA068:           Call 0.Method_arg_38 ("'" & var_C0.Caption & "'")
  loc_14BA084:         Else
  loc_14BA08C:           If (var_198 = "rate4") Then
  loc_14BA09E:             Set var_BC = Me.LblName
  loc_14BA0A4:             Call 0.Method_TopCtrl1_UnknownEvent_140 (&HC, var_C0)
  loc_14BA0CF:             Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14BA0D7:             Call 0.Method_arg_20 (var_19C)
  loc_14BA0DF:             Call 0.Method_arg_38 ("'" & var_C0.Caption & "'")
  loc_14BA0FB:           Else
  loc_14BA103:             If (var_198 = "rate5") Then
  loc_14BA115:               Set var_BC = Me.LblName
  loc_14BA11B:               Call 0.Method_TopCtrl1_UnknownEvent_140 (&HD, var_C0)
  loc_14BA123:               var_B4 = var_C0.Caption
  loc_14BA146:               Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14BA14E:               Call 0.Method_arg_20 (var_19C)
  loc_14BA156:               Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_14BA16F:             End If
  loc_14BA16F:           End If
  loc_14BA16F:         End If
  loc_14BA16F:       End If
  loc_14BA16F:     End If
  loc_14BA16F:   End If
  loc_14BA172: Next var_194 'Integer
  loc_14BA190: Call 0.Method_arg_64 (var_BC, CVar(var_9C))
  loc_14BA198: Call 0.Method_arg_2C (var_110)
  loc_14BA1A6: Call 0.Method_arg_150 (var_140)
  loc_14BA1B1: Call 0.Method_arg_50 (var_B4)
  loc_14BA1BB: Set var_C0 = Nothing
  loc_14BA1D5: Set var_BC = MemVar_1F921E4 
  loc_14BA1E1: Proc_6_99_1483714(var_BC, 0, var_B4)
  loc_14BA1EC: MemVar_1F921E4 = var_BC
  loc_14BA1FF: Set var_9C = Nothing
  loc_14BA207: Set var_AC = Nothing
  loc_14BA20F: Set var_B0 = Nothing
  loc_14BA217: Set var_A8 = Nothing
  loc_14BA21A: Exit Sub
  loc_14BA21B: ' Referenced from: 14B9540
  loc_14BA21B: Proc_6_60_E62BC4(&HFF)
  loc_14BA220: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3E490
  'Data Table: 4FADD8
  Dim Me As Recordset15
  loc_E3E467: Me.Requery -1
  loc_E3E477: Me.Requery -1
  loc_E3E487: Me.Requery -1
  loc_E3E48C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '17F9B94
  'Data Table: 4FADD8
  Dim unk_4FADE5 As Connection15
  Dim var_C0 As String
  Dim var_D0 As String
  Dim var_B8 As Variant
  Dim var_D4 As String
  Dim var_118 As Variant
  Dim var_F8 As Variant
  Dim var_128 As Variant
  Dim var_E8 As Variant
  Dim var_138 As Variant
  Dim var_CC As String
  Dim var_164 As Variant
  Dim var_18C As TextBox
  Dim var_1D4 As TextBox
  Dim var_7B4 As Double
  Dim var_21C As TextBox
  Dim var_278 As TextBox
  Dim var_2D4 As Variant
  Dim Me As Recordset15
  Dim var_390 As Fields15
  Dim var_3A4 As Variant
  Dim var_61C As TextBox
  Dim var_7BC As Double
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_270 As Variant
  Dim var_28C As Variant
  Dim var_36C As Variant
  Dim var_38C As Variant
  Dim var_3E4 As Variant
  Dim var_43C As Variant
  Dim var_494 As Variant
  Dim var_5C4 As Variant
  Dim var_70C As Variant
  Dim var_788 As String
  Dim var_BC As Variant
  Dim var_15C As Variant
  Dim var_108 As Variant
  Dim var_AE As Integer
  Dim var_220 As String
  Dim var_7DC As Double
  Dim var_7E4 As Double
  Dim var_2C4 As TextBox
  Dim var_7EC As Double
  Dim var_32C As TextBox
  Dim var_7F4 As Double
  Dim var_7FC As Double
  Dim var_240 As Variant
  Dim var_2F4 As Variant
  Dim var_B4 As MSHFlexGrid
  loc_17F7AEC: On Error Goto loc_17F9B3F
  loc_17F7AF3: var_86 = CByte(0) 'Byte
  loc_17F7B02: Set var_B4 = Me.Txt
  loc_17F7B08: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21))
  loc_17F7B19: Set var_BC = var_B8
  loc_17F7B31: If (Proc_6_27_EA565C(var_BC, "Room No.") = 0) Then
  loc_17F7B3B:   Call Txt_GotFocus(CInt(&H21))
  loc_17F7B40:   Exit Sub
  loc_17F7B41: End If
  loc_17F7B44: Call Proc_26_40_107297C(var_C2)
  loc_17F7B4F: If (var_C2 = &HFF) Then
  loc_17F7B52:   Exit Sub
  loc_17F7B53: End If
  loc_17F7B5C: unk_4FADE5.BeginTrans var_C8
  loc_17F7B65: var_86 = CByte(1) 'Byte
  loc_17F7B95: Set var_B4 = Me.Txt
  loc_17F7B9B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, var_CC, "Delete From RateList Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RoomNO='")
  loc_17F7BA3: var_F8 = var_B8.Text
  loc_17F7BAC: var_D4 = -1 & var_CC
  loc_17F7BBC: unk_4FADE5.Execute var_D4 & "' And Code='*'", var_BC, var_B8
  loc_17F7C03: Set var_B4 = Me.Txt
  loc_17F7C09: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, CVar("Delete From ROOMMast1 Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RoomCode='"))
  loc_17F7C37: unk_4FADE5.Execute CStr(var_158 & Trim(CVar(var_B8)) & "'"), -1, var_BC
  loc_17F7C82: Set var_B4 = Me.Txt
  loc_17F7C88: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, CVar("Delete From ROOMMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  and Code='"))
  loc_17F7CB6: unk_4FADE5.Execute CStr(var_158 & Trim(CVar(var_B8)) & "' AND TYPE='RO'"), -1, var_BC
  loc_17F7CE6: Set var_B4 = Me.Txt
  loc_17F7CEC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B8)
  loc_17F7D04: Set var_BC = Me.Txt
  loc_17F7D0A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21))
  loc_17F7D12: var_F8 = CVar(var_15C) 'Address
  loc_17F7D2C: Set var_160 = Me.Txt
  loc_17F7D32: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_164)
  loc_17F7D4D: Set var_188 = Me.Txt
  loc_17F7D53: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_18C)
  loc_17F7D6E: Set var_1D0 = Me.Txt
  loc_17F7D74: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1D4)
  loc_17F7D89: var_7B4 = Val(var_1D4.Text)
  loc_17F7D9A: Set var_218 = Me.Txt
  loc_17F7DA0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_21C, var_220)
  loc_17F7DB6: Proc_6_17_EAA2B0(var_240, CVar(var_220))
  loc_17F7DC9: Set var_274 = Me.Txt
  loc_17F7DCF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_278)
  loc_17F7DD7: var_27C = var_278.Tag
  loc_17F7DE7: Set var_2C0 = Me.Txt
  loc_17F7DED: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2C4)
  loc_17F7E1C: Set var_328 = Me.Txt
  loc_17F7E22: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_32C)
  loc_17F7E63: var_3A4 = Me.Fields.Item("TaxStru")
  loc_17F7E7B: Set var_3E8 = Me.Txt
  loc_17F7E81: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_3EC)
  loc_17F7EA0: Set var_440 = Me.Txt
  loc_17F7EA6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_444)
  loc_17F7EC5: Set var_498 = Me.Txt
  loc_17F7ECB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_49C)
  loc_17F7EEA: Set var_4F0 = Me.Txt
  loc_17F7EF0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_4F4)
  loc_17F7F12: Proc_6_7_F25D88(var_5E4, Date)
  loc_17F7F25: Set var_618 = Me.Txt
  loc_17F7F2B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_61C)
  loc_17F7F33: var_620 = var_61C.Text
  loc_17F7F40: var_7BC = Val(var_620)
  loc_17F7F62: var_66C = Me.Picture1.Tag
  loc_17F7F95: Set var_730 = Me.Txt
  loc_17F7F9B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3A), var_734)
  loc_17F7FC3: var_CC = "Insert Into RoomMast(Type,Code,Name,RoomCat,MultPer,RevCode,MaidStation,InclCount,RestCode,TaxStru,ConRoom1,ConRoom2,ConRoom3,ConRoom4,Site_Code,U_Name,U_EntDt,U_AE,Extension,PicPath,LogSite_Code,DoorLockID)Values('" & var_B8.Tag
  loc_17F7FCA: var_118 = CVar(var_CC & "','") 'String
  loc_17F8023: var_270 = var_118 & Trim(var_F8) & "','" & CVar(var_164.Text) & "','" & CVar(var_18C.Tag) & "'," & CVar(var_21C.Tag) & "," & var_240 & ",'" 
  loc_17F8056: var_38C = var_270 & CVar(var_27C) & "','" & Left(Trim(CVar(var_2C4)), 1) & "','" & Left(Ucase(CVar(var_32C)), 4) & "','" 
  loc_17F8066: var_3E4 = var_38C & var_3A4.Value & "','" 
  loc_17F8086: var_494 = var_3E4 & Trim(CVar(var_3EC)) & "','" & Trim(CVar(var_444)) & "','" 
  loc_17F80CC: var_5C4 = var_494 & Trim(CVar(var_49C)) & "','" & Trim(CVar(var_4F4)) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_17F810A: var_70C = var_5C4 & var_5E4 & ",'A'," & CVar(var_7BC) & ",'" & IIf((Me.Picture1.Visible = &HFF), CVar(var_66C), vbNullString) & "','" & CVar(MemVar_1F92078) 
  loc_17F8127: var_788 = CStr(var_70C & "','" & Trim(CVar(var_734)) & "')")
  loc_17F8131: unk_4FADE5.Execute var_788, var_7A8, -1
  loc_17F8213: Set var_B4 = Me.TopCtrl1
  loc_17F8219: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7AC)
  loc_17F8221: var_C0 = CStr(var_7BC)
  loc_17F8232: If (var_C0 = "Add") Then
  loc_17F825F:   Set var_B4 = Me.Txt
  loc_17F8265:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_C0, "Select Count(*) from RoomMast where RoomCat='", var_F8, -1)
  loc_17F826D:   var_BC = var_B8.Tag
  loc_17F827D:   var_D0 = var_15C & var_C0 & "'"
  loc_17F8286:   unk_4FADE5.Execute var_D0, 0, var_160
  loc_17F828E:   var_15C = var_BC.Fields
  loc_17F8296:    = var_15C.Item()
  loc_17F82A5:   Proc_6_39_E7C810(var_118)
  loc_17F82AE:   var_AE = CInt(var_118)
  loc_17F82E3:   var_C0 = CStr(var_AE)
  loc_17F82FF:   Set var_B4 = Me.Txt
  loc_17F8305:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_D0, "Update Roomcat set NoRooms=" & var_C0 & " Where Code='", var_F8)
  loc_17F830D:   -1 = var_B8.Tag
  loc_17F8326:   unk_4FADE5.Execute var_BC & var_D0 & "'", var_AE, CVar(var_160)
  loc_17F8349: Else
  loc_17F8373:   Set var_B4 = Me.Txt
  loc_17F8379:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_C0, "Select Count(*) from RoomMast where RoomCat='", var_F8)
  loc_17F8381:   -1 = var_B8.Tag
  loc_17F8391:   var_D0 = var_BC & var_C0 & "'"
  loc_17F839A:   unk_4FADE5.Execute var_D0, var_15C, 0
  loc_17F83AA:    = var_15C.Item()
  loc_17F83B9:   Proc_6_39_E7C810(var_118)
  loc_17F83C2:   var_AE = CInt(var_118)
  loc_17F8413:   Set var_B4 = Me.Txt
  loc_17F8419:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_D0, "Update Roomcat set NoRooms=" & CStr(var_AE) & " Where Code='", var_F8)
  loc_17F8421:   -1 = var_B8.Tag
  loc_17F8431:   var_220 = var_BC & var_D0 & "'"
  loc_17F843A:   unk_4FADE5.Execute var_220, var_AE, CVar(var_BC.Fields)
  loc_17F845A: End If
  loc_17F8468: Set var_B4 = Me.Txt
  loc_17F846E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B8)
  loc_17F8496: Set var_BC = Me.Txt
  loc_17F849C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_15C)
  loc_17F84C5: Set var_160 = Me.Txt
  loc_17F84CB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_164)
  loc_17F84F4: Set var_188 = Me.Txt
  loc_17F84FA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_18C)
  loc_17F8523: Set var_1D0 = Me.Txt
  loc_17F8529: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_1D4)
  loc_17F8568: If (((((CDbl(Val(var_B8.Text)) <> CDbl(0)) Or (CDbl(Val(var_15C.Text)) <> CDbl(0))) Or (CDbl(Val(var_164.Text)) <> CDbl(0))) Or (CDbl(Val(var_18C.Text)) <> CDbl(0))) Or (CDbl(Val(var_1D4.Text)) <> CDbl(0))) Then
  loc_17F8579:   Set var_B4 = Me.Txt
  loc_17F857F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_17F8587:   var_C0 = var_B8.Tag
  loc_17F85A8:   Set var_BC = Me.Txt
  loc_17F85AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_15C)
  loc_17F85B6:   var_CC = var_15C.Text
  loc_17F85C7:   Set var_160 = Me.LblName
  loc_17F85CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_164)
  loc_17F85E8:   Set var_188 = Me.Txt
  loc_17F85EE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_18C)
  loc_17F8603:   var_7B4 = Val(var_18C.Text)
  loc_17F8614:   Set var_1D0 = Me.Txt
  loc_17F861A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1D4)
  loc_17F862F:   var_7BC = Val(var_1D4.Text)
  loc_17F8640:   Set var_218 = Me.Txt
  loc_17F8646:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_21C, var_220)
  loc_17F865B:   var_7DC = Val(var_220)
  loc_17F866C:   Set var_274 = Me.Txt
  loc_17F8672:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_278, var_27C)
  loc_17F8687:   var_7E4 = Val(var_27C)
  loc_17F8698:   Set var_2C0 = Me.Txt
  loc_17F869E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_2C4, var_620)
  loc_17F86B3:   var_7EC = Val(var_620)
  loc_17F86C4:   Set var_328 = Me.Txt
  loc_17F86CA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_32C, var_66C)
  loc_17F86DF:   var_7F4 = Val(var_66C)
  loc_17F86F0:   Set var_390 = Me.Txt
  loc_17F86F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_3A4, var_788)
  loc_17F870B:   var_7FC = Val(var_788)
  loc_17F871C:   Proc_6_7_F25D88(var_38C, Date)
  loc_17F8725:   Set var_3E8 = Me.TopCtrl1
  loc_17F872B:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7FC)
  loc_17F876F:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_17F87C5:   var_214 = var_E8 & Trim(CVar(var_C0)) & "','" & CVar(var_CC) & "','*','" & CVar(var_164.Caption) & "'," & CVar(var_7B4) & "," & CVar(var_21C.Text) 
  loc_17F8829:   var_2F4 = var_214 & "," & CVar(var_278.Text) & "," & CVar(var_2C4.Text) & "," & CVar(var_32C.Text) & "," & CVar(var_3A4.Text) & "," & CVar(var_7FC) 
  loc_17F886F:   var_43C = var_2F4 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_38C & ",'" & IIf((CStr(var_3E4) = "Add"), "A", "E") 
  loc_17F8899:   unk_4FADE5.Execute CStr(var_43C & "','" & CVar(MemVar_1F92078) & "')"), var_494, -1
  loc_17F8939: End If
  loc_17F8947: Set var_B4 = Me.Txt
  loc_17F894D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_C0)
  loc_17F8955: var_3EC = var_B8.Text
  loc_17F8975: Set var_BC = Me.Txt
  loc_17F897B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_15C, var_CC)
  loc_17F8983: (CDbl(Val(var_C0)) <> CDbl(0)) = var_15C.Text
  loc_17F89A4: Set var_160 = Me.Txt
  loc_17F89AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_164)
  loc_17F89D3: Set var_188 = Me.Txt
  loc_17F89D9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_18C)
  loc_17F8A02: Set var_1D0 = Me.Txt
  loc_17F8A08: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_1D4)
  loc_17F8A47: If ((((var_7B4 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_164.Text)) <> CDbl(0))) Or (CDbl(Val(var_18C.Text)) <> CDbl(0))) Or (CDbl(Val(var_1D4.Text)) <> CDbl(0))) Then
  loc_17F8A58:   Set var_B4 = Me.Txt
  loc_17F8A5E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_17F8A66:   var_C0 = var_B8.Tag
  loc_17F8A87:   Set var_BC = Me.Txt
  loc_17F8A8D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_15C)
  loc_17F8A95:   var_CC = var_15C.Text
  loc_17F8AA6:   Set var_160 = Me.LblName
  loc_17F8AAC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HF, var_164)
  loc_17F8AC7:   Set var_188 = Me.Txt
  loc_17F8ACD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_18C)
  loc_17F8AE2:   var_7B4 = Val(var_18C.Text)
  loc_17F8AF3:   Set var_1D0 = Me.Txt
  loc_17F8AF9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_1D4)
  loc_17F8B0E:   var_7BC = Val(var_1D4.Text)
  loc_17F8B1F:   Set var_218 = Me.Txt
  loc_17F8B25:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_21C, var_220)
  loc_17F8B3A:   var_7DC = Val(var_220)
  loc_17F8B4B:   Set var_274 = Me.Txt
  loc_17F8B51:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_278, var_27C)
  loc_17F8B66:   var_7E4 = Val(var_27C)
  loc_17F8B77:   Set var_2C0 = Me.Txt
  loc_17F8B7D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_2C4, var_620)
  loc_17F8B92:   var_7EC = Val(var_620)
  loc_17F8BA3:   Set var_328 = Me.Txt
  loc_17F8BA9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_32C, var_66C)
  loc_17F8BBE:   var_7F4 = Val(var_66C)
  loc_17F8BCF:   Set var_390 = Me.Txt
  loc_17F8BD5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_3A4, var_788)
  loc_17F8BEA:   var_7FC = Val(var_788)
  loc_17F8BFB:   Proc_6_7_F25D88(var_38C, Date)
  loc_17F8C04:   Set var_3E8 = Me.TopCtrl1
  loc_17F8C0A:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7FC)
  loc_17F8C4E:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_17F8CA4:   var_214 = var_E8 & Trim(CVar(var_C0)) & "','" & CVar(var_CC) & "','*','" & CVar(var_164.Caption) & "'," & CVar(var_7B4) & "," & CVar(var_21C.Text) 
  loc_17F8D08:   var_2F4 = var_214 & "," & CVar(var_278.Text) & "," & CVar(var_2C4.Text) & "," & CVar(var_32C.Text) & "," & CVar(var_3A4.Text) & "," & CVar(var_7FC) 
  loc_17F8D4E:   var_43C = var_2F4 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_38C & ",'" & IIf((CStr(var_3E4) = "Add"), "A", "E") 
  loc_17F8D78:   unk_4FADE5.Execute CStr(var_43C & "','" & CVar(MemVar_1F92078) & "')"), var_494, -1
  loc_17F8E18: End If
  loc_17F8E26: Set var_B4 = Me.Txt
  loc_17F8E2C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B8, var_C0)
  loc_17F8E34: var_3EC = var_B8.Text
  loc_17F8E54: Set var_BC = Me.Txt
  loc_17F8E5A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_15C, var_CC)
  loc_17F8E62: (CDbl(Val(var_C0)) <> CDbl(0)) = var_15C.Text
  loc_17F8E83: Set var_160 = Me.Txt
  loc_17F8E89: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_164)
  loc_17F8EB2: Set var_188 = Me.Txt
  loc_17F8EB8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_18C)
  loc_17F8EE1: Set var_1D0 = Me.Txt
  loc_17F8EE7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_1D4)
  loc_17F8F26: If ((((var_7B4 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_164.Text)) <> CDbl(0))) Or (CDbl(Val(var_18C.Text)) <> CDbl(0))) Or (CDbl(Val(var_1D4.Text)) <> CDbl(0))) Then
  loc_17F8F37:   Set var_B4 = Me.Txt
  loc_17F8F3D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_17F8F45:   var_C0 = var_B8.Tag
  loc_17F8F66:   Set var_BC = Me.Txt
  loc_17F8F6C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_15C)
  loc_17F8F74:   var_CC = var_15C.Text
  loc_17F8F85:   Set var_160 = Me.LblName
  loc_17F8F8B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&H11, var_164)
  loc_17F8FA6:   Set var_188 = Me.Txt
  loc_17F8FAC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C)
  loc_17F8FC1:   var_7B4 = Val(var_18C.Text)
  loc_17F8FD2:   Set var_1D0 = Me.Txt
  loc_17F8FD8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_1D4)
  loc_17F8FED:   var_7BC = Val(var_1D4.Text)
  loc_17F8FFE:   Set var_218 = Me.Txt
  loc_17F9004:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_21C, var_220)
  loc_17F9019:   var_7DC = Val(var_220)
  loc_17F902A:   Set var_274 = Me.Txt
  loc_17F9030:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_278, var_27C)
  loc_17F9045:   var_7E4 = Val(var_27C)
  loc_17F9056:   Set var_2C0 = Me.Txt
  loc_17F905C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_2C4, var_620)
  loc_17F9071:   var_7EC = Val(var_620)
  loc_17F9082:   Set var_328 = Me.Txt
  loc_17F9088:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_32C, var_66C)
  loc_17F909D:   var_7F4 = Val(var_66C)
  loc_17F90AE:   Set var_390 = Me.Txt
  loc_17F90B4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_3A4, var_788)
  loc_17F90C9:   var_7FC = Val(var_788)
  loc_17F90DA:   Proc_6_7_F25D88(var_38C, Date)
  loc_17F90E3:   Set var_3E8 = Me.TopCtrl1
  loc_17F90E9:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7FC)
  loc_17F912D:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_17F9183:   var_214 = var_E8 & Trim(CVar(var_C0)) & "','" & CVar(var_CC) & "','*','" & CVar(var_164.Caption) & "'," & CVar(var_7B4) & "," & CVar(var_21C.Text) 
  loc_17F91E7:   var_2F4 = var_214 & "," & CVar(var_278.Text) & "," & CVar(var_2C4.Text) & "," & CVar(var_32C.Text) & "," & CVar(var_3A4.Text) & "," & CVar(var_7FC) 
  loc_17F922D:   var_43C = var_2F4 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_38C & ",'" & IIf((CStr(var_3E4) = "Add"), "A", "E") 
  loc_17F9257:   unk_4FADE5.Execute CStr(var_43C & "','" & CVar(MemVar_1F92078) & "')"), var_494, -1
  loc_17F92F7: End If
  loc_17F9305: Set var_B4 = Me.Txt
  loc_17F930B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_B8, var_C0)
  loc_17F9313: var_3EC = var_B8.Text
  loc_17F9333: Set var_BC = Me.Txt
  loc_17F9339: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_15C, var_CC)
  loc_17F9341: (CDbl(Val(var_C0)) <> CDbl(0)) = var_15C.Text
  loc_17F9362: Set var_160 = Me.Txt
  loc_17F9368: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_164)
  loc_17F9391: Set var_188 = Me.Txt
  loc_17F9397: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_18C)
  loc_17F93C0: Set var_1D0 = Me.Txt
  loc_17F93C6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_1D4)
  loc_17F9405: If ((((var_7B4 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_164.Text)) <> CDbl(0))) Or (CDbl(Val(var_18C.Text)) <> CDbl(0))) Or (CDbl(Val(var_1D4.Text)) <> CDbl(0))) Then
  loc_17F9416:   Set var_B4 = Me.Txt
  loc_17F941C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_17F9445:   Set var_BC = Me.Txt
  loc_17F944B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_15C)
  loc_17F9464:   Set var_160 = Me.LblName
  loc_17F946A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&H12, var_164)
  loc_17F9485:   Set var_188 = Me.Txt
  loc_17F948B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_18C)
  loc_17F94B1:   Set var_1D0 = Me.Txt
  loc_17F94B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_1D4)
  loc_17F94CC:   var_7BC = Val(var_1D4.Text)
  loc_17F94DD:   Set var_218 = Me.Txt
  loc_17F94E3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_21C, var_220)
  loc_17F94F8:   var_7DC = Val(var_220)
  loc_17F9509:   Set var_274 = Me.Txt
  loc_17F950F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_278, var_27C)
  loc_17F9524:   var_7E4 = Val(var_27C)
  loc_17F9535:   Set var_2C0 = Me.Txt
  loc_17F953B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_2C4, var_620)
  loc_17F9550:   var_7EC = Val(var_620)
  loc_17F9561:   Set var_328 = Me.Txt
  loc_17F9567:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_32C, var_66C)
  loc_17F957C:   var_7F4 = Val(var_66C)
  loc_17F958D:   Set var_390 = Me.Txt
  loc_17F9593:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_3A4, var_788)
  loc_17F95A8:   var_7FC = Val(var_788)
  loc_17F95AE:   var_36C = Date
  loc_17F95B9:   Proc_6_7_F25D88(var_38C, var_36C)
  loc_17F95C2:   Set var_3E8 = Me.TopCtrl1
  loc_17F95C8:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7FC)
  loc_17F960C:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_17F964E:   var_1CC = var_E8 & Trim(CVar(var_B8.Tag)) & "','" & CVar(var_15C.Text) & "','*','" & CVar(var_164.Caption) & "'," & CVar(Val(var_18C.Text)) 
  loc_17F9693:   var_28C = var_1CC & "," & CVar(var_21C.Text) & "," & CVar(var_278.Text) & "," & CVar(var_2C4.Text) & "," 
  loc_17F96B2:   var_2D4 = var_28C & CVar(var_32C.Text) & "," & CVar(var_3A4.Text) 
  loc_17F970C:   var_43C = var_2D4 & "," & CVar(var_7FC) & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & var_38C & ",'" & IIf((CStr(var_3E4) = "Add"), "A", "E") 
  loc_17F9736:   unk_4FADE5.Execute CStr(var_43C & "','" & CVar(MemVar_1F92078) & "')"), var_494, -1
  loc_17F97D6: End If
  loc_17F97F7: var_148 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_17F9801: For var_81C = 1 To "','": var_9C = var_81C 'Variant
  loc_17F980C:   var_E8 = CVar(CLng(var_9C)) 'Long
  loc_17F984E:   Set var_B8 = Me.FGrid1
  loc_17F987D:   If (1 And (CStr(var_B8.TextMatrix)) = "ü")) Then
  loc_17F988B:     Set var_B4 = Me.Txt
  loc_17F9891:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, CVar(CLng(var_9C)), (CStr(Me.FGrid1.TextMatrix)) <> vbNullString), 2)
  loc_17F98A0:     var_108 = Trim(CVar(var_B8))
  loc_17F98AA:     var_1BC = CVar(CLng(var_9C)) 'Long
  loc_17F98C2:     var_138 = Me.FGrid1.TextMatrix)
  loc_17F98EB:     var_19C = Me.FGrid1.TextMatrix)
  loc_17F9905:     Proc_6_7_F25D88(var_28C, Date, var_19C, 2, CVar(CLng(var_9C)), var_138)
  loc_17F990E:     Set var_160 = Me.TopCtrl1
  loc_17F9914:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_17F9937:     var_C0 = CStr(var_2D4)
  loc_17F9958:     var_E8 = "Insert Into RoomMast1(RoomCode,Sno,RoomFeat,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)Values('"
  loc_17F9960:     var_118 = var_E8 & var_108 
  loc_17F9969:     var_128 = var_118 & "'," 
  loc_17F99AE:     var_240 = var_128 & CVar(CStr(var_138)) & ",'" & CVar(CStr(var_19C)) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_17F99F8:     unk_4FADE5.Execute CStr(var_240 & "'," & var_28C & ",'" & IIf((var_C0 = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_36C, -1
  loc_17F9A50:   End If
  loc_17F9A53: Next var_81C 'Variant
  loc_17F9A5F: unk_4FADE5.CommitTrans
  loc_17F9A69: Set var_AC = Nothing
  loc_17F9A70: var_86 = CByte(0) 'Byte
  loc_17F9A7F: Me.Requery -1
  loc_17F9AA3: Set var_B4 = Me.Txt
  loc_17F9AA9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, var_C0, "SearchCode='")
  loc_17F9AB1: 0 = var_B8.Text
  loc_17F9ACA: Me.Find 1 & var_C0 & "'", var_E8, 
  loc_17F9AE3: Set var_B4 = Me.TopCtrl1
  loc_17F9AE9: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17F9B02: If (CStr() = "Add") Then
  loc_17F9B05:   Call TopCtrl1_UnknownEvent_A()
  loc_17F9B0A:   Exit Sub
  loc_17F9B0B: End If
  loc_17F9B20: var_C0 = "INI"
  loc_17F9B2E: Call Proc_26_43_E8A56C(Proc_5_1_100CB50(var_C0, Me))
  loc_17F9B39: Call Proc_26_42_17CB2E4(global_68)
  loc_17F9B3E: Exit Sub
  loc_17F9B3F: ' Referenced from: 17F7AEC
  loc_17F9B48: If (CInt(var_86) = 1) Then
  loc_17F9B51:   unk_4FADE5.RollbackTrans
  loc_17F9B56: End If
  loc_17F9B5E: Set var_B4 = Err()
  loc_17F9B64: Call 0.Method_arg_2C (var_C0)
  loc_17F9B7D: MsgBox(CVar(var_C0), &H10, var_108, var_118, var_128)
  loc_17F9B90: Exit Sub
End Sub

Private Sub DGMaid_UnknownEvent_9 'F35424
  'Data Table: 4FADD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3531B: Me.DGMaid.Visible = False
  loc_F3533A: If (Me.RecordCount > 0) Then
  loc_F35379:   Set var_B4 = Me.Txt
  loc_F3537F:   Call 0.Method_DGMaid_UnknownEvent_90 (CInt(5), var_B8)
  loc_F35387:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F353BA:   var_B0 = Me.Fields.Item("Name")
  loc_F353D9:   Set var_B4 = Me.Txt
  loc_F353DF:   Call 0.Method_DGMaid_UnknownEvent_90 (CInt(5), var_B8)
  loc_F353E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F353FD: End If
  loc_F35408: Set var_A8 = Me.Txt
  loc_F3540E: Call 0.Method_DGMaid_UnknownEvent_90 (CInt(5))
  loc_F35416: var_B0.SetFocus
  loc_F35422: Exit Sub
End Sub

Private Sub DGMaid_UnknownEvent_1F 'F01CEC
  'Data Table: 4FADD8
  Dim var_9C As DataGrid
  Dim var_BC As Variant
  loc_F01C14: Set var_88 = Me.DGMaid
  loc_F01C2D: Me.DGMaid.InsertColumnLabels DGMaid.DispID_1D, 
  loc_F01C66: If (CDbl(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF)))) < CDbl(CLng(var_AC))) Then
  loc_F01C6D:   Set var_88 = Me.DGMaid
  loc_F01C97:   var_BC = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_F01C9F:   Set var_9C = Me.DGMaid
  loc_F01CB4: End If
  loc_F01CDB: Proc_6_138_106D6F8(Me.DGMaid, global_80, CInt(5), Me.FGPoint)
  loc_F01CE9: Exit Sub
End Sub

Private Sub Label4_Click() 'DFEFEC
  'Data Table: 4FADD8
  loc_DFEFE4: Call Picture1_DblClick()
  loc_DFEFE9: Exit Sub
  loc_DFEFEA: CExtInstUnk
End Sub

Private Sub CmdSave_Click() '1650238
  'Data Table: 4FADD8
  Dim var_8C As Frame
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_A0 As Frame
  Dim unk_4FADE5 As Connection15
  Dim var_11C As TextBox
  Dim var_124 As TextBox
  Dim var_12C As TextBox
  Dim var_134 As TextBox
  Dim var_120 As Frame
  Dim var_128 As Label
  Dim var_130 As TextBox
  Dim var_5E4 As Double
  Dim var_23C As TextBox
  Dim var_5EC As Double
  Dim var_288 As TextBox
  Dim var_5F4 As Double
  Dim var_2D4 As TextBox
  Dim var_5FC As Double
  Dim var_320 As TextBox
  Dim var_604 As Double
  Dim var_36C As TextBox
  Dim var_60C As Double
  Dim var_3B8 As TextBox
  Dim var_614 As Double
  Dim var_108 As String
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_318 As Variant
  Dim var_344 As Variant
  Dim var_45C As Variant
  Dim var_47C As Variant
  loc_164ECFB: If (Me.Srate.Visible = &HFF) Then
  loc_164ED0A:   Me.Srate.Visible = False
  loc_164ED12: End If
  loc_164ED30: Set var_8C = Me.Txt
  loc_164ED36: Call 0.Method_CmdSave_Click0 (CInt(&H21), var_94, var_98, "Delete From RateList Where RoomNO='")
  loc_164ED3E: var_118 = var_94.Text
  loc_164ED47: var_9C = -1 & var_98
  loc_164ED77: Proc_6_17_EAA2B0(var_D4, Trim(CVar(Me.Srate.Tag)))
  loc_164ED8D: unk_4FADE5.Execute CStr(CVar(var_9C & "' And Code=") & var_D4), var_11C, 
  loc_164EDC3: Set var_8C = Me.Txt
  loc_164EDC9: Call 0.Method_CmdSave_Click0 (CInt(&H24), var_94)
  loc_164EDF1: Set var_A0 = Me.Txt
  loc_164EDF7: Call 0.Method_CmdSave_Click0 (CInt(&H25), var_11C)
  loc_164EE20: Set var_120 = Me.Txt
  loc_164EE26: Call 0.Method_CmdSave_Click0 (CInt(&H26), var_124)
  loc_164EE4F: Set var_128 = Me.Txt
  loc_164EE55: Call 0.Method_CmdSave_Click0 (CInt(&H27), var_12C)
  loc_164EE7E: Set var_130 = Me.Txt
  loc_164EE84: Call 0.Method_CmdSave_Click0 (CInt(&H28), var_134)
  loc_164EEC3: If (((((CDbl(Val(var_94.Text)) <> CDbl(0)) Or (CDbl(Val(var_11C.Text)) <> CDbl(0))) Or (CDbl(Val(var_124.Text)) <> CDbl(0))) Or (CDbl(Val(var_12C.Text)) <> CDbl(0))) Or (CDbl(Val(var_134.Text)) <> CDbl(0))) Then
  loc_164EED4:   Set var_8C = Me.Txt
  loc_164EEDA:   Call 0.Method_CmdSave_Click0 (CInt(1), var_94)
  loc_164EEE2:   var_98 = var_94.Tag
  loc_164EF03:   Set var_A0 = Me.Txt
  loc_164EF09:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_11C)
  loc_164EF11:   var_9C = var_11C.Text
  loc_164EF42:   Set var_124 = Me.LblName
  loc_164EF48:   Call 0.Method_CmdSave_Click0 (&HE, var_128)
  loc_164EF63:   Set var_12C = Me.Txt
  loc_164EF69:   Call 0.Method_CmdSave_Click0 (CInt(&H24), var_130)
  loc_164EF7E:   var_5E4 = Val(var_130.Text)
  loc_164EF8F:   Set var_134 = Me.Txt
  loc_164EF95:   Call 0.Method_CmdSave_Click0 (CInt(&H25), var_23C)
  loc_164EFAA:   var_5EC = Val(var_23C.Text)
  loc_164EFBB:   Set var_284 = Me.Txt
  loc_164EFC1:   Call 0.Method_CmdSave_Click0 (CInt(&H26), var_288, var_28C)
  loc_164EFD6:   var_5F4 = Val(var_28C)
  loc_164EFE7:   Set var_2D0 = Me.Txt
  loc_164EFED:   Call 0.Method_CmdSave_Click0 (CInt(&H27), var_2D4, var_2D8)
  loc_164F002:   var_5FC = Val(var_2D8)
  loc_164F013:   Set var_31C = Me.Txt
  loc_164F019:   Call 0.Method_CmdSave_Click0 (CInt(&H28), var_320, var_324)
  loc_164F02E:   var_604 = Val(var_324)
  loc_164F03F:   Set var_368 = Me.Txt
  loc_164F045:   Call 0.Method_CmdSave_Click0 (CInt(&H38), var_36C, var_370)
  loc_164F05A:   var_60C = Val(var_370)
  loc_164F06B:   Set var_3B4 = Me.Txt
  loc_164F071:   Call 0.Method_CmdSave_Click0 (CInt(&H39), var_3B8, var_3BC)
  loc_164F086:   var_614 = Val(var_3BC)
  loc_164F097:   Proc_6_7_F25D88(var_49C, Date)
  loc_164F0A0:   Set var_4D0 = Me.TopCtrl1
  loc_164F0A6:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_164F0EA:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_164F131:   var_1F8 = var_108 & Trim(CVar(var_98)) & "','" & CVar(var_9C) & "','" & Trim(CVar(Me.Srate.Tag)) & "','" & CVar(var_128.Caption) & "'," 
  loc_164F18C:   var_344 = var_1F8 & CVar(var_5E4) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_164F1E3:   var_47C = var_344 & "," & CVar(var_3B8.Text) & "," & CVar(var_614) & ",'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_164F224:   unk_4FADE5.Execute CStr(var_47C & var_49C & ",'" & IIf((CStr(var_4E0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_5D8, -1
  loc_164F2CE: End If
  loc_164F2DC: Set var_8C = Me.Txt
  loc_164F2E2: Call 0.Method_CmdSave_Click0 (CInt(&H29), var_94, var_98)
  loc_164F2EA: var_5DC = var_94.Text
  loc_164F30A: Set var_A0 = Me.Txt
  loc_164F310: Call 0.Method_CmdSave_Click0 (CInt(&H2A), var_11C, var_9C)
  loc_164F318: (CDbl(Val(var_98)) <> CDbl(0)) = var_11C.Text
  loc_164F339: Set var_120 = Me.Txt
  loc_164F33F: Call 0.Method_CmdSave_Click0 (CInt(&H2B), var_124)
  loc_164F368: Set var_128 = Me.Txt
  loc_164F36E: Call 0.Method_CmdSave_Click0 (CInt(&H2C), var_12C)
  loc_164F397: Set var_130 = Me.Txt
  loc_164F39D: Call 0.Method_CmdSave_Click0 (CInt(&H2D), var_134)
  loc_164F3DC: If ((((var_5E4 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_124.Text)) <> CDbl(0))) Or (CDbl(Val(var_12C.Text)) <> CDbl(0))) Or (CDbl(Val(var_134.Text)) <> CDbl(0))) Then
  loc_164F3ED:   Set var_8C = Me.Txt
  loc_164F3F3:   Call 0.Method_CmdSave_Click0 (CInt(1), var_94)
  loc_164F3FB:   var_98 = var_94.Tag
  loc_164F41C:   Set var_A0 = Me.Txt
  loc_164F422:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_11C)
  loc_164F42A:   var_9C = var_11C.Text
  loc_164F45B:   Set var_124 = Me.LblName
  loc_164F461:   Call 0.Method_CmdSave_Click0 (&HF, var_128)
  loc_164F47C:   Set var_12C = Me.Txt
  loc_164F482:   Call 0.Method_CmdSave_Click0 (CInt(&H29), var_130)
  loc_164F497:   var_5E4 = Val(var_130.Text)
  loc_164F4A8:   Set var_134 = Me.Txt
  loc_164F4AE:   Call 0.Method_CmdSave_Click0 (CInt(&H2A), var_23C)
  loc_164F4C3:   var_5EC = Val(var_23C.Text)
  loc_164F4D4:   Set var_284 = Me.Txt
  loc_164F4DA:   Call 0.Method_CmdSave_Click0 (CInt(&H2B), var_288, var_28C)
  loc_164F4EF:   var_5F4 = Val(var_28C)
  loc_164F500:   Set var_2D0 = Me.Txt
  loc_164F506:   Call 0.Method_CmdSave_Click0 (CInt(&H2C), var_2D4, var_2D8)
  loc_164F51B:   var_5FC = Val(var_2D8)
  loc_164F52C:   Set var_31C = Me.Txt
  loc_164F532:   Call 0.Method_CmdSave_Click0 (CInt(&H2D), var_320, var_324)
  loc_164F547:   var_604 = Val(var_324)
  loc_164F558:   Set var_368 = Me.Txt
  loc_164F55E:   Call 0.Method_CmdSave_Click0 (CInt(&H38), var_36C, var_370)
  loc_164F573:   var_60C = Val(var_370)
  loc_164F584:   Set var_3B4 = Me.Txt
  loc_164F58A:   Call 0.Method_CmdSave_Click0 (CInt(&H39), var_3B8, var_3BC)
  loc_164F59F:   var_614 = Val(var_3BC)
  loc_164F5B0:   Proc_6_7_F25D88(var_49C, Date)
  loc_164F5B9:   Set var_4D0 = Me.TopCtrl1
  loc_164F5BF:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_164F603:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_164F64A:   var_1F8 = var_108 & Trim(CVar(var_98)) & "','" & CVar(var_9C) & "','" & Trim(CVar(Me.Srate.Tag)) & "','" & CVar(var_128.Caption) & "'," 
  loc_164F6A5:   var_344 = var_1F8 & CVar(var_5E4) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_164F6FC:   var_47C = var_344 & "," & CVar(var_3B8.Text) & "," & CVar(var_614) & ",'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_164F73D:   unk_4FADE5.Execute CStr(var_47C & var_49C & ",'" & IIf((CStr(var_4E0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_5D8, -1
  loc_164F7E7: End If
  loc_164F7F5: Set var_8C = Me.Txt
  loc_164F7FB: Call 0.Method_CmdSave_Click0 (CInt(&H2E), var_94, var_98)
  loc_164F803: var_5DC = var_94.Text
  loc_164F823: Set var_A0 = Me.Txt
  loc_164F829: Call 0.Method_CmdSave_Click0 (CInt(&H2F), var_11C, var_9C)
  loc_164F831: (CDbl(Val(var_98)) <> CDbl(0)) = var_11C.Text
  loc_164F852: Set var_120 = Me.Txt
  loc_164F858: Call 0.Method_CmdSave_Click0 (CInt(&H30), var_124)
  loc_164F881: Set var_128 = Me.Txt
  loc_164F887: Call 0.Method_CmdSave_Click0 (CInt(&H31), var_12C)
  loc_164F8B0: Set var_130 = Me.Txt
  loc_164F8B6: Call 0.Method_CmdSave_Click0 (CInt(&H32), var_134)
  loc_164F8F5: If ((((var_5E4 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_124.Text)) <> CDbl(0))) Or (CDbl(Val(var_12C.Text)) <> CDbl(0))) Or (CDbl(Val(var_134.Text)) <> CDbl(0))) Then
  loc_164F906:   Set var_8C = Me.Txt
  loc_164F90C:   Call 0.Method_CmdSave_Click0 (CInt(1), var_94)
  loc_164F914:   var_98 = var_94.Tag
  loc_164F935:   Set var_A0 = Me.Txt
  loc_164F93B:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_11C)
  loc_164F943:   var_9C = var_11C.Text
  loc_164F974:   Set var_124 = Me.LblName
  loc_164F97A:   Call 0.Method_CmdSave_Click0 (&H11, var_128)
  loc_164F995:   Set var_12C = Me.Txt
  loc_164F99B:   Call 0.Method_CmdSave_Click0 (CInt(&H2E), var_130)
  loc_164F9B0:   var_5E4 = Val(var_130.Text)
  loc_164F9C1:   Set var_134 = Me.Txt
  loc_164F9C7:   Call 0.Method_CmdSave_Click0 (CInt(&H2F), var_23C)
  loc_164F9DC:   var_5EC = Val(var_23C.Text)
  loc_164F9ED:   Set var_284 = Me.Txt
  loc_164F9F3:   Call 0.Method_CmdSave_Click0 (CInt(&H30), var_288, var_28C)
  loc_164FA08:   var_5F4 = Val(var_28C)
  loc_164FA19:   Set var_2D0 = Me.Txt
  loc_164FA1F:   Call 0.Method_CmdSave_Click0 (CInt(&H31), var_2D4, var_2D8)
  loc_164FA34:   var_5FC = Val(var_2D8)
  loc_164FA45:   Set var_31C = Me.Txt
  loc_164FA4B:   Call 0.Method_CmdSave_Click0 (CInt(&H32), var_320, var_324)
  loc_164FA60:   var_604 = Val(var_324)
  loc_164FA71:   Set var_368 = Me.Txt
  loc_164FA77:   Call 0.Method_CmdSave_Click0 (CInt(&H38), var_36C, var_370)
  loc_164FA8C:   var_60C = Val(var_370)
  loc_164FA9D:   Set var_3B4 = Me.Txt
  loc_164FAA3:   Call 0.Method_CmdSave_Click0 (CInt(&H39), var_3B8, var_3BC)
  loc_164FAB8:   var_614 = Val(var_3BC)
  loc_164FAC9:   Proc_6_7_F25D88(var_49C, Date)
  loc_164FAD2:   Set var_4D0 = Me.TopCtrl1
  loc_164FAD8:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_164FB1C:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_164FB63:   var_1F8 = var_108 & Trim(CVar(var_98)) & "','" & CVar(var_9C) & "','" & Trim(CVar(Me.Srate.Tag)) & "','" & CVar(var_128.Caption) & "'," 
  loc_164FBBE:   var_344 = var_1F8 & CVar(var_5E4) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_164FC15:   var_47C = var_344 & "," & CVar(var_3B8.Text) & "," & CVar(var_614) & ",'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," 
  loc_164FC56:   unk_4FADE5.Execute CStr(var_47C & var_49C & ",'" & IIf((CStr(var_4E0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_5D8, -1
  loc_164FD00: End If
  loc_164FD0E: Set var_8C = Me.Txt
  loc_164FD14: Call 0.Method_CmdSave_Click0 (CInt(&H33), var_94, var_98)
  loc_164FD1C: var_5DC = var_94.Text
  loc_164FD3C: Set var_A0 = Me.Txt
  loc_164FD42: Call 0.Method_CmdSave_Click0 (CInt(&H34), var_11C, var_9C)
  loc_164FD4A: (CDbl(Val(var_98)) <> CDbl(0)) = var_11C.Text
  loc_164FD6B: Set var_120 = Me.Txt
  loc_164FD71: Call 0.Method_CmdSave_Click0 (CInt(&H35), var_124)
  loc_164FD9A: Set var_128 = Me.Txt
  loc_164FDA0: Call 0.Method_CmdSave_Click0 (CInt(&H36), var_12C)
  loc_164FDC9: Set var_130 = Me.Txt
  loc_164FDCF: Call 0.Method_CmdSave_Click0 (CInt(&H37), var_134)
  loc_164FE0E: If ((((var_5E4 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_124.Text)) <> CDbl(0))) Or (CDbl(Val(var_12C.Text)) <> CDbl(0))) Or (CDbl(Val(var_134.Text)) <> CDbl(0))) Then
  loc_164FE1F:   Set var_8C = Me.Txt
  loc_164FE25:   Call 0.Method_CmdSave_Click0 (CInt(1), var_94)
  loc_164FE4E:   Set var_A0 = Me.Txt
  loc_164FE54:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_11C)
  loc_164FE8D:   Set var_124 = Me.LblName
  loc_164FE93:   Call 0.Method_CmdSave_Click0 (&H12, var_128)
  loc_164FEAE:   Set var_12C = Me.Txt
  loc_164FEB4:   Call 0.Method_CmdSave_Click0 (CInt(&H33), var_130)
  loc_164FEDA:   Set var_134 = Me.Txt
  loc_164FEE0:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_23C)
  loc_164FEF5:   var_5EC = Val(var_23C.Text)
  loc_164FF06:   Set var_284 = Me.Txt
  loc_164FF0C:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_288, var_28C)
  loc_164FF21:   var_5F4 = Val(var_28C)
  loc_164FF32:   Set var_2D0 = Me.Txt
  loc_164FF38:   Call 0.Method_CmdSave_Click0 (CInt(&H36), var_2D4, var_2D8)
  loc_164FF4D:   var_5FC = Val(var_2D8)
  loc_164FF5E:   Set var_31C = Me.Txt
  loc_164FF64:   Call 0.Method_CmdSave_Click0 (CInt(&H37), var_320, var_324)
  loc_164FF79:   var_604 = Val(var_324)
  loc_164FF8A:   Set var_368 = Me.Txt
  loc_164FF90:   Call 0.Method_CmdSave_Click0 (CInt(&H38), var_36C, var_370)
  loc_164FFA5:   var_60C = Val(var_370)
  loc_164FFB6:   Set var_3B4 = Me.Txt
  loc_164FFBC:   Call 0.Method_CmdSave_Click0 (CInt(&H39), var_3B8, var_3BC)
  loc_164FFD1:   var_614 = Val(var_3BC)
  loc_164FFE2:   Proc_6_7_F25D88(var_49C, Date)
  loc_164FFEB:   Set var_4D0 = Me.TopCtrl1
  loc_164FFF1:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_1650035:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_1650073:   var_1D8 = var_108 & Trim(CVar(var_94.Tag)) & "','" & CVar(var_11C.Text) & "','" & Trim(CVar(Me.Srate.Tag)) & "','" & CVar(var_128.Caption) 
  loc_16500CC:   var_318 = var_1D8 & "'," & CVar(Val(var_130.Text)) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," 
  loc_1650125:   var_45C = var_318 & CVar(var_36C.Text) & "," & CVar(var_3B8.Text) & "," & CVar(var_614) & ",'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) 
  loc_165016F:   unk_4FADE5.Execute CStr(var_45C & "'," & var_49C & ",'" & IIf((CStr(var_4E0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_5D8, -1
  loc_1650219: End If
  loc_1650226: Me.Srate.Tag = vbNullString
  loc_1650233: Set var_88 = Nothing
  loc_1650236: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5C3E4
  'Data Table: 4FADD8
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5C306: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5C30D:   Set var_A8 = Me.ListView
  loc_F5C357:   Set var_C0 = Me.Txt
  loc_F5C35D:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5C365:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5C385: End If
  loc_F5C391: Me.FrmList.Visible = False
  loc_F5C3C1: Set var_9C = Me.Txt
  loc_F5C3C7: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5C3CF: var_A8.SetFocus
  loc_F5C3E3: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E83D40
  'Data Table: 4FADD8
  loc_E83CEC: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_E83CEF:   Call DGRevenue_UnknownEvent_9()
  loc_E83CF4: End If
  loc_E83D10: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E83D13:   Call DGCategory_UnknownEvent_9()
  loc_E83D18: End If
  loc_E83D34: If (CBool(Me.DGMaid.Visible) = &HFF) Then
  loc_E83D37:   Call DGMaid_UnknownEvent_9()
  loc_E83D3C: End If
  loc_E83D3C: Exit Sub
  loc_E83D3D: Set var_B4 = 
End Sub

Private Sub DGRevenue_UnknownEvent_9 'F34EA4
  'Data Table: 4FADD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F34D9B: Me.DGRevenue.Visible = False
  loc_F34DBA: If (Me.RecordCount > 0) Then
  loc_F34DF9:   Set var_B4 = Me.Txt
  loc_F34DFF:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(4), var_B8)
  loc_F34E07:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F34E3A:   var_B0 = Me.Fields.Item("Name")
  loc_F34E59:   Set var_B4 = Me.Txt
  loc_F34E5F:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(4), var_B8)
  loc_F34E67:   var_B8.Text = CStr(var_B0.Value)
  loc_F34E7D: End If
  loc_F34E88: Set var_A8 = Me.Txt
  loc_F34E8E: Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(4))
  loc_F34E96: var_B0.SetFocus
  loc_F34EA2: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_1F 'EA0FEC
  'Data Table: 4FADD8
  Dim var_A8 As Variant
  loc_EA0F6C: Set var_88 = Me.DGRevenue
  loc_EA0F96: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA0F9E: Set var_BC = Me.DGRevenue
  loc_EA0FDA: Proc_6_138_106D6F8(Me.DGRevenue, global_72, CInt(4), Me.FGPoint)
  loc_EA0FE8: Exit Sub
End Sub

Public Function MasterFormExitGet() '4FC3CC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4FC3DB
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E93418
  'Data Table: 4FADD8
  Dim Me As Recordset15
  loc_E933A6: On Error Goto loc_E9340F
  loc_E933AF: Me.MoveFirst
  loc_E933D9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93401: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E93409: Call Proc_26_42_17CB2E4(0)
  loc_E9340E: Exit Sub
  loc_E9340F: ' Referenced from: E933A6
  loc_E9340F: Proc_6_60_E62BC4(var_A0)
  loc_E93414: Exit Sub
End Sub

Public Sub Proc_26_40_107297C
  'Data Table: 4FADD8
  Dim var_B4 As TextBox
  Dim unk_4FADE5 As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  loc_107271C: Set var_9C = Me.TopCtrl1
  loc_1072722: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_107273B: If (CStr() = "Add") Then
  loc_1072779:   Set var_9C = Me.Txt
  loc_107277F:   Call 0.Method_Proc_26_40_107297C0 (CInt(&H21), var_B4, var_B8, "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and type='RO' AND Code='", var_AC, -1)
  loc_10727A0:   unk_4FADE5.Execute var_DC & var_B8 & "'", 0, var_F0
  loc_10727B0:    = var_DC.Item()
  loc_10727B8:    = var_F0.Value
  loc_10727E9:   If (var_B4.Text.Fields > 0) Then
  loc_1072807:     var_AC = "Duplicate Room No."
  loc_107280D:     MsgBox(var_AC, &H40, "Information", var_120, var_140)
  loc_1072828:     Set var_9C = Me.Txt
  loc_107282E:     Call 0.Method_Proc_26_40_107297C0 (CInt(&H21))
  loc_1072836:     var_B4.SetFocus
  loc_1072847:     Proc_26_40_107297C = &HFF
  loc_107284D:   End If
  loc_1072850: Else
  loc_107288B:   Set var_9C = Me.Txt
  loc_1072891:   Call 0.Method_Proc_26_40_107297C0 (CInt(&H22), var_B4, var_B8, "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  and Type='", var_AC, -1)
  loc_10728C3:   unk_4FADE5.Execute var_DC & var_B8 & "' And Code <>'" & global_84 & "'", 0, var_F0
  loc_10728D3:    = var_DC.Item(var_B4)
  loc_10728DB:    = var_F0.Value
  loc_1072910:   If (var_B4.Text.Fields > 0) Then
  loc_1072934:     MsgBox("Duplicate Room No.", &H40, "Information", var_120, var_140)
  loc_107294F:     Set var_9C = Me.Txt
  loc_1072955:     Call 0.Method_Proc_26_40_107297C0 (CInt(&H21))
  loc_107295D:     var_B4.SetFocus
  loc_107296E:     Proc_26_40_107297C = &HFF
  loc_1072974:   End If
  loc_1072974: End If
  loc_1072974: Proc_26_40_107297C = var_B4
End Sub

Public Sub Proc_26_41_FEC074
  'Data Table: 4FADD8
  Dim var_98 As TextBox
  Dim var_D0 As String
  Dim var_F8 As TextBox
  Dim var_B0 As Variant
  Dim var_F4 As Image
  Dim var_8C As Image
  loc_FEBEA2: global_84 = vbNullString
  loc_FEBEB4: Set var_8C = Me.Txt
  loc_FEBEBA: Call 0.Method_Proc_26_41_FEC074C (var_8E, var_86)
  loc_FEBECA: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FEBEE0:   Set var_8C = Me.Txt
  loc_FEBEE6:   Call 0.Method_Proc_26_41_FEC0740 (CInt(var_86), var_98)
  loc_FEBEEE:   var_98.Text = vbNullString
  loc_FEBF0A:   Set var_8C = Me.Txt
  loc_FEBF10:   Call 0.Method_Proc_26_41_FEC0740 (CInt(var_86), var_98)
  loc_FEBF18:   var_98.Tag = vbNullString
  loc_FEBF27: Next var_92 'Byte
  loc_FEBF3B: Set var_8C = Me.Txt
  loc_FEBF41: Call 0.Method_Proc_26_41_FEC0740 (CInt(6), var_98)
  loc_FEBF65: For var_9C = CByte(9) To (CInt(var_88) = &H1C): var_88 = var_9C 'Byte
  loc_FEBF7B:   Set var_8C = Me.Txt
  loc_FEBF81:   Call 0.Method_Proc_26_41_FEC0740 (CInt(var_88), var_98)
  loc_FEBFA3:   var_D0 = "0.00"
  loc_FEBFD1:   Set var_F4 = Me.Txt
  loc_FEBFD7:   Call 0.Method_Proc_26_41_FEC0740 (CInt(var_88), var_F8, CStr(Format(CVar(Val("No")), var_D0)), 1)
  loc_FEBFDF:   var_F8.Text = 1
  loc_FEC002: Next var_9C 'Byte
  loc_FEC026: Me.Global.LoadPicture var_B0, var_D0, var_114, var_124, var_134
  loc_FEC03B: Me.Picture1.Picture = var_8C
  loc_FEC054: Me.Picture1.Tag = vbNullString
  loc_FEC068: Me.Picture1.Visible = True
  loc_FEC070: Exit Sub
End Sub

Public Sub Proc_26_42_17CB2E4
  'Data Table: 4FADD8
  Dim var_8A As Integer
  Dim var_D4 As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_4FADE5 As Connection15
  Dim var_9C As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim var_144 As String
  Dim var_118 As Variant
  Dim var_88 As Recordset15
  Dim var_154 As Variant
  Dim var_130 As Variant
  Dim var_90 As Recordset15
  Dim var_94 As Recordset15
  Dim var_128 As Variant
  loc_17C92AC: On Error Goto loc_17CB2DB
  loc_17C930A: unk_4FADE5.Execute CStr("Select U_Name,U_AE,U_EntDt From roommast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_128, -1
  loc_17C9315: Set var_9C = var_12C
  loc_17C93D2: var_194 = IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_AE")), var_9C.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_17C9417: Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_Name")), var_194)))
  loc_17C9489: var_12C = var_9C.Fields
  loc_17C94A5: var_144 = "entdt : "
  loc_17C94AA: var_128 = var_144
  loc_17C94F2: var_194 = IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C.Item("U_AE"))) = "E"), "Last Update : ", var_128))
  loc_17C9537: Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_EntDt")))))
  loc_17C9586: If (Me.RecordCount > 0) Then
  loc_17C9596:   var_D4 = "SELECT RoomMast.*, Depart.Name as Department FROM RoomMast LEFT JOIN Depart ON RoomMast.MaidStation = Depart.Code where ROOMMAST.TYPE='RO' AND RoomMast.Code='"
  loc_17C95DF:   unk_4FADE5.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "'"), var_128, -1
  loc_17C95EA:   Set var_88 = var_12C
  loc_17C9618:   If (var_88.RecordCount > 0) Then
  loc_17C961B:     Call Proc_26_41_FEC074(var_12C)
  loc_17C9620:     ' Referenced from: 17CA243
  loc_17C9626:     var_1F2 = var_88.EOF
  loc_17C962F:     If Not(var_1F2) Then
  loc_17C9641:       var_A0 = var_88.Fields
  loc_17C965A:       var_118 = IsNull(CVar(var_A0.Item("PicPath")))
  loc_17C9661:       var_D4 = "PicPath"
  loc_17C968C:       var_F4 = vbNullString
  loc_17C96AE:       If CBool(var_118 Or (Trim(CVar(var_88.Fields.Item(var_D4))) = var_F4)) Then
  loc_17C96CF:         Me.Global.LoadPicture var_B0, var_D4, var_F4, var_118, var_144
  loc_17C96E4:         Me.Picture1.Picture = var_A0
  loc_17C96F3:       Else
  loc_17C9719:         var_E4 = Trim(CVar(var_88.Fields.Item("PicPath")))
  loc_17C9721:         var_F4 = "PicPath"
  loc_17C975F:         var_128 = Ucase(Right(var_E4, 3))
  loc_17C9767:         var_D4 = "DAT"
  loc_17C978F:         var_118 = "AVI"
  loc_17C97B9:         If CBool((var_128 = var_D4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_F4))), 3)) = var_118)) Then
  loc_17C97C8:           Me.Picture1.Visible = False
  loc_17C97D3:         Else
  loc_17C980B:           Me.Picture1.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_17C9828:           var_B0 = "PicPath"
  loc_17C983C:           var_B4 = var_88.Fields.Item(var_B0)
  loc_17C9856:           Call 0.Method_Proc_26_42_17CB2E44 (CStr(var_B4.Value), var_1F2)
  loc_17C986B:           If var_1F2 Then
  loc_17C9888:             Set var_A0 = Me.Picture1
  loc_17C98A0:             Me.Global.LoadPicture CVar(Me.Picture1.Tag), var_B0, var_D4, var_F4, var_118
  loc_17C98AF:             Set var_130 = Me.Picture1
  loc_17C98B5:             var_130.Picture = var_B4
  loc_17C98CA:             Set var_A0 = Me.Picture1
  loc_17C98D0:             var_A0.Refresh
  loc_17C98DB:           Else
  loc_17C98F9:             Me.Global.LoadPicture var_B0, var_D4, var_F4, var_118, var_144
  loc_17C990E:             Me.Picture1.Picture = var_A0
  loc_17C991A:           End If
  loc_17C991A:         End If
  loc_17C991A:       End If
  loc_17C992C:       var_A0 = var_88.Fields
  loc_17C9953:       Set var_12C = Me.Txt
  loc_17C9959:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H21), var_130, CStr(var_A0.Item("Code").Value))
  loc_17C9961:       var_130.Text = var_A0
  loc_17C9991:       var_B4 = var_88.Fields.Item("Name")
  loc_17C99B0:       Set var_12C = Me.Txt
  loc_17C99B6:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(0), var_130, CStr(var_B4.Value))
  loc_17C99BE:       var_130.Text = var_B4
  loc_17C9A0D:       Set var_12C = Me.Txt
  loc_17C9A13:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H22), var_130)
  loc_17C9A1B:       var_130.Tag = CStr(var_88.Fields.Item("Type").Value)
  loc_17C9A4B:       var_B4 = var_88.Fields.Item("Type")
  loc_17C9A6D:       If (var_B4.Value = "RO") Then
  loc_17C9A7E:         Set var_A0 = Me.Txt
  loc_17C9A84:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H22), var_B4)
  loc_17C9A8C:         var_B4.Text = "Room"
  loc_17C9A9B:       Else
  loc_17C9AB5:         var_B4 = var_88.Fields.Item("Type")
  loc_17C9AD7:         If (var_B4.Value = "CO") Then
  loc_17C9AE8:           Set var_A0 = Me.Txt
  loc_17C9AEE:           Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H22), var_B4)
  loc_17C9AF6:           var_B4.Text = "Conf. Room"
  loc_17C9B02:         End If
  loc_17C9B02:       End If
  loc_17C9B3B:       Set var_12C = Me.Txt
  loc_17C9B41:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(1), var_130)
  loc_17C9B49:       var_130.Tag = CStr(var_88.Fields.Item("RoomCat").Value)
  loc_17C9B80:       var_A0 = var_88.Fields
  loc_17C9B97:       Proc_6_17_EAA2B0(var_E4, CVar(var_A0.Item("RoomCat")), "Select Name From roomcat where code=", var_128)
  loc_17C9B9F:       var_104 = -1 & var_E4 
  loc_17C9BAD:       unk_4FADE5.Execute CStr(Right(var_E4, 3)), var_12C, var_A0
  loc_17C9BB8:       Set var_90 = var_12C
  loc_17C9BE4:       If (var_90.RecordCount > 0) Then
  loc_17C9C01:         var_B4 = var_90.Fields.Item("Name")
  loc_17C9C20:         Set var_12C = Me.Txt
  loc_17C9C26:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(1), var_130)
  loc_17C9C2E:         var_130.Text = CStr(var_B4.Value)
  loc_17C9C47:       Else
  loc_17C9C55:         Set var_A0 = Me.Txt
  loc_17C9C5B:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(1), var_B4)
  loc_17C9C63:         var_B4.Text = vbNullString
  loc_17C9C6F:       End If
  loc_17C9CA5:       Set var_12C = Me.Txt
  loc_17C9CAB:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H3A), var_130)
  loc_17C9CB3:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DoorLockID")))
  loc_17C9CFD:       Set var_12C = Me.Txt
  loc_17C9D03:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(2), var_130)
  loc_17C9D0B:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Extension")))
  loc_17C9D55:       Set var_12C = Me.Txt
  loc_17C9D5B:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(5), var_130)
  loc_17C9D63:       var_130.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MaidStation")))
  loc_17C9DAD:       Set var_12C = Me.Txt
  loc_17C9DB3:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(5), var_130)
  loc_17C9DBB:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department")))
  loc_17C9DEE:       var_C4 = CVar(var_88.Fields.Item("MultPer")) 'Address
  loc_17C9DF5:       Proc_6_39_E7C810(var_E4)
  loc_17C9E0C:       Set var_12C = Me.Txt
  loc_17C9E12:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(3), var_130)
  loc_17C9E1A:       var_130.Text = CStr(var_E4)
  loc_17C9E68:       Set var_12C = Me.Txt
  loc_17C9E6E:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(4), var_130)
  loc_17C9E76:       var_130.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")))
  loc_17C9EC6:       var_12C = var_88.Fields
  loc_17C9ECE:       var_130 = var_12C.Item("RevCode")
  loc_17C9ED6:       var_E4 = CVar(var_130) 'Address
  loc_17C9F07:       If CBool(Not(IsNull(CVar(var_88.Fields.Item("RevCode")))) And (Trim(var_E4) <> vbNullString)) Then
  loc_17C9F3B:         var_C4 = CVar(var_88.Fields.Item("RevCode")) 'Address
  loc_17C9F42:         Proc_6_17_EAA2B0(var_E4, var_C4, "Select Name,TaxStru From RevMast where code=", var_128)
  loc_17C9F4A:         var_104 = -1 & var_E4 
  loc_17C9F58:         unk_4FADE5.Execute CStr(Trim(var_E4)), var_12C, var_C4
  loc_17C9F63:         Set var_94 = var_12C
  loc_17C9F8F:         If (var_94.RecordCount > 0) Then
  loc_17C9FC8:           Set var_12C = Me.Txt
  loc_17C9FCE:           Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H23), var_130)
  loc_17C9FD6:           var_130.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("TaxStru")))
  loc_17CA020:           Set var_12C = Me.Txt
  loc_17CA026:           Call 0.Method_Proc_26_42_17CB2E40 (CInt(4), var_130)
  loc_17CA02E:           var_130.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name")))
  loc_17CA042:         End If
  loc_17CA042:       End If
  loc_17CA06E:       var_154 = "No"
  loc_17CA0AD:       Set var_12C = Me.Txt
  loc_17CA0B3:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(6), var_130)
  loc_17CA0BB:       var_130.Text = CStr(IIf((var_88.Fields.Item("InclCount").Value = "Y"), "Yes", var_154))
  loc_17CA111:       Set var_12C = Me.Txt
  loc_17CA117:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1D), var_130)
  loc_17CA11F:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConRoom1")))
  loc_17CA169:       Set var_12C = Me.Txt
  loc_17CA16F:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1E), var_130)
  loc_17CA177:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConRoom2")))
  loc_17CA1C1:       Set var_12C = Me.Txt
  loc_17CA1C7:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1F), var_130)
  loc_17CA1CF:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConRoom3")))
  loc_17CA219:       Set var_12C = Me.Txt
  loc_17CA21F:       Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H20), var_130)
  loc_17CA227:       var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConRoom4")))
  loc_17CA23E:       var_88.MoveNext
  loc_17CA243:       GoTo loc_17C9620
  loc_17CA246:     End If
  loc_17CA246:   End If
  loc_17CA25A:   var_108 = "Select RateList.* From RateList Left Join RoomMAst on RateList.RoomNO=Roommast.Code where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_17CA291:   var_104 = CVar(var_108 & "' or RoomMast.LOGSITE_CODE='HO')  and RateLIst.Code='*' and RateList.roomno='") & Me.Fields.Item("SearchCode").Value 
  loc_17CA2A8:   unk_4FADE5.Execute CStr(var_104 & "'"), var_154, -1
  loc_17CA2B3:   Set var_90 = var_12C
  loc_17CA2E7:   If (var_90.RecordCount > 0) Then
  loc_17CA2EA:     ' Referenced from: 17CB2B0
  loc_17CA2F9:     If Not(var_90.EOF) Then
  loc_17CA338:       If (var_90.Fields.Item("OccType").Value = "Single") Then
  loc_17CA36F:         Set var_12C = Me.LblName
  loc_17CA375:         Call 0.Method_Proc_26_42_17CB2E40 (&HE, var_130)
  loc_17CA37D:         var_130.Caption = Proc_6_38_E68A98(CVar(var_90.Fields.Item("OccType")))
  loc_17CA3E3:         Set var_12C = Me.Txt
  loc_17CA3E9:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(7), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_17CA3F1:         var_130.Text = 1
  loc_17CA45D:         Set var_12C = Me.Txt
  loc_17CA463:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(8), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17CA46B:         var_130.Text = 1
  loc_17CA4D7:         Set var_12C = Me.Txt
  loc_17CA4DD:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(9), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17CA4E5:         var_130.Text = 1
  loc_17CA551:         Set var_12C = Me.Txt
  loc_17CA557:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&HA), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17CA55F:         var_130.Text = 1
  loc_17CA5CB:         Set var_12C = Me.Txt
  loc_17CA5D1:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&HB), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17CA5D9:         var_130.Text = 1
  loc_17CA645:         Set var_12C = Me.Txt
  loc_17CA64B:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1B), var_130, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17CA653:         var_130.Text = 1
  loc_17CA6BF:         Set var_12C = Me.Txt
  loc_17CA6C5:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1C), var_130, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17CA6CD:         var_130.Text = 1
  loc_17CA6E7:       End If
  loc_17CA723:       If (var_90.Fields.Item("OccType").Value = "Multiple") Then
  loc_17CA75A:         Set var_12C = Me.LblName
  loc_17CA760:         Call 0.Method_Proc_26_42_17CB2E40 (&HF, var_130)
  loc_17CA768:         var_130.Caption = Proc_6_38_E68A98(CVar(var_90.Fields.Item("OccType")), 1)
  loc_17CA7CE:         Set var_12C = Me.Txt
  loc_17CA7D4:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&HC), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_17CA7DC:         var_130.Text = 1
  loc_17CA848:         Set var_12C = Me.Txt
  loc_17CA84E:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&HD), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17CA856:         var_130.Text = 1
  loc_17CA8C2:         Set var_12C = Me.Txt
  loc_17CA8C8:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&HE), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17CA8D0:         var_130.Text = 1
  loc_17CA93C:         Set var_12C = Me.Txt
  loc_17CA942:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&HF), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17CA94A:         var_130.Text = 1
  loc_17CA9B6:         Set var_12C = Me.Txt
  loc_17CA9BC:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H10), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17CA9C4:         var_130.Text = 1
  loc_17CAA30:         Set var_12C = Me.Txt
  loc_17CAA36:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1B), var_130, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17CAA3E:         var_130.Text = 1
  loc_17CAAAA:         Set var_12C = Me.Txt
  loc_17CAAB0:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1C), var_130, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17CAAB8:         var_130.Text = 1
  loc_17CAAD2:       End If
  loc_17CAB0E:       If (var_90.Fields.Item("OccType").Value = "Extra Person") Then
  loc_17CAB45:         Set var_12C = Me.LblName
  loc_17CAB4B:         Call 0.Method_Proc_26_42_17CB2E40 (&H11, var_130)
  loc_17CAB53:         var_130.Caption = Proc_6_38_E68A98(CVar(var_90.Fields.Item("OccType")), 1)
  loc_17CABB9:         Set var_12C = Me.Txt
  loc_17CABBF:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H11), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_17CABC7:         var_130.Text = 1
  loc_17CAC33:         Set var_12C = Me.Txt
  loc_17CAC39:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H12), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17CAC41:         var_130.Text = 1
  loc_17CACAD:         Set var_12C = Me.Txt
  loc_17CACB3:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H13), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17CACBB:         var_130.Text = 1
  loc_17CAD27:         Set var_12C = Me.Txt
  loc_17CAD2D:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H14), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17CAD35:         var_130.Text = 1
  loc_17CADA1:         Set var_12C = Me.Txt
  loc_17CADA7:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H15), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17CADAF:         var_130.Text = 1
  loc_17CAE1B:         Set var_12C = Me.Txt
  loc_17CAE21:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1B), var_130, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17CAE29:         var_130.Text = 1
  loc_17CAE95:         Set var_12C = Me.Txt
  loc_17CAE9B:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1C), var_130, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17CAEA3:         var_130.Text = 1
  loc_17CAEBD:       End If
  loc_17CAEF9:       If (var_90.Fields.Item("OccType").Value = "Weekend") Then
  loc_17CAF30:         Set var_12C = Me.LblName
  loc_17CAF36:         Call 0.Method_Proc_26_42_17CB2E40 (&H12, var_130)
  loc_17CAF3E:         var_130.Caption = Proc_6_38_E68A98(CVar(var_90.Fields.Item("OccType")), 1)
  loc_17CAFA4:         Set var_12C = Me.Txt
  loc_17CAFAA:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H16), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_17CAFB2:         var_130.Text = 1
  loc_17CB01E:         Set var_12C = Me.Txt
  loc_17CB024:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H17), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17CB02C:         var_130.Text = 1
  loc_17CB098:         Set var_12C = Me.Txt
  loc_17CB09E:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H18), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17CB0A6:         var_130.Text = 1
  loc_17CB112:         Set var_12C = Me.Txt
  loc_17CB118:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H19), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17CB120:         var_130.Text = 1
  loc_17CB18C:         Set var_12C = Me.Txt
  loc_17CB192:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1A), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17CB19A:         var_130.Text = 1
  loc_17CB206:         Set var_12C = Me.Txt
  loc_17CB20C:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1B), var_130, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17CB214:         var_130.Text = 1
  loc_17CB280:         Set var_12C = Me.Txt
  loc_17CB286:         Call 0.Method_Proc_26_42_17CB2E40 (CInt(&H1C), var_130, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17CB28E:         var_130.Text = 1
  loc_17CB2A8:       End If
  loc_17CB2AB:       var_90.MoveNext
  loc_17CB2B0:       GoTo loc_17CA2EA
  loc_17CB2B3:     End If
  loc_17CB2B3:   End If
  loc_17CB2B5:   var_8A = 0
  loc_17CB2BB: Else
  loc_17CB2BB:   Call Proc_26_41_FEC074(var_8A, 1)
  loc_17CB2C0: End If
  loc_17CB2C0: Call Proc_26_46_126AE38(var_12C)
  loc_17CB2C5: Call Proc_26_44_F1FE10()
  loc_17CB2CF: Set var_88 = Nothing
  loc_17CB2D7: Set var_90 = Nothing
  loc_17CB2DA: Exit Sub
  loc_17CB2DB: ' Referenced from: 17C92AC
  loc_17CB2DB: Proc_6_60_E62BC4()
  loc_17CB2E0: Exit Sub
End Sub

Public Sub Proc_26_43_E8A56C(arg_C) 'E8A56C
  'Data Table: 4FADD8
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_E8A506: Set var_8C = Me.Txt
  loc_E8A50C: Call 0.Method_Proc_26_43_E8A56CC (var_8E, var_86)
  loc_E8A51C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8A532:   Set var_8C = Me.Txt
  loc_E8A538:   Call 0.Method_Proc_26_43_E8A56C0 (CInt(var_86), var_98)
  loc_E8A540:   var_98.Enabled = arg_C
  loc_E8A54F: Next var_92 'Byte
  loc_E8A562: Me.CmdRate.Enabled = arg_C
  loc_E8A56A: Exit Sub
End Sub

Public Sub Proc_26_44_F1FE10
  'Data Table: 4FADD8
  loc_F1FD20: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_F1FD32:   Me.DGRevenue.Visible = False
  loc_F1FD3A: End If
  loc_F1FD56: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_F1FD68:   Me.DGCategory.Visible = False
  loc_F1FD70: End If
  loc_F1FD8B: If (Me.FrmList.Visible = &HFF) Then
  loc_F1FD9A:   Me.FrmList.Visible = False
  loc_F1FDA2: End If
  loc_F1FDBE: If (CBool(Me.DGMaid.Visible) = &HFF) Then
  loc_F1FDD0:   Me.DGMaid.Visible = False
  loc_F1FDD8: End If
  loc_F1FDF4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1FE06:   Me.FGPoint.Visible = False
  loc_F1FE0E: End If
  loc_F1FE0E: Exit Sub
End Sub

Public Sub Proc_26_45_EE0C1C(arg_C) 'EE0C1C
  'Data Table: 4FADD8
  Dim var_8C As TextBox
  loc_EE0B70: Call Proc_26_44_F1FE10()
  loc_EE0B80: Set var_88 = Me.Txt
  loc_EE0B86: Call 0.Method_Proc_26_45_EE0C1C0 (CInt(0))
  loc_EE0BAF: If (Proc_6_27_EA565C(var_8C, "RoomName") = 0) Then
  loc_EE0BB2:   Exit Sub
  loc_EE0BB3: End If
  loc_EE0BEA: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE0BED:   Call TopCtrl1_UnknownEvent_16()
  loc_EE0BF5: Else
  loc_EE0BFF:   Set var_88 = Me.Txt
  loc_EE0C05:   Call 0.Method_Proc_26_45_EE0C1C0 (arg_C, var_8C)
  loc_EE0C0D:   var_8C.SetFocus
  loc_EE0C19: End If
  loc_EE0C19: Exit Sub
End Sub

Public Sub Proc_26_46_126AE38
  'Data Table: 4FADD8
  Dim var_8C As Integer
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim unk_4FADE5 As Connection15
  Dim var_E4 As Variant
  Dim var_C8 As Variant
  Dim var_104 As String
  Dim var_AC As Variant
  Dim var_F4 As Variant
  Dim var_128 As Variant
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_1AC As Recordset15
  loc_126A8CC: On Error Goto loc_126AE30
  loc_126A8D1: var_8C = 1
  loc_126A8D8: var_8A = CByte(1) 'Byte
  loc_126A8EF: Me.FGrid1.Rows = 1
  loc_126A8F7: var_9C = vbNullString
  loc_126A901: Set var_B0 = Me.FGrid1
  loc_126A91F: Set var_B0 = Me.FGrid1
  loc_126A925: var_B0.FixedRows = 1
  loc_126A951: unk_4FADE5.Execute "SELECT * FROM ROOMFEATURE where (LOGSITE_CODE='" & MemVar_1F92078 & "') ORDER BY NAME", var_C8, -1
  loc_126A95C: Set var_88 = var_B0
  loc_126A983: If (Me.Recordset15.RecordCount > 0) Then
  loc_126A990:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(Me.TopCtrl1)
  loc_126A9A9:   If (CStr(FGrid1.DispID_10000) = "Add") Then
  loc_126A9C6:     For var_D0 = CByte(1) To CByte(Me.TopCtrl1.RecordCount): var_8A = var_D0 'Byte
  loc_126A9D0:       Set var_D4 = Me.FGrid1
  loc_126A9D8:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_126A9E0:       var_E4 = CVar(CLng(0)) 'Long
  loc_126A9EB:       var_C8 = CVar(CStr(var_8A)) 'String
  loc_126A9F2:       LateIdCallSt
  loc_126AA02:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_126AA0A:       var_E4 = CVar(CLng(1)) 'Long
  loc_126AA0F:       var_104 = vbNullString
  loc_126AA18:       LateIdCallSt
  loc_126AA25:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_126AA2D:       var_F4 = CVar(CLng(2)) 'Long
  loc_126AA60:       var_128 = CVar(CStr(Me.FGrid1.Fields.Item("Code").Value)) 'String
  loc_126AA67:       LateIdCallSt
  loc_126AA82:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_126AA8A:       var_F4 = CVar(CLng(3)) 'Long
  loc_126AABD:       var_128 = CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)) 'String
  loc_126AAC4:       LateIdCallSt
  loc_126AADC:       Set var_D4 = Nothing 
  loc_126AAE6:       Me.Recordset15.MoveNext
  loc_126AAEB:       var_9C = vbNullString
  loc_126AAF5:       Set var_B0 = Me.FGrid1
  loc_126AB09:     Next var_D0 'Byte
  loc_126AB12:   Else
  loc_126AB2C:     For var_12C = CByte(1) To CByte(var_88.RecordCount):   var_8A = var_12C 'Byte
  loc_126AB3E:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_126AB46:       var_E4 = CVar(CLng(0)) 'Long
  loc_126AB51:       var_C8 = CVar(CStr(var_8A)) 'String
  loc_126AB58:       LateIdCallSt
  loc_126AB6C:       var_CC = Me.RecordCount
  loc_126AB7A:       If (var_CC > 0) Then
  loc_126ABA1:         var_9C = "SearchCode"
  loc_126ABC0:         var_C8 = CVar(Me.Fields.Item(var_9C)) 'Address
  loc_126ABC7:         Proc_6_17_EAA2B0(var_128, var_C8, CVar("SELECT * FROM ROOMMAST1 WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') and ROOMCODE="), var_1A8, -1, var_1AC)
  loc_126ABDF:         var_E4 = "Code"
  loc_126AC05:         Proc_6_17_EAA2B0(var_188, CVar(Me.Recordset15.Fields.Item(var_E4)), var_CC & var_128 & " AND RoomFeat=", Me.FGrid1)
  loc_126AC1B:         unk_4FADE5.Execute CStr(var_C8 & var_188), var_E4, var_9C
  loc_126AC23:         CByte(1) = var_1AC.RecordCount
  loc_126AC56:         If (var_CC <= 0) Then
  loc_126AC5E:           var_9C = CVar(CLng(var_8A)) 'Long
  loc_126AC66:           var_E4 = CVar(CLng(1)) 'Long
  loc_126AC6B:           var_104 = vbNullString
  loc_126AC74:           LateIdCallSt
  loc_126AC7F:         Else
  loc_126AC91:           Me.FGrid1.Col = CVar(CLng(1))
  loc_126ACA9:           Me.FGrid1.CellFontName = "wingdings"
  loc_126ACC3:           Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_126ACDE:           Me.FGrid1.CellForeColor = &HFF0000
  loc_126ACEB:           var_9C = CVar(CLng(var_8A)) 'Long
  loc_126ACF3:           var_E4 = CVar(CLng(1)) 'Long
  loc_126ACF8:           var_104 = "ü"
  loc_126AD01:           LateIdCallSt
  loc_126AD09:         End If
  loc_126AD09:       End If
  loc_126AD0E:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_126AD16:       var_F4 = CVar(CLng(2)) 'Long
  loc_126AD49:       var_128 = CVar(CStr(Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_126AD50:       LateIdCallSt
  loc_126AD6B:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_126AD73:       var_F4 = CVar(CLng(3)) 'Long
  loc_126ADA6:       var_128 = CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)) 'String
  loc_126ADAD:       LateIdCallSt
  loc_126ADC5:       Set var_130 = Nothing 
  loc_126ADCF:       Me.Recordset15.MoveNext
  loc_126ADD4:       var_9C = vbNullString
  loc_126ADDE:       Set var_B0 = Me.FGrid1
  loc_126AE08:       var_9C = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_126AE17:       Me.FGrid1.Row = var_9C
  loc_126AE29:     Next var_12C 'Byte
  loc_126AE2F:   End If
  loc_126AE2F: End If
  loc_126AE2F: Exit Sub
  loc_126AE30: ' Referenced from: 126A8CC
  loc_126AE30: Proc_6_60_E62BC4()
  loc_126AE35: Exit Sub
End Sub

Public Sub Proc_26_47_101B5E4
  'Data Table: 4FADD8
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As String
  loc_101B3C7: Me.FGrid1.Row = 0
  loc_101B3E2: Me.FGrid1.Col = 0
  loc_101B3EA: var_98 = 0
  loc_101B3F9: var_BC = CVar(CInt(3)) 'Integer
  loc_101B401: Set var_AC = Me.FGrid1
  loc_101B407: LateIdCallSt
  loc_101B425: Me.FGrid1.Row = 1
  loc_101B440: Me.FGrid1.Cols = 4
  loc_101B445: var_98 = 0
  loc_101B44E: var_BC = 0
  loc_101B457: var_E0 = "Sr No"
  loc_101B460: LateIdCallSt
  loc_101B468: var_98 = 0
  loc_101B477: var_BC = CVar(CInt(3)) 'Integer
  loc_101B47E: LateIdCallSt
  loc_101B486: var_98 = 0
  loc_101B48F: var_BC = 0
  loc_101B49B: LateIdCallSt
  loc_101B4A3: var_98 = 0
  loc_101B4AC: var_BC = 1
  loc_101B4B5: var_E0 = vbNullString
  loc_101B4BE: LateIdCallSt
  loc_101B4C6: var_98 = 1
  loc_101B4CF: var_BC = &H1F4
  loc_101B4DB: LateIdCallSt
  loc_101B4E3: var_98 = 0
  loc_101B4EC: var_BC = 2
  loc_101B4F5: var_E0 = "Code"
  loc_101B4FE: LateIdCallSt
  loc_101B506: var_98 = 2
  loc_101B50F: var_BC = 0
  loc_101B51B: LateIdCallSt
  loc_101B523: var_98 = 0
  loc_101B52C: var_BC = 3
  loc_101B535: var_E0 = "Room Feature"
  loc_101B53E: LateIdCallSt
  loc_101B546: var_98 = 3
  loc_101B555: var_BC = CVar(CInt(1)) 'Integer
  loc_101B55C: LateIdCallSt
  loc_101B564: var_98 = 3
  loc_101B573: var_BC = CVar(CInt(1)) 'Integer
  loc_101B57A: LateIdCallSt
  loc_101B582: var_98 = 3
  loc_101B58B: var_BC = &HE74
  loc_101B597: LateIdCallSt
  loc_101B5A1: Set var_D0 = Nothing 
  loc_101B5C4: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_101B5C7:   var_98 = vbNullString
  loc_101B5D1:   Set var_AC = Me.FGrid1
  loc_101B5E2: End If
  loc_101B5E2: Exit Sub
End Sub
