VERSION 5.00
Begin VB.Form fdPrintScreen
  Caption = "Guest Charges Summary"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdPrintScreen.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10185
  ClientHeight = 7425
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6975
    Width = 10185
    Height = 450
    Visible = 0   'False
    TabIndex = 52
  End
  Begin PictureBox Picture2
    Picture = "fdPrintScreen.frx":442
    Left = 19770
    Top = 6450
    Width = 315
    Height = 270
    Visible = 0   'False
    TabIndex = 51
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGRoomNo
    Left = 7065
    Top = 1650
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
    Left = 1290
    Top = 3945
    Width = 3825
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
    Left = 1290
    Top = 4260
    Width = 3825
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
    Left = 1290
    Top = 4575
    Width = 3825
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
    Left = 13575
    Top = 7260
    Width = 4980
    Height = 3090
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSHFlexGrid Fgrid1
    Left = 5595
    Top = 5130
    Width = 7785
    Height = 285
    TabIndex = 47
  End
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1425
    Top = 1575
    Width = 1170
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
    Left = 3075
    Top = 1575
    Width = 390
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
    Left = 2625
    Top = 1575
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
    Left = 1275
    Top = 5205
    Width = 3825
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
    Left = 1275
    Top = 5520
    Width = 3825
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
    Left = 1275
    Top = 5835
    Width = 3825
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
    Left = 1425
    Top = 1890
    Width = 1170
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
    Left = 3075
    Top = 1890
    Width = 390
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
    Left = 2610
    Top = 1890
    Width = 435
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
    Left = 18735
    Top = 6465
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
    Left = 1425
    Top = 945
    Width = 1110
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
    Left = 2625
    Top = 1260
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
    Left = 3075
    Top = 1260
    Width = 390
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
    Left = 1275
    Top = 6150
    Width = 3825
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
    Left = 1290
    Top = 4890
    Width = 3825
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
    Left = 1290
    Top = 3630
    Width = 3825
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
    Left = 1425
    Top = 1260
    Width = 1170
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
    Top = 585
    Width = 1140
    Height = 285
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
    Left = 1425
    Top = 2835
    Width = 1245
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
    ForeColor = &HC00000&
    Left = 19170
    Top = 7245
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
    Left = 1425
    Top = 2520
    Width = 630
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
    Left = 2085
    Top = 2520
    Width = 600
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
    Left = 1425
    Top = 2205
    Width = 3090
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
    Left = 5625
    Top = 960
    Width = 8790
    Height = 4185
    TabIndex = 25
  End
  Begin MSFlexGrid FGPoint
    Left = 13185
    Top = 1065
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 50
  End
  Begin BtnEnh CmdExit
    Left = 5775
    Top = 6690
    Width = 1275
    Height = 1050
    TabIndex = 54
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 53
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
    Caption = "Charges Summary"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 5625
    Top = 540
    Width = 7365
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
    Left = 60
    Top = 3960
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
    Left = 60
    Top = 1590
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
    Left = 60
    Top = 5850
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
    Left = 60
    Top = 5535
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
    Left = 60
    Top = 5220
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
    Caption = "Exp.Dep. Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 60
    Top = 1905
    Width = 1350
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
    Left = 18645
    Top = 6705
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
    Left = 45
    Top = 3210
    Width = 5100
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
    Caption = "Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 60
    Top = 960
    Width = 795
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
    Left = 60
    Top = 6165
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
    Left = 60
    Top = 4905
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
    Left = 60
    Top = 3645
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
    Left = 3495
    Top = 1260
    Width = 1320
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
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 60
    Top = 1275
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
    Left = 60
    Top = 2220
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
    Left = 60
    Top = 2850
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
    Left = 19335
    Top = 7590
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
    Left = 60
    Top = 2535
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
    Caption = "Room Details for Room No."
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 45
    Top = 540
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

Attribute VB_Name = "fdPrintScreen"

Private MasterFormExit As Integer
Private global_68 As Long

Private Sub FGPoint_UnknownEvent_9 'E6450C
  'Data Table: 475350
  loc_E644DC: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_E644DF:   Call DGChrgPayment_UnknownEvent_9()
  loc_E644E4: End If
  loc_E64500: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E64503:   Call DGRoomNo_UnknownEvent_9()
  loc_E64508: End If
  loc_E64508: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1BCEC
  'Data Table: 475350
  loc_E1BCE1: Me.Global.Unload Me
  loc_E1BCE9: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1051E34
  'Data Table: 475350
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  Dim var_2701 As Double
  loc_1051BE2: Set var_88 = Me.Txt
  loc_1051BE8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1051BF6: Proc_6_74_E226B0(var_8C)
  loc_1051C05: var_92 = Index
  loc_1051C10: If (var_92 = CInt(0)) Then
  loc_1051C2A:   If (Me.RecordCount > 0) Then
  loc_1051C38:     Set var_8C = Me.FGPoint
  loc_1051C50:     Proc_6_137_1193554(Me.DGRoomNo, global_92, Index)
  loc_1051C5E:   End If
  loc_1051CAC:   Set var_88 = Me.Txt
  loc_1051CB2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1051CBA:   var_8C = var_8C.Text
  loc_1051CE0:   If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), var_92) = vbNullString)) Then
  loc_1051CE3:     Exit Sub
  loc_1051CE4:   End If
  loc_1051CF1:   Set var_88 = Me.Txt
  loc_1051CF7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1051CFF:   var_A0 = var_8C.Text
  loc_1051D11:   var_C4 = "RoomNo"
  loc_1051D28:   var_C8 = Me.Fields.Item(var_C4)
  loc_1051D4C:   If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_1051D55:     Me.MoveFirst
  loc_1051D78:     Set var_88 = Me.Txt
  loc_1051D7E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_1051D86:     0 = var_8C.Text
  loc_1051D9F:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_1051DB4:   End If
  loc_1051DB4: End If
  loc_1051DC3: Set var_88 = Me.Txt
  loc_1051DC9: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1051DD1: var_8C.SelStart = 0
  loc_1051DEA: Set var_88 = Me.Txt
  loc_1051DF0: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1051E0B: Set var_90 = Me.Txt
  loc_1051E11: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1051E19: var_C8.SelLength = Len(var_8C.Text)
  loc_1051E2C: Call Proc_172_26_EBC50C()
  loc_1051E31: Exit Sub
  loc_1051E32: var_2701 = 
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC7270
  'Data Table: 475350
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_FC70CF: var_88 = Shift
  loc_FC70DC: If (CLng(Shift) = &H1B) Then
  loc_FC70DF:   Call Proc_172_26_EBC50C(var_88)
  loc_FC70E4:   Exit Sub
  loc_FC70E5: End If
  loc_FC70F3: If (KeyCode = CInt(0)) Then
  loc_FC7113:   Set var_A4 = Me.FGPoint
  loc_FC711E:   Set var_A0 = Nothing
  loc_FC7150:   Proc_6_69_134A198(Me.DGRoomNo, Me.Txt, CInt(0), global_92, Shift, 0)
  loc_FC71BF:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_FC71C6:     Set var_A0 = Me.DGRoomNo
  loc_FC71E5:     Proc_6_138_106D6F8(var_A0, global_92, KeyCode, Me.FGPoint, 1)
  loc_FC71F3:   End If
  loc_FC71F3: End If
  loc_FC722E: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_FC7246:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC724F:     Proc_6_75_E527CC(Shift, arg_14, var_A0)
  loc_FC7254:   End If
  loc_FC725E:   If (CLng(Shift) = &H26) Then
  loc_FC7267:     Proc_6_76_E52838(Shift, arg_14, var_A4)
  loc_FC726C:   End If
  loc_FC726C: End If
  loc_FC726C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EDF77C
  'Data Table: 475350
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EDF6C7: Proc_6_58_E054C0(arg_10)
  loc_EDF6D2: Proc_6_133_E7EF78(var_94)
  loc_EDF6EF: If (KeyAscii = CInt(0)) Then
  loc_EDF70E:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EDF73B:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_92, CInt(Me.DGRoomNo.Visible), "RoomNo")
  loc_EDF76D:     Proc_6_138_106D6F8(Me.DGRoomNo, global_92, KeyAscii, Me.FGPoint)
  loc_EDF77B:   End If
  loc_EDF77B: End If
  loc_EDF77B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E0024C
  'Data Table: 475350
  Dim var_86 As Integer
  loc_E00247: var_86 = KeyCode
  loc_E0024A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47384
  'Data Table: 475350
  loc_E47362: Set var_88 = Me.Txt
  loc_E47368: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47376: Proc_6_73_E22704(var_8C)
  loc_E47382: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15A2A40
  'Data Table: 475350
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_A4 As String
  Dim var_BC As Variant
  Dim var_110 As Variant
  Dim var_8C As Long
  Dim var_128 As TextBox
  Dim var_F0 As Variant
  Dim unk_475373 As Connection15
  Dim var_90 As Recordset15
  Dim var_D0 As Variant
  Dim var_178 As String
  Dim var_174 As TextBox
  loc_15A185B: var_92 = Cancel
  loc_15A1866: If (var_92 = CInt(0)) Then
  loc_15A1875:   If (global_68 = 1) Then
  loc_15A188F:     If (Me.RecordCount <= 0) Then
  loc_15A1892:       Exit Sub
  loc_15A1893:     End If
  loc_15A18AA:     If (Me.AbsolutePosition < 0) Then
  loc_15A18AD:       Exit Sub
  loc_15A18AE:     End If
  loc_15A18B4:     Me.MoveFirst
  loc_15A18D7:     Set var_9C = Me.Txt
  loc_15A18DD:     Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4, "roomno='")
  loc_15A18E5:     0 = var_A0.Text
  loc_15A18FE:     Me.Find 1 & var_A4 & "'", var_BC, var_92
  loc_15A1934:     Set var_A0 = Me.Txt
  loc_15A193A:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_D0)
  loc_15A1973:     If ((CBool(Me.FGPoint.Visible) = &HFF) And (CDbl(Val(CStr(Trim(CVar(var_D0))))) = CDbl(0))) Then
  loc_15A1989:       var_BC = CVar(CLng(Me.FGPoint.Row)) 'Long
  loc_15A198E:       var_110 = 2
  loc_15A199B:       Set var_A0 = Me.FGPoint
  loc_15A19A1:       var_E0 = var_A0.TextMatrix)
  loc_15A19B0:       var_8C = CLng(CStr(var_E0))
  loc_15A19CB:       If (CInt(&HA) <> 0) Then
  loc_15A19E4:         var_A4 = CStr(var_8C)
  loc_15A19F1:         Me.Find "Foliono=" & var_A4, 0, 1
  loc_15A19FD:       End If
  loc_15A19FD:     End If
  loc_15A19FD:   End If
  loc_15A1A4B:   Set var_9C = Me.Txt
  loc_15A1A51:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15A1A59:   var_BC = var_A0.Text
  loc_15A1A71:   If (var_8C Or (var_A4 = vbNullString)) Then
  loc_15A1A81:     Set var_9C = Me.Txt
  loc_15A1A87:     Call 0.Method_Txt_Validate0 (Cancel, var_A0, vbNullString)
  loc_15A1A8F:     var_A0.Tag = var_110
  loc_15A1A9B:     Exit Sub
  loc_15A1A9C:   End If
  loc_15A1AD7:   Set var_D0 = Me.Txt
  loc_15A1ADD:   Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_15A1AE5:   var_128.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_15A1B36:   Set var_D0 = Me.Txt
  loc_15A1B3C:   Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_15A1B44:   var_128.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_15A1B93:   Set var_D0 = Me.Txt
  loc_15A1B99:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128)
  loc_15A1BA1:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_15A1BB8:   var_BC = "FolioNoDocid"
  loc_15A1BCF:   var_A0 = Me.Fields.Item(var_BC)
  loc_15A1BE0:   var_A4 = Proc_6_38_E68A98(CVar(var_A0))
  loc_15A1BEE:   Set var_D0 = Me.Txt
  loc_15A1BF4:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128)
  loc_15A1BFC:   var_128.Tag = var_A4
  loc_15A1C16:   Me.MoveFirst
  loc_15A1C3A:   Set var_9C = Me.Txt
  loc_15A1C40:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A0, var_A4, "FolionoDocid='")
  loc_15A1C48:   0 = var_A0.Tag
  loc_15A1C61:   Me.Find 1 & var_A4 & "'", var_BC, var_BC
  loc_15A1C96:   Set var_9C = Me.Txt
  loc_15A1C9C:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A0, var_A4, "Select ChkinDAte,ChkinTime from RoomOcc where Sno=1 and Docid=")
  loc_15A1CA4:   var_138 = var_A0.Tag
  loc_15A1CB2:   Proc_6_17_EAA2B0(var_E0, CVar(var_A4))
  loc_15A1CBA:   var_F0 = -1 & var_E0 
  loc_15A1CC8:   unk_475373.Execute CStr(Trim(CVar(var_D0))), var_D0, 
  loc_15A1CD3:   Set var_90 = var_D0
  loc_15A1D01:   If (var_90.RecordCount > 0) Then
  loc_15A1D1B:     var_A0 = var_90.Fields.Item("ChkInDate")
  loc_15A1D3A:     Set var_D0 = Me.Txt
  loc_15A1D40:     Call 0.Method_Txt_Validate0 (CInt(1), var_128)
  loc_15A1D48:     var_128.Text = Proc_6_38_E68A98(CVar(var_A0))
  loc_15A1D67:     Set var_9C = Me.Txt
  loc_15A1D6D:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_15A1DA7:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_A0), "DDDD"))
  loc_15A1E0F:     Set var_D0 = Me.Txt
  loc_15A1E15:     Call 0.Method_Txt_Validate0 (CInt(2), var_128, CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChkInTime")), 1)), 2)))
  loc_15A1E1D:     var_128.Text = 1
  loc_15A1E8B:     Set var_D0 = Me.Txt
  loc_15A1E91:     Call 0.Method_Txt_Validate0 (CInt(3), var_128)
  loc_15A1E99:     var_128.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ChkInTime")))), 2))
  loc_15A1EBA:   Else
  loc_15A1ED4:     var_A0 = Me.Fields.Item("ChkInDate")
  loc_15A1EF3:     Set var_D0 = Me.Txt
  loc_15A1EF9:     Call 0.Method_Txt_Validate0 (CInt(1), var_128)
  loc_15A1F01:     var_128.Text = Proc_6_38_E68A98(CVar(var_A0))
  loc_15A1F20:     Set var_9C = Me.Txt
  loc_15A1F26:     Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_15A1F60:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_A0), "DDDD"))
  loc_15A1FCB:     Set var_D0 = Me.Txt
  loc_15A1FD1:     Call 0.Method_Txt_Validate0 (CInt(2), var_128, CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_15A1FD9:     var_128.Text = 1
  loc_15A204A:     Set var_D0 = Me.Txt
  loc_15A2050:     Call 0.Method_Txt_Validate0 (CInt(3), var_128)
  loc_15A2058:     var_128.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_15A2076:   End If
  loc_15A20AF:   Set var_D0 = Me.Txt
  loc_15A20B5:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_128)
  loc_15A20BD:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkOutDate")))
  loc_15A2124:   Set var_D0 = Me.Txt
  loc_15A212A:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_128)
  loc_15A2132:   var_128.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_15A21A3:   Set var_D0 = Me.Txt
  loc_15A21A9:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_128)
  loc_15A21B1:   var_128.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_15A2208:   Set var_D0 = Me.Txt
  loc_15A220E:   Call 0.Method_Txt_Validate0 (CInt(6), var_128)
  loc_15A2216:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_15A227D:   Set var_D0 = Me.Txt
  loc_15A2283:   Call 0.Method_Txt_Validate0 (CInt(4), var_128)
  loc_15A228B:   var_128.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_15A22DF:   var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_15A22FC:   Set var_D0 = Me.Txt
  loc_15A2302:   Call 0.Method_Txt_Validate0 (CInt(5), var_128)
  loc_15A230A:   var_128.Text = CStr(Right(var_E0, 2))
  loc_15A2364:   Set var_D0 = Me.Txt
  loc_15A236A:   Call 0.Method_Txt_Validate0 (CInt(7), var_128)
  loc_15A2372:   var_128.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_15A23C4:   Set var_D0 = Me.Txt
  loc_15A23CA:   Call 0.Method_Txt_Validate0 (CInt(7), var_128)
  loc_15A23D2:   var_128.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_15A2421:   Set var_D0 = Me.Txt
  loc_15A2427:   Call 0.Method_Txt_Validate0 (CInt(8), var_128)
  loc_15A242F:   var_128.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_15A247C:   Set var_D0 = Me.Txt
  loc_15A2482:   Call 0.Method_Txt_Validate0 (CInt(8), var_128)
  loc_15A248A:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CompanyName")))
  loc_15A24C7:   Proc_6_39_E7C810(var_E0, CVar(Me.Fields.Item("RoomRate")))
  loc_15A24DE:   Set var_D0 = Me.Txt
  loc_15A24E4:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_128)
  loc_15A24EC:   var_128.Text = CStr(var_E0)
  loc_15A253D:   Set var_D0 = Me.Txt
  loc_15A2543:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_128)
  loc_15A254B:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateCode")))
  loc_15A2598:   Set var_D0 = Me.Txt
  loc_15A259E:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_128)
  loc_15A25A6:   var_128.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCatCode")))
  loc_15A25F3:   Set var_D0 = Me.Txt
  loc_15A25F9:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_128)
  loc_15A2601:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")))
  loc_15A264E:   Set var_D0 = Me.Txt
  loc_15A2654:   Call 0.Method_Txt_Validate0 (CInt(9), var_128)
  loc_15A265C:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("STATUSNAME")))
  loc_15A2699:   Proc_6_39_E7C810(var_E0, CVar(Me.Fields.Item("OldAdult")))
  loc_15A26B0:   Set var_D0 = Me.Txt
  loc_15A26B6:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_128)
  loc_15A26BE:   var_128.Text = CStr(var_E0)
  loc_15A26FF:   Proc_6_39_E7C810(var_E0, CVar(Me.Fields.Item("OldChild")))
  loc_15A2716:   Set var_D0 = Me.Txt
  loc_15A271C:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_128)
  loc_15A2724:   var_128.Text = CStr(var_E0)
  loc_15A2775:   Set var_D0 = Me.Txt
  loc_15A277B:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_128)
  loc_15A2783:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments1")))
  loc_15A27D0:   Set var_D0 = Me.Txt
  loc_15A27D6:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_128)
  loc_15A27DE:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments2")))
  loc_15A282B:   Set var_D0 = Me.Txt
  loc_15A2831:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_128)
  loc_15A2839:   var_128.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Comments3")))
  loc_15A2891:   Set var_D0 = Me.Txt
  loc_15A2897:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_128)
  loc_15A289F:   var_128.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_15A28FB:   Set var_D0 = Me.Txt
  loc_15A2901:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_128)
  loc_15A2909:   var_128.Text = Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_15A293B:   var_A0 = Me.Fields.Item("CityName")
  loc_15A29DF:   var_178 = var_A0 & Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("StateName"))), Proc_6_38_E68A98(Trim(CVar(var_A0))) & ",") & "," & Proc_6_38_E68A98(Trim(CVar(Me.Fields.Item("CountryName"))))
  loc_15A29ED:   Set var_170 = Me.Txt
  loc_15A29F3:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_174)
  loc_15A29FB:   var_174.Text = var_178
  loc_15A2A32:   Set var_90 = Nothing
  loc_15A2A35:   Call Proc_172_28_1353048()
  loc_15A2A3A:   Call Proc_172_27_10EF2DC()
  loc_15A2A3F: End If
  loc_15A2A3F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '1304DC0
  'Data Table: 475350
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_D0 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_104 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_138 As Long
  Dim var_158 As Variant
  Dim var_100 As Boolean
  Dim var_1AC As Variant
  loc_13046CF: If (CLng(Me.FGrid.Col) = 1) Then
  loc_13046E5:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13046FD:   var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1304734:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1304759:     Me.FGrid.Col = CVar(CLng(Me.FGrid.Col))
  loc_1304778:     Me.FGrid.CellFontName = "wingdings"
  loc_1304792:     Me.FGrid.CellFontSize = CVar(CDbl(&H12))
  loc_13047AD:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13047C5:     var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13047CA:     var_128 = "ü"
  loc_13047D4:     Set var_104 = Me.FGrid
  loc_13047DA:     LateIdCallSt
  loc_1304805:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130480D:     var_148 = CVar(CLng(3)) 'Long
  loc_1304825:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130482D:     var_F0 = CVar(CLng(7)) 'Long
  loc_1304847:     var_168 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_130484F:     Set var_17C = Me.FGrid
  loc_1304855:     LateIdCallSt
  loc_1304886:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130488E:     var_148 = CVar(CLng(4)) 'Long
  loc_13048A6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13048AE:     var_F0 = CVar(CLng(8)) 'Long
  loc_13048C8:     var_168 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13048D0:     Set var_17C = Me.FGrid
  loc_13048D6:     LateIdCallSt
  loc_13048F7:   Else
  loc_130490A:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1304922:     var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1304927:     var_128 = vbNullString
  loc_1304931:     Set var_104 = Me.FGrid
  loc_1304937:     LateIdCallSt
  loc_1304962:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130496A:     var_F0 = CVar(CLng(3)) 'Long
  loc_130496F:     var_128 = vbNullString
  loc_1304979:     Set var_B0 = Me.FGrid
  loc_130497F:     LateIdCallSt
  loc_13049A4:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13049AC:     var_F0 = CVar(CLng(4)) 'Long
  loc_13049B1:     var_128 = vbNullString
  loc_13049BB:     Set var_B0 = Me.FGrid
  loc_13049C1:     LateIdCallSt
  loc_13049E6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13049EE:     var_F0 = CVar(CLng(5)) 'Long
  loc_13049F3:     var_128 = vbNullString
  loc_13049FD:     Set var_B0 = Me.FGrid
  loc_1304A03:     LateIdCallSt
  loc_1304A28:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1304A30:     var_F0 = CVar(CLng(6)) 'Long
  loc_1304A35:     var_128 = vbNullString
  loc_1304A3F:     Set var_B0 = Me.FGrid
  loc_1304A45:     LateIdCallSt
  loc_1304A57:   End If
  loc_1304A5A:   var_8C = CDbl(0)
  loc_1304A60:   var_94 = CDbl(0)
  loc_1304A88:   For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_180 'Integer
  loc_1304A92:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_1304A9A:     var_F0 = CVar(CLng(3)) 'Long
  loc_1304AC6:     var_8C = (var_8C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1304AD6:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_1304ADE:     var_F0 = CVar(CLng(4)) 'Long
  loc_1304B0A:     var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1304B1A:     var_F0 = CVar(CLng(var_96)) 'Long
  loc_1304B22:     var_128 = CVar(CLng(5)) 'Long
  loc_1304B44:     var_AC = CVar(Abs((var_8C - var_94))) 'Double
  loc_1304B54:     var_168 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_1304B5C:     Set var_9C = Me.FGrid
  loc_1304B62:     LateIdCallSt
  loc_1304B84:     If (CDbl((var_8C - var_94)) > CDbl(0)) Then
  loc_1304B8B:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_1304B93:       var_F0 = CVar(CLng(6)) 'Long
  loc_1304B98:       var_128 = "Dr"
  loc_1304BA2:       Set var_9C = Me.FGrid
  loc_1304BA8:       LateIdCallSt
  loc_1304BB6:     Else
  loc_1304BC2:       If (CDbl((var_8C - var_94)) < CDbl(0)) Then
  loc_1304BC9:         var_D0 = CVar(CLng(var_96)) 'Long
  loc_1304BD1:         var_F0 = CVar(CLng(6)) 'Long
  loc_1304BD6:         var_128 = "Cr"
  loc_1304BE0:         Set var_9C = Me.FGrid
  loc_1304BE6:         LateIdCallSt
  loc_1304BF4:       Else
  loc_1304BF8:         var_D0 = CVar(CLng(var_96)) 'Long
  loc_1304C00:         var_F0 = CVar(CLng(6)) 'Long
  loc_1304C05:         var_128 = vbNullString
  loc_1304C0F:         Set var_9C = Me.FGrid
  loc_1304C15:         LateIdCallSt
  loc_1304C20:       End If
  loc_1304C20:     End If
  loc_1304C23:   Next var_180 'Integer
  loc_1304C2C:   Set var_18C = Me.Fgrid1
  loc_1304C2F:   var_F0 = 0
  loc_1304C3B:   var_128 = CVar(CLng(1)) 'Long
  loc_1304C69:   var_114 = CVar(CStr(Format(var_8C, "0.00"))) 'String
  loc_1304C70:   LateIdCallSt
  loc_1304C81:   var_F0 = 0
  loc_1304C8D:   var_128 = CVar(CLng(2)) 'Long
  loc_1304CBB:   var_114 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1304CC2:   LateIdCallSt
  loc_1304CD3:   var_F0 = 0
  loc_1304CDF:   var_128 = CVar(CLng(3)) 'Long
  loc_1304D01:   var_AC = CVar(Abs((var_8C - var_94))) 'Double
  loc_1304D11:   var_168 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1304D18:   LateIdCallSt
  loc_1304D2B:   var_138 = 0
  loc_1304D37:   var_158 = CVar(CLng(4)) 'Long
  loc_1304D5E:   var_D0 = (CDbl((var_94 - var_8C)) > CDbl(0))
  loc_1304D84:   var_100 = (CDbl((var_8C - var_94)) > CDbl(0))
  loc_1304D94:   var_1AC = CVar(CStr(IIf(var_100, "Dr", IIf(var_94, "Cr", vbNullString)))) 'String
  loc_1304D9B:   LateIdCallSt
  loc_1304DB8:   Set var_18C = Nothing 
  loc_1304DBC: End If
  loc_1304DBC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFCB04
  'Data Table: 475350
  loc_DFCB00: Exit Sub
End Sub

Private Sub Form_Load() '1047D74
  'Data Table: 475350
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
  Dim unk_475373 As Connection15
  loc_1047B28: On Error Goto loc_1047D6C
  loc_1047B33: Call 0.Method_arg_7C (CDbl(1450))
  loc_1047B40: Call 0.Method_arg_74 (CDbl(1625))
  loc_1047B4D: Call 0.Method_MeC (CDbl(9200))
  loc_1047B5A: Call 0.Method_Me4 (CDbl(17000))
  loc_1047B66: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1047B78: Set var_A8 = Me.FGrid
  loc_1047B7E: var_A8.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1047B90: Set global_96 = New 
  loc_1047BA2: Me.var_A8.CursorLocation = 3
  loc_1047BCC: var_BC = CVar("Select Code,Name,Type as Flag From RevMast where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Fieldtype in ('C','P') ORDER BY NAME ") 'String
  loc_1047BD6: Me.Open var_BC, CVar(MemVar_1F92044), 2
  loc_1047BEA: CVarUnk
  loc_1047BEF: VerifyVarObj
  loc_1047BF5: Set var_A8 = Me.DGChrgPayment
  loc_1047BFB: LateIdStAd
  loc_1047C1D: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_C4, Me.Txt)
  loc_1047C25: global_96 = var_C0.Left
  loc_1047C3C: Me.DGRoomNo.Left = CVar(var_C4)
  loc_1047C58: Set var_C8 = Me.Txt
  loc_1047C5E: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_D0)
  loc_1047C66: 3 = var_CC.Height
  loc_1047C7F: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_1047C97: var_94 = CVar(((var_C0.Top + var_D0) + CDbl(&H1E))) 'Single
  loc_1047CA0: Set var_D4 = Me.DGRoomNo
  loc_1047CA6: var_D4.Top = CVar(var_C0.Top)
  loc_1047CC2: Set global_92 = New 
  loc_1047CD4: Me.var_D4.CursorLocation = 3
  loc_1047CED: var_AC = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.ChkInDate,RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, GuestFolio.DocId as FolioNoDocid,RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME " & " FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS  WHERE ROOMOCC.LOGSITE_CODE='"
  loc_1047D09: var_E4 = var_AC & MemVar_1F92078 & "' AND ROOMMAST.LOGSITE_CODE='" & MemVar_1F92078 & "' AND roomocc.ChkOutDate is NULL  AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code,RoomOcc.FolioNo"
  loc_1047D12: unk_475373.Execute var_E4, var_BC, -1
  loc_1047D47: CVarUnk
  loc_1047D4C: VerifyVarObj
  loc_1047D52: Set var_A8 = Me.DGRoomNo
  loc_1047D58: LateIdStAd
  loc_1047D66: Call Proc_172_28_1353048(var_A8, Me.Txt)
  loc_1047D6B: Exit Sub
  loc_1047D6C: ' Referenced from: 1047B28
  loc_1047D6C: Proc_6_60_E62BC4(var_A8)
  loc_1047D71: Exit Sub
  loc_1047D72: Set var_27B0 = -1
End Sub

Private Sub Form_Resize() 'E72578
  'Data Table: 475350
  loc_E72522: Call 0.Method_arg_50 (var_88)
  loc_E72534: Me.LblFormCaption.Caption = var_88
  loc_E7254D: Me.LblFormCaption.Left = CDbl(0)
  loc_E7255B: Call 0.Method_arg_100 (var_90)
  loc_E7256D: Me.LblFormCaption.Width = var_90
  loc_E72575: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E440BC
  'Data Table: 475350
  loc_E44097: Set global_92 = Nothing
  loc_E440A9: Set global_96 = Nothing
  loc_E440B5: MasterFormExit = 0
  loc_E440B8: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5ACDC
  'Data Table: 475350
  loc_E5ACA4: Set var_88 = Me.TopCtrl1
  loc_E5ACAA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5ACCD: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5ACD5:   Call Form_Unload(&HFF)
  loc_E5ACDA: End If
  loc_E5ACDA: Exit Sub
End Sub

Private Sub Form_Activate() 'E6B7D0
  'Data Table: 475350
  Dim var_8C As PictureBox
  loc_E6B77C: On Error Goto loc_E6B7C7
  loc_E6B783: Set var_8C = Me.TopCtrl1
  loc_E6B789: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E6B79E: If (CLng(CInt()) = &H2D) Then
  loc_E6B7A1: End If
  loc_E6B7BE: Call 0.Method_arg_74 (MemVar_1F92244.DGChrgPayment.Left)
  loc_E6B7C6: Exit Sub
  loc_E6B7C7: ' Referenced from: E6B77C
  loc_E6B7C7: Proc_6_60_E62BC4()
  loc_E6B7CC: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24CAC
  'Data Table: 475350
  loc_E24C91: If (MasterFormExit = &HFF) Then
  loc_E24CA1:   Me.Global.Unload Me
  loc_E24CA9: End If
  loc_E24CA9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5E738
  'Data Table: 475350
  loc_E5E6EC: On Error Goto loc_E5E72F
  loc_E5E6F9: If (CLng(KeyCode) = &H79) Then
  loc_E5E709:   Me.Global.Unload Me
  loc_E5E711:   Exit Sub
  loc_E5E712: End If
  loc_E5E726: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E5E72E: Exit Sub
  loc_E5E72F: ' Referenced from: E5E6EC
  loc_E5E72F: Proc_6_60_E62BC4(Shift)
  loc_E5E734: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F42524
  'Data Table: 475350
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4241B: Me.DGRoomNo.Visible = False
  loc_F4243A: If (Me.RecordCount > 0) Then
  loc_F42479:   Set var_B4 = Me.Txt
  loc_F4247F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F42487:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F424BA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F424D9:   Set var_B4 = Me.Txt
  loc_F424DF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F424E7:   var_B8.Text = CStr(var_B0.Value)
  loc_F424FD: End If
  loc_F42508: Set var_A8 = Me.Txt
  loc_F4250E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F42516: var_B0.SetFocus
  loc_F42522: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E99C50
  'Data Table: 475350
  Dim var_A8 As Variant
  loc_E99BD4: Set var_88 = Me.DGRoomNo
  loc_E99BFE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E99C06: Set var_BC = Me.DGRoomNo
  loc_E99C40: Proc_6_138_106D6F8(Me.DGRoomNo, global_92, 0, Me.FGPoint)
  loc_E99C4E: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_9 'F42C04
  'Data Table: 475350
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F42AFB: Me.DGChrgPayment.Visible = False
  loc_F42B1A: If (Me.RecordCount > 0) Then
  loc_F42B59:   Set var_B4 = Me.Txt
  loc_F42B5F:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F42B67:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F42B9A:   var_B0 = Me.Fields.Item("Name")
  loc_F42BB9:   Set var_B4 = Me.Txt
  loc_F42BBF:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F42BC7:   var_B8.Text = CStr(var_B0.Value)
  loc_F42BDD: End If
  loc_F42BE8: Set var_A8 = Me.Txt
  loc_F42BEE: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB))
  loc_F42BF6: var_B0.SetFocus
  loc_F42C02: Exit Sub
End Sub

Public Function MasterFormExitGet() '475FCC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '475FDB
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '475FEA
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '475FF9
  mVType = Value
End Sub

Public Property Get OpenMode() 'E02800
  'Data Table: 475350
  loc_E027F9: OpenMode = global_68
End Sub

Public Property Let OpenMode(vNewValue) 'E0062C
  'Data Table: 475350
  loc_E00626: global_68 = vNewValue
  loc_E00629: Exit Sub
  loc_E0062A: global_68 = 
End Sub

Public Sub Proc_172_26_EBC50C
  'Data Table: 475350
  loc_EBC484: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBC496:   Me.DGRoomNo.Visible = False
  loc_EBC49E: End If
  loc_EBC4BA: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EBC4CC:   Me.DGChrgPayment.Visible = False
  loc_EBC4D4: End If
  loc_EBC4F0: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBC502:   Me.FGPoint.Visible = False
  loc_EBC50A: End If
  loc_EBC50A: Exit Sub
End Sub

Public Sub Proc_172_27_10EF2DC
  'Data Table: 475350
  Dim var_94 As Variant
  Dim var_9C As String
  Dim unk_475373 As Connection15
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_8C As Recordset15
  Dim var_C4 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_D8 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  loc_10EEFF2: Set var_90 = Me.Txt
  loc_10EEFF8: Call 0.Method_Proc_172_27_10EF2DC0 (CInt(&HA), var_94, var_98, "Select max(revmast.name)as Revname,paycharge.Paycode,sum(paycharge.amtdr) as AmtDr,sum(paycharge.amtcr) as AmtCr from paycharge left join revmast on paycharge.paycode=revmast.code where (ContraDocId is NULL or contradocid='') and folionoDocid='")
  loc_10EF000: var_C0 = var_94.Tag
  loc_10EF009: var_9C = -1 & var_98
  loc_10EF019: unk_475373.Execute var_9C & "' group by Paycharge.paycode", var_C4, 
  loc_10EF024: Set var_8C = var_C4
  loc_10EF053: If (Me.Recordset15.RecordCount = 0) Then
  loc_10EF069:   Me.FGrid.Rows = 2
  loc_10EF071:   Exit Sub
  loc_10EF072: End If
  loc_10EF089: var_B0 = CVar((var_8C.RecordCount + 1)) 'Long
  loc_10EF098: Me.FGrid.Rows = 2
  loc_10EF0AD: Set var_90 = Me.FGrid
  loc_10EF0B3: var_90.Row = 1
  loc_10EF0BB: ' Referenced from: 10EF2BC
  loc_10EF0CD: If Not(Me.var_90.EOF) Then
  loc_10EF0D4:   Set var_E0 = Me.FGrid
  loc_10EF0E1:   var_C0 = Me.FGrid.Row
  loc_10EF0EA:   var_D8 = CVar(CLng(var_C0)) 'Long
  loc_10EF0F2:   var_100 = CVar(CLng(2)) 'Long
  loc_10EF125:   var_130 = CVar(CStr(Me.var_C0.Fields.Item("RevName").Value)) 'String
  loc_10EF12C:   LateIdCallSt
  loc_10EF16F:   var_150 = Me.FGrid.Row
  loc_10EF178:   var_F0 = CVar(CLng(var_150)) 'Long
  loc_10EF180:   var_110 = CVar(CLng(7)) 'Long
  loc_10EF1AD:   var_160 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_10EF1B4:   LateIdCallSt
  loc_10EF1F9:   var_150 = Me.FGrid.Row
  loc_10EF202:   var_F0 = CVar(CLng(var_150)) 'Long
  loc_10EF20A:   var_110 = CVar(CLng(8)) 'Long
  loc_10EF237:   var_160 = CVar(CStr(Format(CVar(Me.var_150.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_10EF23E:   LateIdCallSt
  loc_10EF25C:   Set var_E0 = Nothing 
  loc_10EF266:   Me.var_150.MoveNext
  loc_10EF27F:   If (var_8C.EOF = &HFF) Then
  loc_10EF282:     GoTo loc_10EF2BF
  loc_10EF285:   End If
  loc_10EF29E:   var_B0 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_10EF2AD:   Me.FGrid.Row = "AmtCr"
  loc_10EF2BC:   GoTo loc_10EF0BB
  loc_10EF2BF:   ' Referenced from: 10EF282
  loc_10EF2BF: End If
  loc_10EF2D2: Me.FGrid.FixedRows = 1
  loc_10EF2DA: Exit Sub
End Sub

Public Sub Proc_172_28_1353048
  'Data Table: 475350
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_1352820: Set var_90 = Me.FGrid
  loc_1352836: Me.FGrid.Rows = 1
  loc_1352852: global_60 = CStr(CLng(var_90.BackColor))
  loc_1352868: var_90.Cols = &HB
  loc_135286D: var_A0 = 0
  loc_1352879: var_D8 = CVar(CLng(0)) 'Long
  loc_135287E: var_F8 = "SNo"
  loc_1352887: LateIdCallSt
  loc_1352892: var_A0 = CVar(CLng(0)) 'Long
  loc_1352897: var_D8 = 0
  loc_13528A3: LateIdCallSt
  loc_13528AB: var_A0 = 0
  loc_13528B7: var_D8 = CVar(CLng(1)) 'Long
  loc_13528BC: var_F8 = vbNullString
  loc_13528C5: LateIdCallSt
  loc_13528D0: var_A0 = CVar(CLng(1)) 'Long
  loc_13528DB: var_D8 = CVar(CInt(1)) 'Integer
  loc_13528E2: LateIdCallSt
  loc_13528ED: var_A0 = CVar(CLng(1)) 'Long
  loc_13528F8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13528FF: LateIdCallSt
  loc_135290A: var_A0 = CVar(CLng(1)) 'Long
  loc_135290F: var_D8 = &H3E8
  loc_135291B: LateIdCallSt
  loc_1352923: var_A0 = 0
  loc_135292F: var_D8 = CVar(CLng(2)) 'Long
  loc_1352934: var_F8 = "Particulars"
  loc_135293D: LateIdCallSt
  loc_1352948: var_A0 = CVar(CLng(2)) 'Long
  loc_1352953: var_D8 = CVar(CInt(1)) 'Integer
  loc_135295A: LateIdCallSt
  loc_1352965: var_A0 = CVar(CLng(2)) 'Long
  loc_1352970: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352977: LateIdCallSt
  loc_1352982: var_A0 = CVar(CLng(2)) 'Long
  loc_1352987: var_D8 = &HBB8
  loc_1352993: LateIdCallSt
  loc_135299B: var_A0 = 0
  loc_13529A7: var_D8 = CVar(CLng(3)) 'Long
  loc_13529AC: var_F8 = "Debit"
  loc_13529B5: LateIdCallSt
  loc_13529C0: var_A0 = CVar(CLng(3)) 'Long
  loc_13529CB: var_D8 = CVar(CInt(7)) 'Integer
  loc_13529D2: LateIdCallSt
  loc_13529DD: var_A0 = CVar(CLng(3)) 'Long
  loc_13529E8: var_D8 = CVar(CInt(7)) 'Integer
  loc_13529EF: LateIdCallSt
  loc_13529FA: var_A0 = CVar(CLng(3)) 'Long
  loc_13529FF: var_D8 = &H3E8
  loc_1352A0B: LateIdCallSt
  loc_1352A13: var_A0 = 0
  loc_1352A1F: var_D8 = CVar(CLng(4)) 'Long
  loc_1352A24: var_F8 = "Credit"
  loc_1352A2D: LateIdCallSt
  loc_1352A38: var_A0 = CVar(CLng(4)) 'Long
  loc_1352A43: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352A4A: LateIdCallSt
  loc_1352A55: var_A0 = CVar(CLng(4)) 'Long
  loc_1352A60: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352A67: LateIdCallSt
  loc_1352A72: var_A0 = CVar(CLng(4)) 'Long
  loc_1352A77: var_D8 = &H3E8
  loc_1352A83: LateIdCallSt
  loc_1352A8B: var_A0 = 0
  loc_1352A97: var_D8 = CVar(CLng(5)) 'Long
  loc_1352A9C: var_F8 = "Balance"
  loc_1352AA5: LateIdCallSt
  loc_1352AB0: var_A0 = CVar(CLng(5)) 'Long
  loc_1352ABB: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352AC2: LateIdCallSt
  loc_1352ACD: var_A0 = CVar(CLng(5)) 'Long
  loc_1352AD8: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352ADF: LateIdCallSt
  loc_1352AEA: var_A0 = CVar(CLng(5)) 'Long
  loc_1352AEF: var_D8 = &H3E8
  loc_1352AFB: LateIdCallSt
  loc_1352B03: var_A0 = 0
  loc_1352B0F: var_D8 = CVar(CLng(6)) 'Long
  loc_1352B14: var_F8 = vbNullString
  loc_1352B1D: LateIdCallSt
  loc_1352B28: var_A0 = CVar(CLng(6)) 'Long
  loc_1352B33: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352B3A: LateIdCallSt
  loc_1352B45: var_A0 = CVar(CLng(6)) 'Long
  loc_1352B50: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352B57: LateIdCallSt
  loc_1352B62: var_A0 = CVar(CLng(6)) 'Long
  loc_1352B67: var_D8 = &H12C
  loc_1352B73: LateIdCallSt
  loc_1352B7B: var_A0 = 0
  loc_1352B87: var_D8 = CVar(CLng(7)) 'Long
  loc_1352B8C: var_F8 = vbNullString
  loc_1352B95: LateIdCallSt
  loc_1352BA0: var_A0 = CVar(CLng(7)) 'Long
  loc_1352BAB: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352BB2: LateIdCallSt
  loc_1352BBD: var_A0 = CVar(CLng(7)) 'Long
  loc_1352BC8: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352BCF: LateIdCallSt
  loc_1352BDA: var_A0 = CVar(CLng(7)) 'Long
  loc_1352BDF: var_D8 = 0
  loc_1352BEB: LateIdCallSt
  loc_1352BF3: var_A0 = 0
  loc_1352BFF: var_D8 = CVar(CLng(8)) 'Long
  loc_1352C04: var_F8 = vbNullString
  loc_1352C0D: LateIdCallSt
  loc_1352C18: var_A0 = CVar(CLng(8)) 'Long
  loc_1352C23: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352C2A: LateIdCallSt
  loc_1352C35: var_A0 = CVar(CLng(8)) 'Long
  loc_1352C40: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352C47: LateIdCallSt
  loc_1352C52: var_A0 = CVar(CLng(8)) 'Long
  loc_1352C57: var_D8 = 0
  loc_1352C63: LateIdCallSt
  loc_1352C6B: var_A0 = 0
  loc_1352C77: var_D8 = CVar(CLng(9)) 'Long
  loc_1352C7C: var_F8 = vbNullString
  loc_1352C85: LateIdCallSt
  loc_1352C90: var_A0 = CVar(CLng(9)) 'Long
  loc_1352C9B: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352CA2: LateIdCallSt
  loc_1352CAD: var_A0 = CVar(CLng(9)) 'Long
  loc_1352CB8: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352CBF: LateIdCallSt
  loc_1352CCA: var_A0 = CVar(CLng(9)) 'Long
  loc_1352CCF: var_D8 = 0
  loc_1352CDB: LateIdCallSt
  loc_1352CE3: var_A0 = 0
  loc_1352CEF: var_D8 = CVar(CLng(&HA)) 'Long
  loc_1352CF4: var_F8 = vbNullString
  loc_1352CFD: LateIdCallSt
  loc_1352D08: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1352D13: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352D1A: LateIdCallSt
  loc_1352D25: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1352D30: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352D37: LateIdCallSt
  loc_1352D42: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1352D47: var_D8 = 0
  loc_1352D53: LateIdCallSt
  loc_1352D5B: var_A0 = vbNullString
  loc_1352D65: Set var_B4 = Me.FGrid
  loc_1352D89: Me.FGrid.FixedRows = 1
  loc_1352D93: Set var_90 = Nothing 
  loc_1352D9B: Set var_10C = Me.Fgrid1
  loc_1352DB1: Me.Fgrid1.Rows = 1
  loc_1352DCD: global_60 = CStr(CLng(var_10C.BackColor))
  loc_1352DE3: var_10C.Cols = 5
  loc_1352DE8: var_A0 = 0
  loc_1352DF4: var_D8 = CVar(CLng(0)) 'Long
  loc_1352DF9: var_F8 = "Total :"
  loc_1352E02: LateIdCallSt
  loc_1352E0D: var_A0 = CVar(CLng(0)) 'Long
  loc_1352E18: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352E1F: LateIdCallSt
  loc_1352E2A: var_A0 = CVar(CLng(0)) 'Long
  loc_1352E35: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352E3C: LateIdCallSt
  loc_1352E47: var_A0 = CVar(CLng(0)) 'Long
  loc_1352E4C: var_D8 = &HFA0
  loc_1352E58: LateIdCallSt
  loc_1352E60: var_A0 = 0
  loc_1352E6C: var_D8 = CVar(CLng(1)) 'Long
  loc_1352E71: var_F8 = vbNullString
  loc_1352E7A: LateIdCallSt
  loc_1352E85: var_A0 = CVar(CLng(1)) 'Long
  loc_1352E90: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352E97: LateIdCallSt
  loc_1352EA2: var_A0 = CVar(CLng(1)) 'Long
  loc_1352EAD: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352EB4: LateIdCallSt
  loc_1352EBF: var_A0 = CVar(CLng(1)) 'Long
  loc_1352EC4: var_D8 = &H3E8
  loc_1352ED0: LateIdCallSt
  loc_1352ED8: var_A0 = 0
  loc_1352EE4: var_D8 = CVar(CLng(2)) 'Long
  loc_1352EE9: var_F8 = vbNullString
  loc_1352EF2: LateIdCallSt
  loc_1352EFD: var_A0 = CVar(CLng(2)) 'Long
  loc_1352F08: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352F0F: LateIdCallSt
  loc_1352F1A: var_A0 = CVar(CLng(2)) 'Long
  loc_1352F25: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352F2C: LateIdCallSt
  loc_1352F37: var_A0 = CVar(CLng(2)) 'Long
  loc_1352F3C: var_D8 = &H3E8
  loc_1352F48: LateIdCallSt
  loc_1352F50: var_A0 = 0
  loc_1352F5C: var_D8 = CVar(CLng(3)) 'Long
  loc_1352F61: var_F8 = vbNullString
  loc_1352F6A: LateIdCallSt
  loc_1352F75: var_A0 = CVar(CLng(3)) 'Long
  loc_1352F80: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352F87: LateIdCallSt
  loc_1352F92: var_A0 = CVar(CLng(3)) 'Long
  loc_1352F9D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352FA4: LateIdCallSt
  loc_1352FAF: var_A0 = CVar(CLng(3)) 'Long
  loc_1352FB4: var_D8 = &H3E8
  loc_1352FC0: LateIdCallSt
  loc_1352FC8: var_A0 = 0
  loc_1352FD4: var_D8 = CVar(CLng(4)) 'Long
  loc_1352FD9: var_F8 = vbNullString
  loc_1352FE2: LateIdCallSt
  loc_1352FED: var_A0 = CVar(CLng(4)) 'Long
  loc_1352FF8: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352FFF: LateIdCallSt
  loc_135300A: var_A0 = CVar(CLng(4)) 'Long
  loc_1353015: var_D8 = CVar(CInt(1)) 'Integer
  loc_135301C: LateIdCallSt
  loc_1353027: var_A0 = CVar(CLng(4)) 'Long
  loc_135302C: var_D8 = &H12C
  loc_1353038: LateIdCallSt
  loc_1353042: Set var_10C = Nothing 
  loc_1353046: Exit Sub
End Sub
