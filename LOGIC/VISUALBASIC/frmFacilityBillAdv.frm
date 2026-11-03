VERSION 5.00
Begin VB.Form frmFacilityBillAdv
  Caption = "Facility Billing"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 13740
  ClientHeight = 8760
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
    Index = 9
    ForeColor = &HFF0000&
    Left = 8970
    Top = 615
    Width = 1140
    Height = 240
    TabIndex = 69
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
  Begin Frame FreInvInfo
    Caption = "eInvoice Info:"
    Left = 11280
    Top = 4260
    Width = 6735
    Height = 1095
    Visible = 0   'False
    TabIndex = 60
    Begin TextBox TxteInvInfo
      Index = 2
      Left = 795
      Top = 765
      Width = 5800
      Height = 240
      TabIndex = 66
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
      TabIndex = 65
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
      Index = 0
      Left = 795
      Top = 255
      Width = 5800
      Height = 240
      TabIndex = 64
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
      Caption = "IRN:"
      Index = 0
      Left = 90
      Top = 255
      Width = 330
      Height = 195
      TabIndex = 63
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
      TabIndex = 62
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
      Caption = "Ack.Dt.:"
      Index = 2
      Left = 90
      Top = 765
      Width = 600
      Height = 195
      TabIndex = 61
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
  Begin CommandButton CmdeInvoiceSql
    Caption = "eInvoice Sql"
    Left = 12690
    Top = 5355
    Width = 1665
    Height = 375
    Visible = 0   'False
    TabIndex = 59
  End
  Begin CommandButton CmdeInvoiceJson
    Caption = "eInvoice Json"
    Left = 12705
    Top = 5745
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 58
  End
  Begin CommandButton CmdGeneInvoice
    Caption = "Gen eInvoice"
    Left = 12705
    Top = 6120
    Width = 1650
    Height = 375
    Visible = 0   'False
    TabIndex = 57
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13740
    Height = 420
    TabIndex = 54
  End
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1830
    Top = 1155
    Width = 1140
    Height = 255
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGCat
    Left = 1290
    Top = 7440
    Width = 7230
    Height = 2355
    Visible = 0   'False
    TabIndex = 46
  End
  Begin TextBox TxtPer
    Index = 1
    ForeColor = &HFF0000&
    Left = 8760
    Top = 4590
    Width = 795
    Height = 240
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 8
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
  Begin TextBox TxtGt
    Index = 1
    ForeColor = &HFF0000&
    Left = 9765
    Top = 4590
    Width = 1395
    Height = 240
    Enabled = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 8970
    Top = 1140
    Width = 1140
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6750
    Top = 1140
    Width = 1140
    Height = 255
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
  Begin DataGrid DGParty
    Left = 8745
    Top = 7950
    Width = 10950
    Height = 2865
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 10170
    Top = 870
    Width = 1140
    Height = 255
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 8970
    Top = 870
    Width = 1140
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 6750
    Top = 870
    Width = 1140
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &H80000004&
    Left = 6495
    Top = 60
    Width = 2595
    Height = 255
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 21
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin Frame frFacility
    Left = 60
    Top = 4470
    Width = 7215
    Height = 2955
    Visible = 0   'False
    TabIndex = 22
    Begin DataGrid DGFacility
      Left = 75
      Top = 2640
      Width = 4185
      Height = 2145
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 28
    End
    Begin DataGrid DGLocation
      Left = 4275
      Top = 2670
      Width = 4155
      Height = 2865
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 68
    End
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 315
      Width = 3855
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 2205
      Width = 3855
      Height = 255
      Visible = 0   'False
      TabIndex = 47
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 1125
      Width = 1140
      Height = 255
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 855
      Width = 1140
      Height = 255
      TabIndex = 8
      BorderStyle = 0 'None
      MaxLength = 15
      Appearance = 0 'Flat
    End
    Begin CommandButton cmdCancel
      Caption = "&Cancel"
      Left = 5190
      Top = 1680
      Width = 1470
      Height = 585
      TabIndex = 14
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
      Index = 10
      BackColor = &HFFFFFF&
      Left = 4065
      Top = 1125
      Width = 1140
      Height = 255
      Visible = 0   'False
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdOK
      Caption = "&OK"
      Left = 3705
      Top = 1680
      Width = 1470
      Height = 585
      TabIndex = 13
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
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 1935
      Width = 1140
      Height = 255
      TabIndex = 12
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 1665
      Width = 1140
      Height = 255
      TabIndex = 11
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 1395
      Width = 1140
      Height = 255
      TabIndex = 10
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 11
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1635
      Top = 585
      Width = 3855
      Height = 255
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Location"
      Index = 8
      ForeColor = &HFF0000&
      Left = 375
      Top = 300
      Width = 705
      Height = 240
      TabIndex = 67
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Tax Stru"
      Index = 13
      ForeColor = &HFF0000&
      Left = 360
      Top = 2190
      Width = 735
      Height = 240
      Visible = 0   'False
      TabIndex = 48
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblCalReadDiff
      Caption = "."
      ForeColor = &H0&
      Left = 4050
      Top = 1440
      Width = 1845
      Height = 240
      Visible = 0   'False
      TabIndex = 40
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
      Caption = "To Period"
      Index = 10
      ForeColor = &HFF0000&
      Left = 360
      Top = 1140
      Width = 825
      Height = 240
      TabIndex = 37
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "For Period"
      Index = 9
      ForeColor = &HFF0000&
      Left = 375
      Top = 855
      Width = 885
      Height = 240
      TabIndex = 36
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label lblChargeUnit
      Caption = "."
      ForeColor = &H0&
      Left = 2805
      Top = 1695
      Width = 1845
      Height = 240
      TabIndex = 35
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
    Begin Label lblChargeType
      Caption = "."
      ForeColor = &H0&
      Left = 5520
      Top = 600
      Width = 1845
      Height = 240
      TabIndex = 34
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
      Caption = "APP DATE"
      Index = 7
      ForeColor = &HFF0000&
      Left = 3015
      Top = 1140
      Width = 855
      Height = 240
      Visible = 0   'False
      TabIndex = 33
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Total Amount"
      Index = 4
      ForeColor = &HFF0000&
      Left = 360
      Top = 1935
      Width = 1155
      Height = 240
      TabIndex = 26
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Unit Rate"
      Index = 3
      ForeColor = &HFF0000&
      Left = 375
      Top = 1650
      Width = 780
      Height = 240
      TabIndex = 25
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Unit"
      Index = 2
      ForeColor = &HFF0000&
      Left = 375
      Top = 1395
      Width = 330
      Height = 240
      TabIndex = 24
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label LblName
      Caption = "Facility Name"
      Index = 1
      ForeColor = &HFF0000&
      Left = 375
      Top = 570
      Width = 1140
      Height = 240
      TabIndex = 23
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1830
    Top = 600
    Width = 6060
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 75
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdEdit
    Caption = "&EDIT"
    Left = 12075
    Top = 2370
    Width = 1140
    Height = 795
    TabIndex = 20
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1260
    Top = 2250
    Width = 345
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 9
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdAdd
    Caption = "&ADD"
    Left = 12075
    Top = 1560
    Width = 1140
    Height = 795
    TabIndex = 5
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
  Begin CommandButton CmdDelete
    Caption = "&DELETE"
    Left = 12075
    Top = 3180
    Width = 1140
    Height = 795
    TabIndex = 16
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
  Begin MSHFlexGrid FGrid
    Left = 15
    Top = 1485
    Width = 12000
    Height = 2565
    TabIndex = 17
  End
  Begin MSHFlexGrid Fgrid1
    Left = 15
    Top = 4050
    Width = 8610
    Height = 285
    Visible = 0   'False
    TabIndex = 18
  End
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 810
    Top = 4575
    Width = 6060
    Height = 1470
    TabIndex = 52
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 255
    Appearance = 0 'Flat
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HC0&
    Left = 10200
    Top = 615
    Width = 690
    Height = 240
    TabIndex = 71
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
    Caption = "Vr No"
    Index = 3
    ForeColor = &HFF0000&
    Left = 8115
    Top = 615
    Width = 480
    Height = 240
    TabIndex = 70
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Image QrImage
    Left = 13275
    Top = 480
    Width = 1800
    Height = 1350
    Visible = 0   'False
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 11040
    Top = 6900
    Width = 3375
    Height = 285
    TabIndex = 56
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
    Left = 11040
    Top = 7185
    Width = 3330
    Height = 255
    TabIndex = 55
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
  Begin Label LblName
    Caption = "Remark"
    Index = 15
    ForeColor = &HFF0000&
    Left = 90
    Top = 4575
    Width = 660
    Height = 240
    TabIndex = 53
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblTerm
    Caption = "Terms && Conditions"
    ForeColor = &HC0&
    Left = 120
    Top = 7845
    Width = 10185
    Height = 2880
    TabIndex = 51
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
  Begin Label LblName
    Caption = "SundryAppdate"
    Index = 14
    ForeColor = &HFF0000&
    Left = 555
    Top = 1155
    Width = 1305
    Height = 240
    Visible = 0   'False
    TabIndex = 50
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 7350
    Top = 4590
    Width = 465
    Height = 240
    TabIndex = 45
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
  Begin Label LblAt
    Caption = "%"
    Index = 1
    ForeColor = &HFF0000&
    Left = 9570
    Top = 4590
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 44
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
    ForeColor = &HFF0000&
    Left = 7320
    Top = 4905
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 43
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
  Begin Label LblName
    Caption = "To Period"
    Index = 12
    ForeColor = &HFF0000&
    Left = 8100
    Top = 1155
    Width = 825
    Height = 240
    TabIndex = 39
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "For Period"
    Index = 11
    ForeColor = &HFF0000&
    Left = 5805
    Top = 1155
    Width = 885
    Height = 240
    TabIndex = 38
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Due Date"
    Index = 6
    ForeColor = &HFF0000&
    Left = 8115
    Top = 870
    Width = 780
    Height = 240
    TabIndex = 31
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Bill Date"
    Index = 5
    ForeColor = &HFF0000&
    Left = 5805
    Top = 870
    Width = 690
    Height = 240
    TabIndex = 30
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Party Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 570
    Top = 585
    Width = 990
    Height = 240
    TabIndex = 21
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "frmFacilityBillAdv"

Private global_88 As Byte
Private global_120 As Double
Private global_80 As Integer
Private global_92 As Double
Private global_108 As Integer

Private Sub CmdeInvoiceJson_Click() 'F0EFDC
  'Data Table: 5608C8
  Dim var_12C As Integer
  Dim Me As Recordset15
  Dim unk_5608CF As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Fields15
  Dim var_130 As Field20
  loc_F0EF15: Call Proc_350_65_E65820(global_112)
  loc_F0EF20: If (var_86 = 0) Then
  loc_F0EF23:   Exit Sub
  loc_F0EF24: End If
  loc_F0EF24: Call CmdeInvoiceSql_Click()
  loc_F0EF2F: var_12C = 0
  loc_F0EF8E: unk_5608CF.Execute CStr("Select Top 1 DocId From FacilityBill1 Where DocId1='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_114, -1
  loc_F0EF96: var_118 = var_118.Fields
  loc_F0EF9E: var_12C = var_11C.Item(var_11C)
  loc_F0EFA6: var_130 = var_130.Value
  loc_F0EFB3: Proc_96_104_18970BC(CStr(var_140), var_140)
  loc_F0EFD9: Exit Sub
End Sub

Private Sub CmdGeneInvoice_Click() 'F520F8
  'Data Table: 5608C8
  Dim var_130 As Integer
  Dim Me As Recordset15
  Dim unk_5608CF As Connection15
  Dim var_11C As Recordset15
  Dim var_120 As Fields15
  Dim var_134 As Field20
  loc_F51FFD: Call Proc_350_65_E65820(global_112)
  loc_F52008: If (var_86 = 0) Then
  loc_F5200B:   Exit Sub
  loc_F5200C: End If
  loc_F52012: var_130 = 0
  loc_F52071: unk_5608CF.Execute CStr("Select Top 1 DocId From FacilityBill1 Where DocId1='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_118, -1
  loc_F52079: var_11C = var_11C.Fields
  loc_F52081: var_130 = var_120.Item(var_120)
  loc_F52089: var_134 = var_134.Value
  loc_F52092: var_8C = CStr(var_144)
  loc_F520BA: Proc_348_15_E10910(var_8C, 0)
  loc_F520E4: Proc_348_21_12A7B74(var_8C, Me.QrImage, global_112, global_116)
  loc_F520F0: Call Proc_350_64_FAAFB8(global_120, var_144)
  loc_F520F5: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '124BF0C
  'Data Table: 5608C8
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_124B9CA: Set var_88 = Me.Txt
  loc_124B9D0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_124B9DE: Proc_6_74_E226B0(var_8C)
  loc_124B9EA: Call Proc_350_46_EB90A0(var_8C)
  loc_124B9F2: var_92 = Index
  loc_124B9FD: If (var_92 = CInt(0)) Then
  loc_124BA17:   If (Me.RecordCount > 0) Then
  loc_124BA26:     Set var_8C = Nothing
  loc_124BA3E:     Proc_6_137_1193554(Me.DGParty, global_56, Index)
  loc_124BA4C:   End If
  loc_124BA9A:   Set var_88 = Me.Txt
  loc_124BAA0:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_124BAA8:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_124BAC0:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_124BAC3:     Exit Sub
  loc_124BAC4:   End If
  loc_124BAD1:   Set var_88 = Me.Txt
  loc_124BAD7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_124BADF:   var_A0 = var_8C.Text
  loc_124BAE7:   var_D4 = CVar(var_A0) 'String
  loc_124BB2C:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_124BB35:     Me.MoveFirst
  loc_124BB5A:     Set var_88 = Me.Txt
  loc_124BB60:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_124BB68:     0 = var_8C.Text
  loc_124BB76:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_124BB8C:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_124BBA4:   End If
  loc_124BBA7: Else
  loc_124BBAF:   If (var_92 = CInt(1)) Then
  loc_124BBC9:     If (Me.RecordCount > 0) Then
  loc_124BBD8:       Set var_8C = Nothing
  loc_124BBF0:       Proc_6_137_1193554(Me.DGFacility, global_60)
  loc_124BBFE:     End If
  loc_124BC4C:     Set var_88 = Me.Txt
  loc_124BC52:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_124BC5A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_124BC72:     If (Index Or (var_A0 = vbNullString)) Then
  loc_124BC75:       Exit Sub
  loc_124BC76:     End If
  loc_124BC83:     Set var_88 = Me.Txt
  loc_124BC89:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_124BC91:     var_A0 = var_8C.Text
  loc_124BC99:     var_D4 = CVar(var_A0) 'String
  loc_124BCDE:     If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_124BCE7:       Me.MoveFirst
  loc_124BD0C:       Set var_88 = Me.Txt
  loc_124BD12:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_124BD1A:       0 = var_8C.Text
  loc_124BD28:       Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_124BD3E:       Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_124BD56:     End If
  loc_124BD59:   Else
  loc_124BD61:     If (var_92 = CInt(&HB)) Then
  loc_124BD7B:       If (Me.RecordCount > 0) Then
  loc_124BD8A:         Set var_8C = Nothing
  loc_124BDA2:         Proc_6_137_1193554(Me.DGLocation, global_64)
  loc_124BDB0:       End If
  loc_124BDFE:       Set var_88 = Me.Txt
  loc_124BE04:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_124BE0C:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_124BE24:       If (Index Or (var_A0 = vbNullString)) Then
  loc_124BE27:         Exit Sub
  loc_124BE28:       End If
  loc_124BE35:       Set var_88 = Me.Txt
  loc_124BE3B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_124BE43:       var_A0 = var_8C.Text
  loc_124BE4B:       var_D4 = CVar(var_A0) 'String
  loc_124BE90:       If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_124BE99:         Me.MoveFirst
  loc_124BEBE:         Set var_88 = Me.Txt
  loc_124BEC4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_124BECC:         0 = var_8C.Text
  loc_124BEDA:         Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_124BEF0:         Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_124BF08:       End If
  loc_124BF08:     End If
  loc_124BF08:   End If
  loc_124BF08: End If
  loc_124BF08: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10A2E78
  'Data Table: 5608C8
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  loc_10A2BD0: If (CLng(Shift) = &H1B) Then
  loc_10A2BD3:   Call Proc_350_46_EB90A0(Shift)
  loc_10A2BD8:   Call Proc_350_47_E4CFC4()
  loc_10A2BDD:   Exit Sub
  loc_10A2BDE: End If
  loc_10A2BE1: var_88 = KeyCode
  loc_10A2BEC: If (var_88 = CInt(0)) Then
  loc_10A2C07:   Set var_A0 = Nothing
  loc_10A2C12:   Set var_9C = Nothing
  loc_10A2C44:   Proc_6_69_134A198(Me.DGParty, Me.Txt, CInt(0), global_56, Shift, 0)
  loc_10A2C5B: Else
  loc_10A2C63:   If (var_88 = CInt(1)) Then
  loc_10A2C7E:     Set var_A0 = Nothing
  loc_10A2CBB:     Proc_6_69_134A198(Me.DGFacility, Me.Txt, CInt(1), global_60, Shift, 0, 1, Nothing)
  loc_10A2CD2:   Else
  loc_10A2CDA:     If (var_88 = CInt(&HB)) Then
  loc_10A2CF5:       Set var_A0 = Nothing
  loc_10A2D32:       Proc_6_69_134A198(Me.DGLocation, Me.Txt, CInt(&HB), global_64, Shift, 0, 1, Nothing)
  loc_10A2D49:     Else
  loc_10A2D51:       If Not (var_88 = CInt(2)) Then
  loc_10A2D5C:         If (var_88 = CInt(3)) Then
  loc_10A2D5F:         End If
  loc_10A2D5F:         Call Proc_350_56_103EEFC(var_A0, 0, var_A0, 0)
  loc_10A2D64:       End If
  loc_10A2D64:     End If
  loc_10A2D64:   End If
  loc_10A2D64: End If
  loc_10A2D95: Set var_9C = Me.DGParty
  loc_10A2DBA: If (((CBool(Me.DGLocation.Visible) = 0) And (CBool(Me.DGFacility.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_10A2DD2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10A2DDB:     Proc_6_75_E527CC(Shift, arg_14, 1)
  loc_10A2DE0:   End If
  loc_10A2DE4:   Set var_8C = Me.TopCtrl1
  loc_10A2DEA:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_10A2E03:   If (CStr(var_A0) = "Add") Then
  loc_10A2E1B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10A2E24:       Proc_6_76_E52838(Shift, arg_14)
  loc_10A2E29:     End If
  loc_10A2E2C:   Else
  loc_10A2E30:     Set var_8C = Me.TopCtrl1
  loc_10A2E36:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_10A2E4F:     If (CStr() = "Edit") Then
  loc_10A2E67:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10A2E70:         Proc_6_76_E52838(Shift)
  loc_10A2E75:       End If
  loc_10A2E75:     End If
  loc_10A2E75:   End If
  loc_10A2E75: End If
  loc_10A2E75: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FDE5D8
  'Data Table: 5608C8
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FDE3FC: On Error Goto loc_FDE5D2
  loc_FDE402: Proc_6_58_E054C0(arg_10)
  loc_FDE40A: var_86 = KeyAscii
  loc_FDE415: If (var_86 = CInt(0)) Then
  loc_FDE434:   If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_FDE446:     var_A0 = "Name"
  loc_FDE461:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10)
  loc_FDE470:   End If
  loc_FDE473: Else
  loc_FDE47B:   If (var_86 = CInt(1)) Then
  loc_FDE49A:     If (CBool(Me.DGFacility.Visible) = &HFF) Then
  loc_FDE4C7:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_60, arg_10, "Name")
  loc_FDE4D6:     End If
  loc_FDE4D9:   Else
  loc_FDE4E1:     If (var_86 = CInt(&HB)) Then
  loc_FDE500:       If (CBool(Me.DGLocation.Visible) = &HFF) Then
  loc_FDE507:         Set var_A8 = Me.Txt
  loc_FDE512:         var_A0 = "Name"
  loc_FDE52D:         Proc_6_89_146F1AC(var_A8, KeyAscii, global_64, arg_10, var_A0)
  loc_FDE53C:       End If
  loc_FDE53F:     Else
  loc_FDE547:       If (var_86 = CInt(2)) Then
  loc_FDE554:         Set var_8C = Me.Txt
  loc_FDE55A:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_FDE575:         Proc_6_42_129A86C(var_A8, arg_10, 8, 4)
  loc_FDE584:       Else
  loc_FDE58C:         If Not (var_86 = CInt(3)) Then
  loc_FDE597:           If (var_86 = CInt(4)) Then
  loc_FDE59A:           End If
  loc_FDE5A4:           Set var_8C = Me.Txt
  loc_FDE5AA:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_A0)
  loc_FDE5C5:           Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_FDE5D1:         End If
  loc_FDE5D1:       End If
  loc_FDE5D1:     End If
  loc_FDE5D1:   End If
  loc_FDE5D1: End If
  loc_FDE5D1: Exit Sub
  loc_FDE5D2: ' Referenced from: FDE3FC
  loc_FDE5D2: Proc_6_60_E62BC4(2, 0)
  loc_FDE5D7: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE25C
  'Data Table: 5608C8
  loc_DFE25A: Exit Sub
  loc_DFE25B: End Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E506FC
  'Data Table: 5608C8
  loc_E506DA: Set var_88 = Me.Txt
  loc_E506E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E506EE: Proc_6_73_E22704(var_8C)
  loc_E506FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '168BBA0
  'Data Table: 5608C8
  Dim var_92 As Integer
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_A0 As String
  Dim var_FC As Variant
  Dim var_F8 As TextBox
  Dim arg_10 As Integer
  Dim var_F4 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_100 As String
  Dim var_144 As String
  Dim unk_5608CF As Connection15
  Dim var_120 As String
  Dim var_F0 As Variant
  Dim var_228 As Variant
  loc_168A3A4: On Error Goto loc_168BB9A
  loc_168A3AA: var_92 = Cancel
  loc_168A3B5: If (var_92 = CInt(6)) Then
  loc_168A3C6:   Set var_98 = Me.Txt
  loc_168A3CC:   Call 0.Method_Txt_Validate0 (CInt(6), var_9C)
  loc_168A3EA:   var_D0 = Len(Trim(CVar(var_9C.Text)))
  loc_168A404:   If (var_D0 = 0) Then
  loc_168A41A:     Set var_98 = Me.Txt
  loc_168A420:     Call 0.Method_Txt_Validate0 (CInt(6), var_9C)
  loc_168A428:     var_9C.Text = CStr(MemVar_1F920EC)
  loc_168A43A:   Else
  loc_168A444:     Set var_98 = Me.Txt
  loc_168A44A:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A46A:     Set var_F8 = Me.Txt
  loc_168A470:     Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_168A478:     var_FC.Text = Proc_6_33_1512840(var_9C)
  loc_168A48B:   End If
  loc_168A498:   Set var_98 = Me.Txt
  loc_168A49E:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A4C1:   Set var_F4 = Me.Txt
  loc_168A4C7:   Call 0.Method_Txt_Validate0 (Cancel, var_F8, var_100)
  loc_168A4CF:   (CDate(var_9C.Text) >= MemVar_1F920F4) = var_F8.Text
  loc_168A4F1:   If Not((var_92 And (CDate(var_100) <= MemVar_1F920FC))) Then
  loc_168A515:     MsgBox("GIN Date Not Between Current Fin. Year", 0, "Date Validate", var_D0, var_F0)
  loc_168A52F:     Set var_98 = Me.Txt
  loc_168A535:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_168A53D:     var_9C.SetFocus
  loc_168A54B:     arg_10 = &HFF
  loc_168A54E:     Exit Sub
  loc_168A54F:   End If
  loc_168A553:   Set var_98 = Me.TopCtrl1
  loc_168A559:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_168A561:   var_A0 = CStr(var_9C)
  loc_168A577:   Set var_9C = Me.Txt
  loc_168A57D:   Call 0.Method_Txt_Validate0 (CInt(9), var_F4)
  loc_168A5A6:   If ((var_A0 = "Add") And (var_F4.Text = vbNullString)) Then
  loc_168A5AF:     Call Proc_350_51_10EB1C8(MemVar_1F92044)
  loc_168A5C2:     Set var_98 = Me.Txt
  loc_168A5C8:     Call 0.Method_Txt_Validate0 (CInt(5), var_9C)
  loc_168A5D0:     var_9C.Text = var_A0
  loc_168A5DF:   End If
  loc_168A5E9:   Set var_98 = Me.Txt
  loc_168A5EF:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A61C:   Set var_F4 = Me.Txt
  loc_168A622:   Call 0.Method_Txt_Validate0 (CInt(7), var_F8)
  loc_168A62A:   var_F8.Text = CStr(DateAdd("D", CDbl(7), CVar(var_9C)))
  loc_168A645: Else
  loc_168A64D:   If (var_92 = CInt(7)) Then
  loc_168A65A:     Set var_98 = Me.Txt
  loc_168A660:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A680:     Set var_F8 = Me.Txt
  loc_168A686:     Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_168A68E:     var_FC.Text = Proc_6_33_1512840(var_9C)
  loc_168A6AB:     Set var_98 = Me.Txt
  loc_168A6B1:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A6DA:     If (Proc_6_27_EA565C(var_9C, "Due Date") = 0) Then
  loc_168A6E7:       Set var_98 = Me.Txt
  loc_168A6ED:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A6F5:       var_9C.SetFocus
  loc_168A703:       arg_10 = &HFF
  loc_168A706:       Exit Sub
  loc_168A707:     End If
  loc_168A70A:   Else
  loc_168A712:     If (var_92 = CInt(&HE)) Then
  loc_168A71F:       Set var_98 = Me.Txt
  loc_168A725:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A745:       Set var_F8 = Me.Txt
  loc_168A74B:       Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_168A753:       var_FC.Text = Proc_6_33_1512840(var_9C, arg_10)
  loc_168A770:       Set var_98 = Me.Txt
  loc_168A776:       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A79F:       If (Proc_6_27_EA565C(var_9C, "For Period") = 0) Then
  loc_168A7AC:         Set var_98 = Me.Txt
  loc_168A7B2:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A7BA:         var_9C.SetFocus
  loc_168A7C8:         arg_10 = &HFF
  loc_168A7CB:         Exit Sub
  loc_168A7CC:       End If
  loc_168A7CF:     Else
  loc_168A7D7:       If (var_92 = CInt(&HC)) Then
  loc_168A7E4:         Set var_98 = Me.Txt
  loc_168A7EA:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A80A:         Set var_F8 = Me.Txt
  loc_168A810:         Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_168A818:         var_FC.Text = Proc_6_33_1512840(var_9C, arg_10)
  loc_168A835:         Set var_98 = Me.Txt
  loc_168A83B:         Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A843:         var_A0 = "For Period"
  loc_168A864:         If (Proc_6_27_EA565C(var_9C, var_A0) = 0) Then
  loc_168A871:           Set var_98 = Me.Txt
  loc_168A877:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A87F:           var_9C.SetFocus
  loc_168A88D:           arg_10 = &HFF
  loc_168A890:           Exit Sub
  loc_168A891:         End If
  loc_168A89F:         Set var_98 = Me.Txt
  loc_168A8A5:         Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_168A8AD:         arg_10 = var_9C.Tag
  loc_168A8C0:         Set var_F4 = Me.Txt
  loc_168A8C6:         Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168A8CE:         var_100 = var_F8.Tag
  loc_168A8E1:         Call Proc_350_55_119AE24(var_A0, var_100)
  loc_168A8F8:         Call Proc_350_54_11620E0(var_A0)
  loc_168A900:       Else
  loc_168A908:         If (var_92 = CInt(&HF)) Then
  loc_168A915:           Set var_98 = Me.Txt
  loc_168A91B:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_168A93B:           Set var_F8 = Me.Txt
  loc_168A941:           Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_168A949:           var_FC.Text = Proc_6_33_1512840(var_9C)
  loc_168A966:           Set var_98 = Me.Txt
  loc_168A96C:           Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A995:           If (Proc_6_27_EA565C(var_9C, "To Period") = 0) Then
  loc_168A9A2:             Set var_98 = Me.Txt
  loc_168A9A8:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168A9B0:             var_9C.SetFocus
  loc_168A9BE:             arg_10 = &HFF
  loc_168A9C1:             Exit Sub
  loc_168A9C2:           End If
  loc_168A9CD:           Set var_98 = Me.Txt
  loc_168A9D3:           Call 0.Method_Txt_Validate0 (CInt(&HE), var_9C)
  loc_168A9E2:           Set var_F4 = Me.Txt
  loc_168A9E8:           Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168AA0B:           var_D0 = DateDiff("D", CVar(var_9C), CVar(var_F8), 1, 1)
  loc_168AA2B:           If (var_D0 < 0) Then
  loc_168AA34:             Call 0.Method_arg_50 (var_100, arg_10)
  loc_168AA5B:             MsgBox(CVar("InValid Period !" & vbCrLf & "Period should not be less than 1 Day"), &H40, CVar(var_100), var_D0, var_F0)
  loc_168AA70:             arg_10 = &HFF
  loc_168AA73:             Exit Sub
  loc_168AA74:           End If
  loc_168AA77:         Else
  loc_168AA7F:           If (var_92 = CInt(&HD)) Then
  loc_168AA8C:             Set var_98 = Me.Txt
  loc_168AA92:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168AAB2:             Set var_F8 = Me.Txt
  loc_168AAB8:             Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_168AAC0:             var_FC.Text = Proc_6_33_1512840(var_9C, arg_10)
  loc_168AADD:             Set var_98 = Me.Txt
  loc_168AAE3:             Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168AAEB:             var_A0 = "To Period"
  loc_168AB0C:             If (Proc_6_27_EA565C(var_9C, var_A0) = 0) Then
  loc_168AB19:               Set var_98 = Me.Txt
  loc_168AB1F:               Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168AB27:               var_9C.SetFocus
  loc_168AB35:               arg_10 = &HFF
  loc_168AB38:               Exit Sub
  loc_168AB39:             End If
  loc_168AB47:             Set var_98 = Me.Txt
  loc_168AB4D:             Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_168AB55:             arg_10 = var_9C.Tag
  loc_168AB68:             Set var_F4 = Me.Txt
  loc_168AB6E:             Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168AB89:             Call Proc_350_55_119AE24(var_A0, var_F8.Tag)
  loc_168ABA0:             Call Proc_350_54_11620E0(var_9C)
  loc_168ABA8:           Else
  loc_168ABB0:             If (var_92 = CInt(0)) Then
  loc_168ABBE:               Set var_98 = Me.Txt
  loc_168ABC4:               Call 0.Method_Txt_Validate0 (CInt(0))
  loc_168ABCC:               var_A0 = "Party Name"
  loc_168ABED:               If (Proc_6_27_EA565C(var_9C, var_A0) = 0) Then
  loc_168ABFB:                 Set var_98 = Me.Txt
  loc_168AC01:                 Call 0.Method_Txt_Validate0 (CInt(0), var_9C)
  loc_168AC09:                 var_9C.SetFocus
  loc_168AC17:                 arg_10 = &HFF
  loc_168AC1A:                 Exit Sub
  loc_168AC1B:               End If
  loc_168AC69:               Set var_98 = Me.Txt
  loc_168AC6F:               Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_168AC77:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_168AC8F:               If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_168AC9F:                 Set var_98 = Me.Txt
  loc_168ACA5:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168ACAD:                 var_9C.Text = vbNullString
  loc_168ACC6:                 Set var_98 = Me.Txt
  loc_168ACCC:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168ACD4:                 var_9C.Tag = vbNullString
  loc_168ACE3:               Else
  loc_168AD1E:                 Set var_F4 = Me.Txt
  loc_168AD24:                 Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168AD2C:                 var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_168AD5F:                 var_9C = Me.Fields.Item("Code")
  loc_168AD70:                 var_A0 = CStr(var_9C.Value)
  loc_168AD7D:                 Set var_F4 = Me.Txt
  loc_168AD83:                 Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168AD8B:                 var_F8.Tag = var_A0
  loc_168ADA1:               End If
  loc_168ADBE:               Set var_98 = Me.Txt
  loc_168ADC4:               Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0, "Select Code,Name,TStartDate,TEndDate,TTerm From locationMast Where code In (Select LcCode From PartyLocation Where PrCode='")
  loc_168ADCC:               var_B0 = var_9C.Tag
  loc_168ADD5:               var_100 = -1 & var_A0
  loc_168ADEA:               var_144 = var_F8.Tag & "' And ActiveYN='Y') And (locationMast.LOGSITE_CODE='" & MemVar_1F92078 & "' or locationMast.LOGSITE_CODE='HO')  Order by Name"
  loc_168ADF3:               unk_5608CF.Execute var_144, var_F4, var_9C
  loc_168AE04:               Set global_64 = var_F4
  loc_168AE2C:               CVarUnk
  loc_168AE31:               VerifyVarObj
  loc_168AE37:               Set var_98 = Me.DGLocation
  loc_168AE3D:               LateIdStAd
  loc_168AE62:               If (Me.RecordCount > 0) Then
  loc_168AE7A:                 var_98 = Me.Fields
  loc_168AEA1:                 Set var_F4 = Me.Txt
  loc_168AEA7:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8, CStr(var_98.Item("Name").Value))
  loc_168AEAF:                 var_F8.Text = var_98
  loc_168AF01:                 Set var_F4 = Me.Txt
  loc_168AF07:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168AF0F:                 var_F8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_168AF3F:                 var_9C = Me.Fields.Item("TStartDate")
  loc_168AF5E:                 var_F8 = Me.Fields.Item("TEndDate")
  loc_168AF63:                 var_120 = "Terms && Conditions :- {From - "
  loc_168AF87:                 var_D0 = Format(CVar(var_9C), "dd/MMM/yyyy")
  loc_168AF8F:                 var_F0 = 1 & var_D0 
  loc_168B004:                 var_228 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TTerm")), 1 & Format(CVar(var_F8), "dd/MMM/yyyy") & "}" & vbCrLf, 1, var_F0 & " To ")) 'String
  loc_168B00B:                 var_A0 = CStr(1 & var_228)
  loc_168B019:                 Me.LblTerm.Caption = var_A0
  loc_168B04E:               Else
  loc_168B05C:                 Set var_98 = Me.Txt
  loc_168B062:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_9C, vbNullString)
  loc_168B06A:                 var_9C.Text = var_120
  loc_168B084:                 Set var_98 = Me.Txt
  loc_168B08A:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_9C)
  loc_168B092:                 var_9C.Tag = vbNullString
  loc_168B0AB:                 Me.LblTerm.Caption = vbNullString
  loc_168B0B9:                 Call 0.Method_arg_50 (var_A0)
  loc_168B0C7:                 var_C0 = CVar(var_A0) 'String
  loc_168B0DA:                 MsgBox("Any Location is not allotted to the party", &H10, var_C0, var_D0, var_F0)
  loc_168B0EC:                 arg_10 = &HFF
  loc_168B0EF:                 Exit Sub
  loc_168B0F0:               End If
  loc_168B0F3:             Else
  loc_168B0FB:               If (var_92 = CInt(1)) Then
  loc_168B119:                 If (Me.frFacility.Visible = 0) Then
  loc_168B11C:                   Exit Sub
  loc_168B11D:                 End If
  loc_168B128:                 Set var_98 = Me.Txt
  loc_168B12E:                 Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168B136:                 var_A0 = "Facility Name"
  loc_168B157:                 If (Proc_6_27_EA565C(var_9C, var_A0) = 0) Then
  loc_168B165:                   Set var_98 = Me.Txt
  loc_168B16B:                   Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168B173:                   var_9C.SetFocus
  loc_168B181:                   arg_10 = &HFF
  loc_168B184:                   Exit Sub
  loc_168B185:                 End If
  loc_168B1B9:                 var_140 = Me.BOF
  loc_168B1D3:                 Set var_98 = Me.Txt
  loc_168B1D9:                 Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (var_140 = &HFF))))
  loc_168B1F9:                 If (var_9C.Text Or (var_A0 = vbNullString)) Then
  loc_168B209:                   Set var_98 = Me.Txt
  loc_168B20F:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168B217:                   var_9C.Text = vbNullString
  loc_168B230:                   Set var_98 = Me.Txt
  loc_168B236:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168B23E:                   var_9C.Tag = vbNullString
  loc_168B24D:                 Else
  loc_168B288:                   Set var_F4 = Me.Txt
  loc_168B28E:                   Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168B296:                   var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_168B2E7:                   Set var_F4 = Me.Txt
  loc_168B2ED:                   Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168B2F5:                   var_F8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_168B328:                   var_9C = Me.Fields.Item("TaxStru")
  loc_168B347:                   Set var_F4 = Me.Txt
  loc_168B34D:                   Call 0.Method_Txt_Validate0 (CInt(&H10), var_F8)
  loc_168B355:                   var_F8.Tag = CStr(var_9C.Value)
  loc_168B378:                   Set var_98 = Me.Txt
  loc_168B37E:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168B386:                   var_A0 = var_9C.Tag
  loc_168B399:                   Set var_F4 = Me.Txt
  loc_168B39F:                   Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168B3D6:                   Call Proc_350_58_F20E60(var_A0 & var_F8.Tag, CInt(CLng(Me.FGrid.Row)), var_140)
  loc_168B3FA:                   If (var_140 = &HFF) Then
  loc_168B416:                     MsgBox("Duplicate Entry", 0, var_C0, var_D0, var_F0)
  loc_168B428:                     arg_10 = &HFF
  loc_168B42B:                     Exit Sub
  loc_168B42C:                   End If
  loc_168B43A:                   Set var_98 = Me.Txt
  loc_168B440:                   Call 0.Method_Txt_Validate0 (CInt(&HB), var_9C, var_A0)
  loc_168B448:                   arg_10 = var_9C.Tag
  loc_168B45F:                   If (var_A0 <> vbNullString) Then
  loc_168B470:                     Set var_98 = Me.Txt
  loc_168B476:                     Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_168B47E:                     var_B0 = var_9C.Tag
  loc_168B491:                     Set var_F4 = Me.Txt
  loc_168B497:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168B4B2:                     Call Proc_350_53_1248C64(var_A0, var_F8.Tag)
  loc_168B4D7:                     Set var_98 = Me.Txt
  loc_168B4DD:                     Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168B4F8:                     Set var_F4 = Me.Txt
  loc_168B4FE:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168B506:                     var_100 = var_F8.Tag
  loc_168B519:                     Call Proc_350_55_119AE24(var_9C.Tag, var_100)
  loc_168B530:                   End If
  loc_168B530:                 End If
  loc_168B533:               Else
  loc_168B53B:                 If (var_92 = CInt(&HB)) Then
  loc_168B54B:                   Set var_98 = Me.Txt
  loc_168B551:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168B559:                   var_A0 = var_9C.Tag
  loc_168B573:                   Set var_F4 = Me.Txt
  loc_168B579:                   Call 0.Method_Txt_Validate0 (Cancel, var_F8, var_100)
  loc_168B581:                   (var_A0 = vbNullString) = var_F8.Text
  loc_168B5A1:                   If (global_64 Or (var_100 = vbNullString)) Then
  loc_168B5BD:                     MsgBox("Location Name is a required field.", &H10, var_C0, var_D0, var_F0)
  loc_168B5D7:                     Set var_98 = Me.Txt
  loc_168B5DD:                     Call 0.Method_Txt_Validate0 (Cancel)
  loc_168B5E5:                     var_9C.SetFocus
  loc_168B5F3:                     arg_10 = &HFF
  loc_168B5F6:                     Exit Sub
  loc_168B5F7:                   End If
  loc_168B62B:                   var_140 = Me.BOF
  loc_168B645:                   Set var_98 = Me.Txt
  loc_168B64B:                   Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_168B653:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (var_140 = &HFF))) = var_9C.Text
  loc_168B66B:                   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_168B67B:                     Set var_98 = Me.Txt
  loc_168B681:                     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168B689:                     var_9C.Text = vbNullString
  loc_168B6A2:                     Set var_98 = Me.Txt
  loc_168B6A8:                     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168B6B0:                     var_9C.Tag = vbNullString
  loc_168B6C9:                     Me.LblTerm.Caption = vbNullString
  loc_168B6D4:                   Else
  loc_168B70F:                     Set var_F4 = Me.Txt
  loc_168B715:                     Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168B71D:                     var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_168B750:                     var_9C = Me.Fields.Item("Code")
  loc_168B76E:                     Set var_F4 = Me.Txt
  loc_168B774:                     Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_168B77C:                     var_F8.Tag = CStr(var_9C.Value)
  loc_168B7A0:                     Set var_98 = Me.Txt
  loc_168B7A6:                     Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168B7AE:                     var_A0 = var_9C.Tag
  loc_168B7C1:                     Set var_F4 = Me.Txt
  loc_168B7C7:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168B7FE:                     Call Proc_350_58_F20E60(var_A0 & var_F8.Tag, CInt(CLng(Me.FGrid.Row)), var_140)
  loc_168B822:                     If (var_140 = &HFF) Then
  loc_168B83E:                       MsgBox("Duplicate Entry", 0, var_C0, var_D0, var_F0)
  loc_168B850:                       arg_10 = &HFF
  loc_168B853:                       Exit Sub
  loc_168B854:                     End If
  loc_168B862:                     Set var_98 = Me.Txt
  loc_168B868:                     Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_168B870:                     arg_10 = var_9C.Tag
  loc_168B887:                     If (var_A0 <> vbNullString) Then
  loc_168B898:                       Set var_98 = Me.Txt
  loc_168B89E:                       Call 0.Method_Txt_Validate0 (CInt(1), var_9C, var_A0)
  loc_168B8A6:                       var_B0 = var_9C.Tag
  loc_168B8B9:                       Set var_F4 = Me.Txt
  loc_168B8BF:                       Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168B8DA:                       Call Proc_350_53_1248C64(var_A0, var_F8.Tag)
  loc_168B8FF:                       Set var_98 = Me.Txt
  loc_168B905:                       Call 0.Method_Txt_Validate0 (CInt(1), var_9C)
  loc_168B920:                       Set var_F4 = Me.Txt
  loc_168B926:                       Call 0.Method_Txt_Validate0 (CInt(&HB), var_F8)
  loc_168B941:                       Call Proc_350_55_119AE24(var_9C.Tag, var_F8.Tag)
  loc_168B958:                     End If
  loc_168B972:                     var_9C = Me.Fields.Item("TStartDate")
  loc_168B991:                     var_F8 = Me.Fields.Item("TEndDate")
  loc_168B996:                     var_120 = "Terms && Conditions :- {From - "
  loc_168BA37:                     var_228 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TTerm")), 1 & Format(CVar(var_F8), "dd/MMM/yyyy") & "}" & vbCrLf, 1, 1 & Format(CVar(var_9C), "dd/MMM/yyyy") & " To ")) 'String
  loc_168BA4C:                     Me.LblTerm.Caption = CStr(1 & var_228)
  loc_168BA7E:                   End If
  loc_168BA81:                 Else
  loc_168BA89:                   If (var_92 = CInt(2)) Then
  loc_168BA96:                     Set var_98 = Me.Txt
  loc_168BA9C:                     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168BAD6:                     Set var_F4 = Me.Txt
  loc_168BADC:                     Call 0.Method_Txt_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_9C), "0.0000")), 1)
  loc_168BAE4:                     var_F8.Text = 1
  loc_168BB01:                   Else
  loc_168BB09:                     If Not (var_92 = CInt(3)) Then
  loc_168BB14:                       If (var_92 = CInt(4)) Then
  loc_168BB17:                       End If
  loc_168BB21:                       Set var_98 = Me.Txt
  loc_168BB27:                       Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_168BB61:                       Set var_F4 = Me.Txt
  loc_168BB67:                       Call 0.Method_Txt_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_9C), "0.00")), 1)
  loc_168BB6F:                       var_F8.Text = 1
  loc_168BB89:                     End If
  loc_168BB89:                   End If
  loc_168BB89:                 End If
  loc_168BB89:               End If
  loc_168BB89:             End If
  loc_168BB89:           End If
  loc_168BB89:         End If
  loc_168BB89:       End If
  loc_168BB89:     End If
  loc_168BB89:   End If
  loc_168BB89: End If
  loc_168BB8E: Set var_88 = Nothing
  loc_168BB96: Set var_90 = Nothing
  loc_168BB99: Exit Sub
  loc_168BB9A: ' Referenced from: 168A3A4
  loc_168BB9A: Proc_6_60_E62BC4(var_120)
  loc_168BB9F: Exit Sub
End Sub

Private Sub CmdEdit_Click() '12FED50
  'Data Table: 5608C8
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_120 As TextBox
  Dim var_104 As Variant
  loc_12FE65C: Set var_88 = Me.TopCtrl1
  loc_12FE662: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12FE67B: If (CStr() = "Browse") Then
  loc_12FE67E:   Exit Sub
  loc_12FE67F: End If
  loc_12FE692: var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FE69A: var_D0 = CVar(CLng(5)) 'Long
  loc_12FE6A9: var_F4 = Me.FGrid.TextMatrix)
  loc_12FE6CD: If (CStr(var_F4) = vbNullString) Then
  loc_12FE6E9:   MsgBox("Select Facility From Grid To Edit", &H40, var_F4, var_104, var_114)
  loc_12FE6F9:   Exit Sub
  loc_12FE6FA: End If
  loc_12FE715: If (Me.frFacility.Visible = 0) Then
  loc_12FE75B:   Set var_11C = Me.Txt
  loc_12FE761:   Call 0.Method_CmdEdit_Click0 (CInt(&HB), var_120, CStr(Me.FGrid.TextMatrix)), CVar(CLng(&H14)))
  loc_12FE769:   var_120.Text = CVar(CLng(Me.FGrid.Row))
  loc_12FE7C6:   Set var_11C = Me.Txt
  loc_12FE7CC:   Call 0.Method_CmdEdit_Click0 (CInt(&HB), var_120, CStr(Me.FGrid.TextMatrix)), CVar(CLng(&H15)))
  loc_12FE7D4:   var_120.Tag = CVar(CLng(Me.FGrid.Row))
  loc_12FE831:   Set var_11C = Me.Txt
  loc_12FE837:   Call 0.Method_CmdEdit_Click0 (CInt(1), var_120, CStr(Me.FGrid.TextMatrix)), CVar(CLng(1)))
  loc_12FE83F:   var_120.Text = CVar(CLng(Me.FGrid.Row))
  loc_12FE87D:   Set var_E4 = Me.FGrid
  loc_12FE88E:   var_9C = CStr(var_E4.TextMatrix))
  loc_12FE89C:   Set var_11C = Me.Txt
  loc_12FE8A2:   Call 0.Method_CmdEdit_Click0 (CInt(1), var_120, var_9C, CVar(CLng(8)))
  loc_12FE8D2:   Set var_88 = Me.Txt
  loc_12FE8D8:   Call 0.Method_CmdEdit_Click0 (CInt(1), var_E4, var_9C)
  loc_12FE8E0:   var_D0 = var_E4.Tag
  loc_12FE8F3:   Set var_11C = Me.Txt
  loc_12FE8F9:   Call 0.Method_CmdEdit_Click0 (CInt(&HB), var_120)
  loc_12FE914:   Call Proc_350_53_1248C64(var_9C, CVar(CLng(Me.FGrid.Row)))
  loc_12FE938:   Set var_88 = Me.Txt
  loc_12FE93E:   Call 0.Method_CmdEdit_Click0 (CInt(1), var_E4)
  loc_12FE946:   var_E4.Enabled = False
  loc_12FE965:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FE96D:   var_D0 = CVar(CLng(2)) 'Long
  loc_12FE97C:   var_F4 = Me.FGrid.TextMatrix)
  loc_12FE9BE:   Set var_11C = Me.Txt
  loc_12FE9C4:   Call 0.Method_CmdEdit_Click0 (CInt(2), var_120, CStr(Format(CVar(CStr(var_F4)), "0.0000")), 1, 1)
  loc_12FE9CC:   var_120.Text = var_F4
  loc_12FE9FF:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FEA16:   var_F4 = Me.FGrid.TextMatrix)
  loc_12FEA58:   Set var_11C = Me.Txt
  loc_12FEA5E:   Call 0.Method_CmdEdit_Click0 (CInt(3), var_120, CStr(Format(CVar(CStr(var_F4)), "0.00")), 1, 1, var_F4)
  loc_12FEA66:   var_120.Text = CVar(CLng(3))
  loc_12FEA99:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FEAB0:   var_F4 = Me.FGrid.TextMatrix)
  loc_12FEAF2:   Set var_11C = Me.Txt
  loc_12FEAF8:   Call 0.Method_CmdEdit_Click0 (CInt(4), var_120, CStr(Format(CVar(CStr(var_F4)), "0.00")), 1, 1, var_F4)
  loc_12FEB00:   var_120.Text = CVar(CLng(4))
  loc_12FEB33:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FEB3B:   var_D0 = CVar(CLng(&HB)) 'Long
  loc_12FEB6B:   Set var_11C = Me.Txt
  loc_12FEB71:   Call 0.Method_CmdEdit_Click0 (CInt(&HA), var_120, Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), var_D0, var_B0, var_B0), var_B0)
  loc_12FEB79:   var_120.Text = var_D0
  loc_12FEBA8:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FEBE0:   Set var_11C = Me.Txt
  loc_12FEBE6:   Call 0.Method_CmdEdit_Click0 (CInt(&HC), var_120, Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), var_B0))
  loc_12FEBEE:   var_120.Text = var_B0
  loc_12FEC55:   Set var_11C = Me.Txt
  loc_12FEC5B:   Call 0.Method_CmdEdit_Click0 (CInt(&HD), var_120, Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD))))
  loc_12FEC63:   var_120.Text = CVar(CLng(Me.FGrid.Row))
  loc_12FECCA:   Set var_11C = Me.Txt
  loc_12FECD0:   Call 0.Method_CmdEdit_Click0 (CInt(&H10), var_120, Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA))))
  loc_12FECD8:   var_120.Tag = CVar(CLng(Me.FGrid.Row))
  loc_12FED00:   Me.frFacility.Visible = True
  loc_12FED2A:   Me.frFacility.Tag = CStr(CLng(Me.FGrid.Row))
  loc_12FED43:   global_88 = CByte(2)
  loc_12FED47: End If
  loc_12FED4C: Set var_A0 = Nothing
  loc_12FED4F: Exit Sub
End Sub

Private Sub CmdOK_Click() '14E86BC
  'Data Table: 5608C8
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim var_BC As Variant
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_EC As Variant
  Dim var_120 As MSHFlexGrid
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_CC As Variant
  Dim var_10C As Variant
  loc_14E78B0: Set var_88 = Me.TopCtrl1
  loc_14E78B6: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14E78CF: If (CStr() = "Browse") Then
  loc_14E78D2:   Exit Sub
  loc_14E78D3: End If
  loc_14E78DE: Set var_88 = Me.Txt
  loc_14E78E4: Call 0.Method_CmdOK_Click0 (CInt(1))
  loc_14E790D: If (Proc_6_27_EA565C(var_A4, "Facility Name") = 0) Then
  loc_14E7917:   Call Txt_GotFocus(CInt(1))
  loc_14E791C:   Exit Sub
  loc_14E791D: End If
  loc_14E7928: Set var_88 = Me.Txt
  loc_14E792E: Call 0.Method_CmdOK_Click0 (CInt(2), var_A4)
  loc_14E7957: If (Proc_6_27_EA565C(var_A4, "Unit") = 0) Then
  loc_14E7961:   Call Txt_GotFocus(CInt(2))
  loc_14E7966:   Exit Sub
  loc_14E7967: End If
  loc_14E7972: Set var_88 = Me.Txt
  loc_14E7978: Call 0.Method_CmdOK_Click0 (CInt(3), var_A4)
  loc_14E79A1: If (Proc_6_27_EA565C(var_A4, "Unit Rate") = 0) Then
  loc_14E79AB:   Call Txt_GotFocus(CInt(3))
  loc_14E79B0:   Exit Sub
  loc_14E79B1: End If
  loc_14E79BF: Set var_88 = Me.Txt
  loc_14E79C5: Call 0.Method_CmdOK_Click0 (CInt(4), var_A4)
  loc_14E79E9: If (CDbl(Val(var_A4.Text)) = CDbl(0)) Then
  loc_14E7A05:   MsgBox("Amount Should not be Zero.", &H40, var_DC, var_FC, var_11C)
  loc_14E7A1C:   Call Txt_GotFocus(CInt(4))
  loc_14E7A21:   Exit Sub
  loc_14E7A22: End If
  loc_14E7A2D: Set var_88 = Me.Txt
  loc_14E7A33: Call 0.Method_CmdOK_Click0 (CInt(&HC), var_A4)
  loc_14E7A5C: If (Proc_6_27_EA565C(var_A4, "For Period") = 0) Then
  loc_14E7A66:   Call Txt_GotFocus(CInt(&HC))
  loc_14E7A6B:   Exit Sub
  loc_14E7A6C: End If
  loc_14E7A77: Set var_88 = Me.Txt
  loc_14E7A7D: Call 0.Method_CmdOK_Click0 (CInt(&HD), var_A4)
  loc_14E7A85: var_9C = "To Period"
  loc_14E7AA6: If (Proc_6_27_EA565C(var_A4, var_9C) = 0) Then
  loc_14E7AB0:   Call Txt_GotFocus(CInt(&HD))
  loc_14E7AB5:   Exit Sub
  loc_14E7AB6: End If
  loc_14E7AC2: If (CInt(global_88) = 1) Then
  loc_14E7AC9:   Set var_120 = Me.FGrid
  loc_14E7AF1:   For var_124 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_124 'Integer
  loc_14E7AFB:     var_BC = CVar(CLng(var_9E)) 'Long
  loc_14E7B03:     var_EC = CVar(CLng(8)) 'Long
  loc_14E7B27:     Set var_88 = Me.Txt
  loc_14E7B2D:     Call 0.Method_CmdOK_Click0 (CInt(1), var_A4, var_9C, CStr(var_120.TextMatrix)))
  loc_14E7B35:     var_EC = var_A4.Tag
  loc_14E7B43:     var_138 = CVar(CLng(var_9E)) 'Long
  loc_14E7B7E:     If (CVar(CLng(8)) And (CStr(Txt.DispID_41) <> vbNullString)) Then
  loc_14E7B81:       GoTo loc_14E7B8C
  loc_14E7B84:     End If
  loc_14E7B87:   Next var_124 'Integer
  loc_14E7B8C:   ' Referenced from: 14E7B81
  loc_14E7BAA:   If (CLng(var_9E) = CLng(Me.FGrid.Rows)) Then
  loc_14E7BBE:     var_98 = Me.FGrid.Rows
  loc_14E7BDF:     Call Proc_350_52_11263B8(MemVar_1F92044, Me.FGrid)
  loc_14E7BF3:   Else
  loc_14E7C0C:     var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E7C14:     var_158 = CVar(CLng(5)) 'Long
  loc_14E7C19:     var_BC = 1
  loc_14E7C25:     var_EC = CVar(CLng(5)) 'Long
  loc_14E7C38:     var_FC = CVar(CStr(var_120.TextMatrix))) 'String
  loc_14E7C3F:     LateIdCallSt
  loc_14E7C6C:     var_138 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E7C74:     var_158 = CVar(CLng(6)) 'Long
  loc_14E7C7D:     var_BC = CVar(CLng(var_9E)) 'Long
  loc_14E7C85:     var_EC = CVar(CLng(6)) 'Long
  loc_14E7C98:     var_FC = CVar(CStr(var_120.TextMatrix))) 'String
  loc_14E7C9F:     LateIdCallSt
  loc_14E7CB3:   End If
  loc_14E7CB7:   Set var_A4 = Me.FGrid
  loc_14E7CCC:   var_138 = CVar((CLng(var_A4.Rows) - 1)) 'Long
  loc_14E7CD4:   var_158 = CVar(CLng(0)) 'Long
  loc_14E7CF2:   var_BC = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_14E7CFA:   var_EC = CVar(CLng(0)) 'Long
  loc_14E7D0D:   var_9C = CStr(var_120.TextMatrix))
  loc_14E7D1B:   var_11C = CVar(CStr((Val(var_9C) + CDbl(1)))) 'String
  loc_14E7D22:   LateIdCallSt
  loc_14E7D58:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E7D73:   Set var_88 = Me.Txt
  loc_14E7D79:   Call 0.Method_CmdOK_Click0 (CInt(1), var_A4, var_9C, CVar(CLng(1)), var_BC, var_120, var_11C)
  loc_14E7D81:   var_EC = var_A4.Text
  loc_14E7D90:   LateIdCallSt
  loc_14E7DB3:   Set var_88 = Me.Txt
  loc_14E7DB9:   Call 0.Method_CmdOK_Click0 (CInt(2), var_A4, var_120, CVar(var_9C), var_BC)
  loc_14E7DD7:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E7E13:   LateIdCallSt
  loc_14E7E3A:   Set var_88 = Me.Txt
  loc_14E7E40:   Call 0.Method_CmdOK_Click0 (CInt(3), var_A4, var_120, CVar(CStr(Format(CVar(var_A4), "0.0000"))), 1, 1, CVar(CLng(2)))
  loc_14E7E5E:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E7E9A:   LateIdCallSt
  loc_14E7EC1:   Set var_88 = Me.Txt
  loc_14E7EC7:   Call 0.Method_CmdOK_Click0 (CInt(4), var_A4, var_120, CVar(CStr(Format(CVar(var_A4), "0.00"))), 1, 1, CVar(CLng(3)))
  loc_14E7EE5:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E7EED:   var_10C = CVar(CLng(4)) 'Long
  loc_14E7F21:   LateIdCallSt
  loc_14E7F56:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E7F71:   Set var_88 = Me.Txt
  loc_14E7F77:   Call 0.Method_CmdOK_Click0 (CInt(1), var_A4, var_9C, CVar(CLng(8)), "0.00", var_120, CVar(CStr(Format(CVar(var_A4), "0.00"))))
  loc_14E7F7F:   1 = var_A4.Tag
  loc_14E7F8E:   LateIdCallSt
  loc_14E7FBF:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E7FDA:   Set var_88 = Me.Txt
  loc_14E7FE0:   Call 0.Method_CmdOK_Click0 (CInt(&H10), var_A4, var_9C, CVar(CLng(&HA)), "0.00", var_120, CVar(var_9C))
  loc_14E7FE8:   1 = var_A4.Tag
  loc_14E7FF0:   var_DC = CVar(var_9C) 'String
  loc_14E7FF7:   LateIdCallSt
  loc_14E8028:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8030:   var_EC = CVar(CLng(9)) 'Long
  loc_14E803E:   LateIdCallSt
  loc_14E8065:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8080:   Set var_88 = Me.Txt
  loc_14E8086:   Call 0.Method_CmdOK_Click0 (CInt(&HA), var_A4, var_9C, CVar(CLng(&HB)), "0.00", var_120, "Facility")
  loc_14E808E:   var_EC = var_A4.Text
  loc_14E809D:   LateIdCallSt
  loc_14E80CE:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E80E9:   Set var_88 = Me.Txt
  loc_14E80EF:   Call 0.Method_CmdOK_Click0 (CInt(&HC), var_A4, var_9C, CVar(CLng(&HC)), "0.00", var_120, CVar(var_9C))
  loc_14E80F7:   var_BC = var_A4.Text
  loc_14E80FF:   var_DC = CVar(var_9C) 'String
  loc_14E8106:   LateIdCallSt
  loc_14E8137:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8152:   Set var_88 = Me.Txt
  loc_14E8158:   Call 0.Method_CmdOK_Click0 (CInt(&HD), var_A4, var_9C, CVar(CLng(&HD)), var_BC, var_120)
  loc_14E8160:   var_DC = var_A4.Text
  loc_14E8168:   var_DC = CVar(var_9C) 'String
  loc_14E816F:   LateIdCallSt
  loc_14E81A0:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E81A8:   var_EC = CVar(CLng(&HF)) 'Long
  loc_14E81B6:   LateIdCallSt
  loc_14E81DD:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E81F8:   Set var_88 = Me.Txt
  loc_14E81FE:   Call 0.Method_CmdOK_Click0 (CInt(&HB), var_A4, var_9C, CVar(CLng(&H14)), var_BC, var_120, "Y")
  loc_14E8206:   var_EC = var_A4.Text
  loc_14E8215:   LateIdCallSt
  loc_14E8246:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8261:   Set var_88 = Me.Txt
  loc_14E8267:   Call 0.Method_CmdOK_Click0 (CInt(&HB), var_A4, var_9C, CVar(CLng(&H15)), var_BC, var_120, CVar(var_9C))
  loc_14E826F:   var_BC = var_A4.Tag
  loc_14E8277:   var_DC = CVar(var_9C) 'String
  loc_14E827E:   LateIdCallSt
  loc_14E82AF:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E82B7:   var_EC = CVar(CLng(7)) 'Long
  loc_14E82C5:   LateIdCallSt
  loc_14E82D3:   var_BC = vbNullString
  loc_14E82F6:   var_BC = CVar((CLng(var_120.Rows) - 1)) 'Long
  loc_14E82FE:   var_120.Row = var_BC
  loc_14E8308:   Set var_120 = Nothing 
  loc_14E8325:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E832D:   var_EC = CVar(CLng(5)) 'Long
  loc_14E8350:   Call Proc_350_60_1885A1C(9, CStr(Me.FGrid.TextMatrix)), var_EC, var_BC, FGrid.DispID_10000, var_BC, var_120, "1")
  loc_14E8370:   Me.CmdAdd.SetFocus
  loc_14E837B: Else
  loc_14E8387:   If (CInt(global_88) = 2) Then
  loc_14E8397:     var_9C = Me.frFacility.Tag
  loc_14E83A5:     var_BC = CVar(CLng(Val(var_9C))) 'Long
  loc_14E83AE:     Set var_A4 = Me.FGrid
  loc_14E83B4:     var_A4.Row = var_BC
  loc_14E83C7:     Set var_190 = Me.FGrid
  loc_14E83D5:     Set var_88 = Me.Txt
  loc_14E83DB:     Call 0.Method_CmdOK_Click0 (CInt(2), var_A4, var_EC, var_BC, var_120)
  loc_14E83F3:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14E842F:     LateIdCallSt
  loc_14E8456:     Set var_88 = Me.Txt
  loc_14E845C:     Call 0.Method_CmdOK_Click0 (CInt(3), var_A4, var_190, CVar(CStr(Format(CVar(var_A4), "0.0000"))), 1, 1, CVar(CLng(2)))
  loc_14E8474:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14E84B0:     LateIdCallSt
  loc_14E84D7:     Set var_88 = Me.Txt
  loc_14E84DD:     Call 0.Method_CmdOK_Click0 (CInt(4), var_A4, var_190, CVar(CStr(Format(CVar(var_A4), "0.00"))), 1, 1, CVar(CLng(3)))
  loc_14E84F5:     var_CC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14E84FD:     var_10C = CVar(CLng(4)) 'Long
  loc_14E8531:     LateIdCallSt
  loc_14E857B:     Set var_88 = Me.Txt
  loc_14E8581:     Call 0.Method_CmdOK_Click0 (CInt(&HC), var_A4, var_9C, CVar(CLng(&HC)), CVar(CLng(Me.FGrid.Row)), var_190, CVar(CStr(Format(CVar(var_A4), "0.00"))))
  loc_14E8589:     1 = var_A4.Text
  loc_14E8598:     LateIdCallSt
  loc_14E85DE:     Set var_88 = Me.Txt
  loc_14E85E4:     Call 0.Method_CmdOK_Click0 (CInt(&HD), var_A4, var_9C, CVar(CLng(&HD)), CVar(CLng(Me.FGrid.Row)), var_190, CVar(var_9C))
  loc_14E85EC:     1 = var_A4.Text
  loc_14E85F4:     var_DC = CVar(var_9C) 'String
  loc_14E85FB:     LateIdCallSt
  loc_14E862C:     var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14E8642:     LateIdCallSt
  loc_14E8666:     Call Proc_350_60_1885A1C(9, 0, Nothing, "Y", CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)), Nothing)
  loc_14E8678:     Me.CmdEdit.SetFocus
  loc_14E8680:   End If
  loc_14E8680: End If
  loc_14E868D: Me.frFacility.Tag = vbNullString
  loc_14E86A1: Me.frFacility.Visible = False
  loc_14E86B4: Call Proc_350_57_FA5A4C(CByte(0), var_DC, var_10C, var_CC)
  loc_14E86B9: Exit Sub
End Sub

Private Sub CmdAdd_Click() '112515C
  'Data Table: 5608C8
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_FC As TextBox
  Dim var_F8 As TextBox
  loc_1124DF4: Set var_88 = Me.TopCtrl1
  loc_1124DFA: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1124E13: If (CStr() = "Browse") Then
  loc_1124E16:   Exit Sub
  loc_1124E17: End If
  loc_1124E30: var_AC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1124E38: var_CC = CVar(CLng(1)) 'Long
  loc_1124E41: Set var_E0 = Me.FGrid
  loc_1124E6B: If (CStr(var_E0.TextMatrix)) <> vbNullString) Then
  loc_1124E6E:   var_AC = vbNullString
  loc_1124E78:   Set var_88 = Me.FGrid
  loc_1124E89: End If
  loc_1124EA4: If (Me.frFacility.Visible = 0) Then
  loc_1124EA7:   Call Proc_350_57_FA5A4C(FGrid.DispID_10000, var_AC)
  loc_1124EB8:   var_CC = CVar(CLng(8)) 'Long
  loc_1124EE3:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1124EF3:     Set var_88 = Me.Txt
  loc_1124EF9:     Call 0.Method_CmdAdd_Click0 (CInt(1), var_E0, &HFF, var_CC)
  loc_1124F01:     var_E0.Enabled = 1
  loc_1124F10:   Else
  loc_1124F1D:     Set var_88 = Me.Txt
  loc_1124F23:     Call 0.Method_CmdAdd_Click0 (CInt(1), var_E0, 0)
  loc_1124F2B:     var_E0.Enabled = var_CC
  loc_1124F37:   End If
  loc_1124F45:   Set var_88 = Me.Txt
  loc_1124F4B:   Call 0.Method_CmdAdd_Click0 (CInt(&HE), var_E0)
  loc_1124F66:   Set var_F8 = Me.Txt
  loc_1124F6C:   Call 0.Method_CmdAdd_Click0 (CInt(&HC), var_FC)
  loc_1124F74:   var_FC.Text = var_E0.Text
  loc_1124F95:   Set var_88 = Me.Txt
  loc_1124F9B:   Call 0.Method_CmdAdd_Click0 (CInt(&HF), var_E0)
  loc_1124FB6:   Set var_F8 = Me.Txt
  loc_1124FBC:   Call 0.Method_CmdAdd_Click0 (CInt(&HD), var_FC)
  loc_1124FC4:   var_FC.Text = var_E0.Text
  loc_1124FD7:   var_AC = 1
  loc_112500B:   Set var_E0 = Me.Txt
  loc_1125011:   Call 0.Method_CmdAdd_Click0 (CInt(1), var_F8, CStr(Me.FGrid.TextMatrix)))
  loc_1125019:   var_F8.Text = CVar(CLng(1))
  loc_1125061:   Set var_E0 = Me.Txt
  loc_1125067:   Call 0.Method_CmdAdd_Click0 (CInt(1), var_F8, CStr(Me.FGrid.TextMatrix)), CVar(CLng(8)))
  loc_112506F:   var_F8.Tag = 1
  loc_1125083:   var_AC = 1
  loc_11250BF:   Set var_E0 = Me.Txt
  loc_11250C5:   Call 0.Method_CmdAdd_Click0 (CInt(&H10), var_F8, Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HA)), var_AC))
  loc_11250CD:   var_F8.Tag = var_AC
  loc_11250F1:   Me.frFacility.Visible = True
  loc_1125107:   Set var_88 = Me.Txt
  loc_112510D:   Call 0.Method_CmdAdd_Click0 (CInt(&HB), var_E0)
  loc_1125127:   If (var_E0.Enabled = &HFF) Then
  loc_1125135:     Set var_88 = Me.Txt
  loc_112513B:     Call 0.Method_CmdAdd_Click0 (CInt(&HB), var_E0)
  loc_1125143:     var_E0.SetFocus
  loc_112514F:   End If
  loc_1125156:   global_88 = CByte(1)
  loc_112515A: End If
  loc_112515A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E5B728
  'Data Table: 5608C8
  loc_E5B712: Me.frFacility.Tag = CStr(CLng(Me.FGrid.Row))
  loc_E5B724: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFB298
  'Data Table: 5608C8
  Dim var_8C As String
  Dim var_98 As TextBox
  loc_EFB1C0: On Error Goto loc_EFB292
  loc_EFB1E6: Call Proc_350_45_F5E89C(Proc_5_1_100CB50("ADD", Me))
  loc_EFB1F1: Call Proc_350_44_F5EB70(global_52)
  loc_EFB1FB: var_8C = CStr(MemVar_1F920EC)
  loc_EFB209: Set var_90 = Me.Txt
  loc_EFB20F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_98)
  loc_EFB217: var_98.Text = var_8C
  loc_EFB22C: Call Proc_350_51_10EB1C8(MemVar_1F92044)
  loc_EFB23F: Set var_90 = Me.Txt
  loc_EFB245: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_98)
  loc_EFB24D: var_98.Text = var_8C
  loc_EFB267: Set var_90 = Me.Txt
  loc_EFB26D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_EFB275: var_98.SetFocus
  loc_EFB284: Call Proc_350_59_177F898(MemVar_1F920EC)
  loc_EFB28E: Set var_88 = Nothing
  loc_EFB291: Exit Sub
  loc_EFB292: ' Referenced from: EFB1C0
  loc_EFB292: Proc_6_60_E62BC4(var_8C)
  loc_EFB297: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA27A0
  'Data Table: 5608C8
  loc_EA2724: On Error Goto loc_EA279A
  loc_EA275E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA2784:   Call Proc_350_45_F5E89C(Proc_5_1_100CB50("INI", Me))
  loc_EA278F:   Call Proc_350_42_16E6E6C(global_52)
  loc_EA2794: End If
  loc_EA2794: Call Proc_350_46_EB90A0()
  loc_EA2799: Exit Sub
  loc_EA279A: ' Referenced from: EA2724
  loc_EA279A: Proc_6_60_E62BC4()
  loc_EA279F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12B72BC
  'Data Table: 5608C8
  Dim unk_5608CF As Connection15
  Dim Me As Recordset15
  Dim var_12C As Fields15
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_134 As String
  Dim var_98 As Recordset15
  Dim var_140 As String
  loc_12B6CB4: On Error Goto loc_12B726B
  loc_12B6CC5: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_12B6CC8:   Exit Sub
  loc_12B6CC9: End If
  loc_12B6D00: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_104, var_124) = 6) Then
  loc_12B6D0C:   unk_5608CF.BeginTrans var_128
  loc_12B6D22:   var_94 = Me.Bookmark 'Variant
  loc_12B6D65:   var_E4 = "Select DOcid1 from FacilityBill1 where Docid1='" & Me.Fields.Item("SearchCode").Value 
  loc_12B6D7C:   unk_5608CF.Execute CStr(var_E4 & "'"), var_124, -1
  loc_12B6D87:   Set var_98 = var_138
  loc_12B6DA1:   ' Referenced from: 12B6E23
  loc_12B6DB0:   If Not(var_98.EOF) Then
  loc_12B6DEF:     var_140 = -1 & Proc_6_38_E68A98(CVar(var_98.Fields.Item("DocID1")), "Delete from Ledger where Docid='", var_E4)
  loc_12B6DFF:     unk_5608CF.Execute var_140 & "'", var_138, var_138
  loc_12B6E1E:     var_98.MoveNext
  loc_12B6E23:     GoTo loc_12B6DA1
  loc_12B6E26:   End If
  loc_12B6E7C:   unk_5608CF.Execute CStr("Delete From FacilityBill Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_12B6EC7:   var_174 = 0
  loc_12B6EDA:   var_16C = 0
  loc_12B6EE5:   var_168 = 0
  loc_12B6EF8:   var_160 = 0
  loc_12B6F03:   var_15C = 0
  loc_12B6F16:   var_154 = 0
  loc_12B6F5F:   Proc_154_5_10E33A4(MemVar_1F92044, "FacilityBill", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12B6FDD:   unk_5608CF.Execute CStr("Delete From FacilityBill1 Where Docid1='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_12B7028:   var_174 = 0
  loc_12B703B:   var_16C = 0
  loc_12B7046:   var_168 = 0
  loc_12B7059:   var_160 = 0
  loc_12B7064:   var_15C = 0
  loc_12B7077:   var_154 = 0
  loc_12B70C0:   Proc_154_5_10E33A4(MemVar_1F92044, "FacilityBill1", "DocId1", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12B713E:   unk_5608CF.Execute CStr("Delete From FacilityBill2 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_12B71A2:   var_104 = "Delete From SuntranFacility Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12B71A6:   var_134 = CStr(var_104)
  loc_12B71B0:   unk_5608CF.Execute var_134, var_124, -1
  loc_12B71D2:   unk_5608CF.CommitTrans
  loc_12B71E2:   Me.Requery -1
  loc_12B7202:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12B720F:     Me.Bookmark = var_94
  loc_12B7217:   Else
  loc_12B722B:     If (Me.EOF = 0) Then
  loc_12B7234:       Me.MoveLast
  loc_12B7239:     End If
  loc_12B7239:   End If
  loc_12B7239:   Call Proc_350_42_16E6E6C(var_138, var_138, var_154, 0)
  loc_12B725A:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_12B7262: End If
  loc_12B7267: Set var_98 = Nothing
  loc_12B726A: Exit Sub
  loc_12B726B: ' Referenced from: 12B6CB4
  loc_12B7271: unk_5608CF.RollbackTrans
  loc_12B727E: Set var_12C = Err()
  loc_12B7284: Call 0.Method_arg_2C (var_134, var_15C, var_160)
  loc_12B72A5: MsgBox(CVar(var_134), &H10, " Deletion Message", var_104, var_124)
  loc_12B72B8: Exit Sub
  loc_12B72B9: ThisVCallR8
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EBAA64
  'Data Table: 5608C8
  Dim var_94 As TextBox
  loc_EBA9CD: Call Proc_350_65_E65820(global_112)
  loc_EBA9D8: If (var_86 = 0) Then
  loc_EBA9DB:   Exit Sub
  loc_EBA9DC: End If
  loc_EBA9DC: On Error Goto loc_EBAA5C
  loc_EBAA02: Call Proc_350_45_F5E89C(Proc_5_1_100CB50("EDIT", Me), global_52)
  loc_EBAA1B: Set var_90 = Me.Txt
  loc_EBAA21: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H11), var_94)
  loc_EBAA37: Call Proc_350_59_177F898(CDate(var_94.Text))
  loc_EBAA4A: Set var_90 = Me.FGrid
  loc_EBAA5B: Exit Sub
  loc_EBAA5C: ' Referenced from: EBA9DC
  loc_EBAA5C: Proc_6_60_E62BC4(FGrid.DispID_8001)
  loc_EBAA61: Exit Sub
  loc_EBAA62: arg_5074 = var_86
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A19C
  'Data Table: 5608C8
  loc_E1A191: Me.Global.Unload Me
  loc_E1A199: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F34664
  'Data Table: 5608C8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_168 As Variant
  Dim MemVar_1F920E4 As String
  loc_F34560: On Error Goto loc_F3465B
  loc_F3457A: If (Me.RecordCount <= 0) Then
  loc_F34598:   var_A8 = "No Records To Search."
  loc_F3459E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F345AE:   Exit Sub
  loc_F345AF: End If
  loc_F345AF: var_B8 = "Select F.DocId,SubGroup.Name As PartyName,LM.Name As LocationName,Convert(VarChar,F.Vno) As BillNo,Convert(varchar(11),F.VDate,106) As BillDate,Convert(varchar(11),F.DueDate,106) As DueDate,Convert(varchar(11),F.ForPeriod,106) As ForPeriod,Convert(varchar(11),F.ToPeriod,106) As ToPeriod From ((FacilityBill F left join Subgroup on F.PartyCode=Subgroup.subcode) left join Locationmast LM on F.LocationCode=LM.Code) Where F.VDATE>="
  loc_F345BF: Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F345F6: var_168 = var_B8 & var_A8 & " AND F.Site_Code='" & CVar(MemVar_1F92070) & "' and F.LogSite_Code='" & CVar(MemVar_1F92078) & "' And F.Site_Code='" 
  loc_F3460E: MemVar_1F920E4 = CStr(var_168 & CVar(MemVar_1F92070) & "' Order by F.Docid ")
  loc_F3462D: MemVar_1F92120 = Me
  loc_F3463A: Proc_6_126_F1BCC0("3000,2000,1000,1000,1000,1000,1000")
  loc_F34655: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F3465A: Exit Sub
  loc_F3465B: ' Referenced from: F34560
  loc_F3465B: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F34660: Exit Sub
  loc_F34661: AssignRecord
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E34638
  'Data Table: 5608C8
  loc_E34628: Proc_5_0_110649C(&HFF, Me)
  loc_E34630: Call Proc_350_42_16E6E6C(global_52)
  loc_E34635: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E34698
  'Data Table: 5608C8
  loc_E34688: Proc_5_0_110649C(&HFF, Me)
  loc_E34690: Call Proc_350_42_16E6E6C(global_52)
  loc_E34695: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E34B18
  'Data Table: 5608C8
  loc_E34B08: Proc_5_0_110649C(&HFF, Me)
  loc_E34B10: Call Proc_350_42_16E6E6C(global_52)
  loc_E34B15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34C38
  'Data Table: 5608C8
  loc_E34C28: Proc_5_0_110649C(&HFF, Me)
  loc_E34C30: Call Proc_350_42_16E6E6C(global_52)
  loc_E34C35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '187E368
  'Data Table: 5608C8
  Dim Me As Recordset15
  Dim var_120 As String
  Dim var_124 As String
  Dim var_134 As String
  Dim var_13C As String
  Dim var_144 As String
  Dim var_154 As String
  Dim var_14C As Variant
  Dim unk_5608CF As Connection15
  Dim var_A0 As Recordset15
  Dim var_188 As Variant
  Dim var_168 As Variant
  Dim var_1D0 As Recordset15
  Dim var_198 As String
  Dim var_148 As Fields15
  Dim var_178 As Variant
  Dim var_1D4 As Fields15
  Dim var_1D8 As Field20
  Dim var_1C8 As Variant
  Dim var_1B8 As String
  Dim var_B4 As Recordset15
  Dim var_1CA As Integer
  Dim var_116 As Integer
  Dim var_B8 As Recordset15
  Dim var_1A8 As Variant
  loc_187BD74: On Error Goto loc_187E361
  loc_187BD8E: If (Me.RecordCount <= 0) Then
  loc_187BD91:   Exit Sub
  loc_187BD92: End If
  loc_187BD99: var_120 = "Select F1.DocId,F1.SNo,S.Name As PartyName,S.Add1,S.Add2,S.Add3,C.CityName,ST.ShortName StateCode,ST.Name StateName,S.PIN,S.Mobile,S.Email,S.GSTIN,S.LegalName,S.TradeName,LM.Name As Location,F.Vno As PartyBillNo,F.Vdate As BillDate,F.DueDate,F.Remark,F1.VType," & "F1.Vno As FacilityBillNo,FM.Name As Facility,FM.ChargeType,F1.Unit,F1.UnitRate,F1.Amount,F1.DiscAmt,F1.AppDate,F1.ForPeriod,"
  loc_187BDBC: var_134 = var_120 & "F1.ToPeriod,FR1.Reading As LReading,Case When '" & MemVar_1F92164 & "'<>'' Then '" & MemVar_1F92164 & "'+'/' Else '' End +F1.VType+'/'+'"
  loc_187BDCA: var_13C = var_134 & MemVar_1F92168 & "'+'/'+Cast(F1.Vno As Varchar) As BillVou,FM.SACCode,ISNULL(EIB.IRN,'') IRN,ISNULL(EIB.AckNo,'') AckNo,EIB.AckDt From FacilityBill F Right Join FacilityBill1 F1 On F1.DocId1=F.Docid Left Join "
  loc_187BDD8: var_144 = var_13C & "SubGroup S on S.SubCode=F.PartyCode Left Join LocationMast LM on LM.Code=F1.LocationCode Left Join " & "FacilityMast FM on FM.Code=F1.FacilityCode Left Join City C on S.CityCode=C.CityCode Left Join State ST on C.State=ST.Code Left Join FMReading FR On FR.LocationCode=F.LocationCode And FR.FacilityCode=F1.FacilityCode "
  loc_187BDDF: var_154 = var_144 & "Left Join FMReading1 FR1 On FR1.Code=FR.Code And FR1.ForDate=dateadd(day,1,F1.ToPeriod) Left Join eInvoiceBill1 EIB On EIB.DocId = F1.Docid where F.DocId='"
  loc_187BDF0: Set var_148 = Me.Txt
  loc_187BDF6: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(5), var_14C)
  loc_187BE4B: unk_5608CF.Execute var_154 & var_14C.Text & "'", var_178, -1
  loc_187BE56: Set var_A0 = var_148
  loc_187BE73: If (var_A0.RecordCount <= 0) Then
  loc_187BE7C:   Call 0.Method_arg_50 (var_120)
  loc_187BE92:   var_168 = "** No Records Found to Print **"
  loc_187BE9D:   MsgBox(var_168, &H40, CVar(var_120), var_1A8, var_1C8)
  loc_187BEAD:   Exit Sub
  loc_187BEAE: End If
  loc_187BEBB: Call Proc_350_49_127F788(New, var_148)
  loc_187BEC3: Set var_B0 = var_148
  loc_187BEC9: var_A0.MoveFirst
  loc_187BECE: ' Referenced from: 187C9A5
  loc_187BEDD: If Not(var_A0.EOF) Then
  loc_187BEE3:   Set var_1D0 = var_B0 
  loc_187BEF2:   var_1D0.AddNew var_168, var_198
  loc_187BF1C:   var_1D0.Fields.Item("mLine").Value = vbNullString
  loc_187BF6B:   var_1D0.Fields.Item("DocId").Value = CVar(var_A0.Fields.Item("DocID"))
  loc_187BFBF:   var_1D0.Fields.Item("PartyName").Value = CVar(var_A0.Fields.Item("PartyName"))
  loc_187C013:   var_1D0.Fields.Item("Add1").Value = CVar(var_A0.Fields.Item("Add1"))
  loc_187C067:   var_1D0.Fields.Item("Add2").Value = CVar(var_A0.Fields.Item("Add2"))
  loc_187C0BB:   var_1D0.Fields.Item("Add3").Value = CVar(var_A0.Fields.Item("Add3"))
  loc_187C10F:   var_1D0.Fields.Item("CityName").Value = CVar(var_A0.Fields.Item("CityName"))
  loc_187C163:   var_1D0.Fields.Item("StateCode").Value = CVar(var_A0.Fields.Item("StateCode"))
  loc_187C1B7:   var_1D0.Fields.Item("StateName").Value = CVar(var_A0.Fields.Item("StateName"))
  loc_187C20B:   var_1D0.Fields.Item("GSTIN").Value = CVar(var_A0.Fields.Item("GSTIN"))
  loc_187C25F:   var_1D0.Fields.Item("Location").Value = CVar(var_A0.Fields.Item("Location"))
  loc_187C2B3:   var_1D0.Fields.Item("PartyBillNo").Value = CVar(var_A0.Fields.Item("PartyBillNo"))
  loc_187C307:   var_1D0.Fields.Item("BillDate").Value = CVar(var_A0.Fields.Item("Billdate"))
  loc_187C35B:   var_1D0.Fields.Item("DueDate").Value = CVar(var_A0.Fields.Item("DueDate"))
  loc_187C3AF:   var_1D0.Fields.Item("Remark").Value = CVar(var_A0.Fields.Item("Remark"))
  loc_187C403:   var_1D0.Fields.Item("VType").Value = CVar(var_A0.Fields.Item("vType"))
  loc_187C457:   var_1D0.Fields.Item("FacilityBillNo").Value = CVar(var_A0.Fields.Item("FacilityBillNo"))
  loc_187C4AB:   var_1D0.Fields.Item("Facility").Value = CVar(var_A0.Fields.Item("Facility"))
  loc_187C4FF:   var_1D0.Fields.Item("ChargeType").Value = CVar(var_A0.Fields.Item("ChargeType"))
  loc_187C553:   var_1D0.Fields.Item("Unit").Value = CVar(var_A0.Fields.Item("Unit"))
  loc_187C5A7:   var_1D0.Fields.Item("UnitRate").Value = CVar(var_A0.Fields.Item("UnitRate"))
  loc_187C5FB:   var_1D0.Fields.Item("Amount").Value = CVar(var_A0.Fields.Item("Amount"))
  loc_187C64F:   var_1D0.Fields.Item("AppDate").Value = CVar(var_A0.Fields.Item("AppDate"))
  loc_187C6A3:   var_1D0.Fields.Item("ForPeriod").Value = CVar(var_A0.Fields.Item("ForPeriod"))
  loc_187C6F7:   var_1D0.Fields.Item("ToPeriod").Value = CVar(var_A0.Fields.Item("ToPeriod"))
  loc_187C74B:   var_1D0.Fields.Item("LReading").Value = CVar(var_A0.Fields.Item("LReading"))
  loc_187C7AD:   Proc_6_39_E7C810(var_1A8, CVar(var_A0.Fields.Item("FacilityBillNo")))
  loc_187C7C8:   var_1B8 = "BillVou"
  loc_187C7E4:   var_1D0.Fields.Item(var_1B8).Value = CVar(Proc_96_43_F99184(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("vType"))), var_1A8))
  loc_187C849:   var_1D0.Fields.Item("eInvIRN").Value = CVar(var_A0.Fields.Item("Irn"))
  loc_187C89D:   var_1D0.Fields.Item("eInvAckNo").Value = CVar(var_A0.Fields.Item("AckNo"))
  loc_187C8E9:   var_1D8 = var_1D0.Fields.Item("eInvAckDt")
  loc_187C8F1:   var_1D8.Value = CVar(var_A0.Fields.Item("AckDt"))
  loc_187C916:   If (var_A0.AbsolutePosition = 1) Then
  loc_187C91D:     Set var_1D4 = Me.QrImage
  loc_187C923:     var_120 = "QrImage"
  loc_187C92C:     Set var_14C = var_B0 
  loc_187C93C:     Proc_142_0_F96C2C(var_1D4, var_14C)
  loc_187C947:     Set var_B0 = var_14C
  loc_187C956:   End If
  loc_187C956:   var_198 = "*"
  loc_187C95F:   var_168 = "Mark"
  loc_187C973:   var_14C = var_1D0.Fields.Item(var_168)
  loc_187C97B:   var_14C.Value = var_198
  loc_187C992:   var_1D0.Update var_168, var_198
  loc_187C999:   Set var_1D0 = Nothing 
  loc_187C9A0:   var_A0.MoveNext
  loc_187C9A5:   GoTo loc_187BECE
  loc_187C9A8: End If
  loc_187C9A8: Call Proc_350_64_FAAFB8(var_120)
  loc_187C9D1: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(5), var_14C, var_120, "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (FacilityBill2 left join revmast on revmast.code=FacilityBill2.Taxcode) where FacilityBill2.DocID='")
  loc_187C9D9: var_178 = var_14C.Text
  loc_187C9E2: var_124 = -1 & var_120
  loc_187C9F2: unk_5608CF.Execute Proc_6_38_E68A98(CVar(var_A0.Fields.Item("vType"))) & "' group by revmast.code,TaxPer Order by TaxPer", var_1D4, Me.Txt
  loc_187C9FD: Set var_B8 = var_1D4
  loc_187CA33: Set var_148 = Me.Txt
  loc_187CA39: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(5), var_14C, var_120, "SELECT ST.DocId,ST.SNo,ST.SunCode,ST.DispName,ST.Svalue,ST.Amount,SM.Name AS SName FROM SunTranFacility AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='")
  loc_187CA41: var_178 = var_14C.Text
  loc_187CA4A: var_124 = -1 & var_120
  loc_187CA5A: unk_5608CF.Execute Proc_6_38_E68A98(CVar(var_A0.Fields.Item("vType"))) & "' Order by SNo", var_1D4, 
  loc_187CA65: Set var_B4 = var_1D4
  loc_187CA91: If (var_B4.RecordCount > 0) Then
  loc_187CA94:   ' Referenced from: 187CFE4
  loc_187CAA3:   If Not(var_B4.EOF) Then
  loc_187CACC:     var_188 = Trim(CVar(var_B4.Fields.Item("SunCode")))
  loc_187CAFA:     If (Ucase(var_188) = CVar(MemVar_1F92078 & "NET")) Then
  loc_187CB28:       var_D8 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187CB54:       var_178 = CVar(var_B4.Fields.Item("Amount")) 'Address
  loc_187CB5B:       Proc_6_39_E7C810(var_188)
  loc_187CB84:       var_E4 = CStr(Format(var_188, "0.00"))
  loc_187CB98:       var_B4.MoveNext
  loc_187CBAE:       If (var_B4.EOF = &HFF) Then
  loc_187CBB1:         GoTo loc_187CFE7
  loc_187CBB4:       End If
  loc_187CBB4:     End If
  loc_187CBDE:     var_200 = var_B4.Fields.Item("SNo").Value 'Variant
  loc_187CBF4:     If (var_200 = 1) Then
  loc_187CC22:       var_C0 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187CC55:       Proc_6_39_E7C810(var_188, CVar(var_B4.Fields.Item("Amount")), 1)
  loc_187CC7E:       var_FC = CStr(Format(var_188, "0.00"))
  loc_187CC92:     Else
  loc_187CC9D:       If (var_200 = 2) Then
  loc_187CCCB:         var_C4 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187CCFE:         Proc_6_39_E7C810(var_188, CVar(var_B4.Fields.Item("Amount")), 1)
  loc_187CD27:         var_100 = CStr(Format(var_188, "0.00"))
  loc_187CD3B:       Else
  loc_187CD46:         If (var_200 = 3) Then
  loc_187CD74:           var_D0 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187CDA7:           Proc_6_39_E7C810(var_188, CVar(var_B4.Fields.Item("Amount")), 1, 1)
  loc_187CDD0:           var_DC = CStr(Format(var_188, "0.00"))
  loc_187CDE4:         Else
  loc_187CDEF:           If (var_200 = 4) Then
  loc_187CE1D:             var_C8 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187CE50:             Proc_6_39_E7C810(var_188, CVar(var_B4.Fields.Item("Amount")), 1, 1)
  loc_187CE79:             var_104 = CStr(Format(var_188, "0.00"))
  loc_187CE8D:           Else
  loc_187CE98:             If (var_200 = 5) Then
  loc_187CEC6:               var_CC = CStr(var_B4.Fields.Item("SName").Value)
  loc_187CEF9:               Proc_6_39_E7C810(var_188, CVar(var_B4.Fields.Item("Amount")), 1, 1)
  loc_187CF22:               var_108 = CStr(Format(var_188, "0.00"))
  loc_187CF36:             Else
  loc_187CF41:               If (var_200 = 6) Then
  loc_187CF6F:                 var_D4 = CStr(var_B4.Fields.Item("SName").Value)
  loc_187CF93:                 var_14C = var_B4.Fields.Item("Amount")
  loc_187CF9B:                 var_178 = CVar(var_14C) 'Address
  loc_187CFA2:                 Proc_6_39_E7C810(var_188, var_178, 1, 1)
  loc_187CFCB:                 var_E0 = CStr(Format(var_188, "0.00"))
  loc_187CFDC:               End If
  loc_187CFDC:             End If
  loc_187CFDC:           End If
  loc_187CFDC:         End If
  loc_187CFDC:       End If
  loc_187CFDC:     End If
  loc_187CFDF:     var_B4.MoveNext
  loc_187CFE4:     GoTo loc_187CA94
  loc_187CFE7:     ' Referenced from: 187CBB1
  loc_187CFE7:   End If
  loc_187CFE7: End If
  loc_187CFFD: Set var_148 = var_B0 
  loc_187D013: Set var_B0 = var_148
  loc_187D01C: var_9C = CVar(CreateFieldDefFile(var_148, MemVar_1F920B4 & "\FacilityBill.ttx", &HFF, 1)) 'Variant
  loc_187D030: var_11C = var_B4.RecordCount
  loc_187D03E: If (var_11C > 0) Then
  loc_187D057:   Set var_148 = var_B4 
  loc_187D063:   var_1CA = CreateFieldDefFile(var_148, MemVar_1F920B4 & "\FacilityBillSundry.ttx", &HFF, var_1CA)
  loc_187D06D:   Set var_B4 = var_148
  loc_187D073:   var_168 = CVar(var_1CA) 'Integer
  loc_187D076:   var_9C = var_168 'Variant
  loc_187D084: End If
  loc_187D092: var_120 = MemVar_1F920B4 & "\FacilityBill.RPT"
  loc_187D09B: Call 0.Method_arg_1C (var_120, var_168, var_148, var_1CA)
  loc_187D0A6: MemVar_1F921E4 = var_148
  loc_187D0C1: Call 0.Method_arg_90 (var_148, var_11C, var_AA, 1)
  loc_187D0C9: Call 0.Method_arg_24 (1, 1)
  loc_187D0D5: For var_204 = var_178 To CInt(var_11C): 1 = var_204 'Integer
  loc_187D0EE:   Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187D0F6:   Call 0.Method_arg_20 (var_120)
  loc_187D0FE:   Call 0.Method_arg_30 (var_178)
  loc_187D114:   var_214 = Ucase(CVar(var_120)) 'Variant
  loc_187D144:   If (var_214 = Ucase("Title")) Then
  loc_187D15A:     Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D162:     Call 0.Method_arg_20 (var_14C)
  loc_187D16A:     Call 0.Method_arg_38 ("'Facility Bill'")
  loc_187D179:   Else
  loc_187D19B:     If (var_214 = Ucase("lblamount")) Then
  loc_187D1BF:       Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D1C7:       Call 0.Method_arg_20 (var_14C)
  loc_187D1CF:       Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_187D1E5:     Else
  loc_187D207:       If (var_214 = Ucase("amount")) Then
  loc_187D22B:         Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D233:         Call 0.Method_arg_20 (var_14C)
  loc_187D23B:         Call 0.Method_arg_38 ("'" & var_FC & "'")
  loc_187D251:       Else
  loc_187D273:         If (var_214 = Ucase("lbldiscount")) Then
  loc_187D297:           Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D29F:           Call 0.Method_arg_20 (var_14C)
  loc_187D2A7:           Call 0.Method_arg_38 ("'" & var_C4 & "'")
  loc_187D2BD:         Else
  loc_187D2DF:           If (var_214 = Ucase("discount")) Then
  loc_187D303:             Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D30B:             Call 0.Method_arg_20 (var_14C)
  loc_187D313:             Call 0.Method_arg_38 ("'" & var_100 & "'")
  loc_187D329:           Else
  loc_187D34B:             If (var_214 = Ucase("lbldevelopmenttax")) Then
  loc_187D36F:               Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D377:               Call 0.Method_arg_20 (var_14C)
  loc_187D37F:               Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_187D395:             Else
  loc_187D3B7:               If (var_214 = Ucase("developmenttax")) Then
  loc_187D3DB:                 Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D3E3:                 Call 0.Method_arg_20 (var_14C)
  loc_187D3EB:                 Call 0.Method_arg_38 ("'" & var_DC & "'")
  loc_187D401:               Else
  loc_187D423:                 If (var_214 = Ucase("lbltradetax")) Then
  loc_187D447:                   Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D44F:                   Call 0.Method_arg_20 (var_14C)
  loc_187D457:                   Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_187D46D:                 Else
  loc_187D48F:                   If (var_214 = Ucase("tradetax")) Then
  loc_187D4B3:                     Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D4BB:                     Call 0.Method_arg_20 (var_14C)
  loc_187D4C3:                     Call 0.Method_arg_38 ("'" & var_104 & "'")
  loc_187D4D9:                   Else
  loc_187D4FB:                     If (var_214 = Ucase("lblservicecharge")) Then
  loc_187D51F:                       Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D527:                       Call 0.Method_arg_20 (var_14C)
  loc_187D52F:                       Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_187D545:                     Else
  loc_187D567:                       If (var_214 = Ucase("servicecharge")) Then
  loc_187D58B:                         Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D593:                         Call 0.Method_arg_20 (var_14C)
  loc_187D59B:                         Call 0.Method_arg_38 ("'" & var_108 & "'")
  loc_187D5B1:                       Else
  loc_187D5D3:                         If (var_214 = Ucase("lblroundoff")) Then
  loc_187D5F7:                           Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D5FF:                           Call 0.Method_arg_20 (var_14C)
  loc_187D607:                           Call 0.Method_arg_38 ("'" & var_D4 & "'")
  loc_187D61D:                         Else
  loc_187D63F:                           If (var_214 = Ucase("roundoff")) Then
  loc_187D663:                             Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D66B:                             Call 0.Method_arg_20 (var_14C)
  loc_187D673:                             Call 0.Method_arg_38 ("'" & var_E0 & "'")
  loc_187D689:                           Else
  loc_187D6AB:                             If (var_214 = Ucase("lblnetamount")) Then
  loc_187D6CF:                               Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D6D7:                               Call 0.Method_arg_20 (var_14C)
  loc_187D6DF:                               Call 0.Method_arg_38 ("'" & var_D8 & "'")
  loc_187D6F5:                             Else
  loc_187D717:                               If (var_214 = Ucase("netamount")) Then
  loc_187D721:                                 var_120 = "'" & var_E4
  loc_187D73B:                                 Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D743:                                 Call 0.Method_arg_20 (var_14C)
  loc_187D74B:                                 Call 0.Method_arg_38 (var_120 & "'")
  loc_187D75E:                               End If
  loc_187D75E:                             End If
  loc_187D75E:                           End If
  loc_187D75E:                         End If
  loc_187D75E:                       End If
  loc_187D75E:                     End If
  loc_187D75E:                   End If
  loc_187D75E:                 End If
  loc_187D75E:               End If
  loc_187D75E:             End If
  loc_187D75E:           End If
  loc_187D75E:         End If
  loc_187D75E:       End If
  loc_187D75E:     End If
  loc_187D75E:   End If
  loc_187D761: Next var_204 'Integer
  loc_187D76C: var_11C = var_B4.RecordCount
  loc_187D77A: If (var_11C > 0) Then
  loc_187D780:   var_B4.MoveFirst
  loc_187D785:   ' Referenced from: 187DF00
  loc_187D794:   If Not(var_B4.EOF) Then
  loc_187D7BD:     var_188 = Trim(CVar(var_B4.Fields.Item("SunCode")))
  loc_187D7EB:     If (Ucase(var_188) = CVar(MemVar_1F92078 & "NET")) Then
  loc_187D82E:       var_148 = var_B4.Fields
  loc_187D836:       var_14C = var_148.Item("Amount")
  loc_187D83E:       var_178 = CVar(var_14C) 'Address
  loc_187D845:       Proc_6_39_E7C810(var_188)
  loc_187D86E:       var_114 = CStr(Format(var_188, "0.00"))
  loc_187D890:       Call 0.Method_arg_90 (var_148, var_11C, var_AA, 1)
  loc_187D898:       Call 0.Method_arg_24 (1, 1)
  loc_187D8A4:       For var_218 =  To CInt(var_11C): var_178 = var_218 'Integer
  loc_187D8BD:         Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187D8C5:         Call 0.Method_arg_20 (var_14C)
  loc_187D8CD:         Call 0.Method_arg_30 (var_120)
  loc_187D8E3:         var_228 = Ucase(CVar(var_120)) 'Variant
  loc_187D8F9:         var_178 = "lblNetAmount"
  loc_187D913:         If (var_228 = Ucase(var_178)) Then
  loc_187D921:           Proc_6_17_EAA2B0(var_178)
  loc_187D93D:           Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187D945:           Call 0.Method_arg_20 (CStr(var_178))
  loc_187D94D:           Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DispName"))))
  loc_187D962:         Else
  loc_187D96A:           var_178 = "NetAmount"
  loc_187D984:           If (var_228 = Ucase(var_178)) Then
  loc_187D992:             Proc_6_17_EAA2B0(var_178)
  loc_187D99A:             var_120 = CStr(var_178)
  loc_187D9AE:             Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187D9B6:             Call 0.Method_arg_20 (var_120)
  loc_187D9BE:             Call 0.Method_arg_38 (var_114)
  loc_187D9D0:           End If
  loc_187D9D0:         End If
  loc_187D9D3:       Next var_218 'Integer
  loc_187D9DB:     Else
  loc_187DA01:       var_188 = Trim(CVar(var_B4.Fields.Item("SunCode")))
  loc_187DA2F:       If (Ucase(var_188) = CVar(MemVar_1F92078 & "TOT")) Then
  loc_187DA72:         var_148 = var_B4.Fields
  loc_187DA7A:         var_14C = var_148.Item("Amount")
  loc_187DA82:         var_178 = CVar(var_14C) 'Address
  loc_187DA89:         Proc_6_39_E7C810(var_188)
  loc_187DAB2:         var_114 = CStr(Format(var_188, "0.00"))
  loc_187DAD4:         Call 0.Method_arg_90 (var_148, var_11C, var_AA, 1)
  loc_187DADC:         Call 0.Method_arg_24 (1, 1)
  loc_187DAE8:         For var_22C =  To CInt(var_11C):   var_178 = var_22C 'Integer
  loc_187DB01:           Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187DB09:           Call 0.Method_arg_20 (var_14C)
  loc_187DB11:           Call 0.Method_arg_30 (var_120)
  loc_187DB27:           var_23C = Ucase(CVar(var_120)) 'Variant
  loc_187DB3D:           var_178 = "lblTotal"
  loc_187DB57:           If (var_23C = Ucase(var_178)) Then
  loc_187DB65:             Proc_6_17_EAA2B0(var_178)
  loc_187DB81:             Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187DB89:             Call 0.Method_arg_20 (CStr(var_178))
  loc_187DB91:             Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DispName"))))
  loc_187DBA6:           Else
  loc_187DBAE:             var_178 = "Total"
  loc_187DBB7:             var_188 = Ucase(var_178)
  loc_187DBC8:             If (var_23C = var_188) Then
  loc_187DBD6:               Proc_6_17_EAA2B0(var_178)
  loc_187DBDE:               var_120 = CStr(var_178)
  loc_187DBF2:               Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187DBFA:               Call 0.Method_arg_20 (var_120)
  loc_187DC02:               Call 0.Method_arg_38 (var_114)
  loc_187DC14:             End If
  loc_187DC14:           End If
  loc_187DC17:         Next var_22C 'Integer
  loc_187DC1F:       Else
  loc_187DC6F:         var_178 = CVar(var_B4.Fields.Item("SValue")) 'Address
  loc_187DC76:         Proc_6_39_E7C810(var_188)
  loc_187DC9F:         var_110 = CStr(Format(var_188, "0.00"))
  loc_187DCBF:         var_148 = var_B4.Fields
  loc_187DCC7:         var_14C = var_148.Item("Amount")
  loc_187DCCF:         var_178 = CVar(var_14C) 'Address
  loc_187DCD6:         Proc_6_39_E7C810(var_188, var_178, 1)
  loc_187DCEA:         var_1A8 = "0.00"
  loc_187DCF6:         var_1C8 = Format(var_188, var_1A8)
  loc_187DCFF:         var_114 = CStr(var_1C8)
  loc_187DD16:         var_116 = (var_116 + 1)
  loc_187DD2A:         Call 0.Method_arg_90 (var_148, var_11C, var_AA, 1, var_116)
  loc_187DD32:         Call 0.Method_arg_24 (1, 1)
  loc_187DD3E:         For var_240 = var_178 To CInt(var_11C):     1 = var_240 'Integer
  loc_187DD57:           Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187DD5F:           Call 0.Method_arg_20 (var_120)
  loc_187DD67:           Call 0.Method_arg_30 (var_178)
  loc_187DD7D:           var_250 = Ucase(CVar(var_120)) 'Variant
  loc_187DD9A:           var_178 = CVar("lblSunName" & CStr(var_116)) 'String
  loc_187DDB4:           If (var_250 = Ucase(var_178)) Then
  loc_187DDC2:             Proc_6_17_EAA2B0(var_178)
  loc_187DDDE:             Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187DDE6:             Call 0.Method_arg_20 (CStr(var_178))
  loc_187DDEE:             Call 0.Method_arg_38 (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DispName"))))
  loc_187DE03:           Else
  loc_187DE12:             var_178 = CVar("SunPer" & CStr(var_116)) 'String
  loc_187DE2C:             If (var_250 = Ucase(var_178)) Then
  loc_187DE3A:               Proc_6_17_EAA2B0(var_178)
  loc_187DE56:               Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187DE5E:               Call 0.Method_arg_20 (CStr(var_178))
  loc_187DE66:               Call 0.Method_arg_38 (var_110)
  loc_187DE7B:             Else
  loc_187DE8A:               var_178 = CVar("SunAmt" & CStr(var_116)) 'String
  loc_187DEA4:               If (var_250 = Ucase(var_178)) Then
  loc_187DEB2:                 Proc_6_17_EAA2B0(var_178)
  loc_187DEBA:                 var_120 = CStr(var_178)
  loc_187DECE:                 Call 0.Method_arg_90 (var_148, CLng(var_AA), var_14C)
  loc_187DED6:                 Call 0.Method_arg_20 (var_120)
  loc_187DEDE:                 Call 0.Method_arg_38 (var_114)
  loc_187DEF0:               End If
  loc_187DEF0:             End If
  loc_187DEF0:           End If
  loc_187DEF3:         Next var_240 'Integer
  loc_187DEF8:       End If
  loc_187DEF8:     End If
  loc_187DEFB:     var_B4.MoveNext
  loc_187DF00:     GoTo loc_187D785
  loc_187DF03:   End If
  loc_187DF03: End If
  loc_187DF09: var_11C = var_B8.RecordCount
  loc_187DF17: If (var_11C > 0) Then
  loc_187DF1C:   var_116 = 1
  loc_187DF22:   var_B8.MoveFirst
  loc_187DF27:   ' Referenced from: 187E2B2
  loc_187DF36:   If Not(var_B8.EOF) Then
  loc_187DF4A:     Call 0.Method_arg_90 (var_148, var_11C, var_AA)
  loc_187DF52:     Call 0.Method_arg_24 (1)
  loc_187DF5E:     For var_254 =  To CInt(var_11C): var_116 = var_254 'Integer
  loc_187DF77:       Call 0.Method_arg_90 (var_148, CLng(var_AA))
  loc_187DF7F:       Call 0.Method_arg_20 (var_14C)
  loc_187DF87:       Call 0.Method_arg_30 (var_120)
  loc_187DF9D:       var_264 = Ucase(CVar(var_120)) 'Variant
  loc_187DFD4:       If (var_264 = Ucase(CVar("STName" & CStr(var_116)))) Then
  loc_187E005:         Proc_6_17_EAA2B0(var_1A8)
  loc_187E021:         Call 0.Method_arg_90 (var_1D4, CLng(var_AA), var_1D8)
  loc_187E029:         Call 0.Method_arg_20 (CStr(var_1A8))
  loc_187E031:         Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TaxName")))))
  loc_187E04E:       Else
  loc_187E063:         var_188 = Ucase(CVar("STPer" & CStr(var_116)))
  loc_187E077:         If (var_264 = var_188) Then
  loc_187E0A0:           Proc_6_39_E7C810(var_188)
  loc_187E0B7:           Proc_6_17_EAA2B0(var_1C8, CVar(CStr(var_188) & ") 'String)
  loc_187E0D3:           Call 0.Method_arg_90 (var_1D4, CLng(var_AA), var_1D8)
  loc_187E0DB:           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_187E0E3:           Call 0.Method_arg_38 (CVar(var_B8.Fields.Item("TaxPer")))
  loc_187E108:         Else
  loc_187E11D:           var_188 = Ucase(CVar("STAmt" & CStr(var_116)))
  loc_187E131:           If (var_264 = var_188) Then
  loc_187E15A:             Proc_6_39_E7C810(var_188)
  loc_187E185:             Proc_6_17_EAA2B0(var_1F0, Format(var_188, "0.00"), 1)
  loc_187E1A1:             Call 0.Method_arg_90 (var_1D4, CLng(var_AA), var_1D8)
  loc_187E1A9:             Call 0.Method_arg_20 (CStr(var_1F0), 1)
  loc_187E1B1:             Call 0.Method_arg_38 (CVar(var_B8.Fields.Item("TaxAmt")))
  loc_187E1D2:           Else
  loc_187E1E7:             var_188 = Ucase(CVar("STAbleAmt" & CStr(var_116)))
  loc_187E1FB:             If (var_264 = var_188) Then
  loc_187E20D:               var_148 = var_B8.Fields
  loc_187E224:               Proc_6_39_E7C810(var_188)
  loc_187E233:               var_198 = "0.00"
  loc_187E24F:               Proc_6_17_EAA2B0(var_1F0, Format(var_188, var_198), 1)
  loc_187E257:               var_120 = CStr(var_1F0)
  loc_187E26B:               Call 0.Method_arg_90 (var_1D4, CLng(var_AA), var_1D8)
  loc_187E273:               Call 0.Method_arg_20 (var_120, 1)
  loc_187E27B:               Call 0.Method_arg_38 (CVar(var_148.Item("TaxableAmt")))
  loc_187E299:             End If
  loc_187E299:           End If
  loc_187E299:         End If
  loc_187E299:       End If
  loc_187E29C:     Next var_254 'Integer
  loc_187E2A7:     var_116 = (var_116 + 1)
  loc_187E2AD:     var_B8.MoveNext
  loc_187E2B2:     GoTo loc_187DF27
  loc_187E2B5:   End If
  loc_187E2B5: End If
  loc_187E2CE: Call 0.Method_arg_64 (var_148, CVar(var_B0), var_198)
  loc_187E2D6: Call 0.Method_arg_2C (var_1B8)
  loc_187E2E4: Call 0.Method_arg_150 (var_116)
  loc_187E2EF: Call 0.Method_arg_50 (var_120)
  loc_187E2F9: Set var_14C = Nothing
  loc_187E313: Set var_148 = MemVar_1F921E4 
  loc_187E31F: Proc_6_99_1483714(var_148, 0, var_120)
  loc_187E32A: MemVar_1F921E4 = var_148
  loc_187E33D: Set var_A0 = Nothing
  loc_187E345: Set var_B0 = Nothing
  loc_187E34D: Set var_B4 = Nothing
  loc_187E355: Set var_B8 = Nothing
  loc_187E35D: Set var_BC = Nothing
  loc_187E360: Exit Sub
  loc_187E361: ' Referenced from: 187BD74
  loc_187E361: Proc_6_60_E62BC4(&HFF)
  loc_187E366: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E20ACC
  'Data Table: 5608C8
  Dim Me As Recordset15
  loc_E20AB3: Me.Requery -1
  loc_E20AC3: Me.Requery -1
  loc_E20AC8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1846EA8
  'Data Table: 5608C8
  Dim var_F0 As Variant
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim unk_5608CF As Connection15
  Dim var_DC As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_114 As Variant
  Dim var_D8 As Variant
  Dim var_134 As Variant
  Dim var_C8 As Variant
  Dim var_144 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_19C As Variant
  Dim var_1A0 As Variant
  Dim var_1B4 As Variant
  Dim var_104 As Variant
  Dim var_B0 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_610 As Double
  Dim var_254 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_3A0 As Variant
  Dim var_4E8 As Variant
  Dim var_4B8 As Variant
  Dim var_200 As String
  Dim var_208 As String
  Dim var_168 As Variant
  Dim var_198 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_330 As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_410 As Variant
  Dim var_420 As Variant
  Dim var_518 As Variant
  Dim var_5C0 As Variant
  Dim var_5D0 As Variant
  Dim var_E80 As Double
  Dim var_148 As MSHFlexGrid
  Dim var_634 As Variant
  Dim var_664 As Variant
  Dim var_684 As Variant
  Dim var_2DC As MSHFlexGrid
  Dim var_6B4 As Variant
  Dim var_6D4 As Variant
  Dim var_2E0 As Variant
  Dim var_704 As Variant
  Dim var_724 As Variant
  Dim var_334 As MSHFlexGrid
  Dim var_754 As Variant
  Dim var_774 As Variant
  Dim var_338 As Variant
  Dim var_E88 As Double
  Dim var_38C As MSHFlexGrid
  Dim var_5B0 As Variant
  Dim var_E90 As Double
  Dim var_390 As Variant
  Dim var_86C As Variant
  Dim var_E98 As Double
  Dim var_494 As MSHFlexGrid
  Dim var_EA0 As Double
  Dim var_57C As Variant
  Dim var_EA8 As Double
  Dim var_580 As MSHFlexGrid
  Dim var_608 As Variant
  Dim var_D38 As Variant
  Dim var_D58 As Variant
  Dim var_D6C As Variant
  Dim var_D7C As Variant
  Dim var_E10 As Variant
  Dim var_210 As String
  Dim var_224 As String
  Dim var_61C As String
  Dim var_300 As Variant
  Dim var_358 As Variant
  Dim var_3B0 As Variant
  Dim var_460 As Variant
  Dim var_5A0 As Variant
  Dim var_604 As Variant
  Dim var_AF8 As Variant
  Dim var_BD0 As Variant
  Dim var_D9C As Variant
  Dim var_88 As Recordset15
  Dim var_620 As String
  Dim var_624 As String
  Dim var_EC0 As Label
  loc_1844BF4: On Error Goto loc_1846E8E
  loc_1844C24: Set var_A8 = Me.Txt
  loc_1844C2A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_AC, var_B0, "Select Count(*) From LocationMast Where Code='", var_D8, -1)
  loc_1844C4B: unk_5608CF.Execute var_E0 & var_B0 & "' And TStartDate Is Not Null And TEndDate Is Not Null", 0, var_F4
  loc_1844C53: var_104 = var_AC.Tag.Fields
  loc_1844C5B:  = var_E0.Item()
  loc_1844C63:  = var_F4.Value
  loc_1844C6E: Proc_6_39_E7C810(var_114)
  loc_1844C9D: If (var_114 > 0) Then
  loc_1844CCD:   Set var_A8 = Me.Txt
  loc_1844CD3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_AC, var_B0, "Select Count(*) From LocationMast Where Code='", var_198, -1)
  loc_1844CE4:   var_B4 = var_1A0 & var_B0
  loc_1844CEB:   var_114 = CVar(var_B4 & "' And Not(Cast(") 'String
  loc_1844CF9:   Set var_DC = Me.Txt
  loc_1844CFF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_E0, var_114, 0)
  loc_1844D0E:   Proc_183_7_EB0C44(var_104, CVar(var_E0), var_1B4)
  loc_1844D16:   var_134 = var_1C4 & var_104 
  loc_1844D2E:   Set var_F4 = Me.Txt
  loc_1844D34:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_148)
  loc_1844D43:   Proc_183_7_EB0C44(var_168, CVar(var_148))
  loc_1844D54:   var_188 = var_134 & " As DateTime) Between TStartDate And TEndDate And Cast(" & var_168 & " As DateTime) Between TStartDate And TEndDate)" 
  loc_1844D62:   unk_5608CF.Execute CStr(var_188), var_104, 
  loc_1844D6A:    = var_AC.Tag.Fields
  loc_1844D72:    = var_1A0.Item()
  loc_1844D7A:    = var_1B4.Value
  loc_1844D85:   Proc_6_39_E7C810(var_1D4)
  loc_1844DCA:   If (var_1D4 > 0) Then
  loc_1844DD3:     Call 0.Method_arg_50 (var_B4)
  loc_1844DE1:     var_104 = CVar(var_B4) 'String
  loc_1844DFA:     MsgBox(CVar("Billing Period not matched with range" & vbCrLf & "defined in Terms & Conditions."), &H10, var_104, var_114, var_134)
  loc_1844E0D:     Exit Sub
  loc_1844E0E:   End If
  loc_1844E0E: End If
  loc_1844E19: Set var_A8 = Me.Txt
  loc_1844E1F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1844E48: If (Proc_6_27_EA565C(var_AC, "Party") = 0) Then
  loc_1844E4B:   Exit Sub
  loc_1844E4C: End If
  loc_1844E4C: Call Proc_350_46_EB90A0(var_1C4)
  loc_1844E5E: var_1F6 = Me.frFacility.Visible
  loc_1844E6C: If (var_1F6 = &HFF) Then
  loc_1844E88:   MsgBox("One Of Transation is Unsaved", &H40, var_104, var_114, var_134)
  loc_1844E98:   Exit Sub
  loc_1844E99: End If
  loc_1844E99: var_C8 = 1
  loc_1844EA2: var_124 = 1
  loc_1844EC0: var_104 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1844EC6: var_114 = Trim(var_104)
  loc_1844EE2: If (var_114 = vbNullString) Then
  loc_1844EF8:   var_D8 = "Facility Detail Required "
  loc_1844EFE:   MsgBox(var_D8, 0, var_104, var_114, var_134)
  loc_1844F21:   Me.FGrid.Row = 1
  loc_1844F2D:   Set var_A8 = Me.FGrid
  loc_1844F42:   var_C8 = CVar(CLng("14737632")) 'Long
  loc_1844F51:   Me.FGrid.CellBackColor = var_C8
  loc_1844F59:   Exit Sub
  loc_1844F5A: End If
  loc_1844F5E: Set var_A8 = Me.TopCtrl1
  loc_1844F64: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(FGrid.DispID_8001)
  loc_1844F6C: var_B0 = CStr(var_124)
  loc_1844F7D: If (var_B0 = "Add") Then
  loc_1844FAD:   Set var_A8 = Me.Txt
  loc_1844FB3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Select Count(*) From FacilityBill Where DocID='", var_D8, -1)
  loc_1844FD4:   unk_5608CF.Execute var_E0 & var_B0 & "'", 0, var_F4
  loc_1844FDC:   var_104 = var_AC.Text.Fields
  loc_1844FE4:    = var_E0.Item(var_C8)
  loc_1844FEC:    = var_F4.Value
  loc_1845019:   If (var_104 > 0) Then
  loc_1845022:     Call Proc_350_51_10EB1C8(MemVar_1F92044)
  loc_1845035:     Set var_A8 = Me.Txt
  loc_184503B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1845043:     var_AC.Text = var_B0
  loc_1845052:     Exit Sub
  loc_1845053:   End If
  loc_1845056: Else
  loc_1845073:   var_AC = Me.Fields.Item("DocID")
  loc_184507B:   var_D8 = var_AC.Value
  loc_1845084:   var_B0 = CStr(var_D8)
  loc_1845092:   Set var_DC = Me.Txt
  loc_1845098:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_E0)
  loc_18450A0:   var_E0.Text = var_B0
  loc_18450B6: End If
  loc_18450B8: var_8A = &HFF
  loc_18450C4: unk_5608CF.BeginTrans var_1FC
  loc_18450E7: Set var_A8 = Me.Txt
  loc_18450ED: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From FacilityBill Where DocID='", var_D8)
  loc_18450F5: -1 = var_AC.Text
  loc_184510E: unk_5608CF.Execute var_DC & var_B0 & "'", var_8A, var_B0
  loc_1845146: Set var_A8 = Me.Txt
  loc_184514C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From FacilityBill1 Where DocID1='")
  loc_1845154: var_D8 = var_AC.Text
  loc_184515D: var_B4 = -1 & var_B0
  loc_184516D: unk_5608CF.Execute var_DC & var_B0 & "'", var_DC, 
  loc_18451A5: Set var_A8 = Me.Txt
  loc_18451AB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From FacilityBill2 Where DocID='")
  loc_18451B3: var_D8 = var_AC.Text
  loc_18451BC: var_B4 = -1 & var_B0
  loc_18451CC: unk_5608CF.Execute var_DC & var_B0 & "'", var_DC, 
  loc_1845204: Set var_A8 = Me.Txt
  loc_184520A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From SunTranFacility Where DocID='")
  loc_1845212: var_D8 = var_AC.Text
  loc_184521B: var_B4 = -1 & var_B0
  loc_184522B: unk_5608CF.Execute var_DC & var_B0 & "'", var_DC, 
  loc_1845263: Set var_A8 = Me.Txt
  loc_1845269: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, "Delete From Ledger Where DocID='")
  loc_1845271: var_D8 = var_AC.Text
  loc_184527A: var_B4 = -1 & var_B0
  loc_184528A: unk_5608CF.Execute var_DC & var_B0 & "'", var_DC, 
  loc_18452B2: Set var_A8 = Me.Txt
  loc_18452B8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_18452D3: Set var_DC = Me.Txt
  loc_18452D9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_E0)
  loc_18452EE: var_610 = Val(var_E0.Text)
  loc_18452FC: Set var_F4 = Me.Txt
  loc_1845302: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_148)
  loc_1845311: Proc_6_7_F25D88(var_104, CVar(var_148))
  loc_1845336: Set var_1A0 = Me.Txt
  loc_184533C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B4)
  loc_1845364: var_298 = Me.FGrid.TextMatrix)
  loc_184537B: Set var_2DC = Me.Txt
  loc_1845381: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2E0, var_298)
  loc_1845390: Proc_6_7_F25D88(var_300, CVar(var_2E0), CVar(CLng(&H15)))
  loc_18453A0: Set var_334 = Me.Txt
  loc_18453A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_338)
  loc_18453B5: Proc_6_7_F25D88(var_358, CVar(var_338))
  loc_18453C5: Set var_38C = Me.Txt
  loc_18453CB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_390)
  loc_18453DA: Proc_6_7_F25D88(var_3B0, CVar(var_390))
  loc_18453EA: Proc_6_8_EB0DE4(var_460, CVar(Proc_6_14_EF349C(1)))
  loc_18453F3: Set var_494 = Me.TopCtrl1
  loc_18453F9: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_610)
  loc_184543B: Set var_57C = Me.Txt
  loc_1845441: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12))
  loc_184545B: Proc_6_17_EAA2B0(var_5B0, Trim(CVar(var_580)))
  loc_184547B: var_B4 = "Insert Into FacilityBill(" & "Docid,VNo,VDate,VType,VPrefix,Site_Code, " & "PartyCode,LocationCode,DueDate,ForPeriod,ToPeriod,"
  loc_18454B1: var_114 = CVar(var_B4 & "U_Name,U_EntDt,U_AE,LogSite_Code,Remark) " & " Values(" & "'" & var_AC.Text & "'," & CStr(var_610) & ",") 'String
  loc_18454CA: var_168 = var_114 & var_104 & ",'FACL','" & CVar(Me.LblVPrefix.Caption) 
  loc_1845526: var_330 = var_168 & "','" & CVar(MemVar_1F92070) & "'," & "'" & CVar(var_1B4.Tag) & "','" & CVar(CStr(var_298)) & "'," & var_300 & "," 
  loc_1845579: var_518 = var_330 & var_358 & "," & var_3B0 & "," & "'" & CVar(MemVar_1F920C8) & "'," & var_460 & ",'" & IIf((CStr(var_4A4) = "Add"), "A", "E") 
  loc_18455B3: unk_5608CF.Execute CStr(var_518 & "','" & CVar(MemVar_1F92078) & "'," & var_5B0 & ")"), var_604, -1
  loc_1845686: For var_614 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_614 'Integer
  loc_1845690:   var_C8 = CVar(CLng(var_92)) 'Long
  loc_1845698:   var_124 = CVar(CLng(1)) 'Long
  loc_18456D4:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_18456DB:     var_C8 = CVar(CLng(var_92)) 'Long
  loc_18456E3:     var_124 = CVar(CLng(5)) 'Long
  loc_18456EC:     Set var_A8 = Me.FGrid
  loc_18456F2:     var_D8 = var_A8.TextMatrix)
  loc_1845713:     Set var_AC = Me.FGrid
  loc_184572C:     var_610 = Val(CStr(var_AC.TextMatrix)))
  loc_1845744:     Set var_DC = Me.FGrid
  loc_184574A:     var_114 = var_DC.TextMatrix)
  loc_1845776:     var_E80 = Val(CStr(Right(CVar(CStr(var_114)), 8)))
  loc_1845784:     Set var_E0 = Me.Txt
  loc_184578A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_F4, var_E80, var_114, CVar(CLng(5)), CVar(CLng(var_92)), var_610)
  loc_1845799:     Proc_6_7_F25D88(var_168, CVar(var_F4), CVar(CLng(0)), CVar(CLng(var_92)), var_D8)
  loc_18457A2:     var_3D0 = CVar(CLng(var_92)) 'Long
  loc_18457B9:     var_1C4 = Me.FGrid.TextMatrix)
  loc_18457C5:     var_1F4 = 5
  loc_18457F0:     Set var_19C = Me.LblVPrefix
  loc_1845809:     Set var_1A0 = Me.Txt
  loc_184580F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1B4, var_624, var_1C4, CVar(CLng(5)))
  loc_1845817:     var_3D0 = var_1B4.Tag
  loc_1845820:     var_5D0 = CVar(CLng(var_92)) 'Long
  loc_1845828:     var_634 = CVar(CLng(8)) 'Long
  loc_1845837:     var_3A0 = Me.FGrid.TextMatrix)
  loc_1845847:     var_664 = CVar(CLng(var_92)) 'Long
  loc_184584F:     var_684 = CVar(CLng(9)) 'Long
  loc_1845878:     var_6B4 = CVar(CLng(var_92)) 'Long
  loc_1845880:     var_6D4 = CVar(CLng(&HA)) 'Long
  loc_18458A9:     var_704 = CVar(CLng(var_92)) 'Long
  loc_18458B1:     var_724 = CVar(CLng(&HB)) 'Long
  loc_18458D0:     var_754 = CVar(CLng(var_92)) 'Long
  loc_18458D8:     var_774 = CVar(CLng(2)) 'Long
  loc_184592B:     var_E90 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1845943:     Set var_390 = Me.FGrid
  loc_1845949:     var_86C = var_390.TextMatrix)
  loc_184595C:     var_E98 = Val(CStr(var_86C))
  loc_184598D:     var_EA0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_18459A5:     Set var_57C = Me.FGrid
  loc_18459BE:     var_EA8 = Val(CStr(var_57C.TextMatrix)))
  loc_18459ED:     Proc_6_7_F25D88(var_A48, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_92)), var_EA8, CVar(CLng(&H10)), CVar(CLng(var_92)), var_EA0)
  loc_1845A07:     Set var_608 = Me.FGrid
  loc_1845A1E:     Proc_6_7_F25D88(var_AE8, CVar(CStr(var_608.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_92)), CVar(CLng(&HE)), CVar(CLng(var_92)))
  loc_1845A2E:     Set var_B3C = Me.Txt
  loc_1845A34:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_B40, var_E98, CVar(CLng(4)))
  loc_1845A53:     Proc_6_8_EB0DE4(var_C10, CVar(Proc_6_14_EF349C(CVar(CLng(3)))))
  loc_1845A5C:     Set var_C44 = Me.TopCtrl1
  loc_1845A62:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_92)))
  loc_1845A9D:     var_D38 = CVar(CLng(var_92)) 'Long
  loc_1845AA5:     var_D58 = CVar(CLng(&HA)) 'Long
  loc_1845AAE:     Set var_D6C = Me.FGrid
  loc_1845AB4:     var_D7C = var_D6C.TextMatrix)
  loc_1845ADB:     var_E10 = Me.FGrid.TextMatrix)
  loc_1845AFB:     var_B0 = "Insert Into FacilityBill1(" & "DocId,SNo,VNo,VDate,VType,VPrefix,Site_Code,"
  loc_1845B09:     var_B8 = var_B0 & "PartyCode,FacilityCode,FacilityTax,RevCode,AppDate,Unit,UnitRate," & "Amount,DiscPer,DiscAmt,ForPeriod,ToPeriod,"
  loc_1845B10:     var_200 = var_B8 & "Docid1, "
  loc_1845B43:     var_224 = var_200 & "U_Name,U_EntDt,U_AE,LogSite_Code,TaxStru,LocationCode) " & "Values(" & "'" & CStr(var_D8) & "'," & CStr(var_610)
  loc_1845B6C:     var_198 = CVar(var_224 & "," & CStr(var_E80) & ",") & var_168 & ",'" 
  loc_1845BA2:     var_330 = var_198 & Trim(Mid(CVar(CStr(var_1C4)), 4, var_1F4)) & "','" & CVar(var_19C.Caption) & "','" & CVar(MemVar_1F92070) & "'," 
  loc_1845BB2:     var_358 = CVar(var_624) 'String
  loc_1845BE2:     var_460 = var_330 & "'" & var_358 & "','" & CVar(CStr(var_3A0)) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" 
  loc_1845BFA:     var_518 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1845C25:     var_5C0 = var_460 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & var_518 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_E90) 
  loc_1845C8A:     var_AF8 = var_5C0 & "," & vbNullString & CVar(var_E98) & "," & CVar(var_EA0) & "," & CVar(var_EA8) & "," & var_A48 & "," & var_AE8 
  loc_1845CC2:     var_BD0 = var_AF8 & "," & "'" & CVar(Proc_6_38_E68A98(CVar(var_B40), CVar(CLng(var_92)), var_E90)) & "'," & "'" & CVar(MemVar_1F920C8) 
  loc_1845D09:     var_D9C = var_BD0 & "'," & var_C10 & ",'" & IIf((CStr(var_C54) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(var_D7C)) 
  loc_1845D34:     unk_5608CF.Execute CStr(var_D9C & "','" & CVar(CStr(var_E10)) & "')"), var_E74, -1
  loc_1845E70:     Set var_A8 = Me.TopCtrl1
  loc_1845E76:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E78)
  loc_1845E8A:     Set var_AC = Me.TopCtrl1
  loc_1845E90:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr(var_E10) = "Add"))
  loc_1845EB6:     If (CVar(CLng(var_92)) Or (CStr(CVar(CLng(&H15))) = "Edit")) Then
  loc_1845EBD:       var_C8 = CVar(CLng(var_92)) 'Long
  loc_1845ED4:       var_D8 = Me.FGrid.TextMatrix)
  loc_1845EEE:       var_104 = CVar(CStr(var_D8)) 'String
  loc_1845F12:       Set var_AC = Me.Txt
  loc_1845F18:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_DC, var_200, var_D8, CVar(CLng(5)))
  loc_1845F20:       var_C8 = var_DC.Text
  loc_1845F2E:       Proc_6_7_F25D88(var_198, CVar(var_200), var_D7C)
  loc_1845F47:       var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1845F6B:       var_178 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='") & Trim(Mid(var_104, 4, 5)) & "' And VP.Date_From<=" 
  loc_1845F72:       var_1C4 = var_178 & var_198 
  loc_1845F89:       unk_5608CF.Execute CStr(var_1C4 & " Order By VP.Date_From DESC"), var_1F4, -1
  loc_1845F94:       Set var_88 = var_E0
  loc_1845FDE:       If (var_88.RecordCount > 0) Then
  loc_1846007:         Proc_6_39_E7C810(var_104, CVar(var_88.Fields.Item("start_srl_no")), var_E0)
  loc_1846013:         var_F0 = CVar(CLng(var_92)) 'Long
  loc_1846057:         If (CVar(CLng(6)) < CVar(Val(CStr(Me.FGrid.TextMatrix))))) Then
  loc_184605E:           var_C8 = CVar(CLng(var_92)) 'Long
  loc_1846066:           var_124 = CVar(CLng(6)) 'Long
  loc_1846088:           var_610 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_18460A6:           var_104 = Me.FGrid.TextMatrix)
  loc_18460FC:           Proc_6_7_F25D88(var_1C4, CVar(var_88.Fields.Item("Date_From")), var_104, CVar(CLng(5)), CVar(CLng(var_92)), var_610)
  loc_184612F:           var_208 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_610) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1846153:           var_1D4 = CVar(var_208 & MemVar_1F92078 & "') and V_Type='") & Trim(Mid(CVar(CStr(var_104)), 4, 5)) & "' and Date_From=" & var_1C4 
  loc_1846161:           unk_5608CF.Execute CStr(var_1D4), var_1F4, -1
  loc_18461A1:         End If
  loc_18461A1:       End If
  loc_18461A1:     End If
  loc_18461A1:   End If
  loc_18461A4: Next var_614 'Integer
  loc_18461CE: For var_EB0 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_9A = var_EB0 'Integer
  loc_18461D8:   var_C8 = CVar(CLng(var_9A)) 'Long
  loc_18461E0:   var_124 = CVar(CLng(2)) 'Long
  loc_1846227:   Set var_AC = Me.FGCat
  loc_184622D:   var_144 = var_AC.TextMatrix)
  loc_1846238:   var_B0 = CStr(var_144)
  loc_1846266:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_B0)) <> CDbl(0))) Then
  loc_1846277:     Set var_A8 = Me.Txt
  loc_184627D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0, CVar(CLng(var_9A)))
  loc_1846285:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_AC.Text
  loc_184628E:     var_C8 = CVar(CLng(var_9A)) 'Long
  loc_18462A5:     var_D8 = Me.FGCat.TextMatrix)
  loc_18462BD:     var_254 = CVar(CLng(1)) 'Long
  loc_18462C6:     Set var_E0 = Me.FGCat
  loc_18462CC:     var_104 = var_E0.TextMatrix)
  loc_18462DF:     var_610 = Val(CStr(var_104))
  loc_1846310:     var_E80 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1846321:     Set var_148 = Me.Txt
  loc_1846327:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_19C, var_624, var_E80, CVar(CLng(0)), CVar(CLng(var_9A)), var_610)
  loc_184632F:     var_254 = var_19C.Text
  loc_184633C:     var_E88 = Val(var_624)
  loc_184634A:     Set var_1A0 = Me.Txt
  loc_1846350:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B4, var_E88, CVar(CLng(var_9A)), var_D8)
  loc_184635F:     Proc_6_7_F25D88(var_144, CVar(var_1B4), CVar(CLng(9)))
  loc_1846368:     var_3D0 = CVar(CLng(var_9A)) 'Long
  loc_1846370:     var_410 = CVar(CLng(2)) 'Long
  loc_1846379:     Set var_288 = Me.FGCat
  loc_184638F:     var_4B8 = CVar(CLng(var_9A)) 'Long
  loc_1846397:     var_4E8 = CVar(CLng(4)) 'Long
  loc_18463B9:     var_E90 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_18463D1:     Set var_2E0 = Me.FGCat
  loc_18463EA:     var_E98 = Val(CStr(var_2E0.TextMatrix)))
  loc_184641B:     var_EA0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1846429:     Proc_6_7_F25D88(var_358, MemVar_1F920EC, var_EA0, CVar(CLng(6)), CVar(CLng(var_9A)), var_E98, CVar(CLng(5)), CVar(CLng(var_9A)))
  loc_1846432:     Set var_338 = Me.TopCtrl1
  loc_1846438:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E90)
  loc_1846483:     var_B4 = "Insert Into FacilityBill2(DocId,docid1,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_18464BE:     var_224 = CStr(var_E80)
  loc_18464DA:     var_61C = var_B4 & var_B0 & "','" & CStr(var_D8) & "'," & CStr(var_610) & "," & var_224 & ",'FACL','" & global_76 & "','"
  loc_18464E1:     var_620 = var_61C & MemVar_1F92070
  loc_1846532:     var_298 = CVar(var_620 & "'," & CStr(var_E88) & ",") & var_144 & ",'','" & CVar(CStr(var_288.TextMatrix))) & "'," & CVar(var_E90) & "," 
  loc_1846584:     var_400 = var_298 & CVar(var_E98) & "," & CVar(var_EA0) & ",'" & CVar(MemVar_1F920C8) & "'," & var_358 & ",'" & IIf((CStr(var_3A0) = "Add"), "A", "E") 
  loc_184658D:     var_420 = var_400 & "','N','" 
  loc_18465AE:     unk_5608CF.Execute CStr(var_420 & CVar(MemVar_1F92078) & "')"), var_460, -1
  loc_1846656:   End If
  loc_1846659: Next var_EB0 'Integer
  loc_184666A: Set var_A8 = Me.TxtGt
  loc_1846670: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_1F6, var_92)
  loc_184667B: For var_EB4 =  To var_1F6: 1 = var_EB4 'Integer
  loc_184668E:   Set var_A8 = Me.TxtGt
  loc_1846694:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_AC)
  loc_18466AE:   If (var_AC.Visible = &HFF) Then
  loc_18466BF:     Set var_A8 = Me.Txt
  loc_18466C5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_18466E0:     Set var_DC = Me.Txt
  loc_18466E6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_E0)
  loc_1846709:     Set var_F4 = Me.Txt
  loc_184670F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_148)
  loc_184671E:     Proc_6_7_F25D88(var_104, CVar(var_148))
  loc_1846731:     Set var_19C = Me.Txt
  loc_1846737:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1A0)
  loc_1846751:     Set var_1B4 = Me.LblCap
  loc_1846757:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_288)
  loc_184677F:     Set var_2DC = Me.TxtPer
  loc_1846785:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_2E0)
  loc_184679A:     var_E80 = Val(var_2E0.Tag)
  loc_18467AA:     Set var_334 = Me.LblCap
  loc_18467B0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_338, var_224)
  loc_18467CA:     Set var_38C = Me.LblAt
  loc_18467D0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_390)
  loc_18467EA:     Set var_494 = Me.TxtGt
  loc_18467F0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_57C)
  loc_184680A:     Set var_580 = Me.TxtPer
  loc_1846810:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_608)
  loc_1846825:     var_E88 = Val(var_608.Text)
  loc_1846835:     Set var_B3C = Me.TxtGt
  loc_184683B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_B40, var_61C)
  loc_1846850:     var_E90 = Val(var_61C)
  loc_1846860:     Set var_C44 = Me.LblDummy
  loc_1846866:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_D6C, var_620)
  loc_184687B:     var_E98 = Val(var_620)
  loc_1846889:     Proc_6_7_F25D88(var_420, MemVar_1F920EC)
  loc_1846892:     Set var_E00 = Me.TopCtrl1
  loc_1846898:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E98)
  loc_18468DA:     Set var_E78 = Me.Txt
  loc_18468E0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_EB8)
  loc_18468EF:     Proc_6_7_F25D88(var_518, CVar(var_EB8))
  loc_1846901:     Set var_EBC = Me.LblDummy
  loc_1846907:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_EC0)
  loc_1846928:     var_B4 = "Insert Into SunTranFacility (DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_AC.Text
  loc_1846937:     var_200 = CStr(var_92)
  loc_1846977:     var_178 = CVar(var_B4 & "'," & var_200 & ",'FACL'," & CStr(Val(var_E0.Text)) & ",") & var_104 & ",'" & CVar(var_1A0.Tag) & "','" 
  loc_18469C1:     var_300 = var_178 & Trim(CVar(var_288.Tag)) & "'," & CVar(var_338.Caption) & ",'" & CVar(var_224) & "','" & CVar(var_390.Tag) & "','" 
  loc_1846A1A:     var_3E0 = var_300 & CVar(var_57C.Tag) & "'," & CVar(var_B40.Text) & "," & CVar(var_D6C.Caption) & "," & CVar(var_E98) & ",'" & CVar(MemVar_1F920C8) 
  loc_1846A66:     var_5A0 = var_3E0 & "'," & var_420 & ",'" & IIf((CStr(var_460) = "Add"), "A", "E") & "'," & var_518 & ",'" & CVar(var_EC0.Tag) & "','','N','" 
  loc_1846A9A:     unk_5608CF.Execute CStr(var_5A0 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_86C, -1
  loc_1846B68:   End If
  loc_1846B6B: Next var_EB4 'Integer
  loc_1846B74: Set var_A8 = Me.TopCtrl1
  loc_1846B7A: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1846B93: If (CStr() = "Add") Then
  loc_1846BAA:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1846BD0:   Set var_A8 = Me.Txt
  loc_1846BD6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_AC, var_200, CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='FACL' And VP.Date_From<="))
  loc_1846BDE:   var_158 = var_AC.Text
  loc_1846BEC:   Proc_6_7_F25D88(var_104, CVar(var_200))
  loc_1846BF4:   var_134 = -1 & var_104 
  loc_1846BFD:   var_144 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & "'," & var_200 & ",'FACL'," & CStr(Val(var_E0.Text)) & ",") & var_104 & " Order By VP.Date_From DESC" 
  loc_1846C0B:   unk_5608CF.Execute CStr(var_144), var_DC, 
  loc_1846C16:   Set var_88 = var_DC
  loc_1846C50:   If (var_88.RecordCount > 0) Then
  loc_1846C61:     Set var_A8 = Me.Txt
  loc_1846C67:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC)
  loc_1846C6F:     var_B0 = var_AC.Text
  loc_1846C7C:     var_610 = Val(var_B0)
  loc_1846C85:     var_C8 = "V_Type"
  loc_1846CCC:     Proc_6_7_F25D88(var_158, CVar(var_88.Fields.Item("Date_From")))
  loc_1846CFF:     var_208 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_610) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1846D27:     var_210 = CStr(CVar(var_208 & MemVar_1F92078 & "') and V_Type='") & var_88.Fields.Item(var_C8).Value & "' and Date_From=" & var_158)
  loc_1846D31:     unk_5608CF.Execute var_210, var_178, -1
  loc_1846D6B:   End If
  loc_1846D6B: End If
  loc_1846D71: unk_5608CF.CommitTrans
  loc_1846D78: var_8A = 0
  loc_1846D89: Set var_A8 = Me.Txt
  loc_1846D8F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC, var_B0)
  loc_1846D97: var_8A = var_AC.Text
  loc_1846DA3: Call Proc_350_50_1639A7C(var_B0, var_19C)
  loc_1846DC0: Set var_A8 = Me.Txt
  loc_1846DC6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1846DE2: var_8A = 0
  loc_1846DF0: Me.Requery -1
  loc_1846E1A: Me.Find "SearchCode ='" & var_AC.Text & "'", 0, 1
  loc_1846E2A: Set var_A8 = Me.TopCtrl1
  loc_1846E30: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C8)
  loc_1846E49: If (CStr(var_8A) = "Add") Then
  loc_1846E4C:   Call TopCtrl1_UnknownEvent_A()
  loc_1846E51:   Exit Sub
  loc_1846E52: End If
  loc_1846E75: Call Proc_350_45_F5E89C(Proc_5_1_100CB50("INI", Me), global_52)
  loc_1846E80: Call Proc_350_42_16E6E6C(var_610)
  loc_1846E8A: Set var_88 = Nothing
  loc_1846E8D: Exit Sub
  loc_1846E8E: ' Referenced from: 1844BF4
  loc_1846E94: If (var_8A = &HFF) Then
  loc_1846E9D:   unk_5608CF.RollbackTrans
  loc_1846EA2: End If
  loc_1846EA2: Proc_6_60_E62BC4()
  loc_1846EA7: Exit Sub
End Sub

Private Sub cmdCancel_Click() 'E196EC
  'Data Table: 5608C8
  loc_E196E0: Me.frFacility.Visible = False
  loc_E196E8: Exit Sub
End Sub

Private Sub CmdDelete_Click() 'F7EA50
  'Data Table: 5608C8
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_B0 As Variant
  Dim var_C4 As Frame
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_F7E900: Set var_8C = Me.TopCtrl1
  loc_F7E906: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F7E91F: If (CStr() = "Browse") Then
  loc_F7E922:   Exit Sub
  loc_F7E923: End If
  loc_F7E942: If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F7E960:   var_B0 = CVar(CLng(Val(Me.frFacility.Tag))) 'Long
  loc_F7E969:   Set var_C4 = Me.FGrid
  loc_F7E9A3:   Me.frFacility.Tag = CStr(CLng(Me.FGrid.Row))
  loc_F7E9B8: Else
  loc_F7E9DD:   For var_C8 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_86 = var_C8 'Integer
  loc_F7E9FE:     var_B0 = CVar(CLng(Val(Me.frFacility.Tag))) 'Long
  loc_F7EA07:     var_D8 = CVar(CLng(var_86)) 'Long
  loc_F7EA0C:     var_F8 = vbNullString
  loc_F7EA16:     Set var_C4 = Me.FGrid
  loc_F7EA1C:     LateIdCallSt
  loc_F7EA31:   Next var_C8 'Integer
  loc_F7EA36: End If
  loc_F7EA3B: var_A0 = 0
  loc_F7EA46: Call Proc_350_60_1885A1C(9)
  loc_F7EA4E: Exit Sub
End Sub

Private Sub Form_Load() '117A160
  'Data Table: 5608C8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_AC As String
  Dim var_BC As Variant
  Dim var_A4 As String
  Dim var_16C As Variant
  loc_1179D98: On Error Goto loc_117A159
  loc_1179DA2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1179DBA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1179DD5: Me.Fgrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1179DEB: Me.frFacility.BackColor = CLng(MemVar_1F921B0)
  loc_1179E01: Me.LblTerm.BackColor = CLng(MemVar_1F921B0)
  loc_1179E18: Me.LblUser.Left = CDbl(13500)
  loc_1179E2F: Me.LblUser.Top = CDbl(7800)
  loc_1179E46: Me.LblLDt.Top = CDbl(8160)
  loc_1179E5D: Me.LblLDt.Left = CDbl(13500)
  loc_1179E6D: If (MemVar_1F92190 = "Yes") Then
  loc_1179E7C:   Me.QrImage.Visible = True
  loc_1179E90:   Me.FreInvInfo.Visible = True
  loc_1179EA4:   Me.CmdeInvoiceJson.Visible = True
  loc_1179EB8:   Me.CmdGeneInvoice.Visible = True
  loc_1179EC0: End If
  loc_1179EDC: Me.CursorLocation = 3
  loc_1179F06: var_BC = CVar("Select Code,Name,TaxStru From FacilityMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1179F10: Me.Open var_BC, CVar(MemVar_1F92044), 3
  loc_1179F24: CVarUnk
  loc_1179F29: VerifyVarObj
  loc_1179F2F: Set var_A8 = Me.DGFacility
  loc_1179F35: LateIdStAd
  loc_1179F5F: Me.DGFacility.CursorLocation = 3
  loc_1179F82: var_AC = "Select SG.SubCode As Code,SG.Name,IsNull(C.CityName,'') CityName,IsNull(SG.GSTIN,'') GSTIN From SubGroup SG Left Join City C on SG.CityCode=C.CityCode Where (SG.LOGSITE_CODE='" & MemVar_1F92078
  loc_1179F93: Me.Open CVar(var_AC & "' or SG.LOGSITE_CODE='HO') and SG.Nature in ('Customer') Order by SG.Name"), CVar(MemVar_1F92044), 3
  loc_1179FA7: CVarUnk
  loc_1179FAC: VerifyVarObj
  loc_1179FB2: Set var_A8 = Me.DGParty
  loc_1179FB8: LateIdStAd
  loc_1179FE2: Me.DGParty.CursorLocation = 3
  loc_117A00C: var_BC = CVar("Select Code,Name,TStartDate,TEndDate,TTerm From locationMast Where (locationMast.LOGSITE_CODE='" & MemVar_1F92078 & "' or locationMast.LOGSITE_CODE='HO')  Order by Name") 'String
  loc_117A02A: CVarUnk
  loc_117A02F: VerifyVarObj
  loc_117A03B: LateIdStAd
  loc_117A065: Me.DGLocation.CursorLocation = 3
  loc_117A075: Proc_6_7_F25D88(var_BC, MemVar_1F920F4, Me.DGLocation, New, 1, -1, Me.DGLocation)
  loc_117A091: var_A4 = "Select F.Docid as SearchCode,F.DocID,F.Site_Code,F.LogSite_Code From FacilityBill F Inner Join Voucher_Type V On (F.VType= V.V_Type And F.LogSite_Code=V.LogSite_Code) Where F.VDATE>="
  loc_117A0C8: var_16C = var_A4 & var_BC & " AND v.Site_Code='" & CVar(MemVar_1F92070) & "' and V.LogSite_Code='" & CVar(MemVar_1F92078) & "' And F.Site_Code='" 
  loc_117A0E6: r_BC, CVar(MemVar_1F92044), 3 var_16C & CVar(MemVar_1F92070) & "' Order by Docid ", CVar(MemVar_1F92044), 3
  loc_117A123: Call Proc_350_45_F5E89C(Proc_5_1_100CB50("INI", Me, New, 1, -1, New), 1, -1, Me)
  loc_117A146: Proc_6_23_DFBA28(Me, 7380, 11940)
  loc_117A14E: Call Proc_350_43_1435948(New, 1)
  loc_117A153: Call Proc_350_42_16E6E6C(-1)
  loc_117A158: Exit Sub
  loc_117A159: ' Referenced from: 1179D98
  loc_117A159: Proc_6_60_E62BC4()
  loc_117A15E: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E286F4
  'Data Table: 5608C8
  loc_E286CC: On Error Goto loc_E286EC
  loc_E286E3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E286EB: Exit Sub
  loc_E286EC: ' Referenced from: E286CC
  loc_E286EC: Proc_6_60_E62BC4(Shift)
  loc_E286F1: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'ECEA6C
  'Data Table: 5608C8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECE9CE: Set var_88 = Me.TxtGt
  loc_ECE9D4: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_ECE9E2: Proc_6_74_E226B0(var_8C)
  loc_ECE9EE: Call Proc_350_46_EB90A0(var_8C)
  loc_ECEA02: Set var_88 = Me.TxtGt
  loc_ECEA08: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECEA10: var_8C.SelStart = 0
  loc_ECEA29: Set var_88 = Me.TxtGt
  loc_ECEA2F: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_ECEA4A: Set var_90 = Me.TxtGt
  loc_ECEA50: Call 0.Method_TxtGt_GotFocus0 (Index, var_98)
  loc_ECEA58: var_98.SelLength = Len(var_8C.Text)
  loc_ECEA6B: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BCD8
  'Data Table: 5608C8
  loc_E5BCA5: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BCAE:   Proc_6_75_E527CC(Shift)
  loc_E5BCB3: End If
  loc_E5BCC8: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BCD1:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5BCD6: End If
  loc_E5BCD6: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'F7C940
  'Data Table: 5608C8
  Dim var_8C As Variant
  Dim arg_10 As Integer
  Dim var_FC As TextBox
  loc_F7C812: Set var_88 = Me.TxtGt
  loc_F7C818: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_F7C833: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_F7C83F: On Error Goto loc_F7C93E
  loc_F7C84F: Set var_88 = Me.LblCap
  loc_F7C855: Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7C85D: 2 = var_8C.Tag
  loc_F7C894: If (Trim(CVar(var_98)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_F7C89D:   If (arg_10 = &H2D) Then
  loc_F7C8A2:     arg_10 = 0
  loc_F7C8A5:   End If
  loc_F7C8B2:   Set var_88 = Me.TxtGt
  loc_F7C8B8:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7C8C0:   arg_10 = var_8C.Text
  loc_F7C910:   Set var_90 = Me.TxtPer
  loc_F7C916:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_FC, CStr(Format(CVar(((Val(var_98) * CDbl(&H64)) / global_92)), "0.00000")), 1)
  loc_F7C91E:   var_FC.Text = 1
  loc_F7C93E:   ' Referenced from: F7C83F
  loc_F7C93E: End If
  loc_F7C93E: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E505C4
  'Data Table: 5608C8
  loc_E505A2: Set var_88 = Me.TxtGt
  loc_E505A8: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E505B6: Proc_6_73_E22704(var_8C)
  loc_E505C2: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'E1F9F0
  'Data Table: 5608C8
  loc_E1F9D9: var_8C = 0
  loc_E1F9E5: Call Proc_350_60_1885A1C(Cancel)
  loc_E1F9ED: Exit Sub
End Sub

Private Sub CmdeInvoiceSql_Click() '1A7B994
  'Data Table: 5608C8
  Dim var_128 As Variant
  Dim var_12C As String
  Dim var_130 As Variant
  Dim var_134 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_140 As Variant
  Dim var_144 As String
  Dim var_148 As Variant
  Dim var_14C As String
  Dim var_15C As Variant
  Dim var_154 As Variant
  Dim var_160 As String
  Dim unk_5608CF As Connection15
  Dim var_90 As Recordset15
  Dim var_170 As Variant
  Dim var_150 As Variant
  Dim var_180 As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_BC As Variant
  Dim var_C4 As Double
  Dim var_CC As Variant
  Dim var_D4 As Variant
  Dim var_DC As Double
  Dim var_E4 As Double
  Dim var_EC As Variant
  Dim var_F4 As Variant
  Dim var_FC As Variant
  Dim var_9A As Variant
  Dim var_88 As Variant
  Dim var_1F4 As Variant
  Dim var_184 As Variant
  Dim var_1F8 As Variant
  Dim var_19C As Variant
  Dim var_1EC As Variant
  Dim var_1CC As Variant
  Dim var_1FC As Variant
  Dim var_200 As Variant
  Dim var_1DC As Variant
  Dim var_220 As Variant
  Dim var_224 As Variant
  Dim var_8C As Variant
  Dim var_210 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_264 As Variant
  Dim var_274 As Variant
  Dim var_2D8 As Variant
  Dim var_340 As Variant
  Dim var_450 As Variant
  Dim var_4B8 As Variant
  Dim var_4E0 As Variant
  Dim var_568 As Variant
  Dim var_5F0 As Variant
  Dim var_638 As Variant
  Dim var_65C As Fields15
  Dim var_680 As Variant
  Dim var_6E8 As Variant
  Dim var_930 As Variant
  Dim var_C50 As Variant
  Dim var_1220 As Variant
  Dim var_14D8 As Variant
  Dim var_17B0 As Variant
  Dim var_1A88 As Variant
  Dim var_1D60 As Variant
  Dim var_2038 As Variant
  Dim var_2310 As Variant
  Dim var_92 As Integer
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_11C As Double
  Dim var_124 As Double
  Dim var_244 As Variant
  Dim var_4F0 As Integer
  Dim var_628 As Variant
  Dim var_284 As Variant
  Dim var_2E8 As Variant
  Dim var_350 As Variant
  Dim var_558 As Variant
  Dim var_5C0 As Variant
  Dim var_690 As Variant
  loc_1A786C4: On Error Goto loc_1A7B979
  loc_1A786CE: var_128 = "Select F1.DocId,F1.SNo,S.Name As PartyName,S.Add1,S.Add2,S.Add3,C.CityName,ST.ShortName StateCode,ST.Name StateName,S.PIN,S.Mobile,S.Email,S.GSTIN,S.LegalName,S.TradeName,LM.Name As Location,F.Vno As PartyBillNo,F.Vdate As BillDate,F.DueDate,F.Remark,F1.VType," & "F1.Vno As FacilityBillNo,FM.Name As Facility,FM.ChargeType,F1.Unit As Qty,F1.UnitRate,F1.Amount,F1.DiscAmt,F1.AppDate,F1.ForPeriod,"
  loc_1A786F1: var_13C = var_128 & "F1.ToPeriod,FR1.Reading As LReading,Case When '" & MemVar_1F92164 & "'<>'' Then '" & MemVar_1F92164 & "'+'/' Else '' End +F1.VType+'/'+'"
  loc_1A786FF: var_144 = var_13C & MemVar_1F92168 & "'+'/'+Cast(F1.Vno As Varchar) As BillVou,FM.SACCode From ((((((((FacilityBill F Right Join FacilityBill1 F1 On F1.DocId1=F.Docid) Left Join "
  loc_1A7870D: var_14C = var_144 & "SubGroup S on S.SubCode=F.PartyCode) Left Join LocationMast LM on LM.Code=F1.LocationCode) Left Join " & "FacilityMast FM on FM.Code=F1.FacilityCode) Left Join City C on S.CityCode=C.CityCode) Left Join State ST on C.State=ST.Code) Left Join FMReading FR On FR.LocationCode=F1.LocationCode And FR.FacilityCode=F1.FacilityCode) "
  loc_1A78714: var_15C = var_14C & "Left Join FMReading1 FR1 On FR1.Code=FR.Code And FR1.ForDate=dateadd(day,1,F1.ToPeriod)) where F.DocId='"
  loc_1A78725: Set var_150 = Me.Txt
  loc_1A7872B: Call 0.Method_CmdeInvoiceSql_Click0 (CInt(5), var_154)
  loc_1A78733: var_158 = var_154.Text
  loc_1A7873C: var_160 = var_15C & var_158
  loc_1A78743: var_98 = var_160 & "'"
  loc_1A78772: If (var_98 = vbNullString) Then
  loc_1A78775:   Exit Sub
  loc_1A78776: End If
  loc_1A7878C: unk_5608CF.Execute var_98, var_180, -1
  loc_1A78797: Set var_88 = var_150
  loc_1A787C4: Call 0.Method_CmdeInvoiceSql_Click0 (CInt(5), var_154, var_128, "SELECT SM.Nature,ST.Amount FROM SunTranFacility AS ST INNER JOIN SundryMast SM ON ST.SunCode=SM.Code WHERE DocId='")
  loc_1A787CC: var_180 = var_154.Text
  loc_1A787D5: var_12C = -1 & var_128
  loc_1A787E5: unk_5608CF.Execute var_128 & "F1.ToPeriod,FR1.Reading As LReading,Case When '" & "' Order by SNo", var_184, Me.Txt
  loc_1A787F0: Set var_90 = var_184
  loc_1A78808: ' Referenced from: 1A78C6F
  loc_1A7880E: var_186 = var_90.EOF
  loc_1A78817: If Not(var_186) Then
  loc_1A78842:   var_18C = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Nature")))
  loc_1A78853:   If (var_18C = "Amount") Then
  loc_1A78883:     Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")))
  loc_1A7888B:     var_1BC = (CVar(var_B4) + var_19C)
  loc_1A78890:     var_A4 = CSng(var_1BC)
  loc_1A788A2:   Else
  loc_1A788AA:     If (var_18C = "Net Amount") Then
  loc_1A788DA:       Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")))
  loc_1A788E2:       var_1BC = (CVar(var_B4) + var_19C)
  loc_1A788E7:       var_AC = CSng(var_1BC)
  loc_1A788F9:     Else
  loc_1A78901:       If (var_18C = "Addition") Then
  loc_1A78931:         Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_B4))
  loc_1A78939:         var_1BC = (var_AC + var_19C)
  loc_1A7893E:         var_B4 = CSng(var_1BC)
  loc_1A78950:       Else
  loc_1A78958:         If (var_18C = "Deduction") Then
  loc_1A78988:           Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_BC))
  loc_1A78990:           var_1BC = (var_B4 + var_19C)
  loc_1A78995:           var_BC = CSng(var_1BC)
  loc_1A789A7:         Else
  loc_1A789AF:           If (var_18C = "Discount") Then
  loc_1A789DF:             Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_C4))
  loc_1A789E7:             var_1BC = (var_BC + var_19C)
  loc_1A789EC:             var_C4 = CSng(var_1BC)
  loc_1A789FE:           Else
  loc_1A78A06:             If Not (var_18C = "Sale Tax") Then
  loc_1A78A11:               If (var_18C = "Luxury Tax") Then
  loc_1A78A14:               End If
  loc_1A78A41:               Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_CC))
  loc_1A78A49:               var_1BC = (var_C4 + var_19C)
  loc_1A78A4E:               var_CC = CSng(var_1BC)
  loc_1A78A60:             Else
  loc_1A78A68:               If (var_18C = "Round Off") Then
  loc_1A78A98:                 Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_D4))
  loc_1A78AA0:                 var_1BC = (var_CC + var_19C)
  loc_1A78AA5:                 var_D4 = CSng(var_1BC)
  loc_1A78AB7:               Else
  loc_1A78ABF:                 If (var_18C = "Service Charge") Then
  loc_1A78AEF:                   Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_DC))
  loc_1A78AF7:                   var_1BC = (var_D4 + var_19C)
  loc_1A78AFC:                   var_DC = CSng(var_1BC)
  loc_1A78B0E:                 Else
  loc_1A78B16:                   If (var_18C = "Service Tax") Then
  loc_1A78B46:                     Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_E4))
  loc_1A78B4E:                     var_1BC = (var_DC + var_19C)
  loc_1A78B53:                     var_E4 = CSng(var_1BC)
  loc_1A78B65:                   Else
  loc_1A78B6D:                     If (var_18C = "CGST") Then
  loc_1A78B9D:                       Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_EC))
  loc_1A78BA5:                       var_1BC = (var_E4 + var_19C)
  loc_1A78BAA:                       var_EC = CSng(var_1BC)
  loc_1A78BBC:                     Else
  loc_1A78BC4:                       If (var_18C = "SGST") Then
  loc_1A78BF4:                         Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), CVar(var_F4))
  loc_1A78BFC:                         var_1BC = (var_EC + var_19C)
  loc_1A78C01:                         var_F4 = CSng(var_1BC)
  loc_1A78C13:                       Else
  loc_1A78C1B:                         If (var_18C = "IGST") Then
  loc_1A78C21:                           var_1AC = CVar(var_FC) 'Double
  loc_1A78C4B:                           Proc_6_39_E7C810(var_19C, CVar(var_90.Fields.Item("Amount")), var_1AC)
  loc_1A78C53:                           var_1BC = (var_F4 + var_19C)
  loc_1A78C58:                           var_FC = CSng(var_1BC)
  loc_1A78C67:                         End If
  loc_1A78C67:                       End If
  loc_1A78C67:                     End If
  loc_1A78C67:                   End If
  loc_1A78C67:                 End If
  loc_1A78C67:               End If
  loc_1A78C67:             End If
  loc_1A78C67:           End If
  loc_1A78C67:         End If
  loc_1A78C67:       End If
  loc_1A78C67:     End If
  loc_1A78C67:   End If
  loc_1A78C6A:   var_90.MoveNext
  loc_1A78C6F:   GoTo loc_1A78808
  loc_1A78C72: End If
  loc_1A78C99: If (((((var_CC = CDbl(0)) And (var_E4 = CDbl(0))) And (var_EC = CDbl(0))) And (var_F4 = CDbl(0))) And (var_FC = CDbl(0))) Then
  loc_1A78CAA:   var_170 = "This is Not a Tax Invoice"
  loc_1A78CB5:   MsgBox(var_170, &H10, var_19C, var_1BC, var_1EC)
  loc_1A78CCA:   Set var_88 = Nothing
  loc_1A78CD2:   Set var_90 = Nothing
  loc_1A78CD5:   Exit Sub
  loc_1A78CD6: End If
  loc_1A78CDA: Set var_8C = New 
  loc_1A78CE5: Set var_8C = Proc_96_103_1575E24(var_8C, var_FC)
  loc_1A78CEA: var_9A = &HFF
  loc_1A78CF6: unk_5608CF.BeginTrans var_1F0
  loc_1A78D01: var_1F0 = var_88.RecordCount
  loc_1A78D0F: If (var_1F0 > 0) Then
  loc_1A78D15:   var_88.MoveFirst
  loc_1A78D1D:   Set var_1F4 = var_8C 
  loc_1A78D2C:   var_1F4.AddNew var_170, var_1AC
  loc_1A78D57:   var_1F4.Fields.Item("UserGSTIN").Value = CVar(MemVar_1F92154)
  loc_1A78DA6:   var_1F4.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_1A78DDC:   var_1F4.Fields.Item("TranDtls_TaxSch").Value = "GST"
  loc_1A78E0D:   var_1F4.Fields.Item("TranDtls_SupTyp").Value = "B2B"
  loc_1A78E3E:   var_1F4.Fields.Item("TranDtls_RegRev").Value = "N"
  loc_1A78E6F:   var_1F4.Fields.Item("TranDtls_EcmGstin").Value = vbNullString
  loc_1A78EA0:   var_1F4.Fields.Item("TranDtls_IgstOnIntra").Value = "N"
  loc_1A78ED1:   var_1F4.Fields.Item("DocDtls_Typ").Value = "INV"
  loc_1A78F2E:   Proc_6_39_E7C810(var_1BC, CVar(var_88.Fields.Item("FacilityBillNo")))
  loc_1A78F55:   var_1FC = var_1F4.Fields
  loc_1A78F65:   var_1FC.Item("DocDtls_No").Value = CVar(Proc_96_43_F99184(Proc_6_38_E68A98(CVar(var_88.Fields.Item("vType")), var_9A), var_1BC))
  loc_1A78FD0:   var_1EC = Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Billdate")))), "dd/MM/yyyy")
  loc_1A78FF8:   var_1F4.Fields.Item("DocDtls_Dt").Value = var_1EC
  loc_1A7903A:   var_1F4.Fields.Item("SellerDtls_Gstin").Value = CVar(MemVar_1F92154)
  loc_1A7906C:   var_1F4.Fields.Item("SellerDtls_LglNm").Value = CVar(MemVar_1F92188)
  loc_1A7909E:   var_1F4.Fields.Item("SellerDtls_TrdNm").Value = CVar(MemVar_1F9218C)
  loc_1A790D0:   var_1F4.Fields.Item("SellerDtls_Addr1").Value = CVar(MemVar_1F92134)
  loc_1A79102:   var_1F4.Fields.Item("SellerDtls_Addr2").Value = CVar(MemVar_1F92138)
  loc_1A79134:   var_1F4.Fields.Item("SellerDtls_Loc").Value = CVar(MemVar_1F92184)
  loc_1A79166:   var_1F4.Fields.Item("SellerDtls_Pin").Value = CVar(MemVar_1F92178)
  loc_1A79198:   var_1F4.Fields.Item("SellerDtls_Stcd").Value = CVar(MemVar_1F92158)
  loc_1A791CA:   var_1F4.Fields.Item("SellerDtls_Ph").Value = CVar(MemVar_1F9217C)
  loc_1A791FC:   var_1F4.Fields.Item("SellerDtls_Em").Value = CVar(MemVar_1F92180)
  loc_1A79253:   var_1F4.Fields.Item("BuyerDtls_Gstin").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("GSTIN")), 1))
  loc_1A792B3:   var_1F4.Fields.Item("BuyerDtls_LglNm").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Legalname")), 1))
  loc_1A79313:   var_1F4.Fields.Item("BuyerDtls_TrdNm").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TradeName"))))
  loc_1A7934E:   var_1F4.Fields.Item("BuyerDtls_Pos").Value = CVar(MemVar_1F92158)
  loc_1A793A5:   var_1F4.Fields.Item("BuyerDtls_Addr1").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1"))))
  loc_1A79405:   var_1F4.Fields.Item("BuyerDtls_Addr2").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add2"))))
  loc_1A79465:   var_1F4.Fields.Item("BuyerDtls_Loc").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName"))))
  loc_1A794C5:   var_1F4.Fields.Item("BuyerDtls_Pin").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Pin"))))
  loc_1A79525:   var_1F4.Fields.Item("BuyerDtls_Stcd").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("StateCode"))))
  loc_1A79585:   var_1F4.Fields.Item("BuyerDtls_Ph").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Mobile"))))
  loc_1A795C2:   var_19C = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Email")))) 'String
  loc_1A795D5:   var_184 = var_1F4.Fields
  loc_1A795DD:   var_1F8 = var_184.Item("BuyerDtls_Em")
  loc_1A795E5:   var_1F8.Value = var_19C
  loc_1A79641:   Proc_6_17_EAA2B0(var_19C, CVar(var_88.Fields.Item("DocID")), "Select IsNull(SUM(Distinct Basevalue),0) Taxable from FacilityBill2 Where Docid1=", var_1EC, -1, var_184)
  loc_1A79657:   unk_5608CF.Execute CStr(var_1F8 & var_19C), 0, var_1FC
  loc_1A7965F:   var_210 = var_184.Fields
  loc_1A79667:    = var_1F8.Item(var_A4)
  loc_1A7966F:    = var_1FC.Value
  loc_1A79697:   var_1F4.Fields.Item("ValDtls_AssVal").Value = var_210
  loc_1A796E2:   var_1F4.Fields.Item("ValDtls_CgstVal").Value = CVar(var_EC)
  loc_1A79715:   var_1F4.Fields.Item("ValDtls_SgstVal").Value = CVar(var_F4)
  loc_1A79748:   var_1F4.Fields.Item("ValDtls_IgstVal").Value = CVar(var_FC)
  loc_1A7977B:   var_1F4.Fields.Item("ValDtls_CesVal").Value = CVar(var_E4)
  loc_1A797AE:   var_1F4.Fields.Item("ValDtls_StCesVal").Value = CVar(var_CC)
  loc_1A797DF:   var_1F4.Fields.Item("ValDtls_Discount").Value = 0
  loc_1A797F2:   var_1AC = CVar((var_DC + var_B4)) 'Double
  loc_1A79816:   var_1F4.Fields.Item("ValDtls_OthChrg").Value = 0
  loc_1A79849:   var_1F4.Fields.Item("ValDtls_RndOffAmt").Value = CVar(var_D4)
  loc_1A7987C:   var_1F4.Fields.Item("ValDtls_TotInvVal").Value = CVar(var_AC)
  loc_1A7988B:   var_1AC = CVar(var_AC) 'Double
  loc_1A79893:   var_170 = "ValDtls_TotInvValFc"
  loc_1A798AF:   var_1F4.Fields.Item(var_170).Value = var_1AC
  loc_1A798C6:   var_1F4.Update var_170, var_1AC
  loc_1A798CD:   Set var_1F4 = Nothing 
  loc_1A798D7:   var_220 = 0
  loc_1A79933:   unk_5608CF.Execute CStr("Select Count(*) From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "' And Isnull(IRN,'')=''"), var_1EC, -1
  loc_1A7993B:   var_184 = var_184.Fields
  loc_1A79943:   var_220 = var_1F8.Item(var_1F8)
  loc_1A7994B:   var_1FC = var_1FC.Value
  loc_1A79972:   If CBool(var_210) Then
  loc_1A799C8:     unk_5608CF.Execute CStr("Delete From eInvoiceBill1 Where DocId='" & var_88.Fields.Item("DocID").Value & "'"), var_1EC, -1
  loc_1A79A20:     var_19C = "Delete From eInvoiceBill2 Where DocId='" & var_88.Fields.Item("DocID").Value 
  loc_1A79A37:     unk_5608CF.Execute CStr(var_19C & "'"), var_1EC, -1
  loc_1A79A53:   End If
  loc_1A79A67:   var_128 = "INSERT INTO eInvoiceBill1 ([UserGSTIN],[DocId],[TranDtls_TaxSch],[TranDtls_SupTyp],[TranDtls_RegRev],[TranDtls_EcmGstin],[TranDtls_IgstOnIntra],[DocDtls_Typ],[DocDtls_No],[DocDtls_Dt]" & ",[SellerDtls_Gstin],[SellerDtls_LglNm],[SellerDtls_TrdNm],[SellerDtls_Addr1],[SellerDtls_Addr2],[SellerDtls_Loc],[SellerDtls_Pin],[SellerDtls_Stcd],[SellerDtls_Ph],[SellerDtls_Em]"
  loc_1A79A6E:   var_12C = var_128 & ",[BuyerDtls_Gstin],[BuyerDtls_LglNm],[BuyerDtls_TrdNm],[BuyerDtls_Pos],[BuyerDtls_Addr1],[BuyerDtls_Addr2],[BuyerDtls_Loc],[BuyerDtls_Pin],[BuyerDtls_Stcd],[BuyerDtls_Ph],[BuyerDtls_Em]"
  loc_1A79A75:   var_130 = var_12C & ",[DispDtls_Nm],[DispDtls_Addr1],[DispDtls_Addr2],[DispDtls_Loc],[DispDtls_Pin],[DispDtls_Stcd]"
  loc_1A79A7C:   var_134 = var_130 & ",[ShipDtls_Gstin],[ShipDtls_LglNm],[ShipDtls_TrdNm],[ShipDtls_Addr1],[ShipDtls_Addr2],[ShipDtls_Loc],[ShipDtls_Pin],[ShipDtls_Stcd]"
  loc_1A79A83:   var_138 = var_134 & ",[ValDtls_AssVal],[ValDtls_Cgstval],[ValDtls_Sgstval],[ValDtls_Igstval],[ValDtls_Cesval],[ValDtls_StCesVal],[ValDtls_Discount],[ValDtls_OthChrg],[ValDtls_RndOffAmt],[ValDtls_TotInvVal],[ValDtls_TotInvValFc]"
  loc_1A79A8A:   var_13C = var_138 & ",[RefDtls_InvRm],[RefDtls_DocPerdDtls_InvStDt],[RefDtls_DocPerdDtls_InvEndDt],[RefDtls_PrecDocDtls_InvNo],[RefDtls_PrecDocDtls_InvDt],[RefDtls_PrecDocDtls_OthRefNo]"
  loc_1A79A91:   var_140 = var_13C & ",[RefDtls_ContrDtls_RecAdvRefr],[RefDtls_ContrDtls_RecAdvDt],[RefDtls_ContrDtls_TendRefr],[RefDtls_ContrDtls_Contrrefr],[RefDtls_ContrDtls_Extrefr],[RefDtls_ContrDtls_Projrefr],[RefDtls_ContrDtls_Porefr],[RefDtls_ContrDtls_PoRefDt]"
  loc_1A79A98:   var_144 = var_140 & ",[PayDtls_Nm],[PayDtls_AccDet],[PayDtls_Mode],[PayDtls_Fininsbr],[PayDtls_PayTerm],[PayDtls_PayInstr],[PayDtls_CrTrn],[PayDtls_DirDr],[PayDtls_CrDay],[PayDtls_PaidAmt],[PayDtls_Paymtdue]"
  loc_1A79A9F:   var_148 = var_144 & ",[EwbDtls_TransId],[EwbDtls_TransName],[EwbDtls_Distance],[EwbDtls_TransDocNo],[EwbDtls_TransDocDt],[EwbDtls_VehNo],[EwbDtls_VehType],[EwbDtls_TransMode]) VALUES "
  loc_1A79AA6:   var_1BC = CVar(var_148 & "(") 'String
  loc_1A79AAC:   var_170 = "UserGSTIN"
  loc_1A79AB8:   var_150 = var_8C.Fields
  loc_1A79AC0:   var_154 = var_150.Item(var_170)
  loc_1A79AC8:   var_180 = CVar(var_154) 'Address
  loc_1A79ACF:   Proc_6_17_EAA2B0(var_19C, var_180, var_1BC, var_25C0, -1)
  loc_1A79AD7:   var_1EC = var_25C4 & var_19C 
  loc_1A79ADB:   var_1AC = ","
  loc_1A79AE0:   var_210 = var_1EC & var_1AC 
  loc_1A79AE7:   var_1CC = "DocID"
  loc_1A79AF3:   var_184 = var_8C.Fields
  loc_1A79AFB:   var_1F8 = var_184.Item(var_1CC)
  loc_1A79B03:   var_234 = CVar(var_1F8) 'Address
  loc_1A79B0A:   Proc_6_17_EAA2B0(var_244, var_234, var_210)
  loc_1A79B12:   var_254 = var_184 & var_244 
  loc_1A79B16:   var_1DC = ","
  loc_1A79B1B:   var_264 = var_254 & var_1DC 
  loc_1A79B22:   var_220 = "TranDtls_TaxSch"
  loc_1A79B2E:   var_1FC = var_8C.Fields
  loc_1A79B36:   var_200 = var_1FC.Item(var_220)
  loc_1A79B3E:   var_274 = CVar(var_200) 'Address
  loc_1A79B45:   Proc_6_17_EAA2B0(var_284, var_274, var_264)
  loc_1A79B69:   var_224 = var_8C.Fields
  loc_1A79B79:   var_2D8 = CVar(var_224.Item("TranDtls_SupTyp")) 'Address
  loc_1A79B80:   Proc_6_17_EAA2B0(var_2E8, var_2D8)
  loc_1A79BBB:   Proc_6_17_EAA2B0(var_350, CVar(var_8C.Fields.Item("TranDtls_RegRev")))
  loc_1A79BF6:   Proc_6_17_EAA2B0(var_3B8, CVar(var_8C.Fields.Item("TranDtls_EcmGstin")))
  loc_1A79C31:   Proc_6_17_EAA2B0(var_420, CVar(var_8C.Fields.Item("TranDtls_IgstOnIntra")))
  loc_1A79C6C:   Proc_6_17_EAA2B0(var_488, CVar(var_8C.Fields.Item("DocDtls_Typ")))
  loc_1A79CA7:   Proc_6_17_EAA2B0(var_4F0, CVar(var_8C.Fields.Item("DocDtls_No")))
  loc_1A79CE2:   Proc_6_7_F25D88(var_558, CVar(var_8C.Fields.Item("DocDtls_Dt")))
  loc_1A79CEA:   var_568 = var_184 & var_284 & "," & var_2E8 & "," & var_350 & "," & var_3B8 & "," & var_420 & "," & var_488 & "," & var_4F0 & "," & var_558 
  loc_1A79D1D:   Proc_6_17_EAA2B0(var_5C0, CVar(var_8C.Fields.Item("SellerDtls_Gstin")))
  loc_1A79D58:   Proc_6_17_EAA2B0(var_628, CVar(var_8C.Fields.Item("SellerDtls_LglNm")))
  loc_1A79D60:   var_638 = var_568 & "," & var_5C0 & "," & var_628 
  loc_1A79D7C:   var_65C = var_8C.Fields
  loc_1A79D93:   Proc_6_17_EAA2B0(var_690, CVar(var_65C.Item("SellerDtls_TrdNm")))
  loc_1A79DC7:   var_6E8 = CVar(var_8C.Fields.Item("SellerDtls_Addr1")) 'Address
  loc_1A79DCE:   Proc_6_17_EAA2B0(var_6F8, var_6E8)
  loc_1A79E09:   Proc_6_17_EAA2B0(var_760, CVar(var_8C.Fields.Item("SellerDtls_Addr2")))
  loc_1A79E44:   Proc_6_17_EAA2B0(var_7C8, CVar(var_8C.Fields.Item("SellerDtls_Loc")))
  loc_1A79E7F:   Proc_6_17_EAA2B0(var_830, CVar(var_8C.Fields.Item("SellerDtls_Pin")))
  loc_1A79EBA:   Proc_6_17_EAA2B0(var_898, CVar(var_8C.Fields.Item("SellerDtls_Stcd")))
  loc_1A79EF5:   Proc_6_17_EAA2B0(var_900, CVar(var_8C.Fields.Item("SellerDtls_Ph")))
  loc_1A79F06:   var_930 = var_638 & "," & var_690 & "," & var_6F8 & "," & var_760 & "," & var_7C8 & "," & var_830 & "," & var_898 & "," & var_900 & "," 
  loc_1A79F30:   Proc_6_17_EAA2B0(var_968, CVar(var_8C.Fields.Item("SellerDtls_Em")))
  loc_1A79F6B:   Proc_6_17_EAA2B0(var_9D0, CVar(var_8C.Fields.Item("BuyerDtls_Gstin")))
  loc_1A79FA6:   Proc_6_17_EAA2B0(var_A38, CVar(var_8C.Fields.Item("BuyerDtls_LglNm")))
  loc_1A79FE1:   Proc_6_17_EAA2B0(var_AA0, CVar(var_8C.Fields.Item("BuyerDtls_TrdNm")))
  loc_1A7A01C:   Proc_6_17_EAA2B0(var_B08, CVar(var_8C.Fields.Item("BuyerDtls_Pos")))
  loc_1A7A057:   Proc_6_17_EAA2B0(var_B70, CVar(var_8C.Fields.Item("BuyerDtls_Addr1")))
  loc_1A7A092:   Proc_6_17_EAA2B0(var_BD8, CVar(var_8C.Fields.Item("BuyerDtls_Addr2")))
  loc_1A7A0CD:   Proc_6_17_EAA2B0(var_C40, CVar(var_8C.Fields.Item("BuyerDtls_Loc")))
  loc_1A7A0D5:   var_C50 = var_930 & var_968 & "," & var_9D0 & "," & var_A38 & "," & var_AA0 & "," & var_B08 & "," & var_B70 & "," & var_BD8 & "," & var_C40 
  loc_1A7A108:   Proc_6_17_EAA2B0(var_CA8, CVar(var_8C.Fields.Item("BuyerDtls_Pin")))
  loc_1A7A143:   Proc_6_17_EAA2B0(var_D10, CVar(var_8C.Fields.Item("BuyerDtls_Stcd")))
  loc_1A7A17E:   Proc_6_17_EAA2B0(var_D78, CVar(var_8C.Fields.Item("BuyerDtls_Ph")))
  loc_1A7A1B9:   Proc_6_17_EAA2B0(var_DE0, CVar(var_8C.Fields.Item("BuyerDtls_Em")))
  loc_1A7A1F4:   Proc_6_17_EAA2B0(var_E48, CVar(var_8C.Fields.Item("DispDtls_Nm")))
  loc_1A7A22F:   Proc_6_17_EAA2B0(var_EB0, CVar(var_8C.Fields.Item("DispDtls_Addr1")))
  loc_1A7A26A:   Proc_6_17_EAA2B0(var_F18, CVar(var_8C.Fields.Item("DispDtls_Addr2")))
  loc_1A7A27B:   var_F48 = var_C50 & "," & var_CA8 & "," & var_D10 & "," & var_D78 & "," & var_DE0 & "," & var_E48 & "," & var_EB0 & "," & var_F18 & "," 
  loc_1A7A2A5:   Proc_6_17_EAA2B0(var_F80, CVar(var_8C.Fields.Item("DispDtls_Loc")))
  loc_1A7A2E0:   Proc_6_17_EAA2B0(var_FE8, CVar(var_8C.Fields.Item("DispDtls_Pin")))
  loc_1A7A31B:   Proc_6_17_EAA2B0(var_1050, CVar(var_8C.Fields.Item("DispDtls_Stcd")))
  loc_1A7A356:   Proc_6_17_EAA2B0(var_10B8, CVar(var_8C.Fields.Item("ShipDtls_Gstin")))
  loc_1A7A391:   Proc_6_17_EAA2B0(var_1120, CVar(var_8C.Fields.Item("ShipDtls_LglNm")))
  loc_1A7A3CC:   Proc_6_17_EAA2B0(var_1188, CVar(var_8C.Fields.Item("ShipDtls_TrdNm")))
  loc_1A7A407:   Proc_6_17_EAA2B0(var_11F0, CVar(var_8C.Fields.Item("ShipDtls_Addr1")))
  loc_1A7A418:   var_1220 = var_F48 & var_F80 & "," & var_FE8 & "," & var_1050 & "," & var_10B8 & "," & var_1120 & "," & var_1188 & "," & var_11F0 & "," 
  loc_1A7A442:   Proc_6_17_EAA2B0(var_1258, CVar(var_8C.Fields.Item("ShipDtls_Addr2")))
  loc_1A7A47D:   Proc_6_17_EAA2B0(var_12C0, CVar(var_8C.Fields.Item("ShipDtls_Loc")))
  loc_1A7A4B8:   Proc_6_17_EAA2B0(var_1328, CVar(var_8C.Fields.Item("ShipDtls_Pin")))
  loc_1A7A4F3:   Proc_6_17_EAA2B0(var_1390, CVar(var_8C.Fields.Item("ShipDtls_Stcd")))
  loc_1A7A52E:   Proc_6_39_E7C810(var_13F8, CVar(var_8C.Fields.Item("ValDtls_AssVal")))
  loc_1A7A569:   Proc_6_39_E7C810(var_1460, CVar(var_8C.Fields.Item("ValDtls_CgstVal")))
  loc_1A7A5A4:   Proc_6_39_E7C810(var_14C8, CVar(var_8C.Fields.Item("ValDtls_SgstVal")))
  loc_1A7A5AC:   var_14D8 = var_1220 & var_1258 & "," & var_12C0 & "," & var_1328 & "," & var_1390 & "," & var_13F8 & "," & var_1460 & "," & var_14C8 
  loc_1A7A5DF:   Proc_6_39_E7C810(var_1530, CVar(var_8C.Fields.Item("ValDtls_IgstVal")))
  loc_1A7A61A:   Proc_6_39_E7C810(var_1598, CVar(var_8C.Fields.Item("ValDtls_CesVal")))
  loc_1A7A655:   Proc_6_39_E7C810(var_1600, CVar(var_8C.Fields.Item("ValDtls_StCesVal")))
  loc_1A7A690:   Proc_6_39_E7C810(var_1668, CVar(var_8C.Fields.Item("ValDtls_Discount")))
  loc_1A7A6CB:   Proc_6_39_E7C810(var_16D0, CVar(var_8C.Fields.Item("ValDtls_OthChrg")))
  loc_1A7A706:   Proc_6_39_E7C810(var_1738, CVar(var_8C.Fields.Item("ValDtls_RndOffAmt")))
  loc_1A7A741:   Proc_6_39_E7C810(var_17A0, CVar(var_8C.Fields.Item("ValDtls_TotInvVal")))
  loc_1A7A749:   var_17B0 = var_14D8 & "," & var_1530 & "," & var_1598 & "," & var_1600 & "," & var_1668 & "," & var_16D0 & "," & var_1738 & "," & var_17A0 
  loc_1A7A77C:   Proc_6_39_E7C810(var_1808, CVar(var_8C.Fields.Item("ValDtls_TotInvValFc")))
  loc_1A7A7B7:   Proc_6_17_EAA2B0(var_1870, CVar(var_8C.Fields.Item("RefDtls_InvRm")))
  loc_1A7A7F2:   Proc_6_7_F25D88(var_18D8, CVar(var_8C.Fields.Item("RefDtls_DocPerdDtls_InvStDt")))
  loc_1A7A82D:   Proc_6_7_F25D88(var_1940, CVar(var_8C.Fields.Item("RefDtls_DocPerdDtls_InvEndDt")))
  loc_1A7A868:   Proc_6_17_EAA2B0(var_19A8, CVar(var_8C.Fields.Item("RefDtls_PrecDocDtls_InvNo")))
  loc_1A7A8A3:   Proc_6_7_F25D88(var_1A10, CVar(var_8C.Fields.Item("RefDtls_PrecDocDtls_InvDt")))
  loc_1A7A8DE:   Proc_6_17_EAA2B0(var_1A78, CVar(var_8C.Fields.Item("RefDtls_PrecDocDtls_OthRefNo")))
  loc_1A7A8E6:   var_1A88 = var_17B0 & "," & var_1808 & "," & var_1870 & "," & var_18D8 & "," & var_1940 & "," & var_19A8 & "," & var_1A10 & "," & var_1A78 
  loc_1A7A919:   Proc_6_17_EAA2B0(var_1AE0, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_RecAdvRefr")))
  loc_1A7A954:   Proc_6_7_F25D88(var_1B48, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_RecAdvDt")))
  loc_1A7A98F:   Proc_6_17_EAA2B0(var_1BB0, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Tendrefr")))
  loc_1A7A9CA:   Proc_6_17_EAA2B0(var_1C18, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Contrrefr")))
  loc_1A7AA05:   Proc_6_17_EAA2B0(var_1C80, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Extrefr")))
  loc_1A7AA40:   Proc_6_17_EAA2B0(var_1CE8, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Projrefr")))
  loc_1A7AA7B:   Proc_6_17_EAA2B0(var_1D50, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_Porefr")))
  loc_1A7AA83:   var_1D60 = var_1A88 & "," & var_1AE0 & "," & var_1B48 & "," & var_1BB0 & "," & var_1C18 & "," & var_1C80 & "," & var_1CE8 & "," & var_1D50 
  loc_1A7AAB6:   Proc_6_7_F25D88(var_1DB8, CVar(var_8C.Fields.Item("RefDtls_ContrDtls_PoRefDt")))
  loc_1A7AAF1:   Proc_6_17_EAA2B0(var_1E20, CVar(var_8C.Fields.Item("PayDtls_Nm")))
  loc_1A7AB2C:   Proc_6_17_EAA2B0(var_1E88, CVar(var_8C.Fields.Item("PayDtls_Accdet")))
  loc_1A7AB67:   Proc_6_17_EAA2B0(var_1EF0, CVar(var_8C.Fields.Item("PayDtls_Mode")))
  loc_1A7ABA2:   Proc_6_17_EAA2B0(var_1F58, CVar(var_8C.Fields.Item("PayDtls_Fininsbr")))
  loc_1A7ABDD:   Proc_6_17_EAA2B0(var_1FC0, CVar(var_8C.Fields.Item("PayDtls_Payterm")))
  loc_1A7AC18:   Proc_6_17_EAA2B0(var_2028, CVar(var_8C.Fields.Item("PayDtls_Payinstr")))
  loc_1A7AC20:   var_2038 = var_1D60 & "," & var_1DB8 & "," & var_1E20 & "," & var_1E88 & "," & var_1EF0 & "," & var_1F58 & "," & var_1FC0 & "," & var_2028 
  loc_1A7AC53:   Proc_6_17_EAA2B0(var_2090, CVar(var_8C.Fields.Item("PayDtls_Crtrn")))
  loc_1A7AC8E:   Proc_6_17_EAA2B0(var_20F8, CVar(var_8C.Fields.Item("PayDtls_Dirdr")))
  loc_1A7ACC9:   Proc_6_39_E7C810(var_2160, CVar(var_8C.Fields.Item("PayDtls_Crday")))
  loc_1A7AD04:   Proc_6_39_E7C810(var_21C8, CVar(var_8C.Fields.Item("PayDtls_Paidamt")))
  loc_1A7AD3F:   Proc_6_39_E7C810(var_2230, CVar(var_8C.Fields.Item("PayDtls_Paymtdue")))
  loc_1A7AD7A:   Proc_6_17_EAA2B0(var_2298, CVar(var_8C.Fields.Item("EwbDtls_TransId")))
  loc_1A7ADB5:   Proc_6_17_EAA2B0(var_2300, CVar(var_8C.Fields.Item("EwbDtls_TransName")))
  loc_1A7ADBD:   var_2310 = var_2038 & "," & var_2090 & "," & var_20F8 & "," & var_2160 & "," & var_21C8 & "," & var_2230 & "," & var_2298 & "," & var_2300 
  loc_1A7ADF0:   Proc_6_39_E7C810(var_2368, CVar(var_8C.Fields.Item("EwbDtls_Distance")))
  loc_1A7AE2B:   Proc_6_17_EAA2B0(var_23D0, CVar(var_8C.Fields.Item("EwbDtls_TransDocNo")))
  loc_1A7AE66:   Proc_6_7_F25D88(var_2438, CVar(var_8C.Fields.Item("EwbDtls_TransDocDt")))
  loc_1A7AEA1:   Proc_6_17_EAA2B0(var_24A0, CVar(var_8C.Fields.Item("EwbDtls_VehNo")))
  loc_1A7AEDC:   Proc_6_17_EAA2B0(var_2508, CVar(var_8C.Fields.Item("EwbDtls_VehType")))
  loc_1A7AF17:   Proc_6_17_EAA2B0(var_2570, CVar(var_8C.Fields.Item("EwbDtls_TransMode")))
  loc_1A7AF36:   unk_5608CF.Execute CStr(var_2310 & "," & var_2368 & "," & var_23D0 & "," & var_2438 & "," & var_24A0 & "," & var_2508 & "," & var_2570 & ")"), var_210, 
  loc_1A7B2DA:   var_92 = 1
  loc_1A7B2DD:   ' Referenced from: 1A7B965
  loc_1A7B2EC:   If Not(var_88.EOF) Then
  loc_1A7B30D:     Set var_150 = Me.Txt
  loc_1A7B313:     Call 0.Method_CmdeInvoiceSql_Click0 (CInt(5), var_154, var_128, "select max(Revmast.name) as TaxName,Revmast.code,TaxPer,sum(TaxAmt) as TaxAmt,sum(BaseValue) as TaxableAmt from (FacilityBill2 left join revmast on revmast.code=FacilityBill2.Taxcode) where FacilityBill2.DocID='")
  loc_1A7B31B:     var_180 = var_154.Text
  loc_1A7B324:     var_12C = -1 & var_128
  loc_1A7B334:     unk_5608CF.Execute var_12C & "' group by revmast.code,TaxPer Order by TaxPer", var_184, var_92
  loc_1A7B33F:     Set var_90 = var_184
  loc_1A7B35A:     var_104 = CDbl(0)
  loc_1A7B360:     var_10C = CDbl(0)
  loc_1A7B389:     var_128 = "Select Q.DocId,IsNull(Sum(Q.IGST),0) IGST,IsNull(Sum(Q.CGST),0) CGST,IsNull(Sum(Q.SGST),0) SGST,IsNull(Sum(Q.TaxPer),0) TaxPer,IsNull(Sum(Q.TaxAmt),0) TaxAmt From (Select DocId,Case When S.Nature='IGST' Then " & "S2.TaxAmt End IGST,Case When S.Nature='CGST' Then S2.TaxAmt End CGST,Case When S.Nature='SGST' Then S2.TaxAmt End SGST,S2.TaxPer,S2.TaxAmt From FacilityBill2 S2 "
  loc_1A7B390:     var_1BC = CVar(var_128 & "Left Join RevMast R On R.Code=S2.Taxcode Left Join SundryMast S On S.Code=R.Sundry Where Docid1=") 'String
  loc_1A7B3B9:     Proc_6_17_EAA2B0(var_19C, CVar(var_88.Fields.Item("DocID")), var_1BC, var_264, -1, var_1FC)
  loc_1A7B40F:     unk_5608CF.Execute CStr(CDbl(0) & var_19C & " And SNo=" & var_88.Fields.Item("SNo").Value & ")Q Group By DocId"), CDbl(0), CDbl(0)
  loc_1A7B41A:     Set var_90 = var_1FC
  loc_1A7B458:     If (var_90.RecordCount > 0) Then
  loc_1A7B486:       var_104 = CSng(var_90.Fields.Item("IGST").Value)
  loc_1A7B4BE:       var_10C = CSng(var_90.Fields.Item("CGST").Value)
  loc_1A7B4F6:       var_114 = CSng(var_90.Fields.Item("SGST").Value)
  loc_1A7B52E:       var_11C = CSng(var_90.Fields.Item("TaxPer").Value)
  loc_1A7B566:       var_124 = CSng(var_90.Fields.Item("TaxAmt").Value)
  loc_1A7B573:     End If
  loc_1A7B599:     Proc_6_17_EAA2B0(var_19C, CVar(var_88.Fields.Item("DocID")), var_124, var_11C, var_114)
  loc_1A7B5EB:     Proc_6_17_EAA2B0(var_274, CVar(var_88.Fields.Item("Facility")), var_10C)
  loc_1A7B616:     Proc_6_17_EAA2B0(var_2D8, CVar(var_88.Fields.Item("SACCode")), var_104)
  loc_1A7B6B6:     Proc_6_39_E7C810(var_420, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1A7B708:     Proc_6_39_E7C810(var_488, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1A7B718:     var_4B8 = (var_88.Fields.Item("Amount").Value - var_488)
  loc_1A7B71C:     var_4E0 = var_88.Fields & var_284 & "," & var_2E8 & "," & var_350 & "," & var_88.Fields.Item("Amount").Value & "," & var_420 & "," & var_488 & "," 'Variant
  loc_1A7B783:     Proc_6_39_E7C810(var_638, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1A7B79C:     var_128 = "INSERT INTO eInvoiceBill2 ([DocId],[SlNo],[PrdDesc],[IsServc],[HsnCd],[Qty],[Unit]," & "[UnitPrice],[TotAmt],[Discount],[PreTaxVal],[AssAmt],[GstRt],[IgstAmt],[CgstAmt],[SgstAmt],[TotItemVal]) "
  loc_1A7B7E9:     var_340 = CVar(var_128 & "VALUES (") & var_19C & "," & var_88.Fields.Item("SNo").Value & "," & var_274 & ",'Y'," & var_2D8 & "," & var_88.Fields.Item("qty").Value 
  loc_1A7B822:     var_450 = var_340 & ",'UNT'," & var_88.Fields.Item("UnitRate").Value & "," & var_88.Fields.Item("Amount").Value & "," & var_420 & ",1," 
  loc_1A7B879:     var_5F0 = var_450 & IIf((var_11C <> CDbl(0)), var_4E0, 0) & "," & CVar(var_11C) & "," & CVar(var_104) & "," & CVar(var_10C) & "," & CVar(var_114) 
  loc_1A7B88C:     var_680 = (var_88.Fields.Item("Amount").Value - var_638)
  loc_1A7B897:     var_690 = (CVar(var_65C.Item("SellerDtls_TrdNm")) + CVar(var_124))
  loc_1A7B8B2:     unk_5608CF.Execute CStr(var_5F0 & "," & var_690 & ")"), var_6E8, -1
  loc_1A7B95A:     var_92 = (var_92 + 1)
  loc_1A7B960:     var_88.MoveNext
  loc_1A7B965:     GoTo loc_1A7B2DD
  loc_1A7B968:   End If
  loc_1A7B968: End If
  loc_1A7B96E: unk_5608CF.CommitTrans
  loc_1A7B975: var_9A = 0
  loc_1A7B978: Exit Sub
  loc_1A7B979: ' Referenced from: 1A786C4
  loc_1A7B97F: If (var_9A = &HFF) Then
  loc_1A7B988:   unk_5608CF.RollbackTrans
  loc_1A7B98D: End If
  loc_1A7B98D: Proc_6_60_E62BC4(var_9A, var_92, var_65C)
  loc_1A7B992: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'ECEFF4
  'Data Table: 5608C8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECEF56: Set var_88 = Me.TxtPer
  loc_ECEF5C: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_ECEF6A: Proc_6_74_E226B0(var_8C)
  loc_ECEF76: Call Proc_350_46_EB90A0(var_8C)
  loc_ECEF8A: Set var_88 = Me.TxtPer
  loc_ECEF90: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECEF98: var_8C.SelStart = 0
  loc_ECEFB1: Set var_88 = Me.TxtPer
  loc_ECEFB7: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_ECEFD2: Set var_90 = Me.TxtPer
  loc_ECEFD8: Call 0.Method_TxtPer_GotFocus0 (Index, var_98)
  loc_ECEFE0: var_98.SelLength = Len(var_8C.Text)
  loc_ECEFF3: Exit Sub
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E5BFA8
  'Data Table: 5608C8
  loc_E5BF75: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5BF7E:   Proc_6_75_E527CC(Shift)
  loc_E5BF83: End If
  loc_E5BF98: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E5BFA1:   Proc_6_76_E52838(Shift, arg_14)
  loc_E5BFA6: End If
  loc_E5BFA6: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E63614
  'Data Table: 5608C8
  Dim arg_10 As Integer
  loc_E635D6: Set var_88 = Me.TxtPer
  loc_E635DC: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E635F7: Proc_6_42_129A86C(var_8C, arg_10, 2)
  loc_E63609: If (arg_10 = &H2D) Then
  loc_E6360E:   arg_10 = 0
  loc_E63611: End If
  loc_E63611: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E9FA08
  'Data Table: 5608C8
  Dim var_8C As Label
  loc_E9F990: On Error Goto loc_E9FA04
  loc_E9F9A0: Set var_88 = Me.LblCap
  loc_E9F9A6: Call 0.Method_TxtPer_KeyUp0 (KeyCode, var_8C)
  loc_E9F9E5: If (Trim(CVar(var_8C.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_E9F9E8:   GoTo loc_E9FA04
  loc_E9F9EB: End If
  loc_E9F9F0: var_90 = 0
  loc_E9F9FC: Call Proc_350_60_1885A1C(KeyCode)
  loc_E9FA04: ' Referenced from: E9F9E8
  loc_E9FA04: ' Referenced from: E9F990
  loc_E9FA04: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E4F174
  'Data Table: 5608C8
  loc_E4F152: Set var_88 = Me.TxtPer
  loc_E4F158: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E4F166: Proc_6_73_E22704(var_8C)
  loc_E4F172: Exit Sub
End Sub

Private Sub TxtPer_Validate(Cancel As Boolean) 'F84818
  'Data Table: 5608C8
  Dim var_8C As Variant
  Dim var_FC As TextBox
  loc_F846D4: On Error Goto loc_F84815
  loc_F846E4: Set var_88 = Me.LblCap
  loc_F846EA: Call 0.Method_TxtPer_Validate0 (Cancel, var_8C)
  loc_F84729: If (Trim(CVar(var_8C.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_F84736:   If (global_92 > CDbl(0)) Then
  loc_F84746:     Set var_88 = Me.TxtPer
  loc_F8474C:     Call 0.Method_TxtPer_Validate0 (Cancel, var_8C)
  loc_F847A4:     Set var_F8 = Me.TxtGt
  loc_F847AA:     Call 0.Method_TxtPer_Validate0 (Cancel, var_FC, CStr(Format(CVar(((global_92 * Val(var_8C.Text)) / CDbl(&H64))), "0.00")))
  loc_F847B2:     var_FC.Text = 1
  loc_F847D5:   Else
  loc_F847E2:     Set var_88 = Me.TxtGt
  loc_F847E8:     Call 0.Method_TxtPer_Validate0 (Cancel, var_8C, "0.00")
  loc_F847F0:     var_8C.Text = 1
  loc_F847FC:   End If
  loc_F8480D:   Call Proc_350_60_1885A1C(Cancel, 0)
  loc_F84815:   ' Referenced from: F846D4
  loc_F84815: End If
  loc_F84815: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E93F98
  'Data Table: 5608C8
  Dim Me As Recordset15
  loc_E93F26: On Error Goto loc_E93F8F
  loc_E93F2F: Me.MoveFirst
  loc_E93F59: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93F81: Proc_5_0_110649C(&HFF, Me, global_52)
  loc_E93F89: Call Proc_350_42_16E6E6C(0)
  loc_E93F8E: Exit Sub
  loc_E93F8F: ' Referenced from: E93F26
  loc_E93F8F: Proc_6_60_E62BC4(var_A0)
  loc_E93F94: Exit Sub
End Sub

Public Sub Proc_350_42_16E6E6C
  'Data Table: 5608C8
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_5608CF As Connection15
  Dim var_88 As Recordset15
  Dim var_128 As Variant
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_12C As String
  Dim var_190 As Fields15
  Dim var_1E4 As String
  Dim var_8E As Integer
  Dim var_120 As Variant
  Dim var_1A4 As Variant
  loc_16E53C8: On Error Goto loc_16E6E64
  loc_16E53E2: If (Me.RecordCount > 0) Then
  loc_16E53F2:   var_CC = "Select F.*,SubGroup.Name,LM.Name As LcName From ((FacilityBill F left join Subgroup on F.PartyCode=Subgroup.subcode) left join Locationmast LM on F.LocationCode=LM.Code) Where DocID='"
  loc_16E543B:   unk_5608CF.Execute CStr(var_CC & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_16E5446:   Set var_88 = var_124
  loc_16E5474:   If (var_88.RecordCount > 0) Then
  loc_16E54B0:     Set var_124 = Me.Txt
  loc_16E54B6:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(0), var_128)
  loc_16E54BE:     var_128.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_16E550D:     Set var_124 = Me.Txt
  loc_16E5513:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(0), var_128)
  loc_16E551B:     var_128.Tag = CStr(var_88.Fields.Item("PartyCode").Value)
  loc_16E556D:     Set var_124 = Me.Txt
  loc_16E5573:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(5), var_128)
  loc_16E557B:     var_128.Text = CStr(Me.Fields.Item("DocID").Value)
  loc_16E55C7:     Set var_124 = Me.Txt
  loc_16E55CD:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(9), var_128)
  loc_16E55D5:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VNo")))
  loc_16E561F:     Set var_124 = Me.Txt
  loc_16E5625:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(6), var_128)
  loc_16E562D:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")))
  loc_16E5677:     Set var_124 = Me.Txt
  loc_16E567D:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(7), var_128)
  loc_16E5685:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DueDate")))
  loc_16E56CF:     Set var_124 = Me.Txt
  loc_16E56D5:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(&HE), var_128)
  loc_16E56DD:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForPeriod")))
  loc_16E5727:     Set var_124 = Me.Txt
  loc_16E572D:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(&HF), var_128)
  loc_16E5735:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToPeriod")))
  loc_16E577E:     Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")))
  loc_16E57C6:     Set var_124 = Me.Txt
  loc_16E57CC:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(&H12), var_128)
  loc_16E57D4:     var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remark")))
  loc_16E5822:     var_124 = var_88.Fields
  loc_16E588B:     var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16E58D0:     Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_16E591F:     var_AC = var_88.Fields.Item("U_AE")
  loc_16E5942:     var_124 = var_88.Fields
  loc_16E594A:     var_128 = var_124.Item("U_AE")
  loc_16E5963:     var_120 = "entdt : "
  loc_16E5986:     var_14C = IIf((Proc_6_38_E68A98(CVar(var_128)) = "E"), "Last Update : ", var_120)
  loc_16E599C:     var_100 = Proc_6_38_E68A98(CVar(var_AC))
  loc_16E59CA:     var_1A4 = var_88.Fields.Item("U_EntDt")
  loc_16E59F0:     Me.LblLDt.Caption = CStr(IIf((var_100 = "A"), "Created By : ", var_14C) & CVar(Proc_6_38_E68A98(CVar(var_1A4))))
  loc_16E5A46:     Set var_98 = Me.Txt
  loc_16E5A4C:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(0), var_AC, var_100, "Select Code,Name,TStartDate,TEndDate,TTerm From locationMast Where code In (Select LcCode From PartyLocation Where PrCode='")
  loc_16E5A54:     var_BC = var_AC.Tag
  loc_16E5A5D:     var_12C = -1 & var_100
  loc_16E5A72:     var_1E4 = Proc_6_38_E68A98(CVar(var_128)) & "') And (locationMast.LOGSITE_CODE='" & MemVar_1F92078 & "' or locationMast.LOGSITE_CODE='HO')  Order by Name"
  loc_16E5A7B:     unk_5608CF.Execute var_1E4, var_124, 
  loc_16E5A8C:     Set global_64 = var_124
  loc_16E5AB4:     CVarUnk
  loc_16E5AB9:     VerifyVarObj
  loc_16E5ABF:     Set var_98 = Me.DGLocation
  loc_16E5AC5:     LateIdStAd
  loc_16E5AD3:   End If
  loc_16E5AE2:   Me.FGrid.Redraw = False
  loc_16E5AFD:   Me.FGrid.Rows = 1
  loc_16E5B07:   var_8E = 1
  loc_16E5B17:   var_CC = "Select F.*,FM.Name as FacilityName,LM.Name As Location From ((FacilityBill1 F Left Join FacilityMast FM On F.FacilityCode=FM.Code) Left Join LocationMast LM On F.LocationCode=LM.Code) Where F.Docid1='"
  loc_16E5B60:   unk_5608CF.Execute CStr(var_CC & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_16E5B6B:   Set var_88 = var_124
  loc_16E5B99:   If (var_88.RecordCount > 0) Then
  loc_16E5B9C:     ' Referenced from: 16E627B
  loc_16E5BAB:     If Not(var_88.EOF) Then
  loc_16E5BAE:       var_A8 = vbNullString
  loc_16E5BB8:       Set var_98 = Me.FGrid
  loc_16E5BCD:       Set var_1EC = Me.FGrid
  loc_16E5BD4:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_16E5BDC:       var_EC = CVar(CLng(0)) 'Long
  loc_16E5BE6:       var_BC = CVar(CStr(var_8E)) 'String
  loc_16E5BED:       LateIdCallSt
  loc_16E5BFC:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E5C04:       var_110 = CVar(CLng(1)) 'Long
  loc_16E5C34:       var_DC = CVar(CStr(var_88.Fields.Item("FacilityName").Value)) 'String
  loc_16E5C3B:       LateIdCallSt
  loc_16E5C71:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E5C79:       var_13C = CVar(CLng(2)) 'Long
  loc_16E5CA6:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Unit")), "0.0000"))) 'String
  loc_16E5CAD:       LateIdCallSt
  loc_16E5CE3:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E5CEB:       var_13C = CVar(CLng(3)) 'Long
  loc_16E5D18:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("UnitRate")), "0.00"))) 'String
  loc_16E5D1F:       LateIdCallSt
  loc_16E5D55:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E5D5D:       var_13C = CVar(CLng(4)) 'Long
  loc_16E5D8A:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))) 'String
  loc_16E5D91:       LateIdCallSt
  loc_16E5DAB:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_16E5DB3:       var_EC = CVar(CLng(&HF)) 'Long
  loc_16E5DB8:       var_13C = "Y"
  loc_16E5DC1:       LateIdCallSt
  loc_16E5DE9:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E5DF1:       var_13C = CVar(CLng(&HE)) 'Long
  loc_16E5E1E:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_16E5E25:       LateIdCallSt
  loc_16E5E5B:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_16E5E63:       var_13C = CVar(CLng(&H10)) 'Long
  loc_16E5E90:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_16E5E97:       LateIdCallSt
  loc_16E5EB1:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E5EB9:       var_110 = CVar(CLng(5)) 'Long
  loc_16E5EE9:       var_DC = CVar(CStr(var_88.Fields.Item("DocID").Value)) 'String
  loc_16E5EF0:       LateIdCallSt
  loc_16E5F0A:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E5F12:       var_110 = CVar(CLng(6)) 'Long
  loc_16E5F42:       var_DC = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_16E5F49:       LateIdCallSt
  loc_16E5F63:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E5F6B:       var_110 = CVar(CLng(7)) 'Long
  loc_16E5F9B:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16E5FA2:       LateIdCallSt
  loc_16E5FBC:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E5FC4:       var_110 = CVar(CLng(8)) 'Long
  loc_16E5FF4:       var_DC = CVar(CStr(var_88.Fields.Item("FacilityCode").Value)) 'String
  loc_16E5FFB:       LateIdCallSt
  loc_16E6015:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E601D:       var_110 = CVar(CLng(9)) 'Long
  loc_16E604D:       var_DC = CVar(CStr(var_88.Fields.Item("FacilityTax").Value)) 'String
  loc_16E6054:       LateIdCallSt
  loc_16E60A3:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_1EC, var_DC, CVar(CLng(&HA)), CVar(CLng(var_8E)))) 'String
  loc_16E60AA:       LateIdCallSt
  loc_16E60F5:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("AppDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_1EC, var_DC, var_1EC)) 'String
  loc_16E60FC:       LateIdCallSt
  loc_16E6147:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForPeriod")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_1EC, var_DC)) 'String
  loc_16E614E:       LateIdCallSt
  loc_16E6199:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ToPeriod")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_1EC, var_DC)) 'String
  loc_16E61A0:       LateIdCallSt
  loc_16E61B6:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E61BE:       var_110 = CVar(CLng(&H14)) 'Long
  loc_16E61EE:       var_DC = CVar(CStr(var_88.Fields.Item("Location").Value)) 'String
  loc_16E61F5:       LateIdCallSt
  loc_16E620F:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_16E6217:       var_110 = CVar(CLng(&H15)) 'Long
  loc_16E6247:       var_DC = CVar(CStr(var_88.Fields.Item("LocationCode").Value)) 'String
  loc_16E624E:       LateIdCallSt
  loc_16E6266:       Set var_1EC = Nothing 
  loc_16E6270:       var_8E = (var_8E + 1)
  loc_16E6276:       var_88.MoveNext
  loc_16E627B:       GoTo loc_16E5B9C
  loc_16E627E:     End If
  loc_16E6291:     Me.FGrid.FixedRows = 1
  loc_16E6299:   End If
  loc_16E62A7:   Me.FGrid.Redraw = True
  loc_16E62C3:   var_DC = CVar("SELECT S.SNo,S.SNo1, S.Docid1, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM FacilityBill2 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_16E62FC:   var_120 = var_DC & Me.Fields.Item("SearchCode").Value & "' Order By S.Docid1,S.SNo,S.SNo1" 
  loc_16E630A:   unk_5608CF.Execute CStr(var_120), var_14C, -1
  loc_16E6315:   Set var_88 = var_124
  loc_16E6344:   Me.FGCat.Rows = 1
  loc_16E6360:   If (var_88.RecordCount > 0) Then
  loc_16E6363:     ' Referenced from: 16E679D
  loc_16E6372:     If Not(var_88.EOF) Then
  loc_16E6379:       Set var_1F0 = Me.FGCat
  loc_16E637C:       var_A8 = vbNullString
  loc_16E63A6:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E63AE:       var_110 = CVar(CLng(0)) 'Long
  loc_16E63DE:       var_FC = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_16E63E5:       LateIdCallSt
  loc_16E6418:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E6420:       var_110 = CVar(CLng(1)) 'Long
  loc_16E6450:       var_FC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_16E6457:       LateIdCallSt
  loc_16E648A:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E6492:       var_110 = CVar(CLng(9)) 'Long
  loc_16E64C2:       var_FC = CVar(CStr(var_88.Fields.Item("DocID1").Value)) 'String
  loc_16E64C9:       LateIdCallSt
  loc_16E64FC:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E6504:       var_110 = CVar(CLng(2)) 'Long
  loc_16E6534:       var_FC = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_16E653B:       LateIdCallSt
  loc_16E656E:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E6576:       var_110 = CVar(CLng(3)) 'Long
  loc_16E65A6:       var_FC = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_16E65AD:       LateIdCallSt
  loc_16E65E0:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E65E8:       var_110 = CVar(CLng(4)) 'Long
  loc_16E6618:       var_FC = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_16E661F:       LateIdCallSt
  loc_16E6652:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E665A:       var_110 = CVar(CLng(5)) 'Long
  loc_16E668A:       var_FC = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_16E6691:       LateIdCallSt
  loc_16E66C4:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_16E66CC:       var_110 = CVar(CLng(6)) 'Long
  loc_16E66FC:       var_FC = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_16E6703:       LateIdCallSt
  loc_16E6721:       Set var_124 = Me.FGCat
  loc_16E6736:       var_CC = CVar((CLng(var_124.Rows) - 1)) 'Long
  loc_16E673E:       var_110 = CVar(CLng(7)) 'Long
  loc_16E676E:       var_FC = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_16E6775:       LateIdCallSt
  loc_16E6791:       Set var_1F0 = Nothing 
  loc_16E6798:       var_88.MoveNext
  loc_16E679D:       GoTo loc_16E6363
  loc_16E67A0:     End If
  loc_16E67A0:   End If
  loc_16E67AD:   var_CC = "Select S.* From SunTranFacility S Where S.DocId='"
  loc_16E67E8:   var_FC = var_CC & Me.Fields.Item("SearchCode").Value & "' Order By SNo" 
  loc_16E67F6:   unk_5608CF.Execute CStr(var_FC), var_120, -1
  loc_16E6801:   Set var_88 = var_124
  loc_16E682F:   If (var_88.RecordCount > 0) Then
  loc_16E6862:     Call Proc_350_59_177F898(CDate(var_88.Fields.Item("SunAppDate").Value), var_124, var_1F0, var_FC, var_110)
  loc_16E68AA:     Set var_124 = Me.Txt
  loc_16E68B0:     Call 0.Method_Proc_350_42_16E6E6C0 (CInt(&H11), var_128, CStr(var_88.Fields.Item("SunAppDate").Value), var_CC)
  loc_16E68B8:     var_128.Text = var_1F0
  loc_16E68CE:     ' Referenced from: 16E6D62
  loc_16E68DD:     If Not(var_88.EOF) Then
  loc_16E6940:       Set var_190 = Me.LblCap
  loc_16E6946:       Call 0.Method_Proc_350_42_16E6E6C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4, CStr(var_88.Fields.Item("SunCode").Value))
  loc_16E694E:       var_1A4.Tag = var_FC
  loc_16E69CC:       Set var_190 = Me.TxtPer
  loc_16E69D2:       Call 0.Method_Proc_350_42_16E6E6C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E69DA:       var_1A4.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_16E6A58:       Set var_190 = Me.LblCap
  loc_16E6A5E:       Call 0.Method_Proc_350_42_16E6E6C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E6A66:       var_1A4.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_16E6AE4:       Set var_190 = Me.LblAt
  loc_16E6AEA:       Call 0.Method_Proc_350_42_16E6E6C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E6AF2:       var_1A4.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_16E6B6D:       Set var_190 = Me.TxtGt
  loc_16E6B73:       Call 0.Method_Proc_350_42_16E6E6C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E6B7B:       var_1A4.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_16E6BF7:       Set var_190 = Me.TxtPer
  loc_16E6BFD:       Call 0.Method_Proc_350_42_16E6E6C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_16E6C05:       var_1A4.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_16E6C75:       var_DC = "0.00"
  loc_16E6C9C:       Set var_190 = Me.TxtGt
  loc_16E6CA2:       Call 0.Method_Proc_350_42_16E6E6C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_DC)))
  loc_16E6CAA:       var_1A4.Text = 1
  loc_16E6CF0:       Proc_6_39_E7C810(var_DC, CVar(var_88.Fields.Item("BaseAmount")))
  loc_16E6D2E:       Set var_190 = Me.LblDummy
  loc_16E6D34:       Call 0.Method_Proc_350_42_16E6E6C0 (CInt(var_88.Fields.Item("SNo").Value), var_1A4, CStr(var_DC))
  loc_16E6D3C:       var_1A4.Caption = 1
  loc_16E6D5D:       var_88.MoveNext
  loc_16E6D62:       GoTo loc_16E68CE
  loc_16E6D65:     End If
  loc_16E6D65:   End If
  loc_16E6D6B:   If (var_8E = 1) Then
  loc_16E6D81:     Me.FGrid.Rows = 1
  loc_16E6D9E:     var_DC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16E6DA6:     Set var_AC = Me.FGrid
  loc_16E6DD5:     Me.FGrid.FixedRows = 1
  loc_16E6DDD:   End If
  loc_16E6DE0: Else
  loc_16E6DE0:   Call Proc_350_44_F5EB70(FGrid.DispID_10000, var_DC)
  loc_16E6DE5: End If
  loc_16E6E00: var_BC = Me.FGrid.TextMatrix)
  loc_16E6E35: Proc_348_21_12A7B74(CStr(var_BC), Me.QrImage, global_112, global_116, global_120)
  loc_16E6E49: Call Proc_350_64_FAAFB8(var_BC, CVar(CLng(5)))
  loc_16E6E4E: Call Proc_350_46_EB90A0(1)
  loc_16E6E58: Set var_88 = Nothing
  loc_16E6E60: Set var_8C = Nothing
  loc_16E6E63: Exit Sub
  loc_16E6E64: ' Referenced from: 16E53C8
  loc_16E6E64: Proc_6_60_E62BC4(var_110)
  loc_16E6E69: Exit Sub
End Sub

Public Sub Proc_350_43_1435948
  'Data Table: 5608C8
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_F4 As TextBox
  Dim var_FC As DataGrid
  Dim var_100 As TextBox
  loc_1434E67: Me.FGrid.Cols = &H16
  loc_1434E6C: var_98 = 0
  loc_1434E75: var_B8 = 0
  loc_1434E7E: var_D8 = vbNullString
  loc_1434E87: LateIdCallSt
  loc_1434E8F: var_98 = 0
  loc_1434E9E: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434EA5: LateIdCallSt
  loc_1434EAD: var_98 = 0
  loc_1434EB6: var_B8 = &H12C
  loc_1434EC2: LateIdCallSt
  loc_1434ECA: var_98 = 1
  loc_1434ED3: var_B8 = &H1C2
  loc_1434EDF: LateIdCallSt
  loc_1434EE7: var_98 = 0
  loc_1434EF0: var_B8 = 1
  loc_1434EF9: var_D8 = "Particulars"
  loc_1434F02: LateIdCallSt
  loc_1434F0A: var_98 = 1
  loc_1434F19: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434F20: LateIdCallSt
  loc_1434F28: var_98 = 1
  loc_1434F31: var_B8 = &HAF0
  loc_1434F3D: LateIdCallSt
  loc_1434F45: var_98 = 0
  loc_1434F4E: var_B8 = 2
  loc_1434F57: var_D8 = "Unit"
  loc_1434F60: LateIdCallSt
  loc_1434F68: var_98 = 2
  loc_1434F77: var_B8 = CVar(CInt(7)) 'Integer
  loc_1434F7E: LateIdCallSt
  loc_1434F86: var_98 = 2
  loc_1434F95: var_B8 = CVar(CInt(7)) 'Integer
  loc_1434F9C: LateIdCallSt
  loc_1434FA4: var_98 = 2
  loc_1434FAD: var_B8 = &H4B0
  loc_1434FB9: LateIdCallSt
  loc_1434FC1: var_98 = 0
  loc_1434FCA: var_B8 = 3
  loc_1434FD3: var_D8 = "Rate"
  loc_1434FDC: LateIdCallSt
  loc_1434FE4: var_98 = 3
  loc_1434FF3: var_B8 = CVar(CInt(7)) 'Integer
  loc_1434FFA: LateIdCallSt
  loc_1435002: var_98 = 3
  loc_1435011: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435018: LateIdCallSt
  loc_1435020: var_98 = 3
  loc_1435029: var_B8 = &H4B0
  loc_1435035: LateIdCallSt
  loc_143503D: var_98 = 0
  loc_1435046: var_B8 = 4
  loc_143504F: var_D8 = "Amount"
  loc_1435058: LateIdCallSt
  loc_1435060: var_98 = 4
  loc_143506F: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435076: LateIdCallSt
  loc_143507E: var_98 = 4
  loc_143508D: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435094: LateIdCallSt
  loc_143509C: var_98 = 4
  loc_14350A5: var_B8 = &H640
  loc_14350B1: LateIdCallSt
  loc_14350B9: var_98 = 0
  loc_14350C2: var_B8 = 5
  loc_14350CB: var_D8 = "Docid"
  loc_14350D4: LateIdCallSt
  loc_14350DC: var_98 = 5
  loc_14350EB: var_B8 = CVar(CInt(1)) 'Integer
  loc_14350F2: LateIdCallSt
  loc_14350FA: var_98 = 5
  loc_1435103: var_B8 = 0
  loc_143510F: LateIdCallSt
  loc_1435117: var_98 = 0
  loc_1435120: var_B8 = 6
  loc_1435129: var_D8 = "Bill No"
  loc_1435132: LateIdCallSt
  loc_143513A: var_98 = 6
  loc_1435149: var_B8 = CVar(CInt(1)) 'Integer
  loc_1435150: LateIdCallSt
  loc_1435158: var_98 = 6
  loc_1435161: var_B8 = &H3E8
  loc_143516D: LateIdCallSt
  loc_1435175: var_98 = 0
  loc_143517E: var_B8 = 7
  loc_1435187: var_D8 = "Sno"
  loc_1435190: LateIdCallSt
  loc_1435198: var_98 = 7
  loc_14351A7: var_B8 = CVar(CInt(1)) 'Integer
  loc_14351AE: LateIdCallSt
  loc_14351B6: var_98 = 7
  loc_14351BF: var_B8 = 0
  loc_14351CB: LateIdCallSt
  loc_14351D3: var_98 = 0
  loc_14351DC: var_B8 = 8
  loc_14351E5: var_D8 = "FacilityCode"
  loc_14351EE: LateIdCallSt
  loc_14351F6: var_98 = 8
  loc_1435205: var_B8 = CVar(CInt(7)) 'Integer
  loc_143520C: LateIdCallSt
  loc_1435214: var_98 = 8
  loc_143521D: var_B8 = 0
  loc_1435229: LateIdCallSt
  loc_1435231: var_98 = 0
  loc_143523A: var_B8 = 9
  loc_1435243: var_D8 = "Facility/Tax"
  loc_143524C: LateIdCallSt
  loc_1435254: var_98 = 9
  loc_1435263: var_B8 = CVar(CInt(7)) 'Integer
  loc_143526A: LateIdCallSt
  loc_1435272: var_98 = 9
  loc_143527B: var_B8 = 0
  loc_1435287: LateIdCallSt
  loc_143528F: var_98 = 0
  loc_1435298: var_B8 = &HA
  loc_14352A1: var_D8 = "Revcode"
  loc_14352AA: LateIdCallSt
  loc_14352B2: var_98 = &HA
  loc_14352C1: var_B8 = CVar(CInt(7)) 'Integer
  loc_14352C8: LateIdCallSt
  loc_14352D0: var_98 = &HA
  loc_14352D9: var_B8 = 0
  loc_14352E5: LateIdCallSt
  loc_14352ED: var_98 = 0
  loc_14352F6: var_B8 = &HB
  loc_14352FF: var_D8 = "AppDate"
  loc_1435308: LateIdCallSt
  loc_1435310: var_98 = &HB
  loc_143531F: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435326: LateIdCallSt
  loc_143532E: var_98 = &HB
  loc_1435337: var_B8 = 0
  loc_1435343: LateIdCallSt
  loc_143534B: var_98 = 0
  loc_1435354: var_B8 = &HC
  loc_143535D: var_D8 = "ForPeriod"
  loc_1435366: LateIdCallSt
  loc_143536E: var_98 = &HC
  loc_143537D: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435384: LateIdCallSt
  loc_143538C: var_98 = &HC
  loc_1435395: var_B8 = 0
  loc_14353A1: LateIdCallSt
  loc_14353A9: var_98 = 0
  loc_14353B2: var_B8 = &HD
  loc_14353BB: var_D8 = "ToPeriod"
  loc_14353C4: LateIdCallSt
  loc_14353CC: var_98 = &HD
  loc_14353DB: var_B8 = CVar(CInt(7)) 'Integer
  loc_14353E2: LateIdCallSt
  loc_14353EA: var_98 = &HD
  loc_14353F3: var_B8 = 0
  loc_14353FF: LateIdCallSt
  loc_1435407: var_98 = 0
  loc_1435410: var_B8 = &HE
  loc_1435419: var_D8 = "Disc Per"
  loc_1435422: LateIdCallSt
  loc_143542A: var_98 = &HE
  loc_1435439: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435440: LateIdCallSt
  loc_1435448: var_98 = &HE
  loc_1435451: var_B8 = 0
  loc_143545D: LateIdCallSt
  loc_1435465: var_98 = 0
  loc_143546E: var_B8 = &HF
  loc_1435477: var_D8 = "Discount YN"
  loc_1435480: LateIdCallSt
  loc_1435488: var_98 = &HF
  loc_1435497: var_B8 = CVar(CInt(7)) 'Integer
  loc_143549E: LateIdCallSt
  loc_14354A6: var_98 = &HF
  loc_14354AF: var_B8 = 0
  loc_14354BB: LateIdCallSt
  loc_14354C3: var_98 = 0
  loc_14354CC: var_B8 = &H10
  loc_14354D5: var_D8 = "Discount Amt"
  loc_14354DE: LateIdCallSt
  loc_14354E6: var_98 = &H10
  loc_14354F5: var_B8 = CVar(CInt(7)) 'Integer
  loc_14354FC: LateIdCallSt
  loc_1435504: var_98 = &H10
  loc_143550D: var_B8 = 0
  loc_1435519: LateIdCallSt
  loc_1435521: var_98 = 0
  loc_143552A: var_B8 = &H11
  loc_1435533: var_D8 = "S Chrg."
  loc_143553C: LateIdCallSt
  loc_1435544: var_98 = &H11
  loc_1435553: var_B8 = CVar(CInt(7)) 'Integer
  loc_143555A: LateIdCallSt
  loc_1435562: var_98 = &H11
  loc_143556B: var_B8 = 0
  loc_1435577: LateIdCallSt
  loc_143557F: var_98 = 0
  loc_1435588: var_B8 = &H12
  loc_1435591: var_D8 = "Schcharge APp"
  loc_143559A: LateIdCallSt
  loc_14355A2: var_98 = &H12
  loc_14355B1: var_B8 = CVar(CInt(7)) 'Integer
  loc_14355B8: LateIdCallSt
  loc_14355C0: var_98 = &H12
  loc_14355C9: var_B8 = 0
  loc_14355D5: LateIdCallSt
  loc_14355DD: var_98 = 0
  loc_14355E6: var_B8 = &H13
  loc_14355EF: var_D8 = "Tax Amt"
  loc_14355F8: LateIdCallSt
  loc_1435600: var_98 = &H13
  loc_143560F: var_B8 = CVar(CInt(7)) 'Integer
  loc_1435616: LateIdCallSt
  loc_143561E: var_98 = &H13
  loc_1435627: var_B8 = 0
  loc_1435633: LateIdCallSt
  loc_143563B: var_98 = 0
  loc_1435644: var_B8 = &H14
  loc_143564D: var_D8 = "Location"
  loc_1435656: LateIdCallSt
  loc_143565E: var_98 = &H14
  loc_143566D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1435674: LateIdCallSt
  loc_143567C: var_98 = &H14
  loc_1435685: var_B8 = &HDAC
  loc_1435691: LateIdCallSt
  loc_1435699: var_98 = 0
  loc_14356A2: var_B8 = &H15
  loc_14356AB: var_D8 = "LocationCode"
  loc_14356B4: LateIdCallSt
  loc_14356BC: var_98 = &H15
  loc_14356CB: var_B8 = CVar(CInt(1)) 'Integer
  loc_14356D2: LateIdCallSt
  loc_14356DA: var_98 = &H15
  loc_14356E3: var_B8 = 0
  loc_14356EF: LateIdCallSt
  loc_14356F9: Set var_88 = Nothing 
  loc_1435707: var_98 = CVar(CLng(3)) 'Long
  loc_1435718: LateIdCallSt
  loc_1435720: var_98 = &HA
  loc_143572C: Me.FGCat.Cols = var_98
  loc_1435745: Set var_F0 = Me.Txt
  loc_143574B: Call 0.Method_Proc_350_43_14359480 (CInt(0), var_F4, var_F8, Nothing, &H7D0, var_98, var_88)
  loc_1435753: var_B8 = var_F4.Left
  loc_143575B: var_98 = CVar(var_F8) 'Single
  loc_143576A: Me.DGParty.Left = var_98
  loc_1435786: Set var_FC = Me.Txt
  loc_143578C: Call 0.Method_Proc_350_43_14359480 (CInt(0), var_100, var_104, var_98, var_88)
  loc_1435794: var_B8 = var_100.Height
  loc_14357A7: Set var_F0 = Me.Txt
  loc_14357AD: Call 0.Method_Proc_350_43_14359480 (CInt(0), var_F4, var_F8)
  loc_14357B5: var_98 = var_F4.Top
  loc_14357C5: var_98 = CVar(((var_F8 + var_104) + CDbl(&H19))) 'Single
  loc_14357D4: Me.DGParty.Top = var_98
  loc_14357F4: Set var_F0 = Me.Txt
  loc_14357FA: Call 0.Method_Proc_350_43_14359480 (CInt(1), var_F4, var_F8)
  loc_1435802: var_88 = var_F4.Left
  loc_1435819: Me.DGFacility.Left = CVar(var_F8)
  loc_1435835: Set var_FC = Me.Txt
  loc_143583B: Call 0.Method_Proc_350_43_14359480 (CInt(1), var_100)
  loc_1435856: Set var_F0 = Me.Txt
  loc_143585C: Call 0.Method_Proc_350_43_14359480 (CInt(1), var_F4)
  loc_1435874: var_98 = CVar(((var_F4.Top + var_100.Height) + CDbl(&H19))) 'Single
  loc_1435883: Me.DGFacility.Top = CVar(var_F4.Top)
  loc_14358A3: Set var_F0 = Me.Txt
  loc_14358A9: Call 0.Method_Proc_350_43_14359480 (CInt(&HB), var_F4)
  loc_14358C8: Me.DGLocation.Left = CVar(var_F4.Left)
  loc_14358E4: Set var_FC = Me.Txt
  loc_14358EA: Call 0.Method_Proc_350_43_14359480 (CInt(&HB), var_100)
  loc_1435905: Set var_F0 = Me.Txt
  loc_143590B: Call 0.Method_Proc_350_43_14359480 (CInt(&HB), var_F4)
  loc_1435923: var_98 = CVar(((var_F4.Top + var_100.Height) + CDbl(&H19))) 'Single
  loc_1435932: Me.DGLocation.Top = CVar(var_F4.Left)
  loc_1435944: Exit Sub
End Sub

Public Sub Proc_350_44_F5EB70
  'Data Table: 5608C8
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F5EA52: Set var_8C = Me.Txt
  loc_F5EA58: Call 0.Method_Proc_350_44_F5EB70C (var_8E, var_86)
  loc_F5EA68: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F5EA7E:   Set var_8C = Me.Txt
  loc_F5EA84:   Call 0.Method_Proc_350_44_F5EB700 (CInt(var_86), var_98)
  loc_F5EA8C:   var_98.Text = vbNullString
  loc_F5EAA8:   Set var_8C = Me.Txt
  loc_F5EAAE:   Call 0.Method_Proc_350_44_F5EB700 (CInt(var_86), var_98)
  loc_F5EAB6:   var_98.Tag = vbNullString
  loc_F5EAC5: Next var_92 'Byte
  loc_F5EAD1: global_112 = vbNullString
  loc_F5EADB: global_116 = vbNullString
  loc_F5EAE9: global_120 = CDate(CDbl(1))
  loc_F5EAF8: Me.frFacility.Visible = False
  loc_F5EB13: Me.FGrid.Rows = 1
  loc_F5EB30: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F5EB38: Set var_98 = Me.FGrid
  loc_F5EB67: Me.FGrid.FixedRows = 1
  loc_F5EB6F: Exit Sub
End Sub

Public Sub Proc_350_45_F5E89C(arg_C) 'F5E89C
  'Data Table: 5608C8
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_A8 As Variant
  loc_F5E77A: Set var_8C = Me.Txt
  loc_F5E780: Call 0.Method_Proc_350_45_F5E89CC (var_8E, var_86)
  loc_F5E790: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F5E7A6:   Set var_8C = Me.Txt
  loc_F5E7AC:   Call 0.Method_Proc_350_45_F5E89C0 (CInt(var_86), var_98)
  loc_F5E7B4:   var_98.Enabled = arg_C
  loc_F5E7C3: Next var_92 'Byte
  loc_F5E7D6: Set var_8C = Me.Txt
  loc_F5E7DC: Call 0.Method_Proc_350_45_F5E89C0 (CInt(5), var_98)
  loc_F5E7E4: var_98.Enabled = False
  loc_F5E7FD: Set var_8C = Me.Txt
  loc_F5E803: Call 0.Method_Proc_350_45_F5E89C0 (CInt(9), var_98)
  loc_F5E80B: var_98.Enabled = False
  loc_F5E825: Me.CmdeInvoiceJson.Enabled = Not(arg_C)
  loc_F5E835: Set var_8C = Me.CmdGeneInvoice
  loc_F5E83B: var_8C.Enabled = Not(arg_C)
  loc_F5E861: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F5E876: Me.QrImage.Picture = var_8C
  loc_F5E890: Me.FreInvInfo.Visible = Not(arg_C)
  loc_F5E898: Exit Sub
End Sub

Public Sub Proc_350_46_EB90A0
  'Data Table: 5608C8
  loc_EB9018: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_EB902A:   Me.DGParty.Visible = False
  loc_EB9032: End If
  loc_EB904E: If (CBool(Me.DGLocation.Visible) = &HFF) Then
  loc_EB9060:   Me.DGLocation.Visible = False
  loc_EB9068: End If
  loc_EB9084: If (CBool(Me.DGFacility.Visible) = &HFF) Then
  loc_EB9096:   Me.DGFacility.Visible = False
  loc_EB909E: End If
  loc_EB909E: Exit Sub
End Sub

Public Sub Proc_350_47_E4CFC4
  'Data Table: 5608C8
  loc_E4CFAB: If (Me.frFacility.Visible = &HFF) Then
  loc_E4CFBA:   Me.frFacility.Visible = False
  loc_E4CFC2: End If
  loc_E4CFC2: Exit Sub
End Sub

Public Sub Proc_350_48_DFC1E0
  'Data Table: 5608C8
  loc_DFC1DC: Exit Sub
  loc_DFC1DD:  = var_C00
End Sub

Public Sub Proc_350_49_127F788(arg_C) '127F788
  'Data Table: 5608C8
  Dim var_8C As Recordset15
  loc_127F1B5: Set var_8C = arg_C 
  loc_127F1DD: var_8C.Fields.Append "mLine", &HC8, 2
  loc_127F209: var_8C.Fields.Append "DocId", &HC8, &H15
  loc_127F235: var_8C.Fields.Append "PartyName", &HC8, &H4B
  loc_127F261: var_8C.Fields.Append "Add1", &HC8, &H32
  loc_127F28D: var_8C.Fields.Append "Add2", &HC8, &H32
  loc_127F2B9: var_8C.Fields.Append "Add3", &HC8, &H32
  loc_127F2E5: var_8C.Fields.Append "CityName", &HC8, &H32
  loc_127F311: var_8C.Fields.Append "StateCode", &HC8, 6
  loc_127F33D: var_8C.Fields.Append "StateName", &HC8, &H32
  loc_127F369: var_8C.Fields.Append "GSTIN", &HC8, &HF
  loc_127F395: var_8C.Fields.Append "Location", &HC8, &H32
  loc_127F3C1: var_8C.Fields.Append "PartyBillNo", 3, &HB
  loc_127F3ED: var_8C.Fields.Append "BillDate", 7, 0
  loc_127F419: var_8C.Fields.Append "DueDate", 7, 0
  loc_127F445: var_8C.Fields.Append "Remark", &HC8, &HFF
  loc_127F471: var_8C.Fields.Append "VType", &HC8, 5
  loc_127F49D: var_8C.Fields.Append "FacilityBillNo", 3, &HB
  loc_127F4C9: var_8C.Fields.Append "Facility", &HC8, &H32
  loc_127F4F5: var_8C.Fields.Append "ChargeType", &HC8, &HF
  loc_127F521: var_8C.Fields.Append "Unit", 5, &H13
  loc_127F54D: var_8C.Fields.Append "UnitRate", 5, &H13
  loc_127F579: var_8C.Fields.Append "Amount", 5, &H13
  loc_127F5A5: var_8C.Fields.Append "AppDate", 7, 0
  loc_127F5D1: var_8C.Fields.Append "ForPeriod", 7, 0
  loc_127F5FD: var_8C.Fields.Append "ToPeriod", 7, 0
  loc_127F629: var_8C.Fields.Append "LReading", 5, &H13
  loc_127F655: var_8C.Fields.Append "BillVou", &HC8, &H1E
  loc_127F681: var_8C.Fields.Append "eInvIRN", &HC8, &H40
  loc_127F6AD: var_8C.Fields.Append "eInvAckNo", &HC8, &HF
  loc_127F6D9: var_8C.Fields.Append "eInvAckDt", 7, 0
  loc_127F705: var_8C.Fields.Append "QRImage", &HCD, &H3E8
  loc_127F731: var_8C.Fields.Append "Mark", &HC8, 1
  loc_127F741: var_8C.CursorType = 3
  loc_127F74E: var_8C.LockType = 3
  loc_127F76D: var_8C.Open var_A0, var_B0, -1
  loc_127F774: Set var_8C = Nothing 
  loc_127F77B: Set var_88 = arg_C 
  loc_127F77F: Proc_350_49_127F788 = -1
End Sub

Public Sub Proc_350_50_1639A7C(arg_C) '1639A7C
  'Data Table: 5608C8
  Dim var_8A As Integer
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_5608CF As Connection15
  Dim var_90 As Recordset15
  Dim var_D4 As Fields15
  Dim var_D0 As Variant
  Dim var_94 As Recordset15
  Dim var_F4 As Variant
  Dim var_108 As Fields15
  Dim var_110 As Fields15
  Dim var_158 As Fields15
  Dim var_16C As Variant
  Dim var_18C As TextBox
  Dim var_104 As Variant
  Dim var_1D0 As Variant
  Dim var_98 As Recordset15
  Dim var_A0 As Recordset15
  Dim var_A4 As Recordset15
  loc_163853A: var_8A = 1
  loc_1638561: unk_5608CF.Execute "Select * from FacilityBill1 where Docid1='" & arg_C & "'", var_D0, -1
  loc_163856C: Set var_90 = var_D4
  loc_1638590: If (var_90.RecordCount > 0) Then
  loc_1638593:   ' Referenced from: 1638CF4
  loc_16385A2:   If Not(var_90.EOF) Then
  loc_16385C4:     var_D4 = var_90.Fields
  loc_16385DD:     var_AC = Proc_6_38_E68A98(CVar(var_D4.Item("FacilityCode")), "Select Name,accode from FacilityMast where Code='", var_104, -1)
  loc_16385F1:     unk_5608CF.Execute var_108 & "Select * from FacilityBill1 where Docid1='" & arg_C & "'", var_D4, var_8A
  loc_16385FC:     Set var_94 = var_108
  loc_1638652:     var_B0 = -1 & Proc_6_38_E68A98(CVar(var_90.Fields.Item("DocID")), "DELETE FROM LEDGER WHERE DOCID='", var_104)
  loc_1638662:     unk_5608CF.Execute var_108 & "Select * from FacilityBill1 where Docid1='" & arg_C & "'", var_108, 
  loc_163869D:     var_D0 = CVar(var_94.Fields.Item("Name")) 'Address
  loc_16386E0:     var_A8 = Proc_6_38_E68A98(var_D0) & " Bill No : " & CStr(var_90.Fields.Item("VNo").Value)
  loc_1638745:     var_200 = var_90.Fields.Item("vType").Value
  loc_163875C:     var_110 = var_90.Fields
  loc_16387E1:     var_250 = var_94.Fields.Item("AcCode").Value
  loc_1638808:     var_264 = var_90.Fields.Item("Amount").Value
  loc_163881B:     Set var_188 = Me.Txt
  loc_1638821:     Call 0.Method_Proc_350_50_1639A7C0 (CInt(0), var_18C)
  loc_1638829:     var_AC = var_18C.Tag
  loc_1638832:     Set var_190 = Me.TopCtrl1
  loc_1638838:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_163886A:     var_1E0 = IIf((CStr(var_D0) = "Add"), "A", "E")
  loc_1638874:     var_288 = 0
  loc_163887F:     var_284 = 0
  loc_163888A:     var_280 = 0
  loc_16388F1:     Proc_6_141_12E1E18(MemVar_1F92044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_200), CLng(var_110.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F92070, CDate(var_90.Fields.Item("VDate").Value))
  loc_1638953:     var_8A = (var_8A + 1)
  loc_1638992:     var_104 = "Select * from Facilitybill2 where Docid1='" & var_90.Fields.Item("DocID").Value 
  loc_16389B1:     var_108 = var_90.Fields
  loc_16389D7:     unk_5608CF.Execute CStr(var_104 & "' And SNo=" & var_108.Item("SNo").Value), var_200, -1
  loc_16389E2:     Set var_94 = var_110
  loc_1638A04:     ' Referenced from: 1638CE9
  loc_1638A13:     If Not(var_94.EOF) Then
  loc_1638A45:       var_D0 = CVar(var_94.Fields.Item("TaxCode")) 'Address
  loc_1638A4E:       var_AC = Proc_6_38_E68A98(var_D0, "Select ACcode from RevMast where Code='", var_104, -1, var_108, var_110, var_8A)
  loc_1638A62:       unk_5608CF.Execute CStr(var_250) & CStr(var_104 & "' And SNo=" & var_108.Item("SNo").Value) & "'", CSng(var_264), CDbl(0)
  loc_1638A99:       var_D4 = var_90.Fields
  loc_1638B6C:       var_250 = var_90.Fields.Fields.Item("AcCode").Value
  loc_1638B93:       var_264 = var_94.Fields.Item("TaxAmt").Value
  loc_1638BA6:       Set var_188 = Me.Txt
  loc_1638BAC:       Call 0.Method_Proc_350_50_1639A7C0 (CInt(0), var_18C, CStr(var_104 & "' And SNo=" & var_90.Fields.Item("SNo").Value))
  loc_1638BB4:       var_AC = var_18C.Tag
  loc_1638BBD:       Set var_190 = Me.TopCtrl1
  loc_1638BC3:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A8)
  loc_1638BD1:       var_1D0 = "E"
  loc_1638BDC:       var_104 = "A"
  loc_1638BF5:       var_1E0 = IIf((CStr(var_D0) = "Add"), var_104, var_1D0)
  loc_1638BFF:       var_288 = 0
  loc_1638C0A:       var_284 = 0
  loc_1638C15:       var_280 = 0
  loc_1638C7C:       Proc_6_141_12E1E18(MemVar_1F92044, CStr(var_D4.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F92070, CDate(var_90.Fields.Item("VDate").Value))
  loc_1638CDE:       var_8A = (var_8A + 1)
  loc_1638CE4:       var_94.MoveNext
  loc_1638CE9:       GoTo loc_1638A04
  loc_1638CEC:     End If
  loc_1638CEF:     var_90.MoveNext
  loc_1638CF4:     GoTo loc_1638593
  loc_1638CF7:   End If
  loc_1638D0B:   var_AC = "SELECT Sum(S.Amount) AS RevAmt,max(S.SunCode) as SundryCode FROM (SunTranFacility S LEFT JOIN RevMast ON S.RevCode = RevMast.Code) Where S.SunCode='" & MemVar_1F92078
  loc_1638D29:   unk_5608CF.Execute var_AC & "NET' and DocID='" & arg_C & "' Group By S.SunCode", var_D0, -1
  loc_1638D34:   Set var_A4 = var_D4
  loc_1638D5C:   var_AC = "SELECT S.Amount AS RevAmt, S.RevCode, S.Vdate AS VDate, R.Name AS Revenue, S.SunCode AS SundryCode, R.ACCode AS ACode, R.FieldType AS FieldType, ST.CalcSign as CSign  FROM ((SunTranFacility AS S LEFT JOIN RevMast AS R ON S.RevCode = R.Code) " & "LEFT JOIN Depart AS D ON S.RestCode = D.Code) LEFT JOIN SundryType AS ST ON S.SunAppDate = ST.AppDate  AND ST.V_Type=S.Vtype  and s.SunCode=st.sundrycode  WHERE IsNull(S.RevCode,'')<>''  AND S.DocId='"
  loc_1638D73:   unk_5608CF.Execute var_AC & arg_C & "' ORDER BY S.SNo", var_D0, -1
  loc_1638D7E:   Set var_A0 = var_D4
  loc_1638DA4:   If (var_A0.RecordCount > 0) Then
  loc_1638DAA:     var_A0.MoveFirst
  loc_1638DB2:     var_90.MoveFirst
  loc_1638DB7:     ' Referenced from: 16397FC
  loc_1638DC6:     If Not(var_A0.EOF) Then
  loc_1638DD8:       var_D4 = var_A0.Fields
  loc_1638DF1:       var_AC = Proc_6_38_E68A98(CVar(var_D4.Item("FIELDTYPE")), var_D4, var_D4, var_8A, CStr(var_250), CSng(var_264))
  loc_1638E02:       If (var_AC <> "T") Then
  loc_1638E2B:         Proc_6_39_E7C810(var_104, CVar(var_A0.Fields.Item("RevAmt")), CDbl(0), var_AC)
  loc_1638E45:         If (var_104 > 0) Then
  loc_1638E72:           var_F4 = "-"
  loc_1638E84:           If (var_A0.Fields.Item("CSign").Value = 0) Then
  loc_1638F6C:             var_298 = var_A0.Fields.Item("ACode").Value
  loc_1638F97:             Proc_6_39_E7C810(var_104, CVar(var_A0.Fields.Item("RevAmt")), var_A8)
  loc_1638FA0:             Set var_188 = Me.TopCtrl1
  loc_1638FA6:             Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(MemVar_1F920C8)
  loc_1638FD8:             var_200 = IIf((CStr(var_1D0) = "Add"), "A", "E")
  loc_1638FE2:             var_284 = 0
  loc_1638FED:             var_280 = 0
  loc_1638FF8:             var_27C = 0
  loc_1639012:             var_254 = vbNullString
  loc_1639061:             Proc_6_141_12E1E18(MemVar_1F92044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F92070, CDate(var_90.Fields.Item("VDate").Value))
  loc_16390BC:           Else
  loc_16391A1:             var_298 = var_A0.Fields.Item("ACode").Value
  loc_16391CC:             Proc_6_39_E7C810(var_104, CVar(var_A0.Fields.Item("RevAmt")), CStr(var_298), CDbl(0), CSng(var_104))
  loc_16391D5:             Set var_188 = Me.TopCtrl1
  loc_16391DB:             Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_254)
  loc_16391F4:             var_1E0 = "A"
  loc_163920D:             var_200 = IIf((CStr(var_1D0) = "Add"), var_1E0, "E")
  loc_1639217:             var_284 = 0
  loc_1639222:             var_280 = 0
  loc_163922D:             var_27C = 0
  loc_1639247:             var_254 = vbNullString
  loc_1639296:             Proc_6_141_12E1E18(MemVar_1F92044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F92070, CDate(var_90.Fields.Item("VDate").Value))
  loc_16392EE:           End If
  loc_16392F4:           var_8A = (var_8A + 1)
  loc_16392FA:         Else
  loc_1639320:           Proc_6_39_E7C810(var_104, CVar(var_A0.Fields.Item("RevAmt")), var_8A, CStr(var_298), CSng(var_104), CDbl(0))
  loc_163933A:           If (var_104 < 0) Then
  loc_1639367:             var_F4 = "-"
  loc_1639379:             If (var_A0.Fields.Item("CSign").Value = 0) Then
  loc_1639461:               var_2A8 = var_A0.Fields.Item("ACode").Value
  loc_163948C:               Proc_6_39_E7C810(var_104, CVar(var_A0.Fields.Item("RevAmt")), var_254, var_A8)
  loc_1639495:               Set var_188 = Me.TopCtrl1
  loc_163949B:               Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(MemVar_1F920C8)
  loc_16394CD:               var_214 = IIf((CStr(var_1E0) = "Add"), "A", "E")
  loc_16394D7:               var_284 = 0
  loc_16394E2:               var_280 = 0
  loc_16394ED:               var_27C = 0
  loc_1639507:               var_254 = vbNullString
  loc_1639517:               var_1D0 = Abs(var_104)
  loc_163955A:               Proc_6_141_12E1E18(MemVar_1F92044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F92070, CDate(var_90.Fields.Item("VDate").Value))
  loc_16395B5:             Else
  loc_1639692:               var_16C = var_A0.Fields.Item("ACode")
  loc_163969A:               var_2A8 = var_16C.Value
  loc_16396C5:               Proc_6_39_E7C810(var_104, CVar(var_A0.Fields.Item("RevAmt")), CStr(var_2A8), CSng(var_1D0), CDbl(0))
  loc_16396CE:               Set var_188 = Me.TopCtrl1
  loc_16396D4:               Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_254)
  loc_16396F7:               var_AC = CStr(var_1E0)
  loc_1639706:               var_214 = IIf((var_AC = "Add"), "A", "E")
  loc_1639710:               var_284 = 0
  loc_163971B:               var_280 = 0
  loc_1639726:               var_27C = 0
  loc_1639740:               var_254 = vbNullString
  loc_1639749:               var_1D0 = Abs(var_104)
  loc_1639793:               Proc_6_141_12E1E18(MemVar_1F92044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F92070, CDate(var_90.Fields.Item("VDate").Value))
  loc_16397EB:             End If
  loc_16397F1:             var_8A = (var_8A + 1)
  loc_16397F4:           End If
  loc_16397F4:         End If
  loc_16397F4:       End If
  loc_16397F7:       var_A0.MoveNext
  loc_16397FC:       GoTo loc_1638DB7
  loc_16397FF:     End If
  loc_16397FF:   End If
  loc_1639813:   If (var_A4.RecordCount > 0) Then
  loc_16398E7:     Set var_158 = Me.Txt
  loc_16398ED:     Call 0.Method_Proc_350_50_1639A7C0 (CInt(0), var_16C, var_AC, var_8A, CStr(var_2A8), CDbl(0))
  loc_16398F5:     CSng(var_1D0) = var_16C.Tag
  loc_1639920:     Proc_6_39_E7C810(var_104, CVar(var_A4.Fields.Item("RevAmt")), var_254, var_A8)
  loc_1639929:     Set var_188 = Me.TopCtrl1
  loc_163992F:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(MemVar_1F920C8)
  loc_1639961:     var_200 = IIf((CStr(var_1D0) = "Add"), "A", "E")
  loc_163996B:     var_288 = 0
  loc_1639976:     var_284 = 0
  loc_1639981:     var_280 = 0
  loc_163999B:     var_278 = vbNullString
  loc_16399E9:     Proc_6_141_12E1E18(MemVar_1F92044, CStr(var_90.Fields.Item("DocID1").Value), var_8A, CStr(var_90.Fields.Item("vType").Value), CLng(var_90.Fields.Item("VNo").Value), CStr(var_90.Fields.Item("vPrefix").Value), MemVar_1F92070, CDate(var_90.Fields.Item("VDate").Value))
  loc_1639A45:     var_8A = (var_8A + 1)
  loc_1639A48:   End If
  loc_1639A48: End If
  loc_1639A4D: Set var_A4 = Nothing
  loc_1639A55: Set var_A0 = Nothing
  loc_1639A5D: Set var_94 = Nothing
  loc_1639A65: Set var_90 = Nothing
  loc_1639A6D: Set var_98 = Nothing
  loc_1639A75: Set var_9C = Nothing
  loc_1639A78: Exit Sub
End Sub

Public Sub Proc_350_51_10EB1C8
  'Data Table: 5608C8
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
  loc_10EAEED: var_90 = "FACL"
  loc_10EAF04: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10EAF35: Set var_A8 = Me.Txt
  loc_10EAF3B: Call 0.Method_Proc_350_51_10EB1C80 (CInt(6), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10EAF4A: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10EAF52: var_EC = -1 & var_CC 
  loc_10EAF66: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10EAF71: Set var_8C = var_134
  loc_10EAFAD: If (var_8C.RecordCount > 0) Then
  loc_10EAFEC:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10EAFEF:     GoTo loc_10EB07C
  loc_10EAFF2:   End If
  loc_10EB023:   global_76 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10EB04E:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10EB063:   var_CC = (var_AC.Value + 1)
  loc_10EB06B:   global_80 = CInt(var_CC)
  loc_10EB07C:   ' Referenced from: 10EAFEF
  loc_10EB07C: End If
  loc_10EB0A7: var_BC = Space((5 - Len(var_90)))
  loc_10EB0AF: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10EB0BC: var_EC = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(global_76))
  loc_10EB0D0: var_10C = Space((5 - Len(global_76)))
  loc_10EB0D8: var_130 = (var_EC + var_EC & " Order By VP.Date_From DESC")
  loc_10EB0F1: var_14C = Space((8 - Len(CStr(global_80))))
  loc_10EB0F9: var_15C = (var_130 + var_14C)
  loc_10EB108: var_17C = (var_15C + CVar(CStr(global_80)))
  loc_10EB113: global_68 = CStr(var_17C)
  loc_10EB149: Me.LblVPrefix.Caption = global_76
  loc_10EB162: Set var_A8 = Me.Txt
  loc_10EB168: Call 0.Method_Proc_350_51_10EB1C80 (CInt(5), var_AC)
  loc_10EB170: var_AC.Text = global_68
  loc_10EB192: Set var_A8 = Me.Txt
  loc_10EB198: Call 0.Method_Proc_350_51_10EB1C80 (CInt(9), var_AC)
  loc_10EB1A0: var_AC.Text = CStr(global_80)
  loc_10EB1B5: var_88 = global_68
  loc_10EB1BD: Set var_8C = Nothing
  loc_10EB1C0: Proc_350_51_10EB1C8 = global_80
  loc_10EB1C6: Exit Sub
End Sub

Public Sub Proc_350_52_11263B8
  'Data Table: 5608C8
  Dim var_94 As Variant
  Dim var_9C As String
  Dim unk_5608CF As Connection15
  Dim var_B0 As Variant
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_C0 As Variant
  Dim var_98 As String
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_DC As Variant
  Dim var_130 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_1B8 As Variant
  Dim var_188 As Variant
  loc_11260A6: Set var_90 = Me.Txt
  loc_11260AC: Call 0.Method_Proc_350_52_11263B80 (CInt(1), var_94, var_98, "Select ShortName from FacilityMast where Code='")
  loc_11260B4: var_C0 = var_94.Tag
  loc_11260BD: var_9C = -1 & var_98
  loc_11260CD: unk_5608CF.Execute var_9C & "'", var_C4, 
  loc_1126107: var_94 = var_C4.Fields.Item("ShortName")
  loc_1126118: var_8C = Proc_6_38_E68A98(CVar(var_94))
  loc_1126135: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1126166: Set var_90 = Me.Txt
  loc_112616C: Call 0.Method_Proc_350_52_11263B80 (CInt(6), var_94, CVar(var_98 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_8C & "' And VP.Date_From<="))
  loc_112617B: Proc_6_7_F25D88(var_DC, CVar(var_94), var_130)
  loc_1126183: var_FC = -1 & var_DC 
  loc_1126197: Me.Txt.Execute CStr(var_FC & " Order By VP.Date_From DESC"), var_C4, 
  loc_11261A2: Set var_88 = var_C4
  loc_11261DE: If (var_88.RecordCount > 0) Then
  loc_112621D:   If (var_88.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1126220:     GoTo loc_11262AD
  loc_1126223:   End If
  loc_1126254:   global_76 = CStr(var_88.Fields.Item("Prefix").Value)
  loc_1126294:   var_DC = (var_88.Fields.Item("start_srl_no").Value + 1)
  loc_112629C:   global_80 = CInt(var_DC)
  loc_11262AD:   ' Referenced from: 1126220
  loc_11262AD: End If
  loc_11262B2: var_120 = CVar(CLng(arg_14)) 'Long
  loc_11262EA: var_C0 = Space((5 - Len(var_8C)))
  loc_11262F2: var_EC = (CVar(CVar(CLng(5)) & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_8C) + var_88.Fields.Item("start_srl_no").Value)
  loc_11262FF: var_FC = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_8C & "' And VP.Date_From<=") + CVar(global_76))
  loc_1126313: var_10C = Space((5 - Len(global_76)))
  loc_112631B: var_130 = (var_FC + var_FC & " Order By VP.Date_From DESC")
  loc_1126334: var_148 = Space((8 - Len(CStr(global_80))))
  loc_112633C: var_158 = (var_130 + var_148)
  loc_112634B: var_178 = (var_158 + CVar(CStr(global_80)))
  loc_1126350: var_1B8 = CVar(CStr(var_178)) 'String
  loc_1126357: LateIdCallSt
  loc_1126386: var_B0 = CVar(CLng(arg_14)) 'Long
  loc_112638E: var_188 = CVar(CLng(6)) 'Long
  loc_112639B: var_C0 = CVar(CStr(global_80)) 'String
  loc_11263A2: LateIdCallSt
  loc_11263B2: Set var_88 = Nothing
  loc_11263B5: Exit Sub
End Sub

Public Sub Proc_350_53_1248C64(arg_C, arg_10) '1248C64
  'Data Table: 5608C8
  Dim var_94 As String
  Dim var_98 As String
  Dim var_A8 As String
  Dim var_E4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim unk_5608CF As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_B0 As Variant
  Dim var_144 As TextBox
  Dim var_13C As Label
  Dim var_90 As Recordset15
  loc_1248768: var_94 = "Select LocationFacility.*,FacilityMast.ChargeType,FacilityMast.ChargeUnit,FacilityMast.MeterReading from LocationFacility inner join FacilityMast on (locationFacility.fccode=FacilityMast.Code) where fccode='" & arg_C
  loc_124878B: var_A8 = var_94 & "' and lccode='" & arg_10 & "' and appdate in (select top 1 Appdate from LocationFacility where Fccode='" & arg_C & "' and lccode='"
  loc_12487A7: Set var_B0 = Me.Txt
  loc_12487AD: Call 0.Method_Proc_350_53_1248C640 (CInt(6), var_B4, CVar(var_A8 & arg_10 & "' and appdate<="))
  loc_12487BC: Proc_6_7_F25D88(var_D4, CVar(var_B4), var_138)
  loc_12487C4: var_F4 = -1 & var_D4 
  loc_12487DB: unk_5608CF.Execute CStr(var_F4 & " order by appdate desc)"), var_13C, 
  loc_12487E6: Set var_88 = var_13C
  loc_1248826: If (var_88.RecordCount > 0) Then
  loc_1248863:   Set var_B0 = Me.Txt
  loc_1248869:   Call 0.Method_Proc_350_53_1248C640 (CInt(2), var_B4, CStr(Format(vbNullString, "0.0000")))
  loc_1248871:   var_B4.Text = 1
  loc_1248898:   var_D4 = "0.00"
  loc_12488C3:   Set var_B0 = Me.Txt
  loc_12488C9:   Call 0.Method_Proc_350_53_1248C640 (CInt(4), var_B4, CStr(Format(vbNullString, var_D4)))
  loc_12488D1:   var_B4.Text = 1
  loc_124890F:   Proc_6_39_E7C810(var_D4, CVar(var_88.Fields.Item("UnitRate")))
  loc_1248946:   Set var_13C = Me.Txt
  loc_124894C:   Call 0.Method_Proc_350_53_1248C640 (CInt(3), var_144, CStr(Format(var_D4, "0.00")), 1)
  loc_1248954:   var_144.Text = 1
  loc_12489A9:   Set var_13C = Me.Txt
  loc_12489AF:   Call 0.Method_Proc_350_53_1248C640 (CInt(&HA), var_144, CStr(var_88.Fields.Item("AppDate").Value))
  loc_12489B7:   var_144.Text = 1
  loc_1248A05:   Me.lblChargeType.Caption = CStr(var_88.Fields.Item("ChargeType").Value)
  loc_1248A51:   Me.lblChargeUnit.Caption = CStr(var_88.Fields.Item("ChargeUnit").Value)
  loc_1248A7C:   var_B4 = var_88.Fields.Item("MeterReading")
  loc_1248A94:   Set var_13C = Me.LblCalReadDiff
  loc_1248A9A:   var_13C.Tag = Proc_6_38_E68A98(CVar(var_B4))
  loc_1248AB9:   Me.LblCalReadDiff.Caption = vbNullString
  loc_1248AD6:   var_148 = Me.lblChargeType.Caption
  loc_1248AE4:   If (var_148 = "Calculated") Then
  loc_1248AF4:     var_94 = Me.lblChargeUnit.Caption
  loc_1248B0A:     If (var_94 = "Sq Feet") Then
  loc_1248B2B:       Set var_B0 = Me.Txt
  loc_1248B31:       Call 0.Method_Proc_350_53_1248C640 (CInt(&HB), var_B4, var_94, "Select * from LocationMast where Code='")
  loc_1248B39:       var_C4 = var_B4.Tag
  loc_1248B42:       var_98 = -1 & var_94
  loc_1248B52:       unk_5608CF.Execute var_94 & "' and lccode='" & "'", var_13C, 1
  loc_1248B5D:       Set var_90 = var_13C
  loc_1248B89:       If (var_90.RecordCount > 0) Then
  loc_1248BAB:         var_C4 = CVar(var_90.Fields.Item("Area")) 'Address
  loc_1248BB2:         Proc_6_39_E7C810(var_D4)
  loc_1248BC6:         var_E4 = "0.0000"
  loc_1248BD2:         var_F4 = Format(var_D4, var_E4)
  loc_1248BE9:         Set var_13C = Me.Txt
  loc_1248BEF:         Call 0.Method_Proc_350_53_1248C640 (CInt(2), var_144, CStr(var_F4))
  loc_1248BF7:         var_144.Text = 1
  loc_1248C13:       End If
  loc_1248C13:     End If
  loc_1248C16:   Else
  loc_1248C1E:     If (var_148 = "Fixed Charge") Then
  loc_1248C21:       Call Proc_350_54_11620E0(1)
  loc_1248C26:     End If
  loc_1248C26:   End If
  loc_1248C29: Else
  loc_1248C42:   MsgBox("This Facility is not for specified Location", 0, var_D4, var_E4, var_F4)
  loc_1248C52: End If
  loc_1248C57: Set var_88 = Nothing
  loc_1248C5F: Set var_90 = Nothing
  loc_1248C62: Exit Sub
End Sub

Public Sub Proc_350_54_11620E0
  'Data Table: 5608C8
  Dim var_8C As Label
  Dim var_94 As TextBox
  Dim var_AC As TextBox
  Dim var_158 As TextBox
  Dim var_1D4 As TextBox
  Dim var_110 As Variant
  Dim var_88 As Integer
  Dim var_86 As Integer
  loc_1161DA9: Set var_94 = Me.Txt
  loc_1161DAF: Call 0.Method_Proc_350_54_11620E00 (CInt(&HC), var_98)
  loc_1161DCC: Set var_AC = Me.Txt
  loc_1161DD2: Call 0.Method_Proc_350_54_11620E00 (CInt(&HD), var_B0)
  loc_1161DF7: If (((Me.lblChargeType.Caption = "Fixed Charge") And IsDate(CVar(var_98))) And IsDate(CVar(var_B0))) Then
  loc_1161E08:   Set var_8C = Me.Txt
  loc_1161E0E:   Call 0.Method_Proc_350_54_11620E00 (CInt(&HC), var_94)
  loc_1161E3A:   Set var_98 = Me.Txt
  loc_1161E40:   Call 0.Method_Proc_350_54_11620E00 (CInt(&HC), var_AC)
  loc_1161E71:   Set var_B0 = Me.Txt
  loc_1161E77:   Call 0.Method_Proc_350_54_11620E00 (CInt(&HC), var_158)
  loc_1161EB3:   Set var_1D0 = Me.Txt
  loc_1161EB9:   Call 0.Method_Proc_350_54_11620E00 (CInt(&HC), var_1D4)
  loc_1161F28:   var_278 = DateDiff("d", CDate(CDate("1/" & Month(CDate(CDate(var_94.Text))) & "/" & Year(CDate(CDate(var_AC.Text))))), DateAdd("m", CDbl(1), CDate(CDate("1/" & Month(CDate(CDate(var_158.Text))) & "/" & Year(CDate(CDate(var_1D4.Text)))))), 1, 1)
  loc_1161F31:   var_88 = CInt(var_278)
  loc_1161F8B:   Set var_8C = Me.Txt
  loc_1161F91:   Call 0.Method_Proc_350_54_11620E00 (CInt(&HC), var_94)
  loc_1161FAC:   Set var_98 = Me.Txt
  loc_1161FB2:   Call 0.Method_Proc_350_54_11620E00 (CInt(&HD), var_AC)
  loc_1161FEE:   var_110 = (DateDiff("d", CDate(CDate(var_94.Text)), CDate(CDate(var_AC.Text)), 1, 1) + 1)
  loc_1161FF3:   var_86 = CInt("1/" & Month(CDate(CDate(var_94.Text))) & "/")
  loc_116201A:   If (var_86 <> var_88) Then
  loc_1162059:     Set var_8C = Me.Txt
  loc_116205F:     Call 0.Method_Proc_350_54_11620E00 (CInt(2), var_94, CStr(Format(CVar((CDbl(var_86) / CDbl(var_88))), "0.0000")), 1)
  loc_1162067:     var_94.Text = 1
  loc_1162082:   Else
  loc_11620B6:     Set var_8C = Me.Txt
  loc_11620BC:     Call 0.Method_Proc_350_54_11620E00 (CInt(2), var_94, CStr(Format(1, "0.0000")), 1)
  loc_11620C4:     var_94.Text = 1
  loc_11620DC:   End If
  loc_11620DC: End If
  loc_11620DC: Exit Sub
  loc_11620DD: var_86 = var_88
End Sub

Public Sub Proc_350_55_119AE24(arg_C, arg_10) '119AE24
  'Data Table: 5608C8
  Dim var_8C As Variant
  Dim var_90 As String
  Dim var_94 As String
  Dim var_98 As String
  Dim var_9C As TextBox
  Dim var_A8 As String
  Dim unk_5608CF As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_D0 As Label
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_150 As Double
  loc_119AA68: If (Me.LblCalReadDiff.Tag = "Y") Then
  loc_119AA86:   var_94 = "Select FM1.Reading from (FMReading1 FM1 Left Join FMReading FM On FM1.Code=FM.Code) where FM.LocationCode='" & arg_10 & "' And FM.FacilityCode='"
  loc_119AAA5:   Set var_8C = Me.Txt
  loc_119AAAB:   Call 0.Method_Proc_350_55_119AE240 (CInt(&HC), var_9C, var_A0, var_94 & arg_C & "' And FM1.ForDate='")
  loc_119AAB3:   var_CC = var_9C.Text
  loc_119AABC:   var_A8 = -1 & var_A0
  loc_119AACC:   unk_5608CF.Execute var_A8 & "'", var_D0, 
  loc_119AAD7:   Set var_88 = var_D0
  loc_119AB0B:   If (var_88.RecordCount > 0) Then
  loc_119AB25:     var_9C = var_88.Fields.Item("Reading")
  loc_119AB2D:     var_CC = CVar(var_9C) 'Address
  loc_119AB34:     Proc_6_39_E7C810(var_E4)
  loc_119AB44:     Set var_D0 = Me.LblCalReadDiff
  loc_119AB4A:     var_D0.Caption = CStr(var_E4)
  loc_119AB63:   Else
  loc_119AB71:     Set var_8C = Me.Txt
  loc_119AB77:     Call 0.Method_Proc_350_55_119AE240 (CInt(&HC), var_9C)
  loc_119ABA3:     MsgBox(CVar("Reading Of Specified Date " & var_9C.Text & " not Present"), &H40, var_E4, var_104, var_124)
  loc_119ABC1:   End If
  loc_119ABCF:   Set var_8C = Me.Txt
  loc_119ABD5:   Call 0.Method_Proc_350_55_119AE240 (CInt(&HD), var_9C)
  loc_119ABF5:   var_E4 = DateAdd("D", CDbl(1), CDate(CDate(var_9C.Text)))
  loc_119AC15:   var_94 = "Select Reading from (FMReading1 FM1 Left Join FMReading FM On FM1.Code=FM.Code) where FM.LocationCode='" & arg_10 & "' And FM.FacilityCode='"
  loc_119AC32:   var_134 = CVar(var_94 & arg_C & "' And FM1.ForDate='") & var_E4 & "'" 
  loc_119AC40:   unk_5608CF.Execute CStr(var_134), var_144, -1
  loc_119AC4B:   Set var_88 = var_D0
  loc_119AC87:   If (var_88.RecordCount > 0) Then
  loc_119ACA4:     var_150 = Val(Me.LblCalReadDiff.Caption)
  loc_119ACBE:     var_9C = var_88.Fields.Item("Reading")
  loc_119ACCD:     Proc_6_39_E7C810(var_E4, CVar(var_9C), var_150)
  loc_119ACE4:     var_98 = CStr((Val(CStr(var_E4)) - var_150))
  loc_119ACF1:     Me.LblCalReadDiff.Caption = Me.LblCalReadDiff.Caption & arg_C
  loc_119AD34:     If (CDbl(Val(Me.LblCalReadDiff.Caption)) > CDbl(0)) Then
  loc_119AD65:       var_90 = CStr(Format(CVar(Me.LblCalReadDiff), "0.0000"))
  loc_119AD74:       Set var_8C = Me.Txt
  loc_119AD7A:       Call 0.Method_Proc_350_55_119AE240 (CInt(2), var_9C, var_90, 1)
  loc_119AD82:       var_9C.Text = 1
  loc_119AD9C:     End If
  loc_119AD9F:   Else
  loc_119ADAD:     Set var_8C = Me.Txt
  loc_119ADB3:     Call 0.Method_Proc_350_55_119AE240 (CInt(&HD), var_9C, var_90)
  loc_119ADBB:     var_D0 = var_9C.Text
  loc_119ADFB:     MsgBox("Reading Of Specified Date " & DateAdd("D", CDbl(1), CDate(CDate(var_90))) & " not Present", &H40, var_134, var_144, var_190)
  loc_119AE1B:   End If
  loc_119AE1B: End If
  loc_119AE20: Set var_88 = Nothing
  loc_119AE23: Exit Sub
End Sub

Public Sub Proc_350_56_103EEFC
  'Data Table: 5608C8
  Dim var_A8 As TextBox
  Dim var_B4 As Double
  Dim var_9C As Variant
  Dim var_90 As Double
  Dim unk_5608CF As Connection15
  Dim var_94 As Recordset15
  Dim var_98 As Fields15
  Dim var_A0 As String
  loc_103ECCA: Set var_A4 = Me.Txt
  loc_103ECD0: Call 0.Method_Proc_350_56_103EEFC0 (CInt(3), var_A8)
  loc_103ECE5: var_B4 = Val(var_A8.Text)
  loc_103ECF6: Set var_98 = Me.Txt
  loc_103ECFC: Call 0.Method_Proc_350_56_103EEFC0 (CInt(2), var_9C)
  loc_103ED04: var_A0 = var_9C.Text
  loc_103ED15: var_90 = (Val(var_A0) * var_B4)
  loc_103ED48: Set var_98 = Me.Txt
  loc_103ED4E: Call 0.Method_Proc_350_56_103EEFC0 (CInt(1), var_9C, var_A0, "Select ROffType From FacilityMast Where RoundOff='Y' And Code='", var_D8)
  loc_103ED56: -1 = var_9C.Tag
  loc_103ED6F: unk_5608CF.Execute var_A4 & var_A0 & "'", var_90, var_B4
  loc_103ED7A: Set var_94 = var_A4
  loc_103EDA6: If (var_94.RecordCount > 0) Then
  loc_103EDC3:   var_9C = var_94.Fields.Item(0)
  loc_103EDD8:   var_88 = Proc_6_38_E68A98(var_9C.Value)
  loc_103EDE5: End If
  loc_103EDE8: var_E0 = var_88
  loc_103EDF3: If (var_E0 = "Lower") Then
  loc_103EE10:   Proc_6_142_14A55B0(var_90, CByte(0))
  loc_103EE1F:   var_90 = (var_90 + "L")
  loc_103EE28: Else
  loc_103EE30:   If (var_E0 = "Upper") Then
  loc_103EE4D:     Proc_6_142_14A55B0(var_90, CByte(0), "U", 2)
  loc_103EE5C:     var_90 = (var_90 + var_90)
  loc_103EE65:   Else
  loc_103EE6D:     If (var_E0 = "Standard") Then
  loc_103EE8A:       Proc_6_142_14A55B0(var_90, CByte(0), "S", 2)
  loc_103EE99:       var_90 = (var_90 + var_90)
  loc_103EE9F:     End If
  loc_103EE9F:   End If
  loc_103EE9F: End If
  loc_103EED6: Set var_98 = Me.Txt
  loc_103EEDC: Call 0.Method_Proc_350_56_103EEFC0 (CInt(4), var_9C, CStr(Format(var_90, "0.00")), 1, 1)
  loc_103EEE4: var_9C.Text = var_90
  loc_103EEFA: Exit Sub
End Sub

Public Sub Proc_350_57_FA5A4C
  'Data Table: 5608C8
  Dim var_8C As TextBox
  loc_FA58C6: Set var_88 = Me.Txt
  loc_FA58CC: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(&HB), var_8C)
  loc_FA58D4: var_8C.Text = vbNullString
  loc_FA58EE: Set var_88 = Me.Txt
  loc_FA58F4: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(&HB), var_8C)
  loc_FA58FC: var_8C.Tag = vbNullString
  loc_FA5916: Set var_88 = Me.Txt
  loc_FA591C: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(1), var_8C)
  loc_FA5924: var_8C.Text = vbNullString
  loc_FA593E: Set var_88 = Me.Txt
  loc_FA5944: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(1), var_8C)
  loc_FA594C: var_8C.Tag = vbNullString
  loc_FA5966: Set var_88 = Me.Txt
  loc_FA596C: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(2), var_8C)
  loc_FA5974: var_8C.Text = vbNullString
  loc_FA598E: Set var_88 = Me.Txt
  loc_FA5994: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(3), var_8C)
  loc_FA599C: var_8C.Text = vbNullString
  loc_FA59B6: Set var_88 = Me.Txt
  loc_FA59BC: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(4), var_8C)
  loc_FA59C4: var_8C.Text = vbNullString
  loc_FA59DE: Set var_88 = Me.Txt
  loc_FA59E4: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(&HA), var_8C)
  loc_FA59EC: var_8C.Text = vbNullString
  loc_FA5A06: Set var_88 = Me.Txt
  loc_FA5A0C: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(&HC), var_8C)
  loc_FA5A14: var_8C.Text = vbNullString
  loc_FA5A2E: Set var_88 = Me.Txt
  loc_FA5A34: Call 0.Method_Proc_350_57_FA5A4C0 (CInt(&HD), var_8C)
  loc_FA5A3C: var_8C.Text = vbNullString
  loc_FA5A48: Exit Sub
End Sub

Public Sub Proc_350_58_F20E60(arg_C) 'F20E60
  'Data Table: 5608C8
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_184 As Variant
  loc_F20D9D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_F20DA7:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_F20DAF:   var_D0 = CVar(CLng(8)) 'Long
  loc_F20DCF:   var_100 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_F20DDB:   var_110 = CVar(CLng(var_88)) 'Long
  loc_F20E0B:   var_184 = (CVar(CLng(&H15)) + Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_F20E3E:   If (var_184 = Trim(arg_C)) Then
  loc_F20E46:     Proc_350_58_F20E60 = &HFF
  loc_F20E4C:   End If
  loc_F20E4F: Next var_A0 'Integer
  loc_F20E59: Proc_350_58_F20E60 = 0
End Sub

Public Sub Proc_350_59_177F898(arg_C) '177F898
  'Data Table: 5608C8
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_BC As String
  Dim var_E0 As Variant
  Dim var_110 As Variant
  Dim unk_5608CF As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_140 As Variant
  Dim var_13C As Fields15
  Dim var_148 As Variant
  Dim var_134 As Boolean
  Dim var_144 As Fields15
  Dim var_190 As Variant
  Dim var_1A4 As TextBox
  Dim var_A8 As Variant
  loc_177DA5C: Set var_90 = Me.TxtGt
  loc_177DA62: Call 0.Method_Proc_350_59_177F8980 (1, var_94)
  loc_177DA6A: var_96 = var_94.TabIndex
  loc_177DA72: var_8A = var_96
  loc_177DA80: Set var_90 = Me.TopCtrl1
  loc_177DA86: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_177DA9F: If (CStr() = "Add") Then
  loc_177DAAE:   Set var_90 = Me.TxtPer
  loc_177DAB4:   Call 0.Method_Proc_350_59_177F898C (var_96, var_8C)
  loc_177DABF:   For var_B0 =  To var_96: 1 = var_B0 'Integer
  loc_177DAD1:     Set var_90 = Me.TxtPer
  loc_177DAD7:     Call 0.Method_Proc_350_59_177F8980 (var_8C, var_94)
  loc_177DADF:     var_94.Visible = False
  loc_177DAEE:   Next var_B0 'Integer
  loc_177DAFF:   Set var_90 = Me.TxtGt
  loc_177DB05:   Call 0.Method_Proc_350_59_177F898C (var_96, var_8C)
  loc_177DB10:   For var_B4 =  To var_96: 1 = var_B4 'Integer
  loc_177DB22:     Set var_90 = Me.TxtGt
  loc_177DB28:     Call 0.Method_Proc_350_59_177F8980 (var_8C, var_94)
  loc_177DB30:     var_94.Visible = False
  loc_177DB3F:   Next var_B4 'Integer
  loc_177DB50:   Set var_90 = Me.LblCap
  loc_177DB56:   Call 0.Method_Proc_350_59_177F898C (var_96, var_8C)
  loc_177DB61:   For var_B8 =  To var_96: 1 = var_B8 'Integer
  loc_177DB73:     Set var_90 = Me.LblCap
  loc_177DB79:     Call 0.Method_Proc_350_59_177F8980 (var_8C, var_94)
  loc_177DB81:     var_94.Visible = False
  loc_177DB90:   Next var_B8 'Integer
  loc_177DB95: End If
  loc_177DB99: Set var_90 = Me.TopCtrl1
  loc_177DB9F: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_177DBB8: If (CStr() = "Add") Then
  loc_177DBD6:   var_BC = "Select * From SundryType WHERE logsite_code='" & MemVar_1F92078 & "' and V_Type='FACL' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='"
  loc_177DBF2:   Proc_6_7_F25D88(var_A8, arg_C, CVar(var_BC & MemVar_1F92078 & "' and V_Type='FACL'aND AppDate<="))
  loc_177DC11:   unk_5608CF.Execute CStr(var_134 & var_A8 & "  Order by AppDate Desc)  Order by SNO"), -1, var_90
  loc_177DC1C:   Set var_88 = var_90
  loc_177DC3D: Else
  loc_177DC58:   var_BC = "Select * From SundryType WHERE LogSite_Code='" & MemVar_1F92078 & "' and V_Type='FACL' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='"
  loc_177DC74:   Proc_6_7_F25D88(var_A8, arg_C, CVar(var_BC & MemVar_1F92078 & "' and V_Type='FACL' aND AppDate<="))
  loc_177DC93:   unk_5608CF.Execute CStr(var_134 & var_A8 & "  Order by AppDate Desc) Order by SNO"), -1, var_90
  loc_177DC9E:   Set var_88 = var_90
  loc_177DCBC: End If
  loc_177DCD0: If (var_88.RecordCount > 0) Then
  loc_177DD0C:   Set var_13C = Me.Txt
  loc_177DD12:   Call 0.Method_Proc_350_59_177F8980 (CInt(&H11), var_140)
  loc_177DD1A:   var_140.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_177DD30:   ' Referenced from: 177F892
  loc_177DD36:   var_96 = var_88.EOF
  loc_177DD3F:   If Not(var_96) Then
  loc_177DD7E:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_177DDB2:       Set var_13C = Me.LblDummy
  loc_177DDB8:       Call 0.Method_Proc_350_59_177F8988 (var_96)
  loc_177DDD2:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_177DE07:         Set var_13C = Me.LblDummy
  loc_177DE0D:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177DE1E:         Me.LblDummy.Load var_140
  loc_177DE31:       End If
  loc_177DE7C:       var_140 = var_88.Fields.Item("SNo")
  loc_177DE91:       Set var_144 = Me.LblDummy
  loc_177DE97:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_140.Value), var_148)
  loc_177DE9F:       var_148.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_177DEEE:       Set var_13C = Me.TxtPer
  loc_177DEF4:       Call 0.Method_Proc_350_59_177F8988 (var_96, var_88.Fields.Item("SNo").Value)
  loc_177DF0E:       If (var_140 > CVar(var_96)) Then
  loc_177DF43:         Set var_13C = Me.TxtPer
  loc_177DF49:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177DF5A:         Me.TxtPer.Load var_140
  loc_177DF6D:       End If
  loc_177DFA5:       Set var_13C = Me.TxtPer
  loc_177DFAB:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177DFB3:       var_140.TabIndex = (var_8A + 1)
  loc_177DFCC:       var_8A = (var_8A + 1)
  loc_177E010:       var_140 = var_88.Fields.Item("SNo")
  loc_177E050:       Set var_144 = Me.TxtPer
  loc_177E056:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_140.Value), var_148, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_177E05E:       var_148.Visible = var_8A
  loc_177E0BD:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177E11C:         var_110 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177E125:         Set var_18C = Me.TxtPer
  loc_177E12B:         Call 0.Method_Proc_350_59_177F8980 (CInt(True), var_190)
  loc_177E16D:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177E176:         Set var_13C = Me.TxtPer
  loc_177E17C:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("RevCode").Value), var_140)
  loc_177E1A0:         Set var_1A0 = Me.TxtPer
  loc_177E1A6:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_1A4)
  loc_177E1AE:         var_1A4.Top = ((var_140.Top + var_190.Height) + CDbl(&HF))
  loc_177E1D7:       End If
  loc_177E213:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177E272:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177E27B:         Set var_13C = Me.TxtPer
  loc_177E281:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("RevCode").Value), var_140)
  loc_177E29C:         Set var_18C = Me.TxtPer
  loc_177E2A2:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177E2AA:         var_190.Left = var_140.Left
  loc_177E2C9:       End If
  loc_177E2CD:       Set var_90 = Me.TopCtrl1
  loc_177E2D3:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_177E2EC:       If (CStr() = "Add") Then
  loc_177E34C:         var_148 = var_88.Fields.Item("SNo")
  loc_177E399:         Set var_18C = Me.TxtPer
  loc_177E39F:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_148.Value), var_190)
  loc_177E3A7:         var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_177E3CF:       End If
  loc_177E41A:       var_140 = var_88.Fields.Item("SNo")
  loc_177E42F:       Set var_144 = Me.TxtPer
  loc_177E435:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_140.Value), var_148)
  loc_177E43D:       var_148.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_177E494:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177E4CB:         Set var_13C = Me.TxtPer
  loc_177E4D1:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E4D9:         var_140.FontBold = True
  loc_177E4EF:       Else
  loc_177E523:         Set var_13C = Me.TxtPer
  loc_177E529:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E531:         var_140.FontBold = False
  loc_177E544:       End If
  loc_177E57D:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177E5B4:         Set var_13C = Me.TxtPer
  loc_177E5BA:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E5C2:         var_140.Enabled = False
  loc_177E5D8:       Else
  loc_177E60C:         Set var_13C = Me.TxtPer
  loc_177E612:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E61A:         var_140.Enabled = True
  loc_177E62D:       End If
  loc_177E631:       Set var_90 = Me.TopCtrl1
  loc_177E637:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_177E650:       If (CStr() = "Browse") Then
  loc_177E687:         Set var_13C = Me.TxtPer
  loc_177E68D:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E695:         var_140.Enabled = False
  loc_177E6A8:       End If
  loc_177E6E4:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_177E71B:         Set var_13C = Me.TxtPer
  loc_177E721:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E729:         var_140.Enabled = False
  loc_177E73C:       End If
  loc_177E76D:       Set var_13C = Me.LblCap
  loc_177E773:       Call 0.Method_Proc_350_59_177F8988 (var_96)
  loc_177E78D:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_177E7C2:         Set var_13C = Me.LblCap
  loc_177E7C8:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177E7D9:         Me.LblCap.Load var_140
  loc_177E7EC:       End If
  loc_177E820:       Set var_13C = Me.LblCap
  loc_177E826:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E82E:       var_140.Visible = True
  loc_177E89D:       Set var_13C = Me.TxtPer
  loc_177E8A3:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E8BE:       Set var_18C = Me.LblCap
  loc_177E8C4:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177E8CC:       var_190.Top = var_140.Top
  loc_177E927:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177E96B:         var_148 = var_88.Fields.Item("SNo")
  loc_177E986:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177E98F:         Set var_13C = Me.LblCap
  loc_177E995:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177E9B0:         Set var_18C = Me.LblCap
  loc_177E9B6:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_148.Value), var_190)
  loc_177E9BE:         var_190.Left = var_140.Left
  loc_177E9DD:       End If
  loc_177EA3D:       Set var_144 = Me.LblCap
  loc_177EA43:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_148)
  loc_177EA4B:       var_148.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_177EAB4:       var_140 = var_88.Fields.Item("SNo")
  loc_177EAC9:       Set var_144 = Me.LblCap
  loc_177EACF:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_140.Value), var_148)
  loc_177EAD7:       var_148.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_177EB2E:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177EB65:         Set var_13C = Me.LblCap
  loc_177EB6B:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177EB73:         var_140.FontBold = True
  loc_177EB89:       Else
  loc_177EBBD:         Set var_13C = Me.LblCap
  loc_177EBC3:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177EBCB:         var_140.FontBold = False
  loc_177EBDE:       End If
  loc_177EC0F:       Set var_13C = Me.LblAt
  loc_177EC15:       Call 0.Method_Proc_350_59_177F8988 (var_96, var_88.Fields.Item("SNo").Value)
  loc_177EC2F:       If (var_140 > CVar(var_96)) Then
  loc_177EC64:         Set var_13C = Me.LblAt
  loc_177EC6A:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177EC7B:         Me.LblAt.Load var_140
  loc_177EC8E:       End If
  loc_177ECCF:       var_140 = var_88.Fields.Item("SNo")
  loc_177ED0F:       Set var_144 = Me.LblAt
  loc_177ED15:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_140.Value), var_148)
  loc_177ED1D:       var_148.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_177ED81:       var_148 = var_88.Fields.Item("SNo")
  loc_177ED9C:       Set var_13C = Me.TxtPer
  loc_177EDA2:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177EDBD:       Set var_18C = Me.LblAt
  loc_177EDC3:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_148.Value), var_190)
  loc_177EDCB:       var_190.Top = var_140.Top
  loc_177EE23:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177EE5A:         Set var_13C = Me.LblAt
  loc_177EE60:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177EE68:         var_140.FontBold = True
  loc_177EE7E:       Else
  loc_177EEB2:         Set var_13C = Me.LblAt
  loc_177EEB8:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177EEC0:         var_140.FontBold = False
  loc_177EED3:       End If
  loc_177EF22:       var_140 = var_88.Fields.Item("SNo")
  loc_177EF37:       Set var_144 = Me.LblAt
  loc_177EF3D:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_140.Value), var_148)
  loc_177EF45:       var_148.Tag = CStr(Trim(CVar(var_88.Fields.Item("RoundOff"))))
  loc_177EF9F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177EFFE:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177F007:         Set var_13C = Me.LblAt
  loc_177F00D:         Call 0.Method_Proc_350_59_177F8980 (CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))), var_140)
  loc_177F028:         Set var_18C = Me.LblAt
  loc_177F02E:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177F036:         var_190.Left = var_140.Left
  loc_177F055:       End If
  loc_177F086:       Set var_13C = Me.TxtGt
  loc_177F08C:       Call 0.Method_Proc_350_59_177F8988 (var_96, var_88.Fields.Item("SNo").Value)
  loc_177F0A6:       If (var_140 > CVar(var_96)) Then
  loc_177F0DB:         Set var_13C = Me.TxtGt
  loc_177F0E1:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value))
  loc_177F0F2:         Me.TxtGt.Load var_140
  loc_177F105:       End If
  loc_177F13D:       Set var_13C = Me.TxtGt
  loc_177F143:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F14B:       var_140.TabIndex = (var_8A + 1)
  loc_177F164:       var_8A = (var_8A + 1)
  loc_177F19B:       Set var_13C = Me.TxtGt
  loc_177F1A1:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140, &HFF)
  loc_177F1A9:       var_140.Visible = var_8A
  loc_177F218:       Set var_13C = Me.TxtPer
  loc_177F21E:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F239:       Set var_18C = Me.TxtGt
  loc_177F23F:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177F247:       var_190.Top = var_140.Top
  loc_177F2A2:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_177F301:         var_E0 = (var_88.Fields.Item("SNo").Value - 1)
  loc_177F30A:         Set var_13C = Me.TxtGt
  loc_177F310:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F32B:         Set var_18C = Me.TxtGt
  loc_177F331:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_190)
  loc_177F339:         var_190.Left = var_140.Left
  loc_177F358:       End If
  loc_177F35C:       Set var_90 = Me.TopCtrl1
  loc_177F362:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_177F37B:       If (CStr() = "Add") Then
  loc_177F3DB:         var_148 = var_88.Fields.Item("SNo")
  loc_177F428:         Set var_18C = Me.TxtGt
  loc_177F42E:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_148.Value), var_190)
  loc_177F436:         var_190.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_177F45E:       End If
  loc_177F4A6:       var_140 = var_88.Fields.Item("SNo")
  loc_177F4BB:       Set var_144 = Me.TxtGt
  loc_177F4C1:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_140.Value), var_148)
  loc_177F4C9:       var_148.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_177F51E:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177F555:         Set var_13C = Me.TxtGt
  loc_177F55B:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F563:         var_140.FontBold = True
  loc_177F579:       Else
  loc_177F5AD:         Set var_13C = Me.TxtGt
  loc_177F5B3:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F5BB:         var_140.FontBold = False
  loc_177F5CE:       End If
  loc_177F607:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_177F63E:         Set var_13C = Me.TxtGt
  loc_177F644:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F64C:         var_140.Enabled = False
  loc_177F662:       Else
  loc_177F696:         Set var_13C = Me.TxtGt
  loc_177F69C:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F6A4:         var_140.Enabled = True
  loc_177F6B7:       End If
  loc_177F6EC:       Set var_13C = Me.LblCap
  loc_177F6F2:       Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F723:       If (var_140.Tag = MemVar_1F92078 & "ROFF") Then
  loc_177F75A:         Set var_13C = Me.TxtGt
  loc_177F760:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F768:         var_140.Enabled = False
  loc_177F77B:       End If
  loc_177F77F:       Set var_90 = Me.TopCtrl1
  loc_177F785:       Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_177F79E:       If (CStr() = "Browse") Then
  loc_177F7D5:         Set var_13C = Me.TxtGt
  loc_177F7DB:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F7E3:         var_140.Enabled = False
  loc_177F7F6:       End If
  loc_177F832:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_177F869:         Set var_13C = Me.TxtGt
  loc_177F86F:         Call 0.Method_Proc_350_59_177F8980 (CInt(var_88.Fields.Item("SNo").Value), var_140)
  loc_177F877:         var_140.Enabled = False
  loc_177F88A:       End If
  loc_177F88A:     End If
  loc_177F88D:     var_88.MoveNext
  loc_177F892:     GoTo loc_177DD30
  loc_177F895:   End If
  loc_177F895: End If
  loc_177F895: Exit Sub
End Sub

Public Sub Proc_350_60_1885A1C(arg_C) '1885A1C
  'Data Table: 5608C8
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_130 As String
  Dim var_134 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim unk_5608CF As Connection15
  Dim var_190 As Variant
  Dim var_194 As Variant
  Dim var_198 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_138 As String
  Dim var_298 As Double
  Dim var_124 As Variant
  Dim var_1D0 As Variant
  Dim var_148 As Variant
  Dim var_2A0 As Double
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_1A8 As Variant
  Dim var_230 As Variant
  Dim var_290 As Variant
  Dim var_2CC As Variant
  Dim var_2EC As Variant
  Dim var_18C As Variant
  Dim var_A4 As Double
  Dim var_36C As Double
  Dim var_374 As Double
  Dim var_88 As Recordset15
  loc_188334E: global_92 = CDbl(0)
  loc_1883376: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_D4 'Integer
  loc_1883380:   var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883388:   var_104 = CVar(CLng(0)) 'Long
  loc_1883392:   var_D0 = CVar(CStr(var_9C)) 'String
  loc_188339A:   Set var_C0 = Me.FGrid
  loc_18833A0:   LateIdCallSt
  loc_18833B1: Next var_D4 'Integer
  loc_18833C2: Set var_C0 = Me.TxtGt
  loc_18833C8: Call 0.Method_Proc_350_60_1885A1C8 (var_126, var_9A)
  loc_18833D3: For var_12A =  To var_126: 1 = var_12A 'Integer
  loc_1883413:   Set var_C0 = Me.LblCap
  loc_1883419:   Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_138, CVar("Select IsNull(Max(Nature),'') from SundryType Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND SundryCode='"), var_18C, -1)
  loc_188344E:   unk_5608CF.Execute CStr(var_194 & Trim(CVar(var_138)) & "' And V_Type='FACL'"), 0, var_198
  loc_188345E:    = var_194.Item()
  loc_1883466:    = var_198.Value
  loc_1883473:   var_A8 = Proc_6_38_E68A98(var_134.Tag.Fields)
  loc_18834A3:   If (var_A8 = "Addition") Then
  loc_18834B3:     Set var_C0 = Me.TxtGt
  loc_18834B9:     Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_18834E0:     Set var_190 = Me.TxtPer
  loc_18834E6:     Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194)
  loc_1883513:     If ((CDbl(Val(var_134.Text)) > CDbl(0)) And (CDbl(Val(var_194.Text)) <= CDbl(0))) Then
  loc_1883523:       Set var_C0 = Me.TxtGt
  loc_1883529:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_188353E:       var_90 = Val(var_134.Text)
  loc_188354B:     End If
  loc_188354E:   Else
  loc_1883556:     If (var_A8 = "Deduction") Then
  loc_1883566:       Set var_C0 = Me.TxtGt
  loc_188356C:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_1883581:       var_98 = Val(var_134.Text)
  loc_1883591:     Else
  loc_1883599:       If (var_A8 = "Discount") Then
  loc_18835A1:         var_AA = CByte(var_9A) 'Byte
  loc_18835A8:       Else
  loc_18835B0:         If (var_A8 = "Service Charge") Then
  loc_18835B8:           var_B6 = CByte(var_9A) 'Byte
  loc_18835BF:         Else
  loc_18835E2:           If ((((var_A8 = "Sale Tax") Or (var_A8 = "CGST")) Or (var_A8 = "SGST")) Or (var_A8 = "IGST")) Then
  loc_18835EA:             var_AC = CByte(var_9A) 'Byte
  loc_18835F4:             global_108 = var_9A
  loc_18835F7:           End If
  loc_18835F7:         End If
  loc_18835F7:       End If
  loc_18835F7:     End If
  loc_18835F7:   End If
  loc_1883604:   Set var_C0 = Me.TxtGt
  loc_188360A:   Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, vbNullString)
  loc_1883612:   var_134.Text = global_108
  loc_1883621: Next var_12A 'Integer
  loc_1883639: Me.FGCat.Rows = 1
  loc_1883645: Set var_C0 = Me.TopCtrl1
  loc_188364B: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_188365F: Set var_134 = Me.TopCtrl1
  loc_1883665: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_188368B: If ( Or (CStr() = "Edit")) Then
  loc_188368E:   Call Proc_350_61_125E1F8()
  loc_1883693: End If
  loc_188369F: Set var_C0 = Me.TxtGt
  loc_18836A5: Call 0.Method_Proc_350_60_1885A1C8 (var_126, var_9A)
  loc_18836B0: For var_1AC =  To var_126: 2 = var_1AC 'Integer
  loc_18836C3:   Set var_C0 = Me.LblCap
  loc_18836C9:   Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_1883704:   If (Trim(CVar(var_134.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1883714:     Set var_C0 = Me.TxtGt
  loc_188371A:     Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_1883722:     var_134.Text = vbNullString
  loc_1883738:     If (var_AC > var_AA) Then
  loc_1883760:       For var_1B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9C = var_1B0 'Integer
  loc_1883773:         Set var_C0 = Me.LblCap
  loc_1883779:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_18837B4:         If (Trim(CVar(var_134.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_18837BB:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18837C3:           var_104 = CVar(CLng(&HF)) 'Long
  loc_18837DD:           var_130 = CStr(Me.FGrid.TextMatrix))
  loc_18837EE:           If (var_130 = "Y") Then
  loc_18837F5:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_188380F:             Set var_C0 = Me.TxtPer
  loc_1883815:             Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130, CVar(CLng(&HE)))
  loc_188381D:             var_E4 = var_134.Text
  loc_188382C:             var_D0 = CVar(CStr(Val(var_130))) 'String
  loc_1883834:             Set var_190 = Me.FGrid
  loc_188383A:             LateIdCallSt
  loc_1883851:           End If
  loc_1883851:         End If
  loc_188385B:         If (var_B6 < var_AC) Then
  loc_1883868:           If (var_AA < var_B6) Then
  loc_188386F:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883877:             var_104 = CVar(CLng(2)) 'Long
  loc_18838A0:             var_124 = CVar(CLng(var_9C)) 'Long
  loc_18838A8:             var_1D0 = CVar(CLng(3)) 'Long
  loc_18838D1:             var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_18838D9:             var_210 = CVar(CLng(&HE)) 'Long
  loc_1883902:             var_250 = CVar(CLng(var_9C)) 'Long
  loc_188390A:             var_270 = CVar(CLng(&H10)) 'Long
  loc_1883933:             var_168 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_1883943:             var_1A8 = CVar(CStr(Format(var_168, "0.00"))) 'String
  loc_188394B:             Set var_194 = Me.FGrid
  loc_1883951:             LateIdCallSt
  loc_1883982:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_188398A:             var_104 = CVar(CLng(&HF)) 'Long
  loc_18839B5:             If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_18839BC:               var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18839C4:               var_104 = CVar(CLng(2)) 'Long
  loc_18839ED:               var_124 = CVar(CLng(var_9C)) 'Long
  loc_18839F5:               var_1D0 = CVar(CLng(3)) 'Long
  loc_1883A2B:               global_92 = (global_92 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_1883A43:             End If
  loc_1883A46:           Else
  loc_1883A4A:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883A52:             var_104 = CVar(CLng(2)) 'Long
  loc_1883A7B:             var_124 = CVar(CLng(var_9C)) 'Long
  loc_1883A83:             var_1D0 = CVar(CLng(3)) 'Long
  loc_1883AAC:             var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_1883AB4:             var_210 = CVar(CLng(&H11)) 'Long
  loc_1883ADD:             var_230 = CVar(CLng(var_9C)) 'Long
  loc_1883AE5:             var_250 = CVar(CLng(&HE)) 'Long
  loc_1883B0E:             var_290 = CVar(CLng(var_9C)) 'Long
  loc_1883B16:             var_2CC = CVar(CLng(&H10)) 'Long
  loc_1883B43:             var_178 = CVar(((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) + Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_1883B53:             var_2EC = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1883B5B:             Set var_198 = Me.FGrid
  loc_1883B61:             LateIdCallSt
  loc_1883B98:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883BA0:             var_104 = CVar(CLng(&HF)) 'Long
  loc_1883BCB:             If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_1883BD2:               var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883BDA:               var_104 = CVar(CLng(2)) 'Long
  loc_1883C03:               var_124 = CVar(CLng(var_9C)) 'Long
  loc_1883C0B:               var_1D0 = CVar(CLng(3)) 'Long
  loc_1883C34:               var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_1883C3C:               var_210 = CVar(CLng(&H11)) 'Long
  loc_1883C76:               global_92 = (global_92 + ((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) + Val(CStr(Me.FGrid.TextMatrix)))))
  loc_1883C94:             End If
  loc_1883C94:           End If
  loc_1883C97:         Else
  loc_1883C9B:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883CA3:           var_104 = CVar(CLng(2)) 'Long
  loc_1883CCC:           var_124 = CVar(CLng(var_9C)) 'Long
  loc_1883CD4:           var_1D0 = CVar(CLng(3)) 'Long
  loc_1883CFD:           var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_1883D05:           var_210 = CVar(CLng(&HE)) 'Long
  loc_1883D2E:           var_250 = CVar(CLng(var_9C)) 'Long
  loc_1883D36:           var_270 = CVar(CLng(&H10)) 'Long
  loc_1883D5F:           var_168 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_1883D6F:           var_1A8 = CVar(CStr(Format(var_168, "0.00"))) 'String
  loc_1883D77:           Set var_194 = Me.FGrid
  loc_1883D7D:           LateIdCallSt
  loc_1883DAE:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883DB6:           var_104 = CVar(CLng(&HF)) 'Long
  loc_1883DE1:           If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_1883DE8:             var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883DF0:             var_104 = CVar(CLng(2)) 'Long
  loc_1883E19:             var_124 = CVar(CLng(var_9C)) 'Long
  loc_1883E21:             var_1D0 = CVar(CLng(3)) 'Long
  loc_1883E57:             global_92 = (global_92 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_1883E6F:           End If
  loc_1883E6F:         End If
  loc_1883E73:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_1883E7B:         var_1D0 = CVar(CLng(2)) 'Long
  loc_1883EA4:         var_1F0 = CVar(CLng(var_9C)) 'Long
  loc_1883EB5:         var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883EBD:         var_104 = CVar(CLng(3)) 'Long
  loc_1883EED:         Set var_190 = Me.FGrid
  loc_1883EF3:         LateIdCallSt
  loc_1883F18:         var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1883F20:         var_104 = CVar(CLng(4)) 'Long
  loc_1883F3A:         var_130 = CStr(Me.FGrid.TextMatrix))
  loc_1883F51:         Set var_134 = Me.LblDummy
  loc_1883F57:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_190, CStr(Val(var_130)), var_104, var_E4, var_190, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_1883F5F:         var_190.Caption = var_104
  loc_1883F84:         Set var_C0 = Me.LblCap
  loc_1883F8A:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130, var_E4, CVar(CLng(4)))
  loc_1883F92:         var_1F0 = var_134.Tag
  loc_1883FC5:         If (Trim(CVar(var_130)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1883FD5:           Set var_C0 = Me.TxtGt
  loc_1883FDB:           Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_1883FE3:           var_298 = var_134.Text
  loc_1883FF7:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1884021:           var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1884040:           var_148 = CVar((Val(var_130) + var_2A0)) 'Double
  loc_188405D:           Set var_194 = Me.TxtGt
  loc_1884063:           Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_198, CStr(Format(Trim(CVar(var_130)), "0.00")), 1, 1, var_2A0)
  loc_188406B:           var_198.Text = CVar(CLng(&H10))
  loc_1884091:         End If
  loc_1884094:       Next var_1B0 'Integer
  loc_18840A6:       Set var_C0 = Me.LblCap
  loc_18840AC:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_18840FF:       If CBool((Trim(CVar(var_134.Tag)) = CVar(MemVar_1F92078 & "DIS")) And (global_92 <> CDbl(0))) Then
  loc_188410F:         Set var_C0 = Me.TxtGt
  loc_1884115:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_188411D:         var_130 = var_134.Text
  loc_188416D:         Set var_190 = Me.TxtPer
  loc_1884173:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194, CStr(Format(CVar(((Val(var_130) / global_92) * CDbl(&H64))), "0.00000")))
  loc_188417B:         var_194.Text = 1
  loc_188419B:       End If
  loc_188419E:     Else
  loc_18841C3:       For var_308 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_9C = var_308 'Integer
  loc_18841D6:         Set var_C0 = Me.LblCap
  loc_18841DC:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_18841E4:         1 = var_134.Tag
  loc_1884217:         If (Trim(CVar(var_130)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_188421E:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1884226:           var_104 = CVar(CLng(&HF)) 'Long
  loc_1884240:           var_130 = CStr(Me.FGrid.TextMatrix))
  loc_1884251:           If (var_130 = "Y") Then
  loc_1884272:             Set var_C0 = Me.TxtPer
  loc_1884278:             Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130, CVar(CLng(&HE)), CVar(CLng(var_9C)))
  loc_1884280:             var_104 = var_134.Text
  loc_188428F:             var_D0 = CVar(CStr(Val(var_130))) 'String
  loc_1884297:             Set var_190 = Me.FGrid
  loc_188429D:             LateIdCallSt
  loc_18842B4:           End If
  loc_18842B4:         End If
  loc_18842F1:         Set var_134 = Me.LblDummy
  loc_18842F7:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_190, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(4)), CVar(CLng(var_9C)))
  loc_18842FF:         var_190.Caption = var_190
  loc_188431B:         var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1884323:         var_104 = CVar(CLng(4)) 'Long
  loc_188434C:         var_124 = CVar(CLng(var_9C)) 'Long
  loc_1884354:         var_1D0 = CVar(CLng(&HE)) 'Long
  loc_188435D:         Set var_134 = Me.FGrid
  loc_188437D:         var_210 = CVar(CLng(var_9C)) 'Long
  loc_1884385:         var_230 = CVar(CLng(&H10)) 'Long
  loc_18843BA:         var_18C = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_134.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_18843C2:         Set var_190 = Me.FGrid
  loc_18843C8:         LateIdCallSt
  loc_18843F3:         var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18843FB:         var_104 = CVar(CLng(&HF)) 'Long
  loc_1884426:         If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_188442D:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1884435:           var_104 = CVar(CLng(4)) 'Long
  loc_188444F:           var_130 = CStr(Me.FGrid.TextMatrix))
  loc_1884457:           var_298 = Val(var_130)
  loc_1884467:           global_92 = (global_92 + var_298)
  loc_1884473:         End If
  loc_1884480:         Set var_C0 = Me.LblCap
  loc_1884486:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130, global_92, var_298, var_104, var_E4)
  loc_188448E:         var_104 = var_134.Tag
  loc_18844C1:         If (Trim(CVar(var_130)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_18844D1:           Set var_C0 = Me.TxtGt
  loc_18844D7:           Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130, var_E4, var_190)
  loc_18844DF:           var_18C = var_134.Text
  loc_18844F3:           var_E4 = CVar(CLng(var_9C)) 'Long
  loc_188451D:           var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_188453C:           var_148 = CVar((Val(var_130) + var_2A0)) 'Double
  loc_1884559:           Set var_194 = Me.TxtGt
  loc_188455F:           Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_198, CStr(Format(Trim(CVar(var_130)), "0.00")), 1, 1, var_2A0)
  loc_1884567:           var_198.Text = CVar(CLng(&H10))
  loc_188458D:         End If
  loc_1884590:       Next var_308 'Integer
  loc_18845A2:       Set var_C0 = Me.LblCap
  loc_18845A8:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_18845FB:       If CBool((Trim(CVar(var_134.Tag)) = CVar(MemVar_1F92078 & "DIS")) And (global_92 <> CDbl(0))) Then
  loc_188460B:         Set var_C0 = Me.TxtGt
  loc_1884611:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_1884619:         var_130 = var_134.Text
  loc_1884626:         var_298 = Val(var_130)
  loc_1884669:         Set var_190 = Me.TxtPer
  loc_188466F:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194, CStr(Format(CVar(((var_298 / global_92) * CDbl(&H64))), "0.00000")))
  loc_1884677:         var_194.Text = 1
  loc_1884697:       End If
  loc_1884697:     End If
  loc_188469A:   Else
  loc_18846A7:     Set var_C0 = Me.TxtPer
  loc_18846AD:     Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_126)
  loc_18846B5:     1 = var_134.Visible
  loc_18846C7:     If (var_126 = &HFF) Then
  loc_18846D0:       Call Proc_350_62_127F130(var_9A, var_298)
  loc_18846D8:       var_A4 = var_298
  loc_18846E8:       Set var_C0 = Me.TxtPer
  loc_18846EE:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_18846F6:       var_A4 = var_134.Text
  loc_1884743:       Set var_190 = Me.TxtGt
  loc_1884749:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194, CStr(Format(CVar(((var_A4 * Val(var_130)) / CDbl(&H64))), "0.00")), 1)
  loc_1884751:       var_194.Text = 1
  loc_188477E:       Set var_C0 = Me.LblCap
  loc_1884784:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_188478C:       var_298 = var_134.Tag
  loc_18847D4:       If CBool((Trim(CVar(var_130)) = CVar(MemVar_1F92078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_18847FF:         var_130 = CStr(Format(var_90, "0.00"))
  loc_188480D:         Set var_C0 = Me.TxtGt
  loc_1884813:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_188481B:         var_134.Text = 1
  loc_1884831:       End If
  loc_188483E:       Set var_C0 = Me.LblCap
  loc_1884844:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_188484C:       1 = var_134.Tag
  loc_1884894:       If CBool((Trim(CVar(var_130)) = CVar(MemVar_1F92078 & "DED")) And (var_90 > CDbl(0))) Then
  loc_18848CD:         Set var_C0 = Me.TxtGt
  loc_18848D3:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, CStr(Format(var_98, "0.00")))
  loc_18848DB:         var_134.Text = 1
  loc_18848F1:       End If
  loc_18848F6:       var_130 = CStr(var_A4)
  loc_1884903:       Set var_C0 = Me.LblDummy
  loc_1884909:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_1884911:       var_134.Caption = 1
  loc_1884923:     Else
  loc_1884930:       Set var_C0 = Me.TxtPer
  loc_1884936:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_1884949:       var_E4 = (var_134.Visible = 0)
  loc_188495A:       Set var_190 = Me.LblCap
  loc_1884960:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194, var_130)
  loc_1884968:       var_E4 = var_194.Tag
  loc_18849A9:       If CBool(var_298 And (Trim(CVar(var_130)) = CVar(MemVar_1F92078 & "ADD"))) Then
  loc_18849D4:         var_130 = CStr(Format(var_90, "0.00"))
  loc_18849E2:         Set var_C0 = Me.TxtGt
  loc_18849E8:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_18849F0:         var_134.Text = 1
  loc_1884A09:       Else
  loc_1884A16:         Set var_C0 = Me.TxtPer
  loc_1884A1C:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_1884A24:         var_126 = var_134.Visible
  loc_1884A2F:         var_E4 = (var_126 = 0)
  loc_1884A40:         Set var_190 = Me.LblCap
  loc_1884A46:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194, var_130)
  loc_1884A4E:         var_E4 = var_194.Tag
  loc_1884A8F:         If CBool(1 And (Trim(CVar(var_130)) = CVar(MemVar_1F92078 & "DED"))) Then
  loc_1884AC8:           Set var_C0 = Me.TxtGt
  loc_1884ACE:           Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, CStr(Format(var_98, "0.00")))
  loc_1884AD6:           var_134.Text = 1
  loc_1884AEC:         End If
  loc_1884AEC:       End If
  loc_1884AEC:     End If
  loc_1884AEC:   End If
  loc_1884AEF: Next var_1AC 'Integer
  loc_1884B19: For var_30C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_30C 'Integer
  loc_1884B23:   var_E4 = CVar(CLng(var_9A)) 'Long
  loc_1884B2B:   var_104 = CVar(CLng(2)) 'Long
  loc_1884B45:   var_130 = CStr(Me.FGrid.TextMatrix))
  loc_1884B54:   var_124 = CVar(CLng(var_9A)) 'Long
  loc_1884B5C:   var_1D0 = CVar(CLng(3)) 'Long
  loc_1884B65:   Set var_134 = Me.FGrid
  loc_1884B85:   var_210 = CVar(CLng(var_9A)) 'Long
  loc_1884B8D:   var_230 = CVar(CLng(4)) 'Long
  loc_1884BCC:   LateIdCallSt
  loc_1884BFF:   Set var_C0 = Me.TxtGt
  loc_1884C05:   Call 0.Method_Proc_350_60_1885A1C0 (1, var_134, var_130, Me.FGrid, CVar(CStr(Format(CVar((Val(var_130) * Val(CStr(var_134.TextMatrix))))), "0.00"))), 1, 1)
  loc_1884C0D:   var_230 = var_134.Text
  loc_1884C1A:   var_298 = Val(var_130)
  loc_1884C4B:   var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1884C6A:   var_148 = CVar((var_298 + var_2A0)) 'Double
  loc_1884C86:   Set var_194 = Me.TxtGt
  loc_1884C8C:   Call 0.Method_Proc_350_60_1885A1C0 (1, var_198, CStr(Format(var_134.TextMatrix), "0.00")), 1, 1, var_2A0, CVar(CLng(4)))
  loc_1884C94:   var_198.Text = CVar(CLng(var_9A))
  loc_1884CBD: Next var_30C 'Integer
  loc_1884CC6: Set var_C0 = Me.TopCtrl1
  loc_1884CCC: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1884CE0: Set var_134 = Me.TopCtrl1
  loc_1884CE6: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Add"))
  loc_1884D0C: If ( Or (CStr() = "Edit")) Then
  loc_1884D1B:   Set var_C0 = Me.TxtGt
  loc_1884D21:   Call 0.Method_Proc_350_60_1885A1C8 (var_126, var_9A)
  loc_1884D2C:   For var_310 =  To var_126: 2 = var_310 'Integer
  loc_1884D3F:     Set var_C0 = Me.TxtPer
  loc_1884D45:     Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_1884D4D:     var_126 = var_134.Visible
  loc_1884D69:     Set var_190 = Me.LblCap
  loc_1884D6F:     Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194)
  loc_1884D77:     var_130 = var_194.Tag
  loc_1884DB8:     If CBool((var_126 = &HFF) And (Trim(CVar(var_130)) = CVar(MemVar_1F92078 & "SCH"))) Then
  loc_1884DC1:       Call Proc_350_62_127F130(var_9A)
  loc_1884DC9:       var_A4 = var_298
  loc_1884DD9:       Set var_C0 = Me.TxtPer
  loc_1884DDF:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_1884DE7:       var_A4 = var_134.Text
  loc_1884DF4:       var_298 = Val(var_130)
  loc_1884E34:       Set var_190 = Me.TxtGt
  loc_1884E3A:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194, CStr(Format(CVar(((var_A4 * var_298) / CDbl(&H64))), "0.00")), 1)
  loc_1884E42:       var_194.Text = 1
  loc_1884E74:       Set var_C0 = Me.LblDummy
  loc_1884E7A:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, CStr(var_A4))
  loc_1884E82:       var_134.Caption = var_298
  loc_1884E91:     End If
  loc_1884E94:   Next var_310 'Integer
  loc_1884E99: End If
  loc_1884EAC: Me.FGCat.Rows = 1
  loc_1884ED9: For var_314 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9A = var_314 'Integer
  loc_1884EE9:   If (var_AC > var_AA) Then
  loc_1884EF6:     If (var_B6 < var_AC) Then
  loc_1884EFD:       var_E4 = CVar(CLng(var_9A)) 'Long
  loc_1884F05:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1884F24:       var_124 = CVar(CLng(var_9A)) 'Long
  loc_1884F2C:       var_1D0 = CVar(CLng(0)) 'Long
  loc_1884F55:       var_1F0 = CVar(CLng(var_9A)) 'Long
  loc_1884F5D:       var_210 = CVar(CLng(3)) 'Long
  loc_1884F86:       var_230 = CVar(CLng(var_9A)) 'Long
  loc_1884F8E:       var_250 = CVar(CLng(2)) 'Long
  loc_1884FB7:       var_270 = CVar(CLng(var_9A)) 'Long
  loc_1884FBF:       var_290 = CVar(CLng(&H10)) 'Long
  loc_1885004:       var_18C = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - Val(CStr(Me.FGrid.TextMatrix))))) 'Double
  loc_1885068:       Call Proc_350_63_17B6DA8(CStr(Me.FGrid.TextMatrix)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), CSng(Format(CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))), "0.00")), vbNullString, Val(CStr(Me.FGrid.TextMatrix))), Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H11)), CVar(CLng(var_9A)))
  loc_18850A5:     Else
  loc_18850A9:       var_E4 = CVar(CLng(var_9A)) 'Long
  loc_18850B1:       var_104 = CVar(CLng(&HA)) 'Long
  loc_18850D0:       var_124 = CVar(CLng(var_9A)) 'Long
  loc_18850D8:       var_1D0 = CVar(CLng(0)) 'Long
  loc_1885101:       var_1F0 = CVar(CLng(var_9A)) 'Long
  loc_1885109:       var_210 = CVar(CLng(3)) 'Long
  loc_1885132:       var_230 = CVar(CLng(var_9A)) 'Long
  loc_188513A:       var_250 = CVar(CLng(2)) 'Long
  loc_1885163:       var_270 = CVar(CLng(var_9A)) 'Long
  loc_188516B:       var_290 = CVar(CLng(&H10)) 'Long
  loc_188518D:       var_374 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_18851B0:       var_18C = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_374)) 'Double
  loc_18851E9:       Call Proc_350_63_17B6DA8(CStr(Me.FGrid.TextMatrix)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), CSng(Format(CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))), "0.00")), vbNullString, 0, 1, 1, var_374)
  loc_188521D:     End If
  loc_1885220:   Else
  loc_188522A:     If (var_B6 < var_AC) Then
  loc_1885231:       var_E4 = CVar(CLng(var_9A)) 'Long
  loc_1885239:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1885258:       var_124 = CVar(CLng(var_9A)) 'Long
  loc_1885260:       var_1D0 = CVar(CLng(0)) 'Long
  loc_1885289:       var_1F0 = CVar(CLng(var_9A)) 'Long
  loc_1885291:       var_210 = CVar(CLng(3)) 'Long
  loc_18852BA:       var_230 = CVar(CLng(var_9A)) 'Long
  loc_18852C2:       var_250 = CVar(CLng(2)) 'Long
  loc_1885324:       Set var_198 = Me.FGrid
  loc_1885367:       Call Proc_350_63_17B6DA8(CStr(Me.FGrid.TextMatrix)), CInt(Val(CStr(Me.FGrid.TextMatrix)))), CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00")), vbNullString, Val(CStr(var_198.TextMatrix))), Val(CStr(var_198.TextMatrix))), CVar(CLng(&H11)), CVar(CLng(var_9A)))
  loc_188539E:     Else
  loc_18853A2:       var_E4 = CVar(CLng(var_9A)) 'Long
  loc_18853AA:       var_104 = CVar(CLng(&HA)) 'Long
  loc_18853C9:       var_124 = CVar(CLng(var_9A)) 'Long
  loc_18853D1:       var_1D0 = CVar(CLng(0)) 'Long
  loc_18853DA:       Set var_134 = Me.FGrid
  loc_18853FA:       var_1F0 = CVar(CLng(var_9A)) 'Long
  loc_1885402:       var_210 = CVar(CLng(3)) 'Long
  loc_188542B:       var_230 = CVar(CLng(var_9A)) 'Long
  loc_1885433:       var_250 = CVar(CLng(2)) 'Long
  loc_1885455:       var_36C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_18854AD:       Call Proc_350_63_17B6DA8(CStr(Me.FGrid.TextMatrix)), CInt(Val(CStr(var_134.TextMatrix)))), CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_36C)), "0.00")), vbNullString, 0, 1, 1, var_36C)
  loc_18854DB:     End If
  loc_18854DB:   End If
  loc_18854DE: Next var_314 'Integer
  loc_1885502: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1885518:   Me.FGCat.FixedRows = 1
  loc_1885520: End If
  loc_188554E: For var_380 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_9C = var_380 'Integer
  loc_1885560:   Set var_C0 = Me.TxtGt
  loc_1885566:   Call 0.Method_Proc_350_60_1885A1C8 (var_126, var_9A, 1)
  loc_1885571:   For var_384 = CDbl(0) To var_126: 0 = var_384 'Integer
  loc_1885584:     Set var_C0 = Me.LblCap
  loc_188558A:     Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_1885592:     var_130 = var_134.Tag
  loc_18855A0:     var_148 = Trim(CVar(var_130))
  loc_18855AC:     var_E4 = CVar(CLng(var_9C)) 'Long
  loc_18855F4:     If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_1885604:       Set var_C0 = Me.TxtGt
  loc_188560A:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_1885612:       var_E4 = var_134.Text
  loc_188561F:       var_298 = Val(var_130)
  loc_1885626:       var_E4 = CVar(CLng(var_9C)) 'Long
  loc_1885650:       var_2A0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_188566F:       var_148 = CVar((var_298 + var_2A0)) 'Double
  loc_188568C:       Set var_194 = Me.TxtGt
  loc_1885692:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_198, CStr(Format(var_148, "0.00")), 1, 1, var_2A0)
  loc_188569A:       var_198.Text = CVar(CLng(6))
  loc_18856C0:     End If
  loc_18856C3:   Next var_384 'Integer
  loc_18856CB: Next var_380 'Integer
  loc_18856DC: Set var_C0 = Me.TxtGt
  loc_18856E2: Call 0.Method_Proc_350_60_1885A1C8 (var_126, var_9A)
  loc_18856ED: For var_388 =  To var_126: 2 = var_388 'Integer
  loc_1885700:   Set var_C0 = Me.LblCap
  loc_1885706:   Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134)
  loc_1885716:   var_D0 = CVar(var_134.Tag) 'String
  loc_1885741:   If (Trim(var_D0) = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_188574A:     Call Proc_350_62_127F130(var_9A)
  loc_1885752:     var_A4 = var_298
  loc_188576D:     Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, CStr(var_A4))
  loc_1885775:     var_134.Caption = var_A4
  loc_188579A:     unk_5608CF.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill'", var_D0, -1
  loc_18857A5:     Set var_88 = Me.LblDummy
  loc_18857C2:     If (var_88.RecordCount > 0) Then
  loc_18857D4:       var_C0 = var_88.Fields
  loc_18857DC:       var_134 = var_C0.Item("RoundOffType")
  loc_1885808:       Proc_6_85_1261068(var_A4, CByte(2), CStr(Left(CVar(var_134), 1)))
  loc_1885845:       Set var_190 = Me.TxtGt
  loc_188584B:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194, CStr(Format(CVar(var_C0), "0.00")), 1)
  loc_1885853:       var_194.Text = 1
  loc_1885878:     Else
  loc_188587B:       var_130 = "S"
  loc_188588C:       Proc_6_85_1261068(var_A4, CByte(2), var_130)
  loc_18858BB:       var_138 = CStr(Format(CVar(var_298), "0.00"))
  loc_18858C9:       Set var_C0 = Me.TxtGt
  loc_18858CF:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_138, 1)
  loc_18858D7:       var_134.Text = 1
  loc_18858F3:     End If
  loc_18858F6:   Else
  loc_18858FD:     If (var_9A <> arg_C) Then
  loc_188590D:       Set var_C0 = Me.LblCap
  loc_1885913:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, var_130)
  loc_188591B:       var_298 = var_134.Tag
  loc_188594D:       Set var_190 = Me.LblCap
  loc_1885953:       Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_194, var_138)
  loc_188595B:       (Trim(CVar(var_130)) = CVar(MemVar_1F92078 & "TOT")) = var_194.Tag
  loc_18859A0:       If CBool(var_298 Or (Trim(CVar(var_138)) = CVar(MemVar_1F92078 & "NET"))) Then
  loc_18859A9:         Call Proc_350_62_127F130(var_9A)
  loc_18859E3:         Set var_C0 = Me.TxtGt
  loc_18859E9:         Call 0.Method_Proc_350_60_1885A1C0 (var_9A, var_134, CStr(Format(CVar(var_298), "0.00")))
  loc_18859F1:         var_134.Text = 1
  loc_1885A09:       End If
  loc_1885A09:     End If
  loc_1885A09:   End If
  loc_1885A0C: Next var_388 'Integer
  loc_1885A16: Set var_88 = Nothing
  loc_1885A19: Exit Sub
End Sub

Public Sub Proc_350_61_125E1F8
  'Data Table: 5608C8
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_9C As Double
  Dim var_118 As String
  Dim unk_5608CF As Connection15
  Dim var_8C As Recordset15
  Dim var_A4 As Double
  Dim var_140 As Variant
  Dim var_12C As Variant
  Dim var_154 As Field20
  Dim var_1C8 As Variant
  Dim var_184 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_22C As Variant
  Dim var_94 As Double
  loc_125DCE5: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_125DCEF:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_125DCF7:   var_100 = CVar(CLng(3)) 'Long
  loc_125DD19:   var_9C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_125DD29:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_125DD31:   var_100 = CVar(CLng(&HA)) 'Long
  loc_125DD64:   var_118 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_125DD74:   unk_5608CF.Execute var_118 & "' ORDER BY SNO DESC", var_13C, -1
  loc_125DD7F:   Set var_8C = var_140
  loc_125DDAD:   If (var_8C.RecordCount > 0) Then
  loc_125DDB3:     var_A4 = CDbl(0)
  loc_125DDB6:     ' Referenced from: 125DF52
  loc_125DDC5:     If Not(var_8C.EOF) Then
  loc_125DE17:       var_9C = ((Val(CStr(var_9C)) / (CDbl(&H64) + Val(CStr(var_8C.Fields.Item("Rate").Value)))) * CDbl(&H64))
  loc_125DE2F:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_125DE37:       var_100 = CVar(CLng(2)) 'Long
  loc_125DF05:       var_28C = Round(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100), CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2)))
  loc_125DF0E:       var_AC = CSng(var_28C)
  loc_125DF3D:       var_A4 = (var_AC + var_A4)
  loc_125DF47:       var_B4 = (var_B4 + var_AC)
  loc_125DF4D:       var_8C.MoveNext
  loc_125DF52:       GoTo loc_125DDB6
  loc_125DF55:     End If
  loc_125DF59:     var_12C = CVar(CLng(var_86)) 'Long
  loc_125DF61:     var_184 = CVar(CLng(3)) 'Long
  loc_125DF6A:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125DF72:     var_100 = CVar(CLng(3)) 'Long
  loc_125DF96:     var_13C = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_125DF9E:     Set var_140 = Me.FGrid
  loc_125DFA4:     LateIdCallSt
  loc_125DFC1:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125DFC9:     var_100 = CVar(CLng(3)) 'Long
  loc_125DFE8:     var_164 = CVar(CLng(var_86)) 'Long
  loc_125DFF0:     var_1A4 = CVar(CLng(3)) 'Long
  loc_125E01D:     var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_125E025:     Set var_140 = Me.FGrid
  loc_125E02B:     LateIdCallSt
  loc_125E04B:     var_12C = CVar(CLng(var_86)) 'Long
  loc_125E053:     var_184 = CVar(CLng(2)) 'Long
  loc_125E07C:     var_1C8 = CVar(CLng(var_86)) 'Long
  loc_125E084:     var_22C = CVar(CLng(4)) 'Long
  loc_125E08D:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125E095:     var_100 = CVar(CLng(3)) 'Long
  loc_125E0BD:     var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_125E0C5:     Set var_154 = Me.FGrid
  loc_125E0CB:     LateIdCallSt
  loc_125E0F0:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125E0F8:     var_100 = CVar(CLng(4)) 'Long
  loc_125E117:     var_164 = CVar(CLng(var_86)) 'Long
  loc_125E11F:     var_1A4 = CVar(CLng(4)) 'Long
  loc_125E14C:     var_1B4 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_125E154:     Set var_140 = Me.FGrid
  loc_125E15A:     LateIdCallSt
  loc_125E17A:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125E182:     var_100 = CVar(CLng(4)) 'Long
  loc_125E1AE:     var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_125E1BE:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_125E1C6:     var_100 = CVar(CLng(&H13)) 'Long
  loc_125E1D0:     var_CC = CVar(CStr(var_A4)) 'String
  loc_125E1D8:     Set var_BC = Me.FGrid
  loc_125E1DE:     LateIdCallSt
  loc_125E1EC:   End If
  loc_125E1EF: Next var_D0 'Integer
  loc_125E1F4: Exit Sub
  loc_125E1F5: ThisVCallI2
End Sub

Public Sub Proc_350_62_127F130(arg_C) '127F130
  'Data Table: 5608C8
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_120 As Double
  Dim var_A0 As Double
  Dim var_D0 As Variant
  Dim var_228 As Double
  Dim var_168 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_18C As Variant
  Dim var_20C As Variant
  Dim var_23C As Label
  Dim var_8C As Double
  Dim var_1AC As Variant
  loc_127EBAD: Set var_A8 = Me.TxtGt
  loc_127EBB3: Call 0.Method_Proc_350_62_127F1300 (arg_C, var_AC)
  loc_127EBD2: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_127EBF0: Set var_A8 = Me.LblCap
  loc_127EBF6: Call 0.Method_Proc_350_62_127F1300 (arg_C, var_AC)
  loc_127EC20: If (var_AC.Tag = MemVar_1F92078 & "SCH") Then
  loc_127EC48:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_127EC52:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_127EC5A:     var_108 = CVar(CLng(&H12)) 'Long
  loc_127EC85:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_127EC8C:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_127EC94:       var_108 = CVar(CLng(4)) 'Long
  loc_127ECC0:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_127ECD0:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_127ECD8:       var_108 = CVar(CLng(4)) 'Long
  loc_127ECFA:       var_120 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_127ED12:       Set var_AC = Me.FGrid
  loc_127ED2B:       var_228 = Val(CStr(var_AC.TextMatrix)))
  loc_127ED3B:       Set var_164 = Me.TxtPer
  loc_127ED41:       Call 0.Method_Proc_350_62_127F1300 (arg_C, var_168, var_16C, var_228, CVar(CLng(&H10)), CVar(CLng(var_A2)), var_120)
  loc_127ED49:       var_108 = var_168.Text
  loc_127ED5D:       var_1CC = CVar(CLng(var_A2)) 'Long
  loc_127ED65:       var_1EC = CVar(CLng(&H11)) 'Long
  loc_127ED8E:       var_18C = CVar((((var_120 - var_228) * Val(var_16C)) / CDbl(&H64))) 'Double
  loc_127ED9E:       var_20C = CVar(CStr(Format(var_18C, "0.00"))) 'String
  loc_127EDA6:       Set var_220 = Me.FGrid
  loc_127EDAC:       LateIdCallSt
  loc_127EDD9:     End If
  loc_127EDDC:   Next var_D8 'Integer
  loc_127EDE4: Else
  loc_127EE09:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_234 'Integer
  loc_127EE13:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_127EE1B:     var_108 = CVar(CLng(4)) 'Long
  loc_127EE47:     var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_127EE56:   Next var_234 'Integer
  loc_127EE5B: End If
  loc_127EE65: If (Len(var_90) > 0) Then
  loc_127EE97:   Set var_A8 = Me.LblCap
  loc_127EE9D:   Call 0.Method_Proc_350_62_127F1300 (arg_C, var_AC)
  loc_127EEB4:   var_D4 = MemVar_1F92078 & "SCH"
  loc_127EEC6:   Set var_164 = Me.LblCap
  loc_127EECC:   Call 0.Method_Proc_350_62_127F1300 (arg_C, var_168, var_16C)
  loc_127EED4:   (var_AC.Tag = var_D4) = var_168.Tag
  loc_127EEF6:   Set var_220 = Me.LblCap
  loc_127EEFC:   Call 0.Method_Proc_350_62_127F1300 (arg_C, var_23C)
  loc_127EF48:   If CBool( And (((Left(var_90, 1) = "1") Or (var_16C = MemVar_1F92078 & "ADD")) Or (var_23C.Tag = MemVar_1F92070 & "DED"))) Then
  loc_127EF4E:     var_8C = var_A0
  loc_127EF54:   Else
  loc_127EF6C:     var_B0 = CStr(Left(var_90, 1))
  loc_127EF86:     Set var_A8 = Me.TxtGt
  loc_127EF8C:     Call 0.Method_Proc_350_62_127F1300 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_127EF94:     var_120 = var_AC.Text
  loc_127EFA1:     var_8C = Val(var_D4)
  loc_127EFB5:   End If
  loc_127EFD6:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_127EFE0:   ' Referenced from: 127F125
  loc_127EFEA:   If (Len(var_90) > 0) Then
  loc_127F02D:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_127F077:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_127F08E:     Set var_A8 = Me.TxtGt
  loc_127F094:     Call 0.Method_Proc_350_62_127F1300 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_127F0A9:     var_120 = Val(var_B0)
  loc_127F0C0:     Set var_164 = Me.TxtGt
  loc_127F0C6:     Call 0.Method_Proc_350_62_127F1300 (var_AC.Text, var_168, var_D4, CVar(var_8C))
  loc_127F0DC:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_127F0EF:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_127F0FE:     var_1AC = (var_8C + IIf(var_90, CVar(var_168.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_127F103:     var_8C = CSng("0.00")
  loc_127F125:     GoTo loc_127EFE0
  loc_127F128:   End If
  loc_127F128: End If
  loc_127F128: Proc_350_62_127F130 = var_8C
End Sub

Public Sub Proc_350_63_17B6DA8(arg_C, arg_10, arg_14) '17B6DA8
  'Data Table: 5608C8
  Dim var_E4 As String
  Dim unk_5608CF As Connection15
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_F8 As Variant
  Dim var_D2 As Integer
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_13C As Variant
  Dim var_128 As Variant
  Dim var_D0 As Double
  Dim var_160 As Variant
  Dim var_184 As Double
  Dim var_14C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_E0 As Recordset15
  Dim var_254 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_1B4 As Integer
  Dim var_264 As Variant
  Dim var_118 As MSHFlexGrid
  Dim var_16C As Double
  Dim var_9C As Double
  loc_17B4E0C: unk_5608CF.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_17B4E17: Set var_D8 = var_10C
  loc_17B4E3B: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_17B4E4B: unk_5608CF.Execute var_E4 & "'", var_108, -1
  loc_17B4E56: Set var_8C = var_10C
  loc_17B4E68: var_DA = 0
  loc_17B4E6E: var_94 = arg_14
  loc_17B4E73: var_86 = 1
  loc_17B4E79: var_A8 = var_94
  loc_17B4E7F: var_B0 = var_94
  loc_17B4E85: var_B8 = CDbl(0)
  loc_17B4E9C: If (var_8C.RecordCount > 0) Then
  loc_17B4E9F:   ' Referenced from: 17B6D7C
  loc_17B4EAE:   If Not(var_8C.EOF) Then
  loc_17B4EB5:     Set var_118 = Me.FGCat
  loc_17B4EB8:     var_F8 = vbNullString
  loc_17B4EDD:     If (var_8C.RecordCount > 0) Then
  loc_17B4EE6:       var_D2 = (var_D2 + 1)
  loc_17B4EEC:       var_F8 = "Nature"
  loc_17B4F1F:       var_15C = Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8, var_B8, var_B0))) 'Variant
  loc_17B4F38:       If (var_15C = "On Base Amt") Then
  loc_17B4F7B:         If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17B4FBD:           var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_17B4FD0:         Else
  loc_17B4FF2:           var_13C = var_8C.Fields.Item("Rate").Value
  loc_17B5030:           Proc_6_142_14A55B0(((Val(CStr(var_13C)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_13C)), var_D0)
  loc_17B5035:           var_184 = var_A8
  loc_17B507B:           var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64)) + var_184)
  loc_17B5099:         End If
  loc_17B50BF:         Proc_6_39_E7C810(var_13C, CVar(var_8C.Fields.Item("Limit")), var_D0, var_184, var_86)
  loc_17B50F2:         var_1A4 = CVar(var_8C.Fields.Item("Rate")) 'Address
  loc_17B50F9:         Proc_6_39_E7C810(var_1B4, var_1A4, (var_13C <= CVar(var_94)), var_94)
  loc_17B5123:         If CBool(var_DA And (var_1B4 > 0)) Then
  loc_17B512D:           If (var_D0 > CDbl(0)) Then
  loc_17B5149:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5151:             var_194 = CVar(CLng(0)) 'Long
  loc_17B515B:             var_13C = CVar(CStr(var_86)) 'String
  loc_17B5162:             LateIdCallSt
  loc_17B518D:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5195:             var_194 = CVar(CLng(1)) 'Long
  loc_17B519F:             var_13C = CVar(CStr(arg_10)) 'String
  loc_17B51A6:             LateIdCallSt
  loc_17B51D1:             var_1F4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B51D9:             var_214 = CVar(CLng(9)) 'Long
  loc_17B51E2:             var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B51EA:             var_194 = CVar(CLng(5)) 'Long
  loc_17B5204:             var_14C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17B520B:             LateIdCallSt
  loc_17B5229:             If (var_DA = 0) Then
  loc_17B5230:               Set var_160 = Me.FGCat
  loc_17B5245:               var_128 = CVar((CLng(var_160.Rows) - 1)) 'Long
  loc_17B524D:               var_1C4 = CVar(CLng(2)) 'Long
  loc_17B527D:               var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17B5284:               LateIdCallSt
  loc_17B52A1:             Else
  loc_17B52AE:               var_128 = "Select RevCode as Code from SundryType where v_type in ('FACL') and SundryCode in (Select Sundry from RevMast Where Code='"
  loc_17B52F4:               unk_5608CF.Execute CStr(var_128 & var_8C.Fields.Item("TaxCode").Value & "')"), var_1A4, -1
  loc_17B52FF:               Set var_E0 = var_160
  loc_17B532D:               If (var_E0.RecordCount > 0) Then
  loc_17B5349:                 var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5351:                 var_1C4 = CVar(CLng(2)) 'Long
  loc_17B5381:                 var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17B5388:                 LateIdCallSt
  loc_17B53A2:               End If
  loc_17B53A2:             End If
  loc_17B53BB:             var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B53C3:             var_1C4 = CVar(CLng(3)) 'Long
  loc_17B53F3:             var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17B53FA:             LateIdCallSt
  loc_17B542D:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5435:             var_194 = CVar(CLng(4)) 'Long
  loc_17B5443:             var_13C = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_17B544A:             LateIdCallSt
  loc_17B5475:             var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B547D:             var_1C4 = CVar(CLng(5)) 'Long
  loc_17B54AD:             var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17B54B4:             LateIdCallSt
  loc_17B5512:             var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5536:             var_1A4 = (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes") 'Variant
  loc_17B5565:             LateIdCallSt
  loc_17B55A2:             var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B55D7:             var_14C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf(var_1A4, 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_17B55DE:             LateIdCallSt
  loc_17B560F:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5617:             var_194 = CVar(CLng(8)) 'Long
  loc_17B5626:             LateIdCallSt
  loc_17B5634:           End If
  loc_17B564D:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5655:           var_194 = CVar(CLng(6)) 'Long
  loc_17B567A:           var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_17B56A3:           var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B56AB:           var_194 = CVar(CLng(6)) 'Long
  loc_17B56C6:           var_16C = Val(CStr(var_118.TextMatrix)))
  loc_17B56D0:           var_94 = (var_94 + var_16C)
  loc_17B56E7:           var_B0 = (var_B0 + var_D0)
  loc_17B56ED:           var_B8 = var_D0
  loc_17B56F0:         End If
  loc_17B56F3:       Else
  loc_17B56FE:         If (var_15C = "On Running Total") Then
  loc_17B5741:           If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17B577F:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_17B5792:           Else
  loc_17B57B4:             var_13C = var_8C.Fields.Item("Rate").Value
  loc_17B57EE:             Proc_6_142_14A55B0(((Val(CStr(var_13C)) * var_B0) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_13C)), var_D0, var_B8, var_B0)
  loc_17B57F3:             var_184 = var_94
  loc_17B5835:             var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)) + var_184)
  loc_17B5853:           End If
  loc_17B5879:           Proc_6_39_E7C810(var_13C, CVar(var_8C.Fields.Item("Rate")), var_D0, var_184, var_16C)
  loc_17B5893:           If (var_13C > 0) Then
  loc_17B589D:             If (var_D0 > CDbl(0)) Then
  loc_17B58B9:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B58C1:               var_194 = CVar(CLng(0)) 'Long
  loc_17B58CB:               var_13C = CVar(CStr(var_86)) 'String
  loc_17B58D2:               LateIdCallSt
  loc_17B58FD:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5905:               var_194 = CVar(CLng(1)) 'Long
  loc_17B590F:               var_13C = CVar(CStr(arg_10)) 'String
  loc_17B5916:               LateIdCallSt
  loc_17B5941:               var_1F4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5949:               var_214 = CVar(CLng(9)) 'Long
  loc_17B5952:               var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B595A:               var_194 = CVar(CLng(5)) 'Long
  loc_17B5974:               var_14C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17B597B:               LateIdCallSt
  loc_17B5999:               If (var_DA = 0) Then
  loc_17B59A0:                 Set var_160 = Me.FGCat
  loc_17B59B5:                 var_128 = CVar((CLng(var_160.Rows) - 1)) 'Long
  loc_17B59BD:                 var_1C4 = CVar(CLng(2)) 'Long
  loc_17B59ED:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17B59F4:                 LateIdCallSt
  loc_17B5A11:               Else
  loc_17B5A1E:                 var_128 = "Select RevCode as Code from SundryType where v_type in ('FACL') and SundryCode in (Select Sundry from RevMast Where Code='"
  loc_17B5A64:                 unk_5608CF.Execute CStr(var_128 & var_8C.Fields.Item("TaxCode").Value & "')"), var_1A4, -1
  loc_17B5A6F:                 Set var_E0 = var_160
  loc_17B5A9D:                 If (var_E0.RecordCount > 0) Then
  loc_17B5AB9:                   var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5AC1:                   var_1C4 = CVar(CLng(2)) 'Long
  loc_17B5AF1:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17B5AF8:                   LateIdCallSt
  loc_17B5B12:                 End If
  loc_17B5B12:               End If
  loc_17B5B2B:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5B33:               var_1C4 = CVar(CLng(3)) 'Long
  loc_17B5B63:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17B5B6A:               LateIdCallSt
  loc_17B5B9D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5BA5:               var_194 = CVar(CLng(4)) 'Long
  loc_17B5BAF:               var_13C = CVar(CStr(var_B0)) 'String
  loc_17B5BB6:               LateIdCallSt
  loc_17B5BE1:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5BE9:               var_1C4 = CVar(CLng(5)) 'Long
  loc_17B5C19:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17B5C20:               LateIdCallSt
  loc_17B5C7E:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5C86:               var_224 = CVar(CLng(6)) 'Long
  loc_17B5CA2:               var_1A4 = (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes") 'Variant
  loc_17B5CCA:               var_264 = CVar(CStr(Round(var_D0, CLng(IIf(var_1A4, 0, 2))))) 'String
  loc_17B5CD1:               LateIdCallSt
  loc_17B5D0E:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5D16:               var_1C4 = CVar(CLng(7)) 'Long
  loc_17B5D46:               var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17B5D4D:               LateIdCallSt
  loc_17B5D80:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5D88:               var_194 = CVar(CLng(8)) 'Long
  loc_17B5D97:               LateIdCallSt
  loc_17B5DA5:             End If
  loc_17B5DBE:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5DC6:             var_194 = CVar(CLng(6)) 'Long
  loc_17B5DEB:             var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_17B5E14:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5E1C:             var_194 = CVar(CLng(6)) 'Long
  loc_17B5E41:             var_94 = (var_94 + Val(CStr(var_118.TextMatrix))))
  loc_17B5E58:             var_B0 = (var_B0 + var_D0)
  loc_17B5E5E:             var_B8 = var_D0
  loc_17B5E61:           End If
  loc_17B5E64:         Else
  loc_17B5E6F:           If (var_15C = "On Prev. Tax Amt") Then
  loc_17B5EB2:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17B5EF0:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_17B5F03:             Else
  loc_17B5F5F:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_17B5FA6:               var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)) + var_94)
  loc_17B5FC4:             End If
  loc_17B5FCB:             If (var_D0 > CDbl(0)) Then
  loc_17B5FE7:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B5FEF:               var_194 = CVar(CLng(0)) 'Long
  loc_17B5FF9:               var_13C = CVar(CStr(var_86)) 'String
  loc_17B6000:               LateIdCallSt
  loc_17B602B:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6033:               var_194 = CVar(CLng(1)) 'Long
  loc_17B603D:               var_13C = CVar(CStr(arg_10)) 'String
  loc_17B6044:               LateIdCallSt
  loc_17B606F:               var_1F4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6077:               var_214 = CVar(CLng(9)) 'Long
  loc_17B6080:               var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B6088:               var_194 = CVar(CLng(5)) 'Long
  loc_17B60A2:               var_14C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17B60A9:               LateIdCallSt
  loc_17B60C7:               If (var_DA = 0) Then
  loc_17B60CE:                 Set var_160 = Me.FGCat
  loc_17B60E3:                 var_128 = CVar((CLng(var_160.Rows) - 1)) 'Long
  loc_17B60EB:                 var_1C4 = CVar(CLng(2)) 'Long
  loc_17B611B:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17B6122:                 LateIdCallSt
  loc_17B613F:               Else
  loc_17B614C:                 var_128 = "Select RevCode as Code from SundryType where v_type in ('FACL') and SundryCode in (Select Sundry from RevMast Where Code='"
  loc_17B6192:                 unk_5608CF.Execute CStr(var_128 & var_8C.Fields.Item("TaxCode").Value & "')"), var_1A4, -1
  loc_17B619D:                 Set var_E0 = var_160
  loc_17B61CB:                 If (var_E0.RecordCount > 0) Then
  loc_17B61E7:                   var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B61EF:                   var_1C4 = CVar(CLng(2)) 'Long
  loc_17B621F:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17B6226:                   LateIdCallSt
  loc_17B6240:                 End If
  loc_17B6240:               End If
  loc_17B6259:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6261:               var_1C4 = CVar(CLng(3)) 'Long
  loc_17B6291:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17B6298:               LateIdCallSt
  loc_17B62CB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B62D3:               var_194 = CVar(CLng(4)) 'Long
  loc_17B62DD:               var_13C = CVar(CStr(var_B8)) 'String
  loc_17B62E4:               LateIdCallSt
  loc_17B630F:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6317:               var_1C4 = CVar(CLng(5)) 'Long
  loc_17B6347:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17B634E:               LateIdCallSt
  loc_17B63A8:               var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B63B0:               var_224 = CVar(CLng(6)) 'Long
  loc_17B63B5:               var_1B4 = 2
  loc_17B63F4:               var_254 = CVar(CStr(Round(var_D0, CLng(IIf((var_8C.Fields.Item("RoundOff").Value = "Yes"), 0, var_1B4))))) 'String
  loc_17B63FB:               LateIdCallSt
  loc_17B6438:               var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6440:               var_1C4 = CVar(CLng(7)) 'Long
  loc_17B6470:               var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_17B6477:               LateIdCallSt
  loc_17B64AA:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B64B2:               var_194 = CVar(CLng(8)) 'Long
  loc_17B64C1:               LateIdCallSt
  loc_17B64CF:             End If
  loc_17B64E8:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B64F0:             var_194 = CVar(CLng(6)) 'Long
  loc_17B6515:             var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_17B653E:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6546:             var_194 = CVar(CLng(6)) 'Long
  loc_17B6561:             var_16C = Val(CStr(var_118.TextMatrix)))
  loc_17B656B:             var_94 = (var_94 + var_16C)
  loc_17B6582:             var_B0 = (var_B0 + var_D0)
  loc_17B6588:             var_B8 = var_D0
  loc_17B658E:           Else
  loc_17B65CE:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_17B660C:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_17B661F:             Else
  loc_17B6641:               var_13C = var_8C.Fields.Item("Rate").Value
  loc_17B667B:               Proc_6_142_14A55B0(((Val(CStr(var_13C)) * var_A8) / CDbl(&H64)), CByte(0), "S", 2, Val(CStr(var_13C)), var_D0, var_B8, var_B0)
  loc_17B6680:               var_184 = var_94
  loc_17B66C2:               var_D0 = (((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)) + var_184)
  loc_17B66E0:             End If
  loc_17B66E3:             var_F8 = "Limit"
  loc_17B6706:             Proc_6_39_E7C810(var_13C, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_184, var_16C)
  loc_17B671D:             var_194 = "Rate"
  loc_17B6739:             var_1A4 = CVar(var_8C.Fields.Item(var_194)) 'Address
  loc_17B6740:             Proc_6_39_E7C810(var_1B4, var_1A4, (var_13C <= CVar(var_94)), var_194)
  loc_17B676A:             If CBool(var_F8 And (var_1B4 > 0)) Then
  loc_17B6774:               If (var_D0 > CDbl(0)) Then
  loc_17B6790:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6798:                 var_194 = CVar(CLng(0)) 'Long
  loc_17B67A2:                 var_13C = CVar(CStr(var_86)) 'String
  loc_17B67A9:                 LateIdCallSt
  loc_17B67D4:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B67DC:                 var_194 = CVar(CLng(1)) 'Long
  loc_17B67E6:                 var_13C = CVar(CStr(arg_10)) 'String
  loc_17B67ED:                 LateIdCallSt
  loc_17B6818:                 var_1F4 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6820:                 var_214 = CVar(CLng(9)) 'Long
  loc_17B6829:                 var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B6831:                 var_194 = CVar(CLng(5)) 'Long
  loc_17B684B:                 var_14C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_17B6852:                 LateIdCallSt
  loc_17B6870:                 If (var_DA = 0) Then
  loc_17B6877:                   Set var_160 = Me.FGCat
  loc_17B688C:                   var_128 = CVar((CLng(var_160.Rows) - 1)) 'Long
  loc_17B6894:                   var_1C4 = CVar(CLng(2)) 'Long
  loc_17B68C4:                   var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_17B68CB:                   LateIdCallSt
  loc_17B68E8:                 Else
  loc_17B68F5:                   var_128 = "Select RevCode as Code from SundryType where v_type in ('FACL') and SundryCode in (Select Sundry from RevMast Where Code='"
  loc_17B693B:                   unk_5608CF.Execute CStr(var_128 & var_8C.Fields.Item("TaxCode").Value & "')"), var_1A4, -1
  loc_17B6946:                   Set var_E0 = var_160
  loc_17B6974:                   If (var_E0.RecordCount > 0) Then
  loc_17B6990:                     var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6998:                     var_1C4 = CVar(CLng(2)) 'Long
  loc_17B69C8:                     var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_17B69CF:                     LateIdCallSt
  loc_17B69E9:                   End If
  loc_17B69E9:                 End If
  loc_17B6A02:                 var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6A0A:                 var_1C4 = CVar(CLng(3)) 'Long
  loc_17B6A3A:                 var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_17B6A41:                 LateIdCallSt
  loc_17B6A74:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6A7C:                 var_194 = CVar(CLng(4)) 'Long
  loc_17B6A86:                 var_13C = CVar(CStr(var_A8)) 'String
  loc_17B6A8D:                 LateIdCallSt
  loc_17B6AB8:                 var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6AC0:                 var_1C4 = CVar(CLng(5)) 'Long
  loc_17B6AF0:                 var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_17B6AF7:                 LateIdCallSt
  loc_17B6B55:                 var_204 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6BA8:                 LateIdCallSt
  loc_17B6BE5:                 var_128 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6C1A:                 var_14C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Sundry")), CVar(CLng(7)), "Yes", var_118, CVar(CStr(Round(var_D0, CLng(IIf((Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "Yes"), 0, 2))))), CVar(CLng(6)), var_204)) 'String
  loc_17B6C21:                 LateIdCallSt
  loc_17B6C52:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6C5A:                 var_194 = CVar(CLng(8)) 'Long
  loc_17B6C69:                 LateIdCallSt
  loc_17B6C77:               End If
  loc_17B6C90:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6C98:               var_194 = CVar(CLng(6)) 'Long
  loc_17B6CBD:               var_9C = (var_9C + Val(CStr(var_118.TextMatrix))))
  loc_17B6CE6:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_17B6CEE:               var_194 = CVar(CLng(6)) 'Long
  loc_17B6D13:               var_94 = (var_94 + Val(CStr(var_118.TextMatrix))))
  loc_17B6D2A:               var_B0 = (var_B0 + var_D0)
  loc_17B6D30:               var_B8 = var_D0
  loc_17B6D33:             End If
  loc_17B6D33:           End If
  loc_17B6D33:         End If
  loc_17B6D33:       End If
  loc_17B6D33:     End If
  loc_17B6D39:     var_86 = (var_86 + 1)
  loc_17B6D3E:     Set var_118 = Nothing 
  loc_17B6D46:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_17B6D4E:     var_194 = CVar(CLng(&H13)) 'Long
  loc_17B6D58:     var_108 = CVar(CStr(var_9C)) 'String
  loc_17B6D60:     Set var_10C = Me.FGrid
  loc_17B6D66:     LateIdCallSt
  loc_17B6D77:     var_8C.MoveNext
  loc_17B6D7C:     GoTo loc_17B4E9F
  loc_17B6D7F:   End If
  loc_17B6D84:   Set var_8C = Nothing
  loc_17B6D8C:   Set var_C4 = Nothing
  loc_17B6D94:   Set var_C0 = Nothing
  loc_17B6D9C:   Set var_D8 = Nothing
  loc_17B6DA4:   Set var_E0 = Nothing
  loc_17B6DA7: End If
  loc_17B6DA7: Exit Sub
End Sub

Public Sub Proc_350_64_FAAFB8
  'Data Table: 5608C8
  Dim var_DC As TextBox
  Dim var_D8 As Frame
  loc_FAAE6D: Set var_D8 = Me.TxteInvInfo
  loc_FAAE73: Call 0.Method_Proc_350_64_FAAFB80 (0, var_DC)
  loc_FAAE7B: var_DC.Text = CStr(IIf((global_112 <> vbNullString), global_112, vbNullString))
  loc_FAAED0: Set var_D8 = Me.TxteInvInfo
  loc_FAAED6: Call 0.Method_Proc_350_64_FAAFB80 (1, var_DC)
  loc_FAAEDE: var_DC.Text = CStr(IIf((global_116 <> vbNullString), global_116, vbNullString))
  loc_FAAF54: Set var_D8 = Me.TxteInvInfo
  loc_FAAF5A: Call 0.Method_Proc_350_64_FAAFB80 (2, var_DC, CStr(IIf((global_120 <> CDate("31/Dec/1899")), Format(global_120, "dd/mm/yyyy hh:nn:ss"), vbNullString)))
  loc_FAAF62: var_DC.Text = 1
  loc_FAAF89: If (global_112 <> vbNullString) Then
  loc_FAAF98:   Me.FreInvInfo.Visible = True
  loc_FAAFA3: Else
  loc_FAAFAF:   Me.FreInvInfo.Visible = False
  loc_FAAFB7: End If
  loc_FAAFB7: Exit Sub
End Sub

Public Sub Proc_350_65_E65820(arg_C) 'E65820
  'Data Table: 5608C8
  loc_E657E0: If (arg_C <> vbNullString) Then
  loc_E657FC:   MsgBox("eInvoice already generated.", &H10, var_C8, var_E8, var_108)
  loc_E6580C:   Proc_350_65_E65820 = 
  loc_E65812: End If
  loc_E65817: Proc_350_65_E65820 = &HFF
End Sub
