VERSION 5.00
Begin VB.Form FaTaxVoucher
  Caption = "Expense Voucher"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "FaTaxVoucher.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 12720
  ClientHeight = 8475
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
  WhatsThisHelp = -1  'True
  Begin Frame FrPayable
    Caption = "Invoice Type"
    ForeColor = &H80&
    Left = 11160
    Top = 1755
    Width = 1080
    Height = 240
    TabIndex = 63
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CheckBox ChkPayable
      Caption = "Payable"
      ForeColor = &HFF&
      Left = 15
      Top = -15
      Width = 1080
      Height = 255
      TabIndex = 64
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 12720
    Height = 450
    TabIndex = 62
  End
  Begin DataGrid DGItem
    Left = 3270
    Top = 2205
    Width = 6180
    Height = 2880
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 23
  End
  Begin DataGrid DGPartyBillNo
    Left = 16725
    Top = 435
    Width = 3630
    Height = 2880
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 58
  End
  Begin TextBox TxtBarCode
    Left = 10890
    Top = 1020
    Width = 2850
    Height = 315
    Visible = 0   'False
    TabIndex = 56
    MaxLength = 30
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
  Begin Frame FrInVoiceType
    Caption = "Invoice Type"
    ForeColor = &H80&
    Left = 4770
    Top = 1725
    Width = 4995
    Height = 300
    TabIndex = 54
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin OptionButton Opt
      Caption = "Other"
      Index = 2
      ForeColor = &H8000&
      Left = 4035
      Top = 30
      Width = 1485
      Height = 240
      TabIndex = 10
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
    Begin OptionButton Opt
      Caption = "Tax Invoice"
      Index = 1
      ForeColor = &H8000&
      Left = 2070
      Top = 30
      Width = 1485
      Height = 240
      TabIndex = 9
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
    Begin OptionButton Opt
      Caption = "Sale Invoice"
      Index = 0
      ForeColor = &H8000&
      Left = 60
      Top = 30
      Width = 1485
      Height = 240
      TabIndex = 8
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
    Index = 12
    ForeColor = &HC00000&
    Left = 1080
    Top = 5985
    Width = 6750
    Height = 840
    TabIndex = 52
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
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
  Begin Frame FrTrans
    Caption = "Import Purchase Data :"
    Left = 7260
    Top = 10005
    Width = 7350
    Height = 4185
    Visible = 0   'False
    TabIndex = 47
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdExit
      Caption = "E&xit"
      Left = 4920
      Top = 3600
      Width = 1650
      Height = 375
      TabIndex = 51
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
    Begin CommandButton Command3
      Caption = "Re&fresh"
      Left = 3030
      Top = 3600
      Width = 1650
      Height = 375
      TabIndex = 50
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
    Begin CheckBox Check1
      Caption = "All"
      BackColor = &H808080&
      ForeColor = &HFFFFFF&
      Left = 570
      Top = 570
      Width = 915
      Height = 195
      TabIndex = 49
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid GridSel
      Left = 450
      Top = 510
      Width = 6495
      Height = 3000
      TabIndex = 48
    End
  End
  Begin CommandButton CmdImport
    Caption = "Import"
    Left = 120
    Top = 6945
    Width = 1395
    Height = 315
    Visible = 0   'False
    TabIndex = 46
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
  Begin DataGrid DGSaleAc
    Left = 3630
    Top = 8685
    Width = 3585
    Height = 3030
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
  Begin TextBox Txt
    Index = 11
    ForeColor = &HC00000&
    Left = 10905
    Top = 1380
    Width = 2130
    Height = 285
    TabIndex = 12
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
  Begin DataGrid DGTaxStru
    Left = 3315
    Top = 8040
    Width = 3585
    Height = 3030
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 43
  End
  Begin DataGrid DgMR
    Left = 2985
    Top = 7695
    Width = 4695
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGVType
    Left = 2685
    Top = 7470
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 37
  End
  Begin DataGrid DGParty
    Left = -30
    Top = 8625
    Width = 11805
    Height = 5640
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 36
  End
  Begin DataGrid DGIndent
    Left = 2370
    Top = 7185
    Width = 4695
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
  Begin DataGrid DGGod
    Left = 2070
    Top = 6960
    Width = 3585
    Height = 3030
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin CommandButton Command1
    Caption = "Edit Save"
    Left = 9285
    Top = 15
    Width = 1230
    Height = 315
    Visible = 0   'False
    TabIndex = 42
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 10
    ForeColor = &HC00000&
    Left = 3630
    Top = 1695
    Width = 1050
    Height = 285
    Visible = 0   'False
    TabIndex = 5
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
    Index = 9
    Left = 12825
    Top = 8385
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 38
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
    Index = 1
    ForeColor = &HC00000&
    Left = 1185
    Top = 1065
    Width = 3495
    Height = 285
    TabIndex = 0
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
    Index = 2
    ForeColor = &HC00000&
    Left = 5460
    Top = 1065
    Width = 1230
    Height = 285
    TabIndex = 1
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
    Index = 3
    ForeColor = &HC00000&
    Left = 8595
    Top = 1065
    Width = 1230
    Height = 285
    TabIndex = 2
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
    Index = 4
    ForeColor = &HC00000&
    Left = 1185
    Top = 1380
    Width = 3495
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
    ForeColor = &HC00000&
    Left = 5460
    Top = 1380
    Width = 2625
    Height = 285
    TabIndex = 6
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
    Index = 6
    ForeColor = &HC00000&
    Left = 8595
    Top = 1380
    Width = 1230
    Height = 285
    TabIndex = 7
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
    Index = 7
    ForeColor = &HC00000&
    Left = 1185
    Top = 1695
    Width = 1050
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
    ForeColor = &HC00000&
    Left = 1185
    Top = 1380
    Width = 3495
    Height = 285
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
  Begin DataGrid DGRest
    Left = 1755
    Top = 6990
    Width = 5910
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin TextBox Txt
    Index = 0
    Left = 7605
    Top = 45
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    MaxLength = 21
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
  Begin MSHFlexGrid FGCat
    Left = -150
    Top = 7515
    Width = 9150
    Height = 2355
    Visible = 0   'False
    TabIndex = 22
  End
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HC00000&
    Left = 13455
    Top = 6015
    Width = 1125
    Height = 255
    Enabled = 0   'False
    TabIndex = 16
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
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HC00000&
    Left = 12870
    Top = 6015
    Width = 405
    Height = 255
    Visible = 0   'False
    TabIndex = 15
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
  Begin Frame FrmList
    Left = 18060
    Top = 3720
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "System"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 2415
      Height = 1800
      TabIndex = 18
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 855
    Top = 2430
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 14
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
  Begin MSHFlexGrid FGrid
    Left = 15
    Top = 2085
    Width = 12045
    Height = 3855
    TabIndex = 13
  End
  Begin MSFlexGrid FGPoint
    Left = 7050
    Top = 9000
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 25
  End
  Begin CommonDialog CDlg
  End
  Begin Image BillImage
    Left = 13260
    Top = 600
    Width = 1095
    Height = 1350
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
    ToolTipText = "Guest"
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1170
    Top = 7170
    Width = 2880
    Height = 255
    TabIndex = 61
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
    Left = 4575
    Top = 7215
    Width = 2790
    Height = 285
    TabIndex = 60
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 59
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
    Caption = "Bar Code"
    Index = 11
    ForeColor = &HC00000&
    Left = 9960
    Top = 1065
    Width = 885
    Height = 240
    Visible = 0   'False
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
  Begin Label LblInvoiceNo
    ForeColor = &H80&
    Left = 9780
    Top = 1755
    Width = 1080
    Height = 285
    TabIndex = 55
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
    Caption = "Remark"
    Index = 6
    ForeColor = &HC00000&
    Left = 225
    Top = 5970
    Width = 735
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
  Begin Label Label1
    Caption = "GSTIN"
    Index = 5
    ForeColor = &HC00000&
    Left = 10215
    Top = 1395
    Width = 600
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
  Begin Label Label1
    Caption = "Indent. No."
    Index = 4
    ForeColor = &HC00000&
    Left = 2655
    Top = 1725
    Width = 1035
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "Vr. No."
    Index = 8
    ForeColor = &HC00000&
    Left = 4740
    Top = 1065
    Width = 645
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
    Caption = "Type "
    Index = 3
    ForeColor = &HC00000&
    Left = 60
    Top = 1080
    Width = 525
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
  Begin Label Label1
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 8160
    Top = 1080
    Width = 435
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 14085
    Top = 8670
    Width = 645
    Height = 210
    Visible = 0   'False
    TabIndex = 31
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
    Caption = "Bill No."
    Index = 1
    ForeColor = &HC00000&
    Left = 4740
    Top = 1395
    Width = 690
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
  Begin Label Label1
    Caption = "Date"
    Index = 7
    ForeColor = &HC00000&
    Left = 8160
    Top = 1395
    Width = 435
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
  Begin Label Label1
    Caption = "Party Name"
    Index = 10
    ForeColor = &HC00000&
    Left = 60
    Top = 1410
    Width = 1110
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
  Begin Label Label1
    Caption = "M.R.No."
    Index = 0
    ForeColor = &HC00000&
    Left = 60
    Top = 1725
    Width = 735
    Height = 240
    Visible = 0   'False
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
  Begin Label LblDummy
    Caption = "Label2"
    Index = 1
    ForeColor = &HC00000&
    Left = 10815
    Top = 6750
    Width = 180
    Height = 210
    Visible = 0   'False
    TabIndex = 21
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &HC00000&
    Left = 13290
    Top = 6015
    Width = 150
    Height = 240
    Visible = 0   'False
    TabIndex = 20
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
    ForeColor = &HC00000&
    Left = 11025
    Top = 6765
    Width = 480
    Height = 240
    TabIndex = 19
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
    Caption = "Bill Image"
    Index = 43
    ForeColor = &H0&
    Left = 13380
    Top = 1650
    Width = 840
    Height = 240
    TabIndex = 65
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "FaTaxVoucher"

Private global_248 As Integer
Private global_250 As Integer
Private global_52 As Integer
Private global_144 As Integer
Private global_146 As Integer
Private global_120 As Integer
Private global_208 As Double
Private global_96 As Integer

Private Sub TxtGt_GotFocus(Index As Integer) 'ECFFA0
  'Data Table: 598674
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECFF02: Set var_88 = Me.TxtGt
  loc_ECFF08: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECFF16: Proc_6_74_E226B0(var_8C)
  loc_ECFF22: Call Proc_338_94_FDE1A4(var_8C)
  loc_ECFF36: Set var_88 = Me.TxtGt
  loc_ECFF3C: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECFF44: var_8C.SelStart = 0
  loc_ECFF5D: Set var_88 = Me.TxtGt
  loc_ECFF63: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECFF7E: Set var_90 = Me.TxtGt
  loc_ECFF84: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECFF8C: var_98.SelLength = Len(var_8C.Text)
  loc_ECFF9F: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'F5F994
  'Data Table: 598674
  Dim var_88 As DataGrid
  loc_F5F8CD: var_C6 = Me.FrmList.Visible
  loc_F5F908: If (((((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(Me.DGPartyBillNo.Visible) = 0)) And (var_C6 = 0)) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F5F92A:   Set var_88 = Me.TxtGt
  loc_F5F930:   Call 0.Method_TxtGt_KeyDown8 (var_C6, KeyCode)
  loc_F5F940:   If ( And (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) = (var_C6 - 1))) Then
  loc_F5F946:     Call Proc_338_95_F0B52C(KeyCode)
  loc_F5F94B:     Exit Sub
  loc_F5F94C:   End If
  loc_F5F94C: End If
  loc_F5F961: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F5F96A:   Proc_6_75_E527CC(Shift)
  loc_F5F96F: End If
  loc_F5F984: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F5F98D:   Proc_6_76_E52838(Shift, arg_14)
  loc_F5F992: End If
  loc_F5F992: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'F7A870
  'Data Table: 598674
  Dim var_8C As Variant
  Dim arg_10 As Integer
  Dim var_FC As TextBox
  loc_F7A742: Set var_88 = Me.TxtGt
  loc_F7A748: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_F7A763: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_F7A76F: On Error Goto loc_F7A86E
  loc_F7A77F: Set var_88 = Me.LblCap
  loc_F7A785: Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7A78D: 2 = var_8C.Tag
  loc_F7A7C4: If (Trim(CVar(var_98)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_F7A7CD:   If (arg_10 = &H2D) Then
  loc_F7A7D2:     arg_10 = 0
  loc_F7A7D5:   End If
  loc_F7A7E2:   Set var_88 = Me.TxtGt
  loc_F7A7E8:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7A7F0:   arg_10 = var_8C.Text
  loc_F7A840:   Set var_90 = Me.TxtPer
  loc_F7A846:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_FC, CStr(Format(CVar(((Val(var_98) * CDbl(&H64)) / global_208)), "0.00")), 1)
  loc_F7A84E:   var_FC.Text = 1
  loc_F7A86E:   ' Referenced from: F7A76F
  loc_F7A86E: End If
  loc_F7A86E: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4B7C4
  'Data Table: 598674
  loc_E4B7A2: Set var_88 = Me.TxtGt
  loc_E4B7A8: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4B7B6: Proc_6_73_E22704(var_8C)
  loc_E4B7C2: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E00B54
  'Data Table: 598674
  loc_E00B4E: Call Proc_338_101_17C5094(Cancel)
  loc_E00B53: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '14FC9F8
  'Data Table: 598674
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim Me As Variant
  Dim var_124 As String
  Dim var_138 As String
  Dim unk_598691 As Connection15
  loc_14FBB7E: Set var_88 = Me.TxtGrid
  loc_14FBB84: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_14FBB92: Proc_6_74_E226B0(var_8C)
  loc_14FBB9E: Call Proc_338_94_FDE1A4(var_8C)
  loc_14FBBB1: Set var_88 = Me.TxtGrid
  loc_14FBBB7: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FBBBF: var_8C.MaxLength = 0
  loc_14FBBD7: If (Index = 0) Then
  loc_14FBBED:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FBBF6:   Set var_8C = Me.FGrid
  loc_14FBC2C:   Set var_108 = Me.TxtGrid
  loc_14FBC32:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_14FBC3A:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_14FBC6B:   var_114 = CLng(Me.FGrid.Col)
  loc_14FBC7B:   If (var_114 = CLng(1)) Then
  loc_14FBC8C:     Set var_88 = Me.TxtGrid
  loc_14FBC92:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4)
  loc_14FBC9A:     var_8C.MaxLength = var_114
  loc_14FBCA9:   Else
  loc_14FBCB0:     If (var_114 = CLng(2)) Then
  loc_14FBCBF:       Set var_88 = Me.TxtGrid
  loc_14FBCC5:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_14FBCCD:       var_C4 = var_8C.Left
  loc_14FBCE4:       Me.DGItem.Left = CVar(var_118)
  loc_14FBCFE:       Set var_90 = Me.TxtGrid
  loc_14FBD04:       Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_14FBD0C:       var_11C = var_108.Height
  loc_14FBD1D:       Set var_88 = Me.TxtGrid
  loc_14FBD23:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FBD37:       var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FBD40:       Set var_10C = Me.DGItem
  loc_14FBD46:       var_10C.Top = CVar(var_8C.Top)
  loc_14FBD6F:       If (Me.RecordCount > 0) Then
  loc_14FBD7D:         Set var_8C = Me.FGPoint
  loc_14FBD95:         Proc_6_137_1193554(Me.DGItem, global_60, Index)
  loc_14FBDA3:       End If
  loc_14FBDAC:       var_118 = Me.RecordCount
  loc_14FBDC3:       var_11E = Me.EOF
  loc_14FBDD7:       var_120 = Me.BOF
  loc_14FBDF7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FBE33:       If (CVar(CLng(&HC)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_14FBE36:         Exit Sub
  loc_14FBE37:       End If
  loc_14FBE3D:       Me.MoveFirst
  loc_14FBE55:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FBE5D:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FBEA1:       Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_14FBED0:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FBED8:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FBEE1:       Set var_8C = Me.FGrid
  loc_14FBEE7:       var_B4 = var_8C.TextMatrix)
  loc_14FBEF8:       var_148 = Trim(CVar(CStr(var_B4)))
  loc_14FBF01:       var_110 = CStr(var_148)
  loc_14FBF07:       global_168 = var_110
  loc_14FBF29:       var_11E = Me.EOF
  loc_14FBF34:       If (var_11E = &HFF) Then
  loc_14FBF3D:         Me.MoveFirst
  loc_14FBF42:       End If
  loc_14FBF45:     Else
  loc_14FBF4C:       If (var_114 = CLng(9)) Then
  loc_14FBF5E:         Set var_88 = Me.TxtGrid
  loc_14FBF64:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_E4, var_C4, var_138, var_B4)
  loc_14FBF6C:         var_8C.MaxLength = var_E4
  loc_14FBF81:         If (global_146 = 0) Then
  loc_14FBF93:           Set var_88 = Me.TxtGrid
  loc_14FBF99:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_C4)
  loc_14FBFA1:           var_8C.SelStart = var_C4
  loc_14FBFBA:           Set var_88 = Me.TxtGrid
  loc_14FBFC0:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_14FBFC8:           ((var_118 = 0) Or ((var_11E = &HFF) Or (var_120 = &HFF))) = var_8C.Text
  loc_14FBFDB:           Set var_90 = Me.TxtGrid
  loc_14FBFE1:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, Len(var_110))
  loc_14FBFE9:           var_108.SelLength = var_8C
  loc_14FBFFC:         End If
  loc_14FBFFF:       Else
  loc_14FC006:         If (var_114 = CLng(&HB)) Then
  loc_14FC018:           Set var_88 = Me.TxtGrid
  loc_14FC01E:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FC026:           var_8C.MaxLength = 0
  loc_14FC03B:           If (global_146 = 0) Then
  loc_14FC04D:             Set var_88 = Me.TxtGrid
  loc_14FC053:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FC05B:             var_8C.SelStart = 0
  loc_14FC074:             Set var_88 = Me.TxtGrid
  loc_14FC07A:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FC095:             Set var_90 = Me.TxtGrid
  loc_14FC09B:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_14FC0A3:             var_108.SelLength = Len(var_8C.Text)
  loc_14FC0B6:           End If
  loc_14FC0B9:         Else
  loc_14FC0C0:           If (var_114 = CLng(&H16)) Then
  loc_14FC0CD:             var_A4 = Me.DGGod.Width
  loc_14FC0E2:             Set var_108 = Me.TxtGrid
  loc_14FC0E8:             Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C)
  loc_14FC101:             Set var_88 = Me.TxtGrid
  loc_14FC107:             Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FC121:             var_C4 = CVar((var_8C.Left - (CDbl(var_10C.Width) - var_11C))) 'Single
  loc_14FC130:             Me.DGGod.Left = var_C4
  loc_14FC153:             Set var_90 = Me.TxtGrid
  loc_14FC159:             Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_14FC161:             var_11C = var_108.Height
  loc_14FC172:             Set var_88 = Me.TxtGrid
  loc_14FC178:             Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FC18C:             var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FC195:             Set var_10C = Me.DGGod
  loc_14FC19B:             var_10C.Top = var_C4
  loc_14FC1C0:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FC1C8:             var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FC1E8:             global_168 = CStr(Me.FGrid.TextMatrix))
  loc_14FC214:             If (Me.RecordCount > 0) Then
  loc_14FC23A:               Proc_6_137_1193554(Me.DGGod, global_84, Index, Me.FGPoint)
  loc_14FC248:             End If
  loc_14FC251:             var_118 = Me.RecordCount
  loc_14FC289:             If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_14FC28C:               Exit Sub
  loc_14FC28D:             End If
  loc_14FC2A0:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FC2A8:             var_E4 = CVar(CLng(&H16)) 'Long
  loc_14FC2DB:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_14FC2E4:               Me.MoveFirst
  loc_14FC30D:               Set var_8C = Me.FGrid
  loc_14FC324:               Proc_6_17_EAA2B0(var_148, CVar(CStr(var_8C.TextMatrix))), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H17)))
  loc_14FC34D:               Me.Find CStr("Code =" & var_148), 0, 1
  loc_14FC37D:               If (Me.EOF = &HFF) Then
  loc_14FC386:                 Me.MoveFirst
  loc_14FC38B:               End If
  loc_14FC38B:             End If
  loc_14FC38E:           Else
  loc_14FC395:             If (var_114 = CLng(&H19)) Then
  loc_14FC3A2:               var_A4 = Me.DGTaxStru.Width
  loc_14FC3B7:               Set var_108 = Me.TxtGrid
  loc_14FC3BD:               Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C, var_A4, var_16C)
  loc_14FC3C5:               var_C4 = var_10C.Width
  loc_14FC3D6:               Set var_88 = Me.TxtGrid
  loc_14FC3DC:               Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_14FC3E4:               var_E4 = var_8C.Left
  loc_14FC3F6:               var_C4 = CVar((var_118 - (CDbl(var_A4) - var_11C))) 'Single
  loc_14FC405:               Me.DGTaxStru.Left = var_C4
  loc_14FC428:               Set var_90 = Me.TxtGrid
  loc_14FC42E:               Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_14FC436:               var_C4 = var_108.Height
  loc_14FC447:               Set var_88 = Me.TxtGrid
  loc_14FC44D:               Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FC461:               var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FC46A:               Set var_10C = Me.DGTaxStru
  loc_14FC470:               var_10C.Top = var_C4
  loc_14FC486:               Set var_88 = Me.FGrid
  loc_14FC48C:               var_A4 = var_88.Row
  loc_14FC495:               var_C4 = CVar(CLng(var_A4)) 'Long
  loc_14FC49D:               var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FC4BD:               global_168 = CStr(Me.FGrid.TextMatrix))
  loc_14FC4E6:               var_110 = "SELECT Distinct TaxStru.Code as Code, TaxStru.Name as name FROM TaxStru INNER JOIN ItemCatMast ON TaxStru.Code = ItemCatMast.TaxStru where (TaxStru.LOGSITE_CODE='" & MemVar_1F92078
  loc_14FC4ED:               var_124 = var_110 & "' or TaxStru.LOGSITE_CODE='HO') And IsNull(ItemCatMast.TaxstruType,'')='Registered' And ItemCatMast.RestCode='"
  loc_14FC504:               unk_598691.Execute var_124 & MemVar_1F92078 & "PURC' order by taxstru.name ", var_A4, -1
  loc_14FC515:               Set global_216 = var_88
  loc_14FC53A:               CVarUnk
  loc_14FC53F:               VerifyVarObj
  loc_14FC545:               Set var_88 = Me.DGTaxStru
  loc_14FC54B:               LateIdStAd
  loc_14FC573:               If (Me.DGTaxStru.RecordCount > 0) Then
  loc_14FC59D:                 Proc_6_137_1193554(Me.DGTaxStru, global_216, Index, Me.FGPoint, Me.DGTaxStru)
  loc_14FC5AB:               End If
  loc_14FC5B7:               var_118 = global_216.RecordCount
  loc_14FC5F5:               If ((var_118 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_14FC5F8:                 Exit Sub
  loc_14FC5F9:               End If
  loc_14FC60C:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FC614:               var_E4 = CVar(CLng(&H1A)) 'Long
  loc_14FC623:               var_B4 = Me.FGrid.TextMatrix)
  loc_14FC647:               If (CStr(var_B4) <> vbNullString) Then
  loc_14FC653:                 Me.var_B4.MoveFirst
  loc_14FC67C:                 Set var_8C = Me.FGrid
  loc_14FC682:                 var_B4 = var_8C.TextMatrix)
  loc_14FC693:                 Proc_6_17_EAA2B0(var_148, CVar(CStr(var_B4)), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)))
  loc_14FC6BF:                 Me.var_B4.Find CStr("Code =" & var_148), 0, 1
  loc_14FC6F2:                 If (Me.Recordset15.EOF = &HFF) Then
  loc_14FC6FE:                   Me.Recordset15.MoveFirst
  loc_14FC703:                 End If
  loc_14FC703:               End If
  loc_14FC706:             Else
  loc_14FC70D:               If (var_114 = CLng(&H1B)) Then
  loc_14FC71A:                 var_A4 = Me.DGSaleAc.Width
  loc_14FC72F:                 Set var_108 = Me.TxtGrid
  loc_14FC735:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C, var_A4, var_16C)
  loc_14FC73D:                 global_216 = var_10C.Width
  loc_14FC754:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118, Me.TxtGrid)
  loc_14FC75C:                 var_E4 = var_8C.Left
  loc_14FC76E:                 var_C4 = CVar((var_118 - (CDbl(var_A4) - var_11C))) 'Single
  loc_14FC77D:                 Me.DGSaleAc.Left = CVar(CLng(Me.FGrid.Row))
  loc_14FC7A0:                 Set var_90 = Me.TxtGrid
  loc_14FC7A6:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_14FC7AE:                 var_C4 = var_108.Height
  loc_14FC7BF:                 Set var_88 = Me.TxtGrid
  loc_14FC7C5:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FC7D9:                 var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FC7E8:                 Me.DGSaleAc.Top = var_C4
  loc_14FC80D:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FC815:                 var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FC824:                 var_B4 = Me.FGrid.TextMatrix)
  loc_14FC835:                 global_168 = CStr(var_B4)
  loc_14FC864:                 If (Me.var_B4.RecordCount > 0) Then
  loc_14FC88E:                   Proc_6_137_1193554(Me.DGSaleAc, global_220, Index, Me.FGPoint)
  loc_14FC89C:                 End If
  loc_14FC8E6:                 If ((global_220.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_14FC8E9:                   Exit Sub
  loc_14FC8EA:                 End If
  loc_14FC8FD:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FC905:                 var_E4 = CVar(CLng(&H1C)) 'Long
  loc_14FC914:                 var_B4 = Me.FGrid.TextMatrix)
  loc_14FC938:                 If (CStr(var_B4) <> vbNullString) Then
  loc_14FC944:                   Me.var_B4.MoveFirst
  loc_14FC973:                   var_B4 = Me.FGrid.TextMatrix)
  loc_14FC984:                   Proc_6_17_EAA2B0(var_148, CVar(CStr(var_B4)), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H1C)))
  loc_14FC9B0:                   Me.var_B4.Find CStr("Code =" & var_148), 0, 1
  loc_14FC9E3:                   If (Me.Recordset15.EOF = &HFF) Then
  loc_14FC9EF:                     Me.Recordset15.MoveFirst
  loc_14FC9F4:                   End If
  loc_14FC9F4:                 End If
  loc_14FC9F4:               End If
  loc_14FC9F4:             End If
  loc_14FC9F4:           End If
  loc_14FC9F4:         End If
  loc_14FC9F4:       End If
  loc_14FC9F4:     End If
  loc_14FC9F4:   End If
  loc_14FC9F4: End If
  loc_14FC9F4: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1437B1C
  'Data Table: 598674
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_94 As String
  loc_143702B: var_86 = Shift
  loc_143703A: If (KeyCode = 0) Then
  loc_1437047:   If (CLng(Shift) = &H1B) Then
  loc_1437057:     Set var_8C = Me.TxtGrid
  loc_143705D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1437065:     var_88 = var_90.Tag
  loc_1437077:     Set var_98 = Me.TxtGrid
  loc_143707D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1437085:     var_9C.Text = var_94
  loc_14370A1:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_14370A6:     Call Proc_338_94_FDE1A4(arg_14)
  loc_14370AF:     Set var_8C = Me.FGrid
  loc_14370CC:     Set var_8C = Me.TxtGrid
  loc_14370D2:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_14370DA:     var_90.Visible = FGrid.DispID_8001
  loc_14370E6:     Exit Sub
  loc_14370E7:   End If
  loc_14370FA:   var_B0 = CLng(Me.FGrid.Col)
  loc_143710A:   If (var_B0 = CLng(&H16)) Then
  loc_143712A:     Set var_9C = Me.FGPoint
  loc_1437135:     Set var_98 = Nothing
  loc_1437163:     Proc_6_69_134A198(Me.DGGod, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_14371D2:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_14371D9:       Set var_98 = Me.DGGod
  loc_14371F8:       Proc_6_138_106D6F8(var_98, global_84, KeyCode, Me.FGPoint, 1)
  loc_1437206:     End If
  loc_1437210:     If (CLng(Shift) = &HD) Then
  loc_1437219:       Call Proc_338_89_1ADEDC8(KeyCode, var_B2, var_98, var_9C)
  loc_1437224:       If (var_B2 = &HFF) Then
  loc_1437271:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H16) + 1)))
  loc_1437281:       End If
  loc_1437281:     End If
  loc_1437284:   Else
  loc_143728B:     If (var_B0 = CLng(&H19)) Then
  loc_14372E8:       Proc_6_69_134A198(Me.DGTaxStru, Me.TxtGrid, KeyCode, global_216, Shift, &HFF, 1, Nothing)
  loc_143735A:       If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1437384:         Proc_6_138_106D6F8(Me.DGTaxStru, global_216, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1437392:       End If
  loc_143739C:       If (CLng(Shift) = &HD) Then
  loc_14373A5:         Call Proc_338_89_1ADEDC8(KeyCode, var_B2, 0, 0)
  loc_14373B0:         If (var_B2 = &HFF) Then
  loc_14373FD:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H19) + 1)), 0)
  loc_143740D:         End If
  loc_143740D:       End If
  loc_1437410:     Else
  loc_1437417:       If (var_B0 = CLng(&H1B)) Then
  loc_1437474:         Proc_6_69_134A198(Me.DGSaleAc, Me.TxtGrid, KeyCode, global_220, Shift, &HFF, 1, Nothing)
  loc_14374E6:         If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1437510:           Proc_6_138_106D6F8(Me.DGSaleAc, global_220, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_143751E:         End If
  loc_1437528:         If (CLng(Shift) = &HD) Then
  loc_1437531:           Call Proc_338_89_1ADEDC8(KeyCode, var_B2, &H1B, 0)
  loc_143753C:           If (var_B2 = &HFF) Then
  loc_1437589:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H1B) + 1)), 0)
  loc_1437599:           End If
  loc_1437599:         End If
  loc_143759C:       Else
  loc_14375A3:         If (var_B0 = CLng(2)) Then
  loc_14375B1:           If (global_100 = "Yes") Then
  loc_14375D1:             Set var_9C = Me.FGPoint
  loc_143760A:             Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 1, Nothing)
  loc_1437623:           Else
  loc_1437640:             Set var_9C = Me.FGPoint
  loc_1437679:             Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_60, Shift, &HFF, 2, Nothing)
  loc_143768F:           End If
  loc_14376E8:           If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_143770E:             Proc_6_138_106D6F8(Me.DGItem, global_60, KeyCode, Me.FGPoint, var_9C, 0)
  loc_143771C:           End If
  loc_1437726:           If (CLng(Shift) = &HD) Then
  loc_143772F:             Call Proc_338_89_1ADEDC8(KeyCode, var_B2, var_9C, 0)
  loc_143773A:             If (var_B2 = &HFF) Then
  loc_1437787:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&HB) + 1)), 0)
  loc_1437797:             End If
  loc_1437797:           End If
  loc_143779A:         Else
  loc_14377A1:           If (var_B0 = CLng(9)) Then
  loc_14377AA:             Call Proc_338_89_1ADEDC8(KeyCode, var_B2, 5, 0)
  loc_14377B5:             If (var_B2 = &HFF) Then
  loc_1437802:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H16) + 1)), 0)
  loc_1437812:             End If
  loc_1437815:           Else
  loc_143781C:             If (var_B0 = CLng(&HB)) Then
  loc_1437825:               Call Proc_338_89_1ADEDC8(KeyCode, var_B2, &HB, 0)
  loc_1437830:               If (var_B2 = &HFF) Then
  loc_143787D:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&HB) + 1)), 0)
  loc_143788D:               End If
  loc_1437890:             Else
  loc_1437897:               If (var_B0 = CLng(5)) Then
  loc_14378DA:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_146 = &HFF))) Then
  loc_14378E3:                   Call Proc_338_89_1ADEDC8(KeyCode, var_B2, 0, 0)
  loc_14378EE:                   If (var_B2 = &HFF) Then
  loc_143793B:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(&H16) + 1)), 0)
  loc_143794B:                   End If
  loc_143794B:                 End If
  loc_143794E:               Else
  loc_1437955:                 If (var_B0 = CLng(6)) Then
  loc_1437998:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_146 = &HFF))) Then
  loc_14379A1:                     Call Proc_338_89_1ADEDC8(KeyCode, var_B2, &HB, 0)
  loc_14379AC:                     If (var_B2 = &HFF) Then
  loc_14379F9:                       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(9) + 1)), 0)
  loc_1437A09:                     End If
  loc_1437A09:                   End If
  loc_1437A0C:                 Else
  loc_1437A13:                   If (var_B0 = CLng(1)) Then
  loc_1437A20:                     If (CLng(Shift) = &HD) Then
  loc_1437A29:                       Call Proc_338_89_1ADEDC8(KeyCode, var_B2, &H16, 0)
  loc_1437A34:                       If (var_B2 = &HFF) Then
  loc_1437A81:                         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_146, CByte((CInt(5) + 1)), 0)
  loc_1437AA4:                         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1437AAC:                         var_FC = CVar(CLng(1)) 'Long
  loc_1437ADF:                         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1437AF4:                           Me.FGrid.Col = CVar(CLng(1))
  loc_1437AFF:                         Else
  loc_1437B11:                           Me.FGrid.Col = CVar(CLng(5))
  loc_1437B19:                         End If
  loc_1437B19:                       End If
  loc_1437B19:                     End If
  loc_1437B19:                   End If
  loc_1437B19:                 End If
  loc_1437B19:               End If
  loc_1437B19:             End If
  loc_1437B19:           End If
  loc_1437B19:         End If
  loc_1437B19:       End If
  loc_1437B19:     End If
  loc_1437B19:   End If
  loc_1437B19: End If
  loc_1437B19: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1297018
  'Data Table: 598674
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim var_B4 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  Dim arg_10 As Integer
  loc_1296A1B: Proc_6_58_E054C0(arg_10)
  loc_1296A2C: If (KeyAscii = 0) Then
  loc_1296A42:   var_A8 = CLng(Me.FGrid.Col)
  loc_1296A52:   If (var_A8 = CLng(&H16)) Then
  loc_1296A71:     If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_1296A83:       var_AC = "Name"
  loc_1296A9E:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_84, arg_10)
  loc_1296AD0:       Proc_6_138_106D6F8(Me.DGGod, global_84, KeyAscii, Me.FGPoint)
  loc_1296ADE:     End If
  loc_1296AE1:   Else
  loc_1296AE8:     If (var_A8 = CLng(&H19)) Then
  loc_1296B07:       If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_1296B38:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_216, arg_10, "Name")
  loc_1296B6E:         Proc_6_138_106D6F8(Me.DGTaxStru, global_216, KeyAscii, Me.FGPoint, 0)
  loc_1296B7C:       End If
  loc_1296B7F:     Else
  loc_1296B86:       If (var_A8 = CLng(&H1B)) Then
  loc_1296BA5:         If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_1296BD6:           Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_220, arg_10, "Name")
  loc_1296C0C:           Proc_6_138_106D6F8(Me.DGSaleAc, global_220, KeyAscii, Me.FGPoint, 0)
  loc_1296C1A:         End If
  loc_1296C1D:       Else
  loc_1296C24:         If (var_A8 = CLng(1)) Then
  loc_1296C42:           If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_1296C57:             Me.FGrid.Col = CVar(CLng(2))
  loc_1296C7B:             If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1296C82:               Set var_B4 = Me.TxtGrid
  loc_1296C8D:               var_AC = "Name"
  loc_1296CA8:               Proc_6_89_146F1AC(var_B4, KeyAscii, global_60, arg_10, var_AC)
  loc_1296CB7:             End If
  loc_1296CB7:           End If
  loc_1296CBA:         Else
  loc_1296CC1:           If (var_A8 = CLng(2)) Then
  loc_1296CE0:             If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1296CEE:               If (global_100 = "Yes") Then
  loc_1296CFD:                 Set var_94 = Me.TxtGrid
  loc_1296D03:                 Call 0.Method_TxtGrid_KeyPress0 (0, var_B4, var_AC, 0)
  loc_1296D15:                 var_86 = CInt(Len(var_B4.Text))
  loc_1296D25:                 var_88 = arg_10
  loc_1296D2C:                 Set var_B4 = Me.TxtGrid
  loc_1296D37:                 var_AC = "BarCode"
  loc_1296D52:                 Proc_6_89_146F1AC(var_B4, KeyAscii, global_60, arg_10, var_AC, 0)
  loc_1296D6D:                 Set var_94 = Me.TxtGrid
  loc_1296D73:                 Call 0.Method_TxtGrid_KeyPress0 (0, var_B4, var_AC, var_88)
  loc_1296D93:                 If (Len(var_AC) = CLng(var_B4.Text)) Then
  loc_1296DAD:                   If (Me.AbsolutePosition > 0) Then
  loc_1296DC1:                     var_8C = Me.AbsolutePosition
  loc_1296DC7:                   Else
  loc_1296DCC:                     var_8C = 1
  loc_1296DCF:                   End If
  loc_1296DD2:                   arg_10 = var_88
  loc_1296DFF:                   Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_1296E25:                   If (Me.AbsolutePosition <= 0) Then
  loc_1296E31:                     Me.AbsolutePosition = var_8C
  loc_1296E36:                   End If
  loc_1296E36:                 End If
  loc_1296E39:               Else
  loc_1296E63:                 Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name", 0)
  loc_1296E72:               End If
  loc_1296E7D:               Set var_B4 = Me.FGPoint
  loc_1296E95:               Proc_6_138_106D6F8(Me.DGItem, global_60, KeyAscii, var_B4, arg_10)
  loc_1296EA3:             End If
  loc_1296EA6:           Else
  loc_1296EAD:             If (var_A8 = CLng(5)) Then
  loc_1296EBA:               Set var_94 = Me.TxtGrid
  loc_1296EC0:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, var_8C, var_8C)
  loc_1296EDB:               Proc_6_42_129A86C(var_B4, arg_10, 8, 3)
  loc_1296EEA:             Else
  loc_1296EF1:               If Not (var_A8 = CLng(9)) Then
  loc_1296EFB:                 If (var_A8 = CLng(6)) Then
  loc_1296EFE:                 End If
  loc_1296F08:                 Set var_94 = Me.TxtGrid
  loc_1296F0E:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, 0)
  loc_1296F29:                 Proc_6_42_129A86C(var_B4, arg_10, 8)
  loc_1296F38:               Else
  loc_1296F3F:                 If (var_A8 = CLng(&HB)) Then
  loc_1296F4C:                   Set var_94 = Me.TxtGrid
  loc_1296F52:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, 5)
  loc_1296F6D:                   Proc_6_42_129A86C(var_B4, arg_10, 8)
  loc_1296F7C:                 Else
  loc_1296F83:                   If (var_A8 = CLng(1)) Then
  loc_1296FA1:                     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_1296FB6:                       Me.FGrid.Col = CVar(CLng(2))
  loc_1296FDA:                       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1297007:                         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_60, arg_10, "Name")
  loc_1297016:                       End If
  loc_1297016:                     End If
  loc_1297016:                   End If
  loc_1297016:                 End If
  loc_1297016:               End If
  loc_1297016:             End If
  loc_1297016:           End If
  loc_1297016:         End If
  loc_1297016:       End If
  loc_1297016:     End If
  loc_1297016:   End If
  loc_1297016: End If
  loc_1297016: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '121767C
  'Data Table: 598674
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As Variant
  Dim var_180 As Double
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_BC As Variant
  Dim var_A8 As String
  loc_12171BC: On Error Goto loc_1217676
  loc_12171CB: If (KeyCode = 0) Then
  loc_12171E1:   var_A0 = CLng(Me.FGrid.Col)
  loc_12171F1:   If (var_A0 = CLng(2)) Then
  loc_1217217:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1217228:       Call TxtGrid_KeyDown(KeyCode, global_144)
  loc_1217238:       If (global_100 = "Yes") Then
  loc_1217265:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift, "BarCode")
  loc_1217277:       Else
  loc_12172A1:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_60, Shift, "Name")
  loc_12172B0:       End If
  loc_12172B0:     End If
  loc_12172B3:   Else
  loc_12172BA:     If (var_A0 = CLng(&H16)) Then
  loc_12172E0:       If ((Shift <> &HD) And (CBool(Me.DGGod.Visible) = 0)) Then
  loc_12172F1:         Call TxtGrid_KeyDown(KeyCode, global_144)
  loc_12172FA:         Set var_AC = Me.TxtGrid
  loc_1217305:         var_A8 = "Name"
  loc_1217320:         Proc_6_89_146F1AC(var_AC, KeyCode, global_84, Shift, var_A8, &HFF)
  loc_121732F:       End If
  loc_1217332:     Else
  loc_1217339:       If (var_A0 = CLng(5)) Then
  loc_1217349:         Set var_8C = Me.TxtGrid
  loc_121734F:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, 0, &HFF)
  loc_1217357:         &HFF = var_AC.Text
  loc_121737A:         var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1217392:         var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12173BF:         var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_12173C7:         Set var_178 = Me.FGrid
  loc_12173CD:         LateIdCallSt
  loc_1217407:         var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121740F:         var_174 = CVar(CLng(6)) 'Long
  loc_1217447:         var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121744F:         var_1C4 = CVar(CLng(7)) 'Long
  loc_1217467:         var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_121746F:         var_124 = CVar(CLng(5)) 'Long
  loc_1217478:         Set var_AC = Me.FGrid
  loc_1217489:         var_A8 = CStr(var_AC.TextMatrix))
  loc_1217497:         var_164 = CVar(CStr((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_121749F:         Set var_1E8 = Me.FGrid
  loc_12174A5:         LateIdCallSt
  loc_12174D5:       Else
  loc_12174DC:         If (var_A0 = CLng(6)) Then
  loc_12174EC:           Set var_8C = Me.TxtGrid
  loc_12174F2:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_1E8, var_164, var_124, var_BC)
  loc_12174FA:           var_1C4 = var_AC.Text
  loc_121751D:           var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1217535:           var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1217562:           var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00000"))) 'String
  loc_121756A:           Set var_178 = Me.FGrid
  loc_1217570:           LateIdCallSt
  loc_12175AA:           var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12175B2:           var_174 = CVar(CLng(6)) 'Long
  loc_12175D4:           var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12175EA:           var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12175F2:           var_1C4 = CVar(CLng(7)) 'Long
  loc_121760A:           var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1217612:           var_124 = CVar(CLng(5)) 'Long
  loc_121763A:           var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_1217642:           Set var_1E8 = Me.FGrid
  loc_1217648:           LateIdCallSt
  loc_1217675:         End If
  loc_1217675:       End If
  loc_1217675:     End If
  loc_1217675:   End If
  loc_1217675: End If
  loc_1217675: Exit Sub
  loc_1217676: ' Referenced from: 12171BC
  loc_1217676: Proc_6_60_E62BC4(var_1E8, var_164, var_124, var_BC, var_1C4, var_1A4, var_180, var_174)
  loc_121767B: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E21AE0
  'Data Table: 598674
  Dim arg_10 As Integer
  loc_E21AC8: If (Cancel = 0) Then
  loc_E21AD1:   Call Proc_338_89_1ADEDC8(Cancel, var_88)
  loc_E21ADA:   arg_10 = Not(var_88)
  loc_E21ADD: End If
  loc_E21ADD: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F0FE28
  'Data Table: 598674
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F0FD50: Set var_A4 = Me.ListView
  loc_F0FD9A: Set var_BC = Me.Txt
  loc_F0FDA0: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F0FDA8: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F0FDD4: Me.FrmList.Visible = False
  loc_F0FE04: Set var_9C = Me.Txt
  loc_F0FE0A: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F0FE12: var_A4.SetFocus
  loc_F0FE26: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '111B338
  'Data Table: 598674
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
  loc_111AFF7: Me.DGItem.Visible = False
  loc_111B016: If (Me.RecordCount > 0) Then
  loc_111B053:   Set var_B4 = Me.TxtGrid
  loc_111B059:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_111B061:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_111B08A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111B092:   var_EC = CVar(CLng(2)) 'Long
  loc_111B0C5:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_111B0CD:   Set var_B8 = Me.FGrid
  loc_111B0D3:   LateIdCallSt
  loc_111B102:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111B10A:   var_EC = CVar(CLng(&HC)) 'Long
  loc_111B13D:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_111B14B:   LateIdCallSt
  loc_111B1B2:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(4)))) 'String
  loc_111B1BA:   Set var_B8 = Me.FGrid
  loc_111B1C0:   LateIdCallSt
  loc_111B1ED:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111B1F5:   var_EC = CVar(CLng(1)) 'Long
  loc_111B228:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_111B230:   Set var_B8 = Me.FGrid
  loc_111B236:   LateIdCallSt
  loc_111B26C:   var_B0 = Me.Fields.Item("IPurchRate")
  loc_111B284:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111B28C:   var_FC = CVar(CLng(9)) 'Long
  loc_111B2B9:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00000"))) 'String
  loc_111B2C1:   Set var_B8 = Me.FGrid
  loc_111B2C7:   LateIdCallSt
  loc_111B2E5: End If
  loc_111B2F1: Set var_A8 = Me.TxtGrid
  loc_111B2F7: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_111B2FF: var_FC = var_B0.Visible
  loc_111B311: If (var_15E = &HFF) Then
  loc_111B31D:   Set var_A8 = Me.TxtGrid
  loc_111B323:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_111B32B:   var_B0.SetFocus
  loc_111B337: End If
  loc_111B337: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9E5D0
  'Data Table: 598674
  Dim var_A8 As Variant
  loc_E9E554: Set var_88 = Me.DGItem
  loc_E9E57E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9E586: Set var_BC = Me.DGItem
  loc_E9E5C0: Proc_6_138_106D6F8(Me.DGItem, global_60, 0, Me.FGPoint)
  loc_E9E5CE: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F3D824
  'Data Table: 598674
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D71B: Me.DGParty.Visible = False
  loc_F3D73A: If (Me.RecordCount > 0) Then
  loc_F3D779:   Set var_B4 = Me.Txt
  loc_F3D77F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F3D787:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3D7BA:   var_B0 = Me.Fields.Item("Code")
  loc_F3D7D9:   Set var_B4 = Me.Txt
  loc_F3D7DF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F3D7E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3D7FD: End If
  loc_F3D808: Set var_A8 = Me.Txt
  loc_F3D80E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(4))
  loc_F3D816: var_B0.SetFocus
  loc_F3D822: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA44C0
  'Data Table: 598674
  Dim var_A8 As Variant
  loc_EA4440: Set var_88 = Me.DGParty
  loc_EA446A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4472: Set var_BC = Me.DGParty
  loc_EA44AE: Proc_6_138_106D6F8(Me.DGParty, global_64, CInt(4), Me.FGPoint)
  loc_EA44BC: Exit Sub
End Sub

Private Sub DgMR_UnknownEvent_9 'F57DA0
  'Data Table: 598674
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F57C80: On Error Goto loc_F57D9A
  loc_F57C92: Me.DgMR.Visible = False
  loc_F57CB1: If (Me.RecordCount > 0) Then
  loc_F57CF0:   Set var_B4 = Me.Txt
  loc_F57CF6:   Call 0.Method_DgMR_UnknownEvent_90 (CInt(7), var_B8)
  loc_F57CFE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F57D31:   var_B0 = Me.Fields.Item("Code")
  loc_F57D50:   Set var_B4 = Me.Txt
  loc_F57D56:   Call 0.Method_DgMR_UnknownEvent_90 (CInt(7), var_B8)
  loc_F57D5E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F57D74: End If
  loc_F57D7F: Set var_A8 = Me.Txt
  loc_F57D85: Call 0.Method_DgMR_UnknownEvent_90 (CInt(7))
  loc_F57D8D: var_B0.SetFocus
  loc_F57D99: Exit Sub
  loc_F57D9A: ' Referenced from: F57C80
  loc_F57D9A: Proc_6_60_E62BC4(var_B0)
  loc_F57D9F: Exit Sub
End Sub

Private Sub DgMR_UnknownEvent_1F 'EA4338
  'Data Table: 598674
  Dim var_A8 As Variant
  loc_EA42B8: Set var_88 = Me.DgMR
  loc_EA42E2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA42EA: Set var_BC = Me.DgMR
  loc_EA4326: Proc_6_138_106D6F8(Me.DgMR, global_76, CInt(7), Me.FGPoint)
  loc_EA4334: Exit Sub
  loc_EA4336: var_3F8 = Mid$(DgMR.DispID_1B(var_A8), DgMR.DispID_1D, )
End Sub

Private Sub DGVType_UnknownEvent_9 'FD6BDC
  'Data Table: 598674
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD6A1C: On Error Goto loc_FD6BD4
  loc_FD6A2E: Me.DGVType.Visible = False
  loc_FD6A4D: If (Me.RecordCount > 0) Then
  loc_FD6A9F:   Set var_CC = Me.Txt
  loc_FD6AA5:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD6AAD:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD6B05:   Set var_B4 = Me.DGVType
  loc_FD6B1C:   Set var_CC = Me.Txt
  loc_FD6B22:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD6B2A:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD6B82:   global_124 = CStr(Trim(CVar(Me.Fields.Item("NCat"))))
  loc_FD6B93: End If
  loc_FD6BB1: Set var_B0 = Me.Txt
  loc_FD6BB7: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD6BBF: var_B4.SetFocus
  loc_FD6BD3: Exit Sub
  loc_FD6BD4: ' Referenced from: FD6A1C
  loc_FD6BD4: Proc_6_60_E62BC4(var_B4)
  loc_FD6BD9: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_1F 'EA43FC
  'Data Table: 598674
  Dim var_A8 As Variant
  loc_EA437C: Set var_88 = Me.DGVType
  loc_EA43A6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA43AE: Set var_BC = Me.DGVType
  loc_EA43EA: Proc_6_138_106D6F8(Me.DGVType, global_80, CInt(1), Me.FGPoint)
  loc_EA43F8: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_9 'FED1D8
  'Data Table: 598674
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FECFFC: On Error Goto loc_FED1D1
  loc_FED00E: Me.DGGod.Visible = False
  loc_FED02D: If (Me.RecordCount > 0) Then
  loc_FED06A:   Set var_B4 = Me.TxtGrid
  loc_FED070:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B8)
  loc_FED078:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FED0A1:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FED0A9:   var_EC = CVar(CLng(&H16)) 'Long
  loc_FED0DC:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FED0E4:   Set var_B8 = Me.FGrid
  loc_FED0EA:   LateIdCallSt
  loc_FED119:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FED121:   var_EC = CVar(CLng(&H17)) 'Long
  loc_FED143:   var_B0 = Me.Fields.Item("Code")
  loc_FED154:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FED15C:   Set var_B8 = Me.FGrid
  loc_FED162:   LateIdCallSt
  loc_FED17E: End If
  loc_FED18A: Set var_A8 = Me.TxtGrid
  loc_FED190: Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FED198: var_A4 = var_B0.Visible
  loc_FED1AA: If (var_12E = &HFF) Then
  loc_FED1B6:   Set var_A8 = Me.TxtGrid
  loc_FED1BC:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FED1C4:   var_B0.SetFocus
  loc_FED1D0: End If
  loc_FED1D0: Exit Sub
  loc_FED1D1: ' Referenced from: FECFFC
  loc_FED1D1: Proc_6_60_E62BC4(var_11C, var_EC)
  loc_FED1D6: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_1F 'E9EF90
  'Data Table: 598674
  Dim var_A8 As Variant
  loc_E9EF14: Set var_88 = Me.DGGod
  loc_E9EF3E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9EF46: Set var_BC = Me.DGGod
  loc_E9EF80: Proc_6_138_106D6F8(Me.DGGod, global_84, 0, Me.FGPoint)
  loc_E9EF8E: Exit Sub
End Sub

Private Sub BillImage_Click() 'EA9634
  'Data Table: 598674
  Dim var_88 As Image
  loc_EA95B4: Set var_88 = Me.TopCtrl1
  loc_EA95BA: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_EA95F6: If ((CStr() = "Browse") And (Me.BillImage.Tag <> vbNullString)) Then
  loc_EA9614:   FrmImage.ImagePath = Me.BillImage.Tag
  loc_EA962D:   Call 0.Method_arg_2B0 (var_B4)
  loc_EA9632: End If
  loc_EA9632: Exit Sub
End Sub

Private Sub BillImage_DblClick() '105E600
  'Data Table: 598674
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105E3B8: On Error Goto loc_105E5A1
  loc_105E3BF: Set var_88 = Me.TopCtrl1
  loc_105E3C5: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_105E3D9: Set var_A0 = Me.TopCtrl1
  loc_105E3DF: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005((CStr() <> "Add"))
  loc_105E405: If ( And (CStr() <> "Edit")) Then
  loc_105E408:   Exit Sub
  loc_105E409: End If
  loc_105E419: Me.CDlg.Filter = "*.*"
  loc_105E431: Me.CDlg.Action = 1
  loc_105E443: Me.CDlg.FileName = 
  loc_105E44B: var_9C = CStr()
  loc_105E458: Me.BillImage.Tag = var_9C
  loc_105E474: Me.CDlg.FileName = 
  loc_105E47C: var_B0 = CVar(CStr()) 'String
  loc_105E482: var_E4 = Trim(var_B0)
  loc_105E48B: Set var_A0 = Me.CDlg
  loc_105E491: var_A0.FileName = 
  loc_105E4AF: var_F4 = Right(var_E4, 3)
  loc_105E4EA: var_D4 = "AVI"
  loc_105E518: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105E529:   var_C4 = "Invalid Format"
  loc_105E534:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105E547: Else
  loc_105E55E:   Set var_88 = Me.CDlg
  loc_105E564:   var_88.FileName = var_C4
  loc_105E56C:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105E576:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105E58B:   Me.BillImage.Picture = var_A0
  loc_105E5A0: End If
  loc_105E5A0: Exit Sub
  loc_105E5A1: ' Referenced from: 105E3B8
  loc_105E5A9: Set var_88 = Err()
  loc_105E5AF: Call 0.Method_arg_1C (var_1B0)
  loc_105E5C0: If (var_1B0 <> 0) Then
  loc_105E5D9:   Set var_88 = Err()
  loc_105E5DF:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105E5EA:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105E5FD: End If
  loc_105E5FD: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5CA44
  'Data Table: 598674
  loc_E5CA1F: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5CA22:   Exit Sub
  loc_E5CA23: End If
  loc_E5CA3A: global_248 = CInt(CLng(Me.GridSel.Row))
  loc_E5CA43: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 'FF77A8
  'Data Table: 598674
  Dim var_8C As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_10C As String
  Dim var_86 As Integer
  loc_FF75D9: If ((CLng(Me.GridSel.Col) <> 0) Or (global_248 = 0)) Then
  loc_FF75DC:   Exit Sub
  loc_FF75DD: End If
  loc_FF7639: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_FF763C:   Exit Sub
  loc_FF763D: End If
  loc_FF7646: global_250 = global_248
  loc_FF766E: For var_BA = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_88 = var_BA 'Integer
  loc_FF7687:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_FF76A2:   Me.GridSel.Col = 0
  loc_FF76BA:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FF76D4:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FF76E0:   var_CC = CVar(CLng(var_88)) 'Long
  loc_FF76E5:   var_EC = 0
  loc_FF76EE:   var_10C = vbNullString
  loc_FF76F8:   Set var_8C = Me.GridSel
  loc_FF76FE:   LateIdCallSt
  loc_FF770C: Next var_BA 'Integer
  loc_FF7718: var_CC = CVar(CLng(global_248)) 'Long
  loc_FF771D: var_EC = 0
  loc_FF7726: var_10C = "ü"
  loc_FF7730: Set var_8C = Me.GridSel
  loc_FF7736: LateIdCallSt
  loc_FF7757: Me.GridSel.Row = CVar(CLng(global_248))
  loc_FF7770: var_86 = CInt((UBound(global_244, 1) + 1))
  loc_FF7782: ReDim Preserve global_244(0 To CLng(var_86))
  loc_FF779C: global_244(CLng(var_86)) = global_248
  loc_FF77A5: Exit Sub
  loc_FF77A6: Set var_3B4 = 0
End Sub

Private Sub Command3_Click() 'E5C950
  'Data Table: 598674
  loc_E5C908: On Error Goto loc_E5C949
  loc_E5C934: Call Proc_338_85_11C334C(global_244, CByte(Me.Check1.Value))
  loc_E5C942: If (var_A0 = 0) Then
  loc_E5C945:   GoTo loc_E5C949
  loc_E5C948: End If
  loc_E5C948: Exit Sub
  loc_E5C949: ' Referenced from: E5C945
  loc_E5C949: ' Referenced from: E5C908
  loc_E5C949: Proc_6_60_E62BC4(var_A0)
  loc_E5C94E: Exit Sub
End Sub

Private Sub Form_Load() '1566C48
  'Data Table: 598674
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_B4 As Variant
  Dim var_D8 As TextBox
  Dim var_CC As Variant
  Dim var_D4 As Variant
  Dim var_B8 As String
  Dim var_E4 As String
  Dim unk_598706 As Connection15
  Dim var_F4 As Variant
  Dim unk_598691 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_90 As Recordset15
  Dim Me As Recordset15
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_148 As String
  loc_1565BC0: On Error Goto loc_1566C42
  loc_1565BCD: Set var_B4 = Me.TopCtrl1
  loc_1565BD3: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B("AEDP")
  loc_1565BE1: Call 0.Method_arg_50 (var_B8)
  loc_1565BE9: var_C8 = CVar(var_B8) 'String
  loc_1565BF1: Set var_B4 = Me.TopCtrl1
  loc_1565BF7: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030007(var_C8)
  loc_1565C12: ReDim Preserve global_192(0 To 0)
  loc_1565C2C: ReDim Preserve global_196(0 To 0)
  loc_1565C48: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_1565C5E: Set var_D4 = Me.Txt
  loc_1565C64: Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_1565C7F: Set var_B4 = Me.Txt
  loc_1565C85: Call 0.Method_Form_Load0 (CInt(4), var_CC)
  loc_1565C9D: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_1565CAC: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_1565CCC: Set var_B4 = Me.Txt
  loc_1565CD2: Call 0.Method_Form_Load0 (CInt(5), var_CC)
  loc_1565CF1: Me.DGPartyBillNo.Left = CVar(var_CC.Left)
  loc_1565D0D: Set var_D4 = Me.Txt
  loc_1565D13: Call 0.Method_Form_Load0 (CInt(5), var_D8)
  loc_1565D2E: Set var_B4 = Me.Txt
  loc_1565D34: Call 0.Method_Form_Load0 (CInt(5), var_CC)
  loc_1565D4C: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_1565D5B: Me.DGPartyBillNo.Top = CVar(var_CC.Left)
  loc_1565D7B: Set var_B4 = Me.Txt
  loc_1565D81: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_1565DA0: Me.DGVType.Left = CVar(var_CC.Left)
  loc_1565DBC: Set var_D4 = Me.Txt
  loc_1565DC2: Call 0.Method_Form_Load0 (CInt(1), var_D8)
  loc_1565DE3: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_1565DFB: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_1565E0A: Me.DGVType.Top = CVar(var_CC.Left)
  loc_1565E22: global_232 = MemVar_1F921A8
  loc_1565E4D: unk_598706.Execute "Select * from PrinterSetup where RestCode='" & global_56 & "'", var_C8, -1
  loc_1565E5E: Set global_184 = Me.Txt
  loc_1565E79: If (MemVar_1F920B8 <> 1) Then
  loc_1565E80:   Set var_B4 = Me.TopCtrl1
  loc_1565E86:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B(var_B4)
  loc_1565EB0:   var_F4 = CVar(Replace(CStr(var_C8), "D", "*", 1, -1, 0)) 'String
  loc_1565EB8:   Set var_CC = Me.TopCtrl1
  loc_1565EBE:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B(var_F4)
  loc_1565ED4: End If
  loc_1565EFB: unk_598691.Execute "Select RateInclTax from depart where code='" & global_56 & "'", var_C8, -1
  loc_1565F06: Set var_8C = var_B4
  loc_1565F2A: If (var_8C.RecordCount > 0) Then
  loc_1565F3C:   var_B4 = var_8C.Fields
  loc_1565F4C:   var_C8 = CVar(var_B4.Item("RateInclTax")) 'Address
  loc_1565F5E:   global_128 = Proc_6_38_E68A98(var_C8)
  loc_1565F6A: End If
  loc_1565F6F: Set var_8C = Nothing
  loc_1565F7F: global_56 = MemVar_1F92070 & "PURC"
  loc_1565F93: var_B0 = "Select E.ImportOptionInPurchase,E.AcFieldAlterable,E.AddModifyEntryInBackDate,E.PurChaseGodown,G.Name PurChaseGodownName,E.BarCodeFeatureInPurchase,E.ItemRateInPurchaseBillBasedOn From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_1565FA3: Proc_6_17_EAA2B0(var_C8, MemVar_1F92078, var_B0, var_134)
  loc_1565FAB: var_F4 = -1 & var_C8 
  loc_1565FC2: unk_598691.Execute CStr(var_F4 & vbNullString), var_B4, var_B4
  loc_1565FCD: Set var_90 = var_B4
  loc_1565FF5: If (var_90.RecordCount > 0) Then
  loc_1566035:   global_256 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("AddModifyEntryInBackDate"))))))
  loc_1566076:   global_252 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("AcFieldAlterable")))
  loc_15660B1:   global_224 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("PurchaseGodown")))
  loc_15660EC:   global_228 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("PurchaseGodownName")))
  loc_1566136:   global_180 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ItemRateInPurchaseBillBasedOn"))))))
  loc_1566177:   global_100 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("BarCodeFeatureInPurchase")))
  loc_15661BD:   If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("ImportOptionInPurchase"))) = "Yes") Then
  loc_15661CC:     Me.CmdImport.Visible = True
  loc_15661D4:   End If
  loc_15661D4: End If
  loc_15661DE: Set global_64 = New 
  loc_15661F0: Me.CursorLocation = 3
  loc_1566208: If (OpenAs = "Expense") Then
  loc_1566229:   var_B8 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName,GSTIN TINNo,Nature From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and (Subgroup.LOGSITE_CODE='" & MemVar_1F92078
  loc_156623A:   Me.Open CVar(OpenAs & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Customer','Supplier','Cash') Order by Name"), CVar(MemVar_1F92044), 3
  loc_1566248: Else
  loc_1566266:   var_B8 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName,GSTIN TINNo,Nature From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and (Subgroup.LOGSITE_CODE='" & MemVar_1F92078
  loc_1566277:   Me.Open CVar(OpenAs & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Supplier','Cash') Order by Name"), CVar(MemVar_1F92044), 3
  loc_1566282: End If
  loc_156628B: CVarUnk
  loc_1566290: VerifyVarObj
  loc_1566296: Set var_B4 = Me.DGParty
  loc_156629C: LateIdStAd
  loc_15662C6: Me.DGParty.CursorLocation = 3
  loc_15662E9: var_B8 = "Select PartyBillNo As PartyBillNoCd,PartyBillNo As PartyBillNoNm,Party from purch1 Where (purch1.LOGSITE_CODE='" & MemVar_1F92078
  loc_15662FA: Me.Open CVar(var_B8 & "' or purch1.LOGSITE_CODE='HO') "), CVar(MemVar_1F92044), 3
  loc_156630E: CVarUnk
  loc_1566313: VerifyVarObj
  loc_156631F: LateIdStAd
  loc_1566337: Set global_80 = New 
  loc_1566349: Me.DGPartyBillNo.CursorLocation = 3
  loc_1566361: If (OpenAs = "Expense") Then
  loc_156636A:   Call 0.Method_arg_54 ("Expense Voucher", Me.DGPartyBillNo, New, 1, -1, Me.DGPartyBillNo)
  loc_156636F: End If
  loc_1566382: If (OpenAs = "Expense") Then
  loc_15663AA:   var_E4 = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_15663C2:   Me.Open CVar(var_E4 & MemVar_1F92070 & "' and Ncat In ('EXR','EXC','CRN') Order by Description"), CVar(MemVar_1F92044), 3
  loc_15663D6: Else
  loc_15663FB:   var_E4 = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_1566409:   var_C8 = CVar(var_E4 & MemVar_1F92070 & "' and Category in('PurchBill') Order by Description") 'String
  loc_1566413:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_1566424: End If
  loc_156642D: CVarUnk
  loc_1566432: VerifyVarObj
  loc_156643E: LateIdStAd
  loc_1566470: unk_598691.Execute "Select ShortName,Code From Depart Where Code='" & MemVar_1F921A4 & "'", var_C8, -1
  loc_156647B: Set var_88 = Me.DGVType
  loc_156649F: If (var_88.RecordCount > 0) Then
  loc_15664D3:   global_236 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_15664F6:   var_B4 = var_88.Fields
  loc_15664FE:   var_CC = var_B4.Item("Code")
  loc_1566506:   var_C8 = var_CC.Value
  loc_1566515:   global_240 = CStr(var_C8)
  loc_1566526: End If
  loc_1566530: Set global_72 = New 
  loc_1566542: Me.CursorLocation = 3
  loc_156655A: If (OpenAs = "Expense") Then
  loc_1566568:   Proc_6_7_F25D88(var_C8, MemVar_1F920F4, var_B4, var_B4, global_80, 1, -1)
  loc_1566584:   var_B0 = "Select DISTINCT P.DocId as SearchCode,P.DocID,P.LogSite_Code,P.Site_Code From Purch1 P Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.VDATE>="
  loc_15665B3:   Me.Open var_B0 & var_C8 & " AND P.LogSite_Code='" & CVar(MemVar_1F92078) & "' aND v.Ncat In ('EXR','EXC','CRN') ORDER BY P.DOCID", CVar(MemVar_1F92044), 3
  loc_15665C8: Else
  loc_15665D3:   Proc_6_7_F25D88(var_C8, MemVar_1F920F4, 1, -1, 1)
  loc_15665EF:   var_B0 = "Select DISTINCT P.DocId as SearchCode,P.DocID,P.LogSite_Code,P.Site_Code From Purch1 P Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.VDATE>="
  loc_15665F7:   var_F4 = var_B0 & var_C8 
  loc_156661E:   Me.Open var_F4 & " AND P.LogSite_Code='" & CVar(MemVar_1F92078) & "' aND v.category in('PurchBill') ORDER BY P.DOCID", CVar(MemVar_1F92044), 3
  loc_1566630: End If
  loc_156663A: Set global_60 = New 
  loc_156664C: Me.Recordset15.CursorLocation = 3
  loc_156665C: If (global_100 = "Yes") Then
  loc_156667D:   var_B8 = "Select I.Code,I.BarCode,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join (Select Distinct Code,Name From Taxstru Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1566684:   var_E4 = var_B8 & "' or LOGSITE_CODE='HO') TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='"
  loc_1566692:   var_C8 = CVar(var_E4 & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And IC.CatType='Expense/Income' And I.ActiveYN<>'No' Order by I.BarCode") 'String
  loc_156669C:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_15666B0: Else
  loc_15666CE:   var_B8 = "Select I.Code,I.BarCode,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join (Select Distinct Code,Name From Taxstru Where LOGSITE_CODE='" & MemVar_1F92078
  loc_15666D5:   var_E4 = var_B8 & "' or LOGSITE_CODE='HO') TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='"
  loc_15666E3:   var_C8 = CVar(var_E4 & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And IC.CatType='Expense/Income' And I.ActiveYN<>'No' Order by I.Name") 'String
  loc_15666ED:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_15666FE: End If
  loc_1566707: CVarUnk
  loc_156670C: VerifyVarObj
  loc_1566712: Set var_B4 = Me.DGItem
  loc_1566718: LateIdStAd
  loc_1566730: Set global_84 = New 
  loc_1566742: Me.DGItem.CursorLocation = 3
  loc_156676C: var_C8 = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1566776: Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_156678A: CVarUnk
  loc_156678F: VerifyVarObj
  loc_1566795: Set var_B4 = Me.DGGod
  loc_156679B: LateIdStAd
  loc_15667B3: Set global_216 = New 
  loc_15667C8: Me.DGGod.CursorLocation = 3
  loc_15667EB: var_B8 = "SELECT Distinct TaxStru.Code as Code, TaxStru.Name as name FROM TaxStru INNER JOIN ItemCatMast ON TaxStru.Code = ItemCatMast.TaxStru where (TaxStru.LOGSITE_CODE='" & MemVar_1F92078
  loc_15667F2: var_E4 = var_B8 & "' or TaxStru.LOGSITE_CODE='HO') and ItemCatMast.RestCode='"
  loc_156680D: Me.Recordset15.Open CVar(var_E4 & MemVar_1F92078 & "PURC' order by taxstru.name "), CVar(MemVar_1F92044), 2
  loc_156682A: CVarUnk
  loc_156682F: VerifyVarObj
  loc_1566835: Set var_B4 = Me.DGTaxStru
  loc_156683B: LateIdStAd
  loc_1566868: Me.DGTaxStru.CursorLocation = 3
  loc_1566892: var_C8 = CVar("Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','280','040') Order by Name") 'String
  loc_156689F: Me.Recordset15.Open var_C8, CVar(MemVar_1F92044), 2
  loc_15668B6: CVarUnk
  loc_15668BB: VerifyVarObj
  loc_15668C1: Set var_B4 = Me.DGSaleAc
  loc_15668C7: LateIdStAd
  loc_1566908: Call 0.Method_arg_50 (var_E4, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_C8, -1, var_B4, var_CC, 0, var_D4)
  loc_156692F: unk_598691.Execute var_F4 & var_E4 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_B4, New
  loc_1566937: 3 = var_B4.Fields
  loc_156693F: var_B4 = var_CC.Item(-1)
  loc_1566947: global_216 = var_D4.Value
  loc_1566978: If (var_F4 > 0) Then
  loc_15669C1:   Call 0.Method_arg_50 (var_E4, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_C8, -1, var_B4, var_CC, 0)
  loc_15669E8:   unk_598691.Execute var_D4 & var_E4 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_F4, "SearchCode='"
  loc_15669F0:   0 = var_B4.Fields
  loc_15669F8:   var_148 = var_CC.Item(1)
  loc_1566A00:    = var_D4.Value
  loc_1566A1F:   Me.Find CStr(var_F4 & "'"), , 
  loc_1566A4B: End If
  loc_1566A62: If (Me.RecordCount > 0) Then
  loc_1566A79:   If (Me.EOF = &HFF) Then
  loc_1566A82:     Me.MoveLast
  loc_1566A87:   End If
  loc_1566A87: End If
  loc_1566A92: If (global_100 = "Yes") Then
  loc_1566AA1:   Me.TxtBarCode.Visible = True
  loc_1566AB4:   Set var_B4 = Me.Label1
  loc_1566ABA:   Call 0.Method_Form_Load0 (&HB, var_CC)
  loc_1566AC2:   var_CC.Visible = True
  loc_1566ACE: End If
  loc_1566AD7: Call 0.Method_arg_160 (var_B4)
  loc_1566AE5: Call 0.Method_arg_164 (var_B4)
  loc_1566B10: Call Proc_338_93_FEC938(Proc_5_1_100CB50("INI", Me))
  loc_1566B2A: Me.LblUser.Left = CDbl(500)
  loc_1566B41: Me.LblUser.Top = CDbl(7800)
  loc_1566B58: Me.LblLDt.Top = CDbl(8160)
  loc_1566B6F: Me.LblLDt.Left = CDbl(500)
  loc_1566B7E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1566B96: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1566BAC: Me.FrInVoiceType.BackColor = CLng(MemVar_1F921B0)
  loc_1566BC3: Set var_B4 = Me.Opt
  loc_1566BC9: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_1566BD1: var_CC.BackColor = CLng(MemVar_1F921B0)
  loc_1566BEC: Set var_B4 = Me.Opt
  loc_1566BF2: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_1566BFA: var_CC.BackColor = CLng(MemVar_1F921B0)
  loc_1566C15: Set var_B4 = Me.Opt
  loc_1566C1B: Call 0.Method_Form_Load0 (CInt(2), var_CC)
  loc_1566C23: var_CC.BackColor = CLng(MemVar_1F921B0)
  loc_1566C2F: Call Proc_338_87_148AA24(global_72)
  loc_1566C34: Call Proc_338_90_1A01BB8()
  loc_1566C3E: Set var_90 = Nothing
  loc_1566C41: Exit Sub
  loc_1566C42: ' Referenced from: 1565BC0
  loc_1566C42: Proc_6_60_E62BC4()
  loc_1566C47: Exit Sub
End Sub

Private Sub Form_Resize() 'ED0D78
  'Data Table: 598674
  Dim var_8C As Label
  loc_ED0CD6: Call 0.Method_arg_50 (var_88)
  loc_ED0CE8: Me.LblFormCaption.Caption = var_88
  loc_ED0D01: Me.LblFormCaption.Left = CDbl(0)
  loc_ED0D0D: Set var_A0 = Me.TopCtrl1
  loc_ED0D13: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010006()
  loc_ED0D20: Set var_8C = Me.TopCtrl1
  loc_ED0D26: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010004()
  loc_ED0D40: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED0D5B: Call 0.Method_arg_100 (var_B8)
  loc_ED0D6D: Me.LblFormCaption.Width = var_B8
  loc_ED0D75: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EAF288
  'Data Table: 598674
  loc_EAF1FB: Set global_60 = Nothing
  loc_EAF20D: Set global_76 = Nothing
  loc_EAF219: global_52 = 0
  loc_EAF227: Set global_184 = Nothing
  loc_EAF239: Set global_64 = Nothing
  loc_EAF24B: Set global_80 = Nothing
  loc_EAF25D: Set global_84 = Nothing
  loc_EAF26F: Set global_216 = Nothing
  loc_EAF284: Exit Sub
End Sub

Private Sub Form_Activate() 'F30430
  'Data Table: 598674
  Dim var_D0 As Integer
  Dim var_8C As String
  Dim unk_598691 As Connection15
  Dim var_BC As Variant
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  loc_F30342: var_D0 = 0
  loc_F3035F: var_8C = "Select Count(*) From SundryType WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_F3037D: unk_598691.Execute var_8C & "') and V_Type='" & MemVar_1F92078 & "PURC'", var_B8, -1
  loc_F30385: var_BC = var_BC.Fields
  loc_F3038D: var_D0 = var_C0.Item(var_C0)
  loc_F30395: var_D4 = var_D4.Value
  loc_F303C0: If (var_E4 <= 0) Then
  loc_F303DC:   MsgBox("Voucher wise Sundry not defined", 0, var_E4, var_104, var_124)
  loc_F303F9:   Me.Global.Unload Me
  loc_F30401:   Exit Sub
  loc_F30402: End If
  loc_F30408: Call 0.Method_arg_50 (var_8C)
  loc_F3041A: Me.LblFormCaption.Caption = var_8C
  loc_F3042A: Set var_88 = Nothing
  loc_F3042D: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E241AC
  'Data Table: 598674
  loc_E24191: If (global_52 = &HFF) Then
  loc_E241A1:   Me.Global.Unload Me
  loc_E241A9: End If
  loc_E241A9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EDF0AC
  'Data Table: 598674
  loc_EDEFF8: On Error Goto loc_EDF0A4
  loc_EDF029: If (((global_100 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_EDF036:   Me.TxtBarCode.SetFocus
  loc_EDF03E: End If
  loc_EDF056: Proc_6_88_FE81B4(Me, KeyCode)
  loc_EDF09B: If CBool((Ucase(Chr(CLng(KeyCode))) = "E") And (Shift = 4)) Then
  loc_EDF09E:   Call Command1_Click()
  loc_EDF0A3: End If
  loc_EDF0A3: Exit Sub
  loc_EDF0A4: ' Referenced from: EDEFF8
  loc_EDF0A4: Proc_6_60_E62BC4(Shift)
  loc_EDF0A9: Exit Sub
End Sub

Private Sub DGSaleAc_UnknownEvent_9 'FF3294
  'Data Table: 598674
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FF30AC: On Error Goto loc_FF328D
  loc_FF30B8: Set var_A8 = Me.DGSaleAc
  loc_FF30BE: var_A8.Visible = False
  loc_FF30E0: If (Me.var_A8.RecordCount > 0) Then
  loc_FF3120:   Set var_B4 = Me.TxtGrid
  loc_FF3126:   Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B8)
  loc_FF312E:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FF314E:   var_C8 = Me.FGrid.Row
  loc_FF3157:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF315F:   var_EC = CVar(CLng(&H1B)) 'Long
  loc_FF3195:   var_11C = CVar(CStr(Me.var_C8.Fields.Item("Name").Value)) 'String
  loc_FF319D:   Set var_B8 = Me.FGrid
  loc_FF31A3:   LateIdCallSt
  loc_FF31C9:   var_C8 = Me.FGrid.Row
  loc_FF31D2:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF31DA:   var_EC = CVar(CLng(&H1C)) 'Long
  loc_FF31FF:   var_B0 = Me.var_C8.Fields.Item("Code")
  loc_FF3210:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FF3218:   Set var_B8 = Me.FGrid
  loc_FF321E:   LateIdCallSt
  loc_FF323A: End If
  loc_FF3246: Set var_A8 = Me.TxtGrid
  loc_FF324C: Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FF3254: var_A4 = var_B0.Visible
  loc_FF3266: If (var_12E = &HFF) Then
  loc_FF3272:   Set var_A8 = Me.TxtGrid
  loc_FF3278:   Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FF3280:   var_B0.SetFocus
  loc_FF328C: End If
  loc_FF328C: Exit Sub
  loc_FF328D: ' Referenced from: FF30AC
  loc_FF328D: Proc_6_60_E62BC4(var_11C, var_EC)
  loc_FF3292: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E62334
  'Data Table: 598674
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E622FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E62312: Set var_A8 = Me.TxtGrid
  loc_E62318: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E62320: var_AC.Visible = False
  loc_E6232C: Call Proc_338_94_FDE1A4()
  loc_E62331: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E660A8
  'Data Table: 598674
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66064: Set var_88 = Me.TxtGrid
  loc_E6606A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66084: If (var_8C.Visible = 0) Then
  loc_E6609D:   Me.FGrid.BackColorSel = CVar(CLng(global_104))
  loc_E660A5: End If
  loc_E660A5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E00364
  'Data Table: 598674
  Dim var_3A0 As Integer
  loc_E0035C: Call Proc_338_88_F70AAC()
  loc_E00361: Exit Sub
  loc_E00362: var_3A0 = 
End Sub

Private Sub FGrid_UnknownEvent_A '12BF780
  'Data Table: 598674
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_12BF124: Set var_88 = Me.TopCtrl1
  loc_12BF12A: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_12BF16F: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_12BF178:   Call Form_KeyDown(KeyCode, Shift)
  loc_12BF17D: End If
  loc_12BF181: Set var_88 = Me.TopCtrl1
  loc_12BF187: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_12BF1A0: If (CStr() = "Browse") Then
  loc_12BF1A3:   Exit Sub
  loc_12BF1A4: End If
  loc_12BF218: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_12BF231:   Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12BF241:   var_9C = "+{Tab}"
  loc_12BF247:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_12BF251:   KeyCode = 0
  loc_12BF257: Else
  loc_12BF261:   var_B0 = Me.FGrid.Rows
  loc_12BF2AE:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12BF2C7:     Me.FGrid.CellBackColor = CVar(CLng(global_104))
  loc_12BF2DD:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_12BF2E7:     KeyCode = 0
  loc_12BF2EA:   End If
  loc_12BF2EA: End If
  loc_12BF2F0: global_144 = KeyCode
  loc_12BF316: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12BF33A: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_12BF350:   var_EC = CLng(Me.FGrid.Col)
  loc_12BF360:   If (var_EC = CLng(2)) Then
  loc_12BF376:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF38E:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BF393:     var_11C = vbNullString
  loc_12BF39D:     Set var_B4 = Me.FGrid
  loc_12BF3A3:     LateIdCallSt
  loc_12BF3CE:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF3D6:     var_FC = CVar(CLng(&HC)) 'Long
  loc_12BF3DB:     var_11C = vbNullString
  loc_12BF3E5:     Set var_A0 = Me.FGrid
  loc_12BF3EB:     LateIdCallSt
  loc_12BF410:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF418:     var_FC = CVar(CLng(5)) 'Long
  loc_12BF41D:     var_11C = vbNullString
  loc_12BF427:     Set var_A0 = Me.FGrid
  loc_12BF42D:     LateIdCallSt
  loc_12BF442:   Else
  loc_12BF449:     If Not (var_EC = CLng(1)) Then
  loc_12BF453:       If (var_EC = CLng(5)) Then
  loc_12BF456:       End If
  loc_12BF469:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF481:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BF486:       var_11C = vbNullString
  loc_12BF490:       Set var_B4 = Me.FGrid
  loc_12BF496:       LateIdCallSt
  loc_12BF4B1:     Else
  loc_12BF4B8:       If (var_EC = CLng(9)) Then
  loc_12BF4CE:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF4D6:         var_FC = CVar(CLng(&HE)) 'Long
  loc_12BF509:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12BF51F:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF537:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BF53C:           var_11C = vbNullString
  loc_12BF546:           Set var_B4 = Me.FGrid
  loc_12BF54C:           LateIdCallSt
  loc_12BF564:         End If
  loc_12BF567:       Else
  loc_12BF56E:         If (var_EC = CLng(&HB)) Then
  loc_12BF584:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF58C:           var_FC = CVar(CLng(&HE)) 'Long
  loc_12BF5BF:           If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12BF5D5:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF5ED:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BF5F2:             var_11C = vbNullString
  loc_12BF5FC:             Set var_B4 = Me.FGrid
  loc_12BF602:             LateIdCallSt
  loc_12BF61A:           End If
  loc_12BF61D:         Else
  loc_12BF624:           If (var_EC = CLng(&H19)) Then
  loc_12BF63A:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF652:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BF657:             var_11C = vbNullString
  loc_12BF661:             Set var_B4 = Me.FGrid
  loc_12BF667:             LateIdCallSt
  loc_12BF692:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF69A:             var_FC = CVar(CLng(&H1A)) 'Long
  loc_12BF69F:             var_11C = vbNullString
  loc_12BF6A9:             Set var_A0 = Me.FGrid
  loc_12BF6AF:             LateIdCallSt
  loc_12BF6C4:           Else
  loc_12BF6CB:             If (var_EC = CLng(&H1B)) Then
  loc_12BF6E1:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF6F9:               var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BF6FE:               var_11C = vbNullString
  loc_12BF708:               Set var_B4 = Me.FGrid
  loc_12BF70E:               LateIdCallSt
  loc_12BF739:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BF741:               var_FC = CVar(CLng(&H1C)) 'Long
  loc_12BF746:               var_11C = vbNullString
  loc_12BF750:               Set var_A0 = Me.FGrid
  loc_12BF756:               LateIdCallSt
  loc_12BF768:             End If
  loc_12BF768:           End If
  loc_12BF768:         End If
  loc_12BF768:       End If
  loc_12BF768:     End If
  loc_12BF768:   End If
  loc_12BF768: End If
  loc_12BF76E: If (KeyCode = &HD) Then
  loc_12BF776:   global_146 = 0
  loc_12BF779: End If
  loc_12BF77B: KeyCode = 0
  loc_12BF77E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E11018
  'Data Table: 598674
  loc_E11009: Call FGrid_UnknownEvent_C()
  loc_E11013: global_146 = 0
  loc_E11016: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '125AE3C
  'Data Table: 598674
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  loc_125A8DC: Set var_8C = Me.TopCtrl1
  loc_125A8E2: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_125A8FB: If (CStr() = "Browse") Then
  loc_125A8FE:   Exit Sub
  loc_125A8FF: End If
  loc_125A912: var_A4 = CLng(Me.FGrid.Col)
  loc_125A922: If (var_A4 = CLng(&H16)) Then
  loc_125A956:   var_CE = Asc(CStr(Ucase(Chr(CLng(KeyCode)))))
  loc_125A98C:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_125A9AB: Else
  loc_125A9B2:   If (var_A4 = CLng(2)) Then
  loc_125AA1C:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))))
  loc_125AA3B:   Else
  loc_125AA42:     If (var_A4 = CLng(9)) Then
  loc_125AA83:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_125AA98:     Else
  loc_125AA9F:       If (var_A4 = CLng(&HB)) Then
  loc_125AAE0:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_125AAF5:       Else
  loc_125AAFC:         If (var_A4 = CLng(5)) Then
  loc_125AB3D:           Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_125AB52:         Else
  loc_125AB59:           If (var_A4 = CLng(6)) Then
  loc_125AB6F:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125AB77:             var_100 = CVar(CLng(&HE)) 'Long
  loc_125ABB9:             If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_125ABCF:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125ABD7:               var_100 = CVar(CLng(6)) 'Long
  loc_125AC4E:               Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0, Val(CStr(Me.FGrid.TextMatrix))))
  loc_125AC60:             End If
  loc_125AC63:           Else
  loc_125AC6A:             If (var_A4 = CLng(1)) Then
  loc_125AC88:               If (((KeyCode >= &H41) And (KeyCode <= &H5A)) Or ((KeyCode >= &H61) And (KeyCode <= &H7A))) Then
  loc_125AC9D:                 Me.FGrid.Col = CVar(CLng(2))
  loc_125ACA5:               End If
  loc_125ACE3:               Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode, 0, var_100)
  loc_125ACF8:             Else
  loc_125ACFF:               If (var_A4 = CLng(&H19)) Then
  loc_125AD69:                 Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))), 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))))
  loc_125AD88:               Else
  loc_125AD8F:                 If (var_A4 = CLng(&H1B)) Then
  loc_125AD9D:                   If (global_252 = "Yes") Then
  loc_125AE07:                     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))), 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))))
  loc_125AE23:                   End If
  loc_125AE23:                 End If
  loc_125AE23:               End If
  loc_125AE23:             End If
  loc_125AE23:           End If
  loc_125AE23:         End If
  loc_125AE23:       End If
  loc_125AE23:     End If
  loc_125AE23:   End If
  loc_125AE23: End If
  loc_125AE2D: If (CLng(KeyCode) <> &HD) Then
  loc_125AE35:   global_146 = &HFF
  loc_125AE38: End If
  loc_125AE38: Exit Sub
  loc_125AE39: BranchFVar 2303
End Sub

Private Sub FGrid_UnknownEvent_D 'FF4218
  'Data Table: 598674
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF4038: Set var_90 = Me.TopCtrl1
  loc_FF403E: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_FF4057: If (CStr() = "Browse") Then
  loc_FF405A:   Exit Sub
  loc_FF405B: End If
  loc_FF4078: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF407B:   Exit Sub
  loc_FF407C: End If
  loc_FF408D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FF40AF:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF40E9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF410B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF4121:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF412A:         Set var_118 = Me.FGrid
  loc_FF4145:       Else
  loc_FF4158:         Me.FGrid.Rows = 1
  loc_FF417E:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FF4186:         Set var_118 = Me.FGrid
  loc_FF41B3:         Me.FGrid.FixedRows = 1
  loc_FF41BB:       End If
  loc_FF41C0:       Call Proc_338_101_17C5094(&H32, FGrid.DispID_10000, var_A0)
  loc_FF41C5:     End If
  loc_FF41C8:   Else
  loc_FF41E9:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF41F9:   End If
  loc_FF41FD:   Set var_90 = Me.FGrid
  loc_FF420E: End If
  loc_FF4213: Set var_8C = Nothing
  loc_FF4216: Exit Sub
  loc_FF4217: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44054
  'Data Table: 598674
  Dim var_8C As TextBox
  loc_E44028: Call Proc_338_94_FDE1A4()
  loc_E44038: Set var_88 = Me.TxtGrid
  loc_E4403E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E44046: var_8C.Visible = False
  loc_E44052: Exit Sub
End Sub

Private Sub Command1_Click() 'E94A58
  'Data Table: 598674
  loc_E949E8: Call TopCtrl1_UnknownEvent_D()
  loc_E949ED: Call TopCtrl1_UnknownEvent_16()
  loc_E949F6: Set var_88 = Me.TopCtrl1
  loc_E949FC: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030011()
  loc_E94A0E: If (CBool() = &HFF) Then
  loc_E94A11:   Call TopCtrl1_UnknownEvent_12()
  loc_E94A16:   Call Command1_Click()
  loc_E94A1E: Else
  loc_E94A24:   Call 0.Method_arg_50 (var_9C)
  loc_E94A45:   MsgBox("Updation Completed.", &H40, CVar(var_9C), var_DC, var_FC)
  loc_E94A55:   Exit Sub
  loc_E94A56: End If
  loc_E94A56: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'FF393C
  'Data Table: 598674
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FF3754: On Error Goto loc_FF3935
  loc_FF3760: Set var_A8 = Me.DGTaxStru
  loc_FF3766: var_A8.Visible = False
  loc_FF3788: If (Me.var_A8.RecordCount > 0) Then
  loc_FF37C8:   Set var_B4 = Me.TxtGrid
  loc_FF37CE:   Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B8)
  loc_FF37D6:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FF37F6:   var_C8 = Me.FGrid.Row
  loc_FF37FF:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF3807:   var_EC = CVar(CLng(&H19)) 'Long
  loc_FF383D:   var_11C = CVar(CStr(Me.var_C8.Fields.Item("Name").Value)) 'String
  loc_FF3845:   Set var_B8 = Me.FGrid
  loc_FF384B:   LateIdCallSt
  loc_FF3871:   var_C8 = Me.FGrid.Row
  loc_FF387A:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF3882:   var_EC = CVar(CLng(&H1A)) 'Long
  loc_FF38A7:   var_B0 = Me.var_C8.Fields.Item("Code")
  loc_FF38B8:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FF38C0:   Set var_B8 = Me.FGrid
  loc_FF38C6:   LateIdCallSt
  loc_FF38E2: End If
  loc_FF38EE: Set var_A8 = Me.TxtGrid
  loc_FF38F4: Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FF38FC: var_A4 = var_B0.Visible
  loc_FF390E: If (var_12E = &HFF) Then
  loc_FF391A:   Set var_A8 = Me.TxtGrid
  loc_FF3920:   Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FF3928:   var_B0.SetFocus
  loc_FF3934: End If
  loc_FF3934: Exit Sub
  loc_FF3935: ' Referenced from: FF3754
  loc_FF3935: Proc_6_60_E62BC4(var_11C, var_EC)
  loc_FF393A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '101BAB0
  'Data Table: 598674
  Dim var_9C As Variant
  Dim var_90 As String
  Dim var_94 As Variant
  loc_101B88C: On Error Goto loc_101BAA9
  loc_101B8B2: Call Proc_338_93_FEC938(Proc_5_1_100CB50("ADD", Me))
  loc_101B8BD: Call Proc_338_92_1021EB8(global_72)
  loc_101B8CF: Set var_94 = Me.Opt
  loc_101B8D5: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_9C)
  loc_101B8DD: var_9C.Enabled = True
  loc_101B8F6: Set var_94 = Me.Opt
  loc_101B8FC: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_101B904: var_9C.Enabled = True
  loc_101B91D: Set var_94 = Me.Opt
  loc_101B923: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C)
  loc_101B92B: var_9C.Enabled = True
  loc_101B944: Set var_94 = Me.Opt
  loc_101B94A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_101B952: var_9C.Value = True
  loc_101B965: Call Opt_GotFocus()
  loc_101B96F: var_90 = CStr(MemVar_1F920EC)
  loc_101B97D: Set var_94 = Me.Txt
  loc_101B983: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_101B98B: var_9C.Text = var_90
  loc_101B9AC: Me.FGrid.Col = CVar(CLng(1))
  loc_101B9BA: Call Proc_338_96_10E9D58(MemVar_1F92044, var_90)
  loc_101B9CD: Set var_94 = Me.Txt
  loc_101B9D3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_9C)
  loc_101B9F8: Set var_94 = Me.Txt
  loc_101B9FE: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_101BA14: Call Proc_338_100_17D5938(CDate(var_90))
  loc_101BA27: Set var_94 = Me.TopCtrl1
  loc_101BA2D: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(CInt(1))
  loc_101BA46: If (CStr() = "Add") Then
  loc_101BA54:   Set var_94 = Me.Txt
  loc_101BA5A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_101BA62:   var_9C.SetFocus
  loc_101BA6E: End If
  loc_101BA73: Set var_8C = Nothing
  loc_101BA7B: Set var_88 = Nothing
  loc_101BA8B: Me.LblUser.Caption = vbNullString
  loc_101BAA0: Me.LblLDt.Caption = vbNullString
  loc_101BAA8: Exit Sub
  loc_101BAA9: ' Referenced from: 101B88C
  loc_101BAA9: Proc_6_60_E62BC4(var_9C)
  loc_101BAAE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9EEC8
  'Data Table: 598674
  loc_E9EE50: On Error Goto loc_E9EEC1
  loc_E9EE8A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9EEB0:   Call Proc_338_93_FEC938(Proc_5_1_100CB50("INI", Me))
  loc_E9EEBB:   Call Proc_338_90_1A01BB8(global_72)
  loc_E9EEC0: End If
  loc_E9EEC0: Exit Sub
  loc_E9EEC1: ' Referenced from: E9EE50
  loc_E9EEC1: Proc_6_60_E62BC4()
  loc_E9EEC6: Exit Sub
  loc_E9EEC7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13E767C
  'Data Table: 598674
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As Variant
  Dim unk_598691 As Connection15
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_13E6CA0: On Error Goto loc_13E762D
  loc_13E6CB1: If (Proc_183_56_FE8818(global_72) = &HFF) Then
  loc_13E6CB4:   Exit Sub
  loc_13E6CB5: End If
  loc_13E6CEC: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_13E6D00:   var_94 = Me.Bookmark 'Variant
  loc_13E6D36:   var_134 = "Guest Folio"
  loc_13E6D7E:   If (Proc_6_108_1010FEC(MemVar_1F92044, "PayCharge", "DocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_13E6D81:     Exit Sub
  loc_13E6D82:   End If
  loc_13E6D8B:   unk_598691.BeginTrans var_130
  loc_13E6DE6:   unk_598691.Execute CStr("Delete From Purch2 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E6E58:   unk_598691.Execute CStr("Delete From Purch1 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E6ECA:   unk_598691.Execute CStr("Delete From Sale2 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E6F15:   var_120 = Me.Fields.Item("SearchCode")
  loc_13E6F1D:   var_B8 = var_120.Value
  loc_13E6F2E:   var_F8 = "Delete From SunTran where docid='" & var_B8 & "'" 
  loc_13E6F32:   var_124 = CStr(var_F8)
  loc_13E6F3C:   unk_598691.Execute var_124, var_118, -1
  loc_13E6F76:   Set var_11C = Me.Txt
  loc_13E6F7C:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Stock Where DocID='", var_B8, -1, var_13C)
  loc_13E6F84:   var_13C = var_120.Text
  loc_13E6F9D:   unk_598691.Execute var_13C & var_124 & "'", var_13C, var_13C
  loc_13E6FD5:   Set var_11C = Me.Txt
  loc_13E6FDB:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Ledger where DocID='", var_B8)
  loc_13E6FE3:   -1 = var_120.Text
  loc_13E6FF3:   var_12C = var_13C & var_124 & "'"
  loc_13E6FFC:   unk_598691.Execute var_12C, 0, var_134
  loc_13E7045:   var_168 = 0
  loc_13E7058:   var_160 = 0
  loc_13E7063:   var_15C = 0
  loc_13E7076:   var_154 = 0
  loc_13E7081:   var_150 = 0
  loc_13E7094:   var_148 = 0
  loc_13E70DD:   Proc_154_5_10E33A4(MemVar_1F92044, "PURCH1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E7134:   var_168 = 0
  loc_13E7147:   var_160 = 0
  loc_13E7152:   var_15C = 0
  loc_13E7165:   var_154 = 0
  loc_13E7170:   var_150 = 0
  loc_13E7183:   var_148 = 0
  loc_13E71CC:   Proc_154_5_10E33A4(MemVar_1F92044, "PURCH2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E7223:   var_168 = 0
  loc_13E7236:   var_160 = 0
  loc_13E7241:   var_15C = 0
  loc_13E7254:   var_154 = 0
  loc_13E725F:   var_150 = 0
  loc_13E7272:   var_148 = 0
  loc_13E72BB:   Proc_154_5_10E33A4(MemVar_1F92044, "SALE2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E7300:   var_120 = Me.Fields.Item("SearchCode")
  loc_13E7312:   var_168 = 0
  loc_13E7325:   var_160 = 0
  loc_13E7330:   var_15C = 0
  loc_13E7343:   var_154 = 0
  loc_13E73AA:   Proc_154_5_10E33A4(MemVar_1F92044, "SUNTRAN", "DocId", &HC8, CStr(var_120.Value), 0, 0, 0)
  loc_13E73E0:   Set var_11C = Me.Txt
  loc_13E73E6:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_12C, 0, 0, 0)
  loc_13E73EE:   var_154 = var_120.Text
  loc_13E73F8:   var_16C = 0
  loc_13E740B:   var_168 = 0
  loc_13E7416:   var_160 = 0
  loc_13E7429:   var_15C = 0
  loc_13E748F:   Proc_154_5_10E33A4(MemVar_1F92044, "STOCK", "DocId", &HC8, var_12C, 0, 0, 0)
  loc_13E74C2:   Set var_11C = Me.Txt
  loc_13E74C8:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_12C, 0, 0, 0)
  loc_13E74D0:   var_15C = var_120.Text
  loc_13E74DA:   var_16C = 0
  loc_13E74ED:   var_168 = 0
  loc_13E74F8:   var_160 = 0
  loc_13E750B:   var_15C = 0
  loc_13E7516:   var_154 = 0
  loc_13E7529:   var_150 = 0
  loc_13E7568:   var_124 = "LEDGER"
  loc_13E7571:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocId", &HC8, var_12C, 0, 0, 0)
  loc_13E759C:   unk_598691.CommitTrans
  loc_13E75AC:   Me.Requery -1
  loc_13E75CC:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_13E75D9:     Me.Bookmark = var_94
  loc_13E75E1:   Else
  loc_13E75F5:     If (Me.EOF = 0) Then
  loc_13E75FE:       Me.MoveLast
  loc_13E7603:     End If
  loc_13E7603:   End If
  loc_13E7603:   Call Proc_338_90_1A01BB8(var_150, 0, var_154, var_15C)
  loc_13E7624:   Proc_5_0_110649C(&HFF, Me, global_72, 0)
  loc_13E762C: End If
  loc_13E762C: Exit Sub
  loc_13E762D: ' Referenced from: 13E6CA0
  loc_13E7633: unk_598691.RollbackTrans
  loc_13E7640: Set var_11C = Err()
  loc_13E7646: Call 0.Method_arg_2C (var_124, 0, var_160)
  loc_13E7667: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F8, var_118)
  loc_13E767A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '119B6E0
  'Data Table: 598674
  Dim var_90 As TextBox
  Dim var_C4 As Variant
  Dim var_94 As String
  Dim var_10C As String
  Dim var_124 As String
  Dim unk_598691 As Connection15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_340 As Variant
  loc_119B2F8: On Error Goto loc_119B6D8
  loc_119B31B: Set var_8C = Me.Txt
  loc_119B321: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_90)
  loc_119B329: var_94 = var_90.Text
  loc_119B342: If (((global_256 = "No") And (MemVar_1F920B8 <> 1)) And (CDate(var_94) < MemVar_1F920EC)) Then
  loc_119B34B:   Call 0.Method_arg_50 (var_94)
  loc_119B366:   var_B4 = "Back Date Entry Blocked."
  loc_119B36C:   MsgBox(var_B4, &H10, CVar(var_94), var_E4, var_104)
  loc_119B37C:   Exit Sub
  loc_119B37D: End If
  loc_119B38B: If (Proc_183_55_FE7900(global_72) = &HFF) Then
  loc_119B38E:   Exit Sub
  loc_119B38F: End If
  loc_119B3B2: Call Proc_338_93_FEC938(Proc_5_1_100CB50("EDIT", Me))
  loc_119B3D4: If ((global_124 = "PBC") Or (global_124 = "EXC")) Then
  loc_119B3E1:   Set global_76 = New 
  loc_119B3F3:   Me.Recordset15.CursorLocation = 3
  loc_119B3FF:   var_94 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_119B406:   var_10C = var_94 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_119B429:   var_124 = var_10C & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_119B440:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90, var_120)
  loc_119B448:   var_124 = var_90.Tag
  loc_119B458:   var_88 = global_72 & var_120 & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.AccQty,0)) > 0 "
  loc_119B48D:   unk_598691.Execute var_88, var_B4, -1
  loc_119B49E:   Set global_76 = Me.Txt
  loc_119B4B5:   CVarUnk
  loc_119B4BA:   VerifyVarObj
  loc_119B4C0:   Set var_8C = Me.DgMR
  loc_119B4C6:   LateIdStAd
  loc_119B4D4: End If
  loc_119B4D4: Call Proc_338_109_1132EDC(var_8C, global_76)
  loc_119B4E7: Set var_8C = Me.Txt
  loc_119B4ED: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_90)
  loc_119B501: Call Proc_338_108_E438F0(var_90.Text)
  loc_119B524: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_90)
  loc_119B53A: Call Proc_338_100_17D5938(CDate(var_90.Text))
  loc_119B549: Call Proc_338_90_1A01BB8(Me.Txt)
  loc_119B55B: Set var_8C = Me.Txt
  loc_119B561: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_90)
  loc_119B569: var_90.Enabled = False
  loc_119B582: Set var_8C = Me.Txt
  loc_119B588: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_90)
  loc_119B590: var_90.Enabled = False
  loc_119B5A9: Set var_8C = Me.Txt
  loc_119B5AF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90)
  loc_119B5B7: var_90.Enabled = False
  loc_119B5D1: Set var_8C = Me.Txt
  loc_119B5D7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_90)
  loc_119B5FB: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_119B60B:   Set var_8C = Me.Txt
  loc_119B611:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90)
  loc_119B619:   var_90.Enabled = True
  loc_119B625: End If
  loc_119B637: Me.FGrid.Col = CVar(CLng(1))
  loc_119B65A: var_C4 = CVar(CStr((CLng(Me.FGrid.Rows) - 1))) 'String
  loc_119B662: Set var_90 = Me.FGrid
  loc_119B682: Set var_8C = Me.FGrid
  loc_119B6A5: Me.FGrid.Col = CVar(CLng(2))
  loc_119B6BA: Me.LblUser.Caption = vbNullString
  loc_119B6CF: Me.LblLDt.Caption = vbNullString
  loc_119B6D7: Exit Sub
  loc_119B6D8: ' Referenced from: 119B2F8
  loc_119B6D8: Proc_6_60_E62BC4(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_119B6DD: Exit Sub
  loc_119B6DE: var_340 = CVar(CVar(var_90.Text)) 'String
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18990
  'Data Table: 598674
  loc_E18985: Me.Global.Unload Me
  loc_E1898D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F8A7B0
  'Data Table: 598674
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim MemVar_1F920E4 As String
  loc_F8A658: On Error Goto loc_F8A7AA
  loc_F8A672: If (Me.RecordCount <= 0) Then
  loc_F8A690:   var_A8 = "No Records To Search."
  loc_F8A696:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F8A6A6:   Exit Sub
  loc_F8A6A7: End If
  loc_F8A6BA: If (OpenAs = "Expense") Then
  loc_F8A6C4:   var_10C = "Select DISTINCT P.Docid as SearchCode,P.VNo as [No] ,CONVERT(VARCHAR(11),P.VDate) as [Date],S.Name as PartyName,P.PARTYBILLNO,P.CashParty" & " From (Purch1 P Left Join Voucher_Type V On (P.VType= V.V_Type and P.LogSite_Code=V.LogSite_Code)) "
  loc_F8A6D9:   Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F8A6F4:   var_11C = CVar(var_10C & " Left join SubGroup S on S.SubCode=P.Party Where P.VDATE>=") & var_A8 & " AND V.LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_F8A702:   MemVar_1F920E4 = CStr(var_11C & "' aND  V.Ncat In ('EXR','EXC','CRN') Order By [Date],SearchCode")
  loc_F8A71B: Else
  loc_F8A722:   var_10C = "Select DISTINCT P.Docid as SearchCode,P.VNo as [No] ,CONVERT(VARCHAR(11),P.VDate) as [Date],S.Name as PartyName,P.PARTYBILLNO,P.CashParty" & " From (Purch1 P Left Join Voucher_Type V On (P.VType= V.V_Type and P.LogSite_Code=V.LogSite_Code)) "
  loc_F8A737:   Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F8A743:   var_B8 = " AND V.LogSite_Code='"
  loc_F8A75B:   var_12C = CVar(var_10C & " Left join SubGroup S on S.SubCode=P.Party Where P.VDATE>=") & var_A8 & var_B8 & CVar(MemVar_1F92078) & "' aND  V.Category  in('PurchBill') Order By [Date],SearchCode" 
  loc_F8A760:   MemVar_1F920E4 = CStr(var_12C)
  loc_F8A776: End If
  loc_F8A77F: Proc_6_126_F1BCC0("700,1100,4000,1500,3500", MemVar_1F920E4)
  loc_F8A78D: MemVar_1F92120 = Me
  loc_F8A7A4: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F8A7A9: Exit Sub
  loc_F8A7AA: ' Referenced from: F8A658
  loc_F8A7AA: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F8A7AF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32A78
  'Data Table: 598674
  loc_E32A68: Proc_5_0_110649C(&HFF, Me)
  loc_E32A70: Call Proc_338_90_1A01BB8(global_72)
  loc_E32A75: Exit Sub
  loc_E32A76: Set var_400 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32838
  'Data Table: 598674
  loc_E32828: Proc_5_0_110649C(&HFF, Me)
  loc_E32830: Call Proc_338_90_1A01BB8(global_72)
  loc_E32835: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E327D8
  'Data Table: 598674
  Dim var_301 As Double
  loc_E327C8: Proc_5_0_110649C(&HFF, Me)
  loc_E327D0: Call Proc_338_90_1A01BB8(global_72)
  loc_E327D5: Exit Sub
  loc_E327D6: var_301 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32718
  'Data Table: 598674
  loc_E32708: Proc_5_0_110649C(&HFF, Me)
  loc_E32710: Call Proc_338_90_1A01BB8(global_72)
  loc_E32715: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '145F090
  'Data Table: 598674
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim var_E8 As TextBox
  Dim unk_598691 As Connection15
  Dim var_A0 As Recordset15
  Dim var_124 As Variant
  Dim var_104 As Variant
  Dim var_166 As Integer
  Dim var_A4 As Recordset15
  Dim var_E4 As Fields15
  Dim var_114 As Variant
  Dim var_164 As Variant
  Dim var_134 As String
  Dim var_BE As Integer
  loc_145E528: On Error Goto loc_145F088
  loc_145E542: If (Me.RecordCount <= 0) Then
  loc_145E545:   Exit Sub
  loc_145E546: End If
  loc_145E54D: var_C8 = "Select P2.Docid,P2.VNo,P2.VDate,P2.VType As V_Type,CASE WHEN P2.RecdQty=0 THEN P2.IssQty ELSE P2.RecdQty END as Qty,CASE WHEN ISNULL(P2.RecdUnit,'')='' THEN P2.IssueUnit ELSE P2.RecdUnit END As Unit,P2.ItemRate,P2.Amount," & " P1.CashParty as PartyName,P1.PartyBillNo,P1.PartyBillDt,P1.Total,P1.DiscPer,P1.DiscAmt,P1.AddAmt,P1.DedAmt,P1.RoundOff,P1.NetAmt,P1.PartyBillDt,I.Name as ItemName,G.Name as GodName,P2.ContraDocId,V.Description,SG.Name As SaleAcName,"
  loc_145E554: var_CC = var_C8 & " P1.TINNO,IsNull(SG1.ConPrefix,'') ConPrefix,IsNull(SG1.ConPerSon,'') ConPerSon,REPLACE(REPLACE(LTrim(RTrim(IsNull(SG1.Add1,'')))+', '+LTrim(RTrim(IsNull(SG1.Add2,'')))+', '+LTrim(RTrim(IsNull(SG1.Add3,'')))+', '+LTrim(RTrim(IsNull(City.CityName,''))),',,',','),', ,',',') PartyAddress,P2.Rate,IsNull(P1.InvoiceType,'') InvoiceType,IsNull(P1.InvoiceNo,0) InvoiceNo,TS.Name As TaxStruct,P1.Payable,IsNull(P1.Remark,'') As Remark From ((((((Purch2 as P2 Left Join Purch1 as P1 on P2.DocID=P1.DocID)"
  loc_145E562: var_D4 = var_CC & " Left Join GodownMast as G on P2.Godcode=G.Code)" & " Left Join ItemMast as I on P2.Item=I.Code And I.ItemType='Store') left Join (Select Code,Max(Name) Name From TaxStru Group By Code) TS on TS.Code=P2.TaxStru"
  loc_145E569: var_D8 = var_D4 & " Left Join Voucher_Type as V on (P2.VType=V.V_Type and P2.LogSite_Code=V.LogSite_Code) left Join SubGroup SG On SG.SubCode=P2.AcCode) left Join SubGroup SG1 On SG1.SubCode=P1.Party) left Join City On City.CityCode=SG1.CityCode) "
  loc_145E58F: Set var_E4 = Me.Txt
  loc_145E595: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_E8)
  loc_145E5AD: var_88 = var_D8 & " Where V.LogSite_Code='" & MemVar_1F92078 & "' and P2.DocID='" & var_E8.Text & "'"
  loc_145E5DF: Set var_E4 = Me.Txt
  loc_145E5E5: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_E8)
  loc_145E5ED: var_C8 = var_E8.Text
  loc_145E5FD: var_8C = "Select S.* From SunTran S Where S.DocId='" & var_C8 & "' Order By SNo"
  loc_145E61F: If ((var_88 = vbNullString) Or (var_8C = vbNullString)) Then
  loc_145E622:   Exit Sub
  loc_145E623: End If
  loc_145E639: unk_598691.Execute var_88, var_114, -1
  loc_145E644: Set var_A0 = var_E4
  loc_145E663: unk_598691.Execute var_8C, var_114, -1
  loc_145E66E: Set var_A4 = var_E4
  loc_145E68B: If (var_A0.RecordCount <= 0) Then
  loc_145E694:   Call 0.Method_arg_50 (var_C8, var_E4)
  loc_145E6B5:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C8), var_144, var_164)
  loc_145E6C5:   Exit Sub
  loc_145E6C6: End If
  loc_145E6D9: If (OpenAs = "Expense") Then
  loc_145E6F2:   Set var_E4 = var_A0 
  loc_145E708:   Set var_A0 = var_E4
  loc_145E70E:   var_104 = CVar(CreateFieldDefFile(var_E4, MemVar_1F920B4 & "\ExpenseVoucher.ttx")) 'Integer
  loc_145E711:   var_9C = var_104 'Variant
  loc_145E736:   Call 0.Method_arg_1C (MemVar_1F920B4 & "\ExpenseVoucher.RPT", var_104, var_E4)
  loc_145E741:   MemVar_1F921E4 = var_E4
  loc_145E74E: Else
  loc_145E764:   Set var_E4 = var_A0 
  loc_145E770:   var_166 = CreateFieldDefFile(var_E4, MemVar_1F920B4 & "\PurchBill.ttx", &HFF)
  loc_145E77A:   Set var_A0 = var_E4
  loc_145E780:   var_104 = CVar(var_166) 'Integer
  loc_145E783:   var_9C = var_104 'Variant
  loc_145E79F:   var_C8 = MemVar_1F920B4 & "\PurchRetBill.RPT"
  loc_145E7A8:   Call 0.Method_arg_1C (var_C8, var_104, var_E4, var_166)
  loc_145E7B3:   MemVar_1F921E4 = var_E4
  loc_145E7BD: End If
  loc_145E7C3: var_C4 = var_A4.RecordCount
  loc_145E7D1: If (var_C4 > 0) Then
  loc_145E7D4:   ' Referenced from: 145EF4F
  loc_145E7DA:   var_166 = var_A4.EOF
  loc_145E7E3:   If Not(var_166) Then
  loc_145E80C:     var_124 = Trim(CVar(var_A4.Fields.Item("SunCode")))
  loc_145E83A:     If (Ucase(var_124) = CVar(MemVar_1F92078 & "NET")) Then
  loc_145E87D:       var_E4 = var_A4.Fields
  loc_145E885:       var_E8 = var_E4.Item("Amount")
  loc_145E894:       Proc_6_39_E7C810(var_124, CVar(var_E8))
  loc_145E8BD:       var_B8 = CStr(Format(var_124, "0.00"))
  loc_145E8DF:       Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1)
  loc_145E8E7:       Call 0.Method_arg_24 (1, 1)
  loc_145E8F3:       For var_17C = var_E4 To CInt(var_C4): &HFF = var_17C 'Integer
  loc_145E90C:         Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145E914:         Call 0.Method_arg_20 (var_C8)
  loc_145E91C:         Call 0.Method_arg_30 (var_E4)
  loc_145E932:         var_18C = Ucase(CVar(var_C8)) 'Variant
  loc_145E948:         var_114 = "lblNetAmount"
  loc_145E962:         If (var_18C = Ucase(var_114)) Then
  loc_145E970:           Proc_6_17_EAA2B0(var_114)
  loc_145E98C:           Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145E994:           Call 0.Method_arg_20 (CStr(var_114))
  loc_145E99C:           Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_A4.Fields.Item("DispName")), var_166))
  loc_145E9B1:         Else
  loc_145E9B9:           var_114 = "NetAmount"
  loc_145E9D3:           If (var_18C = Ucase(var_114)) Then
  loc_145E9E1:             Proc_6_17_EAA2B0(var_114)
  loc_145E9E9:             var_C8 = CStr(var_114)
  loc_145E9FD:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145EA05:             Call 0.Method_arg_20 (var_C8)
  loc_145EA0D:             Call 0.Method_arg_38 (var_B8)
  loc_145EA1F:           End If
  loc_145EA1F:         End If
  loc_145EA22:       Next var_17C 'Integer
  loc_145EA2A:     Else
  loc_145EA50:       var_124 = Trim(CVar(var_A4.Fields.Item("SunCode")))
  loc_145EA7E:       If (Ucase(var_124) = CVar(MemVar_1F92078 & "TOT")) Then
  loc_145EAC1:         var_E4 = var_A4.Fields
  loc_145EAC9:         var_E8 = var_E4.Item("Amount")
  loc_145EAD1:         var_114 = CVar(var_E8) 'Address
  loc_145EAD8:         Proc_6_39_E7C810(var_124)
  loc_145EB01:         var_B8 = CStr(Format(var_124, "0.00"))
  loc_145EB23:         Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1)
  loc_145EB2B:         Call 0.Method_arg_24 (1, 1)
  loc_145EB37:         For var_190 =  To CInt(var_C4):   var_114 = var_190 'Integer
  loc_145EB50:           Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_145EB58:           Call 0.Method_arg_20 (var_E8)
  loc_145EB60:           Call 0.Method_arg_30 (var_C8)
  loc_145EB76:           var_1A0 = Ucase(CVar(var_C8)) 'Variant
  loc_145EB8C:           var_114 = "lblTotal"
  loc_145EBA6:           If (var_1A0 = Ucase(var_114)) Then
  loc_145EBB4:             Proc_6_17_EAA2B0(var_114)
  loc_145EBD0:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145EBD8:             Call 0.Method_arg_20 (CStr(var_114))
  loc_145EBE0:             Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_A4.Fields.Item("DispName"))))
  loc_145EBF5:           Else
  loc_145EBFD:             var_114 = "Total"
  loc_145EC06:             var_124 = Ucase(var_114)
  loc_145EC17:             If (var_1A0 = var_124) Then
  loc_145EC25:               Proc_6_17_EAA2B0(var_114)
  loc_145EC2D:               var_C8 = CStr(var_114)
  loc_145EC41:               Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145EC49:               Call 0.Method_arg_20 (var_C8)
  loc_145EC51:               Call 0.Method_arg_38 (var_B8)
  loc_145EC63:             End If
  loc_145EC63:           End If
  loc_145EC66:         Next var_190 'Integer
  loc_145EC6E:       Else
  loc_145ECBE:         var_114 = CVar(var_A4.Fields.Item("SValue")) 'Address
  loc_145ECC5:         Proc_6_39_E7C810(var_124)
  loc_145ECEE:         var_BC = CStr(Format(var_124, "0.00"))
  loc_145ED0E:         var_E4 = var_A4.Fields
  loc_145ED16:         var_E8 = var_E4.Item("Amount")
  loc_145ED1E:         var_114 = CVar(var_E8) 'Address
  loc_145ED25:         Proc_6_39_E7C810(var_124, var_114, 1)
  loc_145ED34:         var_134 = "0.00"
  loc_145ED4E:         var_B8 = CStr(Format(var_124, var_134))
  loc_145ED65:         var_BE = (var_BE + 1)
  loc_145ED79:         Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1, var_BE)
  loc_145ED81:         Call 0.Method_arg_24 (1, 1)
  loc_145ED8D:         For var_1A4 = var_114 To CInt(var_C4):     1 = var_1A4 'Integer
  loc_145EDA6:           Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145EDAE:           Call 0.Method_arg_20 (var_C8)
  loc_145EDB6:           Call 0.Method_arg_30 (var_114)
  loc_145EDCC:           var_1B4 = Ucase(CVar(var_C8)) 'Variant
  loc_145EDE9:           var_114 = CVar("lblSunName" & CStr(var_BE)) 'String
  loc_145EE03:           If (var_1B4 = Ucase(var_114)) Then
  loc_145EE11:             Proc_6_17_EAA2B0(var_114)
  loc_145EE2D:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145EE35:             Call 0.Method_arg_20 (CStr(var_114))
  loc_145EE3D:             Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_A4.Fields.Item("DispName"))))
  loc_145EE52:           Else
  loc_145EE61:             var_114 = CVar("SunPer" & CStr(var_BE)) 'String
  loc_145EE7B:             If (var_1B4 = Ucase(var_114)) Then
  loc_145EE89:               Proc_6_17_EAA2B0(var_114)
  loc_145EEA5:               Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145EEAD:               Call 0.Method_arg_20 (CStr(var_114))
  loc_145EEB5:               Call 0.Method_arg_38 (var_BC)
  loc_145EECA:             Else
  loc_145EED9:               var_114 = CVar("SunAmt" & CStr(var_BE)) 'String
  loc_145EEF3:               If (var_1B4 = Ucase(var_114)) Then
  loc_145EF01:                 Proc_6_17_EAA2B0(var_114)
  loc_145EF09:                 var_C8 = CStr(var_114)
  loc_145EF1D:                 Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145EF25:                 Call 0.Method_arg_20 (var_C8)
  loc_145EF2D:                 Call 0.Method_arg_38 (var_B8)
  loc_145EF3F:               End If
  loc_145EF3F:             End If
  loc_145EF3F:           End If
  loc_145EF42:         Next var_1A4 'Integer
  loc_145EF47:       End If
  loc_145EF47:     End If
  loc_145EF4A:     var_A4.MoveNext
  loc_145EF4F:     GoTo loc_145E7D4
  loc_145EF52:   End If
  loc_145EF52: End If
  loc_145EF63: Call 0.Method_arg_90 (var_E4, var_C4)
  loc_145EF6B: Call 0.Method_arg_24 (var_AA)
  loc_145EF77: For var_1B8 =  To CInt(var_C4): 1 = var_1B8 'Integer
  loc_145EF90:   Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_145EF98:   Call 0.Method_arg_20 (var_E8)
  loc_145EFA0:   Call 0.Method_arg_30 (var_C8)
  loc_145EFBA:   If (var_C8 = "Title") Then
  loc_145EFD0:     Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_145EFD8:     Call 0.Method_arg_20 (var_E8)
  loc_145EFE0:     Call 0.Method_arg_38 ("'Purchase Bill'")
  loc_145EFEC:   End If
  loc_145EFEF: Next var_1B8 'Integer
  loc_145F00D: Call 0.Method_arg_64 (var_E4, CVar(var_A0))
  loc_145F015: Call 0.Method_arg_2C (var_134)
  loc_145F023: Call 0.Method_arg_150 (var_154)
  loc_145F02E: Call 0.Method_arg_50 (var_C8)
  loc_145F038: Set var_E8 = Nothing
  loc_145F052: Set var_E4 = MemVar_1F921E4 
  loc_145F05E: Proc_6_99_1483714(var_E4, 0, var_C8)
  loc_145F069: MemVar_1F921E4 = var_E4
  loc_145F07C: Set var_A0 = Nothing
  loc_145F084: Set var_B0 = Nothing
  loc_145F087: Exit Sub
  loc_145F088: ' Referenced from: 145E528
  loc_145F088: Proc_6_60_E62BC4(&HFF)
  loc_145F08D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E6440C
  'Data Table: 598674
  Dim Me As Recordset15
  loc_E643C3: Me.Requery -1
  loc_E643D3: Me.Requery -1
  loc_E643E6: Me.Recordset15.Requery -1
  loc_E643F6: Me.Requery -1
  loc_E64406: Me.Requery -1
  loc_E6440B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1C04474
  'Data Table: 598674
  Dim var_184 As Variant
  Dim var_170 As String
  Dim var_200 As Variant
  Dim var_208 As Variant
  Dim var_210 As Variant
  Dim var_21C As Variant
  Dim var_224 As Variant
  Dim var_1B4 As Variant
  Dim var_194 As Variant
  Dim var_1F4 As Variant
  Dim var_1A4 As Variant
  Dim var_1FC As Variant
  Dim var_1C4 As Variant
  Dim var_250 As Variant
  Dim var_136 As Variant
  Dim var_260 As Variant
  Dim var_2A0 As Variant
  Dim var_2B0 As Variant
  Dim var_2C0 As Variant
  Dim var_2E0 As Variant
  Dim var_204 As Variant
  Dim var_1F8 As String
  Dim var_310 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_370 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_1D4 As Variant
  Dim var_270 As Variant
  Dim var_3B0 As Variant
  Dim var_228 As String
  Dim unk_598691 As Connection15
  Dim var_14C As Recordset15
  Dim var_88 As Variant
  Dim var_3D0 As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_3D8 As String
  Dim var_3DC As String
  Dim var_20C As Variant
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim var_E4 As Variant
  Dim var_FC As Variant
  Dim var_D4 As Variant
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_10C As Variant
  Dim var_118 As Double
  Dim var_120 As Double
  Dim var_128 As Variant
  Dim Me As Recordset15
  Dim var_134 As Variant
  Dim var_8A As Variant
  Dim var_218 As Variant
  Dim var_220 As Variant
  Dim var_43C As Variant
  Dim var_BF0 As Double
  Dim var_6DC As Variant
  Dim var_BF8 As Double
  Dim var_808 As Variant
  Dim var_7E8 As Variant
  Dim var_7C8 As String
  Dim var_860 As Variant
  Dim var_914 As Variant
  Dim var_9AC As Variant
  Dim var_A04 As Variant
  Dim var_A54 As Variant
  Dim var_A98 As Variant
  Dim var_C00 As Double
  Dim var_B2C As Image
  Dim var_B50 As Variant
  Dim var_3E8 As String
  Dim var_3EC As String
  Dim var_400 As Variant
  Dim var_290 As Variant
  Dim var_434 As Variant
  Dim var_460 As Variant
  Dim var_2D0 As Variant
  Dim var_470 As Variant
  Dim var_2F0 As Variant
  Dim var_4B0 As Variant
  Dim var_340 As Variant
  Dim var_4C0 As Variant
  Dim var_4D0 As Variant
  Dim var_360 As Variant
  Dim var_4E0 As Variant
  Dim var_4F0 As Variant
  Dim var_510 As Variant
  Dim var_520 As Variant
  Dim var_530 As Variant
  Dim var_560 As Variant
  Dim var_570 As Variant
  Dim var_580 As Variant
  Dim var_5B0 As Variant
  Dim var_5C0 As Variant
  Dim var_5E0 As Variant
  Dim var_5F0 As Variant
  Dim var_610 As Variant
  Dim var_620 As Variant
  Dim var_650 As Variant
  Dim var_660 As Variant
  Dim var_690 As Variant
  Dim var_6B0 As Variant
  Dim var_6C0 As Variant
  Dim var_710 As Variant
  Dim var_720 As Variant
  Dim var_740 As Variant
  Dim var_750 As Variant
  Dim var_760 As Variant
  Dim var_790 As Variant
  Dim var_7A0 As Variant
  Dim var_7B0 As Variant
  Dim var_838 As Variant
  Dim var_858 As Variant
  Dim var_894 As Variant
  Dim var_8DC As Variant
  Dim var_8EC As Variant
  Dim var_954 As Variant
  Dim var_964 As Variant
  Dim var_974 As Variant
  Dim var_984 As Variant
  Dim var_A24 As Variant
  Dim var_A34 As Variant
  Dim var_AAC As Variant
  Dim var_ABC As Variant
  Dim var_ADC As Variant
  Dim var_B10 As Variant
  Dim var_B20 As Variant
  Dim var_BB0 As Variant
  Dim var_438 As Variant
  Dim var_6D8 As Variant
  Dim var_7B4 As Variant
  Dim var_85C As MSHFlexGrid
  Dim var_900 As MSHFlexGrid
  Dim var_904 As Variant
  Dim var_998 As MSHFlexGrid
  Dim var_1440 As Double
  Dim var_99C As MSHFlexGrid
  Dim var_1448 As Double
  Dim var_C70 As Variant
  Dim var_C90 As Variant
  Dim var_9F0 As MSHFlexGrid
  Dim var_CD4 As Variant
  Dim var_CF4 As Variant
  Dim var_9F4 As MSHFlexGrid
  Dim var_1458 As Double
  Dim var_D38 As Variant
  Dim var_D58 As Variant
  Dim var_1460 As Double
  Dim var_1468 As Double
  Dim var_8CC As Variant
  Dim var_1470 As Double
  Dim var_EB8 As Variant
  Dim var_E98 As Variant
  Dim var_ED8 As Variant
  Dim var_EF8 As Variant
  Dim var_BE8 As MSHFlexGrid
  Dim var_F28 As Variant
  Dim var_F7C As Variant
  Dim var_F9C As Variant
  Dim var_FE4 As Variant
  Dim var_1004 As Variant
  Dim var_1480 As Double
  Dim var_1488 As Double
  Dim var_1490 As Double
  Dim var_1498 As Double
  Dim var_404 As String
  Dim var_A9C As String
  Dim var_B30 As String
  Dim var_C0C As String
  Dim var_C10 As String
  Dim var_C18 As String
  Dim var_C28 As String
  Dim var_770 As Variant
  Dim var_C60 As Variant
  Dim var_780 As Variant
  Dim var_7C4 As Variant
  Dim var_818 As Variant
  Dim var_A14 As Variant
  Dim var_A64 As Variant
  Dim var_B90 As Variant
  Dim var_BE4 As Variant
  Dim var_10B4 As Variant
  Dim var_1268 As Variant
  Dim var_13E0 As Variant
  Dim var_6D4 As MSHFlexGrid
  Dim var_C1C As String
  Dim var_C2C As String
  Dim var_C30 As String
  Dim var_BD4 As Variant
  Dim var_C08 As String
  Dim var_3F0 As String
  loc_1BFEB34: On Error Goto loc_1C04427
  loc_1BFEB48: Call 0.Method_arg_38 (MemVar_1F92214, var_170)
  loc_1BFEB56: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_170)
  loc_1BFEB62: If Not(var_172) Then
  loc_1BFEB80:   MsgBox("InValid Picture Path in Analysis.ini", &H40, var_1B4, var_1D4, var_1F4)
  loc_1BFEB92:   Exit Sub
  loc_1BFEB93: End If
  loc_1BFEBAB: Call 0.Method_arg_38 (MemVar_1F92214 & "\PurchBill", var_1F8)
  loc_1BFEBB9: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1F8, var_172)
  loc_1BFEBC9: If Not(var_172) Then
  loc_1BFEBE1:   Call 0.Method_arg_74 (MemVar_1F92214 & "\PurchBill", var_1FC)
  loc_1BFEBEC: End If
  loc_1BFEBFC: Set var_1FC = Me.Opt
  loc_1BFEC02: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BFEC0A: var_172 = var_200.Value
  loc_1BFEC1D: Set var_204 = Me.Opt
  loc_1BFEC23: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_208)
  loc_1BFEC3E: Set var_20C = Me.Opt
  loc_1BFEC44: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_210)
  loc_1BFEC4C: var_212 = var_210.Value
  loc_1BFEC5F: Set var_218 = Me.Opt
  loc_1BFEC65: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_21C)
  loc_1BFEC80: Set var_220 = Me.Opt
  loc_1BFEC86: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_224)
  loc_1BFECB7: var_1F4 = CVar(var_208.Caption) 'String
  loc_1BFECD0: var_140 = CStr(IIf((var_172 = &HFF), var_1F4, IIf((var_212 = &HFF), CVar(var_21C.Caption), CVar(var_224.Caption))))
  loc_1BFED20: If (((global_124 = "PBR") Or (global_124 = "EXR")) Or (global_124 = "PRR")) Then
  loc_1BFED23: End If
  loc_1BFED32: Set var_1FC = Me.Txt
  loc_1BFED38: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200)
  loc_1BFED61: If (Proc_6_27_EA565C(var_200, "Voucher Date") = 0) Then
  loc_1BFED66:   Exit Sub
  loc_1BFED67: End If
  loc_1BFED70: Set var_1FC = Me.TxtGt
  loc_1BFED76: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172)
  loc_1BFED89: Call TxtGt_Validate((var_172 + 1))
  loc_1BFED9E: Set var_1FC = Me.Txt
  loc_1BFEDA4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1BFEDCD: If (Proc_6_27_EA565C(var_200, "Voucher No") = 0) Then
  loc_1BFEDD2:   Exit Sub
  loc_1BFEDD3: End If
  loc_1BFEDFA: For var_23E = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_23E 'Integer
  loc_1BFEE06:   var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFEE0E:   var_1C4 = CVar(CLng(2)) 'Long
  loc_1BFEE4A:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1BFEE51:     var_136 = &HFF
  loc_1BFEE54:   End If
  loc_1BFEE5A:   var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFEE62:   var_1C4 = CVar(CLng(2)) 'Long
  loc_1BFEE7C:   var_1B4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1BFEE82:   var_1D4 = Trim(var_1B4)
  loc_1BFEE8A:   var_250 = vbNullString
  loc_1BFEE98:   var_260 = CVar(CLng(var_92)) 'Long
  loc_1BFEEA9:   Set var_200 = Me.FGrid
  loc_1BFEECB:   var_2B0 = CVar(CLng(9)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))
  loc_1BFEED3:   var_2C0 = CVar(CLng(var_92)) 'Long
  loc_1BFEF06:   var_320 = CVar(CLng(&HA)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))
  loc_1BFEF0E:   var_330 = CVar(CLng(var_92)) 'Long
  loc_1BFEF1F:   Set var_208 = Me.FGrid
  loc_1BFEF48:   var_3C0 = CVar(CLng(&H17)) And (Trim(CVar(CStr(var_208.TextMatrix)))) = vbNullString)
  loc_1BFEF77:   If CBool(var_3C0) Then
  loc_1BFEF92:     var_170 = CStr(var_92)
  loc_1BFEFA0:     MsgBox(CVar("Invalid record on row no." & var_170 & vbNullString), 0, var_1B4, var_1D4, var_1F4)
  loc_1BFEFCC:     Me.FGrid.Row = CVar(CLng(var_92))
  loc_1BFEFE8:     Me.FGrid.Col = CVar(CLng(2))
  loc_1BFEFF6:     Set var_1FC = Me.FGrid
  loc_1BFF009:     Exit Sub
  loc_1BFF00A:   End If
  loc_1BFF011: Next var_23E 'Integer
  loc_1BFF01E: If (var_136 = 0) Then
  loc_1BFF036:   var_194 = "No Item Found In Grid."
  loc_1BFF03C:   MsgBox(var_194, &H10, var_1B4, var_1D4, var_1F4)
  loc_1BFF052:   Set var_1FC = Me.FGrid
  loc_1BFF065:   Exit Sub
  loc_1BFF066: End If
  loc_1BFF07F: If ((global_124 = "PBR") Or (global_124 = "EXR")) Then
  loc_1BFF0A1:   Proc_6_7_F25D88(var_194, MemVar_1F920F4, "Select Count(*) from Purch1 where VDATE BETWEEN ", var_3C0)
  loc_1BFF0A9:   var_1B4 = -1 & var_194 
  loc_1BFF0B2:   var_1D4 = var_1B4 & " AND " 
  loc_1BFF0C1:   Proc_6_7_F25D88(var_1F4, MemVar_1F920FC, var_1D4)
  loc_1BFF0D2:   var_2B0 = var_20C & var_1F4 & " AND Vtype in (Select Vtype from Voucher_type where NCAT='PBR') and PartyBillNo='" 
  loc_1BFF0E4:   Set var_1FC = Me.Txt
  loc_1BFF0EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_200, var_170)
  loc_1BFF0F2:   var_2B0 = var_200.Text
  loc_1BFF118:   Set var_204 = Me.Txt
  loc_1BFF11E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_208)
  loc_1BFF148:   unk_598691.Execute CStr(FGrid.DispID_8001 & CVar(var_170) & "' and Party='" & CVar(var_208.Tag) & "'"), , 
  loc_1BFF189:   Set var_1FC = Me.TopCtrl1
  loc_1BFF18F:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1BFF1A8:   If (CStr() = "Add") Then
  loc_1BFF1BF:     var_1FC = var_20C.Fields
  loc_1BFF1E9:     If (var_1FC.Item(0).Value > 0) Then
  loc_1BFF201:       var_194 = "Duplicate Party Bill No"
  loc_1BFF207:       MsgBox(var_194, 0, var_1B4, var_1D4, var_1F4)
  loc_1BFF21C:     Else
  loc_1BFF21E:     End If
  loc_1BFF220:   End If
  loc_1BFF22F:   If (global_232 = "Room Service") Then
  loc_1BFF251:     Proc_6_17_EAA2B0(var_194, MemVar_1F92078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1BFF267:     unk_598691.Execute CStr(var_1D4 & var_194), -1, var_1FC
  loc_1BFF272:     Set var_88 = var_1FC
  loc_1BFF29A:     If (var_88.RecordCount > 0) Then
  loc_1BFF2B1:       var_1FC = var_88.Fields
  loc_1BFF2E5:       If (Proc_6_38_E68A98(var_1FC.Item(0).Value) = vbNullString) Then
  loc_1BFF305:         var_194 = "Please define Room Payment Type From Enviro"
  loc_1BFF30B:         MsgBox(var_194, &H40, "HMS", var_1D4, var_1F4)
  loc_1BFF31D:         Exit Sub
  loc_1BFF31E:       End If
  loc_1BFF320:     End If
  loc_1BFF325:   Else
  loc_1BFF346:     Proc_6_17_EAA2B0(var_194, MemVar_1F92078, "Select CashPurchAc From enviro WHERE LOGSITE_CODE=")
  loc_1BFF35C:     unk_598691.Execute CStr(var_1D4 & var_194), -1, var_1FC
  loc_1BFF367:     Set var_88 = var_1FC
  loc_1BFF38F:     If (var_88.RecordCount > 0) Then
  loc_1BFF3AE:       var_200 = var_88.Fields.Item(0)
  loc_1BFF3C3:       var_148 = Proc_6_38_E68A98(var_200.Value)
  loc_1BFF3DA:       If (var_148 = vbNullString) Then
  loc_1BFF400:         MsgBox("Please define Cash Payment Type From Enviro", &H40, "HMS", var_1D4, var_1F4)
  loc_1BFF412:         Exit Sub
  loc_1BFF413:       End If
  loc_1BFF415:     End If
  loc_1BFF417:   End If
  loc_1BFF440:   For var_3C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_3C8 'Integer
  loc_1BFF44C:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFF454:     var_1C4 = CVar(CLng(0)) 'Long
  loc_1BFF45E:     var_194 = CVar(CStr(var_92)) 'String
  loc_1BFF466:     Set var_1FC = Me.FGrid
  loc_1BFF46C:     LateIdCallSt
  loc_1BFF480:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFF488:     var_1C4 = CVar(CLng(&H12)) 'Long
  loc_1BFF4B8:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1BFF4C1:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFF4C9:       var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1BFF4F5:       var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1BFF504:     Else
  loc_1BFF50C:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFF514:       var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1BFF523:       var_194 = Me.FGrid.TextMatrix)
  loc_1BFF52E:       var_170 = CStr(var_194)
  loc_1BFF540:       var_AC = (var_AC + Val(var_170))
  loc_1BFF54C:     End If
  loc_1BFF553:   Next var_3C8 'Integer
  loc_1BFF566:   Set var_1FC = Me.TxtGt
  loc_1BFF56C:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172, var_92)
  loc_1BFF577:   For var_3D4 =  To var_172:   1 = var_3D4 'Integer
  loc_1BFF5AB:     Set var_1FC = Me.LblCap
  loc_1BFF5B1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, "Select Nature from SundryType Where SundryCode='", var_194, -1)
  loc_1BFF5E0:     unk_598691.Execute var_208 & var_170 & "' And V_Type='" & MemVar_1F92078 & "PURC' ORDER BY aPPDATE DESC", 0, var_20C
  loc_1BFF5F0:      = var_208.Item()
  loc_1BFF5F8:      = var_20C.Value
  loc_1BFF62E:     var_3E0 = Proc_6_38_E68A98(var_200.Tag.Fields)
  loc_1BFF63B:     If (var_3E0 = "Addition") Then
  loc_1BFF64D:       Set var_1FC = Me.TxtGt
  loc_1BFF653:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200)
  loc_1BFF65B:       var_170 = var_200.Text
  loc_1BFF672:       var_B4 = (var_B4 + Val(var_170))
  loc_1BFF68E:       Set var_1FC = Me.TxtPer
  loc_1BFF694:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170)
  loc_1BFF69C:       var_B4 = var_200.Text
  loc_1BFF6B3:       var_CC = (var_CC + Val(var_170))
  loc_1BFF6C3:     Else
  loc_1BFF6CD:       If (var_3E0 = "Deduction") Then
  loc_1BFF6DF:         Set var_1FC = Me.TxtGt
  loc_1BFF6E5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170)
  loc_1BFF6ED:         var_CC = var_200.Text
  loc_1BFF704:         var_BC = (var_BC + Val(var_170))
  loc_1BFF720:         Set var_1FC = Me.TxtPer
  loc_1BFF726:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_BC)
  loc_1BFF72E:         var_3D0 = var_200.Text
  loc_1BFF745:         var_C4 = (var_C4 + Val(var_170))
  loc_1BFF755:       Else
  loc_1BFF75F:         If (var_3E0 = "Discount") Then
  loc_1BFF771:           Set var_1FC = Me.TxtGt
  loc_1BFF777:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_C4)
  loc_1BFF77F:           var_3D0 = var_200.Text
  loc_1BFF796:           var_DC = (var_DC + Val(var_170))
  loc_1BFF7B2:           Set var_1FC = Me.TxtPer
  loc_1BFF7B8:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_DC)
  loc_1BFF7C0:           var_3D0 = var_200.Text
  loc_1BFF7D7:           var_E4 = (var_E4 + Val(var_170))
  loc_1BFF7E7:         Else
  loc_1BFF7F1:           If (var_3E0 = "Luxury Tax") Then
  loc_1BFF803:             Set var_1FC = Me.TxtGt
  loc_1BFF809:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_E4)
  loc_1BFF811:             var_3D0 = var_200.Text
  loc_1BFF828:             var_FC = (var_FC + Val(var_170))
  loc_1BFF844:             Set var_1FC = Me.TxtPer
  loc_1BFF84A:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1BFF852:             var_3D0 = var_200.Text
  loc_1BFF869:             var_D4 = (var_D4 + Val(var_170))
  loc_1BFF879:           Else
  loc_1BFF883:             If (var_3E0 = "Round Off") Then
  loc_1BFF895:               Set var_1FC = Me.TxtGt
  loc_1BFF89B:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1BFF8A3:               var_3D0 = var_200.Text
  loc_1BFF8BA:               var_EC = (var_EC + Val(var_170))
  loc_1BFF8D6:               Set var_1FC = Me.TxtPer
  loc_1BFF8DC:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_EC)
  loc_1BFF8E4:               var_3D0 = var_200.Text
  loc_1BFF8FB:               var_F4 = (var_F4 + Val(var_170))
  loc_1BFF90B:             Else
  loc_1BFF915:               If (var_3E0 = "Sale Tax") Then
  loc_1BFF927:                 Set var_1FC = Me.TxtGt
  loc_1BFF92D:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_F4)
  loc_1BFF935:                 var_3D0 = var_200.Text
  loc_1BFF94C:                 var_FC = (var_FC + Val(var_170))
  loc_1BFF968:                 Set var_1FC = Me.TxtPer
  loc_1BFF96E:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1BFF976:                 var_3D0 = var_200.Text
  loc_1BFF98D:                 var_D4 = (var_D4 + Val(var_170))
  loc_1BFF99D:               Else
  loc_1BFF9A7:                 If (var_3E0 = "Service Charge") Then
  loc_1BFF9B9:                   Set var_1FC = Me.TxtGt
  loc_1BFF9BF:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1BFF9C7:                   var_3D0 = var_200.Text
  loc_1BFF9DE:                   var_104 = (var_104 + Val(var_170))
  loc_1BFF9FA:                   Set var_1FC = Me.TxtPer
  loc_1BFFA00:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_104)
  loc_1BFFA08:                   var_3D0 = var_200.Text
  loc_1BFFA1F:                   var_10C = (var_10C + Val(var_170))
  loc_1BFFA2F:                 Else
  loc_1BFFA39:                   If (var_3E0 = "Service Tax") Then
  loc_1BFFA4B:                     Set var_1FC = Me.TxtGt
  loc_1BFFA51:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_10C)
  loc_1BFFA59:                     var_3D0 = var_200.Text
  loc_1BFFA70:                     var_FC = (var_FC + Val(var_170))
  loc_1BFFA8C:                     Set var_1FC = Me.TxtPer
  loc_1BFFA92:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1BFFA9A:                     var_3D0 = var_200.Text
  loc_1BFFAB1:                     var_D4 = (var_D4 + Val(var_170))
  loc_1BFFAC1:                   Else
  loc_1BFFACB:                     If (var_3E0 = "CGST") Then
  loc_1BFFADD:                       Set var_1FC = Me.TxtGt
  loc_1BFFAE3:                       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1BFFAEB:                       var_3D0 = var_200.Text
  loc_1BFFB02:                       var_118 = (var_118 + Val(var_170))
  loc_1BFFB12:                     Else
  loc_1BFFB1C:                       If (var_3E0 = "SGST") Then
  loc_1BFFB2E:                         Set var_1FC = Me.TxtGt
  loc_1BFFB34:                         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_118)
  loc_1BFFB3C:                         var_3D0 = var_200.Text
  loc_1BFFB53:                         var_120 = (var_120 + Val(var_170))
  loc_1BFFB63:                       Else
  loc_1BFFB6D:                         If (var_3E0 = "IGST") Then
  loc_1BFFB7F:                           Set var_1FC = Me.TxtGt
  loc_1BFFB85:                           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_120)
  loc_1BFFB8D:                           var_3D0 = var_200.Text
  loc_1BFFBA4:                           var_128 = (var_128 + Val(var_170))
  loc_1BFFBB1:                         End If
  loc_1BFFBB1:                       End If
  loc_1BFFBB1:                     End If
  loc_1BFFBB1:                   End If
  loc_1BFFBB1:                 End If
  loc_1BFFBB1:               End If
  loc_1BFFBB1:             End If
  loc_1BFFBB1:           End If
  loc_1BFFBB1:         End If
  loc_1BFFBB1:       End If
  loc_1BFFBB1:     End If
  loc_1BFFBB8:   Next var_3D4 'Integer
  loc_1BFFBC2:   var_9C = vbNullString
  loc_1BFFBCA:   Call Proc_338_91_125FF14(var_172)
  loc_1BFFBD5:   If (var_172 = 0) Then
  loc_1BFFBDA:     Exit Sub
  loc_1BFFBDB:   End If
  loc_1BFFBE8:   Set var_1FC = Me.TxtGrid
  loc_1BFFBEE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_200)
  loc_1BFFBF6:   var_200.Visible = False
  loc_1BFFC04:   Call Proc_338_94_FDE1A4()
  loc_1BFFC19:   Set var_1FC = Me.Txt
  loc_1BFFC1F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200)
  loc_1BFFC47:   If (Proc_6_91_EF2D40(CDate(var_200.Text)) = 0) Then
  loc_1BFFC57:     Set var_1FC = Me.Txt
  loc_1BFFC5D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_1BFFC65:     var_200.SetFocus
  loc_1BFFC73:     Exit Sub
  loc_1BFFC74:   End If
  loc_1BFFC7A:   Set var_1FC = Me.TopCtrl1
  loc_1BFFC80:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_200)
  loc_1BFFC88:   var_170 = CStr()
  loc_1BFFC99:   If (var_170 = "Add") Then
  loc_1BFFCA4:     var_1A4 = 0
  loc_1BFFCCB:     Set var_1FC = Me.Txt
  loc_1BFFCD1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, "Select Count(*) From Purch1 Where DocID='", var_194, -1)
  loc_1BFFCF2:     unk_598691.Execute var_208 & var_170 & "'", var_1A4, var_20C
  loc_1BFFD02:      = var_208.Item()
  loc_1BFFD0A:      = var_20C.Value
  loc_1BFFD37:     If (var_200.Text.Fields > 0) Then
  loc_1BFFD42:       Call Proc_338_96_10E9D58(MemVar_1F92044)
  loc_1BFFD55:       Set var_1FC = Me.Txt
  loc_1BFFD5B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BFFD63:       var_200.Text = var_170
  loc_1BFFD74:       Exit Sub
  loc_1BFFD75:     End If
  loc_1BFFD7A:   Else
  loc_1BFFD93:     var_1FC = Me.Fields
  loc_1BFFDB2:     global_108 = CStr(var_1FC.Item("DocID").Value)
  loc_1BFFDC3:   End If
  loc_1BFFDCD:   Call Proc_338_99_EA97CC(var_134, var_1FC)
  loc_1BFFDD5:   Set var_134 = var_1FC
  loc_1BFFDFF:   For var_3E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_3E4 'Integer
  loc_1BFFE0B:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFFE13:     var_1C4 = CVar(CLng(2)) 'Long
  loc_1BFFE33:     var_1D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFFE3B:     var_250 = vbNullString
  loc_1BFFE49:     var_260 = CVar(CLng(var_92)) 'Long
  loc_1BFFE5A:     Set var_200 = Me.FGrid
  loc_1BFFE99:     If CBool(CVar(CLng(&HB)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))) Then
  loc_1BFFEA4:       var_3C4 = var_134.RecordCount
  loc_1BFFEB2:       If (var_3C4 > 0) Then
  loc_1BFFEBA:         var_134.MoveFirst
  loc_1BFFECD:         var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1BFFF36:         var_134.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))), 0, 1
  loc_1BFFF5A:         var_172 = var_134.EOF
  loc_1BFFF62:         If var_172 Then
  loc_1BFFF72:           var_134.AddNew CVar(CLng(var_92)), var_1A4
  loc_1BFFF7D:           var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFFF85:           var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1BFFFCB:           var_260 = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1BFFFD9:           var_134.Collect = "V_NO"
  loc_1BFFFFC:           var_134.Update var_184, var_1A4
  loc_1C00001:         End If
  loc_1C00006:       Else
  loc_1C00015:         var_134.AddNew var_184, var_1A4
  loc_1C00028:         var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1C00037:         var_194 = Me.FGrid.TextMatrix)
  loc_1C0004C:         var_1B4 = CVar(CStr(var_194)) 'String
  loc_1C0006E:         var_260 = CVar(Val(CStr(Trim(Right(var_1B4, 8))))) 'Double
  loc_1C0007C:         var_134.Collect = "V_NO"
  loc_1C0009F:         var_134.Update CVar(CLng(var_92)), var_1A4
  loc_1C000A4:       End If
  loc_1C000A6:     End If
  loc_1C000AD:   Next var_3E4 'Integer
  loc_1C000B8:   Set var_1FC = Me.TopCtrl1
  loc_1C000BE:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1C000D7:   If (CStr() = "Add") Then
  loc_1C000E2:     var_1A4 = 0
  loc_1C000FF:     var_170 = "Select IsNull(Max(InvoiceNo),0)+1 From Purch1 Where LOGsite_code='" & MemVar_1F92078
  loc_1C0011D:     unk_598691.Execute CStr() & "' And InvoiceType='" & var_140 & "'", var_194, -1
  loc_1C00125:     var_1FC = var_1FC.Fields
  loc_1C0012D:     var_1A4 = var_200.Item(var_200)
  loc_1C00135:     var_204 = var_204.Value
  loc_1C00146:     Set var_208 = Me.LblInvoiceNo
  loc_1C0014C:     var_208.Caption = CStr(var_1B4)
  loc_1C00172:   End If
  loc_1C00178:   var_8A = &HFF
  loc_1C00186:   unk_598691.BeginTrans var_3C4
  loc_1C001AB:   Set var_1FC = Me.Txt
  loc_1C001B1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Sale2 Where DocID='", var_194)
  loc_1C001B9:   -1 = var_200.Text
  loc_1C001D2:   unk_598691.Execute var_204 & CStr() & "'", var_8A, var_1B4
  loc_1C0020C:   Set var_1FC = Me.Txt
  loc_1C00212:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Purch1 Where DocID='")
  loc_1C0021A:   var_194 = var_200.Text
  loc_1C00223:   var_1F8 = -1 & CStr()
  loc_1C00233:   unk_598691.Execute var_204 & CStr() & "'", var_204, 
  loc_1C0026D:   Set var_1FC = Me.Txt
  loc_1C00273:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Purch2 Where DocID='")
  loc_1C0027B:   var_194 = var_200.Text
  loc_1C00284:   var_1F8 = -1 & CStr()
  loc_1C00294:   unk_598691.Execute var_204 & CStr() & "'", var_204, 
  loc_1C002CE:   Set var_1FC = Me.Txt
  loc_1C002D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From SunTran Where DocID='")
  loc_1C002DC:   var_194 = var_200.Text
  loc_1C002E5:   var_1F8 = -1 & CStr()
  loc_1C002F5:   unk_598691.Execute var_204 & CStr() & "'", var_204, 
  loc_1C0032F:   Set var_1FC = Me.Txt
  loc_1C00335:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Stock Where DocID='")
  loc_1C0033D:   var_194 = var_200.Text
  loc_1C00346:   var_1F8 = -1 & CStr()
  loc_1C0034D:   var_228 = var_204 & CStr() & "'"
  loc_1C00356:   unk_598691.Execute var_228, var_204, 
  loc_1C0037E:   Call 0.Method_arg_38 (MemVar_1F92214)
  loc_1C00394:   var_3D8 = CStr() & "\PurchBill\" & global_132
  loc_1C003A5:   Set var_1FC = Me.Txt
  loc_1C003AB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200, var_228)
  loc_1C003B3:   var_3D8 = Me.Txt.Text
  loc_1C003C3:   var_144 = CStr() & var_228 & ".jpg"
  loc_1C003E0:   Set var_200 = Me.BillImage
  loc_1C003FE:   If (Proc_142_3_E97580(var_200) = &HFF) Then
  loc_1C00410:     Me.BillImage.Tag = var_144
  loc_1C00418:   End If
  loc_1C00428:   Set var_1FC = Me.Txt
  loc_1C0042E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C00449:   Set var_204 = Me.Txt
  loc_1C0044F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_208)
  loc_1C00464:   var_3D0 = Val(var_208.Text)
  loc_1C00472:   Set var_20C = Me.Txt
  loc_1C00478:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210)
  loc_1C00487:   Proc_6_7_F25D88(var_1B4, CVar(var_210))
  loc_1C00499:   var_3F0 = Me.LblVPrefix.Caption
  loc_1C004AC:   Set var_21C = Me.Txt
  loc_1C004B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_220, var_404)
  loc_1C004C6:   Set var_224 = Me.TxtGt
  loc_1C004CC:   Call 0.Method_TopCtrl1_UnknownEvent_164 (var_172)
  loc_1C004DE:   Set var_438 = Me.TxtGt
  loc_1C004E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_172, var_43C)
  loc_1C004F9:   var_BF0 = Val(var_43C.Text)
  loc_1C00503:   Set var_6D4 = Me.TxtGt
  loc_1C00509:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_212, var_BF0)
  loc_1C0051B:   Set var_6D8 = Me.TxtGt
  loc_1C00521:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_212, var_6DC)
  loc_1C00536:   var_BF8 = Val(var_6DC.Text)
  loc_1C00547:   Proc_6_7_F25D88(var_780, Date)
  loc_1C00550:   Set var_7B4 = Me.TopCtrl1
  loc_1C00556:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_BF8)
  loc_1C0059B:   Set var_85C = Me.Txt
  loc_1C005A1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_860)
  loc_1C005B9:   Set var_8A8 = Me.Txt
  loc_1C005BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_8AC)
  loc_1C005CE:   Proc_6_7_F25D88(var_8CC, CVar(var_8AC))
  loc_1C005DE:   Set var_900 = Me.Txt
  loc_1C005E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_904)
  loc_1C00603:   Set var_998 = Me.Txt
  loc_1C00609:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_99C)
  loc_1C00611:   var_9AC = CVar(var_99C) 'Address
  loc_1C00628:   Set var_9F0 = Me.Txt
  loc_1C0062E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_9F4)
  loc_1C0063D:   Proc_6_17_EAA2B0(var_A14, CVar(var_9F4))
  loc_1C0064D:   Proc_6_17_EAA2B0(var_A64, var_140)
  loc_1C006CE:   Proc_6_17_EAA2B0(var_B90, IIf((Me.BillImage.Visible = &HFF), CVar(Me.BillImage.Tag), vbNullString))
  loc_1C006E7:   var_1F8 = "Insert Into Purch1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,Party,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,CGST,SGST,IGST,AddAmt,DedAmt,RoundOff,NetAmt,U_Name,U_EntDt,U_AE,DelFlag,PartyBillNo,PartyBillDt,CashParty,LogSite_Code,TinNo,Remark,InvoiceType,InvoiceNo,Payable,BillImagePath) Values (" & "'"
  loc_1C00737:   var_370 = CVar(var_1F8 & var_200.Text & "'," & CStr(var_220.Tag) & ",") & var_1B4 & ",'" & CVar(global_132) & "','" & CVar(var_3F0) 
  loc_1C00790:   var_460 = var_370 & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_56) & "','" & CVar(var_404) & "'," & CVar(var_BF0) & "," 
  loc_1C007FF:   var_530 = var_460 & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) 
  loc_1C00877:   var_6B0 = var_530 & "," & CVar(var_118) & "," & CVar(var_120) & "," & CVar(var_128) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) 
  loc_1C008BE:   var_838 = var_6B0 & "," & CVar(var_BF8) & ", '" & CVar(MemVar_1F920C8) & "'," & var_780 & ",'" & IIf((CStr(var_7C4) = "Add"), "A", "E") 
  loc_1C008FA:   var_954 = var_838 & "','N','" & CVar(var_860.Text) & "'," & var_8CC & ",'" & Trim(CVar(var_904)) & "','" 
  loc_1C00948:   var_ABC = var_954 & CVar(MemVar_1F92078) & "','" & Trim(var_9AC) & "'," & var_A14 & "," & var_A64 & "," & CVar(Val(Me.LblInvoiceNo.Caption)) 
  loc_1C00982:   unk_598691.Execute CStr(var_ABC & "," & CVar(Me.ChkPayable.Value) & "," & var_B90 & ")"), var_BE4, -1
  loc_1C00ABF:   For var_C04 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_C04 'Integer
  loc_1C00ACB:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1C00AF3:     var_1D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C00B1A:     Set var_200 = Me.FGrid
  loc_1C00B59:     If CBool(CVar(CLng(5)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))) Then
  loc_1C00B75:       If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_1C00B88:         Set var_1FC = Me.Txt
  loc_1C00B8E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, CVar(CLng(var_92)), (var_1D4 <> vbNullString), CVar(CLng(2)))
  loc_1C00B96:         var_184 = var_200.Text
  loc_1C00B9F:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1C00BC9:         var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C00BEC:         Set var_20C = Me.Txt
  loc_1C00BF2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_C1C, var_3D0, CVar(CLng(0)))
  loc_1C00BFA:         var_184 = var_210.Text
  loc_1C00C07:         var_BF0 = Val(var_C1C)
  loc_1C00C15:         Set var_218 = Me.Txt
  loc_1C00C1B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C, var_BF0, 1)
  loc_1C00C2A:         Proc_6_7_F25D88(var_1D4, CVar(var_21C), var_BE8)
  loc_1C00C3B:         var_2A0 = CVar(CLng(&H17)) 'Long
  loc_1C00C4A:         var_370 = Me.FGrid.TextMatrix)
  loc_1C00C64:         Set var_224 = Me.Txt
  loc_1C00C6A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_438, var_C2C, var_370)
  loc_1C00C72:         var_2A0 = var_438.Text
  loc_1C00C82:         Set var_43C = Me.Txt
  loc_1C00C88:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_6D4, CVar(CLng(var_92)))
  loc_1C00C8D:         var_2E0 = 1
  loc_1C00CDF:         Set var_6DC = Me.Txt
  loc_1C00CE5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7B4, var_C30, CVar(CLng(&H18)))
  loc_1C00CED:         var_2E0 = var_7B4.Tag
  loc_1C00CF6:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1C00CFE:         var_520 = CVar(CLng(&HC)) 'Long
  loc_1C00D1D:         var_580 = CVar(CLng(var_92)) 'Long
  loc_1C00D25:         var_5C0 = CVar(CLng(&H14)) 'Long
  loc_1C00D44:         var_620 = CVar(CLng(var_92)) 'Long
  loc_1C00D4C:         var_660 = CVar(CLng(&H15)) 'Long
  loc_1C00D6B:         var_6C0 = CVar(CLng(var_92)) 'Long
  loc_1C00D73:         var_710 = CVar(CLng(8)) 'Long
  loc_1C00D92:         var_7A0 = CVar(CLng(var_92)) 'Long
  loc_1C00D9A:         var_7E8 = CVar(CLng(7)) 'Long
  loc_1C00DC3:         var_8EC = CVar(CLng(var_92)) 'Long
  loc_1C00DCB:         var_964 = CVar(CLng(&HA)) 'Long
  loc_1C00DF4:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1C00DFC:         var_AAC = CVar(CLng(9)) 'Long
  loc_1C00E25:         var_B40 = CVar(CLng(var_92)) 'Long
  loc_1C00E2D:         var_BB0 = CVar(CLng(&HB)) 'Long
  loc_1C00E56:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1C00E5E:         var_C90 = CVar(CLng(&H11)) 'Long
  loc_1C00E87:         var_CD4 = CVar(CLng(var_92)) 'Long
  loc_1C00E8F:         var_CF4 = CVar(CLng(&H12)) 'Long
  loc_1C00EB8:         var_D38 = CVar(CLng(var_92)) 'Long
  loc_1C00EC0:         var_D58 = CVar(CLng(&HF)) 'Long
  loc_1C00EE2:         var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C00F13:         var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C00F44:         var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C00F55:         Proc_6_7_F25D88(var_954, Date, var_1470, CVar(CLng(&H13)), CVar(CLng(var_92)), var_1468, CVar(CLng(&H10)), CVar(CLng(var_92)))
  loc_1C00F5E:         Set var_B2C = Me.TopCtrl1
  loc_1C00F64:         Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_1460)
  loc_1C00F9F:         var_ED8 = CVar(CLng(var_92)) 'Long
  loc_1C00FA7:         var_EF8 = CVar(CLng(&H1E)) 'Long
  loc_1C00FC6:         var_F28 = CVar(CLng(var_92)) 'Long
  loc_1C00FCE:         var_F48 = CVar(CLng(&HE)) 'Long
  loc_1C00FED:         var_F7C = CVar(CLng(var_92)) 'Long
  loc_1C00FF5:         var_F9C = CVar(CLng(&HD)) 'Long
  loc_1C0101E:         var_FE4 = CVar(CLng(var_92)) 'Long
  loc_1C01026:         var_1004 = CVar(CLng(&H20)) 'Long
  loc_1C01048:         var_1480 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C0104F:         var_104C = CVar(CLng(var_92)) 'Long
  loc_1C01079:         var_1488 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C010AA:         var_1490 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C010DB:         var_1498 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C0110C:         var_149C = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_1498, CVar(CLng(5)), CVar(CLng(var_92)), var_1490, CVar(CLng(6)))
  loc_1C0113D:         var_14A0 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1488)
  loc_1C01193:         var_228 = "Insert Into Purch2(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,GodCode,RoomNo,PartyCode," & "Item,DiscApp,RoundOff,UNIT,"
  loc_1C011A8:         var_3E8 = var_228 & "QtyIss," & "Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total," & "U_Name,U_EntDt,U_AE,DepartCode,ContraDocId,ContraSno,"
  loc_1C011C4:         var_7C8 = var_3E8 & "DelFlag,PostVal,LandVal,ConvRatio,IssQty,IssueUnit,LogSite_Code,TaxStru,AcCode) Values (" & "'" & var_3F0 & "',"
  loc_1C01210:         var_C28 = var_7C8 & CStr(var_3D0) & ",'" & global_132 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_BF0)
  loc_1C01257:         var_434 = CVar(var_C28 & ",") & var_1D4 & ",'" & CVar(global_56) & "','" & CVar(CStr(var_370)) & "','" & IIf((var_C2C <> vbNullString), CVar(var_6D4), CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C01292:         var_4F0 = var_434 & "','" & CVar(var_C30) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C012CE:         var_650 = var_4F0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C0130A:         var_770 = var_650 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C01346:         var_858 = var_770 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_1460) 
  loc_1C013A1:         var_A04 = var_858 & "," & CVar(var_1468) & "," & CVar(var_1470) & ",'" & CVar(MemVar_1F920C8) & "'," & var_954 & ",'" & IIf((CStr(var_9AC) = "Add"), "A", "E") 
  loc_1C013DD:         var_B50 = var_A04 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C01440:         var_1268 = var_B50 & ",'N'," & CVar(var_1480) & "," & CVar(var_1488) & "," & CVar(var_1490) & "," & CVar(var_1498) & ",'" & CVar(var_149C) 
  loc_1C01476:         var_13E0 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_92)), CVar(CLng(&H21)))) 'String
  loc_1C01490:         unk_598691.Execute CStr(var_1268 & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_14A0) & "','" & var_13E0 & "')"), var_1434, -1
  loc_1C01637:       Else
  loc_1C01649:         Set var_1FC = Me.Txt
  loc_1C0164F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, var_1438)
  loc_1C01657:         var_104C = var_200.Text
  loc_1C01660:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1C0168A:         var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C01694:         Set var_208 = Me.LblVPrefix
  loc_1C016AD:         Set var_20C = Me.Txt
  loc_1C016B3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_C1C, var_3D0, CVar(CLng(0)))
  loc_1C016BB:         var_184 = var_210.Text
  loc_1C016C8:         var_BF0 = Val(var_C1C)
  loc_1C016D6:         Set var_218 = Me.Txt
  loc_1C016DC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C, var_BF0)
  loc_1C016E4:         var_1B4 = CVar(var_21C) 'Address
  loc_1C016EB:         Proc_6_7_F25D88(var_1D4, var_1B4, var_1480)
  loc_1C016FC:         var_2A0 = CVar(CLng(&H17)) 'Long
  loc_1C01705:         Set var_220 = Me.FGrid
  loc_1C0170B:         var_370 = var_220.TextMatrix)
  loc_1C01725:         Set var_224 = Me.Txt
  loc_1C0172B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_438, var_C2C, var_370)
  loc_1C01733:         var_2A0 = var_438.Text
  loc_1C01743:         Set var_43C = Me.Txt
  loc_1C01749:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_6D4, CVar(CLng(var_92)))
  loc_1C0174E:         var_2E0 = 1
  loc_1C01769:         var_3C0 = Me.FGrid.TextMatrix)
  loc_1C017A0:         Set var_6DC = Me.Txt
  loc_1C017A6:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7B4, var_C30, CVar(CLng(&H18)))
  loc_1C017AE:         var_2E0 = var_7B4.Tag
  loc_1C017B7:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1C017BF:         var_520 = CVar(CLng(&HC)) 'Long
  loc_1C017DE:         var_580 = CVar(CLng(var_92)) 'Long
  loc_1C017E6:         var_5C0 = CVar(CLng(&H14)) 'Long
  loc_1C01805:         var_620 = CVar(CLng(var_92)) 'Long
  loc_1C0180D:         var_660 = CVar(CLng(&H15)) 'Long
  loc_1C0182C:         var_6C0 = CVar(CLng(var_92)) 'Long
  loc_1C01834:         var_710 = CVar(CLng(8)) 'Long
  loc_1C01853:         var_7A0 = CVar(CLng(var_92)) 'Long
  loc_1C0185B:         var_7E8 = CVar(CLng(7)) 'Long
  loc_1C01884:         var_8EC = CVar(CLng(var_92)) 'Long
  loc_1C0188C:         var_964 = CVar(CLng(&HA)) 'Long
  loc_1C018B5:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1C018BD:         var_AAC = CVar(CLng(9)) 'Long
  loc_1C018E6:         var_B40 = CVar(CLng(var_92)) 'Long
  loc_1C018EE:         var_BB0 = CVar(CLng(&HB)) 'Long
  loc_1C01917:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1C0191F:         var_C90 = CVar(CLng(&H11)) 'Long
  loc_1C01948:         var_CD4 = CVar(CLng(var_92)) 'Long
  loc_1C01950:         var_CF4 = CVar(CLng(&H12)) 'Long
  loc_1C01979:         var_D38 = CVar(CLng(var_92)) 'Long
  loc_1C01981:         var_D58 = CVar(CLng(&HF)) 'Long
  loc_1C0198A:         Set var_A98 = Me.FGrid
  loc_1C019A3:         var_1460 = Val(CStr(var_A98.TextMatrix)))
  loc_1C019D4:         var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C01A05:         var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C01A16:         Proc_6_7_F25D88(var_954, Date, var_1470, CVar(CLng(&H13)), CVar(CLng(var_92)), var_1468, CVar(CLng(&H10)), CVar(CLng(var_92)))
  loc_1C01A1F:         Set var_B2C = Me.TopCtrl1
  loc_1C01A25:         Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_1460)
  loc_1C01A3E:         var_9BC = "A"
  loc_1C01A60:         var_ED8 = CVar(CLng(var_92)) 'Long
  loc_1C01A68:         var_EF8 = CVar(CLng(&H1E)) 'Long
  loc_1C01A87:         var_F28 = CVar(CLng(var_92)) 'Long
  loc_1C01A8F:         var_F48 = CVar(CLng(&HE)) 'Long
  loc_1C01AAE:         var_F7C = CVar(CLng(var_92)) 'Long
  loc_1C01AB6:         var_F9C = CVar(CLng(&HD)) 'Long
  loc_1C01AC5:         var_B20 = Me.FGrid.TextMatrix)
  loc_1C01ADF:         var_FE4 = CVar(CLng(var_92)) 'Long
  loc_1C01AE7:         var_1004 = CVar(CLng(&H20)) 'Long
  loc_1C01B10:         var_104C = CVar(CLng(var_92)) 'Long
  loc_1C01B3A:         var_1488 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C01B6B:         var_1490 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C01B9C:         var_1498 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C01BCD:         var_149C = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_1498, CVar(CLng(5)), CVar(CLng(var_92)), var_1490, CVar(CLng(6)))
  loc_1C01BFE:         var_14A0 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1488)
  loc_1C01C54:         var_228 = "Insert Into Purch2(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,GodCode,RoomNo,PartyCode," & "Item,DiscApp,RoundOff,UNIT,"
  loc_1C01C69:         var_3E8 = var_228 & "QtyRec," & "Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total," & "U_Name,U_EntDt,U_AE,DepartCode,ContraDocId,ContraSno,"
  loc_1C01C85:         var_7C8 = var_3E8 & "DelFlag,PostVal,LandVal,ConvRatio,recdQty,RecdUnit,LogSite_Code,TaxStru,AcCode) Values (" & "'" & var_3F0 & "',"
  loc_1C01C98:         var_B30 = var_7C8 & CStr(var_3D0) & ",'"
  loc_1C01CB0:         var_C10 = var_B30 & global_132 & "','" & var_208.Caption
  loc_1C01CBE:         var_C18 = var_C10 & "','" & MemVar_1F92070
  loc_1C01D11:         var_3B0 = CVar(var_C18 & "'," & CStr(var_BF0) & ",") & var_1D4 & ",'" & CVar(global_56) & "','" & CVar(CStr(var_370)) & "','" 
  loc_1C01D3F:         var_4B0 = var_3B0 & IIf((var_C2C <> vbNullString), CVar(var_6D4), CVar(CStr(var_3C0))) & "','" & CVar(var_C30) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C01D7B:         var_5F0 = var_4B0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C01DB7:         var_720 = var_5F0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C01DF3:         var_818 = var_720 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C01E52:         var_974 = var_818 & "," & CVar(var_1460) & "," & CVar(var_1468) & "," & CVar(var_1470) & ",'" & CVar(MemVar_1F920C8) & "'," & var_954 
  loc_1C01E8A:         var_ADC = var_974 & ",'" & IIf((CStr(var_9AC) = "Add"), var_9BC, "E") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C01ECF:         var_10B4 = var_ADC & "'," & CVar(Val(CStr(var_B20))) & ",'N'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_1488) & "," 
  loc_1C01F27:         var_134C = var_10B4 & CVar(var_1490) & "," & CVar(var_1498) & ",'" & CVar(var_149C) & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_14A0) 
  loc_1C01F37:         var_13E0 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_92)), CVar(CLng(&H21)))) 'String
  loc_1C01F51:         unk_598691.Execute CStr(var_134C & "','" & var_13E0 & "')"), var_1434, -1
  loc_1C020F5:       End If
  loc_1C020FD:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1C02138:       var_1F8 = "Select IsNull(LPurDate,'01/Jan/1900') From ItemMast Where Code='" & CStr(Me.FGrid.TextMatrix))
  loc_1C02148:       unk_598691.Execute var_1F8 & "' And ItemType='Store'", var_1B4, -1
  loc_1C02153:       Set var_88 = var_200
  loc_1C02183:       If (var_88.RecordCount > 0) Then
  loc_1C0218E:         var_184 = 0
  loc_1C021A2:         var_200 = var_88.Fields.Item(var_184)
  loc_1C021B7:         var_1B4 = CVar(Proc_6_38_E68A98(var_200.Value, var_200, var_200.Value, CVar(CLng(&HC)), var_184)) 'String
  loc_1C021CA:         Set var_204 = Me.Txt
  loc_1C021D0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_208, IsDate(var_1B4), var_1438)
  loc_1C021F4:         If (var_104C And IsDate(CVar(var_208))) Then
  loc_1C02207:           Set var_204 = Me.Txt
  loc_1C0220D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_208, var_1F8)
  loc_1C02215:           var_1480 = var_208.Text
  loc_1C02234:           var_200 = var_88.Fields.Item(0)
  loc_1C02269:           If (CDate(Proc_6_38_E68A98(var_200.Value, var_1004)) <= CDate(var_1F8)) Then
  loc_1C02272:             var_184 = CVar(CLng(var_92)) 'Long
  loc_1C022A5:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1C022B5:               Set var_1FC = Me.Txt
  loc_1C022BB:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200, CVar(CLng(&HC)))
  loc_1C022CA:               Proc_6_7_F25D88(var_1B4, CVar(var_200))
  loc_1C022D3:               var_1C4 = CVar(CLng(var_92)) 'Long
  loc_1C022DB:               var_250 = CVar(CLng(&HB)) 'Long
  loc_1C02304:               var_270 = CVar(CLng(var_92)) 'Long
  loc_1C0230C:               var_290 = CVar(CLng(5)) 'Long
  loc_1C02335:               var_2E0 = CVar(CLng(var_92)) 'Long
  loc_1C0233D:               var_310 = CVar(CLng(&HC)) 'Long
  loc_1C02346:               Set var_20C = Me.FGrid
  loc_1C0234C:               var_370 = var_20C.TextMatrix)
  loc_1C0236D:               var_1D4 = "Update ItemMast Set LPurDate=" & var_1B4 
  loc_1C0238E:               var_320 = var_1D4 & ",LPurRate=" & CVar((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(Me.FGrid.TextMatrix))))) & " Where COde='" 
  loc_1C023B0:               unk_598691.Execute CStr(var_320 & CVar(CStr(var_370)) & "' And ItemType='Store'"), var_3C0, -1
  loc_1C023E8:             End If
  loc_1C023E8:           End If
  loc_1C023EA:         End If
  loc_1C023EC:       End If
  loc_1C02427:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1C02443:         If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_1C02456:           Set var_1FC = Me.Txt
  loc_1C0245C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, CVar(CLng(&HE)), CVar(CLng(var_92)), var_210, var_370)
  loc_1C02464:           var_310 = var_200.Text
  loc_1C024A8:           Set var_208 = Me.Txt
  loc_1C024AE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C, var_B30, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1C024B6:           var_2E0 = var_20C.Text
  loc_1C024C3:           var_BF0 = Val(var_B30)
  loc_1C024D1:           Set var_210 = Me.Txt
  loc_1C024D7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_218, var_BF0, var_BF0)
  loc_1C024E6:           Proc_6_7_F25D88(var_1D4, CVar(var_218), var_290)
  loc_1C024F9:           Set var_21C = Me.Txt
  loc_1C024FF:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_220, var_C10)
  loc_1C02507:           var_270 = var_220.Tag
  loc_1C0252C:           Set var_438 = Me.Txt
  loc_1C02532:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_43C, var_C18)
  loc_1C02543:           var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1C0254B:           var_2F0 = CVar(CLng(&H17)) 'Long
  loc_1C0256A:           var_340 = CVar(CLng(var_92)) 'Long
  loc_1C02572:           var_360 = CVar(CLng(&HC)) 'Long
  loc_1C02591:           var_520 = CVar(CLng(var_92)) 'Long
  loc_1C02599:           var_560 = CVar(CLng(5)) 'Long
  loc_1C025C2:           var_5E0 = CVar(CLng(var_92)) 'Long
  loc_1C025CA:           var_620 = CVar(CLng(5)) 'Long
  loc_1C025F3:           var_710 = CVar(CLng(var_92)) 'Long
  loc_1C025FB:           var_750 = CVar(CLng(7)) 'Long
  loc_1C02624:           var_808 = CVar(CLng(var_92)) 'Long
  loc_1C0262C:           var_894 = CVar(CLng(5)) 'Long
  loc_1C02655:           var_984 = CVar(CLng(var_92)) 'Long
  loc_1C0265D:           var_A34 = CVar(CLng(9)) 'Long
  loc_1C02686:           var_ACC = CVar(CLng(var_92)) 'Long
  loc_1C0268E:           var_B10 = CVar(CLng(&HA)) 'Long
  loc_1C026B7:           var_BD4 = CVar(CLng(var_92)) 'Long
  loc_1C026BF:           var_C60 = CVar(CLng(4)) 'Long
  loc_1C026DE:           var_C90 = CVar(CLng(var_92)) 'Long
  loc_1C026F5:           var_7C4 = Me.FGrid.TextMatrix)
  loc_1C0272F:           var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C02760:           var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C02766:           Proc_6_104_ED5D18(var_974, var_1468, CVar(CLng(6)), CVar(CLng(var_92)), var_1460, CVar(CLng(&HB)), CVar(CLng(var_92)), var_7C4)
  loc_1C0276F:           Set var_9F0 = Me.TopCtrl1
  loc_1C02775:           Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(CVar(CLng(8)))
  loc_1C027B0:           var_E98 = CVar(CLng(var_92)) 'Long
  loc_1C027B8:           var_EB8 = CVar(CLng(&H21)) 'Long
  loc_1C027DA:           var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C027F8:           var_1F8 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_1C0280D:           var_3DC = var_1F8 & "QtyIss,IssQty,Rate,ItemRate,IssueUnit,Unit," & "Amount,Specification,ConvRatio," & "ContraDocid,ContraSNo, "
  loc_1C0283C:           var_A9C = var_3DC & "U_Name,U_EntDt,U_AE,DepartCode,LandVal,LogSite_Code) " & "Values(" & "'" & var_3F0 & "'," & CStr(var_43C.Tag)
  loc_1C0288B:           var_3B0 = CVar(var_A9C & "," & CStr(var_BF0) & ",") & var_1D4 & ",'" & CVar(var_C10) & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1C028D9:           var_4C0 = var_3B0 & CVar(MemVar_1F92070) & "'," & "'" & CVar(var_C18) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C0291C:           var_5B0 = var_4C0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & 0 & "," 
  loc_1C0294D:           var_690 = var_5B0 & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_1C02980:           var_790 = var_690 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C029D7:           var_8DC = var_790 & "','" & CVar(CStr(var_7C4)) & "'," & vbNullString & CVar(var_1460) & ",''," & CVar(var_1468) & "," & "''," 
  loc_1C02A25:           var_A24 = var_8DC & 0 & "," & "'" & CVar(MemVar_1F920C8) & "'," & var_974 & ",'" & IIf((CStr(var_9BC) = "Add"), "A", "E") & "','" 
  loc_1C02A6D:           unk_598691.Execute CStr(var_A24 & CVar(MemVar_1F92070) & "PURC'," & CVar(var_1470) & ",'" & CVar(MemVar_1F92078) & "')"), var_B20, -1
  loc_1C02B98:         Else
  loc_1C02BAA:           Set var_1FC = Me.Txt
  loc_1C02BB0:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, var_A98, var_1470, var_EB8, var_E98)
  loc_1C02BB8:           var_C90 = var_200.Text
  loc_1C02BEB:           var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C02BFC:           Set var_208 = Me.Txt
  loc_1C02C02:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C, var_B30, var_3D0, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1C02C0A:           var_770 = var_20C.Text
  loc_1C02C17:           var_BF0 = Val(var_B30)
  loc_1C02C25:           Set var_210 = Me.Txt
  loc_1C02C2B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_218, var_BF0, var_C60)
  loc_1C02C3A:           Proc_6_7_F25D88(var_1D4, CVar(var_218), var_BD4)
  loc_1C02C4D:           Set var_21C = Me.Txt
  loc_1C02C53:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_220, var_C10)
  loc_1C02C5B:           var_1458 = var_220.Tag
  loc_1C02C80:           Set var_438 = Me.Txt
  loc_1C02C86:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_43C, var_C18)
  loc_1C02C8E:           var_B10 = var_43C.Tag
  loc_1C02C97:           var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1C02C9F:           var_2F0 = CVar(CLng(&H17)) 'Long
  loc_1C02CBE:           var_340 = CVar(CLng(var_92)) 'Long
  loc_1C02CC6:           var_360 = CVar(CLng(&HC)) 'Long
  loc_1C02CE5:           var_520 = CVar(CLng(var_92)) 'Long
  loc_1C02CED:           var_560 = CVar(CLng(5)) 'Long
  loc_1C02D16:           var_5E0 = CVar(CLng(var_92)) 'Long
  loc_1C02D1E:           var_620 = CVar(CLng(5)) 'Long
  loc_1C02D27:           Set var_7B4 = Me.FGrid
  loc_1C02D47:           var_710 = CVar(CLng(var_92)) 'Long
  loc_1C02D4F:           var_750 = CVar(CLng(7)) 'Long
  loc_1C02D78:           var_808 = CVar(CLng(var_92)) 'Long
  loc_1C02D80:           var_894 = CVar(CLng(5)) 'Long
  loc_1C02D89:           Set var_860 = Me.FGrid
  loc_1C02D8F:           var_650 = var_860.TextMatrix)
  loc_1C02DA9:           var_984 = CVar(CLng(var_92)) 'Long
  loc_1C02DB1:           var_A34 = CVar(CLng(9)) 'Long
  loc_1C02DDA:           var_ACC = CVar(CLng(var_92)) 'Long
  loc_1C02DE2:           var_B10 = CVar(CLng(&HA)) 'Long
  loc_1C02DEB:           Set var_8AC = Me.FGrid
  loc_1C02E0B:           var_BD4 = CVar(CLng(var_92)) 'Long
  loc_1C02E13:           var_C60 = CVar(CLng(4)) 'Long
  loc_1C02E32:           var_C90 = CVar(CLng(var_92)) 'Long
  loc_1C02E43:           Set var_904 = Me.FGrid
  loc_1C02E49:           var_7C4 = var_904.TextMatrix)
  loc_1C02E83:           var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C02EB4:           var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1C02EBA:           Proc_6_104_ED5D18(var_974, var_1468, CVar(CLng(6)), CVar(CLng(var_92)), var_1460, CVar(CLng(&HB)), CVar(CLng(var_92)), var_7C4)
  loc_1C02EC3:           Set var_9F0 = Me.TopCtrl1
  loc_1C02EC9:           Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(CVar(CLng(8)))
  loc_1C02F04:           var_E98 = CVar(CLng(var_92)) 'Long
  loc_1C02F0C:           var_EB8 = CVar(CLng(&H21)) 'Long
  loc_1C02F4C:           var_1F8 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_1C02F61:           var_3DC = var_1F8 & "QtyRec,AccQty,Rate,ItemRate,RecdUnit,Unit," & "Amount,Specification,ConvRatio," & "ContraDocid,ContraSNo, "
  loc_1C02F90:           var_A9C = var_3DC & "U_Name,U_EntDt,U_AE,DepartCode,LandVal,LogSite_Code) " & "Values(" & "'" & var_3F0 & "'," & CStr(var_3D0)
  loc_1C02FAA:           var_1F4 = CVar(var_A9C & "," & CStr(var_BF0) & ",") 'String
  loc_1C02FF2:           var_400 = var_1F4 & var_1D4 & ",'" & CVar(var_C10) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "'," 
  loc_1C0302D:           var_4C0 = var_400 & "'" & CVar(var_C18) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C03036:           var_4D0 = var_4C0 & "'," 
  loc_1C0304A:           var_510 = var_4D0 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_1C03084:           var_610 = var_510 & CVar(Val(CStr(var_7B4.TextMatrix)))) & "," & 0 & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1C030C0:           var_740 = var_610 & "," & CVar(Val(CStr(var_650))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_8AC.TextMatrix)))) 
  loc_1C030DD:           var_7B0 = var_740 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_1C0313D:           var_914 = var_7B0 & CVar(CStr(var_7C4)) & "'," & vbNullString & CVar(var_1460) & ",''," & CVar(var_1468) & "," & "''," & 0 & "," 
  loc_1C03183:           var_A44 = var_914 & "'" & CVar(MemVar_1F920C8) & "'," & var_974 & ",'" & IIf((CStr(var_9BC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92070) 
  loc_1C031C1:           unk_598691.Execute CStr(var_A44 & "PURC'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(MemVar_1F92078) & "')"), var_B20, -1
  loc_1C032E9:         End If
  loc_1C032EE:       Else
  loc_1C032F6:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1C032FE:         var_1C4 = CVar(CLng(&H21)) 'Long
  loc_1C03323:         var_250 = 1
  loc_1C0332F:         var_270 = CVar(CLng(&HE)) 'Long
  loc_1C0334A:         var_290 = 1
  loc_1C03356:         var_2C0 = CVar(CLng(&HD)) 'Long
  loc_1C033A3:         var_3EC = "Update Stock Set LandVal=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & " Where DocId='" & CStr(Me.FGrid.TextMatrix)) & "' And SNo="
  loc_1C033B7:         unk_598691.Execute var_3EC & CStr(Me.FGrid.TextMatrix)), var_1F4, -1
  loc_1C033E7:       End If
  loc_1C033E9:     End If
  loc_1C033F0:   Next var_C04 'Integer
  loc_1C0341C:   For var_14A8 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)):   var_92 = var_14A8 'Integer
  loc_1C03428:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1C03430:     var_1C4 = CVar(CLng(2)) 'Long
  loc_1C03477:     Set var_200 = Me.FGCat
  loc_1C03488:     var_170 = CStr(var_200.TextMatrix))
  loc_1C034B6:     If CBool(CVar(CLng(6)) And (CDbl(Val(var_170)) <> CDbl(0))) Then
  loc_1C034C9:       Set var_1FC = Me.Txt
  loc_1C034CF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, CVar(CLng(var_92)))
  loc_1C034D7:       (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_200.Text
  loc_1C0350A:       var_3D0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1C03522:       Set var_208 = Me.FGCat
  loc_1C03528:       var_1B4 = var_208.TextMatrix)
  loc_1C0353B:       var_BF0 = Val(CStr(var_1B4))
  loc_1C0354B:       var_A9C = Me.LblVPrefix.Caption
  loc_1C0355E:       Set var_210 = Me.Txt
  loc_1C03564:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_218, var_C10, var_BF0, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1C03579:       var_BF8 = Val(var_C10)
  loc_1C03587:       Set var_21C = Me.Txt
  loc_1C0358D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_220, var_BF8, CVar(CLng(1)))
  loc_1C0359C:       Proc_6_7_F25D88(var_1F4, CVar(var_220), CVar(CLng(var_92)))
  loc_1C035A5:       var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1C035AD:       var_2F0 = CVar(CLng(2)) 'Long
  loc_1C035B6:       Set var_224 = Me.FGCat
  loc_1C035CC:       var_340 = CVar(CLng(var_92)) 'Long
  loc_1C035D4:       var_360 = CVar(CLng(4)) 'Long
  loc_1C035F6:       var_C00 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1C0360E:       Set var_43C = Me.FGCat
  loc_1C03627:       var_1440 = Val(CStr(var_43C.TextMatrix)))
  loc_1C03658:       var_1448 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1C03669:       Proc_6_7_F25D88(var_4D0, Date, var_1448, CVar(CLng(6)), CVar(CLng(var_92)), var_1440, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1C03672:       Set var_6D8 = Me.TopCtrl1
  loc_1C03678:       Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_C00)
  loc_1C036AA:       var_570 = IIf((CStr(var_510) = "Add"), "A", "E")
  loc_1C036C3:       var_1F8 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code) Values (" & "'"
  loc_1C03716:       var_C08 = var_1F8 & var_170 & "'," & CStr(var_218.Text) & "," & CStr(var_BF0) & ",'" & global_132 & "','" & var_A9C & "','"
  loc_1C0371D:       var_C0C = var_C08 & MemVar_1F92070
  loc_1C03767:       var_3B0 = CVar(var_C0C & "'," & CStr(var_BF8) & ",") & var_1F4 & ",'" & CVar(global_56) & "','" & CVar(CStr(var_224.TextMatrix))) 
  loc_1C037C6:       var_4E0 = var_3B0 & "'," & CVar(var_C00) & "," & CVar(var_1440) & "," & CVar(var_1448) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4D0 
  loc_1C03800:       unk_598691.Execute CStr(var_4E0 & ",'" & var_570 & "','N','" & CVar(MemVar_1F92078) & "')"), var_610, -1
  loc_1C038AC:     End If
  loc_1C038B3:   Next var_14A8 'Integer
  loc_1C038C6:   Set var_1FC = Me.TxtGt
  loc_1C038CC:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172, var_92)
  loc_1C038D7:   For var_14AC =  To var_172:   1 = var_14AC 'Integer
  loc_1C038EC:     Set var_1FC = Me.TxtGt
  loc_1C038F2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200)
  loc_1C0390C:     If (var_200.Visible = &HFF) Then
  loc_1C0391F:       Set var_1FC = Me.Txt
  loc_1C03925:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C03940:       Set var_204 = Me.Txt
  loc_1C03946:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_208)
  loc_1C03969:       Set var_20C = Me.Txt
  loc_1C0396F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210)
  loc_1C0397E:       Proc_6_7_F25D88(var_1B4, CVar(var_210))
  loc_1C03990:       Set var_218 = Me.LblCap
  loc_1C03996:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_21C)
  loc_1C039B0:       Set var_220 = Me.TxtPer
  loc_1C039B6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_224)
  loc_1C039CB:       var_BF0 = Val(var_224.Tag)
  loc_1C039DB:       Set var_438 = Me.LblCap
  loc_1C039E1:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_43C, var_A9C)
  loc_1C039FB:       Set var_6D4 = Me.LblAt
  loc_1C03A01:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6D8)
  loc_1C03A1B:       Set var_6DC = Me.TxtGt
  loc_1C03A21:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7B4)
  loc_1C03A3B:       Set var_85C = Me.TxtPer
  loc_1C03A41:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_860)
  loc_1C03A56:       var_BF8 = Val(var_860.Text)
  loc_1C03A66:       Set var_8A8 = Me.TxtGt
  loc_1C03A6C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_8AC, var_C0C)
  loc_1C03A81:       var_C00 = Val(var_C0C)
  loc_1C03A91:       Set var_900 = Me.LblDummy
  loc_1C03A97:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_904, var_C10)
  loc_1C03AAC:       var_1440 = Val(var_C10)
  loc_1C03ABD:       Proc_6_7_F25D88(var_510, Date)
  loc_1C03AC6:       Set var_998 = Me.TopCtrl1
  loc_1C03ACC:       Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_1440)
  loc_1C03B0E:       Set var_99C = Me.Txt
  loc_1C03B14:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_9F0)
  loc_1C03B23:       Proc_6_7_F25D88(var_650, CVar(var_9F0))
  loc_1C03B35:       Set var_9F4 = Me.LblDummy
  loc_1C03B3B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_A98)
  loc_1C03B5C:       var_1F8 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_200.Text
  loc_1C03B76:       var_3E8 = var_1F8 & "'," & CStr(var_92) & ",'"
  loc_1C03BBC:       var_320 = CVar(var_3E8 & global_132 & "'," & CStr(Val(var_208.Text)) & ",") & var_1B4 & ",'" & CVar(var_21C.Tag) & "'," 
  loc_1C03C14:       var_470 = var_320 & CVar(var_43C.Caption) & ",'" & CVar(var_A9C) & "','" & CVar(var_6D8.Tag) & "','" & CVar(var_7B4.Tag) & "'," & CVar(var_8AC.Text) 
  loc_1C03C6F:       var_5F0 = var_470 & "," & CVar(var_904.Caption) & "," & CVar(var_1440) & ",'" & CVar(MemVar_1F920C8) & "'," & var_510 & ",'" & IIf((CStr(var_570) = "Add"), "A", "E") 
  loc_1C03CB8:       var_760 = var_5F0 & "'," & var_650 & ",'" & CVar(var_A98.Tag) & "','" & CVar(MemVar_1F92070) & "PURC','N','" & CVar(MemVar_1F92070) 
  loc_1C03CE2:       unk_598691.Execute CStr(var_760 & "','" & CVar(MemVar_1F92078) & "')"), var_7B0, -1
  loc_1C03DAE:     End If
  loc_1C03DB5:   Next var_14AC 'Integer
  loc_1C03DC0:   Set var_1FC = Me.TopCtrl1
  loc_1C03DC6:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1C03DDF:   If (CStr() = "Add") Then
  loc_1C03DF8:     var_170 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1C03E1E:     var_1D4 = CVar(var_170 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_132 & "' And VP.Date_From<=") 'String
  loc_1C03E2F:     Set var_1FC = Me.Txt
  loc_1C03E35:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200, var_3E8, var_1D4)
  loc_1C03E3D:     var_2B0 = var_200.Text
  loc_1C03E4B:     Proc_6_7_F25D88(var_1B4, CVar(var_3E8))
  loc_1C03E53:     var_1F4 = -1 & var_1B4 
  loc_1C03E6A:     unk_598691.Execute CStr(CVar(var_3E8 & global_132 & "'," & CStr(Val(var_208.Text)) & ",") & var_1B4 & " Order By VP.Date_From DESC"), var_204, 
  loc_1C03E75:     Set var_88 = var_204
  loc_1C03EA7:     var_3C4 = var_88.RecordCount
  loc_1C03EB5:     If (var_3C4 > 0) Then
  loc_1C03EC8:       Set var_1FC = Me.Txt
  loc_1C03ECE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1C03EE3:       var_3D0 = Val(var_200.Text)
  loc_1C03EF8:       var_204 = var_88.Fields
  loc_1C03F08:       var_194 = var_204.Item("V_Type").Value
  loc_1C03F33:       Proc_6_7_F25D88(var_2B0, CVar(var_88.Fields.Item("Date_From")))
  loc_1C03F58:       var_3D8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_3D0) & " Where (SITE_CODE='"
  loc_1C03F83:       var_1F4 = CVar(var_3D8 & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_194 & "' and Date_From=" 
  loc_1C03F98:       unk_598691.Execute CStr(var_1F4 & var_2B0), var_320, -1
  loc_1C03FD2:     End If
  loc_1C03FD4:   End If
  loc_1C03FDC:   Set var_1FC = Me.TopCtrl1
  loc_1C03FE2:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_218)
  loc_1C03FFB:   If (CStr(var_3D0) = "Add") Then
  loc_1C04023:     var_170 = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078
  loc_1C04041:     Call 0.Method_arg_50 (var_3D8, var_170 & "' and UNAME='" & MemVar_1F920C8 & "' AND ENAME='", var_194, -1, var_1FC)
  loc_1C04051:     var_3EC = var_200 & var_3D8 & "' "
  loc_1C0405A:     unk_598691.Execute var_3EC, 0, var_204
  loc_1C04062:     var_1B4 = var_1FC.Fields
  loc_1C0406A:      = var_200.Item()
  loc_1C04072:      = var_204.Value
  loc_1C040A3:     If (var_1B4 > 0) Then
  loc_1C040C6:       Set var_1FC = Me.Txt
  loc_1C040CC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, "UPDATE LASTVOU  SET DOCID='")
  loc_1C040D4:       var_194 = var_200.Text
  loc_1C040DD:       var_1F8 = -1 & var_170
  loc_1C040F2:       var_3DC = var_170 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "' and UNAME='"
  loc_1C04109:       Call 0.Method_arg_50 (var_3EC, var_3DC & MemVar_1F920C8 & "' AND ENAME='")
  loc_1C04122:       unk_598691.Execute var_204 & var_3EC & "'  ", , 
  loc_1C0414D:     Else
  loc_1C04175:       Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_320)
  loc_1C0417E:       var_3D8 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='"
  loc_1C04185:       var_3E8 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "','"
  loc_1C04196:       Set var_1FC = Me.Txt
  loc_1C0419C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3DC)
  loc_1C041A4:       var_3E8 = var_200.Text
  loc_1C041D3:       Proc_6_7_F25D88(var_1B4, Date)
  loc_1C041DF:       var_184 = ",'A','"
  loc_1C04205:       unk_598691.Execute CStr(CVar(var_204 & var_3DC & "','" & MemVar_1F92070 & "',") & var_1B4 & var_184 & CVar(MemVar_1F92078) & "')"), , 
  loc_1C0423D:     End If
  loc_1C0423F:   End If
  loc_1C04249:   unk_598691.CommitTrans
  loc_1C04259:   unk_598691.BeginTrans var_3C4
  loc_1C04260:   Call Proc_338_111_1B8C294()
  loc_1C0426D:   unk_598691.CommitTrans
  loc_1C04278:   Set var_1FC = Me.TopCtrl1
  loc_1C0427E:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1C04297:   If (CStr() = "Add") Then
  loc_1C042A5:     unk_598691.BeginTrans var_3C4
  loc_1C042AC:     Call Proc_338_111_1B8C294()
  loc_1C042B9:     unk_598691.CommitTrans
  loc_1C042BE:   End If
  loc_1C042C4:   var_8A = 0
  loc_1C042D7:   Set var_1FC = Me.Txt
  loc_1C042DD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1C042FB:   var_8A = 0
  loc_1C0430B:   Me.Requery -1
  loc_1C04337:   Me.Find "SearchCode ='" & var_200.Text & "'", 0, 1
  loc_1C04349:   Set var_1FC = Me.TopCtrl1
  loc_1C0434F:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_184)
  loc_1C04368:   If (CStr(var_8A) = "Add") Then
  loc_1C04376:     var_3C4 = Me.State
  loc_1C04384:     If (var_3C4 <> 0) Then
  loc_1C04394:       Me.Requery -1
  loc_1C04399:     End If
  loc_1C04399:   End If
  loc_1C043BE:   Call Proc_338_93_FEC938(Proc_5_1_100CB50("INI", Me), global_72)
  loc_1C043CB:   Call Proc_338_90_1A01BB8(var_8A)
  loc_1C043D5:   Call 0.Method_arg_2A0 ()
  loc_1C043F7:   If (Me.FrTrans.Visible = &HFF) Then
  loc_1C04408:     Me.FrTrans.Visible = False
  loc_1C04410:   End If
  loc_1C04410: End If
  loc_1C04417: Set var_88 = Nothing
  loc_1C04421: Set var_14C = Nothing
  loc_1C04426: Exit Sub
  loc_1C04427: ' Referenced from: 1BFEB34
  loc_1C04431: Set var_1FC = Err()
  loc_1C04437: Call 0.Method_arg_1C (var_3C4)
  loc_1C04448: If (var_3C4 = &H5B) Then
  loc_1C0444D:   Resume Next
  loc_1C04451: End If
  loc_1C04459: If (var_8A = &HFF) Then
  loc_1C04464:   unk_598691.RollbackTrans
  loc_1C04469: End If
  loc_1C0446B: Proc_6_60_E62BC4()
  loc_1C04472: Exit Sub
End Sub

Private Sub DGPartyBillNo_UnknownEvent_9 'F3B044
  'Data Table: 598674
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3AF3B: Me.DGPartyBillNo.Visible = False
  loc_F3AF5A: If (Me.RecordCount > 0) Then
  loc_F3AF99:   Set var_B4 = Me.Txt
  loc_F3AF9F:   Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3AFA7:   var_B8.Text = CStr(Me.Fields.Item("PartyBillNoCd").Value)
  loc_F3AFDA:   var_B0 = Me.Fields.Item("PartyBillNoNm")
  loc_F3AFF9:   Set var_B4 = Me.Txt
  loc_F3AFFF:   Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3B007:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3B01D: End If
  loc_F3B028: Set var_A8 = Me.Txt
  loc_F3B02E: Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5))
  loc_F3B036: var_B0.SetFocus
  loc_F3B042: Exit Sub
End Sub

Private Sub DGPartyBillNo_UnknownEvent_1F 'EA4584
  'Data Table: 598674
  Dim var_A8 As Variant
  loc_EA4504: Set var_88 = Me.DGPartyBillNo
  loc_EA452E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4536: Set var_BC = Me.DGPartyBillNo
  loc_EA4572: Proc_6_138_106D6F8(Me.DGPartyBillNo, global_68, CInt(5), Me.FGPoint)
  loc_EA4580: Exit Sub
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E0C500
  'Data Table: 598674
  loc_E0C4F2: If (CLng(KeyCode) = &HD) Then
  loc_E0C4FA:   Call TxtBarCode_Validate(&HFF)
  loc_E0C4FF: End If
  loc_E0C4FF: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '1504264
  'Data Table: 598674
  Dim var_9C As String
  Dim var_A0 As Variant
  Dim var_88 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_106 As Integer
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_104 As Variant
  Dim var_204 As Double
  Dim var_15C As Variant
  Dim var_20C As Double
  Dim var_1CC As Variant
  Dim var_E4 As Variant
  Dim var_210 As TextBox
  Dim var_148 As Variant
  Dim unk_598691 As Connection15
  Dim var_10C As Recordset15
  loc_15033A8: Set var_88 = Me.TopCtrl1
  loc_15033AE: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_15033B6: var_9C = CStr()
  loc_15033EA: If ((var_9C = "Browse") And (Me.TxtBarCode.Text <> vbNullString)) Then
  loc_15033FA:   Me.TxtBarCode.Text = vbNullString
  loc_1503408:   Call 0.Method_arg_50 (var_9C)
  loc_1503429:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_1503439:   Exit Sub
  loc_150343A: End If
  loc_150345C: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_150345F:   Exit Sub
  loc_1503460: End If
  loc_150346B: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_1503474: var_110 = CStr(var_C4)
  loc_150348B: Me.TxtBarCode.Text = vbNullString
  loc_15034AA: If (Me.RecordCount = 0) Then
  loc_15034AD:   Exit Sub
  loc_15034AE: End If
  loc_15034B4: Me.MoveFirst
  loc_15034DE: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_15034FE: If (Me.EOF = &HFF) Then
  loc_150351A:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_150352D: Else
  loc_1503547:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1503554:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_150355C:   var_F4 = CVar(CLng(&HC)) 'Long
  loc_1503587:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_150358A:     var_B4 = vbNullString
  loc_1503594:     Set var_88 = Me.FGrid
  loc_15035BF:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15035C8:   End If
  loc_15035DB:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_15035E7:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_15035EF:   var_128 = CVar(CLng(2)) 'Long
  loc_1503622:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_150362A:   Set var_14C = Me.FGrid
  loc_1503630:   LateIdCallSt
  loc_150364C:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1503654:   var_128 = CVar(CLng(&HC)) 'Long
  loc_1503687:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_150368F:   Set var_14C = Me.FGrid
  loc_1503695:   LateIdCallSt
  loc_15036B1:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_15036B9:   var_128 = CVar(CLng(1)) 'Long
  loc_15036EC:   var_C4 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_15036F4:   Set var_14C = Me.FGrid
  loc_15036FA:   LateIdCallSt
  loc_1503716:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_150371E:   var_128 = CVar(CLng(4)) 'Long
  loc_1503751:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1503759:   Set var_14C = Me.FGrid
  loc_150375F:   LateIdCallSt
  loc_150377B:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1503783:   var_128 = CVar(CLng(8)) 'Long
  loc_15037B6:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_15037BE:   Set var_14C = Me.FGrid
  loc_15037C4:   LateIdCallSt
  loc_15037FF:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_1503807:   var_138 = CVar(CLng(6)) 'Long
  loc_1503834:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_150383C:   Set var_14C = Me.FGrid
  loc_1503842:   LateIdCallSt
  loc_1503860:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1503868:   var_F4 = CVar(CLng(0)) 'Long
  loc_1503872:   var_98 = CVar(CStr(var_106)) 'String
  loc_150387A:   Set var_88 = Me.FGrid
  loc_1503880:   LateIdCallSt
  loc_1503892:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_150389A:   var_F4 = CVar(CLng(5)) 'Long
  loc_15038CA:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_15038D1:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_15038D9:     var_F4 = CVar(CLng(5)) 'Long
  loc_15038DE:     var_138 = "1.000"
  loc_15038E8:     Set var_88 = Me.FGrid
  loc_15038EE:     LateIdCallSt
  loc_15038F9:   End If
  loc_15038FD:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1503905:   var_F4 = CVar(CLng(5)) 'Long
  loc_150391F:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_1503927:   var_204 = Val(var_9C)
  loc_150392E:   var_138 = CVar(CLng(var_106)) 'Long
  loc_1503936:   var_15C = CVar(CLng(6)) 'Long
  loc_1503950:   var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_1503958:   var_20C = Val(var_A4)
  loc_1503967:   var_1CC = CVar(CLng(7)) 'Long
  loc_15039A0:   Set var_14C = Me.FGrid
  loc_15039A6:   LateIdCallSt
  loc_1503A0B:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_210, var_A4, Me.Txt, CVar(CStr(Format(CVar((var_204 * var_20C)), "0.000"))), 1, 1)
  loc_1503A13:   var_1CC = var_210.Text
  loc_1503A2A:   Call Proc_338_106_1063980(CStr(Me.Fields.Item("Code").Value), var_A4, var_204, CVar(CLng(var_106)), var_20C)
  loc_1503A3B:   var_148 = CVar(CLng(9)) 'Long
  loc_1503A76:   LateIdCallSt
  loc_1503ABC:   var_A0 = Me.Fields.Item("Code")
  loc_1503AD7:   Set var_14C = Me.Txt
  loc_1503ADD:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_210, var_A4, Me.FGrid, CVar(CStr(Format(CVar(var_204), "0.00000"))), 1, 1)
  loc_1503AE5:   var_148 = var_210.Text
  loc_1503AFC:   Call Proc_338_106_1063980(CStr(var_A0.Value), var_A4, var_204, CVar(CLng(var_106)))
  loc_1503B05:   var_128 = CVar(CLng(var_106)) 'Long
  loc_1503B0D:   var_148 = CVar(CLng(&HA)) 'Long
  loc_1503B48:   LateIdCallSt
  loc_1503B90:   Set var_88 = Me.Txt
  loc_1503B96:   Call 0.Method_TxtBarCode_Validate0 (CInt(7), var_A0, var_9C, CVar(CLng(&H18)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar(var_204), "0.00000"))))
  loc_1503B9E:   1 = var_A0.Tag
  loc_1503BA6:   var_98 = CVar(var_9C) 'String
  loc_1503BB4:   LateIdCallSt
  loc_1503C04:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_106)), Me.FGrid, CVar(Me.Fields.Item("DiscApp")), 1)) 'String
  loc_1503C12:   LateIdCallSt
  loc_1503C64:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1503C72:   LateIdCallSt
  loc_1503CC4:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1503CD2:   LateIdCallSt
  loc_1503D24:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1503D32:   LateIdCallSt
  loc_1503D84:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1503D92:   LateIdCallSt
  loc_1503DE4:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1503DF2:   LateIdCallSt
  loc_1503E44:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1503E4C:   Set var_14C = Me.FGrid
  loc_1503E52:   LateIdCallSt
  loc_1503E6C:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1503E74:   var_F4 = CVar(CLng(&H17)) 'Long
  loc_1503EB0:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1503EB7:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1503EBF:     var_F4 = CVar(CLng(&H17)) 'Long
  loc_1503ED2:     Set var_88 = Me.FGrid
  loc_1503ED8:     LateIdCallSt
  loc_1503EE7:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1503EEF:     var_F4 = CVar(CLng(&H16)) 'Long
  loc_1503F02:     Set var_88 = Me.FGrid
  loc_1503F08:     LateIdCallSt
  loc_1503F13:   End If
  loc_1503F17:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1503F1F:   var_F4 = CVar(CLng(5)) 'Long
  loc_1503F48:   var_138 = CVar(CLng(var_106)) 'Long
  loc_1503F50:   var_15C = CVar(CLng(&HA)) 'Long
  loc_1503F72:   var_20C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1503FC0:   LateIdCallSt
  loc_1504023:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_20C)), "0.00"))), 1, 1)) 'String
  loc_1504031:   LateIdCallSt
  loc_1504083:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_106)), Me.FGrid, var_C4, CVar(CLng(&HB)))) 'String
  loc_1504091:   LateIdCallSt
  loc_15040E3:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_15040F1:   LateIdCallSt
  loc_1504143:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_150414B:   Set var_14C = Me.FGrid
  loc_1504151:   LateIdCallSt
  loc_15041A2:   var_9C = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_C4, -1, var_14C, var_14C)
  loc_15041B6:   unk_598691.Execute var_C4 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(var_106)), var_20C
  loc_15041C1:   Set var_10C = var_14C
  loc_15041EF:   If (var_10C.RecordCount > 0) Then
  loc_1504229:     Proc_6_39_E7C810(var_C4, CVar(var_10C.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(var_106)))
  loc_1504232:     var_E4 = CVar(CStr(var_C4)) 'String
  loc_150423A:     Set var_14C = Me.FGrid
  loc_1504240:     LateIdCallSt
  loc_1504258:   End If
  loc_150425D:   Call Proc_338_101_17C5094(&H32, var_14C, var_E4)
  loc_1504262: End If
  loc_1504262: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '133BA8C
  'Data Table: 598674
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_133B2BE: Set var_88 = Me.Txt
  loc_133B2C4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_133B2D2: Proc_6_74_E226B0(var_8C)
  loc_133B2DE: Call Proc_338_94_FDE1A4(var_8C)
  loc_133B2E6: var_92 = Index
  loc_133B2F1: If (var_92 = CInt(1)) Then
  loc_133B307:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_133B329:   If (Me.RecordCount > 0) Then
  loc_133B337:     Set var_8C = Me.FGPoint
  loc_133B34F:     Proc_6_137_1193554(Me.DGVType, global_80, Index)
  loc_133B35D:   End If
  loc_133B3AB:   Set var_88 = Me.Txt
  loc_133B3B1:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133B3B9:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133B3D1:   If (var_8C Or (var_C0 = vbNullString)) Then
  loc_133B3D4:     Exit Sub
  loc_133B3D5:   End If
  loc_133B3E2:   Set var_88 = Me.Txt
  loc_133B3E8:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133B3F0:   var_C0 = var_8C.Text
  loc_133B3F8:   var_D4 = CVar(var_C0) 'String
  loc_133B43D:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133B446:     Me.MoveFirst
  loc_133B46B:     Set var_88 = Me.Txt
  loc_133B471:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133B479:     0 = var_8C.Text
  loc_133B487:     Proc_6_17_EAA2B0(var_D4, CVar(var_C0), 1)
  loc_133B49D:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_133B4B5:   End If
  loc_133B4B8: Else
  loc_133B4C0:   If (var_92 = CInt(7)) Then
  loc_133B4DA:     If (Me.State <> 0) Then
  loc_133B4F4:       If (Me.RecordCount > 0) Then
  loc_133B502:         Set var_8C = Me.FGPoint
  loc_133B51A:         Proc_6_137_1193554(Me.DgMR, global_76)
  loc_133B528:       End If
  loc_133B576:       Set var_88 = Me.Txt
  loc_133B57C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133B584:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133B59C:       If (Index Or (var_C0 = vbNullString)) Then
  loc_133B59F:         Exit Sub
  loc_133B5A0:       End If
  loc_133B5AD:       Set var_88 = Me.Txt
  loc_133B5B3:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133B5BB:       var_C0 = var_8C.Text
  loc_133B5C3:       var_D4 = CVar(var_C0) 'String
  loc_133B608:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133B611:         Me.MoveFirst
  loc_133B636:         Set var_88 = Me.Txt
  loc_133B63C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133B644:         0 = var_8C.Text
  loc_133B652:         Proc_6_17_EAA2B0(var_D4, CVar(var_C0), 1)
  loc_133B668:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133B680:       End If
  loc_133B680:     End If
  loc_133B683:   Else
  loc_133B68B:     If (var_92 = CInt(4)) Then
  loc_133B6A5:       If (Me.RecordCount > 0) Then
  loc_133B6B3:         Set var_8C = Me.FGPoint
  loc_133B6CB:         Proc_6_137_1193554(Me.DGParty, global_64)
  loc_133B6D9:       End If
  loc_133B727:       Set var_88 = Me.Txt
  loc_133B72D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133B735:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133B74D:       If (Index Or (var_C0 = vbNullString)) Then
  loc_133B750:         Exit Sub
  loc_133B751:       End If
  loc_133B75E:       Set var_88 = Me.Txt
  loc_133B764:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133B76C:       var_C0 = var_8C.Text
  loc_133B774:       var_D4 = CVar(var_C0) 'String
  loc_133B7B9:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133B7C2:         Me.MoveFirst
  loc_133B7E7:         Set var_88 = Me.Txt
  loc_133B7ED:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133B7F5:         0 = var_8C.Text
  loc_133B803:         Proc_6_17_EAA2B0(var_D4, CVar(var_C0), 1)
  loc_133B819:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133B831:       End If
  loc_133B834:     Else
  loc_133B83C:       If (var_92 = CInt(5)) Then
  loc_133B84D:         Set var_88 = Me.Txt
  loc_133B853:         Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_133B872:         If (var_8C.Text Like "*Return*") Then
  loc_133B884:           Me.Filter = 0
  loc_133B89A:           Set var_88 = Me.Txt
  loc_133B8A0:           Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_133B8A8:           var_C0 = var_8C.Tag
  loc_133B8C2:           Me.Filter = CVar("Party='" & var_C0 & "'")
  loc_133B8E3:           Me.Requery -1
  loc_133B8FF:           If (Me.RecordCount > 0) Then
  loc_133B90D:             Set var_8C = Me.FGPoint
  loc_133B925:             Proc_6_137_1193554(Me.DGPartyBillNo, global_68)
  loc_133B933:           End If
  loc_133B981:           Set var_88 = Me.Txt
  loc_133B987:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133B98F:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133B9A7:           If (Index Or (var_C0 = vbNullString)) Then
  loc_133B9AA:             Exit Sub
  loc_133B9AB:           End If
  loc_133B9B8:           Set var_88 = Me.Txt
  loc_133B9BE:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133B9C6:           var_C0 = var_8C.Text
  loc_133B9CE:           var_D4 = CVar(var_C0) 'String
  loc_133BA13:           If CBool(var_D4 <> Me.Fields.Item("PartyBillNoNm").Value) Then
  loc_133BA1C:             Me.MoveFirst
  loc_133BA41:             Set var_88 = Me.Txt
  loc_133BA47:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "PartyBillNoNm =")
  loc_133BA4F:             0 = var_8C.Text
  loc_133BA5D:             Proc_6_17_EAA2B0(var_D4, CVar(var_C0), 1)
  loc_133BA73:             Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133BA8B:           End If
  loc_133BA8B:         End If
  loc_133BA8B:       End If
  loc_133BA8B:     End If
  loc_133BA8B:   End If
  loc_133BA8B: End If
  loc_133BA8B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '129E1B0
  'Data Table: 598674
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_E8 As String
  Dim var_90 As Variant
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_129DBB7: var_86 = Shift
  loc_129DBC4: If (CLng(Shift) = &H1B) Then
  loc_129DBC7:   Call Proc_338_94_FDE1A4(var_86)
  loc_129DBCC:   Exit Sub
  loc_129DBCD: End If
  loc_129DBD0: var_88 = KeyCode
  loc_129DBDB: If (var_88 = CInt(1)) Then
  loc_129DC38:   Proc_6_69_134A198(Me.DGVType, Me.Txt, CInt(1), global_80, Shift, &HFF)
  loc_129DC65:   If (Me.RecordCount > 0) Then
  loc_129DC9A:     var_E8 = CStr(Trim(CVar(Me.Fields.Item("NCat"))))
  loc_129DCA0:     global_124 = var_E8
  loc_129DCB1:     Call Proc_338_109_1132EDC(1, Nothing, Me.FGPoint)
  loc_129DCB6:   End If
  loc_129DD0F:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129DD1D:     Set var_90 = Me.FGPoint
  loc_129DD35:     Proc_6_138_106D6F8(Me.DGVType, global_80, KeyCode)
  loc_129DD43:   End If
  loc_129DD46: Else
  loc_129DD4E:   If (var_88 = CInt(7)) Then
  loc_129DD68:     If (Me.State <> 0) Then
  loc_129DD88:       Set var_A0 = Me.FGPoint
  loc_129DD93:       Set var_9C = Nothing
  loc_129DDC5:       Proc_6_69_134A198(Me.DgMR, Me.Txt, CInt(7), global_76, Shift, 0, 1)
  loc_129DE34:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129DE3B:         Set var_9C = Me.DgMR
  loc_129DE5A:         Proc_6_138_106D6F8(var_9C, global_76, KeyCode, Me.FGPoint, var_9C)
  loc_129DE68:       End If
  loc_129DE68:     End If
  loc_129DE6B:   Else
  loc_129DE73:     If (var_88 = CInt(4)) Then
  loc_129DE93:       Set var_A0 = Me.FGPoint
  loc_129DED0:       Proc_6_69_134A198(Me.DGParty, Me.Txt, CInt(4), global_64, Shift, &HFF, 1, Nothing)
  loc_129DF3F:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129DF4D:         Set var_90 = Me.FGPoint
  loc_129DF65:         Proc_6_138_106D6F8(Me.DGParty, global_64, KeyCode, var_90, var_A0, 0)
  loc_129DF73:       End If
  loc_129DF76:     Else
  loc_129DF7E:       If (var_88 = CInt(5)) Then
  loc_129DF8F:         Set var_8C = Me.Txt
  loc_129DF95:         Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_E8, var_A0)
  loc_129DF9D:         0 = var_90.Text
  loc_129DFB4:         If (var_E8 Like "*Return*") Then
  loc_129DFD4:           Set var_A0 = Me.FGPoint
  loc_129DFDF:           Set var_9C = Nothing
  loc_129E011:           Proc_6_69_134A198(Me.DGPartyBillNo, Me.Txt, CInt(5), global_68, Shift, &HFF, 1)
  loc_129E080:           If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129E087:             Set var_9C = Me.DGPartyBillNo
  loc_129E0A6:             Proc_6_138_106D6F8(var_9C, global_68, KeyCode, Me.FGPoint, var_9C)
  loc_129E0B4:           End If
  loc_129E0B4:         End If
  loc_129E0B4:       End If
  loc_129E0B4:     End If
  loc_129E0B4:   End If
  loc_129E0B4: End If
  loc_129E0CE: Set var_90 = Me.DGItem
  loc_129E0FC: Set var_A0 = Me.DGPartyBillNo
  loc_129E15B: If ((((((CBool(Me.DGVType.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DgMR.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_129E173:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_129E17C:     Proc_6_75_E527CC(Shift, arg_14, var_A0, 0)
  loc_129E181:   End If
  loc_129E189:   If (KeyCode <> CInt(7)) Then
  loc_129E1A1:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_129E1AA:       Proc_6_76_E52838(Shift, arg_14, var_90)
  loc_129E1AF:     End If
  loc_129E1AF:   End If
  loc_129E1AF: End If
  loc_129E1AF: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10D4A58
  'Data Table: 598674
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_B8 As TextBox
  loc_10D474C: On Error Goto loc_10D4A50
  loc_10D4752: Proc_6_58_E054C0(arg_10)
  loc_10D475A: var_86 = KeyAscii
  loc_10D4765: If (var_86 = CInt(1)) Then
  loc_10D4784:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_10D479A:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_10D47B4:     var_B0 = "Name"
  loc_10D47CF:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10)
  loc_10D47E9:     Set var_B8 = Me.FGPoint
  loc_10D4801:     Proc_6_138_106D6F8(Me.DGVType, global_80, KeyAscii, var_B8)
  loc_10D480F:   End If
  loc_10D4812: Else
  loc_10D481A:   If (var_86 = CInt(2)) Then
  loc_10D4827:     Set var_8C = Me.Txt
  loc_10D482D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_10D4848:     Proc_6_42_129A86C(var_B8, arg_10, 8)
  loc_10D4857:   Else
  loc_10D485F:     If (var_86 = CInt(7)) Then
  loc_10D487E:       If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_10D48AB:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_10D48DD:         Proc_6_138_106D6F8(Me.DgMR, global_76, KeyAscii, Me.FGPoint)
  loc_10D48EB:       End If
  loc_10D48EE:     Else
  loc_10D48F6:       If (var_86 = CInt(4)) Then
  loc_10D4915:         If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_10D4927:           var_B0 = "Name"
  loc_10D4942:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, var_B0)
  loc_10D495C:           Set var_B8 = Me.FGPoint
  loc_10D4974:           Proc_6_138_106D6F8(Me.DGParty, global_64, KeyAscii, var_B8, 0)
  loc_10D4982:         End If
  loc_10D4985:       Else
  loc_10D498D:         If (var_86 = CInt(5)) Then
  loc_10D499E:           Set var_8C = Me.Txt
  loc_10D49A4:           Call 0.Method_Txt_KeyPress0 (CInt(1), var_B8, var_B0, 0)
  loc_10D49AC:           0 = var_B8.Text
  loc_10D49C3:           If (var_B0 Like "*Return*") Then
  loc_10D49E2:             If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_10D49F4:               var_B0 = "PartyBillNoNm"
  loc_10D4A0F:               Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10)
  loc_10D4A41:               Proc_6_138_106D6F8(Me.DGPartyBillNo, global_68, KeyAscii, Me.FGPoint)
  loc_10D4A4F:             End If
  loc_10D4A4F:           End If
  loc_10D4A4F:         End If
  loc_10D4A4F:       End If
  loc_10D4A4F:     End If
  loc_10D4A4F:   End If
  loc_10D4A4F: End If
  loc_10D4A4F: Exit Sub
  loc_10D4A50: ' Referenced from: 10D474C
  loc_10D4A50: Proc_6_60_E62BC4(var_B0, 0)
  loc_10D4A55: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E7D000
  'Data Table: 598674
  Dim var_8C As TextBox
  loc_E7CFAA: Set var_88 = Me.Txt
  loc_E7CFB0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E7CFBE: Proc_6_73_E22704(var_8C)
  loc_E7CFD2: If (Index = CInt(1)) Then
  loc_E7CFE2:   Set var_88 = Me.Txt
  loc_E7CFE8:   Call 0.Method_Txt_LostFocus0 (CInt(1), var_8C)
  loc_E7CFF0:   var_8C.Enabled = False
  loc_E7CFFC: End If
  loc_E7CFFC: Exit Sub
  loc_E7CFFD: Set var_B8 = var_8C
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1824524
  'Data Table: 598674
  Dim var_A0 As Integer
  Dim var_A8 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_B0 As String
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_F0 As String
  Dim var_F4 As String
  Dim unk_598691 As Connection15
  Dim var_88 As Recordset15
  Dim var_EC As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_110 As Variant
  Dim var_AC As Variant
  Dim var_1B4 As Variant
  Dim var_120 As Variant
  Dim var_1BC As String
  Dim var_9C As Recordset15
  Dim var_8E As Integer
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_180 As Variant
  Dim var_98 As Integer
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_94 As Recordset15
  Dim var_B6 As Integer
  Dim var_214 As Variant
  Dim var_274 As Variant
  Dim var_294 As Variant
  loc_182214C: On Error Goto loc_182451C
  loc_1822152: var_A0 = Cancel
  loc_182215D: If (var_A0 = CInt(1)) Then
  loc_182216B:   Set var_A4 = Me.Txt
  loc_1822171:   Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1822179:   var_B0 = "Voucher Type"
  loc_182219A:   If (Proc_6_27_EA565C(var_A8, var_B0) = 0) Then
  loc_18221A8:     Set var_A4 = Me.Txt
  loc_18221AE:     Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_18221B6:     var_A8.SetFocus
  loc_18221C4:     arg_10 = &HFF
  loc_18221C7:     Exit Sub
  loc_18221C8:   End If
  loc_1822216:   Set var_A4 = Me.Txt
  loc_182221C:   Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_B0)
  loc_1822224:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A8.Text
  loc_182223C:   If (arg_10 Or (var_B0 = vbNullString)) Then
  loc_182224C:     Set var_A4 = Me.Txt
  loc_1822252:     Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_182225A:     var_A8.Text = vbNullString
  loc_1822273:     Set var_A4 = Me.Txt
  loc_1822279:     Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1822281:     var_A8.Tag = vbNullString
  loc_1822293:     global_124 = vbNullString
  loc_182229D:     global_188 = vbNullString
  loc_18222A4:   Else
  loc_18222DF:     Set var_AC = Me.Txt
  loc_18222E5:     Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_18222ED:     var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_182233E:     Set var_AC = Me.Txt
  loc_1822344:     Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_182234C:     var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_182238B:     var_EC = Trim(CVar(Me.Fields.Item("NCat")))
  loc_182239A:     global_124 = CStr(var_EC)
  loc_18223CD:     var_DC = CVar(Me.Fields.Item("ContraType")) 'Address
  loc_18223DC:     global_188 = Proc_6_38_E68A98(var_DC)
  loc_182240C:     If (((global_124 = "PRC") Or (global_124 = "PBC")) Or (global_124 = "EXC")) Then
  loc_182240F:     End If
  loc_1822419:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_A0)
  loc_1822432:     If (CStr() = "Add") Then
  loc_1822450:       var_F0 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE logSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_1822457:       var_F4 = var_F0 & MemVar_1F92070
  loc_1822478:       unk_598691.Execute var_F4 & "' and NCAT='" & global_124 & "' Order by Description", var_DC, -1
  loc_1822483:       Set var_88 = Me.TopCtrl1
  loc_18224AF:       If (var_88.RecordCount > 0) Then
  loc_18224CC:         var_A8 = var_88.Fields.Item(0)
  loc_18224DD:         var_B0 = CStr(var_A8.Value)
  loc_18224E3:         global_132 = var_B0
  loc_18224F7:       Else
  loc_1822510:         MsgBox("Sundry setting Not Configured for Purchase Department", 0, var_EC, var_130, var_150)
  loc_182252D:         Me.Global.Unload Me
  loc_1822535:         Exit Sub
  loc_1822536:       End If
  loc_182253C:       Call Proc_338_96_10E9D58(MemVar_1F92044, var_B0)
  loc_182254F:       Set var_A4 = Me.Txt
  loc_1822555:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_182255D:       var_A8.Text = var_B0
  loc_182256C:     End If
  loc_182256C:     Call Proc_338_109_1132EDC(var_A4)
  loc_182257F:     Set var_A4 = Me.Txt
  loc_1822585:     Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1822599:     Call Proc_338_108_E438F0(var_A8.Text)
  loc_18225A8:   End If
  loc_18225AB: Else
  loc_18225B3:   If (var_A0 = CInt(2)) Then
  loc_18225C1:     Set var_A4 = Me.Txt
  loc_18225C7:     Call 0.Method_Txt_Validate0 (CInt(2))
  loc_18225CF:     var_B0 = "Vr. No"
  loc_18225F0:     If (Proc_6_27_EA565C(var_A8, var_B0) = 0) Then
  loc_18225FE:       Set var_A4 = Me.Txt
  loc_1822604:       Call 0.Method_Txt_Validate0 (CInt(2), var_A8)
  loc_182260C:       var_A8.SetFocus
  loc_182261A:       arg_10 = &HFF
  loc_182261D:       Exit Sub
  loc_182261E:     End If
  loc_182262C:     Set var_A4 = Me.Txt
  loc_1822632:     Call 0.Method_Txt_Validate0 (CInt(2), var_A8, var_B0)
  loc_182263A:     arg_10 = var_A8.Text
  loc_1822652:     If (CDbl(var_B0) = CDbl(0)) Then
  loc_182266E:       MsgBox("Vr. No Can Not Be 0", 0, var_EC, var_130, var_150)
  loc_1822688:       Set var_A4 = Me.Txt
  loc_182268E:       Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1822696:       var_A8.SetFocus
  loc_18226A4:       arg_10 = &HFF
  loc_18226A7:       Exit Sub
  loc_18226A8:     End If
  loc_18226AC:     Set var_A4 = Me.TopCtrl1
  loc_18226B2:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(arg_10)
  loc_18226CB:     If (CStr(var_A8) = "Add") Then
  loc_18226FF:       var_DC = Space((5 - Len(global_132)))
  loc_1822707:       var_130 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & global_132) + "Vr. No Can Not Be 0")
  loc_182271B:       var_150 = Space((5 - Len(global_116)))
  loc_1822723:       var_160 = (var_130 + var_150)
  loc_1822730:       var_170 = (var_160 + CVar(global_116))
  loc_1822747:       Set var_A4 = Me.Txt
  loc_182274D:       Call 0.Method_Txt_Validate0 (CInt(2), var_A8, var_F4)
  loc_1822755:       8 = var_A8.Text
  loc_1822762:       var_180 = Space((var_170 - Len(var_F4)))
  loc_182276A:       var_190 = ( + var_180)
  loc_182277C:       Set var_AC = Me.Txt
  loc_1822782:       Call 0.Method_Txt_Validate0 (CInt(2), var_CC)
  loc_1822795:       var_1B0 = (var_190 + CVar(var_CC.Text))
  loc_18227E2:       Set var_A4 = Me.Txt
  loc_18227E8:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_18227F0:       var_A8.Text = CStr(var_1B0)
  loc_182280C:       Me.LblVPrefix.Caption = global_116
  loc_1822814:     End If
  loc_1822818:     Set var_A4 = Me.TopCtrl1
  loc_182281E:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1822826:     var_B0 = CStr()
  loc_1822837:     If (var_B0 = "Add") Then
  loc_1822867:       Set var_A4 = Me.Txt
  loc_182286D:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_B0, "Select Count(*) From Purch1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_182287E:       var_F0 = var_CC & var_B0
  loc_182288E:       unk_598691.Execute var_F0 & "'", 0, var_1B4
  loc_182289E:        = var_CC.Item()
  loc_18228A6:        = var_1B4.Value
  loc_18228D3:       If (var_A8.Text.Fields > 0) Then
  loc_18228DC:         Call 0.Method_arg_50 (var_B0)
  loc_18228FD:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_B0), var_130, var_150)
  loc_1822913:         Call Proc_338_96_10E9D58(MemVar_1F92044)
  loc_1822923:         If (var_B0 = vbNullString) Then
  loc_1822930:           Set var_A4 = Me.Txt
  loc_1822936:           Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_182293E:           var_A8.SetFocus
  loc_182294C:           arg_10 = &HFF
  loc_182294F:           Exit Sub
  loc_1822950:         End If
  loc_1822956:         Call Proc_338_96_10E9D58(MemVar_1F92044, var_B0)
  loc_1822969:         Set var_A4 = Me.Txt
  loc_182296F:         Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_B0)
  loc_1822977:         var_A8.Text = arg_10
  loc_1822988:         arg_10 = &HFF
  loc_182298B:         Exit Sub
  loc_182298C:       End If
  loc_182298C:     End If
  loc_182298F:   Else
  loc_1822997:     If (var_A0 = CInt(3)) Then
  loc_18229A8:       Set var_A4 = Me.Txt
  loc_18229AE:       Call 0.Method_Txt_Validate0 (CInt(3), var_A8, var_B0)
  loc_18229B6:       arg_10 = var_A8.Text
  loc_18229CC:       var_130 = Len(Trim(CVar(var_B0)))
  loc_18229E6:       If (var_130 = 0) Then
  loc_18229FC:         Set var_A4 = Me.Txt
  loc_1822A02:         Call 0.Method_Txt_Validate0 (CInt(3), var_A8)
  loc_1822A0A:         var_A8.Text = CStr(MemVar_1F920EC)
  loc_1822A1C:       Else
  loc_1822A26:         Set var_A4 = Me.Txt
  loc_1822A2C:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1822A4C:         Set var_CC = Me.Txt
  loc_1822A52:         Call 0.Method_Txt_Validate0 (Cancel, var_1B4)
  loc_1822A5A:         var_1B4.Text = Proc_6_33_1512840(var_A8)
  loc_1822A6D:       End If
  loc_1822A7A:       Set var_A4 = Me.Txt
  loc_1822A80:       Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1822A88:       var_B0 = var_A8.Text
  loc_1822AA3:       Set var_AC = Me.Txt
  loc_1822AA9:       Call 0.Method_Txt_Validate0 (Cancel, var_CC, var_F0)
  loc_1822AB1:       (CDate(var_B0) >= MemVar_1F920F4) = var_CC.Text
  loc_1822AD3:       If Not((var_B0 And (CDate(var_F0) <= MemVar_1F920FC))) Then
  loc_1822AF7:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_130, var_150)
  loc_1822B11:         Set var_A4 = Me.Txt
  loc_1822B17:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_1822B1F:         var_A8.SetFocus
  loc_1822B2D:         arg_10 = &HFF
  loc_1822B30:         Exit Sub
  loc_1822B31:       End If
  loc_1822B51:       Set var_A4 = Me.Txt
  loc_1822B57:       Call 0.Method_Txt_Validate0 (CInt(3), var_A8, var_B0)
  loc_1822B5F:       ((global_256 = "No") And (MemVar_1F920B8 <> 1)) = var_A8.Text
  loc_1822B78:       If (arg_10 And (CDate(var_B0) < MemVar_1F920EC)) Then
  loc_1822B96:         var_DC = "Back Date Entry Blocked."
  loc_1822B9C:         MsgBox(var_DC, &H10, "Date Validate", var_130, var_150)
  loc_1822BB6:         Set var_A4 = Me.Txt
  loc_1822BBC:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1822BC4:         var_A8.SetFocus
  loc_1822BD2:         arg_10 = &HFF
  loc_1822BD5:         Exit Sub
  loc_1822BD6:       End If
  loc_1822BDA:       Set var_A4 = Me.TopCtrl1
  loc_1822BE0:       Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(arg_10)
  loc_1822BE8:       var_B0 = CStr(var_A8)
  loc_1822BFE:       Set var_A8 = Me.Txt
  loc_1822C04:       Call 0.Method_Txt_Validate0 (CInt(2), var_AC)
  loc_1822C2D:       If ((var_B0 = "Add") And (var_AC.Text = vbNullString)) Then
  loc_1822C36:         Call Proc_338_96_10E9D58(MemVar_1F92044)
  loc_1822C49:         Set var_A4 = Me.Txt
  loc_1822C4F:         Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1822C57:         var_A8.Text = var_B0
  loc_1822C66:       End If
  loc_1822C69:     Else
  loc_1822C71:       If (var_A0 = CInt(8)) Then
  loc_1822C7F:         Set var_A4 = Me.Txt
  loc_1822C85:         Call 0.Method_Txt_Validate0 (CInt(8), var_A8)
  loc_1822CAE:         If (Proc_6_27_EA565C(var_A8, "Party Name") = 0) Then
  loc_1822CBC:           Set var_A4 = Me.Txt
  loc_1822CC2:           Call 0.Method_Txt_Validate0 (CInt(8), var_A8)
  loc_1822CCA:           var_A8.SetFocus
  loc_1822CD8:           arg_10 = &HFF
  loc_1822CDB:           Exit Sub
  loc_1822CDC:         End If
  loc_1822CFF:         If (((global_124 = "PRC") Or (global_124 = "PBC")) Or (global_124 = "EXC")) Then
  loc_1822D1F:           Proc_6_17_EAA2B0(var_DC, MemVar_1F92078, "Select CashPurchAc From Enviro  WHERE LOGSITE_CODE=", var_130)
  loc_1822D27:           var_EC = -1 & var_DC 
  loc_1822D35:           unk_598691.Execute CStr("Date Validate"), var_A4, arg_10
  loc_1822D40:           Set var_88 = var_A4
  loc_1822D66:           If (var_88.RecordCount > 0) Then
  loc_1822D83:             var_A8 = var_88.Fields.Item("CashPurchAc")
  loc_1822D8B:             var_DC = var_A8.Value
  loc_1822DA2:             Set var_AC = Me.Txt
  loc_1822DA8:             Call 0.Method_Txt_Validate0 (CInt(4), var_CC)
  loc_1822DB0:             var_CC.Tag = CStr(var_DC)
  loc_1822DD4:             Set var_A4 = Me.Txt
  loc_1822DDA:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_1822DE2:             var_A8.Tag = vbNullString
  loc_1822DFB:             Set var_A4 = Me.Txt
  loc_1822E01:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_1822E09:             var_A8.Enabled = True
  loc_1822E15:           End If
  loc_1822E15:         End If
  loc_1822E2C:         If ((global_124 = "PBC") Or (global_124 = "EXC")) Then
  loc_1822E39:           Set global_76 = New 
  loc_1822E4B:           Me.Recordset15.CursorLocation = 3
  loc_1822E57:           var_B0 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1822E5E:           var_F0 = var_B0 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_1822E81:           var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_1822E98:           Call 0.Method_Txt_Validate0 (CInt(4), var_A8, var_1B8)
  loc_1822EA0:           var_1BC = var_A8.Tag
  loc_1822EB0:           var_8C = var_B0 & var_1B8 & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.AccQty,0)) > 0 "
  loc_1822EE5:           unk_598691.Execute var_8C, var_DC, -1
  loc_1822EF6:           Set global_76 = Me.Txt
  loc_1822F0D:           CVarUnk
  loc_1822F12:           VerifyVarObj
  loc_1822F18:           Set var_A4 = Me.DgMR
  loc_1822F1E:           LateIdStAd
  loc_1822F2C:         End If
  loc_1822F2F:       Else
  loc_1822F37:         If (var_A0 = CInt(4)) Then
  loc_1822F4B:           Call 0.Method_Txt_Validate0 (CInt(4), var_A8, Me.Txt)
  loc_1822F53:           var_B0 = "Party Name"
  loc_1822F74:           If (Proc_6_27_EA565C(var_A8, var_B0) = 0) Then
  loc_1822F82:             Set var_A4 = Me.Txt
  loc_1822F88:             Call 0.Method_Txt_Validate0 (CInt(4), var_A8)
  loc_1822F90:             var_A8.SetFocus
  loc_1822F9E:             arg_10 = &HFF
  loc_1822FA1:             Exit Sub
  loc_1822FA2:           End If
  loc_1822FF0:           Set var_A4 = Me.Txt
  loc_1822FF6:           Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1822FFE:           arg_10 = var_A8.Text
  loc_1823016:           If (global_76 Or (var_B0 = vbNullString)) Then
  loc_1823026:             Set var_A4 = Me.Txt
  loc_182302C:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1823034:             var_A8.Text = vbNullString
  loc_182304D:             Set var_A4 = Me.Txt
  loc_1823053:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_182305B:             var_A8.Tag = vbNullString
  loc_182306A:           Else
  loc_18230A5:             Set var_AC = Me.Txt
  loc_18230AB:             Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_18230B3:             var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1823104:             Set var_AC = Me.Txt
  loc_182310A:             Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1823112:             var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1823164:             Set var_AC = Me.Txt
  loc_182316A:             Call 0.Method_Txt_Validate0 (CInt(8), var_CC)
  loc_1823172:             var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_18231A2:             var_A8 = Me.Fields.Item("TINNo")
  loc_18231AA:             var_DC = CVar(var_A8) 'Address
  loc_18231C1:             Set var_AC = Me.Txt
  loc_18231C7:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_CC)
  loc_18231CF:             var_CC.Text = Proc_6_38_E68A98(var_DC)
  loc_18231F0:             Set var_A4 = Me.Txt
  loc_18231F6:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_18231FE:             var_A8.Enabled = False
  loc_182320A:           End If
  loc_182322D:           If (((global_124 = "PBR") Or (global_124 = "EXR")) Or (global_124 = "CRN")) Then
  loc_1823237:             var_B0 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_182323E:             var_F0 = var_B0 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_1823261:             var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_1823272:             Set var_A4 = Me.Txt
  loc_1823278:             Call 0.Method_Txt_Validate0 (CInt(4), var_A8, var_1B8)
  loc_1823280:             var_1BC = var_A8.Tag
  loc_1823290:             var_8C = var_A4 & var_1B8 & "'  Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.recdQty,0)) > 0 "
  loc_18232C5:             unk_598691.Execute var_8C, var_DC, -1
  loc_18232D6:             Set global_76 = var_A4
  loc_18232ED:             CVarUnk
  loc_18232F2:             VerifyVarObj
  loc_18232F8:             Set var_A4 = Me.DgMR
  loc_18232FE:             LateIdStAd
  loc_182330C:           End If
  loc_182330F:         Else
  loc_1823317:           If (var_A0 = CInt(7)) Then
  loc_182331E:             Set var_9C = New 
  loc_1823329:             Me.Recordset15.CursorLocation = 3
  loc_1823351:             If (((global_124 = "PBR") Or (global_124 = "EXR")) Or (global_124 = "CRN")) Then
  loc_182335B:               var_B0 = "Select Max(S.DocId) as DocID,Max(S.Item) as Item,Max(S.RecdUnit) as RecdUnit,max(S.Unit) as Unit,Max(I.ConvRatio) as ConvRatio,Max(S.AccQty) - Sum(isnull(P2.RecdQty,0)) as RecdQty,Max(S.Rate) AS Rate,Max(S.ItemRate) AS ItemRate,Max(S.SNo) as SNo,Max(I.RateEdit) as RateEdit,Max(I.SChrgApp) as SChrgApp,Max(S.GodownCode) as GodownCode,Max(S.RoomNo) as RoomNo,Max(G.Name) as GodName,Max(I.NAME) AS ITEMNAME,Max(DispCode) as DispCode,Max(IC.RoundOff) as ROff,Max(IC.Code) as TaxCode,Max(I.DiscApp) as IDiscApp,Max(IC.taxStru) as taxStru,Max(I.Kitchen) as Kitchen,Max(D.Code) as DepartCode,Max(D.ShortName) as DepartName,Max(MemInvNo)as MemInvNo,Max(MemInvDate) as MemInvDate " & "From (((((((Stock S Left Join Purch2 P2 on (S.Docid = P2.ContraDocid and S.Sno = P2.ContraSno)) "
  loc_1823362:               var_F0 = var_B0 & "Left Join SubGroup SG on S.PartyCode=SG.SubCode)Left Join Voucher_Type V on (S.Vtype=V.V_Type and S.LogSite_Code=V.LogSite_Code)) LEFT JOIN ITEMMAST I ON S.ITEM=I.CODE And I.ItemType='Store')Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode)Left join GodownMast G on G.Code=S.GodownCode)Left Join GIN N On N.DocId=S.DocId "
  loc_1823385:               var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and S.DocID='"
  loc_1823396:               Set var_A4 = Me.Txt
  loc_182339C:               Call 0.Method_Txt_Validate0 (CInt(7), var_A8, var_1B8, var_1BC)
  loc_18233A4:               var_A4 = var_A8.Tag
  loc_18233B4:               var_8C = global_76 & var_1B8 & "' Group By S.Docid,S.Sno Having Max(S.AccQty) - Sum(isnull(P2.RecdQty,0)) > 0 "
  loc_18233D6:             Else
  loc_18233DD:               var_B0 = "Select Max(S.DocId) as DocID,Max(S.Item) as Item,Max(S.RecdUnit) as RecdUnit,max(S.Unit) as Unit,Max(I.ConvRatio) as ConvRatio,Max(S.AccQty) - Sum(isnull(P2.recdQty,0)) as RecdQty,Max(S.Rate) AS Rate,Max(S.ItemRate) AS ItemRate,Max(S.SNo) as SNo,Max(I.RateEdit) as RateEdit,Max(I.SChrgApp) as SChrgApp,Max(S.GodownCode) as GodownCode,Max(S.RoomNo) as RoomNo,Max(G.Name) as GodName,Max(I.NAME) AS ITEMNAME,Max(DispCode) as DispCode,Max(IC.RoundOff) as ROff,Max(IC.Code) as TaxCode,Max(I.DiscApp) as IDiscApp,Max(IC.taxStru) as taxStru,Max(I.Kitchen) as Kitchen,Max(D.Code) as DepartCode,Max(D.ShortName) as DepartName,Max(MemInvNo)as MemInvNo,Max(MemInvDate) as MemInvDate " & "From (((((((Stock S Left Join Purch2 P2 on (S.Docid = P2.ContraDocid and S.Sno = P2.ContraSno)) "
  loc_18233E4:               var_F0 = var_B0 & "Left Join SubGroup SG on S.PartyCode=SG.SubCode)Left Join Voucher_Type V on (S.Vtype=V.V_Type and S.LogSite_Code=V.LogSite_Code)) LEFT JOIN ITEMMAST I ON S.ITEM=I.CODE And I.ItemType='Store')Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode)Left join GodownMast G on G.Code=S.GodownCode)Left Join GIN N On N.DocId=S.DocId "
  loc_1823407:               var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and S.DocID='"
  loc_182341E:               Call 0.Method_Txt_Validate0 (CInt(7), var_A8, var_1B8)
  loc_1823426:               var_1BC = var_A8.Tag
  loc_1823436:               var_8C = Me.Txt & var_1B8 & "' Group By S.Docid,S.Sno Having Max(S.AccQty) - Sum(isnull(P2.QtyRec,0)) > 0 "
  loc_1823455:             End If
  loc_182345D:             If (var_8C <> vbNullString) Then
  loc_1823481:               var_9C.Open CVar(var_8C), CVar(MemVar_1F92044), 2
  loc_182349A:               If (var_9C.RecordCount > 0) Then
  loc_18234AC:                 Me.FGrid.Redraw = False
  loc_18234CE:                 var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_18234D7:                 ' Referenced from:           18243AA
  loc_18234E6:                 If Not(var_9C.EOF) Then
  loc_182350E:                   For var_1C4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):           var_9E = var_1C4 'Integer
  loc_1823518:                     var_C8 = CVar(CLng(var_9E)) 'Long
  loc_1823520:                     var_120 = CVar(CLng(&HE)) 'Long
  loc_182353A:                     var_130 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1823560:                     var_EC = var_9C.Fields.Item("DocID").Value
  loc_1823570:                     var_1E4 = CVar(CLng(var_9E)) 'Long
  loc_1823581:                     Set var_CC = Me.FGrid
  loc_18235E8:                     If CBool(CVar(CLng(&HD)) And (CVar(CStr(var_CC.TextMatrix))) = var_9C.Fields.Item("SNo").Value)) Then
  loc_18235ED:                       var_98 = &HFF
  loc_18235F0:                     End If
  loc_18235F3:                   Next var_1C4 'Integer
  loc_18235FE:                   If (var_98 = &HFF) Then
  loc_1823603:                     var_98 = 0
  loc_1823609:                   Else
  loc_1823609:                     var_C8 = vbNullString
  loc_1823613:                     Set var_A4 = Me.FGrid
  loc_1823627:                     var_C8 = "MemInvNo"
  loc_1823669:                     Set var_AC = Me.Txt
  loc_182366F:                     Call 0.Method_Txt_Validate0 (CInt(5), var_CC, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item(var_C8)), FGrid.DispID_10000)))))
  loc_1823677:                     var_CC.Text = var_C8
  loc_18236C7:                     Set var_AC = Me.Txt
  loc_18236CD:                     Call 0.Method_Txt_Validate0 (CInt(6), var_CC)
  loc_18236D5:                     var_CC.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("MemInvDate")))
  loc_18236ED:                     Set var_22C = Me.FGrid
  loc_18236F4:                     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_18236FC:                     var_120 = CVar(CLng(0)) 'Long
  loc_1823706:                     var_DC = CVar(CStr(var_8E)) 'String
  loc_182370D:                     LateIdCallSt
  loc_182371C:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1823724:                     var_140 = CVar(CLng(&HC)) 'Long
  loc_1823758:                     var_130 = CVar(CStr(Trim(CVar(var_9C.Fields.Item("Item"))))) 'String
  loc_182375F:                     LateIdCallSt
  loc_1823777:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_182377F:                     var_140 = CVar(CLng(1)) 'Long
  loc_18237AF:                     var_EC = CVar(CStr(var_9C.Fields.Item("DispCode").Value)) 'String
  loc_18237B6:                     LateIdCallSt
  loc_18237D0:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_18237D8:                     var_140 = CVar(CLng(2)) 'Long
  loc_1823808:                     var_EC = CVar(CStr(var_9C.Fields.Item("ItemName").Value)) 'String
  loc_182380F:                     LateIdCallSt
  loc_1823829:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1823831:                     var_140 = CVar(CLng(4)) 'Long
  loc_1823861:                     var_EC = CVar(CStr(var_9C.Fields.Item("RecdUnit").Value)) 'String
  loc_1823868:                     LateIdCallSt
  loc_1823882:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_182388A:                     var_140 = CVar(CLng(8)) 'Long
  loc_18238BA:                     var_EC = CVar(CStr(var_9C.Fields.Item("Unit").Value)) 'String
  loc_18238C1:                     LateIdCallSt
  loc_18238F7:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_18238FF:                     var_1D4 = CVar(CLng(5)) 'Long
  loc_182392C:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_1823933:                     LateIdCallSt
  loc_1823969:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_1823971:                     var_1D4 = CVar(CLng(&H22)) 'Long
  loc_182399E:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_18239A5:                     LateIdCallSt
  loc_18239DB:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_18239E3:                     var_1D4 = CVar(CLng(9)) 'Long
  loc_1823A10:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("Rate")), "0.00000"))) 'String
  loc_1823A17:                     LateIdCallSt
  loc_1823A4D:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_1823A55:                     var_1D4 = CVar(CLng(&HA)) 'Long
  loc_1823A82:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("ItemRate")), "0.00000"))) 'String
  loc_1823A89:                     LateIdCallSt
  loc_1823AD8:                     var_AC = var_9C.Fields
  loc_1823AE0:                     var_CC = var_AC.Item("Rate")
  loc_1823AF1:                     var_140 = CVar(CLng(var_8E)) 'Long
  loc_1823AF9:                     var_1E4 = CVar(CLng(&HB)) 'Long
  loc_1823B30:                     var_180 = CVar(CStr(Format((var_9C.Fields.Item("RecdQty").Value * var_CC.Value), "0.00"))) 'String
  loc_1823B37:                     LateIdCallSt
  loc_1823B79:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1823B81:                     var_140 = CVar(CLng(3)) 'Long
  loc_1823BA8:                     var_130 = CVar(CStr(Val(CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8))))) 'String
  loc_1823BAF:                     LateIdCallSt
  loc_1823BCA:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1823BD2:                     var_140 = CVar(CLng(&HE)) 'Long
  loc_1823C02:                     var_EC = CVar(CStr(var_9C.Fields.Item("DocID").Value)) 'String
  loc_1823C09:                     LateIdCallSt
  loc_1823C23:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1823C2B:                     var_140 = CVar(CLng(&HD)) 'Long
  loc_1823C5B:                     var_EC = CVar(CStr(var_9C.Fields.Item("SNo").Value)) 'String
  loc_1823C62:                     LateIdCallSt
  loc_1823CB1:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_22C, var_EC, CVar(CLng(&H1D)), CVar(CLng(var_8E)))) 'String
  loc_1823CB8:                     LateIdCallSt
  loc_1823D03:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_22C, var_EC, var_22C)) 'String
  loc_1823D0A:                     LateIdCallSt
  loc_1823D55:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Roff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1823D5C:                     LateIdCallSt
  loc_1823DA7:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1823DAE:                     LateIdCallSt
  loc_1823DCC:                     var_140 = CVar(CLng(&H1F)) 'Long
  loc_1823DF9:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("SChrgApp")), var_140, CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1823E00:                     LateIdCallSt
  loc_1823E4A:                     var_B0 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_EC, -1, var_AC, var_22C)
  loc_1823E5E:                     unk_598691.Execute var_EC & CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8)) & "'", var_EC, var_140
  loc_1823E69:                     Set var_94 = var_AC
  loc_1823E97:                     If (var_94.RecordCount > 0) Then
  loc_1823ED1:                       Proc_6_39_E7C810(var_EC, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(var_8E)))
  loc_1823EDA:                       var_130 = CVar(CStr(var_EC)) 'String
  loc_1823EE2:                       Set var_AC = Me.FGrid
  loc_1823EE8:                       LateIdCallSt
  loc_1823F04:                       var_110 = CVar(CLng(var_8E)) 'Long
  loc_1823F39:                       var_EC = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name")), CVar(CLng(&H19)), var_110, var_AC)) 'String
  loc_1823F40:                       LateIdCallSt
  loc_1823F52:                     End If
  loc_1823F8A:                     var_B0 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxCode")), "Select IM.AcName As SaleAcCode,SG.Name As SaleAcName from ItemCatMast IM inner join Subgroup SG On IM.AcName=SG.SubCode where IM.Code='", var_EC, -1, var_AC, var_22C)
  loc_1823F9E:                     unk_598691.Execute var_EC & CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8)) & "'", var_130, var_110
  loc_1823FA9:                     Set var_94 = var_AC
  loc_1823FD7:                     If (var_94.RecordCount > 0) Then
  loc_1823FDE:                       var_110 = CVar(CLng(var_8E)) 'Long
  loc_1824011:                       Proc_6_39_E7C810(var_EC, CVar(var_94.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)))
  loc_182401A:                       var_130 = CVar(CStr(var_EC)) 'String
  loc_1824021:                       LateIdCallSt
  loc_182406E:                       var_EC = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_22C)) 'String
  loc_1824075:                       LateIdCallSt
  loc_1824087:                     End If
  loc_18240C0:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Godowncode")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_18240C7:                     LateIdCallSt
  loc_18240DD:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1824112:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("RoomNo")), CVar(CLng(&H18)), var_110, var_22C, var_EC)) 'String
  loc_1824119:                     LateIdCallSt
  loc_1824161:                     Set var_AC = Me.Txt
  loc_1824167:                     Call 0.Method_Txt_Validate0 (CInt(7), var_CC, Proc_6_38_E68A98(CVar(var_9C.Fields.Item("RoomNo")), var_22C, var_EC, var_130))
  loc_182416F:                     var_CC.Tag = var_110
  loc_18241BC:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("GodName")), CVar(CLng(&H16)), CVar(CLng(var_8E)))) 'String
  loc_18241C3:                     LateIdCallSt
  loc_18241F5:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_18241FD:                     var_1D4 = CVar(CLng(6)) 'Long
  loc_182422A:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("ConvRatio")), "0.000"))) 'String
  loc_1824231:                     LateIdCallSt
  loc_1824261:                     var_A8 = var_9C.Fields.Item("RecdQty")
  loc_18242A4:                     var_1B4 = var_9C.Fields
  loc_18242BD:                     var_B6 = IsNull(CVar(var_1B4.Item("ConvRatio")))
  loc_18242FC:                     var_150 = (var_9C.Fields.Item("ConvRatio").Value = 0) Or var_B6
  loc_1824313:                     var_214 = CVar(CLng(var_8E)) 'Long
  loc_182431B:                     var_274 = CVar(CLng(7)) 'Long
  loc_1824352:                     var_294 = CVar(CStr(Format((var_A8.Value * IIf(var_150, 1, CVar(var_9C.Fields.Item("ConvRatio")))), "0.000"))) 'String
  loc_1824359:                     LateIdCallSt
  loc_182438D:                     Set var_22C = Nothing 
  loc_1824397:                     var_8E = (var_8E + 1)
  loc_182439A:                   End If
  loc_182439D:                   var_9C.MoveNext
  loc_18243A6:                   var_96 = CByte(0) 'Byte
  loc_18243AA:                   GoTo loc_18234D7
  loc_18243AD:                 End If
  loc_18243C0:                 Me.FGrid.FixedRows = 1
  loc_18243C8:               End If
  loc_18243CB:             Else
  loc_18243D8:               Set var_A4 = Me.Txt
  loc_18243DE:               Call 0.Method_Txt_Validate0 (Cancel, var_A8, vbNullString, var_8E, var_22C, var_294, 1)
  loc_18243E6:               var_A8.Text = 1
  loc_18243F2:             End If
  loc_1824400:             Me.FGrid.Redraw = True
  loc_182440E:             If (var_8E = 1) Then
  loc_1824424:               Me.FGrid.Rows = 1
  loc_182444A:               var_DC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_274, var_214))) 'String
  loc_1824452:               Set var_A8 = Me.FGrid
  loc_182447F:               Me.FGrid.FixedRows = 1
  loc_1824487:             End If
  loc_182448D:             Call Proc_338_101_17C5094(Cancel, FGrid.DispID_10000, var_DC, var_B6)
  loc_1824495:           Else
  loc_182449D:             If (var_A0 = CInt(6)) Then
  loc_18244AA:               Set var_A4 = Me.Txt
  loc_18244B0:               Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_22C)
  loc_18244D0:               Set var_CC = Me.Txt
  loc_18244D6:               Call 0.Method_Txt_Validate0 (Cancel, var_1B4)
  loc_18244DE:               var_1B4.Text = Proc_6_33_1512840(var_A8, var_150)
  loc_18244F1:             End If
  loc_18244F1:           End If
  loc_18244F1:         End If
  loc_18244F1:       End If
  loc_18244F1:     End If
  loc_18244F1:   End If
  loc_18244F1: End If
  loc_1824503: Me.FGrid.Col = CVar(CLng(2))
  loc_1824510: Set var_94 = Nothing
  loc_1824518: Set var_88 = Nothing
  loc_182451B: Exit Sub
  loc_182451C: ' Referenced from: 182214C
  loc_182451C: Proc_6_60_E62BC4(1)
  loc_1824521: Exit Sub
End Sub

Private Sub CmdImport_Click() '1246560
  'Data Table: 598674
  Dim var_9C As String
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim MemVar_1F9222C As String
  Dim var_104 As Connection15
  Dim var_108 As Recordset15
  Dim var_88 As Variant
  Dim var_EC As Variant
  Dim var_140 As Variant
  Dim var_128 As Variant
  Dim var_DC As Variant
  Dim var_178 As Variant
  loc_1246040: On Error Goto loc_1246559
  loc_1246047: Set var_88 = Me.TopCtrl1
  loc_124604D: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1246055: var_9C = CStr()
  loc_1246066: If (var_9C <> "Add") Then
  loc_124606F:   Call 0.Method_arg_50 (var_9C)
  loc_124607D:   var_BC = CVar(var_9C) 'String
  loc_1246090:   MsgBox("Import Only In Add Mode.", &H40, var_BC, var_DC, var_FC)
  loc_12460A0:   Exit Sub
  loc_12460A1: End If
  loc_12460BF: If (Trim(MemVar_1F9222C) = vbNullString) Then
  loc_12460C5:   MemVar_1F9222C = "C:\Analysis\Transfer"
  loc_12460D5:   Call 0.Method_CmdImport_Click8 ("C:\Analysis")
  loc_12460E0:   If (var_116 = 0) Then
  loc_12460EF:     Call 0.Method_arg_74 ("C:\Analysis", var_88)
  loc_1246103:     Call 0.Method_CmdImport_Click8 ("C:\Analysis\Transfer", var_116)
  loc_124610E:     If (var_116 = 0) Then
  loc_124611D:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_88)
  loc_1246125:     End If
  loc_1246125:   End If
  loc_1246125: End If
  loc_1246131: Call 0.Method_CmdImport_Click8 (MemVar_1F9222C, var_116)
  loc_124613C: If (var_116 = 0) Then
  loc_1246158:   MsgBox("Transfer Location Not Exits", &H40, var_BC, var_DC, var_FC)
  loc_1246168: End If
  loc_124618C: MemVar_1F9222C = Replace(MemVar_1F9222C & "\", "\\", "\", 1, -1, 0)
  loc_12461A1: Set var_104 = New 
  loc_12461AC: Me.Connection15.CursorLocation = 3
  loc_12461B9: var_104.IsolationLevel = &H10
  loc_12461C6: var_104.CommandTimeout = 0
  loc_12461E3: var_104.Open "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F9222C & "SaleTransfer.mdb", vbNullString, vbNullString, -1
  loc_1246203: Set var_108 = New 
  loc_1246220: var_AC = CVar("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 S Where S.LOGSITE_CODE='" & MemVar_1F92078 & "' Order by S.Vno") 'String
  loc_1246227: Me.Recordset15.Open var_AC, CVar(var_104), 3
  loc_124622C: Call Proc_338_84_118C270(1, -1)
  loc_1246245: If (var_108.RecordCount = 0) Then
  loc_124625B:   Me.GridSel.Rows = 2
  loc_1246263:   Exit Sub
  loc_1246264: End If
  loc_1246277: Me.GridSel.Row = 1
  loc_124627F: ' Referenced from: 1246526
  loc_124628E: If Not(var_108.EOF) Then
  loc_1246295:   Set var_130 = Me.GridSel
  loc_1246298:   var_AC = vbNullString
  loc_12462BC:   var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12462C4:   var_EC = CVar(CLng(0)) 'Long
  loc_12462D2:   LateIdCallSt
  loc_12462F3:   var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12462FB:   var_128 = CVar(CLng(1)) 'Long
  loc_124632B:   var_DC = CVar(CStr(var_108.Fields.Item("VNo").Value)) 'String
  loc_1246332:   LateIdCallSt
  loc_1246394:   var_DC = CVar(Proc_6_38_E68A98(CVar(var_108.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_130, var_DC, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_124639B:   LateIdCallSt
  loc_12463F1:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12463F9:   var_140 = CVar(CLng(3)) 'Long
  loc_1246416:   var_BC = CVar(Proc_6_38_E68A98(CVar(var_108.Fields.Item("VDate")), var_130, "dd/mmm/yyyy", var_130, vbNullString)) 'String
  loc_124642C:   LateIdCallSt
  loc_1246473:   Proc_6_39_E7C810(var_BC, CVar(var_108.Fields.Item("BillAmount")), var_130, CVar(CStr(Format(var_BC, "dd/mmm/yyyy"))), 1, 1)
  loc_124648B:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1246493:   var_140 = CVar(CLng(4)) 'Long
  loc_12464BC:   var_178 = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_12464C3:   LateIdCallSt
  loc_12464E3:   Set var_130 = Nothing 
  loc_1246500:   var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_124650F:   Me.GridSel.Row = "BillAmount"
  loc_1246521:   var_108.MoveNext
  loc_1246526:   GoTo loc_124627F
  loc_1246529: End If
  loc_124653C: Me.GridSel.FixedRows = 1
  loc_1246550: Me.FrTrans.Visible = True
  loc_1246558: Exit Sub
  loc_1246559: ' Referenced from: 1246040
  loc_1246559: Proc_6_60_E62BC4(var_130, var_178, 1, 1, var_140, var_EC)
  loc_124655E: Exit Sub
End Sub

Private Sub Opt_GotFocus(Index As Integer) 'F2BA48
  'Data Table: 598674
  Dim var_9C As String
  Dim var_A0 As OptionButton
  Dim unk_598691 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_F2B968: Set var_88 = Me.TopCtrl1
  loc_F2B96E: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_F2B987: If (CStr() = "Add") Then
  loc_F2B9AD:   var_9C = "Select IsNull(Max(InvoiceNo),0)+1 From Purch1 Where LOGsite_code='" & MemVar_1F92078
  loc_F2B9C4:   Set var_88 = Me.Opt
  loc_F2B9CA:   Call 0.Method_Opt_GotFocus0 (Index, var_A0, var_A4, CStr() & "' And InvoiceType='", var_98, -1)
  loc_F2B9EB:   unk_598691.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_F2B9FB:    = var_C8.Item()
  loc_F2BA03:    = var_DC.Value
  loc_F2BA1A:   Me.LblInvoiceNo.Caption = CStr(var_A0.Caption.Fields)
  loc_F2BA46: End If
  loc_F2BA46: Exit Sub
End Sub

Private Sub Opt_KeyDown(KeyCode As Integer, Shift As Integer) 'E21744
  'Data Table: 598674
  loc_E21735: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E2173E:   Proc_6_75_E527CC(Shift)
  loc_E21743: End If
  loc_E21743: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF8718
  'Data Table: 598674
  Dim FGPoint_UnknownEvent_900 As Variant
  loc_EF8658: If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_EF865B:   Call DgMR_UnknownEvent_9()
  loc_EF8660: End If
  loc_EF867C: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF867F:   Call DGItem_UnknownEvent_9()
  loc_EF8684: End If
  loc_EF86A0: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EF86A3:   Call DGParty_UnknownEvent_9()
  loc_EF86A8: End If
  loc_EF86C4: If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_EF86C7:   Call DGPartyBillNo_UnknownEvent_9()
  loc_EF86CC: End If
  loc_EF86E8: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EF86EB:   Call DGVType_UnknownEvent_9()
  loc_EF86F0: End If
  loc_EF870C: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_EF870F:   Call DGGod_UnknownEvent_9()
  loc_EF8714: End If
  loc_EF8714: Exit Sub
  loc_EF8715: FGPoint_UnknownEvent_900 = 
End Sub

Private Sub CmdExit_Click() 'E4CCEC
  'Data Table: 598674
  loc_E4CCD3: If (Me.FrTrans.Visible = &HFF) Then
  loc_E4CCE2:   Me.FrTrans.Visible = False
  loc_E4CCEA: End If
  loc_E4CCEA: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECE4E4
  'Data Table: 598674
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECE446: Set var_88 = Me.TxtPer
  loc_ECE44C: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECE45A: Proc_6_74_E226B0(var_8C)
  loc_ECE466: Call Proc_338_94_FDE1A4(var_8C)
  loc_ECE47A: Set var_88 = Me.TxtPer
  loc_ECE480: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECE488: var_8C.SelStart = 0
  loc_ECE4A1: Set var_88 = Me.TxtPer
  loc_ECE4A7: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECE4C2: Set var_90 = Me.TxtPer
  loc_ECE4C8: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECE4D0: var_98.SelLength = Len(var_8C.Text)
  loc_ECE4E3: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BA80
  'Data Table: 598674
  loc_E5BA4D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BA56:   Proc_6_75_E527CC(Shift)
  loc_E5BA5B: End If
  loc_E5BA70: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BA79:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5BA7E: End If
  loc_E5BA7E: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E57340
  'Data Table: 598674
  loc_E57312: Set var_88 = Me.TxtPer
  loc_E57318: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E57333: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E5733F: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E00974
  'Data Table: 598674
  loc_E0096E: Call Proc_338_101_17C5094(KeyCode)
  loc_E00973: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4B4EC
  'Data Table: 598674
  loc_E4B4CA: Set var_88 = Me.TxtPer
  loc_E4B4D0: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4B4DE: Proc_6_73_E22704(var_8C)
  loc_E4B4EA: Exit Sub
End Sub

Public Function global_52Get() '59B0EC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '59B0FB
  global_52 = Value
End Sub

Public Function global_56Get() '59B10A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '59B119
  global_56 = Value
End Sub

Public Property Let OpenAs(vNewValue) 'E1120C
  'Data Table: 598674
  loc_E11204: global_260 = vNewValue
  loc_E11208: Exit Sub
End Sub

Public Property Get OpenAs() 'E10834
  'Data Table: 598674
  loc_E10828: var_88 = global_260
  loc_E1082B: OpenAs = 
End Sub

Public Sub FindMove(mDocId) 'E6E018
  'Data Table: 598674
  Dim Me As Recordset15
  loc_E6DFC2: Me.MoveFirst
  loc_E6DFEC: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E6E00C: If (Me.EOF = 0) Then
  loc_E6E00F:   Call Proc_338_90_1A01BB8(var_9C)
  loc_E6E014: End If
  loc_E6E014: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95AE8
  'Data Table: 598674
  Dim Me As Recordset15
  loc_E95A76: On Error Goto loc_E95ADF
  loc_E95A7F: Me.MoveFirst
  loc_E95AA9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95AD1: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E95AD9: Call Proc_338_90_1A01BB8(0)
  loc_E95ADE: Exit Sub
  loc_E95ADF: ' Referenced from: E95A76
  loc_E95ADF: Proc_6_60_E62BC4(var_A0)
  loc_E95AE4: Exit Sub
End Sub

Public Sub Proc_338_83_E852E4(arg_C) 'E852E4
  'Data Table: 598674
  loc_E85282: For var_90 = 1 To CInt(Len(arg_C)): var_88 = var_90 'Integer
  loc_E852C7:   If Not(((Asc(CStr(Mid(arg_C, CLng(var_88), 1))) >= &H30) And (Asc(CStr(Mid(arg_C, CLng(var_88), 1))) <= &H39))) Then
  loc_E852CA:     GoTo loc_E852D5
  loc_E852CD:   End If
  loc_E852D0: Next var_90 'Integer
  loc_E852D5: ' Referenced from: E852CA
  loc_E852DB: Proc_338_83_E852E4 = var_88
End Sub

Public Sub Proc_338_84_118C270
  'Data Table: 598674
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_118BE8E: Me.GridSel.Rows = 1
  loc_118BEA2: Me.GridSel.Cols = 5
  loc_118BEA7: var_98 = 0
  loc_118BEB3: var_BC = CVar(CLng(0)) 'Long
  loc_118BEB8: var_DC = vbNullString
  loc_118BEC1: LateIdCallSt
  loc_118BECC: var_98 = CVar(CLng(0)) 'Long
  loc_118BED1: var_BC = &H258
  loc_118BEDD: LateIdCallSt
  loc_118BEE5: var_98 = 0
  loc_118BEF1: var_BC = CVar(CLng(1)) 'Long
  loc_118BEF6: var_DC = "Bill No"
  loc_118BEFF: LateIdCallSt
  loc_118BF0A: var_98 = CVar(CLng(1)) 'Long
  loc_118BF15: var_BC = CVar(CInt(1)) 'Integer
  loc_118BF1C: LateIdCallSt
  loc_118BF27: var_98 = CVar(CLng(1)) 'Long
  loc_118BF32: var_BC = CVar(CInt(1)) 'Integer
  loc_118BF39: LateIdCallSt
  loc_118BF44: var_98 = CVar(CLng(1)) 'Long
  loc_118BF49: var_BC = &H5DC
  loc_118BF55: LateIdCallSt
  loc_118BF5D: var_98 = 0
  loc_118BF69: var_BC = CVar(CLng(2)) 'Long
  loc_118BF6E: var_DC = "DocId"
  loc_118BF77: LateIdCallSt
  loc_118BF82: var_98 = CVar(CLng(2)) 'Long
  loc_118BF8D: var_BC = CVar(CInt(7)) 'Integer
  loc_118BF94: LateIdCallSt
  loc_118BF9F: var_98 = CVar(CLng(2)) 'Long
  loc_118BFAA: var_BC = CVar(CInt(7)) 'Integer
  loc_118BFB1: LateIdCallSt
  loc_118BFBC: var_98 = CVar(CLng(2)) 'Long
  loc_118BFC1: var_BC = 0
  loc_118BFCD: LateIdCallSt
  loc_118BFD5: var_98 = 0
  loc_118BFE1: var_BC = CVar(CLng(3)) 'Long
  loc_118BFE6: var_DC = "Bill Date"
  loc_118BFEF: LateIdCallSt
  loc_118BFFA: var_98 = CVar(CLng(3)) 'Long
  loc_118C005: var_BC = CVar(CInt(1)) 'Integer
  loc_118C00C: LateIdCallSt
  loc_118C017: var_98 = CVar(CLng(3)) 'Long
  loc_118C022: var_BC = CVar(CInt(1)) 'Integer
  loc_118C029: LateIdCallSt
  loc_118C034: var_98 = CVar(CLng(3)) 'Long
  loc_118C039: var_BC = &H7D0
  loc_118C045: LateIdCallSt
  loc_118C04D: var_98 = 0
  loc_118C059: var_BC = CVar(CLng(4)) 'Long
  loc_118C05E: var_DC = "Bill Amount"
  loc_118C067: LateIdCallSt
  loc_118C072: var_98 = CVar(CLng(4)) 'Long
  loc_118C07D: var_BC = CVar(CInt(7)) 'Integer
  loc_118C084: LateIdCallSt
  loc_118C08F: var_98 = CVar(CLng(4)) 'Long
  loc_118C09A: var_BC = CVar(CInt(7)) 'Integer
  loc_118C0A1: LateIdCallSt
  loc_118C0AC: var_98 = CVar(CLng(4)) 'Long
  loc_118C0B1: var_BC = &H7D0
  loc_118C0BD: LateIdCallSt
  loc_118C0C5: var_98 = vbNullString
  loc_118C0CF: Set var_AC = Me.GridSel
  loc_118C0F3: Me.GridSel.FixedRows = 1
  loc_118C0FD: Set var_88 = Nothing 
  loc_118C111: ReDim Preserve global_244(0 To 0)
  loc_118C128: global_244(0) = 0
  loc_118C13C: Me.GridSel.Height = CVar(CDbl(3000))
  loc_118C157: Me.GridSel.Width = CVar(CDbl(6500))
  loc_118C15F: var_98 = 0
  loc_118C190: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_118C19F: var_98 = 0
  loc_118C1D0: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_118C201: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_118C232: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_118C251: Me.Check1.Value = CInt(0)
  loc_118C265: Me.Check1.Visible = False
  loc_118C26D: Exit Sub
End Sub

Public Sub Proc_338_85_11C334C(arg_C, arg_10) '11C334C
  'Data Table: 598674
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_8C As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Long
  loc_11C2EF6: var_86 = &HFF
  loc_11C2EFB: var_88 = 0
  loc_11C2F07: If (CInt(arg_10) = 1) Then
  loc_11C2F2F:   For var_A8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_8A = var_A8 'Integer
  loc_11C2F38:     var_8C = var_8A
  loc_11C2F3F:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C2F44:     var_D8 = 2
  loc_11C2F73:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C2F7A:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C2FD9:       Call Proc_338_86_159BBFC(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), var_146, Me.GridSel.TextMatrix), 1, CVar(CLng(var_8C)), Me.GridSel.TextMatrix), 2)
  loc_11C2FF9:       If (var_146 = 0) Then
  loc_11C3001:         Proc_338_85_11C334C = 0
  loc_11C3007:       End If
  loc_11C3009:       var_88 = &HFF
  loc_11C3031:       For var_14A = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_14A 'Integer
  loc_11C304A:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C3065:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C3080:         Me.GridSel.CellBackColor = &H80FF
  loc_11C308B:       Next var_14A 'Integer
  loc_11C3090:     End If
  loc_11C3093:   Next var_A8 'Integer
  loc_11C3098:   Exit For
  loc_11C309B: End If
  loc_11C30A3: CRefVarAry
  loc_11C30AB: For var_14E = 0 To CInt(UBound(arg_C, 1)): var_8A = var_14E 'Integer
  loc_11C30CC:   If (arg_C(var_8A) = 0) Then
  loc_11C30CF:     GoTo loc_11C3279
  loc_11C30D2:   End If
  loc_11C30E3:   var_8C = CInt(arg_C(var_8A))
  loc_11C30ED:   var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C30F2:   var_D8 = 0
  loc_11C3121:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11C3128:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C312D:     var_D8 = 2
  loc_11C315C:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C3163:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C31C2:       Call Proc_338_86_159BBFC(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), var_146, Me.GridSel.TextMatrix), 1, CVar(CLng(var_8C)), Me.GridSel.TextMatrix), 2)
  loc_11C31E2:       If (var_146 = 0) Then
  loc_11C31EA:         Proc_338_85_11C334C = 0
  loc_11C31F0:       End If
  loc_11C31F2:       var_88 = &HFF
  loc_11C321A:       For var_152 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_152 'Integer
  loc_11C3233:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C324E:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C3269:         Me.GridSel.CellBackColor = &H80FF
  loc_11C3274:       Next var_152 'Integer
  loc_11C3279:       ' Referenced from: 11C30CF
  loc_11C3279:     End If
  loc_11C3279:   End If
  loc_11C327C: Next var_14E 'Integer
  loc_11C3281: ' Referenced from: 11C3098
  loc_11C3291: If ((var_88 = 0) And (CInt(arg_10) = 0)) Then
  loc_11C3296:   var_86 = 0
  loc_11C3299:   var_B8 = 0
  loc_11C32A2:   var_D8 = 1
  loc_11C32B5:   var_A4 = Me.GridSel.TextMatrix)
  loc_11C32DD:   MsgBox(CVar("Select " & CStr(var_A4)), &H40, var_164, var_174, var_184)
  loc_11C3308:   Me.GridSel.Row = 1
  loc_11C3323:   Me.GridSel.Col = 0
  loc_11C332F:   Set var_94 = Me.GridSel
  loc_11C3340: End If
  loc_11C3340: Proc_338_85_11C334C = GridSel.DispID_8001
  loc_11C3346: Proc_338_85_11C334C = var_A4
End Sub

Public Sub Proc_338_86_159BBFC(arg_C) '159BBFC
  'Data Table: 598674
  Dim var_90 As Connection15
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim unk_598691 As Connection15
  Dim var_A0 As Recordset15
  Dim var_12C As Variant
  Dim var_F8 As Variant
  Dim var_94 As Recordset15
  Dim var_AA As Integer
  Dim var_134 As Variant
  Dim var_128 As Variant
  Dim var_14C As Variant
  Dim var_98 As Recordset15
  Dim var_16C As Variant
  Dim var_13C As Fields15
  Dim var_170 As Variant
  Dim var_1C8 As Variant
  Dim var_118 As Variant
  Dim var_15C As Variant
  Dim var_180 As Variant
  Dim var_190 As Variant
  Dim var_1B4 As Recordset15
  Dim var_1B8 As Fields15
  Dim var_1CC As Field20
  Dim var_250 As MSHFlexGrid
  Dim var_2A8 As Double
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_1A0 As Variant
  Dim var_B0 As Recordset15
  Dim var_B2 As Integer
  Dim var_9C As Recordset15
  loc_159AA96: Set var_90 = New 
  loc_159AAA1: Me.Connection15.CursorLocation = 3
  loc_159AAAE: var_90.IsolationLevel = &H10
  loc_159AABB: var_90.CommandTimeout = 0
  loc_159AAD8: var_90.Open "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F9222C & "SaleTransfer.mdb", vbNullString, vbNullString, -1
  loc_159AB34: Set var_94 = New 
  loc_159AB58: Me.Recordset15.Open CVar("Select * From Stock S Where S.LOGSITE_CODE='" & MemVar_1F92078 & "' And DocId='" & arg_C & "' Order by S.Sno"), CVar(var_90), 3
  loc_159AB61: Set var_9C = New 
  loc_159AB7E: var_D8 = CVar("Select * From SunTran S Where S.LOGSITE_CODE='" & MemVar_1F92078 & "' And DocId='" & arg_C & "' Order by S.Sno") 'String
  loc_159AB85: Me.Recordset15.Open var_D8, CVar(var_90), 3
  loc_159ABA7: Proc_6_17_EAA2B0(var_F8, MemVar_1F92078, "Select E.PurChaseGodown,G.Name from Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE=", var_128, -1)
  loc_159ABBD: unk_598691.Execute CStr(var_12C & var_F8), 1, -1
  loc_159ABC8: Set var_A0 = var_12C
  loc_159ABEE: If (var_A0.RecordCount > 0) Then
  loc_159AC19:   var_B8 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("PurchaseGodown")), 1)
  loc_159AC4A:   var_BC = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Name")))
  loc_159AC53: End If
  loc_159AC58: Set var_A0 = Nothing
  loc_159AC6F: If (var_94.RecordCount > 0) Then
  loc_159AC81:   Me.FGrid.Redraw = False
  loc_159AC9C:   Me.FGrid.Rows = 1
  loc_159ACA8:   Set var_13C = Me.FGrid
  loc_159ACC2:   var_F8 = CVar(CStr(Proc_6_127_F24F80(var_13C, CInt(0)))) 'String
  loc_159ACCA:   Set var_134 = Me.FGrid
  loc_159ACF7:   Me.FGrid.FixedRows = 1
  loc_159AD19:   var_AA = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_159AD22:   ' Referenced from: 159B9A4
  loc_159AD31:   If Not(var_94.EOF) Then
  loc_159AD48:     var_C0 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join Taxstru TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_159AD4F:     var_108 = CVar(var_C0 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' And I.Code='") 'String
  loc_159AD93:     unk_598691.Execute CStr(var_108 & var_94.Fields.Item("Item").Value & "'"), var_15C, -1
  loc_159AD9E:     Set var_98 = var_13C
  loc_159ADD2:     If (var_98.RecordCount = 0) Then
  loc_159AE0E:       var_13C = var_94.Fields
  loc_159AE16:       var_170 = var_13C.Item("RestCode")
  loc_159AE29:       var_1C8 = 0
  loc_159AE60:       var_190 = "Select Max(Name) From ItemMast Where Code='" & var_94.Fields.Item("Item").Value & "' And RestCode='" & var_170.Value & "'" 
  loc_159AE6E:       unk_598691.Execute CStr(var_190), var_1B0, -1
  loc_159AE76:       var_1B4 = var_1B4.Fields
  loc_159AE7E:       var_1C8 = var_1B8.Item(var_1B8)
  loc_159AE86:       var_1CC = var_1CC.Value
  loc_159AEB9:       MsgBox(CVar(Proc_6_38_E68A98(var_1DC, var_1DC, var_13C, var_AA) & " Is Not Present In Purchase Item."), &H40, "Purchase Transfer", var_22C, var_24C)
  loc_159AEF3:       Proc_338_86_159BBFC = FGrid.DispID_10000
  loc_159AEF9:     End If
  loc_159AEF9:     var_D8 = vbNullString
  loc_159AF03:     Set var_12C = Me.FGrid
  loc_159AF17:     var_D8 = "VNo"
  loc_159AF33:     var_F8 = CVar(var_94.Fields.Item(var_D8)) 'Address
  loc_159AF59:     Set var_13C = Me.Txt
  loc_159AF5F:     Call 0.Method_Proc_338_86_159BBFC0 (CInt(5), var_170, CStr(Trim(CVar(Proc_6_38_E68A98(var_F8, FGrid.DispID_10000, var_D8)))))
  loc_159AF67:     var_170.Text = var_F8
  loc_159AFB7:     Set var_13C = Me.Txt
  loc_159AFBD:     Call 0.Method_Proc_338_86_159BBFC0 (CInt(6), var_170)
  loc_159AFDD:     Set var_250 = Me.FGrid
  loc_159AFE4:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159AFEC:     var_118 = CVar(CLng(0)) 'Long
  loc_159AFF6:     var_F8 = CVar(CStr(var_AA)) 'String
  loc_159AFFD:     LateIdCallSt
  loc_159B00C:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159B014:     var_16C = CVar(CLng(2)) 'Long
  loc_159B044:     var_108 = CVar(CStr(var_98.Fields.Item("Name").Value)) 'String
  loc_159B04B:     LateIdCallSt
  loc_159B065:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159B06D:     var_16C = CVar(CLng(&HC)) 'Long
  loc_159B09D:     var_108 = CVar(CStr(var_98.Fields.Item("Code").Value)) 'String
  loc_159B0A4:     LateIdCallSt
  loc_159B0BE:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159B0C6:     var_16C = CVar(CLng(1)) 'Long
  loc_159B0F6:     var_108 = CVar(CStr(var_98.Fields.Item("DispCode").Value)) 'String
  loc_159B0FD:     LateIdCallSt
  loc_159B117:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159B11F:     var_16C = CVar(CLng(4)) 'Long
  loc_159B14F:     var_108 = CVar(CStr(var_98.Fields.Item("Unit").Value)) 'String
  loc_159B156:     LateIdCallSt
  loc_159B170:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_159B178:     var_16C = CVar(CLng(8)) 'Long
  loc_159B1A8:     var_108 = CVar(CStr(var_98.Fields.Item("IssueUnit").Value)) 'String
  loc_159B1AF:     LateIdCallSt
  loc_159B1E5:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159B1ED:     var_180 = CVar(CLng(6)) 'Long
  loc_159B21A:     var_14C = CVar(CStr(Format(CVar(var_98.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_159B221:     LateIdCallSt
  loc_159B257:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159B25F:     var_180 = CVar(CLng(5)) 'Long
  loc_159B28C:     var_14C = CVar(CStr(Format(CVar(var_94.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_159B293:     LateIdCallSt
  loc_159B2AD:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159B2B5:     var_118 = CVar(CLng(5)) 'Long
  loc_159B2D0:     var_2A8 = Val(CStr(var_250.TextMatrix)))
  loc_159B2D7:     var_180 = CVar(CLng(var_AA)) 'Long
  loc_159B2DF:     var_1C8 = CVar(CLng(6)) 'Long
  loc_159B2F2:     var_C4 = CStr(var_250.TextMatrix))
  loc_159B301:     var_260 = CVar(CLng(var_AA)) 'Long
  loc_159B309:     var_280 = CVar(CLng(7)) 'Long
  loc_159B33A:     var_190 = CVar(CStr(Format(CVar((var_2A8 * Val(var_C4))), "0.000"))) 'String
  loc_159B341:     LateIdCallSt
  loc_159B387:     var_180 = CVar(CLng(9)) 'Long
  loc_159B3BB:     LateIdCallSt
  loc_159B406:     Set var_13C = Me.Txt
  loc_159B40C:     Call 0.Method_Proc_338_86_159BBFC0 (CInt(3), var_170, var_C4, var_250, CVar(CStr(Format(CVar(var_94.Fields.Item("Rate")), "0.00000"))), 1, 1)
  loc_159B414:     var_180 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("VDate")))
  loc_159B42B:     Call Proc_338_106_1063980(CStr(var_98.Fields.Item("Code").Value), var_C4, var_2A8, CVar(CLng(var_AA)), var_250)
  loc_159B434:     var_16C = CVar(CLng(var_AA)) 'Long
  loc_159B43C:     var_1A0 = CVar(CLng(&HA)) 'Long
  loc_159B469:     var_15C = CVar(CStr(Format(CVar(var_2A8), "0.00000"))) 'String
  loc_159B470:     LateIdCallSt
  loc_159B49B:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159B4B1:     LateIdCallSt
  loc_159B4CD:     var_D8 = "DiscApp"
  loc_159B4F2:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item(var_D8)), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_250, vbNullString, CVar(CLng(&H18)), var_D8)) 'String
  loc_159B4F9:     LateIdCallSt
  loc_159B544:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_AA)), var_250, var_108, var_250)) 'String
  loc_159B54B:     LateIdCallSt
  loc_159B596:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B59D:     LateIdCallSt
  loc_159B5E8:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B5EF:     LateIdCallSt
  loc_159B63A:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B641:     LateIdCallSt
  loc_159B68C:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B693:     LateIdCallSt
  loc_159B6DE:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B6E5:     LateIdCallSt
  loc_159B717:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159B753:     LateIdCallSt
  loc_159B7A2:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_AA)), var_250, CVar(CStr(Format(CVar(var_94.Fields.Item("Amount")), "0.00"))), 1, 1)) 'String
  loc_159B7A9:     LateIdCallSt
  loc_159B7F4:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_250, var_108, CVar(CLng(&HB)))) 'String
  loc_159B7FB:     LateIdCallSt
  loc_159B846:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159B84D:     LateIdCallSt
  loc_159B863:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159B86B:     var_118 = CVar(CLng(&H17)) 'Long
  loc_159B87A:     LateIdCallSt
  loc_159B886:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159B88E:     var_118 = CVar(CLng(&H16)) 'Long
  loc_159B89D:     LateIdCallSt
  loc_159B8B8:     var_D8 = "TaxStru"
  loc_159B8DD:     var_C0 = Proc_6_38_E68A98(CVar(var_98.Fields.Item(var_D8)), "Select * from taxStru where code='", var_108, -1, var_13C, var_250, var_BC)
  loc_159B8F1:     unk_598691.Execute var_118 & CStr(var_250.TextMatrix)) & "'", var_D8, var_250
  loc_159B8FC:     Set var_B0 = var_13C
  loc_159B92A:     If (var_B0.RecordCount > 0) Then
  loc_159B955:       var_134 = var_B0.Fields.Item("Rate")
  loc_159B964:       Proc_6_39_E7C810(var_108, CVar(var_134), CVar(CLng(&H11)), CVar(CLng(var_AA)))
  loc_159B96D:       var_128 = CVar(CStr(var_108)) 'String
  loc_159B974:       LateIdCallSt
  loc_159B988:     End If
  loc_159B98A:     Set var_250 = Nothing 
  loc_159B994:     var_AA = (var_AA + 1)
  loc_159B99A:     var_94.MoveNext
  loc_159B9A1:     var_B2 = 0
  loc_159B9A4:     GoTo loc_159AD22
  loc_159B9A7:     ' Referenced from: 159BB29
  loc_159B9A7:   End If
  loc_159B9AD:   var_136 = var_9C.EOF
  loc_159B9B6:   If Not(var_136) Then
  loc_159B9C5:     Set var_12C = Me.LblCap
  loc_159B9CB:     Call 0.Method_Proc_338_86_159BBFCC (var_136, var_AA, 1, var_B2, var_AA)
  loc_159B9D6:     For var_2B4 = var_128 To var_136: var_250 = var_2B4 'Integer
  loc_159B9E9:       Set var_12C = Me.LblCap
  loc_159B9EF:       Call 0.Method_Proc_338_86_159BBFC0 (var_AA, var_134, CStr(var_250.TextMatrix)), var_128)
  loc_159B9F7:       var_B8 = var_134.Tag
  loc_159BA1D:       var_170 = var_9C.Fields.Item("SunCode")
  loc_159BA41:       If (CVar(CStr(var_250.TextMatrix))) = var_170.Value) Then
  loc_159BA7C:         Set var_13C = Me.TxtPer
  loc_159BA82:         Call 0.Method_Proc_338_86_159BBFC0 (var_AA, var_170, CStr(var_9C.Fields.Item("SValue").Value))
  loc_159BA8A:         var_170.Text = var_118
  loc_159BAF1:         Set var_13C = Me.TxtGt
  loc_159BAF7:         Call 0.Method_Proc_338_86_159BBFC0 (var_AA, var_170, CStr(Format(CVar(var_9C.Fields.Item("Amount")), "0.00")))
  loc_159BAFF:         var_170.Text = 1
  loc_159BB19:       End If
  loc_159BB1C:     Next var_2B4 'Integer
  loc_159BB24:     var_9C.MoveNext
  loc_159BB29:     GoTo loc_159B9A7
  loc_159BB2C:   End If
  loc_159BB3F:   Me.FGrid.FixedRows = 1
  loc_159BB47: End If
  loc_159BB55: Me.FGrid.Redraw = True
  loc_159BB63: If (var_AA = 1) Then
  loc_159BB79:   Me.FGrid.Rows = 1
  loc_159BB9F:   var_F8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_159BBA7:   Set var_134 = Me.FGrid
  loc_159BBD4:   Me.FGrid.FixedRows = 1
  loc_159BBDC: End If
  loc_159BBE1: Call Proc_338_101_17C5094(&H32, FGrid.DispID_10000)
  loc_159BBEB: Set var_94 = Nothing
  loc_159BBF3: Set var_9C = Nothing
  loc_159BBF6: Proc_338_86_159BBFC = var_F8
End Sub

Public Sub Proc_338_87_148AA24
  'Data Table: 598674
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_C8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_12C As MSHFlexGrid
  loc_1489DC6: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_1489DE1: Me.FGrid.Top = CVar(CDbl(2030))
  loc_1489DFC: Me.FGrid.Width = CVar(CDbl(11500))
  loc_1489E17: Me.DGItem.Left = CVar(CDbl(3000))
  loc_1489E32: Me.DGItem.Top = CVar(CDbl(1000))
  loc_1489E45: If (global_100 <> "Yes") Then
  loc_1489E59:   Set var_A8 = Me.DGItem
  loc_1489E78:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_1489EA1:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_1489EAA:   Set var_BC = Me.DGItem
  loc_1489EB0:   var_BC.Width = 1
  loc_1489EBF: End If
  loc_1489ECD: Set var_A8 = Me.Txt
  loc_1489ED3: Call 0.Method_Proc_338_87_148AA240 (CInt(7), var_BC)
  loc_1489EF2: Me.DgMR.Left = CVar(var_BC.Left)
  loc_1489F0E: Set var_C0 = Me.Txt
  loc_1489F14: Call 0.Method_Proc_338_87_148AA240 (CInt(7), var_C8)
  loc_1489F2F: Set var_A8 = Me.Txt
  loc_1489F35: Call 0.Method_Proc_338_87_148AA240 (CInt(7), var_BC)
  loc_1489F4D: var_94 = CVar(((var_BC.Top + var_C8.Height) + CDbl(&H1E))) 'Single
  loc_1489F5C: Me.DgMR.Top = CVar(var_BC.Left)
  loc_1489F81: Me.DGRest.Left = CVar(CDbl(3000))
  loc_1489F9C: Me.DGRest.Top = CVar(CDbl(1000))
  loc_1489FD0: var_94 = CVar((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width))) 'Single
  loc_1489FDF: Me.DGGod.Left = CVar(CDbl(1000))
  loc_148A016: Me.DGGod.Top = CVar(CDbl(Me.FGrid.Top))
  loc_148A029: Set var_E4 = Me.FGrid
  loc_148A040: global_104 = CStr(CLng(var_E4.BackColor))
  loc_148A056: var_E4.Cols = &H23
  loc_148A05E: var_94 = CVar(CLng(0)) 'Long
  loc_148A063: var_F8 = &H190
  loc_148A06F: LateIdCallSt
  loc_148A077: var_94 = 0
  loc_148A083: var_F8 = CVar(CLng(&HD)) 'Long
  loc_148A088: var_118 = "KSNo"
  loc_148A091: LateIdCallSt
  loc_148A09C: var_94 = CVar(CLng(&HD)) 'Long
  loc_148A0A1: var_F8 = 0
  loc_148A0AD: LateIdCallSt
  loc_148A0B5: var_94 = 0
  loc_148A0C1: var_F8 = CVar(CLng(1)) 'Long
  loc_148A0C6: var_118 = "Item Code"
  loc_148A0CF: LateIdCallSt
  loc_148A0DA: var_94 = CVar(CLng(1)) 'Long
  loc_148A0E5: var_F8 = CVar(CInt(1)) 'Integer
  loc_148A0EC: LateIdCallSt
  loc_148A0F7: var_94 = CVar(CLng(1)) 'Long
  loc_148A0FC: var_F8 = 0
  loc_148A108: LateIdCallSt
  loc_148A110: var_94 = 0
  loc_148A11C: var_F8 = CVar(CLng(2)) 'Long
  loc_148A121: var_118 = "Item Name"
  loc_148A12A: LateIdCallSt
  loc_148A135: var_94 = CVar(CLng(2)) 'Long
  loc_148A140: var_F8 = CVar(CInt(1)) 'Integer
  loc_148A147: LateIdCallSt
  loc_148A152: var_94 = CVar(CLng(2)) 'Long
  loc_148A157: var_F8 = &HC80
  loc_148A163: LateIdCallSt
  loc_148A16B: var_94 = 0
  loc_148A177: var_F8 = CVar(CLng(3)) 'Long
  loc_148A17C: var_118 = "MR.No"
  loc_148A185: LateIdCallSt
  loc_148A190: var_94 = CVar(CLng(3)) 'Long
  loc_148A19B: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A1A2: LateIdCallSt
  loc_148A1AD: var_94 = CVar(CLng(3)) 'Long
  loc_148A1B8: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A1BF: LateIdCallSt
  loc_148A1CA: var_94 = CVar(CLng(3)) 'Long
  loc_148A1CF: var_F8 = 0
  loc_148A1DB: LateIdCallSt
  loc_148A1E3: var_94 = 0
  loc_148A1EF: var_F8 = CVar(CLng(4)) 'Long
  loc_148A1F4: var_118 = "Unit"
  loc_148A1FD: LateIdCallSt
  loc_148A208: var_94 = CVar(CLng(4)) 'Long
  loc_148A213: var_F8 = CVar(CInt(1)) 'Integer
  loc_148A21A: LateIdCallSt
  loc_148A225: var_94 = CVar(CLng(4)) 'Long
  loc_148A22A: var_F8 = 0
  loc_148A236: LateIdCallSt
  loc_148A23E: var_94 = 0
  loc_148A24A: var_F8 = CVar(CLng(5)) 'Long
  loc_148A24F: var_118 = "Qty"
  loc_148A258: LateIdCallSt
  loc_148A263: var_94 = CVar(CLng(5)) 'Long
  loc_148A26E: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A275: LateIdCallSt
  loc_148A280: var_94 = CVar(CLng(5)) 'Long
  loc_148A28B: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A292: LateIdCallSt
  loc_148A29D: var_94 = CVar(CLng(5)) 'Long
  loc_148A2A2: var_F8 = &H384
  loc_148A2AE: LateIdCallSt
  loc_148A2B6: var_94 = 0
  loc_148A2C2: var_F8 = CVar(CLng(6)) 'Long
  loc_148A2C7: var_118 = "Con.Ratio"
  loc_148A2D0: LateIdCallSt
  loc_148A2DB: var_94 = CVar(CLng(6)) 'Long
  loc_148A2E6: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A2ED: LateIdCallSt
  loc_148A2F8: var_94 = CVar(CLng(6)) 'Long
  loc_148A303: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A30A: LateIdCallSt
  loc_148A315: var_94 = CVar(CLng(6)) 'Long
  loc_148A31A: var_F8 = 0
  loc_148A326: LateIdCallSt
  loc_148A32E: var_94 = 0
  loc_148A33A: var_F8 = CVar(CLng(7)) 'Long
  loc_148A33F: var_118 = "Wt Qty"
  loc_148A348: LateIdCallSt
  loc_148A353: var_94 = CVar(CLng(7)) 'Long
  loc_148A35E: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A365: LateIdCallSt
  loc_148A370: var_94 = CVar(CLng(7)) 'Long
  loc_148A37B: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A382: LateIdCallSt
  loc_148A38D: var_94 = CVar(CLng(7)) 'Long
  loc_148A392: var_F8 = 0
  loc_148A39E: LateIdCallSt
  loc_148A3A6: var_94 = 0
  loc_148A3B2: var_F8 = CVar(CLng(8)) 'Long
  loc_148A3B7: var_118 = "Wt.Unit"
  loc_148A3C0: LateIdCallSt
  loc_148A3CB: var_94 = CVar(CLng(8)) 'Long
  loc_148A3D6: var_F8 = CVar(CInt(1)) 'Integer
  loc_148A3DD: LateIdCallSt
  loc_148A3E8: var_94 = CVar(CLng(8)) 'Long
  loc_148A3ED: var_F8 = 0
  loc_148A3F9: LateIdCallSt
  loc_148A401: var_94 = 0
  loc_148A40D: var_F8 = CVar(CLng(9)) 'Long
  loc_148A412: var_118 = "Rate"
  loc_148A41B: LateIdCallSt
  loc_148A426: var_94 = CVar(CLng(9)) 'Long
  loc_148A431: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A438: LateIdCallSt
  loc_148A443: var_94 = CVar(CLng(9)) 'Long
  loc_148A44E: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A455: LateIdCallSt
  loc_148A460: var_94 = CVar(CLng(9)) 'Long
  loc_148A465: var_F8 = &H4B0
  loc_148A471: LateIdCallSt
  loc_148A479: var_94 = 0
  loc_148A485: var_F8 = CVar(CLng(&HA)) 'Long
  loc_148A48A: var_118 = "Rate1"
  loc_148A493: LateIdCallSt
  loc_148A49E: var_94 = CVar(CLng(&HA)) 'Long
  loc_148A4A9: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A4B0: LateIdCallSt
  loc_148A4BB: var_94 = CVar(CLng(&HA)) 'Long
  loc_148A4C6: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A4CD: LateIdCallSt
  loc_148A4D8: var_94 = CVar(CLng(&HA)) 'Long
  loc_148A4DD: var_F8 = 0
  loc_148A4E9: LateIdCallSt
  loc_148A4F1: var_94 = 0
  loc_148A4FD: var_F8 = CVar(CLng(&HB)) 'Long
  loc_148A502: var_118 = "Amount"
  loc_148A50B: LateIdCallSt
  loc_148A516: var_94 = CVar(CLng(&HB)) 'Long
  loc_148A521: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A528: LateIdCallSt
  loc_148A533: var_94 = CVar(CLng(&HB)) 'Long
  loc_148A53E: var_F8 = CVar(CInt(7)) 'Integer
  loc_148A545: LateIdCallSt
  loc_148A550: var_94 = CVar(CLng(&HB)) 'Long
  loc_148A555: var_F8 = &H44C
  loc_148A561: LateIdCallSt
  loc_148A56C: var_94 = CVar(CLng(&HE)) 'Long
  loc_148A571: var_F8 = 0
  loc_148A57D: LateIdCallSt
  loc_148A588: var_94 = CVar(CLng(&HC)) 'Long
  loc_148A58D: var_F8 = 0
  loc_148A599: LateIdCallSt
  loc_148A5A4: var_94 = CVar(CLng(&HF)) 'Long
  loc_148A5A9: var_F8 = 0
  loc_148A5B5: LateIdCallSt
  loc_148A5C0: var_94 = CVar(CLng(&H10)) 'Long
  loc_148A5C5: var_F8 = 0
  loc_148A5D1: LateIdCallSt
  loc_148A5DC: var_94 = CVar(CLng(&H11)) 'Long
  loc_148A5E1: var_F8 = 0
  loc_148A5ED: LateIdCallSt
  loc_148A5F8: var_94 = CVar(CLng(&H12)) 'Long
  loc_148A5FD: var_F8 = 0
  loc_148A609: LateIdCallSt
  loc_148A614: var_94 = CVar(CLng(&H13)) 'Long
  loc_148A619: var_F8 = 0
  loc_148A625: LateIdCallSt
  loc_148A630: var_94 = CVar(CLng(&H15)) 'Long
  loc_148A635: var_F8 = 0
  loc_148A641: LateIdCallSt
  loc_148A64C: var_94 = CVar(CLng(&H14)) 'Long
  loc_148A651: var_F8 = 0
  loc_148A65D: LateIdCallSt
  loc_148A668: var_94 = CVar(CLng(&H19)) 'Long
  loc_148A66D: var_F8 = &H578
  loc_148A679: LateIdCallSt
  loc_148A684: var_94 = CVar(CLng(&H1A)) 'Long
  loc_148A689: var_F8 = 0
  loc_148A695: LateIdCallSt
  loc_148A6A0: var_94 = CVar(CLng(&H1B)) 'Long
  loc_148A6A5: var_F8 = &HBB8
  loc_148A6B1: LateIdCallSt
  loc_148A6BC: var_94 = CVar(CLng(&H1C)) 'Long
  loc_148A6C1: var_F8 = 0
  loc_148A6CD: LateIdCallSt
  loc_148A6D8: var_94 = CVar(CLng(&H1D)) 'Long
  loc_148A6DD: var_F8 = 0
  loc_148A6E9: LateIdCallSt
  loc_148A6F4: var_94 = CVar(CLng(&H1E)) 'Long
  loc_148A6F9: var_F8 = 0
  loc_148A705: LateIdCallSt
  loc_148A70D: var_94 = 0
  loc_148A719: var_F8 = CVar(CLng(&HC)) 'Long
  loc_148A71E: var_118 = "Item Code"
  loc_148A727: LateIdCallSt
  loc_148A72F: var_94 = 0
  loc_148A73B: var_F8 = CVar(CLng(&HF)) 'Long
  loc_148A740: var_118 = "Disc %"
  loc_148A749: LateIdCallSt
  loc_148A751: var_94 = 0
  loc_148A75D: var_F8 = CVar(CLng(&H10)) 'Long
  loc_148A762: var_118 = "Disc Amt."
  loc_148A76B: LateIdCallSt
  loc_148A773: var_94 = 0
  loc_148A77F: var_F8 = CVar(CLng(&H11)) 'Long
  loc_148A784: var_118 = "Tax %"
  loc_148A78D: LateIdCallSt
  loc_148A795: var_94 = 0
  loc_148A7A1: var_F8 = CVar(CLng(&H12)) 'Long
  loc_148A7A6: var_118 = "Tax Amt"
  loc_148A7AF: LateIdCallSt
  loc_148A7B7: var_94 = 0
  loc_148A7C3: var_F8 = CVar(CLng(&H13)) 'Long
  loc_148A7C8: var_118 = "Total"
  loc_148A7D1: LateIdCallSt
  loc_148A7D9: var_94 = 0
  loc_148A7E5: var_F8 = CVar(CLng(&H15)) 'Long
  loc_148A7EA: var_118 = "R Off"
  loc_148A7F3: LateIdCallSt
  loc_148A7FB: var_94 = 0
  loc_148A807: var_F8 = CVar(CLng(&H14)) 'Long
  loc_148A80C: var_118 = "Disc Y/N"
  loc_148A815: LateIdCallSt
  loc_148A81D: var_94 = 0
  loc_148A829: var_F8 = CVar(CLng(&H19)) 'Long
  loc_148A82E: var_118 = "Tax Structure"
  loc_148A837: LateIdCallSt
  loc_148A83F: var_94 = 0
  loc_148A84B: var_F8 = CVar(CLng(&H1A)) 'Long
  loc_148A850: var_118 = "Tax Cat Code"
  loc_148A859: LateIdCallSt
  loc_148A861: var_94 = 0
  loc_148A86D: var_F8 = CVar(CLng(&H1B)) 'Long
  loc_148A872: var_118 = "A/C Name"
  loc_148A87B: LateIdCallSt
  loc_148A883: var_94 = 0
  loc_148A88F: var_F8 = CVar(CLng(&H1C)) 'Long
  loc_148A894: var_118 = "A/C Code"
  loc_148A89D: LateIdCallSt
  loc_148A8A5: var_94 = 0
  loc_148A8B1: var_F8 = CVar(CLng(&H16)) 'Long
  loc_148A8B6: var_118 = "Godown"
  loc_148A8BF: LateIdCallSt
  loc_148A8CA: var_94 = CVar(CLng(&H16)) 'Long
  loc_148A8D5: var_F8 = CVar(CInt(1)) 'Integer
  loc_148A8DC: LateIdCallSt
  loc_148A8E7: var_94 = CVar(CLng(&H16)) 'Long
  loc_148A8F2: var_F8 = CVar(CInt(1)) 'Integer
  loc_148A8F9: LateIdCallSt
  loc_148A904: var_94 = CVar(CLng(&H16)) 'Long
  loc_148A909: var_F8 = 0
  loc_148A915: LateIdCallSt
  loc_148A920: var_94 = CVar(CLng(&H17)) 'Long
  loc_148A925: var_F8 = 0
  loc_148A931: LateIdCallSt
  loc_148A93C: var_94 = CVar(CLng(&H18)) 'Long
  loc_148A941: var_F8 = 0
  loc_148A94D: LateIdCallSt
  loc_148A958: var_94 = CVar(CLng(&H1F)) 'Long
  loc_148A95D: var_F8 = 0
  loc_148A969: LateIdCallSt
  loc_148A974: var_94 = CVar(CLng(&H20)) 'Long
  loc_148A979: var_F8 = 0
  loc_148A985: LateIdCallSt
  loc_148A990: var_94 = CVar(CLng(&H21)) 'Long
  loc_148A995: var_F8 = 0
  loc_148A9A1: LateIdCallSt
  loc_148A9AC: var_94 = CVar(CLng(&H22)) 'Long
  loc_148A9B1: var_F8 = 0
  loc_148A9BD: LateIdCallSt
  loc_148A9C7: Set var_E4 = Nothing 
  loc_148A9CF: Set var_12C = Me.FGCat
  loc_148A9E6: global_104 = CStr(CLng(var_12C.BackColor))
  loc_148A9F3: var_94 = CVar(CLng(3)) 'Long
  loc_148A9F8: var_F8 = &H7D0
  loc_148AA04: LateIdCallSt
  loc_148AA18: var_12C.Cols = 7
  loc_148AA1F: Set var_12C = Nothing 
  loc_148AA23: Exit Sub
End Sub

Public Sub Proc_338_88_F70AAC
  'Data Table: 598674
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_F70970: Set var_88 = Me.TopCtrl1
  loc_F70976: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_F7098F: If (CStr() = "Browse") Then
  loc_F70992:   Exit Sub
  loc_F70993: End If
  loc_F709D2: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(9))) Then
  loc_F709E8:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F709F0:   var_E0 = CVar(CLng(&HE)) 'Long
  loc_F70A23:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_F70A2F:     Call FGrid_UnknownEvent_C()
  loc_F70A39:     global_146 = 0
  loc_F70A3F:   Else
  loc_F70A52:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F70A5A:     var_E0 = CVar(CLng(9)) 'Long
  loc_F70A92:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_F70A9E:       Call FGrid_UnknownEvent_C()
  loc_F70AA8:       global_146 = 0
  loc_F70AAB:     End If
  loc_F70AAB:   End If
  loc_F70AAB: End If
  loc_F70AAB: Exit Sub
End Sub

Public Sub Proc_338_89_1ADEDC8(arg_C) '1ADEDC8
  'Data Table: 598674
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_E0 As Double
  Dim var_C4 As String
  Dim var_D8 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_C0 As String
  Dim var_148 As MSHFlexGrid
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_17C As Variant
  Dim var_18C As Variant
  Dim var_190 As MSHFlexGrid
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_1E4 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_92 As Integer
  Dim var_134 As Variant
  Dim unk_598691 As Connection15
  Dim var_98 As Recordset15
  Dim var_24C As Double
  Dim var_204 As Variant
  loc_1ADAC44: If (arg_C = 0) Then
  loc_1ADAC6A:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1ADAC84:     If (Me.RecordCount > 0) Then
  loc_1ADAC8D:       Me.MoveFirst
  loc_1ADAC92:     End If
  loc_1ADACA9:     If (Me.RecordCount > 0) Then
  loc_1ADACB8:       Set var_A0 = Me.TxtGrid
  loc_1ADACBE:       Call 0.Method_Proc_338_89_1ADEDC80 (0, var_BC, var_C0)
  loc_1ADACC6:       var_B4 = var_BC.Text
  loc_1ADACD3:       var_E0 = Val(var_C0)
  loc_1ADACF9:       Me.Find "DispCode=" & CStr(var_E0), 0, 1
  loc_1ADAD0E:     End If
  loc_1ADAD5C:     Set var_A0 = Me.TxtGrid
  loc_1ADAD62:     Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1ADAD6A:     var_D8 = var_BC.Text
  loc_1ADAD82:     If (var_E0 Or (var_C0 = vbNullString)) Then
  loc_1ADAD98:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADADA0:       var_104 = CVar(CLng(2)) 'Long
  loc_1ADADA5:       var_124 = vbNullString
  loc_1ADADAF:       Set var_BC = Me.FGrid
  loc_1ADADB5:       LateIdCallSt
  loc_1ADADDA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADADE2:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1ADADE7:       var_124 = vbNullString
  loc_1ADADF1:       Set var_BC = Me.FGrid
  loc_1ADADF7:       LateIdCallSt
  loc_1ADAE1C:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADAE24:       var_104 = CVar(CLng(1)) 'Long
  loc_1ADAE29:       var_124 = vbNullString
  loc_1ADAE33:       Set var_BC = Me.FGrid
  loc_1ADAE39:       LateIdCallSt
  loc_1ADAE5E:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADAE66:       var_104 = CVar(CLng(4)) 'Long
  loc_1ADAE6B:       var_124 = vbNullString
  loc_1ADAE75:       Set var_BC = Me.FGrid
  loc_1ADAE7B:       LateIdCallSt
  loc_1ADAEA0:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADAEA8:       var_104 = CVar(CLng(1)) 'Long
  loc_1ADAEAD:       var_124 = vbNullString
  loc_1ADAEB7:       Set var_BC = Me.FGrid
  loc_1ADAEBD:       LateIdCallSt
  loc_1ADAEE2:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADAEEA:       var_104 = CVar(CLng(9)) 'Long
  loc_1ADAEEF:       var_124 = vbNullString
  loc_1ADAEF9:       Set var_BC = Me.FGrid
  loc_1ADAEFF:       LateIdCallSt
  loc_1ADAF24:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADAF2C:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1ADAF31:       var_124 = vbNullString
  loc_1ADAF3B:       Set var_BC = Me.FGrid
  loc_1ADAF41:       LateIdCallSt
  loc_1ADAF66:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADAF6E:       var_104 = CVar(CLng(&H18)) 'Long
  loc_1ADAF73:       var_124 = vbNullString
  loc_1ADAF7D:       Set var_BC = Me.FGrid
  loc_1ADAF83:       LateIdCallSt
  loc_1ADAFA8:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADAFB0:       var_104 = CVar(CLng(&H14)) 'Long
  loc_1ADAFB5:       var_124 = vbNullString
  loc_1ADAFBF:       Set var_BC = Me.FGrid
  loc_1ADAFC5:       LateIdCallSt
  loc_1ADAFEA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADAFF2:       var_104 = CVar(CLng(&H15)) 'Long
  loc_1ADAFF7:       var_124 = vbNullString
  loc_1ADB001:       Set var_BC = Me.FGrid
  loc_1ADB007:       LateIdCallSt
  loc_1ADB02C:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB034:       var_104 = CVar(CLng(&H1A)) 'Long
  loc_1ADB039:       var_124 = vbNullString
  loc_1ADB043:       Set var_BC = Me.FGrid
  loc_1ADB049:       LateIdCallSt
  loc_1ADB06E:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB076:       var_104 = CVar(CLng(&H19)) 'Long
  loc_1ADB07B:       var_124 = vbNullString
  loc_1ADB085:       Set var_BC = Me.FGrid
  loc_1ADB08B:       LateIdCallSt
  loc_1ADB0B0:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB0B8:       var_104 = CVar(CLng(&H1C)) 'Long
  loc_1ADB0BD:       var_124 = vbNullString
  loc_1ADB0C7:       Set var_BC = Me.FGrid
  loc_1ADB0CD:       LateIdCallSt
  loc_1ADB0F2:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB0FA:       var_104 = CVar(CLng(&H1B)) 'Long
  loc_1ADB0FF:       var_124 = vbNullString
  loc_1ADB109:       Set var_BC = Me.FGrid
  loc_1ADB10F:       LateIdCallSt
  loc_1ADB134:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB13C:       var_104 = CVar(CLng(&H1E)) 'Long
  loc_1ADB141:       var_124 = vbNullString
  loc_1ADB14B:       Set var_BC = Me.FGrid
  loc_1ADB151:       LateIdCallSt
  loc_1ADB166:     Else
  loc_1ADB17F:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB187:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1ADB1A1:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADB1BF:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB1C7:       var_168 = CVar(CLng(&HC)) 'Long
  loc_1ADB1E1:       var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1ADB24C:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HC)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1ADB262:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB26A:         var_114 = CVar(CLng(2)) 'Long
  loc_1ADB29D:         var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1ADB2A5:         Set var_17C = Me.FGrid
  loc_1ADB2AB:         LateIdCallSt
  loc_1ADB2DA:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB2E2:         var_114 = CVar(CLng(&HC)) 'Long
  loc_1ADB315:         var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1ADB31D:         Set var_17C = Me.FGrid
  loc_1ADB323:         LateIdCallSt
  loc_1ADB352:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB35A:         var_114 = CVar(CLng(1)) 'Long
  loc_1ADB38D:         var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1ADB395:         Set var_17C = Me.FGrid
  loc_1ADB39B:         LateIdCallSt
  loc_1ADB3CA:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB3D2:         var_114 = CVar(CLng(4)) 'Long
  loc_1ADB405:         var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1ADB40D:         Set var_17C = Me.FGrid
  loc_1ADB413:         LateIdCallSt
  loc_1ADB442:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB44A:         var_114 = CVar(CLng(8)) 'Long
  loc_1ADB47D:         var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1ADB485:         Set var_17C = Me.FGrid
  loc_1ADB48B:         LateIdCallSt
  loc_1ADB4BB:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADB4C8:         var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADB4D0:         var_104 = CVar(CLng(0)) 'Long
  loc_1ADB4DA:         var_B0 = CVar(CStr(var_92)) 'String
  loc_1ADB4E2:         Set var_A0 = Me.FGrid
  loc_1ADB4E8:         LateIdCallSt
  loc_1ADB4FA:         var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADB502:         var_104 = CVar(CLng(5)) 'Long
  loc_1ADB51C:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADB532:         If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1ADB539:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADB541:           var_104 = CVar(CLng(5)) 'Long
  loc_1ADB546:           var_124 = "1.000"
  loc_1ADB550:           Set var_A0 = Me.FGrid
  loc_1ADB556:           LateIdCallSt
  loc_1ADB561:         End If
  loc_1ADB567:         var_D8 = "Code"
  loc_1ADB576:         var_A0 = Me.Fields
  loc_1ADB599:         Set var_148 = Me.Txt
  loc_1ADB59F:         Call 0.Method_Proc_338_89_1ADEDC80 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1ADB5A7:         var_104 = var_17C.Text
  loc_1ADB5BE:         Call Proc_338_106_1063980(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1ADB5DE:         var_134 = CVar(CLng(9)) 'Long
  loc_1ADB619:         LateIdCallSt
  loc_1ADB663:         var_BC = Me.Fields.Item("Code")
  loc_1ADB67E:         Set var_148 = Me.Txt
  loc_1ADB684:         Call 0.Method_Proc_338_89_1ADEDC80 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1ADB68C:         var_134 = var_17C.Text
  loc_1ADB6A3:         Call Proc_338_106_1063980(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1ADB6BB:         var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADB6C3:         var_134 = CVar(CLng(&HA)) 'Long
  loc_1ADB6F0:         var_1F4 = CVar(CStr(Format(CVar(var_E0), "0.00000"))) 'String
  loc_1ADB6F8:         Set var_1E4 = Me.FGrid
  loc_1ADB6FE:         LateIdCallSt
  loc_1ADB72B:       End If
  loc_1ADB759:       Set var_A0 = Me.Txt
  loc_1ADB75F:       Call 0.Method_Proc_338_89_1ADEDC80 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), var_1E4, var_1F4)
  loc_1ADB767:       1 = var_BC.Tag
  loc_1ADB76F:       var_144 = CVar(var_C0) 'String
  loc_1ADB77D:       LateIdCallSt
  loc_1ADB7A1:       var_144 = Me.FGrid.Row
  loc_1ADB7E2:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1ADB7F0:       LateIdCallSt
  loc_1ADB855:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADB863:       LateIdCallSt
  loc_1ADB8C8:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADB8D6:       LateIdCallSt
  loc_1ADB93B:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADB949:       LateIdCallSt
  loc_1ADB9AE:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADB9BC:       LateIdCallSt
  loc_1ADBA21:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADBA2F:       LateIdCallSt
  loc_1ADBA4D:       Set var_148 = Me.FGrid
  loc_1ADBA94:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_148.Row)), Me.FGrid, var_158)) 'String
  loc_1ADBA9C:       Set var_17C = Me.FGrid
  loc_1ADBAA2:       LateIdCallSt
  loc_1ADBACF:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBAD7:       var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADBAE6:       var_144 = Me.FGrid.TextMatrix)
  loc_1ADBB19:       If (Trim(CVar(CStr(var_144))) = vbNullString) Then
  loc_1ADBB2F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBB37:         var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADBB4A:         Set var_BC = Me.FGrid
  loc_1ADBB50:         LateIdCallSt
  loc_1ADBB75:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBB7D:         var_104 = CVar(CLng(&H16)) 'Long
  loc_1ADBB90:         Set var_BC = Me.FGrid
  loc_1ADBB96:         LateIdCallSt
  loc_1ADBBA8:       End If
  loc_1ADBBBB:       var_D8 = "TaxStru"
  loc_1ADBBD2:       var_BC = Me.Fields.Item(var_D8)
  loc_1ADBBE3:       var_C0 = Proc_6_38_E68A98(CVar(var_BC), "Select * from taxStru where code='", var_144, -1, var_148, var_BC, global_228)
  loc_1ADBBE7:       var_C4 = var_104 & var_C0
  loc_1ADBBF7:       unk_598691.Execute var_C4 & "'", var_D8, var_BC
  loc_1ADBC02:       Set var_98 = var_148
  loc_1ADBC30:       If (var_98.RecordCount > 0) Then
  loc_1ADBC6A:         var_BC = var_98.Fields.Item("Rate")
  loc_1ADBC79:         Proc_6_39_E7C810(var_144, CVar(var_BC), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1ADBC82:         var_18C = CVar(CStr(var_144)) 'String
  loc_1ADBC8A:         Set var_17C = Me.FGrid
  loc_1ADBC90:         LateIdCallSt
  loc_1ADBCAC:       End If
  loc_1ADBCB1:       Call Proc_338_101_17C5094(&H32, var_17C, var_18C)
  loc_1ADBCB6:     End If
  loc_1ADBCB9:   Else
  loc_1ADBCC0:     If (var_B4 = CLng(2)) Then
  loc_1ADBD11:       Set var_A0 = Me.TxtGrid
  loc_1ADBD17:       Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1ADBD1F:       global_224 = var_BC.Text
  loc_1ADBD37:       If (var_104 Or (var_C0 = vbNullString)) Then
  loc_1ADBD4D:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBD55:         var_104 = CVar(CLng(2)) 'Long
  loc_1ADBD5A:         var_124 = vbNullString
  loc_1ADBD64:         Set var_BC = Me.FGrid
  loc_1ADBD6A:         LateIdCallSt
  loc_1ADBD8F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBD97:         var_104 = CVar(CLng(&HC)) 'Long
  loc_1ADBD9C:         var_124 = vbNullString
  loc_1ADBDA6:         Set var_BC = Me.FGrid
  loc_1ADBDAC:         LateIdCallSt
  loc_1ADBDD1:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBDD9:         var_104 = CVar(CLng(1)) 'Long
  loc_1ADBDDE:         var_124 = vbNullString
  loc_1ADBDE8:         Set var_BC = Me.FGrid
  loc_1ADBDEE:         LateIdCallSt
  loc_1ADBE13:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBE1B:         var_104 = CVar(CLng(4)) 'Long
  loc_1ADBE20:         var_124 = vbNullString
  loc_1ADBE2A:         Set var_BC = Me.FGrid
  loc_1ADBE30:         LateIdCallSt
  loc_1ADBE55:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBE5D:         var_104 = CVar(CLng(1)) 'Long
  loc_1ADBE62:         var_124 = vbNullString
  loc_1ADBE6C:         Set var_BC = Me.FGrid
  loc_1ADBE72:         LateIdCallSt
  loc_1ADBE97:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBE9F:         var_104 = CVar(CLng(9)) 'Long
  loc_1ADBEA4:         var_124 = vbNullString
  loc_1ADBEAE:         Set var_BC = Me.FGrid
  loc_1ADBEB4:         LateIdCallSt
  loc_1ADBED9:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBEE1:         var_104 = CVar(CLng(&HA)) 'Long
  loc_1ADBEE6:         var_124 = vbNullString
  loc_1ADBEF0:         Set var_BC = Me.FGrid
  loc_1ADBEF6:         LateIdCallSt
  loc_1ADBF1B:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBF23:         var_104 = CVar(CLng(&H18)) 'Long
  loc_1ADBF28:         var_124 = vbNullString
  loc_1ADBF32:         Set var_BC = Me.FGrid
  loc_1ADBF38:         LateIdCallSt
  loc_1ADBF5D:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBF65:         var_104 = CVar(CLng(&H1E)) 'Long
  loc_1ADBF6A:         var_124 = vbNullString
  loc_1ADBF74:         Set var_BC = Me.FGrid
  loc_1ADBF7A:         LateIdCallSt
  loc_1ADBF9F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBFA7:         var_104 = CVar(CLng(6)) 'Long
  loc_1ADBFAC:         var_124 = vbNullString
  loc_1ADBFB6:         Set var_BC = Me.FGrid
  loc_1ADBFBC:         LateIdCallSt
  loc_1ADBFE1:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADBFE9:         var_104 = CVar(CLng(&H19)) 'Long
  loc_1ADBFEE:         var_124 = vbNullString
  loc_1ADBFF8:         Set var_BC = Me.FGrid
  loc_1ADBFFE:         LateIdCallSt
  loc_1ADC023:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC02B:         var_104 = CVar(CLng(&H1A)) 'Long
  loc_1ADC030:         var_124 = vbNullString
  loc_1ADC03A:         Set var_BC = Me.FGrid
  loc_1ADC040:         LateIdCallSt
  loc_1ADC065:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC06D:         var_104 = CVar(CLng(&H1B)) 'Long
  loc_1ADC072:         var_124 = vbNullString
  loc_1ADC07C:         Set var_BC = Me.FGrid
  loc_1ADC082:         LateIdCallSt
  loc_1ADC0A7:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC0AF:         var_104 = CVar(CLng(&H1C)) 'Long
  loc_1ADC0B4:         var_124 = vbNullString
  loc_1ADC0BE:         Set var_BC = Me.FGrid
  loc_1ADC0C4:         LateIdCallSt
  loc_1ADC0D9:       Else
  loc_1ADC0E7:         Set var_A0 = Me.Txt
  loc_1ADC0ED:         Call 0.Method_Proc_338_89_1ADEDC80 (CInt(7), var_BC, var_C0, var_BC, var_124, var_104, var_D8)
  loc_1ADC0F5:         var_BC = var_BC.Text
  loc_1ADC111:         If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1ADC128:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADC144:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC14C:           var_114 = CVar(CLng(2)) 'Long
  loc_1ADC17F:           var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1ADC187:           Set var_17C = Me.FGrid
  loc_1ADC18D:           LateIdCallSt
  loc_1ADC1BC:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC1C4:           var_114 = CVar(CLng(&HC)) 'Long
  loc_1ADC1F7:           var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1ADC1FF:           Set var_17C = Me.FGrid
  loc_1ADC205:           LateIdCallSt
  loc_1ADC234:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC23C:           var_114 = CVar(CLng(1)) 'Long
  loc_1ADC26F:           var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1ADC277:           Set var_17C = Me.FGrid
  loc_1ADC27D:           LateIdCallSt
  loc_1ADC2AC:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC2B4:           var_114 = CVar(CLng(4)) 'Long
  loc_1ADC2E7:           var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1ADC2EF:           Set var_17C = Me.FGrid
  loc_1ADC2F5:           LateIdCallSt
  loc_1ADC324:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC32C:           var_114 = CVar(CLng(8)) 'Long
  loc_1ADC35F:           var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1ADC367:           Set var_17C = Me.FGrid
  loc_1ADC36D:           LateIdCallSt
  loc_1ADC3BB:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC3C3:           var_124 = CVar(CLng(6)) 'Long
  loc_1ADC3F0:           var_1A0 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1ADC3F8:           Set var_17C = Me.FGrid
  loc_1ADC3FE:           LateIdCallSt
  loc_1ADC430:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADC43D:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADC445:           var_104 = CVar(CLng(0)) 'Long
  loc_1ADC44F:           var_B0 = CVar(CStr(var_92)) 'String
  loc_1ADC457:           Set var_A0 = Me.FGrid
  loc_1ADC45D:           LateIdCallSt
  loc_1ADC46F:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADC477:           var_104 = CVar(CLng(5)) 'Long
  loc_1ADC491:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADC4A7:           If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1ADC4AE:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADC4B6:             var_104 = CVar(CLng(5)) 'Long
  loc_1ADC4BB:             var_124 = "1.000"
  loc_1ADC4C5:             Set var_A0 = Me.FGrid
  loc_1ADC4CB:             LateIdCallSt
  loc_1ADC4D6:           End If
  loc_1ADC4DC:           var_D8 = "Code"
  loc_1ADC4EB:           var_A0 = Me.Fields
  loc_1ADC50E:           Set var_148 = Me.Txt
  loc_1ADC514:           Call 0.Method_Proc_338_89_1ADEDC80 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1ADC51C:           var_104 = var_17C.Text
  loc_1ADC533:           Call Proc_338_106_1063980(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1ADC553:           var_134 = CVar(CLng(9)) 'Long
  loc_1ADC58E:           LateIdCallSt
  loc_1ADC5D8:           var_BC = Me.Fields.Item("Code")
  loc_1ADC5F3:           Set var_148 = Me.Txt
  loc_1ADC5F9:           Call 0.Method_Proc_338_89_1ADEDC80 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1ADC601:           var_134 = var_17C.Text
  loc_1ADC618:           Call Proc_338_106_1063980(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1ADC630:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADC638:           var_134 = CVar(CLng(&HA)) 'Long
  loc_1ADC673:           LateIdCallSt
  loc_1ADC6CE:           Set var_A0 = Me.Txt
  loc_1ADC6D4:           Call 0.Method_Proc_338_89_1ADEDC80 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))))
  loc_1ADC6DC:           1 = var_BC.Tag
  loc_1ADC6E4:           var_144 = CVar(var_C0) 'String
  loc_1ADC6F2:           LateIdCallSt
  loc_1ADC716:           var_144 = Me.FGrid.Row
  loc_1ADC757:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1ADC765:           LateIdCallSt
  loc_1ADC7CA:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADC7D8:           LateIdCallSt
  loc_1ADC83D:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADC84B:           LateIdCallSt
  loc_1ADC8B0:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADC8BE:           LateIdCallSt
  loc_1ADC923:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADC931:           LateIdCallSt
  loc_1ADC996:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADC9A4:           LateIdCallSt
  loc_1ADCA09:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADCA11:           Set var_17C = Me.FGrid
  loc_1ADCA17:           LateIdCallSt
  loc_1ADCA44:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADCA4C:           var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADCA8E:           If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1ADCAA4:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADCAAC:             var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADCABF:             Set var_BC = Me.FGrid
  loc_1ADCAC5:             LateIdCallSt
  loc_1ADCAEA:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADCAF2:             var_104 = CVar(CLng(&H16)) 'Long
  loc_1ADCB05:             Set var_BC = Me.FGrid
  loc_1ADCB0B:             LateIdCallSt
  loc_1ADCB1D:           End If
  loc_1ADCB21:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADCB29:           var_104 = CVar(CLng(5)) 'Long
  loc_1ADCB4B:           var_E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ADCB61:           var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADCB69:           var_168 = CVar(CLng(&HA)) 'Long
  loc_1ADCB8B:           var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ADCBE8:           LateIdCallSt
  loc_1ADCC62:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar((var_E0 * var_24C)), "0.00"))), 1, 1)) 'String
  loc_1ADCC70:           LateIdCallSt
  loc_1ADCCD5:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158, CVar(CLng(&HB)))) 'String
  loc_1ADCCE3:           LateIdCallSt
  loc_1ADCD48:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADCD56:           LateIdCallSt
  loc_1ADCD74:           Set var_148 = Me.FGrid
  loc_1ADCD7A:           var_144 = var_148.Row
  loc_1ADCDBB:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_144)), Me.FGrid, var_158)) 'String
  loc_1ADCDC9:           LateIdCallSt
  loc_1ADCE1E:           var_C0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_144, -1, var_148, Me.FGrid)
  loc_1ADCE32:           unk_598691.Execute var_158 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid.Row)), var_24C
  loc_1ADCE3D:           Set var_98 = var_148
  loc_1ADCE6B:           If (var_98.RecordCount > 0) Then
  loc_1ADCEB4:             Proc_6_39_E7C810(var_144, CVar(var_98.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1ADCEBD:             var_18C = CVar(CStr(var_144)) 'String
  loc_1ADCEC5:             Set var_17C = Me.FGrid
  loc_1ADCECB:             LateIdCallSt
  loc_1ADCEE7:           End If
  loc_1ADCEEC:           Call Proc_338_101_17C5094(&H32, var_17C, var_18C)
  loc_1ADCEF4:         Else
  loc_1ADCF0D:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADCF15:           var_104 = CVar(CLng(&HC)) 'Long
  loc_1ADCF2F:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADCF6F:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1ADCFB6:           Set var_250 = Me.TopCtrl1
  loc_1ADCFBC:           Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005((CVar(CLng(&HC)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)))
  loc_1ADCFFB:           If (CVar(CLng(Me.FGrid.Row)) Or ((CVar(CLng(&HC)) = var_C4) And (CStr(CVar(CLng(Me.FGrid.Row))) = "Add"))) Then
  loc_1ADD012:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADD02E:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD036:             var_114 = CVar(CLng(2)) 'Long
  loc_1ADD069:             var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1ADD071:             Set var_17C = Me.FGrid
  loc_1ADD077:             LateIdCallSt
  loc_1ADD0A6:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD0AE:             var_114 = CVar(CLng(&HC)) 'Long
  loc_1ADD0E1:             var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1ADD0E9:             Set var_17C = Me.FGrid
  loc_1ADD0EF:             LateIdCallSt
  loc_1ADD11E:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD126:             var_114 = CVar(CLng(1)) 'Long
  loc_1ADD159:             var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1ADD161:             Set var_17C = Me.FGrid
  loc_1ADD167:             LateIdCallSt
  loc_1ADD196:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD19E:             var_114 = CVar(CLng(4)) 'Long
  loc_1ADD1D1:             var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1ADD1D9:             Set var_17C = Me.FGrid
  loc_1ADD1DF:             LateIdCallSt
  loc_1ADD20E:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD216:             var_114 = CVar(CLng(8)) 'Long
  loc_1ADD249:             var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1ADD251:             Set var_17C = Me.FGrid
  loc_1ADD257:             LateIdCallSt
  loc_1ADD2A5:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD2AD:             var_124 = CVar(CLng(6)) 'Long
  loc_1ADD2DA:             var_1A0 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1ADD2E2:             Set var_17C = Me.FGrid
  loc_1ADD2E8:             LateIdCallSt
  loc_1ADD31A:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1ADD327:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADD32F:             var_104 = CVar(CLng(0)) 'Long
  loc_1ADD339:             var_B0 = CVar(CStr(var_92)) 'String
  loc_1ADD341:             Set var_A0 = Me.FGrid
  loc_1ADD347:             LateIdCallSt
  loc_1ADD359:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADD361:             var_104 = CVar(CLng(5)) 'Long
  loc_1ADD37B:             var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1ADD391:             If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1ADD398:               var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADD3A0:               var_104 = CVar(CLng(5)) 'Long
  loc_1ADD3A5:               var_124 = "1.000"
  loc_1ADD3AF:               Set var_A0 = Me.FGrid
  loc_1ADD3B5:               LateIdCallSt
  loc_1ADD3C0:             End If
  loc_1ADD3C6:             var_D8 = "Code"
  loc_1ADD3D5:             var_A0 = Me.Fields
  loc_1ADD3F8:             Set var_148 = Me.Txt
  loc_1ADD3FE:             Call 0.Method_Proc_338_89_1ADEDC80 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1ADD406:             var_104 = var_17C.Text
  loc_1ADD41D:             Call Proc_338_106_1063980(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1ADD43D:             var_134 = CVar(CLng(9)) 'Long
  loc_1ADD478:             LateIdCallSt
  loc_1ADD4C2:             var_BC = Me.Fields.Item("Code")
  loc_1ADD4DD:             Set var_148 = Me.Txt
  loc_1ADD4E3:             Call 0.Method_Proc_338_89_1ADEDC80 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1ADD4EB:             var_134 = var_17C.Text
  loc_1ADD502:             Call Proc_338_106_1063980(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1ADD51A:             var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD522:             var_134 = CVar(CLng(&HA)) 'Long
  loc_1ADD55D:             LateIdCallSt
  loc_1ADD5B8:             Set var_A0 = Me.Txt
  loc_1ADD5BE:             Call 0.Method_Proc_338_89_1ADEDC80 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))))
  loc_1ADD5C6:             1 = var_BC.Tag
  loc_1ADD5CE:             var_144 = CVar(var_C0) 'String
  loc_1ADD5DC:             LateIdCallSt
  loc_1ADD600:             var_144 = Me.FGrid.Row
  loc_1ADD641:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1ADD64F:             LateIdCallSt
  loc_1ADD6B4:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADD6C2:             LateIdCallSt
  loc_1ADD727:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADD735:             LateIdCallSt
  loc_1ADD79A:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADD7A8:             LateIdCallSt
  loc_1ADD80D:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADD81B:             LateIdCallSt
  loc_1ADD880:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADD88E:             LateIdCallSt
  loc_1ADD8F3:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADD8FB:             Set var_17C = Me.FGrid
  loc_1ADD901:             LateIdCallSt
  loc_1ADD92E:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD936:             var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADD978:             If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1ADD98E:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD996:               var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADD9A9:               Set var_BC = Me.FGrid
  loc_1ADD9AF:               LateIdCallSt
  loc_1ADD9D4:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADD9DC:               var_104 = CVar(CLng(&H16)) 'Long
  loc_1ADD9EF:               Set var_BC = Me.FGrid
  loc_1ADD9F5:               LateIdCallSt
  loc_1ADDA07:             End If
  loc_1ADDA0B:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1ADDA13:             var_104 = CVar(CLng(5)) 'Long
  loc_1ADDA4B:             var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDA53:             var_168 = CVar(CLng(&HA)) 'Long
  loc_1ADDA75:             var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ADDAD2:             LateIdCallSt
  loc_1ADDB4C:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_24C)), "0.00"))), 1, 1)) 'String
  loc_1ADDB5A:             LateIdCallSt
  loc_1ADDBBF:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158, CVar(CLng(&HB)))) 'String
  loc_1ADDBCD:             LateIdCallSt
  loc_1ADDC32:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1ADDC40:             LateIdCallSt
  loc_1ADDC5E:             Set var_148 = Me.FGrid
  loc_1ADDC64:             var_144 = var_148.Row
  loc_1ADDCA5:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_144)), Me.FGrid, var_158)) 'String
  loc_1ADDCB3:             LateIdCallSt
  loc_1ADDD08:             var_C0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_144, -1, var_148, Me.FGrid)
  loc_1ADDD0C:             var_C4 = var_158 & CStr(Me.FGrid.TextMatrix))
  loc_1ADDD1C:             unk_598691.Execute var_C4 & "'", CVar(CLng(Me.FGrid.Row)), var_24C
  loc_1ADDD27:             Set var_98 = var_148
  loc_1ADDD55:             If (var_98.RecordCount > 0) Then
  loc_1ADDD8F:               var_BC = var_98.Fields.Item("Rate")
  loc_1ADDD9E:               Proc_6_39_E7C810(var_144, CVar(var_BC), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1ADDDA7:               var_18C = CVar(CStr(var_144)) 'String
  loc_1ADDDAF:               Set var_17C = Me.FGrid
  loc_1ADDDB5:               LateIdCallSt
  loc_1ADDDD1:             End If
  loc_1ADDDD6:             Call Proc_338_101_17C5094(&H32, var_17C, var_18C)
  loc_1ADDDDB:           End If
  loc_1ADDDDB:         End If
  loc_1ADDDDB:       End If
  loc_1ADDDDE:     Else
  loc_1ADDDE5:       If Not (var_B4 = CLng(5)) Then
  loc_1ADDDEF:         If (var_B4 = CLng(6)) Then
  loc_1ADDDF2:         End If
  loc_1ADDDFC:         Set var_A0 = Me.TxtGrid
  loc_1ADDE02:         Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_168)
  loc_1ADDE1A:         If Not(IsNumeric(CVar(var_BC))) Then
  loc_1ADDE2E:           Set var_A0 = Me.TxtGrid
  loc_1ADDE34:           Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, CStr(0))
  loc_1ADDE3C:           var_BC.Text = var_124
  loc_1ADDE4B:         End If
  loc_1ADDE55:         var_158 = Me.FGrid.Row
  loc_1ADDE5E:         var_124 = CVar(CLng(var_158)) 'Long
  loc_1ADDE66:         var_168 = CVar(CLng(&H22)) 'Long
  loc_1ADDE75:         var_18C = Me.FGrid.TextMatrix)
  loc_1ADDE9E:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADDEAF:         Set var_BC = Me.FGrid
  loc_1ADDEB5:         var_144 = var_BC.TextMatrix)
  loc_1ADDEC0:         var_C0 = CStr(var_144)
  loc_1ADDED9:         Set var_148 = Me.TxtGrid
  loc_1ADDEDF:         Call 0.Method_Proc_338_89_1ADEDC80 (0, var_17C, var_C4, (CDbl(Val(var_C0)) > CDbl(0)), CVar(CLng(&H22)))
  loc_1ADDEE7:         var_D8 = var_17C.Text
  loc_1ADDF1E:         If (Val(CStr(var_18C)) And (CDbl(Val(var_C4)) > CDbl(Val(CStr(var_18C))))) Then
  loc_1ADDF3A:           MsgBox("Quantity Can't be greater the MRN Quantity ", 0, var_144, var_158, var_18C)
  loc_1ADDF4F:           Proc_338_89_1ADEDC8 = 0
  loc_1ADDF55:         End If
  loc_1ADDF72:         If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_1ADDF81:           Set var_A0 = Me.TxtGrid
  loc_1ADDF87:           Call 0.Method_Proc_338_89_1ADEDC80 (0, var_BC, var_C0)
  loc_1ADDF8F:           var_168 = var_BC.Text
  loc_1ADDF9C:           var_E0 = Val(var_C0)
  loc_1ADDFB4:           If (global_200 <> CDbl(var_E0)) Then
  loc_1ADDFE6:             If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_144, var_158, var_18C) = 7) Then
  loc_1ADDFF1:               var_C0 = CStr(global_200)
  loc_1ADDFFD:               Set var_A0 = Me.TxtGrid
  loc_1ADE003:               Call 0.Method_Proc_338_89_1ADEDC80 (0, var_BC, var_C0)
  loc_1ADE00B:               var_BC.Text = var_E0
  loc_1ADE01A:             End If
  loc_1ADE01A:           End If
  loc_1ADE01A:         End If
  loc_1ADE037:         If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_1ADE046:           Set var_A0 = Me.TxtGrid
  loc_1ADE04C:           Call 0.Method_Proc_338_89_1ADEDC80 (0, var_BC, var_C0)
  loc_1ADE054:           var_124 = var_BC.Text
  loc_1ADE06C:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE084:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1ADE0B0:           var_1F4 = CVar(CStr(Format(CVar(var_C0), "0.00000"))) 'String
  loc_1ADE0B8:           Set var_190 = Me.FGrid
  loc_1ADE0BE:           LateIdCallSt
  loc_1ADE0E5:         Else
  loc_1ADE0F1:           Set var_A0 = Me.TxtGrid
  loc_1ADE0F7:           Call 0.Method_Proc_338_89_1ADEDC80 (0, var_BC, var_C0, var_190, var_1F4)
  loc_1ADE0FF:           1 = var_BC.Text
  loc_1ADE117:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE12F:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1ADE15B:           var_1F4 = CVar(CStr(Format(CVar(var_C0), "0.000"))) 'String
  loc_1ADE163:           Set var_190 = Me.FGrid
  loc_1ADE169:           LateIdCallSt
  loc_1ADE18D:         End If
  loc_1ADE192:         Call Proc_338_101_17C5094(&H32, var_190, var_1F4, 1, 1, var_114)
  loc_1ADE19A:       Else
  loc_1ADE1A1:         If (var_B4 = CLng(9)) Then
  loc_1ADE1AE:           Set var_A0 = Me.TxtGrid
  loc_1ADE1B4:           Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_F4, 1)
  loc_1ADE1CC:           If Not(IsNumeric(CVar(var_BC))) Then
  loc_1ADE1D3:             var_C0 = CStr(0)
  loc_1ADE1E0:             Set var_A0 = Me.TxtGrid
  loc_1ADE1E6:             Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0)
  loc_1ADE1EE:             var_BC.Text = var_114
  loc_1ADE1FD:           End If
  loc_1ADE20A:           Set var_A0 = Me.TxtGrid
  loc_1ADE210:           Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0)
  loc_1ADE218:           var_F4 = var_BC.Text
  loc_1ADE23B:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE253:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1ADE28E:           LateIdCallSt
  loc_1ADE2BA:           Call Proc_338_101_17C5094(&H32, Me.FGrid, CVar(CStr(Format(CVar(Val(var_C0)), "0.00000"))), 1, 1)
  loc_1ADE2C2:         Else
  loc_1ADE2C9:           If (var_B4 = CLng(&HB)) Then
  loc_1ADE2D6:             Set var_A0 = Me.TxtGrid
  loc_1ADE2DC:             Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_124)
  loc_1ADE2F4:             If Not(IsNumeric(CVar(var_BC))) Then
  loc_1ADE2FB:               var_C0 = CStr(0)
  loc_1ADE308:               Set var_A0 = Me.TxtGrid
  loc_1ADE30E:               Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0)
  loc_1ADE316:               var_BC.Text = var_104
  loc_1ADE325:             End If
  loc_1ADE332:             Set var_A0 = Me.TxtGrid
  loc_1ADE338:             Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0)
  loc_1ADE340:             var_E0 = var_BC.Text
  loc_1ADE363:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE37B:             var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1ADE3B6:             LateIdCallSt
  loc_1ADE401:             Set var_BC = Me.FGrid
  loc_1ADE412:             var_C0 = CStr(var_BC.TextMatrix))
  loc_1ADE430:             If (CDbl(Val(var_C0)) <> CDbl(0)) Then
  loc_1ADE440:               Set var_A0 = Me.TxtGrid
  loc_1ADE446:               Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Val(var_C0)), "0.00"))))
  loc_1ADE44E:               1 = var_BC.Text
  loc_1ADE471:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE479:               var_104 = CVar(CLng(5)) 'Long
  loc_1ADE49B:               var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1ADE4B1:               var_168 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE4B9:               var_1B0 = CVar(CLng(9)) 'Long
  loc_1ADE4EA:               var_204 = CVar(CStr(Format(CVar((Val(var_C0) / var_24C)), "0.00000"))) 'String
  loc_1ADE4F2:               Set var_1E4 = Me.FGrid
  loc_1ADE4F8:               LateIdCallSt
  loc_1ADE527:             End If
  loc_1ADE52C:             Call Proc_338_101_17C5094(&H32, var_1E4, var_204, 1, 1, var_1B0, var_168, var_24C)
  loc_1ADE534:           Else
  loc_1ADE53B:             If (var_B4 = CLng(&H16)) Then
  loc_1ADE58C:               Set var_A0 = Me.TxtGrid
  loc_1ADE592:               Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_104, var_D8)
  loc_1ADE59A:               var_E0 = var_BC.Text
  loc_1ADE5B2:               If (1 Or (var_C0 = vbNullString)) Then
  loc_1ADE5C8:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE5D0:                 var_104 = CVar(CLng(&H16)) 'Long
  loc_1ADE5D5:                 var_124 = vbNullString
  loc_1ADE5DF:                 Set var_BC = Me.FGrid
  loc_1ADE5E5:                 LateIdCallSt
  loc_1ADE60A:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE612:                 var_104 = CVar(CLng(&H17)) 'Long
  loc_1ADE617:                 var_124 = vbNullString
  loc_1ADE621:                 Set var_BC = Me.FGrid
  loc_1ADE627:                 LateIdCallSt
  loc_1ADE63C:               Else
  loc_1ADE64F:                 var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE657:                 var_114 = CVar(CLng(&H16)) 'Long
  loc_1ADE68A:                 var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1ADE692:                 Set var_17C = Me.FGrid
  loc_1ADE698:                 LateIdCallSt
  loc_1ADE6C7:                 var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE6CF:                 var_114 = CVar(CLng(&H17)) 'Long
  loc_1ADE702:                 var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1ADE70A:                 Set var_17C = Me.FGrid
  loc_1ADE710:                 LateIdCallSt
  loc_1ADE72C:               End If
  loc_1ADE761:               var_158 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1ADE767:               var_18C = Trim(var_158)
  loc_1ADE789:               If (var_18C = vbNullString) Then
  loc_1ADE792:                 Call 0.Method_arg_50 (var_C0, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1ADE7B3:                 MsgBox("Godown Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1ADE7C8:                 Proc_338_89_1ADEDC8 = 0
  loc_1ADE7CE:               End If
  loc_1ADE802:               global_224 = CStr(Me.Fields.Item("Code").Value)
  loc_1ADE830:               var_BC = Me.Fields.Item("Name")
  loc_1ADE841:               var_C0 = CStr(var_BC.Value)
  loc_1ADE847:               global_228 = var_C0
  loc_1ADE85B:             Else
  loc_1ADE862:               If (var_B4 = CLng(&H19)) Then
  loc_1ADE8BC:                 Set var_A0 = Me.TxtGrid
  loc_1ADE8C2:                 Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))), var_158, var_114)
  loc_1ADE8CA:                 var_F4 = var_BC.Text
  loc_1ADE8E2:                 If (var_BC Or (var_C0 = vbNullString)) Then
  loc_1ADE8F8:                   var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE900:                   var_104 = CVar(CLng(&H19)) 'Long
  loc_1ADE905:                   var_124 = vbNullString
  loc_1ADE90F:                   Set var_BC = Me.FGrid
  loc_1ADE915:                   LateIdCallSt
  loc_1ADE93A:                   var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADE942:                   var_104 = CVar(CLng(&H1A)) 'Long
  loc_1ADE947:                   var_124 = vbNullString
  loc_1ADE951:                   Set var_BC = Me.FGrid
  loc_1ADE957:                   LateIdCallSt
  loc_1ADE96C:                 Else
  loc_1ADE976:                   var_B0 = Me.FGrid.Row
  loc_1ADE97F:                   var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1ADE987:                   var_114 = CVar(CLng(&H19)) 'Long
  loc_1ADE9BD:                   var_158 = CVar(CStr(Me.var_B0.Fields.Item("Name").Value)) 'String
  loc_1ADE9C5:                   Set var_17C = Me.FGrid
  loc_1ADE9CB:                   LateIdCallSt
  loc_1ADE9F1:                   var_B0 = Me.FGrid.Row
  loc_1ADE9FA:                   var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1ADEA02:                   var_114 = CVar(CLng(&H1A)) 'Long
  loc_1ADEA38:                   var_158 = CVar(CStr(Me.var_B0.Fields.Item("Code").Value)) 'String
  loc_1ADEA40:                   Set var_17C = Me.FGrid
  loc_1ADEA46:                   LateIdCallSt
  loc_1ADEA62:                 End If
  loc_1ADEA86:                 Set var_BC = Me.FGrid
  loc_1ADEA97:                 var_158 = CVar(CStr(var_BC.TextMatrix))) 'String
  loc_1ADEA9D:                 var_18C = Trim(var_158)
  loc_1ADEAA5:                 var_124 = vbNullString
  loc_1ADEABF:                 If (var_18C = var_124) Then
  loc_1ADEAC8:                   Call 0.Method_arg_50 (var_C0, CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1ADEAE9:                   MsgBox("Tax Structure is  Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1ADEAFE:                   Proc_338_89_1ADEDC8 = 0
  loc_1ADEB04:                 End If
  loc_1ADEB09:                 Call Proc_338_101_17C5094(&H32, var_158, var_114, var_F4)
  loc_1ADEB11:               Else
  loc_1ADEB18:                 If (var_B4 = CLng(&H1B)) Then
  loc_1ADEB72:                   Set var_A0 = Me.TxtGrid
  loc_1ADEB78:                   Call 0.Method_Proc_338_89_1ADEDC80 (arg_C, var_BC, var_C0, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1ADEB80:                   var_BC = var_BC.Text
  loc_1ADEB98:                   If (var_124 Or (var_C0 = vbNullString)) Then
  loc_1ADEBAE:                     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADEBB6:                     var_104 = CVar(CLng(&H1B)) 'Long
  loc_1ADEBBB:                     var_124 = vbNullString
  loc_1ADEBC5:                     Set var_BC = Me.FGrid
  loc_1ADEBCB:                     LateIdCallSt
  loc_1ADEBF0:                     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1ADEBF8:                     var_104 = CVar(CLng(&H1C)) 'Long
  loc_1ADEBFD:                     var_124 = vbNullString
  loc_1ADEC07:                     Set var_BC = Me.FGrid
  loc_1ADEC0D:                     LateIdCallSt
  loc_1ADEC22:                   Else
  loc_1ADEC2C:                     var_B0 = Me.FGrid.Row
  loc_1ADEC35:                     var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1ADEC3D:                     var_114 = CVar(CLng(&H1B)) 'Long
  loc_1ADEC73:                     var_158 = CVar(CStr(Me.var_B0.Fields.Item("Name").Value)) 'String
  loc_1ADEC7B:                     Set var_17C = Me.FGrid
  loc_1ADEC81:                     LateIdCallSt
  loc_1ADECA7:                     var_B0 = Me.FGrid.Row
  loc_1ADECB0:                     var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1ADECB8:                     var_114 = CVar(CLng(&H1C)) 'Long
  loc_1ADECEE:                     var_158 = CVar(CStr(Me.var_B0.Fields.Item("Code").Value)) 'String
  loc_1ADECF6:                     Set var_17C = Me.FGrid
  loc_1ADECFC:                     LateIdCallSt
  loc_1ADED18:                   End If
  loc_1ADED4D:                   var_158 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1ADED53:                   var_18C = Trim(var_158)
  loc_1ADED75:                   If (var_18C = vbNullString) Then
  loc_1ADED7E:                     Call 0.Method_arg_50 (var_C0, CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1ADED9F:                     MsgBox("A/C Name is  Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1ADEDB4:                     Proc_338_89_1ADEDC8 = 0
  loc_1ADEDBA:                   End If
  loc_1ADEDBA:                 End If
  loc_1ADEDBA:               End If
  loc_1ADEDBA:             End If
  loc_1ADEDBA:           End If
  loc_1ADEDBA:         End If
  loc_1ADEDBA:       End If
  loc_1ADEDBA:     End If
  loc_1ADEDBA:   End If
  loc_1ADEDBA: End If
  loc_1ADEDBF: Proc_338_89_1ADEDC8 = &HFF
End Sub

Public Sub Proc_338_90_1A01BB8
  'Data Table: 598674
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim unk_598691 As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_124 As Variant
  Dim var_140 As String
  Dim var_1A4 As Fields15
  Dim var_1EC As String
  Dim var_1FC As Recordset15
  Dim var_13C As Variant
  Dim var_134 As Variant
  Dim var_160 As Variant
  Dim var_1F4 As String
  Dim var_1F8 As String
  Dim var_190 As Variant
  Dim var_1B8 As Variant
  Dim var_8E As Integer
  Dim var_A2 As Integer
  Dim var_9E As Integer
  Dim var_8C As Recordset15
  loc_19FE87C: On Error Goto loc_1A01B63
  loc_19FE896: If (Me.RecordCount > 0) Then
  loc_19FE8D8:   var_F0 = "Select P.*,S.Name as PartyName From Purch1 P Left Join SubGroup S on S.SubCode=P.Party Where P.Docid='" & Me.Fields.Item("DocID").Value 
  loc_19FE8EF:   unk_598691.Execute CStr(var_F0 & "'"), var_134, -1
  loc_19FE8FA:   Set var_88 = var_138
  loc_19FE94E:   var_138 = var_88.Fields
  loc_19FE9B7:   var_1A0 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_138.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_19FE9FC:   Me.LblUser.Caption = CStr(var_138 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_1A0)))
  loc_19FEA76:   var_13C = var_88.Fields.Item("U_AE")
  loc_19FEA8A:   var_150 = "entdt : "
  loc_19FEAA3:   var_140 = Proc_6_38_E68A98(CVar(var_13C))
  loc_19FEAD7:   var_1A0 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((var_140 = "E"), "Last Update : ", var_150))
  loc_19FEAF6:   var_1B8 = var_88.Fields.Item("U_EntDt")
  loc_19FEB1C:   Me.LblLDt.Caption = CStr(var_1A0 & CVar(Proc_6_38_E68A98(CVar(var_1B8))))
  loc_19FEB57:   Set var_1FC = var_88 
  loc_19FEB94:   Set var_138 = Me.Txt
  loc_19FEB9A:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(0), var_13C)
  loc_19FEBA2:   var_13C.Text = CStr(var_1FC.Fields.Item("DocID").Value)
  loc_19FEBDE:   var_F0 = Trim(CVar(var_1FC.Fields.Item("vType")))
  loc_19FEBED:   global_132 = CStr(var_F0)
  loc_19FEC37:   Set var_138 = Me.Txt
  loc_19FEC3D:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(1), var_13C)
  loc_19FEC45:   var_13C.Tag = CStr(var_1FC.Fields.Item("vType").Value)
  loc_19FEC91:   Set var_138 = Me.Txt
  loc_19FEC97:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(4), var_13C)
  loc_19FEC9F:   var_13C.Tag = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("Party")))
  loc_19FECE9:   Set var_138 = Me.Txt
  loc_19FECEF:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(4), var_13C)
  loc_19FECF7:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("PartyName")))
  loc_19FED41:   Set var_138 = Me.Txt
  loc_19FED47:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(8), var_13C)
  loc_19FED4F:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("CashParty")))
  loc_19FED99:   Set var_138 = Me.Txt
  loc_19FED9F:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(5), var_13C)
  loc_19FEDA7:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("PartyBillNo")))
  loc_19FEDF1:   Set var_138 = Me.Txt
  loc_19FEDF7:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(6), var_13C)
  loc_19FEDFF:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("PartyBillDt")))
  loc_19FEE49:   Set var_138 = Me.Txt
  loc_19FEE4F:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(&HB), var_13C)
  loc_19FEE57:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("TINNo")))
  loc_19FEEA1:   Set var_138 = Me.Txt
  loc_19FEEA7:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(&HC), var_13C)
  loc_19FEEAF:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("Remark")))
  loc_19FEEE2:   var_D0 = CVar(var_1FC.Fields.Item("InvoiceNo")) 'Address
  loc_19FEEE9:   Proc_6_39_E7C810(var_F0)
  loc_19FEEFF:   Me.LblInvoiceNo.Caption = CStr(var_F0)
  loc_19FEF2C:   var_C0 = var_1FC.Fields.Item("Payable")
  loc_19FEF3B:   Proc_6_39_E7C810(var_F0, CVar(var_C0))
  loc_19FEF48:   Set var_138 = Me.ChkPayable
  loc_19FEF4E:   var_138.Value = CInt(var_F0)
  loc_19FEF6E:   Set var_AC = Me.Opt
  loc_19FEF74:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(0), var_C0)
  loc_19FEF7C:   var_C0.Enabled = False
  loc_19FEF95:   Set var_AC = Me.Opt
  loc_19FEF9B:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(1), var_C0)
  loc_19FEFA3:   var_C0.Enabled = False
  loc_19FEFBC:   Set var_AC = Me.Opt
  loc_19FEFC2:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(2), var_C0)
  loc_19FEFCA:   var_C0.Enabled = False
  loc_19FEFED:   var_C0 = var_1FC.Fields.Item("InvoiceType")
  loc_19FEFFE:   var_200 = Proc_6_38_E68A98(CVar(var_C0))
  loc_19FF00F:   If (var_200 = "Sale Invoice") Then
  loc_19FF01F:     Set var_AC = Me.Opt
  loc_19FF025:     Call 0.Method_Proc_338_90_1A01BB80 (CInt(0), var_C0)
  loc_19FF02D:     var_C0.Value = True
  loc_19FF03C:   Else
  loc_19FF044:     If (var_200 = "Tax Invoice") Then
  loc_19FF054:       Set var_AC = Me.Opt
  loc_19FF05A:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(1), var_C0)
  loc_19FF062:       var_C0.Value = True
  loc_19FF071:     Else
  loc_19FF07E:       Set var_AC = Me.Opt
  loc_19FF084:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(2), var_C0)
  loc_19FF08C:       var_C0.Value = True
  loc_19FF098:     End If
  loc_19FF098:   End If
  loc_19FF0C4:   Set var_AC = Me.Txt
  loc_19FF0CA:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(1), var_C0, var_140, CVar("Select NCAT,Description  From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and V_Type='"))
  loc_19FF0D2:   var_190 = var_C0.Tag
  loc_19FF0DA:   var_D0 = CVar(var_140) 'String
  loc_19FF0E8:   var_134 = -1 & Trim(var_D0) 
  loc_19FF0FF:   unk_598691.Execute CStr(var_150 & "'"), var_138, var_D0
  loc_19FF10A:   Set var_94 = var_138
  loc_19FF143:   If (Me.Recordset15.RecordCount > 0) Then
  loc_19FF16F:     var_F0 = Trim(CVar(Me.Recordset15.Fields.Item("NCat")))
  loc_19FF182:     global_124 = Proc_6_38_E68A98(var_F0)
  loc_19FF1AD:     var_C0 = Me.Recordset15.Fields.Item("Description")
  loc_19FF1B5:     var_D0 = CVar(var_C0) 'Address
  loc_19FF1CC:     Set var_138 = Me.Txt
  loc_19FF1D2:     Call 0.Method_Proc_338_90_1A01BB80 (CInt(1), var_13C)
  loc_19FF1DA:     var_13C.Text = Proc_6_38_E68A98(var_D0)
  loc_19FF1EE:   End If
  loc_19FF1F4:   var_E0 = 0
  loc_19FF232:   unk_598691.Execute "Select NCAT From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and V_Type='" & global_132 & "'", var_D0, -1
  loc_19FF23A:   var_AC = var_AC.Fields
  loc_19FF242:   var_E0 = var_C0.Item(var_C0)
  loc_19FF24A:   var_138 = var_138.Value
  loc_19FF264:   global_124 = CStr(Trim(var_F0))
  loc_19FF287:   Call Proc_338_109_1132EDC(var_F0)
  loc_19FF2C5:   Set var_138 = Me.Txt
  loc_19FF2CB:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(2), var_13C)
  loc_19FF2D3:   var_13C.Text = CStr(var_1FC.Fields.Item("VNo").Value)
  loc_19FF300:   var_C0 = var_1FC.Fields.Item("VDate")
  loc_19FF33B:   Set var_138 = Me.Txt
  loc_19FF341:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(3), var_13C, CStr(Format(CVar(var_C0), "DD/MMM/YYYY")))
  loc_19FF349:   var_13C.Text = 1
  loc_19FF363:   Call Proc_338_109_1132EDC(1)
  loc_19FF373:   Set var_AC = Me.Txt
  loc_19FF379:   Call 0.Method_Proc_338_90_1A01BB80 (CInt(3))
  loc_19FF3AB:   Call Proc_338_100_17D5938(CDate(Format(CVar(var_C0), "DD/MMM/YYYY")), 1)
  loc_19FF3F8:   Me.LblVPrefix.Caption = CStr(Trim(CVar(var_1FC.Fields.Item("vPrefix"))))
  loc_19FF41D:   var_AC = var_88.Fields
  loc_19FF436:   var_124 = IsNull(CVar(var_AC.Item("BillImagePath")))
  loc_19FF43D:   var_E0 = "BillImagePath"
  loc_19FF468:   var_100 = vbNullString
  loc_19FF48A:   If CBool(var_124 Or (Trim(CVar(var_88.Fields.Item(var_E0))) = var_100)) Then
  loc_19FF4AB:     Me.Global.LoadPicture var_BC, var_E0, var_100, var_124, var_150
  loc_19FF4C0:     Me.BillImage.Picture = var_AC
  loc_19FF4D9:     Me.BillImage.Tag = vbNullString
  loc_19FF4E4:   Else
  loc_19FF512:     var_100 = "BillImagePath"
  loc_19FF52E:     var_190 = CVar(var_88.Fields.Item(var_100)) 'Address
  loc_19FF535:     var_1A0 = Trim(var_190)
  loc_19FF550:     var_134 = Ucase(Right(Trim(CVar(var_88.Fields.Item("BillImagePath"))), 3))
  loc_19FF558:     var_E0 = "DAT"
  loc_19FF580:     var_124 = "AVI"
  loc_19FF5AA:     If CBool((var_134 = var_E0) Or (Ucase(Right(var_1A0, 3)) = var_124)) Then
  loc_19FF5B9:       Me.BillImage.Visible = False
  loc_19FF5C4:     Else
  loc_19FF5FC:       Me.BillImage.Tag = CStr(var_88.Fields.Item("BillImagePath").Value)
  loc_19FF619:       var_BC = "BillImagePath"
  loc_19FF625:       var_AC = var_88.Fields
  loc_19FF62D:       var_C0 = var_AC.Item(var_BC)
  loc_19FF647:       Call 0.Method_Proc_338_90_1A01BB84 (CStr(var_C0.Value), var_21A, var_AC)
  loc_19FF65C:       If var_21A Then
  loc_19FF679:         Set var_AC = Me.BillImage
  loc_19FF691:         Me.Global.LoadPicture CVar(Me.BillImage.Tag), var_BC, var_E0, var_100, var_124
  loc_19FF6A6:         Me.BillImage.Picture = var_C0
  loc_19FF6BB:         Set var_AC = Me.BillImage
  loc_19FF6C1:         var_AC.Refresh
  loc_19FF6CC:       Else
  loc_19FF6EA:         Me.Global.LoadPicture var_BC, var_E0, var_100, var_124, var_150
  loc_19FF6F9:         Set var_138 = Me.BillImage
  loc_19FF6FF:         var_138.Picture = var_AC
  loc_19FF70B:       End If
  loc_19FF70B:     End If
  loc_19FF70B:   End If
  loc_19FF70D:   Set var_1FC = Nothing 
  loc_19FF767:   unk_598691.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_134, -1
  loc_19FF772:   Set var_88 = var_138
  loc_19FF7A0:   If (var_88.RecordCount > 0) Then
  loc_19FF7B5:     var_AC = var_88.Fields
  loc_19FF7D3:     Call Proc_338_100_17D5938(CDate(var_AC.Item("SunAppDate").Value), var_138, var_AC)
  loc_19FF7E2:     ' Referenced from: 19FFC7B
  loc_19FF7F1:     If Not(var_88.EOF) Then
  loc_19FF80E:       var_C0 = var_88.Fields.Item("SunCode")
  loc_19FF854:       Set var_1A4 = Me.LblCap
  loc_19FF85A:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(var_88.Fields.Item("SNo").Value), var_1B8, CStr(var_C0.Value))
  loc_19FF862:       var_1B8.Tag = var_C0
  loc_19FF8E0:       Set var_1A4 = Me.TxtPer
  loc_19FF8E6:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(var_88.Fields.Item("SNo").Value), var_1B8, CStr(var_88.Fields.Item("Limit").Value))
  loc_19FF8EE:       var_1B8.Tag = 1
  loc_19FF96C:       Set var_1A4 = Me.LblCap
  loc_19FF972:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_19FF97A:       var_1B8.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_19FF9F8:       Set var_1A4 = Me.LblAt
  loc_19FF9FE:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_19FFA06:       var_1B8.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_19FFA84:       Set var_1A4 = Me.TxtGt
  loc_19FFA8A:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_19FFA92:       var_1B8.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_19FFB10:       Set var_1A4 = Me.TxtPer
  loc_19FFB16:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_19FFB1E:       var_1B8.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_19FFB7A:       var_134 = var_88.Fields.Item("SNo").Value
  loc_19FFB8E:       var_F0 = "0.00"
  loc_19FFBB5:       Set var_1A4 = Me.TxtGt
  loc_19FFBBB:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(var_134), var_1B8, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F0)))
  loc_19FFBC3:       var_1B8.Text = 1
  loc_19FFC09:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_19FFC2A:       var_138 = var_88.Fields
  loc_19FFC47:       Set var_1A4 = Me.LblDummy
  loc_19FFC4D:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(var_138.Item("SNo").Value), var_1B8, CStr(var_F0))
  loc_19FFC55:       var_1B8.Caption = 1
  loc_19FFC76:       var_88.MoveNext
  loc_19FFC7B:       GoTo loc_19FF7E2
  loc_19FFC7E:     End If
  loc_19FFC7E:   End If
  loc_19FFC8D:   Me.FGrid.Redraw = False
  loc_19FFCA8:   Me.FGrid.Rows = 1
  loc_19FFCB2:   var_8E = 1
  loc_19FFCC2:   var_E0 = "Select DISTINCT S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,s.TaxStru as TaxCode,RateEdit,D.Code as DepartCode,D.ShortName as DepartName,G.Name as GodownName,TaxStru.Name as TaxStructure,S.AcCode As SaleAcCode,SG.Name As SaleAcName From (((((Purch2 S Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store') left join Sale2 S2 on (S2.docid=S.docid and S2.sno=S.sno)) Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode)Left Join GodownMast G on G.Code=S.GodCode) left Join TaxStru on TaxStru.Code=S.TaxStru left Join SubGroup SG On SG.SubCode=S.AcCode Where S.DocId='"
  loc_19FFD0B:   unk_598691.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_134, -1
  loc_19FFD16:   Set var_88 = var_138
  loc_19FFD44:   If (var_88.RecordCount > 0) Then
  loc_19FFD54:     ReDim Preserve var_9C(0 To 0)
  loc_19FFD5E:     ' Referenced from: 1A0152F
  loc_19FFD6D:     If Not(var_88.EOF) Then
  loc_19FFD70:       var_BC = vbNullString
  loc_19FFD7A:       Set var_AC = Me.FGrid
  loc_19FFD98:       For var_21E = 0 To CInt(UBound(var_9C, 1)): var_A0 = var_21E 'Integer
  loc_19FFDA9:         var_BC = "RoomNo"
  loc_19FFDDC:         If (var_BC = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_BC)), var_9C(CLng(var_A0)), 0, FGrid.DispID_10000)) Then
  loc_19FFDE1:           var_A2 = &HFF
  loc_19FFDE4:         End If
  loc_19FFDE7:       Next var_21E 'Integer
  loc_19FFDF2:       If (var_A2 = 0) Then
  loc_19FFE01:         ReDim Preserve var_9C(0 To CLng(var_9E))
  loc_19FFE3D:         var_9C(CLng(var_9E)) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")))
  loc_19FFE4D:         var_9E = (var_9E + 1)
  loc_19FFE50:       End If
  loc_19FFE52:       var_A2 = 0
  loc_19FFE59:       Set var_224 = Me.FGrid
  loc_19FFE60:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_19FFE68:       var_124 = CVar(CLng(0)) 'Long
  loc_19FFE98:       var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_19FFE9F:       LateIdCallSt
  loc_19FFEB9:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_19FFEC1:       var_124 = CVar(CLng(&HC)) 'Long
  loc_19FFEF1:       var_F0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_19FFEF8:       LateIdCallSt
  loc_19FFF47:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_19FFF4E:       LateIdCallSt
  loc_19FFF99:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(var_8E)), var_224, var_F0, var_224)) 'String
  loc_19FFFA0:       LateIdCallSt
  loc_19FFFD2:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_19FFFDA:       var_150 = CVar(CLng(9)) 'Long
  loc_1A00007:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00000"))) 'String
  loc_1A0000E:       LateIdCallSt
  loc_1A00044:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A0004C:       var_150 = CVar(CLng(&HA)) 'Long
  loc_1A00079:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00000"))) 'String
  loc_1A00080:       LateIdCallSt
  loc_1A000B6:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A000BE:       var_150 = CVar(CLng(&HB)) 'Long
  loc_1A000EB:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1A000F2:       LateIdCallSt
  loc_1A00128:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00130:       var_150 = CVar(CLng(&HF)) 'Long
  loc_1A0015D:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1A00164:       LateIdCallSt
  loc_1A0019A:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A001A2:       var_150 = CVar(CLng(&H10)) 'Long
  loc_1A001CF:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_1A001D6:       LateIdCallSt
  loc_1A0020C:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00214:       var_150 = CVar(CLng(&H12)) 'Long
  loc_1A00241:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1A00248:       LateIdCallSt
  loc_1A002BA:       LateIdCallSt
  loc_1A00309:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1A00310:       LateIdCallSt
  loc_1A0035B:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(&H13)))) 'String
  loc_1A00362:       LateIdCallSt
  loc_1A003AD:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxStructure")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A003B4:       LateIdCallSt
  loc_1A003FF:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A00406:       LateIdCallSt
  loc_1A00451:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A00458:       LateIdCallSt
  loc_1A004A3:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A004AA:       LateIdCallSt
  loc_1A004F5:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A004FC:       LateIdCallSt
  loc_1A0053D:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A00545:       var_124 = CVar(CLng(3)) 'Long
  loc_1A00560:       var_114 = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), var_224, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), var_224, var_F0, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_1A00572:       LateIdCallSt
  loc_1A005C8:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_224, CVar(CStr(Val(var_114))), CVar(CLng(&HE)))) 'String
  loc_1A005CF:       LateIdCallSt
  loc_1A00618:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("ContraSNo")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_224, var_F0)
  loc_1A00628:       LateIdCallSt
  loc_1A00675:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GodownName")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_F0)))) 'String
  loc_1A0067C:       LateIdCallSt
  loc_1A006C7:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GodCode")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A006CE:       LateIdCallSt
  loc_1A00717:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_224, var_F0)
  loc_1A00727:       LateIdCallSt
  loc_1A00772:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("PostVal")), CVar(CLng(&H20)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_F0)))
  loc_1A00782:       LateIdCallSt
  loc_1A0079A:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A007CD:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("LandVal")), CVar(CLng(&H21)), var_E0, var_224, CVar(CStr(var_F0)))
  loc_1A007DD:       LateIdCallSt
  loc_1A0082A:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), var_224, CVar(CStr(var_F0)), var_E0) <> vbNullString) Then
  loc_1A00844:         If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_1A0088C:           var_110 = "Select ConvRatio,QtyIss,IssueUnit,Unit From Stock Where DocId='" & var_88.Fields.Item("ContraDocId").Value & "' And Sno=" 
  loc_1A008C8:           unk_598691.Execute CStr(var_110 & var_88.Fields.Item("ContraSNo").Value), var_190, -1
  loc_1A008D3:           Set var_8C = var_1A4
  loc_1A00909:           If (var_8C.RecordCount > 0) Then
  loc_1A0092C:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00934:             var_150 = CVar(CLng(6)) 'Long
  loc_1A00961:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A00968:             LateIdCallSt
  loc_1A0099E:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A009A6:             var_150 = CVar(CLng(7)) 'Long
  loc_1A009D3:             var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_1A009DA:             LateIdCallSt
  loc_1A00A10:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00A4C:             LateIdCallSt
  loc_1A00A9B:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyIss")), "0.000"))), 1, 1)) 'String
  loc_1A00AA2:             LateIdCallSt
  loc_1A00AED:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A00AF4:             LateIdCallSt
  loc_1A00B06:           End If
  loc_1A00B09:         Else
  loc_1A00B4E:           var_110 = "Select ConvRatio,QtyRec,RecdUnit,Unit From Stock Where DocId='" & var_88.Fields.Item("ContraDocId").Value & "' And Sno=" 
  loc_1A00B8A:           unk_598691.Execute CStr(var_110 & var_88.Fields.Item("ContraSNo").Value), var_190, -1
  loc_1A00B95:           Set var_8C = var_1A4
  loc_1A00BCB:           If (var_8C.RecordCount > 0) Then
  loc_1A00BEE:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00BF6:             var_150 = CVar(CLng(6)) 'Long
  loc_1A00C23:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A00C2A:             LateIdCallSt
  loc_1A00C60:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00C68:             var_150 = CVar(CLng(7)) 'Long
  loc_1A00C95:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1A00C9C:             LateIdCallSt
  loc_1A00CD2:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00D0E:             LateIdCallSt
  loc_1A00D5D:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_88.Fields.Item("RecdQty")), "0.000"))), 1, 1)) 'String
  loc_1A00D64:             LateIdCallSt
  loc_1A00DAF:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A00DB6:             LateIdCallSt
  loc_1A00DC8:           End If
  loc_1A00DC8:         End If
  loc_1A00DCB:       Else
  loc_1A00DE2:         If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_1A00E2D:           var_110 = "Select ConvRatio,IssQty,IssueUnit,Unit From Stock Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And Sno=" 
  loc_1A00E69:           unk_598691.Execute CStr(var_110 & var_88.Fields.Item("SNo").Value), var_190, -1
  loc_1A00E74:           Set var_8C = var_1A4
  loc_1A00EAA:           If (var_8C.RecordCount > 0) Then
  loc_1A00ECD:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00EE9:             var_F0 = "0.00000"
  loc_1A00F09:             LateIdCallSt
  loc_1A00F45:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("QtyIss")), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), var_F0))), 1, 1, CVar(CLng(6)))
  loc_1A00F4E:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00F56:             var_150 = CVar(CLng(7)) 'Long
  loc_1A00F7F:             var_160 = CVar(CStr(Format(var_F0, "0.000"))) 'String
  loc_1A00F86:             LateIdCallSt
  loc_1A00FBE:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A00FFA:             LateIdCallSt
  loc_1A01049:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("IssQty")), "0.000"))), 1, 1)) 'String
  loc_1A01050:             LateIdCallSt
  loc_1A0109B:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A010A2:             LateIdCallSt
  loc_1A010B4:           End If
  loc_1A010B7:         Else
  loc_1A010FF:           var_110 = "Select ConvRatio,QtyRec,RecdUnit,Unit From Stock Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And Sno=" 
  loc_1A0113B:           unk_598691.Execute CStr(var_110 & var_88.Fields.Item("SNo").Value), var_190, -1
  loc_1A01146:           Set var_8C = var_1A4
  loc_1A0117C:           If (var_8C.RecordCount > 0) Then
  loc_1A0119F:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A011A7:             var_150 = CVar(CLng(6)) 'Long
  loc_1A011D4:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A011DB:             LateIdCallSt
  loc_1A01211:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A01219:             var_150 = CVar(CLng(7)) 'Long
  loc_1A01246:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1A0124D:             LateIdCallSt
  loc_1A01283:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A012AF:             var_110 = Format(CVar(var_88.Fields.Item("RecdQty")), "0.000")
  loc_1A012BF:             LateIdCallSt
  loc_1A0130E:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_110)), 1, 1)) 'String
  loc_1A01315:             LateIdCallSt
  loc_1A01360:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A01367:             LateIdCallSt
  loc_1A01379:           End If
  loc_1A01379:         End If
  loc_1A01379:       End If
  loc_1A013A8:       If ((((global_124 = "PBR") Or (global_124 = "EXR")) Or (global_124 = "PBC")) Or (global_124 = "EXC")) Then
  loc_1A013BF:         var_114 = "Select max(IsNull(M.AccQty,0)) - Sum(IsNull(P2.QtyRec,0)) as BalQty " & "From (Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1A013CD:         var_1EC = CStr(var_110 & var_88.Fields.Item("SNo").Value) & "Left Join SubGroup SG on M.PartyCode=SG.SubCode " & "where M.DocId='"
  loc_1A013F8:         var_1F4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), var_1EC, var_1A0, -1, var_1A4, var_224)
  loc_1A013FC:         var_1F8 = var_F0 & "Select NCAT From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and V_Type='" & global_132 & "'"
  loc_1A01403:         var_134 = CVar(var_1F8 & "' And M.Sno=") 'String
  loc_1A0141D:         var_13C = var_88.Fields.Item("ContraSNo")
  loc_1A01425:         var_F0 = CVar(var_13C) 'Address
  loc_1A0142C:         Proc_6_39_E7C810(var_110, var_F0, var_134, var_100)
  loc_1A01438:         var_100 = "  Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.QtyRec,0)) > 0 "
  loc_1A0144B:         unk_598691.Execute CStr(var_224 & var_110 & var_100), var_134, 1
  loc_1A01456:         Set var_8C = var_1A4
  loc_1A01496:         If (var_8C.RecordCount > 0) Then
  loc_1A014B0:           var_C0 = var_8C.Fields.Item("BalQty")
  loc_1A014BF:           Proc_6_39_E7C810(var_F0, CVar(var_C0))
  loc_1A014C8:           var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A014D0:           var_150 = CVar(CLng(&H22)) 'Long
  loc_1A014F9:           var_160 = CVar(CStr(Format(var_F0, "0.000"))) 'String
  loc_1A01500:           LateIdCallSt
  loc_1A01518:         End If
  loc_1A01518:       End If
  loc_1A0151A:       Set var_224 = Nothing 
  loc_1A01524:       var_8E = (var_8E + 1)
  loc_1A0152A:       var_88.MoveNext
  loc_1A0152F:       GoTo loc_19FFD5E
  loc_1A01532:     End If
  loc_1A01545:     Me.FGrid.FixedRows = 1
  loc_1A0155B:     Set var_AC = Me.Txt
  loc_1A01561:     Call 0.Method_Proc_338_90_1A01BB80 (CInt(7), var_C0, vbNullString, var_8E, var_224, var_160)
  loc_1A01582:     For var_22C = 0 To CInt(UBound(var_9C, 1)): var_9E = var_22C 'Integer
  loc_1A01596:       Set var_AC = Me.Txt
  loc_1A0159C:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(7), var_C0, CStr("0.000" & var_88.Fields.Item("SNo").Value), 0)
  loc_1A015A4:       1 = 1
  loc_1A015CA:       Set var_138 = Me.Txt
  loc_1A015D0:       Call 0.Method_Proc_338_90_1A01BB80 (CInt(7), var_13C, CStr("0.000" & var_88.Fields.Item("SNo").Value) & var_9C(CLng(var_9E)) & ",")
  loc_1A015D8:       var_13C.Text = var_150
  loc_1A015F4:     Next var_22C 'Integer
  loc_1A01604:     Set var_AC = Me.Txt
  loc_1A0160A:     Call 0.Method_Proc_338_90_1A01BB80 (CInt(7))
  loc_1A0161A:     Set var_138 = Me.Txt
  loc_1A01620:     Call 0.Method_Proc_338_90_1A01BB80 (CInt(7), var_13C)
  loc_1A01640:     var_134 = (Len(Trim(CVar(var_13C))) - 1)
  loc_1A01653:     var_160 = CVar(var_C0) 'Address
  loc_1A01671:     Set var_1A4 = Me.Txt
  loc_1A01677:     Call 0.Method_Proc_338_90_1A01BB80 (CInt(7), var_1B8)
  loc_1A0167F:     var_1B8.Text = CStr(Mid(var_160, 1, Format(Trim(CVar(var_13C)), "0.000")))
  loc_1A0169F:   End If
  loc_1A016AD:   Me.FGrid.Redraw = True
  loc_1A016C9:   var_F0 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1A01702:   var_134 = var_F0 & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1A01710:   unk_598691.Execute CStr(var_134), var_160, -1
  loc_1A0171B:   Set var_88 = var_138
  loc_1A0174A:   Me.FGCat.Rows = 1
  loc_1A01758:   var_A8 = var_88.RecordCount
  loc_1A01766:   If (var_A8 > 0) Then
  loc_1A01769:     ' Referenced from: 1A01ABF
  loc_1A01778:     If Not(var_88.EOF) Then
  loc_1A0177F:       Set var_230 = Me.FGCat
  loc_1A01782:       var_BC = vbNullString
  loc_1A017AC:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A017B4:       var_124 = CVar(CLng(0)) 'Long
  loc_1A017E4:       var_110 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_1A017EB:       LateIdCallSt
  loc_1A0181E:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A01826:       var_124 = CVar(CLng(1)) 'Long
  loc_1A01856:       var_110 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1A0185D:       LateIdCallSt
  loc_1A01890:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A01898:       var_124 = CVar(CLng(2)) 'Long
  loc_1A018C8:       var_110 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1A018CF:       LateIdCallSt
  loc_1A01902:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A0190A:       var_124 = CVar(CLng(3)) 'Long
  loc_1A0193A:       var_110 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1A01941:       LateIdCallSt
  loc_1A01974:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A0197C:       var_124 = CVar(CLng(4)) 'Long
  loc_1A019AC:       var_110 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_1A019B3:       LateIdCallSt
  loc_1A019E6:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A019EE:       var_124 = CVar(CLng(5)) 'Long
  loc_1A01A1E:       var_110 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_1A01A25:       LateIdCallSt
  loc_1A01A58:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A01A60:       var_124 = CVar(CLng(6)) 'Long
  loc_1A01A87:       var_F0 = var_88.Fields.Item("TaxAmt").Value
  loc_1A01A90:       var_110 = CVar(CStr(var_F0)) 'String
  loc_1A01A97:       LateIdCallSt
  loc_1A01AB3:       Set var_230 = Nothing 
  loc_1A01ABA:       var_88.MoveNext
  loc_1A01ABF:       GoTo loc_1A01769
  loc_1A01AC2:     End If
  loc_1A01AC2:   End If
  loc_1A01AC8:   If (var_8E = 1) Then
  loc_1A01ADE:     Me.FGrid.Rows = 1
  loc_1A01B04:     var_D0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_230, var_110, var_124, "'", var_230, var_110))) 'String
  loc_1A01B0C:     Set var_C0 = Me.FGrid
  loc_1A01B39:     Me.FGrid.FixedRows = 1
  loc_1A01B41:   End If
  loc_1A01B44: Else
  loc_1A01B44:   Call Proc_338_92_1021EB8(FGrid.DispID_10000, var_D0, var_124, "'", var_230)
  loc_1A01B49: End If
  loc_1A01B49: Call Proc_338_94_FDE1A4(var_110, var_124)
  loc_1A01B53: Set var_88 = Nothing
  loc_1A01B5B: Set var_94 = Nothing
  loc_1A01B62: Exit Sub
  loc_1A01B63: ' Referenced from: 19FE87C
  loc_1A01B6B: Set var_AC = Err()
  loc_1A01B71: Call 0.Method_arg_1C (var_A8, "'")
  loc_1A01B82: If (var_A8 = &HBCD) Then
  loc_1A01B9E:   MsgBox("Record is Deleted by somebody", &H40, var_F0, var_110, var_134)
  loc_1A01BAE:   Exit Sub
  loc_1A01BAF: End If
  loc_1A01BAF: Proc_6_60_E62BC4(var_230)
  loc_1A01BB4: Exit Sub
End Sub

Public Sub Proc_338_91_125FF14
  'Data Table: 598674
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_598691 As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_125F9B9: Set var_9C = Me.TopCtrl1
  loc_125F9BF: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(&HFF)
  loc_125F9C7: var_B0 = CStr()
  loc_125F9D8: If (var_B0 = "Add") Then
  loc_125FA08:   Set var_9C = Me.Txt
  loc_125FA0E:   Call 0.Method_Proc_338_91_125FF140 (CInt(0), var_B4, var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1)
  loc_125FA2F:   unk_598691.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_125FA3F:    = var_D4.Item()
  loc_125FA47:    = var_E8.Value
  loc_125FA74:   If (var_B4.Text.Fields > 0) Then
  loc_125FA7D:     Call 0.Method_arg_50 (var_B0)
  loc_125FA9E:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_125FAB4:     Call Proc_338_96_10E9D58(MemVar_1F92044)
  loc_125FAC7:     Set var_9C = Me.Txt
  loc_125FACD:     Call 0.Method_Proc_338_91_125FF140 (CInt(0), var_B4)
  loc_125FAD5:     var_B4.Text = var_B0
  loc_125FAE9:     Proc_338_91_125FF14 = 0
  loc_125FAEF:   End If
  loc_125FAEF: End If
  loc_125FB14: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_125FB1E:   var_CC = CVar(CLng(var_88)) 'Long
  loc_125FB26:   var_108 = CVar(CLng(2)) 'Long
  loc_125FB46:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_125FB62:   If CBool(var_118 <> vbNullString) Then
  loc_125FB69:     var_CC = CVar(CLng(var_88)) 'Long
  loc_125FB71:     var_108 = CVar(CLng(5)) 'Long
  loc_125FBA1:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_125FBC9:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_125FBEF:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_125FBFB:       Set var_9C = Me.FGrid
  loc_125FC11:       Proc_338_91_125FF14 = 0
  loc_125FC17:     End If
  loc_125FC1B:     var_CC = CVar(CLng(var_88)) 'Long
  loc_125FC23:     var_108 = CVar(CLng(9)) 'Long
  loc_125FC53:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_125FC7B:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_125FCA1:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_125FCAD:       Set var_9C = Me.FGrid
  loc_125FCC3:       Proc_338_91_125FF14 = 0
  loc_125FCC9:     End If
  loc_125FCCD:     var_CC = CVar(CLng(var_88)) 'Long
  loc_125FCD5:     var_108 = CVar(CLng(&H16)) 'Long
  loc_125FCF5:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_125FD11:     If (var_118 = vbNullString) Then
  loc_125FD39:       MsgBox(CVar("Godown Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_125FD5F:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_125FD6B:       Set var_9C = Me.FGrid
  loc_125FD81:       Proc_338_91_125FF14 = 0
  loc_125FD87:     End If
  loc_125FD8B:     var_CC = CVar(CLng(var_88)) 'Long
  loc_125FD93:     var_108 = CVar(CLng(&H1A)) 'Long
  loc_125FDB3:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_125FDCF:     If (var_118 = vbNullString) Then
  loc_125FDF7:       MsgBox(CVar("Tax Structure Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_125FE1D:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_125FE29:       Set var_9C = Me.FGrid
  loc_125FE3F:       Proc_338_91_125FF14 = 0
  loc_125FE45:     End If
  loc_125FE49:     var_CC = CVar(CLng(var_88)) 'Long
  loc_125FE51:     var_108 = CVar(CLng(&H1C)) 'Long
  loc_125FE71:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_125FE8D:     If (var_118 = vbNullString) Then
  loc_125FEB5:       MsgBox(CVar("A/C Name Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_125FEDB:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_125FEE7:       Set var_9C = Me.FGrid
  loc_125FEFD:       Proc_338_91_125FF14 = 0
  loc_125FF03:     End If
  loc_125FF03:   End If
  loc_125FF06: Next var_12C 'Integer
  loc_125FF0B: Proc_338_91_125FF14 = 
  loc_125FF11: GoTo loc_125FFAE
End Sub

Public Sub Proc_338_92_1021EB8
  'Data Table: 598674
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_1021C8D: Me.LblVPrefix.Caption = vbNullString
  loc_1021CA3: Set var_8C = Me.Txt
  loc_1021CA9: Call 0.Method_Proc_338_92_1021EB8C (var_8E, var_86)
  loc_1021CB9: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1021CCF:   Set var_8C = Me.Txt
  loc_1021CD5:   Call 0.Method_Proc_338_92_1021EB80 (CInt(var_86), var_98)
  loc_1021CDD:   var_98.Text = vbNullString
  loc_1021CF9:   Set var_8C = Me.Txt
  loc_1021CFF:   Call 0.Method_Proc_338_92_1021EB80 (CInt(var_86), var_98)
  loc_1021D07:   var_98.Tag = vbNullString
  loc_1021D16: Next var_92 'Byte
  loc_1021D2F: Me.FGrid.Rows = 1
  loc_1021D55: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_1021D5D: Set var_98 = Me.FGrid
  loc_1021D8A: Me.FGrid.FixedRows = 1
  loc_1021DA0: Set var_8C = Me.TxtPer
  loc_1021DA6: Call 0.Method_Proc_338_92_1021EB8C (var_8E, var_86, CByte(1))
  loc_1021DB3: For var_D0 = var_C8 To CByte(var_8E): FGrid.DispID_10000 = var_D0 'Byte
  loc_1021DC9:   Set var_8C = Me.TxtPer
  loc_1021DCF:   Call 0.Method_Proc_338_92_1021EB80 (CInt(var_86), var_98, vbNullString)
  loc_1021DD7:   var_98.Text = var_C8
  loc_1021DE6: Next var_D0 'Byte
  loc_1021DFA: Set var_8C = Me.TxtGt
  loc_1021E00: Call 0.Method_Proc_338_92_1021EB8C (var_8E, var_86)
  loc_1021E0D: For var_D4 =  To CByte(var_8E): CByte(1) = var_D4 'Byte
  loc_1021E23:   Set var_8C = Me.TxtGt
  loc_1021E29:   Call 0.Method_Proc_338_92_1021EB80 (CInt(var_86), var_98)
  loc_1021E31:   var_98.Text = vbNullString
  loc_1021E40: Next var_D4 'Byte
  loc_1021E64: Me.Global.LoadPicture var_A8, var_B8, var_E4, var_F4, var_104
  loc_1021E79: Me.BillImage.Picture = var_8C
  loc_1021E92: Me.BillImage.Tag = vbNullString
  loc_1021EAD: Me.FGCat.Rows = 0
  loc_1021EB5: Exit Sub
End Sub

Public Sub Proc_338_93_FEC938(arg_C) 'FEC938
  'Data Table: 598674
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_FEC75A: Set var_8C = Me.Txt
  loc_FEC760: Call 0.Method_Proc_338_93_FEC938C (var_8E, var_86)
  loc_FEC770: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FEC786:   Set var_8C = Me.Txt
  loc_FEC78C:   Call 0.Method_Proc_338_93_FEC9380 (CInt(var_86), var_98)
  loc_FEC794:   var_98.Enabled = arg_C
  loc_FEC7A3: Next var_92 'Byte
  loc_FEC7B7: Set var_8C = Me.TxtPer
  loc_FEC7BD: Call 0.Method_Proc_338_93_FEC938C (var_8E, var_86)
  loc_FEC7CA: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_FEC7E0:   Set var_8C = Me.TxtPer
  loc_FEC7E6:   Call 0.Method_Proc_338_93_FEC9380 (CInt(var_86), var_98)
  loc_FEC7EE:   var_98.Enabled = arg_C
  loc_FEC7FD: Next var_9C 'Byte
  loc_FEC811: Set var_8C = Me.TxtGt
  loc_FEC817: Call 0.Method_Proc_338_93_FEC938C (var_8E, var_86)
  loc_FEC824: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_FEC83A:   Set var_8C = Me.TxtGt
  loc_FEC840:   Call 0.Method_Proc_338_93_FEC9380 (CInt(var_86), var_98)
  loc_FEC848:   var_98.Enabled = arg_C
  loc_FEC857: Next var_A0 'Byte
  loc_FEC86A: Me.FrInVoiceType.Enabled = arg_C
  loc_FEC87F: Me.FrPayable.Enabled = arg_C
  loc_FEC894: Set var_8C = Me.Txt
  loc_FEC89A: Call 0.Method_Proc_338_93_FEC9380 (CInt(0), var_98)
  loc_FEC8A2: var_98.Enabled = False
  loc_FEC8BB: Set var_8C = Me.Txt
  loc_FEC8C1: Call 0.Method_Proc_338_93_FEC9380 (CInt(2), var_98)
  loc_FEC8C9: var_98.Enabled = False
  loc_FEC8D9: Set var_8C = Me.TopCtrl1
  loc_FEC8DF: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_FEC8F8: If (CStr() = "Edit") Then
  loc_FEC908:   Set var_8C = Me.Txt
  loc_FEC90E:   Call 0.Method_Proc_338_93_FEC9380 (CInt(1), var_98)
  loc_FEC916:   var_98.Enabled = False
  loc_FEC92E:   Me.FrInVoiceType.Enabled = False
  loc_FEC936: End If
  loc_FEC936: Exit Sub
End Sub

Public Sub Proc_338_94_FDE1A4
  'Data Table: 598674
  loc_FDDFD8: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FDDFEA:   Me.DGItem.Visible = False
  loc_FDDFF2: End If
  loc_FDE00E: If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_FDE020:   Me.DgMR.Visible = False
  loc_FDE028: End If
  loc_FDE044: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FDE056:   Me.FGPoint.Visible = False
  loc_FDE05E: End If
  loc_FDE07A: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_FDE08C:   Me.DGParty.Visible = False
  loc_FDE094: End If
  loc_FDE0B0: If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_FDE0C2:   Me.DGPartyBillNo.Visible = False
  loc_FDE0CA: End If
  loc_FDE0E6: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_FDE0F8:   Me.DGVType.Visible = False
  loc_FDE100: End If
  loc_FDE11C: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_FDE12E:   Me.DGGod.Visible = False
  loc_FDE136: End If
  loc_FDE152: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_FDE164:   Me.DGTaxStru.Visible = False
  loc_FDE16C: End If
  loc_FDE188: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_FDE19A:   Me.DGSaleAc.Visible = False
  loc_FDE1A2: End If
  loc_FDE1A2: Exit Sub
End Sub

Public Sub Proc_338_95_F0B52C
  'Data Table: 598674
  loc_F0B450: Call Proc_338_94_FDE1A4()
  loc_F0B460: Set var_88 = Me.Txt
  loc_F0B466: Call 0.Method_Proc_338_95_F0B52C0 (CInt(3))
  loc_F0B48F: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0B492:   Exit Sub
  loc_F0B493: End If
  loc_F0B49E: Set var_88 = Me.Txt
  loc_F0B4A4: Call 0.Method_Proc_338_95_F0B52C0 (CInt(2), var_8C)
  loc_F0B4CD: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0B4D0:   Exit Sub
  loc_F0B4D1: End If
  loc_F0B508: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0B50B:   Call TopCtrl1_UnknownEvent_16()
  loc_F0B513: Else
  loc_F0B517:   Call 0.Method_arg_1E8 (var_88)
  loc_F0B51F:   Call var_88.SetFocus
  loc_F0B528: End If
  loc_F0B528: Exit Sub
  loc_F0B529: var_A0 = var_8C
End Sub

Public Sub Proc_338_96_10E9D58
  'Data Table: 598674
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_10E9A80: var_90 = global_132
  loc_10E9A97: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10E9AC8: Set var_A8 = Me.Txt
  loc_10E9ACE: Call 0.Method_Proc_338_96_10E9D580 (CInt(3), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E9ADD: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10E9AE5: var_EC = -1 & var_CC 
  loc_10E9AF9: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E9B04: Set var_8C = var_134
  loc_10E9B40: If (var_8C.RecordCount > 0) Then
  loc_10E9B7F:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E9BB3:     global_116 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E9BDE:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E9BF3:     var_CC = (var_AC.Value + 1)
  loc_10E9BFB:     global_120 = CInt(var_CC)
  loc_10E9C0C:   End If
  loc_10E9C0C: End If
  loc_10E9C37: var_BC = Space((5 - Len(var_90)))
  loc_10E9C3F: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10E9C53: var_EC = Space((5 - Len(global_116)))
  loc_10E9C5B: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E9C68: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_116))
  loc_10E9C81: var_14C = Space((8 - Len(CStr(global_120))))
  loc_10E9C89: var_15C = (var_130 + var_14C)
  loc_10E9C98: var_17C = (var_15C + CVar(CStr(global_120)))
  loc_10E9CA3: global_108 = CStr(var_17C)
  loc_10E9CD9: Me.LblVPrefix.Caption = global_116
  loc_10E9CF2: Set var_A8 = Me.Txt
  loc_10E9CF8: Call 0.Method_Proc_338_96_10E9D580 (CInt(0), var_AC)
  loc_10E9D00: var_AC.Text = global_108
  loc_10E9D22: Set var_A8 = Me.Txt
  loc_10E9D28: Call 0.Method_Proc_338_96_10E9D580 (CInt(2), var_AC)
  loc_10E9D30: var_AC.Text = CStr(global_120)
  loc_10E9D45: var_88 = global_108
  loc_10E9D4D: Set var_8C = Nothing
  loc_10E9D50: Proc_338_96_10E9D58 = global_120
End Sub

Public Sub Proc_338_97_10BA828(arg_C, arg_10, arg_14) '10BA828
  'Data Table: 598674
  Dim unk_598691 As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10BA596: If (arg_C = "RSBIL") Then
  loc_10BA5BD:   unk_598691.Execute "Select Distinct DocId,V_Type,V_No From Purch1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10BA5C8:   Set var_8C = var_C4
  loc_10BA5DB:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10BA5E1: Else
  loc_10BA5E6:   Proc_338_97_10BA828 = &HFF
  loc_10BA5EC: End If
  loc_10BA600: If (var_8C.RecordCount > 0) Then
  loc_10BA603:   ' Referenced from: 10BA77C
  loc_10BA612:   If Not(var_8C.EOF) Then
  loc_10BA61D:     If (var_90 = vbNullString) Then
  loc_10BA660:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10BA667:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10BA699:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10BA6BE:     Else
  loc_10BA6FA:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10BA71A:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10BA747:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10BA74C:       var_90 = CStr(var_11C)
  loc_10BA774:     End If
  loc_10BA777:     var_8C.MoveNext
  loc_10BA77C:     GoTo loc_10BA603
  loc_10BA77F:   End If
  loc_10BA785:   Call 0.Method_arg_50 (var_138)
  loc_10BA7E1:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10BA7E4:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10BA813:   Set var_8C = Nothing
  loc_10BA816:   Proc_338_97_10BA828 = 0
  loc_10BA81C: End If
  loc_10BA821: Proc_338_97_10BA828 = &HFF
End Sub

Public Sub Proc_338_98_FBE39C
  'Data Table: 598674
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBE21F: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FBE224:   var_92 = 2 'Byte
  loc_FBE228: End If
  loc_FBE231: Set var_98 = Me.TxtGrid
  loc_FBE237: Call 0.Method_Proc_338_98_FBE39C0 (0, var_B0)
  loc_FBE25A: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBE28E: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBE2B2:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBE2B5:     GoTo loc_FBE387
  loc_FBE2B8:   End If
  loc_FBE2BC:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBE2E6:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBE2F0:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBE325:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBE349:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBE362:     Set var_98 = Me.TxtGrid
  loc_FBE368:     Call 0.Method_Proc_338_98_FBE39C0 (0, var_B0, CVar(CLng(var_92)))
  loc_FBE370:     var_B0.SetFocus
  loc_FBE381:     Proc_338_98_FBE39C = 0
  loc_FBE387:     ' Referenced from: FBE2B5
  loc_FBE387:   End If
  loc_FBE38A: Next var_D4 'Integer
  loc_FBE394: Proc_338_98_FBE39C = &HFF
End Sub

Public Sub Proc_338_99_EA97CC(arg_C) 'EA97CC
  'Data Table: 598674
  Dim var_8C As Recordset15
  loc_EA9746: IStAdFunc
  loc_EA974D: Set var_8C = arg_C 
  loc_EA9775: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EA9785: var_8C.CursorType = 3
  loc_EA9792: var_8C.LockType = 3
  loc_EA97B1: var_8C.Open var_A0, var_B0, -1
  loc_EA97B8: Set var_8C = Nothing 
  loc_EA97BF: Set var_88 = arg_C 
  loc_EA97C3: Proc_338_99_EA97CC = -1
End Sub

Public Sub Proc_338_100_17D5938(arg_C) '17D5938
  'Data Table: 598674
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_AC As Variant
  Dim var_C0 As String
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim unk_598691 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_140 As Variant
  Dim var_B0 As Fields15
  Dim var_148 As Variant
  Dim var_138 As Boolean
  Dim var_144 As Fields15
  Dim var_190 As Variant
  Dim var_1A4 As TextBox
  loc_17D3858: Set var_90 = Me.TxtGt
  loc_17D385E: Call 0.Method_Proc_338_100_17D59380 (1, var_94)
  loc_17D3866: var_96 = var_94.TabIndex
  loc_17D386E: var_8A = var_96
  loc_17D3884: Set var_90 = Me.TxtPer
  loc_17D388A: Call 0.Method_Proc_338_100_17D5938C (var_96, var_8C)
  loc_17D3895: For var_9A = var_8A To var_96: 2 = var_9A 'Integer
  loc_17D38A7:   Set var_90 = Me.TxtPer
  loc_17D38AD:   Call 0.Method_Proc_338_100_17D59380 (var_8C, var_94)
  loc_17D38B5:   var_94.Visible = False
  loc_17D38CB:   Set var_90 = Me.TxtPer
  loc_17D38D1:   Call 0.Method_Proc_338_100_17D59380 (var_8C, var_94)
  loc_17D38E8:   If IsObject(CVar(var_94)) Then
  loc_17D38F5:     Set var_90 = Me.TxtPer
  loc_17D38FB:     Call 0.Method_Proc_338_100_17D59380 (var_8C, var_94)
  loc_17D390C:     Me.TxtPer.Unload var_94
  loc_17D3918:   End If
  loc_17D391B: Next var_9A 'Integer
  loc_17D392C: Set var_90 = Me.TxtGt
  loc_17D3932: Call 0.Method_Proc_338_100_17D5938C (var_96, var_8C)
  loc_17D393D: For var_B4 =  To var_96: 2 = var_B4 'Integer
  loc_17D394F:   Set var_90 = Me.TxtGt
  loc_17D3955:   Call 0.Method_Proc_338_100_17D59380 (var_8C, var_94)
  loc_17D395D:   var_94.Visible = False
  loc_17D3973:   Set var_90 = Me.TxtGt
  loc_17D3979:   Call 0.Method_Proc_338_100_17D59380 (var_8C)
  loc_17D3990:   If IsObject(CVar(var_94)) Then
  loc_17D399D:     Set var_90 = Me.TxtGt
  loc_17D39A3:     Call 0.Method_Proc_338_100_17D59380 (var_8C, var_94)
  loc_17D39B4:     Me.TxtGt.Unload var_94
  loc_17D39C0:   End If
  loc_17D39C3: Next var_B4 'Integer
  loc_17D39D4: Set var_90 = Me.LblCap
  loc_17D39DA: Call 0.Method_Proc_338_100_17D5938C (var_96, var_8C)
  loc_17D39E5: For var_B8 =  To var_96: 2 = var_B8 'Integer
  loc_17D39F7:   Set var_90 = Me.LblCap
  loc_17D39FD:   Call 0.Method_Proc_338_100_17D59380 (var_8C, var_94)
  loc_17D3A05:   var_94.Visible = False
  loc_17D3A1B:   Set var_90 = Me.LblCap
  loc_17D3A21:   Call 0.Method_Proc_338_100_17D59380 (var_8C)
  loc_17D3A29:   var_AC = CVar(var_94) 'Address
  loc_17D3A38:   If IsObject(var_AC) Then
  loc_17D3A45:     Set var_90 = Me.LblCap
  loc_17D3A4B:     Call 0.Method_Proc_338_100_17D59380 (var_8C, var_94)
  loc_17D3A5C:     Me.LblCap.Unload var_94
  loc_17D3A68:   End If
  loc_17D3A6B: Next var_B8 'Integer
  loc_17D3A74: Set var_90 = Me.TopCtrl1
  loc_17D3A7A: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_17D3A93: If (CStr() = "Add") Then
  loc_17D3AB1:   var_C0 = "Select * From SundryType WHERE V_Type='" & MemVar_1F92078 & "PURC' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='"
  loc_17D3ACD:   Proc_6_7_F25D88(var_AC, arg_C, CVar(var_C0 & MemVar_1F92078 & "PURC' aND AppDate<="))
  loc_17D3AEC:   unk_598691.Execute CStr(var_138 & var_AC & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_17D3AF7:   Set var_88 = var_90
  loc_17D3B18: Else
  loc_17D3B33:   var_C0 = "Select * From SundryType WHERE V_Type='" & MemVar_1F92078 & "PURC' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='"
  loc_17D3B4F:   Proc_6_7_F25D88(var_AC, arg_C, CVar(var_C0 & MemVar_1F92078 & "PURC' aND AppDate="))
  loc_17D3B6E:   unk_598691.Execute CStr(var_138 & var_AC & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_17D3B79:   Set var_88 = var_90
  loc_17D3B97: End If
  loc_17D3BAB: If (var_88.RecordCount > 0) Then
  loc_17D3BE7:   Set var_B0 = Me.Txt
  loc_17D3BED:   Call 0.Method_Proc_338_100_17D59380 (CInt(9), var_140)
  loc_17D3BF5:   var_140.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17D3C0B:   ' Referenced from: 17D5933
  loc_17D3C11:   var_96 = var_88.EOF
  loc_17D3C1A:   If Not(var_96) Then
  loc_17D3C59:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17D3C8D:       Set var_B0 = Me.LblDummy
  loc_17D3C93:       Call 0.Method_Proc_338_100_17D59388 (var_96)
  loc_17D3CAD:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17D3CE2:         Set var_B0 = Me.LblDummy
  loc_17D3CE8:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D3CF9:         Me.LblDummy.Load var_140
  loc_17D3D0C:       End If
  loc_17D3D57:       var_140 = var_88.Fields.Item("SNo")
  loc_17D3D6C:       Set var_144 = Me.LblDummy
  loc_17D3D72:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_140.Value), var_148)
  loc_17D3D7A:       var_148.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17D3DC9:       Set var_B0 = Me.TxtPer
  loc_17D3DCF:       Call 0.Method_Proc_338_100_17D59388 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D3DE9:       If (var_140 > CVar(var_96)) Then
  loc_17D3E1E:         Set var_B0 = Me.TxtPer
  loc_17D3E24:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D3E35:         Me.TxtPer.Load var_140
  loc_17D3E48:       End If
  loc_17D3E8D:       If (var_88.Fields.Item("SNo").Value > CVar(UBound(global_192, 1))) Then
  loc_17D3EC7:         ReDim Preserve global_192(0 To CLng(var_88.Fields.Item("SNo").Value))
  loc_17D3EDB:       End If
  loc_17D3F20:       If (var_88.Fields.Item("SNo").Value > CVar(UBound(global_196, 1))) Then
  loc_17D3F5A:         ReDim Preserve global_196(0 To CLng(var_88.Fields.Item("SNo").Value))
  loc_17D3F6E:       End If
  loc_17D3FD2:       global_192(CLng(var_88.Fields.Item("SNo").Value)) = CStr(Trim(CVar(var_88.Fields.Item("PostYn"))))
  loc_17D4030:       var_140 = var_88.Fields.Item("SNo")
  loc_17D4048:       global_196(CLng(var_140.Value)) = CStr(var_88.Fields.Item("Nature").Value)
  loc_17D4096:       Set var_B0 = Me.TxtPer
  loc_17D409C:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D40A4:       var_140.TabIndex = (var_8A + 1)
  loc_17D40BD:       var_8A = (var_8A + 1)
  loc_17D4101:       var_140 = var_88.Fields.Item("SNo")
  loc_17D4141:       Set var_144 = Me.TxtPer
  loc_17D4147:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_140.Value), var_148, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17D414F:       var_148.Visible = var_8A
  loc_17D41AE:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D420D:         var_114 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D4216:         Set var_18C = Me.TxtPer
  loc_17D421C:         Call 0.Method_Proc_338_100_17D59380 (CInt(True), var_190)
  loc_17D425E:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D4267:         Set var_B0 = Me.TxtPer
  loc_17D426D:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("Nature").Value), var_140)
  loc_17D4291:         Set var_1A0 = Me.TxtPer
  loc_17D4297:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_17D429F:         var_1A4.Top = ((var_140.Top + var_190.Height) + CDbl(&HF))
  loc_17D42C8:       End If
  loc_17D4304:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D4363:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D436C:         Set var_B0 = Me.TxtPer
  loc_17D4372:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("Nature").Value), var_140)
  loc_17D438D:         Set var_18C = Me.TxtPer
  loc_17D4393:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D439B:         var_190.Left = var_140.Left
  loc_17D43BA:       End If
  loc_17D4417:       var_148 = var_88.Fields.Item("SNo")
  loc_17D4464:       Set var_18C = Me.TxtPer
  loc_17D446A:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_148.Value), var_190)
  loc_17D4472:       var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17D44E5:       var_140 = var_88.Fields.Item("SNo")
  loc_17D44FA:       Set var_144 = Me.TxtPer
  loc_17D4500:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_140.Value), var_148)
  loc_17D4508:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17D455F:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D4596:         Set var_B0 = Me.TxtPer
  loc_17D459C:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D45A4:         var_140.FontBold = True
  loc_17D45BA:       Else
  loc_17D45EE:         Set var_B0 = Me.TxtPer
  loc_17D45F4:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D45FC:         var_140.FontBold = False
  loc_17D460F:       End If
  loc_17D4648:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D467F:         Set var_B0 = Me.TxtPer
  loc_17D4685:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D468D:         var_140.Enabled = False
  loc_17D46A3:       Else
  loc_17D46D7:         Set var_B0 = Me.TxtPer
  loc_17D46DD:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D46E5:         var_140.Enabled = True
  loc_17D46F8:       End If
  loc_17D46FC:       Set var_90 = Me.TopCtrl1
  loc_17D4702:       Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_140)
  loc_17D471B:       If (CStr() = "Browse") Then
  loc_17D4752:         Set var_B0 = Me.TxtPer
  loc_17D4758:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4760:         var_140.Enabled = False
  loc_17D4773:       End If
  loc_17D47AF:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17D47E6:         Set var_B0 = Me.TxtPer
  loc_17D47EC:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D47F4:         var_140.Enabled = False
  loc_17D4807:       End If
  loc_17D4838:       Set var_B0 = Me.LblCap
  loc_17D483E:       Call 0.Method_Proc_338_100_17D59388 (var_96)
  loc_17D4858:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17D488D:         Set var_B0 = Me.LblCap
  loc_17D4893:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D48A4:         Me.LblCap.Load var_140
  loc_17D48B7:       End If
  loc_17D48EB:       Set var_B0 = Me.LblCap
  loc_17D48F1:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D48F9:       var_140.Visible = True
  loc_17D4968:       Set var_B0 = Me.TxtPer
  loc_17D496E:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4989:       Set var_18C = Me.LblCap
  loc_17D498F:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D4997:       var_190.Top = var_140.Top
  loc_17D49F2:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D4A36:         var_148 = var_88.Fields.Item("SNo")
  loc_17D4A51:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D4A5A:         Set var_B0 = Me.LblCap
  loc_17D4A60:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4A7B:         Set var_18C = Me.LblCap
  loc_17D4A81:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_148.Value), var_190)
  loc_17D4A89:         var_190.Left = var_140.Left
  loc_17D4AA8:       End If
  loc_17D4B08:       Set var_144 = Me.LblCap
  loc_17D4B0E:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_17D4B16:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17D4B7F:       var_140 = var_88.Fields.Item("SNo")
  loc_17D4B94:       Set var_144 = Me.LblCap
  loc_17D4B9A:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_140.Value), var_148)
  loc_17D4BA2:       var_148.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17D4BF9:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D4C30:         Set var_B0 = Me.LblCap
  loc_17D4C36:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4C3E:         var_140.FontBold = True
  loc_17D4C54:       Else
  loc_17D4C88:         Set var_B0 = Me.LblCap
  loc_17D4C8E:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4C96:         var_140.FontBold = False
  loc_17D4CA9:       End If
  loc_17D4CDA:       Set var_B0 = Me.LblAt
  loc_17D4CE0:       Call 0.Method_Proc_338_100_17D59388 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D4CFA:       If (var_140 > CVar(var_96)) Then
  loc_17D4D2F:         Set var_B0 = Me.LblAt
  loc_17D4D35:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D4D46:         Me.LblAt.Load var_140
  loc_17D4D59:       End If
  loc_17D4D9A:       var_140 = var_88.Fields.Item("SNo")
  loc_17D4DDA:       Set var_144 = Me.LblAt
  loc_17D4DE0:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_140.Value), var_148)
  loc_17D4DE8:       var_148.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17D4E4C:       var_148 = var_88.Fields.Item("SNo")
  loc_17D4E67:       Set var_B0 = Me.TxtPer
  loc_17D4E6D:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4E88:       Set var_18C = Me.LblAt
  loc_17D4E8E:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_148.Value), var_190)
  loc_17D4E96:       var_190.Top = var_140.Top
  loc_17D4EEE:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D4F25:         Set var_B0 = Me.LblAt
  loc_17D4F2B:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4F33:         var_140.FontBold = True
  loc_17D4F49:       Else
  loc_17D4F7D:         Set var_B0 = Me.LblAt
  loc_17D4F83:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D4F8B:         var_140.FontBold = False
  loc_17D4F9E:       End If
  loc_17D4FE9:       var_140 = var_88.Fields.Item("SNo")
  loc_17D4FFE:       Set var_144 = Me.LblAt
  loc_17D5004:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_140.Value), var_148)
  loc_17D500C:       var_148.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_17D5066:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D50C5:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D50CE:         Set var_B0 = Me.LblAt
  loc_17D50D4:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("RoundOff").Value), var_140)
  loc_17D50EF:         Set var_18C = Me.LblAt
  loc_17D50F5:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D50FD:         var_190.Left = var_140.Left
  loc_17D511C:       End If
  loc_17D514D:       Set var_B0 = Me.TxtGt
  loc_17D5153:       Call 0.Method_Proc_338_100_17D59388 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D516D:       If (var_140 > CVar(var_96)) Then
  loc_17D51A2:         Set var_B0 = Me.TxtGt
  loc_17D51A8:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D51B9:         Me.TxtGt.Load var_140
  loc_17D51CC:       End If
  loc_17D5204:       Set var_B0 = Me.TxtGt
  loc_17D520A:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5212:       var_140.TabIndex = (var_8A + 1)
  loc_17D522B:       var_8A = (var_8A + 1)
  loc_17D5262:       Set var_B0 = Me.TxtGt
  loc_17D5268:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140, &HFF)
  loc_17D5270:       var_140.Visible = var_8A
  loc_17D52DF:       Set var_B0 = Me.TxtPer
  loc_17D52E5:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5300:       Set var_18C = Me.TxtGt
  loc_17D5306:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D530E:       var_190.Top = var_140.Top
  loc_17D5369:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D53C8:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D53D1:         Set var_B0 = Me.TxtGt
  loc_17D53D7:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D53F2:         Set var_18C = Me.TxtGt
  loc_17D53F8:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D5400:         var_190.Left = var_140.Left
  loc_17D541F:       End If
  loc_17D547C:       var_148 = var_88.Fields.Item("SNo")
  loc_17D54C9:       Set var_18C = Me.TxtGt
  loc_17D54CF:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_148.Value), var_190)
  loc_17D54D7:       var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17D5547:       var_140 = var_88.Fields.Item("SNo")
  loc_17D555C:       Set var_144 = Me.TxtGt
  loc_17D5562:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_140.Value), var_148)
  loc_17D556A:       var_148.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17D55BF:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D55F6:         Set var_B0 = Me.TxtGt
  loc_17D55FC:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5604:         var_140.FontBold = True
  loc_17D561A:       Else
  loc_17D564E:         Set var_B0 = Me.TxtGt
  loc_17D5654:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D565C:         var_140.FontBold = False
  loc_17D566F:       End If
  loc_17D56A8:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D56DF:         Set var_B0 = Me.TxtGt
  loc_17D56E5:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D56ED:         var_140.Enabled = False
  loc_17D5703:       Else
  loc_17D5737:         Set var_B0 = Me.TxtGt
  loc_17D573D:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5745:         var_140.Enabled = True
  loc_17D5758:       End If
  loc_17D578D:       Set var_B0 = Me.LblCap
  loc_17D5793:       Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D57C4:       If (var_140.Tag = MemVar_1F92070 & "ROFF") Then
  loc_17D57FB:         Set var_B0 = Me.TxtGt
  loc_17D5801:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5809:         var_140.Enabled = False
  loc_17D581C:       End If
  loc_17D5820:       Set var_90 = Me.TopCtrl1
  loc_17D5826:       Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_140)
  loc_17D583F:       If (CStr() = "Browse") Then
  loc_17D5876:         Set var_B0 = Me.TxtGt
  loc_17D587C:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5884:         var_140.Enabled = False
  loc_17D5897:       End If
  loc_17D58D3:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17D590A:         Set var_B0 = Me.TxtGt
  loc_17D5910:         Call 0.Method_Proc_338_100_17D59380 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D5918:         var_140.Enabled = False
  loc_17D592B:       End If
  loc_17D592B:     End If
  loc_17D592E:     var_88.MoveNext
  loc_17D5933:     GoTo loc_17D3C0B
  loc_17D5936:   End If
  loc_17D5936: End If
  loc_17D5936: Exit Sub
End Sub

Public Sub Proc_338_101_17C5094(arg_C) '17C5094
  'Data Table: 598674
  Dim var_1A4 As Variant
  Dim var_C0 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim unk_598691 As Connection15
  Dim var_190 As Variant
  Dim var_194 As Variant
  Dim var_1A8 As Variant
  Dim var_B4 As Variant
  Dim var_2A8 As Double
  Dim var_1E0 As Variant
  Dim var_E8 As Variant
  Dim var_C8 As String
  Dim var_2B0 As Double
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_2B8 As Double
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_240 As Variant
  Dim var_18C As Variant
  Dim var_2D4 As Double
  Dim var_2C4 As Variant
  Dim var_2E8 As Variant
  Dim var_90 As Double
  Dim var_B0 As Recordset15
  Dim var_9C As Double
  Dim var_A8 As Double
  loc_17C30AE: global_208 = CDbl(0)
  loc_17C30BD: Set var_B4 = Me.TxtGt
  loc_17C30C3: Call 0.Method_Proc_338_101_17C50948 (var_B6, var_86)
  loc_17C30CE: For var_BA = global_208 To var_B6: 1 = var_BA 'Integer
  loc_17C310E:   Set var_B4 = Me.LblCap
  loc_17C3114:   Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C8, CVar("Select IsNull(Max(Nature),'') from SundryType Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND SundryCode='"), var_18C, -1)
  loc_17C315C:   unk_598691.Execute CStr(var_194 & Trim(CVar(var_C8)) & "' And V_Type='" & CVar(MemVar_1F92078) & "PURC'"), 0, var_1A8
  loc_17C316C:    = var_194.Item(global_208)
  loc_17C3174:    = var_1A8.Value
  loc_17C3181:   var_A0 = Proc_6_38_E68A98(var_C4.Tag.Fields)
  loc_17C31B5:   If (var_A0 = "Addition") Then
  loc_17C31B8:     GoTo loc_17C3290
  loc_17C31BB:   End If
  loc_17C31C3:   If (var_A0 = "Deduction") Then
  loc_17C31C6:     GoTo loc_17C3290
  loc_17C31C9:   End If
  loc_17C31D1:   If (var_A0 = "Discount") Then
  loc_17C31E1:     Set var_B4 = Me.TxtGt
  loc_17C31E7:     Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C31EF:     var_C4.Text = vbNullString
  loc_17C3200:     var_92 = CByte(var_86) 'Byte
  loc_17C3207:   Else
  loc_17C322A:     If ((((var_A0 = "Sale Tax") Or (var_A0 = "CGST")) Or (var_A0 = "SGST")) Or (var_A0 = "IGST")) Then
  loc_17C323A:       Set var_B4 = Me.TxtGt
  loc_17C3240:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C3248:       var_C4.Text = vbNullString
  loc_17C3259:       var_94 = CByte(var_86) 'Byte
  loc_17C3263:       global_96 = var_86
  loc_17C3269:     Else
  loc_17C3276:       Set var_B4 = Me.TxtGt
  loc_17C327C:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C3284:       var_C4.Text = vbNullString
  loc_17C3290:     End If
  loc_17C3290:   End If
  loc_17C3290:   ' Referenced from: 17C31C6
  loc_17C3290:   ' Referenced from: 17C31B8
  loc_17C3293: Next var_BA 'Integer
  loc_17C32AB: Me.FGCat.Rows = 1
  loc_17C32BF: Set var_B4 = Me.TxtGt
  loc_17C32C5: Call 0.Method_Proc_338_101_17C50948 (var_B6, var_86)
  loc_17C32D0: For var_1BC =  To var_B6: 2 = var_1BC 'Integer
  loc_17C32E3:   Set var_B4 = Me.LblCap
  loc_17C32E9:   Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C3323:   Set var_190 = Me.LblCap
  loc_17C3329:   Call 0.Method_Proc_338_101_17C50940 (var_86, var_194)
  loc_17C3376:   If CBool((Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) And (Trim(CVar(var_194.Tag)) <> CVar(MemVar_1F92078 & "ADD"))) Then
  loc_17C3386:     Set var_B4 = Me.TxtGt
  loc_17C338C:     Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C3394:     var_C4.Text = vbNullString
  loc_17C33AA:     If (var_94 > var_92) Then
  loc_17C33D2:       For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1C0 'Integer
  loc_17C33E5:         Set var_B4 = Me.LblCap
  loc_17C33EB:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C3426:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_17C342D:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3435:           var_158 = CVar(CLng(&H14)) 'Long
  loc_17C344F:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C3460:           If (var_C0 = "Y") Then
  loc_17C3467:             var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3481:             Set var_B4 = Me.TxtPer
  loc_17C3487:             Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0, CVar(CLng(&HF)))
  loc_17C348F:             var_118 = var_C4.Text
  loc_17C349E:             var_D8 = CVar(CStr(Val(var_C0))) 'String
  loc_17C34A6:             Set var_190 = Me.FGrid
  loc_17C34AC:             LateIdCallSt
  loc_17C34C3:           End If
  loc_17C34C3:         End If
  loc_17C34C7:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C34CF:         var_158 = CVar(CLng(5)) 'Long
  loc_17C34F8:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C3500:         var_1E0 = CVar(CLng(9)) 'Long
  loc_17C3529:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C3531:         var_220 = CVar(CLng(&HF)) 'Long
  loc_17C355A:         var_260 = CVar(CLng(var_88)) 'Long
  loc_17C3562:         var_280 = CVar(CLng(&H10)) 'Long
  loc_17C358B:         var_108 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_17C359B:         var_168 = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_17C35A3:         Set var_194 = Me.FGrid
  loc_17C35A9:         LateIdCallSt
  loc_17C35DA:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C35E2:         var_158 = CVar(CLng(&HF)) 'Long
  loc_17C3612:         If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_17C3619:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3621:           var_158 = CVar(CLng(5)) 'Long
  loc_17C364A:           var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C3652:           var_1E0 = CVar(CLng(9)) 'Long
  loc_17C3688:           global_208 = (global_208 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_17C36A0:         End If
  loc_17C36A4:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C36AC:         var_1E0 = CVar(CLng(5)) 'Long
  loc_17C36D5:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C36DD:         var_220 = CVar(CLng(&HB)) 'Long
  loc_17C36E6:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C36EE:         var_158 = CVar(CLng(9)) 'Long
  loc_17C371E:         Set var_190 = Me.FGrid
  loc_17C3724:         LateIdCallSt
  loc_17C3751:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C3782:         Set var_C4 = Me.LblDummy
  loc_17C3788:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_158, CVar(CLng(var_88)), var_190, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_17C3790:         var_190.Caption = var_158
  loc_17C37AC:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C37B4:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C37CE:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C37DD:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C37E5:         var_1E0 = CVar(CLng(&H10)) 'Long
  loc_17C37EE:         Set var_C4 = Me.FGrid
  loc_17C380E:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C3816:         var_220 = CVar(CLng(&H12)) 'Long
  loc_17C3838:         var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C3847:         var_280 = CVar(CLng(&H13)) 'Long
  loc_17C386C:         var_108 = CVar(((Val(var_C0) - Val(CStr(var_C4.TextMatrix)))) + var_2B8)) 'Double
  loc_17C388A:         LateIdCallSt
  loc_17C38C4:         Set var_B4 = Me.LblCap
  loc_17C38CA:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0, Me.FGrid, CVar(CStr(Format(var_108, "0.00"))), 1, 1)
  loc_17C38D2:         var_280 = var_C4.Tag
  loc_17C3905:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_17C3915:           Set var_B4 = Me.TxtGt
  loc_17C391B:           Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0, CVar(CLng(var_88)), var_2B8)
  loc_17C3923:           var_220 = var_C4.Text
  loc_17C3937:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3961:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C3980:           var_E8 = CVar((Val(var_C0) + var_2B0)) 'Double
  loc_17C399D:           Set var_194 = Me.TxtGt
  loc_17C39A3:           Call 0.Method_Proc_338_101_17C50940 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C0)), "0.00")), 1, 1, var_2B0)
  loc_17C39AB:           var_1A8.Text = CVar(CLng(&H10))
  loc_17C39D1:         End If
  loc_17C39D4:       Next var_1C0 'Integer
  loc_17C39DC:     Else
  loc_17C3A01:       For var_2BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_2BC 'Integer
  loc_17C3A14:         Set var_B4 = Me.LblCap
  loc_17C3A1A:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C3A55:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_17C3A5C:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3A64:           var_158 = CVar(CLng(&H14)) 'Long
  loc_17C3A7E:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C3A8F:           If (var_C0 = "Y") Then
  loc_17C3A96:             var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3AB0:             Set var_B4 = Me.TxtPer
  loc_17C3AB6:             Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0, CVar(CLng(&HF)))
  loc_17C3ABE:             var_118 = var_C4.Text
  loc_17C3ACD:             var_D8 = CVar(CStr(Val(var_C0))) 'String
  loc_17C3AD5:             Set var_190 = Me.FGrid
  loc_17C3ADB:             LateIdCallSt
  loc_17C3AF2:           End If
  loc_17C3AF2:         End If
  loc_17C3B2F:         Set var_C4 = Me.LblDummy
  loc_17C3B35:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_17C3B3D:         var_190.Caption = var_190
  loc_17C3B59:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3B61:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C3B8A:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C3B92:         var_1E0 = CVar(CLng(&HF)) 'Long
  loc_17C3B9B:         Set var_C4 = Me.FGrid
  loc_17C3BBB:         var_220 = CVar(CLng(var_88)) 'Long
  loc_17C3BC3:         var_240 = CVar(CLng(&H10)) 'Long
  loc_17C3BF8:         var_148 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_C4.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_17C3C00:         Set var_190 = Me.FGrid
  loc_17C3C06:         LateIdCallSt
  loc_17C3C31:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3C39:         var_158 = CVar(CLng(&HF)) 'Long
  loc_17C3C69:         If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_17C3C70:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3C78:           var_158 = CVar(CLng(&HB)) 'Long
  loc_17C3C92:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C3C9A:           var_2A8 = Val(var_C0)
  loc_17C3CAA:           global_208 = (global_208 + var_2A8)
  loc_17C3CB6:         End If
  loc_17C3CC3:         Set var_B4 = Me.LblCap
  loc_17C3CC9:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0, global_208, var_2A8, var_158, var_118)
  loc_17C3CD1:         var_158 = var_C4.Tag
  loc_17C3D04:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F92070 & "DIS")) Then
  loc_17C3D14:           Set var_B4 = Me.TxtGt
  loc_17C3D1A:           Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0, var_118, var_190)
  loc_17C3D22:           var_148 = var_C4.Text
  loc_17C3D36:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C3D60:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C3D7F:           var_E8 = CVar((Val(var_C0) + var_2B0)) 'Double
  loc_17C3D9C:           Set var_194 = Me.TxtGt
  loc_17C3DA2:           Call 0.Method_Proc_338_101_17C50940 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C0)), "0.00")), 1, 1, var_2B0)
  loc_17C3DAA:           var_1A8.Text = CVar(CLng(&H10))
  loc_17C3DD0:         End If
  loc_17C3DD3:       Next var_2BC 'Integer
  loc_17C3DD8:     End If
  loc_17C3DD8:   End If
  loc_17C3DDB: Next var_1BC 'Integer
  loc_17C3E05: For var_2C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C0 'Integer
  loc_17C3E0F:   var_118 = CVar(CLng(var_86)) 'Long
  loc_17C3E17:   var_158 = CVar(CLng(5)) 'Long
  loc_17C3E40:   var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C3E48:   var_1E0 = CVar(CLng(9)) 'Long
  loc_17C3E71:   var_220 = CVar(CLng(var_86)) 'Long
  loc_17C3E79:   var_240 = CVar(CLng(&HB)) 'Long
  loc_17C3EAA:   var_148 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_17C3EB2:   Set var_190 = Me.FGrid
  loc_17C3EB8:   LateIdCallSt
  loc_17C3EF2:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C3EFA:   var_158 = CVar(CLng(6)) 'Long
  loc_17C3F32:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_17C3F48:     var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C3F50:     var_158 = CVar(CLng(6)) 'Long
  loc_17C3F59:     var_E8 = CVar(CStr(1)) 'String
  loc_17C3F61:     Set var_C4 = Me.FGrid
  loc_17C3F67:     LateIdCallSt
  loc_17C3F7D:   End If
  loc_17C3F90:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C3F98:   var_158 = CVar(CLng(6)) 'Long
  loc_17C3FA1:   Set var_C4 = Me.FGrid
  loc_17C3FB2:   var_C0 = CStr(var_C4.TextMatrix))
  loc_17C3FD0:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C3FD8:   var_1E0 = CVar(CLng(5)) 'Long
  loc_17C4001:   Set var_1A8 = Me.FGrid
  loc_17C4010:   var_220 = CVar(CLng(var_1A8.Row)) 'Long
  loc_17C4018:   var_240 = CVar(CLng(7)) 'Long
  loc_17C4051:   Set var_2C4 = Me.FGrid
  loc_17C4057:   LateIdCallSt
  loc_17C4096:   Set var_B4 = Me.TxtGt
  loc_17C409C:   Call 0.Method_Proc_338_101_17C50940 (1, var_C4, var_C0, var_2C4, CVar(CStr(Format(CVar((Val(var_C0) * Val(CStr(Me.FGrid.TextMatrix))))), "0.000"))), 1, 1)
  loc_17C40A4:   var_240 = var_C4.Text
  loc_17C40B1:   var_2A8 = Val(var_C0)
  loc_17C40E2:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C4101:   var_E8 = CVar((var_2A8 + var_2B0)) 'Double
  loc_17C411D:   Set var_194 = Me.TxtGt
  loc_17C4123:   Call 0.Method_Proc_338_101_17C50940 (1, var_1A8, CStr(Format(var_C4.TextMatrix), "0.00")), 1, 1, var_2B0, CVar(CLng(&HB)))
  loc_17C412B:   var_1A8.Text = CVar(CLng(var_86))
  loc_17C4154: Next var_2C0 'Integer
  loc_17C416C: Me.FGCat.Rows = 1
  loc_17C4199: For var_2C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C8 'Integer
  loc_17C41A9:   If (var_94 > var_92) Then
  loc_17C41B0:     var_118 = CVar(CLng(var_86)) 'Long
  loc_17C41B8:     var_158 = CVar(CLng(&H1A)) 'Long
  loc_17C41D7:     var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C41DF:     var_1E0 = CVar(CLng(9)) 'Long
  loc_17C4208:     var_200 = CVar(CLng(var_86)) 'Long
  loc_17C4210:     var_220 = CVar(CLng(5)) 'Long
  loc_17C424A:     Set var_194 = Me.FGrid
  loc_17C4263:     var_2D4 = Val(CStr(var_194.TextMatrix)))
  loc_17C4286:     var_128 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_2D4)) 'Double
  loc_17C42A5:     Call Proc_338_105_1714250(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00")), 1, 1, var_2D4, CVar(CLng(&H10)), CVar(CLng(var_86)))
  loc_17C42D4:   Else
  loc_17C42D8:     var_118 = CVar(CLng(var_86)) 'Long
  loc_17C42E0:     var_158 = CVar(CLng(&H1A)) 'Long
  loc_17C42FF:     var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C4307:     var_1E0 = CVar(CLng(9)) 'Long
  loc_17C4310:     Set var_C4 = Me.FGrid
  loc_17C435A:     var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C4398:     Call Proc_338_105_1714250(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(var_C4.TextMatrix))) * var_2B8)), "0.00")), 1, 1, var_2B8, CVar(CLng(5)), CVar(CLng(var_86)))
  loc_17C43BE:   End If
  loc_17C43C1: Next var_2C8 'Integer
  loc_17C43CA: Set var_B4 = Me.TopCtrl1
  loc_17C43D0: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_17C43E9: If (CStr() = "Add") Then
  loc_17C43F8:   Set var_B4 = Me.TxtGt
  loc_17C43FE:   Call 0.Method_Proc_338_101_17C50948 (var_B6, var_86)
  loc_17C4409:   For var_2D8 =  To var_B6: 2 = var_2D8 'Integer
  loc_17C441C:     Set var_B4 = Me.TxtPer
  loc_17C4422:     Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C442A:     var_B6 = var_C4.Visible
  loc_17C4446:     Set var_190 = Me.LblCap
  loc_17C444C:     Call 0.Method_Proc_338_101_17C50940 (var_86, var_194)
  loc_17C4454:     var_C0 = var_194.Tag
  loc_17C448A:     Set var_1A8 = Me.LblCap
  loc_17C4490:     Call 0.Method_Proc_338_101_17C50940 (var_86, var_2C4)
  loc_17C44BD:     var_2E8 = (var_B6 = &HFF) And (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "SCH")) And (Trim(CVar(var_2C4.Tag)) <> CVar(MemVar_1F92078 & "ADD"))
  loc_17C44E3:     If CBool(var_2E8) Then
  loc_17C44EC:       Call Proc_338_102_1198B74(var_86)
  loc_17C44F4:       var_90 = var_2A8
  loc_17C4504:       Set var_B4 = Me.TxtPer
  loc_17C450A:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0)
  loc_17C4512:       var_90 = var_C4.Text
  loc_17C451F:       var_2A8 = Val(var_C0)
  loc_17C4551:       var_C8 = CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00"))
  loc_17C455F:       Set var_190 = Me.TxtGt
  loc_17C4565:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_194, var_C8, 1)
  loc_17C456D:       var_194.Text = 1
  loc_17C459F:       Set var_B4 = Me.LblDummy
  loc_17C45A5:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, CStr(var_90))
  loc_17C45AD:       var_C4.Caption = var_2A8
  loc_17C45BC:     End If
  loc_17C45BF:   Next var_2D8 'Integer
  loc_17C45C4: End If
  loc_17C45E3: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_17C45F9:   Me.FGCat.FixedRows = 1
  loc_17C4601: End If
  loc_17C462F: For var_2EC = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_2EC 'Integer
  loc_17C4641:   Set var_B4 = Me.TxtGt
  loc_17C4647:   Call 0.Method_Proc_338_101_17C50948 (var_B6, var_86, 1)
  loc_17C4652:   For var_2F0 = CDbl(0) To var_B6: 0 = var_2F0 'Integer
  loc_17C4665:     Set var_B4 = Me.LblDummy
  loc_17C466B:     Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C468D:     var_118 = CVar(CLng(var_88)) 'Long
  loc_17C46C4:     Set var_194 = Me.LblCap
  loc_17C46CA:     Call 0.Method_Proc_338_101_17C50940 (var_86, var_1A8, var_C8, (CVar(CLng(2)) = CVar(CStr(Me.FGCat.TextMatrix)))))
  loc_17C46D2:     var_118 = var_1A8.Tag
  loc_17C471B:     If CBool(Trim(CVar(var_C4.Tag)) And (Trim(CVar(var_C8)) <> CVar(MemVar_1F92078 & "ADD"))) Then
  loc_17C472B:       Set var_B4 = Me.TxtGt
  loc_17C4731:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C4739:       var_C0 = var_C4.Text
  loc_17C4746:       var_2A8 = Val(var_C0)
  loc_17C474D:       var_118 = CVar(CLng(var_88)) 'Long
  loc_17C4755:       var_158 = CVar(CLng(6)) 'Long
  loc_17C4777:       var_2B0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17C4796:       var_E8 = CVar((var_2A8 + var_2B0)) 'Double
  loc_17C47B3:       Set var_194 = Me.TxtGt
  loc_17C47B9:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C4.Tag)), "0.00")), 1, 1)
  loc_17C47C1:       var_1A8.Text = var_2B0
  loc_17C47EA:     Else
  loc_17C47F7:       Set var_B4 = Me.TxtPer
  loc_17C47FD:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_B6, var_158)
  loc_17C4805:       var_118 = var_C4.Visible
  loc_17C4817:       If (var_B6 = &HFF) Then
  loc_17C4820:         Call Proc_338_102_1198B74(var_86, var_2A8)
  loc_17C4828:         var_90 = var_2A8
  loc_17C4838:         Set var_B4 = Me.TxtPer
  loc_17C483E:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0)
  loc_17C4846:         var_90 = var_C4.Text
  loc_17C4853:         var_2A8 = Val(var_C0)
  loc_17C4893:         Set var_190 = Me.TxtGt
  loc_17C4899:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_194, CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00")), 1)
  loc_17C48A1:         var_194.Text = 1
  loc_17C48D3:         Set var_B4 = Me.LblDummy
  loc_17C48D9:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, CStr(var_90))
  loc_17C48E1:         var_C4.Caption = var_2A8
  loc_17C48F0:       End If
  loc_17C48F0:     End If
  loc_17C48F3:   Next var_2F0 'Integer
  loc_17C48FB: Next var_2EC 'Integer
  loc_17C490C: Set var_B4 = Me.TxtGt
  loc_17C4912: Call 0.Method_Proc_338_101_17C50948 (var_B6, var_86)
  loc_17C491D: For var_2F4 =  To var_B6: 2 = var_2F4 'Integer
  loc_17C4930:   Set var_B4 = Me.LblCap
  loc_17C4936:   Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C4946:   var_D8 = CVar(var_C4.Tag) 'String
  loc_17C4971:   If (Trim(var_D8) = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_17C497A:     Call Proc_338_102_1198B74(var_86)
  loc_17C4982:     var_90 = var_2A8
  loc_17C499D:     Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, CStr(var_90))
  loc_17C49A5:     var_C4.Caption = var_90
  loc_17C49CA:     unk_598691.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Purchase Bill'", var_D8, -1
  loc_17C49D5:     Set var_B0 = Me.LblDummy
  loc_17C49F2:     If (var_B0.RecordCount > 0) Then
  loc_17C4A04:       var_B4 = var_B0.Fields
  loc_17C4A0C:       var_C4 = var_B4.Item("RoundOffType")
  loc_17C4A38:       Proc_6_85_1261068(var_90, CByte(2), CStr(Left(CVar(var_C4), 1)))
  loc_17C4A75:       Set var_190 = Me.TxtGt
  loc_17C4A7B:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_194, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_17C4A83:       var_194.Text = 1
  loc_17C4AA8:     Else
  loc_17C4AAB:       var_C0 = "S"
  loc_17C4ABC:       Proc_6_85_1261068(var_90, CByte(2), var_C0)
  loc_17C4AEB:       var_C8 = CStr(Format(CVar(var_2A8), "0.00"))
  loc_17C4AF9:       Set var_B4 = Me.TxtGt
  loc_17C4AFF:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C8, 1)
  loc_17C4B07:       var_C4.Text = 1
  loc_17C4B23:     End If
  loc_17C4B26:   Else
  loc_17C4B2D:     If (var_86 <> arg_C) Then
  loc_17C4B3D:       Set var_B4 = Me.LblCap
  loc_17C4B43:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0)
  loc_17C4B4B:       var_2A8 = var_C4.Tag
  loc_17C4B7D:       Set var_190 = Me.LblCap
  loc_17C4B83:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_194, var_C8)
  loc_17C4B8B:       (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "TOT")) = var_194.Tag
  loc_17C4BD0:       If CBool(var_2A8 Or (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "NET"))) Then
  loc_17C4BD9:         Call Proc_338_102_1198B74(var_86)
  loc_17C4C13:         Set var_B4 = Me.TxtGt
  loc_17C4C19:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, CStr(Format(CVar(var_2A8), "0.00")))
  loc_17C4C21:         var_C4.Text = 1
  loc_17C4C39:       End If
  loc_17C4C39:     End If
  loc_17C4C39:   End If
  loc_17C4C3C: Next var_2F4 'Integer
  loc_17C4C4D: Set var_B4 = Me.TxtGt
  loc_17C4C53: Call 0.Method_Proc_338_101_17C50948 (var_B6, var_86)
  loc_17C4C5E: For var_2FC =  To var_B6: 1 = var_2FC 'Integer
  loc_17C4C6F:   var_300 = global_196(CLng(var_86))
  loc_17C4C7A:   If Not (var_300 = "Addition") Then
  loc_17C4C85:     If Not (var_300 = "Deduction") Then
  loc_17C4C90:       If Not (var_300 = "Discount") Then
  loc_17C4C9B:         If Not (var_300 = "Luxury Tax") Then
  loc_17C4CA6:           If Not (var_300 = "Sale Tax") Then
  loc_17C4CB1:             If Not (var_300 = "Service Charge") Then
  loc_17C4CBC:               If (var_300 = "Service Tax") Then
  loc_17C4CBF:               End If
  loc_17C4CBF:             End If
  loc_17C4CBF:           End If
  loc_17C4CBF:         End If
  loc_17C4CBF:       End If
  loc_17C4CBF:     End If
  loc_17C4CCF:     If (global_192(CLng(var_86)) = "No") Then
  loc_17C4CD9:       Set var_B4 = Me.TxtGt
  loc_17C4CDF:       Call 0.Method_Proc_338_101_17C50948 (var_B6)
  loc_17C4CF1:       Set var_C4 = Me.TxtGt
  loc_17C4CF7:       Call 0.Method_Proc_338_101_17C50940 (var_B6, var_190)
  loc_17C4D0B:       Set var_194 = Me.TxtGt
  loc_17C4D11:       Call 0.Method_Proc_338_101_17C50948 (var_302)
  loc_17C4D23:       Set var_1A8 = Me.TxtGt
  loc_17C4D29:       Call 0.Method_Proc_338_101_17C50940 (var_302, var_2C4)
  loc_17C4D61:       var_F8 = Mid(CVar(var_190.Tag), (InStr(1, var_2C4.Tag, CStr(var_86), 0) - 1), 1)
  loc_17C4D69:       var_138 = "-"
  loc_17C4D90:       If (Format(CVar(var_2A8), "0.00") = "0.00") Then
  loc_17C4DA0:         Set var_B4 = Me.TxtGt
  loc_17C4DA6:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C4DAE:         var_C0 = var_C4.Text
  loc_17C4DC5:         var_9C = (var_9C - Val(var_C0))
  loc_17C4DD5:       Else
  loc_17C4DE2:         Set var_B4 = Me.TxtGt
  loc_17C4DE8:         Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0)
  loc_17C4DF0:         var_9C = var_C4.Text
  loc_17C4E07:         var_9C = (var_9C + Val(var_C0))
  loc_17C4E14:       End If
  loc_17C4E14:     End If
  loc_17C4E1B:     Set var_B4 = Me.TxtGt
  loc_17C4E21:     Call 0.Method_Proc_338_101_17C50948 (var_B6, var_9C)
  loc_17C4E33:     Set var_C4 = Me.TxtGt
  loc_17C4E39:     Call 0.Method_Proc_338_101_17C50940 (var_B6, var_190, var_C0)
  loc_17C4E41:     var_2A8 = var_190.Tag
  loc_17C4E4D:     Set var_194 = Me.TxtGt
  loc_17C4E53:     Call 0.Method_Proc_338_101_17C50948 (var_302)
  loc_17C4E65:     Set var_1A8 = Me.TxtGt
  loc_17C4E6B:     Call 0.Method_Proc_338_101_17C50940 (var_302, var_2C4)
  loc_17C4EA3:     var_F8 = Mid(CVar(var_C0), (InStr(1, var_2C4.Tag, CStr(var_86), 0) - 1), 1)
  loc_17C4EAB:     var_138 = "-"
  loc_17C4ED2:     If (Format(CVar(var_2A8), "0.00") = "0.00") Then
  loc_17C4EE2:       Set var_B4 = Me.TxtGt
  loc_17C4EE8:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4)
  loc_17C4EF0:       var_C0 = var_C4.Text
  loc_17C4F07:       var_A8 = (var_A8 - Val(var_C0))
  loc_17C4F17:     Else
  loc_17C4F24:       Set var_B4 = Me.TxtGt
  loc_17C4F2A:       Call 0.Method_Proc_338_101_17C50940 (var_86, var_C4, var_C0)
  loc_17C4F32:       var_A8 = var_C4.Text
  loc_17C4F49:       var_A8 = (var_A8 + Val(var_C0))
  loc_17C4F56:     End If
  loc_17C4F56:   End If
  loc_17C4F59: Next var_2FC 'Integer
  loc_17C4F78: Set var_C4 = Me.TxtGt
  loc_17C4F7E: Call 0.Method_Proc_338_101_17C50948 (var_B6)
  loc_17C4F90: Set var_190 = Me.TxtGt
  loc_17C4F96: Call 0.Method_Proc_338_101_17C50940 (var_B6, var_194)
  loc_17C4F9E: var_C0 = var_194.Text
  loc_17C4FDD: Call Proc_338_110_10B20C4(CByte((CLng(Me.FGrid.Rows) - 1)), CByte(1), &HB, var_9C)
  loc_17C4FFD: var_D8 = Me.FGrid.Rows
  loc_17C500D: Set var_C4 = Me.TxtGt
  loc_17C5013: Call 0.Method_Proc_338_101_17C50948 (var_B6, var_D8, Val(var_C0))
  loc_17C5025: Set var_190 = Me.TxtGt
  loc_17C502B: Call 0.Method_Proc_338_101_17C50940 (var_B6, var_194, var_C0)
  loc_17C5033: &H20 = var_194.Text
  loc_17C5072: Call Proc_338_110_10B20C4(CByte((CLng(var_D8) - 1)), CByte(1), &HB, var_A8, Val(var_C0))
  loc_17C508D: Set var_B0 = Nothing
  loc_17C5090: Exit Sub
End Sub

Public Sub Proc_338_102_1198B74(arg_C) '1198B74
  'Data Table: 598674
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_B0 As String
  Dim var_13C As Double
  Dim var_A0 As Double
  Dim var_8C As Double
  Dim var_92 As Integer
  Dim var_17C As TextBox
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  loc_1198795: Set var_A8 = Me.TxtGt
  loc_119879B: Call 0.Method_Proc_338_102_1198B740 (arg_C, var_AC)
  loc_11987BA: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_11987D8: Set var_A8 = Me.LblCap
  loc_11987DE: Call 0.Method_Proc_338_102_1198B740 (arg_C, var_AC)
  loc_1198819: If (Trim(CVar(var_AC.Tag)) = CVar(MemVar_1F92070 & "SCH")) Then
  loc_1198841:   For var_F4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_F4 'Integer
  loc_119884B:     var_104 = CVar(CLng(var_A2)) 'Long
  loc_1198853:     var_124 = CVar(CLng(&H1F)) 'Long
  loc_119887E:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_1198885:       var_104 = CVar(CLng(var_A2)) 'Long
  loc_119888D:       var_124 = CVar(CLng(&HB)) 'Long
  loc_11988B9:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11988C5:     End If
  loc_11988C8:   Next var_F4 'Integer
  loc_11988CD: End If
  loc_11988D7: If (Len(var_90) > 0) Then
  loc_1198909:   Set var_A8 = Me.LblCap
  loc_119890F:   Call 0.Method_Proc_338_102_1198B740 (arg_C, var_AC)
  loc_1198954:   If CBool((Left(var_90, 1) = "1") And (Trim(CVar(var_AC.Tag)) = CVar(MemVar_1F92070 & "SCH"))) Then
  loc_119895A:     var_8C = var_A0
  loc_1198960:   Else
  loc_1198992:     Set var_A8 = Me.TxtGt
  loc_1198998:     Call 0.Method_Proc_338_102_1198B740 (CInt(Val(CStr(Left(var_90, 1)))), var_AC, var_170)
  loc_11989A0:     var_13C = var_AC.Text
  loc_11989AD:     var_8C = Val(var_170)
  loc_11989C1:   End If
  loc_11989C7:   Call Proc_338_83_E852E4(var_90)
  loc_11989EC:   var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_11989F6:   ' Referenced from: 1198B6B
  loc_1198A00:   If (Len(var_90) > 0) Then
  loc_1198A28:     Call Proc_338_83_E852E4(var_90)
  loc_1198A47:     var_D0 = Mid(var_90, CLng((var_172 + 1)), CVar(Len(var_90)))
  loc_1198A50:     var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_1198A60:     Call Proc_338_83_E852E4(var_90)
  loc_1198A77:     var_C0 = Left(var_90, CLng((var_172 - 1)))
  loc_1198A7F:     var_B0 = CStr(CVar(Len(var_90)))
  loc_1198A89:     var_92 = CInt(Val(var_B0))
  loc_1198A98:     Call Proc_338_83_E852E4(var_90)
  loc_1198ABD:     var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_1198AD4:     Set var_A8 = Me.TxtGt
  loc_1198ADA:     Call 0.Method_Proc_338_102_1198B740 (var_92, var_AC, var_B0, var_172, var_92)
  loc_1198AE2:     var_172 = var_AC.Text
  loc_1198AEF:     var_13C = Val(var_B0)
  loc_1198B06:     Set var_178 = Me.TxtGt
  loc_1198B0C:     Call 0.Method_Proc_338_102_1198B740 (var_92, var_17C, var_170, CVar(var_8C), var_13C)
  loc_1198B22:     var_D0 = CVar(-Val(var_170)) 'Double
  loc_1198B35:     var_104 = (CStr(Left(var_90, 1)) = "+")
  loc_1198B44:     var_F0 = (var_17C.Text + IIf(var_90, CVar(var_13C), Mid(var_90, CLng(var_17C.Text), CVar(Len(var_90)))))
  loc_1198B49:     var_8C = CSng(Trim(CVar(var_AC.Tag)))
  loc_1198B6B:     GoTo loc_11989F6
  loc_1198B6E:   End If
  loc_1198B6E: End If
  loc_1198B6E: Proc_338_102_1198B74 = var_8C
End Sub

Public Sub Proc_338_103_103ADA4(arg_C, arg_10, arg_14) '103ADA4
  'Data Table: 598674
  Dim var_8A As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1D0 As Variant
  Dim var_F0 As Variant
  loc_103AB85: var_88 = vbNullString
  loc_103AB9C: arg_C = CStr(Trim(arg_C))
  loc_103ABA8: var_8A = CInt(Len(arg_C))
  loc_103ABAE: var_C0 = arg_10
  loc_103ABB9: If (var_C0 = "A") Then
  loc_103ABEE:   var_E0 = (Chr(&H12) + Chr(&HE))
  loc_103AC02:   var_100 = (var_E0 + Chr(&H1B))
  loc_103AC0B:   var_110 = (var_100 + "G")
  loc_103AC18:   var_130 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103AC32:   var_170 = (var_110 + Space(CLng((var_130 / 2))))
  loc_103AC3C:   var_190 = (var_170 + CVar(arg_C))
  loc_103AC50:   var_1B0 = (var_190 + Chr(&H1B))
  loc_103AC59:   var_1D0 = (var_1B0 + "H")
  loc_103AC5E:   var_88 = CStr(var_1D0)
  loc_103AC7F: Else
  loc_103AC87:   If (var_C0 = "D") Then
  loc_103ACBC:     var_E0 = (Chr(&HE) + Chr(&HF))
  loc_103ACC9:     var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_103ACE3:     var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103ACED:     var_150 = (var_130 + CVar(arg_C))
  loc_103ACF2:     var_88 = CStr((var_130 / 2))
  loc_103AD07:   Else
  loc_103AD0F:     If (var_C0 = "E") Then
  loc_103AD3C:       var_E0 = (Chr(&H12) + Chr(&HF))
  loc_103AD49:       var_F0 = (CVar(arg_14) - CVar(var_8A))
  loc_103AD63:       var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_103AD6D:       var_150 = (var_130 + CVar(arg_C))
  loc_103AD81:       var_170 = ((var_130 / 2) + Chr(&H12))
  loc_103AD86:       var_88 = CStr(var_170)
  loc_103AD9C:     End If
  loc_103AD9C:   End If
  loc_103AD9C: End If
  loc_103AD9C: Proc_338_103_103ADA4 = var_8A
End Sub

Public Sub Proc_338_104_1270D0C(arg_C, arg_10, arg_14) '1270D0C
  'Data Table: 598674
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_598691 As Connection15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_D4 As Variant
  Dim var_290 As Double
  Dim arg_10 As Integer
  loc_12707CD: var_90 = vbNullString
  loc_12707D3: var_94 = vbNullString
  loc_12707D9: var_98 = vbNullString
  loc_12707DF: var_9C = vbNullString
  loc_12707EA: If (MemVar_1F923C0 = "Y") Then
  loc_12707F4:   var_E8 = vbNullString & "DATE "
  loc_1270825:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_1270838: End If
  loc_1270840: If (MemVar_1F923C4 = "Y") Then
  loc_1270852:   var_D4 = "dd/MM/yy"
  loc_12708A4:   var_16C = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_D4)))), 0))
  loc_12708CB:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_12708D3:   var_1DC = (var_16C - Len(var_1BC))
  loc_12708E4:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_12708ED:   var_22C = (var_20C + " PAGE NO ")
  loc_127090F:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_1270914:   var_8C = CStr(var_26C)
  loc_1270941: End If
  loc_127096E: unk_598691.Execute "Select R.HEADER1,R.HEADER2 From DEPART R  Where R.CODE='" & global_56 & "'", var_D4, -1
  loc_1270979: Set var_A0 = var_270
  loc_1270990: If (MemVar_1F923C8 = "K") Then
  loc_127099D:   If (Len(MemVar_1F92130) <= &H28) Then
  loc_12709B6:     var_E4 = (CVar(var_90) + Chr(&HF))
  loc_12709CA:     var_13C = (Format(MemVar_1F920EC, Chr(&HF)) + Chr(&HE))
  loc_12709DE:     var_16C = (0 + Chr(&H1B))
  loc_12709F2:     var_19C = (var_16C + Chr(&H45))
  loc_12709FC:     var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_1270A10:     var_1DC = (var_1BC + Chr(&H1B))
  loc_1270A24:     var_20C = (var_1DC + Chr(&H46))
  loc_1270A38:     var_24C = (var_20C + Chr(&HE))
  loc_1270A3D:     var_90 = CStr(Str(arg_C))
  loc_1270A64:   Else
  loc_1270A7A:     var_E4 = (CVar(var_90) + Chr(&H12))
  loc_1270A8E:     var_13C = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_1270AA2:     var_16C = (0 + Chr(&HF))
  loc_1270AAC:     var_18C = (var_16C + CVar(MemVar_1F92130))
  loc_1270AC0:     var_1BC = (Chr(&H45) + Chr(&H12))
  loc_1270AC5:     var_90 = CStr(var_1BC)
  loc_1270ADD:   End If
  loc_1270AF1:   If (var_A0.RecordCount > 0) Then
  loc_1270B03:     var_270 = var_A0.Fields
  loc_1270B2D:     If (Proc_6_38_E68A98(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_1270B64:       var_290 = Val(CStr(arg_14))
  loc_1270B85:       Call Proc_338_103_103ADA4(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_1270B8E:       var_94 = var_288 & var_288
  loc_1270BA6:     End If
  loc_1270BDF:     If (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Header2")), var_94, var_290) <> vbNullString) Then
  loc_1270C37:       Call Proc_338_103_103ADA4(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_1270C40:       var_98 = var_288 & var_288
  loc_1270C58:     End If
  loc_1270C58:   End If
  loc_1270C58: End If
  loc_1270C62: If (Len(var_8C) > 0) Then
  loc_1270C6A:   Print 1, var_8C
  loc_1270C76:   arg_10 = (arg_10 + 1)
  loc_1270C79: End If
  loc_1270C83: If (Len(var_90) > 0) Then
  loc_1270C8B:   Print 1, var_90
  loc_1270C97:   arg_10 = (arg_10 + 1)
  loc_1270C9A: End If
  loc_1270CA4: If (Len(var_94) > 0) Then
  loc_1270CAC:   Print 1, var_94
  loc_1270CB8:   arg_10 = (arg_10 + 1)
  loc_1270CBB: End If
  loc_1270CC5: If (Len(var_98) > 0) Then
  loc_1270CCD:   Print 1, var_98
  loc_1270CD9:   arg_10 = (arg_10 + 1)
  loc_1270CDC: End If
  loc_1270CE6: If (Len(var_9C) > 0) Then
  loc_1270CEE:   Print 1, var_9C
  loc_1270CFA:   arg_10 = (arg_10 + 1)
  loc_1270CFD: End If
  loc_1270D03: Proc_338_104_1270D0C = arg_10
End Sub

Public Sub Proc_338_105_1714250(arg_C, arg_10, arg_14) '1714250
  'Data Table: 598674
  Dim var_D8 As String
  Dim unk_598691 As Connection15
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_EC As Variant
  Dim var_D2 As Integer
  Dim var_100 As Variant
  Dim var_FC As Variant
  Dim var_130 As Variant
  Dim var_11C As Variant
  Dim var_C0 As Recordset15
  Dim var_140 As Variant
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_1C0 As Variant
  Dim var_1E0 As Variant
  Dim var_D0 As Double
  Dim var_1F4 As Double
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_160 As Variant
  Dim var_10C As MSHFlexGrid
  Dim var_1E8 As Double
  Dim var_9C As Double
  Dim var_260 As Double
  Dim var_1B0 As Variant
  loc_17126A0: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_17126B0: unk_598691.Execute var_D8 & "'", var_FC, -1
  loc_17126BB: Set var_8C = var_100
  loc_17126CE: var_94 = arg_14
  loc_17126D3: var_86 = 1
  loc_17126D9: var_A8 = var_94
  loc_17126DF: var_B0 = var_94
  loc_17126E5: var_B8 = CDbl(0)
  loc_17126FC: If (var_8C.RecordCount > 0) Then
  loc_17126FF:   ' Referenced from: 1714233
  loc_171270E:   If Not(var_8C.EOF) Then
  loc_1712715:     Set var_10C = Me.FGCat
  loc_1712718:     var_EC = vbNullString
  loc_171273D:     If (var_8C.RecordCount > 0) Then
  loc_1712746:       var_D2 = (var_D2 + 1)
  loc_171274C:       var_EC = "Nature"
  loc_171277F:       var_150 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8))) 'Variant
  loc_1712798:       If (var_150 = "On Base Amt") Then
  loc_17127C3:         var_130 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_B0, var_A8)) 'String
  loc_17127E5:         If (Trim(var_130) = "Room Rate") Then
  loc_17127F3:           If (global_232 = "Room Service") Then
  loc_171281C:             Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Limit")), var_86)
  loc_171284A:             Proc_6_39_E7C810(var_160, CVar(var_C0.Fields.Item("RoomRate")), var_130)
  loc_171287C:             Proc_6_39_E7C810(var_1B0, CVar(var_8C.Fields.Item("Rate")))
  loc_17128AC:             If CBool((var_94 <= var_160) And (var_1B0 > 0)) Then
  loc_17128EB:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1712929:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_171293C:               Else
  loc_171296F:                 var_1F4 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_1712998:                 Proc_6_142_14A55B0(((var_1F4 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_171299D:                 var_D0 = var_1F4
  loc_17129B1:               End If
  loc_17129B8:               If (var_D0 > CDbl(0)) Then
  loc_17129D4:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17129DC:                 var_18C = CVar(CLng(0)) 'Long
  loc_17129E6:                 var_130 = CVar(CStr(var_86)) 'String
  loc_17129ED:                 LateIdCallSt
  loc_1712A18:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712A20:                 var_18C = CVar(CLng(1)) 'Long
  loc_1712A2A:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_1712A31:                 LateIdCallSt
  loc_1712A5C:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712A64:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_1712A94:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1712A9B:                 LateIdCallSt
  loc_1712ACE:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712AD6:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_1712B06:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1712B0D:                 LateIdCallSt
  loc_1712B40:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712B48:                 var_18C = CVar(CLng(4)) 'Long
  loc_1712B52:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_1712B59:                 LateIdCallSt
  loc_1712B84:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712B8C:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_1712BBC:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1712BC3:                 LateIdCallSt
  loc_1712C1D:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712C25:                 var_234 = CVar(CLng(6)) 'Long
  loc_1712C2A:                 var_178 = 2
  loc_1712C69:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_1712C70:                 LateIdCallSt
  loc_1712C97:               Else
  loc_1712C9D:                 var_86 = (var_86 - 1)
  loc_1712CB3:                 var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1712CC9:               End If
  loc_1712CE2:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712CEA:               var_18C = CVar(CLng(6)) 'Long
  loc_1712D0F:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1712D38:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712D40:               var_18C = CVar(CLng(6)) 'Long
  loc_1712D5B:               var_1E8 = Val(CStr(var_10C.TextMatrix)))
  loc_1712D65:               var_94 = (var_94 + var_1E8)
  loc_1712D7C:               var_B0 = (var_B0 + var_D0)
  loc_1712D82:               var_B8 = var_D0
  loc_1712D8C:               var_B0 = (var_B0 + var_D0)
  loc_1712D92:               var_B8 = var_D0
  loc_1712D95:             End If
  loc_1712D95:           End If
  loc_1712D98:         Else
  loc_1712DD4:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1712E12:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1712E25:           Else
  loc_1712E47:             var_130 = var_8C.Fields.Item("Rate").Value
  loc_1712E81:             Proc_6_142_14A55B0(((Val(CStr(var_130)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_130)), var_D0, var_B8, var_B0)
  loc_1712E86:             var_260 = var_B8
  loc_1712EC8:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_260)
  loc_1712EE6:           End If
  loc_1712F0C:           Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_260, var_B0)
  loc_1712F46:           Proc_6_39_E7C810(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_94)
  loc_1712F70:           If CBool(var_1E8 And (var_178 > 0)) Then
  loc_1712F7A:             If (var_D0 > CDbl(0)) Then
  loc_1712F96:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712F9E:               var_18C = CVar(CLng(0)) 'Long
  loc_1712FA8:               var_130 = CVar(CStr(var_86)) 'String
  loc_1712FAF:               LateIdCallSt
  loc_1712FDA:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1712FE2:               var_18C = CVar(CLng(1)) 'Long
  loc_1712FEC:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1712FF3:               LateIdCallSt
  loc_171301E:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713026:               var_1C0 = CVar(CLng(2)) 'Long
  loc_1713056:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171305D:               LateIdCallSt
  loc_1713090:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713098:               var_1C0 = CVar(CLng(3)) 'Long
  loc_17130C8:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17130CF:               LateIdCallSt
  loc_1713102:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171310A:               var_18C = CVar(CLng(4)) 'Long
  loc_1713114:               var_130 = CVar(CStr(var_A8)) 'String
  loc_171311B:               LateIdCallSt
  loc_1713146:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171314E:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171317E:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1713185:               LateIdCallSt
  loc_17131DF:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17131E7:               var_234 = CVar(CLng(6)) 'Long
  loc_171322B:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1713232:               LateIdCallSt
  loc_1713256:             End If
  loc_171326F:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713277:             var_18C = CVar(CLng(6)) 'Long
  loc_171329C:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_17132C5:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17132CD:             var_18C = CVar(CLng(6)) 'Long
  loc_17132D5:             var_130 = var_10C.TextMatrix)
  loc_17132E8:             var_1E8 = Val(CStr(var_130))
  loc_17132F2:             var_94 = (var_94 + var_1E8)
  loc_1713309:             var_B0 = (var_B0 + var_D0)
  loc_171330F:             var_B8 = var_D0
  loc_1713312:           End If
  loc_1713312:         End If
  loc_1713315:       Else
  loc_1713320:         If (var_150 = "On Running Total") Then
  loc_171335F:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171339D:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_17133B0:           Else
  loc_171340C:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1713411:             var_D0 = var_94
  loc_1713425:           End If
  loc_171344B:           Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1E8, var_18C)
  loc_1713465:           If (var_130 > 0) Then
  loc_171346F:             If (var_D0 > CDbl(0)) Then
  loc_171348B:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713493:               var_18C = CVar(CLng(0)) 'Long
  loc_171349D:               var_130 = CVar(CStr(var_86)) 'String
  loc_17134A4:               LateIdCallSt
  loc_17134CF:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17134D7:               var_18C = CVar(CLng(1)) 'Long
  loc_17134E1:               var_130 = CVar(CStr(arg_10)) 'String
  loc_17134E8:               LateIdCallSt
  loc_1713513:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171351B:               var_1C0 = CVar(CLng(2)) 'Long
  loc_171354B:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1713552:               LateIdCallSt
  loc_1713585:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171358D:               var_1C0 = CVar(CLng(3)) 'Long
  loc_17135BD:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17135C4:               LateIdCallSt
  loc_17135F7:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17135FF:               var_18C = CVar(CLng(4)) 'Long
  loc_1713609:               var_130 = CVar(CStr(var_B0)) 'String
  loc_1713610:               LateIdCallSt
  loc_171363B:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713643:               var_1C0 = CVar(CLng(5)) 'Long
  loc_1713673:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171367A:               LateIdCallSt
  loc_17136D4:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17136DC:               var_234 = CVar(CLng(6)) 'Long
  loc_1713720:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1713727:               LateIdCallSt
  loc_171374B:             End If
  loc_1713764:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171376C:             var_18C = CVar(CLng(6)) 'Long
  loc_1713791:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_17137BA:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17137C2:             var_18C = CVar(CLng(6)) 'Long
  loc_17137E7:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_17137FE:             var_B0 = (var_B0 + var_D0)
  loc_1713804:             var_B8 = var_D0
  loc_1713807:           End If
  loc_171380A:         Else
  loc_1713815:           If (var_150 = "On Prev. Tax Amt") Then
  loc_1713854:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1713892:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_17138A5:             Else
  loc_1713901:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1713906:               var_D0 = var_94
  loc_171391A:             End If
  loc_1713921:             If (var_D0 > CDbl(0)) Then
  loc_171393D:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713945:               var_18C = CVar(CLng(0)) 'Long
  loc_171394F:               var_130 = CVar(CStr(var_86)) 'String
  loc_1713956:               LateIdCallSt
  loc_1713981:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713989:               var_18C = CVar(CLng(1)) 'Long
  loc_1713993:               var_130 = CVar(CStr(arg_10)) 'String
  loc_171399A:               LateIdCallSt
  loc_17139C5:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17139CD:               var_1C0 = CVar(CLng(2)) 'Long
  loc_17139FD:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1713A04:               LateIdCallSt
  loc_1713A37:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713A3F:               var_1C0 = CVar(CLng(3)) 'Long
  loc_1713A6F:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1713A76:               LateIdCallSt
  loc_1713AA9:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713AB1:               var_18C = CVar(CLng(4)) 'Long
  loc_1713ABB:               var_130 = CVar(CStr(var_B8)) 'String
  loc_1713AC2:               LateIdCallSt
  loc_1713AED:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713AF5:               var_1C0 = CVar(CLng(5)) 'Long
  loc_1713B25:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1713B2C:               LateIdCallSt
  loc_1713B86:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713B8E:               var_234 = CVar(CLng(6)) 'Long
  loc_1713B93:               var_178 = 2
  loc_1713BD2:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_1713BD9:               LateIdCallSt
  loc_1713BFD:             End If
  loc_1713C16:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713C1E:             var_18C = CVar(CLng(6)) 'Long
  loc_1713C43:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1713C6C:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713C74:             var_18C = CVar(CLng(6)) 'Long
  loc_1713C7C:             var_130 = var_10C.TextMatrix)
  loc_1713C8F:             var_1E8 = Val(CStr(var_130))
  loc_1713C99:             var_94 = (var_94 + var_1E8)
  loc_1713CB0:             var_B0 = (var_B0 + var_D0)
  loc_1713CB6:             var_B8 = var_D0
  loc_1713CBC:           Else
  loc_1713CF8:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1713D36:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1713D49:             Else
  loc_1713DA5:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1713DAA:               var_D0 = var_94
  loc_1713DBE:             End If
  loc_1713DC1:             var_EC = "Limit"
  loc_1713DE4:             Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_1E8, var_18C)
  loc_1713E1E:             Proc_6_39_E7C810(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_1713E48:             If CBool(var_9C And (var_178 > 0)) Then
  loc_1713E52:               If (var_D0 > CDbl(0)) Then
  loc_1713E6E:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713E76:                 var_18C = CVar(CLng(0)) 'Long
  loc_1713E80:                 var_130 = CVar(CStr(var_86)) 'String
  loc_1713E87:                 LateIdCallSt
  loc_1713EB2:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713EBA:                 var_18C = CVar(CLng(1)) 'Long
  loc_1713EC4:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_1713ECB:                 LateIdCallSt
  loc_1713EF6:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713EFE:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_1713F2E:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1713F35:                 LateIdCallSt
  loc_1713F68:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713F70:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_1713FA0:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1713FA7:                 LateIdCallSt
  loc_1713FDA:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1713FE2:                 var_18C = CVar(CLng(4)) 'Long
  loc_1713FEC:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_1713FF3:                 LateIdCallSt
  loc_171401E:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714026:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_1714056:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171405D:                 LateIdCallSt
  loc_17140B7:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17140BF:                 var_234 = CVar(CLng(6)) 'Long
  loc_1714103:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171410A:                 LateIdCallSt
  loc_171412E:               End If
  loc_1714147:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171414F:               var_18C = CVar(CLng(6)) 'Long
  loc_1714174:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_171419D:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17141A5:               var_18C = CVar(CLng(6)) 'Long
  loc_17141CA:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_17141E1:               var_B0 = (var_B0 + var_D0)
  loc_17141E7:               var_B8 = var_D0
  loc_17141EA:             End If
  loc_17141EA:           End If
  loc_17141EA:         End If
  loc_17141EA:       End If
  loc_17141EA:     End If
  loc_17141F0:     var_86 = (var_86 + 1)
  loc_17141F5:     Set var_10C = Nothing 
  loc_17141FD:     var_EC = CVar(CLng(arg_10)) 'Long
  loc_1714205:     var_18C = CVar(CLng(&H12)) 'Long
  loc_171420F:     var_FC = CVar(CStr(var_9C)) 'String
  loc_1714217:     Set var_100 = Me.FGrid
  loc_171421D:     LateIdCallSt
  loc_171422E:     var_8C.MoveNext
  loc_1714233:     GoTo loc_17126FF
  loc_1714236:   End If
  loc_171423B:   Set var_8C = Nothing
  loc_1714243:   Set var_C4 = Nothing
  loc_171424B:   Set var_C0 = Nothing
  loc_171424E: End If
  loc_171424E: Exit Sub
End Sub

Public Sub Proc_338_106_1063980(arg_C, arg_10) '1063980
  'Data Table: 598674
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_598691 As Connection15
  Dim var_CC As TextBox
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_90 As Recordset15
  Dim var_C8 As Fields15
  Dim var_C4 As Variant
  Dim var_8C As Double
  loc_106372E: var_94 = global_180
  loc_1063739: If (var_94 = "Last Purchase Rate") Then
  loc_1063757:   var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_1063768:   var_A4 = var_9C & global_56 & "'"
  loc_1063771:   unk_598691.Execute var_A4, var_C4, -1
  loc_106377C:   Set var_90 = var_C8
  loc_1063793: Else
  loc_106379B:   If (var_94 = "Party Wise Last Pur Rate") Then
  loc_10637C3:     var_A0 = "Select Top 1 ItemRate As Rate From Purch2 Where VType In ('PBPB','PBPC') And Item='" & arg_C & "' And RestCode='" & global_56
  loc_10637DB:     Set var_C8 = Me.Txt
  loc_10637E1:     Call 0.Method_Proc_338_106_10639800 (CInt(4), var_CC, var_A4, var_A0 & "' And PartyCode='")
  loc_10637E9:     var_138 = var_CC.Tag
  loc_10637F2:     var_D4 = -1 & var_A4
  loc_10637F9:     var_E4 = CVar(var_D4 & "' And DelFlag='N' And Vdate<=") 'String
  loc_1063807:     Proc_6_7_F25D88(var_C4, arg_10, var_E4)
  loc_1063826:     unk_598691.Execute CStr(var_13C & var_C4 & " Order By VDate Desc,Vno Desc"), var_C8, 
  loc_106386F:     If (var_13C.RecordCount = 0) Then
  loc_106388D:       var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_10638A7:       unk_598691.Execute var_9C & global_56 & "'", var_C4, -1
  loc_10638B2:       Set var_90 = var_C8
  loc_10638C6:     End If
  loc_10638C9:   Else
  loc_10638FE:     unk_598691.Execute "Select PurchRate As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='" & global_56 & "'", var_C4, -1
  loc_1063909:     Set var_90 = var_C8
  loc_106391D:   End If
  loc_106391D: End If
  loc_1063931: If (var_90.RecordCount > 0) Then
  loc_106395A:   Proc_6_39_E7C810(var_E4, CVar(var_90.Fields.Item("Rate")))
  loc_1063963:   var_8C = CSng(var_E4)
  loc_1063973: Else
  loc_1063976:   var_8C = CDbl(0)
  loc_1063979: End If
  loc_1063979: Proc_338_106_1063980 = var_8C
End Sub

Public Sub Proc_338_107_DFC27C
  'Data Table: 598674
  loc_DFC278: Exit Sub
End Sub

Public Sub Proc_338_108_E438F0(arg_C) 'E438F0
  'Data Table: 598674
  Dim Me As Recordset15
  loc_E438CB: Me.Filter = 0
  loc_E438D8: If (arg_C = "Credit Note") Then
  loc_E438E7:   Me.Filter = "Nature='Customer'"
  loc_E438EC: End If
  loc_E438EC: Exit Sub
End Sub

Public Sub Proc_338_109_1132EDC
  'Data Table: 598674
  Dim var_94 As Variant
  Dim var_A8 As String
  Dim unk_598691 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_104 As TextBox
  Dim var_108 As String
  loc_1132B9F: If (((global_124 = "PBC") Or (global_124 = "EXC")) Or (global_124 = "PRC")) Then
  loc_1132BAF:   Set var_90 = Me.Txt
  loc_1132BB5:   Call 0.Method_Proc_338_109_1132EDC0 (CInt(8), var_94)
  loc_1132BBD:   var_94.Visible = True
  loc_1132BD6:   Set var_90 = Me.Txt
  loc_1132BDC:   Call 0.Method_Proc_338_109_1132EDC0 (CInt(4), var_94)
  loc_1132BE4:   var_94.Visible = False
  loc_1132BF4:   Set var_90 = Me.TopCtrl1
  loc_1132BFA:   Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1132C13:   If (CStr() <> "Browse") Then
  loc_1132C23:     Set var_90 = Me.Txt
  loc_1132C29:     Call 0.Method_Proc_338_109_1132EDC0 (CInt(&HB), var_94)
  loc_1132C31:     var_94.Enabled = True
  loc_1132C3D:   End If
  loc_1132C60:   If (((global_124 = "PRC") Or (global_124 = "PBC")) Or (global_124 = "EXC")) Then
  loc_1132C80:     Proc_6_17_EAA2B0(var_A4, MemVar_1F92078, "Select CashPurchAc From Enviro WHERE LOGSITE_CODE=")
  loc_1132C96:     unk_598691.Execute CStr(var_F8 & var_A4), -1, var_90
  loc_1132CA1:     Set var_88 = var_90
  loc_1132CC7:     If (var_88.RecordCount > 0) Then
  loc_1132CE4:       var_94 = var_88.Fields.Item("CashPurchAc")
  loc_1132CEC:       var_A4 = var_94.Value
  loc_1132D03:       Set var_100 = Me.Txt
  loc_1132D09:       Call 0.Method_Proc_338_109_1132EDC0 (CInt(4), var_104)
  loc_1132D11:       var_104.Tag = CStr(var_A4)
  loc_1132D27:     End If
  loc_1132D27:   End If
  loc_1132D3E:   If ((global_124 = "PBC") Or (global_124 = "EXC")) Then
  loc_1132D4B:     Set global_76 = New 
  loc_1132D5D:     Me.Recordset15.CursorLocation = 3
  loc_1132D69:     var_A8 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1132D70:     var_108 = var_A8 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.logSite_Code=V.LogSite_Code) "
  loc_1132D8E:     Call 0.Method_Proc_338_109_1132EDC0 (CInt(4), var_94)
  loc_1132DA6:     var_8C = var_108 & "where V.Ncat in ('MRE') and M.Partycode='" & var_94.Tag & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.RecdQty,0)) > 0 "
  loc_1132DD3:     unk_598691.Execute var_8C, var_A4, -1
  loc_1132DE4:     Set global_76 = Me.Txt
  loc_1132DFB:     CVarUnk
  loc_1132E00:     VerifyVarObj
  loc_1132E06:     Set var_90 = Me.DgMR
  loc_1132E0C:     LateIdStAd
  loc_1132E1A:   End If
  loc_1132E1D: Else
  loc_1132E30:   Call 0.Method_Proc_338_109_1132EDC0 (CInt(8), var_94, 0)
  loc_1132E38:   var_94.Visible = Me.Txt
  loc_1132E51:   Set var_90 = Me.Txt
  loc_1132E57:   Call 0.Method_Proc_338_109_1132EDC0 (CInt(4), var_94, &HFF)
  loc_1132E5F:   var_94.Visible = global_76
  loc_1132E78:   Set var_90 = Me.Txt
  loc_1132E7E:   Call 0.Method_Proc_338_109_1132EDC0 (CInt(&HB), var_94)
  loc_1132E86:   var_94.Enabled = False
  loc_1132E92: End If
  loc_1132EA9: If ((global_124 = "PRR") Or (global_124 = "PRC")) Then
  loc_1132EB9:   Set var_90 = Me.Txt
  loc_1132EBF:   Call 0.Method_Proc_338_109_1132EDC0 (CInt(7), var_94)
  loc_1132EC7:   var_94.Enabled = False
  loc_1132ED3: End If
  loc_1132ED8: Set var_88 = Nothing
  loc_1132EDB: Exit Sub
End Sub

Public Sub Proc_338_110_10B20C4(arg_C, arg_10, arg_14, arg_18) '10B20C4
  'Data Table: 598674
  Dim var_A8 As Double
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_BC As Double
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_1CC As Variant
  Dim var_9C As Double
  Dim var_B4 As Double
  Dim var_1AC As Variant
  loc_10B1DFF: var_A8 = CDbl(0)
  loc_10B1E14: For var_C0 = CInt(arg_10) To (CInt(arg_C) - 1): var_9E = var_C0 'Integer
  loc_10B1E1E:   var_D0 = CVar(CLng(var_9E)) 'Long
  loc_10B1E28:   var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B1E54:   var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_10B1E63: Next var_C0 'Integer
  loc_10B1E6B: var_BC = arg_18
  loc_10B1E97: For var_124 = CInt(arg_10) To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_124 'Integer
  loc_10B1EAA:   If (var_AA <> (CInt(arg_C) - 1)) Then
  loc_10B1EB4:     If (var_A8 <> CDbl(0)) Then
  loc_10B1EBB:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B1EC5:       var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B1EEE:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_10B1EF8:       var_154 = CVar(CLng(arg_14)) 'Long
  loc_10B1F58:       var_1CC = (CVar(Val(CStr(Me.FGrid.TextMatrix)))) + Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B1F68:       var_9C = CSng(Format(var_1CC, "00.00"))
  loc_10B1F8E:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B1F98:       var_F0 = CVar(CLng(arg_20)) 'Long
  loc_10B1FA2:       var_114 = CVar(CStr(var_9C)) 'String
  loc_10B1FAA:       Set var_104 = Me.FGrid
  loc_10B1FB0:       LateIdCallSt
  loc_10B1FBE:     End If
  loc_10B1FC5:     var_B4 = (var_B4 + var_9C)
  loc_10B1FCF:     If (var_A8 > CDbl(0)) Then
  loc_10B1FD6:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B1FE0:       var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B202B:       var_1AC = (CVar(var_BC) - Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B2030:       var_BC = CSng(Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B2042:     End If
  loc_10B2045:   Else
  loc_10B2049:     var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B2053:     var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B2079:     var_9C = (Val(CStr(Me.FGrid.TextMatrix))) + var_BC)
  loc_10B2089:     var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B2093:     var_F0 = CVar(CLng(arg_20)) 'Long
  loc_10B209D:     var_114 = CVar(CStr(var_9C)) 'String
  loc_10B20A5:     Set var_104 = Me.FGrid
  loc_10B20AB:     LateIdCallSt
  loc_10B20B9:   End If
  loc_10B20BC: Next var_124 'Integer
  loc_10B20C1: Exit Sub
End Sub

Public Sub Proc_338_111_1B8C294
  'Data Table: 598674
  Dim var_B4 As Variant
  Dim var_B8 As String
  Dim var_110 As Variant
  Dim var_D0 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_148 As TextBox
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1A4 As Variant
  Dim var_1E4 As Variant
  Dim var_F0 As Variant
  Dim var_AC As String
  Dim unk_598691 As Connection15
  Dim var_A4 As Recordset15
  Dim var_B0 As Variant
  Dim var_C0 As TextBox
  Dim var_14C As String
  Dim var_A6 As Integer
  Dim var_1EC As String
  Dim var_1F0 As String
  Dim var_1F4 As String
  Dim var_88 As Recordset15
  Dim var_100 As Variant
  Dim var_94 As Double
  Dim var_8C As Recordset15
  Dim var_21C As Variant
  Dim var_194 As TextBox
  Dim var_210 As Variant
  Dim var_26C As Label
  Dim var_260 As Variant
  Dim var_264 As Label
  Dim var_20C As Fields15
  Dim var_268 As TextBox
  loc_1B87107: var_AC = OpenAs
  loc_1B87117: If (var_AC = "Expense") Then
  loc_1B8711D:   var_98 = "Expense Voucher :"
  loc_1B8712B:   Set var_BC = Me.Txt
  loc_1B87131:   Call 0.Method_Proc_338_111_1B8C2940 (CInt(3))
  loc_1B87141:   Set var_190 = Me.Txt
  loc_1B87147:   Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_194)
  loc_1B8715D:   Set var_B0 = Me.Txt
  loc_1B87163:   Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_B4, var_AC)
  loc_1B8716B:   "Cr.No." = var_B4.Text
  loc_1B8717B:   var_110 = CVar(var_C0 & var_AC & " Dt.: ") 'String
  loc_1B87196:   var_D0 = CVar(var_C0) 'Address
  loc_1B8719D:   var_100 = Format(var_D0, "dd/mm/yy")
  loc_1B871A5:   var_120 = (1 + var_100)
  loc_1B871AE:   var_140 = (var_120 + " Agst. Invoice/Bill of Supply No.")
  loc_1B871C0:   Set var_144 = Me.Txt
  loc_1B871C6:   Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_148, var_14C)
  loc_1B871CE:   var_140 = var_148.Text
  loc_1B871D9:   var_16C = (1 + CVar(var_14C))
  loc_1B871E2:   var_18C = (var_16C + " Dt.: ")
  loc_1B8720D:   var_1E4 = (1 + Format(CVar(var_194), "dd/mm/yy"))
  loc_1B87212:   var_9C = CStr(var_1E4)
  loc_1B8724B: Else
  loc_1B8724E:   var_98 = "Purchase Bill :"
  loc_1B87254:   var_9C = "Purchase Return For :"
  loc_1B87257: End If
  loc_1B8727A: If (((global_124 = "PBC") Or (global_124 = "EXC")) Or (global_124 = "PRC")) Then
  loc_1B8729A:   Proc_6_17_EAA2B0(var_D0, MemVar_1F92078, "Select CashPurchAc from Enviro WHERE LOGSITE_CODE=", var_100, -1)
  loc_1B872A2:   var_F0 = var_B0 & var_D0 
  loc_1B872B0:   unk_598691.Execute CStr(var_F0), 1, var_18C
  loc_1B872BB:   Set var_A4 = var_B0
  loc_1B872E1:   If (var_A4.RecordCount > 0) Then
  loc_1B872FB:     var_B4 = var_A4.Fields.Item("CashPurchAc")
  loc_1B8730C:     var_AC = Proc_6_38_E68A98(CVar(var_B4))
  loc_1B8731A:     Set var_BC = Me.Txt
  loc_1B87320:     Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_C0)
  loc_1B87328:     var_C0.Tag = var_AC
  loc_1B8733C:   End If
  loc_1B8733C: End If
  loc_1B8735A: Set var_B0 = Me.Txt
  loc_1B87360: Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_AC, "Delete From Ledger where DocID='")
  loc_1B87368: var_D0 = var_B4.Text
  loc_1B87371: var_B8 = -1 & var_AC
  loc_1B87381: unk_598691.Execute var_C0 & var_AC & "'", var_BC, var_110
  loc_1B8739D: var_A6 = 1
  loc_1B873B4: var_AC = "SELECT Sum(SunTran.Amount) AS RevAmt,max(SUNCODE) as SundryCode FROM (SunTran LEFT JOIN RevMast ON SunTran.RevCode = RevMast.Code) LEFT JOIN Depart ON SunTran.RestCode = Depart.Code Where SUNCODE='" & MemVar_1F92078
  loc_1B873CC: Set var_B0 = Me.Txt
  loc_1B873D2: Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_C0 & var_AC, var_AC & "NET' and DocID='")
  loc_1B873DA: var_D0 = var_B4.Text
  loc_1B873E3: var_1EC = -1 & var_C0 & var_AC
  loc_1B873F3: unk_598691.Execute var_1EC & "' Group By RestCode,Revcode Order by RestCode", var_BC, var_A6
  loc_1B873FE: Set var_8C = var_BC
  loc_1B8742E: var_AC = " SELECT Sum(S.Amount) AS RevAmt, S.RevCode, Max(S.Vdate) AS VDate, Max(R.Name) AS Revenue, Max(S.SunCode) AS SundryCode, Max(R.ACCode) AS ACode, Max(R.PayableAc) AS PCode, Max(R.UnregisteredAc) AS UCode, Max(R.FieldType) AS FieldType,Max(ST.CalcSign) as CSign " & " FROM ((SunTran AS S LEFT JOIN RevMast AS R ON S.RevCode = R.Code) LEFT JOIN Depart AS D ON S.RestCode = D.Code) LEFT JOIN SundryType AS ST ON S.SunAppDate = ST.AppDate AND ST.V_Type=S.RestCode  and s.SunCode=st.sundrycode "
  loc_1B87435: var_14C = var_AC & " WHERE (((S.RevCode) Is Not Null And (S.RevCode)<>'') AND ((S.DocId)='"
  loc_1B87446: Set var_B0 = Me.Txt
  loc_1B8744C: Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_C0 & var_AC, var_14C)
  loc_1B87454: var_D0 = var_B4.Text
  loc_1B8745D: var_1EC = -1 & var_C0 & var_AC
  loc_1B87464: var_1F0 = var_1EC & "')) "
  loc_1B87474: unk_598691.Execute var_1F0 & " GROUP BY S.RevCode, S.RestCode ORDER BY S.RestCode", var_BC, 
  loc_1B8747F: Set var_88 = var_BC
  loc_1B874CD: If ((Me.ChkPayable.Value = 1) And (var_88.RecordCount > 0)) Then
  loc_1B874D0:   ' Referenced from: 1B876DE
  loc_1B874DF:   If Not(var_88.EOF) Then
  loc_1B8751B:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("FIELDTYPE"))) = "T") Then
  loc_1B8753D:       var_D0 = CVar(var_88.Fields.Item("RevAmt")) 'Address
  loc_1B87544:       Proc_6_39_E7C810(var_F0)
  loc_1B8755E:       If CBool(var_F0 <> 0) Then
  loc_1B8759A:         If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("pCode"))) = vbNullString) Then
  loc_1B875DE:           MsgBox("Please Define Payable A/C for :" & var_88.Fields.Item("Revenue").Value, 0, var_100, var_110, var_120)
  loc_1B875F7:         End If
  loc_1B87630:         If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("uCode"))) = vbNullString) Then
  loc_1B87670:           var_F0 = "Please Define Unregistered A/C for :" & var_88.Fields.Item("Revenue").Value 
  loc_1B87674:           MsgBox(var_F0, 0, var_100, var_110, var_120)
  loc_1B8768D:         End If
  loc_1B8768D:       End If
  loc_1B876BA:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B876C2:       var_100 = (CVar(var_94) + var_F0)
  loc_1B876C7:       var_94 = CSng(var_100)
  loc_1B876D6:     End If
  loc_1B876D9:     var_88.MoveNext
  loc_1B876DE:     GoTo loc_1B874D0
  loc_1B876E1:   End If
  loc_1B876E1: End If
  loc_1B876F5: If (var_8C.RecordCount > 0) Then
  loc_1B8770F:   var_B4 = var_8C.Fields.Item("RevAmt")
  loc_1B8771E:   Proc_6_39_E7C810(var_F0, CVar(var_B4))
  loc_1B8772D:   var_100 = (var_F0 - CVar(var_94))
  loc_1B87743:   If (var_100 > 0) Then
  loc_1B87769:     If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8777A:       Set var_B0 = Me.Txt
  loc_1B87780:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_14C)
  loc_1B87788:       var_94 = var_B4.Text
  loc_1B8779B:       Set var_BC = Me.Txt
  loc_1B877A1:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0)
  loc_1B877A9:       var_AC = var_C0.Tag
  loc_1B877BC:       Set var_144 = Me.Txt
  loc_1B877C2:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148)
  loc_1B877CA:       var_1F4 = var_148.Text
  loc_1B877EF:       Set var_190 = Me.Txt
  loc_1B877F5:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B87810:       Set var_20C = Me.Txt
  loc_1B87816:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_210)
  loc_1B8781E:       var_B8 = var_210.Tag
  loc_1B87849:       Proc_6_39_E7C810(var_F0, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1B87851:       var_110 = Now
  loc_1B8785B:       var_25C = 0
  loc_1B87866:       var_258 = 0
  loc_1B87871:       var_254 = 0
  loc_1B8787A:       var_250 = "A"
  loc_1B87892:       var_244 = vbNullString
  loc_1B878A9:       var_100 = (var_F0 - CVar(var_94))
  loc_1B878E5:       Proc_6_140_12D90F4(MemVar_1F92044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8792A:     Else
  loc_1B87938:       Set var_B0 = Me.Txt
  loc_1B8793E:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1F0, var_B8, CSng(var_100), CDbl(0))
  loc_1B87946:       var_244 = var_B4.Text
  loc_1B87959:       Set var_BC = Me.Txt
  loc_1B8795F:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B87967:       MemVar_1F920C8 = var_C0.Tag
  loc_1B8797A:       Set var_144 = Me.Txt
  loc_1B87980:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_224)
  loc_1B87988:       CDate(var_110) = var_148.Text
  loc_1B879AD:       Set var_190 = Me.Txt
  loc_1B879B3:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B879CE:       Set var_20C = Me.Txt
  loc_1B879D4:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_210)
  loc_1B879DC:       var_B8 = var_210.Tag
  loc_1B87A07:       Proc_6_39_E7C810(var_F0, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1B87A1A:       Set var_21C = Me.Txt
  loc_1B87A20:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_260)
  loc_1B87A28:       var_14C = var_260.Text
  loc_1B87A38:       Set var_264 = Me.Txt
  loc_1B87A3E:       Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_268)
  loc_1B87A6A:       var_18C = Now
  loc_1B87A74:       var_278 = 0
  loc_1B87A7F:       var_274 = 0
  loc_1B87A8A:       var_270 = 0
  loc_1B87A93:       var_25C = "A"
  loc_1B87AB9:       var_16C = (CVar(var_98 & var_14C & " Dt.:   ") + Format(CVar(var_268), "dd/mm/yy"))
  loc_1B87AC5:       var_254 = vbNullString
  loc_1B87AD5:       var_100 = (var_F0 - CVar(var_94))
  loc_1B87B18:       Proc_6_140_12D90F4(MemVar_1F92044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B87B70:     End If
  loc_1B87B73:   Else
  loc_1B87B8A:     var_B4 = var_8C.Fields.Item("RevAmt")
  loc_1B87B99:     Proc_6_39_E7C810(var_F0, CVar(var_B4), var_B8, CDbl(0), CSng(var_100))
  loc_1B87BA8:     var_100 = (var_F0 - CVar(var_94))
  loc_1B87BBE:     If (var_100 < 0) Then
  loc_1B87BE4:       If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B87BF5:         Set var_B0 = Me.Txt
  loc_1B87BFB:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_14C, var_254)
  loc_1B87C03:         CStr(var_16C) = var_B4.Text
  loc_1B87C16:         Set var_BC = Me.Txt
  loc_1B87C1C:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC)
  loc_1B87C24:         MemVar_1F920C8 = var_C0.Tag
  loc_1B87C37:         Set var_144 = Me.Txt
  loc_1B87C3D:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F4)
  loc_1B87C45:         CDate(var_18C) = var_148.Text
  loc_1B87C57:         var_220 = Me.LblVPrefix.Caption
  loc_1B87C6A:         Set var_190 = Me.Txt
  loc_1B87C70:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B87C8B:         Set var_20C = Me.Txt
  loc_1B87C91:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_210)
  loc_1B87C99:         var_B8 = var_210.Tag
  loc_1B87CC4:         Proc_6_39_E7C810(var_F0, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1B87CCC:         var_120 = Now
  loc_1B87CD6:         var_25C = 0
  loc_1B87CE1:         var_258 = 0
  loc_1B87CEC:         var_254 = 0
  loc_1B87CF5:         var_250 = "A"
  loc_1B87D0D:         var_244 = vbNullString
  loc_1B87D1D:         var_100 = (var_F0 - CVar(var_94))
  loc_1B87D21:         var_110 = Abs(var_100)
  loc_1B87D64:         Proc_6_140_12D90F4(MemVar_1F92044, var_14C, var_A6, var_AC, CLng(var_1F4), var_220, MemVar_1F92070, var_194.Text)
  loc_1B87DA9:       Else
  loc_1B87DB7:         Set var_B0 = Me.Txt
  loc_1B87DBD:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1F0, var_B8, CDbl(0), CSng(var_110))
  loc_1B87DC5:         var_244 = var_B4.Text
  loc_1B87DD8:         Set var_BC = Me.Txt
  loc_1B87DDE:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B87DE6:         MemVar_1F920C8 = var_C0.Tag
  loc_1B87DF9:         Set var_144 = Me.Txt
  loc_1B87DFF:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_224)
  loc_1B87E07:         CDate(var_120) = var_148.Text
  loc_1B87E2C:         Set var_190 = Me.Txt
  loc_1B87E32:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B87E4D:         Set var_20C = Me.Txt
  loc_1B87E53:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_210)
  loc_1B87E5B:         var_B8 = var_210.Tag
  loc_1B87E86:         Proc_6_39_E7C810(var_F0, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1B87E99:         Set var_21C = Me.Txt
  loc_1B87E9F:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_260)
  loc_1B87EB7:         Set var_264 = Me.Txt
  loc_1B87EBD:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_268)
  loc_1B87EE9:         var_1A4 = Now
  loc_1B87EF3:         var_278 = 0
  loc_1B87EFE:         var_274 = 0
  loc_1B87F09:         var_270 = 0
  loc_1B87F12:         var_25C = "A"
  loc_1B87F2B:         var_1EC = var_98 & var_260.Text
  loc_1B87F38:         var_18C = (CVar(var_1EC & " Dt.:     ") + Format(CVar(var_268), "dd/mm/yy"))
  loc_1B87F44:         var_254 = vbNullString
  loc_1B87F5B:         var_100 = (var_F0 - CVar(var_94))
  loc_1B87F5F:         var_110 = Abs(var_100)
  loc_1B87F9B:         Proc_6_140_12D90F4(MemVar_1F92044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B87FF3:       End If
  loc_1B87FF3:     End If
  loc_1B87FF3:   End If
  loc_1B87FF9:   var_A6 = (var_A6 + 1)
  loc_1B87FFC: End If
  loc_1B88010: If (var_88.RecordCount > 0) Then
  loc_1B88016:   var_88.MoveFirst
  loc_1B8801B:   ' Referenced from: 1B8B882
  loc_1B8802A:   If Not(var_88.EOF) Then
  loc_1B8806D:     var_AC = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FIELDTYPE")), (Me.ChkPayable.Value = 1), var_A6, var_B8, CSng(var_110), CDbl(0))
  loc_1B88083:     If (var_254 And (var_AC = "T")) Then
  loc_1B880AC:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")), CStr(var_18C))
  loc_1B880C6:       If (var_F0 > 0) Then
  loc_1B880E3:         var_B4 = var_88.Fields.Item("CSign")
  loc_1B880F3:         var_130 = "-"
  loc_1B88105:         If (var_B4.Value = 0) Then
  loc_1B8812B:           If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8813C:             Set var_B0 = Me.Txt
  loc_1B88142:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_B8)
  loc_1B8814A:             MemVar_1F920C8 = var_B4.Text
  loc_1B8815D:             Set var_BC = Me.Txt
  loc_1B88163:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC)
  loc_1B8816B:             CDate(var_1A4) = var_C0.Tag
  loc_1B8817E:             Set var_144 = Me.Txt
  loc_1B88184:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148)
  loc_1B8818C:             var_1F0 = var_148.Text
  loc_1B881B1:             Set var_190 = Me.Txt
  loc_1B881B7:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B881BF:             var_224 = var_194.Text
  loc_1B88211:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8824A:             var_258 = 0
  loc_1B88255:             var_254 = 0
  loc_1B88260:             var_250 = 0
  loc_1B88269:             var_244 = "A"
  loc_1B882C9:             Proc_6_140_12D90F4(MemVar_1F92044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F92070, var_224)
  loc_1B88319:             var_A6 = (var_A6 + 1)
  loc_1B8832A:             Set var_B0 = Me.Txt
  loc_1B88330:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_B8, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(var_F0))
  loc_1B88338:             CDbl(0) = var_B4.Text
  loc_1B8834B:             Set var_BC = Me.Txt
  loc_1B88351:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B88359:             var_9C = var_C0.Tag
  loc_1B8836C:             Set var_144 = Me.Txt
  loc_1B88372:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F0)
  loc_1B8837A:             MemVar_1F920C8 = var_148.Text
  loc_1B8839F:             Set var_190 = Me.Txt
  loc_1B883A5:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_224)
  loc_1B883AD:             CDate(Now) = var_194.Text
  loc_1B883D4:             var_110 = var_88.Fields.Item("pCode").Value
  loc_1B883FF:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B88426:             var_120 = var_88.Fields.Item("uCode").Value
  loc_1B8842E:             var_100 = Now
  loc_1B88438:             var_258 = 0
  loc_1B88443:             var_254 = 0
  loc_1B8844E:             var_250 = 0
  loc_1B88457:             var_244 = "A"
  loc_1B884B7:             Proc_6_140_12D90F4(MemVar_1F92044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F92070, var_224)
  loc_1B88507:             var_A6 = (var_A6 + 1)
  loc_1B8850D:           Else
  loc_1B8851B:             Set var_B0 = Me.Txt
  loc_1B88521:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_110), CDbl(0))
  loc_1B88529:             CSng(var_F0) = var_B4.Text
  loc_1B8853C:             Set var_BC = Me.Txt
  loc_1B88542:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_120))
  loc_1B8854A:             var_9C = var_C0.Tag
  loc_1B8855D:             Set var_144 = Me.Txt
  loc_1B88563:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_220)
  loc_1B8856B:             MemVar_1F920C8 = var_148.Text
  loc_1B88590:             Set var_190 = Me.Txt
  loc_1B88596:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_22C)
  loc_1B8859E:             CDate(var_100) = var_194.Text
  loc_1B885F0:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8862A:             Set var_264 = Me.Txt
  loc_1B88630:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B88648:             Set var_26C = Me.Txt
  loc_1B8864E:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B88684:             var_274 = 0
  loc_1B8868F:             var_270 = 0
  loc_1B8869A:             var_25C = 0
  loc_1B886A3:             var_258 = "A"
  loc_1B886C9:             var_15C = (CVar(var_98 & var_268.Text & " Dt.:   ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8871D:             Proc_6_140_12D90F4(MemVar_1F92044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F92070, var_22C)
  loc_1B88783:             var_A6 = (var_A6 + 1)
  loc_1B88794:             Set var_B0 = Me.Txt
  loc_1B8879A:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1B887A2:             CSng(var_F0) = var_B4.Text
  loc_1B887B5:             Set var_BC = Me.Txt
  loc_1B887BB:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B887C3:             CStr(Format(CVar(var_268), "dd/mm/yy")) = var_C0.Tag
  loc_1B887D6:             Set var_144 = Me.Txt
  loc_1B887DC:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_220)
  loc_1B887E4:             MemVar_1F920C8 = var_148.Text
  loc_1B887F6:             var_224 = Me.LblVPrefix.Caption
  loc_1B88809:             Set var_190 = Me.Txt
  loc_1B8880F:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_22C)
  loc_1B88817:             CDate(Now) = var_194.Text
  loc_1B8883E:             var_18C = var_88.Fields.Item("pCode").Value
  loc_1B88869:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B88890:             var_1A4 = var_88.Fields.Item("uCode").Value
  loc_1B888A3:             Set var_264 = Me.Txt
  loc_1B888A9:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B888B1:             var_B8 = var_268.Text
  loc_1B888C1:             Set var_26C = Me.Txt
  loc_1B888C7:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B888F3:             var_16C = Now
  loc_1B888FD:             var_274 = 0
  loc_1B88908:             var_270 = 0
  loc_1B88913:             var_25C = 0
  loc_1B8891C:             var_258 = "A"
  loc_1B88942:             var_15C = (CVar(var_98 & var_B8 & " Dt.:   ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B88996:             Proc_6_140_12D90F4(MemVar_1F92044, var_1EC, var_A6, var_AC, CLng(var_220), var_224, MemVar_1F92070, var_22C)
  loc_1B889FC:             var_A6 = (var_A6 + 1)
  loc_1B889FF:           End If
  loc_1B88A02:         Else
  loc_1B88A25:           If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B88A36:             Set var_B0 = Me.Txt
  loc_1B88A3C:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_B8, var_A6, CStr(var_18C), CSng(var_F0))
  loc_1B88A44:             CDbl(0) = var_B4.Text
  loc_1B88A57:             Set var_BC = Me.Txt
  loc_1B88A5D:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_1A4))
  loc_1B88A65:             CStr(Format(CVar(var_268), "dd/mm/yy")) = var_C0.Tag
  loc_1B88A78:             Set var_144 = Me.Txt
  loc_1B88A7E:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F0)
  loc_1B88A86:             MemVar_1F920C8 = var_148.Text
  loc_1B88AAB:             Set var_190 = Me.Txt
  loc_1B88AB1:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_224)
  loc_1B88AB9:             CDate(var_16C) = var_194.Text
  loc_1B88B0B:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B88B44:             var_258 = 0
  loc_1B88B4F:             var_254 = 0
  loc_1B88B5A:             var_250 = 0
  loc_1B88B63:             var_244 = "A"
  loc_1B88BC3:             Proc_6_140_12D90F4(MemVar_1F92044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F92070, var_224)
  loc_1B88C13:             var_A6 = (var_A6 + 1)
  loc_1B88C24:             Set var_B0 = Me.Txt
  loc_1B88C2A:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_B8, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1B88C32:             CSng(var_F0) = var_B4.Text
  loc_1B88C45:             Set var_BC = Me.Txt
  loc_1B88C4B:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B88C53:             var_9C = var_C0.Tag
  loc_1B88C66:             Set var_144 = Me.Txt
  loc_1B88C6C:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F0)
  loc_1B88C74:             MemVar_1F920C8 = var_148.Text
  loc_1B88C99:             Set var_190 = Me.Txt
  loc_1B88C9F:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_224)
  loc_1B88CA7:             CDate(Now) = var_194.Text
  loc_1B88CCE:             var_110 = var_88.Fields.Item("pCode").Value
  loc_1B88CF9:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B88D20:             var_120 = var_88.Fields.Item("uCode").Value
  loc_1B88D28:             var_100 = Now
  loc_1B88D32:             var_258 = 0
  loc_1B88D3D:             var_254 = 0
  loc_1B88D48:             var_250 = 0
  loc_1B88D51:             var_244 = "A"
  loc_1B88DB1:             Proc_6_140_12D90F4(MemVar_1F92044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F92070, var_224)
  loc_1B88E01:             var_A6 = (var_A6 + 1)
  loc_1B88E07:           Else
  loc_1B88E15:             Set var_B0 = Me.Txt
  loc_1B88E1B:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_110), CSng(var_F0))
  loc_1B88E23:             CDbl(0) = var_B4.Text
  loc_1B88E36:             Set var_BC = Me.Txt
  loc_1B88E3C:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_120))
  loc_1B88E44:             var_9C = var_C0.Tag
  loc_1B88E57:             Set var_144 = Me.Txt
  loc_1B88E5D:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_220)
  loc_1B88E65:             MemVar_1F920C8 = var_148.Text
  loc_1B88E8A:             Set var_190 = Me.Txt
  loc_1B88E90:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_22C)
  loc_1B88E98:             CDate(var_100) = var_194.Text
  loc_1B88EEA:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B88F24:             Set var_264 = Me.Txt
  loc_1B88F2A:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B88F42:             Set var_26C = Me.Txt
  loc_1B88F48:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B88F7E:             var_274 = 0
  loc_1B88F89:             var_270 = 0
  loc_1B88F94:             var_25C = 0
  loc_1B88F9D:             var_258 = "A"
  loc_1B88FC3:             var_15C = (CVar(var_98 & var_268.Text & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B89017:             Proc_6_140_12D90F4(MemVar_1F92044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F92070, var_22C)
  loc_1B8907D:             var_A6 = (var_A6 + 1)
  loc_1B8908E:             Set var_B0 = Me.Txt
  loc_1B89094:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(var_F0))
  loc_1B8909C:             CDbl(0) = var_B4.Text
  loc_1B890AF:             Set var_BC = Me.Txt
  loc_1B890B5:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B890BD:             CStr(Format(CVar(var_268), "dd/mm/yy")) = var_C0.Tag
  loc_1B890D0:             Set var_144 = Me.Txt
  loc_1B890D6:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_220)
  loc_1B890DE:             MemVar_1F920C8 = var_148.Text
  loc_1B89103:             Set var_190 = Me.Txt
  loc_1B89109:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_22C)
  loc_1B89111:             CDate(Now) = var_194.Text
  loc_1B89138:             var_18C = var_88.Fields.Item("pCode").Value
  loc_1B89163:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8918A:             var_1A4 = var_88.Fields.Item("uCode").Value
  loc_1B8919D:             Set var_264 = Me.Txt
  loc_1B891A3:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B891AB:             var_B8 = var_268.Text
  loc_1B891BB:             Set var_26C = Me.Txt
  loc_1B891C1:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B891ED:             var_16C = Now
  loc_1B891F7:             var_274 = 0
  loc_1B89202:             var_270 = 0
  loc_1B8920D:             var_25C = 0
  loc_1B89216:             var_258 = "A"
  loc_1B8923C:             var_15C = (CVar(var_98 & var_B8 & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B89290:             Proc_6_140_12D90F4(MemVar_1F92044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F92070, var_22C)
  loc_1B892F6:             var_A6 = (var_A6 + 1)
  loc_1B892F9:           End If
  loc_1B892F9:         End If
  loc_1B892FC:       Else
  loc_1B89322:         Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")), var_A6, CStr(var_18C), CDbl(0), CSng(var_F0))
  loc_1B8933C:         If (var_F0 < 0) Then
  loc_1B89359:           var_B4 = var_88.Fields.Item("CSign")
  loc_1B89369:           var_130 = "-"
  loc_1B8937B:           If (var_B4.Value = 0) Then
  loc_1B893A1:             If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B893B2:               Set var_B0 = Me.Txt
  loc_1B893B8:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_B8, CStr(var_1A4))
  loc_1B893C0:               CStr(Format(CVar(var_268), "dd/mm/yy")) = var_B4.Text
  loc_1B893D3:               Set var_BC = Me.Txt
  loc_1B893D9:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC)
  loc_1B893E1:               MemVar_1F920C8 = var_C0.Tag
  loc_1B893F4:               Set var_144 = Me.Txt
  loc_1B893FA:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F0)
  loc_1B89402:               CDate(var_16C) = var_148.Text
  loc_1B89427:               Set var_190 = Me.Txt
  loc_1B8942D:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B89435:               var_224 = var_194.Text
  loc_1B89487:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B894C0:               var_258 = 0
  loc_1B894CB:               var_254 = 0
  loc_1B894D6:               var_250 = 0
  loc_1B894DF:               var_244 = "A"
  loc_1B89543:               Proc_6_140_12D90F4(MemVar_1F92044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F92070, var_224)
  loc_1B89593:               var_A6 = (var_A6 + 1)
  loc_1B895A4:               Set var_B0 = Me.Txt
  loc_1B895AA:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_B8, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1B895B2:               CSng(Abs(var_F0)) = var_B4.Text
  loc_1B895C5:               Set var_BC = Me.Txt
  loc_1B895CB:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B895D3:               var_9C = var_C0.Tag
  loc_1B895E6:               Set var_144 = Me.Txt
  loc_1B895EC:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F0)
  loc_1B895F4:               MemVar_1F920C8 = var_148.Text
  loc_1B89619:               Set var_190 = Me.Txt
  loc_1B8961F:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_224)
  loc_1B89627:               CDate(Now) = var_194.Text
  loc_1B8964E:               var_120 = var_88.Fields.Item("pCode").Value
  loc_1B89679:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B896A0:               var_140 = var_88.Fields.Item("uCode").Value
  loc_1B896A8:               var_110 = Now
  loc_1B896B2:               var_258 = 0
  loc_1B896BD:               var_254 = 0
  loc_1B896C8:               var_250 = 0
  loc_1B896D1:               var_244 = "A"
  loc_1B896F8:               var_100 = Abs(var_F0)
  loc_1B89735:               Proc_6_140_12D90F4(MemVar_1F92044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F92070, var_224)
  loc_1B89785:               var_A6 = (var_A6 + 1)
  loc_1B8978B:             Else
  loc_1B89799:               Set var_B0 = Me.Txt
  loc_1B8979F:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_120), CSng(var_100))
  loc_1B897A7:               CDbl(0) = var_B4.Text
  loc_1B897BA:               Set var_BC = Me.Txt
  loc_1B897C0:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_140))
  loc_1B897C8:               var_9C = var_C0.Tag
  loc_1B897DB:               Set var_144 = Me.Txt
  loc_1B897E1:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_220)
  loc_1B897E9:               MemVar_1F920C8 = var_148.Text
  loc_1B8980E:               Set var_190 = Me.Txt
  loc_1B89814:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_22C)
  loc_1B8981C:               CDate(var_110) = var_194.Text
  loc_1B8986E:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B898A8:               Set var_264 = Me.Txt
  loc_1B898AE:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B898C6:               Set var_26C = Me.Txt
  loc_1B898CC:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B89902:               var_274 = 0
  loc_1B8990D:               var_270 = 0
  loc_1B89918:               var_25C = 0
  loc_1B89921:               var_258 = "A"
  loc_1B89947:               var_16C = (CVar(var_98 & var_268.Text & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8999F:               Proc_6_140_12D90F4(MemVar_1F92044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F92070, var_22C)
  loc_1B89A05:               var_A6 = (var_A6 + 1)
  loc_1B89A16:               Set var_B0 = Me.Txt
  loc_1B89A1C:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(Abs(var_F0)))
  loc_1B89A24:               CDbl(0) = var_B4.Text
  loc_1B89A37:               Set var_BC = Me.Txt
  loc_1B89A3D:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B89A45:               CStr(var_16C) = var_C0.Tag
  loc_1B89A58:               Set var_144 = Me.Txt
  loc_1B89A5E:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_220)
  loc_1B89A66:               MemVar_1F920C8 = var_148.Text
  loc_1B89A78:               var_224 = Me.LblVPrefix.Caption
  loc_1B89A8B:               Set var_190 = Me.Txt
  loc_1B89A91:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_22C)
  loc_1B89A99:               CDate(Now) = var_194.Text
  loc_1B89AC0:               var_1A4 = var_88.Fields.Item("pCode").Value
  loc_1B89AEB:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B89B12:               var_1C4 = var_88.Fields.Item("uCode").Value
  loc_1B89B25:               Set var_264 = Me.Txt
  loc_1B89B2B:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B89B33:               var_B8 = var_268.Text
  loc_1B89B43:               Set var_26C = Me.Txt
  loc_1B89B49:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B89B75:               var_18C = Now
  loc_1B89B7F:               var_274 = 0
  loc_1B89B8A:               var_270 = 0
  loc_1B89B95:               var_25C = 0
  loc_1B89B9E:               var_258 = "A"
  loc_1B89BC4:               var_16C = (CVar(var_98 & var_B8 & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B89BD8:               var_100 = Abs(var_F0)
  loc_1B89C1C:               Proc_6_140_12D90F4(MemVar_1F92044, var_1EC, var_A6, var_AC, CLng(var_220), var_224, MemVar_1F92070, var_22C)
  loc_1B89C82:               var_A6 = (var_A6 + 1)
  loc_1B89C85:             End If
  loc_1B89C88:           Else
  loc_1B89CAB:             If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B89CBC:               Set var_B0 = Me.Txt
  loc_1B89CC2:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_B8, var_A6, CStr(var_1A4), CDbl(0))
  loc_1B89CCA:               CSng(var_100) = var_B4.Text
  loc_1B89CDD:               Set var_BC = Me.Txt
  loc_1B89CE3:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_1C4))
  loc_1B89CEB:               CStr(var_16C) = var_C0.Tag
  loc_1B89CFE:               Set var_144 = Me.Txt
  loc_1B89D04:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F0)
  loc_1B89D0C:               MemVar_1F920C8 = var_148.Text
  loc_1B89D31:               Set var_190 = Me.Txt
  loc_1B89D37:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_224)
  loc_1B89D3F:               CDate(var_18C) = var_194.Text
  loc_1B89D91:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B89DCA:               var_258 = 0
  loc_1B89DD5:               var_254 = 0
  loc_1B89DE0:               var_250 = 0
  loc_1B89DE9:               var_244 = "A"
  loc_1B89E4D:               Proc_6_140_12D90F4(MemVar_1F92044, var_B8, var_A6, var_AC, CLng(var_1F0), Me.LblVPrefix.Caption, MemVar_1F92070, var_224)
  loc_1B89E9D:               var_A6 = (var_A6 + 1)
  loc_1B89EAE:               Set var_B0 = Me.Txt
  loc_1B89EB4:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_B8, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(Abs(var_F0)))
  loc_1B89EBC:               CDbl(0) = var_B4.Text
  loc_1B89ECF:               Set var_BC = Me.Txt
  loc_1B89ED5:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B89EDD:               var_9C = var_C0.Tag
  loc_1B89EF0:               Set var_144 = Me.Txt
  loc_1B89EF6:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F0)
  loc_1B89EFE:               MemVar_1F920C8 = var_148.Text
  loc_1B89F10:               var_1F4 = Me.LblVPrefix.Caption
  loc_1B89F23:               Set var_190 = Me.Txt
  loc_1B89F29:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_224)
  loc_1B89F31:               CDate(Now) = var_194.Text
  loc_1B89F58:               var_120 = var_88.Fields.Item("pCode").Value
  loc_1B89F83:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B89FAA:               var_140 = var_88.Fields.Item("uCode").Value
  loc_1B89FB2:               var_110 = Now
  loc_1B89FBC:               var_258 = 0
  loc_1B89FC7:               var_254 = 0
  loc_1B89FD2:               var_250 = 0
  loc_1B89FDB:               var_244 = "A"
  loc_1B89FFB:               var_100 = Abs(var_F0)
  loc_1B8A03F:               Proc_6_140_12D90F4(MemVar_1F92044, var_B8, var_A6, var_AC, CLng(var_1F0), var_1F4, MemVar_1F92070, var_224)
  loc_1B8A08F:               var_A6 = (var_A6 + 1)
  loc_1B8A095:             Else
  loc_1B8A0A3:               Set var_B0 = Me.Txt
  loc_1B8A0A9:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_120), CDbl(0))
  loc_1B8A0B1:               CSng(var_100) = var_B4.Text
  loc_1B8A0C4:               Set var_BC = Me.Txt
  loc_1B8A0CA:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_140))
  loc_1B8A0D2:               var_9C = var_C0.Tag
  loc_1B8A0E5:               Set var_144 = Me.Txt
  loc_1B8A0EB:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_220)
  loc_1B8A0F3:               MemVar_1F920C8 = var_148.Text
  loc_1B8A118:               Set var_190 = Me.Txt
  loc_1B8A11E:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_22C)
  loc_1B8A126:               CDate(var_110) = var_194.Text
  loc_1B8A178:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8A1B2:               Set var_264 = Me.Txt
  loc_1B8A1B8:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B8A1D0:               Set var_26C = Me.Txt
  loc_1B8A1D6:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B8A20C:               var_274 = 0
  loc_1B8A217:               var_270 = 0
  loc_1B8A222:               var_25C = 0
  loc_1B8A22B:               var_258 = "A"
  loc_1B8A251:               var_16C = (CVar(var_98 & var_268.Text & " Dt.:       ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8A2A9:               Proc_6_140_12D90F4(MemVar_1F92044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F92070, var_22C)
  loc_1B8A30F:               var_A6 = (var_A6 + 1)
  loc_1B8A320:               Set var_B0 = Me.Txt
  loc_1B8A326:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1EC, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1B8A32E:               CSng(Abs(var_F0)) = var_B4.Text
  loc_1B8A341:               Set var_BC = Me.Txt
  loc_1B8A347:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1B8A34F:               CStr(var_16C) = var_C0.Tag
  loc_1B8A362:               Set var_144 = Me.Txt
  loc_1B8A368:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_220)
  loc_1B8A370:               MemVar_1F920C8 = var_148.Text
  loc_1B8A382:               var_224 = Me.LblVPrefix.Caption
  loc_1B8A395:               Set var_190 = Me.Txt
  loc_1B8A39B:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194, var_22C)
  loc_1B8A3A3:               CDate(Now) = var_194.Text
  loc_1B8A3CA:               var_1A4 = var_88.Fields.Item("pCode").Value
  loc_1B8A3F5:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8A414:               var_260 = var_88.Fields.Item("uCode")
  loc_1B8A41C:               var_1C4 = var_260.Value
  loc_1B8A42F:               Set var_264 = Me.Txt
  loc_1B8A435:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B8A44D:               Set var_26C = Me.Txt
  loc_1B8A453:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B8A47F:               var_18C = Now
  loc_1B8A489:               var_274 = 0
  loc_1B8A494:               var_270 = 0
  loc_1B8A49F:               var_25C = 0
  loc_1B8A4A8:               var_258 = "A"
  loc_1B8A4C1:               var_14C = var_98 & var_268.Text
  loc_1B8A4CE:               var_16C = (CVar(var_14C & " Dt.:       ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8A4E9:               var_100 = Abs(var_F0)
  loc_1B8A526:               Proc_6_140_12D90F4(MemVar_1F92044, var_1EC, var_A6, var_AC, CLng(var_220), var_224, MemVar_1F92070, var_22C)
  loc_1B8A58C:               var_A6 = (var_A6 + 1)
  loc_1B8A58F:             End If
  loc_1B8A58F:           End If
  loc_1B8A595:           var_A6 = (var_A6 + 1)
  loc_1B8A598:         End If
  loc_1B8A598:       End If
  loc_1B8A59B:     Else
  loc_1B8A5C1:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")), var_A6, var_A6, CStr(var_1A4), CSng(var_100))
  loc_1B8A5DB:       If (var_F0 > 0) Then
  loc_1B8A5F8:         var_B4 = var_88.Fields.Item("CSign")
  loc_1B8A608:         var_130 = "-"
  loc_1B8A61A:         If (var_B4.Value = 0) Then
  loc_1B8A640:           If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8A651:             Set var_B0 = Me.Txt
  loc_1B8A657:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_14C, CDbl(0), CStr(var_1C4))
  loc_1B8A65F:             CStr(var_16C) = var_B4.Text
  loc_1B8A672:             Set var_BC = Me.Txt
  loc_1B8A678:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC)
  loc_1B8A680:             MemVar_1F920C8 = var_C0.Tag
  loc_1B8A693:             Set var_144 = Me.Txt
  loc_1B8A699:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F4)
  loc_1B8A6A1:             CDate(var_18C) = var_148.Text
  loc_1B8A6C6:             Set var_190 = Me.Txt
  loc_1B8A6CC:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8A6FB:             var_110 = var_88.Fields.Item("ACode").Value
  loc_1B8A726:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8A739:             Set var_21C = Me.Txt
  loc_1B8A73F:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8A747:             var_B8 = var_260.Tag
  loc_1B8A74F:             var_100 = Now
  loc_1B8A759:             var_25C = 0
  loc_1B8A764:             var_258 = 0
  loc_1B8A76F:             var_254 = 0
  loc_1B8A778:             var_250 = "A"
  loc_1B8A7D7:             Proc_6_140_12D90F4(MemVar_1F92044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8A822:           Else
  loc_1B8A830:             Set var_B0 = Me.Txt
  loc_1B8A836:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1F0, CStr(var_110), CSng(var_F0), CDbl(0))
  loc_1B8A83E:             var_B8 = var_B4.Text
  loc_1B8A851:             Set var_BC = Me.Txt
  loc_1B8A857:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8A85F:             MemVar_1F920C8 = var_C0.Tag
  loc_1B8A872:             Set var_144 = Me.Txt
  loc_1B8A878:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_224)
  loc_1B8A880:             CDate(var_100) = var_148.Text
  loc_1B8A8A5:             Set var_190 = Me.Txt
  loc_1B8A8AB:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8A8DA:             var_18C = var_88.Fields.Item("ACode").Value
  loc_1B8A905:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8A918:             Set var_21C = Me.Txt
  loc_1B8A91E:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8A926:             var_B8 = var_260.Tag
  loc_1B8A939:             Set var_264 = Me.Txt
  loc_1B8A93F:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B8A947:             var_14C = var_268.Text
  loc_1B8A957:             Set var_26C = Me.Txt
  loc_1B8A95D:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B8A989:             var_16C = Now
  loc_1B8A993:             var_278 = 0
  loc_1B8A99E:             var_274 = 0
  loc_1B8A9A9:             var_270 = 0
  loc_1B8A9B2:             var_25C = "A"
  loc_1B8A9D8:             var_15C = (CVar(var_98 & var_14C & " Dt.:     ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8AA2B:             Proc_6_140_12D90F4(MemVar_1F92044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8AA89:           End If
  loc_1B8AA8C:         Else
  loc_1B8AAAF:           If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8AAC0:             Set var_B0 = Me.Txt
  loc_1B8AAC6:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_14C, CStr(var_18C), CDbl(0), CSng(var_F0))
  loc_1B8AACE:             var_B8 = var_B4.Text
  loc_1B8AAE1:             Set var_BC = Me.Txt
  loc_1B8AAE7:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(CVar(var_14C & " Dt.:       ")))
  loc_1B8AAEF:             MemVar_1F920C8 = var_C0.Tag
  loc_1B8AB02:             Set var_144 = Me.Txt
  loc_1B8AB08:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F4)
  loc_1B8AB10:             CDate(var_16C) = var_148.Text
  loc_1B8AB35:             Set var_190 = Me.Txt
  loc_1B8AB3B:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8AB6A:             var_110 = var_88.Fields.Item("ACode").Value
  loc_1B8AB95:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8ABA8:             Set var_21C = Me.Txt
  loc_1B8ABAE:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8ABB6:             var_B8 = var_260.Tag
  loc_1B8ABBE:             var_100 = Now
  loc_1B8ABC8:             var_25C = 0
  loc_1B8ABD3:             var_258 = 0
  loc_1B8ABDE:             var_254 = 0
  loc_1B8ABE7:             var_250 = "A"
  loc_1B8AC46:             Proc_6_140_12D90F4(MemVar_1F92044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8AC91:           Else
  loc_1B8AC9F:             Set var_B0 = Me.Txt
  loc_1B8ACA5:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1F0, CStr(var_110), CDbl(0), CSng(var_F0))
  loc_1B8ACAD:             var_B8 = var_B4.Text
  loc_1B8ACC0:             Set var_BC = Me.Txt
  loc_1B8ACC6:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8ACCE:             MemVar_1F920C8 = var_C0.Tag
  loc_1B8ACE1:             Set var_144 = Me.Txt
  loc_1B8ACE7:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_224)
  loc_1B8ACEF:             CDate(var_100) = var_148.Text
  loc_1B8AD14:             Set var_190 = Me.Txt
  loc_1B8AD1A:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8AD49:             var_18C = var_88.Fields.Item("ACode").Value
  loc_1B8AD74:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8AD87:             Set var_21C = Me.Txt
  loc_1B8AD8D:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8AD95:             var_B8 = var_260.Tag
  loc_1B8ADA8:             Set var_264 = Me.Txt
  loc_1B8ADAE:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B8ADB6:             var_14C = var_268.Text
  loc_1B8ADC6:             Set var_26C = Me.Txt
  loc_1B8ADCC:             Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B8ADF8:             var_16C = Now
  loc_1B8AE02:             var_278 = 0
  loc_1B8AE0D:             var_274 = 0
  loc_1B8AE18:             var_270 = 0
  loc_1B8AE21:             var_25C = "A"
  loc_1B8AE47:             var_15C = (CVar(var_98 & var_14C & " Dt.:       ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8AE9A:             Proc_6_140_12D90F4(MemVar_1F92044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8AEF8:           End If
  loc_1B8AEF8:         End If
  loc_1B8AEFE:         var_A6 = (var_A6 + 1)
  loc_1B8AF04:       Else
  loc_1B8AF2A:         Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")), var_A6, CStr(var_18C), CSng(var_F0), CDbl(0))
  loc_1B8AF44:         If (var_F0 < 0) Then
  loc_1B8AF61:           var_B4 = var_88.Fields.Item("CSign")
  loc_1B8AF71:           var_130 = "-"
  loc_1B8AF83:           If (var_B4.Value = 0) Then
  loc_1B8AFA9:             If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8AFBA:               Set var_B0 = Me.Txt
  loc_1B8AFC0:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_14C, var_B8)
  loc_1B8AFC8:               CStr(CVar(var_14C & " Dt.:       ")) = var_B4.Text
  loc_1B8AFDB:               Set var_BC = Me.Txt
  loc_1B8AFE1:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC)
  loc_1B8AFE9:               MemVar_1F920C8 = var_C0.Tag
  loc_1B8AFFC:               Set var_144 = Me.Txt
  loc_1B8B002:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F4)
  loc_1B8B00A:               CDate(var_16C) = var_148.Text
  loc_1B8B02F:               Set var_190 = Me.Txt
  loc_1B8B035:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8B064:               var_120 = var_88.Fields.Item("ACode").Value
  loc_1B8B08F:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8B0A2:               Set var_21C = Me.Txt
  loc_1B8B0A8:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8B0B0:               var_B8 = var_260.Tag
  loc_1B8B0B8:               var_110 = Now
  loc_1B8B0C2:               var_25C = 0
  loc_1B8B0CD:               var_258 = 0
  loc_1B8B0D8:               var_254 = 0
  loc_1B8B0E1:               var_250 = "A"
  loc_1B8B100:               var_100 = Abs(var_F0)
  loc_1B8B144:               Proc_6_140_12D90F4(MemVar_1F92044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8B18F:             Else
  loc_1B8B19D:               Set var_B0 = Me.Txt
  loc_1B8B1A3:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1F0, CStr(var_120), CDbl(0), CSng(var_100))
  loc_1B8B1AB:               var_B8 = var_B4.Text
  loc_1B8B1BE:               Set var_BC = Me.Txt
  loc_1B8B1C4:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8B1CC:               MemVar_1F920C8 = var_C0.Tag
  loc_1B8B1DF:               Set var_144 = Me.Txt
  loc_1B8B1E5:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_224)
  loc_1B8B1ED:               CDate(var_110) = var_148.Text
  loc_1B8B212:               Set var_190 = Me.Txt
  loc_1B8B218:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8B247:               var_1A4 = var_88.Fields.Item("ACode").Value
  loc_1B8B272:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8B285:               Set var_21C = Me.Txt
  loc_1B8B28B:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8B293:               var_B8 = var_260.Tag
  loc_1B8B2A6:               Set var_264 = Me.Txt
  loc_1B8B2AC:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B8B2B4:               var_14C = var_268.Text
  loc_1B8B2C4:               Set var_26C = Me.Txt
  loc_1B8B2CA:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B8B2F6:               var_18C = Now
  loc_1B8B300:               var_278 = 0
  loc_1B8B30B:               var_274 = 0
  loc_1B8B316:               var_270 = 0
  loc_1B8B31F:               var_25C = "A"
  loc_1B8B345:               var_16C = (CVar(var_98 & var_14C & " Dt.:       ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8B35F:               var_100 = Abs(var_F0)
  loc_1B8B39C:               Proc_6_140_12D90F4(MemVar_1F92044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8B3FA:             End If
  loc_1B8B3FD:           Else
  loc_1B8B420:             If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8B431:               Set var_B0 = Me.Txt
  loc_1B8B437:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_14C, CStr(var_1A4), CSng(var_100), CDbl(0))
  loc_1B8B43F:               var_B8 = var_B4.Text
  loc_1B8B452:               Set var_BC = Me.Txt
  loc_1B8B458:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, CStr(var_16C))
  loc_1B8B460:               MemVar_1F920C8 = var_C0.Tag
  loc_1B8B473:               Set var_144 = Me.Txt
  loc_1B8B479:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F4)
  loc_1B8B481:               CDate(var_18C) = var_148.Text
  loc_1B8B4A6:               Set var_190 = Me.Txt
  loc_1B8B4AC:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8B4DB:               var_120 = var_88.Fields.Item("ACode").Value
  loc_1B8B506:               Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RevAmt")))
  loc_1B8B519:               Set var_21C = Me.Txt
  loc_1B8B51F:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8B527:               var_B8 = var_260.Tag
  loc_1B8B52F:               var_110 = Now
  loc_1B8B539:               var_25C = 0
  loc_1B8B544:               var_258 = 0
  loc_1B8B54F:               var_254 = 0
  loc_1B8B558:               var_250 = "A"
  loc_1B8B57E:               var_100 = Abs(var_F0)
  loc_1B8B5BB:               Proc_6_140_12D90F4(MemVar_1F92044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8B606:             Else
  loc_1B8B614:               Set var_B0 = Me.Txt
  loc_1B8B61A:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1F0, CStr(var_120), CSng(var_100), CDbl(0))
  loc_1B8B622:               var_B8 = var_B4.Text
  loc_1B8B635:               Set var_BC = Me.Txt
  loc_1B8B63B:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8B643:               MemVar_1F920C8 = var_C0.Tag
  loc_1B8B656:               Set var_144 = Me.Txt
  loc_1B8B65C:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_224)
  loc_1B8B664:               CDate(var_110) = var_148.Text
  loc_1B8B689:               Set var_190 = Me.Txt
  loc_1B8B68F:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8B6BE:               var_1A4 = var_88.Fields.Item("ACode").Value
  loc_1B8B6E2:               var_D0 = CVar(var_88.Fields.Item("RevAmt")) 'Address
  loc_1B8B6E9:               Proc_6_39_E7C810(var_F0, var_D0)
  loc_1B8B6FC:               Set var_21C = Me.Txt
  loc_1B8B702:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8B70A:               var_B8 = var_260.Tag
  loc_1B8B71D:               Set var_264 = Me.Txt
  loc_1B8B723:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B8B73B:               Set var_26C = Me.Txt
  loc_1B8B741:               Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B8B76D:               var_18C = Now
  loc_1B8B777:               var_278 = 0
  loc_1B8B782:               var_274 = 0
  loc_1B8B78D:               var_270 = 0
  loc_1B8B796:               var_25C = "A"
  loc_1B8B7BC:               var_16C = (CVar(var_98 & var_268.Text & " Dt.:         ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8B7CF:               var_100 = Abs(var_F0)
  loc_1B8B813:               Proc_6_140_12D90F4(MemVar_1F92044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8B871:             End If
  loc_1B8B871:           End If
  loc_1B8B877:           var_A6 = (var_A6 + 1)
  loc_1B8B87A:         End If
  loc_1B8B87A:       End If
  loc_1B8B87A:     End If
  loc_1B8B87D:     var_88.MoveNext
  loc_1B8B882:     GoTo loc_1B8801B
  loc_1B8B885:   End If
  loc_1B8B885: End If
  loc_1B8B899: var_B8 = "SELECT Sum(PostVal) as Amount, AcCode as AccName " & " FROM Purch2 Where DocID='"
  loc_1B8B8AA: Set var_B0 = Me.Txt
  loc_1B8B8B0: Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_AC, var_B8, var_D0, -1, var_BC)
  loc_1B8B8B8: var_A6 = var_B4.Text
  loc_1B8B8C1: var_14C = CStr(var_1A4) & var_AC
  loc_1B8B8D1: unk_598691.Execute var_14C & "' Group By AcCode ", CDbl(0), CSng(var_100)
  loc_1B8B8DC: Set var_88 = var_BC
  loc_1B8B90A: If (var_88.RecordCount > 0) Then
  loc_1B8B90D:   ' Referenced from: 1B8C27F
  loc_1B8B91C:   If Not(var_88.EOF) Then
  loc_1B8B936:     var_B4 = var_88.Fields.Item("Amount")
  loc_1B8B945:     Proc_6_39_E7C810(var_F0, CVar(var_B4), var_B8)
  loc_1B8B95F:     If (var_F0 > 0) Then
  loc_1B8B985:       If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8B996:         Set var_B0 = Me.Txt
  loc_1B8B99C:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_14C)
  loc_1B8B9A4:         CStr(var_16C) = var_B4.Text
  loc_1B8B9B7:         Set var_BC = Me.Txt
  loc_1B8B9BD:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0)
  loc_1B8B9C5:         var_AC = var_C0.Tag
  loc_1B8B9D8:         Set var_144 = Me.Txt
  loc_1B8B9DE:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148)
  loc_1B8B9E6:         var_1F4 = var_148.Text
  loc_1B8BA0B:         Set var_190 = Me.Txt
  loc_1B8BA11:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8BA40:         var_110 = var_88.Fields.Item("ACCNAME").Value
  loc_1B8BA6B:         Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("Amount")))
  loc_1B8BA7E:         Set var_21C = Me.Txt
  loc_1B8BA84:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8BA8C:         var_B8 = var_260.Tag
  loc_1B8BA94:         var_100 = Now
  loc_1B8BA9E:         var_25C = 0
  loc_1B8BAA9:         var_258 = 0
  loc_1B8BAB4:         var_254 = 0
  loc_1B8BABD:         var_250 = "A"
  loc_1B8BB1C:         Proc_6_140_12D90F4(MemVar_1F92044, var_14C, var_A6, var_AC, CLng(var_1F4), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8BB67:       Else
  loc_1B8BB75:         Set var_B0 = Me.Txt
  loc_1B8BB7B:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1F0, CStr(var_110), CDbl(0), CSng(var_F0))
  loc_1B8BB83:         var_B8 = var_B4.Text
  loc_1B8BB96:         Set var_BC = Me.Txt
  loc_1B8BB9C:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8BBA4:         MemVar_1F920C8 = var_C0.Tag
  loc_1B8BBB7:         Set var_144 = Me.Txt
  loc_1B8BBBD:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_224)
  loc_1B8BBC5:         CDate(var_100) = var_148.Text
  loc_1B8BBEA:         Set var_190 = Me.Txt
  loc_1B8BBF0:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8BC1F:         var_18C = var_88.Fields.Item("ACCNAME").Value
  loc_1B8BC4A:         Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("Amount")))
  loc_1B8BC5D:         Set var_21C = Me.Txt
  loc_1B8BC63:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8BC6B:         var_B8 = var_260.Tag
  loc_1B8BC7E:         Set var_264 = Me.Txt
  loc_1B8BC84:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_268)
  loc_1B8BC8C:         var_14C = var_268.Text
  loc_1B8BC9C:         Set var_26C = Me.Txt
  loc_1B8BCA2:         Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_27C)
  loc_1B8BCCE:         var_16C = Now
  loc_1B8BCD8:         var_278 = 0
  loc_1B8BCE3:         var_274 = 0
  loc_1B8BCEE:         var_270 = 0
  loc_1B8BCF7:         var_25C = "A"
  loc_1B8BD10:         var_1EC = var_98 & var_14C
  loc_1B8BD1D:         var_15C = (CVar(var_1EC & " Dt.:   ") + Format(CVar(var_27C), "dd/mm/yy"))
  loc_1B8BD70:         Proc_6_140_12D90F4(MemVar_1F92044, var_1F0, var_A6, var_AC, CLng(var_224), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8BDCE:       End If
  loc_1B8BDD4:       var_A6 = (var_A6 + 1)
  loc_1B8BDDA:     Else
  loc_1B8BDF1:       var_B4 = var_88.Fields.Item("Amount")
  loc_1B8BE00:       Proc_6_39_E7C810(var_F0, CVar(var_B4), var_A6, CStr(var_18C), CSng(var_F0), CDbl(0))
  loc_1B8BE1A:       If (var_F0 < 0) Then
  loc_1B8BE40:         If (((global_124 = "PRR") Or (global_124 = "PRC")) Or (global_124 = "CRN")) Then
  loc_1B8BE51:           Set var_B0 = Me.Txt
  loc_1B8BE57:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_14C, var_B8)
  loc_1B8BE5F:           CStr(CVar(var_98 & var_268.Text & " Dt.:         ")) = var_B4.Text
  loc_1B8BE72:           Set var_BC = Me.Txt
  loc_1B8BE78:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC)
  loc_1B8BE80:           MemVar_1F920C8 = var_C0.Tag
  loc_1B8BE93:           Set var_144 = Me.Txt
  loc_1B8BE99:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_1F4)
  loc_1B8BEA1:           CDate(var_16C) = var_148.Text
  loc_1B8BEB3:           var_220 = Me.LblVPrefix.Caption
  loc_1B8BEC6:           Set var_190 = Me.Txt
  loc_1B8BECC:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8BEFB:           var_120 = var_88.Fields.Item("ACCNAME").Value
  loc_1B8BF26:           Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("Amount")))
  loc_1B8BF39:           Set var_21C = Me.Txt
  loc_1B8BF3F:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(4), var_260)
  loc_1B8BF47:           var_B8 = var_260.Tag
  loc_1B8BF4F:           var_110 = Now
  loc_1B8BF59:           var_25C = 0
  loc_1B8BF64:           var_258 = 0
  loc_1B8BF6F:           var_254 = 0
  loc_1B8BF78:           var_250 = "A"
  loc_1B8BF9E:           var_100 = Abs(var_F0)
  loc_1B8BFDB:           Proc_6_140_12D90F4(MemVar_1F92044, var_14C, var_A6, var_AC, CLng(var_1F4), var_220, MemVar_1F92070, var_194.Text)
  loc_1B8C026:         Else
  loc_1B8C034:           Set var_B0 = Me.Txt
  loc_1B8C03A:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(0), var_B4, var_1EC, CStr(var_120), CSng(var_100), CDbl(0))
  loc_1B8C042:           var_B8 = var_B4.Text
  loc_1B8C055:           Set var_BC = Me.Txt
  loc_1B8C05B:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(1), var_C0, var_AC, var_9C)
  loc_1B8C063:           MemVar_1F920C8 = var_C0.Tag
  loc_1B8C076:           Set var_144 = Me.Txt
  loc_1B8C07C:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(2), var_148, var_220)
  loc_1B8C084:           CDate(var_110) = var_148.Text
  loc_1B8C0A9:           Set var_190 = Me.Txt
  loc_1B8C0AF:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(3), var_194)
  loc_1B8C0DE:           var_1A4 = var_88.Fields.Item("ACCNAME").Value
  loc_1B8C109:           Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("Amount")))
  loc_1B8C11C:           Set var_21C = Me.Txt
  loc_1B8C122:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(5), var_260)
  loc_1B8C13A:           Set var_264 = Me.Txt
  loc_1B8C140:           Call 0.Method_Proc_338_111_1B8C2940 (CInt(6), var_268)
  loc_1B8C16C:           var_18C = Now
  loc_1B8C176:           var_274 = 0
  loc_1B8C181:           var_270 = 0
  loc_1B8C18C:           var_25C = 0
  loc_1B8C195:           var_258 = "A"
  loc_1B8C1BB:           var_16C = (CVar(var_98 & var_260.Text & " Dt.:     ") + Format(CVar(var_268), "dd/mm/yy"))
  loc_1B8C1C7:           var_250 = vbNullString
  loc_1B8C1D0:           var_100 = Abs(var_F0)
  loc_1B8C214:           Proc_6_140_12D90F4(MemVar_1F92044, var_1EC, var_A6, var_AC, CLng(var_220), Me.LblVPrefix.Caption, MemVar_1F92070, var_194.Text)
  loc_1B8C26E:         End If
  loc_1B8C274:         var_A6 = (var_A6 + 1)
  loc_1B8C277:       End If
  loc_1B8C277:     End If
  loc_1B8C27A:     var_88.MoveNext
  loc_1B8C27F:     GoTo loc_1B8B90D
  loc_1B8C282:   End If
  loc_1B8C282: End If
  loc_1B8C287: Set var_8C = Nothing
  loc_1B8C28F: Set var_88 = Nothing
  loc_1B8C292: Exit Sub
End Sub
