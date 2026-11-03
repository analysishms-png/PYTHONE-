VERSION 5.00
Begin VB.Form frmFomB
  Caption = "FOM Bill Reprint"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmFomB.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10440
  ClientHeight = 7050
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
  Begin CommandButton CmdGeneInvoice
    Caption = "Gen eInvoice"
    Left = 14280
    Top = 8865
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 80
  End
  Begin CommandButton CmdeInvoiceJson
    Caption = "eInvoice Json"
    Left = 14280
    Top = 8490
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 79
  End
  Begin CommandButton CmdeInvoiceSql
    Caption = "eInvoice Sql"
    Left = 16230
    Top = 8460
    Width = 1665
    Height = 375
    Visible = 0   'False
    TabIndex = 78
  End
  Begin Frame FreInvInfo
    Caption = "eInvoice Info:"
    Left = 13320
    Top = 7335
    Width = 6735
    Height = 1095
    Visible = 0   'False
    TabIndex = 71
    Begin TextBox TxteInvInfo
      Index = 0
      Left = 795
      Top = 255
      Width = 5800
      Height = 240
      TabIndex = 74
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
      TabIndex = 73
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
      TabIndex = 72
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
      TabIndex = 77
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
      TabIndex = 76
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
      TabIndex = 75
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
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 2445
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
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
  End
  Begin BtnEnh CmdSettleRcpt
    Left = 10005
    Top = 3195
    Width = 1095
    Height = 960
    TabIndex = 65
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6600
    Width = 10440
    Height = 450
    Visible = 0   'False
    TabIndex = 64
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6660
    Top = 615
    Width = 705
    Height = 270
    Enabled = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 5
    Locked = -1  'True
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
  Begin MSHFlexGrid FRectGrid
    Left = 14730
    Top = 2760
    Width = 4245
    Height = 1170
    Visible = 0   'False
    TabIndex = 52
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    Left = 15375
    Top = 4695
    Width = 345
    Height = 240
    Visible = 0   'False
    TabIndex = 50
    BorderStyle = 0 'None
    MaxLength = 9
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10380
    Top = 2595
    Width = 3405
    Height = 275
    Enabled = 0   'False
    TabIndex = 48
    BorderStyle = 0 'None
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
  End
  Begin Frame FrmAdjust
    Left = 14685
    Top = 1050
    Width = 4395
    Height = 1590
    Visible = 0   'False
    TabIndex = 40
    Begin CommandButton Command1
      Caption = "Cancel"
      Left = 3630
      Top = 225
      Width = 720
      Height = 315
      TabIndex = 49
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
    Begin CommandButton CmdPass
      Caption = "GO"
      Left = 3120
      Top = 225
      Width = 495
      Height = 315
      TabIndex = 42
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
      TabIndex = 44
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
      TabIndex = 41
      PasswordChar = "#"
      MaxLength = 50
    End
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1485
      Top = 735
      Width = 1260
      Height = 315
      Enabled = 0   'False
      TabIndex = 43
      Alignment = 1 'Right Justify
      MaxLength = 8
    End
    Begin Label Lbl
      Caption = "Password"
      Index = 0
      ForeColor = &H0&
      Left = 120
      Top = 270
      Width = 825
      Height = 240
      TabIndex = 46
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Lbl
      Caption = "Room Rate"
      Index = 12
      ForeColor = &H0&
      Left = 420
      Top = 750
      Width = 945
      Height = 240
      TabIndex = 45
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9195
    Top = 1020
    Width = 330
    Height = 275
    Enabled = 0   'False
    TabIndex = 21
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
    Left = 9540
    Top = 1020
    Width = 330
    Height = 275
    Enabled = 0   'False
    TabIndex = 20
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
    Index = 12
    BackColor = &HFFFFFF&
    Left = 14760
    Top = 5850
    Width = 3435
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 19
    MaxLength = 8
    Locked = -1  'True
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 2160
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
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
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 1020
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 50
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
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 1020
    Width = 1305
    Height = 275
    Enabled = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 1875
    Width = 1995
    Height = 275
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 8
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
    Index = 7
    BackColor = &HFFFFFF&
    Left = 16815
    Top = 5355
    Width = 990
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 13
    MaxLength = 1
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 2160
    Width = 480
    Height = 275
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8370
    Top = 2160
    Width = 480
    Height = 275
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 1590
    Width = 1995
    Height = 275
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 16
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
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 1305
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 1590
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
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
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1755
    Top = 1875
    Width = 4245
    Height = 275
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10380
    Top = 1275
    Width = 3435
    Height = 275
    Enabled = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 16
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
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10380
    Top = 1560
    Width = 3435
    Height = 275
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 50
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
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10380
    Top = 1845
    Width = 3435
    Height = 275
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
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
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7875
    Top = 1305
    Width = 1305
    Height = 275
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9540
    Top = 1305
    Width = 330
    Height = 275
    Enabled = 0   'False
    TabIndex = 2
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 9195
    Top = 1305
    Width = 330
    Height = 275
    Enabled = 0   'False
    TabIndex = 1
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
  Begin DataCombo TXT_GNAME
    Left = 11490
    Top = 4335
    Width = 1740
    Height = 360
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 135
    Top = 2745
    Width = 9825
    Height = 5640
    TabIndex = 38
  End
  Begin MSHFlexGrid Fgrid1
    Left = 120
    Top = 8400
    Width = 9840
    Height = 285
    TabIndex = 39
  End
  Begin BtnEnh CmdExit
    Left = 9975
    Top = 7275
    Width = 1275
    Height = 1050
    TabIndex = 63
  End
  Begin BtnEnh CmdPrint
    Left = 11085
    Top = 3195
    Width = 1095
    Height = 960
    TabIndex = 66
  End
  Begin BtnEnh CmdSum
    Left = 12165
    Top = 3195
    Width = 1095
    Height = 960
    TabIndex = 67
  End
  Begin BtnEnh cmdAdujst
    Left = 13260
    Top = 3195
    Width = 1110
    Height = 960
    Visible = 0   'False
    TabIndex = 68
  End
  Begin Image QrImage
    Left = 13335
    Top = 4245
    Width = 1800
    Height = 1350
    Visible = 0   'False
  End
  Begin Label Lbl
    Caption = "Travel Agent"
    Index = 15
    ForeColor = &HC00000&
    Left = 195
    Top = 2445
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
  Begin Label LblBillNo
    Caption = "Bill # "
    BackColor = &HFFFF00&
    ForeColor = &H80FF80&
    Left = 7590
    Top = 615
    Width = 2235
    Height = 210
    TabIndex = 69
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
    Left = 5295
    Top = 8415
    Width = 2790
    Height = 285
    TabIndex = 62
    Alignment = 2 'Center
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
    Left = 1920
    Top = 8415
    Width = 2880
    Height = 255
    TabIndex = 61
    Alignment = 2 'Center
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
  Begin Label Label5
    Caption = "Select Bill #"
    BackColor = &HC0C000&
    ForeColor = &HFFFFFF&
    Left = 9990
    Top = 4350
    Width = 1485
    Height = 345
    TabIndex = 60
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
  Begin Label Label4
    Caption = "Payment Mode"
    BackColor = &HC0C000&
    ForeColor = &HFFFFFF&
    Left = 10935
    Top = 2265
    Width = 2430
    Height = 315
    TabIndex = 59
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
  Begin Label Label3
    Caption = "Guest Comments"
    BackColor = &HC0C000&
    ForeColor = &HFFFFFF&
    Left = 10935
    Top = 945
    Width = 2430
    Height = 315
    TabIndex = 58
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
  Begin Label Label2
    Caption = "Others Deatils"
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 10095
    Top = 600
    Width = 3495
    Height = 345
    TabIndex = 57
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
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
  Begin Label Label1
    Caption = "Room Bill Details for Folio No."
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 855
    Top = 600
    Width = 9075
    Height = 330
    TabIndex = 55
    Alignment = 2 'Center
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
  Begin Image GuestImage
    Left = 10005
    Top = 4710
    Width = 1740
    Height = 1980
    Stretch = -1  'True
  End
  Begin Label lblRoomCat
    Caption = "."
    ForeColor = &HC0&
    Left = 195
    Top = 1860
    Width = 975
    Height = 255
    Visible = 0   'False
    TabIndex = 54
    BackStyle = 0 'Transparent
  End
  Begin Label lblRoomNo
    Caption = "."
    ForeColor = &HC0&
    Left = 195
    Top = 1575
    Width = 975
    Height = 225
    Visible = 0   'False
    TabIndex = 53
    BackStyle = 0 'Transparent
  End
  Begin Label LblCompany
    Caption = "."
    BackColor = &HFFFF00&
    ForeColor = &HC0&
    Left = 10395
    Top = 2895
    Width = 3405
    Height = 210
    TabIndex = 51
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
    Caption = "Mode"
    Index = 14
    ForeColor = &H0&
    Left = 17115
    Top = 4710
    Width = 525
    Height = 240
    Visible = 0   'False
    TabIndex = 47
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
    Caption = "Room Catogery"
    Index = 6
    ForeColor = &HC00000&
    Left = 6360
    Top = 1590
    Width = 1470
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
    Caption = "Status"
    Index = 1
    ForeColor = &H0&
    Left = 17055
    Top = 4005
    Width = 540
    Height = 240
    Visible = 0   'False
    TabIndex = 36
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Lbl
    Caption = "Company"
    Index = 3
    ForeColor = &HC00000&
    Left = 195
    Top = 2160
    Width = 900
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
    Caption = "Guest Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 195
    Top = 1020
    Width = 1155
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
  Begin Label LblCheckInDay
    Caption = "."
    ForeColor = &HC0&
    Left = 9885
    Top = 1020
    Width = 60
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
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 6360
    Top = 1020
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
    Caption = "Selct Bill No"
    Index = 34
    ForeColor = &H808000&
    Left = 16680
    Top = 4470
    Width = 1170
    Height = 240
    Visible = 0   'False
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
    Caption = "Room Rate"
    Index = 9
    ForeColor = &HC00000&
    Left = 6375
    Top = 1890
    Width = 1050
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
    Caption = "Rate Code"
    Index = 10
    ForeColor = &H0&
    Left = 15615
    Top = 5370
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 29
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Lbl
    Caption = "Adult/Child"
    Index = 11
    ForeColor = &HC00000&
    Left = 6360
    Top = 2175
    Width = 1050
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
    Caption = "Address"
    Index = 2
    ForeColor = &HC00000&
    Left = 195
    Top = 1305
    Width = 750
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
    Caption = "Comment3"
    Index = 13
    ForeColor = &H0&
    Left = 16065
    Top = 5055
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 26
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Lbl
    Caption = "Comment2"
    Index = 8
    ForeColor = &H0&
    Left = 16050
    Top = 4740
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Lbl
    Caption = "Guest Comments"
    Index = 7
    ForeColor = &HC00000&
    Left = 16530
    Top = 3795
    Width = 1605
    Height = 240
    Visible = 0   'False
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
    Caption = "Depature Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 6360
    Top = 1290
    Width = 1365
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
End

Attribute VB_Name = "frmFomB"

Private global_98 As Integer
Private global_96 As Integer
Private global_88 As Integer
Private MasterFormExit As Integer
Private global_136 As Double

Private Sub CmdPrint_UnknownEvent_9 '1ABE26C
  'Data Table: 559750
  Dim var_A0 As Variant
  Dim var_A4 As Variant
  Dim unk_559754 As Connection15
  Dim Me As Variant
  Dim var_D0 As Variant
  Dim var_D4 As String
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_F8 As Variant
  Dim var_14C As Variant
  Dim var_398 As Double
  Dim var_16C As Variant
  Dim var_180 As String
  Dim var_3A0 As Double
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_D8 As Variant
  Dim var_118 As Variant
  Dim var_1D0 As String
  Dim var_3A8 As Double
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_220 As Variant
  Dim var_138 As Variant
  Dim var_224 As String
  Dim var_3B0 As Double
  Dim var_274 As Variant
  Dim var_3B8 As Double
  Dim var_29C As TextBox
  Dim var_2B8 As Variant
  Dim var_2D8 As Variant
  Dim var_2EC As MSHFlexGrid
  Dim var_318 As Variant
  Dim var_338 As Variant
  Dim var_34C As MSHFlexGrid
  Dim var_35C As Variant
  Dim var_184 As String
  Dim var_188 As String
  Dim var_18C As String
  Dim var_228 As String
  Dim var_308 As String
  Dim var_3F0 As Variant
  Dim var_400 As Variant
  Dim var_460 As Variant
  Dim var_59C As TextBox
  Dim var_5E4 As TextBox
  Dim var_634 As Variant
  Dim var_654 As Variant
  Dim var_6C8 As Variant
  Dim var_70C As Variant
  Dim var_77C As Variant
  Dim var_93C As TextBox
  Dim var_A54 As TextBox
  Dim var_38C As Variant
  Dim var_1FC As Variant
  Dim var_3E0 As Variant
  Dim var_430 As Variant
  Dim var_4B0 As Variant
  Dim var_530 As Variant
  Dim var_564 As Variant
  Dim var_698 As Variant
  Dim var_8A4 As Variant
  Dim var_9EC As Variant
  Dim var_AD4 As Variant
  Dim var_98 As Recordset15
  Dim var_E8 As Variant
  Dim var_94 As Double
  Dim var_1CC As Long
  Dim var_410 As Variant
  Dim var_BAC As Recordset15
  Dim var_BA8 As Double
  Dim var_9C As Recordset15
  loc_1ABA4FC: var_A0 = "Select * from Enviro where lOGSite_code='" & MemVar_1F92078
  loc_1ABA50C: unk_559754.Execute var_A0 & "'", var_C4, -1
  loc_1ABA517: Set var_9C = var_C8
  loc_1ABA53E: If (Me.RecordCount > 0) Then
  loc_1ABA547:   Me.MoveFirst
  loc_1ABA570:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, "Select DISTINCT Bill_No from paycharge where FolioNoDocid='")
  loc_1ABA578:   var_C4 = var_D0.Tag
  loc_1ABA581:   var_A4 = -1 & var_A0
  loc_1ABA591:   unk_559754.Execute var_A0 & "'" & "' AND MODESET<>'S'", var_D8, Me.Txt
  loc_1ABA59C:   Set var_8C = var_D8
  loc_1ABA5BD:   If (global_98 = &HFF) Then
  loc_1ABA5CB:     Set var_C8 = Me.Txt
  loc_1ABA5D1:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HD))
  loc_1ABA5E9:     If Not(IsDate(CVar(var_D0))) Then
  loc_1ABA605:       MsgBox("Guest is not completly checked out.", &H10, var_F8, var_118, var_138)
  loc_1ABA615:       Exit Sub
  loc_1ABA616:     End If
  loc_1ABA61C:     var_CC = var_8C.RecordCount
  loc_1ABA62A:     If (var_CC > 1) Then
  loc_1ABA646:       MsgBox("Bill Splited into more than One Bill", &H10, var_F8, var_118, var_138)
  loc_1ABA656:       Exit Sub
  loc_1ABA657:     End If
  loc_1ABA67C:     For var_13C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_13C 'Integer
  loc_1ABA686:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABA68E:       var_108 = CVar(CLng(&HC)) 'Long
  loc_1ABA6CA:       If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> "*") Then
  loc_1ABA6D1:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABA6D9:         var_108 = CVar(CLng(7)) 'Long
  loc_1ABA704:         If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1ABA70B:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABA713:           var_108 = CVar(CLng(4)) 'Long
  loc_1ABA73C:           var_14C = CVar(CLng(var_86)) 'Long
  loc_1ABA744:           var_16C = CVar(CLng(3)) 'Long
  loc_1ABA76D:           var_19C = CVar(CLng(var_86)) 'Long
  loc_1ABA775:           var_1BC = CVar(CLng(&HD)) 'Long
  loc_1ABA78F:           var_1D0 = CStr(Me.FGrid.TextMatrix))
  loc_1ABA79E:           var_1EC = CVar(CLng(var_86)) 'Long
  loc_1ABA7A6:           var_20C = CVar(CLng(&HD)) 'Long
  loc_1ABA7C0:           var_224 = CStr(Me.FGrid.TextMatrix))
  loc_1ABA7C8:           var_3B0 = Val(var_224)
  loc_1ABA7F9:           var_3B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ABA80A:           Set var_298 = Me.Txt
  loc_1ABA810:           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_29C, var_2A0, var_3B8, CVar(CLng(&HA)), CVar(CLng(var_86)), var_3B0)
  loc_1ABA818:           var_20C = var_29C.Tag
  loc_1ABA821:           var_2B8 = CVar(CLng(var_86)) 'Long
  loc_1ABA829:           var_2D8 = CVar(CLng(7)) 'Long
  loc_1ABA848:           var_318 = CVar(CLng(var_86)) 'Long
  loc_1ABA850:           var_338 = CVar(CLng(8)) 'Long
  loc_1ABA859:           Set var_34C = Me.FGrid
  loc_1ABA8A1:           var_18C = "UPDATE PAYCHARGE SET AMTCR=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & ", AMTDR=" & CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_1ABA8BB:           var_228 = var_18C & ",OnAmt=" & CStr(Val(var_1D0)) & ",BillAmount="
  loc_1ABA8FA:           var_308 = var_228 & CStr(var_3B0) & ",Split=" & CStr(var_3B8) & ",U_AE='E' WHERE FOLIONODOCID='" & var_2A0 & "' AND DOCID='" & CStr(Me.FGrid.TextMatrix))
  loc_1ABA916:           unk_559754.Execute var_308 & "' AND sNO=" & CStr(Val(CStr(var_34C.TextMatrix)))), var_38C, -1
  loc_1ABA982:         End If
  loc_1ABA985:       Else
  loc_1ABA98E:         unk_559754.BeginTrans var_CC
  loc_1ABA997:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABA99F:         var_108 = CVar(CLng(7)) 'Long
  loc_1ABA9BE:         var_14C = CVar(CLng(var_86)) 'Long
  loc_1ABA9C6:         var_16C = CVar(CLng(8)) 'Long
  loc_1ABA9E8:         var_398 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ABAA00:         Set var_D8 = Me.FGrid
  loc_1ABAA06:         var_118 = var_D8.TextMatrix)
  loc_1ABAA4B:         Set var_220 = Me.FGrid
  loc_1ABAA51:         var_3F0 = var_220.TextMatrix)
  loc_1ABAA6C:         var_410 = Right(CVar(CStr(var_3F0)), 8)
  loc_1ABAA7D:         var_3A0 = Val(CStr(var_410))
  loc_1ABAA95:         Set var_274 = Me.FGrid
  loc_1ABAA9B:         var_460 = var_274.TextMatrix)
  loc_1ABAACB:         Set var_298 = Me.Txt
  loc_1ABAAD1:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HD), var_29C, var_460, CVar(CLng(7)), CVar(CLng(var_86)), var_3A0, var_3F0)
  loc_1ABAAE0:         Proc_6_7_F25D88(var_4D0, CVar(var_29C), CVar(CLng(7)), CVar(CLng(var_86)), var_118)
  loc_1ABAAF0:         Set var_2EC = Me.Txt
  loc_1ABAAF6:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HF), var_34C, CVar(CLng(7)))
  loc_1ABAB15:         Set var_390 = Me.Txt
  loc_1ABAB1B:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HE), var_534, CVar(CLng(var_86)))
  loc_1ABAB3D:         Set var_598 = Me.Txt
  loc_1ABAB43:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_59C, var_1D0)
  loc_1ABAB5E:         Set var_5E0 = Me.Txt
  loc_1ABAB64:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HB), var_5E4)
  loc_1ABAB75:         var_634 = CVar(CLng(var_86)) 'Long
  loc_1ABAB7D:         var_654 = CVar(CLng(2)) 'Long
  loc_1ABAB9C:         var_6C8 = CVar(CLng(var_86)) 'Long
  loc_1ABABB3:         var_70C = Me.FGrid.TextMatrix)
  loc_1ABABCB:         var_77C = CVar(CLng(3)) 'Long
  loc_1ABABED:         var_3A8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ABAC1E:         var_3B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ABAC4F:         Set var_938 = Me.Txt
  loc_1ABAC55:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_93C, var_224, var_3B0, CVar(CLng(4)), CVar(CLng(var_86)), var_3A8)
  loc_1ABAC5D:         var_77C = var_93C.Text
  loc_1ABAC70:         Proc_6_7_F25D88(var_9DC, Date, CVar(CLng(var_86)), var_70C)
  loc_1ABAC83:         Set var_A50 = Me.Txt
  loc_1ABAC89:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_A54, var_228, CVar(CLng(&HB)))
  loc_1ABAC91:         var_6C8 = var_A54.Tag
  loc_1ABACB1:         Set var_B28 = Me.Txt
  loc_1ABACB7:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HD), var_B2C)
  loc_1ABACC6:         Proc_6_7_F25D88(var_B4C, CVar(var_B2C))
  loc_1ABACDF:         var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_1ABACE3:         var_A4 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,BillAmount,AmtDr,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,U_Name,U_EntDt,U_AE,RestCode,PlanCharge,FixedChargeCode,FolioNoDocid,LogSite_Code,Split,Bill_no,SettleDate) Values ('" & var_A0
  loc_1ABACEA:         var_180 = var_A4 & "',"
  loc_1ABAD0C:         var_3E0 = CVar(var_180 & CStr(var_59C.Tag) & ",'") & Trim(Mid(CVar(CStr(var_118)), 4, 5)) & "'," 
  loc_1ABAD20:         var_430 = var_3E0 & CVar(var_3A0) & ",'" 
  loc_1ABAD43:         var_4B0 = var_430 & CVar(MemVar_1F92070) & "','" & Mid(CVar(CStr(var_460)), 9, 5) & "'," 
  loc_1ABAD5F:         var_530 = (Trim(CVar(var_34C)) + ":")
  loc_1ABAD66:         var_564 = (var_530 + Trim(CVar(var_534)))
  loc_1ABADA4:         var_698 = var_4B0 & var_4D0 & ",'" & var_564 & "','" & CVar(var_1D0) & "','','" & CVar(var_5E4.Tag) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1ABADF0:         var_8A4 = var_698 & "','" & CVar(CStr(var_70C)) & "',0," & CVar(var_3A8) & "," & CVar(var_3B0) & ",0,'" & Trim(CVar(Me.lblRoomCat)) 
  loc_1ABAE3F:         var_9EC = var_8A4 & "'," & "'RO','" & Trim(CVar(Me.lblRoomNo)) & "'," & CVar(var_224) & ",'" & CVar(MemVar_1F920C8) & "'," & var_9DC 
  loc_1ABAE81:         var_AD4 = var_9EC & ",'A','" & CVar(MemVar_1F92078) & "FOM','','','" & CVar(var_228) & "','" & CVar(MemVar_1F92078) & "','1','" 
  loc_1ABAEAF:         unk_559754.Execute CStr(var_AD4 & Trim(CVar(Me.TXT_GNAME)) & "'," & var_B4C & ")"), var_B9C, -1
  loc_1ABAFB3:         var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABAFCA:         var_C4 = Me.FGrid.TextMatrix)
  loc_1ABB008:         Set var_D0 = Me.Txt
  loc_1ABB00E:         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HD), var_D8, var_180, var_C4, CVar(CLng(7)))
  loc_1ABB016:         var_B4 = var_D8.Text
  loc_1ABB024:         Proc_6_7_F25D88(var_3E0, CVar(var_180), var_BA0)
  loc_1ABB03D:         var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1ABB058:         var_35C = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='") & Trim(Mid(CVar(CStr(var_C4)), 4, 5)) 
  loc_1ABB07F:         unk_559754.Execute CStr(var_35C & "' And VP.Date_From<=" & var_3E0 & " Order By VP.Date_From DESC"), var_410, -1
  loc_1ABB08A:         Set var_98 = var_220
  loc_1ABB0D4:         If (var_98.RecordCount > 0) Then
  loc_1ABB0DB:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_1ABB0E3:           var_108 = CVar(CLng(7)) 'Long
  loc_1ABB10D:           var_118 = Right(CVar(CStr(Me.FGrid.TextMatrix))), 8)
  loc_1ABB11E:           var_398 = Val(CStr(var_118))
  loc_1ABB136:           Set var_D0 = Me.FGrid
  loc_1ABB13C:           var_138 = var_D0.TextMatrix)
  loc_1ABB167:           var_38C = Trim(Mid(CVar(CStr(var_138)), 4, 5))
  loc_1ABB17B:           var_D8 = var_98.Fields
  loc_1ABB183:           var_220 = var_D8.Item("Date_From")
  loc_1ABB192:           Proc_6_7_F25D88(var_410, CVar(var_220), var_138, CVar(CLng(7)), CVar(CLng(var_86)), var_398)
  loc_1ABB1AC:           var_A4 = CStr(var_398)
  loc_1ABB1C5:           var_188 = "Update Voucher_Prefix Set Start_Srl_No=" & var_A4 & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1ABB1F7:           unk_559754.Execute CStr(CVar(var_188 & MemVar_1F92078 & "') and V_Type='") & var_38C & "' and Date_From=" & var_410), var_430, -1
  loc_1ABB23B:         End If
  loc_1ABB240:         Set var_98 = Nothing
  loc_1ABB249:         unk_559754.CommitTrans
  loc_1ABB24E:       End If
  loc_1ABB251:     Next var_13C 'Integer
  loc_1ABB282:     Set var_C8 = Me.Txt
  loc_1ABB288:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A4, "Delete from PayCharge where PayCode='" & MemVar_1F92078 & "ROFF' And ModeSet='S' and FolionoDocid='")
  loc_1ABB290:     var_C4 = var_D0.Tag
  loc_1ABB299:     var_180 = -1 & var_A4
  loc_1ABB2A9:     unk_559754.Execute "Update Voucher_Prefix Set Start_Srl_No=" & var_A4 & " Where (SITE_CODE='" & "'", var_D8, 
  loc_1ABB2D5:     Set var_C8 = Me.Txt
  loc_1ABB2DB:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0)
  loc_1ABB2EB:     var_C4 = CVar(var_D0.Tag) 'String
  loc_1ABB2FE:     Proc_96_41_13D60F4(CStr(Trim(var_C4)))
  loc_1ABB322:     Set var_C8 = Me.Txt
  loc_1ABB328:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0)
  loc_1ABB338:     var_E8 = 0
  loc_1ABB355:     var_A4 = "Select Sum(Amtcr-amtdr) from paycharge where FolionoDocid='" & var_D0.Tag
  loc_1ABB365:     unk_559754.Execute var_A4 & "' and modeset='S'", var_C4, -1
  loc_1ABB36D:     var_D8 = var_D8.Fields
  loc_1ABB375:     var_E8 = var_220.Item(var_220)
  loc_1ABB384:     Proc_6_39_E7C810(var_118, CVar(var_274))
  loc_1ABB38D:     var_94 = CSng(var_118)
  loc_1ABB3AD:     var_B4 = 0
  loc_1ABB3B9:     var_108 = CVar(CLng(3)) 'Long
  loc_1ABB3D3:     var_A0 = CStr(Me.Fgrid1.TextMatrix))
  loc_1ABB3DB:     var_398 = Val(var_A0)
  loc_1ABB3EF:     If (var_94 <> CDbl(var_398)) Then
  loc_1ABB400:       Set var_C8 = Me.Txt
  loc_1ABB406:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_398)
  loc_1ABB40E:       var_108 = var_D0.Tag
  loc_1ABB419:       var_B4 = "Bill_no"
  loc_1ABB425:       var_D8 = var_8C.Fields
  loc_1ABB448:       Proc_6_7_F25D88(var_38C, Date, var_B4)
  loc_1ABB458:       Proc_6_7_F25D88(var_430, MemVar_1F920EC)
  loc_1ABB45D:       var_1CC = 0
  loc_1ABB469:       var_1FC = CVar(CLng(3)) 'Long
  loc_1ABB472:       Set var_274 = Me.Fgrid1
  loc_1ABB48B:       var_398 = Val(CStr(var_274.TextMatrix)))
  loc_1ABB4A2:       var_A4 = "Insert Into FomBillChangeDetails (FolionoDocid,Bill_No,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code,BillChangeDate,BillAmt,SettleAmt) values('" & var_A0
  loc_1ABB4A9:       var_F8 = CVar(var_A4 & "','") 'String
  loc_1ABB4AF:       var_118 = var_F8 & var_D8.Item(var_B4).Value 
  loc_1ABB4B8:       var_138 = var_118 & "','" 
  loc_1ABB4EE:       var_400 = var_138 & CVar(MemVar_1F920C8) & "'," & var_38C & ",'A','" & CVar(MemVar_1F92070) & "','" 
  loc_1ABB547:       unk_559754.Execute CStr(var_400 & CVar(MemVar_1F92078) & "'," & var_430 & "," & CVar(var_398) & "," & CVar(var_94) & ")"), var_4B0, -1
  loc_1ABB5AA:       var_C4 = "Please Settle this Bill Once Again"
  loc_1ABB5B0:       MsgBox(var_C4, &H10, var_F8, var_118, var_138)
  loc_1ABB5C0:     End If
  loc_1ABB5ED:     Set var_C8 = Me.Txt
  loc_1ABB5F3:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, "SELECT COUNT(*) FROM PAYCHARGE WHERE FOLIONODOCID='", var_C4, -1, var_D8)
  loc_1ABB5FB:     var_220 = var_D0.Tag
  loc_1ABB612:     var_180 = 0 & var_A0 & "' AND PAYCODE<>'" & MemVar_1F92078
  loc_1ABB622:     unk_559754.Execute var_180 & "ROFF' AND Modeset='S'", var_274, var_F8
  loc_1ABB62A:     var_298 = var_D8.Fields
  loc_1ABB632:     var_1FC = var_220.Item(var_398)
  loc_1ABB63A:      = var_274.Value
  loc_1ABB66B:     If (var_F8 = 1) Then
  loc_1ABB66E:       var_B4 = 0
  loc_1ABB67A:       var_108 = CVar(CLng(3)) 'Long
  loc_1ABB689:       var_C4 = Me.Fgrid1.TextMatrix)
  loc_1ABB694:       var_A0 = CStr(var_C4)
  loc_1ABB69C:       var_398 = Val(var_A0)
  loc_1ABB6AD:       Set var_D0 = Me.Txt
  loc_1ABB6B3:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D8, var_180)
  loc_1ABB6D9:       var_D4 = "UPDATE PAYCHARGE SET AMTCR=" & CStr(var_D8.Tag)
  loc_1ABB6F7:       unk_559754.Execute var_D4 & " WHERE FOLIONODOCID='" & var_180 & "' AND Modeset='S' and PayType='Cash'", var_F8, -1
  loc_1ABB71F:     End If
  loc_1ABB73D:     Set var_C8 = Me.Txt
  loc_1ABB743:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, "Select Top 1 * from paycharge where FolioNoDocid='", var_C4)
  loc_1ABB74B:     -1 = var_D0.Tag
  loc_1ABB76C:     Set var_D8 = Me.Txt
  loc_1ABB772:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_220, var_D4, var_274 & var_A0 & "' AND (RelatedFolioNo=")
  loc_1ABB77A:     var_220 = var_220.Text
  loc_1ABB7A1:     unk_559754.Execute var_108 & var_D4 & " Or RelatedFolioNo=0) And PayCode='" & MemVar_1F92078 & "RMCH' And AmtDr>0 Order By Vdate", var_B4, 
  loc_1ABB7AC:     Set var_BAC = var_274
  loc_1ABB7E6:     If (var_BAC.RecordCount > 0) Then
  loc_1ABB800:       var_D0 = var_BAC.Fields.Item("AmtDr")
  loc_1ABB808:       var_C4 = CVar(var_D0) 'Address
  loc_1ABB80F:       Proc_6_39_E7C810(var_F8)
  loc_1ABB838:       var_BA8 = CSng(Format(var_F8, "0.00"))
  loc_1ABB849:     End If
  loc_1ABB84E:     Set var_BAC = Nothing
  loc_1ABB858:     If (var_BA8 > CDbl(0)) Then
  loc_1ABB866:       Proc_6_7_F25D88(var_F8, CVar(Proc_6_15_EF2C1C(var_BA8, 1)))
  loc_1ABB879:       Set var_C8 = Me.Txt
  loc_1ABB87F:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_D4)
  loc_1ABB887:       1 = var_D0.Tag
  loc_1ABB89A:       Set var_D8 = Me.Txt
  loc_1ABB8A0:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_220)
  loc_1ABB8CD:       var_118 = CVar("UPDATE RoomOcc SET RoomRate=" & CStr(var_BA8) & ",U_EntDt=") 'String
  loc_1ABB8D3:       var_138 = var_118 & var_F8 
  loc_1ABB8F9:       var_3E0 = var_138 & ",U_AE='E' WHERE DOCID='" & CVar(var_D4) & "' And ChngDate In (Select ChngDate From RoomOcc WHERE DOCID='" & CVar(var_220.Tag) 
  loc_1ABB910:       unk_559754.Execute CStr(var_3E0 & "' And Sno=1)"), var_400, -1
  loc_1ABB959:       Set var_C8 = Me.Txt
  loc_1ABB95F:       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(8), var_D0, CStr(var_BA8))
  loc_1ABB967:       var_D0.Text = var_274
  loc_1ABB976:     End If
  loc_1ABB976:   End If
  loc_1ABB999:   If (CStr(Me.TXT_GNAME.defText) <> vbNullString) Then
  loc_1ABB9AA:     Set var_C8 = Me.Txt
  loc_1ABB9B0:     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0)
  loc_1ABB9CF:     If (var_D0.Text <> vbNullString) Then
  loc_1ABBA11:       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER") Then
  loc_1ABBA39:         var_C4 = Me.Fields.Item("AutoPrint").Value
  loc_1ABBA53:         If (var_C4 = "Yes") Then
  loc_1ABBA56:           Call Proc_100_40_1265C08(var_C4)
  loc_1ABBA5E:         Else
  loc_1ABBA8D:           If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABBA90:             Call Proc_100_40_1265C08()
  loc_1ABBA98:           Else
  loc_1ABBA98:             Exit Sub
  loc_1ABBA99:           End If
  loc_1ABBA99:         End If
  loc_1ABBA9C:       Else
  loc_1ABBADB:         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER NEW") Then
  loc_1ABBB1D:           If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1ABBB37:             var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABBB59:             If (Proc_6_38_E68A98(CVar(var_D0)) = "Yes") Then
  loc_1ABBB6A:               Set var_C8 = Me.Txt
  loc_1ABBB70:               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0)
  loc_1ABBB78:               var_A0 = var_D0.Tag
  loc_1ABBB99:               Set var_D8 = Me.Txt
  loc_1ABBB9F:               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220)
  loc_1ABBBA7:               var_D4 = var_220.Text
  loc_1ABBBB7:               Set var_2EC = Me.QrImage
  loc_1ABBBC0:               Set var_29C = Me.GuestImage
  loc_1ABBBC9:               var_184 = "R"
  loc_1ABBC19:               Proc_96_64_1DB033C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABBC43:             Else
  loc_1ABBC51:               Set var_C8 = Me.Txt
  loc_1ABBC57:               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABBC5F:               global_88 = var_D0.Tag
  loc_1ABBC80:               Set var_D8 = Me.Txt
  loc_1ABBC86:               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABBC8E:               var_184 = var_220.Text
  loc_1ABBC9E:               Set var_2EC = Me.QrImage
  loc_1ABBCA7:               Set var_29C = Me.GuestImage
  loc_1ABBCB0:               var_184 = "R"
  loc_1ABBD00:               Proc_96_59_1F0457C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABBD27:             End If
  loc_1ABBD27:             Exit Sub
  loc_1ABBD2B:           Else
  loc_1ABBD5A:             If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABBD74:               var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABBD85:               var_A0 = Proc_6_38_E68A98(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABBD96:               If (var_A0 = "Yes") Then
  loc_1ABBDA7:                 Set var_C8 = Me.Txt
  loc_1ABBDAD:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABBDB5:                 var_2EC = var_D0.Tag
  loc_1ABBDD6:                 Set var_D8 = Me.Txt
  loc_1ABBDDC:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABBDE4:                 var_29C = var_220.Text
  loc_1ABBDF4:                 Set var_2EC = Me.QrImage
  loc_1ABBDFD:                 Set var_29C = Me.GuestImage
  loc_1ABBE06:                 var_184 = "R"
  loc_1ABBE56:                 Proc_96_64_1DB033C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABBE80:               Else
  loc_1ABBE8E:                 Set var_C8 = Me.Txt
  loc_1ABBE94:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABBE9C:                 global_84 = var_D0.Tag
  loc_1ABBEBD:                 Set var_D8 = Me.Txt
  loc_1ABBEC3:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABBECB:                 var_29C = var_220.Text
  loc_1ABBEDB:                 Set var_2EC = Me.QrImage
  loc_1ABBEE4:                 Set var_29C = Me.GuestImage
  loc_1ABBEED:                 var_184 = "R"
  loc_1ABBF3D:                 Proc_96_59_1F0457C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABBF64:               End If
  loc_1ABBF64:               Exit Sub
  loc_1ABBF68:             Else
  loc_1ABBF68:               Exit Sub
  loc_1ABBF69:             End If
  loc_1ABBF69:           End If
  loc_1ABBF6C:         Else
  loc_1ABBFAB:           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN") Then
  loc_1ABBFED:             If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1ABC007:               var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABC018:               var_A0 = Proc_6_38_E68A98(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABC029:               If (var_A0 = "Yes") Then
  loc_1ABC03A:                 Set var_C8 = Me.Txt
  loc_1ABC040:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABC048:                 var_2EC = var_D0.Tag
  loc_1ABC069:                 Set var_D8 = Me.Txt
  loc_1ABC06F:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABC077:                 var_2EC = var_220.Text
  loc_1ABC085:                 Set var_2EC = Nothing 
  loc_1ABC08F:                 Set var_29C = Me.GuestImage
  loc_1ABC098:                 var_184 = "R"
  loc_1ABC0E8:                 Proc_96_64_1DB033C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABC112:               Else
  loc_1ABC120:                 Set var_C8 = Me.Txt
  loc_1ABC126:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABC12E:                 global_84 = var_D0.Tag
  loc_1ABC14F:                 Set var_D8 = Me.Txt
  loc_1ABC155:                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABC15D:                 var_29C = var_220.Text
  loc_1ABC16C:                 var_188 = "PayCharge"
  loc_1ABC175:                 Set var_29C = Me.GuestImage
  loc_1ABC17E:                 var_184 = "R"
  loc_1ABC1CE:                 Proc_96_62_1F638EC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABC1F5:               End If
  loc_1ABC1F5:               Exit Sub
  loc_1ABC1F9:             Else
  loc_1ABC228:               If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABC242:                 var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABC253:                 var_A0 = Proc_6_38_E68A98(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABC264:                 If (var_A0 = "Yes") Then
  loc_1ABC275:                   Set var_C8 = Me.Txt
  loc_1ABC27B:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABC283:                   var_188 = var_D0.Tag
  loc_1ABC2A4:                   Set var_D8 = Me.Txt
  loc_1ABC2AA:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABC2B2:                   var_2EC = var_220.Text
  loc_1ABC2C0:                   Set var_2EC = Nothing 
  loc_1ABC2CA:                   Set var_29C = Me.GuestImage
  loc_1ABC2D3:                   var_184 = "R"
  loc_1ABC323:                   Proc_96_64_1DB033C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABC34D:                 Else
  loc_1ABC35B:                   Set var_C8 = Me.Txt
  loc_1ABC361:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABC369:                   global_84 = var_D0.Tag
  loc_1ABC38A:                   Set var_D8 = Me.Txt
  loc_1ABC390:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABC398:                   var_29C = var_220.Text
  loc_1ABC3A7:                   var_188 = "PayCharge"
  loc_1ABC3B0:                   Set var_29C = Me.GuestImage
  loc_1ABC3B9:                   var_184 = "R"
  loc_1ABC409:                   Proc_96_62_1F638EC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABC430:                 End If
  loc_1ABC430:                 Exit Sub
  loc_1ABC434:               Else
  loc_1ABC434:                 Exit Sub
  loc_1ABC435:               End If
  loc_1ABC435:             End If
  loc_1ABC438:           Else
  loc_1ABC477:             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL WINDOWS PLAIN PAPER PLAN1") Then
  loc_1ABC4B9:               If (Me.Fields.Item("AutoPrint").Value = "Yes") Then
  loc_1ABC4D3:                 var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABC4E4:                 var_A0 = Proc_6_38_E68A98(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABC4F5:                 If (var_A0 = "Yes") Then
  loc_1ABC506:                   Set var_C8 = Me.Txt
  loc_1ABC50C:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABC514:                   var_188 = var_D0.Tag
  loc_1ABC535:                   Set var_D8 = Me.Txt
  loc_1ABC53B:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABC543:                   var_2EC = var_220.Text
  loc_1ABC551:                   Set var_2EC = Nothing 
  loc_1ABC55B:                   Set var_29C = Me.GuestImage
  loc_1ABC564:                   var_184 = "R"
  loc_1ABC5B4:                   Proc_96_64_1DB033C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABC5DE:                 Else
  loc_1ABC5EC:                   Set var_C8 = Me.Txt
  loc_1ABC5F2:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABC5FA:                   global_84 = var_D0.Tag
  loc_1ABC61B:                   Set var_D8 = Me.Txt
  loc_1ABC621:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABC629:                   var_29C = var_220.Text
  loc_1ABC638:                   var_188 = "PayCharge"
  loc_1ABC641:                   Set var_29C = Me.GuestImage
  loc_1ABC64A:                   var_184 = "R"
  loc_1ABC69A:                   Proc_96_63_1F555DC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABC6C1:                 End If
  loc_1ABC6C1:                 Exit Sub
  loc_1ABC6C5:               Else
  loc_1ABC6F4:                 If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABC70E:                   var_D0 = var_9C.Fields.Item("BillPrintingSummerised")
  loc_1ABC71F:                   var_A0 = Proc_6_38_E68A98(CVar(var_D0), 2, global_88, global_84, var_184)
  loc_1ABC730:                   If (var_A0 = "Yes") Then
  loc_1ABC741:                     Set var_C8 = Me.Txt
  loc_1ABC747:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, var_29C)
  loc_1ABC74F:                     var_188 = var_D0.Tag
  loc_1ABC770:                     Set var_D8 = Me.Txt
  loc_1ABC776:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4)
  loc_1ABC77E:                     var_2EC = var_220.Text
  loc_1ABC78C:                     Set var_2EC = Nothing 
  loc_1ABC796:                     Set var_29C = Me.GuestImage
  loc_1ABC79F:                     var_184 = "R"
  loc_1ABC7EF:                     Proc_96_64_1DB033C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABC819:                   Else
  loc_1ABC827:                     Set var_C8 = Me.Txt
  loc_1ABC82D:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABC835:                     global_84 = var_D0.Tag
  loc_1ABC856:                     Set var_D8 = Me.Txt
  loc_1ABC85C:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABC864:                     var_29C = var_220.Text
  loc_1ABC873:                     var_188 = "PayCharge"
  loc_1ABC87C:                     Set var_29C = Me.GuestImage
  loc_1ABC885:                     var_184 = "R"
  loc_1ABC8D5:                     Proc_96_63_1F555DC(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABC8FC:                   End If
  loc_1ABC8FC:                   Exit Sub
  loc_1ABC900:                 Else
  loc_1ABC900:                   Exit Sub
  loc_1ABC901:                 End If
  loc_1ABC901:               End If
  loc_1ABC904:             Else
  loc_1ABC943:               If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED") Then
  loc_1ABC963:                 var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABC985:                 If (var_D0.Value = "Yes") Then
  loc_1ABC996:                   Set var_C8 = Me.Txt
  loc_1ABC99C:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88, global_84)
  loc_1ABC9A4:                   var_184 = var_D0.Tag
  loc_1ABC9AD:                   Set var_29C = Me.FGrid
  loc_1ABC9C5:                   Set var_D8 = Me.Txt
  loc_1ABC9CB:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_29C)
  loc_1ABC9D3:                   var_188 = var_220.Text
  loc_1ABC9DB:                   var_184 = "R"
  loc_1ABCA2B:                   Proc_96_49_1C45D64(var_A0, var_29C, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABCA4C:                   Exit Sub
  loc_1ABCA50:                 Else
  loc_1ABCA7F:                   If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABCA90:                     Set var_C8 = Me.Txt
  loc_1ABCA96:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABCA9E:                     global_88 = var_D0.Tag
  loc_1ABCABF:                     Set var_D8 = Me.Txt
  loc_1ABCAC5:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABCACD:                     var_184 = var_220.Text
  loc_1ABCAD5:                     var_184 = "R"
  loc_1ABCB25:                     Proc_96_49_1C45D64(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABCB46:                     Exit Sub
  loc_1ABCB4A:                   Else
  loc_1ABCB4A:                     Exit Sub
  loc_1ABCB4B:                   End If
  loc_1ABCB4B:                 End If
  loc_1ABCB68:                 var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABCB8A:                 If (var_D0.Value = "Yes") Then
  loc_1ABCB9B:                   Set var_C8 = Me.Txt
  loc_1ABCBA1:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABCBA9:                   global_88 = var_D0.Tag
  loc_1ABCBCA:                   Set var_D8 = Me.Txt
  loc_1ABCBD0:                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABCBD8:                   var_184 = var_220.Text
  loc_1ABCBE0:                   var_184 = "R"
  loc_1ABCC30:                   Proc_96_69_1BA64B8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABCC51:                   Exit Sub
  loc_1ABCC55:                 Else
  loc_1ABCC84:                   If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABCC95:                     Set var_C8 = Me.Txt
  loc_1ABCC9B:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABCCA3:                     global_88 = var_D0.Tag
  loc_1ABCCC4:                     Set var_D8 = Me.Txt
  loc_1ABCCCA:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABCCD2:                     var_184 = var_220.Text
  loc_1ABCCDA:                     var_184 = "R"
  loc_1ABCD2A:                     Proc_96_69_1BA64B8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABCD4B:                     Exit Sub
  loc_1ABCD4F:                   Else
  loc_1ABCD4F:                     Exit Sub
  loc_1ABCD50:                   End If
  loc_1ABCD50:                 End If
  loc_1ABCD53:               Else
  loc_1ABCD92:                 If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN") Then
  loc_1ABCDB2:                   var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABCDD4:                   If (var_D0.Value = "Yes") Then
  loc_1ABCDE5:                     Set var_C8 = Me.Txt
  loc_1ABCDEB:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABCDF3:                     global_88 = var_D0.Tag
  loc_1ABCE14:                     Set var_D8 = Me.Txt
  loc_1ABCE1A:                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABCE22:                     var_184 = var_220.Text
  loc_1ABCE2A:                     var_184 = "R"
  loc_1ABCE7A:                     Proc_96_65_1DA7C54(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABCE9B:                     Exit Sub
  loc_1ABCE9F:                   Else
  loc_1ABCECE:                     If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABCEDF:                       Set var_C8 = Me.Txt
  loc_1ABCEE5:                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABCEED:                       global_88 = var_D0.Tag
  loc_1ABCF0E:                       Set var_D8 = Me.Txt
  loc_1ABCF14:                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABCF1C:                       var_184 = var_220.Text
  loc_1ABCF24:                       var_184 = "R"
  loc_1ABCF74:                       Proc_96_65_1DA7C54(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABCF95:                       Exit Sub
  loc_1ABCF99:                     Else
  loc_1ABCF99:                       Exit Sub
  loc_1ABCF9A:                     End If
  loc_1ABCF9A:                   End If
  loc_1ABCF9D:                 Else
  loc_1ABCFDC:                   If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PLAIN FORMAT1") Then
  loc_1ABCFFC:                     var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABD01E:                     If (var_D0.Value = "Yes") Then
  loc_1ABD02F:                       Set var_C8 = Me.Txt
  loc_1ABD035:                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABD03D:                       global_88 = var_D0.Tag
  loc_1ABD05E:                       Set var_D8 = Me.Txt
  loc_1ABD064:                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABD06C:                       var_184 = var_220.Text
  loc_1ABD074:                       var_184 = "R"
  loc_1ABD0C4:                       Proc_96_66_1D56DA8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABD0E5:                       Exit Sub
  loc_1ABD0E9:                     Else
  loc_1ABD118:                       If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABD129:                         Set var_C8 = Me.Txt
  loc_1ABD12F:                         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABD137:                         global_88 = var_D0.Tag
  loc_1ABD158:                         Set var_D8 = Me.Txt
  loc_1ABD15E:                         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABD166:                         var_184 = var_220.Text
  loc_1ABD16E:                         var_184 = "R"
  loc_1ABD1BE:                         Proc_96_66_1D56DA8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABD1DF:                         Exit Sub
  loc_1ABD1E3:                       Else
  loc_1ABD1E3:                         Exit Sub
  loc_1ABD1E4:                       End If
  loc_1ABD1E4:                     End If
  loc_1ABD1E7:                   Else
  loc_1ABD226:                     If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT1") Then
  loc_1ABD246:                       var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABD268:                       If (var_D0.Value = "Yes") Then
  loc_1ABD279:                         Set var_C8 = Me.Txt
  loc_1ABD27F:                         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABD287:                         global_88 = var_D0.Tag
  loc_1ABD2A8:                         Set var_D8 = Me.Txt
  loc_1ABD2AE:                         Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABD2B6:                         var_184 = var_220.Text
  loc_1ABD2C0:                         var_188 = 0
  loc_1ABD2C9:                         var_184 = "R"
  loc_1ABD319:                         Proc_96_53_1D37E3C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABD33C:                         Exit Sub
  loc_1ABD340:                       Else
  loc_1ABD36F:                         If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABD380:                           Set var_C8 = Me.Txt
  loc_1ABD386:                           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABD38E:                           global_84 = var_D0.Tag
  loc_1ABD3AF:                           Set var_D8 = Me.Txt
  loc_1ABD3B5:                           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABD3BD:                           var_188 = var_220.Text
  loc_1ABD3C7:                           var_188 = 0
  loc_1ABD3D0:                           var_184 = "R"
  loc_1ABD420:                           Proc_96_53_1D37E3C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABD443:                           Exit Sub
  loc_1ABD447:                         Else
  loc_1ABD447:                           Exit Sub
  loc_1ABD448:                         End If
  loc_1ABD448:                       End If
  loc_1ABD44B:                     Else
  loc_1ABD48A:                       If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT2") Then
  loc_1ABD4AA:                         var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABD4CC:                         If (var_D0.Value = "Yes") Then
  loc_1ABD4DD:                           Set var_C8 = Me.Txt
  loc_1ABD4E3:                           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABD4EB:                           global_84 = var_D0.Tag
  loc_1ABD50C:                           Set var_D8 = Me.Txt
  loc_1ABD512:                           Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABD51A:                           var_188 = var_220.Text
  loc_1ABD522:                           var_184 = "R"
  loc_1ABD572:                           Proc_96_67_1D47424(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABD593:                           Exit Sub
  loc_1ABD597:                         Else
  loc_1ABD5C6:                           If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABD5D7:                             Set var_C8 = Me.Txt
  loc_1ABD5DD:                             Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABD5E5:                             global_88 = var_D0.Tag
  loc_1ABD606:                             Set var_D8 = Me.Txt
  loc_1ABD60C:                             Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABD614:                             var_184 = var_220.Text
  loc_1ABD61C:                             var_184 = "R"
  loc_1ABD66C:                             Proc_96_67_1D47424(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABD68D:                             Exit Sub
  loc_1ABD691:                           Else
  loc_1ABD691:                             Exit Sub
  loc_1ABD692:                           End If
  loc_1ABD692:                         End If
  loc_1ABD695:                       Else
  loc_1ABD6D4:                         If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT3") Then
  loc_1ABD6F4:                           var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABD716:                           If (var_D0.Value = "Yes") Then
  loc_1ABD727:                             Set var_C8 = Me.Txt
  loc_1ABD72D:                             Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABD735:                             global_88 = var_D0.Tag
  loc_1ABD756:                             Set var_D8 = Me.Txt
  loc_1ABD75C:                             Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABD764:                             var_184 = var_220.Text
  loc_1ABD76C:                             var_184 = "R"
  loc_1ABD7BC:                             Proc_96_68_1E08714(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABD7DD:                             Exit Sub
  loc_1ABD7E1:                           Else
  loc_1ABD810:                             If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABD821:                               Set var_C8 = Me.Txt
  loc_1ABD827:                               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABD82F:                               global_88 = var_D0.Tag
  loc_1ABD850:                               Set var_D8 = Me.Txt
  loc_1ABD856:                               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABD85E:                               var_184 = var_220.Text
  loc_1ABD866:                               var_184 = "R"
  loc_1ABD8B6:                               Proc_96_68_1E08714(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABD8D7:                               Exit Sub
  loc_1ABD8DB:                             Else
  loc_1ABD8DB:                               Exit Sub
  loc_1ABD8DC:                             End If
  loc_1ABD8DC:                           End If
  loc_1ABD8DF:                         Else
  loc_1ABD91E:                           If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT4") Then
  loc_1ABD93E:                             var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABD960:                             If (var_D0.Value = "Yes") Then
  loc_1ABD971:                               Set var_C8 = Me.Txt
  loc_1ABD977:                               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABD97F:                               global_88 = var_D0.Tag
  loc_1ABD9A0:                               Set var_D8 = Me.Txt
  loc_1ABD9A6:                               Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABD9AE:                               var_184 = var_220.Text
  loc_1ABD9B6:                               var_184 = "R"
  loc_1ABDA06:                               Proc_96_54_1D7EA30(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABDA27:                               Exit Sub
  loc_1ABDA2B:                             Else
  loc_1ABDA5A:                               If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABDA6B:                                 Set var_C8 = Me.Txt
  loc_1ABDA71:                                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABDA79:                                 global_88 = var_D0.Tag
  loc_1ABDA9A:                                 Set var_D8 = Me.Txt
  loc_1ABDAA0:                                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABDAA8:                                 var_184 = var_220.Text
  loc_1ABDAB0:                                 var_184 = "R"
  loc_1ABDB00:                                 Proc_96_54_1D7EA30(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4)
  loc_1ABDB21:                                 Exit Sub
  loc_1ABDB25:                               Else
  loc_1ABDB25:                                 Exit Sub
  loc_1ABDB26:                               End If
  loc_1ABDB26:                             End If
  loc_1ABDB29:                           Else
  loc_1ABDB68:                             If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT5") Then
  loc_1ABDB88:                               var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABDBAA:                               If (var_D0.Value = "Yes") Then
  loc_1ABDBBB:                                 Set var_C8 = Me.Txt
  loc_1ABDBC1:                                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 1, 2)
  loc_1ABDBC9:                                 global_88 = var_D0.Tag
  loc_1ABDBEA:                                 Set var_D8 = Me.Txt
  loc_1ABDBF0:                                 Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, global_84)
  loc_1ABDBF8:                                 var_184 = var_220.Text
  loc_1ABDC02:                                 var_188 = 0
  loc_1ABDC0B:                                 var_184 = "R"
  loc_1ABDC5B:                                 Proc_96_50_1CF47D8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABDC7E:                                 Exit Sub
  loc_1ABDC82:                               Else
  loc_1ABDCB1:                                 If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABDCC2:                                   Set var_C8 = Me.Txt
  loc_1ABDCC8:                                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABDCD0:                                   global_84 = var_D0.Tag
  loc_1ABDCF1:                                   Set var_D8 = Me.Txt
  loc_1ABDCF7:                                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABDCFF:                                   var_188 = var_220.Text
  loc_1ABDD09:                                   var_188 = 0
  loc_1ABDD12:                                   var_184 = "R"
  loc_1ABDD62:                                   Proc_96_50_1CF47D8(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABDD85:                                   Exit Sub
  loc_1ABDD89:                                 Else
  loc_1ABDD89:                                   Exit Sub
  loc_1ABDD8A:                                 End If
  loc_1ABDD8A:                               End If
  loc_1ABDD8D:                             Else
  loc_1ABDDCC:                               If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT6") Then
  loc_1ABDDEC:                                 var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABDE0E:                                 If (var_D0.Value = "Yes") Then
  loc_1ABDE1F:                                   Set var_C8 = Me.Txt
  loc_1ABDE25:                                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABDE2D:                                   global_84 = var_D0.Tag
  loc_1ABDE4E:                                   Set var_D8 = Me.Txt
  loc_1ABDE54:                                   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABDE5C:                                   var_188 = var_220.Text
  loc_1ABDE66:                                   var_188 = 0
  loc_1ABDE6F:                                   var_184 = "R"
  loc_1ABDEBF:                                   Proc_96_51_1EAC61C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABDEE2:                                   Exit Sub
  loc_1ABDEE6:                                 Else
  loc_1ABDF15:                                   If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABDF26:                                     Set var_C8 = Me.Txt
  loc_1ABDF2C:                                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABDF34:                                     global_84 = var_D0.Tag
  loc_1ABDF55:                                     Set var_D8 = Me.Txt
  loc_1ABDF5B:                                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABDF63:                                     var_188 = var_220.Text
  loc_1ABDF6D:                                     var_188 = 0
  loc_1ABDF76:                                     var_184 = "R"
  loc_1ABDFC6:                                     Proc_96_51_1EAC61C(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABDFE9:                                     Exit Sub
  loc_1ABDFED:                                   Else
  loc_1ABDFED:                                     Exit Sub
  loc_1ABDFEE:                                   End If
  loc_1ABDFEE:                                 End If
  loc_1ABDFF1:                               Else
  loc_1ABE030:                                 If (Me.Fields.Item("ModDescription").Value = "GUEST BILL DOS 80 COL PREPRINTED FORMAT7") Then
  loc_1ABE050:                                   var_D0 = Me.Fields.Item("AutoPrint")
  loc_1ABE072:                                   If (var_D0.Value = "Yes") Then
  loc_1ABE083:                                     Set var_C8 = Me.Txt
  loc_1ABE089:                                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABE091:                                     global_84 = var_D0.Tag
  loc_1ABE0B2:                                     Set var_D8 = Me.Txt
  loc_1ABE0B8:                                     Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABE0C0:                                     var_188 = var_220.Text
  loc_1ABE0CA:                                     var_188 = 0
  loc_1ABE0D3:                                     var_184 = "R"
  loc_1ABE123:                                     Proc_96_52_1EA14A0(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABE146:                                     Exit Sub
  loc_1ABE14A:                                   Else
  loc_1ABE179:                                     If (MsgBox("Print Bill ?", &H24, var_F8, var_118, var_138) = 6) Then
  loc_1ABE18A:                                       Set var_C8 = Me.Txt
  loc_1ABE190:                                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_D0, var_A0, 2, global_88)
  loc_1ABE198:                                       global_84 = var_D0.Tag
  loc_1ABE1B9:                                       Set var_D8 = Me.Txt
  loc_1ABE1BF:                                       Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(9), var_220, var_D4, var_184)
  loc_1ABE1C7:                                       var_188 = var_220.Text
  loc_1ABE1D1:                                       var_188 = 0
  loc_1ABE1DA:                                       var_184 = "R"
  loc_1ABE22A:                                       Proc_96_52_1EA14A0(var_A0, Me.FGrid, Me.Fgrid1, 7, 8, &HA, var_D4, 1)
  loc_1ABE24D:                                       Exit Sub
  loc_1ABE251:                                     Else
  loc_1ABE251:                                       Exit Sub
  loc_1ABE252:                                     End If
  loc_1ABE252:                                   End If
  loc_1ABE252:                                 End If
  loc_1ABE252:                               End If
  loc_1ABE252:                             End If
  loc_1ABE252:                           End If
  loc_1ABE252:                         End If
  loc_1ABE252:                       End If
  loc_1ABE252:                     End If
  loc_1ABE252:                   End If
  loc_1ABE252:                 End If
  loc_1ABE252:               End If
  loc_1ABE252:             End If
  loc_1ABE252:           End If
  loc_1ABE252:         End If
  loc_1ABE252:       End If
  loc_1ABE252:     End If
  loc_1ABE252:   End If
  loc_1ABE252: End If
  loc_1ABE257: global_88 = 0
  loc_1ABE25F: Set var_8C = Nothing
  loc_1ABE267: Set var_9C = Nothing
  loc_1ABE26A: Exit Sub
End Sub

Private Sub cmdAdujst_UnknownEvent_9 '1360DF0
  'Data Table: 559750
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_170 As Double
  Dim var_B0 As String
  Dim var_AC As Double
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim unk_559754 As Connection15
  Dim var_94 As Recordset15
  Dim var_D0 As Variant
  Dim var_9E As Integer
  Dim var_1BC As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim Me As Recordset15
  Dim var_1C0 As MSHFlexGrid
  loc_13605E4: var_C0 = 0
  loc_13605F0: var_E0 = CVar(CLng(1)) 'Long
  loc_1360615: var_118 = 0
  loc_1360621: var_138 = CVar(CLng(2)) 'Long
  loc_1360643: var_170 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_136065E: var_AC = (Val(CStr(global_104)) - (Val(CStr(Me.Fgrid1.TextMatrix))) - var_170))
  loc_136067F: If (var_AC = CDbl(0)) Then
  loc_1360682:   Exit Sub
  loc_1360683: End If
  loc_136069C: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13606A4: var_E0 = CVar(CLng(7)) 'Long
  loc_13606AD: Set var_14C = Me.FGrid
  loc_13606B3: var_15C = var_14C.TextMatrix)
  loc_13606D7: If (CStr(var_15C) <> vbNullString) Then
  loc_13606DA:   var_C0 = vbNullString
  loc_13606E4:   Set var_F4 = Me.FGrid
  loc_13606F5: End If
  loc_13606F8: var_98 = "REV"
  loc_136070F: var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1360740: Set var_F4 = Me.Txt
  loc_1360746: Call 0.Method_cmdAdujst_UnknownEvent_90 (CInt(&HD), var_14C, CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_98 & "' And VP.Date_From<="), var_1BC, -1, var_1C0, FGrid.DispID_10000)
  loc_1360755: Proc_6_7_F25D88(var_15C, CVar(var_14C), var_C0, var_E0, var_C0)
  loc_1360774: unk_559754.Execute CStr(var_AC & var_15C & " Order By VP.Date_From DESC"), var_170, var_138
  loc_136077F: Set var_94 = var_1C0
  loc_13607BB: If (var_94.RecordCount > 0) Then
  loc_13607FA:   If (var_94.Fields.Item("Number_Method").Value = "Manual") Then
  loc_13607FD:     GoTo loc_136087D
  loc_1360800:   End If
  loc_136082B:   var_9C = CStr(var_94.Fields.Item("Prefix").Value)
  loc_1360867:   var_15C = (var_94.Fields.Item("start_srl_no").Value + 1)
  loc_136086C:   var_9E = CInt(var_15C)
  loc_136087D:   ' Referenced from: 13607FD
  loc_136087D: End If
  loc_13608A8: var_104 = Space((5 - Len(var_98)))
  loc_13608B0: var_188 = (CVar(var_9E & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_98) + var_94.Fields.Item("start_srl_no").Value)
  loc_13608C1: var_198 = Space((5 - Len(var_9C)))
  loc_13608C9: var_1A8 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_98 & "' And VP.Date_From<=") + var_AC & CVar(var_9E & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_98))
  loc_13608D3: var_1BC = (var_AC & CVar(var_9E & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_98) & " Order By VP.Date_From DESC" + CVar(var_9C))
  loc_13608E9: var_1D8 = Space((8 - Len(CStr(var_9E))))
  loc_13608F1: var_1E8 = (var_1BC + var_1D8)
  loc_13608FD: var_208 = (var_1E8 + CVar(CStr(var_9E)))
  loc_1360902: var_A4 = CStr(var_208)
  loc_136092A: Set var_94 = Nothing
  loc_136095C: var_14C = Me.Fields.Item("AmendRevenue")
  loc_136096C: var_15C = "Select Name from revmast where code='" & var_14C.Value 
  loc_1360975: var_188 = var_15C & "'" 
  loc_1360983: unk_559754.Execute CStr(var_188), var_AC & var_15C, -1
  loc_136098E: Set var_94 = var_1C0
  loc_13609BC: If (var_94.RecordCount <= 0) Then
  loc_13609D8:   MsgBox("First Assign Amend Revenue name in parameter settings", 0, var_15C, var_188, var_AC & var_15C)
  loc_13609E8:   Exit Sub
  loc_13609E9: End If
  loc_13609ED: Set var_20C = Me.FGrid
  loc_1360A09: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360A21: Set var_F4 = Me.Txt
  loc_1360A27: Call 0.Method_cmdAdujst_UnknownEvent_90 (CInt(&HD), var_14C, CVar(CLng(1)))
  loc_1360A38: var_188 = CVar(Proc_6_38_E68A98(CVar(var_14C), "First Assign Amend Revenue name in parameter settings")) 'String
  loc_1360A3F: LateIdCallSt
  loc_1360A70: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360AA5: var_188 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name")), CVar(CLng(2)), "Select Name from revmast where code='", var_20C)) 'String
  loc_1360AAC: LateIdCallSt
  loc_1360ACB: If (var_AC > CDbl(0)) Then
  loc_1360AE7:   var_E0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360AEF:   var_118 = CVar(CLng(3)) 'Long
  loc_1360B1D:   var_198 = CVar(CStr(Format(var_AC, "0.00"))) 'String
  loc_1360B24:   LateIdCallSt
  loc_1360B53:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360B5B:   var_E0 = CVar(CLng(4)) 'Long
  loc_1360B60:   var_118 = "0.00"
  loc_1360B69:   LateIdCallSt
  loc_1360B7A: Else
  loc_1360B93:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360B9B:   var_E0 = CVar(CLng(3)) 'Long
  loc_1360BA0:   var_118 = "0.00"
  loc_1360BA9:   LateIdCallSt
  loc_1360BD0:   var_E0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360BD8:   var_118 = CVar(CLng(4)) 'Long
  loc_1360C06:   var_1A8 = CVar(CStr(Format(CVar(Abs(var_AC)), "0.00"))) 'String
  loc_1360C0D:   LateIdCallSt
  loc_1360C25: End If
  loc_1360C3E: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360C58: var_15C = CVar(Proc_6_38_E68A98(var_A4, CVar(CLng(7)), "0.00", var_20C, var_1A8, 1, 1, var_118)) 'String
  loc_1360C5F: LateIdCallSt
  loc_1360C8A: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360CA0: LateIdCallSt
  loc_1360CC7: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360CE1: var_15C = CVar(Proc_6_38_E68A98(MemVar_1F920C8, CVar(CLng(9)), "0.00", var_20C, "1", CVar(CLng(8)), MemVar_1F920C8, var_20C)) 'String
  loc_1360CE8: LateIdCallSt
  loc_1360D13: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360D29: LateIdCallSt
  loc_1360D50: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360D60: var_C0 = "AmendRevenue"
  loc_1360D88: var_188 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_C0)), CVar(CLng(&HB)), "0.00", var_20C, "1", CVar(CLng(&HA)), var_C0)) 'String
  loc_1360D8F: LateIdCallSt
  loc_1360DC0: var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1360DD6: LateIdCallSt
  loc_1360DEA: Call Proc_100_48_1155150(Nothing, "*", CVar(CLng(&HC)), var_C0, Nothing, var_188)
  loc_1360DEF: Exit Sub
End Sub

Private Sub FRectGrid_UnknownEvent_9 'E2AB98
  'Data Table: 559750
  loc_E2AB8B: Call Proc_100_37_1005464(CInt(CLng(Me.FRectGrid.Row)))
  loc_E2AB96: Exit Sub
End Sub

Private Sub CmdPass_Click() 'E995A8
  'Data Table: 559750
  Dim var_8C As TextBox
  Dim var_88 As CommandButton
  loc_E99539: Set var_88 = Me.Txt
  loc_E9953F: Call 0.Method_CmdPass_Click0 (&H17)
  loc_E99568: If (Ucase(CVar(var_8C)) = "India12") Then
  loc_E99576:   Set var_88 = Me.Txt
  loc_E9957C:   Call 0.Method_CmdPass_Click0 (&H18, var_8C)
  loc_E99584:   var_8C.Enabled = True
  loc_E9959C:   Me.CMDSET.Enabled = True
  loc_E995A4:   GoTo loc_E995A7
  loc_E995A7:   ' Referenced from: E995A4
  loc_E995A7: End If
  loc_E995A7: Exit Sub
End Sub

Private Sub CmdeInvoiceJson_Click() 'E60FB0
  'Data Table: 559750
  loc_E60F75: Call Proc_100_50_E68B20(global_128)
  loc_E60F80: If (var_86 = 0) Then
  loc_E60F83:   Exit Sub
  loc_E60F84: End If
  loc_E60F84: Call CmdeInvoiceSql_Click()
  loc_E60F9F: Proc_96_104_18970BC(CStr(Me.TXT_GNAME.BoundText))
  loc_E60FAD: Exit Sub
End Sub

Private Sub CmdGeneInvoice_Click() 'E95470
  'Data Table: 559750
  loc_E95401: Call Proc_100_50_E68B20(global_128)
  loc_E9540C: If (var_86 = 0) Then
  loc_E9540F:   Exit Sub
  loc_E95410: End If
  loc_E95422: var_8C = CStr(Me.TXT_GNAME.BoundText)
  loc_E95433: Proc_348_15_E10910(var_8C, 0)
  loc_E9545D: Proc_348_21_12A7B74(var_8C, Me.QrImage, global_128)
  loc_E95469: Call Proc_100_49_FD29C0(global_132, global_136)
  loc_E9546E: Exit Sub
End Sub

Private Sub CMDSET_Click() '124FD0C
  'Data Table: 559750
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_148 As Variant
  Dim var_114 As Variant
  Dim var_158 As Long
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  loc_124F7F1: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B4 'Integer
  loc_124F7FB:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_124F846:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F92078 & "RMCH")) Then
  loc_124F852:     Set var_A0 = Me.Txt
  loc_124F858:     Call 0.Method_CMDSET_Click0 (&H18, var_138, CVar(CLng(&HB)))
  loc_124F861:     var_D4 = CVar(CLng(var_86)) 'Long
  loc_124F869:     var_F4 = CVar(CLng(3)) 'Long
  loc_124F8A4:     LateIdCallSt
  loc_124F8D7:     Set var_A0 = Me.Txt
  loc_124F8DD:     Call 0.Method_CMDSET_Click0 (CInt(8), var_138, Me.FGrid, CVar(CStr(Format(CVar(var_138), "0.00"))), 1)
  loc_124F91E:     Proc_96_86_1AEB804(Me.FGrid, Me.Txt, &H18, CInt(&HB), CInt(3), CInt(7), var_138)
  loc_124F937:     global_98 = &HFF
  loc_124F93A:     GoTo loc_124F93D
  loc_124F93D:     ' Referenced from: 124F93A
  loc_124F93D:   End If
  loc_124F940: Next var_B4 'Integer
  loc_124F96A: For var_17C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_17C 'Integer
  loc_124F974:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_124F97C:   var_E4 = CVar(CLng(7)) 'Long
  loc_124F9A7:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_124F9AE:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_124F9B6:     var_E4 = CVar(CLng(3)) 'Long
  loc_124F9E2:     var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_124F9F2:     var_C4 = CVar(CLng(var_86)) 'Long
  loc_124F9FA:     var_E4 = CVar(CLng(4)) 'Long
  loc_124FA26:     var_9C = (var_9C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_124FA36:     var_E4 = CVar(CLng(var_86)) 'Long
  loc_124FA3E:     var_148 = CVar(CLng(5)) 'Long
  loc_124FA60:     var_B0 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_124FA70:     var_124 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_124FA78:     Set var_A0 = Me.FGrid
  loc_124FA7E:     LateIdCallSt
  loc_124FAA0:     If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_124FAA7:       var_C4 = CVar(CLng(var_86)) 'Long
  loc_124FAAF:       var_E4 = CVar(CLng(6)) 'Long
  loc_124FAB4:       var_148 = "Dr"
  loc_124FABE:       Set var_A0 = Me.FGrid
  loc_124FAC4:       LateIdCallSt
  loc_124FAD2:     Else
  loc_124FADE:       If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_124FAE5:         var_C4 = CVar(CLng(var_86)) 'Long
  loc_124FAED:         var_E4 = CVar(CLng(6)) 'Long
  loc_124FAF2:         var_148 = "Cr"
  loc_124FAFC:         Set var_A0 = Me.FGrid
  loc_124FB02:         LateIdCallSt
  loc_124FB10:       Else
  loc_124FB14:         var_C4 = CVar(CLng(var_86)) 'Long
  loc_124FB1C:         var_E4 = CVar(CLng(6)) 'Long
  loc_124FB21:         var_148 = vbNullString
  loc_124FB2B:         Set var_A0 = Me.FGrid
  loc_124FB31:         LateIdCallSt
  loc_124FB3C:       End If
  loc_124FB3C:     End If
  loc_124FB3C:   End If
  loc_124FB3F: Next var_17C 'Integer
  loc_124FB48: Set var_19C = Me.Fgrid1
  loc_124FB4B: var_E4 = 0
  loc_124FB57: var_148 = CVar(CLng(1)) 'Long
  loc_124FB85: var_114 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_124FB8C: LateIdCallSt
  loc_124FB9D: var_E4 = 0
  loc_124FBA9: var_148 = CVar(CLng(2)) 'Long
  loc_124FBD7: var_114 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_124FBDE: LateIdCallSt
  loc_124FBEF: var_E4 = 0
  loc_124FBFB: var_148 = CVar(CLng(3)) 'Long
  loc_124FC1D: var_B0 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_124FC2D: var_124 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_124FC34: LateIdCallSt
  loc_124FC47: var_158 = 0
  loc_124FC53: var_1AC = CVar(CLng(4)) 'Long
  loc_124FC7A: var_C4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_124FCA0: var_F4 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_124FCB0: var_1CC = CVar(CStr(IIf(var_F4, "Dr", IIf(var_9C, "Cr", vbNullString)))) 'String
  loc_124FCB7: LateIdCallSt
  loc_124FCD4: Set var_19C = Nothing 
  loc_124FCE4: Me.FrmAdjust.Visible = False
  loc_124FCF0: Set var_A0 = Me.FGrid
  loc_124FD06: Set var_8C = Nothing
  loc_124FD09: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5CBB8
  'Data Table: 559750
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5CB8A: Me.FGrid.BackColorSel = CVar(CLng(global_124))
  loc_E5CB9D: Set var_A8 = Me.TxtGrid
  loc_E5CBA3: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5CBAB: var_AC.Visible = False
  loc_E5CBB7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E9C414
  'Data Table: 559750
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E9C39C: Set var_88 = Me.TxtGrid
  loc_E9C3A2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E9C3BC: If (var_8C.Visible = 0) Then
  loc_E9C3D5:   Me.FGrid.BackColorSel = CVar(CLng(global_56))
  loc_E9C3DD: End If
  loc_E9C3F9: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E9C40B:   Me.FRectGrid.Visible = False
  loc_E9C413: End If
  loc_E9C413: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1DFB0
  'Data Table: 559750
  loc_E1DFA7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1DFAF: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '100D4D0
  'Data Table: 559750
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim arg_C As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_100D334: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_100D34A:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100D35A:   var_9C = "+{Tab}"
  loc_100D360:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_100D36A:   arg_C = 0
  loc_100D370: Else
  loc_100D3C7:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_100D3DD:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_100D3E5:   End If
  loc_100D3E5: End If
  loc_100D408: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_100D42C: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_100D442:   var_EC = CLng(Me.FGrid.Col)
  loc_100D452:   If Not (var_EC = CLng(&HA)) Then
  loc_100D45C:     If (var_EC = CLng(3)) Then
  loc_100D45F:     End If
  loc_100D472:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_100D48A:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_100D48F:     var_11C = vbNullString
  loc_100D499:     Set var_B4 = Me.FGrid
  loc_100D49F:     LateIdCallSt
  loc_100D4B7:   End If
  loc_100D4B7: End If
  loc_100D4BD: If (arg_C = &HD) Then
  loc_100D4C5:   global_96 = 0
  loc_100D4C8: End If
  loc_100D4CA: arg_C = 0
  loc_100D4CD: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '13B0808
  'Data Table: 559750
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Integer
  Dim var_164 As MSHFlexGrid
  Dim var_1B8 As Variant
  Dim var_218 As Variant
  Dim var_33C As String
  Dim var_3B6 As Integer
  loc_13AFF2F: var_9C = CLng(Me.FGrid.Col)
  loc_13AFF3F: If (var_9C = CLng(3)) Then
  loc_13AFF4D:   If (global_72 = "Yes") Then
  loc_13AFF5B:     Set var_88 = Me.Txt
  loc_13AFF61:     Call 0.Method_FGrid_UnknownEvent_C0 (CInt(&HD), var_A0)
  loc_13AFF79:     If Not(IsDate(CVar(var_A0))) Then
  loc_13AFF95:       MsgBox("Guest is not completly checked out.", &H10, var_D0, var_F0, var_110)
  loc_13AFFA5:       Exit Sub
  loc_13AFFA6:     End If
  loc_13AFFB9:     var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13AFFC1:     var_E0 = CVar(CLng(7)) 'Long
  loc_13B0003:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_13B0019:       var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B0021:       var_E0 = CVar(CLng(7)) 'Long
  loc_13B003C:       var_110 = 5
  loc_13B004A:       var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13B00BF:       var_218 = CVar(CLng(&HB)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F92078 & "RMCH"))
  loc_13B01BC:       If CBool(CVar(CLng(1)) And (CDate(CStr(Me.FGrid.TextMatrix))) = MemVar_1F920EC) Or (Ucase(MemVar_1F920B8) = "1")) Then
  loc_13B01C3:         Set var_1B8 = Me.FGrid
  loc_13B01DF:         var_D0 = Ucase(Chr(CLng(Index)))
  loc_13B01E7:         var_33C = CStr(var_D0)
  loc_13B0214:         Set var_A0 = var_1B8
  loc_13B0226:         Proc_6_63_110ABA4(Me, var_A0, Me.TxtGrid, 0, 0, Asc(var_33C), 0, Asc(var_33C))
  loc_13B024E:         Set var_88 = Me.TxtGrid
  loc_13B0254:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, CVar(CLng(Me.FGrid.Row)), CVar(CLng(&HE)) Or (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(Me.FGrid.Row)))
  loc_13B025C:         var_218 = var_A0.Text
  loc_13B0275:         If (Len(var_33C) <= 1) Then
  loc_13B0284:           Set var_88 = Me.TxtGrid
  loc_13B028A:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, CVar(CLng(Me.FGrid.Row)))
  loc_13B0292:           (Trim(Mid(var_F0, 4, var_110)) = "RC") = var_A0.Text
  loc_13B02A3:           Set var_164 = Me.TxtGrid
  loc_13B02A9:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8, var_33C)
  loc_13B02B1:           var_1B8.Text = var_D0
  loc_13B02C4:         End If
  loc_13B02D0:         Set var_88 = Me.TxtGrid
  loc_13B02D6:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0)
  loc_13B02F0:         Set var_164 = Me.TxtGrid
  loc_13B02F6:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_13B02FE:         var_1B8.SelStart = Len(var_A0.Text)
  loc_13B0311:       End If
  loc_13B0311:     End If
  loc_13B0311:   End If
  loc_13B0314: Else
  loc_13B031B:   If (var_9C = CLng(4)) Then
  loc_13B0329:     If (global_72 = "Yes") Then
  loc_13B0337:       Set var_88 = Me.Txt
  loc_13B033D:       Call 0.Method_FGrid_UnknownEvent_C0 (CInt(&HD), var_A0)
  loc_13B0355:       If Not(IsDate(CVar(var_A0))) Then
  loc_13B0371:         MsgBox("Guest is not completly checked out.", &H10, var_D0, var_F0, var_110)
  loc_13B0381:         Exit Sub
  loc_13B0382:       End If
  loc_13B0395:       var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B039D:       var_E0 = CVar(CLng(7)) 'Long
  loc_13B03DF:       If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_13B03FD:         var_E0 = CVar(CLng(7)) 'Long
  loc_13B053B:         If CBool(CVar(CLng(1)) And (CDate(CStr(Me.FGrid.TextMatrix))) = MemVar_1F920EC) Or (Ucase(MemVar_1F920B8) = "1")) Then
  loc_13B0542:           Set var_1B8 = Me.FGrid
  loc_13B055E:           var_D0 = Ucase(Chr(CLng(Index)))
  loc_13B0566:           var_33C = CStr(var_D0)
  loc_13B0593:           Set var_A0 = var_1B8
  loc_13B05A5:           Proc_6_63_110ABA4(Me, var_A0, Me.TxtGrid, 0, 0, Asc(var_33C), 0, Asc(var_33C))
  loc_13B05CD:           Set var_88 = Me.TxtGrid
  loc_13B05D3:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, CVar(CLng(Me.FGrid.Row)), CVar(CLng(&HB)) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F92078 & "DISC")), CVar(CLng(Me.FGrid.Row)))
  loc_13B05DB:           (Trim(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 4, 5)) = "RC") = var_A0.Text
  loc_13B05F4:           If (Len(var_33C) <= 1) Then
  loc_13B0603:             Set var_88 = Me.TxtGrid
  loc_13B0609:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, var_D0)
  loc_13B0611:             var_E0 = var_A0.Text
  loc_13B0622:             Set var_164 = Me.TxtGrid
  loc_13B0628:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8, var_33C)
  loc_13B0630:             var_1B8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0643:           End If
  loc_13B064F:           Set var_88 = Me.TxtGrid
  loc_13B0655:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0)
  loc_13B066F:           Set var_164 = Me.TxtGrid
  loc_13B0675:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_13B067D:           var_1B8.SelStart = Len(var_A0.Text)
  loc_13B0690:         End If
  loc_13B0690:       End If
  loc_13B0690:     End If
  loc_13B0693:   Else
  loc_13B069A:     If (var_9C = CLng(&HA)) Then
  loc_13B06A1:       Set var_1B8 = Me.FGrid
  loc_13B06C5:       var_33C = CStr(Ucase(Chr(CLng(Index))))
  loc_13B06F2:       Set var_A0 = var_1B8
  loc_13B0704:       Proc_6_63_110ABA4(Me, var_A0, Me.TxtGrid, 0, &HFF)
  loc_13B072C:       Set var_88 = Me.TxtGrid
  loc_13B0732:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C, Asc(var_33C))
  loc_13B073A:       0 = var_A0.Text
  loc_13B0753:       If (Len(var_33C) <= 1) Then
  loc_13B0762:         Set var_88 = Me.TxtGrid
  loc_13B0768:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0, var_33C)
  loc_13B0770:         var_3B6 = var_A0.Text
  loc_13B0781:         Set var_164 = Me.TxtGrid
  loc_13B0787:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_13B078F:         var_1B8.Text = var_33C
  loc_13B07A2:       End If
  loc_13B07AE:       Set var_88 = Me.TxtGrid
  loc_13B07B4:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A0)
  loc_13B07CE:       Set var_164 = Me.TxtGrid
  loc_13B07D4:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_1B8)
  loc_13B07DC:       var_1B8.SelStart = Len(var_A0.Text)
  loc_13B07EF:     End If
  loc_13B07EF:   End If
  loc_13B07EF: End If
  loc_13B07F9: If (CLng(Index) <> &HD) Then
  loc_13B0801:   global_96 = &HFF
  loc_13B0804: End If
  loc_13B0804: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '14A6FE8
  'Data Table: 559750
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_EC As MSHFlexGrid
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_C8 As String
  Dim unk_559754 As Connection15
  Dim var_184 As Variant
  Dim var_15C As Variant
  Dim var_14C As Variant
  Dim var_1A8 As Variant
  Dim var_17C As Variant
  Dim var_1AC As String
  Dim var_1CC As Variant
  Dim var_1D0 As String
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_1D8 As Field20
  Dim var_A4 As Integer
  Dim var_16C As Variant
  Dim var_1A4 As Variant
  Dim var_238 As Variant
  Dim var_258 As Variant
  Dim var_9A As Integer
  Dim var_A2 As Integer
  Dim var_280 As String
  Dim var_278 As Variant
  Dim var_268 As Variant
  Dim var_2A0 As Variant
  loc_14A638D: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_14A6390:   Exit Sub
  loc_14A6391: End If
  loc_14A63A4: var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A63AC: var_D8 = CVar(CLng(1)) 'Long
  loc_14A63B5: Set var_EC = Me.FGrid
  loc_14A63BB: var_FC = var_EC.TextMatrix)
  loc_14A63C6: var_10C = CVar(CStr(var_FC)) 'String
  loc_14A63CC: var_11C = Trim(var_10C)
  loc_14A63EE: If CBool(var_11C <> vbNullString) Then
  loc_14A6402:   If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_14A6424:     If (CLng(Me.FGrid.Row) >= 1) Then
  loc_14A6439:       If ((MemVar_1F920B8 = 1) Or (global_76 = "Yes")) Then
  loc_14A6447:         Set var_88 = Me.Txt
  loc_14A644D:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(&HD), var_EC)
  loc_14A6465:         If Not(IsDate(CVar(var_EC))) Then
  loc_14A6481:           MsgBox("Guest is not completly checked out.", &H10, var_FC, var_10C, var_11C)
  loc_14A6491:           Exit Sub
  loc_14A6492:         End If
  loc_14A64C9:         If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_10C, var_11C) = 6) Then
  loc_14A64EB:           If (CLng(Me.FGrid.Rows) > 2) Then
  loc_14A64F7:             If (global_80 = &HFF) Then
  loc_14A6524:               var_A8 = InputBox("Reason for Deletion :", "Delete Reason", var_10C, var_11C, var_13C, var_15C, var_17C)
  loc_14A6538:             End If
  loc_14A6541:             unk_559754.BeginTrans var_180
  loc_14A6559:             var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A65B7:             Set var_1A8 = Me.FGrid
  loc_14A65C8:             var_1AC = CStr(var_1A8.TextMatrix))
  loc_14A65D9:             var_1CC = CVar(CLng(8)) And (CDbl(Val(var_1AC)) = CDbl(1))
  loc_14A65FE:             If CBool(var_1CC) Then
  loc_14A660A:               If (global_80 = &HFF) Then
  loc_14A6613:                 Call 0.Method_arg_50 (var_1AC, CVar(CLng(Me.FGrid.Row)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(7)))
  loc_14A663D:                 var_1D0 = Replace(var_1AC, " ", vbNullString, 1, -1, 0)
  loc_14A6662:                 var_10C = Format(Time, "HH:MM")
  loc_14A666A:                 var_13C = (1 + var_10C)
  loc_14A666E:                 var_C8 = "- "
  loc_14A6673:                 var_15C = (var_13C + "Delete Reason")
  loc_14A667D:                 var_17C = (Me.FGrid.Row + CVar(var_A8))
  loc_14A6682:                 var_A8 = CStr(var_1A8.TextMatrix))
  loc_14A66B0:                 var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A66B8:                 var_D8 = CVar(CLng(7)) 'Long
  loc_14A66FB:                 unk_559754.Execute "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_10C, -1
  loc_14A6725:                 var_98 = Me.FGrid.Row
  loc_14A672E:                 var_B8 = CVar(CLng(var_98)) 'Long
  loc_14A6745:                 var_FC = Me.FGrid.TextMatrix)
  loc_14A6757:                 var_14C = 0
  loc_14A6788:                 unk_559754.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_FC) & "'", var_10C, -1
  loc_14A6798:                 var_14C = var_1A8.Item(var_1A8)
  loc_14A67A0:                 var_1D8 = var_1D8.Value
  loc_14A67AB:                 Proc_6_39_E7C810(var_13C, CVar("Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_FC) & " Tm "), CVar("Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_FC) & " Tm "), var_FC, CVar(CLng(7)))
  loc_14A67B4:                 var_A4 = CInt(var_13C)
  loc_14A67E5:                 Proc_6_17_EAA2B0(var_98, var_A8, var_A4, var_A8)
  loc_14A67F5:                 Proc_6_17_EAA2B0(var_13C, MemVar_1F920C8, var_184.Fields)
  loc_14A6805:                 Proc_6_7_F25D88(var_1CC, MemVar_1F920EC, var_FC)
  loc_14A681D:                 var_16C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A6825:                 var_1A4 = CVar(CLng(7)) 'Long
  loc_14A6858:                 var_1AC = CStr((var_A4 + 1))
  loc_14A6869:                 var_10C = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_FC) & ",Remarks=") & var_98 
  loc_14A689D:                 var_238 = var_10C & ",U_Name=" & var_13C & ",U_EntDt=" & var_1CC & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14A68B4:                 unk_559754.Execute CStr(var_238 & "'"), var_278, -1
  loc_14A68EE:               End If
  loc_14A6901:               var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A6909:               var_D8 = CVar(CLng(7)) 'Long
  loc_14A694C:               unk_559754.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_10C, -1
  loc_14A697F:               var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A6987:               var_D8 = CVar(CLng(7)) 'Long
  loc_14A69A1:               var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_14A69CC:               var_9A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14A69D5:               ' Referenced from: 14A6A88
  loc_14A69DB:               If (var_9A >= 1) Then
  loc_14A69E2:                 var_B8 = CVar(CLng(var_9A)) 'Long
  loc_14A69EA:                 var_D8 = CVar(CLng(7)) 'Long
  loc_14A6A15:                 If (CStr(Me.FGrid.TextMatrix)) = var_A0) Then
  loc_14A6A1C:                   var_B8 = CVar(CLng(var_9A)) 'Long
  loc_14A6A25:                   Set var_88 = Me.FGrid
  loc_14A6A38:                   var_A2 = &HFF
  loc_14A6A3B:                 End If
  loc_14A6A41:                 var_9A = (var_9A - 1)
  loc_14A6A48:                 var_B8 = CVar(CLng(var_9A)) 'Long
  loc_14A6A50:                 var_D8 = CVar(CLng(7)) 'Long
  loc_14A6A6A:                 var_1AC = CStr(Me.FGrid.TextMatrix))
  loc_14A6A82:                 If ((var_1AC <> var_A0) And (var_A2 = &HFF)) Then
  loc_14A6A85:                   GoTo loc_14A6A8B
  loc_14A6A88:                 End If
  loc_14A6A88:                 GoTo loc_14A69D5
  loc_14A6A8B:                 ' Referenced from: 14A6A85
  loc_14A6A8B:               End If
  loc_14A6A8E:             Else
  loc_14A6A97:               If (global_80 = &HFF) Then
  loc_14A6AA0:                 Call 0.Method_arg_50 (var_1AC, var_D8, var_B8, var_9A, var_A2, FGrid.DispID_10000, var_B8)
  loc_14A6ACA:                 var_1D0 = Replace(var_1AC, " ", vbNullString, 1, -1, 0)
  loc_14A6AD1:                 var_11C = CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm ") 'String
  loc_14A6AF7:                 var_13C = (1 + Format(Time, "HH:MM"))
  loc_14A6AFB:                 var_C8 = "- "
  loc_14A6B00:                 var_15C = (var_13C + ",U_Name=")
  loc_14A6B0A:                 var_17C = (Format(Time, "HH:MM") & ",U_Name=" & var_13C + CVar(var_A8))
  loc_14A6B3D:                 var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A6B45:                 var_D8 = CVar(CLng(7)) 'Long
  loc_14A6B6A:                 var_10C = Me.FGrid.Row
  loc_14A6B73:                 var_12C = CVar(CLng(var_10C)) 'Long
  loc_14A6B7B:                 var_16C = CVar(CLng(8)) 'Long
  loc_14A6B84:                 Set var_1A8 = Me.FGrid
  loc_14A6B8A:                 var_11C = var_1A8.TextMatrix)
  loc_14A6BC0:                 var_280 = "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO=" & CStr(var_11C)
  loc_14A6BC9:                 unk_559754.Execute var_280, var_13C, -1
  loc_14A6BFF:                 var_98 = Me.FGrid.Row
  loc_14A6C08:                 var_B8 = CVar(CLng(var_98)) 'Long
  loc_14A6C1F:                 var_FC = Me.FGrid.TextMatrix)
  loc_14A6C31:                 var_14C = 0
  loc_14A6C62:                 unk_559754.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_FC) & "'", var_10C, -1
  loc_14A6C6A:                 var_184 = var_184.Fields
  loc_14A6C72:                 var_14C = var_1A8.Item(var_1A8)
  loc_14A6C7A:                 var_1D8 = var_1D8.Value
  loc_14A6C85:                 Proc_6_39_E7C810(var_13C, var_11C, var_11C, var_FC, CVar(CLng(7)))
  loc_14A6C8E:                 var_A4 = CInt(var_13C)
  loc_14A6CBF:                 Proc_6_17_EAA2B0(var_98, CStr(Format(Time, "HH:MM") & ",U_Name=" & var_13C & ",U_EntDt="), var_A4, CStr(Format(Time, "HH:MM") & ",U_Name=" & var_13C & ",U_EntDt="))
  loc_14A6CCF:                 Proc_6_17_EAA2B0(var_13C, MemVar_1F920C8, var_1D8)
  loc_14A6CDF:                 Proc_6_7_F25D88(var_1CC, MemVar_1F920EC, var_11C)
  loc_14A6CF7:                 var_16C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A6CFF:                 var_1A4 = CVar(CLng(7)) 'Long
  loc_14A6D2D:                 var_268 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A6D35:                 var_2A0 = CVar(CLng(8)) 'Long
  loc_14A6D68:                 var_1AC = CStr((var_A4 + 1))
  loc_14A6D92:                 var_17C = CVar("Update PayChargeLog Set SeqNo=" & CStr(CVar("Update PayChargeLog Set SeqNo=" & CStr(var_FC) & ",Remarks=")) & ",Remarks=") & var_98 & ",U_Name=" & var_13C & ",U_EntDt=" 
  loc_14A6DB6:                 var_258 = var_17C & var_1CC & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND SNO=" 
  loc_14A6DCF:                 unk_559754.Execute CStr(var_258 & CVar(CStr(Me.FGrid.TextMatrix)))), var_300, -1
  loc_14A6E15:               End If
  loc_14A6E28:               var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A6E30:               var_D8 = CVar(CLng(7)) 'Long
  loc_14A6E55:               var_10C = Me.FGrid.Row
  loc_14A6E5E:               var_12C = CVar(CLng(var_10C)) 'Long
  loc_14A6E66:               var_16C = CVar(CLng(8)) 'Long
  loc_14A6E75:               var_11C = Me.FGrid.TextMatrix)
  loc_14A6EB4:               unk_559754.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO=" & CStr(var_11C), var_13C, -1
  loc_14A6EF3:               var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14A6EFC:               Set var_EC = Me.FGrid
  loc_14A6F14:             End If
  loc_14A6F1A:             unk_559754.CommitTrans
  loc_14A6F22:           Else
  loc_14A6F22:             var_B8 = 1
  loc_14A6F35:             Me.FGrid.Rows = var_B8
  loc_14A6F5B:             var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), FGrid.DispID_10000, var_B8, var_1D8, var_11C, var_16C, var_12C))) 'String
  loc_14A6F63:             Set var_EC = Me.FGrid
  loc_14A6F90:             Me.FGrid.FixedRows = 1
  loc_14A6F98:           End If
  loc_14A6F98:         End If
  loc_14A6F98:       End If
  loc_14A6F9B:     Else
  loc_14A6FA6:       var_FC = "Delete Module"
  loc_14A6FB6:       var_98 = "No Entries To Delete"
  loc_14A6FBC:       MsgBox(var_98, &H10, var_FC, var_10C, var_11C)
  loc_14A6FCC:     End If
  loc_14A6FD0:     Set var_88 = Me.FGrid
  loc_14A6FE1:     Call Proc_100_42_1448DCC(FGrid.DispID_8001, FGrid.DispID_10000, var_98, var_FC, var_D8)
  loc_14A6FE6:   End If
  loc_14A6FE6: End If
  loc_14A6FE6: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_10(Index As Integer) '1036FA0
  'Data Table: 559750
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  loc_1036D7B: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1036D83: var_C8 = CVar(CLng(7)) 'Long
  loc_1036DE3: If (Trim(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 4, 5)) = "REC") Then
  loc_1036DEC:   If (Index = 2) Then
  loc_1036DF3:     Set var_88 = Me.FGrid
  loc_1036E12:     Me.FRectGrid.Visible = True
  loc_1036E2D:     Me.FRectGrid.Rows = 0
  loc_1036E35:     var_A8 = "Print Receipt"
  loc_1036E3F:     Set var_88 = Me.FRectGrid
  loc_1036E50:     var_A8 = 0
  loc_1036E59:     var_C8 = &H12C
  loc_1036E66:     Set var_88 = Me.FRectGrid
  loc_1036E6C:     LateIdCallSt
  loc_1036E77:     var_A8 = 0
  loc_1036EA6:     Me.FRectGrid.Height = CVar(CDbl(CLng(Me.FRectGrid.RowHeight))))
  loc_1036EB5:     var_A8 = 0
  loc_1036EBE:     var_C8 = &H5DC
  loc_1036ECB:     Set var_88 = Me.FRectGrid
  loc_1036ED1:     LateIdCallSt
  loc_1036EEF:     Me.FRectGrid.Width = CVar(CDbl(1510))
  loc_1036EF7:     var_A8 = 0
  loc_1036F16:     var_C8 = 0
  loc_1036F5E:     var_10C = CVar((((CDbl(Me.FGrid.Top) + arg_18) + CDbl(CLng(Me.FRectGrid.RowHeight)))) - (CDbl(CLng(Me.FRectGrid.RowHeight))) / CDbl(4)))) 'Single
  loc_1036F6D:     Me.FRectGrid.Top = var_10C
  loc_1036F97:     Me.FRectGrid.Left = arg_14
  loc_1036F9F:   End If
  loc_1036F9F: End If
  loc_1036F9F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E6AC4C
  'Data Table: 559750
  Dim var_2701 As Double
  loc_E6AC0B: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E6AC2F: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E6AC41:   Me.FRectGrid.Visible = False
  loc_E6AC49: End If
  loc_E6AC49: Exit Sub
  loc_E6AC4A: var_2701 = 
End Sub

Private Sub FGrid_UnknownEvent_15 'E34994
  'Data Table: 559750
  Dim var_8C As TextBox
  loc_E34977: Set var_88 = Me.TxtGrid
  loc_E3497D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E34985: var_8C.Visible = False
  loc_E34991: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0BBFC
  'Data Table: 559750
  loc_E0BBF2: Proc_6_93_EAC124(Me.TXT_GNAME)
  loc_E0BBFA: Exit Sub
End Sub

Private Sub CmdSum_UnknownEvent_9 'E04740
  'Data Table: 559750
  loc_E04735: global_88 = &HFF
  loc_E04738: Call CmdPrint_UnknownEvent_9()
  loc_E0473D: Exit Sub
End Sub

Private Sub CmdSettleRcpt_UnknownEvent_9 'F9FBCC
  'Data Table: 559750
  Dim var_D0 As Variant
  Dim unk_559754 As Connection15
  Dim var_88 As Recordset15
  Dim var_F8 As Fields15
  Dim var_FC As Variant
  loc_F9FA8D: Proc_6_17_EAA2B0(var_B0, MemVar_1F92078, "Select PrintRcpt,RcptPrinting from Enviro WHERE LOGSITE_CODE=")
  loc_F9FA95: var_D0 = var_F4 & var_B0 
  loc_F9FAA3: unk_559754.Execute CStr(var_D0), -1, var_F8
  loc_F9FAAE: Set var_88 = var_F8
  loc_F9FB16: var_FC = var_88.Fields.Item(1)
  loc_F9FB2B: var_90 = Proc_6_38_E68A98(var_FC.Value)
  loc_F9FB40: If (Proc_6_38_E68A98(var_88.Fields.Item(0).Value) <> "Yes") Then
  loc_F9FB43:   GoTo loc_F9FBCB
  loc_F9FB46: End If
  loc_F9FB75: If (MsgBox("Want Print Settlement Receipt ?", &H24, var_D0, var_F4, var_11C) = 7) Then
  loc_F9FB78:   GoTo loc_F9FBCB
  loc_F9FB7B: End If
  loc_F9FB89: Set var_F8 = Me.Txt
  loc_F9FB8F: Call 0.Method_CmdSettleRcpt_UnknownEvent_90 (CInt(&HA), var_FC)
  loc_F9FBA2: Call 0.Method_arg_50 (var_120)
  loc_F9FBB8: Proc_146_2_13175F4(var_FC.Tag, var_90)
  loc_F9FBCB: ' Referenced from: F9FB78
  loc_F9FBCB: ' Referenced from: F9FB43
  loc_F9FBCB: Exit Sub
End Sub

Private Sub CmdeInvoiceSql_Click() '1A3E37C
  'Data Table: 559750
  Dim var_15C As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim var_168 As String
  Dim unk_559754 As Connection15
  Dim var_190 As Variant
  Dim var_18C As Variant
  Dim var_188 As Variant
  Dim var_194 As Variant
  Dim var_198 As Variant
  Dim var_19C As String
  Dim var_1A0 As Variant
  Dim var_1B8 As String
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1BC As Variant
  Dim var_1C0 As Variant
  Dim var_1C4 As Variant
  Dim var_1DC As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1E0 As Variant
  Dim var_1E4 As Variant
  Dim var_1E8 As Variant
  Dim var_1EC As String
  Dim var_1F0 As Variant
  Dim var_9C As Variant
  Dim var_178 As Variant
  Dim var_B4 As Double
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_FC As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_114 As Variant
  Dim var_11C As Double
  Dim var_8C As Variant
  Dim var_21C As Variant
  Dim var_A6 As Variant
  Dim var_88 As Variant
  Dim var_244 As Variant
  Dim var_230 As Variant
  Dim var_254 As Variant
  Dim var_204 As Variant
  Dim var_98 As Recordset15
  Dim var_200 As Variant
  Dim var_240 As String
  Dim var_2A8 As Variant
  Dim var_310 As Variant
  Dim var_378 As Variant
  Dim var_3E0 As Variant
  Dim var_48C As Fields15
  Dim var_518 As Variant
  Dim var_5A0 As Variant
  Dim var_5C0 As Variant
  Dim var_628 As Variant
  Dim var_6B8 As Variant
  Dim var_8E0 As Variant
  Dim var_BD8 As Variant
  Dim var_EF8 As Variant
  Dim var_11D0 As Variant
  Dim var_14A8 As Variant
  Dim var_1A58 As Variant
  Dim var_1D30 As Variant
  Dim var_22E0 As Variant
  Dim var_25B8 As Variant
  Dim var_9E As Integer
  Dim var_124 As Double
  Dim var_12C As Double
  Dim var_134 As Double
  Dim var_13C As Double
  Dim var_274 As Variant
  Dim var_2B8 As Variant
  Dim var_320 As Variant
  Dim var_388 As Variant
  Dim var_3F0 As Variant
  Dim var_4C0 As Variant
  Dim var_528 As Variant
  Dim var_590 As Variant
  Dim var_5F8 As Variant
  Dim var_660 As Variant
  loc_1A3B47C: var_15C = "SELECT G.DocId,S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS CompName,S.LegalName,S.TradeName,S.Add1 CompAdd1,S.Add2 CompAdd2,S.Add3 CompAdd3,CC.CityName,CS.ShortName StateCode,CS.Name CompState,S.GSTIN,S.PIN,S.EMail,S.Mobile,F.Bill_Date,F.Bill_No " & "FROM GuestFolio G left joIn Subgroup S on G.Company=S.Subcode Left Join FOMBillDetails F On G.DocId=F.FolioNoDocid Left Join City CC On CC.CityCode=S.CityCode Left Join State CS On CS.Code=CC.State Where G.Docid='"
  loc_1A3B4A5: unk_559754.Execute var_15C & CStr(Me.TXT_GNAME.BoundText) & "'", var_188, -1
  loc_1A3B4B0: Set var_88 = var_18C
  loc_1A3B4E0: var_15C = "Select P1.*,R1.Name As ItemName,R1.HSNCode From (SELECT P1.FolioNoDocid,max(P1.Vtype) as Vtype,max(P1.Vno) as Vno,sum(P1.Amtdr) as AmtDr,0 as AmtCr,Max(P1.Vdate) as Vdate,max(P1.Comments) as Comments,Max(P1.RestCode) As RestCode,Max(P1.PayCode) As PayCode,'1' as aa,ISNULL(SUM(T.TaxPer),0) TaxPer,ISNULL(Sum(T.CGST),0) CGST,ISNULL(Sum(T.SGST),0) SGST,ISNULL(Sum(T.IGST),0) IGST FROM paycharge P1 Left Join (Select Docid,IsNull(SUM(TaxPer),0) TaxPer,IsNull(SUM(CGST),0) CGST,IsNull(SUM(SGST),0) SGST,IsNull(SUM(IGST),0) IGST " & "From (Select DocId,Sum(Case When S.Nature In ('CGST','SGST','IGST') And Amtdr<>0 Then P.TaxPer End) TaxPer,Case When S.Nature='CGST' Then Sum(Amtdr) End CGST,Case When S.Nature='SGST' Then Sum(Amtdr) End SGST,Case When S.Nature='IGST' Then Sum(Amtdr) End IGST From PayCharge P Inner Join RevMast R On P.PayCode=R.Code And R.FieldType='T' Inner Join SundryMast S On S.Code=R.Sundry Where folionoDocid='"
  loc_1A3B4E7: Set var_148 = Me.TXT_GNAME
  loc_1A3B4ED: var_158 = var_148.BoundText
  loc_1A3B507: var_190 = var_15C & CStr(var_158) & "' Group By P.DocId,S.Nature)Q Group By DocId)T On P1.DocId=T.DocId " & "where (PayCode In (Select Code From RevMast Where Nature='Room Charge') or P1.PlanCharge='Yes') and IsNull(ContraDocId,'')='' and P1.folionoDocid='"
  loc_1A3B527: var_19C = var_190 & CStr(Me.TXT_GNAME.BoundText) & "' And P1.PayCode Not In (Select Code From RevMast Where FieldType='T') Group by P1.DocId,P1.FolioNoDocid Having Sum(P1.AmtDr) <> 0 "
  loc_1A3B52E: var_1A0 = var_19C & "union all SELECT P1.FolioNoDocid,Max(P1.Vtype) As VType,Max(P1.Vno) As Vno,Sum(P1.Amtdr) As AmtDr,0 as AmtCr,Max(P1.Vdate) As Vdate ,Max(P1.Comments) As Comments,Max(P1.RestCode) As RestCode,Max(P1.PayCode) As PayCode,'2' as aa,ISNULL(SUM(T.TaxPer),0) TaxPer,ISNULL(Sum(T.CGST),0) CGST,ISNULL(Sum(T.SGST),0) SGST,ISNULL(Sum(T.IGST),0) IGST FROM paycharge P1 Left Join (Select Docid,IsNull(SUM(TaxPer),0) TaxPer,IsNull(SUM(CGST),0) CGST,IsNull(SUM(SGST),0) SGST,IsNull(SUM(IGST),0) IGST "
  loc_1A3B535: var_1B8 = var_1A0 & "From (Select DocId,Sum(Case When S.Nature In ('CGST','SGST','IGST') And Amtdr<>0 Then P.TaxPer End) TaxPer,Case When S.Nature='CGST' Then Sum(Amtdr) End CGST,Case When S.Nature='SGST' Then Sum(Amtdr) End SGST,Case When S.Nature='IGST' Then Sum(Amtdr) End IGST From PayCharge P Inner Join RevMast R On P.PayCode=R.Code And R.FieldType='T' Inner Join SundryMast S On S.Code=R.Sundry Where folionoDocid='"
  loc_1A3B54A: var_1BC = CStr(Me.TXT_GNAME.BoundText)
  loc_1A3B54E: var_1C0 = var_1B8 & var_1BC
  loc_1A3B555: var_1C4 = var_1C0 & "' Group By P.DocId,S.Nature)Q Group By DocId)T On P1.DocId=T.DocId "
  loc_1A3B55C: var_1DC = var_1C4 & "where (PayCode Not In (Select Code From RevMast Where Nature='Room Charge') And P1.PlanCharge<>'Yes') And P1.RestCode Not In (Select Code From Depart Where OutletYN='Y'  And (LogSite_Code='KK' Or LogSite_Code='HO')) And IsNull(ContraDocId,'')='' and P1.folionoDocid='"
  loc_1A3B569: var_1D8 = Me.TXT_GNAME.BoundText
  loc_1A3B571: var_1E0 = CStr(var_1D8)
  loc_1A3B575: var_1E4 = var_1DC & var_1E0
  loc_1A3B57C: var_1E8 = var_1E4 & "' And P1.PayCode Not In (Select Code From RevMast Where FieldType='T') And P1.PayCode<>'"
  loc_1A3B583: var_1EC = var_1E8 & MemVar_1F92078
  loc_1A3B58A: var_1F0 = var_1EC & "ROFF' Group by P1.DocId,P1.FolioNoDocid Having Sum(P1.AmtDr) <> 0)P1 LEFT JOIN RevMast R1 On P1.PayCode=R1.Code"
  loc_1A3B593: unk_559754.Execute var_1F0, var_200, -1
  loc_1A3B59E: Set var_8C = var_204
  loc_1A3B608: unk_559754.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Guest Bill' And LogSite_Code='" & MemVar_1F92078 & "'", var_158, -1
  loc_1A3B613: Set var_9C = var_148
  loc_1A3B629: var_208 = var_9C.RecordCount
  loc_1A3B637: If (var_208 > 0) Then
  loc_1A3B665:   var_188 = Left(CVar(var_9C.Fields.Item("RoundOffType")), 1)
  loc_1A3B66E:   var_AC = CStr(var_188)
  loc_1A3B67E: Else
  loc_1A3B681:   var_AC = "U"
  loc_1A3B684: End If
  loc_1A3B687: var_B4 = CDbl(0)
  loc_1A3B68D: var_BC = CDbl(0)
  loc_1A3B693: var_C4 = CDbl(0)
  loc_1A3B699: var_CC = CDbl(0)
  loc_1A3B69F: var_D4 = CDbl(0)
  loc_1A3B6A5: var_DC = CDbl(0)
  loc_1A3B6AB: var_E4 = CDbl(0)
  loc_1A3B6B1: var_EC = CDbl(0)
  loc_1A3B6B7: var_F4 = CDbl(0)
  loc_1A3B6BD: var_FC = CDbl(0)
  loc_1A3B6C3: var_104 = CDbl(0)
  loc_1A3B6C9: var_10C = CDbl(0)
  loc_1A3B6CF: var_114 = CDbl(0)
  loc_1A3B6D5: var_11C = CDbl(0)
  loc_1A3B6D8: ' Referenced from: 1A3B8A5
  loc_1A3B6E7: If Not(var_8C.EOF) Then
  loc_1A3B710:   Proc_6_39_E7C810(var_188, CVar(var_8C.Fields.Item("TaxPer")), var_11C, var_114, var_10C, var_104, var_FC)
  loc_1A3B72A:   If CBool(var_188 <> 0) Then
  loc_1A3B75A:     Proc_6_39_E7C810(var_188, CVar(var_8C.Fields.Item("AmtDr")), CVar(var_B4), var_F4, var_EC)
  loc_1A3B762:     var_1B4 = (var_E4 + var_188)
  loc_1A3B767:     var_B4 = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3B7A3:     Proc_6_39_E7C810(var_188, CVar(var_8C.Fields.Item("CGST")), CVar(var_104), var_B4)
  loc_1A3B7AB:     var_1B4 = (var_DC + var_188)
  loc_1A3B7B0:     var_104 = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3B7EC:     Proc_6_39_E7C810(var_188, CVar(var_8C.Fields.Item("SGST")), CVar(var_10C), var_104)
  loc_1A3B7F4:     var_1B4 = (var_D4 + var_188)
  loc_1A3B7F9:     var_10C = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3B835:     Proc_6_39_E7C810(var_188, CVar(var_8C.Fields.Item("IGST")), CVar(var_114))
  loc_1A3B83D:     var_1B4 = (var_10C + var_188)
  loc_1A3B842:     var_114 = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3B854:   Else
  loc_1A3B857:     var_21C = CVar(var_11C) 'Double
  loc_1A3B881:     Proc_6_39_E7C810(var_188, CVar(var_8C.Fields.Item("AmtDr")), var_21C)
  loc_1A3B889:     var_1B4 = (var_114 + var_188)
  loc_1A3B88E:     var_11C = CSng(Me.TXT_GNAME.BoundText)
  loc_1A3B89D:   End If
  loc_1A3B8A0:   var_8C.MoveNext
  loc_1A3B8A5:   GoTo loc_1A3B6D8
  loc_1A3B8A8: End If
  loc_1A3B8BB: var_BC = ((((var_B4 + var_104) + var_10C) + var_114) + var_11C)
  loc_1A3B8D2: Proc_6_142_14A55B0(var_BC, CByte(0), var_AC, 2)
  loc_1A3B8D7: var_EC = var_BC
  loc_1A3B8F1: If (((var_104 = CDbl(0)) And (var_10C = CDbl(0))) And (var_114 = CDbl(0))) Then
  loc_1A3B902:   var_178 = "This is Not a Tax Invoice"
  loc_1A3B90D:   MsgBox(var_178, &H10, var_188, Me.TXT_GNAME.BoundText, var_1D8)
  loc_1A3B922:   Set var_88 = Nothing
  loc_1A3B925:   Exit Sub
  loc_1A3B926: End If
  loc_1A3B92A: Set var_98 = New 
  loc_1A3B935: Set var_98 = Proc_96_103_1575E24(var_98, var_EC, var_11C)
  loc_1A3B93A: var_A6 = &HFF
  loc_1A3B946: unk_559754.BeginTrans var_208
  loc_1A3B94B: ' Referenced from: 1A3E34B
  loc_1A3B951: var_20A = var_88.EOF
  loc_1A3B95A: If Not(var_20A) Then
  loc_1A3B960:   Set var_244 = var_98 
  loc_1A3B96F:   var_244.AddNew var_178, var_21C
  loc_1A3B99A:   var_244.Fields.Item("UserGSTIN").Value = CVar(MemVar_1F92154)
  loc_1A3B9E9:   var_244.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_1A3BA1F:   var_244.Fields.Item("TranDtls_TaxSch").Value = "GST"
  loc_1A3BA50:   var_244.Fields.Item("TranDtls_SupTyp").Value = "B2B"
  loc_1A3BA81:   var_244.Fields.Item("TranDtls_RegRev").Value = "N"
  loc_1A3BAB2:   var_244.Fields.Item("TranDtls_EcmGstin").Value = vbNullString
  loc_1A3BAE3:   var_244.Fields.Item("TranDtls_IgstOnIntra").Value = "N"
  loc_1A3BB14:   var_244.Fields.Item("DocDtls_Typ").Value = "INV"
  loc_1A3BB8B:   var_244.Fields.Item("DocDtls_No").Value = CVar(Proc_96_43_F99184("BCNT", Trim(CVar(CStr(var_88.Fields.Item("Bill_no").Value))), var_A6))
  loc_1A3BBF2:   var_1D8 = Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Bill_Date")), var_CC)), "dd/MM/yyyy")
  loc_1A3BC1A:   var_244.Fields.Item("DocDtls_Dt").Value = var_1D8
  loc_1A3BC5C:   var_244.Fields.Item("SellerDtls_Gstin").Value = CVar(MemVar_1F92154)
  loc_1A3BC8E:   var_244.Fields.Item("SellerDtls_LglNm").Value = CVar(MemVar_1F92188)
  loc_1A3BCC0:   var_244.Fields.Item("SellerDtls_TrdNm").Value = CVar(MemVar_1F9218C)
  loc_1A3BCF2:   var_244.Fields.Item("SellerDtls_Addr1").Value = CVar(MemVar_1F92134)
  loc_1A3BD24:   var_244.Fields.Item("SellerDtls_Addr2").Value = CVar(MemVar_1F92138)
  loc_1A3BD56:   var_244.Fields.Item("SellerDtls_Loc").Value = CVar(MemVar_1F92184)
  loc_1A3BD88:   var_244.Fields.Item("SellerDtls_Pin").Value = CVar(MemVar_1F92178)
  loc_1A3BDBA:   var_244.Fields.Item("SellerDtls_Stcd").Value = CVar(MemVar_1F92158)
  loc_1A3BDEC:   var_244.Fields.Item("SellerDtls_Ph").Value = CVar(MemVar_1F9217C)
  loc_1A3BE1E:   var_244.Fields.Item("SellerDtls_Em").Value = CVar(MemVar_1F92180)
  loc_1A3BE75:   var_244.Fields.Item("BuyerDtls_Gstin").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GSTIN")), 1))
  loc_1A3BED5:   var_244.Fields.Item("BuyerDtls_LglNm").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Legalname")), 1))
  loc_1A3BF35:   var_244.Fields.Item("BuyerDtls_TrdNm").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TradeName"))))
  loc_1A3BF70:   var_244.Fields.Item("BuyerDtls_Pos").Value = CVar(MemVar_1F92158)
  loc_1A3BFC7:   var_244.Fields.Item("BuyerDtls_Addr1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompAdd1"))))
  loc_1A3C027:   var_244.Fields.Item("BuyerDtls_Addr2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompAdd2"))))
  loc_1A3C087:   var_244.Fields.Item("BuyerDtls_Loc").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName"))))
  loc_1A3C0E7:   var_244.Fields.Item("BuyerDtls_Pin").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin"))))
  loc_1A3C147:   var_244.Fields.Item("BuyerDtls_Stcd").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateCode"))))
  loc_1A3C1A7:   var_244.Fields.Item("BuyerDtls_Ph").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile"))))
  loc_1A3C1FF:   var_1C8 = var_244.Fields.Item("BuyerDtls_Em")
  loc_1A3C207:   var_1C8.Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Email"))))
  loc_1A3C243:   var_244.Fields.Item("ValDtls_AssVal").Value = CVar(var_B4)
  loc_1A3C276:   var_244.Fields.Item("ValDtls_CgstVal").Value = CVar(var_104)
  loc_1A3C2A9:   var_244.Fields.Item("ValDtls_SgstVal").Value = CVar(var_10C)
  loc_1A3C2DC:   var_244.Fields.Item("ValDtls_IgstVal").Value = CVar(var_114)
  loc_1A3C30F:   var_244.Fields.Item("ValDtls_CesVal").Value = CVar(var_FC)
  loc_1A3C342:   var_244.Fields.Item("ValDtls_StCesVal").Value = CVar(var_DC)
  loc_1A3C373:   var_244.Fields.Item("ValDtls_Discount").Value = 0
  loc_1A3C38A:   var_21C = CVar(((var_F4 + var_C4) + var_11C)) 'Double
  loc_1A3C3AE:   var_244.Fields.Item("ValDtls_OthChrg").Value = 0
  loc_1A3C3E1:   var_244.Fields.Item("ValDtls_RndOffAmt").Value = CVar(var_EC)
  loc_1A3C3F4:   var_21C = CVar((var_BC + var_EC)) 'Double
  loc_1A3C418:   var_244.Fields.Item("ValDtls_TotInvVal").Value = CVar(var_EC)
  loc_1A3C427:   var_21C = CVar(var_BC) 'Double
  loc_1A3C42F:   var_178 = "ValDtls_TotInvValFc"
  loc_1A3C44B:   var_244.Fields.Item(var_178).Value = var_21C
  loc_1A3C462:   var_244.Update var_178, var_21C
  loc_1A3C469:   Set var_244 = Nothing 
  loc_1A3C473:   var_254 = 0
  loc_1A3C4CF:   unk_559754.Execute CStr("Select Count(*) From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "' And Isnull(IRN,'')=''"), var_1D8, -1
  loc_1A3C4D7:   var_1A4 = var_1A4.Fields
  loc_1A3C4DF:   var_254 = var_1C8.Item(var_1C8)
  loc_1A3C4E7:   var_204 = var_204.Value
  loc_1A3C50E:   If CBool(var_200) Then
  loc_1A3C564:     unk_559754.Execute CStr("Delete From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "'"), var_1D8, -1
  loc_1A3C5BC:     var_188 = "Delete From eInvoiceBill2 Where DocId='" & var_88.Fields.Item("DocID").Value 
  loc_1A3C5D3:     unk_559754.Execute CStr(var_188 & "'"), var_1D8, -1
  loc_1A3C5EF:   End If
  loc_1A3C603:   var_15C = "INSERT INTO eInvoiceBill1 ([UserGSTIN],[DocId],[TranDtls_TaxSch],[TranDtls_SupTyp],[TranDtls_RegRev],[TranDtls_EcmGstin],[TranDtls_IgstOnIntra],[DocDtls_Typ],[DocDtls_No],[DocDtls_Dt]" & ",[SellerDtls_Gstin],[SellerDtls_LglNm],[SellerDtls_TrdNm],[SellerDtls_Addr1],[SellerDtls_Addr2],[SellerDtls_Loc],[SellerDtls_Pin],[SellerDtls_Stcd],[SellerDtls_Ph],[SellerDtls_Em]"
  loc_1A3C60A:   var_160 = var_15C & ",[BuyerDtls_Gstin],[BuyerDtls_LglNm],[BuyerDtls_TrdNm],[BuyerDtls_Pos],[BuyerDtls_Addr1],[BuyerDtls_Addr2],[BuyerDtls_Loc],[BuyerDtls_Pin],[BuyerDtls_Stcd],[BuyerDtls_Ph],[BuyerDtls_Em]"
  loc_1A3C611:   var_164 = var_160 & ",[DispDtls_Nm],[DispDtls_Addr1],[DispDtls_Addr2],[DispDtls_Loc],[DispDtls_Pin],[DispDtls_Stcd]"
  loc_1A3C618:   var_168 = var_164 & ",[ShipDtls_Gstin],[ShipDtls_LglNm],[ShipDtls_TrdNm],[ShipDtls_Addr1],[ShipDtls_Addr2],[ShipDtls_Loc],[ShipDtls_Pin],[ShipDtls_Stcd]"
  loc_1A3C61F:   var_190 = var_168 & ",[ValDtls_AssVal],[ValDtls_Cgstval],[ValDtls_Sgstval],[ValDtls_Igstval],[ValDtls_Cesval],[ValDtls_StCesVal],[ValDtls_Discount],[ValDtls_OthChrg],[ValDtls_RndOffAmt],[ValDtls_TotInvVal],[ValDtls_TotInvValFc]"
  loc_1A3C626:   var_194 = var_190 & ",[RefDtls_InvRm],[RefDtls_DocPerdDtls_InvStDt],[RefDtls_DocPerdDtls_InvEndDt],[RefDtls_PrecDocDtls_InvNo],[RefDtls_PrecDocDtls_InvDt],[RefDtls_PrecDocDtls_OthRefNo]"
  loc_1A3C62D:   var_198 = var_194 & ",[RefDtls_ContrDtls_RecAdvRefr],[RefDtls_ContrDtls_RecAdvDt],[RefDtls_ContrDtls_TendRefr],[RefDtls_ContrDtls_Contrrefr],[RefDtls_ContrDtls_Extrefr],[RefDtls_ContrDtls_Projrefr],[RefDtls_ContrDtls_Porefr],[RefDtls_ContrDtls_PoRefDt]"
  loc_1A3C634:   var_19C = var_198 & ",[PayDtls_Nm],[PayDtls_AccDet],[PayDtls_Mode],[PayDtls_Fininsbr],[PayDtls_PayTerm],[PayDtls_PayInstr],[PayDtls_CrTrn],[PayDtls_DirDr],[PayDtls_CrDay],[PayDtls_PaidAmt],[PayDtls_Paymtdue]"
  loc_1A3C63B:   var_1A0 = var_19C & ",[EwbDtls_TransId],[EwbDtls_TransName],[EwbDtls_Distance],[EwbDtls_TransDocNo],[EwbDtls_TransDocDt],[EwbDtls_VehNo],[EwbDtls_VehType],[EwbDtls_TransMode]) VALUES "
  loc_1A3C642:   var_1B4 = CVar(var_1A0 & "(") 'String
  loc_1A3C648:   var_178 = "UserGSTIN"
  loc_1A3C654:   var_148 = var_98.Fields
  loc_1A3C65C:   var_18C = var_148.Item(var_178)
  loc_1A3C664:   var_158 = CVar(var_18C) 'Address
  loc_1A3C66B:   Proc_6_17_EAA2B0(var_188, var_158, var_1B4, var_25F8, -1)
  loc_1A3C673:   var_1D8 = var_25FC & var_188 
  loc_1A3C677:   var_21C = ","
  loc_1A3C67C:   var_200 = var_1D8 & var_21C 
  loc_1A3C683:   var_230 = "DocID"
  loc_1A3C68F:   var_1A4 = var_98.Fields
  loc_1A3C697:   var_1C8 = var_1A4.Item(var_230)
  loc_1A3C6A6:   Proc_6_17_EAA2B0(var_274, CVar(var_1C8), var_200, var_1A4)
  loc_1A3C6B2:   var_240 = ","
  loc_1A3C6BE:   var_254 = "TranDtls_TaxSch"
  loc_1A3C6CA:   var_204 = var_98.Fields
  loc_1A3C6DA:   var_2A8 = CVar(var_204.Item(var_254)) 'Address
  loc_1A3C6E1:   Proc_6_17_EAA2B0(var_2B8, var_2A8, var_1A4 & var_274 & var_240)
  loc_1A3C715:   var_310 = CVar(var_98.Fields.Item("TranDtls_SupTyp")) 'Address
  loc_1A3C71C:   Proc_6_17_EAA2B0(var_320, var_310)
  loc_1A3C750:   var_378 = CVar(var_98.Fields.Item("TranDtls_RegRev")) 'Address
  loc_1A3C757:   Proc_6_17_EAA2B0(var_388, var_378)
  loc_1A3C78B:   var_3E0 = CVar(var_98.Fields.Item("TranDtls_EcmGstin")) 'Address
  loc_1A3C792:   Proc_6_17_EAA2B0(var_3F0, var_3E0)
  loc_1A3C7CD:   Proc_6_17_EAA2B0(var_458, CVar(var_98.Fields.Item("TranDtls_IgstOnIntra")))
  loc_1A3C7F1:   var_48C = var_98.Fields
  loc_1A3C808:   Proc_6_17_EAA2B0(var_4C0, CVar(var_48C.Item("DocDtls_Typ")))
  loc_1A3C843:   Proc_6_17_EAA2B0(var_528, CVar(var_98.Fields.Item("DocDtls_No")))
  loc_1A3C87E:   Proc_6_7_F25D88(var_590, CVar(var_98.Fields.Item("DocDtls_Dt")))
  loc_1A3C886:   var_5A0 = var_200 & var_2B8 & "," & var_320 & "," & var_388 & "," & var_3F0 & "," & var_458 & "," & var_4C0 & "," & var_528 & "," & var_590 
  loc_1A3C88F:   var_5C0 = var_5A0 & "," 
  loc_1A3C8B9:   Proc_6_17_EAA2B0(var_5F8, CVar(var_98.Fields.Item("SellerDtls_Gstin")))
  loc_1A3C8F4:   Proc_6_17_EAA2B0(var_660, CVar(var_98.Fields.Item("SellerDtls_LglNm")))
  loc_1A3C928:   var_6B8 = CVar(var_98.Fields.Item("SellerDtls_TrdNm")) 'Address
  loc_1A3C92F:   Proc_6_17_EAA2B0(var_6C8, var_6B8)
  loc_1A3C96A:   Proc_6_17_EAA2B0(var_730, CVar(var_98.Fields.Item("SellerDtls_Addr1")))
  loc_1A3C9A5:   Proc_6_17_EAA2B0(var_798, CVar(var_98.Fields.Item("SellerDtls_Addr2")))
  loc_1A3C9E0:   Proc_6_17_EAA2B0(var_800, CVar(var_98.Fields.Item("SellerDtls_Loc")))
  loc_1A3CA1B:   Proc_6_17_EAA2B0(var_868, CVar(var_98.Fields.Item("SellerDtls_Pin")))
  loc_1A3CA56:   Proc_6_17_EAA2B0(var_8D0, CVar(var_98.Fields.Item("SellerDtls_Stcd")))
  loc_1A3CA5E:   var_8E0 = var_5C0 & var_5F8 & "," & var_660 & "," & var_6C8 & "," & var_730 & "," & var_798 & "," & var_800 & "," & var_868 & "," & var_8D0 
  loc_1A3CA91:   Proc_6_17_EAA2B0(var_938, CVar(var_98.Fields.Item("SellerDtls_Ph")))
  loc_1A3CACC:   Proc_6_17_EAA2B0(var_9A0, CVar(var_98.Fields.Item("SellerDtls_Em")))
  loc_1A3CB07:   Proc_6_17_EAA2B0(var_A08, CVar(var_98.Fields.Item("BuyerDtls_Gstin")))
  loc_1A3CB42:   Proc_6_17_EAA2B0(var_A70, CVar(var_98.Fields.Item("BuyerDtls_LglNm")))
  loc_1A3CB7D:   Proc_6_17_EAA2B0(var_AD8, CVar(var_98.Fields.Item("BuyerDtls_TrdNm")))
  loc_1A3CBB8:   Proc_6_17_EAA2B0(var_B40, CVar(var_98.Fields.Item("BuyerDtls_Pos")))
  loc_1A3CBF3:   Proc_6_17_EAA2B0(var_BA8, CVar(var_98.Fields.Item("BuyerDtls_Addr1")))
  loc_1A3CC04:   var_BD8 = var_8E0 & "," & var_938 & "," & var_9A0 & "," & var_A08 & "," & var_A70 & "," & var_AD8 & "," & var_B40 & "," & var_BA8 & "," 
  loc_1A3CC2E:   Proc_6_17_EAA2B0(var_C10, CVar(var_98.Fields.Item("BuyerDtls_Addr2")))
  loc_1A3CC69:   Proc_6_17_EAA2B0(var_C78, CVar(var_98.Fields.Item("BuyerDtls_Loc")))
  loc_1A3CCA4:   Proc_6_17_EAA2B0(var_CE0, CVar(var_98.Fields.Item("BuyerDtls_Pin")))
  loc_1A3CCDF:   Proc_6_17_EAA2B0(var_D48, CVar(var_98.Fields.Item("BuyerDtls_Stcd")))
  loc_1A3CD1A:   Proc_6_17_EAA2B0(var_DB0, CVar(var_98.Fields.Item("BuyerDtls_Ph")))
  loc_1A3CD55:   Proc_6_17_EAA2B0(var_E18, CVar(var_98.Fields.Item("BuyerDtls_Em")))
  loc_1A3CD90:   Proc_6_17_EAA2B0(var_E80, CVar(var_98.Fields.Item("DispDtls_Nm")))
  loc_1A3CDCB:   Proc_6_17_EAA2B0(var_EE8, CVar(var_98.Fields.Item("DispDtls_Addr1")))
  loc_1A3CDD3:   var_EF8 = var_BD8 & var_C10 & "," & var_C78 & "," & var_CE0 & "," & var_D48 & "," & var_DB0 & "," & var_E18 & "," & var_E80 & "," & var_EE8 
  loc_1A3CE06:   Proc_6_17_EAA2B0(var_F50, CVar(var_98.Fields.Item("DispDtls_Addr2")))
  loc_1A3CE41:   Proc_6_17_EAA2B0(var_FB8, CVar(var_98.Fields.Item("DispDtls_Loc")))
  loc_1A3CE7C:   Proc_6_17_EAA2B0(var_1020, CVar(var_98.Fields.Item("DispDtls_Pin")))
  loc_1A3CEB7:   Proc_6_17_EAA2B0(var_1088, CVar(var_98.Fields.Item("DispDtls_Stcd")))
  loc_1A3CEF2:   Proc_6_17_EAA2B0(var_10F0, CVar(var_98.Fields.Item("ShipDtls_Gstin")))
  loc_1A3CF2D:   Proc_6_17_EAA2B0(var_1158, CVar(var_98.Fields.Item("ShipDtls_LglNm")))
  loc_1A3CF68:   Proc_6_17_EAA2B0(var_11C0, CVar(var_98.Fields.Item("ShipDtls_TrdNm")))
  loc_1A3CF70:   var_11D0 = var_EF8 & "," & var_F50 & "," & var_FB8 & "," & var_1020 & "," & var_1088 & "," & var_10F0 & "," & var_1158 & "," & var_11C0 
  loc_1A3CFA3:   Proc_6_17_EAA2B0(var_1228, CVar(var_98.Fields.Item("ShipDtls_Addr1")))
  loc_1A3CFDE:   Proc_6_17_EAA2B0(var_1290, CVar(var_98.Fields.Item("ShipDtls_Addr2")))
  loc_1A3D019:   Proc_6_17_EAA2B0(var_12F8, CVar(var_98.Fields.Item("ShipDtls_Loc")))
  loc_1A3D054:   Proc_6_17_EAA2B0(var_1360, CVar(var_98.Fields.Item("ShipDtls_Pin")))
  loc_1A3D08F:   Proc_6_17_EAA2B0(var_13C8, CVar(var_98.Fields.Item("ShipDtls_Stcd")))
  loc_1A3D0CA:   Proc_6_39_E7C810(var_1430, CVar(var_98.Fields.Item("ValDtls_AssVal")))
  loc_1A3D105:   Proc_6_39_E7C810(var_1498, CVar(var_98.Fields.Item("ValDtls_CgstVal")))
  loc_1A3D10D:   var_14A8 = var_11D0 & "," & var_1228 & "," & var_1290 & "," & var_12F8 & "," & var_1360 & "," & var_13C8 & "," & var_1430 & "," & var_1498 
  loc_1A3D140:   Proc_6_39_E7C810(var_1500, CVar(var_98.Fields.Item("ValDtls_SgstVal")))
  loc_1A3D17B:   Proc_6_39_E7C810(var_1568, CVar(var_98.Fields.Item("ValDtls_IgstVal")))
  loc_1A3D1B6:   Proc_6_39_E7C810(var_15D0, CVar(var_98.Fields.Item("ValDtls_CesVal")))
  loc_1A3D1F1:   Proc_6_39_E7C810(var_1638, CVar(var_98.Fields.Item("ValDtls_StCesVal")))
  loc_1A3D22C:   Proc_6_39_E7C810(var_16A0, CVar(var_98.Fields.Item("ValDtls_Discount")))
  loc_1A3D267:   Proc_6_39_E7C810(var_1708, CVar(var_98.Fields.Item("ValDtls_OthChrg")))
  loc_1A3D2A2:   Proc_6_39_E7C810(var_1770, CVar(var_98.Fields.Item("ValDtls_RndOffAmt")))
  loc_1A3D2AA:   var_1780 = var_14A8 & "," & var_1500 & "," & var_1568 & "," & var_15D0 & "," & var_1638 & "," & var_16A0 & "," & var_1708 & "," & var_1770 
  loc_1A3D2DD:   Proc_6_39_E7C810(var_17D8, CVar(var_98.Fields.Item("ValDtls_TotInvVal")))
  loc_1A3D318:   Proc_6_39_E7C810(var_1840, CVar(var_98.Fields.Item("ValDtls_TotInvValFc")))
  loc_1A3D353:   Proc_6_17_EAA2B0(var_18A8, CVar(var_98.Fields.Item("RefDtls_InvRm")))
  loc_1A3D38E:   Proc_6_7_F25D88(var_1910, CVar(var_98.Fields.Item("RefDtls_DocPerdDtls_InvStDt")))
  loc_1A3D3C9:   Proc_6_7_F25D88(var_1978, CVar(var_98.Fields.Item("RefDtls_DocPerdDtls_InvEndDt")))
  loc_1A3D404:   Proc_6_17_EAA2B0(var_19E0, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_InvNo")))
  loc_1A3D43F:   Proc_6_7_F25D88(var_1A48, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_InvDt")))
  loc_1A3D447:   var_1A58 = var_1780 & "," & var_17D8 & "," & var_1840 & "," & var_18A8 & "," & var_1910 & "," & var_1978 & "," & var_19E0 & "," & var_1A48 
  loc_1A3D47A:   Proc_6_17_EAA2B0(var_1AB0, CVar(var_98.Fields.Item("RefDtls_PrecDocDtls_OthRefNo")))
  loc_1A3D4B5:   Proc_6_17_EAA2B0(var_1B18, CVar(var_98.Fields.Item("RefDtls_ContrDtls_RecAdvRefr")))
  loc_1A3D4F0:   Proc_6_7_F25D88(var_1B80, CVar(var_98.Fields.Item("RefDtls_ContrDtls_RecAdvDt")))
  loc_1A3D52B:   Proc_6_17_EAA2B0(var_1BE8, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Tendrefr")))
  loc_1A3D566:   Proc_6_17_EAA2B0(var_1C50, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Contrrefr")))
  loc_1A3D5A1:   Proc_6_17_EAA2B0(var_1CB8, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Extrefr")))
  loc_1A3D5DC:   Proc_6_17_EAA2B0(var_1D20, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Projrefr")))
  loc_1A3D5E4:   var_1D30 = var_1A58 & "," & var_1AB0 & "," & var_1B18 & "," & var_1B80 & "," & var_1BE8 & "," & var_1C50 & "," & var_1CB8 & "," & var_1D20 
  loc_1A3D617:   Proc_6_17_EAA2B0(var_1D88, CVar(var_98.Fields.Item("RefDtls_ContrDtls_Porefr")))
  loc_1A3D652:   Proc_6_7_F25D88(var_1DF0, CVar(var_98.Fields.Item("RefDtls_ContrDtls_PoRefDt")))
  loc_1A3D68D:   Proc_6_17_EAA2B0(var_1E58, CVar(var_98.Fields.Item("PayDtls_Nm")))
  loc_1A3D6C8:   Proc_6_17_EAA2B0(var_1EC0, CVar(var_98.Fields.Item("PayDtls_Accdet")))
  loc_1A3D703:   Proc_6_17_EAA2B0(var_1F28, CVar(var_98.Fields.Item("PayDtls_Mode")))
  loc_1A3D73E:   Proc_6_17_EAA2B0(var_1F90, CVar(var_98.Fields.Item("PayDtls_Fininsbr")))
  loc_1A3D779:   Proc_6_17_EAA2B0(var_1FF8, CVar(var_98.Fields.Item("PayDtls_Payterm")))
  loc_1A3D781:   var_2008 = var_1D30 & "," & var_1D88 & "," & var_1DF0 & "," & var_1E58 & "," & var_1EC0 & "," & var_1F28 & "," & var_1F90 & "," & var_1FF8 
  loc_1A3D7B4:   Proc_6_17_EAA2B0(var_2060, CVar(var_98.Fields.Item("PayDtls_Payinstr")))
  loc_1A3D7EF:   Proc_6_17_EAA2B0(var_20C8, CVar(var_98.Fields.Item("PayDtls_Crtrn")))
  loc_1A3D82A:   Proc_6_17_EAA2B0(var_2130, CVar(var_98.Fields.Item("PayDtls_Dirdr")))
  loc_1A3D865:   Proc_6_39_E7C810(var_2198, CVar(var_98.Fields.Item("PayDtls_Crday")))
  loc_1A3D8A0:   Proc_6_39_E7C810(var_2200, CVar(var_98.Fields.Item("PayDtls_Paidamt")))
  loc_1A3D8DB:   Proc_6_39_E7C810(var_2268, CVar(var_98.Fields.Item("PayDtls_Paymtdue")))
  loc_1A3D916:   Proc_6_17_EAA2B0(var_22D0, CVar(var_98.Fields.Item("EwbDtls_TransId")))
  loc_1A3D91E:   var_22E0 = var_2008 & "," & var_2060 & "," & var_20C8 & "," & var_2130 & "," & var_2198 & "," & var_2200 & "," & var_2268 & "," & var_22D0 
  loc_1A3D951:   Proc_6_17_EAA2B0(var_2338, CVar(var_98.Fields.Item("EwbDtls_TransName")))
  loc_1A3D98C:   Proc_6_39_E7C810(var_23A0, CVar(var_98.Fields.Item("EwbDtls_Distance")))
  loc_1A3D9C7:   Proc_6_17_EAA2B0(var_2408, CVar(var_98.Fields.Item("EwbDtls_TransDocNo")))
  loc_1A3DA02:   Proc_6_7_F25D88(var_2470, CVar(var_98.Fields.Item("EwbDtls_TransDocDt")))
  loc_1A3DA3D:   Proc_6_17_EAA2B0(var_24D8, CVar(var_98.Fields.Item("EwbDtls_VehNo")))
  loc_1A3DA78:   Proc_6_17_EAA2B0(var_2540, CVar(var_98.Fields.Item("EwbDtls_VehType")))
  loc_1A3DAB3:   Proc_6_17_EAA2B0(var_25A8, CVar(var_98.Fields.Item("EwbDtls_TransMode")))
  loc_1A3DABB:   var_25B8 = var_22E0 & "," & var_2338 & "," & var_23A0 & "," & var_2408 & "," & var_2470 & "," & var_24D8 & "," & var_2540 & "," & var_25A8 
  loc_1A3DAD2:   unk_559754.Execute CStr(var_25B8 & ")"), var_C4, 
  loc_1A3DE76:   var_9E = 1
  loc_1A3DE8D:   If (var_8C.RecordCount > 0) Then
  loc_1A3DE93:     var_8C.MoveFirst
  loc_1A3DE98:     ' Referenced from: 1A3E340
  loc_1A3DEA7:     If Not(var_8C.EOF) Then
  loc_1A3DED0:       Proc_6_39_E7C810(var_188, CVar(var_8C.Fields.Item("TaxPer")))
  loc_1A3DEEA:       If CBool(var_188 <> 0) Then
  loc_1A3DF18:         var_124 = CSng(var_8C.Fields.Item("IGST").Value)
  loc_1A3DF50:         var_12C = CSng(var_8C.Fields.Item("CGST").Value)
  loc_1A3DF88:         var_134 = CSng(var_8C.Fields.Item("SGST").Value)
  loc_1A3DFC0:         var_13C = CSng(var_8C.Fields.Item("TaxPer").Value)
  loc_1A3E02B:         Proc_6_17_EAA2B0(var_188, CVar(var_8C.Fields.Item("FolioNoDocid")), CSng(var_8C.Fields.Item("AmtDr").Value), var_13C)
  loc_1A3E056:         Proc_6_17_EAA2B0(var_2A8, CVar(var_8C.Fields.Item("ItemName")), var_134)
  loc_1A3E081:         Proc_6_17_EAA2B0(var_310, CVar(var_8C.Fields.Item("HSNCode")), var_12C)
  loc_1A3E0AC:         Proc_6_39_E7C810(var_378, CVar(var_8C.Fields.Item("AmtDr")))
  loc_1A3E0D7:         Proc_6_39_E7C810(var_3E0, CVar(var_8C.Fields.Item("AmtDr")))
  loc_1A3E102:         Proc_6_39_E7C810(var_458, CVar(var_8C.Fields.Item("AmtDr")))
  loc_1A3E148:         Proc_6_39_E7C810(var_5C0, CVar(var_8C.Fields.Item("AmtDr")))
  loc_1A3E1A0:         var_15C = "INSERT INTO eInvoiceBill2 ([DocId],[SlNo],[PrdDesc],[IsServc],[HsnCd],[Qty],[Unit]," & "[UnitPrice],[TotAmt],[Discount],[PreTaxVal],[AssAmt],[GstRt],[IgstAmt],[CgstAmt],[SgstAmt],[TotItemVal]) "
  loc_1A3E1F2:         var_388 = CVar(var_15C & "VALUES (") & var_188 & "," & CVar(CStr(var_9E)) & "," & var_2A8 & ",'Y'," & var_310 & ",1,'OTH'," & var_378 
  loc_1A3E243:         var_518 = var_388 & "," & var_3E0 & "," & "0,1," & IIf((var_13C <> CDbl(0)), var_458, 0) & "," & CVar(var_13C) & "," & CVar(var_124) 
  loc_1A3E27E:         var_5F8 = (var_5C0 + Round(var_124, 2))
  loc_1A3E285:         var_628 = (var_5F8 + Round(var_12C, 2))
  loc_1A3E28C:         var_660 = (var_5C0 & var_5F8 & "," + Round(var_134, 2))
  loc_1A3E2A7:         unk_559754.Execute CStr(var_518 & "," & CVar(var_12C) & "," & CVar(var_134) & "," & var_660 & ")"), var_6B8, -1
  loc_1A3E335:         var_9E = (var_9E + 1)
  loc_1A3E338:       End If
  loc_1A3E33B:       var_8C.MoveNext
  loc_1A3E340:       GoTo loc_1A3DE98
  loc_1A3E343:     End If
  loc_1A3E343:   End If
  loc_1A3E346:   var_88.MoveNext
  loc_1A3E34B:   GoTo loc_1A3B94B
  loc_1A3E34E: End If
  loc_1A3E354: unk_559754.CommitTrans
  loc_1A3E35B: var_A6 = 0
  loc_1A3E35E: Exit Sub
  loc_1A3E365: If (var_A6 = &HFF) Then
  loc_1A3E36E:   unk_559754.RollbackTrans
  loc_1A3E373: End If
  loc_1A3E373: Proc_6_60_E62BC4(var_A6, var_9E, var_48C)
  loc_1A3E378: Exit Sub
End Sub

Public Sub TXT_GNAME_UnknownEvent_B(Index As Integer) 'E17ABC
  'Data Table: 559750
  loc_E17AB2: If ((global_92 = "No") And (Index = &HD)) Then
  loc_E17AB5:   Call Proc_100_41_1677E30()
  loc_E17ABA: End If
  loc_E17ABA: Exit Sub
End Sub

Private Sub TXT_GNAME_UnknownEvent_11 'E0B608
  'Data Table: 559750
  loc_E0B5FF: If (global_92 <> "No") Then
  loc_E0B602:   Call Proc_100_41_1677E30()
  loc_E0B607: End If
  loc_E0B607: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FA7548
  'Data Table: 559750
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FA73DF: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FA73FA: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA7439: Set var_104 = Me.TxtGrid
  loc_FA743F: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_FA7447: var_108.Tag = CVar(CLng(Me.FGrid.Col))
  loc_FA7478: var_110 = CLng(Me.FGrid.Col)
  loc_FA7488: If (var_110 = CLng(&HA)) Then
  loc_FA74AF:   Set var_BC = Me.FGrid
  loc_FA74C6:   global_100 = CStr(var_BC.TextMatrix))
  loc_FA74EA:   Set var_A8 = Me.TxtGrid
  loc_FA74F0:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5, CVar(CLng(&HA)))
  loc_FA74F8:   var_BC.MaxLength = CVar(CLng(Me.FGrid.Row))
  loc_FA7507: Else
  loc_FA750E:   If Not (var_110 = CLng(3)) Then
  loc_FA7518:     If (var_110 = CLng(4)) Then
  loc_FA751B:     End If
  loc_FA752A:     Set var_A8 = Me.TxtGrid
  loc_FA7530:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 8)
  loc_FA7538:     var_BC.MaxLength = var_110
  loc_FA7544:   End If
  loc_FA7544: End If
  loc_FA7544: Exit Sub
  loc_FA7546: DOC
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '103DF64
  'Data Table: 559750
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_103DD10: On Error Goto loc_103DF5B
  loc_103DD1D: If (CLng(Shift) = &H1B) Then
  loc_103DD2D:   Set var_88 = Me.TxtGrid
  loc_103DD33:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_103DD4D:   Set var_94 = Me.TxtGrid
  loc_103DD53:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_103DD5B:   var_98.Text = var_8C.Tag
  loc_103DD77:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_103DD80:   Set var_88 = Me.FGrid
  loc_103DD9D:   Set var_88 = Me.TxtGrid
  loc_103DDA3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 0)
  loc_103DDAB:   var_8C.Visible = FGrid.DispID_8001
  loc_103DDB7:   Exit Sub
  loc_103DDB8: End If
  loc_103DDCB: var_AC = CLng(Me.FGrid.Col)
  loc_103DDDB: If (var_AC = CLng(&HA)) Then
  loc_103DDED:   Set var_88 = Me.TxtGrid
  loc_103DDF3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5)
  loc_103DDFB:   var_8C.MaxLength = var_AC
  loc_103DE27:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_103DE30:     Call Proc_100_39_F900B0(KeyCode, var_AE)
  loc_103DE3B:     If (var_AE = &HFF) Then
  loc_103DE72:       Set var_8C = Me.TxtGrid
  loc_103DE81:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_96)
  loc_103DE91:     End If
  loc_103DE91:   End If
  loc_103DE94: Else
  loc_103DE9B:   If Not (var_AC = CLng(3)) Then
  loc_103DEA5:     If (var_AC = CLng(4)) Then
  loc_103DEA8:     End If
  loc_103DEB7:     Set var_88 = Me.TxtGrid
  loc_103DEBD:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 8, &HA)
  loc_103DEC5:     var_8C.MaxLength = 0
  loc_103DEF1:     If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_103DEFA:       Call Proc_100_39_F900B0(KeyCode, var_AE, &HA)
  loc_103DF05:       If (var_AE = &HFF) Then
  loc_103DF4B:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_96, &HA)
  loc_103DF5B:       End If
  loc_103DF5B:       ' Referenced from: 103DD10
  loc_103DF5B:     End If
  loc_103DF5B:   End If
  loc_103DF5B: End If
  loc_103DF5B: Proc_6_60_E62BC4(0, &HA, 0)
  loc_103DF60: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E21FC8
  'Data Table: 559750
  Dim arg_10 As Integer
  loc_E21FAB: Proc_6_58_E054C0(arg_10)
  loc_E21FB6: Proc_6_133_E7EF78(var_94)
  loc_E21FBF: arg_10 = CInt(var_94)
  loc_E21FC5: Exit Sub
  loc_E21FC6: arg_10 = arg_10
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '13EC9AC
  'Data Table: 559750
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_C0 As Long
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_D4 As Variant
  Dim var_158 As Variant
  Dim var_128 As Variant
  Dim var_18C As String
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_148 As Variant
  Dim var_F4 As Variant
  Dim var_168 As Long
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_C4 As TextBox
  Dim var_E4 As Variant
  loc_13EBFB4: On Error Goto loc_13EC9A6
  loc_13EBFCA: var_C0 = CLng(Me.FGrid.Col)
  loc_13EBFDA: If (var_C0 = CLng(3)) Then
  loc_13EBFE7:   Set var_AC = Me.TxtGrid
  loc_13EBFED:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C4)
  loc_13EC005:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13EC00D:   var_138 = CVar(CLng(3)) 'Long
  loc_13EC048:   LateIdCallSt
  loc_13EC070:   Set var_AC = Me.TxtGrid
  loc_13EC076:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_C4), "0.00"))), 1)
  loc_13EC08E:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13EC096:   var_138 = CVar(CLng(&HD)) 'Long
  loc_13EC0D1:   LateIdCallSt
  loc_13EC108:   Set var_AC = Me.Txt
  loc_13EC10E:   Call 0.Method_TxtGrid_KeyUp0 (CInt(8), var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_C4), "0.00"))), 1, 1)
  loc_13EC14D:   Proc_96_86_1AEB804(Me.FGrid, Me.TxtGrid, KeyCode, CInt(&HB), CInt(3), CInt(7), var_C4)
  loc_13EC166:   global_98 = &HFF
  loc_13EC18E:   For var_188 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_188 'Integer
  loc_13EC198:     var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC1A0:     var_128 = CVar(CLng(7)) 'Long
  loc_13EC1CB:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13EC1D2:       var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC1DA:       var_128 = CVar(CLng(3)) 'Long
  loc_13EC206:       var_8C = (var_8C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13EC216:       var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC21E:       var_128 = CVar(CLng(4)) 'Long
  loc_13EC24A:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13EC25A:       var_128 = CVar(CLng(var_9E)) 'Long
  loc_13EC262:       var_148 = CVar(CLng(5)) 'Long
  loc_13EC284:       var_BC = CVar(Abs((var_8C - var_94))) 'Double
  loc_13EC294:       var_108 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_13EC29C:       Set var_AC = Me.FGrid
  loc_13EC2A2:       LateIdCallSt
  loc_13EC2C4:       If (CDbl((var_8C - var_94)) > CDbl(0)) Then
  loc_13EC2CB:         var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC2D3:         var_128 = CVar(CLng(6)) 'Long
  loc_13EC2D8:         var_148 = "Dr"
  loc_13EC2E2:         Set var_AC = Me.FGrid
  loc_13EC2E8:         LateIdCallSt
  loc_13EC2F6:       Else
  loc_13EC302:         If (CDbl((var_8C - var_94)) < CDbl(0)) Then
  loc_13EC309:           var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC311:           var_128 = CVar(CLng(6)) 'Long
  loc_13EC316:           var_148 = "Cr"
  loc_13EC320:           Set var_AC = Me.FGrid
  loc_13EC326:           LateIdCallSt
  loc_13EC334:         Else
  loc_13EC338:           var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC340:           var_128 = CVar(CLng(6)) 'Long
  loc_13EC345:           var_148 = vbNullString
  loc_13EC34F:           Set var_AC = Me.FGrid
  loc_13EC355:           LateIdCallSt
  loc_13EC360:         End If
  loc_13EC360:       End If
  loc_13EC360:     End If
  loc_13EC363:   Next var_188 'Integer
  loc_13EC36C:   Set var_1A8 = Me.Fgrid1
  loc_13EC36F:   var_128 = 0
  loc_13EC37B:   var_148 = CVar(CLng(1)) 'Long
  loc_13EC3A9:   var_F4 = CVar(CStr(Format(var_8C, "0.00"))) 'String
  loc_13EC3B0:   LateIdCallSt
  loc_13EC3C1:   var_128 = 0
  loc_13EC3CD:   var_148 = CVar(CLng(2)) 'Long
  loc_13EC3FB:   var_F4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_13EC402:   LateIdCallSt
  loc_13EC413:   var_128 = 0
  loc_13EC41F:   var_148 = CVar(CLng(3)) 'Long
  loc_13EC441:   var_BC = CVar(Abs((var_8C - var_94))) 'Double
  loc_13EC451:   var_108 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_13EC458:   LateIdCallSt
  loc_13EC46B:   var_168 = 0
  loc_13EC477:   var_1B8 = CVar(CLng(4)) 'Long
  loc_13EC49E:   var_D4 = (CDbl((var_94 - var_8C)) > CDbl(0))
  loc_13EC4C4:   var_138 = (CDbl((var_8C - var_94)) > CDbl(0))
  loc_13EC4D4:   var_1D8 = CVar(CStr(IIf(var_138, "Dr", IIf(var_94, "Cr", vbNullString)))) 'String
  loc_13EC4DB:   LateIdCallSt
  loc_13EC4F8:   Set var_1A8 = Nothing 
  loc_13EC4FF: Else
  loc_13EC506:   If (var_C0 = CLng(4)) Then
  loc_13EC513:     Set var_AC = Me.TxtGrid
  loc_13EC519:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C4, var_1A8, var_1D8, var_1B8, var_168, var_1A8)
  loc_13EC531:     var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13EC539:     var_138 = CVar(CLng(4)) 'Long
  loc_13EC566:     var_158 = CVar(CStr(Format(CVar(var_C4), "0.00"))) 'String
  loc_13EC56E:     Set var_16C = Me.FGrid
  loc_13EC574:     LateIdCallSt
  loc_13EC597:     global_98 = &HFF
  loc_13EC5BF:     For var_1EC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_9E = var_1EC 'Integer
  loc_13EC5C9:       var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC5D1:       var_128 = CVar(CLng(7)) 'Long
  loc_13EC5FC:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13EC603:         var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC60B:         var_128 = CVar(CLng(3)) 'Long
  loc_13EC637:         var_8C = (var_8C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13EC647:         var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC64F:         var_128 = CVar(CLng(4)) 'Long
  loc_13EC669:         var_18C = CStr(Me.FGrid.TextMatrix))
  loc_13EC67B:         var_94 = (var_94 + Val(var_18C))
  loc_13EC68B:         var_128 = CVar(CLng(var_9E)) 'Long
  loc_13EC693:         var_148 = CVar(CLng(5)) 'Long
  loc_13EC6B5:         var_BC = CVar(Abs((var_8C - var_94))) 'Double
  loc_13EC6C5:         var_108 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_13EC6CD:         Set var_AC = Me.FGrid
  loc_13EC6D3:         LateIdCallSt
  loc_13EC6F5:         If (CDbl((var_8C - var_94)) > CDbl(0)) Then
  loc_13EC6FC:           var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC704:           var_128 = CVar(CLng(6)) 'Long
  loc_13EC709:           var_148 = "Dr"
  loc_13EC713:           Set var_AC = Me.FGrid
  loc_13EC719:           LateIdCallSt
  loc_13EC727:         Else
  loc_13EC733:           If (CDbl((var_8C - var_94)) < CDbl(0)) Then
  loc_13EC73A:             var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC742:             var_128 = CVar(CLng(6)) 'Long
  loc_13EC747:             var_148 = "Cr"
  loc_13EC751:             Set var_AC = Me.FGrid
  loc_13EC757:             LateIdCallSt
  loc_13EC765:           Else
  loc_13EC769:             var_D4 = CVar(CLng(var_9E)) 'Long
  loc_13EC771:             var_128 = CVar(CLng(6)) 'Long
  loc_13EC776:             var_148 = vbNullString
  loc_13EC780:             Set var_AC = Me.FGrid
  loc_13EC786:             LateIdCallSt
  loc_13EC791:           End If
  loc_13EC791:         End If
  loc_13EC791:       End If
  loc_13EC794:     Next var_1EC 'Integer
  loc_13EC79D:     Set var_1F0 = Me.Fgrid1
  loc_13EC7A0:     var_128 = 0
  loc_13EC7AC:     var_148 = CVar(CLng(1)) 'Long
  loc_13EC7DA:     var_F4 = CVar(CStr(Format(var_8C, "0.00"))) 'String
  loc_13EC7E1:     LateIdCallSt
  loc_13EC7F2:     var_128 = 0
  loc_13EC7FE:     var_148 = CVar(CLng(2)) 'Long
  loc_13EC82C:     var_F4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_13EC833:     LateIdCallSt
  loc_13EC844:     var_128 = 0
  loc_13EC850:     var_148 = CVar(CLng(3)) 'Long
  loc_13EC872:     var_BC = CVar(Abs((var_8C - var_94))) 'Double
  loc_13EC882:     var_108 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_13EC889:     LateIdCallSt
  loc_13EC89C:     var_168 = 0
  loc_13EC8A8:     var_1B8 = CVar(CLng(4)) 'Long
  loc_13EC8CF:     var_D4 = (CDbl((var_94 - var_8C)) > CDbl(0))
  loc_13EC8F5:     var_138 = (CDbl((var_8C - var_94)) > CDbl(0))
  loc_13EC905:     var_1D8 = CVar(CStr(IIf(var_138, "Dr", IIf(var_94, "Cr", vbNullString)))) 'String
  loc_13EC90C:     LateIdCallSt
  loc_13EC929:     Set var_1F0 = Nothing 
  loc_13EC930:   Else
  loc_13EC937:     If (var_C0 = CLng(&HA)) Then
  loc_13EC967:       Set var_AC = Me.TxtGrid
  loc_13EC96D:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_C4, var_18C, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_1F0, var_1D8)
  loc_13EC975:       var_1B8 = var_C4.Text
  loc_13EC97D:       var_E4 = CVar(var_18C) 'String
  loc_13EC985:       Set var_16C = Me.FGrid
  loc_13EC98B:       LateIdCallSt
  loc_13EC9A5:     End If
  loc_13EC9A5:   End If
  loc_13EC9A5: End If
  loc_13EC9A5: Exit Sub
  loc_13EC9A6: ' Referenced from: 13EBFB4
  loc_13EC9A6: Proc_6_60_E62BC4(var_16C, var_E4, var_168, var_1F0)
  loc_13EC9AB: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E231D8
  'Data Table: 559750
  Dim arg_10 As Integer
  loc_E231C0: If (Cancel = 0) Then
  loc_E231C9:   Call Proc_100_39_F900B0(Cancel, var_88)
  loc_E231D2:   arg_10 = Not(var_88)
  loc_E231D5: End If
  loc_E231D5: Exit Sub
End Sub

Private Sub Command1_Click() 'E17BE8
  'Data Table: 559750
  loc_E17BDC: Me.FrmAdjust.Visible = False
  loc_E17BE4: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E17C80
  'Data Table: 559750
  loc_E17C75: Me.Global.Unload Me
  loc_E17C7D: Exit Sub
End Sub

Private Sub Form_Load() '11B59E8
  'Data Table: 559750
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_D0 As Variant
  Dim var_1A0 As Variant
  Dim var_1A4 As String
  Dim var_1AC As String
  Dim unk_559754 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim Me As Variant
  loc_11B55D8: On Error Goto loc_11B59E0
  loc_11B55E2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11B55FA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_11B5611: Me.LblUser.Left = CDbl(13500)
  loc_11B5628: Me.LblUser.Top = CDbl(7800)
  loc_11B563F: Me.LblLDt.Top = CDbl(8160)
  loc_11B5656: Me.LblLDt.Left = CDbl(13500)
  loc_11B5666: If (MemVar_1F92190 = "Yes") Then
  loc_11B5675:   Me.QrImage.Visible = True
  loc_11B5689:   Me.FreInvInfo.Visible = True
  loc_11B569D:   Me.CmdeInvoiceJson.Visible = True
  loc_11B56B1:   Me.CmdGeneInvoice.Visible = True
  loc_11B56B9: End If
  loc_11B56C6: global_124 = CStr(&HFFC0C0)
  loc_11B56D0: var_98 = MemVar_1F920F4
  loc_11B56D8: Proc_6_7_F25D88(var_C0)
  loc_11B56E8: Proc_6_7_F25D88(var_110, MemVar_1F920FC)
  loc_11B56F7: var_1AC = "CODE"
  loc_11B5709: Set var_AC = Me.TXT_GNAME
  loc_11B5716: var_B0 = "SELECT Distinct FolioNoDocid as Code,CAST(Bill_No AS integer) as Name,SettleDate FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_11B571D: var_D0 = CVar(var_B0 & "' or LOGSITE_CODE='HO') and (SETTLEDATE IS NULL OR (SettleDate between ") 'String
  loc_11B5758: var_1A0 = var_D0 & var_C0 & " and " & var_110 & ")) And (RestCode='" & CVar(MemVar_1F92070) & "FOM' OR BILL_NO IS NOT NULL)" & " and ( Bill_no<>'' And bill_no is not NULL) ORDER BY SettleDate,CAST(Bill_No AS INT)" 
  loc_11B5761: Proc_6_92_EF7064(CStr(var_1A0), var_AC, "NAME")
  loc_11B57AA: var_1A4 = "SELECT ChangeGuestCharges,DeleteGuestCharges FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='"
  loc_11B57B8: var_1AC = var_1A4 & MemVar_1F92128 & "' And UserName='"
  loc_11B57CF: unk_559754.Execute var_1AC & MemVar_1F920C8 & "'", var_C0, -1
  loc_11B57DA: Set var_88 = var_AC
  loc_11B5806: If (var_88.RecordCount > 0) Then
  loc_11B5818:   var_AC = var_88.Fields
  loc_11B582F:   Proc_6_39_E7C810(var_D0, CVar(var_AC.Item("ChangeGuestCharges")), var_AC)
  loc_11B583E:   global_72 = CStr(var_D0)
  loc_11B585E:   var_AC = var_88.Fields
  loc_11B586E:   var_C0 = CVar(var_AC.Item("DeleteGuestCharges")) 'Address
  loc_11B587D:   global_76 = Proc_6_38_E68A98(var_C0, var_1AC)
  loc_11B588A: End If
  loc_11B588F: Set var_88 = Nothing
  loc_11B58B6: unk_559754.Execute "Select * from Enviro where logsite_code='" & MemVar_1F92078 & "'", var_C0, -1
  loc_11B58C7: Set global_120 = var_AC
  loc_11B58EE: var_AC = Me.Fields
  loc_11B590D: global_92 = Proc_6_38_E68A98(CVar(var_AC.Item("FOMBillReprintAutoRefresh")), var_AC)
  loc_11B5956: If (Proc_6_38_E68A98(CVar(Me.Fields.Item("BillAmendMode"))) = "Advanced") Then
  loc_11B5961:   Set var_AC = Me.cmdAdujst
  loc_11B5967:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(True)
  loc_11B596F: End If
  loc_11B59BC: If (Ucase(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("GuestChargesDeleteLog"))))) = "YES") Then
  loc_11B59C4:   global_80 = &HFF
  loc_11B59C7: End If
  loc_11B59D1: Set var_AC = Me.TopCtrl1
  loc_11B59D7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005("Edit")
  loc_11B59DF: Exit Sub
  loc_11B59E0: ' Referenced from: 11B55D8
  loc_11B59E0: Proc_6_60_E62BC4(global_80)
  loc_11B59E5: Exit Sub
End Sub

Private Sub Form_Resize() 'E705AC
  'Data Table: 559750
  loc_E70556: Call 0.Method_arg_50 (var_88)
  loc_E70568: Me.LblFormCaption.Caption = var_88
  loc_E70581: Me.LblFormCaption.Left = CDbl(0)
  loc_E7058F: Call 0.Method_arg_100 (var_90)
  loc_E705A1: Me.LblFormCaption.Width = var_90
  loc_E705A9: Exit Sub
  loc_E705AA: Get , ,  'get  bytes
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E40494
  'Data Table: 559750
  loc_E40469: MasterFormExit = 0
  loc_E40477: Set global_84 = Nothing
  loc_E40489: Set global_120 = Nothing
  loc_E40490: Exit Sub
End Sub

Private Sub Form_Activate() 'EA7B18
  'Data Table: 559750
  Dim unk_5598D3 As Connection15
  loc_EA7A98: On Error Goto loc_EA7B11
  loc_EA7A9B: Call Proc_100_38_13C2D2C()
  loc_EA7AC4: unk_5598D3.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F92078 & "FOM'", var_AC, -1
  loc_EA7AD5: Set global_84 = var_B0
  loc_EA7AF4: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000(Me.TopCtrl1)
  loc_EA7B09: If (CLng(CInt()) = &H2D) Then
  loc_EA7B0C:   Call TopCtrl1_UnknownEvent_15()
  loc_EA7B11:   ' Referenced from: EA7A98
  loc_EA7B11: End If
  loc_EA7B11: Proc_6_60_E62BC4()
  loc_EA7B16: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E252DC
  'Data Table: 559750
  loc_E252C1: If (MasterFormExit = &HFF) Then
  loc_E252D1:   Me.Global.Unload Me
  loc_E252D9: End If
  loc_E252D9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'FA5F90
  'Data Table: 559750
  Dim var_E8 As Frame
  Dim var_EC As TextBox
  loc_FA5E1C: On Error Goto loc_FA5F8A
  loc_FA5E5C: Set var_E8 = Me.Txt
  loc_FA5E62: Call 0.Method_Form_KeyDown0 (CInt(0), var_EC)
  loc_FA5E99: If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "A") And (Ucase(CVar(var_EC)) = "CASH")) Then
  loc_FA5EA8:   Me.FrmAdjust.Visible = True
  loc_FA5EB9:   Set var_E8 = Me.Txt
  loc_FA5EBF:   Call 0.Method_Form_KeyDown0 (&H17)
  loc_FA5EC7:   var_EC.SetFocus
  loc_FA5ED3: End If
  loc_FA5F33: If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "A") And (Ucase(MemVar_1F920C8) = "SA")) Then
  loc_FA5F42:   Me.FrmAdjust.Visible = True
  loc_FA5F53:   Set var_E8 = Me.Txt
  loc_FA5F59:   Call 0.Method_Form_KeyDown0 (&H17, var_EC)
  loc_FA5F61:   var_EC.SetFocus
  loc_FA5F6D: End If
  loc_FA5F81: Proc_6_88_FE81B4(Me, KeyCode, Shift)
  loc_FA5F89: Exit Sub
  loc_FA5F8A: ' Referenced from: FA5E1C
  loc_FA5F8A: Proc_6_60_E62BC4(0)
  loc_FA5F8F: Exit Sub
End Sub

Public Function MasterFormExitGet() '55B888
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '55B897
  MasterFormExit = Value
End Sub

Public Sub Proc_100_37_1005464(arg_C) '1005464
  'Data Table: 559750
  Dim var_9C As Variant
  Dim var_D0 As String
  Dim unk_559754 As Connection15
  Dim var_F4 As Variant
  Dim var_F8 As Fields15
  Dim var_11E As Integer
  Dim var_AC As Variant
  Dim var_E0 As Byte
  Dim var_F0 As Variant
  loc_100529D: Proc_6_17_EAA2B0(var_AC, MemVar_1F92078, "Select RcptPrinting From Enviro WHERE LOGSITE_CODE=", var_F0, -1)
  loc_10052A9: var_D0 = CStr(var_F4 & var_AC)
  loc_10052B3: unk_559754.Execute var_D0, var_F8, 0
  loc_10052C3:  = var_F8.Item()
  loc_10052F3: Call 0.Method_arg_A4 (CInt(&HB))
  loc_10052FB: var_11E = arg_C
  loc_1005304: If (var_11E = 0) Then
  loc_1005313:   var_F4 = Me.Global.Screen
  loc_1005344:   If (Screen.ActiveForm.FGrid.rows > 1) Then
  loc_100534B:     Set var_F4 = (var_11E)
  loc_1005351:     var_AC = var_AC.FRectGrid.Row
  loc_1005372:     var_F8 = Me.var_AC.Screen
  loc_100537A:     var_10C = Screen.ActiveForm
  loc_1005387:     VarLateMemCallLdRfVar
  loc_10053B6:     If CBool(Trim(var_10C.FGrid) <> vbNullString) Then
  loc_10053BD:       Set var_F4 = CVar(CLng(var_AC))(7)
  loc_10053C3:       var_AC = var_10C.FRectGrid.Row
  loc_10053CC:       var_9C = CVar(CLng(var_AC)) 'Long
  loc_10053D1:       var_E0 = 7
  loc_10053E4:       var_F8 = Me.var_AC.Screen
  loc_10053F9:       var_F0 = Screen.ActiveForm.FGrid.TextMatrix
  loc_1005409:       Call 0.Method_arg_50 (var_D0, var_F0)
  loc_1005420:       Proc_146_1_1334068(CStr(var_F0), Proc_6_38_E68A98(CVar(var_F4.Fields)), var_D0)
  loc_100543E:     End If
  loc_100543E:   End If
  loc_100543E: End If
  loc_100544D: Me.FRectGrid.Visible = False
  loc_100545C: Call 0.Method_arg_A4 (CInt(0), var_E0)
  loc_1005461: Exit Sub
End Sub

Public Sub Proc_100_38_13C2D2C
  'Data Table: 559750
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_13C2398: Set var_90 = Me.FGrid
  loc_13C23AE: Me.FGrid.Rows = 1
  loc_13C23CA: global_56 = CStr(CLng(var_90.BackColor))
  loc_13C23E0: var_90.Cols = &HF
  loc_13C23E5: var_A0 = 0
  loc_13C23F1: var_D8 = CVar(CLng(0)) 'Long
  loc_13C23F6: var_F8 = "SNo"
  loc_13C23FF: LateIdCallSt
  loc_13C240A: var_A0 = CVar(CLng(0)) 'Long
  loc_13C240F: var_D8 = 0
  loc_13C241B: LateIdCallSt
  loc_13C2423: var_A0 = 0
  loc_13C242F: var_D8 = CVar(CLng(1)) 'Long
  loc_13C2434: var_F8 = "Date"
  loc_13C243D: LateIdCallSt
  loc_13C2448: var_A0 = CVar(CLng(1)) 'Long
  loc_13C2453: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C245A: LateIdCallSt
  loc_13C2465: var_A0 = CVar(CLng(1)) 'Long
  loc_13C2470: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2477: LateIdCallSt
  loc_13C2482: var_A0 = CVar(CLng(1)) 'Long
  loc_13C2487: var_D8 = &H4B0
  loc_13C2493: LateIdCallSt
  loc_13C249B: var_A0 = 0
  loc_13C24A7: var_D8 = CVar(CLng(2)) 'Long
  loc_13C24AC: var_F8 = "Particulars"
  loc_13C24B5: LateIdCallSt
  loc_13C24C0: var_A0 = CVar(CLng(2)) 'Long
  loc_13C24CB: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C24D2: LateIdCallSt
  loc_13C24DD: var_A0 = CVar(CLng(2)) 'Long
  loc_13C24E8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C24EF: LateIdCallSt
  loc_13C24FA: var_A0 = CVar(CLng(2)) 'Long
  loc_13C24FF: var_D8 = &HD16
  loc_13C250B: LateIdCallSt
  loc_13C2513: var_A0 = 0
  loc_13C251F: var_D8 = CVar(CLng(3)) 'Long
  loc_13C2524: var_F8 = "Debit"
  loc_13C252D: LateIdCallSt
  loc_13C2538: var_A0 = CVar(CLng(3)) 'Long
  loc_13C2543: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C254A: LateIdCallSt
  loc_13C2555: var_A0 = CVar(CLng(3)) 'Long
  loc_13C2560: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2567: LateIdCallSt
  loc_13C2572: var_A0 = CVar(CLng(3)) 'Long
  loc_13C2577: var_D8 = &H4B0
  loc_13C2583: LateIdCallSt
  loc_13C258B: var_A0 = 0
  loc_13C2597: var_D8 = CVar(CLng(4)) 'Long
  loc_13C259C: var_F8 = "Credit"
  loc_13C25A5: LateIdCallSt
  loc_13C25B0: var_A0 = CVar(CLng(4)) 'Long
  loc_13C25BB: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C25C2: LateIdCallSt
  loc_13C25CD: var_A0 = CVar(CLng(4)) 'Long
  loc_13C25D8: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C25DF: LateIdCallSt
  loc_13C25EA: var_A0 = CVar(CLng(4)) 'Long
  loc_13C25EF: var_D8 = &H4B0
  loc_13C25FB: LateIdCallSt
  loc_13C2603: var_A0 = 0
  loc_13C260F: var_D8 = CVar(CLng(5)) 'Long
  loc_13C2614: var_F8 = "Balance"
  loc_13C261D: LateIdCallSt
  loc_13C2628: var_A0 = CVar(CLng(5)) 'Long
  loc_13C2633: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C263A: LateIdCallSt
  loc_13C2645: var_A0 = CVar(CLng(5)) 'Long
  loc_13C2650: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2657: LateIdCallSt
  loc_13C2662: var_A0 = CVar(CLng(5)) 'Long
  loc_13C2667: var_D8 = &H4B0
  loc_13C2673: LateIdCallSt
  loc_13C267B: var_A0 = 0
  loc_13C2687: var_D8 = CVar(CLng(6)) 'Long
  loc_13C268C: var_F8 = vbNullString
  loc_13C2695: LateIdCallSt
  loc_13C26A0: var_A0 = CVar(CLng(6)) 'Long
  loc_13C26AB: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C26B2: LateIdCallSt
  loc_13C26BD: var_A0 = CVar(CLng(6)) 'Long
  loc_13C26C8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C26CF: LateIdCallSt
  loc_13C26DA: var_A0 = CVar(CLng(6)) 'Long
  loc_13C26DF: var_D8 = &H12C
  loc_13C26EB: LateIdCallSt
  loc_13C26F3: var_A0 = 0
  loc_13C26FF: var_D8 = CVar(CLng(7)) 'Long
  loc_13C2704: var_F8 = vbNullString
  loc_13C270D: LateIdCallSt
  loc_13C2718: var_A0 = CVar(CLng(7)) 'Long
  loc_13C2723: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C272A: LateIdCallSt
  loc_13C2735: var_A0 = CVar(CLng(7)) 'Long
  loc_13C2740: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2747: LateIdCallSt
  loc_13C2752: var_A0 = CVar(CLng(7)) 'Long
  loc_13C2757: var_D8 = 0
  loc_13C2763: LateIdCallSt
  loc_13C276B: var_A0 = 0
  loc_13C2777: var_D8 = CVar(CLng(8)) 'Long
  loc_13C277C: var_F8 = vbNullString
  loc_13C2785: LateIdCallSt
  loc_13C2790: var_A0 = CVar(CLng(8)) 'Long
  loc_13C279B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C27A2: LateIdCallSt
  loc_13C27AD: var_A0 = CVar(CLng(8)) 'Long
  loc_13C27B8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C27BF: LateIdCallSt
  loc_13C27CA: var_A0 = CVar(CLng(8)) 'Long
  loc_13C27CF: var_D8 = 0
  loc_13C27DB: LateIdCallSt
  loc_13C27E3: var_A0 = 0
  loc_13C27EF: var_D8 = CVar(CLng(9)) 'Long
  loc_13C27F4: var_F8 = "User"
  loc_13C27FD: LateIdCallSt
  loc_13C2808: var_A0 = CVar(CLng(9)) 'Long
  loc_13C2813: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C281A: LateIdCallSt
  loc_13C2825: var_A0 = CVar(CLng(9)) 'Long
  loc_13C2830: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2837: LateIdCallSt
  loc_13C2842: var_A0 = CVar(CLng(9)) 'Long
  loc_13C2847: var_D8 = &H320
  loc_13C2853: LateIdCallSt
  loc_13C285B: var_A0 = 0
  loc_13C2867: var_D8 = CVar(CLng(&HA)) 'Long
  loc_13C286C: var_F8 = "Split"
  loc_13C2875: LateIdCallSt
  loc_13C2880: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13C288B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2892: LateIdCallSt
  loc_13C289D: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13C28A8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C28AF: LateIdCallSt
  loc_13C28BA: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13C28BF: var_D8 = &H1C2
  loc_13C28CB: LateIdCallSt
  loc_13C28D3: var_A0 = 0
  loc_13C28DF: var_D8 = CVar(CLng(&HB)) 'Long
  loc_13C28E4: var_F8 = "RevCode"
  loc_13C28ED: LateIdCallSt
  loc_13C28F8: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13C2903: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C290A: LateIdCallSt
  loc_13C2915: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13C2920: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2927: LateIdCallSt
  loc_13C2932: var_A0 = CVar(CLng(&HB)) 'Long
  loc_13C2937: var_D8 = 0
  loc_13C2943: LateIdCallSt
  loc_13C294B: var_A0 = 0
  loc_13C2957: var_D8 = CVar(CLng(&HC)) 'Long
  loc_13C295C: var_F8 = vbNullString
  loc_13C2965: LateIdCallSt
  loc_13C2970: var_A0 = CVar(CLng(&HC)) 'Long
  loc_13C2975: var_D8 = 0
  loc_13C2981: LateIdCallSt
  loc_13C2989: var_A0 = 0
  loc_13C2995: var_D8 = CVar(CLng(&HD)) 'Long
  loc_13C299A: var_F8 = "OnAmt"
  loc_13C29A3: LateIdCallSt
  loc_13C29AE: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13C29B9: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C29C0: LateIdCallSt
  loc_13C29CB: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13C29D6: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C29DD: LateIdCallSt
  loc_13C29E8: var_A0 = CVar(CLng(&HD)) 'Long
  loc_13C29ED: var_D8 = &H2A3
  loc_13C29F9: LateIdCallSt
  loc_13C2A01: var_A0 = 0
  loc_13C2A0D: var_D8 = CVar(CLng(&HE)) 'Long
  loc_13C2A12: var_F8 = "FixedCharge"
  loc_13C2A1B: LateIdCallSt
  loc_13C2A26: var_A0 = CVar(CLng(&HE)) 'Long
  loc_13C2A2B: var_D8 = 0
  loc_13C2A37: LateIdCallSt
  loc_13C2A3F: var_A0 = vbNullString
  loc_13C2A49: Set var_B4 = Me.FGrid
  loc_13C2A6D: Me.FGrid.FixedRows = 1
  loc_13C2A77: Set var_90 = Nothing 
  loc_13C2A7F: Set var_10C = Me.Fgrid1
  loc_13C2A95: Me.Fgrid1.Rows = 1
  loc_13C2AB1: global_56 = CStr(CLng(var_10C.BackColor))
  loc_13C2AC7: var_10C.Cols = 5
  loc_13C2ACC: var_A0 = 0
  loc_13C2AD8: var_D8 = CVar(CLng(0)) 'Long
  loc_13C2ADD: var_F8 = "Total :"
  loc_13C2AE6: LateIdCallSt
  loc_13C2AF1: var_A0 = CVar(CLng(0)) 'Long
  loc_13C2AFC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2B03: LateIdCallSt
  loc_13C2B0E: var_A0 = CVar(CLng(0)) 'Long
  loc_13C2B19: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2B20: LateIdCallSt
  loc_13C2B2B: var_A0 = CVar(CLng(0)) 'Long
  loc_13C2B30: var_D8 = &H11C6
  loc_13C2B3C: LateIdCallSt
  loc_13C2B44: var_A0 = 0
  loc_13C2B50: var_D8 = CVar(CLng(1)) 'Long
  loc_13C2B55: var_F8 = vbNullString
  loc_13C2B5E: LateIdCallSt
  loc_13C2B69: var_A0 = CVar(CLng(1)) 'Long
  loc_13C2B74: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2B7B: LateIdCallSt
  loc_13C2B86: var_A0 = CVar(CLng(1)) 'Long
  loc_13C2B91: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2B98: LateIdCallSt
  loc_13C2BA3: var_A0 = CVar(CLng(1)) 'Long
  loc_13C2BA8: var_D8 = &H4B0
  loc_13C2BB4: LateIdCallSt
  loc_13C2BBC: var_A0 = 0
  loc_13C2BC8: var_D8 = CVar(CLng(2)) 'Long
  loc_13C2BCD: var_F8 = vbNullString
  loc_13C2BD6: LateIdCallSt
  loc_13C2BE1: var_A0 = CVar(CLng(2)) 'Long
  loc_13C2BEC: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2BF3: LateIdCallSt
  loc_13C2BFE: var_A0 = CVar(CLng(2)) 'Long
  loc_13C2C09: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2C10: LateIdCallSt
  loc_13C2C1B: var_A0 = CVar(CLng(2)) 'Long
  loc_13C2C20: var_D8 = &H4B0
  loc_13C2C2C: LateIdCallSt
  loc_13C2C34: var_A0 = 0
  loc_13C2C40: var_D8 = CVar(CLng(3)) 'Long
  loc_13C2C45: var_F8 = vbNullString
  loc_13C2C4E: LateIdCallSt
  loc_13C2C59: var_A0 = CVar(CLng(3)) 'Long
  loc_13C2C64: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2C6B: LateIdCallSt
  loc_13C2C76: var_A0 = CVar(CLng(3)) 'Long
  loc_13C2C81: var_D8 = CVar(CInt(7)) 'Integer
  loc_13C2C88: LateIdCallSt
  loc_13C2C93: var_A0 = CVar(CLng(3)) 'Long
  loc_13C2C98: var_D8 = &H4B0
  loc_13C2CA4: LateIdCallSt
  loc_13C2CAC: var_A0 = 0
  loc_13C2CB8: var_D8 = CVar(CLng(4)) 'Long
  loc_13C2CBD: var_F8 = vbNullString
  loc_13C2CC6: LateIdCallSt
  loc_13C2CD1: var_A0 = CVar(CLng(4)) 'Long
  loc_13C2CDC: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2CE3: LateIdCallSt
  loc_13C2CEE: var_A0 = CVar(CLng(4)) 'Long
  loc_13C2CF9: var_D8 = CVar(CInt(1)) 'Integer
  loc_13C2D00: LateIdCallSt
  loc_13C2D0B: var_A0 = CVar(CLng(4)) 'Long
  loc_13C2D10: var_D8 = &H12C
  loc_13C2D1C: LateIdCallSt
  loc_13C2D26: Set var_10C = Nothing 
  loc_13C2D2A: Exit Sub
End Sub

Public Sub Proc_100_39_F900B0
  'Data Table: 559750
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_A4 As Variant
  Dim var_110 As Variant
  Dim var_A8 As String
  loc_F8FF6F: var_A0 = CLng(Me.FGrid.Col)
  loc_F8FF7F: If Not (var_A0 = CLng(&HA)) Then
  loc_F8FF89:   If Not (var_A0 = CLng(3)) Then
  loc_F8FF93:     If (var_A0 = CLng(4)) Then
  loc_F8FF96:     End If
  loc_F8FF96:   End If
  loc_F8FFA9:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F8FFC1:   var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_F8FFD2:   Set var_8C = Me.TxtGrid
  loc_F8FFD8:   Call 0.Method_Proc_100_39_F900B00 (0, var_A4, var_A8)
  loc_F8FFE0:   var_F0 = var_A4.Text
  loc_F8FFE8:   var_110 = CVar(var_A8) 'String
  loc_F8FFF0:   Set var_124 = Me.FGrid
  loc_F8FFF6:   LateIdCallSt
  loc_F90031:   If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_F90047:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F9005F:     var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_F90099:     If (CStr(Me.FGrid.TextMatrix)) <> global_100) Then
  loc_F900A1:       global_98 = &HFF
  loc_F900A4:     End If
  loc_F900A4:   End If
  loc_F900A4: End If
  loc_F900A9: Proc_100_39_F900B0 = &HFF
End Sub

Public Sub Proc_100_40_1265C08
  'Data Table: 559750
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim unk_559754 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_110 As String
  loc_12656BC: On Error Goto loc_1265BFC
  loc_12656DB: Call 0.Method_Proc_100_40_1265C080 (CInt(&HA), var_A4, var_A8)
  loc_12656E3: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" = var_A4.Text
  loc_126571A: unk_559754.Execute &HFF & var_A8 & " order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_1265725: Set var_90 = Me.Txt
  loc_1265734: var_D0 = var_90.RecordCount
  loc_1265742: If (var_D0 <= 0) Then
  loc_126574B:   Call 0.Method_arg_50 (var_A8)
  loc_126576C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_126577E:   var_8A = 0
  loc_1265781:   Exit Sub
  loc_1265782: End If
  loc_1265785: var_94 = "BillPrint"
  loc_1265788: var_BC = "Guest Bill"
  loc_126579F: var_98 = CStr(Ucase(var_BC))
  loc_12657AF: If (var_8A = 0) Then
  loc_12657B2:   Exit Sub
  loc_12657B3: End If
  loc_12657D7: Set var_A0 = var_90 
  loc_12657DE: CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\" & var_94 & ".ttx", &HFF)
  loc_1265809: var_A8 = MemVar_1F920B4 & "\"
  loc_1265820: Call 0.Method_arg_1C (var_A8 & var_94 & ".RPT", var_BC, var_A0)
  loc_126582B: MemVar_1F921E4 = var_A0
  loc_1265854: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_126585C: Call 0.Method_arg_2C (var_110, var_8A)
  loc_126586A: Call 0.Method_arg_150 (var_A0)
  loc_1265874: Set var_90 = Nothing
  loc_1265888: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_1265890: Call 0.Method_arg_24 (var_9A)
  loc_126589C: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_12658B5:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_12658BD:   Call 0.Method_arg_20 (var_A4)
  loc_12658C5:   Call 0.Method_arg_30 (var_A8)
  loc_12658DB:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_126590B:   If (var_13C = Ucase("ChkInDt")) Then
  loc_126591E:     Set var_A0 = Me.Txt
  loc_1265924:     Call 0.Method_Proc_100_40_1265C080 (CInt(1), var_A4)
  loc_126595C:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1265964:     Call 0.Method_arg_20 (var_148)
  loc_126596C:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_126598B:   Else
  loc_12659AD:     If (var_13C = Ucase("Company")) Then
  loc_12659C0:       Set var_A0 = Me.Txt
  loc_12659C6:       Call 0.Method_Proc_100_40_1265C080 (CInt(&HB), var_A4)
  loc_12659FE:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1265A06:       Call 0.Method_arg_20 (var_148)
  loc_1265A0E:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1265A2D:     Else
  loc_1265A4F:       If (var_13C = Ucase("AdltChld")) Then
  loc_1265A62:         Set var_A0 = Me.Txt
  loc_1265A68:         Call 0.Method_Proc_100_40_1265C080 (CInt(5), var_A4)
  loc_1265A97:         Set var_144 = Me.Txt
  loc_1265A9D:         Call 0.Method_Proc_100_40_1265C080 (CInt(6), var_148)
  loc_1265AD5:         Call 0.Method_arg_90 (var_18C, CLng(var_9A))
  loc_1265ADD:         Call 0.Method_arg_20 (var_190)
  loc_1265AE5:         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_1265B0E:       Else
  loc_1265B30:         If (var_13C = Ucase("RoomNo")) Then
  loc_1265B43:           Set var_A0 = Me.Txt
  loc_1265B49:           Call 0.Method_Proc_100_40_1265C080 (CInt(0), var_A4)
  loc_1265B81:           Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_1265B89:           Call 0.Method_arg_20 (var_148)
  loc_1265B91:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_1265BAD:         End If
  loc_1265BAD:       End If
  loc_1265BAD:     End If
  loc_1265BAD:   End If
  loc_1265BB0: Next var_12C 'Integer
  loc_1265BBA: Set var_A4 = Nothing
  loc_1265BD0: Set var_A0 = MemVar_1F921E4 
  loc_1265BDC: Proc_6_99_1483714(var_A0, 0, var_98)
  loc_1265BE7: MemVar_1F921E4 = var_A0
  loc_1265BF7: MemVar_1F921E4 = Nothing
  loc_1265BFB: Exit Sub
  loc_1265BFC: ' Referenced from: 12656BC
  loc_1265C01: Proc_6_60_E62BC4(0, &HFF)
  loc_1265C06: Exit Sub
End Sub

Public Sub Proc_100_41_1677E30
  'Data Table: 559750
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As String
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_D8 As Variant
  Dim var_104 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_DC As String
  Dim var_F4 As Variant
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_114 As Variant
  Dim var_124 As String
  Dim var_148 As Variant
  Dim var_138 As Variant
  Dim var_15C As Variant
  Dim var_174 As TextBox
  Dim unk_559754 As Connection15
  Dim var_8C As Recordset15
  Dim var_134 As Variant
  Dim var_16C As Variant
  Dim var_14C As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_170 As Variant
  Dim var_90 As Recordset15
  Dim var_1F4 As Variant
  Dim var_224 As Variant
  Dim Me As Variant
  loc_16766C8: Set var_88 = New 
  loc_16766D1: global_128 = vbNullString
  loc_16766DB: global_132 = vbNullString
  loc_16766E9: global_136 = CDate(CDbl(1))
  loc_16766F3: Set var_94 = Me.LblCompany
  loc_16766F9: Me.LblCompany.Caption = vbNullString
  loc_1676727: Me.LblBillNo.Caption = "Bill # " & CStr(Me.TXT_GNAME.Text)
  loc_167675A: var_D8 = Me.TXT_GNAME.BoundText
  loc_1676781: var_A8 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOccDet.ChkInDT as ChkInDate, RoomOccDet.ChkInTM As ChkInTime, RoomOccDet.ChkOutDT As ChkOutDate, RoomOccDet.ChkOutTM As ChkOutTime, RoomOccDet.DepDate, RoomOccDet.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme,GuestFolio.TravelAgent, TA.Name as TravelAgentName, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.FolioNO as FolioNo, RoomOccDet.RateCode, RoomOccDet.RoomRate, RoomOccDet.Adult AS OldADult, RoomOccDet.Children AS OldChild, RoomOccDet.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat," & "GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, GuestProf.PicPath,GUESTSTAT.NAME AS STATUSNAME,RoomOccDet.Docid "
  loc_1676788: var_AC = var_A8 & "FROM (((((RoomMast LEFT JOIN RoomOccDet ON RoomMast.Code = RoomOccDet.RoomNo) LEFT JOIN GuestFolio ON RoomOccDet.DocId = GuestFolio.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN RoomCat ON RoomOccDet.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS LEFT JOIN SubGroup TA ON GuestFolio.TravelAgent = TA.SubCode where (RoomMast.LOGSITE_CODE='"
  loc_16767A4: var_C0 = var_AC & MemVar_1F92078 & "' or RoomMast.LOGSITE_CODE='HO') and (RoomOccDet.LOGSITE_CODE='" & MemVar_1F92078 & "' or RoomOccDet.LOGSITE_CODE='HO') and RoomOccDet.Docid='"
  loc_16767B6: var_DC = var_C0 & CStr(Me.TXT_GNAME.BoundText) & "' and  RoomMast.type='RO' and RoomMAst.Code in (Select ISNULL(RoomNo,'') from RoomOccDet where RoomOccDet.Docid='"
  loc_16767CF: var_88.Open CVar(var_DC & CStr(var_D8) & "') Order by RoomMast.Code"), CVar(MemVar_1F92044), 2
  loc_1676835: If ((var_88.RecordCount = 0) Or ((var_88.EOF = &HFF) Or (var_88.BOF = &HFF))) Then
  loc_1676838:   Exit Sub
  loc_1676839: End If
  loc_1676861: var_A8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")), 3, -1)
  loc_167686E: Me.lblRoomNo.Caption = var_A8
  loc_16768B5: Me.lblRoomCat.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCatCode")), var_D8)
  loc_16768FD: Set var_110 = Me.Txt
  loc_1676903: Call 0.Method_Proc_100_41_1677E300 (CInt(&HA), var_114)
  loc_167690B: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FolioNo")), CVar(var_88.Fields.Item("FolioNo")))
  loc_1676955: Set var_110 = Me.Txt
  loc_167695B: Call 0.Method_Proc_100_41_1677E300 (CInt(&HA), var_114)
  loc_1676963: var_114.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")))
  loc_167698E: var_B0 = var_88.Fields.Item("ChkInDate")
  loc_16769AD: Set var_110 = Me.Txt
  loc_16769B3: Call 0.Method_Proc_100_41_1677E300 (CInt(1), var_114)
  loc_16769BB: var_114.Text = Proc_6_38_E68A98(CVar(var_B0))
  loc_16769DA: Set var_94 = Me.Txt
  loc_16769E0: Call 0.Method_Proc_100_41_1677E300 (CInt(1), var_B0)
  loc_1676A1A: Me.LblCheckInDay.Caption = CStr(Format(CVar(var_B0), "DDDD"))
  loc_1676A82: Set var_110 = Me.Txt
  loc_1676A88: Call 0.Method_Proc_100_41_1677E300 (CInt(2), var_114, CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChkInTime")), 1)), 2)))
  loc_1676A90: var_114.Text = 1
  loc_1676AE1: var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChkInTime")))) 'String
  loc_1676AFE: Set var_110 = Me.Txt
  loc_1676B04: Call 0.Method_Proc_100_41_1677E300 (CInt(3), var_114)
  loc_1676B0C: var_114.Text = CStr(Right(var_D8, 2))
  loc_1676B63: Set var_110 = Me.Txt
  loc_1676B69: Call 0.Method_Proc_100_41_1677E300 (CInt(9), var_114)
  loc_1676B71: var_114.Tag = CStr(var_88.Fields.Item("GuestCode").Value)
  loc_1676BC0: Set var_110 = Me.Txt
  loc_1676BC6: Call 0.Method_Proc_100_41_1677E300 (CInt(9), var_114)
  loc_1676BCE: var_114.Text = CStr(var_88.Fields.Item("GuestName").Value)
  loc_1676C1A: Set var_110 = Me.Txt
  loc_1676C20: Call 0.Method_Proc_100_41_1677E300 (CInt(&HB), var_114)
  loc_1676C28: var_114.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("companyCode")))
  loc_1676C72: Set var_110 = Me.Txt
  loc_1676C78: Call 0.Method_Proc_100_41_1677E300 (CInt(&HB), var_114)
  loc_1676C80: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyName")))
  loc_1676CCA: Set var_110 = Me.Txt
  loc_1676CD0: Call 0.Method_Proc_100_41_1677E300 (CInt(&H16), var_114)
  loc_1676CD8: var_114.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TravelAgent")))
  loc_1676D22: Set var_110 = Me.Txt
  loc_1676D28: Call 0.Method_Proc_100_41_1677E300 (CInt(&H16), var_114)
  loc_1676D30: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TravelAgentName")))
  loc_1676D7A: Set var_110 = Me.Txt
  loc_1676D80: Call 0.Method_Proc_100_41_1677E300 (CInt(&HC), var_114)
  loc_1676D88: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GuestStatus")))
  loc_1676DC2: Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("OldAdult")))
  loc_1676DD9: Set var_110 = Me.Txt
  loc_1676DDF: Call 0.Method_Proc_100_41_1677E300 (CInt(5), var_114)
  loc_1676DE7: var_114.Text = CStr(var_D8)
  loc_1676E25: Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("OldChild")))
  loc_1676E3C: Set var_110 = Me.Txt
  loc_1676E42: Call 0.Method_Proc_100_41_1677E300 (CInt(6), var_114)
  loc_1676E4A: var_114.Text = CStr(var_D8)
  loc_1676E98: Set var_110 = Me.Txt
  loc_1676E9E: Call 0.Method_Proc_100_41_1677E300 (CInt(7), var_114)
  loc_1676EA6: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateCode")))
  loc_1676EE0: Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("RoomRate")))
  loc_1676EF7: Set var_110 = Me.Txt
  loc_1676EFD: Call 0.Method_Proc_100_41_1677E300 (CInt(8), var_114)
  loc_1676F05: var_114.Text = CStr(var_D8)
  loc_1676F53: Set var_110 = Me.Txt
  loc_1676F59: Call 0.Method_Proc_100_41_1677E300 (CInt(4), var_114)
  loc_1676F61: var_114.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCatCode")))
  loc_1676FAB: Set var_110 = Me.Txt
  loc_1676FB1: Call 0.Method_Proc_100_41_1677E300 (CInt(4), var_114)
  loc_1676FB9: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat")))
  loc_1677003: Set var_110 = Me.Txt
  loc_1677009: Call 0.Method_Proc_100_41_1677E300 (CInt(&HC), var_114)
  loc_1677011: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("STATUSNAME")))
  loc_167705B: Set var_110 = Me.Txt
  loc_1677061: Call 0.Method_Proc_100_41_1677E300 (CInt(&H12), var_114)
  loc_1677069: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments1")))
  loc_16770B3: Set var_110 = Me.Txt
  loc_16770B9: Call 0.Method_Proc_100_41_1677E300 (CInt(&H11), var_114)
  loc_16770C1: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments2")))
  loc_167710B: Set var_110 = Me.Txt
  loc_1677111: Call 0.Method_Proc_100_41_1677E300 (CInt(&H10), var_114)
  loc_1677119: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Comments3")))
  loc_167716E: Set var_110 = Me.Txt
  loc_1677174: Call 0.Method_Proc_100_41_1677E300 (CInt(&H13), var_114)
  loc_167717C: var_114.Text = Proc_6_38_E68A98(Trim(CVar(var_88.Fields.Item("Add1"))))
  loc_16771D5: Set var_110 = Me.Txt
  loc_16771DB: Call 0.Method_Proc_100_41_1677E300 (CInt(&H14), var_114)
  loc_16771E3: var_114.Text = Proc_6_38_E68A98(Trim(CVar(var_88.Fields.Item("Add2"))))
  loc_167724F: var_114 = var_88.Fields.Item("StateName")
  loc_1677276: var_BC = global_136 & Proc_6_38_E68A98(Trim(CVar(var_114)), Proc_6_38_E68A98(Trim(CVar(var_88.Fields.Item("CityName")))) & ",") & ","
  loc_1677290: var_14C = var_88.Fields.Item("CountryName")
  loc_16772BE: Set var_170 = Me.Txt
  loc_16772C4: Call 0.Method_Proc_100_41_1677E300 (CInt(&H15), var_174)
  loc_16772CC: var_174.Text = var_BC & Proc_6_38_E68A98(Trim(CVar(var_14C)))
  loc_1677334: Set var_110 = Me.Txt
  loc_167733A: Call 0.Method_Proc_100_41_1677E300 (CInt(&HD), var_114)
  loc_1677342: var_114.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChkOutDate")))
  loc_16773A6: Set var_110 = Me.Txt
  loc_16773AC: Call 0.Method_Proc_100_41_1677E300 (CInt(&HF), var_114)
  loc_16773B4: var_114.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChkOutTime")))), 2))
  loc_16773E9: var_B0 = var_88.Fields.Item("ChkOutTime")
  loc_1677413: var_A8 = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_B0))), 2))
  loc_1677422: Set var_110 = Me.Txt
  loc_1677428: Call 0.Method_Proc_100_41_1677E300 (CInt(&HE), var_114)
  loc_1677430: var_114.Text = var_A8
  loc_167745C: Set var_94 = Me.Txt
  loc_1677462: Call 0.Method_Proc_100_41_1677E300 (CInt(0), var_B0)
  loc_167746A: var_B0.Text = vbNullString
  loc_1677494: Set var_94 = Me.Txt
  loc_167749A: Call 0.Method_Proc_100_41_1677E300 (CInt(&HA), var_B0, var_A8, "Select distinct Paytype,CompCode from paycharge where MOdeSet='S' and FolioNoDocid='")
  loc_16774A2: var_A4 = var_B0.Tag
  loc_16774AB: var_AC = -1 & var_A8
  loc_16774BB: unk_559754.Execute Proc_6_38_E68A98(CVar(var_B0)) & "'", var_110, 
  loc_16774C6: Set var_8C = var_110
  loc_16774FC: Set var_94 = Me.Txt
  loc_1677502: Call 0.Method_Proc_100_41_1677E300 (CInt(&HA), var_B0, var_A8, "Select U_AE,U_Entdt,U_Name from paycharge where MOdeSet='S' and FolioNoDocid='")
  loc_167750A: var_A4 = var_B0.Tag
  loc_1677513: var_AC = -1 & var_A8
  loc_1677523: unk_559754.Execute Proc_6_38_E68A98(CVar(var_B0)) & "'", var_110, 
  loc_167752E: Set var_90 = var_110
  loc_1677546: ' Referenced from: 1677A73
  loc_167754C: var_10A = var_8C.EOF
  loc_1677555: If Not(var_10A) Then
  loc_167755E:   var_108 = var_8C.AbsolutePosition
  loc_167756C:   If (var_108 = 1) Then
  loc_1677586:     var_B0 = var_8C.Fields.Item("PayType")
  loc_16775A5:     Set var_110 = Me.Txt
  loc_16775AB:     Call 0.Method_Proc_100_41_1677E300 (CInt(0), var_114)
  loc_16775B3:     var_114.Text = Proc_6_38_E68A98(CVar(var_B0))
  loc_16775CA:   Else
  loc_16775D5:     Set var_94 = Me.Txt
  loc_16775DB:     Call 0.Method_Proc_100_41_1677E300 (CInt(0))
  loc_16775F7:     var_F4 = (Trim(CVar(var_B0)) + ",")
  loc_167761A:     var_134 = CVar(var_8C.Fields.Item("PayType")) 'Address
  loc_1677626:     var_16C = (var_B0 + CVar(Proc_6_38_E68A98(var_134, Right(CVar(Proc_6_38_E68A98(CVar(var_B0))), 2))))
  loc_1677639:     Set var_138 = Me.Txt
  loc_167763F:     Call 0.Method_Proc_100_41_1677E300 (CInt(0), var_14C)
  loc_1677647:     var_14C.Text = CStr(Trim(CVar(var_14C)))
  loc_1677669:   End If
  loc_16776B7:   var_114 = var_8C.Fields.Item("PayType")
  loc_16776D1:   var_15C = (var_8C.Fields.Item("PayType").Value = "Company") Or (var_114.Value = "Member")
  loc_167772B:   unk_559754.Execute CStr("Select Name From Subgroup where Subcode='" & var_8C.Fields.Item("CompCode").Value & "'"), var_1F4, -1
  loc_1677733:   var_170 = var_170.RecordCount
  loc_1677770:   If CBool(var_108 And (var_108 > 0)) Then
  loc_1677779:     var_194 = 0
  loc_16777D5:     unk_559754.Execute CStr("Select Name From Subgroup where Subcode='" & var_8C.Fields.Item("CompCode").Value & "'"), var_134, -1
  loc_16777DD:     var_110 = var_110.Fields
  loc_16777E5:     var_194 = var_114.Item(var_114)
  loc_16777ED:     var_138 = var_138.Value
  loc_1677803:     Me.LblCompany.Caption = CStr(var_15C)
  loc_167782B:   End If
  loc_16778A9:   var_15C = IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : ")
  loc_16778FE:   var_1F4 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_Name")), IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE")), var_15C) = "A"), "Created By : ", var_15C))) 'String
  loc_1677913:   Me.LblUser.Caption = CStr(var_15C & var_1F4)
  loc_16779A1:   var_194 = "entdt : "
  loc_16779EE:   var_1B4 = IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_AE"))) = "E"), "Last Update : ", var_194))
  loc_1677A33:   Me.LblLDt.Caption = CStr(var_1B4 & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("U_EntDt")))))
  loc_1677A6E:   var_8C.MoveNext
  loc_1677A73:   GoTo loc_1677546
  loc_1677A76: End If
  loc_1677A85: var_94 = var_88.Fields
  loc_1677A9E: var_184 = IsNull(CVar(var_94.Item("PicPath")))
  loc_1677AA5: var_124 = "PicPath"
  loc_1677AD0: var_148 = vbNullString
  loc_1677AF2: If CBool(var_184 Or (Trim(CVar(var_88.Fields.Item(var_124))) = var_148)) Then
  loc_1677B13:   Me.Global.LoadPicture var_104, var_124, var_148, var_184, var_194
  loc_1677B28:   Me.GuestImage.Picture = var_94
  loc_1677B41:   Me.GuestImage.Tag = vbNullString
  loc_1677B4C: Else
  loc_1677B7A:   var_148 = "PicPath"
  loc_1677BC0:   var_124 = "DAT"
  loc_1677BE8:   var_184 = "AVI"
  loc_1677BF2:   var_224 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_124) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_148))), 3)) = var_184)
  loc_1677C12:   If CBool(var_224) Then
  loc_1677C21:     Me.GuestImage.Visible = False
  loc_1677C2C:   Else
  loc_1677C64:     Me.GuestImage.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_1677C81:     var_104 = "PicPath"
  loc_1677C95:     var_B0 = var_88.Fields.Item(var_104)
  loc_1677CB2:     Call 0.Method_Proc_100_41_1677E304 (CStr(var_B0.Value), var_10A)
  loc_1677CC7:     If var_10A Then
  loc_1677CE4:       Set var_94 = Me.GuestImage
  loc_1677CFC:       Me.Global.LoadPicture CVar(Me.GuestImage.Tag), var_104, var_124, var_148, var_184
  loc_1677D11:       Me.GuestImage.Picture = var_B0
  loc_1677D26:       Set var_94 = Me.GuestImage
  loc_1677D2C:       var_94.Refresh
  loc_1677D37:     Else
  loc_1677D55:       Me.Global.LoadPicture var_104, var_124, var_148, var_184, var_194
  loc_1677D6A:       Me.GuestImage.Picture = var_94
  loc_1677D76:     End If
  loc_1677D76:   End If
  loc_1677D76: End If
  loc_1677D7A: Set var_94 = Me.TXT_GNAME
  loc_1677D80: var_A4 = var_94.BoundText
  loc_1677DA5: Set var_B0 = Me.QrImage
  loc_1677DB2: Proc_348_21_12A7B74(CStr(var_A4), var_B0, global_128, global_132, global_136)
  loc_1677DC6: Call Proc_100_49_FD29C0(var_A4, var_94)
  loc_1677DCB: Call Proc_100_38_13C2D2C(var_B0)
  loc_1677DD0: Call Proc_100_42_1448DCC(var_94)
  loc_1677E11: If (Proc_6_38_E68A98(CVar(Me.Fields.Item("BillAmendMode"))) = "Advanced") Then
  loc_1677E17:   Call Proc_100_47_F00660(var_22C)
  loc_1677E22:   global_104 = var_22C
  loc_1677E25: End If
  loc_1677E2A: Set var_88 = Nothing
  loc_1677E2D: Exit Sub
End Sub

Public Sub Proc_100_42_1448DCC
  'Data Table: 559750
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_A4 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim unk_559754 As Connection15
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_1A4 As Variant
  Dim var_174 As Variant
  Dim var_1B4 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_18E As Integer
  Dim var_188 As Field20
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_1F0 As Variant
  loc_14482C4: On Error Goto loc_1448D65
  loc_14482D2: Set var_A0 = Me.Txt
  loc_14482D8: Call 0.Method_Proc_100_42_1448DCC0 (CInt(&HA))
  loc_1448301: If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_1448304:   Exit Sub
  loc_1448305: End If
  loc_1448320: var_E4 = CVar("Select * from paycharge where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (ContraDocId is NULL or contradocid='') and folionodocid='") 'String
  loc_1448331: Set var_A0 = Me.Txt
  loc_1448337: Call 0.Method_Proc_100_42_1448DCC0 (CInt(&HA), var_A4, var_EC, var_E4)
  loc_144833F: var_184 = var_A4.Tag
  loc_1448355: var_FC = -1 & Trim(CVar(var_EC)) 
  loc_144838E: unk_559754.Execute CStr(var_FC & "' and Bill_no='" & CVar(CStr(Me.TXT_GNAME.defText)) & "'  order by vDate,VNO,SNO"), var_188, var_A4
  loc_1448399: Set var_8C = var_188
  loc_14483CE: var_18C = Me.Recordset15.RecordCount
  loc_14483DC: var_D4 = CVar((var_18C + 2)) 'Long
  loc_14483EB: Me.FGrid.Rows = "' and Bill_no='"
  loc_1448400: Set var_A0 = Me.FGrid
  loc_1448406: var_A0.Row = 1
  loc_144840E: ' Referenced from: 1448BB2
  loc_1448420: If Not(Me.var_A0.EOF) Then
  loc_1448427:   Set var_194 = Me.FGrid
  loc_1448434:   var_C4 = Me.FGrid.Row
  loc_144843D:   var_150 = CVar(CLng(var_C4)) 'Long
  loc_1448475:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("VDate")), CVar(CLng(1)))) 'String
  loc_144847C:   LateIdCallSt
  loc_144849E:   var_C4 = Me.FGrid.Row
  loc_14484DF:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_C4)))) 'String
  loc_14484E6:   LateIdCallSt
  loc_1448527:   var_FC = Me.FGrid.Row
  loc_1448530:   var_174 = CVar(CLng(var_FC)) 'Long
  loc_1448538:   var_1B4 = CVar(CLng(3)) 'Long
  loc_1448565:   var_10C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_144856C:   LateIdCallSt
  loc_14485B1:   var_FC = Me.FGrid.Row
  loc_14485D6:   var_C4 = "0.00"
  loc_14485F6:   LateIdCallSt
  loc_1448642:   Proc_6_39_E7C810(var_C4, CVar(Me.var_FC.Fields.Item("AmtDr")), CVar(var_94), var_194, CVar(CStr(Format(CVar(Me.var_FC.Fields.Item("AmtCr")), var_C4))), 1, 1)
  loc_144864A:   var_E4 = (CVar(CLng(4)) + var_C4)
  loc_144864F:   var_94 = CSng(Format(CVar(Me.var_FC.Fields.Item("AmtCr")), var_C4))
  loc_144868E:   Proc_6_39_E7C810(var_C4, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_FC)))
  loc_1448696:   var_E4 = (var_194 + var_C4)
  loc_144869B:   var_9C = CSng(Format(CVar(Me.var_FC.Fields.Item("AmtCr")), var_C4))
  loc_14486BD:   var_174 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14486C5:   var_1B4 = CVar(CLng(5)) 'Long
  loc_14486E7:   var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_14486F7:   var_10C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_14486FE:   LateIdCallSt
  loc_1448722:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_1448738:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1448740:     var_174 = CVar(CLng(6)) 'Long
  loc_1448745:     var_1B4 = "Dr"
  loc_144874E:     LateIdCallSt
  loc_144875F:   Else
  loc_144876B:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_1448781:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1448789:       var_174 = CVar(CLng(6)) 'Long
  loc_144878E:       var_1B4 = "Cr"
  loc_1448797:       LateIdCallSt
  loc_14487A8:     Else
  loc_14487BB:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14487C3:       var_174 = CVar(CLng(6)) 'Long
  loc_14487C8:       var_1B4 = vbNullString
  loc_14487D1:       LateIdCallSt
  loc_14487DF:     End If
  loc_14487DF:   End If
  loc_14487E9:   var_C4 = Me.FGrid.Row
  loc_1448802:   var_D4 = "DocID"
  loc_144882A:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item(var_D4)), CVar(CLng(7)), CVar(CLng(var_C4)), var_194, var_1B4, var_174, var_D4)) 'String
  loc_1448831:   LateIdCallSt
  loc_1448853:   var_C4 = Me.FGrid.Row
  loc_1448894:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_C4)), var_194, var_E4, var_194)) 'String
  loc_144889B:   LateIdCallSt
  loc_14488BD:   var_C4 = Me.FGrid.Row
  loc_1448905:   LateIdCallSt
  loc_1448948:   var_18E = IsNull(CVar(Me.Recordset15.Fields.Item("Split")))
  loc_144897F:   var_184 = Me.FGrid.Row
  loc_14489C0:   var_140 = CVar(Proc_6_38_E68A98(CVar(Me.var_184.Fields.Item("Split")), CVar(CLng(&HA)), CVar(CLng(var_184)), var_18E, var_194, CVar(Proc_6_38_E68A98(CVar(Me.Me.Recordset15.Fields.Item("Split").Value.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(Me.Recordset15.Fields.Item("Split").Value)), var_194, var_E4)))) 'String
  loc_1448A00:   LateIdCallSt
  loc_1448A36:   var_C4 = Me.FGrid.Row
  loc_1448A77:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("PayCode")), CVar(CLng(&HB)), CVar(CLng(var_C4)), var_194, CVar(CStr(IIf(var_18E Or (Me.Recordset15.Fields.Item("Split").Value = vbNullString), "1", var_140))))) 'String
  loc_1448A7E:   LateIdCallSt
  loc_1448AA0:   var_C4 = Me.FGrid.Row
  loc_1448AE1:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("BillAmount")), CVar(CLng(&HD)), CVar(CLng(var_C4)), var_194, var_E4)) 'String
  loc_1448AE8:   LateIdCallSt
  loc_1448B0A:   var_C4 = Me.FGrid.Row
  loc_1448B4B:   var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.var_C4.Fields.Item("FixedChargeCode")), CVar(CLng(&HE)), CVar(CLng(var_C4)), var_194, var_E4)) 'String
  loc_1448B52:   LateIdCallSt
  loc_1448B6C:   Set var_194 = Nothing 
  loc_1448B89:   var_D4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1448B92:   Set var_A4 = Me.FGrid
  loc_1448B98:   var_A4.Row = "FixedChargeCode"
  loc_1448BAD:   Me.var_A4.MoveNext
  loc_1448BB2:   GoTo loc_144840E
  loc_1448BB5: End If
  loc_1448BC8: Me.FGrid.FixedRows = 1
  loc_1448BD4: Set var_234 = Me.Fgrid1
  loc_1448BD7: var_174 = 0
  loc_1448BE3: var_1B4 = CVar(CLng(1)) 'Long
  loc_1448C11: var_E4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_1448C18: LateIdCallSt
  loc_1448C29: var_174 = 0
  loc_1448C35: var_1B4 = CVar(CLng(2)) 'Long
  loc_1448C63: var_E4 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_1448C6A: LateIdCallSt
  loc_1448C7B: var_174 = 0
  loc_1448C87: var_1B4 = CVar(CLng(3)) 'Long
  loc_1448CA9: var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_1448CB9: var_FC = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1448CC0: LateIdCallSt
  loc_1448CD3: var_1C4 = 0
  loc_1448CDF: var_1F0 = CVar(CLng(4)) 'Long
  loc_1448CE9: var_C4 = vbNullString
  loc_1448D06: var_D4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_1448D0D: var_E4 = IIf(var_9C, "Cr", var_C4)
  loc_1448D1A: var_FC = "Dr"
  loc_1448D2C: var_1A4 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_1448D3C: var_120 = CVar(CStr(IIf(CVar(CLng(&HE)), var_FC, var_E4))) 'String
  loc_1448D43: LateIdCallSt
  loc_1448D60: Set var_234 = Nothing 
  loc_1448D64: Exit Sub
  loc_1448D65: ' Referenced from: 14482C4
  loc_1448D7E: MsgBox("FILL DETAILS", 0, var_C4, var_E4, var_FC)
  loc_1448DA4: Set var_A0 = Err()
  loc_1448DAA: Call 0.Method_arg_1C (var_18C, 0, var_C4, var_E4, var_FC, var_234, var_120, var_1F0)
  loc_1448DB6: MsgBox(CVar(var_18C), var_1C4, var_234, var_FC, 1)
  loc_1448DC9: Exit Sub
End Sub

Public Sub Proc_100_43_DFE064
  'Data Table: 559750
  loc_DFE05C: Call Proc_100_44_1A3B1EC()
  loc_DFE061: Exit Sub
  loc_DFE062:  = 
End Sub

Public Sub Proc_100_44_1A3B1EC
  'Data Table: 559750
  Dim var_110 As Variant
  Dim var_118 As String
  Dim unk_559754 As Connection15
  Dim var_E4 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_114 As String
  Dim var_88 As Variant
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_86 As Variant
  Dim var_178 As Variant
  Dim var_1C8 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2B4 As Variant
  Dim var_2C4 As Variant
  Dim var_2E4 As Variant
  Dim var_10C As Fields15
  Dim var_128 As Variant
  Dim var_12C As Fields15
  Dim var_320 As Variant
  Dim var_360 As Variant
  Dim var_408 As Variant
  Dim var_3F8 As Variant
  Dim var_418 As Variant
  Dim var_438 As Variant
  Dim var_518 As Variant
  Dim var_538 As Variant
  Dim var_5B0 As Variant
  Dim var_5D0 As Variant
  Dim var_6E0 As Variant
  Dim var_778 As Variant
  Dim var_7B8 As Variant
  Dim var_7D8 As Variant
  Dim var_820 As Variant
  Dim var_830 As Variant
  Dim var_898 As Variant
  Dim var_8F8 As Variant
  Dim var_3A0 As Variant
  Dim var_458 As Variant
  Dim var_4A0 As Variant
  Dim var_558 As Variant
  Dim var_610 As Variant
  Dim var_668 As Variant
  Dim var_720 As Variant
  Dim var_7F8 As Variant
  Dim var_938 As Variant
  Dim var_3C8 As Variant
  Dim var_4E8 As Variant
  Dim var_548 As Variant
  Dim var_788 As Variant
  Dim var_7E8 As Variant
  Dim var_8A8 As Variant
  Dim var_21C As String
  Dim var_244 As Variant
  Dim var_330 As Variant
  Dim var_600 As Variant
  Dim var_658 As Variant
  Dim var_8C8 As Variant
  Dim var_2A4 As Variant
  Dim var_B0 As Recordset15
  Dim var_CC As Double
  Dim var_D4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_DC As Double
  Dim var_224 As String
  Dim var_93C As String
  Dim var_940 As String
  Dim Me As Recordset15
  loc_1A37C78: On Error Goto loc_1A3B1D1
  loc_1A37C82: Close 1
  loc_1A37C8B: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_1A37CAD: Set var_10C = Me.Txt
  loc_1A37CB3: Call 0.Method_Proc_100_44_1A3B1EC0 (CInt(&HA), var_110, var_114, "Select Distinct Split,Bill_No from paycharge where (ContraDocId is NULL or contradocid='') and foliono=")
  loc_1A37CBB: var_128 = var_110.Text
  loc_1A37CC4: var_118 = -1 & var_114
  loc_1A37CCD: unk_559754.Execute var_118, var_12C, 0
  loc_1A37CD8: Set var_E4 = var_12C
  loc_1A37CEE: ' Referenced from: 1A3B120
  loc_1A37CFD: If Not(var_E4.EOF) Then
  loc_1A37D1E:   Set var_10C = Me.Txt
  loc_1A37D24:   Call 0.Method_Proc_100_44_1A3B1EC0 (CInt(&HA), var_110, var_114, "SELECT TOP 1 S.CONPREFIX+' '+S.CONPERSON AS ContactPerson,S.NAME AS cOMPANYnAME,GuestProf.Name, GuestProf.Add1, GuestProf.Add2, GuestProf.PhoneNo, GuestFolio.FolioNo, RoomOcc.RoomNo, RoomOcc.Adult, RoomOcc.Children, GuestProf.Nationality, GuestProf.CountryName, RoomOcc.RoomRate, GuestFolio.Vdate, GuestFolio.DepDate, RoomOcc.SNo, GuestProf.CityName, RoomCat.ShortName as RoomCategory FROM ((GuestProf LEFT JOIN (GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) ON GuestProf.Code = GuestFolio.GuestProf) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) left joIn Subgroup S on GuestFolio.Company=s.Subcode Where GuestFolio.FolioNo = ")
  loc_1A37D2C:   var_128 = var_110.Text
  loc_1A37D35:   var_118 = -1 & var_114
  loc_1A37D45:   unk_559754.Execute var_118 & " order by  RoomOcc.Sno Desc", var_12C, 
  loc_1A37D50:   Set var_B4 = var_12C
  loc_1A37D7C:   If (var_B4.RecordCount <= 0) Then
  loc_1A37D7F:     Exit Sub
  loc_1A37D80:   End If
  loc_1A37D86:   If (var_86 = 0) Then
  loc_1A37DB7:     var_A4 = Replace(CStr(Space(&H50)), " ", "-", 1, -1, 0)
  loc_1A37DC6:     var_88 = (var_88 + 1)
  loc_1A37DEA:     Print 1, Proc_6_98_11AC4E4(MemVar_1F92130, "A")
  loc_1A37E3F:     var_158 = (Trim(MemVar_1F92134) + ", ")
  loc_1A37E46:     var_188 = (var_158 + Trim(MemVar_1F92138))
  loc_1A37E4F:     var_1A8 = (var_188 + " ")
  loc_1A37E56:     var_1D8 = (var_1A8 + Trim(MemVar_1F9213C))
  loc_1A37E5F:     var_1F8 = (var_1D8 + " ")
  loc_1A37E69:     var_218 = (var_1F8 + CVar(MemVar_1F9215C))
  loc_1A37E82:     Print 1, Proc_6_98_11AC4E4(CStr(var_218), "B", &H4E)
  loc_1A37EDF:     Print 1, Proc_6_98_11AC4E4("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "D", &H7D)
  loc_1A37F12:     var_21C = Proc_6_98_11AC4E4("Website: " & "www.kumaonindia.com * www.himalaya-holidays.com * www.indiatravelplan.com", "D", &H7D)
  loc_1A37F1D:     Print 1, "D"
  loc_1A37F55:     Print 1, Proc_6_98_11AC4E4("PROVISIONAL GUEST BILL", "B", &H4E)
  loc_1A37F6B:     Print 1, var_A4
  loc_1A37F73:     var_86 = &HC
  loc_1A37FF0:     var_178 = (Chr(&HF) + CVar(Proc_6_45_EAD428("Guest Name :", &H3C, var_86)))
  loc_1A37FF9:     var_188 = (Trim(MemVar_1F92138) + "|")
  loc_1A38000:     var_1C8 = (var_188 + Space(2))
  loc_1A38009:     var_1D8 = (Trim(MemVar_1F9213C) + "Room #")
  loc_1A38010:     var_218 = (var_1D8 + Space(&HA))
  loc_1A38019:     var_234 = (var_218 + "Reg #")
  loc_1A38020:     var_254 = (var_234 + Space(&HA))
  loc_1A38029:     var_264 = (var_254 + "Pax")
  loc_1A38030:     var_284 = (var_264 + Space(&HB))
  loc_1A38039:     var_294 = (var_284 + "Type")
  loc_1A38040:     var_2B4 = (var_294 + Space(&HA))
  loc_1A38049:     var_2C4 = (var_2B4 + "Nation")
  loc_1A38050:     var_2E4 = (var_2C4 + Chr(&H12))
  loc_1A38056:     Print 1, var_2E4
  loc_1A3815F:     var_284 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A381E0:     var_360 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A3823A:     var_418 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A382BB:     var_518 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A38315:     var_5D0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A383A2:     var_6E0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A38413:     var_7B8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A384CD:     var_8F8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A384FB:     var_188 = (CVar(" Mr " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Name")), &H4E), &H1F) & "|") + Space(1))
  loc_1A38502:     var_1F8 = (var_188 + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))))
  loc_1A38509:     var_234 = (Space(&HA) + Space(3))
  loc_1A38510:     var_2B4 = (var_234 + Space(CLng((var_284 / 2))))
  loc_1A3851C:     var_2E4 = (var_2B4 + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A38523:     var_3A0 = (var_2E4 + Space(CLng((var_360 / 2))))
  loc_1A3852A:     var_458 = (var_3A0 + Space(CLng((var_418 / 2))))
  loc_1A38536:     var_4A0 = (var_458 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A3853D:     var_558 = (var_4A0 + Space(CLng((var_518 / 2))))
  loc_1A38544:     var_610 = (var_558 + Space(CLng((var_5D0 / 2))))
  loc_1A3854B:     var_668 = (var_610 + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A38552:     var_720 = (var_668 + Space(CLng((var_6E0 / 2))))
  loc_1A38559:     var_7F8 = (var_720 + Space(CLng((var_7B8 / 2))))
  loc_1A38560:     var_860 = (var_7F8 + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A38567:     var_938 = (var_860 + Space(CLng((var_8F8 / 2))))
  loc_1A3856D:     Print 1, var_938
  loc_1A386B4:     var_1A8 = CVar(vbNullString & Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A386BA:     var_1C8 = (var_1A8 + Left(var_A4, &H2C))
  loc_1A386C0:     Print 1, CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))
  loc_1A3876B:     var_2A4 = Chr(&H12)
  loc_1A3877A:     var_178 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A38780:     var_188 = (var_178 + Chr(&HF))
  loc_1A38787:     var_1C8 = (Left(var_A4, &H2C) + Space(2))
  loc_1A38790:     var_1D8 = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")))) + "R.Rate")
  loc_1A38797:     var_218 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) + Space(&HE))
  loc_1A387A0:     var_234 = (Space(3) + "Arrival")
  loc_1A387A7:     var_254 = (var_234 + Space(&HD))
  loc_1A387B0:     var_264 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A387B7:     var_284 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A387C0:     var_294 = (var_284 + " Bill # ")
  loc_1A387C7:     var_2B4 = ((var_284 / 2) + var_2A4)
  loc_1A387CD:     Print 1, var_2B4
  loc_1A3881F:     var_110 = var_B4.Fields.Item("CityName")
  loc_1A3884B:     var_93C = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_110)) & "-", &H23)
  loc_1A38862:     var_12C = var_B4.Fields
  loc_1A38879:     Proc_6_39_E7C810(var_178, CVar(var_12C.Item("RoomRate")))
  loc_1A38895:     var_1D8 = (6 - Len(Trim(CVar(CStr(var_178)))))
  loc_1A388D2:     Proc_6_39_E7C810(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A38902:     Proc_6_39_E7C810(var_2A4, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3891E:     var_2E4 = (10 - Len(Trim(CVar(CStr(var_2A4)))))
  loc_1A38951:     var_408 = 12
  loc_1A38965:     var_360 = "dd/mm/yy"
  loc_1A3898C:     var_3C8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), var_360))))
  loc_1A38A23:     var_4A0 = Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy")
  loc_1A38A3A:     var_4E8 = (1 - Len(Trim(var_4A0)))
  loc_1A38AA8:     var_5B0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A38B56:     var_6E0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A38BAC:     var_788 = (12 - Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1, 12, 1, 1, 1)))))
  loc_1A38C3E:     var_898 = (1 - Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1)))))
  loc_1A38C6C:     var_244 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))))
  loc_1A38C78:     var_284 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A38C7F:     var_330 = (var_284 + Space(CLng((var_2E4 / 2))))
  loc_1A38C86:     var_3F8 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A38C8D:     var_458 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A38C94:     var_538 = (var_458 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A38C9B:     var_600 = ((Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A38CA2:     var_658 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A38CA9:     var_720 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E0 / 2))))
  loc_1A38CB0:     var_7D8 = (var_720 + Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))))
  loc_1A38CB7:     var_830 = ((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2) + Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 1, 12))))
  loc_1A38CBE:     var_8C8 = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) + Space(CLng((CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))) / 2))))
  loc_1A38CC4:     Print 1, Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))
  loc_1A38DA6:     Print 1, Proc_6_45_EAD428(" ", &H23) & "|"
  loc_1A38DBC:     Print 1, var_A4
  loc_1A38DCA:     var_114 = "Date"
  loc_1A38DE0:     var_128 = Space(1)
  loc_1A38E83:     var_178 = (CVar(Proc_6_45_EAD428(var_114, &HB)) + var_128)
  loc_1A38E8D:     var_1A8 = (var_178 + CVar(Proc_6_45_EAD428("Bill/Vou#", 9)))
  loc_1A38E94:     var_1D8 = (Trim(CVar(CStr(var_178))) + Space(1))
  loc_1A38E9E:     var_218 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) + CVar(Proc_6_45_EAD428("Description", &H18)))
  loc_1A38EA8:     var_244 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + CVar(Proc_6_52_EAD4F4("Debit", &HA)))
  loc_1A38EAF:     var_264 = (Space(&HD) + Space(1))
  loc_1A38EB9:     var_284 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAD4F4("Credit", &HA)))
  loc_1A38EC0:     var_2A4 = (var_284 + Space(1))
  loc_1A38ECA:     var_2C4 = (var_2A4 + CVar(Proc_6_52_EAD4F4("Balance", &HB)))
  loc_1A38ED0:     Print 1, Trim(CVar(CStr(var_2A4)))
  loc_1A38F1F:     Print 1, var_A4
  loc_1A38F27:     var_86 = &H17
  loc_1A38F2A:   End If
  loc_1A38F48:   Set var_10C = Me.Txt
  loc_1A38F4E:   Call 0.Method_Proc_100_44_1A3B1EC0 (CInt(&HA), var_110, var_114, "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=", var_128)
  loc_1A38F56:   -1 = var_110.Text
  loc_1A38F6F:   unk_559754.Execute var_12C & var_114 & " order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_86, 1
  loc_1A38F7A:   Set var_B0 = var_12C
  loc_1A38F92:   ' Referenced from: 1A3AA88
  loc_1A38FA1:   If Not(var_B0.EOF) Then
  loc_1A38FDE:     If (var_DC <> CDate(var_B0.Fields.Item("VDate").Value)) Then
  loc_1A38FF5:       If (var_B0.AbsolutePosition > 1) Then
  loc_1A38FFF:         var_CC = (var_BC - var_C4)
  loc_1A39009:         var_D4 = (var_D4 + var_CC)
  loc_1A39094:         var_1F8 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1)))
  loc_1A3910B:         var_294 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, 1)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A39161:         var_178 = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18)))
  loc_1A39168:         var_218 = (var_178 + var_1F8)
  loc_1A3916F:         var_244 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + Space(1))
  loc_1A39176:         var_2A4 = (Space(&HD) + var_294)
  loc_1A3917D:         var_2C4 = (var_2A4 + Space(1))
  loc_1A39187:         var_320 = (Trim(CVar(CStr(var_2A4))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A3918D:         Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A391EB:         var_86 = (var_86 + 1)
  loc_1A391F3:         Print 1, vbNullString
  loc_1A391FF:         var_86 = (var_86 + 1)
  loc_1A39205:         var_BC = CDbl(0)
  loc_1A3920B:         var_C4 = CDbl(0)
  loc_1A3920E:       End If
  loc_1A3920E:     End If
  loc_1A39253:     var_158 = Space(1)
  loc_1A392B1:     Proc_6_39_E7C810(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))), CVar(var_B0.Fields.Item("VNo")))
  loc_1A392DD:     var_264 = (CVar(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B0.Fields.Item("vType")), var_86, 1)))) & "/") + Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))))))
  loc_1A39366:     Proc_6_39_E7C810(Space(CLng((Format(var_D4, "0.00") / 2))), CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A393A7:     Proc_6_39_E7C810(var_360, CVar(var_B0.Fields.Item("AmtDr")))
  loc_1A393FF:     var_3E8 = IIf((Space(CLng((Format(var_D4, "0.00") / 2))) = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_360, "0.00")), &HA, 1)))
  loc_1A39437:     Proc_6_39_E7C810(var_458, CVar(var_B0.Fields.Item("AmtCr")), 1)
  loc_1A39478:     Proc_6_39_E7C810(var_4A0, CVar(var_B0.Fields.Item("AmtCr")))
  loc_1A394CF:     var_538 = IIf((var_458 = 0), CVar(Proc_6_52_EAD4F4(vbNullString, &HA)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_4A0, "0.00")), &HA, 1)))
  loc_1A394DD:     var_188 = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_158)
  loc_1A394E7:     var_284 = ("0.00" + CVar(Proc_6_45_EAD428(CStr(Format(var_C4, "0.00")), 9)))
  loc_1A394EE:     var_2A4 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A394F8:     var_2E4 = (var_2A4 + CVar(Proc_6_45_EAD428(CStr(Left(CVar(var_B0.Fields.Item("Comments")), &H18)), &H18)))
  loc_1A394FF:     var_3F8 = (Format(var_D4, "0.00") + var_3E8)
  loc_1A39506:     var_438 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Space(1))
  loc_1A3950D:     var_548 = ("dd/mm/yy" + var_538)
  loc_1A39513:     Print 1, CVar(var_B4.Fields.Item("DepDate"))
  loc_1A395B4:     var_86 = (var_86 + 1)
  loc_1A395E4:     Proc_6_39_E7C810(var_158, CVar(var_B0.Fields.Item("AmtDr")), CVar(var_BC), var_86)
  loc_1A395EC:     var_178 = (1 + var_158)
  loc_1A395F1:     var_BC = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A3962D:     Proc_6_39_E7C810(var_158, CVar(var_B0.Fields.Item("AmtCr")), CVar(var_C4))
  loc_1A39635:     var_178 = (var_BC + var_158)
  loc_1A3963A:     var_C4 = CSng(CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)))
  loc_1A3969F:     If (var_B0.AbsolutePosition = var_B0.RecordCount) Then
  loc_1A396A9:       var_CC = (var_BC - var_C4)
  loc_1A396B3:       var_D4 = (var_D4 + var_CC)
  loc_1A396BB:       Print 1, vbNullString
  loc_1A396C7:       var_86 = (var_86 + 1)
  loc_1A39752:       var_1F8 = IIf((var_BC = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, CDate(var_B0.Fields.Item("VDate").Value))), CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_1A397C9:       var_294 = IIf((var_C4 = CDbl(0)), CVar(Proc_6_52_EAD4F4(vbNullString, &HA, var_C4)), CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)))
  loc_1A3981F:       var_178 = (Space(&H16) + CVar(Proc_6_45_EAD428("Day Total", &H18, var_86, var_D4, var_CC)))
  loc_1A39826:       var_218 = (CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) + var_1F8)
  loc_1A3982D:       var_244 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + Space(1))
  loc_1A39834:       var_2A4 = (Trim(CVar(CStr(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))))) + var_294)
  loc_1A3983B:       var_2C4 = (var_2A4 + Space(1))
  loc_1A39845:       var_320 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HB, 1, 1)))
  loc_1A3984B:       Print 1, Space(CLng((Format(var_D4, "0.00") / 2)))
  loc_1A398A9:       var_86 = (var_86 + 1)
  loc_1A398AF:       var_BC = CDbl(0)
  loc_1A398B5:       var_C4 = CDbl(0)
  loc_1A398B8:     End If
  loc_1A398BE:     If (var_86 >= &H30) Then
  loc_1A398C6:       Print 1, " "
  loc_1A398EA:       var_188 = CVar((Val(CStr(var_88)) + CDbl(1))) 'Double
  loc_1A398FE:       var_158 = (" " + Space(&H37))
  loc_1A39907:       var_178 = (CVar(Proc_6_45_EAD428("Day Total", &H18, var_86, var_D4, var_CC)) + "Continued Page No ")
  loc_1A39914:       Print 1, CVar(Proc_6_45_EAD428(CStr(var_B0.Fields.Item("VDate").Value), &HB, var_C4, var_BC, var_86)) & Str("0.00")
  loc_1A39932:       var_86 = (var_86 + 1)
  loc_1A39947:       Print 1, Chr(&HC)
  loc_1A39952:       var_86 = 0
  loc_1A39955:     End If
  loc_1A3995B:     If (var_86 = 0) Then
  loc_1A39964:       var_88 = (var_88 + 1)
  loc_1A3996D:       var_88 = (var_88 + 1)
  loc_1A39991:       Print 1, Proc_6_98_11AC4E4(MemVar_1F92130, "A", &H4E, var_88, var_88, var_86, var_86)
  loc_1A399E6:       var_158 = (Trim(MemVar_1F92134) + ", ")
  loc_1A399ED:       var_188 = (CVar(Proc_6_45_EAD428("Day Total", &H18, var_86, var_D4, var_CC)) + Trim(MemVar_1F92138))
  loc_1A399F6:       var_1A8 = ("0.00" + " ")
  loc_1A399FD:       var_1D8 = (Str("0.00") + Trim(MemVar_1F9213C))
  loc_1A39A06:       var_1F8 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + " ")
  loc_1A39A10:       var_218 = (var_1F8 + CVar(MemVar_1F9215C))
  loc_1A39A1E:       var_21C = Proc_6_98_11AC4E4(CStr(Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2)))), "B", &H4E, var_C4, var_BC)
  loc_1A39A29:       Print 1, var_21C
  loc_1A39A86:       Print 1, Proc_6_98_11AC4E4("Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144, "D", &H7D, var_86)
  loc_1A39AB9:       var_21C = Proc_6_98_11AC4E4("Website: " & "www.kumaonindia.com * www.himalaya-holidays.com * www.indiatravelplan.com", "D", &H7D)
  loc_1A39AC4:       Print 1, "D"
  loc_1A39ADA:       Print 1, var_A4
  loc_1A39AE2:       var_86 = &HC
  loc_1A39B5F:       var_178 = (Chr(&HF) + CVar(Proc_6_45_EAD428("Guest Name :", &H3C, var_86)))
  loc_1A39B68:       var_188 = (Trim(MemVar_1F92138) + "|")
  loc_1A39B6F:       var_1C8 = ("0.00" + Space(2))
  loc_1A39B78:       var_1D8 = (Trim(MemVar_1F9213C) + "Room #")
  loc_1A39B7F:       var_218 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)) + Space(&HA))
  loc_1A39B88:       var_234 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo"))))) / 2))) + "Reg #")
  loc_1A39B8F:       var_254 = (Space(1) + Space(&HA))
  loc_1A39B98:       var_264 = ("0.00" + "Pax")
  loc_1A39B9F:       var_284 = (Format(var_C4, "0.00") + Space(&HB))
  loc_1A39BA8:       var_294 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + "Type")
  loc_1A39BAF:       var_2B4 = (var_294 + Space(&HA))
  loc_1A39BB8:       var_2C4 = (Space(1) + "Nation")
  loc_1A39BBF:       var_2E4 = (Left(CVar(var_B0.Fields.Item("Comments")), &H18) + Chr(&H12))
  loc_1A39BC5:       Print 1, Format(var_D4, "0.00")
  loc_1A39CCE:       var_284 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A39D4F:       var_360 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))))
  loc_1A39DA9:       var_418 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A39E2A:       var_518 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))))
  loc_1A39E84:       var_5D0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A39F11:       var_6E0 = (9 - Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))))
  loc_1A39F82:       var_7B8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))))))
  loc_1A39F94:       var_7E8 = Space(CLng((Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) / 2)))
  loc_1A3A03C:       var_8F8 = (9 - Len(Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA))))))
  loc_1A3A06A:       var_188 = (CVar(" Mr " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Name")), 1), &H1F) & "|") + Space(1))
  loc_1A3A071:       var_1F8 = ("0.00" + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_D4))))
  loc_1A3A078:       var_234 = (Space(&HA) + Space(3))
  loc_1A3A07F:       var_2B4 = (Space(1) + Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2))))
  loc_1A3A08B:       var_2E4 = (Space(1) + CVar(CStr(var_B4.Fields.Item("FolioNo").Value)))
  loc_1A3A092:       var_3A0 = (Format(var_D4, "0.00") + Space(CLng((var_360 / 2))))
  loc_1A3A099:       var_458 = ((Space(CLng((Format(var_D4, "0.00") / 2))) = 0) + Space(CLng((Space(1) / 2))))
  loc_1A3A0A5:       var_4A0 = (var_458 + CVar(CStr(var_B4.Fields.Item("Adult").Value)))
  loc_1A3A0AC:       var_558 = (var_4A0 + Space(CLng((CVar(Proc_6_52_EAD4F4(CStr(Format(var_4A0, "0.00")), &HA, 1)) / 2))))
  loc_1A3A0B3:       var_610 = ("dd/mm/yy" + Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))))
  loc_1A3A0BA:       var_668 = (CVar(var_B4.Fields.Item("DepDate")) + Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))))
  loc_1A3A0C1:       var_720 = (CVar(var_B4.Fields.Item("DepDate")) + Space(CLng((var_6E0 / 2))))
  loc_1A3A0C8:       var_7F8 = (var_720 + var_7E8)
  loc_1A3A0CF:       var_860 = (CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 1, 12)) + Trim(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))
  loc_1A3A0D6:       var_938 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) + Space(CLng((var_8F8 / 2))))
  loc_1A3A0DC:       Print 1, var_938
  loc_1A3A223:       var_1A8 = CVar(vbNullString & Proc_6_45_EAD428(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add1")))))), &H23) & "|") 'String
  loc_1A3A229:       var_1C8 = (var_1A8 + Left(var_A4, &H2C))
  loc_1A3A22F:       Print 1, CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_D4))
  loc_1A3A2DA:       var_2A4 = Chr(&H12)
  loc_1A3A2E9:       var_178 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Add2"))), &H23) & "|") 'String
  loc_1A3A2EF:       var_188 = (var_178 + Chr(&HF))
  loc_1A3A2F6:       var_1C8 = (Left(var_A4, &H2C) + Space(2))
  loc_1A3A2FF:       var_1D8 = (CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_D4)) + "R.Rate")
  loc_1A3A306:       var_218 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) + Space(&HE))
  loc_1A3A30F:       var_234 = (Space(3) + "Arrival")
  loc_1A3A316:       var_254 = (Space(1) + Space(&HD))
  loc_1A3A31F:       var_264 = (CVar(CStr(var_B4.Fields.Item("FolioNo").Value)) + "Departure")
  loc_1A3A326:       var_284 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(&HA))
  loc_1A3A32F:       var_294 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + " Bill # ")
  loc_1A3A336:       var_2B4 = ((CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) / 2) + var_2A4)
  loc_1A3A33C:       Print 1, Space(1)
  loc_1A3A3BA:       var_224 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CityName"))) & "-", &H23)
  loc_1A3A3E8:       Proc_6_39_E7C810(var_178, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3A404:       var_1D8 = (6 - Len(Trim(CVar(CStr(var_178)))))
  loc_1A3A441:       Proc_6_39_E7C810(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))), CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3A471:       Proc_6_39_E7C810(var_2A4, CVar(var_B4.Fields.Item("RoomRate")))
  loc_1A3A48D:       var_2E4 = (10 - Len(Trim(CVar(CStr(var_2A4)))))
  loc_1A3A4C0:       var_408 = 12
  loc_1A3A4FB:       var_3C8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A3A5A9:       var_4E8 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))))
  loc_1A3A617:       var_5B0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A3A6C5:       var_6E0 = (1 - Len(Trim(Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))))
  loc_1A3A713:       var_778 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A3A798:       var_860 = (9 - Len(Trim(CVar(var_E4.Fields.Item("Bill_no")))))
  loc_1A3A7C6:       var_244 = (CVar(vbNullString & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName"))) & "|") + Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) / 2))))
  loc_1A3A7D2:       var_284 = (Space(&HD) + CVar(CStr(Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))))))
  loc_1A3A7D9:       var_330 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(CLng((Format(var_D4, "0.00") / 2))))
  loc_1A3A7E0:       var_3F8 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + Space(CLng((var_B4.Fields.Item("Adult").Value / 2))))
  loc_1A3A7E7:       var_458 = (Len(Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value)))) + Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"))
  loc_1A3A7EE:       var_538 = (var_458 + Space(CLng((Trim(CVar(CStr(var_B4.Fields.Item("Adult").Value))) / 2))))
  loc_1A3A7F5:       var_600 = ((CVar(Proc_6_52_EAD4F4(CStr(Format(Format(CVar(var_B4.Fields.Item("VDate")), "dd/mm/yy"), "0.00")), &HA, 1)) / 2) + Space(CLng((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2))))
  loc_1A3A7FC:       var_658 = (Space(CLng(((Len(Trim(CVar(CStr(var_B4.Fields.Item("RoomCategory").Value)))) / 2) / 2))) + Format(CVar(var_B4.Fields.Item("DepDate")), "dd/mm/yy"))
  loc_1A3A803:       var_720 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomCategory"))))) + Space(CLng((var_6E0 / 2))))
  loc_1A3A80A:       var_7B8 = (var_720 + Space(CLng((CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9))) / 2))))
  loc_1A3A811:       var_820 = (Space(CLng((Trim(CVar(CStr(Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), 9)))) / 2))) + Trim(CVar(CStr(var_E4.Fields.Item("Bill_no").Value))))
  loc_1A3A818:       var_8A8 = (CVar(var_B4.Fields.Item("CountryName")) + Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("Bill_no")), 9, 1))) / 2))))
  loc_1A3A81E:       Print 1, Left(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CountryName")))), &HA)
  loc_1A3A8FC:       Print 1, Proc_6_45_EAD428(" ", &H23, 1, 12, 1, 1, 1) & "|"
  loc_1A3A912:       Print 1, var_A4
  loc_1A3A9D9:       var_178 = (CVar(Proc_6_45_EAD428("Date", &HB, 12, 1)) + Space(1))
  loc_1A3A9E3:       var_1A8 = (var_178 + CVar(Proc_6_45_EAD428("Bill/Vou#", 9, 12)))
  loc_1A3A9EA:       var_1D8 = (Trim(CVar(CStr(var_178))) + Space(1))
  loc_1A3A9F4:       var_218 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) + CVar(Proc_6_45_EAD428("Description", &H18, 1)))
  loc_1A3A9FE:       var_244 = (Space(CLng((Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) / 2))) + CVar(Proc_6_52_EAD4F4("Debit", &HA)))
  loc_1A3AA05:       var_264 = (Space(&HD) + Space(1))
  loc_1A3AA0F:       var_284 = (Trim(CVar(CStr(var_B4.Fields.Item("FolioNo").Value))) + CVar(Proc_6_52_EAD4F4("Credit", &HA)))
  loc_1A3AA16:       var_2A4 = (CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1)) + Space(1))
  loc_1A3AA20:       var_2C4 = (var_2A4 + CVar(Proc_6_52_EAD4F4("Balance", &HB)))
  loc_1A3AA26:       Print 1, Trim(CVar(CStr(var_2A4)))
  loc_1A3AA75:       Print 1, var_A4
  loc_1A3AA7D:       var_86 = &H17
  loc_1A3AA80:     End If
  loc_1A3AA83:     var_B0.MoveNext
  loc_1A3AA88:     GoTo loc_1A38F92
  loc_1A3AA8B:     ' Referenced from: 1A3AAA8
  loc_1A3AA8B:   End If
  loc_1A3AA91:   If (var_86 <= &H32) Then
  loc_1A3AA99:     Print 1, vbNullString
  loc_1A3AAA5:     var_86 = (var_86 + 1)
  loc_1A3AAA8:     GoTo loc_1A3AA8B
  loc_1A3AAAB:   End If
  loc_1A3AAB0:   Print 1, var_A4
  loc_1A3AABC:   var_86 = (var_86 + 1)
  loc_1A3AAFF:   var_178 = IIf((var_D4 < CDbl(0)), CVar(Proc_6_45_EAD428("Refund: ", 8, var_86, var_86)), CVar(Proc_6_45_EAD428("Charge: ", 8, var_86)))
  loc_1A3AB93:   var_1A8 = (var_178 + CVar(Proc_6_45_EAD428(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise"), &H35)))
  loc_1A3AB9D:   var_1D8 = (Trim(CVar(CStr(var_178))) + CVar(Proc_6_45_EAD428("TOTAL:", 6)))
  loc_1A3ABA7:   var_244 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("RoomNo")), var_D4))) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A3ABAD:   Print 1, Space(&HD)
  loc_1A3ABEF:   var_86 = (var_86 + 1)
  loc_1A3AC6B:   var_1C8 = CVar(Proc_6_45_EAD428(CStr(Mid(CVar(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise")), &H36, var_178)), &H35, 1)) 'String
  loc_1A3AC98:   var_1F8 = (Space(8) + IIf((Len(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", var_1C8))
  loc_1A3AC9E:   Print 1, "0.00"
  loc_1A3ACD2:   var_86 = (var_86 + 1)
  loc_1A3AD3B:   var_178 = (Space(&H3D) + CVar(Proc_6_45_EAD428("NET  :", 6, var_86)))
  loc_1A3AD45:   var_1D8 = (var_178 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A3AD4B:   Print 1, IIf((Len(Proc_6_43_10041F4(Abs(var_D4), vbNullString, " & Paise", var_86)) <= &H35), " ", CVar(Proc_6_52_EAD4F4(CStr(Format(var_D4, "0.00")), &HC, 1)))
  loc_1A3AD73:   var_86 = (var_86 + 1)
  loc_1A3AD8B:   var_158 = (Space(&H3D) + "===================")
  loc_1A3AD91:   Print 1, CVar(Proc_6_45_EAD428("NET  :", 6, var_86))
  loc_1A3ADA4:   var_86 = (var_86 + 1)
  loc_1A3ADA9:   var_86 = 0
  loc_1A3AE27:   var_940 = Proc_6_45_EAD428("Payment ", 8, CDbl(0), var_86, var_86) & Proc_6_45_EAD428("Cash", &HC, var_86) & "Company: " & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("CompanyName")), 1)
  loc_1A3AE2C:   Print 1, var_940
  loc_1A3AEC0:   var_93C = Proc_6_45_EAD428("USER", 8) & Proc_6_45_EAD428(MemVar_1F920C8, &HC) & "Contact: " & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ContactPerson")), 1)
  loc_1A3AEC5:   Print 1, var_93C
  loc_1A3AEED:   Print 1, var_A4
  loc_1A3AEF9:   var_86 = (var_86 + 1)
  loc_1A3AF35:   var_178 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("Regardless of charge instructions I agree to be held", &H7B)))
  loc_1A3AF3C:   var_1A8 = (var_178 + Chr(&H12))
  loc_1A3AF42:   Print 1, Format(CDbl(0), "0.00")
  loc_1A3AF96:   var_178 = (Chr(&HF) + CVar(Proc_6_52_EAD4F4("personally liable for payment of the total amount of this bill.", 134)))
  loc_1A3AF9D:   var_1A8 = (var_178 + Chr(&H12))
  loc_1A3AFA3:   Print 1, Format(CDbl(0), "0.00")
  loc_1A3AFEA:   var_178 = (Chr(&HE) + Chr(&HF))
  loc_1A3AFF3:   var_188 = (var_178 + "**May we request you to")
  loc_1A3AFFA:   var_1C8 = (Chr(&H12) + Chr(&H12))
  loc_1A3B000:   Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(CDbl(0), "0.00")), &HC, 1))
  loc_1A3B042:   var_178 = (Chr(&HE) + Chr(&HF))
  loc_1A3B04B:   var_188 = (var_178 + " Return your room key**")
  loc_1A3B052:   var_1C8 = (Chr(&H12) + Chr(&H12))
  loc_1A3B058:   Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(CDbl(0), "0.00")), &HC, 1))
  loc_1A3B09A:   var_178 = (Chr(&HF) + Space(&H64))
  loc_1A3B0A3:   var_188 = (var_178 + "Guest Signature")
  loc_1A3B0AA:   var_1C8 = (Chr(&H12) + Chr(&H12))
  loc_1A3B0B0:   Print 1, CVar(Proc_6_52_EAD4F4(CStr(Format(CDbl(0), "0.00")), &HC, 1))
  loc_1A3B0EC:   Print 1, Proc_6_98_11AC4E4("*THANKS FOR YOUR VISIT*", "A", &H4E)
  loc_1A3B10F:   Print 1, Chr(&HC)
  loc_1A3B11B:   var_E4.MoveNext
  loc_1A3B120:   GoTo loc_1A37CEE
  loc_1A3B123: End If
  loc_1A3B125: Close 1
  loc_1A3B12E: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1A3B16A: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & Me.Fields.Item("Printer").Value
  loc_1A3B180: Close 1
  loc_1A3B18A: If (MemVar_1F923B8 = "Y") Then
  loc_1A3B1A6:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_1A3B1B0: Else
  loc_1A3B1C9:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_1A3B1D0: End If
  loc_1A3B1D0: Exit Sub
  loc_1A3B1D1: ' Referenced from: 1A37C78
  loc_1A3B1D7: If (var_E8 = &HFF) Then
  loc_1A3B1E0:   unk_559754.RollbackTrans
  loc_1A3B1E5: End If
  loc_1A3B1E5: Proc_6_60_E62BC4(var_86)
  loc_1A3B1EA: Exit Sub
End Sub

Public Sub Proc_100_45_FB85E8(arg_C) 'FB85E8
  'Data Table: 559750
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_144 As Variant
  Dim var_154 As String
  Dim var_16C As TextBox
  Dim var_208 As Variant
  loc_FB84AB: Set var_90 = Me.Txt
  loc_FB84B1: Call 0.Method_Proc_100_45_FB85E80 (CInt(&HA), var_94)
  loc_FB84C2: var_9C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" & var_94.Text
  loc_FB8512: var_144 = CVar(var_9C & " And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & ") Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all " 
  loc_FB8516: var_154 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_FB852D: Set var_168 = Me.Txt
  loc_FB8533: Call 0.Method_Proc_100_45_FB85E80 (CInt(&HA), var_16C)
  loc_FB8586: var_208 = var_144 & var_154 & CVar(var_16C.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_FB85DF: var_88 = CStr(var_208 & CVar(arg_C) & ") Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all ")
  loc_FB85E2: Proc_100_45_FB85E8 = 
End Sub

Public Sub Proc_100_46_1119554(arg_C) '1119554
  'Data Table: 559750
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_134 As String
  Dim var_144 As Variant
  Dim var_154 As String
  Dim var_16C As TextBox
  Dim var_208 As Variant
  Dim var_238 As String
  Dim var_258 As String
  Dim var_270 As TextBox
  Dim var_30C As Variant
  Dim var_33C As String
  Dim var_35C As String
  Dim var_374 As TextBox
  Dim var_410 As Variant
  Dim var_440 As String
  loc_11192D3: Set var_90 = Me.Txt
  loc_11192D9: Call 0.Method_Proc_100_46_11195540 (CInt(&HA), var_94)
  loc_11192EA: var_9C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' as AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono=" & var_94.Text
  loc_1119335: var_134 = ") AND PayCode not in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_111933A: var_144 = CVar(var_9C & " And Split='") & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" & CVar(arg_C) & var_134 
  loc_111933E: var_154 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_1119355: Set var_168 = Me.Txt
  loc_111935B: Call 0.Method_Proc_100_46_11195540 (CInt(&HA), var_16C)
  loc_11193AE: var_208 = var_144 & var_154 & CVar(var_16C.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode not in (" 
  loc_11193BC: var_238 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_11193C5: var_258 = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'C' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_11193DC: Set var_26C = Me.Txt
  loc_11193E2: Call 0.Method_Proc_100_46_11195540 (CInt(&HA), var_270)
  loc_1119435: var_30C = var_208 & CVar(arg_C) & var_238 & var_258 & CVar(var_270.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_1119443: var_33C = ") AND PayCode NOT in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_111944C: var_35C = "SELECT max(GuestFolio.Name) as name,max(GuestFolio.Add1) as add1,max(GuestFolio.Add2)as Add2,max(GuestFolio.City) as City,max(paycharge.Vno) as Vno,sum(PayCharge.Amtdr) as AmtDr,0 as AmtCr,PayCharge.Vdate as Vdate,max(PayCharge.Comments) as Comments,max(GuestProf.CityName) as Cityname,max(GuestProf.StateName) as StateName,max(GuestProf.CountryName) As CountryName,Max(FixedChargeCode) as FixedChargeCode,'T' AS AA FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNo = GuestFolio.FolioNo) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.foliono="
  loc_1119463: Set var_370 = Me.Txt
  loc_1119469: Call 0.Method_Proc_100_46_11195540 (CInt(&HA), var_374)
  loc_11194BC: var_410 = var_30C & CVar(arg_C) & var_33C & var_35C & CVar(var_374.Text) & " And Split='" & Me.Recordset15.Fields.Item("Split").Value & "' and FixedChargeCode in (" 
  loc_11194CA: var_440 = ") AND PayCode in (Select Code from Revmast where FieldType='T') Group by PayCharge.Vdate,FixedChargeCode Having Sum(PayCharge.AmtDr) <> 0 union all "
  loc_1119549: var_88 = CStr(var_410 & CVar(arg_C) & var_440)
  loc_111954C: Proc_100_46_1119554 = 
  loc_1119552: Set var_27FD = 
End Sub

Public Sub Proc_100_47_F00660
  'Data Table: 559750
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim unk_559754 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_8C As Double
  loc_F005AE: Set var_94 = Me.Txt
  loc_F005B4: Call 0.Method_Proc_100_47_F006600 (CInt(&HA), var_98, var_9C, "Select Sum(AmtDr)-Sum(AmtCr) as AmtDr from Paycharge where folionodocid='")
  loc_F005BC: var_C4 = var_98.Tag
  loc_F005C5: var_A0 = -1 & var_9C
  loc_F005D5: unk_559754.Execute var_A0 & "' and (Modeset<>'S' or Modeset is Null) ", var_C8, 
  loc_F005E0: Set var_90 = var_C8
  loc_F0060C: If (var_90.RecordCount > 0) Then
  loc_F0063A:   var_8C = CSng(var_90.Fields.Item("AmtDr").Value)
  loc_F0064A: Else
  loc_F0064D:   var_8C = CDbl(0)
  loc_F00650: End If
  loc_F00655: Set var_90 = Nothing
  loc_F00658: Proc_100_47_F00660 = var_8C
End Sub

Public Sub Proc_100_48_1155150
  'Data Table: 559750
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_128 As Variant
  Dim var_108 As Variant
  Dim var_E8 As MSHFlexGrid
  Dim var_138 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_E0 As Variant
  Dim var_148 As Long
  Dim var_17C As Variant
  Dim var_118 As Boolean
  Dim var_19C As Variant
  loc_1154DBB: Set var_9C = Me.Txt
  loc_1154DC1: Call 0.Method_Proc_100_48_11551500 (CInt(&HA))
  loc_1154DEA: If (Trim(CVar(var_A0)) = vbNullString) Then
  loc_1154DED:   Exit Sub
  loc_1154DEE: End If
  loc_1154E13: For var_E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_E4 'Integer
  loc_1154E1D:   Set var_E8 = Me.FGrid
  loc_1154E4C:   Proc_6_39_E7C810(var_E0, CVar(CStr(var_E8.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_86)))
  loc_1154E54:   var_138 = (CVar(var_90) + var_E0)
  loc_1154E59:   var_90 = CSng(var_138)
  loc_1154E93:   Proc_6_39_E7C810(var_E0, CVar(CStr(var_E8.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_86)))
  loc_1154E9B:   var_138 = (CVar(var_98) + var_E0)
  loc_1154EA0:   var_98 = CSng(var_138)
  loc_1154EB2:   var_108 = CVar(CLng(var_86)) 'Long
  loc_1154EBA:   var_128 = CVar(CLng(5)) 'Long
  loc_1154EDC:   var_B0 = CVar(Abs((var_90 - var_98))) 'Double
  loc_1154EEC:   var_138 = CVar(CStr(Format(var_E8.TextMatrix), "0.00"))) 'String
  loc_1154EF3:   LateIdCallSt
  loc_1154F12:   If (CDbl((var_90 - var_98)) > CDbl(0)) Then
  loc_1154F19:     var_D0 = CVar(CLng(var_86)) 'Long
  loc_1154F21:     var_108 = CVar(CLng(6)) 'Long
  loc_1154F26:     var_128 = "Dr"
  loc_1154F2F:     LateIdCallSt
  loc_1154F3A:   Else
  loc_1154F46:     If (CDbl((var_90 - var_98)) < CDbl(0)) Then
  loc_1154F4D:       var_D0 = CVar(CLng(var_86)) 'Long
  loc_1154F55:       var_108 = CVar(CLng(6)) 'Long
  loc_1154F5A:       var_128 = "Cr"
  loc_1154F63:       LateIdCallSt
  loc_1154F6E:     Else
  loc_1154F72:       var_D0 = CVar(CLng(var_86)) 'Long
  loc_1154F7A:       var_108 = CVar(CLng(6)) 'Long
  loc_1154F7F:       var_128 = vbNullString
  loc_1154F88:       LateIdCallSt
  loc_1154F90:     End If
  loc_1154F90:   End If
  loc_1154F92:   Set var_E8 = Nothing 
  loc_1154F99: Next var_E4 'Integer
  loc_1154FB1: Me.FGrid.FixedRows = 1
  loc_1154FBD: Set var_15C = Me.Fgrid1
  loc_1154FC0: var_108 = 0
  loc_1154FCC: var_128 = CVar(CLng(1)) 'Long
  loc_1154FFA: var_E0 = CVar(CStr(Format(var_90, "0.00"))) 'String
  loc_1155001: LateIdCallSt
  loc_1155012: var_108 = 0
  loc_115501E: var_128 = CVar(CLng(2)) 'Long
  loc_115504C: var_E0 = CVar(CStr(Format(var_98, "0.00"))) 'String
  loc_1155053: LateIdCallSt
  loc_1155064: var_108 = 0
  loc_1155070: var_128 = CVar(CLng(3)) 'Long
  loc_1155092: var_B0 = CVar(Abs((var_90 - var_98))) 'Double
  loc_11550A2: var_138 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_11550A9: LateIdCallSt
  loc_11550BC: var_148 = 0
  loc_11550C8: var_17C = CVar(CLng(4)) 'Long
  loc_11550EF: var_D0 = (CDbl((var_98 - var_90)) > CDbl(0))
  loc_1155115: var_118 = (CDbl((var_90 - var_98)) > CDbl(0))
  loc_1155125: var_19C = CVar(CStr(IIf(var_118, "Dr", IIf(var_98, "Cr", vbNullString)))) 'String
  loc_115512C: LateIdCallSt
  loc_1155149: Set var_15C = Nothing 
  loc_115514D: Exit Sub
  loc_115514E: Exit Sub
End Sub

Public Sub Proc_100_49_FD29C0
  'Data Table: 559750
  Dim var_DC As TextBox
  Dim var_D8 As Variant
  loc_FD2839: Set var_D8 = Me.TxteInvInfo
  loc_FD283F: Call 0.Method_Proc_100_49_FD29C00 (0, var_DC)
  loc_FD2847: var_DC.Text = CStr(IIf((global_128 <> vbNullString), global_128, vbNullString))
  loc_FD289C: Set var_D8 = Me.TxteInvInfo
  loc_FD28A2: Call 0.Method_Proc_100_49_FD29C00 (1, var_DC)
  loc_FD28AA: var_DC.Text = CStr(IIf((global_132 <> vbNullString), global_132, vbNullString))
  loc_FD2920: Set var_D8 = Me.TxteInvInfo
  loc_FD2926: Call 0.Method_Proc_100_49_FD29C00 (2, var_DC, CStr(IIf((global_136 <> CDate("31/Dec/1899")), Format(global_136, "dd/mm/yyyy hh:nn:ss"), vbNullString)))
  loc_FD292E: var_DC.Text = 1
  loc_FD2955: If (global_128 <> vbNullString) Then
  loc_FD2964:   Me.FreInvInfo.Visible = True
  loc_FD296F: Else
  loc_FD297B:   Me.FreInvInfo.Visible = False
  loc_FD2983: End If
  loc_FD298E: If (global_128 <> vbNullString) Then
  loc_FD299D:   Me.QrImage.Visible = True
  loc_FD29A8: Else
  loc_FD29B4:   Me.QrImage.Visible = False
  loc_FD29BC: End If
  loc_FD29BC: Exit Sub
  loc_FD29BD: ThisVCallI2
End Sub

Public Sub Proc_100_50_E68B20(arg_C) 'E68B20
  'Data Table: 559750
  loc_E68AE0: If (arg_C <> vbNullString) Then
  loc_E68AFC:   MsgBox("eInvoice already generated.", &H10, var_C8, var_E8, var_108)
  loc_E68B0C:   Proc_100_50_E68B20 = 
  loc_E68B12: End If
  loc_E68B17: Proc_100_50_E68B20 = &HFF
End Sub
