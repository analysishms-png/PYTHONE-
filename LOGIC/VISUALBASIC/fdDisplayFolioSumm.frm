VERSION 5.00
Begin VB.Form fdDisplayFolioSumm
  Caption = "Summerized Guest Ledger"
  BackColor = &HFFC0C0&
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdDisplayFolioSumm.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14235
  ClientHeight = 8985
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 21914.409
  ScaleHeight = 8985
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8535
    Width = 14235
    Height = 450
    Visible = 0   'False
    TabIndex = 66
  End
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 3255
    Width = 2550
    Height = 315
    Enabled = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    MaxLength = 8
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
  End
  Begin Frame FrmAdjust
    Left = 6825
    Top = 3315
    Width = 4050
    Height = 1590
    Visible = 0   'False
    TabIndex = 52
    Begin CommandButton CmdPass
      Caption = "GO"
      Left = 3135
      Top = 225
      Width = 495
      Height = 315
      TabIndex = 57
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
    Begin CommandButton CMDSET
      Caption = "Set"
      Left = 1710
      Top = 1110
      Width = 795
      Height = 315
      Enabled = 0   'False
      TabIndex = 56
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
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1005
      Top = 225
      Width = 2115
      Height = 315
      TabIndex = 55
      PasswordChar = "#"
      MaxLength = 50
    End
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 735
      Width = 1260
      Height = 315
      Enabled = 0   'False
      TabIndex = 54
      Alignment = 1 'Right Justify
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
    End
    Begin CommandButton Command3
      Caption = "Cancel"
      Left = 2805
      Top = 720
      Width = 795
      Height = 315
      Enabled = 0   'False
      TabIndex = 53
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
    Begin Label Lbl
      Caption = "Password"
      Index = 0
      ForeColor = &H0&
      Left = 120
      Top = 285
      Width = 825
      Height = 240
      TabIndex = 59
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
      Caption = "Room Rate"
      Index = 12
      ForeColor = &H0&
      Left = 420
      Top = 750
      Width = 945
      Height = 240
      TabIndex = 58
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
  Begin PictureBox Picture2
    Picture = "fdDisplayFolioSumm.frx":442
    Left = 13815
    Top = 1350
    Width = 315
    Height = 270
    Visible = 0   'False
    TabIndex = 51
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGRoomNo
    Left = 10425
    Top = 7665
    Width = 7170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 38
  End
  Begin TextBox Txt
    Index = 26
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 4395
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
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
  End
  Begin TextBox Txt
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 4710
    Width = 3795
    Height = 285
    Enabled = 0   'False
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
  End
  Begin TextBox Txt
    Index = 28
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 5025
    Width = 3795
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
  End
  Begin DataGrid DGChrgPayment
    Left = 12210
    Top = 6915
    Width = 4980
    Height = 3090
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSHFlexGrid Fgrid1
    Left = 5250
    Top = 6600
    Width = 7980
    Height = 285
    TabIndex = 47
  End
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 1680
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 1680
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3165
    Top = 1680
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 5655
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 16
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 5970
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 50
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
  End
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 6285
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
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
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 1995
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 1995
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3165
    Top = 1995
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    Left = 13110
    Top = 240
    Width = 990
    Height = 255
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1050
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 5
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3165
    Top = 1365
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 1365
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 6600
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 8
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
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 5340
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
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
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 4080
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 50
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
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 1365
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3915
    Top = 615
    Width = 720
    Height = 315
    Enabled = 0   'False
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
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 2940
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 6
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
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    Left = 13890
    Top = 840
    Width = 480
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 5
    MaxLength = 1
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
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 2625
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
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
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2400
    Top = 2625
    Width = 720
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
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
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 2310
    Width = 2550
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 16
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
  Begin MSHFlexGrid FGrid
    Left = 5250
    Top = 1020
    Width = 8790
    Height = 5475
    TabIndex = 25
  End
  Begin MSFlexGrid FGPoint
    Left = 300
    Top = 7950
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 50
  End
  Begin BtnEnh CmdExit
    Left = 8160
    Top = 6975
    Width = 1275
    Height = 1050
    TabIndex = 64
  End
  Begin BtnEnh CmdPrint
    Left = 5100
    Top = 6975
    Width = 1275
    Height = 1050
    TabIndex = 65
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 63
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
    Caption = "PlanAmount"
    Index = 16
    ForeColor = &HC00000&
    Left = 135
    Top = 3270
    Width = 1170
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
  Begin Label Lbl
    Index = 14
    ForeColor = &H0&
    Left = 825
    Top = 6960
    Width = 60
    Height = 210
    TabIndex = 61
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
  Begin Label Label1
    Caption = "Guest Details"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 60
    Top = 3630
    Width = 5100
    Height = 375
    TabIndex = 49
    Alignment = 2 'Center
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
    Caption = "Address"
    Index = 2
    ForeColor = &HC00000&
    Left = 135
    Top = 4410
    Width = 750
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
  Begin Label Lbl
    Caption = "Chk Out Date"
    Index = 15
    ForeColor = &HC00000&
    Left = 135
    Top = 1680
    Width = 1245
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
  Begin Label Lbl
    Caption = "Comment3"
    Index = 13
    ForeColor = &HC00000&
    Left = 135
    Top = 6300
    Width = 1020
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
    Caption = "Comment2"
    Index = 8
    ForeColor = &HC00000&
    Left = 135
    Top = 5985
    Width = 1020
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
    Caption = "Comment1"
    Index = 7
    ForeColor = &HC00000&
    Left = 135
    Top = 5670
    Width = 1020
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
    Caption = "Exp.Dep.Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 135
    Top = 2010
    Width = 1290
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
  Begin Label LblVPrefix
    Caption = "."
    BackColor = &HF9CECE&
    ForeColor = &H4080&
    Left = 13020
    Top = 480
    Width = 1530
    Height = 240
    Visible = 0   'False
    TabIndex = 41
    AutoSize = -1  'True
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
    Caption = "Folio Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 5280
    Top = 600
    Width = 7230
    Height = 375
    TabIndex = 37
    Alignment = 2 'Center
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
    Caption = "Guest Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 135
    Top = 1050
    Width = 1395
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
    Caption = "Status"
    Index = 1
    ForeColor = &HC00000&
    Left = 135
    Top = 6615
    Width = 585
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
  Begin Label Lbl
    Caption = "Company"
    Index = 3
    ForeColor = &HC00000&
    Left = 135
    Top = 5355
    Width = 900
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
    Caption = "Guest Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 135
    Top = 4110
    Width = 1155
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
  Begin Label LblCheckInDay
    Caption = "."
    ForeColor = &H4080&
    Left = 4155
    Top = 1410
    Width = 60
    Height = 210
    TabIndex = 32
    AutoSize = -1  'True
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
  Begin Label Lbl
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 135
    Top = 1380
    Width = 1320
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
    Caption = "Room Type"
    Index = 34
    ForeColor = &HC00000&
    Left = 135
    Top = 2325
    Width = 1080
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
    Caption = "Room Rate"
    Index = 9
    ForeColor = &HC00000&
    Left = 135
    Top = 2955
    Width = 1050
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
    Caption = "Rate Code"
    Index = 10
    ForeColor = &HC00000&
    Left = 12840
    Top = 855
    Width = 870
    Height = 225
    Visible = 0   'False
    TabIndex = 28
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
    Caption = "Adult/Child"
    Index = 11
    ForeColor = &HC00000&
    Left = 135
    Top = 2640
    Width = 1050
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
  Begin Label Label1
    Caption = "Room Details For Room No."
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 60
    Top = 585
    Width = 5100
    Height = 375
    TabIndex = 26
    Alignment = 2 'Center
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

Attribute VB_Name = "fdDisplayFolioSumm"

Private MasterFormExit As Integer

Private Sub CmdExit_UnknownEvent_9 'E1A954
  'Data Table: 4B1B44
  loc_E1A949: Me.Global.Unload Me
  loc_E1A951: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F44BA4
  'Data Table: 4B1B44
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F44A9B: Me.DGRoomNo.Visible = False
  loc_F44ABA: If (Me.RecordCount > 0) Then
  loc_F44AF9:   Set var_B4 = Me.Txt
  loc_F44AFF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44B07:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F44B3A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F44B59:   Set var_B4 = Me.Txt
  loc_F44B5F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F44B67:   var_B8.Text = CStr(var_B0.Value)
  loc_F44B7D: End If
  loc_F44B88: Set var_A8 = Me.Txt
  loc_F44B8E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F44B96: var_B0.SetFocus
  loc_F44BA2: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9AC10
  'Data Table: 4B1B44
  Dim var_A8 As Variant
  loc_E9AB94: Set var_88 = Me.DGRoomNo
  loc_E9ABBE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9ABC6: Set var_BC = Me.DGRoomNo
  loc_E9AC00: Proc_6_138_106D6F8(Me.DGRoomNo, global_92, 0, Me.FGPoint)
  loc_E9AC0E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E285DC
  'Data Table: 4B1B44
  loc_E285D5: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E285D8:   Exit Sub
  loc_E285D9: End If
  loc_E285D9: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63E58
  'Data Table: 4B1B44
  loc_E63E28: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_E63E2B:   Call DGChrgPayment_UnknownEvent_9()
  loc_E63E30: End If
  loc_E63E4C: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E63E4F:   Call DGRoomNo_UnknownEvent_9()
  loc_E63E54: End If
  loc_E63E54: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1053688
  'Data Table: 4B1B44
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_1053436: Set var_88 = Me.Txt
  loc_105343C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_105344A: Proc_6_74_E226B0(var_8C)
  loc_1053459: var_92 = Index
  loc_1053464: If (var_92 = CInt(0)) Then
  loc_105347E:   If (Me.RecordCount > 0) Then
  loc_105348C:     Set var_8C = Me.FGPoint
  loc_10534A4:     Proc_6_137_1193554(Me.DGRoomNo, global_92, Index)
  loc_10534B2:   End If
  loc_1053500:   Set var_88 = Me.Txt
  loc_1053506:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_105350E:   var_8C = var_8C.Text
  loc_1053534:   If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), var_92) = vbNullString)) Then
  loc_1053537:     Exit Sub
  loc_1053538:   End If
  loc_1053545:   Set var_88 = Me.Txt
  loc_105354B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1053553:   var_A0 = var_8C.Text
  loc_1053565:   var_C4 = "RoomNo"
  loc_105357C:   var_C8 = Me.Fields.Item(var_C4)
  loc_10535A0:   If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_10535A9:     Me.MoveFirst
  loc_10535CC:     Set var_88 = Me.Txt
  loc_10535D2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_10535DA:     0 = var_8C.Text
  loc_10535F3:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_1053608:   End If
  loc_1053608: End If
  loc_1053617: Set var_88 = Me.Txt
  loc_105361D: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1053625: var_8C.SelStart = 0
  loc_105363E: Set var_88 = Me.Txt
  loc_1053644: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_105365F: Set var_90 = Me.Txt
  loc_1053665: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_105366D: var_C8.SelLength = Len(var_8C.Text)
  loc_1053680: Call Proc_175_28_EBB9E0()
  loc_1053685: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC58D8
  'Data Table: 4B1B44
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_FC5737: var_88 = Shift
  loc_FC5744: If (CLng(Shift) = &H1B) Then
  loc_FC5747:   Call Proc_175_28_EBB9E0(var_88)
  loc_FC574C:   Exit Sub
  loc_FC574D: End If
  loc_FC575B: If (KeyCode = CInt(0)) Then
  loc_FC577B:   Set var_A4 = Me.FGPoint
  loc_FC5786:   Set var_A0 = Nothing
  loc_FC57B8:   Proc_6_69_134A198(Me.DGRoomNo, Me.Txt, CInt(0), global_92, Shift, 0)
  loc_FC5827:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_FC582E:     Set var_A0 = Me.DGRoomNo
  loc_FC584D:     Proc_6_138_106D6F8(var_A0, global_92, KeyCode, Me.FGPoint, 1)
  loc_FC585B:   End If
  loc_FC585B: End If
  loc_FC5896: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_FC58AE:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC58B7:     Proc_6_75_E527CC(Shift, arg_14, var_A0)
  loc_FC58BC:   End If
  loc_FC58C6:   If (CLng(Shift) = &H26) Then
  loc_FC58CF:     Proc_6_76_E52838(Shift, arg_14, var_A4)
  loc_FC58D4:   End If
  loc_FC58D4: End If
  loc_FC58D4: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EDFF5C
  'Data Table: 4B1B44
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EDFEA7: Proc_6_58_E054C0(arg_10)
  loc_EDFEB2: Proc_6_133_E7EF78(var_94)
  loc_EDFECF: If (KeyAscii = CInt(0)) Then
  loc_EDFEEE:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EDFF1B:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_92, CInt(Me.DGRoomNo.Visible), "RoomNo")
  loc_EDFF4D:     Proc_6_138_106D6F8(Me.DGRoomNo, global_92, KeyAscii, Me.FGPoint)
  loc_EDFF5B:   End If
  loc_EDFF5B: End If
  loc_EDFF5B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF1E4
  'Data Table: 4B1B44
  Dim var_86 As Integer
  loc_DFF1DF: var_86 = KeyCode
  loc_DFF1E2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E465B4
  'Data Table: 4B1B44
  loc_E46592: Set var_88 = Me.Txt
  loc_E46598: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E465A6: Proc_6_73_E22704(var_8C)
  loc_E465B2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15CED30
  'Data Table: 4B1B44
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_A8 As String
  Dim var_C0 As Variant
  Dim var_114 As Variant
  Dim var_8C As Long
  Dim var_12C As TextBox
  Dim var_F4 As Variant
  Dim unk_4B1B5C As Connection15
  Dim var_90 As Recordset15
  Dim var_D4 As Variant
  Dim var_140 As String
  Dim var_144 As Fields15
  Dim var_178 As TextBox
  loc_15CDA13: var_96 = Cancel
  loc_15CDA1E: If (var_96 = CInt(0)) Then
  loc_15CDA2D:   If (global_68 = 1) Then
  loc_15CDA47:     If (Me.RecordCount <= 0) Then
  loc_15CDA4A:       Exit Sub
  loc_15CDA4B:     End If
  loc_15CDA62:     If (Me.AbsolutePosition < 0) Then
  loc_15CDA65:       Exit Sub
  loc_15CDA66:     End If
  loc_15CDA6C:     Me.MoveFirst
  loc_15CDA8F:     Set var_A0 = Me.Txt
  loc_15CDA95:     Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A8, "roomno='")
  loc_15CDA9D:     0 = var_A4.Text
  loc_15CDAB6:     Me.Find 1 & var_A8 & "'", var_C0, var_96
  loc_15CDAEC:     Set var_A4 = Me.Txt
  loc_15CDAF2:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_D4)
  loc_15CDB2B:     If ((CBool(Me.FGPoint.Visible) = &HFF) And (CDbl(Val(CStr(Trim(CVar(var_D4))))) = CDbl(0))) Then
  loc_15CDB41:       var_C0 = CVar(CLng(Me.FGPoint.Row)) 'Long
  loc_15CDB46:       var_114 = 2
  loc_15CDB53:       Set var_A4 = Me.FGPoint
  loc_15CDB59:       var_E4 = var_A4.TextMatrix)
  loc_15CDB68:       var_8C = CLng(CStr(var_E4))
  loc_15CDB83:       If (CInt(&HA) <> 0) Then
  loc_15CDB9C:         var_A8 = CStr(var_8C)
  loc_15CDBA9:         Me.Find "Foliono=" & var_A8, 0, 1
  loc_15CDBB5:       End If
  loc_15CDBB5:     End If
  loc_15CDBB5:   End If
  loc_15CDC03:   Set var_A0 = Me.Txt
  loc_15CDC09:   Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15CDC11:   var_C0 = var_A4.Text
  loc_15CDC29:   If (var_8C Or (var_A8 = vbNullString)) Then
  loc_15CDC39:     Set var_A0 = Me.Txt
  loc_15CDC3F:     Call 0.Method_Txt_Validate0 (Cancel, var_A4, vbNullString)
  loc_15CDC47:     var_A4.Tag = var_114
  loc_15CDC53:     Exit Sub
  loc_15CDC54:   End If
  loc_15CDC8F:   Set var_D4 = Me.Txt
  loc_15CDC95:   Call 0.Method_Txt_Validate0 (Cancel, var_12C)
  loc_15CDC9D:   var_12C.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_15CDCEE:   Set var_D4 = Me.Txt
  loc_15CDCF4:   Call 0.Method_Txt_Validate0 (Cancel, var_12C)
  loc_15CDCFC:   var_12C.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_15CDD4B:   Set var_D4 = Me.Txt
  loc_15CDD51:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_12C)
  loc_15CDD59:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_15CDD70:   var_C0 = "FolioNoDocid"
  loc_15CDD87:   var_A4 = Me.Fields.Item(var_C0)
  loc_15CDD98:   var_A8 = Proc_6_38_E68A98(CVar(var_A4))
  loc_15CDDA6:   Set var_D4 = Me.Txt
  loc_15CDDAC:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_12C)
  loc_15CDDB4:   var_12C.Tag = var_A8
  loc_15CDDCE:   Me.MoveFirst
  loc_15CDDF2:   Set var_A0 = Me.Txt
  loc_15CDDF8:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A4, var_A8, "FolionoDocid='")
  loc_15CDE00:   0 = var_A4.Tag
  loc_15CDE19:   Me.Find 1 & var_A8 & "'", var_C0, var_C0
  loc_15CDE4E:   Set var_A0 = Me.Txt
  loc_15CDE54:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A4, var_A8, "Select ChkinDAte,ChkinTime from RoomOcc where Sno=1 and Docid=")
  loc_15CDE5C:   var_13C = var_A4.Tag
  loc_15CDE6A:   Proc_6_17_EAA2B0(var_E4, CVar(var_A8))
  loc_15CDE72:   var_F4 = -1 & var_E4 
  loc_15CDE80:   unk_4B1B5C.Execute CStr(Trim(CVar(var_D4))), var_D4, 
  loc_15CDE8B:   Set var_90 = var_D4
  loc_15CDEB9:   If (var_90.RecordCount > 0) Then
  loc_15CDED3:     var_A4 = var_90.Fields.Item("ChkInDate")
  loc_15CDEF2:     Set var_D4 = Me.Txt
  loc_15CDEF8:     Call 0.Method_Txt_Validate0 (CInt(1), var_12C)
  loc_15CDF00:     var_12C.Text = Proc_6_38_E68A98(CVar(var_A4))
  loc_15CDF1F:     Set var_A0 = Me.Txt
  loc_15CDF25:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_15CDF5F:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_A4), "DDDD"))
  loc_15CDFC7:     Set var_D4 = Me.Txt
  loc_15CDFCD:     Call 0.Method_Txt_Validate0 (CInt(2), var_12C, CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChkInTime")), 1)), 2)))
  loc_15CDFD5:     var_12C.Text = 1
  loc_15CE043:     Set var_D4 = Me.Txt
  loc_15CE049:     Call 0.Method_Txt_Validate0 (CInt(3), var_12C)
  loc_15CE051:     var_12C.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChkInTime")))), 2))
  loc_15CE072:   Else
  loc_15CE08C:     var_A4 = Me.Fields.Item("ChkInDate")
  loc_15CE0AB:     Set var_D4 = Me.Txt
  loc_15CE0B1:     Call 0.Method_Txt_Validate0 (CInt(1), var_12C)
  loc_15CE0B9:     var_12C.Text = Proc_6_38_E68A98(CVar(var_A4))
  loc_15CE0D8:     Set var_A0 = Me.Txt
  loc_15CE0DE:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_15CE118:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_A4), "DDDD"))
  loc_15CE183:     Set var_D4 = Me.Txt
  loc_15CE189:     Call 0.Method_Txt_Validate0 (CInt(2), var_12C, CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_15CE191:     var_12C.Text = 1
  loc_15CE202:     Set var_D4 = Me.Txt
  loc_15CE208:     Call 0.Method_Txt_Validate0 (CInt(3), var_12C)
  loc_15CE210:     var_12C.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_15CE22E:   End If
  loc_15CE267:   Set var_D4 = Me.Txt
  loc_15CE26D:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_12C)
  loc_15CE275:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkOutDate")))
  loc_15CE2DC:   Set var_D4 = Me.Txt
  loc_15CE2E2:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_12C)
  loc_15CE2EA:   var_12C.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_15CE35B:   Set var_D4 = Me.Txt
  loc_15CE361:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_12C)
  loc_15CE369:   var_12C.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_15CE3C0:   Set var_D4 = Me.Txt
  loc_15CE3C6:   Call 0.Method_Txt_Validate0 (CInt(6), var_12C)
  loc_15CE3CE:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_15CE435:   Set var_D4 = Me.Txt
  loc_15CE43B:   Call 0.Method_Txt_Validate0 (CInt(4), var_12C)
  loc_15CE443:   var_12C.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_15CE497:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_15CE4B4:   Set var_D4 = Me.Txt
  loc_15CE4BA:   Call 0.Method_Txt_Validate0 (CInt(5), var_12C)
  loc_15CE4C2:   var_12C.Text = CStr(Right(var_E4, 2))
  loc_15CE51C:   Set var_D4 = Me.Txt
  loc_15CE522:   Call 0.Method_Txt_Validate0 (CInt(7), var_12C)
  loc_15CE52A:   var_12C.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_15CE57C:   Set var_D4 = Me.Txt
  loc_15CE582:   Call 0.Method_Txt_Validate0 (CInt(7), var_12C)
  loc_15CE58A:   var_12C.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_15CE5D9:   Set var_D4 = Me.Txt
  loc_15CE5DF:   Call 0.Method_Txt_Validate0 (CInt(8), var_12C)
  loc_15CE5E7:   var_12C.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_15CE634:   Set var_D4 = Me.Txt
  loc_15CE63A:   Call 0.Method_Txt_Validate0 (CInt(8), var_12C)
  loc_15CE642:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_15CE67F:   Proc_6_39_E7C810(var_E4, CVar(Me.Fields.Item("RoomRate")))
  loc_15CE696:   Set var_D4 = Me.Txt
  loc_15CE69C:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_12C)
  loc_15CE6A4:   var_12C.Text = CStr(var_E4)
  loc_15CE6F5:   Set var_D4 = Me.Txt
  loc_15CE6FB:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_12C)
  loc_15CE703:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_15CE750:   Set var_D4 = Me.Txt
  loc_15CE756:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_12C)
  loc_15CE7AB:   Set var_D4 = Me.Txt
  loc_15CE7B1:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_12C)
  loc_15CE7B9:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_15CE806:   Set var_D4 = Me.Txt
  loc_15CE80C:   Call 0.Method_Txt_Validate0 (CInt(9), var_12C)
  loc_15CE814:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_15CE851:   Proc_6_39_E7C810(var_E4, CVar(Me.Fields.Item("OldAdult")))
  loc_15CE868:   Set var_D4 = Me.Txt
  loc_15CE86E:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_12C)
  loc_15CE876:   var_12C.Text = CStr(var_E4)
  loc_15CE8B7:   Proc_6_39_E7C810(var_E4, CVar(Me.Fields.Item("OldChild")))
  loc_15CE8CE:   Set var_D4 = Me.Txt
  loc_15CE8D4:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_12C)
  loc_15CE8DC:   var_12C.Text = CStr(var_E4)
  loc_15CE92D:   Set var_D4 = Me.Txt
  loc_15CE933:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_12C)
  loc_15CE93B:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_15CE988:   Set var_D4 = Me.Txt
  loc_15CE98E:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_12C)
  loc_15CE996:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_15CE9E3:   Set var_D4 = Me.Txt
  loc_15CE9E9:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_12C)
  loc_15CE9F1:   var_12C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments3")))
  loc_15CEA49:   Set var_D4 = Me.Txt
  loc_15CEA4F:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_12C)
  loc_15CEA57:   var_12C.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_15CEAB3:   Set var_D4 = Me.Txt
  loc_15CEAB9:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_12C)
  loc_15CEAC1:   var_12C.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_15CEAF3:   var_A4 = Me.Fields.Item("CityName")
  loc_15CEB0F:   var_A8 = Proc_6_38_E68A98(Trim(CVar(var_A4)))
  loc_15CEB33:   var_12C = Me.Fields.Item("StateName")
  loc_15CEB4F:   var_B0 = Proc_6_38_E68A98(Trim(CVar(var_12C)), var_A8 & ",")
  loc_15CEB6F:   var_144 = Me.Fields
  loc_15CEBA5:   Set var_174 = Me.Txt
  loc_15CEBAB:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_178)
  loc_15CEBB3:   var_178.Text = var_A4 & var_B0 & "," & Proc_6_38_E68A98(Trim(CVar(var_144.Item("CountryName"))))
  loc_15CEC03:   Set var_A0 = Me.Txt
  loc_15CEC09:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A4, var_A8, "select max(NetPackageAmount) as PkgAmt from Plandetails where Docid='")
  loc_15CEC11:   var_D0 = var_A4.Tag
  loc_15CEC1A:   var_AC = -1 & var_A8
  loc_15CEC21:   var_140 = var_A8 & "," & "' And RoomNo='"
  loc_15CEC32:   Set var_D4 = Me.Txt
  loc_15CEC38:   Call 0.Method_Txt_Validate0 (CInt(0), var_12C, var_B0)
  loc_15CEC40:   var_140 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_15CEC59:   unk_4B1B5C.Execute var_144 & var_B0 & "'", , 
  loc_15CEC64:   Set var_94 = var_144
  loc_15CECEA:   Set var_D4 = Me.Txt
  loc_15CECF0:   Call 0.Method_Txt_Validate0 (CInt(&H19), var_12C)
  loc_15CECF8:   var_12C.Text = Proc_6_38_E68A98(Format(Trim(CVar(Me.Recordset15.Fields.Item("PkgAmt"))), "0.00"), 1)
  loc_15CED19:   Set var_90 = Nothing
  loc_15CED21:   Set var_94 = Nothing
  loc_15CED24:   Call Proc_175_31_132E0A0(1)
  loc_15CED29:   Call Proc_175_30_139FDC4()
  loc_15CED2E: End If
  loc_15CED2E: Exit Sub
End Sub

Private Sub CmdPrint_UnknownEvent_9 'DFF5D4
  'Data Table: 4B1B44
  loc_DFF5CC: Call Proc_175_32_ED8A08()
  loc_DFF5D1: Exit Sub
  loc_DFF5D2: Exit Sub
End Sub

Private Sub Form_Load() '1048D64
  'Data Table: 4B1B44
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As String
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_C0 As TextBox
  Dim var_C8 As DataGrid
  Dim var_CC As TextBox
  Dim var_D4 As DataGrid
  Dim var_E4 As String
  Dim unk_4B1B5C As Connection15
  loc_1048B18: On Error Goto loc_1048D5C
  loc_1048B23: Call 0.Method_arg_7C (CDbl(1450))
  loc_1048B30: Call 0.Method_arg_74 (CDbl(1625))
  loc_1048B3D: Call 0.Method_MeC (CDbl(9200))
  loc_1048B4A: Call 0.Method_Me4 (CDbl(17000))
  loc_1048B56: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1048B68: Set var_A8 = Me.FGrid
  loc_1048B6E: var_A8.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1048B80: Set global_96 = New 
  loc_1048B92: Me.var_A8.CursorLocation = 3
  loc_1048BBC: var_BC = CVar("Select Code,Name,Type as Flag From RevMast where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Fieldtype in ('C','P') ORDER BY NAME ") 'String
  loc_1048BC6: Me.Open var_BC, CVar(MemVar_1F92044), 2
  loc_1048BDA: CVarUnk
  loc_1048BDF: VerifyVarObj
  loc_1048BE5: Set var_A8 = Me.DGChrgPayment
  loc_1048BEB: LateIdStAd
  loc_1048C0D: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_C4, Me.Txt)
  loc_1048C15: global_96 = var_C0.Left
  loc_1048C2C: Me.DGRoomNo.Left = CVar(var_C4)
  loc_1048C48: Set var_C8 = Me.Txt
  loc_1048C4E: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_D0)
  loc_1048C56: 3 = var_CC.Height
  loc_1048C6F: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_1048C87: var_94 = CVar(((var_C0.Top + var_D0) + CDbl(&H1E))) 'Single
  loc_1048C90: Set var_D4 = Me.DGRoomNo
  loc_1048C96: var_D4.Top = CVar(var_C0.Top)
  loc_1048CB2: Set global_92 = New 
  loc_1048CC4: Me.var_D4.CursorLocation = 3
  loc_1048CDD: var_AC = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.ChkInDate,RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, GuestFolio.DocId as FolioNoDocid,RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME " & " FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS  WHERE ROOMOCC.LOGSITE_CODE='"
  loc_1048CF9: var_E4 = var_AC & MemVar_1F92078 & "' AND ROOMMAST.LOGSITE_CODE='" & MemVar_1F92078 & "' AND roomocc.ChkOutDate is NULL  AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code,RoomOcc.FolioNo"
  loc_1048D02: unk_4B1B5C.Execute var_E4, var_BC, -1
  loc_1048D37: CVarUnk
  loc_1048D3C: VerifyVarObj
  loc_1048D42: Set var_A8 = Me.DGRoomNo
  loc_1048D48: LateIdStAd
  loc_1048D56: Call Proc_175_31_132E0A0(var_A8, Me.Txt)
  loc_1048D5B: Exit Sub
  loc_1048D5C: ' Referenced from: 1048B18
  loc_1048D5C: Proc_6_60_E62BC4(var_A8)
  loc_1048D61: Exit Sub
End Sub

Private Sub Form_Resize() 'E737F8
  'Data Table: 4B1B44
  loc_E737A2: Call 0.Method_arg_50 (var_88)
  loc_E737B4: Me.LblFormCaption.Caption = var_88
  loc_E737CD: Me.LblFormCaption.Left = CDbl(0)
  loc_E737DB: Call 0.Method_arg_100 (var_90)
  loc_E737ED: Me.LblFormCaption.Width = var_90
  loc_E737F5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E45A84
  'Data Table: 4B1B44
  loc_E45A5F: Set global_92 = Nothing
  loc_E45A71: Set global_96 = Nothing
  loc_E45A7D: MasterFormExit = 0
  loc_E45A80: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5BD44
  'Data Table: 4B1B44
  loc_E5BD0C: Set var_88 = Me.TopCtrl1
  loc_E5BD12: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5BD35: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5BD3D:   Call Form_Unload(&HFF)
  loc_E5BD42: End If
  loc_E5BD42: Exit Sub
End Sub

Private Sub Form_Activate() 'E4620C
  'Data Table: 4B1B44
  loc_E461E0: On Error Goto loc_E46206
  loc_E461E7: Set var_8C = Me.TopCtrl1
  loc_E461ED: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E46202: If (CLng(CInt()) = &H2D) Then
  loc_E46205: End If
  loc_E46205: Exit Sub
  loc_E46206: ' Referenced from: E461E0
  loc_E46206: Proc_6_60_E62BC4()
  loc_E4620B: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24E0C
  'Data Table: 4B1B44
  loc_E24DF1: If (MasterFormExit = &HFF) Then
  loc_E24E01:   Me.Global.Unload Me
  loc_E24E09: End If
  loc_E24E09: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5ED38
  'Data Table: 4B1B44
  loc_E5ECEC: On Error Goto loc_E5ED2F
  loc_E5ECF9: If (CLng(KeyCode) = &H79) Then
  loc_E5ED09:   Me.Global.Unload Me
  loc_E5ED11:   Exit Sub
  loc_E5ED12: End If
  loc_E5ED26: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E5ED2E: Exit Sub
  loc_E5ED2F: ' Referenced from: E5ECEC
  loc_E5ED2F: Proc_6_60_E62BC4(Shift)
  loc_E5ED34: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_9 'F448E4
  'Data Table: 4B1B44
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F447DB: Me.DGChrgPayment.Visible = False
  loc_F447FA: If (Me.RecordCount > 0) Then
  loc_F44839:   Set var_B4 = Me.Txt
  loc_F4483F:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F44847:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4487A:   var_B0 = Me.Fields.Item("Name")
  loc_F44899:   Set var_B4 = Me.Txt
  loc_F4489F:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F448A7:   var_B8.Text = CStr(var_B0.Value)
  loc_F448BD: End If
  loc_F448C8: Set var_A8 = Me.Txt
  loc_F448CE: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB))
  loc_F448D6: var_B0.SetFocus
  loc_F448E2: Exit Sub
End Sub

Public Function MasterFormExitGet() '4B2B18
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4B2B27
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4B2B36
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4B2B45
  mVType = Value
End Sub

Public Property Get OpenMode() 'E03980
  'Data Table: 4B1B44
  loc_E03979: OpenMode = global_68
End Sub

Public Property Let OpenMode(vNewValue) 'E01ACC
  'Data Table: 4B1B44
  Dim var_3301 As Integer
  loc_E01AC9: Exit Sub
  loc_E01ACA: var_3301 = vNewValue
End Sub

Public Sub Proc_175_26_E780D4(arg_C) 'E780D4
  'Data Table: 4B1B44
  Dim var_98 As TextBox
  loc_E78082: Set var_8C = Me.Txt
  loc_E78088: Call 0.Method_Proc_175_26_E780D48 (var_8E, var_86)
  loc_E78098: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E780AE:   Set var_8C = Me.Txt
  loc_E780B4:   Call 0.Method_Proc_175_26_E780D40 (CInt(var_86), var_98)
  loc_E780BC:   var_98.Enabled = arg_C
  loc_E780CB: Next var_92 'Byte
  loc_E780D1: Exit Sub
End Sub

Public Sub Proc_175_27_ECA898
  'Data Table: 4B1B44
  Dim var_98 As TextBox
  loc_ECA7F6: Set var_8C = Me.Txt
  loc_ECA7FC: Call 0.Method_Proc_175_27_ECA8988 (var_8E, var_86)
  loc_ECA80C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECA82F:   If (((CInt(var_86) <> &H17) And (CInt(var_86) <> &H18)) And (CInt(var_86) <> &H19)) Then
  loc_ECA842:     Set var_8C = Me.Txt
  loc_ECA848:     Call 0.Method_Proc_175_27_ECA8980 (CInt(var_86), var_98)
  loc_ECA850:     var_98.Text = vbNullString
  loc_ECA86C:     Set var_8C = Me.Txt
  loc_ECA872:     Call 0.Method_Proc_175_27_ECA8980 (CInt(var_86), var_98)
  loc_ECA87A:     var_98.Tag = vbNullString
  loc_ECA886:   End If
  loc_ECA889: Next var_92 'Byte
  loc_ECA88F: Call Proc_175_31_132E0A0()
  loc_ECA894: Exit Sub
End Sub

Public Sub Proc_175_28_EBB9E0
  'Data Table: 4B1B44
  loc_EBB958: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBB96A:   Me.DGRoomNo.Visible = False
  loc_EBB972: End If
  loc_EBB98E: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EBB9A0:   Me.DGChrgPayment.Visible = False
  loc_EBB9A8: End If
  loc_EBB9C4: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBB9D6:   Me.FGPoint.Visible = False
  loc_EBB9DE: End If
  loc_EBB9DE: Exit Sub
End Sub

Public Sub Proc_175_29_DFC040
  'Data Table: 4B1B44
  Dim arg_213D As Boolean
  loc_DFC03C: Exit Sub
  loc_DFC03D: arg_213D = True
End Sub

Public Sub Proc_175_30_139FDC4
  'Data Table: 4B1B44
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_C8 As String
  Dim var_D8 As String
  Dim var_D0 As TextBox
  Dim var_E4 As String
  Dim unk_4B1B5C As Connection15
  Dim var_F4 As Variant
  Dim var_B4 As Variant
  Dim var_A0 As Recordset15
  Dim var_CC As MSHFlexGrid
  Dim var_134 As Variant
  Dim var_11C As Variant
  Dim var_154 As Variant
  Dim var_104 As Variant
  Dim var_174 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_184 As Long
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  loc_139F512: Set var_B4 = Me.Txt
  loc_139F518: Call 0.Method_Proc_175_30_139FDC40 (CInt(&HA), var_B8, var_BC, "SELECT  'A' as AA,max(VType) as VType,max(Comments) as Comments,max(Vdate) as Vdate, max(VTime) as VTime ,SUM(AmtDr) AS AmtDr, SUM(AmtCr) AS AmtCr, max(DocId) as Docid, MAX(SNo) AS Sno,Max(VNo) as VNo,Max(U_Name) as U_Name,max(FixedChargeCode) as FixedChargeCode From PayCharge WHERE  (FolioNoDocid = '")
  loc_139F520: var_104 = var_B8.Tag
  loc_139F529: var_C0 = -1 & var_BC
  loc_139F537: var_C8 = var_C0 & "') AND ((ContraDocID IS NULL) OR (ContraDocID = '')) and (Vtype='RC' or PlanCharge='Yes') GROUP BY Vdate " & " Union "
  loc_139F53E: var_D8 = var_C8 & " SELECT  'B' as AA,VType,Comments,Vdate,VTime ,AmtDr,AmtCr,DocId,SNo,VNo,U_Name,FixedChargeCode From PayCharge  WHERE  (FolioNoDocid = '"
  loc_139F54F: Set var_CC = Me.Txt
  loc_139F555: Call 0.Method_Proc_175_30_139FDC40 (CInt(&HA), var_D0, var_D4)
  loc_139F55D: var_D8 = var_D0.Tag
  loc_139F574: var_E4 = var_108 & var_D4 & "') AND ((ContraDocID IS NULL) OR (ContraDocID = '')) and (Vtype<>'RC' and PlanCharge<>'Yes')" & " order by vDate,VTIME,VNo,SNO"
  loc_139F57D: unk_4B1B5C.Execute var_E4, , 
  loc_139F588: Set var_A0 = var_108
  loc_139F5C7: If (Me.Recordset15.RecordCount = 0) Then
  loc_139F5DD:   Me.FGrid.Rows = 2
  loc_139F5E5:   Exit Sub
  loc_139F5E6: End If
  loc_139F5FD: var_F4 = CVar((var_A0.RecordCount + 2)) 'Long
  loc_139F60C: Me.FGrid.Rows = 2
  loc_139F621: Set var_B4 = Me.FGrid
  loc_139F627: var_B4.Row = 1
  loc_139F62F: ' Referenced from: 139FC10
  loc_139F641: If Not(Me.var_B4.EOF) Then
  loc_139F648:   Set var_124 = Me.FGrid
  loc_139F655:   var_134 = Me.FGrid.Row
  loc_139F65E:   var_11C = CVar(CLng(var_134)) 'Long
  loc_139F696:   var_174 = CVar(Proc_6_38_E68A98(CVar(Me.var_134.Fields.Item("VDate")), CVar(CLng(1)))) 'String
  loc_139F69D:   LateIdCallSt
  loc_139F6F8:   If (Trim(CVar(Me.Recordset15.Fields.Item(0))) = "A") Then
  loc_139F70E:     var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139F716:     var_144 = CVar(CLng(2)) 'Long
  loc_139F71B:     var_164 = "Room Tariff"
  loc_139F724:     LateIdCallSt
  loc_139F735:   Else
  loc_139F73F:     var_134 = Me.FGrid.Row
  loc_139F780:     var_174 = CVar(Proc_6_38_E68A98(CVar(Me.var_134.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_134)), var_124, var_164)) 'String
  loc_139F787:     LateIdCallSt
  loc_139F79F:   End If
  loc_139F7C8:   var_194 = Me.FGrid.Row
  loc_139F7D1:   var_144 = CVar(CLng(var_194)) 'Long
  loc_139F7D9:   var_164 = CVar(CLng(3)) 'Long
  loc_139F806:   var_1A4 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_139F80D:   LateIdCallSt
  loc_139F852:   var_194 = Me.FGrid.Row
  loc_139F877:   var_134 = "0.00"
  loc_139F897:   LateIdCallSt
  loc_139F8E3:   Proc_6_39_E7C810(var_134, CVar(Me.var_194.Fields.Item("AmtDr")), CVar(var_94), var_124, CVar(CStr(Format(CVar(Me.var_194.Fields.Item("AmtCr")), var_134))), 1, 1)
  loc_139F8EB:   var_174 = (CVar(CLng(4)) + var_134)
  loc_139F8F0:   var_94 = CSng(Format(CVar(Me.var_194.Fields.Item("AmtCr")), var_134))
  loc_139F92F:   Proc_6_39_E7C810(var_134, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_194)))
  loc_139F937:   var_174 = (var_124 + var_134)
  loc_139F93C:   var_9C = CSng(Format(CVar(Me.var_194.Fields.Item("AmtCr")), var_134))
  loc_139F95E:   var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139F966:   var_164 = CVar(CLng(5)) 'Long
  loc_139F988:   var_104 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_139F998:   var_1A4 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_139F99F:   LateIdCallSt
  loc_139F9C3:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_139F9D9:     var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139F9E1:     var_144 = CVar(CLng(6)) 'Long
  loc_139F9E6:     var_164 = "Dr"
  loc_139F9EF:     LateIdCallSt
  loc_139FA00:   Else
  loc_139FA0C:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_139FA22:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139FA2A:       var_144 = CVar(CLng(6)) 'Long
  loc_139FA2F:       var_164 = "Cr"
  loc_139FA38:       LateIdCallSt
  loc_139FA49:     Else
  loc_139FA5C:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139FA64:       var_144 = CVar(CLng(6)) 'Long
  loc_139FA69:       var_164 = vbNullString
  loc_139FA72:       LateIdCallSt
  loc_139FA80:     End If
  loc_139FA80:   End If
  loc_139FA8A:   var_104 = Me.FGrid.Row
  loc_139FA93:   var_11C = CVar(CLng(var_104)) 'Long
  loc_139FA9B:   var_154 = CVar(CLng(7)) 'Long
  loc_139FACE:   var_174 = CVar(CStr(Me.var_104.Fields.Item("DocID").Value)) 'String
  loc_139FAD5:   LateIdCallSt
  loc_139FAF9:   var_104 = Me.FGrid.Row
  loc_139FB02:   var_11C = CVar(CLng(var_104)) 'Long
  loc_139FB0A:   var_154 = CVar(CLng(8)) 'Long
  loc_139FB3D:   var_174 = CVar(CStr(Me.var_104.Fields.Item("SNo").Value)) 'String
  loc_139FB44:   LateIdCallSt
  loc_139FB68:   var_134 = Me.FGrid.Row
  loc_139FBA9:   var_174 = CVar(Proc_6_38_E68A98(CVar(Me.var_134.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_134)), var_124, var_174, CVar(CLng(9)), CVar(CLng(var_134)))) 'String
  loc_139FBB0:   LateIdCallSt
  loc_139FBCA:   Set var_124 = Nothing 
  loc_139FBE7:   var_F4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_139FBF0:   Set var_B8 = Me.FGrid
  loc_139FBF6:   var_B8.Row = "U_Name"
  loc_139FC0B:   Me.var_B8.MoveNext
  loc_139FC10:   GoTo loc_139F62F
  loc_139FC13: End If
  loc_139FC26: Me.FGrid.FixedRows = 1
  loc_139FC32: Set var_1B8 = Me.Fgrid1
  loc_139FC35: var_144 = 0
  loc_139FC41: var_164 = CVar(CLng(1)) 'Long
  loc_139FC6F: var_174 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_139FC76: LateIdCallSt
  loc_139FC87: var_144 = 0
  loc_139FC93: var_164 = CVar(CLng(2)) 'Long
  loc_139FCC1: var_174 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_139FCC8: LateIdCallSt
  loc_139FCD9: var_144 = 0
  loc_139FCE5: var_164 = CVar(CLng(3)) 'Long
  loc_139FD07: var_104 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_139FD17: var_194 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_139FD1E: LateIdCallSt
  loc_139FD31: var_184 = 0
  loc_139FD3D: var_1C8 = CVar(CLng(4)) 'Long
  loc_139FD64: var_F4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_139FD8A: var_154 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_139FD9A: var_1E8 = CVar(CStr(IIf(CVar(CLng(9)), "Dr", IIf(var_9C, "Cr", vbNullString)))) 'String
  loc_139FDA1: LateIdCallSt
  loc_139FDBE: Set var_1B8 = Nothing 
  loc_139FDC2: Exit Sub
End Sub

Public Sub Proc_175_31_132E0A0
  'Data Table: 4B1B44
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_132D8F0: Set var_90 = Me.FGrid
  loc_132D906: Me.FGrid.Rows = 1
  loc_132D922: global_60 = CStr(CLng(var_90.BackColor))
  loc_132D938: var_90.Cols = &HA
  loc_132D93D: var_A0 = 0
  loc_132D949: var_D8 = CVar(CLng(0)) 'Long
  loc_132D94E: var_F8 = "SNo"
  loc_132D957: LateIdCallSt
  loc_132D962: var_A0 = CVar(CLng(0)) 'Long
  loc_132D967: var_D8 = 0
  loc_132D973: LateIdCallSt
  loc_132D97B: var_A0 = 0
  loc_132D987: var_D8 = CVar(CLng(1)) 'Long
  loc_132D98C: var_F8 = "Date"
  loc_132D995: LateIdCallSt
  loc_132D9A0: var_A0 = CVar(CLng(1)) 'Long
  loc_132D9AB: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D9B2: LateIdCallSt
  loc_132D9BD: var_A0 = CVar(CLng(1)) 'Long
  loc_132D9C8: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D9CF: LateIdCallSt
  loc_132D9DA: var_A0 = CVar(CLng(1)) 'Long
  loc_132D9DF: var_D8 = &H4E2
  loc_132D9EB: LateIdCallSt
  loc_132D9F3: var_A0 = 0
  loc_132D9FF: var_D8 = CVar(CLng(2)) 'Long
  loc_132DA04: var_F8 = "Particulars"
  loc_132DA0D: LateIdCallSt
  loc_132DA18: var_A0 = CVar(CLng(2)) 'Long
  loc_132DA23: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DA2A: LateIdCallSt
  loc_132DA35: var_A0 = CVar(CLng(2)) 'Long
  loc_132DA40: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DA47: LateIdCallSt
  loc_132DA52: var_A0 = CVar(CLng(2)) 'Long
  loc_132DA57: var_D8 = &HBB8
  loc_132DA63: LateIdCallSt
  loc_132DA6B: var_A0 = 0
  loc_132DA77: var_D8 = CVar(CLng(3)) 'Long
  loc_132DA7C: var_F8 = "Debit"
  loc_132DA85: LateIdCallSt
  loc_132DA90: var_A0 = CVar(CLng(3)) 'Long
  loc_132DA9B: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DAA2: LateIdCallSt
  loc_132DAAD: var_A0 = CVar(CLng(3)) 'Long
  loc_132DAB8: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DABF: LateIdCallSt
  loc_132DACA: var_A0 = CVar(CLng(3)) 'Long
  loc_132DACF: var_D8 = &H3E8
  loc_132DADB: LateIdCallSt
  loc_132DAE3: var_A0 = 0
  loc_132DAEF: var_D8 = CVar(CLng(4)) 'Long
  loc_132DAF4: var_F8 = "Credit"
  loc_132DAFD: LateIdCallSt
  loc_132DB08: var_A0 = CVar(CLng(4)) 'Long
  loc_132DB13: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DB1A: LateIdCallSt
  loc_132DB25: var_A0 = CVar(CLng(4)) 'Long
  loc_132DB30: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DB37: LateIdCallSt
  loc_132DB42: var_A0 = CVar(CLng(4)) 'Long
  loc_132DB47: var_D8 = &H3E8
  loc_132DB53: LateIdCallSt
  loc_132DB5B: var_A0 = 0
  loc_132DB67: var_D8 = CVar(CLng(5)) 'Long
  loc_132DB6C: var_F8 = "Balance"
  loc_132DB75: LateIdCallSt
  loc_132DB80: var_A0 = CVar(CLng(5)) 'Long
  loc_132DB8B: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DB92: LateIdCallSt
  loc_132DB9D: var_A0 = CVar(CLng(5)) 'Long
  loc_132DBA8: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DBAF: LateIdCallSt
  loc_132DBBA: var_A0 = CVar(CLng(5)) 'Long
  loc_132DBBF: var_D8 = &H3E8
  loc_132DBCB: LateIdCallSt
  loc_132DBD3: var_A0 = 0
  loc_132DBDF: var_D8 = CVar(CLng(6)) 'Long
  loc_132DBE4: var_F8 = vbNullString
  loc_132DBED: LateIdCallSt
  loc_132DBF8: var_A0 = CVar(CLng(6)) 'Long
  loc_132DC03: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DC0A: LateIdCallSt
  loc_132DC15: var_A0 = CVar(CLng(6)) 'Long
  loc_132DC20: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DC27: LateIdCallSt
  loc_132DC32: var_A0 = CVar(CLng(6)) 'Long
  loc_132DC37: var_D8 = &H12C
  loc_132DC43: LateIdCallSt
  loc_132DC4B: var_A0 = 0
  loc_132DC57: var_D8 = CVar(CLng(7)) 'Long
  loc_132DC5C: var_F8 = vbNullString
  loc_132DC65: LateIdCallSt
  loc_132DC70: var_A0 = CVar(CLng(7)) 'Long
  loc_132DC7B: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DC82: LateIdCallSt
  loc_132DC8D: var_A0 = CVar(CLng(7)) 'Long
  loc_132DC98: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DC9F: LateIdCallSt
  loc_132DCAA: var_A0 = CVar(CLng(7)) 'Long
  loc_132DCAF: var_D8 = 0
  loc_132DCBB: LateIdCallSt
  loc_132DCC3: var_A0 = 0
  loc_132DCCF: var_D8 = CVar(CLng(8)) 'Long
  loc_132DCD4: var_F8 = vbNullString
  loc_132DCDD: LateIdCallSt
  loc_132DCE8: var_A0 = CVar(CLng(8)) 'Long
  loc_132DCF3: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DCFA: LateIdCallSt
  loc_132DD05: var_A0 = CVar(CLng(8)) 'Long
  loc_132DD10: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DD17: LateIdCallSt
  loc_132DD22: var_A0 = CVar(CLng(8)) 'Long
  loc_132DD27: var_D8 = 0
  loc_132DD33: LateIdCallSt
  loc_132DD3B: var_A0 = 0
  loc_132DD47: var_D8 = CVar(CLng(9)) 'Long
  loc_132DD4C: var_F8 = "User"
  loc_132DD55: LateIdCallSt
  loc_132DD60: var_A0 = CVar(CLng(9)) 'Long
  loc_132DD6B: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DD72: LateIdCallSt
  loc_132DD7D: var_A0 = CVar(CLng(9)) 'Long
  loc_132DD88: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DD8F: LateIdCallSt
  loc_132DD9A: var_A0 = CVar(CLng(9)) 'Long
  loc_132DD9F: var_D8 = &H320
  loc_132DDAB: LateIdCallSt
  loc_132DDB3: var_A0 = vbNullString
  loc_132DDBD: Set var_B4 = Me.FGrid
  loc_132DDE1: Me.FGrid.FixedRows = 1
  loc_132DDEB: Set var_90 = Nothing 
  loc_132DDF3: Set var_10C = Me.Fgrid1
  loc_132DE09: Me.Fgrid1.Rows = 1
  loc_132DE25: global_60 = CStr(CLng(var_10C.BackColor))
  loc_132DE3B: var_10C.Cols = 5
  loc_132DE40: var_A0 = 0
  loc_132DE4C: var_D8 = CVar(CLng(0)) 'Long
  loc_132DE51: var_F8 = "Total :"
  loc_132DE5A: LateIdCallSt
  loc_132DE65: var_A0 = CVar(CLng(0)) 'Long
  loc_132DE70: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DE77: LateIdCallSt
  loc_132DE82: var_A0 = CVar(CLng(0)) 'Long
  loc_132DE8D: var_D8 = CVar(CInt(1)) 'Integer
  loc_132DE94: LateIdCallSt
  loc_132DE9F: var_A0 = CVar(CLng(0)) 'Long
  loc_132DEA4: var_D8 = &H109A
  loc_132DEB0: LateIdCallSt
  loc_132DEB8: var_A0 = 0
  loc_132DEC4: var_D8 = CVar(CLng(1)) 'Long
  loc_132DEC9: var_F8 = vbNullString
  loc_132DED2: LateIdCallSt
  loc_132DEDD: var_A0 = CVar(CLng(1)) 'Long
  loc_132DEE8: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DEEF: LateIdCallSt
  loc_132DEFA: var_A0 = CVar(CLng(1)) 'Long
  loc_132DF05: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DF0C: LateIdCallSt
  loc_132DF17: var_A0 = CVar(CLng(1)) 'Long
  loc_132DF1C: var_D8 = &H3E8
  loc_132DF28: LateIdCallSt
  loc_132DF30: var_A0 = 0
  loc_132DF3C: var_D8 = CVar(CLng(2)) 'Long
  loc_132DF41: var_F8 = vbNullString
  loc_132DF4A: LateIdCallSt
  loc_132DF55: var_A0 = CVar(CLng(2)) 'Long
  loc_132DF60: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DF67: LateIdCallSt
  loc_132DF72: var_A0 = CVar(CLng(2)) 'Long
  loc_132DF7D: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DF84: LateIdCallSt
  loc_132DF8F: var_A0 = CVar(CLng(2)) 'Long
  loc_132DF94: var_D8 = &H3E8
  loc_132DFA0: LateIdCallSt
  loc_132DFA8: var_A0 = 0
  loc_132DFB4: var_D8 = CVar(CLng(3)) 'Long
  loc_132DFB9: var_F8 = vbNullString
  loc_132DFC2: LateIdCallSt
  loc_132DFCD: var_A0 = CVar(CLng(3)) 'Long
  loc_132DFD8: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DFDF: LateIdCallSt
  loc_132DFEA: var_A0 = CVar(CLng(3)) 'Long
  loc_132DFF5: var_D8 = CVar(CInt(7)) 'Integer
  loc_132DFFC: LateIdCallSt
  loc_132E007: var_A0 = CVar(CLng(3)) 'Long
  loc_132E00C: var_D8 = &H3E8
  loc_132E018: LateIdCallSt
  loc_132E020: var_A0 = 0
  loc_132E02C: var_D8 = CVar(CLng(4)) 'Long
  loc_132E031: var_F8 = vbNullString
  loc_132E03A: LateIdCallSt
  loc_132E045: var_A0 = CVar(CLng(4)) 'Long
  loc_132E050: var_D8 = CVar(CInt(1)) 'Integer
  loc_132E057: LateIdCallSt
  loc_132E062: var_A0 = CVar(CLng(4)) 'Long
  loc_132E06D: var_D8 = CVar(CInt(1)) 'Integer
  loc_132E074: LateIdCallSt
  loc_132E07F: var_A0 = CVar(CLng(4)) 'Long
  loc_132E084: var_D8 = &H12C
  loc_132E090: LateIdCallSt
  loc_132E09A: Set var_10C = Nothing 
  loc_132E09E: Exit Sub
End Sub

Public Sub Proc_175_32_ED8A08
  'Data Table: 4B1B44
  Dim unk_4B1B5C As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  loc_ED8980: On Error Goto loc_ED8A01
  loc_ED89AC: Proc_6_17_EAA2B0(var_CC, MemVar_1F92078, "Select ReservationPrinting From Enviro WHERE LOGSITE_CODE=", var_110, -1)
  loc_ED89C2: unk_4B1B5C.Execute CStr(var_114 & var_CC), var_118, 0
  loc_ED89D2:  = var_118.Item()
  loc_ED89E3: var_AC = Proc_6_38_E68A98(CVar(var_114.Fields))
  loc_ED89FB: Call Proc_175_33_12B7FD8()
  loc_ED8A00: Exit Sub
  loc_ED8A01: ' Referenced from: ED8980
  loc_ED8A01: Proc_6_60_E62BC4()
  loc_ED8A06: Exit Sub
End Sub

Public Sub Proc_175_33_12B7FD8
  'Data Table: 4B1B44
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim unk_4B1B5C As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_110 As String
  Dim var_A0 As Variant
  loc_12B79D4: On Error Goto loc_12B7FCB
  loc_12B79F3: Call 0.Method_Proc_175_33_12B7FD80 (CInt(&HA), var_A4, var_A8)
  loc_12B79FB: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.DocId) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='" = var_A4.Tag
  loc_12B7A32: unk_4B1B5C.Execute &HFF & var_A8 & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_12B7A3D: Set var_90 = Me.Txt
  loc_12B7A4C: var_D0 = var_90.RecordCount
  loc_12B7A5A: If (var_D0 <= 0) Then
  loc_12B7A63:   Call 0.Method_arg_50 (var_A8)
  loc_12B7A84:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_12B7A96:   var_8A = 0
  loc_12B7A99:   Exit Sub
  loc_12B7A9A: End If
  loc_12B7A9D: var_94 = "FolioPrint"
  loc_12B7AA0: var_BC = "Guest Folio"
  loc_12B7AB7: var_98 = CStr(Ucase(var_BC))
  loc_12B7AC7: If (var_8A = 0) Then
  loc_12B7ACA:   Exit Sub
  loc_12B7ACB: End If
  loc_12B7AEF: Set var_A0 = var_90 
  loc_12B7AF6: CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\" & var_94 & ".ttx", &HFF)
  loc_12B7B21: var_A8 = MemVar_1F920B4 & "\"
  loc_12B7B38: Call 0.Method_arg_1C (var_A8 & var_94 & ".RPT", var_BC, var_A0)
  loc_12B7B43: MemVar_1F921E4 = var_A0
  loc_12B7B6C: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_12B7B74: Call 0.Method_arg_2C (var_110, var_8A)
  loc_12B7B82: Call 0.Method_arg_150 (var_A0)
  loc_12B7B8C: Set var_90 = Nothing
  loc_12B7BA0: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_12B7BA8: Call 0.Method_arg_24 (var_9A)
  loc_12B7BB4: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_12B7BCD:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_12B7BD5:   Call 0.Method_arg_20 (var_A4)
  loc_12B7BDD:   Call 0.Method_arg_30 (var_A8)
  loc_12B7BF3:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_12B7C23:   If (var_13C = Ucase("ChkOutDt")) Then
  loc_12B7C36:     Set var_A0 = Me.Txt
  loc_12B7C3C:     Call 0.Method_Proc_175_33_12B7FD80 (CInt(&H16), var_A4)
  loc_12B7C74:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12B7C7C:     Call 0.Method_arg_20 (var_148)
  loc_12B7C84:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12B7CA3:   Else
  loc_12B7CC5:     If (var_13C = Ucase("ChkInDt")) Then
  loc_12B7CD8:       Set var_A0 = Me.Txt
  loc_12B7CDE:       Call 0.Method_Proc_175_33_12B7FD80 (CInt(1), var_A4)
  loc_12B7D16:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12B7D1E:       Call 0.Method_arg_20 (var_148)
  loc_12B7D26:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12B7D45:     Else
  loc_12B7D67:       If (var_13C = Ucase("Company")) Then
  loc_12B7D7A:         Set var_A0 = Me.Txt
  loc_12B7D80:         Call 0.Method_Proc_175_33_12B7FD80 (CInt(8), var_A4)
  loc_12B7DB8:         Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12B7DC0:         Call 0.Method_arg_20 (var_148)
  loc_12B7DC8:         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12B7DE7:       Else
  loc_12B7E09:         If (var_13C = Ucase("AdltChld")) Then
  loc_12B7E1C:           Set var_A0 = Me.Txt
  loc_12B7E22:           Call 0.Method_Proc_175_33_12B7FD80 (CInt(&HC), var_A4)
  loc_12B7E51:           Set var_144 = Me.Txt
  loc_12B7E57:           Call 0.Method_Proc_175_33_12B7FD80 (CInt(&HD), var_148)
  loc_12B7E8F:           Call 0.Method_arg_90 (var_18C, CLng(var_9A))
  loc_12B7E97:           Call 0.Method_arg_20 (var_190)
  loc_12B7E9F:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_12B7EC8:         Else
  loc_12B7EEA:           If (var_13C = Ucase("RoomNo")) Then
  loc_12B7EFD:             Set var_A0 = Me.Txt
  loc_12B7F03:             Call 0.Method_Proc_175_33_12B7FD80 (CInt(0), var_A4)
  loc_12B7F3B:             Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12B7F43:             Call 0.Method_arg_20 (var_148)
  loc_12B7F4B:             Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12B7F67:           End If
  loc_12B7F67:         End If
  loc_12B7F67:       End If
  loc_12B7F67:     End If
  loc_12B7F67:   End If
  loc_12B7F6A: Next var_12C 'Integer
  loc_12B7F74: Set var_A4 = Nothing
  loc_12B7F8A: Set var_A0 = MemVar_1F921E4 
  loc_12B7F96: Proc_6_99_1483714(var_A0, 0, var_98)
  loc_12B7FA1: MemVar_1F921E4 = var_A0
  loc_12B7FB9: Me.Global.Unload Me
  loc_12B7FC6: MemVar_1F921E4 = Nothing
  loc_12B7FCA: Exit Sub
  loc_12B7FCB: ' Referenced from: 12B79D4
  loc_12B7FD0: Proc_6_60_E62BC4(0, &HFF)
  loc_12B7FD5: Exit Sub
  loc_12B7FD6: var_3382 = Mid$(var_A4, , )
End Sub
