VERSION 5.00
Begin VB.Form FaSubGroup
  Caption = "Ledger Accounts Entry"
  BackColor = &HFFC0C0&
  ForeColor = &HFF0000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  Icon = "FaSubGroup.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 15210
  ClientHeight = 8025
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 31
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 5280
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 25
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15210
    Height = 450
    TabIndex = 89
  End
  Begin Frame FrBankDetail
    Caption = "Bank Detail :"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 6465
    Top = 6285
    Width = 3090
    Height = 645
    TabIndex = 79
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
      Index = 30
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1515
      Top = 240
      Width = 1395
      Height = 285
      Enabled = 0   'False
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin Label Lbl
      Caption = "Cheque Type"
      Index = 25
      ForeColor = &HC00000&
      Left = 120
      Top = 255
      Width = 1260
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
  End
  Begin TextBox Txt
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11130
    Top = 1500
    Width = 1005
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
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
    ForeColor = &HC00000&
    Left = 7995
    Top = 1500
    Width = 2085
    Height = 285
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
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 4965
    Width = 2790
    Height = 285
    Enabled = 0   'False
    TabIndex = 24
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
  Begin DataGrid DGAcName
    Left = 12795
    Top = 3165
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGArea
    Left = 13530
    Top = 1950
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 62
  End
  Begin DataGrid DGCity
    Left = 13365
    Top = 1170
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 50
  End
  Begin MSHFlexGrid FGrid
    Left = 555
    Top = 3420
    Width = 5640
    Height = 3915
    TabIndex = 5
  End
  Begin DataGrid DGUnderAc
    Left = 13020
    Top = 675
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 48
  End
  Begin DataGrid DGTDSCat
    Left = 13005
    Top = 0
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 73
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2040
    Top = 1815
    Width = 4140
    Height = 285
    TabIndex = 3
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
  Begin Frame Frame2
    Index = 1
    BackColor = &HFFC0C0&
    ForeColor = &H0&
    Left = 9195
    Top = 7515
    Width = 6180
    Height = 1770
    TabIndex = 65
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin Frame Frame2
      Caption = "A/c Group"
      Index = 0
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 465
      Top = 105
      Width = 5115
      Height = 870
      TabIndex = 66
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      BorderStyle = 0 'None
      Begin OptionButton Opt3
        Caption = "All"
        Index = 2
        BackColor = &HC0FFC0&
        ForeColor = &HC00000&
        Left = 420
        Top = 165
        Width = 840
        Height = 255
        TabIndex = 68
        Value = 255
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
      Begin OptionButton Opt3
        Caption = "Particular Group"
        Index = 3
        BackColor = &HFFFFC0&
        ForeColor = &HC00000&
        Left = 2910
        Top = 150
        Width = 1875
        Height = 285
        TabIndex = 67
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
      Begin DataCombo DCGroup
        Left = 270
        Top = 450
        Width = 4740
        Height = 360
        TabIndex = 69
      End
    End
    Begin OptionButton Opt6
      Caption = "Detail"
      Index = 0
      BackColor = &HCFE0E0&
      ForeColor = &H800080&
      Left = 1680
      Top = 330
      Width = 945
      Height = 360
      Visible = 0   'False
      TabIndex = 71
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
    End
    Begin OptionButton Opt6
      Caption = "Summary"
      Index = 1
      BackColor = &HCFE0E0&
      ForeColor = &H800080&
      Left = 3330
      Top = 405
      Width = 1260
      Height = 240
      Visible = 0   'False
      TabIndex = 70
      Value = 255
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
    End
    Begin BtnEnh BtnPrint
      Left = 540
      Top = 1095
      Width = 1080
      Height = 570
      TabIndex = 87
    End
    Begin BtnEnh BtnExit
      Left = 4395
      Top = 1080
      Width = 1080
      Height = 570
      TabIndex = 88
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 690
    Top = 3615
    Width = 1200
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
    Index = 23
    BackColor = &HFFFFFF&
    Left = 180
    Top = 3030
    Width = 570
    Height = 255
    Visible = 0   'False
    TabIndex = 64
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin TextBox txtCurrBal
    ForeColor = &HC00000&
    Left = 3960
    Top = 2940
    Width = 1485
    Height = 285
    Enabled = 0   'False
    TabIndex = 63
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
  End
  Begin TextBox Txt
    Index = 26
    BackColor = &HFFFFFF&
    Left = 3945
    Top = 2955
    Width = 1500
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 60
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
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 885
    Top = 2940
    Width = 1575
    Height = 285
    Enabled = 0   'False
    TabIndex = 59
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HFF0000&
    Left = 17865
    Top = 4140
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 58
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 180
      Width = 2415
      Height = 1800
      TabIndex = 61
    End
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2040
    Top = 1500
    Width = 4140
    Height = 285
    TabIndex = 2
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8535
    Top = 1185
    Width = 3600
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
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
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 5910
    Width = 1260
    Height = 285
    Enabled = 0   'False
    TabIndex = 28
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 1185
    Width = 525
    Height = 285
    Enabled = 0   'False
    Text = "Mr."
    TabIndex = 6
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 17130
    Top = 8385
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    MaxLength = 20
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2040
    Top = 870
    Width = 1200
    Height = 285
    Visible = 0   'False
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
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 5595
    Width = 4140
    Height = 285
    TabIndex = 27
    BorderStyle = 0 'None
    MaxLength = 200
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
    Left = 7995
    Top = 2760
    Width = 2565
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2040
    Top = 1185
    Width = 4140
    Height = 285
    TabIndex = 1
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 1815
    Width = 4140
    Height = 285
    Enabled = 0   'False
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 2130
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 2445
    Width = 4140
    Height = 285
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 17145
    Top = 8760
    Width = 2565
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 13
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 3075
    Width = 4140
    Height = 285
    Enabled = 0   'False
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
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 3390
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 24
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
    Left = 7995
    Top = 3705
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 24
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
    Left = 7995
    Top = 4020
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
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
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10845
    Top = 4335
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 4335
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 19
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
    Index = 24
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11550
    Top = 2760
    Width = 585
    Height = 285
    Enabled = 0   'False
    Text = "Yes"
    TabIndex = 75
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 4650
    Width = 2790
    Height = 285
    Enabled = 0   'False
    TabIndex = 23
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 17130
    Top = 7575
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 22
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
    Index = 18
    BackColor = &HFFFFFF&
    Left = 17130
    Top = 7305
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 21
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
  Begin Label Lbl
    Caption = "GSTIN"
    Index = 28
    ForeColor = &HC00000&
    Left = 6555
    Top = 5280
    Width = 600
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4155
    Top = 7650
    Width = 2790
    Height = 285
    TabIndex = 86
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
    Left = 780
    Top = 7650
    Width = 2880
    Height = 255
    TabIndex = 85
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
    TabIndex = 84
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
  Begin Label Lbl
    Caption = "Last Name"
    Index = 27
    ForeColor = &HC00000&
    Left = 10110
    Top = 1500
    Width = 975
    Height = 240
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
  Begin Label Lbl
    Caption = "Middle Name"
    Index = 26
    ForeColor = &HC00000&
    Left = 6570
    Top = 1485
    Width = 1260
    Height = 240
    TabIndex = 82
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
    Caption = "Last Name"
    Index = 1
    Left = 18810
    Top = 7035
    Width = 885
    Height = 195
    Visible = 0   'False
    TabIndex = 78
    AutoSize = -1  'True
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
  Begin Label Label2
    Caption = "Middle Name"
    Index = 0
    Left = 16230
    Top = 7035
    Width = 1080
    Height = 195
    Visible = 0   'False
    TabIndex = 77
    AutoSize = -1  'True
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
  Begin Label Label1
    Caption = "Nature"
    ForeColor = &H0&
    Left = 0
    Top = 0
    Width = 705
    Height = 240
    TabIndex = 76
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "TIN No."
    Index = 24
    ForeColor = &HC00000&
    Left = 6555
    Top = 4965
    Width = 690
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
    Caption = "T.D.S.Category"
    Index = 19
    ForeColor = &HC00000&
    Left = 615
    Top = 1815
    Width = 1425
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
  Begin Label Lbl
    Caption = "Nature"
    Index = 1
    ForeColor = &HC00000&
    Left = 2085
    Top = 2385
    Width = 630
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
  Begin Shape Shape2
    BorderColor = &HC00000&
    Left = 675
    Top = 2295
    Width = 5295
    Height = 1110
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblOpBalType
    Caption = "Dr/Cr"
    ForeColor = &HC0&
    Left = 2460
    Top = 2955
    Width = 480
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
  Begin Label LblCurBalType
    Caption = "Dr/Cr"
    ForeColor = &HC0&
    Left = 5445
    Top = 2955
    Width = 480
    Height = 240
    Visible = 0   'False
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
    Caption = "Opening Balance"
    Index = 21
    ForeColor = &HC00000&
    Left = 840
    Top = 2625
    Width = 1650
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
    Caption = "Current Balance"
    Index = 22
    ForeColor = &HC00000&
    Left = 3930
    Top = 2625
    Width = 1545
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
    Caption = "Religion"
    Index = 23
    ForeColor = &HC00000&
    Left = 6555
    Top = 5940
    Width = 795
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
  Begin Label Lbl
    Caption = "IT Ward No."
    Index = 20
    ForeColor = &H0&
    Left = 15600
    Top = 8385
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 51
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
  Begin Label Lbl
    Caption = "Code"
    Index = 18
    ForeColor = &HC00000&
    Left = 630
    Top = 870
    Width = 495
    Height = 240
    Visible = 0   'False
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
    Caption = "Remark"
    Index = 17
    ForeColor = &HC00000&
    Left = 6555
    Top = 5595
    Width = 735
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
  Begin Label LblNature
    Caption = "Nature"
    ForeColor = &HC0&
    Left = 2865
    Top = 2400
    Width = 1260
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
    Caption = "Credit Days"
    Index = 16
    ForeColor = &HC00000&
    Left = 9690
    Top = 4350
    Width = 1080
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
    Index = 15
    ForeColor = &HC00000&
    Left = 6570
    Top = 4350
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
    Caption = "Active"
    Index = 14
    ForeColor = &HC00000&
    Left = 10950
    Top = 2775
    Width = 585
    Height = 240
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
  Begin Label Lbl
    Caption = "PAN No."
    Index = 13
    ForeColor = &HC00000&
    Left = 6555
    Top = 4665
    Width = 780
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
  Begin Label Lbl
    Caption = "LST No."
    Index = 12
    ForeColor = &H0&
    Left = 15600
    Top = 7575
    Width = 735
    Height = 255
    Visible = 0   'False
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
  Begin Label Lbl
    Caption = "CST No."
    Index = 11
    ForeColor = &H0&
    Left = 15600
    Top = 7305
    Width = 765
    Height = 255
    Visible = 0   'False
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
  Begin Label Lbl
    Caption = "E-Mail"
    Index = 10
    ForeColor = &HC00000&
    Left = 6570
    Top = 4035
    Width = 585
    Height = 240
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
    Caption = "Fax No"
    Index = 9
    ForeColor = &HC00000&
    Left = 6570
    Top = 3720
    Width = 675
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
  Begin Label Lbl
    Caption = "Mobile No."
    Index = 8
    ForeColor = &HC00000&
    Left = 6570
    Top = 3405
    Width = 1020
    Height = 240
    TabIndex = 36
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
    Caption = "Area Name"
    Index = 6
    ForeColor = &HC00000&
    Left = 15705
    Top = 8760
    Width = 975
    Height = 210
    Visible = 0   'False
    TabIndex = 35
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
  Begin Label Lbl
    Caption = "City Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 6570
    Top = 2760
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
  Begin Label Lbl
    Caption = "Address"
    Index = 4
    ForeColor = &HC00000&
    Left = 6570
    Top = 1815
    Width = 750
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
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 3
    ForeColor = &HC00000&
    Left = 6570
    Top = 1185
    Width = 1440
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
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &HC00000&
    Left = 6570
    Top = 3090
    Width = 1140
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
  Begin Label Lbl
    Caption = "Under Group"
    Index = 2
    ForeColor = &HC00000&
    Left = 615
    Top = 1500
    Width = 1215
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
  Begin Label Lbl
    Caption = "Account Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 615
    Top = 1185
    Width = 1380
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
End

Attribute VB_Name = "FaSubGroup"

Private global_96 As Byte
Private global_54 As Integer
Private global_52 As Integer
Private global_84 As Double
Private global_64 As Long

Private Sub Txt_GotFocus(Index As Integer) '14079F8
  'Data Table: 52BB24
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_88 As DataGrid
  loc_1406FB4: On Error Goto loc_14079CD
  loc_1406FC1: Set var_88 = Me.Txt
  loc_1406FC7: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1406FD5: Proc_183_28_E20B20(var_8C)
  loc_1406FE1: Call Proc_184_51_F6BE3C(var_8C)
  loc_1406FE9: var_92 = Index
  loc_1406FF4: If (var_92 = CInt(1)) Then
  loc_1407045:   Set var_88 = Me.Txt
  loc_140704B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1407053:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_140706B:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_140706E:     Exit Sub
  loc_140706F:   End If
  loc_140707C:   Set var_88 = Me.Txt
  loc_1407082:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_140708A:   var_A0 = var_8C.Text
  loc_140709C:   var_B0 = "Name"
  loc_14070D7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14070E0:     Me.MoveFirst
  loc_1407103:     Set var_88 = Me.Txt
  loc_1407109:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1407111:     0 = var_8C.Text
  loc_140712A:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_140713F:   End If
  loc_1407142: Else
  loc_140714A:   If (var_92 = CInt(3)) Then
  loc_140719B:     Set var_88 = Me.Txt
  loc_14071A1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14071C1:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14071C4:       Exit Sub
  loc_14071C5:     End If
  loc_14071D2:     Set var_88 = Me.Txt
  loc_14071D8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14071E0:     var_A0 = var_8C.Text
  loc_14071F2:     var_B0 = "Name"
  loc_140722D:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1407236:       Me.MoveFirst
  loc_1407259:       Set var_88 = Me.Txt
  loc_140725F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1407267:       0 = var_8C.Text
  loc_1407280:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1407295:     End If
  loc_1407298:   Else
  loc_14072A0:     If (var_92 = CInt(2)) Then
  loc_14072AC:       var_98 = Me.RecordCount
  loc_14072F1:       Set var_88 = Me.Txt
  loc_14072F7:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1407317:       If (((var_98 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_140731A:         Exit Sub
  loc_140731B:       End If
  loc_1407328:       Set var_88 = Me.Txt
  loc_140732E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1407336:       var_A0 = var_8C.Text
  loc_1407348:       var_B0 = "Name"
  loc_1407383:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_140738C:         Me.MoveFirst
  loc_14073AF:         Set var_88 = Me.Txt
  loc_14073B5:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14073BD:         0 = var_8C.Text
  loc_14073D6:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_14073EB:       End If
  loc_14073EE:     Else
  loc_14073F6:       If (var_92 = CInt(4)) Then
  loc_1407406:         ReDim var_F0(0 To 3)
  loc_140741D:         var_F0(0) = "Mr."
  loc_140742C:         var_F0(1) = "Mrs."
  loc_140743B:         var_F0(2) = "Miss"
  loc_140744A:         var_F0(3) = "M/S"
  loc_1407461:         global_136 = Array(var_F0)
  loc_140746C:         Set var_B4 = Me.ListView
  loc_1407487:         Set var_8C = Me.Txt
  loc_14074A1:         Set global_152 = Proc_183_37_EFE3E8(var_B4, var_8C, Index)
  loc_14074B5:       Else
  loc_14074BD:         If (var_92 = CInt(9)) Then
  loc_14074D3:           Me.DGCity.Tag = CVar(CStr(Index))
  loc_14074EB:           Set var_88 = Me.Txt
  loc_14074F1:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1407510:           Me.DGCity.Left = CVar(var_98)
  loc_140752B:           Set var_90 = Me.Txt
  loc_1407531:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_128)
  loc_1407539:           4 = var_B4.Height
  loc_140754B:           Set var_88 = Me.Txt
  loc_1407551:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1407569:           var_B0 = CVar(((var_8C.Top + var_128) + CDbl(&HF))) 'Single
  loc_1407578:           Me.DGCity.Top = CVar(var_8C.Top)
  loc_14075D8:           Set var_88 = Me.Txt
  loc_14075DE:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14075E6:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14075FE:           If (var_8C.Left Or (var_A0 = vbNullString)) Then
  loc_1407601:             Exit Sub
  loc_1407602:           End If
  loc_140760F:           Set var_88 = Me.Txt
  loc_1407615:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_140761D:           var_A0 = var_8C.Text
  loc_140762F:           var_B0 = "Name"
  loc_1407646:           var_B4 = Me.Fields.Item(var_B0)
  loc_140766A:           If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_1407673:             Me.MoveFirst
  loc_1407696:             Set var_88 = Me.Txt
  loc_140769C:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14076A4:             0 = var_8C.Text
  loc_14076BD:             Me.Find 1 & var_A0 & "'", var_B0, 
  loc_14076D2:           End If
  loc_14076D5:         Else
  loc_14076DD:           If (var_92 = CInt(&HA)) Then
  loc_14076F3:             Me.DGArea.Tag = CVar(CStr(Index))
  loc_140770B:             Set var_88 = Me.Txt
  loc_1407711:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1407730:             Me.DGArea.Left = CVar(var_8C.Left)
  loc_140774B:             Set var_90 = Me.Txt
  loc_1407751:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_140776B:             Set var_88 = Me.Txt
  loc_1407771:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1407789:             var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&HF))) 'Single
  loc_1407798:             Me.DGArea.Top = CVar(var_8C.Left)
  loc_14077F8:             Set var_88 = Me.Txt
  loc_14077FE:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_140781E:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1407821:               Exit Sub
  loc_1407822:             End If
  loc_140782F:             Set var_88 = Me.Txt
  loc_1407835:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_140783D:             var_A0 = var_8C.Text
  loc_140784F:             var_B0 = "AreaName"
  loc_140788A:             If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1407893:               Me.MoveFirst
  loc_14078B6:               Set var_88 = Me.Txt
  loc_14078BC:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "AreaName ='")
  loc_14078C4:               0 = var_8C.Text
  loc_14078DD:               Me.Find 1 & var_A0 & "'", var_B0, 
  loc_14078F2:             End If
  loc_14078F5:           Else
  loc_14078FD:             If (var_92 = CInt(&H11)) Then
  loc_140790D:               ReDim var_F0(0 To 4)
  loc_1407924:               var_F0(0) = "N/A"
  loc_1407933:               var_F0(1) = "Hindu"
  loc_1407942:               var_F0(2) = "Muslim"
  loc_1407951:               var_F0(3) = "Sikh"
  loc_1407960:               var_F0(4) = "Christian"
  loc_1407977:               global_136 = Array(var_F0)
  loc_14079BB:               Set global_152 = Proc_183_37_EFE3E8(Me.ListView, Me.Txt, CInt(&H11))
  loc_14079CC:             End If
  loc_14079CC:           End If
  loc_14079CC:         End If
  loc_14079CC:       End If
  loc_14079CC:     End If
  loc_14079CC:   End If
  loc_14079CC: End If
  loc_14079CC: Exit Sub
  loc_14079CD: ' Referenced from: 1406FB4
  loc_14079D3: Call 0.Method_arg_50 (var_A0, global_136)
  loc_14079E8: Proc_183_57_104AA84(var_A0, "Txt_GotFocus")
  loc_14079F4: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11FD044
  'Data Table: 52BB24
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_AC As TextBox
  Dim var_B8 As TextBox
  loc_11FCBC8: On Error Goto loc_11FD019
  loc_11FCBD5: If (CLng(Shift) = &H1B) Then
  loc_11FCBD8:   Call Proc_184_51_F6BE3C()
  loc_11FCBDD:   Exit Sub
  loc_11FCBDE: End If
  loc_11FCBE1: var_86 = KeyCode
  loc_11FCBEC: If (var_86 = CInt(1)) Then
  loc_11FCC25:   Proc_183_31_100809C(Me.DGAcName, Me.Txt, KeyCode, global_104)
  loc_11FCC38: Else
  loc_11FCC40:   If (var_86 = CInt(3)) Then
  loc_11FCC79:     Proc_183_34_1305540(Me.DGUnderAc, Me.Txt, KeyCode, global_116, Shift, 0)
  loc_11FCC8C:   Else
  loc_11FCC94:     If (var_86 = CInt(2)) Then
  loc_11FCCA2:       Set var_9C = Me.Txt
  loc_11FCCBE:       Set var_90 = var_9C
  loc_11FCCCD:       Proc_183_34_1305540(Me.DGTDSCat, var_90, KeyCode, global_128, Shift, 0)
  loc_11FCCE0:     Else
  loc_11FCCE8:       If (var_86 = CInt(4)) Then
  loc_11FCD0D:         Set var_8C = Me.Txt
  loc_11FCD13:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A0, 1, 1)
  loc_11FCD1B:         Shift = var_90.Left
  loc_11FCD2D:         Set var_98 = Me.Txt
  loc_11FCD33:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A4)
  loc_11FCD3B:         0 = var_9C.Top
  loc_11FCD4D:         Set var_A8 = Me.Txt
  loc_11FCD53:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_11FCD5B:         1 = var_AC.Height
  loc_11FCD6D:         Set var_B4 = Me.Txt
  loc_11FCD73:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_11FCD7B:         var_BC = var_B8.Width
  loc_11FCDC3:         Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11FCDEA:       Else
  loc_11FCDF2:         If (var_86 = CInt(9)) Then
  loc_11FCE2B:           Proc_183_34_1305540(Me.DGCity, Me.Txt, KeyCode, global_120, Shift, 0)
  loc_11FCE3E:         Else
  loc_11FCE46:           If (var_86 = CInt(&HA)) Then
  loc_11FCE54:             Set var_9C = Me.Txt
  loc_11FCE70:             Set var_90 = var_9C
  loc_11FCE7F:             Proc_183_34_1305540(Me.DGArea, var_90, KeyCode, global_124, Shift, 0, 1)
  loc_11FCE92:           Else
  loc_11FCE9A:             If (var_86 = CInt(&H11)) Then
  loc_11FCEBF:               Set var_8C = Me.Txt
  loc_11FCEC5:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A0, 1, CInt(var_A0))
  loc_11FCECD:               CInt((var_A4 + var_B0)) = var_90.Left
  loc_11FCEDF:               Set var_98 = Me.Txt
  loc_11FCEE5:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A4)
  loc_11FCEED:               CInt(var_BC) = var_9C.Top
  loc_11FCEFF:               Set var_A8 = Me.Txt
  loc_11FCF05:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_11FCF0D:               1200 = var_AC.Height
  loc_11FCF1F:               Set var_B4 = Me.Txt
  loc_11FCF25:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_11FCF2D:               var_BC = var_B8.Width
  loc_11FCF75:               Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11FCFAE:               If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11FCFE8:                 If (MsgBox("Save Record ?", 4, "Save Data", var_138, var_158) = 6) Then
  loc_11FCFEB:                   Call TopCtrl1_UnknownEvent_16()
  loc_11FCFF3:                 Else
  loc_11FCFFD:                   Set var_8C = Me.Txt
  loc_11FD003:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, CInt(var_A0), CInt((var_A4 + var_B0)))
  loc_11FD00B:                   var_90.SetFocus
  loc_11FD017:                   Exit Sub
  loc_11FD018:                 End If
  loc_11FD018:               End If
  loc_11FD018:             End If
  loc_11FD018:           End If
  loc_11FD018:         End If
  loc_11FD018:       End If
  loc_11FD018:     End If
  loc_11FD018:   End If
  loc_11FD018: End If
  loc_11FD018: Exit Sub
  loc_11FD019: ' Referenced from: 11FCBC8
  loc_11FD01F: Call 0.Method_arg_50 (var_15C, CInt(var_BC))
  loc_11FD034: Proc_183_57_104AA84(var_15C, "Txt_KeyDown")
  loc_11FD040: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11272E4
  'Data Table: 52BB24
  Dim arg_10 As Integer
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_1126F74: On Error Goto loc_11272BB
  loc_1126F7D: If (arg_10 = &H27) Then
  loc_1126F82:   arg_10 = 0
  loc_1126F85:   Exit Sub
  loc_1126F86: End If
  loc_1126F89: var_86 = KeyAscii
  loc_1126F94: If (var_86 = CInt(3)) Then
  loc_1126FB3:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_1126FC5:     var_A0 = "Name"
  loc_1126FE0:     Proc_183_41_1459C78(Me.Txt, KeyAscii, global_116, arg_10)
  loc_1126FEF:   End If
  loc_1126FF2: Else
  loc_1126FFA:   If (var_86 = CInt(9)) Then
  loc_1127019:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_1127046:       Proc_183_41_1459C78(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_1127055:     End If
  loc_1127058:   Else
  loc_1127060:     If (var_86 = CInt(&HA)) Then
  loc_112707F:       If (CBool(Me.DGArea.Visible) = &HFF) Then
  loc_11270AC:         Proc_183_41_1459C78(Me.Txt, KeyAscii, global_124, arg_10, "AreaName", 0)
  loc_11270BB:       End If
  loc_11270BE:     Else
  loc_11270C6:       If (var_86 = CInt(2)) Then
  loc_11270D3:         var_9C = Me.DGTDSCat.Visible
  loc_11270E5:         If (CBool(var_9C) = &HFF) Then
  loc_11270EC:           Set var_A8 = Me.Txt
  loc_11270F7:           var_A0 = "Name"
  loc_1127112:           Proc_183_41_1459C78(var_A8, KeyAscii, global_128, arg_10, var_A0, 0)
  loc_1127121:         End If
  loc_1127124:       Else
  loc_112712C:         If (var_86 = CInt(&HF)) Then
  loc_112713A:           Set var_8C = Me.Txt
  loc_1127140:           Call 0.Method_Txt_KeyPress0 (CInt(&HF), var_A8, 0, var_A0)
  loc_112715B:           Proc_183_22_129AEBC(var_A8, arg_10, 9, 2)
  loc_112716A:         Else
  loc_1127172:           If (var_86 = CInt(&H10)) Then
  loc_1127180:             Set var_8C = Me.Txt
  loc_1127186:             Call 0.Method_Txt_KeyPress0 (CInt(&H10), var_A8, 0)
  loc_11271A1:             Proc_183_22_129AEBC(var_A8, arg_10, 3)
  loc_11271B0:           Else
  loc_11271B8:             If (var_86 = CInt(&H18)) Then
  loc_11271D6:               If ((((arg_10 = &H59) Or (arg_10 = &H79)) Or (arg_10 = &H4E)) Or (arg_10 = &H6E)) Then
  loc_11271E6:                 If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_11271F6:                   Set var_8C = Me.Txt
  loc_11271FC:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_1127204:                   var_A8.Text = 0
  loc_1127212:                   arg_10 = 0
  loc_1127218:                 Else
  loc_1127225:                   If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_1127235:                     Set var_8C = Me.Txt
  loc_112723B:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_1127243:                     var_A8.Text = arg_10
  loc_1127251:                     arg_10 = 0
  loc_1127254:                   End If
  loc_1127254:                 End If
  loc_1127257:               Else
  loc_1127259:                 arg_10 = 0
  loc_112725C:               End If
  loc_112725F:             Else
  loc_1127267:               If (var_86 = CInt(&H1F)) Then
  loc_1127270:                 Proc_6_133_E7EF78(var_9C, arg_10, arg_10)
  loc_11272AF:                 If (((((CInt(var_9C) >= &H41) And (CInt(var_9C) <= &H5A)) Or ((CInt(var_9C) >= &H61) And (CInt(var_9C) <= &H7A))) Or ((CInt(var_9C) >= &H30) And (CInt(var_9C) <= &H39))) Or (CInt(var_9C) = 8)) Then
  loc_11272B2:                   GoTo loc_11272BA
  loc_11272B5:                 End If
  loc_11272B7:                 arg_10 = 0
  loc_11272BA:                 ' Referenced from:               11272B2
  loc_11272BA:               End If
  loc_11272BA:             End If
  loc_11272BA:           End If
  loc_11272BA:         End If
  loc_11272BA:       End If
  loc_11272BA:     End If
  loc_11272BA:   End If
  loc_11272BA: End If
  loc_11272BA: Exit Sub
  loc_11272BB: ' Referenced from: 1126F74
  loc_11272C1: Call 0.Method_arg_50 (var_A0, arg_10, arg_10)
  loc_11272D6: Proc_183_57_104AA84(var_A0, "TXT_KeyPress", arg_10)
  loc_11272E2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F302EC
  'Data Table: 52BB24
  Dim var_86 As Integer
  loc_F301E8: On Error Goto loc_F302C3
  loc_F301EE: var_86 = KeyCode
  loc_F301F9: If (var_86 = CInt(1)) Then
  loc_F30218:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F30225:     var_A0 = "Name"
  loc_F30240:     Proc_183_32_FE7F70(Me.Txt, KeyCode, global_104)
  loc_F3024F:   End If
  loc_F30252: Else
  loc_F3025A:   If Not (var_86 = CInt(4)) Then
  loc_F30265:     If (var_86 = CInt(&H11)) Then
  loc_F30268:     End If
  loc_F30283:     If (Me.FrmList.Visible = &HFF) Then
  loc_F302B2:       Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F302C2:     End If
  loc_F302C2:   End If
  loc_F302C2: End If
  loc_F302C2: Exit Sub
  loc_F302C3: ' Referenced from: F301E8
  loc_F302C9: Call 0.Method_arg_50 (var_A0, global_152, Shift)
  loc_F302DE: Proc_183_57_104AA84(var_A0, "Txt_KeyUp")
  loc_F302EA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4876C
  'Data Table: 52BB24
  loc_E4874A: Set var_88 = Me.Txt
  loc_E48750: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4875E: Proc_183_27_E22608(var_8C)
  loc_E4876A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1562848
  'Data Table: 52BB24
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_52BB44 As Connection15
  Dim var_A4 As Variant
  Dim var_A0 As String
  Dim var_88 As Recordset15
  Dim arg_10 As Integer
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_D0 As Variant
  Dim var_9A As Integer
  Dim var_134 As Variant
  loc_15617D4: On Error Goto loc_156281F
  loc_15617DA: var_8E = Cancel
  loc_15617E5: If (var_8E = CInt(0)) Then
  loc_15617F6:   Set var_94 = Me.Txt
  loc_15617FC:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1561816:   If (var_98.Visible = &HFF) Then
  loc_1561827:     Set var_94 = Me.Txt
  loc_156182D:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_156184C:     If (var_98.Text = vbNullString) Then
  loc_156185D:       Set var_94 = Me.Txt
  loc_1561863:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_156186B:       var_A0 = var_98.Tag
  loc_156187E:       Set var_A4 = Me.Txt
  loc_1561884:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_156188C:       var_A8.Text = var_A0
  loc_15618AA:       Set var_94 = Me.Txt
  loc_15618B0:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15618B8:       var_98.SetFocus
  loc_15618C4:       Exit Sub
  loc_15618C5:     End If
  loc_15618E6:     Set var_94 = Me.Txt
  loc_15618EC:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select AcCode From SubGroup Where AcCode='", var_D0)
  loc_15618F4:     -1 = var_98.Text
  loc_156190D:     unk_52BB44.Execute var_A4 & var_A0 & "'", var_D4, var_8E
  loc_1561915:      = var_A4.RecordCount
  loc_1561938:     If (var_D4 > 0) Then
  loc_156195C:       MsgBox("A/c Code Already Exists", &H40, "Validation", var_114, var_134)
  loc_156197A:       Set var_94 = Me.Txt
  loc_1561980:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_156199B:       Set var_A4 = Me.Txt
  loc_15619A1:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_15619A9:       var_A8.Text = var_98.Tag
  loc_15619C7:       Set var_94 = Me.Txt
  loc_15619CD:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_15619D5:       var_98.SetFocus
  loc_15619E1:       Exit Sub
  loc_15619E2:     End If
  loc_15619E2:   End If
  loc_15619E5: Else
  loc_15619ED:   If (var_8E = CInt(1)) Then
  loc_15619FD:     Set var_94 = Me.Txt
  loc_1561A03:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1561A22:     If (var_98.Text = vbNullString) Then
  loc_1561A25:       Exit Sub
  loc_1561A26:     End If
  loc_1561A2A:     Set var_94 = Me.TopCtrl1
  loc_1561A30:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_1561A38:     var_A0 = CStr()
  loc_1561A49:     If (var_A0 = "Add") Then
  loc_1561A6A:       Set var_94 = Me.Txt
  loc_1561A70:       Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1561A78:       var_D0 = var_98.Text
  loc_1561A89:       var_B0 = Proc_183_20_FB3974(var_A0, -1)
  loc_1561A9D:       unk_52BB44.Execute var_A4 & var_A4 & var_A0 & "'" & "'", , 
  loc_1561AD6:       If (var_A4.RecordCount > 0) Then
  loc_1561AFA:         MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_114, var_134)
  loc_1561B15:         Set var_94 = Me.Txt
  loc_1561B1B:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1561B23:         var_98.SetFocus
  loc_1561B31:         arg_10 = &HFF
  loc_1561B34:         Exit Sub
  loc_1561B35:       End If
  loc_1561B38:     Else
  loc_1561B3C:       Set var_94 = Me.TopCtrl1
  loc_1561B42:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1561B4A:       var_A0 = CStr(var_98)
  loc_1561B5B:       If (var_A0 = "Edit") Then
  loc_1561B7C:         Set var_94 = Me.Txt
  loc_1561B82:         Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1561B8A:         var_D0 = var_98.Text
  loc_1561B9B:         var_B0 = Proc_183_20_FB3974(var_A0, -1)
  loc_1561BC0:         unk_52BB44.Execute var_A4 & var_A4 & var_A0 & "'" & "' and Name<>'" & global_76 & "'", , 
  loc_1561BFD:         If (var_A4.RecordCount > 0) Then
  loc_1561C21:           MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_114, var_134)
  loc_1561C42:           Set var_94 = Me.Txt
  loc_1561C48:           Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1561C50:           var_98.Text = global_76
  loc_1561C67:           Set var_94 = Me.Txt
  loc_1561C6D:           Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1561C75:           var_98.SetFocus
  loc_1561C83:           arg_10 = &HFF
  loc_1561C86:           Exit Sub
  loc_1561C87:         End If
  loc_1561C87:       End If
  loc_1561C87:     End If
  loc_1561C8A:   Else
  loc_1561C92:     If (var_8E = CInt(3)) Then
  loc_1561CA2:       Set var_94 = Me.Txt
  loc_1561CA8:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1561CB0:       arg_10 = var_98.Text
  loc_1561CC7:       If (var_A0 = vbNullString) Then
  loc_1561CCA:         Exit Sub
  loc_1561CCB:       End If
  loc_1561D19:       Set var_94 = Me.Txt
  loc_1561D1F:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_1561D27:       ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_98.Text
  loc_1561D3F:       If (var_98 Or (var_A0 <> vbNullString)) Then
  loc_1561D81:         var_F4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value 
  loc_1561D98:         unk_52BB44.Execute CStr(var_F4 & "'"), var_134, -1
  loc_1561DA3:         Set var_88 = var_A4
  loc_1561DD1:         If (var_88.RecordCount > 0) Then
  loc_1561DE5:           Call Proc_184_56_F7AD40(CByte(1), CByte(1))
  loc_1561E12:           var_9A = IsNull(CVar(var_88.Fields.Item("Nature")))
  loc_1561E63:           Me.LblNature.Caption = CStr(IIf(var_9A, vbNullString, CVar(var_88.Fields.Item("Nature"))))
  loc_1561E9B:           var_98 = var_88.Fields.Item("Nature")
  loc_1561EBD:           If (var_98.Value = "Bank") Then
  loc_1561ECC:             Me.FrBankDetail.Visible = True
  loc_1561ED7:           Else
  loc_1561EE5:             Set var_94 = Me.Txt
  loc_1561EEB:             Call 0.Method_Txt_Validate0 (CInt(&H1E), var_98, vbNullString)
  loc_1561EF3:             var_98.Text = var_9A
  loc_1561F0B:             Me.FrBankDetail.Visible = False
  loc_1561F13:           End If
  loc_1561F61:           var_A8 = var_88.Fields.Item("GroupNature")
  loc_1561F69:           var_114 = var_A8.Value
  loc_1561F93:           If CBool((var_88.Fields.Item("GroupNature").Value = "A") Or (var_114 = "L")) Then
  loc_1561F9D:             global_96 = CByte(1)
  loc_1561FA4:           Else
  loc_1561FAB:             global_96 = CByte(0)
  loc_1561FAF:           End If
  loc_1561FB5:           Call Proc_184_56_F7AD40(global_96, global_96)
  loc_1561FBA:           ' Referenced from:     15620D3
  loc_1561FC9:           If Not(var_88.EOF) Then
  loc_1562008:             If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_1562048:               Set var_A4 = Me.Txt
  loc_156204E:               Call 0.Method_Txt_Validate0 (CInt(3), var_A8, CStr(Trim(CVar(var_88.Fields.Item("GroupName")))))
  loc_1562056:               var_A8.Text = global_96
  loc_1562088:               var_98 = var_88.Fields.Item("GroupCode")
  loc_15620A7:               Set var_A4 = Me.Txt
  loc_15620AD:               Call 0.Method_Txt_Validate0 (CInt(3), var_A8)
  loc_15620B5:               var_A8.Tag = CStr(var_98.Value)
  loc_15620CB:             End If
  loc_15620CE:             var_88.MoveNext
  loc_15620D3:             GoTo loc_1561FBA
  loc_15620D6:           End If
  loc_15620D6:         End If
  loc_15620D6:       End If
  loc_15620D9:     Else
  loc_15620E1:       If Not (var_8E = CInt(4)) Then
  loc_15620EC:         If (var_8E = CInt(&H11)) Then
  loc_15620EF:         End If
  loc_15620FC:         Set var_94 = Me.Txt
  loc_1562102:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562121:         If (var_98.Text <> vbNullString) Then
  loc_156213C:           Set var_98 = Me.ListView.SelectedItem
  loc_1562154:           Set var_A4 = Me.Txt
  loc_156215A:           Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1562162:           var_A8.Text = var_98.Text
  loc_1562178:         End If
  loc_156217B:       Else
  loc_1562183:         If (var_8E = CInt(9)) Then
  loc_15621C7:           If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_15621D7:             Set var_94 = Me.Txt
  loc_15621DD:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15621FC:             If (var_98.Text <> vbNullString) Then
  loc_156223A:               Set var_A4 = Me.Txt
  loc_1562240:               Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1562248:               var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_156227B:               var_98 = Me.Fields.Item("Code")
  loc_1562299:               Set var_A4 = Me.Txt
  loc_156229F:               Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15622A7:               var_A8.Tag = CStr(var_98.Value)
  loc_15622C0:             Else
  loc_15622CD:               Set var_94 = Me.Txt
  loc_15622D3:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15622DB:               var_98.Text = vbNullString
  loc_15622F4:               Set var_94 = Me.Txt
  loc_15622FA:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562302:               var_98.Tag = vbNullString
  loc_156230E:             End If
  loc_156230E:           End If
  loc_1562311:         Else
  loc_1562319:           If (var_8E = CInt(&HA)) Then
  loc_156235D:             If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_156236D:               Set var_94 = Me.Txt
  loc_1562373:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562392:               If (var_98.Text <> vbNullString) Then
  loc_15623D0:                 Set var_A4 = Me.Txt
  loc_15623D6:                 Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15623DE:                 var_A8.Text = CStr(Me.Fields.Item("AreaName").Value)
  loc_1562411:                 var_98 = Me.Fields.Item("AREACode")
  loc_156242F:                 Set var_A4 = Me.Txt
  loc_1562435:                 Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_156243D:                 var_A8.Tag = CStr(var_98.Value)
  loc_1562456:               Else
  loc_1562463:                 Set var_94 = Me.Txt
  loc_1562469:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562471:                 var_98.Text = vbNullString
  loc_156248A:                 Set var_94 = Me.Txt
  loc_1562490:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562498:                 var_98.Tag = vbNullString
  loc_15624A4:               End If
  loc_15624A4:             End If
  loc_15624A7:           Else
  loc_15624AF:             If (var_8E = CInt(2)) Then
  loc_15624F3:               If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_1562503:                 Set var_94 = Me.Txt
  loc_1562509:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562528:                 If (var_98.Text <> vbNullString) Then
  loc_1562566:                   Set var_A4 = Me.Txt
  loc_156256C:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1562574:                   var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15625A7:                   var_98 = Me.Fields.Item("Code")
  loc_15625C5:                   Set var_A4 = Me.Txt
  loc_15625CB:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15625D3:                   var_A8.Tag = CStr(var_98.Value)
  loc_15625EC:                 Else
  loc_15625F9:                   Set var_94 = Me.Txt
  loc_15625FF:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562607:                   var_98.Text = vbNullString
  loc_1562620:                   Set var_94 = Me.Txt
  loc_1562626:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_156262E:                   var_98.Tag = vbNullString
  loc_156263A:                 End If
  loc_156263A:               End If
  loc_156263D:             Else
  loc_1562645:               If (var_8E = CInt(&HE)) Then
  loc_1562656:                 Set var_94 = Me.Txt
  loc_156265C:                 Call 0.Method_Txt_Validate0 (CInt(&HE), var_98)
  loc_156267B:                 If (var_98.Text <> vbNullString) Then
  loc_156268E:                   Set var_94 = Me.Txt
  loc_1562694:                   Call 0.Method_Txt_Validate0 (CInt(&HE), var_98)
  loc_15626AA:                   var_F4 = InStr(1, CVar(var_98), "@", 0)
  loc_15626CE:                   Call 0.Method_Txt_Validate0 (CInt(&HE), var_A8, 1)
  loc_15626D6:                   var_134 = CVar(var_A8) 'Address
  loc_156270A:                   If CBool(Me.Txt Or (InStr((var_F4 = 0), var_134, ".", 0) = 0)) Then
  loc_1562726:                     MsgBox("Please fill a Valid EMail Id.", 0, var_F4, var_114, var_134)
  loc_1562738:                     arg_10 = &HFF
  loc_156273B:                     Exit Sub
  loc_156273C:                   End If
  loc_1562746:                   Set var_94 = Me.Txt
  loc_156274C:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562771:                   Set var_A4 = Me.Txt
  loc_1562777:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_156277F:                   var_A8.Text = CStr(LCase(CVar(var_98)))
  loc_1562797:                 End If
  loc_156279A:               Else
  loc_15627A2:                 If (var_8E = CInt(&H1F)) Then
  loc_15627B3:                   Set var_94 = Me.Txt
  loc_15627B9:                   Call 0.Method_Txt_Validate0 (CInt(&H1F), var_98)
  loc_15627C1:                   var_A0 = var_98.Text
  loc_15627E3:                   var_AC = Replace(var_A0, " ", vbNullString, 1, -1, 0)
  loc_15627F1:                   Set var_A4 = Me.Txt
  loc_15627F7:                   Call 0.Method_Txt_Validate0 (CInt(&H1F), var_A8)
  loc_15627FF:                   var_A8.Text = var_A4 & var_A0
  loc_1562816:                 End If
  loc_1562816:               End If
  loc_1562816:             End If
  loc_1562816:           End If
  loc_1562816:         End If
  loc_1562816:       End If
  loc_1562816:     End If
  loc_1562816:   End If
  loc_1562816: End If
  loc_156281B: Set var_88 = Nothing
  loc_156281E: Exit Sub
  loc_156281F: ' Referenced from: 15617D4
  loc_1562825: Call 0.Method_arg_50 (var_A0)
  loc_156283A: Proc_183_57_104AA84(var_A0, "Txt_Validate")
  loc_1562846: Exit Sub
End Sub

Private Sub Form_Load() '12754F4
  'Data Table: 52BB24
  Dim var_8C As Variant
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As String
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim unk_52BB44 As Connection15
  loc_1274F40: On Error Goto loc_12754CA
  loc_1274F52: Me.LblUser.Left = CDbl(13500)
  loc_1274F69: Me.LblUser.Top = CDbl(7800)
  loc_1274F80: Me.LblLDt.Top = CDbl(8160)
  loc_1274F97: Me.LblLDt.Left = CDbl(13500)
  loc_1274FA6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1274FBE: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1274FD4: Me.FrBankDetail.BackColor = CLng(MemVar_1F921B0)
  loc_1274FE9: Set var_8C = Me.Frame2
  loc_1274FEF: Call 0.Method_Form_Load0 (1, var_B0)
  loc_1274FF7: var_B0.BackColor = CLng(MemVar_1F921B0)
  loc_1275010: Set var_8C = Me.Frame2
  loc_1275016: Call 0.Method_Form_Load0 (0, var_B0)
  loc_127501E: var_B0.BackColor = CLng(MemVar_1F921B0)
  loc_1275037: Set var_8C = Me.Opt3
  loc_127503D: Call 0.Method_Form_Load0 (2, var_B0)
  loc_1275045: var_B0.BackColor = CLng(MemVar_1F921B0)
  loc_127505E: Set var_8C = Me.Opt3
  loc_1275064: Call 0.Method_Form_Load0 (3, var_B0)
  loc_127506C: var_B0.BackColor = CLng(MemVar_1F921B0)
  loc_1275082: Set var_8C = Me.TopCtrl1
  loc_1275088: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1275096: Call 0.Method_arg_50 (var_B4)
  loc_12750A6: Set var_8C = Me.TopCtrl1
  loc_12750AC: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B4))
  loc_12750C3: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_12750D4: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_12750E5: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_12750F6: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_1275107: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_1275118: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_1275129: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_127513A: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_127514B: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_127515C: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_1275176: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_1275184: Set var_8C = MemVar_1F92044
  loc_1275193: Call 0.Method_Form_Load8 (var_8C)
  loc_12751A9: Me.TopCtrl1.Clone
  loc_12751B4: Set var_B0 = var_8C
  loc_12751C3: Call 0.Method_arg_50 (var_B0, -1)
  loc_12751D6: global_96 = CByte(1)
  loc_12751E4: Set global_104 = New 
  loc_12751F6: Me.Recordset15.CursorLocation = 3
  loc_1275220: var_C4 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_127522A: Me.Open var_C4, CVar(MemVar_1F921DC), 2
  loc_127523E: CVarUnk
  loc_1275243: VerifyVarObj
  loc_1275249: Set var_8C = Me.DGAcName
  loc_127524F: LateIdStAd
  loc_1275279: Me.DGAcName.CursorLocation = 3
  loc_127529C: var_B4 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_12752AD: Me.Open CVar(var_B4 & "' OR LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F921DC), 2
  loc_12752C1: CVarUnk
  loc_12752C6: VerifyVarObj
  loc_12752CC: Set var_8C = Me.DGUnderAc
  loc_12752D2: LateIdStAd
  loc_12752FC: Me.DGUnderAc.CursorLocation = 3
  loc_1275326: var_C4 = CVar("Select CityCode As Code,CityName As Name,CityHelp From City WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by CityName") 'String
  loc_1275344: CVarUnk
  loc_1275349: VerifyVarObj
  loc_127534F: Set var_8C = Me.DGCity
  loc_1275355: LateIdStAd
  loc_127537F: Me.DGCity.CursorLocation = 3
  loc_12753A9: var_C4 = CVar("Select Code,Name From TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_12753B3: r_C4, CVar(MemVar_1F921DC), 2 var_C4, CVar(MemVar_1F921DC), 2
  loc_12753C7: CVarUnk
  loc_12753CC: VerifyVarObj
  loc_12753D2: Set var_8C = Me.DGTDSCat
  loc_12753D8: LateIdStAd
  loc_12753F0: Set global_112 = New 
  loc_1275402: Me.DGTDSCat.LockType = 3
  loc_1275412: Me.CursorLocation = 3
  loc_1275422: Me.CursorType = 2
  loc_1275442: var_C8 = "Select SubCode As SearchCode,SubCode,Site_Code,Name,LOGSITE_CODE From SubGroup Where (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') order by Name"
  loc_127544B: unk_52BB44.Execute var_C8, var_C4, -1
  loc_1275471: Call Proc_184_58_18BF9D8(var_8C, var_8C, New, 3, -1, var_8C)
  loc_127548B: var_B4 = "INI"
  loc_1275499: Call Proc_184_49_E897FC(Proc_5_1_100CB50(var_B4, Me, Me, New, 3), -1, Me)
  loc_12754AF: Set var_8C = Me.Frame2
  loc_12754B5: Call 0.Method_Form_Load0 (1, var_B0, 0)
  loc_12754BD: var_B0.Visible = New
  loc_12754C9: Exit Sub
  loc_12754CA: ' Referenced from: 1274F40
  loc_12754D0: Call 0.Method_arg_50 (var_B4)
  loc_12754E5: Proc_183_57_104AA84(var_B4, "Form_Load")
  loc_12754F1: Exit Sub
End Sub

Private Sub Form_Resize() '11A0E88
  'Data Table: 52BB24
  Dim var_8C As Label
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  Dim var_C8 As Variant
  Dim var_DC As TextBox
  loc_11A0A76: Call 0.Method_arg_50 (var_88)
  loc_11A0A88: Me.LblFormCaption.Caption = var_88
  loc_11A0AA1: Me.LblFormCaption.Left = CDbl(0)
  loc_11A0AAD: Set var_A0 = Me.TopCtrl1
  loc_11A0AB3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_11A0AC0: Set var_8C = Me.TopCtrl1
  loc_11A0AC6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_11A0AE0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_11A0AFB: Call 0.Method_arg_100 (var_B8)
  loc_11A0B0D: Me.LblFormCaption.Width = var_B8
  loc_11A0B15: Call Proc_184_52_10C9BFC()
  loc_11A0B28: Set var_8C = Me.Txt
  loc_11A0B2E: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_11A0B4D: Me.DGAcName.Left = CVar(var_A0.Left)
  loc_11A0B69: Set var_B4 = Me.Txt
  loc_11A0B6F: Call 0.Method_Form_Resize0 (CInt(1), var_DC)
  loc_11A0B8A: Set var_8C = Me.Txt
  loc_11A0B90: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_11A0BA8: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A0BB7: Me.DGAcName.Top = CVar(var_A0.Left)
  loc_11A0BD7: Set var_8C = Me.Txt
  loc_11A0BDD: Call 0.Method_Form_Resize0 (CInt(3), var_A0)
  loc_11A0BFC: Me.DGUnderAc.Left = CVar(var_A0.Left)
  loc_11A0C18: Set var_B4 = Me.Txt
  loc_11A0C1E: Call 0.Method_Form_Resize0 (CInt(3), var_DC)
  loc_11A0C39: Set var_8C = Me.Txt
  loc_11A0C3F: Call 0.Method_Form_Resize0 (CInt(3), var_A0)
  loc_11A0C57: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A0C66: Me.DGUnderAc.Top = CVar(var_A0.Left)
  loc_11A0C86: Set var_8C = Me.Txt
  loc_11A0C8C: Call 0.Method_Form_Resize0 (CInt(9), var_A0)
  loc_11A0CAB: Me.DGCity.Left = CVar(var_A0.Left)
  loc_11A0CC7: Set var_B4 = Me.Txt
  loc_11A0CCD: Call 0.Method_Form_Resize0 (CInt(9), var_DC)
  loc_11A0CE8: Set var_8C = Me.Txt
  loc_11A0CEE: Call 0.Method_Form_Resize0 (CInt(9), var_A0)
  loc_11A0D06: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A0D15: Me.DGCity.Top = CVar(var_A0.Left)
  loc_11A0D35: Set var_8C = Me.Txt
  loc_11A0D3B: Call 0.Method_Form_Resize0 (CInt(&HA), var_A0)
  loc_11A0D5A: Me.DGArea.Left = CVar(var_A0.Left)
  loc_11A0D76: Set var_B4 = Me.Txt
  loc_11A0D7C: Call 0.Method_Form_Resize0 (CInt(&HA), var_DC)
  loc_11A0D97: Set var_8C = Me.Txt
  loc_11A0D9D: Call 0.Method_Form_Resize0 (CInt(&HA), var_A0)
  loc_11A0DB5: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A0DC4: Me.DGArea.Top = CVar(var_A0.Left)
  loc_11A0DE4: Set var_8C = Me.Txt
  loc_11A0DEA: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_11A0E09: Me.DGTDSCat.Left = CVar(var_A0.Left)
  loc_11A0E25: Set var_B4 = Me.Txt
  loc_11A0E2B: Call 0.Method_Form_Resize0 (CInt(2), var_DC)
  loc_11A0E46: Set var_8C = Me.Txt
  loc_11A0E4C: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_11A0E64: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A0E73: Me.DGTDSCat.Top = CVar(var_A0.Left)
  loc_11A0E85: Exit Sub
  loc_11A0E86: () = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8FBCC
  'Data Table: 52BB24
  loc_E8FB57: Set global_112 = Nothing
  loc_E8FB69: Set global_104 = Nothing
  loc_E8FB7B: Set global_108 = Nothing
  loc_E8FB8D: Set global_116 = Nothing
  loc_E8FB9F: Set global_120 = Nothing
  loc_E8FBB1: Set global_128 = Nothing
  loc_E8FBC3: Set global_156 = Nothing
  loc_E8FBCA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '105519C
  'Data Table: 52BB24
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A0 As DataGrid
  loc_1054F50: On Error Goto loc_1055172
  loc_1054F56: var_86 = KeyCode
  loc_1054F63: If Not (var_86 = CInt(&HD)) Then
  loc_1054F70:   If Not (var_86 = CInt(&H28)) Then
  loc_1054F7D:     If (var_86 = CInt(&H26)) Then
  loc_1054F80:     End If
  loc_1054F80:   End If
  loc_1054F83:   var_88 = KeyCode
  loc_1054F90:   If Not (var_88 = CInt(&H28)) Then
  loc_1054F9D:     If (var_88 = CInt(&H26)) Then
  loc_1054FA0:     End If
  loc_1054FA4:     Set var_8C = Me.DGAcName
  loc_1054FBA:     Set var_A0 = Me.DGUnderAc
  loc_1054FF1:     var_CA = Me.FrmList.Visible
  loc_105502C:     If (((((CBool(var_8C.Visible) = &HFF) Or (CBool(var_A0.Visible) = &HFF)) Or (CBool(Me.DGCity.Visible) = &HFF)) Or (var_CA = &HFF)) Or (CBool(Me.DGArea.Visible) = &HFF)) Then
  loc_105502F:       Exit Sub
  loc_1055030:     End If
  loc_1055030:   End If
  loc_1055036:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_1055045:   If TypeOf var_8C Is arg_2 Then
  loc_105504E:     Call 0.Method_arg_1E8 (var_8C)
  loc_1055069:     Call Txt_Validate(CInt(var_8C.index))
  loc_1055074:   End If
  loc_1055080:   Set var_8C = Me 
  loc_1055090:   Call 0.Method_arg_58 (var_8C, KeyCode, Shift, var_CA)
  loc_105509E:   If (var_CA = &HFF) Then
  loc_10550A7:     Call 0.Method_arg_1E8 (var_8C, 0)
  loc_10550AF:     var_9C = var_8C.Name
  loc_10550CF:     Call 0.Method_arg_1E8 (var_A0, (Ucase(var_9C) = "TXTGRID"))
  loc_1055109:     If CBool(var_9C Or (Ucase(var_A0.Name) = "FGRID")) Then
  loc_1055116:       If (CLng(KeyCode) = &H28) Then
  loc_105511F:         Call 0.Method_arg_1E8 (var_8C)
  loc_105512D:         Call Proc_184_63_E74820(var_8C)
  loc_1055135:       End If
  loc_1055138:     Else
  loc_105513E:       Call 0.Method_arg_1E8 (var_8C)
  loc_105514C:       Call Proc_184_63_E74820(var_8C)
  loc_1055154:     End If
  loc_1055154:   End If
  loc_1055157: Else
  loc_1055169:   Proc_183_40_F30B0C(Me, KeyCode)
  loc_1055171: End If
  loc_1055171: Exit Sub
  loc_1055172: ' Referenced from: 1054F50
  loc_1055178: Call 0.Method_arg_50 (var_138, Shift)
  loc_105518D: Proc_183_57_104AA84(var_138, "Form_KeyDown")
  loc_1055199: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1A6AC
  'Data Table: 52BB24
  Dim KeyAscii As Integer
  loc_E1A6A0: If (KeyAscii = CInt(&HD)) Then
  loc_E1A6A5:   KeyAscii = 0
  loc_E1A6A8: End If
  loc_E1A6A8: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'FBB0D0
  'Data Table: 52BB24
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FBAF38: On Error Goto loc_FBB0A7
  loc_FBAF4A: Me.DGCity.Visible = False
  loc_FBAF69: If (Me.RecordCount > 0) Then
  loc_FBAFBB:   Set var_CC = Me.Txt
  loc_FBAFC1:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(Me.DGCity.Tag)), var_D0)
  loc_FBAFC9:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FBB021:   Set var_B4 = Me.DGCity
  loc_FBB038:   Set var_CC = Me.Txt
  loc_FBB03E:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FBB046:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FBB066: End If
  loc_FBB07B: var_C8 = CStr(Me.DGCity.Tag)
  loc_FBB084: Set var_B0 = Me.Txt
  loc_FBB08A: Call 0.Method_DGCity_UnknownEvent_90 (CInt(var_C8))
  loc_FBB092: var_B4.SetFocus
  loc_FBB0A6: Exit Sub
  loc_FBB0A7: ' Referenced from: FBAF38
  loc_FBB0AD: Call 0.Method_arg_50 (var_C8)
  loc_FBB0C2: Proc_183_57_104AA84(var_C8, "DGCity_Click")
  loc_FBB0CE: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'F8083C
  'Data Table: 52BB24
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F806F8: On Error Goto loc_F80812
  loc_F8070A: Me.DGUnderAc.Visible = False
  loc_F80729: If (Me.RecordCount > 0) Then
  loc_F80768:   Set var_B4 = Me.Txt
  loc_F8076E:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F80776:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F807A9:   var_B0 = Me.Fields.Item("Code")
  loc_F807BA:   var_CC = CStr(var_B0.Value)
  loc_F807C8:   Set var_B4 = Me.Txt
  loc_F807CE:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F807D6:   var_B8.Tag = var_CC
  loc_F807EC: End If
  loc_F807F7: Set var_A8 = Me.Txt
  loc_F807FD: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(3))
  loc_F80805: var_B0.SetFocus
  loc_F80811: Exit Sub
  loc_F80812: ' Referenced from: F806F8
  loc_F80818: Call 0.Method_arg_50 (var_CC)
  loc_F8082D: Proc_183_57_104AA84(var_CC, "DGUnderAc_Click")
  loc_F80839: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '1135884
  'Data Table: 52BB24
  Dim Me As Recordset15
  Dim var_AC As OptionButton
  Dim var_C4 As String
  Dim var_A8 As DataCombo
  Dim var_C0 As Variant
  Dim var_DC As Variant
  Dim var_11C As String
  Dim var_EC As String
  Dim var_17C As Variant
  Dim unk_52BB44 As Connection15
  Dim var_88 As Recordset15
  Dim var_AE As Integer
  loc_1135534: On Error Goto loc_113585A
  loc_113554E: If (Me.RecordCount <= 0) Then
  loc_1135551:   Exit Sub
  loc_1135552: End If
  loc_1135564: Set var_A8 = Me.Opt3
  loc_113556A: Call 0.Method_BTNPRINT_UnknownEvent_90 (3, var_AC)
  loc_1135584: If (var_AC.Value = &HFF) Then
  loc_1135595:   Set var_A8 = Me.DCGroup
  loc_11355AE:   var_A0 = vbNullString & " Where g.groupname='" & CStr(var_A8.Text) & "'"
  loc_11355C0: End If
  loc_11355CB: var_C0 = Trim(var_A0)
  loc_11355E1: var_11C = " WHERE "
  loc_11355E6: var_12C = var_11C
  loc_11355EF: var_EC = vbNullString
  loc_11355F9: var_10C = (var_C0 = var_EC) 'Variant
  loc_1135610: var_17C = (IIf(var_10C, var_12C, " AND ") + "(S.LOGSITE_CODE='")
  loc_1135658: var_C4 = "Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,Active=CASE ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' END,CreditLimit,CreditDays,Remark,GSTIN From (SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode " & CStr(CVar(var_A0) & var_17C & CVar(MemVar_1F92078) & "' OR S.LOGSITE_CODE='HO')")
  loc_1135661: unk_52BB44.Execute var_C4, var_C0, -1
  loc_113566C: Set var_88 = var_A8
  loc_113567E: var_A4 = var_88.RecordCount
  loc_113568C: If (var_A4 = 0) Then
  loc_11356A8:   MsgBox("No record Found to Print", 0, var_FC, var_10C, var_12C)
  loc_11356B8:   Exit Sub
  loc_11356B9: End If
  loc_11356CF: Set var_A8 = var_88 
  loc_11356DB: var_AE = CreateFieldDefFile(var_A8, MemVar_1F923B0 & "\FaPartyMast.ttx")
  loc_11356E5: Set var_88 = var_A8
  loc_11356EB: var_DC = CVar(var_AE) 'Integer
  loc_11356EE: var_98 = var_DC 'Variant
  loc_113570A: var_C4 = MemVar_1F923B0 & "\FaPartyMast.RPT"
  loc_1135713: Call 0.Method_arg_1C (var_C4, var_DC, var_A8)
  loc_113571E: MemVar_1F921E4 = var_A8
  loc_1135739: Call 0.Method_arg_90 (var_A8, var_A4, var_9A, 1)
  loc_1135741: Call 0.Method_arg_24 (var_AE, &HFF)
  loc_113574D: For var_1E0 =  To CInt(var_A4): var_A8 = var_1E0 'Integer
  loc_1135766:   Call 0.Method_arg_90 (var_A8, CLng(var_9A))
  loc_113576E:   Call 0.Method_arg_20 (var_AC)
  loc_1135776:   Call 0.Method_arg_30 (var_C4)
  loc_11357BC:   If (Ucase(CVar(var_C4)) = Ucase("Title")) Then
  loc_11357D2:     Call 0.Method_arg_90 (var_A8, CLng(var_9A))
  loc_11357DA:     Call 0.Method_arg_20 (var_AC)
  loc_11357E2:     Call 0.Method_arg_38 ("'Ledger A/C List'")
  loc_11357EE:   End If
  loc_11357F1: Next var_1E0 'Integer
  loc_113580F: Call 0.Method_arg_64 (var_A8, CVar(var_88))
  loc_1135817: Call 0.Method_arg_2C (var_EC)
  loc_1135825: Call 0.Method_arg_150 (var_11C)
  loc_1135830: Call 0.Method_arg_50 (var_C4)
  loc_1135849: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_1135856: Set var_88 = Nothing
  loc_1135859: Exit Sub
  loc_113585A: ' Referenced from: 1135534
  loc_1135860: Call 0.Method_arg_50 (var_C4, var_C4)
  loc_1135875: Proc_183_57_104AA84(var_C4, "BTNPRINT_Click")
  loc_1135881: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E3BD74
  'Data Table: 52BB24
  Dim var_8C As Frame
  loc_E3BD57: Set var_88 = Me.Frame2
  loc_E3BD5D: Call 0.Method_btnExit_UnknownEvent_90 (1, var_8C)
  loc_E3BD65: var_8C.Visible = False
  loc_E3BD71: Exit Sub
End Sub

Private Sub DGArea_UnknownEvent_9 'FB9F60
  'Data Table: 52BB24
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FB9DC8: On Error Goto loc_FB9F37
  loc_FB9DDA: Me.DGArea.Visible = False
  loc_FB9DF9: If (Me.RecordCount > 0) Then
  loc_FB9E4B:   Set var_CC = Me.Txt
  loc_FB9E51:   Call 0.Method_DGArea_UnknownEvent_90 (CInt(CStr(Me.DGArea.Tag)), var_D0)
  loc_FB9E59:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FB9EB1:   Set var_B4 = Me.DGArea
  loc_FB9EC8:   Set var_CC = Me.Txt
  loc_FB9ECE:   Call 0.Method_DGArea_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FB9ED6:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FB9EF6: End If
  loc_FB9F0B: var_C8 = CStr(Me.DGArea.Tag)
  loc_FB9F14: Set var_B0 = Me.Txt
  loc_FB9F1A: Call 0.Method_DGArea_UnknownEvent_90 (CInt(var_C8))
  loc_FB9F22: var_B4.SetFocus
  loc_FB9F36: Exit Sub
  loc_FB9F37: ' Referenced from: FB9DC8
  loc_FB9F3D: Call 0.Method_arg_50 (var_C8)
  loc_FB9F52: Proc_183_57_104AA84(var_C8, "DGArea_Click")
  loc_FB9F5E: Exit Sub
End Sub

Private Sub DGTDSCat_UnknownEvent_9 'F801EC
  'Data Table: 52BB24
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  Dim var_53C0 As Variant
  loc_F800A8: On Error Goto loc_F801C2
  loc_F800BA: Me.DGTDSCat.Visible = False
  loc_F800D9: If (Me.RecordCount > 0) Then
  loc_F80118:   Set var_B4 = Me.Txt
  loc_F8011E:   Call 0.Method_DGTDSCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F80126:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F80159:   var_B0 = Me.Fields.Item("Code")
  loc_F8016A:   var_CC = CStr(var_B0.Value)
  loc_F80178:   Set var_B4 = Me.Txt
  loc_F8017E:   Call 0.Method_DGTDSCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F80186:   var_B8.Tag = var_CC
  loc_F8019C: End If
  loc_F801A7: Set var_A8 = Me.Txt
  loc_F801AD: Call 0.Method_DGTDSCat_UnknownEvent_90 (CInt(2))
  loc_F801B5: var_B0.SetFocus
  loc_F801C1: Exit Sub
  loc_F801C2: ' Referenced from: F800A8
  loc_F801C8: Call 0.Method_arg_50 (var_CC)
  loc_F801DD: Proc_183_57_104AA84(var_CC, "DGTDSCat_Click")
  loc_F801E9: Exit Sub
  loc_F801EA: var_53C0 = CVar(var_B0) 'String
End Sub

Private Sub FGrid_UnknownEvent_0 'E266CC
  'Data Table: 52BB24
  loc_E266BB: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E266C3: Call Proc_184_51_F6BE3C()
  loc_E266C8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EC80
  'Data Table: 52BB24
  loc_E1EC77: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EC7F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E37F34
  'Data Table: 52BB24
  Dim var_8C As TextBox
  loc_E37F17: Set var_88 = Me.TxtGrid
  loc_E37F1D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E37F25: var_8C.Visible = False
  loc_E37F31: Exit Sub
  loc_E37F32: Loop Until  'do at: E32BC6
End Sub

Private Sub FGrid_UnknownEvent_A '11121F8
  'Data Table: 52BB24
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim KeyAscii As Integer
  Dim var_D8 As Variant
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  Dim var_140 As Long
  loc_1111EBC: On Error Goto loc_11121CF
  loc_1111EC3: Set var_88 = Me.TopCtrl1
  loc_1111EC9: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1111EE2: If (CStr() = "Browse") Then
  loc_1111EE5:   Exit Sub
  loc_1111EE6: End If
  loc_1111F03: var_C4 = Me.FGrid.Rows
  loc_1111F5A: If ((CLng(KeyAscii) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1111F65:   var_9C = "+{Tab}"
  loc_1111F6B:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1111F75:   KeyAscii = 0
  loc_1111F7B: Else
  loc_1111F85:   var_B0 = Me.FGrid.Rows
  loc_1111FD2:   If ((CLng(KeyAscii) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1111FDD:     var_9C = "{Tab}"
  loc_1111FE3:     Proc_303_0_FB9B68(var_9C, 0, var_B0)
  loc_1111FF7:     If (CInt(global_96) = 0) Then
  loc_1112031:       If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_1112034:         Call TopCtrl1_UnknownEvent_16()
  loc_1112039:       End If
  loc_1112039:     End If
  loc_111203B:     KeyAscii = 0
  loc_111203E:   End If
  loc_111203E: End If
  loc_1112044: global_54 = KeyAscii
  loc_111206A: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1112090: var_11C = CLng(Me.FGrid.Col)
  loc_11120A0: If Not (var_11C = CLng(1)) Then
  loc_11120AA:   If Not (var_11C = CLng(2)) Then
  loc_11120B4:     If Not (var_11C = CLng(4)) Then
  loc_11120BE:       If (var_11C = CLng(3)) Then
  loc_11120C1:       End If
  loc_11120C1:     End If
  loc_11120C1:   End If
  loc_11120D2:   If ((CLng(KeyAscii) = &H2E) And (arg_10 = 0)) Then
  loc_11120E8:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1112100:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1112105:     var_12C = vbNullString
  loc_111210F:     Set var_B4 = Me.FGrid
  loc_1112115:     LateIdCallSt
  loc_111212D:   End If
  loc_111212D: End If
  loc_1112137: If (CLng(KeyAscii) = &HD) Then
  loc_111214D:   var_140 = CLng(Me.FGrid.Col)
  loc_111215D:   If Not (var_140 = CLng(1)) Then
  loc_1112167:     If Not (var_140 = CLng(2)) Then
  loc_1112171:       If Not (var_140 = CLng(4)) Then
  loc_111217B:         If (var_140 = CLng(3)) Then
  loc_111217E:         End If
  loc_111217E:       End If
  loc_111217E:     End If
  loc_11121AF:     Proc_183_24_1044608(Me, Me.FGrid, Me.TxtGrid, 0, var_140, Me.TxtGrid, var_12C, var_F8)
  loc_11121C1:   End If
  loc_11121C6:   global_52 = 0
  loc_11121C9: End If
  loc_11121CB: KeyAscii = 0
  loc_11121CE: Exit Sub
  loc_11121CF: ' Referenced from: 1111EBC
  loc_11121D5: Call 0.Method_arg_50 (var_9C, KeyAscii, global_52, var_D8, var_11C)
  loc_11121EA: Proc_183_57_104AA84(var_9C, "FGrid_KeyDown", global_54, KeyAscii)
  loc_11121F6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F1906C
  'Data Table: 52BB24
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F18F88: On Error Goto loc_F19042
  loc_F18F8F: Set var_88 = Me.TopCtrl1
  loc_F18F95: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F18F9D: var_9C = CStr()
  loc_F18FAE: If (var_9C = "Browse") Then
  loc_F18FB1:   Exit Sub
  loc_F18FB2: End If
  loc_F18FC5: var_A0 = CLng(Me.FGrid.Col)
  loc_F18FD5: If Not (var_A0 = CLng(1)) Then
  loc_F18FDF:   If Not (var_A0 = CLng(2)) Then
  loc_F18FE9:     If Not (var_A0 = CLng(4)) Then
  loc_F18FF3:       If (var_A0 = CLng(3)) Then
  loc_F18FF6:       End If
  loc_F18FF6:     End If
  loc_F18FF6:   End If
  loc_F19027:   Proc_183_24_1044608(Me, Me.FGrid, Me.TxtGrid)
  loc_F19039: End If
  loc_F1903E: global_52 = 0
  loc_F19041: Exit Sub
  loc_F19042: ' Referenced from: F18F88
  loc_F19048: Call 0.Method_arg_50 (var_9C, global_52)
  loc_F1905D: Proc_183_57_104AA84(var_9C, "FGrid_DblClick")
  loc_F19069: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F64A18
  'Data Table: 52BB24
  Dim var_9C As Long
  loc_F648F8: On Error Goto loc_F649EE
  loc_F6490E: var_9C = CLng(Me.FGrid.Col)
  loc_F6491E: If Not (var_9C = CLng(1)) Then
  loc_F64928:   If Not (var_9C = CLng(2)) Then
  loc_F64932:     If (var_9C = CLng(4)) Then
  loc_F64935:     End If
  loc_F64935:   End If
  loc_F6496E:   Proc_183_26_1158124(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F64983: Else
  loc_F6498A:   If (var_9C = CLng(3)) Then
  loc_F649C6:     Proc_183_26_1158124(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F649D8:   End If
  loc_F649D8: End If
  loc_F649E2: If (CLng(KeyAscii) <> &HD) Then
  loc_F649EA:   global_52 = &HFF
  loc_F649ED: End If
  loc_F649ED: Exit Sub
  loc_F649EE: ' Referenced from: F648F8
  loc_F649F4: Call 0.Method_arg_50 (var_B4, global_52, KeyAscii)
  loc_F64A09: Proc_183_57_104AA84(var_B4, "FGrid_KeyPress", 0)
  loc_F64A15: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10518D0
  'Data Table: 52BB24
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  loc_1051670: On Error Goto loc_10518A7
  loc_1051677: Set var_8C = Me.TopCtrl1
  loc_105167D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1051685: var_A0 = CStr()
  loc_1051696: If (var_A0 = "Browse") Then
  loc_1051699:   Exit Sub
  loc_105169A: End If
  loc_10516B7: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10516BA:   Exit Sub
  loc_10516BB: End If
  loc_10516CC: If ((CLng(KeyAscii) = &H44) And (arg_10 = 2)) Then
  loc_10516EE:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1051728:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_105174A:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1051760:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1051769:         Set var_114 = Me.FGrid
  loc_1051781:         Call Proc_184_53_11478C4(FGrid.DispID_10000)
  loc_1051789:       Else
  loc_105179C:         Me.FGrid.Rows = 1
  loc_10517B9:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10517C1:         Set var_114 = Me.FGrid
  loc_10517F0:         Me.FGrid.FixedRows = 1
  loc_10517F8:       End If
  loc_10517F8:     End If
  loc_105181D:     For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_1051827:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_105182F:       var_E0 = CVar(CLng(0)) 'Long
  loc_1051839:       var_9C = CVar(CStr(var_86)) 'String
  loc_1051841:       Set var_8C = Me.FGrid
  loc_1051847:       LateIdCallSt
  loc_1051858:     Next var_118 'Integer
  loc_1051860:   Else
  loc_1051881:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1051891:   End If
  loc_1051895:   Set var_8C = Me.FGrid
  loc_10518A6: End If
  loc_10518A6: Exit Sub
  loc_10518A7: ' Referenced from: 1051670
  loc_10518AD: Call 0.Method_arg_50 (var_A0)
  loc_10518C2: Proc_183_57_104AA84(var_A0, "FGrid_KeyUp")
  loc_10518CE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1C6B0
  'Data Table: 52BB24
  loc_E1C6A7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1C6AF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1C5C0
  'Data Table: 52BB24
  loc_E1C5B7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C5BF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3FF18
  'Data Table: 52BB24
  Dim var_8C As TextBox
  loc_E3FEF7: Set var_88 = Me.TxtGrid
  loc_E3FEFD: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3FF05: var_8C.Visible = False
  loc_E3FF11: Call Proc_184_51_F6BE3C()
  loc_E3FF16: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F3F394
  'Data Table: 52BB24
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F3F28C: On Error Goto loc_F3F36A
  loc_F3F293: Set var_A4 = Me.ListView
  loc_F3F2DD: Set var_BC = Me.Txt
  loc_F3F2E3: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F3F2EB: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F3F317: Me.FrmList.Visible = False
  loc_F3F331: var_A0 = CStr(Me.ListView.Tag)
  loc_F3F339: var_C8 = Val(var_A0)
  loc_F3F347: Set var_9C = Me.Txt
  loc_F3F34D: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F3F355: var_A4.SetFocus
  loc_F3F369: Exit Sub
  loc_F3F36A: ' Referenced from: F3F28C
  loc_F3F370: Call 0.Method_arg_50 (var_A0, var_C8)
  loc_F3F385: Proc_183_57_104AA84(var_A0, "ListView_Click")
  loc_F3F391: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F8809C
  'Data Table: 52BB24
  Dim var_A0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F87F58: On Error Goto loc_F88071
  loc_F87F65: Set var_88 = Me.TxtGrid
  loc_F87F6B: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F87F79: Proc_183_28_E20B20(var_8C)
  loc_F87F85: Call Proc_184_51_F6BE3C(var_8C)
  loc_F87F9D: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F87FB8: var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F87FC1: Set var_8C = Me.FGrid
  loc_F87FEA: var_10C = CStr(Me.FGrid.TextMatrix))
  loc_F87FF6: Set var_104 = Me.TxtGrid
  loc_F87FFC: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_10C)
  loc_F88004: var_108.Tag = CVar(CLng(var_8C.Col))
  loc_F88035: var_110 = CLng(Me.FGrid.Col)
  loc_F88045: If (var_110 = CLng(2)) Then
  loc_F88056:   Set var_88 = Me.TxtGrid
  loc_F8805C:   Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &HF)
  loc_F88064:   var_8C.MaxLength = var_110
  loc_F88070: End If
  loc_F88070: Exit Sub
  loc_F88071: ' Referenced from: F87F58
  loc_F88077: Call 0.Method_arg_50 (var_10C)
  loc_F8808C: Proc_183_57_104AA84(var_10C, "TxtGrid_GotFocus")
  loc_F88098: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FF5F08
  'Data Table: 52BB24
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_FF5D1C: On Error Goto loc_FF5EDD
  loc_FF5D29: If (CLng(Shift) = &H1B) Then
  loc_FF5D38:   Set var_88 = Me.TxtGrid
  loc_FF5D3E:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_FF5D46:   var_90 = var_8C.Tag
  loc_FF5D57:   Set var_94 = Me.TxtGrid
  loc_FF5D5D:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_FF5D65:   var_98.Text = var_90
  loc_FF5D81:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FF5D91:   Set var_88 = Me.TxtGrid
  loc_FF5D97:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_FF5D9F:   var_8C.Visible = False
  loc_FF5DAF:   Set var_88 = Me.FGrid
  loc_FF5DC0:   Exit Sub
  loc_FF5DC1: End If
  loc_FF5DD4: var_AC = CLng(Me.FGrid.Col)
  loc_FF5DE4: If Not (var_AC = CLng(1)) Then
  loc_FF5DEE:   If Not (var_AC = CLng(2)) Then
  loc_FF5DF8:     If Not (var_AC = CLng(4)) Then
  loc_FF5E02:       If (var_AC = CLng(3)) Then
  loc_FF5E05:       End If
  loc_FF5E05:     End If
  loc_FF5E05:   End If
  loc_FF5E45:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_52 = &HFF))) Then
  loc_FF5E4B:     Call Proc_184_57_11F4A64(var_AE, var_AC)
  loc_FF5E56:     If (var_AE = &HFF) Then
  loc_FF5E8D:       Set var_8C = Me.TxtGrid
  loc_FF5E9C:       Proc_183_25_11BD654(Me.FGrid, var_8C, KeyCode, Shift, global_52, 4)
  loc_FF5EAF:     Else
  loc_FF5EB4:       Call TxtGrid_LostFocus()
  loc_FF5EC2:       Set var_88 = Me.TxtGrid
  loc_FF5EC8:       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0, 0)
  loc_FF5ED0:       var_8C.SetFocus
  loc_FF5EDC:     End If
  loc_FF5EDC:   End If
  loc_FF5EDC: End If
  loc_FF5EDC: Exit Sub
  loc_FF5EDD: ' Referenced from: FF5D1C
  loc_FF5EE3: Call 0.Method_arg_50 (var_90, 0, 0)
  loc_FF5EF8: Proc_183_57_104AA84(var_90, "TxtGrid_KeyDown")
  loc_FF5F04: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EBF3A8
  'Data Table: 52BB24
  Dim var_88 As MSHFlexGrid
  loc_EBF314: On Error Goto loc_EBF37D
  loc_EBF31A: Proc_183_46_E070C0(arg_10)
  loc_EBF342: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_EBF34F:   Set var_88 = Me.TxtGrid
  loc_EBF355:   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_EBF370:   Proc_183_22_129AEBC(var_A0, arg_10, &HA)
  loc_EBF37C: End If
  loc_EBF37C: Exit Sub
  loc_EBF37D: ' Referenced from: EBF314
  loc_EBF383: Call 0.Method_arg_50 (var_AC, 2)
  loc_EBF398: Proc_183_57_104AA84(var_AC, "TxtGrid_KeyPress")
  loc_EBF3A4: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '107B980
  'Data Table: 52BB24
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As MSHFlexGrid
  Dim var_14C As Variant
  loc_107B700: On Error Goto loc_107B955
  loc_107B716: var_9C = CLng(Me.FGrid.Col)
  loc_107B726: If (var_9C = CLng(4)) Then
  loc_107B733:   Set var_A8 = Me.TxtGrid
  loc_107B739:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_107B74B:   Set var_88 = Me.TxtGrid
  loc_107B751:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107B7BC:   If CBool((Len(var_A0.Text) = 0) Or (Ucase(Mid(CVar(var_AC), 1, 1)) = "C")) Then
  loc_107B7CC:     Set var_88 = Me.TxtGrid
  loc_107B7D2:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107B7DA:     var_A0.Text = "Cr"
  loc_107B7E9:   Else
  loc_107B7F3:     Set var_88 = Me.TxtGrid
  loc_107B7F9:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107B83B:     If (Ucase(Mid(CVar(var_A0), 1, 1)) = "D") Then
  loc_107B84B:       Set var_88 = Me.TxtGrid
  loc_107B851:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107B859:       var_A0.Text = "Dr"
  loc_107B868:     Else
  loc_107B875:       Set var_88 = Me.TxtGrid
  loc_107B87B:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107B883:       var_A0.Text = "Cr"
  loc_107B88F:     End If
  loc_107B88F:   End If
  loc_107B892: Else
  loc_107B899:   If (var_9C = CLng(3)) Then
  loc_107B8A9:     Set var_88 = Me.TxtGrid
  loc_107B8AF:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107B8B7:     var_A4 = var_A0.Text
  loc_107B8DA:     var_11C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107B8F2:     var_14C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_107B91F:     var_12C = CVar(CStr(Format(CVar(Val(var_A4)), "0.00"))) 'String
  loc_107B927:     Set var_170 = Me.FGrid
  loc_107B92D:     LateIdCallSt
  loc_107B954:   End If
  loc_107B954: End If
  loc_107B954: Exit Sub
  loc_107B955: ' Referenced from: 107B700
  loc_107B95B: Call 0.Method_arg_50 (var_A4, var_170, var_12C, 1, 1)
  loc_107B970: Proc_183_57_104AA84(var_A4, "TxtGrid_KeyUp", var_14C)
  loc_107B97C: Exit Sub
End Sub

Private Sub TxtGrid_LostFocus(Index As Integer) 'E8A154
  'Data Table: 52BB24
  loc_E8A0F0: On Error Goto loc_E8A12B
  loc_E8A0FC: If (global_56 = 0) Then
  loc_E8A0FF:   Exit Sub
  loc_E8A100: End If
  loc_E8A10A: Set var_88 = Me.TxtGrid
  loc_E8A110: Call 0.Method_TxtGrid_LostFocus0 (Index)
  loc_E8A11E: Proc_183_27_E22608(var_8C)
  loc_E8A12A: Exit Sub
  loc_E8A12B: ' Referenced from: E8A0F0
  loc_E8A131: Call 0.Method_arg_50 (var_94)
  loc_E8A146: Proc_183_57_104AA84(var_94, "TxtGrid_LostFocus")
  loc_E8A152: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) '11B9EC8
  'Data Table: 52BB24
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_120 As Variant
  Dim var_190 As Double
  loc_11B9A98: On Error Goto loc_11B9E9F
  loc_11B9AAE: var_9C = CLng(Me.FGrid.Col)
  loc_11B9ABE: If (var_9C = CLng(1)) Then
  loc_11B9ACB:   Set var_88 = Me.TxtGrid
  loc_11B9AD1:   Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0)
  loc_11B9AE9:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11B9B1B:   Call 0.Method_arg_184 (var_A0, var_A8, CVar(CLng(Me.FGrid.Col)))
  loc_11B9B23:   var_110 = CVar(var_A8) 'String
  loc_11B9B2B:   Set var_124 = Me.FGrid
  loc_11B9B31:   LateIdCallSt
  loc_11B9B52: Else
  loc_11B9B59:   If Not (var_9C = CLng(2)) Then
  loc_11B9B63:     If (var_9C = CLng(4)) Then
  loc_11B9B66:     End If
  loc_11B9BA3:     Set var_88 = Me.TxtGrid
  loc_11B9BA9:     Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11B9BB1:     var_124 = var_A0.Text
  loc_11B9BC7:     LateIdCallSt
  loc_11B9C02:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11B9C05:       Call Proc_184_53_11478C4(Me.FGrid, CVar(var_A8), CVar(var_A8))
  loc_11B9C23:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11B9C2B:       var_F0 = CVar(CLng(4)) 'Long
  loc_11B9C45:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11B9C66:       var_120 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11B9CB3:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11B9CCB:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11B9CD3:         Set var_A0 = Me.FGrid
  loc_11B9CEF:       End If
  loc_11B9CEF:     End If
  loc_11B9CF2:   Else
  loc_11B9CF9:     If (var_9C = CLng(3)) Then
  loc_11B9D09:       Set var_88 = Me.TxtGrid
  loc_11B9D0F:       Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, FGrid.DispID_10000, var_C0, var_120)
  loc_11B9D17:       (var_A8 <> vbNullString) = var_A0.Text
  loc_11B9D24:       var_190 = Val(var_A8)
  loc_11B9D8D:       LateIdCallSt
  loc_11B9DB4:       Call Proc_184_53_11478C4(Me.FGrid, CVar(CStr(Format(CVar(var_190), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11B9DD2:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11B9DDA:       var_F0 = CVar(CLng(4)) 'Long
  loc_11B9DF4:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11B9E15:       var_120 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11B9E62:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11B9E7A:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11B9E82:         Set var_A0 = Me.FGrid
  loc_11B9E9E:       End If
  loc_11B9E9E:     End If
  loc_11B9E9E:   End If
  loc_11B9E9E: End If
  loc_11B9E9E: Exit Sub
  loc_11B9E9F: ' Referenced from: 11B9A98
  loc_11B9EA5: Call 0.Method_arg_50 (var_A8, FGrid.DispID_10000, var_C0, CVar(CLng(Me.FGrid.Col)), (var_A8 <> vbNullString), var_F0)
  loc_11B9EBA: Proc_183_57_104AA84(var_A8, "TxtGrid_Validate", CVar(CLng(Me.FGrid.Row)), var_190)
  loc_11B9EC6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F5EA00
  'Data Table: 52BB24
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F5E8D8: On Error Goto loc_F5E9D8
  loc_F5E8DB: Call Proc_184_50_FBC468()
  loc_F5E8F5: var_88 = "ADD"
  loc_F5E903: Call Proc_184_49_E897FC(Proc_5_1_100CB50(var_88, Me))
  loc_F5E916: Call Proc_184_56_F7AD40(CByte(0))
  loc_F5E929: Set var_8C = Me.Txt
  loc_F5E92F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_F5E937: var_94.Text = "Yes"
  loc_F5E951: Set var_8C = Me.Txt
  loc_F5E957: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H11), var_94)
  loc_F5E95F: var_94.Text = "N/A"
  loc_F5E976: Set var_8C = Me.Txt
  loc_F5E97C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_F5E984: var_94.SetFocus
  loc_F5E996: global_84 = CDbl(0)
  loc_F5E99F: global_92 = vbNullString
  loc_F5E9A9: global_60 = "N"
  loc_F5E9BA: Me.LblUser.Caption = vbNullString
  loc_F5E9CF: Me.LblLDt.Caption = vbNullString
  loc_F5E9D7: Exit Sub
  loc_F5E9D8: ' Referenced from: F5E8D8
  loc_F5E9DE: Call 0.Method_arg_50 (var_88, global_84)
  loc_F5E9F3: Proc_183_57_104AA84(var_88, "TopCtrl1_eAdd")
  loc_F5E9FF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F78198
  'Data Table: 52BB24
  Dim var_11C As TextBox
  Dim arg_1CFF As Integer
  loc_F78060: On Error Goto loc_F7816D
  loc_F78063: Call Proc_184_51_F6BE3C()
  loc_F7809F: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_F780B7:   var_10C = "INI"
  loc_F780C5:   Call Proc_184_49_E897FC(Proc_5_1_100CB50(var_10C, Me))
  loc_F780D0:   Call Proc_184_58_18BF9D8(global_112)
  loc_F780E3:   Set var_110 = Me.Txt
  loc_F780E9:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_112, var_86)
  loc_F780F9:   For var_116 =  To CByte((var_112 - 1)): CByte(0) = var_116 'Byte
  loc_F78108:     If (CInt(var_86) <> 3) Then
  loc_F7811D:       Set var_110 = Me.Txt
  loc_F78123:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F7812B:       var_11C.BackColor = -2147483643
  loc_F78149:       Set var_110 = Me.Txt
  loc_F7814F:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F78157:       var_11C.ForeColor = &HC00000
  loc_F78163:     End If
  loc_F78166:   Next var_116 'Byte
  loc_F7816C: End If
  loc_F7816C: Exit Sub
  loc_F7816D: ' Referenced from: F78060
  loc_F78173: Call 0.Method_arg_50 (var_10C)
  loc_F78188: Proc_183_57_104AA84(var_10C)
  loc_F78194: Exit Sub
  loc_F78195: arg_1CFF = "TopCtrl1_eCancel"
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FD0280
  'Data Table: 52BB24
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  Dim unk_52BB44 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_FD00E8: On Error Goto loc_FD0258
  loc_FD0102: If (Me.RecordCount > 0) Then
  loc_FD0113:   If (Proc_183_56_FE8818(global_112) = &HFF) Then
  loc_FD0116:     Exit Sub
  loc_FD0117:   End If
  loc_FD011D:   var_E8 = 0
  loc_FD0144:   Set var_8C = Me.Txt
  loc_FD014A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where (SubCode= '", var_D0, -1)
  loc_FD0173:   Set var_9C = Me.Txt
  loc_FD0179:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A0, var_A4, var_D8 & var_94 & "' or Contrasub='")
  loc_FD0181:   var_E8 = var_A0.Text
  loc_FD019A:   unk_52BB44.Execute var_EC & var_A4 & "')", var_FC, 
  loc_FD01A2:    = var_90.Text.Fields
  loc_FD01AA:    = var_D8.Item()
  loc_FD01B2:    = var_EC.Value
  loc_FD01E9:   If (var_FC > 0) Then
  loc_FD020D:     MsgBox("Transactions Exist Can't Delete it", &H40, "Information", var_11C, var_13C)
  loc_FD021D:     Exit Sub
  loc_FD021E:   End If
  loc_FD021E:   Call Proc_184_62_1240C38()
  loc_FD0226: Else
  loc_FD0247:   MsgBox("There Is No Record To Delete", &H40, "Information", var_11C, var_13C)
  loc_FD0257: End If
  loc_FD0257: Exit Sub
  loc_FD0258: ' Referenced from: FD00E8
  loc_FD025E: Call 0.Method_arg_50 (var_94)
  loc_FD0266: var_A4 = "TopCtrl1_eDel"
  loc_FD0273: Proc_183_57_104AA84(var_94)
  loc_FD027F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FFFF54
  'Data Table: 52BB24
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Variant
  loc_FFFD5C: On Error Goto loc_FFFF2C
  loc_FFFD76: If (Me.RecordCount > 0) Then
  loc_FFFD87:   If (Proc_183_55_FE7900(global_112) = &HFF) Then
  loc_FFFD8A:     Exit Sub
  loc_FFFD8B:   End If
  loc_FFFDA0:   var_8C = "EDIT"
  loc_FFFDAE:   Call Proc_184_49_E897FC(Proc_5_1_100CB50(var_8C, Me))
  loc_FFFDC6:   Set var_90 = Me.Txt
  loc_FFFDCC:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FFFDD4:   var_98.Enabled = False
  loc_FFFDE6:   Call Proc_184_56_F7AD40(global_96)
  loc_FFFE08:   Set var_98 = Me.FGrid
  loc_FFFE2F:   If (global_60 = "Y") Then
  loc_FFFE3F:     Set var_90 = Me.Txt
  loc_FFFE45:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98, 0)
  loc_FFFE4D:     var_98.Enabled = FGrid.DispID_10000
  loc_FFFE66:     Set var_90 = Me.Txt
  loc_FFFE6C:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98, 0)
  loc_FFFE74:     var_98.Enabled = CVar(CStr(CLng(Me.FGrid.Rows)))
  loc_FFFE8B:     Set var_90 = Me.Txt
  loc_FFFE91:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FFFE99:     var_98.SetFocus
  loc_FFFEA8:   Else
  loc_FFFEB3:     Set var_90 = Me.Txt
  loc_FFFEB9:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FFFEC1:     var_98.SetFocus
  loc_FFFECD:   End If
  loc_FFFED0: Else
  loc_FFFEF1:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FFFF01: End If
  loc_FFFF0E: Me.LblUser.Caption = vbNullString
  loc_FFFF23: Me.LblLDt.Caption = vbNullString
  loc_FFFF2B: Exit Sub
  loc_FFFF2C: ' Referenced from: FFFD5C
  loc_FFFF32: Call 0.Method_arg_50 (var_8C)
  loc_FFFF47: Proc_183_57_104AA84(var_8C, "TopCtrl1_eEdit")
  loc_FFFF53: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A65C
  'Data Table: 52BB24
  loc_E1A651: Me.Global.Unload Me
  loc_E1A659: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEE7EC
  'Data Table: 52BB24
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEE72C: On Error Goto loc_EEE7C4
  loc_EEE746: If (Me.RecordCount <= 0) Then
  loc_EEE74F:   var_B8 = "Information"
  loc_EEE76A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEE77A:   Exit Sub
  loc_EEE77B: End If
  loc_EEE782: var_10C = "Select SubCode As SearchCode,SubCode as Code,Name,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,GSTIN,CreditLimit,CreditDays,Remark From ((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode)) Where G.AliasYN<>'Y' AND (S.LOGSITE_CODE='" & MemVar_1F92078
  loc_EEE789: MemVar_1F920E4 = var_10C & "' OR S.LOGSITE_CODE='HO') Order by Name"
  loc_EEE796: MemVar_1F92120 = Me
  loc_EEE79D: var_10C = "1000,3000,800,2000,1500,900,2000,2000"
  loc_EEE7A3: Proc_183_54_F1DE80(var_10C)
  loc_EEE7BE: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEE7C3: Exit Sub
  loc_EEE7C4: ' Referenced from: EEE72C
  loc_EEE7CA: Call 0.Method_arg_50 (var_10C)
  loc_EEE7DF: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EEE7EB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E38478
  'Data Table: 52BB24
  loc_E38468: Proc_5_0_110649C(&HFF, Me)
  loc_E38470: Call Proc_184_58_18BF9D8(global_112)
  loc_E38475: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3C018
  'Data Table: 52BB24
  loc_E3C008: Proc_5_0_110649C(&HFF, Me)
  loc_E3C010: Call Proc_184_58_18BF9D8(global_112)
  loc_E3C015: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3C078
  'Data Table: 52BB24
  loc_E3C068: Proc_5_0_110649C(&HFF, Me)
  loc_E3C070: Call Proc_184_58_18BF9D8(global_112)
  loc_E3C075: Exit Sub
  loc_E3C076: End Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3C0D8
  'Data Table: 52BB24
  loc_E3C0C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3C0D0: Call Proc_184_58_18BF9D8(global_112)
  loc_E3C0D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'EB6074
  'Data Table: 52BB24
  Dim var_8C As Frame
  loc_EB5FE2: Set var_88 = Me.Frame2
  loc_EB5FE8: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB5FF0: var_8C.Left = CDbl(1000)
  loc_EB600A: Set var_88 = Me.Frame2
  loc_EB6010: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB6018: var_8C.Top = CDbl(1000)
  loc_EB602F: Set var_88 = Me.Frame2
  loc_EB6035: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB603D: var_8C.Visible = True
  loc_EB6058: Set var_88 = Me.Frame2
  loc_EB605E: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB6066: var_8C.ZOrder 0
  loc_EB6072: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E57604
  'Data Table: 52BB24
  Dim Me As Recordset15
  loc_E575CB: Me.Requery -1
  loc_E575DB: Me.Requery -1
  loc_E575EB: Me.Requery -1
  loc_E575FB: Me.Requery -1
  loc_E57600: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1313FF8
  'Data Table: 52BB24
  Dim var_94 As TextBox
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_A0 As String
  Dim var_F4 As TextBox
  Dim var_F0 As Long
  Dim var_15C As String
  Dim unk_52BB44 As Connection15
  Dim var_90 As MSHFlexGrid
  loc_13138D4: Set var_90 = Me.TxtGrid
  loc_13138DA: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_13138E2: var_96 = var_94.Visible
  loc_13138F4: If (var_96 = &HFF) Then
  loc_13138FA:   Call Proc_184_57_11F4A64(var_96)
  loc_1313905:   If (var_96 = 0) Then
  loc_131390D:     Call TxtGrid_LostFocus(0)
  loc_131391B:     Set var_90 = Me.TxtGrid
  loc_1313921:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1313929:     var_94.SetFocus
  loc_1313935:     Exit Sub
  loc_1313936:   End If
  loc_1313936: End If
  loc_1313936: Call Proc_184_51_F6BE3C(var_94)
  loc_1313946: Set var_90 = Me.Txt
  loc_131394C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1313975: If (Proc_183_19_E8DAFC(var_94, "A/C Name") = 0) Then
  loc_1313978:   Exit Sub
  loc_1313979: End If
  loc_1313984: Set var_90 = Me.Txt
  loc_131398A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94)
  loc_13139B3: If (Proc_183_19_E8DAFC(var_94, "Under Group") = 0) Then
  loc_13139B6:   Exit Sub
  loc_13139B7: End If
  loc_13139C5: Set var_90 = Me.Txt
  loc_13139CB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_94)
  loc_13139EA: If (var_94.Text <> vbNullString) Then
  loc_13139FD:   Set var_90 = Me.Txt
  loc_1313A03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_94)
  loc_1313A19:   var_D0 = InStr(1, CVar(var_94), "@", 0)
  loc_1313A37:   Set var_9C = Me.Txt
  loc_1313A3D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_F4, 1)
  loc_1313A45:   var_114 = CVar(var_F4) 'Address
  loc_1313A79:   If CBool(var_94 Or (InStr((var_D0 = 0), var_114, ".", 0) = 0)) Then
  loc_1313A95:     MsgBox("Please fill a Valid EMail Id.", 0, var_D0, var_F0, var_114)
  loc_1313AB0:     Set var_90 = Me.Txt
  loc_1313AB6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE))
  loc_1313ABE:     var_94.SetFocus
  loc_1313ACA:     Exit Sub
  loc_1313ACB:   End If
  loc_1313AD6:   Set var_90 = Me.Txt
  loc_1313ADC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_94)
  loc_1313B02:   Set var_9C = Me.Txt
  loc_1313B08:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_F4)
  loc_1313B10:   var_F4.Text = CStr(LCase(CVar(var_94)))
  loc_1313B28: End If
  loc_1313B33: Set var_90 = Me.Txt
  loc_1313B39: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_94)
  loc_1313B62: If CBool(Trim(CVar(var_94)) <> vbNullString) Then
  loc_1313B70:   Set var_90 = Me.Txt
  loc_1313B76:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_94)
  loc_1313B85:   var_D0 = Trim(CVar(var_94))
  loc_1313B8D:   var_F0 = Len(var_D0)
  loc_1313BA3:   If CBool(var_F0 <> 15) Then
  loc_1313BBF:     MsgBox("Please fill a Valid GSTIN of 15 DIGIT", 0, var_D0, var_F0, var_114)
  loc_1313BDA:     Set var_90 = Me.Txt
  loc_1313BE0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_94)
  loc_1313BE8:     var_94.SetFocus
  loc_1313BF4:     Exit Sub
  loc_1313BF5:   End If
  loc_1313BF5: End If
  loc_1313BF9: Set var_90 = Me.TopCtrl1
  loc_1313BFF: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1313C07: var_A0 = CStr()
  loc_1313C18: If (var_A0 = "Add") Then
  loc_1313C39:   Set var_90 = Me.Txt
  loc_1313C3F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1313C47:   var_C0 = var_94.Text
  loc_1313C58:   var_15C = Proc_183_20_FB3974(var_A0, -1)
  loc_1313C6C:   unk_52BB44.Execute var_9C & var_15C & "'", , 
  loc_1313CA5:   If (var_9C.RecordCount > 0) Then
  loc_1313CC9:     MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_1313CE4:     Set var_90 = Me.Txt
  loc_1313CEA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1313CF2:     var_94.SetFocus
  loc_1313CFE:     Exit Sub
  loc_1313CFF:   End If
  loc_1313D02: Else
  loc_1313D06:   Set var_90 = Me.TopCtrl1
  loc_1313D0C:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1313D14:   var_A0 = CStr()
  loc_1313D25:   If (var_A0 = "Edit") Then
  loc_1313D46:     Set var_90 = Me.Txt
  loc_1313D4C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1313D54:     var_C0 = var_94.Text
  loc_1313D65:     var_15C = Proc_183_20_FB3974(var_A0, -1)
  loc_1313D8A:     unk_52BB44.Execute var_9C & var_15C & "' and Name<>'" & global_76 & "'", , 
  loc_1313DC7:     If (var_9C.RecordCount > 0) Then
  loc_1313DEB:       MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_1313E0C:       Set var_90 = Me.Txt
  loc_1313E12:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1313E1A:       var_94.Text = global_76
  loc_1313E31:       Set var_90 = Me.Txt
  loc_1313E37:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1313E3F:       var_94.SetFocus
  loc_1313E4B:       Exit Sub
  loc_1313E4C:     End If
  loc_1313E4C:   End If
  loc_1313E4C: End If
  loc_1313E71: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_174 'Integer
  loc_1313E7B:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_1313E83:   var_104 = CVar(CLng(3)) 'Long
  loc_1313EB3:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1313EBA:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1313EC2:     var_104 = CVar(CLng(4)) 'Long
  loc_1313EED:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1313F15:       MsgBox(CVar("Please Specify Cr/Dr in Row No " & CStr(var_86)), &H40, "Validation", var_F0, var_114)
  loc_1313F3B:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_1313F55:       Me.FGrid.Col = CVar(CLng(4))
  loc_1313F61:       Set var_90 = Me.FGrid
  loc_1313F85:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1313F8D:       Exit Sub
  loc_1313F8E:     End If
  loc_1313F8E:   End If
  loc_1313F91: Next var_174 'Integer
  loc_1313F9A: Set var_90 = Me.TopCtrl1
  loc_1313FA0: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1313FA8: var_A0 = CStr()
  loc_1313FB9: If (var_A0 = "Add") Then
  loc_1313FBC:   Call Proc_184_60_14A96E8()
  loc_1313FC4: Else
  loc_1313FC4:   Call Proc_184_61_155D30C()
  loc_1313FC9: End If
  loc_1313FC9: Call Proc_184_51_F6BE3C()
  loc_1313FCE: Exit Sub
  loc_1313FD5: Call 0.Method_arg_50 (var_A0)
  loc_1313FDD: var_15C = "TopCtrl1_eSave"
  loc_1313FEA: Proc_183_57_104AA84(var_A0)
  loc_1313FF6: Exit Sub
End Sub

Private Sub Opt3_Click(Index As Integer) 'E81B04
  'Data Table: 52BB24
  loc_E81AB4: If (Index = 3) Then
  loc_E81AC1:   var_9C = "GroupCode"
  loc_E81AEB:   Proc_183_43_EF7D54(" Select GroupCode,GroupName,maingrcode From AcGroup Where (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') AND MainGrCode<>'999' Order by GroupName", Me.DCGroup, "GroupName")
  loc_E81B02: End If
  loc_E81B02: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EB9404
  'Data Table: 52BB24
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EB9372: On Error Goto loc_EB93DB
  loc_EB937B: Me.MoveFirst
  loc_EB9395: var_8C = "SearchCode='" & MyValue
  loc_EB93A5: Me.Find var_8C & "'", 0, 1
  loc_EB93B1: Call Proc_184_58_18BF9D8(var_A0)
  loc_EB93D2: Proc_5_0_110649C(&HFF, Me)
  loc_EB93DA: Exit Sub
  loc_EB93DB: ' Referenced from: EB9372
  loc_EB93E1: Call 0.Method_arg_50 (var_8C, global_112)
  loc_EB93F6: Proc_183_57_104AA84(var_8C, "SEARCHBACK")
  loc_EB9402: Exit Sub
End Sub

Public Sub Proc_184_49_E897FC(arg_C) 'E897FC
  'Data Table: 52BB24
  Dim var_98 As TextBox
  loc_E89796: Set var_8C = Me.Txt
  loc_E8979C: Call 0.Method_Proc_184_49_E897FCC (var_8E, var_86)
  loc_E897AC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E897C1:   If ((var_86 = &H19) Or (var_86 = &H1A)) Then
  loc_E897C4:     GoTo loc_E897F1
  loc_E897C7:   End If
  loc_E897D7:   Set var_8C = Me.Txt
  loc_E897DD:   Call 0.Method_Proc_184_49_E897FC0 (CInt(var_86), var_98)
  loc_E897E5:   var_98.Enabled = arg_C
  loc_E897F1:   ' Referenced from: E897C4
  loc_E897F4: Next var_92 'Byte
  loc_E897FA: Exit Sub
End Sub

Public Sub Proc_184_50_FBC468
  'Data Table: 52BB24
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_FBC2CA: Set var_8C = Me.Txt
  loc_FBC2D0: Call 0.Method_Proc_184_50_FBC468C (var_8E, var_86)
  loc_FBC2E0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FBC2F6:   Set var_8C = Me.Txt
  loc_FBC2FC:   Call 0.Method_Proc_184_50_FBC4680 (CInt(var_86), var_98)
  loc_FBC304:   var_98.Text = vbNullString
  loc_FBC320:   Set var_8C = Me.Txt
  loc_FBC326:   Call 0.Method_Proc_184_50_FBC4680 (CInt(var_86), var_98)
  loc_FBC32E:   var_98.Tag = vbNullString
  loc_FBC33D: Next var_92 'Byte
  loc_FBC350: Me.LblNature.Caption = vbNullString
  loc_FBC365: Me.LblOpBalType.Caption = vbNullString
  loc_FBC37A: Me.LblCurBalType.Caption = vbNullString
  loc_FBC38F: Me.txtCurrBal.Text = vbNullString
  loc_FBC3AA: Me.FGrid.Rows = 1
  loc_FBC3C7: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FBC3CF: Set var_98 = Me.FGrid
  loc_FBC3FE: Me.FGrid.FixedRows = 1
  loc_FBC428: Proc_183_1_F5B310(Me, CStr(-2147483643), CStr(&HC00000))
  loc_FBC446: Me.txtCurrBal.BackColor = -2147483643
  loc_FBC45D: Me.txtCurrBal.ForeColor = &HC00000
  loc_FBC465: Exit Sub
  loc_FBC466: CExtInstUnk
End Sub

Public Sub Proc_184_51_F6BE3C
  'Data Table: 52BB24
  loc_F6BD14: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F6BD26:   Me.DGAcName.Visible = False
  loc_F6BD2E: End If
  loc_F6BD4A: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_F6BD5C:   Me.DGUnderAc.Visible = False
  loc_F6BD64: End If
  loc_F6BD80: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F6BD92:   Me.DGCity.Visible = False
  loc_F6BD9A: End If
  loc_F6BDB5: If (Me.FrmList.Visible = &HFF) Then
  loc_F6BDC4:   Me.FrmList.Visible = False
  loc_F6BDCC: End If
  loc_F6BDE8: If (CBool(Me.DGArea.Visible) = &HFF) Then
  loc_F6BDFA:   Me.DGArea.Visible = False
  loc_F6BE02: End If
  loc_F6BE1E: If (CBool(Me.DGTDSCat.Visible) = &HFF) Then
  loc_F6BE30:   Me.DGTDSCat.Visible = False
  loc_F6BE38: End If
  loc_F6BE38: Exit Sub
End Sub

Public Sub Proc_184_52_10C9BFC
  'Data Table: 52BB24
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_10C98F0: Set var_88 = Me.FGrid
  loc_10C98FF: var_88.Left = CVar(CDbl(500))
  loc_10C9910: var_88.Top = CVar(CDbl(3500))
  loc_10C9921: var_88.RowHeightMin = &HDC
  loc_10C9932: var_88.Cols = 8
  loc_10C9937: var_98 = 0
  loc_10C9943: var_B8 = CVar(CLng(6)) 'Long
  loc_10C9948: var_D8 = "Site"
  loc_10C9951: LateIdCallSt
  loc_10C995C: var_98 = CVar(CLng(6)) 'Long
  loc_10C9967: var_B8 = CVar(CInt(1)) 'Integer
  loc_10C996E: LateIdCallSt
  loc_10C9979: var_98 = CVar(CLng(6)) 'Long
  loc_10C997E: var_B8 = 0
  loc_10C998A: LateIdCallSt
  loc_10C9992: var_98 = 0
  loc_10C999E: var_B8 = CVar(CLng(0)) 'Long
  loc_10C99A3: var_D8 = "S.No"
  loc_10C99AC: LateIdCallSt
  loc_10C99B7: var_98 = CVar(CLng(0)) 'Long
  loc_10C99C2: var_B8 = CVar(CInt(1)) 'Integer
  loc_10C99C9: LateIdCallSt
  loc_10C99D4: var_98 = CVar(CLng(0)) 'Long
  loc_10C99D9: var_B8 = &H226
  loc_10C99E5: LateIdCallSt
  loc_10C99ED: var_98 = 0
  loc_10C99F9: var_B8 = CVar(CLng(5)) 'Long
  loc_10C99FE: var_D8 = "Voucher No"
  loc_10C9A07: LateIdCallSt
  loc_10C9A12: var_98 = CVar(CLng(5)) 'Long
  loc_10C9A1D: var_B8 = CVar(CInt(1)) 'Integer
  loc_10C9A24: LateIdCallSt
  loc_10C9A2F: var_98 = CVar(CLng(5)) 'Long
  loc_10C9A34: var_B8 = 0
  loc_10C9A40: LateIdCallSt
  loc_10C9A48: var_98 = 0
  loc_10C9A54: var_B8 = CVar(CLng(1)) 'Long
  loc_10C9A59: var_D8 = "Ref. Date"
  loc_10C9A62: LateIdCallSt
  loc_10C9A6D: var_98 = CVar(CLng(1)) 'Long
  loc_10C9A78: var_B8 = CVar(CInt(1)) 'Integer
  loc_10C9A7F: LateIdCallSt
  loc_10C9A8A: var_98 = CVar(CLng(1)) 'Long
  loc_10C9A8F: var_B8 = &H4B0
  loc_10C9A9B: LateIdCallSt
  loc_10C9AA3: var_98 = 0
  loc_10C9AAF: var_B8 = CVar(CLng(2)) 'Long
  loc_10C9AB4: var_D8 = "Narration"
  loc_10C9ABD: LateIdCallSt
  loc_10C9AC8: var_98 = CVar(CLng(2)) 'Long
  loc_10C9AD3: var_B8 = CVar(CInt(1)) 'Integer
  loc_10C9ADA: LateIdCallSt
  loc_10C9AE5: var_98 = CVar(CLng(2)) 'Long
  loc_10C9AEA: var_B8 = &H802
  loc_10C9AF6: LateIdCallSt
  loc_10C9AFE: var_98 = 0
  loc_10C9B0A: var_B8 = CVar(CLng(3)) 'Long
  loc_10C9B0F: var_D8 = "Amount"
  loc_10C9B18: LateIdCallSt
  loc_10C9B23: var_98 = CVar(CLng(3)) 'Long
  loc_10C9B2E: var_B8 = CVar(CInt(7)) 'Integer
  loc_10C9B35: LateIdCallSt
  loc_10C9B40: var_98 = CVar(CLng(3)) 'Long
  loc_10C9B45: var_B8 = &H4E2
  loc_10C9B51: LateIdCallSt
  loc_10C9B59: var_98 = 0
  loc_10C9B65: var_B8 = CVar(CLng(4)) 'Long
  loc_10C9B6A: var_D8 = "Cr/Dr"
  loc_10C9B73: LateIdCallSt
  loc_10C9B7E: var_98 = CVar(CLng(4)) 'Long
  loc_10C9B89: var_B8 = CVar(CInt(1)) 'Integer
  loc_10C9B90: LateIdCallSt
  loc_10C9B9B: var_98 = CVar(CLng(4)) 'Long
  loc_10C9BA0: var_B8 = &H226
  loc_10C9BAC: LateIdCallSt
  loc_10C9BB4: var_98 = 0
  loc_10C9BC0: var_B8 = CVar(CLng(7)) 'Long
  loc_10C9BC5: var_D8 = "SiteCode"
  loc_10C9BCE: LateIdCallSt
  loc_10C9BD9: var_98 = CVar(CLng(7)) 'Long
  loc_10C9BDE: var_B8 = 0
  loc_10C9BEA: LateIdCallSt
  loc_10C9BF4: Set var_88 = Nothing 
  loc_10C9BF8: Exit Sub
End Sub

Public Sub Proc_184_53_11478C4
  'Data Table: 52BB24
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
  loc_1147538: On Error Goto loc_114789C
  loc_114753E: var_90 = CDbl(0)
  loc_1147544: var_98 = CDbl(0)
  loc_114754A: var_A0 = CDbl(0)
  loc_1147572: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_114757C:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_1147584:   var_E8 = CVar(CLng(4)) 'Long
  loc_11475AF:   If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_11475B6:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_11475BE:     var_E8 = CVar(CLng(3)) 'Long
  loc_11475EA:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11475F9:   Else
  loc_11475FD:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1147605:     var_E8 = CVar(CLng(4)) 'Long
  loc_1147630:     If (CStr(Me.FGrid.TextMatrix)) = "Dr") Then
  loc_1147637:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_114763F:       var_E8 = CVar(CLng(3)) 'Long
  loc_114766B:       var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1147677:     End If
  loc_1147677:   End If
  loc_114767A: Next var_B8 'Integer
  loc_114769B: var_B4 = CVar((var_98 - var_90)) 'Double
  loc_11476AB: var_A0 = CSng(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_11476DF: var_FC = CStr(Format(CVar(Abs(var_A0)), "0.00"))
  loc_11476EE: Set var_A4 = Me.Txt
  loc_11476F4: Call 0.Method_Proc_184_53_11478C40 (CInt(&H19), var_128, var_FC, 1)
  loc_11476FC: var_128.Text = 1
  loc_114771B: If (var_A0 < CDbl(0)) Then
  loc_114772B:   Me.LblOpBalType.Caption = "Cr"
  loc_1147736: Else
  loc_1147743:   Me.LblOpBalType.Caption = "Dr"
  loc_114774B: End If
  loc_1147759: Set var_A4 = Me.Txt
  loc_114775F: Call 0.Method_Proc_184_53_11478C40 (CInt(&H1A), var_128, var_FC)
  loc_1147767: var_A0 = var_128.Tag
  loc_1147794: var_B4 = CVar(Abs((Val(var_FC) + var_A0))) 'Double
  loc_11477B2: Set var_12C = Me.Txt
  loc_11477B8: Call 0.Method_Proc_184_53_11478C40 (CInt(&H1A), var_130, CStr(Format(CVar(Abs(var_A0)), "0.00")), 1)
  loc_11477C0: var_130.Text = 1
  loc_11477EE: Set var_A4 = Me.Txt
  loc_11477F4: Call 0.Method_Proc_184_53_11478C40 (CInt(0), var_128, var_FC)
  loc_11477FC: var_104 = var_128.Text
  loc_114781A: Me.txtCurrBal.Text = Proc_183_42_107D990(var_FC, 1)
  loc_114783D: Set var_A4 = Me.Txt
  loc_1147843: Call 0.Method_Proc_184_53_11478C40 (CInt(&H1A), var_128)
  loc_114784B: var_FC = var_128.Tag
  loc_114786B: If (CDbl((Val(var_FC) + var_A0)) < CDbl(0)) Then
  loc_114787B:   Me.LblCurBalType.Caption = "Cr"
  loc_1147886: Else
  loc_1147893:   Me.LblCurBalType.Caption = "Dr"
  loc_114789B: End If
  loc_114789B: Exit Sub
  loc_114789C: ' Referenced from: 1147538
  loc_11478A2: Call 0.Method_arg_50 (var_FC)
  loc_11478B7: Proc_183_57_104AA84(var_FC, "CalOpBal")
  loc_11478C3: Exit Sub
End Sub

Public Sub Proc_184_54_F73CB8
  'Data Table: 52BB24
  Dim var_90 As TextBox
  loc_F73B7E: Set var_8C = Me.Txt
  loc_F73B84: Call 0.Method_Proc_184_54_F73CB80 (CInt(&H11), var_90)
  loc_F73BA3: If (var_90.Text = "N/A") Then
  loc_F73BAA:   var_86 = CByte(0) 'Byte
  loc_F73BB1: Else
  loc_F73BBF:   Set var_8C = Me.Txt
  loc_F73BC5:   Call 0.Method_Proc_184_54_F73CB80 (CInt(&H11), var_90)
  loc_F73BE4:   If (var_90.Text = "Hindu") Then
  loc_F73BEB:     var_86 = CByte(1) 'Byte
  loc_F73BF2:   Else
  loc_F73C00:     Set var_8C = Me.Txt
  loc_F73C06:     Call 0.Method_Proc_184_54_F73CB80 (CInt(&H11), var_90)
  loc_F73C25:     If (var_90.Text = "Muslim") Then
  loc_F73C2C:       var_86 = CByte(2) 'Byte
  loc_F73C33:     Else
  loc_F73C41:       Set var_8C = Me.Txt
  loc_F73C47:       Call 0.Method_Proc_184_54_F73CB80 (CInt(&H11), var_90)
  loc_F73C66:       If (var_90.Text = "Sikh") Then
  loc_F73C6D:         var_86 = CByte(3) 'Byte
  loc_F73C74:       Else
  loc_F73C82:         Set var_8C = Me.Txt
  loc_F73C88:         Call 0.Method_Proc_184_54_F73CB80 (CInt(&H11), var_90)
  loc_F73CA7:         If (var_90.Text = "Christian") Then
  loc_F73CAE:           var_86 = CByte(4) 'Byte
  loc_F73CB2:         End If
  loc_F73CB2:       End If
  loc_F73CB2:     End If
  loc_F73CB2:   End If
  loc_F73CB2: End If
  loc_F73CB2: Proc_184_54_F73CB8 = 
End Sub

Public Sub Proc_184_55_10C074C(arg_C) '10C074C
  'Data Table: 52BB24
  Dim var_D4 As Variant
  Dim var_9C As String
  Dim var_B8 As String
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_8C As Recordset15
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  loc_10C04C6: On Error Goto loc_10C071F
  loc_10C04CC: var_90 = "F_AO"
  loc_10C04D3: Set var_8C = New 
  loc_10C04DE: Me.Recordset15.CursorLocation = 3
  loc_10C04E6: var_D4 = arg_C
  loc_10C04EE: Proc_183_7_EB0C44(var_E4)
  loc_10C0511: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F92070
  loc_10C0542: var_B8 = var_9C & "' AND VT.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F92070 & "' AND VP.LOGSITE_CODE='"
  loc_10C056D: var_124 = CVar(var_B8 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E4 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10C0575: var_8C.Open var_124, CVar(MemVar_1F921DC), 2
  loc_10C05B2: If (var_8C.RecordCount > 0) Then
  loc_10C05E4:   var_F4 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10C05ED:   global_64 = CLng(CVar(var_B8 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10C0629:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10C0646:   var_9C = Proc_183_15_EAC900(MemVar_1F92070, 2, MemVar_1F9206C, global_64)
  loc_10C0650:   var_D4 = var_90
  loc_10C0660:   var_104 = (CVar(3 & var_9C) + Trim(var_D4))
  loc_10C0671:   var_124 = Space((5 - Len(var_90)))
  loc_10C0679:   var_154 = (CVar(var_B8 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D4) + var_124)
  loc_10C068A:   var_164 = Space((5 - Len(var_94)))
  loc_10C0692:   var_174 = (var_154 + var_164)
  loc_10C069C:   var_184 = (var_174 + CVar(var_94))
  loc_10C06B5:   var_194 = Space((8 - Len(CStr(global_64))))
  loc_10C06BD:   var_1A4 = (var_184 + var_194)
  loc_10C06CC:   var_1C4 = (var_1A4 + CVar(CStr(global_64)))
  loc_10C0705:   var_88 = CStr(var_1C4)
  loc_10C070B: Else
  loc_10C070E:   var_88 = vbNullString
  loc_10C0711: End If
  loc_10C0716: Set var_8C = Nothing
  loc_10C0719: Proc_184_55_10C074C = -1
  loc_10C071F: ' Referenced from: 10C04C6
  loc_10C0725: Call 0.Method_arg_50 (var_9C)
  loc_10C073A: Proc_183_57_104AA84(var_9C, "VoucherNo")
  loc_10C0746: Proc_184_55_10C074C = var_D4
End Sub

Public Sub Proc_184_56_F7AD40(arg_C) 'F7AD40
  'Data Table: 52BB24
  Dim var_94 As TextBox
  loc_F7ABF1: If (CInt(arg_C) = 1) Then
  loc_F7ABFF:   For var_8A = CByte(4) To CByte(&H17): var_86 = var_8A 'Byte
  loc_F7AC14:     Set var_90 = Me.Txt
  loc_F7AC1A:     Call 0.Method_Proc_184_56_F7AD400 (CInt(var_86), var_94)
  loc_F7AC22:     var_94.Enabled = True
  loc_F7AC31:   Next var_8A 'Byte
  loc_F7AC42:   Set var_90 = Me.Txt
  loc_F7AC48:   Call 0.Method_Proc_184_56_F7AD400 (&H1B, var_94)
  loc_F7AC50:   var_94.Enabled = True
  loc_F7AC68:   Set var_90 = Me.Txt
  loc_F7AC6E:   Call 0.Method_Proc_184_56_F7AD400 (&H1B, var_94)
  loc_F7AC76:   var_94.Text = vbNullString
  loc_F7AC85: Else
  loc_F7AC90:   For var_98 = CByte(4) To CByte(&H17):   var_86 = var_98 'Byte
  loc_F7ACA5:     Set var_90 = Me.Txt
  loc_F7ACAB:     Call 0.Method_Proc_184_56_F7AD400 (CInt(var_86), var_94)
  loc_F7ACB3:     var_94.Enabled = False
  loc_F7ACCF:     Set var_90 = Me.Txt
  loc_F7ACD5:     Call 0.Method_Proc_184_56_F7AD400 (CInt(var_86), var_94)
  loc_F7ACDD:     var_94.Text = vbNullString
  loc_F7ACEC:   Next var_98 'Byte
  loc_F7ACFD:   Set var_90 = Me.Txt
  loc_F7AD03:   Call 0.Method_Proc_184_56_F7AD400 (&H1B, var_94)
  loc_F7AD0B:   var_94.Enabled = False
  loc_F7AD23:   Set var_90 = Me.Txt
  loc_F7AD29:   Call 0.Method_Proc_184_56_F7AD400 (&H1B, var_94)
  loc_F7AD31:   var_94.Text = vbNullString
  loc_F7AD3D: End If
  loc_F7AD3D: Exit Sub
End Sub

Public Sub Proc_184_57_11F4A64
  'Data Table: 52BB24
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_124 As Variant
  Dim var_194 As Double
  loc_11F45E4: On Error Goto loc_11F4A34
  loc_11F45FA: var_A0 = CLng(Me.FGrid.Col)
  loc_11F460A: If (var_A0 = CLng(1)) Then
  loc_11F4616:   Set var_8C = Me.TxtGrid
  loc_11F461C:   Call 0.Method_Proc_184_57_11F4A640 (0, var_A4)
  loc_11F4634:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F4666:   Call 0.Method_arg_184 (var_A4, var_AC, CVar(CLng(Me.FGrid.Col)))
  loc_11F466E:   var_114 = CVar(var_AC) 'String
  loc_11F4676:   Set var_128 = Me.FGrid
  loc_11F467C:   LateIdCallSt
  loc_11F469D: Else
  loc_11F46A4:   If Not (var_A0 = CLng(2)) Then
  loc_11F46AE:     If (var_A0 = CLng(4)) Then
  loc_11F46B1:     End If
  loc_11F46ED:     Set var_8C = Me.TxtGrid
  loc_11F46F3:     Call 0.Method_Proc_184_57_11F4A640 (0, var_A4, var_AC, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F46FB:     var_128 = var_A4.Text
  loc_11F4711:     LateIdCallSt
  loc_11F474C:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11F474F:       Call Proc_184_53_11478C4(Me.FGrid, CVar(var_AC), CVar(var_AC))
  loc_11F476D:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11F4775:       var_F4 = CVar(CLng(4)) 'Long
  loc_11F478F:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11F47B0:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11F47FD:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11F4815:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11F481D:         Set var_A4 = Me.FGrid
  loc_11F4839:       End If
  loc_11F4839:     End If
  loc_11F483C:   Else
  loc_11F4843:     If (var_A0 = CLng(3)) Then
  loc_11F4852:       Set var_8C = Me.TxtGrid
  loc_11F4858:       Call 0.Method_Proc_184_57_11F4A640 (0, var_A4, var_AC, FGrid.DispID_10000, var_C4, var_124)
  loc_11F4860:       (var_AC <> vbNullString) = var_A4.Text
  loc_11F486D:       var_194 = Val(var_AC)
  loc_11F48D6:       LateIdCallSt
  loc_11F48FD:       Call Proc_184_53_11478C4(Me.FGrid, CVar(CStr(Format(CVar(var_194), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F491B:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11F4923:       var_F4 = CVar(CLng(4)) 'Long
  loc_11F493D:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11F495E:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11F49AB:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11F49C3:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11F49CB:         Set var_A4 = Me.FGrid
  loc_11F49E7:       End If
  loc_11F49E7:     End If
  loc_11F49E7:   End If
  loc_11F49E7: End If
  loc_11F49FF: Set var_8C = Me.TxtGrid
  loc_11F4A05: Call 0.Method_Proc_184_57_11F4A640 (0, var_A4, 0, &HFF, &HFF, FGrid.DispID_10000, var_C4)
  loc_11F4A0D: var_A4.Visible = CVar(CLng(Me.FGrid.Col))
  loc_11F4A1D: Set var_8C = Me.FGrid
  loc_11F4A2E: Proc_184_57_11F4A64 = FGrid.DispID_8001
  loc_11F4A34: ' Referenced from: 11F45E4
  loc_11F4A3A: Call 0.Method_arg_50 (var_AC, (var_AC <> vbNullString), var_F4, CVar(CLng(Me.FGrid.Row)))
  loc_11F4A4F: Proc_183_57_104AA84(var_AC, "TxtGridLeave", var_194)
  loc_11F4A61: var_D4 = Proc_184_57_11F4A643FF
End Sub

Public Sub Proc_184_58_18BF9D8
  'Data Table: 52BB24
  Dim Me As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E4 As String
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_52BB44 As Connection15
  Dim unk_52BB46 As Connection15
  Dim var_148 As Recordset15
  Dim var_E0 As Variant
  Dim var_CC As Variant
  Dim var_14C As String
  Dim var_1B0 As Variant
  Dim var_1F4 As Variant
  Dim var_88 As Recordset15
  Dim var_206 As Integer
  Dim var_1C4 As TextBox
  Dim var_200 As String
  Dim var_204 As String
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_20C As String
  Dim var_8C As Recordset15
  Dim var_144 As Variant
  Dim var_AA As Integer
  Dim var_A8 As Double
  Dim var_354 As Variant
  Dim var_3CC As Variant
  loc_18BD1E8: On Error Goto loc_18BF9B0
  loc_18BD202: If (Me.RecordCount > 0) Then
  loc_18BD241:   Set var_CC = Me.Txt
  loc_18BD247:   Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_D0)
  loc_18BD24F:   var_D0.Text = CStr(Me.Fields.Item("subcode").Value)
  loc_18BD2A1:   Set var_CC = Me.Txt
  loc_18BD2A7:   Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_D0)
  loc_18BD2AF:   var_D0.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_18BD2D2:   var_F4 = "Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY)  LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg Where  S.SubCode='"
  loc_18BD31B:   unk_52BB44.Execute CStr(var_F4 & Me.Fields.Item("subcode").Value & "'"), var_144, -1
  loc_18BD326:   Set var_88 = var_CC
  loc_18BD396:   unk_52BB46.Execute CStr("Select U_Name,U_AE,U_EntDt From Subgroup where SubCode='" & Me.Fields.Item("subcode").Value & "'  "), var_144, -1
  loc_18BD3A1:   Set var_148 = var_CC
  loc_18BD3F5:   var_CC = var_148.Fields
  loc_18BD45E:   var_1AC = IIf((Proc_6_38_E68A98(CVar(var_148.Fields.Item("U_AE")), var_CC) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_CC.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_18BD4A3:   Me.LblUser.Caption = CStr(var_CC & CVar(Proc_6_38_E68A98(CVar(var_148.Fields.Item("U_Name")), var_1AC)))
  loc_18BD51D:   var_D0 = var_148.Fields.Item("U_AE")
  loc_18BD54A:   var_14C = Proc_6_38_E68A98(CVar(var_D0))
  loc_18BD57E:   var_1AC = IIf((Proc_6_38_E68A98(CVar(var_148.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((var_14C = "E"), "Last Update : ", "entdt : "))
  loc_18BD59D:   var_1C4 = var_148.Fields.Item("U_EntDt")
  loc_18BD5C3:   Me.LblLDt.Caption = CStr(var_1AC & CVar(Proc_6_38_E68A98(CVar(var_1C4))))
  loc_18BD60F:   If (var_88.RecordCount > 0) Then
  loc_18BD651:     If (Me.Fields.Item("Name").Value = "Cash") Then
  loc_18BD65A:       global_60 = "Y"
  loc_18BD661:     Else
  loc_18BD667:       global_60 = "N"
  loc_18BD66B:     End If
  loc_18BD685:     var_C8 = var_88.Fields.Item("Name")
  loc_18BD6A4:     Set var_CC = Me.Txt
  loc_18BD6AA:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(1), var_D0)
  loc_18BD6B2:     var_D0.Text = CStr(var_C8.Value)
  loc_18BD6D6:     Set var_B4 = Me.Txt
  loc_18BD6DC:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(1), var_C8)
  loc_18BD6EF:     global_76 = var_C8.Text
  loc_18BD733:     Set var_CC = Me.Txt
  loc_18BD739:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(2), var_D0)
  loc_18BD741:     var_D0.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("TDSNAME")))
  loc_18BD77D:     var_206 = IsNull(CVar(var_88.Fields.Item("GroupName")))
  loc_18BD797:     var_D0 = var_88.Fields.Item("GroupName")
  loc_18BD7A8:     var_104 = vbNullString
  loc_18BD7CF:     Set var_1B0 = Me.Txt
  loc_18BD7D5:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(3), var_1C4)
  loc_18BD7DD:     var_1C4.Text = CStr(IIf(var_206, var_104, CVar(var_D0)))
  loc_18BD836:     Set var_CC = Me.Txt
  loc_18BD83C:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(3), var_D0)
  loc_18BD844:     var_D0.Tag = CStr(var_88.Fields.Item("GroupCode").Value)
  loc_18BD88B:     global_80 = CStr(var_88.Fields.Item("MainGrCode").Value)
  loc_18BD8D4:     Me.LblNature.Caption = CStr(var_88.Fields.Item("Nature").Value)
  loc_18BD924:     If (var_88.Fields.Item("Nature").Value = "Bank") Then
  loc_18BD933:       Me.FrBankDetail.Visible = True
  loc_18BD93E:     Else
  loc_18BD94A:       Me.FrBankDetail.Visible = False
  loc_18BD952:     End If
  loc_18BD96C:     var_C8 = var_88.Fields.Item("GNature")
  loc_18BD974:     var_E0 = var_C8.Value
  loc_18BD9A0:     var_D0 = var_88.Fields.Item("GNature")
  loc_18BD9D2:     If CBool((var_E0 = "A") Or (var_D0.Value = "L")) Then
  loc_18BD9DC:       global_96 = CByte(1)
  loc_18BD9E3:     Else
  loc_18BD9EA:       global_96 = CByte(0)
  loc_18BD9EE:     End If
  loc_18BD9F6:     If (MemVar_1F92078 = "HO") Then
  loc_18BDA07:       Set var_B4 = Me.Txt
  loc_18BDA0D:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_C8, var_14C)
  loc_18BDA15:       global_96 = var_C8.Text
  loc_18BDA20:       var_F4 = 0
  loc_18BDA5B:       unk_52BB44.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1
  loc_18BDA63:       var_CC = var_CC.Fields
  loc_18BDA6B:       var_F4 = var_D0.Item(var_D0)
  loc_18BDA73:       var_1B0 = var_1B0.Value
  loc_18BDAAE:       Set var_B4 = Me.Txt
  loc_18BDAB4:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_C8, var_14C, CSng(var_104))
  loc_18BDAC7:       var_F4 = 0
  loc_18BDB02:       unk_52BB44.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1
  loc_18BDB0A:       var_CC = var_CC.Fields
  loc_18BDB12:       var_F4 = var_D0.Item(var_D0)
  loc_18BDB1A:       var_1B0 = var_1B0.Value
  loc_18BDB23:       var_9C = CSng(var_C8.Text)
  loc_18BDB4A:     Else
  loc_18BDB58:       Set var_B4 = Me.Txt
  loc_18BDB5E:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_C8, var_14C, var_9C)
  loc_18BDB71:       var_F4 = 0
  loc_18BDBA3:       var_204 = "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "' AND LOGSITE_CODE='"
  loc_18BDBBA:       unk_52BB44.Execute var_204 & MemVar_1F92078 & "'", var_E0, -1
  loc_18BDBC2:       var_CC = var_CC.Fields
  loc_18BDBCA:       var_F4 = var_D0.Item(var_D0)
  loc_18BDBD2:       var_1B0 = var_1B0.Value
  loc_18BDBDB:       var_94 = CSng(var_C8.Text)
  loc_18BDC11:       Set var_B4 = Me.Txt
  loc_18BDC17:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_C8, var_14C, var_94)
  loc_18BDC2A:       var_F4 = 0
  loc_18BDC5C:       var_204 = "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "' AND LOGSITE_CODE='"
  loc_18BDC73:       unk_52BB44.Execute var_204 & MemVar_1F92078 & "'", var_E0, -1
  loc_18BDC7B:       var_CC = var_CC.Fields
  loc_18BDC83:       var_F4 = var_D0.Item(var_D0)
  loc_18BDC8B:       var_1B0 = var_1B0.Value
  loc_18BDC94:       var_9C = CSng(var_C8.Text)
  loc_18BDCBC:     End If
  loc_18BDCD9:     var_E0 = CVar(Abs((var_9C - var_94))) 'Double
  loc_18BDCF7:     Set var_B4 = Me.Txt
  loc_18BDCFD:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H19), var_C8, CStr(Format(var_E0, "0.00")), 1, 1)
  loc_18BDD05:     var_C8.Text = var_9C
  loc_18BDD6A:     var_E4 = CStr(IIf((var_94 > var_9C), "Cr", IIf((var_94 < var_9C), "Dr", vbNullString)))
  loc_18BDD78:     Me.LblOpBalType.Caption = var_E4
  loc_18BDDA2:     Set var_B4 = Me.Txt
  loc_18BDDA8:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_C8, var_E4)
  loc_18BDDB0:     var_104 = var_C8.Text
  loc_18BDDC8:     Set var_CC = Me.txtCurrBal
  loc_18BDDCE:     var_CC.Text = Proc_183_42_107D990(var_E4, global_96)
  loc_18BDDEB:     If (MemVar_1F92078 = "HO") Then
  loc_18BDE0C:       Set var_B4 = Me.Txt
  loc_18BDE12:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_18BDE1A:       var_E0 = var_C8.Text
  loc_18BDE23:       var_14C = -1 & var_E4
  loc_18BDE33:       unk_52BB44.Execute var_14C & "'", var_CC, var_206
  loc_18BDE3E:       Set var_8C = var_CC
  loc_18BDE59:     Else
  loc_18BDE77:       Set var_B4 = Me.Txt
  loc_18BDE7D:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_18BDE85:       var_E0 = var_C8.Text
  loc_18BDE8E:       var_14C = -1 & var_E4
  loc_18BDE9C:       var_200 = var_14C & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_18BDEAC:       unk_52BB44.Execute var_200 & "'", var_CC, 
  loc_18BDEB7:       Set var_8C = var_CC
  loc_18BDED3:     End If
  loc_18BDEE7:     If (var_8C.RecordCount > 0) Then
  loc_18BDF90:       Set var_1B0 = Me.Txt
  loc_18BDF96:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H1A), var_1C4, CStr(Format(IIf(IsNull(CVar(var_8C.Fields.Item("CurrBal"))), 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00")))
  loc_18BDF9E:       var_1C4.Text = 1
  loc_18BE007:       var_D0 = var_8C.Fields.Item("CurrBal")
  loc_18BE081:       Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_D0.Value < 0), "Cr", vbNullString)))
  loc_18BE149:       global_92 = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", "Cr"))
  loc_18BE17E:       var_C8 = var_8C.Fields.Item("CurrBal")
  loc_18BE195:       var_F4 = CVar((var_94 - var_9C)) 'Double
  loc_18BE199:       var_104 = (var_C8.Value + 0)
  loc_18BE1AC:       Set var_CC = Me.Txt
  loc_18BE1B2:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H1A), var_D0, CStr((var_8C.Fields.Item("CurrBal").Value > 0)))
  loc_18BE1BA:       var_D0.Tag = CSng(var_8C.Fields.Item("CurrBal").Value)
  loc_18BE1D7:     Else
  loc_18BE1E9:       Set var_B4 = Me.Txt
  loc_18BE1EF:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H1A), var_C8, CStr(0))
  loc_18BE1F7:       var_C8.Text = 1
  loc_18BE213:       Me.LblCurBalType.Caption = vbNullString
  loc_18BE22A:       global_92 = "Cr"
  loc_18BE240:       Set var_B4 = Me.Txt
  loc_18BE246:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H1A), var_C8, CStr(0))
  loc_18BE24E:       var_C8.Tag = CDbl(0)
  loc_18BE25D:     End If
  loc_18BE285:     var_206 = IsNull(CVar(var_88.Fields.Item("ConPrefix")))
  loc_18BE2D7:     Set var_1B0 = Me.Txt
  loc_18BE2DD:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(4), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ConPrefix")))))
  loc_18BE2E5:     var_1C4.Text = var_206
  loc_18BE32D:     var_206 = IsNull(CVar(var_88.Fields.Item("ConPerson")))
  loc_18BE37F:     Set var_1B0 = Me.Txt
  loc_18BE385:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(5), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ConPerson")))))
  loc_18BE38D:     var_1C4.Text = var_206
  loc_18BE3D5:     var_206 = IsNull(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_18BE427:     Set var_1B0 = Me.Txt
  loc_18BE42D:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H1C), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ConPersonMName")))))
  loc_18BE435:     var_1C4.Text = var_206
  loc_18BE47D:     var_206 = IsNull(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_18BE4CF:     Set var_1B0 = Me.Txt
  loc_18BE4D5:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H1D), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ConPersonLName")))))
  loc_18BE4DD:     var_1C4.Text = var_206
  loc_18BE525:     var_206 = IsNull(CVar(var_88.Fields.Item("ChequeType")))
  loc_18BE577:     Set var_1B0 = Me.Txt
  loc_18BE57D:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H1E), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ChequeType")))))
  loc_18BE585:     var_1C4.Text = var_206
  loc_18BE5CD:     var_206 = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_18BE61F:     Set var_1B0 = Me.Txt
  loc_18BE625:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(6), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Add1")))))
  loc_18BE62D:     var_1C4.Text = var_206
  loc_18BE675:     var_206 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_18BE6C7:     Set var_1B0 = Me.Txt
  loc_18BE6CD:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(7), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Add2")))))
  loc_18BE6D5:     var_1C4.Text = var_206
  loc_18BE71D:     var_206 = IsNull(CVar(var_88.Fields.Item("Add3")))
  loc_18BE76F:     Set var_1B0 = Me.Txt
  loc_18BE775:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(8), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Add3")))))
  loc_18BE77D:     var_1C4.Text = var_206
  loc_18BE7C5:     var_206 = IsNull(CVar(var_88.Fields.Item("CityName")))
  loc_18BE817:     Set var_1B0 = Me.Txt
  loc_18BE81D:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(9), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("CityName")))))
  loc_18BE825:     var_1C4.Text = var_206
  loc_18BE86D:     var_206 = IsNull(CVar(var_88.Fields.Item("CITYCODE")))
  loc_18BE8BF:     Set var_1B0 = Me.Txt
  loc_18BE8C5:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(9), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("CITYCODE")))))
  loc_18BE8CD:     var_1C4.Tag = var_206
  loc_18BE915:     var_206 = IsNull(CVar(var_88.Fields.Item("Phone")))
  loc_18BE967:     Set var_1B0 = Me.Txt
  loc_18BE96D:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&HB), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Phone")))))
  loc_18BE975:     var_1C4.Text = var_206
  loc_18BE9BD:     var_206 = IsNull(CVar(var_88.Fields.Item("Mobile")))
  loc_18BEA0F:     Set var_1B0 = Me.Txt
  loc_18BEA15:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&HC), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Mobile")))))
  loc_18BEA1D:     var_1C4.Text = var_206
  loc_18BEA65:     var_206 = IsNull(CVar(var_88.Fields.Item("Fax")))
  loc_18BEAB7:     Set var_1B0 = Me.Txt
  loc_18BEABD:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&HD), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Fax")))))
  loc_18BEAC5:     var_1C4.Text = var_206
  loc_18BEB0D:     var_206 = IsNull(CVar(var_88.Fields.Item("Email")))
  loc_18BEB27:     var_D0 = var_88.Fields.Item("Email")
  loc_18BEB5F:     Set var_1B0 = Me.Txt
  loc_18BEB65:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&HE), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_D0))))
  loc_18BEB6D:     var_1C4.Text = var_206
  loc_18BEBC3:     Set var_CC = Me.Txt
  loc_18BEBC9:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H1B), var_D0)
  loc_18BEBD1:     var_D0.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("TINNo")))
  loc_18BEC1B:     Set var_CC = Me.Txt
  loc_18BEC21:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H1F), var_D0)
  loc_18BEC29:     var_D0.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("GSTIN")))
  loc_18BEC57:     var_C8 = var_88.Fields.Item("Religion")
  loc_18BECB5:     If CBool((var_C8.Value = 0) Or IsNull(CVar(var_88.Fields.Item("Religion")))) Then
  loc_18BECC6:       Set var_B4 = Me.Txt
  loc_18BECCC:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H11), var_C8)
  loc_18BECD4:       var_C8.Text = "N/A"
  loc_18BECE3:     Else
  loc_18BECFD:       var_C8 = var_88.Fields.Item("Religion")
  loc_18BED1F:       If (var_C8.Value = 1) Then
  loc_18BED30:         Set var_B4 = Me.Txt
  loc_18BED36:         Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H11), var_C8)
  loc_18BED3E:         var_C8.Text = "Hindu"
  loc_18BED4D:       Else
  loc_18BED67:         var_C8 = var_88.Fields.Item("Religion")
  loc_18BED89:         If (var_C8.Value = 2) Then
  loc_18BED9A:           Set var_B4 = Me.Txt
  loc_18BEDA0:           Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H11), var_C8)
  loc_18BEDA8:           var_C8.Text = "Muslim"
  loc_18BEDB7:         Else
  loc_18BEDD1:           var_C8 = var_88.Fields.Item("Religion")
  loc_18BEDF3:           If (var_C8.Value = 3) Then
  loc_18BEE04:             Set var_B4 = Me.Txt
  loc_18BEE0A:             Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H11), var_C8)
  loc_18BEE12:             var_C8.Text = "Sikh"
  loc_18BEE21:           Else
  loc_18BEE3B:             var_C8 = var_88.Fields.Item("Religion")
  loc_18BEE5D:             If (var_C8.Value = 4) Then
  loc_18BEE6E:               Set var_B4 = Me.Txt
  loc_18BEE74:               Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H11), var_C8)
  loc_18BEE7C:               var_C8.Text = "Christian"
  loc_18BEE88:             End If
  loc_18BEE88:           End If
  loc_18BEE88:         End If
  loc_18BEE88:       End If
  loc_18BEE88:     End If
  loc_18BEEB0:     var_206 = IsNull(CVar(var_88.Fields.Item("CreditLimit")))
  loc_18BEF02:     Set var_1B0 = Me.Txt
  loc_18BEF08:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&HF), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("CreditLimit")))))
  loc_18BEF10:     var_1C4.Text = var_206
  loc_18BEF58:     var_206 = IsNull(CVar(var_88.Fields.Item("CreditDays")))
  loc_18BEF72:     var_D0 = var_88.Fields.Item("CreditDays")
  loc_18BEFAA:     Set var_1B0 = Me.Txt
  loc_18BEFB0:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H10), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_D0))))
  loc_18BEFB8:     var_1C4.Text = var_206
  loc_18BF043:     Set var_CC = Me.Txt
  loc_18BF049:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H18), var_D0)
  loc_18BF051:     var_D0.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 0), "No", "Yes"))
  loc_18BF099:     var_206 = IsNull(CVar(var_88.Fields.Item("CstNo")))
  loc_18BF0EB:     Set var_1B0 = Me.Txt
  loc_18BF0F1:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H12), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("CstNo")))))
  loc_18BF0F9:     var_1C4.Text = var_206
  loc_18BF141:     var_206 = IsNull(CVar(var_88.Fields.Item("LstNo")))
  loc_18BF193:     Set var_1B0 = Me.Txt
  loc_18BF199:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H13), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("LstNo")))))
  loc_18BF1A1:     var_1C4.Text = var_206
  loc_18BF1E9:     var_206 = IsNull(CVar(var_88.Fields.Item("PanNo")))
  loc_18BF23B:     Set var_1B0 = Me.Txt
  loc_18BF241:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H14), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("PanNo")))))
  loc_18BF249:     var_1C4.Text = var_206
  loc_18BF291:     var_206 = IsNull(CVar(var_88.Fields.Item("ITWARD_NO")))
  loc_18BF2E3:     Set var_1B0 = Me.Txt
  loc_18BF2E9:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H15), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ITWARD_NO")))))
  loc_18BF2F1:     var_1C4.Text = var_206
  loc_18BF328:     var_C8 = var_88.Fields.Item("Remark")
  loc_18BF339:     var_206 = IsNull(CVar(var_C8))
  loc_18BF34B:     var_CC = var_88.Fields
  loc_18BF364:     var_104 = vbNullString
  loc_18BF38B:     Set var_1B0 = Me.Txt
  loc_18BF391:     Call 0.Method_Proc_184_58_18BF9D80 (CInt(&H16), var_1C4, CStr(IIf(var_206, var_104, CVar(var_CC.Item("Remark")))))
  loc_18BF399:     var_1C4.Text = var_206
  loc_18BF3CC:     Me.FGrid.Rows = 1
  loc_18BF3DC:     If (MemVar_1F92078 = "HO") Then
  loc_18BF3F3:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_18BF3FA:       var_14C = var_E4 & "' and V_Type='"
  loc_18BF419:       Set var_B4 = Me.Txt
  loc_18BF41F:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_C8, var_200, var_14C & "F_AO" & "' and SubCode='")
  loc_18BF427:       var_E0 = var_C8.Text
  loc_18BF430:       var_20C = -1 & var_200
  loc_18BF440:       unk_52BB44.Execute var_14C & "F_AO" & "' and SubCode='" & MemVar_1F92078 & "' Order by V_SNo", var_CC, var_206
  loc_18BF44B:       Set var_88 = var_CC
  loc_18BF46E:     Else
  loc_18BF482:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_18BF49A:       Set var_B4 = Me.Txt
  loc_18BF4A0:       Call 0.Method_Proc_184_58_18BF9D80 (CInt(0), var_C8, var_14C, var_E4 & "' and SubCode='")
  loc_18BF4A8:       var_E0 = var_C8.Text
  loc_18BF4B1:       var_200 = -1 & var_14C
  loc_18BF4CF:       unk_52BB44.Execute var_200 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_CC, 
  loc_18BF4DA:       Set var_88 = var_CC
  loc_18BF4FA:     End If
  loc_18BF50E:     If (var_88.RecordCount > 0) Then
  loc_18BF513:       var_AA = 1
  loc_18BF541:       var_E4 = CStr(var_88.Fields.Item("DocID").Value)
  loc_18BF547:       global_72 = var_E4
  loc_18BF587:       global_64 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_18BF594:       ' Referenced from: 18BF905
  loc_18BF5A3:       If Not(var_88.EOF) Then
  loc_18BF5E2:         If (var_88.Fields.Item("AmtCr").Value = 0) Then
  loc_18BF5E8:           var_A0 = "Dr"
  loc_18BF611:           Proc_183_3_E7D1C8(var_104, CVar(var_88.Fields.Item("AmtDr")))
  loc_18BF61A:           var_A8 = CSng(var_104)
  loc_18BF62A:         Else
  loc_18BF666:           If (var_88.Fields.Item("AmtDr").Value = 0) Then
  loc_18BF66C:             var_A0 = "Cr"
  loc_18BF695:             Proc_183_3_E7D1C8(var_104, CVar(var_88.Fields.Item("AmtCr")), var_A8)
  loc_18BF69E:             var_A8 = CSng(var_104)
  loc_18BF6AB:           End If
  loc_18BF6AB:         End If
  loc_18BF6D2:         Proc_183_3_E7D1C8(var_250, var_A8, var_A8)
  loc_18BF758:         var_1F4 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Narration")), 1 & Format(CVar(var_88.Fields.Item("V_DATE")), "dd/MMM/yyyy") & Chr(9), 1)) 'String
  loc_18BF7F2:         Proc_183_3_E7D1C8(var_2F0, CVar(var_88.Fields.Item("V_NO")), 1 & Format(var_250, "0.00") & Chr(9) & CVar(var_A0) & Chr(9), 1)
  loc_18BF83A:         var_354 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("SITE_DESC")), CVar(var_AA) & Chr(9) & var_1F4 & Chr(9) & var_2F0 & Chr(9))) 'String
  loc_18BF884:         var_3CC = CVar(CStr(global_64 & var_354 & Chr(9) & var_88.Fields.Item("Site_Code").Value)) 'String
  loc_18BF88C:         Set var_3E0 = Me.FGrid
  loc_18BF8FA:         var_AA = (var_AA + 1)
  loc_18BF900:         var_88.MoveNext
  loc_18BF905:         GoTo loc_18BF594
  loc_18BF908:       End If
  loc_18BF91B:       Me.FGrid.FixedRows = 1
  loc_18BF926:     Else
  loc_18BF92C:       global_72 = vbNullString
  loc_18BF938:       global_64 = 0
  loc_18BF950:       var_104 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_18BF958:       Set var_C8 = Me.FGrid
  loc_18BF987:       Me.FGrid.FixedRows = 1
  loc_18BF98F:     End If
  loc_18BF994:     Set var_88 = Nothing
  loc_18BF997:   End If
  loc_18BF99A: Else
  loc_18BF99A:   Call Proc_184_50_FBC468(FGrid.DispID_10000, var_104, global_64, var_AA)
  loc_18BF99F: End If
  loc_18BF9A4: Set var_88 = Nothing
  loc_18BF9AC: Set var_8C = Nothing
  loc_18BF9AF: Exit Sub
  loc_18BF9B0: ' Referenced from: 18BD1E8
  loc_18BF9B6: Call 0.Method_arg_50 (var_E4, FGrid.DispID_10000)
  loc_18BF9CB: Proc_183_57_104AA84(var_E4, "MoveRec")
  loc_18BF9D7: Exit Sub
End Sub

Public Sub Proc_184_59_15E27A8(arg_C, arg_10, arg_14, arg_18, arg_1C) '15E27A8
  'Data Table: 52BB24
  Dim var_98 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As String
  Dim unk_52BB44 As Connection15
  Dim var_88 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_59C As TextBox
  Dim var_9C As Variant
  Dim var_F0 As String
  Dim var_FC As String
  Dim var_108 As TextBox
  Dim var_194 As Variant
  Dim var_1EC As Variant
  Dim var_214 As TextBox
  Dim var_260 As TextBox
  Dim var_284 As Variant
  Dim var_2AC As TextBox
  Dim var_2F8 As TextBox
  Dim var_31C As Variant
  Dim var_344 As TextBox
  Dim var_388 As Variant
  Dim var_390 As TextBox
  Dim var_3DC As TextBox
  Dim var_428 As TextBox
  Dim var_44C As Variant
  Dim var_474 As TextBox
  Dim var_498 As Variant
  Dim var_504 As TextBox
  Dim var_550 As TextBox
  Dim var_574 As Variant
  Dim var_638 As TextBox
  Dim var_684 As TextBox
  Dim var_6A8 As Variant
  Dim var_6D0 As TextBox
  Dim var_6F4 As Variant
  Dim var_71C As TextBox
  Dim var_768 As TextBox
  Dim var_7AC As Variant
  Dim var_81C As Variant
  Dim var_8C8 As Variant
  Dim var_910 As TextBox
  Dim var_954 As Variant
  Dim var_95C As TextBox
  Dim var_9D8 As Variant
  loc_15E16B8: On Error Goto loc_15E277D
  loc_15E16D9: Set var_94 = Me.Txt
  loc_15E16DF: Call 0.Method_Proc_184_59_15E27A80 (CInt(3), var_98, var_9C, "SELECT * From AcGroup Where GroupCode='")
  loc_15E16E7: var_C4 = var_98.Tag
  loc_15E16F0: var_A0 = -1 & var_9C
  loc_15E1700: unk_52BB44.Execute var_A0 & "'", var_C8, 
  loc_15E170B: Set var_88 = var_C8
  loc_15E1737: If (var_88.RecordCount > 0) Then
  loc_15E1762:   var_8C = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Nature")))
  loc_15E1782:   var_98 = var_88.Fields.Item("GroupNature")
  loc_15E1793:   var_90 = Proc_183_2_E5A304(CVar(var_98))
  loc_15E179F: Else
  loc_15E17A2:   var_8C = "Other"
  loc_15E17A8:   var_90 = vbNullString
  loc_15E17AB: End If
  loc_15E17B3: If (arg_C = "Add") Then
  loc_15E17C4:   Set var_598 = Me.Txt
  loc_15E17CA:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H18), var_59C)
  loc_15E17DE:   var_9C = "Insert Into " & arg_10
  loc_15E17E5:   var_A0 = var_9C & " (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,ConPersonMName,ConPersonLName,Add1,Add2,Add3,CityCode,areacode,Phone,Mobile,Fax,EMail,Religion,CreditLimit,CreditDays,ActiveYN,CSTNo,LSTNo,PANNo,ITWard_No,Remark,U_Name,U_EntDt,U_AE,TDS_Catg,LOGSITE_CODE,TINNo,GSTIN,ChequeType) Values ('"
  loc_15E1836:   Set var_94 = Me.Txt
  loc_15E183C:   Call 0.Method_Proc_184_59_15E27A80 (CInt(3), var_98)
  loc_15E185B:   var_FC = var_A0 & MemVar_1F92070 & "','" & arg_14 & "','" & arg_18 & "','" & Proc_183_20_FB3974(arg_18) & "','" & var_98.Tag & "','" & var_90
  loc_15E1881:   Set var_C8 = Me.Txt
  loc_15E1887:   Call 0.Method_Proc_184_59_15E27A80 (CInt(4), var_108)
  loc_15E18AD:   Set var_118 = Me.Txt
  loc_15E18B3:   Call 0.Method_Proc_184_59_15E27A80 (CInt(5), var_11C)
  loc_15E18E2:   Set var_160 = Me.Txt
  loc_15E18E8:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1C), var_164)
  loc_15E1917:   Set var_1B8 = Me.Txt
  loc_15E191D:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1D), var_1BC)
  loc_15E1934:   var_1EC = CVar(var_FC & "','" & var_8C & "','" & var_108.Text & "','") & Trim(CVar(var_11C)) & "','" & Trim(CVar(var_164)) & "','" & Trim(CVar(var_1BC)) 
  loc_15E194F:   Set var_210 = Me.Txt
  loc_15E1955:   Call 0.Method_Proc_184_59_15E27A80 (CInt(6), var_214)
  loc_15E1983:   Set var_25C = Me.Txt
  loc_15E1989:   Call 0.Method_Proc_184_59_15E27A80 (CInt(7), var_260)
  loc_15E19B7:   Set var_2A8 = Me.Txt
  loc_15E19BD:   Call 0.Method_Proc_184_59_15E27A80 (CInt(8), var_2AC)
  loc_15E19EB:   Set var_2F4 = Me.Txt
  loc_15E19F1:   Call 0.Method_Proc_184_59_15E27A80 (CInt(9), var_2F8)
  loc_15E1A04:   var_31C = var_1EC & "','" & CVar(var_214.Text) & "','" & CVar(var_260.Text) & "','" & CVar(var_2AC.Text) & "','" & CVar(var_2F8.Tag) 
  loc_15E1A1F:   Set var_340 = Me.Txt
  loc_15E1A25:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&HA), var_344)
  loc_15E1A53:   Set var_38C = Me.Txt
  loc_15E1A59:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&HB), var_390)
  loc_15E1A87:   Set var_3D8 = Me.Txt
  loc_15E1A8D:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&HC), var_3DC)
  loc_15E1ABB:   Set var_424 = Me.Txt
  loc_15E1AC1:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&HD), var_428)
  loc_15E1AD4:   var_44C = var_31C & "','" & CVar(var_344.Tag) & "','" & CVar(var_390.Text) & "','" & CVar(var_3DC.Text) & "','" & CVar(var_428.Text) 
  loc_15E1AEF:   Set var_470 = Me.Txt
  loc_15E1AF5:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&HE), var_474)
  loc_15E1B18:   Call Proc_184_54_F73CB8(var_4BA)
  loc_15E1B40:   Set var_500 = Me.Txt
  loc_15E1B46:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&HF), var_504)
  loc_15E1B7A:   Set var_54C = Me.Txt
  loc_15E1B80:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H10), var_550)
  loc_15E1B99:   var_574 = var_44C & "','" & CVar(var_474.Text) & "'," & CVar(var_4BA) & "," & CVar(Val(var_504.Text)) & "," & CVar(Val(var_550.Text)) 
  loc_15E1BE2:   Set var_634 = Me.Txt
  loc_15E1BE8:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H12), var_638)
  loc_15E1C16:   Set var_680 = Me.Txt
  loc_15E1C1C:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H13), var_684)
  loc_15E1C4A:   Set var_6CC = Me.Txt
  loc_15E1C50:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H14), var_6D0)
  loc_15E1C63:   var_6F4 = var_574 & "," & IIf((var_59C.Text = "Yes"), 1, 0) & ",'" & CVar(var_638.Text) & "','" & CVar(var_684.Text) & "','" & CVar(var_6D0.Text) 
  loc_15E1C7E:   Set var_718 = Me.Txt
  loc_15E1C84:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H15), var_71C)
  loc_15E1CB2:   Set var_764 = Me.Txt
  loc_15E1CB8:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H16), var_768)
  loc_15E1CF9:   Proc_183_7_EB0C44(var_80C, Now)
  loc_15E1D01:   var_81C = var_6F4 & "','" & CVar(var_71C.Text) & "','" & CVar(var_768.Text) & "','" & CVar(MemVar_1F920C8) & "'," & var_80C 
  loc_15E1D2F:   Set var_880 = Me.Txt
  loc_15E1D35:   Call 0.Method_Proc_184_59_15E27A80 (CInt(2), var_884)
  loc_15E1D76:   Set var_90C = Me.Txt
  loc_15E1D7C:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1B), var_910)
  loc_15E1D98:   var_954 = var_81C & ",'" & CVar(arg_1C) & "','" & CVar(var_884.Tag) & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_910.Text) & "','" 
  loc_15E1DAA:   Set var_958 = Me.Txt
  loc_15E1DB0:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1F), var_95C)
  loc_15E1DDB:   Set var_9A4 = Me.Txt
  loc_15E1DE1:   Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1E), var_9A8)
  loc_15E1E0C:   global_132 = CStr(var_954 & CVar(var_95C.Text) & "','" & Trim(CVar(var_9A8)) & "')")
  loc_15E1F60: Else
  loc_15E1F68:   If (arg_C = "Edit") Then
  loc_15E1F79:     Set var_598 = Me.Txt
  loc_15E1F7F:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H18), var_59C)
  loc_15E1F93:     var_9C = "Update " & arg_10
  loc_15E1F9A:     var_A0 = var_9C & " Set Name='"
  loc_15E1FCF:     Set var_94 = Me.Txt
  loc_15E1FD5:     Call 0.Method_Proc_184_59_15E27A80 (CInt(3), var_98)
  loc_15E1FFB:     var_F0 = var_A0 & arg_18 & "',NameHelp='" & Proc_183_20_FB3974(arg_18) & "',GroupCode='" & var_98.Tag & "',GroupNature='" & var_90 & "',Nature='"
  loc_15E2020:     Call 0.Method_Proc_184_59_15E27A80 (CInt(4), var_108)
  loc_15E2046:     Set var_118 = Me.Txt
  loc_15E204C:     Call 0.Method_Proc_184_59_15E27A80 (CInt(5), var_11C)
  loc_15E207B:     Set var_160 = Me.Txt
  loc_15E2081:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1C), var_164)
  loc_15E2098:     var_194 = CVar(var_F0 & var_8C & "',ConPrefix='" & var_108.Text & "',ConPerson='") & Trim(CVar(var_11C)) & "',ConPersonMName='" & Trim(CVar(var_164)) 
  loc_15E20B0:     Set var_1B8 = Me.Txt
  loc_15E20B6:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1D), var_1BC)
  loc_15E20E8:     Set var_210 = Me.Txt
  loc_15E20EE:     Call 0.Method_Proc_184_59_15E27A80 (CInt(6), var_214)
  loc_15E211C:     Set var_25C = Me.Txt
  loc_15E2122:     Call 0.Method_Proc_184_59_15E27A80 (CInt(7), var_260)
  loc_15E2135:     var_284 = var_194 & "',ConPersonLName='" & Trim(CVar(var_1BC)) & "',Add1='" & CVar(var_214.Text) & "',Add2='" & CVar(var_260.Text) 
  loc_15E2150:     Set var_2A8 = Me.Txt
  loc_15E2156:     Call 0.Method_Proc_184_59_15E27A80 (CInt(8), var_2AC)
  loc_15E2184:     Set var_2F4 = Me.Txt
  loc_15E218A:     Call 0.Method_Proc_184_59_15E27A80 (CInt(9), var_2F8)
  loc_15E21B8:     Set var_340 = Me.Txt
  loc_15E21BE:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&HA), var_344)
  loc_15E21DA:     var_388 = var_284 & "',Add3='" & CVar(var_2AC.Text) & "',CityCode='" & CVar(var_2F8.Tag) & "',areacode='" & CVar(var_344.Tag) & "',Phone='" 
  loc_15E21EC:     Set var_38C = Me.Txt
  loc_15E21F2:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&HB), var_390)
  loc_15E2220:     Set var_3D8 = Me.Txt
  loc_15E2226:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&HC), var_3DC)
  loc_15E2254:     Set var_424 = Me.Txt
  loc_15E225A:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&HD), var_428)
  loc_15E2288:     Set var_470 = Me.Txt
  loc_15E228E:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&HE), var_474)
  loc_15E22A1:     var_498 = var_388 & CVar(var_390.Text) & "',Mobile='" & CVar(var_3DC.Text) & "',Fax='" & CVar(var_428.Text) & "',EMail='" & CVar(var_474.Text) 
  loc_15E22B1:     Call Proc_184_54_F73CB8(var_4BA)
  loc_15E22D9:     Set var_500 = Me.Txt
  loc_15E22DF:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&HF), var_504)
  loc_15E2313:     Set var_54C = Me.Txt
  loc_15E2319:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H10), var_550)
  loc_15E2332:     var_574 = var_498 & "',Religion=" & CVar(var_4BA) & ",CreditLimit=" & CVar(Val(var_504.Text)) & ",CreditDays=" & CVar(Val(var_550.Text)) 
  loc_15E237B:     Set var_634 = Me.Txt
  loc_15E2381:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H12), var_638)
  loc_15E23AF:     Set var_680 = Me.Txt
  loc_15E23B5:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H13), var_684)
  loc_15E23C8:     var_6A8 = var_574 & ",ActiveYN=" & IIf((var_59C.Text = "Yes"), 1, 0) & ",CSTNo='" & CVar(var_638.Text) & "',LSTNo='" & CVar(var_684.Text) 
  loc_15E23EC:     Set var_6CC = Me.Txt
  loc_15E23F2:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H14), var_6D0)
  loc_15E2420:     Set var_718 = Me.Txt
  loc_15E2426:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H15), var_71C)
  loc_15E2454:     Set var_764 = Me.Txt
  loc_15E245A:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H16), var_768)
  loc_15E246D:     var_7AC = var_6A8 & "'," & "PANNo='" & CVar(var_6D0.Text) & "',ITWard_No='" & CVar(var_71C.Text) & "',Remark='" & CVar(var_768.Text) 
  loc_15E249B:     Proc_183_7_EB0C44(var_81C, Now)
  loc_15E24D1:     Set var_880 = Me.Txt
  loc_15E24D7:     Call 0.Method_Proc_184_59_15E27A80 (CInt(2), var_884)
  loc_15E24EA:     var_8C8 = var_7AC & "',U_Name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_81C & ",U_AE='" & CVar(arg_1C) & "',TDS_Catg='" & CVar(var_884.Tag) 
  loc_15E2505:     Set var_90C = Me.Txt
  loc_15E250B:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1B), var_910)
  loc_15E2539:     Set var_958 = Me.Txt
  loc_15E253F:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1F), var_95C)
  loc_15E256A:     Set var_9A4 = Me.Txt
  loc_15E2570:     Call 0.Method_Proc_184_59_15E27A80 (CInt(&H1E), var_9A8)
  loc_15E2590:     var_9D8 = var_8C8 & "',TINNo='" & CVar(var_910.Text) & "',GSTIN='" & CVar(var_95C.Text) & "',ChequeType='" & Trim(CVar(var_9A8)) & "' Where SUBCODE='" 
  loc_15E25AE:     global_132 = CStr(var_9D8 & CVar(arg_14) & "'")
  loc_15E2717:     Set var_94 = Me.Txt
  loc_15E271D:     Call 0.Method_Proc_184_59_15E27A80 (CInt(3), var_98, var_9C, "UPDATE LEDGER SET LEDGER.GROUPCODE='")
  loc_15E2725:     var_C4 = var_98.Tag
  loc_15E272E:     var_A0 = -1 & var_9C
  loc_15E275A:     unk_52BB44.Execute var_A0 & "',LEDGER.GROUPNATURE='" & var_90 & "' Where LEDGER.SUBCODE='" & arg_14 & "'", Me.Txt, 
  loc_15E277C:   End If
  loc_15E277C: End If
  loc_15E277C: Exit Sub
  loc_15E277D: ' Referenced from: 15E16B8
  loc_15E2783: Call 0.Method_arg_50 (var_9C)
  loc_15E278B: var_A4 = "SubGroupUpdate"
  loc_15E2798: Proc_183_57_104AA84(var_9C)
  loc_15E27A4: Exit Sub
End Sub

Public Sub Proc_184_60_14A96E8
  'Data Table: 52BB24
  Dim var_CC As String
  Dim var_F0 As Variant
  Dim unk_52BB44 As Connection15
  Dim var_B8 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_B4 As Long
  Dim var_118 As Variant
  Dim var_DC As Variant
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_98 As Integer
  Dim var_C8 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_104 As Variant
  Dim var_204 As Date
  Dim var_134 As String
  Dim var_138 As String
  Dim var_B0 As Recordset15
  Dim var_294 As Double
  Dim var_18C As Variant
  Dim var_1E4 As Double
  Dim var_398 As Variant
  Dim var_214 As Variant
  Dim var_274 As Variant
  Dim var_3F8 As Variant
  Dim var_548 As Variant
  Dim Me As Recordset15
  loc_14A8AF8: On Error Goto loc_14A96AA
  loc_14A8AFF: Set var_B8 = Me.TopCtrl1
  loc_14A8B05: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14A8B1E: If (CStr() = "Add") Then
  loc_14A8B27:   var_F0 = 0
  loc_14A8B46:   unk_52BB44.Execute "Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup Where IsNumeric(substring(SubCode,3,6))=1", var_C8, -1
  loc_14A8B4E:   var_B8 = var_B8.Fields
  loc_14A8B56:   var_F0 = var_E0.Item(var_E0)
  loc_14A8B5E:   var_F4 = var_F4.Value
  loc_14A8B9A:   var_C8 = "000000"
  loc_14A8BB3:   var_128 = (1 + Format(CLng(var_104), var_C8))
  loc_14A8BB7:   var_CC = CStr(var_128)
  loc_14A8BC6:   Set var_B8 = Me.Txt
  loc_14A8BCC:   Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_E0, var_CC, 1)
  loc_14A8BD4:   var_E0.Text = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2))
  loc_14A8BFC:   Set var_B8 = Me.Txt
  loc_14A8C02:   Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_E0, var_CC)
  loc_14A8C0A:   var_B4 = var_E0.Text
  loc_14A8C1D:   Set var_F4 = Me.Txt
  loc_14A8C23:   Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_12C)
  loc_14A8C2B:   var_12C.Tag = var_CC
  loc_14A8C41: Else
  loc_14A8C4F:   Set var_B8 = Me.Txt
  loc_14A8C55:   Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_E0)
  loc_14A8C70:   Set var_F4 = Me.Txt
  loc_14A8C76:   Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_12C)
  loc_14A8C7E:   var_12C.Tag = var_E0.Text
  loc_14A8C91: End If
  loc_14A8C9A: unk_52BB44.BeginTrans var_130
  loc_14A8CA1: var_98 = &HFF
  loc_14A8CB2: Set var_B8 = Me.Txt
  loc_14A8CB8: Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_E0, var_138)
  loc_14A8CC0: var_98 = var_E0.Text
  loc_14A8CD3: Set var_F4 = Me.Txt
  loc_14A8CD9: Call 0.Method_Proc_184_60_14A96E80 (CInt(1), var_12C)
  loc_14A8D00: var_134 = "SubGroup"
  loc_14A8D0F: Call Proc_184_59_15E27A8("Add", var_134, var_138, var_12C.Text, "A")
  loc_14A8D45: unk_52BB44.Execute global_132, var_C8, -1
  loc_14A8D75: For var_14C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_14C 'Integer
  loc_14A8D7F:   var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A8D87:   var_15C = CVar(CLng(3)) 'Long
  loc_14A8DB7:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_14A8DBE:     var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A8DC6:     var_15C = CVar(CLng(1)) 'Long
  loc_14A8DE5:     var_17C = CVar(CLng(var_9E)) 'Long
  loc_14A8DED:     var_19C = CVar(CLng(1)) 'Long
  loc_14A8DFC:     var_104 = Me.FGrid.TextMatrix)
  loc_14A8E07:     var_128 = CVar(CStr(var_104)) 'String
  loc_14A8E12:     var_118 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_14A8E3A:     Call Proc_184_55_10C074C(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), CVar(Proc_183_15_EAC900(MemVar_1F92070, 2)), var_128)))
  loc_14A8E45:     global_72 = var_134
  loc_14A8E89:     If (Trim(global_72) = vbNullString) Then
  loc_14A8EA5:       MsgBox("Pl. Configur Numbring System ", 0, var_104, CVar(Proc_183_15_EAC900(MemVar_1F92070, 2)), var_128)
  loc_14A8EB5:       GoTo loc_14A96AA
  loc_14A8EB8:     End If
  loc_14A8ED3:     var_C8 = Me.FGrid.TextMatrix)
  loc_14A8EE3:     var_17C = CVar(CLng(var_9E)) 'Long
  loc_14A8EEB:     var_19C = CVar(CLng(1)) 'Long
  loc_14A8EF4:     Set var_E0 = Me.FGrid
  loc_14A8F10:     var_118 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_14A8F27:     var_1DC = IIf((CStr(var_C8) = vbNullString), CVar(Proc_183_15_EAC900(MemVar_1F92070, 2)), CVar(CStr(var_E0.TextMatrix))))
  loc_14A8F31:     var_204 = CDate(CDate(var_1DC))
  loc_14A8F38:     Proc_183_7_EB0C44(var_214, var_204, var_19C, var_17C, var_C8, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_14A8F51:     var_CC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_14A8F58:     var_134 = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_14A8F5F:     var_138 = var_134 & MemVar_1F92078
  loc_14A8F91:     unk_52BB44.Execute CStr(CVar(var_138 & "' AND V_Type='" & "F_AO" & "' AND ") & var_214 & " BETWEEN DATE_FROM AND DATE_TO"), var_274, -1
  loc_14A8FED:     Set var_B8 = Me.Txt
  loc_14A8FF3:     Call 0.Method_Proc_184_60_14A96E80 (CInt(3), var_E0, CStr(Me.FGrid.TextMatrix)), "SELECT GROUPCODE,GROUPNATURE FROM ACGROUP WHERE GROUPCODE='", var_1DC, -1, var_F4)
  loc_14A9028:     unk_52BB44.Execute CStr(var_134 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_19C, var_17C
  loc_14A9033:     Set var_B0 = var_E0.Tag
  loc_14A9063:     If (var_B0.RecordCount > 0) Then
  loc_14A906A:       var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A909D:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_14A90A3:         var_A4 = "AmtCr"
  loc_14A90B4:         Set var_B8 = Me.Txt
  loc_14A90BA:         Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_E0, var_138, CVar(CLng(4)))
  loc_14A90C2:         var_DC = var_E0.Text
  loc_14A90CB:         var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A90D3:         var_15C = CVar(CLng(3)) 'Long
  loc_14A90F5:         var_294 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14A9123:         var_18C = CVar(CLng(var_9E)) 'Long
  loc_14A913A:         var_104 = Me.FGrid.TextMatrix)
  loc_14A9173:         Proc_183_0_1279094(MemVar_1F921DC, var_138, CDbl(0), var_294, CStr(var_B0.Fields.Item("GroupCode").Value), CDate(CStr(var_104)), var_104, CVar(CLng(1)))
  loc_14A919E:       Else
  loc_14A91A1:         var_A4 = "AmtDr"
  loc_14A91B2:         Set var_B8 = Me.Txt
  loc_14A91B8:         Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_E0, var_138, var_18C, var_294)
  loc_14A91C0:         var_15C = var_E0.Text
  loc_14A91C9:         var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A91D1:         var_15C = CVar(CLng(3)) 'Long
  loc_14A91F3:         var_294 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14A9208:         var_12C = var_B0.Fields
  loc_14A9221:         var_18C = CVar(CLng(var_9E)) 'Long
  loc_14A9238:         var_104 = Me.FGrid.TextMatrix)
  loc_14A9271:         Proc_183_0_1279094(MemVar_1F921DC, var_138, var_294, CDbl(0), CStr(var_12C.Item("GroupCode").Value), CDate(CStr(var_104)), var_104, CVar(CLng(1)))
  loc_14A9299:       End If
  loc_14A92B4:       var_C8 = Me.FGrid.TextMatrix)
  loc_14A92D5:       Set var_E0 = Me.FGrid
  loc_14A92DB:       var_104 = var_E0.TextMatrix)
  loc_14A92E6:       var_128 = CVar(CStr(var_104)) 'String
  loc_14A92F1:       var_118 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_14A9313:       Proc_183_7_EB0C44(var_204, IIf((CStr(var_C8) = vbNullString), var_12C.Item("GroupCode").Value, var_128), CVar(CLng(1)), CVar(CLng(var_9E)), var_C8, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_14A9326:       Set var_F4 = Me.Txt
  loc_14A932C:       Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_12C, var_2B4, var_18C, var_294)
  loc_14A9334:       var_15C = var_12C.Text
  loc_14A9367:       var_1E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14A9385:       var_398 = Me.FGrid.TextMatrix)
  loc_14A939C:       Proc_183_7_EB0C44(var_438, MemVar_1F920EC, var_398, CVar(CLng(2)), CVar(CLng(var_9E)), var_1E4)
  loc_14A93AC:       Proc_183_9_EAA760(var_488, var_AC, CVar(CLng(3)), CVar(CLng(var_9E)))
  loc_14A941A:       var_134 = "Insert Into Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A4 & ",NARRATION,U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_14A9470:       var_214 = CVar(var_134 & global_72 & "'," & CStr(var_9E) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F92070 & "',") 'String
  loc_14A94C4:       var_3F8 = var_214 & var_204 & ",'" & CVar(var_2B4) & "'," & CVar(var_1E4) & ",'" & CVar(CStr(var_398)) & "','" & CVar(MemVar_1F920C8) 
  loc_14A9504:       var_548 = var_3F8 & "'," & var_438 & ",'A'," & var_488 & ",'" & var_B0.Fields.Item("GroupCode").Value & "','" & var_B0.Fields.Item("GroupNature").Value 
  loc_14A952E:       unk_52BB44.Execute CStr(var_548 & "','" & CVar(MemVar_1F92078) & "')"), var_5CC, -1
  loc_14A95BF:     Else
  loc_14A95CD:       var_DC = "Group Not Defined"
  loc_14A95D8:       MsgBox(var_DC, 0, var_104, var_12C.Item("GroupCode").Value, var_128)
  loc_14A95E8:       GoTo loc_14A96AA
  loc_14A95EB:     End If
  loc_14A95EB:   End If
  loc_14A95EE: Next var_14C 'Integer
  loc_14A95F9: unk_52BB44.CommitTrans
  loc_14A9609: Me.Requery -1
  loc_14A9610: var_98 = 0
  loc_14A9621: Set var_B8 = Me.Txt
  loc_14A9627: Call 0.Method_Proc_184_60_14A96E80 (CInt(0), var_E0)
  loc_14A9653: Me.Requery -1
  loc_14A9670: var_CC = "SearchCode = '" & var_E0.Text
  loc_14A9680: Me.Find var_CC & "'", 0, 1
  loc_14A968C: Call TopCtrl1_UnknownEvent_A()
  loc_14A9696: Set var_9C = Nothing
  loc_14A969E: Set var_A8 = Nothing
  loc_14A96A6: Set var_B0 = Nothing
  loc_14A96A9: Exit Sub
  loc_14A96AA: ' Referenced from: 14A95E8
  loc_14A96AA: ' Referenced from: 14A8EB5
  loc_14A96AA: ' Referenced from: 14A8AF8
  loc_14A96B0: If (var_98 = &HFF) Then
  loc_14A96B9:   unk_52BB44.RollbackTrans
  loc_14A96BE: End If
  loc_14A96C4: Call 0.Method_arg_50 (var_CC, var_DC)
  loc_14A96D9: Proc_183_57_104AA84(var_CC, "UpdateDataBaseAdd")
  loc_14A96E5: Exit Sub
End Sub

Public Sub Proc_184_61_155D30C
  'Data Table: 52BB24
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_52BB44 As Connection15
  Dim var_E4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_8A As Integer
  Dim var_B8 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_94 As Recordset15
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_AC As Recordset15
  Dim var_E0 As Variant
  Dim var_178 As Variant
  Dim var_190 As Variant
  Dim var_98 As Recordset15
  Dim var_1F4 As Variant
  Dim var_10C As Variant
  Dim var_244 As Date
  Dim var_2BC As Double
  Dim var_1E4 As Variant
  Dim var_2A4 As Variant
  Dim var_2FC As Variant
  Dim var_168 As Double
  Dim var_3B0 As Variant
  Dim var_1BC As String
  Dim var_1C4 As String
  Dim var_1C8 As String
  Dim var_1D0 As String
  Dim var_254 As Variant
  Dim var_2B4 As Variant
  Dim var_410 As Variant
  Dim var_500 As Variant
  Dim Me As Recordset15
  loc_155C3A0: On Error Goto loc_155D2CD
  loc_155C3D0: Set var_B0 = Me.Txt
  loc_155C3D6: Call 0.Method_Proc_184_61_155D30C0 (CInt(3), var_B4, var_B8, "Select MainGrCode From AcGroup Where GroupCode='", var_E0, -1)
  loc_155C3DE: var_E4 = var_B4.Tag
  loc_155C3E7: var_BC = var_E8 & var_B8
  loc_155C3F7: unk_52BB44.Execute var_BC & "'", 0, var_FC
  loc_155C407:  = var_E8.Item()
  loc_155C40F:  = var_FC.Value
  loc_155C418: var_A4 = CStr(var_E4.Fields)
  loc_155C441: unk_52BB44.BeginTrans var_110
  loc_155C477: Set var_B0 = Me.Txt
  loc_155C47D: Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_B4, var_BC, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_155C485: var_E0 = var_B4.Text
  loc_155C48E: var_114 = -1 & var_BC
  loc_155C49E: unk_52BB44.Execute var_114 & "'", var_E4, &HFF
  loc_155C4A9: Set var_94 = var_E4
  loc_155C4C5: ' Referenced from: 155C5FE
  loc_155C4D4: If Not(var_94.EOF) Then
  loc_155C4F1:   var_B4 = var_94.Fields.Item("subcode")
  loc_155C4F9:   var_E0 = var_B4.Value
  loc_155C510:   var_E4 = var_94.Fields
  loc_155C518:   var_E8 = var_E4.Item("AmtCr")
  loc_155C547:   var_178 = var_94.Fields.Item("AmtDr").Value
  loc_155C56E:   var_190 = var_94.Fields.Item("GroupCode").Value
  loc_155C595:   var_1A0 = var_94.Fields.Item("V_DATE").Value
  loc_155C5C6:   Proc_183_0_1279094(MemVar_1F921DC, CStr(var_E0), CSng(var_E8.Value))
  loc_155C5F9:   var_94.MoveNext
  loc_155C5FE:   GoTo loc_155C4C5
  loc_155C601: End If
  loc_155C609: If (MemVar_1F92078 = "HO") Then
  loc_155C620:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_155C627:   var_BC = var_B8 & "' and V_Type='"
  loc_155C646:   Set var_B0 = Me.Txt
  loc_155C64C:   Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_B4, var_114, var_BC & "F_AO" & "' and SubCode='", var_E0)
  loc_155C654:   -1 = var_B4.Text
  loc_155C66D:   unk_52BB44.Execute var_E4 & var_114 & "' Order by V_SNo", CSng(var_178), CStr(var_190)
  loc_155C678:   Set var_AC = var_E4
  loc_155C69B: Else
  loc_155C6AF:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_155C6C7:   Set var_B0 = Me.Txt
  loc_155C6CD:   Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_B4, var_BC, var_B8 & "' and SubCode='")
  loc_155C6D5:   var_E0 = var_B4.Text
  loc_155C6DE:   var_114 = -1 & var_BC
  loc_155C6FC:   unk_52BB44.Execute var_114 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_E4, CDate(var_1A0)
  loc_155C707:   Set var_AC = var_E4
  loc_155C727:   ' Referenced from:   155C82D
  loc_155C727: End If
  loc_155C736: If Not(var_AC.EOF) Then
  loc_155C753:   var_B4 = var_AC.Fields.Item("DocID")
  loc_155C75B:   var_E0 = var_B4.Value
  loc_155C765:   var_1D0 = 0
  loc_155C778:   var_1C8 = 0
  loc_155C783:   var_1C4 = 0
  loc_155C796:   var_1BC = 0
  loc_155C7A1:   var_1B0 = 0
  loc_155C7B4:   var_1AC = 0
  loc_155C7D2:   var_114 = 0
  loc_155C7FD:   Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGER", "DocId", &HC8, CStr(var_E0), var_114, 0, 0)
  loc_155C828:   var_AC.MoveNext
  loc_155C82D:   GoTo loc_155C727
  loc_155C830: End If
  loc_155C835: Set var_AC = Nothing
  loc_155C85A: var_C0 = "Delete From Ledger Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND V_Type='" & "F_AO"
  loc_155C861: var_118 = var_C0 & "' and SubCode= '"
  loc_155C872: Set var_B0 = Me.Txt
  loc_155C878: Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_B4, var_114, var_118, var_E0, -1, var_E4)
  loc_155C880: var_1AC = var_B4.Text
  loc_155C899: unk_52BB44.Execute 0 & var_114 & "'", 0 & var_114 & "'", var_1BC
  loc_155C8C9: Set var_B0 = Me.Txt
  loc_155C8CF: Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_B4, var_C0)
  loc_155C8D7: 0 = var_B4.Text
  loc_155C8EA: Set var_E4 = Me.Txt
  loc_155C8F0: Call 0.Method_Proc_184_61_155D30C0 (CInt(1), var_E8, var_118)
  loc_155C8F8: var_1C4 = var_E8.Text
  loc_155C917: var_BC = "SubGroup"
  loc_155C926: Call Proc_184_59_15E27A8("Edit", var_BC, var_C0, var_118, "E")
  loc_155C95C: unk_52BB44.Execute global_132, var_E0, -1
  loc_155C98F: For var_1D4 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_8C = var_1D4 'Byte
  loc_155C99A:   var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155C9D2:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_155C9E2:     var_D0 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='"
  loc_155C9F2:     Set var_B0 = Me.Txt
  loc_155C9F8:     Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_B4, var_D0, var_1A0, -1, var_E4)
  loc_155CA26:     unk_52BB44.Execute CStr(CVar(CLng(3)) & Trim(CVar(var_B4)) & "'"), var_D0, CByte(1)
  loc_155CA31:     Set var_98 = var_E4
  loc_155CA5F:     If (var_98.RecordCount > 0) Then
  loc_155CA67:       var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155CA6F:       var_12C = CVar(CLng(1)) 'Long
  loc_155CA8F:       var_15C = CVar(CLng(var_8C)) 'Long
  loc_155CA97:       var_1F4 = CVar(CLng(1)) 'Long
  loc_155CAA6:       var_10C = Me.FGrid.TextMatrix)
  loc_155CAB1:       var_190 = CVar(CStr(var_10C)) 'String
  loc_155CABC:       var_178 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_155CAE4:       Call Proc_184_55_10C074C(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_190)))
  loc_155CAEF:       global_72 = var_BC
  loc_155CB33:       If (Trim(global_72) = vbNullString) Then
  loc_155CB4F:         MsgBox("Pl. Configur Numbring System ", 0, var_10C, CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_190)
  loc_155CB5F:         GoTo loc_155D2CD
  loc_155CB62:       End If
  loc_155CB7E:       var_E0 = Me.FGrid.TextMatrix)
  loc_155CBA0:       Set var_B4 = Me.FGrid
  loc_155CBBC:       var_178 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_155CBDD:       var_244 = CDate(CDate(IIf((CStr(var_E0) = vbNullString), CVar(CLng(3)) & Trim(CVar(var_B4)), CVar(CStr(var_B4.TextMatrix))))))
  loc_155CBE4:       Proc_183_7_EB0C44(var_254, var_244, CVar(CLng(1)), CVar(CLng(var_8C)), var_E0, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_155CBFD:       var_B8 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_155CC04:       var_BC = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_155CC0B:       var_C0 = var_BC & MemVar_1F92078
  loc_155CC3D:       unk_52BB44.Execute CStr(CVar(var_C0 & "' AND V_Type='" & "F_AO" & "' AND ") & var_254 & " BETWEEN DATE_FROM AND DATE_TO"), var_2B4, -1
  loc_155CCB1:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_155CCB7:         var_A8 = "AmtCr"
  loc_155CCC8:         Set var_B0 = Me.Txt
  loc_155CCCE:         Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_B4, var_C0, CVar(CLng(4)), CVar(CLng(var_8C)), var_E4, var_BC)
  loc_155CCD6:         var_1F4 = var_B4.Text
  loc_155CCE0:         var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155CCE8:         var_12C = CVar(CLng(3)) 'Long
  loc_155CD0A:         var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_155CD39:         var_1E4 = CVar(CLng(var_8C)) 'Long
  loc_155CD50:         var_10C = Me.FGrid.TextMatrix)
  loc_155CD89:         Proc_183_0_1279094(MemVar_1F921DC, var_C0, CDbl(0), var_2BC, CStr(var_98.Fields.Item("GroupCode").Value), CDate(CStr(var_10C)), var_10C, CVar(CLng(1)))
  loc_155CDB4:       Else
  loc_155CDB7:         var_A8 = "AmtDr"
  loc_155CDC8:         Set var_B0 = Me.Txt
  loc_155CDCE:         Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_B4, var_C0, var_1E4, var_2BC, var_12C)
  loc_155CDD6:         var_D0 = var_B4.Text
  loc_155CDE0:         var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155CDE8:         var_12C = CVar(CLng(3)) 'Long
  loc_155CE0A:         var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_155CE1F:         var_E8 = var_98.Fields
  loc_155CE39:         var_1E4 = CVar(CLng(var_8C)) 'Long
  loc_155CE50:         var_10C = Me.FGrid.TextMatrix)
  loc_155CE89:         Proc_183_0_1279094(MemVar_1F921DC, var_C0, var_2BC, CDbl(0), CStr(var_E8.Item("GroupCode").Value), CDate(CStr(var_10C)), var_10C, CVar(CLng(1)))
  loc_155CEB1:       End If
  loc_155CECD:       var_E0 = Me.FGrid.TextMatrix)
  loc_155CEEF:       Set var_B4 = Me.FGrid
  loc_155CEF5:       var_10C = var_B4.TextMatrix)
  loc_155CF00:       var_190 = CVar(CStr(var_10C)) 'String
  loc_155CF0B:       var_178 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_155CF2D:       Proc_183_7_EB0C44(var_244, IIf((CStr(var_E0) = vbNullString), var_E8.Item("GroupCode").Value, var_190), CVar(CLng(1)), CVar(CLng(var_8C)), var_E0, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_155CF40:       Set var_E4 = Me.Txt
  loc_155CF46:       Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_E8, var_2CC, var_1E4, var_2BC)
  loc_155CF4E:       var_12C = var_E8.Text
  loc_155CF58:       var_2A4 = CVar(CLng(var_8C)) 'Long
  loc_155CF60:       var_2FC = CVar(CLng(3)) 'Long
  loc_155CF82:       var_168 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_155CFA1:       var_3B0 = Me.FGrid.TextMatrix)
  loc_155CFBB:       Proc_183_7_EB0C44(var_450, Now, var_3B0, CVar(CLng(2)), CVar(CLng(var_8C)), var_168)
  loc_155D029:       var_BC = "Insert Into Ledger (DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A8 & ",NARRATION,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_155D080:       var_254 = CVar(var_BC & global_72 & "'," & CStr(var_8C) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F92070 & "',") 'String
  loc_155D0D4:       var_410 = var_254 & var_244 & ",'" & CVar(var_2CC) & "'," & CVar(var_168) & ",'" & CVar(CStr(var_3B0)) & "','" & CVar(MemVar_1F920C8) 
  loc_155D104:       var_500 = var_410 & "'," & var_450 & ",'E','" & var_98.Fields.Item("GroupCode").Value & "','" & var_98.Fields.Item("GroupNature").Value 
  loc_155D12E:       unk_52BB44.Execute CStr(var_500 & "','" & CVar(MemVar_1F92078) & " ')"), var_584, -1
  loc_155D1BB:     Else
  loc_155D1C9:       var_D0 = "Group Not Defined"
  loc_155D1D4:       MsgBox(var_D0, 0, var_10C, var_E8.Item("GroupCode").Value, var_190)
  loc_155D1E4:       GoTo loc_155D2CD
  loc_155D1E7:     End If
  loc_155D1E7:   End If
  loc_155D1EA: Next var_1D4 'Byte
  loc_155D1F6: unk_52BB44.CommitTrans
  loc_155D206: Me.Requery -1
  loc_155D20D: var_8A = 0
  loc_155D21E: Set var_B0 = Me.Txt
  loc_155D224: Call 0.Method_Proc_184_61_155D30C0 (CInt(0), var_B4)
  loc_155D250: Me.Requery -1
  loc_155D27D: Me.Find "SearchCode = '" & var_B4.Text & "'", 0, 1
  loc_155D29E: var_B8 = "INI"
  loc_155D2AC: Call Proc_184_49_E897FC(Proc_5_1_100CB50(var_B8, Me, global_112))
  loc_155D2B7: Call Proc_184_58_18BF9D8(var_D0)
  loc_155D2C1: Set var_88 = Nothing
  loc_155D2C9: Set var_98 = Nothing
  loc_155D2CC: Exit Sub
  loc_155D2CD: ' Referenced from: 155D1E4
  loc_155D2CD: ' Referenced from: 155CB5F
  loc_155D2CD: ' Referenced from: 155C3A0
  loc_155D2D3: If (var_8A = &HFF) Then
  loc_155D2DC:   unk_52BB44.RollbackTrans
  loc_155D2E1: End If
  loc_155D2E7: Call 0.Method_arg_50 (var_B8)
  loc_155D2FC: Proc_183_57_104AA84(var_B8, "UpdateDataBaseEdit")
  loc_155D308: Exit Sub
End Sub

Public Sub Proc_184_62_1240C38
  'Data Table: 52BB24
  Dim Me As Recordset15
  Dim unk_52BB44 As Connection15
  Dim var_96 As Integer
  Dim var_124 As String
  Dim var_12C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_140 As Fields15
  Dim var_130 As String
  Dim var_BC As Variant
  loc_124074C: On Error Goto loc_1240BFC
  loc_124075A: If (global_60 = "Y") Then
  loc_124077E:   MsgBox("You Can not Delete this A/c", &H40, "Validation Check", var_FC, var_11C)
  loc_124078E:   Exit Sub
  loc_124078F: End If
  loc_12407C6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_12407D2:   var_120 = Me.AbsolutePosition
  loc_12407DE:   var_94 = CVar(var_120) 'Variant
  loc_12407EB:   unk_52BB44.BeginTrans var_120
  loc_1240821:   Set var_128 = Me.Txt
  loc_1240827:   Call 0.Method_Proc_184_62_1240C380 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_124082F:   var_BC = var_12C.Text
  loc_1240838:   var_138 = -1 & var_130
  loc_1240848:   unk_52BB44.Execute var_138 & "'", var_140, &HFF
  loc_1240853:   Set var_9C = var_140
  loc_124086F:   ' Referenced from: 12409A8
  loc_124087E:   If Not(var_9C.EOF) Then
  loc_124089B:     var_12C = var_9C.Fields.Item("subcode")
  loc_12408A3:     var_BC = var_12C.Value
  loc_12408BA:     var_140 = var_9C.Fields
  loc_12408F1:     var_FC = var_9C.Fields.Item("AmtDr").Value
  loc_1240918:     var_11C = var_9C.Fields.Item("GroupCode").Value
  loc_124093F:     var_190 = var_9C.Fields.Item("V_DATE").Value
  loc_1240970:     Proc_183_0_1279094(MemVar_1F921DC, CStr(var_BC), CSng(var_140.Item("AmtCr").Value))
  loc_12409A3:     var_9C.MoveNext
  loc_12409A8:     GoTo loc_124086F
  loc_12409AB:   End If
  loc_12409BF:   var_124 = "Delete From Ledger Where V_Type='" & "F_AO"
  loc_12409D7:   Set var_128 = Me.Txt
  loc_12409DD:   Call 0.Method_Proc_184_62_1240C380 (CInt(0), var_12C, var_130, var_124 & "' and SubCode= '", var_BC)
  loc_12409E5:   -1 = var_12C.Text
  loc_12409FE:   unk_52BB44.Execute var_140 & var_130 & "'", CSng(var_FC), CStr(var_11C)
  loc_1240A3A:   Set var_128 = Me.Txt
  loc_1240A40:   Call 0.Method_Proc_184_62_1240C380 (CInt(0), var_12C, var_124, "Delete From SubGroup Where SUBCode='")
  loc_1240A48:   var_BC = var_12C.Text
  loc_1240A51:   var_130 = -1 & var_124
  loc_1240A61:   unk_52BB44.Execute var_130 & "'", var_140, CDate(var_190)
  loc_1240A86:   Set var_128 = Me.Txt
  loc_1240A8C:   Call 0.Method_Proc_184_62_1240C380 (CInt(0))
  loc_1240AA5:   var_1C0 = 0
  loc_1240AB8:   var_1B8 = 0
  loc_1240AC3:   var_1B4 = 0
  loc_1240AD6:   var_1AC = 0
  loc_1240AE1:   var_1A8 = 0
  loc_1240AF4:   var_1A0 = 0
  loc_1240B34:   var_124 = "SubGroup"
  loc_1240B3D:   Proc_154_5_10E33A4(MemVar_1F921DC, var_124, "SubCode", &HC8, CStr(Trim(CVar(var_12C))), 0, 0, 0)
  loc_1240B6B:   unk_52BB44.CommitTrans
  loc_1240B72:   var_96 = 0
  loc_1240B80:   Me.Requery -1
  loc_1240B9C:   If (Me.RecordCount > 0) Then
  loc_1240BB6:     If (Me.AbsolutePosition > 1) Then
  loc_1240BC1:       var_BC = (var_94 - 1)
  loc_1240BCD:       Me.AbsolutePosition = CLng(CVar(var_12C))
  loc_1240BD2:     End If
  loc_1240BD2:   End If
  loc_1240BEE:   Proc_5_0_110649C(&HFF, Me, global_112, 0, var_96, var_1A0, 0)
  loc_1240BF6:   Call Proc_184_58_18BF9D8(var_1A8, var_1AC, 0)
  loc_1240BFB: End If
  loc_1240BFB: Exit Sub
  loc_1240BFC: ' Referenced from: 124074C
  loc_1240C02: If (var_96 = &HFF) Then
  loc_1240C0B:   unk_52BB44.RollbackTrans
  loc_1240C10: End If
  loc_1240C16: Call 0.Method_arg_50 (var_124, var_1B4)
  loc_1240C2B: Proc_183_57_104AA84(var_124, "UpdateDataBaseDelete")
  loc_1240C37: Exit Sub
End Sub

Public Sub Proc_184_63_E74820
  'Data Table: 52BB24
  loc_E747CC: Call Proc_184_51_F6BE3C()
  loc_E74808: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E7480B:   Call TopCtrl1_UnknownEvent_16()
  loc_E74813: Else
  loc_E74816:   Call Me.SetFocus
  loc_E7481C: End If
  loc_E7481C: Exit Sub
End Sub
