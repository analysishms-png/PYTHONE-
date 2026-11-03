VERSION 5.00
Begin VB.Form fdDisplayFolio
  Caption = "Guest Ledger"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdDisplayFolio.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14235
  ClientHeight = 8985
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1215
    Top = 6885
    Width = 3975
    Height = 285
    Enabled = 0   'False
    TabIndex = 67
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
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8535
    Width = 14235
    Height = 450
    Visible = 0   'False
    TabIndex = 66
  End
  Begin MSHFlexGrid FRectGrid
    Left = 5925
    Top = 4830
    Width = 4065
    Height = 1020
    Visible = 0   'False
    TabIndex = 62
  End
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 3255
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 7515
    Top = 3165
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
      Top = 270
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
    Picture = "fdDisplayFolio.frx":442
    Left = 10560
    Top = 150
    Width = 315
    Height = 270
    Visible = 0   'False
    TabIndex = 51
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 26
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1215
    Top = 4365
    Width = 3975
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
    Left = 1215
    Top = 4680
    Width = 3975
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
    Left = 1215
    Top = 4995
    Width = 3975
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
    Left = 9345
    Top = 7620
    Width = 4980
    Height = 690
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSHFlexGrid Fgrid1
    Left = 5205
    Top = 6645
    Width = 8445
    Height = 285
    TabIndex = 47
  End
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
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
    Left = 3360
    Top = 1680
    Width = 420
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
    Left = 2910
    Top = 1680
    Width = 420
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
    Left = 1215
    Top = 5310
    Width = 3975
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
    Left = 1215
    Top = 5625
    Width = 3975
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
    Left = 1215
    Top = 5940
    Width = 3975
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
    Left = 1335
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
    Left = 3360
    Top = 1995
    Width = 420
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
    Left = 2910
    Top = 1995
    Width = 420
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
    Left = 11100
    Top = 90
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
    ForeColor = &HC00000&
    Left = 1335
    Top = 1050
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2910
    Top = 1365
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3360
    Top = 1365
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1215
    Top = 6570
    Width = 3975
    Height = 285
    Enabled = 0   'False
    TabIndex = 24
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
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1215
    Top = 6255
    Width = 3975
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
    Left = 1215
    Top = 4050
    Width = 3975
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
    Left = 1335
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
    Left = 3930
    Top = 600
    Width = 780
    Height = 330
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
    Left = 1335
    Top = 2940
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    ForeColor = &HC00000&
    Left = 12480
    Top = 6930
    Width = 480
    Height = 330
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 5
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
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 2625
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 2
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1785
    Top = 2625
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
    Left = 1335
    Top = 2310
    Width = 2445
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
  Begin MSFlexGrid FGPoint
    Left = 810
    Top = 7710
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 50
  End
  Begin DataGrid DGRoomNo
    Left = 9330
    Top = 7200
    Width = 5655
    Height = 1305
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 38
  End
  Begin MSHFlexGrid FGrid
    Left = 5235
    Top = 1020
    Width = 8775
    Height = 5580
    TabIndex = 25
  End
  Begin BtnEnh CmdExit
    Left = 7620
    Top = 7110
    Width = 1275
    Height = 1050
    TabIndex = 64
  End
  Begin BtnEnh CmdPrint
    Left = 4560
    Top = 7155
    Width = 1275
    Height = 1050
    TabIndex = 65
  End
  Begin Label Lbl
    Caption = "Status"
    Index = 14
    ForeColor = &HC00000&
    Left = 180
    Top = 6885
    Width = 555
    Height = 285
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
    Left = 120
    Top = 3270
    Width = 1035
    Height = 285
    TabIndex = 61
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
    Caption = "Guest Details"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 90
    Top = 3600
    Width = 5040
    Height = 375
    TabIndex = 49
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
  Begin Label Lbl
    Caption = "Address"
    Index = 2
    ForeColor = &HC00000&
    Left = 150
    Top = 4365
    Width = 720
    Height = 285
    TabIndex = 48
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
    Caption = "Chk Out Date"
    Index = 15
    ForeColor = &HC00000&
    Left = 120
    Top = 1680
    Width = 1110
    Height = 285
    TabIndex = 46
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
    Caption = "Comment3"
    Index = 13
    ForeColor = &HC00000&
    Left = 150
    Top = 5940
    Width = 930
    Height = 285
    TabIndex = 45
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
    Caption = "Comment2"
    Index = 8
    ForeColor = &HC00000&
    Left = 150
    Top = 5625
    Width = 930
    Height = 285
    TabIndex = 44
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
    Caption = "Comment1"
    Index = 7
    ForeColor = &HC00000&
    Left = 150
    Top = 5310
    Width = 930
    Height = 285
    TabIndex = 43
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
    Caption = "Exp.Dep.Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 120
    Top = 1995
    Width = 1125
    Height = 285
    TabIndex = 42
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
    Caption = "."
    BackColor = &HF9CECE&
    ForeColor = &H4080&
    Left = 13830
    Top = 660
    Width = 1530
    Height = 285
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
    Caption = "Charge Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 5235
    Top = 585
    Width = 8190
    Height = 375
    TabIndex = 37
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
  Begin Label Lbl
    Caption = "Guest Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 120
    Top = 1050
    Width = 1200
    Height = 285
    TabIndex = 36
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
    Caption = "GSTIN"
    Index = 1
    ForeColor = &HC00000&
    Left = 180
    Top = 6570
    Width = 510
    Height = 225
    TabIndex = 35
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
    Caption = "Company"
    Index = 3
    ForeColor = &HC00000&
    Left = 180
    Top = 6255
    Width = 795
    Height = 285
    TabIndex = 34
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
    Caption = "Guest Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 150
    Top = 4050
    Width = 1035
    Height = 225
    TabIndex = 33
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
  Begin Label LblCheckInDay
    Caption = "."
    ForeColor = &H4080&
    Left = 3810
    Top = 1365
    Width = 1350
    Height = 285
    TabIndex = 32
    AutoSize = -1  'True
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
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 120
    Top = 1365
    Width = 1170
    Height = 285
    TabIndex = 31
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
    Caption = "Room Type"
    Index = 34
    ForeColor = &HC00000&
    Left = 120
    Top = 2310
    Width = 945
    Height = 285
    TabIndex = 30
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
    Caption = "Room Rate"
    Index = 9
    ForeColor = &HC00000&
    Left = 120
    Top = 2925
    Width = 930
    Height = 225
    TabIndex = 29
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
    Caption = "Rate Code"
    Index = 10
    ForeColor = &HC00000&
    Left = 11430
    Top = 6945
    Width = 870
    Height = 285
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
    Left = 120
    Top = 2625
    Width = 900
    Height = 285
    TabIndex = 27
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
    Caption = "Guest Room For Room No."
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

Attribute VB_Name = "fdDisplayFolio"

Private MasterFormExit As Integer
Private global_72 As Long

Private Sub Txt_GotFocus(Index As Integer) '1051364
  'Data Table: 4D90FC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_1051112: Set var_88 = Me.Txt
  loc_1051118: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1051126: Proc_6_74_E226B0(var_8C)
  loc_1051135: var_92 = Index
  loc_1051140: If (var_92 = CInt(0)) Then
  loc_105115A:   If (Me.RecordCount > 0) Then
  loc_1051168:     Set var_8C = Me.FGPoint
  loc_1051180:     Proc_6_137_1193554(Me.DGRoomNo, global_100, Index)
  loc_105118E:   End If
  loc_10511DC:   Set var_88 = Me.Txt
  loc_10511E2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_10511EA:   var_8C = var_8C.Text
  loc_1051210:   If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), var_92) = vbNullString)) Then
  loc_1051213:     Exit Sub
  loc_1051214:   End If
  loc_1051221:   Set var_88 = Me.Txt
  loc_1051227:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_105122F:   var_A0 = var_8C.Text
  loc_1051241:   var_C4 = "RoomNo"
  loc_1051258:   var_C8 = Me.Fields.Item(var_C4)
  loc_105127C:   If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_1051285:     Me.MoveFirst
  loc_10512A8:     Set var_88 = Me.Txt
  loc_10512AE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_10512B6:     0 = var_8C.Text
  loc_10512CF:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_10512E4:   End If
  loc_10512E4: End If
  loc_10512F3: Set var_88 = Me.Txt
  loc_10512F9: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1051301: var_8C.SelStart = 0
  loc_105131A: Set var_88 = Me.Txt
  loc_1051320: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_105133B: Set var_90 = Me.Txt
  loc_1051341: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1051349: var_C8.SelLength = Len(var_8C.Text)
  loc_105135C: Call Proc_63_37_EBC6C4()
  loc_1051361: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1018A30
  'Data Table: 4D90FC
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Column
  Dim var_AC As TextBox
  Dim var_90 As DataGrid
  loc_101881F: var_88 = Shift
  loc_101882C: If (CLng(Shift) = &H1B) Then
  loc_101882F:   Call Proc_63_37_EBC6C4(var_88)
  loc_1018834:   Exit Sub
  loc_1018835: End If
  loc_1018843: If (KeyCode = CInt(0)) Then
  loc_101884A:   Set var_AC = Me.DGRoomNo
  loc_1018863:   Set var_A4 = Me.FGPoint
  loc_101886E:   Set var_A0 = Nothing
  loc_10188A0:   Proc_6_69_134A198(var_AC, Me.Txt, CInt(0), global_100, Shift, 0)
  loc_101890F:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1018935:     Proc_6_138_106D6F8(Me.DGRoomNo, global_100, KeyCode, Me.FGPoint, 1)
  loc_1018953:     Set var_90 = Me.DGRoomNo
  loc_101896A:     var_A0 = DGRoomNo.DispID_69.Item(2)
  loc_101898F:     Call 0.Method_Txt_KeyDown0 (CInt(&HA), var_AC, CStr(var_A0.Value), var_A0)
  loc_1018997:     var_AC.Tag = Me.Txt
  loc_10189B3:   End If
  loc_10189B3: End If
  loc_10189EE: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_1018A06:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1018A0F:     Proc_6_75_E527CC(Shift, arg_14)
  loc_1018A14:   End If
  loc_1018A1E:   If (CLng(Shift) = &H26) Then
  loc_1018A27:     Proc_6_76_E52838(Shift, arg_14)
  loc_1018A2C:   End If
  loc_1018A2C: End If
  loc_1018A2C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE21D0
  'Data Table: 4D90FC
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE211B: Proc_6_58_E054C0(arg_10)
  loc_EE2126: Proc_6_133_E7EF78(var_94)
  loc_EE2143: If (KeyAscii = CInt(0)) Then
  loc_EE2162:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EE218F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_100, CInt(Me.DGRoomNo.Visible), "RoomNo")
  loc_EE21C1:     Proc_6_138_106D6F8(Me.DGRoomNo, global_100, KeyAscii, Me.FGPoint)
  loc_EE21CF:   End If
  loc_EE21CF: End If
  loc_EE21CF: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF4F4
  'Data Table: 4D90FC
  Dim var_86 As Integer
  loc_DFF4EF: var_86 = KeyCode
  loc_DFF4F2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46004
  'Data Table: 4D90FC
  loc_E45FE2: Set var_88 = Me.Txt
  loc_E45FE8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E45FF6: Proc_6_73_E22704(var_8C)
  loc_E46002: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '19EB310
  'Data Table: 4D90FC
  Dim var_D4 As String
  Dim var_D8 As String
  Dim unk_4D910D As Connection15
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_C0 As Double
  Dim var_11E As Integer
  Dim Me As Recordset15
  Dim var_128 As Variant
  Dim var_12C As String
  Dim var_8C As Long
  Dim var_FC As Fields15
  Dim var_138 As Variant
  Dim var_11C As Variant
  Dim var_90 As Recordset15
  Dim var_134 As Variant
  Dim var_10C As Variant
  Dim var_15C As String
  Dim var_160 As Variant
  Dim var_1A4 As TextBox
  Dim var_A0 As Recordset15
  Dim var_158 As Variant
  Dim var_194 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_278 As Variant
  Dim var_2C8 As Variant
  Dim var_338 As Variant
  Dim var_3B8 As Variant
  Dim var_3D8 As Variant
  Dim var_458 As Variant
  Dim var_480 As Double
  Dim var_1F8 As Variant
  Dim var_9C As Recordset15
  Dim var_C8 As Recordset15
  Dim var_1A0 As Fields15
  Dim var_478 As Variant
  Dim var_4F0 As Variant
  Dim var_4E0 As Variant
  Dim var_A4 As Recordset15
  Dim var_57C As Double
  Dim var_298 As Variant
  Dim var_588 As Double
  Dim var_CC As Long
  Dim var_D0 As Long
  Dim var_248 As Variant
  Dim var_574 As Fields15
  Dim var_C2 As Integer
  loc_19E8188: unk_4D910D.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_F8, -1
  loc_19E8193: Set var_A0 = var_FC
  loc_19E81A8: var_D4 = Proc_6_16_EF29FC(var_FC)
  loc_19E81D3: var_C0 = CDate(Format(CVar(var_D4), "hh:nn"))
  loc_19E81E7: var_11E = Cancel
  loc_19E81F2: If (var_11E = CInt(0)) Then
  loc_19E8201:   If (global_72 = 1) Then
  loc_19E821B:     If (Me.RecordCount <= 0) Then
  loc_19E821E:       Exit Sub
  loc_19E821F:     End If
  loc_19E8236:     If (Me.AbsolutePosition < 0) Then
  loc_19E8239:       Exit Sub
  loc_19E823A:     End If
  loc_19E8240:     Me.MoveFirst
  loc_19E8263:     Set var_FC = Me.Txt
  loc_19E8269:     Call 0.Method_Txt_Validate0 (Cancel, var_128, var_D4, "roomno='", 0, 1)
  loc_19E8271:     var_E8 = var_128.Text
  loc_19E828A:     Me.Find var_11E & var_D4 & "'", var_C0, 1
  loc_19E82AA:     If (global_60 <> vbNullString) Then
  loc_19E82D2:       var_8C = CLng(Val(CStr(Right(global_60, 8))))
  loc_19E82F3:       var_D4 = "FolioNoDocid='" & global_60
  loc_19E8303:       Me.Find var_D4 & "'", 0, 1
  loc_19E8312:     Else
  loc_19E8320:       Set var_FC = Me.Txt
  loc_19E8326:       Call 0.Method_Txt_Validate0 (CInt(&HA), var_128, var_D4)
  loc_19E832E:       var_E8 = var_128.Tag
  loc_19E833C:       var_10C = Trim(CVar(var_D4))
  loc_19E834E:       var_8C = CLng(Val(CStr(var_10C)))
  loc_19E836B:       If (var_8C <> 0) Then
  loc_19E8384:         var_D4 = CStr(var_8C)
  loc_19E8391:         Me.Find "Foliono=" & var_D4, 0, 1
  loc_19E839D:       End If
  loc_19E839D:     End If
  loc_19E839D:   End If
  loc_19E83EB:   Set var_FC = Me.Txt
  loc_19E83F1:   Call 0.Method_Txt_Validate0 (Cancel, var_128, var_D4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19E83F9:   var_E8 = var_128.Text
  loc_19E8411:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_19E8421:     Set var_FC = Me.Txt
  loc_19E8427:     Call 0.Method_Txt_Validate0 (Cancel, var_128, vbNullString)
  loc_19E842F:     var_128.Tag = var_8C
  loc_19E843B:     Exit Sub
  loc_19E843C:   End If
  loc_19E8477:   Set var_134 = Me.Txt
  loc_19E847D:   Call 0.Method_Txt_Validate0 (Cancel, var_138)
  loc_19E8485:   var_138.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_19E84D6:   Set var_134 = Me.Txt
  loc_19E84DC:   Call 0.Method_Txt_Validate0 (Cancel, var_138)
  loc_19E84E4:   var_138.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_19E8533:   Set var_134 = Me.Txt
  loc_19E8539:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_138)
  loc_19E8541:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_19E8558:   var_E8 = "FolioNoDocid"
  loc_19E856F:   var_128 = Me.Fields.Item(var_E8)
  loc_19E8580:   var_D4 = Proc_6_38_E68A98(CVar(var_128))
  loc_19E858E:   Set var_134 = Me.Txt
  loc_19E8594:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_138)
  loc_19E859C:   var_138.Tag = var_D4
  loc_19E85B6:   Me.MoveFirst
  loc_19E85DA:   Set var_FC = Me.Txt
  loc_19E85E0:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128, var_D4, "FolionoDocid='")
  loc_19E85E8:   0 = var_128.Tag
  loc_19E8601:   Me.Find 1 & var_D4 & "'", var_E8, 1
  loc_19E8636:   Set var_FC = Me.Txt
  loc_19E863C:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128, var_D4, "Select ChkinDAte,ChkinTime from RoomOcc where Sno=1 and Docid=")
  loc_19E8644:   var_158 = var_128.Tag
  loc_19E8652:   Proc_6_17_EAA2B0(var_10C, CVar(var_D4))
  loc_19E865A:   var_11C = -1 & var_10C 
  loc_19E8668:   unk_4D910D.Execute CStr(Format(CVar(var_D4), "hh:nn")), var_134, 
  loc_19E8673:   Set var_90 = var_134
  loc_19E86A1:   If (var_90.RecordCount > 0) Then
  loc_19E86BB:     var_128 = var_90.Fields.Item("ChkInDate")
  loc_19E86DA:     Set var_134 = Me.Txt
  loc_19E86E0:     Call 0.Method_Txt_Validate0 (CInt(1), var_138)
  loc_19E86E8:     var_138.Text = Proc_6_38_E68A98(CVar(var_128))
  loc_19E8707:     Set var_FC = Me.Txt
  loc_19E870D:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_19E8747:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_128), "DDDD"))
  loc_19E87AF:     Set var_134 = Me.Txt
  loc_19E87B5:     Call 0.Method_Txt_Validate0 (CInt(2), var_138, CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChkInTime")), 1)), 2)))
  loc_19E87BD:     var_138.Text = 1
  loc_19E882B:     Set var_134 = Me.Txt
  loc_19E8831:     Call 0.Method_Txt_Validate0 (CInt(3), var_138)
  loc_19E8839:     var_138.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChkInTime")))), 2))
  loc_19E885A:   Else
  loc_19E8874:     var_128 = Me.Fields.Item("ChkInDate")
  loc_19E8893:     Set var_134 = Me.Txt
  loc_19E8899:     Call 0.Method_Txt_Validate0 (CInt(1), var_138)
  loc_19E88A1:     var_138.Text = Proc_6_38_E68A98(CVar(var_128))
  loc_19E88C0:     Set var_FC = Me.Txt
  loc_19E88C6:     Call 0.Method_Txt_Validate0 (CInt(1), var_128)
  loc_19E8900:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_128), "DDDD"))
  loc_19E896B:     Set var_134 = Me.Txt
  loc_19E8971:     Call 0.Method_Txt_Validate0 (CInt(2), var_138, CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_19E8979:     var_138.Text = 1
  loc_19E89EA:     Set var_134 = Me.Txt
  loc_19E89F0:     Call 0.Method_Txt_Validate0 (CInt(3), var_138)
  loc_19E89F8:     var_138.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_19E8A16:   End If
  loc_19E8A4F:   Set var_134 = Me.Txt
  loc_19E8A55:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_138)
  loc_19E8A5D:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkOutDate")))
  loc_19E8AC4:   Set var_134 = Me.Txt
  loc_19E8ACA:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_138)
  loc_19E8AD2:   var_138.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_19E8B43:   Set var_134 = Me.Txt
  loc_19E8B49:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_138)
  loc_19E8B51:   var_138.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_19E8BA8:   Set var_134 = Me.Txt
  loc_19E8BAE:   Call 0.Method_Txt_Validate0 (CInt(6), var_138)
  loc_19E8BB6:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_19E8C1D:   Set var_134 = Me.Txt
  loc_19E8C23:   Call 0.Method_Txt_Validate0 (CInt(4), var_138)
  loc_19E8C2B:   var_138.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_19E8C7F:   var_10C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_19E8C9C:   Set var_134 = Me.Txt
  loc_19E8CA2:   Call 0.Method_Txt_Validate0 (CInt(5), var_138)
  loc_19E8CAA:   var_138.Text = CStr(Right(var_10C, 2))
  loc_19E8D04:   Set var_134 = Me.Txt
  loc_19E8D0A:   Call 0.Method_Txt_Validate0 (CInt(7), var_138)
  loc_19E8D12:   var_138.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_19E8D64:   Set var_134 = Me.Txt
  loc_19E8D6A:   Call 0.Method_Txt_Validate0 (CInt(7), var_138)
  loc_19E8D72:   var_138.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_19E8DC1:   Set var_134 = Me.Txt
  loc_19E8DC7:   Call 0.Method_Txt_Validate0 (CInt(8), var_138)
  loc_19E8DCF:   var_138.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_19E8E1C:   Set var_134 = Me.Txt
  loc_19E8E22:   Call 0.Method_Txt_Validate0 (CInt(8), var_138)
  loc_19E8E2A:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_19E8E77:   Set var_134 = Me.Txt
  loc_19E8E7D:   Call 0.Method_Txt_Validate0 (CInt(9), var_138)
  loc_19E8E85:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("GSTIN")))
  loc_19E8EC2:   Proc_6_39_E7C810(var_10C, CVar(Me.Fields.Item("RoomRate")))
  loc_19E8ED9:   Set var_134 = Me.Txt
  loc_19E8EDF:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_138)
  loc_19E8EE7:   var_138.Text = CStr(var_10C)
  loc_19E8F38:   Set var_134 = Me.Txt
  loc_19E8F3E:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_138)
  loc_19E8F46:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_19E8F93:   Set var_134 = Me.Txt
  loc_19E8F99:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_138)
  loc_19E8FEE:   Set var_134 = Me.Txt
  loc_19E8FF4:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_138)
  loc_19E8FFC:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_19E9049:   Set var_134 = Me.Txt
  loc_19E904F:   Call 0.Method_Txt_Validate0 (CInt(&H1D), var_138)
  loc_19E9057:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_19E9094:   Proc_6_39_E7C810(var_10C, CVar(Me.Fields.Item("OldAdult")))
  loc_19E90AB:   Set var_134 = Me.Txt
  loc_19E90B1:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_138)
  loc_19E90B9:   var_138.Text = CStr(var_10C)
  loc_19E90FA:   Proc_6_39_E7C810(var_10C, CVar(Me.Fields.Item("OldChild")))
  loc_19E9111:   Set var_134 = Me.Txt
  loc_19E9117:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_138)
  loc_19E911F:   var_138.Text = CStr(var_10C)
  loc_19E9170:   Set var_134 = Me.Txt
  loc_19E9176:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_138)
  loc_19E917E:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_19E91CB:   Set var_134 = Me.Txt
  loc_19E91D1:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_138)
  loc_19E91D9:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_19E9226:   Set var_134 = Me.Txt
  loc_19E922C:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_138)
  loc_19E9234:   var_138.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments3")))
  loc_19E928C:   Set var_134 = Me.Txt
  loc_19E9292:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_138)
  loc_19E929A:   var_138.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_19E92F6:   Set var_134 = Me.Txt
  loc_19E92FC:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_138)
  loc_19E9304:   var_138.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_19E9336:   var_128 = Me.Fields.Item("CityName")
  loc_19E9352:   var_D4 = Proc_6_38_E68A98(Trim(CVar(var_128)))
  loc_19E9376:   var_138 = Me.Fields.Item("StateName")
  loc_19E9392:   var_12C = Proc_6_38_E68A98(Trim(CVar(var_138)), var_D4 & ",")
  loc_19E93B2:   var_160 = Me.Fields
  loc_19E93E8:   Set var_1A0 = Me.Txt
  loc_19E93EE:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1A4)
  loc_19E93F6:   var_1A4.Text = var_128 & var_12C & "," & Proc_6_38_E68A98(Trim(CVar(var_160.Item("CountryName"))))
  loc_19E9446:   Set var_FC = Me.Txt
  loc_19E944C:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128, var_D4, "select max(NetPackageAmount) as PkgAmt from Plandetails where Docid='")
  loc_19E9454:   var_F8 = var_128.Tag
  loc_19E945D:   var_D8 = -1 & var_D4
  loc_19E9464:   var_15C = var_D4 & "," & "' And RoomNo='"
  loc_19E9475:   Set var_134 = Me.Txt
  loc_19E947B:   Call 0.Method_Txt_Validate0 (CInt(0), var_138, var_12C)
  loc_19E9483:   var_15C = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_19E949C:   unk_4D910D.Execute var_160 & var_12C & "'", , 
  loc_19E94A7:   Set var_94 = var_160
  loc_19E952D:   Set var_134 = Me.Txt
  loc_19E9533:   Call 0.Method_Txt_Validate0 (CInt(&H19), var_138)
  loc_19E953B:   var_138.Text = Proc_6_38_E68A98(Format(Trim(CVar(Me.Recordset15.Fields.Item("PkgAmt"))), "0.00"), 1)
  loc_19E955C:   Set var_90 = Nothing
  loc_19E9576:   var_128 = var_A0.Fields.Item("RoomRentChkOutPost")
  loc_19E9598:   If (Proc_6_38_E68A98(CVar(var_128)) = "Auto") Then
  loc_19E95A9:     Set var_FC = Me.Txt
  loc_19E95AF:     Call 0.Method_Txt_Validate0 (CInt(1), var_128)
  loc_19E9600:     If ((CDate(var_128.Text) <= MemVar_1F920EC) And IsNull(CVar(Me.Fields.Item("ChkOutDate")))) Then
  loc_19E9628:       var_F8 = Me.Fields.Item("ChkInDate").Value
  loc_19E9642:       For var_1B8 = CDate(var_F8) To MemVar_1F920EC: var_B0 = var_1B8 'Double
  loc_19E965C:         var_10C = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_19E966A:         Proc_6_7_F25D88(var_F8, var_B0, var_10C, var_478)
  loc_19E9672:         var_11C = -1 & var_F8 
  loc_19E96BB:         Proc_6_17_EAA2B0(var_1F8, CVar(Me.Fields.Item("FolioNoDocid")), "0.00" & ">=chkindate and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=")
  loc_19E96DB:         Proc_6_7_F25D88(var_248, var_B0, var_1A0 & var_1F8 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE ")
  loc_19E96FB:         Proc_6_7_F25D88(var_298, var_B0)
  loc_19E970C:         var_2C8 = CDate(var_F8) & var_248 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " & var_298 & ">=chkindate and ChngDate<=" 
  loc_19E971B:         Proc_6_7_F25D88(var_2E8, var_B0)
  loc_19E9755:         var_134 = Me.Fields
  loc_19E975D:         var_138 = var_134.Item("FolioNoDocid")
  loc_19E976C:         Proc_6_17_EAA2B0(var_388, CVar(var_138))
  loc_19E977D:         var_3B8 = var_2C8 & var_2E8 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=" & var_388 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" 
  loc_19E97A6:         var_160 = Me.Fields
  loc_19E97BD:         Proc_6_17_EAA2B0(var_428, CVar(var_160.Item("FolioNoDocid")))
  loc_19E97DC:         unk_4D910D.Execute CStr(var_3B8 & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=" & var_428 & ")"), 1, 
  loc_19E97E7:         Set var_C8 = var_1A0
  loc_19E984B:         If (CDbl(Val(global_76)) <> CDbl(0)) Then
  loc_19E9878:           var_D8 = "select RTrim(IsNull(Max(Bill_No),'')) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F92070 & "' and FolioNoDOCID='"
  loc_19E9895:           var_128 = Me.Fields.Item("mFolioNoDocid")
  loc_19E989D:           var_F8 = CVar(var_128) 'Address
  loc_19E98A6:           var_12C = Proc_6_38_E68A98(var_F8, var_D8, var_10C, -1, var_134)
  loc_19E98BA:           unk_4D910D.Execute var_138 & var_12C & "'", 0, var_160
  loc_19E98CA:            = var_138.Item()
  loc_19E98D2:            = var_160.Value
  loc_19E98DB:           var_98 = CStr(var_134.Fields)
  loc_19E990D:           Set var_FC = Me.Txt
  loc_19E9913:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_128)
  loc_19E9946:           If (CDbl(Val(global_76)) = CDbl(Val(var_128.Text))) Then
  loc_19E9954:             Proc_6_7_F25D88(var_F8, var_B0)
  loc_19E9995:             Set var_134 = Me.Txt
  loc_19E999B:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_138)
  loc_19E99B0:             var_480 = Val(var_138.Text)
  loc_19E99CE:             var_10C = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F92070 & "' and Vdate=") 'String
  loc_19E99F0:             var_1F8 = var_10C & var_F8 & " and FolioNoDOCID='" & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("mFolioNoDocid")))) & "' And (RelatedFolioNo=" 
  loc_19E9A04:             var_228 = var_1F8 & CVar(var_480) & " Or RelatedFolioNo=0)" 
  loc_19E9A12:             unk_4D910D.Execute CStr(var_228), var_248, -1
  loc_19E9A1D:             Set var_9C = var_160
  loc_19E9A52:           Else
  loc_19E9A5D:             Proc_6_7_F25D88(var_F8, var_B0, var_160)
  loc_19E9A9E:             Set var_134 = Me.Txt
  loc_19E9AA4:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_138)
  loc_19E9AD7:             var_10C = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F92070 & "' and Vdate=") 'String
  loc_19E9ADD:             var_11C = var_10C & var_F8 
  loc_19E9AF0:             var_1E8 = var_11C & " and FolioNoDOCID='" & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("mFolioNoDocid")), Val(var_138.Text))) 
  loc_19E9B04:             var_208 = var_1E8 & "' And RelatedFolioNo=" & CVar(Val(var_138.Text)) 
  loc_19E9B12:             unk_4D910D.Execute CStr(var_208), var_228, -1
  loc_19E9B1D:             Set var_9C = var_160
  loc_19E9B4D:           End If
  loc_19E9B50:         Else
  loc_19E9B7A:           var_D8 = "select RTrim(IsNull(Max(Bill_No),'')) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F92070 & "' and FolioNoDOCID='"
  loc_19E9B9F:           var_F8 = CVar(Me.Fields.Item("FolioNoDocid")) 'Address
  loc_19E9BA8:           var_12C = Proc_6_38_E68A98(var_F8, var_D8, var_10C, -1, var_134, var_138)
  loc_19E9BBC:           unk_4D910D.Execute 0 & CStr(var_208) & "'", var_160, var_11C
  loc_19E9BCC:           var_480 = var_138.Item(var_480)
  loc_19E9BD4:            = var_134.Fields.Value
  loc_19E9BDD:           var_98 = CStr(var_11C)
  loc_19E9C1C:           var_10C = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F92070 & "' and Vdate=") 'String
  loc_19E9C2A:           Proc_6_7_F25D88(var_F8, var_B0, var_10C)
  loc_19E9C6D:           var_1E8 = -1 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNoDocid")), var_208 & var_F8 & " and FolioNoDOCID='")) 
  loc_19E9C76:           var_1F8 = var_1E8 & "'" 
  loc_19E9C84:           unk_4D910D.Execute CStr(var_1F8), var_134, 
  loc_19E9C8F:           Set var_9C = var_134
  loc_19E9CB5:         End If
  loc_19E9CCF:         var_128 = var_9C.Fields.Item(0)
  loc_19E9CD7:         var_F8 = var_128.Value
  loc_19E9D09:         If CBool((var_F8 <= 0) And (var_98 = vbNullString)) Then
  loc_19E9D17:           var_480 = Val(global_76)
  loc_19E9D28:           Set var_FC = Me.Txt
  loc_19E9D2E:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_128)
  loc_19E9D53:           If (CDbl(Val(var_128.Text)) = CDbl(var_480)) Then
  loc_19E9D6A:             var_10C = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_19E9D78:             Proc_6_7_F25D88(var_F8, var_B0, var_10C, var_570)
  loc_19E9D80:             var_11C = -1 & var_F8 
  loc_19E9D9C:             var_194 = (var_F8 <= 0) And (var_98 = vbNullString) & ">=chkindate and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=" 
  loc_19E9DC9:             Proc_6_17_EAA2B0(var_1F8, CVar(Me.Fields.Item("FolioNoDocid")), var_194)
  loc_19E9DE9:             Proc_6_7_F25D88(var_248, var_B0)
  loc_19E9DFA:             var_278 = var_574 & var_1F8 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_248 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_19E9E09:             Proc_6_7_F25D88(var_298, var_B0)
  loc_19E9E29:             Proc_6_7_F25D88(var_2E8, var_B0)
  loc_19E9E44:             var_338 = var_278 & var_298 & ">=chkindate and ChngDate<=" & var_2E8 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_19E9E7A:             Proc_6_17_EAA2B0(var_388, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_19E9E95:             var_3D8 = var_338 & "' and RoomOcc.Docid=" & var_388 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_19E9ECB:             Proc_6_17_EAA2B0(var_428, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_19E9EDC:             var_458 = var_3D8 & "' and RoomOcc.Docid=" & var_428 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where RoomNo='" 
  loc_19E9EEF:             var_1A0 = var_C8.Fields
  loc_19E9EFF:             var_478 = CVar(var_1A0.Item("RoomNo")) 'Address
  loc_19E9F23:             Proc_6_7_F25D88(var_4E0, var_B0)
  loc_19E9F2B:             var_4F0 = var_480 & CVar(Proc_6_38_E68A98(var_478, var_458)) & "' and VDate=" & var_4E0 
  loc_19E9F55:             unk_4D910D.Execute CStr(var_4F0 & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F92078) & "')"), , 
  loc_19E9F60:             Set var_88 = var_574
  loc_19E9FCB:           Else
  loc_19E9FDF:             var_10C = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_19E9FED:             Proc_6_7_F25D88(var_F8, var_B0, var_10C)
  loc_19E9FFE:             var_158 = var_4F0 & var_F8 & ">=chkindate and Roomocc.LogSite_Code='" 
  loc_19EA03E:             Proc_6_17_EAA2B0(var_1F8, CVar(Me.Fields.Item("FolioNoDocid")), var_158 & CVar(MemVar_1F92078) & "' and RoomOcc.Docid=")
  loc_19EA046:             var_208 = -1 & var_1F8 
  loc_19EA05E:             Proc_6_7_F25D88(var_248, var_B0)
  loc_19EA06F:             var_278 = var_574 & var_1F8 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_248 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_19EA07E:             Proc_6_7_F25D88(var_298, var_B0)
  loc_19EA09E:             Proc_6_7_F25D88(var_2E8, var_B0)
  loc_19EA0B9:             var_338 = var_278 & var_298 & ">=chkindate and ChngDate<=" & var_2E8 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_19EA0D8:             var_134 = Me.Fields
  loc_19EA0EF:             Proc_6_17_EAA2B0(var_388, CVar(var_134.Item("FolioNoDocid")))
  loc_19EA10A:             var_3D8 = var_338 & "' and RoomOcc.Docid=" & var_388 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_19EA140:             Proc_6_17_EAA2B0(var_428, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_19EA151:             var_458 = var_3D8 & "' and RoomOcc.Docid=" & var_428 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where VDate=" 
  loc_19EA160:             Proc_6_7_F25D88(var_478, var_B0)
  loc_19EA192:             unk_4D910D.Execute CStr(var_458 & var_478 & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F92078) & "')"), var_1A0, 
  loc_19EA19D:             Set var_88 = var_1A0
  loc_19EA1FB:           End If
  loc_19EA212:           If (Me.Recordset15.RecordCount > 0) Then
  loc_19EA26B:             unk_4D910D.Execute CStr("Select * from RoomOcc Where DocId='" & Me.Recordset15.Fields.Item("DocID").Value & "' And SNo=1"), var_158, -1
  loc_19EA276:             Set var_A4 = var_134
  loc_19EA2C9:             If (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckOut"))) = "24 Hrs") Then
  loc_19EA37A:               Proc_96_11_EF9DD8(CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkInTime")))), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("variation")), 1)), "hh:nn")), 1)
  loc_19EA42C:               var_480 = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkInTime")), 1)), "nn")))
  loc_19EA489:               var_57C = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("variation")), var_480, 1)), "hh")))
  loc_19EA4E6:               var_588 = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("variation")), var_57C, 1)), "nn")))
  loc_19EA52D:               var_CC = CLng(((((Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkInTime")), 1)), "hh"))) * CDbl(&H3C)) + var_480) + (var_57C * CDbl(&H3C))) + var_588))
  loc_19EA574:             Else
  loc_19EA622:               Proc_96_11_EF9DD8(CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckoutVar")), var_CC, 1, 1, var_588)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("variation")), 1, 1, 1)), "hh:nn")), 1, 1)
  loc_19EA6D4:               var_480 = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckoutVar")), 1)), "nn")))
  loc_19EA731:               var_57C = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("variation")), var_480, 1)), "hh")))
  loc_19EA78E:               var_588 = Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("variation")), var_57C, 1)), "nn")))
  loc_19EA7D5:               var_CC = CLng(((((Val(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckoutVar")), 1, 1)), "hh"))) * CDbl(&H3C)) + var_480) + (var_57C * CDbl(&H3C))) + var_588))
  loc_19EA819:             End If
  loc_19EA85B:             var_158 = CVar(FormatDateTime(var_C0, 4)) 'String
  loc_19EA872:             var_480 = Val(CStr(Format(var_158, "nn")))
  loc_19EA893:             var_11C = Format(CVar(FormatDateTime(var_C0, 4)), "hh")
  loc_19EA8AD:             var_D0 = CLng(((Val(CStr(var_11C)) * CDbl(&H3C)) + var_480))
  loc_19EA903:             If (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("RoomRentChkOutPost")), var_D0, 1, 1, var_480, 1, 1) = "Auto") Then
  loc_19EA906:               GoTo loc_19EA9D5
  loc_19EA909:             End If
  loc_19EA928:             var_10C = CVar(var_A4.Fields.Item("ChkInDate")) 'Address
  loc_19EA998:             If ((((Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckOut")), var_588) = "24 Hrs") And (var_B0 = MemVar_1F920EC)) And (var_B0 <> CDate(Proc_6_38_E68A98(var_10C, var_CC, 1, 1)))) And (var_CC >= var_D0)) Then
  loc_19EA99B:               GoTo loc_19EB2C2
  loc_19EA99E:             End If
  loc_19EA9D2:             If (MsgBox("Want to Post Charges for " & CDate(var_B0), &H24, var_10C, var_11C, var_158) = 6) Then
  loc_19EA9D5:               ' Referenced from: 19EA906
  loc_19EAA2D:               var_D8 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckOut")), 1) = "Other"))
  loc_19EAA4B:               If (1 And (var_D8 = "Yes")) Then
  loc_19EAA5D:                 var_FC = var_A4.Fields
  loc_19EAA98:                 var_10C = CVar(var_A0.Fields.Item("CheckoutVar")) 'Address
  loc_19EAB81:                 Proc_96_12_F095A0(CDate(Format(CVar(Proc_6_38_E68A98(var_10C)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("VariationBefore")), 1)), "hh:nn")), (var_B0 = CDate(Proc_6_38_E68A98(CVar(var_FC.Item("ChkInDate"))))), 1)
  loc_19EABC8:                 If (1 And (1 > CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkInTime")), 1)), "hh:nn")))) Then
  loc_19EABF3:                   unk_4D910D.Execute CStr(Me.Recordset15.Source), var_10C, -1
  loc_19EAC61:                   Proc_96_4_1C1BDCC(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_FC, 0, "*", 0)
  loc_19EAC76:                 End If
  loc_19EAC76:               End If
  loc_19EAC85:               If ((var_B0 = MemVar_1F920EC) And (var_CC >= var_D0)) Then
  loc_19EAC97:                 var_FC = var_A0.Fields
  loc_19EACE0:                 var_D8 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckOut")), (Proc_6_38_E68A98(CVar(var_FC.Item("RoomRentChkOutPost")), 1, 1) = "Semi"))
  loc_19EAD35:                 If (1 And (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("RoomRentBefChkOut")), (var_FC And (var_D8 = "Other"))) <> "Yes")) Then
  loc_19EAD62:                   var_15C = 0
  loc_19EAD8F:                   Proc_96_4_1C1BDCC(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*")
  loc_19EADA7:                 Else
  loc_19EAE2A:                   var_D8 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckOut")), (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("RoomRentChkOutPost")), 1) = "Auto"))
  loc_19EAE94:                   If (((1 And (var_D8 = "Other")) And (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("RoomRentBefChkOut"))) <> "Yes")) And (var_B0 = CDate(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkInDate")), var_15C)))) Then
  loc_19EAEC1:                     var_15C = 0
  loc_19EAEEE:                     Proc_96_4_1C1BDCC(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*")
  loc_19EAF06:                   Else
  loc_19EB073:                     var_D8 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckOut")), 1, 1) = "Other"))
  loc_19EB09B:                     Proc_96_12_F095A0(CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckoutVar")), 1)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("VariationBefore")), 1)), "hh:nn")))
  loc_19EB0EE:                     If (1 And (((1 And (var_D8 = "Yes")) And (var_B0 = CDate(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkInDate")), Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkInDate")), var_15C))))) <= CDate(Format(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkInTime")), 1, 1)), "hh:nn")))) Then
  loc_19EB11B:                       var_15C = 0
  loc_19EB148:                       Proc_96_4_1C1BDCC(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*")
  loc_19EB160:                     Else
  loc_19EB1DF:                       If ((Proc_6_38_E68A98(CVar(var_A0.Fields.Item("CheckOut")), 1) = "24 Hrs") And (var_B0 = CDate(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkInDate")), var_15C)))) Then
  loc_19EB20C:                         var_15C = 0
  loc_19EB239:                         Proc_96_4_1C1BDCC(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*")
  loc_19EB24E:                       End If
  loc_19EB24E:                     End If
  loc_19EB24E:                   End If
  loc_19EB24E:                 End If
  loc_19EB251:               Else
  loc_19EB2A8:                 Proc_96_4_1C1BDCC(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*", 0, 1)
  loc_19EB2BD:               End If
  loc_19EB2BF:               var_C2 = &HFF
  loc_19EB2C2:               ' Referenced from: 19EA99B
  loc_19EB2C2:             End If
  loc_19EB2C2:           End If
  loc_19EB2C2:         End If
  loc_19EB2C5:       Next var_1B8 'Double
  loc_19EB2CF:       Set var_9C = Nothing
  loc_19EB2D7:       Set var_C8 = Nothing
  loc_19EB2DA:     End If
  loc_19EB2DA:   End If
  loc_19EB2DA:   Call Proc_63_39_13527D8()
  loc_19EB2DF:   Call Proc_63_38_140C4F4()
  loc_19EB2E4: End If
  loc_19EB2E9: Set var_94 = Nothing
  loc_19EB2F1: Set var_A4 = Nothing
  loc_19EB2F9: Set var_A0 = Nothing
  loc_19EB301: Set var_A8 = Nothing
  loc_19EB309: Set var_88 = Nothing
  loc_19EB30C: Exit Sub
End Sub

Private Sub Form_Load() '105AC14
  'Data Table: 4D90FC
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
  Dim unk_4D910D As Connection15
  loc_105A9B0: On Error Goto loc_105AC0B
  loc_105A9BB: Call 0.Method_arg_7C (CDbl(1450))
  loc_105A9C8: Call 0.Method_arg_74 (CDbl(1625))
  loc_105A9D5: Call 0.Method_MeC (CDbl(9200))
  loc_105A9E2: Call 0.Method_Me4 (CDbl(17000))
  loc_105A9EE: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_105AA00: Set var_A8 = Me.FGrid
  loc_105AA06: var_A8.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_105AA18: Set global_104 = New 
  loc_105AA2A: Me.var_A8.CursorLocation = 3
  loc_105AA54: var_BC = CVar("Select Code,Name,Type as Flag From RevMast where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Fieldtype in ('C','P') ORDER BY NAME ") 'String
  loc_105AA5E: Me.Open var_BC, CVar(MemVar_1F92044), 2
  loc_105AA72: CVarUnk
  loc_105AA77: VerifyVarObj
  loc_105AA7D: Set var_A8 = Me.DGChrgPayment
  loc_105AA83: LateIdStAd
  loc_105AAA5: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_C4, Me.Txt)
  loc_105AAAD: global_104 = var_C0.Left
  loc_105AAC4: Me.DGRoomNo.Left = CVar(var_C4)
  loc_105AAE0: Set var_C8 = Me.Txt
  loc_105AAE6: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_D0)
  loc_105AAEE: 3 = var_CC.Height
  loc_105AB07: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_105AB1F: var_94 = CVar(((var_C0.Top + var_D0) + CDbl(&H1E))) 'Single
  loc_105AB28: Set var_D4 = Me.DGRoomNo
  loc_105AB2E: var_D4.Top = CVar(var_C0.Top)
  loc_105AB4A: Set global_100 = New 
  loc_105AB5C: Me.var_D4.CursorLocation = 3
  loc_105AB75: var_AC = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.ChkInDate,RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, GuestFolio.DocId as FolioNoDocid, GuestFolio.mFolioNoDocId, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,SubGroup.GSTIN AS GSTIN " & " FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS  WHERE ROOMOCC.LOGSITE_CODE='"
  loc_105AB91: var_E4 = var_AC & MemVar_1F92078 & "' AND ROOMMAST.LOGSITE_CODE='" & MemVar_1F92078 & "' AND roomocc.ChkOutDate is NULL  AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code,RoomOcc.FolioNo"
  loc_105AB9A: unk_4D910D.Execute var_E4, var_BC, -1
  loc_105ABAB: Set global_100 = Me.Txt
  loc_105ABCF: CVarUnk
  loc_105ABD4: VerifyVarObj
  loc_105ABDA: Set var_A8 = Me.DGRoomNo
  loc_105ABE0: LateIdStAd
  loc_105AC02: If (fdDisplayFolio.OpenMode = 1) Then
  loc_105AC05: End If
  loc_105AC05: Call Proc_63_39_13527D8(var_A8, global_100)
  loc_105AC0A: Exit Sub
  loc_105AC0B: ' Referenced from: 105A9B0
  loc_105AC0B: Proc_6_60_E62BC4(var_A8)
  loc_105AC10: Exit Sub
End Sub

Private Sub Form_Resize() 'E75858
  'Data Table: 4D90FC
  Dim var_7B01 As Variant
  loc_E75802: Call 0.Method_arg_50 (var_88)
  loc_E75814: Me.LblFormCaption.Caption = var_88
  loc_E7582D: Me.LblFormCaption.Left = CDbl(0)
  loc_E7583B: Call 0.Method_arg_100 (var_90)
  loc_E7584D: Me.LblFormCaption.Width = var_90
  loc_E75855: Exit Sub
  loc_E75856: var_7B01 = CVar() 'Integer
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E4375C
  'Data Table: 4D90FC
  loc_E43737: Set global_100 = Nothing
  loc_E43749: Set global_104 = Nothing
  loc_E43755: MasterFormExit = 0
  loc_E43758: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5ADCC
  'Data Table: 4D90FC
  loc_E5AD94: Set var_88 = Me.TopCtrl1
  loc_E5AD9A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5ADBD: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5ADC5:   Call Form_Unload(&HFF)
  loc_E5ADCA: End If
  loc_E5ADCA: Exit Sub
End Sub

Private Sub Form_Activate() 'E46754
  'Data Table: 4D90FC
  loc_E46728: On Error Goto loc_E4674E
  loc_E4672F: Set var_8C = Me.TopCtrl1
  loc_E46735: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4674A: If (CLng(CInt()) = &H2D) Then
  loc_E4674D: End If
  loc_E4674D: Exit Sub
  loc_E4674E: ' Referenced from: E46728
  loc_E4674E: Proc_6_60_E62BC4()
  loc_E46753: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24D04
  'Data Table: 4D90FC
  loc_E24CE9: If (MasterFormExit = &HFF) Then
  loc_E24CF9:   Me.Global.Unload Me
  loc_E24D01: End If
  loc_E24D01: Exit Sub
  loc_E24D02: Set var_7B88 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E62838
  'Data Table: 4D90FC
  loc_E627EC: On Error Goto loc_E6282F
  loc_E627F9: If (CLng(KeyCode) = &H79) Then
  loc_E62809:   Me.Global.Unload Me
  loc_E62811:   Exit Sub
  loc_E62812: End If
  loc_E62826: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E6282E: Exit Sub
  loc_E6282F: ' Referenced from: E627EC
  loc_E6282F: Proc_6_60_E62BC4(Shift)
  loc_E62834: Exit Sub
  loc_E62835: StAryRecMove
End Sub

Private Sub FRectGrid_UnknownEvent_9 'E29270
  'Data Table: 4D90FC
  loc_E29263: Call Proc_63_34_10159E8(CInt(CLng(Me.FRectGrid.Row)))
  loc_E2926E: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F3DDA4
  'Data Table: 4D90FC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3DC9B: Me.DGRoomNo.Visible = False
  loc_F3DCBA: If (Me.RecordCount > 0) Then
  loc_F3DCF9:   Set var_B4 = Me.Txt
  loc_F3DCFF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3DD07:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F3DD3A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F3DD59:   Set var_B4 = Me.Txt
  loc_F3DD5F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3DD67:   var_B8.Text = CStr(var_B0.Value)
  loc_F3DD7D: End If
  loc_F3DD88: Set var_A8 = Me.Txt
  loc_F3DD8E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F3DD96: var_B0.SetFocus
  loc_F3DDA2: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E99F50
  'Data Table: 4D90FC
  Dim var_A8 As Variant
  loc_E99ED4: Set var_88 = Me.DGRoomNo
  loc_E99EFE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E99F06: Set var_BC = Me.DGRoomNo
  loc_E99F40: Proc_6_138_106D6F8(Me.DGRoomNo, global_100, 0, Me.FGPoint)
  loc_E99F4E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E5420C
  'Data Table: 4D90FC
  loc_E541F0: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E54202:   Me.FRectGrid.Visible = False
  loc_E5420A: End If
  loc_E5420A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '15F986C
  'Data Table: 4D90FC
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_1B0 As Variant
  Dim var_14C As String
  Dim var_150 As String
  Dim var_154 As String
  Dim var_148 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim unk_4D910D As Connection15
  Dim var_19C As Variant
  Dim var_1A0 As Variant
  Dim var_1B4 As Field20
  Dim var_1E4 As Variant
  Dim var_1FC As String
  Dim var_B4 As Recordset15
  Dim var_D4 As Variant
  Dim var_AA As Integer
  Dim var_188 As Variant
  Dim var_210 As Variant
  Dim var_128 As Variant
  Dim var_AC As Integer
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_250 As Variant
  Dim var_198 As Variant
  Dim var_9A As Integer
  Dim var_A2 As Integer
  Dim var_290 As Variant
  Dim var_280 As Variant
  Dim var_2B0 As Variant
  loc_15F8499: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_15F849C:   Exit Sub
  loc_15F849D: End If
  loc_15F84B0: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F84B8: var_E4 = CVar(CLng(1)) 'Long
  loc_15F84FA: If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_15F850E:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_15F8530:     If (CLng(Me.FGrid.Row) >= 1) Then
  loc_15F8537:       Set var_88 = Me.FGrid
  loc_15F8568:       var_118 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15F856E:       var_128 = Trim(var_118)
  loc_15F8579:       var_1B0 = 0
  loc_15F8596:       var_14C = "Select Count(*) From PayCharge P Where ISNull(P.RestCode,'') In ('" & MemVar_1F92078
  loc_15F85AB:       var_148 = CVar(var_14C & "BANQ','" & MemVar_1F92078 & "IDC') And P.DocId='") 'String
  loc_15F85B1:       var_164 = var_148 & var_128 
  loc_15F85BA:       var_174 = var_164 & "'" 
  loc_15F85C8:       unk_4D910D.Execute CStr(var_174), var_198, -1
  loc_15F85D0:       var_19C = var_19C.Fields
  loc_15F85D8:       var_1B0 = var_1A0.Item(var_1A0)
  loc_15F85E0:       var_1B4 = var_1B4.Value
  loc_15F85EB:       Proc_6_39_E7C810(var_1D4, var_1C4, var_1C4, CVar(CLng(7)))
  loc_15F862A:       If (var_1D4 > 0) Then
  loc_15F8633:         Call 0.Method_arg_50 (var_14C, CVar(CLng(var_88.Row)))
  loc_15F864E:         var_98 = "Banquet Settlement can't be deleted."
  loc_15F8654:         MsgBox(var_98, &H40, CVar(var_14C), var_118, var_128)
  loc_15F8664:         Exit Sub
  loc_15F8665:       End If
  loc_15F8687:       var_154 = "SELECT DeleteGuestCharges FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='" & MemVar_1F92128
  loc_15F86A5:       unk_4D910D.Execute var_154 & "' And UserName='" & MemVar_1F920C8 & "'", var_98, -1
  loc_15F86B0:       Set var_B4 = var_88
  loc_15F86DC:       If (var_B4.RecordCount > 0) Then
  loc_15F86EE:         var_88 = var_B4.Fields
  loc_15F86FE:         var_98 = CVar(var_88.Item("DeleteGuestCharges")) 'Address
  loc_15F8707:         var_A8 = Proc_6_38_E68A98(var_98, var_88)
  loc_15F8710:       End If
  loc_15F8734:       unk_4D910D.Execute "Select GuestChargesDeleteLog from Enviro where logsite_code='" & MemVar_1F92078 & "'", var_98, -1
  loc_15F873F:       Set var_B4 = var_88
  loc_15F8755:       var_200 = var_B4.RecordCount
  loc_15F8763:       If (var_200 > 0) Then
  loc_15F8775:         var_88 = var_B4.Fields
  loc_15F8794:         var_118 = Ucase(CVar(Proc_6_38_E68A98(CVar(var_88.Item("GuestChargesDeleteLog")), var_88)))
  loc_15F87B0:         If (var_118 = "YES") Then
  loc_15F87B5:           var_AA = &HFF
  loc_15F87B8:         End If
  loc_15F87B8:       End If
  loc_15F87BD:       Set var_B4 = Nothing
  loc_15F87D0:       var_98 = Me.FGrid.Row
  loc_15F87D9:       var_C4 = CVar(CLng(var_98)) 'Long
  loc_15F87EA:       Set var_F8 = Me.FGrid
  loc_15F87F0:       var_108 = var_F8.TextMatrix)
  loc_15F87FB:       var_14C = CStr(var_108)
  loc_15F881F:       If (CVar(CLng(1)) Or ((CDate(var_14C) = MemVar_1F920EC) And (var_A8 <> "No"))) Then
  loc_15F884F:         Set var_88 = Me.Txt
  loc_15F8855:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(&HA), var_F8, var_14C, "Select Count(*) from PayCharge where FolioNoDocid='", var_98, -1, var_19C)
  loc_15F885D:         var_1A0 = var_F8.Tag
  loc_15F8876:         unk_4D910D.Execute 0 & var_14C & "' and Bill_No<>'' and Bill_No is Not NULL", var_1B4, var_108
  loc_15F887E:         var_C4 = var_19C.Fields
  loc_15F8886:         var_AA = var_1A0.Item((MemVar_1F920B8 = 1))
  loc_15F888E:          = var_1B4.Value
  loc_15F88BB:         If (var_108 > 0) Then
  loc_15F88BE:           Exit Sub
  loc_15F88BF:         End If
  loc_15F88F6:         If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_118, var_128) = 6) Then
  loc_15F8918:           If (CLng(Me.FGrid.Rows) > 2) Then
  loc_15F8921:             If (var_AA = &HFF) Then
  loc_15F894E:               var_B0 = InputBox("Reason for Deletion :", "Delete Reason", var_118, var_128, var_148, var_164, var_174)
  loc_15F8962:             End If
  loc_15F896B:             unk_4D910D.BeginTrans var_200
  loc_15F8983:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F89B6:             var_1E4 = 0
  loc_15F89CC:             var_138 = "Select Count(*) From (PayCharge P Left Join Depart D On P.RestCode=D.Code) Where ISNull(P.RestCode,'')<>'' And P.DocId='"
  loc_15F89E1:             var_14C = CStr(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "' And ISNull(D.RestType,'') In('Room Service','Outlet')")
  loc_15F89EB:             unk_4D910D.Execute var_14C, var_174, -1
  loc_15F89F3:             var_19C = var_19C.Fields
  loc_15F89FB:             var_1E4 = var_1A0.Item(var_1A0)
  loc_15F8A03:             var_1B4 = var_1B4.Value
  loc_15F8A0E:             Proc_6_39_E7C810(var_1C4, var_198, var_198)
  loc_15F8A43:             If (var_1C4 > 0) Then
  loc_15F8A4C:               If (var_AA = &HFF) Then
  loc_15F8A55:                 Call 0.Method_arg_50 (var_14C, CVar(CLng(7)))
  loc_15F8A7F:                 var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_15F8AA4:                 var_118 = Format(Time, "HH:MM")
  loc_15F8AAC:                 var_148 = (1 + var_118)
  loc_15F8AB0:                 var_D4 = "- "
  loc_15F8AB5:                 var_164 = (var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Delete Reason")
  loc_15F8ABF:                 var_174 = (var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "' And ISNull(D.RestType,'') In('Room Service','Outlet')" + CVar(var_B0))
  loc_15F8AC4:                 var_B0 = CStr(var_174)
  loc_15F8AF2:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F8AFA:                 var_E4 = CVar(CLng(7)) 'Long
  loc_15F8B3D:                 unk_4D910D.Execute "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_15F8B67:                 var_98 = Me.FGrid.Row
  loc_15F8B70:                 var_C4 = CVar(CLng(var_98)) 'Long
  loc_15F8B87:                 var_108 = Me.FGrid.TextMatrix)
  loc_15F8B99:                 var_188 = 0
  loc_15F8BCA:                 unk_4D910D.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_15F8BDA:                 var_188 = var_1A0.Item(var_1A0)
  loc_15F8BE2:                 var_1B4 = var_1B4.Value
  loc_15F8BED:                 Proc_6_39_E7C810(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), CVar(0 & CStr(var_108) & " Tm "), CVar(0 & CStr(var_108) & " Tm "), var_108, CVar(CLng(7)))
  loc_15F8BF6:                 var_AC = CInt(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_15F8C27:                 Proc_6_17_EAA2B0(var_98, var_B0, var_AC, var_B0)
  loc_15F8C37:                 Proc_6_17_EAA2B0(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), MemVar_1F920C8, var_19C.Fields)
  loc_15F8C47:                 Proc_6_7_F25D88(var_198, MemVar_1F920EC, var_108)
  loc_15F8C5F:                 var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F8C67:                 var_210 = CVar(CLng(7)) 'Long
  loc_15F8C9A:                 var_14C = CStr((var_AC + 1))
  loc_15F8CAB:                 var_118 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=") & var_98 
  loc_15F8CD4:                 var_1D4 = var_118 & ",U_Name=" & MemVar_1F920EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ",U_EntDt=" & var_198 & " Where IsNull(SeqNo,0)=0 And DOCID='" 
  loc_15F8CF6:                 unk_4D910D.Execute CStr(var_1D4 & CVar(CStr(Me.FGrid.TextMatrix))) & "'"), var_290, -1
  loc_15F8D30:               End If
  loc_15F8D43:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F8D4B:               var_E4 = CVar(CLng(7)) 'Long
  loc_15F8D8E:               unk_4D910D.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_15F8DC1:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F8DCA:               Set var_F8 = Me.FGrid
  loc_15F8DE5:             Else
  loc_15F8E56:               Set var_1A0 = Me.FGrid
  loc_15F8E67:               var_14C = CStr(var_1A0.TextMatrix))
  loc_15F8E78:               var_198 = CVar(CLng(8)) And (CDbl(Val(var_14C)) = CDbl(1))
  loc_15F8E9D:               If CBool(var_198) Then
  loc_15F8EA6:                 If (var_AA = &HFF) Then
  loc_15F8EAF:                   Call 0.Method_arg_50 (var_14C, CVar(CLng(Me.FGrid.Row)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_15F8ED9:                   var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_15F8EFE:                   var_118 = Format(Time, "HH:MM")
  loc_15F8F06:                   var_148 = (1 + var_118)
  loc_15F8F0A:                   var_D4 = "- "
  loc_15F8F0F:                   var_164 = (vbNullString & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + ",U_Name=")
  loc_15F8F19:                   var_174 = (Me.FGrid.Row + CVar(var_B0))
  loc_15F8F1E:                   var_B0 = CStr(var_1A0.TextMatrix))
  loc_15F8F4C:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F8F54:                   var_E4 = CVar(CLng(7)) 'Long
  loc_15F8F97:                   unk_4D910D.Execute "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_15F8FC1:                   var_98 = Me.FGrid.Row
  loc_15F8FCA:                   var_C4 = CVar(CLng(var_98)) 'Long
  loc_15F8FE1:                   var_108 = Me.FGrid.TextMatrix)
  loc_15F8FF3:                   var_188 = 0
  loc_15F9024:                   unk_4D910D.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_15F9034:                   var_188 = var_1A0.Item(var_1A0)
  loc_15F903C:                   var_1B4 = var_1B4.Value
  loc_15F9047:                   Proc_6_39_E7C810(vbNullString & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm "), CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm "), var_108, CVar(CLng(7)))
  loc_15F9050:                   var_AC = CInt(vbNullString & Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_15F9081:                   Proc_6_17_EAA2B0(var_98, var_B0, var_AC, var_B0)
  loc_15F9091:                   Proc_6_17_EAA2B0(vbNullString & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), MemVar_1F920C8, var_19C.Fields)
  loc_15F90A1:                   Proc_6_7_F25D88(var_198, MemVar_1F920EC, var_108)
  loc_15F90B9:                   var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F90C1:                   var_210 = CVar(CLng(7)) 'Long
  loc_15F90F4:                   var_14C = CStr((var_AC + 1))
  loc_15F9105:                   var_118 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=") & var_98 
  loc_15F912E:                   var_1D4 = var_118 & ",U_Name=" & MemVar_1F920EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ",U_EntDt=" & var_198 & " Where IsNull(SeqNo,0)=0 And DOCID='" 
  loc_15F9150:                   unk_4D910D.Execute CStr(var_1D4 & CVar(CStr(Me.FGrid.TextMatrix))) & "'"), var_290, -1
  loc_15F918A:                 End If
  loc_15F919D:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F91A5:                 var_E4 = CVar(CLng(7)) 'Long
  loc_15F91E8:                 unk_4D910D.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_15F921B:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F9223:                 var_E4 = CVar(CLng(7)) 'Long
  loc_15F923D:                 var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_15F9268:                 var_9A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15F9271:                 ' Referenced from:   15F9324
  loc_15F9277:                 If (var_9A >= 1) Then
  loc_15F927E:                   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_15F9286:                   var_E4 = CVar(CLng(7)) 'Long
  loc_15F92B1:                   If (CStr(Me.FGrid.TextMatrix)) = var_A0) Then
  loc_15F92B8:                     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_15F92C1:                     Set var_88 = Me.FGrid
  loc_15F92D4:                     var_A2 = &HFF
  loc_15F92D7:                   End If
  loc_15F92DD:                   var_9A = (var_9A - 1)
  loc_15F92E4:                   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_15F92EC:                   var_E4 = CVar(CLng(7)) 'Long
  loc_15F9306:                   var_14C = CStr(Me.FGrid.TextMatrix))
  loc_15F931E:                   If ((var_14C <> var_A0) And (var_A2 = &HFF)) Then
  loc_15F9321:                     GoTo loc_15F9327
  loc_15F9324:                   End If
  loc_15F9324:                   GoTo loc_15F9271
  loc_15F9327:                   ' Referenced from:   15F9321
  loc_15F9327:                 End If
  loc_15F932A:               Else
  loc_15F9330:                 If (var_AA = &HFF) Then
  loc_15F9339:                   Call 0.Method_arg_50 (var_14C, var_E4, var_C4, var_9A, var_A2, FGrid.DispID_10000, var_C4)
  loc_15F9363:                   var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_15F936A:                   var_128 = CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm ") 'String
  loc_15F9390:                   var_148 = (1 + Format(Time, "HH:MM"))
  loc_15F9394:                   var_D4 = "- "
  loc_15F9399:                   var_164 = (MemVar_1F920EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + ",U_Name=")
  loc_15F93A3:                   var_174 = (Format(Time, "HH:MM") & ",U_Name=" & MemVar_1F920EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + CVar(var_B0))
  loc_15F93A8:                   var_B0 = CStr(Format(Time, "HH:MM") & ",U_Name=" & MemVar_1F920EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ",U_EntDt=")
  loc_15F93D6:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F93DE:                   var_E4 = CVar(CLng(7)) 'Long
  loc_15F9403:                   var_118 = Me.FGrid.Row
  loc_15F940C:                   var_138 = CVar(CLng(var_118)) 'Long
  loc_15F9414:                   var_1B0 = CVar(CLng(8)) 'Long
  loc_15F941D:                   Set var_1A0 = Me.FGrid
  loc_15F9423:                   var_128 = var_1A0.TextMatrix)
  loc_15F944E:                   var_154 = "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO="
  loc_15F9469:                   unk_4D910D.Execute var_154 & CStr(var_128) & " And isnull(bill_no,'')=''", var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), -1
  loc_15F94A1:                   var_98 = Me.FGrid.Row
  loc_15F94AA:                   var_C4 = CVar(CLng(var_98)) 'Long
  loc_15F94C1:                   var_108 = Me.FGrid.TextMatrix)
  loc_15F94D3:                   var_188 = 0
  loc_15F9504:                   unk_4D910D.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_15F950C:                   var_19C = var_19C.Fields
  loc_15F9514:                   var_188 = var_1A0.Item(var_1A0)
  loc_15F951C:                   var_1B4 = var_1B4.Value
  loc_15F9527:                   Proc_6_39_E7C810(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), var_128, var_128, var_108, CVar(CLng(7)))
  loc_15F9530:                   var_AC = CInt(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_15F9561:                   Proc_6_17_EAA2B0(var_98, var_B0, var_AC, var_B0)
  loc_15F9571:                   Proc_6_17_EAA2B0(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), MemVar_1F920C8, var_1B4)
  loc_15F9581:                   Proc_6_7_F25D88(var_198, MemVar_1F920EC, var_128)
  loc_15F9599:                   var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F95A1:                   var_210 = CVar(CLng(7)) 'Long
  loc_15F95CF:                   var_280 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F95D7:                   var_2B0 = CVar(CLng(8)) 'Long
  loc_15F960A:                   var_14C = CStr((var_AC + 1))
  loc_15F962B:                   var_164 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=") & var_98 & ",U_Name=" & MemVar_1F920EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_15F964F:                   var_250 = var_164 & ",U_EntDt=" & var_198 & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_15F967A:                   unk_4D910D.Execute CStr(var_250 & "' AND SNO=" & CVar(CStr(Me.FGrid.TextMatrix))) & " And isnull(bill_no,'')=''"), var_330, -1
  loc_15F96C2:                 End If
  loc_15F96D5:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F96DD:                 var_E4 = CVar(CLng(7)) 'Long
  loc_15F96EC:                 var_108 = Me.FGrid.TextMatrix)
  loc_15F9702:                 var_118 = Me.FGrid.Row
  loc_15F970B:                 var_138 = CVar(CLng(var_118)) 'Long
  loc_15F9713:                 var_1B0 = CVar(CLng(8)) 'Long
  loc_15F9722:                 var_128 = Me.FGrid.TextMatrix)
  loc_15F975F:                 var_1FC = "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(var_108) & "' AND SNO=" & CStr(var_128) & " And isnull(bill_no,'')=''"
  loc_15F9768:                 unk_4D910D.Execute var_1FC, var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), -1
  loc_15F9796:               End If
  loc_15F9796:             End If
  loc_15F979C:             unk_4D910D.CommitTrans
  loc_15F97A4:           Else
  loc_15F97B7:             Me.FGrid.Rows = 1
  loc_15F97DD:             var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_1B4, var_128, var_1B0, var_138, var_108))) 'String
  loc_15F97E5:             Set var_F8 = Me.FGrid
  loc_15F9812:             Me.FGrid.FixedRows = 1
  loc_15F981A:           End If
  loc_15F981A:         End If
  loc_15F981A:       End If
  loc_15F981D:     Else
  loc_15F9833:       var_C4 = "No Entries To Delete"
  loc_15F9838:       var_98 = var_C4
  loc_15F983E:       MsgBox(var_98, &H10, "Delete Module", var_118, var_128)
  loc_15F984E:     End If
  loc_15F9852:     Set var_88 = Me.FGrid
  loc_15F9863:     Call Proc_63_38_140C4F4(FGrid.DispID_8001, FGrid.DispID_10000, var_98, var_E4, var_C4)
  loc_15F9868:   End If
  loc_15F9868: End If
  loc_15F9868: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 '104F060
  'Data Table: 4D90FC
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  loc_104EE1F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104EE27: var_C8 = CVar(CLng(7)) 'Long
  loc_104EE87: If (Trim(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 4, 5)) = "REC") Then
  loc_104EE90:   If (KeyCode = 2) Then
  loc_104EE97:     Set var_88 = Me.FGrid
  loc_104EEB6:     Me.FRectGrid.Visible = True
  loc_104EED1:     Me.FRectGrid.Rows = 0
  loc_104EED9:     var_A8 = "Print Receipt"
  loc_104EEE3:     Set var_88 = Me.FRectGrid
  loc_104EEF4:     var_A8 = 0
  loc_104EEFD:     var_C8 = &H12C
  loc_104EF0A:     Set var_88 = Me.FRectGrid
  loc_104EF10:     LateIdCallSt
  loc_104EF1B:     var_A8 = 0
  loc_104EF4A:     Me.FRectGrid.Height = CVar(CDbl(CLng(Me.FRectGrid.RowHeight))))
  loc_104EF59:     var_A8 = 0
  loc_104EF62:     var_C8 = &H5DC
  loc_104EF6F:     Set var_88 = Me.FRectGrid
  loc_104EF75:     LateIdCallSt
  loc_104EF93:     Me.FRectGrid.Width = CVar(CDbl(1510))
  loc_104EF9B:     var_A8 = 0
  loc_104EFBA:     var_C8 = 0
  loc_104F002:     var_10C = CVar((((CDbl(Me.FGrid.Top) + arg_18) + CDbl(CLng(Me.FRectGrid.RowHeight)))) - (CDbl(CLng(Me.FRectGrid.RowHeight))) / CDbl(4)))) 'Single
  loc_104F011:     Me.FRectGrid.Top = var_10C
  loc_104F041:     var_A8 = CVar((CDbl(Me.FGrid.Left) + arg_14)) 'Single
  loc_104F050:     Me.FRectGrid.Left = var_A8
  loc_104F05F:   End If
  loc_104F05F: End If
  loc_104F05F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E5419C
  'Data Table: 4D90FC
  loc_E54180: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E54192:   Me.FRectGrid.Visible = False
  loc_E5419A: End If
  loc_E5419A: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_9 'F3FD44
  'Data Table: 4D90FC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3FC3B: Me.DGChrgPayment.Visible = False
  loc_F3FC5A: If (Me.RecordCount > 0) Then
  loc_F3FC99:   Set var_B4 = Me.Txt
  loc_F3FC9F:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F3FCA7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3FCDA:   var_B0 = Me.Fields.Item("Name")
  loc_F3FCF9:   Set var_B4 = Me.Txt
  loc_F3FCFF:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F3FD07:   var_B8.Text = CStr(var_B0.Value)
  loc_F3FD1D: End If
  loc_F3FD28: Set var_A8 = Me.Txt
  loc_F3FD2E: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB))
  loc_F3FD36: var_B0.SetFocus
  loc_F3FD42: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1C0C8
  'Data Table: 4D90FC
  loc_E1C0BD: Me.Global.Unload Me
  loc_E1C0C5: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64E54
  'Data Table: 4D90FC
  loc_E64E24: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_E64E27:   Call DGChrgPayment_UnknownEvent_9()
  loc_E64E2C: End If
  loc_E64E48: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E64E4B:   Call DGRoomNo_UnknownEvent_9()
  loc_E64E50: End If
  loc_E64E50: Exit Sub
End Sub

Private Sub CmdPrint_UnknownEvent_9 'E7CF58
  'Data Table: 4D90FC
  Dim var_8C As TextBox
  loc_E7CF12: Set var_88 = Me.Txt
  loc_E7CF18: Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_8C)
  loc_E7CF4C: If CBool(Trim(CVar(var_8C.Tag)) <> vbNullString) Then
  loc_E7CF4F:   Call Proc_63_40_ED6848()
  loc_E7CF54: End If
  loc_E7CF54: Exit Sub
End Sub

Public Function MasterFormExitGet() '4DA384
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4DA393
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4DA3A2
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4DA3B1
  mVType = Value
End Sub

Public Function global_60Get() '4DA3C0
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4DA3CF
  global_60 = Value
End Sub

Public Property Get OpenMode() 'E04240
  'Data Table: 4D90FC
  loc_E04239: OpenMode = global_72
End Sub

Public Property Let OpenMode(vNewValue) 'E012D4
  'Data Table: 4D90FC
  loc_E012CE: global_72 = vNewValue
  loc_E012D1: Exit Sub
End Sub

Public Property Get mFolioNo() 'E0EFBC
  'Data Table: 4D90FC
  loc_E0EFB2: var_88 = CStr(global_72)
  loc_E0EFB5: mFolioNo = 
End Sub

Public Property Let mFolioNo(vNewValue) 'E0F004
  'Data Table: 4D90FC
  loc_E0EFFC: global_76 = vNewValue
  loc_E0F000: Exit Sub
End Sub

Public Sub Proc_63_34_10159E8(arg_C) '10159E8
  'Data Table: 4D90FC
  Dim var_9C As Variant
  Dim var_D0 As String
  Dim unk_4D910D As Connection15
  Dim var_F4 As Variant
  Dim var_F8 As Fields15
  Dim var_11E As Integer
  Dim var_AC As Variant
  Dim var_E0 As Byte
  Dim var_F0 As Variant
  loc_101580D: Proc_6_17_EAA2B0(var_AC, MemVar_1F92078, "Select RcptPrinting From Enviro WHERE LOGSITE_CODE=", var_F0, -1)
  loc_1015819: var_D0 = CStr(var_F4 & var_AC)
  loc_1015823: unk_4D910D.Execute var_D0, var_F8, 0
  loc_1015833:  = var_F8.Item()
  loc_1015863: Call 0.Method_arg_A4 (CInt(&HB))
  loc_101586B: var_11E = arg_C
  loc_1015874: If (var_11E = 0) Then
  loc_1015883:   var_F4 = Me.Global.Screen
  loc_10158B4:   If (Screen.ActiveForm.FGrid.rows > 1) Then
  loc_10158BB:     Set var_F4 = (var_11E)
  loc_10158C1:     var_AC = var_AC.FRectGrid.Row
  loc_10158E2:     var_F8 = Me.var_AC.Screen
  loc_10158EA:     var_10C = Screen.ActiveForm
  loc_10158F7:     VarLateMemCallLdRfVar
  loc_1015926:     If CBool(Trim(var_10C.FGrid) <> vbNullString) Then
  loc_101592D:       Set var_F4 = CVar(CLng(var_AC))(7)
  loc_1015933:       var_AC = var_10C.FRectGrid.Row
  loc_101593C:       var_9C = CVar(CLng(var_AC)) 'Long
  loc_1015941:       var_E0 = 7
  loc_1015954:       var_F8 = Me.var_AC.Screen
  loc_1015969:       var_F0 = Screen.ActiveForm.FGrid.TextMatrix
  loc_1015979:       Call 0.Method_arg_50 (var_D0, var_F0)
  loc_1015990:       Proc_146_1_1334068(CStr(var_F0), Proc_6_38_E68A98(CVar(var_F4.Fields)), var_D0)
  loc_10159AE:     End If
  loc_10159AE:   End If
  loc_10159AE: End If
  loc_10159BD: Me.FRectGrid.Visible = False
  loc_10159CC: Call 0.Method_arg_A4 (CInt(0), var_E0)
  loc_10159DE: Me.Me.Unload Me
  loc_10159E6: Exit Sub
End Sub

Public Sub Proc_63_35_E76B74(arg_C) 'E76B74
  'Data Table: 4D90FC
  Dim var_98 As TextBox
  loc_E76B22: Set var_8C = Me.Txt
  loc_E76B28: Call 0.Method_Proc_63_35_E76B748 (var_8E, var_86)
  loc_E76B38: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E76B4E:   Set var_8C = Me.Txt
  loc_E76B54:   Call 0.Method_Proc_63_35_E76B740 (CInt(var_86), var_98)
  loc_E76B5C:   var_98.Enabled = arg_C
  loc_E76B6B: Next var_92 'Byte
  loc_E76B71: Exit Sub
  loc_E76B72: Set var_7C00 = 
End Sub

Public Sub Proc_63_36_ECAFD8
  'Data Table: 4D90FC
  Dim var_98 As TextBox
  loc_ECAF36: Set var_8C = Me.Txt
  loc_ECAF3C: Call 0.Method_Proc_63_36_ECAFD88 (var_8E, var_86)
  loc_ECAF4C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECAF6F:   If (((CInt(var_86) <> &H17) And (CInt(var_86) <> &H18)) And (CInt(var_86) <> &H19)) Then
  loc_ECAF82:     Set var_8C = Me.Txt
  loc_ECAF88:     Call 0.Method_Proc_63_36_ECAFD80 (CInt(var_86), var_98)
  loc_ECAF90:     var_98.Text = vbNullString
  loc_ECAFAC:     Set var_8C = Me.Txt
  loc_ECAFB2:     Call 0.Method_Proc_63_36_ECAFD80 (CInt(var_86), var_98)
  loc_ECAFBA:     var_98.Tag = vbNullString
  loc_ECAFC6:   End If
  loc_ECAFC9: Next var_92 'Byte
  loc_ECAFCF: Call Proc_63_39_13527D8()
  loc_ECAFD4: Exit Sub
End Sub

Public Sub Proc_63_37_EBC6C4
  'Data Table: 4D90FC
  loc_EBC63C: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBC64E:   Me.DGRoomNo.Visible = False
  loc_EBC656: End If
  loc_EBC672: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EBC684:   Me.DGChrgPayment.Visible = False
  loc_EBC68C: End If
  loc_EBC6A8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBC6BA:   Me.FGPoint.Visible = False
  loc_EBC6C2: End If
  loc_EBC6C2: Exit Sub
End Sub

Public Sub Proc_63_38_140C4F4
  'Data Table: 4D90FC
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim unk_4D910D As Connection15
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_8C As Recordset15
  Dim var_D4 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_E8 As Variant
  Dim var_120 As Variant
  Dim var_D0 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_170 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_F0 As MSHFlexGrid
  Dim var_A8 As String
  Dim var_150 As Long
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  loc_140BABE: Set var_A0 = Me.Txt
  loc_140BAC4: Call 0.Method_Proc_63_38_140C4F40 (CInt(&HA), var_A4, var_A8, "Select P.*,Case When D.OutletYN='Y' Then 'Outlet' When P.PlanCharge<>'Yes' And P.Vtype='REV' Then P.Vtype End CType from Paycharge P Left Join Depart D On P.RestCode=D.Code where (P.ContraDocId is NULL or P.Contradocid='') and P.FolionoDocid='")
  loc_140BACC: var_D0 = var_A4.Tag
  loc_140BAD5: var_AC = -1 & var_A8
  loc_140BAE5: unk_4D910D.Execute var_AC & "' Order By P.VDate,P.VTIME,P.VNO,P.SNO", var_D4, 
  loc_140BAF0: Set var_8C = var_D4
  loc_140BB1F: If (Me.Recordset15.RecordCount = 0) Then
  loc_140BB35:   Me.FGrid.Rows = 2
  loc_140BB3D:   Exit Sub
  loc_140BB3E: End If
  loc_140BB55: var_C0 = CVar((var_8C.RecordCount + 2)) 'Long
  loc_140BB64: Me.FGrid.Rows = 2
  loc_140BB79: Set var_A0 = Me.FGrid
  loc_140BB7F: var_A0.Row = 1
  loc_140BB87: ' Referenced from: 140C33E
  loc_140BB99: If Not(Me.var_A0.EOF) Then
  loc_140BBA0:   Set var_F0 = Me.FGrid
  loc_140BBAD:   var_100 = Me.FGrid.Row
  loc_140BBB6:   var_E8 = CVar(CLng(var_100)) 'Long
  loc_140BBEE:   var_140 = CVar(Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("VDate")), CVar(CLng(1)))) 'String
  loc_140BBF5:   LateIdCallSt
  loc_140BC17:   var_D0 = Me.FGrid.Row
  loc_140BC20:   var_E8 = CVar(CLng(var_D0)) 'Long
  loc_140BC28:   var_120 = CVar(CLng(2)) 'Long
  loc_140BC5B:   var_140 = CVar(CStr(Me.var_D0.Fields.Item("Comments").Value)) 'String
  loc_140BC62:   LateIdCallSt
  loc_140BCA5:   var_160 = Me.FGrid.Row
  loc_140BCAE:   var_110 = CVar(CLng(var_160)) 'Long
  loc_140BCB6:   var_130 = CVar(CLng(3)) 'Long
  loc_140BCE3:   var_170 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_140BCEA:   LateIdCallSt
  loc_140BD2F:   var_160 = Me.FGrid.Row
  loc_140BD54:   var_100 = "0.00"
  loc_140BD74:   LateIdCallSt
  loc_140BDC0:   Proc_6_39_E7C810(var_100, CVar(Me.var_160.Fields.Item("AmtDr")), CVar(var_94), var_F0, CVar(CStr(Format(CVar(Me.var_160.Fields.Item("AmtCr")), var_100))), 1, 1)
  loc_140BDC8:   var_140 = (CVar(CLng(4)) + var_100)
  loc_140BDCD:   var_94 = CSng(Format(CVar(Me.var_160.Fields.Item("AmtCr")), var_100))
  loc_140BE0C:   Proc_6_39_E7C810(var_100, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_160)))
  loc_140BE14:   var_140 = (var_F0 + var_100)
  loc_140BE19:   var_9C = CSng(Format(CVar(Me.var_160.Fields.Item("AmtCr")), var_100))
  loc_140BE3B:   var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140BE43:   var_130 = CVar(CLng(5)) 'Long
  loc_140BE65:   var_D0 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_140BE75:   var_170 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_140BE7C:   LateIdCallSt
  loc_140BEA0:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_140BEB6:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140BEBE:     var_110 = CVar(CLng(6)) 'Long
  loc_140BEC3:     var_130 = "Dr"
  loc_140BECC:     LateIdCallSt
  loc_140BEDD:   Else
  loc_140BEE9:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_140BEFF:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140BF07:       var_110 = CVar(CLng(6)) 'Long
  loc_140BF0C:       var_130 = "Cr"
  loc_140BF15:       LateIdCallSt
  loc_140BF26:     Else
  loc_140BF39:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140BF41:       var_110 = CVar(CLng(6)) 'Long
  loc_140BF46:       var_130 = vbNullString
  loc_140BF4F:       LateIdCallSt
  loc_140BF5D:     End If
  loc_140BF5D:   End If
  loc_140BF67:   var_D0 = Me.FGrid.Row
  loc_140BF70:   var_E8 = CVar(CLng(var_D0)) 'Long
  loc_140BF78:   var_120 = CVar(CLng(7)) 'Long
  loc_140BFAB:   var_140 = CVar(CStr(Me.var_D0.Fields.Item("DocID").Value)) 'String
  loc_140BFB2:   LateIdCallSt
  loc_140BFD6:   var_D0 = Me.FGrid.Row
  loc_140BFDF:   var_E8 = CVar(CLng(var_D0)) 'Long
  loc_140BFE7:   var_120 = CVar(CLng(8)) 'Long
  loc_140C01A:   var_140 = CVar(CStr(Me.var_D0.Fields.Item("SNo").Value)) 'String
  loc_140C021:   LateIdCallSt
  loc_140C045:   var_100 = Me.FGrid.Row
  loc_140C086:   var_140 = CVar(Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_100)), var_F0, var_140, CVar(CLng(9)), CVar(CLng(var_100)))) 'String
  loc_140C08D:   LateIdCallSt
  loc_140C0AF:   var_100 = Me.FGrid.Row
  loc_140C0F0:   var_140 = CVar(Proc_6_38_E68A98(CVar(Me.var_100.Fields.Item("CType")), CVar(CLng(&HA)), CVar(CLng(var_100)), var_F0, var_140, var_F0)) 'String
  loc_140C0F7:   LateIdCallSt
  loc_140C138:   Proc_6_39_E7C810(var_100, CVar(Me.Recordset15.Fields.Item("AmtCr")), var_F0, var_140, var_140)
  loc_140C152:   If (var_100 > 0) Then
  loc_140C17A:     For var_184 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_86 = var_184 'Integer
  loc_140C18C:       var_F0.Col = CVar(CLng(var_86))
  loc_140C1A7:       var_F0.CellBackColor = CVar(RGB(250, 150, 250))
  loc_140C1AF:     Next var_184 'Integer
  loc_140C1B7:   Else
  loc_140C1F3:     If (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CType"))) = "Outlet") Then
  loc_140C21B:       For var_188 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_86 = var_188 'Integer
  loc_140C22D:         var_F0.Col = CVar(CLng(var_86))
  loc_140C248:         var_F0.CellBackColor = CVar(RGB(150, 250, 250))
  loc_140C250:       Next var_188 'Integer
  loc_140C258:     Else
  loc_140C294:       If (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CType"))) = "REV") Then
  loc_140C2BC:         For var_18C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):     var_86 = var_18C 'Integer
  loc_140C2CE:           var_F0.Col = CVar(CLng(var_86))
  loc_140C2E9:           var_F0.CellBackColor = CVar(RGB(250, 250, 150))
  loc_140C2F1:         Next var_18C 'Integer
  loc_140C2F6:       End If
  loc_140C2F6:     End If
  loc_140C2F6:   End If
  loc_140C2F8:   Set var_F0 = Nothing 
  loc_140C315:   var_C0 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_140C31E:   Set var_A4 = Me.FGrid
  loc_140C324:   var_A4.Row = CVar(RGB(250, 250, 150))
  loc_140C339:   Me.var_A4.MoveNext
  loc_140C33E:   GoTo loc_140BB87
  loc_140C341: End If
  loc_140C354: Me.FGrid.FixedRows = 1
  loc_140C360: Set var_190 = Me.Fgrid1
  loc_140C363: var_110 = 0
  loc_140C36F: var_130 = CVar(CLng(1)) 'Long
  loc_140C39D: var_140 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_140C3A4: LateIdCallSt
  loc_140C3B5: var_110 = 0
  loc_140C3C1: var_130 = CVar(CLng(2)) 'Long
  loc_140C3EF: var_140 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_140C3F6: LateIdCallSt
  loc_140C407: var_110 = 0
  loc_140C413: var_130 = CVar(CLng(3)) 'Long
  loc_140C435: var_D0 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_140C445: var_160 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_140C44C: LateIdCallSt
  loc_140C45F: var_150 = 0
  loc_140C46B: var_1A0 = CVar(CLng(4)) 'Long
  loc_140C492: var_C0 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_140C4B8: var_120 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_140C4C8: var_1C0 = CVar(CStr(IIf(CVar(CLng(&HA)), "Dr", IIf(var_9C, "Cr", vbNullString)))) 'String
  loc_140C4CF: LateIdCallSt
  loc_140C4EC: Set var_190 = Nothing 
  loc_140C4F0: Exit Sub
End Sub

Public Sub Proc_63_39_13527D8
  'Data Table: 4D90FC
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_1351FB0: Set var_90 = Me.FGrid
  loc_1351FC6: Me.FGrid.Rows = 1
  loc_1351FE2: global_64 = CStr(CLng(var_90.BackColor))
  loc_1351FF8: var_90.Cols = &HB
  loc_1351FFD: var_A0 = 0
  loc_1352009: var_D8 = CVar(CLng(0)) 'Long
  loc_135200E: var_F8 = "SNo"
  loc_1352017: LateIdCallSt
  loc_1352022: var_A0 = CVar(CLng(0)) 'Long
  loc_1352027: var_D8 = 0
  loc_1352033: LateIdCallSt
  loc_135203B: var_A0 = 0
  loc_1352047: var_D8 = CVar(CLng(1)) 'Long
  loc_135204C: var_F8 = "Date"
  loc_1352055: LateIdCallSt
  loc_1352060: var_A0 = CVar(CLng(1)) 'Long
  loc_135206B: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352072: LateIdCallSt
  loc_135207D: var_A0 = CVar(CLng(1)) 'Long
  loc_1352088: var_D8 = CVar(CInt(1)) 'Integer
  loc_135208F: LateIdCallSt
  loc_135209A: var_A0 = CVar(CLng(1)) 'Long
  loc_135209F: var_D8 = &H4B0
  loc_13520AB: LateIdCallSt
  loc_13520B3: var_A0 = 0
  loc_13520BF: var_D8 = CVar(CLng(2)) 'Long
  loc_13520C4: var_F8 = "Particulars"
  loc_13520CD: LateIdCallSt
  loc_13520D8: var_A0 = CVar(CLng(2)) 'Long
  loc_13520E3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13520EA: LateIdCallSt
  loc_13520F5: var_A0 = CVar(CLng(2)) 'Long
  loc_1352100: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352107: LateIdCallSt
  loc_1352112: var_A0 = CVar(CLng(2)) 'Long
  loc_1352117: var_D8 = &HBB8
  loc_1352123: LateIdCallSt
  loc_135212B: var_A0 = 0
  loc_1352137: var_D8 = CVar(CLng(3)) 'Long
  loc_135213C: var_F8 = "Debit"
  loc_1352145: LateIdCallSt
  loc_1352150: var_A0 = CVar(CLng(3)) 'Long
  loc_135215B: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352162: LateIdCallSt
  loc_135216D: var_A0 = CVar(CLng(3)) 'Long
  loc_1352178: var_D8 = CVar(CInt(7)) 'Integer
  loc_135217F: LateIdCallSt
  loc_135218A: var_A0 = CVar(CLng(3)) 'Long
  loc_135218F: var_D8 = &H3E8
  loc_135219B: LateIdCallSt
  loc_13521A3: var_A0 = 0
  loc_13521AF: var_D8 = CVar(CLng(4)) 'Long
  loc_13521B4: var_F8 = "Credit"
  loc_13521BD: LateIdCallSt
  loc_13521C8: var_A0 = CVar(CLng(4)) 'Long
  loc_13521D3: var_D8 = CVar(CInt(7)) 'Integer
  loc_13521DA: LateIdCallSt
  loc_13521E5: var_A0 = CVar(CLng(4)) 'Long
  loc_13521F0: var_D8 = CVar(CInt(7)) 'Integer
  loc_13521F7: LateIdCallSt
  loc_1352202: var_A0 = CVar(CLng(4)) 'Long
  loc_1352207: var_D8 = &H3E8
  loc_1352213: LateIdCallSt
  loc_135221B: var_A0 = 0
  loc_1352227: var_D8 = CVar(CLng(5)) 'Long
  loc_135222C: var_F8 = "Balance"
  loc_1352235: LateIdCallSt
  loc_1352240: var_A0 = CVar(CLng(5)) 'Long
  loc_135224B: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352252: LateIdCallSt
  loc_135225D: var_A0 = CVar(CLng(5)) 'Long
  loc_1352268: var_D8 = CVar(CInt(7)) 'Integer
  loc_135226F: LateIdCallSt
  loc_135227A: var_A0 = CVar(CLng(5)) 'Long
  loc_135227F: var_D8 = &H3E8
  loc_135228B: LateIdCallSt
  loc_1352293: var_A0 = 0
  loc_135229F: var_D8 = CVar(CLng(6)) 'Long
  loc_13522A4: var_F8 = vbNullString
  loc_13522AD: LateIdCallSt
  loc_13522B8: var_A0 = CVar(CLng(6)) 'Long
  loc_13522C3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13522CA: LateIdCallSt
  loc_13522D5: var_A0 = CVar(CLng(6)) 'Long
  loc_13522E0: var_D8 = CVar(CInt(1)) 'Integer
  loc_13522E7: LateIdCallSt
  loc_13522F2: var_A0 = CVar(CLng(6)) 'Long
  loc_13522F7: var_D8 = &H12C
  loc_1352303: LateIdCallSt
  loc_135230B: var_A0 = 0
  loc_1352317: var_D8 = CVar(CLng(7)) 'Long
  loc_135231C: var_F8 = vbNullString
  loc_1352325: LateIdCallSt
  loc_1352330: var_A0 = CVar(CLng(7)) 'Long
  loc_135233B: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352342: LateIdCallSt
  loc_135234D: var_A0 = CVar(CLng(7)) 'Long
  loc_1352358: var_D8 = CVar(CInt(1)) 'Integer
  loc_135235F: LateIdCallSt
  loc_135236A: var_A0 = CVar(CLng(7)) 'Long
  loc_135236F: var_D8 = 0
  loc_135237B: LateIdCallSt
  loc_1352383: var_A0 = 0
  loc_135238F: var_D8 = CVar(CLng(8)) 'Long
  loc_1352394: var_F8 = vbNullString
  loc_135239D: LateIdCallSt
  loc_13523A8: var_A0 = CVar(CLng(8)) 'Long
  loc_13523B3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13523BA: LateIdCallSt
  loc_13523C5: var_A0 = CVar(CLng(8)) 'Long
  loc_13523D0: var_D8 = CVar(CInt(1)) 'Integer
  loc_13523D7: LateIdCallSt
  loc_13523E2: var_A0 = CVar(CLng(8)) 'Long
  loc_13523E7: var_D8 = 0
  loc_13523F3: LateIdCallSt
  loc_13523FB: var_A0 = 0
  loc_1352407: var_D8 = CVar(CLng(9)) 'Long
  loc_135240C: var_F8 = "User"
  loc_1352415: LateIdCallSt
  loc_1352420: var_A0 = CVar(CLng(9)) 'Long
  loc_135242B: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352432: LateIdCallSt
  loc_135243D: var_A0 = CVar(CLng(9)) 'Long
  loc_1352448: var_D8 = CVar(CInt(1)) 'Integer
  loc_135244F: LateIdCallSt
  loc_135245A: var_A0 = CVar(CLng(9)) 'Long
  loc_135245F: var_D8 = &H2EE
  loc_135246B: LateIdCallSt
  loc_1352473: var_A0 = 0
  loc_135247F: var_D8 = CVar(CLng(&HA)) 'Long
  loc_1352484: var_F8 = vbNullString
  loc_135248D: LateIdCallSt
  loc_1352498: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13524A3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13524AA: LateIdCallSt
  loc_13524B5: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13524C0: var_D8 = CVar(CInt(1)) 'Integer
  loc_13524C7: LateIdCallSt
  loc_13524D2: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13524D7: var_D8 = 0
  loc_13524E3: LateIdCallSt
  loc_13524EB: var_A0 = vbNullString
  loc_13524F5: Set var_B4 = Me.FGrid
  loc_1352519: Me.FGrid.FixedRows = 1
  loc_1352523: Set var_90 = Nothing 
  loc_135252B: Set var_10C = Me.Fgrid1
  loc_1352541: Me.Fgrid1.Rows = 1
  loc_135255D: global_64 = CStr(CLng(var_10C.BackColor))
  loc_1352573: var_10C.Cols = 5
  loc_1352578: var_A0 = 0
  loc_1352584: var_D8 = CVar(CLng(0)) 'Long
  loc_1352589: var_F8 = "Total :"
  loc_1352592: LateIdCallSt
  loc_135259D: var_A0 = CVar(CLng(0)) 'Long
  loc_13525A8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13525AF: LateIdCallSt
  loc_13525BA: var_A0 = CVar(CLng(0)) 'Long
  loc_13525C5: var_D8 = CVar(CInt(1)) 'Integer
  loc_13525CC: LateIdCallSt
  loc_13525D7: var_A0 = CVar(CLng(0)) 'Long
  loc_13525DC: var_D8 = &H109A
  loc_13525E8: LateIdCallSt
  loc_13525F0: var_A0 = 0
  loc_13525FC: var_D8 = CVar(CLng(1)) 'Long
  loc_1352601: var_F8 = vbNullString
  loc_135260A: LateIdCallSt
  loc_1352615: var_A0 = CVar(CLng(1)) 'Long
  loc_1352620: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352627: LateIdCallSt
  loc_1352632: var_A0 = CVar(CLng(1)) 'Long
  loc_135263D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352644: LateIdCallSt
  loc_135264F: var_A0 = CVar(CLng(1)) 'Long
  loc_1352654: var_D8 = &H3E8
  loc_1352660: LateIdCallSt
  loc_1352668: var_A0 = 0
  loc_1352674: var_D8 = CVar(CLng(2)) 'Long
  loc_1352679: var_F8 = vbNullString
  loc_1352682: LateIdCallSt
  loc_135268D: var_A0 = CVar(CLng(2)) 'Long
  loc_1352698: var_D8 = CVar(CInt(7)) 'Integer
  loc_135269F: LateIdCallSt
  loc_13526AA: var_A0 = CVar(CLng(2)) 'Long
  loc_13526B5: var_D8 = CVar(CInt(7)) 'Integer
  loc_13526BC: LateIdCallSt
  loc_13526C7: var_A0 = CVar(CLng(2)) 'Long
  loc_13526CC: var_D8 = &H3E8
  loc_13526D8: LateIdCallSt
  loc_13526E0: var_A0 = 0
  loc_13526EC: var_D8 = CVar(CLng(3)) 'Long
  loc_13526F1: var_F8 = vbNullString
  loc_13526FA: LateIdCallSt
  loc_1352705: var_A0 = CVar(CLng(3)) 'Long
  loc_1352710: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352717: LateIdCallSt
  loc_1352722: var_A0 = CVar(CLng(3)) 'Long
  loc_135272D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352734: LateIdCallSt
  loc_135273F: var_A0 = CVar(CLng(3)) 'Long
  loc_1352744: var_D8 = &H3E8
  loc_1352750: LateIdCallSt
  loc_1352758: var_A0 = 0
  loc_1352764: var_D8 = CVar(CLng(4)) 'Long
  loc_1352769: var_F8 = vbNullString
  loc_1352772: LateIdCallSt
  loc_135277D: var_A0 = CVar(CLng(4)) 'Long
  loc_1352788: var_D8 = CVar(CInt(1)) 'Integer
  loc_135278F: LateIdCallSt
  loc_135279A: var_A0 = CVar(CLng(4)) 'Long
  loc_13527A5: var_D8 = CVar(CInt(1)) 'Integer
  loc_13527AC: LateIdCallSt
  loc_13527B7: var_A0 = CVar(CLng(4)) 'Long
  loc_13527BC: var_D8 = &H12C
  loc_13527C8: LateIdCallSt
  loc_13527D2: Set var_10C = Nothing 
  loc_13527D6: Exit Sub
End Sub

Public Sub Proc_63_40_ED6848
  'Data Table: 4D90FC
  Dim unk_4D910D As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  loc_ED67C0: On Error Goto loc_ED6841
  loc_ED67EC: Proc_6_17_EAA2B0(var_CC, MemVar_1F92078, "Select ReservationPrinting From Enviro WHERE LOGSITE_CODE=", var_110, -1)
  loc_ED6802: unk_4D910D.Execute CStr(var_114 & var_CC), var_118, 0
  loc_ED6812:  = var_118.Item()
  loc_ED6823: var_AC = Proc_6_38_E68A98(CVar(var_114.Fields))
  loc_ED683B: Call Proc_63_41_13F8624()
  loc_ED6840: Exit Sub
  loc_ED6841: ' Referenced from: ED67C0
  loc_ED6841: Proc_6_60_E62BC4()
  loc_ED6846: Exit Sub
End Sub

Public Sub Proc_63_41_13F8624
  'Data Table: 4D90FC
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim var_AC As String
  Dim unk_4D910D As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_124 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_148 As TextBox
  Dim var_110 As String
  Dim var_A0 As Variant
  loc_13F7C2C: On Error Goto loc_13F8619
  loc_13F7C4B: Call 0.Method_Proc_63_41_13F86240 (CInt(&HA), var_A4, var_A8)
  loc_13F7C53: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.DocId) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='" = var_A4.Tag
  loc_13F7C8A: unk_4D910D.Execute &HFF & var_A8 & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_13F7C95: Set var_90 = Me.Txt
  loc_13F7CA4: var_D0 = var_90.RecordCount
  loc_13F7CB2: If (var_D0 <= 0) Then
  loc_13F7CBB:   Call 0.Method_arg_50 (var_A8)
  loc_13F7CDC:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_13F7CEE:   var_8A = 0
  loc_13F7CF1:   Exit Sub
  loc_13F7CF2: End If
  loc_13F7CF5: var_94 = "FolioPrint"
  loc_13F7CF8: var_BC = "Guest Folio"
  loc_13F7D0F: var_98 = CStr(Ucase(var_BC))
  loc_13F7D1F: If (var_8A = 0) Then
  loc_13F7D22:   Exit Sub
  loc_13F7D23: End If
  loc_13F7D47: Set var_A0 = var_90 
  loc_13F7D4E: CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\" & var_94 & ".ttx", &HFF)
  loc_13F7D79: var_A8 = MemVar_1F920B4 & "\"
  loc_13F7D80: var_AC = var_A8 & var_94
  loc_13F7D90: Call 0.Method_arg_1C (var_AC & ".RPT", var_BC, var_A0)
  loc_13F7D9B: MemVar_1F921E4 = var_A0
  loc_13F7DC4: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_13F7DCC: Call 0.Method_arg_2C (var_110, var_8A)
  loc_13F7DDA: Call 0.Method_arg_150 (var_A0)
  loc_13F7DE4: Set var_90 = Nothing
  loc_13F7DF8: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_13F7E00: Call 0.Method_arg_24 (var_9A)
  loc_13F7E0C: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_13F7E25:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_13F7E2D:   Call 0.Method_arg_20 (var_A4)
  loc_13F7E35:   Call 0.Method_arg_30 (var_A8)
  loc_13F7E4B:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_13F7E7B:   If (var_13C = Ucase("ChkOutDt")) Then
  loc_13F7E8E:     Set var_A0 = Me.Txt
  loc_13F7E94:     Call 0.Method_Proc_63_41_13F86240 (CInt(&H16), var_A4)
  loc_13F7ECC:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F7ED4:     Call 0.Method_arg_20 (var_148)
  loc_13F7EDC:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F7EFB:   Else
  loc_13F7F1D:     If (var_13C = Ucase("DepDt")) Then
  loc_13F7F30:       Set var_A0 = Me.Txt
  loc_13F7F36:       Call 0.Method_Proc_63_41_13F86240 (CInt(6), var_A4)
  loc_13F7F6E:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F7F76:       Call 0.Method_arg_20 (var_148)
  loc_13F7F7E:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F7F9D:     Else
  loc_13F7FBF:       If (var_13C = Ucase("DepTm")) Then
  loc_13F7FD5:         Set var_A0 = Me.Txt
  loc_13F7FDB:         Call 0.Method_Proc_63_41_13F86240 (CInt(4), var_A4)
  loc_13F7FEF:         var_124 = var_A4.Text & ":"
  loc_13F8000:         Set var_144 = Me.Txt
  loc_13F8006:         Call 0.Method_Proc_63_41_13F86240 (CInt(5), var_148, var_AC)
  loc_13F800E:         var_124 = var_148.Text
  loc_13F8046:         Call 0.Method_arg_90 (var_14C, CLng(var_9A))
  loc_13F804E:         Call 0.Method_arg_20 (var_150)
  loc_13F8056:         Call 0.Method_arg_38 (CStr(Trim(CVar("'" & var_AC)) & "'"))
  loc_13F8083:       Else
  loc_13F80A5:         If (var_13C = Ucase("ChkInDt")) Then
  loc_13F80B8:           Set var_A0 = Me.Txt
  loc_13F80BE:           Call 0.Method_Proc_63_41_13F86240 (CInt(1), var_A4)
  loc_13F80F6:           Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F80FE:           Call 0.Method_arg_20 (var_148)
  loc_13F8106:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F8125:         Else
  loc_13F8147:           If (var_13C = Ucase("ChkInTm")) Then
  loc_13F815D:             Set var_A0 = Me.Txt
  loc_13F8163:             Call 0.Method_Proc_63_41_13F86240 (CInt(2), var_A4)
  loc_13F8177:             var_124 = var_A4.Text & ":"
  loc_13F8188:             Set var_144 = Me.Txt
  loc_13F818E:             Call 0.Method_Proc_63_41_13F86240 (CInt(3), var_148, var_AC)
  loc_13F8196:             var_124 = var_148.Text
  loc_13F81CE:             Call 0.Method_arg_90 (var_14C, CLng(var_9A))
  loc_13F81D6:             Call 0.Method_arg_20 (var_150)
  loc_13F81DE:             Call 0.Method_arg_38 (CStr(Trim(CVar("'" & var_AC)) & "'"))
  loc_13F820B:           Else
  loc_13F822D:             If (var_13C = Ucase("DepDt")) Then
  loc_13F8240:               Set var_A0 = Me.Txt
  loc_13F8246:               Call 0.Method_Proc_63_41_13F86240 (CInt(6), var_A4)
  loc_13F827E:               Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F8286:               Call 0.Method_arg_20 (var_148)
  loc_13F828E:               Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F82AD:             Else
  loc_13F82CF:               If (var_13C = Ucase("DepTm")) Then
  loc_13F82E5:                 Set var_A0 = Me.Txt
  loc_13F82EB:                 Call 0.Method_Proc_63_41_13F86240 (CInt(4), var_A4)
  loc_13F82FF:                 var_124 = var_A4.Text & ":"
  loc_13F8310:                 Set var_144 = Me.Txt
  loc_13F8316:                 Call 0.Method_Proc_63_41_13F86240 (CInt(5), var_148, var_AC)
  loc_13F831E:                 var_124 = var_148.Text
  loc_13F8356:                 Call 0.Method_arg_90 (var_14C, CLng(var_9A))
  loc_13F835E:                 Call 0.Method_arg_20 (var_150)
  loc_13F8366:                 Call 0.Method_arg_38 (CStr(Trim(CVar("'" & var_AC)) & "'"))
  loc_13F8393:               Else
  loc_13F83B5:                 If (var_13C = Ucase("Company")) Then
  loc_13F83C8:                   Set var_A0 = Me.Txt
  loc_13F83CE:                   Call 0.Method_Proc_63_41_13F86240 (CInt(8), var_A4)
  loc_13F8406:                   Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F840E:                   Call 0.Method_arg_20 (var_148)
  loc_13F8416:                   Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F8435:                 Else
  loc_13F8457:                   If (var_13C = Ucase("AdltChld")) Then
  loc_13F846A:                     Set var_A0 = Me.Txt
  loc_13F8470:                     Call 0.Method_Proc_63_41_13F86240 (CInt(&HC), var_A4)
  loc_13F849F:                     Set var_144 = Me.Txt
  loc_13F84A5:                     Call 0.Method_Proc_63_41_13F86240 (CInt(&HD), var_148)
  loc_13F84DD:                     Call 0.Method_arg_90 (var_14C, CLng(var_9A))
  loc_13F84E5:                     Call 0.Method_arg_20 (var_150)
  loc_13F84ED:                     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_13F8516:                   Else
  loc_13F8538:                     If (var_13C = Ucase("RoomNo")) Then
  loc_13F854B:                       Set var_A0 = Me.Txt
  loc_13F8551:                       Call 0.Method_Proc_63_41_13F86240 (CInt(0), var_A4)
  loc_13F8589:                       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F8591:                       Call 0.Method_arg_20 (var_148)
  loc_13F8599:                       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F85B5:                     End If
  loc_13F85B5:                   End If
  loc_13F85B5:                 End If
  loc_13F85B5:               End If
  loc_13F85B5:             End If
  loc_13F85B5:           End If
  loc_13F85B5:         End If
  loc_13F85B5:       End If
  loc_13F85B5:     End If
  loc_13F85B5:   End If
  loc_13F85B8: Next var_12C 'Integer
  loc_13F85C2: Set var_A4 = Nothing
  loc_13F85D8: Set var_A0 = MemVar_1F921E4 
  loc_13F85E4: Proc_6_99_1483714(var_A0, 0, var_98)
  loc_13F85EF: MemVar_1F921E4 = var_A0
  loc_13F8607: Me.Global.Unload Me
  loc_13F8614: MemVar_1F921E4 = Nothing
  loc_13F8618: Exit Sub
  loc_13F8619: ' Referenced from: 13F7C2C
  loc_13F861E: Proc_6_60_E62BC4(0, &HFF)
  loc_13F8623: Exit Sub
End Sub
