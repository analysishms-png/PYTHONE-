VERSION 5.00
Begin VB.Form HallBill
  Caption = "Hall Bill Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "HallBill.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 8880
  ClientHeight = 8490
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
  Begin CommandButton CmdGeneInvoice
    Caption = "Gen eInvoice"
    Left = 9165
    Top = 8070
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 96
  End
  Begin CommandButton CmdeInvoiceJson
    Caption = "eInvoice Json"
    Left = 9165
    Top = 7695
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 95
  End
  Begin CommandButton CmdeInvoiceSql
    Caption = "eInvoice Sql"
    Left = 10875
    Top = 8235
    Width = 1665
    Height = 375
    Visible = 0   'False
    TabIndex = 94
  End
  Begin Frame FreInvInfo
    Caption = "eInvoice Info:"
    Left = 8520
    Top = 6555
    Width = 6735
    Height = 1095
    Visible = 0   'False
    TabIndex = 87
    Begin TextBox TxteInvInfo
      Index = 0
      Left = 795
      Top = 255
      Width = 5800
      Height = 240
      TabIndex = 90
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
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
    Begin TextBox TxteInvInfo
      Index = 1
      Left = 795
      Top = 510
      Width = 5800
      Height = 240
      TabIndex = 89
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
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
    Begin TextBox TxteInvInfo
      Index = 2
      Left = 795
      Top = 765
      Width = 5800
      Height = 240
      TabIndex = 88
      BorderStyle = 0 'None
      TabStop = 0   'False
      Locked = -1  'True
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
    Begin Label LbleInvInfo
      Caption = "Ack.Dt.:"
      Index = 2
      Left = 90
      Top = 765
      Width = 600
      Height = 195
      TabIndex = 93
      AutoSize = -1  'True
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
    Begin Label LbleInvInfo
      Caption = "Ack.No.:"
      Index = 1
      Left = 90
      Top = 510
      Width = 630
      Height = 195
      TabIndex = 92
      AutoSize = -1  'True
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
    Begin Label LbleInvInfo
      Caption = "IRN:"
      Index = 0
      Left = 90
      Top = 255
      Width = 330
      Height = 195
      TabIndex = 91
      AutoSize = -1  'True
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
  End
  Begin BtnEnh Command1
    Left = 4950
    Top = 8055
    Width = 510
    Height = 630
    TabIndex = 84
  End
  Begin TextBox Txt
    Index = 26
    ForeColor = &HFF0000&
    Left = 3645
    Top = 7650
    Width = 1290
    Height = 360
    TabIndex = 79
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
  Begin BtnEnh BtnEnh1
    Left = 8205
    Top = 1305
    Width = 1065
    Height = 300
    TabIndex = 78
  End
  Begin BtnEnh CmdBooking
    Left = 7140
    Top = 1290
    Width = 915
    Height = 315
    TabIndex = 77
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 74
  End
  Begin DataGrid DGVType
    Left = 17625
    Top = 4755
    Width = 4215
    Height = 3645
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 38
  End
  Begin DataGrid DGParty
    Left = 17055
    Top = 2385
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin DataGrid DGItem
    Left = 16725
    Top = 1620
    Width = 9405
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin DataGrid DGHall
    Left = 16065
    Top = 660
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin TextBox Txt
    Index = 25
    ForeColor = &HFF0000&
    Left = 1335
    Top = 2250
    Width = 5760
    Height = 285
    TabIndex = 5
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
    Index = 24
    ForeColor = &HFF0000&
    Left = 1335
    Top = 1935
    Width = 5760
    Height = 285
    TabIndex = 4
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
    Index = 23
    Left = 5745
    Top = 2895
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 71
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
  Begin DataGrid DGBookNo
    Left = 16635
    Top = 165
    Width = 6300
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 44
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 870
    Top = 2895
    Width = 885
    Height = 225
    Visible = 0   'False
    TabIndex = 70
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
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
    Index = 22
    ForeColor = &HFF0000&
    Left = 13185
    Top = 10065
    Width = 975
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGCat
    Left = 7350
    Top = 2355
    Width = 7905
    Height = 1425
    Visible = 0   'False
    TabIndex = 56
  End
  Begin TextBox Txt
    Index = 21
    ForeColor = &H0&
    Left = 3300
    Top = 10485
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 65
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
    Index = 20
    ForeColor = &HFF0000&
    Left = 3645
    Top = 8370
    Width = 1290
    Height = 315
    TabIndex = 63
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
    Index = 19
    ForeColor = &H0&
    Left = 2250
    Top = 10740
    Width = 3060
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 50
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
    Index = 18
    ForeColor = &HFF0000&
    Left = 6240
    Top = 1305
    Width = 855
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    ForeColor = &HFF0000&
    Left = 3705
    Top = 1305
    Width = 885
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TextGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 2295
    Top = 3885
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TextPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 1605
    Top = 3885
    Width = 495
    Height = 285
    Visible = 0   'False
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    Left = 8895
    Top = 60
    Width = 1860
    Height = 255
    Visible = 0   'False
    TabIndex = 26
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
  Begin TextBox Txt
    Index = 16
    ForeColor = &H0&
    Left = 4080
    Top = 9150
    Width = 1215
    Height = 240
    Visible = 0   'False
    TabIndex = 54
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 5295
    Top = 3885
    Width = 495
    Height = 285
    Visible = 0   'False
    TabIndex = 9
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
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 5985
    Top = 3885
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 13
    ForeColor = &H0&
    Left = 10305
    Top = 10725
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 14
    ForeColor = &H0&
    Left = 10305
    Top = 10470
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 15
    ForeColor = &H0&
    Left = 10320
    Top = 10230
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 48
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 7
    ForeColor = &HFF0000&
    Left = 1335
    Top = 1305
    Width = 885
    Height = 285
    TabIndex = 0
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
  Begin MaskEdBox txtM
    Index = 1
    Left = 4560
    Top = 10230
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 11
    ForeColor = &H0&
    Left = 4080
    Top = 9405
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 10
    ForeColor = &HFF0000&
    Left = 11355
    Top = 1290
    Width = 1050
    Height = 285
    Visible = 0   'False
    TabIndex = 23
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
    Index = 9
    ForeColor = &HFF0000&
    Left = 10665
    Top = 1290
    Width = 690
    Height = 285
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
    Left = 3645
    Top = 8040
    Width = 1290
    Height = 315
    Enabled = 0   'False
    TabIndex = 21
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
    Index = 12
    ForeColor = &H0&
    Left = 4080
    Top = 9660
    Width = 3915
    Height = 240
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 6
    ForeColor = &H0&
    Left = 3300
    Top = 10230
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 17
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
    Left = 1335
    Top = 990
    Width = 2295
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
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
    Index = 1
    ForeColor = &HFF0000&
    Left = 4650
    Top = 990
    Width = 1005
    Height = 285
    TabIndex = 13
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
    Index = 2
    ForeColor = &HFF0000&
    Left = 7080
    Top = 990
    Width = 1095
    Height = 285
    TabIndex = 14
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 8130
    Top = 1965
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
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
    Index = 3
    ForeColor = &HFF0000&
    Left = 1335
    Top = 1620
    Width = 5760
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
  Begin TextBox Txt
    Index = 5
    ForeColor = &H0&
    Left = 3300
    Top = 9975
    Width = 2010
    Height = 240
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin MSHFlexGrid FGrid
    Left = 7335
    Top = 1635
    Width = 7905
    Height = 2670
    TabIndex = 8
  End
  Begin MaskEdBox txtM
    Index = 0
    Left = 4560
    Top = 10485
    Width = 750
    Height = 240
    Visible = 0   'False
    TabIndex = 64
  End
  Begin MaskEdBox txtMEd
    Index = 0
    Left = 3075
    Top = 3090
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 69
  End
  Begin MSHFlexGrid FGrid1
    Left = 60
    Top = 2565
    Width = 7110
    Height = 1170
    TabIndex = 11
  End
  Begin BtnEnh BtnEnh4
    Left = 1965
    Top = 7680
    Width = 1695
    Height = 330
    TabIndex = 80
  End
  Begin BtnEnh BtnEnh2
    Left = 1965
    Top = 8025
    Width = 1695
    Height = 330
    TabIndex = 81
  End
  Begin BtnEnh BtnEnh3
    Left = 1965
    Top = 8370
    Width = 1695
    Height = 345
    TabIndex = 82
  End
  Begin BtnEnh LBLRectno
    Left = 9270
    Top = 1275
    Width = 1410
    Height = 330
    Visible = 0   'False
    TabIndex = 83
  End
  Begin Image QrImage
    Left = 15315
    Top = 3795
    Width = 1800
    Height = 1350
    Visible = 0   'False
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 13170
    Top = 8490
    Width = 2520
    Height = 255
    TabIndex = 86
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
    Left = 13155
    Top = 8820
    Width = 2430
    Height = 285
    TabIndex = 85
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
  Begin Label Label1
    Caption = "Bill Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 6225
    Top = 1020
    Width = 810
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
  Begin Label Label1
    Caption = "Bill No."
    Index = 3
    ForeColor = &HFF0000&
    Left = 3900
    Top = 1020
    Width = 690
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
  Begin Label Label2
    BackColor = &HFFFFFF&
    Left = 0
    Top = 990
    Width = 9270
    Height = 285
    TabIndex = 76
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 420
    Width = 180
    Height = 540
    TabIndex = 75
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
    Caption = "Remark"
    Index = 20
    ForeColor = &HFF0000&
    Left = 195
    Top = 2250
    Width = 735
    Height = 240
    TabIndex = 73
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
    Caption = "Partciular"
    Index = 19
    ForeColor = &HFF0000&
    Left = 195
    Top = 1935
    Width = 930
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
  Begin Label Label1
    Caption = "Total"
    Index = 18
    ForeColor = &H0&
    Left = 12210
    Top = 10335
    Width = 420
    Height = 210
    Visible = 0   'False
    TabIndex = 68
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &H0&
    Left = 7425
    Top = 10455
    Width = 315
    Height = 435
    Visible = 0   'False
    TabIndex = 67
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "To Booking  Date And Time"
    Index = 17
    ForeColor = &H0&
    Left = 750
    Top = 10500
    Width = 2295
    Height = 210
    Visible = 0   'False
    TabIndex = 66
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
    Caption = "Particulars"
    Index = 14
    ForeColor = &H0&
    Left = 765
    Top = 10755
    Width = 810
    Height = 210
    Visible = 0   'False
    TabIndex = 62
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
    Caption = "Pax @ Rate"
    Index = 13
    ForeColor = &HFF0000&
    Left = 5040
    Top = 1320
    Width = 1125
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
  Begin Label Label1
    Caption = "No Of Paxs"
    Index = 11
    ForeColor = &HFF0000&
    Left = 2580
    Top = 1320
    Width = 1050
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
  Begin Label LableCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 180
    Top = 3885
    Width = 480
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
  Begin Label LableAt
    Caption = "%"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2115
    Top = 3885
    Width = 165
    Height = 240
    Visible = 0   'False
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
  Begin Label LableDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &H0&
    Left = 45
    Top = 3885
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 57
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
  Begin Label Label1
    Caption = "DocID"
    Index = 12
    ForeColor = &HC00000&
    Left = 8730
    Top = 90
    Width = 555
    Height = 210
    TabIndex = 31
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
  Begin Label Label1
    Caption = "Balance"
    Index = 9
    ForeColor = &H0&
    Left = 2520
    Top = 9165
    Width = 615
    Height = 210
    Visible = 0   'False
    TabIndex = 55
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &H0&
    Left = 3645
    Top = 3885
    Width = 165
    Height = 180
    Visible = 0   'False
    TabIndex = 53
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &HFF0000&
    Left = 5805
    Top = 3885
    Width = 150
    Height = 240
    Visible = 0   'False
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
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 3780
    Top = 3885
    Width = 480
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
  Begin Label Label1
    Caption = "Cash Recd."
    Index = 8
    ForeColor = &H0&
    Left = 8310
    Top = 10230
    Width = 900
    Height = 210
    Visible = 0   'False
    TabIndex = 47
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
    Caption = "Tip Amount"
    Index = 7
    ForeColor = &H0&
    Left = 8310
    Top = 10485
    Width = 975
    Height = 210
    Visible = 0   'False
    TabIndex = 46
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
    Caption = "To Refund"
    Index = 2
    ForeColor = &H0&
    Left = 8310
    Top = 10740
    Width = 870
    Height = 210
    Visible = 0   'False
    TabIndex = 45
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
    Caption = "BookingNo"
    Index = 35
    ForeColor = &HFF0000&
    Left = 195
    Top = 1305
    Width = 1035
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
  Begin Label Label1
    Caption = "Credit Card No."
    Index = 26
    ForeColor = &H0&
    Left = 2520
    Top = 9420
    Width = 1245
    Height = 210
    Visible = 0   'False
    TabIndex = 42
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
    Caption = "Rect.Date"
    Index = 24
    ForeColor = &H0&
    Left = 105
    Top = 9675
    Width = 825
    Height = 210
    Visible = 0   'False
    TabIndex = 41
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
    Caption = "Credit Card Holder"
    Index = 21
    ForeColor = &H0&
    Left = 2520
    Top = 9675
    Width = 1485
    Height = 210
    Visible = 0   'False
    TabIndex = 40
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
    Caption = "From Booking  Date And Time"
    Index = 10
    ForeColor = &H0&
    Left = 765
    Top = 10245
    Width = 2475
    Height = 210
    Visible = 0   'False
    TabIndex = 39
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
    Caption = "Rect.No."
    Index = 15
    ForeColor = &H0&
    Left = 105
    Top = 9420
    Width = 720
    Height = 210
    Visible = 0   'False
    TabIndex = 37
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
    Caption = "V.Type "
    Index = 4
    ForeColor = &HFF0000&
    Left = 12240
    Top = 10590
    Width = 720
    Height = 240
    Visible = 0   'False
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 13080
    Top = 10515
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 33
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
  Begin Label Label1
    Caption = "Party Name"
    Index = 5
    ForeColor = &HFF0000&
    Left = 195
    Top = 1635
    Width = 1110
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
  Begin Label Label1
    Caption = "Hall Name"
    Index = 0
    ForeColor = &H0&
    Left = 765
    Top = 10005
    Width = 795
    Height = 210
    Visible = 0   'False
    TabIndex = 30
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
  Begin Menu Popup
    Visible = 0   'False
    Caption = ""
    NegotiatePosition = -1  'True
    Begin Menu PopupEnt
      Index = 0
      Caption = "Estimate Entry"
    End
  End
End

Attribute VB_Name = "HallBill"

Private global_148 As Integer
Private global_150 As Integer
Private global_52 As Integer
Private global_168 As Double
Private global_116 As Integer
Private global_136 As Integer

Private Sub DGVType_UnknownEvent_9 'FD3C48
  'Data Table: 59EE40
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  Dim var_3701 As Double
  loc_FD3A8C: On Error Goto loc_FD3C40
  loc_FD3A9E: Me.DGVType.Visible = False
  loc_FD3ABD: If (Me.RecordCount > 0) Then
  loc_FD3B0F:   Set var_CC = Me.Txt
  loc_FD3B15:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD3B1D:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD3B75:   Set var_B4 = Me.DGVType
  loc_FD3B8C:   Set var_CC = Me.Txt
  loc_FD3B92:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD3B9A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD3BEE:   global_120 = CStr(Me.Fields.Item("NCat").Value)
  loc_FD3BFF: End If
  loc_FD3C1D: Set var_B0 = Me.Txt
  loc_FD3C23: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD3C2B: var_B4.SetFocus
  loc_FD3C3F: Exit Sub
  loc_FD3C40: ' Referenced from: FD3A8C
  loc_FD3C40: Proc_6_60_E62BC4(var_B4)
  loc_FD3C45: Exit Sub
  loc_FD3C46: var_3701 = 
End Sub

Private Sub DGHall_UnknownEvent_9 'F5BCE8
  'Data Table: 59EE40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5BBC8: On Error Goto loc_F5BCE2
  loc_F5BBDA: Me.DGHall.Visible = False
  loc_F5BBF9: If (Me.RecordCount > 0) Then
  loc_F5BC38:   Set var_B4 = Me.Txt
  loc_F5BC3E:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5BC46:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5BC79:   var_B0 = Me.Fields.Item("Code")
  loc_F5BC98:   Set var_B4 = Me.Txt
  loc_F5BC9E:   Call 0.Method_DGHall_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5BCA6:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5BCBC: End If
  loc_F5BCC7: Set var_A8 = Me.Txt
  loc_F5BCCD: Call 0.Method_DGHall_UnknownEvent_90 (CInt(5))
  loc_F5BCD5: var_B0.SetFocus
  loc_F5BCE1: Exit Sub
  loc_F5BCE2: ' Referenced from: F5BBC8
  loc_F5BCE2: Proc_6_60_E62BC4(var_B0)
  loc_F5BCE7: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F35844
  'Data Table: 59EE40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3573B: Me.DGParty.Visible = False
  loc_F3575A: If (Me.RecordCount > 0) Then
  loc_F35799:   Set var_B4 = Me.Txt
  loc_F3579F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F357A7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F357DA:   var_B0 = Me.Fields.Item("Code")
  loc_F357F9:   Set var_B4 = Me.Txt
  loc_F357FF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(3), var_B8)
  loc_F35807:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3581D: End If
  loc_F35828: Set var_A8 = Me.Txt
  loc_F3582E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(3))
  loc_F35836: var_B0.SetFocus
  loc_F35842: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '13231E0
  'Data Table: 59EE40
  Dim var_90 As TextBox
  Dim var_9C As Variant
  Dim var_9E As Integer
  Dim var_8C As DataGrid
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_98 As Fields15
  Dim var_94 As String
  loc_1322A63: Set var_8C = Me.Txt
  loc_1322A69: Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1322A71: var_90.SelStart = 0
  loc_1322A8A: Set var_8C = Me.Txt
  loc_1322A90: Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1322A98: var_94 = var_90.Text
  loc_1322AAB: Set var_98 = Me.Txt
  loc_1322AB1: Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_1322AB9: var_9C.SelLength = Len(var_94)
  loc_1322AD6: Set var_8C = Me.Txt
  loc_1322ADC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1322AEA: Proc_6_74_E226B0(var_90)
  loc_1322AF6: Call Proc_124_87_F28930(var_90)
  loc_1322AFE: var_9E = Index
  loc_1322B09: If (var_9E = CInt(0)) Then
  loc_1322B1F:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_1322B78:   Set var_8C = Me.Txt
  loc_1322B7E:   Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94)
  loc_1322B86:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1322B9E:   If (var_9E Or (var_94 = vbNullString)) Then
  loc_1322BA1:     Exit Sub
  loc_1322BA2:   End If
  loc_1322BAF:   Set var_8C = Me.Txt
  loc_1322BB5:   Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1322BBD:   var_94 = var_90.Text
  loc_1322BC5:   var_D8 = CVar(var_94) 'String
  loc_1322C0A:   If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_1322C13:     Me.MoveFirst
  loc_1322C38:     Set var_8C = Me.Txt
  loc_1322C3E:     Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1322C46:     0 = var_90.Text
  loc_1322C54:     Proc_6_17_EAA2B0(var_D8, CVar(var_94))
  loc_1322C6A:     Me.Find CStr(1 & var_D8), var_FC, 
  loc_1322C82:   End If
  loc_1322C85: Else
  loc_1322C8D:   If (var_9E = CInt(3)) Then
  loc_1322CDE:     Set var_8C = Me.Txt
  loc_1322CE4:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1322D04:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1322D07:       Exit Sub
  loc_1322D08:     End If
  loc_1322D15:     Set var_8C = Me.Txt
  loc_1322D1B:     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1322D23:     var_94 = var_90.Text
  loc_1322D2B:     var_D8 = CVar(var_94) 'String
  loc_1322D70:     If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_1322D79:       Me.MoveFirst
  loc_1322D9E:       Set var_8C = Me.Txt
  loc_1322DA4:       Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1322DAC:       0 = var_90.Text
  loc_1322DBA:       Proc_6_17_EAA2B0(var_D8, CVar(var_94))
  loc_1322DD0:       Me.Find CStr(1 & var_D8), var_FC, 
  loc_1322DE8:     End If
  loc_1322DEB:   Else
  loc_1322DF3:     If (var_9E = CInt(5)) Then
  loc_1322E44:       Set var_8C = Me.Txt
  loc_1322E4A:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1322E6A:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_1322E6D:         Exit Sub
  loc_1322E6E:       End If
  loc_1322E7B:       Set var_8C = Me.Txt
  loc_1322E81:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_1322E89:       var_94 = var_90.Text
  loc_1322E91:       var_D8 = CVar(var_94) 'String
  loc_1322ED6:       If CBool(var_D8 <> Me.Fields.Item("Name").Value) Then
  loc_1322EDF:         Me.MoveFirst
  loc_1322F04:         Set var_8C = Me.Txt
  loc_1322F0A:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_1322F12:         0 = var_90.Text
  loc_1322F20:         Proc_6_17_EAA2B0(var_D8, CVar(var_94))
  loc_1322F36:         Me.Find CStr(1 & var_D8), var_FC, 
  loc_1322F4E:       End If
  loc_1322F51:     Else
  loc_1322F59:       If (var_9E = CInt(7)) Then
  loc_1322F78:         Me.Recordset15.CursorLocation = 3
  loc_1322F9E:         var_94 = "Select DocId As Code, Convert(varchar(10),VNo) As Name,PartyName as Party,Vdate From HallBook where RestCode ='" & global_56
  loc_1322FAF:         Me.Open CVar(var_94 & "' and Docid not in (Select BookDocId from HallSale1) Order by VNo"), CVar(MemVar_1F92044), 3
  loc_1322FC3:         CVarUnk
  loc_1322FC8:         VerifyVarObj
  loc_1322FCE:         Set var_8C = Me.DGBookNo
  loc_1322FD4:         LateIdStAd
  loc_1323030:         Set var_8C = Me.Txt
  loc_1323036:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_132303E:         var_8C = var_90.Text
  loc_1323056:         If (New Or (var_94 = vbNullString)) Then
  loc_1323059:           Exit Sub
  loc_132305A:         End If
  loc_1323067:         Set var_8C = Me.Txt
  loc_132306D:         Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94)
  loc_1323075:         1 = var_90.Text
  loc_132307D:         var_D8 = CVar(var_94) 'String
  loc_132309E:         var_9C = Me.Fields.Item("Name")
  loc_13230C2:         If CBool(var_D8 <> var_9C.Value) Then
  loc_13230CB:           Me.MoveFirst
  loc_13230F0:           Set var_8C = Me.Txt
  loc_13230F6:           Call 0.Method_Txt_GotFocus0 (Index, var_90, var_94, "Name =")
  loc_13230FE:           0 = var_90.Text
  loc_132310C:           Proc_6_17_EAA2B0(var_D8, CVar(var_94), 1)
  loc_1323122:           Me.Find CStr(var_FC & var_D8), -1, 
  loc_132313A:         End If
  loc_132313D:       Else
  loc_1323145:         If Not (var_9E = CInt(&HF)) Then
  loc_1323150:           If Not (var_9E = CInt(&HE)) Then
  loc_132315B:             If (var_9E = CInt(&HD)) Then
  loc_132315E:             End If
  loc_132315E:           End If
  loc_132316D:           Set var_8C = Me.Txt
  loc_1323173:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_132317B:           var_90.SelStart = 0
  loc_1323194:           Set var_8C = Me.Txt
  loc_132319A:           Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_13231B5:           Set var_98 = Me.Txt
  loc_13231BB:           Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_13231C3:           var_9C.SelLength = Len(var_90.Text)
  loc_13231D6:         End If
  loc_13231D6:       End If
  loc_13231D6:     End If
  loc_13231D6:   End If
  loc_13231D6: End If
  loc_13231DB: Set var_88 = Nothing
  loc_13231DE: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '112FDBC
  'Data Table: 59EE40
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_112FA5E: If (CLng(Shift) = &H1B) Then
  loc_112FA61:   Call Proc_124_87_F28930()
  loc_112FA66:   Exit Sub
  loc_112FA67: End If
  loc_112FA6A: var_86 = KeyCode
  loc_112FA75: If (var_86 = CInt(0)) Then
  loc_112FA90:   Set var_9C = Nothing
  loc_112FA9B:   Set var_98 = Nothing
  loc_112FAC9:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_60, Shift, 0)
  loc_112FAE0: Else
  loc_112FAE8:   If (var_86 = CInt(3)) Then
  loc_112FB03:     Set var_98 = Nothing
  loc_112FB35:     Proc_6_79_11ACE04(Me.DGParty, Me.Txt, CInt(3), global_68, Shift, &HFF, 1)
  loc_112FB4A:   Else
  loc_112FB52:     If (var_86 = CInt(5)) Then
  loc_112FB6D:       Set var_9C = Nothing
  loc_112FBA6:       Proc_6_69_134A198(Me.DGHall, Me.Txt, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_112FBBD:     Else
  loc_112FBC5:       If (var_86 = CInt(7)) Then
  loc_112FBE0:         Set var_9C = Nothing
  loc_112FC19:         Proc_6_69_134A198(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_112FC2D:       End If
  loc_112FC2D:     End If
  loc_112FC2D:   End If
  loc_112FC2D: End If
  loc_112FC5E: Set var_98 = Me.DGItem
  loc_112FC75: Set var_9C = Me.DGBookNo
  loc_112FCB9: If (((((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) And (CBool(Me.DGHall.Visible) = 0)) Then
  loc_112FCDA:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HC))) Then
  loc_112FCE3:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, var_9C)
  loc_112FCE8:   End If
  loc_112FCEC:   Set var_8C = Me.TopCtrl1
  loc_112FCF2:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_112FD14:   If ((CStr(var_98) = "Add") And (KeyCode <> CInt(0))) Then
  loc_112FD2C:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_112FD35:       Proc_6_76_E52838(Shift, arg_14, 0)
  loc_112FD3A:     End If
  loc_112FD3D:   Else
  loc_112FD41:     Set var_8C = Me.TopCtrl1
  loc_112FD47:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_112FD69:     If ((CStr(var_98) = "Edit") And (KeyCode <> CInt(2))) Then
  loc_112FD81:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_112FD8A:         Proc_6_76_E52838(Shift)
  loc_112FD8F:       End If
  loc_112FD8F:     End If
  loc_112FD8F:   End If
  loc_112FDAD:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_112FDB3:     Call Proc_124_88_F0C33C(KeyCode)
  loc_112FDB8:   End If
  loc_112FDB8: End If
  loc_112FDB8: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FFB218
  'Data Table: 59EE40
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FFB01C: On Error Goto loc_FFB210
  loc_FFB022: Proc_6_58_E054C0(arg_10)
  loc_FFB02A: var_86 = KeyAscii
  loc_FFB035: If (var_86 = CInt(0)) Then
  loc_FFB054:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_FFB06A:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_FFB079:     Set var_B8 = Me.Txt
  loc_FFB084:     var_B0 = "Name"
  loc_FFB09F:     Proc_6_89_146F1AC(var_B8, KeyAscii, global_60, arg_10)
  loc_FFB0AE:   End If
  loc_FFB0B1: Else
  loc_FFB0B9:   If (var_86 = CInt(1)) Then
  loc_FFB0C6:     Set var_8C = Me.Txt
  loc_FFB0CC:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_FFB0E7:     Proc_6_42_129A86C(var_B8, arg_10, 8)
  loc_FFB0F6:   Else
  loc_FFB0FE:     If (var_86 = CInt(7)) Then
  loc_FFB11D:       If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_FFB14A:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_FFB159:       End If
  loc_FFB15C:     Else
  loc_FFB164:       If (var_86 = CInt(5)) Then
  loc_FFB183:         If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_FFB18A:           Set var_B8 = Me.Txt
  loc_FFB1B0:           Proc_6_89_146F1AC(var_B8, KeyAscii, global_72, arg_10, "Name")
  loc_FFB1BF:         End If
  loc_FFB1C2:       Else
  loc_FFB1CA:         If Not (var_86 = CInt(&HF)) Then
  loc_FFB1D5:           If (var_86 = CInt(&HE)) Then
  loc_FFB1D8:           End If
  loc_FFB1E2:           Set var_8C = Me.Txt
  loc_FFB1E8:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, 0, 0)
  loc_FFB203:           Proc_6_42_129A86C(var_B8, arg_10, 8, 2)
  loc_FFB20F:         End If
  loc_FFB20F:       End If
  loc_FFB20F:     End If
  loc_FFB20F:   End If
  loc_FFB20F: End If
  loc_FFB20F: Exit Sub
  loc_FFB210: ' Referenced from: FFB01C
  loc_FFB210: Proc_6_60_E62BC4(0, 0)
  loc_FFB215: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '102A46C
  'Data Table: 59EE40
  Dim var_86 As Integer
  Dim var_98 As TextBox
  Dim var_12C As Double
  Dim var_AC As TextBox
  Dim var_134 As Double
  Dim var_B8 As TextBox
  Dim var_13C As Double
  Dim var_C4 As TextBox
  Dim var_144 As Double
  Dim var_E8 As Variant
  Dim var_120 As TextBox
  Dim var_8C As DataGrid
  loc_102A26F: var_86 = KeyCode
  loc_102A27A: If Not (var_86 = CInt(&HF)) Then
  loc_102A285:   If (var_86 = CInt(&HE)) Then
  loc_102A288:   End If
  loc_102A28F:   Set var_8C = Me.TxtGt
  loc_102A295:   Call 0.Method_Txt_KeyUp8 (var_8E)
  loc_102A2A7:   Set var_94 = Me.TxtGt
  loc_102A2AD:   Call 0.Method_Txt_KeyUp0 (var_8E, var_98)
  loc_102A2C2:   var_12C = Val(var_98.Text)
  loc_102A2CC:   Set var_A0 = Me.TextGt
  loc_102A2D2:   Call 0.Method_Txt_KeyUp8 (var_A2, var_12C)
  loc_102A2E4:   Set var_A8 = Me.TextGt
  loc_102A2EA:   Call 0.Method_Txt_KeyUp0 (var_A2, var_AC)
  loc_102A2FF:   var_134 = Val(var_AC.Text)
  loc_102A310:   Set var_B4 = Me.Txt
  loc_102A316:   Call 0.Method_Txt_KeyUp0 (CInt(&HF), var_B8, var_BC)
  loc_102A32B:   var_13C = Val(var_BC)
  loc_102A33C:   Set var_C0 = Me.Txt
  loc_102A342:   Call 0.Method_Txt_KeyUp0 (CInt(8), var_C4, var_C8)
  loc_102A357:   var_144 = Val(var_C8)
  loc_102A37E:   var_E8 = CVar((((var_12C + var_B8.Text) - var_C4.Text) - var_144)) 'Double
  loc_102A39C:   Set var_11C = Me.Txt
  loc_102A3A2:   Call 0.Method_Txt_KeyUp0 (CInt(&HD), var_120, CStr(Format(var_E8, "0.00")), 1)
  loc_102A3AA:   var_120.Text = 1
  loc_102A3E3: Else
  loc_102A3EB:   If Not (var_86 = CInt(&H12)) Then
  loc_102A3F6:     If (var_86 = CInt(&H11)) Then
  loc_102A3F9:     End If
  loc_102A3FE:     Call Proc_124_95_14FBADC(&H32, var_144)
  loc_102A406:   Else
  loc_102A40E:     If (var_86 = CInt(3)) Then
  loc_102A42D:       If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_102A43A:         var_9C = "Name"
  loc_102A459:         Proc_6_80_FF0AC0(Me.Txt, CInt(3), global_68)
  loc_102A468:       End If
  loc_102A468:     End If
  loc_102A468:   End If
  loc_102A468: End If
  loc_102A468: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C0B4
  'Data Table: 59EE40
  loc_E4C092: Set var_88 = Me.Txt
  loc_E4C098: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C0A6: Proc_6_73_E22704(var_8C)
  loc_E4C0B2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '191A670
  'Data Table: 59EE40
  Dim var_9C As Integer
  Dim var_A4 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_A0 As Variant
  Dim var_AC As String
  Dim var_C8 As Variant
  Dim var_140 As String
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_16C As TextBox
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1BC As Variant
  Dim var_E8 As Variant
  Dim var_13C As String
  Dim unk_59EE5F As Connection15
  Dim var_A8 As Variant
  Dim var_168 As Variant
  Dim var_108 As Variant
  Dim var_D8 As Variant
  Dim var_92 As Integer
  Dim var_98 As Recordset15
  Dim var_8C As Recordset15
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_144 As String
  Dim var_138 As Variant
  Dim var_224 As TextBox
  Dim Txt_Validate2 As Variant
  Dim var_22C As Double
  Dim var_244 As Double
  Dim var_24C As Double
  Dim var_234 As TextBox
  Dim var_254 As Double
  Dim var_170 As String
  Dim var_23C As TextBox
  loc_1917B3C: On Error Goto loc_191A668
  loc_1917B42: var_9C = Cancel
  loc_1917B4D: If (var_9C = CInt(0)) Then
  loc_1917B5B:   Set var_A0 = Me.Txt
  loc_1917B61:   Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_1917B69:   var_AC = "Voucher Type"
  loc_1917B8A:   If (Proc_6_27_EA565C(var_A4, var_AC) = 0) Then
  loc_1917B98:     Set var_A0 = Me.Txt
  loc_1917B9E:     Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_1917BA6:     var_A4.SetFocus
  loc_1917BB4:     arg_10 = &HFF
  loc_1917BB7:     Exit Sub
  loc_1917BB8:   End If
  loc_1917C06:   Set var_A0 = Me.Txt
  loc_1917C0C:   Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_1917C14:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A4.Text
  loc_1917C2C:   If (arg_10 Or (var_AC = vbNullString)) Then
  loc_1917C3C:     Set var_A0 = Me.Txt
  loc_1917C42:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1917C4A:     var_A4.Text = vbNullString
  loc_1917C63:     Set var_A0 = Me.Txt
  loc_1917C69:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1917C71:     var_A4.Tag = vbNullString
  loc_1917C83:     global_120 = vbNullString
  loc_1917C8A:   Else
  loc_1917CC5:     Set var_A8 = Me.Txt
  loc_1917CCB:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1917CD3:     var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1917D24:     Set var_A8 = Me.Txt
  loc_1917D2A:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1917D32:     var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1917D65:     var_A4 = Me.Fields.Item("NCat")
  loc_1917D7C:     global_120 = CStr(var_A4.Value)
  loc_1917D8D:   End If
  loc_1917D91:   Set var_A0 = Me.TopCtrl1
  loc_1917D97:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_1917D9F:   var_AC = CStr()
  loc_1917DB0:   If (var_AC = "Add") Then
  loc_1917DB9:     Call Proc_124_90_11BE3FC(MemVar_1F92044)
  loc_1917DCC:     Set var_A0 = Me.Txt
  loc_1917DD2:     Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_1917DDA:     var_A4.Text = var_AC
  loc_1917DE9:   End If
  loc_1917DED:   Set var_A0 = Me.TopCtrl1
  loc_1917DF3:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_1917E0C:   If (CStr() = "Add") Then
  loc_1917E1A:     If (global_156 = "Automatic") Then
  loc_1917E2A:       Set var_A0 = Me.Txt
  loc_1917E30:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1917E38:       var_A4.Enabled = False
  loc_1917E47:     Else
  loc_1917E54:       Set var_A0 = Me.Txt
  loc_1917E5A:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1917E62:       var_A4.Enabled = True
  loc_1917E79:       Set var_A0 = Me.Txt
  loc_1917E7F:       Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1917E87:       var_A4.SetFocus
  loc_1917E93:     End If
  loc_1917E93:   End If
  loc_1917E96: Else
  loc_1917E9E:   If (var_9C = CInt(1)) Then
  loc_1917EAC:     Set var_A0 = Me.Txt
  loc_1917EB2:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1917EBA:     var_AC = "Vr. No"
  loc_1917EDB:     If (Proc_6_27_EA565C(var_A4, var_AC) = 0) Then
  loc_1917EE9:       Set var_A0 = Me.Txt
  loc_1917EEF:       Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_1917EF7:       var_A4.SetFocus
  loc_1917F05:       arg_10 = &HFF
  loc_1917F08:       Exit Sub
  loc_1917F09:     End If
  loc_1917F17:     Set var_A0 = Me.Txt
  loc_1917F1D:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC)
  loc_1917F25:     arg_10 = var_A4.Text
  loc_1917F3D:     If (CDbl(var_AC) = CDbl(0)) Then
  loc_1917F59:       MsgBox("Vr. No Can Not Be 0", 0, var_F8, var_118, var_138)
  loc_1917F73:       Set var_A0 = Me.Txt
  loc_1917F79:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1917F81:       var_A4.SetFocus
  loc_1917F8F:       arg_10 = &HFF
  loc_1917F92:       Exit Sub
  loc_1917F93:     End If
  loc_1917F97:     Set var_A0 = Me.TopCtrl1
  loc_1917F9D:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1917FB6:     If (CStr(var_A4) = "Add") Then
  loc_1917FDE:       Set var_A0 = Me.Txt
  loc_1917FE4:       Call 0.Method_Txt_Validate0 (CInt(0), var_A4)
  loc_191800B:       Set var_A8 = Me.Txt
  loc_1918011:       Call 0.Method_Txt_Validate0 (CInt(0), var_C8, var_144)
  loc_1918019:       5 = var_C8.Tag
  loc_1918026:       var_D8 = Space((CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_A4.Tag) - Len(var_144)))
  loc_191802E:       var_118 = ( + "Vr. No Can Not Be 0")
  loc_1918042:       var_138 = Space((5 - Len(global_112)))
  loc_191804A:       var_154 = (var_118 + var_138)
  loc_1918057:       var_164 = (var_154 + CVar(global_112))
  loc_191806E:       Set var_168 = Me.Txt
  loc_1918074:       Call 0.Method_Txt_Validate0 (CInt(1), var_16C, var_170)
  loc_191807C:       8 = var_16C.Text
  loc_1918089:       var_180 = Space((var_164 - Len(var_170)))
  loc_1918091:       var_190 = ( + var_180)
  loc_19180A3:       Set var_194 = Me.Txt
  loc_19180A9:       Call 0.Method_Txt_Validate0 (CInt(1), var_198)
  loc_19180BC:       var_1BC = (var_190 + CVar(var_198.Text))
  loc_1918115:       Set var_A0 = Me.Txt
  loc_191811B:       Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_1918123:       var_A4.Text = CStr(var_1BC)
  loc_191813F:       Me.LblVPrefix.Caption = global_112
  loc_1918147:     End If
  loc_191814B:     Set var_A0 = Me.TopCtrl1
  loc_1918151:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1918159:     var_AC = CStr()
  loc_191816A:     If (var_AC = "Add") Then
  loc_191819A:       Set var_A0 = Me.Txt
  loc_19181A0:       Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC, "Select Count(*) From HallSale1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_19181B1:       var_13C = var_C8 & var_AC
  loc_19181C1:       unk_59EE5F.Execute var_13C & "'", 0, var_168
  loc_19181D1:        = var_C8.Item()
  loc_19181D9:        = var_168.Value
  loc_1918206:       If (var_A4.Text.Fields > 0) Then
  loc_191820F:         Call 0.Method_arg_50 (var_AC)
  loc_1918230:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_AC), var_118, var_138)
  loc_1918246:         Call Proc_124_90_11BE3FC(MemVar_1F92044)
  loc_1918256:         If (var_AC = vbNullString) Then
  loc_1918263:           Set var_A0 = Me.Txt
  loc_1918269:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1918271:           var_A4.SetFocus
  loc_191827F:           arg_10 = &HFF
  loc_1918282:           Exit Sub
  loc_1918283:         End If
  loc_1918289:         Call Proc_124_90_11BE3FC(MemVar_1F92044, var_AC)
  loc_191829C:         Set var_A0 = Me.Txt
  loc_19182A2:         Call 0.Method_Txt_Validate0 (CInt(4), var_A4, var_AC)
  loc_19182AA:         var_A4.Text = arg_10
  loc_19182BB:         arg_10 = &HFF
  loc_19182BE:         Exit Sub
  loc_19182BF:       End If
  loc_19182BF:     End If
  loc_19182C2:   Else
  loc_19182CA:     If (var_9C = CInt(2)) Then
  loc_19182DB:       Set var_A0 = Me.Txt
  loc_19182E1:       Call 0.Method_Txt_Validate0 (CInt(2), var_A4, var_AC)
  loc_19182E9:       arg_10 = var_A4.Text
  loc_19182FF:       var_118 = Len(Trim(CVar(var_AC)))
  loc_1918319:       If (var_118 = 0) Then
  loc_191832F:         Set var_A0 = Me.Txt
  loc_1918335:         Call 0.Method_Txt_Validate0 (CInt(2), var_A4)
  loc_191833D:         var_A4.Text = CStr(MemVar_1F920EC)
  loc_191834F:       Else
  loc_1918359:         Set var_A0 = Me.Txt
  loc_191835F:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_191837F:         Set var_C8 = Me.Txt
  loc_1918385:         Call 0.Method_Txt_Validate0 (Cancel, var_168)
  loc_191838D:         var_168.Text = Proc_6_33_1512840(var_A4)
  loc_19183A0:       End If
  loc_19183AD:       Set var_A0 = Me.Txt
  loc_19183B3:       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_19183BB:       var_AC = var_A4.Text
  loc_19183D6:       Set var_A8 = Me.Txt
  loc_19183DC:       Call 0.Method_Txt_Validate0 (Cancel, var_C8, var_13C)
  loc_19183E4:       (CDate(var_AC) >= MemVar_1F920F4) = var_C8.Text
  loc_1918406:       If Not((var_AC And (CDate(var_13C) <= MemVar_1F920FC))) Then
  loc_1918414:         var_F8 = "Date Validate"
  loc_191841F:         var_C4 = "V.Date Not Between Current Fin. Year"
  loc_191842A:         MsgBox(var_C4, 0, var_F8, var_118, var_138)
  loc_1918444:         Set var_A0 = Me.Txt
  loc_191844A:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1918452:         var_A4.SetFocus
  loc_1918460:         arg_10 = &HFF
  loc_1918463:         Exit Sub
  loc_1918464:       End If
  loc_1918468:       Set var_A0 = Me.TopCtrl1
  loc_191846E:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_1918476:       var_AC = CStr(var_A4)
  loc_191848C:       Set var_A4 = Me.Txt
  loc_1918492:       Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_19184BB:       If ((var_AC = "Add") And (var_A8.Text = vbNullString)) Then
  loc_19184C4:         Call Proc_124_90_11BE3FC(MemVar_1F92044)
  loc_19184D7:         Set var_A0 = Me.Txt
  loc_19184DD:         Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_19184E5:         var_A4.Text = var_AC
  loc_19184F4:       End If
  loc_19184F7:     Else
  loc_19184FF:       If (var_9C = CInt(3)) Then
  loc_1918519:         If (Me.RecordCount <= 0) Then
  loc_191851C:           GoTo loc_1918698
  loc_191851F:         End If
  loc_1918525:         Me.MoveFirst
  loc_1918537:         Set var_A0 = Me.Txt
  loc_191853D:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1918545:         var_AC = var_A4.Text
  loc_191855C:         If (var_AC <> vbNullString) Then
  loc_191857E:           Set var_A0 = Me.Txt
  loc_1918584:           Call 0.Method_Txt_Validate0 (CInt(3), var_A4, var_AC, "Name like '")
  loc_191858C:           0 = var_A4.Text
  loc_19185A5:           Me.Find 1 & var_AC & "*'", var_C4, var_AC
  loc_19185BD:         Else
  loc_19185C0:         Else
  loc_19185D7:           If (Me.AbsolutePosition > 0) Then
  loc_1918615:             Set var_A8 = Me.Txt
  loc_191861B:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1918623:             var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1918656:             var_A4 = Me.Fields.Item("Code")
  loc_1918674:             Set var_A8 = Me.Txt
  loc_191867A:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1918682:             var_C8.Tag = CStr(var_A4.Value)
  loc_1918698:           End If
  loc_1918698:           ' Referenced from:       191851C
  loc_1918698:         End If
  loc_191869B:       Else
  loc_19186A3:         If (var_9C = CInt(7)) Then
  loc_19186C6:           var_B2 = Me.EOF
  loc_19186F4:           Set var_A0 = Me.Txt
  loc_19186FA:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_191871A:           If (((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) Or (var_A4.Text = vbNullString)) Then
  loc_191872A:             Set var_A0 = Me.Txt
  loc_1918730:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_1918738:             var_A4.Text = vbNullString
  loc_1918751:             Set var_A0 = Me.Txt
  loc_1918757:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_191875F:             var_A4.Tag = vbNullString
  loc_191876E:           Else
  loc_19187A9:             Set var_A8 = Me.Txt
  loc_19187AF:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1918808:             Set var_A8 = Me.Txt
  loc_191880E:             Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_1918816:             var_C8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1918867:             Set var_A8 = Me.Txt
  loc_191886D:             Call 0.Method_Txt_Validate0 (CInt(2), var_C8)
  loc_1918897:             If (Me.Fields.Item("VDate").Value > CDate(CDate(CStr(Me.Fields.Item("Name").Value)))) Then
  loc_19188B3:               MsgBox("Bill Date can't be before Booking Date", 0, var_F8, var_118, var_138)
  loc_19188C5:               arg_10 = &HFF
  loc_19188C8:               Exit Sub
  loc_19188C9:             End If
  loc_19188C9:           End If
  loc_19188C9:           Call Proc_124_85_10386F0(arg_10)
  loc_19188D2:           Set var_A0 = Me.TopCtrl1
  loc_19188D8:           Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_19188E0:           var_AC = CStr()
  loc_19188F6:           Set var_A4 = Me.Txt
  loc_19188FC:           Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1918925:           If ((var_AC = "Add") And (var_A8.Text = vbNullString)) Then
  loc_191892E:             Call Proc_124_90_11BE3FC(MemVar_1F92044)
  loc_1918941:             Set var_A0 = Me.Txt
  loc_1918947:             Call 0.Method_Txt_Validate0 (CInt(4), var_A4)
  loc_191894F:             var_A4.Text = var_AC
  loc_191895E:           End If
  loc_191896D:           Me.FGrid.Redraw = False
  loc_1918982:           Set var_A0 = Me.FGrid
  loc_1918988:           var_A0.Rows = 1
  loc_1918992:           var_92 = 1
  loc_1918999:           Set var_98 = New 
  loc_19189A4:           Me.var_A0.CursorLocation = 3
  loc_19189B7:           Set var_A0 = Me.Txt
  loc_19189BD:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC)
  loc_19189C5:           var_92 = var_A4.Tag
  loc_19189E8:           var_13C = "Select H.*,H1.QTYISS,H1.ITEM,H1.REMARKS,H1.AMOUNT AS AMOUNT1,H1.Rate as Rate1,H1.TaxAmt as Tax1,H1.Total as Total1,I.NAME AS ITEMNAME,I.RateEdit,IR.Rate as IRate,H1.TaxPer,IC.TAXSTRU,H.advance AS Advance,H.RECTNO,H.RECTDATE From (((HallBook H  LEFT JOIN HallBook1 H1 on H.DocId=H1.DocId)LEFT JOIN ITEMMAST I ON H1.ITEM=I.CODE And H1.RoomNo = I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.RestCode=H1.RoomNo and IR.ItemCode=H1.Item WHERE H.DOCID='" & var_AC
  loc_19189F6:           var_98.Open CVar(var_13C & "' and H1.Rate<>0 Order by H1.DOCID,H1.SNo"), CVar(MemVar_1F92044), 3
  loc_1918A20:           If (var_98.RecordCount > 0) Then
  loc_1918A30:             var_E8 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_1918A76:             unk_59EE5F.Execute CStr(CDate(CDate(CStr(Me.Fields.Item("Name").Value))) & var_98.Fields.Item("DocID").Value & "'"), var_138, -1
  loc_1918A81:             Set var_8C = var_A8
  loc_1918AE1:             If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_1918AFE:               var_A4 = var_8C.Fields.Item("Advance")
  loc_1918B0F:               var_AC = CStr(var_A4.Value)
  loc_1918B23:               Call 0.Method_Txt_Validate0 (CInt(8), var_C8, var_AC, Me.Txt)
  loc_1918B2B:               var_C8.Text = 1
  loc_1918B44:             Else
  loc_1918B52:               Set var_A0 = Me.Txt
  loc_1918B58:               Call 0.Method_Txt_Validate0 (CInt(8), var_A4, "0.00")
  loc_1918B60:               var_A4.Text = -1
  loc_1918B6C:             End If
  loc_1918B78:             Set var_A0 = Me.TxtGt
  loc_1918B7E:             Call 0.Method_Txt_Validate8 (var_B2, var_94)
  loc_1918B89:             For var_1C4 = var_AC To var_B2:         1 = var_1C4 'Integer
  loc_1918B9C:               Set var_A0 = Me.LblCap
  loc_1918BA2:               Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1918BC1:               If (var_A4.Tag = "STOT") Then
  loc_1918BDE:                 var_A4 = var_98.Fields.Item("Total")
  loc_1918BFC:                 Set var_A8 = Me.TxtGt
  loc_1918C02:                 Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1918C0A:                 var_C8.Text = CStr(var_A4.Value)
  loc_1918C23:               Else
  loc_1918C30:                 Set var_A0 = Me.LblCap
  loc_1918C36:                 Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1918C55:                 If (var_A4.Tag = "HLR") Then
  loc_1918C72:                   var_A4 = var_98.Fields.Item("HallRent")
  loc_1918C90:                   Set var_A8 = Me.TxtGt
  loc_1918C96:                   Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1918C9E:                   var_C8.Text = CStr(var_A4.Value)
  loc_1918CB7:                 Else
  loc_1918CC4:                   Set var_A0 = Me.LblCap
  loc_1918CCA:                   Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1918CE9:                   If (var_A4.Tag = "HLP") Then
  loc_1918D06:                     var_A4 = var_98.Fields.Item("TotalPerCover")
  loc_1918D24:                     Set var_A8 = Me.TxtGt
  loc_1918D2A:                     Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1918D32:                     var_C8.Text = CStr(var_A4.Value)
  loc_1918D4B:                   Else
  loc_1918D58:                     Set var_A0 = Me.LblCap
  loc_1918D5E:                     Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1918D7D:                     If (var_A4.Tag = "SDIS") Then
  loc_1918DB8:                       Set var_A8 = Me.TxtPer
  loc_1918DBE:                       Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1918DC6:                       var_C8.Text = CStr(var_98.Fields.Item("DiscPer").Value)
  loc_1918DF6:                       var_A4 = var_98.Fields.Item("DiscAmt")
  loc_1918E14:                       Set var_A8 = Me.TxtGt
  loc_1918E1A:                       Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1918E22:                       var_C8.Text = CStr(var_A4.Value)
  loc_1918E3B:                     Else
  loc_1918E48:                       Set var_A0 = Me.LblCap
  loc_1918E4E:                       Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1918E6D:                       If (var_A4.Tag = "SST") Then
  loc_1918E8A:                         var_A4 = var_98.Fields.Item("Tax")
  loc_1918EA8:                         Set var_A8 = Me.TxtGt
  loc_1918EAE:                         Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1918EB6:                         var_C8.Text = CStr(var_A4.Value)
  loc_1918ECF:                       Else
  loc_1918EDC:                         Set var_A0 = Me.LblCap
  loc_1918EE2:                         Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1918F01:                         If (var_A4.Tag = "SSTX") Then
  loc_1918F04:                           GoTo loc_19191E8
  loc_1918F07:                         End If
  loc_1918F14:                         Set var_A0 = Me.LblCap
  loc_1918F1A:                         Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1918F39:                         If (var_A4.Tag = "SSCH") Then
  loc_1918F56:                           var_A4 = var_98.Fields.Item("Servicecharge")
  loc_1918F74:                           Set var_A8 = Me.TxtGt
  loc_1918F7A:                           Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1918F82:                           var_C8.Text = CStr(var_A4.Value)
  loc_1918F9B:                         Else
  loc_1918FA8:                           Set var_A0 = Me.LblCap
  loc_1918FAE:                           Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1918FCD:                           If (var_A4.Tag = "SADD") Then
  loc_1918FEA:                             var_A4 = var_98.Fields.Item("AddAmt")
  loc_1919008:                             Set var_A8 = Me.TxtGt
  loc_191900E:                             Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_1919016:                             var_C8.Text = CStr(var_A4.Value)
  loc_191902F:                           Else
  loc_191903C:                             Set var_A0 = Me.LblCap
  loc_1919042:                             Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1919061:                             If (var_A4.Tag = "SDED") Then
  loc_191907E:                               var_A4 = var_98.Fields.Item("DedAmt")
  loc_191909C:                               Set var_A8 = Me.TxtGt
  loc_19190A2:                               Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_19190AA:                               var_C8.Text = CStr(var_A4.Value)
  loc_19190C3:                             Else
  loc_19190D0:                               Set var_A0 = Me.LblCap
  loc_19190D6:                               Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_19190F5:                               If (var_A4.Tag = "SROFF") Then
  loc_1919112:                                 var_A4 = var_98.Fields.Item("RoundOff")
  loc_1919130:                                 Set var_A8 = Me.TxtGt
  loc_1919136:                                 Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_191913E:                                 var_C8.Text = CStr(var_A4.Value)
  loc_1919157:                               Else
  loc_1919164:                                 Set var_A0 = Me.LblCap
  loc_191916A:                                 Call 0.Method_Txt_Validate0 (var_94, var_A4)
  loc_1919189:                                 If (var_A4.Tag = "SNET") Then
  loc_19191B7:                                   var_AC = CStr(var_98.Fields.Item("NetAmt").Value)
  loc_19191C4:                                   Set var_A8 = Me.TxtGt
  loc_19191CA:                                   Call 0.Method_Txt_Validate0 (var_94, var_C8)
  loc_19191D2:                                   var_C8.Text = var_AC
  loc_19191E8:                                 End If
  loc_19191E8:                               End If
  loc_19191E8:                             End If
  loc_19191E8:                           End If
  loc_19191E8:                           ' Referenced from:                   1918F04
  loc_19191E8:                         End If
  loc_19191E8:                       End If
  loc_19191E8:                     End If
  loc_19191E8:                   End If
  loc_19191E8:                 End If
  loc_19191E8:               End If
  loc_19191EB:             Next var_1C4 'Integer
  loc_19191F0:             ' Referenced from:         1919695
  loc_19191FF:             If Not(var_98.EOF) Then
  loc_191922A:               For var_1C8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)):         var_9A = var_1C8 'Byte
  loc_191923D:                 var_108 = CVar(CLng(&H14)) 'Long
  loc_1919268:                 Set var_A4 = Me.Txt
  loc_191926E:                 Call 0.Method_Txt_Validate0 (CInt(1), var_A8, var_AC, CStr(Me.FGrid.TextMatrix)))
  loc_1919276:                 var_108 = var_A8.Text
  loc_19192F9:                 If ((CVar(CLng(var_9A)) = var_AC) And (CVar(CLng(var_9A)) = Proc_6_38_E68A98(CVar(var_98.Fields.Item("Item")), CStr(Me.FGrid.TextMatrix)), CVar(CLng(9))))) Then
  loc_19192FC:                   GoTo loc_191968D
  loc_19192FF:                 End If
  loc_1919302:               Next var_1C8 'Byte
  loc_1919308:               var_C4 = vbNullString
  loc_1919312:               Set var_A0 = Me.FGrid
  loc_1919327:               Set var_21C = Me.FGrid
  loc_191932E:               var_C4 = CVar(CLng(var_92)) 'Long
  loc_1919336:               var_108 = CVar(CLng(0)) 'Long
  loc_1919340:               var_D8 = CVar(CStr(var_92)) 'String
  loc_1919347:               LateIdCallSt
  loc_191938B:               var_F8 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_92)), var_21C, CVar(var_98.Fields.Item("Item")))) 'String
  loc_1919392:               LateIdCallSt
  loc_19193DD:               var_F8 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_92)), var_21C, var_F8)) 'String
  loc_19193E4:               LateIdCallSt
  loc_1919416:               var_108 = CVar(CLng(var_92)) 'Long
  loc_191941E:               var_1D8 = CVar(CLng(3)) 'Long
  loc_191944B:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("QtyIss")), "0.00"))) 'String
  loc_1919452:               LateIdCallSt
  loc_1919488:               var_108 = CVar(CLng(var_92)) 'Long
  loc_1919490:               var_1D8 = CVar(CLng(4)) 'Long
  loc_19194BD:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("Rate1")), "0.00"))) 'String
  loc_19194C4:               LateIdCallSt
  loc_19194FA:               var_108 = CVar(CLng(var_92)) 'Long
  loc_1919502:               var_1D8 = CVar(CLng(5)) 'Long
  loc_191952F:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("Amount1")), "0.00"))) 'String
  loc_1919536:               LateIdCallSt
  loc_191956C:               var_108 = CVar(CLng(var_92)) 'Long
  loc_1919574:               var_1D8 = CVar(CLng(8)) 'Long
  loc_19195A1:               var_138 = CVar(CStr(Format(CVar(var_98.Fields.Item("TOTAL1")), "0.00"))) 'String
  loc_19195A8:               LateIdCallSt
  loc_19195D5:               var_A4 = var_98.Fields.Item("TaxStru")
  loc_19195DE:               var_108 = CVar(CLng(var_92)) 'Long
  loc_19195E6:               var_1D8 = CVar(CLng(&H10)) 'Long
  loc_191961A:               LateIdCallSt
  loc_191963C:               var_108 = CVar(CLng(&H14)) 'Long
  loc_191964F:               Set var_A0 = Me.Txt
  loc_1919655:               Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC, var_108, CVar(CLng(var_92)), var_21C, CVar(CStr(Format(CVar(var_A4), "0.00"))))
  loc_191965D:               1 = var_A4.Text
  loc_1919665:               var_D8 = CVar(var_AC) 'String
  loc_191966C:               LateIdCallSt
  loc_1919680:               Set var_21C = Nothing 
  loc_191968A:               var_92 = (var_92 + 1)
  loc_191968D:               ' Referenced from:         19192FC
  loc_1919690:               var_98.MoveNext
  loc_1919695:               GoTo loc_19191F0
  loc_1919698:             End If
  loc_19196AB:             Me.FGrid.FixedRows = 1
  loc_19196B6:           Else
  loc_19196C4:             Me.FGrid.Redraw = True
  loc_19196D2:             If (var_92 = 1) Then
  loc_19196E8:               Me.FGrid.Rows = 1
  loc_19196F4:               Set var_A8 = Me.FGrid
  loc_191970E:               var_D8 = CVar(CStr(Proc_6_127_F24F80(var_A8, CInt(0), var_92, var_21C, var_D8, 1))) 'String
  loc_1919716:               Set var_A4 = Me.FGrid
  loc_1919743:               Me.FGrid.FixedRows = 1
  loc_191974B:             End If
  loc_191974B:           End If
  loc_1919769:           Set var_A0 = Me.Txt
  loc_191976F:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_D8, -1, var_A8)
  loc_1919777:           FGrid.DispID_10000 = var_A4.Tag
  loc_1919790:           unk_59EE5F.Execute var_D8 & var_AC & "'", var_1D8, var_108
  loc_191979B:           Set var_98 = var_A8
  loc_19197B3:           ' Referenced from:         1919C8F
  loc_19197C2:           If Not(var_98.EOF) Then
  loc_19197DE:             var_C4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_19197ED:             Me.FGrid1.Row = 1
  loc_1919824:             For var_220 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)):         var_9A = var_220 'Byte
  loc_191982F:               var_C4 = CVar(CLng(var_9A)) 'Long
  loc_1919863:               Set var_A4 = Me.Txt
  loc_1919869:               Call 0.Method_Txt_Validate0 (CInt(1), var_A8, var_AC, CStr(Me.FGrid1.TextMatrix)), 7)
  loc_1919871:               var_C4 = var_A8.Text
  loc_1919892:               Set var_C8 = Me.FGrid1
  loc_19198BD:               var_16C = var_98.Fields.Item("VenueName")
  loc_19198CE:               var_144 = Proc_6_38_E68A98(CVar(var_16C), CStr(var_C8.TextMatrix)), 1, CVar(CLng(var_9A)))
  loc_19198F5:               If (var_21C And ((CByte(1) = var_AC) = var_144)) Then
  loc_19198F8:                 GoTo loc_1919C87
  loc_19198FB:               End If
  loc_19198FE:             Next var_220 'Byte
  loc_1919908:             Set var_224 = Me.FGrid1
  loc_191991E:             var_1D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1919923:             var_1F8 = 0
  loc_1919945:             var_C4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_191994A:             var_108 = 0
  loc_1919968:             var_AC = CStr(Me.FGrid1.TextMatrix))
  loc_1919976:             var_138 = CVar(CStr((Val(var_AC) + CDbl(1)))) 'String
  loc_191997D:             LateIdCallSt
  loc_19199E5:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("VenueName")), 1, CVar(CLng(Me.FGrid1.Row)), var_224, CVar(CStr(Format(CVar(var_98.Fields.Item("VenueName")), "0.00"))))) 'String
  loc_19199EC:             LateIdCallSt
  loc_1919A4D:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_1919A54:             LateIdCallSt
  loc_1919AB5:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_1919ABC:             LateIdCallSt
  loc_1919B1D:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_1919B24:             LateIdCallSt
  loc_1919B85:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_1919B8C:             LateIdCallSt
  loc_1919BDC:             var_A4 = var_98.Fields.Item("VenuCode")
  loc_1919BED:             var_118 = CVar(Proc_6_38_E68A98(CVar(var_A4), 6, CVar(CLng(Me.FGrid1.Row)), var_224, var_118)) 'String
  loc_1919BF4:             LateIdCallSt
  loc_1919C10:             Set var_A8 = Me.FGrid1
  loc_1919C3B:             Set var_A0 = Me.Txt
  loc_1919C41:             Call 0.Method_Txt_Validate0 (CInt(1), var_A4, var_AC, 7, CVar(CLng(var_A8.Row)), var_224)
  loc_1919C49:             var_118 = var_A4.Text
  loc_1919C51:             var_F8 = CVar(var_AC) 'String
  loc_1919C58:             LateIdCallSt
  loc_1919C70:             var_C4 = vbNullString
  loc_1919C79:             Txt_Validate2 = var_224.Name
  loc_1919C83:             Set var_224 = Nothing 
  loc_1919C87:             ' Referenced from:         19198F8
  loc_1919C8A:             var_98.MoveNext
  loc_1919C8F:             GoTo loc_19197B3
  loc_1919C92:           End If
  loc_1919C96:           Set var_98 = New 
  loc_1919CA1:           var_98.CursorLocation = 3
  loc_1919CB4:           Set var_A0 = Me.Txt
  loc_1919CBA:           Call 0.Method_Txt_Validate0 (CInt(7), var_A4, var_AC, Txt_Validate2, var_C4, var_224)
  loc_1919CC2:           var_F8 = var_A4.Tag
  loc_1919CF3:           var_98.Open CVar("Select * From HallBook H  WHERE H.DOCID='" & var_AC & "'"), CVar(MemVar_1F92044), 3
  loc_1919D1D:           If (var_98.RecordCount > 0) Then
  loc_1919D2D:             var_E8 = "SELECT Sum(AmtCr-AmtDr) AS Advance FROM PayChargeH WHERE VType In ('AD','AR') AND ContraDocId='"
  loc_1919D5C:             var_F8 = CVar(CLng(Me.FGrid1.Row)) & var_98.Fields.Item("DocID").Value 
  loc_1919D60:             var_108 = "'"
  loc_1919D73:             unk_59EE5F.Execute CStr(var_F8 & var_108), CVar(CStr(Format(CVar(var_98.Fields.Item("DocID")), "0.00"))), -1
  loc_1919D7E:             Set var_8C = var_A8
  loc_1919DDE:             If ((var_8C.RecordCount > 0) And (IsNull(CVar(var_8C.Fields.Item("Advance"))) = 0)) Then
  loc_1919DE7:               var_C4 = "Advance"
  loc_1919DFB:               var_A4 = var_8C.Fields.Item(var_C4)
  loc_1919E20:               Call 0.Method_Txt_Validate0 (CInt(8), var_C8, CStr(var_A4.Value), Me.Txt, 1)
  loc_1919E28:               var_C8.Text = -1
  loc_1919E41:             Else
  loc_1919E4F:               Set var_A0 = Me.Txt
  loc_1919E55:               Call 0.Method_Txt_Validate0 (CInt(8), var_A4, "0.00", var_108)
  loc_1919E5D:               var_A4.Text = var_C4
  loc_1919E69:             End If
  loc_1919E80:             var_A4 = var_98.Fields.Item("GuarAtt")
  loc_1919E8F:             Proc_6_39_E7C810(var_F8, CVar(var_A4))
  loc_1919EA6:             Set var_A8 = Me.Txt
  loc_1919EAC:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_C8, CStr(var_F8))
  loc_1919EB4:             var_C8.Text = var_1F8
  loc_1919ED7:             Set var_A0 = Me.Txt
  loc_1919EDD:             Call 0.Method_Txt_Validate0 (CInt(3), var_A4)
  loc_1919EEC:             var_F8 = Trim(CVar(var_A4))
  loc_1919F06:             If (var_F8 = vbNullString) Then
  loc_1919F42:               Set var_A8 = Me.Txt
  loc_1919F48:               Call 0.Method_Txt_Validate0 (CInt(3), var_C8)
  loc_1919F50:               var_C8.Text = CStr(var_98.Fields.Item("PartyName").Value)
  loc_1919F66:             End If
  loc_1919F7D:             var_A4 = var_98.Fields.Item("CoverRate")
  loc_1919F8C:             Proc_6_39_E7C810(var_F8, CVar(var_A4))
  loc_1919FA3:             Set var_A8 = Me.Txt
  loc_1919FA9:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C8)
  loc_1919FB1:             var_C8.Text = CStr(var_F8)
  loc_1919FD7:             Set var_A0 = Me.Txt
  loc_1919FDD:             Call 0.Method_Txt_Validate0 (CInt(&H13), var_A4)
  loc_1919FE5:             var_A4.Text = vbNullString
  loc_191A008:             var_A4 = var_98.Fields.Item("Remark")
  loc_191A019:             var_AC = Proc_6_38_E68A98(CVar(var_A4))
  loc_191A027:             Set var_A8 = Me.Txt
  loc_191A02D:             Call 0.Method_Txt_Validate0 (CInt(&H19), var_C8)
  loc_191A057:             Set var_A8 = Me.Txt
  loc_191A05D:             Call 0.Method_Txt_Validate0 (CInt(&H12), var_C8)
  loc_191A072:             var_22C = Val(var_AC)
  loc_191A083:             Set var_A0 = Me.Txt
  loc_191A089:             Call 0.Method_Txt_Validate0 (CInt(&H11), var_A4, var_AC)
  loc_191A0A4:             var_140 = CStr((Val(var_AC) * var_A4.Text))
  loc_191A0B0:             Set var_168 = Me.TextGt
  loc_191A0B6:             Call 0.Method_Txt_Validate0 (1, var_16C)
  loc_191A0BE:             var_16C.Text = var_140
  loc_191A0E9:             Set var_A0 = Me.Txt
  loc_191A0EF:             Call 0.Method_Txt_Validate0 (CInt(8), var_A4)
  loc_191A113:             If (CDbl(Val(var_A4.Text)) > CDbl(0)) Then
  loc_191A14C:               Set var_A8 = Me.Txt
  loc_191A152:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_C8)
  loc_191A15A:               var_C8.Text = Proc_6_38_E68A98(CVar(var_98.Fields.Item("RectDate")))
  loc_191A194:               Proc_6_39_E7C810(var_F8, CVar(var_98.Fields.Item("RectNo")))
  loc_191A1AB:               Set var_A8 = Me.Txt
  loc_191A1B1:               Call 0.Method_Txt_Validate0 (CInt(9), var_C8)
  loc_191A1B9:               var_C8.Text = CStr(var_F8)
  loc_191A1D1:             End If
  loc_191A1D1:           End If
  loc_191A1DF:           Me.FGrid.Redraw = True
  loc_191A1ED:           If (var_92 = 1) Then
  loc_191A203:             Me.FGrid.Rows = 1
  loc_191A229:             var_D8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_191A231:             Set var_A4 = Me.FGrid
  loc_191A25E:             Me.FGrid.FixedRows = 1
  loc_191A266:           End If
  loc_191A26B:           Call Proc_124_94_1746D30(&H32, FGrid.DispID_10000)
  loc_191A275:           Call Proc_124_95_14FBADC(&H32, var_D8)
  loc_191A27D:         Else
  loc_191A285:           If (var_9C = CInt(5)) Then
  loc_191A293:             Set var_A0 = Me.Txt
  loc_191A299:             Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_191A2A1:             var_AC = "HallName"
  loc_191A2C2:             If (Proc_6_27_EA565C(var_A4, var_AC) = 0) Then
  loc_191A2D0:               Set var_A0 = Me.Txt
  loc_191A2D6:               Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_191A2DE:               var_A4.SetFocus
  loc_191A2EC:               arg_10 = &HFF
  loc_191A2EF:               Exit Sub
  loc_191A2F0:             End If
  loc_191A310:             var_B2 = Me.EOF
  loc_191A324:             var_B4 = Me.BOF
  loc_191A33E:             Set var_A0 = Me.Txt
  loc_191A344:             Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_AC)
  loc_191A34C:             ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (var_B4 = &HFF))) = var_A4.Text
  loc_191A364:             If (arg_10 Or (var_AC = vbNullString)) Then
  loc_191A374:               Set var_A0 = Me.Txt
  loc_191A37A:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_191A382:               var_A4.Text = vbNullString
  loc_191A39B:               Set var_A0 = Me.Txt
  loc_191A3A1:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_191A3A9:               var_A4.Tag = vbNullString
  loc_191A3B8:             Else
  loc_191A3F3:               Set var_A8 = Me.Txt
  loc_191A3F9:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_191A401:               var_C8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_191A434:               var_A4 = Me.Fields.Item("Code")
  loc_191A452:               Set var_A8 = Me.Txt
  loc_191A458:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_191A460:               var_C8.Tag = CStr(var_A4.Value)
  loc_191A476:             End If
  loc_191A479:           Else
  loc_191A481:             If Not (var_9C = CInt(&HF)) Then
  loc_191A48C:               If (var_9C = CInt(&HE)) Then
  loc_191A48F:               End If
  loc_191A49C:               Set var_A0 = Me.Txt
  loc_191A4A2:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_191A4BB:               Proc_6_40_EA50F0(CVar(Val(var_A4.Text)))
  loc_191A4CF:               Set var_A8 = Me.Txt
  loc_191A4D5:               Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_191A4DD:               var_C8.Text = CStr(var_1D8)
  loc_191A4FE:               Set var_A0 = Me.TxtGt
  loc_191A504:               Call 0.Method_Txt_Validate8 (var_B2)
  loc_191A516:               Set var_A4 = Me.TxtGt
  loc_191A51C:               Call 0.Method_Txt_Validate0 (var_B2, var_A8)
  loc_191A53B:               Set var_C8 = Me.TextGt
  loc_191A541:               Call 0.Method_Txt_Validate8 (var_B4)
  loc_191A553:               Set var_168 = Me.TextGt
  loc_191A559:               Call 0.Method_Txt_Validate0 (var_B4, var_16C)
  loc_191A56E:               var_244 = Val(var_16C.Text)
  loc_191A57F:               Set var_194 = Me.Txt
  loc_191A585:               Call 0.Method_Txt_Validate0 (CInt(&HF), var_198, var_140)
  loc_191A59A:               var_24C = Val(var_140)
  loc_191A5AB:               Set var_230 = Me.Txt
  loc_191A5B1:               Call 0.Method_Txt_Validate0 (CInt(8), var_234, var_144)
  loc_191A5C6:               var_254 = Val(var_144)
  loc_191A5ED:               var_D8 = CVar((((Val(var_A8.Text) + var_198.Text) - var_234.Text) - var_254)) 'Double
  loc_191A60B:               Set var_238 = Me.Txt
  loc_191A611:               Call 0.Method_Txt_Validate0 (CInt(&HD), var_23C, CStr(Format(CVar(Val(var_A4.Text)), "0.00")), 1)
  loc_191A619:               var_23C.Text = 1
  loc_191A64F:             End If
  loc_191A64F:           End If
  loc_191A64F:         End If
  loc_191A64F:       End If
  loc_191A64F:     End If
  loc_191A64F:   End If
  loc_191A64F: End If
  loc_191A654: Set var_88 = Nothing
  loc_191A65C: Set var_8C = Nothing
  loc_191A664: Set var_98 = Nothing
  loc_191A667: Exit Sub
  loc_191A668: ' Referenced from: 1917B3C
  loc_191A668: Proc_6_60_E62BC4(var_254)
  loc_191A66D: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECFA18
  'Data Table: 59EE40
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECF97A: Set var_88 = Me.TxtPer
  loc_ECF980: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECF98E: Proc_6_74_E226B0(var_8C)
  loc_ECF99A: Call Proc_124_87_F28930(var_8C)
  loc_ECF9AE: Set var_88 = Me.TxtPer
  loc_ECF9B4: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECF9BC: var_8C.SelStart = 0
  loc_ECF9D5: Set var_88 = Me.TxtPer
  loc_ECF9DB: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECF9F6: Set var_90 = Me.TxtPer
  loc_ECF9FC: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECFA04: var_98.SelLength = Len(var_8C.Text)
  loc_ECFA17: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A478
  'Data Table: 59EE40
  loc_E5A445: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A44E:   Proc_6_75_E527CC(Shift)
  loc_E5A453: End If
  loc_E5A468: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A471:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5A476: End If
  loc_E5A476: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E55F50
  'Data Table: 59EE40
  loc_E55F22: Set var_88 = Me.TxtPer
  loc_E55F28: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E55F43: Proc_6_42_129A86C(var_8C, arg_10, 2)
  loc_E55F4F: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E017C0
  'Data Table: 59EE40
  loc_E017BA: Call Proc_124_94_1746D30(KeyCode)
  loc_E017BF: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4AE6C
  'Data Table: 59EE40
  loc_E4AE4A: Set var_88 = Me.TxtPer
  loc_E4AE50: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4AE5E: Proc_6_73_E22704(var_8C)
  loc_E4AE6A: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECF92C
  'Data Table: 59EE40
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECF88E: Set var_88 = Me.TxtGt
  loc_ECF894: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECF8A2: Proc_6_74_E226B0(var_8C)
  loc_ECF8AE: Call Proc_124_87_F28930(var_8C)
  loc_ECF8C2: Set var_88 = Me.TxtGt
  loc_ECF8C8: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECF8D0: var_8C.SelStart = 0
  loc_ECF8E9: Set var_88 = Me.TxtGt
  loc_ECF8EF: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECF90A: Set var_90 = Me.TxtGt
  loc_ECF910: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECF918: var_98.SelLength = Len(var_8C.Text)
  loc_ECF92B: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A400
  'Data Table: 59EE40
  loc_E5A3CD: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A3D6:   Proc_6_75_E527CC(Shift)
  loc_E5A3DB: End If
  loc_E5A3F0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A3F9:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5A3FE: End If
  loc_E5A3FE: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'E56038
  'Data Table: 59EE40
  loc_E5600A: Set var_88 = Me.TxtGt
  loc_E56010: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_E5602B: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E56037: Exit Sub
End Sub

Private Sub TxtGt_KeyUp(KeyCode As Integer, Shift As Integer) 'E01748
  'Data Table: 59EE40
  loc_E01742: Call Proc_124_94_1746D30(KeyCode)
  loc_E01747: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4B1AC
  'Data Table: 59EE40
  loc_E4B18A: Set var_88 = Me.TxtGt
  loc_E4B190: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4B19E: Proc_6_73_E22704(var_8C)
  loc_E4B1AA: Exit Sub
End Sub

Private Sub TextPer_GotFocus(Index As Integer) 'ECFB04
  'Data Table: 59EE40
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECFA66: Set var_88 = Me.TextPer
  loc_ECFA6C: Call 0.Method_TextPer_GotFocus0 (Index)
  loc_ECFA7A: Proc_6_74_E226B0(var_8C)
  loc_ECFA86: Call Proc_124_87_F28930(var_8C)
  loc_ECFA9A: Set var_88 = Me.TextPer
  loc_ECFAA0: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ECFAA8: var_8C.SelStart = 0
  loc_ECFAC1: Set var_88 = Me.TextPer
  loc_ECFAC7: Call 0.Method_TextPer_GotFocus0 (Index, var_8C)
  loc_ECFAE2: Set var_90 = Me.TextPer
  loc_ECFAE8: Call 0.Method_TextPer_GotFocus0 (Index, var_98)
  loc_ECFAF0: var_98.SelLength = Len(var_8C.Text)
  loc_ECFB03: Exit Sub
End Sub

Private Sub TextPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A568
  'Data Table: 59EE40
  loc_E5A535: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A53E:   Proc_6_75_E527CC(Shift)
  loc_E5A543: End If
  loc_E5A558: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A561:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5A566: End If
  loc_E5A566: Exit Sub
End Sub

Private Sub TextPer_KeyPress(KeyAscii As Integer) 'E55810
  'Data Table: 59EE40
  loc_E557E2: Set var_88 = Me.TextPer
  loc_E557E8: Call 0.Method_TextPer_KeyPress0 (KeyAscii)
  loc_E55803: Proc_6_42_129A86C(var_8C, arg_10, 2)
  loc_E5580F: Exit Sub
End Sub

Private Sub TextPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E017FC
  'Data Table: 59EE40
  loc_E017F6: Call Proc_124_95_14FBADC(KeyCode)
  loc_E017FB: Exit Sub
End Sub

Private Sub TextPer_LostFocus(Index As Integer) 'E4E204
  'Data Table: 59EE40
  loc_E4E1E2: Set var_88 = Me.TextPer
  loc_E4E1E8: Call 0.Method_TextPer_LostFocus0 (Index)
  loc_E4E1F6: Proc_6_73_E22704(var_8C)
  loc_E4E202: Exit Sub
End Sub

Private Sub TextGt_GotFocus(Index As Integer) 'ECFDC8
  'Data Table: 59EE40
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECFD2A: Set var_88 = Me.TextGt
  loc_ECFD30: Call 0.Method_TextGt_GotFocus0 (Index)
  loc_ECFD3E: Proc_6_74_E226B0(var_8C)
  loc_ECFD4A: Call Proc_124_87_F28930(var_8C)
  loc_ECFD5E: Set var_88 = Me.TextGt
  loc_ECFD64: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ECFD6C: var_8C.SelStart = 0
  loc_ECFD85: Set var_88 = Me.TextGt
  loc_ECFD8B: Call 0.Method_TextGt_GotFocus0 (Index, var_8C)
  loc_ECFDA6: Set var_90 = Me.TextGt
  loc_ECFDAC: Call 0.Method_TextGt_GotFocus0 (Index, var_98)
  loc_ECFDB4: var_98.SelLength = Len(var_8C.Text)
  loc_ECFDC7: Exit Sub
End Sub

Private Sub TextGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5A4F0
  'Data Table: 59EE40
  loc_E5A4BD: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5A4C6:   Proc_6_75_E527CC(Shift)
  loc_E5A4CB: End If
  loc_E5A4E0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5A4E9:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5A4EE: End If
  loc_E5A4EE: Exit Sub
End Sub

Private Sub TextGt_KeyPress(KeyAscii As Integer) 'E556B4
  'Data Table: 59EE40
  loc_E55686: Set var_88 = Me.TextGt
  loc_E5568C: Call 0.Method_TextGt_KeyPress0 (KeyAscii)
  loc_E556A7: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E556B3: Exit Sub
End Sub

Private Sub TextGt_LostFocus(Index As Integer) 'E4E474
  'Data Table: 59EE40
  loc_E4E452: Set var_88 = Me.TextGt
  loc_E4E458: Call 0.Method_TextGt_LostFocus0 (Index)
  loc_E4E466: Proc_6_73_E22704(var_8C)
  loc_E4E472: Exit Sub
End Sub

Private Sub TextGt_Validate(Cancel As Boolean) 'E00E24
  'Data Table: 59EE40
  loc_E00E1E: Call Proc_124_95_14FBADC(Cancel)
  loc_E00E23: Exit Sub
End Sub

Private Sub CmdeInvoiceJson_Click() 'E771F4
  'Data Table: 59EE40
  Dim var_90 As TextBox
  Dim var_3794 As Variant
  loc_E771A5: Call Proc_124_105_E671A0(global_160)
  loc_E771B0: If (var_86 = 0) Then
  loc_E771B3:   Exit Sub
  loc_E771B4: End If
  loc_E771B4: Call CmdeInvoiceSql_Click()
  loc_E771C7: Set var_8C = Me.Txt
  loc_E771CD: Call 0.Method_CmdeInvoiceJson_Click0 (CInt(4), var_90)
  loc_E771E1: Proc_96_104_18970BC(var_90.Text)
  loc_E771F0: Exit Sub
  loc_E771F1: var_3794 = CVar(var_86) 'Single
End Sub

Private Sub CmdGeneInvoice_Click() 'EAC9D8
  'Data Table: 59EE40
  Dim var_94 As TextBox
  loc_EAC955: Call Proc_124_105_E671A0(global_160)
  loc_EAC960: If (var_86 = 0) Then
  loc_EAC963:   Exit Sub
  loc_EAC964: End If
  loc_EAC972: Set var_90 = Me.Txt
  loc_EAC978: Call 0.Method_CmdGeneInvoice_Click0 (CInt(4), var_94)
  loc_EAC988: var_8C = var_94.Text
  loc_EAC99A: Proc_348_15_E10910(var_8C, 0)
  loc_EAC9C4: Proc_348_21_12A7B74(var_8C, Me.QrImage, global_160)
  loc_EAC9D0: Call Proc_124_104_FA9F44(global_164, global_168)
  loc_EAC9D5: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1127E08
  'Data Table: 59EE40
  Dim var_A4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_1127AB2: Set var_88 = Me.TxtGrid
  loc_1127AB8: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_1127AC6: Proc_6_74_E226B0(var_8C)
  loc_1127AD2: Call Proc_124_87_F28930(var_8C)
  loc_1127AE3: If (Index = 0) Then
  loc_1127AFC:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_1127B17:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1127B56:   Set var_108 = Me.TxtGrid
  loc_1127B5C:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1127B64:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1127B8C:   var_C4 = Me.FGrid.Col
  loc_1127B95:   var_114 = CLng(var_C4)
  loc_1127BA5:   If (var_114 = CLng(1)) Then
  loc_1127BB2:     Set global_64 = New 
  loc_1127BC4:     Me.var_C4.CursorLocation = 3
  loc_1127BEA:     var_110 = "Select I.Code,I.Name as Name,I.Unit,IG.Name as ItemGroup,IR.Rate as IRate,IC.TAXSTRU,IC.TAXSTRU ,I.Unit,I.DiscApp,I.RateEdit,I.Kitchen,i.SChrgApp From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join ItemRate IR on IR.ItemCode=I.Code And IR.RestCode=I.RestCode) where IR.RestCode ='" & global_56
  loc_1127BFB:     Me.Open CVar(var_110 & "' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1127C0F:     CVarUnk
  loc_1127C14:     VerifyVarObj
  loc_1127C1A:     Set var_88 = Me.DGItem
  loc_1127C20:     LateIdStAd
  loc_1127C6F:     If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1127C72:       Exit Sub
  loc_1127C73:     End If
  loc_1127C79:     Me.MoveFirst
  loc_1127C91:     var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1127C99:     var_E4 = CVar(CLng(9)) 'Long
  loc_1127CA2:     Set var_8C = Me.FGrid
  loc_1127CA8:     var_D4 = var_8C.TextMatrix)
  loc_1127CDD:     Me.Find "Code='" & CStr(var_D4) & "'", 0, 1
  loc_1127D0D:     If (Me.EOF = &HFF) Then
  loc_1127D16:       Me.MoveFirst
  loc_1127D1B:     End If
  loc_1127D24:     CVarUnk
  loc_1127D29:     VerifyVarObj
  loc_1127D2F:     Set var_88 = Me.DGItem
  loc_1127D35:     LateIdStAd
  loc_1127D46:   Else
  loc_1127D4D:     If (var_114 = CLng(2)) Then
  loc_1127D65:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H32, Me.TxtGrid, global_64, var_134, var_D4)
  loc_1127D6D:       var_8C.MaxLength = var_E4
  loc_1127D8E:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, CDbl(960), var_A4, Me.TxtGrid)
  loc_1127D96:       var_8C.Height = global_64
  loc_1127DA5:     Else
  loc_1127DAC:       If Not (var_114 = CLng(3)) Then
  loc_1127DB6:         If (var_114 = CLng(4)) Then
  loc_1127DB9:         End If
  loc_1127DC8:         Set var_88 = Me.TxtGrid
  loc_1127DCE:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0)
  loc_1127DD6:         var_8C.MaxLength = 1
  loc_1127DEB:         If (global_150 = 0) Then
  loc_1127DF6:           var_110 = "{Home}+{End}"
  loc_1127DFC:           Proc_303_0_FB9B68(CStr(var_D4), 0)
  loc_1127E04:         End If
  loc_1127E04:       End If
  loc_1127E04:     End If
  loc_1127E04:   End If
  loc_1127E04: End If
  loc_1127E04: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '113BBE0
  'Data Table: 59EE40
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_113B868: If (KeyCode = 0) Then
  loc_113B875:   If (CLng(Shift) = &H1B) Then
  loc_113B885:     Set var_8C = Me.TxtGrid
  loc_113B88B:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_113B8A5:     Set var_98 = Me.TxtGrid
  loc_113B8AB:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_113B8B3:     var_9C.Text = var_90.Tag
  loc_113B8CF:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_113B8D4:     Call Proc_124_87_F28930(arg_14)
  loc_113B8DD:     Set var_8C = Me.FGrid
  loc_113B8FA:     Set var_8C = Me.TxtGrid
  loc_113B900:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_113B908:     var_90.Visible = FGrid.DispID_8001
  loc_113B914:     Exit Sub
  loc_113B915:   End If
  loc_113B928:   var_B0 = CLng(Me.FGrid.Col)
  loc_113B938:   If (var_B0 = CLng(1)) Then
  loc_113B953:     Set var_9C = Nothing
  loc_113B98C:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF)
  loc_113B9AA:     If (CLng(Shift) = &HD) Then
  loc_113B9B3:       Call Proc_124_81_1422C38(KeyCode, var_B2, 1, Nothing)
  loc_113B9BE:       If (var_B2 = &HFF) Then
  loc_113BA0B:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113BA1B:       End If
  loc_113BA1B:     End If
  loc_113BA1E:   Else
  loc_113BA25:     If (var_B0 = CLng(2)) Then
  loc_113BA32:       If (CLng(Shift) = &HD) Then
  loc_113BA3B:         Call Proc_124_81_1422C38(KeyCode, var_B2, 0, 0)
  loc_113BA46:         If (var_B2 = &HFF) Then
  loc_113BA93:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(3) + 1)), 0)
  loc_113BAA3:         End If
  loc_113BAA3:       End If
  loc_113BAA6:     Else
  loc_113BAAD:       If (var_B0 = CLng(4)) Then
  loc_113BAB6:         Call Proc_124_81_1422C38(KeyCode, var_B2, 0, 0)
  loc_113BAC1:         If (var_B2 = &HFF) Then
  loc_113BB0E:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(4) + 1)), 0)
  loc_113BB1E:         End If
  loc_113BB21:       Else
  loc_113BB28:         If (var_B0 = CLng(3)) Then
  loc_113BB6B:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_150 = &HFF))) Then
  loc_113BB74:             Call Proc_124_81_1422C38(KeyCode, var_B2, 0, 0)
  loc_113BB7F:             If (var_B2 = &HFF) Then
  loc_113BBCC:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_150, CByte((CInt(5) + 1)), 0)
  loc_113BBDC:             End If
  loc_113BBDC:           End If
  loc_113BBDC:         End If
  loc_113BBDC:       End If
  loc_113BBDC:     End If
  loc_113BBDC:   End If
  loc_113BBDC: End If
  loc_113BBDC: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F83350
  'Data Table: 59EE40
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  loc_F831FF: Proc_6_58_E054C0(arg_10)
  loc_F83210: If (KeyAscii = 0) Then
  loc_F83226:   var_A0 = CLng(Me.FGrid.Col)
  loc_F83236:   If (var_A0 = CLng(1)) Then
  loc_F83255:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F8325C:       Set var_AC = Me.TxtGrid
  loc_F83267:       var_A4 = "Name"
  loc_F83282:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_64, arg_10)
  loc_F83291:     End If
  loc_F83294:   Else
  loc_F8329B:     If (var_A0 = CLng(3)) Then
  loc_F832A8:       Set var_8C = Me.TxtGrid
  loc_F832AE:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_F832C9:       Proc_6_42_129A86C(var_AC, arg_10, 8, 3)
  loc_F832D8:     Else
  loc_F832DF:       If (var_A0 = CLng(4)) Then
  loc_F832EC:         Set var_8C = Me.TxtGrid
  loc_F832F2:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_F8330D:         Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_F8331C:       Else
  loc_F83323:         If (var_A0 = CLng(2)) Then
  loc_F83335:           Set var_8C = Me.TxtGrid
  loc_F8333B:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, &H32)
  loc_F83343:           var_AC.MaxLength = 2
  loc_F8334F:         End If
  loc_F8334F:       End If
  loc_F8334F:     End If
  loc_F8334F:   End If
  loc_F8334F: End If
  loc_F8334F: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F7C494
  'Data Table: 59EE40
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  loc_F7C358: On Error Goto loc_F7C48E
  loc_F7C367: If (KeyCode = 0) Then
  loc_F7C37D:   var_A0 = CLng(Me.FGrid.Col)
  loc_F7C38D:   If (var_A0 = CLng(1)) Then
  loc_F7C3B3:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F7C3C4:       Call TxtGrid_KeyDown(KeyCode, global_148)
  loc_F7C3CD:       Set var_AC = Me.TxtGrid
  loc_F7C3D8:       var_A8 = "Name"
  loc_F7C3F3:       Proc_6_89_146F1AC(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_F7C402:     End If
  loc_F7C405:   Else
  loc_F7C40C:     If (var_A0 = CLng(2)) Then
  loc_F7C44B:       Set var_8C = Me.TxtGrid
  loc_F7C451:       Call 0.Method_TxtGrid_KeyUp0 (0, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_F7C459:       &HFF = var_AC.Text
  loc_F7C461:       var_114 = CVar(var_A8) 'String
  loc_F7C469:       Set var_128 = Me.FGrid
  loc_F7C46F:       LateIdCallSt
  loc_F7C48D:     End If
  loc_F7C48D:   End If
  loc_F7C48D: End If
  loc_F7C48D: Exit Sub
  loc_F7C48E: ' Referenced from: F7C358
  loc_F7C48E: Proc_6_60_E62BC4(var_128, var_114, 0)
  loc_F7C493: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21B88
  'Data Table: 59EE40
  Dim arg_10 As Integer
  loc_E21B70: If (Cancel = 0) Then
  loc_E21B79:   Call Proc_124_81_1422C38(Cancel, var_88)
  loc_E21B82:   arg_10 = Not(var_88)
  loc_E21B85: End If
  loc_E21B85: Exit Sub
End Sub

Private Sub CmdBooking_UnknownEvent_9 'E8D20C
  'Data Table: 59EE40
  loc_E8D1A0: Set var_88 = Me.TopCtrl1
  loc_E8D1A6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E8D1BF: If (CStr() <> "Add") Then
  loc_E8D1C2:   Exit Sub
  loc_E8D1C3: End If
  loc_E8D1C7: Set var_A0 = New HallBooking
  loc_E8D1E5: var_A0.MDIRestCode = CVar(Proc_6_45_EAD428(MemVar_1F92078) & "BANQ")
  loc_E8D1FB: var_A0.OpenMode = 1
  loc_E8D202: Call var_A0.Show
  loc_E8D208: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E5196C
  'Data Table: 59EE40
  loc_E51946: Set var_88 = Me.txtM
  loc_E5194C: Call 0.Method_txtM_UnknownEvent_00 (Cancel)
  loc_E5195A: Proc_6_74_E226B0(var_8C)
  loc_E51966: Call Proc_124_87_F28930(var_8C)
  loc_E5196B: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4EAF4
  'Data Table: 59EE40
  loc_E4EAD2: Set var_88 = Me.txtM
  loc_E4EAD8: Call 0.Method_txtM_UnknownEvent_10 (Cancel)
  loc_E4EAE6: Proc_6_73_E22704(var_8C)
  loc_E4EAF2: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E54AC8
  'Data Table: 59EE40
  Dim arg_10 As Integer
  loc_E54A9E: Set var_88 = Me.txtM
  loc_E54AA4: Call 0.Method_txtM_UnknownEvent_80 (Cancel)
  loc_E54ABE: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E54AC3:   arg_10 = &HFF
  loc_E54AC6: End If
  loc_E54AC6: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E6293C
  'Data Table: 59EE40
  loc_E628F6: If (CLng(arg_10) = &H1B) Then
  loc_E628F9:   Call Proc_124_87_F28930()
  loc_E628FE:   Exit Sub
  loc_E628FF: End If
  loc_E62914: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E6291D:   Proc_6_75_E527CC(arg_10)
  loc_E62922: End If
  loc_E6292C: If (CLng(arg_10) = &H26) Then
  loc_E62935:   Proc_6_76_E52838(arg_10, arg_14)
  loc_E6293A: End If
  loc_E6293A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA1300
  'Data Table: 59EE40
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA129B: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_100)) Then
  loc_EA12B1:   Me.FGrid.Col = 1
  loc_EA12B9: End If
  loc_EA12CC: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA12DF: Set var_88 = Me.TxtGrid
  loc_EA12E5: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA12ED: var_BC.Visible = False
  loc_EA12F9: Call Proc_124_87_F28930()
  loc_EA12FE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E662C8
  'Data Table: 59EE40
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66284: Set var_88 = Me.TxtGrid
  loc_E6628A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E662A4: If (var_8C.Visible = 0) Then
  loc_E662BD:   Me.FGrid.BackColorSel = CVar(CLng(global_100))
  loc_E662C5: End If
  loc_E662C5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFDD8C
  'Data Table: 59EE40
  Dim var_379C As Integer
  loc_DFDD84: Call Proc_124_80_E44884()
  loc_DFDD89: Exit Sub
  loc_DFDD8A: var_379C = 
End Sub

Private Sub FGrid_UnknownEvent_A '11F632C
  'Data Table: 59EE40
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  Dim var_375C As String
  loc_11F5E8C: Set var_88 = Me.TopCtrl1
  loc_11F5E92: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F5ED7: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_11F5EE0:   Call Form_KeyDown(Cancel, arg_10)
  loc_11F5EE5: End If
  loc_11F5EE9: Set var_88 = Me.TopCtrl1
  loc_11F5EEF: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_11F5F08: If (CStr() = "Browse") Then
  loc_11F5F0B:   Exit Sub
  loc_11F5F0C: End If
  loc_11F5F80: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_11F5F99:   Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F5FA9:   var_9C = "+{Tab}"
  loc_11F5FAF:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_11F5FB9:   Cancel = 0
  loc_11F5FBF: Else
  loc_11F5FC9:   var_B0 = Me.FGrid.Rows
  loc_11F6016:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_11F602F:     Me.FGrid.CellBackColor = CVar(CLng(global_100))
  loc_11F603B:     Set var_88 = Me.TopCtrl1
  loc_11F6041:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B0)
  loc_11F605A:     If (CStr(Cancel) = "Add") Then
  loc_11F606B:       Proc_303_0_FB9B68("{Tab}", 0)
  loc_11F6075:       Cancel = 0
  loc_11F607B:     Else
  loc_11F6080:       Call Proc_124_88_F0C33C(0, Cancel)
  loc_11F6085:     End If
  loc_11F6085:   End If
  loc_11F6085: End If
  loc_11F608B: global_148 = Cancel
  loc_11F60B1: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11F60D5: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_11F60EB:   var_EC = CLng(Me.FGrid.Col)
  loc_11F60FB:   If (var_EC = CLng(1)) Then
  loc_11F6111:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6129:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F612E:     var_11C = vbNullString
  loc_11F6138:     Set var_B4 = Me.FGrid
  loc_11F613E:     LateIdCallSt
  loc_11F6169:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F6171:     var_FC = CVar(CLng(9)) 'Long
  loc_11F6176:     var_11C = vbNullString
  loc_11F6180:     Set var_A0 = Me.FGrid
  loc_11F6186:     LateIdCallSt
  loc_11F61AB:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F61B3:     var_FC = CVar(CLng(3)) 'Long
  loc_11F61B8:     var_11C = vbNullString
  loc_11F61C2:     Set var_A0 = Me.FGrid
  loc_11F61C8:     LateIdCallSt
  loc_11F61DD:   Else
  loc_11F61E4:     If (var_EC = CLng(3)) Then
  loc_11F6203:       Set var_A0 = Me.FGrid
  loc_11F6227:       LateIdCallSt
  loc_11F623F:       Call Proc_124_89_1153964(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F6247:     Else
  loc_11F624E:       If (var_EC = CLng(4)) Then
  loc_11F626D:         Set var_A0 = Me.FGrid
  loc_11F6291:         LateIdCallSt
  loc_11F62A9:         Call Proc_124_89_1153964(Me.FGrid, vbNullString, CVar(CLng(var_A0.Col)), CVar(CLng(Me.FGrid.Row)), var_A0, vbNullString)
  loc_11F62B1:       Else
  loc_11F62B8:         If (var_EC = CLng(2)) Then
  loc_11F62CE:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F62E6:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11F62EB:           var_11C = vbNullString
  loc_11F62F5:           Set var_B4 = Me.FGrid
  loc_11F62FB:           LateIdCallSt
  loc_11F6313:         End If
  loc_11F6313:       End If
  loc_11F6313:     End If
  loc_11F6313:   End If
  loc_11F6313: End If
  loc_11F6319: If (Cancel = &HD) Then
  loc_11F6321:   global_150 = 0
  loc_11F6324: End If
  loc_11F6329: Exit Sub
  loc_11F632A: var_375C = 0
End Sub

Private Sub FGrid_UnknownEvent_B 'E12650
  'Data Table: 59EE40
  loc_E12641: Call FGrid_UnknownEvent_C()
  loc_E1264B: global_150 = 0
  loc_E1264E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '106559C
  'Data Table: 59EE40
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1065324: Set var_88 = Me.TopCtrl1
  loc_106532A: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1065343: If (CStr() = "Browse") Then
  loc_1065346:   Exit Sub
  loc_1065347: End If
  loc_106535A: var_A0 = CLng(Me.FGrid.Col)
  loc_106536A: If (var_A0 = CLng(1)) Then
  loc_1065371:   Set var_C4 = Me.FGrid
  loc_1065395:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10653C2:   Set var_B4 = var_C4
  loc_10653D4:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_10653FC:   Set var_88 = Me.TxtGrid
  loc_1065402:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_106540A:   0 = var_B4.Text
  loc_1065423:   If (Len(var_9C) <= 1) Then
  loc_1065432:     Set var_88 = Me.TxtGrid
  loc_1065438:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1065440:     var_CA = var_B4.Text
  loc_1065451:     Set var_B8 = Me.TxtGrid
  loc_1065457:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_106545F:     var_C4.Text = var_9C
  loc_1065472:   End If
  loc_106547E:   Set var_88 = Me.TxtGrid
  loc_1065484:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_106549E:   Set var_B8 = Me.TxtGrid
  loc_10654A4:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_10654AC:   var_C4.SelStart = Len(var_B4.Text)
  loc_10654C2: Else
  loc_10654C9:   If Not (var_A0 = CLng(3)) Then
  loc_10654D3:     If (var_A0 = CLng(4)) Then
  loc_10654D6:     End If
  loc_1065514:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1065529:   Else
  loc_1065530:     If (var_A0 = CLng(2)) Then
  loc_1065571:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Cancel)
  loc_1065583:     End If
  loc_1065583:   End If
  loc_1065583: End If
  loc_106558D: If (CLng(Cancel) <> &HD) Then
  loc_1065595:   global_150 = &HFF
  loc_1065598: End If
  loc_1065598: Exit Sub
  loc_1065599: Set var_8C = global_150
End Sub

Private Sub FGrid_UnknownEvent_D 'FF9708
  'Data Table: 59EE40
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF9520: Set var_90 = Me.TopCtrl1
  loc_FF9526: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FF953F: If (CStr() = "Browse") Then
  loc_FF9542:   Exit Sub
  loc_FF9543: End If
  loc_FF9560: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF9563:   Exit Sub
  loc_FF9564: End If
  loc_FF9575: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FF9597:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF95D1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF95F3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF9609:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF9612:         Set var_118 = Me.FGrid
  loc_FF962D:       Else
  loc_FF9640:         Me.FGrid.Rows = 1
  loc_FF9666:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FF966E:         Set var_118 = Me.FGrid
  loc_FF969B:         Me.FGrid.FixedRows = 1
  loc_FF96A3:       End If
  loc_FF96A3:       Call Proc_124_89_1153964(FGrid.DispID_10000, var_A0)
  loc_FF96AD:       Call Proc_124_94_1746D30(&H32, FGrid.DispID_10000)
  loc_FF96B2:     End If
  loc_FF96B5:   Else
  loc_FF96D6:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF96E6:   End If
  loc_FF96EA:   Set var_90 = Me.FGrid
  loc_FF96FB: End If
  loc_FF9700: Set var_8C = Nothing
  loc_FF9703: Exit Sub
  loc_FF9704: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45378
  'Data Table: 59EE40
  Dim var_8C As TextBox
  loc_E4534C: Call Proc_124_87_F28930()
  loc_E4535C: Set var_88 = Me.TxtGrid
  loc_E45362: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4536A: var_8C.Visible = False
  loc_E45376: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1098450
  'Data Table: 59EE40
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim unk_59EE5F As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As TextBox
  loc_10981A0: On Error Goto loc_1098449
  loc_10981C6: Call Proc_124_86_10C6198(Proc_5_1_100CB50("ADD", Me))
  loc_10981D1: Call Proc_124_84_10482E0(global_80)
  loc_10981E3: Me.LblUser.Caption = vbNullString
  loc_10981F8: Me.LblLDt.Caption = vbNullString
  loc_109820E: Set var_90 = Me.Txt
  loc_1098214: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_98)
  loc_109821C: var_98.Text = "Cooked Foods"
  loc_1098241: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_1098249: var_98.Text = CStr(MemVar_1F920EC)
  loc_109827F: unk_59EE5F.Execute "Select Description,V_Type From Voucher_Type Where NCat='BBILL' AND rESTCODE='" & global_56 & "'", var_BC, -1
  loc_109828A: Set var_88 = Me.Txt
  loc_10982AE: If (var_88.RecordCount > 0) Then
  loc_10982EA:   Set var_C4 = Me.Txt
  loc_10982F0:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_10982F8:   var_C8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_1098328:   var_98 = var_88.Fields.Item("V_Type")
  loc_1098347:   Set var_C4 = Me.Txt
  loc_109834D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_C8)
  loc_1098355:   var_C8.Tag = CStr(var_98.Value)
  loc_109836B: End If
  loc_1098378: Set var_90 = Me.Txt
  loc_109837E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_98)
  loc_1098386: var_98.Enabled = False
  loc_109839F: Set var_90 = Me.Txt
  loc_10983A5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_10983AD: var_98.Enabled = False
  loc_10983C8: Set var_90 = Me.Txt
  loc_10983CE: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_10983D6: var_98.FontSize = CDbl(&HC)
  loc_10983ED: Set var_90 = Me.Txt
  loc_10983F3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_98)
  loc_10983FB: var_98.SetFocus
  loc_1098415: Set var_90 = Me.Txt
  loc_109841B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_1098431: Call Proc_124_93_1A87960(CDate(var_98.Text))
  loc_1098445: Set var_88 = Nothing
  loc_1098448: Exit Sub
  loc_1098449: ' Referenced from: 10981A0
  loc_1098449: Proc_6_60_E62BC4(var_90)
  loc_109844E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA1850
  'Data Table: 59EE40
  loc_EA17D4: On Error Goto loc_EA184A
  loc_EA180E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA1811:   Call Proc_124_84_10482E0()
  loc_EA1839:   Call Proc_124_86_10C6198(Proc_5_1_100CB50("INI", Me))
  loc_EA1844:   Call Proc_124_82_18ADC40(global_80)
  loc_EA1849: End If
  loc_EA1849: Exit Sub
  loc_EA184A: ' Referenced from: EA17D4
  loc_EA184A: Proc_6_60_E62BC4()
  loc_EA184F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13B38A4
  'Data Table: 59EE40
  Dim var_138 As Integer
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_59EE5F As Connection15
  Dim var_124 As Recordset15
  Dim var_128 As Fields15
  Dim var_13C As Field20
  loc_13B2F80: On Error Goto loc_13B3853
  loc_13B2F91: If (Proc_183_56_FE8818(global_80) = &HFF) Then
  loc_13B2F94:   Exit Sub
  loc_13B2F95: End If
  loc_13B2F9B: var_138 = 0
  loc_13B2FEC: var_FC = "Select Count(*) From PAYCHARGEH Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13B2FF0: var_100 = CStr(var_FC)
  loc_13B2FFA: unk_59EE5F.Execute var_100, var_120, -1
  loc_13B3002: var_124 = var_124.Fields
  loc_13B300A: var_138 = var_128.Item(var_128)
  loc_13B3012: var_13C = var_13C.Value
  loc_13B303F: If (var_14C > 0) Then
  loc_13B3048:   Call 0.Method_arg_50 (var_100)
  loc_13B3069:   MsgBox("First Delete Settlement.", &H10, CVar(var_100), var_FC, var_120)
  loc_13B3079:   Exit Sub
  loc_13B307A: End If
  loc_13B30B1: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_120) = 6) Then
  loc_13B30BD:   unk_59EE5F.BeginTrans var_170
  loc_13B30D3:   var_94 = Me.Bookmark 'Variant
  loc_13B312D:   unk_59EE5F.Execute CStr("Delete From SunTran Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13B3178:   var_1A8 = 0
  loc_13B318B:   var_1A0 = 0
  loc_13B3196:   var_19C = 0
  loc_13B31A9:   var_194 = 0
  loc_13B31B4:   var_190 = 0
  loc_13B31C7:   var_188 = 0
  loc_13B3210:   Proc_154_5_10E33A4(MemVar_1F92044, "SunTran", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B328E:   unk_59EE5F.Execute CStr("Delete From SunTranH Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13B32D9:   var_1A8 = 0
  loc_13B32EC:   var_1A0 = 0
  loc_13B32F7:   var_19C = 0
  loc_13B330A:   var_194 = 0
  loc_13B3315:   var_190 = 0
  loc_13B3328:   var_188 = 0
  loc_13B3371:   Proc_154_5_10E33A4(MemVar_1F92044, "SunTranH", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B33EF:   unk_59EE5F.Execute CStr("Delete From HallStock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13B343A:   var_1A8 = 0
  loc_13B344D:   var_1A0 = 0
  loc_13B3458:   var_19C = 0
  loc_13B346B:   var_194 = 0
  loc_13B3476:   var_190 = 0
  loc_13B3489:   var_188 = 0
  loc_13B34D2:   Proc_154_5_10E33A4(MemVar_1F92044, "HallStock", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B3550:   unk_59EE5F.Execute CStr("Delete From HallSale1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_13B359B:   var_1A8 = 0
  loc_13B35AE:   var_1A0 = 0
  loc_13B35B9:   var_19C = 0
  loc_13B35CC:   var_194 = 0
  loc_13B35D7:   var_190 = 0
  loc_13B35EA:   var_188 = 0
  loc_13B3633:   Proc_154_5_10E33A4(MemVar_1F92044, "HallSale1", "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B36A3:   var_FC = "Delete From Ledger Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_13B36B1:   unk_59EE5F.Execute CStr(var_FC), var_120, -1
  loc_13B36FC:   var_1A8 = 0
  loc_13B370F:   var_1A0 = 0
  loc_13B371A:   var_19C = 0
  loc_13B372D:   var_194 = 0
  loc_13B3738:   var_190 = 0
  loc_13B374B:   var_188 = 0
  loc_13B378B:   var_100 = "Ledger"
  loc_13B3794:   Proc_154_5_10E33A4(MemVar_1F92044, var_100, "DocID", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13B37C2:   unk_59EE5F.CommitTrans
  loc_13B37D2:   Me.Requery -1
  loc_13B37F2:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_13B37FF:     Me.Bookmark = var_94
  loc_13B3807:   Else
  loc_13B381B:     If (Me.EOF = 0) Then
  loc_13B3824:       Me.MoveLast
  loc_13B3829:     End If
  loc_13B3829:   End If
  loc_13B3829:   Call Proc_124_82_18ADC40(var_188, 0, var_190, var_194)
  loc_13B384A:   Proc_5_0_110649C(&HFF, Me, global_80, 0)
  loc_13B3852: End If
  loc_13B3852: Exit Sub
  loc_13B3853: ' Referenced from: 13B2F80
  loc_13B3859: unk_59EE5F.RollbackTrans
  loc_13B3866: Set var_98 = Err()
  loc_13B386C: Call 0.Method_arg_2C (var_100, 0, var_19C)
  loc_13B388D: MsgBox(CVar(var_100), &H10, " Deletion Message", var_FC, var_120)
  loc_13B38A0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1167DD8
  'Data Table: 59EE40
  Dim var_12C As Integer
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_E0 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F4 As String
  Dim unk_59EE5F As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Fields15
  Dim var_130 As Field20
  loc_1167A35: Call Proc_124_105_E671A0(global_160)
  loc_1167A40: If (var_86 = 0) Then
  loc_1167A43:   Exit Sub
  loc_1167A44: End If
  loc_1167A44: On Error Goto loc_1167DD1
  loc_1167A55: If (Proc_183_55_FE7900(global_80) = &HFF) Then
  loc_1167A58:   Exit Sub
  loc_1167A59: End If
  loc_1167A86: If CBool(Trim(Ucase(MemVar_1F920C8)) <> "SA") Then
  loc_1167A8F:   var_12C = 0
  loc_1167AC7:   var_E0 = Me.Fields.Item("SearchCode")
  loc_1167AD7:   var_B8 = "SELECT COUNT(*) FROM PAYCHARGEH WHERE dOCID='" & var_E0.Value 
  loc_1167AE0:   var_D8 = var_B8 & "'" 
  loc_1167AEE:   unk_59EE5F.Execute CStr(var_D8), var_114, -1
  loc_1167AF6:   var_118 = var_118.Fields
  loc_1167AFE:   var_12C = var_11C.Item(var_11C)
  loc_1167B06:   var_130 = var_130.Value
  loc_1167B33:   If (var_140 > 0) Then
  loc_1167B4F:     MsgBox("Entry Can't be Modified,Bill Already Settled ", 0, var_B8, var_D8, var_114)
  loc_1167B5F:     Exit Sub
  loc_1167B60:   End If
  loc_1167B60: End If
  loc_1167B75: var_F4 = "EDIT"
  loc_1167B83: Call Proc_124_86_10C6198(Proc_5_1_100CB50(var_F4, Me, global_80), var_140)
  loc_1167B9B: Set var_DC = Me.Txt
  loc_1167BA1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_E0)
  loc_1167BA9: var_E0.Enabled = False
  loc_1167BC2: Set var_DC = Me.Txt
  loc_1167BC8: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_E0)
  loc_1167BD0: var_E0.Enabled = False
  loc_1167BE9: Set var_DC = Me.Txt
  loc_1167BEF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_E0)
  loc_1167BF7: var_E0.Enabled = False
  loc_1167C10: Set var_DC = Me.Txt
  loc_1167C16: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_E0)
  loc_1167C1E: var_E0.Enabled = False
  loc_1167C37: Set var_DC = Me.Txt
  loc_1167C3D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HF), var_E0)
  loc_1167C45: var_E0.Enabled = False
  loc_1167C5E: Set var_DC = Me.Txt
  loc_1167C64: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HE), var_E0)
  loc_1167C6C: var_E0.Enabled = False
  loc_1167C85: Set var_DC = Me.Txt
  loc_1167C8B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HD), var_E0)
  loc_1167C93: var_E0.Enabled = False
  loc_1167CAC: Set var_DC = Me.Txt
  loc_1167CB2: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HC), var_E0)
  loc_1167CBA: var_E0.Enabled = False
  loc_1167CD3: Set var_DC = Me.Txt
  loc_1167CD9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HB), var_E0)
  loc_1167CE1: var_E0.Enabled = False
  loc_1167CFA: Set var_DC = Me.Txt
  loc_1167D00: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_E0)
  loc_1167D08: var_E0.Enabled = False
  loc_1167D18: Set var_DC = Me.FGrid
  loc_1167D36: Me.LblUser.Caption = vbNullString
  loc_1167D4B: Me.LblLDt.Caption = vbNullString
  loc_1167D61: Set var_DC = Me.Txt
  loc_1167D67: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_E0, var_F4)
  loc_1167D6F: FGrid.DispID_8001 = var_E0.Text
  loc_1167D7D: Call Proc_124_93_1A87960(CDate(var_F4))
  loc_1167DBE: Call Proc_124_103_13E4D34(CStr(Me.Fields.Item("SearchCode").Value))
  loc_1167DD0: Exit Sub
  loc_1167DD1: ' Referenced from: 1167A44
  loc_1167DD1: Proc_6_60_E62BC4(var_86)
  loc_1167DD6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AC4C
  'Data Table: 59EE40
  loc_E1AC41: Me.Global.Unload Me
  loc_E1AC49: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F32324
  'Data Table: 59EE40
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F920E4 As String
  loc_F32220: On Error Goto loc_F3231B
  loc_F3223A: If (Me.RecordCount <= 0) Then
  loc_F32258:   var_A8 = "No Records To Search."
  loc_F3225E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F3226E:   Exit Sub
  loc_F3226F: End If
  loc_F32276: var_10C = "Select Docid as SearchCode,CAST(S.VNo AS vARcHAR(11)) as VNo ,CAST(S.VDate AS VARCHAR(11)) AS vdate ,S.Party " & " From HallSale1 S Where S.RESTCODE ='"
  loc_F32295: Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F322A1: var_B8 = " and "
  loc_F322B5: Proc_6_7_F25D88(var_120, MemVar_1F920FC)
  loc_F322CB: MemVar_1F920E4 = CStr(CVar(var_10C & global_56 & "' AND S.VDate between ") & var_A8 & var_B8 & var_120 & " Order By S.docid")
  loc_F322ED: MemVar_1F92120 = Me
  loc_F322FA: Proc_6_126_F1BCC0("1000,1200,2000")
  loc_F32315: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F3231A: Exit Sub
  loc_F3231B: ' Referenced from: F32220
  loc_F3231B: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F32320: Exit Sub
  loc_F32321: CopyBytes -2817
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E38058
  'Data Table: 59EE40
  Dim var_3701 As Double
  loc_E38048: Proc_5_0_110649C(&HFF, Me)
  loc_E38050: Call Proc_124_82_18ADC40(global_80)
  loc_E38055: Exit Sub
  loc_E38056: var_3701 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38118
  'Data Table: 59EE40
  loc_E38108: Proc_5_0_110649C(&HFF, Me)
  loc_E38110: Call Proc_124_82_18ADC40(global_80)
  loc_E38115: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E38178
  'Data Table: 59EE40
  Dim var_3701 As Double
  loc_E38168: Proc_5_0_110649C(&HFF, Me)
  loc_E38170: Call Proc_124_82_18ADC40(global_80)
  loc_E38175: Exit Sub
  loc_E38176: var_3701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E381D8
  'Data Table: 59EE40
  loc_E381C8: Proc_5_0_110649C(&HFF, Me)
  loc_E381D0: Call Proc_124_82_18ADC40(global_80)
  loc_E381D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFF334
  'Data Table: 59EE40
  loc_DFF32C: Call Proc_124_102_1B778A4()
  loc_DFF331: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E8D8FC
  'Data Table: 59EE40
  Dim Me As Recordset15
  loc_E8D887: If Not((global_64 Is Nothing)) Then
  loc_E8D895:   Me.Requery -1
  loc_E8D89A: End If
  loc_E8D8A5: Me.Requery -1
  loc_E8D8B5: Me.Requery -1
  loc_E8D8C5: Me.Requery -1
  loc_E8D8D5: Me.Requery -1
  loc_E8D8E5: If Not((global_64 Is Nothing)) Then
  loc_E8D8F3:   Me.Requery -1
  loc_E8D8F8: End If
  loc_E8D8F8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1AB22A0
  'Data Table: 59EE40
  Dim var_1B8 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_1B0 As Variant
  Dim var_210 As Variant
  Dim var_220 As Variant
  Dim var_1BC As String
  Dim var_25C As Double
  Dim var_A4 As Variant
  Dim var_AC As Double
  Dim var_1E0 As Variant
  Dim var_1B4 As Variant
  Dim var_264 As String
  Dim var_270 As String
  Dim var_268 As Variant
  Dim var_274 As String
  Dim var_278 As String
  Dim unk_59EE5F As Connection15
  Dim var_27C As Variant
  Dim var_280 As Variant
  Dim var_284 As Variant
  Dim var_B4 As Double
  Dim var_CC As Variant
  Dim var_BC As Double
  Dim var_C4 As Variant
  Dim var_DC As Double
  Dim var_E4 As Variant
  Dim var_FC As Double
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_184 As Double
  Dim var_18C As Double
  Dim var_194 As Double
  Dim var_124 As Variant
  Dim var_13C As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_14C As Double
  Dim var_154 As Double
  Dim var_16C As Double
  Dim var_144 As Double
  Dim var_15C As Double
  Dim var_164 As Double
  Dim var_174 As Double
  Dim var_17C As Double
  Dim var_19C As Double
  Dim var_1A4 As Double
  Dim var_1AC As Double
  Dim var_26C As String
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_2C4 As TextBox
  Dim var_2FC As Label
  Dim var_358 As Variant
  Dim var_3C4 As Variant
  Dim var_454 As Variant
  Dim var_F14 As Double
  Dim var_468 As Variant
  Dim var_F1C As Double
  Dim var_7DC As Variant
  Dim var_F24 As Double
  Dim var_7F0 As Variant
  Dim var_F2C As Double
  Dim var_894 As Variant
  Dim var_944 As MaskEdBox
  Dim var_954 As Variant
  Dim var_9BC As TextBox
  Dim var_A08 As TextBox
  Dim var_A54 As TextBox
  Dim var_F34 As Double
  Dim var_AF8 As TextBox
  Dim var_F3C As Double
  Dim var_B64 As Variant
  Dim var_D9C As Variant
  Dim var_D7C As String
  Dim var_E14 As TextBox
  Dim var_E60 As TextBox
  Dim var_2B0 As String
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_2D8 As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_340 As Variant
  Dim var_350 As Variant
  Dim var_37C As Variant
  Dim var_3E8 As Variant
  Dim var_408 As Variant
  Dim var_438 As Variant
  Dim var_47C As Variant
  Dim var_49C As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_4CC As Variant
  Dim var_4DC As Variant
  Dim var_4FC As Variant
  Dim var_50C As Variant
  Dim var_52C As Variant
  Dim var_53C As Variant
  Dim var_54C As Variant
  Dim var_57C As Variant
  Dim var_58C As Variant
  Dim var_59C As Variant
  Dim var_5BC As Variant
  Dim var_5DC As Variant
  Dim var_5FC As Variant
  Dim var_60C As Variant
  Dim var_62C As Variant
  Dim var_63C As Variant
  Dim var_66C As Variant
  Dim var_67C As Variant
  Dim var_68C As Variant
  Dim var_6BC As Variant
  Dim var_6DC As Variant
  Dim var_6FC As Variant
  Dim var_71C As Variant
  Dim var_72C As Variant
  Dim var_75C As Variant
  Dim var_78C As Variant
  Dim var_79C As Variant
  Dim var_804 As Variant
  Dim var_814 As Variant
  Dim var_88C As Variant
  Dim var_8C4 As Variant
  Dim var_92C As Variant
  Dim var_974 As Variant
  Dim var_9A4 As Variant
  Dim var_A1C As Variant
  Dim var_A2C As Variant
  Dim var_A98 As Variant
  Dim var_AE0 As Variant
  Dim var_B2C As Variant
  Dim var_CA4 As Variant
  Dim var_CE4 As Variant
  Dim var_CF4 As Variant
  Dim var_DFC As Variant
  Dim var_E84 As Variant
  Dim var_ED4 As Variant
  Dim var_3C0 As Variant
  Dim var_44C As Variant
  Dim var_450 As MSHFlexGrid
  Dim var_45C As MSHFlexGrid
  Dim var_464 As Variant
  Dim var_7D0 As Variant
  Dim var_7D8 As MSHFlexGrid
  Dim var_F58 As Variant
  Dim var_7E4 As MSHFlexGrid
  Dim var_F9C As Variant
  Dim var_FBC As Variant
  Dim var_7EC As Variant
  Dim var_1000 As Variant
  Dim var_1020 As Variant
  Dim var_1064 As Variant
  Dim var_1084 As Variant
  Dim var_838 As MSHFlexGrid
  Dim var_1254 As Double
  Dim var_83C As MSHFlexGrid
  Dim var_125C As Double
  Dim var_890 As MSHFlexGrid
  Dim var_298 As String
  Dim var_300 As String
  Dim var_46C As String
  Dim var_7E0 As String
  Dim var_A0C As String
  Dim var_AFC As String
  Dim var_85C As Variant
  Dim var_90C As Variant
  Dim var_354 As Variant
  Dim var_9C0 As String
  Dim var_88 As Recordset15
  loc_1AAE77C: On Error Goto loc_1AB2285
  loc_1AAE78A: Set var_1B0 = Me.Txt
  loc_1AAE790: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1AAE7B9: If (Proc_6_27_EA565C(var_1B4, "Voucher Date") = 0) Then
  loc_1AAE7BC:   Exit Sub
  loc_1AAE7BD: End If
  loc_1AAE7C8: Set var_1B0 = Me.Txt
  loc_1AAE7CE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_1AAE7F7: If (Proc_6_27_EA565C(var_1B4, "Voucher No") = 0) Then
  loc_1AAE7FA:   Exit Sub
  loc_1AAE7FB: End If
  loc_1AAE806: Set var_1B0 = Me.Txt
  loc_1AAE80C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1B4)
  loc_1AAE835: If (Proc_6_27_EA565C(var_1B4, "Party name") = 0) Then
  loc_1AAE838:   Exit Sub
  loc_1AAE839: End If
  loc_1AAE844: Set var_1B0 = Me.Txt
  loc_1AAE84A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1B4)
  loc_1AAE85B: Set var_1B8 = var_1B4
  loc_1AAE873: If (Proc_6_27_EA565C(var_1B8, "Booking No") = 0) Then
  loc_1AAE876:   Exit Sub
  loc_1AAE877: End If
  loc_1AAE87E: Set var_1B0 = Me.TxtGt
  loc_1AAE884: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_1BE)
  loc_1AAE896: Set var_1B4 = Me.TxtGt
  loc_1AAE89C: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1BE, var_1B8)
  loc_1AAE8C2: If (CDbl(Val(var_1B8.Text)) > CDbl(0)) Then
  loc_1AAE8C5:   var_1D0 = 1
  loc_1AAE8CE:   var_1F0 = 1
  loc_1AAE8EC:   var_220 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AAE8F2:   var_230 = Trim(var_220)
  loc_1AAE90E:   If (var_230 = vbNullString) Then
  loc_1AAE92A:     MsgBox("Fill Item Name ", 0, var_220, var_230, var_250)
  loc_1AAE94D:     Me.FGrid.Row = 1
  loc_1AAE959:     Set var_1B0 = Me.FGrid
  loc_1AAE97D:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1AAE985:     Exit Sub
  loc_1AAE986:   End If
  loc_1AAE986:   var_1D0 = 1
  loc_1AAE98F:   var_1F0 = 3
  loc_1AAE9AD:   var_220 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AAE9B3:   var_230 = Trim(var_220)
  loc_1AAE9CF:   If (var_230 = vbNullString) Then
  loc_1AAE9EB:     MsgBox("Item Detail Required ", 0, var_220, var_230, var_250)
  loc_1AAEA0E:     Me.FGrid.Row = 1
  loc_1AAEA1A:     Set var_1B0 = Me.FGrid
  loc_1AAEA3E:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1AAEA46:     Exit Sub
  loc_1AAEA47:   End If
  loc_1AAEA47: End If
  loc_1AAEA6C: For var_254 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_254 'Integer
  loc_1AAEA76:   var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AAEA7E:   var_1F0 = CVar(CLng(7)) 'Long
  loc_1AAEAAE:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1AAEAB5:     var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AAEABD:     var_1F0 = CVar(CLng(5)) 'Long
  loc_1AAEAE9:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1AAEAF8:   Else
  loc_1AAEAFC:     var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AAEB04:     var_1F0 = CVar(CLng(8)) 'Long
  loc_1AAEB13:     var_210 = Me.FGrid.TextMatrix)
  loc_1AAEB1E:     var_1BC = CStr(var_210)
  loc_1AAEB30:     var_AC = (var_AC + Val(var_1BC))
  loc_1AAEB3C:   End If
  loc_1AAEB3F: Next var_254 'Integer
  loc_1AAEB50: Set var_1B0 = Me.TxtGt
  loc_1AAEB56: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1BE, var_92)
  loc_1AAEB61: For var_260 =  To var_1BE: 1 = var_260 'Integer
  loc_1AAEB6D:   var_1E0 = 0
  loc_1AAEB93:   Set var_1B0 = Me.LblCap
  loc_1AAEB99:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_210, -1)
  loc_1AAEBC2:   Set var_1B8 = Me.Txt
  loc_1AAEBC8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_268, var_26C, var_280 & var_1BC & "' And V_Type='")
  loc_1AAEBD0:   var_1E0 = var_268.Tag
  loc_1AAEBE9:   unk_59EE5F.Execute var_284 & var_26C & "'", var_220, 
  loc_1AAEBF1:    = var_1B4.Tag.Fields
  loc_1AAEBF9:    = var_280.Item()
  loc_1AAEC01:    = var_284.Value
  loc_1AAEC3B:   var_288 = Proc_6_38_E68A98(var_220)
  loc_1AAEC46:   If (var_288 = "Addition") Then
  loc_1AAEC56:     Set var_1B0 = Me.TxtGt
  loc_1AAEC5C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4)
  loc_1AAEC64:     var_1BC = var_1B4.Text
  loc_1AAEC7B:     var_B4 = (var_B4 + Val(var_1BC))
  loc_1AAEC95:     Set var_1B0 = Me.TxtPer
  loc_1AAEC9B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC)
  loc_1AAECA3:     var_B4 = var_1B4.Text
  loc_1AAECBA:     var_CC = (var_CC + Val(var_1BC))
  loc_1AAECCA:   Else
  loc_1AAECD2:     If (var_288 = "Deduction") Then
  loc_1AAECE2:       Set var_1B0 = Me.TxtGt
  loc_1AAECE8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC)
  loc_1AAECF0:       var_CC = var_1B4.Text
  loc_1AAED07:       var_BC = (var_BC + Val(var_1BC))
  loc_1AAED21:       Set var_1B0 = Me.TxtPer
  loc_1AAED27:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_BC)
  loc_1AAED2F:       var_25C = var_1B4.Text
  loc_1AAED46:       var_C4 = (var_C4 + Val(var_1BC))
  loc_1AAED56:     Else
  loc_1AAED5E:       If (var_288 = "Discount") Then
  loc_1AAED6E:         Set var_1B0 = Me.TxtGt
  loc_1AAED74:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_C4)
  loc_1AAED7C:         var_25C = var_1B4.Text
  loc_1AAED93:         var_DC = (var_DC + Val(var_1BC))
  loc_1AAEDAD:         Set var_1B0 = Me.TxtPer
  loc_1AAEDB3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_DC)
  loc_1AAEDBB:         var_25C = var_1B4.Text
  loc_1AAEDD2:         var_E4 = (var_E4 + Val(var_1BC))
  loc_1AAEDE2:       Else
  loc_1AAEDEA:         If (var_288 = "Luxury Tax") Then
  loc_1AAEDFA:           Set var_1B0 = Me.TxtGt
  loc_1AAEE00:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_E4)
  loc_1AAEE08:           var_25C = var_1B4.Text
  loc_1AAEE1F:           var_FC = (var_FC + Val(var_1BC))
  loc_1AAEE39:           Set var_1B0 = Me.TxtPer
  loc_1AAEE3F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_FC)
  loc_1AAEE47:           var_25C = var_1B4.Text
  loc_1AAEE5E:           var_D4 = (var_D4 + Val(var_1BC))
  loc_1AAEE6E:         Else
  loc_1AAEE76:           If (var_288 = "Round Off") Then
  loc_1AAEE86:             Set var_1B0 = Me.TxtGt
  loc_1AAEE8C:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_D4)
  loc_1AAEE94:             var_25C = var_1B4.Text
  loc_1AAEEAB:             var_EC = (var_EC + Val(var_1BC))
  loc_1AAEEC5:             Set var_1B0 = Me.TxtPer
  loc_1AAEECB:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_EC)
  loc_1AAEED3:             var_25C = var_1B4.Text
  loc_1AAEEEA:             var_F4 = (var_F4 + Val(var_1BC))
  loc_1AAEEFA:           Else
  loc_1AAEF02:             If (var_288 = "Sale Tax") Then
  loc_1AAEF12:               Set var_1B0 = Me.TxtGt
  loc_1AAEF18:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_F4)
  loc_1AAEF20:               var_25C = var_1B4.Text
  loc_1AAEF37:               var_FC = (var_FC + Val(var_1BC))
  loc_1AAEF51:               Set var_1B0 = Me.TxtPer
  loc_1AAEF57:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_FC)
  loc_1AAEF5F:               var_25C = var_1B4.Text
  loc_1AAEF76:               var_D4 = (var_D4 + Val(var_1BC))
  loc_1AAEF86:             Else
  loc_1AAEF8E:               If (var_288 = "Service Charge") Then
  loc_1AAEF9E:                 Set var_1B0 = Me.TxtGt
  loc_1AAEFA4:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_D4)
  loc_1AAEFAC:                 var_25C = var_1B4.Text
  loc_1AAEFC3:                 var_104 = (var_104 + Val(var_1BC))
  loc_1AAEFDD:                 Set var_1B0 = Me.TxtPer
  loc_1AAEFE3:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_104)
  loc_1AAEFEB:                 var_25C = var_1B4.Text
  loc_1AAF002:                 var_10C = (var_10C + Val(var_1BC))
  loc_1AAF012:               Else
  loc_1AAF01A:                 If (var_288 = "Service Tax") Then
  loc_1AAF02A:                   Set var_1B0 = Me.TxtGt
  loc_1AAF030:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_10C)
  loc_1AAF038:                   var_25C = var_1B4.Text
  loc_1AAF04F:                   var_FC = (var_FC + Val(var_1BC))
  loc_1AAF069:                   Set var_1B0 = Me.TxtPer
  loc_1AAF06F:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_FC)
  loc_1AAF077:                   var_25C = var_1B4.Text
  loc_1AAF08E:                   var_D4 = (var_D4 + Val(var_1BC))
  loc_1AAF09E:                 Else
  loc_1AAF0A6:                   If (var_288 = "CGST") Then
  loc_1AAF0B6:                     Set var_1B0 = Me.TxtGt
  loc_1AAF0BC:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_D4)
  loc_1AAF0C4:                     var_25C = var_1B4.Text
  loc_1AAF0DB:                     var_184 = (var_184 + Val(var_1BC))
  loc_1AAF0EB:                   Else
  loc_1AAF0F3:                     If (var_288 = "SGST") Then
  loc_1AAF103:                       Set var_1B0 = Me.TxtGt
  loc_1AAF109:                       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_184)
  loc_1AAF111:                       var_25C = var_1B4.Text
  loc_1AAF128:                       var_18C = (var_18C + Val(var_1BC))
  loc_1AAF138:                     Else
  loc_1AAF140:                       If (var_288 = "IGST") Then
  loc_1AAF150:                         Set var_1B0 = Me.TxtGt
  loc_1AAF156:                         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_18C)
  loc_1AAF15E:                         var_25C = var_1B4.Text
  loc_1AAF175:                         var_194 = (var_194 + Val(var_1BC))
  loc_1AAF182:                         GoTo loc_1AAF185
  loc_1AAF185:                         ' Referenced from:                     1AAF182
  loc_1AAF185:                       End If
  loc_1AAF185:                     End If
  loc_1AAF185:                   End If
  loc_1AAF185:                 End If
  loc_1AAF185:               End If
  loc_1AAF185:             End If
  loc_1AAF185:           End If
  loc_1AAF185:         End If
  loc_1AAF185:       End If
  loc_1AAF185:     End If
  loc_1AAF185:   End If
  loc_1AAF188: Next var_260 'Integer
  loc_1AAF199: Set var_1B0 = Me.TextGt
  loc_1AAF19F: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1BE, var_92)
  loc_1AAF1AA: For var_28C =  To var_1BE: 1 = var_28C 'Integer
  loc_1AAF1B6:   var_1E0 = 0
  loc_1AAF1DC:   Set var_1B0 = Me.LableCap
  loc_1AAF1E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, "Select IsNull(Max(Nature),'') from SundryType Where SundryCode='", var_210, -1)
  loc_1AAF1EA:   var_27C = var_1B4.Tag
  loc_1AAF20B:   Set var_1B8 = Me.Txt
  loc_1AAF211:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_268, var_26C, var_280 & var_1BC & "' And V_Type='")
  loc_1AAF219:   var_1E0 = var_268.Tag
  loc_1AAF232:   unk_59EE5F.Execute var_284 & var_26C & "'", var_220, 
  loc_1AAF23A:    = var_27C.Fields
  loc_1AAF242:    = var_280.Item()
  loc_1AAF24A:    = var_284.Value
  loc_1AAF284:   var_290 = Proc_6_38_E68A98(var_220)
  loc_1AAF28F:   If (var_290 = "Addition") Then
  loc_1AAF29F:     Set var_1B0 = Me.TextGt
  loc_1AAF2A5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4)
  loc_1AAF2AD:     var_1BC = var_1B4.Text
  loc_1AAF2C4:     var_124 = (var_124 + Val(var_1BC))
  loc_1AAF2DE:     Set var_1B0 = Me.TextPer
  loc_1AAF2E4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC)
  loc_1AAF2EC:     var_124 = var_1B4.Text
  loc_1AAF303:     var_13C = (var_13C + Val(var_1BC))
  loc_1AAF313:   Else
  loc_1AAF31B:     If (var_290 = "Deduction") Then
  loc_1AAF32B:       Set var_1B0 = Me.TextGt
  loc_1AAF331:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC)
  loc_1AAF339:       var_13C = var_1B4.Text
  loc_1AAF350:       var_12C = (var_12C + Val(var_1BC))
  loc_1AAF36A:       Set var_1B0 = Me.TextPer
  loc_1AAF370:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_12C)
  loc_1AAF378:       var_25C = var_1B4.Text
  loc_1AAF38F:       var_134 = (var_134 + Val(var_1BC))
  loc_1AAF39F:     Else
  loc_1AAF3A7:       If (var_290 = "Discount") Then
  loc_1AAF3B7:         Set var_1B0 = Me.TextGt
  loc_1AAF3BD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_134)
  loc_1AAF3C5:         var_25C = var_1B4.Text
  loc_1AAF3DC:         var_14C = (var_14C + Val(var_1BC))
  loc_1AAF3F6:         Set var_1B0 = Me.TextPer
  loc_1AAF3FC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_14C)
  loc_1AAF404:         var_25C = var_1B4.Text
  loc_1AAF41B:         var_154 = (var_154 + Val(var_1BC))
  loc_1AAF42B:       Else
  loc_1AAF433:         If (var_290 = "Luxury Tax") Then
  loc_1AAF443:           Set var_1B0 = Me.TextGt
  loc_1AAF449:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_154)
  loc_1AAF451:           var_25C = var_1B4.Text
  loc_1AAF468:           var_16C = (var_16C + Val(var_1BC))
  loc_1AAF482:           Set var_1B0 = Me.TextPer
  loc_1AAF488:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_16C)
  loc_1AAF490:           var_25C = var_1B4.Text
  loc_1AAF4A7:           var_144 = (var_144 + Val(var_1BC))
  loc_1AAF4B7:         Else
  loc_1AAF4BF:           If (var_290 = "Round Off") Then
  loc_1AAF4CF:             Set var_1B0 = Me.TextGt
  loc_1AAF4D5:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_144)
  loc_1AAF4DD:             var_25C = var_1B4.Text
  loc_1AAF4F4:             var_15C = (var_15C + Val(var_1BC))
  loc_1AAF50E:             Set var_1B0 = Me.TextPer
  loc_1AAF514:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_15C)
  loc_1AAF51C:             var_25C = var_1B4.Text
  loc_1AAF533:             var_164 = (var_164 + Val(var_1BC))
  loc_1AAF543:           Else
  loc_1AAF54B:             If (var_290 = "Sale Tax") Then
  loc_1AAF55B:               Set var_1B0 = Me.TextGt
  loc_1AAF561:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_164)
  loc_1AAF569:               var_25C = var_1B4.Text
  loc_1AAF580:               var_16C = (var_16C + Val(var_1BC))
  loc_1AAF59A:               Set var_1B0 = Me.TextPer
  loc_1AAF5A0:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_16C)
  loc_1AAF5A8:               var_25C = var_1B4.Text
  loc_1AAF5BF:               var_144 = (var_144 + Val(var_1BC))
  loc_1AAF5CF:             Else
  loc_1AAF5D7:               If (var_290 = "Service Charge") Then
  loc_1AAF5E7:                 Set var_1B0 = Me.TextGt
  loc_1AAF5ED:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_144)
  loc_1AAF5F5:                 var_25C = var_1B4.Text
  loc_1AAF60C:                 var_174 = (var_174 + Val(var_1BC))
  loc_1AAF626:                 Set var_1B0 = Me.TextPer
  loc_1AAF62C:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_174)
  loc_1AAF634:                 var_25C = var_1B4.Text
  loc_1AAF64B:                 var_17C = (var_17C + Val(var_1BC))
  loc_1AAF65B:               Else
  loc_1AAF663:                 If (var_290 = "Service Tax") Then
  loc_1AAF673:                   Set var_1B0 = Me.TextGt
  loc_1AAF679:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_17C)
  loc_1AAF681:                   var_25C = var_1B4.Text
  loc_1AAF698:                   var_16C = (var_16C + Val(var_1BC))
  loc_1AAF6B2:                   Set var_1B0 = Me.TextPer
  loc_1AAF6B8:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_16C)
  loc_1AAF6C0:                   var_25C = var_1B4.Text
  loc_1AAF6D7:                   var_144 = (var_144 + Val(var_1BC))
  loc_1AAF6E7:                 Else
  loc_1AAF6EF:                   If (var_290 = "CGST") Then
  loc_1AAF6FF:                     Set var_1B0 = Me.TxtGt
  loc_1AAF705:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_144)
  loc_1AAF70D:                     var_25C = var_1B4.Text
  loc_1AAF724:                     var_19C = (var_19C + Val(var_1BC))
  loc_1AAF734:                   Else
  loc_1AAF73C:                     If (var_290 = "SGST") Then
  loc_1AAF74C:                       Set var_1B0 = Me.TxtGt
  loc_1AAF752:                       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_19C)
  loc_1AAF75A:                       var_25C = var_1B4.Text
  loc_1AAF771:                       var_1A4 = (var_1A4 + Val(var_1BC))
  loc_1AAF781:                     Else
  loc_1AAF789:                       If (var_290 = "IGST") Then
  loc_1AAF799:                         Set var_1B0 = Me.TxtGt
  loc_1AAF79F:                         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_1B4, var_1BC, var_1A4)
  loc_1AAF7A7:                         var_25C = var_1B4.Text
  loc_1AAF7BE:                         var_1AC = (var_1AC + Val(var_1BC))
  loc_1AAF7CB:                         GoTo loc_1AAF7CE
  loc_1AAF7CE:                         ' Referenced from:                     1AAF7CB
  loc_1AAF7CE:                       End If
  loc_1AAF7CE:                     End If
  loc_1AAF7CE:                   End If
  loc_1AAF7CE:                 End If
  loc_1AAF7CE:               End If
  loc_1AAF7CE:             End If
  loc_1AAF7CE:           End If
  loc_1AAF7CE:         End If
  loc_1AAF7CE:       End If
  loc_1AAF7CE:     End If
  loc_1AAF7CE:   End If
  loc_1AAF7D1: Next var_28C 'Integer
  loc_1AAF7DD: Set var_1B0 = Me.TextGt
  loc_1AAF7E3: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_1BE)
  loc_1AAF7F5: Set var_1B4 = Me.TextGt
  loc_1AAF7FB: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1BE, var_1B8)
  loc_1AAF810: var_25C = Val(var_1B8.Text)
  loc_1AAF81A: var_A4 = (var_A4 + var_25C)
  loc_1AAF82C: var_9C = vbNullString
  loc_1AAF832: Call Proc_124_83_113366C(var_1BE, var_A4)
  loc_1AAF83D: If (var_1BE = 0) Then
  loc_1AAF840:   Exit Sub
  loc_1AAF841: End If
  loc_1AAF84C: Set var_1B0 = Me.TxtGrid
  loc_1AAF852: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_1B4)
  loc_1AAF85A: var_1B4.Visible = False
  loc_1AAF866: Call Proc_124_87_F28930(var_25C)
  loc_1AAF879: Set var_1B0 = Me.Txt
  loc_1AAF87F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_1B4)
  loc_1AAF8A7: If (Proc_6_91_EF2D40(CDate(var_1B4.Text)) = 0) Then
  loc_1AAF8B5:   Set var_1B0 = Me.Txt
  loc_1AAF8BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1AAF8C3:   var_1B4.SetFocus
  loc_1AAF8CF:   Exit Sub
  loc_1AAF8D0: End If
  loc_1AAF8D4: Set var_1B0 = Me.TopCtrl1
  loc_1AAF8DA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1B4)
  loc_1AAF8E2: var_1BC = CStr()
  loc_1AAF8F3: If (var_1BC = "Add") Then
  loc_1AAF923:   Set var_1B0 = Me.Txt
  loc_1AAF929:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Select Count(*) From HallSale1 Where DocID='", var_210, -1)
  loc_1AAF931:   var_1B8 = var_1B4.Text
  loc_1AAF94A:   unk_59EE5F.Execute var_268 & var_1BC & "'", 0, var_27C
  loc_1AAF952:   var_220 = var_1B8.Fields
  loc_1AAF95A:    = var_268.Item()
  loc_1AAF962:    = var_27C.Value
  loc_1AAF98F:   If (var_220 > 0) Then
  loc_1AAF998:     Call Proc_124_90_11BE3FC(MemVar_1F92044)
  loc_1AAF9AB:     Set var_1B0 = Me.Txt
  loc_1AAF9B1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4)
  loc_1AAF9B9:     var_1B4.Text = var_1BC
  loc_1AAF9C8:     Exit Sub
  loc_1AAF9C9:   End If
  loc_1AAF9CC: Else
  loc_1AAF9E9:   var_1B4 = Me.Fields.Item("DocID")
  loc_1AAF9F1:   var_210 = var_1B4.Value
  loc_1AAF9FA:   var_1BC = CStr(var_210)
  loc_1AAFA00:   global_104 = var_1BC
  loc_1AAFA11: End If
  loc_1AAFA13: var_8A = &HFF
  loc_1AAFA1F: unk_59EE5F.BeginTrans var_294
  loc_1AAFA42: Set var_1B0 = Me.Txt
  loc_1AAFA48: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From SunTran Where DocID='", var_210)
  loc_1AAFA50: -1 = var_1B4.Text
  loc_1AAFA69: unk_59EE5F.Execute var_1B8 & var_1BC & "'", var_8A, var_1BC
  loc_1AAFAA1: Set var_1B0 = Me.Txt
  loc_1AAFAA7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From SunTranH Where DocID='")
  loc_1AAFAAF: var_210 = var_1B4.Text
  loc_1AAFAB8: var_264 = -1 & var_1BC
  loc_1AAFAC8: unk_59EE5F.Execute var_1B8 & var_1BC & "'", var_1B8, 
  loc_1AAFB00: Set var_1B0 = Me.Txt
  loc_1AAFB06: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From HallStock Where DocID='")
  loc_1AAFB0E: var_210 = var_1B4.Text
  loc_1AAFB17: var_264 = -1 & var_1BC
  loc_1AAFB27: unk_59EE5F.Execute var_1B8 & var_1BC & "'", var_1B8, 
  loc_1AAFB5F: Set var_1B0 = Me.Txt
  loc_1AAFB65: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From HallSale1 Where DocID='")
  loc_1AAFB6D: var_210 = var_1B4.Text
  loc_1AAFB76: var_264 = -1 & var_1BC
  loc_1AAFB86: unk_59EE5F.Execute var_1B8 & var_1BC & "'", var_1B8, 
  loc_1AAFBBE: Set var_1B0 = Me.Txt
  loc_1AAFBC4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "Delete From HallSale2 Where DocID='")
  loc_1AAFBCC: var_210 = var_1B4.Text
  loc_1AAFBD5: var_264 = -1 & var_1BC
  loc_1AAFBE5: unk_59EE5F.Execute var_1B8 & var_1BC & "'", var_1B8, 
  loc_1AAFC0D: Set var_1B0 = Me.Txt
  loc_1AAFC13: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4)
  loc_1AAFC2E: Set var_1B8 = Me.Txt
  loc_1AAFC34: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_268)
  loc_1AAFC49: var_25C = Val(var_268.Text)
  loc_1AAFC57: Set var_27C = Me.Txt
  loc_1AAFC5D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_280)
  loc_1AAFC6C: Proc_6_7_F25D88(var_220, CVar(var_280))
  loc_1AAFC7F: Set var_284 = Me.Txt
  loc_1AAFC85: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2C4)
  loc_1AAFCB2: Set var_354 = Me.Txt
  loc_1AAFCB8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_358)
  loc_1AAFCD3: Set var_3C0 = Me.Txt
  loc_1AAFCD9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C4)
  loc_1AAFCED: Set var_44C = Me.TextGt
  loc_1AAFCF3: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_1BE)
  loc_1AAFD05: Set var_450 = Me.TextGt
  loc_1AAFD0B: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1BE, var_454)
  loc_1AAFD20: var_F14 = Val(var_454.Text)
  loc_1AAFD2A: Set var_45C = Me.TxtGt
  loc_1AAFD30: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_45E, var_F14)
  loc_1AAFD42: Set var_464 = Me.TxtGt
  loc_1AAFD48: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_45E, var_468)
  loc_1AAFD5D: var_F1C = Val(var_468.Text)
  loc_1AAFD67: Set var_7D0 = Me.TextGt
  loc_1AAFD6D: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_7D2, var_F1C)
  loc_1AAFD7F: Set var_7D8 = Me.TextGt
  loc_1AAFD85: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_7D2, var_7DC)
  loc_1AAFD9A: var_F24 = Val(var_7DC.Text)
  loc_1AAFDA4: Set var_7E4 = Me.TxtGt
  loc_1AAFDAA: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_7E6, var_F24)
  loc_1AAFDBC: Set var_7EC = Me.TxtGt
  loc_1AAFDC2: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_7E6, var_7F0)
  loc_1AAFDD7: var_F2C = Val(var_7F0.Text)
  loc_1AAFDE5: Set var_838 = Me.Txt
  loc_1AAFDEB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_83C)
  loc_1AAFDFA: Proc_6_7_F25D88(var_85C, CVar(var_83C))
  loc_1AAFE08: Set var_890 = Me.txtM
  loc_1AAFE0E: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_894)
  loc_1AAFE16: var_8A4 = var_894.defaultText
  loc_1AAFE2A: Set var_8E8 = Me.Txt
  loc_1AAFE30: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_8EC, var_8A4)
  loc_1AAFE3F: Proc_6_7_F25D88(var_90C, CVar(var_8EC))
  loc_1AAFE4D: Set var_940 = Me.txtM
  loc_1AAFE53: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_944)
  loc_1AAFE5B: var_954 = var_944.defaultText
  loc_1AAFE72: Set var_9B8 = Me.Txt
  loc_1AAFE78: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_9BC, var_9C0)
  loc_1AAFE93: Set var_A04 = Me.Txt
  loc_1AAFE99: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A08, var_A0C)
  loc_1AAFEB4: Set var_A50 = Me.Txt
  loc_1AAFEBA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_A54)
  loc_1AAFECF: var_F34 = Val(var_A54.Text)
  loc_1AAFEDD: Set var_A9C = Me.Txt
  loc_1AAFEE3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AA0)
  loc_1AAFEF2: Proc_6_7_F25D88(var_AC0, CVar(var_AA0))
  loc_1AAFF05: Set var_AF4 = Me.Txt
  loc_1AAFF0B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AF8, var_AFC)
  loc_1AAFF20: var_F3C = Val(var_AFC)
  loc_1AAFF2E: Set var_B40 = Me.Txt
  loc_1AAFF34: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_B44)
  loc_1AAFF45: var_B64 = CVar(Proc_6_38_E68A98(CVar(var_B44), var_F3C)) 'String
  loc_1AAFF5B: Set var_BA8 = Me.Txt
  loc_1AAFF61: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_BAC)
  loc_1AAFF70: Proc_6_39_E7C810(var_BCC, CVar(var_BAC))
  loc_1AAFF80: Set var_C00 = Me.Txt
  loc_1AAFF86: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_C04)
  loc_1AAFF95: Proc_6_39_E7C810(var_C24, CVar(var_C04))
  loc_1AAFFA1: Set var_C58 = Me.TextGt
  loc_1AAFFA7: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_C5A)
  loc_1AAFFB6: Set var_C60 = Me.TextGt
  loc_1AAFFBC: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C5A, var_C64)
  loc_1AAFFCB: Proc_6_39_E7C810(var_C84, CVar(var_C64))
  loc_1AAFFDB: Proc_6_7_F25D88(var_D34, MemVar_1F920EC)
  loc_1AAFFE4: Set var_D68 = Me.TopCtrl1
  loc_1AAFFEA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_25C)
  loc_1AB000D: var_D7C = CStr(var_D78)
  loc_1AB002F: Set var_E10 = Me.Txt
  loc_1AB0035: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_E14)
  loc_1AB0050: Set var_E5C = Me.Txt
  loc_1AB0056: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_E60)
  loc_1AB0085: var_26C = "Insert Into HallSale1(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code,BookDocId," & "Party,RestCode,Total," & "DiscPer,DiscAmt,NonTaxable,Taxable,Tax,CGST,SGST,IGST,ServiceCharge,RoundOff,AddAmt,DEDAMT,NetAmt,FrBookDate,FrBookTime,ToBookDate,ToBookTime,"
  loc_1AB0093: var_274 = var_26C & "CrCardNo,CrCardHolder,RectNo,Rectdate,ADVANCE,Remarks,NoOfPax,RatePerPax,TotalPerCover," & "U_Name, U_EntDt, U_AE, Narration, Narration1,LogSite_Code) "
  loc_1AB009A: var_278 = var_274 & " Values("
  loc_1AB00BB: var_2B0 = var_278 & "'" & var_1B4.Text & "'," & CStr(var_25C)
  loc_1AB0101: var_340 = CVar(var_2B0 & ",") & var_220 & ",'" & CVar(var_2C4.Tag) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) 
  loc_1AB015A: var_47C = CVar((var_F14 + var_F1C)) 'Double
  loc_1AB0167: var_4AC = var_340 & "','" & CVar(var_358.Tag) & "'," & "'" & CVar(var_3C4.Text) & "','" & CVar(global_56) & "'," & var_47C & "," 
  loc_1AB0172: var_4BC = CVar((var_154 + var_E4)) 'Double
  loc_1AB018A: var_4FC = CVar((var_14C + var_DC)) 'Double
  loc_1AB01A2: var_53C = CVar((var_11C + var_AC)) 'Double
  loc_1AB01BA: var_57C = CVar((var_114 + var_A4)) 'Double
  loc_1AB01D2: var_5BC = CVar((var_16C + var_FC)) 'Double
  loc_1AB01EA: var_5FC = CVar((var_19C + var_184)) 'Double
  loc_1AB0202: var_63C = CVar((var_1A4 + var_18C)) 'Double
  loc_1AB021A: var_67C = CVar((var_1AC + var_194)) 'Double
  loc_1AB021E: var_68C = var_4AC & var_4BC & "," & var_4FC & "," & var_53C & "," & var_57C & "," & var_5BC & "," & var_5FC & "," & var_63C & "," & var_67C 
  loc_1AB0232: var_6BC = CVar((var_174 + var_104)) 'Double
  loc_1AB024A: var_6FC = CVar((var_15C + var_EC)) 'Double
  loc_1AB026B: var_75C = CVar((var_124 + var_B4)) 'Double
  loc_1AB0283: var_79C = CVar((var_12C + var_BC)) 'Double
  loc_1AB029B: var_804 = CVar((var_F24 + var_A08.Text)) 'Double
  loc_1AB02B8: var_88C = var_68C & "," & var_6BC & "," & var_6FC & "," & vbNullString & var_75C & "," & var_79C & "," & var_804 & "," & var_85C & ",'" 
  loc_1AB0316: var_A2C = var_88C & CVar(CStr(var_8A4)) & "'," & var_90C & ",'" & CVar(CStr(var_9BC.Text)) & "'," & "'" & CVar(var_9C0) & "','" & CVar(var_A0C) 
  loc_1AB0333: var_A98 = var_A2C & "'," & CVar(var_AF8.Text) & "," 
  loc_1AB03AA: var_CF4 = var_A98 & var_AC0 & "," & CVar(var_F3C) & ",'" & Trim(var_B64) & "'," & var_BCC & "," & var_C24 & "," & var_C84 & "," & "'" & CVar(MemVar_1F920C8) 
  loc_1AB03F0: var_E84 = var_CF4 & "'," & var_D34 & ",'" & IIf((var_D7C = "Add"), "A", "E") & "','" & CVar(var_E14.Text) & "','" & CVar(var_E60.Text) 
  loc_1AB041A: unk_59EE5F.Execute CStr(var_E84 & "','" & CVar(MemVar_1F92078) & "')"), var_F08, -1
  loc_1AB05CD: For var_F40 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_F40 'Integer
  loc_1AB05D7:   var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AB05DF:   var_1F0 = CVar(CLng(1)) 'Long
  loc_1AB05FF:   var_230 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1AB0626:   Set var_1B4 = Me.FGrid
  loc_1AB0665:   If CBool(CVar(CLng(3)) And (CDbl(Val(CStr(var_1B4.TextMatrix)))) <> CDbl(0))) Then
  loc_1AB0676:     Set var_1B0 = Me.Txt
  loc_1AB067C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_278, CVar(CLng(var_92)), (var_230 <> vbNullString))
  loc_1AB0684:     var_1F0 = var_1B4.Text
  loc_1AB068D:     var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AB06B7:     var_25C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AB06C8:     Set var_268 = Me.Txt
  loc_1AB06CE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_27C, var_2B0, var_25C, CVar(CLng(0)))
  loc_1AB06D6:     var_1D0 = var_27C.Tag
  loc_1AB06FB:     Set var_284 = Me.Txt
  loc_1AB0701:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_2C4, var_9C0)
  loc_1AB0709:     var_1D0 = var_2C4.Text
  loc_1AB0716:     var_F14 = Val(var_9C0)
  loc_1AB0724:     Set var_2FC = Me.Txt
  loc_1AB072A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_354, var_F14)
  loc_1AB0739:     Proc_6_7_F25D88(var_230, CVar(var_354))
  loc_1AB074C:     Set var_358 = Me.Txt
  loc_1AB0752:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_D7C)
  loc_1AB075A:     1 = var_3C0.Text
  loc_1AB0763:     var_438 = CVar(CLng(var_92)) 'Long
  loc_1AB076B:     var_49C = CVar(CLng(9)) 'Long
  loc_1AB078A:     var_4FC = CVar(CLng(var_92)) 'Long
  loc_1AB0792:     var_53C = CVar(CLng(&HD)) 'Long
  loc_1AB07B1:     var_59C = CVar(CLng(var_92)) 'Long
  loc_1AB07B9:     var_5DC = CVar(CLng(&H13)) 'Long
  loc_1AB07D8:     var_63C = CVar(CLng(var_92)) 'Long
  loc_1AB07E0:     var_67C = CVar(CLng(&HE)) 'Long
  loc_1AB07E9:     Set var_454 = Me.FGrid
  loc_1AB07EF:     var_4CC = var_454.TextMatrix)
  loc_1AB07FF:     var_6DC = CVar(CLng(var_92)) 'Long
  loc_1AB0807:     var_71C = CVar(CLng(&HA)) 'Long
  loc_1AB0826:     var_79C = CVar(CLng(var_92)) 'Long
  loc_1AB082E:     var_804 = CVar(CLng(3)) 'Long
  loc_1AB0837:     Set var_464 = Me.FGrid
  loc_1AB0857:     var_92C = CVar(CLng(var_92)) 'Long
  loc_1AB085F:     var_9A4 = CVar(CLng(4)) 'Long
  loc_1AB0888:     var_AE0 = CVar(CLng(var_92)) 'Long
  loc_1AB0890:     var_B2C = CVar(CLng(5)) 'Long
  loc_1AB0899:     Set var_7D0 = Me.FGrid
  loc_1AB08B9:     var_CA4 = CVar(CLng(var_92)) 'Long
  loc_1AB08C1:     var_CE4 = CVar(CLng(6)) 'Long
  loc_1AB08EA:     var_D9C = CVar(CLng(var_92)) 'Long
  loc_1AB08F2:     var_DFC = CVar(CLng(7)) 'Long
  loc_1AB08FB:     Set var_7DC = Me.FGrid
  loc_1AB091B:     var_ED4 = CVar(CLng(var_92)) 'Long
  loc_1AB0923:     var_F58 = CVar(CLng(&HB)) 'Long
  loc_1AB094C:     var_F9C = CVar(CLng(var_92)) 'Long
  loc_1AB0954:     var_FBC = CVar(CLng(&HC)) 'Long
  loc_1AB095D:     Set var_7EC = Me.FGrid
  loc_1AB097D:     var_1000 = CVar(CLng(var_92)) 'Long
  loc_1AB0985:     var_1020 = CVar(CLng(&H15)) 'Long
  loc_1AB09AE:     var_1064 = CVar(CLng(var_92)) 'Long
  loc_1AB09B6:     var_1084 = CVar(CLng(&H16)) 'Long
  loc_1AB09D8:     var_1254 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AB09F0:     Set var_83C = Me.FGrid
  loc_1AB0A09:     var_125C = Val(CStr(var_83C.TextMatrix)))
  loc_1AB0A27:     var_974 = Me.FGrid.TextMatrix)
  loc_1AB0A3E:     Proc_6_7_F25D88(var_A2C, MemVar_1F920EC, var_974, CVar(CLng(2)), CVar(CLng(var_92)), var_125C, CVar(CLng(8)), CVar(CLng(var_92)))
  loc_1AB0A47:     Set var_894 = Me.TopCtrl1
  loc_1AB0A4D:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1254)
  loc_1AB0A9F:     var_264 = "Insert Into HallStock(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,Party,Item,DiscApp,SChrgApp,RoundOff,"
  loc_1AB0AAD:     var_270 = var_264 & "UNIT,QtyIss,Rate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,SChrgPer,SChrgAmt,Total,Remarks," & "U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_1AB0AF8:     var_46C = var_270 & "Values(" & "'" & var_278 & "'," & CStr(var_25C) & ",'" & var_2B0 & "','" & Me.LblVPrefix.Caption & "','"
  loc_1AB0B20:     var_250 = CVar(var_46C & MemVar_1F92070 & "'," & vbNullString & CStr(var_F14) & ",") 'String
  loc_1AB0B6C:     var_37C = var_250 & var_230 & ",'" & CVar(global_56) & "','" & CVar(var_D7C) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1AB0BA8:     var_50C = var_37C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_4CC)) 
  loc_1AB0BB1:     var_52C = var_50C & "','" 
  loc_1AB0BE2:     var_62C = var_52C & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & vbNullString & CVar(Val(CStr(var_464.TextMatrix)))) & "," 
  loc_1AB0BED:     var_66C = var_62C & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1AB0C30:     var_78C = var_66C & "," & vbNullString & CVar(Val(CStr(var_7D0.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & vbNullString 
  loc_1AB0C44:     var_814 = var_78C & CVar(Val(CStr(var_7DC.TextMatrix)))) & "," 
  loc_1AB0C77:     var_8C4 = var_814 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_7EC.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1AB0CD8:     var_A1C = var_8C4 & "," & CVar(var_1254) & "," & CVar(var_125C) & ",'" & CVar(CStr(var_974)) & "'," & "'" & CVar(MemVar_1F920C8) & "'," 
  loc_1AB0D19:     unk_59EE5F.Execute CStr(var_A1C & var_A2C & ",'" & IIf((CStr(var_A98) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_B64, -1
  loc_1AB0E55:   End If
  loc_1AB0E58: Next var_F40 'Integer
  loc_1AB0E82: For var_1260 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_92 = var_1260 'Integer
  loc_1AB0E8C:   var_1D0 = CVar(CLng(var_92)) 'Long
  loc_1AB0E94:   var_1F0 = CVar(CLng(2)) 'Long
  loc_1AB0EDB:   Set var_1B4 = Me.FGCat
  loc_1AB0EEC:   var_1BC = CStr(var_1B4.TextMatrix))
  loc_1AB0F1A:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_1BC)) <> CDbl(0))) Then
  loc_1AB0F2B:     Set var_1B0 = Me.Txt
  loc_1AB0F31:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, CVar(CLng(var_92)))
  loc_1AB0F39:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_1B4.Text
  loc_1AB0F6C:     var_25C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1AB0F84:     Set var_268 = Me.FGCat
  loc_1AB0F8A:     var_220 = var_268.TextMatrix)
  loc_1AB0F9D:     var_F14 = Val(CStr(var_220))
  loc_1AB0FC0:     Set var_280 = Me.Txt
  loc_1AB0FC6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_284, var_46C, var_F14, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1AB0FDB:     var_F1C = Val(var_46C)
  loc_1AB0FE9:     Set var_2C4 = Me.Txt
  loc_1AB0FEF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2FC, var_F1C, CVar(CLng(1)))
  loc_1AB0FFE:     Proc_6_7_F25D88(var_250, CVar(var_2FC), CVar(CLng(var_92)))
  loc_1AB1007:     var_49C = CVar(CLng(var_92)) 'Long
  loc_1AB100F:     var_4DC = CVar(CLng(2)) 'Long
  loc_1AB1018:     Set var_354 = Me.FGCat
  loc_1AB102E:     var_53C = CVar(CLng(var_92)) 'Long
  loc_1AB1036:     var_57C = CVar(CLng(4)) 'Long
  loc_1AB1058:     var_F24 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1AB1070:     Set var_3C0 = Me.FGCat
  loc_1AB1089:     var_F2C = Val(CStr(var_3C0.TextMatrix)))
  loc_1AB10BA:     var_F34 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1AB10C8:     Proc_6_7_F25D88(var_4CC, MemVar_1F920EC, var_F34, CVar(CLng(6)), CVar(CLng(var_92)), var_F2C, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1AB10D1:     Set var_44C = Me.TopCtrl1
  loc_1AB10D7:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F24)
  loc_1AB1109:     var_58C = IIf((CStr(var_52C) = "Add"), "A", "E")
  loc_1AB1122:     var_264 = "Insert Into HallSale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_1AB1167:     var_300 = var_264 & var_1BC & "'," & CStr(var_284.Text) & "," & CStr(var_F14) & ",'" & global_132 & "','"
  loc_1AB1183:     var_7E0 = var_300 & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "',"
  loc_1AB11CF:     var_350 = CVar(var_7E0 & CStr(var_F1C) & ",") & var_250 & ",'" & CVar(global_56) & "','" & CVar(CStr(var_354.TextMatrix))) & "'," 
  loc_1AB122E:     var_50C = var_350 & CVar(var_F24) & "," & CVar(var_F2C) & "," & CVar(var_F34) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4CC & ",'" 
  loc_1AB125F:     unk_59EE5F.Execute CStr(var_50C & var_58C & "','N','" & CVar(MemVar_1F92078) & "')"), var_62C, -1
  loc_1AB1309:   End If
  loc_1AB130C: Next var_1260 'Integer
  loc_1AB131D: Set var_1B0 = Me.TxtGt
  loc_1AB1323: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1BE, var_92)
  loc_1AB132E: For var_1264 =  To var_1BE: 1 = var_1264 'Integer
  loc_1AB1342:   Set var_1B0 = Me.Txt
  loc_1AB1348:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4)
  loc_1AB1363:   Set var_1B8 = Me.Txt
  loc_1AB1369:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_268)
  loc_1AB1384:   Set var_27C = Me.Txt
  loc_1AB138A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_280)
  loc_1AB13AD:   Set var_284 = Me.Txt
  loc_1AB13B3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2C4)
  loc_1AB13C2:   Proc_6_7_F25D88(var_220, CVar(var_2C4))
  loc_1AB13D4:   Set var_2FC = Me.LblCap
  loc_1AB13DA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_354)
  loc_1AB13F4:   Set var_358 = Me.TxtPer
  loc_1AB13FA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_3C0)
  loc_1AB140F:   var_F14 = Val(var_3C0.Tag)
  loc_1AB141F:   Set var_3C4 = Me.LblCap
  loc_1AB1425:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_44C, var_300)
  loc_1AB143F:   Set var_450 = Me.LblAt
  loc_1AB1445:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_454)
  loc_1AB145F:   Set var_45C = Me.TxtGt
  loc_1AB1465:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_464)
  loc_1AB147F:   Set var_468 = Me.TxtPer
  loc_1AB1485:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7D0)
  loc_1AB149A:   var_F1C = Val(var_7D0.Text)
  loc_1AB14AA:   Set var_7D8 = Me.TxtGt
  loc_1AB14B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7DC, var_46C)
  loc_1AB14C5:   var_F24 = Val(var_46C)
  loc_1AB14D5:   Set var_7E4 = Me.LblDummy
  loc_1AB14DB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7EC, var_7E0)
  loc_1AB14F0:   var_F2C = Val(var_7E0)
  loc_1AB14FE:   Proc_6_7_F25D88(var_52C, MemVar_1F920EC)
  loc_1AB1507:   Set var_7F0 = Me.TopCtrl1
  loc_1AB150D:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F2C)
  loc_1AB154F:   Set var_838 = Me.Txt
  loc_1AB1555:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_83C)
  loc_1AB1564:   Proc_6_7_F25D88(var_66C, CVar(var_83C))
  loc_1AB1576:   Set var_890 = Me.LblDummy
  loc_1AB157C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_894)
  loc_1AB159D:   var_264 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_1B4.Text
  loc_1AB15F1:   var_2E8 = CVar(var_264 & "'," & CStr(var_92) & ",'" & var_268.Tag & "'," & CStr(Val(var_280.Text)) & ",") & var_220 & ",'" & CVar(var_354.Tag) 
  loc_1AB1647:   var_3E8 = var_2E8 & "'," & CVar(var_44C.Caption) & ",'" & CVar(var_300) & "','" & CVar(var_454.Tag) & "','" & CVar(var_464.Tag) & "'," 
  loc_1AB169D:   var_54C = var_3E8 & CVar(var_7DC.Text) & "," & CVar(var_7EC.Caption) & "," & CVar(var_F2C) & ",'" & CVar(MemVar_1F920C8) & "'," & var_52C 
  loc_1AB16E6:   var_72C = var_54C & ",'" & IIf((CStr(var_58C) = "Add"), "A", "E") & "'," & var_66C & ",'" & CVar(var_894.Tag) & "','" & CVar(global_56) 
  loc_1AB1723:   unk_59EE5F.Execute CStr(var_72C & "','N','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_814, -1
  loc_1AB17F6: Next var_1264 'Integer
  loc_1AB1807: Set var_1B0 = Me.TextGt
  loc_1AB180D: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1BE, var_92)
  loc_1AB1818: For var_1268 =  To var_1BE: 1 = var_1268 'Integer
  loc_1AB182C:   Set var_1B0 = Me.Txt
  loc_1AB1832:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4)
  loc_1AB184D:   Set var_1B8 = Me.Txt
  loc_1AB1853:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_268)
  loc_1AB186E:   Set var_27C = Me.Txt
  loc_1AB1874:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_280)
  loc_1AB1897:   Set var_284 = Me.Txt
  loc_1AB189D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2C4)
  loc_1AB18AC:   Proc_6_7_F25D88(var_220, CVar(var_2C4))
  loc_1AB18BE:   Set var_2FC = Me.LableCap
  loc_1AB18C4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_354)
  loc_1AB18DE:   Set var_358 = Me.TextPer
  loc_1AB18E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_3C0)
  loc_1AB18F9:   var_F14 = Val(var_3C0.Tag)
  loc_1AB1909:   Set var_3C4 = Me.LableCap
  loc_1AB190F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_44C, var_300)
  loc_1AB1929:   Set var_450 = Me.LableAt
  loc_1AB192F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_454)
  loc_1AB1949:   Set var_45C = Me.TextGt
  loc_1AB194F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_464)
  loc_1AB1969:   Set var_468 = Me.TextPer
  loc_1AB196F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7D0)
  loc_1AB1984:   var_F1C = Val(var_7D0.Text)
  loc_1AB1994:   Set var_7D8 = Me.TextGt
  loc_1AB199A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7DC, var_46C)
  loc_1AB19AF:   var_F24 = Val(var_46C)
  loc_1AB19BF:   Set var_7E4 = Me.LableDummy
  loc_1AB19C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7EC, var_7E0)
  loc_1AB19DA:   var_F2C = Val(var_7E0)
  loc_1AB19E8:   Proc_6_7_F25D88(var_52C, MemVar_1F920EC)
  loc_1AB19F1:   Set var_7F0 = Me.TopCtrl1
  loc_1AB19F7:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F2C)
  loc_1AB1A39:   Set var_838 = Me.Txt
  loc_1AB1A3F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_83C)
  loc_1AB1A4E:   Proc_6_7_F25D88(var_66C, CVar(var_83C))
  loc_1AB1A60:   Set var_890 = Me.LableDummy
  loc_1AB1A66:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_894)
  loc_1AB1A87:   var_264 = "Insert Into SunTranH (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_1B4.Text
  loc_1AB1A96:   var_270 = CStr(var_92)
  loc_1AB1AA1:   var_298 = var_264 & "'," & var_270 & ",'"
  loc_1AB1AE4:   var_2F8 = CVar(var_298 & var_268.Tag & "'," & CStr(Val(var_280.Text)) & ",") & var_220 & ",'" & CVar(var_354.Tag) & "'," 
  loc_1AB1B3C:   var_408 = var_2F8 & CVar(var_44C.Caption) & ",'" & CVar(var_300) & "','" & CVar(var_454.Tag) & "','" & CVar(var_464.Tag) & "'," & CVar(var_7DC.Text) 
  loc_1AB1B97:   var_60C = var_408 & "," & CVar(var_7EC.Caption) & "," & CVar(var_F2C) & ",'" & CVar(MemVar_1F920C8) & "'," & var_52C & ",'" & IIf((CStr(var_58C) = "Add"), "A", "E") 
  loc_1AB1BEC:   var_78C = var_60C & "'," & var_66C & ",'" & CVar(var_894.Tag) & "','" & CVar(global_56) & "','N','" & CVar(MemVar_1F92070) & "','" 
  loc_1AB1C0D:   unk_59EE5F.Execute CStr(var_78C & CVar(MemVar_1F92078) & "')"), var_814, -1
  loc_1AB1CE0: Next var_1268 'Integer
  loc_1AB1CE9: Set var_1B0 = Me.TopCtrl1
  loc_1AB1CEF: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1AB1D08: If (CStr() = "Add") Then
  loc_1AB1D1F:   var_1BC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1AB1D45:   Set var_1B0 = Me.Txt
  loc_1AB1D4B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B4, var_270, var_1BC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='")
  loc_1AB1D53:   var_2D8 = var_1B4.Tag
  loc_1AB1D5C:   var_278 = -1 & var_270
  loc_1AB1D63:   var_230 = CVar(var_268.Tag & "' And VP.Date_From<=") 'String
  loc_1AB1D74:   Set var_1B8 = Me.Txt
  loc_1AB1D7A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_268, var_298)
  loc_1AB1D82:   var_230 = var_268.Text
  loc_1AB1D90:   Proc_6_7_F25D88(var_220, CVar(var_298))
  loc_1AB1DAF:   unk_59EE5F.Execute CStr(var_27C & var_220 & " Order By VP.Date_From DESC"), , 
  loc_1AB1DBA:   Set var_88 = var_27C
  loc_1AB1DF0:   var_294 = var_88.RecordCount
  loc_1AB1DFE:   If (var_294 > 0) Then
  loc_1AB1E0F:     Set var_1B0 = Me.Txt
  loc_1AB1E15:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1B4)
  loc_1AB1E2A:     var_25C = Val(var_1B4.Text)
  loc_1AB1E3F:     var_1B8 = var_88.Fields
  loc_1AB1E4F:     var_210 = var_1B8.Item("V_Type").Value
  loc_1AB1E7A:     Proc_6_7_F25D88(var_2D8, CVar(var_88.Fields.Item("Date_From")))
  loc_1AB1E9F:     var_270 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_25C) & " Where (SITE_CODE='"
  loc_1AB1ECA:     var_250 = CVar(var_270 & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_210 & "' and Date_From=" 
  loc_1AB1ED1:     var_2E8 = var_250 & var_2D8 
  loc_1AB1EDF:     unk_59EE5F.Execute CStr(var_2E8), var_2F8, -1
  loc_1AB1F19:   End If
  loc_1AB1F19: End If
  loc_1AB1F1D: Set var_1B0 = Me.TopCtrl1
  loc_1AB1F23: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_284)
  loc_1AB1F3C: If (CStr(var_25C) = "Add") Then
  loc_1AB1F62:   var_1BC = "SELECT COUNT(*) FROM LASTVOU WHERE Logsite_Code='" & MemVar_1F92078
  loc_1AB1F80:   Call 0.Method_arg_50 (var_270, var_1BC & "' and UNAME='" & MemVar_1F920C8 & "' AND ENAME='", var_210, -1, var_1B0)
  loc_1AB1F90:   var_298 = var_1B4 & var_270 & "' "
  loc_1AB1F99:   unk_59EE5F.Execute var_298, 0, var_1B8
  loc_1AB1FA9:    = var_1B4.Item()
  loc_1AB1FB1:    = var_1B8.Value
  loc_1AB1FE2:   If (var_1B0.Fields > 0) Then
  loc_1AB2003:     Set var_1B0 = Me.Txt
  loc_1AB2009:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC, "UPDATE LASTVOU  SET DOCID='")
  loc_1AB2011:     var_210 = var_1B4.Text
  loc_1AB201A:     var_264 = -1 & var_1BC
  loc_1AB202F:     var_274 = var_1BC & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "' and UNAME='"
  loc_1AB2046:     Call 0.Method_arg_50 (var_298, var_274 & MemVar_1F920C8 & "' AND ENAME='")
  loc_1AB205F:     unk_59EE5F.Execute var_1B8 & var_298 & "'  ", , 
  loc_1AB208A:   Else
  loc_1AB209E:     var_1BC = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8
  loc_1AB20AE:     Call 0.Method_arg_50 (var_1BC & "' and UNAME='", var_1BC & "','", var_2E8)
  loc_1AB20B7:     var_270 = -1 & var_1BC & "' and UNAME='"
  loc_1AB20BE:     var_278 = var_1BC & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "','"
  loc_1AB20CF:     Set var_1B0 = Me.Txt
  loc_1AB20D5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_274)
  loc_1AB20DD:     var_278 = var_1B4.Text
  loc_1AB2101:     var_1D0 = MemVar_1F920EC
  loc_1AB2109:     Proc_6_7_F25D88(var_210, var_1D0)
  loc_1AB213B:     unk_59EE5F.Execute CStr(CVar(var_1B8 & var_274 & "','" & MemVar_1F92070 & "',") & var_210 & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1AB2171:   End If
  loc_1AB2171: End If
  loc_1AB2177: unk_59EE5F.CommitTrans
  loc_1AB217E: var_8A = 0
  loc_1AB218A: unk_59EE5F.BeginTrans var_294
  loc_1AB2194: Call Proc_124_101_18C7548(&HFF)
  loc_1AB219F: unk_59EE5F.CommitTrans
  loc_1AB21A6: var_8A = 0
  loc_1AB21B7: Set var_1B0 = Me.Txt
  loc_1AB21BD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1B4, var_1BC)
  loc_1AB21C5: var_8A = var_1B4.Text
  loc_1AB21D9: var_8A = 0
  loc_1AB21E7: Me.Requery -1
  loc_1AB2211: Me.Find "SearchCode ='" & "SearchCode ='" & var_1BC & "'", 0, 1
  loc_1AB2221: Set var_1B0 = Me.TopCtrl1
  loc_1AB2227: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1D0)
  loc_1AB2240: If (CStr(var_8A) = "Add") Then
  loc_1AB2243:   Call TopCtrl1_UnknownEvent_A()
  loc_1AB2248:   Exit Sub
  loc_1AB2249: End If
  loc_1AB226C: Call Proc_124_86_10C6198(Proc_5_1_100CB50("INI", Me), global_80)
  loc_1AB2277: Call Proc_124_82_18ADC40(var_8A)
  loc_1AB2281: Set var_88 = Nothing
  loc_1AB2284: Exit Sub
  loc_1AB2285: ' Referenced from: 1AAE77C
  loc_1AB228B: If (var_8A = &HFF) Then
  loc_1AB2294:   unk_59EE5F.RollbackTrans
  loc_1AB2299: End If
  loc_1AB2299: Proc_6_60_E62BC4()
  loc_1AB229E: Exit Sub
End Sub

Private Sub CmdeInvoiceSql_Click() '1B0DA34
  'Data Table: 59EE40
  Dim var_148 As Variant
  Dim var_140 As Variant
  Dim var_14C As String
  Dim var_150 As Variant
  Dim unk_59EE5F As Connection15
  Dim var_B0 As Double
  Dim var_B8 As Variant
  Dim var_C0 As Variant
  Dim var_C8 As Variant
  Dim var_D0 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As Variant
  Dim var_E8 As Variant
  Dim var_F0 As Variant
  Dim var_F8 As Double
  Dim var_100 As Variant
  Dim var_108 As Variant
  Dim var_110 As Variant
  Dim var_184 As Variant
  Dim var_160 As String
  Dim var_88 As Variant
  Dim var_13C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_144 As Variant
  Dim var_94 As Variant
  Dim var_170 As Variant
  Dim var_A6 As Variant
  Dim var_1E4 As Variant
  Dim var_174 As Variant
  Dim var_1E8 As Variant
  Dim var_1D4 As Variant
  Dim var_1EC As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_214 As Variant
  Dim var_218 As Variant
  Dim var_21C As String
  Dim var_220 As Variant
  Dim var_224 As Variant
  Dim var_98 As Variant
  Dim var_210 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_1C4 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_2DC As Variant
  Dim var_344 As Variant
  Dim var_454 As Variant
  Dim var_47C As Variant
  Dim var_4BC As Variant
  Dim var_4E4 As Variant
  Dim var_56C As Variant
  Dim var_5B4 As Variant
  Dim var_5D4 As Variant
  Dim var_5F8 As Fields15
  Dim var_65C As Variant
  Dim var_6A4 As Variant
  Dim var_6EC As Variant
  Dim var_70C As Variant
  Dim var_754 As Variant
  Dim var_794 As Variant
  Dim var_AB4 As Variant
  Dim var_DAC As Variant
  Dim var_10CC As Variant
  Dim var_13A4 As Variant
  Dim var_167C As Variant
  Dim var_1954 As Variant
  Dim var_1C2C As Variant
  Dim var_21DC As Variant
  Dim var_24B4 As Variant
  Dim var_9E As Integer
  Dim var_424 As Variant
  Dim var_244 As Variant
  Dim var_284 As Variant
  Dim var_2EC As Variant
  Dim var_354 As Variant
  Dim var_3BC As Variant
  Dim var_48C As Variant
  Dim var_4F4 As Variant
  Dim var_55C As Variant
  Dim var_8C As Recordset15
  Dim var_118 As Double
  Dim var_120 As Double
  Dim var_128 As Double
  Dim var_130 As Double
  Dim var_138 As Double
  Dim var_9C As Recordset15
  Dim var_5C4 As Variant
  Dim var_62C As Variant
  Dim var_764 As Variant
  loc_1B09C60: var_148 = "Select S1.DocId,S1.VNo,S1.Vdate,S1.Vtype,'996334' As SACCode,S1.Narration,S1.NoOfPax,S1.RatePerPax,S1.Taxable,SG.Name AS CompanyName,SG.Add1 AS CompAdd1,SG.Add2 AS CompAdd2,SG.Add3 AS CompAdd3,C.CityName,ST.ShortName StateCode,ST.Name State,SG.GSTIN,SG.PIN,SG.Mobile,SG.Email,SG.LegalName,SG.TradeName " & "FROM HallSale1 S1 LEFT JOIN HallBook HB ON HB.DocId=S1.BookDocId LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode Left Join City C on SG.CityCode=C.CityCode Left Join State ST on C.State=ST.Code WHERE S1.DocId='"
  loc_1B09C71: Set var_13C = Me.Txt
  loc_1B09C77: Call 0.Method_CmdeInvoiceSql_Click0 (CInt(4), var_140, var_144, var_148)
  loc_1B09C7F: var_170 = var_140.Text
  loc_1B09C88: var_14C = -1 & var_144
  loc_1B09C98: unk_59EE5F.Execute var_14C & "'", var_174, 
  loc_1B09CC0: var_B0 = CDbl(0)
  loc_1B09CC6: var_B8 = CDbl(0)
  loc_1B09CCC: var_C0 = CDbl(0)
  loc_1B09CD2: var_C8 = CDbl(0)
  loc_1B09CD8: var_D0 = CDbl(0)
  loc_1B09CDE: var_D8 = CDbl(0)
  loc_1B09CE4: var_E0 = CDbl(0)
  loc_1B09CEA: var_E8 = CDbl(0)
  loc_1B09CF0: var_F0 = CDbl(0)
  loc_1B09CF6: var_F8 = CDbl(0)
  loc_1B09CFC: var_100 = CDbl(0)
  loc_1B09D02: var_108 = CDbl(0)
  loc_1B09D08: var_110 = CDbl(0)
  loc_1B09D18: var_184 = "SELECT SM.Nature,ST.SValue,ST.Amt As Amount FROM SunTransaction AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='"
  loc_1B09D47: var_194 = var_184 & var_174.Fields.Item("DocID").Value 
  loc_1B09D5E: unk_59EE5F.Execute CStr(var_194 & "' Order by SNo"), var_1D4, -1
  loc_1B09D69: Set var_94 = var_174
  loc_1B09D83: ' Referenced from: 1B0A38E
  loc_1B09D92: If Not(var_94.EOF) Then
  loc_1B09DBD:   var_1DC = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Nature")), var_174, var_110, var_108, var_100)
  loc_1B09DCE:   If (var_1DC = "Amount") Then
  loc_1B09DFE:     Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_B0), var_F8)
  loc_1B09E06:     var_1B4 = (var_F0 + var_194)
  loc_1B09E0B:     var_B0 = CSng(var_194 & "' Order by SNo")
  loc_1B09E1D:   Else
  loc_1B09E25:     If (var_1DC = "Net Amount") Then
  loc_1B09E55:       Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_B8))
  loc_1B09E5D:       var_1B4 = (var_B0 + var_194)
  loc_1B09E62:       var_B8 = CSng(var_194 & "' Order by SNo")
  loc_1B09E74:     Else
  loc_1B09E7C:       If (var_1DC = "Addition") Then
  loc_1B09EAC:         Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_1B09EB4:         var_1B4 = (var_B8 + var_194)
  loc_1B09EB9:         var_C0 = CSng(var_194 & "' Order by SNo")
  loc_1B09ECB:       Else
  loc_1B09ED3:         If (var_1DC = "Deduction") Then
  loc_1B09F03:           Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C8))
  loc_1B09F0B:           var_1B4 = (var_C0 + var_194)
  loc_1B09F10:           var_C8 = CSng(var_194 & "' Order by SNo")
  loc_1B09F22:         Else
  loc_1B09F2A:           If (var_1DC = "Discount") Then
  loc_1B09F5A:             Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_D0))
  loc_1B09F62:             var_1B4 = (var_C8 + var_194)
  loc_1B09F67:             var_D0 = CSng(var_194 & "' Order by SNo")
  loc_1B09F79:           Else
  loc_1B09F81:             If Not (var_1DC = "Sale Tax") Then
  loc_1B09F8C:               If (var_1DC = "Luxury Tax") Then
  loc_1B09F8F:               End If
  loc_1B09FBC:               Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_D8))
  loc_1B09FC4:               var_1B4 = (var_D0 + var_194)
  loc_1B09FC9:               var_D8 = CSng(var_194 & "' Order by SNo")
  loc_1B09FDB:             Else
  loc_1B09FE3:               If (var_1DC = "Round Off") Then
  loc_1B0A013:                 Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_E8))
  loc_1B0A01B:                 var_1B4 = (var_D8 + var_194)
  loc_1B0A020:                 var_E8 = CSng(var_194 & "' Order by SNo")
  loc_1B0A032:               Else
  loc_1B0A03A:                 If (var_1DC = "Service Charge") Then
  loc_1B0A06A:                   Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_F0))
  loc_1B0A072:                   var_1B4 = (var_E8 + var_194)
  loc_1B0A077:                   var_F0 = CSng(var_194 & "' Order by SNo")
  loc_1B0A089:                 Else
  loc_1B0A091:                   If (var_1DC = "Service Tax") Then
  loc_1B0A0C1:                     Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_F8))
  loc_1B0A0C9:                     var_1B4 = (var_F0 + var_194)
  loc_1B0A0CE:                     var_F8 = CSng(var_194 & "' Order by SNo")
  loc_1B0A0E0:                   Else
  loc_1B0A0E8:                     If (var_1DC = "CGST") Then
  loc_1B0A111:                       Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), var_F8)
  loc_1B0A12B:                       If CBool(var_194 <> 0) Then
  loc_1B0A15B:                         Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0A163:                         var_1B4 = (var_E8 + var_194)
  loc_1B0A168:                         var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0A177:                       End If
  loc_1B0A1A4:                       Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_100))
  loc_1B0A1AC:                       var_1B4 = (var_E0 + var_194)
  loc_1B0A1B1:                       var_100 = CSng(var_194 & "' Order by SNo")
  loc_1B0A1C3:                     Else
  loc_1B0A1CB:                       If (var_1DC = "SGST") Then
  loc_1B0A1F4:                         Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")))
  loc_1B0A20E:                         If CBool(var_194 <> 0) Then
  loc_1B0A23E:                           Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0A246:                           var_1B4 = (var_100 + var_194)
  loc_1B0A24B:                           var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0A25A:                         End If
  loc_1B0A287:                         Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_108))
  loc_1B0A28F:                         var_1B4 = (var_E0 + var_194)
  loc_1B0A294:                         var_108 = CSng(var_194 & "' Order by SNo")
  loc_1B0A2A6:                       Else
  loc_1B0A2AE:                         If (var_1DC = "IGST") Then
  loc_1B0A2D7:                           Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")))
  loc_1B0A2F1:                           If CBool(var_194 <> 0) Then
  loc_1B0A321:                             Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0A329:                             var_1B4 = (var_108 + var_194)
  loc_1B0A32E:                             var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0A33D:                           End If
  loc_1B0A340:                           var_184 = CVar(var_110) 'Double
  loc_1B0A36A:                           Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), var_184)
  loc_1B0A372:                           var_1B4 = (var_E0 + var_194)
  loc_1B0A377:                           var_110 = CSng(var_194 & "' Order by SNo")
  loc_1B0A386:                         End If
  loc_1B0A386:                       End If
  loc_1B0A386:                     End If
  loc_1B0A386:                   End If
  loc_1B0A386:                 End If
  loc_1B0A386:               End If
  loc_1B0A386:             End If
  loc_1B0A386:           End If
  loc_1B0A386:         End If
  loc_1B0A386:       End If
  loc_1B0A386:     End If
  loc_1B0A386:   End If
  loc_1B0A389:   var_94.MoveNext
  loc_1B0A38E:   GoTo loc_1B09D83
  loc_1B0A391: End If
  loc_1B0A3B8: If (((((var_D8 = CDbl(0)) And (var_F8 = CDbl(0))) And (var_100 = CDbl(0))) And (var_108 = CDbl(0))) And (var_110 = CDbl(0))) Then
  loc_1B0A3C9:   var_160 = "This is Not a Tax Invoice"
  loc_1B0A3D4:   MsgBox(var_160, &H10, var_194, var_194 & "' Order by SNo", var_1D4)
  loc_1B0A3E9:   Set var_88 = Nothing
  loc_1B0A3F1:   Set var_94 = Nothing
  loc_1B0A3F4:   Exit Sub
  loc_1B0A3F5: End If
  loc_1B0A3F9: Set var_98 = New 
  loc_1B0A404: Set var_98 = Proc_96_103_1575E24(var_98, var_110)
  loc_1B0A409: var_A6 = &HFF
  loc_1B0A415: unk_59EE5F.BeginTrans var_1E0
  loc_1B0A41A: ' Referenced from: 1B0DA06
  loc_1B0A420: var_1D6 = var_88.EOF
  loc_1B0A429: If Not(var_1D6) Then
  loc_1B0A42F:   Set var_1E4 = var_98 
  loc_1B0A43E:   var_1E4.AddNew var_160, var_184
  loc_1B0A469:   var_1E4.Fields.Item("UserGSTIN").Value = CVar(MemVar_1F92154)
  loc_1B0A4B8:   var_1E4.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_1B0A4EE:   var_1E4.Fields.Item("TranDtls_TaxSch").Value = "GST"
  loc_1B0A51F:   var_1E4.Fields.Item("TranDtls_SupTyp").Value = "B2B"
  loc_1B0A550:   var_1E4.Fields.Item("TranDtls_RegRev").Value = "N"
  loc_1B0A581:   var_1E4.Fields.Item("TranDtls_EcmGstin").Value = vbNullString
  loc_1B0A5B2:   var_1E4.Fields.Item("TranDtls_IgstOnIntra").Value = "N"
  loc_1B0A5E3:   var_1E4.Fields.Item("DocDtls_Typ").Value = "INV"
  loc_1B0A640:   Proc_6_39_E7C810(CVar(var_88.Fields.Item("VNo")) & "' Order by SNo", CVar(var_88.Fields.Item("VNo")))
  loc_1B0A654:   var_1D4 = CVar(Proc_96_43_F99184(Proc_6_38_E68A98(CVar(var_88.Fields.Item("vType")), var_A6), CVar(var_88.Fields.Item("VNo")) & "' Order by SNo")) 'String
  loc_1B0A677:   var_1E4.Fields.Item("DocDtls_No").Value = var_1D4
  loc_1B0A6E2:   var_1D4 = Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")))), "dd/MM/yyyy")
  loc_1B0A70A:   var_1E4.Fields.Item("DocDtls_Dt").Value = var_1D4
  loc_1B0A74C:   var_1E4.Fields.Item("SellerDtls_Gstin").Value = CVar(MemVar_1F92154)
  loc_1B0A77E:   var_1E4.Fields.Item("SellerDtls_LglNm").Value = CVar(MemVar_1F92188)
  loc_1B0A7B0:   var_1E4.Fields.Item("SellerDtls_TrdNm").Value = CVar(MemVar_1F9218C)
  loc_1B0A7E2:   var_1E4.Fields.Item("SellerDtls_Addr1").Value = CVar(MemVar_1F92134)
  loc_1B0A814:   var_1E4.Fields.Item("SellerDtls_Addr2").Value = CVar(MemVar_1F92138)
  loc_1B0A846:   var_1E4.Fields.Item("SellerDtls_Loc").Value = CVar(MemVar_1F92184)
  loc_1B0A878:   var_1E4.Fields.Item("SellerDtls_Pin").Value = CVar(MemVar_1F92178)
  loc_1B0A8AA:   var_1E4.Fields.Item("SellerDtls_Stcd").Value = CVar(MemVar_1F92158)
  loc_1B0A8DC:   var_1E4.Fields.Item("SellerDtls_Ph").Value = CVar(MemVar_1F9217C)
  loc_1B0A90E:   var_1E4.Fields.Item("SellerDtls_Em").Value = CVar(MemVar_1F92180)
  loc_1B0A965:   var_1E4.Fields.Item("BuyerDtls_Gstin").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GSTIN")), 1))
  loc_1B0A9C5:   var_1E4.Fields.Item("BuyerDtls_LglNm").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Legalname")), 1))
  loc_1B0AA25:   var_1E4.Fields.Item("BuyerDtls_TrdNm").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TradeName"))))
  loc_1B0AA60:   var_1E4.Fields.Item("BuyerDtls_Pos").Value = CVar(MemVar_1F92158)
  loc_1B0AAB7:   var_1E4.Fields.Item("BuyerDtls_Addr1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompAdd1"))))
  loc_1B0AB17:   var_1E4.Fields.Item("BuyerDtls_Addr2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompAdd2"))))
  loc_1B0AB77:   var_1E4.Fields.Item("BuyerDtls_Loc").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName"))))
  loc_1B0ABD7:   var_1E4.Fields.Item("BuyerDtls_Pin").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin"))))
  loc_1B0AC37:   var_1E4.Fields.Item("BuyerDtls_Stcd").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateCode"))))
  loc_1B0AC97:   var_1E4.Fields.Item("BuyerDtls_Ph").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile"))))
  loc_1B0ACD4:   var_194 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Email")))) 'String
  loc_1B0ACF7:   var_1E4.Fields.Item("BuyerDtls_Em").Value = var_194
  loc_1B0AD32:   Proc_6_39_E7C810(var_194, CVar(var_88.Fields.Item("Taxable")))
  loc_1B0AD52:   var_1E8 = var_1E4.Fields.Item("ValDtls_AssVal")
  loc_1B0AD5A:   var_1E8.Value = var_194
  loc_1B0AD96:   var_1E4.Fields.Item("ValDtls_CgstVal").Value = CVar(var_100)
  loc_1B0ADC9:   var_1E4.Fields.Item("ValDtls_SgstVal").Value = CVar(var_108)
  loc_1B0ADFC:   var_1E4.Fields.Item("ValDtls_IgstVal").Value = CVar(var_110)
  loc_1B0AE2F:   var_1E4.Fields.Item("ValDtls_CesVal").Value = CVar(var_F8)
  loc_1B0AE62:   var_1E4.Fields.Item("ValDtls_StCesVal").Value = CVar(var_D8)
  loc_1B0AE93:   var_1E4.Fields.Item("ValDtls_Discount").Value = 0
  loc_1B0AEA6:   var_184 = CVar((var_F0 + var_C0)) 'Double
  loc_1B0AECA:   var_1E4.Fields.Item("ValDtls_OthChrg").Value = 0
  loc_1B0AEFD:   var_1E4.Fields.Item("ValDtls_RndOffAmt").Value = CVar(var_E8)
  loc_1B0AF30:   var_1E4.Fields.Item("ValDtls_TotInvVal").Value = CVar(var_B8)
  loc_1B0AF43:   var_184 = CVar((var_B8 - var_E8)) 'Double
  loc_1B0AF4B:   var_160 = "ValDtls_TotInvValFc"
  loc_1B0AF67:   var_1E4.Fields.Item(var_160).Value = CVar(var_B8)
  loc_1B0AF7E:   var_1E4.Update var_160, CVar(var_B8)
  loc_1B0AF85:   Set var_1E4 = Nothing 
  loc_1B0AF8F:   var_200 = 0
  loc_1B0AFEB:   unk_59EE5F.Execute CStr("Select Count(*) From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "' And Isnull(IRN,'')=''"), var_1D4, -1
  loc_1B0AFF3:   var_174 = var_174.Fields
  loc_1B0AFFB:   var_200 = var_1E8.Item(var_1E8)
  loc_1B0B003:   var_1EC = var_1EC.Value
  loc_1B0B02A:   If CBool(var_210) Then
  loc_1B0B080:     unk_59EE5F.Execute CStr("Delete From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "'"), var_1D4, -1
  loc_1B0B0D8:     var_194 = "Delete From eInvoiceBill2 Where DocId='" & var_88.Fields.Item("DocID").Value 
  loc_1B0B0EF:     unk_59EE5F.Execute CStr(var_194 & "'"), var_1D4, -1
  loc_1B0B10B:   End If
  loc_1B0B11F:   var_144 = "INSERT INTO eInvoiceBill1 ([UserGSTIN],[DocId],[TranDtls_TaxSch],[TranDtls_SupTyp],[TranDtls_RegRev],[TranDtls_EcmGstin],[TranDtls_IgstOnIntra],[DocDtls_Typ],[DocDtls_No],[DocDtls_Dt]" & ",[SellerDtls_Gstin],[SellerDtls_LglNm],[SellerDtls_TrdNm],[SellerDtls_Addr1],[SellerDtls_Addr2],[SellerDtls_Loc],[SellerDtls_Pin],[SellerDtls_Stcd],[SellerDtls_Ph],[SellerDtls_Em]"
  loc_1B0B126:   var_148 = var_144 & ",[BuyerDtls_Gstin],[BuyerDtls_LglNm],[BuyerDtls_TrdNm],[BuyerDtls_Pos],[BuyerDtls_Addr1],[BuyerDtls_Addr2],[BuyerDtls_Loc],[BuyerDtls_Pin],[BuyerDtls_Stcd],[BuyerDtls_Ph],[BuyerDtls_Em]"
  loc_1B0B12D:   var_14C = var_148 & ",[DispDtls_Nm],[DispDtls_Addr1],[DispDtls_Addr2],[DispDtls_Loc],[DispDtls_Pin],[DispDtls_Stcd]"
  loc_1B0B134:   var_150 = var_14C & ",[ShipDtls_Gstin],[ShipDtls_LglNm],[ShipDtls_TrdNm],[ShipDtls_Addr1],[ShipDtls_Addr2],[ShipDtls_Loc],[ShipDtls_Pin],[ShipDtls_Stcd]"
  loc_1B0B13B:   var_214 = var_150 & ",[ValDtls_AssVal],[ValDtls_Cgstval],[ValDtls_Sgstval],[ValDtls_Igstval],[ValDtls_Cesval],[ValDtls_StCesVal],[ValDtls_Discount],[ValDtls_OthChrg],[ValDtls_RndOffAmt],[ValDtls_TotInvVal],[ValDtls_TotInvValFc]"
  loc_1B0B142:   var_218 = var_214 & ",[RefDtls_InvRm],[RefDtls_DocPerdDtls_InvStDt],[RefDtls_DocPerdDtls_InvEndDt],[RefDtls_PrecDocDtls_InvNo],[RefDtls_PrecDocDtls_InvDt],[RefDtls_PrecDocDtls_OthRefNo]"
  loc_1B0B149:   var_21C = var_218 & ",[RefDtls_ContrDtls_RecAdvRefr],[RefDtls_ContrDtls_RecAdvDt],[RefDtls_ContrDtls_TendRefr],[RefDtls_ContrDtls_Contrrefr],[RefDtls_ContrDtls_Extrefr],[RefDtls_ContrDtls_Projrefr],[RefDtls_ContrDtls_Porefr],[RefDtls_ContrDtls_PoRefDt]"
  loc_1B0B150:   var_220 = var_21C & ",[PayDtls_Nm],[PayDtls_AccDet],[PayDtls_Mode],[PayDtls_Fininsbr],[PayDtls_PayTerm],[PayDtls_PayInstr],[PayDtls_CrTrn],[PayDtls_DirDr],[PayDtls_CrDay],[PayDtls_PaidAmt],[PayDtls_Paymtdue]"
  loc_1B0B157:   var_224 = var_220 & ",[EwbDtls_TransId],[EwbDtls_TransName],[EwbDtls_Distance],[EwbDtls_TransDocNo],[EwbDtls_TransDocDt],[EwbDtls_VehNo],[EwbDtls_VehType],[EwbDtls_TransMode]) VALUES "
  loc_1B0B15E:   var_1B4 = CVar(var_224 & "(") 'String
  loc_1B0B164:   var_160 = "UserGSTIN"
  loc_1B0B170:   var_13C = var_98.Fields
  loc_1B0B178:   var_140 = var_13C.Item(var_160)
  loc_1B0B180:   var_170 = CVar(var_140) 'Address
  loc_1B0B187:   Proc_6_17_EAA2B0(var_194, var_170, var_1B4, var_25C8, -1)
  loc_1B0B18F:   var_1D4 = var_25CC & var_194 
  loc_1B0B193:   var_184 = ","
  loc_1B0B198:   var_210 = var_1D4 & var_184 
  loc_1B0B19F:   var_1A4 = "DocID"
  loc_1B0B1AB:   var_174 = var_98.Fields
  loc_1B0B1B3:   var_1E8 = var_174.Item(var_1A4)
  loc_1B0B1BB:   var_234 = CVar(var_1E8) 'Address
  loc_1B0B1C2:   Proc_6_17_EAA2B0(var_244, var_234, var_210, var_174)
  loc_1B0B1CA:   var_254 = var_174 & var_244 
  loc_1B0B1CE:   var_1C4 = ","
  loc_1B0B1DA:   var_200 = "TranDtls_TaxSch"
  loc_1B0B1E6:   var_1EC = var_98.Fields
  loc_1B0B1EE:   var_1F0 = var_1EC.Item(var_200)
  loc_1B0B1F6:   var_274 = CVar(var_1F0) 'Address
  loc_1B0B1FD:   Proc_6_17_EAA2B0(var_284, var_274, var_254 & var_1C4)
  loc_1B0B231:   var_2DC = CVar(var_98.Fields.Item("TranDtls_SupTyp")) 'Address
  loc_1B0B238:   Proc_6_17_EAA2B0(var_2EC, var_2DC)
  loc_1B0B273:   Proc_6_17_EAA2B0(var_354, CVar(var_98.Fields.Item("TranDtls_RegRev")))
  loc_1B0B2AE:   Proc_6_17_EAA2B0(var_3BC, CVar(var_98.Fields.Item("TranDtls_EcmGstin")))
  loc_1B0B2E9:   Proc_6_17_EAA2B0(var_424, CVar(var_98.Fields.Item("TranDtls_IgstOnIntra")))
  loc_1B0B324:   Proc_6_17_EAA2B0(var_48C, CVar(var_98.Fields.Item("DocDtls_Typ")))
  loc_1B0B35F:   Proc_6_17_EAA2B0(var_4F4, CVar(var_98.Fields.Item("DocDtls_No")))
  loc_1B0B39A:   Proc_6_7_F25D88(var_55C, CVar(var_98.Fields.Item("DocDtls_Dt")))
  loc_1B0B3A2:   var_56C = var_210 & var_284 & "," & var_2EC & "," & var_354 & "," & var_3BC & "," & var_424 & "," & var_48C & "," & var_4F4 & "," & var_55C 
  loc_1B0B3CE:   var_5B4 = CVar(var_98.Fields.Item("SellerDtls_Gstin")) 'Address
  loc_1B0B3D5:   Proc_6_17_EAA2B0(var_5C4, var_5B4)
  loc_1B0B3F9:   var_5F8 = var_98.Fields
  loc_1B0B410:   Proc_6_17_EAA2B0(var_62C, CVar(var_5F8.Item("SellerDtls_LglNm")))
  loc_1B0B421:   var_65C = var_56C & "," & var_5C4 & "," & var_62C & "," 
  loc_1B0B44B:   Proc_6_17_EAA2B0(var_694, CVar(var_98.Fields.Item("SellerDtls_TrdNm")))
  loc_1B0B486:   Proc_6_17_EAA2B0(var_6FC, CVar(var_98.Fields.Item("SellerDtls_Addr1")))
  loc_1B0B4C1:   Proc_6_17_EAA2B0(var_764, CVar(var_98.Fields.Item("SellerDtls_Addr2")))
  loc_1B0B4D2:   var_794 = var_65C & var_694 & "," & var_6FC & "," & var_764 & "," 
  loc_1B0B4FC:   Proc_6_17_EAA2B0(var_7CC, CVar(var_98.Fields.Item("SellerDtls_Loc")))
  loc_1B0B537:   Proc_6_17_EAA2B0(var_834, CVar(var_98.Fields.Item("SellerDtls_Pin")))
  loc_1B0B572:   Proc_6_17_EAA2B0(var_89C, CVar(var_98.Fields.Item("SellerDtls_Stcd")))
  loc_1B0B5AD:   Proc_6_17_EAA2B0(var_904, CVar(var_98.Fields.Item("SellerDtls_Ph")))
  loc_1B0B5E8:   Proc_6_17_EAA2B0(var_96C, CVar(var_98.Fields.Item("SellerDtls_Em")))
  loc_1B0B623:   Proc_6_17_EAA2B0(var_9D4, CVar(var_98.Fields.Item("BuyerDtls_Gstin")))
  loc_1B0B65E:   Proc_6_17_EAA2B0(var_A3C, CVar(var_98.Fields.Item("BuyerDtls_LglNm")))
  loc_1B0B699:   Proc_6_17_EAA2B0(var_AA4, CVar(var_98.Fields.Item("BuyerDtls_TrdNm")))
  loc_1B0B6A1:   var_AB4 = var_794 & var_7CC & "," & var_834 & "," & var_89C & "," & var_904 & "," & var_96C & "," & var_9D4 & "," & var_A3C & "," & var_AA4 
  loc_1B0B6D4:   Proc_6_17_EAA2B0(var_B0C, CVar(var_98.Fields.Item("BuyerDtls_Pos")))
  loc_1B0B70F:   Proc_6_17_EAA2B0(var_B74, CVar(var_98.Fields.Item("BuyerDtls_Addr1")))
  loc_1B0B74A:   Proc_6_17_EAA2B0(var_BDC, CVar(var_98.Fields.Item("BuyerDtls_Addr2")))
  loc_1B0B785:   Proc_6_17_EAA2B0(var_C44, CVar(var_98.Fields.Item("BuyerDtls_Loc")))
  loc_1B0B7C0:   Proc_6_17_EAA2B0(var_CAC, CVar(var_98.Fields.Item("BuyerDtls_Pin")))
  loc_1B0B7FB:   Proc_6_17_EAA2B0(var_D14, CVar(var_98.Fields.Item("BuyerDtls_Stcd")))
  loc_1B0B836:   Proc_6_17_EAA2B0(var_D7C, CVar(var_98.Fields.Item("BuyerDtls_Ph")))
  loc_1B0B847:   var_DAC = var_AB4 & "," & var_B0C & "," & var_B74 & "," & var_BDC & "," & var_C44 & "," & var_CAC & "," & var_D14 & "," & var_D7C & "," 
  loc_1B0B871:   Proc_6_17_EAA2B0(var_DE4, CVar(var_98.Fields.Item("BuyerDtls_Em")))
  loc_1B0B8AC:   Proc_6_17_EAA2B0(var_E4C, CVar(var_98.Fields.Item("DispDtls_Nm")))
  loc_1B0B8E7:   Proc_6_17_EAA2B0(var_EB4, CVar(var_98.Fields.Item("DispDtls_Addr1")))
  loc_1B0B922:   Proc_6_17_EAA2B0(var_F1C, CVar(var_98.Fields.Item("DispDtls_Addr2")))
  loc_1B0B95D:   Proc_6_17_EAA2B0(var_F84, CVar(var_98.Fields.Item("DispDtls_Loc")))
  loc_1B0B998:   Proc_6_17_EAA2B0(var_FEC, CVar(var_98.Fields.Item("DispDtls_Pin")))
  loc_1B0B9D3:   Proc_6_17_EAA2B0(var_1054, CVar(var_98.Fields.Item("DispDtls_Stcd")))
  loc_1B0BA0E:   Proc_6_17_EAA2B0(var_10BC, CVar(var_98.Fields.Item("ShipDtls_Gstin")))
  loc_1B0BA16:   var_10CC = var_DAC & var_DE4 & "," & var_E4C & "," & var_EB4 & "," & var_F1C & "," & var_F84 & "," & var_FEC & "," & var_1054 & "," & var_10BC 
  loc_1B0BA49:   Proc_6_17_EAA2B0(var_1124, CVar(var_98.Fields.Item("ShipDtls_LglNm")))
  loc_1B0BA84:   Proc_6_17_EAA2B0(var_118C, CVar(var_98.Fields.Item("ShipDtls_TrdNm")))
  loc_1B0BABF:   Proc_6_17_EAA2B0(var_11F4, CVar(var_98.Fields.Item("ShipDtls_Addr1")))
  loc_1B0BAFA:   Proc_6_17_EAA2B0(var_125C, CVar(var_98.Fields.Item("ShipDtls_Addr2")))
  loc_1B0BB35:   Proc_6_17_EAA2B0(var_12C4, CVar(var_98.Fields.Item("ShipDtls_Loc")))
  loc_1B0BB70:   Proc_6_17_EAA2B0(var_132C, CVar(var_98.Fields.Item("ShipDtls_Pin")))
  loc_1B0BBAB:   Proc_6_17_EAA2B0(var_1394, CVar(var_98.Fields.Item("ShipDtls_Stcd")))
  loc_1B0BBB3:   var_13A4 = var_10CC & "," & var_1124 & "," & var_118C & "," & var_11F4 & "," & var_125C & "," & var_12C4 & "," & var_132C & "," & var_1394 
  loc_1B0BBE6:   Proc_6_39_E7C810(var_13FC, CVar(var_98.Fields.Item("ValDtls_AssVal")))
  loc_1B0BC21:   Proc_6_39_E7C810(var_1464, CVar(var_98.Fields.Item("ValDtls_CgstVal")))
  loc_1B0BC5C:   Proc_6_39_E7C810(var_14CC, CVar(var_98.Fields.Item("ValDtls_SgstVal")))
  loc_1B0BC97:   Proc_6_39_E7C810(var_1534, CVar(var_98.Fields.Item("ValDtls_IgstVal")))
  loc_1B0BCD2:   Proc_6_39_E7C810(var_159C, CVar(var_98.Fields.Item("ValDtls_CesVal")))
  loc_1B0BD0D:   Proc_6_39_E7C810(var_1604, CVar(var_98.Fields.Item("ValDtls_StCesVal")))
  loc_1B0BD48:   Proc_6_39_E7C810(var_166C, CVar(var_98.Fields.Item("ValDtls_Discount")))
  loc_1B0BD50:   var_167C = var_13A4 & "," & var_13FC & "," & var_1464 & "," & var_14CC & "," & var_1534 & "," & var_159C & "," & var_1604 & "," & var_166C 
  loc_1B0BD83:   Proc_6_39_E7C810(var_16D4, CVar(var_98.Fields.Item("ValDtls_OthChrg")))
  loc_1B0BDBE:   Proc_6_39_E7C810(var_173C, CVar(var_98.Fields.Item("ValDtls_RndOffAmt")))
  loc_1B0BDF9:   Proc_6_39_E7C810(var_17A4, CVar(var_98.Fields.Item("ValDtls_TotInvVal")))
  loc_1B0BE34:   Proc_6_39_E7C810(var_180C, CVar(var_98.Fields.Item("ValDtls_TotInvValFc")))
  loc_1B0BE6F:   Proc_6_17_EAA2B0(var_1874, CVar(var_98.Fields.Item("RefDtls_InvRm")))
  loc_1B0BEAA:   Proc_6_7_F25D88(var_18DC, CVar(var_98.Fields.Item("RefDtls_DocPerdDtls_InvStDt")))
  loc_1B0BEE5:   Proc_6_7_F25D88(var_1944, CVar(var_98.Fields.Item("RefDtls_DocPerdDtls_InvEndDt")))
  loc_1B0BEED:   var_1954 = var_167C & "," & var_16D4 & "," & var_173C & "," & var_17A4 & "," & var_180C & "," & var_1874 & "," & var_18DC & "," & var_1944 
  loc_1B0BF20:   Proc_6_17_EAA2B0(var_19AC, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_InvNo")))
  loc_1B0BF5B:   Proc_6_7_F25D88(var_1A14, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_InvDt")))
  loc_1B0BF96:   Proc_6_17_EAA2B0(var_1A7C, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_OthRefNo")))
  loc_1B0BFD1:   Proc_6_17_EAA2B0(var_1AE4, CVar(var_98.Fields.Item("RefDtls_ContrDtls_RecAdvRefr")))
  loc_1B0C00C:   Proc_6_7_F25D88(var_1B4C, CVar(var_98.Fields.Item("RefDtls_ContrDtls_RecAdvDt")))
  loc_1B0C047:   Proc_6_17_EAA2B0(var_1BB4, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Tendrefr")))
  loc_1B0C082:   Proc_6_17_EAA2B0(var_1C1C, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Contrrefr")))
  loc_1B0C08A:   var_1C2C = var_1954 & "," & var_19AC & "," & var_1A14 & "," & var_1A7C & "," & var_1AE4 & "," & var_1B4C & "," & var_1BB4 & "," & var_1C1C 
  loc_1B0C0BD:   Proc_6_17_EAA2B0(var_1C84, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Extrefr")))
  loc_1B0C0F8:   Proc_6_17_EAA2B0(var_1CEC, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Projrefr")))
  loc_1B0C133:   Proc_6_17_EAA2B0(var_1D54, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Porefr")))
  loc_1B0C16E:   Proc_6_7_F25D88(var_1DBC, CVar(var_98.Fields.Item("RefDtls_ContrDtls_PoRefDt")))
  loc_1B0C1A9:   Proc_6_17_EAA2B0(var_1E24, CVar(var_98.Fields.Item("PayDtls_Nm")))
  loc_1B0C1E4:   Proc_6_17_EAA2B0(var_1E8C, CVar(var_98.Fields.Item("PayDtls_Accdet")))
  loc_1B0C21F:   Proc_6_17_EAA2B0(var_1EF4, CVar(var_98.Fields.Item("PayDtls_Mode")))
  loc_1B0C227:   var_1F04 = var_1C2C & "," & var_1C84 & "," & var_1CEC & "," & var_1D54 & "," & var_1DBC & "," & var_1E24 & "," & var_1E8C & "," & var_1EF4 
  loc_1B0C25A:   Proc_6_17_EAA2B0(var_1F5C, CVar(var_98.Fields.Item("PayDtls_Fininsbr")))
  loc_1B0C295:   Proc_6_17_EAA2B0(var_1FC4, CVar(var_98.Fields.Item("PayDtls_Payterm")))
  loc_1B0C2D0:   Proc_6_17_EAA2B0(var_202C, CVar(var_98.Fields.Item("PayDtls_Payinstr")))
  loc_1B0C30B:   Proc_6_17_EAA2B0(var_2094, CVar(var_98.Fields.Item("PayDtls_Crtrn")))
  loc_1B0C346:   Proc_6_17_EAA2B0(var_20FC, CVar(var_98.Fields.Item("PayDtls_Dirdr")))
  loc_1B0C381:   Proc_6_39_E7C810(var_2164, CVar(var_98.Fields.Item("PayDtls_Crday")))
  loc_1B0C3BC:   Proc_6_39_E7C810(var_21CC, CVar(var_98.Fields.Item("PayDtls_Paidamt")))
  loc_1B0C3C4:   var_21DC = var_1F04 & "," & var_1F5C & "," & var_1FC4 & "," & var_202C & "," & var_2094 & "," & var_20FC & "," & var_2164 & "," & var_21CC 
  loc_1B0C3F7:   Proc_6_39_E7C810(var_2234, CVar(var_98.Fields.Item("PayDtls_Paymtdue")))
  loc_1B0C432:   Proc_6_17_EAA2B0(var_229C, CVar(var_98.Fields.Item("EwbDtls_TransId")))
  loc_1B0C46D:   Proc_6_17_EAA2B0(var_2304, CVar(var_98.Fields.Item("EwbDtls_TransName")))
  loc_1B0C4A8:   Proc_6_39_E7C810(var_236C, CVar(var_98.Fields.Item("EwbDtls_Distance")))
  loc_1B0C4E3:   Proc_6_17_EAA2B0(var_23D4, CVar(var_98.Fields.Item("EwbDtls_TransDocNo")))
  loc_1B0C51E:   Proc_6_7_F25D88(var_243C, CVar(var_98.Fields.Item("EwbDtls_TransDocDt")))
  loc_1B0C559:   Proc_6_17_EAA2B0(var_24A4, CVar(var_98.Fields.Item("EwbDtls_VehNo")))
  loc_1B0C561:   var_24B4 = var_21DC & "," & var_2234 & "," & var_229C & "," & var_2304 & "," & var_236C & "," & var_23D4 & "," & var_243C & "," & var_24A4 
  loc_1B0C594:   Proc_6_17_EAA2B0(var_250C, CVar(var_98.Fields.Item("EwbDtls_VehType")))
  loc_1B0C5CF:   Proc_6_17_EAA2B0(var_2574, CVar(var_98.Fields.Item("EwbDtls_TransMode")))
  loc_1B0C5EE:   unk_59EE5F.Execute CStr(var_24B4 & "," & var_250C & "," & var_2574 & ")"), var_E0, 
  loc_1B0C993:   var_B0 = CDbl(0)
  loc_1B0C999:   var_B8 = CDbl(0)
  loc_1B0C99F:   var_C0 = CDbl(0)
  loc_1B0C9A5:   var_C8 = CDbl(0)
  loc_1B0C9AB:   var_D0 = CDbl(0)
  loc_1B0C9B1:   var_D8 = CDbl(0)
  loc_1B0C9B7:   var_E0 = CDbl(0)
  loc_1B0C9BD:   var_E8 = CDbl(0)
  loc_1B0C9C3:   var_F0 = CDbl(0)
  loc_1B0C9C9:   var_F8 = CDbl(0)
  loc_1B0C9CF:   var_100 = CDbl(0)
  loc_1B0C9D5:   var_108 = CDbl(0)
  loc_1B0C9DB:   var_110 = CDbl(0)
  loc_1B0CA1A:   var_194 = "SELECT SM.Nature,ST.SValue,ST.Amount FROM SunTranH AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='" & var_88.Fields.Item("DocID").Value 
  loc_1B0CA31:   unk_59EE5F.Execute CStr(var_194 & "' Order by SNo"), var_1D4, -1
  loc_1B0CA3C:   Set var_94 = var_174
  loc_1B0CA56:   ' Referenced from: 1B0D061
  loc_1B0CA65:   If Not(var_94.EOF) Then
  loc_1B0CA90:     var_25D0 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Nature")), var_174, var_110, var_108, var_100)
  loc_1B0CAA1:     If (var_25D0 = "Amount") Then
  loc_1B0CAD1:       Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C0), var_F8)
  loc_1B0CAD9:       var_1B4 = (var_F0 + var_194)
  loc_1B0CADE:       var_B0 = CSng(var_194 & "' Order by SNo")
  loc_1B0CAF0:     Else
  loc_1B0CAF8:       If (var_25D0 = "Net Amount") Then
  loc_1B0CB28:         Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_1B0CB30:         var_1B4 = (var_B0 + var_194)
  loc_1B0CB35:         var_B8 = CSng(var_194 & "' Order by SNo")
  loc_1B0CB47:       Else
  loc_1B0CB4F:         If (var_25D0 = "Addition") Then
  loc_1B0CB7F:           Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C0))
  loc_1B0CB87:           var_1B4 = (var_B8 + var_194)
  loc_1B0CB8C:           var_C0 = CSng(var_194 & "' Order by SNo")
  loc_1B0CB9E:         Else
  loc_1B0CBA6:           If (var_25D0 = "Deduction") Then
  loc_1B0CBD6:             Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_C8))
  loc_1B0CBDE:             var_1B4 = (var_C0 + var_194)
  loc_1B0CBE3:             var_C8 = CSng(var_194 & "' Order by SNo")
  loc_1B0CBF5:           Else
  loc_1B0CBFD:             If (var_25D0 = "Discount") Then
  loc_1B0CC2D:               Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_D0))
  loc_1B0CC35:               var_1B4 = (var_C8 + var_194)
  loc_1B0CC3A:               var_D0 = CSng(var_194 & "' Order by SNo")
  loc_1B0CC4C:             Else
  loc_1B0CC54:               If Not (var_25D0 = "Sale Tax") Then
  loc_1B0CC5F:                 If (var_25D0 = "Luxury Tax") Then
  loc_1B0CC62:                 End If
  loc_1B0CC8F:                 Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_D8))
  loc_1B0CC97:                 var_1B4 = (var_D0 + var_194)
  loc_1B0CC9C:                 var_D8 = CSng(var_194 & "' Order by SNo")
  loc_1B0CCAE:               Else
  loc_1B0CCB6:                 If (var_25D0 = "Round Off") Then
  loc_1B0CCE6:                   Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_E8))
  loc_1B0CCEE:                   var_1B4 = (var_D8 + var_194)
  loc_1B0CCF3:                   var_E8 = CSng(var_194 & "' Order by SNo")
  loc_1B0CD05:                 Else
  loc_1B0CD0D:                   If (var_25D0 = "Service Charge") Then
  loc_1B0CD3D:                     Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_F0))
  loc_1B0CD45:                     var_1B4 = (var_E8 + var_194)
  loc_1B0CD4A:                     var_F0 = CSng(var_194 & "' Order by SNo")
  loc_1B0CD5C:                   Else
  loc_1B0CD64:                     If (var_25D0 = "Service Tax") Then
  loc_1B0CD94:                       Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_F8))
  loc_1B0CD9C:                       var_1B4 = (var_F0 + var_194)
  loc_1B0CDA1:                       var_F8 = CSng(var_194 & "' Order by SNo")
  loc_1B0CDB3:                     Else
  loc_1B0CDBB:                       If (var_25D0 = "CGST") Then
  loc_1B0CDE4:                         Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), var_F8)
  loc_1B0CDFE:                         If CBool(var_194 <> 0) Then
  loc_1B0CE2E:                           Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0CE36:                           var_1B4 = (var_E8 + var_194)
  loc_1B0CE3B:                           var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0CE4A:                         End If
  loc_1B0CE77:                         Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_100))
  loc_1B0CE7F:                         var_1B4 = (var_E0 + var_194)
  loc_1B0CE84:                         var_100 = CSng(var_194 & "' Order by SNo")
  loc_1B0CE96:                       Else
  loc_1B0CE9E:                         If (var_25D0 = "SGST") Then
  loc_1B0CEC7:                           Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")))
  loc_1B0CEE1:                           If CBool(var_194 <> 0) Then
  loc_1B0CF11:                             Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0CF19:                             var_1B4 = (var_100 + var_194)
  loc_1B0CF1E:                             var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0CF2D:                           End If
  loc_1B0CF5A:                           Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_108))
  loc_1B0CF62:                           var_1B4 = (var_E0 + var_194)
  loc_1B0CF67:                           var_108 = CSng(var_194 & "' Order by SNo")
  loc_1B0CF79:                         Else
  loc_1B0CF81:                           If (var_25D0 = "IGST") Then
  loc_1B0CFAA:                             Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")))
  loc_1B0CFC4:                             If CBool(var_194 <> 0) Then
  loc_1B0CFF4:                               Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("SValue")), CVar(var_E0))
  loc_1B0CFFC:                               var_1B4 = (var_108 + var_194)
  loc_1B0D001:                               var_E0 = CSng(var_194 & "' Order by SNo")
  loc_1B0D010:                             End If
  loc_1B0D03D:                             Proc_6_39_E7C810(var_194, CVar(var_94.Fields.Item("Amount")), CVar(var_110))
  loc_1B0D045:                             var_1B4 = (var_E0 + var_194)
  loc_1B0D04A:                             var_110 = CSng(var_194 & "' Order by SNo")
  loc_1B0D059:                           End If
  loc_1B0D059:                         End If
  loc_1B0D059:                       End If
  loc_1B0D059:                     End If
  loc_1B0D059:                   End If
  loc_1B0D059:                 End If
  loc_1B0D059:               End If
  loc_1B0D059:             End If
  loc_1B0D059:           End If
  loc_1B0D059:         End If
  loc_1B0D059:       End If
  loc_1B0D059:     End If
  loc_1B0D05C:     var_94.MoveNext
  loc_1B0D061:     GoTo loc_1B0CA56
  loc_1B0D064:   End If
  loc_1B0D06B:   If (var_B8 <> CDbl(0)) Then
  loc_1B0D070:     var_9E = 1
  loc_1B0D099:     Proc_6_17_EAA2B0(var_194, CVar(var_88.Fields.Item("DocID")), var_9E)
  loc_1B0D0AD:     var_174 = var_88.Fields
  loc_1B0D0BD:     var_264 = CVar(var_174.Item("Narration")) 'Address
  loc_1B0D0C4:     Proc_6_17_EAA2B0(var_274, var_264)
  loc_1B0D0D8:     var_1EC = var_88.Fields
  loc_1B0D0EF:     Proc_6_17_EAA2B0(var_2DC, CVar(var_1EC.Item("SACCode")))
  loc_1B0D14E:     var_424 = CVar((var_B0 - var_D0)) 'Double
  loc_1B0D179:     var_144 = "INSERT INTO eInvoiceBill2 ([DocId],[SlNo],[PrdDesc],[IsServc],[HsnCd],[Qty],[Unit]," & "[UnitPrice],[TotAmt],[Discount],[PreTaxVal],[AssAmt],[GstRt],[IgstAmt],[CgstAmt],[SgstAmt],[TotItemVal]) "
  loc_1B0D186:     var_1D4 = CVar(var_144 & "VALUES (") & var_194 
  loc_1B0D1D4:     var_354 = var_1D4 & "," & CVar(CStr(var_9E)) & "," & var_274 & ",'Y'," & var_2DC & "," & var_88.Fields.Item("NoofPax").Value & ",'OTH'," 
  loc_1B0D213:     var_47C = var_354 & var_88.Fields.Item("RatePerPax").Value & "," & CVar(var_B0) & "," & CVar(var_D0) & ",1," & IIf((var_E0 <> CDbl(0)), var_424, 0) 
  loc_1B0D21C:     var_48C = var_47C & "," 
  loc_1B0D230:     var_4BC = var_48C & CVar(var_E0) & "," 
  loc_1B0D28E:     unk_59EE5F.Execute CStr(var_4BC & CVar(var_110) & "," & CVar(var_100) & "," & CVar(var_108) & "," & CVar(var_B8) & ")"), var_5B4, -1
  loc_1B0D306:   End If
  loc_1B0D30C:   var_9E = (var_9E + 1)
  loc_1B0D31C:   var_184 = "SELECT S.DocId,S.SNo,I.Name AS ItemName,I.CommodityCode AS HSNCode,S.QtyIss As Qty,S.Rate As UnitRate,S.Amount,S.DiscAmt FROM HallStock AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RestCode = I.RestCode Where S.DocId='"
  loc_1B0D34B:   var_194 = var_184 & var_88.Fields.Item("DocID").Value 
  loc_1B0D362:   unk_59EE5F.Execute CStr(var_194 & "' AND QTYIss>0"), var_1D4, -1
  loc_1B0D36D:   Set var_8C = var_174
  loc_1B0D39B:   If (var_8C.RecordCount > 0) Then
  loc_1B0D3A1:     var_8C.MoveFirst
  loc_1B0D3A6:     ' Referenced from: 1B0D9FB
  loc_1B0D3B5:     If Not(var_8C.EOF) Then
  loc_1B0D3BB:       var_118 = CDbl(0)
  loc_1B0D3EA:       var_144 = "Select Q.DocId,IsNull(Sum(Q.IGST),0) IGST,IsNull(Sum(Q.CGST),0) CGST,IsNull(Sum(Q.SGST),0) SGST,IsNull(Sum(Q.TaxPer),0) TaxPer,IsNull(Sum(Q.TaxAmt),0) TaxAmt From (Select DocId,SNo,Case When S.Nature='IGST' Then " & "S2.TaxAmt End IGST,Case When S.Nature='CGST' Then S2.TaxAmt End CGST,Case When S.Nature='SGST' Then S2.TaxAmt End SGST,S2.TaxPer,S2.TaxAmt From HallSale2 S2 "
  loc_1B0D3F1:       var_1B4 = CVar(var_144 & "Left Join RevMast R On R.Code=S2.Taxcode Left Join SundryMast S On S.Code=R.Sundry Where Docid=") 'String
  loc_1B0D41A:       Proc_6_17_EAA2B0(var_194, CVar(var_8C.Fields.Item("DocID")), var_1B4, var_264, -1, var_1EC, CDbl(0))
  loc_1B0D470:       unk_59EE5F.Execute CStr(CDbl(0) & var_194 & " And SNo=" & var_8C.Fields.Item("SNo").Value & ")Q Group By DocId,SNo"), CDbl(0), CDbl(0)
  loc_1B0D47B:       Set var_9C = var_1EC
  loc_1B0D4B9:       If (var_9C.RecordCount > 0) Then
  loc_1B0D4E7:         var_118 = CSng(var_9C.Fields.Item("IGST").Value)
  loc_1B0D51F:         var_120 = CSng(var_9C.Fields.Item("CGST").Value)
  loc_1B0D557:         var_128 = CSng(var_9C.Fields.Item("SGST").Value)
  loc_1B0D58F:         var_130 = CSng(var_9C.Fields.Item("TaxPer").Value)
  loc_1B0D5C7:         var_138 = CSng(var_9C.Fields.Item("TaxAmt").Value)
  loc_1B0D5D4:       End If
  loc_1B0D5FA:       Proc_6_17_EAA2B0(var_194, CVar(var_8C.Fields.Item("DocID")), var_138, var_130, var_128, var_120)
  loc_1B0D60E:       var_174 = var_8C.Fields
  loc_1B0D625:       Proc_6_17_EAA2B0(var_274, CVar(var_174.Item("ItemName")), var_118, var_118)
  loc_1B0D650:       Proc_6_17_EAA2B0(var_2DC, CVar(var_8C.Fields.Item("HSNCode")), var_174)
  loc_1B0D6F0:       Proc_6_39_E7C810(var_424, CVar(var_8C.Fields.Item("DiscAmt")))
  loc_1B0D71B:       Proc_6_39_E7C810(var_48C, CVar(var_8C.Fields.Item("Amount")))
  loc_1B0D746:       Proc_6_39_E7C810(var_4BC, CVar(var_8C.Fields.Item("DiscAmt")))
  loc_1B0D756:       var_4E4 = (var_48C - var_4BC)
  loc_1B0D79A:       Proc_6_39_E7C810(var_65C, CVar(var_8C.Fields.Item("Amount")))
  loc_1B0D7C5:       Proc_6_39_E7C810(var_694, CVar(var_8C.Fields.Item("DiscAmt")))
  loc_1B0D81D:       var_144 = "INSERT INTO eInvoiceBill2 ([DocId],[SlNo],[PrdDesc],[IsServc],[HsnCd],[Qty],[Unit]," & "[UnitPrice],[TotAmt],[Discount],[PreTaxVal],[AssAmt],[GstRt],[IgstAmt],[CgstAmt],[SgstAmt],[TotItemVal]) "
  loc_1B0D86F:       var_344 = CVar(var_144 & "VALUES (") & var_194 & "," & CVar(CStr(var_9E)) & "," & var_274 & ",'Y'," & var_2DC & "," & var_8C.Fields.Item("qty").Value 
  loc_1B0D8A8:       var_454 = var_344 & ",'OTH'," & var_8C.Fields.Item("UnitRate").Value & "," & var_8C.Fields.Item("Amount").Value & "," & var_424 & ",1," 
  loc_1B0D8EB:       var_5D4 = var_454 & IIf((var_130 <> CDbl(0)), var_4BC & CVar(var_110), 0) & "," & CVar(var_130) & "," & CVar(var_118) & "," & CVar(var_120) 
  loc_1B0D912:       var_6A4 = (var_65C - var_694)
  loc_1B0D919:       var_6EC = (var_65C & var_694 + Round(var_118, 2))
  loc_1B0D920:       var_70C = (CVar(var_98.Fields.Item("SellerDtls_Addr1")) + Round(var_120, 2))
  loc_1B0D927:       var_754 = (var_65C & var_694 & "," & Round(var_120, 2) + Round(var_128, 2))
  loc_1B0D942:       unk_59EE5F.Execute CStr(var_5D4 & "," & CVar(var_128) & "," & CVar(var_98.Fields.Item("SellerDtls_Addr2")) & ")"), var_794, -1
  loc_1B0D9F0:       var_9E = (var_9E + 1)
  loc_1B0D9F6:       var_8C.MoveNext
  loc_1B0D9FB:       GoTo loc_1B0D3A6
  loc_1B0D9FE:     End If
  loc_1B0D9FE:   End If
  loc_1B0DA01:   var_88.MoveNext
  loc_1B0DA06:   GoTo loc_1B0A41A
  loc_1B0DA09: End If
  loc_1B0DA0F: unk_59EE5F.CommitTrans
  loc_1B0DA16: var_A6 = 0
  loc_1B0DA19: Exit Sub
  loc_1B0DA20: If (var_A6 = &HFF) Then
  loc_1B0DA29:   unk_59EE5F.RollbackTrans
  loc_1B0DA2E: End If
  loc_1B0DA2E: Proc_6_60_E62BC4(var_A6, var_9E, var_5F8)
  loc_1B0DA33: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '105AED8
  'Data Table: 59EE40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_14C As Variant
  loc_105AC7F: Me.DGItem.Visible = False
  loc_105AC9E: If (Me.RecordCount > 0) Then
  loc_105ACDB:   Set var_B4 = Me.TxtGrid
  loc_105ACE1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_105ACE9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_105AD12:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105AD1A:   var_EC = CVar(CLng(1)) 'Long
  loc_105AD4D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_105AD55:   Set var_B8 = Me.FGrid
  loc_105AD5B:   LateIdCallSt
  loc_105AD8A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105AD92:   var_EC = CVar(CLng(9)) 'Long
  loc_105ADC5:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_105ADCD:   Set var_B8 = Me.FGrid
  loc_105ADD3:   LateIdCallSt
  loc_105AE09:   var_B0 = Me.Fields.Item("IRate")
  loc_105AE21:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105AE29:   var_FC = CVar(CLng(4)) 'Long
  loc_105AE56:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_105AE5E:   Set var_B8 = Me.FGrid
  loc_105AE64:   LateIdCallSt
  loc_105AE82: End If
  loc_105AE8E: Set var_A8 = Me.TxtGrid
  loc_105AE94: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_105AE9C: var_FC = var_B0.Visible
  loc_105AEAE: If (var_15E = &HFF) Then
  loc_105AEBA:   Set var_A8 = Me.TxtGrid
  loc_105AEC0:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_105AEC8:   var_B0.SetFocus
  loc_105AED4: End If
  loc_105AED4: Exit Sub
  loc_105AED5: StAryRecMove
End Sub

Private Sub Command1_UnknownEvent_9 '101B310
  'Data Table: 59EE40
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  Dim var_9C As TextBox
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_118 As Double
  Dim var_C8 As TextBox
  Dim var_120 As Double
  Dim var_D4 As TextBox
  Dim var_128 As Double
  loc_101B156: Set var_88 = Me.Txt
  loc_101B15C: Call 0.Method_Command1_UnknownEvent_90 (CInt(1), var_8C)
  loc_101B177: Set var_90 = Me.Txt
  loc_101B17D: Call 0.Method_Command1_UnknownEvent_90 (CInt(4), var_94)
  loc_101B198: Set var_98 = Me.Txt
  loc_101B19E: Call 0.Method_Command1_UnknownEvent_90 (CInt(3), var_9C)
  loc_101B1B9: Set var_A0 = Me.Txt
  loc_101B1BF: Call 0.Method_Command1_UnknownEvent_90 (CInt(7), var_A4)
  loc_101B1D3: Set var_A8 = Me.TxtGt
  loc_101B1D9: Call 0.Method_Command1_UnknownEvent_98 (var_AA)
  loc_101B1EB: Set var_B0 = Me.TxtGt
  loc_101B1F1: Call 0.Method_Command1_UnknownEvent_90 (var_AA, var_B4)
  loc_101B206: var_118 = Val(var_B4.Text)
  loc_101B210: Set var_BC = Me.TextGt
  loc_101B216: Call 0.Method_Command1_UnknownEvent_98 (var_BE)
  loc_101B228: Set var_C4 = Me.TextGt
  loc_101B22E: Call 0.Method_Command1_UnknownEvent_90 (var_BE, var_C8)
  loc_101B243: var_120 = Val(var_C8.Text)
  loc_101B254: Set var_D0 = Me.Txt
  loc_101B25A: Call 0.Method_Command1_UnknownEvent_90 (CInt(8), var_D4, var_D8)
  loc_101B262: var_120 = var_D4.Text
  loc_101B26F: var_128 = Val(var_D8)
  loc_101B27D: Set var_110 = Nothing
  loc_101B288: var_10C = 0
  loc_101B2CF: Proc_263_0_F72D90(1, 6, global_132, var_8C.Text, var_94.Text, var_9C.Text, var_A4.Text)
  loc_101B30C: Exit Sub
End Sub

Private Sub Form_Load() '12ED0F0
  'Data Table: 59EE40
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_59EE5F As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_DC As Variant
  Dim var_BC As Fields15
  loc_12ECA40: On Error Goto loc_12ED0EA
  loc_12ECA58: If (global_56 = MemVar_1F92070 & "BANQ") Then
  loc_12ECA61:   global_108 = "IBOOK"
  loc_12ECA68: Else
  loc_12ECA7D:   If (global_56 = MemVar_1F92070 & "ODC") Then
  loc_12ECA86:     global_108 = "OBOOK"
  loc_12ECA8A:   End If
  loc_12ECA8A: End If
  loc_12ECAB1: unk_59EE5F.Execute "Select * from Depart where Code='" & global_56 & "'", var_B0, -1
  loc_12ECABC: Set var_88 = var_B4
  loc_12ECAE0: If (var_88.RecordCount > 0) Then
  loc_12ECAFA:   var_BC = var_88.Fields.Item("Name")
  loc_12ECB12:   Set var_C0 = Me.LblRest
  loc_12ECB18:   var_C0.Caption = Proc_6_38_E68A98(CVar(var_BC))
  loc_12ECB2A: End If
  loc_12ECB32: If (MemVar_1F92190 = "Yes") Then
  loc_12ECB41:   Me.QrImage.Visible = True
  loc_12ECB55:   Me.FreInvInfo.Visible = True
  loc_12ECB69:   Me.CmdeInvoiceJson.Visible = True
  loc_12ECB7D:   Me.CmdGeneInvoice.Visible = True
  loc_12ECB85: End If
  loc_12ECB8F: Set global_60 = New 
  loc_12ECBA1: Me.CursorLocation = 3
  loc_12ECBCB: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type Where Site_Code='" & MemVar_1F92070 & "' And LogSite_Code='"
  loc_12ECBF4: Me.Open CVar(var_90 & MemVar_1F92078 & "' and NCAT in('BBILL') and RestCode='" & global_56 & "' Order by Description"), CVar(MemVar_1F92044), 3
  loc_12ECC12: CVarUnk
  loc_12ECC17: VerifyVarObj
  loc_12ECC1D: Set var_B4 = Me.DGVType
  loc_12ECC23: LateIdStAd
  loc_12ECC3B: Set global_72 = New 
  loc_12ECC4D: Me.DGVType.CursorLocation = 3
  loc_12ECC77: var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F92078 & "' and  H.RESTTYPE IN('Banquet') Order by H.Name") 'String
  loc_12ECC81: Me.Open var_B0, CVar(MemVar_1F92044), 3
  loc_12ECC95: CVarUnk
  loc_12ECC9A: VerifyVarObj
  loc_12ECCA0: Set var_B4 = Me.DGHall
  loc_12ECCA6: LateIdStAd
  loc_12ECCBE: Set global_68 = New 
  loc_12ECCD0: Me.DGHall.CursorLocation = 3
  loc_12ECCE0: If (global_108 = "IBOOK") Then
  loc_12ECD01:   var_8C = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK WHERE LogSite_Code='" & MemVar_1F92078
  loc_12ECD08:   var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F92078 & "' and VType='IBOOK' Order by pARTYName") 'String
  loc_12ECD12:   Me.Open var_B0, CVar(MemVar_1F92044), 2
  loc_12ECD20: Else
  loc_12ECD3E:   var_8C = "Select '' As Code,PartyName as Name,(Add1+' '+Add2) As Address,City From HALLBOOK WHERE LogSite_Code='" & MemVar_1F92078
  loc_12ECD45:   var_B0 = CVar("Select H.Code As Code,H.Name As Name,RestTYPE From DEPART H WHERE H.logSite_Code='" & MemVar_1F92078 & "' and VType='OBOOK' Order by pARTYName") 'String
  loc_12ECD4F:   Me.Open var_B0, CVar(MemVar_1F92044), 2
  loc_12ECD5A: End If
  loc_12ECD63: CVarUnk
  loc_12ECD68: VerifyVarObj
  loc_12ECD6E: Set var_B4 = Me.DGParty
  loc_12ECD74: LateIdStAd
  loc_12ECD8C: Set global_80 = New 
  loc_12ECD9E: Me.DGParty.CursorLocation = 3
  loc_12ECDAE: Proc_6_7_F25D88(var_B0, MemVar_1F920F4, var_B4, global_68, 3, -1, 3, -1)
  loc_12ECDBE: Proc_6_7_F25D88(var_12C, MemVar_1F920FC, var_B4, global_72, 1)
  loc_12ECDE1: var_8C = "Select S.DocId as SearchCode,S.DocID,S.BookDocId,S.LogSite_Code,S.Site_Code From HallSale1 S Inner JOIN VOUCHER_TYPE V ON (S.VTYPE=V.V_TYPE and S.LogSite_Code=V.LogSite_Code) WHERE S.LogSite_Code='" & MemVar_1F92078
  loc_12ECDE8: var_90 = var_8C & "' and V.NCAT IN ('BBILL') and V.RestCode='"
  loc_12ECDF9: var_DC = CVar(var_90 & global_56 & "' AND S.VDate between ") 'String
  loc_12ECE23: Me.Open var_DC & var_B0 & " and " & var_12C & " Order by S.Docid", CVar(MemVar_1F92044), 3
  loc_12ECE75: Call 0.Method_arg_50 (var_90, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_B0, -1, var_B4, var_BC, 0, var_C0)
  loc_12ECE9C: unk_59EE5F.Execute var_DC & var_90 & "' AND UNAME='" & MemVar_1F920C8 & "'", 1, -1
  loc_12ECEA4: -1 = var_B4.Fields
  loc_12ECEAC: global_60 = var_BC.Item(var_B4)
  loc_12ECEB4: 1 = var_C0.Value
  loc_12ECEE5: If (var_DC > 0) Then
  loc_12ECF2E:   Call 0.Method_arg_50 (var_90, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_B0, -1, var_B4, var_BC, 0)
  loc_12ECF55:   unk_59EE5F.Execute var_C0 & var_90 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_DC, "SearchCode='"
  loc_12ECF5D:   0 = var_B4.Fields
  loc_12ECF65:   var_16C = var_BC.Item(1)
  loc_12ECF6D:    = var_C0.Value
  loc_12ECF8C:   Me.Find CStr(var_DC & "'"), , 
  loc_12ECFB8: End If
  loc_12ECFCF: If (Me.RecordCount > 0) Then
  loc_12ECFE6:   If (Me.EOF = &HFF) Then
  loc_12ECFEF:     Me.MoveLast
  loc_12ECFF4:   End If
  loc_12ECFF4: End If
  loc_12ECFFD: Call 0.Method_arg_160 (var_B4)
  loc_12ED00B: Call 0.Method_arg_164 (var_B4)
  loc_12ED036: Call Proc_124_86_10C6198(Proc_5_1_100CB50("INI", Me))
  loc_12ED048: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12ED060: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12ED07B: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12ED092: Me.LblUser.Left = CDbl(13500)
  loc_12ED0A9: Me.LblUser.Top = CDbl(7800)
  loc_12ED0C0: Me.LblLDt.Top = CDbl(8160)
  loc_12ED0D7: Me.LblLDt.Left = CDbl(13500)
  loc_12ED0DF: Call Proc_124_79_1481E24(global_80)
  loc_12ED0E4: Call Proc_124_82_18ADC40()
  loc_12ED0E9: Exit Sub
  loc_12ED0EA: ' Referenced from: 12ECA40
  loc_12ED0EA: Proc_6_60_E62BC4()
  loc_12ED0EF: Exit Sub
End Sub

Private Sub Form_Resize() 'ED3118
  'Data Table: 59EE40
  Dim var_8C As Label
  loc_ED3076: Call 0.Method_arg_50 (var_88)
  loc_ED3088: Me.LblFormCaption.Caption = var_88
  loc_ED30A1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED30AD: Set var_A0 = Me.TopCtrl1
  loc_ED30B3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED30C0: Set var_8C = Me.TopCtrl1
  loc_ED30C6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED30E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED30FB: Call 0.Method_arg_100 (var_B8)
  loc_ED310D: Me.LblFormCaption.Width = var_B8
  loc_ED3115: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E76F08
  'Data Table: 59EE40
  loc_E76EAF: Set global_72 = Nothing
  loc_E76EC1: Set global_64 = Nothing
  loc_E76ED3: Set global_84 = Nothing
  loc_E76EE5: Set global_88 = Nothing
  loc_E76EF7: Set global_76 = Nothing
  loc_E76F03: global_52 = 0
  loc_E76F06: Exit Sub
End Sub

Private Sub Form_Activate() '1000F64
  'Data Table: 59EE40
  Dim var_90 As String
  Dim unk_59EE5F As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_CC As Integer
  Dim var_120 As Field20
  loc_1000D8E: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE NCAT='BBILL' AND RestCode='" & global_56 & "' Order by Description"
  loc_1000D97: unk_59EE5F.Execute var_90, var_B0, -1
  loc_1000DA2: Set var_88 = var_B4
  loc_1000DC6: If (var_88.RecordCount > 0) Then
  loc_1000DE3:   var_BC = var_88.Fields.Item(0)
  loc_1000DFA:   global_132 = CStr(var_BC.Value)
  loc_1000E0E: Else
  loc_1000E21:   var_B0 = "Point of Sale Not Configured for selected Restaurant"
  loc_1000E27:   MsgBox(var_B0, 0, var_DC, var_FC, var_11C)
  loc_1000E44:   Me.Global.Unload Me
  loc_1000E4C:   Exit Sub
  loc_1000E4D: End If
  loc_1000E53: var_CC = 0
  loc_1000E83: unk_59EE5F.Execute "Select Count(*) From SundryType WHERE V_Type='" & global_132 & "'", var_B0, -1
  loc_1000E8B: var_B4 = var_B4.Fields
  loc_1000E93: var_CC = var_BC.Item(var_BC)
  loc_1000E9B: var_120 = var_120.Value
  loc_1000EC2: If (var_DC <= 0) Then
  loc_1000EDE:   MsgBox("Voucher wise Sundry not defined", 0, var_DC, var_FC, var_11C)
  loc_1000EFB:   Me.Global.Unload Me
  loc_1000F03:   Exit Sub
  loc_1000F04: End If
  loc_1000F09: Set var_88 = Nothing
  loc_1000F1A: Set var_B4 = Me.Txt
  loc_1000F20: Call 0.Method_Form_Activate0 (CInt(7), var_BC, var_122)
  loc_1000F28: var_DC = var_BC.Enabled
  loc_1000F3A: If (var_122 = &HFF) Then
  loc_1000F48:   Set var_B4 = Me.Txt
  loc_1000F4E:   Call 0.Method_Form_Activate0 (CInt(7), var_BC)
  loc_1000F56:   var_BC.SetFocus
  loc_1000F62: End If
  loc_1000F62: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25CD4
  'Data Table: 59EE40
  loc_E25CB9: If (global_52 = &HFF) Then
  loc_E25CC9:   Me.Global.Unload Me
  loc_E25CD1: End If
  loc_E25CD1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E37FF8
  'Data Table: 59EE40
  loc_E37FCC: On Error Goto loc_E37FF0
  loc_E37FE7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E37FEF: Exit Sub
  loc_E37FF0: ' Referenced from: E37FCC
  loc_E37FF0: Proc_6_60_E62BC4(Shift)
  loc_E37FF5: Exit Sub
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E275B8
  'Data Table: 59EE40
  loc_E27599: If ((Button = 2) And (Shift = 2)) Then
  loc_E275AF:   Call 0.Method_arg_2B0 (1)
  loc_E275B4: End If
  loc_E275B4: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'F5BE50
  'Data Table: 59EE40
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5BD30: On Error Goto loc_F5BE4A
  loc_F5BD42: Me.DGBookNo.Visible = False
  loc_F5BD61: If (Me.RecordCount > 0) Then
  loc_F5BDA0:   Set var_B4 = Me.Txt
  loc_F5BDA6:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5BDAE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5BDE1:   var_B0 = Me.Fields.Item("Code")
  loc_F5BE00:   Set var_B4 = Me.Txt
  loc_F5BE06:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5BE0E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5BE24: End If
  loc_F5BE2F: Set var_A8 = Me.Txt
  loc_F5BE35: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7))
  loc_F5BE3D: var_B0.SetFocus
  loc_F5BE49: Exit Sub
  loc_F5BE4A: ' Referenced from: F5BD30
  loc_F5BE4A: Proc_6_60_E62BC4(var_B0)
  loc_F5BE4F: Exit Sub
End Sub

Public Function global_52Get() '5A1AC4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '5A1AD3
  global_52 = Value
End Sub

Public Function global_56Get() '5A1AE2
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '5A1AF1
  global_56 = Value
End Sub

Public Sub FindMove(mDocId) 'E75FDC
  'Data Table: 59EE40
  Dim Me As Recordset15
  loc_E75F86: Me.MoveFirst
  loc_E75FB0: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E75FD0: If (Me.EOF = 0) Then
  loc_E75FD3:   Call Proc_124_82_18ADC40(var_9C)
  loc_E75FD8: End If
  loc_E75FD8: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95020
  'Data Table: 59EE40
  Dim Me As Recordset15
  loc_E94FAE: On Error Goto loc_E95017
  loc_E94FB7: Me.MoveFirst
  loc_E94FE1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95009: Proc_5_0_110649C(&HFF, Me, global_80)
  loc_E95011: Call Proc_124_82_18ADC40(0)
  loc_E95016: Exit Sub
  loc_E95017: ' Referenced from: E94FAE
  loc_E95017: Proc_6_60_E62BC4(var_A0)
  loc_E9501C: Exit Sub
  loc_E9501D: GoTo loc_E9A7A8
End Sub

Public Sub Proc_124_79_1481E24
  'Data Table: 59EE40
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_C4 As DataGrid
  Dim var_D4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  Dim var_11C As MSHFlexGrid
  Dim var_120 As MSHFlexGrid
  loc_14811E7: Me.FGrid.Left = CVar(CDbl(7260))
  loc_1481202: Me.FGrid.Top = CVar(CDbl(1635))
  loc_148121D: Me.FGrid.Height = CVar(CDbl(5700))
  loc_1481238: Me.FGrid.Width = CVar(CDbl(8005))
  loc_1481253: Me.DGItem.Left = CVar(CDbl(7300))
  loc_1481272: var_94 = CVar((CDbl(Me.FGrid.Height) + CDbl(&HA))) 'Single
  loc_148127B: Set var_BC = Me.DGItem
  loc_1481281: var_BC.Top = CVar(CDbl(7300))
  loc_14812A2: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_14812B8: Set var_C4 = Me.Txt
  loc_14812BE: Call 0.Method_Proc_124_79_1481E240 (CInt(3), var_C8)
  loc_14812D9: Set var_A8 = Me.Txt
  loc_14812DF: Call 0.Method_Proc_124_79_1481E240 (CInt(3), var_BC)
  loc_14812F7: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1481306: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_1481326: Set var_A8 = Me.Txt
  loc_148132C: Call 0.Method_Proc_124_79_1481E240 (CInt(5), var_BC)
  loc_148134B: Me.DGHall.Left = CVar(var_BC.Left)
  loc_1481367: Set var_C4 = Me.Txt
  loc_148136D: Call 0.Method_Proc_124_79_1481E240 (CInt(5), var_C8)
  loc_1481388: Set var_A8 = Me.Txt
  loc_148138E: Call 0.Method_Proc_124_79_1481E240 (CInt(5), var_BC)
  loc_14813A6: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_14813B5: Me.DGHall.Top = CVar(var_BC.Left)
  loc_14813D5: Set var_A8 = Me.Txt
  loc_14813DB: Call 0.Method_Proc_124_79_1481E240 (CInt(7), var_BC)
  loc_14813FA: Me.DGBookNo.Left = CVar(var_BC.Left)
  loc_1481416: Set var_C4 = Me.Txt
  loc_148141C: Call 0.Method_Proc_124_79_1481E240 (CInt(7), var_C8)
  loc_1481437: Set var_A8 = Me.Txt
  loc_148143D: Call 0.Method_Proc_124_79_1481E240 (CInt(7), var_BC)
  loc_1481455: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1481464: Me.DGBookNo.Top = CVar(var_BC.Left)
  loc_1481484: Set var_A8 = Me.Txt
  loc_148148A: Call 0.Method_Proc_124_79_1481E240 (CInt(0), var_BC)
  loc_14814A9: Me.DGVType.Left = CVar(var_BC.Left)
  loc_14814C5: Set var_C4 = Me.Txt
  loc_14814CB: Call 0.Method_Proc_124_79_1481E240 (CInt(0), var_C8)
  loc_14814E6: Set var_A8 = Me.Txt
  loc_14814EC: Call 0.Method_Proc_124_79_1481E240 (CInt(0), var_BC)
  loc_1481504: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1481513: Me.DGVType.Top = CVar(var_BC.Left)
  loc_1481529: Set var_D4 = Me.FGrid
  loc_1481540: global_100 = CStr(CLng(var_D4.BackColor))
  loc_1481556: var_D4.Cols = &H17
  loc_148155E: var_94 = CVar(CLng(0)) 'Long
  loc_1481563: var_E8 = &H190
  loc_148156F: LateIdCallSt
  loc_1481577: var_94 = 0
  loc_1481583: var_E8 = CVar(CLng(1)) 'Long
  loc_1481588: var_108 = "Item Name"
  loc_1481591: LateIdCallSt
  loc_148159C: var_94 = CVar(CLng(1)) 'Long
  loc_14815A7: var_E8 = CVar(CInt(1)) 'Integer
  loc_14815AE: LateIdCallSt
  loc_14815B9: var_94 = CVar(CLng(1)) 'Long
  loc_14815BE: var_E8 = &H9C4
  loc_14815CA: LateIdCallSt
  loc_14815D2: var_94 = 0
  loc_14815DE: var_E8 = CVar(CLng(2)) 'Long
  loc_14815E3: var_108 = "Remarks"
  loc_14815EC: LateIdCallSt
  loc_14815F7: var_94 = CVar(CLng(2)) 'Long
  loc_1481602: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481609: LateIdCallSt
  loc_1481614: var_94 = CVar(CLng(2)) 'Long
  loc_1481619: var_E8 = &H61D
  loc_1481625: LateIdCallSt
  loc_148162D: var_94 = 0
  loc_1481639: var_E8 = CVar(CLng(3)) 'Long
  loc_148163E: var_108 = "Qty"
  loc_1481647: LateIdCallSt
  loc_1481652: var_94 = CVar(CLng(3)) 'Long
  loc_148165D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1481664: LateIdCallSt
  loc_148166F: var_94 = CVar(CLng(3)) 'Long
  loc_148167A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1481681: LateIdCallSt
  loc_148168C: var_94 = CVar(CLng(3)) 'Long
  loc_1481691: var_E8 = &H46A
  loc_148169D: LateIdCallSt
  loc_14816A5: var_94 = 0
  loc_14816B1: var_E8 = CVar(CLng(4)) 'Long
  loc_14816B6: var_108 = "Rate"
  loc_14816BF: LateIdCallSt
  loc_14816CA: var_94 = CVar(CLng(4)) 'Long
  loc_14816D5: var_E8 = CVar(CInt(7)) 'Integer
  loc_14816DC: LateIdCallSt
  loc_14816E7: var_94 = CVar(CLng(4)) 'Long
  loc_14816F2: var_E8 = CVar(CInt(7)) 'Integer
  loc_14816F9: LateIdCallSt
  loc_1481704: var_94 = CVar(CLng(4)) 'Long
  loc_1481709: var_E8 = &H44C
  loc_1481715: LateIdCallSt
  loc_148171D: var_94 = 0
  loc_1481729: var_E8 = CVar(CLng(6)) 'Long
  loc_148172E: var_108 = "%"
  loc_1481737: LateIdCallSt
  loc_1481742: var_94 = CVar(CLng(6)) 'Long
  loc_148174D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1481754: LateIdCallSt
  loc_148175F: var_94 = CVar(CLng(6)) 'Long
  loc_148176A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1481771: LateIdCallSt
  loc_148177C: var_94 = CVar(CLng(6)) 'Long
  loc_1481781: var_E8 = 0
  loc_148178D: LateIdCallSt
  loc_1481795: var_94 = 0
  loc_14817A1: var_E8 = CVar(CLng(7)) 'Long
  loc_14817A6: var_108 = "Tax"
  loc_14817AF: LateIdCallSt
  loc_14817BA: var_94 = CVar(CLng(7)) 'Long
  loc_14817C5: var_E8 = CVar(CInt(7)) 'Integer
  loc_14817CC: LateIdCallSt
  loc_14817D7: var_94 = CVar(CLng(7)) 'Long
  loc_14817E2: var_E8 = CVar(CInt(7)) 'Integer
  loc_14817E9: LateIdCallSt
  loc_14817F4: var_94 = CVar(CLng(7)) 'Long
  loc_14817F9: var_E8 = 0
  loc_1481805: LateIdCallSt
  loc_148180D: var_94 = 0
  loc_1481819: var_E8 = CVar(CLng(5)) 'Long
  loc_148181E: var_108 = "Amount"
  loc_1481827: LateIdCallSt
  loc_1481832: var_94 = CVar(CLng(5)) 'Long
  loc_148183D: var_E8 = CVar(CInt(7)) 'Integer
  loc_1481844: LateIdCallSt
  loc_148184F: var_94 = CVar(CLng(5)) 'Long
  loc_148185A: var_E8 = CVar(CInt(7)) 'Integer
  loc_1481861: LateIdCallSt
  loc_148186C: var_94 = CVar(CLng(5)) 'Long
  loc_1481871: var_E8 = &H46A
  loc_148187D: LateIdCallSt
  loc_1481885: var_94 = 0
  loc_1481891: var_E8 = CVar(CLng(8)) 'Long
  loc_1481896: var_108 = "Total"
  loc_148189F: LateIdCallSt
  loc_14818AA: var_94 = CVar(CLng(8)) 'Long
  loc_14818B5: var_E8 = CVar(CInt(7)) 'Integer
  loc_14818BC: LateIdCallSt
  loc_14818C7: var_94 = CVar(CLng(8)) 'Long
  loc_14818D2: var_E8 = CVar(CInt(7)) 'Integer
  loc_14818D9: LateIdCallSt
  loc_14818E4: var_94 = CVar(CLng(8)) 'Long
  loc_14818E9: var_E8 = 0
  loc_14818F5: LateIdCallSt
  loc_1481900: var_94 = CVar(CLng(9)) 'Long
  loc_1481905: var_E8 = 0
  loc_1481911: LateIdCallSt
  loc_148191C: var_94 = CVar(CLng(&HA)) 'Long
  loc_1481921: var_E8 = 0
  loc_148192D: LateIdCallSt
  loc_1481938: var_94 = CVar(CLng(&HB)) 'Long
  loc_148193D: var_E8 = 0
  loc_1481949: LateIdCallSt
  loc_1481954: var_94 = CVar(CLng(&HC)) 'Long
  loc_1481959: var_E8 = 0
  loc_1481965: LateIdCallSt
  loc_1481970: var_94 = CVar(CLng(&HD)) 'Long
  loc_1481975: var_E8 = 0
  loc_1481981: LateIdCallSt
  loc_148198C: var_94 = CVar(CLng(&HF)) 'Long
  loc_1481991: var_E8 = 0
  loc_148199D: LateIdCallSt
  loc_14819A8: var_94 = CVar(CLng(&HE)) 'Long
  loc_14819AD: var_E8 = 0
  loc_14819B9: LateIdCallSt
  loc_14819C4: var_94 = CVar(CLng(&H10)) 'Long
  loc_14819C9: var_E8 = 0
  loc_14819D5: LateIdCallSt
  loc_14819E0: var_94 = CVar(CLng(&H11)) 'Long
  loc_14819E5: var_E8 = 0
  loc_14819F1: LateIdCallSt
  loc_14819FC: var_94 = CVar(CLng(&H12)) 'Long
  loc_1481A01: var_E8 = 0
  loc_1481A0D: LateIdCallSt
  loc_1481A18: var_94 = CVar(CLng(&H13)) 'Long
  loc_1481A1D: var_E8 = 0
  loc_1481A29: LateIdCallSt
  loc_1481A34: var_94 = CVar(CLng(&H14)) 'Long
  loc_1481A39: var_E8 = 0
  loc_1481A45: LateIdCallSt
  loc_1481A50: var_94 = CVar(CLng(&H15)) 'Long
  loc_1481A55: var_E8 = 0
  loc_1481A61: LateIdCallSt
  loc_1481A6C: var_94 = CVar(CLng(&H16)) 'Long
  loc_1481A71: var_E8 = 0
  loc_1481A7D: LateIdCallSt
  loc_1481A87: Set var_D4 = Nothing 
  loc_1481A8F: Set var_11C = Me.FGCat
  loc_1481AA6: global_100 = CStr(CLng(var_11C.BackColor))
  loc_1481AB3: var_94 = CVar(CLng(3)) 'Long
  loc_1481AB8: var_E8 = &H7D0
  loc_1481AC4: LateIdCallSt
  loc_1481AD8: var_11C.Cols = 8
  loc_1481ADF: Set var_11C = Nothing 
  loc_1481AF6: Me.FGrid1.Cols = 8
  loc_1481AFB: var_94 = 0
  loc_1481B04: var_E8 = 0
  loc_1481B0D: var_108 = "SNo"
  loc_1481B16: LateIdCallSt
  loc_1481B1E: var_94 = 0
  loc_1481B2D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481B34: LateIdCallSt
  loc_1481B3C: var_94 = 0
  loc_1481B4B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481B52: LateIdCallSt
  loc_1481B5A: var_94 = 0
  loc_1481B63: var_E8 = &H1C2
  loc_1481B6F: LateIdCallSt
  loc_1481B77: var_94 = 0
  loc_1481B80: var_E8 = 1
  loc_1481B89: var_108 = "Venue Name"
  loc_1481B92: LateIdCallSt
  loc_1481B9A: var_94 = 1
  loc_1481BA9: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481BB0: LateIdCallSt
  loc_1481BB8: var_94 = 1
  loc_1481BC7: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481BCE: LateIdCallSt
  loc_1481BD6: var_94 = 1
  loc_1481BDF: var_E8 = &H960
  loc_1481BEB: LateIdCallSt
  loc_1481BF3: var_94 = 0
  loc_1481BFC: var_E8 = 2
  loc_1481C05: var_108 = "Date From"
  loc_1481C0E: LateIdCallSt
  loc_1481C16: var_94 = 2
  loc_1481C25: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481C2C: LateIdCallSt
  loc_1481C34: var_94 = 2
  loc_1481C43: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481C4A: LateIdCallSt
  loc_1481C52: var_94 = 2
  loc_1481C5B: var_E8 = &H47E
  loc_1481C67: LateIdCallSt
  loc_1481C6F: var_94 = 0
  loc_1481C78: var_E8 = 3
  loc_1481C81: var_108 = "Timefrom"
  loc_1481C8A: LateIdCallSt
  loc_1481C92: var_94 = 3
  loc_1481CA1: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481CA8: LateIdCallSt
  loc_1481CB0: var_94 = 3
  loc_1481CBF: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481CC6: LateIdCallSt
  loc_1481CCE: var_94 = 3
  loc_1481CD7: var_E8 = &H3E8
  loc_1481CE3: LateIdCallSt
  loc_1481CEB: var_94 = 0
  loc_1481CF4: var_E8 = 4
  loc_1481CFD: var_108 = "Date To"
  loc_1481D06: LateIdCallSt
  loc_1481D0E: var_94 = 4
  loc_1481D1D: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481D24: LateIdCallSt
  loc_1481D2C: var_94 = 4
  loc_1481D3B: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481D42: LateIdCallSt
  loc_1481D4A: var_94 = 4
  loc_1481D53: var_E8 = &H47E
  loc_1481D5F: LateIdCallSt
  loc_1481D67: var_94 = 0
  loc_1481D70: var_E8 = 5
  loc_1481D79: var_108 = "Time To"
  loc_1481D82: LateIdCallSt
  loc_1481D8A: var_94 = 5
  loc_1481D99: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481DA0: LateIdCallSt
  loc_1481DA8: var_94 = 5
  loc_1481DB7: var_E8 = CVar(CInt(1)) 'Integer
  loc_1481DBE: LateIdCallSt
  loc_1481DC6: var_94 = 5
  loc_1481DCF: var_E8 = &H384
  loc_1481DDB: LateIdCallSt
  loc_1481DE3: var_94 = 6
  loc_1481DEC: var_E8 = 0
  loc_1481DF8: LateIdCallSt
  loc_1481E00: var_94 = 7
  loc_1481E09: var_E8 = 0
  loc_1481E15: LateIdCallSt
  loc_1481E1F: Set var_120 = Nothing 
  loc_1481E23: Exit Sub
End Sub

Public Sub Proc_124_80_E44884
  'Data Table: 59EE40
  loc_E44860: Set var_88 = Me.TopCtrl1
  loc_E44866: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4487F: If (CStr() = "Browse") Then
  loc_E44882:   Exit Sub
  loc_E44883: End If
  loc_E44883: Exit Sub
End Sub

Public Sub Proc_124_81_1422C38(arg_C) '1422C38
  'Data Table: 59EE40
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_BC As String
  Dim var_130 As MSHFlexGrid
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_174 As Variant
  Dim var_178 As String
  Dim var_18C As Variant
  Dim var_92 As Integer
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_14221C0: If (arg_C = 0) Then
  loc_14221D6:   var_AC = CLng(Me.FGrid.Col)
  loc_14221E6:   If (var_AC = CLng(1)) Then
  loc_1422209:     var_B2 = Me.EOF
  loc_1422237:     Set var_98 = Me.TxtGrid
  loc_142223D:     Call 0.Method_Proc_124_81_1422C380 (arg_C, var_B8, var_BC)
  loc_1422245:     ((Me.RecordCount = 0) Or ((var_B2 = &HFF) Or (Me.BOF = &HFF))) = var_B8.Text
  loc_142225D:     If (var_AC Or (var_BC = vbNullString)) Then
  loc_1422273:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142227B:       var_EC = CVar(CLng(1)) 'Long
  loc_1422280:       var_10C = vbNullString
  loc_142228A:       Set var_B8 = Me.FGrid
  loc_1422290:       LateIdCallSt
  loc_14222B5:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14222BD:       var_EC = CVar(CLng(9)) 'Long
  loc_14222C2:       var_10C = vbNullString
  loc_14222CC:       Set var_B8 = Me.FGrid
  loc_14222D2:       LateIdCallSt
  loc_14222F7:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14222FF:       var_EC = CVar(CLng(4)) 'Long
  loc_1422304:       var_10C = vbNullString
  loc_142230E:       Set var_B8 = Me.FGrid
  loc_1422314:       LateIdCallSt
  loc_1422339:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1422341:       var_EC = CVar(CLng(&HA)) 'Long
  loc_1422346:       var_10C = vbNullString
  loc_1422350:       Set var_B8 = Me.FGrid
  loc_1422356:       LateIdCallSt
  loc_142236B:     Else
  loc_142236E:       Call Proc_124_92_FC54E8(var_B2, var_B8, var_10C, var_EC, var_CC, var_B8, var_10C, var_EC)
  loc_1422379:       If (var_B2 = 0) Then
  loc_1422381:         Proc_124_81_1422C38 = 0
  loc_1422387:       End If
  loc_14223A0:       var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14223A8:       var_EC = CVar(CLng(9)) 'Long
  loc_14223C2:       var_BC = CStr(Me.FGrid.TextMatrix))
  loc_14223E0:       var_10C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14223E8:       var_150 = CVar(CLng(9)) 'Long
  loc_1422402:       var_178 = CStr(Me.FGrid.TextMatrix))
  loc_142246D:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(9)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1422484:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_14224A0:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14224A8:         var_FC = CVar(CLng(1)) 'Long
  loc_14224DB:         var_140 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_14224E3:         Set var_164 = Me.FGrid
  loc_14224E9:         LateIdCallSt
  loc_1422518:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1422520:         var_FC = CVar(CLng(9)) 'Long
  loc_1422553:         var_140 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_142255B:         Set var_164 = Me.FGrid
  loc_1422561:         LateIdCallSt
  loc_1422590:         var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1422598:         var_EC = CVar(CLng(3)) 'Long
  loc_14225B2:         var_BC = CStr(Me.FGrid.TextMatrix))
  loc_14225D0:         If (CDbl(Val(var_BC)) <= CDbl(0)) Then
  loc_1422605:           var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142260D:           var_10C = CVar(CLng(4)) 'Long
  loc_1422621:           var_12C = "0.00"
  loc_142263A:           var_18C = CVar(CStr(Format(CVar(Me.Fields.Item("IRate")), var_12C))) 'String
  loc_1422642:           Set var_164 = Me.FGrid
  loc_1422648:           LateIdCallSt
  loc_1422666:         End If
  loc_142266A:         var_CC = CVar(CLng(var_92)) 'Long
  loc_142267C:         var_A8 = CVar(CStr(var_92)) 'String
  loc_1422684:         Set var_98 = Me.FGrid
  loc_142268A:         LateIdCallSt
  loc_14226CA:         var_98 = Me.Fields
  loc_14226E1:         Proc_6_39_E7C810(var_12C, CVar(var_98.Item("TaxStru")), CVar(CLng(&H10)), CVar(CLng(Me.FGrid.Row)), var_98, CVar(var_98.Item("TaxStru")), CVar(CLng(0)))
  loc_14226EA:         var_174 = CVar(CStr(var_12C)) 'String
  loc_14226F2:         Set var_164 = Me.FGrid
  loc_14226F8:         LateIdCallSt
  loc_1422727:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142272F:         var_FC = CVar(CLng(&HA)) 'Long
  loc_1422762:         var_140 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_142276A:         Set var_164 = Me.FGrid
  loc_1422770:         LateIdCallSt
  loc_142279F:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14227A7:         var_FC = CVar(CLng(&HD)) 'Long
  loc_14227DA:         var_140 = CVar(CStr(Me.Fields.Item("DiscApp").Value)) 'String
  loc_14227E2:         Set var_164 = Me.FGrid
  loc_14227E8:         LateIdCallSt
  loc_1422836:         var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_142283E:         var_10C = CVar(CLng(&H11)) 'Long
  loc_1422879:         LateIdCallSt
  loc_14228D3:         var_12C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H12)), CVar(CLng(var_92)), Me.FGrid, CVar(CStr(Format(CVar(Me.Fields.Item("RateEdit")), "0.00"))), 1, 1)) 'String
  loc_14228DB:         Set var_130 = Me.FGrid
  loc_14228E1:         LateIdCallSt
  loc_14228FB:         Set var_130 = Me.FGrid
  loc_1422901:         var_140 = var_130.Row
  loc_1422931:         var_B8 = Me.Fields.Item("SChrgApp")
  loc_1422940:         Proc_6_39_E7C810(var_12C, CVar(var_B8), CVar(CLng(&H13)), CVar(CLng(var_140)), var_130, var_12C)
  loc_1422949:         var_174 = CVar(CStr(var_12C)) 'String
  loc_1422951:         Set var_164 = Me.FGrid
  loc_1422957:         LateIdCallSt
  loc_1422973:       End If
  loc_1422973:     End If
  loc_1422973:     Call Proc_124_89_1153964(var_164, var_174, var_10C, var_EC)
  loc_142297B:   Else
  loc_1422982:     If (var_AC = CLng(2)) Then
  loc_14229B1:       Set var_98 = Me.TxtGrid
  loc_14229B7:       Call 0.Method_Proc_124_81_1422C380 (0, var_B8, var_BC, CVar(CLng(2)), CVar(CLng(Me.FGrid.Row)))
  loc_14229BF:       var_164 = var_B8.Text
  loc_14229C7:       var_12C = CVar(var_BC) 'String
  loc_14229CF:       Set var_164 = Me.FGrid
  loc_14229D5:       LateIdCallSt
  loc_14229F2:     Else
  loc_14229F9:       If (var_AC = CLng(3)) Then
  loc_1422A06:         Set var_98 = Me.TxtGrid
  loc_1422A0C:         Call 0.Method_Proc_124_81_1422C380 (arg_C, var_B8, var_164, var_12C)
  loc_1422A24:         If Not(IsNumeric(CVar(var_B8))) Then
  loc_1422A2B:           var_BC = CStr(0)
  loc_1422A38:           Set var_98 = Me.TxtGrid
  loc_1422A3E:           Call 0.Method_Proc_124_81_1422C380 (arg_C, var_B8, var_BC)
  loc_1422A46:           var_B8.Text = var_140
  loc_1422A55:         End If
  loc_1422A62:         Set var_98 = Me.TxtGrid
  loc_1422A68:         Call 0.Method_Proc_124_81_1422C380 (arg_C, var_B8, var_BC)
  loc_1422A70:         var_FC = var_B8.Text
  loc_1422A88:         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1422ADA:         LateIdCallSt
  loc_1422AFE:         Call Proc_124_89_1153964(Me.FGrid, CVar(CStr(Format(CVar(var_BC), "0.000"))), 1, 1)
  loc_1422B08:         Call Proc_124_94_1746D30(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_1422B10:       Else
  loc_1422B17:         If (var_AC = CLng(4)) Then
  loc_1422B24:           Set var_98 = Me.TxtGrid
  loc_1422B2A:           Call 0.Method_Proc_124_81_1422C380 (arg_C, var_B8)
  loc_1422B42:           If Not(IsNumeric(CVar(var_B8))) Then
  loc_1422B56:             Set var_98 = Me.TxtGrid
  loc_1422B5C:             Call 0.Method_Proc_124_81_1422C380 (arg_C, var_B8, CStr(0))
  loc_1422B64:             var_B8.Text = var_DC
  loc_1422B73:           End If
  loc_1422B80:           Set var_98 = Me.TxtGrid
  loc_1422B86:           Call 0.Method_Proc_124_81_1422C380 (arg_C, var_B8)
  loc_1422BA6:           var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1422BF8:           LateIdCallSt
  loc_1422C1C:           Call Proc_124_89_1153964(Me.FGrid, CVar(CStr(Format(CVar(var_B8.Text), "0.00"))), 1, 1)
  loc_1422C26:           Call Proc_124_94_1746D30(&H32, CVar(CLng(Me.FGrid.Col)))
  loc_1422C2B:         End If
  loc_1422C2B:       End If
  loc_1422C2B:     End If
  loc_1422C2B:   End If
  loc_1422C2B: End If
  loc_1422C30: Proc_124_81_1422C38 = &HFF
End Sub

Public Sub Proc_124_82_18ADC40
  'Data Table: 59EE40
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_59EE5F As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_128 As Variant
  Dim var_140 As Variant
  Dim var_114 As Variant
  Dim var_130 As String
  Dim var_194 As Fields15
  Dim var_1D8 As Variant
  Dim var_1DC As String
  Dim var_1E0 As Label
  Dim var_1EC As Recordset15
  Dim var_12C As Variant
  Dim var_94 As Recordset15
  Dim var_8C As Recordset15
  Dim var_124 As Variant
  Dim var_200 As Double
  Dim var_208 As Double
  Dim var_1A8 As TextBox
  Dim var_210 As Double
  Dim var_1F8 As TextBox
  Dim var_8E As Integer
  Dim var_21C As TextBox
  Dim Proc_124_82_18ADC402 As Variant
  Dim var_238 As TextBox
  loc_18AB450: On Error Goto loc_18ADC3A
  loc_18AB46A: If (Me.RecordCount > 0) Then
  loc_18AB4C3:   unk_59EE5F.Execute CStr("Select S.* From HallSale1 S Where S.Docid='" & Me.Fields.Item("DocID").Value & "'"), var_124, -1
  loc_18AB4CE:   Set var_88 = var_128
  loc_18AB522:   var_128 = var_88.Fields
  loc_18AB58B:   var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_18AB5D0:   Me.LblUser.Caption = CStr(var_128 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_18AB64A:   var_12C = var_88.Fields.Item("U_AE")
  loc_18AB686:   var_150 = IIf((Proc_6_38_E68A98(CVar(var_12C)) = "E"), "Last Update : ", "entdt : ")
  loc_18AB6CA:   var_1A8 = var_88.Fields.Item("U_EntDt")
  loc_18AB6DE:   var_1D8 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", var_150) & CVar(Proc_6_38_E68A98(CVar(var_1A8))) 
  loc_18AB6F0:   Me.LblLDt.Caption = CStr(var_1D8)
  loc_18AB72B:   Set var_1EC = var_88 
  loc_18AB768:   Set var_128 = Me.Txt
  loc_18AB76E:   Call 0.Method_Proc_124_82_18ADC400 (CInt(4), var_12C)
  loc_18AB776:   var_12C.Text = CStr(var_1EC.Fields.Item("DocID").Value)
  loc_18AB7A6:   var_B0 = var_1EC.Fields.Item("vType")
  loc_18AB7B7:   var_104 = CStr(var_B0.Value)
  loc_18AB7C5:   Set var_128 = Me.Txt
  loc_18AB7CB:   Call 0.Method_Proc_124_82_18ADC400 (CInt(0), var_12C)
  loc_18AB7D3:   var_12C.Tag = var_104
  loc_18AB807:   Set var_9C = Me.Txt
  loc_18AB80D:   Call 0.Method_Proc_124_82_18ADC400 (CInt(0), var_B0, var_104, "Select Description,NCAT From Voucher_Type Where V_Type='")
  loc_18AB815:   var_C0 = var_B0.Tag
  loc_18AB81E:   var_130 = -1 & var_104
  loc_18AB82E:   unk_59EE5F.Execute Proc_6_38_E68A98(CVar(var_12C)) & "'", var_128, 
  loc_18AB839:   Set var_94 = var_128
  loc_18AB865:   If (var_94.RecordCount > 0) Then
  loc_18AB896:     global_120 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("NCat")))
  loc_18AB8D9:     Set var_128 = Me.Txt
  loc_18AB8DF:     Call 0.Method_Proc_124_82_18ADC400 (CInt(0), var_12C)
  loc_18AB8E7:     var_12C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Description")))
  loc_18AB8FB:   End If
  loc_18AB934:   Set var_128 = Me.Txt
  loc_18AB93A:   Call 0.Method_Proc_124_82_18ADC400 (CInt(1), var_12C)
  loc_18AB942:   var_12C.Text = CStr(var_1EC.Fields.Item("VNo").Value)
  loc_18AB9AA:   Set var_128 = Me.Txt
  loc_18AB9B0:   Call 0.Method_Proc_124_82_18ADC400 (CInt(2), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_18AB9B8:   var_12C.Text = 1
  loc_18ABA0A:   Me.LblVPrefix.Caption = CStr(var_1EC.Fields.Item("vPrefix").Value)
  loc_18ABA57:   Set var_128 = Me.Txt
  loc_18ABA5D:   Call 0.Method_Proc_124_82_18ADC400 (CInt(3), var_12C)
  loc_18ABA65:   var_12C.Text = CStr(var_1EC.Fields.Item("Party").Value)
  loc_18ABA95:   var_B0 = var_1EC.Fields.Item("Party")
  loc_18ABAA6:   var_104 = CStr(var_B0.Value)
  loc_18ABAB4:   Set var_128 = Me.Txt
  loc_18ABABA:   Call 0.Method_Proc_124_82_18ADC400 (CInt(3), var_12C)
  loc_18ABAC2:   var_12C.Tag = var_104
  loc_18ABAF6:   Set var_9C = Me.Txt
  loc_18ABAFC:   Call 0.Method_Proc_124_82_18ADC400 (CInt(3), var_B0, var_104, "Select Name From SubGroup Where SubCode='")
  loc_18ABB04:   var_C0 = var_B0.Tag
  loc_18ABB0D:   var_130 = -1 & var_104
  loc_18ABB1D:   unk_59EE5F.Execute Proc_6_38_E68A98(CVar(var_12C)) & "'", var_128, 1
  loc_18ABB28:   Set var_8C = var_128
  loc_18ABB54:   If (var_8C.RecordCount > 0) Then
  loc_18ABB8D:     Set var_128 = Me.Txt
  loc_18ABB93:     Call 0.Method_Proc_124_82_18ADC400 (CInt(3), var_12C)
  loc_18ABB9B:     var_12C.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")))
  loc_18ABBAF:   End If
  loc_18ABBD7:   var_104 = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("RestCode")))
  loc_18ABBE5:   Set var_128 = Me.Txt
  loc_18ABBEB:   Call 0.Method_Proc_124_82_18ADC400 (CInt(5), var_12C)
  loc_18ABBF3:   var_12C.Tag = var_104
  loc_18ABC21:   var_B0 = var_1EC.Fields.Item("RestCode")
  loc_18ABC43:   If CBool(var_B0.Value <> vbNullString) Then
  loc_18ABC64:     Set var_9C = Me.Txt
  loc_18ABC6A:     Call 0.Method_Proc_124_82_18ADC400 (CInt(5), var_B0, var_104, "Select Name From Depart Where Code='")
  loc_18ABC72:     var_C0 = var_B0.Tag
  loc_18ABC7B:     var_130 = -1 & var_104
  loc_18ABC82:     var_1DC = Proc_6_38_E68A98(CVar(var_12C)) & "'"
  loc_18ABC8B:     unk_59EE5F.Execute var_1DC, var_128, 
  loc_18ABC96:     Set var_94 = var_128
  loc_18ABCC2:     If (var_94.RecordCount > 0) Then
  loc_18ABCFB:       Set var_128 = Me.Txt
  loc_18ABD01:       Call 0.Method_Proc_124_82_18ADC400 (CInt(5), var_12C)
  loc_18ABD09:       var_12C.Text = Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name")))
  loc_18ABD1D:     End If
  loc_18ABD1D:   End If
  loc_18ABD53:   Set var_128 = Me.Txt
  loc_18ABD59:   Call 0.Method_Proc_124_82_18ADC400 (CInt(7), var_12C)
  loc_18ABD61:   var_12C.Tag = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("BOOKDOCID")))
  loc_18ABDC6:   Set var_128 = Me.Txt
  loc_18ABDCC:   Call 0.Method_Proc_124_82_18ADC400 (CInt(7), var_12C)
  loc_18ABDD4:   var_12C.Text = Proc_6_38_E68A98(Trim(Right(CVar(var_1EC.Fields.Item("BOOKDOCID")), 8)))
  loc_18ABE40:   Set var_128 = Me.Txt
  loc_18ABE46:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&H15), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("ToBookDate")), "DD/MMM/YYYY")))
  loc_18ABE4E:   var_12C.Text = 1
  loc_18ABEB9:   Set var_128 = Me.txtM
  loc_18ABEBF:   Call 0.Method_Proc_124_82_18ADC400 (1, var_12C, CVar(CStr(Format(CVar(var_1EC.Fields.Item("FrBookTime")), "hh:mm"))))
  loc_18ABEC7:   var_12C.defaultText = 1
  loc_18ABF32:   Set var_128 = Me.Txt
  loc_18ABF38:   Call 0.Method_Proc_124_82_18ADC400 (CInt(6), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("FrBookDate")), "DD/MMM/YYYY")), 1)
  loc_18ABF40:   var_12C.Text = 1
  loc_18ABF85:   var_E0 = "hh:mm"
  loc_18ABF9E:   var_124 = CVar(CStr(Format(CVar(var_1EC.Fields.Item("ToBookTime")), var_E0))) 'String
  loc_18ABFAB:   Set var_128 = Me.txtM
  loc_18ABFB1:   Call 0.Method_Proc_124_82_18ADC400 (0, var_12C, var_124, 1)
  loc_18ABFB9:   var_12C.defaultText = 1
  loc_18AC008:   Set var_128 = Me.Txt
  loc_18AC00E:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&H13), var_12C)
  loc_18AC016:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Remarks")), 1)
  loc_18AC050:   Proc_6_39_E7C810(var_E0, CVar(var_1EC.Fields.Item("NoofPax")))
  loc_18AC067:   Set var_128 = Me.Txt
  loc_18AC06D:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&H11), var_12C)
  loc_18AC075:   var_12C.Text = CStr(var_E0)
  loc_18AC0B3:   Proc_6_39_E7C810(var_E0, CVar(var_1EC.Fields.Item("RatePerPax")))
  loc_18AC0CA:   Set var_128 = Me.Txt
  loc_18AC0D0:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&H12), var_12C)
  loc_18AC0D8:   var_12C.Text = CStr(var_E0)
  loc_18AC11B:   var_E0 = "0.00"
  loc_18AC142:   Set var_128 = Me.Txt
  loc_18AC148:   Call 0.Method_Proc_124_82_18ADC400 (CInt(8), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("Advance")), var_E0)))
  loc_18AC150:   var_12C.Text = 1
  loc_18AC190:   Proc_6_39_E7C810(var_E0, CVar(var_1EC.Fields.Item("RectNo")))
  loc_18AC1A7:   Set var_128 = Me.Txt
  loc_18AC1AD:   Call 0.Method_Proc_124_82_18ADC400 (CInt(9), var_12C, CStr(var_E0))
  loc_18AC1B5:   var_12C.Text = 1
  loc_18AC21F:   Set var_128 = Me.Txt
  loc_18AC225:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&HA), var_12C, CStr(Format(CVar(var_1EC.Fields.Item("RectDate")), "DD/MMM/YYYY")))
  loc_18AC22D:   var_12C.Text = 1
  loc_18AC27D:   Set var_128 = Me.Txt
  loc_18AC283:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&HC), var_12C)
  loc_18AC28B:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("CrCardHoldER")), 1)
  loc_18AC2D5:   Set var_128 = Me.Txt
  loc_18AC2DB:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&HB), var_12C)
  loc_18AC2E3:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("CrCardNo")))
  loc_18AC32D:   Set var_128 = Me.Txt
  loc_18AC333:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&H18), var_12C)
  loc_18AC33B:   var_12C.Text = Proc_6_38_E68A98(CVar(var_1EC.Fields.Item("Narration")))
  loc_18AC366:   var_B0 = var_1EC.Fields.Item("Narration1")
  loc_18AC385:   Set var_128 = Me.Txt
  loc_18AC38B:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&H19), var_12C)
  loc_18AC3A9:   Set var_1EC = Nothing 
  loc_18AC3B9:   Set var_9C = Me.TxtGt
  loc_18AC3BF:   Call 0.Method_Proc_124_82_18ADC408 (var_1EE, var_8E)
  loc_18AC3CA:   For var_1F2 = 1 To var_1EE: 2 = var_1F2 'Integer
  loc_18AC3DD:     Set var_9C = Me.LblCap
  loc_18AC3E3:     Call 0.Method_Proc_124_82_18ADC400 (var_8E, var_B0)
  loc_18AC402:     If (var_B0.Tag = "SNET") Then
  loc_18AC412:       Set var_9C = Me.TxtGt
  loc_18AC418:       Call 0.Method_Proc_124_82_18ADC400 (var_8E, var_B0)
  loc_18AC42D:       var_200 = Val(var_B0.Text)
  loc_18AC43E:       Set var_128 = Me.Txt
  loc_18AC444:       Call 0.Method_Proc_124_82_18ADC400 (CInt(&HF), var_12C, Proc_6_38_E68A98(CVar(var_12C)))
  loc_18AC459:       var_208 = Val(Proc_6_38_E68A98(CVar(var_12C)))
  loc_18AC46A:       Set var_194 = Me.Txt
  loc_18AC470:       Call 0.Method_Proc_124_82_18ADC400 (CInt(8), var_1A8, var_1DC)
  loc_18AC4A8:       var_C0 = CVar((Proc_6_38_E68A98(CVar(var_B0)) - (var_1A8.Text + Val(var_1DC)))) 'Double
  loc_18AC4C6:       Set var_1E0 = Me.Txt
  loc_18AC4CC:       Call 0.Method_Proc_124_82_18ADC400 (CInt(&H10), var_1F8, CStr(Format(CVar(var_B0), "0.00")), 1)
  loc_18AC4D4:       var_1F8.Text = 1
  loc_18AC500:     End If
  loc_18AC503:   Next var_1F2 'Integer
  loc_18AC516:   Set var_9C = Me.Txt
  loc_18AC51C:   Call 0.Method_Proc_124_82_18ADC400 (CInt(2), var_B0)
  loc_18AC532:   Call Proc_124_93_1A87960(CDate(var_B0.Text))
  loc_18AC573:   Call Proc_124_103_13E4D34(CStr(Me.Fields.Item("SearchCode").Value))
  loc_18AC594:   Me.FGrid.Redraw = False
  loc_18AC5AF:   Me.FGrid.Rows = 1
  loc_18AC5B9:   var_8E = 1
  loc_18AC5C9:   var_D0 = "Select S.*,I.Name as ItemName,IC.TaxStru,I.DiscApp,I.RateEdit,I.Kitchen,I.SChrgApp From HallStock S Left Join ItemMast I On (S.Item=I.Code And S.RestCode = I.RestCode) Left Join ItemCatMast IC on IC.Code=I.ItemCatCode Where S.DocId='"
  loc_18AC612:   unk_59EE5F.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_18AC61D:   Set var_88 = var_128
  loc_18AC64B:   If (var_88.RecordCount > 0) Then
  loc_18AC64E:     ' Referenced from: 18ACDD8
  loc_18AC65D:     If Not(var_88.EOF) Then
  loc_18AC660:       var_AC = vbNullString
  loc_18AC66A:       Set var_9C = Me.FGrid
  loc_18AC67F:       Set var_214 = Me.FGrid
  loc_18AC686:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_18AC68E:       var_114 = CVar(CLng(0)) 'Long
  loc_18AC6BE:       var_E0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18AC6C5:       LateIdCallSt
  loc_18AC6DF:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_18AC6E7:       var_114 = CVar(CLng(9)) 'Long
  loc_18AC717:       var_E0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_18AC71E:       LateIdCallSt
  loc_18AC76D:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8E)), var_214, var_E0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_18AC774:       LateIdCallSt
  loc_18AC7A6:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AC7AE:       var_140 = CVar(CLng(3)) 'Long
  loc_18AC7DB:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_18AC7E2:       LateIdCallSt
  loc_18AC818:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AC820:       var_140 = CVar(CLng(4)) 'Long
  loc_18AC84D:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_18AC854:       LateIdCallSt
  loc_18AC88A:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AC892:       var_140 = CVar(CLng(5)) 'Long
  loc_18AC8BF:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_18AC8C6:       LateIdCallSt
  loc_18AC8FC:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AC904:       var_140 = CVar(CLng(7)) 'Long
  loc_18AC931:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_18AC938:       LateIdCallSt
  loc_18AC96E:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18AC976:       var_140 = CVar(CLng(6)) 'Long
  loc_18AC9A3:       var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_18AC9AA:       LateIdCallSt
  loc_18AC9E0:       var_F0 = CVar(CLng(var_8E)) 'Long
  loc_18ACA1C:       LateIdCallSt
  loc_18ACA6B:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(2)), CVar(CLng(var_8E)), var_214, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_18ACA72:       LateIdCallSt
  loc_18ACABB:       Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(&H10)), CVar(CLng(var_8E)), var_214, var_E0)
  loc_18ACACB:       LateIdCallSt
  loc_18ACB18:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_214, CVar(CStr(var_E0)), CVar(CLng(8)))) 'String
  loc_18ACB1F:       LateIdCallSt
  loc_18ACB6A:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiscApp")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ACB71:       LateIdCallSt
  loc_18ACBBC:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiscPer")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ACBC3:       LateIdCallSt
  loc_18ACC0E:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiscAmt")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ACC15:       LateIdCallSt
  loc_18ACC60:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H11)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ACC67:       LateIdCallSt
  loc_18ACCB2:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Kitchen")), CVar(CLng(&H12)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ACCB9:       LateIdCallSt
  loc_18ACD04:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H13)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ACD0B:       LateIdCallSt
  loc_18ACD56:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SChrgPer")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ACD5D:       LateIdCallSt
  loc_18ACDA8:       var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SChrgAmt")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_214, var_E0)) 'String
  loc_18ACDAF:       LateIdCallSt
  loc_18ACDC3:       Set var_214 = Nothing 
  loc_18ACDCD:       var_8E = (var_8E + 1)
  loc_18ACDD3:       var_88.MoveNext
  loc_18ACDD8:       GoTo loc_18AC64E
  loc_18ACDDB:     End If
  loc_18ACDEE:     Me.FGrid.FixedRows = 1
  loc_18ACDF6:   End If
  loc_18ACE04:   Me.FGrid.Redraw = True
  loc_18ACE20:   var_E0 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM HallSale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_18ACE5D:   var_104 = CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "'")
  loc_18ACE67:   unk_59EE5F.Execute var_104, var_150, -1
  loc_18ACE72:   Set var_88 = var_128
  loc_18ACEA1:   Me.FGCat.Rows = 1
  loc_18ACEBD:   If (var_88.RecordCount > 0) Then
  loc_18ACEC0:     ' Referenced from: 18AD288
  loc_18ACECF:     If Not(var_88.EOF) Then
  loc_18ACED6:       Set var_218 = Me.FGCat
  loc_18ACED9:       var_AC = vbNullString
  loc_18ACF03:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18ACF0B:       var_114 = CVar(CLng(0)) 'Long
  loc_18ACF3B:       var_100 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_18ACF42:       LateIdCallSt
  loc_18ACF75:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18ACF7D:       var_114 = CVar(CLng(1)) 'Long
  loc_18ACFAD:       var_100 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18ACFB4:       LateIdCallSt
  loc_18ACFE7:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18ACFEF:       var_114 = CVar(CLng(2)) 'Long
  loc_18AD01F:       var_100 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_18AD026:       LateIdCallSt
  loc_18AD059:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AD061:       var_114 = CVar(CLng(3)) 'Long
  loc_18AD091:       var_100 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_18AD098:       LateIdCallSt
  loc_18AD0CB:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AD0D3:       var_114 = CVar(CLng(4)) 'Long
  loc_18AD103:       var_100 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_18AD10A:       LateIdCallSt
  loc_18AD13D:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AD145:       var_114 = CVar(CLng(5)) 'Long
  loc_18AD175:       var_100 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_18AD17C:       LateIdCallSt
  loc_18AD1AF:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AD1B7:       var_114 = CVar(CLng(6)) 'Long
  loc_18AD1E7:       var_100 = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_18AD1EE:       LateIdCallSt
  loc_18AD221:       var_D0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AD229:       var_114 = CVar(CLng(7)) 'Long
  loc_18AD259:       var_100 = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_18AD260:       LateIdCallSt
  loc_18AD27C:       Set var_218 = Nothing 
  loc_18AD283:       var_88.MoveNext
  loc_18AD288:       GoTo loc_18ACEC0
  loc_18AD28B:     End If
  loc_18AD28B:   End If
  loc_18AD291:   If (var_8E = 1) Then
  loc_18AD2A7:     Me.FGrid.Rows = 1
  loc_18AD2B3:     Set var_128 = Me.FGrid
  loc_18AD2CD:     var_C0 = CVar(CStr(Proc_6_127_F24F80(var_128, CInt(0), var_218, var_100, var_114, "'", var_218, var_100))) 'String
  loc_18AD2D5:     Set var_B0 = Me.FGrid
  loc_18AD302:     Me.FGrid.FixedRows = 1
  loc_18AD30A:   End If
  loc_18AD328:   Set var_9C = Me.Txt
  loc_18AD32E:   Call 0.Method_Proc_124_82_18ADC400 (CInt(7), var_B0, var_104, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='", var_C0, -1, var_128)
  loc_18AD336:   FGrid.DispID_10000 = var_B0.Tag
  loc_18AD33F:   var_130 = var_C0 & var_104
  loc_18AD346:   var_1DC = var_130 & "'"
  loc_18AD34F:   unk_59EE5F.Execute var_1DC, var_114, "'"
  loc_18AD35A:   Set var_88 = var_128
  loc_18AD381:   Me.FGrid1.Redraw = False
  loc_18AD39C:   Me.FGrid1.Rows = 1
  loc_18AD3A4:   var_AC = vbNullString
  loc_18AD3AE:   Set var_9C = Me.FGrid1
  loc_18AD3D2:   Me.FGrid1.FixedRows = 1
  loc_18AD3DA:   ' Referenced from: 18AD7AE
  loc_18AD3E0:   var_1EE = var_88.EOF
  loc_18AD3E9:   If Not(var_1EE) Then
  loc_18AD405:     var_AC = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_18AD414:     Me.FGrid1.Row = 1
  loc_18AD427:     Set var_21C = Me.FGrid1
  loc_18AD43D:     var_140 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_18AD464:     var_AC = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_18AD487:     var_104 = CStr(Me.FGrid1.TextMatrix))
  loc_18AD495:     var_124 = CVar(CStr((Val(var_104) + CDbl(1)))) 'String
  loc_18AD49C:     LateIdCallSt
  loc_18AD4DF:     var_AC = "VenueName"
  loc_18AD504:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_AC)), 1, CVar(CLng(Me.FGrid1.Row)), var_21C, Me.FGrid1.Row & Me.Fields.Item("SearchCode").Value & "'", 0, var_AC)) 'String
  loc_18AD50B:     LateIdCallSt
  loc_18AD56C:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromDate")), 2, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100, 0)) 'String
  loc_18AD573:     LateIdCallSt
  loc_18AD5D4:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FromTime")), 3, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100)) 'String
  loc_18AD5DB:     LateIdCallSt
  loc_18AD63C:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToDate")), 4, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100)) 'String
  loc_18AD643:     LateIdCallSt
  loc_18AD6A4:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToTime")), 5, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100)) 'String
  loc_18AD6AB:     LateIdCallSt
  loc_18AD6FB:     var_B0 = var_88.Fields.Item("VenuCode")
  loc_18AD70C:     var_100 = CVar(Proc_6_38_E68A98(CVar(var_B0), 6, CVar(CLng(Me.FGrid1.Row)), var_21C, var_100)) 'String
  loc_18AD713:     LateIdCallSt
  loc_18AD72F:     Set var_128 = Me.FGrid1
  loc_18AD75A:     Set var_9C = Me.Txt
  loc_18AD760:     Call 0.Method_Proc_124_82_18ADC400 (CInt(1), var_B0, var_104, 7, CVar(CLng(var_128.Row)), var_21C)
  loc_18AD768:     var_100 = var_B0.Text
  loc_18AD770:     var_E0 = CVar(var_104) 'String
  loc_18AD777:     LateIdCallSt
  loc_18AD78F:     var_AC = vbNullString
  loc_18AD798:     Proc_124_82_18ADC402 = var_21C.Name
  loc_18AD7A2:     Set var_21C = Nothing 
  loc_18AD7A9:     var_88.MoveNext
  loc_18AD7AE:     GoTo loc_18AD3DA
  loc_18AD7B1:   End If
  loc_18AD7B8:   Set var_9C = Me.TxtGt
  loc_18AD7BE:   Call 0.Method_Proc_124_82_18ADC408 (var_1EE, Proc_124_82_18ADC402, var_AC, var_21C, var_E0)
  loc_18AD7D0:   Set var_B0 = Me.TxtGt
  loc_18AD7D6:   Call 0.Method_Proc_124_82_18ADC400 (var_1EE, var_128, var_104, var_140)
  loc_18AD7DE:   FGrid1.DispID_10000 = var_128.Text
  loc_18AD7EB:   var_200 = Val(var_104)
  loc_18AD7F5:   Set var_12C = Me.TextGt
  loc_18AD7FB:   Call 0.Method_Proc_124_82_18ADC408 (var_22E, var_200, var_AC)
  loc_18AD80D:   Set var_194 = Me.TextGt
  loc_18AD813:   Call 0.Method_Proc_124_82_18ADC400 (var_22E, var_1A8, var_130)
  loc_18AD81B:   var_218 = var_1A8.Text
  loc_18AD828:   var_208 = Val(var_130)
  loc_18AD839:   Set var_1E0 = Me.Txt
  loc_18AD83F:   Call 0.Method_Proc_124_82_18ADC400 (CInt(8), var_1F8, var_1DC)
  loc_18AD854:   var_210 = Val(var_1DC)
  loc_18AD877:   var_C0 = CVar(((var_200 + var_1F8.Text) - var_210)) 'Double
  loc_18AD895:   Set var_234 = Me.Txt
  loc_18AD89B:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&H14), var_238, CStr(Format(var_128.Row, "0.00")), 1)
  loc_18AD8A3:   var_238.Text = 1
  loc_18AD8DA:   Set var_9C = Me.TxtGt
  loc_18AD8E0:   Call 0.Method_Proc_124_82_18ADC408 (var_1EE, var_210)
  loc_18AD8F2:   Set var_B0 = Me.TxtGt
  loc_18AD8F8:   Call 0.Method_Proc_124_82_18ADC400 (var_1EE, var_128)
  loc_18AD90D:   var_200 = Val(var_128.Text)
  loc_18AD917:   Set var_12C = Me.TextGt
  loc_18AD91D:   Call 0.Method_Proc_124_82_18ADC408 (var_22E, var_200)
  loc_18AD92F:   Set var_194 = Me.TextGt
  loc_18AD935:   Call 0.Method_Proc_124_82_18ADC400 (var_22E, var_1A8)
  loc_18AD94A:   var_208 = Val(var_1A8.Text)
  loc_18AD969:   var_C0 = CVar((var_200 + var_208)) 'Double
  loc_18AD970:   var_100 = Format(var_128.Row, "0.00")
  loc_18AD987:   Set var_1E0 = Me.Txt
  loc_18AD98D:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&H1A), var_1F8, CStr(var_100), 1)
  loc_18AD995:   var_1F8.Text = 1
  loc_18AD9CD:   Me.FGrid1.Redraw = True
  loc_18ADA28:   Proc_348_21_12A7B74(CStr(Me.Fields.Item("DocID").Value), Me.QrImage, global_160, global_164)
  loc_18ADA41: Else
  loc_18ADA41:   Call Proc_124_84_10482E0(global_168, var_208)
  loc_18ADA4A:   Set var_B0 = Me.QrImage
  loc_18ADA5F:   var_130 = 0
  loc_18ADA6A:   var_104 = 0
  loc_18ADA7C:   Proc_348_21_12A7B74(vbNullString, var_B0, var_104)
  loc_18ADA8F: End If
  loc_18ADA9D: Set var_9C = Me.Txt
  loc_18ADAA3: Call 0.Method_Proc_124_82_18ADC400 (CInt(8), var_B0, var_104)
  loc_18ADAAB: var_130 = var_B0.Text
  loc_18ADAC7: If (CDbl(Val(var_104)) = CDbl(0)) Then
  loc_18ADAD3:   Set var_9C = Me.LBLRectno
  loc_18ADAD9:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_18ADAEE:   Set var_9C = Me.Txt
  loc_18ADAF4:   Call 0.Method_Proc_124_82_18ADC400 (CInt(9), var_B0, 0)
  loc_18ADAFC:   var_B0.Visible = False
  loc_18ADB15:   Set var_9C = Me.Txt
  loc_18ADB1B:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&HA), var_B0)
  loc_18ADB23:   var_B0.Visible = False
  loc_18ADB32: Else
  loc_18ADB3A:   Set var_9C = Me.LBLRectno
  loc_18ADB40:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_18ADB55:   Set var_9C = Me.Txt
  loc_18ADB5B:   Call 0.Method_Proc_124_82_18ADC400 (CInt(9), var_B0)
  loc_18ADB63:   var_B0.Visible = True
  loc_18ADB7C:   Set var_9C = Me.Txt
  loc_18ADB82:   Call 0.Method_Proc_124_82_18ADC400 (CInt(&HA), var_B0)
  loc_18ADB8A:   var_B0.Visible = True
  loc_18ADB96: End If
  loc_18ADBA4: Set var_9C = Me.Txt
  loc_18ADBAA: Call 0.Method_Proc_124_82_18ADC400 (CInt(3), var_B0)
  loc_18ADBC9: If (var_B0.Tag = vbNullString) Then
  loc_18ADBD8:   Me.CmdeInvoiceJson.Enabled = False
  loc_18ADBEC:   Me.CmdGeneInvoice.Enabled = False
  loc_18ADBF7: Else
  loc_18ADC03:   Me.CmdeInvoiceJson.Enabled = True
  loc_18ADC17:   Me.CmdGeneInvoice.Enabled = True
  loc_18ADC1F: End If
  loc_18ADC1F: Call Proc_124_104_FA9F44(var_100)
  loc_18ADC24: Call Proc_124_87_F28930()
  loc_18ADC2E: Set var_88 = Nothing
  loc_18ADC36: Set var_94 = Nothing
  loc_18ADC39: Exit Sub
  loc_18ADC3A: ' Referenced from: 18AB450
  loc_18ADC3A: Proc_6_60_E62BC4()
  loc_18ADC3F: Exit Sub
End Sub

Public Sub Proc_124_83_113366C
  'Data Table: 59EE40
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_59EE5F As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_1133315: Set var_9C = Me.TopCtrl1
  loc_113331B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_1133323: var_B0 = CStr()
  loc_1133334: If (var_B0 = "Add") Then
  loc_1133364:   Set var_9C = Me.Txt
  loc_113336A:   Call 0.Method_Proc_124_83_113366C0 (CInt(4), var_B4, var_B0, "Select Count(*) From HallSale1 Where DocID='", var_AC, -1)
  loc_113338B:   unk_59EE5F.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_113339B:    = var_D4.Item()
  loc_11333A3:    = var_E8.Value
  loc_11333D0:   If (var_B4.Text.Fields > 0) Then
  loc_11333D9:     Call 0.Method_arg_50 (var_B0)
  loc_11333FA:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_1133410:     Call Proc_124_90_11BE3FC(MemVar_1F92044)
  loc_1133423:     Set var_9C = Me.Txt
  loc_1133429:     Call 0.Method_Proc_124_83_113366C0 (CInt(4), var_B4)
  loc_1133431:     var_B4.Text = var_B0
  loc_1133445:     Proc_124_83_113366C = 0
  loc_113344B:   End If
  loc_113344B: End If
  loc_1133470: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_113347A:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1133482:   var_108 = CVar(CLng(1)) 'Long
  loc_11334A2:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_11334BE:   If CBool(var_118 <> vbNullString) Then
  loc_11334C5:     var_CC = CVar(CLng(var_88)) 'Long
  loc_11334CD:     var_108 = CVar(CLng(3)) 'Long
  loc_11334FD:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1133525:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_113354B:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1133557:       Set var_9C = Me.FGrid
  loc_113357B:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1133588:       Proc_124_83_113366C = 0
  loc_113358E:     End If
  loc_1133592:     var_CC = CVar(CLng(var_88)) 'Long
  loc_113359A:     var_108 = CVar(CLng(4)) 'Long
  loc_11335CA:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_11335F2:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1133618:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1133624:       Set var_9C = Me.FGrid
  loc_1133648:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1133655:       Proc_124_83_113366C = 0
  loc_113365B:     End If
  loc_113365B:   End If
  loc_113365E: Next var_12C 'Integer
  loc_1133663: Proc_124_83_113366C = 
  loc_1133669: BranchFVar 16895
End Sub

Public Sub Proc_124_84_10482E0
  'Data Table: 59EE40
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  loc_1048085: Me.LblVPrefix.Caption = vbNullString
  loc_104809B: Set var_8C = Me.Txt
  loc_10480A1: Call 0.Method_Proc_124_84_10482E0C (var_8E, var_86)
  loc_10480B1: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10480C7:   Set var_8C = Me.Txt
  loc_10480CD:   Call 0.Method_Proc_124_84_10482E00 (CInt(var_86), var_98)
  loc_10480D5:   var_98.Text = vbNullString
  loc_10480F1:   Set var_8C = Me.Txt
  loc_10480F7:   Call 0.Method_Proc_124_84_10482E00 (CInt(var_86), var_98)
  loc_10480FF:   var_98.Tag = vbNullString
  loc_104810E: Next var_92 'Byte
  loc_1048123: Set var_8C = Me.txtM
  loc_1048129: Call 0.Method_Proc_124_84_10482E00 (0, var_98)
  loc_1048131: var_98.Text = "0:00"
  loc_104814C: Set var_8C = Me.txtM
  loc_1048152: Call 0.Method_Proc_124_84_10482E00 (0, var_98)
  loc_104815A: var_98.Tag = vbNullString
  loc_1048175: Set var_8C = Me.txtM
  loc_104817B: Call 0.Method_Proc_124_84_10482E00 (1, var_98)
  loc_1048183: var_98.Text = "0:00"
  loc_104819E: Set var_8C = Me.txtM
  loc_10481A4: Call 0.Method_Proc_124_84_10482E00 (1, var_98)
  loc_10481AC: var_98.Tag = vbNullString
  loc_10481BE: global_160 = vbNullString
  loc_10481C8: global_164 = vbNullString
  loc_10481D6: global_168 = CDate(CDbl(1))
  loc_10481EC: Me.FGrid.Rows = 1
  loc_1048212: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_104821A: Set var_98 = Me.FGrid
  loc_1048247: Me.FGrid.FixedRows = 1
  loc_1048262: Me.FGrid1.Rows = 1
  loc_1048286: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_104828E: Set var_98 = Me.FGrid1
  loc_10482BB: Me.FGrid1.FixedRows = 1
  loc_10482D6: Me.FGCat.Rows = 0
  loc_10482DE: Exit Sub
  loc_10482DF: Exit Sub
End Sub

Public Sub Proc_124_85_10386F0
  'Data Table: 59EE40
  Dim var_98 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_10384AA: Set var_8C = Me.Txt
  loc_10384B0: Call 0.Method_Proc_124_85_10386F0C (var_8E, var_86)
  loc_10384C0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10384FE:   If Not((((((((var_86 = 0) Or (var_86 = 2)) Or (var_86 = 1)) Or (var_86 = 4)) Or (var_86 = 7)) Or (var_86 = &H17)) Or (var_86 = &H18))) Then
  loc_1038511:     Set var_8C = Me.Txt
  loc_1038517:     Call 0.Method_Proc_124_85_10386F00 (CInt(var_86), var_98)
  loc_103851F:     var_98.Text = vbNullString
  loc_103853B:     Set var_8C = Me.Txt
  loc_1038541:     Call 0.Method_Proc_124_85_10386F00 (CInt(var_86), var_98)
  loc_1038549:     var_98.Tag = vbNullString
  loc_1038555:   End If
  loc_1038558: Next var_92 'Byte
  loc_103856D: Set var_8C = Me.txtM
  loc_1038573: Call 0.Method_Proc_124_85_10386F00 (0, var_98)
  loc_103857B: var_98.Text = "0:00"
  loc_1038596: Set var_8C = Me.txtM
  loc_103859C: Call 0.Method_Proc_124_85_10386F00 (0, var_98)
  loc_10385A4: var_98.Tag = vbNullString
  loc_10385BF: Set var_8C = Me.txtM
  loc_10385C5: Call 0.Method_Proc_124_85_10386F00 (1, var_98)
  loc_10385CD: var_98.Text = "0:00"
  loc_10385E8: Set var_8C = Me.txtM
  loc_10385EE: Call 0.Method_Proc_124_85_10386F00 (1, var_98)
  loc_10385F6: var_98.Tag = vbNullString
  loc_1038615: Me.FGrid.Rows = 1
  loc_103863B: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_1038643: Set var_98 = Me.FGrid
  loc_1038670: Me.FGrid.FixedRows = 1
  loc_103868B: Me.FGrid1.Rows = 1
  loc_10386AF: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid1, 0, FGrid.DispID_10000))) 'String
  loc_10386B7: Set var_98 = Me.FGrid1
  loc_10386E4: Me.FGrid1.FixedRows = 1
  loc_10386EC: Exit Sub
End Sub

Public Sub Proc_124_86_10C6198(arg_C) '10C6198
  'Data Table: 59EE40
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As Variant
  loc_10C5EAA: Set var_8C = Me.Txt
  loc_10C5EB0: Call 0.Method_Proc_124_86_10C6198C (var_8E, var_86)
  loc_10C5EC0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10C5ED6:   Set var_8C = Me.Txt
  loc_10C5EDC:   Call 0.Method_Proc_124_86_10C61980 (CInt(var_86), var_98)
  loc_10C5EE4:   var_98.Enabled = arg_C
  loc_10C5EF3: Next var_92 'Byte
  loc_10C5F07: Set var_8C = Me.txtM
  loc_10C5F0D: Call 0.Method_Proc_124_86_10C61980 (0, var_98)
  loc_10C5F15: var_98.Enabled = False
  loc_10C5F2F: Set var_8C = Me.txtM
  loc_10C5F35: Call 0.Method_Proc_124_86_10C61980 (1, var_98)
  loc_10C5F3D: var_98.Enabled = False
  loc_10C5F56: Set var_8C = Me.Txt
  loc_10C5F5C: Call 0.Method_Proc_124_86_10C61980 (CInt(&H15), var_98)
  loc_10C5F64: var_98.Enabled = False
  loc_10C5F7D: Set var_8C = Me.Txt
  loc_10C5F83: Call 0.Method_Proc_124_86_10C61980 (CInt(6), var_98)
  loc_10C5F8B: var_98.Enabled = False
  loc_10C5FA4: Set var_8C = Me.Txt
  loc_10C5FAA: Call 0.Method_Proc_124_86_10C61980 (CInt(4), var_98)
  loc_10C5FB2: var_98.Enabled = False
  loc_10C5FCB: Set var_8C = Me.Txt
  loc_10C5FD1: Call 0.Method_Proc_124_86_10C61980 (CInt(8), var_98)
  loc_10C5FD9: var_98.Enabled = False
  loc_10C5FF2: Set var_8C = Me.Txt
  loc_10C5FF8: Call 0.Method_Proc_124_86_10C61980 (CInt(&HA), var_98)
  loc_10C6000: var_98.Enabled = False
  loc_10C6019: Set var_8C = Me.Txt
  loc_10C601F: Call 0.Method_Proc_124_86_10C61980 (CInt(9), var_98)
  loc_10C6027: var_98.Enabled = False
  loc_10C6040: Set var_8C = Me.Txt
  loc_10C6046: Call 0.Method_Proc_124_86_10C61980 (CInt(&H10), var_98)
  loc_10C604E: var_98.Enabled = False
  loc_10C6067: Set var_8C = Me.Txt
  loc_10C606D: Call 0.Method_Proc_124_86_10C61980 (CInt(&H14), var_98)
  loc_10C6075: var_98.Enabled = False
  loc_10C608E: Set var_8C = Me.Txt
  loc_10C6094: Call 0.Method_Proc_124_86_10C61980 (CInt(&H1A), var_98)
  loc_10C609C: var_98.Enabled = False
  loc_10C60B5: Set var_8C = Me.Txt
  loc_10C60BB: Call 0.Method_Proc_124_86_10C61980 (CInt(&HC), var_98)
  loc_10C60C3: var_98.Enabled = False
  loc_10C60DC: Set var_8C = Me.Txt
  loc_10C60E2: Call 0.Method_Proc_124_86_10C61980 (CInt(&HB), var_98)
  loc_10C60EA: var_98.Enabled = False
  loc_10C6103: Set var_8C = Me.Command1
  loc_10C6109: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_10C6122: Me.CmdeInvoiceJson.Enabled = Not(arg_C)
  loc_10C6138: Me.CmdGeneInvoice.Enabled = Not(arg_C)
  loc_10C6148: Set var_8C = Me.FreInvInfo
  loc_10C614E: var_8C.Visible = Not(arg_C)
  loc_10C6174: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_10C6189: Me.QrImage.Picture = var_8C
  loc_10C6195: Exit Sub
End Sub

Public Sub Proc_124_87_F28930
  'Data Table: 59EE40
  loc_F2883C: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F2884E:   Me.DGParty.Visible = False
  loc_F28856: End If
  loc_F28872: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_F28884:   Me.DGVType.Visible = False
  loc_F2888C: End If
  loc_F288A8: If (CBool(Me.DGHall.Visible) = &HFF) Then
  loc_F288BA:   Me.DGHall.Visible = False
  loc_F288C2: End If
  loc_F288DE: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F288F0:   Me.DGItem.Visible = False
  loc_F288F8: End If
  loc_F28914: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_F28926:   Me.DGBookNo.Visible = False
  loc_F2892E: End If
  loc_F2892E: Exit Sub
End Sub

Public Sub Proc_124_88_F0C33C
  'Data Table: 59EE40
  loc_F0C260: Call Proc_124_87_F28930()
  loc_F0C270: Set var_88 = Me.Txt
  loc_F0C276: Call 0.Method_Proc_124_88_F0C33C0 (CInt(2))
  loc_F0C29F: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0C2A2:   Exit Sub
  loc_F0C2A3: End If
  loc_F0C2AE: Set var_88 = Me.Txt
  loc_F0C2B4: Call 0.Method_Proc_124_88_F0C33C0 (CInt(1), var_8C)
  loc_F0C2DD: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0C2E0:   Exit Sub
  loc_F0C2E1: End If
  loc_F0C318: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0C31B:   Call TopCtrl1_UnknownEvent_16()
  loc_F0C323: Else
  loc_F0C329:   Call 0.Method_arg_1E8 (var_88)
  loc_F0C331:   Call var_88.SetFocus
  loc_F0C33A: End If
  loc_F0C33A: Exit Sub
End Sub

Public Sub Proc_124_89_1153964
  'Data Table: 59EE40
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim var_17C As Variant
  Dim var_210 As Variant
  loc_11535F3: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11535FB: var_C8 = CVar(CLng(4)) 'Long
  loc_1153633: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115363B: var_134 = CVar(CLng(3)) 'Long
  loc_1153673: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115367B: var_1F0 = CVar(CLng(5)) 'Long
  loc_11536AC: var_210 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_11536B4: Set var_224 = Me.FGrid
  loc_11536BA: LateIdCallSt
  loc_1153700: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1153708: var_C8 = CVar(CLng(6)) 'Long
  loc_1153740: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1153756:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115375E:   var_C8 = CVar(CLng(5)) 'Long
  loc_1153796:   var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115379E:   var_134 = CVar(CLng(6)) 'Long
  loc_11537D6:   var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11537DE:   var_1F0 = CVar(CLng(7)) 'Long
  loc_1153813:   var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_115381B:   Set var_224 = Me.FGrid
  loc_1153821:   LateIdCallSt
  loc_1153854: End If
  loc_1153867: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_115386F: var_C8 = CVar(CLng(5)) 'Long
  loc_11538A7: var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11538AF: var_134 = CVar(CLng(7)) 'Long
  loc_11538E7: var_1D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11538EF: var_1F0 = CVar(CLng(8)) 'Long
  loc_1153910: var_17C = CVar((Val(CStr(Me.FGrid.TextMatrix))) + Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1153920: var_210 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1153928: Set var_224 = Me.FGrid
  loc_115392E: LateIdCallSt
  loc_1153961: Exit Sub
End Sub

Public Sub Proc_124_90_11BE3FC
  'Data Table: 59EE40
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_11BDFF0: Set var_94 = Me.Txt
  loc_11BDFF6: Call 0.Method_Proc_124_90_11BE3FC0 (CInt(0), var_98)
  loc_11BE006: var_90 = var_98.Tag
  loc_11BE024: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_11BE055: Set var_94 = Me.Txt
  loc_11BE05B: Call 0.Method_Proc_124_90_11BE3FC0 (CInt(2), var_98, CVar(var_9C & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_11BE06A: Proc_6_7_F25D88(var_CC, CVar(var_98), var_130)
  loc_11BE072: var_EC = -1 & var_CC 
  loc_11BE086: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_11BE091: Set var_8C = var_134
  loc_11BE0CD: If (var_8C.RecordCount > 0) Then
  loc_11BE0FE:   global_156 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Number_Method")))
  loc_11BE147:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_11BE17B:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11BE1A6:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11BE1BB:     var_CC = (var_98.Value + 1)
  loc_11BE1C3:     global_116 = CInt(var_CC)
  loc_11BE1E1:     Set var_94 = Me.Txt
  loc_11BE1E7:     Call 0.Method_Proc_124_90_11BE3FC0 (CInt(1), var_98)
  loc_11BE1EF:     var_98.Enabled = False
  loc_11BE208:     Set var_94 = Me.Txt
  loc_11BE20E:     Call 0.Method_Proc_124_90_11BE3FC0 (CInt(2), var_98)
  loc_11BE216:     var_98.Enabled = False
  loc_11BE225:   Else
  loc_11BE256:     global_112 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11BE281:     var_98 = var_8C.Fields.Item("start_srl_no")
  loc_11BE296:     var_CC = (var_98.Value + 1)
  loc_11BE29E:     global_116 = CInt(var_CC)
  loc_11BE2AF:   End If
  loc_11BE2AF: End If
  loc_11BE2DA: var_BC = Space((5 - Len(var_90)))
  loc_11BE2E2: var_DC = (CVar(global_116 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_98.Value)
  loc_11BE2F6: var_EC = Space((5 - Len(global_112)))
  loc_11BE2FE: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_11BE30B: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_112))
  loc_11BE324: var_14C = Space((8 - Len(CStr(global_116))))
  loc_11BE32C: var_15C = (var_130 + var_14C)
  loc_11BE33B: var_17C = (var_15C + CVar(CStr(global_116)))
  loc_11BE346: global_104 = CStr(var_17C)
  loc_11BE37C: Me.LblVPrefix.Caption = global_112
  loc_11BE395: Set var_94 = Me.Txt
  loc_11BE39B: Call 0.Method_Proc_124_90_11BE3FC0 (CInt(4), var_98)
  loc_11BE3A3: var_98.Text = global_104
  loc_11BE3C5: Set var_94 = Me.Txt
  loc_11BE3CB: Call 0.Method_Proc_124_90_11BE3FC0 (CInt(1), var_98)
  loc_11BE3D3: var_98.Text = CStr(global_116)
  loc_11BE3E8: var_88 = global_104
  loc_11BE3F0: Set var_8C = Nothing
  loc_11BE3F3: Proc_124_90_11BE3FC = global_116
End Sub

Public Sub Proc_124_91_10B8EE8(arg_C, arg_10, arg_14) '10B8EE8
  'Data Table: 59EE40
  Dim unk_59EE5F As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B8C56: If (arg_C = "HSBIL") Then
  loc_10B8C7D:   unk_59EE5F.Execute "Select Distinct DocId,V_Type,V_No From HallSale1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B8C88:   Set var_8C = var_C4
  loc_10B8C9B:   var_94 = "Sale Bill "
  loc_10B8CA1: Else
  loc_10B8CA6:   Proc_124_91_10B8EE8 = &HFF
  loc_10B8CAC: End If
  loc_10B8CC0: If (var_8C.RecordCount > 0) Then
  loc_10B8CC3:   ' Referenced from: 10B8E3C
  loc_10B8CD2:   If Not(var_8C.EOF) Then
  loc_10B8CDD:     If (var_90 = vbNullString) Then
  loc_10B8D20:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B8D27:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B8D59:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B8D7E:     Else
  loc_10B8DBA:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B8DDA:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B8E07:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B8E0C:       var_90 = CStr(var_11C)
  loc_10B8E34:     End If
  loc_10B8E37:     var_8C.MoveNext
  loc_10B8E3C:     GoTo loc_10B8CC3
  loc_10B8E3F:   End If
  loc_10B8E45:   Call 0.Method_arg_50 (var_138)
  loc_10B8EA1:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B8EA4:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B8ED3:   Set var_8C = Nothing
  loc_10B8ED6:   Proc_124_91_10B8EE8 = 0
  loc_10B8EDC: End If
  loc_10B8EE1: Proc_124_91_10B8EE8 = &HFF
End Sub

Public Sub Proc_124_92_FC54E8
  'Data Table: 59EE40
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_86 As Integer
  loc_FC5367: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FC536C:   var_92 = 1 'Byte
  loc_FC5370: End If
  loc_FC5379: Set var_98 = Me.TxtGrid
  loc_FC537F: Call 0.Method_Proc_124_92_FC54E80 (0, var_B0)
  loc_FC53A2: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC53D6: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC53FA:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC53FD:     GoTo loc_FC54D2
  loc_FC5400:   End If
  loc_FC5404:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC540E:   var_104 = CVar(CLng(var_92)) 'Long
  loc_FC542E:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC5438:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC546D:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC54A7:     If (MsgBox("Do U Want To Add A Duplicate Item.", &H44, "Validation", var_D0, var_124) = 7) Then
  loc_FC54AE:       Set var_98 = Me.FGrid
  loc_FC54C1:       var_86 = 0
  loc_FC54C7:     Else
  loc_FC54C9:       var_86 = &HFF
  loc_FC54CC:     End If
  loc_FC54CC:     Proc_124_92_FC54E8 = var_86
  loc_FC54D2:     ' Referenced from: FC53FD
  loc_FC54D2:   End If
  loc_FC54D5: Next var_D4 'Integer
  loc_FC54DF: Proc_124_92_FC54E8 = &HFF
End Sub

Public Sub Proc_124_93_1A87960(arg_C) '1A87960
  'Data Table: 59EE40
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_A0 As String
  Dim var_B8 As String
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim unk_59EE5F As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_154 As Variant
  Dim var_150 As Fields15
  Dim var_15C As Variant
  Dim var_140 As Boolean
  Dim var_158 As Fields15
  Dim var_1A4 As Variant
  Dim var_1B4 As TextBox
  Dim var_DC As Variant
  loc_1A83CCC: Set var_90 = Me.TextGt
  loc_1A83CD2: Call 0.Method_Proc_124_93_1A879600 (1, var_94)
  loc_1A83CDA: var_96 = var_94.TabIndex
  loc_1A83CE2: var_8A = var_96
  loc_1A83D07: var_A0 = "Select * From SundryType WHERE LogSite_Code='" & MemVar_1F92078 & "' and V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE Site_Code='"
  loc_1A83D34: var_B8 = var_A0 & MemVar_1F92070 & "' and LogSite_Code='" & MemVar_1F92078 & "' and NCAT='BBILL' AND RESTCODE='" & global_56 & "') aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_TYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT='BBILL' AND RESTCODE='"
  loc_1A83D53: Proc_6_7_F25D88(var_DC, arg_C, CVar(var_B8 & global_56 & "') aND AppDate<="), var_140)
  loc_1A83D5B: var_FC = -1 & var_DC 
  loc_1A83D72: unk_59EE5F.Execute CStr(var_FC & "  Order by AppDate Desc) Order by SNO"), var_90, var_8A
  loc_1A83D7D: Set var_88 = var_90
  loc_1A83DAE: Set var_90 = Me.LableCap
  loc_1A83DB4: Call 0.Method_Proc_124_93_1A879608 (var_96)
  loc_1A83DE4: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1A83E06:   Set var_90 = Me.LableCap
  loc_1A83E0C:   Call 0.Method_Proc_124_93_1A879608 (var_96, var_8C)
  loc_1A83E17:   For var_14C =  To var_96: CInt((var_88.RecordCount + 1)) = var_14C 'Integer
  loc_1A83E27:     Set var_90 = Me.LableCap
  loc_1A83E2D:     Call 0.Method_Proc_124_93_1A879600 (var_8C)
  loc_1A83E3E:     Me.LableCap.Unload var_94
  loc_1A83E54:     Set var_90 = Me.LableDummy
  loc_1A83E5A:     Call 0.Method_Proc_124_93_1A879600 (var_8C, var_94)
  loc_1A83E6B:     Me.LableDummy.Unload var_94
  loc_1A83E81:     Set var_90 = Me.LableAt
  loc_1A83E87:     Call 0.Method_Proc_124_93_1A879600 (var_8C, var_94)
  loc_1A83E98:     Me.LableAt.Unload var_94
  loc_1A83EAE:     Set var_90 = Me.TextPer
  loc_1A83EB4:     Call 0.Method_Proc_124_93_1A879600 (var_8C, var_94)
  loc_1A83EC5:     Me.TextPer.Unload var_94
  loc_1A83EDB:     Set var_90 = Me.TextGt
  loc_1A83EE1:     Call 0.Method_Proc_124_93_1A879600 (var_8C, var_94)
  loc_1A83EF2:     Me.TextGt.Unload var_94
  loc_1A83F01:   Next var_14C 'Integer
  loc_1A83F06: End If
  loc_1A83F1A: If (var_88.RecordCount > 0) Then
  loc_1A83F56:   Set var_150 = Me.Txt
  loc_1A83F5C:   Call 0.Method_Proc_124_93_1A879600 (CInt(&H17), var_154)
  loc_1A83F64:   var_154.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_1A83F7A:   ' Referenced from: 1A85A81
  loc_1A83F80:   var_96 = var_88.EOF
  loc_1A83F89:   If Not(var_96) Then
  loc_1A83FC8:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A83FFC:       Set var_150 = Me.LableDummy
  loc_1A84002:       Call 0.Method_Proc_124_93_1A879608 (var_96)
  loc_1A8401C:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A84051:         Set var_150 = Me.LableDummy
  loc_1A84057:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A84068:         Me.LableDummy.Load var_154
  loc_1A8407B:       End If
  loc_1A840C6:       var_154 = var_88.Fields.Item("SNo")
  loc_1A840DB:       Set var_158 = Me.LableDummy
  loc_1A840E1:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A840E9:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A84138:       Set var_150 = Me.TextPer
  loc_1A8413E:       Call 0.Method_Proc_124_93_1A879608 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A84158:       If (var_154 > CVar(var_96)) Then
  loc_1A8418D:         Set var_150 = Me.TextPer
  loc_1A84193:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A841A4:         Me.TextPer.Load var_154
  loc_1A841B7:       End If
  loc_1A841EF:       Set var_150 = Me.TextPer
  loc_1A841F5:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A841FD:       var_154.TabIndex = (var_8A + 1)
  loc_1A84216:       var_8A = (var_8A + 1)
  loc_1A8425A:       var_154 = var_88.Fields.Item("SNo")
  loc_1A8429A:       Set var_158 = Me.TextPer
  loc_1A842A0:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A842A8:       var_15C.Visible = var_8A
  loc_1A84307:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A84366:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A8436F:         Set var_1A0 = Me.TextPer
  loc_1A84375:         Call 0.Method_Proc_124_93_1A879600 (CInt(True), var_1A4)
  loc_1A843B7:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A843C0:         Set var_150 = Me.TextPer
  loc_1A843C6:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A843EA:         Set var_1B0 = Me.TextPer
  loc_1A843F0:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1B4)
  loc_1A843F8:         var_1B4.Top = ((var_154.Top + var_1A4.Height) + CDbl(&HF))
  loc_1A84421:       End If
  loc_1A8445D:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A844BC:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A844C5:         Set var_150 = Me.TextPer
  loc_1A844CB:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A844E6:         Set var_1A0 = Me.TextPer
  loc_1A844EC:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A844F4:         var_1A4.Left = var_154.Left
  loc_1A84513:       End If
  loc_1A84570:       var_15C = var_88.Fields.Item("SNo")
  loc_1A845BD:       Set var_1A0 = Me.TextPer
  loc_1A845C3:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_15C.Value), var_1A4)
  loc_1A845CB:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A8463E:       var_154 = var_88.Fields.Item("SNo")
  loc_1A84653:       Set var_158 = Me.TextPer
  loc_1A84659:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A84661:       var_15C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A846B8:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A846EF:         Set var_150 = Me.TextPer
  loc_1A846F5:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A846FD:         var_154.FontBold = True
  loc_1A84713:       Else
  loc_1A84747:         Set var_150 = Me.TextPer
  loc_1A8474D:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84755:         var_154.FontBold = False
  loc_1A84768:       End If
  loc_1A847A1:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A847D8:         Set var_150 = Me.TextPer
  loc_1A847DE:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A847E6:         var_154.Enabled = False
  loc_1A847FC:       Else
  loc_1A84830:         Set var_150 = Me.TextPer
  loc_1A84836:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8483E:         var_154.Enabled = True
  loc_1A84851:       End If
  loc_1A84855:       Set var_90 = Me.TopCtrl1
  loc_1A8485B:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A84874:       If (CStr() = "Browse") Then
  loc_1A848AB:         Set var_150 = Me.TextPer
  loc_1A848B1:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A848B9:         var_154.Enabled = False
  loc_1A848CC:       End If
  loc_1A84908:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A8493F:         Set var_150 = Me.TextPer
  loc_1A84945:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8494D:         var_154.Enabled = False
  loc_1A84960:       End If
  loc_1A84991:       Set var_150 = Me.LableCap
  loc_1A84997:       Call 0.Method_Proc_124_93_1A879608 (var_96)
  loc_1A849B1:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A849E6:         Set var_150 = Me.LableCap
  loc_1A849EC:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A849FD:         Me.LableCap.Load var_154
  loc_1A84A10:       End If
  loc_1A84A44:       Set var_150 = Me.LableCap
  loc_1A84A4A:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84A52:       var_154.Visible = True
  loc_1A84AC1:       Set var_150 = Me.TextPer
  loc_1A84AC7:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84AE2:       Set var_1A0 = Me.LableCap
  loc_1A84AE8:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A84AF0:       var_1A4.Top = var_154.Top
  loc_1A84B4B:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A84B8F:         var_15C = var_88.Fields.Item("SNo")
  loc_1A84BAA:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A84BB3:         Set var_150 = Me.LableCap
  loc_1A84BB9:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84BD4:         Set var_1A0 = Me.LableCap
  loc_1A84BDA:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_15C.Value), var_1A4)
  loc_1A84BE2:         var_1A4.Left = var_154.Left
  loc_1A84C01:       End If
  loc_1A84C61:       Set var_158 = Me.LableCap
  loc_1A84C67:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A84C6F:       var_15C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A84CD8:       var_154 = var_88.Fields.Item("SNo")
  loc_1A84CED:       Set var_158 = Me.LableCap
  loc_1A84CF3:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A84CFB:       var_15C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A84D52:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A84D89:         Set var_150 = Me.LableCap
  loc_1A84D8F:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84D97:         var_154.FontBold = True
  loc_1A84DAD:       Else
  loc_1A84DE1:         Set var_150 = Me.LableCap
  loc_1A84DE7:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84DEF:         var_154.FontBold = False
  loc_1A84E02:       End If
  loc_1A84E33:       Set var_150 = Me.LableAt
  loc_1A84E39:       Call 0.Method_Proc_124_93_1A879608 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A84E53:       If (var_154 > CVar(var_96)) Then
  loc_1A84E88:         Set var_150 = Me.LableAt
  loc_1A84E8E:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A84E9F:         Me.LableAt.Load var_154
  loc_1A84EB2:       End If
  loc_1A84EF3:       var_154 = var_88.Fields.Item("SNo")
  loc_1A84F33:       Set var_158 = Me.LableAt
  loc_1A84F39:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A84F41:       var_15C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A84FA5:       var_15C = var_88.Fields.Item("SNo")
  loc_1A84FC0:       Set var_150 = Me.TextPer
  loc_1A84FC6:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A84FE1:       Set var_1A0 = Me.LableAt
  loc_1A84FE7:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_15C.Value), var_1A4)
  loc_1A84FEF:       var_1A4.Top = var_154.Top
  loc_1A85047:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8507E:         Set var_150 = Me.LableAt
  loc_1A85084:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8508C:         var_154.FontBold = True
  loc_1A850A2:       Else
  loc_1A850D6:         Set var_150 = Me.LableAt
  loc_1A850DC:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A850E4:         var_154.FontBold = False
  loc_1A850F7:       End If
  loc_1A85142:       var_154 = var_88.Fields.Item("SNo")
  loc_1A85157:       Set var_158 = Me.LableAt
  loc_1A8515D:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A85165:       var_15C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A851BF:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A8521E:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A85227:         Set var_150 = Me.LableAt
  loc_1A8522D:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("RoundOff").Value), var_154)
  loc_1A85248:         Set var_1A0 = Me.LableAt
  loc_1A8524E:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A85256:         var_1A4.Left = var_154.Left
  loc_1A85275:       End If
  loc_1A852A6:       Set var_150 = Me.TextGt
  loc_1A852AC:       Call 0.Method_Proc_124_93_1A879608 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A852C6:       If (var_154 > CVar(var_96)) Then
  loc_1A852FB:         Set var_150 = Me.TextGt
  loc_1A85301:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A85312:         Me.TextGt.Load var_154
  loc_1A85325:       End If
  loc_1A8535D:       Set var_150 = Me.TextGt
  loc_1A85363:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8536B:       var_154.TabIndex = (var_8A + 1)
  loc_1A85384:       var_8A = (var_8A + 1)
  loc_1A853BB:       Set var_150 = Me.TextGt
  loc_1A853C1:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154, &HFF)
  loc_1A853C9:       var_154.Visible = var_8A
  loc_1A85438:       Set var_150 = Me.TextPer
  loc_1A8543E:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85459:       Set var_1A0 = Me.TextGt
  loc_1A8545F:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A85467:       var_1A4.Top = var_154.Top
  loc_1A854C2:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A85521:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A8552A:         Set var_150 = Me.TextGt
  loc_1A85530:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8554B:         Set var_1A0 = Me.TextGt
  loc_1A85551:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A85559:         var_1A4.Left = var_154.Left
  loc_1A85578:       End If
  loc_1A855D5:       var_15C = var_88.Fields.Item("SNo")
  loc_1A85622:       Set var_1A0 = Me.TextGt
  loc_1A85628:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_15C.Value), var_1A4)
  loc_1A85630:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A856A0:       var_154 = var_88.Fields.Item("SNo")
  loc_1A856B5:       Set var_158 = Me.TextGt
  loc_1A856BB:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A856C3:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A85718:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8574F:         Set var_150 = Me.TextGt
  loc_1A85755:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8575D:         var_154.FontBold = True
  loc_1A85773:       Else
  loc_1A857A7:         Set var_150 = Me.TextGt
  loc_1A857AD:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A857B5:         var_154.FontBold = False
  loc_1A857C8:       End If
  loc_1A85801:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A85838:         Set var_150 = Me.TextGt
  loc_1A8583E:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85846:         var_154.Enabled = False
  loc_1A8585C:       Else
  loc_1A85890:         Set var_150 = Me.TextGt
  loc_1A85896:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8589E:         var_154.Enabled = True
  loc_1A858B1:       End If
  loc_1A858E6:       Set var_150 = Me.LableCap
  loc_1A858EC:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85912:       If (var_154.Tag = "SROFF") Then
  loc_1A85949:         Set var_150 = Me.TextGt
  loc_1A8594F:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85957:         var_154.Enabled = False
  loc_1A8596A:       End If
  loc_1A8596E:       Set var_90 = Me.TopCtrl1
  loc_1A85974:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A8598D:       If (CStr() = "Browse") Then
  loc_1A859C4:         Set var_150 = Me.TextGt
  loc_1A859CA:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A859D2:         var_154.Enabled = False
  loc_1A859E5:       End If
  loc_1A85A21:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A85A43:         var_94 = var_88.Fields.Item("SNo")
  loc_1A85A58:         Set var_150 = Me.TextGt
  loc_1A85A5E:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_94.Value), var_154)
  loc_1A85A66:         var_154.Enabled = False
  loc_1A85A79:       End If
  loc_1A85A79:     End If
  loc_1A85A7C:     var_88.MoveNext
  loc_1A85A81:     GoTo loc_1A83F7A
  loc_1A85A84:   End If
  loc_1A85A84: End If
  loc_1A85A8B: Set var_90 = Me.LblCap
  loc_1A85A91: Call 0.Method_Proc_124_93_1A879608 (var_96)
  loc_1A85AC1: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1A85AE3:   Set var_90 = Me.LblCap
  loc_1A85AE9:   Call 0.Method_Proc_124_93_1A879608 (var_96, var_8C)
  loc_1A85AF4:   For var_1B8 =  To var_96: CInt((var_88.RecordCount + 1)) = var_1B8 'Integer
  loc_1A85B04:     Set var_90 = Me.LblCap
  loc_1A85B0A:     Call 0.Method_Proc_124_93_1A879600 (var_8C)
  loc_1A85B1B:     Me.LblCap.Unload var_94
  loc_1A85B31:     Set var_90 = Me.LblDummy
  loc_1A85B37:     Call 0.Method_Proc_124_93_1A879600 (var_8C, var_94)
  loc_1A85B48:     Me.LblDummy.Unload var_94
  loc_1A85B5E:     Set var_90 = Me.LblAt
  loc_1A85B64:     Call 0.Method_Proc_124_93_1A879600 (var_8C, var_94)
  loc_1A85B75:     Me.LblAt.Unload var_94
  loc_1A85B8B:     Set var_90 = Me.TxtPer
  loc_1A85B91:     Call 0.Method_Proc_124_93_1A879600 (var_8C, var_94)
  loc_1A85BA2:     Me.TxtPer.Unload var_94
  loc_1A85BB8:     Set var_90 = Me.TxtGt
  loc_1A85BBE:     Call 0.Method_Proc_124_93_1A879600 (var_8C, var_94)
  loc_1A85BCF:     Me.TxtGt.Unload var_94
  loc_1A85BDE:   Next var_1B8 'Integer
  loc_1A85BE3: End If
  loc_1A85BE9: var_8A = (var_8A + 1)
  loc_1A85BFD: Me.FGrid.TabIndex = var_8A
  loc_1A85C0B: var_8A = (var_8A + 1)
  loc_1A85C1A: Set var_90 = Me.TxtGrid
  loc_1A85C20: Call 0.Method_Proc_124_93_1A879600 (0, var_94, var_8A)
  loc_1A85C28: var_94.TabIndex = var_8A
  loc_1A85C37: var_88.MoveFirst
  loc_1A85C50: If (var_88.RecordCount > 0) Then
  loc_1A85C53:   ' Referenced from: 1A877E6
  loc_1A85C59:   var_96 = var_88.EOF
  loc_1A85C62:   If Not(var_96) Then
  loc_1A85CA1:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1A85CD5:       Set var_150 = Me.LblDummy
  loc_1A85CDB:       Call 0.Method_Proc_124_93_1A879608 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A85CF5:       If (var_8A > CVar(var_96)) Then
  loc_1A85D2A:         Set var_150 = Me.LblDummy
  loc_1A85D30:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A85D41:         Me.LblDummy.Load var_154
  loc_1A85D54:       End If
  loc_1A85D9F:       var_154 = var_88.Fields.Item("SNo")
  loc_1A85DB4:       Set var_158 = Me.LblDummy
  loc_1A85DBA:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A85DC2:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A85E11:       Set var_150 = Me.TxtPer
  loc_1A85E17:       Call 0.Method_Proc_124_93_1A879608 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A85E31:       If (var_154 > CVar(var_96)) Then
  loc_1A85E66:         Set var_150 = Me.TxtPer
  loc_1A85E6C:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A85E7D:         Me.TxtPer.Load var_154
  loc_1A85E90:       End If
  loc_1A85EC8:       Set var_150 = Me.TxtPer
  loc_1A85ECE:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A85ED6:       var_154.TabIndex = (var_8A + 1)
  loc_1A85EEF:       var_8A = (var_8A + 1)
  loc_1A85F33:       var_154 = var_88.Fields.Item("SNo")
  loc_1A85F73:       Set var_158 = Me.TxtPer
  loc_1A85F79:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1A85F81:       var_15C.Visible = var_8A
  loc_1A85FE0:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A8603F:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A86048:         Set var_1A0 = Me.TxtPer
  loc_1A8604E:         Call 0.Method_Proc_124_93_1A879600 (CInt(True), var_1A4)
  loc_1A86090:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A86099:         Set var_150 = Me.TxtPer
  loc_1A8609F:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A860C3:         Set var_1B0 = Me.TxtPer
  loc_1A860C9:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1B4)
  loc_1A860D1:         var_1B4.Top = ((var_154.Top + var_1A4.Height) + CDbl(&HF))
  loc_1A860FA:       End If
  loc_1A86136:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A86195:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A8619E:         Set var_150 = Me.TxtPer
  loc_1A861A4:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("RevCode").Value), var_154)
  loc_1A861BF:         Set var_1A0 = Me.TxtPer
  loc_1A861C5:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A861CD:         var_1A4.Left = var_154.Left
  loc_1A861EC:       End If
  loc_1A86249:       var_15C = var_88.Fields.Item("SNo")
  loc_1A86296:       Set var_1A0 = Me.TxtPer
  loc_1A8629C:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_15C.Value), var_1A4)
  loc_1A862A4:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A86317:       var_154 = var_88.Fields.Item("SNo")
  loc_1A8632C:       Set var_158 = Me.TxtPer
  loc_1A86332:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A8633A:       var_15C.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1A86391:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A863C8:         Set var_150 = Me.TxtPer
  loc_1A863CE:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A863D6:         var_154.FontBold = True
  loc_1A863EC:       Else
  loc_1A86420:         Set var_150 = Me.TxtPer
  loc_1A86426:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8642E:         var_154.FontBold = False
  loc_1A86441:       End If
  loc_1A8647A:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A864B1:         Set var_150 = Me.TxtPer
  loc_1A864B7:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A864BF:         var_154.Enabled = False
  loc_1A864D5:       Else
  loc_1A86509:         Set var_150 = Me.TxtPer
  loc_1A8650F:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86517:         var_154.Enabled = True
  loc_1A8652A:       End If
  loc_1A8652E:       Set var_90 = Me.TopCtrl1
  loc_1A86534:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A8654D:       If (CStr() = "Browse") Then
  loc_1A86584:         Set var_150 = Me.TxtPer
  loc_1A8658A:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86592:         var_154.Enabled = False
  loc_1A865A5:       End If
  loc_1A865E1:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A86618:         Set var_150 = Me.TxtPer
  loc_1A8661E:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86626:         var_154.Enabled = False
  loc_1A86639:       End If
  loc_1A8666A:       Set var_150 = Me.LblCap
  loc_1A86670:       Call 0.Method_Proc_124_93_1A879608 (var_96)
  loc_1A8668A:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1A866BF:         Set var_150 = Me.LblCap
  loc_1A866C5:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A866D6:         Me.LblCap.Load var_154
  loc_1A866E9:       End If
  loc_1A8671D:       Set var_150 = Me.LblCap
  loc_1A86723:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8672B:       var_154.Visible = True
  loc_1A8679A:       Set var_150 = Me.TxtPer
  loc_1A867A0:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A867BB:       Set var_1A0 = Me.LblCap
  loc_1A867C1:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A867C9:       var_1A4.Top = var_154.Top
  loc_1A86824:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A86868:         var_15C = var_88.Fields.Item("SNo")
  loc_1A86883:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A8688C:         Set var_150 = Me.LblCap
  loc_1A86892:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A868AD:         Set var_1A0 = Me.LblCap
  loc_1A868B3:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_15C.Value), var_1A4)
  loc_1A868BB:         var_1A4.Left = var_154.Left
  loc_1A868DA:       End If
  loc_1A8693A:       Set var_158 = Me.LblCap
  loc_1A86940:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A86948:       var_15C.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A869C6:       Set var_158 = Me.LblCap
  loc_1A869CC:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_15C)
  loc_1A869D4:       var_15C.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1A86A3D:       var_154 = var_88.Fields.Item("SNo")
  loc_1A86A52:       Set var_158 = Me.LblDummy
  loc_1A86A58:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A86A60:       var_15C.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1A86AB7:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A86AEE:         Set var_150 = Me.LblCap
  loc_1A86AF4:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86AFC:         var_154.FontBold = True
  loc_1A86B12:       Else
  loc_1A86B46:         Set var_150 = Me.LblCap
  loc_1A86B4C:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86B54:         var_154.FontBold = False
  loc_1A86B67:       End If
  loc_1A86B98:       Set var_150 = Me.LblAt
  loc_1A86B9E:       Call 0.Method_Proc_124_93_1A879608 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A86BB8:       If (var_154 > CVar(var_96)) Then
  loc_1A86BED:         Set var_150 = Me.LblAt
  loc_1A86BF3:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A86C04:         Me.LblAt.Load var_154
  loc_1A86C17:       End If
  loc_1A86C58:       var_154 = var_88.Fields.Item("SNo")
  loc_1A86C98:       Set var_158 = Me.LblAt
  loc_1A86C9E:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A86CA6:       var_15C.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1A86D0A:       var_15C = var_88.Fields.Item("SNo")
  loc_1A86D25:       Set var_150 = Me.TxtPer
  loc_1A86D2B:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86D46:       Set var_1A0 = Me.LblAt
  loc_1A86D4C:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_15C.Value), var_1A4)
  loc_1A86D54:       var_1A4.Top = var_154.Top
  loc_1A86DAC:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A86DE3:         Set var_150 = Me.LblAt
  loc_1A86DE9:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86DF1:         var_154.FontBold = True
  loc_1A86E07:       Else
  loc_1A86E3B:         Set var_150 = Me.LblAt
  loc_1A86E41:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A86E49:         var_154.FontBold = False
  loc_1A86E5C:       End If
  loc_1A86EA7:       var_154 = var_88.Fields.Item("SNo")
  loc_1A86EBC:       Set var_158 = Me.LblAt
  loc_1A86EC2:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A86ECA:       var_15C.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_1A86F24:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A86F83:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A86F8C:         Set var_150 = Me.LblAt
  loc_1A86F92:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("RoundOff").Value), var_154)
  loc_1A86FAD:         Set var_1A0 = Me.LblAt
  loc_1A86FB3:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A86FBB:         var_1A4.Left = var_154.Left
  loc_1A86FDA:       End If
  loc_1A8700B:       Set var_150 = Me.TxtGt
  loc_1A87011:       Call 0.Method_Proc_124_93_1A879608 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1A8702B:       If (var_154 > CVar(var_96)) Then
  loc_1A87060:         Set var_150 = Me.TxtGt
  loc_1A87066:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1A87077:         Me.TxtGt.Load var_154
  loc_1A8708A:       End If
  loc_1A870C2:       Set var_150 = Me.TxtGt
  loc_1A870C8:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A870D0:       var_154.TabIndex = (var_8A + 1)
  loc_1A870E9:       var_8A = (var_8A + 1)
  loc_1A87120:       Set var_150 = Me.TxtGt
  loc_1A87126:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154, &HFF)
  loc_1A8712E:       var_154.Visible = var_8A
  loc_1A8719D:       Set var_150 = Me.TxtPer
  loc_1A871A3:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A871BE:       Set var_1A0 = Me.TxtGt
  loc_1A871C4:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A871CC:       var_1A4.Top = var_154.Top
  loc_1A87227:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1A87286:         var_EC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1A8728F:         Set var_150 = Me.TxtGt
  loc_1A87295:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A872B0:         Set var_1A0 = Me.TxtGt
  loc_1A872B6:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_1A872BE:         var_1A4.Left = var_154.Left
  loc_1A872DD:       End If
  loc_1A8733A:       var_15C = var_88.Fields.Item("SNo")
  loc_1A87387:       Set var_1A0 = Me.TxtGt
  loc_1A8738D:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_15C.Value), var_1A4)
  loc_1A87395:       var_1A4.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1A87405:       var_154 = var_88.Fields.Item("SNo")
  loc_1A8741A:       Set var_158 = Me.TxtGt
  loc_1A87420:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_154.Value), var_15C)
  loc_1A87428:       var_15C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1A8747D:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A874B4:         Set var_150 = Me.TxtGt
  loc_1A874BA:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A874C2:         var_154.FontBold = True
  loc_1A874D8:       Else
  loc_1A8750C:         Set var_150 = Me.TxtGt
  loc_1A87512:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A8751A:         var_154.FontBold = False
  loc_1A8752D:       End If
  loc_1A87566:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1A8759D:         Set var_150 = Me.TxtGt
  loc_1A875A3:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A875AB:         var_154.Enabled = False
  loc_1A875C1:       Else
  loc_1A875F5:         Set var_150 = Me.TxtGt
  loc_1A875FB:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87603:         var_154.Enabled = True
  loc_1A87616:       End If
  loc_1A8764B:       Set var_150 = Me.LblCap
  loc_1A87651:       Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87677:       If (var_154.Tag = "SROFF") Then
  loc_1A876AE:         Set var_150 = Me.TxtGt
  loc_1A876B4:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A876BC:         var_154.Enabled = False
  loc_1A876CF:       End If
  loc_1A876D3:       Set var_90 = Me.TopCtrl1
  loc_1A876D9:       Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_154)
  loc_1A876F2:       If (CStr() = "Browse") Then
  loc_1A87729:         Set var_150 = Me.TxtGt
  loc_1A8772F:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_88.Fields.Item("SNo").Value), var_154)
  loc_1A87737:         var_154.Enabled = False
  loc_1A8774A:       End If
  loc_1A87786:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1A877A8:         var_94 = var_88.Fields.Item("SNo")
  loc_1A877BD:         Set var_150 = Me.TxtGt
  loc_1A877C3:         Call 0.Method_Proc_124_93_1A879600 (CInt(var_94.Value), var_154)
  loc_1A877CB:         var_154.Enabled = False
  loc_1A877DE:       End If
  loc_1A877DE:     End If
  loc_1A877E1:     var_88.MoveNext
  loc_1A877E6:     GoTo loc_1A85C53
  loc_1A877E9:   End If
  loc_1A877E9: End If
  loc_1A877FA: Set var_90 = Me.Txt
  loc_1A87800: Call 0.Method_Proc_124_93_1A879600 (CInt(&HF), var_94)
  loc_1A87808: var_94.TabIndex = (var_8A + 1)
  loc_1A87825: Set var_90 = Me.Txt
  loc_1A8782B: Call 0.Method_Proc_124_93_1A879600 (CInt(&HE), var_94)
  loc_1A87833: var_94.TabIndex = (var_8A + 2)
  loc_1A87850: Set var_90 = Me.Txt
  loc_1A87856: Call 0.Method_Proc_124_93_1A879600 (CInt(&HD), var_94)
  loc_1A8785E: var_94.TabIndex = (var_8A + 3)
  loc_1A87870: var_CC = CVar((var_8A + 3)) 'Integer
  loc_1A87878: Set var_90 = Me.Command1
  loc_1A8787E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000F("SNo")
  loc_1A87897: Set var_90 = Me.Txt
  loc_1A8789D: Call 0.Method_Proc_124_93_1A879600 (CInt(8), var_94)
  loc_1A878A5: var_94.TabIndex = (var_8A + 4)
  loc_1A878C2: Set var_90 = Me.Txt
  loc_1A878C8: Call 0.Method_Proc_124_93_1A879600 (CInt(9), var_94)
  loc_1A878D0: var_94.TabIndex = (var_8A + 5)
  loc_1A878ED: Set var_90 = Me.Txt
  loc_1A878F3: Call 0.Method_Proc_124_93_1A879600 (CInt(&HA), var_94)
  loc_1A878FB: var_94.TabIndex = (var_8A + 6)
  loc_1A87918: Set var_90 = Me.Txt
  loc_1A8791E: Call 0.Method_Proc_124_93_1A879600 (CInt(&HB), var_94)
  loc_1A87926: var_94.TabIndex = (var_8A + 7)
  loc_1A87943: Set var_90 = Me.Txt
  loc_1A87949: Call 0.Method_Proc_124_93_1A879600 (CInt(&HC), var_94)
  loc_1A87951: var_94.TabIndex = (var_8A + 8)
  loc_1A8795D: Exit Sub
End Sub

Public Sub Proc_124_94_1746D30(arg_C) '1746D30
  'Data Table: 59EE40
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_154 As Variant
  Dim var_B4 As String
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_11C As String
  Dim unk_59EE5F As Connection15
  Dim var_140 As Variant
  Dim var_144 As Variant
  Dim var_168 As Variant
  Dim var_1A8 As Variant
  Dim var_A4 As Variant
  Dim var_F8 As String
  Dim var_2A8 As Double
  Dim var_1E0 As Variant
  Dim var_D4 As Variant
  Dim var_2B0 As Double
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_2B8 As Double
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_158 As Variant
  Dim var_240 As Variant
  Dim var_13C As Variant
  Dim var_90 As Double
  Dim var_304 As Double
  Dim var_30C As Double
  Dim var_9C As Recordset15
  Dim var_330 As TextBox
  Dim var_338 As TextBox
  Dim var_340 As TextBox
  loc_1745040: Set var_A4 = Me.TxtGt
  loc_1745046: Call 0.Method_Proc_124_94_1746D308 (var_A6, var_86)
  loc_1745051: For var_AA =  To var_A6: 1 = var_AA 'Integer
  loc_1745064:   Set var_A4 = Me.TxtGt
  loc_174506A:   Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_1745072:   var_B0.Text = vbNullString
  loc_174508B:   Set var_A4 = Me.LblCap
  loc_1745091:   Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_17450CC:   If (Trim(CVar(var_B0.Tag)) = CVar(MemVar_1F92070 & "DIS")) Then
  loc_17450D4:     var_92 = CByte(var_86) 'Byte
  loc_17450D8:   End If
  loc_17450E5:   Set var_A4 = Me.LblCap
  loc_17450EB:   Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_1745126:   If (Trim(CVar(var_B0.Tag)) = CVar(MemVar_1F92070 & "SCH")) Then
  loc_174512E:     var_94 = CByte(var_86) 'Byte
  loc_1745132:   End If
  loc_1745169:   Set var_A4 = Me.LableCap
  loc_174516F:   Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_F8, CVar("Select Count(*) from SundryMast where Logsite_code='" & MemVar_1F92078 & "' and Code='"), var_13C)
  loc_1745177:   -1 = var_B0.Tag
  loc_17451A4:   unk_59EE5F.Execute CStr(var_140 & Trim(CVar(var_F8)) & "' And Nature In ('Sale Tax','CGST','SGST','IGST')"), var_144, 0
  loc_17451AC:   var_158 = var_140.Fields
  loc_17451B4:    = var_144.Item()
  loc_174520F:   If CBool((Trim(CVar(var_158)) > 0) And (CInt(var_96) = 0)) Then
  loc_1745217:     var_96 = CByte(var_86) 'Byte
  loc_1745221:     global_136 = var_86
  loc_1745224:   End If
  loc_1745227: Next var_AA 'Integer
  loc_174523F: Me.FGCat.Rows = 1
  loc_174524B: Set var_A4 = Me.TopCtrl1
  loc_1745251: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_174526A: If (CStr() = "Add") Then
  loc_174526D:   Call Proc_124_99_DFF3D8()
  loc_1745272: End If
  loc_174527E: Set var_A4 = Me.TxtGt
  loc_1745284: Call 0.Method_Proc_124_94_1746D308 (var_A6, var_86)
  loc_174528F: For var_1BC =  To var_A6: 2 = var_1BC 'Integer
  loc_17452A2:   Set var_A4 = Me.LblCap
  loc_17452A8:   Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_17452D2:   If (var_B0.Tag = MemVar_1F92070 & "DIS") Then
  loc_17452E2:     Set var_A4 = Me.TxtGt
  loc_17452E8:     Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_17452F0:     var_B0.Text = vbNullString
  loc_1745306:     If (var_96 > var_92) Then
  loc_174532E:       For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1C0 'Integer
  loc_1745341:         Set var_A4 = Me.LblCap
  loc_1745347:         Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_1745371:         If (var_B0.Tag = MemVar_1F92070 & "DIS") Then
  loc_1745378:           var_108 = CVar(CLng(var_88)) 'Long
  loc_1745380:           var_154 = CVar(CLng(&HD)) 'Long
  loc_174539A:           var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_17453AB:           If (var_B4 = "Y") Then
  loc_17453B2:             var_108 = CVar(CLng(var_88)) 'Long
  loc_17453CC:             Set var_A4 = Me.TxtPer
  loc_17453D2:             Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4, CVar(CLng(&HB)))
  loc_17453DA:             var_108 = var_B0.Text
  loc_17453E9:             var_C4 = CVar(CStr(Val(var_B4))) 'String
  loc_17453F1:             Set var_140 = Me.FGrid
  loc_17453F7:             LateIdCallSt
  loc_174540E:           End If
  loc_174540E:         End If
  loc_1745412:         var_108 = CVar(CLng(var_88)) 'Long
  loc_174541A:         var_154 = CVar(CLng(3)) 'Long
  loc_1745443:         var_1A8 = CVar(CLng(var_88)) 'Long
  loc_174544B:         var_1E0 = CVar(CLng(4)) 'Long
  loc_1745474:         var_200 = CVar(CLng(var_88)) 'Long
  loc_174547C:         var_220 = CVar(CLng(&HB)) 'Long
  loc_17454A5:         var_260 = CVar(CLng(var_88)) 'Long
  loc_17454AD:         var_280 = CVar(CLng(&HC)) 'Long
  loc_17454D6:         var_F4 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_17454E6:         var_168 = CVar(CStr(Format(var_F4, "0.00"))) 'String
  loc_17454EE:         Set var_144 = Me.FGrid
  loc_17454F4:         LateIdCallSt
  loc_1745525:         var_1A8 = CVar(CLng(var_88)) 'Long
  loc_174552D:         var_1E0 = CVar(CLng(3)) 'Long
  loc_1745556:         var_200 = CVar(CLng(var_88)) 'Long
  loc_174555E:         var_220 = CVar(CLng(5)) 'Long
  loc_1745567:         var_108 = CVar(CLng(var_88)) 'Long
  loc_174556F:         var_154 = CVar(CLng(4)) 'Long
  loc_174559F:         Set var_140 = Me.FGrid
  loc_17455A5:         LateIdCallSt
  loc_17455D2:         var_154 = CVar(CLng(5)) 'Long
  loc_1745603:         Set var_B0 = Me.LblDummy
  loc_1745609:         Call 0.Method_Proc_124_94_1746D300 (var_86, var_140, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_154, CVar(CLng(var_88)), var_140, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_1745611:         var_140.Caption = var_154
  loc_174562D:         var_108 = CVar(CLng(var_88)) 'Long
  loc_1745635:         var_154 = CVar(CLng(5)) 'Long
  loc_174564F:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_174565E:         var_1A8 = CVar(CLng(var_88)) 'Long
  loc_1745666:         var_1E0 = CVar(CLng(&HC)) 'Long
  loc_174566F:         Set var_B0 = Me.FGrid
  loc_174568F:         var_200 = CVar(CLng(var_88)) 'Long
  loc_1745697:         var_220 = CVar(CLng(7)) 'Long
  loc_17456B9:         var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17456C8:         var_280 = CVar(CLng(8)) 'Long
  loc_17456ED:         var_F4 = CVar(((Val(var_B4) - Val(CStr(var_B0.TextMatrix)))) + var_2B8)) 'Double
  loc_174570B:         LateIdCallSt
  loc_1745745:         Set var_A4 = Me.LblCap
  loc_174574B:         Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(var_F4, "0.00"))), 1, 1)
  loc_1745753:         var_280 = var_B0.Tag
  loc_1745775:         If (var_B4 = MemVar_1F92070 & "DIS") Then
  loc_1745785:           Set var_A4 = Me.TxtGt
  loc_174578B:           Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4, CVar(CLng(var_88)), var_2B8)
  loc_1745793:           var_220 = var_B0.Text
  loc_17457A7:           var_108 = CVar(CLng(var_88)) 'Long
  loc_17457D1:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17457F0:           var_D4 = CVar((Val(var_B4) + var_2B0)) 'Double
  loc_174580D:           Set var_144 = Me.TxtGt
  loc_1745813:           Call 0.Method_Proc_124_94_1746D300 (var_86, var_158, CStr(Format(var_B0.TextMatrix), "0.00")), 1, 1, var_2B0)
  loc_174581B:           var_158.Text = CVar(CLng(&HC))
  loc_1745841:         End If
  loc_1745844:       Next var_1C0 'Integer
  loc_174584C:     Else
  loc_1745871:       For var_2BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_2BC 'Integer
  loc_1745884:         Set var_A4 = Me.LblCap
  loc_174588A:         Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_17458B4:         If (var_B0.Tag = MemVar_1F92070 & "DIS") Then
  loc_17458BB:           var_108 = CVar(CLng(var_88)) 'Long
  loc_17458C3:           var_154 = CVar(CLng(&HD)) 'Long
  loc_17458DD:           var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_17458EE:           If (var_B4 = "Y") Then
  loc_17458F5:             var_108 = CVar(CLng(var_88)) 'Long
  loc_174590F:             Set var_A4 = Me.TxtPer
  loc_1745915:             Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4, CVar(CLng(&HB)))
  loc_174591D:             var_108 = var_B0.Text
  loc_174592C:             var_C4 = CVar(CStr(Val(var_B4))) 'String
  loc_1745934:             Set var_140 = Me.FGrid
  loc_174593A:             LateIdCallSt
  loc_1745951:           End If
  loc_1745951:         End If
  loc_174598E:         Set var_B0 = Me.LblDummy
  loc_1745994:         Call 0.Method_Proc_124_94_1746D300 (var_86, var_140, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(5)), CVar(CLng(var_88)))
  loc_174599C:         var_140.Caption = var_140
  loc_17459B8:         var_108 = CVar(CLng(var_88)) 'Long
  loc_17459C0:         var_154 = CVar(CLng(5)) 'Long
  loc_17459DA:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_17459E9:         var_1A8 = CVar(CLng(var_88)) 'Long
  loc_17459F1:         var_1E0 = CVar(CLng(&HB)) 'Long
  loc_17459FA:         Set var_B0 = Me.FGrid
  loc_1745A13:         var_2B0 = Val(CStr(var_B0.TextMatrix)))
  loc_1745A22:         var_240 = CVar(CLng(&HC)) 'Long
  loc_1745A65:         LateIdCallSt
  loc_1745A99:         Set var_A4 = Me.LblCap
  loc_1745A9F:         Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(CVar(((Val(var_B4) * var_2B0) / CDbl(&H64))), "0.00"))), 1, 1)
  loc_1745AA7:         var_240 = var_B0.Tag
  loc_1745AC9:         If (var_B4 = MemVar_1F92070 & "DIS") Then
  loc_1745AD9:           Set var_A4 = Me.TxtGt
  loc_1745ADF:           Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4, CVar(CLng(var_88)), var_2B0)
  loc_1745AE7:           var_1E0 = var_B0.Text
  loc_1745AF4:           var_2A8 = Val(var_B4)
  loc_1745AFB:           var_108 = CVar(CLng(var_88)) 'Long
  loc_1745B25:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1745B44:           var_D4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_1745B61:           Set var_144 = Me.TxtGt
  loc_1745B67:           Call 0.Method_Proc_124_94_1746D300 (var_86, var_158, CStr(Format(var_B0.TextMatrix), "0.00")), 1, 1, var_2B0)
  loc_1745B6F:           var_158.Text = CVar(CLng(&HC))
  loc_1745B95:         End If
  loc_1745B98:       Next var_2BC 'Integer
  loc_1745B9D:     End If
  loc_1745BA0:   Else
  loc_1745BAD:     Set var_A4 = Me.TxtPer
  loc_1745BB3:     Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_1745BBB:     var_A6 = var_B0.Enabled
  loc_1745BCD:     If (var_A6 = &HFF) Then
  loc_1745BD6:       Call Proc_124_96_1321A0C(var_86)
  loc_1745BDE:       var_90 = var_2A8
  loc_1745BEE:       Set var_A4 = Me.TxtPer
  loc_1745BF4:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4)
  loc_1745BFC:       var_90 = var_B0.Text
  loc_1745C09:       var_2A8 = Val(var_B4)
  loc_1745C49:       Set var_140 = Me.TxtGt
  loc_1745C4F:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_144, CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00")), 1)
  loc_1745C57:       var_144.Text = 1
  loc_1745C89:       Set var_A4 = Me.LblDummy
  loc_1745C8F:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, CStr(var_90))
  loc_1745C97:       var_B0.Caption = var_2A8
  loc_1745CA6:     End If
  loc_1745CA6:   End If
  loc_1745CA9: Next var_1BC 'Integer
  loc_1745CD3: For var_2C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C0 'Integer
  loc_1745CDD:   var_108 = CVar(CLng(var_86)) 'Long
  loc_1745CE5:   var_154 = CVar(CLng(3)) 'Long
  loc_1745CFF:   var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1745D0E:   var_1A8 = CVar(CLng(var_86)) 'Long
  loc_1745D16:   var_1E0 = CVar(CLng(4)) 'Long
  loc_1745D1F:   Set var_B0 = Me.FGrid
  loc_1745D3F:   var_220 = CVar(CLng(var_86)) 'Long
  loc_1745D47:   var_240 = CVar(CLng(5)) 'Long
  loc_1745D86:   LateIdCallSt
  loc_1745DB9:   Set var_A4 = Me.TxtGt
  loc_1745DBF:   Call 0.Method_Proc_124_94_1746D300 (1, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(CVar((Val(var_B4) * Val(CStr(var_B0.TextMatrix))))), "0.00"))), 1, 1)
  loc_1745DC7:   var_240 = var_B0.Text
  loc_1745DD4:   var_2A8 = Val(var_B4)
  loc_1745E05:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1745E24:   var_D4 = CVar((var_2A8 + var_2B0)) 'Double
  loc_1745E40:   Set var_144 = Me.TxtGt
  loc_1745E46:   Call 0.Method_Proc_124_94_1746D300 (1, var_158, CStr(Format(var_B0.TextMatrix), "0.00")), 1, 1, var_2B0, CVar(CLng(5)))
  loc_1745E4E:   var_158.Text = CVar(CLng(var_86))
  loc_1745E77: Next var_2C0 'Integer
  loc_1745E8F: Me.FGCat.Rows = 1
  loc_1745EBC: For var_2C4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C4 'Integer
  loc_1745ECC:   If (var_96 > var_92) Then
  loc_1745EE3:     If ((var_94 < var_96) And (CInt(var_94) <> 0)) Then
  loc_1745EEA:       var_108 = CVar(CLng(var_86)) 'Long
  loc_1745EF2:       var_154 = CVar(CLng(&H10)) 'Long
  loc_1745F11:       var_1A8 = CVar(CLng(var_86)) 'Long
  loc_1745F19:       var_1E0 = CVar(CLng(4)) 'Long
  loc_1745F42:       var_200 = CVar(CLng(var_86)) 'Long
  loc_1745F4A:       var_220 = CVar(CLng(3)) 'Long
  loc_1745F73:       var_240 = CVar(CLng(var_86)) 'Long
  loc_1745F7B:       var_260 = CVar(CLng(&HC)) 'Long
  loc_1745FC0:       var_118 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1745FE1:       Set var_158 = Me.FGrid
  loc_1746017:       Call Proc_124_100_17FBFE4(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), Val(CStr(var_158.TextMatrix))), Val(CStr(var_158.TextMatrix))), CVar(CLng(&H16)), CVar(CLng(var_86)), 1)
  loc_174604C:     Else
  loc_1746050:       var_108 = CVar(CLng(var_86)) 'Long
  loc_1746058:       var_154 = CVar(CLng(&H10)) 'Long
  loc_1746077:       var_1A8 = CVar(CLng(var_86)) 'Long
  loc_174607F:       var_1E0 = CVar(CLng(4)) 'Long
  loc_17460A8:       var_200 = CVar(CLng(var_86)) 'Long
  loc_17460B0:       var_220 = CVar(CLng(3)) 'Long
  loc_17460D9:       var_240 = CVar(CLng(var_86)) 'Long
  loc_1746103:       var_30C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1746126:       var_118 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_30C)) 'Double
  loc_1746152:       Call Proc_124_100_17FBFE4(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"), "0.00")), 0, 1, 1, var_30C, CVar(CLng(&HC)))
  loc_174617E:     End If
  loc_1746181:   Else
  loc_1746195:     If ((var_94 < var_96) And (CInt(var_94) <> 0)) Then
  loc_174619C:       var_108 = CVar(CLng(var_86)) 'Long
  loc_17461A4:       var_154 = CVar(CLng(&H10)) 'Long
  loc_17461C3:       var_1A8 = CVar(CLng(var_86)) 'Long
  loc_17461CB:       var_1E0 = CVar(CLng(4)) 'Long
  loc_17461F4:       var_200 = CVar(CLng(var_86)) 'Long
  loc_17461FC:       var_220 = CVar(CLng(3)) 'Long
  loc_174625E:       Set var_144 = Me.FGrid
  loc_1746294:       Call Proc_124_100_17FBFE4(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00")), Val(CStr(var_144.TextMatrix))), Val(CStr(var_144.TextMatrix))), CVar(CLng(&H16)), CVar(CLng(var_86)), 1)
  loc_17462C3:     Else
  loc_17462C7:       var_108 = CVar(CLng(var_86)) 'Long
  loc_17462CF:       var_154 = CVar(CLng(&H10)) 'Long
  loc_17462EE:       var_1A8 = CVar(CLng(var_86)) 'Long
  loc_17462F6:       var_1E0 = CVar(CLng(4)) 'Long
  loc_174631F:       var_200 = CVar(CLng(var_86)) 'Long
  loc_1746349:       var_304 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1746394:       Call Proc_124_100_17FBFE4(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_304)), "0.00")), 0, 1, 1, var_304, CVar(CLng(3)))
  loc_17463BA:     End If
  loc_17463BA:   End If
  loc_17463BD: Next var_2C4 'Integer
  loc_17463C6: Set var_A4 = Me.TopCtrl1
  loc_17463CC: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17463E0: Set var_B0 = Me.TopCtrl1
  loc_17463E6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_174640C: If ( Or (CStr() = "Edit")) Then
  loc_174641B:   Set var_A4 = Me.TxtGt
  loc_1746421:   Call 0.Method_Proc_124_94_1746D308 (var_A6, var_86)
  loc_174642C:   For var_318 =  To var_A6: 2 = var_318 'Integer
  loc_174643F:     Set var_A4 = Me.TxtPer
  loc_1746445:     Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_174644D:     var_A6 = var_B0.Visible
  loc_1746465:     Set var_140 = Me.LblCap
  loc_174646B:     Call 0.Method_Proc_124_94_1746D300 (var_86, var_144)
  loc_1746473:     var_B4 = var_144.Tag
  loc_174649A:     If ((var_A6 = &HFF) And (var_B4 = MemVar_1F92070 & "SCH")) Then
  loc_17464A3:       Call Proc_124_96_1321A0C(var_86)
  loc_17464AB:       var_90 = var_2A8
  loc_17464BB:       Set var_A4 = Me.TxtPer
  loc_17464C1:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4)
  loc_17464C9:       var_90 = var_B0.Text
  loc_17464D6:       var_2A8 = Val(var_B4)
  loc_1746516:       Set var_140 = Me.TxtGt
  loc_174651C:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_144, CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00")), 1)
  loc_1746524:       var_144.Text = 1
  loc_1746549:       var_B4 = CStr(var_90)
  loc_1746556:       Set var_A4 = Me.LblDummy
  loc_174655C:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4)
  loc_1746564:       var_B0.Caption = var_2A8
  loc_1746573:     End If
  loc_1746576:   Next var_318 'Integer
  loc_174657B: End If
  loc_174659A: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_17465B0:   Me.FGCat.FixedRows = 1
  loc_17465B8: End If
  loc_17465CD: Set var_A4 = Me.TxtGt
  loc_17465D3: Call 0.Method_Proc_124_94_1746D308 (var_A6, var_86)
  loc_17465DE: For var_31C = CDbl(0) To var_A6: 1 = var_31C 'Integer
  loc_1746609:   For var_320 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_320 'Integer
  loc_174661C:     Set var_A4 = Me.LblCap
  loc_1746622:     Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4)
  loc_174662A:     0 = var_B0.Tag
  loc_1746638:     var_D4 = Trim(CVar(var_B4))
  loc_1746644:     var_108 = CVar(CLng(var_88)) 'Long
  loc_174668C:     If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_1746693:       var_108 = CVar(CLng(var_88)) 'Long
  loc_17466BD:       var_2A8 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17466CD:       Set var_A4 = Me.TxtGt
  loc_17466D3:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4, var_2A8, CVar(CLng(6)))
  loc_17466EE:       var_11C = CStr((Val(var_B4) + var_2A8))
  loc_17466FB:       Set var_144 = Me.TxtGt
  loc_1746701:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_158, CStr(var_144.TextMatrix)))
  loc_1746709:       var_158.Text = var_B0.Text
  loc_1746727:     End If
  loc_174672A:   Next var_320 'Integer
  loc_174673C:   Set var_A4 = Me.TxtGt
  loc_1746742:   Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_1746757:   var_2A8 = Val(var_B0.Text)
  loc_1746772:   var_C4 = CVar(var_2A8) 'Double
  loc_174678F:   Set var_140 = Me.TxtGt
  loc_1746795:   Call 0.Method_Proc_124_94_1746D300 (var_86, var_144, CStr(Format(var_C4, "0.00")))
  loc_174679D:   var_144.Text = 1
  loc_17467C0: Next var_31C 'Integer
  loc_17467D1: Set var_A4 = Me.TxtGt
  loc_17467D7: Call 0.Method_Proc_124_94_1746D308 (var_A6, var_86)
  loc_17467E2: For var_324 =  To var_A6: 2 = var_324 'Integer
  loc_17467F5:   Set var_A4 = Me.LblCap
  loc_17467FB:   Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0)
  loc_1746825:   If (var_B0.Tag = MemVar_1F92070 & "ROFF") Then
  loc_174682E:     Call Proc_124_96_1321A0C(var_86)
  loc_1746836:     var_90 = var_2A8
  loc_1746851:     Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, CStr(var_90))
  loc_1746859:     var_B0.Caption = var_90
  loc_174688C:     unk_59EE5F.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Banquet Bill' And LogSite_Code='" & MemVar_1F92078 & "'", var_C4, -1
  loc_1746897:     Set var_9C = Me.LblDummy
  loc_17468BB:     If (var_9C.RecordCount > 0) Then
  loc_17468D5:       var_B0 = var_9C.Fields.Item("RoundOffType")
  loc_1746907:       Proc_6_142_14A55B0(var_90, CByte(0), CStr(Left(CVar(var_B0), 1)))
  loc_1746944:       Set var_140 = Me.TxtGt
  loc_174694A:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_144, CStr(Format(CVar(2), "0.00")), 1)
  loc_1746952:       var_144.Text = 1
  loc_1746977:     Else
  loc_1746980:       var_B4 = "U"
  loc_1746991:       Proc_6_142_14A55B0(var_90, CByte(0), var_B4, 2)
  loc_17469C0:       var_F8 = CStr(Format(CVar(var_2A8), "0.00"))
  loc_17469CE:       Set var_A4 = Me.TxtGt
  loc_17469D4:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_F8, 1)
  loc_17469DC:       var_B0.Text = 1
  loc_17469F8:     End If
  loc_17469FD:     Set var_9C = Nothing
  loc_1746A03:   Else
  loc_1746A0A:     If (var_86 <> arg_C) Then
  loc_1746A20:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, var_B4)
  loc_1746A28:       var_2A8 = var_B0.Tag
  loc_1746A5A:       Set var_140 = Me.LblCap
  loc_1746A60:       Call 0.Method_Proc_124_94_1746D300 (var_86, var_144, var_F8)
  loc_1746A68:       (Trim(CVar(var_B4)) = CVar(MemVar_1F92070 & "TOT")) = var_144.Tag
  loc_1746AAD:       If CBool(Me.LblCap Or (Trim(CVar(var_F8)) = CVar(MemVar_1F92070 & "NET"))) Then
  loc_1746AB6:         Call Proc_124_96_1321A0C(var_86, var_2A8)
  loc_1746AF0:         Set var_A4 = Me.TxtGt
  loc_1746AF6:         Call 0.Method_Proc_124_94_1746D300 (var_86, var_B0, CStr(Format(CVar(var_2A8), "0.00")))
  loc_1746AFE:         var_B0.Text = 1
  loc_1746B16:       End If
  loc_1746B16:     End If
  loc_1746B16:   End If
  loc_1746B19: Next var_324 'Integer
  loc_1746B25: Set var_A4 = Me.TxtGt
  loc_1746B2B: Call 0.Method_Proc_124_94_1746D308 (var_A6)
  loc_1746B3D: Set var_B0 = Me.TxtGt
  loc_1746B43: Call 0.Method_Proc_124_94_1746D300 (var_A6, var_140)
  loc_1746B62: Set var_144 = Me.TextGt
  loc_1746B68: Call 0.Method_Proc_124_94_1746D308 (var_32A)
  loc_1746B7A: Set var_158 = Me.TextGt
  loc_1746B80: Call 0.Method_Proc_124_94_1746D300 (var_32A, var_330)
  loc_1746B95: var_2B0 = Val(var_330.Text)
  loc_1746BA6: Set var_334 = Me.Txt
  loc_1746BAC: Call 0.Method_Proc_124_94_1746D300 (CInt(8), var_338, CStr(var_144.TextMatrix)))
  loc_1746BC1: var_2B8 = Val(CStr(var_144.TextMatrix)))
  loc_1746BE4: var_C4 = CVar(((Val(var_140.Text) + var_338.Text) - var_2B8)) 'Double
  loc_1746C02: Set var_33C = Me.Txt
  loc_1746C08: Call 0.Method_Proc_124_94_1746D300 (CInt(&H14), var_340, CStr(Format(CVar(Val(var_140.Text)), "0.00")), 1)
  loc_1746C10: var_340.Text = 1
  loc_1746C47: Set var_A4 = Me.TxtGt
  loc_1746C4D: Call 0.Method_Proc_124_94_1746D308 (var_A6, var_2B8)
  loc_1746C5F: Set var_B0 = Me.TxtGt
  loc_1746C65: Call 0.Method_Proc_124_94_1746D300 (var_A6, var_140)
  loc_1746C7A: var_2A8 = Val(var_140.Text)
  loc_1746C84: Set var_144 = Me.TextGt
  loc_1746C8A: Call 0.Method_Proc_124_94_1746D308 (var_32A, var_2A8)
  loc_1746C9C: Set var_158 = Me.TextGt
  loc_1746CA2: Call 0.Method_Proc_124_94_1746D300 (var_32A, var_330)
  loc_1746CD6: var_C4 = CVar((var_2A8 + Val(var_330.Text))) 'Double
  loc_1746CF4: Set var_334 = Me.Txt
  loc_1746CFA: Call 0.Method_Proc_124_94_1746D300 (CInt(&H1A), var_338, CStr(Format(CVar(var_2A8), "0.00")), 1)
  loc_1746D02: var_338.Text = 1
  loc_1746D2C: Exit Sub
End Sub

Public Sub Proc_124_95_14FBADC(arg_C) '14FBADC
  'Data Table: 59EE40
  Dim var_A4 As Variant
  Dim var_118 As Double
  Dim var_B0 As Variant
  Dim var_120 As Double
  Dim var_D4 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_B4 As String
  Dim var_168 As Variant
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim unk_59EE5F As Connection15
  Dim var_AC As Variant
  Dim var_90 As Double
  Dim var_F4 As Variant
  Dim var_108 As TextBox
  Dim var_98 As Recordset15
  Dim var_A0 As Fields15
  Dim var_1F4 As TextBox
  Dim var_208 As Double
  Dim var_1FC As TextBox
  loc_14FAC96: Set var_A0 = Me.Txt
  loc_14FAC9C: Call 0.Method_Proc_124_95_14FBADC0 (CInt(&H11), var_A4)
  loc_14FACB1: var_118 = Val(var_A4.Text)
  loc_14FACC2: Set var_AC = Me.Txt
  loc_14FACC8: Call 0.Method_Proc_124_95_14FBADC0 (CInt(&H12), var_B0)
  loc_14FAD18: Set var_108 = Me.TextGt
  loc_14FAD1E: Call 0.Method_Proc_124_95_14FBADC0 (1, var_10C, CStr(Format(CVar((var_118 * Val(var_B0.Text))), "0.00")), 1)
  loc_14FAD26: var_10C.Text = 1
  loc_14FAD58: Set var_A0 = Me.TextGt
  loc_14FAD5E: Call 0.Method_Proc_124_95_14FBADC8 (var_122, var_86, 1)
  loc_14FAD69: For var_126 = var_118 To var_122: var_120 = var_126 'Integer
  loc_14FAD7C:   Set var_A0 = Me.LableCap
  loc_14FAD82:   Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4)
  loc_14FAD99:   var_B4 = MemVar_1F92070 & "DIS"
  loc_14FADAC:   If (var_A4.Tag = var_B4) Then
  loc_14FADB4:     var_92 = CByte(var_86) 'Byte
  loc_14FADB8:   End If
  loc_14FADEF:   Set var_A0 = Me.LableCap
  loc_14FADF5:   Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, var_B4, CVar("Select Count(*) from SundryMast where Logsite_code='" & MemVar_1F92078 & "' and Code='"), var_158, -1)
  loc_14FAE2A:   unk_59EE5F.Execute CStr(var_B0 & Trim(CVar(var_B4)) & "' And Nature In ('Sale Tax','CGST','SGST','IGST')"), 0, var_108
  loc_14FAE32:   var_118 = var_A4.Tag.Fields
  loc_14FAE3A:    = var_B0.Item()
  loc_14FAE95:   If CBool((Trim(CVar(var_108)) > 0) And (CInt(var_94) = 0)) Then
  loc_14FAE9D:     var_94 = CByte(var_86) 'Byte
  loc_14FAEA7:     global_136 = var_86
  loc_14FAEAA:   End If
  loc_14FAEAD: Next var_126 'Integer
  loc_14FAEBE: Set var_A0 = Me.TextGt
  loc_14FAEC4: Call 0.Method_Proc_124_95_14FBADC8 (var_122, var_86)
  loc_14FAECF: For var_1CC =  To var_122: 2 = var_1CC 'Integer
  loc_14FAEE2:   Set var_A0 = Me.LableCap
  loc_14FAEE8:   Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4)
  loc_14FAF12:   If (var_A4.Tag = MemVar_1F92070 & "DIS") Then
  loc_14FAF1F:     If (var_94 > var_92) Then
  loc_14FAF2F:       Set var_A0 = Me.TextPer
  loc_14FAF35:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4)
  loc_14FAF3D:       var_122 = var_A4.Visible
  loc_14FAF4F:       If (var_122 = &HFF) Then
  loc_14FAF5F:         Set var_A0 = Me.TextPer
  loc_14FAF65:         Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4)
  loc_14FAF6D:         var_A8 = var_A4.Text
  loc_14FAF89:         If (CDbl(Val(var_A8)) <> CDbl(0)) Then
  loc_14FAF92:           Call Proc_124_97_1031B44(var_86)
  loc_14FAF9A:           var_90 = var_118
  loc_14FAFAA:           Set var_A0 = Me.TextPer
  loc_14FAFB0:           Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, var_A8)
  loc_14FAFB8:           var_90 = var_A4.Text
  loc_14FAFC5:           var_118 = Val(var_A8)
  loc_14FB005:           Set var_AC = Me.TextGt
  loc_14FB00B:           Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_B0, CStr(Format(CVar(((var_90 * var_118) / CDbl(&H64))), "0.00")), 1)
  loc_14FB013:           var_B0.Text = 1
  loc_14FB045:           Set var_A0 = Me.LableDummy
  loc_14FB04B:           Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, CStr(var_90))
  loc_14FB053:           var_A4.Caption = var_118
  loc_14FB065:         Else
  loc_14FB072:           Set var_A0 = Me.TextGt
  loc_14FB078:           Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4)
  loc_14FB080:           var_A8 = var_A4.Text
  loc_14FB0C5:           Set var_AC = Me.TextGt
  loc_14FB0CB:           Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_B0, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_14FB0D3:           var_B0.Text = 1
  loc_14FB0F3:         End If
  loc_14FB0F6:       Else
  loc_14FB103:         Set var_A0 = Me.LableCap
  loc_14FB109:         Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, var_A8)
  loc_14FB111:         var_118 = var_A4.Tag
  loc_14FB133:         If (var_A8 = MemVar_1F92070 & "DIS") Then
  loc_14FB143:           Set var_A0 = Me.TextGt
  loc_14FB149:           Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4)
  loc_14FB151:           var_A8 = var_A4.Text
  loc_14FB196:           Set var_AC = Me.TextGt
  loc_14FB19C:           Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_B0, CStr(Format(CVar(Val(var_A8)), "0.00")), 1)
  loc_14FB1A4:           var_B0.Text = 1
  loc_14FB1C4:         End If
  loc_14FB1C4:       End If
  loc_14FB1C7:     Else
  loc_14FB1D4:       Set var_A0 = Me.LableCap
  loc_14FB1DA:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, var_A8)
  loc_14FB1E2:       var_118 = var_A4.Tag
  loc_14FB204:       If (var_A8 = MemVar_1F92070 & "DIS") Then
  loc_14FB214:         Set var_A0 = Me.TextGt
  loc_14FB21A:         Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4)
  loc_14FB222:         var_A8 = var_A4.Text
  loc_14FB22F:         var_118 = Val(var_A8)
  loc_14FB236:         var_C4 = CVar(CLng(var_88)) 'Long
  loc_14FB23E:         var_168 = CVar(CLng(&HC)) 'Long
  loc_14FB260:         var_120 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14FB27F:         var_F4 = CVar((var_118 + var_120)) 'Double
  loc_14FB28E:         var_110 = CStr(Format("0.00", "0.00"))
  loc_14FB29C:         Set var_B0 = Me.TextGt
  loc_14FB2A2:         Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_108, var_110, 1, 1)
  loc_14FB2AA:         var_108.Text = var_120
  loc_14FB2D0:       End If
  loc_14FB2D0:     End If
  loc_14FB2D3:   Else
  loc_14FB2E0:     Set var_A0 = Me.TextPer
  loc_14FB2E6:     Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, var_122, var_168)
  loc_14FB2EE:     var_C4 = var_A4.Visible
  loc_14FB300:     If (var_122 = &HFF) Then
  loc_14FB309:       Call Proc_124_97_1031B44(var_86, var_118)
  loc_14FB311:       var_90 = var_118
  loc_14FB321:       Set var_A0 = Me.TextPer
  loc_14FB327:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, var_A8)
  loc_14FB32F:       var_90 = var_A4.Text
  loc_14FB33C:       var_118 = Val(var_A8)
  loc_14FB37C:       Set var_AC = Me.TextGt
  loc_14FB382:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_B0, CStr(Format(CVar(((var_90 * var_118) / CDbl(&H64))), "0.00")), 1)
  loc_14FB38A:       var_B0.Text = 1
  loc_14FB3BC:       Set var_A0 = Me.LableDummy
  loc_14FB3C2:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, CStr(var_90))
  loc_14FB3CA:       var_A4.Caption = var_118
  loc_14FB3D9:     End If
  loc_14FB3D9:   End If
  loc_14FB3DC: Next var_1CC 'Integer
  loc_14FB3E5: Set var_A0 = Me.TopCtrl1
  loc_14FB3EB: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14FB404: If (CStr() = "Add") Then
  loc_14FB413:   Set var_A0 = Me.TextGt
  loc_14FB419:   Call 0.Method_Proc_124_95_14FBADC8 (var_122, var_86)
  loc_14FB424:   For var_1E0 =  To var_122: 2 = var_1E0 'Integer
  loc_14FB437:     Set var_A0 = Me.TextPer
  loc_14FB43D:     Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4)
  loc_14FB445:     var_122 = var_A4.Visible
  loc_14FB45D:     Set var_AC = Me.LableCap
  loc_14FB463:     Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_B0)
  loc_14FB46B:     var_A8 = var_B0.Tag
  loc_14FB492:     If ((var_122 = &HFF) And (var_A8 = MemVar_1F92070 & "SCH")) Then
  loc_14FB49B:       Call Proc_124_97_1031B44(var_86)
  loc_14FB4A3:       var_90 = var_118
  loc_14FB4B3:       Set var_A0 = Me.TextPer
  loc_14FB4B9:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, var_A8)
  loc_14FB4C1:       var_90 = var_A4.Text
  loc_14FB4CE:       var_118 = Val(var_A8)
  loc_14FB4F1:       var_D4 = CVar(((var_90 * var_118) / CDbl(&H64))) 'Double
  loc_14FB50E:       Set var_AC = Me.TextGt
  loc_14FB514:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_B0, CStr(Format(var_D4, "0.00")), 1)
  loc_14FB51C:       var_B0.Text = 1
  loc_14FB54E:       Set var_A0 = Me.LableDummy
  loc_14FB554:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, CStr(var_90))
  loc_14FB55C:       var_A4.Caption = var_118
  loc_14FB56B:     End If
  loc_14FB56E:   Next var_1E0 'Integer
  loc_14FB573: End If
  loc_14FB57F: Set var_A0 = Me.TextGt
  loc_14FB585: Call 0.Method_Proc_124_95_14FBADC8 (var_122, var_86)
  loc_14FB590: For var_1E4 =  To var_122: 2 = var_1E4 'Integer
  loc_14FB5A3:   Set var_A0 = Me.LableCap
  loc_14FB5A9:   Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4)
  loc_14FB5D3:   If (var_A4.Tag = MemVar_1F92070 & "ROFF") Then
  loc_14FB5DC:     Call Proc_124_97_1031B44(var_86)
  loc_14FB5E4:     var_90 = var_118
  loc_14FB5FF:     Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, CStr(var_90))
  loc_14FB607:     var_A4.Caption = var_90
  loc_14FB63A:     unk_59EE5F.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Banquet Bill' And LogSite_Code='" & MemVar_1F92078 & "'", var_D4, -1
  loc_14FB645:     Set var_98 = Me.LableDummy
  loc_14FB669:     If (var_98.RecordCount > 0) Then
  loc_14FB683:       var_A4 = var_98.Fields.Item("RoundOffType")
  loc_14FB6B5:       Proc_6_142_14A55B0(var_90, CByte(0), CStr(Left(CVar(var_A4), 1)))
  loc_14FB6F2:       Set var_AC = Me.TextGt
  loc_14FB6F8:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_B0, CStr(Format(CVar(2), "0.00")), 1)
  loc_14FB700:       var_B0.Text = 1
  loc_14FB725:     Else
  loc_14FB72E:       var_A8 = "U"
  loc_14FB73F:       Proc_6_142_14A55B0(var_90, CByte(0), var_A8, 2)
  loc_14FB76E:       var_B4 = CStr(Format(CVar(var_118), "0.00"))
  loc_14FB77C:       Set var_A0 = Me.TextGt
  loc_14FB782:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, var_B4, 1)
  loc_14FB78A:       var_A4.Text = 1
  loc_14FB7A6:     End If
  loc_14FB7AB:     Set var_98 = Nothing
  loc_14FB7B1:   Else
  loc_14FB7B8:     If (var_86 <> arg_C) Then
  loc_14FB7CE:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, var_A8)
  loc_14FB7D6:       var_118 = var_A4.Tag
  loc_14FB808:       Set var_AC = Me.LableCap
  loc_14FB80E:       Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_B0, var_B4)
  loc_14FB816:       (Trim(CVar(var_A8)) = CVar(MemVar_1F92070 & "TOT")) = var_B0.Tag
  loc_14FB85B:       If CBool(Me.LableCap Or (Trim(CVar(var_B4)) = CVar(MemVar_1F92070 & "NET"))) Then
  loc_14FB864:         Call Proc_124_97_1031B44(var_86, var_118)
  loc_14FB89E:         Set var_A0 = Me.TextGt
  loc_14FB8A4:         Call 0.Method_Proc_124_95_14FBADC0 (var_86, var_A4, CStr(Format(CVar(var_118), "0.00")))
  loc_14FB8AC:         var_A4.Text = 1
  loc_14FB8C4:       End If
  loc_14FB8C4:     End If
  loc_14FB8C4:   End If
  loc_14FB8C7: Next var_1E4 'Integer
  loc_14FB8D3: Set var_A0 = Me.TxtGt
  loc_14FB8D9: Call 0.Method_Proc_124_95_14FBADC8 (var_122)
  loc_14FB8EB: Set var_A4 = Me.TxtGt
  loc_14FB8F1: Call 0.Method_Proc_124_95_14FBADC0 (var_122, var_AC)
  loc_14FB910: Set var_B0 = Me.TextGt
  loc_14FB916: Call 0.Method_Proc_124_95_14FBADC8 (var_1EA)
  loc_14FB928: Set var_108 = Me.TextGt
  loc_14FB92E: Call 0.Method_Proc_124_95_14FBADC0 (var_1EA, var_10C)
  loc_14FB943: var_120 = Val(var_10C.Text)
  loc_14FB954: Set var_1F0 = Me.Txt
  loc_14FB95A: Call 0.Method_Proc_124_95_14FBADC0 (CInt(8), var_1F4, var_110)
  loc_14FB96F: var_208 = Val(var_110)
  loc_14FB992: var_D4 = CVar(((Val(var_AC.Text) + var_1F4.Text) - var_208)) 'Double
  loc_14FB9B0: Set var_1F8 = Me.Txt
  loc_14FB9B6: Call 0.Method_Proc_124_95_14FBADC0 (CInt(&H14), var_1FC, CStr(Format(CVar(Val(var_AC.Text)), "0.00")), 1)
  loc_14FB9BE: var_1FC.Text = 1
  loc_14FB9F5: Set var_A0 = Me.TxtGt
  loc_14FB9FB: Call 0.Method_Proc_124_95_14FBADC8 (var_122, var_208)
  loc_14FBA0D: Set var_A4 = Me.TxtGt
  loc_14FBA13: Call 0.Method_Proc_124_95_14FBADC0 (var_122, var_AC)
  loc_14FBA28: var_118 = Val(var_AC.Text)
  loc_14FBA32: Set var_B0 = Me.TextGt
  loc_14FBA38: Call 0.Method_Proc_124_95_14FBADC8 (var_1EA, var_118)
  loc_14FBA4A: Set var_108 = Me.TextGt
  loc_14FBA50: Call 0.Method_Proc_124_95_14FBADC0 (var_1EA, var_10C)
  loc_14FBA84: var_D4 = CVar((var_118 + Val(var_10C.Text))) 'Double
  loc_14FBAA2: Set var_1F0 = Me.Txt
  loc_14FBAA8: Call 0.Method_Proc_124_95_14FBADC0 (CInt(&H1A), var_1F4, CStr(Format(CVar(var_118), "0.00")), 1)
  loc_14FBAB0: var_1F4.Text = 1
  loc_14FBADA: Exit Sub
End Sub

Public Sub Proc_124_96_1321A0C(arg_C) '1321A0C
  'Data Table: 59EE40
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_164 As Double
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_D0 As Variant
  Dim var_16C As Double
  Dim var_A0 As Double
  Dim var_170 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_194 As Variant
  Dim var_214 As Variant
  Dim var_12C As TextBox
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_23C As Label
  Dim var_8C As Double
  Dim var_1B4 As Variant
  loc_13212B9: Set var_A8 = Me.TxtGt
  loc_13212BF: Call 0.Method_Proc_124_96_1321A0C0 (arg_C, var_AC)
  loc_13212DE: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_13212FC: Set var_A8 = Me.LblCap
  loc_1321302: Call 0.Method_Proc_124_96_1321A0C0 (arg_C, var_AC)
  loc_132132C: If (var_AC.Tag = MemVar_1F92078 & "SCH") Then
  loc_1321354:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_132135E:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_1321366:     var_108 = CVar(CLng(&H13)) 'Long
  loc_1321380:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_1321391:     If (var_B0 = "Y") Then
  loc_1321398:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_13213B2:       Set var_A8 = Me.TxtPer
  loc_13213B8:       Call 0.Method_Proc_124_96_1321A0C0 (arg_C, var_AC, var_B0, CVar(CLng(&H15)))
  loc_13213C0:       var_E8 = var_AC.Text
  loc_13213CF:       var_C0 = CVar(CStr(Val(var_B0))) 'String
  loc_13213D7:       Set var_12C = Me.FGrid
  loc_13213DD:       LateIdCallSt
  loc_1321408:       If CBool(InStr(1, var_90, "1-2", 0)) Then
  loc_132140F:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_1321417:         var_108 = CVar(CLng(5)) 'Long
  loc_1321440:         var_128 = CVar(CLng(var_A2)) 'Long
  loc_1321448:         var_14C = CVar(CLng(&HC)) 'Long
  loc_1321478:         var_A0 = ((var_A0 + Val(CStr(Me.FGrid.TextMatrix)))) - Val(CStr(Me.FGrid.TextMatrix))))
  loc_1321494:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_132149C:         var_108 = CVar(CLng(5)) 'Long
  loc_13214BE:         var_164 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_13214E7:         var_D4 = CStr(Me.FGrid.TextMatrix))
  loc_13214EF:         var_16C = Val(var_D4)
  loc_13214FF:         Set var_12C = Me.TxtPer
  loc_1321505:         Call 0.Method_Proc_124_96_1321A0C0 (arg_C, var_170, var_174, var_16C, CVar(CLng(&HC)), CVar(CLng(var_A2)), var_164)
  loc_132150D:         var_108 = var_170.Text
  loc_1321521:         var_1D4 = CVar(CLng(var_A2)) 'Long
  loc_1321529:         var_1F4 = CVar(CLng(&H16)) 'Long
  loc_1321552:         var_194 = CVar((((var_164 - var_16C) * Val(var_174)) / CDbl(&H64))) 'Double
  loc_1321562:         var_214 = CVar(CStr(Format(var_194, "0.00"))) 'String
  loc_132156A:         Set var_228 = Me.FGrid
  loc_1321570:         LateIdCallSt
  loc_13215A0:       Else
  loc_13215A4:         var_E8 = CVar(CLng(var_A2)) 'Long
  loc_13215AC:         var_108 = CVar(CLng(5)) 'Long
  loc_13215D8:         var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1321622:         Set var_AC = Me.TxtPer
  loc_1321628:         Call 0.Method_Proc_124_96_1321A0C0 (arg_C, var_12C, var_D4, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_A2)), var_A0)
  loc_1321644:         var_14C = CVar(CLng(var_A2)) 'Long
  loc_132164C:         var_184 = CVar(CLng(&H16)) 'Long
  loc_1321681:         var_1C4 = CVar(CStr(Format(CVar(((var_12C.Text * Val(var_D4)) / CDbl(&H64))), "0.00"))) 'String
  loc_1321689:         Set var_170 = Me.FGrid
  loc_132168F:         LateIdCallSt
  loc_13216B6:       End If
  loc_13216B6:     End If
  loc_13216B9:   Next var_D8 'Integer
  loc_13216C1: Else
  loc_13216E6:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_234 'Integer
  loc_13216F0:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_13216F8:     var_108 = CVar(CLng(5)) 'Long
  loc_1321724:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1321733:   Next var_234 'Integer
  loc_1321738: End If
  loc_1321742: If (Len(var_90) > 0) Then
  loc_1321774:   Set var_A8 = Me.LblCap
  loc_132177A:   Call 0.Method_Proc_124_96_1321A0C0 (arg_C, var_AC)
  loc_1321791:   var_D4 = MemVar_1F92078 & "SCH"
  loc_13217A3:   Set var_12C = Me.LblCap
  loc_13217A9:   Call 0.Method_Proc_124_96_1321A0C0 (arg_C, var_170, var_174)
  loc_13217B1:   (var_AC.Tag = var_D4) = var_170.Tag
  loc_13217D3:   Set var_228 = Me.LblCap
  loc_13217D9:   Call 0.Method_Proc_124_96_1321A0C0 (arg_C, var_23C)
  loc_1321825:   If CBool( And (((Left(var_90, 1) = "1") Or (var_174 = MemVar_1F92078 & "ADD")) Or (var_23C.Tag = MemVar_1F92070 & "DED"))) Then
  loc_132182B:     var_8C = var_A0
  loc_1321831:   Else
  loc_1321849:     var_B0 = CStr(Left(var_90, 1))
  loc_1321863:     Set var_A8 = Me.TxtGt
  loc_1321869:     Call 0.Method_Proc_124_96_1321A0C0 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_1321871:     var_164 = var_AC.Text
  loc_132187E:     var_8C = Val(var_D4)
  loc_1321892:   End If
  loc_13218B3:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_13218BD:   ' Referenced from: 1321A02
  loc_13218C7:   If (Len(var_90) > 0) Then
  loc_132190A:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1321954:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_132196B:     Set var_A8 = Me.TxtGt
  loc_1321971:     Call 0.Method_Proc_124_96_1321A0C0 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_1321986:     var_164 = Val(var_B0)
  loc_132199D:     Set var_12C = Me.TxtGt
  loc_13219A3:     Call 0.Method_Proc_124_96_1321A0C0 (var_AC.Text, var_170, var_D4, CVar(var_8C))
  loc_13219B9:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_13219CC:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_13219DB:     var_1B4 = (var_8C + IIf(var_90, CVar(var_170.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_13219E0:     var_8C = CSng(Format(CVar(((var_12C.Text * Val(var_D4)) / CDbl(&H64))), "0.00"))
  loc_1321A02:     GoTo loc_13218BD
  loc_1321A05:   End If
  loc_1321A05: End If
  loc_1321A05: Proc_124_96_1321A0C = var_8C
End Sub

Public Sub Proc_124_97_1031B44(arg_C) '1031B44
  'Data Table: 59EE40
  Dim var_A0 As TextBox
  Dim var_D4 As Variant
  Dim var_A4 As String
  Dim var_E0 As Double
  Dim var_8C As Double
  Dim var_F8 As TextBox
  Dim var_C4 As Variant
  Dim var_138 As Variant
  loc_1031925: Set var_9C = Me.TextGt
  loc_103192B: Call 0.Method_Proc_124_97_1031B440 (arg_C, var_A0)
  loc_103194A: var_90 = CStr(Trim(CVar(var_A0.Tag)))
  loc_1031965: If (Len(var_90) > 0) Then
  loc_1031980:   var_A4 = CStr(Left(var_90, 1))
  loc_103199A:   Set var_9C = Me.TextGt
  loc_10319A0:   Call 0.Method_Proc_124_97_1031B440 (CInt(Val(var_A4)), var_A0)
  loc_10319A8:   var_D8 = var_A0.Text
  loc_10319B5:   var_8C = Val(var_D8)
  loc_10319EA:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_10319F4:   ' Referenced from: 1031B39
  loc_10319FE:   If (Len(var_90) > 0) Then
  loc_1031A41:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1031A8B:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_1031AA2:     Set var_9C = Me.TextGt
  loc_1031AA8:     Call 0.Method_Proc_124_97_1031B440 (CInt(Left(var_90, 1)), var_A0, var_A4)
  loc_1031ABD:     var_E0 = Val(var_A4)
  loc_1031AD4:     Set var_F4 = Me.TextGt
  loc_1031ADA:     Call 0.Method_Proc_124_97_1031B440 (var_A0.Text, var_F8, var_D8, CVar(var_8C))
  loc_1031AF0:     var_C4 = CVar(-Val(var_D8)) 'Double
  loc_1031B03:     var_D4 = (CStr(Left(var_90, 1)) = "+")
  loc_1031B12:     var_138 = (var_8C + IIf(var_90, CVar(var_F8.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_1031B17:     var_8C = CSng(var_138)
  loc_1031B39:     GoTo loc_10319F4
  loc_1031B3C:   End If
  loc_1031B3C: End If
  loc_1031B3C: Proc_124_97_1031B44 = var_8C
End Sub

Public Sub Proc_124_98_10A5690
  'Data Table: 59EE40
  Dim var_9C As Variant
  loc_10A53C8: Set var_90 = Me.TxtGt
  loc_10A53CE: Call 0.Method_Proc_124_98_10A56908 (var_92, var_86)
  loc_10A53D9: For var_96 =  To var_92: 1 = var_96 'Integer
  loc_10A53EC:   Set var_90 = Me.LblCap
  loc_10A53F2:   Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A5411:   If (var_9C.Tag = "STOT") Then
  loc_10A5421:     Set var_90 = Me.TxtGt
  loc_10A5427:     Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A542F:     var_9C.Text = vbNullString
  loc_10A543E:   Else
  loc_10A544B:     Set var_90 = Me.LblCap
  loc_10A5451:     Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A5470:     If (var_9C.Tag = "SDIS") Then
  loc_10A5480:       Set var_90 = Me.TxtGt
  loc_10A5486:       Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A548E:       var_9C.Text = vbNullString
  loc_10A549D:     Else
  loc_10A54AA:       Set var_90 = Me.LblCap
  loc_10A54B0:       Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A54CF:       If (var_9C.Tag = "SST") Then
  loc_10A54DF:         Set var_90 = Me.TxtGt
  loc_10A54E5:         Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A54ED:         var_9C.Text = vbNullString
  loc_10A54FC:       Else
  loc_10A5509:         Set var_90 = Me.LblCap
  loc_10A550F:         Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A552E:         If (var_9C.Tag = "SSTX") Then
  loc_10A5531:           GoTo loc_10A5686
  loc_10A5534:         End If
  loc_10A5541:         Set var_90 = Me.LblCap
  loc_10A5547:         Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A5566:         If (var_9C.Tag = "SSCH") Then
  loc_10A5569:           GoTo loc_10A5686
  loc_10A556C:         End If
  loc_10A5579:         Set var_90 = Me.LblCap
  loc_10A557F:         Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A559E:         If (var_9C.Tag = "SADD") Then
  loc_10A55AE:           Set var_90 = Me.TxtGt
  loc_10A55B4:           Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A55BC:           var_9C.Text = vbNullString
  loc_10A55CB:         Else
  loc_10A55D8:           Set var_90 = Me.LblCap
  loc_10A55DE:           Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A55FD:           If (var_9C.Tag = "SDED") Then
  loc_10A560D:             Set var_90 = Me.TxtGt
  loc_10A5613:             Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A561B:             var_9C.Text = vbNullString
  loc_10A562A:           Else
  loc_10A5637:             Set var_90 = Me.LblCap
  loc_10A563D:             Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A565C:             If (var_9C.Tag = "SNET") Then
  loc_10A566C:               Set var_90 = Me.TxtGt
  loc_10A5672:               Call 0.Method_Proc_124_98_10A56900 (var_86, var_9C)
  loc_10A567A:               var_9C.Text = vbNullString
  loc_10A5686:             End If
  loc_10A5686:           End If
  loc_10A5686:           ' Referenced from:       10A5569
  loc_10A5686:           ' Referenced from:       10A5531
  loc_10A5686:         End If
  loc_10A5686:       End If
  loc_10A5686:     End If
  loc_10A5686:   End If
  loc_10A5689: Next var_96 'Integer
  loc_10A568E: Exit Sub
End Sub

Public Sub Proc_124_99_DFF3D8
  'Data Table: 59EE40
  Dim arg_7FFF As Double
  loc_DFF3D4: Exit Sub
  loc_DFF3D5: arg_7FFF = 
End Sub

Public Sub Proc_124_100_17FBFE4(arg_C, arg_10, arg_14, arg_18) '17FBFE4
  'Data Table: 59EE40
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_59EE5F As Connection15
  Dim var_D8 As Recordset15
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_110 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_144 As Variant
  Dim var_134 As Variant
  Dim var_C0 As Recordset15
  Dim var_178 As Variant
  Dim var_154 As Variant
  Dim var_18C As Variant
  Dim var_1A0 As Variant
  Dim var_1D4 As Variant
  Dim var_D0 As Double
  Dim var_208 As Double
  Dim var_174 As Variant
  Dim var_E0 As Recordset15
  Dim var_124 As MSHFlexGrid
  Dim var_1FC As Double
  Dim var_9C As Double
  Dim var_1C4 As Variant
  loc_17F9DED: unk_59EE5F.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "' And DeskCode='" & global_56 & "'", var_110, -1
  loc_17F9DF8: Set var_D8 = var_114
  loc_17F9E20: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_17F9E30: unk_59EE5F.Execute var_E4 & "'", var_110, -1
  loc_17F9E3B: Set var_8C = var_114
  loc_17F9E5F: If (var_D8.RecordCount > 0) Then
  loc_17F9E77:   var_114 = var_D8.Fields
  loc_17F9E9E:   If (var_114 <> Proc_6_38_E68A98(CVar(var_114.Item("RestCode")), global_56)) Then
  loc_17F9EA3:     var_DA = &HFF
  loc_17F9EA9:   Else
  loc_17F9EAB:     var_DA = 0
  loc_17F9EAE:   End If
  loc_17F9EB1: Else
  loc_17F9EB3:   var_DA = 0
  loc_17F9EB6: End If
  loc_17F9EB9: var_94 = arg_14
  loc_17F9EBE: var_86 = 1
  loc_17F9EC4: var_A8 = var_94
  loc_17F9ECA: var_B0 = var_94
  loc_17F9ED0: var_B8 = CDbl(0)
  loc_17F9EE7: If (var_8C.RecordCount > 0) Then
  loc_17F9EEA:   ' Referenced from: 17FBFB7
  loc_17F9EF9:   If Not(var_8C.EOF) Then
  loc_17F9F00:     Set var_124 = Me.FGCat
  loc_17F9F03:     var_100 = vbNullString
  loc_17F9F28:     If (var_8C.RecordCount > 0) Then
  loc_17F9F31:       var_D2 = (var_D2 + 1)
  loc_17F9F37:       var_100 = "Nature"
  loc_17F9F5C:       var_144 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_100)), var_D2, FGCat.DispID_10000, var_100, var_B8, var_B0, var_A8)) 'String
  loc_17F9F6A:       var_164 = Trim(var_144) 'Variant
  loc_17F9F83:       If (var_164 = "On Base Amt") Then
  loc_17F9FAE:         var_144 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_86, var_94, var_DA)) 'String
  loc_17F9FD0:         If (Trim(var_144) = "Room Rate") Then
  loc_17F9FDE:           If (global_56 = "Room Service") Then
  loc_17FA007:             Proc_6_39_E7C810(var_144, CVar(var_8C.Fields.Item("Limit")), var_DA)
  loc_17FA035:             Proc_6_39_E7C810(var_174, CVar(var_C0.Fields.Item("RoomRate")), var_144)
  loc_17FA03D:             var_18C = (var_DA <= var_174)
  loc_17FA067:             Proc_6_39_E7C810(var_1C4, CVar(var_8C.Fields.Item("Rate")))
  loc_17FA097:             If CBool(var_18C And (var_1C4 > 0)) Then
  loc_17FA0DA:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17FA11C:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64))
  loc_17FA12F:               Else
  loc_17FA162:                 var_208 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_17FA18F:                 Proc_6_142_14A55B0(((var_208 * (var_A8 + arg_18)) / CDbl(&H64)), CByte(0), "U", 2)
  loc_17FA194:                 var_D0 = var_208
  loc_17FA1A8:               End If
  loc_17FA1AF:               If (var_D0 > CDbl(0)) Then
  loc_17FA1CB:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA1D3:                 var_1A0 = CVar(CLng(0)) 'Long
  loc_17FA1DD:                 var_144 = CVar(CStr(var_86)) 'String
  loc_17FA1E4:                 LateIdCallSt
  loc_17FA20F:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA217:                 var_1A0 = CVar(CLng(1)) 'Long
  loc_17FA221:                 var_144 = CVar(CStr(arg_10)) 'String
  loc_17FA228:                 LateIdCallSt
  loc_17FA240:                 If (var_DA = 0) Then
  loc_17FA247:                   Set var_178 = Me.FGCat
  loc_17FA25C:                   var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17FA264:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17FA294:                   var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17FA29B:                   LateIdCallSt
  loc_17FA2B8:                 Else
  loc_17FA2D3:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F92078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_17FA311:                   var_154 = CVar(var_E8 & global_56 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17FA328:                   unk_59EE5F.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17FA333:                   Set var_E0 = var_178
  loc_17FA36B:                   If (var_E0.RecordCount > 0) Then
  loc_17FA387:                     var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA38F:                     var_1D4 = CVar(CLng(2)) 'Long
  loc_17FA3BF:                     var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17FA3C6:                     LateIdCallSt
  loc_17FA3E0:                   End If
  loc_17FA3E0:                 End If
  loc_17FA3F9:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA401:                 var_1D4 = CVar(CLng(3)) 'Long
  loc_17FA431:                 var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17FA438:                 LateIdCallSt
  loc_17FA46B:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA473:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_17FA481:                 var_144 = CVar(CStr((var_A8 + arg_18))) 'String
  loc_17FA488:                 LateIdCallSt
  loc_17FA4B3:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA4BB:                 var_1D4 = CVar(CLng(5)) 'Long
  loc_17FA4EB:                 var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17FA4F2:                 LateIdCallSt
  loc_17FA525:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA52D:                 var_1A0 = CVar(CLng(6)) 'Long
  loc_17FA537:                 var_144 = CVar(CStr(var_D0)) 'String
  loc_17FA53E:                 LateIdCallSt
  loc_17FA569:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA571:                 var_1D4 = CVar(CLng(7)) 'Long
  loc_17FA5A1:                 var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17FA5A8:                 LateIdCallSt
  loc_17FA5C5:               Else
  loc_17FA5CB:                 var_86 = (var_86 - 1)
  loc_17FA5E1:                 var_100 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17FA5F7:               End If
  loc_17FA610:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA618:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17FA63D:               var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17FA666:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA66E:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17FA689:               var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_17FA693:               var_94 = (var_94 + var_1FC)
  loc_17FA6AA:               var_B0 = (var_B0 + var_D0)
  loc_17FA6B0:               var_B8 = var_D0
  loc_17FA6BA:               var_B0 = (var_B0 + var_D0)
  loc_17FA6C0:               var_B8 = var_D0
  loc_17FA6C3:             End If
  loc_17FA6C3:           End If
  loc_17FA6C6:         Else
  loc_17FA6EC:           var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_17FA706:           If (var_144 = "No") Then
  loc_17FA748:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64))
  loc_17FA75B:           Else
  loc_17FA7BB:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8)
  loc_17FA7C0:             var_D0 = var_B0
  loc_17FA7D4:           End If
  loc_17FA7FA:           Proc_6_39_E7C810(var_144, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B8, var_B0)
  loc_17FA834:           Proc_6_39_E7C810(var_18C, CVar(var_8C.Fields.Item("Rate")), (var_144 <= CVar(var_94)), var_94)
  loc_17FA85E:           If CBool(var_1FC And (var_18C > 0)) Then
  loc_17FA868:             If (var_D0 > CDbl(0)) Then
  loc_17FA884:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA88C:               var_1A0 = CVar(CLng(0)) 'Long
  loc_17FA896:               var_144 = CVar(CStr(var_86)) 'String
  loc_17FA89D:               LateIdCallSt
  loc_17FA8C8:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FA8D0:               var_1A0 = CVar(CLng(1)) 'Long
  loc_17FA8DA:               var_144 = CVar(CStr(arg_10)) 'String
  loc_17FA8E1:               LateIdCallSt
  loc_17FA8F9:               If (var_DA = 0) Then
  loc_17FA900:                 Set var_178 = Me.FGCat
  loc_17FA915:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17FA91D:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_17FA94D:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17FA954:                 LateIdCallSt
  loc_17FA971:               Else
  loc_17FA988:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_17FA9BC:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17FA9D3:                 unk_59EE5F.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17FA9DE:                 Set var_E0 = var_178
  loc_17FAA12:                 If (var_E0.RecordCount > 0) Then
  loc_17FAA2E:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FAA36:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17FAA66:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17FAA6D:                   LateIdCallSt
  loc_17FAA87:                 End If
  loc_17FAA87:               End If
  loc_17FAAA0:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FAAA8:               var_1D4 = CVar(CLng(3)) 'Long
  loc_17FAAD8:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17FAADF:               LateIdCallSt
  loc_17FAB12:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FAB1A:               var_1A0 = CVar(CLng(4)) 'Long
  loc_17FAB28:               var_144 = CVar(CStr((var_A8 + arg_18))) 'String
  loc_17FAB2F:               LateIdCallSt
  loc_17FAB5A:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FAB62:               var_1D4 = CVar(CLng(5)) 'Long
  loc_17FAB92:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17FAB99:               LateIdCallSt
  loc_17FABCC:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FABDE:               var_144 = CVar(CStr(var_D0)) 'String
  loc_17FABE5:               LateIdCallSt
  loc_17FAC01:               var_144 = Me.FGCat.Rows
  loc_17FAC10:               var_134 = CVar((CLng(var_144) - 1)) 'Long
  loc_17FAC20:               var_100 = "Sundry"
  loc_17FAC45:               var_154 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_100)), CVar(CLng(7)), "')", var_124, var_144, CVar(CLng(6)), var_100)) 'String
  loc_17FAC4C:               LateIdCallSt
  loc_17FAC64:             End If
  loc_17FAC7D:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FAC85:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17FACAA:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17FACD3:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FACDB:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17FACF6:             var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_17FAD00:             var_94 = (var_94 + var_1FC)
  loc_17FAD17:             var_B0 = (var_B0 + var_D0)
  loc_17FAD1D:             var_B8 = var_D0
  loc_17FAD20:           End If
  loc_17FAD20:         End If
  loc_17FAD23:       Else
  loc_17FAD2E:         If (var_164 = "On Running Total") Then
  loc_17FAD57:           var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_17FAD71:           If (var_144 = "No") Then
  loc_17FADAF:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_17FADC2:           Else
  loc_17FAE1E:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_17FAE23:             var_D0 = var_94
  loc_17FAE37:           End If
  loc_17FAE5D:           Proc_6_39_E7C810(var_144, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1FC, var_1A0)
  loc_17FAE77:           If (var_144 > 0) Then
  loc_17FAE81:             If (var_D0 > CDbl(0)) Then
  loc_17FAE9D:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FAEA5:               var_1A0 = CVar(CLng(0)) 'Long
  loc_17FAEAF:               var_144 = CVar(CStr(var_86)) 'String
  loc_17FAEB6:               LateIdCallSt
  loc_17FAEE1:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FAEE9:               var_1A0 = CVar(CLng(1)) 'Long
  loc_17FAEF3:               var_144 = CVar(CStr(arg_10)) 'String
  loc_17FAEFA:               LateIdCallSt
  loc_17FAF12:               If (var_DA = 0) Then
  loc_17FAF19:                 Set var_178 = Me.FGCat
  loc_17FAF2E:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17FAF36:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_17FAF66:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17FAF6D:                 LateIdCallSt
  loc_17FAF8A:               Else
  loc_17FAFA1:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_17FAFD5:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17FAFEC:                 unk_59EE5F.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17FAFF7:                 Set var_E0 = var_178
  loc_17FB02B:                 If (var_E0.RecordCount > 0) Then
  loc_17FB047:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB04F:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17FB07F:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17FB086:                   LateIdCallSt
  loc_17FB0A0:                 End If
  loc_17FB0A0:               End If
  loc_17FB0B9:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB0C1:               var_1D4 = CVar(CLng(3)) 'Long
  loc_17FB0F1:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17FB0F8:               LateIdCallSt
  loc_17FB12B:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB133:               var_1A0 = CVar(CLng(4)) 'Long
  loc_17FB13D:               var_144 = CVar(CStr(var_B0)) 'String
  loc_17FB144:               LateIdCallSt
  loc_17FB16F:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB177:               var_1D4 = CVar(CLng(5)) 'Long
  loc_17FB1A7:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17FB1AE:               LateIdCallSt
  loc_17FB1E1:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB1E9:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17FB1F3:               var_144 = CVar(CStr(var_D0)) 'String
  loc_17FB1FA:               LateIdCallSt
  loc_17FB225:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB22D:               var_1D4 = CVar(CLng(7)) 'Long
  loc_17FB25D:               var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17FB264:               LateIdCallSt
  loc_17FB27E:             End If
  loc_17FB297:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB29F:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17FB2C4:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17FB2ED:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB2F5:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17FB31A:             var_94 = (var_94 + Val(CStr(var_124.TextMatrix))))
  loc_17FB331:             var_B0 = (var_B0 + var_D0)
  loc_17FB337:             var_B8 = var_D0
  loc_17FB33A:           End If
  loc_17FB33D:         Else
  loc_17FB348:           If (var_164 = "On Prev. Tax Amt") Then
  loc_17FB38B:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17FB3C9:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_17FB3DC:             Else
  loc_17FB438:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_17FB43D:               var_D0 = var_94
  loc_17FB451:             End If
  loc_17FB458:             If (var_D0 > CDbl(0)) Then
  loc_17FB474:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB47C:               var_1A0 = CVar(CLng(0)) 'Long
  loc_17FB486:               var_144 = CVar(CStr(var_86)) 'String
  loc_17FB48D:               LateIdCallSt
  loc_17FB4B8:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB4C0:               var_1A0 = CVar(CLng(1)) 'Long
  loc_17FB4CA:               var_144 = CVar(CStr(arg_10)) 'String
  loc_17FB4D1:               LateIdCallSt
  loc_17FB4E9:               If (var_DA = 0) Then
  loc_17FB4F0:                 Set var_178 = Me.FGCat
  loc_17FB505:                 var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17FB50D:                 var_1D4 = CVar(CLng(2)) 'Long
  loc_17FB53D:                 var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17FB544:                 LateIdCallSt
  loc_17FB561:               Else
  loc_17FB578:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_17FB5AC:                 var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17FB5C3:                 unk_59EE5F.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17FB5CE:                 Set var_E0 = var_178
  loc_17FB602:                 If (var_E0.RecordCount > 0) Then
  loc_17FB61E:                   var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB626:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17FB656:                   var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17FB65D:                   LateIdCallSt
  loc_17FB677:                 End If
  loc_17FB677:               End If
  loc_17FB690:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB698:               var_1D4 = CVar(CLng(3)) 'Long
  loc_17FB6C8:               var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17FB6CF:               LateIdCallSt
  loc_17FB702:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB70A:               var_1A0 = CVar(CLng(4)) 'Long
  loc_17FB714:               var_144 = CVar(CStr(var_B8)) 'String
  loc_17FB71B:               LateIdCallSt
  loc_17FB746:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB74E:               var_1D4 = CVar(CLng(5)) 'Long
  loc_17FB77E:               var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17FB785:               LateIdCallSt
  loc_17FB7B8:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB7C0:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17FB7CA:               var_144 = CVar(CStr(var_D0)) 'String
  loc_17FB7D1:               LateIdCallSt
  loc_17FB7FC:               var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB804:               var_1D4 = CVar(CLng(7)) 'Long
  loc_17FB834:               var_154 = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17FB83B:               LateIdCallSt
  loc_17FB855:             End If
  loc_17FB86E:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB876:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17FB89B:             var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17FB8C4:             var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FB8CC:             var_1A0 = CVar(CLng(6)) 'Long
  loc_17FB8E7:             var_1FC = Val(CStr(var_124.TextMatrix)))
  loc_17FB8F1:             var_94 = (var_94 + var_1FC)
  loc_17FB908:             var_B0 = (var_B0 + var_D0)
  loc_17FB90E:             var_B8 = var_D0
  loc_17FB914:           Else
  loc_17FB93A:             var_144 = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_17FB954:             If (var_144 = "No") Then
  loc_17FB996:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64))
  loc_17FB9A9:             Else
  loc_17FBA09:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_18)) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8)
  loc_17FBA0E:               var_D0 = var_B0
  loc_17FBA22:             End If
  loc_17FBA25:             var_100 = "Limit"
  loc_17FBA48:             Proc_6_39_E7C810(var_144, CVar(var_8C.Fields.Item(var_100)), var_D0, var_94, var_1FC)
  loc_17FBA5F:             var_1A0 = "Rate"
  loc_17FBA82:             Proc_6_39_E7C810(var_18C, CVar(var_8C.Fields.Item(var_1A0)), (var_144 <= CVar(var_94)), var_1A0)
  loc_17FBAAC:             If CBool(var_100 And (var_18C > 0)) Then
  loc_17FBAB6:               If (var_D0 > CDbl(0)) Then
  loc_17FBAD2:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FBADA:                 var_1A0 = CVar(CLng(0)) 'Long
  loc_17FBAE4:                 var_144 = CVar(CStr(var_86)) 'String
  loc_17FBAEB:                 LateIdCallSt
  loc_17FBB16:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FBB1E:                 var_1A0 = CVar(CLng(1)) 'Long
  loc_17FBB28:                 var_144 = CVar(CStr(arg_10)) 'String
  loc_17FBB2F:                 LateIdCallSt
  loc_17FBB47:                 If (var_DA = 0) Then
  loc_17FBB4E:                   Set var_178 = Me.FGCat
  loc_17FBB63:                   var_134 = CVar((CLng(var_178.Rows) - 1)) 'Long
  loc_17FBB6B:                   var_1D4 = CVar(CLng(2)) 'Long
  loc_17FBB9B:                   var_154 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17FBBA2:                   LateIdCallSt
  loc_17FBBBF:                 Else
  loc_17FBBD6:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_56
  loc_17FBC0A:                   var_154 = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_17FBC21:                   unk_59EE5F.Execute CStr(var_154 & "')"), var_18C, -1
  loc_17FBC2C:                   Set var_E0 = var_178
  loc_17FBC60:                   If (var_E0.RecordCount > 0) Then
  loc_17FBC7C:                     var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FBC84:                     var_1D4 = CVar(CLng(2)) 'Long
  loc_17FBCB4:                     var_154 = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17FBCBB:                     LateIdCallSt
  loc_17FBCD5:                   End If
  loc_17FBCD5:                 End If
  loc_17FBCEE:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FBCF6:                 var_1D4 = CVar(CLng(3)) 'Long
  loc_17FBD26:                 var_154 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17FBD2D:                 LateIdCallSt
  loc_17FBD60:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FBD68:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_17FBD76:                 var_144 = CVar(CStr((var_A8 + arg_18))) 'String
  loc_17FBD7D:                 LateIdCallSt
  loc_17FBDA8:                 var_134 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FBDB0:                 var_1D4 = CVar(CLng(5)) 'Long
  loc_17FBDE0:                 var_154 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17FBDE7:                 LateIdCallSt
  loc_17FBE1A:                 var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FBE2C:                 var_144 = CVar(CStr(var_D0)) 'String
  loc_17FBE33:                 LateIdCallSt
  loc_17FBE4F:                 var_144 = Me.FGCat.Rows
  loc_17FBE5E:                 var_134 = CVar((CLng(var_144) - 1)) 'Long
  loc_17FBE6E:                 var_100 = "Sundry"
  loc_17FBE93:                 var_154 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_100)), CVar(CLng(7)), "')", var_124, var_144, CVar(CLng(6)), var_100)) 'String
  loc_17FBE9A:                 LateIdCallSt
  loc_17FBEB2:               End If
  loc_17FBECB:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FBED3:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17FBEF8:               var_9C = (var_9C + Val(CStr(var_124.TextMatrix))))
  loc_17FBF21:               var_100 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17FBF29:               var_1A0 = CVar(CLng(6)) 'Long
  loc_17FBF4E:               var_94 = (var_94 + Val(CStr(var_124.TextMatrix))))
  loc_17FBF65:               var_B0 = (var_B0 + var_D0)
  loc_17FBF6B:               var_B8 = var_D0
  loc_17FBF6E:             End If
  loc_17FBF6E:           End If
  loc_17FBF6E:         End If
  loc_17FBF6E:       End If
  loc_17FBF6E:     End If
  loc_17FBF74:     var_86 = (var_86 + 1)
  loc_17FBF79:     Set var_124 = Nothing 
  loc_17FBF81:     var_100 = CVar(CLng(arg_10)) 'Long
  loc_17FBF89:     var_1A0 = CVar(CLng(7)) 'Long
  loc_17FBF93:     var_110 = CVar(CStr(var_9C)) 'String
  loc_17FBF9B:     Set var_114 = Me.FGrid
  loc_17FBFA1:     LateIdCallSt
  loc_17FBFB2:     var_8C.MoveNext
  loc_17FBFB7:     GoTo loc_17F9EEA
  loc_17FBFBA:   End If
  loc_17FBFBF:   Set var_8C = Nothing
  loc_17FBFC7:   Set var_C4 = Nothing
  loc_17FBFCF:   Set var_C0 = Nothing
  loc_17FBFD7:   Set var_D8 = Nothing
  loc_17FBFDF:   Set var_E0 = Nothing
  loc_17FBFE2: End If
  loc_17FBFE2: Exit Sub
End Sub

Public Sub Proc_124_101_18C7548
  'Data Table: 59EE40
  Dim unk_59EE5F As Connection15
  Dim var_94 As Recordset15
  Dim var_C8 As String
  Dim var_C0 As Fields15
  Dim var_BC As Variant
  Dim var_D4 As TextBox
  Dim var_CC As Variant
  Dim var_D8 As String
  Dim var_DC As String
  Dim var_9A As Integer
  Dim var_E0 As String
  Dim var_E4 As String
  Dim var_8C As Recordset15
  Dim var_104 As Variant
  Dim var_11C As TextBox
  Dim var_1AC As Variant
  Dim var_124 As TextBox
  Dim var_128 As Fields15
  Dim var_114 As Variant
  Dim var_14C As Variant
  Dim var_154 As Variant
  Dim var_160 As TextBox
  Dim var_158 As String
  Dim var_168 As String
  Dim var_188 As Variant
  Dim var_12C As Variant
  Dim var_130 As Fields15
  Dim var_1F0 As TextBox
  Dim var_164 As String
  Dim var_198 As Variant
  Dim var_15C As Variant
  Dim var_98 As Recordset15
  Dim var_134 As Field20
  Dim var_148 As Fields15
  Dim var_150 As Fields15
  Dim var_F4 As Variant
  loc_18C4D3A: unk_59EE5F.Execute "Select * from Enviro", var_BC, -1
  loc_18C4D45: Set var_94 = var_C0
  loc_18C4D62: If (var_94.RecordCount > 0) Then
  loc_18C4D7A:   If (global_56 = MemVar_1F92070 & "BANQ") Then
  loc_18C4DB3:     Set var_D0 = Me.Txt
  loc_18C4DB9:     Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_D4)
  loc_18C4DC1:     var_D4.Tag = Proc_6_38_E68A98(CVar(var_94.Fields.Item("IndoorPartyAC")))
  loc_18C4DFD:     var_88 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("IndoorSaleAC")))
  loc_18C4E09:   Else
  loc_18C4E31:     var_C8 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("OutDoorPartyAC")))
  loc_18C4E3F:     Set var_D0 = Me.Txt
  loc_18C4E45:     Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_D4)
  loc_18C4E4D:     var_D4.Tag = var_C8
  loc_18C4E78:     var_CC = var_94.Fields.Item("OutDoorSaleAC")
  loc_18C4E89:     var_88 = Proc_6_38_E68A98(CVar(var_CC))
  loc_18C4E92:   End If
  loc_18C4E92: End If
  loc_18C4EB6: Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_C8, "Delete From Ledger where DocID='")
  loc_18C4EBE: var_BC = var_CC.Text
  loc_18C4EC7: var_D8 = -1 & var_C8
  loc_18C4ED7: unk_59EE5F.Execute var_D8 & "'", var_D0, Me.Txt
  loc_18C4EF3: var_9A = 1
  loc_18C4F25: Set var_C0 = Me.Txt
  loc_18C4F2B: Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_D8, "select Sum(TotalPERCOVER) as RevAmt from HallSale1 Where RestCode='" & global_56 & "' And DocID='")
  loc_18C4F33: var_BC = var_CC.Text
  loc_18C4F3C: var_E0 = -1 & var_D8
  loc_18C4F4C: unk_59EE5F.Execute var_E0 & "'", var_D0, var_9A
  loc_18C4F57: Set var_8C = var_D0
  loc_18C4F87: If (var_8C.RecordCount > 0) Then
  loc_18C4FA1:   var_CC = var_8C.Fields.Item("RevAmt")
  loc_18C4FA9:   var_BC = CVar(var_CC) 'Address
  loc_18C4FB0:   Proc_6_39_E7C810(var_F4)
  loc_18C4FCA:   If (var_F4 > 0) Then
  loc_18C4FDB:     Set var_C0 = Me.Txt
  loc_18C4FE1:     Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC)
  loc_18C4FFC:     Set var_D0 = Me.Txt
  loc_18C5002:     Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4)
  loc_18C500A:     var_C8 = var_D4.Tag
  loc_18C501D:     Set var_118 = Me.Txt
  loc_18C5023:     Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C)
  loc_18C503D:     var_1B0 = Me.LblVPrefix.Caption
  loc_18C5050:     Set var_120 = Me.Txt
  loc_18C5056:     Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C507A:     var_12C = var_8C.Fields.Item("RevAmt")
  loc_18C5089:     Proc_6_39_E7C810(var_F4, CVar(var_12C))
  loc_18C5099:     Set var_130 = Me.Txt
  loc_18C509F:     Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_134)
  loc_18C50C1:     Set var_148 = Me.Txt
  loc_18C50C7:     Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_14C)
  loc_18C50E2:     Set var_150 = Me.Txt
  loc_18C50E8:     Call 0.Method_Proc_124_101_18C75480 (CInt(&H11), var_154)
  loc_18C5103:     Set var_15C = Me.Txt
  loc_18C5109:     Call 0.Method_Proc_124_101_18C75480 (CInt(&H12), var_160)
  loc_18C5119:     var_198 = Now
  loc_18C5123:     var_1EC = 0
  loc_18C512E:     var_1E8 = 0
  loc_18C5139:     var_1E4 = 0
  loc_18C5142:     var_1E0 = "A"
  loc_18C517D:     var_188 = Trim(CVar(var_134)) & CVar("As Per Bill No :" & var_14C.Text & " No of Paxs :" & var_154.Text & " @ " & var_160.Text) 
  loc_18C5189:     var_1D0 = vbNullString
  loc_18C51CD:     Proc_6_140_12D90F4(MemVar_1F92044, var_CC.Text, var_9A, var_C8, CLng(var_11C.Text), var_1B0, MemVar_1F92070, var_124.Text)
  loc_18C5232:   Else
  loc_18C5249:     var_CC = var_8C.Fields.Item("RevAmt")
  loc_18C5258:     Proc_6_39_E7C810(var_F4, CVar(var_CC), var_88, CDbl(0), CSng(var_F4))
  loc_18C5272:     If (var_F4 < 0) Then
  loc_18C5283:       Set var_C0 = Me.Txt
  loc_18C5289:       Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_1A0, var_1D0)
  loc_18C5291:       CStr(var_188) = var_CC.Text
  loc_18C52A4:       Set var_D0 = Me.Txt
  loc_18C52AA:       Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8)
  loc_18C52B2:       MemVar_1F920C8 = var_D4.Tag
  loc_18C52C5:       Set var_118 = Me.Txt
  loc_18C52CB:       Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C, var_1B0)
  loc_18C52D3:       CDate(var_198) = var_11C.Text
  loc_18C52F8:       Set var_120 = Me.Txt
  loc_18C52FE:       Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C5319:       Set var_128 = Me.Txt
  loc_18C531F:       Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_12C)
  loc_18C5327:       var_D8 = var_12C.Tag
  loc_18C534B:       var_BC = CVar(var_8C.Fields.Item("RevAmt")) 'Address
  loc_18C5352:       Proc_6_39_E7C810(var_F4, var_BC)
  loc_18C5362:       Set var_148 = Me.Txt
  loc_18C5368:       Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_14C)
  loc_18C538A:       Set var_150 = Me.Txt
  loc_18C5390:       Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_154)
  loc_18C53AB:       Set var_15C = Me.Txt
  loc_18C53B1:       Call 0.Method_Proc_124_101_18C75480 (CInt(&H11), var_160)
  loc_18C53CC:       Set var_1AC = Me.Txt
  loc_18C53D2:       Call 0.Method_Proc_124_101_18C75480 (CInt(&H12), var_1F0)
  loc_18C53E2:       var_200 = Now
  loc_18C53EC:       var_20C = 0
  loc_18C53F7:       var_208 = 0
  loc_18C5402:       var_1EC = 0
  loc_18C540B:       var_1E8 = "A"
  loc_18C5427:       var_E0 = "As Per Bill No :" & var_154.Text
  loc_18C5446:       var_198 = Trim(CVar(var_14C)) & CVar(var_E0 & " No of Paxs :" & var_160.Text & " @ " & var_1F0.Text) 
  loc_18C5452:       var_1E0 = vbNullString
  loc_18C545B:       var_114 = Abs(var_F4)
  loc_18C549E:       Proc_6_140_12D90F4(MemVar_1F92044, var_1A0, var_9A, var_C8, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F92070, var_124.Text)
  loc_18C5506:     End If
  loc_18C5506:   End If
  loc_18C550C:   var_9A = (var_9A + 1)
  loc_18C550F: End If
  loc_18C5526: var_C8 = "SELECT Sum(SunTransaction.Amt) AS RevAmt,max(SUNCODE) as SundryCode FROM (SunTransaction  LEFT JOIN RevMast ON SunTransaction.RevCode = RevMast.Code) LEFT JOIN Depart ON SunTransaction.RestCode = Depart.Code Where RestCode='" & global_56
  loc_18C552D: var_D8 = var_C8 & "'And SUNCODE='"
  loc_18C554C: Set var_C0 = Me.Txt
  loc_18C5552: Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_E0, var_D8 & MemVar_1F92070 & "NET' and DocID='", var_BC, -1, var_D0)
  loc_18C555A: var_9A = var_CC.Text
  loc_18C5573: unk_59EE5F.Execute var_D8 & var_E0 & "' Group By RestCode,Revcode Order by RestCode", CDbl(0), CSng(var_114)
  loc_18C557E: Set var_8C = var_D0
  loc_18C55B2: If (var_8C.RecordCount > 0) Then
  loc_18C55CC:   var_CC = var_8C.Fields.Item("RevAmt")
  loc_18C55DB:   Proc_6_39_E7C810(var_F4, CVar(var_CC), var_1E0)
  loc_18C55F5:   If (var_F4 > 0) Then
  loc_18C5606:     Set var_C0 = Me.Txt
  loc_18C560C:     Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_E0)
  loc_18C5614:     CStr(var_198) = var_CC.Text
  loc_18C5627:     Set var_D0 = Me.Txt
  loc_18C562D:     Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4)
  loc_18C5635:     var_C8 = var_D4.Tag
  loc_18C5648:     Set var_118 = Me.Txt
  loc_18C564E:     Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C)
  loc_18C5656:     var_164 = var_11C.Text
  loc_18C567B:     Set var_120 = Me.Txt
  loc_18C5681:     Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C569C:     Set var_128 = Me.Txt
  loc_18C56A2:     Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_12C)
  loc_18C56AA:     var_D8 = var_12C.Tag
  loc_18C56D5:     Proc_6_39_E7C810(var_F4, CVar(var_8C.Fields.Item("RevAmt")))
  loc_18C56E5:     Set var_148 = Me.Txt
  loc_18C56EB:     Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_14C)
  loc_18C570D:     Set var_150 = Me.Txt
  loc_18C5713:     Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_154)
  loc_18C5723:     var_198 = Now
  loc_18C572D:     var_1D4 = 0
  loc_18C5738:     var_1D0 = 0
  loc_18C5743:     var_1BC = 0
  loc_18C574C:     var_1B8 = "A"
  loc_18C576B:     var_188 = Trim(CVar(var_14C)) & CVar("As Per Bill No :" & var_154.Text) 
  loc_18C5777:     var_1B0 = vbNullString
  loc_18C57BF:     Proc_6_140_12D90F4(MemVar_1F92044, var_E0, var_9A, var_C8, CLng(var_164), Me.LblVPrefix.Caption, MemVar_1F92070, var_124.Text)
  loc_18C5816:   Else
  loc_18C582D:     var_CC = var_8C.Fields.Item("RevAmt")
  loc_18C583C:     Proc_6_39_E7C810(var_F4, CVar(var_CC), var_D8, CSng(var_F4), CDbl(0))
  loc_18C5856:     If (var_F4 < 0) Then
  loc_18C5867:       Set var_C0 = Me.Txt
  loc_18C586D:       Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_E0, var_1B0)
  loc_18C5875:       CStr(var_188) = var_CC.Text
  loc_18C5888:       Set var_D0 = Me.Txt
  loc_18C588E:       Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8)
  loc_18C5896:       MemVar_1F920C8 = var_D4.Tag
  loc_18C58A9:       Set var_118 = Me.Txt
  loc_18C58AF:       Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C, var_164)
  loc_18C58B7:       CDate(var_198) = var_11C.Text
  loc_18C58DC:       Set var_120 = Me.Txt
  loc_18C58E2:       Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C58FD:       Set var_128 = Me.Txt
  loc_18C5903:       Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_12C)
  loc_18C590B:       var_D8 = var_12C.Tag
  loc_18C592F:       var_BC = CVar(var_8C.Fields.Item("RevAmt")) 'Address
  loc_18C5936:       Proc_6_39_E7C810(var_F4, var_BC)
  loc_18C5946:       Set var_148 = Me.Txt
  loc_18C594C:       Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_14C)
  loc_18C596E:       Set var_150 = Me.Txt
  loc_18C5974:       Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_154)
  loc_18C5984:       var_200 = Now
  loc_18C598E:       var_1D4 = 0
  loc_18C5999:       var_1D0 = 0
  loc_18C59A4:       var_1BC = 0
  loc_18C59AD:       var_1B8 = "A"
  loc_18C59CC:       var_198 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C59D8:       var_1B0 = vbNullString
  loc_18C59E1:       var_114 = Abs(var_F4)
  loc_18C5A24:       Proc_6_140_12D90F4(MemVar_1F92044, var_E0, var_9A, var_C8, CLng(var_164), Me.LblVPrefix.Caption, MemVar_1F92070, var_124.Text)
  loc_18C5A78:     End If
  loc_18C5A78:   End If
  loc_18C5A7E:   var_9A = (var_9A + 1)
  loc_18C5A81: End If
  loc_18C5A95: var_C8 = "SELECT Sum(S.Amt) AS RevAmt, S.RevCode, Max(S.Vdate) AS VDate, Max(R.Name) AS Revenue, Max(S.SunCode) AS SundryCode, Max(R.ACCode) AS ACode,Max(ST.CalcSign) as CSign " & " FROM ((SunTransaction as S LEFT JOIN RevMast AS R ON S.RevCode = R.Code) LEFT JOIN Depart AS D ON S.RestCode = D.Code) LEFT JOIN SundryType AS ST ON S.SunAppDate = ST.AppDate AND ST.V_Type=S.Vtype and s.SunCode=st.sundrycode "
  loc_18C5A9C: var_DC = var_C8 & " WHERE (((S.RevCode) Is Not Null And (S.RevCode)<>'') AND ((S.DocId)='"
  loc_18C5AAD: Set var_C0 = Me.Txt
  loc_18C5AB3: Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_D8, var_DC, var_BC, -1, var_D0)
  loc_18C5ABB: var_9A = var_CC.Text
  loc_18C5ADB: unk_59EE5F.Execute var_D8 & var_D8 & "')) " & " GROUP BY S.RevCode, S.RestCode ORDER BY S.RestCode", CDbl(0), CSng(var_114)
  loc_18C5AE6: Set var_8C = var_D0
  loc_18C5B18: If (var_8C.RecordCount > 0) Then
  loc_18C5B1B:   ' Referenced from: 18C64E3
  loc_18C5B2A:   If Not(var_8C.EOF) Then
  loc_18C5B53:     Proc_6_39_E7C810(var_F4, CVar(var_8C.Fields.Item("RevAmt")), var_1B0)
  loc_18C5B6D:     If (var_F4 > 0) Then
  loc_18C5B8A:       var_CC = var_8C.Fields.Item("CSign")
  loc_18C5B9A:       var_104 = "-"
  loc_18C5BAC:       If (var_CC.Value = 0) Then
  loc_18C5BBD:         Set var_C0 = Me.Txt
  loc_18C5BC3:         Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_DC)
  loc_18C5BCB:         CStr(var_198) = var_CC.Text
  loc_18C5BDE:         Set var_D0 = Me.Txt
  loc_18C5BE4:         Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4)
  loc_18C5BEC:         var_C8 = var_D4.Tag
  loc_18C5BFF:         Set var_118 = Me.Txt
  loc_18C5C05:         Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C)
  loc_18C5C0D:         var_158 = var_11C.Text
  loc_18C5C32:         Set var_120 = Me.Txt
  loc_18C5C38:         Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C5C67:         var_200 = var_8C.Fields.Item("ACode").Value
  loc_18C5C92:         Proc_6_39_E7C810(var_F4, CVar(var_8C.Fields.Item("RevAmt")))
  loc_18C5CA2:         Set var_148 = Me.Txt
  loc_18C5CA8:         Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_14C)
  loc_18C5CCA:         Set var_150 = Me.Txt
  loc_18C5CD0:         Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_154)
  loc_18C5CE0:         var_198 = Now
  loc_18C5CEA:         var_1D0 = 0
  loc_18C5CF5:         var_1BC = 0
  loc_18C5D00:         var_1B8 = 0
  loc_18C5D09:         var_1B4 = "A"
  loc_18C5D28:         var_188 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C5D34:         var_1A8 = vbNullString
  loc_18C5D7D:         Proc_6_140_12D90F4(MemVar_1F92044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, var_124.Text)
  loc_18C5DD6:       Else
  loc_18C5DE4:         Set var_C0 = Me.Txt
  loc_18C5DEA:         Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_DC, CStr(var_200), CSng(var_F4), CDbl(0))
  loc_18C5DF2:         var_1A8 = var_CC.Text
  loc_18C5E05:         Set var_D0 = Me.Txt
  loc_18C5E0B:         Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8, CStr(var_188))
  loc_18C5E13:         MemVar_1F920C8 = var_D4.Tag
  loc_18C5E26:         Set var_118 = Me.Txt
  loc_18C5E2C:         Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C, var_158)
  loc_18C5E34:         CDate(var_198) = var_11C.Text
  loc_18C5E59:         Set var_120 = Me.Txt
  loc_18C5E5F:         Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C5E8E:         var_200 = var_8C.Fields.Item("ACode").Value
  loc_18C5EB9:         Proc_6_39_E7C810(var_F4, CVar(var_8C.Fields.Item("RevAmt")))
  loc_18C5EC9:         Set var_148 = Me.Txt
  loc_18C5ECF:         Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_14C)
  loc_18C5EF1:         Set var_150 = Me.Txt
  loc_18C5EF7:         Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_154)
  loc_18C5F07:         var_198 = Now
  loc_18C5F11:         var_1D0 = 0
  loc_18C5F1C:         var_1BC = 0
  loc_18C5F27:         var_1B8 = 0
  loc_18C5F30:         var_1B4 = "A"
  loc_18C5F4F:         var_188 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C5F5B:         var_1A8 = vbNullString
  loc_18C5FA4:         Proc_6_140_12D90F4(MemVar_1F92044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, var_124.Text)
  loc_18C5FFA:       End If
  loc_18C5FFD:     Else
  loc_18C6023:       Proc_6_39_E7C810(var_F4, CVar(var_8C.Fields.Item("RevAmt")), CStr(var_200), CDbl(0), CSng(var_F4))
  loc_18C603D:       If (var_F4 < 0) Then
  loc_18C605A:         var_CC = var_8C.Fields.Item("CSign")
  loc_18C606A:         var_104 = "-"
  loc_18C607C:         If (var_CC.Value = 0) Then
  loc_18C608D:           Set var_C0 = Me.Txt
  loc_18C6093:           Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_DC, var_1A8)
  loc_18C609B:           CStr(var_188) = var_CC.Text
  loc_18C60AE:           Set var_D0 = Me.Txt
  loc_18C60B4:           Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8)
  loc_18C60BC:           MemVar_1F920C8 = var_D4.Tag
  loc_18C60CF:           Set var_118 = Me.Txt
  loc_18C60D5:           Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C, var_158)
  loc_18C60DD:           CDate(var_198) = var_11C.Text
  loc_18C6102:           Set var_120 = Me.Txt
  loc_18C6108:           Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C6137:           var_220 = var_8C.Fields.Item("ACode").Value
  loc_18C6162:           Proc_6_39_E7C810(var_F4, CVar(var_8C.Fields.Item("RevAmt")))
  loc_18C6172:           Set var_148 = Me.Txt
  loc_18C6178:           Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_14C)
  loc_18C619A:           Set var_150 = Me.Txt
  loc_18C61A0:           Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_154)
  loc_18C61B0:           var_200 = Now
  loc_18C61BA:           var_1D0 = 0
  loc_18C61C5:           var_1BC = 0
  loc_18C61D0:           var_1B8 = 0
  loc_18C61D9:           var_1B4 = "A"
  loc_18C61F8:           var_198 = Trim(CVar(var_14C)) & CVar("As Per Bill No :" & var_154.Text) 
  loc_18C6204:           var_1A8 = vbNullString
  loc_18C620D:           var_114 = Abs(var_F4)
  loc_18C6251:           Proc_6_140_12D90F4(MemVar_1F92044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, var_124.Text)
  loc_18C62AA:         Else
  loc_18C62B8:           Set var_C0 = Me.Txt
  loc_18C62BE:           Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_DC, CStr(var_220), CDbl(0), CSng(var_114))
  loc_18C62C6:           var_1A8 = var_CC.Text
  loc_18C62D9:           Set var_D0 = Me.Txt
  loc_18C62DF:           Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8, CStr(var_198))
  loc_18C62E7:           MemVar_1F920C8 = var_D4.Tag
  loc_18C62FA:           Set var_118 = Me.Txt
  loc_18C6300:           Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C, var_158)
  loc_18C6308:           CDate(var_200) = var_11C.Text
  loc_18C632D:           Set var_120 = Me.Txt
  loc_18C6333:           Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C6362:           var_220 = var_8C.Fields.Item("ACode").Value
  loc_18C6386:           var_BC = CVar(var_8C.Fields.Item("RevAmt")) 'Address
  loc_18C638D:           Proc_6_39_E7C810(var_F4, var_BC)
  loc_18C639D:           Set var_148 = Me.Txt
  loc_18C63A3:           Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_14C)
  loc_18C63C5:           Set var_150 = Me.Txt
  loc_18C63CB:           Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_154)
  loc_18C63DB:           var_200 = Now
  loc_18C63E5:           var_1D0 = 0
  loc_18C63F0:           var_1BC = 0
  loc_18C63FB:           var_1B8 = 0
  loc_18C6404:           var_1B4 = "A"
  loc_18C6423:           var_198 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C642F:           var_1A8 = vbNullString
  loc_18C643F:           var_114 = Abs(var_F4)
  loc_18C647C:           Proc_6_140_12D90F4(MemVar_1F92044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, var_124.Text)
  loc_18C64D2:         End If
  loc_18C64D2:       End If
  loc_18C64D2:     End If
  loc_18C64D8:     var_9A = (var_9A + 1)
  loc_18C64DE:     var_8C.MoveNext
  loc_18C64E3:     GoTo loc_18C5B1B
  loc_18C64E6:   End If
  loc_18C64E6: End If
  loc_18C64FA: var_D8 = "SELECT Sum(P.aMOUNT) as Amount, Max(IC.AcName) as AccName " & " FROM HALLSTOCK AS P LEFT JOIN (ItemMast AS I LEFT JOIN ItemCatMast AS IC ON I.ItemCatCode = IC.Code) ON P.Item = I.Code Where DocID='"
  loc_18C650B: Set var_C0 = Me.Txt
  loc_18C6511: Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_C8, var_D8, var_BC, -1, var_D0)
  loc_18C6519: var_9A = var_CC.Text
  loc_18C6522: var_DC = CStr(var_220) & var_C8
  loc_18C6532: unk_59EE5F.Execute var_DC & "' Group By IC.Code ", CSng(var_114), CDbl(0)
  loc_18C653D: Set var_8C = var_D0
  loc_18C656B: If (var_8C.RecordCount > 0) Then
  loc_18C656E:   ' Referenced from: 18C6A66
  loc_18C657D:   If Not(var_8C.EOF) Then
  loc_18C6597:     var_CC = var_8C.Fields.Item("Amount")
  loc_18C65A6:     Proc_6_39_E7C810(var_F4, CVar(var_CC), var_1A8)
  loc_18C65C0:     If (var_F4 > 0) Then
  loc_18C65D1:       Set var_C0 = Me.Txt
  loc_18C65D7:       Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_DC)
  loc_18C65DF:       CStr(var_198) = var_CC.Text
  loc_18C65F2:       Set var_D0 = Me.Txt
  loc_18C65F8:       Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4)
  loc_18C6600:       var_C8 = var_D4.Tag
  loc_18C6613:       Set var_118 = Me.Txt
  loc_18C6619:       Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C)
  loc_18C6621:       var_158 = var_11C.Text
  loc_18C6646:       Set var_120 = Me.Txt
  loc_18C664C:       Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C667B:       var_200 = var_8C.Fields.Item("ACCNAME").Value
  loc_18C66A6:       Proc_6_39_E7C810(var_F4, CVar(var_8C.Fields.Item("Amount")))
  loc_18C66B6:       Set var_148 = Me.Txt
  loc_18C66BC:       Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_14C)
  loc_18C66DE:       Set var_150 = Me.Txt
  loc_18C66E4:       Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_154)
  loc_18C66F4:       var_198 = Now
  loc_18C66FE:       var_1D0 = 0
  loc_18C6709:       var_1BC = 0
  loc_18C6714:       var_1B8 = 0
  loc_18C671D:       var_1B4 = "A"
  loc_18C673C:       var_188 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C6748:       var_1A8 = vbNullString
  loc_18C6791:       Proc_6_140_12D90F4(MemVar_1F92044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, var_124.Text)
  loc_18C67EA:     Else
  loc_18C6801:       var_CC = var_8C.Fields.Item("Amount")
  loc_18C6810:       Proc_6_39_E7C810(var_F4, CVar(var_CC), CStr(var_200), CDbl(0), CSng(var_F4))
  loc_18C682A:       If (var_F4 < 0) Then
  loc_18C683B:         Set var_C0 = Me.Txt
  loc_18C6841:         Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_DC, var_1A8)
  loc_18C6849:         CStr(var_188) = var_CC.Text
  loc_18C685C:         Set var_D0 = Me.Txt
  loc_18C6862:         Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8)
  loc_18C686A:         MemVar_1F920C8 = var_D4.Tag
  loc_18C687D:         Set var_118 = Me.Txt
  loc_18C6883:         Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C, var_158)
  loc_18C688B:         CDate(var_198) = var_11C.Text
  loc_18C68B0:         Set var_120 = Me.Txt
  loc_18C68B6:         Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C68E5:         var_220 = var_8C.Fields.Item("ACCNAME").Value
  loc_18C6909:         var_BC = CVar(var_8C.Fields.Item("Amount")) 'Address
  loc_18C6910:         Proc_6_39_E7C810(var_F4, var_BC)
  loc_18C6920:         Set var_148 = Me.Txt
  loc_18C6926:         Call 0.Method_Proc_124_101_18C75480 (CInt(3), var_14C)
  loc_18C6948:         Set var_150 = Me.Txt
  loc_18C694E:         Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_154)
  loc_18C695E:         var_200 = Now
  loc_18C6968:         var_1D0 = 0
  loc_18C6973:         var_1BC = 0
  loc_18C697E:         var_1B8 = 0
  loc_18C6987:         var_1B4 = "A"
  loc_18C69A6:         var_198 = Trim(CVar(var_14C)) & CVar(" As Per Bill No :" & var_154.Text) 
  loc_18C69B2:         var_1A8 = vbNullString
  loc_18C69C2:         var_114 = Abs(var_F4)
  loc_18C69FF:         Proc_6_140_12D90F4(MemVar_1F92044, var_DC, var_9A, var_C8, CLng(var_158), Me.LblVPrefix.Caption, MemVar_1F92070, var_124.Text)
  loc_18C6A55:       End If
  loc_18C6A55:     End If
  loc_18C6A5B:     var_9A = (var_9A + 1)
  loc_18C6A61:     var_8C.MoveNext
  loc_18C6A66:     GoTo loc_18C656E
  loc_18C6A69:   End If
  loc_18C6A69: End If
  loc_18C6A87: Set var_C0 = Me.Txt
  loc_18C6A8D: Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_C8, "Select (AmtCr-AmtDr) as CreditAmt,PayCode,Comments,Accode,CardNo,RestCode,PaychargeH.PayType,revmast.name as RevenueName,revmast.PayableAc,PaychargeH.ChqNo as ChqNo,PaychargeH.ChqDate as ChqDate from PaychargeH Left Join RevMast on Revmast.Code=PayChargeH.PayCode where PayChargeH.Docid In (SELECT Distinct PH.DocId FROM PayChargeH PH Left Join HallSale1 HS On PH.ContraDocid=HS.BookDocId WHERE PH.VType In ('AD','AR') AND HS.DocId ='", var_BC, -1, var_D0)
  loc_18C6A95: var_9A = var_CC.Text
  loc_18C6A9E: var_D8 = CStr(var_220) & var_C8
  loc_18C6AC4: var_164 = var_D8 & "') And PaychargeH.SITE_CODE='" & MemVar_1F92070 & "' AND RestCode='" & global_56 & "' And IsNull(revmast.PayableAc,'')<>''"
  loc_18C6ACD: unk_59EE5F.Execute var_164, CSng(var_114), CDbl(0)
  loc_18C6AD8: Set var_98 = var_D0
  loc_18C6AF8: ' Referenced from: 18C7544
  loc_18C6B07: If Not(var_98.EOF) Then
  loc_18C6B24:   var_CC = var_98.Fields.Item("CreditAmt")
  loc_18C6B46:   If (var_CC.Value < 0) Then
  loc_18C6B4F:     var_9A = (var_9A + 1)
  loc_18C6B60:     Set var_C0 = Me.Txt
  loc_18C6B66:     Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_D8, var_9A)
  loc_18C6B6E:     var_1A8 = var_CC.Text
  loc_18C6B81:     Set var_D0 = Me.Txt
  loc_18C6B87:     Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8)
  loc_18C6B8F:     CStr(var_198) = var_D4.Tag
  loc_18C6BA2:     Set var_118 = Me.Txt
  loc_18C6BA8:     Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C)
  loc_18C6BB0:     var_E4 = var_11C.Text
  loc_18C6BD5:     Set var_120 = Me.Txt
  loc_18C6BDB:     Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124)
  loc_18C6BE3:     var_168 = var_124.Text
  loc_18C6CB4:     var_1D0 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("ChqNo")))
  loc_18C6CDF:     var_1D4 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("ChqDate")))
  loc_18C6CE7:     var_1BC = 0
  loc_18C6CFE:     var_1B0 = "A"
  loc_18C6D67:     Proc_6_140_12D90F4(MemVar_1F92044, var_D8, var_9A, var_C8, CLng(var_E4), Me.LblVPrefix.Caption, MemVar_1F92070, var_168)
  loc_18C6DCB:     var_9A = (var_9A + 1)
  loc_18C6DDC:     Set var_C0 = Me.Txt
  loc_18C6DE2:     Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_D8, var_9A, CStr(var_98.Fields.Item("PayableAc").Value), CSng(Abs(var_98.Fields.Item("CreditAmt").Value)))
  loc_18C6DEA:     CDbl(0) = var_CC.Text
  loc_18C6DFD:     Set var_D0 = Me.Txt
  loc_18C6E03:     Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8, CStr(var_98.Fields.Item("AcCode").Value))
  loc_18C6E0B:     CStr(var_98.Fields.Item("Comments").Value) = var_D4.Tag
  loc_18C6E1E:     Set var_118 = Me.Txt
  loc_18C6E24:     Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C, var_E4)
  loc_18C6E2C:     MemVar_1F920C8 = var_11C.Text
  loc_18C6E51:     Set var_120 = Me.Txt
  loc_18C6E57:     Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124, var_168)
  loc_18C6E5F:     CDate(Now) = var_124.Text
  loc_18C6E86:     var_188 = var_98.Fields.Item("AcCode").Value
  loc_18C6ED4:     var_198 = var_98.Fields.Item("PayableAc").Value
  loc_18C6EFB:     var_200 = var_98.Fields.Item("Comments").Value
  loc_18C6F03:     var_114 = Now
  loc_18C6F30:     var_1D0 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("ChqNo")))
  loc_18C6F5B:     var_1D4 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("ChqDate")))
  loc_18C6F63:     var_1BC = 0
  loc_18C6F7A:     var_1B0 = "A"
  loc_18C6F9F:     var_F4 = Abs(var_98.Fields.Item("CreditAmt").Value)
  loc_18C6FE3:     Proc_6_140_12D90F4(MemVar_1F92044, var_D8, var_9A, var_C8, CLng(var_E4), Me.LblVPrefix.Caption, MemVar_1F92070, var_168)
  loc_18C7044:   Else
  loc_18C704A:     var_9A = (var_9A + 1)
  loc_18C705B:     Set var_C0 = Me.Txt
  loc_18C7061:     Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_D8, var_9A, CStr(var_188), CDbl(0))
  loc_18C7069:     CSng(var_F4) = var_CC.Text
  loc_18C707C:     Set var_D0 = Me.Txt
  loc_18C7082:     Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8, CStr(var_198))
  loc_18C708A:     CStr(var_200) = var_D4.Tag
  loc_18C709D:     Set var_118 = Me.Txt
  loc_18C70A3:     Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C, var_E4)
  loc_18C70AB:     MemVar_1F920C8 = var_11C.Text
  loc_18C70D0:     Set var_120 = Me.Txt
  loc_18C70D6:     Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124, var_168)
  loc_18C70DE:     CDate(var_114) = var_124.Text
  loc_18C71AF:     var_1D0 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("ChqNo")))
  loc_18C71DA:     var_1D4 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("ChqDate")))
  loc_18C71E2:     var_1BC = 0
  loc_18C71F9:     var_1B0 = "A"
  loc_18C7262:     Proc_6_140_12D90F4(MemVar_1F92044, var_D8, var_9A, var_C8, CLng(var_E4), Me.LblVPrefix.Caption, MemVar_1F92070, var_168)
  loc_18C72C6:     var_9A = (var_9A + 1)
  loc_18C72D7:     Set var_C0 = Me.Txt
  loc_18C72DD:     Call 0.Method_Proc_124_101_18C75480 (CInt(4), var_CC, var_D8, var_9A, CStr(var_98.Fields.Item("AcCode").Value), CSng(Abs(var_98.Fields.Item("CreditAmt").Value)))
  loc_18C72E5:     CDbl(0) = var_CC.Text
  loc_18C72F8:     Set var_D0 = Me.Txt
  loc_18C72FE:     Call 0.Method_Proc_124_101_18C75480 (CInt(0), var_D4, var_C8, CStr(var_98.Fields.Item("PayableAc").Value))
  loc_18C7306:     CStr(var_98.Fields.Item("Comments").Value) = var_D4.Tag
  loc_18C7319:     Set var_118 = Me.Txt
  loc_18C731F:     Call 0.Method_Proc_124_101_18C75480 (CInt(1), var_11C, var_E4)
  loc_18C7327:     MemVar_1F920C8 = var_11C.Text
  loc_18C734C:     Set var_120 = Me.Txt
  loc_18C7352:     Call 0.Method_Proc_124_101_18C75480 (CInt(2), var_124, var_168)
  loc_18C735A:     CDate(Now) = var_124.Text
  loc_18C7381:     var_188 = var_98.Fields.Item("PayableAc").Value
  loc_18C73CF:     var_198 = var_98.Fields.Item("AcCode").Value
  loc_18C73F6:     var_200 = var_98.Fields.Item("Comments").Value
  loc_18C73FE:     var_114 = Now
  loc_18C742B:     var_1D0 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("ChqNo")))
  loc_18C7456:     var_1D4 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("ChqDate")))
  loc_18C745E:     var_1BC = 0
  loc_18C7475:     var_1B0 = "A"
  loc_18C749A:     var_F4 = Abs(var_98.Fields.Item("CreditAmt").Value)
  loc_18C74DE:     Proc_6_140_12D90F4(MemVar_1F92044, var_D8, var_9A, var_C8, CLng(var_E4), Me.LblVPrefix.Caption, MemVar_1F92070, var_168)
  loc_18C753C:   End If
  loc_18C753F:   var_98.MoveNext
  loc_18C7544:   GoTo loc_18C6AF8
  loc_18C7547: End If
  loc_18C7547: Exit Sub
End Sub

Public Sub Proc_124_102_1B778A4
  'Data Table: 59EE40
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_59F0CC As Connection15
  Dim var_EE As Integer
  Dim var_238 As Recordset15
  Dim var_B4 As Fields
  Dim unk_59EE5F As Connection15
  Dim var_24C As Variant
  Dim var_250 As String
  Dim var_260 As String
  Dim var_258 As Variant
  Dim var_E8 As Recordset15
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_248 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_2F0 As Variant
  Dim var_290 As Variant
  Dim var_120 As Recordset15
  Dim var_EC As Recordset15
  Dim var_254 As Variant
  Dim var_144 As Double
  Dim var_100 As Recordset15
  Dim var_2F8 As Recordset15
  Dim var_14C As Double
  Dim var_2FC As Recordset15
  Dim var_118 As Recordset15
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim MemVar_1F923C8 As String
  Dim Me As Recordset15
  Dim var_184 As Recordset15
  Dim var_32C As Variant
  Dim var_35C As String
  Dim var_36C As Variant
  Dim var_37C As String
  Dim var_26C As Variant
  Dim var_B6 As Integer
  Dim var_124 As Recordset15
  Dim var_188 As Recordset15
  loc_1B72968: unk_59F0CC.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92070 & "FOM'", var_B0, -1
  loc_1B72973: Set var_88 = var_B4
  loc_1B72983: On Error Goto loc_1B77888
  loc_1B72988: var_EE = 1
  loc_1B72991: Set var_238 = var_234 
  loc_1B729B9: var_238.Fields.Append "mLine", &HC8, &HA
  loc_1B729E5: var_238.Fields.Append "SNo", &HC8, &HA
  loc_1B72A11: var_238.Fields.Append "HSNCode", &HC8, &H1E
  loc_1B72A3D: var_238.Fields.Append "Item", &HC8, &H32
  loc_1B72A69: var_238.Fields.Append "ItemRemark", &HC8, &H4B
  loc_1B72A95: var_238.Fields.Append "Qty", &HC8, &HA
  loc_1B72AC1: var_238.Fields.Append "Rate", &HC8, &HA
  loc_1B72AED: var_238.Fields.Append "Amount", &HC8, &HA
  loc_1B72B19: var_238.Fields.Append "Mark", &HC8, &HA
  loc_1B72B3D: var_B4 = var_238.Fields
  loc_1B72B45: var_B4.Append "QRImage", &HCD, &H3E8
  loc_1B72B55: var_238.CursorType = 3
  loc_1B72B62: var_238.LockType = 3
  loc_1B72B81: var_238.Open var_A0, var_248, -1
  loc_1B72B88: Set var_238 = Nothing 
  loc_1B72BA0: var_8C = "Select * from Enviro where LOgSite_code='" & MemVar_1F92078
  loc_1B72BB0: unk_59EE5F.Execute var_8C & "'", var_B0, -1
  loc_1B72BBB: Set var_120 = var_B4
  loc_1B72BE9: Set var_B4 = Me.Txt
  loc_1B72BEF: Call 0.Method_Proc_124_102_1B778A40 (CInt(4), var_24C, var_8C, "select max(Q.name) as TaxName,Q.code,Q.TaxPer,sum(Q.TaxAmt) as TaxAmt,sum(Q.BaseValue) as TaxableAmt from (select Revmast.name,Revmast.code,TaxPer,TaxAmt,BaseValue from HallSale2 left join revmast on revmast.code=HallSale2.Taxcode where HallSale2.DocID='", var_B0, -1, var_26C)
  loc_1B72BF7: var_B4 = var_24C.Text
  loc_1B72C00: var_90 = -1 & var_8C
  loc_1B72C0E: var_260 = var_8C & "'" & "' Union All " & "select Revmast.name,Revmast.code,Svalue,Amount,BaseAmount from SunTranH left join revmast on revmast.code=SunTranH.RevCode Where revmast.FieldType='T' And SValue>0 And Amount>0 And DocId='"
  loc_1B72C1F: Set var_254 = Me.Txt
  loc_1B72C25: Call 0.Method_Proc_124_102_1B778A40 (CInt(4), var_258, var_25C, var_260, -1)
  loc_1B72C2D: &H20 = var_258.Text
  loc_1B72C46: unk_59EE5F.Execute var_A0 & var_25C & "')Q  group by Q.code,Q.TaxPer Order by Q.TaxPer", &H20, var_A0
  loc_1B72C51: Set var_188 = var_26C
  loc_1B72C93: Set var_B4 = Me.Txt
  loc_1B72C99: Call 0.Method_Proc_124_102_1B778A40 (CInt(4), var_24C, var_8C, "SELECT S.*, I.Name AS ItemName, I.CommodityCode AS HSNCode, I.Type, ItemCatMast.CatType FROM (HallStock AS S LEFT JOIN ItemMast AS I ON S.Item = I.Code And S.RestCode = I.RestCode) LEFT JOIN ItemCatMast ON I.ItemCatCode = ItemCatMast.Code Where S.DocId='")
  loc_1B72CA1: var_B0 = var_24C.Text
  loc_1B72CAA: var_90 = -1 & var_8C
  loc_1B72CBA: unk_59EE5F.Execute var_8C & "'" & "' AND QTYIss>0", var_254, 
  loc_1B72CC5: Set var_100 = var_254
  loc_1B72CFB: Set var_B4 = Me.Txt
  loc_1B72D01: Call 0.Method_Proc_124_102_1B778A40 (CInt(7), var_24C, var_8C, "Select HB.*, SG.Name AS CompanyName, SG.Add1 AS CompanyAdd1, SG.Add2 AS CompanyAdd2, SG.Add3 AS CompanyAdd3,C.CityName,ST.ShortName StateCode,ST.Name State,SG.GSTIN,SG.PANNo CompPANNo,SG.PIN CompPIN,F.Name As FunctionName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode left join FunctionType F On HB.Func_Name=F.Code Left Join City C on SG.CityCode=C.CityCode Left Join State ST on C.State=ST.Code WHERE HB.DocId='")
  loc_1B72D09: var_B0 = var_24C.Tag
  loc_1B72D12: var_90 = -1 & var_8C
  loc_1B72D22: unk_59EE5F.Execute var_8C & "'" & "'", var_254, 
  loc_1B72D2D: Set var_E8 = var_254
  loc_1B72D63: Set var_B4 = Me.Txt
  loc_1B72D69: Call 0.Method_Proc_124_102_1B778A40 (CInt(7), var_24C, var_8C, "SELECT * FROM Hallsale1 WHERE BookDocId='")
  loc_1B72D71: var_B0 = var_24C.Tag
  loc_1B72D7A: var_90 = -1 & var_8C
  loc_1B72D8A: unk_59EE5F.Execute var_8C & "'" & "'", var_254, 
  loc_1B72D95: Set var_EC = var_254
  loc_1B72DCB: Set var_B4 = Me.Txt
  loc_1B72DD1: Call 0.Method_Proc_124_102_1B778A40 (CInt(7), var_24C, var_8C, "SELECT VenueMast.Name as VenueName,VenueOcc.* FROM VenueOcc LEFT JOIN VenueMast ON VenueOcc.VenuCode = VenueMast.Code Where FPdocid='")
  loc_1B72DD9: var_B0 = var_24C.Tag
  loc_1B72DE2: var_90 = -1 & var_8C
  loc_1B72DF2: unk_59EE5F.Execute var_8C & "'" & "'", var_254, 
  loc_1B72DFD: Set var_124 = var_254
  loc_1B72E29: If (var_E8.RecordCount <= 0) Then
  loc_1B72E2C:   Exit Sub
  loc_1B72E2D: End If
  loc_1B72E64: var_158 = CStr(Mid(CVar(var_E8.Fields.Item("RestCode")), 2, var_280))
  loc_1B72E8B: var_280 = ("UPTT No. :" + Trim(MemVar_1F92148))
  loc_1B72E90: var_18C = CStr(var_280)
  loc_1B72EB2: var_280 = ("CST No.  :" + Trim(MemVar_1F9214C))
  loc_1B72EB7: var_190 = CStr(var_280)
  loc_1B72EC4: var_1AC = MemVar_1F92130
  loc_1B72EDF: var_280 = (Trim(MemVar_1F92134) + " ")
  loc_1B72EF6: var_2B0 = (var_280 + Trim(MemVar_1F9213C))
  loc_1B72EFF: var_2D0 = (var_2B0 + " ")
  loc_1B72F09: var_2F0 = (var_2D0 + CVar(MemVar_1F9215C))
  loc_1B72F0E: var_1A8 = CStr(var_2F0)
  loc_1B72F35: var_1BC = "Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144
  loc_1B72F57: var_280 = ("SUBJECT TO " + Trim(MemVar_1F9213C))
  loc_1B72F60: var_290 = (var_280 + " JURISDITION")
  loc_1B72F65: var_10C = CStr(Trim(MemVar_1F9213C))
  loc_1B72F99: var_1A0 = Proc_6_38_E68A98(CVar(var_120.Fields.Item("Bill_Header")))
  loc_1B72FD9: var_15C = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E8.Fields.Item("FunctionName"))))))
  loc_1B7303A: var_D8 = CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_E8.Fields.Item("VDate")))), "dd/MMM/yyyy"))
  loc_1B7307C: var_290 = Trim(CVar(Proc_6_38_E68A98(CVar(var_E8.Fields.Item("PanNo")), 1)))
  loc_1B73085: var_160 = CStr(var_290)
  loc_1B730AB: var_24C = var_EC.Fields.Item("Party")
  loc_1B730D0: var_19C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_24C)), &H4B)
  loc_1B730EE: Set var_B4 = Me.Txt
  loc_1B730F4: Call 0.Method_Proc_124_102_1B778A40 (CInt(1), var_24C)
  loc_1B73104: var_194 = var_24C.Text
  loc_1B7315F: Proc_6_39_E7C810(var_290, CVar(var_EC.Fields.Item("VNo")))
  loc_1B73173: var_FC = Proc_96_43_F99184(Proc_6_38_E68A98(CVar(var_EC.Fields.Item("vType"))), var_290)
  loc_1B731C4: var_1F0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E8.Fields.Item("Add1"))))))
  loc_1B7320A: var_1F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E8.Fields.Item("Add2"))))))
  loc_1B73250: var_1F8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E8.Fields.Item("City"))))))
  loc_1B73296: var_1FC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E8.Fields.Item("PinCode"))))))
  loc_1B732CD: var_1B0 = Proc_6_38_E68A98(CVar(var_E8.Fields.Item("CompanyAdd1")))
  loc_1B732FE: var_1B4 = Proc_6_38_E68A98(CVar(var_E8.Fields.Item("CompanyAdd2")))
  loc_1B7332F: var_1B8 = Proc_6_38_E68A98(CVar(var_E8.Fields.Item("CompanyAdd3")))
  loc_1B73360: var_128 = Proc_6_38_E68A98(CVar(var_E8.Fields.Item("CityName")))
  loc_1B73391: var_12C = Proc_6_38_E68A98(CVar(var_E8.Fields.Item("StateCode")))
  loc_1B733C2: var_130 = Proc_6_38_E68A98(CVar(var_E8.Fields.Item("State")))
  loc_1B733F3: var_134 = Proc_6_38_E68A98(CVar(var_E8.Fields.Item("GSTIN")))
  loc_1B73424: var_138 = Proc_6_38_E68A98(CVar(var_E8.Fields.Item("CompPanNo")))
  loc_1B73444: var_24C = var_E8.Fields.Item("CompPIN")
  loc_1B73455: var_13C = Proc_6_38_E68A98(CVar(var_24C))
  loc_1B73469: Set var_B4 = Me.Txt
  loc_1B7346F: Call 0.Method_Proc_124_102_1B778A40 (CInt(2), var_24C)
  loc_1B7347E: var_A0 = "dd-MMM-yyyy"
  loc_1B734AB: var_198 = Proc_6_45_EAD428(CStr(Format(CVar(var_24C), "CompPIN")), &HB, 1)
  loc_1B734D6: var_24C = var_EC.Fields.Item("U_Name")
  loc_1B734E7: var_110 = Proc_6_38_E68A98(CVar(var_24C), 1)
  loc_1B734FB: Set var_B4 = Me.Txt
  loc_1B73501: Call 0.Method_Proc_124_102_1B778A40 (CInt(&H19), var_24C)
  loc_1B73510: var_280 = Trim(CVar(var_24C))
  loc_1B73519: var_17C = CStr(var_280)
  loc_1B7353A: If (var_EC.RecordCount > 0) Then
  loc_1B73563:   Proc_6_39_E7C810(var_280, CVar(var_EC.Fields.Item("Advance")))
  loc_1B7358C:   var_164 = CStr(Format(var_280, "0.00"))
  loc_1B735E2:   If (CDbl(Val(CStr(var_EC.Fields.Item("NoofPax").Value))) > CDbl(0)) Then
  loc_1B73610:     Proc_6_39_E7C810(var_280, CVar(var_EC.Fields.Item("TotalPerCover")), 1)
  loc_1B73621:     var_144 = Val(CStr(var_280))
  loc_1B7368C:     var_280 = "Pax " & var_EC.Fields.Item("NoofPax").Value 
  loc_1B736AA:     var_168 = Proc_6_45_EAD428(CStr(var_280 & " @ " & var_EC.Fields.Item("RatePerPax").Value), &H1D, var_144)
  loc_1B736EE:     Proc_6_39_E7C810(var_280, CVar(var_EC.Fields.Item("NoofPax")), 1)
  loc_1B736F7:     var_16C = CStr(var_280)
  loc_1B7371B:     var_24C = var_EC.Fields.Item("RatePerPax")
  loc_1B7372A:     Proc_6_39_E7C810(var_280, CVar(var_24C))
  loc_1B73753:     var_170 = CStr(Format(var_280, "0.00"))
  loc_1B7376E:     var_248 = "0.00"
  loc_1B7377C:     var_A0 = var_144
  loc_1B7378D:     var_174 = CStr(Format(var_A0, var_248))
  loc_1B737A2:     Set var_B4 = Me.Txt
  loc_1B737A8:     Call 0.Method_Proc_124_102_1B778A40 (CInt(&H18), var_24C, 1, 1)
  loc_1B737B7:     var_280 = Trim(CVar(var_24C))
  loc_1B737D5:     If (CStr(var_280) = vbNullString) Then
  loc_1B737DB:       var_178 = var_168
  loc_1B737DE:     End If
  loc_1B737E1:   Else
  loc_1B737E3:     var_EE = 0
  loc_1B737E6:   End If
  loc_1B737E6: End If
  loc_1B737FA: If (var_100.RecordCount = 0) Then
  loc_1B73803:   Set var_2F8 = var_234 
  loc_1B73812:   var_2F8.AddNew var_A0, var_248
  loc_1B7382D:   Set var_24C = var_234 
  loc_1B7383D:   Proc_142_0_F96C2C(Me.QrImage, var_24C, "QrImage", var_EE)
  loc_1B73848:   Set var_234 = var_24C
  loc_1B73862:   var_2F8.Update var_A0, var_248
  loc_1B73869:   Set var_2F8 = Nothing 
  loc_1B7386D:   ' Referenced from: 1B73C93
  loc_1B7386D: End If
  loc_1B7387C: If Not(var_100.EOF) Then
  loc_1B73885:   var_EE = (var_EE + 1)
  loc_1B7388B:   var_A0 = "Amount"
  loc_1B738AE:   Proc_6_39_E7C810(var_280, CVar(var_100.Fields.Item(var_A0)), var_EE, 1)
  loc_1B738BF:   var_14C = Val(CStr(var_280))
  loc_1B738D6:   var_144 = (var_144 + var_14C)
  loc_1B738DF:   Set var_2FC = var_234 
  loc_1B738EE:   var_2FC.AddNew var_A0, var_248
  loc_1B73918:   var_2FC.Fields.Item("mLine").Value = vbNullString
  loc_1B73953:   var_2FC.Fields.Item("SNo").Value = CVar(CStr(var_EE) & ".")
  loc_1B739B0:   var_2FC.Fields.Item("HSNCode").Value = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("HSNCode")), var_144, var_14C))
  loc_1B73A10:   var_2FC.Fields.Item("Item").Value = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("ItemName")), 1))
  loc_1B73A52:   var_280 = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("Remarks")), "(")) 'String
  loc_1B73A60:   var_2B0 = (1 + Trim(var_280))
  loc_1B73A69:   var_2D0 = (Format(var_280, "0.00") + ")")
  loc_1B73A8D:   var_2FC.Fields.Item("ItemRemark").Value = var_280 & " @ " & var_EC.Fields.Item("RatePerPax").Value
  loc_1B73ACE:   Proc_6_39_E7C810(var_280, CVar(var_100.Fields.Item("QtyIss")))
  loc_1B73AF6:   var_2FC.Fields.Item("qty").Value = var_280
  loc_1B73B31:   Proc_6_39_E7C810(var_280, CVar(var_100.Fields.Item("Rate")))
  loc_1B73B51:   var_2B0 = Format(var_280, "0.00")
  loc_1B73B79:   var_2FC.Fields.Item("Rate").Value = var_2B0
  loc_1B73BDA:   var_2FC.Fields.Item("Amount").Value = Format(var_14C, "0.00")
  loc_1B73BED:   var_248 = "*"
  loc_1B73BF6:   var_A0 = "Mark"
  loc_1B73C12:   var_2FC.Fields.Item(var_A0).Value = var_248
  loc_1B73C32:   If (var_100.AbsolutePosition = 1) Then
  loc_1B73C39:     Set var_254 = Me.QrImage
  loc_1B73C4B:     Set var_24C = var_234 
  loc_1B73C5B:     Proc_142_0_F96C2C(var_254, var_24C, "QrImage", 1)
  loc_1B73C66:     Set var_234 = var_24C
  loc_1B73C75:   End If
  loc_1B73C80:   var_2FC.Update var_A0, var_248
  loc_1B73C87:   Set var_2FC = Nothing 
  loc_1B73C8E:   var_100.MoveNext
  loc_1B73C93:   GoTo loc_1B7386D
  loc_1B73C96: End If
  loc_1B73C9E: var_100.Requery -1
  loc_1B73CA6: var_EC.MoveFirst
  loc_1B73CB8: var_248 = "SELECT ST.SNo,ST.SunCode,ST.DispName,ST.Svalue,ST.Amt AS Amount,SM.Name AS SName FROM SunTransaction AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='"
  loc_1B73CFE: unk_59EE5F.Execute CStr(var_248 & var_EC.Fields.Item("DocID").Value & "' Order by SNo"), var_2B0, -1
  loc_1B73D09: Set var_118 = var_254
  loc_1B73D29: var_270 = var_118.RecordCount
  loc_1B73D37: If (var_270 > 0) Then
  loc_1B73D3D:   var_118.MoveFirst
  loc_1B73D42:   ' Referenced from: 1B74519
  loc_1B73D51:   If Not(var_118.EOF) Then
  loc_1B73DA8:     If (Ucase(Trim(CVar(var_118.Fields.Item("SunCode")))) = CVar(MemVar_1F92078 & "NET")) Then
  loc_1B73DDB:       var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B73DE4:       var_218 = CStr(var_280)
  loc_1B73E17:       Proc_6_39_E7C810(var_280, CVar(var_118.Fields.Item("Amount")), var_254, 1)
  loc_1B73E40:       var_1E0 = CStr(Format(var_280, "0.00"))
  loc_1B73E54:       var_118.MoveNext
  loc_1B73E6A:       If (var_118.EOF = &HFF) Then
  loc_1B73E6D:         GoTo loc_1B7451C
  loc_1B73E70:       End If
  loc_1B73E70:     End If
  loc_1B73E9A:     var_30C = var_118.Fields.Item("SNo").Value 'Variant
  loc_1B73EB0:     If (var_30C = 1) Then
  loc_1B73EE3:       var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B73EEC:       var_200 = CStr(var_280)
  loc_1B73F1F:       Proc_6_39_E7C810(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B73F48:       var_1C0 = CStr(Format(var_280, "0.00"))
  loc_1B73F5C:     Else
  loc_1B73F67:       If (var_30C = 2) Then
  loc_1B73F9A:         var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B73FA3:         var_204 = CStr(var_280)
  loc_1B73FD6:         Proc_6_39_E7C810(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B73FFF:         var_1C4 = CStr(Format(var_280, "0.00"))
  loc_1B74013:       Else
  loc_1B7401E:         If (var_30C = 3) Then
  loc_1B74051:           var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7405A:           var_210 = CStr(var_280)
  loc_1B7408D:           Proc_6_39_E7C810(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B740B6:           var_1D8 = CStr(Format(var_280, "0.00"))
  loc_1B740CA:         Else
  loc_1B740D5:           If (var_30C = 4) Then
  loc_1B74108:             var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B74111:             var_208 = CStr(var_280)
  loc_1B74144:             Proc_6_39_E7C810(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B7416D:             var_1C8 = CStr(Format(var_280, "0.00"))
  loc_1B74181:           Else
  loc_1B7418C:             If (var_30C = 5) Then
  loc_1B741BF:               var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B741C8:               var_20C = CStr(var_280)
  loc_1B741FB:               Proc_6_39_E7C810(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B74224:               var_1CC = CStr(Format(var_280, "0.00"))
  loc_1B74238:             Else
  loc_1B74243:               If (var_30C = 6) Then
  loc_1B74276:                 var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B7427F:                 var_214 = CStr(var_280)
  loc_1B742B2:                 Proc_6_39_E7C810(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B742DB:                 var_1DC = CStr(Format(var_280, "0.00"))
  loc_1B742EF:               Else
  loc_1B742FA:                 If (var_30C = 7) Then
  loc_1B7432D:                   var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B74336:                   var_21C = CStr(var_280)
  loc_1B74369:                   Proc_6_39_E7C810(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B74392:                   var_1E4 = CStr(Format(var_280, "0.00"))
  loc_1B743A6:                 Else
  loc_1B743B1:                   If (var_30C = 8) Then
  loc_1B743E4:                     var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B743ED:                     var_220 = CStr(var_280)
  loc_1B74420:                     Proc_6_39_E7C810(var_280, CVar(var_118.Fields.Item("Amount")), 1, 1)
  loc_1B74449:                     var_1D0 = CStr(Format(var_280, "0.00"))
  loc_1B7445D:                   Else
  loc_1B74468:                     If (var_30C = 9) Then
  loc_1B7449B:                       var_280 = StrConv(CVar(var_118.Fields.Item("SName")), 3, 0)
  loc_1B744A4:                       var_224 = CStr(var_280)
  loc_1B744C0:                       var_B4 = var_118.Fields
  loc_1B744D7:                       Proc_6_39_E7C810(var_280, CVar(var_B4.Item("Amount")), 1, 1)
  loc_1B74500:                       var_1D4 = CStr(Format(var_280, "0.00"))
  loc_1B74511:                     End If
  loc_1B74511:                   End If
  loc_1B74511:                 End If
  loc_1B74511:               End If
  loc_1B74511:             End If
  loc_1B74511:           End If
  loc_1B74511:         End If
  loc_1B74511:       End If
  loc_1B74511:     End If
  loc_1B74514:     var_118.MoveNext
  loc_1B74519:     GoTo loc_1B73D42
  loc_1B7451C:     ' Referenced from: 1B73E6D
  loc_1B7451C:   End If
  loc_1B7451C: End If
  loc_1B74556: var_B0 = CVar(Proc_6_43_10041F4(Abs(Val(var_1E0)), "Rs.", vbNullString, Val(var_1E0), 1)) 'String
  loc_1B74565: var_1E8 = CStr(StrConv(var_B0, 3, 0))
  loc_1B74586: var_1EC = "Regardless of charge instructions I agree to be held" & vbCrLf & "personally liable for payment of the total amount of this bill."
  loc_1B745A2: unk_59EE5F.Execute "Select * From FAEnviro", var_B0, -1
  loc_1B745AD: Set var_120 = var_B4
  loc_1B745C5: var_B4 = var_120.Fields
  loc_1B74629: var_2D0 = IIf((Proc_6_38_E68A98(CVar(var_B4.Item("daterfill")), var_B4, 1) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_120.Fields.Item("daterfill")), 1)))
  loc_1B74632: MemVar_1F923C0 = CStr(var_2D0)
  loc_1B746C6: var_2D0 = IIf((Proc_6_38_E68A98(CVar(var_120.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_120.Fields.Item("pagenofill")), 1)))
  loc_1B746CF: MemVar_1F923C4 = CStr(var_2D0)
  loc_1B7472A: var_254 = var_120.Fields
  loc_1B74743: var_2B0 = CVar(Proc_6_38_E68A98(CVar(var_254.Item("titlerfill")))) 'String
  loc_1B7476C: MemVar_1F923C8 = CStr(IIf((Proc_6_38_E68A98(CVar(var_120.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", var_2B0))
  loc_1B7479A: var_248 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGEH AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='"
  loc_1B747CC: var_280 = var_248 & Me.Fields.Item("SearchCode").Value 
  loc_1B747E3: unk_59EE5F.Execute CStr(var_280 & "' And AmtCr>0"), var_2B0, -1
  loc_1B747EE: Set var_184 = var_254
  loc_1B74808: ' Referenced from: 1B74A19
  loc_1B74817: If Not(var_184.EOF) Then
  loc_1B74853:   If (Proc_6_38_E68A98(CVar(var_184.Fields.Item("CompName")), var_254) <> vbNullString) Then
  loc_1B7487C:     Proc_6_39_E7C810(var_280, CVar(var_184.Fields.Item("AmtCr")))
  loc_1B748AE:     var_2C0 = "-"
  loc_1B748EB:     var_36C = CVar(var_180) & CVar(Proc_6_38_E68A98(CVar(var_184.Fields.Item("CompName")), 1 & Format(var_280, "0.00") & "M", 1)) & " (" 
  loc_1B74906:     var_380 = var_184.Fields.Item("PayName")
  loc_1B74928:     var_180 = CStr(MemVar_1F923C8 & CVar(Proc_6_38_E68A98(CVar(var_380), var_36C)) & "), ")
  loc_1B74956:   Else
  loc_1B7496D:     var_24C = var_184.Fields.Item("AmtCr")
  loc_1B7497C:     Proc_6_39_E7C810(var_280, CVar(var_24C))
  loc_1B749C6:     var_254 = var_184.Fields
  loc_1B749CE:     var_258 = var_254.Item("PayName")
  loc_1B749F0:     var_180 = CStr(CVar(var_180) & CVar(Proc_6_38_E68A98(CVar(var_258), 1 & Format(var_280, "0.00") & " (", 1)) & "), ")
  loc_1B74A11:   End If
  loc_1B74A14:   var_184.MoveNext
  loc_1B74A19:   GoTo loc_1B74808
  loc_1B74A1C: End If
  loc_1B74A1F: var_A0 = var_180
  loc_1B74A2F: var_248 = var_180
  loc_1B74A47: var_2D0 = Trim(var_180)
  loc_1B74A5D: var_32C = (Len(var_2D0) - 1)
  loc_1B74A6F: var_2A0 = 0
  loc_1B74A9C: var_180 = CStr(Left(Trim(var_A0), CLng(IIf((Len(Trim(var_248)) > var_2A0), CVar(var_258), 0))))
  loc_1B74AB2: On Error Goto loc_1B77888
  loc_1B74AB8: var_F4 = "SaleBillHall"
  loc_1B74ABE: var_F8 = "Sales Bill Report"
  loc_1B74AE8: Set var_B4 = var_234 
  loc_1B74AEF: CreateFieldDefFile(var_B4, MemVar_1F920B4 & "\" & var_F4 & ".ttx")
  loc_1B74B1D: var_8C = "\" & var_F4
  loc_1B74B31: Call 0.Method_arg_1C (MemVar_1F920B4 & var_8C & ".RPT", var_A0, var_B4)
  loc_1B74B3C: MemVar_1F921E4 = var_B4
  loc_1B74B68: Call 0.Method_arg_64 (var_B4, CVar(var_B4), var_248)
  loc_1B74B70: Call 0.Method_arg_2C (var_2A0, &HFF)
  loc_1B74B7E: Call 0.Method_arg_150 (1)
  loc_1B74B85: var_B6 = 1
  loc_1B74B8B: var_124.MoveFirst
  loc_1B74B90: ' Referenced from: 1B74F54
  loc_1B74B9F: If Not(var_124.EOF) Then
  loc_1B74BB3:   Call 0.Method_arg_90 (var_B4, var_270, var_EE)
  loc_1B74BBB:   Call 0.Method_arg_24 (1)
  loc_1B74BC7:   For var_3D4 =  To CInt(var_270): var_B6 = var_3D4 'Integer
  loc_1B74BE0:     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B74BE8:     Call 0.Method_arg_20 (var_24C)
  loc_1B74BF0:     Call 0.Method_arg_30 (var_8C)
  loc_1B74C06:     var_3E4 = Ucase(CVar(var_8C)) 'Variant
  loc_1B74C3D:     If (var_3E4 = Ucase(CVar("lblVenueName" & CStr(var_B6)))) Then
  loc_1B74C89:       Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B74C91:       Call 0.Method_arg_20 (var_258)
  loc_1B74C99:       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_124.Fields.Item("VenueName"))) & "'")
  loc_1B74CB6:     Else
  loc_1B74CDF:       If (var_3E4 = Ucase(CVar("lblFromDate" & CStr(var_B6)))) Then
  loc_1B74D2B:         Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B74D33:         Call 0.Method_arg_20 (var_258)
  loc_1B74D3B:         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_124.Fields.Item("FromDate"))) & "'")
  loc_1B74D58:       Else
  loc_1B74D81:         If (var_3E4 = Ucase(CVar("lblFromTime" & CStr(var_B6)))) Then
  loc_1B74DCD:           Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B74DD5:           Call 0.Method_arg_20 (var_258)
  loc_1B74DDD:           Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_124.Fields.Item("FromTime"))) & "'")
  loc_1B74DFA:         Else
  loc_1B74E23:           If (var_3E4 = Ucase(CVar("lblToDate" & CStr(var_B6)))) Then
  loc_1B74E6F:             Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B74E77:             Call 0.Method_arg_20 (var_258)
  loc_1B74E7F:             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_124.Fields.Item("ToDate"))) & "'")
  loc_1B74E9C:           Else
  loc_1B74EC5:             If (var_3E4 = Ucase(CVar("lblToTime" & CStr(var_B6)))) Then
  loc_1B74EF3:               var_8C = Proc_6_38_E68A98(CVar(var_124.Fields.Item("ToTime")))
  loc_1B74F11:               Call 0.Method_arg_90 (var_254, CLng(var_EE))
  loc_1B74F19:               Call 0.Method_arg_20 (var_258)
  loc_1B74F21:               Call 0.Method_arg_38 ("'" & var_8C & "'")
  loc_1B74F3B:             End If
  loc_1B74F3B:           End If
  loc_1B74F3B:         End If
  loc_1B74F3B:       End If
  loc_1B74F3B:     End If
  loc_1B74F3E:   Next var_3D4 'Integer
  loc_1B74F46:   var_124.MoveNext
  loc_1B74F51:   var_B6 = (var_B6 + 1)
  loc_1B74F54:   GoTo loc_1B74B90
  loc_1B74F57: End If
  loc_1B74F5D: var_270 = var_118.RecordCount
  loc_1B74F6B: If (var_270 > 0) Then
  loc_1B74F71:   var_118.MoveFirst
  loc_1B74F76:   ' Referenced from: 1B756F1
  loc_1B74F85:   If Not(var_118.EOF) Then
  loc_1B74FAE:     var_280 = Trim(CVar(var_118.Fields.Item("SunCode")))
  loc_1B74FDC:     If (Ucase(var_280) = CVar(MemVar_1F92078 & "NET")) Then
  loc_1B7501F:       var_B4 = var_118.Fields
  loc_1B75027:       var_24C = var_B4.Item("Amount")
  loc_1B75036:       Proc_6_39_E7C810(var_280, CVar(var_24C))
  loc_1B7505F:       var_230 = CStr(Format(var_280, "0.00"))
  loc_1B75081:       Call 0.Method_arg_90 (var_B4, var_270, var_EE, 1)
  loc_1B75089:       Call 0.Method_arg_24 (1, 1)
  loc_1B75095:       For var_3E8 =  To CInt(var_270): var_B6 = var_3E8 'Integer
  loc_1B750AE:         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B750B6:         Call 0.Method_arg_20 (var_24C)
  loc_1B750BE:         Call 0.Method_arg_30 (var_8C)
  loc_1B750D4:         var_3F8 = Ucase(CVar(var_8C)) 'Variant
  loc_1B750EA:         var_B0 = "lblNetAmount"
  loc_1B75104:         If (var_3F8 = Ucase(var_B0)) Then
  loc_1B75112:           Proc_6_17_EAA2B0(var_B0)
  loc_1B7512E:           Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B75136:           Call 0.Method_arg_20 (CStr(var_B0))
  loc_1B7513E:           Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_118.Fields.Item("DispName"))))
  loc_1B75153:         Else
  loc_1B7515B:           var_B0 = "NetAmount"
  loc_1B75175:           If (var_3F8 = Ucase(var_B0)) Then
  loc_1B75183:             Proc_6_17_EAA2B0(var_B0)
  loc_1B7518B:             var_8C = CStr(var_B0)
  loc_1B7519F:             Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B751A7:             Call 0.Method_arg_20 (var_8C)
  loc_1B751AF:             Call 0.Method_arg_38 (var_230)
  loc_1B751C1:           End If
  loc_1B751C1:         End If
  loc_1B751C4:       Next var_3E8 'Integer
  loc_1B751CC:     Else
  loc_1B751F2:       var_280 = Trim(CVar(var_118.Fields.Item("SunCode")))
  loc_1B75220:       If (Ucase(var_280) = CVar(MemVar_1F92078 & "TOT")) Then
  loc_1B75263:         var_B4 = var_118.Fields
  loc_1B7526B:         var_24C = var_B4.Item("Amount")
  loc_1B75273:         var_B0 = CVar(var_24C) 'Address
  loc_1B7527A:         Proc_6_39_E7C810(var_280)
  loc_1B752A3:         var_230 = CStr(Format(var_280, "0.00"))
  loc_1B752C5:         Call 0.Method_arg_90 (var_B4, var_270, var_EE, 1)
  loc_1B752CD:         Call 0.Method_arg_24 (1, 1)
  loc_1B752D9:         For var_3FC =  To CInt(var_270):   var_B0 = var_3FC 'Integer
  loc_1B752F2:           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B752FA:           Call 0.Method_arg_20 (var_24C)
  loc_1B75302:           Call 0.Method_arg_30 (var_8C)
  loc_1B75318:           var_40C = Ucase(CVar(var_8C)) 'Variant
  loc_1B7532E:           var_B0 = "lblTotal"
  loc_1B75348:           If (var_40C = Ucase(var_B0)) Then
  loc_1B75356:             Proc_6_17_EAA2B0(var_B0)
  loc_1B75372:             Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7537A:             Call 0.Method_arg_20 (CStr(var_B0))
  loc_1B75382:             Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_118.Fields.Item("DispName"))))
  loc_1B75397:           Else
  loc_1B7539F:             var_B0 = "Total"
  loc_1B753A8:             var_280 = Ucase(var_B0)
  loc_1B753B9:             If (var_40C = var_280) Then
  loc_1B753C7:               Proc_6_17_EAA2B0(var_B0)
  loc_1B753CF:               var_8C = CStr(var_B0)
  loc_1B753E3:               Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B753EB:               Call 0.Method_arg_20 (var_8C)
  loc_1B753F3:               Call 0.Method_arg_38 (var_230)
  loc_1B75405:             End If
  loc_1B75405:           End If
  loc_1B75408:         Next var_3FC 'Integer
  loc_1B75410:       Else
  loc_1B75460:         var_B0 = CVar(var_118.Fields.Item("SValue")) 'Address
  loc_1B75467:         Proc_6_39_E7C810(var_280)
  loc_1B75490:         var_22C = CStr(Format(var_280, "0.00"))
  loc_1B754B0:         var_B4 = var_118.Fields
  loc_1B754B8:         var_24C = var_B4.Item("Amount")
  loc_1B754C0:         var_B0 = CVar(var_24C) 'Address
  loc_1B754C7:         Proc_6_39_E7C810(var_280, var_B0, 1)
  loc_1B754DB:         var_290 = "0.00"
  loc_1B754E7:         var_2B0 = Format(var_280, var_290)
  loc_1B754F0:         var_230 = CStr(var_2B0)
  loc_1B75507:         var_B6 = (var_B6 + 1)
  loc_1B7551B:         Call 0.Method_arg_90 (var_B4, var_270, var_EE, 1, var_B6)
  loc_1B75523:         Call 0.Method_arg_24 (1, 1)
  loc_1B7552F:         For var_410 = var_B0 To CInt(var_270):     1 = var_410 'Integer
  loc_1B75548:           Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B75550:           Call 0.Method_arg_20 (var_8C)
  loc_1B75558:           Call 0.Method_arg_30 (var_B0)
  loc_1B7556E:           var_420 = Ucase(CVar(var_8C)) 'Variant
  loc_1B7558B:           var_B0 = CVar("lblSunName" & CStr(var_B6)) 'String
  loc_1B755A5:           If (var_420 = Ucase(var_B0)) Then
  loc_1B755B3:             Proc_6_17_EAA2B0(var_B0)
  loc_1B755CF:             Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B755D7:             Call 0.Method_arg_20 (CStr(var_B0))
  loc_1B755DF:             Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_118.Fields.Item("DispName"))))
  loc_1B755F4:           Else
  loc_1B75603:             var_B0 = CVar("SunPer" & CStr(var_B6)) 'String
  loc_1B7561D:             If (var_420 = Ucase(var_B0)) Then
  loc_1B7562B:               Proc_6_17_EAA2B0(var_B0)
  loc_1B75647:               Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7564F:               Call 0.Method_arg_20 (CStr(var_B0))
  loc_1B75657:               Call 0.Method_arg_38 (var_22C)
  loc_1B7566C:             Else
  loc_1B7567B:               var_B0 = CVar("SunAmt" & CStr(var_B6)) 'String
  loc_1B75695:               If (var_420 = Ucase(var_B0)) Then
  loc_1B756A3:                 Proc_6_17_EAA2B0(var_B0)
  loc_1B756AB:                 var_8C = CStr(var_B0)
  loc_1B756BF:                 Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B756C7:                 Call 0.Method_arg_20 (var_8C)
  loc_1B756CF:                 Call 0.Method_arg_38 (var_230)
  loc_1B756E1:               End If
  loc_1B756E1:             End If
  loc_1B756E1:           End If
  loc_1B756E4:         Next var_410 'Integer
  loc_1B756E9:       End If
  loc_1B756E9:     End If
  loc_1B756EC:     var_118.MoveNext
  loc_1B756F1:     GoTo loc_1B74F76
  loc_1B756F4:   End If
  loc_1B756F4: End If
  loc_1B756FA: var_270 = var_188.RecordCount
  loc_1B75708: If (var_270 > 0) Then
  loc_1B7570D:   var_B6 = 1
  loc_1B75713:   var_188.MoveFirst
  loc_1B75718:   ' Referenced from: 1B75AA3
  loc_1B75727:   If Not(var_188.EOF) Then
  loc_1B7573B:     Call 0.Method_arg_90 (var_B4, var_270, var_EE)
  loc_1B75743:     Call 0.Method_arg_24 (1)
  loc_1B7574F:     For var_424 =  To CInt(var_270): var_B6 = var_424 'Integer
  loc_1B75768:       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75770:       Call 0.Method_arg_20 (var_24C)
  loc_1B75778:       Call 0.Method_arg_30 (var_8C)
  loc_1B7578E:       var_434 = Ucase(CVar(var_8C)) 'Variant
  loc_1B757C5:       If (var_434 = Ucase(CVar("STName" & CStr(var_B6)))) Then
  loc_1B757F6:         Proc_6_17_EAA2B0(var_290)
  loc_1B75812:         Call 0.Method_arg_90 (var_254, CLng(var_EE), var_258)
  loc_1B7581A:         Call 0.Method_arg_20 (CStr(var_290))
  loc_1B75822:         Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_188.Fields.Item("TaxName")))))
  loc_1B7583F:       Else
  loc_1B75854:         var_280 = Ucase(CVar("STPer" & CStr(var_B6)))
  loc_1B75868:         If (var_434 = var_280) Then
  loc_1B75891:           Proc_6_39_E7C810(var_280)
  loc_1B758A8:           Proc_6_17_EAA2B0(var_2B0, CVar(CStr(var_280) & ") 'String)
  loc_1B758C4:           Call 0.Method_arg_90 (var_254, CLng(var_EE), var_258)
  loc_1B758CC:           Call 0.Method_arg_20 (CStr(var_2B0))
  loc_1B758D4:           Call 0.Method_arg_38 (CVar(var_188.Fields.Item("TaxPer")))
  loc_1B758F9:         Else
  loc_1B7590E:           var_280 = Ucase(CVar("STAmt" & CStr(var_B6)))
  loc_1B75922:           If (var_434 = var_280) Then
  loc_1B7594B:             Proc_6_39_E7C810(var_280)
  loc_1B75976:             Proc_6_17_EAA2B0(var_2D0, Format(var_280, "0.00"), 1)
  loc_1B75992:             Call 0.Method_arg_90 (var_254, CLng(var_EE), var_258)
  loc_1B7599A:             Call 0.Method_arg_20 (CStr(var_2D0), 1)
  loc_1B759A2:             Call 0.Method_arg_38 (CVar(var_188.Fields.Item("TaxAmt")))
  loc_1B759C3:           Else
  loc_1B759D8:             var_280 = Ucase(CVar("STAbleAmt" & CStr(var_B6)))
  loc_1B759EC:             If (var_434 = var_280) Then
  loc_1B759FE:               var_B4 = var_188.Fields
  loc_1B75A06:               var_24C = var_B4.Item("TaxableAmt")
  loc_1B75A15:               Proc_6_39_E7C810(var_280)
  loc_1B75A35:               var_2B0 = Format(var_280, "0.00")
  loc_1B75A40:               Proc_6_17_EAA2B0(var_2D0, var_2B0, 1)
  loc_1B75A48:               var_8C = CStr(var_2D0)
  loc_1B75A5C:               Call 0.Method_arg_90 (var_254, CLng(var_EE), var_258)
  loc_1B75A64:               Call 0.Method_arg_20 (var_8C, 1)
  loc_1B75A6C:               Call 0.Method_arg_38 (CVar(var_24C))
  loc_1B75A8A:             End If
  loc_1B75A8A:           End If
  loc_1B75A8A:         End If
  loc_1B75A8A:       End If
  loc_1B75A8D:     Next var_424 'Integer
  loc_1B75A98:     var_B6 = (var_B6 + 1)
  loc_1B75A9E:     var_188.MoveNext
  loc_1B75AA3:     GoTo loc_1B75718
  loc_1B75AA6:   End If
  loc_1B75AA6: End If
  loc_1B75AB7: Call 0.Method_arg_90 (var_B4, var_270, var_EE)
  loc_1B75ABF: Call 0.Method_arg_24 (1)
  loc_1B75ACB: For var_438 =  To CInt(var_270): var_B6 = var_438 'Integer
  loc_1B75AE4:   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75AEC:   Call 0.Method_arg_20 (var_24C)
  loc_1B75AF4:   Call 0.Method_arg_30 (var_8C)
  loc_1B75B0A:   var_448 = Ucase(CVar(var_8C)) 'Variant
  loc_1B75B3A:   If (var_448 = Ucase("upttno")) Then
  loc_1B75B5E:     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75B66:     Call 0.Method_arg_20 (var_24C)
  loc_1B75B6E:     Call 0.Method_arg_38 ("'" & var_18C & "'")
  loc_1B75B84:   Else
  loc_1B75BA6:     If (var_448 = Ucase("csttno")) Then
  loc_1B75BCA:       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75BD2:       Call 0.Method_arg_20 (var_24C)
  loc_1B75BDA:       Call 0.Method_arg_38 ("'" & var_190 & "'")
  loc_1B75BF0:     Else
  loc_1B75C12:       If (var_448 = Ucase("comp_name")) Then
  loc_1B75C36:         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75C3E:         Call 0.Method_arg_20 (var_24C)
  loc_1B75C46:         Call 0.Method_arg_38 ("'" & var_1AC & "'")
  loc_1B75C5C:       Else
  loc_1B75C7E:         If (var_448 = Ucase("compaddress")) Then
  loc_1B75CA2:           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75CAA:           Call 0.Method_arg_20 (var_24C)
  loc_1B75CB2:           Call 0.Method_arg_38 ("'" & var_1A8 & "'")
  loc_1B75CC8:         Else
  loc_1B75CEA:           If (var_448 = Ucase("comp_phone")) Then
  loc_1B75D0E:             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75D16:             Call 0.Method_arg_20 (var_24C)
  loc_1B75D1E:             Call 0.Method_arg_38 ("'" & var_1BC & "'")
  loc_1B75D34:           Else
  loc_1B75D56:             If (var_448 = Ucase("BillHeader")) Then
  loc_1B75D7A:               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75D82:               Call 0.Method_arg_20 (var_24C)
  loc_1B75D8A:               Call 0.Method_arg_38 ("'" & var_1A0 & "'")
  loc_1B75DA0:             Else
  loc_1B75DC2:               If (var_448 = Ucase("name")) Then
  loc_1B75DE6:                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75DEE:                 Call 0.Method_arg_20 (var_24C)
  loc_1B75DF6:                 Call 0.Method_arg_38 ("'" & var_19C & "'")
  loc_1B75E0C:               Else
  loc_1B75E2E:                 If (var_448 = Ucase("address1")) Then
  loc_1B75E52:                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75E5A:                   Call 0.Method_arg_20 (var_24C)
  loc_1B75E62:                   Call 0.Method_arg_38 ("'" & var_1F0 & "'")
  loc_1B75E78:                 Else
  loc_1B75E9A:                   If (var_448 = Ucase("address2")) Then
  loc_1B75EBE:                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75EC6:                     Call 0.Method_arg_20 (var_24C)
  loc_1B75ECE:                     Call 0.Method_arg_38 ("'" & var_1F4 & "'")
  loc_1B75EE4:                   Else
  loc_1B75F06:                     If (var_448 = Ucase("address3")) Then
  loc_1B75F2A:                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75F32:                       Call 0.Method_arg_20 (var_24C)
  loc_1B75F3A:                       Call 0.Method_arg_38 ("'" & var_1F8 & "'")
  loc_1B75F50:                     Else
  loc_1B75F72:                       If (var_448 = Ucase("Pincode")) Then
  loc_1B75F96:                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B75F9E:                         Call 0.Method_arg_20 (var_24C)
  loc_1B75FA6:                         Call 0.Method_arg_38 ("'" & var_1FC & "'")
  loc_1B75FBC:                       Else
  loc_1B75FCD:                         var_280 = Ucase("CompanyAdd1")
  loc_1B75FDE:                         If (var_448 = var_280) Then
  loc_1B75FF7:                           Proc_6_17_EAA2B0(var_280)
  loc_1B76013:                           Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7601B:                           Call 0.Method_arg_20 (CStr(var_280))
  loc_1B76023:                           Call 0.Method_arg_38 (Trim(var_1B0))
  loc_1B7603C:                         Else
  loc_1B7604D:                           var_280 = Ucase("CompanyAdd2")
  loc_1B7605E:                           If (var_448 = var_280) Then
  loc_1B76077:                             Proc_6_17_EAA2B0(var_280)
  loc_1B76093:                             Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7609B:                             Call 0.Method_arg_20 (CStr(var_280))
  loc_1B760A3:                             Call 0.Method_arg_38 (Trim(var_1B4))
  loc_1B760BC:                           Else
  loc_1B760CD:                             var_280 = Ucase("CompanyAdd3")
  loc_1B760DE:                             If (var_448 = var_280) Then
  loc_1B760F7:                               Proc_6_17_EAA2B0(var_280)
  loc_1B76113:                               Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7611B:                               Call 0.Method_arg_20 (CStr(var_280))
  loc_1B76123:                               Call 0.Method_arg_38 (Trim(var_1B8))
  loc_1B7613C:                             Else
  loc_1B7614D:                               var_280 = Ucase("CompanyCity")
  loc_1B7615E:                               If (var_448 = var_280) Then
  loc_1B76177:                                 Proc_6_17_EAA2B0(var_280)
  loc_1B76193:                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7619B:                                 Call 0.Method_arg_20 (CStr(var_280))
  loc_1B761A3:                                 Call 0.Method_arg_38 (Trim(var_128))
  loc_1B761BC:                               Else
  loc_1B761CD:                                 var_280 = Ucase("CompanyStateCode")
  loc_1B761DE:                                 If (var_448 = var_280) Then
  loc_1B761F7:                                   Proc_6_17_EAA2B0(var_280)
  loc_1B76213:                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7621B:                                   Call 0.Method_arg_20 (CStr(var_280))
  loc_1B76223:                                   Call 0.Method_arg_38 (Trim(var_12C))
  loc_1B7623C:                                 Else
  loc_1B7624D:                                   var_280 = Ucase("CompanyState")
  loc_1B7625E:                                   If (var_448 = var_280) Then
  loc_1B76277:                                     Proc_6_17_EAA2B0(var_280)
  loc_1B76293:                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7629B:                                     Call 0.Method_arg_20 (CStr(var_280))
  loc_1B762A3:                                     Call 0.Method_arg_38 (Trim(var_130))
  loc_1B762BC:                                   Else
  loc_1B762CD:                                     var_280 = Ucase("CompanyGSTIN")
  loc_1B762DE:                                     If (var_448 = var_280) Then
  loc_1B762F7:                                       Proc_6_17_EAA2B0(var_280)
  loc_1B76313:                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7631B:                                       Call 0.Method_arg_20 (CStr(var_280))
  loc_1B76323:                                       Call 0.Method_arg_38 (Trim(var_134))
  loc_1B7633C:                                     Else
  loc_1B7634D:                                       var_280 = Ucase("CompanyPAN")
  loc_1B7635E:                                       If (var_448 = var_280) Then
  loc_1B76377:                                         Proc_6_17_EAA2B0(var_280)
  loc_1B76393:                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7639B:                                         Call 0.Method_arg_20 (CStr(var_280))
  loc_1B763A3:                                         Call 0.Method_arg_38 (Trim(var_138))
  loc_1B763BC:                                       Else
  loc_1B763CD:                                         var_280 = Ucase("CompanyPIN")
  loc_1B763DE:                                         If (var_448 = var_280) Then
  loc_1B763F7:                                           Proc_6_17_EAA2B0(var_280)
  loc_1B76413:                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B7641B:                                           Call 0.Method_arg_20 (CStr(var_280))
  loc_1B76423:                                           Call 0.Method_arg_38 (Trim(var_13C))
  loc_1B7643C:                                         Else
  loc_1B7645E:                                           If (var_448 = Ucase("eInvIRN")) Then
  loc_1B76485:                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7648D:                                             Call 0.Method_arg_20 (var_24C)
  loc_1B76495:                                             Call 0.Method_arg_38 ("'" & global_160 & "'")
  loc_1B764AB:                                           Else
  loc_1B764CD:                                             If (var_448 = Ucase("eInvAckNo")) Then
  loc_1B764F4:                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B764FC:                                               Call 0.Method_arg_20 (var_24C)
  loc_1B76504:                                               Call 0.Method_arg_38 ("'" & global_164 & "'")
  loc_1B7651A:                                             Else
  loc_1B7653C:                                               If (var_448 = Ucase("eInvAckDt")) Then
  loc_1B7656F:                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76577:                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B7657F:                                                 Call 0.Method_arg_38 (CStr("'" & CDate(global_168) & "'"))
  loc_1B76598:                                               Else
  loc_1B765BA:                                                 If (var_448 = Ucase("Function")) Then
  loc_1B765DE:                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B765E6:                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B765EE:                                                   Call 0.Method_arg_38 ("'" & var_15C & "'")
  loc_1B76604:                                                 Else
  loc_1B76626:                                                   If (var_448 = Ucase("PanNo")) Then
  loc_1B7664A:                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76652:                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B7665A:                                                     Call 0.Method_arg_38 ("'" & var_160 & "'")
  loc_1B76670:                                                   Else
  loc_1B76692:                                                     If (var_448 = Ucase("PAX_Par")) Then
  loc_1B766B6:                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B766BE:                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B766C6:                                                       Call 0.Method_arg_38 ("'" & var_168 & "'")
  loc_1B766DC:                                                     Else
  loc_1B766FE:                                                       If (var_448 = Ucase("NARATION")) Then
  loc_1B76722:                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7672A:                                                         Call 0.Method_arg_20 (var_24C)
  loc_1B76732:                                                         Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_1B76748:                                                       Else
  loc_1B7676A:                                                         If (var_448 = Ucase("NARATION1")) Then
  loc_1B7678E:                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76796:                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B7679E:                                                           Call 0.Method_arg_38 ("'" & var_17C & "'")
  loc_1B767B4:                                                         Else
  loc_1B767D6:                                                           If (var_448 = Ucase("PAX_Qty")) Then
  loc_1B767FA:                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76802:                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B7680A:                                                             Call 0.Method_arg_38 ("'" & var_16C & "'")
  loc_1B76820:                                                           Else
  loc_1B76842:                                                             If (var_448 = Ucase("PAX_Rate")) Then
  loc_1B76866:                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7686E:                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B76876:                                                               Call 0.Method_arg_38 ("'" & var_170 & "'")
  loc_1B7688C:                                                             Else
  loc_1B768AE:                                                               If (var_448 = Ucase("PAX_Amount")) Then
  loc_1B768D2:                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B768DA:                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B768E2:                                                                 Call 0.Method_arg_38 ("'" & var_174 & "'")
  loc_1B768F8:                                                               Else
  loc_1B7691A:                                                                 If (var_448 = Ucase("billno")) Then
  loc_1B7693E:                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76946:                                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B7694E:                                                                   Call 0.Method_arg_38 ("'" & var_194 & "'")
  loc_1B76964:                                                                 Else
  loc_1B76986:                                                                   If (var_448 = Ucase("BillVou")) Then
  loc_1B769AA:                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B769B2:                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B769BA:                                                                     Call 0.Method_arg_38 ("'" & var_FC & "'")
  loc_1B769D0:                                                                   Else
  loc_1B769F2:                                                                     If (var_448 = Ucase("billdate")) Then
  loc_1B76A16:                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76A1E:                                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B76A26:                                                                       Call 0.Method_arg_38 ("'" & var_198 & "'")
  loc_1B76A3C:                                                                     Else
  loc_1B76A5E:                                                                       If (var_448 = Ucase("strRupee")) Then
  loc_1B76A82:                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76A8A:                                                                         Call 0.Method_arg_20 (var_24C)
  loc_1B76A92:                                                                         Call 0.Method_arg_38 ("'" & var_1E8 & "'")
  loc_1B76AA8:                                                                       Else
  loc_1B76ACA:                                                                         If (var_448 = Ucase("lblamount")) Then
  loc_1B76AEE:                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76AF6:                                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B76AFE:                                                                           Call 0.Method_arg_38 ("'" & var_200 & "'")
  loc_1B76B14:                                                                         Else
  loc_1B76B36:                                                                           If (var_448 = Ucase("amount")) Then
  loc_1B76B5A:                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76B62:                                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B76B6A:                                                                             Call 0.Method_arg_38 ("'" & var_1C0 & "'")
  loc_1B76B80:                                                                           Else
  loc_1B76BA2:                                                                             If (var_448 = Ucase("lbldiscount")) Then
  loc_1B76BC6:                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76BCE:                                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B76BD6:                                                                               Call 0.Method_arg_38 ("'" & var_204 & "'")
  loc_1B76BEC:                                                                             Else
  loc_1B76C0E:                                                                               If (var_448 = Ucase("discount")) Then
  loc_1B76C32:                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76C3A:                                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B76C42:                                                                                 Call 0.Method_arg_38 ("'" & var_1C4 & "'")
  loc_1B76C58:                                                                               Else
  loc_1B76C7A:                                                                                 If (var_448 = Ucase("lbldevelopmenttax")) Then
  loc_1B76C9E:                                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76CA6:                                                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B76CAE:                                                                                   Call 0.Method_arg_38 ("'" & var_210 & "'")
  loc_1B76CC4:                                                                                 Else
  loc_1B76CE6:                                                                                   If (var_448 = Ucase("developmenttax")) Then
  loc_1B76D0A:                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76D12:                                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B76D1A:                                                                                     Call 0.Method_arg_38 ("'" & var_1D8 & "'")
  loc_1B76D30:                                                                                   Else
  loc_1B76D52:                                                                                     If (var_448 = Ucase("lbltradetax")) Then
  loc_1B76D76:                                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76D7E:                                                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B76D86:                                                                                       Call 0.Method_arg_38 ("'" & var_208 & "'")
  loc_1B76D9C:                                                                                     Else
  loc_1B76DBE:                                                                                       If (var_448 = Ucase("tradetax")) Then
  loc_1B76DE2:                                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76DEA:                                                                                         Call 0.Method_arg_20 (var_24C)
  loc_1B76DF2:                                                                                         Call 0.Method_arg_38 ("'" & var_1C8 & "'")
  loc_1B76E08:                                                                                       Else
  loc_1B76E2A:                                                                                         If (var_448 = Ucase("lblservicecharge")) Then
  loc_1B76E4E:                                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76E56:                                                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B76E5E:                                                                                           Call 0.Method_arg_38 ("'" & var_20C & "'")
  loc_1B76E74:                                                                                         Else
  loc_1B76E96:                                                                                           If (var_448 = Ucase("servicecharge")) Then
  loc_1B76EBA:                                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76EC2:                                                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B76ECA:                                                                                             Call 0.Method_arg_38 ("'" & var_1CC & "'")
  loc_1B76EE0:                                                                                           Else
  loc_1B76F02:                                                                                             If (var_448 = Ucase("lblroundoff")) Then
  loc_1B76F26:                                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76F2E:                                                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B76F36:                                                                                               Call 0.Method_arg_38 ("'" & var_214 & "'")
  loc_1B76F4C:                                                                                             Else
  loc_1B76F6E:                                                                                               If (var_448 = Ucase("roundoff")) Then
  loc_1B76F92:                                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B76F9A:                                                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B76FA2:                                                                                                 Call 0.Method_arg_38 ("'" & var_1DC & "'")
  loc_1B76FB8:                                                                                               Else
  loc_1B76FDA:                                                                                                 If (var_448 = Ucase("lblServiceTax")) Then
  loc_1B76FFE:                                                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B77006:                                                                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B7700E:                                                                                                   Call 0.Method_arg_38 ("'" & var_21C & "'")
  loc_1B77024:                                                                                                 Else
  loc_1B77046:                                                                                                   If (var_448 = Ucase("ServiceTax")) Then
  loc_1B7706A:                                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B77072:                                                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B7707A:                                                                                                     Call 0.Method_arg_38 ("'" & var_1E4 & "'")
  loc_1B77090:                                                                                                   Else
  loc_1B770B2:                                                                                                     If (var_448 = Ucase("lblnetamount")) Then
  loc_1B770D6:                                                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B770DE:                                                                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B770E6:                                                                                                       Call 0.Method_arg_38 ("'" & var_218 & "'")
  loc_1B770FC:                                                                                                     Else
  loc_1B7711E:                                                                                                       If (var_448 = Ucase("netamount")) Then
  loc_1B77142:                                                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7714A:                                                                                                         Call 0.Method_arg_20 (var_24C)
  loc_1B77152:                                                                                                         Call 0.Method_arg_38 ("'" & var_1E0 & "'")
  loc_1B77168:                                                                                                       Else
  loc_1B7718A:                                                                                                         If (var_448 = Ucase("lblTax8")) Then
  loc_1B771AE:                                                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B771B6:                                                                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B771BE:                                                                                                           Call 0.Method_arg_38 ("'" & var_220 & "'")
  loc_1B771D4:                                                                                                         Else
  loc_1B771F6:                                                                                                           If (var_448 = Ucase("Tax8Amt")) Then
  loc_1B77207:                                                                                                             var_90 = "'" & var_1D0 & "'"
  loc_1B7721A:                                                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B77222:                                                                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B7722A:                                                                                                             Call 0.Method_arg_38 (var_90)
  loc_1B77240:                                                                                                           Else
  loc_1B77262:                                                                                                             If (var_448 = Ucase("lblTax9")) Then
  loc_1B77273:                                                                                                               var_90 = "'" & var_224 & "'"
  loc_1B77286:                                                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7728E:                                                                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B77296:                                                                                                               Call 0.Method_arg_38 (var_90)
  loc_1B772AC:                                                                                                             Else
  loc_1B772BD:                                                                                                               var_280 = Ucase("Tax9Amt")
  loc_1B772CE:                                                                                                               If (var_448 = var_280) Then
  loc_1B772DF:                                                                                                                 var_90 = "'" & var_1D4 & "'"
  loc_1B772F2:                                                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B772FA:                                                                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B77302:                                                                                                                 Call 0.Method_arg_38 (var_90)
  loc_1B77318:                                                                                                               Else
  loc_1B7731B:                                                                                                                 var_A0 = "FunctionDate"
  loc_1B77329:                                                                                                                 var_280 = Ucase(var_A0)
  loc_1B7733A:                                                                                                                 If (var_448 = var_280) Then
  loc_1B77344:                                                                                                                   var_8C = "'" & var_D8
  loc_1B7734B:                                                                                                                   var_90 = var_8C & "'"
  loc_1B7735E:                                                                                                                   Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B77366:                                                                                                                   Call 0.Method_arg_20 (var_24C)
  loc_1B7736E:                                                                                                                   Call 0.Method_arg_38 (var_90)
  loc_1B77384:                                                                                                                 Else
  loc_1B77395:                                                                                                                   var_280 = Ucase("Title")
  loc_1B773A6:                                                                                                                   If (var_448 = var_280) Then
  loc_1B773B2:                                                                                                                     Call 0.Method_arg_50 (var_8C)
  loc_1B773BB:                                                                                                                     var_90 = "'" & var_8C
  loc_1B773C2:                                                                                                                     var_250 = var_90 & "'"
  loc_1B773D5:                                                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B773DD:                                                                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B773E5:                                                                                                                     Call 0.Method_arg_38 (var_250)
  loc_1B773FD:                                                                                                                   Else
  loc_1B77400:                                                                                                                     var_A0 = "Jurisdition"
  loc_1B7740E:                                                                                                                     var_280 = Ucase(var_A0)
  loc_1B7741F:                                                                                                                     If (var_448 = var_280) Then
  loc_1B77429:                                                                                                                       var_8C = "'" & var_10C
  loc_1B77430:                                                                                                                       var_90 = var_8C & "'"
  loc_1B77443:                                                                                                                       Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7744B:                                                                                                                       Call 0.Method_arg_20 (var_24C)
  loc_1B77453:                                                                                                                       Call 0.Method_arg_38 (var_90)
  loc_1B77469:                                                                                                                     Else
  loc_1B7746C:                                                                                                                       var_A0 = "User_Name"
  loc_1B77471:                                                                                                                       var_B0 = var_A0
  loc_1B7747A:                                                                                                                       var_280 = Ucase(var_B0)
  loc_1B7748B:                                                                                                                       If (var_448 = var_280) Then
  loc_1B77491:                                                                                                                         var_A0 = var_110
  loc_1B77499:                                                                                                                         Proc_6_17_EAA2B0(var_B0)
  loc_1B774A1:                                                                                                                         var_8C = CStr(var_B0)
  loc_1B774B5:                                                                                                                         Call 0.Method_arg_90 (var_B4, CLng(var_EE), var_24C)
  loc_1B774BD:                                                                                                                         Call 0.Method_arg_20 (var_8C)
  loc_1B774C5:                                                                                                                         Call 0.Method_arg_38 (var_A0)
  loc_1B774DA:                                                                                                                       Else
  loc_1B774DD:                                                                                                                         var_A0 = "Dater"
  loc_1B774E2:                                                                                                                         var_B0 = var_A0
  loc_1B774EB:                                                                                                                         var_280 = Ucase(var_B0)
  loc_1B774FC:                                                                                                                         If (var_448 = var_280) Then
  loc_1B77506:                                                                                                                           var_8C = "'" & MemVar_1F923C0
  loc_1B7750D:                                                                                                                           var_90 = var_8C & "'"
  loc_1B77520:                                                                                                                           Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B77528:                                                                                                                           Call 0.Method_arg_20 (var_24C)
  loc_1B77530:                                                                                                                           Call 0.Method_arg_38 (var_90)
  loc_1B77546:                                                                                                                         Else
  loc_1B77549:                                                                                                                           var_A0 = "Pager"
  loc_1B7754E:                                                                                                                           var_B0 = var_A0
  loc_1B77557:                                                                                                                           var_280 = Ucase(var_B0)
  loc_1B77568:                                                                                                                           If (var_448 = var_280) Then
  loc_1B77572:                                                                                                                             var_8C = "'" & MemVar_1F923C4
  loc_1B77579:                                                                                                                             var_90 = var_8C & "'"
  loc_1B7758C:                                                                                                                             Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B77594:                                                                                                                             Call 0.Method_arg_20 (var_24C)
  loc_1B7759C:                                                                                                                             Call 0.Method_arg_38 (var_90)
  loc_1B775B2:                                                                                                                           Else
  loc_1B775B5:                                                                                                                             var_A0 = "billfooter"
  loc_1B775BA:                                                                                                                             var_B0 = var_A0
  loc_1B775C3:                                                                                                                             var_280 = Ucase(var_B0)
  loc_1B775D4:                                                                                                                             If (var_448 = var_280) Then
  loc_1B775DE:                                                                                                                               var_8C = "'" & var_1A4
  loc_1B775E5:                                                                                                                               var_90 = var_8C & "'"
  loc_1B775F8:                                                                                                                               Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B77600:                                                                                                                               Call 0.Method_arg_20 (var_24C)
  loc_1B77608:                                                                                                                               Call 0.Method_arg_38 (var_90)
  loc_1B7761E:                                                                                                                             Else
  loc_1B77621:                                                                                                                               var_A0 = "AdvanceDetail"
  loc_1B77626:                                                                                                                               var_B0 = var_A0
  loc_1B7762F:                                                                                                                               var_280 = Ucase(var_B0)
  loc_1B77640:                                                                                                                               If (var_448 = var_280) Then
  loc_1B7764A:                                                                                                                                 var_8C = "'" & var_164
  loc_1B77651:                                                                                                                                 var_90 = var_8C & "'"
  loc_1B77664:                                                                                                                                 Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B7766C:                                                                                                                                 Call 0.Method_arg_20 (var_24C)
  loc_1B77674:                                                                                                                                 Call 0.Method_arg_38 (var_90)
  loc_1B7768A:                                                                                                                               Else
  loc_1B7768D:                                                                                                                                 var_A0 = "comp_party"
  loc_1B77692:                                                                                                                                 var_B0 = var_A0
  loc_1B7769B:                                                                                                                                 var_280 = Ucase(var_B0)
  loc_1B776AC:                                                                                                                                 If (var_448 = var_280) Then
  loc_1B776AF:                                                                                                                                   var_35C = "'"
  loc_1B776BA:                                                                                                                                   var_2E0 = 0
  loc_1B776D0:                                                                                                                                   var_248 = "Select ('Company:                                                                                                                               ' + SG.Name) AS CompanyName FROM HallBooK HB LEFT JOIN SubGroup SG ON HB.CompanyCode=SG.SubCode WHERE HB.DocId='"
  loc_1B776DB:                                                                                                                                   var_A0 = "DocID"
  loc_1B776E7:                                                                                                                                   var_B4 = var_E8.Fields
  loc_1B776EF:                                                                                                                                   var_24C = var_B4.Item(var_A0)
  loc_1B776F7:                                                                                                                                   var_B0 = var_24C.Value
  loc_1B776FF:                                                                                                                                   var_280 = CDate(global_168) & var_B0 
  loc_1B77703:                                                                                                                                   var_2A0 = "'"
  loc_1B77708:                                                                                                                                   var_290 = var_280 & var_2A0 
  loc_1B7770C:                                                                                                                                   var_8C = CStr(var_290)
  loc_1B77716:                                                                                                                                   unk_59EE5F.Execute var_8C, var_2B0, -1
  loc_1B7771E:                                                                                                                                   var_254 = var_254.Fields
  loc_1B77726:                                                                                                                                   var_2E0 = var_258.Item(var_258)
  loc_1B7772E:                                                                                                                                   var_26C = var_26C.Value
  loc_1B77736:                                                                                                                                   var_2F0 = var_2D0 & var_2D0 
  loc_1B7773A:                                                                                                                                   var_37C = "'"
  loc_1B7773F:                                                                                                                                   var_32C = var_2F0 & var_37C 
  loc_1B77743:                                                                                                                                   var_90 = CStr(var_32C)
  loc_1B77757:                                                                                                                                   Call 0.Method_arg_90 (var_380, CLng(var_EE), var_44C)
  loc_1B7775F:                                                                                                                                   Call 0.Method_arg_20 (var_90)
  loc_1B77767:                                                                                                                                   Call 0.Method_arg_38 (var_35C)
  loc_1B77798:                                                                                                                                 Else
  loc_1B7779B:                                                                                                                                   var_A0 = "SettlementMode"
  loc_1B777A0:                                                                                                                                   var_B0 = var_A0
  loc_1B777A9:                                                                                                                                   var_280 = Ucase(var_B0)
  loc_1B777BA:                                                                                                                                   If (var_448 = var_280) Then
  loc_1B777C4:                                                                                                                                     var_8C = "'" & var_180
  loc_1B777CB:                                                                                                                                     var_90 = var_8C & "'"
  loc_1B777DE:                                                                                                                                     Call 0.Method_arg_90 (var_B4, CLng(var_EE))
  loc_1B777E6:                                                                                                                                     Call 0.Method_arg_20 (var_24C)
  loc_1B777EE:                                                                                                                                     Call 0.Method_arg_38 (var_90)
  loc_1B77801:                                                                                                                                   End If
  loc_1B77801:                                                                                                                                 End If
  loc_1B77801:                                                                                                                               End If
  loc_1B77801:                                                                                                                             End If
  loc_1B77801:                                                                                                                           End If
  loc_1B77801:                                                                                                                         End If
  loc_1B77801:                                                                                                                       End If
  loc_1B77801:                                                                                                                     End If
  loc_1B77801:                                                                                                                   End If
  loc_1B77801:                                                                                                                 End If
  loc_1B77801:                                                                                                               End If
  loc_1B77801:                                                                                                             End If
  loc_1B77801:                                                                                                           End If
  loc_1B77801:                                                                                                         End If
  loc_1B77801:                                                                                                       End If
  loc_1B77801:                                                                                                     End If
  loc_1B77801:                                                                                                   End If
  loc_1B77801:                                                                                                 End If
  loc_1B77801:                                                                                               End If
  loc_1B77801:                                                                                             End If
  loc_1B77801:                                                                                           End If
  loc_1B77801:                                                                                         End If
  loc_1B77801:                                                                                       End If
  loc_1B77801:                                                                                     End If
  loc_1B77801:                                                                                   End If
  loc_1B77801:                                                                                 End If
  loc_1B77801:                                                                               End If
  loc_1B77801:                                                                             End If
  loc_1B77801:                                                                           End If
  loc_1B77801:                                                                         End If
  loc_1B77801:                                                                       End If
  loc_1B77801:                                                                     End If
  loc_1B77801:                                                                   End If
  loc_1B77801:                                                                 End If
  loc_1B77801:                                                               End If
  loc_1B77801:                                                             End If
  loc_1B77801:                                                           End If
  loc_1B77801:                                                         End If
  loc_1B77801:                                                       End If
  loc_1B77801:                                                     End If
  loc_1B77801:                                                   End If
  loc_1B77801:                                                 End If
  loc_1B77801:                                               End If
  loc_1B77801:                                             End If
  loc_1B77801:                                           End If
  loc_1B77801:                                         End If
  loc_1B77801:                                       End If
  loc_1B77801:                                     End If
  loc_1B77801:                                   End If
  loc_1B77801:                                 End If
  loc_1B77801:                               End If
  loc_1B77801:                             End If
  loc_1B77801:                           End If
  loc_1B77801:                         End If
  loc_1B77801:                       End If
  loc_1B77801:                     End If
  loc_1B77801:                   End If
  loc_1B77801:                 End If
  loc_1B77801:               End If
  loc_1B77801:             End If
  loc_1B77801:           End If
  loc_1B77801:         End If
  loc_1B77801:       End If
  loc_1B77801:     End If
  loc_1B77801:   End If
  loc_1B77804: Next var_438 'Integer
  loc_1B7780E: Set var_24C = Nothing
  loc_1B77824: Set var_B4 = MemVar_1F921E4 
  loc_1B77830: Proc_6_99_1483714(var_B4, 0, var_F8)
  loc_1B7783B: MemVar_1F921E4 = var_B4
  loc_1B7784B: MemVar_1F921E4 = Nothing
  loc_1B77854: Set var_120 = Nothing
  loc_1B7785C: Set var_234 = Nothing
  loc_1B77864: Set var_118 = Nothing
  loc_1B7786C: Set var_E8 = Nothing
  loc_1B77874: Set var_100 = Nothing
  loc_1B7787C: Set var_124 = Nothing
  loc_1B77884: Set var_188 = Nothing
  loc_1B77887: Exit Sub
  loc_1B77888: ' Referenced from: 1B74AB2
  loc_1B77888: ' Referenced from: 1B72983
  loc_1B7788E: If (var_104 = &HFF) Then
  loc_1B77897:   unk_59EE5F.RollbackTrans
  loc_1B7789C: End If
  loc_1B7789C: Proc_6_60_E62BC4(&HFF)
  loc_1B778A1: Exit Sub
End Sub

Public Sub Proc_124_103_13E4D34(arg_C) '13E4D34
  'Data Table: 59EE40
  Dim unk_59EE5F As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  loc_13E4370: unk_59EE5F.Execute "Select S.* From SunTran S Where S.DocId='" & arg_C & "' Order By SNo", var_B0, -1
  loc_13E437B: Set var_88 = var_B4
  loc_13E439F: If (var_88.RecordCount > 0) Then
  loc_13E43A2:   ' Referenced from: 13E483B
  loc_13E43B1:   If Not(var_88.EOF) Then
  loc_13E4414:     Set var_EC = Me.LblCap
  loc_13E441A:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E4422:     var_F0.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_13E44A0:     Set var_EC = Me.TxtPer
  loc_13E44A6:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E44AE:     var_F0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_13E452C:     Set var_EC = Me.LblCap
  loc_13E4532:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E453A:     var_F0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_13E45B8:     Set var_EC = Me.LblAt
  loc_13E45BE:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E45C6:     var_F0.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_13E4644:     Set var_EC = Me.TxtGt
  loc_13E464A:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E4652:     var_F0.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_13E46D0:     Set var_EC = Me.TxtPer
  loc_13E46D6:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E46DE:     var_F0.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_13E474E:     var_E8 = "0.00"
  loc_13E4775:     Set var_EC = Me.TxtGt
  loc_13E477B:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E8)))
  loc_13E4783:     var_F0.Text = 1
  loc_13E47B2:     var_B4 = var_88.Fields
  loc_13E47C2:     var_B0 = CVar(var_B4.Item("BaseAmount")) 'Address
  loc_13E47C9:     Proc_6_39_E7C810(var_E8, var_B0)
  loc_13E4807:     Set var_EC = Me.LblDummy
  loc_13E480D:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(var_E8))
  loc_13E4815:     var_F0.Caption = 1
  loc_13E4836:     var_88.MoveNext
  loc_13E483B:     GoTo loc_13E43A2
  loc_13E483E:   End If
  loc_13E483E: End If
  loc_13E4862: unk_59EE5F.Execute "Select S.* From SunTranH S Where S.DocId='" & arg_C & "' Order By SNo", var_B0, -1
  loc_13E486D: Set var_88 = var_B4
  loc_13E4891: If (var_88.RecordCount > 0) Then
  loc_13E4894:   ' Referenced from: 13E4D2D
  loc_13E48A3:   If Not(var_88.EOF) Then
  loc_13E48B8:     var_B4 = var_88.Fields
  loc_13E4906:     Set var_EC = Me.LableCap
  loc_13E490C:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(var_B4.Item("SunCode").Value))
  loc_13E4914:     var_F0.Tag = var_B4
  loc_13E4992:     Set var_EC = Me.TextPer
  loc_13E4998:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E49A0:     var_F0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_13E4A1E:     Set var_EC = Me.LableCap
  loc_13E4A24:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E4A2C:     var_F0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_13E4AAA:     Set var_EC = Me.LableAt
  loc_13E4AB0:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E4AB8:     var_F0.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_13E4B36:     Set var_EC = Me.TextGt
  loc_13E4B3C:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E4B44:     var_F0.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_13E4BC2:     Set var_EC = Me.TextPer
  loc_13E4BC8:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0)
  loc_13E4BD0:     var_F0.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_13E4C40:     var_E8 = "0.00"
  loc_13E4C67:     Set var_EC = Me.TextGt
  loc_13E4C6D:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_E8)))
  loc_13E4C75:     var_F0.Text = 1
  loc_13E4CBB:     Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("BaseAmount")))
  loc_13E4CF9:     Set var_EC = Me.LableDummy
  loc_13E4CFF:     Call 0.Method_Proc_124_103_13E4D340 (CInt(var_88.Fields.Item("SNo").Value), var_F0, CStr(var_E8))
  loc_13E4D07:     var_F0.Caption = 1
  loc_13E4D28:     var_88.MoveNext
  loc_13E4D2D:     GoTo loc_13E4894
  loc_13E4D30:   End If
  loc_13E4D30: End If
  loc_13E4D30: Exit Sub
End Sub

Public Sub Proc_124_104_FA9F44
  'Data Table: 59EE40
  Dim var_DC As TextBox
  Dim var_D8 As Frame
  loc_FA9DF9: Set var_D8 = Me.TxteInvInfo
  loc_FA9DFF: Call 0.Method_Proc_124_104_FA9F440 (0, var_DC)
  loc_FA9E07: var_DC.Text = CStr(IIf((global_160 <> vbNullString), global_160, vbNullString))
  loc_FA9E5C: Set var_D8 = Me.TxteInvInfo
  loc_FA9E62: Call 0.Method_Proc_124_104_FA9F440 (1, var_DC)
  loc_FA9E6A: var_DC.Text = CStr(IIf((global_164 <> vbNullString), global_164, vbNullString))
  loc_FA9EE0: Set var_D8 = Me.TxteInvInfo
  loc_FA9EE6: Call 0.Method_Proc_124_104_FA9F440 (2, var_DC, CStr(IIf((global_168 <> CDate("31/Dec/1899")), Format(global_168, "dd/mm/yyyy hh:nn:ss"), vbNullString)))
  loc_FA9EEE: var_DC.Text = 1
  loc_FA9F15: If (global_160 <> vbNullString) Then
  loc_FA9F24:   Me.FreInvInfo.Visible = True
  loc_FA9F2F: Else
  loc_FA9F3B:   Me.FreInvInfo.Visible = False
  loc_FA9F43: End If
  loc_FA9F43: Exit Sub
End Sub

Public Sub Proc_124_105_E671A0(arg_C) 'E671A0
  'Data Table: 59EE40
  loc_E67160: If (arg_C <> vbNullString) Then
  loc_E6717C:   MsgBox("eInvoice already generated.", &H10, var_C8, var_E8, var_108)
  loc_E6718C:   Proc_124_105_E671A0 = 
  loc_E67192: End If
  loc_E67197: Proc_124_105_E671A0 = &HFF
End Sub
