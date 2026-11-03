VERSION 5.00
Begin VB.Form pPBill
  Caption = "Purchase Bill Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  Icon = "pPBill.frx":0
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
    Width = 8610
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
    Top = 6495
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
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HFF&
    Left = 30
    Top = 7305
    Width = 2745
    Height = 345
    TabIndex = 66
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
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
    Top = 6480
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

Attribute VB_Name = "pPBill"

Private global_256 As Integer
Private global_258 As Integer
Private global_152 As Integer
Private global_154 As Integer
Private global_52 As Integer
Private global_128 As Integer
Private global_216 As Double
Private global_100 As Integer

Private Sub BillImage_Click() 'EAC384
  'Data Table: 59BA10
  Dim var_88 As Image
  loc_EAC304: Set var_88 = Me.TopCtrl1
  loc_EAC30A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_EAC346: If ((CStr() = "Browse") And (Me.BillImage.Tag <> vbNullString)) Then
  loc_EAC364:   FrmImage.ImagePath = Me.BillImage.Tag
  loc_EAC37D:   Call 0.Method_arg_2B0 (var_B4)
  loc_EAC382: End If
  loc_EAC382: Exit Sub
End Sub

Private Sub BillImage_DblClick() '105D2A4
  'Data Table: 59BA10
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105D05C: On Error Goto loc_105D245
  loc_105D063: Set var_88 = Me.TopCtrl1
  loc_105D069: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_105D07D: Set var_A0 = Me.TopCtrl1
  loc_105D083: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005((CStr() <> "Add"))
  loc_105D0A9: If ( And (CStr() <> "Edit")) Then
  loc_105D0AC:   Exit Sub
  loc_105D0AD: End If
  loc_105D0BD: Me.CDlg.Filter = "*.*"
  loc_105D0D5: Me.CDlg.Action = 1
  loc_105D0E7: Me.CDlg.FileName = 
  loc_105D0EF: var_9C = CStr()
  loc_105D0FC: Me.BillImage.Tag = var_9C
  loc_105D118: Me.CDlg.FileName = 
  loc_105D120: var_B0 = CVar(CStr()) 'String
  loc_105D126: var_E4 = Trim(var_B0)
  loc_105D12F: Set var_A0 = Me.CDlg
  loc_105D135: var_A0.FileName = 
  loc_105D153: var_F4 = Right(var_E4, 3)
  loc_105D18E: var_D4 = "AVI"
  loc_105D1BC: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105D1CD:   var_C4 = "Invalid Format"
  loc_105D1D8:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105D1EB: Else
  loc_105D202:   Set var_88 = Me.CDlg
  loc_105D208:   var_88.FileName = var_C4
  loc_105D210:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105D21A:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105D22F:   Me.BillImage.Picture = var_A0
  loc_105D244: End If
  loc_105D244: Exit Sub
  loc_105D245: ' Referenced from: 105D05C
  loc_105D24D: Set var_88 = Err()
  loc_105D253: Call 0.Method_arg_1C (var_1B0)
  loc_105D264: If (var_1B0 <> 0) Then
  loc_105D27D:   Set var_88 = Err()
  loc_105D283:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105D28E:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105D2A1: End If
  loc_105D2A1: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF7800
  'Data Table: 59BA10
  Dim FGPoint_UnknownEvent_900 As Variant
  loc_EF7740: If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_EF7743:   Call DgMR_UnknownEvent_9()
  loc_EF7748: End If
  loc_EF7764: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF7767:   Call DGItem_UnknownEvent_9()
  loc_EF776C: End If
  loc_EF7788: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EF778B:   Call DGParty_UnknownEvent_9()
  loc_EF7790: End If
  loc_EF77AC: If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_EF77AF:   Call DGPartyBillNo_UnknownEvent_9()
  loc_EF77B4: End If
  loc_EF77D0: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EF77D3:   Call DGVType_UnknownEvent_9()
  loc_EF77D8: End If
  loc_EF77F4: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_EF77F7:   Call DGGod_UnknownEvent_9()
  loc_EF77FC: End If
  loc_EF77FC: Exit Sub
  loc_EF77FD: FGPoint_UnknownEvent_900 = 
End Sub

Private Sub DGSaleAc_UnknownEvent_9 'FF277C
  'Data Table: 59BA10
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FF2594: On Error Goto loc_FF2775
  loc_FF25A0: Set var_A8 = Me.DGSaleAc
  loc_FF25A6: var_A8.Visible = False
  loc_FF25C8: If (Me.var_A8.RecordCount > 0) Then
  loc_FF2608:   Set var_B4 = Me.TxtGrid
  loc_FF260E:   Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B8)
  loc_FF2616:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FF2636:   var_C8 = Me.FGrid.Row
  loc_FF263F:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF2647:   var_EC = CVar(CLng(&H1B)) 'Long
  loc_FF267D:   var_11C = CVar(CStr(Me.var_C8.Fields.Item("Name").Value)) 'String
  loc_FF2685:   Set var_B8 = Me.FGrid
  loc_FF268B:   LateIdCallSt
  loc_FF26B1:   var_C8 = Me.FGrid.Row
  loc_FF26BA:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF26C2:   var_EC = CVar(CLng(&H1C)) 'Long
  loc_FF26E7:   var_B0 = Me.var_C8.Fields.Item("Code")
  loc_FF26F8:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FF2700:   Set var_B8 = Me.FGrid
  loc_FF2706:   LateIdCallSt
  loc_FF2722: End If
  loc_FF272E: Set var_A8 = Me.TxtGrid
  loc_FF2734: Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FF273C: var_A4 = var_B0.Visible
  loc_FF274E: If (var_12E = &HFF) Then
  loc_FF275A:   Set var_A8 = Me.TxtGrid
  loc_FF2760:   Call 0.Method_DGSaleAc_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FF2768:   var_B0.SetFocus
  loc_FF2774: End If
  loc_FF2774: Exit Sub
  loc_FF2775: ' Referenced from: FF2594
  loc_FF2775: Proc_6_60_E62BC4(var_11C, var_EC)
  loc_FF277A: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E4DD2C
  'Data Table: 59BA10
  loc_E4DD13: If (Me.FrTrans.Visible = &HFF) Then
  loc_E4DD22:   Me.FrTrans.Visible = False
  loc_E4DD2A: End If
  loc_E4DD2A: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'FF3FE4
  'Data Table: 59BA10
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FF3DFC: On Error Goto loc_FF3FDD
  loc_FF3E08: Set var_A8 = Me.DGTaxStru
  loc_FF3E0E: var_A8.Visible = False
  loc_FF3E30: If (Me.var_A8.RecordCount > 0) Then
  loc_FF3E70:   Set var_B4 = Me.TxtGrid
  loc_FF3E76:   Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B8)
  loc_FF3E7E:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FF3E9E:   var_C8 = Me.FGrid.Row
  loc_FF3EA7:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF3EAF:   var_EC = CVar(CLng(&H19)) 'Long
  loc_FF3EE5:   var_11C = CVar(CStr(Me.var_C8.Fields.Item("Name").Value)) 'String
  loc_FF3EED:   Set var_B8 = Me.FGrid
  loc_FF3EF3:   LateIdCallSt
  loc_FF3F19:   var_C8 = Me.FGrid.Row
  loc_FF3F22:   var_A4 = CVar(CLng(var_C8)) 'Long
  loc_FF3F2A:   var_EC = CVar(CLng(&H1A)) 'Long
  loc_FF3F4F:   var_B0 = Me.var_C8.Fields.Item("Code")
  loc_FF3F60:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FF3F68:   Set var_B8 = Me.FGrid
  loc_FF3F6E:   LateIdCallSt
  loc_FF3F8A: End If
  loc_FF3F96: Set var_A8 = Me.TxtGrid
  loc_FF3F9C: Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FF3FA4: var_A4 = var_B0.Visible
  loc_FF3FB6: If (var_12E = &HFF) Then
  loc_FF3FC2:   Set var_A8 = Me.TxtGrid
  loc_FF3FC8:   Call 0.Method_DGTaxStru_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FF3FD0:   var_B0.SetFocus
  loc_FF3FDC: End If
  loc_FF3FDC: Exit Sub
  loc_FF3FDD: ' Referenced from: FF3DFC
  loc_FF3FDD: Proc_6_60_E62BC4(var_11C, var_EC)
  loc_FF3FE2: Exit Sub
End Sub

Private Sub DGPartyBillNo_UnknownEvent_9 'F3B9E4
  'Data Table: 59BA10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B8DB: Me.DGPartyBillNo.Visible = False
  loc_F3B8FA: If (Me.RecordCount > 0) Then
  loc_F3B939:   Set var_B4 = Me.Txt
  loc_F3B93F:   Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3B947:   var_B8.Text = CStr(Me.Fields.Item("PartyBillNoCd").Value)
  loc_F3B97A:   var_B0 = Me.Fields.Item("PartyBillNoNm")
  loc_F3B999:   Set var_B4 = Me.Txt
  loc_F3B99F:   Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3B9A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3B9BD: End If
  loc_F3B9C8: Set var_A8 = Me.Txt
  loc_F3B9CE: Call 0.Method_DGPartyBillNo_UnknownEvent_90 (CInt(5))
  loc_F3B9D6: var_B0.SetFocus
  loc_F3B9E2: Exit Sub
End Sub

Private Sub DGPartyBillNo_UnknownEvent_1F 'EA1794
  'Data Table: 59BA10
  Dim var_A8 As Variant
  loc_EA1714: Set var_88 = Me.DGPartyBillNo
  loc_EA173E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1746: Set var_BC = Me.DGPartyBillNo
  loc_EA1782: Proc_6_138_106D6F8(Me.DGPartyBillNo, global_72, CInt(5), Me.FGPoint)
  loc_EA1790: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D014
  'Data Table: 59BA10
  loc_E5CFEF: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5CFF2:   Exit Sub
  loc_E5CFF3: End If
  loc_E5D00A: global_256 = CInt(CLng(Me.GridSel.Row))
  loc_E5D013: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 'FF65C8
  'Data Table: 59BA10
  Dim var_8C As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_10C As String
  Dim var_86 As Integer
  loc_FF63F9: If ((CLng(Me.GridSel.Col) <> 0) Or (global_256 = 0)) Then
  loc_FF63FC:   Exit Sub
  loc_FF63FD: End If
  loc_FF6459: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_FF645C:   Exit Sub
  loc_FF645D: End If
  loc_FF6466: global_258 = global_256
  loc_FF648E: For var_BA = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_88 = var_BA 'Integer
  loc_FF64A7:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_FF64C2:   Me.GridSel.Col = 0
  loc_FF64DA:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FF64F4:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FF6500:   var_CC = CVar(CLng(var_88)) 'Long
  loc_FF6505:   var_EC = 0
  loc_FF650E:   var_10C = vbNullString
  loc_FF6518:   Set var_8C = Me.GridSel
  loc_FF651E:   LateIdCallSt
  loc_FF652C: Next var_BA 'Integer
  loc_FF6538: var_CC = CVar(CLng(global_256)) 'Long
  loc_FF653D: var_EC = 0
  loc_FF6546: var_10C = "ü"
  loc_FF6550: Set var_8C = Me.GridSel
  loc_FF6556: LateIdCallSt
  loc_FF6577: Me.GridSel.Row = CVar(CLng(global_256))
  loc_FF6590: var_86 = CInt((UBound(global_252, 1) + 1))
  loc_FF65A2: ReDim Preserve global_252(0 To CLng(var_86))
  loc_FF65BC: global_252(CLng(var_86)) = global_256
  loc_FF65C5: Exit Sub
  loc_FF65C6: Set var_67B4 = 0
End Sub

Private Sub TxtBarCode_KeyDown(KeyCode As Integer, Shift As Integer) 'E11F90
  'Data Table: 59BA10
  loc_E11F82: If (CLng(KeyCode) = &HD) Then
  loc_E11F8A:   Call TxtBarCode_Validate(&HFF)
  loc_E11F8F: End If
  loc_E11F8F: Exit Sub
End Sub

Private Sub TxtBarCode_Validate(Cancel As Boolean) '1524238
  'Data Table: 59BA10
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
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_104 As Variant
  Dim var_208 As Double
  Dim var_160 As Variant
  Dim var_210 As Double
  Dim var_1D0 As Variant
  Dim var_E4 As Variant
  Dim var_214 As TextBox
  Dim var_14C As Variant
  Dim unk_59BA2D As Connection15
  Dim var_10C As Recordset15
  Dim var_112 As Integer
  loc_15232D8: Set var_88 = Me.TopCtrl1
  loc_15232DE: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_15232E6: var_9C = CStr()
  loc_152331A: If ((var_9C = "Browse") And (Me.TxtBarCode.Text <> vbNullString)) Then
  loc_152332A:   Me.TxtBarCode.Text = vbNullString
  loc_1523338:   Call 0.Method_arg_50 (var_9C)
  loc_1523359:   MsgBox("Not Applicable In Browse Mode !", &H10, CVar(var_9C), var_E4, var_104)
  loc_1523369:   Exit Sub
  loc_152336A: End If
  loc_152338C: If (Trim(CVar(Me.TxtBarCode)) = vbNullString) Then
  loc_152338F:   Exit Sub
  loc_1523390: End If
  loc_152339B: var_C4 = Trim(CVar(Me.TxtBarCode))
  loc_15233A4: var_110 = CStr(var_C4)
  loc_15233BB: Me.TxtBarCode.Text = vbNullString
  loc_15233DA: If (Me.RecordCount = 0) Then
  loc_15233DD:   Exit Sub
  loc_15233DE: End If
  loc_15233E4: Me.MoveFirst
  loc_152340E: Me.Find "BarCode='" & var_110 & "'", 0, 1
  loc_152342E: If (Me.EOF = &HFF) Then
  loc_152344A:   MsgBox("Item Not Found!", &H10, var_C4, var_E4, var_104)
  loc_152345D: Else
  loc_1523477:   var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1523484:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_152348C:   var_F4 = CVar(CLng(&HC)) 'Long
  loc_15234B7:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15234BA:     var_B4 = vbNullString
  loc_15234C4:     Set var_88 = Me.FGrid
  loc_15234EF:     var_106 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15234F8:   End If
  loc_152350B:   Me.FGrid.TopRow = CVar(CLng(var_106))
  loc_1523517:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_152351F:   var_12C = CVar(CLng(2)) 'Long
  loc_1523552:   var_C4 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_152355A:   Set var_150 = Me.FGrid
  loc_1523560:   LateIdCallSt
  loc_152357C:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_1523584:   var_12C = CVar(CLng(&HC)) 'Long
  loc_15235B7:   var_C4 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_15235BF:   Set var_150 = Me.FGrid
  loc_15235C5:   LateIdCallSt
  loc_15235E1:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_15235E9:   var_12C = CVar(CLng(1)) 'Long
  loc_152361C:   var_C4 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1523624:   Set var_150 = Me.FGrid
  loc_152362A:   LateIdCallSt
  loc_1523646:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_152364E:   var_12C = CVar(CLng(4)) 'Long
  loc_1523681:   var_C4 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1523689:   Set var_150 = Me.FGrid
  loc_152368F:   LateIdCallSt
  loc_15236AB:   var_D4 = CVar(CLng(var_106)) 'Long
  loc_15236B3:   var_12C = CVar(CLng(8)) 'Long
  loc_15236E6:   var_C4 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_15236EE:   Set var_150 = Me.FGrid
  loc_15236F4:   LateIdCallSt
  loc_152372F:   var_F4 = CVar(CLng(var_106)) 'Long
  loc_1523737:   var_13C = CVar(CLng(6)) 'Long
  loc_1523764:   var_104 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_152376C:   Set var_150 = Me.FGrid
  loc_1523772:   LateIdCallSt
  loc_1523790:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1523798:   var_F4 = CVar(CLng(0)) 'Long
  loc_15237A2:   var_98 = CVar(CStr(var_106)) 'String
  loc_15237AA:   Set var_88 = Me.FGrid
  loc_15237B0:   LateIdCallSt
  loc_15237C2:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_15237CA:   var_F4 = CVar(CLng(5)) 'Long
  loc_15237FA:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1523801:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1523809:     var_F4 = CVar(CLng(5)) 'Long
  loc_152380E:     var_13C = "1.000"
  loc_1523818:     Set var_88 = Me.FGrid
  loc_152381E:     LateIdCallSt
  loc_1523829:   End If
  loc_152382D:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1523835:   var_F4 = CVar(CLng(5)) 'Long
  loc_152384F:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_1523857:   var_208 = Val(var_9C)
  loc_152385E:   var_13C = CVar(CLng(var_106)) 'Long
  loc_1523866:   var_160 = CVar(CLng(6)) 'Long
  loc_1523880:   var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_1523888:   var_210 = Val(var_A4)
  loc_1523897:   var_1D0 = CVar(CLng(7)) 'Long
  loc_15238D0:   Set var_150 = Me.FGrid
  loc_15238D6:   LateIdCallSt
  loc_152393B:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_214, var_A4, Me.Txt, CVar(CStr(Format(CVar((var_208 * var_210)), "0.000"))), 1, 1)
  loc_1523943:   var_1D0 = var_214.Text
  loc_152395A:   Call Proc_32_108_1067170(CStr(Me.Fields.Item("Code").Value), var_A4, var_208, CVar(CLng(var_106)), var_210)
  loc_152396B:   var_14C = CVar(CLng(9)) 'Long
  loc_15239A6:   LateIdCallSt
  loc_15239EC:   var_A0 = Me.Fields.Item("Code")
  loc_1523A07:   Set var_150 = Me.Txt
  loc_1523A0D:   Call 0.Method_TxtBarCode_Validate0 (CInt(3), var_214, var_A4, Me.FGrid, CVar(CStr(Format(CVar(var_208), "0.00000"))), 1, 1)
  loc_1523A15:   var_14C = var_214.Text
  loc_1523A2C:   Call Proc_32_108_1067170(CStr(var_A0.Value), var_A4, var_208, CVar(CLng(var_106)))
  loc_1523A35:   var_12C = CVar(CLng(var_106)) 'Long
  loc_1523A3D:   var_14C = CVar(CLng(&HA)) 'Long
  loc_1523A78:   LateIdCallSt
  loc_1523AC0:   Set var_88 = Me.Txt
  loc_1523AC6:   Call 0.Method_TxtBarCode_Validate0 (CInt(7), var_A0, var_9C, CVar(CLng(&H18)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar(var_208), "0.00000"))))
  loc_1523ACE:   1 = var_A0.Tag
  loc_1523AD6:   var_98 = CVar(var_9C) 'String
  loc_1523AE4:   LateIdCallSt
  loc_1523B34:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_106)), Me.FGrid, CVar(Me.Fields.Item("DiscApp")), 1)) 'String
  loc_1523B42:   LateIdCallSt
  loc_1523B94:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1523BA2:   LateIdCallSt
  loc_1523BF4:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1523C02:   LateIdCallSt
  loc_1523C54:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1523C62:   LateIdCallSt
  loc_1523CB4:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1523CC2:   LateIdCallSt
  loc_1523D14:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1523D22:   LateIdCallSt
  loc_1523D74:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1523D7C:   Set var_150 = Me.FGrid
  loc_1523D82:   LateIdCallSt
  loc_1523D9C:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1523DA4:   var_F4 = CVar(CLng(&H17)) 'Long
  loc_1523DE0:   If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1523DE7:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1523DEF:     var_F4 = CVar(CLng(&H17)) 'Long
  loc_1523E02:     Set var_88 = Me.FGrid
  loc_1523E08:     LateIdCallSt
  loc_1523E17:     var_B4 = CVar(CLng(var_106)) 'Long
  loc_1523E1F:     var_F4 = CVar(CLng(&H16)) 'Long
  loc_1523E32:     Set var_88 = Me.FGrid
  loc_1523E38:     LateIdCallSt
  loc_1523E43:   End If
  loc_1523E47:   var_B4 = CVar(CLng(var_106)) 'Long
  loc_1523E4F:   var_F4 = CVar(CLng(5)) 'Long
  loc_1523E78:   var_13C = CVar(CLng(var_106)) 'Long
  loc_1523E80:   var_160 = CVar(CLng(&HA)) 'Long
  loc_1523EA2:   var_210 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1523EF0:   LateIdCallSt
  loc_1523F53:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_106)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_210)), "0.00"))), 1, 1)) 'String
  loc_1523F61:   LateIdCallSt
  loc_1523FB3:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_106)), Me.FGrid, var_C4, CVar(CLng(&HB)))) 'String
  loc_1523FC1:   LateIdCallSt
  loc_1524013:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_1524021:   LateIdCallSt
  loc_1524073:   var_C4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_106)), Me.FGrid, var_C4)) 'String
  loc_152407B:   Set var_150 = Me.FGrid
  loc_1524081:   LateIdCallSt
  loc_15240D2:   var_9C = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_C4, -1, var_150, var_150)
  loc_15240E6:   unk_59BA2D.Execute var_C4 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(var_106)), var_210
  loc_15240F1:   Set var_10C = var_150
  loc_152411F:   If (var_10C.RecordCount > 0) Then
  loc_1524159:     Proc_6_39_E7C810(var_C4, CVar(var_10C.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(var_106)))
  loc_1524162:     var_E4 = CVar(CStr(var_C4)) 'String
  loc_152416A:     Set var_150 = Me.FGrid
  loc_1524170:     LateIdCallSt
  loc_1524188:   End If
  loc_15241A3:   var_98 = Me.FGrid.TextMatrix)
  loc_15241FB:   var_112 = Proc_96_27_11F27DC(CStr(var_98), CDbl(1), MemVar_1F92070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H17)), CVar(CLng(var_106)))
  loc_1524223:   Me.LblCurStockStr.Caption = global_56
  loc_1524230:   Call Proc_32_103_17C3018(&H32, var_112, var_98, CVar(CLng(&HC)), CVar(CLng(var_106)))
  loc_1524235: End If
  loc_1524235: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECD44C
  'Data Table: 59BA10
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECD3AE: Set var_88 = Me.TxtPer
  loc_ECD3B4: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECD3C2: Proc_6_74_E226B0(var_8C)
  loc_ECD3CE: Call Proc_32_96_FE1284(var_8C)
  loc_ECD3E2: Set var_88 = Me.TxtPer
  loc_ECD3E8: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECD3F0: var_8C.SelStart = 0
  loc_ECD409: Set var_88 = Me.TxtPer
  loc_ECD40F: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECD42A: Set var_90 = Me.TxtPer
  loc_ECD430: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECD438: var_98.SelLength = Len(var_8C.Text)
  loc_ECD44B: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B378
  'Data Table: 59BA10
  loc_E5B345: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5B34E:   Proc_6_75_E527CC(Shift)
  loc_E5B353: End If
  loc_E5B368: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5B371:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5B376: End If
  loc_E5B376: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E586BC
  'Data Table: 59BA10
  loc_E5868E: Set var_88 = Me.TxtPer
  loc_E58694: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E586AF: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_E586BB: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E01004
  'Data Table: 59BA10
  loc_E00FFE: Call Proc_32_103_17C3018(KeyCode)
  loc_E01003: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4A16C
  'Data Table: 59BA10
  loc_E4A14A: Set var_88 = Me.TxtPer
  loc_E4A150: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4A15E: Proc_6_73_E22704(var_8C)
  loc_E4A16A: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECD360
  'Data Table: 59BA10
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECD2C2: Set var_88 = Me.TxtGt
  loc_ECD2C8: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECD2D6: Proc_6_74_E226B0(var_8C)
  loc_ECD2E2: Call Proc_32_96_FE1284(var_8C)
  loc_ECD2F6: Set var_88 = Me.TxtGt
  loc_ECD2FC: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECD304: var_8C.SelStart = 0
  loc_ECD31D: Set var_88 = Me.TxtGt
  loc_ECD323: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECD33E: Set var_90 = Me.TxtGt
  loc_ECD344: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECD34C: var_98.SelLength = Len(var_8C.Text)
  loc_ECD35F: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'F5FB00
  'Data Table: 59BA10
  Dim var_88 As DataGrid
  loc_F5FA39: var_C6 = Me.FrmList.Visible
  loc_F5FA74: If (((((CBool(Me.DGItem.Visible) = 0) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(Me.DGPartyBillNo.Visible) = 0)) And (var_C6 = 0)) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_F5FA96:   Set var_88 = Me.TxtGt
  loc_F5FA9C:   Call 0.Method_TxtGt_KeyDown8 (var_C6, KeyCode)
  loc_F5FAAC:   If ( And (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) = (var_C6 - 1))) Then
  loc_F5FAB2:     Call Proc_32_97_F0B8B0(KeyCode)
  loc_F5FAB7:     Exit Sub
  loc_F5FAB8:   End If
  loc_F5FAB8: End If
  loc_F5FACD: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F5FAD6:   Proc_6_75_E527CC(Shift)
  loc_F5FADB: End If
  loc_F5FAF0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F5FAF9:   Proc_6_76_E52838(Shift, arg_14)
  loc_F5FAFE: End If
  loc_F5FAFE: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'F7A230
  'Data Table: 59BA10
  Dim var_8C As Variant
  Dim arg_10 As Integer
  Dim var_FC As TextBox
  loc_F7A102: Set var_88 = Me.TxtGt
  loc_F7A108: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_F7A123: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_F7A12F: On Error Goto loc_F7A22E
  loc_F7A13F: Set var_88 = Me.LblCap
  loc_F7A145: Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7A14D: 2 = var_8C.Tag
  loc_F7A184: If (Trim(CVar(var_98)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_F7A18D:   If (arg_10 = &H2D) Then
  loc_F7A192:     arg_10 = 0
  loc_F7A195:   End If
  loc_F7A1A2:   Set var_88 = Me.TxtGt
  loc_F7A1A8:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7A1B0:   arg_10 = var_8C.Text
  loc_F7A200:   Set var_90 = Me.TxtPer
  loc_F7A206:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_FC, CStr(Format(CVar(((Val(var_98) * CDbl(&H64)) / global_216)), "0.00")), 1)
  loc_F7A20E:   var_FC.Text = 1
  loc_F7A22E:   ' Referenced from: F7A12F
  loc_F7A22E: End If
  loc_F7A22E: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4E064
  'Data Table: 59BA10
  loc_E4E042: Set var_88 = Me.TxtGt
  loc_E4E048: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4E056: Proc_6_73_E22704(var_8C)
  loc_E4E062: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E01D24
  'Data Table: 59BA10
  loc_E01D1E: Call Proc_32_103_17C3018(Cancel)
  loc_E01D23: Exit Sub
End Sub

Private Sub CmdImport_Click() '1246AF4
  'Data Table: 59BA10
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
  loc_12465D4: On Error Goto loc_1246AED
  loc_12465DB: Set var_88 = Me.TopCtrl1
  loc_12465E1: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_12465E9: var_9C = CStr()
  loc_12465FA: If (var_9C <> "Add") Then
  loc_1246603:   Call 0.Method_arg_50 (var_9C)
  loc_1246611:   var_BC = CVar(var_9C) 'String
  loc_1246624:   MsgBox("Import Only In Add Mode.", &H40, var_BC, var_DC, var_FC)
  loc_1246634:   Exit Sub
  loc_1246635: End If
  loc_1246653: If (Trim(MemVar_1F9222C) = vbNullString) Then
  loc_1246659:   MemVar_1F9222C = "C:\Analysis\Transfer"
  loc_1246669:   Call 0.Method_CmdImport_Click8 ("C:\Analysis")
  loc_1246674:   If (var_116 = 0) Then
  loc_1246683:     Call 0.Method_arg_74 ("C:\Analysis", var_88)
  loc_1246697:     Call 0.Method_CmdImport_Click8 ("C:\Analysis\Transfer", var_116)
  loc_12466A2:     If (var_116 = 0) Then
  loc_12466B1:       Call 0.Method_arg_74 ("C:\Analysis\Transfer", var_88)
  loc_12466B9:     End If
  loc_12466B9:   End If
  loc_12466B9: End If
  loc_12466C5: Call 0.Method_CmdImport_Click8 (MemVar_1F9222C, var_116)
  loc_12466D0: If (var_116 = 0) Then
  loc_12466EC:   MsgBox("Transfer Location Not Exits", &H40, var_BC, var_DC, var_FC)
  loc_12466FC: End If
  loc_1246720: MemVar_1F9222C = Replace(MemVar_1F9222C & "\", "\\", "\", 1, -1, 0)
  loc_1246735: Set var_104 = New 
  loc_1246740: Me.Connection15.CursorLocation = 3
  loc_124674D: var_104.IsolationLevel = &H10
  loc_124675A: var_104.CommandTimeout = 0
  loc_1246777: var_104.Open "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F9222C & "SaleTransfer.mdb", vbNullString, vbNullString, -1
  loc_1246797: Set var_108 = New 
  loc_12467B4: var_AC = CVar("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 S Where S.LOGSITE_CODE='" & MemVar_1F92078 & "' Order by S.Vno") 'String
  loc_12467BB: Me.Recordset15.Open var_AC, CVar(var_104), 3
  loc_12467C0: Call Proc_32_86_118A908(1, -1)
  loc_12467D9: If (var_108.RecordCount = 0) Then
  loc_12467EF:   Me.GridSel.Rows = 2
  loc_12467F7:   Exit Sub
  loc_12467F8: End If
  loc_124680B: Me.GridSel.Row = 1
  loc_1246813: ' Referenced from: 1246ABA
  loc_1246822: If Not(var_108.EOF) Then
  loc_1246829:   Set var_130 = Me.GridSel
  loc_124682C:   var_AC = vbNullString
  loc_1246850:   var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1246858:   var_EC = CVar(CLng(0)) 'Long
  loc_1246866:   LateIdCallSt
  loc_1246887:   var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_124688F:   var_128 = CVar(CLng(1)) 'Long
  loc_12468BF:   var_DC = CVar(CStr(var_108.Fields.Item("VNo").Value)) 'String
  loc_12468C6:   LateIdCallSt
  loc_1246928:   var_DC = CVar(Proc_6_38_E68A98(CVar(var_108.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_130, var_DC, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_124692F:   LateIdCallSt
  loc_1246985:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_124698D:   var_140 = CVar(CLng(3)) 'Long
  loc_12469AA:   var_BC = CVar(Proc_6_38_E68A98(CVar(var_108.Fields.Item("VDate")), var_130, "dd/mmm/yyyy", var_130, vbNullString)) 'String
  loc_12469C0:   LateIdCallSt
  loc_1246A07:   Proc_6_39_E7C810(var_BC, CVar(var_108.Fields.Item("BillAmount")), var_130, CVar(CStr(Format(var_BC, "dd/mmm/yyyy"))), 1, 1)
  loc_1246A1F:   var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1246A27:   var_140 = CVar(CLng(4)) 'Long
  loc_1246A50:   var_178 = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_1246A57:   LateIdCallSt
  loc_1246A77:   Set var_130 = Nothing 
  loc_1246A94:   var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1246AA3:   Me.GridSel.Row = "BillAmount"
  loc_1246AB5:   var_108.MoveNext
  loc_1246ABA:   GoTo loc_1246813
  loc_1246ABD: End If
  loc_1246AD0: Me.GridSel.FixedRows = 1
  loc_1246AE4: Me.FrTrans.Visible = True
  loc_1246AEC: Exit Sub
  loc_1246AED: ' Referenced from: 12465D4
  loc_1246AED: Proc_6_60_E62BC4(var_130, var_178, 1, 1, var_140, var_EC)
  loc_1246AF2: Exit Sub
End Sub

Private Sub Opt_GotFocus(Index As Integer) 'F2A1A4
  'Data Table: 59BA10
  Dim var_9C As String
  Dim var_A0 As OptionButton
  Dim unk_59BA2D As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_F2A0C4: Set var_88 = Me.TopCtrl1
  loc_F2A0CA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_F2A0E3: If (CStr() = "Add") Then
  loc_F2A109:   var_9C = "Select IsNull(Max(InvoiceNo),0)+1 From Purch1 Where LOGsite_code='" & MemVar_1F92078
  loc_F2A120:   Set var_88 = Me.Opt
  loc_F2A126:   Call 0.Method_Opt_GotFocus0 (Index, var_A0, var_A4, CStr() & "' And InvoiceType='", var_98, -1)
  loc_F2A147:   unk_59BA2D.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_F2A157:    = var_C8.Item()
  loc_F2A15F:    = var_DC.Value
  loc_F2A176:   Me.LblInvoiceNo.Caption = CStr(var_A0.Caption.Fields)
  loc_F2A1A2: End If
  loc_F2A1A2: Exit Sub
End Sub

Private Sub Opt_KeyDown(KeyCode As Integer, Shift As Integer) 'E233D0
  'Data Table: 59BA10
  loc_E233C1: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E233CA:   Proc_6_75_E527CC(Shift)
  loc_E233CF: End If
  loc_E233CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60334
  'Data Table: 59BA10
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim var_67FD As Double
  loc_E602FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60312: Set var_A8 = Me.TxtGrid
  loc_E60318: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60320: var_AC.Visible = False
  loc_E6032C: Call Proc_32_96_FE1284()
  loc_E60331: Exit Sub
  loc_E60332: var_67FD = 
End Sub

Private Sub FGrid_UnknownEvent_1 'E69210
  'Data Table: 59BA10
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E691CC: Set var_88 = Me.TxtGrid
  loc_E691D2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E691EC: If (var_8C.Visible = 0) Then
  loc_E69205:   Me.FGrid.BackColorSel = CVar(CLng(global_112))
  loc_E6920D: End If
  loc_E6920D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE374
  'Data Table: 59BA10
  loc_DFE36C: Call Proc_32_90_F7413C()
  loc_DFE371: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '12BEA28
  'Data Table: 59BA10
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
  loc_12BE3CC: Set var_88 = Me.TopCtrl1
  loc_12BE3D2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_12BE417: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_12BE420:   Call Form_KeyDown(KeyCode, Shift)
  loc_12BE425: End If
  loc_12BE429: Set var_88 = Me.TopCtrl1
  loc_12BE42F: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_12BE448: If (CStr() = "Browse") Then
  loc_12BE44B:   Exit Sub
  loc_12BE44C: End If
  loc_12BE4C0: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_12BE4D9:   Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_12BE4E9:   var_9C = "+{Tab}"
  loc_12BE4EF:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_12BE4F9:   KeyCode = 0
  loc_12BE4FF: Else
  loc_12BE509:   var_B0 = Me.FGrid.Rows
  loc_12BE556:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12BE56F:     Me.FGrid.CellBackColor = CVar(CLng(global_112))
  loc_12BE585:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_12BE58F:     KeyCode = 0
  loc_12BE592:   End If
  loc_12BE592: End If
  loc_12BE598: global_152 = KeyCode
  loc_12BE5BE: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12BE5E2: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_12BE5F8:   var_EC = CLng(Me.FGrid.Col)
  loc_12BE608:   If (var_EC = CLng(2)) Then
  loc_12BE61E:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE636:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE63B:     var_11C = vbNullString
  loc_12BE645:     Set var_B4 = Me.FGrid
  loc_12BE64B:     LateIdCallSt
  loc_12BE676:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE67E:     var_FC = CVar(CLng(&HC)) 'Long
  loc_12BE683:     var_11C = vbNullString
  loc_12BE68D:     Set var_A0 = Me.FGrid
  loc_12BE693:     LateIdCallSt
  loc_12BE6B8:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE6C0:     var_FC = CVar(CLng(5)) 'Long
  loc_12BE6C5:     var_11C = vbNullString
  loc_12BE6CF:     Set var_A0 = Me.FGrid
  loc_12BE6D5:     LateIdCallSt
  loc_12BE6EA:   Else
  loc_12BE6F1:     If Not (var_EC = CLng(1)) Then
  loc_12BE6FB:       If (var_EC = CLng(5)) Then
  loc_12BE6FE:       End If
  loc_12BE711:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE729:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE72E:       var_11C = vbNullString
  loc_12BE738:       Set var_B4 = Me.FGrid
  loc_12BE73E:       LateIdCallSt
  loc_12BE759:     Else
  loc_12BE760:       If (var_EC = CLng(9)) Then
  loc_12BE776:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE77E:         var_FC = CVar(CLng(&HE)) 'Long
  loc_12BE7B1:         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12BE7C7:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE7DF:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE7E4:           var_11C = vbNullString
  loc_12BE7EE:           Set var_B4 = Me.FGrid
  loc_12BE7F4:           LateIdCallSt
  loc_12BE80C:         End If
  loc_12BE80F:       Else
  loc_12BE816:         If (var_EC = CLng(&HB)) Then
  loc_12BE82C:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE834:           var_FC = CVar(CLng(&HE)) 'Long
  loc_12BE867:           If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12BE87D:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE895:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE89A:             var_11C = vbNullString
  loc_12BE8A4:             Set var_B4 = Me.FGrid
  loc_12BE8AA:             LateIdCallSt
  loc_12BE8C2:           End If
  loc_12BE8C5:         Else
  loc_12BE8CC:           If (var_EC = CLng(&H19)) Then
  loc_12BE8E2:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE8FA:             var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE8FF:             var_11C = vbNullString
  loc_12BE909:             Set var_B4 = Me.FGrid
  loc_12BE90F:             LateIdCallSt
  loc_12BE93A:             var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE942:             var_FC = CVar(CLng(&H1A)) 'Long
  loc_12BE947:             var_11C = vbNullString
  loc_12BE951:             Set var_A0 = Me.FGrid
  loc_12BE957:             LateIdCallSt
  loc_12BE96C:           Else
  loc_12BE973:             If (var_EC = CLng(&H1B)) Then
  loc_12BE989:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE9A1:               var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12BE9A6:               var_11C = vbNullString
  loc_12BE9B0:               Set var_B4 = Me.FGrid
  loc_12BE9B6:               LateIdCallSt
  loc_12BE9E1:               var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12BE9E9:               var_FC = CVar(CLng(&H1C)) 'Long
  loc_12BE9EE:               var_11C = vbNullString
  loc_12BE9F8:               Set var_A0 = Me.FGrid
  loc_12BE9FE:               LateIdCallSt
  loc_12BEA10:             End If
  loc_12BEA10:           End If
  loc_12BEA10:         End If
  loc_12BEA10:       End If
  loc_12BEA10:     End If
  loc_12BEA10:   End If
  loc_12BEA10: End If
  loc_12BEA16: If (KeyCode = &HD) Then
  loc_12BEA1E:   global_154 = 0
  loc_12BEA21: End If
  loc_12BEA23: KeyCode = 0
  loc_12BEA26: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10E20
  'Data Table: 59BA10
  loc_E10E11: Call FGrid_UnknownEvent_C()
  loc_E10E1B: global_154 = 0
  loc_E10E1E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '125D698
  'Data Table: 59BA10
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_E0 As Variant
  Dim var_100 As Variant
  loc_125D138: Set var_8C = Me.TopCtrl1
  loc_125D13E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_125D157: If (CStr() = "Browse") Then
  loc_125D15A:   Exit Sub
  loc_125D15B: End If
  loc_125D16E: var_A4 = CLng(Me.FGrid.Col)
  loc_125D17E: If (var_A4 = CLng(&H16)) Then
  loc_125D1B2:   var_CE = Asc(CStr(Ucase(Chr(CLng(KeyCode)))))
  loc_125D1E8:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_125D207: Else
  loc_125D20E:   If (var_A4 = CLng(2)) Then
  loc_125D278:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))))
  loc_125D297:   Else
  loc_125D29E:     If (var_A4 = CLng(9)) Then
  loc_125D2DF:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_125D2F4:     Else
  loc_125D2FB:       If (var_A4 = CLng(&HB)) Then
  loc_125D33C:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_125D351:       Else
  loc_125D358:         If (var_A4 = CLng(5)) Then
  loc_125D399:           Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_125D3AE:         Else
  loc_125D3B5:           If (var_A4 = CLng(6)) Then
  loc_125D3CB:             var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125D3D3:             var_100 = CVar(CLng(&HE)) 'Long
  loc_125D415:             If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_125D42B:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_125D433:               var_100 = CVar(CLng(6)) 'Long
  loc_125D4AA:               Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0, Val(CStr(Me.FGrid.TextMatrix))))
  loc_125D4BC:             End If
  loc_125D4BF:           Else
  loc_125D4C6:             If (var_A4 = CLng(1)) Then
  loc_125D4E4:               If (((KeyCode >= &H41) And (KeyCode <= &H5A)) Or ((KeyCode >= &H61) And (KeyCode <= &H7A))) Then
  loc_125D4EA:                 var_E0 = CVar(CLng(2)) 'Long
  loc_125D4F9:                 Me.FGrid.Col = var_E0
  loc_125D501:               End If
  loc_125D53F:               Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode, 0, var_100)
  loc_125D554:             Else
  loc_125D55B:               If (var_A4 = CLng(&H19)) Then
  loc_125D5C5:                 Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))), 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))))
  loc_125D5E4:               Else
  loc_125D5EB:                 If (var_A4 = CLng(&H1B)) Then
  loc_125D5F9:                   If (global_260 = "Yes") Then
  loc_125D663:                     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))), 0, Asc(CStr(Ucase(Chr(CLng(KeyCode))))))
  loc_125D67F:                   End If
  loc_125D67F:                 End If
  loc_125D67F:               End If
  loc_125D67F:             End If
  loc_125D67F:           End If
  loc_125D67F:         End If
  loc_125D67F:       End If
  loc_125D67F:     End If
  loc_125D67F:   End If
  loc_125D67F: End If
  loc_125D689: If (CLng(KeyCode) <> &HD) Then
  loc_125D691:   global_154 = &HFF
  loc_125D694: End If
  loc_125D694: Exit Sub
  loc_125D695: global_154(var_E0) = var_100
End Sub

Private Sub FGrid_UnknownEvent_D 'FF2BE8
  'Data Table: 59BA10
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  loc_FF2A08: Set var_90 = Me.TopCtrl1
  loc_FF2A0E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_FF2A27: If (CStr() = "Browse") Then
  loc_FF2A2A:   Exit Sub
  loc_FF2A2B: End If
  loc_FF2A48: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF2A4B:   Exit Sub
  loc_FF2A4C: End If
  loc_FF2A5D: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FF2A7F:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF2AB9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF2ADB:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF2AF1:         var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF2AFA:         Set var_118 = Me.FGrid
  loc_FF2B15:       Else
  loc_FF2B28:         Me.FGrid.Rows = 1
  loc_FF2B4E:         var_A0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0)))) 'String
  loc_FF2B56:         Set var_118 = Me.FGrid
  loc_FF2B83:         Me.FGrid.FixedRows = 1
  loc_FF2B8B:       End If
  loc_FF2B90:       Call Proc_32_103_17C3018(&H32, FGrid.DispID_10000, var_A0)
  loc_FF2B95:     End If
  loc_FF2B98:   Else
  loc_FF2BB9:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_FF2BC9:   End If
  loc_FF2BCD:   Set var_90 = Me.FGrid
  loc_FF2BDE: End If
  loc_FF2BE3: Set var_8C = Nothing
  loc_FF2BE6: Exit Sub
  loc_FF2BE7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40EB8
  'Data Table: 59BA10
  Dim var_8C As TextBox
  loc_E40E8C: Call Proc_32_96_FE1284()
  loc_E40E9C: Set var_88 = Me.TxtGrid
  loc_E40EA2: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40EAA: var_8C.Visible = False
  loc_E40EB6: Exit Sub
End Sub

Private Sub Form_Load() '157FBC8
  'Data Table: 59BA10
  Dim var_A0 As Variant
  Dim var_C8 As Variant
  Dim var_B4 As Variant
  Dim var_D8 As TextBox
  Dim var_CC As Variant
  Dim var_D4 As Variant
  Dim var_B8 As String
  Dim var_E4 As String
  Dim unk_59BAA2 As Connection15
  Dim var_F4 As Variant
  Dim unk_59BA2D As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_90 As Recordset15
  Dim Me As Recordset15
  Dim var_88 As Recordset15
  Dim var_158 As String
  Dim var_1A8 As Variant
  Dim var_134 As Variant
  loc_157EAB8: On Error Goto loc_157FBC1
  loc_157EAC5: Set var_B4 = Me.TopCtrl1
  loc_157EACB: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_157EAD9: Call 0.Method_arg_50 (var_B8)
  loc_157EAE1: var_C8 = CVar(var_B8) 'String
  loc_157EAE9: Set var_B4 = Me.TopCtrl1
  loc_157EAEF: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(var_C8)
  loc_157EB0A: ReDim Preserve global_200(0 To 0)
  loc_157EB24: ReDim Preserve global_204(0 To 0)
  loc_157EB40: Me.DGParty.Left = CVar(CDbl(&HF))
  loc_157EB56: Set var_D4 = Me.Txt
  loc_157EB5C: Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_157EB77: Set var_B4 = Me.Txt
  loc_157EB7D: Call 0.Method_Form_Load0 (CInt(4), var_CC)
  loc_157EB95: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_157EBA4: Me.DGParty.Top = CVar(CDbl(&HF))
  loc_157EBC4: Set var_B4 = Me.Txt
  loc_157EBCA: Call 0.Method_Form_Load0 (CInt(5), var_CC)
  loc_157EBE9: Me.DGPartyBillNo.Left = CVar(var_CC.Left)
  loc_157EC05: Set var_D4 = Me.Txt
  loc_157EC0B: Call 0.Method_Form_Load0 (CInt(5), var_D8)
  loc_157EC26: Set var_B4 = Me.Txt
  loc_157EC2C: Call 0.Method_Form_Load0 (CInt(5), var_CC)
  loc_157EC44: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_157EC53: Me.DGPartyBillNo.Top = CVar(var_CC.Left)
  loc_157EC73: Set var_B4 = Me.Txt
  loc_157EC79: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_157EC98: Me.DGVType.Left = CVar(var_CC.Left)
  loc_157ECB4: Set var_D4 = Me.Txt
  loc_157ECBA: Call 0.Method_Form_Load0 (CInt(1), var_D8)
  loc_157ECDB: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_157ECF3: var_A0 = CVar(((var_CC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_157ED02: Me.DGVType.Top = CVar(var_CC.Left)
  loc_157ED1A: global_240 = MemVar_1F921A8
  loc_157ED45: unk_59BAA2.Execute "Select * from PrinterSetup where RestCode='" & global_60 & "'", var_C8, -1
  loc_157ED56: Set global_192 = Me.Txt
  loc_157ED71: If (MemVar_1F920B8 <> 1) Then
  loc_157ED78:   Set var_B4 = Me.TopCtrl1
  loc_157ED7E:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B(var_B4)
  loc_157EDA8:   var_F4 = CVar(Replace(CStr(var_C8), "D", "*", 1, -1, 0)) 'String
  loc_157EDB0:   Set var_CC = Me.TopCtrl1
  loc_157EDB6:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B(var_F4)
  loc_157EDCC: End If
  loc_157EDF3: unk_59BA2D.Execute "Select RateInclTax from depart where code='" & global_60 & "'", var_C8, -1
  loc_157EDFE: Set var_8C = var_B4
  loc_157EE22: If (var_8C.RecordCount > 0) Then
  loc_157EE34:   var_B4 = var_8C.Fields
  loc_157EE44:   var_C8 = CVar(var_B4.Item("RateInclTax")) 'Address
  loc_157EE56:   global_136 = Proc_6_38_E68A98(var_C8)
  loc_157EE62: End If
  loc_157EE67: Set var_8C = Nothing
  loc_157EE77: global_60 = MemVar_1F92070 & "PURC"
  loc_157EE8B: var_B0 = "Select E.ImportOptionInPurchase,E.AcFieldAlterable,E.AddModifyEntryInBackDate,E.PurChaseGodown,G.Name PurChaseGodownName,E.BarCodeFeatureInPurchase,E.ItemRateInPurchaseBillBasedOn,E.DateEditableOnRequisitionYN From Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE="
  loc_157EE9B: Proc_6_17_EAA2B0(var_C8, MemVar_1F92078, var_B0, var_134)
  loc_157EEA3: var_F4 = -1 & var_C8 
  loc_157EEBA: unk_59BA2D.Execute CStr(var_F4 & vbNullString), var_B4, var_B4
  loc_157EEC5: Set var_90 = var_B4
  loc_157EEED: If (var_90.RecordCount > 0) Then
  loc_157EF2D:   global_264 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("AddModifyEntryInBackDate"))))))
  loc_157EF6E:   global_260 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("AcFieldAlterable")))
  loc_157EFA9:   global_232 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("PurchaseGodown")))
  loc_157EFE4:   global_236 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("PurchaseGodownName")))
  loc_157F02E:   global_188 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("ItemRateInPurchaseBillBasedOn"))))))
  loc_157F06F:   global_104 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("BarCodeFeatureInPurchase")))
  loc_157F0B5:   If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("ImportOptionInPurchase"))) = "Yes") Then
  loc_157F0C4:     Me.CmdImport.Visible = True
  loc_157F0CC:   End If
  loc_157F0FA:   global_108 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("DateEditableOnRequisitionYN")))
  loc_157F107: End If
  loc_157F111: Set global_68 = New 
  loc_157F123: Me.CursorLocation = 3
  loc_157F13B: If (OpenAs = "Expense") Then
  loc_157F15C:   var_B8 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName,GSTIN TINNo From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and (Subgroup.LOGSITE_CODE='" & MemVar_1F92078
  loc_157F16D:   Me.Open CVar(OpenAs & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Customer','Supplier','Cash') Order by Name"), CVar(MemVar_1F92044), 3
  loc_157F17B: Else
  loc_157F199:   var_B8 = "Select SubCode As Code,Name,(Add1+' '+Add2) As Address,C.CityName,GSTIN TINNo From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where ActiveYN=1 and (Subgroup.LOGSITE_CODE='" & MemVar_1F92078
  loc_157F1AA:   Me.Open CVar(OpenAs & "' or Subgroup.LOGSITE_CODE='HO') and Nature in ('Supplier','Cash') Order by Name"), CVar(MemVar_1F92044), 3
  loc_157F1B5: End If
  loc_157F1BE: CVarUnk
  loc_157F1C3: VerifyVarObj
  loc_157F1C9: Set var_B4 = Me.DGParty
  loc_157F1CF: LateIdStAd
  loc_157F1F9: Me.DGParty.CursorLocation = 3
  loc_157F21C: var_B8 = "Select PartyBillNo As PartyBillNoCd,PartyBillNo As PartyBillNoNm,Party from purch1 Where (purch1.LOGSITE_CODE='" & MemVar_1F92078
  loc_157F22D: Me.Open CVar(var_B8 & "' or purch1.LOGSITE_CODE='HO') "), CVar(MemVar_1F92044), 3
  loc_157F241: CVarUnk
  loc_157F246: VerifyVarObj
  loc_157F252: LateIdStAd
  loc_157F26A: Set global_84 = New 
  loc_157F27C: Me.DGPartyBillNo.CursorLocation = 3
  loc_157F294: If (OpenAs = "Expense") Then
  loc_157F29D:   Call 0.Method_arg_54 ("Expense Voucher", Me.DGPartyBillNo, New, 1, -1, Me.DGPartyBillNo)
  loc_157F2A2: End If
  loc_157F2B5: If (OpenAs = "Expense") Then
  loc_157F2DD:   var_E4 = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_157F2F5:   Me.Open CVar(var_E4 & MemVar_1F92070 & "' and Category in('EXPENT') Order by Description"), CVar(MemVar_1F92044), 3
  loc_157F309: Else
  loc_157F32E:   var_E4 = "Select V_Type As Code,Description As Name,NCat,ContraType From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_157F33C:   var_C8 = CVar(var_E4 & MemVar_1F92070 & "' and Category in('PurchBill') Order by Description") 'String
  loc_157F346:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_157F357: End If
  loc_157F360: CVarUnk
  loc_157F365: VerifyVarObj
  loc_157F371: LateIdStAd
  loc_157F3A3: unk_59BA2D.Execute "Select ShortName,Code From Depart Where Code='" & MemVar_1F921A4 & "'", var_C8, -1
  loc_157F3AE: Set var_88 = Me.DGVType
  loc_157F3D2: If (var_88.RecordCount > 0) Then
  loc_157F406:   global_244 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_157F429:   var_B4 = var_88.Fields
  loc_157F431:   var_CC = var_B4.Item("Code")
  loc_157F439:   var_C8 = var_CC.Value
  loc_157F448:   global_248 = CStr(var_C8)
  loc_157F459: End If
  loc_157F463: Set global_76 = New 
  loc_157F475: Me.CursorLocation = 3
  loc_157F48D: If (OpenAs = "Expense") Then
  loc_157F49B:   Proc_6_7_F25D88(var_C8, MemVar_1F920F4, var_B4, var_B4, global_84, 1, -1)
  loc_157F4AB:   Proc_6_7_F25D88(var_134, MemVar_1F920FC, 1, -1)
  loc_157F4C7:   var_B0 = "Select DISTINCT P.DocId as SearchCode,P.DocID,P.LogSite_Code,P.Site_Code From Purch1 P Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.VDATE Between "
  loc_157F4FB:   var_1A8 = var_B0 & var_C8 & " And " & var_134 & " AND P.LogSite_Code='" & CVar(MemVar_1F92078) & "' aND v.category in('EXPENT') ORDER BY P.DOCID" 
  loc_157F506:   Me.Open var_1A8, CVar(MemVar_1F92044), 3
  loc_157F521: Else
  loc_157F52C:   Proc_6_7_F25D88(var_C8, MemVar_1F920F4, 1, -1)
  loc_157F53C:   Proc_6_7_F25D88(var_134, MemVar_1F920FC, global_68)
  loc_157F558:   var_B0 = "Select DISTINCT P.DocId as SearchCode,P.DocID,P.LogSite_Code,P.Site_Code From Purch1 P Inner JOIN VOUCHER_TYPE V ON (P.VTYPE=V.V_TYPE And P.logSite_Code=V.LogSite_Code) WHERE P.VDATE Between "
  loc_157F560:   var_F4 = var_B0 & var_C8 
  loc_157F58C:   var_1A8 = var_F4 & " And " & var_134 & " AND P.LogSite_Code='" & CVar(MemVar_1F92078) & "' aND v.category in('PurchBill') ORDER BY P.DOCID" 
  loc_157F597:   Me.Open var_1A8, CVar(MemVar_1F92044), 3
  loc_157F5AF: End If
  loc_157F5B9: Set global_64 = New 
  loc_157F5CB: Me.Recordset15.CursorLocation = 3
  loc_157F5DB: If (global_104 = "Yes") Then
  loc_157F5FC:   var_B8 = "Select I.Code,I.BarCode,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join (Select Distinct Code,Name From Taxstru Where LOGSITE_CODE='" & MemVar_1F92078
  loc_157F603:   var_E4 = var_B8 & "' or LOGSITE_CODE='HO') TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='"
  loc_157F611:   var_C8 = CVar(var_E4 & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' Order by I.BarCode") 'String
  loc_157F61B:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_157F62F: Else
  loc_157F64D:   var_B8 = "Select I.Code,I.BarCode,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join (Select Distinct Code,Name From Taxstru Where LOGSITE_CODE='" & MemVar_1F92078
  loc_157F654:   var_E4 = var_B8 & "' or LOGSITE_CODE='HO') TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='"
  loc_157F662:   var_C8 = CVar(var_E4 & MemVar_1F92078 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' Order by I.Name") 'String
  loc_157F66C:   Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_157F67D: End If
  loc_157F686: CVarUnk
  loc_157F68B: VerifyVarObj
  loc_157F691: Set var_B4 = Me.DGItem
  loc_157F697: LateIdStAd
  loc_157F6AF: Set global_88 = New 
  loc_157F6C1: Me.DGItem.CursorLocation = 3
  loc_157F6EB: var_C8 = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_157F6F5: Me.Open var_C8, CVar(MemVar_1F92044), 3
  loc_157F709: CVarUnk
  loc_157F70E: VerifyVarObj
  loc_157F714: Set var_B4 = Me.DGGod
  loc_157F71A: LateIdStAd
  loc_157F732: Set global_224 = New 
  loc_157F747: Me.DGGod.CursorLocation = 3
  loc_157F76A: var_B8 = "SELECT Distinct TaxStru.Code as Code, TaxStru.Name as name FROM TaxStru INNER JOIN ItemCatMast ON TaxStru.Code = ItemCatMast.TaxStru where (TaxStru.LOGSITE_CODE='" & MemVar_1F92078
  loc_157F771: var_E4 = var_B8 & "' or TaxStru.LOGSITE_CODE='HO') and ItemCatMast.RestCode='"
  loc_157F78C: Me.Recordset15.Open CVar(var_E4 & MemVar_1F92078 & "PURC' order by taxstru.name "), CVar(MemVar_1F92044), 2
  loc_157F7A9: CVarUnk
  loc_157F7AE: VerifyVarObj
  loc_157F7B4: Set var_B4 = Me.DGTaxStru
  loc_157F7BA: LateIdStAd
  loc_157F7E7: Me.DGTaxStru.CursorLocation = 3
  loc_157F811: var_C8 = CVar("Select SubCode As Code,Name From ViewSubGroup Where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Left(MainGrCodeS,3) IN ('230','240','280','040') Order by Name") 'String
  loc_157F81E: Me.Recordset15.Open var_C8, CVar(MemVar_1F92044), 2
  loc_157F835: CVarUnk
  loc_157F83A: VerifyVarObj
  loc_157F840: Set var_B4 = Me.DGSaleAc
  loc_157F846: LateIdStAd
  loc_157F887: Call 0.Method_arg_50 (var_E4, "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_C8, -1, var_B4, var_CC, 0, var_D4)
  loc_157F8AE: unk_59BA2D.Execute var_F4 & var_E4 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_B4, New
  loc_157F8B6: 3 = var_B4.Fields
  loc_157F8BE: var_B4 = var_CC.Item(-1)
  loc_157F8C6: global_224 = var_D4.Value
  loc_157F8F7: If (var_F4 > 0) Then
  loc_157F940:   Call 0.Method_arg_50 (var_E4, "SELECT DOCID FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078 & "' and ENAME='", var_C8, -1, var_B4, var_CC, 0)
  loc_157F967:   unk_59BA2D.Execute var_D4 & var_E4 & "' AND UNAME='" & MemVar_1F920C8 & "'", var_F4, "SearchCode='"
  loc_157F96F:   0 = var_B4.Fields
  loc_157F977:   var_158 = var_CC.Item(1)
  loc_157F97F:    = var_D4.Value
  loc_157F99E:   Me.Find CStr(var_F4 & "'"), , 
  loc_157F9CA: End If
  loc_157F9E1: If (Me.RecordCount > 0) Then
  loc_157F9F8:   If (Me.EOF = &HFF) Then
  loc_157FA01:     Me.MoveLast
  loc_157FA06:   End If
  loc_157FA06: End If
  loc_157FA11: If (global_104 = "Yes") Then
  loc_157FA20:   Me.TxtBarCode.Visible = True
  loc_157FA33:   Set var_B4 = Me.Label1
  loc_157FA39:   Call 0.Method_Form_Load0 (&HB, var_CC)
  loc_157FA41:   var_CC.Visible = True
  loc_157FA4D: End If
  loc_157FA56: Call 0.Method_arg_160 (var_B4)
  loc_157FA64: Call 0.Method_arg_164 (var_B4)
  loc_157FA8F: Call Proc_32_95_100EC78(Proc_5_1_100CB50("INI", Me))
  loc_157FAA9: Me.LblUser.Left = CDbl(500)
  loc_157FAC0: Me.LblUser.Top = CDbl(7800)
  loc_157FAD7: Me.LblLDt.Top = CDbl(8160)
  loc_157FAEE: Me.LblLDt.Left = CDbl(500)
  loc_157FAFD: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_157FB15: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_157FB2B: Me.FrInVoiceType.BackColor = CLng(MemVar_1F921B0)
  loc_157FB42: Set var_B4 = Me.Opt
  loc_157FB48: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_157FB50: var_CC.BackColor = CLng(MemVar_1F921B0)
  loc_157FB6B: Set var_B4 = Me.Opt
  loc_157FB71: Call 0.Method_Form_Load0 (CInt(1), var_CC)
  loc_157FB79: var_CC.BackColor = CLng(MemVar_1F921B0)
  loc_157FB94: Set var_B4 = Me.Opt
  loc_157FB9A: Call 0.Method_Form_Load0 (CInt(2), var_CC)
  loc_157FBA2: var_CC.BackColor = CLng(MemVar_1F921B0)
  loc_157FBAE: Call Proc_32_89_14A1470(global_76)
  loc_157FBB3: Call Proc_32_92_1A04FC4()
  loc_157FBBD: Set var_90 = Nothing
  loc_157FBC0: Exit Sub
  loc_157FBC1: ' Referenced from: 157EAB8
  loc_157FBC1: Proc_6_60_E62BC4()
  loc_157FBC6: Exit Sub
End Sub

Private Sub Form_Resize() 'ED35C8
  'Data Table: 59BA10
  Dim var_8C As Label
  loc_ED3526: Call 0.Method_arg_50 (var_88)
  loc_ED3538: Me.LblFormCaption.Caption = var_88
  loc_ED3551: Me.LblFormCaption.Left = CDbl(0)
  loc_ED355D: Set var_A0 = Me.TopCtrl1
  loc_ED3563: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED3570: Set var_8C = Me.TopCtrl1
  loc_ED3576: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED3590: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED35AB: Call 0.Method_arg_100 (var_B8)
  loc_ED35BD: Me.LblFormCaption.Width = var_B8
  loc_ED35C5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EAD374
  'Data Table: 59BA10
  loc_EAD2E7: Set global_64 = Nothing
  loc_EAD2F9: Set global_80 = Nothing
  loc_EAD305: global_52 = 0
  loc_EAD313: Set global_192 = Nothing
  loc_EAD325: Set global_68 = Nothing
  loc_EAD337: Set global_84 = Nothing
  loc_EAD349: Set global_88 = Nothing
  loc_EAD35B: Set global_224 = Nothing
  loc_EAD370: Exit Sub
End Sub

Private Sub Form_Activate() 'F2F440
  'Data Table: 59BA10
  Dim var_D0 As Integer
  Dim var_8C As String
  Dim unk_59BA2D As Connection15
  Dim var_BC As Variant
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  loc_F2F352: var_D0 = 0
  loc_F2F36F: var_8C = "Select Count(*) From SundryType WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_F2F38D: unk_59BA2D.Execute var_8C & "') and V_Type='" & MemVar_1F92078 & "PURC'", var_B8, -1
  loc_F2F395: var_BC = var_BC.Fields
  loc_F2F39D: var_D0 = var_C0.Item(var_C0)
  loc_F2F3A5: var_D4 = var_D4.Value
  loc_F2F3D0: If (var_E4 <= 0) Then
  loc_F2F3EC:   MsgBox("Voucher wise Sundry not defined", 0, var_E4, var_104, var_124)
  loc_F2F409:   Me.Global.Unload Me
  loc_F2F411:   Exit Sub
  loc_F2F412: End If
  loc_F2F418: Call 0.Method_arg_50 (var_8C)
  loc_F2F42A: Me.LblFormCaption.Caption = var_8C
  loc_F2F43A: Set var_88 = Nothing
  loc_F2F43D: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E248E4
  'Data Table: 59BA10
  loc_E248C9: If (global_52 = &HFF) Then
  loc_E248D9:   Me.Global.Unload Me
  loc_E248E1: End If
  loc_E248E1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EDDF3C
  'Data Table: 59BA10
  loc_EDDE88: On Error Goto loc_EDDF34
  loc_EDDEB9: If (((global_104 = "Yes") And (Shift = 1)) And (Me.TxtBarCode.Visible = &HFF)) Then
  loc_EDDEC6:   Me.TxtBarCode.SetFocus
  loc_EDDECE: End If
  loc_EDDEE6: Proc_6_88_FE81B4(Me, KeyCode)
  loc_EDDF2B: If CBool((Ucase(Chr(CLng(KeyCode))) = "E") And (Shift = 4)) Then
  loc_EDDF2E:   Call Command1_Click()
  loc_EDDF33: End If
  loc_EDDF33: Exit Sub
  loc_EDDF34: ' Referenced from: EDDE88
  loc_EDDF34: Proc_6_60_E62BC4(Shift)
  loc_EDDF39: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '101A750
  'Data Table: 59BA10
  Dim var_9C As Variant
  Dim var_90 As String
  Dim var_94 As Variant
  loc_101A52C: On Error Goto loc_101A749
  loc_101A552: Call Proc_32_95_100EC78(Proc_5_1_100CB50("ADD", Me))
  loc_101A55D: Call Proc_32_94_103207C(global_76)
  loc_101A56F: Set var_94 = Me.Opt
  loc_101A575: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_9C)
  loc_101A57D: var_9C.Enabled = True
  loc_101A596: Set var_94 = Me.Opt
  loc_101A59C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_101A5A4: var_9C.Enabled = True
  loc_101A5BD: Set var_94 = Me.Opt
  loc_101A5C3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C)
  loc_101A5CB: var_9C.Enabled = True
  loc_101A5E4: Set var_94 = Me.Opt
  loc_101A5EA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_101A5F2: var_9C.Value = True
  loc_101A605: Call Opt_GotFocus(CInt(1))
  loc_101A60F: var_90 = CStr(MemVar_1F920EC)
  loc_101A61D: Set var_94 = Me.Txt
  loc_101A623: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_101A62B: var_9C.Text = var_90
  loc_101A64C: Me.FGrid.Col = CVar(CLng(1))
  loc_101A65A: Call Proc_32_98_10E9688(MemVar_1F92044)
  loc_101A66D: Set var_94 = Me.Txt
  loc_101A673: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_9C)
  loc_101A698: Set var_94 = Me.Txt
  loc_101A69E: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_9C)
  loc_101A6A6: var_90 = var_90
  loc_101A6B4: Call Proc_32_102_17D7AB4(CDate(var_90))
  loc_101A6C7: Set var_94 = Me.TopCtrl1
  loc_101A6CD: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_90)
  loc_101A6E6: If (CStr() = "Add") Then
  loc_101A6F4:   Set var_94 = Me.Txt
  loc_101A6FA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_101A702:   var_9C.SetFocus
  loc_101A70E: End If
  loc_101A713: Set var_8C = Nothing
  loc_101A71B: Set var_88 = Nothing
  loc_101A72B: Me.LblUser.Caption = vbNullString
  loc_101A740: Me.LblLDt.Caption = vbNullString
  loc_101A748: Exit Sub
  loc_101A749: ' Referenced from: 101A52C
  loc_101A749: Proc_6_60_E62BC4(var_9C)
  loc_101A74E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9FD08
  'Data Table: 59BA10
  loc_E9FC90: On Error Goto loc_E9FD01
  loc_E9FCCA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9FCF0:   Call Proc_32_95_100EC78(Proc_5_1_100CB50("INI", Me))
  loc_E9FCFB:   Call Proc_32_92_1A04FC4(global_76)
  loc_E9FD00: End If
  loc_E9FD00: Exit Sub
  loc_E9FD01: ' Referenced from: E9FC90
  loc_E9FD01: Proc_6_60_E62BC4()
  loc_E9FD06: Exit Sub
  loc_E9FD07: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13E6C20
  'Data Table: 59BA10
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As Variant
  Dim unk_59BA2D As Connection15
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_13E6244: On Error Goto loc_13E6BD1
  loc_13E6255: If (Proc_183_56_FE8818(global_76) = &HFF) Then
  loc_13E6258:   Exit Sub
  loc_13E6259: End If
  loc_13E6290: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_13E62A4:   var_94 = Me.Bookmark 'Variant
  loc_13E62DA:   var_134 = "Guest Folio"
  loc_13E6322:   If (Proc_6_108_1010FEC(MemVar_1F92044, "PayCharge", "DocID", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_13E6325:     Exit Sub
  loc_13E6326:   End If
  loc_13E632F:   unk_59BA2D.BeginTrans var_130
  loc_13E638A:   unk_59BA2D.Execute CStr("Delete From Purch2 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E63FC:   unk_59BA2D.Execute CStr("Delete From Purch1 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E646E:   unk_59BA2D.Execute CStr("Delete From Sale2 where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_118, -1
  loc_13E64B9:   var_120 = Me.Fields.Item("SearchCode")
  loc_13E64C1:   var_B8 = var_120.Value
  loc_13E64D2:   var_F8 = "Delete From SunTran where docid='" & var_B8 & "'" 
  loc_13E64D6:   var_124 = CStr(var_F8)
  loc_13E64E0:   unk_59BA2D.Execute var_124, var_118, -1
  loc_13E651A:   Set var_11C = Me.Txt
  loc_13E6520:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Stock Where DocID='", var_B8, -1, var_13C)
  loc_13E6528:   var_13C = var_120.Text
  loc_13E6541:   unk_59BA2D.Execute var_13C & var_124 & "'", var_13C, var_13C
  loc_13E6579:   Set var_11C = Me.Txt
  loc_13E657F:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_124, "Delete From Ledger where DocID='", var_B8)
  loc_13E6587:   -1 = var_120.Text
  loc_13E6597:   var_12C = var_13C & var_124 & "'"
  loc_13E65A0:   unk_59BA2D.Execute var_12C, 0, var_134
  loc_13E65E9:   var_168 = 0
  loc_13E65FC:   var_160 = 0
  loc_13E6607:   var_15C = 0
  loc_13E661A:   var_154 = 0
  loc_13E6625:   var_150 = 0
  loc_13E6638:   var_148 = 0
  loc_13E6681:   Proc_154_5_10E33A4(MemVar_1F92044, "PURCH1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E66D8:   var_168 = 0
  loc_13E66EB:   var_160 = 0
  loc_13E66F6:   var_15C = 0
  loc_13E6709:   var_154 = 0
  loc_13E6714:   var_150 = 0
  loc_13E6727:   var_148 = 0
  loc_13E6770:   Proc_154_5_10E33A4(MemVar_1F92044, "PURCH2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E67C7:   var_168 = 0
  loc_13E67DA:   var_160 = 0
  loc_13E67E5:   var_15C = 0
  loc_13E67F8:   var_154 = 0
  loc_13E6803:   var_150 = 0
  loc_13E6816:   var_148 = 0
  loc_13E685F:   Proc_154_5_10E33A4(MemVar_1F92044, "SALE2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13E68A4:   var_120 = Me.Fields.Item("SearchCode")
  loc_13E68B6:   var_168 = 0
  loc_13E68C9:   var_160 = 0
  loc_13E68D4:   var_15C = 0
  loc_13E68E7:   var_154 = 0
  loc_13E694E:   Proc_154_5_10E33A4(MemVar_1F92044, "SUNTRAN", "DocId", &HC8, CStr(var_120.Value), 0, 0, 0)
  loc_13E6984:   Set var_11C = Me.Txt
  loc_13E698A:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_12C, 0, 0, 0)
  loc_13E6992:   var_154 = var_120.Text
  loc_13E699C:   var_16C = 0
  loc_13E69AF:   var_168 = 0
  loc_13E69BA:   var_160 = 0
  loc_13E69CD:   var_15C = 0
  loc_13E6A33:   Proc_154_5_10E33A4(MemVar_1F92044, "STOCK", "DocId", &HC8, var_12C, 0, 0, 0)
  loc_13E6A66:   Set var_11C = Me.Txt
  loc_13E6A6C:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_120, var_12C, 0, 0, 0)
  loc_13E6A74:   var_15C = var_120.Text
  loc_13E6A7E:   var_16C = 0
  loc_13E6A91:   var_168 = 0
  loc_13E6A9C:   var_160 = 0
  loc_13E6AAF:   var_15C = 0
  loc_13E6ABA:   var_154 = 0
  loc_13E6ACD:   var_150 = 0
  loc_13E6B0C:   var_124 = "LEDGER"
  loc_13E6B15:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocId", &HC8, var_12C, 0, 0, 0)
  loc_13E6B40:   unk_59BA2D.CommitTrans
  loc_13E6B50:   Me.Requery -1
  loc_13E6B70:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_13E6B7D:     Me.Bookmark = var_94
  loc_13E6B85:   Else
  loc_13E6B99:     If (Me.EOF = 0) Then
  loc_13E6BA2:       Me.MoveLast
  loc_13E6BA7:     End If
  loc_13E6BA7:   End If
  loc_13E6BA7:   Call Proc_32_92_1A04FC4(var_150, 0, var_154, var_15C)
  loc_13E6BC8:   Proc_5_0_110649C(&HFF, Me, global_76, 0)
  loc_13E6BD0: End If
  loc_13E6BD0: Exit Sub
  loc_13E6BD1: ' Referenced from: 13E6244
  loc_13E6BD7: unk_59BA2D.RollbackTrans
  loc_13E6BE4: Set var_11C = Err()
  loc_13E6BEA: Call 0.Method_arg_2C (var_124, 0, var_160)
  loc_13E6C0B: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F8, var_118)
  loc_13E6C1E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1178048
  'Data Table: 59BA10
  Dim var_90 As TextBox
  Dim var_C4 As Variant
  Dim var_94 As String
  Dim var_10C As String
  Dim var_124 As String
  Dim unk_59BA2D As Connection15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  loc_1177C98: On Error Goto loc_1178041
  loc_1177CBB: Set var_8C = Me.Txt
  loc_1177CC1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_90)
  loc_1177CC9: var_94 = var_90.Text
  loc_1177CE2: If (((global_264 = "No") And (MemVar_1F920B8 <> 1)) And (CDate(var_94) < MemVar_1F920EC)) Then
  loc_1177CEB:   Call 0.Method_arg_50 (var_94)
  loc_1177D06:   var_B4 = "Back Date Entry Blocked."
  loc_1177D0C:   MsgBox(var_B4, &H10, CVar(var_94), var_E4, var_104)
  loc_1177D1C:   Exit Sub
  loc_1177D1D: End If
  loc_1177D2B: If (Proc_183_55_FE7900(global_76) = &HFF) Then
  loc_1177D2E:   Exit Sub
  loc_1177D2F: End If
  loc_1177D52: Call Proc_32_95_100EC78(Proc_5_1_100CB50("EDIT", Me))
  loc_1177D74: If ((global_132 = "PBC") Or (global_132 = "EXC")) Then
  loc_1177D81:   Set global_80 = New 
  loc_1177D93:   Me.Recordset15.CursorLocation = 3
  loc_1177D9F:   var_94 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1177DA6:   var_10C = var_94 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_1177DC9:   var_124 = var_10C & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_1177DE0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90, var_120)
  loc_1177DE8:   var_124 = var_90.Tag
  loc_1177DF8:   var_88 = global_76 & var_120 & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.AccQty,0)) > 0 "
  loc_1177E2D:   unk_59BA2D.Execute var_88, var_B4, -1
  loc_1177E3E:   Set global_80 = Me.Txt
  loc_1177E55:   CVarUnk
  loc_1177E5A:   VerifyVarObj
  loc_1177E60:   Set var_8C = Me.DgMR
  loc_1177E66:   LateIdStAd
  loc_1177E74: End If
  loc_1177E74: Call Proc_32_110_112EE94(var_8C, global_80)
  loc_1177E8D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_90)
  loc_1177EA3: Call Proc_32_102_17D7AB4(CDate(var_90.Text))
  loc_1177EB2: Call Proc_32_92_1A04FC4(Me.Txt)
  loc_1177EC4: Set var_8C = Me.Txt
  loc_1177ECA: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_90)
  loc_1177ED2: var_90.Enabled = False
  loc_1177EEB: Set var_8C = Me.Txt
  loc_1177EF1: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_90)
  loc_1177EF9: var_90.Enabled = False
  loc_1177F12: Set var_8C = Me.Txt
  loc_1177F18: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90)
  loc_1177F20: var_90.Enabled = False
  loc_1177F3A: Set var_8C = Me.Txt
  loc_1177F40: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_90)
  loc_1177F64: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_1177F74:   Set var_8C = Me.Txt
  loc_1177F7A:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_90)
  loc_1177F82:   var_90.Enabled = True
  loc_1177F8E: End If
  loc_1177FA0: Me.FGrid.Col = CVar(CLng(1))
  loc_1177FC3: var_C4 = CVar(CStr((CLng(Me.FGrid.Rows) - 1))) 'String
  loc_1177FCB: Set var_90 = Me.FGrid
  loc_1177FEB: Set var_8C = Me.FGrid
  loc_117800E: Me.FGrid.Col = CVar(CLng(2))
  loc_1178023: Me.LblUser.Caption = vbNullString
  loc_1178038: Me.LblLDt.Caption = vbNullString
  loc_1178040: Exit Sub
  loc_1178041: ' Referenced from: 1177C98
  loc_1178041: Proc_6_60_E62BC4(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_1178046: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16E40
  'Data Table: 59BA10
  loc_E16E35: Me.Global.Unload Me
  loc_E16E3D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FC8634
  'Data Table: 59BA10
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_13C As Variant
  Dim MemVar_1F920E4 As String
  loc_FC8490: On Error Goto loc_FC862E
  loc_FC84AA: If (Me.RecordCount <= 0) Then
  loc_FC84C8:   var_A8 = "No Records To Search."
  loc_FC84CE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_FC84DE:   Exit Sub
  loc_FC84DF: End If
  loc_FC84F2: If (OpenAs = "Expense") Then
  loc_FC84FC:   var_10C = "Select DISTINCT P.Docid as SearchCode,P.VNo as [No] ,CONVERT(VARCHAR(11),P.VDate) as [Date],S.Name as PartyName,P.PARTYBILLNO,P.CashParty" & " From (Purch1 P Left Join Voucher_Type V On (P.VType= V.V_Type and P.LogSite_Code=V.LogSite_Code)) "
  loc_FC8511:   Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_FC8531:   Proc_6_7_F25D88(var_11C, MemVar_1F920FC)
  loc_FC8542:   var_13C = CVar(var_10C & " Left join SubGroup S on S.SubCode=P.Party Where P.VDATE Between ") & var_A8 & " And " & var_11C & " AND V.LogSite_Code='" 
  loc_FC855A:   MemVar_1F920E4 = CStr(var_13C & CVar(MemVar_1F92078) & "' aND  V.Category  in('EXPENT') Order By [Date],SearchCode")
  loc_FC8579: Else
  loc_FC8580:   var_10C = "Select DISTINCT P.Docid as SearchCode,P.VNo as [No] ,CONVERT(VARCHAR(11),P.VDate) as [Date],S.Name as PartyName,P.PARTYBILLNO,P.CashParty" & " From (Purch1 P Left Join Voucher_Type V On (P.VType= V.V_Type and P.LogSite_Code=V.LogSite_Code)) "
  loc_FC8595:   Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_FC85A1:   var_B8 = " And "
  loc_FC85B5:   Proc_6_7_F25D88(var_11C, MemVar_1F920FC)
  loc_FC85C6:   var_13C = CVar(var_10C & " Left join SubGroup S on S.SubCode=P.Party Where P.VDATE Between ") & var_A8 & var_B8 & var_11C & " AND V.LogSite_Code='" 
  loc_FC85DE:   MemVar_1F920E4 = CStr(var_13C & CVar(MemVar_1F92078) & "' aND  V.Category  in('PurchBill') Order By [Date],SearchCode")
  loc_FC85FA: End If
  loc_FC8603: Proc_6_126_F1BCC0("700,1150,4000,1500,3500", MemVar_1F920E4)
  loc_FC8611: MemVar_1F92120 = Me
  loc_FC8628: Call 0.Method_arg_2B0 (1, var_B8)
  loc_FC862D: Exit Sub
  loc_FC862E: ' Referenced from: FC8490
  loc_FC862E: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_FC8633: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31B78
  'Data Table: 59BA10
  Dim var_6701 As Double
  loc_E31B68: Proc_5_0_110649C(&HFF, Me)
  loc_E31B70: Call Proc_32_92_1A04FC4(global_76)
  loc_E31B75: Exit Sub
  loc_E31B76: var_6701 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E317B8
  'Data Table: 59BA10
  loc_E317A8: Proc_5_0_110649C(&HFF, Me)
  loc_E317B0: Call Proc_32_92_1A04FC4(global_76)
  loc_E317B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E316F8
  'Data Table: 59BA10
  loc_E316E8: Proc_5_0_110649C(&HFF, Me)
  loc_E316F0: Call Proc_32_92_1A04FC4(global_76)
  loc_E316F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E31698
  'Data Table: 59BA10
  Dim var_6701 As Double
  loc_E31688: Proc_5_0_110649C(&HFF, Me)
  loc_E31690: Call Proc_32_92_1A04FC4(global_76)
  loc_E31695: Exit Sub
  loc_E31696: var_6701 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '145FCA4
  'Data Table: 59BA10
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_CC As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim var_E8 As TextBox
  Dim unk_59BA2D As Connection15
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
  loc_145F13C: On Error Goto loc_145FC9C
  loc_145F156: If (Me.RecordCount <= 0) Then
  loc_145F159:   Exit Sub
  loc_145F15A: End If
  loc_145F161: var_C8 = "Select P2.Docid,P2.VNo,P2.VDate,P2.VType As V_Type,CASE WHEN P2.RecdQty=0 THEN P2.IssQty ELSE P2.RecdQty END as Qty,CASE WHEN ISNULL(P2.RecdUnit,'')='' THEN P2.IssueUnit ELSE P2.RecdUnit END As Unit,P2.ItemRate,P2.Amount," & " P1.CashParty as PartyName,P1.PartyBillNo,P1.PartyBillDt,P1.Total,P1.DiscPer,P1.DiscAmt,P1.AddAmt,P1.DedAmt,P1.RoundOff,P1.NetAmt,P1.PartyBillDt,I.Name as ItemName,G.Name as GodName,P2.ContraDocId,V.Description,SG.Name As SaleAcName,"
  loc_145F168: var_CC = var_C8 & " P1.TINNO,IsNull(SG1.ConPrefix,'') ConPrefix,IsNull(SG1.ConPerSon,'') ConPerSon,REPLACE(REPLACE(LTrim(RTrim(IsNull(SG1.Add1,'')))+', '+LTrim(RTrim(IsNull(SG1.Add2,'')))+', '+LTrim(RTrim(IsNull(SG1.Add3,'')))+', '+LTrim(RTrim(IsNull(City.CityName,''))),',,',','),', ,',',') PartyAddress,P2.Rate,IsNull(P1.InvoiceType,'') InvoiceType,IsNull(P1.InvoiceNo,0) InvoiceNo,TS.Name As TaxStruct,P1.Payable,IsNull(P1.Remark,'') As Remark From ((((((Purch2 as P2 Left Join Purch1 as P1 on P2.DocID=P1.DocID)"
  loc_145F176: var_D4 = var_CC & " Left Join GodownMast as G on P2.Godcode=G.Code)" & " Left Join ItemMast as I on P2.Item=I.Code And I.ItemType='Store') left Join (Select Code,Max(Name) Name From TaxStru Group By Code) TS on TS.Code=P2.TaxStru"
  loc_145F17D: var_D8 = var_D4 & " Left Join Voucher_Type as V on (P2.VType=V.V_Type and P2.LogSite_Code=V.LogSite_Code) left Join SubGroup SG On SG.SubCode=P2.AcCode) left Join SubGroup SG1 On SG1.SubCode=P1.Party) left Join City On City.CityCode=SG1.CityCode) "
  loc_145F1A3: Set var_E4 = Me.Txt
  loc_145F1A9: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_E8)
  loc_145F1C1: var_88 = var_D8 & " Where V.LogSite_Code='" & MemVar_1F92078 & "' and P2.DocID='" & var_E8.Text & "'"
  loc_145F1F3: Set var_E4 = Me.Txt
  loc_145F1F9: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_E8)
  loc_145F201: var_C8 = var_E8.Text
  loc_145F211: var_8C = "Select S.* From SunTran S Where S.DocId='" & var_C8 & "' Order By SNo"
  loc_145F233: If ((var_88 = vbNullString) Or (var_8C = vbNullString)) Then
  loc_145F236:   Exit Sub
  loc_145F237: End If
  loc_145F24D: unk_59BA2D.Execute var_88, var_114, -1
  loc_145F258: Set var_A0 = var_E4
  loc_145F277: unk_59BA2D.Execute var_8C, var_114, -1
  loc_145F282: Set var_A4 = var_E4
  loc_145F29F: If (var_A0.RecordCount <= 0) Then
  loc_145F2A8:   Call 0.Method_arg_50 (var_C8, var_E4)
  loc_145F2C9:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C8), var_144, var_164)
  loc_145F2D9:   Exit Sub
  loc_145F2DA: End If
  loc_145F2ED: If (OpenAs = "Expense") Then
  loc_145F306:   Set var_E4 = var_A0 
  loc_145F31C:   Set var_A0 = var_E4
  loc_145F322:   var_104 = CVar(CreateFieldDefFile(var_E4, MemVar_1F920B4 & "\ExpenseVoucher.ttx")) 'Integer
  loc_145F325:   var_9C = var_104 'Variant
  loc_145F34A:   Call 0.Method_arg_1C (MemVar_1F920B4 & "\ExpenseVoucher.RPT", var_104, var_E4)
  loc_145F355:   MemVar_1F921E4 = var_E4
  loc_145F362: Else
  loc_145F378:   Set var_E4 = var_A0 
  loc_145F384:   var_166 = CreateFieldDefFile(var_E4, MemVar_1F920B4 & "\PurchBill.ttx", &HFF)
  loc_145F38E:   Set var_A0 = var_E4
  loc_145F394:   var_104 = CVar(var_166) 'Integer
  loc_145F397:   var_9C = var_104 'Variant
  loc_145F3B3:   var_C8 = MemVar_1F920B4 & "\PurchRetBill.RPT"
  loc_145F3BC:   Call 0.Method_arg_1C (var_C8, var_104, var_E4, var_166)
  loc_145F3C7:   MemVar_1F921E4 = var_E4
  loc_145F3D1: End If
  loc_145F3D7: var_C4 = var_A4.RecordCount
  loc_145F3E5: If (var_C4 > 0) Then
  loc_145F3E8:   ' Referenced from: 145FB63
  loc_145F3EE:   var_166 = var_A4.EOF
  loc_145F3F7:   If Not(var_166) Then
  loc_145F420:     var_124 = Trim(CVar(var_A4.Fields.Item("SunCode")))
  loc_145F44E:     If (Ucase(var_124) = CVar(MemVar_1F92078 & "NET")) Then
  loc_145F491:       var_E4 = var_A4.Fields
  loc_145F499:       var_E8 = var_E4.Item("Amount")
  loc_145F4A8:       Proc_6_39_E7C810(var_124, CVar(var_E8))
  loc_145F4D1:       var_B8 = CStr(Format(var_124, "0.00"))
  loc_145F4F3:       Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1)
  loc_145F4FB:       Call 0.Method_arg_24 (1, 1)
  loc_145F507:       For var_17C = var_E4 To CInt(var_C4): &HFF = var_17C 'Integer
  loc_145F520:         Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F528:         Call 0.Method_arg_20 (var_C8)
  loc_145F530:         Call 0.Method_arg_30 (var_E4)
  loc_145F546:         var_18C = Ucase(CVar(var_C8)) 'Variant
  loc_145F55C:         var_114 = "lblNetAmount"
  loc_145F576:         If (var_18C = Ucase(var_114)) Then
  loc_145F584:           Proc_6_17_EAA2B0(var_114)
  loc_145F5A0:           Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F5A8:           Call 0.Method_arg_20 (CStr(var_114))
  loc_145F5B0:           Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_A4.Fields.Item("DispName")), var_166))
  loc_145F5C5:         Else
  loc_145F5CD:           var_114 = "NetAmount"
  loc_145F5E7:           If (var_18C = Ucase(var_114)) Then
  loc_145F5F5:             Proc_6_17_EAA2B0(var_114)
  loc_145F5FD:             var_C8 = CStr(var_114)
  loc_145F611:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F619:             Call 0.Method_arg_20 (var_C8)
  loc_145F621:             Call 0.Method_arg_38 (var_B8)
  loc_145F633:           End If
  loc_145F633:         End If
  loc_145F636:       Next var_17C 'Integer
  loc_145F63E:     Else
  loc_145F664:       var_124 = Trim(CVar(var_A4.Fields.Item("SunCode")))
  loc_145F692:       If (Ucase(var_124) = CVar(MemVar_1F92078 & "TOT")) Then
  loc_145F6D5:         var_E4 = var_A4.Fields
  loc_145F6DD:         var_E8 = var_E4.Item("Amount")
  loc_145F6E5:         var_114 = CVar(var_E8) 'Address
  loc_145F6EC:         Proc_6_39_E7C810(var_124)
  loc_145F715:         var_B8 = CStr(Format(var_124, "0.00"))
  loc_145F737:         Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1)
  loc_145F73F:         Call 0.Method_arg_24 (1, 1)
  loc_145F74B:         For var_190 =  To CInt(var_C4):   var_114 = var_190 'Integer
  loc_145F764:           Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_145F76C:           Call 0.Method_arg_20 (var_E8)
  loc_145F774:           Call 0.Method_arg_30 (var_C8)
  loc_145F78A:           var_1A0 = Ucase(CVar(var_C8)) 'Variant
  loc_145F7A0:           var_114 = "lblTotal"
  loc_145F7BA:           If (var_1A0 = Ucase(var_114)) Then
  loc_145F7C8:             Proc_6_17_EAA2B0(var_114)
  loc_145F7E4:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F7EC:             Call 0.Method_arg_20 (CStr(var_114))
  loc_145F7F4:             Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_A4.Fields.Item("DispName"))))
  loc_145F809:           Else
  loc_145F811:             var_114 = "Total"
  loc_145F81A:             var_124 = Ucase(var_114)
  loc_145F82B:             If (var_1A0 = var_124) Then
  loc_145F839:               Proc_6_17_EAA2B0(var_114)
  loc_145F841:               var_C8 = CStr(var_114)
  loc_145F855:               Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F85D:               Call 0.Method_arg_20 (var_C8)
  loc_145F865:               Call 0.Method_arg_38 (var_B8)
  loc_145F877:             End If
  loc_145F877:           End If
  loc_145F87A:         Next var_190 'Integer
  loc_145F882:       Else
  loc_145F8D2:         var_114 = CVar(var_A4.Fields.Item("SValue")) 'Address
  loc_145F8D9:         Proc_6_39_E7C810(var_124)
  loc_145F902:         var_BC = CStr(Format(var_124, "0.00"))
  loc_145F922:         var_E4 = var_A4.Fields
  loc_145F92A:         var_E8 = var_E4.Item("Amount")
  loc_145F932:         var_114 = CVar(var_E8) 'Address
  loc_145F939:         Proc_6_39_E7C810(var_124, var_114, 1)
  loc_145F948:         var_134 = "0.00"
  loc_145F962:         var_B8 = CStr(Format(var_124, var_134))
  loc_145F979:         var_BE = (var_BE + 1)
  loc_145F98D:         Call 0.Method_arg_90 (var_E4, var_C4, var_AA, 1, var_BE)
  loc_145F995:         Call 0.Method_arg_24 (1, 1)
  loc_145F9A1:         For var_1A4 = var_114 To CInt(var_C4):     1 = var_1A4 'Integer
  loc_145F9BA:           Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145F9C2:           Call 0.Method_arg_20 (var_C8)
  loc_145F9CA:           Call 0.Method_arg_30 (var_114)
  loc_145F9E0:           var_1B4 = Ucase(CVar(var_C8)) 'Variant
  loc_145F9FD:           var_114 = CVar("lblSunName" & CStr(var_BE)) 'String
  loc_145FA17:           If (var_1B4 = Ucase(var_114)) Then
  loc_145FA25:             Proc_6_17_EAA2B0(var_114)
  loc_145FA41:             Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145FA49:             Call 0.Method_arg_20 (CStr(var_114))
  loc_145FA51:             Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_A4.Fields.Item("DispName"))))
  loc_145FA66:           Else
  loc_145FA75:             var_114 = CVar("SunPer" & CStr(var_BE)) 'String
  loc_145FA8F:             If (var_1B4 = Ucase(var_114)) Then
  loc_145FA9D:               Proc_6_17_EAA2B0(var_114)
  loc_145FAB9:               Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145FAC1:               Call 0.Method_arg_20 (CStr(var_114))
  loc_145FAC9:               Call 0.Method_arg_38 (var_BC)
  loc_145FADE:             Else
  loc_145FAED:               var_114 = CVar("SunAmt" & CStr(var_BE)) 'String
  loc_145FB07:               If (var_1B4 = Ucase(var_114)) Then
  loc_145FB15:                 Proc_6_17_EAA2B0(var_114)
  loc_145FB1D:                 var_C8 = CStr(var_114)
  loc_145FB31:                 Call 0.Method_arg_90 (var_E4, CLng(var_AA), var_E8)
  loc_145FB39:                 Call 0.Method_arg_20 (var_C8)
  loc_145FB41:                 Call 0.Method_arg_38 (var_B8)
  loc_145FB53:               End If
  loc_145FB53:             End If
  loc_145FB53:           End If
  loc_145FB56:         Next var_1A4 'Integer
  loc_145FB5B:       End If
  loc_145FB5B:     End If
  loc_145FB5E:     var_A4.MoveNext
  loc_145FB63:     GoTo loc_145F3E8
  loc_145FB66:   End If
  loc_145FB66: End If
  loc_145FB77: Call 0.Method_arg_90 (var_E4, var_C4)
  loc_145FB7F: Call 0.Method_arg_24 (var_AA)
  loc_145FB8B: For var_1B8 =  To CInt(var_C4): 1 = var_1B8 'Integer
  loc_145FBA4:   Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_145FBAC:   Call 0.Method_arg_20 (var_E8)
  loc_145FBB4:   Call 0.Method_arg_30 (var_C8)
  loc_145FBCE:   If (var_C8 = "Title") Then
  loc_145FBE4:     Call 0.Method_arg_90 (var_E4, CLng(var_AA))
  loc_145FBEC:     Call 0.Method_arg_20 (var_E8)
  loc_145FBF4:     Call 0.Method_arg_38 ("'Purchase Bill'")
  loc_145FC00:   End If
  loc_145FC03: Next var_1B8 'Integer
  loc_145FC21: Call 0.Method_arg_64 (var_E4, CVar(var_A0))
  loc_145FC29: Call 0.Method_arg_2C (var_134)
  loc_145FC37: Call 0.Method_arg_150 (var_154)
  loc_145FC42: Call 0.Method_arg_50 (var_C8)
  loc_145FC4C: Set var_E8 = Nothing
  loc_145FC66: Set var_E4 = MemVar_1F921E4 
  loc_145FC72: Proc_6_99_1483714(var_E4, 0, var_C8)
  loc_145FC7D: MemVar_1F921E4 = var_E4
  loc_145FC90: Set var_A0 = Nothing
  loc_145FC98: Set var_B0 = Nothing
  loc_145FC9B: Exit Sub
  loc_145FC9C: ' Referenced from: 145F13C
  loc_145FC9C: Proc_6_60_E62BC4(&HFF)
  loc_145FCA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E6548C
  'Data Table: 59BA10
  Dim Me As Recordset15
  loc_E65443: Me.Requery -1
  loc_E65453: Me.Requery -1
  loc_E65466: Me.Recordset15.Requery -1
  loc_E65476: Me.Requery -1
  loc_E65486: Me.Requery -1
  loc_E6548B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1BFE780
  'Data Table: 59BA10
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
  Dim unk_59BA2D As Connection15
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
  loc_1BF8E40: On Error Goto loc_1BFE733
  loc_1BF8E54: Call 0.Method_arg_38 (MemVar_1F92214, var_170)
  loc_1BF8E62: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_170)
  loc_1BF8E6E: If Not(var_172) Then
  loc_1BF8E8C:   MsgBox("InValid Picture Path in Analysis.ini", &H40, var_1B4, var_1D4, var_1F4)
  loc_1BF8E9E:   Exit Sub
  loc_1BF8E9F: End If
  loc_1BF8EB7: Call 0.Method_arg_38 (MemVar_1F92214 & "\PurchBill", var_1F8)
  loc_1BF8EC5: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1F8, var_172)
  loc_1BF8ED5: If Not(var_172) Then
  loc_1BF8EED:   Call 0.Method_arg_74 (MemVar_1F92214 & "\PurchBill", var_1FC)
  loc_1BF8EF8: End If
  loc_1BF8F08: Set var_1FC = Me.Opt
  loc_1BF8F0E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BF8F16: var_172 = var_200.Value
  loc_1BF8F29: Set var_204 = Me.Opt
  loc_1BF8F2F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_208)
  loc_1BF8F4A: Set var_20C = Me.Opt
  loc_1BF8F50: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_210)
  loc_1BF8F58: var_212 = var_210.Value
  loc_1BF8F6B: Set var_218 = Me.Opt
  loc_1BF8F71: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_21C)
  loc_1BF8F8C: Set var_220 = Me.Opt
  loc_1BF8F92: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_224)
  loc_1BF8FC3: var_1F4 = CVar(var_208.Caption) 'String
  loc_1BF8FDC: var_140 = CStr(IIf((var_172 = &HFF), var_1F4, IIf((var_212 = &HFF), CVar(var_21C.Caption), CVar(var_224.Caption))))
  loc_1BF902C: If (((global_132 = "PBR") Or (global_132 = "EXR")) Or (global_132 = "PRR")) Then
  loc_1BF902F: End If
  loc_1BF903E: Set var_1FC = Me.Txt
  loc_1BF9044: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200)
  loc_1BF906D: If (Proc_6_27_EA565C(var_200, "Voucher Date") = 0) Then
  loc_1BF9072:   Exit Sub
  loc_1BF9073: End If
  loc_1BF907C: Set var_1FC = Me.TxtGt
  loc_1BF9082: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172)
  loc_1BF9095: Call TxtGt_Validate((var_172 + 1))
  loc_1BF90AA: Set var_1FC = Me.Txt
  loc_1BF90B0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1BF90D9: If (Proc_6_27_EA565C(var_200, "Voucher No") = 0) Then
  loc_1BF90DE:   Exit Sub
  loc_1BF90DF: End If
  loc_1BF9106: For var_23E = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_23E 'Integer
  loc_1BF9112:   var_184 = CVar(CLng(var_92)) 'Long
  loc_1BF911A:   var_1C4 = CVar(CLng(2)) 'Long
  loc_1BF9156:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_1BF915D:     var_136 = &HFF
  loc_1BF9160:   End If
  loc_1BF9166:   var_184 = CVar(CLng(var_92)) 'Long
  loc_1BF916E:   var_1C4 = CVar(CLng(2)) 'Long
  loc_1BF9188:   var_1B4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1BF918E:   var_1D4 = Trim(var_1B4)
  loc_1BF9196:   var_250 = vbNullString
  loc_1BF91A4:   var_260 = CVar(CLng(var_92)) 'Long
  loc_1BF91B5:   Set var_200 = Me.FGrid
  loc_1BF91D7:   var_2B0 = CVar(CLng(9)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))
  loc_1BF91DF:   var_2C0 = CVar(CLng(var_92)) 'Long
  loc_1BF9212:   var_320 = CVar(CLng(&HA)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))
  loc_1BF921A:   var_330 = CVar(CLng(var_92)) 'Long
  loc_1BF922B:   Set var_208 = Me.FGrid
  loc_1BF9254:   var_3C0 = CVar(CLng(&H17)) And (Trim(CVar(CStr(var_208.TextMatrix)))) = vbNullString)
  loc_1BF9283:   If CBool(var_3C0) Then
  loc_1BF929E:     var_170 = CStr(var_92)
  loc_1BF92AC:     MsgBox(CVar("Invalid record on row no." & var_170 & vbNullString), 0, var_1B4, var_1D4, var_1F4)
  loc_1BF92D8:     Me.FGrid.Row = CVar(CLng(var_92))
  loc_1BF92F4:     Me.FGrid.Col = CVar(CLng(2))
  loc_1BF9302:     Set var_1FC = Me.FGrid
  loc_1BF9315:     Exit Sub
  loc_1BF9316:   End If
  loc_1BF931D: Next var_23E 'Integer
  loc_1BF932A: If (var_136 = 0) Then
  loc_1BF9342:   var_194 = "No Item Found In Grid."
  loc_1BF9348:   MsgBox(var_194, &H10, var_1B4, var_1D4, var_1F4)
  loc_1BF935E:   Set var_1FC = Me.FGrid
  loc_1BF9371:   Exit Sub
  loc_1BF9372: End If
  loc_1BF938B: If ((global_132 = "PBR") Or (global_132 = "EXR")) Then
  loc_1BF93AD:   Proc_6_7_F25D88(var_194, MemVar_1F920F4, "Select Count(*) from Purch1 where VDATE BETWEEN ", var_3C0)
  loc_1BF93B5:   var_1B4 = -1 & var_194 
  loc_1BF93BE:   var_1D4 = var_1B4 & " AND " 
  loc_1BF93CD:   Proc_6_7_F25D88(var_1F4, MemVar_1F920FC, var_1D4)
  loc_1BF93DE:   var_2B0 = var_20C & var_1F4 & " AND Vtype in (Select Vtype from Voucher_type where NCAT='PBR') and PartyBillNo='" 
  loc_1BF93F0:   Set var_1FC = Me.Txt
  loc_1BF93F6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_200, var_170)
  loc_1BF93FE:   var_2B0 = var_200.Text
  loc_1BF9424:   Set var_204 = Me.Txt
  loc_1BF942A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_208)
  loc_1BF9454:   unk_59BA2D.Execute CStr(FGrid.DispID_8001 & CVar(var_170) & "' and Party='" & CVar(var_208.Tag) & "'"), , 
  loc_1BF9495:   Set var_1FC = Me.TopCtrl1
  loc_1BF949B:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1BF94B4:   If (CStr() = "Add") Then
  loc_1BF94CB:     var_1FC = var_20C.Fields
  loc_1BF94F5:     If (var_1FC.Item(0).Value > 0) Then
  loc_1BF950D:       var_194 = "Duplicate Party Bill No"
  loc_1BF9513:       MsgBox(var_194, 0, var_1B4, var_1D4, var_1F4)
  loc_1BF9528:     Else
  loc_1BF952A:     End If
  loc_1BF952C:   End If
  loc_1BF953B:   If (global_240 = "Room Service") Then
  loc_1BF955D:     Proc_6_17_EAA2B0(var_194, MemVar_1F92078, "Select RoomPayType From enviro WHERE LOGSITE_CODE=")
  loc_1BF9573:     unk_59BA2D.Execute CStr(var_1D4 & var_194), -1, var_1FC
  loc_1BF957E:     Set var_88 = var_1FC
  loc_1BF95A6:     If (var_88.RecordCount > 0) Then
  loc_1BF95BD:       var_1FC = var_88.Fields
  loc_1BF95F1:       If (Proc_6_38_E68A98(var_1FC.Item(0).Value) = vbNullString) Then
  loc_1BF9611:         var_194 = "Please define Room Payment Type From Enviro"
  loc_1BF9617:         MsgBox(var_194, &H40, "HMS", var_1D4, var_1F4)
  loc_1BF9629:         Exit Sub
  loc_1BF962A:       End If
  loc_1BF962C:     End If
  loc_1BF9631:   Else
  loc_1BF9652:     Proc_6_17_EAA2B0(var_194, MemVar_1F92078, "Select CashPurchAc From enviro WHERE LOGSITE_CODE=")
  loc_1BF9668:     unk_59BA2D.Execute CStr(var_1D4 & var_194), -1, var_1FC
  loc_1BF9673:     Set var_88 = var_1FC
  loc_1BF969B:     If (var_88.RecordCount > 0) Then
  loc_1BF96BA:       var_200 = var_88.Fields.Item(0)
  loc_1BF96CF:       var_148 = Proc_6_38_E68A98(var_200.Value)
  loc_1BF96E6:       If (var_148 = vbNullString) Then
  loc_1BF970C:         MsgBox("Please define Cash Payment Type From Enviro", &H40, "HMS", var_1D4, var_1F4)
  loc_1BF971E:         Exit Sub
  loc_1BF971F:       End If
  loc_1BF9721:     End If
  loc_1BF9723:   End If
  loc_1BF974C:   For var_3C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_3C8 'Integer
  loc_1BF9758:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BF9760:     var_1C4 = CVar(CLng(0)) 'Long
  loc_1BF976A:     var_194 = CVar(CStr(var_92)) 'String
  loc_1BF9772:     Set var_1FC = Me.FGrid
  loc_1BF9778:     LateIdCallSt
  loc_1BF978C:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BF9794:     var_1C4 = CVar(CLng(&H12)) 'Long
  loc_1BF97C4:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_1BF97CD:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1BF97D5:       var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1BF9801:       var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1BF9810:     Else
  loc_1BF9818:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1BF9820:       var_1C4 = CVar(CLng(&HB)) 'Long
  loc_1BF982F:       var_194 = Me.FGrid.TextMatrix)
  loc_1BF983A:       var_170 = CStr(var_194)
  loc_1BF984C:       var_AC = (var_AC + Val(var_170))
  loc_1BF9858:     End If
  loc_1BF985F:   Next var_3C8 'Integer
  loc_1BF9872:   Set var_1FC = Me.TxtGt
  loc_1BF9878:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172, var_92)
  loc_1BF9883:   For var_3D4 =  To var_172:   1 = var_3D4 'Integer
  loc_1BF98B7:     Set var_1FC = Me.LblCap
  loc_1BF98BD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, "Select Nature from SundryType Where SundryCode='", var_194, -1)
  loc_1BF98EC:     unk_59BA2D.Execute var_208 & var_170 & "' And V_Type='" & MemVar_1F92078 & "PURC' ORDER BY aPPDATE DESC", 0, var_20C
  loc_1BF98FC:      = var_208.Item()
  loc_1BF9904:      = var_20C.Value
  loc_1BF993A:     var_3E0 = Proc_6_38_E68A98(var_200.Tag.Fields)
  loc_1BF9947:     If (var_3E0 = "Addition") Then
  loc_1BF9959:       Set var_1FC = Me.TxtGt
  loc_1BF995F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200)
  loc_1BF9967:       var_170 = var_200.Text
  loc_1BF997E:       var_B4 = (var_B4 + Val(var_170))
  loc_1BF999A:       Set var_1FC = Me.TxtPer
  loc_1BF99A0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170)
  loc_1BF99A8:       var_B4 = var_200.Text
  loc_1BF99BF:       var_CC = (var_CC + Val(var_170))
  loc_1BF99CF:     Else
  loc_1BF99D9:       If (var_3E0 = "Deduction") Then
  loc_1BF99EB:         Set var_1FC = Me.TxtGt
  loc_1BF99F1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170)
  loc_1BF99F9:         var_CC = var_200.Text
  loc_1BF9A10:         var_BC = (var_BC + Val(var_170))
  loc_1BF9A2C:         Set var_1FC = Me.TxtPer
  loc_1BF9A32:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_BC)
  loc_1BF9A3A:         var_3D0 = var_200.Text
  loc_1BF9A51:         var_C4 = (var_C4 + Val(var_170))
  loc_1BF9A61:       Else
  loc_1BF9A6B:         If (var_3E0 = "Discount") Then
  loc_1BF9A7D:           Set var_1FC = Me.TxtGt
  loc_1BF9A83:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_C4)
  loc_1BF9A8B:           var_3D0 = var_200.Text
  loc_1BF9AA2:           var_DC = (var_DC + Val(var_170))
  loc_1BF9ABE:           Set var_1FC = Me.TxtPer
  loc_1BF9AC4:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_DC)
  loc_1BF9ACC:           var_3D0 = var_200.Text
  loc_1BF9AE3:           var_E4 = (var_E4 + Val(var_170))
  loc_1BF9AF3:         Else
  loc_1BF9AFD:           If (var_3E0 = "Luxury Tax") Then
  loc_1BF9B0F:             Set var_1FC = Me.TxtGt
  loc_1BF9B15:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_E4)
  loc_1BF9B1D:             var_3D0 = var_200.Text
  loc_1BF9B34:             var_FC = (var_FC + Val(var_170))
  loc_1BF9B50:             Set var_1FC = Me.TxtPer
  loc_1BF9B56:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1BF9B5E:             var_3D0 = var_200.Text
  loc_1BF9B75:             var_D4 = (var_D4 + Val(var_170))
  loc_1BF9B85:           Else
  loc_1BF9B8F:             If (var_3E0 = "Round Off") Then
  loc_1BF9BA1:               Set var_1FC = Me.TxtGt
  loc_1BF9BA7:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1BF9BAF:               var_3D0 = var_200.Text
  loc_1BF9BC6:               var_EC = (var_EC + Val(var_170))
  loc_1BF9BE2:               Set var_1FC = Me.TxtPer
  loc_1BF9BE8:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_EC)
  loc_1BF9BF0:               var_3D0 = var_200.Text
  loc_1BF9C07:               var_F4 = (var_F4 + Val(var_170))
  loc_1BF9C17:             Else
  loc_1BF9C21:               If (var_3E0 = "Sale Tax") Then
  loc_1BF9C33:                 Set var_1FC = Me.TxtGt
  loc_1BF9C39:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_F4)
  loc_1BF9C41:                 var_3D0 = var_200.Text
  loc_1BF9C58:                 var_FC = (var_FC + Val(var_170))
  loc_1BF9C74:                 Set var_1FC = Me.TxtPer
  loc_1BF9C7A:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1BF9C82:                 var_3D0 = var_200.Text
  loc_1BF9C99:                 var_D4 = (var_D4 + Val(var_170))
  loc_1BF9CA9:               Else
  loc_1BF9CB3:                 If (var_3E0 = "Service Charge") Then
  loc_1BF9CC5:                   Set var_1FC = Me.TxtGt
  loc_1BF9CCB:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1BF9CD3:                   var_3D0 = var_200.Text
  loc_1BF9CEA:                   var_104 = (var_104 + Val(var_170))
  loc_1BF9D06:                   Set var_1FC = Me.TxtPer
  loc_1BF9D0C:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_104)
  loc_1BF9D14:                   var_3D0 = var_200.Text
  loc_1BF9D2B:                   var_10C = (var_10C + Val(var_170))
  loc_1BF9D3B:                 Else
  loc_1BF9D45:                   If (var_3E0 = "Service Tax") Then
  loc_1BF9D57:                     Set var_1FC = Me.TxtGt
  loc_1BF9D5D:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_10C)
  loc_1BF9D65:                     var_3D0 = var_200.Text
  loc_1BF9D7C:                     var_FC = (var_FC + Val(var_170))
  loc_1BF9D98:                     Set var_1FC = Me.TxtPer
  loc_1BF9D9E:                     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_FC)
  loc_1BF9DA6:                     var_3D0 = var_200.Text
  loc_1BF9DBD:                     var_D4 = (var_D4 + Val(var_170))
  loc_1BF9DCD:                   Else
  loc_1BF9DD7:                     If (var_3E0 = "CGST") Then
  loc_1BF9DE9:                       Set var_1FC = Me.TxtGt
  loc_1BF9DEF:                       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_D4)
  loc_1BF9DF7:                       var_3D0 = var_200.Text
  loc_1BF9E0E:                       var_118 = (var_118 + Val(var_170))
  loc_1BF9E1E:                     Else
  loc_1BF9E28:                       If (var_3E0 = "SGST") Then
  loc_1BF9E3A:                         Set var_1FC = Me.TxtGt
  loc_1BF9E40:                         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_118)
  loc_1BF9E48:                         var_3D0 = var_200.Text
  loc_1BF9E5F:                         var_120 = (var_120 + Val(var_170))
  loc_1BF9E6F:                       Else
  loc_1BF9E79:                         If (var_3E0 = "IGST") Then
  loc_1BF9E8B:                           Set var_1FC = Me.TxtGt
  loc_1BF9E91:                           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200, var_170, var_120)
  loc_1BF9E99:                           var_3D0 = var_200.Text
  loc_1BF9EB0:                           var_128 = (var_128 + Val(var_170))
  loc_1BF9EBD:                         End If
  loc_1BF9EBD:                       End If
  loc_1BF9EBD:                     End If
  loc_1BF9EBD:                   End If
  loc_1BF9EBD:                 End If
  loc_1BF9EBD:               End If
  loc_1BF9EBD:             End If
  loc_1BF9EBD:           End If
  loc_1BF9EBD:         End If
  loc_1BF9EBD:       End If
  loc_1BF9EBD:     End If
  loc_1BF9EC4:   Next var_3D4 'Integer
  loc_1BF9ECE:   var_9C = vbNullString
  loc_1BF9ED6:   Call Proc_32_93_1261C10(var_172)
  loc_1BF9EE1:   If (var_172 = 0) Then
  loc_1BF9EE6:     Exit Sub
  loc_1BF9EE7:   End If
  loc_1BF9EF4:   Set var_1FC = Me.TxtGrid
  loc_1BF9EFA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_200)
  loc_1BF9F02:   var_200.Visible = False
  loc_1BF9F10:   Call Proc_32_96_FE1284()
  loc_1BF9F25:   Set var_1FC = Me.Txt
  loc_1BF9F2B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200)
  loc_1BF9F53:   If (Proc_6_91_EF2D40(CDate(var_200.Text)) = 0) Then
  loc_1BF9F63:     Set var_1FC = Me.Txt
  loc_1BF9F69:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_1BF9F71:     var_200.SetFocus
  loc_1BF9F7F:     Exit Sub
  loc_1BF9F80:   End If
  loc_1BF9F86:   Set var_1FC = Me.TopCtrl1
  loc_1BF9F8C:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_200)
  loc_1BF9F94:   var_170 = CStr()
  loc_1BF9FA5:   If (var_170 = "Add") Then
  loc_1BF9FB0:     var_1A4 = 0
  loc_1BF9FD7:     Set var_1FC = Me.Txt
  loc_1BF9FDD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, "Select Count(*) From Purch1 Where DocID='", var_194, -1)
  loc_1BF9FFE:     unk_59BA2D.Execute var_208 & var_170 & "'", var_1A4, var_20C
  loc_1BFA00E:      = var_208.Item()
  loc_1BFA016:      = var_20C.Value
  loc_1BFA043:     If (var_200.Text.Fields > 0) Then
  loc_1BFA04E:       Call Proc_32_98_10E9688(MemVar_1F92044)
  loc_1BFA061:       Set var_1FC = Me.Txt
  loc_1BFA067:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BFA06F:       var_200.Text = var_170
  loc_1BFA080:       Exit Sub
  loc_1BFA081:     End If
  loc_1BFA086:   Else
  loc_1BFA09F:     var_1FC = Me.Fields
  loc_1BFA0BE:     global_116 = CStr(var_1FC.Item("DocID").Value)
  loc_1BFA0CF:   End If
  loc_1BFA0D9:   Call Proc_32_101_EAB57C(var_134, var_1FC)
  loc_1BFA0E1:   Set var_134 = var_1FC
  loc_1BFA10B:   For var_3E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_3E4 'Integer
  loc_1BFA117:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFA11F:     var_1C4 = CVar(CLng(2)) 'Long
  loc_1BFA13F:     var_1D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFA147:     var_250 = vbNullString
  loc_1BFA155:     var_260 = CVar(CLng(var_92)) 'Long
  loc_1BFA166:     Set var_200 = Me.FGrid
  loc_1BFA1A5:     If CBool(CVar(CLng(&HB)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))) Then
  loc_1BFA1B0:       var_3C4 = var_134.RecordCount
  loc_1BFA1BE:       If (var_3C4 > 0) Then
  loc_1BFA1C6:         var_134.MoveFirst
  loc_1BFA1D9:         var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1BFA242:         var_134.Find "V_NO=" & CStr(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))), 0, 1
  loc_1BFA266:         var_172 = var_134.EOF
  loc_1BFA26E:         If var_172 Then
  loc_1BFA27E:           var_134.AddNew CVar(CLng(var_92)), var_1A4
  loc_1BFA289:           var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFA291:           var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1BFA2D7:           var_260 = CVar(Val(CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))) 'Double
  loc_1BFA2E5:           var_134.Collect = "V_NO"
  loc_1BFA308:           var_134.Update var_184, var_1A4
  loc_1BFA30D:         End If
  loc_1BFA312:       Else
  loc_1BFA321:         var_134.AddNew var_184, var_1A4
  loc_1BFA334:         var_1C4 = CVar(CLng(&HE)) 'Long
  loc_1BFA343:         var_194 = Me.FGrid.TextMatrix)
  loc_1BFA358:         var_1B4 = CVar(CStr(var_194)) 'String
  loc_1BFA37A:         var_260 = CVar(Val(CStr(Trim(Right(var_1B4, 8))))) 'Double
  loc_1BFA388:         var_134.Collect = "V_NO"
  loc_1BFA3AB:         var_134.Update CVar(CLng(var_92)), var_1A4
  loc_1BFA3B0:       End If
  loc_1BFA3B2:     End If
  loc_1BFA3B9:   Next var_3E4 'Integer
  loc_1BFA3C4:   Set var_1FC = Me.TopCtrl1
  loc_1BFA3CA:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1BFA3E3:   If (CStr() = "Add") Then
  loc_1BFA3EE:     var_1A4 = 0
  loc_1BFA40B:     var_170 = "Select IsNull(Max(InvoiceNo),0)+1 From Purch1 Where LOGsite_code='" & MemVar_1F92078
  loc_1BFA429:     unk_59BA2D.Execute CStr() & "' And InvoiceType='" & var_140 & "'", var_194, -1
  loc_1BFA431:     var_1FC = var_1FC.Fields
  loc_1BFA439:     var_1A4 = var_200.Item(var_200)
  loc_1BFA441:     var_204 = var_204.Value
  loc_1BFA452:     Set var_208 = Me.LblInvoiceNo
  loc_1BFA458:     var_208.Caption = CStr(var_1B4)
  loc_1BFA47E:   End If
  loc_1BFA484:   var_8A = &HFF
  loc_1BFA492:   unk_59BA2D.BeginTrans var_3C4
  loc_1BFA4B7:   Set var_1FC = Me.Txt
  loc_1BFA4BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Sale2 Where DocID='", var_194)
  loc_1BFA4C5:   -1 = var_200.Text
  loc_1BFA4DE:   unk_59BA2D.Execute var_204 & CStr() & "'", var_8A, var_1B4
  loc_1BFA518:   Set var_1FC = Me.Txt
  loc_1BFA51E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Purch1 Where DocID='")
  loc_1BFA526:   var_194 = var_200.Text
  loc_1BFA52F:   var_1F8 = -1 & CStr()
  loc_1BFA53F:   unk_59BA2D.Execute var_204 & CStr() & "'", var_204, 
  loc_1BFA579:   Set var_1FC = Me.Txt
  loc_1BFA57F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Purch2 Where DocID='")
  loc_1BFA587:   var_194 = var_200.Text
  loc_1BFA590:   var_1F8 = -1 & CStr()
  loc_1BFA5A0:   unk_59BA2D.Execute var_204 & CStr() & "'", var_204, 
  loc_1BFA5DA:   Set var_1FC = Me.Txt
  loc_1BFA5E0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From SunTran Where DocID='")
  loc_1BFA5E8:   var_194 = var_200.Text
  loc_1BFA5F1:   var_1F8 = -1 & CStr()
  loc_1BFA601:   unk_59BA2D.Execute var_204 & CStr() & "'", var_204, 
  loc_1BFA63B:   Set var_1FC = Me.Txt
  loc_1BFA641:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, CStr(), "Delete From Stock Where DocID='")
  loc_1BFA649:   var_194 = var_200.Text
  loc_1BFA652:   var_1F8 = -1 & CStr()
  loc_1BFA659:   var_228 = var_204 & CStr() & "'"
  loc_1BFA662:   unk_59BA2D.Execute var_228, var_204, 
  loc_1BFA68A:   Call 0.Method_arg_38 (MemVar_1F92214)
  loc_1BFA6A0:   var_3D8 = CStr() & "\PurchBill\" & global_140
  loc_1BFA6B1:   Set var_1FC = Me.Txt
  loc_1BFA6B7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200, var_228)
  loc_1BFA6BF:   var_3D8 = Me.Txt.Text
  loc_1BFA6CF:   var_144 = CStr() & var_228 & ".jpg"
  loc_1BFA6EC:   Set var_200 = Me.BillImage
  loc_1BFA70A:   If (Proc_142_3_E97580(var_200) = &HFF) Then
  loc_1BFA71C:     Me.BillImage.Tag = var_144
  loc_1BFA724:   End If
  loc_1BFA734:   Set var_1FC = Me.Txt
  loc_1BFA73A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BFA755:   Set var_204 = Me.Txt
  loc_1BFA75B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_208)
  loc_1BFA770:   var_3D0 = Val(var_208.Text)
  loc_1BFA77E:   Set var_20C = Me.Txt
  loc_1BFA784:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210)
  loc_1BFA793:   Proc_6_7_F25D88(var_1B4, CVar(var_210))
  loc_1BFA7A5:   var_3F0 = Me.LblVPrefix.Caption
  loc_1BFA7B8:   Set var_21C = Me.Txt
  loc_1BFA7BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_220, var_404)
  loc_1BFA7D2:   Set var_224 = Me.TxtGt
  loc_1BFA7D8:   Call 0.Method_TopCtrl1_UnknownEvent_164 (var_172)
  loc_1BFA7EA:   Set var_438 = Me.TxtGt
  loc_1BFA7F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_172, var_43C)
  loc_1BFA805:   var_BF0 = Val(var_43C.Text)
  loc_1BFA80F:   Set var_6D4 = Me.TxtGt
  loc_1BFA815:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_212, var_BF0)
  loc_1BFA827:   Set var_6D8 = Me.TxtGt
  loc_1BFA82D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_212, var_6DC)
  loc_1BFA842:   var_BF8 = Val(var_6DC.Text)
  loc_1BFA853:   Proc_6_7_F25D88(var_780, Date)
  loc_1BFA85C:   Set var_7B4 = Me.TopCtrl1
  loc_1BFA862:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_BF8)
  loc_1BFA8A7:   Set var_85C = Me.Txt
  loc_1BFA8AD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_860)
  loc_1BFA8C5:   Set var_8A8 = Me.Txt
  loc_1BFA8CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_8AC)
  loc_1BFA8DA:   Proc_6_7_F25D88(var_8CC, CVar(var_8AC))
  loc_1BFA8EA:   Set var_900 = Me.Txt
  loc_1BFA8F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_904)
  loc_1BFA90F:   Set var_998 = Me.Txt
  loc_1BFA915:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_99C)
  loc_1BFA91D:   var_9AC = CVar(var_99C) 'Address
  loc_1BFA934:   Set var_9F0 = Me.Txt
  loc_1BFA93A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_9F4)
  loc_1BFA949:   Proc_6_17_EAA2B0(var_A14, CVar(var_9F4))
  loc_1BFA959:   Proc_6_17_EAA2B0(var_A64, var_140)
  loc_1BFA9DA:   Proc_6_17_EAA2B0(var_B90, IIf((Me.BillImage.Visible = &HFF), CVar(Me.BillImage.Tag), vbNullString))
  loc_1BFA9F3:   var_1F8 = "Insert Into Purch1(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,Party,Total,DiscPer,DiscAmt,NonTaxable,Taxable,Tax,ServiceCharge,CGST,SGST,IGST,AddAmt,DedAmt,RoundOff,NetAmt,U_Name,U_EntDt,U_AE,DelFlag,PartyBillNo,PartyBillDt,CashParty,LogSite_Code,TinNo,Remark,InvoiceType,InvoiceNo,Payable,BillImagePath) Values (" & "'"
  loc_1BFAA43:   var_370 = CVar(var_1F8 & var_200.Text & "'," & CStr(var_220.Tag) & ",") & var_1B4 & ",'" & CVar(global_140) & "','" & CVar(var_3F0) 
  loc_1BFAA9C:   var_460 = var_370 & "','" & CVar(MemVar_1F92070) & "','" & CVar(global_60) & "','" & CVar(var_404) & "'," & CVar(var_BF0) & "," 
  loc_1BFAB0B:   var_530 = var_460 & CVar(var_E4) & "," & CVar(var_DC) & "," & CVar(var_AC) & "," & CVar(var_A4) & "," & CVar(var_FC) & ", " & CVar(var_104) 
  loc_1BFAB83:   var_6B0 = var_530 & "," & CVar(var_118) & "," & CVar(var_120) & "," & CVar(var_128) & "," & CVar(var_B4) & "," & CVar(var_BC) & "," & CVar(var_EC) 
  loc_1BFABCA:   var_838 = var_6B0 & "," & CVar(var_BF8) & ", '" & CVar(MemVar_1F920C8) & "'," & var_780 & ",'" & IIf((CStr(var_7C4) = "Add"), "A", "E") 
  loc_1BFAC06:   var_954 = var_838 & "','N','" & CVar(var_860.Text) & "'," & var_8CC & ",'" & Trim(CVar(var_904)) & "','" 
  loc_1BFAC54:   var_ABC = var_954 & CVar(MemVar_1F92078) & "','" & Trim(var_9AC) & "'," & var_A14 & "," & var_A64 & "," & CVar(Val(Me.LblInvoiceNo.Caption)) 
  loc_1BFAC8E:   unk_59BA2D.Execute CStr(var_ABC & "," & CVar(Me.ChkPayable.Value) & "," & var_B90 & ")"), var_BE4, -1
  loc_1BFADCB:   For var_C04 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_92 = var_C04 'Integer
  loc_1BFADD7:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFADFF:     var_1D4 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1BFAE26:     Set var_200 = Me.FGrid
  loc_1BFAE65:     If CBool(CVar(CLng(5)) And (CDbl(Val(CStr(var_200.TextMatrix)))) <> CDbl(0))) Then
  loc_1BFAE81:       If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BFAE94:         Set var_1FC = Me.Txt
  loc_1BFAE9A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, CVar(CLng(var_92)), (var_1D4 <> vbNullString), CVar(CLng(2)))
  loc_1BFAEA2:         var_184 = var_200.Text
  loc_1BFAEAB:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFAED5:         var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFAEF8:         Set var_20C = Me.Txt
  loc_1BFAEFE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_C1C, var_3D0, CVar(CLng(0)))
  loc_1BFAF06:         var_184 = var_210.Text
  loc_1BFAF13:         var_BF0 = Val(var_C1C)
  loc_1BFAF21:         Set var_218 = Me.Txt
  loc_1BFAF27:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C, var_BF0, 1)
  loc_1BFAF36:         Proc_6_7_F25D88(var_1D4, CVar(var_21C), var_BE8)
  loc_1BFAF47:         var_2A0 = CVar(CLng(&H17)) 'Long
  loc_1BFAF56:         var_370 = Me.FGrid.TextMatrix)
  loc_1BFAF70:         Set var_224 = Me.Txt
  loc_1BFAF76:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_438, var_C2C, var_370)
  loc_1BFAF7E:         var_2A0 = var_438.Text
  loc_1BFAF8E:         Set var_43C = Me.Txt
  loc_1BFAF94:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_6D4, CVar(CLng(var_92)))
  loc_1BFAF99:         var_2E0 = 1
  loc_1BFAFEB:         Set var_6DC = Me.Txt
  loc_1BFAFF1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7B4, var_C30, CVar(CLng(&H18)))
  loc_1BFAFF9:         var_2E0 = var_7B4.Tag
  loc_1BFB002:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1BFB00A:         var_520 = CVar(CLng(&HC)) 'Long
  loc_1BFB029:         var_580 = CVar(CLng(var_92)) 'Long
  loc_1BFB031:         var_5C0 = CVar(CLng(&H14)) 'Long
  loc_1BFB050:         var_620 = CVar(CLng(var_92)) 'Long
  loc_1BFB058:         var_660 = CVar(CLng(&H15)) 'Long
  loc_1BFB077:         var_6C0 = CVar(CLng(var_92)) 'Long
  loc_1BFB07F:         var_710 = CVar(CLng(8)) 'Long
  loc_1BFB09E:         var_7A0 = CVar(CLng(var_92)) 'Long
  loc_1BFB0A6:         var_7E8 = CVar(CLng(7)) 'Long
  loc_1BFB0CF:         var_8EC = CVar(CLng(var_92)) 'Long
  loc_1BFB0D7:         var_964 = CVar(CLng(&HA)) 'Long
  loc_1BFB100:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1BFB108:         var_AAC = CVar(CLng(9)) 'Long
  loc_1BFB131:         var_B40 = CVar(CLng(var_92)) 'Long
  loc_1BFB139:         var_BB0 = CVar(CLng(&HB)) 'Long
  loc_1BFB162:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1BFB16A:         var_C90 = CVar(CLng(&H11)) 'Long
  loc_1BFB193:         var_CD4 = CVar(CLng(var_92)) 'Long
  loc_1BFB19B:         var_CF4 = CVar(CLng(&H12)) 'Long
  loc_1BFB1C4:         var_D38 = CVar(CLng(var_92)) 'Long
  loc_1BFB1CC:         var_D58 = CVar(CLng(&HF)) 'Long
  loc_1BFB1EE:         var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFB21F:         var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFB250:         var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFB261:         Proc_6_7_F25D88(var_954, Date, var_1470, CVar(CLng(&H13)), CVar(CLng(var_92)), var_1468, CVar(CLng(&H10)), CVar(CLng(var_92)))
  loc_1BFB26A:         Set var_B2C = Me.TopCtrl1
  loc_1BFB270:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1460)
  loc_1BFB2AB:         var_ED8 = CVar(CLng(var_92)) 'Long
  loc_1BFB2B3:         var_EF8 = CVar(CLng(&H1E)) 'Long
  loc_1BFB2D2:         var_F28 = CVar(CLng(var_92)) 'Long
  loc_1BFB2DA:         var_F48 = CVar(CLng(&HE)) 'Long
  loc_1BFB2F9:         var_F7C = CVar(CLng(var_92)) 'Long
  loc_1BFB301:         var_F9C = CVar(CLng(&HD)) 'Long
  loc_1BFB32A:         var_FE4 = CVar(CLng(var_92)) 'Long
  loc_1BFB332:         var_1004 = CVar(CLng(&H20)) 'Long
  loc_1BFB354:         var_1480 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFB35B:         var_104C = CVar(CLng(var_92)) 'Long
  loc_1BFB385:         var_1488 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFB3B6:         var_1490 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFB3E7:         var_1498 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFB418:         var_149C = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_1498, CVar(CLng(5)), CVar(CLng(var_92)), var_1490, CVar(CLng(6)))
  loc_1BFB449:         var_14A0 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1488)
  loc_1BFB49F:         var_228 = "Insert Into Purch2(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,GodCode,RoomNo,PartyCode," & "Item,DiscApp,RoundOff,UNIT,"
  loc_1BFB4B4:         var_3E8 = var_228 & "QtyIss," & "Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total," & "U_Name,U_EntDt,U_AE,DepartCode,ContraDocId,ContraSno,"
  loc_1BFB4D0:         var_7C8 = var_3E8 & "DelFlag,PostVal,LandVal,ConvRatio,IssQty,IssueUnit,LogSite_Code,TaxStru,AcCode) Values (" & "'" & var_3F0 & "',"
  loc_1BFB51C:         var_C28 = var_7C8 & CStr(var_3D0) & ",'" & global_140 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_BF0)
  loc_1BFB563:         var_434 = CVar(var_C28 & ",") & var_1D4 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_370)) & "','" & IIf((var_C2C <> vbNullString), CVar(var_6D4), CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFB59E:         var_4F0 = var_434 & "','" & CVar(var_C30) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFB5DA:         var_650 = var_4F0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFB616:         var_770 = var_650 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFB652:         var_858 = var_770 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_1460) 
  loc_1BFB6AD:         var_A04 = var_858 & "," & CVar(var_1468) & "," & CVar(var_1470) & ",'" & CVar(MemVar_1F920C8) & "'," & var_954 & ",'" & IIf((CStr(var_9AC) = "Add"), "A", "E") 
  loc_1BFB6E9:         var_B50 = var_A04 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFB74C:         var_1268 = var_B50 & ",'N'," & CVar(var_1480) & "," & CVar(var_1488) & "," & CVar(var_1490) & "," & CVar(var_1498) & ",'" & CVar(var_149C) 
  loc_1BFB782:         var_13E0 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_92)), CVar(CLng(&H21)))) 'String
  loc_1BFB79C:         unk_59BA2D.Execute CStr(var_1268 & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_14A0) & "','" & var_13E0 & "')"), var_1434, -1
  loc_1BFB943:       Else
  loc_1BFB955:         Set var_1FC = Me.Txt
  loc_1BFB95B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, var_1438)
  loc_1BFB963:         var_104C = var_200.Text
  loc_1BFB96C:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFB996:         var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFB9A0:         Set var_208 = Me.LblVPrefix
  loc_1BFB9B9:         Set var_20C = Me.Txt
  loc_1BFB9BF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_C1C, var_3D0, CVar(CLng(0)))
  loc_1BFB9C7:         var_184 = var_210.Text
  loc_1BFB9D4:         var_BF0 = Val(var_C1C)
  loc_1BFB9E2:         Set var_218 = Me.Txt
  loc_1BFB9E8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C, var_BF0)
  loc_1BFB9F0:         var_1B4 = CVar(var_21C) 'Address
  loc_1BFB9F7:         Proc_6_7_F25D88(var_1D4, var_1B4, var_1480)
  loc_1BFBA08:         var_2A0 = CVar(CLng(&H17)) 'Long
  loc_1BFBA11:         Set var_220 = Me.FGrid
  loc_1BFBA17:         var_370 = var_220.TextMatrix)
  loc_1BFBA31:         Set var_224 = Me.Txt
  loc_1BFBA37:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_438, var_C2C, var_370)
  loc_1BFBA3F:         var_2A0 = var_438.Text
  loc_1BFBA4F:         Set var_43C = Me.Txt
  loc_1BFBA55:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_6D4, CVar(CLng(var_92)))
  loc_1BFBA5A:         var_2E0 = 1
  loc_1BFBA75:         var_3C0 = Me.FGrid.TextMatrix)
  loc_1BFBAAC:         Set var_6DC = Me.Txt
  loc_1BFBAB2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7B4, var_C30, CVar(CLng(&H18)))
  loc_1BFBABA:         var_2E0 = var_7B4.Tag
  loc_1BFBAC3:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1BFBACB:         var_520 = CVar(CLng(&HC)) 'Long
  loc_1BFBAEA:         var_580 = CVar(CLng(var_92)) 'Long
  loc_1BFBAF2:         var_5C0 = CVar(CLng(&H14)) 'Long
  loc_1BFBB11:         var_620 = CVar(CLng(var_92)) 'Long
  loc_1BFBB19:         var_660 = CVar(CLng(&H15)) 'Long
  loc_1BFBB38:         var_6C0 = CVar(CLng(var_92)) 'Long
  loc_1BFBB40:         var_710 = CVar(CLng(8)) 'Long
  loc_1BFBB5F:         var_7A0 = CVar(CLng(var_92)) 'Long
  loc_1BFBB67:         var_7E8 = CVar(CLng(7)) 'Long
  loc_1BFBB90:         var_8EC = CVar(CLng(var_92)) 'Long
  loc_1BFBB98:         var_964 = CVar(CLng(&HA)) 'Long
  loc_1BFBBC1:         var_A54 = CVar(CLng(var_92)) 'Long
  loc_1BFBBC9:         var_AAC = CVar(CLng(9)) 'Long
  loc_1BFBBF2:         var_B40 = CVar(CLng(var_92)) 'Long
  loc_1BFBBFA:         var_BB0 = CVar(CLng(&HB)) 'Long
  loc_1BFBC23:         var_C70 = CVar(CLng(var_92)) 'Long
  loc_1BFBC2B:         var_C90 = CVar(CLng(&H11)) 'Long
  loc_1BFBC54:         var_CD4 = CVar(CLng(var_92)) 'Long
  loc_1BFBC5C:         var_CF4 = CVar(CLng(&H12)) 'Long
  loc_1BFBC85:         var_D38 = CVar(CLng(var_92)) 'Long
  loc_1BFBC8D:         var_D58 = CVar(CLng(&HF)) 'Long
  loc_1BFBC96:         Set var_A98 = Me.FGrid
  loc_1BFBCAF:         var_1460 = Val(CStr(var_A98.TextMatrix)))
  loc_1BFBCE0:         var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFBD11:         var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFBD22:         Proc_6_7_F25D88(var_954, Date, var_1470, CVar(CLng(&H13)), CVar(CLng(var_92)), var_1468, CVar(CLng(&H10)), CVar(CLng(var_92)))
  loc_1BFBD2B:         Set var_B2C = Me.TopCtrl1
  loc_1BFBD31:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1460)
  loc_1BFBD4A:         var_9BC = "A"
  loc_1BFBD6C:         var_ED8 = CVar(CLng(var_92)) 'Long
  loc_1BFBD74:         var_EF8 = CVar(CLng(&H1E)) 'Long
  loc_1BFBD93:         var_F28 = CVar(CLng(var_92)) 'Long
  loc_1BFBD9B:         var_F48 = CVar(CLng(&HE)) 'Long
  loc_1BFBDBA:         var_F7C = CVar(CLng(var_92)) 'Long
  loc_1BFBDC2:         var_F9C = CVar(CLng(&HD)) 'Long
  loc_1BFBDD1:         var_B20 = Me.FGrid.TextMatrix)
  loc_1BFBDEB:         var_FE4 = CVar(CLng(var_92)) 'Long
  loc_1BFBDF3:         var_1004 = CVar(CLng(&H20)) 'Long
  loc_1BFBE1C:         var_104C = CVar(CLng(var_92)) 'Long
  loc_1BFBE46:         var_1488 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFBE77:         var_1490 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFBEA8:         var_1498 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFBED9:         var_149C = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_92)), var_1498, CVar(CLng(5)), CVar(CLng(var_92)), var_1490, CVar(CLng(6)))
  loc_1BFBF0A:         var_14A0 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_92)), CVar(CLng(var_92)), var_1488)
  loc_1BFBF60:         var_228 = "Insert Into Purch2(" & "DocId,SNo,VType,VPrefix,Site_Code," & "VNo,VDate,RestCode,GodCode,RoomNo,PartyCode," & "Item,DiscApp,RoundOff,UNIT,"
  loc_1BFBF75:         var_3E8 = var_228 & "QtyRec," & "Rate,ItemRate,Amount,TaxPer,TaxAmt,DiscPer,DiscAmt,Total," & "U_Name,U_EntDt,U_AE,DepartCode,ContraDocId,ContraSno,"
  loc_1BFBF91:         var_7C8 = var_3E8 & "DelFlag,PostVal,LandVal,ConvRatio,recdQty,RecdUnit,LogSite_Code,TaxStru,AcCode) Values (" & "'" & var_3F0 & "',"
  loc_1BFBFA4:         var_B30 = var_7C8 & CStr(var_3D0) & ",'"
  loc_1BFBFBC:         var_C10 = var_B30 & global_140 & "','" & var_208.Caption
  loc_1BFBFCA:         var_C18 = var_C10 & "','" & MemVar_1F92070
  loc_1BFC01D:         var_3B0 = CVar(var_C18 & "'," & CStr(var_BF0) & ",") & var_1D4 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_370)) & "','" 
  loc_1BFC04B:         var_4B0 = var_3B0 & IIf((var_C2C <> vbNullString), CVar(var_6D4), CVar(CStr(var_3C0))) & "','" & CVar(var_C30) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFC087:         var_5F0 = var_4B0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFC0C3:         var_720 = var_5F0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFC0FF:         var_818 = var_720 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFC15E:         var_974 = var_818 & "," & CVar(var_1460) & "," & CVar(var_1468) & "," & CVar(var_1470) & ",'" & CVar(MemVar_1F920C8) & "'," & var_954 
  loc_1BFC196:         var_ADC = var_974 & ",'" & IIf((CStr(var_9AC) = "Add"), var_9BC, "E") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFC1DB:         var_10B4 = var_ADC & "'," & CVar(Val(CStr(var_B20))) & ",'N'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_1488) & "," 
  loc_1BFC233:         var_134C = var_10B4 & CVar(var_1490) & "," & CVar(var_1498) & ",'" & CVar(var_149C) & "','" & CVar(MemVar_1F92078) & "','" & CVar(var_14A0) 
  loc_1BFC243:         var_13E0 = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1C)), CVar(CLng(var_92)), CVar(CLng(&H21)))) 'String
  loc_1BFC25D:         unk_59BA2D.Execute CStr(var_134C & "','" & var_13E0 & "')"), var_1434, -1
  loc_1BFC401:       End If
  loc_1BFC409:       var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFC444:       var_1F8 = "Select IsNull(LPurDate,'01/Jan/1900') From ItemMast Where Code='" & CStr(Me.FGrid.TextMatrix))
  loc_1BFC454:       unk_59BA2D.Execute var_1F8 & "' And ItemType='Store'", var_1B4, -1
  loc_1BFC45F:       Set var_88 = var_200
  loc_1BFC48F:       If (var_88.RecordCount > 0) Then
  loc_1BFC49A:         var_184 = 0
  loc_1BFC4AE:         var_200 = var_88.Fields.Item(var_184)
  loc_1BFC4C3:         var_1B4 = CVar(Proc_6_38_E68A98(var_200.Value, var_200, var_200.Value, CVar(CLng(&HC)), var_184)) 'String
  loc_1BFC4D6:         Set var_204 = Me.Txt
  loc_1BFC4DC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_208, IsDate(var_1B4), var_1438)
  loc_1BFC500:         If (var_104C And IsDate(CVar(var_208))) Then
  loc_1BFC513:           Set var_204 = Me.Txt
  loc_1BFC519:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_208, var_1F8)
  loc_1BFC521:           var_1480 = var_208.Text
  loc_1BFC540:           var_200 = var_88.Fields.Item(0)
  loc_1BFC575:           If (CDate(Proc_6_38_E68A98(var_200.Value, var_1004)) <= CDate(var_1F8)) Then
  loc_1BFC57E:             var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFC5B1:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1BFC5C1:               Set var_1FC = Me.Txt
  loc_1BFC5C7:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200, CVar(CLng(&HC)))
  loc_1BFC5D6:               Proc_6_7_F25D88(var_1B4, CVar(var_200))
  loc_1BFC5DF:               var_1C4 = CVar(CLng(var_92)) 'Long
  loc_1BFC5E7:               var_250 = CVar(CLng(&HB)) 'Long
  loc_1BFC610:               var_270 = CVar(CLng(var_92)) 'Long
  loc_1BFC618:               var_290 = CVar(CLng(5)) 'Long
  loc_1BFC641:               var_2E0 = CVar(CLng(var_92)) 'Long
  loc_1BFC649:               var_310 = CVar(CLng(&HC)) 'Long
  loc_1BFC652:               Set var_20C = Me.FGrid
  loc_1BFC658:               var_370 = var_20C.TextMatrix)
  loc_1BFC679:               var_1D4 = "Update ItemMast Set LPurDate=" & var_1B4 
  loc_1BFC69A:               var_320 = var_1D4 & ",LPurRate=" & CVar((Val(CStr(Me.FGrid.TextMatrix))) / Val(CStr(Me.FGrid.TextMatrix))))) & " Where COde='" 
  loc_1BFC6BC:               unk_59BA2D.Execute CStr(var_320 & CVar(CStr(var_370)) & "' And ItemType='Store'"), var_3C0, -1
  loc_1BFC6F4:             End If
  loc_1BFC6F4:           End If
  loc_1BFC6F6:         End If
  loc_1BFC6F8:       End If
  loc_1BFC733:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1BFC74F:         If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BFC762:           Set var_1FC = Me.Txt
  loc_1BFC768:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, CVar(CLng(&HE)), CVar(CLng(var_92)), var_210, var_370)
  loc_1BFC770:           var_310 = var_200.Text
  loc_1BFC7B4:           Set var_208 = Me.Txt
  loc_1BFC7BA:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C, var_B30, Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1BFC7C2:           var_2E0 = var_20C.Text
  loc_1BFC7CF:           var_BF0 = Val(var_B30)
  loc_1BFC7DD:           Set var_210 = Me.Txt
  loc_1BFC7E3:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_218, var_BF0, var_BF0)
  loc_1BFC7F2:           Proc_6_7_F25D88(var_1D4, CVar(var_218), var_290)
  loc_1BFC805:           Set var_21C = Me.Txt
  loc_1BFC80B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_220, var_C10)
  loc_1BFC813:           var_270 = var_220.Tag
  loc_1BFC838:           Set var_438 = Me.Txt
  loc_1BFC83E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_43C, var_C18)
  loc_1BFC84F:           var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1BFC857:           var_2F0 = CVar(CLng(&H17)) 'Long
  loc_1BFC876:           var_340 = CVar(CLng(var_92)) 'Long
  loc_1BFC87E:           var_360 = CVar(CLng(&HC)) 'Long
  loc_1BFC89D:           var_520 = CVar(CLng(var_92)) 'Long
  loc_1BFC8A5:           var_560 = CVar(CLng(5)) 'Long
  loc_1BFC8CE:           var_5E0 = CVar(CLng(var_92)) 'Long
  loc_1BFC8D6:           var_620 = CVar(CLng(5)) 'Long
  loc_1BFC8FF:           var_710 = CVar(CLng(var_92)) 'Long
  loc_1BFC907:           var_750 = CVar(CLng(7)) 'Long
  loc_1BFC930:           var_808 = CVar(CLng(var_92)) 'Long
  loc_1BFC938:           var_894 = CVar(CLng(5)) 'Long
  loc_1BFC961:           var_984 = CVar(CLng(var_92)) 'Long
  loc_1BFC969:           var_A34 = CVar(CLng(9)) 'Long
  loc_1BFC992:           var_ACC = CVar(CLng(var_92)) 'Long
  loc_1BFC99A:           var_B10 = CVar(CLng(&HA)) 'Long
  loc_1BFC9C3:           var_BD4 = CVar(CLng(var_92)) 'Long
  loc_1BFC9CB:           var_C60 = CVar(CLng(4)) 'Long
  loc_1BFC9EA:           var_C90 = CVar(CLng(var_92)) 'Long
  loc_1BFCA01:           var_7C4 = Me.FGrid.TextMatrix)
  loc_1BFCA3B:           var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFCA6C:           var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFCA72:           Proc_6_104_ED5D18(var_974, var_1468, CVar(CLng(6)), CVar(CLng(var_92)), var_1460, CVar(CLng(&HB)), CVar(CLng(var_92)), var_7C4)
  loc_1BFCA7B:           Set var_9F0 = Me.TopCtrl1
  loc_1BFCA81:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CVar(CLng(8)))
  loc_1BFCABC:           var_E98 = CVar(CLng(var_92)) 'Long
  loc_1BFCAC4:           var_EB8 = CVar(CLng(&H21)) 'Long
  loc_1BFCAE6:           var_1470 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFCB04:           var_1F8 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_1BFCB19:           var_3DC = var_1F8 & "QtyIss,IssQty,Rate,ItemRate,IssueUnit,Unit," & "Amount,Specification,ConvRatio," & "ContraDocid,ContraSNo, "
  loc_1BFCB48:           var_A9C = var_3DC & "U_Name,U_EntDt,U_AE,DepartCode,LandVal,LogSite_Code) " & "Values(" & "'" & var_3F0 & "'," & CStr(var_43C.Tag)
  loc_1BFCB97:           var_3B0 = CVar(var_A9C & "," & CStr(var_BF0) & ",") & var_1D4 & ",'" & CVar(var_C10) & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1BFCBE5:           var_4C0 = var_3B0 & CVar(MemVar_1F92070) & "'," & "'" & CVar(var_C18) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFCC28:           var_5B0 = var_4C0 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & 0 & "," 
  loc_1BFCC59:           var_690 = var_5B0 & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_1BFCC8C:           var_790 = var_690 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFCCE3:           var_8DC = var_790 & "','" & CVar(CStr(var_7C4)) & "'," & vbNullString & CVar(var_1460) & ",''," & CVar(var_1468) & "," & "''," 
  loc_1BFCD31:           var_A24 = var_8DC & 0 & "," & "'" & CVar(MemVar_1F920C8) & "'," & var_974 & ",'" & IIf((CStr(var_9BC) = "Add"), "A", "E") & "','" 
  loc_1BFCD79:           unk_59BA2D.Execute CStr(var_A24 & CVar(MemVar_1F92070) & "PURC'," & CVar(var_1470) & ",'" & CVar(MemVar_1F92078) & "')"), var_B20, -1
  loc_1BFCEA4:         Else
  loc_1BFCEB6:           Set var_1FC = Me.Txt
  loc_1BFCEBC:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3F0, var_A98, var_1470, var_EB8, var_E98)
  loc_1BFCEC4:           var_C90 = var_200.Text
  loc_1BFCEF7:           var_3D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFCF08:           Set var_208 = Me.Txt
  loc_1BFCF0E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C, var_B30, var_3D0, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1BFCF16:           var_770 = var_20C.Text
  loc_1BFCF23:           var_BF0 = Val(var_B30)
  loc_1BFCF31:           Set var_210 = Me.Txt
  loc_1BFCF37:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_218, var_BF0, var_C60)
  loc_1BFCF46:           Proc_6_7_F25D88(var_1D4, CVar(var_218), var_BD4)
  loc_1BFCF59:           Set var_21C = Me.Txt
  loc_1BFCF5F:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_220, var_C10)
  loc_1BFCF67:           var_1458 = var_220.Tag
  loc_1BFCF8C:           Set var_438 = Me.Txt
  loc_1BFCF92:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_43C, var_C18)
  loc_1BFCF9A:           var_B10 = var_43C.Tag
  loc_1BFCFA3:           var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1BFCFAB:           var_2F0 = CVar(CLng(&H17)) 'Long
  loc_1BFCFCA:           var_340 = CVar(CLng(var_92)) 'Long
  loc_1BFCFD2:           var_360 = CVar(CLng(&HC)) 'Long
  loc_1BFCFF1:           var_520 = CVar(CLng(var_92)) 'Long
  loc_1BFCFF9:           var_560 = CVar(CLng(5)) 'Long
  loc_1BFD022:           var_5E0 = CVar(CLng(var_92)) 'Long
  loc_1BFD02A:           var_620 = CVar(CLng(5)) 'Long
  loc_1BFD033:           Set var_7B4 = Me.FGrid
  loc_1BFD053:           var_710 = CVar(CLng(var_92)) 'Long
  loc_1BFD05B:           var_750 = CVar(CLng(7)) 'Long
  loc_1BFD084:           var_808 = CVar(CLng(var_92)) 'Long
  loc_1BFD08C:           var_894 = CVar(CLng(5)) 'Long
  loc_1BFD095:           Set var_860 = Me.FGrid
  loc_1BFD09B:           var_650 = var_860.TextMatrix)
  loc_1BFD0B5:           var_984 = CVar(CLng(var_92)) 'Long
  loc_1BFD0BD:           var_A34 = CVar(CLng(9)) 'Long
  loc_1BFD0E6:           var_ACC = CVar(CLng(var_92)) 'Long
  loc_1BFD0EE:           var_B10 = CVar(CLng(&HA)) 'Long
  loc_1BFD0F7:           Set var_8AC = Me.FGrid
  loc_1BFD117:           var_BD4 = CVar(CLng(var_92)) 'Long
  loc_1BFD11F:           var_C60 = CVar(CLng(4)) 'Long
  loc_1BFD13E:           var_C90 = CVar(CLng(var_92)) 'Long
  loc_1BFD14F:           Set var_904 = Me.FGrid
  loc_1BFD155:           var_7C4 = var_904.TextMatrix)
  loc_1BFD18F:           var_1460 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFD1C0:           var_1468 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1BFD1C6:           Proc_6_104_ED5D18(var_974, var_1468, CVar(CLng(6)), CVar(CLng(var_92)), var_1460, CVar(CLng(&HB)), CVar(CLng(var_92)), var_7C4)
  loc_1BFD1CF:           Set var_9F0 = Me.TopCtrl1
  loc_1BFD1D5:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CVar(CLng(8)))
  loc_1BFD210:           var_E98 = CVar(CLng(var_92)) 'Long
  loc_1BFD218:           var_EB8 = CVar(CLng(&H21)) 'Long
  loc_1BFD258:           var_1F8 = "Insert Into Stock(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code," & "PartyCode,GodownCode,Item,ChalQty,RecdQty,RejQty,"
  loc_1BFD26D:           var_3DC = var_1F8 & "QtyRec,AccQty,Rate,ItemRate,RecdUnit,Unit," & "Amount,Specification,ConvRatio," & "ContraDocid,ContraSNo, "
  loc_1BFD29C:           var_A9C = var_3DC & "U_Name,U_EntDt,U_AE,DepartCode,LandVal,LogSite_Code) " & "Values(" & "'" & var_3F0 & "'," & CStr(var_3D0)
  loc_1BFD2B6:           var_1F4 = CVar(var_A9C & "," & CStr(var_BF0) & ",") 'String
  loc_1BFD2FE:           var_400 = var_1F4 & var_1D4 & ",'" & CVar(var_C10) & "','" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) & "'," 
  loc_1BFD339:           var_4C0 = var_400 & "'" & CVar(var_C18) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1BFD342:           var_4D0 = var_4C0 & "'," 
  loc_1BFD356:           var_510 = var_4D0 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_1BFD390:           var_610 = var_510 & CVar(Val(CStr(var_7B4.TextMatrix)))) & "," & 0 & "," & vbNullString & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_1BFD3CC:           var_740 = var_610 & "," & CVar(Val(CStr(var_650))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(var_8AC.TextMatrix)))) 
  loc_1BFD3E9:           var_7B0 = var_740 & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_1BFD449:           var_914 = var_7B0 & CVar(CStr(var_7C4)) & "'," & vbNullString & CVar(var_1460) & ",''," & CVar(var_1468) & "," & "''," & 0 & "," 
  loc_1BFD48F:           var_A44 = var_914 & "'" & CVar(MemVar_1F920C8) & "'," & var_974 & ",'" & IIf((CStr(var_9BC) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92070) 
  loc_1BFD4CD:           unk_59BA2D.Execute CStr(var_A44 & "PURC'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(MemVar_1F92078) & "')"), var_B20, -1
  loc_1BFD5F5:         End If
  loc_1BFD5FA:       Else
  loc_1BFD602:         var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFD60A:         var_1C4 = CVar(CLng(&H21)) 'Long
  loc_1BFD62F:         var_250 = 1
  loc_1BFD63B:         var_270 = CVar(CLng(&HE)) 'Long
  loc_1BFD656:         var_290 = 1
  loc_1BFD662:         var_2C0 = CVar(CLng(&HD)) 'Long
  loc_1BFD6AF:         var_3EC = "Update Stock Set LandVal=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & " Where DocId='" & CStr(Me.FGrid.TextMatrix)) & "' And SNo="
  loc_1BFD6C3:         unk_59BA2D.Execute var_3EC & CStr(Me.FGrid.TextMatrix)), var_1F4, -1
  loc_1BFD6F3:       End If
  loc_1BFD6F5:     End If
  loc_1BFD6FC:   Next var_C04 'Integer
  loc_1BFD728:   For var_14A8 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)):   var_92 = var_14A8 'Integer
  loc_1BFD734:     var_184 = CVar(CLng(var_92)) 'Long
  loc_1BFD73C:     var_1C4 = CVar(CLng(2)) 'Long
  loc_1BFD783:     Set var_200 = Me.FGCat
  loc_1BFD794:     var_170 = CStr(var_200.TextMatrix))
  loc_1BFD7C2:     If CBool(CVar(CLng(6)) And (CDbl(Val(var_170)) <> CDbl(0))) Then
  loc_1BFD7D5:       Set var_1FC = Me.Txt
  loc_1BFD7DB:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, CVar(CLng(var_92)))
  loc_1BFD7E3:       (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_200.Text
  loc_1BFD816:       var_3D0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1BFD82E:       Set var_208 = Me.FGCat
  loc_1BFD834:       var_1B4 = var_208.TextMatrix)
  loc_1BFD847:       var_BF0 = Val(CStr(var_1B4))
  loc_1BFD857:       var_A9C = Me.LblVPrefix.Caption
  loc_1BFD86A:       Set var_210 = Me.Txt
  loc_1BFD870:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_218, var_C10, var_BF0, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1BFD885:       var_BF8 = Val(var_C10)
  loc_1BFD893:       Set var_21C = Me.Txt
  loc_1BFD899:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_220, var_BF8, CVar(CLng(1)))
  loc_1BFD8A8:       Proc_6_7_F25D88(var_1F4, CVar(var_220), CVar(CLng(var_92)))
  loc_1BFD8B1:       var_2D0 = CVar(CLng(var_92)) 'Long
  loc_1BFD8B9:       var_2F0 = CVar(CLng(2)) 'Long
  loc_1BFD8C2:       Set var_224 = Me.FGCat
  loc_1BFD8D8:       var_340 = CVar(CLng(var_92)) 'Long
  loc_1BFD8E0:       var_360 = CVar(CLng(4)) 'Long
  loc_1BFD902:       var_C00 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1BFD91A:       Set var_43C = Me.FGCat
  loc_1BFD933:       var_1440 = Val(CStr(var_43C.TextMatrix)))
  loc_1BFD964:       var_1448 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1BFD975:       Proc_6_7_F25D88(var_4D0, Date, var_1448, CVar(CLng(6)), CVar(CLng(var_92)), var_1440, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_1BFD97E:       Set var_6D8 = Me.TopCtrl1
  loc_1BFD984:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_C00)
  loc_1BFD9B6:       var_570 = IIf((CStr(var_510) = "Add"), "A", "E")
  loc_1BFD9CF:       var_1F8 = "Insert Into Sale2(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LogSite_Code) Values (" & "'"
  loc_1BFDA22:       var_C08 = var_1F8 & var_170 & "'," & CStr(var_218.Text) & "," & CStr(var_BF0) & ",'" & global_140 & "','" & var_A9C & "','"
  loc_1BFDA29:       var_C0C = var_C08 & MemVar_1F92070
  loc_1BFDA73:       var_3B0 = CVar(var_C0C & "'," & CStr(var_BF8) & ",") & var_1F4 & ",'" & CVar(global_60) & "','" & CVar(CStr(var_224.TextMatrix))) 
  loc_1BFDAD2:       var_4E0 = var_3B0 & "'," & CVar(var_C00) & "," & CVar(var_1440) & "," & CVar(var_1448) & ",'" & CVar(MemVar_1F920C8) & "'," & var_4D0 
  loc_1BFDB0C:       unk_59BA2D.Execute CStr(var_4E0 & ",'" & var_570 & "','N','" & CVar(MemVar_1F92078) & "')"), var_610, -1
  loc_1BFDBB8:     End If
  loc_1BFDBBF:   Next var_14A8 'Integer
  loc_1BFDBD2:   Set var_1FC = Me.TxtGt
  loc_1BFDBD8:   Call 0.Method_TopCtrl1_UnknownEvent_168 (var_172, var_92)
  loc_1BFDBE3:   For var_14AC =  To var_172:   1 = var_14AC 'Integer
  loc_1BFDBF8:     Set var_1FC = Me.TxtGt
  loc_1BFDBFE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_200)
  loc_1BFDC18:     If (var_200.Visible = &HFF) Then
  loc_1BFDC2B:       Set var_1FC = Me.Txt
  loc_1BFDC31:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BFDC4C:       Set var_204 = Me.Txt
  loc_1BFDC52:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_208)
  loc_1BFDC75:       Set var_20C = Me.Txt
  loc_1BFDC7B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210)
  loc_1BFDC8A:       Proc_6_7_F25D88(var_1B4, CVar(var_210))
  loc_1BFDC9C:       Set var_218 = Me.LblCap
  loc_1BFDCA2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_21C)
  loc_1BFDCBC:       Set var_220 = Me.TxtPer
  loc_1BFDCC2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_224)
  loc_1BFDCD7:       var_BF0 = Val(var_224.Tag)
  loc_1BFDCE7:       Set var_438 = Me.LblCap
  loc_1BFDCED:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_43C, var_A9C)
  loc_1BFDD07:       Set var_6D4 = Me.LblAt
  loc_1BFDD0D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_6D8)
  loc_1BFDD27:       Set var_6DC = Me.TxtGt
  loc_1BFDD2D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7B4)
  loc_1BFDD47:       Set var_85C = Me.TxtPer
  loc_1BFDD4D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_860)
  loc_1BFDD62:       var_BF8 = Val(var_860.Text)
  loc_1BFDD72:       Set var_8A8 = Me.TxtGt
  loc_1BFDD78:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_8AC, var_C0C)
  loc_1BFDD8D:       var_C00 = Val(var_C0C)
  loc_1BFDD9D:       Set var_900 = Me.LblDummy
  loc_1BFDDA3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_904, var_C10)
  loc_1BFDDB8:       var_1440 = Val(var_C10)
  loc_1BFDDC9:       Proc_6_7_F25D88(var_510, Date)
  loc_1BFDDD2:       Set var_998 = Me.TopCtrl1
  loc_1BFDDD8:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1440)
  loc_1BFDE1A:       Set var_99C = Me.Txt
  loc_1BFDE20:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_9F0)
  loc_1BFDE2F:       Proc_6_7_F25D88(var_650, CVar(var_9F0))
  loc_1BFDE41:       Set var_9F4 = Me.LblDummy
  loc_1BFDE47:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_A98)
  loc_1BFDE68:       var_1F8 = "Insert Into SunTran (DocId,Sno,Vtype,VNo,Vdate,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LogSite_Code) Values ('" & var_200.Text
  loc_1BFDE82:       var_3E8 = var_1F8 & "'," & CStr(var_92) & ",'"
  loc_1BFDEC8:       var_320 = CVar(var_3E8 & global_140 & "'," & CStr(Val(var_208.Text)) & ",") & var_1B4 & ",'" & CVar(var_21C.Tag) & "'," 
  loc_1BFDF20:       var_470 = var_320 & CVar(var_43C.Caption) & ",'" & CVar(var_A9C) & "','" & CVar(var_6D8.Tag) & "','" & CVar(var_7B4.Tag) & "'," & CVar(var_8AC.Text) 
  loc_1BFDF7B:       var_5F0 = var_470 & "," & CVar(var_904.Caption) & "," & CVar(var_1440) & ",'" & CVar(MemVar_1F920C8) & "'," & var_510 & ",'" & IIf((CStr(var_570) = "Add"), "A", "E") 
  loc_1BFDFC4:       var_760 = var_5F0 & "'," & var_650 & ",'" & CVar(var_A98.Tag) & "','" & CVar(MemVar_1F92070) & "PURC','N','" & CVar(MemVar_1F92070) 
  loc_1BFDFEE:       unk_59BA2D.Execute CStr(var_760 & "','" & CVar(MemVar_1F92078) & "')"), var_7B0, -1
  loc_1BFE0BA:     End If
  loc_1BFE0C1:   Next var_14AC 'Integer
  loc_1BFE0CC:   Set var_1FC = Me.TopCtrl1
  loc_1BFE0D2:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1BFE0EB:   If (CStr() = "Add") Then
  loc_1BFE104:     var_170 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1BFE12A:     var_1D4 = CVar(var_170 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_140 & "' And VP.Date_From<=") 'String
  loc_1BFE13B:     Set var_1FC = Me.Txt
  loc_1BFE141:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_200, var_3E8, var_1D4)
  loc_1BFE149:     var_2B0 = var_200.Text
  loc_1BFE157:     Proc_6_7_F25D88(var_1B4, CVar(var_3E8))
  loc_1BFE15F:     var_1F4 = -1 & var_1B4 
  loc_1BFE176:     unk_59BA2D.Execute CStr(CVar(var_3E8 & global_140 & "'," & CStr(Val(var_208.Text)) & ",") & var_1B4 & " Order By VP.Date_From DESC"), var_204, 
  loc_1BFE181:     Set var_88 = var_204
  loc_1BFE1B3:     var_3C4 = var_88.RecordCount
  loc_1BFE1C1:     If (var_3C4 > 0) Then
  loc_1BFE1D4:       Set var_1FC = Me.Txt
  loc_1BFE1DA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_200)
  loc_1BFE1EF:       var_3D0 = Val(var_200.Text)
  loc_1BFE204:       var_204 = var_88.Fields
  loc_1BFE214:       var_194 = var_204.Item("V_Type").Value
  loc_1BFE23F:       Proc_6_7_F25D88(var_2B0, CVar(var_88.Fields.Item("Date_From")))
  loc_1BFE264:       var_3D8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_3D0) & " Where (SITE_CODE='"
  loc_1BFE28F:       var_1F4 = CVar(var_3D8 & MemVar_1F92070 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_194 & "' and Date_From=" 
  loc_1BFE2A4:       unk_59BA2D.Execute CStr(var_1F4 & var_2B0), var_320, -1
  loc_1BFE2DE:     End If
  loc_1BFE2E0:   End If
  loc_1BFE2E8:   Set var_1FC = Me.TopCtrl1
  loc_1BFE2EE:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_218)
  loc_1BFE307:   If (CStr(var_3D0) = "Add") Then
  loc_1BFE32F:     var_170 = "SELECT COUNT(*) FROM LASTVOU WHERE LogSite_Code='" & MemVar_1F92078
  loc_1BFE34D:     Call 0.Method_arg_50 (var_3D8, var_170 & "' and UNAME='" & MemVar_1F920C8 & "' AND ENAME='", var_194, -1, var_1FC)
  loc_1BFE35D:     var_3EC = var_200 & var_3D8 & "' "
  loc_1BFE366:     unk_59BA2D.Execute var_3EC, 0, var_204
  loc_1BFE36E:     var_1B4 = var_1FC.Fields
  loc_1BFE376:      = var_200.Item()
  loc_1BFE37E:      = var_204.Value
  loc_1BFE3AF:     If (var_1B4 > 0) Then
  loc_1BFE3D2:       Set var_1FC = Me.Txt
  loc_1BFE3D8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_170, "UPDATE LASTVOU  SET DOCID='")
  loc_1BFE3E0:       var_194 = var_200.Text
  loc_1BFE3E9:       var_1F8 = -1 & var_170
  loc_1BFE3FE:       var_3DC = var_170 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "' and UNAME='"
  loc_1BFE415:       Call 0.Method_arg_50 (var_3EC, var_3DC & MemVar_1F920C8 & "' AND ENAME='")
  loc_1BFE42E:       unk_59BA2D.Execute var_204 & var_3EC & "'  ", , 
  loc_1BFE459:     Else
  loc_1BFE481:       Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "','", var_320)
  loc_1BFE48A:       var_3D8 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='"
  loc_1BFE491:       var_3E8 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES ('" & MemVar_1F920C8 & "' and UNAME='" & "' WHERE LogSite_Code='" & MemVar_1F92078 & "','"
  loc_1BFE4A2:       Set var_1FC = Me.Txt
  loc_1BFE4A8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200, var_3DC)
  loc_1BFE4B0:       var_3E8 = var_200.Text
  loc_1BFE4DF:       Proc_6_7_F25D88(var_1B4, Date)
  loc_1BFE4EB:       var_184 = ",'A','"
  loc_1BFE511:       unk_59BA2D.Execute CStr(CVar(var_204 & var_3DC & "','" & MemVar_1F92070 & "',") & var_1B4 & var_184 & CVar(MemVar_1F92078) & "')"), , 
  loc_1BFE549:     End If
  loc_1BFE54B:   End If
  loc_1BFE555:   unk_59BA2D.CommitTrans
  loc_1BFE565:   unk_59BA2D.BeginTrans var_3C4
  loc_1BFE56C:   Call Proc_32_112_1BDC888()
  loc_1BFE579:   unk_59BA2D.CommitTrans
  loc_1BFE584:   Set var_1FC = Me.TopCtrl1
  loc_1BFE58A:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1BFE5A3:   If (CStr() = "Add") Then
  loc_1BFE5B1:     unk_59BA2D.BeginTrans var_3C4
  loc_1BFE5B8:     Call Proc_32_112_1BDC888()
  loc_1BFE5C5:     unk_59BA2D.CommitTrans
  loc_1BFE5CA:   End If
  loc_1BFE5D0:   var_8A = 0
  loc_1BFE5E3:   Set var_1FC = Me.Txt
  loc_1BFE5E9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_200)
  loc_1BFE607:   var_8A = 0
  loc_1BFE617:   Me.Requery -1
  loc_1BFE643:   Me.Find "SearchCode ='" & var_200.Text & "'", 0, 1
  loc_1BFE655:   Set var_1FC = Me.TopCtrl1
  loc_1BFE65B:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_184)
  loc_1BFE674:   If (CStr(var_8A) = "Add") Then
  loc_1BFE682:     var_3C4 = Me.State
  loc_1BFE690:     If (var_3C4 <> 0) Then
  loc_1BFE6A0:       Me.Requery -1
  loc_1BFE6A5:     End If
  loc_1BFE6A5:   End If
  loc_1BFE6CA:   Call Proc_32_95_100EC78(Proc_5_1_100CB50("INI", Me), global_76)
  loc_1BFE6D7:   Call Proc_32_92_1A04FC4(var_8A)
  loc_1BFE6E1:   Call 0.Method_arg_2A0 ()
  loc_1BFE703:   If (Me.FrTrans.Visible = &HFF) Then
  loc_1BFE714:     Me.FrTrans.Visible = False
  loc_1BFE71C:   End If
  loc_1BFE71C: End If
  loc_1BFE723: Set var_88 = Nothing
  loc_1BFE72D: Set var_14C = Nothing
  loc_1BFE732: Exit Sub
  loc_1BFE733: ' Referenced from: 1BF8E40
  loc_1BFE73D: Set var_1FC = Err()
  loc_1BFE743: Call 0.Method_arg_1C (var_3C4)
  loc_1BFE754: If (var_3C4 = &H5B) Then
  loc_1BFE759:   Resume Next
  loc_1BFE75D: End If
  loc_1BFE765: If (var_8A = &HFF) Then
  loc_1BFE770:   unk_59BA2D.RollbackTrans
  loc_1BFE775: End If
  loc_1BFE777: Proc_6_60_E62BC4()
  loc_1BFE77E: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '133C2B8
  'Data Table: 59BA10
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_133BAEA: Set var_88 = Me.Txt
  loc_133BAF0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_133BAFE: Proc_6_74_E226B0(var_8C)
  loc_133BB0A: Call Proc_32_96_FE1284(var_8C)
  loc_133BB12: var_92 = Index
  loc_133BB1D: If (var_92 = CInt(1)) Then
  loc_133BB33:   Me.DGVType.Tag = CVar(CStr(Index))
  loc_133BB55:   If (Me.RecordCount > 0) Then
  loc_133BB63:     Set var_8C = Me.FGPoint
  loc_133BB7B:     Proc_6_137_1193554(Me.DGVType, global_84, Index)
  loc_133BB89:   End If
  loc_133BBD7:   Set var_88 = Me.Txt
  loc_133BBDD:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133BBE5:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133BBFD:   If (var_8C Or (var_C0 = vbNullString)) Then
  loc_133BC00:     Exit Sub
  loc_133BC01:   End If
  loc_133BC0E:   Set var_88 = Me.Txt
  loc_133BC14:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133BC1C:   var_C0 = var_8C.Text
  loc_133BC24:   var_D4 = CVar(var_C0) 'String
  loc_133BC69:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133BC72:     Me.MoveFirst
  loc_133BC97:     Set var_88 = Me.Txt
  loc_133BC9D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133BCA5:     0 = var_8C.Text
  loc_133BCB3:     Proc_6_17_EAA2B0(var_D4, CVar(var_C0), 1)
  loc_133BCC9:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_133BCE1:   End If
  loc_133BCE4: Else
  loc_133BCEC:   If (var_92 = CInt(7)) Then
  loc_133BD06:     If (Me.State <> 0) Then
  loc_133BD20:       If (Me.RecordCount > 0) Then
  loc_133BD2E:         Set var_8C = Me.FGPoint
  loc_133BD46:         Proc_6_137_1193554(Me.DgMR, global_80)
  loc_133BD54:       End If
  loc_133BDA2:       Set var_88 = Me.Txt
  loc_133BDA8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133BDB0:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133BDC8:       If (Index Or (var_C0 = vbNullString)) Then
  loc_133BDCB:         Exit Sub
  loc_133BDCC:       End If
  loc_133BDD9:       Set var_88 = Me.Txt
  loc_133BDDF:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133BDE7:       var_C0 = var_8C.Text
  loc_133BDEF:       var_D4 = CVar(var_C0) 'String
  loc_133BE34:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133BE3D:         Me.MoveFirst
  loc_133BE62:         Set var_88 = Me.Txt
  loc_133BE68:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133BE70:         0 = var_8C.Text
  loc_133BE7E:         Proc_6_17_EAA2B0(var_D4, CVar(var_C0), 1)
  loc_133BE94:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133BEAC:       End If
  loc_133BEAC:     End If
  loc_133BEAF:   Else
  loc_133BEB7:     If (var_92 = CInt(4)) Then
  loc_133BED1:       If (Me.RecordCount > 0) Then
  loc_133BEDF:         Set var_8C = Me.FGPoint
  loc_133BEF7:         Proc_6_137_1193554(Me.DGParty, global_68)
  loc_133BF05:       End If
  loc_133BF53:       Set var_88 = Me.Txt
  loc_133BF59:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133BF61:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133BF79:       If (Index Or (var_C0 = vbNullString)) Then
  loc_133BF7C:         Exit Sub
  loc_133BF7D:       End If
  loc_133BF8A:       Set var_88 = Me.Txt
  loc_133BF90:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133BF98:       var_C0 = var_8C.Text
  loc_133BFA0:       var_D4 = CVar(var_C0) 'String
  loc_133BFE5:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_133BFEE:         Me.MoveFirst
  loc_133C013:         Set var_88 = Me.Txt
  loc_133C019:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "Name =")
  loc_133C021:         0 = var_8C.Text
  loc_133C02F:         Proc_6_17_EAA2B0(var_D4, CVar(var_C0), 1)
  loc_133C045:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133C05D:       End If
  loc_133C060:     Else
  loc_133C068:       If (var_92 = CInt(5)) Then
  loc_133C079:         Set var_88 = Me.Txt
  loc_133C07F:         Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_133C09E:         If (var_8C.Text Like "*Return*") Then
  loc_133C0B0:           Me.Filter = 0
  loc_133C0C6:           Set var_88 = Me.Txt
  loc_133C0CC:           Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_133C0D4:           var_C0 = var_8C.Tag
  loc_133C0EE:           Me.Filter = CVar("Party='" & var_C0 & "'")
  loc_133C10F:           Me.Requery -1
  loc_133C12B:           If (Me.RecordCount > 0) Then
  loc_133C139:             Set var_8C = Me.FGPoint
  loc_133C151:             Proc_6_137_1193554(Me.DGPartyBillNo, global_72)
  loc_133C15F:           End If
  loc_133C1AD:           Set var_88 = Me.Txt
  loc_133C1B3:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0)
  loc_133C1BB:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_133C1D3:           If (Index Or (var_C0 = vbNullString)) Then
  loc_133C1D6:             Exit Sub
  loc_133C1D7:           End If
  loc_133C1E4:           Set var_88 = Me.Txt
  loc_133C1EA:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_133C1F2:           var_C0 = var_8C.Text
  loc_133C1FA:           var_D4 = CVar(var_C0) 'String
  loc_133C23F:           If CBool(var_D4 <> Me.Fields.Item("PartyBillNoNm").Value) Then
  loc_133C248:             Me.MoveFirst
  loc_133C26D:             Set var_88 = Me.Txt
  loc_133C273:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_C0, "PartyBillNoNm =")
  loc_133C27B:             0 = var_8C.Text
  loc_133C289:             Proc_6_17_EAA2B0(var_D4, CVar(var_C0), 1)
  loc_133C29F:             Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_133C2B7:           End If
  loc_133C2B7:         End If
  loc_133C2B7:       End If
  loc_133C2B7:     End If
  loc_133C2B7:   End If
  loc_133C2B7: End If
  loc_133C2B7: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '129DB50
  'Data Table: 59BA10
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_E8 As String
  Dim var_90 As Variant
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_129D557: var_86 = Shift
  loc_129D564: If (CLng(Shift) = &H1B) Then
  loc_129D567:   Call Proc_32_96_FE1284(var_86)
  loc_129D56C:   Exit Sub
  loc_129D56D: End If
  loc_129D570: var_88 = KeyCode
  loc_129D57B: If (var_88 = CInt(1)) Then
  loc_129D5D8:   Proc_6_69_134A198(Me.DGVType, Me.Txt, CInt(1), global_84, Shift, &HFF)
  loc_129D605:   If (Me.RecordCount > 0) Then
  loc_129D63A:     var_E8 = CStr(Trim(CVar(Me.Fields.Item("NCat"))))
  loc_129D640:     global_132 = var_E8
  loc_129D651:     Call Proc_32_110_112EE94(1, Nothing, Me.FGPoint)
  loc_129D656:   End If
  loc_129D6AF:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129D6BD:     Set var_90 = Me.FGPoint
  loc_129D6D5:     Proc_6_138_106D6F8(Me.DGVType, global_84, KeyCode)
  loc_129D6E3:   End If
  loc_129D6E6: Else
  loc_129D6EE:   If (var_88 = CInt(7)) Then
  loc_129D708:     If (Me.State <> 0) Then
  loc_129D728:       Set var_A0 = Me.FGPoint
  loc_129D733:       Set var_9C = Nothing
  loc_129D765:       Proc_6_69_134A198(Me.DgMR, Me.Txt, CInt(7), global_80, Shift, 0, 1)
  loc_129D7D4:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129D7DB:         Set var_9C = Me.DgMR
  loc_129D7FA:         Proc_6_138_106D6F8(var_9C, global_80, KeyCode, Me.FGPoint, var_9C)
  loc_129D808:       End If
  loc_129D808:     End If
  loc_129D80B:   Else
  loc_129D813:     If (var_88 = CInt(4)) Then
  loc_129D833:       Set var_A0 = Me.FGPoint
  loc_129D870:       Proc_6_69_134A198(Me.DGParty, Me.Txt, CInt(4), global_68, Shift, &HFF, 1, Nothing)
  loc_129D8DF:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129D8ED:         Set var_90 = Me.FGPoint
  loc_129D905:         Proc_6_138_106D6F8(Me.DGParty, global_68, KeyCode, var_90, var_A0, 0)
  loc_129D913:       End If
  loc_129D916:     Else
  loc_129D91E:       If (var_88 = CInt(5)) Then
  loc_129D92F:         Set var_8C = Me.Txt
  loc_129D935:         Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_E8, var_A0)
  loc_129D93D:         0 = var_90.Text
  loc_129D954:         If (var_E8 Like "*Return*") Then
  loc_129D974:           Set var_A0 = Me.FGPoint
  loc_129D97F:           Set var_9C = Nothing
  loc_129D9B1:           Proc_6_69_134A198(Me.DGPartyBillNo, Me.Txt, CInt(5), global_72, Shift, &HFF, 1)
  loc_129DA20:           If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_129DA27:             Set var_9C = Me.DGPartyBillNo
  loc_129DA46:             Proc_6_138_106D6F8(var_9C, global_72, KeyCode, Me.FGPoint, var_9C)
  loc_129DA54:           End If
  loc_129DA54:         End If
  loc_129DA54:       End If
  loc_129DA54:     End If
  loc_129DA54:   End If
  loc_129DA54: End If
  loc_129DA6E: Set var_90 = Me.DGItem
  loc_129DA9C: Set var_A0 = Me.DGPartyBillNo
  loc_129DAFB: If ((((((CBool(Me.DGVType.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(Me.DGParty.Visible) = 0)) And (CBool(var_A0.Visible) = 0)) And (CBool(Me.DgMR.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_129DB13:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_129DB1C:     Proc_6_75_E527CC(Shift, arg_14, var_A0, 0)
  loc_129DB21:   End If
  loc_129DB29:   If (KeyCode <> CInt(7)) Then
  loc_129DB41:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_129DB4A:       Proc_6_76_E52838(Shift, arg_14, var_90)
  loc_129DB4F:     End If
  loc_129DB4F:   End If
  loc_129DB4F: End If
  loc_129DB4F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10D39C8
  'Data Table: 59BA10
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_B8 As TextBox
  loc_10D36BC: On Error Goto loc_10D39C0
  loc_10D36C2: Proc_6_58_E054C0(arg_10)
  loc_10D36CA: var_86 = KeyAscii
  loc_10D36D5: If (var_86 = CInt(1)) Then
  loc_10D36F4:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_10D370A:     Me.DGVType.Tag = CVar(CStr(KeyAscii))
  loc_10D3724:     var_B0 = "Name"
  loc_10D373F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_84, arg_10)
  loc_10D3759:     Set var_B8 = Me.FGPoint
  loc_10D3771:     Proc_6_138_106D6F8(Me.DGVType, global_84, KeyAscii, var_B8)
  loc_10D377F:   End If
  loc_10D3782: Else
  loc_10D378A:   If (var_86 = CInt(2)) Then
  loc_10D3797:     Set var_8C = Me.Txt
  loc_10D379D:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B8, var_B0)
  loc_10D37B8:     Proc_6_42_129A86C(var_B8, arg_10, 8)
  loc_10D37C7:   Else
  loc_10D37CF:     If (var_86 = CInt(7)) Then
  loc_10D37EE:       If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_10D381B:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_10D384D:         Proc_6_138_106D6F8(Me.DgMR, global_80, KeyAscii, Me.FGPoint)
  loc_10D385B:       End If
  loc_10D385E:     Else
  loc_10D3866:       If (var_86 = CInt(4)) Then
  loc_10D3885:         If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_10D3897:           var_B0 = "Name"
  loc_10D38B2:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, var_B0)
  loc_10D38CC:           Set var_B8 = Me.FGPoint
  loc_10D38E4:           Proc_6_138_106D6F8(Me.DGParty, global_68, KeyAscii, var_B8, 0)
  loc_10D38F2:         End If
  loc_10D38F5:       Else
  loc_10D38FD:         If (var_86 = CInt(5)) Then
  loc_10D390E:           Set var_8C = Me.Txt
  loc_10D3914:           Call 0.Method_Txt_KeyPress0 (CInt(1), var_B8, var_B0, 0)
  loc_10D391C:           0 = var_B8.Text
  loc_10D3933:           If (var_B0 Like "*Return*") Then
  loc_10D3952:             If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_10D3964:               var_B0 = "PartyBillNoNm"
  loc_10D397F:               Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_72, arg_10)
  loc_10D39B1:               Proc_6_138_106D6F8(Me.DGPartyBillNo, global_72, KeyAscii, Me.FGPoint)
  loc_10D39BF:             End If
  loc_10D39BF:           End If
  loc_10D39BF:         End If
  loc_10D39BF:       End If
  loc_10D39BF:     End If
  loc_10D39BF:   End If
  loc_10D39BF: End If
  loc_10D39BF: Exit Sub
  loc_10D39C0: ' Referenced from: 10D36BC
  loc_10D39C0: Proc_6_60_E62BC4(var_B0, 0)
  loc_10D39C5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E7D7EC
  'Data Table: 59BA10
  Dim var_8C As TextBox
  loc_E7D796: Set var_88 = Me.Txt
  loc_E7D79C: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E7D7AA: Proc_6_73_E22704(var_8C)
  loc_E7D7BE: If (Index = CInt(1)) Then
  loc_E7D7CE:   Set var_88 = Me.Txt
  loc_E7D7D4:   Call 0.Method_Txt_LostFocus0 (CInt(1), var_8C)
  loc_E7D7DC:   var_8C.Enabled = False
  loc_E7D7E8: End If
  loc_E7D7E8: Exit Sub
  loc_E7D7E9: Result var_8C End Sub 'Currency
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1818EAC
  'Data Table: 59BA10
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
  Dim unk_59BA2D As Connection15
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
  loc_1816B24: On Error Goto loc_1818EA5
  loc_1816B2A: var_A0 = Cancel
  loc_1816B35: If (var_A0 = CInt(1)) Then
  loc_1816B43:   Set var_A4 = Me.Txt
  loc_1816B49:   Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1816B51:   var_B0 = "Voucher Type"
  loc_1816B72:   If (Proc_6_27_EA565C(var_A8, var_B0) = 0) Then
  loc_1816B80:     Set var_A4 = Me.Txt
  loc_1816B86:     Call 0.Method_Txt_Validate0 (CInt(1), var_A8)
  loc_1816B8E:     var_A8.SetFocus
  loc_1816B9C:     arg_10 = &HFF
  loc_1816B9F:     Exit Sub
  loc_1816BA0:   End If
  loc_1816BEE:   Set var_A4 = Me.Txt
  loc_1816BF4:   Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_B0)
  loc_1816BFC:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A8.Text
  loc_1816C14:   If (arg_10 Or (var_B0 = vbNullString)) Then
  loc_1816C24:     Set var_A4 = Me.Txt
  loc_1816C2A:     Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1816C32:     var_A8.Text = vbNullString
  loc_1816C4B:     Set var_A4 = Me.Txt
  loc_1816C51:     Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1816C59:     var_A8.Tag = vbNullString
  loc_1816C6B:     global_132 = vbNullString
  loc_1816C75:     global_196 = vbNullString
  loc_1816C7C:   Else
  loc_1816CB7:     Set var_AC = Me.Txt
  loc_1816CBD:     Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1816CC5:     var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1816D16:     Set var_AC = Me.Txt
  loc_1816D1C:     Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1816D24:     var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1816D63:     var_EC = Trim(CVar(Me.Fields.Item("NCat")))
  loc_1816D72:     global_132 = CStr(var_EC)
  loc_1816DA5:     var_DC = CVar(Me.Fields.Item("ContraType")) 'Address
  loc_1816DB4:     global_196 = Proc_6_38_E68A98(var_DC)
  loc_1816DE4:     If (((global_132 = "PRC") Or (global_132 = "PBC")) Or (global_132 = "EXC")) Then
  loc_1816DE7:     End If
  loc_1816DF1:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_A0)
  loc_1816E0A:     If (CStr() = "Add") Then
  loc_1816E28:       var_F0 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE logSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_1816E2F:       var_F4 = var_F0 & MemVar_1F92070
  loc_1816E50:       unk_59BA2D.Execute var_F4 & "' and NCAT='" & global_132 & "' Order by Description", var_DC, -1
  loc_1816E5B:       Set var_88 = Me.TopCtrl1
  loc_1816E87:       If (var_88.RecordCount > 0) Then
  loc_1816EA4:         var_A8 = var_88.Fields.Item(0)
  loc_1816EB5:         var_B0 = CStr(var_A8.Value)
  loc_1816EBB:         global_140 = var_B0
  loc_1816ECF:       Else
  loc_1816EE8:         MsgBox("Sundry setting Not Configured for Purchase Department", 0, var_EC, var_130, var_150)
  loc_1816F05:         Me.Global.Unload Me
  loc_1816F0D:         Exit Sub
  loc_1816F0E:       End If
  loc_1816F14:       Call Proc_32_98_10E9688(MemVar_1F92044, var_B0)
  loc_1816F27:       Set var_A4 = Me.Txt
  loc_1816F2D:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1816F35:       var_A8.Text = var_B0
  loc_1816F44:     End If
  loc_1816F44:     Call Proc_32_110_112EE94(var_A4)
  loc_1816F49:   End If
  loc_1816F4C: Else
  loc_1816F54:   If (var_A0 = CInt(2)) Then
  loc_1816F62:     Set var_A4 = Me.Txt
  loc_1816F68:     Call 0.Method_Txt_Validate0 (CInt(2))
  loc_1816F70:     var_B0 = "Vr. No"
  loc_1816F91:     If (Proc_6_27_EA565C(var_A8, var_B0) = 0) Then
  loc_1816F9F:       Set var_A4 = Me.Txt
  loc_1816FA5:       Call 0.Method_Txt_Validate0 (CInt(2), var_A8)
  loc_1816FAD:       var_A8.SetFocus
  loc_1816FBB:       arg_10 = &HFF
  loc_1816FBE:       Exit Sub
  loc_1816FBF:     End If
  loc_1816FCD:     Set var_A4 = Me.Txt
  loc_1816FD3:     Call 0.Method_Txt_Validate0 (CInt(2), var_A8, var_B0)
  loc_1816FDB:     arg_10 = var_A8.Text
  loc_1816FF3:     If (CDbl(var_B0) = CDbl(0)) Then
  loc_181700F:       MsgBox("Vr. No Can Not Be 0", 0, var_EC, var_130, var_150)
  loc_1817029:       Set var_A4 = Me.Txt
  loc_181702F:       Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1817037:       var_A8.SetFocus
  loc_1817045:       arg_10 = &HFF
  loc_1817048:       Exit Sub
  loc_1817049:     End If
  loc_181704D:     Set var_A4 = Me.TopCtrl1
  loc_1817053:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(arg_10)
  loc_181706C:     If (CStr(var_A8) = "Add") Then
  loc_18170A0:       var_DC = Space((5 - Len(global_140)))
  loc_18170A8:       var_130 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & global_140) + "Vr. No Can Not Be 0")
  loc_18170BC:       var_150 = Space((5 - Len(global_124)))
  loc_18170C4:       var_160 = (var_130 + var_150)
  loc_18170D1:       var_170 = (var_160 + CVar(global_124))
  loc_18170E8:       Set var_A4 = Me.Txt
  loc_18170EE:       Call 0.Method_Txt_Validate0 (CInt(2), var_A8, var_F4)
  loc_18170F6:       8 = var_A8.Text
  loc_1817103:       var_180 = Space((var_170 - Len(var_F4)))
  loc_181710B:       var_190 = ( + var_180)
  loc_181711D:       Set var_AC = Me.Txt
  loc_1817123:       Call 0.Method_Txt_Validate0 (CInt(2), var_CC)
  loc_1817136:       var_1B0 = (var_190 + CVar(var_CC.Text))
  loc_1817183:       Set var_A4 = Me.Txt
  loc_1817189:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_1817191:       var_A8.Text = CStr(var_1B0)
  loc_18171AD:       Me.LblVPrefix.Caption = global_124
  loc_18171B5:     End If
  loc_18171B9:     Set var_A4 = Me.TopCtrl1
  loc_18171BF:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_18171C7:     var_B0 = CStr()
  loc_18171D8:     If (var_B0 = "Add") Then
  loc_1817208:       Set var_A4 = Me.Txt
  loc_181720E:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_B0, "Select Count(*) From Purch1 Where DocID='", "Vr. No Can Not Be 0", -1)
  loc_181721F:       var_F0 = var_CC & var_B0
  loc_181722F:       unk_59BA2D.Execute var_F0 & "'", 0, var_1B4
  loc_181723F:        = var_CC.Item()
  loc_1817247:        = var_1B4.Value
  loc_1817274:       If (var_A8.Text.Fields > 0) Then
  loc_181727D:         Call 0.Method_arg_50 (var_B0)
  loc_181729E:         MsgBox("Duplicate Voucher No.", &H40, CVar(var_B0), var_130, var_150)
  loc_18172B4:         Call Proc_32_98_10E9688(MemVar_1F92044)
  loc_18172C4:         If (var_B0 = vbNullString) Then
  loc_18172D1:           Set var_A4 = Me.Txt
  loc_18172D7:           Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18172DF:           var_A8.SetFocus
  loc_18172ED:           arg_10 = &HFF
  loc_18172F0:           Exit Sub
  loc_18172F1:         End If
  loc_18172F7:         Call Proc_32_98_10E9688(MemVar_1F92044, var_B0)
  loc_181730A:         Set var_A4 = Me.Txt
  loc_1817310:         Call 0.Method_Txt_Validate0 (CInt(0), var_A8, var_B0)
  loc_1817318:         var_A8.Text = arg_10
  loc_1817329:         arg_10 = &HFF
  loc_181732C:         Exit Sub
  loc_181732D:       End If
  loc_181732D:     End If
  loc_1817330:   Else
  loc_1817338:     If (var_A0 = CInt(3)) Then
  loc_1817349:       Set var_A4 = Me.Txt
  loc_181734F:       Call 0.Method_Txt_Validate0 (CInt(3), var_A8, var_B0)
  loc_1817357:       arg_10 = var_A8.Text
  loc_181736D:       var_130 = Len(Trim(CVar(var_B0)))
  loc_1817387:       If (var_130 = 0) Then
  loc_181739D:         Set var_A4 = Me.Txt
  loc_18173A3:         Call 0.Method_Txt_Validate0 (CInt(3), var_A8)
  loc_18173AB:         var_A8.Text = CStr(MemVar_1F920EC)
  loc_18173BD:       Else
  loc_18173C7:         Set var_A4 = Me.Txt
  loc_18173CD:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18173ED:         Set var_CC = Me.Txt
  loc_18173F3:         Call 0.Method_Txt_Validate0 (Cancel, var_1B4)
  loc_18173FB:         var_1B4.Text = Proc_6_33_1512840(var_A8)
  loc_181740E:       End If
  loc_181741B:       Set var_A4 = Me.Txt
  loc_1817421:       Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1817429:       var_B0 = var_A8.Text
  loc_1817444:       Set var_AC = Me.Txt
  loc_181744A:       Call 0.Method_Txt_Validate0 (Cancel, var_CC, var_F0)
  loc_1817452:       (CDate(var_B0) >= MemVar_1F920F4) = var_CC.Text
  loc_1817474:       If Not((var_B0 And (CDate(var_F0) <= MemVar_1F920FC))) Then
  loc_1817498:         MsgBox("V.Date Not Between Current Fin. Year", 0, "Date Validate", var_130, var_150)
  loc_18174B2:         Set var_A4 = Me.Txt
  loc_18174B8:         Call 0.Method_Txt_Validate0 (Cancel)
  loc_18174C0:         var_A8.SetFocus
  loc_18174CE:         arg_10 = &HFF
  loc_18174D1:         Exit Sub
  loc_18174D2:       End If
  loc_18174F2:       Set var_A4 = Me.Txt
  loc_18174F8:       Call 0.Method_Txt_Validate0 (CInt(3), var_A8, var_B0)
  loc_1817500:       ((global_264 = "No") And (MemVar_1F920B8 <> 1)) = var_A8.Text
  loc_1817519:       If (arg_10 And (CDate(var_B0) < MemVar_1F920EC)) Then
  loc_1817537:         var_DC = "Back Date Entry Blocked."
  loc_181753D:         MsgBox(var_DC, &H10, "Date Validate", var_130, var_150)
  loc_1817557:         Set var_A4 = Me.Txt
  loc_181755D:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1817565:         var_A8.SetFocus
  loc_1817573:         arg_10 = &HFF
  loc_1817576:         Exit Sub
  loc_1817577:       End If
  loc_181757B:       Set var_A4 = Me.TopCtrl1
  loc_1817581:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(arg_10)
  loc_1817589:       var_B0 = CStr(var_A8)
  loc_181759F:       Set var_A8 = Me.Txt
  loc_18175A5:       Call 0.Method_Txt_Validate0 (CInt(2), var_AC)
  loc_18175CE:       If ((var_B0 = "Add") And (var_AC.Text = vbNullString)) Then
  loc_18175D7:         Call Proc_32_98_10E9688(MemVar_1F92044)
  loc_18175EA:         Set var_A4 = Me.Txt
  loc_18175F0:         Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_18175F8:         var_A8.Text = var_B0
  loc_1817607:       End If
  loc_181760A:     Else
  loc_1817612:       If (var_A0 = CInt(8)) Then
  loc_1817620:         Set var_A4 = Me.Txt
  loc_1817626:         Call 0.Method_Txt_Validate0 (CInt(8), var_A8)
  loc_181764F:         If (Proc_6_27_EA565C(var_A8, "Party Name") = 0) Then
  loc_181765D:           Set var_A4 = Me.Txt
  loc_1817663:           Call 0.Method_Txt_Validate0 (CInt(8), var_A8)
  loc_181766B:           var_A8.SetFocus
  loc_1817679:           arg_10 = &HFF
  loc_181767C:           Exit Sub
  loc_181767D:         End If
  loc_18176A0:         If (((global_132 = "PRC") Or (global_132 = "PBC")) Or (global_132 = "EXC")) Then
  loc_18176C0:           Proc_6_17_EAA2B0(var_DC, MemVar_1F92078, "Select CashPurchAc From Enviro  WHERE LOGSITE_CODE=", var_130)
  loc_18176C8:           var_EC = -1 & var_DC 
  loc_18176D6:           unk_59BA2D.Execute CStr("Date Validate"), var_A4, arg_10
  loc_18176E1:           Set var_88 = var_A4
  loc_1817707:           If (var_88.RecordCount > 0) Then
  loc_1817724:             var_A8 = var_88.Fields.Item("CashPurchAc")
  loc_181772C:             var_DC = var_A8.Value
  loc_1817743:             Set var_AC = Me.Txt
  loc_1817749:             Call 0.Method_Txt_Validate0 (CInt(4), var_CC)
  loc_1817751:             var_CC.Tag = CStr(var_DC)
  loc_1817775:             Set var_A4 = Me.Txt
  loc_181777B:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_1817783:             var_A8.Tag = vbNullString
  loc_181779C:             Set var_A4 = Me.Txt
  loc_18177A2:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_18177AA:             var_A8.Enabled = True
  loc_18177B6:           End If
  loc_18177B6:         End If
  loc_18177CD:         If ((global_132 = "PBC") Or (global_132 = "EXC")) Then
  loc_18177DA:           Set global_80 = New 
  loc_18177EC:           Me.Recordset15.CursorLocation = 3
  loc_18177F8:           var_B0 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_18177FF:           var_F0 = var_B0 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_1817822:           var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_1817839:           Call 0.Method_Txt_Validate0 (CInt(4), var_A8, var_1B8)
  loc_1817841:           var_1BC = var_A8.Tag
  loc_1817851:           var_8C = var_B0 & var_1B8 & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.AccQty,0)) > 0 "
  loc_1817886:           unk_59BA2D.Execute var_8C, var_DC, -1
  loc_1817897:           Set global_80 = Me.Txt
  loc_18178AE:           CVarUnk
  loc_18178B3:           VerifyVarObj
  loc_18178B9:           Set var_A4 = Me.DgMR
  loc_18178BF:           LateIdStAd
  loc_18178CD:         End If
  loc_18178D0:       Else
  loc_18178D8:         If (var_A0 = CInt(4)) Then
  loc_18178EC:           Call 0.Method_Txt_Validate0 (CInt(4), var_A8, Me.Txt)
  loc_18178F4:           var_B0 = "Party Name"
  loc_1817915:           If (Proc_6_27_EA565C(var_A8, var_B0) = 0) Then
  loc_1817923:             Set var_A4 = Me.Txt
  loc_1817929:             Call 0.Method_Txt_Validate0 (CInt(4), var_A8)
  loc_1817931:             var_A8.SetFocus
  loc_181793F:             arg_10 = &HFF
  loc_1817942:             Exit Sub
  loc_1817943:           End If
  loc_1817991:           Set var_A4 = Me.Txt
  loc_1817997:           Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_181799F:           arg_10 = var_A8.Text
  loc_18179B7:           If (global_80 Or (var_B0 = vbNullString)) Then
  loc_18179C7:             Set var_A4 = Me.Txt
  loc_18179CD:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18179D5:             var_A8.Text = vbNullString
  loc_18179EE:             Set var_A4 = Me.Txt
  loc_18179F4:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_18179FC:             var_A8.Tag = vbNullString
  loc_1817A0B:           Else
  loc_1817A46:             Set var_AC = Me.Txt
  loc_1817A4C:             Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1817A54:             var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1817AA5:             Set var_AC = Me.Txt
  loc_1817AAB:             Call 0.Method_Txt_Validate0 (Cancel, var_CC)
  loc_1817AB3:             var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1817B05:             Set var_AC = Me.Txt
  loc_1817B0B:             Call 0.Method_Txt_Validate0 (CInt(8), var_CC)
  loc_1817B13:             var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1817B43:             var_A8 = Me.Fields.Item("TINNo")
  loc_1817B4B:             var_DC = CVar(var_A8) 'Address
  loc_1817B62:             Set var_AC = Me.Txt
  loc_1817B68:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_CC)
  loc_1817B70:             var_CC.Text = Proc_6_38_E68A98(var_DC)
  loc_1817B91:             Set var_A4 = Me.Txt
  loc_1817B97:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_A8)
  loc_1817B9F:             var_A8.Enabled = False
  loc_1817BAB:           End If
  loc_1817BC2:           If ((global_132 = "PBR") Or (global_132 = "EXR")) Then
  loc_1817BCC:             var_B0 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1817BD3:             var_F0 = var_B0 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.LogSite_Code=V.LogSite_Code) "
  loc_1817BF6:             var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and V.Ncat in ('MRE') and M.Partycode='"
  loc_1817C07:             Set var_A4 = Me.Txt
  loc_1817C0D:             Call 0.Method_Txt_Validate0 (CInt(4), var_A8, var_1B8)
  loc_1817C15:             var_1BC = var_A8.Tag
  loc_1817C25:             var_8C = var_A4 & var_1B8 & "'  Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.recdQty,0)) > 0 "
  loc_1817C5A:             unk_59BA2D.Execute var_8C, var_DC, -1
  loc_1817C6B:             Set global_80 = var_A4
  loc_1817C82:             CVarUnk
  loc_1817C87:             VerifyVarObj
  loc_1817C8D:             Set var_A4 = Me.DgMR
  loc_1817C93:             LateIdStAd
  loc_1817CA1:           End If
  loc_1817CA4:         Else
  loc_1817CAC:           If (var_A0 = CInt(7)) Then
  loc_1817CB3:             Set var_9C = New 
  loc_1817CBE:             Me.Recordset15.CursorLocation = 3
  loc_1817CDA:             If ((global_132 = "PBR") Or (global_132 = "EXR")) Then
  loc_1817CE4:               var_B0 = "Select Max(S.DocId) as DocID,Max(S.Item) as Item,Max(S.RecdUnit) as RecdUnit,max(S.Unit) as Unit,Max(I.ConvRatio) as ConvRatio,Max(S.AccQty) - Sum(isnull(P2.RecdQty,0)) as RecdQty,Max(S.Rate) AS Rate,Max(S.ItemRate) AS ItemRate,Max(S.SNo) as SNo,Max(I.RateEdit) as RateEdit,Max(I.SChrgApp) as SChrgApp,Max(S.GodownCode) as GodownCode,Max(S.RoomNo) as RoomNo,Max(G.Name) as GodName,Max(I.NAME) AS ITEMNAME,Max(DispCode) as DispCode,Max(IC.RoundOff) as ROff,Max(IC.Code) as TaxCode,Max(I.DiscApp) as IDiscApp,Max(IC.taxStru) as taxStru,Max(I.Kitchen) as Kitchen,Max(D.Code) as DepartCode,Max(D.ShortName) as DepartName,Max(MemInvNo)as MemInvNo,Max(MemInvDate) as MemInvDate " & "From (((((((Stock S Left Join Purch2 P2 on (S.Docid = P2.ContraDocid and S.Sno = P2.ContraSno)) "
  loc_1817CEB:               var_F0 = var_B0 & "Left Join SubGroup SG on S.PartyCode=SG.SubCode)Left Join Voucher_Type V on (S.Vtype=V.V_Type and S.LogSite_Code=V.LogSite_Code)) LEFT JOIN ITEMMAST I ON S.ITEM=I.CODE And I.ItemType='Store')Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode)Left join GodownMast G on G.Code=S.GodownCode)Left Join GIN N On N.DocId=S.DocId "
  loc_1817D0E:               var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and S.DocID='"
  loc_1817D1F:               Set var_A4 = Me.Txt
  loc_1817D25:               Call 0.Method_Txt_Validate0 (CInt(7), var_A8, var_1B8, var_1BC)
  loc_1817D2D:               var_A4 = var_A8.Tag
  loc_1817D3D:               var_8C = global_80 & var_1B8 & "' Group By S.Docid,S.Sno Having Max(S.AccQty) - Sum(isnull(P2.RecdQty,0)) > 0 "
  loc_1817D5F:             Else
  loc_1817D66:               var_B0 = "Select Max(S.DocId) as DocID,Max(S.Item) as Item,Max(S.RecdUnit) as RecdUnit,max(S.Unit) as Unit,Max(I.ConvRatio) as ConvRatio,Max(S.AccQty) - Sum(isnull(P2.recdQty,0)) as RecdQty,Max(S.Rate) AS Rate,Max(S.ItemRate) AS ItemRate,Max(S.SNo) as SNo,Max(I.RateEdit) as RateEdit,Max(I.SChrgApp) as SChrgApp,Max(S.GodownCode) as GodownCode,Max(S.RoomNo) as RoomNo,Max(G.Name) as GodName,Max(I.NAME) AS ITEMNAME,Max(DispCode) as DispCode,Max(IC.RoundOff) as ROff,Max(IC.Code) as TaxCode,Max(I.DiscApp) as IDiscApp,Max(IC.taxStru) as taxStru,Max(I.Kitchen) as Kitchen,Max(D.Code) as DepartCode,Max(D.ShortName) as DepartName,Max(MemInvNo)as MemInvNo,Max(MemInvDate) as MemInvDate " & "From (((((((Stock S Left Join Purch2 P2 on (S.Docid = P2.ContraDocid and S.Sno = P2.ContraSno)) "
  loc_1817D6D:               var_F0 = var_B0 & "Left Join SubGroup SG on S.PartyCode=SG.SubCode)Left Join Voucher_Type V on (S.Vtype=V.V_Type and S.LogSite_Code=V.LogSite_Code)) LEFT JOIN ITEMMAST I ON S.ITEM=I.CODE And I.ItemType='Store')Left join ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D On D.Code=I.RestCode)Left join GodownMast G on G.Code=S.GodownCode)Left Join GIN N On N.DocId=S.DocId "
  loc_1817D90:               var_1BC = var_F0 & "where V.LogSite_Code='" & MemVar_1F92078 & "' and V.Site_Code='" & MemVar_1F92070 & "' and S.DocID='"
  loc_1817DA7:               Call 0.Method_Txt_Validate0 (CInt(7), var_A8, var_1B8)
  loc_1817DAF:               var_1BC = var_A8.Tag
  loc_1817DBF:               var_8C = Me.Txt & var_1B8 & "' Group By S.Docid,S.Sno Having Max(S.AccQty) - Sum(isnull(P2.QtyRec,0)) > 0 "
  loc_1817DDE:             End If
  loc_1817DE6:             If (var_8C <> vbNullString) Then
  loc_1817E0A:               var_9C.Open CVar(var_8C), CVar(MemVar_1F92044), 2
  loc_1817E23:               If (var_9C.RecordCount > 0) Then
  loc_1817E35:                 Me.FGrid.Redraw = False
  loc_1817E57:                 var_8E = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1817E60:                 ' Referenced from:           1818D33
  loc_1817E6F:                 If Not(var_9C.EOF) Then
  loc_1817E97:                   For var_1C4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):           var_9E = var_1C4 'Integer
  loc_1817EA1:                     var_C8 = CVar(CLng(var_9E)) 'Long
  loc_1817EA9:                     var_120 = CVar(CLng(&HE)) 'Long
  loc_1817EC3:                     var_130 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1817EE9:                     var_EC = var_9C.Fields.Item("DocID").Value
  loc_1817EF9:                     var_1E4 = CVar(CLng(var_9E)) 'Long
  loc_1817F0A:                     Set var_CC = Me.FGrid
  loc_1817F71:                     If CBool(CVar(CLng(&HD)) And (CVar(CStr(var_CC.TextMatrix))) = var_9C.Fields.Item("SNo").Value)) Then
  loc_1817F76:                       var_98 = &HFF
  loc_1817F79:                     End If
  loc_1817F7C:                   Next var_1C4 'Integer
  loc_1817F87:                   If (var_98 = &HFF) Then
  loc_1817F8C:                     var_98 = 0
  loc_1817F92:                   Else
  loc_1817F92:                     var_C8 = vbNullString
  loc_1817F9C:                     Set var_A4 = Me.FGrid
  loc_1817FB0:                     var_C8 = "MemInvNo"
  loc_1817FF2:                     Set var_AC = Me.Txt
  loc_1817FF8:                     Call 0.Method_Txt_Validate0 (CInt(5), var_CC, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item(var_C8)), FGrid.DispID_10000)))))
  loc_1818000:                     var_CC.Text = var_C8
  loc_1818050:                     Set var_AC = Me.Txt
  loc_1818056:                     Call 0.Method_Txt_Validate0 (CInt(6), var_CC)
  loc_181805E:                     var_CC.Text = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("MemInvDate")))
  loc_1818076:                     Set var_22C = Me.FGrid
  loc_181807D:                     var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1818085:                     var_120 = CVar(CLng(0)) 'Long
  loc_181808F:                     var_DC = CVar(CStr(var_8E)) 'String
  loc_1818096:                     LateIdCallSt
  loc_18180A5:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_18180AD:                     var_140 = CVar(CLng(&HC)) 'Long
  loc_18180E1:                     var_130 = CVar(CStr(Trim(CVar(var_9C.Fields.Item("Item"))))) 'String
  loc_18180E8:                     LateIdCallSt
  loc_1818100:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1818108:                     var_140 = CVar(CLng(1)) 'Long
  loc_1818138:                     var_EC = CVar(CStr(var_9C.Fields.Item("DispCode").Value)) 'String
  loc_181813F:                     LateIdCallSt
  loc_1818159:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1818161:                     var_140 = CVar(CLng(2)) 'Long
  loc_1818191:                     var_EC = CVar(CStr(var_9C.Fields.Item("ItemName").Value)) 'String
  loc_1818198:                     LateIdCallSt
  loc_18181B2:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_18181BA:                     var_140 = CVar(CLng(4)) 'Long
  loc_18181EA:                     var_EC = CVar(CStr(var_9C.Fields.Item("RecdUnit").Value)) 'String
  loc_18181F1:                     LateIdCallSt
  loc_181820B:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1818213:                     var_140 = CVar(CLng(8)) 'Long
  loc_1818243:                     var_EC = CVar(CStr(var_9C.Fields.Item("Unit").Value)) 'String
  loc_181824A:                     LateIdCallSt
  loc_1818280:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_1818288:                     var_1D4 = CVar(CLng(5)) 'Long
  loc_18182B5:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_18182BC:                     LateIdCallSt
  loc_18182F2:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_18182FA:                     var_1D4 = CVar(CLng(&H22)) 'Long
  loc_1818327:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("RecdQty")), "0.000"))) 'String
  loc_181832E:                     LateIdCallSt
  loc_1818364:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_181836C:                     var_1D4 = CVar(CLng(9)) 'Long
  loc_1818399:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("Rate")), "0.00000"))) 'String
  loc_18183A0:                     LateIdCallSt
  loc_18183D6:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_18183DE:                     var_1D4 = CVar(CLng(&HA)) 'Long
  loc_181840B:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("ItemRate")), "0.00000"))) 'String
  loc_1818412:                     LateIdCallSt
  loc_1818461:                     var_AC = var_9C.Fields
  loc_1818469:                     var_CC = var_AC.Item("Rate")
  loc_181847A:                     var_140 = CVar(CLng(var_8E)) 'Long
  loc_1818482:                     var_1E4 = CVar(CLng(&HB)) 'Long
  loc_18184B9:                     var_180 = CVar(CStr(Format((var_9C.Fields.Item("RecdQty").Value * var_CC.Value), "0.00"))) 'String
  loc_18184C0:                     LateIdCallSt
  loc_1818502:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_181850A:                     var_140 = CVar(CLng(3)) 'Long
  loc_1818531:                     var_130 = CVar(CStr(Val(CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8))))) 'String
  loc_1818538:                     LateIdCallSt
  loc_1818553:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_181855B:                     var_140 = CVar(CLng(&HE)) 'Long
  loc_181858B:                     var_EC = CVar(CStr(var_9C.Fields.Item("DocID").Value)) 'String
  loc_1818592:                     LateIdCallSt
  loc_18185AC:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_18185B4:                     var_140 = CVar(CLng(&HD)) 'Long
  loc_18185E4:                     var_EC = CVar(CStr(var_9C.Fields.Item("SNo").Value)) 'String
  loc_18185EB:                     LateIdCallSt
  loc_181863A:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_22C, var_EC, CVar(CLng(&H1D)), CVar(CLng(var_8E)))) 'String
  loc_1818641:                     LateIdCallSt
  loc_181868C:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_22C, var_EC, var_22C)) 'String
  loc_1818693:                     LateIdCallSt
  loc_18186DE:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Roff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_18186E5:                     LateIdCallSt
  loc_1818730:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1818737:                     LateIdCallSt
  loc_1818755:                     var_140 = CVar(CLng(&H1F)) 'Long
  loc_1818782:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("SChrgApp")), var_140, CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1818789:                     LateIdCallSt
  loc_18187D3:                     var_B0 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_EC, -1, var_AC, var_22C)
  loc_18187E7:                     unk_59BA2D.Execute var_EC & CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8)) & "'", var_EC, var_140
  loc_18187F2:                     Set var_94 = var_AC
  loc_1818820:                     If (var_94.RecordCount > 0) Then
  loc_181885A:                       Proc_6_39_E7C810(var_EC, CVar(var_94.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(var_8E)))
  loc_1818863:                       var_130 = CVar(CStr(var_EC)) 'String
  loc_181886B:                       Set var_AC = Me.FGrid
  loc_1818871:                       LateIdCallSt
  loc_181888D:                       var_110 = CVar(CLng(var_8E)) 'Long
  loc_18188C2:                       var_EC = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name")), CVar(CLng(&H19)), var_110, var_AC)) 'String
  loc_18188C9:                       LateIdCallSt
  loc_18188DB:                     End If
  loc_1818913:                     var_B0 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("TaxCode")), "Select IM.AcName As SaleAcCode,SG.Name As SaleAcName from ItemCatMast IM inner join Subgroup SG On IM.AcName=SG.SubCode where IM.Code='", var_EC, -1, var_AC, var_22C)
  loc_1818927:                     unk_59BA2D.Execute var_EC & CStr(Right(CVar(var_9C.Fields.Item("DocID")), 8)) & "'", var_130, var_110
  loc_1818932:                     Set var_94 = var_AC
  loc_1818960:                     If (var_94.RecordCount > 0) Then
  loc_1818967:                       var_110 = CVar(CLng(var_8E)) 'Long
  loc_181899A:                       Proc_6_39_E7C810(var_EC, CVar(var_94.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)))
  loc_18189A3:                       var_130 = CVar(CStr(var_EC)) 'String
  loc_18189AA:                       LateIdCallSt
  loc_18189F7:                       var_EC = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_22C)) 'String
  loc_18189FE:                       LateIdCallSt
  loc_1818A10:                     End If
  loc_1818A49:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Godowncode")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_22C, var_EC)) 'String
  loc_1818A50:                     LateIdCallSt
  loc_1818A66:                     var_110 = CVar(CLng(var_8E)) 'Long
  loc_1818A9B:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("RoomNo")), CVar(CLng(&H18)), var_110, var_22C, var_EC)) 'String
  loc_1818AA2:                     LateIdCallSt
  loc_1818AEA:                     Set var_AC = Me.Txt
  loc_1818AF0:                     Call 0.Method_Txt_Validate0 (CInt(7), var_CC, Proc_6_38_E68A98(CVar(var_9C.Fields.Item("RoomNo")), var_22C, var_EC, var_130))
  loc_1818AF8:                     var_CC.Tag = var_110
  loc_1818B45:                     var_EC = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("GodName")), CVar(CLng(&H16)), CVar(CLng(var_8E)))) 'String
  loc_1818B4C:                     LateIdCallSt
  loc_1818B7E:                     var_120 = CVar(CLng(var_8E)) 'Long
  loc_1818B86:                     var_1D4 = CVar(CLng(6)) 'Long
  loc_1818BB3:                     var_150 = CVar(CStr(Format(CVar(var_9C.Fields.Item("ConvRatio")), "0.000"))) 'String
  loc_1818BBA:                     LateIdCallSt
  loc_1818BEA:                     var_A8 = var_9C.Fields.Item("RecdQty")
  loc_1818C2D:                     var_1B4 = var_9C.Fields
  loc_1818C46:                     var_B6 = IsNull(CVar(var_1B4.Item("ConvRatio")))
  loc_1818C85:                     var_150 = (var_9C.Fields.Item("ConvRatio").Value = 0) Or var_B6
  loc_1818C9C:                     var_214 = CVar(CLng(var_8E)) 'Long
  loc_1818CA4:                     var_274 = CVar(CLng(7)) 'Long
  loc_1818CDB:                     var_294 = CVar(CStr(Format((var_A8.Value * IIf(var_150, 1, CVar(var_9C.Fields.Item("ConvRatio")))), "0.000"))) 'String
  loc_1818CE2:                     LateIdCallSt
  loc_1818D16:                     Set var_22C = Nothing 
  loc_1818D20:                     var_8E = (var_8E + 1)
  loc_1818D23:                   End If
  loc_1818D26:                   var_9C.MoveNext
  loc_1818D2F:                   var_96 = CByte(0) 'Byte
  loc_1818D33:                   GoTo loc_1817E60
  loc_1818D36:                 End If
  loc_1818D49:                 Me.FGrid.FixedRows = 1
  loc_1818D51:               End If
  loc_1818D54:             Else
  loc_1818D61:               Set var_A4 = Me.Txt
  loc_1818D67:               Call 0.Method_Txt_Validate0 (Cancel, var_A8, vbNullString, var_8E, var_22C, var_294, 1)
  loc_1818D6F:               var_A8.Text = 1
  loc_1818D7B:             End If
  loc_1818D89:             Me.FGrid.Redraw = True
  loc_1818D97:             If (var_8E = 1) Then
  loc_1818DAD:               Me.FGrid.Rows = 1
  loc_1818DD3:               var_DC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_274, var_214))) 'String
  loc_1818DDB:               Set var_A8 = Me.FGrid
  loc_1818E08:               Me.FGrid.FixedRows = 1
  loc_1818E10:             End If
  loc_1818E16:             Call Proc_32_103_17C3018(Cancel, FGrid.DispID_10000, var_DC, var_B6)
  loc_1818E1E:           Else
  loc_1818E26:             If (var_A0 = CInt(6)) Then
  loc_1818E33:               Set var_A4 = Me.Txt
  loc_1818E39:               Call 0.Method_Txt_Validate0 (Cancel, var_A8, var_22C)
  loc_1818E59:               Set var_CC = Me.Txt
  loc_1818E5F:               Call 0.Method_Txt_Validate0 (Cancel, var_1B4)
  loc_1818E67:               var_1B4.Text = Proc_6_33_1512840(var_A8, var_150)
  loc_1818E7A:             End If
  loc_1818E7A:           End If
  loc_1818E7A:         End If
  loc_1818E7A:       End If
  loc_1818E7A:     End If
  loc_1818E7A:   End If
  loc_1818E7A: End If
  loc_1818E8C: Me.FGrid.Col = CVar(CLng(2))
  loc_1818E99: Set var_94 = Nothing
  loc_1818EA1: Set var_88 = Nothing
  loc_1818EA4: Exit Sub
  loc_1818EA5: ' Referenced from: 1816B24
  loc_1818EA5: Proc_6_60_E62BC4(1)
  loc_1818EAA: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '14FE7D8
  'Data Table: 59BA10
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
  Dim unk_59BA2D As Connection15
  loc_14FD95E: Set var_88 = Me.TxtGrid
  loc_14FD964: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_14FD972: Proc_6_74_E226B0(var_8C)
  loc_14FD97E: Call Proc_32_96_FE1284(var_8C)
  loc_14FD991: Set var_88 = Me.TxtGrid
  loc_14FD997: Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FD99F: var_8C.MaxLength = 0
  loc_14FD9B7: If (Index = 0) Then
  loc_14FD9CD:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FD9D6:   Set var_8C = Me.FGrid
  loc_14FDA0C:   Set var_108 = Me.TxtGrid
  loc_14FDA12:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_14FDA1A:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_14FDA4B:   var_114 = CLng(Me.FGrid.Col)
  loc_14FDA5B:   If (var_114 = CLng(1)) Then
  loc_14FDA6C:     Set var_88 = Me.TxtGrid
  loc_14FDA72:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, 4)
  loc_14FDA7A:     var_8C.MaxLength = var_114
  loc_14FDA89:   Else
  loc_14FDA90:     If (var_114 = CLng(2)) Then
  loc_14FDA9F:       Set var_88 = Me.TxtGrid
  loc_14FDAA5:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_14FDAAD:       var_C4 = var_8C.Left
  loc_14FDAC4:       Me.DGItem.Left = CVar(var_118)
  loc_14FDADE:       Set var_90 = Me.TxtGrid
  loc_14FDAE4:       Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_14FDAEC:       var_11C = var_108.Height
  loc_14FDAFD:       Set var_88 = Me.TxtGrid
  loc_14FDB03:       Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FDB17:       var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FDB20:       Set var_10C = Me.DGItem
  loc_14FDB26:       var_10C.Top = CVar(var_8C.Top)
  loc_14FDB4F:       If (Me.RecordCount > 0) Then
  loc_14FDB5D:         Set var_8C = Me.FGPoint
  loc_14FDB75:         Proc_6_137_1193554(Me.DGItem, global_64, Index)
  loc_14FDB83:       End If
  loc_14FDB8C:       var_118 = Me.RecordCount
  loc_14FDBA3:       var_11E = Me.EOF
  loc_14FDBB7:       var_120 = Me.BOF
  loc_14FDBD7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FDC13:       If (CVar(CLng(&HC)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_14FDC16:         Exit Sub
  loc_14FDC17:       End If
  loc_14FDC1D:       Me.MoveFirst
  loc_14FDC35:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FDC3D:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FDC81:       Me.Find "Code='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_14FDCB0:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FDCB8:       var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FDCC1:       Set var_8C = Me.FGrid
  loc_14FDCC7:       var_B4 = var_8C.TextMatrix)
  loc_14FDCD8:       var_148 = Trim(CVar(CStr(var_B4)))
  loc_14FDCE1:       var_110 = CStr(var_148)
  loc_14FDCE7:       global_176 = var_110
  loc_14FDD09:       var_11E = Me.EOF
  loc_14FDD14:       If (var_11E = &HFF) Then
  loc_14FDD1D:         Me.MoveFirst
  loc_14FDD22:       End If
  loc_14FDD25:     Else
  loc_14FDD2C:       If (var_114 = CLng(9)) Then
  loc_14FDD3E:         Set var_88 = Me.TxtGrid
  loc_14FDD44:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_E4, var_C4, var_138, var_B4)
  loc_14FDD4C:         var_8C.MaxLength = var_E4
  loc_14FDD61:         If (global_154 = 0) Then
  loc_14FDD73:           Set var_88 = Me.TxtGrid
  loc_14FDD79:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, 0, var_C4)
  loc_14FDD81:           var_8C.SelStart = var_C4
  loc_14FDD9A:           Set var_88 = Me.TxtGrid
  loc_14FDDA0:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110)
  loc_14FDDA8:           ((var_118 = 0) Or ((var_11E = &HFF) Or (var_120 = &HFF))) = var_8C.Text
  loc_14FDDBB:           Set var_90 = Me.TxtGrid
  loc_14FDDC1:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, Len(var_110))
  loc_14FDDC9:           var_108.SelLength = var_8C
  loc_14FDDDC:         End If
  loc_14FDDDF:       Else
  loc_14FDDE6:         If (var_114 = CLng(&HB)) Then
  loc_14FDDF8:           Set var_88 = Me.TxtGrid
  loc_14FDDFE:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FDE06:           var_8C.MaxLength = 0
  loc_14FDE1B:           If (global_154 = 0) Then
  loc_14FDE2D:             Set var_88 = Me.TxtGrid
  loc_14FDE33:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FDE3B:             var_8C.SelStart = 0
  loc_14FDE54:             Set var_88 = Me.TxtGrid
  loc_14FDE5A:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_14FDE75:             Set var_90 = Me.TxtGrid
  loc_14FDE7B:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_14FDE83:             var_108.SelLength = Len(var_8C.Text)
  loc_14FDE96:           End If
  loc_14FDE99:         Else
  loc_14FDEA0:           If (var_114 = CLng(&H16)) Then
  loc_14FDEAD:             var_A4 = Me.DGGod.Width
  loc_14FDEC2:             Set var_108 = Me.TxtGrid
  loc_14FDEC8:             Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C)
  loc_14FDEE1:             Set var_88 = Me.TxtGrid
  loc_14FDEE7:             Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FDF01:             var_C4 = CVar((var_8C.Left - (CDbl(var_10C.Width) - var_11C))) 'Single
  loc_14FDF10:             Me.DGGod.Left = var_C4
  loc_14FDF33:             Set var_90 = Me.TxtGrid
  loc_14FDF39:             Call 0.Method_TxtGrid_GotFocus0 (0, var_108)
  loc_14FDF41:             var_11C = var_108.Height
  loc_14FDF52:             Set var_88 = Me.TxtGrid
  loc_14FDF58:             Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FDF6C:             var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FDF75:             Set var_10C = Me.DGGod
  loc_14FDF7B:             var_10C.Top = var_C4
  loc_14FDFA0:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FDFA8:             var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FDFC8:             global_176 = CStr(Me.FGrid.TextMatrix))
  loc_14FDFF4:             If (Me.RecordCount > 0) Then
  loc_14FE01A:               Proc_6_137_1193554(Me.DGGod, global_88, Index, Me.FGPoint)
  loc_14FE028:             End If
  loc_14FE031:             var_118 = Me.RecordCount
  loc_14FE069:             If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_14FE06C:               Exit Sub
  loc_14FE06D:             End If
  loc_14FE080:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE088:             var_E4 = CVar(CLng(&H16)) 'Long
  loc_14FE0BB:             If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_14FE0C4:               Me.MoveFirst
  loc_14FE0ED:               Set var_8C = Me.FGrid
  loc_14FE104:               Proc_6_17_EAA2B0(var_148, CVar(CStr(var_8C.TextMatrix))), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H17)))
  loc_14FE12D:               Me.Find CStr("Code =" & var_148), 0, 1
  loc_14FE15D:               If (Me.EOF = &HFF) Then
  loc_14FE166:                 Me.MoveFirst
  loc_14FE16B:               End If
  loc_14FE16B:             End If
  loc_14FE16E:           Else
  loc_14FE175:             If (var_114 = CLng(&H19)) Then
  loc_14FE182:               var_A4 = Me.DGTaxStru.Width
  loc_14FE197:               Set var_108 = Me.TxtGrid
  loc_14FE19D:               Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C, var_A4, var_16C)
  loc_14FE1A5:               var_C4 = var_10C.Width
  loc_14FE1B6:               Set var_88 = Me.TxtGrid
  loc_14FE1BC:               Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_14FE1C4:               var_E4 = var_8C.Left
  loc_14FE1D6:               var_C4 = CVar((var_118 - (CDbl(var_A4) - var_11C))) 'Single
  loc_14FE1E5:               Me.DGTaxStru.Left = var_C4
  loc_14FE208:               Set var_90 = Me.TxtGrid
  loc_14FE20E:               Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_14FE216:               var_C4 = var_108.Height
  loc_14FE227:               Set var_88 = Me.TxtGrid
  loc_14FE22D:               Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FE241:               var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FE24A:               Set var_10C = Me.DGTaxStru
  loc_14FE250:               var_10C.Top = var_C4
  loc_14FE266:               Set var_88 = Me.FGrid
  loc_14FE26C:               var_A4 = var_88.Row
  loc_14FE275:               var_C4 = CVar(CLng(var_A4)) 'Long
  loc_14FE27D:               var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FE29D:               global_176 = CStr(Me.FGrid.TextMatrix))
  loc_14FE2C6:               var_110 = "SELECT Distinct TaxStru.Code as Code, TaxStru.Name as name FROM TaxStru INNER JOIN ItemCatMast ON TaxStru.Code = ItemCatMast.TaxStru where (TaxStru.LOGSITE_CODE='" & MemVar_1F92078
  loc_14FE2CD:               var_124 = var_110 & "' or TaxStru.LOGSITE_CODE='HO') And IsNull(ItemCatMast.TaxstruType,'')='Registered' And ItemCatMast.RestCode='"
  loc_14FE2E4:               unk_59BA2D.Execute var_124 & MemVar_1F92078 & "PURC' order by taxstru.name ", var_A4, -1
  loc_14FE2F5:               Set global_224 = var_88
  loc_14FE31A:               CVarUnk
  loc_14FE31F:               VerifyVarObj
  loc_14FE325:               Set var_88 = Me.DGTaxStru
  loc_14FE32B:               LateIdStAd
  loc_14FE353:               If (Me.DGTaxStru.RecordCount > 0) Then
  loc_14FE37D:                 Proc_6_137_1193554(Me.DGTaxStru, global_224, Index, Me.FGPoint, Me.DGTaxStru)
  loc_14FE38B:               End If
  loc_14FE397:               var_118 = global_224.RecordCount
  loc_14FE3D5:               If ((var_118 = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_14FE3D8:                 Exit Sub
  loc_14FE3D9:               End If
  loc_14FE3EC:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE3F4:               var_E4 = CVar(CLng(&H1A)) 'Long
  loc_14FE403:               var_B4 = Me.FGrid.TextMatrix)
  loc_14FE427:               If (CStr(var_B4) <> vbNullString) Then
  loc_14FE433:                 Me.var_B4.MoveFirst
  loc_14FE45C:                 Set var_8C = Me.FGrid
  loc_14FE462:                 var_B4 = var_8C.TextMatrix)
  loc_14FE473:                 Proc_6_17_EAA2B0(var_148, CVar(CStr(var_B4)), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)))
  loc_14FE49F:                 Me.var_B4.Find CStr("Code =" & var_148), 0, 1
  loc_14FE4D2:                 If (Me.Recordset15.EOF = &HFF) Then
  loc_14FE4DE:                   Me.Recordset15.MoveFirst
  loc_14FE4E3:                 End If
  loc_14FE4E3:               End If
  loc_14FE4E6:             Else
  loc_14FE4ED:               If (var_114 = CLng(&H1B)) Then
  loc_14FE4FA:                 var_A4 = Me.DGSaleAc.Width
  loc_14FE50F:                 Set var_108 = Me.TxtGrid
  loc_14FE515:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, var_11C, var_A4, var_16C)
  loc_14FE51D:                 global_224 = var_10C.Width
  loc_14FE534:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118, Me.TxtGrid)
  loc_14FE53C:                 var_E4 = var_8C.Left
  loc_14FE54E:                 var_C4 = CVar((var_118 - (CDbl(var_A4) - var_11C))) 'Single
  loc_14FE55D:                 Me.DGSaleAc.Left = CVar(CLng(Me.FGrid.Row))
  loc_14FE580:                 Set var_90 = Me.TxtGrid
  loc_14FE586:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_14FE58E:                 var_C4 = var_108.Height
  loc_14FE59F:                 Set var_88 = Me.TxtGrid
  loc_14FE5A5:                 Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_14FE5B9:                 var_C4 = CVar((var_8C.Top + var_11C)) 'Single
  loc_14FE5C8:                 Me.DGSaleAc.Top = var_C4
  loc_14FE5ED:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE5F5:                 var_E4 = CVar(CLng(&HC)) 'Long
  loc_14FE604:                 var_B4 = Me.FGrid.TextMatrix)
  loc_14FE615:                 global_176 = CStr(var_B4)
  loc_14FE644:                 If (Me.var_B4.RecordCount > 0) Then
  loc_14FE66E:                   Proc_6_137_1193554(Me.DGSaleAc, global_228, Index, Me.FGPoint)
  loc_14FE67C:                 End If
  loc_14FE6C6:                 If ((global_228.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Then
  loc_14FE6C9:                   Exit Sub
  loc_14FE6CA:                 End If
  loc_14FE6DD:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14FE6E5:                 var_E4 = CVar(CLng(&H1C)) 'Long
  loc_14FE6F4:                 var_B4 = Me.FGrid.TextMatrix)
  loc_14FE718:                 If (CStr(var_B4) <> vbNullString) Then
  loc_14FE724:                   Me.var_B4.MoveFirst
  loc_14FE753:                   var_B4 = Me.FGrid.TextMatrix)
  loc_14FE764:                   Proc_6_17_EAA2B0(var_148, CVar(CStr(var_B4)), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(&H1C)))
  loc_14FE790:                   Me.var_B4.Find CStr("Code =" & var_148), 0, 1
  loc_14FE7C3:                   If (Me.Recordset15.EOF = &HFF) Then
  loc_14FE7CF:                     Me.Recordset15.MoveFirst
  loc_14FE7D4:                   End If
  loc_14FE7D4:                 End If
  loc_14FE7D4:               End If
  loc_14FE7D4:             End If
  loc_14FE7D4:           End If
  loc_14FE7D4:         End If
  loc_14FE7D4:       End If
  loc_14FE7D4:     End If
  loc_14FE7D4:   End If
  loc_14FE7D4: End If
  loc_14FE7D4: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1438668
  'Data Table: 59BA10
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
  loc_1437B77: var_86 = Shift
  loc_1437B86: If (KeyCode = 0) Then
  loc_1437B93:   If (CLng(Shift) = &H1B) Then
  loc_1437BA3:     Set var_8C = Me.TxtGrid
  loc_1437BA9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_1437BB1:     var_88 = var_90.Tag
  loc_1437BC3:     Set var_98 = Me.TxtGrid
  loc_1437BC9:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_1437BD1:     var_9C.Text = var_94
  loc_1437BED:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1437BF2:     Call Proc_32_96_FE1284(arg_14)
  loc_1437BFB:     Set var_8C = Me.FGrid
  loc_1437C18:     Set var_8C = Me.TxtGrid
  loc_1437C1E:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_1437C26:     var_90.Visible = FGrid.DispID_8001
  loc_1437C32:     Exit Sub
  loc_1437C33:   End If
  loc_1437C46:   var_B0 = CLng(Me.FGrid.Col)
  loc_1437C56:   If (var_B0 = CLng(&H16)) Then
  loc_1437C76:     Set var_9C = Me.FGPoint
  loc_1437C81:     Set var_98 = Nothing
  loc_1437CAF:     Proc_6_69_134A198(Me.DGGod, Me.TxtGrid, KeyCode, global_88, Shift, &HFF)
  loc_1437D1E:     If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1437D25:       Set var_98 = Me.DGGod
  loc_1437D44:       Proc_6_138_106D6F8(var_98, global_88, KeyCode, Me.FGPoint, 1)
  loc_1437D52:     End If
  loc_1437D5C:     If (CLng(Shift) = &HD) Then
  loc_1437D65:       Call Proc_32_91_1AFCAE0(KeyCode, var_B2, var_98, var_9C)
  loc_1437D70:       If (var_B2 = &HFF) Then
  loc_1437DBD:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H16) + 1)))
  loc_1437DCD:       End If
  loc_1437DCD:     End If
  loc_1437DD0:   Else
  loc_1437DD7:     If (var_B0 = CLng(&H19)) Then
  loc_1437E34:       Proc_6_69_134A198(Me.DGTaxStru, Me.TxtGrid, KeyCode, global_224, Shift, &HFF, 1, Nothing)
  loc_1437EA6:       If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_1437ED0:         Proc_6_138_106D6F8(Me.DGTaxStru, global_224, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1437EDE:       End If
  loc_1437EE8:       If (CLng(Shift) = &HD) Then
  loc_1437EF1:         Call Proc_32_91_1AFCAE0(KeyCode, var_B2, 0, 0)
  loc_1437EFC:         If (var_B2 = &HFF) Then
  loc_1437F49:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H19) + 1)), 0)
  loc_1437F59:         End If
  loc_1437F59:       End If
  loc_1437F5C:     Else
  loc_1437F63:       If (var_B0 = CLng(&H1B)) Then
  loc_1437FC0:         Proc_6_69_134A198(Me.DGSaleAc, Me.TxtGrid, KeyCode, global_228, Shift, &HFF, 1, Nothing)
  loc_1438032:         If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_143805C:           Proc_6_138_106D6F8(Me.DGSaleAc, global_228, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_143806A:         End If
  loc_1438074:         If (CLng(Shift) = &HD) Then
  loc_143807D:           Call Proc_32_91_1AFCAE0(KeyCode, var_B2, &H1B, 0)
  loc_1438088:           If (var_B2 = &HFF) Then
  loc_14380D5:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H1B) + 1)), 0)
  loc_14380E5:           End If
  loc_14380E5:         End If
  loc_14380E8:       Else
  loc_14380EF:         If (var_B0 = CLng(2)) Then
  loc_14380FD:           If (global_104 = "Yes") Then
  loc_143811D:             Set var_9C = Me.FGPoint
  loc_1438156:             Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF, 1, Nothing)
  loc_143816F:           Else
  loc_143818C:             Set var_9C = Me.FGPoint
  loc_14381C5:             Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_64, Shift, &HFF, 2, Nothing)
  loc_14381DB:           End If
  loc_1438234:           If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_143825A:             Proc_6_138_106D6F8(Me.DGItem, global_64, KeyCode, Me.FGPoint, var_9C, 0)
  loc_1438268:           End If
  loc_1438272:           If (CLng(Shift) = &HD) Then
  loc_143827B:             Call Proc_32_91_1AFCAE0(KeyCode, var_B2, var_9C, 0)
  loc_1438286:             If (var_B2 = &HFF) Then
  loc_14382D3:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&HB) + 1)), 0)
  loc_14382E3:             End If
  loc_14382E3:           End If
  loc_14382E6:         Else
  loc_14382ED:           If (var_B0 = CLng(9)) Then
  loc_14382F6:             Call Proc_32_91_1AFCAE0(KeyCode, var_B2, 5, 0)
  loc_1438301:             If (var_B2 = &HFF) Then
  loc_143834E:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H16) + 1)), 0)
  loc_143835E:             End If
  loc_1438361:           Else
  loc_1438368:             If (var_B0 = CLng(&HB)) Then
  loc_1438371:               Call Proc_32_91_1AFCAE0(KeyCode, var_B2, &HB, 0)
  loc_143837C:               If (var_B2 = &HFF) Then
  loc_14383C9:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(&H16) + 1)), 0)
  loc_14383D9:               End If
  loc_14383DC:             Else
  loc_14383E3:               If (var_B0 = CLng(5)) Then
  loc_1438426:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_154 = &HFF))) Then
  loc_143842F:                   Call Proc_32_91_1AFCAE0(KeyCode, var_B2, &H16, 0)
  loc_143843A:                   If (var_B2 = &HFF) Then
  loc_1438487:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(9) + 1)), 0)
  loc_1438497:                   End If
  loc_1438497:                 End If
  loc_143849A:               Else
  loc_14384A1:                 If (var_B0 = CLng(6)) Then
  loc_14384E4:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_154 = &HFF))) Then
  loc_14384ED:                     Call Proc_32_91_1AFCAE0(KeyCode, var_B2, &H16, 0)
  loc_14384F8:                     If (var_B2 = &HFF) Then
  loc_1438545:                       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(9) + 1)), 0)
  loc_1438555:                     End If
  loc_1438555:                   End If
  loc_1438558:                 Else
  loc_143855F:                   If (var_B0 = CLng(1)) Then
  loc_143856C:                     If (CLng(Shift) = &HD) Then
  loc_1438575:                       Call Proc_32_91_1AFCAE0(KeyCode, var_B2, &H16, 0)
  loc_1438580:                       If (var_B2 = &HFF) Then
  loc_14385CD:                         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_154, CByte((CInt(5) + 1)), 0)
  loc_14385F0:                         var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14385F8:                         var_FC = CVar(CLng(1)) 'Long
  loc_143862B:                         If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1438640:                           Me.FGrid.Col = CVar(CLng(1))
  loc_143864B:                         Else
  loc_143865D:                           Me.FGrid.Col = CVar(CLng(5))
  loc_1438665:                         End If
  loc_1438665:                       End If
  loc_1438665:                     End If
  loc_1438665:                   End If
  loc_1438665:                 End If
  loc_1438665:               End If
  loc_1438665:             End If
  loc_1438665:           End If
  loc_1438665:         End If
  loc_1438665:       End If
  loc_1438665:     End If
  loc_1438665:   End If
  loc_1438665: End If
  loc_1438665: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1297CA0
  'Data Table: 59BA10
  Dim var_94 As Variant
  Dim var_A8 As Long
  Dim var_B4 As TextBox
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Long
  Dim arg_10 As Integer
  loc_12976A3: Proc_6_58_E054C0(arg_10)
  loc_12976B4: If (KeyAscii = 0) Then
  loc_12976CA:   var_A8 = CLng(Me.FGrid.Col)
  loc_12976DA:   If (var_A8 = CLng(&H16)) Then
  loc_12976F9:     If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_129770B:       var_AC = "Name"
  loc_1297726:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_88, arg_10)
  loc_1297758:       Proc_6_138_106D6F8(Me.DGGod, global_88, KeyAscii, Me.FGPoint)
  loc_1297766:     End If
  loc_1297769:   Else
  loc_1297770:     If (var_A8 = CLng(&H19)) Then
  loc_129778F:       If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_12977C0:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_224, arg_10, "Name")
  loc_12977F6:         Proc_6_138_106D6F8(Me.DGTaxStru, global_224, KeyAscii, Me.FGPoint, 0)
  loc_1297804:       End If
  loc_1297807:     Else
  loc_129780E:       If (var_A8 = CLng(&H1B)) Then
  loc_129782D:         If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_129785E:           Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_228, arg_10, "Name")
  loc_1297894:           Proc_6_138_106D6F8(Me.DGSaleAc, global_228, KeyAscii, Me.FGPoint, 0)
  loc_12978A2:         End If
  loc_12978A5:       Else
  loc_12978AC:         If (var_A8 = CLng(1)) Then
  loc_12978CA:           If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_12978DF:             Me.FGrid.Col = CVar(CLng(2))
  loc_1297903:             If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_129790A:               Set var_B4 = Me.TxtGrid
  loc_1297915:               var_AC = "Name"
  loc_1297930:               Proc_6_89_146F1AC(var_B4, KeyAscii, global_64, arg_10, var_AC)
  loc_129793F:             End If
  loc_129793F:           End If
  loc_1297942:         Else
  loc_1297949:           If (var_A8 = CLng(2)) Then
  loc_1297968:             If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1297976:               If (global_104 = "Yes") Then
  loc_1297985:                 Set var_94 = Me.TxtGrid
  loc_129798B:                 Call 0.Method_TxtGrid_KeyPress0 (0, var_B4, var_AC, 0)
  loc_129799D:                 var_86 = CInt(Len(var_B4.Text))
  loc_12979AD:                 var_88 = arg_10
  loc_12979B4:                 Set var_B4 = Me.TxtGrid
  loc_12979BF:                 var_AC = "BarCode"
  loc_12979DA:                 Proc_6_89_146F1AC(var_B4, KeyAscii, global_64, arg_10, var_AC, 0)
  loc_12979F5:                 Set var_94 = Me.TxtGrid
  loc_12979FB:                 Call 0.Method_TxtGrid_KeyPress0 (0, var_B4, var_AC, var_88)
  loc_1297A1B:                 If (Len(var_AC) = CLng(var_B4.Text)) Then
  loc_1297A35:                   If (Me.AbsolutePosition > 0) Then
  loc_1297A49:                     var_8C = Me.AbsolutePosition
  loc_1297A4F:                   Else
  loc_1297A54:                     var_8C = 1
  loc_1297A57:                   End If
  loc_1297A5A:                   arg_10 = var_88
  loc_1297A87:                   Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name", 0)
  loc_1297AAD:                   If (Me.AbsolutePosition <= 0) Then
  loc_1297AB9:                     Me.AbsolutePosition = var_8C
  loc_1297ABE:                   End If
  loc_1297ABE:                 End If
  loc_1297AC1:               Else
  loc_1297AEB:                 Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name", 0)
  loc_1297AFA:               End If
  loc_1297B05:               Set var_B4 = Me.FGPoint
  loc_1297B1D:               Proc_6_138_106D6F8(Me.DGItem, global_64, KeyAscii, var_B4, arg_10)
  loc_1297B2B:             End If
  loc_1297B2E:           Else
  loc_1297B35:             If (var_A8 = CLng(5)) Then
  loc_1297B42:               Set var_94 = Me.TxtGrid
  loc_1297B48:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, var_8C, var_8C)
  loc_1297B63:               Proc_6_42_129A86C(var_B4, arg_10, 8, 3)
  loc_1297B72:             Else
  loc_1297B79:               If Not (var_A8 = CLng(9)) Then
  loc_1297B83:                 If (var_A8 = CLng(6)) Then
  loc_1297B86:                 End If
  loc_1297B90:                 Set var_94 = Me.TxtGrid
  loc_1297B96:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, 0)
  loc_1297BB1:                 Proc_6_42_129A86C(var_B4, arg_10, 8)
  loc_1297BC0:               Else
  loc_1297BC7:                 If (var_A8 = CLng(&HB)) Then
  loc_1297BD4:                   Set var_94 = Me.TxtGrid
  loc_1297BDA:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_B4, 5)
  loc_1297BF5:                   Proc_6_42_129A86C(var_B4, arg_10, 8)
  loc_1297C04:                 Else
  loc_1297C0B:                   If (var_A8 = CLng(1)) Then
  loc_1297C29:                     If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_1297C3E:                       Me.FGrid.Col = CVar(CLng(2))
  loc_1297C62:                       If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_1297C8F:                         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_64, arg_10, "Name")
  loc_1297C9E:                       End If
  loc_1297C9E:                     End If
  loc_1297C9E:                   End If
  loc_1297C9E:                 End If
  loc_1297C9E:               End If
  loc_1297C9E:             End If
  loc_1297C9E:           End If
  loc_1297C9E:         End If
  loc_1297C9E:       End If
  loc_1297C9E:     End If
  loc_1297C9E:   End If
  loc_1297C9E: End If
  loc_1297C9E: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1216C2C
  'Data Table: 59BA10
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
  loc_121676C: On Error Goto loc_1216C26
  loc_121677B: If (KeyCode = 0) Then
  loc_1216791:   var_A0 = CLng(Me.FGrid.Col)
  loc_12167A1:   If (var_A0 = CLng(2)) Then
  loc_12167C7:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_12167D8:       Call TxtGrid_KeyDown(KeyCode, global_152)
  loc_12167E8:       If (global_104 = "Yes") Then
  loc_1216815:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_64, Shift, "BarCode")
  loc_1216827:       Else
  loc_1216851:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_64, Shift, "Name")
  loc_1216860:       End If
  loc_1216860:     End If
  loc_1216863:   Else
  loc_121686A:     If (var_A0 = CLng(&H16)) Then
  loc_1216890:       If ((Shift <> &HD) And (CBool(Me.DGGod.Visible) = 0)) Then
  loc_12168A1:         Call TxtGrid_KeyDown(KeyCode, global_152)
  loc_12168AA:         Set var_AC = Me.TxtGrid
  loc_12168B5:         var_A8 = "Name"
  loc_12168D0:         Proc_6_89_146F1AC(var_AC, KeyCode, global_88, Shift, var_A8, &HFF)
  loc_12168DF:       End If
  loc_12168E2:     Else
  loc_12168E9:       If (var_A0 = CLng(5)) Then
  loc_12168F9:         Set var_8C = Me.TxtGrid
  loc_12168FF:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, 0, &HFF)
  loc_1216907:         &HFF = var_AC.Text
  loc_121692A:         var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216942:         var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_121696F:         var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.000"))) 'String
  loc_1216977:         Set var_178 = Me.FGrid
  loc_121697D:         LateIdCallSt
  loc_12169B7:         var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12169BF:         var_174 = CVar(CLng(6)) 'Long
  loc_12169F7:         var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12169FF:         var_1C4 = CVar(CLng(7)) 'Long
  loc_1216A17:         var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216A1F:         var_124 = CVar(CLng(5)) 'Long
  loc_1216A28:         Set var_AC = Me.FGrid
  loc_1216A39:         var_A8 = CStr(var_AC.TextMatrix))
  loc_1216A47:         var_164 = CVar(CStr((Val(var_A8) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1216A4F:         Set var_1E8 = Me.FGrid
  loc_1216A55:         LateIdCallSt
  loc_1216A85:       Else
  loc_1216A8C:         If (var_A0 = CLng(6)) Then
  loc_1216A9C:           Set var_8C = Me.TxtGrid
  loc_1216AA2:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, var_1E8, var_164, var_124, var_BC)
  loc_1216AAA:           var_1C4 = var_AC.Text
  loc_1216ACD:           var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216AE5:           var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1216B12:           var_164 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00000"))) 'String
  loc_1216B1A:           Set var_178 = Me.FGrid
  loc_1216B20:           LateIdCallSt
  loc_1216B5A:           var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216B62:           var_174 = CVar(CLng(6)) 'Long
  loc_1216B84:           var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1216B9A:           var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216BA2:           var_1C4 = CVar(CLng(7)) 'Long
  loc_1216BBA:           var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1216BC2:           var_124 = CVar(CLng(5)) 'Long
  loc_1216BEA:           var_164 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * var_180))) 'String
  loc_1216BF2:           Set var_1E8 = Me.FGrid
  loc_1216BF8:           LateIdCallSt
  loc_1216C25:         End If
  loc_1216C25:       End If
  loc_1216C25:     End If
  loc_1216C25:   End If
  loc_1216C25: End If
  loc_1216C25: Exit Sub
  loc_1216C26: ' Referenced from: 121676C
  loc_1216C26: Proc_6_60_E62BC4(var_1E8, var_164, var_124, var_BC, var_1C4, var_1A4, var_180, var_174)
  loc_1216C2B: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23280
  'Data Table: 59BA10
  Dim arg_10 As Integer
  loc_E23268: If (Cancel = 0) Then
  loc_E23271:   Call Proc_32_91_1AFCAE0(Cancel, var_88)
  loc_E2327A:   arg_10 = Not(var_88)
  loc_E2327D: End If
  loc_E2327D: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F10678
  'Data Table: 59BA10
  Dim var_A4 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F105A0: Set var_A4 = Me.ListView
  loc_F105EA: Set var_BC = Me.Txt
  loc_F105F0: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F105F8: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F10624: Me.FrmList.Visible = False
  loc_F10654: Set var_9C = Me.Txt
  loc_F1065A: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A4)
  loc_F10662: var_A4.SetFocus
  loc_F10676: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '111CCD0
  'Data Table: 59BA10
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
  loc_111C98F: Me.DGItem.Visible = False
  loc_111C9AE: If (Me.RecordCount > 0) Then
  loc_111C9EB:   Set var_B4 = Me.TxtGrid
  loc_111C9F1:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_111C9F9:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_111CA22:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111CA2A:   var_EC = CVar(CLng(2)) 'Long
  loc_111CA5D:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_111CA65:   Set var_B8 = Me.FGrid
  loc_111CA6B:   LateIdCallSt
  loc_111CA9A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111CAA2:   var_EC = CVar(CLng(&HC)) 'Long
  loc_111CAD5:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_111CAE3:   LateIdCallSt
  loc_111CB4A:   var_11C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(4)))) 'String
  loc_111CB52:   Set var_B8 = Me.FGrid
  loc_111CB58:   LateIdCallSt
  loc_111CB85:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111CB8D:   var_EC = CVar(CLng(1)) 'Long
  loc_111CBC0:   var_11C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_111CBC8:   Set var_B8 = Me.FGrid
  loc_111CBCE:   LateIdCallSt
  loc_111CC04:   var_B0 = Me.Fields.Item("IPurchRate")
  loc_111CC1C:   var_DC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_111CC24:   var_FC = CVar(CLng(9)) 'Long
  loc_111CC51:   var_14C = CVar(CStr(Format(CVar(var_B0), "0.00000"))) 'String
  loc_111CC59:   Set var_B8 = Me.FGrid
  loc_111CC5F:   LateIdCallSt
  loc_111CC7D: End If
  loc_111CC89: Set var_A8 = Me.TxtGrid
  loc_111CC8F: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_15E, var_B8, var_14C, 1, 1)
  loc_111CC97: var_FC = var_B0.Visible
  loc_111CCA9: If (var_15E = &HFF) Then
  loc_111CCB5:   Set var_A8 = Me.TxtGrid
  loc_111CCBB:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_DC, var_B8)
  loc_111CCC3:   var_B0.SetFocus
  loc_111CCCF: End If
  loc_111CCCF: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9F290
  'Data Table: 59BA10
  Dim var_A8 As Variant
  loc_E9F214: Set var_88 = Me.DGItem
  loc_E9F23E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9F246: Set var_BC = Me.DGItem
  loc_E9F280: Proc_6_138_106D6F8(Me.DGItem, global_64, 0, Me.FGPoint)
  loc_E9F28E: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F42EC4
  'Data Table: 59BA10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F42DBB: Me.DGParty.Visible = False
  loc_F42DDA: If (Me.RecordCount > 0) Then
  loc_F42E19:   Set var_B4 = Me.Txt
  loc_F42E1F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F42E27:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F42E5A:   var_B0 = Me.Fields.Item("Code")
  loc_F42E79:   Set var_B4 = Me.Txt
  loc_F42E7F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(4), var_B8)
  loc_F42E87:   var_B8.Tag = CStr(var_B0.Value)
  loc_F42E9D: End If
  loc_F42EA8: Set var_A8 = Me.Txt
  loc_F42EAE: Call 0.Method_DGParty_UnknownEvent_90 (CInt(4))
  loc_F42EB6: var_B0.SetFocus
  loc_F42EC2: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_1F 'EA3C54
  'Data Table: 59BA10
  Dim var_A8 As Variant
  loc_EA3BD4: Set var_88 = Me.DGParty
  loc_EA3BFE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3C06: Set var_BC = Me.DGParty
  loc_EA3C42: Proc_6_138_106D6F8(Me.DGParty, global_68, CInt(4), Me.FGPoint)
  loc_EA3C50: Exit Sub
  loc_EA3C51: ArrayRebase1Var
End Sub

Private Sub DGVType_UnknownEvent_9 'FD5F64
  'Data Table: 59BA10
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_FD5DA4: On Error Goto loc_FD5F5C
  loc_FD5DB6: Me.DGVType.Visible = False
  loc_FD5DD5: If (Me.RecordCount > 0) Then
  loc_FD5E27:   Set var_CC = Me.Txt
  loc_FD5E2D:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)), var_D0)
  loc_FD5E35:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD5E8D:   Set var_B4 = Me.DGVType
  loc_FD5EA4:   Set var_CC = Me.Txt
  loc_FD5EAA:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FD5EB2:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD5F0A:   global_132 = CStr(Trim(CVar(Me.Fields.Item("NCat"))))
  loc_FD5F1B: End If
  loc_FD5F39: Set var_B0 = Me.Txt
  loc_FD5F3F: Call 0.Method_DGVType_UnknownEvent_90 (CInt(CStr(Me.DGVType.Tag)))
  loc_FD5F47: var_B4.SetFocus
  loc_FD5F5B: Exit Sub
  loc_FD5F5C: ' Referenced from: FD5DA4
  loc_FD5F5C: Proc_6_60_E62BC4(var_B4)
  loc_FD5F61: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_1F 'EA3B90
  'Data Table: 59BA10
  Dim var_A8 As Variant
  loc_EA3B10: Set var_88 = Me.DGVType
  loc_EA3B3A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3B42: Set var_BC = Me.DGVType
  loc_EA3B7E: Proc_6_138_106D6F8(Me.DGVType, global_84, CInt(1), Me.FGPoint)
  loc_EA3B8C: Exit Sub
  loc_EA3B8D: ArrayRebase1Var
End Sub

Private Sub Command3_Click() 'E5D37C
  'Data Table: 59BA10
  loc_E5D334: On Error Goto loc_E5D375
  loc_E5D360: Call Proc_32_87_11C4150(global_252, CByte(Me.Check1.Value))
  loc_E5D36E: If (var_A0 = 0) Then
  loc_E5D371:   GoTo loc_E5D375
  loc_E5D374: End If
  loc_E5D374: Exit Sub
  loc_E5D375: ' Referenced from: E5D371
  loc_E5D375: ' Referenced from: E5D334
  loc_E5D375: Proc_6_60_E62BC4(var_A0)
  loc_E5D37A: Exit Sub
End Sub

Private Sub Command1_Click() 'E94B10
  'Data Table: 59BA10
  loc_E94AA0: Call TopCtrl1_UnknownEvent_D()
  loc_E94AA5: Call TopCtrl1_UnknownEvent_16()
  loc_E94AAE: Set var_88 = Me.TopCtrl1
  loc_E94AB4: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030011()
  loc_E94AC6: If (CBool() = &HFF) Then
  loc_E94AC9:   Call TopCtrl1_UnknownEvent_12()
  loc_E94ACE:   Call Command1_Click()
  loc_E94AD6: Else
  loc_E94ADC:   Call 0.Method_arg_50 (var_9C)
  loc_E94AFD:   MsgBox("Updation Completed.", &H40, CVar(var_9C), var_DC, var_FC)
  loc_E94B0D:   Exit Sub
  loc_E94B0E: End If
  loc_E94B0E: Exit Sub
End Sub

Private Sub DgMR_UnknownEvent_9 'F5A0C8
  'Data Table: 59BA10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F59FA8: On Error Goto loc_F5A0C2
  loc_F59FBA: Me.DgMR.Visible = False
  loc_F59FD9: If (Me.RecordCount > 0) Then
  loc_F5A018:   Set var_B4 = Me.Txt
  loc_F5A01E:   Call 0.Method_DgMR_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5A026:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5A059:   var_B0 = Me.Fields.Item("Code")
  loc_F5A078:   Set var_B4 = Me.Txt
  loc_F5A07E:   Call 0.Method_DgMR_UnknownEvent_90 (CInt(7), var_B8)
  loc_F5A086:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5A09C: End If
  loc_F5A0A7: Set var_A8 = Me.Txt
  loc_F5A0AD: Call 0.Method_DgMR_UnknownEvent_90 (CInt(7))
  loc_F5A0B5: var_B0.SetFocus
  loc_F5A0C1: Exit Sub
  loc_F5A0C2: ' Referenced from: F59FA8
  loc_F5A0C2: Proc_6_60_E62BC4(var_B0)
  loc_F5A0C7: Exit Sub
End Sub

Private Sub DgMR_UnknownEvent_1F 'EA16D0
  'Data Table: 59BA10
  Dim var_A8 As Variant
  loc_EA1650: Set var_88 = Me.DgMR
  loc_EA167A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1682: Set var_BC = Me.DgMR
  loc_EA16BE: Proc_6_138_106D6F8(Me.DgMR, global_80, CInt(7), Me.FGPoint)
  loc_EA16CC: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_9 'FEB59C
  'Data Table: 59BA10
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FEB3C0: On Error Goto loc_FEB595
  loc_FEB3D2: Me.DGGod.Visible = False
  loc_FEB3F1: If (Me.RecordCount > 0) Then
  loc_FEB42E:   Set var_B4 = Me.TxtGrid
  loc_FEB434:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B8)
  loc_FEB43C:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEB465:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEB46D:   var_EC = CVar(CLng(&H16)) 'Long
  loc_FEB4A0:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FEB4A8:   Set var_B8 = Me.FGrid
  loc_FEB4AE:   LateIdCallSt
  loc_FEB4DD:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEB4E5:   var_EC = CVar(CLng(&H17)) 'Long
  loc_FEB507:   var_B0 = Me.Fields.Item("Code")
  loc_FEB518:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FEB520:   Set var_B8 = Me.FGrid
  loc_FEB526:   LateIdCallSt
  loc_FEB542: End If
  loc_FEB54E: Set var_A8 = Me.TxtGrid
  loc_FEB554: Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FEB55C: var_A4 = var_B0.Visible
  loc_FEB56E: If (var_12E = &HFF) Then
  loc_FEB57A:   Set var_A8 = Me.TxtGrid
  loc_FEB580:   Call 0.Method_DGGod_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FEB588:   var_B0.SetFocus
  loc_FEB594: End If
  loc_FEB594: Exit Sub
  loc_FEB595: ' Referenced from: FEB3C0
  loc_FEB595: Proc_6_60_E62BC4(var_11C, var_EC)
  loc_FEB59A: Exit Sub
End Sub

Private Sub DGGod_UnknownEvent_1F 'E9ED50
  'Data Table: 59BA10
  Dim var_A8 As Variant
  loc_E9ECD4: Set var_88 = Me.DGGod
  loc_E9ECFE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9ED06: Set var_BC = Me.DGGod
  loc_E9ED40: Proc_6_138_106D6F8(Me.DGGod, global_88, 0, Me.FGPoint)
  loc_E9ED4E: Exit Sub
End Sub

Public Function global_52Get() '59E510
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '59E51F
  global_52 = Value
End Sub

Public Function global_56Get() '59E52E
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '59E53D
  global_56 = Value
End Sub

Public Function global_60Get() '59E54C
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '59E55B
  global_60 = Value
End Sub

Public Property Let OpenAs(vNewValue) 'E0F16C
  'Data Table: 59BA10
  loc_E0F164: global_268 = vNewValue
  loc_E0F168: Exit Sub
End Sub

Public Property Get OpenAs() 'E104D4
  'Data Table: 59BA10
  loc_E104C8: var_88 = global_268
  loc_E104CB: OpenAs = 
End Sub

Public Sub FindMove(mDocId) 'E71C38
  'Data Table: 59BA10
  Dim Me As Recordset15
  loc_E71BE2: Me.MoveFirst
  loc_E71C0C: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E71C2C: If (Me.EOF = 0) Then
  loc_E71C2F:   Call Proc_32_92_1A04FC4(var_9C)
  loc_E71C34: End If
  loc_E71C34: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E950D8
  'Data Table: 59BA10
  Dim Me As Recordset15
  loc_E95066: On Error Goto loc_E950CF
  loc_E9506F: Me.MoveFirst
  loc_E95099: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E950C1: Proc_5_0_110649C(&HFF, Me, global_76)
  loc_E950C9: Call Proc_32_92_1A04FC4(0)
  loc_E950CE: Exit Sub
  loc_E950CF: ' Referenced from: E95066
  loc_E950CF: Proc_6_60_E62BC4(var_A0)
  loc_E950D4: Exit Sub
End Sub

Public Sub Proc_32_85_E836AC(arg_C) 'E836AC
  'Data Table: 59BA10
  loc_E8364A: For var_90 = 1 To CInt(Len(arg_C)): var_88 = var_90 'Integer
  loc_E8368F:   If Not(((Asc(CStr(Mid(arg_C, CLng(var_88), 1))) >= &H30) And (Asc(CStr(Mid(arg_C, CLng(var_88), 1))) <= &H39))) Then
  loc_E83692:     GoTo loc_E8369D
  loc_E83695:   End If
  loc_E83698: Next var_90 'Integer
  loc_E8369D: ' Referenced from: E83692
  loc_E836A3: Proc_32_85_E836AC = var_88
  loc_E836A9: StAryRecMove
End Sub

Public Sub Proc_32_86_118A908
  'Data Table: 59BA10
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_118A526: Me.GridSel.Rows = 1
  loc_118A53A: Me.GridSel.Cols = 5
  loc_118A53F: var_98 = 0
  loc_118A54B: var_BC = CVar(CLng(0)) 'Long
  loc_118A550: var_DC = vbNullString
  loc_118A559: LateIdCallSt
  loc_118A564: var_98 = CVar(CLng(0)) 'Long
  loc_118A569: var_BC = &H258
  loc_118A575: LateIdCallSt
  loc_118A57D: var_98 = 0
  loc_118A589: var_BC = CVar(CLng(1)) 'Long
  loc_118A58E: var_DC = "Bill No"
  loc_118A597: LateIdCallSt
  loc_118A5A2: var_98 = CVar(CLng(1)) 'Long
  loc_118A5AD: var_BC = CVar(CInt(1)) 'Integer
  loc_118A5B4: LateIdCallSt
  loc_118A5BF: var_98 = CVar(CLng(1)) 'Long
  loc_118A5CA: var_BC = CVar(CInt(1)) 'Integer
  loc_118A5D1: LateIdCallSt
  loc_118A5DC: var_98 = CVar(CLng(1)) 'Long
  loc_118A5E1: var_BC = &H5DC
  loc_118A5ED: LateIdCallSt
  loc_118A5F5: var_98 = 0
  loc_118A601: var_BC = CVar(CLng(2)) 'Long
  loc_118A606: var_DC = "DocId"
  loc_118A60F: LateIdCallSt
  loc_118A61A: var_98 = CVar(CLng(2)) 'Long
  loc_118A625: var_BC = CVar(CInt(7)) 'Integer
  loc_118A62C: LateIdCallSt
  loc_118A637: var_98 = CVar(CLng(2)) 'Long
  loc_118A642: var_BC = CVar(CInt(7)) 'Integer
  loc_118A649: LateIdCallSt
  loc_118A654: var_98 = CVar(CLng(2)) 'Long
  loc_118A659: var_BC = 0
  loc_118A665: LateIdCallSt
  loc_118A66D: var_98 = 0
  loc_118A679: var_BC = CVar(CLng(3)) 'Long
  loc_118A67E: var_DC = "Bill Date"
  loc_118A687: LateIdCallSt
  loc_118A692: var_98 = CVar(CLng(3)) 'Long
  loc_118A69D: var_BC = CVar(CInt(1)) 'Integer
  loc_118A6A4: LateIdCallSt
  loc_118A6AF: var_98 = CVar(CLng(3)) 'Long
  loc_118A6BA: var_BC = CVar(CInt(1)) 'Integer
  loc_118A6C1: LateIdCallSt
  loc_118A6CC: var_98 = CVar(CLng(3)) 'Long
  loc_118A6D1: var_BC = &H7D0
  loc_118A6DD: LateIdCallSt
  loc_118A6E5: var_98 = 0
  loc_118A6F1: var_BC = CVar(CLng(4)) 'Long
  loc_118A6F6: var_DC = "Bill Amount"
  loc_118A6FF: LateIdCallSt
  loc_118A70A: var_98 = CVar(CLng(4)) 'Long
  loc_118A715: var_BC = CVar(CInt(7)) 'Integer
  loc_118A71C: LateIdCallSt
  loc_118A727: var_98 = CVar(CLng(4)) 'Long
  loc_118A732: var_BC = CVar(CInt(7)) 'Integer
  loc_118A739: LateIdCallSt
  loc_118A744: var_98 = CVar(CLng(4)) 'Long
  loc_118A749: var_BC = &H7D0
  loc_118A755: LateIdCallSt
  loc_118A75D: var_98 = vbNullString
  loc_118A767: Set var_AC = Me.GridSel
  loc_118A78B: Me.GridSel.FixedRows = 1
  loc_118A795: Set var_88 = Nothing 
  loc_118A7A9: ReDim Preserve global_252(0 To 0)
  loc_118A7C0: global_252(0) = 0
  loc_118A7D4: Me.GridSel.Height = CVar(CDbl(3000))
  loc_118A7EF: Me.GridSel.Width = CVar(CDbl(6500))
  loc_118A7F7: var_98 = 0
  loc_118A828: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_118A837: var_98 = 0
  loc_118A868: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_118A899: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_118A8CA: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_118A8E9: Me.Check1.Value = CInt(0)
  loc_118A8FD: Me.Check1.Visible = False
  loc_118A905: Exit Sub
End Sub

Public Sub Proc_32_87_11C4150(arg_C, arg_10) '11C4150
  'Data Table: 59BA10
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_8C As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Long
  loc_11C3CFA: var_86 = &HFF
  loc_11C3CFF: var_88 = 0
  loc_11C3D0B: If (CInt(arg_10) = 1) Then
  loc_11C3D33:   For var_A8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_8A = var_A8 'Integer
  loc_11C3D3C:     var_8C = var_8A
  loc_11C3D43:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3D48:     var_D8 = 2
  loc_11C3D77:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C3D7E:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3DDD:       Call Proc_32_88_159A9D0(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), var_146, Me.GridSel.TextMatrix), 1, CVar(CLng(var_8C)), Me.GridSel.TextMatrix), 2)
  loc_11C3DFD:       If (var_146 = 0) Then
  loc_11C3E05:         Proc_32_87_11C4150 = 0
  loc_11C3E0B:       End If
  loc_11C3E0D:       var_88 = &HFF
  loc_11C3E35:       For var_14A = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_14A 'Integer
  loc_11C3E4E:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C3E69:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C3E84:         Me.GridSel.CellBackColor = &H80FF
  loc_11C3E8F:       Next var_14A 'Integer
  loc_11C3E94:     End If
  loc_11C3E97:   Next var_A8 'Integer
  loc_11C3E9C:   Exit For
  loc_11C3E9F: End If
  loc_11C3EA7: CRefVarAry
  loc_11C3EAF: For var_14E = 0 To CInt(UBound(arg_C, 1)): var_8A = var_14E 'Integer
  loc_11C3ED0:   If (arg_C(var_8A) = 0) Then
  loc_11C3ED3:     GoTo loc_11C407D
  loc_11C3ED6:   End If
  loc_11C3EE7:   var_8C = CInt(arg_C(var_8A))
  loc_11C3EF1:   var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3EF6:   var_D8 = 0
  loc_11C3F25:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11C3F2C:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3F31:     var_D8 = 2
  loc_11C3F60:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11C3F67:       var_B8 = CVar(CLng(var_8C)) 'Long
  loc_11C3FC6:       Call Proc_32_88_159A9D0(CStr(Me.GridSel.TextMatrix)), CStr(Me.GridSel.TextMatrix)), var_146, Me.GridSel.TextMatrix), 1, CVar(CLng(var_8C)), Me.GridSel.TextMatrix), 2)
  loc_11C3FE6:       If (var_146 = 0) Then
  loc_11C3FEE:         Proc_32_87_11C4150 = 0
  loc_11C3FF4:       End If
  loc_11C3FF6:       var_88 = &HFF
  loc_11C401E:       For var_152 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_152 'Integer
  loc_11C4037:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_11C4052:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_11C406D:         Me.GridSel.CellBackColor = &H80FF
  loc_11C4078:       Next var_152 'Integer
  loc_11C407D:       ' Referenced from: 11C3ED3
  loc_11C407D:     End If
  loc_11C407D:   End If
  loc_11C4080: Next var_14E 'Integer
  loc_11C4085: ' Referenced from: 11C3E9C
  loc_11C4095: If ((var_88 = 0) And (CInt(arg_10) = 0)) Then
  loc_11C409A:   var_86 = 0
  loc_11C409D:   var_B8 = 0
  loc_11C40A6:   var_D8 = 1
  loc_11C40B9:   var_A4 = Me.GridSel.TextMatrix)
  loc_11C40E1:   MsgBox(CVar("Select " & CStr(var_A4)), &H40, var_164, var_174, var_184)
  loc_11C410C:   Me.GridSel.Row = 1
  loc_11C4127:   Me.GridSel.Col = 0
  loc_11C4133:   Set var_94 = Me.GridSel
  loc_11C4144: End If
  loc_11C4144: Proc_32_87_11C4150 = GridSel.DispID_8001
  loc_11C414A: Proc_32_87_11C4150 = var_A4
End Sub

Public Sub Proc_32_88_159A9D0(arg_C) '159A9D0
  'Data Table: 59BA10
  Dim var_90 As Connection15
  Dim var_C0 As String
  Dim var_C4 As String
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_108 As Variant
  Dim unk_59BA2D As Connection15
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
  loc_159986A: Set var_90 = New 
  loc_1599875: Me.Connection15.CursorLocation = 3
  loc_1599882: var_90.IsolationLevel = &H10
  loc_159988F: var_90.CommandTimeout = 0
  loc_15998AC: var_90.Open "Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F9222C & "SaleTransfer.mdb", vbNullString, vbNullString, -1
  loc_1599908: Set var_94 = New 
  loc_159992C: Me.Recordset15.Open CVar("Select * From Stock S Where S.LOGSITE_CODE='" & MemVar_1F92078 & "' And DocId='" & arg_C & "' Order by S.Sno"), CVar(var_90), 3
  loc_1599935: Set var_9C = New 
  loc_1599952: var_D8 = CVar("Select * From SunTran S Where S.LOGSITE_CODE='" & MemVar_1F92078 & "' And DocId='" & arg_C & "' Order by S.Sno") 'String
  loc_1599959: Me.Recordset15.Open var_D8, CVar(var_90), 3
  loc_159997B: Proc_6_17_EAA2B0(var_F8, MemVar_1F92078, "Select E.PurChaseGodown,G.Name from Enviro E Left Join GodownMast G On E.PurChaseGodown=G.Code WHERE E.LOGSITE_CODE=", var_128, -1)
  loc_1599991: unk_59BA2D.Execute CStr(var_12C & var_F8), 1, -1
  loc_159999C: Set var_A0 = var_12C
  loc_15999C2: If (var_A0.RecordCount > 0) Then
  loc_15999ED:   var_B8 = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("PurchaseGodown")), 1)
  loc_1599A1E:   var_BC = Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Name")))
  loc_1599A27: End If
  loc_1599A2C: Set var_A0 = Nothing
  loc_1599A43: If (var_94.RecordCount > 0) Then
  loc_1599A55:   Me.FGrid.Redraw = False
  loc_1599A70:   Me.FGrid.Rows = 1
  loc_1599A7C:   Set var_13C = Me.FGrid
  loc_1599A96:   var_F8 = CVar(CStr(Proc_6_127_F24F80(var_13C, CInt(0)))) 'String
  loc_1599A9E:   Set var_134 = Me.FGrid
  loc_1599ACB:   Me.FGrid.FixedRows = 1
  loc_1599AED:   var_AA = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1599AF6:   ' Referenced from: 159A778
  loc_1599B05:   If Not(var_94.EOF) Then
  loc_1599B1C:     var_C0 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.ConvRatio,I.Unit,I.IssueUnit,I.SChrgApp,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,IC.taxStru,I.DiscApp as IDiscApp,I.Purchrate as IPurchRate,TS.Name as TaxStruName,IC.AcName As SaleAcCode,SG.Name As SaleAcName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode) Left Join Taxstru TS on TS.Code=IC.TaxStru left Join SubGroup SG On SG.SubCode=IC.AcName Where (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_1599B23:     var_108 = CVar(var_C0 & "' or I.LOGSITE_CODE='HO') And I.ItemType='Store' And (I.GravyItem<>'Yes' or I.GravyItem is NULL) And I.DispCode <>9999 And I.ActiveYN<>'No' And I.Code='") 'String
  loc_1599B67:     unk_59BA2D.Execute CStr(var_108 & var_94.Fields.Item("Item").Value & "'"), var_15C, -1
  loc_1599B72:     Set var_98 = var_13C
  loc_1599BA6:     If (var_98.RecordCount = 0) Then
  loc_1599BE2:       var_13C = var_94.Fields
  loc_1599BEA:       var_170 = var_13C.Item("RestCode")
  loc_1599BFD:       var_1C8 = 0
  loc_1599C34:       var_190 = "Select Max(Name) From ItemMast Where Code='" & var_94.Fields.Item("Item").Value & "' And RestCode='" & var_170.Value & "'" 
  loc_1599C42:       unk_59BA2D.Execute CStr(var_190), var_1B0, -1
  loc_1599C4A:       var_1B4 = var_1B4.Fields
  loc_1599C52:       var_1C8 = var_1B8.Item(var_1B8)
  loc_1599C5A:       var_1CC = var_1CC.Value
  loc_1599C8D:       MsgBox(CVar(Proc_6_38_E68A98(var_1DC, var_1DC, var_13C, var_AA) & " Is Not Present In Purchase Item."), &H40, "Purchase Transfer", var_22C, var_24C)
  loc_1599CC7:       Proc_32_88_159A9D0 = FGrid.DispID_10000
  loc_1599CCD:     End If
  loc_1599CCD:     var_D8 = vbNullString
  loc_1599CD7:     Set var_12C = Me.FGrid
  loc_1599CEB:     var_D8 = "VNo"
  loc_1599D07:     var_F8 = CVar(var_94.Fields.Item(var_D8)) 'Address
  loc_1599D2D:     Set var_13C = Me.Txt
  loc_1599D33:     Call 0.Method_Proc_32_88_159A9D00 (CInt(5), var_170, CStr(Trim(CVar(Proc_6_38_E68A98(var_F8, FGrid.DispID_10000, var_D8)))))
  loc_1599D3B:     var_170.Text = var_F8
  loc_1599D8B:     Set var_13C = Me.Txt
  loc_1599D91:     Call 0.Method_Proc_32_88_159A9D00 (CInt(6), var_170)
  loc_1599DB1:     Set var_250 = Me.FGrid
  loc_1599DB8:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_1599DC0:     var_118 = CVar(CLng(0)) 'Long
  loc_1599DCA:     var_F8 = CVar(CStr(var_AA)) 'String
  loc_1599DD1:     LateIdCallSt
  loc_1599DE0:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_1599DE8:     var_16C = CVar(CLng(2)) 'Long
  loc_1599E18:     var_108 = CVar(CStr(var_98.Fields.Item("Name").Value)) 'String
  loc_1599E1F:     LateIdCallSt
  loc_1599E39:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_1599E41:     var_16C = CVar(CLng(&HC)) 'Long
  loc_1599E71:     var_108 = CVar(CStr(var_98.Fields.Item("Code").Value)) 'String
  loc_1599E78:     LateIdCallSt
  loc_1599E92:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_1599E9A:     var_16C = CVar(CLng(1)) 'Long
  loc_1599ECA:     var_108 = CVar(CStr(var_98.Fields.Item("DispCode").Value)) 'String
  loc_1599ED1:     LateIdCallSt
  loc_1599EEB:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_1599EF3:     var_16C = CVar(CLng(4)) 'Long
  loc_1599F23:     var_108 = CVar(CStr(var_98.Fields.Item("Unit").Value)) 'String
  loc_1599F2A:     LateIdCallSt
  loc_1599F44:     var_E8 = CVar(CLng(var_AA)) 'Long
  loc_1599F4C:     var_16C = CVar(CLng(8)) 'Long
  loc_1599F7C:     var_108 = CVar(CStr(var_98.Fields.Item("IssueUnit").Value)) 'String
  loc_1599F83:     LateIdCallSt
  loc_1599FB9:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_1599FC1:     var_180 = CVar(CLng(6)) 'Long
  loc_1599FEE:     var_14C = CVar(CStr(Format(CVar(var_98.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1599FF5:     LateIdCallSt
  loc_159A02B:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159A033:     var_180 = CVar(CLng(5)) 'Long
  loc_159A060:     var_14C = CVar(CStr(Format(CVar(var_94.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_159A067:     LateIdCallSt
  loc_159A081:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159A089:     var_118 = CVar(CLng(5)) 'Long
  loc_159A0A4:     var_2A8 = Val(CStr(var_250.TextMatrix)))
  loc_159A0AB:     var_180 = CVar(CLng(var_AA)) 'Long
  loc_159A0B3:     var_1C8 = CVar(CLng(6)) 'Long
  loc_159A0C6:     var_C4 = CStr(var_250.TextMatrix))
  loc_159A0D5:     var_260 = CVar(CLng(var_AA)) 'Long
  loc_159A0DD:     var_280 = CVar(CLng(7)) 'Long
  loc_159A10E:     var_190 = CVar(CStr(Format(CVar((var_2A8 * Val(var_C4))), "0.000"))) 'String
  loc_159A115:     LateIdCallSt
  loc_159A15B:     var_180 = CVar(CLng(9)) 'Long
  loc_159A18F:     LateIdCallSt
  loc_159A1DA:     Set var_13C = Me.Txt
  loc_159A1E0:     Call 0.Method_Proc_32_88_159A9D00 (CInt(3), var_170, var_C4, var_250, CVar(CStr(Format(CVar(var_94.Fields.Item("Rate")), "0.00000"))), 1, 1)
  loc_159A1E8:     var_180 = Proc_6_38_E68A98(CVar(var_94.Fields.Item("VDate")))
  loc_159A1FF:     Call Proc_32_108_1067170(CStr(var_98.Fields.Item("Code").Value), var_C4, var_2A8, CVar(CLng(var_AA)), var_250)
  loc_159A208:     var_16C = CVar(CLng(var_AA)) 'Long
  loc_159A210:     var_1A0 = CVar(CLng(&HA)) 'Long
  loc_159A23D:     var_15C = CVar(CStr(Format(CVar(var_2A8), "0.00000"))) 'String
  loc_159A244:     LateIdCallSt
  loc_159A26F:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159A285:     LateIdCallSt
  loc_159A2A1:     var_D8 = "DiscApp"
  loc_159A2C6:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item(var_D8)), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_250, vbNullString, CVar(CLng(&H18)), var_D8)) 'String
  loc_159A2CD:     LateIdCallSt
  loc_159A318:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(var_AA)), var_250, var_108, var_250)) 'String
  loc_159A31F:     LateIdCallSt
  loc_159A36A:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159A371:     LateIdCallSt
  loc_159A3BC:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159A3C3:     LateIdCallSt
  loc_159A40E:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159A415:     LateIdCallSt
  loc_159A460:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159A467:     LateIdCallSt
  loc_159A4B2:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159A4B9:     LateIdCallSt
  loc_159A4EB:     var_118 = CVar(CLng(var_AA)) 'Long
  loc_159A527:     LateIdCallSt
  loc_159A576:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_AA)), var_250, CVar(CStr(Format(CVar(var_94.Fields.Item("Amount")), "0.00"))), 1, 1)) 'String
  loc_159A57D:     LateIdCallSt
  loc_159A5C8:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_250, var_108, CVar(CLng(&HB)))) 'String
  loc_159A5CF:     LateIdCallSt
  loc_159A61A:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_AA)), var_250, var_108)) 'String
  loc_159A621:     LateIdCallSt
  loc_159A637:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159A63F:     var_118 = CVar(CLng(&H17)) 'Long
  loc_159A64E:     LateIdCallSt
  loc_159A65A:     var_D8 = CVar(CLng(var_AA)) 'Long
  loc_159A662:     var_118 = CVar(CLng(&H16)) 'Long
  loc_159A671:     LateIdCallSt
  loc_159A68C:     var_D8 = "TaxStru"
  loc_159A6B1:     var_C0 = Proc_6_38_E68A98(CVar(var_98.Fields.Item(var_D8)), "Select * from taxStru where code='", var_108, -1, var_13C, var_250, var_BC)
  loc_159A6C5:     unk_59BA2D.Execute var_118 & CStr(var_250.TextMatrix)) & "'", var_D8, var_250
  loc_159A6D0:     Set var_B0 = var_13C
  loc_159A6FE:     If (var_B0.RecordCount > 0) Then
  loc_159A729:       var_134 = var_B0.Fields.Item("Rate")
  loc_159A738:       Proc_6_39_E7C810(var_108, CVar(var_134), CVar(CLng(&H11)), CVar(CLng(var_AA)))
  loc_159A741:       var_128 = CVar(CStr(var_108)) 'String
  loc_159A748:       LateIdCallSt
  loc_159A75C:     End If
  loc_159A75E:     Set var_250 = Nothing 
  loc_159A768:     var_AA = (var_AA + 1)
  loc_159A76E:     var_94.MoveNext
  loc_159A775:     var_B2 = 0
  loc_159A778:     GoTo loc_1599AF6
  loc_159A77B:     ' Referenced from: 159A8FD
  loc_159A77B:   End If
  loc_159A781:   var_136 = var_9C.EOF
  loc_159A78A:   If Not(var_136) Then
  loc_159A799:     Set var_12C = Me.LblCap
  loc_159A79F:     Call 0.Method_Proc_32_88_159A9D0C (var_136, var_AA, 1, var_B2, var_AA)
  loc_159A7AA:     For var_2B4 = var_128 To var_136: var_250 = var_2B4 'Integer
  loc_159A7BD:       Set var_12C = Me.LblCap
  loc_159A7C3:       Call 0.Method_Proc_32_88_159A9D00 (var_AA, var_134, CStr(var_250.TextMatrix)), var_128)
  loc_159A7CB:       var_B8 = var_134.Tag
  loc_159A7F1:       var_170 = var_9C.Fields.Item("SunCode")
  loc_159A815:       If (CVar(CStr(var_250.TextMatrix))) = var_170.Value) Then
  loc_159A850:         Set var_13C = Me.TxtPer
  loc_159A856:         Call 0.Method_Proc_32_88_159A9D00 (var_AA, var_170, CStr(var_9C.Fields.Item("SValue").Value))
  loc_159A85E:         var_170.Text = var_118
  loc_159A8C5:         Set var_13C = Me.TxtGt
  loc_159A8CB:         Call 0.Method_Proc_32_88_159A9D00 (var_AA, var_170, CStr(Format(CVar(var_9C.Fields.Item("Amount")), "0.00")))
  loc_159A8D3:         var_170.Text = 1
  loc_159A8ED:       End If
  loc_159A8F0:     Next var_2B4 'Integer
  loc_159A8F8:     var_9C.MoveNext
  loc_159A8FD:     GoTo loc_159A77B
  loc_159A900:   End If
  loc_159A913:   Me.FGrid.FixedRows = 1
  loc_159A91B: End If
  loc_159A929: Me.FGrid.Redraw = True
  loc_159A937: If (var_AA = 1) Then
  loc_159A94D:   Me.FGrid.Rows = 1
  loc_159A973:   var_F8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_159A97B:   Set var_134 = Me.FGrid
  loc_159A9A8:   Me.FGrid.FixedRows = 1
  loc_159A9B0: End If
  loc_159A9B5: Call Proc_32_103_17C3018(&H32, FGrid.DispID_10000)
  loc_159A9BF: Set var_94 = Nothing
  loc_159A9C7: Set var_9C = Nothing
  loc_159A9CA: Proc_32_88_159A9D0 = var_F8
End Sub

Public Sub Proc_32_89_14A1470
  'Data Table: 59BA10
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_D0 As Variant
  Dim var_D8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_12C As MSHFlexGrid
  loc_14A07C6: Me.FGrid.Left = CVar(CDbl(&H64))
  loc_14A07E1: Me.FGrid.Top = CVar(CDbl(2030))
  loc_14A07FC: Me.FGrid.Width = CVar(CDbl(16950))
  loc_14A083B: Me.LblCurStockStr.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_14A0863: Me.DGItem.Left = CVar(CDbl(3000))
  loc_14A087E: Me.DGItem.Top = CVar(CDbl(1000))
  loc_14A0891: If (global_104 <> "Yes") Then
  loc_14A08A5:   Set var_A8 = Me.DGItem
  loc_14A08C4:   DGItem.DispID_69.Item(1).Width = CDbl(0)
  loc_14A08ED:   var_94 = CVar((CDbl(Me.DGItem.Width) - CDbl(2500))) 'Single
  loc_14A08F6:   Set var_BC = Me.DGItem
  loc_14A08FC:   var_BC.Width = 1
  loc_14A090B: End If
  loc_14A0919: Set var_A8 = Me.Txt
  loc_14A091F: Call 0.Method_Proc_32_89_14A14700 (CInt(7), var_BC)
  loc_14A093E: Me.DgMR.Left = CVar(var_BC.Left)
  loc_14A095A: Set var_D0 = Me.Txt
  loc_14A0960: Call 0.Method_Proc_32_89_14A14700 (CInt(7), var_D8)
  loc_14A097B: Set var_A8 = Me.Txt
  loc_14A0981: Call 0.Method_Proc_32_89_14A14700 (CInt(7), var_BC)
  loc_14A0999: var_94 = CVar(((var_BC.Top + var_D8.Height) + CDbl(&H1E))) 'Single
  loc_14A09A8: Me.DgMR.Top = CVar(var_BC.Left)
  loc_14A09CD: Me.DGRest.Left = CVar(CDbl(3000))
  loc_14A09E8: Me.DGRest.Top = CVar(CDbl(1000))
  loc_14A0A1C: var_94 = CVar((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width))) 'Single
  loc_14A0A2B: Me.DGGod.Left = CVar(CDbl(1000))
  loc_14A0A62: Me.DGGod.Top = CVar(CDbl(Me.FGrid.Top))
  loc_14A0A75: Set var_E4 = Me.FGrid
  loc_14A0A8C: global_112 = CStr(CLng(var_E4.BackColor))
  loc_14A0AA2: var_E4.Cols = &H23
  loc_14A0AAA: var_94 = CVar(CLng(0)) 'Long
  loc_14A0AAF: var_F8 = &H190
  loc_14A0ABB: LateIdCallSt
  loc_14A0AC3: var_94 = 0
  loc_14A0ACF: var_F8 = CVar(CLng(&HD)) 'Long
  loc_14A0AD4: var_118 = "KSNo"
  loc_14A0ADD: LateIdCallSt
  loc_14A0AE8: var_94 = CVar(CLng(&HD)) 'Long
  loc_14A0AED: var_F8 = 0
  loc_14A0AF9: LateIdCallSt
  loc_14A0B01: var_94 = 0
  loc_14A0B0D: var_F8 = CVar(CLng(1)) 'Long
  loc_14A0B12: var_118 = "Item Code"
  loc_14A0B1B: LateIdCallSt
  loc_14A0B26: var_94 = CVar(CLng(1)) 'Long
  loc_14A0B31: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A0B38: LateIdCallSt
  loc_14A0B43: var_94 = CVar(CLng(1)) 'Long
  loc_14A0B48: var_F8 = 0
  loc_14A0B54: LateIdCallSt
  loc_14A0B5C: var_94 = 0
  loc_14A0B68: var_F8 = CVar(CLng(2)) 'Long
  loc_14A0B6D: var_118 = "Item Name"
  loc_14A0B76: LateIdCallSt
  loc_14A0B81: var_94 = CVar(CLng(2)) 'Long
  loc_14A0B8C: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A0B93: LateIdCallSt
  loc_14A0B9E: var_94 = CVar(CLng(2)) 'Long
  loc_14A0BA3: var_F8 = &HC80
  loc_14A0BAF: LateIdCallSt
  loc_14A0BB7: var_94 = 0
  loc_14A0BC3: var_F8 = CVar(CLng(3)) 'Long
  loc_14A0BC8: var_118 = "MR.No"
  loc_14A0BD1: LateIdCallSt
  loc_14A0BDC: var_94 = CVar(CLng(3)) 'Long
  loc_14A0BE7: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0BEE: LateIdCallSt
  loc_14A0BF9: var_94 = CVar(CLng(3)) 'Long
  loc_14A0C04: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0C0B: LateIdCallSt
  loc_14A0C16: var_94 = CVar(CLng(3)) 'Long
  loc_14A0C1B: var_F8 = &H2EE
  loc_14A0C27: LateIdCallSt
  loc_14A0C2F: var_94 = 0
  loc_14A0C3B: var_F8 = CVar(CLng(4)) 'Long
  loc_14A0C40: var_118 = "Unit"
  loc_14A0C49: LateIdCallSt
  loc_14A0C54: var_94 = CVar(CLng(4)) 'Long
  loc_14A0C5F: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A0C66: LateIdCallSt
  loc_14A0C71: var_94 = CVar(CLng(4)) 'Long
  loc_14A0C76: var_F8 = &H320
  loc_14A0C82: LateIdCallSt
  loc_14A0C8A: var_94 = 0
  loc_14A0C96: var_F8 = CVar(CLng(5)) 'Long
  loc_14A0C9B: var_118 = "Qty"
  loc_14A0CA4: LateIdCallSt
  loc_14A0CAF: var_94 = CVar(CLng(5)) 'Long
  loc_14A0CBA: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0CC1: LateIdCallSt
  loc_14A0CCC: var_94 = CVar(CLng(5)) 'Long
  loc_14A0CD7: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0CDE: LateIdCallSt
  loc_14A0CE9: var_94 = CVar(CLng(5)) 'Long
  loc_14A0CEE: var_F8 = &H384
  loc_14A0CFA: LateIdCallSt
  loc_14A0D02: var_94 = 0
  loc_14A0D0E: var_F8 = CVar(CLng(6)) 'Long
  loc_14A0D13: var_118 = "Con.Ratio"
  loc_14A0D1C: LateIdCallSt
  loc_14A0D27: var_94 = CVar(CLng(6)) 'Long
  loc_14A0D32: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0D39: LateIdCallSt
  loc_14A0D44: var_94 = CVar(CLng(6)) 'Long
  loc_14A0D4F: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0D56: LateIdCallSt
  loc_14A0D61: var_94 = CVar(CLng(6)) 'Long
  loc_14A0D66: var_F8 = 0
  loc_14A0D72: LateIdCallSt
  loc_14A0D7A: var_94 = 0
  loc_14A0D86: var_F8 = CVar(CLng(7)) 'Long
  loc_14A0D8B: var_118 = "Wt Qty"
  loc_14A0D94: LateIdCallSt
  loc_14A0D9F: var_94 = CVar(CLng(7)) 'Long
  loc_14A0DAA: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0DB1: LateIdCallSt
  loc_14A0DBC: var_94 = CVar(CLng(7)) 'Long
  loc_14A0DC7: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0DCE: LateIdCallSt
  loc_14A0DD9: var_94 = CVar(CLng(7)) 'Long
  loc_14A0DDE: var_F8 = &H3E8
  loc_14A0DEA: LateIdCallSt
  loc_14A0DF2: var_94 = 0
  loc_14A0DFE: var_F8 = CVar(CLng(8)) 'Long
  loc_14A0E03: var_118 = "Wt.Unit"
  loc_14A0E0C: LateIdCallSt
  loc_14A0E17: var_94 = CVar(CLng(8)) 'Long
  loc_14A0E22: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A0E29: LateIdCallSt
  loc_14A0E34: var_94 = CVar(CLng(8)) 'Long
  loc_14A0E39: var_F8 = &H320
  loc_14A0E45: LateIdCallSt
  loc_14A0E4D: var_94 = 0
  loc_14A0E59: var_F8 = CVar(CLng(9)) 'Long
  loc_14A0E5E: var_118 = "Rate"
  loc_14A0E67: LateIdCallSt
  loc_14A0E72: var_94 = CVar(CLng(9)) 'Long
  loc_14A0E7D: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0E84: LateIdCallSt
  loc_14A0E8F: var_94 = CVar(CLng(9)) 'Long
  loc_14A0E9A: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0EA1: LateIdCallSt
  loc_14A0EAC: var_94 = CVar(CLng(9)) 'Long
  loc_14A0EB1: var_F8 = &H4B0
  loc_14A0EBD: LateIdCallSt
  loc_14A0EC5: var_94 = 0
  loc_14A0ED1: var_F8 = CVar(CLng(&HA)) 'Long
  loc_14A0ED6: var_118 = "Rate1"
  loc_14A0EDF: LateIdCallSt
  loc_14A0EEA: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A0EF5: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0EFC: LateIdCallSt
  loc_14A0F07: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A0F12: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0F19: LateIdCallSt
  loc_14A0F24: var_94 = CVar(CLng(&HA)) 'Long
  loc_14A0F29: var_F8 = 0
  loc_14A0F35: LateIdCallSt
  loc_14A0F3D: var_94 = 0
  loc_14A0F49: var_F8 = CVar(CLng(&HB)) 'Long
  loc_14A0F4E: var_118 = "Amount"
  loc_14A0F57: LateIdCallSt
  loc_14A0F62: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A0F6D: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0F74: LateIdCallSt
  loc_14A0F7F: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A0F8A: var_F8 = CVar(CInt(7)) 'Integer
  loc_14A0F91: LateIdCallSt
  loc_14A0F9C: var_94 = CVar(CLng(&HB)) 'Long
  loc_14A0FA1: var_F8 = &H44C
  loc_14A0FAD: LateIdCallSt
  loc_14A0FB8: var_94 = CVar(CLng(&HE)) 'Long
  loc_14A0FBD: var_F8 = 0
  loc_14A0FC9: LateIdCallSt
  loc_14A0FD4: var_94 = CVar(CLng(&HC)) 'Long
  loc_14A0FD9: var_F8 = 0
  loc_14A0FE5: LateIdCallSt
  loc_14A0FF0: var_94 = CVar(CLng(&HF)) 'Long
  loc_14A0FF5: var_F8 = 0
  loc_14A1001: LateIdCallSt
  loc_14A100C: var_94 = CVar(CLng(&H10)) 'Long
  loc_14A1011: var_F8 = 0
  loc_14A101D: LateIdCallSt
  loc_14A1028: var_94 = CVar(CLng(&H11)) 'Long
  loc_14A102D: var_F8 = 0
  loc_14A1039: LateIdCallSt
  loc_14A1044: var_94 = CVar(CLng(&H12)) 'Long
  loc_14A1049: var_F8 = 0
  loc_14A1055: LateIdCallSt
  loc_14A1060: var_94 = CVar(CLng(&H13)) 'Long
  loc_14A1065: var_F8 = 0
  loc_14A1071: LateIdCallSt
  loc_14A107C: var_94 = CVar(CLng(&H15)) 'Long
  loc_14A1081: var_F8 = 0
  loc_14A108D: LateIdCallSt
  loc_14A1098: var_94 = CVar(CLng(&H14)) 'Long
  loc_14A109D: var_F8 = 0
  loc_14A10A9: LateIdCallSt
  loc_14A10B4: var_94 = CVar(CLng(&H19)) 'Long
  loc_14A10B9: var_F8 = &H578
  loc_14A10C5: LateIdCallSt
  loc_14A10D0: var_94 = CVar(CLng(&H1A)) 'Long
  loc_14A10D5: var_F8 = 0
  loc_14A10E1: LateIdCallSt
  loc_14A10EC: var_94 = CVar(CLng(&H1B)) 'Long
  loc_14A10F1: var_F8 = &HBB8
  loc_14A10FD: LateIdCallSt
  loc_14A1108: var_94 = CVar(CLng(&H1C)) 'Long
  loc_14A110D: var_F8 = 0
  loc_14A1119: LateIdCallSt
  loc_14A1124: var_94 = CVar(CLng(&H1D)) 'Long
  loc_14A1129: var_F8 = 0
  loc_14A1135: LateIdCallSt
  loc_14A1140: var_94 = CVar(CLng(&H1E)) 'Long
  loc_14A1145: var_F8 = 0
  loc_14A1151: LateIdCallSt
  loc_14A1159: var_94 = 0
  loc_14A1165: var_F8 = CVar(CLng(&HC)) 'Long
  loc_14A116A: var_118 = "Item Code"
  loc_14A1173: LateIdCallSt
  loc_14A117B: var_94 = 0
  loc_14A1187: var_F8 = CVar(CLng(&HF)) 'Long
  loc_14A118C: var_118 = "Disc %"
  loc_14A1195: LateIdCallSt
  loc_14A119D: var_94 = 0
  loc_14A11A9: var_F8 = CVar(CLng(&H10)) 'Long
  loc_14A11AE: var_118 = "Disc Amt."
  loc_14A11B7: LateIdCallSt
  loc_14A11BF: var_94 = 0
  loc_14A11CB: var_F8 = CVar(CLng(&H11)) 'Long
  loc_14A11D0: var_118 = "Tax %"
  loc_14A11D9: LateIdCallSt
  loc_14A11E1: var_94 = 0
  loc_14A11ED: var_F8 = CVar(CLng(&H12)) 'Long
  loc_14A11F2: var_118 = "Tax Amt"
  loc_14A11FB: LateIdCallSt
  loc_14A1203: var_94 = 0
  loc_14A120F: var_F8 = CVar(CLng(&H13)) 'Long
  loc_14A1214: var_118 = "Total"
  loc_14A121D: LateIdCallSt
  loc_14A1225: var_94 = 0
  loc_14A1231: var_F8 = CVar(CLng(&H15)) 'Long
  loc_14A1236: var_118 = "R Off"
  loc_14A123F: LateIdCallSt
  loc_14A1247: var_94 = 0
  loc_14A1253: var_F8 = CVar(CLng(&H14)) 'Long
  loc_14A1258: var_118 = "Disc Y/N"
  loc_14A1261: LateIdCallSt
  loc_14A1269: var_94 = 0
  loc_14A1275: var_F8 = CVar(CLng(&H19)) 'Long
  loc_14A127A: var_118 = "Tax Structure"
  loc_14A1283: LateIdCallSt
  loc_14A128B: var_94 = 0
  loc_14A1297: var_F8 = CVar(CLng(&H1A)) 'Long
  loc_14A129C: var_118 = "Tax Cat Code"
  loc_14A12A5: LateIdCallSt
  loc_14A12AD: var_94 = 0
  loc_14A12B9: var_F8 = CVar(CLng(&H1B)) 'Long
  loc_14A12BE: var_118 = "A/C Name"
  loc_14A12C7: LateIdCallSt
  loc_14A12CF: var_94 = 0
  loc_14A12DB: var_F8 = CVar(CLng(&H1C)) 'Long
  loc_14A12E0: var_118 = "A/C Code"
  loc_14A12E9: LateIdCallSt
  loc_14A12F1: var_94 = 0
  loc_14A12FD: var_F8 = CVar(CLng(&H16)) 'Long
  loc_14A1302: var_118 = "Godown"
  loc_14A130B: LateIdCallSt
  loc_14A1316: var_94 = CVar(CLng(&H16)) 'Long
  loc_14A1321: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A1328: LateIdCallSt
  loc_14A1333: var_94 = CVar(CLng(&H16)) 'Long
  loc_14A133E: var_F8 = CVar(CInt(1)) 'Integer
  loc_14A1345: LateIdCallSt
  loc_14A1350: var_94 = CVar(CLng(&H16)) 'Long
  loc_14A1355: var_F8 = &H802
  loc_14A1361: LateIdCallSt
  loc_14A136C: var_94 = CVar(CLng(&H17)) 'Long
  loc_14A1371: var_F8 = 0
  loc_14A137D: LateIdCallSt
  loc_14A1388: var_94 = CVar(CLng(&H18)) 'Long
  loc_14A138D: var_F8 = 0
  loc_14A1399: LateIdCallSt
  loc_14A13A4: var_94 = CVar(CLng(&H1F)) 'Long
  loc_14A13A9: var_F8 = 0
  loc_14A13B5: LateIdCallSt
  loc_14A13C0: var_94 = CVar(CLng(&H20)) 'Long
  loc_14A13C5: var_F8 = 0
  loc_14A13D1: LateIdCallSt
  loc_14A13DC: var_94 = CVar(CLng(&H21)) 'Long
  loc_14A13E1: var_F8 = 0
  loc_14A13ED: LateIdCallSt
  loc_14A13F8: var_94 = CVar(CLng(&H22)) 'Long
  loc_14A13FD: var_F8 = 0
  loc_14A1409: LateIdCallSt
  loc_14A1413: Set var_E4 = Nothing 
  loc_14A141B: Set var_12C = Me.FGCat
  loc_14A1432: global_112 = CStr(CLng(var_12C.BackColor))
  loc_14A143F: var_94 = CVar(CLng(3)) 'Long
  loc_14A1444: var_F8 = &H7D0
  loc_14A1450: LateIdCallSt
  loc_14A1464: var_12C.Cols = 7
  loc_14A146B: Set var_12C = Nothing 
  loc_14A146F: Exit Sub
End Sub

Public Sub Proc_32_90_F7413C
  'Data Table: 59BA10
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  loc_F74000: Set var_88 = Me.TopCtrl1
  loc_F74006: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_F7401F: If (CStr() = "Browse") Then
  loc_F74022:   Exit Sub
  loc_F74023: End If
  loc_F74062: If ((CLng(Me.FGrid.Row) > 0) And (CLng(Me.FGrid.Col) = CLng(9))) Then
  loc_F74078:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74080:   var_E0 = CVar(CLng(&HE)) 'Long
  loc_F740B3:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_F740BF:     Call FGrid_UnknownEvent_C()
  loc_F740C9:     global_154 = 0
  loc_F740CF:   Else
  loc_F740E2:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F740EA:     var_E0 = CVar(CLng(9)) 'Long
  loc_F74122:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_F7412E:       Call FGrid_UnknownEvent_C()
  loc_F74138:       global_154 = 0
  loc_F7413B:     End If
  loc_F7413B:   End If
  loc_F7413B: End If
  loc_F7413B: Exit Sub
End Sub

Public Sub Proc_32_91_1AFCAE0(arg_C) '1AFCAE0
  'Data Table: 59BA10
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
  Dim unk_59BA2D As Connection15
  Dim var_98 As Recordset15
  Dim var_24C As Double
  Dim var_204 As Variant
  Dim var_94 As Integer
  loc_1AF8624: If (arg_C = 0) Then
  loc_1AF864A:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_1AF8664:     If (Me.RecordCount > 0) Then
  loc_1AF866D:       Me.MoveFirst
  loc_1AF8672:     End If
  loc_1AF8689:     If (Me.RecordCount > 0) Then
  loc_1AF8698:       Set var_A0 = Me.TxtGrid
  loc_1AF869E:       Call 0.Method_Proc_32_91_1AFCAE00 (0, var_BC, var_C0)
  loc_1AF86A6:       var_B4 = var_BC.Text
  loc_1AF86B3:       var_E0 = Val(var_C0)
  loc_1AF86D9:       Me.Find "DispCode=" & CStr(var_E0), 0, 1
  loc_1AF86EE:     End If
  loc_1AF873C:     Set var_A0 = Me.TxtGrid
  loc_1AF8742:     Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1AF874A:     var_D8 = var_BC.Text
  loc_1AF8762:     If (var_E0 Or (var_C0 = vbNullString)) Then
  loc_1AF8778:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8780:       var_104 = CVar(CLng(2)) 'Long
  loc_1AF8785:       var_124 = vbNullString
  loc_1AF878F:       Set var_BC = Me.FGrid
  loc_1AF8795:       LateIdCallSt
  loc_1AF87BA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF87C2:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1AF87C7:       var_124 = vbNullString
  loc_1AF87D1:       Set var_BC = Me.FGrid
  loc_1AF87D7:       LateIdCallSt
  loc_1AF87FC:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8804:       var_104 = CVar(CLng(1)) 'Long
  loc_1AF8809:       var_124 = vbNullString
  loc_1AF8813:       Set var_BC = Me.FGrid
  loc_1AF8819:       LateIdCallSt
  loc_1AF883E:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8846:       var_104 = CVar(CLng(4)) 'Long
  loc_1AF884B:       var_124 = vbNullString
  loc_1AF8855:       Set var_BC = Me.FGrid
  loc_1AF885B:       LateIdCallSt
  loc_1AF8880:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8888:       var_104 = CVar(CLng(1)) 'Long
  loc_1AF888D:       var_124 = vbNullString
  loc_1AF8897:       Set var_BC = Me.FGrid
  loc_1AF889D:       LateIdCallSt
  loc_1AF88C2:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF88CA:       var_104 = CVar(CLng(9)) 'Long
  loc_1AF88CF:       var_124 = vbNullString
  loc_1AF88D9:       Set var_BC = Me.FGrid
  loc_1AF88DF:       LateIdCallSt
  loc_1AF8904:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF890C:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1AF8911:       var_124 = vbNullString
  loc_1AF891B:       Set var_BC = Me.FGrid
  loc_1AF8921:       LateIdCallSt
  loc_1AF8946:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF894E:       var_104 = CVar(CLng(&H18)) 'Long
  loc_1AF8953:       var_124 = vbNullString
  loc_1AF895D:       Set var_BC = Me.FGrid
  loc_1AF8963:       LateIdCallSt
  loc_1AF8988:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8990:       var_104 = CVar(CLng(&H14)) 'Long
  loc_1AF8995:       var_124 = vbNullString
  loc_1AF899F:       Set var_BC = Me.FGrid
  loc_1AF89A5:       LateIdCallSt
  loc_1AF89CA:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF89D2:       var_104 = CVar(CLng(&H15)) 'Long
  loc_1AF89D7:       var_124 = vbNullString
  loc_1AF89E1:       Set var_BC = Me.FGrid
  loc_1AF89E7:       LateIdCallSt
  loc_1AF8A0C:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8A14:       var_104 = CVar(CLng(&H1A)) 'Long
  loc_1AF8A19:       var_124 = vbNullString
  loc_1AF8A23:       Set var_BC = Me.FGrid
  loc_1AF8A29:       LateIdCallSt
  loc_1AF8A4E:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8A56:       var_104 = CVar(CLng(&H19)) 'Long
  loc_1AF8A5B:       var_124 = vbNullString
  loc_1AF8A65:       Set var_BC = Me.FGrid
  loc_1AF8A6B:       LateIdCallSt
  loc_1AF8A90:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8A98:       var_104 = CVar(CLng(&H1C)) 'Long
  loc_1AF8A9D:       var_124 = vbNullString
  loc_1AF8AA7:       Set var_BC = Me.FGrid
  loc_1AF8AAD:       LateIdCallSt
  loc_1AF8AD2:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8ADA:       var_104 = CVar(CLng(&H1B)) 'Long
  loc_1AF8ADF:       var_124 = vbNullString
  loc_1AF8AE9:       Set var_BC = Me.FGrid
  loc_1AF8AEF:       LateIdCallSt
  loc_1AF8B14:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8B1C:       var_104 = CVar(CLng(&H1E)) 'Long
  loc_1AF8B21:       var_124 = vbNullString
  loc_1AF8B2B:       Set var_BC = Me.FGrid
  loc_1AF8B31:       LateIdCallSt
  loc_1AF8B46:     Else
  loc_1AF8B5F:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8B67:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1AF8B81:       var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AF8B9F:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8BA7:       var_168 = CVar(CLng(&HC)) 'Long
  loc_1AF8BC1:       var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1AF8C2C:       If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(&HC)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_1AF8C42:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8C4A:         var_114 = CVar(CLng(2)) 'Long
  loc_1AF8C7D:         var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1AF8C85:         Set var_17C = Me.FGrid
  loc_1AF8C8B:         LateIdCallSt
  loc_1AF8CBA:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8CC2:         var_114 = CVar(CLng(&HC)) 'Long
  loc_1AF8CF5:         var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1AF8CFD:         Set var_17C = Me.FGrid
  loc_1AF8D03:         LateIdCallSt
  loc_1AF8D32:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8D3A:         var_114 = CVar(CLng(1)) 'Long
  loc_1AF8D6D:         var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1AF8D75:         Set var_17C = Me.FGrid
  loc_1AF8D7B:         LateIdCallSt
  loc_1AF8DAA:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8DB2:         var_114 = CVar(CLng(4)) 'Long
  loc_1AF8DE5:         var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1AF8DED:         Set var_17C = Me.FGrid
  loc_1AF8DF3:         LateIdCallSt
  loc_1AF8E22:         var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF8E2A:         var_114 = CVar(CLng(8)) 'Long
  loc_1AF8E5D:         var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1AF8E65:         Set var_17C = Me.FGrid
  loc_1AF8E6B:         LateIdCallSt
  loc_1AF8E9B:         var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AF8EA8:         var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AF8EB0:         var_104 = CVar(CLng(0)) 'Long
  loc_1AF8EBA:         var_B0 = CVar(CStr(var_92)) 'String
  loc_1AF8EC2:         Set var_A0 = Me.FGrid
  loc_1AF8EC8:         LateIdCallSt
  loc_1AF8EDA:         var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AF8EE2:         var_104 = CVar(CLng(5)) 'Long
  loc_1AF8EFC:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AF8F12:         If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1AF8F19:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AF8F21:           var_104 = CVar(CLng(5)) 'Long
  loc_1AF8F26:           var_124 = "1.000"
  loc_1AF8F30:           Set var_A0 = Me.FGrid
  loc_1AF8F36:           LateIdCallSt
  loc_1AF8F41:         End If
  loc_1AF8F47:         var_D8 = "Code"
  loc_1AF8F56:         var_A0 = Me.Fields
  loc_1AF8F79:         Set var_148 = Me.Txt
  loc_1AF8F7F:         Call 0.Method_Proc_32_91_1AFCAE00 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1AF8F87:         var_104 = var_17C.Text
  loc_1AF8F9E:         Call Proc_32_108_1067170(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1AF8FBE:         var_134 = CVar(CLng(9)) 'Long
  loc_1AF8FF9:         LateIdCallSt
  loc_1AF9043:         var_BC = Me.Fields.Item("Code")
  loc_1AF905E:         Set var_148 = Me.Txt
  loc_1AF9064:         Call 0.Method_Proc_32_91_1AFCAE00 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1AF906C:         var_134 = var_17C.Text
  loc_1AF9083:         Call Proc_32_108_1067170(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1AF909B:         var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF90A3:         var_134 = CVar(CLng(&HA)) 'Long
  loc_1AF90D0:         var_1F4 = CVar(CStr(Format(CVar(var_E0), "0.00000"))) 'String
  loc_1AF90D8:         Set var_1E4 = Me.FGrid
  loc_1AF90DE:         LateIdCallSt
  loc_1AF910B:       End If
  loc_1AF9139:       Set var_A0 = Me.Txt
  loc_1AF913F:       Call 0.Method_Proc_32_91_1AFCAE00 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), var_1E4, var_1F4)
  loc_1AF9147:       1 = var_BC.Tag
  loc_1AF914F:       var_144 = CVar(var_C0) 'String
  loc_1AF915D:       LateIdCallSt
  loc_1AF9181:       var_144 = Me.FGrid.Row
  loc_1AF91C2:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1AF91D0:       LateIdCallSt
  loc_1AF9235:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AF9243:       LateIdCallSt
  loc_1AF92A8:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AF92B6:       LateIdCallSt
  loc_1AF931B:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AF9329:       LateIdCallSt
  loc_1AF938E:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AF939C:       LateIdCallSt
  loc_1AF9401:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AF940F:       LateIdCallSt
  loc_1AF942D:       Set var_148 = Me.FGrid
  loc_1AF9474:       var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(var_148.Row)), Me.FGrid, var_158)) 'String
  loc_1AF947C:       Set var_17C = Me.FGrid
  loc_1AF9482:       LateIdCallSt
  loc_1AF94AF:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF94B7:       var_104 = CVar(CLng(&H17)) 'Long
  loc_1AF94C6:       var_144 = Me.FGrid.TextMatrix)
  loc_1AF94F9:       If (Trim(CVar(CStr(var_144))) = vbNullString) Then
  loc_1AF950F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9517:         var_104 = CVar(CLng(&H17)) 'Long
  loc_1AF952A:         Set var_BC = Me.FGrid
  loc_1AF9530:         LateIdCallSt
  loc_1AF9555:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF955D:         var_104 = CVar(CLng(&H16)) 'Long
  loc_1AF9570:         Set var_BC = Me.FGrid
  loc_1AF9576:         LateIdCallSt
  loc_1AF9588:       End If
  loc_1AF959B:       var_D8 = "TaxStru"
  loc_1AF95B2:       var_BC = Me.Fields.Item(var_D8)
  loc_1AF95C3:       var_C0 = Proc_6_38_E68A98(CVar(var_BC), "Select * from taxStru where code='", var_144, -1, var_148, var_BC, global_236)
  loc_1AF95C7:       var_C4 = var_104 & var_C0
  loc_1AF95D7:       unk_59BA2D.Execute var_C4 & "'", var_D8, var_BC
  loc_1AF95E2:       Set var_98 = var_148
  loc_1AF9610:       If (var_98.RecordCount > 0) Then
  loc_1AF964A:         var_BC = var_98.Fields.Item("Rate")
  loc_1AF9659:         Proc_6_39_E7C810(var_144, CVar(var_BC), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1AF9662:         var_18C = CVar(CStr(var_144)) 'String
  loc_1AF966A:         Set var_17C = Me.FGrid
  loc_1AF9670:         LateIdCallSt
  loc_1AF968C:       End If
  loc_1AF9691:       Call Proc_32_103_17C3018(&H32, var_17C, var_18C)
  loc_1AF9696:     End If
  loc_1AF9699:   Else
  loc_1AF96A0:     If (var_B4 = CLng(2)) Then
  loc_1AF96F1:       Set var_A0 = Me.TxtGrid
  loc_1AF96F7:       Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1AF96FF:       global_232 = var_BC.Text
  loc_1AF9717:       If (var_104 Or (var_C0 = vbNullString)) Then
  loc_1AF972D:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9735:         var_104 = CVar(CLng(2)) 'Long
  loc_1AF973A:         var_124 = vbNullString
  loc_1AF9744:         Set var_BC = Me.FGrid
  loc_1AF974A:         LateIdCallSt
  loc_1AF976F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9777:         var_104 = CVar(CLng(&HC)) 'Long
  loc_1AF977C:         var_124 = vbNullString
  loc_1AF9786:         Set var_BC = Me.FGrid
  loc_1AF978C:         LateIdCallSt
  loc_1AF97B1:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF97B9:         var_104 = CVar(CLng(1)) 'Long
  loc_1AF97BE:         var_124 = vbNullString
  loc_1AF97C8:         Set var_BC = Me.FGrid
  loc_1AF97CE:         LateIdCallSt
  loc_1AF97F3:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF97FB:         var_104 = CVar(CLng(4)) 'Long
  loc_1AF9800:         var_124 = vbNullString
  loc_1AF980A:         Set var_BC = Me.FGrid
  loc_1AF9810:         LateIdCallSt
  loc_1AF9835:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF983D:         var_104 = CVar(CLng(1)) 'Long
  loc_1AF9842:         var_124 = vbNullString
  loc_1AF984C:         Set var_BC = Me.FGrid
  loc_1AF9852:         LateIdCallSt
  loc_1AF9877:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF987F:         var_104 = CVar(CLng(9)) 'Long
  loc_1AF9884:         var_124 = vbNullString
  loc_1AF988E:         Set var_BC = Me.FGrid
  loc_1AF9894:         LateIdCallSt
  loc_1AF98B9:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF98C1:         var_104 = CVar(CLng(&HA)) 'Long
  loc_1AF98C6:         var_124 = vbNullString
  loc_1AF98D0:         Set var_BC = Me.FGrid
  loc_1AF98D6:         LateIdCallSt
  loc_1AF98FB:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9903:         var_104 = CVar(CLng(&H18)) 'Long
  loc_1AF9908:         var_124 = vbNullString
  loc_1AF9912:         Set var_BC = Me.FGrid
  loc_1AF9918:         LateIdCallSt
  loc_1AF993D:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9945:         var_104 = CVar(CLng(&H1E)) 'Long
  loc_1AF994A:         var_124 = vbNullString
  loc_1AF9954:         Set var_BC = Me.FGrid
  loc_1AF995A:         LateIdCallSt
  loc_1AF997F:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9987:         var_104 = CVar(CLng(6)) 'Long
  loc_1AF998C:         var_124 = vbNullString
  loc_1AF9996:         Set var_BC = Me.FGrid
  loc_1AF999C:         LateIdCallSt
  loc_1AF99C1:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF99C9:         var_104 = CVar(CLng(&H19)) 'Long
  loc_1AF99CE:         var_124 = vbNullString
  loc_1AF99D8:         Set var_BC = Me.FGrid
  loc_1AF99DE:         LateIdCallSt
  loc_1AF9A03:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9A0B:         var_104 = CVar(CLng(&H1A)) 'Long
  loc_1AF9A10:         var_124 = vbNullString
  loc_1AF9A1A:         Set var_BC = Me.FGrid
  loc_1AF9A20:         LateIdCallSt
  loc_1AF9A45:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9A4D:         var_104 = CVar(CLng(&H1B)) 'Long
  loc_1AF9A52:         var_124 = vbNullString
  loc_1AF9A5C:         Set var_BC = Me.FGrid
  loc_1AF9A62:         LateIdCallSt
  loc_1AF9A87:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9A8F:         var_104 = CVar(CLng(&H1C)) 'Long
  loc_1AF9A94:         var_124 = vbNullString
  loc_1AF9A9E:         Set var_BC = Me.FGrid
  loc_1AF9AA4:         LateIdCallSt
  loc_1AF9AB9:       Else
  loc_1AF9AC7:         Set var_A0 = Me.Txt
  loc_1AF9ACD:         Call 0.Method_Proc_32_91_1AFCAE00 (CInt(7), var_BC, var_C0, var_BC, var_124, var_104, var_D8)
  loc_1AF9AD5:         var_BC = var_BC.Text
  loc_1AF9AF1:         If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1AF9B08:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AF9B24:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9B2C:           var_114 = CVar(CLng(2)) 'Long
  loc_1AF9B5F:           var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1AF9B67:           Set var_17C = Me.FGrid
  loc_1AF9B6D:           LateIdCallSt
  loc_1AF9B9C:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9BA4:           var_114 = CVar(CLng(&HC)) 'Long
  loc_1AF9BD7:           var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1AF9BDF:           Set var_17C = Me.FGrid
  loc_1AF9BE5:           LateIdCallSt
  loc_1AF9C14:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9C1C:           var_114 = CVar(CLng(1)) 'Long
  loc_1AF9C4F:           var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1AF9C57:           Set var_17C = Me.FGrid
  loc_1AF9C5D:           LateIdCallSt
  loc_1AF9C8C:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9C94:           var_114 = CVar(CLng(4)) 'Long
  loc_1AF9CC7:           var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1AF9CCF:           Set var_17C = Me.FGrid
  loc_1AF9CD5:           LateIdCallSt
  loc_1AF9D04:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9D0C:           var_114 = CVar(CLng(8)) 'Long
  loc_1AF9D3F:           var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1AF9D47:           Set var_17C = Me.FGrid
  loc_1AF9D4D:           LateIdCallSt
  loc_1AF9D9B:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AF9DA3:           var_124 = CVar(CLng(6)) 'Long
  loc_1AF9DD0:           var_1A0 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1AF9DD8:           Set var_17C = Me.FGrid
  loc_1AF9DDE:           LateIdCallSt
  loc_1AF9E10:           var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AF9E1D:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AF9E25:           var_104 = CVar(CLng(0)) 'Long
  loc_1AF9E2F:           var_B0 = CVar(CStr(var_92)) 'String
  loc_1AF9E37:           Set var_A0 = Me.FGrid
  loc_1AF9E3D:           LateIdCallSt
  loc_1AF9E4F:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AF9E57:           var_104 = CVar(CLng(5)) 'Long
  loc_1AF9E71:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AF9E87:           If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1AF9E8E:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AF9E96:             var_104 = CVar(CLng(5)) 'Long
  loc_1AF9E9B:             var_124 = "1.000"
  loc_1AF9EA5:             Set var_A0 = Me.FGrid
  loc_1AF9EAB:             LateIdCallSt
  loc_1AF9EB6:           End If
  loc_1AF9EBC:           var_D8 = "Code"
  loc_1AF9ECB:           var_A0 = Me.Fields
  loc_1AF9EEE:           Set var_148 = Me.Txt
  loc_1AF9EF4:           Call 0.Method_Proc_32_91_1AFCAE00 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1AF9EFC:           var_104 = var_17C.Text
  loc_1AF9F13:           Call Proc_32_108_1067170(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1AF9F33:           var_134 = CVar(CLng(9)) 'Long
  loc_1AF9F6E:           LateIdCallSt
  loc_1AF9FB8:           var_BC = Me.Fields.Item("Code")
  loc_1AF9FD3:           Set var_148 = Me.Txt
  loc_1AF9FD9:           Call 0.Method_Proc_32_91_1AFCAE00 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1AF9FE1:           var_134 = var_17C.Text
  loc_1AF9FF8:           Call Proc_32_108_1067170(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1AFA010:           var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFA018:           var_134 = CVar(CLng(&HA)) 'Long
  loc_1AFA053:           LateIdCallSt
  loc_1AFA0AE:           Set var_A0 = Me.Txt
  loc_1AFA0B4:           Call 0.Method_Proc_32_91_1AFCAE00 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))))
  loc_1AFA0BC:           1 = var_BC.Tag
  loc_1AFA0C4:           var_144 = CVar(var_C0) 'String
  loc_1AFA0D2:           LateIdCallSt
  loc_1AFA0F6:           var_144 = Me.FGrid.Row
  loc_1AFA137:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1AFA145:           LateIdCallSt
  loc_1AFA1AA:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFA1B8:           LateIdCallSt
  loc_1AFA21D:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFA22B:           LateIdCallSt
  loc_1AFA290:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFA29E:           LateIdCallSt
  loc_1AFA303:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFA311:           LateIdCallSt
  loc_1AFA376:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFA384:           LateIdCallSt
  loc_1AFA3E9:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFA3F1:           Set var_17C = Me.FGrid
  loc_1AFA3F7:           LateIdCallSt
  loc_1AFA424:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFA42C:           var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFA46E:           If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1AFA484:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFA48C:             var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFA49F:             Set var_BC = Me.FGrid
  loc_1AFA4A5:             LateIdCallSt
  loc_1AFA4CA:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFA4D2:             var_104 = CVar(CLng(&H16)) 'Long
  loc_1AFA4E5:             Set var_BC = Me.FGrid
  loc_1AFA4EB:             LateIdCallSt
  loc_1AFA4FD:           End If
  loc_1AFA501:           var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFA509:           var_104 = CVar(CLng(5)) 'Long
  loc_1AFA52B:           var_E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFA541:           var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFA549:           var_168 = CVar(CLng(&HA)) 'Long
  loc_1AFA56B:           var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFA5C8:           LateIdCallSt
  loc_1AFA642:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar((var_E0 * var_24C)), "0.00"))), 1, 1)) 'String
  loc_1AFA650:           LateIdCallSt
  loc_1AFA6B5:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158, CVar(CLng(&HB)))) 'String
  loc_1AFA6C3:           LateIdCallSt
  loc_1AFA728:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFA736:           LateIdCallSt
  loc_1AFA754:           Set var_148 = Me.FGrid
  loc_1AFA75A:           var_144 = var_148.Row
  loc_1AFA79B:           var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_144)), Me.FGrid, var_158)) 'String
  loc_1AFA7A9:           LateIdCallSt
  loc_1AFA7FE:           var_C0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_144, -1, var_148, Me.FGrid)
  loc_1AFA812:           unk_59BA2D.Execute var_158 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid.Row)), var_24C
  loc_1AFA81D:           Set var_98 = var_148
  loc_1AFA84B:           If (var_98.RecordCount > 0) Then
  loc_1AFA894:             Proc_6_39_E7C810(var_144, CVar(var_98.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFA89D:             var_18C = CVar(CStr(var_144)) 'String
  loc_1AFA8A5:             Set var_17C = Me.FGrid
  loc_1AFA8AB:             LateIdCallSt
  loc_1AFA8C7:           End If
  loc_1AFA8CC:           Call Proc_32_103_17C3018(&H32, var_17C, var_18C)
  loc_1AFA8D4:         Else
  loc_1AFA8ED:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFA8F5:           var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFA90F:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AFA94F:           var_C4 = CStr(Me.FGrid.TextMatrix))
  loc_1AFA996:           Set var_250 = Me.TopCtrl1
  loc_1AFA99C:           Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005((CVar(CLng(&HC)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString)))
  loc_1AFA9DB:           If (CVar(CLng(Me.FGrid.Row)) Or ((CVar(CLng(&HC)) = var_C4) And (CStr(CVar(CLng(Me.FGrid.Row))) = "Add"))) Then
  loc_1AFA9F2:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AFAA0E:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFAA16:             var_114 = CVar(CLng(2)) 'Long
  loc_1AFAA49:             var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1AFAA51:             Set var_17C = Me.FGrid
  loc_1AFAA57:             LateIdCallSt
  loc_1AFAA86:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFAA8E:             var_114 = CVar(CLng(&HC)) 'Long
  loc_1AFAAC1:             var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1AFAAC9:             Set var_17C = Me.FGrid
  loc_1AFAACF:             LateIdCallSt
  loc_1AFAAFE:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFAB06:             var_114 = CVar(CLng(1)) 'Long
  loc_1AFAB39:             var_158 = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1AFAB41:             Set var_17C = Me.FGrid
  loc_1AFAB47:             LateIdCallSt
  loc_1AFAB76:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFAB7E:             var_114 = CVar(CLng(4)) 'Long
  loc_1AFABB1:             var_158 = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1AFABB9:             Set var_17C = Me.FGrid
  loc_1AFABBF:             LateIdCallSt
  loc_1AFABEE:             var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFABF6:             var_114 = CVar(CLng(8)) 'Long
  loc_1AFAC29:             var_158 = CVar(CStr(Me.Fields.Item("IssueUnit").Value)) 'String
  loc_1AFAC31:             Set var_17C = Me.FGrid
  loc_1AFAC37:             LateIdCallSt
  loc_1AFAC85:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFAC8D:             var_124 = CVar(CLng(6)) 'Long
  loc_1AFACBA:             var_1A0 = CVar(CStr(Format(CVar(Me.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1AFACC2:             Set var_17C = Me.FGrid
  loc_1AFACC8:             LateIdCallSt
  loc_1AFACFA:             var_92 = CInt(CLng(Me.FGrid.Row))
  loc_1AFAD07:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFAD0F:             var_104 = CVar(CLng(0)) 'Long
  loc_1AFAD19:             var_B0 = CVar(CStr(var_92)) 'String
  loc_1AFAD21:             Set var_A0 = Me.FGrid
  loc_1AFAD27:             LateIdCallSt
  loc_1AFAD39:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFAD41:             var_104 = CVar(CLng(5)) 'Long
  loc_1AFAD5B:             var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AFAD71:             If (CDbl(Val(var_C0)) = CDbl(0)) Then
  loc_1AFAD78:               var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFAD80:               var_104 = CVar(CLng(5)) 'Long
  loc_1AFAD85:               var_124 = "1.000"
  loc_1AFAD8F:               Set var_A0 = Me.FGrid
  loc_1AFAD95:               LateIdCallSt
  loc_1AFADA0:             End If
  loc_1AFADA6:             var_D8 = "Code"
  loc_1AFADB5:             var_A0 = Me.Fields
  loc_1AFADD8:             Set var_148 = Me.Txt
  loc_1AFADDE:             Call 0.Method_Proc_32_91_1AFCAE00 (CInt(3), var_17C, var_C4, var_A0, var_124, var_104, var_D8)
  loc_1AFADE6:             var_104 = var_17C.Text
  loc_1AFADFD:             Call Proc_32_108_1067170(CStr(var_A0.Item(var_D8).Value), var_C4, var_E0, var_D8, var_A0)
  loc_1AFAE1D:             var_134 = CVar(CLng(9)) 'Long
  loc_1AFAE58:             LateIdCallSt
  loc_1AFAEA2:             var_BC = Me.Fields.Item("Code")
  loc_1AFAEBD:             Set var_148 = Me.Txt
  loc_1AFAEC3:             Call 0.Method_Proc_32_91_1AFCAE00 (CInt(3), var_17C, var_C4, Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))), 1, 1)
  loc_1AFAECB:             var_134 = var_17C.Text
  loc_1AFAEE2:             Call Proc_32_108_1067170(CStr(var_BC.Value), var_C4, var_E0, CVar(CLng(Me.FGrid.Row)))
  loc_1AFAEFA:             var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFAF02:             var_134 = CVar(CLng(&HA)) 'Long
  loc_1AFAF3D:             LateIdCallSt
  loc_1AFAF98:             Set var_A0 = Me.Txt
  loc_1AFAF9E:             Call 0.Method_Proc_32_91_1AFCAE00 (CInt(7), var_BC, var_C0, CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_E0), "0.00000"))))
  loc_1AFAFA6:             1 = var_BC.Tag
  loc_1AFAFAE:             var_144 = CVar(var_C0) 'String
  loc_1AFAFBC:             LateIdCallSt
  loc_1AFAFE0:             var_144 = Me.FGrid.Row
  loc_1AFB021:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_144)), Me.FGrid, var_144, 1)) 'String
  loc_1AFB02F:             LateIdCallSt
  loc_1AFB094:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFB0A2:             LateIdCallSt
  loc_1AFB107:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFB115:             LateIdCallSt
  loc_1AFB17A:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStruName")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFB188:             LateIdCallSt
  loc_1AFB1ED:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFB1FB:             LateIdCallSt
  loc_1AFB260:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFB26E:             LateIdCallSt
  loc_1AFB2D3:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H1E)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFB2DB:             Set var_17C = Me.FGrid
  loc_1AFB2E1:             LateIdCallSt
  loc_1AFB30E:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB316:             var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFB358:             If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_1AFB36E:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB376:               var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFB389:               Set var_BC = Me.FGrid
  loc_1AFB38F:               LateIdCallSt
  loc_1AFB3B4:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB3BC:               var_104 = CVar(CLng(&H16)) 'Long
  loc_1AFB3CF:               Set var_BC = Me.FGrid
  loc_1AFB3D5:               LateIdCallSt
  loc_1AFB3E7:             End If
  loc_1AFB3EB:             var_D8 = CVar(CLng(var_92)) 'Long
  loc_1AFB3F3:             var_104 = CVar(CLng(5)) 'Long
  loc_1AFB42B:             var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB433:             var_168 = CVar(CLng(&HA)) 'Long
  loc_1AFB455:             var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFB4B2:             LateIdCallSt
  loc_1AFB52C:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_24C)), "0.00"))), 1, 1)) 'String
  loc_1AFB53A:             LateIdCallSt
  loc_1AFB59F:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("IDiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158, CVar(CLng(&HB)))) 'String
  loc_1AFB5AD:             LateIdCallSt
  loc_1AFB612:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_158)) 'String
  loc_1AFB620:             LateIdCallSt
  loc_1AFB63E:             Set var_148 = Me.FGrid
  loc_1AFB644:             var_144 = var_148.Row
  loc_1AFB685:             var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H1F)), CVar(CLng(var_144)), Me.FGrid, var_158)) 'String
  loc_1AFB693:             LateIdCallSt
  loc_1AFB6E8:             var_C0 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_144, -1, var_148, Me.FGrid)
  loc_1AFB6EC:             var_C4 = var_158 & CStr(Me.FGrid.TextMatrix))
  loc_1AFB6FC:             unk_59BA2D.Execute var_C4 & "'", CVar(CLng(Me.FGrid.Row)), var_24C
  loc_1AFB707:             Set var_98 = var_148
  loc_1AFB735:             If (var_98.RecordCount > 0) Then
  loc_1AFB77E:               Proc_6_39_E7C810(var_144, CVar(var_98.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFB787:               var_18C = CVar(CStr(var_144)) 'String
  loc_1AFB78F:               Set var_17C = Me.FGrid
  loc_1AFB795:               LateIdCallSt
  loc_1AFB7B1:             End If
  loc_1AFB7B6:             Call Proc_32_103_17C3018(&H32, var_17C, var_18C)
  loc_1AFB7BB:           End If
  loc_1AFB7BB:         End If
  loc_1AFB7BB:       End If
  loc_1AFB7CE:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB7D6:       var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFB7DF:       Set var_BC = Me.FGrid
  loc_1AFB7E5:       var_144 = var_BC.TextMatrix)
  loc_1AFB804:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFB80C:       var_168 = CVar(CLng(5)) 'Long
  loc_1AFB815:       Set var_17C = Me.FGrid
  loc_1AFB82E:       var_24C = Val(CStr(var_17C.TextMatrix)))
  loc_1AFB88C:       var_94 = Proc_96_27_11F27DC(CStr(var_144), var_24C, MemVar_1F92070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFB8C6:       Me.LblCurStockStr.Caption = global_56
  loc_1AFB8D1:     Else
  loc_1AFB8D8:       If Not (var_B4 = CLng(5)) Then
  loc_1AFB8E2:         If (var_B4 = CLng(6)) Then
  loc_1AFB8E5:         End If
  loc_1AFB8EF:         Set var_A0 = Me.TxtGrid
  loc_1AFB8F5:         Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_94, var_24C, var_168, var_124)
  loc_1AFB90D:         If Not(IsNumeric(CVar(var_BC))) Then
  loc_1AFB921:           Set var_A0 = Me.TxtGrid
  loc_1AFB927:           Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, CStr(0), var_144)
  loc_1AFB92F:           var_BC.Text = var_104
  loc_1AFB93E:         End If
  loc_1AFB948:         var_158 = Me.FGrid.Row
  loc_1AFB951:         var_124 = CVar(CLng(var_158)) 'Long
  loc_1AFB968:         var_18C = Me.FGrid.TextMatrix)
  loc_1AFB97B:         var_E0 = Val(CStr(var_18C))
  loc_1AFB9A2:         Set var_BC = Me.FGrid
  loc_1AFB9A8:         var_144 = var_BC.TextMatrix)
  loc_1AFB9B3:         var_C0 = CStr(var_144)
  loc_1AFB9CC:         Set var_148 = Me.TxtGrid
  loc_1AFB9D2:         Call 0.Method_Proc_32_91_1AFCAE00 (0, var_17C, var_C4, (CDbl(Val(var_C0)) > CDbl(0)), CVar(CLng(&H22)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFBA11:         If (CVar(CLng(&H22)) And (CDbl(Val(var_C4)) > CDbl(var_17C.Text))) Then
  loc_1AFBA2D:           MsgBox("Quantity Can't be greater the MRN Quantity ", 0, var_144, var_158, var_18C)
  loc_1AFBA42:           Proc_32_91_1AFCAE0 = 0
  loc_1AFBA48:         End If
  loc_1AFBA65:         If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_1AFBA74:           Set var_A0 = Me.TxtGrid
  loc_1AFBA7A:           Call 0.Method_Proc_32_91_1AFCAE00 (0, var_BC, var_C0, var_124)
  loc_1AFBA82:           var_D8 = var_BC.Text
  loc_1AFBA8F:           var_E0 = Val(var_C0)
  loc_1AFBAA7:           If (global_208 <> CDbl(var_E0)) Then
  loc_1AFBAD9:             If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_144, var_158, var_18C) = 7) Then
  loc_1AFBAE4:               var_C0 = CStr(global_208)
  loc_1AFBAF0:               Set var_A0 = Me.TxtGrid
  loc_1AFBAF6:               Call 0.Method_Proc_32_91_1AFCAE00 (0, var_BC, var_C0)
  loc_1AFBAFE:               var_BC.Text = var_E0
  loc_1AFBB0D:             End If
  loc_1AFBB0D:           End If
  loc_1AFBB0D:         End If
  loc_1AFBB2A:         If (CLng(Me.FGrid.Col) = CLng(6)) Then
  loc_1AFBB39:           Set var_A0 = Me.TxtGrid
  loc_1AFBB3F:           Call 0.Method_Proc_32_91_1AFCAE00 (0, var_BC, var_C0)
  loc_1AFBB47:           var_168 = var_BC.Text
  loc_1AFBB5F:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFBB77:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AFBBA3:           var_1F4 = CVar(CStr(Format(CVar(var_C0), "0.00000"))) 'String
  loc_1AFBBAB:           Set var_190 = Me.FGrid
  loc_1AFBBB1:           LateIdCallSt
  loc_1AFBBD8:         Else
  loc_1AFBBE4:           Set var_A0 = Me.TxtGrid
  loc_1AFBBEA:           Call 0.Method_Proc_32_91_1AFCAE00 (0, var_BC, var_C0, var_190, var_1F4)
  loc_1AFBBF2:           1 = var_BC.Text
  loc_1AFBC0A:           var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFBC22:           var_114 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AFBC4E:           var_1F4 = CVar(CStr(Format(CVar(var_C0), "0.000"))) 'String
  loc_1AFBC56:           Set var_190 = Me.FGrid
  loc_1AFBC5C:           LateIdCallSt
  loc_1AFBC80:         End If
  loc_1AFBC93:         var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFBC9B:         var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFBCA4:         Set var_BC = Me.FGrid
  loc_1AFBCAA:         var_144 = var_BC.TextMatrix)
  loc_1AFBCF3:         var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFBD51:         var_94 = Proc_96_27_11F27DC(CStr(var_144), var_24C, MemVar_1F92070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFBD8B:         Me.LblCurStockStr.Caption = global_56
  loc_1AFBD98:         Call Proc_32_103_17C3018(&H32, var_94, var_24C, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFBDA0:       Else
  loc_1AFBDA7:         If (var_B4 = CLng(9)) Then
  loc_1AFBDB4:           Set var_A0 = Me.TxtGrid
  loc_1AFBDBA:           Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_144, var_104)
  loc_1AFBDD2:           If Not(IsNumeric(CVar(var_BC))) Then
  loc_1AFBDD9:             var_C0 = CStr(0)
  loc_1AFBDE6:             Set var_A0 = Me.TxtGrid
  loc_1AFBDEC:             Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0)
  loc_1AFBDF4:             var_BC.Text = var_D8
  loc_1AFBE03:           End If
  loc_1AFBE10:           Set var_A0 = Me.TxtGrid
  loc_1AFBE16:           Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0)
  loc_1AFBE1E:           var_190 = var_BC.Text
  loc_1AFBE41:           var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFBE59:           var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AFBE94:           LateIdCallSt
  loc_1AFBEC0:           Call Proc_32_103_17C3018(&H32, Me.FGrid, CVar(CStr(Format(CVar(Val(var_C0)), "0.00000"))), 1, 1)
  loc_1AFBEC8:         Else
  loc_1AFBECF:           If (var_B4 = CLng(&HB)) Then
  loc_1AFBEDC:             Set var_A0 = Me.TxtGrid
  loc_1AFBEE2:             Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_124)
  loc_1AFBEFA:             If Not(IsNumeric(CVar(var_BC))) Then
  loc_1AFBF01:               var_C0 = CStr(0)
  loc_1AFBF0E:               Set var_A0 = Me.TxtGrid
  loc_1AFBF14:               Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0)
  loc_1AFBF1C:               var_BC.Text = var_104
  loc_1AFBF2B:             End If
  loc_1AFBF38:             Set var_A0 = Me.TxtGrid
  loc_1AFBF3E:             Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0)
  loc_1AFBF46:             var_E0 = var_BC.Text
  loc_1AFBF69:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFBF81:             var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1AFBFBC:             LateIdCallSt
  loc_1AFC007:             Set var_BC = Me.FGrid
  loc_1AFC018:             var_C0 = CStr(var_BC.TextMatrix))
  loc_1AFC036:             If (CDbl(Val(var_C0)) <> CDbl(0)) Then
  loc_1AFC046:               Set var_A0 = Me.TxtGrid
  loc_1AFC04C:               Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0, CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(Val(var_C0)), "0.00"))))
  loc_1AFC054:               1 = var_BC.Text
  loc_1AFC077:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC07F:               var_104 = CVar(CLng(5)) 'Long
  loc_1AFC0A1:               var_24C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1AFC0B7:               var_168 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC0BF:               var_1B0 = CVar(CLng(9)) 'Long
  loc_1AFC0F0:               var_204 = CVar(CStr(Format(CVar((Val(var_C0) / var_24C)), "0.00000"))) 'String
  loc_1AFC0F8:               Set var_1E4 = Me.FGrid
  loc_1AFC0FE:               LateIdCallSt
  loc_1AFC12D:             End If
  loc_1AFC132:             Call Proc_32_103_17C3018(&H32, var_1E4, var_204, 1, 1, var_1B0, var_168, var_24C)
  loc_1AFC13A:           Else
  loc_1AFC141:             If (var_B4 = CLng(&H16)) Then
  loc_1AFC192:               Set var_A0 = Me.TxtGrid
  loc_1AFC198:               Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_104, var_D8)
  loc_1AFC1A0:               var_E0 = var_BC.Text
  loc_1AFC1B8:               If (1 Or (var_C0 = vbNullString)) Then
  loc_1AFC1CE:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC1D6:                 var_104 = CVar(CLng(&H16)) 'Long
  loc_1AFC1DB:                 var_124 = vbNullString
  loc_1AFC1E5:                 Set var_BC = Me.FGrid
  loc_1AFC1EB:                 LateIdCallSt
  loc_1AFC210:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC218:                 var_104 = CVar(CLng(&H17)) 'Long
  loc_1AFC21D:                 var_124 = vbNullString
  loc_1AFC227:                 Set var_BC = Me.FGrid
  loc_1AFC22D:                 LateIdCallSt
  loc_1AFC242:               Else
  loc_1AFC255:                 var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC25D:                 var_114 = CVar(CLng(&H16)) 'Long
  loc_1AFC290:                 var_158 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1AFC298:                 Set var_17C = Me.FGrid
  loc_1AFC29E:                 LateIdCallSt
  loc_1AFC2CD:                 var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC2D5:                 var_114 = CVar(CLng(&H17)) 'Long
  loc_1AFC308:                 var_158 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1AFC310:                 Set var_17C = Me.FGrid
  loc_1AFC316:                 LateIdCallSt
  loc_1AFC332:               End If
  loc_1AFC367:               var_158 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AFC36D:               var_18C = Trim(var_158)
  loc_1AFC38F:               If (var_18C = vbNullString) Then
  loc_1AFC398:                 Call 0.Method_arg_50 (var_C0, CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1AFC3B9:                 MsgBox("Godown Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1AFC3CE:                 Proc_32_91_1AFCAE0 = 0
  loc_1AFC3D4:               End If
  loc_1AFC408:               global_232 = CStr(Me.Fields.Item("Code").Value)
  loc_1AFC44D:               global_236 = CStr(Me.Fields.Item("Name").Value)
  loc_1AFC471:               var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC479:               var_104 = CVar(CLng(&HC)) 'Long
  loc_1AFC482:               Set var_BC = Me.FGrid
  loc_1AFC488:               var_144 = var_BC.TextMatrix)
  loc_1AFC4A7:               var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC4AF:               var_168 = CVar(CLng(5)) 'Long
  loc_1AFC4C9:               var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_1AFC4D1:               var_24C = Val(var_C0)
  loc_1AFC52F:               var_94 = Proc_96_27_11F27DC(CStr(var_144), var_24C, MemVar_1F92070, CStr(Me.FGrid.TextMatrix)), global_56, Me.FGrid.TextMatrix), CVar(CLng(&H17)), CVar(CLng(Me.FGrid.Row)))
  loc_1AFC569:               Me.LblCurStockStr.Caption = global_56
  loc_1AFC574:             Else
  loc_1AFC57B:               If (var_B4 = CLng(&H19)) Then
  loc_1AFC5D5:                 Set var_A0 = Me.TxtGrid
  loc_1AFC5DB:                 Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))), var_94, var_24C, var_168)
  loc_1AFC5E3:                 var_124 = var_BC.Text
  loc_1AFC5FB:                 If (var_144 Or (var_C0 = vbNullString)) Then
  loc_1AFC611:                   var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC619:                   var_104 = CVar(CLng(&H19)) 'Long
  loc_1AFC61E:                   var_124 = vbNullString
  loc_1AFC628:                   Set var_BC = Me.FGrid
  loc_1AFC62E:                   LateIdCallSt
  loc_1AFC653:                   var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC65B:                   var_104 = CVar(CLng(&H1A)) 'Long
  loc_1AFC660:                   var_124 = vbNullString
  loc_1AFC66A:                   Set var_BC = Me.FGrid
  loc_1AFC670:                   LateIdCallSt
  loc_1AFC685:                 Else
  loc_1AFC68F:                   var_B0 = Me.FGrid.Row
  loc_1AFC698:                   var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AFC6A0:                   var_114 = CVar(CLng(&H19)) 'Long
  loc_1AFC6D6:                   var_158 = CVar(CStr(Me.var_B0.Fields.Item("Name").Value)) 'String
  loc_1AFC6DE:                   Set var_17C = Me.FGrid
  loc_1AFC6E4:                   LateIdCallSt
  loc_1AFC70A:                   var_B0 = Me.FGrid.Row
  loc_1AFC713:                   var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AFC71B:                   var_114 = CVar(CLng(&H1A)) 'Long
  loc_1AFC751:                   var_158 = CVar(CStr(Me.var_B0.Fields.Item("Code").Value)) 'String
  loc_1AFC759:                   Set var_17C = Me.FGrid
  loc_1AFC75F:                   LateIdCallSt
  loc_1AFC77B:                 End If
  loc_1AFC79F:                 Set var_BC = Me.FGrid
  loc_1AFC7B0:                 var_158 = CVar(CStr(var_BC.TextMatrix))) 'String
  loc_1AFC7B6:                 var_18C = Trim(var_158)
  loc_1AFC7BE:                 var_124 = vbNullString
  loc_1AFC7D8:                 If (var_18C = var_124) Then
  loc_1AFC7E1:                   Call 0.Method_arg_50 (var_C0, CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1AFC802:                   MsgBox("Tax Structure is  Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1AFC817:                   Proc_32_91_1AFCAE0 = 0
  loc_1AFC81D:                 End If
  loc_1AFC822:                 Call Proc_32_103_17C3018(&H32, var_158, var_114, var_F4)
  loc_1AFC82A:               Else
  loc_1AFC831:                 If (var_B4 = CLng(&H1B)) Then
  loc_1AFC88B:                   Set var_A0 = Me.TxtGrid
  loc_1AFC891:                   Call 0.Method_Proc_32_91_1AFCAE00 (arg_C, var_BC, var_C0, ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_1AFC899:                   var_BC = var_BC.Text
  loc_1AFC8B1:                   If (var_124 Or (var_C0 = vbNullString)) Then
  loc_1AFC8C7:                     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC8CF:                     var_104 = CVar(CLng(&H1B)) 'Long
  loc_1AFC8D4:                     var_124 = vbNullString
  loc_1AFC8DE:                     Set var_BC = Me.FGrid
  loc_1AFC8E4:                     LateIdCallSt
  loc_1AFC909:                     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1AFC911:                     var_104 = CVar(CLng(&H1C)) 'Long
  loc_1AFC916:                     var_124 = vbNullString
  loc_1AFC920:                     Set var_BC = Me.FGrid
  loc_1AFC926:                     LateIdCallSt
  loc_1AFC93B:                   Else
  loc_1AFC945:                     var_B0 = Me.FGrid.Row
  loc_1AFC94E:                     var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AFC956:                     var_114 = CVar(CLng(&H1B)) 'Long
  loc_1AFC98C:                     var_158 = CVar(CStr(Me.var_B0.Fields.Item("Name").Value)) 'String
  loc_1AFC994:                     Set var_17C = Me.FGrid
  loc_1AFC99A:                     LateIdCallSt
  loc_1AFC9C0:                     var_B0 = Me.FGrid.Row
  loc_1AFC9C9:                     var_F4 = CVar(CLng(var_B0)) 'Long
  loc_1AFC9D1:                     var_114 = CVar(CLng(&H1C)) 'Long
  loc_1AFCA07:                     var_158 = CVar(CStr(Me.var_B0.Fields.Item("Code").Value)) 'String
  loc_1AFCA0F:                     Set var_17C = Me.FGrid
  loc_1AFCA15:                     LateIdCallSt
  loc_1AFCA31:                   End If
  loc_1AFCA66:                   var_158 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1AFCA6C:                   var_18C = Trim(var_158)
  loc_1AFCA8E:                   If (var_18C = vbNullString) Then
  loc_1AFCA97:                     Call 0.Method_arg_50 (var_C0, CVar(CLng(&H1B)), CVar(CLng(Me.FGrid.Row)), var_17C, var_158, var_114, var_F4, var_17C)
  loc_1AFCAB8:                     MsgBox("A/C Name is  Required", &H40, CVar(var_C0), var_158, var_18C)
  loc_1AFCACD:                     Proc_32_91_1AFCAE0 = 0
  loc_1AFCAD3:                   End If
  loc_1AFCAD3:                 End If
  loc_1AFCAD3:               End If
  loc_1AFCAD3:             End If
  loc_1AFCAD3:           End If
  loc_1AFCAD3:         End If
  loc_1AFCAD3:       End If
  loc_1AFCAD3:     End If
  loc_1AFCAD3:   End If
  loc_1AFCAD3: End If
  loc_1AFCAD8: Proc_32_91_1AFCAE0 = &HFF
End Sub

Public Sub Proc_32_92_1A04FC4
  'Data Table: 59BA10
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_114 As String
  Dim unk_59BA2D As Connection15
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
  loc_1A01C74: On Error Goto loc_1A04F70
  loc_1A01C8E: If (Me.RecordCount > 0) Then
  loc_1A01C9E:   Me.LblCurStockStr.Caption = vbNullString
  loc_1A01CE5:   var_F0 = "Select P.*,S.Name as PartyName From Purch1 P Left Join SubGroup S on S.SubCode=P.Party Where P.Docid='" & Me.Fields.Item("DocID").Value 
  loc_1A01CFC:   unk_59BA2D.Execute CStr(var_F0 & "'"), var_134, -1
  loc_1A01D07:   Set var_88 = var_138
  loc_1A01D5B:   var_138 = var_88.Fields
  loc_1A01DC4:   var_1A0 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_138.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1A01E09:   Me.LblUser.Caption = CStr(var_138 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_1A0)))
  loc_1A01E83:   var_13C = var_88.Fields.Item("U_AE")
  loc_1A01E97:   var_150 = "entdt : "
  loc_1A01EB0:   var_140 = Proc_6_38_E68A98(CVar(var_13C))
  loc_1A01EE4:   var_1A0 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((var_140 = "E"), "Last Update : ", var_150))
  loc_1A01F03:   var_1B8 = var_88.Fields.Item("U_EntDt")
  loc_1A01F29:   Me.LblLDt.Caption = CStr(var_1A0 & CVar(Proc_6_38_E68A98(CVar(var_1B8))))
  loc_1A01F64:   Set var_1FC = var_88 
  loc_1A01FA1:   Set var_138 = Me.Txt
  loc_1A01FA7:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(0), var_13C)
  loc_1A01FAF:   var_13C.Text = CStr(var_1FC.Fields.Item("DocID").Value)
  loc_1A01FEB:   var_F0 = Trim(CVar(var_1FC.Fields.Item("vType")))
  loc_1A01FFA:   global_140 = CStr(var_F0)
  loc_1A02044:   Set var_138 = Me.Txt
  loc_1A0204A:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(1), var_13C)
  loc_1A02052:   var_13C.Tag = CStr(var_1FC.Fields.Item("vType").Value)
  loc_1A0209E:   Set var_138 = Me.Txt
  loc_1A020A4:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(4), var_13C)
  loc_1A020AC:   var_13C.Tag = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("Party")))
  loc_1A020F6:   Set var_138 = Me.Txt
  loc_1A020FC:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(4), var_13C)
  loc_1A02104:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("PartyName")))
  loc_1A0214E:   Set var_138 = Me.Txt
  loc_1A02154:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(8), var_13C)
  loc_1A0215C:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("CashParty")))
  loc_1A021A6:   Set var_138 = Me.Txt
  loc_1A021AC:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(5), var_13C)
  loc_1A021B4:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("PartyBillNo")))
  loc_1A021FE:   Set var_138 = Me.Txt
  loc_1A02204:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(6), var_13C)
  loc_1A0220C:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("PartyBillDt")))
  loc_1A02256:   Set var_138 = Me.Txt
  loc_1A0225C:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(&HB), var_13C)
  loc_1A02264:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("TINNo")))
  loc_1A022AE:   Set var_138 = Me.Txt
  loc_1A022B4:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(&HC), var_13C)
  loc_1A022BC:   var_13C.Text = Proc_6_38_E68A98(CVar(var_1FC.Fields.Item("Remark")))
  loc_1A022EF:   var_D0 = CVar(var_1FC.Fields.Item("InvoiceNo")) 'Address
  loc_1A022F6:   Proc_6_39_E7C810(var_F0)
  loc_1A0230C:   Me.LblInvoiceNo.Caption = CStr(var_F0)
  loc_1A02339:   var_C0 = var_1FC.Fields.Item("Payable")
  loc_1A02348:   Proc_6_39_E7C810(var_F0, CVar(var_C0))
  loc_1A02355:   Set var_138 = Me.ChkPayable
  loc_1A0235B:   var_138.Value = CInt(var_F0)
  loc_1A0237B:   Set var_AC = Me.Opt
  loc_1A02381:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(0), var_C0)
  loc_1A02389:   var_C0.Enabled = False
  loc_1A023A2:   Set var_AC = Me.Opt
  loc_1A023A8:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(1), var_C0)
  loc_1A023B0:   var_C0.Enabled = False
  loc_1A023C9:   Set var_AC = Me.Opt
  loc_1A023CF:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(2), var_C0)
  loc_1A023D7:   var_C0.Enabled = False
  loc_1A023FA:   var_C0 = var_1FC.Fields.Item("InvoiceType")
  loc_1A0240B:   var_200 = Proc_6_38_E68A98(CVar(var_C0))
  loc_1A0241C:   If (var_200 = "Sale Invoice") Then
  loc_1A0242C:     Set var_AC = Me.Opt
  loc_1A02432:     Call 0.Method_Proc_32_92_1A04FC40 (CInt(0), var_C0)
  loc_1A0243A:     var_C0.Value = True
  loc_1A02449:   Else
  loc_1A02451:     If (var_200 = "Tax Invoice") Then
  loc_1A02461:       Set var_AC = Me.Opt
  loc_1A02467:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(1), var_C0)
  loc_1A0246F:       var_C0.Value = True
  loc_1A0247E:     Else
  loc_1A0248B:       Set var_AC = Me.Opt
  loc_1A02491:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(2), var_C0)
  loc_1A02499:       var_C0.Value = True
  loc_1A024A5:     End If
  loc_1A024A5:   End If
  loc_1A024D1:   Set var_AC = Me.Txt
  loc_1A024D7:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(1), var_C0, var_140, CVar("Select NCAT,Description  From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and V_Type='"))
  loc_1A024DF:   var_190 = var_C0.Tag
  loc_1A024E7:   var_D0 = CVar(var_140) 'String
  loc_1A024F5:   var_134 = -1 & Trim(var_D0) 
  loc_1A0250C:   unk_59BA2D.Execute CStr(var_150 & "'"), var_138, var_D0
  loc_1A02517:   Set var_94 = var_138
  loc_1A02550:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1A0257C:     var_F0 = Trim(CVar(Me.Recordset15.Fields.Item("NCat")))
  loc_1A0258F:     global_132 = Proc_6_38_E68A98(var_F0)
  loc_1A025BA:     var_C0 = Me.Recordset15.Fields.Item("Description")
  loc_1A025C2:     var_D0 = CVar(var_C0) 'Address
  loc_1A025D9:     Set var_138 = Me.Txt
  loc_1A025DF:     Call 0.Method_Proc_32_92_1A04FC40 (CInt(1), var_13C)
  loc_1A025E7:     var_13C.Text = Proc_6_38_E68A98(var_D0)
  loc_1A025FB:   End If
  loc_1A02601:   var_E0 = 0
  loc_1A0263F:   unk_59BA2D.Execute "Select NCAT From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and V_Type='" & global_140 & "'", var_D0, -1
  loc_1A02647:   var_AC = var_AC.Fields
  loc_1A0264F:   var_E0 = var_C0.Item(var_C0)
  loc_1A02657:   var_138 = var_138.Value
  loc_1A02671:   global_132 = CStr(Trim(var_F0))
  loc_1A02694:   Call Proc_32_110_112EE94(var_F0)
  loc_1A026D2:   Set var_138 = Me.Txt
  loc_1A026D8:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(2), var_13C)
  loc_1A026E0:   var_13C.Text = CStr(var_1FC.Fields.Item("VNo").Value)
  loc_1A0270D:   var_C0 = var_1FC.Fields.Item("VDate")
  loc_1A02748:   Set var_138 = Me.Txt
  loc_1A0274E:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(3), var_13C, CStr(Format(CVar(var_C0), "DD/MMM/YYYY")))
  loc_1A02756:   var_13C.Text = 1
  loc_1A02770:   Call Proc_32_110_112EE94(1)
  loc_1A02780:   Set var_AC = Me.Txt
  loc_1A02786:   Call 0.Method_Proc_32_92_1A04FC40 (CInt(3))
  loc_1A027B8:   Call Proc_32_102_17D7AB4(CDate(Format(CVar(var_C0), "DD/MMM/YYYY")), 1)
  loc_1A02805:   Me.LblVPrefix.Caption = CStr(Trim(CVar(var_1FC.Fields.Item("vPrefix"))))
  loc_1A0282A:   var_AC = var_88.Fields
  loc_1A02843:   var_124 = IsNull(CVar(var_AC.Item("BillImagePath")))
  loc_1A0284A:   var_E0 = "BillImagePath"
  loc_1A02875:   var_100 = vbNullString
  loc_1A02897:   If CBool(var_124 Or (Trim(CVar(var_88.Fields.Item(var_E0))) = var_100)) Then
  loc_1A028B8:     Me.Global.LoadPicture var_BC, var_E0, var_100, var_124, var_150
  loc_1A028CD:     Me.BillImage.Picture = var_AC
  loc_1A028E6:     Me.BillImage.Tag = vbNullString
  loc_1A028F1:   Else
  loc_1A0291F:     var_100 = "BillImagePath"
  loc_1A0293B:     var_190 = CVar(var_88.Fields.Item(var_100)) 'Address
  loc_1A02942:     var_1A0 = Trim(var_190)
  loc_1A0295D:     var_134 = Ucase(Right(Trim(CVar(var_88.Fields.Item("BillImagePath"))), 3))
  loc_1A02965:     var_E0 = "DAT"
  loc_1A0298D:     var_124 = "AVI"
  loc_1A029B7:     If CBool((var_134 = var_E0) Or (Ucase(Right(var_1A0, 3)) = var_124)) Then
  loc_1A029C6:       Me.BillImage.Visible = False
  loc_1A029D1:     Else
  loc_1A02A09:       Me.BillImage.Tag = CStr(var_88.Fields.Item("BillImagePath").Value)
  loc_1A02A26:       var_BC = "BillImagePath"
  loc_1A02A32:       var_AC = var_88.Fields
  loc_1A02A3A:       var_C0 = var_AC.Item(var_BC)
  loc_1A02A54:       Call 0.Method_Proc_32_92_1A04FC44 (CStr(var_C0.Value), var_21A, var_AC)
  loc_1A02A69:       If var_21A Then
  loc_1A02A86:         Set var_AC = Me.BillImage
  loc_1A02A9E:         Me.Global.LoadPicture CVar(Me.BillImage.Tag), var_BC, var_E0, var_100, var_124
  loc_1A02AB3:         Me.BillImage.Picture = var_C0
  loc_1A02AC8:         Set var_AC = Me.BillImage
  loc_1A02ACE:         var_AC.Refresh
  loc_1A02AD9:       Else
  loc_1A02AF7:         Me.Global.LoadPicture var_BC, var_E0, var_100, var_124, var_150
  loc_1A02B06:         Set var_138 = Me.BillImage
  loc_1A02B0C:         var_138.Picture = var_AC
  loc_1A02B18:       End If
  loc_1A02B18:     End If
  loc_1A02B18:   End If
  loc_1A02B1A:   Set var_1FC = Nothing 
  loc_1A02B74:   unk_59BA2D.Execute CStr("Select S.* From SunTran S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_134, -1
  loc_1A02B7F:   Set var_88 = var_138
  loc_1A02BAD:   If (var_88.RecordCount > 0) Then
  loc_1A02BC2:     var_AC = var_88.Fields
  loc_1A02BE0:     Call Proc_32_102_17D7AB4(CDate(var_AC.Item("SunAppDate").Value), var_138, var_AC)
  loc_1A02BEF:     ' Referenced from: 1A03088
  loc_1A02BFE:     If Not(var_88.EOF) Then
  loc_1A02C1B:       var_C0 = var_88.Fields.Item("SunCode")
  loc_1A02C61:       Set var_1A4 = Me.LblCap
  loc_1A02C67:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(var_88.Fields.Item("SNo").Value), var_1B8, CStr(var_C0.Value))
  loc_1A02C6F:       var_1B8.Tag = var_C0
  loc_1A02CED:       Set var_1A4 = Me.TxtPer
  loc_1A02CF3:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(var_88.Fields.Item("SNo").Value), var_1B8, CStr(var_88.Fields.Item("Limit").Value))
  loc_1A02CFB:       var_1B8.Tag = 1
  loc_1A02D79:       Set var_1A4 = Me.LblCap
  loc_1A02D7F:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_1A02D87:       var_1B8.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1A02E05:       Set var_1A4 = Me.LblAt
  loc_1A02E0B:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_1A02E13:       var_1B8.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_1A02E91:       Set var_1A4 = Me.TxtGt
  loc_1A02E97:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_1A02E9F:       var_1B8.Tag = CStr(var_88.Fields.Item("CalcFormula").Value)
  loc_1A02F1D:       Set var_1A4 = Me.TxtPer
  loc_1A02F23:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(var_88.Fields.Item("SNo").Value), var_1B8)
  loc_1A02F2B:       var_1B8.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_1A02F87:       var_134 = var_88.Fields.Item("SNo").Value
  loc_1A02F9B:       var_F0 = "0.00"
  loc_1A02FC2:       Set var_1A4 = Me.TxtGt
  loc_1A02FC8:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(var_134), var_1B8, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_F0)))
  loc_1A02FD0:       var_1B8.Text = 1
  loc_1A03016:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("BaseAmount")))
  loc_1A03037:       var_138 = var_88.Fields
  loc_1A03054:       Set var_1A4 = Me.LblDummy
  loc_1A0305A:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(var_138.Item("SNo").Value), var_1B8, CStr(var_F0))
  loc_1A03062:       var_1B8.Caption = 1
  loc_1A03083:       var_88.MoveNext
  loc_1A03088:       GoTo loc_1A02BEF
  loc_1A0308B:     End If
  loc_1A0308B:   End If
  loc_1A0309A:   Me.FGrid.Redraw = False
  loc_1A030B5:   Me.FGrid.Rows = 1
  loc_1A030BF:   var_8E = 1
  loc_1A030CF:   var_E0 = "Select DISTINCT S.*,I.Name as ItemName,DispCode,S.DiscApp as DApp,S.RoundOff as ROff,s.TaxStru as TaxCode,RateEdit,D.Code as DepartCode,D.ShortName as DepartName,G.Name as GodownName,TaxStru.Name as TaxStructure,S.AcCode As SaleAcCode,SG.Name As SaleAcName From (((((Purch2 S Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store') left join Sale2 S2 on (S2.docid=S.docid and S2.sno=S.sno)) Left join  ItemCatMast IC on IC.Code=I.ItemCatCode)Left Join Depart D on D.Code=I.RestCode)Left Join GodownMast G on G.Code=S.GodCode) left Join TaxStru on TaxStru.Code=S.TaxStru left Join SubGroup SG On SG.SubCode=S.AcCode Where S.DocId='"
  loc_1A03118:   unk_59BA2D.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "' Order By S.SNo"), var_134, -1
  loc_1A03123:   Set var_88 = var_138
  loc_1A03151:   If (var_88.RecordCount > 0) Then
  loc_1A03161:     ReDim Preserve var_9C(0 To 0)
  loc_1A0316B:     ' Referenced from: 1A0493C
  loc_1A0317A:     If Not(var_88.EOF) Then
  loc_1A0317D:       var_BC = vbNullString
  loc_1A03187:       Set var_AC = Me.FGrid
  loc_1A031A5:       For var_21E = 0 To CInt(UBound(var_9C, 1)): var_A0 = var_21E 'Integer
  loc_1A031B6:         var_BC = "RoomNo"
  loc_1A031E9:         If (var_BC = Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_BC)), var_9C(CLng(var_A0)), 0, FGrid.DispID_10000)) Then
  loc_1A031EE:           var_A2 = &HFF
  loc_1A031F1:         End If
  loc_1A031F4:       Next var_21E 'Integer
  loc_1A031FF:       If (var_A2 = 0) Then
  loc_1A0320E:         ReDim Preserve var_9C(0 To CLng(var_9E))
  loc_1A0324A:         var_9C(CLng(var_9E)) = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")))
  loc_1A0325A:         var_9E = (var_9E + 1)
  loc_1A0325D:       End If
  loc_1A0325F:       var_A2 = 0
  loc_1A03266:       Set var_224 = Me.FGrid
  loc_1A0326D:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A03275:       var_124 = CVar(CLng(0)) 'Long
  loc_1A032A5:       var_F0 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1A032AC:       LateIdCallSt
  loc_1A032C6:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A032CE:       var_124 = CVar(CLng(&HC)) 'Long
  loc_1A032FE:       var_F0 = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_1A03305:       LateIdCallSt
  loc_1A03354:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(1)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(1)), CVar(CLng(var_8E)))) 'String
  loc_1A0335B:       LateIdCallSt
  loc_1A033A6:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(2)), CVar(CLng(var_8E)), var_224, var_F0, var_224)) 'String
  loc_1A033AD:       LateIdCallSt
  loc_1A033DF:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A033E7:       var_150 = CVar(CLng(9)) 'Long
  loc_1A03414:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00000"))) 'String
  loc_1A0341B:       LateIdCallSt
  loc_1A03451:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A03459:       var_150 = CVar(CLng(&HA)) 'Long
  loc_1A03486:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00000"))) 'String
  loc_1A0348D:       LateIdCallSt
  loc_1A034C3:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A034CB:       var_150 = CVar(CLng(&HB)) 'Long
  loc_1A034F8:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_1A034FF:       LateIdCallSt
  loc_1A03535:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A0353D:       var_150 = CVar(CLng(&HF)) 'Long
  loc_1A0356A:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_1A03571:       LateIdCallSt
  loc_1A035A7:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A035AF:       var_150 = CVar(CLng(&H10)) 'Long
  loc_1A035DC:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_1A035E3:       LateIdCallSt
  loc_1A03619:       var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A03621:       var_150 = CVar(CLng(&H12)) 'Long
  loc_1A0364E:       var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_1A03655:       LateIdCallSt
  loc_1A036C7:       LateIdCallSt
  loc_1A03716:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_1A0371D:       LateIdCallSt
  loc_1A03768:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Roff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(&H13)))) 'String
  loc_1A0376F:       LateIdCallSt
  loc_1A037BA:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxStructure")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A037C1:       LateIdCallSt
  loc_1A0380C:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A03813:       LateIdCallSt
  loc_1A0385E:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SaleAcName")), CVar(CLng(&H1B)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A03865:       LateIdCallSt
  loc_1A038B0:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SaleAcCode")), CVar(CLng(&H1C)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A038B7:       LateIdCallSt
  loc_1A03902:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H1D)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A03909:       LateIdCallSt
  loc_1A0394A:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A03952:       var_124 = CVar(CLng(3)) 'Long
  loc_1A0396D:       var_114 = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), var_224, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), var_224, var_F0, CVar(CLng(var_8E)))), CVar(CLng(var_8E)))), 8))
  loc_1A0397F:       LateIdCallSt
  loc_1A039D5:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_224, CVar(CStr(Val(var_114))), CVar(CLng(&HE)))) 'String
  loc_1A039DC:       LateIdCallSt
  loc_1A03A25:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("ContraSNo")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_224, var_F0)
  loc_1A03A35:       LateIdCallSt
  loc_1A03A82:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GodownName")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_F0)))) 'String
  loc_1A03A89:       LateIdCallSt
  loc_1A03AD4:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GodCode")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_224, var_F0)) 'String
  loc_1A03ADB:       LateIdCallSt
  loc_1A03B24:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RoomNo")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_224, var_F0)
  loc_1A03B34:       LateIdCallSt
  loc_1A03B7F:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("PostVal")), CVar(CLng(&H20)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_F0)))
  loc_1A03B8F:       LateIdCallSt
  loc_1A03BA7:       var_E0 = CVar(CLng(var_8E)) 'Long
  loc_1A03BDA:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("LandVal")), CVar(CLng(&H21)), var_E0, var_224, CVar(CStr(var_F0)))
  loc_1A03BEA:       LateIdCallSt
  loc_1A03C37:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), var_224, CVar(CStr(var_F0)), var_E0) <> vbNullString) Then
  loc_1A03C51:         If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1A03C99:           var_110 = "Select ConvRatio,QtyIss,IssueUnit,Unit From Stock Where DocId='" & var_88.Fields.Item("ContraDocId").Value & "' And Sno=" 
  loc_1A03CD5:           unk_59BA2D.Execute CStr(var_110 & var_88.Fields.Item("ContraSNo").Value), var_190, -1
  loc_1A03CE0:           Set var_8C = var_1A4
  loc_1A03D16:           If (var_8C.RecordCount > 0) Then
  loc_1A03D39:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A03D41:             var_150 = CVar(CLng(6)) 'Long
  loc_1A03D6E:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A03D75:             LateIdCallSt
  loc_1A03DAB:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A03DB3:             var_150 = CVar(CLng(7)) 'Long
  loc_1A03DE0:             var_134 = CVar(CStr(Format(CVar(var_88.Fields.Item("QtyIss")), "0.000"))) 'String
  loc_1A03DE7:             LateIdCallSt
  loc_1A03E1D:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A03E59:             LateIdCallSt
  loc_1A03EA8:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyIss")), "0.000"))), 1, 1)) 'String
  loc_1A03EAF:             LateIdCallSt
  loc_1A03EFA:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A03F01:             LateIdCallSt
  loc_1A03F13:           End If
  loc_1A03F16:         Else
  loc_1A03F5B:           var_110 = "Select ConvRatio,QtyRec,RecdUnit,Unit From Stock Where DocId='" & var_88.Fields.Item("ContraDocId").Value & "' And Sno=" 
  loc_1A03F97:           unk_59BA2D.Execute CStr(var_110 & var_88.Fields.Item("ContraSNo").Value), var_190, -1
  loc_1A03FA2:           Set var_8C = var_1A4
  loc_1A03FD8:           If (var_8C.RecordCount > 0) Then
  loc_1A03FFB:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A04003:             var_150 = CVar(CLng(6)) 'Long
  loc_1A04030:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A04037:             LateIdCallSt
  loc_1A0406D:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A04075:             var_150 = CVar(CLng(7)) 'Long
  loc_1A040A2:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1A040A9:             LateIdCallSt
  loc_1A040DF:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A0411B:             LateIdCallSt
  loc_1A0416A:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_88.Fields.Item("RecdQty")), "0.000"))), 1, 1)) 'String
  loc_1A04171:             LateIdCallSt
  loc_1A041BC:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A041C3:             LateIdCallSt
  loc_1A041D5:           End If
  loc_1A041D5:         End If
  loc_1A041D8:       Else
  loc_1A041EF:         If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1A0423A:           var_110 = "Select ConvRatio,IssQty,IssueUnit,Unit From Stock Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And Sno=" 
  loc_1A04276:           unk_59BA2D.Execute CStr(var_110 & var_88.Fields.Item("SNo").Value), var_190, -1
  loc_1A04281:           Set var_8C = var_1A4
  loc_1A042B7:           If (var_8C.RecordCount > 0) Then
  loc_1A042DA:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A042F6:             var_F0 = "0.00000"
  loc_1A04316:             LateIdCallSt
  loc_1A04352:             Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("QtyIss")), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), var_F0))), 1, 1, CVar(CLng(6)))
  loc_1A0435B:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A04363:             var_150 = CVar(CLng(7)) 'Long
  loc_1A0438C:             var_160 = CVar(CStr(Format(var_F0, "0.000"))) 'String
  loc_1A04393:             LateIdCallSt
  loc_1A043CB:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A04407:             LateIdCallSt
  loc_1A04456:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(Format(CVar(var_8C.Fields.Item("IssQty")), "0.000"))), 1, 1)) 'String
  loc_1A0445D:             LateIdCallSt
  loc_1A044A8:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("IssueUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A044AF:             LateIdCallSt
  loc_1A044C1:           End If
  loc_1A044C4:         Else
  loc_1A0450C:           var_110 = "Select ConvRatio,QtyRec,RecdUnit,Unit From Stock Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And Sno=" 
  loc_1A04548:           unk_59BA2D.Execute CStr(var_110 & var_88.Fields.Item("SNo").Value), var_190, -1
  loc_1A04553:           Set var_8C = var_1A4
  loc_1A04589:           If (var_8C.RecordCount > 0) Then
  loc_1A045AC:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A045B4:             var_150 = CVar(CLng(6)) 'Long
  loc_1A045E1:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("ConvRatio")), "0.00000"))) 'String
  loc_1A045E8:             LateIdCallSt
  loc_1A0461E:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A04626:             var_150 = CVar(CLng(7)) 'Long
  loc_1A04653:             var_134 = CVar(CStr(Format(CVar(var_8C.Fields.Item("QtyRec")), "0.000"))) 'String
  loc_1A0465A:             LateIdCallSt
  loc_1A04690:             var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A046BC:             var_110 = Format(CVar(var_88.Fields.Item("RecdQty")), "0.000")
  loc_1A046CC:             LateIdCallSt
  loc_1A0471B:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Unit")), CVar(CLng(8)), CVar(CLng(var_8E)), var_224, CVar(CStr(var_110)), 1, 1)) 'String
  loc_1A04722:             LateIdCallSt
  loc_1A0476D:             var_F0 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RecdUnit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_224, var_F0, CVar(CLng(5)))) 'String
  loc_1A04774:             LateIdCallSt
  loc_1A04786:           End If
  loc_1A04786:         End If
  loc_1A04786:       End If
  loc_1A047B5:       If ((((global_132 = "PBR") Or (global_132 = "EXR")) Or (global_132 = "PBC")) Or (global_132 = "EXC")) Then
  loc_1A047CC:         var_114 = "Select max(IsNull(M.AccQty,0)) - Sum(IsNull(P2.QtyRec,0)) as BalQty " & "From (Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_1A047DA:         var_1EC = CStr(var_110 & var_88.Fields.Item("SNo").Value) & "Left Join SubGroup SG on M.PartyCode=SG.SubCode " & "where M.DocId='"
  loc_1A04805:         var_1F4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), var_1EC, var_1A0, -1, var_1A4, var_224)
  loc_1A04809:         var_1F8 = var_F0 & "Select NCAT From Voucher_Type Where LogSite_Code='" & MemVar_1F92078 & "' and V_Type='" & global_140 & "'"
  loc_1A04810:         var_134 = CVar(var_1F8 & "' And M.Sno=") 'String
  loc_1A0482A:         var_13C = var_88.Fields.Item("ContraSNo")
  loc_1A04832:         var_F0 = CVar(var_13C) 'Address
  loc_1A04839:         Proc_6_39_E7C810(var_110, var_F0, var_134, var_100)
  loc_1A04845:         var_100 = "  Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.QtyRec,0)) > 0 "
  loc_1A04858:         unk_59BA2D.Execute CStr(var_224 & var_110 & var_100), var_134, 1
  loc_1A04863:         Set var_8C = var_1A4
  loc_1A048A3:         If (var_8C.RecordCount > 0) Then
  loc_1A048BD:           var_C0 = var_8C.Fields.Item("BalQty")
  loc_1A048CC:           Proc_6_39_E7C810(var_F0, CVar(var_C0))
  loc_1A048D5:           var_100 = CVar(CLng(var_8E)) 'Long
  loc_1A048DD:           var_150 = CVar(CLng(&H22)) 'Long
  loc_1A04906:           var_160 = CVar(CStr(Format(var_F0, "0.000"))) 'String
  loc_1A0490D:           LateIdCallSt
  loc_1A04925:         End If
  loc_1A04925:       End If
  loc_1A04927:       Set var_224 = Nothing 
  loc_1A04931:       var_8E = (var_8E + 1)
  loc_1A04937:       var_88.MoveNext
  loc_1A0493C:       GoTo loc_1A0316B
  loc_1A0493F:     End If
  loc_1A04952:     Me.FGrid.FixedRows = 1
  loc_1A04968:     Set var_AC = Me.Txt
  loc_1A0496E:     Call 0.Method_Proc_32_92_1A04FC40 (CInt(7), var_C0, vbNullString, var_8E, var_224, var_160)
  loc_1A0498F:     For var_22C = 0 To CInt(UBound(var_9C, 1)): var_9E = var_22C 'Integer
  loc_1A049A3:       Set var_AC = Me.Txt
  loc_1A049A9:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(7), var_C0, CStr("0.000" & var_88.Fields.Item("SNo").Value), 0)
  loc_1A049B1:       1 = 1
  loc_1A049D7:       Set var_138 = Me.Txt
  loc_1A049DD:       Call 0.Method_Proc_32_92_1A04FC40 (CInt(7), var_13C, CStr("0.000" & var_88.Fields.Item("SNo").Value) & var_9C(CLng(var_9E)) & ",")
  loc_1A049E5:       var_13C.Text = var_150
  loc_1A04A01:     Next var_22C 'Integer
  loc_1A04A11:     Set var_AC = Me.Txt
  loc_1A04A17:     Call 0.Method_Proc_32_92_1A04FC40 (CInt(7))
  loc_1A04A27:     Set var_138 = Me.Txt
  loc_1A04A2D:     Call 0.Method_Proc_32_92_1A04FC40 (CInt(7), var_13C)
  loc_1A04A4D:     var_134 = (Len(Trim(CVar(var_13C))) - 1)
  loc_1A04A60:     var_160 = CVar(var_C0) 'Address
  loc_1A04A7E:     Set var_1A4 = Me.Txt
  loc_1A04A84:     Call 0.Method_Proc_32_92_1A04FC40 (CInt(7), var_1B8)
  loc_1A04A8C:     var_1B8.Text = CStr(Mid(var_160, 1, Format(Trim(CVar(var_13C)), "0.000")))
  loc_1A04AAC:   End If
  loc_1A04ABA:   Me.FGrid.Redraw = True
  loc_1A04AD6:   var_F0 = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt " & " FROM Sale2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_1A04B0F:   var_134 = var_F0 & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1A04B1D:   unk_59BA2D.Execute CStr(var_134), var_160, -1
  loc_1A04B28:   Set var_88 = var_138
  loc_1A04B57:   Me.FGCat.Rows = 1
  loc_1A04B65:   var_A8 = var_88.RecordCount
  loc_1A04B73:   If (var_A8 > 0) Then
  loc_1A04B76:     ' Referenced from: 1A04ECC
  loc_1A04B85:     If Not(var_88.EOF) Then
  loc_1A04B8C:       Set var_230 = Me.FGCat
  loc_1A04B8F:       var_BC = vbNullString
  loc_1A04BB9:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A04BC1:       var_124 = CVar(CLng(0)) 'Long
  loc_1A04BF1:       var_110 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_1A04BF8:       LateIdCallSt
  loc_1A04C2B:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A04C33:       var_124 = CVar(CLng(1)) 'Long
  loc_1A04C63:       var_110 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_1A04C6A:       LateIdCallSt
  loc_1A04C9D:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A04CA5:       var_124 = CVar(CLng(2)) 'Long
  loc_1A04CD5:       var_110 = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_1A04CDC:       LateIdCallSt
  loc_1A04D0F:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A04D17:       var_124 = CVar(CLng(3)) 'Long
  loc_1A04D47:       var_110 = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_1A04D4E:       LateIdCallSt
  loc_1A04D81:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A04D89:       var_124 = CVar(CLng(4)) 'Long
  loc_1A04DB9:       var_110 = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_1A04DC0:       LateIdCallSt
  loc_1A04DF3:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A04DFB:       var_124 = CVar(CLng(5)) 'Long
  loc_1A04E2B:       var_110 = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_1A04E32:       LateIdCallSt
  loc_1A04E65:       var_E0 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1A04E6D:       var_124 = CVar(CLng(6)) 'Long
  loc_1A04E94:       var_F0 = var_88.Fields.Item("TaxAmt").Value
  loc_1A04E9D:       var_110 = CVar(CStr(var_F0)) 'String
  loc_1A04EA4:       LateIdCallSt
  loc_1A04EC0:       Set var_230 = Nothing 
  loc_1A04EC7:       var_88.MoveNext
  loc_1A04ECC:       GoTo loc_1A04B76
  loc_1A04ECF:     End If
  loc_1A04ECF:   End If
  loc_1A04ED5:   If (var_8E = 1) Then
  loc_1A04EEB:     Me.FGrid.Rows = 1
  loc_1A04F11:     var_D0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_230, var_110, var_124, "'", var_230, var_110))) 'String
  loc_1A04F19:     Set var_C0 = Me.FGrid
  loc_1A04F46:     Me.FGrid.FixedRows = 1
  loc_1A04F4E:   End If
  loc_1A04F51: Else
  loc_1A04F51:   Call Proc_32_94_103207C(FGrid.DispID_10000, var_D0, var_124, "'", var_230)
  loc_1A04F56: End If
  loc_1A04F56: Call Proc_32_96_FE1284(var_110, var_124)
  loc_1A04F60: Set var_88 = Nothing
  loc_1A04F68: Set var_94 = Nothing
  loc_1A04F6F: Exit Sub
  loc_1A04F70: ' Referenced from: 1A01C74
  loc_1A04F78: Set var_AC = Err()
  loc_1A04F7E: Call 0.Method_arg_1C (var_A8, "'")
  loc_1A04F8F: If (var_A8 = &HBCD) Then
  loc_1A04FAB:   MsgBox("Record is Deleted by somebody", &H40, var_F0, var_110, var_134)
  loc_1A04FBB:   Exit Sub
  loc_1A04FBC: End If
  loc_1A04FBC: Proc_6_60_E62BC4(var_230)
  loc_1A04FC1: Exit Sub
End Sub

Public Sub Proc_32_93_1261C10
  'Data Table: 59BA10
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_59BA2D As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_108 As Variant
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_12616B5: Set var_9C = Me.TopCtrl1
  loc_12616BB: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(&HFF)
  loc_12616C3: var_B0 = CStr()
  loc_12616D4: If (var_B0 = "Add") Then
  loc_1261704:   Set var_9C = Me.Txt
  loc_126170A:   Call 0.Method_Proc_32_93_1261C100 (CInt(0), var_B4, var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1)
  loc_126172B:   unk_59BA2D.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_126173B:    = var_D4.Item()
  loc_1261743:    = var_E8.Value
  loc_1261770:   If (var_B4.Text.Fields > 0) Then
  loc_1261779:     Call 0.Method_arg_50 (var_B0)
  loc_126179A:     MsgBox("Duplicate Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_12617B0:     Call Proc_32_98_10E9688(MemVar_1F92044)
  loc_12617C3:     Set var_9C = Me.Txt
  loc_12617C9:     Call 0.Method_Proc_32_93_1261C100 (CInt(0), var_B4)
  loc_12617D1:     var_B4.Text = var_B0
  loc_12617E5:     Proc_32_93_1261C10 = 0
  loc_12617EB:   End If
  loc_12617EB: End If
  loc_1261810: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_126181A:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1261822:   var_108 = CVar(CLng(2)) 'Long
  loc_1261842:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_126185E:   If CBool(var_118 <> vbNullString) Then
  loc_1261865:     var_CC = CVar(CLng(var_88)) 'Long
  loc_126186D:     var_108 = CVar(CLng(5)) 'Long
  loc_126189D:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_12618C5:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_12618EB:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_12618F7:       Set var_9C = Me.FGrid
  loc_126190D:       Proc_32_93_1261C10 = 0
  loc_1261913:     End If
  loc_1261917:     var_CC = CVar(CLng(var_88)) 'Long
  loc_126191F:     var_108 = CVar(CLng(9)) 'Long
  loc_126194F:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1261977:       MsgBox(CVar("Rate Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_126199D:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_12619A9:       Set var_9C = Me.FGrid
  loc_12619BF:       Proc_32_93_1261C10 = 0
  loc_12619C5:     End If
  loc_12619C9:     var_CC = CVar(CLng(var_88)) 'Long
  loc_12619D1:     var_108 = CVar(CLng(&H16)) 'Long
  loc_12619F1:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1261A0D:     If (var_118 = vbNullString) Then
  loc_1261A35:       MsgBox(CVar("Godown Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1261A5B:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1261A67:       Set var_9C = Me.FGrid
  loc_1261A7D:       Proc_32_93_1261C10 = 0
  loc_1261A83:     End If
  loc_1261A87:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1261A8F:     var_108 = CVar(CLng(&H1A)) 'Long
  loc_1261AAF:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1261ACB:     If (var_118 = vbNullString) Then
  loc_1261AF3:       MsgBox(CVar("Tax Structure Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1261B19:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1261B25:       Set var_9C = Me.FGrid
  loc_1261B3B:       Proc_32_93_1261C10 = 0
  loc_1261B41:     End If
  loc_1261B45:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1261B4D:     var_108 = CVar(CLng(&H1C)) 'Long
  loc_1261B6D:     var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1261B89:     If (var_118 = vbNullString) Then
  loc_1261BB1:       MsgBox(CVar("A/C Name Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1261BD7:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1261BE3:       Set var_9C = Me.FGrid
  loc_1261BF9:       Proc_32_93_1261C10 = 0
  loc_1261BFF:     End If
  loc_1261BFF:   End If
  loc_1261C02: Next var_12C 'Integer
  loc_1261C07: Proc_32_93_1261C10 = 
  loc_1261C0D: DOC
End Sub

Public Sub Proc_32_94_103207C
  'Data Table: 59BA10
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_1031E3D: Me.LblVPrefix.Caption = vbNullString
  loc_1031E53: Set var_8C = Me.Txt
  loc_1031E59: Call 0.Method_Proc_32_94_103207CC (var_8E, var_86)
  loc_1031E69: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1031E7F:   Set var_8C = Me.Txt
  loc_1031E85:   Call 0.Method_Proc_32_94_103207C0 (CInt(var_86), var_98)
  loc_1031E8D:   var_98.Text = vbNullString
  loc_1031EA9:   Set var_8C = Me.Txt
  loc_1031EAF:   Call 0.Method_Proc_32_94_103207C0 (CInt(var_86), var_98)
  loc_1031EB7:   var_98.Tag = vbNullString
  loc_1031EC6: Next var_92 'Byte
  loc_1031ED9: Me.LblCurStockStr.Caption = vbNullString
  loc_1031EF4: Me.FGrid.Rows = 1
  loc_1031F1A: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_1031F22: Set var_98 = Me.FGrid
  loc_1031F4F: Me.FGrid.FixedRows = 1
  loc_1031F65: Set var_8C = Me.TxtPer
  loc_1031F6B: Call 0.Method_Proc_32_94_103207CC (var_8E, var_86, CByte(1))
  loc_1031F78: For var_D0 = var_C8 To CByte(var_8E): FGrid.DispID_10000 = var_D0 'Byte
  loc_1031F8E:   Set var_8C = Me.TxtPer
  loc_1031F94:   Call 0.Method_Proc_32_94_103207C0 (CInt(var_86), var_98, vbNullString)
  loc_1031F9C:   var_98.Text = var_C8
  loc_1031FAB: Next var_D0 'Byte
  loc_1031FBF: Set var_8C = Me.TxtGt
  loc_1031FC5: Call 0.Method_Proc_32_94_103207CC (var_8E, var_86)
  loc_1031FD2: For var_D4 =  To CByte(var_8E): CByte(1) = var_D4 'Byte
  loc_1031FE8:   Set var_8C = Me.TxtGt
  loc_1031FEE:   Call 0.Method_Proc_32_94_103207C0 (CInt(var_86), var_98)
  loc_1031FF6:   var_98.Text = vbNullString
  loc_1032005: Next var_D4 'Byte
  loc_1032029: Me.Global.LoadPicture var_A8, var_B8, var_E4, var_F4, var_104
  loc_103203E: Me.BillImage.Picture = var_8C
  loc_1032057: Me.BillImage.Tag = vbNullString
  loc_1032072: Me.FGCat.Rows = 0
  loc_103207A: Exit Sub
End Sub

Public Sub Proc_32_95_100EC78(arg_C) '100EC78
  'Data Table: 59BA10
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_100EA66: Set var_8C = Me.Txt
  loc_100EA6C: Call 0.Method_Proc_32_95_100EC78C (var_8E, var_86)
  loc_100EA7C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_100EA92:   Set var_8C = Me.Txt
  loc_100EA98:   Call 0.Method_Proc_32_95_100EC780 (CInt(var_86), var_98)
  loc_100EAA0:   var_98.Enabled = arg_C
  loc_100EAAF: Next var_92 'Byte
  loc_100EAC3: Set var_8C = Me.TxtPer
  loc_100EAC9: Call 0.Method_Proc_32_95_100EC78C (var_8E, var_86)
  loc_100EAD6: For var_9C =  To CByte(var_8E): CByte(1) = var_9C 'Byte
  loc_100EAEC:   Set var_8C = Me.TxtPer
  loc_100EAF2:   Call 0.Method_Proc_32_95_100EC780 (CInt(var_86), var_98)
  loc_100EAFA:   var_98.Enabled = arg_C
  loc_100EB09: Next var_9C 'Byte
  loc_100EB1D: Set var_8C = Me.TxtGt
  loc_100EB23: Call 0.Method_Proc_32_95_100EC78C (var_8E, var_86)
  loc_100EB30: For var_A0 =  To CByte(var_8E): CByte(1) = var_A0 'Byte
  loc_100EB46:   Set var_8C = Me.TxtGt
  loc_100EB4C:   Call 0.Method_Proc_32_95_100EC780 (CInt(var_86), var_98)
  loc_100EB54:   var_98.Enabled = arg_C
  loc_100EB63: Next var_A0 'Byte
  loc_100EB76: Me.FrInVoiceType.Enabled = arg_C
  loc_100EB8B: Me.FrPayable.Enabled = arg_C
  loc_100EBA0: Set var_8C = Me.Txt
  loc_100EBA6: Call 0.Method_Proc_32_95_100EC780 (CInt(0), var_98)
  loc_100EBAE: var_98.Enabled = False
  loc_100EBC7: Set var_8C = Me.Txt
  loc_100EBCD: Call 0.Method_Proc_32_95_100EC780 (CInt(2), var_98)
  loc_100EBD5: var_98.Enabled = False
  loc_100EBE5: Set var_8C = Me.TopCtrl1
  loc_100EBEB: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_100EC04: If (CStr() = "Edit") Then
  loc_100EC14:   Set var_8C = Me.Txt
  loc_100EC1A:   Call 0.Method_Proc_32_95_100EC780 (CInt(1), var_98)
  loc_100EC22:   var_98.Enabled = False
  loc_100EC3A:   Me.FrInVoiceType.Enabled = False
  loc_100EC42: End If
  loc_100EC4D: If (global_108 = "No") Then
  loc_100EC5D:   Set var_8C = Me.Txt
  loc_100EC63:   Call 0.Method_Proc_32_95_100EC780 (CInt(3), var_98)
  loc_100EC6B:   var_98.Enabled = False
  loc_100EC77: End If
  loc_100EC77: Exit Sub
End Sub

Public Sub Proc_32_96_FE1284
  'Data Table: 59BA10
  loc_FE10B8: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_FE10CA:   Me.DGItem.Visible = False
  loc_FE10D2: End If
  loc_FE10EE: If (CBool(Me.DgMR.Visible) = &HFF) Then
  loc_FE1100:   Me.DgMR.Visible = False
  loc_FE1108: End If
  loc_FE1124: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FE1136:   Me.FGPoint.Visible = False
  loc_FE113E: End If
  loc_FE115A: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_FE116C:   Me.DGParty.Visible = False
  loc_FE1174: End If
  loc_FE1190: If (CBool(Me.DGPartyBillNo.Visible) = &HFF) Then
  loc_FE11A2:   Me.DGPartyBillNo.Visible = False
  loc_FE11AA: End If
  loc_FE11C6: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_FE11D8:   Me.DGVType.Visible = False
  loc_FE11E0: End If
  loc_FE11FC: If (CBool(Me.DGGod.Visible) = &HFF) Then
  loc_FE120E:   Me.DGGod.Visible = False
  loc_FE1216: End If
  loc_FE1232: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_FE1244:   Me.DGTaxStru.Visible = False
  loc_FE124C: End If
  loc_FE1268: If (CBool(Me.DGSaleAc.Visible) = &HFF) Then
  loc_FE127A:   Me.DGSaleAc.Visible = False
  loc_FE1282: End If
  loc_FE1282: Exit Sub
End Sub

Public Sub Proc_32_97_F0B8B0
  'Data Table: 59BA10
  loc_F0B7D4: Call Proc_32_96_FE1284()
  loc_F0B7E4: Set var_88 = Me.Txt
  loc_F0B7EA: Call 0.Method_Proc_32_97_F0B8B00 (CInt(3))
  loc_F0B813: If (Proc_6_27_EA565C(var_8C, "Invoice Date") = 0) Then
  loc_F0B816:   Exit Sub
  loc_F0B817: End If
  loc_F0B822: Set var_88 = Me.Txt
  loc_F0B828: Call 0.Method_Proc_32_97_F0B8B00 (CInt(2), var_8C)
  loc_F0B851: If (Proc_6_27_EA565C(var_8C, "Invoice No") = 0) Then
  loc_F0B854:   Exit Sub
  loc_F0B855: End If
  loc_F0B88C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0B88F:   Call TopCtrl1_UnknownEvent_16()
  loc_F0B897: Else
  loc_F0B89B:   Call 0.Method_arg_1E8 (var_88)
  loc_F0B8A3:   Call var_88.SetFocus
  loc_F0B8AC: End If
  loc_F0B8AC: Exit Sub
End Sub

Public Sub Proc_32_98_10E9688
  'Data Table: 59BA10
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
  loc_10E93B0: var_90 = global_140
  loc_10E93C7: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10E93F8: Set var_A8 = Me.Txt
  loc_10E93FE: Call 0.Method_Proc_32_98_10E96880 (CInt(3), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E940D: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10E9415: var_EC = -1 & var_CC 
  loc_10E9429: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E9434: Set var_8C = var_134
  loc_10E9470: If (var_8C.RecordCount > 0) Then
  loc_10E94AF:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E94E3:     global_124 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E950E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E9523:     var_CC = (var_AC.Value + 1)
  loc_10E952B:     global_128 = CInt(var_CC)
  loc_10E953C:   End If
  loc_10E953C: End If
  loc_10E9567: var_BC = Space((5 - Len(var_90)))
  loc_10E956F: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10E9583: var_EC = Space((5 - Len(global_124)))
  loc_10E958B: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E9598: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_124))
  loc_10E95B1: var_14C = Space((8 - Len(CStr(global_128))))
  loc_10E95B9: var_15C = (var_130 + var_14C)
  loc_10E95C8: var_17C = (var_15C + CVar(CStr(global_128)))
  loc_10E95D3: global_116 = CStr(var_17C)
  loc_10E9609: Me.LblVPrefix.Caption = global_124
  loc_10E9622: Set var_A8 = Me.Txt
  loc_10E9628: Call 0.Method_Proc_32_98_10E96880 (CInt(0), var_AC)
  loc_10E9630: var_AC.Text = global_116
  loc_10E9652: Set var_A8 = Me.Txt
  loc_10E9658: Call 0.Method_Proc_32_98_10E96880 (CInt(2), var_AC)
  loc_10E9660: var_AC.Text = CStr(global_128)
  loc_10E9675: var_88 = global_116
  loc_10E967D: Set var_8C = Nothing
  loc_10E9680: Proc_32_98_10E9688 = global_128
End Sub

Public Sub Proc_32_99_10B9B88(arg_C, arg_10, arg_14) '10B9B88
  'Data Table: 59BA10
  Dim unk_59BA2D As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_D4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim var_C0 As Variant
  loc_10B98F6: If (arg_C = "RSBIL") Then
  loc_10B991D:   unk_59BA2D.Execute "Select Distinct DocId,V_Type,V_No From Purch1 Where DocID='" & arg_10 & "'", var_C0, -1
  loc_10B9928:   Set var_8C = var_C4
  loc_10B993B:   var_94 = "ALACARTE Sale Bill Entry"
  loc_10B9941: Else
  loc_10B9946:   Proc_32_99_10B9B88 = &HFF
  loc_10B994C: End If
  loc_10B9960: If (var_8C.RecordCount > 0) Then
  loc_10B9963:   ' Referenced from: 10B9ADC
  loc_10B9972:   If Not(var_8C.EOF) Then
  loc_10B997D:     If (var_90 = vbNullString) Then
  loc_10B99C0:       var_D4 = "V.Type :-> " & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6)
  loc_10B99C7:       var_10C = CVar(var_D4 & " V.No :-> ") 'String
  loc_10B99F9:       var_90 = CStr(var_10C & var_8C.Fields.Item("V_NO").Value)
  loc_10B9A1E:     Else
  loc_10B9A5A:       var_120 = var_90 & "," & vbCrLf & "V.Type :-> "
  loc_10B9A7A:       var_10C = CVar(var_120 & Proc_6_45_EAD428(CStr(var_8C.Fields.Item("V_Type").Value), 6) & " V.No :-> ") 'String
  loc_10B9AA7:       var_11C = var_10C & var_8C.Fields.Item("V_NO").Value 
  loc_10B9AAC:       var_90 = CStr(var_11C)
  loc_10B9AD4:     End If
  loc_10B9AD7:     var_8C.MoveNext
  loc_10B9ADC:     GoTo loc_10B9963
  loc_10B9ADF:   End If
  loc_10B9AE5:   Call 0.Method_arg_50 (var_138)
  loc_10B9B41:   var_C0 = CVar(var_94 & vbCrLf & vbNullString & var_90 & " " & vbCrLf & "Generated For This Purchase GIN," & vbCrLf & "Can Not " & arg_14 & " The Record") 'String
  loc_10B9B44:   MsgBox(var_C0, &H30, CVar(var_138), var_10C, var_11C)
  loc_10B9B73:   Set var_8C = Nothing
  loc_10B9B76:   Proc_32_99_10B9B88 = 0
  loc_10B9B7C: End If
  loc_10B9B81: Proc_32_99_10B9B88 = &HFF
End Sub

Public Sub Proc_32_100_FC29EC
  'Data Table: 59BA10
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC286F: If (CLng(Me.FGrid.Col) = CLng(2)) Then
  loc_FC2874:   var_92 = 2 'Byte
  loc_FC2878: End If
  loc_FC2881: Set var_98 = Me.TxtGrid
  loc_FC2887: Call 0.Method_Proc_32_100_FC29EC0 (0, var_B0)
  loc_FC28AA: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC28DE: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC2902:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC2905:     GoTo loc_FC29D7
  loc_FC2908:   End If
  loc_FC290C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC2936:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC2940:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC2975:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC2999:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC29B2:     Set var_98 = Me.TxtGrid
  loc_FC29B8:     Call 0.Method_Proc_32_100_FC29EC0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC29C0:     var_B0.SetFocus
  loc_FC29D1:     Proc_32_100_FC29EC = 0
  loc_FC29D7:     ' Referenced from: FC2905
  loc_FC29D7:   End If
  loc_FC29DA: Next var_D4 'Integer
  loc_FC29E4: Proc_32_100_FC29EC = &HFF
End Sub

Public Sub Proc_32_101_EAB57C(arg_C) 'EAB57C
  'Data Table: 59BA10
  Dim var_8C As Recordset15
  loc_EAB4F6: IStAdFunc
  loc_EAB4FD: Set var_8C = arg_C 
  loc_EAB525: Me.Recordset15.Fields.Append "V_NO", 3, &HB
  loc_EAB535: var_8C.CursorType = 3
  loc_EAB542: var_8C.LockType = 3
  loc_EAB561: var_8C.Open var_A0, var_B0, -1
  loc_EAB568: Set var_8C = Nothing 
  loc_EAB56F: Set var_88 = arg_C 
  loc_EAB573: Proc_32_101_EAB57C = -1
End Sub

Public Sub Proc_32_102_17D7AB4(arg_C) '17D7AB4
  'Data Table: 59BA10
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_AC As Variant
  Dim var_C0 As String
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim unk_59BA2D As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_140 As Variant
  Dim var_B0 As Fields15
  Dim var_148 As Variant
  Dim var_138 As Boolean
  Dim var_144 As Fields15
  Dim var_190 As Variant
  Dim var_1A4 As TextBox
  loc_17D59D4: Set var_90 = Me.TxtGt
  loc_17D59DA: Call 0.Method_Proc_32_102_17D7AB40 (1, var_94)
  loc_17D59E2: var_96 = var_94.TabIndex
  loc_17D59EA: var_8A = var_96
  loc_17D5A00: Set var_90 = Me.TxtPer
  loc_17D5A06: Call 0.Method_Proc_32_102_17D7AB4C (var_96, var_8C)
  loc_17D5A11: For var_9A = var_8A To var_96: 2 = var_9A 'Integer
  loc_17D5A23:   Set var_90 = Me.TxtPer
  loc_17D5A29:   Call 0.Method_Proc_32_102_17D7AB40 (var_8C, var_94)
  loc_17D5A31:   var_94.Visible = False
  loc_17D5A47:   Set var_90 = Me.TxtPer
  loc_17D5A4D:   Call 0.Method_Proc_32_102_17D7AB40 (var_8C, var_94)
  loc_17D5A64:   If IsObject(CVar(var_94)) Then
  loc_17D5A71:     Set var_90 = Me.TxtPer
  loc_17D5A77:     Call 0.Method_Proc_32_102_17D7AB40 (var_8C, var_94)
  loc_17D5A88:     Me.TxtPer.Unload var_94
  loc_17D5A94:   End If
  loc_17D5A97: Next var_9A 'Integer
  loc_17D5AA8: Set var_90 = Me.TxtGt
  loc_17D5AAE: Call 0.Method_Proc_32_102_17D7AB4C (var_96, var_8C)
  loc_17D5AB9: For var_B4 =  To var_96: 2 = var_B4 'Integer
  loc_17D5ACB:   Set var_90 = Me.TxtGt
  loc_17D5AD1:   Call 0.Method_Proc_32_102_17D7AB40 (var_8C, var_94)
  loc_17D5AD9:   var_94.Visible = False
  loc_17D5AEF:   Set var_90 = Me.TxtGt
  loc_17D5AF5:   Call 0.Method_Proc_32_102_17D7AB40 (var_8C)
  loc_17D5B0C:   If IsObject(CVar(var_94)) Then
  loc_17D5B19:     Set var_90 = Me.TxtGt
  loc_17D5B1F:     Call 0.Method_Proc_32_102_17D7AB40 (var_8C, var_94)
  loc_17D5B30:     Me.TxtGt.Unload var_94
  loc_17D5B3C:   End If
  loc_17D5B3F: Next var_B4 'Integer
  loc_17D5B50: Set var_90 = Me.LblCap
  loc_17D5B56: Call 0.Method_Proc_32_102_17D7AB4C (var_96, var_8C)
  loc_17D5B61: For var_B8 =  To var_96: 2 = var_B8 'Integer
  loc_17D5B73:   Set var_90 = Me.LblCap
  loc_17D5B79:   Call 0.Method_Proc_32_102_17D7AB40 (var_8C, var_94)
  loc_17D5B81:   var_94.Visible = False
  loc_17D5B97:   Set var_90 = Me.LblCap
  loc_17D5B9D:   Call 0.Method_Proc_32_102_17D7AB40 (var_8C)
  loc_17D5BA5:   var_AC = CVar(var_94) 'Address
  loc_17D5BB4:   If IsObject(var_AC) Then
  loc_17D5BC1:     Set var_90 = Me.LblCap
  loc_17D5BC7:     Call 0.Method_Proc_32_102_17D7AB40 (var_8C, var_94)
  loc_17D5BD8:     Me.LblCap.Unload var_94
  loc_17D5BE4:   End If
  loc_17D5BE7: Next var_B8 'Integer
  loc_17D5BF0: Set var_90 = Me.TopCtrl1
  loc_17D5BF6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_17D5C0F: If (CStr() = "Add") Then
  loc_17D5C2D:   var_C0 = "Select * From SundryType WHERE V_Type='" & MemVar_1F92078 & "PURC' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='"
  loc_17D5C49:   Proc_6_7_F25D88(var_AC, arg_C, CVar(var_C0 & MemVar_1F92078 & "PURC' aND AppDate<="))
  loc_17D5C68:   unk_59BA2D.Execute CStr(var_138 & var_AC & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_17D5C73:   Set var_88 = var_90
  loc_17D5C94: Else
  loc_17D5CAF:   var_C0 = "Select * From SundryType WHERE V_Type='" & MemVar_1F92078 & "PURC' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE V_Type='"
  loc_17D5CCB:   Proc_6_7_F25D88(var_AC, arg_C, CVar(var_C0 & MemVar_1F92078 & "PURC' aND AppDate="))
  loc_17D5CEA:   unk_59BA2D.Execute CStr(var_138 & var_AC & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_17D5CF5:   Set var_88 = var_90
  loc_17D5D13: End If
  loc_17D5D27: If (var_88.RecordCount > 0) Then
  loc_17D5D63:   Set var_B0 = Me.Txt
  loc_17D5D69:   Call 0.Method_Proc_32_102_17D7AB40 (CInt(9), var_140)
  loc_17D5D71:   var_140.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_17D5D87:   ' Referenced from: 17D7AAF
  loc_17D5D8D:   var_96 = var_88.EOF
  loc_17D5D96:   If Not(var_96) Then
  loc_17D5DD5:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_17D5E09:       Set var_B0 = Me.LblDummy
  loc_17D5E0F:       Call 0.Method_Proc_32_102_17D7AB48 (var_96)
  loc_17D5E29:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17D5E5E:         Set var_B0 = Me.LblDummy
  loc_17D5E64:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D5E75:         Me.LblDummy.Load var_140
  loc_17D5E88:       End If
  loc_17D5ED3:       var_140 = var_88.Fields.Item("SNo")
  loc_17D5EE8:       Set var_144 = Me.LblDummy
  loc_17D5EEE:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_140.Value), var_148)
  loc_17D5EF6:       var_148.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_17D5F45:       Set var_B0 = Me.TxtPer
  loc_17D5F4B:       Call 0.Method_Proc_32_102_17D7AB48 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D5F65:       If (var_140 > CVar(var_96)) Then
  loc_17D5F9A:         Set var_B0 = Me.TxtPer
  loc_17D5FA0:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D5FB1:         Me.TxtPer.Load var_140
  loc_17D5FC4:       End If
  loc_17D6009:       If (var_88.Fields.Item("SNo").Value > CVar(UBound(global_200, 1))) Then
  loc_17D6043:         ReDim Preserve global_200(0 To CLng(var_88.Fields.Item("SNo").Value))
  loc_17D6057:       End If
  loc_17D609C:       If (var_88.Fields.Item("SNo").Value > CVar(UBound(global_204, 1))) Then
  loc_17D60D6:         ReDim Preserve global_204(0 To CLng(var_88.Fields.Item("SNo").Value))
  loc_17D60EA:       End If
  loc_17D614E:       global_200(CLng(var_88.Fields.Item("SNo").Value)) = CStr(Trim(CVar(var_88.Fields.Item("PostYn"))))
  loc_17D61AC:       var_140 = var_88.Fields.Item("SNo")
  loc_17D61C4:       global_204(CLng(var_140.Value)) = CStr(var_88.Fields.Item("Nature").Value)
  loc_17D6212:       Set var_B0 = Me.TxtPer
  loc_17D6218:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6220:       var_140.TabIndex = (var_8A + 1)
  loc_17D6239:       var_8A = (var_8A + 1)
  loc_17D627D:       var_140 = var_88.Fields.Item("SNo")
  loc_17D62BD:       Set var_144 = Me.TxtPer
  loc_17D62C3:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_140.Value), var_148, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_17D62CB:       var_148.Visible = var_8A
  loc_17D632A:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D6389:         var_114 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D6392:         Set var_18C = Me.TxtPer
  loc_17D6398:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(True), var_190)
  loc_17D63DA:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D63E3:         Set var_B0 = Me.TxtPer
  loc_17D63E9:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("Nature").Value), var_140)
  loc_17D640D:         Set var_1A0 = Me.TxtPer
  loc_17D6413:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_17D641B:         var_1A4.Top = ((var_140.Top + var_190.Height) + CDbl(&HF))
  loc_17D6444:       End If
  loc_17D6480:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D64DF:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D64E8:         Set var_B0 = Me.TxtPer
  loc_17D64EE:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("Nature").Value), var_140)
  loc_17D6509:         Set var_18C = Me.TxtPer
  loc_17D650F:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D6517:         var_190.Left = var_140.Left
  loc_17D6536:       End If
  loc_17D6593:       var_148 = var_88.Fields.Item("SNo")
  loc_17D65E0:       Set var_18C = Me.TxtPer
  loc_17D65E6:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_148.Value), var_190)
  loc_17D65EE:       var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17D6661:       var_140 = var_88.Fields.Item("SNo")
  loc_17D6676:       Set var_144 = Me.TxtPer
  loc_17D667C:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_140.Value), var_148)
  loc_17D6684:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_17D66DB:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D6712:         Set var_B0 = Me.TxtPer
  loc_17D6718:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6720:         var_140.FontBold = True
  loc_17D6736:       Else
  loc_17D676A:         Set var_B0 = Me.TxtPer
  loc_17D6770:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6778:         var_140.FontBold = False
  loc_17D678B:       End If
  loc_17D67C4:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D67FB:         Set var_B0 = Me.TxtPer
  loc_17D6801:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6809:         var_140.Enabled = False
  loc_17D681F:       Else
  loc_17D6853:         Set var_B0 = Me.TxtPer
  loc_17D6859:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6861:         var_140.Enabled = True
  loc_17D6874:       End If
  loc_17D6878:       Set var_90 = Me.TopCtrl1
  loc_17D687E:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_140)
  loc_17D6897:       If (CStr() = "Browse") Then
  loc_17D68CE:         Set var_B0 = Me.TxtPer
  loc_17D68D4:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D68DC:         var_140.Enabled = False
  loc_17D68EF:       End If
  loc_17D692B:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17D6962:         Set var_B0 = Me.TxtPer
  loc_17D6968:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6970:         var_140.Enabled = False
  loc_17D6983:       End If
  loc_17D69B4:       Set var_B0 = Me.LblCap
  loc_17D69BA:       Call 0.Method_Proc_32_102_17D7AB48 (var_96)
  loc_17D69D4:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_17D6A09:         Set var_B0 = Me.LblCap
  loc_17D6A0F:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D6A20:         Me.LblCap.Load var_140
  loc_17D6A33:       End If
  loc_17D6A67:       Set var_B0 = Me.LblCap
  loc_17D6A6D:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6A75:       var_140.Visible = True
  loc_17D6AE4:       Set var_B0 = Me.TxtPer
  loc_17D6AEA:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6B05:       Set var_18C = Me.LblCap
  loc_17D6B0B:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D6B13:       var_190.Top = var_140.Top
  loc_17D6B6E:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D6BB2:         var_148 = var_88.Fields.Item("SNo")
  loc_17D6BCD:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D6BD6:         Set var_B0 = Me.LblCap
  loc_17D6BDC:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6BF7:         Set var_18C = Me.LblCap
  loc_17D6BFD:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_148.Value), var_190)
  loc_17D6C05:         var_190.Left = var_140.Left
  loc_17D6C24:       End If
  loc_17D6C84:       Set var_144 = Me.LblCap
  loc_17D6C8A:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_17D6C92:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_17D6CFB:       var_140 = var_88.Fields.Item("SNo")
  loc_17D6D10:       Set var_144 = Me.LblCap
  loc_17D6D16:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_140.Value), var_148)
  loc_17D6D1E:       var_148.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_17D6D75:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D6DAC:         Set var_B0 = Me.LblCap
  loc_17D6DB2:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6DBA:         var_140.FontBold = True
  loc_17D6DD0:       Else
  loc_17D6E04:         Set var_B0 = Me.LblCap
  loc_17D6E0A:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D6E12:         var_140.FontBold = False
  loc_17D6E25:       End If
  loc_17D6E56:       Set var_B0 = Me.LblAt
  loc_17D6E5C:       Call 0.Method_Proc_32_102_17D7AB48 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D6E76:       If (var_140 > CVar(var_96)) Then
  loc_17D6EAB:         Set var_B0 = Me.LblAt
  loc_17D6EB1:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D6EC2:         Me.LblAt.Load var_140
  loc_17D6ED5:       End If
  loc_17D6F16:       var_140 = var_88.Fields.Item("SNo")
  loc_17D6F56:       Set var_144 = Me.LblAt
  loc_17D6F5C:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_140.Value), var_148)
  loc_17D6F64:       var_148.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_17D6FC8:       var_148 = var_88.Fields.Item("SNo")
  loc_17D6FE3:       Set var_B0 = Me.TxtPer
  loc_17D6FE9:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D7004:       Set var_18C = Me.LblAt
  loc_17D700A:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_148.Value), var_190)
  loc_17D7012:       var_190.Top = var_140.Top
  loc_17D706A:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D70A1:         Set var_B0 = Me.LblAt
  loc_17D70A7:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D70AF:         var_140.FontBold = True
  loc_17D70C5:       Else
  loc_17D70F9:         Set var_B0 = Me.LblAt
  loc_17D70FF:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D7107:         var_140.FontBold = False
  loc_17D711A:       End If
  loc_17D7165:       var_140 = var_88.Fields.Item("SNo")
  loc_17D717A:       Set var_144 = Me.LblAt
  loc_17D7180:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_140.Value), var_148)
  loc_17D7188:       var_148.Tag = CStr(var_88.Fields.Item("RoundOff").Value)
  loc_17D71E2:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D7241:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D724A:         Set var_B0 = Me.LblAt
  loc_17D7250:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("RoundOff").Value), var_140)
  loc_17D726B:         Set var_18C = Me.LblAt
  loc_17D7271:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D7279:         var_190.Left = var_140.Left
  loc_17D7298:       End If
  loc_17D72C9:       Set var_B0 = Me.TxtGt
  loc_17D72CF:       Call 0.Method_Proc_32_102_17D7AB48 (var_96, var_88.Fields.Item("SNo").Value)
  loc_17D72E9:       If (var_140 > CVar(var_96)) Then
  loc_17D731E:         Set var_B0 = Me.TxtGt
  loc_17D7324:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value))
  loc_17D7335:         Me.TxtGt.Load var_140
  loc_17D7348:       End If
  loc_17D7380:       Set var_B0 = Me.TxtGt
  loc_17D7386:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D738E:       var_140.TabIndex = (var_8A + 1)
  loc_17D73A7:       var_8A = (var_8A + 1)
  loc_17D73DE:       Set var_B0 = Me.TxtGt
  loc_17D73E4:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140, &HFF)
  loc_17D73EC:       var_140.Visible = var_8A
  loc_17D745B:       Set var_B0 = Me.TxtPer
  loc_17D7461:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D747C:       Set var_18C = Me.TxtGt
  loc_17D7482:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D748A:       var_190.Top = var_140.Top
  loc_17D74E5:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_17D7544:         var_E4 = (var_88.Fields.Item("SNo").Value - 1)
  loc_17D754D:         Set var_B0 = Me.TxtGt
  loc_17D7553:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D756E:         Set var_18C = Me.TxtGt
  loc_17D7574:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_17D757C:         var_190.Left = var_140.Left
  loc_17D759B:       End If
  loc_17D75F8:       var_148 = var_88.Fields.Item("SNo")
  loc_17D7645:       Set var_18C = Me.TxtGt
  loc_17D764B:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_148.Value), var_190)
  loc_17D7653:       var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_17D76C3:       var_140 = var_88.Fields.Item("SNo")
  loc_17D76D8:       Set var_144 = Me.TxtGt
  loc_17D76DE:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_140.Value), var_148)
  loc_17D76E6:       var_148.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_17D773B:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D7772:         Set var_B0 = Me.TxtGt
  loc_17D7778:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D7780:         var_140.FontBold = True
  loc_17D7796:       Else
  loc_17D77CA:         Set var_B0 = Me.TxtGt
  loc_17D77D0:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D77D8:         var_140.FontBold = False
  loc_17D77EB:       End If
  loc_17D7824:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_17D785B:         Set var_B0 = Me.TxtGt
  loc_17D7861:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D7869:         var_140.Enabled = False
  loc_17D787F:       Else
  loc_17D78B3:         Set var_B0 = Me.TxtGt
  loc_17D78B9:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D78C1:         var_140.Enabled = True
  loc_17D78D4:       End If
  loc_17D7909:       Set var_B0 = Me.LblCap
  loc_17D790F:       Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D7940:       If (var_140.Tag = MemVar_1F92070 & "ROFF") Then
  loc_17D7977:         Set var_B0 = Me.TxtGt
  loc_17D797D:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D7985:         var_140.Enabled = False
  loc_17D7998:       End If
  loc_17D799C:       Set var_90 = Me.TopCtrl1
  loc_17D79A2:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_140)
  loc_17D79BB:       If (CStr() = "Browse") Then
  loc_17D79F2:         Set var_B0 = Me.TxtGt
  loc_17D79F8:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D7A00:         var_140.Enabled = False
  loc_17D7A13:       End If
  loc_17D7A4F:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_17D7A86:         Set var_B0 = Me.TxtGt
  loc_17D7A8C:         Call 0.Method_Proc_32_102_17D7AB40 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_17D7A94:         var_140.Enabled = False
  loc_17D7AA7:       End If
  loc_17D7AA7:     End If
  loc_17D7AAA:     var_88.MoveNext
  loc_17D7AAF:     GoTo loc_17D5D87
  loc_17D7AB2:   End If
  loc_17D7AB2: End If
  loc_17D7AB2: Exit Sub
End Sub

Public Sub Proc_32_103_17C3018(arg_C) '17C3018
  'Data Table: 59BA10
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
  Dim unk_59BA2D As Connection15
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
  loc_17C1032: global_216 = CDbl(0)
  loc_17C1041: Set var_B4 = Me.TxtGt
  loc_17C1047: Call 0.Method_Proc_32_103_17C30188 (var_B6, var_86)
  loc_17C1052: For var_BA = global_216 To var_B6: 1 = var_BA 'Integer
  loc_17C1092:   Set var_B4 = Me.LblCap
  loc_17C1098:   Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C8, CVar("Select IsNull(Max(Nature),'') from SundryType Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND SundryCode='"), var_18C, -1)
  loc_17C10E0:   unk_59BA2D.Execute CStr(var_194 & Trim(CVar(var_C8)) & "' And V_Type='" & CVar(MemVar_1F92078) & "PURC'"), 0, var_1A8
  loc_17C10F0:    = var_194.Item(global_216)
  loc_17C10F8:    = var_1A8.Value
  loc_17C1105:   var_A0 = Proc_6_38_E68A98(var_C4.Tag.Fields)
  loc_17C1139:   If (var_A0 = "Addition") Then
  loc_17C113C:     GoTo loc_17C1214
  loc_17C113F:   End If
  loc_17C1147:   If (var_A0 = "Deduction") Then
  loc_17C114A:     GoTo loc_17C1214
  loc_17C114D:   End If
  loc_17C1155:   If (var_A0 = "Discount") Then
  loc_17C1165:     Set var_B4 = Me.TxtGt
  loc_17C116B:     Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C1173:     var_C4.Text = vbNullString
  loc_17C1184:     var_92 = CByte(var_86) 'Byte
  loc_17C118B:   Else
  loc_17C11AE:     If ((((var_A0 = "Sale Tax") Or (var_A0 = "CGST")) Or (var_A0 = "SGST")) Or (var_A0 = "IGST")) Then
  loc_17C11BE:       Set var_B4 = Me.TxtGt
  loc_17C11C4:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C11CC:       var_C4.Text = vbNullString
  loc_17C11DD:       var_94 = CByte(var_86) 'Byte
  loc_17C11E7:       global_100 = var_86
  loc_17C11ED:     Else
  loc_17C11FA:       Set var_B4 = Me.TxtGt
  loc_17C1200:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C1208:       var_C4.Text = vbNullString
  loc_17C1214:     End If
  loc_17C1214:   End If
  loc_17C1214:   ' Referenced from: 17C114A
  loc_17C1214:   ' Referenced from: 17C113C
  loc_17C1217: Next var_BA 'Integer
  loc_17C122F: Me.FGCat.Rows = 1
  loc_17C1243: Set var_B4 = Me.TxtGt
  loc_17C1249: Call 0.Method_Proc_32_103_17C30188 (var_B6, var_86)
  loc_17C1254: For var_1BC =  To var_B6: 2 = var_1BC 'Integer
  loc_17C1267:   Set var_B4 = Me.LblCap
  loc_17C126D:   Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C12A7:   Set var_190 = Me.LblCap
  loc_17C12AD:   Call 0.Method_Proc_32_103_17C30180 (var_86, var_194)
  loc_17C12FA:   If CBool((Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) And (Trim(CVar(var_194.Tag)) <> CVar(MemVar_1F92078 & "ADD"))) Then
  loc_17C130A:     Set var_B4 = Me.TxtGt
  loc_17C1310:     Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C1318:     var_C4.Text = vbNullString
  loc_17C132E:     If (var_94 > var_92) Then
  loc_17C1356:       For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_1C0 'Integer
  loc_17C1369:         Set var_B4 = Me.LblCap
  loc_17C136F:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C13AA:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_17C13B1:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C13B9:           var_158 = CVar(CLng(&H14)) 'Long
  loc_17C13D3:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C13E4:           If (var_C0 = "Y") Then
  loc_17C13EB:             var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1405:             Set var_B4 = Me.TxtPer
  loc_17C140B:             Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0, CVar(CLng(&HF)))
  loc_17C1413:             var_118 = var_C4.Text
  loc_17C1422:             var_D8 = CVar(CStr(Val(var_C0))) 'String
  loc_17C142A:             Set var_190 = Me.FGrid
  loc_17C1430:             LateIdCallSt
  loc_17C1447:           End If
  loc_17C1447:         End If
  loc_17C144B:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1453:         var_158 = CVar(CLng(5)) 'Long
  loc_17C147C:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C1484:         var_1E0 = CVar(CLng(9)) 'Long
  loc_17C14AD:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C14B5:         var_220 = CVar(CLng(&HF)) 'Long
  loc_17C14DE:         var_260 = CVar(CLng(var_88)) 'Long
  loc_17C14E6:         var_280 = CVar(CLng(&H10)) 'Long
  loc_17C150F:         var_108 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_17C151F:         var_168 = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_17C1527:         Set var_194 = Me.FGrid
  loc_17C152D:         LateIdCallSt
  loc_17C155E:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1566:         var_158 = CVar(CLng(&HF)) 'Long
  loc_17C1596:         If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_17C159D:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C15A5:           var_158 = CVar(CLng(5)) 'Long
  loc_17C15CE:           var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C15D6:           var_1E0 = CVar(CLng(9)) 'Long
  loc_17C160C:           global_216 = (global_216 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_17C1624:         End If
  loc_17C1628:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C1630:         var_1E0 = CVar(CLng(5)) 'Long
  loc_17C1659:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C1661:         var_220 = CVar(CLng(&HB)) 'Long
  loc_17C166A:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1672:         var_158 = CVar(CLng(9)) 'Long
  loc_17C16A2:         Set var_190 = Me.FGrid
  loc_17C16A8:         LateIdCallSt
  loc_17C16D5:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C1706:         Set var_C4 = Me.LblDummy
  loc_17C170C:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_158, CVar(CLng(var_88)), var_190, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_17C1714:         var_190.Caption = var_158
  loc_17C1730:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1738:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C1752:         var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C1761:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C1769:         var_1E0 = CVar(CLng(&H10)) 'Long
  loc_17C1772:         Set var_C4 = Me.FGrid
  loc_17C1792:         var_200 = CVar(CLng(var_88)) 'Long
  loc_17C179A:         var_220 = CVar(CLng(&H12)) 'Long
  loc_17C17BC:         var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C17CB:         var_280 = CVar(CLng(&H13)) 'Long
  loc_17C17F0:         var_108 = CVar(((Val(var_C0) - Val(CStr(var_C4.TextMatrix)))) + var_2B8)) 'Double
  loc_17C180E:         LateIdCallSt
  loc_17C1848:         Set var_B4 = Me.LblCap
  loc_17C184E:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0, Me.FGrid, CVar(CStr(Format(var_108, "0.00"))), 1, 1)
  loc_17C1856:         var_280 = var_C4.Tag
  loc_17C1889:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_17C1899:           Set var_B4 = Me.TxtGt
  loc_17C189F:           Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0, CVar(CLng(var_88)), var_2B8)
  loc_17C18A7:           var_220 = var_C4.Text
  loc_17C18BB:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C18E5:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C1904:           var_E8 = CVar((Val(var_C0) + var_2B0)) 'Double
  loc_17C1921:           Set var_194 = Me.TxtGt
  loc_17C1927:           Call 0.Method_Proc_32_103_17C30180 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C0)), "0.00")), 1, 1, var_2B0)
  loc_17C192F:           var_1A8.Text = CVar(CLng(&H10))
  loc_17C1955:         End If
  loc_17C1958:       Next var_1C0 'Integer
  loc_17C1960:     Else
  loc_17C1985:       For var_2BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_88 = var_2BC 'Integer
  loc_17C1998:         Set var_B4 = Me.LblCap
  loc_17C199E:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C19D9:         If (Trim(CVar(var_C4.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_17C19E0:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C19E8:           var_158 = CVar(CLng(&H14)) 'Long
  loc_17C1A02:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C1A13:           If (var_C0 = "Y") Then
  loc_17C1A1A:             var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1A34:             Set var_B4 = Me.TxtPer
  loc_17C1A3A:             Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0, CVar(CLng(&HF)))
  loc_17C1A42:             var_118 = var_C4.Text
  loc_17C1A51:             var_D8 = CVar(CStr(Val(var_C0))) 'String
  loc_17C1A59:             Set var_190 = Me.FGrid
  loc_17C1A5F:             LateIdCallSt
  loc_17C1A76:           End If
  loc_17C1A76:         End If
  loc_17C1AB3:         Set var_C4 = Me.LblDummy
  loc_17C1AB9:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_17C1AC1:         var_190.Caption = var_190
  loc_17C1ADD:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1AE5:         var_158 = CVar(CLng(&HB)) 'Long
  loc_17C1B0E:         var_1A4 = CVar(CLng(var_88)) 'Long
  loc_17C1B16:         var_1E0 = CVar(CLng(&HF)) 'Long
  loc_17C1B1F:         Set var_C4 = Me.FGrid
  loc_17C1B3F:         var_220 = CVar(CLng(var_88)) 'Long
  loc_17C1B47:         var_240 = CVar(CLng(&H10)) 'Long
  loc_17C1B7C:         var_148 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_C4.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_17C1B84:         Set var_190 = Me.FGrid
  loc_17C1B8A:         LateIdCallSt
  loc_17C1BB5:         var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1BBD:         var_158 = CVar(CLng(&HF)) 'Long
  loc_17C1BED:         If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_17C1BF4:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1BFC:           var_158 = CVar(CLng(&HB)) 'Long
  loc_17C1C16:           var_C0 = CStr(Me.FGrid.TextMatrix))
  loc_17C1C1E:           var_2A8 = Val(var_C0)
  loc_17C1C2E:           global_216 = (global_216 + var_2A8)
  loc_17C1C3A:         End If
  loc_17C1C47:         Set var_B4 = Me.LblCap
  loc_17C1C4D:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0, global_216, var_2A8, var_158, var_118)
  loc_17C1C55:         var_158 = var_C4.Tag
  loc_17C1C88:         If (Trim(CVar(var_C0)) = CVar(MemVar_1F92070 & "DIS")) Then
  loc_17C1C98:           Set var_B4 = Me.TxtGt
  loc_17C1C9E:           Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0, var_118, var_190)
  loc_17C1CA6:           var_148 = var_C4.Text
  loc_17C1CBA:           var_118 = CVar(CLng(var_88)) 'Long
  loc_17C1CE4:           var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C1D03:           var_E8 = CVar((Val(var_C0) + var_2B0)) 'Double
  loc_17C1D20:           Set var_194 = Me.TxtGt
  loc_17C1D26:           Call 0.Method_Proc_32_103_17C30180 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C0)), "0.00")), 1, 1, var_2B0)
  loc_17C1D2E:           var_1A8.Text = CVar(CLng(&H10))
  loc_17C1D54:         End If
  loc_17C1D57:       Next var_2BC 'Integer
  loc_17C1D5C:     End If
  loc_17C1D5C:   End If
  loc_17C1D5F: Next var_1BC 'Integer
  loc_17C1D89: For var_2C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C0 'Integer
  loc_17C1D93:   var_118 = CVar(CLng(var_86)) 'Long
  loc_17C1D9B:   var_158 = CVar(CLng(5)) 'Long
  loc_17C1DC4:   var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C1DCC:   var_1E0 = CVar(CLng(9)) 'Long
  loc_17C1DF5:   var_220 = CVar(CLng(var_86)) 'Long
  loc_17C1DFD:   var_240 = CVar(CLng(&HB)) 'Long
  loc_17C1E2E:   var_148 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))) 'String
  loc_17C1E36:   Set var_190 = Me.FGrid
  loc_17C1E3C:   LateIdCallSt
  loc_17C1E76:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C1E7E:   var_158 = CVar(CLng(6)) 'Long
  loc_17C1EB6:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <= CDbl(0)) Then
  loc_17C1ECC:     var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C1ED4:     var_158 = CVar(CLng(6)) 'Long
  loc_17C1EDD:     var_E8 = CVar(CStr(1)) 'String
  loc_17C1EE5:     Set var_C4 = Me.FGrid
  loc_17C1EEB:     LateIdCallSt
  loc_17C1F01:   End If
  loc_17C1F14:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C1F1C:   var_158 = CVar(CLng(6)) 'Long
  loc_17C1F25:   Set var_C4 = Me.FGrid
  loc_17C1F36:   var_C0 = CStr(var_C4.TextMatrix))
  loc_17C1F54:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_17C1F5C:   var_1E0 = CVar(CLng(5)) 'Long
  loc_17C1F85:   Set var_1A8 = Me.FGrid
  loc_17C1F94:   var_220 = CVar(CLng(var_1A8.Row)) 'Long
  loc_17C1F9C:   var_240 = CVar(CLng(7)) 'Long
  loc_17C1FD5:   Set var_2C4 = Me.FGrid
  loc_17C1FDB:   LateIdCallSt
  loc_17C201A:   Set var_B4 = Me.TxtGt
  loc_17C2020:   Call 0.Method_Proc_32_103_17C30180 (1, var_C4, var_C0, var_2C4, CVar(CStr(Format(CVar((Val(var_C0) * Val(CStr(Me.FGrid.TextMatrix))))), "0.000"))), 1, 1)
  loc_17C2028:   var_240 = var_C4.Text
  loc_17C2035:   var_2A8 = Val(var_C0)
  loc_17C2066:   var_2B0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C2085:   var_E8 = CVar((var_2A8 + var_2B0)) 'Double
  loc_17C20A1:   Set var_194 = Me.TxtGt
  loc_17C20A7:   Call 0.Method_Proc_32_103_17C30180 (1, var_1A8, CStr(Format(var_C4.TextMatrix), "0.00")), 1, 1, var_2B0, CVar(CLng(&HB)))
  loc_17C20AF:   var_1A8.Text = CVar(CLng(var_86))
  loc_17C20D8: Next var_2C0 'Integer
  loc_17C20F0: Me.FGCat.Rows = 1
  loc_17C211D: For var_2C8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2C8 'Integer
  loc_17C212D:   If (var_94 > var_92) Then
  loc_17C2134:     var_118 = CVar(CLng(var_86)) 'Long
  loc_17C213C:     var_158 = CVar(CLng(&H1A)) 'Long
  loc_17C215B:     var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C2163:     var_1E0 = CVar(CLng(9)) 'Long
  loc_17C218C:     var_200 = CVar(CLng(var_86)) 'Long
  loc_17C2194:     var_220 = CVar(CLng(5)) 'Long
  loc_17C21CE:     Set var_194 = Me.FGrid
  loc_17C21E7:     var_2D4 = Val(CStr(var_194.TextMatrix)))
  loc_17C220A:     var_128 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_2D4)) 'Double
  loc_17C2229:     Call Proc_32_107_1715EA8(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00")), 1, 1, var_2D4, CVar(CLng(&H10)), CVar(CLng(var_86)))
  loc_17C2258:   Else
  loc_17C225C:     var_118 = CVar(CLng(var_86)) 'Long
  loc_17C2264:     var_158 = CVar(CLng(&H1A)) 'Long
  loc_17C2283:     var_1A4 = CVar(CLng(var_86)) 'Long
  loc_17C228B:     var_1E0 = CVar(CLng(9)) 'Long
  loc_17C2294:     Set var_C4 = Me.FGrid
  loc_17C22DE:     var_2B8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17C231C:     Call Proc_32_107_1715EA8(CStr(Me.FGrid.TextMatrix)), var_86, CSng(Format(CVar((Val(CStr(var_C4.TextMatrix))) * var_2B8)), "0.00")), 1, 1, var_2B8, CVar(CLng(5)), CVar(CLng(var_86)))
  loc_17C2342:   End If
  loc_17C2345: Next var_2C8 'Integer
  loc_17C234E: Set var_B4 = Me.TopCtrl1
  loc_17C2354: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_17C236D: If (CStr() = "Add") Then
  loc_17C237C:   Set var_B4 = Me.TxtGt
  loc_17C2382:   Call 0.Method_Proc_32_103_17C30188 (var_B6, var_86)
  loc_17C238D:   For var_2D8 =  To var_B6: 2 = var_2D8 'Integer
  loc_17C23A0:     Set var_B4 = Me.TxtPer
  loc_17C23A6:     Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C23AE:     var_B6 = var_C4.Visible
  loc_17C23CA:     Set var_190 = Me.LblCap
  loc_17C23D0:     Call 0.Method_Proc_32_103_17C30180 (var_86, var_194)
  loc_17C23D8:     var_C0 = var_194.Tag
  loc_17C240E:     Set var_1A8 = Me.LblCap
  loc_17C2414:     Call 0.Method_Proc_32_103_17C30180 (var_86, var_2C4)
  loc_17C2441:     var_2E8 = (var_B6 = &HFF) And (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "SCH")) And (Trim(CVar(var_2C4.Tag)) <> CVar(MemVar_1F92078 & "ADD"))
  loc_17C2467:     If CBool(var_2E8) Then
  loc_17C2470:       Call Proc_32_104_119A584(var_86)
  loc_17C2478:       var_90 = var_2A8
  loc_17C2488:       Set var_B4 = Me.TxtPer
  loc_17C248E:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0)
  loc_17C2496:       var_90 = var_C4.Text
  loc_17C24A3:       var_2A8 = Val(var_C0)
  loc_17C24D5:       var_C8 = CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00"))
  loc_17C24E3:       Set var_190 = Me.TxtGt
  loc_17C24E9:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_194, var_C8, 1)
  loc_17C24F1:       var_194.Text = 1
  loc_17C2523:       Set var_B4 = Me.LblDummy
  loc_17C2529:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, CStr(var_90))
  loc_17C2531:       var_C4.Caption = var_2A8
  loc_17C2540:     End If
  loc_17C2543:   Next var_2D8 'Integer
  loc_17C2548: End If
  loc_17C2567: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_17C257D:   Me.FGCat.FixedRows = 1
  loc_17C2585: End If
  loc_17C25B3: For var_2EC = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_88 = var_2EC 'Integer
  loc_17C25C5:   Set var_B4 = Me.TxtGt
  loc_17C25CB:   Call 0.Method_Proc_32_103_17C30188 (var_B6, var_86, 1)
  loc_17C25D6:   For var_2F0 = CDbl(0) To var_B6: 0 = var_2F0 'Integer
  loc_17C25E9:     Set var_B4 = Me.LblDummy
  loc_17C25EF:     Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C2611:     var_118 = CVar(CLng(var_88)) 'Long
  loc_17C2648:     Set var_194 = Me.LblCap
  loc_17C264E:     Call 0.Method_Proc_32_103_17C30180 (var_86, var_1A8, var_C8, (CVar(CLng(2)) = CVar(CStr(Me.FGCat.TextMatrix)))))
  loc_17C2656:     var_118 = var_1A8.Tag
  loc_17C269F:     If CBool(Trim(CVar(var_C4.Tag)) And (Trim(CVar(var_C8)) <> CVar(MemVar_1F92078 & "ADD"))) Then
  loc_17C26AF:       Set var_B4 = Me.TxtGt
  loc_17C26B5:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C26BD:       var_C0 = var_C4.Text
  loc_17C26CA:       var_2A8 = Val(var_C0)
  loc_17C26D1:       var_118 = CVar(CLng(var_88)) 'Long
  loc_17C26D9:       var_158 = CVar(CLng(6)) 'Long
  loc_17C26FB:       var_2B0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_17C271A:       var_E8 = CVar((var_2A8 + var_2B0)) 'Double
  loc_17C2737:       Set var_194 = Me.TxtGt
  loc_17C273D:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_1A8, CStr(Format(Trim(CVar(var_C4.Tag)), "0.00")), 1, 1)
  loc_17C2745:       var_1A8.Text = var_2B0
  loc_17C276E:     Else
  loc_17C277B:       Set var_B4 = Me.TxtPer
  loc_17C2781:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_B6, var_158)
  loc_17C2789:       var_118 = var_C4.Visible
  loc_17C279B:       If (var_B6 = &HFF) Then
  loc_17C27A4:         Call Proc_32_104_119A584(var_86, var_2A8)
  loc_17C27AC:         var_90 = var_2A8
  loc_17C27BC:         Set var_B4 = Me.TxtPer
  loc_17C27C2:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0)
  loc_17C27CA:         var_90 = var_C4.Text
  loc_17C27D7:         var_2A8 = Val(var_C0)
  loc_17C2817:         Set var_190 = Me.TxtGt
  loc_17C281D:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_194, CStr(Format(CVar(((var_90 * var_2A8) / CDbl(&H64))), "0.00")), 1)
  loc_17C2825:         var_194.Text = 1
  loc_17C2857:         Set var_B4 = Me.LblDummy
  loc_17C285D:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, CStr(var_90))
  loc_17C2865:         var_C4.Caption = var_2A8
  loc_17C2874:       End If
  loc_17C2874:     End If
  loc_17C2877:   Next var_2F0 'Integer
  loc_17C287F: Next var_2EC 'Integer
  loc_17C2890: Set var_B4 = Me.TxtGt
  loc_17C2896: Call 0.Method_Proc_32_103_17C30188 (var_B6, var_86)
  loc_17C28A1: For var_2F4 =  To var_B6: 2 = var_2F4 'Integer
  loc_17C28B4:   Set var_B4 = Me.LblCap
  loc_17C28BA:   Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C28CA:   var_D8 = CVar(var_C4.Tag) 'String
  loc_17C28F5:   If (Trim(var_D8) = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_17C28FE:     Call Proc_32_104_119A584(var_86)
  loc_17C2906:     var_90 = var_2A8
  loc_17C2921:     Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, CStr(var_90))
  loc_17C2929:     var_C4.Caption = var_90
  loc_17C294E:     unk_59BA2D.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Purchase Bill'", var_D8, -1
  loc_17C2959:     Set var_B0 = Me.LblDummy
  loc_17C2976:     If (var_B0.RecordCount > 0) Then
  loc_17C2988:       var_B4 = var_B0.Fields
  loc_17C2990:       var_C4 = var_B4.Item("RoundOffType")
  loc_17C29BC:       Proc_6_85_1261068(var_90, CByte(2), CStr(Left(CVar(var_C4), 1)))
  loc_17C29F9:       Set var_190 = Me.TxtGt
  loc_17C29FF:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_194, CStr(Format(CVar(var_B4), "0.00")), 1)
  loc_17C2A07:       var_194.Text = 1
  loc_17C2A2C:     Else
  loc_17C2A2F:       var_C0 = "S"
  loc_17C2A40:       Proc_6_85_1261068(var_90, CByte(2), var_C0)
  loc_17C2A6F:       var_C8 = CStr(Format(CVar(var_2A8), "0.00"))
  loc_17C2A7D:       Set var_B4 = Me.TxtGt
  loc_17C2A83:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C8, 1)
  loc_17C2A8B:       var_C4.Text = 1
  loc_17C2AA7:     End If
  loc_17C2AAA:   Else
  loc_17C2AB1:     If (var_86 <> arg_C) Then
  loc_17C2AC1:       Set var_B4 = Me.LblCap
  loc_17C2AC7:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0)
  loc_17C2ACF:       var_2A8 = var_C4.Tag
  loc_17C2B01:       Set var_190 = Me.LblCap
  loc_17C2B07:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_194, var_C8)
  loc_17C2B0F:       (Trim(CVar(var_C0)) = CVar(MemVar_1F92078 & "TOT")) = var_194.Tag
  loc_17C2B54:       If CBool(var_2A8 Or (Trim(CVar(var_C8)) = CVar(MemVar_1F92078 & "NET"))) Then
  loc_17C2B5D:         Call Proc_32_104_119A584(var_86)
  loc_17C2B97:         Set var_B4 = Me.TxtGt
  loc_17C2B9D:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, CStr(Format(CVar(var_2A8), "0.00")))
  loc_17C2BA5:         var_C4.Text = 1
  loc_17C2BBD:       End If
  loc_17C2BBD:     End If
  loc_17C2BBD:   End If
  loc_17C2BC0: Next var_2F4 'Integer
  loc_17C2BD1: Set var_B4 = Me.TxtGt
  loc_17C2BD7: Call 0.Method_Proc_32_103_17C30188 (var_B6, var_86)
  loc_17C2BE2: For var_2FC =  To var_B6: 1 = var_2FC 'Integer
  loc_17C2BF3:   var_300 = global_204(CLng(var_86))
  loc_17C2BFE:   If Not (var_300 = "Addition") Then
  loc_17C2C09:     If Not (var_300 = "Deduction") Then
  loc_17C2C14:       If Not (var_300 = "Discount") Then
  loc_17C2C1F:         If Not (var_300 = "Luxury Tax") Then
  loc_17C2C2A:           If Not (var_300 = "Sale Tax") Then
  loc_17C2C35:             If Not (var_300 = "Service Charge") Then
  loc_17C2C40:               If (var_300 = "Service Tax") Then
  loc_17C2C43:               End If
  loc_17C2C43:             End If
  loc_17C2C43:           End If
  loc_17C2C43:         End If
  loc_17C2C43:       End If
  loc_17C2C43:     End If
  loc_17C2C53:     If (global_200(CLng(var_86)) = "No") Then
  loc_17C2C5D:       Set var_B4 = Me.TxtGt
  loc_17C2C63:       Call 0.Method_Proc_32_103_17C30188 (var_B6)
  loc_17C2C75:       Set var_C4 = Me.TxtGt
  loc_17C2C7B:       Call 0.Method_Proc_32_103_17C30180 (var_B6, var_190)
  loc_17C2C8F:       Set var_194 = Me.TxtGt
  loc_17C2C95:       Call 0.Method_Proc_32_103_17C30188 (var_302)
  loc_17C2CA7:       Set var_1A8 = Me.TxtGt
  loc_17C2CAD:       Call 0.Method_Proc_32_103_17C30180 (var_302, var_2C4)
  loc_17C2CE5:       var_F8 = Mid(CVar(var_190.Tag), (InStr(1, var_2C4.Tag, CStr(var_86), 0) - 1), 1)
  loc_17C2CED:       var_138 = "-"
  loc_17C2D14:       If (Format(CVar(var_2A8), "0.00") = "0.00") Then
  loc_17C2D24:         Set var_B4 = Me.TxtGt
  loc_17C2D2A:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C2D32:         var_C0 = var_C4.Text
  loc_17C2D49:         var_9C = (var_9C - Val(var_C0))
  loc_17C2D59:       Else
  loc_17C2D66:         Set var_B4 = Me.TxtGt
  loc_17C2D6C:         Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0)
  loc_17C2D74:         var_9C = var_C4.Text
  loc_17C2D8B:         var_9C = (var_9C + Val(var_C0))
  loc_17C2D98:       End If
  loc_17C2D98:     End If
  loc_17C2D9F:     Set var_B4 = Me.TxtGt
  loc_17C2DA5:     Call 0.Method_Proc_32_103_17C30188 (var_B6, var_9C)
  loc_17C2DB7:     Set var_C4 = Me.TxtGt
  loc_17C2DBD:     Call 0.Method_Proc_32_103_17C30180 (var_B6, var_190, var_C0)
  loc_17C2DC5:     var_2A8 = var_190.Tag
  loc_17C2DD1:     Set var_194 = Me.TxtGt
  loc_17C2DD7:     Call 0.Method_Proc_32_103_17C30188 (var_302)
  loc_17C2DE9:     Set var_1A8 = Me.TxtGt
  loc_17C2DEF:     Call 0.Method_Proc_32_103_17C30180 (var_302, var_2C4)
  loc_17C2E27:     var_F8 = Mid(CVar(var_C0), (InStr(1, var_2C4.Tag, CStr(var_86), 0) - 1), 1)
  loc_17C2E2F:     var_138 = "-"
  loc_17C2E56:     If (Format(CVar(var_2A8), "0.00") = "0.00") Then
  loc_17C2E66:       Set var_B4 = Me.TxtGt
  loc_17C2E6C:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4)
  loc_17C2E74:       var_C0 = var_C4.Text
  loc_17C2E8B:       var_A8 = (var_A8 - Val(var_C0))
  loc_17C2E9B:     Else
  loc_17C2EA8:       Set var_B4 = Me.TxtGt
  loc_17C2EAE:       Call 0.Method_Proc_32_103_17C30180 (var_86, var_C4, var_C0)
  loc_17C2EB6:       var_A8 = var_C4.Text
  loc_17C2ECD:       var_A8 = (var_A8 + Val(var_C0))
  loc_17C2EDA:     End If
  loc_17C2EDA:   End If
  loc_17C2EDD: Next var_2FC 'Integer
  loc_17C2EFC: Set var_C4 = Me.TxtGt
  loc_17C2F02: Call 0.Method_Proc_32_103_17C30188 (var_B6)
  loc_17C2F14: Set var_190 = Me.TxtGt
  loc_17C2F1A: Call 0.Method_Proc_32_103_17C30180 (var_B6, var_194)
  loc_17C2F22: var_C0 = var_194.Text
  loc_17C2F61: Call Proc_32_111_10B23E8(CByte((CLng(Me.FGrid.Rows) - 1)), CByte(1), &HB, var_9C)
  loc_17C2F81: var_D8 = Me.FGrid.Rows
  loc_17C2F91: Set var_C4 = Me.TxtGt
  loc_17C2F97: Call 0.Method_Proc_32_103_17C30188 (var_B6, var_D8, Val(var_C0))
  loc_17C2FA9: Set var_190 = Me.TxtGt
  loc_17C2FAF: Call 0.Method_Proc_32_103_17C30180 (var_B6, var_194, var_C0)
  loc_17C2FB7: &H20 = var_194.Text
  loc_17C2FF6: Call Proc_32_111_10B23E8(CByte((CLng(var_D8) - 1)), CByte(1), &HB, var_A8, Val(var_C0))
  loc_17C3011: Set var_B0 = Nothing
  loc_17C3014: Exit Sub
End Sub

Public Sub Proc_32_104_119A584(arg_C) '119A584
  'Data Table: 59BA10
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
  loc_119A1A5: Set var_A8 = Me.TxtGt
  loc_119A1AB: Call 0.Method_Proc_32_104_119A5840 (arg_C, var_AC)
  loc_119A1CA: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_119A1E8: Set var_A8 = Me.LblCap
  loc_119A1EE: Call 0.Method_Proc_32_104_119A5840 (arg_C, var_AC)
  loc_119A229: If (Trim(CVar(var_AC.Tag)) = CVar(MemVar_1F92070 & "SCH")) Then
  loc_119A251:   For var_F4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_F4 'Integer
  loc_119A25B:     var_104 = CVar(CLng(var_A2)) 'Long
  loc_119A263:     var_124 = CVar(CLng(&H1F)) 'Long
  loc_119A28E:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_119A295:       var_104 = CVar(CLng(var_A2)) 'Long
  loc_119A29D:       var_124 = CVar(CLng(&HB)) 'Long
  loc_119A2C9:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_119A2D5:     End If
  loc_119A2D8:   Next var_F4 'Integer
  loc_119A2DD: End If
  loc_119A2E7: If (Len(var_90) > 0) Then
  loc_119A319:   Set var_A8 = Me.LblCap
  loc_119A31F:   Call 0.Method_Proc_32_104_119A5840 (arg_C, var_AC)
  loc_119A364:   If CBool((Left(var_90, 1) = "1") And (Trim(CVar(var_AC.Tag)) = CVar(MemVar_1F92070 & "SCH"))) Then
  loc_119A36A:     var_8C = var_A0
  loc_119A370:   Else
  loc_119A3A2:     Set var_A8 = Me.TxtGt
  loc_119A3A8:     Call 0.Method_Proc_32_104_119A5840 (CInt(Val(CStr(Left(var_90, 1)))), var_AC, var_170)
  loc_119A3B0:     var_13C = var_AC.Text
  loc_119A3BD:     var_8C = Val(var_170)
  loc_119A3D1:   End If
  loc_119A3D7:   Call Proc_32_85_E836AC(var_90)
  loc_119A3FC:   var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_119A406:   ' Referenced from: 119A57B
  loc_119A410:   If (Len(var_90) > 0) Then
  loc_119A438:     Call Proc_32_85_E836AC(var_90)
  loc_119A457:     var_D0 = Mid(var_90, CLng((var_172 + 1)), CVar(Len(var_90)))
  loc_119A460:     var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_119A470:     Call Proc_32_85_E836AC(var_90)
  loc_119A487:     var_C0 = Left(var_90, CLng((var_172 - 1)))
  loc_119A48F:     var_B0 = CStr(CVar(Len(var_90)))
  loc_119A499:     var_92 = CInt(Val(var_B0))
  loc_119A4A8:     Call Proc_32_85_E836AC(var_90)
  loc_119A4CD:     var_90 = CStr(Mid(var_90, CLng(var_172), CVar(Len(var_90))))
  loc_119A4E4:     Set var_A8 = Me.TxtGt
  loc_119A4EA:     Call 0.Method_Proc_32_104_119A5840 (var_92, var_AC, var_B0, var_172, var_92)
  loc_119A4F2:     var_172 = var_AC.Text
  loc_119A4FF:     var_13C = Val(var_B0)
  loc_119A516:     Set var_178 = Me.TxtGt
  loc_119A51C:     Call 0.Method_Proc_32_104_119A5840 (var_92, var_17C, var_170, CVar(var_8C), var_13C)
  loc_119A532:     var_D0 = CVar(-Val(var_170)) 'Double
  loc_119A545:     var_104 = (CStr(Left(var_90, 1)) = "+")
  loc_119A554:     var_F0 = (var_17C.Text + IIf(var_90, CVar(var_13C), Mid(var_90, CLng(var_17C.Text), CVar(Len(var_90)))))
  loc_119A559:     var_8C = CSng(Trim(CVar(var_AC.Tag)))
  loc_119A57B:     GoTo loc_119A406
  loc_119A57E:   End If
  loc_119A57E: End If
  loc_119A57E: Proc_32_104_119A584 = var_8C
End Sub

Public Sub Proc_32_105_1038BEC(arg_C, arg_10, arg_14) '1038BEC
  'Data Table: 59BA10
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
  loc_10389CD: var_88 = vbNullString
  loc_10389E4: arg_C = CStr(Trim(arg_C))
  loc_10389F0: var_8A = CInt(Len(arg_C))
  loc_10389F6: var_C0 = arg_10
  loc_1038A01: If (var_C0 = "A") Then
  loc_1038A36:   var_E0 = (Chr(&H12) + Chr(&HE))
  loc_1038A4A:   var_100 = (var_E0 + Chr(&H1B))
  loc_1038A53:   var_110 = (var_100 + "G")
  loc_1038A60:   var_130 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_1038A7A:   var_170 = (var_110 + Space(CLng((var_130 / 2))))
  loc_1038A84:   var_190 = (var_170 + CVar(arg_C))
  loc_1038A98:   var_1B0 = (var_190 + Chr(&H1B))
  loc_1038AA1:   var_1D0 = (var_1B0 + "H")
  loc_1038AA6:   var_88 = CStr(var_1D0)
  loc_1038AC7: Else
  loc_1038ACF:   If (var_C0 = "D") Then
  loc_1038B04:     var_E0 = (Chr(&HE) + Chr(&HF))
  loc_1038B11:     var_F0 = (CVar(Int((CDbl(arg_14) / CDbl(2)))) - CVar(var_8A))
  loc_1038B2B:     var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_1038B35:     var_150 = (var_130 + CVar(arg_C))
  loc_1038B3A:     var_88 = CStr((var_130 / 2))
  loc_1038B4F:   Else
  loc_1038B57:     If (var_C0 = "E") Then
  loc_1038B84:       var_E0 = (Chr(&H12) + Chr(&HF))
  loc_1038B91:       var_F0 = (CVar(arg_14) - CVar(var_8A))
  loc_1038BAB:       var_130 = (var_E0 + Space(CLng((Chr(&H1B) / 2))))
  loc_1038BB5:       var_150 = (var_130 + CVar(arg_C))
  loc_1038BC9:       var_170 = ((var_130 / 2) + Chr(&H12))
  loc_1038BCE:       var_88 = CStr(var_170)
  loc_1038BE4:     End If
  loc_1038BE4:   End If
  loc_1038BE4: End If
  loc_1038BE4: Proc_32_105_1038BEC = var_8A
End Sub

Public Sub Proc_32_106_1270718(arg_C, arg_10, arg_14) '1270718
  'Data Table: 59BA10
  Dim var_E8 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_26C As Variant
  Dim unk_59BA2D As Connection15
  Dim var_E4 As Variant
  Dim var_19C As Variant
  Dim var_24C As Variant
  Dim var_18C As Variant
  Dim var_A0 As Recordset15
  Dim var_270 As Fields15
  Dim var_D4 As Variant
  Dim var_290 As Double
  Dim arg_10 As Integer
  loc_12701D9: var_90 = vbNullString
  loc_12701DF: var_94 = vbNullString
  loc_12701E5: var_98 = vbNullString
  loc_12701EB: var_9C = vbNullString
  loc_12701F6: If (MemVar_1F923C0 = "Y") Then
  loc_1270200:   var_E8 = vbNullString & "DATE "
  loc_1270231:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_1270244: End If
  loc_127024C: If (MemVar_1F923C4 = "Y") Then
  loc_127025E:   var_D4 = "dd/MM/yy"
  loc_12702B0:   var_16C = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_D4)))), 0))
  loc_12702D7:   var_1BC = (" PAGE NO " + Trim(Str(arg_C)))
  loc_12702DF:   var_1DC = (var_16C - Len(var_1BC))
  loc_12702F0:   var_20C = (CVar(var_8C) + Space(CLng(var_1DC)))
  loc_12702F9:   var_22C = (var_20C + " PAGE NO ")
  loc_127031B:   var_26C = (var_22C + Trim(Str(arg_C)))
  loc_1270320:   var_8C = CStr(var_26C)
  loc_127034D: End If
  loc_127037A: unk_59BA2D.Execute "Select R.HEADER1,R.HEADER2 From DEPART R  Where R.CODE='" & global_60 & "'", var_D4, -1
  loc_1270385: Set var_A0 = var_270
  loc_127039C: If (MemVar_1F923C8 = "K") Then
  loc_12703A9:   If (Len(MemVar_1F92130) <= &H28) Then
  loc_12703C2:     var_E4 = (CVar(var_90) + Chr(&HF))
  loc_12703D6:     var_13C = (Format(MemVar_1F920EC, Chr(&HF)) + Chr(&HE))
  loc_12703EA:     var_16C = (0 + Chr(&H1B))
  loc_12703FE:     var_19C = (var_16C + Chr(&H45))
  loc_1270408:     var_1BC = (Trim(Str(arg_C)) + CVar(MemVar_1F92130))
  loc_127041C:     var_1DC = (var_1BC + Chr(&H1B))
  loc_1270430:     var_20C = (var_1DC + Chr(&H46))
  loc_1270444:     var_24C = (var_20C + Chr(&HE))
  loc_1270449:     var_90 = CStr(Str(arg_C))
  loc_1270470:   Else
  loc_1270486:     var_E4 = (CVar(var_90) + Chr(&H12))
  loc_127049A:     var_13C = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_12704AE:     var_16C = (0 + Chr(&HF))
  loc_12704B8:     var_18C = (var_16C + CVar(MemVar_1F92130))
  loc_12704CC:     var_1BC = (Chr(&H45) + Chr(&H12))
  loc_12704D1:     var_90 = CStr(var_1BC)
  loc_12704E9:   End If
  loc_12704FD:   If (var_A0.RecordCount > 0) Then
  loc_127050F:     var_270 = var_A0.Fields
  loc_1270539:     If (Proc_6_38_E68A98(CVar(var_270.Item("Header1")), var_270, 1) <> vbNullString) Then
  loc_1270570:       var_290 = Val(CStr(arg_14))
  loc_1270591:       Call Proc_32_105_1038BEC(CStr(var_A0.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_127059A:       var_94 = var_288 & var_288
  loc_12705B2:     End If
  loc_12705EB:     If (Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Header2")), var_94, var_290) <> vbNullString) Then
  loc_1270643:       Call Proc_32_105_1038BEC(CStr(var_A0.Fields.Item("Header2").Value), "D", CInt(Val(CStr(arg_14))))
  loc_127064C:       var_98 = var_288 & var_288
  loc_1270664:     End If
  loc_1270664:   End If
  loc_1270664: End If
  loc_127066E: If (Len(var_8C) > 0) Then
  loc_1270676:   Print 1, var_8C
  loc_1270682:   arg_10 = (arg_10 + 1)
  loc_1270685: End If
  loc_127068F: If (Len(var_90) > 0) Then
  loc_1270697:   Print 1, var_90
  loc_12706A3:   arg_10 = (arg_10 + 1)
  loc_12706A6: End If
  loc_12706B0: If (Len(var_94) > 0) Then
  loc_12706B8:   Print 1, var_94
  loc_12706C4:   arg_10 = (arg_10 + 1)
  loc_12706C7: End If
  loc_12706D1: If (Len(var_98) > 0) Then
  loc_12706D9:   Print 1, var_98
  loc_12706E5:   arg_10 = (arg_10 + 1)
  loc_12706E8: End If
  loc_12706F2: If (Len(var_9C) > 0) Then
  loc_12706FA:   Print 1, var_9C
  loc_1270706:   arg_10 = (arg_10 + 1)
  loc_1270709: End If
  loc_127070F: Proc_32_106_1270718 = arg_10
End Sub

Public Sub Proc_32_107_1715EA8(arg_C, arg_10, arg_14) '1715EA8
  'Data Table: 59BA10
  Dim var_D8 As String
  Dim unk_59BA2D As Connection15
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
  loc_17142F8: var_D8 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_1714308: unk_59BA2D.Execute var_D8 & "'", var_FC, -1
  loc_1714313: Set var_8C = var_100
  loc_1714326: var_94 = arg_14
  loc_171432B: var_86 = 1
  loc_1714331: var_A8 = var_94
  loc_1714337: var_B0 = var_94
  loc_171433D: var_B8 = CDbl(0)
  loc_1714354: If (var_8C.RecordCount > 0) Then
  loc_1714357:   ' Referenced from: 1715E8B
  loc_1714366:   If Not(var_8C.EOF) Then
  loc_171436D:     Set var_10C = Me.FGCat
  loc_1714370:     var_EC = vbNullString
  loc_1714395:     If (var_8C.RecordCount > 0) Then
  loc_171439E:       var_D2 = (var_D2 + 1)
  loc_17143A4:       var_EC = "Nature"
  loc_17143D7:       var_150 = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_EC)), var_D2, FGCat.DispID_10000, var_EC, var_B8))) 'Variant
  loc_17143F0:       If (var_150 = "On Base Amt") Then
  loc_171441B:         var_130 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_B0, var_A8)) 'String
  loc_171443D:         If (Trim(var_130) = "Room Rate") Then
  loc_171444B:           If (global_240 = "Room Service") Then
  loc_1714474:             Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Limit")), var_86)
  loc_17144A2:             Proc_6_39_E7C810(var_160, CVar(var_C0.Fields.Item("RoomRate")), var_130)
  loc_17144D4:             Proc_6_39_E7C810(var_1B0, CVar(var_8C.Fields.Item("Rate")))
  loc_1714504:             If CBool((var_94 <= var_160) And (var_1B0 > 0)) Then
  loc_1714543:               If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1714581:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1714594:               Else
  loc_17145C7:                 var_1F4 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_17145F0:                 Proc_6_142_14A55B0(((var_1F4 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_17145F5:                 var_D0 = var_1F4
  loc_1714609:               End If
  loc_1714610:               If (var_D0 > CDbl(0)) Then
  loc_171462C:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714634:                 var_18C = CVar(CLng(0)) 'Long
  loc_171463E:                 var_130 = CVar(CStr(var_86)) 'String
  loc_1714645:                 LateIdCallSt
  loc_1714670:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714678:                 var_18C = CVar(CLng(1)) 'Long
  loc_1714682:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_1714689:                 LateIdCallSt
  loc_17146B4:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17146BC:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_17146EC:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17146F3:                 LateIdCallSt
  loc_1714726:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171472E:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_171475E:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1714765:                 LateIdCallSt
  loc_1714798:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17147A0:                 var_18C = CVar(CLng(4)) 'Long
  loc_17147AA:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_17147B1:                 LateIdCallSt
  loc_17147DC:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17147E4:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_1714814:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_171481B:                 LateIdCallSt
  loc_1714875:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171487D:                 var_234 = CVar(CLng(6)) 'Long
  loc_1714882:                 var_178 = 2
  loc_17148C1:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_17148C8:                 LateIdCallSt
  loc_17148EF:               Else
  loc_17148F5:                 var_86 = (var_86 - 1)
  loc_171490B:                 var_EC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1714921:               End If
  loc_171493A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714942:               var_18C = CVar(CLng(6)) 'Long
  loc_1714967:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1714990:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714998:               var_18C = CVar(CLng(6)) 'Long
  loc_17149B3:               var_1E8 = Val(CStr(var_10C.TextMatrix)))
  loc_17149BD:               var_94 = (var_94 + var_1E8)
  loc_17149D4:               var_B0 = (var_B0 + var_D0)
  loc_17149DA:               var_B8 = var_D0
  loc_17149E4:               var_B0 = (var_B0 + var_D0)
  loc_17149EA:               var_B8 = var_D0
  loc_17149ED:             End If
  loc_17149ED:           End If
  loc_17149F0:         Else
  loc_1714A2C:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1714A6A:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_1714A7D:           Else
  loc_1714A9F:             var_130 = var_8C.Fields.Item("Rate").Value
  loc_1714AD9:             Proc_6_142_14A55B0(((Val(CStr(var_130)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_130)), var_D0, var_B8, var_B0)
  loc_1714ADE:             var_260 = var_B8
  loc_1714B20:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_260)
  loc_1714B3E:           End If
  loc_1714B64:           Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Limit")), var_D0, var_260, var_B0)
  loc_1714B9E:           Proc_6_39_E7C810(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_94)
  loc_1714BC8:           If CBool(var_1E8 And (var_178 > 0)) Then
  loc_1714BD2:             If (var_D0 > CDbl(0)) Then
  loc_1714BEE:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714BF6:               var_18C = CVar(CLng(0)) 'Long
  loc_1714C00:               var_130 = CVar(CStr(var_86)) 'String
  loc_1714C07:               LateIdCallSt
  loc_1714C32:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714C3A:               var_18C = CVar(CLng(1)) 'Long
  loc_1714C44:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1714C4B:               LateIdCallSt
  loc_1714C76:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714C7E:               var_1C0 = CVar(CLng(2)) 'Long
  loc_1714CAE:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1714CB5:               LateIdCallSt
  loc_1714CE8:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714CF0:               var_1C0 = CVar(CLng(3)) 'Long
  loc_1714D20:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1714D27:               LateIdCallSt
  loc_1714D5A:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714D62:               var_18C = CVar(CLng(4)) 'Long
  loc_1714D6C:               var_130 = CVar(CStr(var_A8)) 'String
  loc_1714D73:               LateIdCallSt
  loc_1714D9E:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714DA6:               var_1C0 = CVar(CLng(5)) 'Long
  loc_1714DD6:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1714DDD:               LateIdCallSt
  loc_1714E37:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714E3F:               var_234 = CVar(CLng(6)) 'Long
  loc_1714E83:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1714E8A:               LateIdCallSt
  loc_1714EAE:             End If
  loc_1714EC7:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714ECF:             var_18C = CVar(CLng(6)) 'Long
  loc_1714EF4:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1714F1D:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1714F25:             var_18C = CVar(CLng(6)) 'Long
  loc_1714F2D:             var_130 = var_10C.TextMatrix)
  loc_1714F40:             var_1E8 = Val(CStr(var_130))
  loc_1714F4A:             var_94 = (var_94 + var_1E8)
  loc_1714F61:             var_B0 = (var_B0 + var_D0)
  loc_1714F67:             var_B8 = var_D0
  loc_1714F6A:           End If
  loc_1714F6A:         End If
  loc_1714F6D:       Else
  loc_1714F78:         If (var_150 = "On Running Total") Then
  loc_1714FB7:           If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_1714FF5:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_1715008:           Else
  loc_1715064:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1715069:             var_D0 = var_94
  loc_171507D:           End If
  loc_17150A3:           Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1E8, var_18C)
  loc_17150BD:           If (var_130 > 0) Then
  loc_17150C7:             If (var_D0 > CDbl(0)) Then
  loc_17150E3:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17150EB:               var_18C = CVar(CLng(0)) 'Long
  loc_17150F5:               var_130 = CVar(CStr(var_86)) 'String
  loc_17150FC:               LateIdCallSt
  loc_1715127:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171512F:               var_18C = CVar(CLng(1)) 'Long
  loc_1715139:               var_130 = CVar(CStr(arg_10)) 'String
  loc_1715140:               LateIdCallSt
  loc_171516B:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715173:               var_1C0 = CVar(CLng(2)) 'Long
  loc_17151A3:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17151AA:               LateIdCallSt
  loc_17151DD:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17151E5:               var_1C0 = CVar(CLng(3)) 'Long
  loc_1715215:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_171521C:               LateIdCallSt
  loc_171524F:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715257:               var_18C = CVar(CLng(4)) 'Long
  loc_1715261:               var_130 = CVar(CStr(var_B0)) 'String
  loc_1715268:               LateIdCallSt
  loc_1715293:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171529B:               var_1C0 = CVar(CLng(5)) 'Long
  loc_17152CB:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17152D2:               LateIdCallSt
  loc_171532C:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715334:               var_234 = CVar(CLng(6)) 'Long
  loc_1715378:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_171537F:               LateIdCallSt
  loc_17153A3:             End If
  loc_17153BC:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17153C4:             var_18C = CVar(CLng(6)) 'Long
  loc_17153E9:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1715412:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171541A:             var_18C = CVar(CLng(6)) 'Long
  loc_171543F:             var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_1715456:             var_B0 = (var_B0 + var_D0)
  loc_171545C:             var_B8 = var_D0
  loc_171545F:           End If
  loc_1715462:         Else
  loc_171546D:           If (var_150 = "On Prev. Tax Amt") Then
  loc_17154AC:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_17154EA:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_17154FD:             Else
  loc_1715559:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_171555E:               var_D0 = var_94
  loc_1715572:             End If
  loc_1715579:             If (var_D0 > CDbl(0)) Then
  loc_1715595:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171559D:               var_18C = CVar(CLng(0)) 'Long
  loc_17155A7:               var_130 = CVar(CStr(var_86)) 'String
  loc_17155AE:               LateIdCallSt
  loc_17155D9:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17155E1:               var_18C = CVar(CLng(1)) 'Long
  loc_17155EB:               var_130 = CVar(CStr(arg_10)) 'String
  loc_17155F2:               LateIdCallSt
  loc_171561D:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715625:               var_1C0 = CVar(CLng(2)) 'Long
  loc_1715655:               var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_171565C:               LateIdCallSt
  loc_171568F:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715697:               var_1C0 = CVar(CLng(3)) 'Long
  loc_17156C7:               var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17156CE:               LateIdCallSt
  loc_1715701:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715709:               var_18C = CVar(CLng(4)) 'Long
  loc_1715713:               var_130 = CVar(CStr(var_B8)) 'String
  loc_171571A:               LateIdCallSt
  loc_1715745:               var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_171574D:               var_1C0 = CVar(CLng(5)) 'Long
  loc_171577D:               var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1715784:               LateIdCallSt
  loc_17157DE:               var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17157E6:               var_234 = CVar(CLng(6)) 'Long
  loc_17157EB:               var_178 = 2
  loc_171582A:               var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_178))))) 'String
  loc_1715831:               LateIdCallSt
  loc_1715855:             End If
  loc_171586E:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715876:             var_18C = CVar(CLng(6)) 'Long
  loc_171589B:             var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_17158C4:             var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17158CC:             var_18C = CVar(CLng(6)) 'Long
  loc_17158D4:             var_130 = var_10C.TextMatrix)
  loc_17158E7:             var_1E8 = Val(CStr(var_130))
  loc_17158F1:             var_94 = (var_94 + var_1E8)
  loc_1715908:             var_B0 = (var_B0 + var_D0)
  loc_171590E:             var_B8 = var_D0
  loc_1715914:           Else
  loc_1715950:             If (var_8C.Fields.Item("RoundOff").Value = "No") Then
  loc_171598E:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_17159A1:             Else
  loc_17159FD:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_1715A02:               var_D0 = var_94
  loc_1715A16:             End If
  loc_1715A19:             var_EC = "Limit"
  loc_1715A3C:             Proc_6_39_E7C810(var_130, CVar(var_8C.Fields.Item(var_EC)), var_D0, var_1E8, var_18C)
  loc_1715A76:             Proc_6_39_E7C810(var_178, CVar(var_8C.Fields.Item("Rate")), (var_130 <= CVar(var_94)), var_EC)
  loc_1715AA0:             If CBool(var_9C And (var_178 > 0)) Then
  loc_1715AAA:               If (var_D0 > CDbl(0)) Then
  loc_1715AC6:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715ACE:                 var_18C = CVar(CLng(0)) 'Long
  loc_1715AD8:                 var_130 = CVar(CStr(var_86)) 'String
  loc_1715ADF:                 LateIdCallSt
  loc_1715B0A:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715B12:                 var_18C = CVar(CLng(1)) 'Long
  loc_1715B1C:                 var_130 = CVar(CStr(arg_10)) 'String
  loc_1715B23:                 LateIdCallSt
  loc_1715B4E:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715B56:                 var_1C0 = CVar(CLng(2)) 'Long
  loc_1715B86:                 var_140 = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_1715B8D:                 LateIdCallSt
  loc_1715BC0:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715BC8:                 var_1C0 = CVar(CLng(3)) 'Long
  loc_1715BF8:                 var_140 = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_1715BFF:                 LateIdCallSt
  loc_1715C32:                 var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715C3A:                 var_18C = CVar(CLng(4)) 'Long
  loc_1715C44:                 var_130 = CVar(CStr(var_A8)) 'String
  loc_1715C4B:                 LateIdCallSt
  loc_1715C76:                 var_11C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715C7E:                 var_1C0 = CVar(CLng(5)) 'Long
  loc_1715CAE:                 var_140 = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_1715CB5:                 LateIdCallSt
  loc_1715D0F:                 var_214 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715D17:                 var_234 = CVar(CLng(6)) 'Long
  loc_1715D5B:                 var_1E0 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, 2))))) 'String
  loc_1715D62:                 LateIdCallSt
  loc_1715D86:               End If
  loc_1715D9F:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715DA7:               var_18C = CVar(CLng(6)) 'Long
  loc_1715DCC:               var_9C = (var_9C + Val(CStr(var_10C.TextMatrix))))
  loc_1715DF5:               var_EC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_1715DFD:               var_18C = CVar(CLng(6)) 'Long
  loc_1715E22:               var_94 = (var_94 + Val(CStr(var_10C.TextMatrix))))
  loc_1715E39:               var_B0 = (var_B0 + var_D0)
  loc_1715E3F:               var_B8 = var_D0
  loc_1715E42:             End If
  loc_1715E42:           End If
  loc_1715E42:         End If
  loc_1715E42:       End If
  loc_1715E42:     End If
  loc_1715E48:     var_86 = (var_86 + 1)
  loc_1715E4D:     Set var_10C = Nothing 
  loc_1715E55:     var_EC = CVar(CLng(arg_10)) 'Long
  loc_1715E5D:     var_18C = CVar(CLng(&H12)) 'Long
  loc_1715E67:     var_FC = CVar(CStr(var_9C)) 'String
  loc_1715E6F:     Set var_100 = Me.FGrid
  loc_1715E75:     LateIdCallSt
  loc_1715E86:     var_8C.MoveNext
  loc_1715E8B:     GoTo loc_1714357
  loc_1715E8E:   End If
  loc_1715E93:   Set var_8C = Nothing
  loc_1715E9B:   Set var_C4 = Nothing
  loc_1715EA3:   Set var_C0 = Nothing
  loc_1715EA6: End If
  loc_1715EA6: Exit Sub
End Sub

Public Sub Proc_32_108_1067170(arg_C, arg_10) '1067170
  'Data Table: 59BA10
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_59BA2D As Connection15
  Dim var_CC As TextBox
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_90 As Recordset15
  Dim var_C8 As Fields15
  Dim var_C4 As Variant
  Dim var_8C As Double
  loc_1066F1E: var_94 = global_188
  loc_1066F29: If (var_94 = "Last Purchase Rate") Then
  loc_1066F47:   var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_1066F58:   var_A4 = var_9C & global_60 & "'"
  loc_1066F61:   unk_59BA2D.Execute var_A4, var_C4, -1
  loc_1066F6C:   Set var_90 = var_C8
  loc_1066F83: Else
  loc_1066F8B:   If (var_94 = "Party Wise Last Pur Rate") Then
  loc_1066FB3:     var_A0 = "Select Top 1 ItemRate As Rate From Purch2 Where VType In ('PBPB','PBPC') And Item='" & arg_C & "' And RestCode='" & global_60
  loc_1066FCB:     Set var_C8 = Me.Txt
  loc_1066FD1:     Call 0.Method_Proc_32_108_10671700 (CInt(4), var_CC, var_A4, var_A0 & "' And PartyCode='")
  loc_1066FD9:     var_138 = var_CC.Tag
  loc_1066FE2:     var_D4 = -1 & var_A4
  loc_1066FE9:     var_E4 = CVar(var_D4 & "' And DelFlag='N' And Vdate<=") 'String
  loc_1066FF7:     Proc_6_7_F25D88(var_C4, arg_10, var_E4)
  loc_1067016:     unk_59BA2D.Execute CStr(var_13C & var_C4 & " Order By VDate Desc,Vno Desc"), var_C8, 
  loc_106705F:     If (var_13C.RecordCount = 0) Then
  loc_106707D:       var_9C = "Select CASE WHEN LPurRate<=0 THEN PurchRate ELSE LPurRate END As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='"
  loc_1067097:       unk_59BA2D.Execute var_9C & global_60 & "'", var_C4, -1
  loc_10670A2:       Set var_90 = var_C8
  loc_10670B6:     End If
  loc_10670B9:   Else
  loc_10670EE:     unk_59BA2D.Execute "Select PurchRate As Rate From ItemMast Where Code='" & arg_C & "' And RestCode='" & global_60 & "'", var_C4, -1
  loc_10670F9:     Set var_90 = var_C8
  loc_106710D:   End If
  loc_106710D: End If
  loc_1067121: If (var_90.RecordCount > 0) Then
  loc_106714A:   Proc_6_39_E7C810(var_E4, CVar(var_90.Fields.Item("Rate")))
  loc_1067153:   var_8C = CSng(var_E4)
  loc_1067163: Else
  loc_1067166:   var_8C = CDbl(0)
  loc_1067169: End If
  loc_1067169: Proc_32_108_1067170 = var_8C
End Sub

Public Sub Proc_32_109_DFBC98
  'Data Table: 59BA10
  loc_DFBC94: Exit Sub
End Sub

Public Sub Proc_32_110_112EE94
  'Data Table: 59BA10
  Dim var_94 As Variant
  Dim var_A8 As String
  Dim unk_59BA2D As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_104 As TextBox
  Dim var_108 As String
  loc_112EB57: If (((global_132 = "PBC") Or (global_132 = "EXC")) Or (global_132 = "PRC")) Then
  loc_112EB67:   Set var_90 = Me.Txt
  loc_112EB6D:   Call 0.Method_Proc_32_110_112EE940 (CInt(8), var_94)
  loc_112EB75:   var_94.Visible = True
  loc_112EB8E:   Set var_90 = Me.Txt
  loc_112EB94:   Call 0.Method_Proc_32_110_112EE940 (CInt(4), var_94)
  loc_112EB9C:   var_94.Visible = False
  loc_112EBAC:   Set var_90 = Me.TopCtrl1
  loc_112EBB2:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_112EBCB:   If (CStr() <> "Browse") Then
  loc_112EBDB:     Set var_90 = Me.Txt
  loc_112EBE1:     Call 0.Method_Proc_32_110_112EE940 (CInt(&HB), var_94)
  loc_112EBE9:     var_94.Enabled = True
  loc_112EBF5:   End If
  loc_112EC18:   If (((global_132 = "PRC") Or (global_132 = "PBC")) Or (global_132 = "EXC")) Then
  loc_112EC38:     Proc_6_17_EAA2B0(var_A4, MemVar_1F92078, "Select CashPurchAc From Enviro WHERE LOGSITE_CODE=")
  loc_112EC4E:     unk_59BA2D.Execute CStr(var_F8 & var_A4), -1, var_90
  loc_112EC59:     Set var_88 = var_90
  loc_112EC7F:     If (var_88.RecordCount > 0) Then
  loc_112EC9C:       var_94 = var_88.Fields.Item("CashPurchAc")
  loc_112ECA4:       var_A4 = var_94.Value
  loc_112ECBB:       Set var_100 = Me.Txt
  loc_112ECC1:       Call 0.Method_Proc_32_110_112EE940 (CInt(4), var_104)
  loc_112ECC9:       var_104.Tag = CStr(var_A4)
  loc_112ECDF:     End If
  loc_112ECDF:   End If
  loc_112ECF6:   If ((global_132 = "PBC") Or (global_132 = "EXC")) Then
  loc_112ED03:     Set global_80 = New 
  loc_112ED15:     Me.Recordset15.CursorLocation = 3
  loc_112ED21:     var_A8 = "Select Distinct M.Docid as Code ,ltrim(Right(max(M.DocId),8)) as Name,Max(M.Vtype) as V_type,Max(M.VDate) as V_Date,Max(SG.Name) As PartyName " & "From ((Stock M Left Join Purch2 P2 on (M.Docid = P2.ContraDocid and M.Sno = P2.ContraSno)) "
  loc_112ED28:     var_108 = var_A8 & "Left Join SubGroup SG on M.PartyCode=SG.SubCode)Left Join Voucher_Type V on (M.Vtype=V.V_Type and M.logSite_Code=V.LogSite_Code) "
  loc_112ED46:     Call 0.Method_Proc_32_110_112EE940 (CInt(4), var_94)
  loc_112ED5E:     var_8C = var_108 & "where V.Ncat in ('MRE') and M.Partycode='" & var_94.Tag & "'    Group By M.Docid,M.Sno Having Max(M.AccQty) - Sum(isnull(P2.RecdQty,0)) > 0 "
  loc_112ED8B:     unk_59BA2D.Execute var_8C, var_A4, -1
  loc_112ED9C:     Set global_80 = Me.Txt
  loc_112EDB3:     CVarUnk
  loc_112EDB8:     VerifyVarObj
  loc_112EDBE:     Set var_90 = Me.DgMR
  loc_112EDC4:     LateIdStAd
  loc_112EDD2:   End If
  loc_112EDD5: Else
  loc_112EDE8:   Call 0.Method_Proc_32_110_112EE940 (CInt(8), var_94, 0)
  loc_112EDF0:   var_94.Visible = Me.Txt
  loc_112EE09:   Set var_90 = Me.Txt
  loc_112EE0F:   Call 0.Method_Proc_32_110_112EE940 (CInt(4), var_94, &HFF)
  loc_112EE17:   var_94.Visible = global_80
  loc_112EE30:   Set var_90 = Me.Txt
  loc_112EE36:   Call 0.Method_Proc_32_110_112EE940 (CInt(&HB), var_94)
  loc_112EE3E:   var_94.Enabled = False
  loc_112EE4A: End If
  loc_112EE61: If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_112EE71:   Set var_90 = Me.Txt
  loc_112EE77:   Call 0.Method_Proc_32_110_112EE940 (CInt(7), var_94)
  loc_112EE7F:   var_94.Enabled = False
  loc_112EE8B: End If
  loc_112EE90: Set var_88 = Nothing
  loc_112EE93: Exit Sub
End Sub

Public Sub Proc_32_111_10B23E8(arg_C, arg_10, arg_14, arg_18) '10B23E8
  'Data Table: 59BA10
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
  loc_10B2123: var_A8 = CDbl(0)
  loc_10B2138: For var_C0 = CInt(arg_10) To (CInt(arg_C) - 1): var_9E = var_C0 'Integer
  loc_10B2142:   var_D0 = CVar(CLng(var_9E)) 'Long
  loc_10B214C:   var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B2178:   var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_10B2187: Next var_C0 'Integer
  loc_10B218F: var_BC = arg_18
  loc_10B21BB: For var_124 = CInt(arg_10) To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_124 'Integer
  loc_10B21CE:   If (var_AA <> (CInt(arg_C) - 1)) Then
  loc_10B21D8:     If (var_A8 <> CDbl(0)) Then
  loc_10B21DF:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B21E9:       var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B2212:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_10B221C:       var_154 = CVar(CLng(arg_14)) 'Long
  loc_10B227C:       var_1CC = (CVar(Val(CStr(Me.FGrid.TextMatrix)))) + Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B228C:       var_9C = CSng(Format(var_1CC, "00.00"))
  loc_10B22B2:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B22BC:       var_F0 = CVar(CLng(arg_20)) 'Long
  loc_10B22C6:       var_114 = CVar(CStr(var_9C)) 'String
  loc_10B22CE:       Set var_104 = Me.FGrid
  loc_10B22D4:       LateIdCallSt
  loc_10B22E2:     End If
  loc_10B22E9:     var_B4 = (var_B4 + var_9C)
  loc_10B22F3:     If (var_A8 > CDbl(0)) Then
  loc_10B22FA:       var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B2304:       var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B234F:       var_1AC = (CVar(var_BC) - Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B2354:       var_BC = CSng(Round(CVar(((arg_18 * Val(CStr(Me.FGrid.TextMatrix)))) / var_A8)), 2))
  loc_10B2366:     End If
  loc_10B2369:   Else
  loc_10B236D:     var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B2377:     var_F0 = CVar(CLng(arg_14)) 'Long
  loc_10B239D:     var_9C = (Val(CStr(Me.FGrid.TextMatrix))) + var_BC)
  loc_10B23AD:     var_D0 = CVar(CLng(var_AA)) 'Long
  loc_10B23B7:     var_F0 = CVar(CLng(arg_20)) 'Long
  loc_10B23C1:     var_114 = CVar(CStr(var_9C)) 'String
  loc_10B23C9:     Set var_104 = Me.FGrid
  loc_10B23CF:     LateIdCallSt
  loc_10B23DD:   End If
  loc_10B23E0: Next var_124 'Integer
  loc_10B23E5: Exit Sub
End Sub

Public Sub Proc_32_112_1BDC888
  'Data Table: 59BA10
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_AC As String
  Dim unk_59BA2D As Connection15
  Dim var_A4 As Recordset15
  Dim var_110 As Variant
  Dim var_CC As Variant
  Dim var_120 As TextBox
  Dim var_118 As Variant
  Dim var_124 As String
  Dim var_A6 As Integer
  Dim var_12C As String
  Dim var_130 As String
  Dim var_134 As String
  Dim var_88 As Recordset15
  Dim var_10C As Variant
  Dim var_94 As Double
  Dim var_8C As Recordset15
  Dim var_180 As TextBox
  Dim var_1BC As Label
  Dim var_188 As TextBox
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1A8 As TextBox
  Dim var_158 As Variant
  Dim var_220 As Variant
  Dim var_230 As Variant
  Dim var_178 As Variant
  Dim var_240 As Variant
  Dim var_18C As Fields15
  Dim var_19C As Fields15
  Dim var_254 As TextBox
  loc_1BD7113: If (OpenAs = "Expense") Then
  loc_1BD7119:   var_98 = "Expense Voucher :"
  loc_1BD711F:   var_9C = "Expense Return For :"
  loc_1BD7125: Else
  loc_1BD7128:   var_98 = "Purchase Bill :"
  loc_1BD712E:   var_9C = "Purchase Return For :"
  loc_1BD7131: End If
  loc_1BD7154: If (((global_132 = "PBC") Or (global_132 = "EXC")) Or (global_132 = "PRC")) Then
  loc_1BD7174:   Proc_6_17_EAA2B0(var_CC, MemVar_1F92078, "Select CashPurchAc from Enviro WHERE LOGSITE_CODE=")
  loc_1BD717C:   var_EC = var_10C & var_CC 
  loc_1BD718A:   unk_59BA2D.Execute CStr(var_EC), -1, var_110
  loc_1BD7195:   Set var_A4 = var_110
  loc_1BD71BB:   If (var_A4.RecordCount > 0) Then
  loc_1BD71D5:     var_118 = var_A4.Fields.Item("CashPurchAc")
  loc_1BD71E6:     var_AC = Proc_6_38_E68A98(CVar(var_118))
  loc_1BD71F4:     Set var_11C = Me.Txt
  loc_1BD71FA:     Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_120)
  loc_1BD7202:     var_120.Tag = var_AC
  loc_1BD7216:   End If
  loc_1BD7216: End If
  loc_1BD7234: Set var_110 = Me.Txt
  loc_1BD723A: Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_AC, "Delete From Ledger where DocID='")
  loc_1BD7242: var_CC = var_118.Text
  loc_1BD724B: var_124 = -1 & var_AC
  loc_1BD725B: unk_59BA2D.Execute var_124 & "'", var_11C, 
  loc_1BD7277: var_A6 = 1
  loc_1BD728E: var_AC = "SELECT Sum(SunTran.Amount) AS RevAmt,max(SUNCODE) as SundryCode FROM (SunTran LEFT JOIN RevMast ON SunTran.RevCode = RevMast.Code) LEFT JOIN Depart ON SunTran.RestCode = Depart.Code Where SUNCODE='" & MemVar_1F92078
  loc_1BD72A6: Set var_110 = Me.Txt
  loc_1BD72AC: Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_124, var_AC & "NET' and DocID='")
  loc_1BD72B4: var_CC = var_118.Text
  loc_1BD72BD: var_12C = -1 & var_124
  loc_1BD72CD: unk_59BA2D.Execute var_12C & "' Group By RestCode,Revcode Order by RestCode", var_11C, var_A6
  loc_1BD72D8: Set var_8C = var_11C
  loc_1BD7308: var_AC = " SELECT Sum(S.Amount) AS RevAmt, S.RevCode, Max(S.Vdate) AS VDate, Max(R.Name) AS Revenue, Max(S.SunCode) AS SundryCode, Max(R.ACCode) AS ACode, Max(R.PayableAc) AS PCode, Max(R.UnregisteredAc) AS UCode, Max(R.FieldType) AS FieldType,Max(ST.CalcSign) as CSign " & " FROM ((SunTran AS S LEFT JOIN RevMast AS R ON S.RevCode = R.Code) LEFT JOIN Depart AS D ON S.RestCode = D.Code) LEFT JOIN SundryType AS ST ON S.SunAppDate = ST.AppDate AND ST.V_Type=S.RestCode  and s.SunCode=st.sundrycode "
  loc_1BD7320: Set var_110 = Me.Txt
  loc_1BD7326: Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_124, var_AC & " WHERE (((S.RevCode) Is Not Null And (S.RevCode)<>'') AND ((S.DocId)='")
  loc_1BD732E: var_CC = var_118.Text
  loc_1BD7337: var_12C = -1 & var_124
  loc_1BD734E: unk_59BA2D.Execute var_12C & "')) " & " GROUP BY S.RevCode, S.RestCode ORDER BY S.RestCode", var_11C, 
  loc_1BD7359: Set var_88 = var_11C
  loc_1BD73A7: If ((Me.ChkPayable.Value = 1) And (var_88.RecordCount > 0)) Then
  loc_1BD73AA:   ' Referenced from: 1BD75B8
  loc_1BD73B9:   If Not(var_88.EOF) Then
  loc_1BD73F5:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("FIELDTYPE"))) = "T") Then
  loc_1BD7417:       var_CC = CVar(var_88.Fields.Item("RevAmt")) 'Address
  loc_1BD741E:       Proc_6_39_E7C810(var_EC)
  loc_1BD7438:       If CBool(var_EC <> 0) Then
  loc_1BD7474:         If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("pCode"))) = vbNullString) Then
  loc_1BD74B8:           MsgBox("Please Define Payable A/C for :" & var_88.Fields.Item("Revenue").Value, 0, var_10C, var_158, var_178)
  loc_1BD74D1:         End If
  loc_1BD750A:         If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("uCode"))) = vbNullString) Then
  loc_1BD754A:           var_EC = "Please Define Unregistered A/C for :" & var_88.Fields.Item("Revenue").Value 
  loc_1BD754E:           MsgBox(var_EC, 0, var_10C, var_158, var_178)
  loc_1BD7567:         End If
  loc_1BD7567:       End If
  loc_1BD7594:       Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD759C:       var_10C = (CVar(var_94) + var_EC)
  loc_1BD75A1:       var_94 = CSng(var_10C)
  loc_1BD75B0:     End If
  loc_1BD75B3:     var_88.MoveNext
  loc_1BD75B8:     GoTo loc_1BD73AA
  loc_1BD75BB:   End If
  loc_1BD75BB: End If
  loc_1BD75CF: If (var_8C.RecordCount > 0) Then
  loc_1BD75E9:   var_118 = var_8C.Fields.Item("RevAmt")
  loc_1BD75F8:   Proc_6_39_E7C810(var_EC, CVar(var_118))
  loc_1BD7607:   var_10C = (var_EC - CVar(var_94))
  loc_1BD761D:   If (var_10C > 0) Then
  loc_1BD7637:     If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BD7648:       Set var_110 = Me.Txt
  loc_1BD764E:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_1AC)
  loc_1BD7656:       var_94 = var_118.Text
  loc_1BD7669:       Set var_11C = Me.Txt
  loc_1BD766F:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120)
  loc_1BD7677:       var_AC = var_120.Tag
  loc_1BD768A:       Set var_17C = Me.Txt
  loc_1BD7690:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180)
  loc_1BD7698:       var_1B8 = var_180.Text
  loc_1BD76BD:       Set var_184 = Me.Txt
  loc_1BD76C3:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BD76DE:       Set var_18C = Me.Txt
  loc_1BD76E4:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_190)
  loc_1BD76EC:       var_124 = var_190.Tag
  loc_1BD7717:       Proc_6_39_E7C810(var_EC, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1BD772A:       Set var_19C = Me.Txt
  loc_1BD7730:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A0)
  loc_1BD774B:       Set var_1A4 = Me.Txt
  loc_1BD7751:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_1A8)
  loc_1BD7759:       var_130 = var_1A8.Text
  loc_1BD7761:       var_158 = Now
  loc_1BD776B:       var_200 = 0
  loc_1BD7776:       var_1FC = 0
  loc_1BD7781:       var_1F8 = 0
  loc_1BD778A:       var_1F4 = "A"
  loc_1BD77AA:       var_134 = var_9C & var_1A0.Text & "  Dt.: "
  loc_1BD77B8:       var_1E4 = vbNullString
  loc_1BD77CF:       var_10C = (var_EC - CVar(var_94))
  loc_1BD780B:       Proc_6_140_12D90F4(MemVar_1F92044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BD7862:     Else
  loc_1BD7870:       Set var_110 = Me.Txt
  loc_1BD7876:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_130, var_124, CSng(var_10C), CDbl(0))
  loc_1BD787E:       var_1E4 = var_118.Text
  loc_1BD7891:       Set var_11C = Me.Txt
  loc_1BD7897:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BD789F:       MemVar_1F920C8 = var_120.Tag
  loc_1BD78B2:       Set var_17C = Me.Txt
  loc_1BD78B8:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B0)
  loc_1BD78C0:       CDate(var_158) = var_180.Text
  loc_1BD78E5:       Set var_184 = Me.Txt
  loc_1BD78EB:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BD7906:       Set var_18C = Me.Txt
  loc_1BD790C:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_190)
  loc_1BD7914:       var_124 = var_190.Tag
  loc_1BD793F:       Proc_6_39_E7C810(var_EC, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1BD7952:       Set var_19C = Me.Txt
  loc_1BD7958:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A0)
  loc_1BD7970:       Set var_1A4 = Me.Txt
  loc_1BD7976:       Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_1A8)
  loc_1BD79A2:       var_240 = Now
  loc_1BD79AC:       var_1F8 = 0
  loc_1BD79B7:       var_1F4 = 0
  loc_1BD79C2:       var_1E8 = 0
  loc_1BD79CB:       var_1E4 = "A"
  loc_1BD79F1:       var_230 = (CVar(var_98 & var_1A0.Text & " Dt.:   ") + Format(CVar(var_1A8), "dd/mm/yy"))
  loc_1BD79FD:       var_1CC = vbNullString
  loc_1BD7A0D:       var_10C = (var_EC - CVar(var_94))
  loc_1BD7A50:       Proc_6_140_12D90F4(MemVar_1F92044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BD7AA8:     End If
  loc_1BD7AAB:   Else
  loc_1BD7AC2:     var_118 = var_8C.Fields.Item("RevAmt")
  loc_1BD7AD1:     Proc_6_39_E7C810(var_EC, CVar(var_118), var_124, CDbl(0), CSng(var_10C))
  loc_1BD7AE0:     var_10C = (var_EC - CVar(var_94))
  loc_1BD7AF6:     If (var_10C < 0) Then
  loc_1BD7B10:       If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BD7B21:         Set var_110 = Me.Txt
  loc_1BD7B27:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_1AC, var_1CC)
  loc_1BD7B2F:         CStr(var_230) = var_118.Text
  loc_1BD7B42:         Set var_11C = Me.Txt
  loc_1BD7B48:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC)
  loc_1BD7B50:         MemVar_1F920C8 = var_120.Tag
  loc_1BD7B63:         Set var_17C = Me.Txt
  loc_1BD7B69:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B8)
  loc_1BD7B71:         CDate(var_240) = var_180.Text
  loc_1BD7B96:         Set var_184 = Me.Txt
  loc_1BD7B9C:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BD7BB7:         Set var_18C = Me.Txt
  loc_1BD7BBD:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_190)
  loc_1BD7BC5:         var_124 = var_190.Tag
  loc_1BD7BF0:         Proc_6_39_E7C810(var_EC, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1BD7C03:         Set var_19C = Me.Txt
  loc_1BD7C09:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A0)
  loc_1BD7C24:         Set var_1A4 = Me.Txt
  loc_1BD7C2A:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_1A8)
  loc_1BD7C32:         var_130 = var_1A8.Text
  loc_1BD7C3A:         var_178 = Now
  loc_1BD7C44:         var_200 = 0
  loc_1BD7C4F:         var_1FC = 0
  loc_1BD7C5A:         var_1F8 = 0
  loc_1BD7C63:         var_1F4 = "A"
  loc_1BD7C83:         var_134 = var_9C & var_1A0.Text & "  Dt.:   "
  loc_1BD7C91:         var_1E4 = vbNullString
  loc_1BD7CA1:         var_10C = (var_EC - CVar(var_94))
  loc_1BD7CA5:         var_158 = Abs(var_10C)
  loc_1BD7CE8:         Proc_6_140_12D90F4(MemVar_1F92044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BD7D3F:       Else
  loc_1BD7D4D:         Set var_110 = Me.Txt
  loc_1BD7D53:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_130, var_124, CDbl(0), CSng(var_158))
  loc_1BD7D5B:         var_1E4 = var_118.Text
  loc_1BD7D6E:         Set var_11C = Me.Txt
  loc_1BD7D74:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BD7D7C:         MemVar_1F920C8 = var_120.Tag
  loc_1BD7D8F:         Set var_17C = Me.Txt
  loc_1BD7D95:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B0)
  loc_1BD7D9D:         CDate(var_178) = var_180.Text
  loc_1BD7DC2:         Set var_184 = Me.Txt
  loc_1BD7DC8:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BD7DE3:         Set var_18C = Me.Txt
  loc_1BD7DE9:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_190)
  loc_1BD7DF1:         var_124 = var_190.Tag
  loc_1BD7E1C:         Proc_6_39_E7C810(var_EC, CVar(var_8C.Fields.Item("RevAmt")))
  loc_1BD7E2F:         Set var_19C = Me.Txt
  loc_1BD7E35:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A0)
  loc_1BD7E4D:         Set var_1A4 = Me.Txt
  loc_1BD7E53:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_1A8)
  loc_1BD7E7F:         var_250 = Now
  loc_1BD7E89:         var_1F8 = 0
  loc_1BD7E94:         var_1F4 = 0
  loc_1BD7E9F:         var_1E8 = 0
  loc_1BD7EA8:         var_1E4 = "A"
  loc_1BD7EC1:         var_12C = var_98 & var_1A0.Text
  loc_1BD7ECE:         var_240 = (CVar(var_12C & " Dt.:     ") + Format(CVar(var_1A8), "dd/mm/yy"))
  loc_1BD7EDA:         var_1CC = vbNullString
  loc_1BD7EF1:         var_10C = (var_EC - CVar(var_94))
  loc_1BD7EF5:         var_158 = Abs(var_10C)
  loc_1BD7F31:         Proc_6_140_12D90F4(MemVar_1F92044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BD7F89:       End If
  loc_1BD7F89:     End If
  loc_1BD7F89:   End If
  loc_1BD7F8F:   var_A6 = (var_A6 + 1)
  loc_1BD7F92: End If
  loc_1BD7FA6: If (var_88.RecordCount > 0) Then
  loc_1BD7FAC:   var_88.MoveFirst
  loc_1BD7FB1:   ' Referenced from: 1BDBDB8
  loc_1BD7FC0:   If Not(var_88.EOF) Then
  loc_1BD8003:     var_AC = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FIELDTYPE")), (Me.ChkPayable.Value = 1), var_A6, var_124, CSng(var_158), CDbl(0))
  loc_1BD8019:     If (var_1CC And (var_AC = "T")) Then
  loc_1BD8042:       Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")), CStr(var_240))
  loc_1BD805C:       If (var_EC > 0) Then
  loc_1BD8079:         var_118 = var_88.Fields.Item("CSign")
  loc_1BD8089:         var_DC = "-"
  loc_1BD809B:         If (var_118.Value = 0) Then
  loc_1BD80B5:           If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BD80C6:             Set var_110 = Me.Txt
  loc_1BD80CC:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C)
  loc_1BD80D4:             MemVar_1F920C8 = var_118.Text
  loc_1BD80E7:             Set var_11C = Me.Txt
  loc_1BD80ED:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC)
  loc_1BD80F5:             CDate(var_250) = var_120.Tag
  loc_1BD8108:             Set var_17C = Me.Txt
  loc_1BD810E:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180)
  loc_1BD8116:             var_1AC = var_180.Text
  loc_1BD813B:             Set var_184 = Me.Txt
  loc_1BD8141:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BD8149:             var_1B8 = var_188.Text
  loc_1BD819B:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD81D5:             Set var_1A4 = Me.Txt
  loc_1BD81DB:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD81F3:             Set var_1BC = Me.Txt
  loc_1BD81F9:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD822F:             var_1F4 = 0
  loc_1BD823A:             var_1E8 = 0
  loc_1BD8245:             var_1E4 = 0
  loc_1BD824E:             var_1D0 = "A"
  loc_1BD8274:             var_220 = (CVar(var_9C & var_1A8.Text & " Dt.: ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD82C8:             Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD832E:             var_A6 = (var_A6 + 1)
  loc_1BD833F:             Set var_110 = Me.Txt
  loc_1BD8345:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(var_EC))
  loc_1BD834D:             CDbl(0) = var_118.Text
  loc_1BD8360:             Set var_11C = Me.Txt
  loc_1BD8366:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BD836E:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BD8381:             Set var_17C = Me.Txt
  loc_1BD8387:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD838F:             MemVar_1F920C8 = var_180.Text
  loc_1BD83B4:             Set var_184 = Me.Txt
  loc_1BD83BA:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD83C2:             CDate(Now) = var_188.Text
  loc_1BD83E9:             var_240 = var_88.Fields.Item("pCode").Value
  loc_1BD8414:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD843B:             var_250 = var_88.Fields.Item("uCode").Value
  loc_1BD844E:             Set var_1A4 = Me.Txt
  loc_1BD8454:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD846C:             Set var_1BC = Me.Txt
  loc_1BD8472:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD849E:             var_230 = Now
  loc_1BD84A8:             var_1F4 = 0
  loc_1BD84B3:             var_1E8 = 0
  loc_1BD84BE:             var_1E4 = 0
  loc_1BD84C7:             var_1D0 = "A"
  loc_1BD84ED:             var_220 = (CVar(var_9C & var_1A8.Text & " Dt.: ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD8541:             Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD85A7:             var_A6 = (var_A6 + 1)
  loc_1BD85AD:           Else
  loc_1BD85BB:             Set var_110 = Me.Txt
  loc_1BD85C1:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_240), CDbl(0))
  loc_1BD85C9:             CSng(var_EC) = var_118.Text
  loc_1BD85DC:             Set var_11C = Me.Txt
  loc_1BD85E2:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_250))
  loc_1BD85EA:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BD85FD:             Set var_17C = Me.Txt
  loc_1BD8603:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD860B:             MemVar_1F920C8 = var_180.Text
  loc_1BD8630:             Set var_184 = Me.Txt
  loc_1BD8636:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD863E:             CDate(var_230) = var_188.Text
  loc_1BD8690:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD86CA:             Set var_1A4 = Me.Txt
  loc_1BD86D0:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD86E8:             Set var_1BC = Me.Txt
  loc_1BD86EE:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD8724:             var_1F4 = 0
  loc_1BD872F:             var_1E8 = 0
  loc_1BD873A:             var_1E4 = 0
  loc_1BD8743:             var_1D0 = "A"
  loc_1BD8769:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD87BD:             Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD8823:             var_A6 = (var_A6 + 1)
  loc_1BD8834:             Set var_110 = Me.Txt
  loc_1BD883A:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1BD8842:             CSng(var_EC) = var_118.Text
  loc_1BD8855:             Set var_11C = Me.Txt
  loc_1BD885B:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BD8863:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BD8876:             Set var_17C = Me.Txt
  loc_1BD887C:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD8884:             MemVar_1F920C8 = var_180.Text
  loc_1BD88A9:             Set var_184 = Me.Txt
  loc_1BD88AF:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD88B7:             CDate(Now) = var_188.Text
  loc_1BD88DE:             var_240 = var_88.Fields.Item("pCode").Value
  loc_1BD8909:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD8930:             var_250 = var_88.Fields.Item("uCode").Value
  loc_1BD8943:             Set var_1A4 = Me.Txt
  loc_1BD8949:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD8961:             Set var_1BC = Me.Txt
  loc_1BD8967:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD8993:             var_230 = Now
  loc_1BD899D:             var_1F4 = 0
  loc_1BD89A8:             var_1E8 = 0
  loc_1BD89B3:             var_1E4 = 0
  loc_1BD89BC:             var_1D0 = "A"
  loc_1BD89E2:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD8A36:             Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD8A9C:             var_A6 = (var_A6 + 1)
  loc_1BD8A9F:           End If
  loc_1BD8AA2:         Else
  loc_1BD8AB9:           If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BD8ACA:             Set var_110 = Me.Txt
  loc_1BD8AD0:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_240), CSng(var_EC))
  loc_1BD8AD8:             CDbl(0) = var_118.Text
  loc_1BD8AEB:             Set var_11C = Me.Txt
  loc_1BD8AF1:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_250))
  loc_1BD8AF9:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BD8B0C:             Set var_17C = Me.Txt
  loc_1BD8B12:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD8B1A:             MemVar_1F920C8 = var_180.Text
  loc_1BD8B3F:             Set var_184 = Me.Txt
  loc_1BD8B45:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD8B4D:             CDate(var_230) = var_188.Text
  loc_1BD8B9F:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD8BD9:             Set var_1A4 = Me.Txt
  loc_1BD8BDF:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD8BF7:             Set var_1BC = Me.Txt
  loc_1BD8BFD:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD8C33:             var_1F4 = 0
  loc_1BD8C3E:             var_1E8 = 0
  loc_1BD8C49:             var_1E4 = 0
  loc_1BD8C52:             var_1D0 = "A"
  loc_1BD8C78:             var_220 = (CVar(var_9C & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD8CCC:             Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD8D32:             var_A6 = (var_A6 + 1)
  loc_1BD8D43:             Set var_110 = Me.Txt
  loc_1BD8D49:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1BD8D51:             CSng(var_EC) = var_118.Text
  loc_1BD8D64:             Set var_11C = Me.Txt
  loc_1BD8D6A:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BD8D72:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BD8D85:             Set var_17C = Me.Txt
  loc_1BD8D8B:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD8D93:             MemVar_1F920C8 = var_180.Text
  loc_1BD8DB8:             Set var_184 = Me.Txt
  loc_1BD8DBE:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD8DC6:             CDate(Now) = var_188.Text
  loc_1BD8DED:             var_240 = var_88.Fields.Item("pCode").Value
  loc_1BD8E18:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD8E3F:             var_250 = var_88.Fields.Item("uCode").Value
  loc_1BD8E52:             Set var_1A4 = Me.Txt
  loc_1BD8E58:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD8E70:             Set var_1BC = Me.Txt
  loc_1BD8E76:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD8EA2:             var_230 = Now
  loc_1BD8EAC:             var_1F4 = 0
  loc_1BD8EB7:             var_1E8 = 0
  loc_1BD8EC2:             var_1E4 = 0
  loc_1BD8ECB:             var_1D0 = "A"
  loc_1BD8EF1:             var_220 = (CVar(var_9C & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD8F45:             Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD8FAB:             var_A6 = (var_A6 + 1)
  loc_1BD8FB1:           Else
  loc_1BD8FBF:             Set var_110 = Me.Txt
  loc_1BD8FC5:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_240), CSng(var_EC))
  loc_1BD8FCD:             CDbl(0) = var_118.Text
  loc_1BD8FE0:             Set var_11C = Me.Txt
  loc_1BD8FE6:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_250))
  loc_1BD8FEE:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BD9001:             Set var_17C = Me.Txt
  loc_1BD9007:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD900F:             MemVar_1F920C8 = var_180.Text
  loc_1BD9034:             Set var_184 = Me.Txt
  loc_1BD903A:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD9042:             CDate(var_230) = var_188.Text
  loc_1BD9094:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD90CE:             Set var_1A4 = Me.Txt
  loc_1BD90D4:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD90EC:             Set var_1BC = Me.Txt
  loc_1BD90F2:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD9128:             var_1F4 = 0
  loc_1BD9133:             var_1E8 = 0
  loc_1BD913E:             var_1E4 = 0
  loc_1BD9147:             var_1D0 = "A"
  loc_1BD916D:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD91C1:             Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD9227:             var_A6 = (var_A6 + 1)
  loc_1BD9238:             Set var_110 = Me.Txt
  loc_1BD923E:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(var_EC))
  loc_1BD9246:             CDbl(0) = var_118.Text
  loc_1BD9259:             Set var_11C = Me.Txt
  loc_1BD925F:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BD9267:             CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_120.Tag
  loc_1BD927A:             Set var_17C = Me.Txt
  loc_1BD9280:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD9288:             MemVar_1F920C8 = var_180.Text
  loc_1BD92AD:             Set var_184 = Me.Txt
  loc_1BD92B3:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD92BB:             CDate(Now) = var_188.Text
  loc_1BD92E2:             var_240 = var_88.Fields.Item("pCode").Value
  loc_1BD930D:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD9334:             var_250 = var_88.Fields.Item("uCode").Value
  loc_1BD9347:             Set var_1A4 = Me.Txt
  loc_1BD934D:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD9365:             Set var_1BC = Me.Txt
  loc_1BD936B:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD9397:             var_230 = Now
  loc_1BD93A1:             var_1F4 = 0
  loc_1BD93AC:             var_1E8 = 0
  loc_1BD93B7:             var_1E4 = 0
  loc_1BD93C0:             var_1D0 = "A"
  loc_1BD93E6:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD943A:             Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD94A0:             var_A6 = (var_A6 + 1)
  loc_1BD94A3:           End If
  loc_1BD94A3:         End If
  loc_1BD94A6:       Else
  loc_1BD94CC:         Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")), var_A6, CStr(var_240), CDbl(0), CSng(var_EC))
  loc_1BD94E6:         If (var_EC < 0) Then
  loc_1BD9503:           var_118 = var_88.Fields.Item("CSign")
  loc_1BD9513:           var_DC = "-"
  loc_1BD9525:           If (var_118.Value = 0) Then
  loc_1BD953F:             If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BD9550:               Set var_110 = Me.Txt
  loc_1BD9556:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, CStr(var_250))
  loc_1BD955E:               CStr(Format(CVar(var_1A8), "dd/mm/yy")) = var_118.Text
  loc_1BD9571:               Set var_11C = Me.Txt
  loc_1BD9577:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC)
  loc_1BD957F:               MemVar_1F920C8 = var_120.Tag
  loc_1BD9592:               Set var_17C = Me.Txt
  loc_1BD9598:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD95A0:               CDate(var_230) = var_180.Text
  loc_1BD95C5:               Set var_184 = Me.Txt
  loc_1BD95CB:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BD95D3:               var_1B8 = var_188.Text
  loc_1BD9625:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD965F:               Set var_1A4 = Me.Txt
  loc_1BD9665:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD967D:               Set var_1BC = Me.Txt
  loc_1BD9683:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD96B9:               var_1F4 = 0
  loc_1BD96C4:               var_1E8 = 0
  loc_1BD96CF:               var_1E4 = 0
  loc_1BD96D8:               var_1D0 = "A"
  loc_1BD96FE:               var_230 = (CVar(var_9C & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD9756:               Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD97BC:               var_A6 = (var_A6 + 1)
  loc_1BD97CD:               Set var_110 = Me.Txt
  loc_1BD97D3:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1BD97DB:               CSng(Abs(var_EC)) = var_118.Text
  loc_1BD97EE:               Set var_11C = Me.Txt
  loc_1BD97F4:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BD97FC:               CStr(var_230) = var_120.Tag
  loc_1BD980F:               Set var_17C = Me.Txt
  loc_1BD9815:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD981D:               MemVar_1F920C8 = var_180.Text
  loc_1BD9842:               Set var_184 = Me.Txt
  loc_1BD9848:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD9850:               CDate(Now) = var_188.Text
  loc_1BD9877:               var_250 = var_88.Fields.Item("pCode").Value
  loc_1BD98A2:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD98C9:               var_268 = var_88.Fields.Item("uCode").Value
  loc_1BD98DC:               Set var_1A4 = Me.Txt
  loc_1BD98E2:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD98FA:               Set var_1BC = Me.Txt
  loc_1BD9900:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD992C:               var_240 = Now
  loc_1BD9936:               var_1F4 = 0
  loc_1BD9941:               var_1E8 = 0
  loc_1BD994C:               var_1E4 = 0
  loc_1BD9955:               var_1D0 = "A"
  loc_1BD997B:               var_230 = (CVar(var_9C & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD9996:               var_10C = Abs(var_EC)
  loc_1BD99D3:               Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD9A39:               var_A6 = (var_A6 + 1)
  loc_1BD9A3F:             Else
  loc_1BD9A4D:               Set var_110 = Me.Txt
  loc_1BD9A53:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_250), CSng(var_10C))
  loc_1BD9A5B:               CDbl(0) = var_118.Text
  loc_1BD9A6E:               Set var_11C = Me.Txt
  loc_1BD9A74:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_268))
  loc_1BD9A7C:               CStr(var_230) = var_120.Tag
  loc_1BD9A8F:               Set var_17C = Me.Txt
  loc_1BD9A95:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD9A9D:               MemVar_1F920C8 = var_180.Text
  loc_1BD9AC2:               Set var_184 = Me.Txt
  loc_1BD9AC8:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD9AD0:               CDate(var_240) = var_188.Text
  loc_1BD9B22:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD9B5C:               Set var_1A4 = Me.Txt
  loc_1BD9B62:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD9B7A:               Set var_1BC = Me.Txt
  loc_1BD9B80:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD9BB6:               var_1F4 = 0
  loc_1BD9BC1:               var_1E8 = 0
  loc_1BD9BCC:               var_1E4 = 0
  loc_1BD9BD5:               var_1D0 = "A"
  loc_1BD9BFB:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD9C53:               Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD9CB9:               var_A6 = (var_A6 + 1)
  loc_1BD9CCA:               Set var_110 = Me.Txt
  loc_1BD9CD0:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(Abs(var_EC)))
  loc_1BD9CD8:               CDbl(0) = var_118.Text
  loc_1BD9CEB:               Set var_11C = Me.Txt
  loc_1BD9CF1:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BD9CF9:               CStr(var_230) = var_120.Tag
  loc_1BD9D0C:               Set var_17C = Me.Txt
  loc_1BD9D12:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD9D1A:               MemVar_1F920C8 = var_180.Text
  loc_1BD9D3F:               Set var_184 = Me.Txt
  loc_1BD9D45:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD9D4D:               CDate(Now) = var_188.Text
  loc_1BD9D74:               var_250 = var_88.Fields.Item("pCode").Value
  loc_1BD9D9F:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BD9DC6:               var_268 = var_88.Fields.Item("uCode").Value
  loc_1BD9DD9:               Set var_1A4 = Me.Txt
  loc_1BD9DDF:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BD9DF7:               Set var_1BC = Me.Txt
  loc_1BD9DFD:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BD9E29:               var_240 = Now
  loc_1BD9E33:               var_1F4 = 0
  loc_1BD9E3E:               var_1E8 = 0
  loc_1BD9E49:               var_1E4 = 0
  loc_1BD9E52:               var_1D0 = "A"
  loc_1BD9E78:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BD9E8C:               var_10C = Abs(var_EC)
  loc_1BD9ED0:               Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BD9F36:               var_A6 = (var_A6 + 1)
  loc_1BD9F39:             End If
  loc_1BD9F3C:           Else
  loc_1BD9F53:             If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BD9F64:               Set var_110 = Me.Txt
  loc_1BD9F6A:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_250), CDbl(0))
  loc_1BD9F72:               CSng(var_10C) = var_118.Text
  loc_1BD9F85:               Set var_11C = Me.Txt
  loc_1BD9F8B:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_268))
  loc_1BD9F93:               CStr(var_230) = var_120.Tag
  loc_1BD9FA6:               Set var_17C = Me.Txt
  loc_1BD9FAC:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BD9FB4:               MemVar_1F920C8 = var_180.Text
  loc_1BD9FD9:               Set var_184 = Me.Txt
  loc_1BD9FDF:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BD9FE7:               CDate(var_240) = var_188.Text
  loc_1BDA039:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDA073:               Set var_1A4 = Me.Txt
  loc_1BDA079:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDA091:               Set var_1BC = Me.Txt
  loc_1BDA097:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDA0CD:               var_1F4 = 0
  loc_1BDA0D8:               var_1E8 = 0
  loc_1BDA0E3:               var_1E4 = 0
  loc_1BDA0EC:               var_1D0 = "A"
  loc_1BDA112:               var_230 = (CVar(var_9C & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDA16A:               Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BDA1D0:               var_A6 = (var_A6 + 1)
  loc_1BDA1E1:               Set var_110 = Me.Txt
  loc_1BDA1E7:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CSng(Abs(var_EC)))
  loc_1BDA1EF:               CDbl(0) = var_118.Text
  loc_1BDA202:               Set var_11C = Me.Txt
  loc_1BDA208:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDA210:               CStr(var_230) = var_120.Tag
  loc_1BDA223:               Set var_17C = Me.Txt
  loc_1BDA229:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BDA231:               MemVar_1F920C8 = var_180.Text
  loc_1BDA256:               Set var_184 = Me.Txt
  loc_1BDA25C:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BDA264:               CDate(Now) = var_188.Text
  loc_1BDA28B:               var_250 = var_88.Fields.Item("pCode").Value
  loc_1BDA2B6:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDA2DD:               var_268 = var_88.Fields.Item("uCode").Value
  loc_1BDA2F0:               Set var_1A4 = Me.Txt
  loc_1BDA2F6:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDA30E:               Set var_1BC = Me.Txt
  loc_1BDA314:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDA340:               var_240 = Now
  loc_1BDA34A:               var_1F4 = 0
  loc_1BDA355:               var_1E8 = 0
  loc_1BDA360:               var_1E4 = 0
  loc_1BDA369:               var_1D0 = "A"
  loc_1BDA38F:               var_230 = (CVar(var_9C & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDA3A3:               var_10C = Abs(var_EC)
  loc_1BDA3E7:               Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BDA44D:               var_A6 = (var_A6 + 1)
  loc_1BDA453:             Else
  loc_1BDA461:               Set var_110 = Me.Txt
  loc_1BDA467:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_250), CDbl(0))
  loc_1BDA46F:               CSng(var_10C) = var_118.Text
  loc_1BDA482:               Set var_11C = Me.Txt
  loc_1BDA488:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_268))
  loc_1BDA490:               CStr(var_230) = var_120.Tag
  loc_1BDA4A3:               Set var_17C = Me.Txt
  loc_1BDA4A9:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BDA4B1:               MemVar_1F920C8 = var_180.Text
  loc_1BDA4D6:               Set var_184 = Me.Txt
  loc_1BDA4DC:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BDA4E4:               CDate(var_240) = var_188.Text
  loc_1BDA536:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDA570:               Set var_1A4 = Me.Txt
  loc_1BDA576:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDA58E:               Set var_1BC = Me.Txt
  loc_1BDA594:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDA5CA:               var_1F4 = 0
  loc_1BDA5D5:               var_1E8 = 0
  loc_1BDA5E0:               var_1E4 = 0
  loc_1BDA5E9:               var_1D0 = "A"
  loc_1BDA60F:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:       ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDA667:               Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_1B8)
  loc_1BDA6CD:               var_A6 = (var_A6 + 1)
  loc_1BDA6DE:               Set var_110 = Me.Txt
  loc_1BDA6E4:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, var_A6, CStr(var_88.Fields.Item("uCode").Value), CDbl(0))
  loc_1BDA6EC:               CSng(Abs(var_EC)) = var_118.Text
  loc_1BDA6FF:               Set var_11C = Me.Txt
  loc_1BDA705:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_88.Fields.Item("pCode").Value))
  loc_1BDA70D:               CStr(var_230) = var_120.Tag
  loc_1BDA720:               Set var_17C = Me.Txt
  loc_1BDA726:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BDA72E:               MemVar_1F920C8 = var_180.Text
  loc_1BDA740:               var_1B0 = Me.LblVPrefix.Caption
  loc_1BDA753:               Set var_184 = Me.Txt
  loc_1BDA759:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188, var_1B8)
  loc_1BDA761:               CDate(Now) = var_188.Text
  loc_1BDA788:               var_250 = var_88.Fields.Item("pCode").Value
  loc_1BDA7B3:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDA7D2:               var_1A0 = var_88.Fields.Item("uCode")
  loc_1BDA7DA:               var_268 = var_1A0.Value
  loc_1BDA7ED:               Set var_1A4 = Me.Txt
  loc_1BDA7F3:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDA80B:               Set var_1BC = Me.Txt
  loc_1BDA811:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDA83D:               var_240 = Now
  loc_1BDA847:               var_1F4 = 0
  loc_1BDA852:               var_1E8 = 0
  loc_1BDA85D:               var_1E4 = 0
  loc_1BDA866:               var_1D0 = "A"
  loc_1BDA88C:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:       ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDA8A7:               var_10C = Abs(var_EC)
  loc_1BDA8E4:               Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), var_1B0, MemVar_1F92070, var_1B8)
  loc_1BDA94A:               var_A6 = (var_A6 + 1)
  loc_1BDA94D:             End If
  loc_1BDA94D:           End If
  loc_1BDA953:           var_A6 = (var_A6 + 1)
  loc_1BDA956:         End If
  loc_1BDA956:       End If
  loc_1BDA959:     Else
  loc_1BDA97F:       Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")), var_A6, var_A6, CStr(var_250), CSng(var_10C))
  loc_1BDA999:       If (var_EC > 0) Then
  loc_1BDA9B6:         var_118 = var_88.Fields.Item("CSign")
  loc_1BDA9C6:         var_DC = "-"
  loc_1BDA9D8:         If (var_118.Value = 0) Then
  loc_1BDA9F2:           If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDAA03:             Set var_110 = Me.Txt
  loc_1BDAA09:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_1AC, CDbl(0), CStr(var_268))
  loc_1BDAA11:             CStr(var_230) = var_118.Text
  loc_1BDAA24:             Set var_11C = Me.Txt
  loc_1BDAA2A:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC)
  loc_1BDAA32:             MemVar_1F920C8 = var_120.Tag
  loc_1BDAA45:             Set var_17C = Me.Txt
  loc_1BDAA4B:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B8)
  loc_1BDAA53:             CDate(var_240) = var_180.Text
  loc_1BDAA78:             Set var_184 = Me.Txt
  loc_1BDAA7E:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDAAAD:             var_158 = var_88.Fields.Item("ACode").Value
  loc_1BDAAD8:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDAAEB:             Set var_19C = Me.Txt
  loc_1BDAAF1:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDAAF9:             var_124 = var_1A0.Tag
  loc_1BDAB0C:             Set var_1A4 = Me.Txt
  loc_1BDAB12:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDAB2D:             Set var_1BC = Me.Txt
  loc_1BDAB33:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDAB3B:             var_130 = var_254.Text
  loc_1BDAB43:             var_10C = Now
  loc_1BDAB4D:             var_200 = 0
  loc_1BDAB58:             var_1FC = 0
  loc_1BDAB63:             var_1F8 = 0
  loc_1BDAB6C:             var_1F4 = "A"
  loc_1BDAB8C:             var_134 = var_9C & var_1A8.Text & "  Dt.:   "
  loc_1BDABE1:             Proc_6_140_12D90F4(MemVar_1F92044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDAC3E:           Else
  loc_1BDAC4C:             Set var_110 = Me.Txt
  loc_1BDAC52:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_130, CStr(var_158), CSng(var_EC), CDbl(0))
  loc_1BDAC5A:             var_124 = var_118.Text
  loc_1BDAC6D:             Set var_11C = Me.Txt
  loc_1BDAC73:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDAC7B:             MemVar_1F920C8 = var_120.Tag
  loc_1BDAC8E:             Set var_17C = Me.Txt
  loc_1BDAC94:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B0)
  loc_1BDAC9C:             CDate(var_10C) = var_180.Text
  loc_1BDACC1:             Set var_184 = Me.Txt
  loc_1BDACC7:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDACF6:             var_240 = var_88.Fields.Item("ACode").Value
  loc_1BDAD21:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDAD34:             Set var_19C = Me.Txt
  loc_1BDAD3A:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDAD42:             var_124 = var_1A0.Tag
  loc_1BDAD55:             Set var_1A4 = Me.Txt
  loc_1BDAD5B:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDAD73:             Set var_1BC = Me.Txt
  loc_1BDAD79:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDADA5:             var_230 = Now
  loc_1BDADAF:             var_1F8 = 0
  loc_1BDADBA:             var_1F4 = 0
  loc_1BDADC5:             var_1E8 = 0
  loc_1BDADCE:             var_1E4 = "A"
  loc_1BDADF4:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:     ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDAE47:             Proc_6_140_12D90F4(MemVar_1F92044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDAEA5:           End If
  loc_1BDAEA8:         Else
  loc_1BDAEBF:           If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDAED0:             Set var_110 = Me.Txt
  loc_1BDAED6:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_1AC, CStr(var_240), CDbl(0), CSng(var_EC))
  loc_1BDAEDE:             var_124 = var_118.Text
  loc_1BDAEF1:             Set var_11C = Me.Txt
  loc_1BDAEF7:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(CVar(var_98 & var_1A8.Text & " Dt.:       ")))
  loc_1BDAEFF:             MemVar_1F920C8 = var_120.Tag
  loc_1BDAF12:             Set var_17C = Me.Txt
  loc_1BDAF18:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B8)
  loc_1BDAF20:             CDate(var_230) = var_180.Text
  loc_1BDAF45:             Set var_184 = Me.Txt
  loc_1BDAF4B:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDAF7A:             var_158 = var_88.Fields.Item("ACode").Value
  loc_1BDAFA5:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDAFB8:             Set var_19C = Me.Txt
  loc_1BDAFBE:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDAFC6:             var_124 = var_1A0.Tag
  loc_1BDAFD9:             Set var_1A4 = Me.Txt
  loc_1BDAFDF:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDAFFA:             Set var_1BC = Me.Txt
  loc_1BDB000:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDB008:             var_130 = var_254.Text
  loc_1BDB010:             var_10C = Now
  loc_1BDB01A:             var_200 = 0
  loc_1BDB025:             var_1FC = 0
  loc_1BDB030:             var_1F8 = 0
  loc_1BDB039:             var_1F4 = "A"
  loc_1BDB059:             var_134 = var_9C & var_1A8.Text & "  Dt.:     "
  loc_1BDB0AE:             Proc_6_140_12D90F4(MemVar_1F92044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDB10B:           Else
  loc_1BDB119:             Set var_110 = Me.Txt
  loc_1BDB11F:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_130, CStr(var_158), CDbl(0), CSng(var_EC))
  loc_1BDB127:             var_124 = var_118.Text
  loc_1BDB13A:             Set var_11C = Me.Txt
  loc_1BDB140:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDB148:             MemVar_1F920C8 = var_120.Tag
  loc_1BDB15B:             Set var_17C = Me.Txt
  loc_1BDB161:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B0)
  loc_1BDB169:             CDate(var_10C) = var_180.Text
  loc_1BDB18E:             Set var_184 = Me.Txt
  loc_1BDB194:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDB1C3:             var_240 = var_88.Fields.Item("ACode").Value
  loc_1BDB1EE:             Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDB201:             Set var_19C = Me.Txt
  loc_1BDB207:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDB20F:             var_124 = var_1A0.Tag
  loc_1BDB222:             Set var_1A4 = Me.Txt
  loc_1BDB228:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDB240:             Set var_1BC = Me.Txt
  loc_1BDB246:             Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDB272:             var_230 = Now
  loc_1BDB27C:             var_1F8 = 0
  loc_1BDB287:             var_1F4 = 0
  loc_1BDB292:             var_1E8 = 0
  loc_1BDB29B:             var_1E4 = "A"
  loc_1BDB2C1:             var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:       ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDB314:             Proc_6_140_12D90F4(MemVar_1F92044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDB372:           End If
  loc_1BDB372:         End If
  loc_1BDB378:         var_A6 = (var_A6 + 1)
  loc_1BDB37E:       Else
  loc_1BDB3A4:         Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")), var_A6, CStr(var_240), CSng(var_EC), CDbl(0))
  loc_1BDB3BE:         If (var_EC < 0) Then
  loc_1BDB3DB:           var_118 = var_88.Fields.Item("CSign")
  loc_1BDB3EB:           var_DC = "-"
  loc_1BDB3FD:           If (var_118.Value = 0) Then
  loc_1BDB417:             If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDB428:               Set var_110 = Me.Txt
  loc_1BDB42E:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_1AC, var_124)
  loc_1BDB436:               CStr(CVar(var_98 & var_1A8.Text & " Dt.:       ")) = var_118.Text
  loc_1BDB449:               Set var_11C = Me.Txt
  loc_1BDB44F:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC)
  loc_1BDB457:               MemVar_1F920C8 = var_120.Tag
  loc_1BDB46A:               Set var_17C = Me.Txt
  loc_1BDB470:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B8)
  loc_1BDB478:               CDate(var_230) = var_180.Text
  loc_1BDB49D:               Set var_184 = Me.Txt
  loc_1BDB4A3:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDB4D2:               var_178 = var_88.Fields.Item("ACode").Value
  loc_1BDB4FD:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDB510:               Set var_19C = Me.Txt
  loc_1BDB516:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDB51E:               var_124 = var_1A0.Tag
  loc_1BDB531:               Set var_1A4 = Me.Txt
  loc_1BDB537:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDB552:               Set var_1BC = Me.Txt
  loc_1BDB558:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDB560:               var_130 = var_254.Text
  loc_1BDB568:               var_158 = Now
  loc_1BDB572:               var_200 = 0
  loc_1BDB57D:               var_1FC = 0
  loc_1BDB588:               var_1F8 = 0
  loc_1BDB591:               var_1F4 = "A"
  loc_1BDB5B1:               var_134 = var_9C & var_1A8.Text & "  Dt.:     "
  loc_1BDB5C6:               var_10C = Abs(var_EC)
  loc_1BDB60A:               Proc_6_140_12D90F4(MemVar_1F92044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDB667:             Else
  loc_1BDB675:               Set var_110 = Me.Txt
  loc_1BDB67B:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_130, CStr(var_178), CDbl(0), CSng(var_10C))
  loc_1BDB683:               var_124 = var_118.Text
  loc_1BDB696:               Set var_11C = Me.Txt
  loc_1BDB69C:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDB6A4:               MemVar_1F920C8 = var_120.Tag
  loc_1BDB6B7:               Set var_17C = Me.Txt
  loc_1BDB6BD:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B0)
  loc_1BDB6C5:               CDate(var_158) = var_180.Text
  loc_1BDB6EA:               Set var_184 = Me.Txt
  loc_1BDB6F0:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDB71F:               var_250 = var_88.Fields.Item("ACode").Value
  loc_1BDB74A:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDB75D:               Set var_19C = Me.Txt
  loc_1BDB763:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDB76B:               var_124 = var_1A0.Tag
  loc_1BDB77E:               Set var_1A4 = Me.Txt
  loc_1BDB784:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDB79C:               Set var_1BC = Me.Txt
  loc_1BDB7A2:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDB7CE:               var_240 = Now
  loc_1BDB7D8:               var_1F8 = 0
  loc_1BDB7E3:               var_1F4 = 0
  loc_1BDB7EE:               var_1E8 = 0
  loc_1BDB7F7:               var_1E4 = "A"
  loc_1BDB81D:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:       ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDB837:               var_10C = Abs(var_EC)
  loc_1BDB874:               Proc_6_140_12D90F4(MemVar_1F92044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDB8D2:             End If
  loc_1BDB8D5:           Else
  loc_1BDB8EC:             If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDB8FD:               Set var_110 = Me.Txt
  loc_1BDB903:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_1AC, CStr(var_250), CSng(var_10C), CDbl(0))
  loc_1BDB90B:               var_124 = var_118.Text
  loc_1BDB91E:               Set var_11C = Me.Txt
  loc_1BDB924:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, CStr(var_230))
  loc_1BDB92C:               MemVar_1F920C8 = var_120.Tag
  loc_1BDB93F:               Set var_17C = Me.Txt
  loc_1BDB945:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B8)
  loc_1BDB94D:               CDate(var_240) = var_180.Text
  loc_1BDB972:               Set var_184 = Me.Txt
  loc_1BDB978:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDB9A7:               var_178 = var_88.Fields.Item("ACode").Value
  loc_1BDB9D2:               Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("RevAmt")))
  loc_1BDB9E5:               Set var_19C = Me.Txt
  loc_1BDB9EB:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDB9F3:               var_124 = var_1A0.Tag
  loc_1BDBA06:               Set var_1A4 = Me.Txt
  loc_1BDBA0C:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDBA27:               Set var_1BC = Me.Txt
  loc_1BDBA2D:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDBA35:               var_130 = var_254.Text
  loc_1BDBA3D:               var_158 = Now
  loc_1BDBA47:               var_200 = 0
  loc_1BDBA52:               var_1FC = 0
  loc_1BDBA5D:               var_1F8 = 0
  loc_1BDBA66:               var_1F4 = "A"
  loc_1BDBA86:               var_134 = var_9C & var_1A8.Text & "  Dt.:       "
  loc_1BDBAA2:               var_10C = Abs(var_EC)
  loc_1BDBADF:               Proc_6_140_12D90F4(MemVar_1F92044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDBB3C:             Else
  loc_1BDBB4A:               Set var_110 = Me.Txt
  loc_1BDBB50:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_130, CStr(var_178), CSng(var_10C), CDbl(0))
  loc_1BDBB58:               var_124 = var_118.Text
  loc_1BDBB6B:               Set var_11C = Me.Txt
  loc_1BDBB71:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDBB79:               MemVar_1F920C8 = var_120.Tag
  loc_1BDBB8C:               Set var_17C = Me.Txt
  loc_1BDBB92:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B0)
  loc_1BDBB9A:               CDate(var_158) = var_180.Text
  loc_1BDBBBF:               Set var_184 = Me.Txt
  loc_1BDBBC5:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDBBF4:               var_250 = var_88.Fields.Item("ACode").Value
  loc_1BDBC18:               var_CC = CVar(var_88.Fields.Item("RevAmt")) 'Address
  loc_1BDBC1F:               Proc_6_39_E7C810(var_EC, var_CC)
  loc_1BDBC32:               Set var_19C = Me.Txt
  loc_1BDBC38:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDBC40:               var_124 = var_1A0.Tag
  loc_1BDBC53:               Set var_1A4 = Me.Txt
  loc_1BDBC59:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDBC71:               Set var_1BC = Me.Txt
  loc_1BDBC77:               Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDBCA3:               var_240 = Now
  loc_1BDBCAD:               var_1F8 = 0
  loc_1BDBCB8:               var_1F4 = 0
  loc_1BDBCC3:               var_1E8 = 0
  loc_1BDBCCC:               var_1E4 = "A"
  loc_1BDBCF2:               var_230 = (CVar(var_98 & var_1A8.Text & " Dt.:         ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDBD05:               var_10C = Abs(var_EC)
  loc_1BDBD49:               Proc_6_140_12D90F4(MemVar_1F92044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDBDA7:             End If
  loc_1BDBDA7:           End If
  loc_1BDBDAD:           var_A6 = (var_A6 + 1)
  loc_1BDBDB0:         End If
  loc_1BDBDB0:       End If
  loc_1BDBDB0:     End If
  loc_1BDBDB3:     var_88.MoveNext
  loc_1BDBDB8:     GoTo loc_1BD7FB1
  loc_1BDBDBB:   End If
  loc_1BDBDBB: End If
  loc_1BDBDCF: var_124 = "SELECT Sum(PostVal) as Amount, AcCode as AccName " & " FROM Purch2 Where DocID='"
  loc_1BDBDE0: Set var_110 = Me.Txt
  loc_1BDBDE6: Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_AC, var_124, var_CC, -1, var_11C)
  loc_1BDBDEE: var_A6 = var_118.Text
  loc_1BDBE07: unk_59BA2D.Execute CStr(var_250) & var_AC & "' Group By AcCode ", CDbl(0), CSng(var_10C)
  loc_1BDBE12: Set var_88 = var_11C
  loc_1BDBE40: If (var_88.RecordCount > 0) Then
  loc_1BDBE43:   ' Referenced from: 1BDC871
  loc_1BDBE52:   If Not(var_88.EOF) Then
  loc_1BDBE6C:     var_118 = var_88.Fields.Item("Amount")
  loc_1BDBE7B:     Proc_6_39_E7C810(var_EC, CVar(var_118), var_124)
  loc_1BDBE95:     If (var_EC > 0) Then
  loc_1BDBEAF:       If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDBEC0:         Set var_110 = Me.Txt
  loc_1BDBEC6:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_1AC)
  loc_1BDBECE:         CStr(var_230) = var_118.Text
  loc_1BDBEE1:         Set var_11C = Me.Txt
  loc_1BDBEE7:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120)
  loc_1BDBEEF:         var_AC = var_120.Tag
  loc_1BDBF02:         Set var_17C = Me.Txt
  loc_1BDBF08:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180)
  loc_1BDBF10:         var_1B8 = var_180.Text
  loc_1BDBF35:         Set var_184 = Me.Txt
  loc_1BDBF3B:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDBF6A:         var_158 = var_88.Fields.Item("ACCNAME").Value
  loc_1BDBF95:         Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("Amount")))
  loc_1BDBFA8:         Set var_19C = Me.Txt
  loc_1BDBFAE:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDBFB6:         var_124 = var_1A0.Tag
  loc_1BDBFC9:         Set var_1A4 = Me.Txt
  loc_1BDBFCF:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDBFEA:         Set var_1BC = Me.Txt
  loc_1BDBFF0:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDBFF8:         var_130 = var_254.Text
  loc_1BDC000:         var_10C = Now
  loc_1BDC00A:         var_200 = 0
  loc_1BDC015:         var_1FC = 0
  loc_1BDC020:         var_1F8 = 0
  loc_1BDC029:         var_1F4 = "A"
  loc_1BDC049:         var_134 = var_9C & var_1A8.Text & "  Dt.: "
  loc_1BDC09E:         Proc_6_140_12D90F4(MemVar_1F92044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDC0FB:       Else
  loc_1BDC109:         Set var_110 = Me.Txt
  loc_1BDC10F:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_130, CStr(var_158), CDbl(0), CSng(var_EC))
  loc_1BDC117:         var_124 = var_118.Text
  loc_1BDC12A:         Set var_11C = Me.Txt
  loc_1BDC130:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDC138:         MemVar_1F920C8 = var_120.Tag
  loc_1BDC14B:         Set var_17C = Me.Txt
  loc_1BDC151:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B0)
  loc_1BDC159:         CDate(var_10C) = var_180.Text
  loc_1BDC17E:         Set var_184 = Me.Txt
  loc_1BDC184:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDC1B3:         var_240 = var_88.Fields.Item("ACCNAME").Value
  loc_1BDC1DE:         Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("Amount")))
  loc_1BDC1F1:         Set var_19C = Me.Txt
  loc_1BDC1F7:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDC1FF:         var_124 = var_1A0.Tag
  loc_1BDC212:         Set var_1A4 = Me.Txt
  loc_1BDC218:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDC230:         Set var_1BC = Me.Txt
  loc_1BDC236:         Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDC262:         var_230 = Now
  loc_1BDC26C:         var_1F8 = 0
  loc_1BDC277:         var_1F4 = 0
  loc_1BDC282:         var_1E8 = 0
  loc_1BDC28B:         var_1E4 = "A"
  loc_1BDC2B1:         var_220 = (CVar(var_98 & var_1A8.Text & " Dt.:   ") + Format(CVar(var_254), "dd/mm/yy"))
  loc_1BDC304:         Proc_6_140_12D90F4(MemVar_1F92044, var_130, var_A6, var_AC, CLng(var_1B0), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDC362:       End If
  loc_1BDC368:       var_A6 = (var_A6 + 1)
  loc_1BDC36E:     Else
  loc_1BDC385:       var_118 = var_88.Fields.Item("Amount")
  loc_1BDC394:       Proc_6_39_E7C810(var_EC, CVar(var_118), var_A6, CStr(var_240), CSng(var_EC), CDbl(0))
  loc_1BDC3AE:       If (var_EC < 0) Then
  loc_1BDC3C8:         If ((global_132 = "PRR") Or (global_132 = "PRC")) Then
  loc_1BDC3D9:           Set var_110 = Me.Txt
  loc_1BDC3DF:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_1AC, var_124)
  loc_1BDC3E7:           CStr(CVar(var_98 & var_1A8.Text & " Dt.:         ")) = var_118.Text
  loc_1BDC3FA:           Set var_11C = Me.Txt
  loc_1BDC400:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC)
  loc_1BDC408:           MemVar_1F920C8 = var_120.Tag
  loc_1BDC41B:           Set var_17C = Me.Txt
  loc_1BDC421:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1B8)
  loc_1BDC429:           CDate(var_230) = var_180.Text
  loc_1BDC44E:           Set var_184 = Me.Txt
  loc_1BDC454:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDC483:           var_178 = var_88.Fields.Item("ACCNAME").Value
  loc_1BDC4AE:           Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("Amount")))
  loc_1BDC4C1:           Set var_19C = Me.Txt
  loc_1BDC4C7:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(4), var_1A0)
  loc_1BDC4CF:           var_124 = var_1A0.Tag
  loc_1BDC4E2:           Set var_1A4 = Me.Txt
  loc_1BDC4E8:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A8)
  loc_1BDC503:           Set var_1BC = Me.Txt
  loc_1BDC509:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_254)
  loc_1BDC511:           var_130 = var_254.Text
  loc_1BDC519:           var_158 = Now
  loc_1BDC523:           var_200 = 0
  loc_1BDC52E:           var_1FC = 0
  loc_1BDC539:           var_1F8 = 0
  loc_1BDC542:           var_1F4 = "A"
  loc_1BDC55B:           var_12C = var_9C & var_1A8.Text
  loc_1BDC562:           var_134 = var_12C & "  Dt.:   "
  loc_1BDC57E:           var_10C = Abs(var_EC)
  loc_1BDC5BB:           Proc_6_140_12D90F4(MemVar_1F92044, var_1AC, var_A6, var_AC, CLng(var_1B8), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDC618:         Else
  loc_1BDC626:           Set var_110 = Me.Txt
  loc_1BDC62C:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(0), var_118, var_12C, CStr(var_178), CSng(var_10C), CDbl(0))
  loc_1BDC634:           var_124 = var_118.Text
  loc_1BDC647:           Set var_11C = Me.Txt
  loc_1BDC64D:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(1), var_120, var_AC, var_134 & var_130)
  loc_1BDC655:           MemVar_1F920C8 = var_120.Tag
  loc_1BDC668:           Set var_17C = Me.Txt
  loc_1BDC66E:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(2), var_180, var_1AC)
  loc_1BDC676:           CDate(var_158) = var_180.Text
  loc_1BDC69B:           Set var_184 = Me.Txt
  loc_1BDC6A1:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(3), var_188)
  loc_1BDC6D0:           var_250 = var_88.Fields.Item("ACCNAME").Value
  loc_1BDC6FB:           Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("Amount")))
  loc_1BDC70E:           Set var_19C = Me.Txt
  loc_1BDC714:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(5), var_1A0)
  loc_1BDC72C:           Set var_1A4 = Me.Txt
  loc_1BDC732:           Call 0.Method_Proc_32_112_1BDC8880 (CInt(6), var_1A8)
  loc_1BDC75E:           var_240 = Now
  loc_1BDC768:           var_1F4 = 0
  loc_1BDC773:           var_1E8 = 0
  loc_1BDC77E:           var_1E4 = 0
  loc_1BDC787:           var_1D0 = "A"
  loc_1BDC7AD:           var_230 = (CVar(var_98 & var_1A0.Text & " Dt.:     ") + Format(CVar(var_1A8), "dd/mm/yy"))
  loc_1BDC7B9:           var_1C8 = vbNullString
  loc_1BDC7C2:           var_10C = Abs(var_EC)
  loc_1BDC806:           Proc_6_140_12D90F4(MemVar_1F92044, var_12C, var_A6, var_AC, CLng(var_1AC), Me.LblVPrefix.Caption, MemVar_1F92070, var_188.Text)
  loc_1BDC860:         End If
  loc_1BDC866:         var_A6 = (var_A6 + 1)
  loc_1BDC869:       End If
  loc_1BDC869:     End If
  loc_1BDC86C:     var_88.MoveNext
  loc_1BDC871:     GoTo loc_1BDBE43
  loc_1BDC874:   End If
  loc_1BDC874: End If
  loc_1BDC879: Set var_8C = Nothing
  loc_1BDC881: Set var_88 = Nothing
  loc_1BDC884: Exit Sub
End Sub
