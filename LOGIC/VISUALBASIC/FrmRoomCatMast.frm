VERSION 5.00
Begin VB.Form FrmRoomCatMast
  Caption = "Room Category Master"
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
  ClientWidth = 11880
  ClientHeight = 7305
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 56
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4095
    Top = 2070
    Width = 1755
    Height = 285
    TabIndex = 110
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11880
    Height = 450
    TabIndex = 109
  End
  Begin TextBox Txt
    Index = 55
    BackColor = &HFFFFFF&
    Left = 12930
    Top = 7740
    Width = 1320
    Height = 255
    Visible = 0   'False
    TabIndex = 103
    BorderStyle = 0 'None
    MaxLength = 3
    Appearance = 0 'Flat
  End
  Begin PictureBox Picture3
    Picture = "FrmRoomCatMast.frx":0
    Left = 13005
    Top = 1875
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 102
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin MSFlexGrid FGPoint
    Left = 11250
    Top = 5325
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 99
  End
  Begin Frame FrmList
    Left = 10860
    Top = 3435
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 100
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
    Begin ListView ListView
      Left = 30
      Top = 60
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 101
    End
  End
  Begin DataGrid DGRevenue
    Left = 10830
    Top = 2865
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 98
  End
  Begin DataGrid DGHelp
    Left = 10830
    Top = 2430
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 97
  End
  Begin TextBox Txt
    Index = 54
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 1755
    Width = 3285
    Height = 285
    TabIndex = 4
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
  Begin Frame SRate
    Caption = "Frame1"
    BackColor = &HC0C0C0&
    ForeColor = &H80000008&
    Left = 9585
    Top = 4380
    Width = 8655
    Height = 2655
    Visible = 0   'False
    TabIndex = 76
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
    BorderStyle = 0 'None
    Begin CommandButton cmdSave
      Caption = "Save/Exit"
      Left = 6690
      Top = 2145
      Width = 1890
      Height = 405
      TabIndex = 33
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
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 33
      BackColor = &HFFFFFF&
      Left = 3540
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 34
      BackColor = &HFFFFFF&
      Left = 4740
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 35
      BackColor = &HFFFFFF&
      Left = 5940
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 36
      BackColor = &HFFFFFF&
      Left = 7140
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 37
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 38
      BackColor = &HFFFFFF&
      Left = 3540
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 39
      BackColor = &HFFFFFF&
      Left = 4740
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 40
      BackColor = &HFFFFFF&
      Left = 5940
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 41
      BackColor = &HFFFFFF&
      Left = 7140
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 42
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 47
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 1560
      Width = 1065
      Height = 255
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
      Index = 43
      BackColor = &HFFFFFF&
      Left = 3540
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 48
      BackColor = &HFFFFFF&
      Left = 3540
      Top = 1560
      Width = 1065
      Height = 255
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
      Index = 44
      BackColor = &HFFFFFF&
      Left = 4740
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 49
      BackColor = &HFFFFFF&
      Left = 4740
      Top = 1560
      Width = 1065
      Height = 255
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
      Index = 45
      BackColor = &HFFFFFF&
      Left = 5940
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 50
      BackColor = &HFFFFFF&
      Left = 5940
      Top = 1560
      Width = 1065
      Height = 255
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
      Index = 46
      BackColor = &HFFFFFF&
      Left = 7140
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 51
      BackColor = &HFFFFFF&
      Left = 7140
      Top = 1560
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
    Begin TextBox Txt
      Index = 52
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 2025
      Width = 1050
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
      Index = 53
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 2295
      Width = 1050
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
    Begin Label LblName
      Caption = "(+/-)"
      Index = 35
      ForeColor = &H400000&
      Left = 1245
      Top = 1575
      Width = 390
      Height = 195
      TabIndex = 96
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
      Index = 33
      ForeColor = &H0&
      Left = 2325
      Top = 270
      Width = 945
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
    Begin Label LblName
      Caption = "Rack Rate"
      Index = 32
      ForeColor = &H0&
      Left = 3540
      Top = 270
      Width = 990
      Height = 240
      TabIndex = 88
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
      Index = 31
      ForeColor = &H0&
      Left = 4740
      Top = 270
      Width = 1035
      Height = 240
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
      Caption = "Disc2 Rate"
      Index = 30
      ForeColor = &H0&
      Left = 5940
      Top = 270
      Width = 1035
      Height = 240
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
    Begin Label LblName
      Caption = "Disc3 Rate"
      Index = 29
      ForeColor = &H0&
      Left = 7140
      Top = 270
      Width = 1035
      Height = 240
      TabIndex = 85
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
      Index = 28
      ForeColor = &H0&
      Left = 375
      Top = 780
      Width = 570
      Height = 240
      TabIndex = 84
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
      Index = 27
      ForeColor = &H0&
      Left = 375
      Top = 1050
      Width = 750
      Height = 240
      TabIndex = 83
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
      Index = 26
      ForeColor = &H0&
      Left = 375
      Top = 255
      Width = 1575
      Height = 240
      TabIndex = 82
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
      Index = 25
      ForeColor = &H0&
      Left = 375
      Top = 1320
      Width = 1245
      Height = 240
      TabIndex = 81
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
      Index = 24
      ForeColor = &H0&
      Left = 375
      Top = 1590
      Width = 900
      Height = 240
      TabIndex = 80
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
    Begin Shape Shape4
      Left = 105
      Top = 210
      Width = 8445
      Height = 1710
    End
    Begin Shape Shape3
      Left = 105
      Top = 585
      Width = 8445
      Height = 1335
    End
    Begin Label Label2
      Caption = "Tariff"
      BackColor = &HD0EAE6&
      Left = 120
      Top = 0
      Width = 555
      Height = 330
      TabIndex = 79
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
      Index = 23
      ForeColor = &H0&
      Left = 375
      Top = 2025
      Width = 1230
      Height = 240
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
      Caption = "Monthly Rate"
      Index = 22
      ForeColor = &H0&
      Left = 375
      Top = 2295
      Width = 1305
      Height = 240
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
  End
  Begin CommandButton CmdRate
    Caption = "Season &Rate"
    Left = 12195
    Top = 8055
    Width = 1890
    Height = 405
    Visible = 0   'False
    TabIndex = 90
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
    Style = 1
  End
  Begin TextBox Txt
    Index = 31
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 1125
    Width = 1680
    Height = 285
    Visible = 0   'False
    TabIndex = 0
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
    Index = 30
    BackColor = &HFFFFFF&
    Left = 12930
    Top = 7470
    Width = 1320
    Height = 255
    Visible = 0   'False
    TabIndex = 55
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
    Index = 29
    BackColor = &HFFFFFF&
    Left = 12930
    Top = 7200
    Width = 1320
    Height = 255
    Visible = 0   'False
    TabIndex = 54
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
    Index = 28
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 4200
    Width = 1065
    Height = 285
    TabIndex = 53
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
    Left = 7890
    Top = 3885
    Width = 1065
    Height = 285
    TabIndex = 52
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
    Left = 6660
    Top = 4200
    Width = 1065
    Height = 285
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
    Index = 22
    BackColor = &HFFFFFF&
    Left = 6660
    Top = 3885
    Width = 1065
    Height = 285
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
    Index = 26
    BackColor = &HFFFFFF&
    Left = 5445
    Top = 4200
    Width = 1065
    Height = 285
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 5445
    Top = 3885
    Width = 1065
    Height = 285
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
    Index = 25
    BackColor = &HFFFFFF&
    Left = 4245
    Top = 4200
    Width = 1065
    Height = 285
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
    Index = 20
    BackColor = &HFFFFFF&
    Left = 4245
    Top = 3885
    Width = 1065
    Height = 285
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
    Index = 24
    BackColor = &HFFFFFF&
    Left = 3030
    Top = 4200
    Width = 1065
    Height = 285
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 3030
    Top = 3885
    Width = 1065
    Height = 285
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
    Index = 18
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 17
    BackColor = &HFFFFFF&
    Left = 6660
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 16
    BackColor = &HFFFFFF&
    Left = 5445
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 4245
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 14
    BackColor = &HFFFFFF&
    Left = 3030
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 13
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 12
    BackColor = &HFFFFFF&
    Left = 6660
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 11
    BackColor = &HFFFFFF&
    Left = 5445
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 10
    BackColor = &HFFFFFF&
    Left = 4245
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 9
    BackColor = &HFFFFFF&
    Left = 3030
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7965
    Top = 2070
    Width = 1065
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 2070
    Width = 630
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5445
    Top = 1440
    Width = 405
    Height = 285
    TabIndex = 3
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7965
    Top = 1755
    Width = 1065
    Height = 285
    TabIndex = 8
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7965
    Top = 1440
    Width = 1065
    Height = 285
    TabIndex = 7
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7965
    Top = 1125
    Width = 1065
    Height = 285
    TabIndex = 6
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
    Left = 10995
    Top = 465
    Width = 405
    Height = 255
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 1440
    Width = 1035
    Height = 285
    TabIndex = 2
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 1125
    Width = 3285
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
  Begin Label LblName
    Caption = "MapCode"
    Index = 36
    ForeColor = &HC00000&
    Left = 3285
    Top = 2100
    Width = 795
    Height = 225
    TabIndex = 111
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
  Begin Image Image2
    Picture = "FrmRoomCatMast.frx":34E
    Left = 2265
    Top = 3210
    Width = 360
    Height = 360
  End
  Begin Image Image1
    Picture = "FrmRoomCatMast.frx":A50
    Left = 2265
    Top = 3600
    Width = 360
    Height = 360
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5565
    Top = 6390
    Width = 2790
    Height = 285
    TabIndex = 108
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
    Left = 1605
    Top = 6390
    Width = 2880
    Height = 255
    TabIndex = 107
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
    TabIndex = 106
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 3
    ForeColor = &H0&
    Left = 14295
    Top = 7755
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 105
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblLedgerAc
    Caption = "Active"
    Index = 4
    ForeColor = &H0&
    Left = 11220
    Top = 7740
    Width = 630
    Height = 240
    Visible = 0   'False
    TabIndex = 104
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
    Caption = "(+/-)"
    Index = 37
    ForeColor = &H400000&
    Left = 2640
    Top = 4215
    Width = 360
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
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 10800
    Top = 8505
    Width = 495
    Height = 240
    Visible = 0   'False
    TabIndex = 94
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Short Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 945
    Top = 1440
    Width = 1125
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
  Begin Label LblName
    Caption = "Multiple Persons"
    Index = 7
    ForeColor = &HC00000&
    Left = 945
    Top = 2070
    Width = 1575
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
    Caption = "Revenue Charge"
    Index = 34
    ForeColor = &HC00000&
    Left = 945
    Top = 1755
    Width = 1590
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
    Caption = "Room Type"
    Index = 21
    ForeColor = &HC00000&
    Left = 945
    Top = 1125
    Width = 1080
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
    Caption = "Monthly Rate"
    Index = 20
    ForeColor = &H0&
    Left = 11220
    Top = 7470
    Width = 1305
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
  Begin Label LblName
    Caption = "Weekly Rate"
    Index = 19
    ForeColor = &H0&
    Left = 11220
    Top = 7200
    Width = 1230
    Height = 240
    Visible = 0   'False
    TabIndex = 73
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
    Index = 0
    BackColor = &HF8DEE0&
    ForeColor = &H80&
    Left = 1365
    Top = 2415
    Width = 540
    Height = 270
    TabIndex = 72
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
    Left = 1275
    Top = 2700
    Width = 7995
    Height = 390
    BorderWidth = 2
    FillColor = &HC00000&
  End
  Begin Label LblName
    Caption = "Weekend"
    Index = 18
    ForeColor = &HC00000&
    Left = 1650
    Top = 4230
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
    Caption = "Extra Person"
    Index = 17
    ForeColor = &HC00000&
    Left = 1650
    Top = 3915
    Width = 1215
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
    Caption = "Occupancy Type"
    Index = 16
    ForeColor = &H80&
    Left = 1395
    Top = 2760
    Width = 1575
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
    Caption = "Multiple"
    Index = 15
    ForeColor = &HC00000&
    Left = 1785
    Top = 5430
    Width = 765
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
    Caption = "Single"
    Index = 14
    ForeColor = &HC00000&
    Left = 765
    Top = 5535
    Width = 615
    Height = 240
    Visible = 0   'False
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
    Caption = "Disc3 Rate"
    Index = 13
    ForeColor = &H80&
    Left = 7890
    Top = 2775
    Width = 990
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
  Begin Label LblName
    Caption = "Disc2 Rate"
    Index = 12
    ForeColor = &H80&
    Left = 6660
    Top = 2775
    Width = 990
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
  Begin Label LblName
    Caption = "Disc1 Rate"
    Index = 11
    ForeColor = &H80&
    Left = 5445
    Top = 2775
    Width = 990
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
  Begin Label LblName
    Caption = "Rack Rate"
    Index = 10
    ForeColor = &H80&
    Left = 4245
    Top = 2775
    Width = 960
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
  Begin Label LblName
    Caption = "High Rate"
    Index = 9
    ForeColor = &H80&
    Left = 3120
    Top = 2775
    Width = 930
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
    Caption = "Include Room Count"
    Index = 8
    ForeColor = &HC00000&
    Left = 5985
    Top = 2070
    Width = 1935
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
    Caption = "No. of Rooms"
    Index = 6
    ForeColor = &HC00000&
    Left = 4140
    Top = 1440
    Width = 1260
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
  Begin Label LblName
    Caption = "Minimum Advance"
    Index = 5
    ForeColor = &HC00000&
    Left = 5985
    Top = 1755
    Width = 1770
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
    Caption = "Cancellation Charge"
    Index = 4
    ForeColor = &HC00000&
    Left = 5985
    Top = 1440
    Width = 1950
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
  Begin Label LblName
    Caption = "Retention Charge"
    Index = 3
    ForeColor = &HC00000&
    Left = 5985
    Top = 1125
    Width = 1665
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
  Begin Label LblName
    Caption = "Max Person"
    Index = 2
    ForeColor = &H0&
    Left = 9780
    Top = 510
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 56
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "FrmRoomCatMast"

Private MasterFormExit As Integer
Private global_72 As Recordset15

Private Sub CmdRate_Click() '16384C8
  'Data Table: 4D2548
  Dim var_A4 As String
  Dim var_B4 As Variant
  Dim var_8C As String
  Dim var_178 As String
  Dim var_90 As Variant
  Dim var_180 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_174 As Variant
  Dim unk_4D2556 As Connection15
  Dim var_19C As Variant
  Dim var_88 As Recordset15
  loc_1636F14: On Error Goto loc_16384C1
  loc_1636F1B: Set var_90 = Me.TopCtrl1
  loc_1636F21: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1636F29: var_A4 = CStr()
  loc_1636F3A: If (var_A4 = "Add") Then
  loc_1636F3D:   Exit Sub
  loc_1636F3E: End If
  loc_1636F52: var_D4 = "Rate Category"
  loc_1636F58: var_B4 = "Rate Category (A-Z)"
  loc_1636F9D: var_8C = var_A4
  loc_1636FB1: If (Trim(InputBox(InputBox(var_B4, var_D4, var_F4, var_114, var_134, var_154, var_174), var_D4, var_F4, var_114, var_134, var_154, var_174)) = vbNullString) Then
  loc_1636FB4:   Exit Sub
  loc_1636FB5: End If
  loc_1636FD2: var_8C = var_A4
  loc_1636FD8: var_178 = CStr(Trim(var_8C))
  loc_1636FE6: Me.SRate.Tag = var_178
  loc_1637013: If (Me.SRate.Visible = 0) Then
  loc_1637022:   Me.SRate.Visible = True
  loc_163702A: End If
  loc_1637035: Set var_90 = Me.Txt
  loc_163703B: Call 0.Method_CmdRate_Click0 (CInt(&H20), var_180)
  loc_1637043: var_180.SetFocus
  loc_163706F: Set var_90 = Me.Txt
  loc_1637075: Call 0.Method_CmdRate_Click0 (CInt(0), var_180, var_A4, "Select * from RateList where Roomcat=")
  loc_163707D: var_194 = var_180.Tag
  loc_163708B: Proc_6_17_EAA2B0(var_D4, CVar(var_A4), -1)
  loc_16370C6: Proc_6_17_EAA2B0(var_154, Trim(var_178))
  loc_16370DC: unk_4D2556.Execute CStr(var_198 & var_D4 & " And RoomNo='*****' And Code=" & var_154), var_178, 
  loc_16370E7: Set var_88 = var_198
  loc_163711B: Set var_90 = Me.Txt
  loc_1637121: Call 0.Method_CmdRate_Click0 (CInt(&H20), var_180)
  loc_1637129: var_180.Text = vbNullString
  loc_1637143: Set var_90 = Me.Txt
  loc_1637149: Call 0.Method_CmdRate_Click0 (CInt(&H21), var_180)
  loc_1637151: var_180.Text = vbNullString
  loc_163716B: Set var_90 = Me.Txt
  loc_1637171: Call 0.Method_CmdRate_Click0 (CInt(&H22), var_180)
  loc_1637179: var_180.Text = vbNullString
  loc_1637193: Set var_90 = Me.Txt
  loc_1637199: Call 0.Method_CmdRate_Click0 (CInt(&H23), var_180)
  loc_16371A1: var_180.Text = vbNullString
  loc_16371BB: Set var_90 = Me.Txt
  loc_16371C1: Call 0.Method_CmdRate_Click0 (CInt(&H24), var_180)
  loc_16371C9: var_180.Text = vbNullString
  loc_16371E3: Set var_90 = Me.Txt
  loc_16371E9: Call 0.Method_CmdRate_Click0 (CInt(&H34), var_180)
  loc_16371F1: var_180.Text = vbNullString
  loc_163720B: Set var_90 = Me.Txt
  loc_1637211: Call 0.Method_CmdRate_Click0 (CInt(&H35), var_180)
  loc_1637219: var_180.Text = vbNullString
  loc_1637233: Set var_90 = Me.Txt
  loc_1637239: Call 0.Method_CmdRate_Click0 (CInt(&H25), var_180)
  loc_1637241: var_180.Text = vbNullString
  loc_163725B: Set var_90 = Me.Txt
  loc_1637261: Call 0.Method_CmdRate_Click0 (CInt(&H26), var_180)
  loc_1637269: var_180.Text = vbNullString
  loc_1637283: Set var_90 = Me.Txt
  loc_1637289: Call 0.Method_CmdRate_Click0 (CInt(&H27), var_180)
  loc_1637291: var_180.Text = vbNullString
  loc_16372AB: Set var_90 = Me.Txt
  loc_16372B1: Call 0.Method_CmdRate_Click0 (CInt(&H28), var_180)
  loc_16372B9: var_180.Text = vbNullString
  loc_16372D3: Set var_90 = Me.Txt
  loc_16372D9: Call 0.Method_CmdRate_Click0 (CInt(&H29), var_180)
  loc_16372E1: var_180.Text = vbNullString
  loc_16372FB: Set var_90 = Me.Txt
  loc_1637301: Call 0.Method_CmdRate_Click0 (CInt(&H2A), var_180)
  loc_1637309: var_180.Text = vbNullString
  loc_1637323: Set var_90 = Me.Txt
  loc_1637329: Call 0.Method_CmdRate_Click0 (CInt(&H2B), var_180)
  loc_1637331: var_180.Text = vbNullString
  loc_163734B: Set var_90 = Me.Txt
  loc_1637351: Call 0.Method_CmdRate_Click0 (CInt(&H2C), var_180)
  loc_1637359: var_180.Text = vbNullString
  loc_1637373: Set var_90 = Me.Txt
  loc_1637379: Call 0.Method_CmdRate_Click0 (CInt(&H2D), var_180)
  loc_1637381: var_180.Text = vbNullString
  loc_163739B: Set var_90 = Me.Txt
  loc_16373A1: Call 0.Method_CmdRate_Click0 (CInt(&H2E), var_180)
  loc_16373A9: var_180.Text = vbNullString
  loc_16373C3: Set var_90 = Me.Txt
  loc_16373C9: Call 0.Method_CmdRate_Click0 (CInt(&H2F), var_180)
  loc_16373D1: var_180.Text = vbNullString
  loc_16373EB: Set var_90 = Me.Txt
  loc_16373F1: Call 0.Method_CmdRate_Click0 (CInt(&H30), var_180)
  loc_16373F9: var_180.Text = vbNullString
  loc_1637413: Set var_90 = Me.Txt
  loc_1637419: Call 0.Method_CmdRate_Click0 (CInt(&H31), var_180)
  loc_1637421: var_180.Text = vbNullString
  loc_163743B: Set var_90 = Me.Txt
  loc_1637441: Call 0.Method_CmdRate_Click0 (CInt(&H32), var_180)
  loc_1637449: var_180.Text = vbNullString
  loc_1637463: Set var_90 = Me.Txt
  loc_1637469: Call 0.Method_CmdRate_Click0 (CInt(&H33), var_180)
  loc_1637471: var_180.Text = vbNullString
  loc_163747D: ' Referenced from: 16384B5
  loc_163748F: If Not(Me.Recordset15.EOF) Then
  loc_16374D1:   If (Me.Recordset15.Fields.Item("OccType").Value = "Single") Then
  loc_163750B:     Set var_198 = Me.LblName
  loc_1637511:     Call 0.Method_CmdRate_Click0 (&HE, var_19C)
  loc_1637519:     var_19C.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OccType")))
  loc_1637582:     Set var_198 = Me.Txt
  loc_1637588:     Call 0.Method_CmdRate_Click0 (CInt(&H20), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_1637590:     var_19C.Text = 1
  loc_16375FF:     Set var_198 = Me.Txt
  loc_1637605:     Call 0.Method_CmdRate_Click0 (CInt(&H21), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")))
  loc_163760D:     var_19C.Text = 1
  loc_163767C:     Set var_198 = Me.Txt
  loc_1637682:     Call 0.Method_CmdRate_Click0 (CInt(&H22), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_163768A:     var_19C.Text = 1
  loc_16376F9:     Set var_198 = Me.Txt
  loc_16376FF:     Call 0.Method_CmdRate_Click0 (CInt(&H23), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_1637707:     var_19C.Text = 1
  loc_1637776:     Set var_198 = Me.Txt
  loc_163777C:     Call 0.Method_CmdRate_Click0 (CInt(&H24), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_1637784:     var_19C.Text = 1
  loc_16377F3:     Set var_198 = Me.Txt
  loc_16377F9:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_1637801:     var_19C.Text = 1
  loc_1637870:     Set var_198 = Me.Txt
  loc_1637876:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_163787E:     var_19C.Text = 1
  loc_1637898:   End If
  loc_16378D7:   If (Me.Recordset15.Fields.Item("OccType").Value = "Multiple") Then
  loc_1637911:     Set var_198 = Me.LblName
  loc_1637917:     Call 0.Method_CmdRate_Click0 (&HF, var_19C)
  loc_163791F:     var_19C.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_1637988:     Set var_198 = Me.Txt
  loc_163798E:     Call 0.Method_CmdRate_Click0 (CInt(&H25), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_1637996:     var_19C.Text = 1
  loc_1637A05:     Set var_198 = Me.Txt
  loc_1637A0B:     Call 0.Method_CmdRate_Click0 (CInt(&H26), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_1637A13:     var_19C.Text = 1
  loc_1637A82:     Set var_198 = Me.Txt
  loc_1637A88:     Call 0.Method_CmdRate_Click0 (CInt(&H27), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_1637A90:     var_19C.Text = 1
  loc_1637AFF:     Set var_198 = Me.Txt
  loc_1637B05:     Call 0.Method_CmdRate_Click0 (CInt(&H28), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_1637B0D:     var_19C.Text = 1
  loc_1637B7C:     Set var_198 = Me.Txt
  loc_1637B82:     Call 0.Method_CmdRate_Click0 (CInt(&H29), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_1637B8A:     var_19C.Text = 1
  loc_1637BF9:     Set var_198 = Me.Txt
  loc_1637BFF:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_1637C07:     var_19C.Text = 1
  loc_1637C76:     Set var_198 = Me.Txt
  loc_1637C7C:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_1637C84:     var_19C.Text = 1
  loc_1637C9E:   End If
  loc_1637CDD:   If (Me.Recordset15.Fields.Item("OccType").Value = "Extra Person") Then
  loc_1637D17:     Set var_198 = Me.LblName
  loc_1637D1D:     Call 0.Method_CmdRate_Click0 (&H11, var_19C)
  loc_1637D25:     var_19C.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_1637D8E:     Set var_198 = Me.Txt
  loc_1637D94:     Call 0.Method_CmdRate_Click0 (CInt(&H2A), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_1637D9C:     var_19C.Text = 1
  loc_1637E0B:     Set var_198 = Me.Txt
  loc_1637E11:     Call 0.Method_CmdRate_Click0 (CInt(&H2B), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_1637E19:     var_19C.Text = 1
  loc_1637E88:     Set var_198 = Me.Txt
  loc_1637E8E:     Call 0.Method_CmdRate_Click0 (CInt(&H2C), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_1637E96:     var_19C.Text = 1
  loc_1637F05:     Set var_198 = Me.Txt
  loc_1637F0B:     Call 0.Method_CmdRate_Click0 (CInt(&H2D), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_1637F13:     var_19C.Text = 1
  loc_1637F82:     Set var_198 = Me.Txt
  loc_1637F88:     Call 0.Method_CmdRate_Click0 (CInt(&H2E), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_1637F90:     var_19C.Text = 1
  loc_1637FFF:     Set var_198 = Me.Txt
  loc_1638005:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_163800D:     var_19C.Text = 1
  loc_163807C:     Set var_198 = Me.Txt
  loc_1638082:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_163808A:     var_19C.Text = 1
  loc_16380A4:   End If
  loc_16380E3:   If (Me.Recordset15.Fields.Item("OccType").Value = "Weekend") Then
  loc_163811D:     Set var_198 = Me.LblName
  loc_1638123:     Call 0.Method_CmdRate_Click0 (&H12, var_19C)
  loc_163812B:     var_19C.Caption = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_1638194:     Set var_198 = Me.Txt
  loc_163819A:     Call 0.Method_CmdRate_Click0 (CInt(&H2F), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_16381A2:     var_19C.Text = 1
  loc_1638211:     Set var_198 = Me.Txt
  loc_1638217:     Call 0.Method_CmdRate_Click0 (CInt(&H30), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_163821F:     var_19C.Text = 1
  loc_163828E:     Set var_198 = Me.Txt
  loc_1638294:     Call 0.Method_CmdRate_Click0 (CInt(&H31), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_163829C:     var_19C.Text = 1
  loc_163830B:     Set var_198 = Me.Txt
  loc_1638311:     Call 0.Method_CmdRate_Click0 (CInt(&H32), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_1638319:     var_19C.Text = 1
  loc_1638388:     Set var_198 = Me.Txt
  loc_163838E:     Call 0.Method_CmdRate_Click0 (CInt(&H33), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_1638396:     var_19C.Text = 1
  loc_1638405:     Set var_198 = Me.Txt
  loc_163840B:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_1638413:     var_19C.Text = 1
  loc_1638482:     Set var_198 = Me.Txt
  loc_1638488:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_1638490:     var_19C.Text = 1
  loc_16384AA:   End If
  loc_16384B0:   var_88.MoveNext
  loc_16384B5:   GoTo loc_163747D
  loc_16384B8: End If
  loc_16384BD: Set var_88 = Nothing
  loc_16384C0: Exit Sub
  loc_16384C1: ' Referenced from: 1636F14
  loc_16384C1: Proc_6_60_E62BC4(1)
  loc_16384C6: Exit Sub
End Sub

Private Sub Form_Load() '13CCB70
  'Data Table: 4D2548
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_B0 As String
  Dim unk_4D2556 As Connection15
  Dim var_F8 As Variant
  Dim var_100 As Variant
  Dim var_FC As DataGrid
  Dim var_108 As DataGrid
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim Me As Recordset15
  loc_13CC1E0: On Error Goto loc_13CCB68
  loc_13CC1F2: Me.LblUser.Left = CDbl(13500)
  loc_13CC209: Me.LblUser.Top = CDbl(7800)
  loc_13CC220: Me.LblLDt.Top = CDbl(8160)
  loc_13CC237: Me.LblLDt.Left = CDbl(13500)
  loc_13CC246: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13CC255: Set var_8C = Me.TopCtrl1
  loc_13CC25B: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_13CC269: Call 0.Method_arg_50 (var_B0)
  loc_13CC271: var_C0 = CVar(var_B0) 'String
  loc_13CC279: Set var_8C = Me.TopCtrl1
  loc_13CC27F: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_C0)
  loc_13CC2A7: Proc_6_17_EAA2B0(var_C0, MemVar_1F92078, "Select * from enviro WHERE LogSite_Code=")
  loc_13CC2BD: unk_4D2556.Execute CStr(var_F0 & var_C0), -1, var_8C
  loc_13CC2C8: Set var_88 = var_8C
  loc_13CC2F1: If (Me.Recordset15.RecordCount > 0) Then
  loc_13CC337:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate1"))) <> vbNullString) Then
  loc_13CC374:     Set var_FC = Me.LblName
  loc_13CC37A:     Call 0.Method_Form_Load0 (9, var_100)
  loc_13CC382:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate1").Value)
  loc_13CC3D2:     Set var_FC = Me.LblName
  loc_13CC3D8:     Call 0.Method_Form_Load0 (&H21, var_100)
  loc_13CC3E0:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate1").Value)
  loc_13CC3F6:   End If
  loc_13CC439:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate2"))) <> vbNullString) Then
  loc_13CC476:     Set var_FC = Me.LblName
  loc_13CC47C:     Call 0.Method_Form_Load0 (&HA, var_100)
  loc_13CC484:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate2").Value)
  loc_13CC4D4:     Set var_FC = Me.LblName
  loc_13CC4DA:     Call 0.Method_Form_Load0 (&H20, var_100)
  loc_13CC4E2:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate2").Value)
  loc_13CC4F8:   End If
  loc_13CC53B:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate3"))) <> vbNullString) Then
  loc_13CC578:     Set var_FC = Me.LblName
  loc_13CC57E:     Call 0.Method_Form_Load0 (&HB, var_100)
  loc_13CC586:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate3").Value)
  loc_13CC5D6:     Set var_FC = Me.LblName
  loc_13CC5DC:     Call 0.Method_Form_Load0 (&H1F, var_100)
  loc_13CC5E4:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate3").Value)
  loc_13CC5FA:   End If
  loc_13CC63D:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate4"))) <> vbNullString) Then
  loc_13CC67A:     Set var_FC = Me.LblName
  loc_13CC680:     Call 0.Method_Form_Load0 (&HC, var_100)
  loc_13CC688:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate4").Value)
  loc_13CC6D8:     Set var_FC = Me.LblName
  loc_13CC6DE:     Call 0.Method_Form_Load0 (&H1E, var_100)
  loc_13CC6E6:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate4").Value)
  loc_13CC6FC:   End If
  loc_13CC73F:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate5"))) <> vbNullString) Then
  loc_13CC77C:     Set var_FC = Me.LblName
  loc_13CC782:     Call 0.Method_Form_Load0 (&HD, var_100)
  loc_13CC78A:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate5").Value)
  loc_13CC7BD:     var_F8 = Me.Recordset15.Fields.Item("Rate5")
  loc_13CC7DA:     Set var_FC = Me.LblName
  loc_13CC7E0:     Call 0.Method_Form_Load0 (&H1D, var_100)
  loc_13CC7E8:     var_100.Caption = CStr(var_F8.Value)
  loc_13CC7FE:   End If
  loc_13CC7FE: End If
  loc_13CC803: Set var_88 = Nothing
  loc_13CC814: Set var_8C = Me.Txt
  loc_13CC81A: Call 0.Method_Form_Load0 (CInt(&H36), var_F8)
  loc_13CC839: Me.DGRevenue.Left = CVar(var_F8.Left)
  loc_13CC855: Set var_FC = Me.Txt
  loc_13CC85B: Call 0.Method_Form_Load0 (CInt(&H36), var_100)
  loc_13CC863: var_104 = var_100.Height
  loc_13CC876: Set var_8C = Me.Txt
  loc_13CC87C: Call 0.Method_Form_Load0 (CInt(&H36), var_F8)
  loc_13CC884: var_F4 = var_F8.Top
  loc_13CC894: var_9C = CVar(((var_F4 + var_104) + CDbl(&H1E))) 'Single
  loc_13CC89D: Set var_108 = Me.DGRevenue
  loc_13CC8A3: var_108.Top = CVar(var_F8.Left)
  loc_13CC8BF: Set global_72 = New 
  loc_13CC8D4: Me.var_108.CursorLocation = 3
  loc_13CC90D: var_D0 = (Trim(MemVar_1F92078) + "FOM")
  loc_13CC91A: var_128 = "Select distinct Code,Name,TaxStru From RevMast WHERE DESKCODE='" & Trim(CVar(Me.Recordset15.Fields.Item("Rate5"))) & "' AND (LOGSITE_CODE='" 
  loc_13CC93B: Me.Recordset15.Open var_128 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO')  AND FLAGTYPE='FOM' AND FLAGAMR='Detail' Order by Name", CVar(MemVar_1F92044), 2
  loc_13CC95B: CVarUnk
  loc_13CC960: VerifyVarObj
  loc_13CC966: Set var_8C = Me.DGRevenue
  loc_13CC96C: LateIdStAd
  loc_13CC98E: Call 0.Method_Form_Load0 (CInt(0), var_F8, var_F4, Me.Txt)
  loc_13CC996: global_72 = var_F8.Left
  loc_13CC9AD: Me.DGHelp.Left = CVar(var_F4)
  loc_13CC9C9: Set var_FC = Me.Txt
  loc_13CC9CF: Call 0.Method_Form_Load0 (CInt(0), var_100, var_104)
  loc_13CC9D7: 3 = var_100.Height
  loc_13CC9EA: Set var_8C = Me.Txt
  loc_13CC9F0: Call 0.Method_Form_Load0 (CInt(0), var_F8)
  loc_13CCA08: var_9C = CVar(((var_F8.Top + var_104) + CDbl(&H1E))) 'Single
  loc_13CCA11: Set var_108 = Me.DGHelp
  loc_13CCA17: var_108.Top = CVar(var_F8.Top)
  loc_13CCA45: Me.var_108.CursorLocation = 3
  loc_13CCA6F: var_C0 = CVar("Select distinct Code As Code,Name From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_13CCA8D: CVarUnk
  loc_13CCA92: VerifyVarObj
  loc_13CCA98: Set var_8C = Me.DGHelp
  loc_13CCA9E: LateIdStAd
  loc_13CCAC8: Me.DGHelp.CursorLocation = 3
  loc_13CCAF2: var_C0 = CVar("Select distinct Code as SearchCode,* From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_13CCAFC: r_C0, CVar(MemVar_1F92044), 2 var_C0, CVar(MemVar_1F92044), 2
  loc_13CCB16: Me.SRate.Top = CDbl(1575)
  loc_13CCB2C: Me.SRate.Left = CDbl(&H3C)
  loc_13CCB57: Call Proc_23_40_EC1E9C(Proc_5_1_100CB50("INI", Me, New, 3, -1), Me, New)
  loc_13CCB62: Call Proc_23_39_17125F8(3, -1)
  loc_13CCB67: Exit Sub
  loc_13CCB68: ' Referenced from: 13CC1E0
  loc_13CCB68: Proc_6_60_E62BC4(-1)
  loc_13CCB6D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8C08
  'Data Table: 4D2548
  Dim var_8C As Label
  loc_ED8B66: Call 0.Method_arg_50 (var_88)
  loc_ED8B78: Me.LblFormCaption.Caption = var_88
  loc_ED8B91: Me.LblFormCaption.Left = CDbl(0)
  loc_ED8B9D: Set var_A0 = Me.TopCtrl1
  loc_ED8BA3: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8BB0: Set var_8C = Me.TopCtrl1
  loc_ED8BB6: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8BD0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED8BEB: Call 0.Method_arg_100 (var_B8)
  loc_ED8BFD: Me.LblFormCaption.Width = var_B8
  loc_ED8C05: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E40368
  'Data Table: 4D2548
  loc_E40343: Set global_68 = Nothing
  loc_E40355: Set global_64 = Nothing
  loc_E40361: MasterFormExit = 0
  loc_E40364: Exit Sub
  loc_E40365: CExtInstUnk
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E599A4
  'Data Table: 4D2548
  loc_E5996C: Set var_88 = Me.TopCtrl1
  loc_E59972: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E59995: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5999D:   Call Form_Unload(&HFF)
  loc_E599A2: End If
  loc_E599A2: Exit Sub
End Sub

Private Sub Form_Activate() 'E4E9C0
  'Data Table: 4D2548
  loc_E4E990: On Error Goto loc_E4E9BA
  loc_E4E997: Set var_88 = Me.TopCtrl1
  loc_E4E99D: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4E9B2: If (CLng(CInt()) = &H2D) Then
  loc_E4E9B5:   Call TopCtrl1_UnknownEvent_15()
  loc_E4E9BA:   ' Referenced from: E4E990
  loc_E4E9BA: End If
  loc_E4E9BA: Proc_6_60_E62BC4()
  loc_E4E9BF: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E254EC
  'Data Table: 4D2548
  loc_E254D1: If (MasterFormExit = &HFF) Then
  loc_E254E1:   Me.Global.Unload Me
  loc_E254E9: End If
  loc_E254E9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A2FC
  'Data Table: 4D2548
  loc_E2A2D4: On Error Goto loc_E2A2F4
  loc_E2A2EB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A2F3: Exit Sub
  loc_E2A2F4: ' Referenced from: E2A2D4
  loc_E2A2F4: Proc_6_60_E62BC4(Shift)
  loc_E2A2F9: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F38704
  'Data Table: 4D2548
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F385FB: Me.DGHelp.Visible = False
  loc_F3861A: If (Me.RecordCount > 0) Then
  loc_F38659:   Set var_B4 = Me.Txt
  loc_F3865F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F38667:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3869A:   var_B0 = Me.Fields.Item("Name")
  loc_F386B9:   Set var_B4 = Me.Txt
  loc_F386BF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F386C7:   var_B8.Text = CStr(var_B0.Value)
  loc_F386DD: End If
  loc_F386E8: Set var_A8 = Me.Txt
  loc_F386EE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F386F6: var_B0.SetFocus
  loc_F38702: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA23D4
  'Data Table: 4D2548
  Dim var_A8 As Variant
  loc_EA2354: Set var_88 = Me.DGHelp
  loc_EA237E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2386: Set var_BC = Me.DGHelp
  loc_EA23C2: Proc_6_138_106D6F8(Me.DGHelp, global_68, CInt(0), Me.FGPoint)
  loc_EA23D0: Exit Sub
  loc_EA23D1: StAryRecMove
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F1DFC0
  'Data Table: 4D2548
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F1DEBC: On Error Goto loc_F1DFBA
  loc_F1DECC: Me.LblUser.Caption = vbNullString
  loc_F1DEE1: Me.LblLDt.Caption = vbNullString
  loc_F1DF0C: Call Proc_23_40_EC1E9C(Proc_5_1_100CB50("ADD", Me))
  loc_F1DF17: Call Proc_23_38_FA04A8(global_64)
  loc_F1DF2A: Set var_88 = Me.Txt
  loc_F1DF30: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1F), var_94)
  loc_F1DF38: var_94.Text = "Room"
  loc_F1DF52: Set var_88 = Me.Txt
  loc_F1DF58: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1F), var_94)
  loc_F1DF60: var_94.Tag = "RO"
  loc_F1DF7A: Set var_88 = Me.Txt
  loc_F1DF80: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94)
  loc_F1DF88: var_94.Text = "Yes"
  loc_F1DF9F: Set var_88 = Me.Txt
  loc_F1DFA5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F1DFAD: var_94.SetFocus
  loc_F1DFB9: Exit Sub
  loc_F1DFBA: ' Referenced from: F1DEBC
  loc_F1DFBA: Proc_6_60_E62BC4(var_94)
  loc_F1DFBF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9FDC8
  'Data Table: 4D2548
  loc_E9FD50: On Error Goto loc_E9FDC1
  loc_E9FD8A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9FDB0:   Call Proc_23_40_EC1E9C(Proc_5_1_100CB50("INI", Me))
  loc_E9FDBB:   Call Proc_23_39_17125F8(global_64)
  loc_E9FDC0: End If
  loc_E9FDC0: Exit Sub
  loc_E9FDC1: ' Referenced from: E9FD50
  loc_E9FDC1: Proc_6_60_E62BC4()
  loc_E9FDC6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '122CE54
  'Data Table: 4D2548
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_96 As Integer
  Dim unk_4D2556 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_122C968: On Error Goto loc_122CDFA
  loc_122C978: Me.LblUser.Caption = vbNullString
  loc_122C98D: Me.LblLDt.Caption = vbNullString
  loc_122C9A3: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_122C9A6:   Exit Sub
  loc_122C9A7: End If
  loc_122C9D9: var_D4 = "Room Master"
  loc_122CA21: If (Proc_6_108_1010FEC(MemVar_1F92044, "RoomMast", "RoomCat", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_122CA24:   Exit Sub
  loc_122CA25: End If
  loc_122CA5C: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_122CA61:   var_96 = 0
  loc_122CA6D:   unk_4D2556.BeginTrans var_D0
  loc_122CA74:   var_96 = &HFF
  loc_122CA88:   var_94 = Me.Bookmark 'Variant
  loc_122CAE2:   unk_4D2556.Execute CStr("Delete From RoomCat Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_122CB2D:   var_168 = 0
  loc_122CB40:   var_160 = 0
  loc_122CB4B:   var_15C = 0
  loc_122CB5E:   var_154 = 0
  loc_122CB69:   var_150 = 0
  loc_122CB7C:   var_148 = 0
  loc_122CBC5:   Proc_154_5_10E33A4(MemVar_1F92044, "RoomCat", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_122CC35:   var_118 = "Delete From RateList Where RoomCat='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_122CC43:   unk_4D2556.Execute CStr(var_118), var_138, -1
  loc_122CC8E:   var_168 = 0
  loc_122CCA1:   var_160 = 0
  loc_122CCAC:   var_15C = 0
  loc_122CCBF:   var_154 = 0
  loc_122CCCA:   var_150 = 0
  loc_122CCDD:   var_148 = 0
  loc_122CD1D:   var_B4 = "RateList"
  loc_122CD26:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "RoomCat", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_122CD54:   unk_4D2556.CommitTrans
  loc_122CD5B:   var_96 = 0
  loc_122CD69:   Me.Requery -1
  loc_122CD79:   Me.Requery -1
  loc_122CD99:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_122CDA6:     Me.Bookmark = var_94
  loc_122CDAE:   Else
  loc_122CDC2:     If (Me.EOF = 0) Then
  loc_122CDCB:       Me.MoveLast
  loc_122CDD0:     End If
  loc_122CDD0:   End If
  loc_122CDD0:   Call Proc_23_39_17125F8(var_96, var_148, 0, var_150, var_154)
  loc_122CDF1:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_122CDF9: End If
  loc_122CDF9: Exit Sub
  loc_122CDFA: ' Referenced from: 122C968
  loc_122CE00: If (var_96 = &HFF) Then
  loc_122CE09:   unk_4D2556.RollbackTrans
  loc_122CE0E: End If
  loc_122CE16: Set var_9C = Err()
  loc_122CE1C: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_122CE3D: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_122CE50: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6CA08
  'Data Table: 4D2548
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F6C8D8: On Error Goto loc_F6C9C4
  loc_F6C8E9: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F6C8EC:   Exit Sub
  loc_F6C8ED: End If
  loc_F6C904: If (Me.RecordCount > 0) Then
  loc_F6C92A:   Call Proc_23_40_EC1E9C(Proc_5_1_100CB50("EDIT", Me))
  loc_F6C943:   Set var_90 = Me.Txt
  loc_F6C949:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F6C951:   var_8C = var_98.Text
  loc_F6C95C:   global_76 = var_8C
  loc_F6C975:   Set var_90 = Me.Txt
  loc_F6C97B:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F6C983:   var_98.SetFocus
  loc_F6C992: Else
  loc_F6C9B3:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6C9C3: End If
  loc_F6C9C3: Exit Sub
  loc_F6C9C4: ' Referenced from: F6C8D8
  loc_F6C9CC: Set var_90 = Err()
  loc_F6C9D2: Call 0.Method_arg_2C (var_8C)
  loc_F6C9F3: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6CA06: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E154B8
  'Data Table: 4D2548
  loc_E154AD: Me.Global.Unload Me
  loc_E154B5: Exit Sub
  loc_E154B6: var_3000 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC81E0
  'Data Table: 4D2548
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC8140: On Error Goto loc_EC81D8
  loc_EC815A: If (Me.RecordCount <= 0) Then
  loc_EC8163:   var_B8 = "Information"
  loc_EC817E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC818E:   Exit Sub
  loc_EC818F: End If
  loc_EC8196: var_10C = "Select distinct Code As SearchCode,Name as RoomCategory,ShortName,CAST(RetChg AS VARCHAR(11)) AS RetChg,CAST(CancelChg AS vARcHAR(11)) AS CancelChg,CAST(NoRooms as VARCHAR(5)) AS NoRooms,cast(MinAdv as VarChar(11)) as MinAdv FROM RoomCat where (LOGSITE_CODE='" & MemVar_1F92078
  loc_EC819D: MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') Order by Name"
  loc_EC81AA: MemVar_1F92120 = Me
  loc_EC81B7: Proc_6_126_F1BCC0("2000,2000,1000,1000,1000,1000")
  loc_EC81D2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC81D7: Exit Sub
  loc_EC81D8: ' Referenced from: EC8140
  loc_EC81D8: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC81DD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2CE38
  'Data Table: 4D2548
  loc_E2CE28: Proc_5_0_110649C(&HFF, Me)
  loc_E2CE30: Call Proc_23_39_17125F8(global_64)
  loc_E2CE35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2CDD8
  'Data Table: 4D2548
  loc_E2CDC8: Proc_5_0_110649C(&HFF, Me)
  loc_E2CDD0: Call Proc_23_39_17125F8(global_64)
  loc_E2CDD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2CD78
  'Data Table: 4D2548
  Dim var_2F01 As Double
  loc_E2CD68: Proc_5_0_110649C(&HFF, Me)
  loc_E2CD70: Call Proc_23_39_17125F8(global_64)
  loc_E2CD75: Exit Sub
  loc_E2CD76: var_2F01 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2CD18
  'Data Table: 4D2548
  loc_E2CD08: Proc_5_0_110649C(&HFF, Me)
  loc_E2CD10: Call Proc_23_39_17125F8(global_64)
  loc_E2CD15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1496AF4
  'Data Table: 4D2548
  Dim var_B0 As String
  Dim var_C8 As String
  Dim unk_4D2556 As Connection15
  Dim var_BC As Variant
  Dim var_AC As Recordset15
  Dim var_A8 As Recordset15
  Dim var_FC As Recordset15
  Dim var_DC As Variant
  Dim var_B8 As Fields15
  Dim var_10C As String
  Dim var_EC As Variant
  Dim var_13C As String
  Dim var_11C As Variant
  Dim var_9C As Recordset15
  Dim var_F6 As Integer
  Dim var_C0 As String
  loc_1495E94: On Error Goto loc_1496AEE
  loc_1495E9B: Set var_9C = New 
  loc_1495EA6: Set var_9C = Proc_3_22_10F5DEC(var_9C)
  loc_1495EBD: var_B0 = "SELECT R.ShortName, R.Name AS RoomName, R.MaxPerson,R.RetChg,R.CancelChg,R.MinAdv,R.NoRooms,R.MultPer,R.InclCount,RevMast.Name as RevCharge FROM (RoomCat AS R LEFT JOIN RevMast ON R.RevCode = RevMast.Code)" & "where (R.LOGSITE_CODE='"
  loc_1495EDC: Set var_B8 = Me.Txt
  loc_1495EE2: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_BC, var_C0, var_B0 & MemVar_1F92078 & "' or R.LOGSITE_CODE='HO') and R.code='")
  loc_1495EEA: var_EC = Me.Txt.Tag
  loc_1495EF3: var_C8 = -1 & var_C0
  loc_1495F03: unk_4D2556.Execute var_C8 & "'", var_F0, 
  loc_1495F0E: Set var_A8 = var_F0
  loc_1495F33: var_B0 = "SELECT RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT " & "where (RT.LOGSITE_CODE='"
  loc_1495F52: Set var_B8 = Me.Txt
  loc_1495F58: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_BC)
  loc_1495F70: var_88 = var_B0 & MemVar_1F92078 & "' or RT.LOGSITE_CODE='HO')  and RT.RoomCat='" & var_BC.Tag & "' AND RT.CODE='*'AND RT.RoomNo ='*****'"
  loc_1495F9D: unk_4D2556.Execute var_88, var_EC, -1
  loc_1495FC5: If (var_B8.RecordCount <= 0) Then
  loc_1495FCF:   var_B0 = "SELECT 0 AS Rate1, 0 AS Rate2, 0 AS Rate3, 0 AS Rate4, 0 AS Rate5, '' AS OccType, 0 AS RateW, 0 AS RateM FROM RateList where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1495FF2:   unk_4D2556.Execute var_B0 & "' or LOGSITE_CODE='HO') ", var_EC, -1
  loc_1495FFD:   Set var_AC = var_B8
  loc_1496006: End If
  loc_149601A: If (var_A8.RecordCount > 0) Then
  loc_1496031:   If (var_AC.RecordCount > 0) Then
  loc_1496037:     var_AC.MoveFirst
  loc_149603C:     ' Referenced from: 149669C
  loc_149604B:     If Not(var_AC.EOF) Then
  loc_1496051:       Set var_FC = var_9C 
  loc_1496060:       var_FC.AddNew var_DC, var_10C
  loc_1496087:       var_EC = var_A8.Fields.Item("ShortName").Value
  loc_1496099:       var_FC.Collect = "ShortName"
  loc_14960CA:       var_EC = var_A8.Fields.Item("RoomName").Value
  loc_14960DC:       var_FC.Collect = "RoomCatName"
  loc_149610D:       var_EC = var_A8.Fields.Item("RevCharge").Value
  loc_149611F:       var_FC.Collect = "RevCharge"
  loc_1496169:       var_12C = Format(CVar(var_A8.Fields.Item("RetChg")), "0.00")
  loc_149617B:       var_FC.Collect = "RetenCharge"
  loc_14961C7:       var_12C = Format(CVar(var_A8.Fields.Item("CancelChg")), "0.00")
  loc_14961D9:       var_FC.Collect = "CancelCharge"
  loc_1496225:       var_12C = Format(CVar(var_A8.Fields.Item("MINADV")), "0.00")
  loc_1496237:       var_FC.Collect = "MinAdvance"
  loc_149626A:       var_EC = var_A8.Fields.Item("noRooms").Value
  loc_149627C:       var_FC.Collect = "NoRoom"
  loc_14962AD:       var_EC = var_A8.Fields.Item("MultPer").Value
  loc_14962BF:       var_FC.Collect = "MultiPer"
  loc_1496318:       var_12C = (var_A8.Fields.Item("InclCount").Value = "Y") 'Variant
  loc_1496334:       var_FC.Collect = "InclCount"
  loc_1496375:       var_11C = CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("OccType")), IIf(var_12C, "Yes", "No"), CVar(var_AC.Fields.Item("OccType")), CVar(var_AC.Fields.Item("OccType")), var_12C, 1, 1)) 'String
  loc_1496382:       var_FC.Collect = "OccType"
  loc_14963B7:       Proc_6_39_E7C810(var_11C, CVar(var_AC.Fields.Item("Rate1")), var_11C, var_12C, 1)
  loc_14963E9:       var_FC.Collect = "Rate1"
  loc_1496422:       Proc_6_39_E7C810(var_11C, CVar(var_AC.Fields.Item("Rate2")), Format(var_11C, "0.00"), 1, 1)
  loc_1496454:       var_FC.Collect = "Rate2"
  loc_149648D:       Proc_6_39_E7C810(var_11C, CVar(var_AC.Fields.Item("Rate3")), Format(var_11C, "0.00"), 1, 1)
  loc_14964BF:       var_FC.Collect = "Rate3"
  loc_14964F8:       Proc_6_39_E7C810(var_11C, CVar(var_AC.Fields.Item("Rate4")), Format(var_11C, "0.00"), 1, 1)
  loc_149652A:       var_FC.Collect = "Rate4"
  loc_1496563:       Proc_6_39_E7C810(var_11C, CVar(var_AC.Fields.Item("Rate5")), Format(var_11C, "0.00"), 1, 1)
  loc_1496595:       var_FC.Collect = "Rate5"
  loc_14965CE:       Proc_6_39_E7C810(var_11C, CVar(var_AC.Fields.Item("RateW")), Format(var_11C, "0.00"), 1, 1)
  loc_1496600:       var_FC.Collect = "WeekRate"
  loc_1496616:       var_DC = "RateM"
  loc_149662A:       var_BC = var_AC.Fields.Item(var_DC)
  loc_1496639:       Proc_6_39_E7C810(var_11C, CVar(var_BC), Format(var_11C, "0.00"), 1, 1)
  loc_1496648:       var_10C = "0.00"
  loc_149664D:       var_12C = var_10C
  loc_1496659:       var_14C = Format(var_11C, var_12C)
  loc_1496662:       var_13C = "MonRate"
  loc_149666B:       var_FC.Collect = var_13C
  loc_1496689:       var_FC.Update var_DC, var_10C
  loc_1496690:       Set var_FC = Nothing 
  loc_1496697:       var_AC.MoveNext
  loc_149669C:       GoTo loc_149603C
  loc_149669F:     End If
  loc_149669F:   End If
  loc_149669F: End If
  loc_14966A5: var_F4 = var_9C.RecordCount
  loc_14966B3: If (var_F4 <= 0) Then
  loc_14966BC:   Call 0.Method_arg_50 (var_B0, var_14C, 1, 1)
  loc_14966DD:   MsgBox("** No Records Found to Print **", &H40, CVar(var_B0), var_12C, var_14C)
  loc_14966ED:   Exit Sub
  loc_14966EE: End If
  loc_1496704: Set var_B8 = var_9C 
  loc_1496710: var_F6 = CreateFieldDefFile(var_B8, MemVar_1F920B4 & "\RoomCategory.ttx", &HFF, 1)
  loc_149671A: Set var_9C = var_B8
  loc_1496720: var_DC = CVar(var_F6) 'Integer
  loc_1496723: var_98 = var_DC 'Variant
  loc_149673F: var_B0 = MemVar_1F920B4 & "\RoomCategory.RPT"
  loc_1496748: Call 0.Method_arg_1C (var_B0, var_DC, var_B8, var_F6)
  loc_1496753: MemVar_1F921E4 = var_B8
  loc_149676E: Call 0.Method_arg_90 (var_B8, var_F4, var_9E, 1)
  loc_1496776: Call 0.Method_arg_24 (var_12C, 1)
  loc_1496782: For var_190 =  To CInt(var_F4): 1 = var_190 'Integer
  loc_149679B:   Call 0.Method_arg_90 (var_B8, CLng(var_9E))
  loc_14967A3:   Call 0.Method_arg_20 (var_BC)
  loc_14967AB:   Call 0.Method_arg_30 (var_B0)
  loc_14967B3:   var_194 = var_B0
  loc_14967C5:   If (var_194 = "Title") Then
  loc_14967DB:     Call 0.Method_arg_90 (var_B8, CLng(var_9E))
  loc_14967E3:     Call 0.Method_arg_20 (var_BC)
  loc_14967EB:     Call 0.Method_arg_38 ("'ROOM CATEGORY MASTER'")
  loc_14967FA:   Else
  loc_1496802:     If (var_194 = "rate1") Then
  loc_1496814:       Set var_B8 = Me.LblName
  loc_149681A:       Call 0.Method_TopCtrl1_UnknownEvent_140 (9, var_BC)
  loc_1496845:       Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_149684D:       Call 0.Method_arg_20 (var_198)
  loc_1496855:       Call 0.Method_arg_38 ("'" & var_BC.Caption & "'")
  loc_1496871:     Else
  loc_1496879:       If (var_194 = "rate2") Then
  loc_149688B:         Set var_B8 = Me.LblName
  loc_1496891:         Call 0.Method_TopCtrl1_UnknownEvent_140 (&HA, var_BC)
  loc_14968BC:         Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_14968C4:         Call 0.Method_arg_20 (var_198)
  loc_14968CC:         Call 0.Method_arg_38 ("'" & var_BC.Caption & "'")
  loc_14968E8:       Else
  loc_14968F0:         If (var_194 = "rate3") Then
  loc_1496902:           Set var_B8 = Me.LblName
  loc_1496908:           Call 0.Method_TopCtrl1_UnknownEvent_140 (&HB, var_BC)
  loc_1496933:           Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_149693B:           Call 0.Method_arg_20 (var_198)
  loc_1496943:           Call 0.Method_arg_38 ("'" & var_BC.Caption & "'")
  loc_149695F:         Else
  loc_1496967:           If (var_194 = "rate4") Then
  loc_1496979:             Set var_B8 = Me.LblName
  loc_149697F:             Call 0.Method_TopCtrl1_UnknownEvent_140 (&HC, var_BC)
  loc_14969AA:             Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_14969B2:             Call 0.Method_arg_20 (var_198)
  loc_14969BA:             Call 0.Method_arg_38 ("'" & var_BC.Caption & "'")
  loc_14969D6:           Else
  loc_14969DE:             If (var_194 = "rate5") Then
  loc_14969F0:               Set var_B8 = Me.LblName
  loc_14969F6:               Call 0.Method_TopCtrl1_UnknownEvent_140 (&HD, var_BC)
  loc_14969FE:               var_B0 = var_BC.Caption
  loc_1496A21:               Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_1496A29:               Call 0.Method_arg_20 (var_198)
  loc_1496A31:               Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_1496A4A:             End If
  loc_1496A4A:           End If
  loc_1496A4A:         End If
  loc_1496A4A:       End If
  loc_1496A4A:     End If
  loc_1496A4A:   End If
  loc_1496A4D: Next var_190 'Integer
  loc_1496A6B: Call 0.Method_arg_64 (var_B8, CVar(var_9C))
  loc_1496A73: Call 0.Method_arg_2C (var_10C)
  loc_1496A81: Call 0.Method_arg_150 (var_13C)
  loc_1496A8C: Call 0.Method_arg_50 (var_B0)
  loc_1496A96: Set var_BC = Nothing
  loc_1496AB0: Set var_B8 = MemVar_1F921E4 
  loc_1496ABC: Proc_6_99_1483714(var_B8, 0, var_B0)
  loc_1496AC7: MemVar_1F921E4 = var_B8
  loc_1496ADA: Set var_9C = Nothing
  loc_1496AE2: Set var_AC = Nothing
  loc_1496AEA: Set var_A8 = Nothing
  loc_1496AED: Exit Sub
  loc_1496AEE: ' Referenced from: 1495E94
  loc_1496AEE: Proc_6_60_E62BC4(&HFF)
  loc_1496AF3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E22E3C
  'Data Table: 4D2548
  Dim Me As Recordset15
  loc_E22E23: Me.Requery -1
  loc_E22E36: Me.Recordset15.Requery -1
  loc_E22E3B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1753C64
  'Data Table: 4D2548
  Dim var_B4 As String
  Dim var_EC As Variant
  Dim var_CC As String
  Dim unk_4D2556 As Connection15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Field20
  Dim var_100 As String
  Dim var_110 As Variant
  Dim var_DC As Variant
  Dim var_120 As Variant
  Dim Me As Recordset15
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_154 As TextBox
  Dim var_168 As TextBox
  Dim var_378 As Double
  Dim var_180 As TextBox
  Dim var_380 As Double
  Dim var_198 As TextBox
  Dim var_388 As Double
  Dim var_1B0 As TextBox
  Dim var_390 As Double
  Dim var_1C8 As TextBox
  Dim var_398 As Double
  Dim var_C8 As Variant
  Dim var_308 As Variant
  Dim var_160 As String
  Dim var_174 As String
  Dim var_178 As String
  Dim var_18C As String
  Dim var_190 As String
  Dim var_1A8 As String
  Dim var_1C0 As String
  Dim var_200 As Variant
  Dim var_2D0 As Variant
  Dim var_348 As Variant
  Dim var_34C As String
  Dim var_3CC As TextBox
  Dim var_184 As String
  Dim var_19C As String
  Dim var_1B4 As String
  Dim var_318 As Variant
  Dim var_36C As Variant
  Dim var_1CC As String
  Dim var_448 As Double
  Dim var_450 As Double
  Dim var_438 As String
  Dim var_280 As Variant
  loc_175203C: On Error Goto loc_1753C11
  loc_1752043: var_86 = CByte(0) 'Byte
  loc_1752052: Set var_A8 = Me.Txt
  loc_1752058: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1752081: If (Proc_6_27_EA565C(var_AC, "Name") = 0) Then
  loc_175208B:   Call Txt_GotFocus()
  loc_1752090:   Exit Sub
  loc_1752091: End If
  loc_1752094: Call Proc_23_37_1090C70(var_B6, CInt(0))
  loc_175209F: If (var_B6 = &HFF) Then
  loc_17520A2:   Exit Sub
  loc_17520A3: End If
  loc_17520A7: Set var_A8 = Me.TopCtrl1
  loc_17520AD: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_17520C6: If (CStr() = "Add") Then
  loc_17520CF:   var_EC = 0
  loc_17520EC:   var_B4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RoomCat WHERE SITE_CODE='" & MemVar_1F92070
  loc_17520FC:   unk_4D2556.Execute CStr() & "'", var_C8, -1
  loc_1752104:   var_A8 = var_A8.Fields
  loc_175210C:   var_EC = var_AC.Item(var_AC)
  loc_1752114:   var_B0 = var_B0.Value
  loc_175214D:   var_110 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_175217B:   var_120 = (1 + Format(CStr(var_FC), "000"))
  loc_1752186:   global_56 = CStr(var_120)
  loc_175219B: Else
  loc_17521B8:   var_AC = Me.Fields.Item("SearchCode")
  loc_17521C0:   var_C8 = var_AC.Value
  loc_17521CF:   global_56 = CStr(var_C8)
  loc_17521E0: End If
  loc_17521E9: unk_4D2556.BeginTrans var_124
  loc_17521F2: var_86 = CByte(1) 'Byte
  loc_175221D: unk_4D2556.Execute "Delete From RateList Where RoomCat='" & global_56 & "' and RoomNo='*****' AND Code='*'", var_C8, -1
  loc_1752239: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(Me.TopCtrl1)
  loc_1752241: var_B4 = CStr(1)
  loc_1752252: If (var_B4 = "Add") Then
  loc_1752263:   Set var_A8 = Me.Txt
  loc_1752269:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_AC, var_B4)
  loc_1752271:   var_110 = var_AC.Tag
  loc_1752284:   Set var_B0 = Me.Txt
  loc_175228A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_12C)
  loc_17522A5:   Set var_13C = Me.Txt
  loc_17522AB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140)
  loc_17522C6:   Set var_150 = Me.Txt
  loc_17522CC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H36), var_154)
  loc_17522E7:   Set var_164 = Me.Txt
  loc_17522ED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_168)
  loc_1752302:   var_378 = Val(var_168.Text)
  loc_1752313:   Set var_17C = Me.Txt
  loc_1752319:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_180, var_184)
  loc_175232E:   var_380 = Val(var_184)
  loc_175233F:   Set var_194 = Me.Txt
  loc_1752345:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_198, var_19C)
  loc_175235A:   var_388 = Val(var_19C)
  loc_175236B:   Set var_1AC = Me.Txt
  loc_1752371:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B0, var_1B4)
  loc_1752386:   var_390 = Val(var_1B4)
  loc_1752397:   Set var_1C4 = Me.Txt
  loc_175239D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8, var_1CC)
  loc_17523C0:   Set var_1DC = Me.Txt
  loc_17523C6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1E0)
  loc_17523ED:   Proc_6_7_F25D88(var_280, Date)
  loc_17523FD:   Set var_2F4 = Me.Txt
  loc_1752403:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H38), var_2F8)
  loc_1752412:   Proc_6_17_EAA2B0(var_318, CVar(var_2F8))
  loc_175242B:   var_CC = "Insert Into RoomCat(Type,Code,Name,ShortName,RevCode,RetChg,CancelChg,MinAdv,NoRooms,MultPer,InclCount,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,MapCode) Values('" & var_B4
  loc_1752432:   var_100 = var_CC & "','"
  loc_1752466:   var_160 = var_100 & global_56 & "','" & var_12C.Text & "','" & var_140.Text & "','" & var_154.Tag
  loc_1752479:   var_178 = var_160 & "'," & CStr(var_180.Text)
  loc_175248C:   var_190 = var_178 & "," & CStr(var_198.Text)
  loc_175249F:   var_1A8 = var_190 & "," & CStr(var_1B0.Text)
  loc_17524E5:   var_200 = CVar(var_1A8 & "," & CStr(var_1C8.Text) & "," & CStr(Val(var_1CC)) & ",'") & Left(CVar(var_1E0), 1) & "','" & CVar(MemVar_1F92070) 
  loc_1752534:   var_348 = var_200 & "','" & CVar(MemVar_1F920C8) & "'," & var_280 & ",'A','" & CVar(MemVar_1F92078) & "'," & var_318 & ")" 
  loc_1752542:   unk_4D2556.Execute CStr(var_348), var_36C, -1
  loc_17525E9: Else
  loc_17525F7:   Set var_A8 = Me.Txt
  loc_17525FD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4)
  loc_1752605:   var_370 = var_AC.Text
  loc_1752618:   Set var_B0 = Me.Txt
  loc_175261E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C, var_100)
  loc_1752626:   var_398 = var_12C.Text
  loc_1752639:   Set var_13C = Me.Txt
  loc_175263F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H36), var_140)
  loc_175265A:   Set var_150 = Me.Txt
  loc_1752660:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_154)
  loc_1752675:   var_378 = Val(var_154.Text)
  loc_1752686:   Set var_164 = Me.Txt
  loc_175268C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_168, var_160)
  loc_17526A1:   var_380 = Val(var_160)
  loc_17526B2:   Set var_17C = Me.Txt
  loc_17526B8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_180, var_178)
  loc_17526CD:   var_388 = Val(var_178)
  loc_17526DE:   Set var_194 = Me.Txt
  loc_17526E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_198, var_190)
  loc_17526F9:   var_390 = Val(var_190)
  loc_175270A:   Set var_1AC = Me.Txt
  loc_1752710:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1B0, var_1A8)
  loc_1752725:   var_398 = Val(var_1A8)
  loc_1752733:   Set var_1C4 = Me.Txt
  loc_1752739:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1C8)
  loc_175274D:   var_FC = Left(CVar(var_1C8), 1)
  loc_1752760:   Proc_6_7_F25D88(var_280, Date)
  loc_1752770:   Set var_1DC = Me.Txt
  loc_1752776:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H37), var_1E0)
  loc_175277E:   var_2D0 = CVar(var_1E0) 'Address
  loc_1752795:   Set var_2F4 = Me.Txt
  loc_175279B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H38), var_2F8)
  loc_17527AA:   Proc_6_17_EAA2B0(var_348, CVar(var_2F8))
  loc_17527BD:   Set var_370 = Me.Txt
  loc_17527C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_3CC)
  loc_17527CB:   var_1C0 = var_3CC.Tag
  loc_17527E4:   var_CC = "Update RoomCat Set Name='" & var_B4
  loc_1752826:   var_174 = var_CC & "', ShortName='" & var_100 & "',RevCode='" & var_140.Tag & "', RetChg=" & CStr(var_168.Text) & ",CancelChg=" & CStr(var_180.Text)
  loc_1752866:   var_110 = CVar(var_174 & ", MinAdv=" & CStr(var_198.Text) & ",NoRooms=" & CStr(var_1B0.Text) & ", MultPer=" & CStr(var_398) & ",InclCount='") 'String
  loc_175287F:   var_200 = var_110 & var_FC & "',Site_Code='" & CVar(MemVar_1F92070) 
  loc_17528B5:   var_308 = var_200 & "',U_Name='" & CVar(MemVar_1F920C8) & "', U_EntDt=" & var_280 & ", U_AE='E',ActiveYN='" & CVar(Proc_6_38_E68A98(var_2D0, var_398)) 
  loc_1752905:   unk_4D2556.Execute CStr(var_308 & "',MapCode=" & var_348 & " Where Code='" & CVar(global_56) & "' and Type='" & CVar(var_1C0) & "'"), var_42C, -1
  loc_17529B1: End If
  loc_17529BF: Set var_A8 = Me.Txt
  loc_17529C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC, var_B4)
  loc_17529CD: var_430 = var_AC.Text
  loc_17529ED: Set var_B0 = Me.Txt
  loc_17529F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_12C, var_CC)
  loc_17529FB: (CDbl(Val(var_B4)) <> CDbl(0)) = var_12C.Text
  loc_1752A1C: Set var_13C = Me.Txt
  loc_1752A22: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_140)
  loc_1752A4B: Set var_150 = Me.Txt
  loc_1752A51: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_154)
  loc_1752A7A: Set var_164 = Me.Txt
  loc_1752A80: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_168)
  loc_1752ABF: If ((((var_FC Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_140.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Or (CDbl(Val(var_168.Text)) <> CDbl(0))) Then
  loc_1752ACE:   Set var_A8 = Me.LblName
  loc_1752AD4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_AC)
  loc_1752ADC:   var_CC = var_AC.Caption
  loc_1752AEF:   Set var_B0 = Me.Txt
  loc_1752AF5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_12C)
  loc_1752B0A:   var_378 = Val(var_12C.Text)
  loc_1752B1B:   Set var_13C = Me.Txt
  loc_1752B21:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140)
  loc_1752B36:   var_380 = Val(var_140.Text)
  loc_1752B47:   Set var_150 = Me.Txt
  loc_1752B4D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_154, var_160)
  loc_1752B62:   var_388 = Val(var_160)
  loc_1752B73:   Set var_164 = Me.Txt
  loc_1752B79:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_168, var_178)
  loc_1752B8E:   var_390 = Val(var_178)
  loc_1752B9F:   Set var_17C = Me.Txt
  loc_1752BA5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_180, var_190)
  loc_1752BBA:   var_398 = Val(var_190)
  loc_1752BCB:   Set var_194 = Me.Txt
  loc_1752BD1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_198, var_1A8)
  loc_1752BE6:   var_448 = Val(var_1A8)
  loc_1752BF7:   Set var_1AC = Me.Txt
  loc_1752BFD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_1B0, var_1C0)
  loc_1752C12:   var_450 = Val(var_1C0)
  loc_1752C23:   Proc_6_7_F25D88(var_FC, Date)
  loc_1752C2C:   Set var_1C4 = Me.TopCtrl1
  loc_1752C32:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_450)
  loc_1752C80:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_COde) Values ('" & global_56
  loc_1752CDA:   var_18C = var_B4 & "','*****','*','" & var_CC & "'," & CStr(var_378) & "," & CStr(var_154.Text) & "," & CStr(var_168.Text) & "," & CStr(var_180.Text)
  loc_1752D2F:   var_438 = var_18C & "," & CStr(var_198.Text) & "," & CStr(var_1B0.Text) & "," & CStr(var_450) & ",'" & MemVar_1F92070 & "','" & MemVar_1F920C8
  loc_1752D76:   unk_4D2556.Execute CStr(CVar(var_438 & "',") & var_FC & ",'" & IIf((CStr(var_200) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_2D0, -1
  loc_1752E12: End If
  loc_1752E20: Set var_A8 = Me.Txt
  loc_1752E26: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_AC, var_B4)
  loc_1752E2E: var_1C8 = var_AC.Text
  loc_1752E4E: Set var_B0 = Me.Txt
  loc_1752E54: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_12C, var_CC)
  loc_1752E5C: (CDbl(Val(var_B4)) <> CDbl(0)) = var_12C.Text
  loc_1752E7D: Set var_13C = Me.Txt
  loc_1752E83: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_140)
  loc_1752EAC: Set var_150 = Me.Txt
  loc_1752EB2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_154)
  loc_1752EDB: Set var_164 = Me.Txt
  loc_1752EE1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_168)
  loc_1752F20: If ((((var_378 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_140.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Or (CDbl(Val(var_168.Text)) <> CDbl(0))) Then
  loc_1752F2F:   Set var_A8 = Me.LblName
  loc_1752F35:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HF, var_AC)
  loc_1752F3D:   var_CC = var_AC.Caption
  loc_1752F50:   Set var_B0 = Me.Txt
  loc_1752F56:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_12C)
  loc_1752F6B:   var_378 = Val(var_12C.Text)
  loc_1752F7C:   Set var_13C = Me.Txt
  loc_1752F82:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_140)
  loc_1752F97:   var_380 = Val(var_140.Text)
  loc_1752FA8:   Set var_150 = Me.Txt
  loc_1752FAE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_154, var_160)
  loc_1752FC3:   var_388 = Val(var_160)
  loc_1752FD4:   Set var_164 = Me.Txt
  loc_1752FDA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_168, var_178)
  loc_1752FEF:   var_390 = Val(var_178)
  loc_1753000:   Set var_17C = Me.Txt
  loc_1753006:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_180, var_190)
  loc_175301B:   var_398 = Val(var_190)
  loc_175302C:   Set var_194 = Me.Txt
  loc_1753032:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_198, var_1A8)
  loc_1753047:   var_448 = Val(var_1A8)
  loc_1753058:   Set var_1AC = Me.Txt
  loc_175305E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_1B0, var_1C0)
  loc_1753073:   var_450 = Val(var_1C0)
  loc_1753084:   Proc_6_7_F25D88(var_FC, Date)
  loc_175308D:   Set var_1C4 = Me.TopCtrl1
  loc_1753093:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_450)
  loc_17530E1:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_56
  loc_175313B:   var_18C = var_B4 & "','*****','*','" & var_CC & "'," & CStr(var_378) & "," & CStr(var_154.Text) & "," & CStr(var_168.Text) & "," & CStr(var_180.Text)
  loc_1753190:   var_438 = var_18C & "," & CStr(var_198.Text) & "," & CStr(var_1B0.Text) & "," & CStr(var_450) & ",'" & MemVar_1F92070 & "','" & MemVar_1F920C8
  loc_17531D7:   unk_4D2556.Execute CStr(CVar(var_438 & "',") & var_FC & ",'" & IIf((CStr(var_200) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_2D0, -1
  loc_1753273: End If
  loc_1753281: Set var_A8 = Me.Txt
  loc_1753287: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_AC, var_B4)
  loc_175328F: var_1C8 = var_AC.Text
  loc_17532AF: Set var_B0 = Me.Txt
  loc_17532B5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_12C, var_CC)
  loc_17532BD: (CDbl(Val(var_B4)) <> CDbl(0)) = var_12C.Text
  loc_17532DE: Set var_13C = Me.Txt
  loc_17532E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_140)
  loc_175330D: Set var_150 = Me.Txt
  loc_1753313: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_154)
  loc_175333C: Set var_164 = Me.Txt
  loc_1753342: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_168)
  loc_1753381: If ((((var_378 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_140.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Or (CDbl(Val(var_168.Text)) <> CDbl(0))) Then
  loc_1753390:   Set var_A8 = Me.LblName
  loc_1753396:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&H11, var_AC)
  loc_175339E:   var_CC = var_AC.Caption
  loc_17533B1:   Set var_B0 = Me.Txt
  loc_17533B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_12C)
  loc_17533CC:   var_378 = Val(var_12C.Text)
  loc_17533DD:   Set var_13C = Me.Txt
  loc_17533E3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_140)
  loc_17533F8:   var_380 = Val(var_140.Text)
  loc_1753409:   Set var_150 = Me.Txt
  loc_175340F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_154, var_160)
  loc_1753424:   var_388 = Val(var_160)
  loc_1753435:   Set var_164 = Me.Txt
  loc_175343B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_168, var_178)
  loc_1753450:   var_390 = Val(var_178)
  loc_1753461:   Set var_17C = Me.Txt
  loc_1753467:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_180, var_190)
  loc_175347C:   var_398 = Val(var_190)
  loc_175348D:   Set var_194 = Me.Txt
  loc_1753493:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_198, var_1A8)
  loc_17534A8:   var_448 = Val(var_1A8)
  loc_17534B9:   Set var_1AC = Me.Txt
  loc_17534BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_1B0, var_1C0)
  loc_17534D4:   var_450 = Val(var_1C0)
  loc_17534E5:   Proc_6_7_F25D88(var_FC, Date)
  loc_17534EE:   Set var_1C4 = Me.TopCtrl1
  loc_17534F4:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_450)
  loc_1753542:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_56
  loc_175359C:   var_18C = var_B4 & "','*****','*','" & var_CC & "'," & CStr(var_378) & "," & CStr(var_154.Text) & "," & CStr(var_168.Text) & "," & CStr(var_180.Text)
  loc_17535F1:   var_438 = var_18C & "," & CStr(var_198.Text) & "," & CStr(var_1B0.Text) & "," & CStr(var_450) & ",'" & MemVar_1F92070 & "','" & MemVar_1F920C8
  loc_1753638:   unk_4D2556.Execute CStr(CVar(var_438 & "',") & var_FC & ",'" & IIf((CStr(var_200) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_2D0, -1
  loc_17536D4: End If
  loc_17536E2: Set var_A8 = Me.Txt
  loc_17536E8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_AC, var_B4)
  loc_17536F0: var_1C8 = var_AC.Text
  loc_1753710: Set var_B0 = Me.Txt
  loc_1753716: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_12C, var_CC)
  loc_175371E: (CDbl(Val(var_B4)) <> CDbl(0)) = var_12C.Text
  loc_175373F: Set var_13C = Me.Txt
  loc_1753745: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_140)
  loc_175376E: Set var_150 = Me.Txt
  loc_1753774: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_154)
  loc_175379D: Set var_164 = Me.Txt
  loc_17537A3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_168)
  loc_17537E2: If ((((var_378 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_140.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Or (CDbl(Val(var_168.Text)) <> CDbl(0))) Then
  loc_17537F1:   Set var_A8 = Me.LblName
  loc_17537F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&H12, var_AC)
  loc_1753812:   Set var_B0 = Me.Txt
  loc_1753818:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_12C)
  loc_175382D:   var_378 = Val(var_12C.Text)
  loc_175383E:   Set var_13C = Me.Txt
  loc_1753844:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_140)
  loc_1753859:   var_380 = Val(var_140.Text)
  loc_175386A:   Set var_150 = Me.Txt
  loc_1753870:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_154, var_160)
  loc_1753885:   var_388 = Val(var_160)
  loc_1753896:   Set var_164 = Me.Txt
  loc_175389C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_168, var_178)
  loc_17538B1:   var_390 = Val(var_178)
  loc_17538C2:   Set var_17C = Me.Txt
  loc_17538C8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_180, var_190)
  loc_17538DD:   var_398 = Val(var_190)
  loc_17538EE:   Set var_194 = Me.Txt
  loc_17538F4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_198, var_1A8)
  loc_1753909:   var_448 = Val(var_1A8)
  loc_175391A:   Set var_1AC = Me.Txt
  loc_1753920:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_1B0, var_1C0)
  loc_1753935:   var_450 = Val(var_1C0)
  loc_1753946:   Proc_6_7_F25D88(var_FC, Date)
  loc_175394F:   Set var_1C4 = Me.TopCtrl1
  loc_1753955:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_450)
  loc_17539A3:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_56
  loc_17539F1:   var_184 = var_B4 & "','*****','*','" & var_AC.Caption & "'," & CStr(var_378) & "," & CStr(var_154.Text) & "," & CStr(var_168.Text) & ","
  loc_1753A44:   var_34C = var_184 & CStr(var_180.Text) & "," & CStr(var_198.Text) & "," & CStr(var_1B0.Text) & "," & CStr(var_450) & ",'" & MemVar_1F92070
  loc_1753A59:   var_110 = CVar(var_34C & "','" & MemVar_1F920C8 & "',") 'String
  loc_1753A5F:   var_120 = var_110 & var_FC 
  loc_1753A63:   var_DC = ",'"
  loc_1753A99:   unk_4D2556.Execute CStr(var_120 & var_DC & IIf((CStr(var_200) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_2D0, -1
  loc_1753B35: End If
  loc_1753B3B: unk_4D2556.CommitTrans
  loc_1753B44: var_86 = CByte(0) 'Byte
  loc_1753B53: Me.Requery -1
  loc_1753B63: Me.Requery -1
  loc_1753B6C: Set var_A8 = Me.DGHelp
  loc_1753BA5: Me.Find "SearchCode='" & global_56 & "'", 0, 1
  loc_1753BB5: Set var_A8 = Me.TopCtrl1
  loc_1753BBB: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_DC)
  loc_1753BD4: If (CStr(DGHelp.DispID_FFFF) = "Add") Then
  loc_1753BD7:   Call TopCtrl1_UnknownEvent_A()
  loc_1753BDC:   Exit Sub
  loc_1753BDD: End If
  loc_1753BF2: var_B4 = "INI"
  loc_1753C00: Call Proc_23_40_EC1E9C(Proc_5_1_100CB50(var_B4, Me, global_64), var_1C8)
  loc_1753C0B: Call Proc_23_39_17125F8(var_378)
  loc_1753C10: Exit Sub
  loc_1753C11: ' Referenced from: 175203C
  loc_1753C1A: If (CInt(var_86) = 1) Then
  loc_1753C23:   unk_4D2556.RollbackTrans
  loc_1753C28: End If
  loc_1753C30: Set var_A8 = Err()
  loc_1753C36: Call 0.Method_arg_2C (var_B4)
  loc_1753C4F: MsgBox(CVar(var_B4), &H10, var_FC, var_110, var_120)
  loc_1753C62: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 'F56450
  'Data Table: 4D2548
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F56339: Set var_A8 = Me.DGRevenue
  loc_F5633F: var_A8.Visible = False
  loc_F56361: If (Me.var_A8.RecordCount > 0) Then
  loc_F563A3:   Set var_B4 = Me.Txt
  loc_F563A9:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(&H36), var_B8)
  loc_F563B1:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F563E7:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F56406:   Set var_B4 = Me.Txt
  loc_F5640C:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(&H36), var_B8)
  loc_F56414:   var_B8.Text = CStr(var_B0.Value)
  loc_F5642A: End If
  loc_F56435: Set var_A8 = Me.Txt
  loc_F5643B: Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(&H36))
  loc_F56443: var_B0.SetFocus
  loc_F5644F: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_1F 'EA8828
  'Data Table: 4D2548
  Dim var_A8 As Variant
  loc_EA87A4: Set var_88 = Me.DGRevenue
  loc_EA87CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA87D6: Set var_BC = Me.DGRevenue
  loc_EA8816: Proc_6_138_106D6F8(Me.DGRevenue, global_72, CInt(&H36), Me.FGPoint)
  loc_EA8824: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5600C
  'Data Table: 4D2548
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F55F2E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F55F35:   Set var_A8 = Me.ListView
  loc_F55F7F:   Set var_C0 = Me.Txt
  loc_F55F85:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F55F8D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F55FAD: End If
  loc_F55FB9: Me.FrmList.Visible = False
  loc_F55FE9: Set var_9C = Me.Txt
  loc_F55FEF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F55FF7: var_A8.SetFocus
  loc_F5600B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63B40
  'Data Table: 4D2548
  loc_E63B10: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E63B13:   Call DGHelp_UnknownEvent_9()
  loc_E63B18: End If
  loc_E63B34: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_E63B37:   Call DGRevenue_UnknownEvent_9()
  loc_E63B3C: End If
  loc_E63B3C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12A6828
  'Data Table: 4D2548
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_12A622E: Set var_88 = Me.Txt
  loc_12A6234: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12A6242: Proc_6_74_E226B0(var_8C)
  loc_12A624E: Call Proc_23_41_EF36D8(var_8C)
  loc_12A6256: var_92 = Index
  loc_12A6261: If (var_92 = CInt(0)) Then
  loc_12A627B:   If (Me.RecordCount > 0) Then
  loc_12A6289:     Set var_8C = Me.FGPoint
  loc_12A62A1:     Proc_6_137_1193554(Me.DGHelp, global_68, Index)
  loc_12A62AF:   End If
  loc_12A62B2: Else
  loc_12A62BA:   If (var_92 = CInt(&H36)) Then
  loc_12A62D7:     If (Me.Recordset15.RecordCount > 0) Then
  loc_12A62E5:       Set var_8C = Me.FGPoint
  loc_12A6301:       Proc_6_137_1193554(Me.DGRevenue, global_72, Index)
  loc_12A630F:     End If
  loc_12A6366:     Set var_88 = Me.Txt
  loc_12A636C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((global_72.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_12A6374:     var_8C = var_8C.Text
  loc_12A638C:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12A638F:       Exit Sub
  loc_12A6390:     End If
  loc_12A639D:     Set var_88 = Me.Txt
  loc_12A63A3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A63AB:     var_A0 = var_8C.Text
  loc_12A63BD:     var_B0 = "Name"
  loc_12A63FB:     If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_B0).Value) Then
  loc_12A6407:       Me.Recordset15.MoveFirst
  loc_12A642A:       Set var_88 = Me.Txt
  loc_12A6430:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12A6438:       0 = var_8C.Text
  loc_12A6454:       Me.Recordset15.Find 1 & var_A0 & "'", var_B0, var_92
  loc_12A6469:     End If
  loc_12A646C:   Else
  loc_12A6474:     If (var_92 = CInt(0)) Then
  loc_12A64C5:       Set var_88 = Me.Txt
  loc_12A64CB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A64EB:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_12A64EE:         Exit Sub
  loc_12A64EF:       End If
  loc_12A64FC:       Set var_88 = Me.Txt
  loc_12A6502:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A650A:       var_A0 = var_8C.Text
  loc_12A651C:       var_B0 = "Name"
  loc_12A6557:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12A6560:         Me.MoveFirst
  loc_12A6583:         Set var_88 = Me.Txt
  loc_12A6589:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12A6591:         0 = var_8C.Text
  loc_12A65AA:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_12A65BF:       End If
  loc_12A65C2:     Else
  loc_12A65CA:       If (var_92 = CInt(8)) Then
  loc_12A65DA:         ReDim var_F0(0 To 1)
  loc_12A65F1:         var_F0(0) = "Yes"
  loc_12A6600:         var_F0(1) = "No"
  loc_12A6617:         global_80 = Array(var_F0)
  loc_12A6622:         Set var_B4 = Me.ListView
  loc_12A663D:         Set var_8C = Me.Txt
  loc_12A6657:         Set global_96 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_12A6675:         Set var_88 = Me.Txt
  loc_12A667B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12A6683:         global_80 = var_8C.Text
  loc_12A6695:         Set var_90 = Me.Txt
  loc_12A669B:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12A66A3:         var_B4.Tag = 2
  loc_12A66B9:       Else
  loc_12A66C1:         If (var_92 = CInt(&H1F)) Then
  loc_12A66D1:           ReDim var_F0(0 To 1)
  loc_12A66E8:           var_F0(0) = "Room"
  loc_12A66F7:           var_F0(1) = "Conf. Hall"
  loc_12A670E:           global_80 = Array(var_F0)
  loc_12A6719:           Set var_B4 = Me.ListView
  loc_12A6734:           Set var_8C = Me.Txt
  loc_12A674E:           Set global_96 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_80)
  loc_12A676C:           Set var_88 = Me.Txt
  loc_12A6772:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12A677A:           2 = var_8C.Text
  loc_12A678C:           Set var_90 = Me.Txt
  loc_12A6792:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12A679A:           var_B4.Tag = global_80
  loc_12A67AD:         End If
  loc_12A67AD:       End If
  loc_12A67AD:     End If
  loc_12A67AD:   End If
  loc_12A67AD: End If
  loc_12A67BC: Set var_88 = Me.Txt
  loc_12A67C2: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A67CA: var_8C.SelStart = 0
  loc_12A67E3: Set var_88 = Me.Txt
  loc_12A67E9: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A6804: Set var_90 = Me.Txt
  loc_12A680A: Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12A6812: var_B4.SelLength = Len(var_8C.Text)
  loc_12A6825: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11D2858
  'Data Table: 4D2548
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As Frame
  loc_11D241A: If (CLng(Shift) = &H1B) Then
  loc_11D241D:   Call Proc_23_41_EF36D8()
  loc_11D2422:   Exit Sub
  loc_11D2423: End If
  loc_11D2426: var_88 = KeyCode
  loc_11D2431: If (var_88 = CInt(&H36)) Then
  loc_11D2451:   Set var_9C = Me.FGPoint
  loc_11D245C:   Set var_98 = Nothing
  loc_11D248E:   Proc_6_69_134A198(Me.DGRevenue, Me.Txt, KeyCode, global_72, Shift, 0)
  loc_11D2500:   If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11D252A:     Proc_6_138_106D6F8(Me.DGRevenue, global_72, KeyCode, Me.FGPoint, 1)
  loc_11D2538:   End If
  loc_11D253B: Else
  loc_11D2543:   If (var_88 = CInt(0)) Then
  loc_11D254A:     Set var_9C = Me.DGHelp
  loc_11D2558:     Set var_A8 = Me.FGPoint
  loc_11D2563:     Set var_98 = var_A8
  loc_11D2595:     Proc_6_79_11ACE04(var_9C, Me.Txt, CInt(0), global_68, Shift, 0, 1)
  loc_11D25B2:     var_B0 = Me.RecordCount
  loc_11D2602:     If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11D2609:       Set var_98 = Me.DGHelp
  loc_11D2610:       Set var_90 = Me.FGPoint
  loc_11D2628:       Proc_6_138_106D6F8(var_98, global_68, KeyCode, var_90, var_98)
  loc_11D2636:     End If
  loc_11D2639:   Else
  loc_11D2641:     If Not (var_88 = CInt(8)) Then
  loc_11D264C:       If (var_88 = CInt(&H1F)) Then
  loc_11D264F:       End If
  loc_11D2671:       Set var_8C = Me.Txt
  loc_11D2677:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_11D267F:       var_98 = var_90.Left
  loc_11D2691:       Set var_98 = Me.Txt
  loc_11D2697:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_11D269F:       var_9C = var_9C.Top
  loc_11D26B1:       Set var_A4 = Me.Txt
  loc_11D26B7:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_11D26BF:       0 = var_A8.Height
  loc_11D26D1:       Set var_AC = Me.Txt
  loc_11D26D7:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11D26DF:       var_C4 = var_C0.Width
  loc_11D2727:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11D274B:     End If
  loc_11D274B:   End If
  loc_11D274B: End If
  loc_11D27A1: If (((CBool(Me.DGRevenue.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_11D27C2:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_11D27CB:     Call Txt_Validate(KeyCode)
  loc_11D27D6:     If (var_86 = &HFF) Then
  loc_11D27D9:       Exit Sub
  loc_11D27DA:     End If
  loc_11D2811:     If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_11D2814:       Call TopCtrl1_UnknownEvent_16()
  loc_11D2819:     End If
  loc_11D2819:     Exit Sub
  loc_11D281A:   End If
  loc_11D282F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11D2838:     Proc_6_75_E527CC(Shift, arg_14, var_86, CInt(var_B0))
  loc_11D283D:   End If
  loc_11D2847:   If (CLng(Shift) = &H26) Then
  loc_11D2850:     Proc_6_76_E52838(Shift, arg_14, CInt((var_B8 + var_BC)))
  loc_11D2855:   End If
  loc_11D2855: End If
  loc_11D2855: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11B5EA4
  'Data Table: 4D2548
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_AC As TextBox
  loc_11B5A6A: Proc_6_133_E7EF78(var_94)
  loc_11B5A73: arg_10 = CInt(var_94)
  loc_11B5A7C: Proc_6_58_E054C0(arg_10, arg_10)
  loc_11B5A84: var_96 = KeyAscii
  loc_11B5A8F: If (var_96 = CInt(&H36)) Then
  loc_11B5AAE:   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_11B5AC0:     var_A4 = "Name"
  loc_11B5AE3:     Proc_6_89_146F1AC(Me.Txt, CInt(&H36), global_72, arg_10)
  loc_11B5AFD:     Set var_AC = Me.FGPoint
  loc_11B5B19:     Proc_6_138_106D6F8(Me.DGRevenue, global_72, KeyAscii, var_AC)
  loc_11B5B27:   End If
  loc_11B5B2A: Else
  loc_11B5B32:   If Not (var_96 = CInt(3)) Then
  loc_11B5B3D:     If Not (var_96 = CInt(4)) Then
  loc_11B5B48:       If (var_96 = CInt(5)) Then
  loc_11B5B4B:       End If
  loc_11B5B4B:     End If
  loc_11B5B55:     Set var_9C = Me.Txt
  loc_11B5B5B:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_11B5B76:     Proc_6_42_129A86C(var_AC, arg_10, 5, 2)
  loc_11B5B85:   Else
  loc_11B5B8D:     If Not (var_96 = CInt(6)) Then
  loc_11B5B98:       If (var_96 = CInt(7)) Then
  loc_11B5B9B:       End If
  loc_11B5BA5:       Set var_9C = Me.Txt
  loc_11B5BAB:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 0)
  loc_11B5BC6:       Proc_6_42_129A86C(var_AC, arg_10, 3)
  loc_11B5BD5:     Else
  loc_11B5BDD:       If Not (var_96 = CInt(9)) Then
  loc_11B5BE8:         If Not (var_96 = CInt(&HA)) Then
  loc_11B5BF3:           If Not (var_96 = CInt(&HB)) Then
  loc_11B5BFE:             If Not (var_96 = CInt(&HC)) Then
  loc_11B5C09:               If (var_96 = CInt(&HD)) Then
  loc_11B5C0C:               End If
  loc_11B5C0C:             End If
  loc_11B5C0C:           End If
  loc_11B5C0C:         End If
  loc_11B5C16:         Set var_9C = Me.Txt
  loc_11B5C1C:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 0)
  loc_11B5C37:         Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_11B5C46:       Else
  loc_11B5C4E:         If Not (var_96 = CInt(&HE)) Then
  loc_11B5C59:           If Not (var_96 = CInt(&HF)) Then
  loc_11B5C64:             If Not (var_96 = CInt(&H10)) Then
  loc_11B5C6F:               If Not (var_96 = CInt(&H11)) Then
  loc_11B5C7A:                 If (var_96 = CInt(&H12)) Then
  loc_11B5C7D:                 End If
  loc_11B5C7D:               End If
  loc_11B5C7D:             End If
  loc_11B5C7D:           End If
  loc_11B5C87:           Set var_9C = Me.Txt
  loc_11B5C8D:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_11B5CA8:           Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_11B5CB7:         Else
  loc_11B5CBF:           If Not (var_96 = CInt(&H13)) Then
  loc_11B5CCA:             If Not (var_96 = CInt(&H14)) Then
  loc_11B5CD5:               If Not (var_96 = CInt(&H15)) Then
  loc_11B5CE0:                 If Not (var_96 = CInt(&H16)) Then
  loc_11B5CEB:                   If (var_96 = CInt(&H17)) Then
  loc_11B5CEE:                   End If
  loc_11B5CEE:                 End If
  loc_11B5CEE:               End If
  loc_11B5CEE:             End If
  loc_11B5CF8:             Set var_9C = Me.Txt
  loc_11B5CFE:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_11B5D19:             Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_11B5D28:           Else
  loc_11B5D30:             If Not (var_96 = CInt(&H18)) Then
  loc_11B5D3B:               If Not (var_96 = CInt(&H19)) Then
  loc_11B5D46:                 If Not (var_96 = CInt(&H1A)) Then
  loc_11B5D51:                   If Not (var_96 = CInt(&H1B)) Then
  loc_11B5D5C:                     If (var_96 = CInt(&H1C)) Then
  loc_11B5D5F:                     End If
  loc_11B5D5F:                   End If
  loc_11B5D5F:                 End If
  loc_11B5D5F:               End If
  loc_11B5D69:               Set var_9C = Me.Txt
  loc_11B5D6F:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_11B5D8A:               Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_11B5D99:             Else
  loc_11B5DA1:               If Not (var_96 = CInt(&H1D)) Then
  loc_11B5DAC:                 If (var_96 = CInt(&H1E)) Then
  loc_11B5DAF:                 End If
  loc_11B5DB9:                 Set var_9C = Me.Txt
  loc_11B5DBF:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_11B5DDA:                 Proc_6_42_129A86C(var_AC, arg_10, 6)
  loc_11B5DE9:               Else
  loc_11B5DF1:                 If (var_96 = CInt(&H37)) Then
  loc_11B5E1D:                   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11B5E2D:                     Set var_9C = Me.Txt
  loc_11B5E33:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11B5E3B:                     var_AC.Text = 2
  loc_11B5E4A:                   Else
  loc_11B5E73:                     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11B5E83:                       Set var_9C = Me.Txt
  loc_11B5E89:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11B5E91:                       var_AC.Text = var_96
  loc_11B5E9D:                     End If
  loc_11B5E9D:                   End If
  loc_11B5E9F:                   arg_10 = 0
  loc_11B5EA2:                 End If
  loc_11B5EA2:               End If
  loc_11B5EA2:             End If
  loc_11B5EA2:           End If
  loc_11B5EA2:         End If
  loc_11B5EA2:       End If
  loc_11B5EA2:     End If
  loc_11B5EA2:   End If
  loc_11B5EA2: End If
  loc_11B5EA2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FA8784
  'Data Table: 4D2548
  Dim var_86 As Integer
  loc_FA85FB: var_86 = KeyCode
  loc_FA8606: If (var_86 = CInt(&H36)) Then
  loc_FA8625:   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_FA8639:     var_A8 = "Name"
  loc_FA8665:     Proc_6_68_129FB34(Me.DGRevenue, Me.Txt, CInt(&H36), global_72)
  loc_FA8678:   End If
  loc_FA867B: Else
  loc_FA8683:   If (var_86 = CInt(0)) Then
  loc_FA86A2:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FA86AF:       var_A8 = "Name"
  loc_FA86CE:       Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_68, Shift)
  loc_FA8700:       Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyCode, Me.FGPoint)
  loc_FA870E:     End If
  loc_FA8711:   Else
  loc_FA8719:     If Not (var_86 = CInt(8)) Then
  loc_FA8724:       If (var_86 = CInt(&H1F)) Then
  loc_FA8727:       End If
  loc_FA8742:       If (Me.FrmList.Visible = &HFF) Then
  loc_FA8771:         Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_96)
  loc_FA8781:       End If
  loc_FA8781:     End If
  loc_FA8781:   End If
  loc_FA8781: End If
  loc_FA8781: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F85C
  'Data Table: 4D2548
  loc_E4F83A: Set var_88 = Me.Txt
  loc_E4F840: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F84E: Proc_6_73_E22704(var_8C)
  loc_E4F85A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1393A68
  'Data Table: 4D2548
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_B0 As TextBox
  Dim var_10C As Double
  loc_139318B: var_86 = Cancel
  loc_1393196: If (var_86 = CInt(&H36)) Then
  loc_13931A4:   Set var_8C = Me.Txt
  loc_13931AA:   Call 0.Method_Txt_Validate0 (CInt(&H36), var_90)
  loc_13931D3:   If (Proc_6_27_EA565C(var_90, "Revenue Charge") = 0) Then
  loc_13931D8:     arg_10 = &HFF
  loc_13931DB:     Exit Sub
  loc_13931DC:   End If
  loc_13931E8:   var_9A = global_72.EOF
  loc_13931F3:   If (var_9A = 0) Then
  loc_1393234:     Set var_94 = Me.Txt
  loc_139323A:     Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_1393242:     var_B0.Text = arg_10
  loc_1393278:     var_90 = Me.Recordset15.Fields.Item("Code")
  loc_1393296:     Set var_94 = Me.Txt
  loc_139329C:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_13932A4:     var_B0.Tag = CStr(var_90.Value)
  loc_13932BD:   Else
  loc_13932CA:     Set var_8C = Me.Txt
  loc_13932D0:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13932D8:     var_90.Text = vbNullString
  loc_13932F1:     Set var_8C = Me.Txt
  loc_13932F7:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13932FF:     var_90.Tag = vbNullString
  loc_139330B:   End If
  loc_139330E: Else
  loc_1393316:   If (var_86 = CInt(&H37)) Then
  loc_1393323:     Set var_8C = Me.Txt
  loc_1393329:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1393364:     If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_1393374:       Set var_8C = Me.Txt
  loc_139337A:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1393382:       var_90.Text = "Yes"
  loc_1393391:     Else
  loc_139339E:       Set var_8C = Me.Txt
  loc_13933A4:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13933AC:       var_90.Text = "No"
  loc_13933B8:     End If
  loc_13933BB:   Else
  loc_13933C3:     If (var_86 = CInt(0)) Then
  loc_13933D1:       Set var_8C = Me.Txt
  loc_13933D7:       Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13933DF:       var_98 = "Name"
  loc_1393400:       If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_139340D:         Set var_8C = Me.Txt
  loc_1393413:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139341B:         var_90.SetFocus
  loc_1393429:         arg_10 = &HFF
  loc_139342C:         Exit Sub
  loc_139342D:       End If
  loc_1393430:       Call Proc_23_37_1090C70(var_9A, arg_10)
  loc_139343B:       If (var_9A = &HFF) Then
  loc_1393440:         arg_10 = &HFF
  loc_1393443:         Exit Sub
  loc_1393444:       End If
  loc_1393447:     Else
  loc_139344F:       If (var_86 = CInt(8)) Then
  loc_139345F:         Set var_8C = Me.Txt
  loc_1393465:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_139346D:         arg_10 = var_90.Text
  loc_1393484:         If (var_98 <> vbNullString) Then
  loc_139349F:           Set var_90 = Me.ListView.SelectedItem
  loc_13934B7:           Set var_94 = Me.Txt
  loc_13934BD:           Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_13934C5:           var_B0.Text = var_90.Text
  loc_13934DB:         End If
  loc_13934DE:       Else
  loc_13934E6:         If (var_86 = CInt(&H1F)) Then
  loc_13934F6:           Set var_8C = Me.Txt
  loc_13934FC:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139351B:           If (var_90.Text <> vbNullString) Then
  loc_1393536:             Set var_90 = Me.ListView.SelectedItem
  loc_139354E:             Set var_94 = Me.Txt
  loc_1393554:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_139355C:             var_B0.Text = var_90.Text
  loc_139357F:             Set var_8C = Me.Txt
  loc_1393585:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13935A4:             If (var_90.Text = "Room") Then
  loc_13935B4:               Set var_8C = Me.Txt
  loc_13935BA:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13935C2:               var_90.Tag = "RO"
  loc_13935D1:             Else
  loc_13935DE:               Set var_8C = Me.Txt
  loc_13935E4:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1393603:               If (var_90.Text = "Conf. Hall") Then
  loc_1393613:                 Set var_8C = Me.Txt
  loc_1393619:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1393621:                 var_90.Tag = "CO"
  loc_1393630:               Else
  loc_139363D:                 Set var_8C = Me.Txt
  loc_1393643:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139364B:                 var_90.Text = vbNullString
  loc_1393664:                 Set var_8C = Me.Txt
  loc_139366A:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1393672:                 var_90.Tag = vbNullString
  loc_139367E:               End If
  loc_139367E:             End If
  loc_139367E:           End If
  loc_1393681:         Else
  loc_1393689:           If Not (var_86 = CInt(9)) Then
  loc_1393694:             If Not (var_86 = CInt(&HB)) Then
  loc_139369F:               If Not (var_86 = CInt(&HC)) Then
  loc_13936AA:                 If Not (var_86 = CInt(&HD)) Then
  loc_13936B5:                   If (var_86 = CInt(&HA)) Then
  loc_13936B8:                   End If
  loc_13936B8:                 End If
  loc_13936B8:               End If
  loc_13936B8:             End If
  loc_13936C5:             Set var_8C = Me.Txt
  loc_13936CB:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13936D3:             var_98 = var_90.Text
  loc_1393718:             Set var_94 = Me.Txt
  loc_139371E:             Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_1393726:             var_B0.Text = 1
  loc_1393749:           Else
  loc_1393751:             If Not (var_86 = CInt(&HE)) Then
  loc_139375C:               If Not (var_86 = CInt(&H10)) Then
  loc_1393767:                 If Not (var_86 = CInt(&H11)) Then
  loc_1393772:                   If Not (var_86 = CInt(&H12)) Then
  loc_139377D:                     If (var_86 = CInt(&HF)) Then
  loc_1393780:                     End If
  loc_1393780:                   End If
  loc_1393780:                 End If
  loc_1393780:               End If
  loc_139378D:               Set var_8C = Me.Txt
  loc_1393793:               Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_139379B:               var_10C = var_90.Text
  loc_13937E0:               Set var_94 = Me.Txt
  loc_13937E6:               Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_13937EE:               var_B0.Text = 1
  loc_1393811:             Else
  loc_1393819:               If Not (var_86 = CInt(&H13)) Then
  loc_1393824:                 If Not (var_86 = CInt(&H15)) Then
  loc_139382F:                   If Not (var_86 = CInt(&H16)) Then
  loc_139383A:                     If Not (var_86 = CInt(&H17)) Then
  loc_1393845:                       If (var_86 = CInt(&H14)) Then
  loc_1393848:                       End If
  loc_1393848:                     End If
  loc_1393848:                   End If
  loc_1393848:                 End If
  loc_1393855:                 Set var_8C = Me.Txt
  loc_139385B:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1393863:                 var_10C = var_90.Text
  loc_13938A8:                 Set var_94 = Me.Txt
  loc_13938AE:                 Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_13938B6:                 var_B0.Text = 1
  loc_13938D9:               Else
  loc_13938E1:                 If Not (var_86 = CInt(&H18)) Then
  loc_13938EC:                   If Not (var_86 = CInt(&H1A)) Then
  loc_13938F7:                     If Not (var_86 = CInt(&H1B)) Then
  loc_1393902:                       If Not (var_86 = CInt(&H1C)) Then
  loc_139390D:                         If (var_86 = CInt(&H19)) Then
  loc_1393910:                         End If
  loc_1393910:                       End If
  loc_1393910:                     End If
  loc_1393910:                   End If
  loc_139391D:                   Set var_8C = Me.Txt
  loc_1393923:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_139392B:                   var_10C = var_90.Text
  loc_1393970:                   Set var_94 = Me.Txt
  loc_1393976:                   Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_139397E:                   var_B0.Text = 1
  loc_13939A1:                 Else
  loc_13939A9:                   If Not (var_86 = CInt(3)) Then
  loc_13939B4:                     If Not (var_86 = CInt(4)) Then
  loc_13939BF:                       If Not (var_86 = CInt(5)) Then
  loc_13939CA:                         If Not (var_86 = CInt(&H1D)) Then
  loc_13939D5:                           If (var_86 = CInt(&H1E)) Then
  loc_13939D8:                           End If
  loc_13939D8:                         End If
  loc_13939D8:                       End If
  loc_13939D8:                     End If
  loc_13939E5:                     Set var_8C = Me.Txt
  loc_13939EB:                     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_13939F3:                     var_10C = var_90.Text
  loc_1393A38:                     Set var_94 = Me.Txt
  loc_1393A3E:                     Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_1393A46:                     var_B0.Text = 1
  loc_1393A66:                   End If
  loc_1393A66:                 End If
  loc_1393A66:               End If
  loc_1393A66:             End If
  loc_1393A66:           End If
  loc_1393A66:         End If
  loc_1393A66:       End If
  loc_1393A66:     End If
  loc_1393A66:   End If
  loc_1393A66: End If
  loc_1393A66: Exit Sub
End Sub

Private Sub CmdSave_Click() '162BE44
  'Data Table: 4D2548
  Dim var_8C As Frame
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_A0 As Frame
  Dim var_104 As String
  Dim unk_4D2556 As Connection15
  Dim var_13C As TextBox
  Dim var_144 As TextBox
  Dim var_14C As TextBox
  Dim var_154 As TextBox
  Dim var_140 As Label
  Dim var_148 As TextBox
  Dim var_598 As Double
  Dim var_150 As TextBox
  Dim var_5A0 As Double
  Dim var_23C As TextBox
  Dim var_5A8 As Double
  Dim var_288 As TextBox
  Dim var_5B0 As Double
  Dim var_2D4 As TextBox
  Dim var_5B8 As Double
  Dim var_320 As TextBox
  Dim var_5C0 As Double
  Dim var_36C As TextBox
  Dim var_5C8 As Double
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_344 As Variant
  Dim var_508 As Variant
  loc_162A9F3: If (Me.SRate.Visible = &HFF) Then
  loc_162AA02:   Me.SRate.Visible = False
  loc_162AA0A: End If
  loc_162AA28: Set var_8C = Me.Txt
  loc_162AA2E: Call 0.Method_CmdSave_Click0 (CInt(0), var_94, var_98, "Delete From RateList Where RoomCat='")
  loc_162AA36: var_138 = var_94.Tag
  loc_162AA3F: var_9C = -1 & var_98
  loc_162AA6F: Proc_6_17_EAA2B0(var_D4, Trim(CVar(Me.SRate.Tag)))
  loc_162AA8E: unk_4D2556.Execute CStr(CVar(var_9C & "' And Code=") & var_D4 & " and RoomNo= '*****'"), var_13C, 
  loc_162AAC6: Set var_8C = Me.Txt
  loc_162AACC: Call 0.Method_CmdSave_Click0 (CInt(&H20), var_94)
  loc_162AAF4: Set var_A0 = Me.Txt
  loc_162AAFA: Call 0.Method_CmdSave_Click0 (CInt(&H21), var_13C)
  loc_162AB23: Set var_140 = Me.Txt
  loc_162AB29: Call 0.Method_CmdSave_Click0 (CInt(&H22), var_144)
  loc_162AB52: Set var_148 = Me.Txt
  loc_162AB58: Call 0.Method_CmdSave_Click0 (CInt(&H23), var_14C)
  loc_162AB81: Set var_150 = Me.Txt
  loc_162AB87: Call 0.Method_CmdSave_Click0 (CInt(&H24), var_154)
  loc_162ABC6: If (((((CDbl(Val(var_94.Text)) <> CDbl(0)) Or (CDbl(Val(var_13C.Text)) <> CDbl(0))) Or (CDbl(Val(var_144.Text)) <> CDbl(0))) Or (CDbl(Val(var_14C.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Then
  loc_162ABD7:   Set var_8C = Me.Txt
  loc_162ABDD:   Call 0.Method_CmdSave_Click0 (CInt(0), var_94)
  loc_162ABE5:   var_98 = var_94.Tag
  loc_162AC05:   var_9C = Me.SRate.Tag
  loc_162AC24:   Set var_13C = Me.LblName
  loc_162AC2A:   Call 0.Method_CmdSave_Click0 (&HE, var_140)
  loc_162AC45:   Set var_144 = Me.Txt
  loc_162AC4B:   Call 0.Method_CmdSave_Click0 (CInt(&H20), var_148)
  loc_162AC60:   var_598 = Val(var_148.Text)
  loc_162AC71:   Set var_14C = Me.Txt
  loc_162AC77:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_150)
  loc_162AC8C:   var_5A0 = Val(var_150.Text)
  loc_162AC9D:   Set var_154 = Me.Txt
  loc_162ACA3:   Call 0.Method_CmdSave_Click0 (CInt(&H22), var_23C, var_240)
  loc_162ACB8:   var_5A8 = Val(var_240)
  loc_162ACC9:   Set var_284 = Me.Txt
  loc_162ACCF:   Call 0.Method_CmdSave_Click0 (CInt(&H23), var_288, var_28C)
  loc_162ACE4:   var_5B0 = Val(var_28C)
  loc_162ACF5:   Set var_2D0 = Me.Txt
  loc_162ACFB:   Call 0.Method_CmdSave_Click0 (CInt(&H24), var_2D4, var_2D8)
  loc_162AD10:   var_5B8 = Val(var_2D8)
  loc_162AD21:   Set var_31C = Me.Txt
  loc_162AD27:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_320, var_324)
  loc_162AD3C:   var_5C0 = Val(var_324)
  loc_162AD4D:   Set var_368 = Me.Txt
  loc_162AD53:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_36C, var_370)
  loc_162AD68:   var_5C8 = Val(var_370)
  loc_162AD79:   Proc_6_7_F25D88(var_450, Date)
  loc_162AD82:   Set var_484 = Me.TopCtrl1
  loc_162AD88:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_5C8)
  loc_162ADCC:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_162AE14:   var_1F8 = var_104 & Trim(CVar(var_98)) & "','*****','" & Trim(CVar(var_9C)) & "','" & CVar(var_140.Caption) & "'," & CVar(var_598) & "," 
  loc_162AE6F:   var_344 = var_1F8 & CVar(var_23C.Text) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_162AEC9:   var_508 = var_344 & "," & CVar(var_5C8) & ",'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," & var_450 & ",'" & IIf((CStr(var_494) = "Add"), "A", "E") 
  loc_162AEF3:   unk_4D2556.Execute CStr(var_508 & "','" & CVar(MemVar_1F92078) & "')"), var_58C, -1
  loc_162AF93: End If
  loc_162AFA1: Set var_8C = Me.Txt
  loc_162AFA7: Call 0.Method_CmdSave_Click0 (CInt(&H25), var_94, var_98)
  loc_162AFAF: var_590 = var_94.Text
  loc_162AFCF: Set var_A0 = Me.Txt
  loc_162AFD5: Call 0.Method_CmdSave_Click0 (CInt(&H26), var_13C, var_9C)
  loc_162AFDD: (CDbl(Val(var_98)) <> CDbl(0)) = var_13C.Text
  loc_162AFFE: Set var_140 = Me.Txt
  loc_162B004: Call 0.Method_CmdSave_Click0 (CInt(&H27), var_144)
  loc_162B02D: Set var_148 = Me.Txt
  loc_162B033: Call 0.Method_CmdSave_Click0 (CInt(&H28), var_14C)
  loc_162B05C: Set var_150 = Me.Txt
  loc_162B062: Call 0.Method_CmdSave_Click0 (CInt(&H29), var_154)
  loc_162B0A1: If ((((var_598 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_144.Text)) <> CDbl(0))) Or (CDbl(Val(var_14C.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Then
  loc_162B0B2:   Set var_8C = Me.Txt
  loc_162B0B8:   Call 0.Method_CmdSave_Click0 (CInt(0), var_94)
  loc_162B0C0:   var_98 = var_94.Tag
  loc_162B0E0:   var_9C = Me.SRate.Tag
  loc_162B0FF:   Set var_13C = Me.LblName
  loc_162B105:   Call 0.Method_CmdSave_Click0 (&HF, var_140)
  loc_162B120:   Set var_144 = Me.Txt
  loc_162B126:   Call 0.Method_CmdSave_Click0 (CInt(&H25), var_148)
  loc_162B13B:   var_598 = Val(var_148.Text)
  loc_162B14C:   Set var_14C = Me.Txt
  loc_162B152:   Call 0.Method_CmdSave_Click0 (CInt(&H26), var_150)
  loc_162B167:   var_5A0 = Val(var_150.Text)
  loc_162B178:   Set var_154 = Me.Txt
  loc_162B17E:   Call 0.Method_CmdSave_Click0 (CInt(&H27), var_23C, var_240)
  loc_162B193:   var_5A8 = Val(var_240)
  loc_162B1A4:   Set var_284 = Me.Txt
  loc_162B1AA:   Call 0.Method_CmdSave_Click0 (CInt(&H28), var_288, var_28C)
  loc_162B1BF:   var_5B0 = Val(var_28C)
  loc_162B1D0:   Set var_2D0 = Me.Txt
  loc_162B1D6:   Call 0.Method_CmdSave_Click0 (CInt(&H29), var_2D4, var_2D8)
  loc_162B1EB:   var_5B8 = Val(var_2D8)
  loc_162B1FC:   Set var_31C = Me.Txt
  loc_162B202:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_320, var_324)
  loc_162B217:   var_5C0 = Val(var_324)
  loc_162B228:   Set var_368 = Me.Txt
  loc_162B22E:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_36C, var_370)
  loc_162B243:   var_5C8 = Val(var_370)
  loc_162B254:   Proc_6_7_F25D88(var_450, Date)
  loc_162B25D:   Set var_484 = Me.TopCtrl1
  loc_162B263:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_5C8)
  loc_162B2A7:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_162B2EF:   var_1F8 = var_104 & Trim(CVar(var_98)) & "','*****','" & Trim(CVar(var_9C)) & "','" & CVar(var_140.Caption) & "'," & CVar(var_598) & "," 
  loc_162B34A:   var_344 = var_1F8 & CVar(var_23C.Text) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_162B3A4:   var_508 = var_344 & "," & CVar(var_5C8) & ",'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," & var_450 & ",'" & IIf((CStr(var_494) = "Add"), "A", "E") 
  loc_162B3CE:   unk_4D2556.Execute CStr(var_508 & "','" & CVar(MemVar_1F92078) & "')"), var_58C, -1
  loc_162B46E: End If
  loc_162B47C: Set var_8C = Me.Txt
  loc_162B482: Call 0.Method_CmdSave_Click0 (CInt(&H2A), var_94, var_98)
  loc_162B48A: var_590 = var_94.Text
  loc_162B4AA: Set var_A0 = Me.Txt
  loc_162B4B0: Call 0.Method_CmdSave_Click0 (CInt(&H2B), var_13C, var_9C)
  loc_162B4B8: (CDbl(Val(var_98)) <> CDbl(0)) = var_13C.Text
  loc_162B4D9: Set var_140 = Me.Txt
  loc_162B4DF: Call 0.Method_CmdSave_Click0 (CInt(&H2C), var_144)
  loc_162B508: Set var_148 = Me.Txt
  loc_162B50E: Call 0.Method_CmdSave_Click0 (CInt(&H2D), var_14C)
  loc_162B537: Set var_150 = Me.Txt
  loc_162B53D: Call 0.Method_CmdSave_Click0 (CInt(&H2E), var_154)
  loc_162B57C: If ((((var_598 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_144.Text)) <> CDbl(0))) Or (CDbl(Val(var_14C.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Then
  loc_162B58D:   Set var_8C = Me.Txt
  loc_162B593:   Call 0.Method_CmdSave_Click0 (CInt(0), var_94)
  loc_162B59B:   var_98 = var_94.Tag
  loc_162B5BB:   var_9C = Me.SRate.Tag
  loc_162B5DA:   Set var_13C = Me.LblName
  loc_162B5E0:   Call 0.Method_CmdSave_Click0 (&H11, var_140)
  loc_162B5FB:   Set var_144 = Me.Txt
  loc_162B601:   Call 0.Method_CmdSave_Click0 (CInt(&H2A), var_148)
  loc_162B616:   var_598 = Val(var_148.Text)
  loc_162B627:   Set var_14C = Me.Txt
  loc_162B62D:   Call 0.Method_CmdSave_Click0 (CInt(&H2B), var_150)
  loc_162B642:   var_5A0 = Val(var_150.Text)
  loc_162B653:   Set var_154 = Me.Txt
  loc_162B659:   Call 0.Method_CmdSave_Click0 (CInt(&H2C), var_23C, var_240)
  loc_162B66E:   var_5A8 = Val(var_240)
  loc_162B67F:   Set var_284 = Me.Txt
  loc_162B685:   Call 0.Method_CmdSave_Click0 (CInt(&H2D), var_288, var_28C)
  loc_162B69A:   var_5B0 = Val(var_28C)
  loc_162B6AB:   Set var_2D0 = Me.Txt
  loc_162B6B1:   Call 0.Method_CmdSave_Click0 (CInt(&H2E), var_2D4, var_2D8)
  loc_162B6C6:   var_5B8 = Val(var_2D8)
  loc_162B6D7:   Set var_31C = Me.Txt
  loc_162B6DD:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_320, var_324)
  loc_162B6F2:   var_5C0 = Val(var_324)
  loc_162B703:   Set var_368 = Me.Txt
  loc_162B709:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_36C, var_370)
  loc_162B71E:   var_5C8 = Val(var_370)
  loc_162B72F:   Proc_6_7_F25D88(var_450, Date)
  loc_162B738:   Set var_484 = Me.TopCtrl1
  loc_162B73E:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_5C8)
  loc_162B782:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_162B7CA:   var_1F8 = var_104 & Trim(CVar(var_98)) & "','*****','" & Trim(CVar(var_9C)) & "','" & CVar(var_140.Caption) & "'," & CVar(var_598) & "," 
  loc_162B825:   var_344 = var_1F8 & CVar(var_23C.Text) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_162B87F:   var_508 = var_344 & "," & CVar(var_5C8) & ",'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," & var_450 & ",'" & IIf((CStr(var_494) = "Add"), "A", "E") 
  loc_162B8A9:   unk_4D2556.Execute CStr(var_508 & "','" & CVar(MemVar_1F92078) & "')"), var_58C, -1
  loc_162B949: End If
  loc_162B957: Set var_8C = Me.Txt
  loc_162B95D: Call 0.Method_CmdSave_Click0 (CInt(&H2F), var_94, var_98)
  loc_162B965: var_590 = var_94.Text
  loc_162B985: Set var_A0 = Me.Txt
  loc_162B98B: Call 0.Method_CmdSave_Click0 (CInt(&H30), var_13C, var_9C)
  loc_162B993: (CDbl(Val(var_98)) <> CDbl(0)) = var_13C.Text
  loc_162B9B4: Set var_140 = Me.Txt
  loc_162B9BA: Call 0.Method_CmdSave_Click0 (CInt(&H31), var_144)
  loc_162B9E3: Set var_148 = Me.Txt
  loc_162B9E9: Call 0.Method_CmdSave_Click0 (CInt(&H32), var_14C)
  loc_162BA12: Set var_150 = Me.Txt
  loc_162BA18: Call 0.Method_CmdSave_Click0 (CInt(&H33), var_154)
  loc_162BA57: If ((((var_598 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_144.Text)) <> CDbl(0))) Or (CDbl(Val(var_14C.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Then
  loc_162BA68:   Set var_8C = Me.Txt
  loc_162BA6E:   Call 0.Method_CmdSave_Click0 (CInt(0), var_94)
  loc_162BAB5:   Set var_13C = Me.LblName
  loc_162BABB:   Call 0.Method_CmdSave_Click0 (&H12, var_140)
  loc_162BAD6:   Set var_144 = Me.Txt
  loc_162BADC:   Call 0.Method_CmdSave_Click0 (CInt(&H2F), var_148)
  loc_162BB02:   Set var_14C = Me.Txt
  loc_162BB08:   Call 0.Method_CmdSave_Click0 (CInt(&H30), var_150)
  loc_162BB1D:   var_5A0 = Val(var_150.Text)
  loc_162BB2E:   Set var_154 = Me.Txt
  loc_162BB34:   Call 0.Method_CmdSave_Click0 (CInt(&H31), var_23C, var_240)
  loc_162BB49:   var_5A8 = Val(var_240)
  loc_162BB5A:   Set var_284 = Me.Txt
  loc_162BB60:   Call 0.Method_CmdSave_Click0 (CInt(&H32), var_288, var_28C)
  loc_162BB75:   var_5B0 = Val(var_28C)
  loc_162BB86:   Set var_2D0 = Me.Txt
  loc_162BB8C:   Call 0.Method_CmdSave_Click0 (CInt(&H33), var_2D4, var_2D8)
  loc_162BBA1:   var_5B8 = Val(var_2D8)
  loc_162BBB2:   Set var_31C = Me.Txt
  loc_162BBB8:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_320, var_324)
  loc_162BBCD:   var_5C0 = Val(var_324)
  loc_162BBDE:   Set var_368 = Me.Txt
  loc_162BBE4:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_36C, var_370)
  loc_162BBF9:   var_5C8 = Val(var_370)
  loc_162BC0A:   Proc_6_7_F25D88(var_450, Date)
  loc_162BC13:   Set var_484 = Me.TopCtrl1
  loc_162BC19:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_5C8)
  loc_162BC5D:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_162BC9C:   var_1D8 = var_104 & Trim(CVar(var_94.Tag)) & "','*****','" & Trim(CVar(Me.SRate.Tag)) & "','" & CVar(var_140.Caption) & "'," & CVar(Val(var_148.Text)) 
  loc_162BD00:   var_344 = var_1D8 & "," & CVar(var_23C.Text) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_162BD5A:   var_508 = var_344 & "," & CVar(var_5C8) & ",'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," & var_450 & ",'" & IIf((CStr(var_494) = "Add"), "A", "E") 
  loc_162BD84:   unk_4D2556.Execute CStr(var_508 & "','" & CVar(MemVar_1F92078) & "')"), var_58C, -1
  loc_162BE24: End If
  loc_162BE31: Me.SRate.Tag = vbNullString
  loc_162BE3E: Set var_88 = Nothing
  loc_162BE41: Exit Sub
End Sub

Public Function MasterFormExitGet() '4D36E4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4D36F3
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E955E0
  'Data Table: 4D2548
  Dim Me As Recordset15
  loc_E9556E: On Error Goto loc_E955D7
  loc_E95577: Me.MoveFirst
  loc_E955A1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E955C9: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E955D1: Call Proc_23_39_17125F8(0)
  loc_E955D6: Exit Sub
  loc_E955D7: ' Referenced from: E9556E
  loc_E955D7: Proc_6_60_E62BC4(var_A0)
  loc_E955DC: Exit Sub
End Sub

Public Sub Proc_23_37_1090C70
  'Data Table: 4D2548
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim unk_4D2556 As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_1090A03: If (Me.RecordCount = 0) Then
  loc_1090A06:   Proc_23_37_1090C70 = 
  loc_1090A0C: End If
  loc_1090A10: Set var_A0 = Me.TopCtrl1
  loc_1090A16: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1090A2F: If (CStr() = "Add") Then
  loc_1090A6D:   Set var_A0 = Me.Txt
  loc_1090A73:   Call 0.Method_Proc_23_37_1090C700 (CInt(0), var_B8, var_BC, "Select Count(*) From RoomCat Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1090A94:   unk_4D2556.Execute var_E0 & var_BC & "'", 0, var_F4
  loc_1090AA4:    = var_E0.Item()
  loc_1090AAC:    = var_F4.Value
  loc_1090ADD:   If (var_B8.Text.Fields > 0) Then
  loc_1090AFB:     var_B0 = "Duplicate Name"
  loc_1090B01:     MsgBox(var_B0, &H40, "Information", var_124, var_144)
  loc_1090B1C:     Set var_A0 = Me.Txt
  loc_1090B22:     Call 0.Method_Proc_23_37_1090C700 (CInt(0))
  loc_1090B2A:     var_B8.SetFocus
  loc_1090B3B:     Proc_23_37_1090C70 = &HFF
  loc_1090B41:   End If
  loc_1090B44: Else
  loc_1090B7F:   Set var_A0 = Me.Txt
  loc_1090B85:   Call 0.Method_Proc_23_37_1090C700 (CInt(0), var_B8, var_BC, "Select Count(*) From RoomCat Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1090BB7:   unk_4D2556.Execute var_E0 & var_BC & "' And Name <>'" & global_76 & "'", 0, var_F4
  loc_1090BC7:    = var_E0.Item(var_B8)
  loc_1090BCF:    = var_F4.Value
  loc_1090C04:   If (var_B8.Text.Fields > 0) Then
  loc_1090C28:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_1090C43:     Set var_A0 = Me.Txt
  loc_1090C49:     Call 0.Method_Proc_23_37_1090C700 (CInt(0))
  loc_1090C51:     var_B8.SetFocus
  loc_1090C62:     Proc_23_37_1090C70 = &HFF
  loc_1090C68:   End If
  loc_1090C68: End If
  loc_1090C68: Proc_23_37_1090C70 = var_B8
End Sub

Public Sub Proc_23_38_FA04A8
  'Data Table: 4D2548
  Dim var_98 As TextBox
  Dim var_F8 As TextBox
  loc_FA033E: global_76 = vbNullString
  loc_FA0350: Set var_8C = Me.Txt
  loc_FA0356: Call 0.Method_Proc_23_38_FA04A8C (var_8E, var_86)
  loc_FA0366: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FA037C:   Set var_8C = Me.Txt
  loc_FA0382:   Call 0.Method_Proc_23_38_FA04A80 (CInt(var_86), var_98)
  loc_FA038A:   var_98.Text = vbNullString
  loc_FA03A6:   Set var_8C = Me.Txt
  loc_FA03AC:   Call 0.Method_Proc_23_38_FA04A80 (CInt(var_86), var_98)
  loc_FA03B4:   var_98.Tag = vbNullString
  loc_FA03C3: Next var_92 'Byte
  loc_FA03D7: Set var_8C = Me.Txt
  loc_FA03DD: Call 0.Method_Proc_23_38_FA04A80 (CInt(8), var_98)
  loc_FA0401: For var_9C = CByte(9) To (CInt(var_88) = &H1C): var_88 = var_9C 'Byte
  loc_FA0417:   Set var_8C = Me.Txt
  loc_FA041D:   Call 0.Method_Proc_23_38_FA04A80 (CInt(var_88), var_98)
  loc_FA046D:   Set var_F4 = Me.Txt
  loc_FA0473:   Call 0.Method_Proc_23_38_FA04A80 (CInt(var_88), var_F8, CStr(Format(CVar(Val("No")), "0.00")), 1)
  loc_FA047B:   var_F8.Text = 1
  loc_FA049E: Next var_9C 'Byte
  loc_FA04A4: Exit Sub
End Sub

Public Sub Proc_23_39_17125F8
  'Data Table: 4D2548
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim unk_4D2556 As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Fields15
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_128 As Variant
  Dim var_90 As Recordset15
  loc_1710A34: On Error Goto loc_17125EF
  loc_1710A8D: unk_4D2556.Execute CStr("Select U_Name,U_AE,U_EntDt From RoomCat where Code='" & Me.Fields.Item("Code").Value & "'  "), var_120, -1
  loc_1710A98: Set var_94 = var_124
  loc_1710AEC: var_124 = var_94.Fields
  loc_1710B55: var_18C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1710B9A: Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("U_Name")), var_18C)))
  loc_1710C0C: var_124 = var_94.Fields
  loc_1710C14: var_128 = var_124.Item("U_AE")
  loc_1710C2D: var_120 = "entdt : "
  loc_1710C75: var_18C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128)) = "E"), "Last Update : ", var_120))
  loc_1710CBA: Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("U_EntDt")))))
  loc_1710CF4: var_8A = 1
  loc_1710D0E: If (Me.RecordCount > 0) Then
  loc_1710D67:   unk_4D2556.Execute CStr("Select RoomCat.* From RoomCat where RoomCat.Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_1710D72:   Set var_88 = var_124
  loc_1710DA0:   If (var_88.RecordCount > 0) Then
  loc_1710DA3:     Call Proc_23_38_FA04A8(var_124)
  loc_1710DA8:     ' Referenced from: 171156E
  loc_1710DB7:     If Not(var_88.EOF) Then
  loc_1710DF6:       If (var_88.Fields.Item("Type").Value = "RO") Then
  loc_1710E13:         var_AC = var_88.Fields.Item("Type")
  loc_1710E32:         Set var_124 = Me.Txt
  loc_1710E38:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1F), var_128)
  loc_1710E40:         var_128.Tag = CStr(var_AC.Value)
  loc_1710E64:         Set var_98 = Me.Txt
  loc_1710E6A:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1F), var_AC)
  loc_1710E72:         var_AC.Text = "Room"
  loc_1710E81:       Else
  loc_1710EBD:         If (var_88.Fields.Item("Type").Value = "CO") Then
  loc_1710EDA:           var_AC = var_88.Fields.Item("Type")
  loc_1710EF9:           Set var_124 = Me.Txt
  loc_1710EFF:           Call 0.Method_Proc_23_39_17125F80 (CInt(&H1F), var_128)
  loc_1710F07:           var_128.Tag = CStr(var_AC.Value)
  loc_1710F2B:           Set var_98 = Me.Txt
  loc_1710F31:           Call 0.Method_Proc_23_39_17125F80 (CInt(&H1F), var_AC)
  loc_1710F39:           var_AC.Text = "Conf. Hall"
  loc_1710F45:         End If
  loc_1710F45:       End If
  loc_1710F7E:       Set var_124 = Me.Txt
  loc_1710F84:       Call 0.Method_Proc_23_39_17125F80 (CInt(0), var_128)
  loc_1710F8C:       var_128.Tag = CStr(var_88.Fields.Item("Code").Value)
  loc_1710FD8:       Set var_124 = Me.Txt
  loc_1710FDE:       Call 0.Method_Proc_23_39_17125F80 (CInt(&H37), var_128)
  loc_1710FE6:       var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ActiveYN")))
  loc_1711033:       Set var_124 = Me.Txt
  loc_1711039:       Call 0.Method_Proc_23_39_17125F80 (CInt(0), var_128)
  loc_1711041:       var_128.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_1711090:       Set var_124 = Me.Txt
  loc_1711096:       Call 0.Method_Proc_23_39_17125F80 (CInt(1), var_128)
  loc_171109E:       var_128.Text = CStr(var_88.Fields.Item("ShortName").Value)
  loc_17110CB:       var_AC = var_88.Fields.Item("RevCode")
  loc_17110F0:       Call 0.Method_Proc_23_39_17125F80 (CInt(&H36), var_128)
  loc_17110F8:       var_128.Tag = Proc_6_38_E68A98(CVar(var_AC))
  loc_171111A:       Set var_98 = Me.Txt
  loc_1711120:       Call 0.Method_Proc_23_39_17125F80 (CInt(&H36), var_AC)
  loc_171113F:       If (var_AC.Tag <> vbNullString) Then
  loc_1711181:         var_DC = "Select Name from RevMast where Code=(select revcode from roomcat where code='" & Me.Fields.Item("SearchCode").Value 
  loc_1711198:         unk_4D2556.Execute CStr(var_DC & "')"), var_120, -1
  loc_17111A3:         Set var_90 = Me.Txt
  loc_17111D1:         If (var_90.RecordCount > 0) Then
  loc_1711213:           Call 0.Method_Proc_23_39_17125F80 (CInt(&H36), var_128, CStr(var_90.Fields.Item(0).Value))
  loc_171121B:           var_128.Text = Me.Txt
  loc_1711231:         End If
  loc_1711231:       End If
  loc_1711283:       Set var_124 = Me.Txt
  loc_1711289:       Call 0.Method_Proc_23_39_17125F80 (CInt(3), var_128, CStr(Format(CVar(var_88.Fields.Item("RetChg")), "0.00")))
  loc_1711291:       var_128.Text = 1
  loc_17112FD:       Set var_124 = Me.Txt
  loc_1711303:       Call 0.Method_Proc_23_39_17125F80 (CInt(4), var_128, CStr(Format(CVar(var_88.Fields.Item("CancelChg")), "0.00")), 1)
  loc_171130B:       var_128.Text = 1
  loc_1711377:       Set var_124 = Me.Txt
  loc_171137D:       Call 0.Method_Proc_23_39_17125F80 (CInt(5), var_128, CStr(Format(CVar(var_88.Fields.Item("MINADV")), "0.00")), 1)
  loc_1711385:       var_128.Text = 1
  loc_17113E2:       Set var_124 = Me.Txt
  loc_17113E8:       Call 0.Method_Proc_23_39_17125F80 (CInt(6), var_128, CStr(Val(CStr(var_88.Fields.Item("noRooms").Value))))
  loc_17113F0:       var_128.Text = 1
  loc_171144D:       Set var_124 = Me.Txt
  loc_1711453:       Call 0.Method_Proc_23_39_17125F80 (CInt(7), var_128)
  loc_171145B:       var_128.Text = CStr(Val(CStr(var_88.Fields.Item("MultPer").Value)))
  loc_17114AC:       var_120 = "Yes"
  loc_17114E0:       Set var_124 = Me.Txt
  loc_17114E6:       Call 0.Method_Proc_23_39_17125F80 (CInt(8), var_128)
  loc_17114EE:       var_128.Text = CStr(IIf((var_88.Fields.Item("InclCount").Value = "Y"), var_120, "No"))
  loc_1711544:       Set var_124 = Me.Txt
  loc_171154A:       Call 0.Method_Proc_23_39_17125F80 (CInt(&H38), var_128)
  loc_1711552:       var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MapCode")))
  loc_1711569:       var_88.MoveNext
  loc_171156E:       GoTo loc_1710DA8
  loc_1711571:     End If
  loc_1711571:   End If
  loc_17115B0:   var_DC = "Select RateList.* From RateList Left Join RoomCat on RateList.RoomCat=RoomCat.Code where RateList.RoomCat='" & Me.Fields.Item("SearchCode").Value 
  loc_17115C7:   unk_4D2556.Execute CStr(var_DC & "' ANd RoomNo='*****' and RateList.Code='*'"), var_120, -1
  loc_17115D2:   Set var_90 = var_124
  loc_1711600:   If (var_90.RecordCount > 0) Then
  loc_1711603:     ' Referenced from: 17125C9
  loc_1711612:     If Not(var_90.EOF) Then
  loc_1711651:       If (var_90.Fields.Item("OccType").Value = "Single") Then
  loc_1711688:         Set var_124 = Me.LblName
  loc_171168E:         Call 0.Method_Proc_23_39_17125F80 (&HE, var_128)
  loc_1711696:         var_128.Caption = Proc_6_38_E68A98(CVar(var_90.Fields.Item("OccType")), var_124)
  loc_17116FC:         Set var_124 = Me.Txt
  loc_1711702:         Call 0.Method_Proc_23_39_17125F80 (CInt(9), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_171170A:         var_128.Text = 1
  loc_1711776:         Set var_124 = Me.Txt
  loc_171177C:         Call 0.Method_Proc_23_39_17125F80 (CInt(&HA), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_1711784:         var_128.Text = 1
  loc_17117F0:         Set var_124 = Me.Txt
  loc_17117F6:         Call 0.Method_Proc_23_39_17125F80 (CInt(&HB), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17117FE:         var_128.Text = 1
  loc_171186A:         Set var_124 = Me.Txt
  loc_1711870:         Call 0.Method_Proc_23_39_17125F80 (CInt(&HC), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_1711878:         var_128.Text = 1
  loc_17118E4:         Set var_124 = Me.Txt
  loc_17118EA:         Call 0.Method_Proc_23_39_17125F80 (CInt(&HD), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17118F2:         var_128.Text = 1
  loc_171195E:         Set var_124 = Me.Txt
  loc_1711964:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1D), var_128, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_171196C:         var_128.Text = 1
  loc_17119D8:         Set var_124 = Me.Txt
  loc_17119DE:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1E), var_128, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17119E6:         var_128.Text = 1
  loc_1711A00:       End If
  loc_1711A3C:       If (var_90.Fields.Item("OccType").Value = "Multiple") Then
  loc_1711A73:         Set var_124 = Me.LblName
  loc_1711A79:         Call 0.Method_Proc_23_39_17125F80 (&HF, var_128)
  loc_1711A81:         var_128.Caption = Proc_6_38_E68A98(CVar(var_90.Fields.Item("OccType")), 1)
  loc_1711AE7:         Set var_124 = Me.Txt
  loc_1711AED:         Call 0.Method_Proc_23_39_17125F80 (CInt(&HE), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_1711AF5:         var_128.Text = 1
  loc_1711B61:         Set var_124 = Me.Txt
  loc_1711B67:         Call 0.Method_Proc_23_39_17125F80 (CInt(&HF), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_1711B6F:         var_128.Text = 1
  loc_1711BDB:         Set var_124 = Me.Txt
  loc_1711BE1:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H10), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_1711BE9:         var_128.Text = 1
  loc_1711C55:         Set var_124 = Me.Txt
  loc_1711C5B:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H11), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_1711C63:         var_128.Text = 1
  loc_1711CCF:         Set var_124 = Me.Txt
  loc_1711CD5:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H12), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_1711CDD:         var_128.Text = 1
  loc_1711D49:         Set var_124 = Me.Txt
  loc_1711D4F:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1D), var_128, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_1711D57:         var_128.Text = 1
  loc_1711DC3:         Set var_124 = Me.Txt
  loc_1711DC9:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1E), var_128, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_1711DD1:         var_128.Text = 1
  loc_1711DEB:       End If
  loc_1711E27:       If (var_90.Fields.Item("OccType").Value = "Extra Person") Then
  loc_1711E5E:         Set var_124 = Me.LblName
  loc_1711E64:         Call 0.Method_Proc_23_39_17125F80 (&H11, var_128)
  loc_1711E6C:         var_128.Caption = Proc_6_38_E68A98(CVar(var_90.Fields.Item("OccType")), 1)
  loc_1711ED2:         Set var_124 = Me.Txt
  loc_1711ED8:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H13), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_1711EE0:         var_128.Text = 1
  loc_1711F4C:         Set var_124 = Me.Txt
  loc_1711F52:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H14), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_1711F5A:         var_128.Text = 1
  loc_1711FC6:         Set var_124 = Me.Txt
  loc_1711FCC:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H15), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_1711FD4:         var_128.Text = 1
  loc_1712040:         Set var_124 = Me.Txt
  loc_1712046:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H16), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_171204E:         var_128.Text = 1
  loc_17120BA:         Set var_124 = Me.Txt
  loc_17120C0:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H17), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17120C8:         var_128.Text = 1
  loc_1712134:         Set var_124 = Me.Txt
  loc_171213A:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1D), var_128, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_1712142:         var_128.Text = 1
  loc_17121AE:         Set var_124 = Me.Txt
  loc_17121B4:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1E), var_128, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17121BC:         var_128.Text = 1
  loc_17121D6:       End If
  loc_1712212:       If (var_90.Fields.Item("OccType").Value = "Weekend") Then
  loc_1712249:         Set var_124 = Me.LblName
  loc_171224F:         Call 0.Method_Proc_23_39_17125F80 (&H12, var_128)
  loc_1712257:         var_128.Caption = Proc_6_38_E68A98(CVar(var_90.Fields.Item("OccType")), 1)
  loc_17122BD:         Set var_124 = Me.Txt
  loc_17122C3:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H18), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_17122CB:         var_128.Text = 1
  loc_1712337:         Set var_124 = Me.Txt
  loc_171233D:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H19), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_1712345:         var_128.Text = 1
  loc_17123B1:         Set var_124 = Me.Txt
  loc_17123B7:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1A), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17123BF:         var_128.Text = 1
  loc_171242B:         Set var_124 = Me.Txt
  loc_1712431:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1B), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_1712439:         var_128.Text = 1
  loc_17124A5:         Set var_124 = Me.Txt
  loc_17124AB:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1C), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17124B3:         var_128.Text = 1
  loc_171251F:         Set var_124 = Me.Txt
  loc_1712525:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1D), var_128, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_171252D:         var_128.Text = 1
  loc_1712599:         Set var_124 = Me.Txt
  loc_171259F:         Call 0.Method_Proc_23_39_17125F80 (CInt(&H1E), var_128, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17125A7:         var_128.Text = 1
  loc_17125C1:       End If
  loc_17125C4:       var_90.MoveNext
  loc_17125C9:       GoTo loc_1711603
  loc_17125CC:     End If
  loc_17125CC:   End If
  loc_17125CE:   var_8A = 0
  loc_17125D4: Else
  loc_17125D4:   Call Proc_23_38_FA04A8(var_8A, 1)
  loc_17125D9: End If
  loc_17125D9: Call Proc_23_41_EF36D8(var_8A)
  loc_17125E3: Set var_88 = Nothing
  loc_17125EB: Set var_90 = Nothing
  loc_17125EE: Exit Sub
  loc_17125EF: ' Referenced from: 1710A34
  loc_17125EF: Proc_6_60_E62BC4()
  loc_17125F4: Exit Sub
End Sub

Public Sub Proc_23_40_EC1E9C(arg_C) 'EC1E9C
  'Data Table: 4D2548
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_EC1E02: Set var_8C = Me.Txt
  loc_EC1E08: Call 0.Method_Proc_23_40_EC1E9CC (var_8E, var_86)
  loc_EC1E18: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC1E2E:   Set var_8C = Me.Txt
  loc_EC1E34:   Call 0.Method_Proc_23_40_EC1E9C0 (CInt(var_86), var_98)
  loc_EC1E3C:   var_98.Enabled = arg_C
  loc_EC1E4B: Next var_92 'Byte
  loc_EC1E5E: Me.CmdRate.Enabled = arg_C
  loc_EC1E81: If (Me.SRate.Visible = &HFF) Then
  loc_EC1E90:   Me.SRate.Visible = False
  loc_EC1E98: End If
  loc_EC1E98: Exit Sub
End Sub

Public Sub Proc_23_41_EF36D8
  'Data Table: 4D2548
  loc_EF361C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF362E:   Me.DGHelp.Visible = False
  loc_EF3636: End If
  loc_EF3652: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EF3664:   Me.DGRevenue.Visible = False
  loc_EF366C: End If
  loc_EF3687: If (Me.FrmList.Visible = &HFF) Then
  loc_EF3696:   Me.FrmList.Visible = False
  loc_EF369E: End If
  loc_EF36BA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF36CC:   Me.FGPoint.Visible = False
  loc_EF36D4: End If
  loc_EF36D4: Exit Sub
End Sub

Public Sub Proc_23_42_EE043C(arg_C) 'EE043C
  'Data Table: 4D2548
  Dim var_8C As TextBox
  loc_EE0390: Call Proc_23_41_EF36D8()
  loc_EE03A0: Set var_88 = Me.Txt
  loc_EE03A6: Call 0.Method_Proc_23_42_EE043C0 (CInt(0))
  loc_EE03CF: If (Proc_6_27_EA565C(var_8C, "RoomCatName") = 0) Then
  loc_EE03D2:   Exit Sub
  loc_EE03D3: End If
  loc_EE040A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE040D:   Call TopCtrl1_UnknownEvent_16()
  loc_EE0415: Else
  loc_EE041F:   Set var_88 = Me.Txt
  loc_EE0425:   Call 0.Method_Proc_23_42_EE043C0 (arg_C, var_8C)
  loc_EE042D:   var_8C.SetFocus
  loc_EE0439: End If
  loc_EE0439: Exit Sub
End Sub
