VERSION 5.00
Begin VB.Form FrmParty
  Caption = "Suppler Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmParty.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 13050
  ClientHeight = 9750
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1785
    Top = 1905
    Width = 1710
    Height = 285
    TabIndex = 3
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
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 5370
    Width = 4140
    Height = 285
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13050
    Height = 450
    TabIndex = 59
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11535
    Top = 2535
    Width = 585
    Height = 285
    Enabled = 0   'False
    Text = "Yes"
    TabIndex = 53
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
    Left = 7980
    Top = 5055
    Width = 2790
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 2850
    Width = 2565
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    Left = 1020
    Top = 3585
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 10
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
    Left = 3675
    Top = 2715
    Width = 1380
    Height = 285
    Enabled = 0   'False
    TabIndex = 49
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
  Begin DataGrid DGUnderAc
    Left = 9900
    Top = 7665
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 37
  End
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3675
    Top = 2700
    Width = 1365
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 47
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 810
    Top = 2715
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 46
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
    ForeColor = &HFF8080&
    Left = 10440
    Top = 7035
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = -75
      Top = 15
      Width = 2415
      Height = 1800
      TabIndex = 48
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1785
    Top = 1590
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8550
    Top = 1275
    Width = 3570
    Height = 285
    Enabled = 0   'False
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 1275
    Width = 525
    Height = 285
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
  Begin DataGrid DGCity
    Left = 7110
    Top = 7800
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1785
    Top = 990
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
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 4740
    Width = 4140
    Height = 285
    TabIndex = 19
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 2535
    Width = 2565
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
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
    Left = 1785
    Top = 1275
    Width = 4140
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 1590
    Width = 4140
    Height = 285
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 1905
    Width = 4140
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 2220
    Width = 4140
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 3165
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 3480
    Width = 4140
    Height = 285
    Enabled = 0   'False
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 3795
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
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
    ForeColor = &HC00000&
    Left = 7980
    Top = 4110
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 15
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
    Left = 7980
    Top = 4425
    Width = 2790
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 7650
    Top = 7110
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 14
    BackColor = &HFFFFFF&
    Left = 7650
    Top = 6840
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin DataGrid DGAcName
    Left = 5970
    Top = 8145
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 38
  End
  Begin MSHFlexGrid FGrid
    Left = 180
    Top = 3225
    Width = 6045
    Height = 3330
    TabIndex = 52
  End
  Begin MSFlexGrid FGPoint
    Left = 10770
    Top = 5925
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 55
  End
  Begin Label Lbl
    Caption = "Dealer Type"
    Index = 20
    ForeColor = &HC00000&
    Left = 225
    Top = 1905
    Width = 1155
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
  Begin Label Lbl
    Caption = "GSTIN"
    Index = 19
    ForeColor = &HC00000&
    Left = 6525
    Top = 5385
    Width = 600
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3615
    Top = 7230
    Width = 2790
    Height = 285
    TabIndex = 58
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
    Left = 225
    Top = 7230
    Width = 2880
    Height = 255
    TabIndex = 57
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
    TabIndex = 56
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
    Caption = "Active"
    Index = 29
    ForeColor = &HC00000&
    Left = 10800
    Top = 2535
    Width = 660
    Height = 240
    TabIndex = 54
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
    Index = 18
    ForeColor = &HC00000&
    Left = 6525
    Top = 5070
    Width = 690
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
    Caption = "PinCode"
    Index = 1
    ForeColor = &HC00000&
    Left = 6525
    Top = 2850
    Width = 810
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
  Begin Label Lbl
    Caption = "Nature :"
    Index = 6
    ForeColor = &HC0&
    Left = 1830
    Top = 2205
    Width = 750
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
  Begin Label LblOpBalType
    Caption = "Dr/Cr"
    ForeColor = &H80&
    Left = 2145
    Top = 2730
    Width = 480
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
  Begin Label LblCurBalType
    Caption = "Dr/Cr"
    ForeColor = &H80&
    Left = 5100
    Top = 2745
    Width = 480
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
  Begin Label Lbl
    Caption = "Opening Balance"
    Index = 17
    ForeColor = &H4000&
    Left = 705
    Top = 2415
    Width = 1650
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
    Caption = "Current Balance"
    Index = 16
    ForeColor = &H4000&
    Left = 3570
    Top = 2415
    Width = 1545
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
  Begin Label Lbl
    Caption = "Code"
    Index = 15
    ForeColor = &HC00000&
    Left = 225
    Top = 990
    Width = 480
    Height = 240
    TabIndex = 36
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
    Caption = "Remark"
    Index = 14
    ForeColor = &HC00000&
    Left = 6525
    Top = 4755
    Width = 735
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
  Begin Label LblNature
    Caption = "Nature"
    ForeColor = &H80&
    Left = 2790
    Top = 2205
    Width = 630
    Height = 285
    TabIndex = 34
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
  Begin Label Lbl
    Caption = "PAN No."
    Index = 13
    ForeColor = &HC00000&
    Left = 6525
    Top = 4440
    Width = 780
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
    Caption = "LST No."
    Index = 12
    ForeColor = &H0&
    Left = 6675
    Top = 7110
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 32
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
    Caption = "CST No."
    Index = 11
    ForeColor = &H0&
    Left = 6675
    Top = 6840
    Width = 705
    Height = 240
    Visible = 0   'False
    TabIndex = 31
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
    Caption = "E-Mail"
    Index = 10
    ForeColor = &HC00000&
    Left = 6525
    Top = 4125
    Width = 585
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
    Caption = "Fax No."
    Index = 9
    ForeColor = &HC00000&
    Left = 6525
    Top = 3810
    Width = 735
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
  Begin Label Lbl
    Caption = "Mobile No."
    Index = 8
    ForeColor = &HC00000&
    Left = 6525
    Top = 3495
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
  Begin Label Lbl
    Caption = "City Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 6525
    Top = 2535
    Width = 975
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
  Begin Label Lbl
    Caption = "Address"
    Index = 4
    ForeColor = &HC00000&
    Left = 6525
    Top = 1590
    Width = 750
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
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 3
    ForeColor = &HC00000&
    Left = 6525
    Top = 1260
    Width = 1440
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
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &HC00000&
    Left = 6525
    Top = 3180
    Width = 1140
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
  Begin Label Lbl
    Caption = "Under Group"
    Index = 2
    ForeColor = &HC00000&
    Left = 225
    Top = 1590
    Width = 1215
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
  Begin Label Lbl
    Caption = "Suppler Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 225
    Top = 1275
    Width = 1365
    Height = 240
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
End

Attribute VB_Name = "FrmParty"

Private global_56 As Integer
Private global_54 As Integer
Private global_52 As Integer
Private global_88 As Double
Private global_64 As Long

Private Sub Txt_GotFocus(Index As Integer) '1319544
  'Data Table: 4F2ED0
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_88 As DataGrid
  loc_1318DEE: Set var_88 = Me.Txt
  loc_1318DF4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1318E02: Proc_183_28_E20B20(var_8C)
  loc_1318E0E: Call Proc_11_51_F1FB88(var_8C)
  loc_1318E16: var_92 = Index
  loc_1318E21: If (var_92 = CInt(1)) Then
  loc_1318E3B:   If (Me.RecordCount > 0) Then
  loc_1318E49:     Set var_8C = Me.FGPoint
  loc_1318E61:     Proc_6_137_1193554(Me.DGAcName, global_112, Index)
  loc_1318E6F:   End If
  loc_1318EBD:   Set var_88 = Me.Txt
  loc_1318EC3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1318ECB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1318EE3:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1318EE6:     Exit Sub
  loc_1318EE7:   End If
  loc_1318EF4:   Set var_88 = Me.Txt
  loc_1318EFA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1318F02:   var_A0 = var_8C.Text
  loc_1318F14:   var_B0 = "Name"
  loc_1318F4F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1318F58:     Me.MoveFirst
  loc_1318F7B:     Set var_88 = Me.Txt
  loc_1318F81:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1318F89:     0 = var_8C.Text
  loc_1318FA2:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1318FB7:   End If
  loc_1318FBA: Else
  loc_1318FC2:   If (var_92 = CInt(2)) Then
  loc_1318FDC:     If (Me.RecordCount > 0) Then
  loc_1318FEA:       Set var_8C = Me.FGPoint
  loc_1319002:       Proc_6_137_1193554(Me.DGUnderAc, global_120)
  loc_1319010:     End If
  loc_1319019:     var_98 = Me.RecordCount
  loc_131905E:     Set var_88 = Me.Txt
  loc_1319064:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_131906C:     ((var_98 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1319084:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1319087:       Exit Sub
  loc_1319088:     End If
  loc_1319095:     Set var_88 = Me.Txt
  loc_131909B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_13190A3:     var_A0 = var_8C.Text
  loc_13190B5:     var_B0 = "Name"
  loc_13190F0:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_13190F9:       Me.MoveFirst
  loc_131911C:       Set var_88 = Me.Txt
  loc_1319122:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131912A:       0 = var_8C.Text
  loc_1319143:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_1319158:     End If
  loc_131915B:   Else
  loc_1319163:     If (var_92 = CInt(3)) Then
  loc_1319173:       ReDim var_F0(0 To 3)
  loc_131918A:       var_F0(0) = "Mr."
  loc_1319199:       var_F0(1) = "Mrs."
  loc_13191A8:       var_F0(2) = "Miss"
  loc_13191B7:       var_F0(3) = "M/S"
  loc_13191CE:       global_132 = Array(var_F0)
  loc_131920E:       Set global_148 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index)
  loc_1319222:     Else
  loc_131922A:       If (var_92 = CInt(&H17)) Then
  loc_131923A:         ReDim var_F0(0 To 2)
  loc_1319251:         var_F0(0) = "REGISTERED"
  loc_1319260:         var_F0(1) = "COMPOSITION"
  loc_131926F:         var_F0(2) = "UNREGISTERED"
  loc_1319286:         global_132 = Array(var_F0)
  loc_1319291:         Set var_B4 = Me.ListView
  loc_13192AC:         Set var_8C = Me.Txt
  loc_13192C6:         Set global_148 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_132, 3)
  loc_13192DA:       Else
  loc_13192E2:         If (var_92 = CInt(8)) Then
  loc_13192F8:           Me.DGCity.Tag = CVar(CStr(Index))
  loc_1319310:           Set var_88 = Me.Txt
  loc_1319316:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, global_132)
  loc_131931E:           global_132 = var_8C.Left
  loc_1319335:           Me.DGCity.Left = CVar(var_98)
  loc_1319350:           Set var_90 = Me.Txt
  loc_1319356:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_128)
  loc_131935E:           4 = var_B4.Height
  loc_1319370:           Set var_88 = Me.Txt
  loc_1319376:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131938E:           var_B0 = CVar(((var_8C.Top + var_128) + CDbl(&HF))) 'Single
  loc_131939D:           Me.DGCity.Top = CVar(var_8C.Top)
  loc_13193C6:           If (Me.RecordCount > 0) Then
  loc_13193D4:             Set var_8C = Me.FGPoint
  loc_13193EC:             Proc_6_137_1193554(Me.DGCity, global_124, Index)
  loc_13193FA:           End If
  loc_1319448:           Set var_88 = Me.Txt
  loc_131944E:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1319456:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_131946E:           If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1319471:             Exit Sub
  loc_1319472:           End If
  loc_131947F:           Set var_88 = Me.Txt
  loc_1319485:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131948D:           var_A0 = var_8C.Text
  loc_131949F:           var_B0 = "Name"
  loc_13194DA:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_13194E3:             Me.MoveFirst
  loc_1319506:             Set var_88 = Me.Txt
  loc_131950C:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1319514:             0 = var_8C.Text
  loc_131952D:             Me.Find 1 & var_A0 & "'", var_B0, global_132
  loc_1319542:           End If
  loc_1319542:         End If
  loc_1319542:       End If
  loc_1319542:     End If
  loc_1319542:   End If
  loc_1319542: End If
  loc_1319542: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '127A8B4
  'Data Table: 4F2ED0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_BC As TextBox
  loc_127A32C: On Error Goto loc_127A84D
  loc_127A339: If (CLng(Shift) = &H1B) Then
  loc_127A33C:   Call Proc_11_51_F1FB88()
  loc_127A341:   Exit Sub
  loc_127A342: End If
  loc_127A345: var_86 = KeyCode
  loc_127A350: If (var_86 = CInt(1)) Then
  loc_127A36B:   Set var_98 = Nothing
  loc_127A399:   Proc_6_79_11ACE04(Me.DGAcName, Me.Txt, KeyCode, global_112, Shift)
  loc_127A404:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127A42A:     Proc_6_138_106D6F8(Me.DGAcName, global_112, KeyCode, Me.FGPoint, 0)
  loc_127A438:   End If
  loc_127A43B: Else
  loc_127A443:   If (var_86 = CInt(2)) Then
  loc_127A451:     Set var_AC = Me.Txt
  loc_127A45E:     Set var_A0 = Nothing
  loc_127A469:     Set var_98 = Nothing
  loc_127A497:     Proc_6_69_134A198(Me.DGUnderAc, var_AC, KeyCode, global_120, Shift, 0, 1)
  loc_127A4B4:     var_A8 = Me.RecordCount
  loc_127A504:     If ((var_A8 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127A50B:       Set var_98 = Me.DGUnderAc
  loc_127A512:       Set var_90 = Me.FGPoint
  loc_127A52A:       Proc_6_138_106D6F8(var_98, global_120, KeyCode, var_90, var_98, var_A0)
  loc_127A538:     End If
  loc_127A53B:   Else
  loc_127A543:     If (var_86 = CInt(3)) Then
  loc_127A568:       Set var_8C = Me.Txt
  loc_127A56E:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A8, 0)
  loc_127A576:       1 = var_90.Left
  loc_127A588:       Set var_98 = Me.Txt
  loc_127A58E:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_127A596:       var_98 = var_A0.Top
  loc_127A5A8:       Set var_A4 = Me.Txt
  loc_127A5AE:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B4)
  loc_127A5B6:       0 = var_AC.Height
  loc_127A5C8:       Set var_B8 = Me.Txt
  loc_127A5CE:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_127A5D6:       var_C0 = var_BC.Width
  loc_127A61E:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_127A645:     Else
  loc_127A64D:       If (var_86 = CInt(&H17)) Then
  loc_127A672:         Set var_8C = Me.Txt
  loc_127A678:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A8, CInt(var_A8))
  loc_127A680:         CInt((var_B0 + var_B4)) = var_90.Left
  loc_127A692:         Set var_98 = Me.Txt
  loc_127A698:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_127A6A0:         CInt(var_C0) = var_A0.Top
  loc_127A6B2:         Set var_A4 = Me.Txt
  loc_127A6B8:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B4)
  loc_127A6C0:         1200 = var_AC.Height
  loc_127A6D2:         Set var_B8 = Me.Txt
  loc_127A6D8:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_127A6E0:         var_C0 = var_BC.Width
  loc_127A728:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_127A74F:       Else
  loc_127A757:         If (var_86 = CInt(8)) Then
  loc_127A7AB:           Proc_6_69_134A198(Me.DGCity, Me.Txt, KeyCode, global_124, Shift, 0, 1, Nothing)
  loc_127A7C8:           var_A8 = Me.RecordCount
  loc_127A818:           If ((var_A8 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127A83E:             Proc_6_138_106D6F8(Me.DGCity, global_124, KeyCode, Me.FGPoint, Nothing, 0)
  loc_127A84C:           End If
  loc_127A84C:         End If
  loc_127A84C:       End If
  loc_127A84C:     End If
  loc_127A84C:   End If
  loc_127A84C: End If
  loc_127A84C: Exit Sub
  loc_127A84D: ' Referenced from: 127A32C
  loc_127A855: Set var_8C = Err()
  loc_127A85B: Call 0.Method_arg_1C (var_A8, CInt(var_A8), CInt((var_B0 + var_B4)))
  loc_127A86C: If (var_A8 <> 0) Then
  loc_127A877:   Set var_8C = Err()
  loc_127A87D:   Call 0.Method_arg_2C (var_E0, CInt(var_C0))
  loc_127A89E:   MsgBox(CVar(var_E0), &H40, "Validation", var_130, var_150)
  loc_127A8B1: End If
  loc_127A8B1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '100C1F0
  'Data Table: 4F2ED0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_100BFE4: On Error Goto loc_100C18A
  loc_100BFED: Proc_6_133_E7EF78(var_94)
  loc_100C002: If (CInt(var_94) = &H27) Then
  loc_100C007:   arg_10 = 0
  loc_100C00A:   Exit Sub
  loc_100C00B: End If
  loc_100C00E: var_96 = KeyAscii
  loc_100C019: If (var_96 = CInt(2)) Then
  loc_100C038:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_100C065:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_100C074:   End If
  loc_100C077: Else
  loc_100C07F:   If (var_96 = CInt(8)) Then
  loc_100C09E:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_100C0A5:       Set var_A8 = Me.Txt
  loc_100C0B0:       var_A0 = "Name"
  loc_100C0CB:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_124, arg_10, var_A0, 0)
  loc_100C0DA:     End If
  loc_100C0DD:   Else
  loc_100C0E5:     If (var_96 = CInt(&H15)) Then
  loc_100C103:       If ((((arg_10 = &H59) Or (arg_10 = &H79)) Or (arg_10 = &H4E)) Or (arg_10 = &H6E)) Then
  loc_100C113:         If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_100C123:           Set var_9C = Me.Txt
  loc_100C129:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes", 0)
  loc_100C131:           var_A8.Text = var_96
  loc_100C13F:           arg_10 = 0
  loc_100C145:         Else
  loc_100C152:           If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_100C162:             Set var_9C = Me.Txt
  loc_100C168:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No", arg_10)
  loc_100C170:             var_A8.Text = arg_10
  loc_100C17E:             arg_10 = 0
  loc_100C181:           End If
  loc_100C181:         End If
  loc_100C184:       Else
  loc_100C186:         arg_10 = 0
  loc_100C189:       End If
  loc_100C189:     End If
  loc_100C189:   End If
  loc_100C189: End If
  loc_100C189: Exit Sub
  loc_100C18A: ' Referenced from: 100BFE4
  loc_100C192: Set var_9C = Err()
  loc_100C198: Call 0.Method_arg_1C (var_AC, arg_10, arg_10)
  loc_100C1A9: If (var_AC <> 0) Then
  loc_100C1B4:   Set var_9C = Err()
  loc_100C1BA:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_100C1DB:   MsgBox(CVar(var_A0), &H40, "Validation", var_EC, var_10C)
  loc_100C1EE: End If
  loc_100C1EE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10A3AC8
  'Data Table: 4F2ED0
  Dim var_86 As Integer
  Dim var_8C As Variant
  loc_10A3808: On Error Goto loc_10A3A60
  loc_10A380E: var_86 = KeyCode
  loc_10A3819: If (var_86 = CInt(1)) Then
  loc_10A3838:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_10A3845:     var_A0 = "Name"
  loc_10A3860:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_112)
  loc_10A3892:     Proc_6_138_106D6F8(Me.DGAcName, global_112, KeyCode, Me.FGPoint)
  loc_10A38A0:   End If
  loc_10A38A3: Else
  loc_10A38AB:   If (var_86 = CInt(2)) Then
  loc_10A38CA:     If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_10A38DE:       var_A0 = "Name"
  loc_10A3902:       Proc_183_33_12A1B28(Me.DGUnderAc, Me.Txt, KeyCode, global_120, Shift)
  loc_10A3938:       Proc_6_138_106D6F8(Me.DGUnderAc, global_120, KeyCode, Me.FGPoint)
  loc_10A3946:     End If
  loc_10A3949:   Else
  loc_10A3951:     If Not (var_86 = CInt(3)) Then
  loc_10A395C:       If (var_86 = CInt(&H17)) Then
  loc_10A395F:       End If
  loc_10A397A:       If (Me.FrmList.Visible = &HFF) Then
  loc_10A39A9:         Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_148)
  loc_10A39B9:       End If
  loc_10A39BC:     Else
  loc_10A39C4:       If (var_86 = CInt(8)) Then
  loc_10A39E3:         If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_10A39F7:           var_A0 = "Name"
  loc_10A3A1B:           Proc_183_33_12A1B28(Me.DGCity, Me.Txt, KeyCode, global_124, Shift)
  loc_10A3A51:           Proc_6_138_106D6F8(Me.DGCity, global_124, KeyCode, Me.FGPoint, var_A0)
  loc_10A3A5F:         End If
  loc_10A3A5F:       End If
  loc_10A3A5F:     End If
  loc_10A3A5F:   End If
  loc_10A3A5F: End If
  loc_10A3A5F: Exit Sub
  loc_10A3A60: ' Referenced from: 10A3808
  loc_10A3A68: Set var_8C = Err()
  loc_10A3A6E: Call 0.Method_arg_1C (var_B4, var_A0, Shift)
  loc_10A3A7F: If (var_B4 <> 0) Then
  loc_10A3A8A:   Set var_8C = Err()
  loc_10A3A90:   Call 0.Method_arg_2C (var_A0, var_A0)
  loc_10A3AB1:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_10A3AC4: End If
  loc_10A3AC4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49334
  'Data Table: 4F2ED0
  loc_E49312: Set var_88 = Me.Txt
  loc_E49318: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49326: Proc_183_27_E22608(var_8C)
  loc_E49332: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13C0590
  'Data Table: 4F2ED0
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim unk_4F2EF7 As Connection15
  Dim var_A4 As Variant
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_9A As Integer
  Dim var_134 As Variant
  Dim arg_10 As Integer
  loc_13BFC2B: var_8E = Cancel
  loc_13BFC36: If (var_8E = CInt(0)) Then
  loc_13BFC47:   Set var_94 = Me.Txt
  loc_13BFC4D:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13BFC67:   If (var_98.Visible = &HFF) Then
  loc_13BFC78:     Set var_94 = Me.Txt
  loc_13BFC7E:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13BFC9D:     If (var_98.Text = vbNullString) Then
  loc_13BFCAE:       Set var_94 = Me.Txt
  loc_13BFCB4:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13BFCBC:       var_A0 = var_98.Tag
  loc_13BFCCF:       Set var_A4 = Me.Txt
  loc_13BFCD5:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_13BFCDD:       var_A8.Text = var_A0
  loc_13BFCFB:       Set var_94 = Me.Txt
  loc_13BFD01:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13BFD09:       var_98.SetFocus
  loc_13BFD15:       Exit Sub
  loc_13BFD16:     End If
  loc_13BFD37:     Set var_94 = Me.Txt
  loc_13BFD3D:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select AcCode From SubGroup Where AcCode='", var_D0)
  loc_13BFD45:     -1 = var_98.Text
  loc_13BFD5E:     unk_4F2EF7.Execute var_A4 & var_A0 & "'", var_D4, var_8E
  loc_13BFD66:      = var_A4.RecordCount
  loc_13BFD89:     If (var_D4 > 0) Then
  loc_13BFDAD:       MsgBox("A/c Code Already Exists", &H40, "Validation", var_114, var_134)
  loc_13BFDCB:       Set var_94 = Me.Txt
  loc_13BFDD1:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13BFDEC:       Set var_A4 = Me.Txt
  loc_13BFDF2:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_13BFDFA:       var_A8.Text = var_98.Tag
  loc_13BFE18:       Set var_94 = Me.Txt
  loc_13BFE1E:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13BFE26:       var_98.SetFocus
  loc_13BFE32:       Exit Sub
  loc_13BFE33:     End If
  loc_13BFE33:   End If
  loc_13BFE36: Else
  loc_13BFE3E:   If (var_8E = CInt(2)) Then
  loc_13BFE4E:     Set var_94 = Me.Txt
  loc_13BFE54:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13BFE5C:     var_A0 = var_98.Text
  loc_13BFE73:     If (var_A0 = vbNullString) Then
  loc_13BFE76:       Exit Sub
  loc_13BFE77:     End If
  loc_13BFEC5:     Set var_94 = Me.Txt
  loc_13BFECB:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_13BFED3:     ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_98.Text
  loc_13BFEEB:     If (var_98 Or (var_A0 <> vbNullString)) Then
  loc_13BFF2D:       var_F4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value 
  loc_13BFF44:       unk_4F2EF7.Execute CStr(var_F4 & "'"), var_134, -1
  loc_13BFF4F:       Set var_88 = var_A4
  loc_13BFF7D:       If (var_88.RecordCount > 0) Then
  loc_13BFF91:         Call Proc_11_55_EDD0C0(CByte(1), CByte(1))
  loc_13C000F:         Me.LblNature.Caption = CStr(IIf(IsNull(CVar(var_88.Fields.Item("Nature"))), vbNullString, CVar(var_88.Fields.Item("Nature"))))
  loc_13C007B:         var_A8 = var_88.Fields.Item("GroupNature")
  loc_13C0083:         var_114 = var_A8.Value
  loc_13C00AD:         If CBool((var_88.Fields.Item("GroupNature").Value = "A") Or (var_114 = "L")) Then
  loc_13C00B7:           global_100 = CByte(1)
  loc_13C00BE:         Else
  loc_13C00C5:           global_100 = CByte(0)
  loc_13C00C9:         End If
  loc_13C00CF:         Call Proc_11_55_EDD0C0(global_100, global_100, global_100)
  loc_13C00D4:         ' Referenced from:   13C01ED
  loc_13C00DA:         var_9A = var_88.EOF
  loc_13C00E3:         If Not(var_9A) Then
  loc_13C0122:           If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_13C0162:             Set var_A4 = Me.Txt
  loc_13C0168:             Call 0.Method_Txt_Validate0 (CInt(2), var_A8, CStr(Trim(CVar(var_88.Fields.Item("GroupName")))))
  loc_13C0170:             var_A8.Text = var_9A
  loc_13C01A2:             var_98 = var_88.Fields.Item("GroupCode")
  loc_13C01C1:             Set var_A4 = Me.Txt
  loc_13C01C7:             Call 0.Method_Txt_Validate0 (CInt(2), var_A8)
  loc_13C01CF:             var_A8.Tag = CStr(var_98.Value)
  loc_13C01E5:           End If
  loc_13C01E8:           var_88.MoveNext
  loc_13C01ED:           GoTo loc_13C00D4
  loc_13C01F0:         End If
  loc_13C01F0:       End If
  loc_13C01F0:     End If
  loc_13C01F3:   Else
  loc_13C01FB:     If Not (var_8E = CInt(3)) Then
  loc_13C0206:       If (var_8E = CInt(&H17)) Then
  loc_13C0209:       End If
  loc_13C0216:       Set var_94 = Me.Txt
  loc_13C021C:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C023B:       If (var_98.Text <> vbNullString) Then
  loc_13C0256:         Set var_98 = Me.ListView.SelectedItem
  loc_13C026E:         Set var_A4 = Me.Txt
  loc_13C0274:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_13C027C:         var_A8.Text = var_98.Text
  loc_13C0292:       End If
  loc_13C0295:     Else
  loc_13C029D:       If (var_8E = CInt(8)) Then
  loc_13C02E1:         If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_13C02F1:           Set var_94 = Me.Txt
  loc_13C02F7:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C0316:           If (var_98.Text <> vbNullString) Then
  loc_13C0354:             Set var_A4 = Me.Txt
  loc_13C035A:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_13C0362:             var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C0395:             var_98 = Me.Fields.Item("Code")
  loc_13C03B3:             Set var_A4 = Me.Txt
  loc_13C03B9:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_13C03C1:             var_A8.Tag = CStr(var_98.Value)
  loc_13C03DA:           Else
  loc_13C03E7:             Set var_94 = Me.Txt
  loc_13C03ED:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C03F5:             var_98.Text = vbNullString
  loc_13C040E:             Set var_94 = Me.Txt
  loc_13C0414:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C041C:             var_98.Tag = vbNullString
  loc_13C0428:           End If
  loc_13C0428:         End If
  loc_13C042B:       Else
  loc_13C0433:         If (var_8E = CInt(&HD)) Then
  loc_13C0444:           Set var_94 = Me.Txt
  loc_13C044A:           Call 0.Method_Txt_Validate0 (CInt(&HD), var_98)
  loc_13C0469:           If (var_98.Text <> vbNullString) Then
  loc_13C047C:             Set var_94 = Me.Txt
  loc_13C0482:             Call 0.Method_Txt_Validate0 (CInt(&HD), var_98)
  loc_13C0498:             var_F4 = InStr(1, CVar(var_98), "@", 0)
  loc_13C04BC:             Call 0.Method_Txt_Validate0 (CInt(&HD), var_A8, 1)
  loc_13C04C4:             var_134 = CVar(var_A8) 'Address
  loc_13C04F8:             If CBool(Me.Txt Or (InStr((var_F4 = 0), var_134, ".", 0) = 0)) Then
  loc_13C0514:               MsgBox("Please fill a Valid EMail Id.", 0, var_F4, var_114, var_134)
  loc_13C0526:               arg_10 = 0
  loc_13C0529:               Exit Sub
  loc_13C052A:             End If
  loc_13C0534:             Set var_94 = Me.Txt
  loc_13C053A:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C055F:             Set var_A4 = Me.Txt
  loc_13C0565:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_13C056D:             var_A8.Text = CStr(LCase(CVar(var_98)))
  loc_13C0585:           End If
  loc_13C0585:         End If
  loc_13C0585:       End If
  loc_13C0585:     End If
  loc_13C0585:   End If
  loc_13C0585: End If
  loc_13C058A: Set var_88 = Nothing
  loc_13C058D: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FABC80
  'Data Table: 4F2ED0
  Dim var_A0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_100 As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FABB00: On Error Goto loc_FABC19
  loc_FABB0D: Set var_88 = Me.TxtGrid
  loc_FABB13: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_FABB21: Proc_183_28_E20B20(var_8C)
  loc_FABB2D: Call Proc_11_51_F1FB88(var_8C)
  loc_FABB45: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FABB60: var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FABB69: Set var_8C = Me.FGrid
  loc_FABB87: var_100 = Me.FGrid.TextMatrix)
  loc_FABB92: var_10C = CStr(var_100)
  loc_FABB9E: Set var_104 = Me.TxtGrid
  loc_FABBA4: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_10C)
  loc_FABBAC: var_108.Tag = CVar(CLng(var_8C.Col))
  loc_FABBDD: var_110 = CLng(Me.FGrid.Col)
  loc_FABBED: If (var_110 = CLng(2)) Then
  loc_FABBFE:   Set var_88 = Me.TxtGrid
  loc_FABC04:   Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &HF)
  loc_FABC0C:   var_8C.MaxLength = var_110
  loc_FABC18: End If
  loc_FABC18: Exit Sub
  loc_FABC19: ' Referenced from: FABB00
  loc_FABC21: Set var_88 = Err()
  loc_FABC27: Call 0.Method_arg_1C (var_114)
  loc_FABC38: If (var_114 <> 0) Then
  loc_FABC43:   Set var_88 = Err()
  loc_FABC49:   Call 0.Method_arg_2C (var_10C)
  loc_FABC6A:   MsgBox(CVar(var_10C), &H40, "Validation", var_100, var_124)
  loc_FABC7D: End If
  loc_FABC7D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '10277C0
  'Data Table: 4F2ED0
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_1027598: On Error Goto loc_1027759
  loc_10275A5: If (CLng(Shift) = &H1B) Then
  loc_10275B4:   Set var_88 = Me.TxtGrid
  loc_10275BA:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_10275C2:   var_90 = var_8C.Tag
  loc_10275D3:   Set var_94 = Me.TxtGrid
  loc_10275D9:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_10275E1:   var_98.Text = var_90
  loc_10275FD:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_102760D:   Set var_88 = Me.TxtGrid
  loc_1027613:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_102761B:   var_8C.Visible = False
  loc_102762B:   Set var_88 = Me.FGrid
  loc_102763C:   Exit Sub
  loc_102763D: End If
  loc_1027650: var_AC = CLng(Me.FGrid.Col)
  loc_1027660: If Not (var_AC = CLng(1)) Then
  loc_102766A:   If Not (var_AC = CLng(2)) Then
  loc_1027674:     If Not (var_AC = CLng(4)) Then
  loc_102767E:       If (var_AC = CLng(3)) Then
  loc_1027681:       End If
  loc_1027681:     End If
  loc_1027681:   End If
  loc_10276C1:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_54 = &HFF))) Then
  loc_10276C7:     Call Proc_11_56_11C9A68(var_AE, var_AC)
  loc_10276D2:     If (var_AE = &HFF) Then
  loc_1027709:       Set var_8C = Me.TxtGrid
  loc_1027718:       Proc_183_25_11BD654(Me.FGrid, var_8C, KeyCode, Shift, global_54, 4)
  loc_102772B:     Else
  loc_1027730:       Call TxtGrid_LostFocus()
  loc_102773E:       Set var_88 = Me.TxtGrid
  loc_1027744:       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0, 0)
  loc_102774C:       var_8C.SetFocus
  loc_1027758:     End If
  loc_1027758:   End If
  loc_1027758: End If
  loc_1027758: Exit Sub
  loc_1027759: ' Referenced from: 1027598
  loc_1027761: Set var_88 = Err()
  loc_1027767: Call 0.Method_arg_1C (var_B8, 0, 0)
  loc_1027778: If (var_B8 <> 0) Then
  loc_1027783:   Set var_88 = Err()
  loc_1027789:   Call 0.Method_arg_2C (var_90, FGrid.DispID_8001)
  loc_10277AA:   MsgBox(CVar(var_90), &H40, "Validation", var_F8, var_118)
  loc_10277BD: End If
  loc_10277BD: Exit Sub
  loc_10277BE: Set arg_586C = arg_14
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F03480
  'Data Table: 4F2ED0
  Dim var_88 As MSHFlexGrid
  loc_F033B0: On Error Goto loc_F03419
  loc_F033B6: Proc_183_46_E070C0(arg_10)
  loc_F033DE: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_F033EB:   Set var_88 = Me.TxtGrid
  loc_F033F1:   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_F0340C:   Proc_183_22_129AEBC(var_A0, arg_10, &HA)
  loc_F03418: End If
  loc_F03418: Exit Sub
  loc_F03419: ' Referenced from: F033B0
  loc_F03421: Set var_88 = Err()
  loc_F03427: Call 0.Method_arg_1C (var_AC, 2)
  loc_F03438: If (var_AC <> 0) Then
  loc_F03443:   Set var_88 = Err()
  loc_F03449:   Call 0.Method_arg_2C (var_B0)
  loc_F0346A:   MsgBox(CVar(var_B0), &H40, "Validation", var_F0, var_110)
  loc_F0347D: End If
  loc_F0347D: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10AD268
  'Data Table: 4F2ED0
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_14C As Variant
  loc_10ACFAC: On Error Goto loc_10AD201
  loc_10ACFC2: var_9C = CLng(Me.FGrid.Col)
  loc_10ACFD2: If (var_9C = CLng(4)) Then
  loc_10ACFDF:   Set var_A8 = Me.TxtGrid
  loc_10ACFE5:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_10ACFF7:   Set var_88 = Me.TxtGrid
  loc_10ACFFD:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD068:   If CBool((Len(var_A0.Text) = 0) Or (Ucase(Mid(CVar(var_AC), 1, 1)) = "C")) Then
  loc_10AD078:     Set var_88 = Me.TxtGrid
  loc_10AD07E:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD086:     var_A0.Text = "Cr"
  loc_10AD095:   Else
  loc_10AD09F:     Set var_88 = Me.TxtGrid
  loc_10AD0A5:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD0E7:     If (Ucase(Mid(CVar(var_A0), 1, 1)) = "D") Then
  loc_10AD0F7:       Set var_88 = Me.TxtGrid
  loc_10AD0FD:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD105:       var_A0.Text = "Dr"
  loc_10AD114:     Else
  loc_10AD121:       Set var_88 = Me.TxtGrid
  loc_10AD127:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD12F:       var_A0.Text = "Cr"
  loc_10AD13B:     End If
  loc_10AD13B:   End If
  loc_10AD13E: Else
  loc_10AD145:   If (var_9C = CLng(3)) Then
  loc_10AD155:     Set var_88 = Me.TxtGrid
  loc_10AD15B:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD163:     var_A4 = var_A0.Text
  loc_10AD17D:     var_EC = Me.FGrid.Row
  loc_10AD186:     var_11C = CVar(CLng(var_EC)) 'Long
  loc_10AD19E:     var_14C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10AD1C2:     var_DC = Format(CVar(Val(var_A4)), "0.00")
  loc_10AD1CB:     var_12C = CVar(CStr(var_DC)) 'String
  loc_10AD1D3:     Set var_170 = Me.FGrid
  loc_10AD1D9:     LateIdCallSt
  loc_10AD200:   End If
  loc_10AD200: End If
  loc_10AD200: Exit Sub
  loc_10AD201: ' Referenced from: 10ACFAC
  loc_10AD209: Set var_88 = Err()
  loc_10AD20F: Call 0.Method_arg_1C (var_17C, var_170, var_12C, 1, 1)
  loc_10AD220: If (var_17C <> 0) Then
  loc_10AD22B:   Set var_88 = Err()
  loc_10AD231:   Call 0.Method_arg_2C (var_A4, var_14C, var_11C)
  loc_10AD252:   MsgBox(CVar(var_A4), &H40, "Validation", var_DC, var_EC)
  loc_10AD265: End If
  loc_10AD265: Exit Sub
End Sub

Private Sub TxtGrid_LostFocus(Index As Integer) 'ED7850
  'Data Table: 4F2ED0
  loc_ED77B0: On Error Goto loc_ED77EB
  loc_ED77BC: If (global_58 = 0) Then
  loc_ED77BF:   Exit Sub
  loc_ED77C0: End If
  loc_ED77CA: Set var_88 = Me.TxtGrid
  loc_ED77D0: Call 0.Method_TxtGrid_LostFocus0 (Index)
  loc_ED77DE: Proc_183_27_E22608(var_8C)
  loc_ED77EA: Exit Sub
  loc_ED77EB: ' Referenced from: ED77B0
  loc_ED77F3: Set var_88 = Err()
  loc_ED77F9: Call 0.Method_arg_1C (var_94)
  loc_ED780A: If (var_94 <> 0) Then
  loc_ED7815:   Set var_88 = Err()
  loc_ED781B:   Call 0.Method_arg_2C (var_98)
  loc_ED783C:   MsgBox(CVar(var_98), &H40, "Validation", var_E8, var_108)
  loc_ED784F: End If
  loc_ED784F: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) '11E2608
  'Data Table: 4F2ED0
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_120 As Variant
  Dim var_164 As Variant
  Dim var_190 As Double
  loc_11E219C: On Error Goto loc_11E25A3
  loc_11E21B2: var_9C = CLng(Me.FGrid.Col)
  loc_11E21C2: If (var_9C = CLng(1)) Then
  loc_11E21CF:   Set var_88 = Me.TxtGrid
  loc_11E21D5:   Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0)
  loc_11E21ED:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E221F:   Call 0.Method_arg_184 (var_A0, var_A8, CVar(CLng(Me.FGrid.Col)))
  loc_11E2227:   var_110 = CVar(var_A8) 'String
  loc_11E222F:   Set var_124 = Me.FGrid
  loc_11E2235:   LateIdCallSt
  loc_11E2256: Else
  loc_11E225D:   If Not (var_9C = CLng(2)) Then
  loc_11E2267:     If (var_9C = CLng(4)) Then
  loc_11E226A:     End If
  loc_11E22A7:     Set var_88 = Me.TxtGrid
  loc_11E22AD:     Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11E22B5:     var_124 = var_A0.Text
  loc_11E22CB:     LateIdCallSt
  loc_11E2306:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11E2309:       Call Proc_11_53_1129FA8(Me.FGrid, CVar(var_A8), CVar(var_A8))
  loc_11E2327:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E232F:       var_F0 = CVar(CLng(4)) 'Long
  loc_11E2349:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11E236A:       var_120 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E23B7:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11E23CF:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11E23D7:         Set var_A0 = Me.FGrid
  loc_11E23F3:       End If
  loc_11E23F3:     End If
  loc_11E23F6:   Else
  loc_11E23FD:     If (var_9C = CLng(3)) Then
  loc_11E240D:       Set var_88 = Me.TxtGrid
  loc_11E2413:       Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, FGrid.DispID_10000, var_C0, var_120)
  loc_11E241B:       (var_A8 <> vbNullString) = var_A0.Text
  loc_11E2428:       var_190 = Val(var_A8)
  loc_11E2491:       LateIdCallSt
  loc_11E24B8:       Call Proc_11_53_1129FA8(Me.FGrid, CVar(CStr(Format(CVar(var_190), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11E24D6:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E24DE:       var_F0 = CVar(CLng(4)) 'Long
  loc_11E24F8:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11E250A:       var_110 = Me.FGrid.Rows
  loc_11E2519:       var_120 = CVar((CLng(var_110) - 1)) 'Long
  loc_11E2530:       var_164 = Me.FGrid.TextMatrix)
  loc_11E2566:       If (CVar(CLng(3)) And (CDbl(Val(CStr(var_164))) <> CDbl(0))) Then
  loc_11E257E:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11E2586:         Set var_A0 = Me.FGrid
  loc_11E25A2:       End If
  loc_11E25A2:     End If
  loc_11E25A2:   End If
  loc_11E25A2: End If
  loc_11E25A2: Exit Sub
  loc_11E25A3: ' Referenced from: 11E219C
  loc_11E25AB: Set var_88 = Err()
  loc_11E25B1: Call 0.Method_arg_1C (var_194, FGrid.DispID_10000, var_C0, CVar(CLng(Me.FGrid.Col)), (var_A8 <> vbNullString), var_F0)
  loc_11E25C2: If (var_194 <> 0) Then
  loc_11E25CD:   Set var_88 = Err()
  loc_11E25D3:   Call 0.Method_arg_2C (var_A8, CVar(CLng(Me.FGrid.Row)), var_190, var_F0)
  loc_11E25F4:   MsgBox(CVar(var_A8), &H40, "Validation", var_110, var_164)
  loc_11E2607: End If
  loc_11E2607: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F883DC
  'Data Table: 4F2ED0
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F88298: On Error Goto loc_F88376
  loc_F8829F: Set var_A4 = Me.ListView
  loc_F882E9: Set var_BC = Me.Txt
  loc_F882EF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F882F7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F88323: Me.FrmList.Visible = False
  loc_F8833D: var_A0 = CStr(Me.ListView.Tag)
  loc_F88345: var_C8 = Val(var_A0)
  loc_F88353: Set var_9C = Me.Txt
  loc_F88359: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F88361: var_A4.SetFocus
  loc_F88375: Exit Sub
  loc_F88376: ' Referenced from: F88298
  loc_F8837E: Set var_88 = Err()
  loc_F88384: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F88395: If (var_CC <> 0) Then
  loc_F883A0:   Set var_88 = Err()
  loc_F883A6:   Call 0.Method_arg_2C (var_A0)
  loc_F883C7:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F883DA: End If
  loc_F883DA: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E83C98
  'Data Table: 4F2ED0
  loc_E83C44: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_E83C47:   Call DGAcName_UnknownEvent_9()
  loc_E83C4C: End If
  loc_E83C68: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_E83C6B:   Call DGUnderAc_UnknownEvent_9()
  loc_E83C70: End If
  loc_E83C8C: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_E83C8F:   Call DGCity_UnknownEvent_9()
  loc_E83C94: End If
  loc_E83C94: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E2590C
  'Data Table: 4F2ED0
  loc_E258FB: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E25903: Call Proc_11_51_F1FB88()
  loc_E25908: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1CF70
  'Data Table: 4F2ED0
  loc_E1CF67: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CF6F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E38834
  'Data Table: 4F2ED0
  Dim var_8C As TextBox
  loc_E38817: Set var_88 = Me.TxtGrid
  loc_E3881D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E38825: var_8C.Visible = False
  loc_E38831: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '113A118
  'Data Table: 4F2ED0
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_D8 As Variant
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  Dim var_140 As Long
  loc_1139DA0: On Error Goto loc_113A0B3
  loc_1139DA7: Set var_88 = Me.TopCtrl1
  loc_1139DAD: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1139DC6: If (CStr() = "Browse") Then
  loc_1139DC9:   Exit Sub
  loc_1139DCA: End If
  loc_1139DE7: var_C4 = Me.FGrid.Rows
  loc_1139E3E: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1139E49:   var_9C = "+{Tab}"
  loc_1139E4F:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_1139E59:   Cancel = 0
  loc_1139E5F: Else
  loc_1139E69:   var_B0 = Me.FGrid.Rows
  loc_1139EB6:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1139EC1:     var_9C = "{Tab}"
  loc_1139EC7:     Proc_303_0_FB9B68(var_9C, 0, var_B0)
  loc_1139EDB:     If (CInt(global_100) = 0) Then
  loc_1139F15:       If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_1139F18:         Call TopCtrl1_UnknownEvent_16()
  loc_1139F1D:       End If
  loc_1139F1D:     End If
  loc_1139F1F:     Cancel = 0
  loc_1139F22:   End If
  loc_1139F22: End If
  loc_1139F28: global_56 = Cancel
  loc_1139F4E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1139F74: var_11C = CLng(Me.FGrid.Col)
  loc_1139F84: If Not (var_11C = CLng(1)) Then
  loc_1139F8E:   If Not (var_11C = CLng(2)) Then
  loc_1139F98:     If Not (var_11C = CLng(4)) Then
  loc_1139FA2:       If (var_11C = CLng(3)) Then
  loc_1139FA5:       End If
  loc_1139FA5:     End If
  loc_1139FA5:   End If
  loc_1139FB6:   If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1139FCC:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1139FE4:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1139FE9:     var_12C = vbNullString
  loc_1139FF3:     Set var_B4 = Me.FGrid
  loc_1139FF9:     LateIdCallSt
  loc_113A011:   End If
  loc_113A011: End If
  loc_113A01B: If (CLng(Cancel) = &HD) Then
  loc_113A031:   var_140 = CLng(Me.FGrid.Col)
  loc_113A041:   If Not (var_140 = CLng(1)) Then
  loc_113A04B:     If Not (var_140 = CLng(2)) Then
  loc_113A055:       If Not (var_140 = CLng(4)) Then
  loc_113A05F:         If (var_140 = CLng(3)) Then
  loc_113A062:         End If
  loc_113A062:       End If
  loc_113A062:     End If
  loc_113A093:     Proc_183_24_1044608(Me, Me.FGrid, Me.TxtGrid, 0, var_140, Me.TxtGrid, var_12C, var_F8)
  loc_113A0A5:   End If
  loc_113A0AA:   global_54 = 0
  loc_113A0AD: End If
  loc_113A0AF: Cancel = 0
  loc_113A0B2: Exit Sub
  loc_113A0B3: ' Referenced from: 1139DA0
  loc_113A0BB: Set var_88 = Err()
  loc_113A0C1: Call 0.Method_arg_1C (var_14C, Cancel, global_54, var_D8, var_11C)
  loc_113A0D2: If (var_14C <> 0) Then
  loc_113A0DD:   Set var_88 = Err()
  loc_113A0E3:   Call 0.Method_arg_2C (var_9C, global_56, Cancel)
  loc_113A104:   MsgBox(CVar(var_9C), &H40, "Validation", var_C4, var_118)
  loc_113A117: End If
  loc_113A117: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F68190
  'Data Table: 4F2ED0
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F68070: On Error Goto loc_F6812A
  loc_F68077: Set var_88 = Me.TopCtrl1
  loc_F6807D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F68085: var_9C = CStr()
  loc_F68096: If (var_9C = "Browse") Then
  loc_F68099:   Exit Sub
  loc_F6809A: End If
  loc_F680AD: var_A0 = CLng(Me.FGrid.Col)
  loc_F680BD: If Not (var_A0 = CLng(1)) Then
  loc_F680C7:   If Not (var_A0 = CLng(2)) Then
  loc_F680D1:     If Not (var_A0 = CLng(4)) Then
  loc_F680DB:       If (var_A0 = CLng(3)) Then
  loc_F680DE:       End If
  loc_F680DE:     End If
  loc_F680DE:   End If
  loc_F6810F:   Proc_183_24_1044608(Me, Me.FGrid, Me.TxtGrid)
  loc_F68121: End If
  loc_F68126: global_54 = 0
  loc_F68129: Exit Sub
  loc_F6812A: ' Referenced from: F68070
  loc_F68132: Set var_88 = Err()
  loc_F68138: Call 0.Method_arg_1C (var_B8, global_54)
  loc_F68149: If (var_B8 <> 0) Then
  loc_F68154:   Set var_88 = Err()
  loc_F6815A:   Call 0.Method_arg_2C (var_9C, 0)
  loc_F6817B:   MsgBox(CVar(var_9C), &H40, "Validation", var_F8, var_118)
  loc_F6818E: End If
  loc_F6818E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F96DDC
  'Data Table: 4F2ED0
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_F96C80: On Error Goto loc_F96D76
  loc_F96C96: var_9C = CLng(Me.FGrid.Col)
  loc_F96CA6: If Not (var_9C = CLng(1)) Then
  loc_F96CB0:   If Not (var_9C = CLng(2)) Then
  loc_F96CBA:     If (var_9C = CLng(4)) Then
  loc_F96CBD:     End If
  loc_F96CBD:   End If
  loc_F96CF6:   Proc_183_26_1158124(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F96D0B: Else
  loc_F96D12:   If (var_9C = CLng(3)) Then
  loc_F96D4E:     Proc_183_26_1158124(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F96D60:   End If
  loc_F96D60: End If
  loc_F96D6A: If (CLng(Cancel) <> &HD) Then
  loc_F96D72:   global_54 = &HFF
  loc_F96D75: End If
  loc_F96D75: Exit Sub
  loc_F96D76: ' Referenced from: F96C80
  loc_F96D7E: Set var_88 = Err()
  loc_F96D84: Call 0.Method_arg_1C (var_B4, global_54, Cancel)
  loc_F96D95: If (var_B4 <> 0) Then
  loc_F96DA0:   Set var_88 = Err()
  loc_F96DA6:   Call 0.Method_arg_2C (var_B8, 0)
  loc_F96DC7:   MsgBox(CVar(var_B8), &H40, "Validation", var_F8, var_118)
  loc_F96DDA: End If
  loc_F96DDA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '107AB14
  'Data Table: 4F2ED0
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  loc_107A878: On Error Goto loc_107AAAF
  loc_107A87F: Set var_8C = Me.TopCtrl1
  loc_107A885: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_107A88D: var_A0 = CStr()
  loc_107A89E: If (var_A0 = "Browse") Then
  loc_107A8A1:   Exit Sub
  loc_107A8A2: End If
  loc_107A8BF: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_107A8C2:   Exit Sub
  loc_107A8C3: End If
  loc_107A8D4: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_107A8F6:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_107A930:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_107A952:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_107A968:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107A971:         Set var_114 = Me.FGrid
  loc_107A989:         Call Proc_11_53_1129FA8(FGrid.DispID_10000)
  loc_107A991:       Else
  loc_107A9A4:         Me.FGrid.Rows = 1
  loc_107A9C1:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_107A9C9:         Set var_114 = Me.FGrid
  loc_107A9F8:         Me.FGrid.FixedRows = 1
  loc_107AA00:       End If
  loc_107AA00:     End If
  loc_107AA25:     For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_107AA2F:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_107AA37:       var_E0 = CVar(CLng(0)) 'Long
  loc_107AA41:       var_9C = CVar(CStr(var_86)) 'String
  loc_107AA49:       Set var_8C = Me.FGrid
  loc_107AA4F:       LateIdCallSt
  loc_107AA60:     Next var_118 'Integer
  loc_107AA68:   Else
  loc_107AA89:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_107AA99:   End If
  loc_107AA9D:   Set var_8C = Me.FGrid
  loc_107AAAE: End If
  loc_107AAAE: Exit Sub
  loc_107AAAF: ' Referenced from: 107A878
  loc_107AAB7: Set var_8C = Err()
  loc_107AABD: Call 0.Method_arg_1C (var_12C)
  loc_107AACE: If (var_12C <> 0) Then
  loc_107AAD9:   Set var_8C = Err()
  loc_107AADF:   Call 0.Method_arg_2C (var_A0)
  loc_107AB00:   MsgBox(CVar(var_A0), &H40, "Validation", var_F0, var_110)
  loc_107AB13: End If
  loc_107AB13: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1C840
  'Data Table: 4F2ED0
  loc_E1C837: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1C83F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1C660
  'Data Table: 4F2ED0
  loc_E1C657: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C65F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41C64
  'Data Table: 4F2ED0
  Dim var_8C As TextBox
  loc_E41C43: Set var_88 = Me.TxtGrid
  loc_E41C49: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41C51: var_8C.Visible = False
  loc_E41C5D: Call Proc_11_51_F1FB88()
  loc_E41C62: Exit Sub
End Sub

Private Sub Form_Load() '12497CC
  'Data Table: 4F2ED0
  Dim var_8C As Variant
  Dim var_B0 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim unk_4F2EF7 As Connection15
  loc_1249284: On Error Goto loc_124978E
  loc_1249296: Me.LblUser.Left = CDbl(13500)
  loc_12492AD: Me.LblUser.Top = CDbl(7800)
  loc_12492C4: Me.LblLDt.Top = CDbl(8160)
  loc_12492DB: Me.LblLDt.Left = CDbl(13500)
  loc_12492EA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1249302: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1249316: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_1249327: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_1249338: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_1249349: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_124935A: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_124936B: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_124937C: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_124938D: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_124939E: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_12493AF: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_12493C9: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_12493D7: Set var_8C = MemVar_1F92044
  loc_12493E6: Call 0.Method_Form_Load8 (var_8C)
  loc_12493FC: Me.var_8C.Clone
  loc_1249407: Set var_B0 = var_8C
  loc_1249416: Call 0.Method_arg_50 (var_B0, -1)
  loc_124945A: Proc_183_1_F5B310(Me, CStr(-2147483643), CStr(&HC00000))
  loc_1249472: Set var_8C = Me.txtCurrBal
  loc_1249478: Me.txtCurrBal.BackColor = -2147483643
  loc_124948F: Me.txtCurrBal.ForeColor = &HC00000
  loc_124949C: global_52 = 0
  loc_12494A8: If (global_52 = &HFF) Then
  loc_12494B6:   Set var_8C = Me.Lbl
  loc_12494BC:   Call 0.Method_Form_Load0 (&HF, var_B0, &HFF, global_52)
  loc_12494C4:   var_B0.Visible = CByte(1)
  loc_12494DD:   Set var_8C = Me.Txt
  loc_12494E3:   Call 0.Method_Form_Load0 (CInt(0), var_B0, &HFF)
  loc_12494EB:   var_B0.Visible = CByte(1)
  loc_12494FA: Else
  loc_1249505:   Set var_8C = Me.Lbl
  loc_124950B:   Call 0.Method_Form_Load0 (&HF, var_B0)
  loc_1249513:   var_B0.Visible = False
  loc_124952C:   Set var_8C = Me.Txt
  loc_1249532:   Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_124953A:   var_B0.Visible = False
  loc_1249546: End If
  loc_1249550: Set global_112 = New 
  loc_1249562: Me.Recordset15.CursorLocation = 3
  loc_124958C: var_C8 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_1249596: Me.Open var_C8, CVar(MemVar_1F921DC), 2
  loc_12495AA: CVarUnk
  loc_12495AF: VerifyVarObj
  loc_12495B5: Set var_8C = Me.DGAcName
  loc_12495BB: LateIdStAd
  loc_12495E5: Me.DGAcName.CursorLocation = 3
  loc_1249608: var_B4 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_124962D: CVarUnk
  loc_1249632: VerifyVarObj
  loc_1249638: Set var_8C = Me.DGUnderAc
  loc_124963E: LateIdStAd
  loc_1249668: Me.DGUnderAc.CursorLocation = 3
  loc_1249692: var_C8 = CVar("Select CityCode As Code,CityName As Name,CityHelp From City Where (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by CityName") 'String
  loc_124969C: ar("Select CityCode As Code,CityName As Name,CityHelp From City Where (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO')  and NATURE='Supplier' Order by GroupName"), CVar(MemVar_1F921DC), 2 var_C8, CVar(MemVar_1F921DC), 2
  loc_12496B0: CVarUnk
  loc_12496B5: VerifyVarObj
  loc_12496BB: Set var_8C = Me.DGCity
  loc_12496C1: LateIdStAd
  loc_12496D9: Set global_108 = New 
  loc_12496EB: Me.DGCity.LockType = 3
  loc_12496FB: Me.CursorLocation = 3
  loc_124970B: Me.CursorType = 2
  loc_124972B: var_B8 = "Select SubCode As SearchCode,SubCode,Site_Code,Name,LogSite_Code From SubGroup Where (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO')  and NATURE='Supplier'  order by Name"
  loc_1249734: unk_4F2EF7.Execute var_B8, var_C8, -1
  loc_124975A: Call Proc_11_57_16EDB68(var_8C, var_8C, New, 3, -1, var_8C)
  loc_1249774: var_B4 = "INI"
  loc_1249782: Call Proc_11_49_E88078(Proc_5_1_100CB50(var_B4, Me, Me, New, 3), -1, Me)
  loc_124978D: Exit Sub
  loc_124978E: ' Referenced from: 1249284
  loc_1249796: Set var_8C = Err()
  loc_124979C: Call 0.Method_arg_2C (var_B4, global_112)
  loc_12497B5: MsgBox(CVar(var_B4), &H40, var_DC, var_EC, var_10C)
  loc_12497C8: Exit Sub
End Sub

Private Sub Form_Resize() '109B188
  'Data Table: 4F2ED0
  Dim var_8C As Label
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  Dim var_C8 As Variant
  Dim var_DC As TextBox
  loc_109AED6: Call 0.Method_arg_50 (var_88)
  loc_109AEE8: Me.LblFormCaption.Caption = var_88
  loc_109AF01: Me.LblFormCaption.Left = CDbl(0)
  loc_109AF0D: Set var_A0 = Me.TopCtrl1
  loc_109AF13: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_109AF20: Set var_8C = Me.TopCtrl1
  loc_109AF26: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_109AF40: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_109AF5B: Call 0.Method_arg_100 (var_B8)
  loc_109AF6D: Me.LblFormCaption.Width = var_B8
  loc_109AF75: Call Proc_11_52_104784C()
  loc_109AF88: Set var_8C = Me.Txt
  loc_109AF8E: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_109AFAD: Me.DGAcName.Left = CVar(var_A0.Left)
  loc_109AFC9: Set var_B4 = Me.Txt
  loc_109AFCF: Call 0.Method_Form_Resize0 (CInt(1), var_DC)
  loc_109AFEA: Set var_8C = Me.Txt
  loc_109AFF0: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_109B008: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_109B017: Me.DGAcName.Top = CVar(var_A0.Left)
  loc_109B037: Set var_8C = Me.Txt
  loc_109B03D: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_109B05C: Me.DGUnderAc.Left = CVar(var_A0.Left)
  loc_109B078: Set var_B4 = Me.Txt
  loc_109B07E: Call 0.Method_Form_Resize0 (CInt(2), var_DC)
  loc_109B099: Set var_8C = Me.Txt
  loc_109B09F: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_109B0B7: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_109B0C6: Me.DGUnderAc.Top = CVar(var_A0.Left)
  loc_109B0E6: Set var_8C = Me.Txt
  loc_109B0EC: Call 0.Method_Form_Resize0 (CInt(8), var_A0)
  loc_109B10B: Me.DGCity.Left = CVar(var_A0.Left)
  loc_109B127: Set var_B4 = Me.Txt
  loc_109B12D: Call 0.Method_Form_Resize0 (CInt(8), var_DC)
  loc_109B148: Set var_8C = Me.Txt
  loc_109B14E: Call 0.Method_Form_Resize0 (CInt(8), var_A0)
  loc_109B166: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_109B175: Me.DGCity.Top = CVar(var_A0.Left)
  loc_109B187: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E998A8
  'Data Table: 4F2ED0
  loc_E9982B: Set global_108 = Nothing
  loc_E9983D: Set global_112 = Nothing
  loc_E9984F: Set global_116 = Nothing
  loc_E99861: Set global_120 = Nothing
  loc_E99873: Set global_124 = Nothing
  loc_E99885: Set global_152 = Nothing
  loc_E99891: global_132 = Nothing
  loc_E998A0: Set global_148 = Nothing
  loc_E998A7: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '10641F8
  'Data Table: 4F2ED0
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A0 As DataGrid
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1063F8C: On Error Goto loc_1064193
  loc_1063F92: var_86 = KeyCode
  loc_1063F9F: If Not (var_86 = CInt(&HD)) Then
  loc_1063FAC:   If Not (var_86 = CInt(&H28)) Then
  loc_1063FB9:     If (var_86 = CInt(&H26)) Then
  loc_1063FBC:     End If
  loc_1063FBC:   End If
  loc_1063FBF:   var_88 = KeyCode
  loc_1063FCC:   If Not (var_88 = CInt(&H28)) Then
  loc_1063FD9:     If (var_88 = CInt(&H26)) Then
  loc_1063FDC:     End If
  loc_1063FE0:     Set var_8C = Me.DGAcName
  loc_1063FF6:     Set var_A0 = Me.DGUnderAc
  loc_1064013:     var_C4 = Me.DGCity.Visible
  loc_106402D:     var_CA = Me.FrmList.Visible
  loc_106404D:     If ((((CBool(var_8C.Visible) = &HFF) Or (CBool(var_A0.Visible) = &HFF)) Or (CBool(var_C4) = &HFF)) Or (var_CA = &HFF)) Then
  loc_1064050:       Exit Sub
  loc_1064051:     End If
  loc_1064051:   End If
  loc_1064057:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_1064066:   If TypeOf var_8C Is arg_5 Then
  loc_106406F:     Call 0.Method_arg_1E8 (var_8C)
  loc_106408A:     Call Txt_Validate(CInt(var_8C.index))
  loc_1064095:   End If
  loc_10640A1:   Set var_8C = Me 
  loc_10640B1:   Call 0.Method_arg_58 (var_8C, KeyCode, Shift, var_CA)
  loc_10640BF:   If (var_CA = &HFF) Then
  loc_10640C8:     Call 0.Method_arg_1E8 (var_8C, 0)
  loc_10640D0:     var_9C = var_8C.Name
  loc_10640F0:     Call 0.Method_arg_1E8 (var_A0, (Ucase(var_9C) = "TXTGRID"))
  loc_10640F8:     var_EC = var_A0.Name
  loc_106412A:     If CBool(var_9C Or (Ucase(var_EC) = "FGRID")) Then
  loc_1064137:       If (CLng(KeyCode) = &H28) Then
  loc_1064140:         Call 0.Method_arg_1E8 (var_8C)
  loc_106414E:         Call Proc_11_62_E6EBA0(var_8C)
  loc_1064156:       End If
  loc_1064159:     Else
  loc_106415F:       Call 0.Method_arg_1E8 (var_8C)
  loc_106416D:       Call Proc_11_62_E6EBA0(var_8C)
  loc_1064175:     End If
  loc_1064175:   End If
  loc_1064178: Else
  loc_106418A:   Proc_183_40_F30B0C(Me, KeyCode)
  loc_1064192: End If
  loc_1064192: Exit Sub
  loc_1064193: ' Referenced from: 1063F8C
  loc_106419B: Set var_8C = Err()
  loc_10641A1: Call 0.Method_arg_1C (var_130, Shift)
  loc_10641B2: If (var_130 <> 0) Then
  loc_10641BD:   Set var_8C = Err()
  loc_10641C3:   Call 0.Method_arg_2C (var_134)
  loc_10641E4:   MsgBox(CVar(var_134), &H40, "Validation", var_C4, var_EC)
  loc_10641F7: End If
  loc_10641F7: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1A790
  'Data Table: 4F2ED0
  Dim KeyAscii As Integer
  loc_E1A784: If (KeyAscii = CInt(&HD)) Then
  loc_E1A789:   KeyAscii = 0
  loc_E1A78C: End If
  loc_E1A78C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F937C4
  'Data Table: 4F2ED0
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_F93660: On Error Goto loc_F9375F
  loc_F93663: Call Proc_11_50_FC31C8()
  loc_F93676: Set var_88 = Me.Txt
  loc_F9367C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H15), var_8C)
  loc_F93684: var_8C.Text = "Yes"
  loc_F936A5: var_90 = "ADD"
  loc_F936B3: Call Proc_11_49_E88078(Proc_5_1_100CB50(var_90, Me))
  loc_F936C7: If (global_52 = &HFF) Then
  loc_F936D5:   Set var_88 = Me.Txt
  loc_F936DB:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_8C)
  loc_F936E3:   var_8C.SetFocus
  loc_F936F2: Else
  loc_F936FD:   Set var_88 = Me.Txt
  loc_F93703:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_8C)
  loc_F9370B:   var_8C.SetFocus
  loc_F93717: End If
  loc_F9371D: global_88 = CDbl(0)
  loc_F93726: global_96 = vbNullString
  loc_F93730: global_60 = "N"
  loc_F93741: Me.LblUser.Caption = vbNullString
  loc_F93756: Me.LblLDt.Caption = vbNullString
  loc_F9375E: Exit Sub
  loc_F9375F: ' Referenced from: F93660
  loc_F93767: Set var_88 = Err()
  loc_F9376D: Call 0.Method_arg_1C (var_98, global_88)
  loc_F9377E: If (var_98 <> 0) Then
  loc_F93789:   Set var_88 = Err()
  loc_F9378F:   Call 0.Method_arg_2C (var_90)
  loc_F937B0:   MsgBox(CVar(var_90), &H40, "Validation", var_E8, var_108)
  loc_F937C3: End If
  loc_F937C3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F9F864
  'Data Table: 4F2ED0
  Dim var_11C As TextBox
  loc_F9F6F0: On Error Goto loc_F9F7FD
  loc_F9F6F3: Call Proc_11_51_F1FB88()
  loc_F9F72F: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_F9F747:   var_10C = "INI"
  loc_F9F755:   Call Proc_11_49_E88078(Proc_5_1_100CB50(var_10C, Me))
  loc_F9F760:   Call Proc_11_57_16EDB68(global_108)
  loc_F9F773:   Set var_110 = Me.Txt
  loc_F9F779:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_112, var_86)
  loc_F9F789:   For var_116 =  To CByte((var_112 - 1)): CByte(0) = var_116 'Byte
  loc_F9F798:     If (CInt(var_86) <> 3) Then
  loc_F9F7AD:       Set var_110 = Me.Txt
  loc_F9F7B3:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F9F7BB:       var_11C.BackColor = -2147483643
  loc_F9F7D9:       Set var_110 = Me.Txt
  loc_F9F7DF:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F9F7E7:       var_11C.ForeColor = &HC00000
  loc_F9F7F3:     End If
  loc_F9F7F6:   Next var_116 'Byte
  loc_F9F7FC: End If
  loc_F9F7FC: Exit Sub
  loc_F9F7FD: ' Referenced from: F9F6F0
  loc_F9F805: Set var_110 = Err()
  loc_F9F80B: Call 0.Method_arg_1C (var_120)
  loc_F9F81C: If (var_120 <> 0) Then
  loc_F9F827:   Set var_110 = Err()
  loc_F9F82D:   Call 0.Method_arg_2C (var_10C)
  loc_F9F84E:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F9F861: End If
  loc_F9F861: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1249220
  'Data Table: 4F2ED0
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim unk_4F2EF7 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_8C As Fields15
  Dim arg_6FE1 As Variant
  loc_1248D03: If (Me.RecordCount > 0) Then
  loc_1248D33:   Set var_8C = Me.Txt
  loc_1248D39:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where SubCode= '", var_BC, -1)
  loc_1248D5A:   unk_4F2EF7.Execute var_C4 & var_94 & "' AND V_TYPE<>'F_AO'", 0, var_D8
  loc_1248D6A:    = var_C4.Item()
  loc_1248D72:    = var_D8.Value
  loc_1248D9F:   If (var_90.Text.Fields > 0) Then
  loc_1248DBD:     var_BC = "Transactions Exist Can't Delete it"
  loc_1248DC3:     MsgBox(var_BC, &H40, "Information", var_108, var_128)
  loc_1248DD3:     Exit Sub
  loc_1248DD4:   End If
  loc_1248E01:   Set var_8C = Me.Txt
  loc_1248E07:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where ContraSub= '", var_BC, -1)
  loc_1248E28:   unk_4F2EF7.Execute var_C4 & var_94 & "' AND V_TYPE<>'F_AO'", 0, var_D8
  loc_1248E38:    = var_C4.Item()
  loc_1248E40:    = var_D8.Value
  loc_1248E6D:   If (var_90.Text.Fields > 0) Then
  loc_1248E91:     MsgBox("Transactions Exist Can't Delete it", &H40, "Information", var_108, var_128)
  loc_1248EA1:     Exit Sub
  loc_1248EA2:   End If
  loc_1248ED4:   var_12C = "Purchase Order"
  loc_1248EFF:   Proc_6_108_1010FEC(MemVar_1F92044, "POrder1", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value))
  loc_1248F4B:   var_12C = "Purchase Order"
  loc_1248F76:   Proc_6_108_1010FEC(MemVar_1F92044, "POrder", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0)
  loc_1248FED:   Proc_6_108_1010FEC(MemVar_1F92044, "Stock", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0, "Stock")
  loc_1249064:   Proc_6_108_1010FEC(MemVar_1F92044, "GIN", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0, "GIN", 0)
  loc_12490DB:   Proc_6_108_1010FEC(MemVar_1F92044, "Purch1", "Party", CStr(Me.Fields.Item("SearchCode").Value), 0, "Purchase Bill", 0)
  loc_1249152:   Proc_6_108_1010FEC(MemVar_1F92044, "Purch2", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0, "Purchase Bill", 0)
  loc_124919E:   var_12C = "Purchase Bill"
  loc_12491C9:   Proc_6_108_1010FEC(MemVar_1F92044, "SunTran", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0, var_12C, 0)
  loc_12491E3:   Call Proc_11_61_11B5550(0, var_12C, 0)
  loc_12491EB: Else
  loc_124920C:   MsgBox("There Is No Record To Delete", &H40, "Information", var_108, var_128)
  loc_124921C: End If
  loc_124921C: Exit Sub
  loc_124921D: arg_6FE1 = CVar(0) 'Currency
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FB76D8
  'Data Table: 4F2ED0
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Variant
  Dim var_B8 As Variant
  loc_FB7538: On Error Goto loc_FB7672
  loc_FB7544: var_88 = Me.RecordCount
  loc_FB7552: If (var_88 > 0) Then
  loc_FB756A:   var_8C = "EDIT"
  loc_FB7578:   Call Proc_11_49_E88078(Proc_5_1_100CB50(var_8C, Me))
  loc_FB7590:   Set var_90 = Me.Txt
  loc_FB7596:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FB759E:   var_98.Enabled = False
  loc_FB75B0:   Call Proc_11_55_EDD0C0(global_100)
  loc_FB75CA:   var_B8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FB75D2:   Set var_98 = Me.FGrid
  loc_FB75F9:   Set var_90 = Me.Txt
  loc_FB75FF:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98, FGrid.DispID_10000)
  loc_FB7607:   var_98.SetFocus
  loc_FB7616: Else
  loc_FB7621:   var_B8 = "Information"
  loc_FB7637:   MsgBox("There Is No Record To Edit.", &H40, var_B8, var_F8, var_118)
  loc_FB7647: End If
  loc_FB7654: Me.LblUser.Caption = vbNullString
  loc_FB7669: Me.LblLDt.Caption = vbNullString
  loc_FB7671: Exit Sub
  loc_FB7672: ' Referenced from: FB7538
  loc_FB767A: Set var_90 = Err()
  loc_FB7680: Call 0.Method_arg_1C (var_88, var_B8)
  loc_FB7691: If (var_88 <> 0) Then
  loc_FB769C:   Set var_90 = Err()
  loc_FB76A2:   Call 0.Method_arg_2C (var_8C)
  loc_FB76C3:   MsgBox(CVar(var_8C), &H40, "Validation", var_F8, var_118)
  loc_FB76D6: End If
  loc_FB76D6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A610
  'Data Table: 4F2ED0
  loc_E1A605: Me.Global.Unload Me
  loc_E1A60D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F24E30
  'Data Table: 4F2ED0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F24D30: On Error Goto loc_F24DC8
  loc_F24D3C: var_88 = Me.RecordCount
  loc_F24D4A: If (var_88 <= 0) Then
  loc_F24D53:   var_B8 = "Information"
  loc_F24D6E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F24D7E:   Exit Sub
  loc_F24D7F: End If
  loc_F24D86: var_10C = "Select SubCode As SearchCode,Name,G.GroupName As UnderGroup,ConPerson,Add1 As Address1,C.CityName,Phone,Mobile,FAX,EMail,PANNo As PAN,GSTIN,Active=Case When ActiveYN=0 then 'No' else 'Yes' end  ,Remark From ((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode)) Where S.NATURE='Supplier' AND G.AliasYN<>'Y' AND (S.LOGSITE_CODE='" & MemVar_1F92078
  loc_F24D8D: MemVar_1F920E4 = var_10C & "' OR S.LOGSITE_CODE='HO') Order by Name"
  loc_F24D9A: MemVar_1F92120 = Me
  loc_F24DA1: var_10C = "3500,2200,1200,2000,2000,2000,2000,1000,1000,1300,1000,1000"
  loc_F24DA7: Proc_6_126_F1BCC0(var_10C)
  loc_F24DC2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F24DC7: Exit Sub
  loc_F24DC8: ' Referenced from: F24D30
  loc_F24DD0: Set var_110 = Err()
  loc_F24DD6: Call 0.Method_arg_1C (var_88)
  loc_F24DE7: If (var_88 <> 0) Then
  loc_F24DF2:   Set var_110 = Err()
  loc_F24DF8:   Call 0.Method_arg_2C (var_10C)
  loc_F24E19:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F24E2C: End If
  loc_F24E2C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31E78
  'Data Table: 4F2ED0
  loc_E31E68: Proc_5_0_110649C(&HFF, Me)
  loc_E31E70: Call Proc_11_57_16EDB68(global_108)
  loc_E31E75: Exit Sub
  loc_E31E76: Set arg_5800 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E30EB8
  'Data Table: 4F2ED0
  loc_E30EA8: Proc_5_0_110649C(&HFF, Me)
  loc_E30EB0: Call Proc_11_57_16EDB68(global_108)
  loc_E30EB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E30FD8
  'Data Table: 4F2ED0
  Dim arg_58FF As Integer
  loc_E30FC8: Proc_5_0_110649C(&HFF, Me)
  loc_E30FD0: Call Proc_11_57_16EDB68(global_108)
  loc_E30FD5: Exit Sub
  loc_E30FD6: arg_58FF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39378
  'Data Table: 4F2ED0
  Dim arg_58FF As Integer
  loc_E39368: Proc_5_0_110649C(&HFF, Me)
  loc_E39370: Call Proc_11_57_16EDB68(global_108)
  loc_E39375: Exit Sub
  loc_E39376: arg_58FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10B4350
  'Data Table: 4F2ED0
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_4F2EF9 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_132 As Integer
  Dim var_C8 As Variant
  loc_10B4088: On Error Goto loc_10B42EA
  loc_10B40A2: If (Me.RecordCount <= 0) Then
  loc_10B40A5:   Exit Sub
  loc_10B40A6: End If
  loc_10B40C0: var_A8 = "Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,Active=CASE ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' END,CreditLimit,CreditDays,Remark,GSTIN From (SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode " & vbNullString
  loc_10B40C9: unk_4F2EF9.Execute var_A8, var_C8, -1
  loc_10B40D4: Set var_88 = var_CC
  loc_10B40E6: var_A4 = var_88.RecordCount
  loc_10B40F4: If (var_A4 = 0) Then
  loc_10B4110:   MsgBox("No record Found to Print", 0, var_EC, var_10C, var_12C)
  loc_10B4120:   Exit Sub
  loc_10B4121: End If
  loc_10B4137: Set var_CC = var_88 
  loc_10B4143: var_132 = CreateFieldDefFile(var_CC, MemVar_1F920B4 & "\PartyMast.ttx")
  loc_10B414D: Set var_88 = var_CC
  loc_10B4153: var_B8 = CVar(var_132) 'Integer
  loc_10B4156: var_98 = var_B8 'Variant
  loc_10B4172: var_A8 = MemVar_1F920B4 & "\PartyMast.RPT"
  loc_10B417B: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_10B4186: MemVar_1F921E4 = var_CC
  loc_10B41A1: Call 0.Method_arg_90 (var_CC, var_A4, var_9A, 1)
  loc_10B41A9: Call 0.Method_arg_24 (var_132, &HFF)
  loc_10B41B5: For var_136 =  To CInt(var_A4): var_CC = var_136 'Integer
  loc_10B41CE:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10B41D6:   Call 0.Method_arg_20 (var_13C)
  loc_10B41DE:   Call 0.Method_arg_30 (var_A8)
  loc_10B4224:   If (Ucase(CVar(var_A8)) = Ucase("Title")) Then
  loc_10B423A:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10B4242:     Call 0.Method_arg_20 (var_13C)
  loc_10B424A:     Call 0.Method_arg_38 ("'Supplier List'")
  loc_10B4256:   End If
  loc_10B4259: Next var_136 'Integer
  loc_10B4277: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_10B427F: Call 0.Method_arg_2C (var_DC)
  loc_10B428D: Call 0.Method_arg_150 (var_FC)
  loc_10B4298: Call 0.Method_arg_50 (var_A8)
  loc_10B42A2: Set var_13C = Nothing
  loc_10B42BC: Set var_CC = MemVar_1F921E4 
  loc_10B42C8: Proc_6_99_1483714(var_CC, 0, var_A8)
  loc_10B42D3: MemVar_1F921E4 = var_CC
  loc_10B42E6: Set var_88 = Nothing
  loc_10B42E9: Exit Sub
  loc_10B42EA: ' Referenced from: 10B4088
  loc_10B42F2: Set var_CC = Err()
  loc_10B42F8: Call 0.Method_arg_1C (var_A4, &HFF)
  loc_10B4309: If (var_A4 <> 0) Then
  loc_10B4314:   Set var_CC = Err()
  loc_10B431A:   Call 0.Method_arg_2C (var_A8)
  loc_10B433B:   MsgBox(CVar(var_A8), &H40, "Validation", var_10C, var_12C)
  loc_10B434E: End If
  loc_10B434E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E58FD8
  'Data Table: 4F2ED0
  Dim Me As Recordset15
  loc_E58F9F: Me.Requery -1
  loc_E58FAF: Me.Requery -1
  loc_E58FBF: Me.Requery -1
  loc_E58FCF: Me.Requery -1
  loc_E58FD4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12C9930
  'Data Table: 4F2ED0
  Dim var_94 As TextBox
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_A0 As String
  Dim var_F4 As TextBox
  Dim var_15C As String
  Dim unk_4F2EF7 As Connection15
  Dim var_90 As MSHFlexGrid
  loc_12C92EC: Set var_90 = Me.TxtGrid
  loc_12C92F2: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_12C92FA: var_96 = var_94.Visible
  loc_12C930C: If (var_96 = &HFF) Then
  loc_12C9312:   Call Proc_11_56_11C9A68(var_96)
  loc_12C931D:   If (var_96 = 0) Then
  loc_12C9325:     Call TxtGrid_LostFocus(0)
  loc_12C9333:     Set var_90 = Me.TxtGrid
  loc_12C9339:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_12C9341:     var_94.SetFocus
  loc_12C934D:     Exit Sub
  loc_12C934E:   End If
  loc_12C934E: End If
  loc_12C934E: Call Proc_11_51_F1FB88(var_94)
  loc_12C935E: Set var_90 = Me.Txt
  loc_12C9364: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_12C938D: If (Proc_183_19_E8DAFC(var_94, "A/C Name") = 0) Then
  loc_12C9390:   Exit Sub
  loc_12C9391: End If
  loc_12C939C: Set var_90 = Me.Txt
  loc_12C93A2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_12C93CB: If (Proc_183_19_E8DAFC(var_94, "Under Group") = 0) Then
  loc_12C93CE:   Exit Sub
  loc_12C93CF: End If
  loc_12C93DA: Set var_90 = Me.Txt
  loc_12C93E0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_94)
  loc_12C9409: If (Proc_183_19_E8DAFC(var_94, "ActiveYN") = 0) Then
  loc_12C940C:   Exit Sub
  loc_12C940D: End If
  loc_12C941B: Set var_90 = Me.Txt
  loc_12C9421: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_94)
  loc_12C9440: If (var_94.Text <> vbNullString) Then
  loc_12C9453:   Set var_90 = Me.Txt
  loc_12C9459:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_94)
  loc_12C946F:   var_D0 = InStr(1, CVar(var_94), "@", 0)
  loc_12C948D:   Set var_9C = Me.Txt
  loc_12C9493:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4, 1)
  loc_12C949B:   var_114 = CVar(var_F4) 'Address
  loc_12C94CF:   If CBool(var_94 Or (InStr((var_D0 = 0), var_114, ".", 0) = 0)) Then
  loc_12C94EB:     MsgBox("Please fill a Valid EMail Id.", 0, var_D0, var_F0, var_114)
  loc_12C94FB:     Exit Sub
  loc_12C94FC:   End If
  loc_12C9507:   Set var_90 = Me.Txt
  loc_12C950D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD))
  loc_12C9533:   Set var_9C = Me.Txt
  loc_12C9539:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4)
  loc_12C9541:   var_F4.Text = CStr(LCase(CVar(var_94)))
  loc_12C9559: End If
  loc_12C955D: Set var_90 = Me.TopCtrl1
  loc_12C9563: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12C956B: var_A0 = CStr()
  loc_12C957C: If (var_A0 = "Add") Then
  loc_12C959D:   Set var_90 = Me.Txt
  loc_12C95A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_12C95AB:   var_C0 = var_94.Text
  loc_12C95BC:   var_15C = Proc_183_20_FB3974(var_A0, -1)
  loc_12C95D0:   unk_4F2EF7.Execute var_9C & var_15C & "'", , 
  loc_12C9609:   If (var_9C.RecordCount > 0) Then
  loc_12C962D:     MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_12C9648:     Set var_90 = Me.Txt
  loc_12C964E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_12C9656:     var_94.SetFocus
  loc_12C9662:     Exit Sub
  loc_12C9663:   End If
  loc_12C9666: Else
  loc_12C966A:   Set var_90 = Me.TopCtrl1
  loc_12C9670:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_12C9678:   var_A0 = CStr()
  loc_12C9689:   If (var_A0 = "Edit") Then
  loc_12C96AA:     Set var_90 = Me.Txt
  loc_12C96B0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_12C96B8:     var_C0 = var_94.Text
  loc_12C96C9:     var_15C = Proc_183_20_FB3974(var_A0, -1)
  loc_12C96EE:     unk_4F2EF7.Execute var_9C & var_15C & "' and Name<>'" & global_80 & "'", , 
  loc_12C972B:     If (var_9C.RecordCount > 0) Then
  loc_12C974F:       MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_12C9770:       Set var_90 = Me.Txt
  loc_12C9776:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_12C977E:       var_94.Text = global_80
  loc_12C9795:       Set var_90 = Me.Txt
  loc_12C979B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_12C97A3:       var_94.SetFocus
  loc_12C97AF:       Exit Sub
  loc_12C97B0:     End If
  loc_12C97B0:   End If
  loc_12C97B0: End If
  loc_12C97D5: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_174 'Integer
  loc_12C97DF:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_12C97E7:   var_104 = CVar(CLng(3)) 'Long
  loc_12C9817:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_12C981E:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_12C9826:     var_104 = CVar(CLng(4)) 'Long
  loc_12C9851:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12C9879:       MsgBox(CVar("Please Specify Cr/Dr in Row No " & CStr(var_86)), &H40, "Validation", var_F0, var_114)
  loc_12C989F:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_12C98B9:       Me.FGrid.Col = CVar(CLng(4))
  loc_12C98C5:       Set var_90 = Me.FGrid
  loc_12C98E9:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_12C98F1:       Exit Sub
  loc_12C98F2:     End If
  loc_12C98F2:   End If
  loc_12C98F5: Next var_174 'Integer
  loc_12C98FE: Set var_90 = Me.TopCtrl1
  loc_12C9904: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12C991D: If (CStr() = "Add") Then
  loc_12C9920:   Call Proc_11_59_14BD780()
  loc_12C9928: Else
  loc_12C9928:   Call Proc_11_60_1552C70()
  loc_12C992D: End If
  loc_12C992D: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_9 'FA909C
  'Data Table: 4F2ED0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA8F1C: On Error Goto loc_FA9036
  loc_FA8F2E: Me.DGAcName.Visible = False
  loc_FA8F3F: var_AC = Me.RecordCount
  loc_FA8F4D: If (var_AC > 0) Then
  loc_FA8F8C:   Set var_B4 = Me.Txt
  loc_FA8F92:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA8F9A:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA8FCD:   var_B0 = Me.Fields.Item("Code")
  loc_FA8FDE:   var_CC = CStr(var_B0.Value)
  loc_FA8FEC:   Set var_B4 = Me.Txt
  loc_FA8FF2:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA8FFA:   var_B8.Tag = var_CC
  loc_FA9010: End If
  loc_FA901B: Set var_A8 = Me.Txt
  loc_FA9021: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1))
  loc_FA9029: var_B0.SetFocus
  loc_FA9035: Exit Sub
  loc_FA9036: ' Referenced from: FA8F1C
  loc_FA903E: Set var_A8 = Err()
  loc_FA9044: Call 0.Method_arg_1C (var_AC)
  loc_FA9055: If (var_AC <> 0) Then
  loc_FA9060:   Set var_A8 = Err()
  loc_FA9066:   Call 0.Method_arg_2C (var_CC)
  loc_FA9087:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA909A: End If
  loc_FA909A: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E7322C
  'Data Table: 4F2ED0
  loc_E731EA: Proc_6_153_E91194(Me.DGAcName, arg_14)
  loc_E73201: Set var_8C = Me.FGPoint
  loc_E7321D: Proc_6_138_106D6F8(Me.DGAcName, global_112, CInt(1))
  loc_E7322B: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'FEF6F8
  'Data Table: 4F2ED0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FEF524: On Error Goto loc_FEF693
  loc_FEF536: Me.DGCity.Visible = False
  loc_FEF547: var_AC = Me.RecordCount
  loc_FEF555: If (var_AC > 0) Then
  loc_FEF5A7:   Set var_CC = Me.Txt
  loc_FEF5AD:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(Me.DGCity.Tag)), var_D0)
  loc_FEF5B5:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEF60D:   Set var_B4 = Me.DGCity
  loc_FEF624:   Set var_CC = Me.Txt
  loc_FEF62A:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FEF632:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FEF652: End If
  loc_FEF667: var_C8 = CStr(Me.DGCity.Tag)
  loc_FEF670: Set var_B0 = Me.Txt
  loc_FEF676: Call 0.Method_DGCity_UnknownEvent_90 (CInt(var_C8))
  loc_FEF67E: var_B4.SetFocus
  loc_FEF692: Exit Sub
  loc_FEF693: ' Referenced from: FEF524
  loc_FEF69B: Set var_A8 = Err()
  loc_FEF6A1: Call 0.Method_arg_1C (var_AC)
  loc_FEF6B2: If (var_AC <> 0) Then
  loc_FEF6BD:   Set var_A8 = Err()
  loc_FEF6C3:   Call 0.Method_arg_2C (var_C8)
  loc_FEF6E4:   MsgBox(CVar(var_C8), &H40, "Validation", var_F4, var_114)
  loc_FEF6F7: End If
  loc_FEF6F7: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'E72168
  'Data Table: 4F2ED0
  loc_E72126: Proc_6_153_E91194(Me.DGCity, arg_14)
  loc_E7213D: Set var_8C = Me.FGPoint
  loc_E72159: Proc_6_138_106D6F8(Me.DGCity, global_124, CInt(8))
  loc_E72167: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'FAA110
  'Data Table: 4F2ED0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA9F90: On Error Goto loc_FAA0AA
  loc_FA9FA2: Me.DGUnderAc.Visible = False
  loc_FA9FB3: var_AC = Me.RecordCount
  loc_FA9FC1: If (var_AC > 0) Then
  loc_FAA000:   Set var_B4 = Me.Txt
  loc_FAA006:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FAA00E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FAA041:   var_B0 = Me.Fields.Item("Code")
  loc_FAA052:   var_CC = CStr(var_B0.Value)
  loc_FAA060:   Set var_B4 = Me.Txt
  loc_FAA066:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FAA06E:   var_B8.Tag = var_CC
  loc_FAA084: End If
  loc_FAA08F: Set var_A8 = Me.Txt
  loc_FAA095: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2))
  loc_FAA09D: var_B0.SetFocus
  loc_FAA0A9: Exit Sub
  loc_FAA0AA: ' Referenced from: FA9F90
  loc_FAA0B2: Set var_A8 = Err()
  loc_FAA0B8: Call 0.Method_arg_1C (var_AC)
  loc_FAA0C9: If (var_AC <> 0) Then
  loc_FAA0D4:   Set var_A8 = Err()
  loc_FAA0DA:   Call 0.Method_arg_2C (var_CC)
  loc_FAA0FB:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FAA10E: End If
  loc_FAA10E: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_1F 'E74D58
  'Data Table: 4F2ED0
  loc_E74D16: Proc_6_153_E91194(Me.DGUnderAc, arg_14)
  loc_E74D2D: Set var_8C = Me.FGPoint
  loc_E74D49: Proc_6_138_106D6F8(Me.DGUnderAc, global_120, CInt(2))
  loc_E74D57: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'F06664
  'Data Table: 4F2ED0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_F06596: On Error Goto loc_F065FF
  loc_F0659F: Me.MoveFirst
  loc_F065B9: var_8C = "SearchCode='" & MyValue
  loc_F065C9: Me.Find var_8C & "'", 0, 1
  loc_F065D5: Call Proc_11_57_16EDB68(var_A0)
  loc_F065F6: Proc_5_0_110649C(&HFF, Me)
  loc_F065FE: Exit Sub
  loc_F065FF: ' Referenced from: F06596
  loc_F06607: Set var_A8 = Err()
  loc_F0660D: Call 0.Method_arg_1C (var_B0, global_108)
  loc_F0661E: If (var_B0 <> 0) Then
  loc_F06629:   Set var_A8 = Err()
  loc_F0662F:   Call 0.Method_arg_2C (var_8C)
  loc_F06650:   MsgBox(CVar(var_8C), &H40, "Validation", var_F0, var_110)
  loc_F06663: End If
  loc_F06663: Exit Sub
End Sub

Public Sub Proc_11_49_E88078(arg_C) 'E88078
  'Data Table: 4F2ED0
  Dim var_98 As TextBox
  loc_E88012: Set var_8C = Me.Txt
  loc_E88018: Call 0.Method_Proc_11_49_E88078C (var_8E, var_86)
  loc_E88028: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8803D:   If ((var_86 = &H12) Or (var_86 = &H13)) Then
  loc_E88040:     GoTo loc_E8806D
  loc_E88043:   End If
  loc_E88053:   Set var_8C = Me.Txt
  loc_E88059:   Call 0.Method_Proc_11_49_E880780 (CInt(var_86), var_98)
  loc_E88061:   var_98.Enabled = arg_C
  loc_E8806D:   ' Referenced from: E88040
  loc_E88070: Next var_92 'Byte
  loc_E88076: Exit Sub
End Sub

Public Sub Proc_11_50_FC31C8
  'Data Table: 4F2ED0
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_FC302A: Set var_8C = Me.Txt
  loc_FC3030: Call 0.Method_Proc_11_50_FC31C8C (var_8E, var_86)
  loc_FC3040: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FC3056:   Set var_8C = Me.Txt
  loc_FC305C:   Call 0.Method_Proc_11_50_FC31C80 (CInt(var_86), var_98)
  loc_FC3064:   var_98.Text = vbNullString
  loc_FC3080:   Set var_8C = Me.Txt
  loc_FC3086:   Call 0.Method_Proc_11_50_FC31C80 (CInt(var_86), var_98)
  loc_FC308E:   var_98.Tag = vbNullString
  loc_FC309D: Next var_92 'Byte
  loc_FC30B0: Me.LblNature.Caption = vbNullString
  loc_FC30C5: Me.LblOpBalType.Caption = vbNullString
  loc_FC30DA: Me.LblCurBalType.Caption = vbNullString
  loc_FC30EF: Me.txtCurrBal.Text = vbNullString
  loc_FC310A: Me.FGrid.Rows = 1
  loc_FC3127: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FC312F: Set var_98 = Me.FGrid
  loc_FC315E: Me.FGrid.FixedRows = 1
  loc_FC3188: Proc_183_1_F5B310(Me, CStr(-2147483643), CStr(&HC00000))
  loc_FC31A6: Me.txtCurrBal.BackColor = -2147483643
  loc_FC31BD: Me.txtCurrBal.ForeColor = &HC00000
  loc_FC31C5: Exit Sub
End Sub

Public Sub Proc_11_51_F1FB88
  'Data Table: 4F2ED0
  loc_F1FA98: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F1FAAA:   Me.DGAcName.Visible = False
  loc_F1FAB2: End If
  loc_F1FACE: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_F1FAE0:   Me.DGUnderAc.Visible = False
  loc_F1FAE8: End If
  loc_F1FB04: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F1FB16:   Me.DGCity.Visible = False
  loc_F1FB1E: End If
  loc_F1FB39: If (Me.FrmList.Visible = &HFF) Then
  loc_F1FB48:   Me.FrmList.Visible = False
  loc_F1FB50: End If
  loc_F1FB6C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1FB7E:   Me.FGPoint.Visible = False
  loc_F1FB86: End If
  loc_F1FB86: Exit Sub
End Sub

Public Sub Proc_11_52_104784C
  'Data Table: 4F2ED0
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_10475DC: Set var_88 = Me.FGrid
  loc_10475EA: var_88.Left = CVar(CDbl(&H64))
  loc_10475FB: var_88.Top = CVar(CDbl(3300))
  loc_104760C: var_88.RowHeightMin = &HDC
  loc_104761D: var_88.Cols = 6
  loc_1047622: var_98 = 0
  loc_104762E: var_B8 = CVar(CLng(0)) 'Long
  loc_1047633: var_D8 = "S.No"
  loc_104763C: LateIdCallSt
  loc_1047647: var_98 = CVar(CLng(0)) 'Long
  loc_1047652: var_B8 = CVar(CInt(1)) 'Integer
  loc_1047659: LateIdCallSt
  loc_1047664: var_98 = CVar(CLng(0)) 'Long
  loc_1047669: var_B8 = &H226
  loc_1047675: LateIdCallSt
  loc_104767D: var_98 = 0
  loc_1047689: var_B8 = CVar(CLng(5)) 'Long
  loc_104768E: var_D8 = "Voucher No"
  loc_1047697: LateIdCallSt
  loc_10476A2: var_98 = CVar(CLng(5)) 'Long
  loc_10476AD: var_B8 = CVar(CInt(1)) 'Integer
  loc_10476B4: LateIdCallSt
  loc_10476BF: var_98 = CVar(CLng(5)) 'Long
  loc_10476C4: var_B8 = 0
  loc_10476D0: LateIdCallSt
  loc_10476D8: var_98 = 0
  loc_10476E4: var_B8 = CVar(CLng(1)) 'Long
  loc_10476E9: var_D8 = "Ref. Date"
  loc_10476F2: LateIdCallSt
  loc_10476FD: var_98 = CVar(CLng(1)) 'Long
  loc_1047708: var_B8 = CVar(CInt(1)) 'Integer
  loc_104770F: LateIdCallSt
  loc_104771A: var_98 = CVar(CLng(1)) 'Long
  loc_104771F: var_B8 = &H578
  loc_104772B: LateIdCallSt
  loc_1047733: var_98 = 0
  loc_104773F: var_B8 = CVar(CLng(2)) 'Long
  loc_1047744: var_D8 = "Narration"
  loc_104774D: LateIdCallSt
  loc_1047758: var_98 = CVar(CLng(2)) 'Long
  loc_1047763: var_B8 = CVar(CInt(1)) 'Integer
  loc_104776A: LateIdCallSt
  loc_1047775: var_98 = CVar(CLng(2)) 'Long
  loc_104777A: var_B8 = &H8CA
  loc_1047786: LateIdCallSt
  loc_104778E: var_98 = 0
  loc_104779A: var_B8 = CVar(CLng(3)) 'Long
  loc_104779F: var_D8 = "Amount"
  loc_10477A8: LateIdCallSt
  loc_10477B3: var_98 = CVar(CLng(3)) 'Long
  loc_10477BE: var_B8 = CVar(CInt(7)) 'Integer
  loc_10477C5: LateIdCallSt
  loc_10477D0: var_98 = CVar(CLng(3)) 'Long
  loc_10477D5: var_B8 = &H4B0
  loc_10477E1: LateIdCallSt
  loc_10477E9: var_98 = 0
  loc_10477F5: var_B8 = CVar(CLng(4)) 'Long
  loc_10477FA: var_D8 = "Cr/Dr"
  loc_1047803: LateIdCallSt
  loc_104780E: var_98 = CVar(CLng(4)) 'Long
  loc_1047819: var_B8 = CVar(CInt(1)) 'Integer
  loc_1047820: LateIdCallSt
  loc_104782B: var_98 = CVar(CLng(4)) 'Long
  loc_1047830: var_B8 = &H258
  loc_104783C: LateIdCallSt
  loc_1047846: Set var_88 = Nothing 
  loc_104784A: Exit Sub
  loc_104784B: Exit Sub
End Sub

Public Sub Proc_11_53_1129FA8
  'Data Table: 4F2ED0
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
  loc_1129C47: var_90 = CDbl(0)
  loc_1129C4D: var_98 = CDbl(0)
  loc_1129C53: var_A0 = CDbl(0)
  loc_1129C7B: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_1129C85:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_1129C8D:   var_E8 = CVar(CLng(4)) 'Long
  loc_1129CB8:   If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_1129CBF:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1129CC7:     var_E8 = CVar(CLng(3)) 'Long
  loc_1129CF3:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1129D02:   Else
  loc_1129D06:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1129D0E:     var_E8 = CVar(CLng(4)) 'Long
  loc_1129D39:     If (CStr(Me.FGrid.TextMatrix)) = "Dr") Then
  loc_1129D40:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_1129D48:       var_E8 = CVar(CLng(3)) 'Long
  loc_1129D74:       var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1129D80:     End If
  loc_1129D80:   End If
  loc_1129D83: Next var_B8 'Integer
  loc_1129DA4: var_B4 = CVar((var_98 - var_90)) 'Double
  loc_1129DB4: var_A0 = CSng(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_1129DE8: var_FC = CStr(Format(CVar(Abs(var_A0)), "0.00"))
  loc_1129DF7: Set var_A4 = Me.Txt
  loc_1129DFD: Call 0.Method_Proc_11_53_1129FA80 (CInt(&H12), var_128, var_FC, 1)
  loc_1129E05: var_128.Text = 1
  loc_1129E24: If (var_A0 < CDbl(0)) Then
  loc_1129E34:   Me.LblOpBalType.Caption = "Cr"
  loc_1129E3F: Else
  loc_1129E4C:   Me.LblOpBalType.Caption = "Dr"
  loc_1129E54: End If
  loc_1129E62: Set var_A4 = Me.Txt
  loc_1129E68: Call 0.Method_Proc_11_53_1129FA80 (CInt(&H13), var_128, var_FC)
  loc_1129E70: var_A0 = var_128.Tag
  loc_1129E9D: var_B4 = CVar(Abs((Val(var_FC) + var_A0))) 'Double
  loc_1129EBB: Set var_12C = Me.Txt
  loc_1129EC1: Call 0.Method_Proc_11_53_1129FA80 (CInt(&H13), var_130, CStr(Format(CVar(Abs(var_A0)), "0.00")), 1)
  loc_1129EC9: var_130.Text = 1
  loc_1129EF7: Set var_A4 = Me.Txt
  loc_1129EFD: Call 0.Method_Proc_11_53_1129FA80 (CInt(0), var_128, var_FC)
  loc_1129F05: var_104 = var_128.Text
  loc_1129F23: Me.txtCurrBal.Text = Proc_183_42_107D990(var_FC, 1)
  loc_1129F46: Set var_A4 = Me.Txt
  loc_1129F4C: Call 0.Method_Proc_11_53_1129FA80 (CInt(&H13), var_128)
  loc_1129F74: If (CDbl((Val(var_128.Tag) + var_A0)) < CDbl(0)) Then
  loc_1129F84:   Me.LblCurBalType.Caption = "Cr"
  loc_1129F8F: Else
  loc_1129F9C:   Me.LblCurBalType.Caption = "Dr"
  loc_1129FA4: End If
  loc_1129FA4: Exit Sub
End Sub

Public Sub Proc_11_54_10BD464(arg_C) '10BD464
  'Data Table: 4F2ED0
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
  loc_10BD1DE: On Error Goto loc_10BD437
  loc_10BD1E4: var_90 = "F_AO"
  loc_10BD1EB: Set var_8C = New 
  loc_10BD1F6: Me.Recordset15.CursorLocation = 3
  loc_10BD1FE: var_D0 = arg_C
  loc_10BD206: Proc_183_7_EB0C44(var_E0)
  loc_10BD229: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F92070
  loc_10BD25A: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F92070 & "' AND VP.LOGSITE_CODE='"
  loc_10BD285: var_120 = CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BD28D: var_8C.Open var_120, CVar(MemVar_1F921DC), 2
  loc_10BD2CA: If (var_8C.RecordCount > 0) Then
  loc_10BD2FC:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BD305:   global_64 = CLng(CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BD341:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BD35E:   var_98 = Proc_183_15_EAC900(MemVar_1F92070, 2, MemVar_1F9206C, global_64)
  loc_10BD368:   var_D0 = var_90
  loc_10BD378:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BD389:   var_120 = Space((5 - Len(var_90)))
  loc_10BD391:   var_150 = (CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BD3A2:   var_160 = Space((5 - Len(var_94)))
  loc_10BD3AA:   var_170 = (var_150 + var_160)
  loc_10BD3B4:   var_180 = (var_170 + CVar(var_94))
  loc_10BD3CD:   var_190 = Space((8 - Len(CStr(global_64))))
  loc_10BD3D5:   var_1A0 = (var_180 + var_190)
  loc_10BD3E4:   var_1C0 = (var_1A0 + CVar(CStr(global_64)))
  loc_10BD41D:   var_88 = CStr(var_1C0)
  loc_10BD423: Else
  loc_10BD426:   var_88 = vbNullString
  loc_10BD429: End If
  loc_10BD42E: Set var_8C = Nothing
  loc_10BD431: Proc_11_54_10BD464 = -1
  loc_10BD437: ' Referenced from: 10BD1DE
  loc_10BD43D: Call 0.Method_arg_50 (var_98)
  loc_10BD452: Proc_183_57_104AA84(var_98, "VoucherNo")
  loc_10BD45E: Proc_11_54_10BD464 = var_D0
End Sub

Public Sub Proc_11_55_EDD0C0(arg_C) 'EDD0C0
  'Data Table: 4F2ED0
  Dim var_94 As TextBox
  loc_EDD009: If (CInt(arg_C) = 1) Then
  loc_EDD017:   For var_8A = CByte(6) To CByte(&H11): var_86 = var_8A 'Byte
  loc_EDD02C:     Set var_90 = Me.Txt
  loc_EDD032:     Call 0.Method_Proc_11_55_EDD0C00 (CInt(var_86), var_94)
  loc_EDD03A:     var_94.Enabled = True
  loc_EDD049:   Next var_8A 'Byte
  loc_EDD052: Else
  loc_EDD05D:   For var_98 = CByte(6) To CByte(&H11):   var_86 = var_98 'Byte
  loc_EDD072:     Set var_90 = Me.Txt
  loc_EDD078:     Call 0.Method_Proc_11_55_EDD0C00 (CInt(var_86), var_94)
  loc_EDD080:     var_94.Enabled = False
  loc_EDD09C:     Set var_90 = Me.Txt
  loc_EDD0A2:     Call 0.Method_Proc_11_55_EDD0C00 (CInt(var_86), var_94)
  loc_EDD0AA:     var_94.Text = vbNullString
  loc_EDD0B9:   Next var_98 'Byte
  loc_EDD0BF: End If
  loc_EDD0BF: Exit Sub
End Sub

Public Sub Proc_11_56_11C9A68
  'Data Table: 4F2ED0
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_124 As Variant
  loc_11C962B: var_A0 = CLng(Me.FGrid.Col)
  loc_11C963B: If (var_A0 = CLng(1)) Then
  loc_11C9647:   Set var_8C = Me.TxtGrid
  loc_11C964D:   Call 0.Method_Proc_11_56_11C9A680 (0, var_A4)
  loc_11C9665:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11C9697:   Call 0.Method_arg_184 (var_A4, var_AC, CVar(CLng(Me.FGrid.Col)))
  loc_11C969F:   var_114 = CVar(var_AC) 'String
  loc_11C96A7:   Set var_128 = Me.FGrid
  loc_11C96AD:   LateIdCallSt
  loc_11C96CE: Else
  loc_11C96D5:   If Not (var_A0 = CLng(2)) Then
  loc_11C96DF:     If (var_A0 = CLng(4)) Then
  loc_11C96E2:     End If
  loc_11C971E:     Set var_8C = Me.TxtGrid
  loc_11C9724:     Call 0.Method_Proc_11_56_11C9A680 (0, var_A4, var_AC, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11C972C:     var_128 = var_A4.Text
  loc_11C9742:     LateIdCallSt
  loc_11C977D:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11C9780:       Call Proc_11_53_1129FA8(Me.FGrid, CVar(var_AC), CVar(var_AC))
  loc_11C979E:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11C97A6:       var_F4 = CVar(CLng(4)) 'Long
  loc_11C97C0:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11C97E1:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11C982E:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11C9846:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11C984E:         Set var_A4 = Me.FGrid
  loc_11C986A:       End If
  loc_11C986A:     End If
  loc_11C986D:   Else
  loc_11C9874:     If (var_A0 = CLng(3)) Then
  loc_11C9883:       Set var_8C = Me.TxtGrid
  loc_11C9889:       Call 0.Method_Proc_11_56_11C9A680 (0, var_A4, var_AC, FGrid.DispID_10000, var_C4, var_124)
  loc_11C9891:       (var_AC <> vbNullString) = var_A4.Text
  loc_11C9907:       LateIdCallSt
  loc_11C992E:       Call Proc_11_53_1129FA8(Me.FGrid, CVar(CStr(Format(CVar(Val(var_AC)), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11C994C:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11C9954:       var_F4 = CVar(CLng(4)) 'Long
  loc_11C996E:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11C998F:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11C99DC:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11C99F4:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11C99FC:         Set var_A4 = Me.FGrid
  loc_11C9A18:       End If
  loc_11C9A18:     End If
  loc_11C9A18:   End If
  loc_11C9A18: End If
  loc_11C9A30: Set var_8C = Me.TxtGrid
  loc_11C9A36: Call 0.Method_Proc_11_56_11C9A680 (0, var_A4, 0, &HFF, &HFF, FGrid.DispID_10000, var_C4)
  loc_11C9A3E: var_A4.Visible = CVar(CLng(Me.FGrid.Col))
  loc_11C9A4E: Set var_8C = Me.FGrid
  loc_11C9A5F: Proc_11_56_11C9A68 = FGrid.DispID_8001
End Sub

Public Sub Proc_11_57_16EDB68
  'Data Table: 4F2ED0
  Dim Me As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E4 As String
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim unk_4F2EF7 As Connection15
  Dim unk_4F2EF9 As Connection15
  Dim var_148 As Recordset15
  Dim var_E0 As Variant
  Dim var_CC As Variant
  Dim var_14C As String
  Dim var_1B0 As Variant
  Dim var_1FC As Label
  Dim var_88 As Recordset15
  Dim var_200 As String
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_8C As Recordset15
  Dim var_206 As Integer
  Dim var_144 As Variant
  Dim var_1C4 As TextBox
  Dim var_21C As String
  Dim var_AA As Integer
  Dim var_A8 As Double
  Dim var_218 As Variant
  Dim var_310 As Variant
  loc_16EC0F4: On Error Goto loc_16EDB00
  loc_16EC10E: If (Me.RecordCount > 0) Then
  loc_16EC14D:   Set var_CC = Me.Txt
  loc_16EC153:   Call 0.Method_Proc_11_57_16EDB680 (CInt(0), var_D0)
  loc_16EC15B:   var_D0.Text = CStr(Me.Fields.Item("subcode").Value)
  loc_16EC17E:   var_F4 = "Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg Where  S.SubCode='"
  loc_16EC1C7:   unk_4F2EF7.Execute CStr(var_F4 & Me.Fields.Item("subcode").Value & "'"), var_144, -1
  loc_16EC1D2:   Set var_88 = var_CC
  loc_16EC242:   unk_4F2EF9.Execute CStr("Select U_Name,U_AE,U_EntDt From Subgroup where SubCode='" & Me.Fields.Item("subcode").Value & "'  "), var_144, -1
  loc_16EC24D:   Set var_148 = var_CC
  loc_16EC2A1:   var_CC = var_148.Fields
  loc_16EC30A:   var_1AC = IIf((Proc_6_38_E68A98(CVar(var_148.Fields.Item("U_AE")), var_CC) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_CC.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16EC34F:   Me.LblUser.Caption = CStr(var_CC & CVar(Proc_6_38_E68A98(CVar(var_148.Fields.Item("U_Name")), var_1AC)))
  loc_16EC3C9:   var_D0 = var_148.Fields.Item("U_AE")
  loc_16EC3D1:   var_104 = CVar(var_D0) 'Address
  loc_16EC3F6:   var_14C = Proc_6_38_E68A98(var_104)
  loc_16EC42A:   var_1AC = IIf((Proc_6_38_E68A98(CVar(var_148.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((var_14C = "E"), "Last Update : ", "entdt : "))
  loc_16EC449:   var_1C4 = var_148.Fields.Item("U_EntDt")
  loc_16EC46F:   Me.LblLDt.Caption = CStr(var_1AC & CVar(Proc_6_38_E68A98(CVar(var_1C4))))
  loc_16EC4BB:   If (var_88.RecordCount > 0) Then
  loc_16EC4FD:     If (Me.Fields.Item("Name").Value = "Cash") Then
  loc_16EC506:       global_60 = "Y"
  loc_16EC50D:     Else
  loc_16EC513:       global_60 = "N"
  loc_16EC517:     End If
  loc_16EC531:     var_C8 = var_88.Fields.Item("Name")
  loc_16EC550:     Set var_CC = Me.Txt
  loc_16EC556:     Call 0.Method_Proc_11_57_16EDB680 (CInt(1), var_D0)
  loc_16EC55E:     var_D0.Text = CStr(var_C8.Value)
  loc_16EC582:     Set var_B4 = Me.Txt
  loc_16EC588:     Call 0.Method_Proc_11_57_16EDB680 (CInt(1), var_C8)
  loc_16EC59B:     global_80 = var_C8.Text
  loc_16EC5DF:     Set var_CC = Me.Txt
  loc_16EC5E5:     Call 0.Method_Proc_11_57_16EDB680 (CInt(2), var_D0)
  loc_16EC5ED:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GroupName")))
  loc_16EC63A:     Set var_CC = Me.Txt
  loc_16EC640:     Call 0.Method_Proc_11_57_16EDB680 (CInt(2), var_D0)
  loc_16EC648:     var_D0.Tag = CStr(var_88.Fields.Item("GroupCode").Value)
  loc_16EC68F:     global_84 = CStr(var_88.Fields.Item("MainGrCode").Value)
  loc_16EC6D8:     Me.LblNature.Caption = CStr(var_88.Fields.Item("Nature").Value)
  loc_16EC706:     var_C8 = var_88.Fields.Item("GNature")
  loc_16EC70E:     var_E0 = var_C8.Value
  loc_16EC73A:     var_D0 = var_88.Fields.Item("GNature")
  loc_16EC76C:     If CBool((var_E0 = "A") Or (var_D0.Value = "L")) Then
  loc_16EC776:       global_100 = CByte(1)
  loc_16EC77D:     Else
  loc_16EC784:       global_100 = CByte(0)
  loc_16EC788:     End If
  loc_16EC796:     Set var_B4 = Me.Txt
  loc_16EC79C:     Call 0.Method_Proc_11_57_16EDB680 (CInt(0), var_C8, var_14C)
  loc_16EC7AF:     var_F4 = 0
  loc_16EC7EA:     unk_4F2EF7.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1
  loc_16EC7F2:     var_CC = var_CC.Fields
  loc_16EC7FA:     var_F4 = var_D0.Item(var_D0)
  loc_16EC802:     var_1B0 = var_1B0.Value
  loc_16EC80B:     var_94 = CSng(var_104)
  loc_16EC83D:     Set var_B4 = Me.Txt
  loc_16EC843:     Call 0.Method_Proc_11_57_16EDB680 (CInt(0), var_C8, var_14C)
  loc_16EC84B:     var_94 = var_C8.Text
  loc_16EC856:     var_F4 = 0
  loc_16EC891:     unk_4F2EF7.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1
  loc_16EC899:     var_CC = var_CC.Fields
  loc_16EC8A1:     var_F4 = var_D0.Item(var_D0)
  loc_16EC8A9:     var_1B0 = var_1B0.Value
  loc_16EC8B2:     var_9C = CSng(var_104)
  loc_16EC8F3:     var_E0 = CVar(Abs((var_9C - var_94))) 'Double
  loc_16EC911:     Set var_B4 = Me.Txt
  loc_16EC917:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&H12), var_C8, CStr(Format(var_E0, "0.00")), 1, 1)
  loc_16EC91F:     var_C8.Text = var_9C
  loc_16EC984:     var_E4 = CStr(IIf((var_94 > var_9C), "Cr", IIf((var_94 < var_9C), "Dr", vbNullString)))
  loc_16EC992:     Me.LblOpBalType.Caption = var_E4
  loc_16EC9BC:     Set var_B4 = Me.Txt
  loc_16EC9C2:     Call 0.Method_Proc_11_57_16EDB680 (CInt(0), var_C8, var_E4)
  loc_16EC9E2:     Set var_CC = Me.txtCurrBal
  loc_16EC9E8:     var_CC.Text = Proc_183_42_107D990(var_E4, var_C8.Text)
  loc_16ECA05:     If (MemVar_1F92078 = "HO") Then
  loc_16ECA26:       Set var_B4 = Me.Txt
  loc_16ECA2C:       Call 0.Method_Proc_11_57_16EDB680 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_16ECA34:       var_E0 = var_C8.Text
  loc_16ECA3D:       var_14C = -1 & var_E4
  loc_16ECA4D:       unk_4F2EF7.Execute var_14C & "'", var_CC, var_C8.Text
  loc_16ECA58:       Set var_8C = var_CC
  loc_16ECA73:     Else
  loc_16ECA91:       Set var_B4 = Me.Txt
  loc_16ECA97:       Call 0.Method_Proc_11_57_16EDB680 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_16ECA9F:       var_E0 = var_C8.Text
  loc_16ECAA8:       var_14C = -1 & var_E4
  loc_16ECAB6:       var_200 = var_14C & "' AND LOGSITE_CODE='" & MemVar_1F92078
  loc_16ECAC6:       unk_4F2EF7.Execute var_200 & "'", var_CC, 
  loc_16ECAD1:       Set var_8C = var_CC
  loc_16ECAED:     End If
  loc_16ECB01:     If (var_8C.RecordCount > 0) Then
  loc_16ECB2C:       var_206 = IsNull(CVar(var_8C.Fields.Item("CurrBal")))
  loc_16ECBAA:       Set var_1B0 = Me.Txt
  loc_16ECBB0:       Call 0.Method_Proc_11_57_16EDB680 (CInt(&H13), var_1C4, CStr(Format(IIf(var_206, 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00")))
  loc_16ECBB8:       var_1C4.Text = 1
  loc_16ECC21:       var_D0 = var_8C.Fields.Item("CurrBal")
  loc_16ECC9B:       Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_D0.Value < 0), "Cr", vbNullString)))
  loc_16ECD63:       global_96 = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", "Cr"))
  loc_16ECD98:       var_C8 = var_8C.Fields.Item("CurrBal")
  loc_16ECDAF:       var_F4 = CVar((var_94 - var_9C)) 'Double
  loc_16ECDB3:       var_104 = (var_C8.Value + 0)
  loc_16ECDC6:       Set var_CC = Me.Txt
  loc_16ECDCC:       Call 0.Method_Proc_11_57_16EDB680 (CInt(&H13), var_D0, CStr((var_8C.Fields.Item("CurrBal").Value > 0)))
  loc_16ECDD4:       var_D0.Tag = CSng(var_8C.Fields.Item("CurrBal").Value)
  loc_16ECDF1:     Else
  loc_16ECE03:       Set var_B4 = Me.Txt
  loc_16ECE09:       Call 0.Method_Proc_11_57_16EDB680 (CInt(&H13), var_C8, CStr(0))
  loc_16ECE11:       var_C8.Text = 1
  loc_16ECE2D:       Me.LblCurBalType.Caption = vbNullString
  loc_16ECE44:       global_96 = "Cr"
  loc_16ECE5A:       Set var_B4 = Me.Txt
  loc_16ECE60:       Call 0.Method_Proc_11_57_16EDB680 (CInt(&H13), var_C8, CStr(0))
  loc_16ECE68:       var_C8.Tag = CDbl(0)
  loc_16ECE77:     End If
  loc_16ECEAD:     Set var_CC = Me.Txt
  loc_16ECEB3:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&H17), var_D0)
  loc_16ECEBB:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DealerType")))
  loc_16ECF05:     Set var_CC = Me.Txt
  loc_16ECF0B:     Call 0.Method_Proc_11_57_16EDB680 (CInt(3), var_D0)
  loc_16ECF13:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPrefix")))
  loc_16ECF5D:     Set var_CC = Me.Txt
  loc_16ECF63:     Call 0.Method_Proc_11_57_16EDB680 (CInt(4), var_D0)
  loc_16ECF6B:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConPerson")))
  loc_16ECFB5:     Set var_CC = Me.Txt
  loc_16ECFBB:     Call 0.Method_Proc_11_57_16EDB680 (CInt(5), var_D0)
  loc_16ECFC3:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_16ED00D:     Set var_CC = Me.Txt
  loc_16ED013:     Call 0.Method_Proc_11_57_16EDB680 (CInt(6), var_D0)
  loc_16ED01B:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2")))
  loc_16ED065:     Set var_CC = Me.Txt
  loc_16ED06B:     Call 0.Method_Proc_11_57_16EDB680 (CInt(7), var_D0)
  loc_16ED073:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add3")))
  loc_16ED0BD:     Set var_CC = Me.Txt
  loc_16ED0C3:     Call 0.Method_Proc_11_57_16EDB680 (CInt(8), var_D0)
  loc_16ED0CB:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_16ED115:     Set var_CC = Me.Txt
  loc_16ED11B:     Call 0.Method_Proc_11_57_16EDB680 (CInt(8), var_D0)
  loc_16ED123:     var_D0.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CITYCODE")))
  loc_16ED16D:     Set var_CC = Me.Txt
  loc_16ED173:     Call 0.Method_Proc_11_57_16EDB680 (CInt(9), var_D0)
  loc_16ED17B:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin")))
  loc_16ED1C5:     Set var_CC = Me.Txt
  loc_16ED1CB:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&HA), var_D0)
  loc_16ED1D3:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Phone")))
  loc_16ED21D:     Set var_CC = Me.Txt
  loc_16ED223:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&HB), var_D0)
  loc_16ED22B:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile")))
  loc_16ED275:     Set var_CC = Me.Txt
  loc_16ED27B:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&HC), var_D0)
  loc_16ED283:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Fax")))
  loc_16ED2CD:     Set var_CC = Me.Txt
  loc_16ED2D3:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&HD), var_D0)
  loc_16ED2DB:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Email")))
  loc_16ED325:     Set var_CC = Me.Txt
  loc_16ED32B:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&HE), var_D0)
  loc_16ED333:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CstNo")))
  loc_16ED37D:     Set var_CC = Me.Txt
  loc_16ED383:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&HF), var_D0)
  loc_16ED38B:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("LstNo")))
  loc_16ED3D5:     Set var_CC = Me.Txt
  loc_16ED3DB:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&H10), var_D0)
  loc_16ED3E3:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PanNo")))
  loc_16ED462:     Set var_CC = Me.Txt
  loc_16ED468:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&H15), var_D0)
  loc_16ED470:     var_D0.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 0), "No", "Yes"))
  loc_16ED4C6:     Set var_CC = Me.Txt
  loc_16ED4CC:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&H11), var_D0)
  loc_16ED4D4:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remark")))
  loc_16ED51E:     Set var_CC = Me.Txt
  loc_16ED524:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&H14), var_D0)
  loc_16ED52C:     var_D0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TINNo")))
  loc_16ED557:     var_C8 = var_88.Fields.Item("GSTIN")
  loc_16ED576:     Set var_CC = Me.Txt
  loc_16ED57C:     Call 0.Method_Proc_11_57_16EDB680 (CInt(&H16), var_D0)
  loc_16ED584:     var_D0.Text = Proc_6_38_E68A98(CVar(var_C8))
  loc_16ED5AB:     Me.FGrid.Rows = 1
  loc_16ED5BB:     If (MemVar_1F92078 = "HO") Then
  loc_16ED5D2:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_16ED5D9:       var_14C = var_E4 & "' and V_Type='"
  loc_16ED5F8:       Set var_B4 = Me.Txt
  loc_16ED5FE:       Call 0.Method_Proc_11_57_16EDB680 (CInt(0), var_C8, var_200, var_14C & "F_AO" & "' and SubCode='")
  loc_16ED606:       var_E0 = var_C8.Text
  loc_16ED60F:       var_21C = -1 & var_200
  loc_16ED61F:       unk_4F2EF7.Execute var_21C & "' Order by V_SNo", var_CC, var_206
  loc_16ED62A:       Set var_88 = var_CC
  loc_16ED64D:     Else
  loc_16ED661:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_16ED679:       Set var_B4 = Me.Txt
  loc_16ED67F:       Call 0.Method_Proc_11_57_16EDB680 (CInt(0), var_C8, var_14C, var_E4 & "' and SubCode='")
  loc_16ED687:       var_E0 = var_C8.Text
  loc_16ED690:       var_200 = -1 & var_14C
  loc_16ED6AE:       unk_4F2EF7.Execute var_200 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_CC, 
  loc_16ED6B9:       Set var_88 = var_CC
  loc_16ED6D9:     End If
  loc_16ED6DF:     var_B0 = var_88.RecordCount
  loc_16ED6ED:     If (var_B0 > 0) Then
  loc_16ED6F2:       var_AA = 1
  loc_16ED720:       var_E4 = CStr(var_88.Fields.Item("DocID").Value)
  loc_16ED726:       global_76 = var_E4
  loc_16ED766:       global_64 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_16ED77A:       global_68 = CByte(1)
  loc_16ED77E:       ' Referenced from: 16EDA52
  loc_16ED78D:       If Not(var_88.EOF) Then
  loc_16ED7CC:         If (var_88.Fields.Item("AmtCr").Value = 0) Then
  loc_16ED7D2:           var_A0 = "Dr"
  loc_16ED7FB:           Proc_183_3_E7D1C8((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("AmtDr")), global_68)
  loc_16ED804:           var_A8 = CSng((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_16ED814:         Else
  loc_16ED850:           If (var_88.Fields.Item("AmtDr").Value = 0) Then
  loc_16ED856:             var_A0 = "Cr"
  loc_16ED87F:             Proc_183_3_E7D1C8((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("AmtCr")), var_A8)
  loc_16ED888:             var_A8 = CSng((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_16ED895:           End If
  loc_16ED895:         End If
  loc_16ED8BC:         Proc_183_3_E7D1C8(var_250, var_A8, var_A8)
  loc_16ED8EA:         var_144 = "dd/MMM/yyyy"
  loc_16ED8F3:         var_124 = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_16ED945:         var_218 = CVar(var_AA) & Chr(9) & CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Narration")), 1 & Format(var_124, var_144) & Chr(9), 1)) 
  loc_16ED9DC:         Proc_183_3_E7D1C8(var_2F0, CVar(var_88.Fields.Item("V_NO")), 1 & Format(var_250, "0.00") & Chr(9) & CVar(var_A0) & Chr(9), 1)
  loc_16ED9E9:         var_310 = CVar(CStr(var_218 & Chr(9) & var_2F0)) 'String
  loc_16ED9F1:         Set var_1FC = Me.FGrid
  loc_16EDA47:         var_AA = (var_AA + 1)
  loc_16EDA4D:         var_88.MoveNext
  loc_16EDA52:         GoTo loc_16ED77E
  loc_16EDA55:       End If
  loc_16EDA68:       Me.FGrid.FixedRows = 1
  loc_16EDA73:     Else
  loc_16EDA79:       global_76 = vbNullString
  loc_16EDA85:       global_64 = 0
  loc_16EDA8F:       global_68 = CByte(0)
  loc_16EDAA8:       var_104 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16EDAB0:       Set var_C8 = Me.FGrid
  loc_16EDADF:       Me.FGrid.FixedRows = 1
  loc_16EDAE7:     End If
  loc_16EDAEC:     Set var_88 = Nothing
  loc_16EDAEF:   End If
  loc_16EDAF2: Else
  loc_16EDAF2:   Call Proc_11_50_FC31C8(FGrid.DispID_10000, var_104, global_68, global_64, var_AA)
  loc_16EDAF7: End If
  loc_16EDAFC: Set var_88 = Nothing
  loc_16EDAFF: Exit Sub
  loc_16EDB00: ' Referenced from: 16EC0F4
  loc_16EDB08: Set var_B4 = Err()
  loc_16EDB0E: Call 0.Method_arg_1C (var_B0, FGrid.DispID_10000, var_310)
  loc_16EDB1F: If (var_B0 <> 0) Then
  loc_16EDB2A:   Set var_B4 = Err()
  loc_16EDB30:   Call 0.Method_arg_2C (var_E4, global_64)
  loc_16EDB51:   MsgBox(CVar(var_E4), &H40, "Validation", var_124, var_144)
  loc_16EDB64: End If
  loc_16EDB64: Exit Sub
End Sub

Public Sub Proc_11_58_14FD714(arg_C, arg_10, arg_14, arg_18, arg_1C) '14FD714
  'Data Table: 4F2ED0
  Dim var_98 As TextBox
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4F2EF7 As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Fields15
  Dim var_C4 As Variant
  Dim var_3CC As TextBox
  Dim var_9C As String
  Dim var_E8 As String
  Dim var_FC As String
  Dim var_108 As TextBox
  Dim var_124 As String
  Dim var_11C As TextBox
  Dim var_130 As TextBox
  Dim var_144 As TextBox
  Dim var_160 As String
  Dim var_158 As TextBox
  Dim var_174 As String
  Dim var_16C As TextBox
  Dim var_180 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1C4 As String
  Dim var_1BC As TextBox
  Dim var_1C8 As String
  Dim var_1D0 As TextBox
  Dim var_1E4 As TextBox
  Dim var_1F8 As TextBox
  Dim var_214 As String
  Dim var_20C As TextBox
  Dim var_220 As String
  Dim var_2E0 As Variant
  Dim var_2E8 As TextBox
  Dim var_334 As TextBox
  Dim var_358 As Variant
  Dim var_380 As TextBox
  Dim var_440 As Variant
  loc_14FCA64: On Error Goto loc_14FD6EC
  loc_14FCA85: Set var_94 = Me.Txt
  loc_14FCA8B: Call 0.Method_Proc_11_58_14FD7140 (CInt(2), var_98, var_9C, "SELECT * From AcGroup Where GroupCode='")
  loc_14FCA93: var_C4 = var_98.Tag
  loc_14FCA9C: var_A0 = -1 & var_9C
  loc_14FCAAC: unk_4F2EF7.Execute var_A0 & "'", var_C8, 
  loc_14FCAB7: Set var_88 = var_C8
  loc_14FCAE3: If (var_88.RecordCount > 0) Then
  loc_14FCB0E:   var_8C = Proc_183_2_E5A304(CVar(var_88.Fields.Item("Nature")))
  loc_14FCB2E:   var_98 = var_88.Fields.Item("GroupNature")
  loc_14FCB3F:   var_90 = Proc_183_2_E5A304(CVar(var_98))
  loc_14FCB4B: Else
  loc_14FCB4E:   var_8C = "Other"
  loc_14FCB54:   var_90 = vbNullString
  loc_14FCB57: End If
  loc_14FCB5F: If (arg_C = "Add") Then
  loc_14FCB70:   Set var_3C8 = Me.Txt
  loc_14FCB76:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&H15), var_3CC)
  loc_14FCB91:   var_A0 = "Insert Into " & arg_10 & " (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,Phone,Mobile,Fax,EMail,CSTNo,LSTNo,PANNo,Remark,U_Name,U_EntDt,U_AE,LOGSITE_CODE,TINNo,GSTIN,DealerType,ActiveYN) Values ('"
  loc_14FCBE2:   Set var_94 = Me.Txt
  loc_14FCBE8:   Call 0.Method_Proc_11_58_14FD7140 (CInt(2), var_98)
  loc_14FCC07:   var_FC = var_A0 & MemVar_1F92070 & "','" & arg_14 & "','" & arg_18 & "','" & Proc_183_20_FB3974(arg_18) & "','" & var_98.Tag & "','" & var_90
  loc_14FCC2D:   Set var_C8 = Me.Txt
  loc_14FCC33:   Call 0.Method_Proc_11_58_14FD7140 (CInt(3), var_108)
  loc_14FCC5C:   Set var_118 = Me.Txt
  loc_14FCC62:   Call 0.Method_Proc_11_58_14FD7140 (CInt(4), var_11C)
  loc_14FCC8B:   Set var_12C = Me.Txt
  loc_14FCC91:   Call 0.Method_Proc_11_58_14FD7140 (CInt(5), var_130)
  loc_14FCCBA:   Set var_140 = Me.Txt
  loc_14FCCC0:   Call 0.Method_Proc_11_58_14FD7140 (CInt(6), var_144)
  loc_14FCCD8:   var_160 = var_FC & "','" & var_8C & "','" & var_108.Text & "','" & var_11C.Text & "','" & var_130.Text & "','" & var_144.Text & "','"
  loc_14FCCE9:   Set var_154 = Me.Txt
  loc_14FCCEF:   Call 0.Method_Proc_11_58_14FD7140 (CInt(7), var_158)
  loc_14FCD18:   Set var_168 = Me.Txt
  loc_14FCD1E:   Call 0.Method_Proc_11_58_14FD7140 (CInt(8), var_16C)
  loc_14FCD47:   Set var_17C = Me.Txt
  loc_14FCD4D:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&HA), var_180)
  loc_14FCD76:   Set var_190 = Me.Txt
  loc_14FCD7C:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&HB), var_194)
  loc_14FCDA5:   Set var_1A4 = Me.Txt
  loc_14FCDAB:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&HC), var_1A8)
  loc_14FCDD4:   Set var_1B8 = Me.Txt
  loc_14FCDDA:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&HD), var_1BC)
  loc_14FCDEB:   var_1C8 = var_160 & var_158.Text & "','" & var_16C.Tag & "','" & var_180.Text & "','" & var_194.Text & "','" & var_1A8.Text & "','" & var_1BC.Text
  loc_14FCE03:   Set var_1CC = Me.Txt
  loc_14FCE09:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&HE), var_1D0)
  loc_14FCE32:   Set var_1E0 = Me.Txt
  loc_14FCE38:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&HF), var_1E4)
  loc_14FCE61:   Set var_1F4 = Me.Txt
  loc_14FCE67:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&H10), var_1F8)
  loc_14FCE90:   Set var_208 = Me.Txt
  loc_14FCE96:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&H11), var_20C)
  loc_14FCEB5:   var_220 = var_1C8 & "','" & var_1D0.Text & "','" & var_1E4.Text & "','" & var_1F8.Text & "','" & var_20C.Text & "','" & MemVar_1F920C8
  loc_14FCECD:   Proc_183_7_EB0C44(var_230, Now)
  loc_14FCF16:   Set var_2E4 = Me.Txt
  loc_14FCF1C:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&H14), var_2E8)
  loc_14FCF4A:   Set var_330 = Me.Txt
  loc_14FCF50:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&H16), var_334)
  loc_14FCF63:   var_358 = CVar(var_220 & "',") & var_230 & ",'" & CVar(arg_1C) & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_2E8.Text) & "','" & CVar(var_334.Text) 
  loc_14FCF7E:   Set var_37C = Me.Txt
  loc_14FCF84:   Call 0.Method_Proc_11_58_14FD7140 (CInt(&H17), var_380)
  loc_14FCFD9:   global_128 = CStr(var_358 & "','" & CVar(var_380.Text) & "'," & IIf((var_3CC.Text = "Yes"), 1, 0) & ")")
  loc_14FD0E3: Else
  loc_14FD0EB:   If (arg_C = "Edit") Then
  loc_14FD0FC:     Set var_3C8 = Me.Txt
  loc_14FD102:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&H15), var_3CC)
  loc_14FD116:     var_9C = "Update " & arg_10
  loc_14FD152:     Set var_94 = Me.Txt
  loc_14FD158:     Call 0.Method_Proc_11_58_14FD7140 (CInt(2), var_98)
  loc_14FD170:     var_E8 = var_9C & " Set Name='" & arg_18 & "',NameHelp='" & Proc_183_20_FB3974(arg_18) & "',GroupCode='" & var_98.Tag & "',GroupNature='"
  loc_14FD1A3:     Call 0.Method_Proc_11_58_14FD7140 (CInt(3), var_108)
  loc_14FD1CC:     Set var_118 = Me.Txt
  loc_14FD1D2:     Call 0.Method_Proc_11_58_14FD7140 (CInt(4), var_11C)
  loc_14FD1FB:     Set var_12C = Me.Txt
  loc_14FD201:     Call 0.Method_Proc_11_58_14FD7140 (CInt(5), var_130)
  loc_14FD212:     var_124 = var_E8 & var_90 & "',Nature='" & var_8C & "',ConPrefix='" & var_108.Text & "',ConPerson='" & var_11C.Text & "',Add1='" & var_130.Text
  loc_14FD22A:     Set var_140 = Me.Txt
  loc_14FD230:     Call 0.Method_Proc_11_58_14FD7140 (CInt(6), var_144)
  loc_14FD259:     Set var_154 = Me.Txt
  loc_14FD25F:     Call 0.Method_Proc_11_58_14FD7140 (CInt(7), var_158)
  loc_14FD288:     Set var_168 = Me.Txt
  loc_14FD28E:     Call 0.Method_Proc_11_58_14FD7140 (CInt(8), var_16C)
  loc_14FD2B7:     Set var_17C = Me.Txt
  loc_14FD2BD:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&HA), var_180)
  loc_14FD2CE:     var_174 = var_124 & "',Add2='" & var_144.Text & "',Add3='" & var_158.Text & "',CityCode='" & var_16C.Tag & "',Phone='" & var_180.Text
  loc_14FD2E6:     Set var_190 = Me.Txt
  loc_14FD2EC:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&HB), var_194)
  loc_14FD315:     Set var_1A4 = Me.Txt
  loc_14FD31B:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&HC), var_1A8)
  loc_14FD344:     Set var_1B8 = Me.Txt
  loc_14FD34A:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&HD), var_1BC)
  loc_14FD373:     Set var_1CC = Me.Txt
  loc_14FD379:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&HE), var_1D0)
  loc_14FD38A:     var_1C4 = var_174 & "',Mobile='" & var_194.Text & "',Fax='" & var_1A8.Text & "',EMail='" & var_1BC.Text & "',CSTNo='" & var_1D0.Text
  loc_14FD3A2:     Set var_1E0 = Me.Txt
  loc_14FD3A8:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&HF), var_1E4)
  loc_14FD3D8:     Set var_1F4 = Me.Txt
  loc_14FD3DE:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&H10), var_1F8)
  loc_14FD407:     Set var_208 = Me.Txt
  loc_14FD40D:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&H11), var_20C)
  loc_14FD42C:     var_214 = var_1C4 & "',LSTNo='" & var_1E4.Text & "'," & "PANNo='" & var_1F8.Text & "',Remark='" & var_20C.Text & "',U_Name='" & MemVar_1F920C8
  loc_14FD444:     Proc_183_7_EB0C44(var_230, Now)
  loc_14FD47B:     var_2E0 = CVar(var_214 & "',U_EntDt=") & var_230 & ",U_AE='" & CVar(arg_1C) & "',LOGSITE_CODE='" & CVar(MemVar_1F92078) & "',TINNo='" 
  loc_14FD48D:     Set var_2E4 = Me.Txt
  loc_14FD493:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&H14), var_2E8)
  loc_14FD4C1:     Set var_330 = Me.Txt
  loc_14FD4C7:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&H16), var_334)
  loc_14FD4F5:     Set var_37C = Me.Txt
  loc_14FD4FB:     Call 0.Method_Proc_11_58_14FD7140 (CInt(&H17), var_380)
  loc_14FD53C:     var_440 = var_2E0 & CVar(var_2E8.Text) & "',GSTIN='" & CVar(var_334.Text) & "',DealerType='" & CVar(var_380.Text) & "',ActiveYN=" & IIf((var_3CC.Text = "Yes"), 1, 0) 
  loc_14FD563:     global_128 = CStr(var_440 & " Where SUBCODE='" & CVar(arg_14) & "'")
  loc_14FD686:     Set var_94 = Me.Txt
  loc_14FD68C:     Call 0.Method_Proc_11_58_14FD7140 (CInt(2), var_98, var_9C, "UPDATE LEDGER SET LEDGER.GROUPCODE='")
  loc_14FD694:     var_C4 = var_98.Tag
  loc_14FD69D:     var_A0 = -1 & var_9C
  loc_14FD6C9:     unk_4F2EF7.Execute var_9C & " Set Name='" & "',LEDGER.GROUPNATURE='" & var_90 & "' Where LEDGER.SUBCODE='" & arg_14 & "'", Me.Txt, 
  loc_14FD6EB:   End If
  loc_14FD6EB: End If
  loc_14FD6EB: Exit Sub
  loc_14FD6EC: ' Referenced from: 14FCA64
  loc_14FD6F2: Call 0.Method_arg_50 (var_9C)
  loc_14FD6FA: var_A4 = "SubGroupUpdate"
  loc_14FD707: Proc_183_57_104AA84(var_9C)
  loc_14FD713: Exit Sub
End Sub

Public Sub Proc_11_59_14BD780
  'Data Table: 4F2ED0
  Dim var_CC As String
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_120 As Variant
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_130 As String
  Dim var_134 As String
  Dim unk_4F2EF7 As Connection15
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_B4 As Long
  Dim var_98 As Integer
  Dim var_B8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_100 As Variant
  Dim var_208 As Date
  Dim var_B0 As Recordset15
  Dim var_294 As Double
  Dim var_190 As Variant
  Dim var_1E8 As Double
  Dim var_398 As Variant
  Dim var_218 As Variant
  Dim var_278 As Variant
  Dim var_3F8 As Variant
  Dim var_548 As Variant
  Dim Me As Recordset15
  loc_14BCB38: On Error Goto loc_14BD743
  loc_14BCB3F: Set var_B8 = Me.TopCtrl1
  loc_14BCB45: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14BCB5E: If (CStr() = "Add") Then
  loc_14BCB61:   ' Referenced from: 14BCCD4
  loc_14BCB63:   If &HFF Then
  loc_14BCB73:     var_110 = CVar(Proc_183_15_EAC900(MemVar_1F92070)) 'String
  loc_14BCB85:     var_C8 = "000000"
  loc_14BCB9E:     var_120 = (1 + Format(var_B4, var_C8))
  loc_14BCBA2:     var_CC = CStr(var_120)
  loc_14BCBB1:     Set var_B8 = Me.Txt
  loc_14BCBB7:     Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_124, var_CC)
  loc_14BCBBF:     var_124.Text = 1
  loc_14BCBE7:     Set var_B8 = Me.Txt
  loc_14BCBED:     Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_124, var_CC)
  loc_14BCBF5:     var_110 = var_124.Text
  loc_14BCC08:     Set var_128 = Me.Txt
  loc_14BCC0E:     Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_12C)
  loc_14BCC16:     var_12C.Tag = var_CC
  loc_14BCC56:     Set var_B8 = Me.Txt
  loc_14BCC5C:     Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_124, var_CC, "Select COUNT(*) From SubGroup Where SubCode='", var_C8, -1)
  loc_14BCC74:     var_134 = var_12C & var_CC & "'"
  loc_14BCC7D:     unk_4F2EF7.Execute var_134, 0, var_138
  loc_14BCC8D:      = var_12C.Item(2)
  loc_14BCC95:      = var_138.Value
  loc_14BCCC2:     If (var_124.Text.Fields <= 0) Then
  loc_14BCCC5:       GoTo loc_14BCCD7
  loc_14BCCC8:     End If
  loc_14BCCD1:     var_B4 = (var_B4 + 1)
  loc_14BCCD4:     GoTo loc_14BCB61
  loc_14BCCD7:     ' Referenced from: 14BCCC5
  loc_14BCCD7:   End If
  loc_14BCCDA: Else
  loc_14BCCE8:   Set var_B8 = Me.Txt
  loc_14BCCEE:   Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_124)
  loc_14BCD09:   Set var_128 = Me.Txt
  loc_14BCD0F:   Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_12C)
  loc_14BCD17:   var_12C.Tag = var_124.Text
  loc_14BCD2A: End If
  loc_14BCD33: unk_4F2EF7.BeginTrans var_14C
  loc_14BCD3A: var_98 = &HFF
  loc_14BCD4B: Set var_B8 = Me.Txt
  loc_14BCD51: Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_124, var_134)
  loc_14BCD59: var_98 = var_124.Text
  loc_14BCD6C: Set var_128 = Me.Txt
  loc_14BCD72: Call 0.Method_Proc_11_59_14BD7800 (CInt(1), var_12C)
  loc_14BCD99: var_130 = "SubGroup"
  loc_14BCDA8: Call Proc_11_58_14FD714("Add", var_130, var_134, var_12C.Text, "A")
  loc_14BCDDE: unk_4F2EF7.Execute global_128, var_C8, -1
  loc_14BCE0E: For var_160 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_160 'Integer
  loc_14BCE18:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BCE20:   var_148 = CVar(CLng(3)) 'Long
  loc_14BCE50:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_14BCE57:     var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BCE5F:     var_148 = CVar(CLng(1)) 'Long
  loc_14BCE7E:     var_180 = CVar(CLng(var_9E)) 'Long
  loc_14BCE86:     var_1A0 = CVar(CLng(1)) 'Long
  loc_14BCE95:     var_100 = Me.FGrid.TextMatrix)
  loc_14BCEA0:     var_120 = CVar(CStr(var_100)) 'String
  loc_14BCEAB:     var_110 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_14BCED3:     Call Proc_11_54_10BD464(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), var_110, var_120)))
  loc_14BCEDE:     global_76 = var_130
  loc_14BCF22:     If (Trim(global_76) = vbNullString) Then
  loc_14BCF3E:       MsgBox("Pl. Configur Numbring System ", 0, var_100, var_110, var_120)
  loc_14BCF4E:       GoTo loc_14BD743
  loc_14BCF51:     End If
  loc_14BCF6C:     var_C8 = Me.FGrid.TextMatrix)
  loc_14BCF7C:     var_180 = CVar(CLng(var_9E)) 'Long
  loc_14BCF84:     var_1A0 = CVar(CLng(1)) 'Long
  loc_14BCF8D:     Set var_124 = Me.FGrid
  loc_14BCFA9:     var_110 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_14BCFC0:     var_1E0 = IIf((CStr(var_C8) = vbNullString), var_110, CVar(CStr(var_124.TextMatrix))))
  loc_14BCFCA:     var_208 = CDate(CDate(var_1E0))
  loc_14BCFD1:     Proc_183_7_EB0C44(var_218, var_208, var_1A0, var_180, var_C8, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_14BCFEA:     var_CC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_14BCFF1:     var_130 = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_14BCFF8:     var_134 = var_130 & MemVar_1F92078
  loc_14BD02A:     unk_4F2EF7.Execute CStr(CVar(var_134 & "' AND V_Type='" & "F_AO" & "' AND ") & var_218 & " BETWEEN DATE_FROM AND DATE_TO"), var_278, -1
  loc_14BD086:     Set var_B8 = Me.Txt
  loc_14BD08C:     Call 0.Method_Proc_11_59_14BD7800 (CInt(2), var_124, CStr(Me.FGrid.TextMatrix)), "SELECT GROUPCODE,GROUPNATURE FROM ACGROUP WHERE GROUPCODE='", var_1E0, -1, var_128)
  loc_14BD0C1:     unk_4F2EF7.Execute CStr(var_130 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_1A0, var_180
  loc_14BD0CC:     Set var_B0 = var_124.Tag
  loc_14BD0FC:     If (var_B0.RecordCount > 0) Then
  loc_14BD103:       var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BD136:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_14BD13C:         var_A4 = "AmtCr"
  loc_14BD14D:         Set var_B8 = Me.Txt
  loc_14BD153:         Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_124, var_134, CVar(CLng(4)))
  loc_14BD15B:         var_E0 = var_124.Text
  loc_14BD164:         var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BD16C:         var_148 = CVar(CLng(3)) 'Long
  loc_14BD18E:         var_294 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BD1BC:         var_190 = CVar(CLng(var_9E)) 'Long
  loc_14BD1D3:         var_100 = Me.FGrid.TextMatrix)
  loc_14BD20C:         Proc_183_0_1279094(MemVar_1F921DC, var_134, CDbl(0), var_294, CStr(var_B0.Fields.Item("GroupCode").Value), CDate(CStr(var_100)), var_100, CVar(CLng(1)))
  loc_14BD237:       Else
  loc_14BD23A:         var_A4 = "AmtDr"
  loc_14BD24B:         Set var_B8 = Me.Txt
  loc_14BD251:         Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_124, var_134, var_190, var_294)
  loc_14BD259:         var_148 = var_124.Text
  loc_14BD262:         var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BD26A:         var_148 = CVar(CLng(3)) 'Long
  loc_14BD28C:         var_294 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BD2A1:         var_12C = var_B0.Fields
  loc_14BD2BA:         var_190 = CVar(CLng(var_9E)) 'Long
  loc_14BD2D1:         var_100 = Me.FGrid.TextMatrix)
  loc_14BD30A:         Proc_183_0_1279094(MemVar_1F921DC, var_134, var_294, CDbl(0), CStr(var_12C.Item("GroupCode").Value), CDate(CStr(var_100)), var_100, CVar(CLng(1)))
  loc_14BD332:       End If
  loc_14BD34D:       var_C8 = Me.FGrid.TextMatrix)
  loc_14BD36E:       Set var_124 = Me.FGrid
  loc_14BD374:       var_100 = var_124.TextMatrix)
  loc_14BD37F:       var_120 = CVar(CStr(var_100)) 'String
  loc_14BD38A:       var_110 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_14BD3AC:       Proc_183_7_EB0C44(var_208, IIf((CStr(var_C8) = vbNullString), var_12C.Item("GroupCode").Value, var_120), CVar(CLng(1)), CVar(CLng(var_9E)), var_C8, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_14BD3BF:       Set var_128 = Me.Txt
  loc_14BD3C5:       Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_12C, var_2B4, var_190, var_294)
  loc_14BD3CD:       var_148 = var_12C.Text
  loc_14BD400:       var_1E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BD41E:       var_398 = Me.FGrid.TextMatrix)
  loc_14BD435:       Proc_183_7_EB0C44(var_438, MemVar_1F920EC, var_398, CVar(CLng(2)), CVar(CLng(var_9E)), var_1E8)
  loc_14BD445:       Proc_183_9_EAA760(var_488, var_AC, CVar(CLng(3)), CVar(CLng(var_9E)))
  loc_14BD4B3:       var_130 = "Insert Into Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A4 & ",NARRATION,U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_14BD509:       var_218 = CVar(var_130 & global_76 & "'," & CStr(var_9E) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F92070 & "',") 'String
  loc_14BD55D:       var_3F8 = var_218 & var_208 & ",'" & CVar(var_2B4) & "'," & CVar(var_1E8) & ",'" & CVar(CStr(var_398)) & "','" & CVar(MemVar_1F920C8) 
  loc_14BD59D:       var_548 = var_3F8 & "'," & var_438 & ",'A'," & var_488 & ",'" & var_B0.Fields.Item("GroupCode").Value & "','" & var_B0.Fields.Item("GroupNature").Value 
  loc_14BD5C7:       unk_4F2EF7.Execute CStr(var_548 & "','" & CVar(MemVar_1F92078) & "')"), var_5CC, -1
  loc_14BD658:     Else
  loc_14BD666:       var_E0 = "Group Not Defined"
  loc_14BD671:       MsgBox(var_E0, 0, var_100, var_12C.Item("GroupCode").Value, var_120)
  loc_14BD681:       GoTo loc_14BD743
  loc_14BD684:     End If
  loc_14BD684:   End If
  loc_14BD687: Next var_160 'Integer
  loc_14BD692: unk_4F2EF7.CommitTrans
  loc_14BD6A2: Me.Requery -1
  loc_14BD6A9: var_98 = 0
  loc_14BD6BA: Set var_B8 = Me.Txt
  loc_14BD6C0: Call 0.Method_Proc_11_59_14BD7800 (CInt(0), var_124)
  loc_14BD6EC: Me.Requery -1
  loc_14BD709: var_CC = "SearchCode = '" & var_124.Text
  loc_14BD719: Me.Find var_CC & "'", 0, 1
  loc_14BD725: Call TopCtrl1_UnknownEvent_A()
  loc_14BD72F: Set var_9C = Nothing
  loc_14BD737: Set var_A8 = Nothing
  loc_14BD73F: Set var_B0 = Nothing
  loc_14BD742: Exit Sub
  loc_14BD743: ' Referenced from: 14BD681
  loc_14BD743: ' Referenced from: 14BCF4E
  loc_14BD743: ' Referenced from: 14BCB38
  loc_14BD749: If (var_98 = &HFF) Then
  loc_14BD752:   unk_4F2EF7.RollbackTrans
  loc_14BD757: End If
  loc_14BD75D: Call 0.Method_arg_50 (var_CC, var_E0)
  loc_14BD772: Proc_183_57_104AA84(var_CC, "UpdateDataBaseAdd")
  loc_14BD77E: Exit Sub
End Sub

Public Sub Proc_11_60_1552C70
  'Data Table: 4F2ED0
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_4F2EF7 As Connection15
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
  loc_1551D1C: On Error Goto loc_1552C32
  loc_1551D4C: Set var_B0 = Me.Txt
  loc_1551D52: Call 0.Method_Proc_11_60_1552C700 (CInt(2), var_B4, var_B8, "Select MainGrCode From AcGroup Where GroupCode='", var_E0, -1)
  loc_1551D5A: var_E4 = var_B4.Tag
  loc_1551D63: var_BC = var_E8 & var_B8
  loc_1551D73: unk_4F2EF7.Execute var_BC & "'", 0, var_FC
  loc_1551D83:  = var_E8.Item()
  loc_1551D8B:  = var_FC.Value
  loc_1551D94: var_A4 = CStr(var_E4.Fields)
  loc_1551DBD: unk_4F2EF7.BeginTrans var_110
  loc_1551DF3: Set var_B0 = Me.Txt
  loc_1551DF9: Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_B4, var_BC, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_1551E01: var_E0 = var_B4.Text
  loc_1551E0A: var_114 = -1 & var_BC
  loc_1551E1A: unk_4F2EF7.Execute var_114 & "'", var_E4, &HFF
  loc_1551E25: Set var_94 = var_E4
  loc_1551E41: ' Referenced from: 1551F7A
  loc_1551E50: If Not(var_94.EOF) Then
  loc_1551E6D:   var_B4 = var_94.Fields.Item("subcode")
  loc_1551E75:   var_E0 = var_B4.Value
  loc_1551E8C:   var_E4 = var_94.Fields
  loc_1551E94:   var_E8 = var_E4.Item("AmtCr")
  loc_1551EC3:   var_178 = var_94.Fields.Item("AmtDr").Value
  loc_1551EEA:   var_190 = var_94.Fields.Item("GroupCode").Value
  loc_1551F11:   var_1A0 = var_94.Fields.Item("V_DATE").Value
  loc_1551F42:   Proc_183_0_1279094(MemVar_1F921DC, CStr(var_E0), CSng(var_E8.Value))
  loc_1551F75:   var_94.MoveNext
  loc_1551F7A:   GoTo loc_1551E41
  loc_1551F7D: End If
  loc_1551F85: If (MemVar_1F92078 = "HO") Then
  loc_1551F9C:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1551FA3:   var_BC = var_B8 & "' and V_Type='"
  loc_1551FC2:   Set var_B0 = Me.Txt
  loc_1551FC8:   Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_B4, var_114, var_BC & "F_AO" & "' and SubCode='", var_E0)
  loc_1551FD0:   -1 = var_B4.Text
  loc_1551FE9:   unk_4F2EF7.Execute var_E4 & var_114 & "' Order by V_SNo", CSng(var_178), CStr(var_190)
  loc_1551FF4:   Set var_AC = var_E4
  loc_1552017: Else
  loc_155202B:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1552043:   Set var_B0 = Me.Txt
  loc_1552049:   Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_B4, var_BC, var_B8 & "' and SubCode='")
  loc_1552051:   var_E0 = var_B4.Text
  loc_155205A:   var_114 = -1 & var_BC
  loc_1552078:   unk_4F2EF7.Execute var_114 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_E4, CDate(var_1A0)
  loc_1552083:   Set var_AC = var_E4
  loc_15520A3:   ' Referenced from:   15521A9
  loc_15520A3: End If
  loc_15520B2: If Not(var_AC.EOF) Then
  loc_15520CF:   var_B4 = var_AC.Fields.Item("DocID")
  loc_15520D7:   var_E0 = var_B4.Value
  loc_15520E1:   var_1D0 = 0
  loc_15520F4:   var_1C8 = 0
  loc_15520FF:   var_1C4 = 0
  loc_1552112:   var_1BC = 0
  loc_155211D:   var_1B0 = 0
  loc_1552130:   var_1AC = 0
  loc_1552167:   var_BC = "DocId"
  loc_1552179:   Proc_154_5_10E33A4(MemVar_1F921DC, "LEDGER", var_BC, &HC8, CStr(var_E0), 0, 0, 0)
  loc_15521A4:   var_AC.MoveNext
  loc_15521A9:   GoTo loc_15520A3
  loc_15521AC: End If
  loc_15521B1: Set var_AC = Nothing
  loc_15521CF: var_C0 = "Delete From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '"
  loc_15521E0: Set var_B0 = Me.Txt
  loc_15521E6: Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_B4, var_BC, var_C0, var_E0, -1, var_E4)
  loc_15521EE: var_1AC = var_B4.Text
  loc_15521FE: var_118 = 0 & var_BC & "'"
  loc_1552207: unk_4F2EF7.Execute var_118, var_1B0, var_1BC
  loc_1552233: Set var_B0 = Me.Txt
  loc_1552239: Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_B4, var_C0)
  loc_1552241: 0 = var_B4.Text
  loc_1552254: Set var_E4 = Me.Txt
  loc_155225A: Call 0.Method_Proc_11_60_1552C700 (CInt(1), var_E8, var_118)
  loc_1552262: var_1C4 = var_E8.Text
  loc_1552281: var_BC = "SubGroup"
  loc_1552290: Call Proc_11_58_14FD714("Edit", var_BC, var_C0, var_118, "E")
  loc_15522C6: unk_4F2EF7.Execute global_128, var_E0, -1
  loc_15522F9: For var_1D4 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_8C = var_1D4 'Byte
  loc_1552304:   var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155233C:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_155234C:     var_D0 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='"
  loc_155235C:     Set var_B0 = Me.Txt
  loc_1552362:     Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_B4, var_D0, var_1A0, -1, var_E4)
  loc_1552390:     unk_4F2EF7.Execute CStr(CVar(CLng(3)) & Trim(CVar(var_B4)) & "'"), var_D0, CByte(1)
  loc_155239B:     Set var_98 = var_E4
  loc_15523C9:     If (var_98.RecordCount > 0) Then
  loc_15523D1:       var_D0 = CVar(CLng(var_8C)) 'Long
  loc_15523D9:       var_12C = CVar(CLng(1)) 'Long
  loc_15523F9:       var_15C = CVar(CLng(var_8C)) 'Long
  loc_1552401:       var_1F4 = CVar(CLng(1)) 'Long
  loc_1552410:       var_10C = Me.FGrid.TextMatrix)
  loc_155241B:       var_190 = CVar(CStr(var_10C)) 'String
  loc_1552426:       var_178 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_155244E:       Call Proc_11_54_10BD464(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_190)))
  loc_1552459:       global_76 = var_BC
  loc_155249D:       If (Trim(global_76) = vbNullString) Then
  loc_15524B9:         MsgBox("Pl. Configur Numbring System ", 0, var_10C, CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_190)
  loc_15524C9:         GoTo loc_1552C32
  loc_15524CC:       End If
  loc_15524E8:       var_E0 = Me.FGrid.TextMatrix)
  loc_155250A:       Set var_B4 = Me.FGrid
  loc_1552526:       var_178 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_1552547:       var_244 = CDate(CDate(IIf((CStr(var_E0) = vbNullString), CVar(CLng(3)) & Trim(CVar(var_B4)), CVar(CStr(var_B4.TextMatrix))))))
  loc_155254E:       Proc_183_7_EB0C44(var_254, var_244, CVar(CLng(1)), CVar(CLng(var_8C)), var_E0, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_1552567:       var_B8 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_155256E:       var_BC = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_1552575:       var_C0 = var_BC & MemVar_1F92078
  loc_15525A7:       unk_4F2EF7.Execute CStr(CVar(var_C0 & "' AND V_Type='" & "F_AO" & "' AND ") & var_254 & " BETWEEN DATE_FROM AND DATE_TO"), var_2B4, -1
  loc_155261B:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_1552621:         var_A8 = "AmtCr"
  loc_1552632:         Set var_B0 = Me.Txt
  loc_1552638:         Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_B4, var_C0, CVar(CLng(4)), CVar(CLng(var_8C)), var_E4, var_BC)
  loc_1552640:         var_1F4 = var_B4.Text
  loc_155264A:         var_D0 = CVar(CLng(var_8C)) 'Long
  loc_1552652:         var_12C = CVar(CLng(3)) 'Long
  loc_1552674:         var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15526A3:         var_1E4 = CVar(CLng(var_8C)) 'Long
  loc_15526BA:         var_10C = Me.FGrid.TextMatrix)
  loc_15526F3:         Proc_183_0_1279094(MemVar_1F921DC, var_C0, CDbl(0), var_2BC, CStr(var_98.Fields.Item("GroupCode").Value), CDate(CStr(var_10C)), var_10C, CVar(CLng(1)))
  loc_155271E:       Else
  loc_1552721:         var_A8 = "AmtDr"
  loc_1552732:         Set var_B0 = Me.Txt
  loc_1552738:         Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_B4, var_C0, var_1E4, var_2BC, var_12C)
  loc_1552740:         var_D0 = var_B4.Text
  loc_155274A:         var_D0 = CVar(CLng(var_8C)) 'Long
  loc_1552752:         var_12C = CVar(CLng(3)) 'Long
  loc_1552774:         var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1552789:         var_E8 = var_98.Fields
  loc_15527A3:         var_1E4 = CVar(CLng(var_8C)) 'Long
  loc_15527BA:         var_10C = Me.FGrid.TextMatrix)
  loc_15527F3:         Proc_183_0_1279094(MemVar_1F921DC, var_C0, var_2BC, CDbl(0), CStr(var_E8.Item("GroupCode").Value), CDate(CStr(var_10C)), var_10C, CVar(CLng(1)))
  loc_155281B:       End If
  loc_1552837:       var_E0 = Me.FGrid.TextMatrix)
  loc_1552859:       Set var_B4 = Me.FGrid
  loc_155285F:       var_10C = var_B4.TextMatrix)
  loc_155286A:       var_190 = CVar(CStr(var_10C)) 'String
  loc_1552875:       var_178 = CDate(CDate((MemVar_1F920F4 - CDbl(1))))
  loc_1552897:       Proc_183_7_EB0C44(var_244, IIf((CStr(var_E0) = vbNullString), var_E8.Item("GroupCode").Value, var_190), CVar(CLng(1)), CVar(CLng(var_8C)), var_E0, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_15528AA:       Set var_E4 = Me.Txt
  loc_15528B0:       Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_E8, var_2CC, var_1E4, var_2BC)
  loc_15528B8:       var_12C = var_E8.Text
  loc_15528C2:       var_2A4 = CVar(CLng(var_8C)) 'Long
  loc_15528CA:       var_2FC = CVar(CLng(3)) 'Long
  loc_15528EC:       var_168 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_155290B:       var_3B0 = Me.FGrid.TextMatrix)
  loc_1552922:       Proc_183_7_EB0C44(var_450, MemVar_1F920EC, var_3B0, CVar(CLng(2)), CVar(CLng(var_8C)), var_168)
  loc_1552990:       var_BC = "Insert Into Ledger (DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A8 & ",NARRATION,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_15529E7:       var_254 = CVar(var_BC & global_76 & "'," & CStr(var_8C) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F92070 & "',") 'String
  loc_1552A3B:       var_410 = var_254 & var_244 & ",'" & CVar(var_2CC) & "'," & CVar(var_168) & ",'" & CVar(CStr(var_3B0)) & "','" & CVar(MemVar_1F920C8) 
  loc_1552A6B:       var_500 = var_410 & "'," & var_450 & ",'E','" & var_98.Fields.Item("GroupCode").Value & "','" & var_98.Fields.Item("GroupNature").Value 
  loc_1552A95:       unk_4F2EF7.Execute CStr(var_500 & "','" & CVar(MemVar_1F92078) & " ')"), var_584, -1
  loc_1552B20:     Else
  loc_1552B2E:       var_D0 = "Group Not Defined"
  loc_1552B39:       MsgBox(var_D0, 0, var_10C, var_E8.Item("GroupCode").Value, var_190)
  loc_1552B49:       GoTo loc_1552C32
  loc_1552B4C:     End If
  loc_1552B4C:   End If
  loc_1552B4F: Next var_1D4 'Byte
  loc_1552B5B: unk_4F2EF7.CommitTrans
  loc_1552B6B: Me.Requery -1
  loc_1552B72: var_8A = 0
  loc_1552B83: Set var_B0 = Me.Txt
  loc_1552B89: Call 0.Method_Proc_11_60_1552C700 (CInt(0), var_B4)
  loc_1552BB5: Me.Requery -1
  loc_1552BE2: Me.Find "SearchCode = '" & var_B4.Text & "'", 0, 1
  loc_1552C03: var_B8 = "INI"
  loc_1552C11: Call Proc_11_49_E88078(Proc_5_1_100CB50(var_B8, Me, global_108))
  loc_1552C1C: Call Proc_11_57_16EDB68(var_D0)
  loc_1552C26: Set var_88 = Nothing
  loc_1552C2E: Set var_98 = Nothing
  loc_1552C31: Exit Sub
  loc_1552C32: ' Referenced from: 1552B49
  loc_1552C32: ' Referenced from: 15524C9
  loc_1552C32: ' Referenced from: 1551D1C
  loc_1552C38: If (var_8A = &HFF) Then
  loc_1552C41:   unk_4F2EF7.RollbackTrans
  loc_1552C46: End If
  loc_1552C4C: Call 0.Method_arg_50 (var_B8)
  loc_1552C61: Proc_183_57_104AA84(var_B8, "UpdateDataBaseEdit")
  loc_1552C6D: Exit Sub
End Sub

Public Sub Proc_11_61_11B5550
  'Data Table: 4F2ED0
  Dim Me As Recordset15
  Dim unk_4F2EF7 As Connection15
  Dim var_96 As Integer
  Dim var_124 As String
  Dim var_12C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_140 As Fields15
  Dim var_130 As String
  Dim var_BC As Variant
  loc_11B514C: On Error Goto loc_11B5512
  loc_11B515A: If (global_60 = "Y") Then
  loc_11B517E:   MsgBox("You Can not Delete this A/c", &H40, "Validation Check", var_FC, var_11C)
  loc_11B518E:   Exit Sub
  loc_11B518F: End If
  loc_11B51C6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_11B51D2:   var_120 = Me.AbsolutePosition
  loc_11B51DE:   var_94 = CVar(var_120) 'Variant
  loc_11B51EB:   unk_4F2EF7.BeginTrans var_120
  loc_11B5221:   Set var_128 = Me.Txt
  loc_11B5227:   Call 0.Method_Proc_11_61_11B55500 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_11B522F:   var_BC = var_12C.Text
  loc_11B5238:   var_138 = -1 & var_130
  loc_11B5248:   unk_4F2EF7.Execute var_138 & "'", var_140, &HFF
  loc_11B5253:   Set var_9C = var_140
  loc_11B526F:   ' Referenced from: 11B53A8
  loc_11B527E:   If Not(var_9C.EOF) Then
  loc_11B529B:     var_12C = var_9C.Fields.Item("subcode")
  loc_11B52A3:     var_BC = var_12C.Value
  loc_11B52BA:     var_140 = var_9C.Fields
  loc_11B52F1:     var_FC = var_9C.Fields.Item("AmtDr").Value
  loc_11B5318:     var_11C = var_9C.Fields.Item("GroupCode").Value
  loc_11B533F:     var_190 = var_9C.Fields.Item("V_DATE").Value
  loc_11B5370:     Proc_183_0_1279094(MemVar_1F921DC, CStr(var_BC), CSng(var_140.Item("AmtCr").Value))
  loc_11B53A3:     var_9C.MoveNext
  loc_11B53A8:     GoTo loc_11B526F
  loc_11B53AB:   End If
  loc_11B53BF:   var_124 = "Delete From Ledger Where V_Type='" & "F_AO"
  loc_11B53D7:   Set var_128 = Me.Txt
  loc_11B53DD:   Call 0.Method_Proc_11_61_11B55500 (CInt(0), var_12C, var_130, var_124 & "' and SubCode= '", var_BC)
  loc_11B53E5:   -1 = var_12C.Text
  loc_11B53FE:   unk_4F2EF7.Execute var_140 & var_130 & "'", CSng(var_FC), CStr(var_11C)
  loc_11B543A:   Set var_128 = Me.Txt
  loc_11B5440:   Call 0.Method_Proc_11_61_11B55500 (CInt(0), var_12C, var_124, "Delete From SubGroup Where SUBCode='")
  loc_11B5448:   var_BC = var_12C.Text
  loc_11B5451:   var_130 = -1 & var_124
  loc_11B5461:   unk_4F2EF7.Execute var_130 & "'", var_140, CDate(var_190)
  loc_11B5481:   unk_4F2EF7.CommitTrans
  loc_11B5488:   var_96 = 0
  loc_11B5496:   Me.Requery -1
  loc_11B54B2:   If (Me.RecordCount > 0) Then
  loc_11B54CC:     If (Me.AbsolutePosition > 1) Then
  loc_11B54D7:       var_BC = (var_94 - 1)
  loc_11B54E3:       Me.AbsolutePosition = CLng(var_BC)
  loc_11B54E8:     End If
  loc_11B54E8:   End If
  loc_11B5504:   Proc_5_0_110649C(&HFF, Me, global_108)
  loc_11B550C:   Call Proc_11_57_16EDB68(0)
  loc_11B5511: End If
  loc_11B5511: Exit Sub
  loc_11B5512: ' Referenced from: 11B514C
  loc_11B5518: If (var_96 = &HFF) Then
  loc_11B5521:   unk_4F2EF7.RollbackTrans
  loc_11B5526: End If
  loc_11B552C: Call 0.Method_arg_50 (var_124)
  loc_11B5541: Proc_183_57_104AA84(var_124, "UpdateDataBaseDelete")
  loc_11B554D: Exit Sub
End Sub

Public Sub Proc_11_62_E6EBA0
  'Data Table: 4F2ED0
  loc_E6EB4C: Call Proc_11_51_F1FB88()
  loc_E6EB88: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E6EB8B:   Call TopCtrl1_UnknownEvent_16()
  loc_E6EB93: Else
  loc_E6EB96:   Call Me.SetFocus
  loc_E6EB9C: End If
  loc_E6EB9C: Exit Sub
End Sub
