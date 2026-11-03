VERSION 5.00
Begin VB.Form RsBookingEntry
  Caption = "Booking Entry"
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
  ClientWidth = 10620
  ClientHeight = 8595
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10620
    Height = 450
    TabIndex = 80
  End
  Begin Frame FrFinish
    Caption = "Finish Items :"
    Left = 6735
    Top = 7785
    Width = 5940
    Height = 1950
    Visible = 0   'False
    TabIndex = 77
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSFlexGrid FGridFinish
      Left = 180
      Top = 255
      Width = 5595
      Height = 1530
      TabIndex = 78
    End
  End
  Begin DataGrid DGItem
    Left = 6090
    Top = 10110
    Width = 7110
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin TextBox Txt
    Index = 20
    Left = 1455
    Top = 7545
    Width = 6075
    Height = 240
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin CommandButton CmdCustDetails
    Caption = "..."
    Left = 5160
    Top = 1005
    Width = 255
    Height = 255
    TabIndex = 74
    TabStop = 0   'False
  End
  Begin Frame FrCustInfo
    Caption = "Customer Info."
    BackColor = &H80FF&
    Left = 1455
    Top = 7890
    Width = 5055
    Height = 1030
    Enabled = 0   'False
    TabIndex = 65
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox TxtCust
      Index = 7
      Left = 1380
      Top = 1815
      Width = 3645
      Height = 240
      TabIndex = 84
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
    Begin TextBox TxtCust
      Index = 6
      Left = 1380
      Top = 1560
      Width = 3645
      Height = 240
      TabIndex = 83
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
    Begin TextBox TxtCust
      Index = 5
      Left = 1380
      Top = 1305
      Width = 3645
      Height = 240
      TabIndex = 82
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
    Begin TextBox TxtCust
      Index = 4
      Left = 1380
      Top = 1050
      Width = 3645
      Height = 240
      TabIndex = 81
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
    Begin TextBox TxtCust
      Index = 1
      Left = 1380
      Top = 270
      Width = 3645
      Height = 240
      TabIndex = 69
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
    Begin TextBox TxtCust
      Index = 2
      Left = 1380
      Top = 525
      Width = 3645
      Height = 240
      TabIndex = 68
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
    Begin TextBox TxtCust
      Index = 3
      Left = 1380
      Top = 780
      Width = 3645
      Height = 240
      TabIndex = 67
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
    Begin TextBox TxtCust
      Index = 0
      Left = 1380
      Top = 15
      Width = 2245
      Height = 240
      TabIndex = 66
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Customer Name"
      Index = 23
      ForeColor = &HFF0000&
      Left = 15
      Top = 285
      Width = 1380
      Height = 225
      TabIndex = 73
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
      Caption = "Address1"
      Index = 20
      ForeColor = &HFF0000&
      Left = 15
      Top = 555
      Width = 825
      Height = 225
      TabIndex = 72
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
      Caption = "Address2"
      Index = 12
      ForeColor = &HFF0000&
      Left = 15
      Top = 810
      Width = 825
      Height = 225
      TabIndex = 71
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
      Caption = "Phone No"
      Index = 6
      ForeColor = &HFF0000&
      Left = 30
      Top = 30
      Width = 810
      Height = 225
      TabIndex = 70
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
  End
  Begin TextBox Txt
    Index = 19
    Left = 10935
    Top = 2445
    Width = 1185
    Height = 255
    TabIndex = 62
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGCat
    Left = 15
    Top = 4545
    Width = 8750
    Height = 2355
    Visible = 0   'False
    TabIndex = 11
  End
  Begin TextBox Txt
    Index = 18
    Left = 8325
    Top = 90
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 55
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
  Begin TextBox TxtPer
    Index = 1
    Left = 10245
    Top = 1620
    Width = 510
    Height = 240
    Visible = 0   'False
    TabIndex = 8
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
    Left = 10935
    Top = 1620
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 9
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
    Index = 1
    Left = 1545
    Top = 1005
    Width = 3600
    Height = 240
    TabIndex = 3
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 17
    Left = 6705
    Top = 1260
    Width = 2625
    Height = 240
    Visible = 0   'False
    TabIndex = 51
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
  Begin CheckBox ChkNCBOOKING
    Caption = "NC Booking"
    BackColor = &HDEE6FE&
    ForeColor = &H40&
    Left = 5505
    Top = 990
    Width = 1395
    Height = 240
    TabIndex = 50
    Alignment = 1 'Right Justify
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
  Begin DataGrid DGNCType
    Left = 2370
    Top = 1710
    Width = 4155
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin TextBox Txt
    Index = 16
    Left = 4440
    Top = 495
    Width = 705
    Height = 240
    Enabled = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 15
    Left = 10935
    Top = 2175
    Width = 1185
    Height = 255
    TabIndex = 23
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 14
    Left = 1665
    Top = 9750
    Width = 555
    Height = 240
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 5
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
    Index = 13
    Left = 1665
    Top = 9495
    Width = 555
    Height = 240
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 5
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
    Index = 12
    Left = 1665
    Top = 10515
    Width = 1650
    Height = 255
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 11
    Left = 1665
    Top = 10260
    Width = 1650
    Height = 240
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
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
    Left = 4440
    Top = 9285
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
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
    Index = 9
    Left = 1665
    Top = 10005
    Width = 1650
    Height = 240
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
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
    Index = 8
    Left = 2385
    Top = 9750
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 7
    Left = 2385
    Top = 9495
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    Left = 1665
    Top = 9240
    Width = 1650
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdAdvance
    Caption = "&Advance Rect."
    Left = 9390
    Top = 5415
    Width = 2400
    Height = 600
    TabIndex = 12
    TabStop = 0   'False
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
    Index = 5
    Left = 3435
    Top = 9825
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    Left = 3435
    Top = 9555
    Width = 2805
    Height = 240
    Visible = 0   'False
    TabIndex = 33
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 735
    Top = 2100
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 1545
    Top = 495
    Width = 705
    Height = 240
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    Left = 1545
    Top = 1260
    Width = 1575
    Height = 240
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 3
    Left = 1545
    Top = 750
    Width = 1575
    Height = 240
    TabIndex = 1
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
  Begin MaskEdBox TxtMask
    Index = 1
    Left = 4440
    Top = 1260
    Width = 705
    Height = 240
    TabIndex = 5
  End
  Begin MaskEdBox TxtMask
    Index = 0
    Left = 4440
    Top = 750
    Width = 705
    Height = 240
    TabIndex = 2
  End
  Begin MSHFlexGrid FGrid
    Left = 15
    Top = 1605
    Width = 8750
    Height = 5520
    TabIndex = 6
  End
  Begin MSFlexGrid FGPoint
    Left = 150
    Top = 2775
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 35
  End
  Begin TextBox TxtGt1
    Index = 1
    Left = 3315
    Top = 4290
    Width = 1185
    Height = 240
    Enabled = 0   'False
    TabIndex = 56
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
  Begin TextBox TxtPer1
    Index = 1
    Left = 2655
    Top = 4305
    Width = 435
    Height = 240
    Visible = 0   'False
    TabIndex = 57
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
  Begin Label LblColor
    Caption = "Item Cancelled"
    Index = 1
    BackColor = &H8080FF&
    Left = 1425
    Top = 7200
    Width = 1335
    Height = 285
    TabIndex = 79
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Caption = "(Order Booking)"
    ForeColor = &HFF0000&
    Left = 8970
    Top = 840
    Width = 2055
    Height = 330
    TabIndex = 76
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Times New Roman"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Remark :"
    Index = 24
    ForeColor = &HFF0000&
    Left = 630
    Top = 7545
    Width = 765
    Height = 225
    TabIndex = 75
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
  Begin Label LblColor
    Caption = "Item Billed"
    Index = 0
    BackColor = &HC0E0FF&
    Left = 60
    Top = 7200
    Width = 1335
    Height = 285
    TabIndex = 64
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNetAmtPayable
    Caption = "Net Amt. Payable :"
    ForeColor = &HFF0000&
    Left = 8895
    Top = 2460
    Width = 1815
    Height = 240
    TabIndex = 63
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblCap
    Caption = "Total"
    Index = 1
    ForeColor = &HFF0000&
    Left = 8895
    Top = 1620
    Width = 465
    Height = 240
    TabIndex = 13
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
    ForeColor = &H0&
    Left = 10770
    Top = 1620
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 60
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
    Left = 8895
    Top = 1935
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 54
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
  Begin Label Label1
    Caption = "Customer Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 105
    Top = 990
    Width = 1380
    Height = 225
    TabIndex = 53
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
    Caption = "NC Category"
    Index = 22
    ForeColor = &H40&
    Left = 5520
    Top = 1260
    Width = 1050
    Height = 225
    Visible = 0   'False
    TabIndex = 52
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
    Caption = "Token No."
    Index = 21
    ForeColor = &HFF0000&
    Left = 3525
    Top = 480
    Width = 840
    Height = 225
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0FFFF&
    ForeColor = &H80&
    Left = 9900
    Top = 450
    Width = 195
    Height = 390
    TabIndex = 46
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblAdvRecd
    Caption = "Advance Recd. :"
    ForeColor = &HFF0000&
    Left = 8895
    Top = 2190
    Width = 1590
    Height = 240
    TabIndex = 45
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "%"
    Index = 19
    ForeColor = &H0&
    Left = 2220
    Top = 9750
    Width = 180
    Height = 210
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
  Begin Label Label1
    Caption = "%"
    Index = 18
    ForeColor = &H0&
    Left = 2220
    Top = 9510
    Width = 180
    Height = 210
    Visible = 0   'False
    TabIndex = 43
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
    Caption = "Net Amount :"
    Index = 17
    ForeColor = &H0&
    Left = 345
    Top = 10530
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 42
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
    Caption = "Round Off :"
    Index = 16
    ForeColor = &H0&
    Left = 645
    Top = 10275
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 41
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
  Begin Label Label1
    Caption = "Deduction :"
    Index = 15
    ForeColor = &H0&
    Left = 3450
    Top = 9255
    Width = 960
    Height = 210
    Visible = 0   'False
    TabIndex = 40
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
  Begin Label Label1
    Caption = "Addition :"
    Index = 13
    ForeColor = &H0&
    Left = 810
    Top = 10020
    Width = 825
    Height = 240
    Visible = 0   'False
    TabIndex = 39
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
  Begin Label Label1
    Caption = "Tax :"
    Index = 11
    ForeColor = &H0&
    Left = 1185
    Top = 9750
    Width = 450
    Height = 240
    Visible = 0   'False
    TabIndex = 38
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
  Begin Label Label1
    Caption = "Discount :"
    Index = 9
    ForeColor = &H0&
    Left = 780
    Top = 9495
    Width = 855
    Height = 240
    Visible = 0   'False
    TabIndex = 37
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
  Begin Label Label1
    Caption = "Total :"
    Index = 8
    ForeColor = &H0&
    Left = 1065
    Top = 9240
    Width = 570
    Height = 240
    Visible = 0   'False
    TabIndex = 36
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
  Begin Label Label1
    Caption = "From"
    Index = 5
    ForeColor = &H0&
    Left = 7770
    Top = 4065
    Width = 450
    Height = 240
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
  Begin Label Label1
    Caption = "From"
    Index = 3
    ForeColor = &H0&
    Left = 7770
    Top = 4065
    Width = 450
    Height = 240
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
  Begin Label Label1
    Caption = "From"
    Index = 2
    ForeColor = &H0&
    Left = 7770
    Top = 4065
    Width = 765
    Height = 420
    TabIndex = 30
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
  Begin Label Label1
    Caption = "Time "
    Index = 1
    ForeColor = &HFF0000&
    Left = 3900
    Top = 750
    Width = 465
    Height = 225
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
  Begin Label Label1
    Caption = "Time"
    Index = 14
    ForeColor = &HFF0000&
    Left = 3900
    Top = 1245
    Width = 420
    Height = 225
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
    Caption = "Booking No."
    Index = 4
    ForeColor = &HFF0000&
    Left = 105
    Top = 480
    Width = 1005
    Height = 225
    TabIndex = 26
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
    Caption = "Booking Date"
    Index = 7
    ForeColor = &HFF0000&
    Left = 105
    Top = 735
    Width = 1125
    Height = 225
    TabIndex = 25
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
    Caption = "Delivery Date"
    Index = 10
    ForeColor = &HFF0000&
    Left = 105
    Top = 1245
    Width = 1110
    Height = 225
    TabIndex = 24
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
  Begin Label LblCap1
    Caption = "Total"
    Index = 1
    ForeColor = &H0&
    Left = 1170
    Top = 4335
    Width = 465
    Height = 240
    TabIndex = 61
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
  Begin Label LblAt1
    Caption = "%"
    Index = 1
    ForeColor = &H0&
    Left = 3120
    Top = 4305
    Width = 180
    Height = 240
    Visible = 0   'False
    TabIndex = 59
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
  Begin Label LblDummy1
    Caption = "Label2"
    Index = 1
    Left = 1125
    Top = 4635
    Width = 750
    Height = 210
    Visible = 0   'False
    TabIndex = 58
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
End

Attribute VB_Name = "RsBookingEntry"

Private global_168 As Long
Private global_80 As Double
Private global_96 As Integer
Private global_156 As Integer

Public Sub TxtMask_UnknownEvent_0(Index As Integer) 'EE7D04
  'Data Table: 56D390
  Dim var_8C As MaskEdBox
  Dim var_A0 As Variant
  Dim var_C8 As MaskEdBox
  loc_EE7C52: Set var_88 = Me.TxtMask
  loc_EE7C58: Call 0.Method_TxtMask_UnknownEvent_00 (Index)
  loc_EE7C66: Proc_6_74_E226B0(var_8C)
  loc_EE7C75: Call Proc_169_87_E5CB38(var_A0)
  loc_EE7C90: Set var_88 = Me.TxtMask
  loc_EE7C96: Call 0.Method_TxtMask_UnknownEvent_00 (Index, var_8C)
  loc_EE7C9E: var_8C.SelStart = 0
  loc_EE7CB4: Set var_88 = Me.TxtMask
  loc_EE7CBA: Call 0.Method_TxtMask_UnknownEvent_00 (Index, var_8C)
  loc_EE7CDD: Set var_90 = Me.TxtMask
  loc_EE7CE3: Call 0.Method_TxtMask_UnknownEvent_00 (Index, var_C8)
  loc_EE7CEB: var_C8.SelLength = CVar(Len(CStr(var_8C.Text)))
  loc_EE7D01: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_1(Index As Integer) 'E487D4
  'Data Table: 56D390
  loc_E487B2: Set var_88 = Me.TxtMask
  loc_E487B8: Call 0.Method_TxtMask_UnknownEvent_10 (Index)
  loc_E487C6: Proc_6_73_E22704(var_8C)
  loc_E487D2: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_8(arg_C, arg_10) 'EDE8E4
  'Data Table: 56D390
  Dim var_86 As Integer
  Dim var_90 As MaskEdBox
  Dim arg_10 As Integer
  loc_EDE83B: var_86 = arg_C
  loc_EDE846: If Not (var_86 = CInt(0)) Then
  loc_EDE851:   If (var_86 = CInt(1)) Then
  loc_EDE854:   End If
  loc_EDE85E:   Set var_8C = Me.TxtMask
  loc_EDE864:   Call 0.Method_TxtMask_UnknownEvent_80 (arg_C, var_90)
  loc_EDE889:   If (CStr(var_90.defaultText) > "24:00") Then
  loc_EDE8A5:     MsgBox("Invalid Time", 0, var_D4, var_F4, var_114)
  loc_EDE8B7:     arg_10 = &HFF
  loc_EDE8C4:     Set var_8C = Me.TxtMask
  loc_EDE8CA:     Call 0.Method_TxtMask_UnknownEvent_80 (arg_C, var_90)
  loc_EDE8E1:     Exit Sub
  loc_EDE8E2:   End If
  loc_EDE8E2: End If
  loc_EDE8E2: Exit Sub
End Sub

Public Sub TxtMask_UnknownEvent_B(arg_C, arg_10, arg_14) 'F9C774
  'Data Table: 56D390
  Dim var_86 As Integer
  Dim var_9C As DataGrid
  Dim var_98 As Variant
  loc_F9C5F3: var_86 = arg_10
  loc_F9C600: If (CLng(arg_10) = &H1B) Then
  loc_F9C606:   Call Proc_169_87_E5CB38(var_98)
  loc_F9C60E:   Exit Sub
  loc_F9C60F: End If
  loc_F9C62B: If (CBool(Me.DGItem.Visible) = 0) Then
  loc_F9C64C:   If (((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) And (arg_C <> CInt(&HC))) Then
  loc_F9C655:     Proc_6_75_E527CC(arg_10, arg_14)
  loc_F9C65A:   End If
  loc_F9C65E:   Set var_9C = Me.TopCtrl1
  loc_F9C664:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_86)
  loc_F9C686:   If ((CStr() = "Add") And (arg_C <> CInt(3))) Then
  loc_F9C69E:     If ((CLng(arg_10) = &H26) Or (CLng(arg_10) = &HD)) Then
  loc_F9C6A7:       Proc_6_76_E52838(arg_10)
  loc_F9C6AC:     End If
  loc_F9C6AF:   Else
  loc_F9C6C4:     If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F9C6CD:       Proc_6_75_E527CC(arg_10, arg_14)
  loc_F9C6D2:     End If
  loc_F9C6D2:   End If
  loc_F9C6D6:   Set var_9C = Me.TopCtrl1
  loc_F9C6DC:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(arg_14)
  loc_F9C6FE:   If ((CStr() = "Edit") And (arg_C <> CInt(4))) Then
  loc_F9C716:     If ((CLng(arg_10) = &H26) Or (CLng(arg_10) = &HD)) Then
  loc_F9C71F:       Proc_6_76_E52838(arg_10)
  loc_F9C724:     End If
  loc_F9C727:   Else
  loc_F9C73C:     If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_F9C745:       Proc_6_75_E527CC(arg_10, arg_14)
  loc_F9C74A:     End If
  loc_F9C74A:   End If
  loc_F9C768:   If (((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) And (arg_C = CInt(&HC))) Then
  loc_F9C76E:     Call Proc_169_91_FE9DB8(arg_C)
  loc_F9C773:   End If
  loc_F9C773: End If
  loc_F9C773: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A471C
  'Data Table: 56D390
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A4467: Me.DGItem.Visible = False
  loc_10A4486: If (Me.RecordCount > 0) Then
  loc_10A44C3:   Set var_B4 = Me.TxtGrid
  loc_10A44C9:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A44D1:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A44FA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A4502:   var_EC = CVar(CLng(3)) 'Long
  loc_10A4535:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A453D:   Set var_B8 = Me.FGrid
  loc_10A4543:   LateIdCallSt
  loc_10A4572:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A457A:   var_EC = CVar(CLng(1)) 'Long
  loc_10A45AD:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A45B5:   Set var_B8 = Me.FGrid
  loc_10A45BB:   LateIdCallSt
  loc_10A45EA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A45F2:   var_EC = CVar(CLng(2)) 'Long
  loc_10A4625:   var_11C = CVar(CStr(Me.Fields.Item("DisplayCode").Value)) 'String
  loc_10A462D:   Set var_B8 = Me.FGrid
  loc_10A4633:   LateIdCallSt
  loc_10A4662:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A466A:   var_EC = CVar(CLng(0)) 'Long
  loc_10A468C:   var_B0 = Me.Fields.Item("SNo")
  loc_10A469D:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A46A5:   Set var_B8 = Me.FGrid
  loc_10A46AB:   LateIdCallSt
  loc_10A46C7: End If
  loc_10A46D3: Set var_A8 = Me.TxtGrid
  loc_10A46D9: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A46E1: var_B8 = var_B0.Visible
  loc_10A46F3: If (var_12E = &HFF) Then
  loc_10A46FF:   Set var_A8 = Me.TxtGrid
  loc_10A4705:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_EC)
  loc_10A470D:   var_B0.SetFocus
  loc_10A4719: End If
  loc_10A4719: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E387D4
  'Data Table: 56D390
  loc_E387C8: If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_E387CB:   Call DGNCType_UnknownEvent_9()
  loc_E387D0: End If
  loc_E387D0: Exit Sub
End Sub

Private Sub Form_Load() '1237CE8
  'Data Table: 56D390
  Dim var_94 As Variant
  Dim var_B8 As Variant
  Dim var_90 As String
  Dim unk_56D39B As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_130 As String
  loc_12377D6: global_160 = "ORDER"
  loc_1237811: global_124 = global_52
  loc_1237825: Me.LblRest.Caption = global_116
  loc_1237834: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), Proc_96_17_FDBD80(global_52, global_112, global_116))
  loc_123784C: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1237867: Me.FGridFinish.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_123787C: Set var_94 = Me.Txt
  loc_1237882: Call 0.Method_Form_Load0 (CInt(&HC), var_B8, &HFF)
  loc_123788A: var_B8.Locked = 0
  loc_12378A3: Set var_94 = Me.Txt
  loc_12378A9: Call 0.Method_Form_Load0 (CInt(8), var_B8)
  loc_12378B1: var_B8.Locked = True
  loc_12378D0: Call 0.Method_Form_Load0 (CInt(7), var_B8)
  loc_12378D8: var_B8.Locked = True
  loc_123790B: unk_56D39B.Execute "Select AutoSplit,KOtYn from depart where Code='" & global_52 & "'", var_CC, -1
  loc_1237916: Set var_88 = Me.Txt
  loc_123793A: If (var_88.RecordCount > 0) Then
  loc_123794C:   var_94 = var_88.Fields
  loc_123796B:   global_104 = Proc_6_38_E68A98(CVar(var_94.Item("AutoSplit")), var_94)
  loc_1237987:   var_94 = var_88.Fields
  loc_1237997:   var_CC = CVar(var_94.Item("KotYN")) 'Address
  loc_12379A6:   global_108 = Proc_6_38_E68A98(var_CC)
  loc_12379B3: End If
  loc_12379D7: unk_56D39B.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_CC, -1
  loc_12379E8: Set global_128 = var_94
  loc_1237A07: Set global_100 = New 
  loc_1237A19: Me.Recordset15.CursorLocation = 3
  loc_1237A8D: If CBool((Me.Fields.Item("MultiBillGeneration").Value = "Yes") And (global_104 = "Yes") And (global_108 = "N")) Then
  loc_1237AB1:   var_90 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax,I.ConvRatio,D.ShortName From (((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join UnitMast U On U.Name=I.Unit And U.LogSite_Code=I.LogSite_Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No' And I.RestCode In (Select AssociatedRestCode From Depart1 Where DepartCode='" & global_52
  loc_1237AD0:   Me.Open CVar(var_90 & "' And LOGSITE_CODE='" & MemVar_1F92078 & "' And IsNull(AssociatedRestCode,'')<>'') Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1237AE4: Else
  loc_1237B05:   var_90 = "Select I.Code,I.Name as Name,IC.RoundOff,I.RateEdit,I.Kitchen,I.Unit,IsNull(U.PriceType,0) As PriceType,IG.Name as ItemGroup,DispCode,IC.taxStru,D.Name as OutLetName,D.Code as OutLetCode,I.DiscApp,I.SChrgApp,I.RateIncTax,I.ConvRatio,D.ShortName From ((ItemMast I left join ItemGrp IG on I.ItemGroup=IG.Code)Left Join Depart D On D.Code=I.RestCode)Left join ItemCatMast IC on IC.Code=I.ItemCatCode LEFT Join UnitMast U On U.NAME=I.Unit Where I.Type='Finish' And I.ItemType<>'Store' And I.DispCode <>9999 and I.ActiveYN<>'No' And I.RestCode='" & global_52
  loc_1237B16:   Me.Open CVar(var_90 & "' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_1237B21: End If
  loc_1237B2A: CVarUnk
  loc_1237B2F: VerifyVarObj
  loc_1237B35: Set var_94 = Me.DGItem
  loc_1237B3B: LateIdStAd
  loc_1237B65: Me.DGItem.CursorLocation = 3
  loc_1237B9B: CVarUnk
  loc_1237BA0: VerifyVarObj
  loc_1237BA6: Set var_94 = Me.DGNCType
  loc_1237BAC: LateIdStAd
  loc_1237BD6: Me.DGNCType.CursorLocation = 3
  loc_1237BF9: var_90 = "Select P.Docid as SearchCode,P.DocID,P.Site_Code,P.LogSite_Code From PackingOrder P Inner Join Voucher_Type V On (P.VType= V.V_Type And P.LogSite_Code=V.LogSite_Code) Where v.Site_Code='" & MemVar_1F92070
  loc_1237C1C: var_130 = var_90 & "' and V.LogSite_Code='" & MemVar_1F92078 & "' and V.Ncat= 'ORDER' And P.Site_Code='" & MemVar_1F92070 & "' and P.RestCode='"
  loc_1237C37: ELECT NCType,NcPer FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F92044), 3 CVar(var_130 & global_52 & "' Order by Docid "), CVar(MemVar_1F92044), 3
  loc_1237C73: Call Proc_169_89_1005B7C(Proc_5_1_100CB50("INI", Me, New, 1, -1, Me, New, 1), -1, Me, global_100)
  loc_1237C8E: Set var_94 = Me
  loc_1237C94: Proc_6_23_DFBA28(var_94, 0, 0, 1)
  loc_1237CA5: Call 0.Method_arg_160 (var_94, -1)
  loc_1237CB3: Call 0.Method_arg_164 (var_94, 1)
  loc_1237CBB: Call Proc_169_86_13A65C0(-1)
  loc_1237CC0: Call Proc_169_85_105F9A8()
  loc_1237CD9: If (RsBookingEntry.OpenMode = 1) Then
  loc_1237CDC:   GoTo loc_1237CE4
  loc_1237CDF: End If
  loc_1237CDF: Call Proc_169_93_18AB3CC()
  loc_1237CE4: ' Referenced from: 1237CDC
  loc_1237CE4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29B70
  'Data Table: 56D390
  loc_E29B53: Set global_136 = Nothing
  loc_E29B65: Set global_128 = Nothing
  loc_E29B6C: Exit Sub
End Sub

Private Sub Form_Activate() '101AC08
  'Data Table: 56D390
  Dim var_D8 As Variant
  Dim var_9C As String
  Dim unk_56D39B As Connection15
  Dim var_C4 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Field20
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_EC As Variant
  loc_101AA1C: var_D8 = 0
  loc_101AA3C: var_9C = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_101AA4C: unk_56D39B.Execute var_9C & "'", var_C0, -1
  loc_101AA54: var_C4 = var_C4.Fields
  loc_101AA5C: var_D8 = var_C8.Item(var_C8)
  loc_101AA64: var_DC = var_DC.Value
  loc_101AA6C: var_10C = var_EC & var_EC 
  loc_101AA75: var_12C = var_10C & "' Order by Description" 
  loc_101AA83: unk_56D39B.Execute CStr(var_12C), "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE V_Type='", var_150
  loc_101AA8E: Set var_88 = var_154
  loc_101AAC6: If (var_88.RecordCount > 0) Then
  loc_101AAE3:   var_C8 = var_88.Fields.Item(0)
  loc_101AAF3:   var_98 = var_C8.Value 'Variant
  loc_101AB01: Else
  loc_101AB1A:   MsgBox("Point of Sale Not Configured for selected Restaurant", 0, var_EC, var_10C, var_12C)
  loc_101AB37:   Me.Global.Unload Me
  loc_101AB3F:   Exit Sub
  loc_101AB40: End If
  loc_101AB46: var_11C = 0
  loc_101AB6D: var_EC = "Select Count(*) From SundryType WHERE V_Type='" & var_98 & "'" 
  loc_101AB7B: unk_56D39B.Execute CStr(var_EC), var_10C, -1
  loc_101AB83: var_C4 = var_C4.Fields
  loc_101AB8B: var_11C = var_C8.Item(var_C8)
  loc_101AB93: var_DC = var_DC.Value
  loc_101ABBA: If (var_12C <= 0) Then
  loc_101ABD6:   MsgBox("Voucher wise Sundry not defined", 0, var_EC, var_10C, var_12C)
  loc_101ABF3:   Me.Global.Unload Me
  loc_101ABFB:   Exit Sub
  loc_101ABFC: End If
  loc_101AC01: Set var_88 = Nothing
  loc_101AC04: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2585C
  'Data Table: 56D390
  loc_E25841: If (global_132 = &HFF) Then
  loc_E25851:   Me.Global.Unload Me
  loc_E25859: End If
  loc_E25859: Exit Sub
  loc_E2585A: Get , ,  'get  bytes
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E38898
  'Data Table: 56D390
  loc_E3886C: On Error Goto loc_E38890
  loc_E38887: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3888F: Exit Sub
  loc_E38890: ' Referenced from: E3886C
  loc_E38890: Proc_6_60_E62BC4(Shift)
  loc_E38895: Exit Sub
End Sub

Private Sub Form_Paint() '128ECC4
  'Data Table: 56D390
  Dim var_8C As Variant
  Dim var_9C As String
  Dim unk_56D39B As Connection15
  Dim var_94 As Recordset15
  Dim var_B8 As Variant
  Dim var_88 As Variant
  Dim var_C8 As Variant
  Dim var_90 As String
  Dim var_E4 As TextBox
  Dim var_CC As Variant
  Dim var_144 As Variant
  Dim var_124 As Variant
  Dim var_16C As TextBox
  Dim Me As Recordset15
  Dim var_114 As Variant
  Dim var_E0 As Variant
  loc_128E71E: Set var_88 = Me.Txt
  loc_128E724: Call 0.Method_Form_Paint0 (CInt(2), var_8C)
  loc_128E72C: var_90 = var_8C.Text
  loc_128E743: If (var_90 = vbNullString) Then
  loc_128E746:   Exit Sub
  loc_128E747: End If
  loc_128E765: Set var_88 = Me.Txt
  loc_128E76B: Call 0.Method_Form_Paint0 (CInt(2), var_8C, var_90, "Select AdvAmt,NetAmt From PackingOrder P Where DocID='")
  loc_128E773: var_C8 = var_8C.Text
  loc_128E77C: var_9C = -1 & var_90
  loc_128E79D: unk_56D39B.Execute var_9C & "' And RestCode='" & global_52 & "'", var_CC, 
  loc_128E7A8: Set var_94 = var_CC
  loc_128E7D8: If (var_94.RecordCount > 0) Then
  loc_128E7FA:   var_C8 = CVar(var_94.Fields.Item("AdvAmt")) 'Address
  loc_128E801:   Proc_6_47_EF59D0(var_E0)
  loc_128E818:   Set var_CC = Me.Txt
  loc_128E81E:   Call 0.Method_Form_Paint0 (CInt(&HF), var_E4)
  loc_128E826:   var_E4.Text = CStr(var_E0)
  loc_128E864:   Proc_6_39_E7C810(var_E0, CVar(var_94.Fields.Item("NetAmt")))
  loc_128E878:   var_CC = var_94.Fields
  loc_128E88F:   Proc_6_39_E7C810(var_114, CVar(var_CC.Item("AdvAmt")))
  loc_128E8AF:   var_124 = (var_E0 - var_114)
  loc_128E8C5:   var_90 = CStr(Format(var_124, "0.00"))
  loc_128E8D4:   Set var_168 = Me.Txt
  loc_128E8DA:   Call 0.Method_Form_Paint0 (CInt(&H13), var_16C, var_90)
  loc_128E8E2:   var_16C.Text = 1
  loc_128E906: End If
  loc_128E923: var_8C = Me.Fields.Item("MultiBillGeneration")
  loc_128E92B: var_C8 = var_8C.Value
  loc_128E975: If CBool((var_C8 = "Yes") And (global_104 = "Yes") And (global_108 = "N")) Then
  loc_128E996:   Set var_88 = Me.Txt
  loc_128E99C:   Call 0.Method_Form_Paint0 (CInt(2), var_8C, var_90, "Select KotDocId,KotSno From SplitStock Where KotDocID='", var_C8)
  loc_128E9A4:   -1 = var_8C.Text
  loc_128E9CE:   unk_56D39B.Execute var_CC & var_90 & "' And RestCode='" & global_52 & "' Order By Sno", 1, var_C8
  loc_128E9D9:   Set var_94 = var_CC
  loc_128E9F8: Else
  loc_128EA16:   Set var_88 = Me.Txt
  loc_128EA1C:   Call 0.Method_Form_Paint0 (CInt(2), var_8C, var_90, "Select KotDocId,KotSno From Stock Where KotDocID='")
  loc_128EA24:   var_C8 = var_8C.Text
  loc_128EA2D:   var_9C = -1 & var_90
  loc_128EA4E:   unk_56D39B.Execute var_CC & var_90 & "' And RestCode='" & global_52 & "' Order By Sno", var_CC, 
  loc_128EA59:   Set var_94 = var_CC
  loc_128EA75:   ' Referenced from:   128EBAD
  loc_128EA75: End If
  loc_128EA84: If Not(var_94.EOF) Then
  loc_128EAAC:   For var_182 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_182 'Integer
  loc_128EAB6:     var_B8 = CVar(CLng(var_96)) 'Long
  loc_128EABE:     var_144 = CVar(CLng(0)) 'Long
  loc_128EAF8:     var_8C = var_94.Fields
  loc_128EB2E:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(CStr(var_8C.Item("kotSNo").Value))) Then
  loc_128EB31:       GoTo loc_128EB3C
  loc_128EB34:     End If
  loc_128EB37:   Next var_182 'Integer
  loc_128EB3C:   ' Referenced from: 128EB31
  loc_128EB5A:   If (CLng(var_96) <> CLng(Me.FGrid.Rows)) Then
  loc_128EB70:     Set var_88 = Me.LblColor
  loc_128EB76:     Call 0.Method_Form_Paint0 (0, var_8C)
  loc_128EB7E:     var_D0 = var_8C.BackColor
  loc_128EB95:     Proc_96_0_E6BE98(Me.FGrid, var_96)
  loc_128EBA5:   End If
  loc_128EBA8:   var_94.MoveNext
  loc_128EBAD:   GoTo loc_128EA75
  loc_128EBB0: End If
  loc_128EBD5: For var_19C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_19C 'Integer
  loc_128EBDF:   var_B8 = CVar(CLng(var_96)) 'Long
  loc_128EBE7:   var_144 = CVar(CLng(&HA)) 'Long
  loc_128EC2E:   Set var_8C = Me.FGrid
  loc_128EC68:   If CBool(CVar(CLng(&HC)) And (CStr(var_8C.TextMatrix)) <> vbNullString)) Then
  loc_128EC7E:     Set var_88 = Me.LblColor
  loc_128EC84:     Call 0.Method_Form_Paint0 (1, var_8C, var_D0, CVar(CLng(var_96)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Yes"))
  loc_128EC8C:     var_144 = var_8C.BackColor
  loc_128ECA3:     Proc_96_0_E6BE98(Me.FGrid, var_96, var_D0)
  loc_128ECB3:   End If
  loc_128ECB6: Next var_19C 'Integer
  loc_128ECC0: Set var_94 = Nothing
  loc_128ECC3: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EACB74
  'Data Table: 56D390
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_BC As TextBox
  loc_EACAEE: var_98 = Me.FGrid.BackColorSel
  loc_EACB07: If (CDbl(CLng(var_98)) = CDbl(global_68)) Then
  loc_EACB1D:   Me.FGrid.Col = 2
  loc_EACB25: End If
  loc_EACB38: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EACB4B: Set var_88 = Me.TxtGrid
  loc_EACB51: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EACB59: var_BC.Visible = False
  loc_EACB68: Call Proc_169_87_E5CB38(var_98)
  loc_EACB70: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E67B38
  'Data Table: 56D390
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67AF4: Set var_88 = Me.TxtGrid
  loc_E67AFA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E67B14: If (var_8C.Visible = 0) Then
  loc_E67B2D:   Me.FGrid.BackColorSel = CVar(CLng(global_68))
  loc_E67B35: End If
  loc_E67B35: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFFA6C
  'Data Table: 56D390
  loc_DFFA64: Call Proc_169_84_E98B60()
  loc_DFFA69: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '1385EAC
  'Data Table: 56D390
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim Me As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_11C As Variant
  Dim var_198 As Double
  Dim var_15C As Integer
  Dim unk_56D39B As Connection15
  Dim var_148 As Variant
  Dim var_14C As Variant
  Dim var_160 As Field20
  Dim var_F2 As Integer
  Dim arg_C As Integer
  Dim var_1A0 As Long
  Dim var_144 As String
  loc_138564D: Call Proc_169_96_11D7488(CStr(Me.FGrid.TextMatrix)), CVar(CLng(1)))
  loc_1385667: Set var_88 = Me.TopCtrl1
  loc_138566D: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CVar(CLng(Me.FGrid.Row)))
  loc_13856B2: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_13856BB:   Call Form_KeyDown(arg_C, arg_10)
  loc_13856C0: End If
  loc_13856C4: Set var_88 = Me.TopCtrl1
  loc_13856CA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_13856E3: If (CStr() = "Browse") Then
  loc_13856E6:   Exit Sub
  loc_13856E7: End If
  loc_1385704: var_DC = Me.Fields.Item("MultiBillGeneration")
  loc_138572D: var_104 = (var_DC.Value = "Yes") And (global_104 = "Yes")
  loc_1385740: var_114 = var_104 And (global_108 = "N")
  loc_1385756: If CBool(var_114) Then
  loc_1385767:   Set var_88 = Me.Txt
  loc_138576D:   Call 0.Method_FGrid_UnknownEvent_A0 (CInt(2), var_DC)
  loc_1385775:   var_F0 = var_DC.Text
  loc_138577E:   Set var_11C = Me.FGrid
  loc_1385784:   var_98 = var_11C.Row
  loc_138578D:   var_A8 = CVar(CLng(var_98)) 'Long
  loc_1385795:   var_C8 = CVar(CLng(0)) 'Long
  loc_13857A4:   var_EC = Me.FGrid.TextMatrix)
  loc_13857C0:   var_15C = 0
  loc_1385800:   unk_56D39B.Execute "Select Count(*) from SplitStock where KOtDocId='" & var_F0 & "' And KotSno=" & CStr(Val(CStr(var_EC))) & vbNullString, var_104, -1
  loc_1385808:   var_148 = var_148.Fields
  loc_1385810:   var_15C = var_14C.Item(var_14C)
  loc_1385818:   var_160 = var_160.Value
  loc_1385823:   Proc_6_39_E7C810(var_170, var_114, var_114)
  loc_1385862:   If (var_170 > 0) Then
  loc_1385865:     Exit Sub
  loc_1385866:   End If
  loc_1385893:   Set var_88 = Me.Txt
  loc_1385899:   Call 0.Method_FGrid_UnknownEvent_A0 (CInt(2), var_DC, var_F0, "Select Max(KOTSno) from SplitStock where KOtDocId='", var_98, -1, var_11C)
  loc_13858BA:   unk_56D39B.Execute 0 & var_F0 & "'", var_148, var_EC
  loc_13858C2:   var_198 = var_11C.Fields
  loc_13858CA:   var_A8 = var_DC.Text.Item(var_C8)
  loc_13858D2:    = var_148.Value
  loc_13858DD:   Proc_6_39_E7C810(var_104)
  loc_13858E9:   Set var_14C = Me.FGrid
  loc_13858EF:   var_114 = var_14C.Row
  loc_1385922:   If (var_104 >= CVar(CLng(var_114))) Then
  loc_1385927:     var_F2 = &HFF
  loc_138592A:   End If
  loc_138592D: Else
  loc_138593B:   Set var_88 = Me.Txt
  loc_1385941:   Call 0.Method_FGrid_UnknownEvent_A0 (CInt(2), var_DC, var_F0)
  loc_1385949:   var_F2 = var_DC.Text
  loc_1385952:   Set var_11C = Me.FGrid
  loc_1385958:   var_98 = var_11C.Row
  loc_1385961:   var_A8 = CVar(CLng(var_98)) 'Long
  loc_1385969:   var_C8 = CVar(CLng(0)) 'Long
  loc_1385978:   var_EC = Me.FGrid.TextMatrix)
  loc_138598B:   var_198 = Val(CStr(var_EC))
  loc_1385994:   var_15C = 0
  loc_13859D4:   unk_56D39B.Execute "Select Count(*) from Stock where KOtDocId='" & var_F0 & "' And KotSno=" & CStr(var_198) & vbNullString, var_104, -1
  loc_13859DC:   var_148 = var_148.Fields
  loc_13859E4:   var_15C = var_14C.Item(var_14C)
  loc_13859EC:   var_160 = var_160.Value
  loc_13859F7:   Proc_6_39_E7C810(var_170, var_114, var_114, var_198)
  loc_1385A36:   If (var_170 > 0) Then
  loc_1385A39:     Exit Sub
  loc_1385A3A:   End If
  loc_1385A67:   Set var_88 = Me.Txt
  loc_1385A6D:   Call 0.Method_FGrid_UnknownEvent_A0 (CInt(2), var_DC, var_F0, "Select Max(KOTSno) from Stock where KOtDocId='", var_98, -1, var_11C)
  loc_1385A8E:   unk_56D39B.Execute 0 & var_F0 & "'", var_148, var_EC
  loc_1385A96:   var_C8 = var_11C.Fields
  loc_1385A9E:   var_EC = var_DC.Text.Item(var_A8)
  loc_1385AA6:    = var_148.Value
  loc_1385AB1:   Proc_6_39_E7C810(var_104)
  loc_1385AF6:   If (var_104 >= CVar(CLng(Me.FGrid.Row))) Then
  loc_1385AFB:     var_F2 = &HFF
  loc_1385AFE:   End If
  loc_1385AFE: End If
  loc_1385B1B: var_104 = Me.FGrid.Rows
  loc_1385B72: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_104) - 1))))) Then
  loc_1385B8B:   Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_1385B9B:   var_F0 = "+{Tab}"
  loc_1385BA1:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0, var_104)
  loc_1385BAB:   arg_C = 0
  loc_1385BB1: Else
  loc_1385BBB:   var_EC = Me.FGrid.Rows
  loc_1385C08:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_EC) - 1)))) Then
  loc_1385C21:     Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_1385C37:     Proc_303_0_FB9B68("{Tab}", 0, var_EC, arg_C)
  loc_1385C41:     arg_C = 0
  loc_1385C44:   End If
  loc_1385C44: End If
  loc_1385C4A: global_74 = arg_C
  loc_1385C70: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1385C94: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_1385CAA:   var_1A0 = CLng(Me.FGrid.Col)
  loc_1385CBA:   If (var_1A0 = CLng(3)) Then
  loc_1385CC3:     If (var_F2 = 0) Then
  loc_1385CD9:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1385CF1:       var_C8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1385CF6:       var_144 = vbNullString
  loc_1385D00:       Set var_11C = Me.FGrid
  loc_1385D06:       LateIdCallSt
  loc_1385D31:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1385D39:       var_C8 = CVar(CLng(1)) 'Long
  loc_1385D3E:       var_144 = vbNullString
  loc_1385D48:       Set var_DC = Me.FGrid
  loc_1385D4E:       LateIdCallSt
  loc_1385D73:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1385D7B:       var_C8 = CVar(CLng(6)) 'Long
  loc_1385D80:       var_144 = vbNullString
  loc_1385D8A:       Set var_DC = Me.FGrid
  loc_1385D90:       LateIdCallSt
  loc_1385DA2:     End If
  loc_1385DA5:   Else
  loc_1385DAC:     If Not (var_1A0 = CLng(2)) Then
  loc_1385DB6:       If (var_1A0 = CLng(5)) Then
  loc_1385DB9:       End If
  loc_1385DBF:       If (var_F2 = 0) Then
  loc_1385DD5:         var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1385DED:         var_C8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1385DF2:         var_144 = vbNullString
  loc_1385DFC:         Set var_11C = Me.FGrid
  loc_1385E02:         LateIdCallSt
  loc_1385E1A:       End If
  loc_1385E1D:     Else
  loc_1385E24:       If (var_1A0 = CLng(7)) Then
  loc_1385E27:         GoTo loc_1385E95
  loc_1385E2A:       End If
  loc_1385E31:       If (var_1A0 = CLng(&HA)) Then
  loc_1385E3A:         If (var_F2 = 0) Then
  loc_1385E50:           var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1385E68:           var_C8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1385E6D:           var_144 = vbNullString
  loc_1385E77:           Set var_11C = Me.FGrid
  loc_1385E7D:           LateIdCallSt
  loc_1385E95:           ' Referenced from:     1385E27
  loc_1385E95:         End If
  loc_1385E95:       End If
  loc_1385E95:     End If
  loc_1385E95:   End If
  loc_1385E95: End If
  loc_1385E9B: If (arg_C = &HD) Then
  loc_1385EA3:   global_72 = 0
  loc_1385EA6: End If
  loc_1385EA8: arg_C = 0
  loc_1385EAB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B '11BF694
  'Data Table: 56D390
  Dim var_9C As String
  Dim var_AC As Variant
  Dim Me As Variant
  Dim var_88 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_118 As MSHFlexGrid
  Dim var_194 As Double
  Dim var_158 As Integer
  Dim var_130 As String
  Dim unk_56D39B As Connection15
  Dim var_144 As Recordset15
  Dim var_148 As Fields15
  Dim var_15C As Field20
  Dim var_140 As String
  loc_11BF274: Set var_88 = Me.TopCtrl1
  loc_11BF27A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_11BF293: If (CStr() = "Browse") Then
  loc_11BF296:   Exit Sub
  loc_11BF297: End If
  loc_11BF2B4: var_B0 = Me.Fields.Item("MultiBillGeneration")
  loc_11BF2DD: var_F0 = (var_B0.Value = "Yes") And (global_104 = "Yes")
  loc_11BF2F0: var_110 = var_F0 And (global_108 = "N")
  loc_11BF306: If CBool(var_110) Then
  loc_11BF317:   Set var_88 = Me.Txt
  loc_11BF31D:   Call 0.Method_FGrid_UnknownEvent_B0 (CInt(2), var_B0)
  loc_11BF325:   var_9C = var_B0.Text
  loc_11BF33D:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BF345:   var_E0 = CVar(CLng(0)) 'Long
  loc_11BF370:   var_158 = 0
  loc_11BF3A7:   var_130 = "Select Count(*) from SplitStock where KOtDocId='" & var_9C & "' And KotSno=" & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & vbNullString
  loc_11BF3B0:   unk_56D39B.Execute var_130, var_F0, -1
  loc_11BF3B8:   var_144 = var_144.Fields
  loc_11BF3C0:   var_158 = var_148.Item(var_148)
  loc_11BF3C8:   var_15C = var_15C.Value
  loc_11BF3D3:   Proc_6_39_E7C810(var_16C, var_110, var_110)
  loc_11BF412:   If (var_16C > 0) Then
  loc_11BF415:     Exit Sub
  loc_11BF416:   End If
  loc_11BF419: Else
  loc_11BF427:   Set var_88 = Me.Txt
  loc_11BF42D:   Call 0.Method_FGrid_UnknownEvent_B0 (CInt(2), var_B0, var_9C)
  loc_11BF435:   var_194 = var_B0.Text
  loc_11BF44D:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BF455:   var_E0 = CVar(CLng(0)) 'Long
  loc_11BF477:   var_194 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_11BF480:   var_158 = 0
  loc_11BF4C0:   unk_56D39B.Execute "Select Count(*) from Stock where KOtDocId='" & var_9C & "' And KotSno=" & CStr(var_194) & vbNullString, var_F0, -1
  loc_11BF4C8:   var_144 = var_144.Fields
  loc_11BF4D0:   var_158 = var_148.Item(var_148)
  loc_11BF4D8:   var_15C = var_15C.Value
  loc_11BF4E3:   Proc_6_39_E7C810(var_16C, var_110, var_110, var_194)
  loc_11BF522:   If (var_16C > 0) Then
  loc_11BF525:     Exit Sub
  loc_11BF526:   End If
  loc_11BF526: End If
  loc_11BF543: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_11BF559:   var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BF571:   var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11BF5B7:   If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "YES") Then
  loc_11BF5CD:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BF5E5:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11BF5EA:     var_140 = "No"
  loc_11BF5F4:     Set var_118 = Me.FGrid
  loc_11BF5FA:     LateIdCallSt
  loc_11BF615:   Else
  loc_11BF628:     var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BF640:     var_E0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_11BF645:     var_140 = "Yes"
  loc_11BF64F:     Set var_118 = Me.FGrid
  loc_11BF655:     LateIdCallSt
  loc_11BF66D:   End If
  loc_11BF672:   Call Proc_169_70_19122FC(&H32, var_118, var_140, var_E0, var_AC, var_118, var_140, var_E0)
  loc_11BF67A: Else
  loc_11BF683:   Call FGrid_UnknownEvent_C()
  loc_11BF68D:   global_72 = 0
  loc_11BF690: End If
  loc_11BF690: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '1426330
  'Data Table: 56D390
  Dim var_A0 As String
  Dim var_B0 As Variant
  Dim Me As Variant
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_11C As Variant
  Dim var_9C As Variant
  Dim var_120 As Variant
  Dim var_D4 As Variant
  Dim var_198 As Double
  Dim var_15C As Integer
  Dim unk_56D39B As Connection15
  Dim var_148 As Variant
  Dim var_14C As Variant
  Dim var_160 As Field20
  Dim var_86 As Integer
  Dim var_19C As Long
  Dim var_1A6 As Integer
  Dim var_144 As Variant
  loc_14258AC: Set var_8C = Me.TopCtrl1
  loc_14258B2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_14258CB: If (CStr() = "Browse") Then
  loc_14258CE:   Exit Sub
  loc_14258CF: End If
  loc_14258EC: var_B4 = Me.Fields.Item("MultiBillGeneration")
  loc_1425915: var_F4 = (var_B4.Value = "Yes") And (global_104 = "Yes")
  loc_1425928: var_114 = var_F4 And (global_108 = "N")
  loc_142593E: If CBool(var_114) Then
  loc_142594F:   Set var_8C = Me.Txt
  loc_1425955:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(2), var_B4)
  loc_142595D:   var_A0 = var_B4.Text
  loc_1425966:   Set var_11C = Me.FGrid
  loc_142596C:   var_9C = var_11C.Row
  loc_1425975:   var_B0 = CVar(CLng(var_9C)) 'Long
  loc_142597D:   var_E4 = CVar(CLng(0)) 'Long
  loc_142598C:   var_D4 = Me.FGrid.TextMatrix)
  loc_14259A8:   var_15C = 0
  loc_14259E8:   unk_56D39B.Execute "Select Count(*) from SplitStock where KOtDocId='" & var_A0 & "' And KotSno=" & CStr(Val(CStr(var_D4))) & vbNullString, var_F4, -1
  loc_14259F0:   var_148 = var_148.Fields
  loc_14259F8:   var_15C = var_14C.Item(var_14C)
  loc_1425A00:   var_160 = var_160.Value
  loc_1425A0B:   Proc_6_39_E7C810(var_170, var_114, var_114)
  loc_1425A4A:   If (var_170 > 0) Then
  loc_1425A4D:     Exit Sub
  loc_1425A4E:   End If
  loc_1425A7B:   Set var_8C = Me.Txt
  loc_1425A81:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(2), var_B4, var_A0, "Select Max(KOTSno) from SplitStock where KOtDocId='", var_9C, -1, var_11C)
  loc_1425AA2:   unk_56D39B.Execute 0 & var_A0 & "'", var_148, var_D4
  loc_1425AAA:   var_198 = var_11C.Fields
  loc_1425AB2:   var_B0 = var_B4.Text.Item(var_E4)
  loc_1425ABA:    = var_148.Value
  loc_1425AC5:   Proc_6_39_E7C810(var_F4)
  loc_1425AD1:   Set var_14C = Me.FGrid
  loc_1425AD7:   var_114 = var_14C.Row
  loc_1425B0A:   If (var_F4 >= CVar(CLng(var_114))) Then
  loc_1425B0F:     var_86 = &HFF
  loc_1425B12:   End If
  loc_1425B15: Else
  loc_1425B23:   Set var_8C = Me.Txt
  loc_1425B29:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(2), var_B4, var_A0)
  loc_1425B31:   var_86 = var_B4.Text
  loc_1425B3A:   Set var_11C = Me.FGrid
  loc_1425B40:   var_9C = var_11C.Row
  loc_1425B49:   var_B0 = CVar(CLng(var_9C)) 'Long
  loc_1425B51:   var_E4 = CVar(CLng(0)) 'Long
  loc_1425B60:   var_D4 = Me.FGrid.TextMatrix)
  loc_1425B73:   var_198 = Val(CStr(var_D4))
  loc_1425B7C:   var_15C = 0
  loc_1425BBC:   unk_56D39B.Execute "Select Count(*) from Stock where KOtDocId='" & var_A0 & "' And KotSno=" & CStr(var_198) & vbNullString, var_F4, -1
  loc_1425BC4:   var_148 = var_148.Fields
  loc_1425BCC:   var_15C = var_14C.Item(var_14C)
  loc_1425BD4:   var_160 = var_160.Value
  loc_1425BDF:   Proc_6_39_E7C810(var_170, var_114, var_114, var_198)
  loc_1425C1E:   If (var_170 > 0) Then
  loc_1425C21:     Exit Sub
  loc_1425C22:   End If
  loc_1425C4F:   Set var_8C = Me.Txt
  loc_1425C55:   Call 0.Method_FGrid_UnknownEvent_C0 (CInt(2), var_B4, var_A0, "Select Max(KOTSno) from Stock where KOtDocId='", var_9C, -1, var_11C)
  loc_1425C76:   unk_56D39B.Execute 0 & var_A0 & "'", var_148, var_D4
  loc_1425C7E:   var_E4 = var_11C.Fields
  loc_1425C86:   var_D4 = var_B4.Text.Item(var_B0)
  loc_1425C8E:    = var_148.Value
  loc_1425C99:   Proc_6_39_E7C810(var_F4)
  loc_1425CDE:   If (var_F4 >= CVar(CLng(Me.FGrid.Row))) Then
  loc_1425CE3:     var_86 = &HFF
  loc_1425CE6:   End If
  loc_1425CE6: End If
  loc_1425CF9: var_19C = CLng(Me.FGrid.Col)
  loc_1425D09: If (var_19C = CLng(2)) Then
  loc_1425D12:   If (var_86 = 0) Then
  loc_1425D30:     If (((Index >= &H41) And (Index <= &H5A)) Or ((Index >= &H61) And (Index <= &H7A))) Then
  loc_1425D45:       Me.FGrid.Col = CVar(CLng(3))
  loc_1425D4D:     End If
  loc_1425D8B:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0)
  loc_1425D9D:   End If
  loc_1425DA0: Else
  loc_1425DA7:   If (var_19C = CLng(3)) Then
  loc_1425DB0:     If (var_86 = 0) Then
  loc_1425DB7:       Set var_120 = Me.FGrid
  loc_1425DDB:       var_A0 = CStr(Ucase(Chr(CLng(Index))))
  loc_1425DE4:       var_1A6 = Asc(var_A0)
  loc_1425E08:       Set var_B4 = var_120
  loc_1425E1A:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0, var_1A6, 0)
  loc_1425E42:       Set var_8C = Me.TxtGrid
  loc_1425E48:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0, var_1A6, Index)
  loc_1425E50:       0 = var_B4.Text
  loc_1425E69:       If (Len(var_A0) <= 1) Then
  loc_1425E78:         Set var_8C = Me.TxtGrid
  loc_1425E7E:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0)
  loc_1425E86:         var_19C = var_B4.Text
  loc_1425E97:         Set var_11C = Me.TxtGrid
  loc_1425E9D:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120, var_A0)
  loc_1425EA5:         var_120.Text = var_86
  loc_1425EB8:       End If
  loc_1425EC4:       Set var_8C = Me.TxtGrid
  loc_1425ECA:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1425EE4:       Set var_11C = Me.TxtGrid
  loc_1425EEA:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_1425EF2:       var_120.SelStart = Len(var_B4.Text)
  loc_1425F05:     End If
  loc_1425F08:   Else
  loc_1425F0F:     If (var_19C = CLng(5)) Then
  loc_1425F16:       Set var_120 = Me.FGrid
  loc_1425F3A:       var_A0 = CStr(Ucase(Chr(CLng(Index))))
  loc_1425F67:       Set var_B4 = var_120
  loc_1425F79:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1425FA1:       Set var_8C = Me.TxtGrid
  loc_1425FA7:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0, Asc(var_A0))
  loc_1425FAF:       0 = var_B4.Text
  loc_1425FC8:       If (Len(var_A0) <= 1) Then
  loc_1425FD7:         Set var_8C = Me.TxtGrid
  loc_1425FDD:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0)
  loc_1425FE5:         var_1A6 = var_B4.Text
  loc_1425FF6:         Set var_11C = Me.TxtGrid
  loc_1425FFC:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_1426004:         var_120.Text = var_A0
  loc_1426017:       End If
  loc_1426023:       Set var_8C = Me.TxtGrid
  loc_1426029:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1426043:       Set var_11C = Me.TxtGrid
  loc_1426049:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_1426051:       var_120.SelStart = Len(var_B4.Text)
  loc_1426067:     Else
  loc_142606E:       If (var_19C = CLng(6)) Then
  loc_1426075:         Set var_120 = Me.FGrid
  loc_1426099:         var_A0 = CStr(Ucase(Chr(CLng(Index))))
  loc_14260C6:         Set var_B4 = var_120
  loc_14260D8:         Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_1426100:         Set var_8C = Me.TxtGrid
  loc_1426106:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0, Asc(var_A0))
  loc_142610E:         0 = var_B4.Text
  loc_1426127:         If (Len(var_A0) <= 1) Then
  loc_1426136:           Set var_8C = Me.TxtGrid
  loc_142613C:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_A0)
  loc_1426144:           var_1A6 = var_B4.Text
  loc_1426155:           Set var_11C = Me.TxtGrid
  loc_142615B:           Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_1426163:           var_120.Text = var_A0
  loc_1426176:         End If
  loc_1426182:         Set var_8C = Me.TxtGrid
  loc_1426188:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_14261A2:         Set var_11C = Me.TxtGrid
  loc_14261A8:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_120)
  loc_14261B0:         var_120.SelStart = Len(var_B4.Text)
  loc_14261C6:       Else
  loc_14261CD:         If (var_19C = CLng(7)) Then
  loc_14261E3:           var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14261EB:           var_E4 = CVar(CLng(&H17)) 'Long
  loc_1426205:           var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_1426220:           var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1426268:           If (CVar(CLng(&H17)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_14262A9:             Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index)
  loc_14262BB:           End If
  loc_14262BE:         Else
  loc_14262C5:           If (var_19C = CLng(&HA)) Then
  loc_1426306:             Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, Index, 0)
  loc_1426318:           End If
  loc_1426318:         End If
  loc_1426318:       End If
  loc_1426318:     End If
  loc_1426318:   End If
  loc_1426318: End If
  loc_1426322: If (CLng(Index) <> &HD) Then
  loc_142632A:   global_72 = &HFF
  loc_142632D: End If
  loc_142632D: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) '1187208
  'Data Table: 56D390
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim unk_56D39B As Connection15
  Dim var_124 As Fields15
  Dim var_128 As Field20
  Dim var_D4 As Variant
  loc_1186E40: Set var_8C = Me.TopCtrl1
  loc_1186E46: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1186E4E: var_A0 = CStr()
  loc_1186E5F: If (var_A0 = "Browse") Then
  loc_1186E62:   Exit Sub
  loc_1186E63: End If
  loc_1186E80: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_1186E83:   Exit Sub
  loc_1186E84: End If
  loc_1186E95: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_1186EB7:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1186ED7:     var_B4 = Me.Fields.Item("MultiBillGeneration")
  loc_1186EDF:     var_9C = var_B4.Value
  loc_1186F00:     var_F4 = (var_9C = "Yes") And (global_104 = "Yes")
  loc_1186F29:     If CBool(var_F4 And (global_108 = "N")) Then
  loc_1186F59:       Set var_8C = Me.Txt
  loc_1186F5F:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(2), var_B4, var_A0, "Select Max(KOTSno) from SplitStock where KOtDocId='", var_9C, -1)
  loc_1186F80:       unk_56D39B.Execute var_124 & var_A0 & "'", 0, var_128
  loc_1186F88:       var_D4 = var_B4.Text.Fields
  loc_1186F90:        = var_124.Item()
  loc_1186F98:        = var_128.Value
  loc_1186FA3:       Proc_6_39_E7C810(var_F4)
  loc_1186FE8:       If (var_F4 >= CVar(CLng(Me.FGrid.Row))) Then
  loc_1186FEB:         Exit Sub
  loc_1186FEC:       End If
  loc_1186FEF:     Else
  loc_118701C:       Set var_8C = Me.Txt
  loc_1187022:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(2), var_B4, var_A0, "Select Max(KOTSno) from Stock where KOtDocId='", var_9C, -1)
  loc_1187043:       unk_56D39B.Execute var_124 & var_A0 & "'", 0, var_128
  loc_1187053:        = var_124.Item(var_B4.Text.Fields)
  loc_118705B:        = var_128.Value
  loc_1187066:       Proc_6_39_E7C810(var_F4)
  loc_1187078:       var_114 = Me.FGrid.Row
  loc_11870AB:       If (var_F4 >= CVar(CLng(var_114))) Then
  loc_11870AE:         Exit Sub
  loc_11870AF:       End If
  loc_11870AF:     End If
  loc_11870E6:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1187108:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_118711E:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1187127:         Set var_B4 = Me.FGrid
  loc_1187142:       Else
  loc_1187155:         Me.FGrid.Rows = 1
  loc_1187172:         var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_118717A:         Set var_B4 = Me.FGrid
  loc_11871A9:         Me.FGrid.FixedRows = 1
  loc_11871B1:       End If
  loc_11871B1:     End If
  loc_11871B4:   Else
  loc_11871BF:     var_D4 = "Delete Module"
  loc_11871D5:     MsgBox("No Entries To Delete", &H10, var_D4, var_F4, var_114)
  loc_11871E5:   End If
  loc_11871E9:   Set var_8C = Me.FGrid
  loc_11871FF:   Call Proc_169_70_19122FC(&H32, FGrid.DispID_8001, FGrid.DispID_10000, var_D4)
  loc_1187204: End If
  loc_1187204: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E537F8
  'Data Table: 56D390
  Dim var_9C As TextBox
  loc_E537C7: Call Proc_169_87_E5CB38(var_94)
  loc_E537DA: Set var_98 = Me.TxtGrid
  loc_E537E0: Call 0.Method_FGrid_UnknownEvent_150 (0, var_9C)
  loc_E537E8: var_9C.Visible = False
  loc_E537F4: Exit Sub
End Sub

Private Sub CmdAdvance_Click() '1071E24
  'Data Table: 56D390
  Dim var_A8 As String
  Dim unk_56D39B As Connection15
  Dim var_88 As Fields15
  Dim var_C8 As Field20
  Dim var_98 As Variant
  loc_1071BAC: Set var_88 = Me.TopCtrl1
  loc_1071BB2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1071BCB: If (CStr() <> "Browse") Then
  loc_1071BCE:   Exit Sub
  loc_1071BCF: End If
  loc_1071BEA: var_A8 = "Select V_Type from Voucher_Type Where Ncat='PADV' And LOGSITE_CODE='" & MemVar_1F92078 & "' And RestCode='"
  loc_1071C04: unk_56D39B.Execute var_A8 & global_52 & "'", var_98, -1
  loc_1071C0F: Set var_A4 = var_88
  loc_1071C3A: If (Me.Recordset15.RecordCount > 0) Then
  loc_1071C5A:   var_C8 = Me.Recordset15.Fields.Item("V_Type")
  loc_1071C74:   POSAdvanceDepDialog.AdvType = CStr(var_C8.Value)
  loc_1071C89: Else
  loc_1071C8F:   Call 0.Method_arg_50 (var_A8)
  loc_1071CB6:   MsgBox(CVar("Advance Voucher Type Not Exists." & vbCrLf & "Plz. Contact to your S/w vendor"), &H40, CVar(var_A8), var_E8, var_108)
  loc_1071CCE:   Set var_A0 = Nothing
  loc_1071CD6:   Set var_A4 = Nothing
  loc_1071CD9:   Exit Sub
  loc_1071CDA: End If
  loc_1071CE5: POSAdvanceDepDialog.OpenMode = 1
  loc_1071CF5: POSAdvanceDepDialog.OpenType = 5
  loc_1071D08: Set var_88 = Me.Txt
  loc_1071D0E: Call 0.Method_CmdAdvance_Click0 (CInt(0), var_C8)
  loc_1071D2E: POSAdvanceDepDialog.IdNo = CStr(Val(POSAdvanceDepDialog.Txt.Text))
  loc_1071D4F: Set var_88 = Me.Txt
  loc_1071D55: Call 0.Method_CmdAdvance_Click0 (CInt(2), var_C8)
  loc_1071D6B: POSAdvanceDepDialog.pDocId = POSAdvanceDepDialog.Txt.Text
  loc_1071D88: Set var_88 = Me.Txt
  loc_1071D8E: Call 0.Method_CmdAdvance_Click0 (CInt(1), var_C8)
  loc_1071DA4: POSAdvanceDepDialog.PTableOrRoomNo = POSAdvanceDepDialog.Txt.Text
  loc_1071DC1: Set var_88 = Me.Txt
  loc_1071DC7: Call 0.Method_CmdAdvance_Click0 (CInt(&HC), var_C8)
  loc_1071DE7: POSAdvanceDepDialog.PBillAmt = CStr(Val(POSAdvanceDepDialog.Txt.Text))
  loc_1071E06: Call POSAdvanceDepDialog.global_52Put(global_52)
  loc_1071E1E: Call 0.Method_arg_2B0 (1, var_F8)
  loc_1071E23: Exit Sub
End Sub

Private Sub TxtGt_GotFocus(Index As Integer) 'EDE9E0
  'Data Table: 56D390
  Dim var_8C As TextBox
  Dim var_A8 As TextBox
  loc_EDE93A: Set var_88 = Me.TxtGt
  loc_EDE940: Call 0.Method_TxtGt_GotFocus0 (Index)
  loc_EDE94E: Proc_6_74_E226B0(var_8C)
  loc_EDE95D: Call Proc_169_87_E5CB38(var_A0)
  loc_EDE974: Set var_88 = Me.TxtGt
  loc_EDE97A: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_EDE982: var_8C.SelStart = 0
  loc_EDE99B: Set var_88 = Me.TxtGt
  loc_EDE9A1: Call 0.Method_TxtGt_GotFocus0 (Index, var_8C)
  loc_EDE9BC: Set var_90 = Me.TxtGt
  loc_EDE9C2: Call 0.Method_TxtGt_GotFocus0 (Index, var_A8)
  loc_EDE9CA: var_A8.SelLength = Len(var_8C.Text)
  loc_EDE9DD: Exit Sub
End Sub

Private Sub TxtGt_KeyDown(KeyCode As Integer, Shift As Integer) 'E59668
  'Data Table: 56D390
  loc_E59635: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E5963E:   Proc_6_75_E527CC(Shift)
  loc_E59643: End If
  loc_E59658: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E59661:   Proc_6_76_E52838(Shift, arg_14)
  loc_E59666: End If
  loc_E59666: Exit Sub
End Sub

Private Sub TxtGt_KeyPress(KeyAscii As Integer) 'F7B040
  'Data Table: 56D390
  Dim var_8C As Variant
  Dim arg_10 As Integer
  Dim var_FC As TextBox
  loc_F7AF12: Set var_88 = Me.TxtGt
  loc_F7AF18: Call 0.Method_TxtGt_KeyPress0 (KeyAscii)
  loc_F7AF33: Proc_6_42_129A86C(var_8C, arg_10, 8)
  loc_F7AF3F: On Error Goto loc_F7B03E
  loc_F7AF4F: Set var_88 = Me.LblCap
  loc_F7AF55: Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7AF5D: 2 = var_8C.Tag
  loc_F7AF94: If (Trim(CVar(var_98)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_F7AF9D:   If (arg_10 = &H2D) Then
  loc_F7AFA2:     arg_10 = 0
  loc_F7AFA5:   End If
  loc_F7AFB2:   Set var_88 = Me.TxtGt
  loc_F7AFB8:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_8C, var_98)
  loc_F7AFC0:   arg_10 = var_8C.Text
  loc_F7B010:   Set var_90 = Me.TxtPer
  loc_F7B016:   Call 0.Method_TxtGt_KeyPress0 (KeyAscii, var_FC, CStr(Format(CVar(((Val(var_98) * CDbl(&H64)) / global_80)), "0.00")), 1)
  loc_F7B01E:   var_FC.Text = 1
  loc_F7B03E:   ' Referenced from: F7AF3F
  loc_F7B03E: End If
  loc_F7B03E: Exit Sub
End Sub

Private Sub TxtGt_LostFocus(Index As Integer) 'E4828C
  'Data Table: 56D390
  loc_E4826A: Set var_88 = Me.TxtGt
  loc_E48270: Call 0.Method_TxtGt_LostFocus0 (Index)
  loc_E4827E: Proc_6_73_E22704(var_8C)
  loc_E4828A: Exit Sub
End Sub

Private Sub TxtGt_Validate(Cancel As Boolean) 'ECC84C
  'Data Table: 56D390
  Dim var_90 As Variant
  Dim arg_10 As Integer
  loc_ECC7AE: Call Proc_169_70_19122FC(Cancel)
  loc_ECC7B3: On Error Goto loc_ECC84A
  loc_ECC7C3: Set var_8C = Me.LblCap
  loc_ECC7C9: Call 0.Method_TxtGt_Validate0 (Cancel, var_90)
  loc_ECC808: If (Trim(CVar(var_90.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_ECC818:   Set var_8C = Me.TxtPer
  loc_ECC81E:   Call 0.Method_TxtGt_Validate0 (Cancel, var_90)
  loc_ECC842:   If (CDbl(Val(var_90.Text)) > CDbl(&H64)) Then
  loc_ECC847:     arg_10 = &HFF
  loc_ECC84A:     ' Referenced from: ECC7B3
  loc_ECC84A:   End If
  loc_ECC84A: End If
  loc_ECC84A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '117F46C
  'Data Table: 56D390
  Dim var_8C As String
  Dim var_98 As Variant
  Dim var_A4 As String
  Dim unk_56D39B As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_D8 As TextBox
  Dim var_D4 As TextBox
  Dim var_CC As Variant
  Dim var_F0 As Variant
  loc_117F0AC: On Error Goto loc_117F466
  loc_117F0D2: Call Proc_169_89_1005B7C(Proc_5_1_100CB50("ADD", Me))
  loc_117F0DD: Call Proc_169_88_FCBBF8(global_56)
  loc_117F0F5: Set var_90 = Me.Txt
  loc_117F0FB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_98)
  loc_117F103: var_98.Text = CStr(MemVar_1F920EC)
  loc_117F125: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98)
  loc_117F12D: var_98.Enabled = False
  loc_117F165: var_A4 = "Select Description,V_Type From Voucher_Type Where RestCode='" & global_52 & "' and logSite_Code='" & MemVar_1F92078 & "' and Site_Code='"
  loc_117F17C: unk_56D39B.Execute var_A4 & MemVar_1F92070 & "' and NCat='ORDER'", var_CC, -1
  loc_117F187: Set var_88 = Me.Txt
  loc_117F1B3: If (var_88.RecordCount > 0) Then
  loc_117F1EF:   Set var_D4 = Me.Txt
  loc_117F1F5:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_D8)
  loc_117F1FD:   var_D8.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_117F22D:   var_98 = var_88.Fields.Item("V_Type")
  loc_117F24C:   Set var_D4 = Me.Txt
  loc_117F252:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_D8)
  loc_117F25A:   var_D8.Tag = CStr(var_98.Value)
  loc_117F270: End If
  loc_117F283: Set var_90 = Me.Txt
  loc_117F289: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_98)
  loc_117F291: var_98.Text = CStr(MemVar_1F920EC)
  loc_117F2AA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(Me.TopCtrl1)
  loc_117F2B2: var_8C = CStr()
  loc_117F2C8: Set var_98 = Me.Txt
  loc_117F2CE: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_D4)
  loc_117F2F7: If ((var_8C = "Add") And (var_D4.Text = vbNullString)) Then
  loc_117F300:   Call Proc_169_92_11832F8(MemVar_1F92044)
  loc_117F313:   Set var_90 = Me.Txt
  loc_117F319:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_98)
  loc_117F321:   var_98.Text = var_8C
  loc_117F330: End If
  loc_117F33E: Set var_90 = Me.Txt
  loc_117F344: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_98)
  loc_117F35A: Call Proc_169_69_1B17158(CDate(var_98.Text))
  loc_117F3A4: Set var_90 = Me.TxtMask
  loc_117F3AA: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_98, CVar(CStr(Format(Time, "hh:nn"))))
  loc_117F3B2: var_98.defaultText = 1
  loc_117F3DC: Me.FGrid.Rows = 1
  loc_117F3F9: var_F0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_117F401: Set var_98 = Me.FGrid
  loc_117F430: Me.FGrid.FixedRows = 1
  loc_117F443: Set var_90 = Me.Txt
  loc_117F449: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_98, FGrid.DispID_10000)
  loc_117F451: var_98.SetFocus
  loc_117F462: Set var_88 = Nothing
  loc_117F465: Exit Sub
  loc_117F466: ' Referenced from: 117F0AC
  loc_117F466: Proc_6_60_E62BC4(var_F0, 1)
  loc_117F46B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EDF970
  'Data Table: 56D390
  loc_EDF8BC: On Error Goto loc_EDF96A
  loc_EDF8DA: var_A4 = "Cancel ?"
  loc_EDF8F6: If (MsgBox(var_A4, 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EDF91C:   Call Proc_169_89_1005B7C(Proc_5_1_100CB50("INI", Me))
  loc_EDF927:   Call Proc_169_93_18AB3CC(global_56)
  loc_EDF92C: End If
  loc_EDF92F: Call Proc_169_87_E5CB38(var_A4)
  loc_EDF952: If (Me.FrFinish.Visible = &HFF) Then
  loc_EDF961:   Me.FrFinish.Visible = False
  loc_EDF969: End If
  loc_EDF969: Exit Sub
  loc_EDF96A: ' Referenced from: EDF8BC
  loc_EDF96A: Proc_6_60_E62BC4()
  loc_EDF96F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12FC858
  'Data Table: 56D390
  Dim var_A8 As Variant
  Dim unk_56D39B As Connection15
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_118 As Variant
  Dim var_AC As String
  loc_12FC184: On Error Goto loc_12FC809
  loc_12FC195: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_12FC198:   Exit Sub
  loc_12FC199: End If
  loc_12FC1A7: Set var_A4 = Me.Txt
  loc_12FC1AD: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(2), var_A8)
  loc_12FC1C0: var_B4 = "Delete"
  loc_12FC1D3: Call Proc_169_81_FCE804(global_160, var_A8.Text)
  loc_12FC1EC: If (var_B6 = 0) Then
  loc_12FC1EF:   Exit Sub
  loc_12FC1F0: End If
  loc_12FC227: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_118, var_138) = 6) Then
  loc_12FC233:   unk_56D39B.BeginTrans var_13C
  loc_12FC28E:   unk_56D39B.Execute CStr("Delete From PackingOrderDetail2 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12FC2D9:   var_170 = 0
  loc_12FC2EC:   var_168 = 0
  loc_12FC2F7:   var_164 = 0
  loc_12FC30A:   var_15C = 0
  loc_12FC315:   var_158 = 0
  loc_12FC328:   var_150 = 0
  loc_12FC371:   Proc_154_5_10E33A4(MemVar_1F92044, "PackingOrderDetail2", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FC3EF:   unk_56D39B.Execute CStr("Delete From PackingOrderDetail1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12FC43A:   var_170 = 0
  loc_12FC44D:   var_168 = 0
  loc_12FC458:   var_164 = 0
  loc_12FC46B:   var_15C = 0
  loc_12FC476:   var_158 = 0
  loc_12FC489:   var_150 = 0
  loc_12FC4D2:   Proc_154_5_10E33A4(MemVar_1F92044, "PackingOrderDetail1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FC550:   unk_56D39B.Execute CStr("Delete From PackingOrderDetail Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_12FC59B:   var_170 = 0
  loc_12FC5AE:   var_168 = 0
  loc_12FC5B9:   var_164 = 0
  loc_12FC5CC:   var_15C = 0
  loc_12FC5D7:   var_158 = 0
  loc_12FC5EA:   var_150 = 0
  loc_12FC633:   Proc_154_5_10E33A4(MemVar_1F92044, "PackingOrderDetail", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FC6A3:   var_118 = "Delete From PackingOrder Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12FC6B1:   unk_56D39B.Execute CStr(var_118), var_138, -1
  loc_12FC6FC:   var_170 = 0
  loc_12FC70F:   var_168 = 0
  loc_12FC71A:   var_164 = 0
  loc_12FC78B:   var_AC = "PackingOrder"
  loc_12FC794:   Proc_154_5_10E33A4(MemVar_1F92044, var_AC, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12FC7C2:   unk_56D39B.CommitTrans
  loc_12FC7D2:   Me.Requery -1
  loc_12FC7D7:   Call Proc_169_93_18AB3CC(0, 0, 0, 0)
  loc_12FC7F8:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_12FC800: End If
  loc_12FC805: Set var_98 = Nothing
  loc_12FC808: Exit Sub
  loc_12FC809: ' Referenced from: 12FC184
  loc_12FC80F: unk_56D39B.RollbackTrans
  loc_12FC81C: Set var_A4 = Err()
  loc_12FC822: Call 0.Method_arg_2C (var_AC, 0, var_164)
  loc_12FC843: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_118, var_138)
  loc_12FC856: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1014214
  'Data Table: 56D390
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_E4 As Variant
  loc_1013FFC: On Error Goto loc_101420E
  loc_101400D: Set var_88 = Me.Txt
  loc_1014013: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_8C)
  loc_1014026: var_98 = "Edit"
  loc_1014039: Call Proc_169_82_F2B7B4(global_160, var_8C.Text)
  loc_1014052: If (var_9A = 0) Then
  loc_1014055:   Exit Sub
  loc_1014056: End If
  loc_1014079: Call Proc_169_89_1005B7C(Proc_5_1_100CB50("EDIT", Me, global_56), var_98)
  loc_1014084: Call Proc_169_95_DFD560(var_9A)
  loc_1014096: Set var_88 = Me.Txt
  loc_101409C: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C)
  loc_10140A4: var_8C.Enabled = False
  loc_10140BD: Set var_88 = Me.Txt
  loc_10140C3: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_8C)
  loc_10140CB: var_8C.Enabled = False
  loc_10140E7: Set var_88 = Me.TxtMask
  loc_10140ED: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C)
  loc_10140F5: var_8C.Enabled = False
  loc_101410E: Set var_88 = Me.Txt
  loc_1014114: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_8C)
  loc_101411C: var_8C.Enabled = True
  loc_1014135: Set var_88 = Me.Txt
  loc_101413B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_8C)
  loc_1014143: var_8C.Enabled = True
  loc_101415C: Set var_88 = Me.Txt
  loc_1014162: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_8C)
  loc_101416A: var_8C.Enabled = False
  loc_1014184: Set var_88 = Me.Txt
  loc_101418A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H12), var_8C)
  loc_10141A0: Call Proc_169_69_1B17158(CDate(var_8C.Text))
  loc_10141BA: Set var_88 = Me.Txt
  loc_10141C0: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4))
  loc_10141C8: var_8C.SetFocus
  loc_10141E9: var_E4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10141F1: Set var_8C = Me.FGrid
  loc_101420D: Exit Sub
  loc_101420E: ' Referenced from: 1013FFC
  loc_101420E: Proc_6_60_E62BC4(FGrid.DispID_10000, var_E4)
  loc_1014213: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E23714
  'Data Table: 56D390
  loc_E236F4: On Error Goto loc_E2370C
  loc_E23704: Me.Global.Unload Me
  loc_E2370C: ' Referenced from: E236F4
  loc_E2370C: Proc_6_60_E62BC4()
  loc_E23711: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F12CE0
  'Data Table: 56D390
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_120 As String
  Dim MemVar_1F920E4 As String
  loc_F12C08: On Error Goto loc_F12CD8
  loc_F12C22: If (Me.RecordCount <= 0) Then
  loc_F12C2B:   var_B8 = "Information"
  loc_F12C46:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F12C56:   Exit Sub
  loc_F12C57: End If
  loc_F12C5E: var_10C = "SELECT  Distinct P.Docid AS SearchCode, V.Description AS BookingType, cast(P.VNo as Int) AS BookingNo, CAST(P.VDate AS VarChar(11)) AS BookingDate, " & "P.CustName AS CustomerName, PD.ContraDocID FROM  PackingOrder P INNER JOIN Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code AND V.Site_Code = '"
  loc_F12C81: var_120 = var_10C & MemVar_1F92070 & "' AND V.LogSite_Code = '" & MemVar_1F92078 & "' AND " & "V.Category IN ('ORDER') AND P.LogSite_Code = '"
  loc_F12C8F: MemVar_1F920E4 = var_120 & MemVar_1F92078 & "' INNER JOIN PackingOrderDetail PD ON P.Docid = PD.DocID WHERE  (PD.ContraDocID IS NOT NULL) OR (PD.ContraDocID = '') ORDER BY P.Docid, cast(P.VNo as Int)"
  loc_F12CAA: MemVar_1F92120 = Me
  loc_F12CB7: Proc_6_126_F1BCC0("1000,1000,1000,4000")
  loc_F12CD2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F12CD7: Exit Sub
  loc_F12CD8: ' Referenced from: F12C08
  loc_F12CD8: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F12CDD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32178
  'Data Table: 56D390
  loc_E32168: Proc_5_0_110649C(&HFF, Me)
  loc_E32170: Call Proc_169_93_18AB3CC(global_56)
  loc_E32175: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32058
  'Data Table: 56D390
  loc_E32048: Proc_5_0_110649C(&HFF, Me)
  loc_E32050: Call Proc_169_93_18AB3CC(global_56)
  loc_E32055: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E393D8
  'Data Table: 56D390
  loc_E393C8: Proc_5_0_110649C(&HFF, Me)
  loc_E393D0: Call Proc_169_93_18AB3CC(global_56)
  loc_E393D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E34758
  'Data Table: 56D390
  loc_E34748: Proc_5_0_110649C(&HFF, Me)
  loc_E34750: Call Proc_169_93_18AB3CC(global_56)
  loc_E34755: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'FAD474
  'Data Table: 56D390
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_56D39B As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Fields15
  Dim var_B4 As Variant
  Dim var_C0 As TextBox
  loc_FAD30C: var_90 = "Select OrderBookingPrintType from Enviro where LOGSite_code='" & MemVar_1F92078
  loc_FAD31C: unk_56D39B.Execute var_90 & "'", var_B4, -1
  loc_FAD327: Set var_88 = var_B8
  loc_FAD34B: If (var_88.RecordCount > 0) Then
  loc_FAD35D:   var_B8 = var_88.Fields
  loc_FAD365:   var_C0 = var_B8.Item("OrderBookingPrintType")
  loc_FAD385:   var_8C = CStr(Ucase(CVar(Proc_6_38_E68A98(CVar(var_C0)))))
  loc_FAD394: End If
  loc_FAD399: Set var_88 = Nothing
  loc_FAD3A4: If (var_8C = "W") Then
  loc_FAD3A7:   Call Proc_169_100_199E040(var_B8)
  loc_FAD3CA:   Set var_B8 = Me.Txt
  loc_FAD3D0:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_C0, var_90, "Update PackingOrder Set PrintedYN='Y' Where DocId='")
  loc_FAD3D8:   var_B4 = var_C0.Text
  loc_FAD3E1:   var_94 = -1 & var_90
  loc_FAD3F1:   unk_56D39B.Execute var_90 & "'" & "'", var_E8, 
  loc_FAD40E: Else
  loc_FAD40E:   Call Proc_169_83_1617B94()
  loc_FAD431:   Set var_B8 = Me.Txt
  loc_FAD437:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(2), var_C0, var_90, "Update PackingOrder Set PrintedYN='Y' Where DocId='")
  loc_FAD43F:   var_B4 = var_C0.Text
  loc_FAD448:   var_94 = -1 & var_90
  loc_FAD458:   unk_56D39B.Execute var_90 & "'" & "'", var_E8, 
  loc_FAD472: End If
  loc_FAD472: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B8F4
  'Data Table: 56D390
  Dim Me As Recordset15
  loc_E0B8EB: Me.Requery -1
  loc_E0B8F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '19EE444
  'Data Table: 56D390
  Dim var_11C As Variant
  Dim var_120 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_13C As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_1D0 As Variant
  Dim var_210 As Variant
  Dim var_128 As String
  Dim var_230 As Variant
  Dim var_15C As Variant
  Dim var_234 As String
  Dim unk_56D39B As Connection15
  Dim var_124 As Variant
  Dim var_23C As Variant
  Dim var_240 As Variant
  Dim Me As Recordset15
  Dim var_24C As Double
  Dim var_A4 As Variant
  Dim var_AC As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_B4 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Double
  Dim var_C8 As Variant
  Dim var_E0 As Double
  Dim var_E8 As Variant
  Dim var_100 As Double
  Dim var_D8 As Variant
  Dim var_F0 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_110 As Variant
  Dim var_8A As Variant
  Dim var_27C As Variant
  Dim var_88 As Variant
  Dim var_26C As String
  Dim var_294 As String
  Dim var_298 As String
  Dim var_2A0 As TextBox
  Dim var_2C8 As Variant
  Dim var_2E0 As Variant
  Dim var_318 As Variant
  Dim var_328 As Variant
  Dim var_360 As Variant
  Dim var_3A0 As Variant
  Dim var_4E0 As Variant
  Dim var_A74 As Double
  Dim var_5CC As String
  Dim var_98C As Variant
  Dim var_2BC As String
  Dim var_290 As Variant
  Dim var_300 As Variant
  Dim var_338 As Variant
  Dim var_348 As Variant
  Dim var_17C As Variant
  Dim var_358 As Variant
  Dim var_374 As Variant
  Dim var_1E0 As Variant
  Dim var_3C4 As Variant
  Dim var_3D4 As Variant
  Dim var_3F4 As Variant
  Dim var_414 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_464 As Variant
  Dim var_474 As Variant
  Dim var_4C4 As Variant
  Dim var_4D4 As Variant
  Dim var_514 As Variant
  Dim var_524 As Variant
  Dim var_564 As Variant
  Dim var_594 As Variant
  Dim var_65C As Variant
  Dim var_67C As Variant
  Dim var_6FC As Variant
  Dim var_794 As Variant
  Dim var_844 As Variant
  Dim var_89C As Variant
  Dim var_924 As Variant
  Dim var_9CC As Variant
  Dim var_A34 As Variant
  Dim var_B8 As Recordset15
  Dim var_2F0 As Variant
  Dim var_2A4 As MSHFlexGrid
  Dim var_2C0 As Variant
  Dim var_1290 As Double
  Dim var_2C4 As MSHFlexGrid
  Dim var_1298 As Double
  Dim var_12A0 As Double
  Dim var_2CC As MSHFlexGrid
  Dim var_314 As MSHFlexGrid
  Dim var_A94 As Variant
  Dim var_61C As Variant
  Dim var_12AC As Double
  Dim var_AF8 As Variant
  Dim var_B18 As Variant
  Dim var_35C As MSHFlexGrid
  Dim var_B5C As Variant
  Dim var_B7C As Variant
  Dim var_BAC As Variant
  Dim var_BCC As Variant
  Dim var_398 As MSHFlexGrid
  Dim var_BFC As Variant
  Dim var_C1C As Variant
  Dim var_39C As Variant
  Dim var_C4C As Variant
  Dim var_C6C As Variant
  Dim var_C9C As Variant
  Dim var_CBC As Variant
  Dim var_4D8 As Variant
  Dim var_CEC As Variant
  Dim var_4DC As MSHFlexGrid
  Dim var_D3C As Variant
  Dim var_D5C As Variant
  Dim var_DAC As Variant
  Dim var_5B8 As MSHFlexGrid
  Dim var_DDC As Variant
  Dim var_DFC As Variant
  Dim var_760 As MSHFlexGrid
  Dim var_E2C As Variant
  Dim var_E4C As Variant
  Dim var_764 As MSHFlexGrid
  Dim var_A68 As Variant
  Dim var_EB0 As Variant
  Dim var_ED0 As Variant
  Dim var_7B8 As MSHFlexGrid
  Dim var_F44 As Variant
  Dim var_F64 As Variant
  Dim var_7BC As Variant
  Dim var_FD8 As Variant
  Dim var_FF8 As Variant
  Dim var_810 As MSHFlexGrid
  Dim var_106C As Variant
  Dim var_814 As MSHFlexGrid
  Dim var_1120 As Variant
  Dim var_868 As MSHFlexGrid
  Dim var_11E4 As Variant
  Dim var_86C As MSHFlexGrid
  Dim var_364 As String
  Dim var_3A4 As String
  Dim var_584 As Variant
  Dim var_5C8 As Variant
  Dim var_784 As Variant
  Dim var_7DC As Variant
  Dim var_834 As Variant
  Dim var_8E4 As Variant
  Dim var_A14 As Variant
  Dim var_F14 As Variant
  Dim var_10D0 As Variant
  Dim var_1264 As Variant
  Dim var_2D0 As Variant
  Dim var_2AC As String
  loc_19EB463: Set var_11C = Me.Txt
  loc_19EB469: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_19EB492: If (Proc_6_27_EA565C(var_120, "Booking Date") = 0) Then
  loc_19EB495:   Exit Sub
  loc_19EB496: End If
  loc_19EB4A1: Set var_11C = Me.TxtMask
  loc_19EB4A7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_19EB4D0: If (Proc_6_27_EA565C(var_120, "Booking Time") = 0) Then
  loc_19EB4D3:   Exit Sub
  loc_19EB4D4: End If
  loc_19EB4DF: Set var_11C = Me.Txt
  loc_19EB4E5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_120)
  loc_19EB50E: If (Proc_6_27_EA565C(var_120, "Delivery Date") = 0) Then
  loc_19EB511:   Exit Sub
  loc_19EB512: End If
  loc_19EB51D: Set var_11C = Me.TxtMask
  loc_19EB523: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120)
  loc_19EB54C: If (Proc_6_27_EA565C(var_120, "Delivery Time") = 0) Then
  loc_19EB54F:   Exit Sub
  loc_19EB550: End If
  loc_19EB55B: Set var_11C = Me.Txt
  loc_19EB561: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120)
  loc_19EB58A: If (Proc_6_27_EA565C(var_120, "Customer Name") = 0) Then
  loc_19EB58D:   Exit Sub
  loc_19EB58E: End If
  loc_19EB59B: var_12A = Me.ChkNCBOOKING.Value
  loc_19EB5A9: If (var_12A = 1) Then
  loc_19EB5B7:   Set var_11C = Me.Txt
  loc_19EB5BD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_120)
  loc_19EB5E6:   If (Proc_6_27_EA565C(var_120, "NC Category") = 0) Then
  loc_19EB5E9:     Exit Sub
  loc_19EB5EA:   End If
  loc_19EB5EA: End If
  loc_19EB5ED: Call Proc_169_94_10BC7EC(var_12A)
  loc_19EB5F8: If (var_12A = 0) Then
  loc_19EB5FB:   Exit Sub
  loc_19EB5FC: End If
  loc_19EB608: Call Txt_Validate(CInt(0))
  loc_19EB618: Set var_11C = Me.TxtGrid
  loc_19EB61E: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_120, 0)
  loc_19EB626: var_120.Visible = True
  loc_19EB635: Call Proc_169_87_E5CB38(var_13C)
  loc_19EB658: If (Me.FrFinish.Visible = &HFF) Then
  loc_19EB667:   Me.FrFinish.Visible = False
  loc_19EB66F: End If
  loc_19EB66F: var_14C = 1
  loc_19EB678: var_16C = 1
  loc_19EB696: var_18C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19EB69C: var_19C = Trim(var_18C)
  loc_19EB6B8: If (var_19C = vbNullString) Then
  loc_19EB6D4:   MsgBox("Item Detail Required ", 0, var_18C, var_19C, var_1BC)
  loc_19EB6F7:   Me.FGrid.Row = 1
  loc_19EB703:   Set var_11C = Me.FGrid
  loc_19EB727:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_19EB72F:   Exit Sub
  loc_19EB730: End If
  loc_19EB755: For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_1C0 'Integer
  loc_19EB75F:   var_14C = CVar(CLng(var_92)) 'Long
  loc_19EB767:   var_16C = CVar(CLng(3)) 'Long
  loc_19EB781:   var_18C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19EB78F:   var_1AC = vbNullString
  loc_19EB79D:   var_1D0 = CVar(CLng(var_92)) 'Long
  loc_19EB7AE:   Set var_120 = Me.FGrid
  loc_19EB7D0:   var_230 = CVar(CLng(6)) And (CDbl(Val(CStr(var_120.TextMatrix)))) <> CDbl(0))
  loc_19EB7ED:   If CBool(var_230) Then
  loc_19EB809:     MsgBox("Item Name Required ", 0, var_18C, Trim(var_18C), var_1BC)
  loc_19EB82C:     Me.FGrid.Row = 1
  loc_19EB838:     Set var_11C = Me.FGrid
  loc_19EB85C:     Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_19EB864:     Exit Sub
  loc_19EB865:   End If
  loc_19EB868: Next var_1C0 'Integer
  loc_19EB87A: var_12A = Me.ChkNCBOOKING.Value
  loc_19EB88F: var_13C = "Y"
  loc_19EB8AB: var_114 = CStr(IIf((var_12A = 1), var_13C, "N"))
  loc_19EB8C0: Set var_11C = Me.TopCtrl1
  loc_19EB8C6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_19EB8CE: var_128 = CStr()
  loc_19EB8DF: If (var_128 = "Add") Then
  loc_19EB90F:   Set var_11C = Me.Txt
  loc_19EB915:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Select Count(*) From PackingOrder Where DocID='", var_13C, -1)
  loc_19EB926:   var_234 = var_23C & var_128
  loc_19EB936:   unk_56D39B.Execute var_234 & "'", 0, var_240
  loc_19EB946:    = var_23C.Item()
  loc_19EB94E:    = var_240.Value
  loc_19EB97B:   If (var_120.Text.Fields > 0) Then
  loc_19EB984:     Call Proc_169_92_11832F8(MemVar_1F92044)
  loc_19EB997:     Set var_11C = Me.Txt
  loc_19EB99D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19EB9A5:     var_120.Text = var_128
  loc_19EB9B4:     Exit Sub
  loc_19EB9B5:   End If
  loc_19EB9B8: Else
  loc_19EB9D5:   var_120 = Me.Fields.Item("DocID")
  loc_19EB9EC:   global_144 = CStr(var_120.Value)
  loc_19EB9FD: End If
  loc_19EBA22: For var_244 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_244 'Integer
  loc_19EBA2C:   var_14C = CVar(CLng(var_92)) 'Long
  loc_19EBA34:   var_16C = CVar(CLng(&H12)) 'Long
  loc_19EBA64:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) > CDbl(0)) Then
  loc_19EBA6B:     var_14C = CVar(CLng(var_92)) 'Long
  loc_19EBA73:     var_16C = CVar(CLng(9)) 'Long
  loc_19EBA9F:     var_A4 = (var_A4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19EBAAE:   Else
  loc_19EBAB2:     var_14C = CVar(CLng(var_92)) 'Long
  loc_19EBABA:     var_16C = CVar(CLng(9)) 'Long
  loc_19EBAE6:     var_AC = (var_AC + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19EBAF2:   End If
  loc_19EBAF5: Next var_244 'Integer
  loc_19EBB06: Set var_11C = Me.TxtGt
  loc_19EBB0C: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_12A, var_92)
  loc_19EBB17: For var_250 =  To var_12A: 1 = var_250 'Integer
  loc_19EBB57:   Set var_11C = Me.LblCap
  loc_19EBB5D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_234, CVar("Select IsNull(Max(Nature),'') from SundryMast Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Code='"), var_230, -1)
  loc_19EBB65:   var_124 = var_120.Tag
  loc_19EBB92:   unk_56D39B.Execute CStr(var_23C & Trim(CVar(var_234)) & "'"), 0, var_240
  loc_19EBBA2:    = var_23C.Item()
  loc_19EBBAA:    = var_240.Value
  loc_19EBBB7:   var_9C = Proc_6_38_E68A98(var_124.Fields)
  loc_19EBBE2:   var_264 = var_9C
  loc_19EBBED:   If (var_264 = "Addition") Then
  loc_19EBBFD:     Set var_11C = Me.TxtGt
  loc_19EBC03:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120)
  loc_19EBC0B:     var_128 = var_120.Text
  loc_19EBC22:     var_B4 = (var_B4 + Val(var_128))
  loc_19EBC3C:     Set var_11C = Me.TxtPer
  loc_19EBC42:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128)
  loc_19EBC4A:     var_B4 = var_120.Text
  loc_19EBC61:     var_D0 = (var_D0 + Val(var_128))
  loc_19EBC71:   Else
  loc_19EBC79:     If (var_264 = "Deduction") Then
  loc_19EBC89:       Set var_11C = Me.TxtGt
  loc_19EBC8F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128)
  loc_19EBC97:       var_D0 = var_120.Text
  loc_19EBCAE:       var_C0 = (var_C0 + Val(var_128))
  loc_19EBCC8:       Set var_11C = Me.TxtPer
  loc_19EBCCE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_C0)
  loc_19EBCD6:       var_24C = var_120.Text
  loc_19EBCED:       var_C8 = (var_C8 + Val(var_128))
  loc_19EBCFD:     Else
  loc_19EBD05:       If (var_264 = "Discount") Then
  loc_19EBD15:         Set var_11C = Me.TxtGt
  loc_19EBD1B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_C8)
  loc_19EBD23:         var_24C = var_120.Text
  loc_19EBD3A:         var_E0 = (var_E0 + Val(var_128))
  loc_19EBD54:         Set var_11C = Me.TxtPer
  loc_19EBD5A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_E0)
  loc_19EBD62:         var_24C = var_120.Text
  loc_19EBD79:         var_E8 = (var_E8 + Val(var_128))
  loc_19EBD89:       Else
  loc_19EBD91:         If (var_264 = "Luxury Tax") Then
  loc_19EBDA1:           Set var_11C = Me.TxtGt
  loc_19EBDA7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_E8)
  loc_19EBDAF:           var_24C = var_120.Text
  loc_19EBDC6:           var_100 = (var_100 + Val(var_128))
  loc_19EBDE0:           Set var_11C = Me.TxtPer
  loc_19EBDE6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_100)
  loc_19EBDEE:           var_24C = var_120.Text
  loc_19EBE05:           var_D8 = (var_D8 + Val(var_128))
  loc_19EBE15:         Else
  loc_19EBE1D:           If (var_264 = "Round Off") Then
  loc_19EBE2D:             Set var_11C = Me.TxtGt
  loc_19EBE33:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_D8)
  loc_19EBE3B:             var_24C = var_120.Text
  loc_19EBE52:             var_F0 = (var_F0 + Val(var_128))
  loc_19EBE6C:             Set var_11C = Me.TxtPer
  loc_19EBE72:             Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_F0)
  loc_19EBE7A:             var_24C = var_120.Text
  loc_19EBE91:             var_F8 = (var_F8 + Val(var_128))
  loc_19EBEA1:           Else
  loc_19EBEA9:             If (var_264 = "Sale Tax") Then
  loc_19EBEB9:               Set var_11C = Me.TxtGt
  loc_19EBEBF:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_F8)
  loc_19EBEC7:               var_24C = var_120.Text
  loc_19EBEDE:               var_100 = (var_100 + Val(var_128))
  loc_19EBEF8:               Set var_11C = Me.TxtPer
  loc_19EBEFE:               Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_100)
  loc_19EBF06:               var_24C = var_120.Text
  loc_19EBF1D:               var_D8 = (var_D8 + Val(var_128))
  loc_19EBF2D:             Else
  loc_19EBF35:               If (var_264 = "Service Charge") Then
  loc_19EBF45:                 Set var_11C = Me.TxtGt
  loc_19EBF4B:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_D8)
  loc_19EBF53:                 var_24C = var_120.Text
  loc_19EBF6A:                 var_108 = (var_108 + Val(var_128))
  loc_19EBF84:                 Set var_11C = Me.TxtPer
  loc_19EBF8A:                 Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_108)
  loc_19EBF92:                 var_24C = var_120.Text
  loc_19EBFA9:                 var_110 = (var_110 + Val(var_128))
  loc_19EBFB9:               Else
  loc_19EBFC1:                 If (var_264 = "Service Tax") Then
  loc_19EBFD1:                   Set var_11C = Me.TxtGt
  loc_19EBFD7:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_110)
  loc_19EBFDF:                   var_24C = var_120.Text
  loc_19EBFF6:                   var_100 = (var_100 + Val(var_128))
  loc_19EC010:                   Set var_11C = Me.TxtPer
  loc_19EC016:                   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120, var_128, var_100)
  loc_19EC01E:                   var_24C = var_120.Text
  loc_19EC035:                   var_D8 = (var_D8 + Val(var_128))
  loc_19EC042:                 End If
  loc_19EC042:               End If
  loc_19EC042:             End If
  loc_19EC042:           End If
  loc_19EC042:         End If
  loc_19EC042:       End If
  loc_19EC042:     End If
  loc_19EC042:   End If
  loc_19EC045: Next var_250 'Integer
  loc_19EC04C: var_8A = &HFF
  loc_19EC058: unk_56D39B.BeginTrans var_268
  loc_19EC061: Set var_11C = Me.TopCtrl1
  loc_19EC067: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_8A)
  loc_19EC06F: var_128 = CStr()
  loc_19EC080: If (var_128 = "Add") Then
  loc_19EC089:   Call Proc_169_92_11832F8(MemVar_1F92044)
  loc_19EC09C:   Set var_11C = Me.Txt
  loc_19EC0A2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19EC0AA:   var_120.Text = var_128
  loc_19EC0CD:   var_128 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_19EC0F3:   var_13C = Trim(global_164)
  loc_19EC116:   Set var_11C = Me.Txt
  loc_19EC11C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120, var_26C, CVar(var_128 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='") & var_13C & "' And VP.Date_From<=")
  loc_19EC124:   var_290 = var_120.Text
  loc_19EC132:   Proc_6_7_F25D88(var_230, CVar(var_26C), -1)
  loc_19EC143:   var_27C = var_124 & var_230 & " Order By VP.Date_From DESC" 
  loc_19EC151:   unk_56D39B.Execute CStr(var_27C), var_128, 
  loc_19EC15C:   Set var_88 = var_124
  loc_19EC19C:   If (var_88.RecordCount > 0) Then
  loc_19EC1AD:     Set var_11C = Me.Txt
  loc_19EC1B3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_120)
  loc_19EC1BB:     var_128 = var_120.Text
  loc_19EC203:     var_298 = "Update Depart Set CurTokenNo=" & CStr(Val(var_128)) & " Where Logsite_Code='" & MemVar_1F92078 & "'And code='" & global_52
  loc_19EC213:     unk_56D39B.Execute var_298 & "'", var_13C, -1
  loc_19EC245:     Set var_11C = Me.Txt
  loc_19EC24B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, var_128)
  loc_19EC253:     var_124 = var_120.Text
  loc_19EC260:     var_24C = Val(var_128)
  loc_19EC275:     var_124 = var_88.Fields
  loc_19EC27D:     var_23C = var_124.Item("V_Type")
  loc_19EC285:     var_13C = var_23C.Value
  loc_19EC2A1:     var_2A0 = var_88.Fields.Item("Date_From")
  loc_19EC2B0:     Proc_6_7_F25D88(var_230, CVar(var_2A0))
  loc_19EC2E3:     var_294 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_24C) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_19EC2F1:     var_18C = CVar(var_294 & MemVar_1F92078 & "') and V_Type='") 'String
  loc_19EC315:     unk_56D39B.Execute CStr(var_18C & var_13C & "' and Date_From=" & var_230), var_27C, -1
  loc_19EC34F:   End If
  loc_19EC352: Else
  loc_19EC370:   Set var_11C = Me.Txt
  loc_19EC376:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Delete From PackingOrder Where DocID='", var_13C)
  loc_19EC37E:   -1 = var_120.Text
  loc_19EC397:   unk_56D39B.Execute var_124 & var_128 & "'", var_2A4, var_24C
  loc_19EC3CF:   Set var_11C = Me.Txt
  loc_19EC3D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Delete From PackingOrderDetail Where DocID='")
  loc_19EC3DD:   var_13C = var_120.Text
  loc_19EC3E6:   var_234 = -1 & var_128
  loc_19EC3F6:   unk_56D39B.Execute var_124 & var_128 & "'", var_124, var_24C
  loc_19EC42E:   Set var_11C = Me.Txt
  loc_19EC434:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Delete From PackingOrderDetail1 Where DocID='")
  loc_19EC43C:   var_13C = var_120.Text
  loc_19EC445:   var_234 = -1 & var_128
  loc_19EC455:   unk_56D39B.Execute var_124 & var_128 & "'", var_124, 
  loc_19EC48D:   Set var_11C = Me.Txt
  loc_19EC493:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, "Delete From PackingOrderDetail2 Where DocID='")
  loc_19EC49B:   var_13C = var_120.Text
  loc_19EC4A4:   var_234 = -1 & var_128
  loc_19EC4B4:   unk_56D39B.Execute var_124 & var_128 & "'", var_124, 
  loc_19EC4CE: End If
  loc_19EC4DC: Set var_11C = Me.Txt
  loc_19EC4E2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19EC4FD: Set var_124 = Me.Txt
  loc_19EC503: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_23C)
  loc_19EC51E: Set var_240 = Me.Txt
  loc_19EC524: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A0)
  loc_19EC52C: var_2AC = var_2A0.Tag
  loc_19EC53C: Set var_2A4 = Me.Txt
  loc_19EC542: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3))
  loc_19EC551: Proc_6_7_F25D88(var_18C, CVar(var_2C0))
  loc_19EC561: Set var_2C4 = Me.TxtMask
  loc_19EC567: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2C8)
  loc_19EC56F: var_230 = var_2C8.defaultText
  loc_19EC583: Set var_2CC = Me.Txt
  loc_19EC589: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2D0)
  loc_19EC591: var_2E0 = CVar(var_2D0) 'Address
  loc_19EC598: Proc_6_7_F25D88(var_2F0, var_2E0)
  loc_19EC5A8: Set var_314 = Me.TxtMask
  loc_19EC5AE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_318)
  loc_19EC5B6: var_328 = var_318.defaultText
  loc_19EC5CD: Set var_35C = Me.Txt
  loc_19EC5D3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_360, var_364)
  loc_19EC5E7: Set var_398 = Me.TxtGt
  loc_19EC5ED: Call 0.Method_TopCtrl1_UnknownEvent_164 (var_12A, var_230)
  loc_19EC5FF: Set var_39C = Me.TxtGt
  loc_19EC605: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_12A, var_3A0)
  loc_19EC61A: var_24C = Val(var_3A0.Text)
  loc_19EC624: Set var_4D8 = Me.TxtGt
  loc_19EC62A: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_12C, var_24C)
  loc_19EC63C: Set var_4DC = Me.TxtGt
  loc_19EC642: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_12C, var_4E0)
  loc_19EC657: var_A74 = Val(var_4E0.Text)
  loc_19EC668: Proc_6_7_F25D88(var_584, Date)
  loc_19EC671: Set var_5B8 = Me.TopCtrl1
  loc_19EC677: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_A74)
  loc_19EC6B9: Set var_760 = Me.Txt
  loc_19EC6BF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_764)
  loc_19EC6CE: Proc_6_39_E7C810(var_784, CVar(var_764))
  loc_19EC6DE: Set var_7B8 = Me.TxtCust
  loc_19EC6E4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_7BC)
  loc_19EC6F3: Proc_6_17_EAA2B0(var_7DC, CVar(var_7BC))
  loc_19EC703: Set var_810 = Me.TxtCust
  loc_19EC709: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_814)
  loc_19EC718: Proc_6_17_EAA2B0(var_834, CVar(var_814))
  loc_19EC728: Set var_868 = Me.TxtCust
  loc_19EC72E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_86C)
  loc_19EC73D: Proc_6_17_EAA2B0(var_88C, CVar(var_86C))
  loc_19EC74D: Set var_8C0 = Me.Txt
  loc_19EC753: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_8C4)
  loc_19EC762: Proc_6_39_E7C810(var_8E4, CVar(var_8C4))
  loc_19EC772: Set var_958 = Me.Txt
  loc_19EC778: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_95C)
  loc_19EC7B9: Set var_9F0 = Me.Txt
  loc_19EC7BF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_9F4)
  loc_19EC7CE: Proc_6_17_EAA2B0(var_A14, CVar(var_9F4))
  loc_19EC7E7: var_234 = "Insert into PackingOrder (DocID,VNo,VPrefix,VType,Site_Code,VDate,VTime,DDate,DTime,CustName,Total,Discount,Tax,Addition,Deduction,RoundOff,NetAmt " & " ,U_Name,U_EntDt,U_AE,LogSite_Code,RestCode,DiscPer,TaxPer,AdvAmt,PhoneNo,Addr1,Addr2,TokenNo,NCBOOKING,NCTYPE,Remark)values ('"
  loc_19EC837: var_19C = CVar(var_234 & var_120.Text & "','" & var_23C.Text & "', " & "'" & global_152 & "','" & var_2AC & "','" & MemVar_1F92070 & "',") 'String
  loc_19EC846: var_210 = var_19C & var_18C & ",'" 
  loc_19EC872: var_338 = CVar(CStr(var_360.Text)) 'String
  loc_19EC885: var_374 = CVar(var_364) 'String
  loc_19EC8B0: var_3D4 = var_210 & CVar(CStr(var_230)) & "'," & var_2F0 & ",'" & var_338 & "','" & var_374 & "'," & CVar(var_24C) & "," & CVar(var_E0) 
  loc_19EC8D8: var_434 = var_3D4 & "," & CVar(var_100) & "," & CVar(var_B4) 
  loc_19EC91D: var_524 = var_434 & "," & CVar(var_C0) & "," & CVar(var_F0) & "," & CVar(var_A74) & ",'" 
  loc_19EC95A: var_67C = var_524 & CVar(MemVar_1F920C8) & "'," & var_584 & ",'" & IIf((CStr(var_5C8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) 
  loc_19EC9C8: var_844 = var_67C & "','" & CVar(global_52) & "'," & CVar(var_E8) & "," & CVar(var_D8) & "," & var_784 & "," & var_7DC & "," & var_834 
  loc_19ECA0B: var_9CC = var_844 & "," & var_88C & "," & var_8E4 & ",'" & CVar(var_114) & "','" & IIf((var_114 = "Y"), Trim(CVar(var_95C)), vbNullString) 
  loc_19ECA32: unk_56D39B.Execute CStr(var_9CC & "'," & var_A14 & ")"), var_A68, -1
  loc_19ECB5B: Set var_11C = Me.TxtCust
  loc_19ECB61: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_19ECB8A: If CBool(Trim(CVar(var_120)) <> vbNullString) Then
  loc_19ECBAA:   Set var_11C = Me.TxtCust
  loc_19ECBB0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, "Select count(*) from OrderPersonDetails Where PhoneNo='", var_210)
  loc_19ECBBF:   var_18C = Trim(CVar(var_120))
  loc_19ECBC7:   var_19C = -1 & var_18C 
  loc_19ECBDE:   unk_56D39B.Execute CStr(var_19C & "'"), var_124, var_A6C
  loc_19ECC1D:   var_120 = var_124.Fields.Item(0)
  loc_19ECC3F:   If (var_120.Value > 0) Then
  loc_19ECC5F:     Set var_11C = Me.TxtCust
  loc_19ECC65:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, "Update OrderPersonDetails Set CustName=", var_374)
  loc_19ECC74:     Proc_6_17_EAA2B0(var_18C, CVar(var_120), -1)
  loc_19ECC94:     Set var_124 = Me.TxtCust
  loc_19ECC9A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_23C)
  loc_19ECCA9:     Proc_6_17_EAA2B0(var_230, CVar(var_23C))
  loc_19ECCC9:     Set var_240 = Me.TxtCust
  loc_19ECCCF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2A0)
  loc_19ECCDE:     Proc_6_17_EAA2B0(var_2E0, CVar(var_2A0))
  loc_19ECCFE:     Set var_2A4 = Me.TxtCust
  loc_19ECD04:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2C0)
  loc_19ECD13:     var_328 = Trim(CVar(var_2C0))
  loc_19ECD1E:     Proc_6_17_EAA2B0(var_338, var_328)
  loc_19ECD2F:     var_358 = var_2C4 & var_18C & ",Addr1=" & var_230 & ",Addr2=" & var_2E0 & " Where Rtrim(Ltrim(PhoneNo))=" & var_338 & vbNullString 
  loc_19ECD3D:     unk_56D39B.Execute CStr(var_358), var_2C0, 
  loc_19ECD7C:   Else
  loc_19ECD99:     Set var_11C = Me.TxtCust
  loc_19ECD9F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120, "Insert Into OrderPersonDetails (PhoneNo,CustName,Addr1,Addr2, U_AE, U_EntDt, U_Name, Site_Code, LogSite_Code) values(")
  loc_19ECDAE:     Proc_6_17_EAA2B0(var_18C, CVar(var_120), var_434)
  loc_19ECDB6:     var_19C = -1 & var_18C 
  loc_19ECDCE:     Set var_124 = Me.TxtCust
  loc_19ECDD4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_23C)
  loc_19ECDE3:     Proc_6_17_EAA2B0(var_230, CVar(var_23C))
  loc_19ECE03:     Set var_240 = Me.TxtCust
  loc_19ECE09:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2A0)
  loc_19ECE18:     Proc_6_17_EAA2B0(var_2E0, CVar(var_2A0))
  loc_19ECE38:     Set var_2A4 = Me.TxtCust
  loc_19ECE3E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2C0)
  loc_19ECE4D:     Proc_6_17_EAA2B0(var_328, CVar(var_2C0))
  loc_19ECE70:     Proc_6_7_F25D88(var_374, Date)
  loc_19ECE94:     var_3C4 = var_2C4 & var_18C & "," & var_230 & "," & var_2E0 & "," & var_328 & ",'A'," & var_374 & ",'" & CVar(MemVar_1F920C8) & "','" 
  loc_19ECEB1:     var_3F4 = var_3C4 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_19ECEBE:     var_128 = CStr(var_3F4 & "')")
  loc_19ECEC8:     unk_56D39B.Execute var_128, var_2C4, 
  loc_19ECF16:   End If
  loc_19ECF1B:   Set var_B8 = Nothing
  loc_19ECF1E: End If
  loc_19ECF43: For var_A78 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A78 'Integer
  loc_19ECF4D:   var_14C = CVar(CLng(var_92)) 'Long
  loc_19ECF55:   var_16C = CVar(CLng(3)) 'Long
  loc_19ECF6F:   var_18C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19ECF91:   If CBool(Trim(var_18C) <> vbNullString) Then
  loc_19ECFA2:     Set var_11C = Me.Txt
  loc_19ECFA8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128)
  loc_19ECFB0:     var_16C = var_120.Text
  loc_19ECFC2:     var_24C = Val(CStr(var_92))
  loc_19ECFD3:     Set var_124 = Me.Txt
  loc_19ECFD9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_23C, var_2AC)
  loc_19ECFEE:     var_A74 = Val(var_2AC)
  loc_19ECFFC:     Set var_240 = Me.Txt
  loc_19ED002:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2A0, var_A74)
  loc_19ED011:     Proc_6_7_F25D88(var_18C, CVar(var_2A0))
  loc_19ED01A:     var_15C = CVar(CLng(var_92)) 'Long
  loc_19ED022:     var_17C = CVar(CLng(1)) 'Long
  loc_19ED041:     var_1E0 = CVar(CLng(var_92)) 'Long
  loc_19ED052:     Set var_2C0 = Me.FGrid
  loc_19ED06B:     var_1290 = Val(CStr(var_2C0.TextMatrix)))
  loc_19ED09C:     var_1298 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19ED0CD:     var_12A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19ED0FE:     var_12A4 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(5)), CVar(CLng(var_92)), var_12A0, CVar(CLng(9)), CVar(CLng(var_92)), var_1298, CVar(CLng(8)))
  loc_19ED105:     Set var_2D0 = Me.TopCtrl1
  loc_19ED10B:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CVar(CLng(var_92)))
  loc_19ED13D:     var_454 = IIf((CStr(var_3F4) = "Add"), "A", "E")
  loc_19ED150:     Proc_6_7_F25D88(var_524, Date, var_1290, CVar(CLng(6)))
  loc_19ED159:     var_924 = CVar(CLng(var_92)) 'Long
  loc_19ED161:     var_98C = CVar(CLng(&HE)) 'Long
  loc_19ED170:     var_594 = Me.FGrid.TextMatrix)
  loc_19ED180:     var_A34 = CVar(CLng(var_92)) 'Long
  loc_19ED188:     var_A94 = CVar(CLng(&HD)) 'Long
  loc_19ED191:     Set var_318 = Me.FGrid
  loc_19ED1B1:     var_AF8 = CVar(CLng(var_92)) 'Long
  loc_19ED1B9:     var_B18 = CVar(CLng(7)) 'Long
  loc_19ED1E2:     var_B5C = CVar(CLng(var_92)) 'Long
  loc_19ED1EA:     var_B7C = CVar(CLng(4)) 'Long
  loc_19ED1F3:     Set var_360 = Me.FGrid
  loc_19ED1F9:     var_6FC = var_360.TextMatrix)
  loc_19ED209:     var_BAC = CVar(CLng(var_92)) 'Long
  loc_19ED211:     var_BCC = CVar(CLng(&H1A)) 'Long
  loc_19ED230:     var_BFC = CVar(CLng(var_92)) 'Long
  loc_19ED238:     var_C1C = CVar(CLng(&H17)) 'Long
  loc_19ED241:     Set var_39C = Me.FGrid
  loc_19ED257:     var_C4C = CVar(CLng(var_92)) 'Long
  loc_19ED25F:     var_C6C = CVar(CLng(&H19)) 'Long
  loc_19ED27E:     var_C9C = CVar(CLng(var_92)) 'Long
  loc_19ED286:     var_CBC = CVar(CLng(&H14)) 'Long
  loc_19ED28F:     Set var_4D8 = Me.FGrid
  loc_19ED2A5:     var_CEC = CVar(CLng(var_92)) 'Long
  loc_19ED2AD:     var_D0C = CVar(CLng(&H16)) 'Long
  loc_19ED2CC:     var_D3C = CVar(CLng(var_92)) 'Long
  loc_19ED2D4:     var_D5C = CVar(CLng(&H15)) 'Long
  loc_19ED2DD:     Set var_4E0 = Me.FGrid
  loc_19ED2F3:     var_D8C = CVar(CLng(var_92)) 'Long
  loc_19ED2FB:     var_DAC = CVar(CLng(&H18)) 'Long
  loc_19ED31A:     var_DDC = CVar(CLng(var_92)) 'Long
  loc_19ED322:     var_DFC = CVar(CLng(&H18)) 'Long
  loc_19ED341:     var_E2C = CVar(CLng(var_92)) 'Long
  loc_19ED349:     var_E4C = CVar(CLng(&H11)) 'Long
  loc_19ED352:     Set var_764 = Me.FGrid
  loc_19ED372:     var_EB0 = CVar(CLng(var_92)) 'Long
  loc_19ED37A:     var_ED0 = CVar(CLng(&H12)) 'Long
  loc_19ED3A3:     var_F44 = CVar(CLng(var_92)) 'Long
  loc_19ED3AB:     var_F64 = CVar(CLng(&HF)) 'Long
  loc_19ED3B4:     Set var_7BC = Me.FGrid
  loc_19ED3D4:     var_FD8 = CVar(CLng(var_92)) 'Long
  loc_19ED3DC:     var_FF8 = CVar(CLng(&H10)) 'Long
  loc_19ED405:     var_106C = CVar(CLng(var_92)) 'Long
  loc_19ED40D:     var_108C = CVar(CLng(&H13)) 'Long
  loc_19ED436:     var_1100 = CVar(CLng(var_92)) 'Long
  loc_19ED43E:     var_1120 = CVar(CLng(&HA)) 'Long
  loc_19ED48B:     var_11E4 = CVar(CLng(var_92)) 'Long
  loc_19ED493:     var_1204 = CVar(CLng(&HB)) 'Long
  loc_19ED4C2:     var_234 = "insert into PackingOrderDetail (Docid,SNo,Vtype,VNo,Site_Code,VPrefix,vdate,ItemCode, Qty,Rate,Amount,Remark, " & " U_AE,U_Name,U_EntDt,Logsite_Code,ContraDocid,ContraSno,RestCode,ItemRate,Unit,RateIncTax,RateEdit,SChrgApp,DiscApp,TaxCode,TaxRoff,DepartCode,GodownCode,TaxPer,TaxAmt,DiscPer,DiscAmt,Total,VoidYN,ItemRestCode) values ('"
  loc_19ED515:     var_3A4 = var_234 & var_128 & "'," & CStr(var_23C.Text) & ",'" & global_164 & "'," & CStr(var_A74) & ",'" & MemVar_1F92070 & "', "
  loc_19ED526:     var_5CC = var_3A4 & "'" & global_152
  loc_19ED533:     var_1BC = CVar(var_5CC & "',") & var_18C 
  loc_19ED58C:     var_374 = var_1BC & ", '" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_1290) & " ," & " " & CVar(var_1298) & "," & CVar(var_12A0) 
  loc_19ED5DB:     var_564 = var_374 & ",'" & CVar(var_12A4) & "','" & var_454 & "','" & CVar(MemVar_1F920C8) & "'," & var_524 & ",'" 
  loc_19ED623:     var_65C = var_564 & CVar(MemVar_1F92078) & "','" & CVar(CStr(var_594)) & "'," & CVar(Val(CStr(var_318.TextMatrix)))) & ",'" & CVar(global_52) 
  loc_19ED65F:     var_794 = var_65C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_6FC)) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_19ED69B:     var_89C = var_794 & "','" & CVar(CStr(var_39C.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_4D8.TextMatrix))) 
  loc_19ED6D7:     var_9CC = var_89C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_4E0.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_19ED713:     var_F14 = var_9CC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(Val(CStr(var_764.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_19ED74F:     var_10D0 = var_F14 & "," & CVar(Val(CStr(var_7BC.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_19ED77C:     var_1264 = var_10D0 & ",'" & IIf((CStr(Me.FGrid.TextMatrix)) = "Yes"), "Y", "N") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')" 
  loc_19ED78A:     unk_56D39B.Execute CStr(var_1264), var_1288, -1
  loc_19ED8FA:   End If
  loc_19ED8FD: Next var_A78 'Integer
  loc_19ED927: For var_12E0 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_92 = var_12E0 'Integer
  loc_19ED931:   var_14C = CVar(CLng(var_92)) 'Long
  loc_19ED939:   var_16C = CVar(CLng(2)) 'Long
  loc_19ED980:   Set var_120 = Me.FGCat
  loc_19ED991:   var_128 = CStr(var_120.TextMatrix))
  loc_19ED9BF:   If CBool(CVar(CLng(6)) And (CDbl(Val(var_128)) <> CDbl(0))) Then
  loc_19ED9D0:     Set var_11C = Me.Txt
  loc_19ED9D6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120, var_128, CVar(CLng(var_92)))
  loc_19ED9DE:     (Trim(CVar(CStr(Me.FGCat.TextMatrix)))) <> vbNullString) = var_120.Text
  loc_19EDA11:     var_24C = Val(CStr(Me.FGCat.TextMatrix)))
  loc_19EDA29:     Set var_23C = Me.FGCat
  loc_19EDA2F:     var_18C = var_23C.TextMatrix)
  loc_19EDA42:     var_A74 = Val(CStr(var_18C))
  loc_19EDA53:     Set var_240 = Me.Txt
  loc_19EDA59:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2A0, var_5CC, var_A74, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_19EDA6E:     var_1290 = Val(var_5CC)
  loc_19EDA7C:     Set var_2A4 = Me.Txt
  loc_19EDA82:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2C0, var_1290, CVar(CLng(1)))
  loc_19EDA91:     Proc_6_7_F25D88(var_1BC, CVar(var_2C0), CVar(CLng(var_92)))
  loc_19EDA9A:     var_424 = CVar(CLng(var_92)) 'Long
  loc_19EDAA2:     var_464 = CVar(CLng(2)) 'Long
  loc_19EDAC1:     var_4C4 = CVar(CLng(var_92)) 'Long
  loc_19EDAC9:     var_514 = CVar(CLng(4)) 'Long
  loc_19EDAD2:     Set var_2C8 = Me.FGCat
  loc_19EDAEB:     var_1298 = Val(CStr(var_2C8.TextMatrix)))
  loc_19EDB1C:     var_12A0 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_19EDB34:     Set var_2D0 = Me.FGCat
  loc_19EDB4D:     var_12AC = Val(CStr(var_2D0.TextMatrix)))
  loc_19EDB5B:     Proc_6_7_F25D88(var_3F4, MemVar_1F920EC, var_12AC, CVar(CLng(6)), CVar(CLng(var_92)), var_12A0, CVar(CLng(5)), CVar(CLng(var_92)))
  loc_19EDB64:     Set var_314 = Me.TopCtrl1
  loc_19EDB6A:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1298)
  loc_19EDB83:     var_474 = "A"
  loc_19EDBB5:     var_234 = "Insert Into PackingOrderDetail1(DocId,SNo,SNo1,VType,VPrefix,Site_Code,VNo,VDate,RestCode,TaxCode,BaseValue,TaxPer,TaxAmt,U_Name,U_EntDt,U_AE,DelFlag,LOGSITE_CODE) Values (" & "'"
  loc_19EDBFA:     var_2BC = var_234 & var_128 & "'," & CStr(var_2A0.Text) & "," & CStr(var_A74) & ",'" & global_164 & "','"
  loc_19EDC19:     var_A48 = var_2BC & global_152 & "','" & MemVar_1F92070 & "',"
  loc_19EDC5C:     var_300 = CVar(var_A48 & CStr(var_1290) & ",") & var_1BC & ",'" & CVar(global_52) & "','" & CVar(CStr(Me.FGCat.TextMatrix))) 
  loc_19EDCBB:     var_414 = var_300 & "'," & CVar(var_1298) & "," & CVar(var_12A0) & "," & CVar(var_12AC) & ",'" & CVar(MemVar_1F920C8) & "'," & var_3F4 
  loc_19EDCCB:     var_4D4 = var_414 & ",'" & IIf((CStr(var_454) = "Add"), var_474, "E") 
  loc_19EDCF5:     unk_56D39B.Execute CStr(var_4D4 & "','N','" & CVar(MemVar_1F92078) & "')"), var_564, -1
  loc_19EDD9B:   End If
  loc_19EDD9E: Next var_12E0 'Integer
  loc_19EDDAF: Set var_11C = Me.TxtGt
  loc_19EDDB5: Call 0.Method_TopCtrl1_UnknownEvent_168 (var_12A, var_92)
  loc_19EDDC0: For var_12E4 =  To var_12A: 1 = var_12E4 'Integer
  loc_19EDDD3:   Set var_11C = Me.TxtGt
  loc_19EDDD9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_120)
  loc_19EDDE1:   var_12A = var_120.Visible
  loc_19EDDF3:   If (var_12A = &HFF) Then
  loc_19EDE04:     Set var_11C = Me.Txt
  loc_19EDE0A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19EDE25:     Set var_124 = Me.Txt
  loc_19EDE2B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_23C)
  loc_19EDE4E:     Set var_240 = Me.Txt
  loc_19EDE54:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_2A0)
  loc_19EDE5C:     var_13C = CVar(var_2A0) 'Address
  loc_19EDE63:     Proc_6_7_F25D88(var_18C, var_13C)
  loc_19EDE75:     Set var_2A4 = Me.LblCap
  loc_19EDE7B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_2C0)
  loc_19EDEA3:     Set var_2C4 = Me.TxtPer
  loc_19EDEA9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_2C8)
  loc_19EDEBE:     var_A74 = Val(var_2C8.Tag)
  loc_19EDECE:     Set var_2CC = Me.LblCap
  loc_19EDED4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_2D0, var_2BC)
  loc_19EDEEE:     Set var_314 = Me.LblAt
  loc_19EDEF4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_318)
  loc_19EDF0E:     Set var_35C = Me.TxtGt
  loc_19EDF14:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_360)
  loc_19EDF2E:     Set var_398 = Me.TxtPer
  loc_19EDF34:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_39C)
  loc_19EDF49:     var_1290 = Val(var_39C.Text)
  loc_19EDF59:     Set var_3A0 = Me.TxtGt
  loc_19EDF5F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_4D8, var_5CC)
  loc_19EDF74:     var_1298 = Val(var_5CC)
  loc_19EDF84:     Set var_4DC = Me.LblDummy
  loc_19EDF8A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_4E0, var_A48)
  loc_19EDF9F:     var_12A0 = Val(var_A48)
  loc_19EDFAD:     Proc_6_7_F25D88(var_474, MemVar_1F920EC)
  loc_19EDFB6:     Set var_5B8 = Me.TopCtrl1
  loc_19EDFBC:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_12A0)
  loc_19EDFFE:     Set var_760 = Me.Txt
  loc_19EE004:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_764)
  loc_19EE013:     Proc_6_7_F25D88(var_594, CVar(var_764))
  loc_19EE025:     Set var_7B8 = Me.LblDummy
  loc_19EE02B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_92, var_7BC)
  loc_19EE04C:     var_234 = "Insert Into PackingOrderDetail2(DocId,Sno,Vtype,VNo,Vdate,PartyCode,SunCode,Limit,DispName,ROff,CalcFormula,SValue,Amount,BaseAmount,U_Name,U_EntDt,U_AE,SunAppDate,RevCode,RestCode,DelFlag,SiteCode,LOGSITE_CODE) Values ('" & var_120.Text
  loc_19EE08A:     var_19C = CVar(var_234 & "'," & CStr(var_92) & ",'" & global_164 & "'," & CStr(Val(var_23C.Text)) & ",") 'String
  loc_19EE090:     var_1BC = var_19C & var_18C 
  loc_19EE094:     var_14C = ",'','"
  loc_19EE0DA:     var_348 = var_1BC & var_14C & Trim(CVar(var_2C0.Tag)) & "'," & CVar(var_2D0.Caption) & ",'" & CVar(var_2BC) & "','" & CVar(var_318.Tag) 
  loc_19EE132:     var_414 = var_348 & "','" & CVar(var_360.Tag) & "'," & CVar(var_4D8.Text) & "," & CVar(var_4E0.Caption) & "," & CVar(var_12A0) & ",'" 
  loc_19EE17F:     var_61C = var_414 & CVar(MemVar_1F920C8) & "'," & var_474 & ",'" & IIf((CStr(var_4D4) = "Add"), "A", "E") & "'," & var_594 & ",'" & CVar(var_7BC.Tag) 
  loc_19EE1D2:     unk_56D39B.Execute CStr(var_61C & "','" & CVar(global_52) & "','N','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_6FC, -1
  loc_19EE29E:   End If
  loc_19EE2A1: Next var_12E4 'Integer
  loc_19EE2AC: unk_56D39B.CommitTrans
  loc_19EE2B3: var_8A = 0
  loc_19EE2C4: Set var_11C = Me.Txt
  loc_19EE2CA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_120)
  loc_19EE2E6: var_8A = 0
  loc_19EE2F4: Me.Requery -1
  loc_19EE31E: Me.Find "SearchCode ='" & var_120.Text & "'", 0, 1
  loc_19EE34D: Call Proc_169_89_1005B7C(Proc_5_1_100CB50("INI", Me, global_56), var_14C)
  loc_19EE358: Call Proc_169_93_18AB3CC(var_8A)
  loc_19EE363: var_15C = 0
  loc_19EE393: unk_56D39B.Execute "Select Max(CKOTPrintYN) From Depart Where Code='" & global_52 & "'", var_13C, -1
  loc_19EE39B: var_11C = var_11C.Fields
  loc_19EE3A3: var_15C = var_120.Item(var_120)
  loc_19EE3AB: var_124 = var_124.Value
  loc_19EE3D9: If (Proc_6_38_E68A98(var_18C, var_18C) = "Y") Then
  loc_19EE3DC:   Call Proc_169_80_1C27D68(var_8A)
  loc_19EE3E1: End If
  loc_19EE418: If (MsgBox("Print Booking Slip ?", &H24, "Order Booking", var_19C, var_1BC) = 6) Then
  loc_19EE41B:   Call TopCtrl1_UnknownEvent_14()
  loc_19EE420: End If
  loc_19EE425: Set var_88 = Nothing
  loc_19EE428: Exit Sub
  loc_19EE42F: If (var_8A = &HFF) Then
  loc_19EE438:   unk_56D39B.RollbackTrans
  loc_19EE43D: End If
  loc_19EE43D: Proc_6_60_E62BC4()
  loc_19EE442: Exit Sub
End Sub

Private Sub ChkNCBOOKING_Click() 'F70624
  'Data Table: 56D390
  Dim var_88 As CheckBox
  Dim var_A4 As Variant
  loc_F704E4: Set var_88 = Me.TopCtrl1
  loc_F704EA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_F70503: If (CStr() = "Browse") Then
  loc_F70506:   Exit Sub
  loc_F70507: End If
  loc_F70522: If (Me.ChkNCBOOKING.Value = 1) Then
  loc_F70533:   Set var_88 = Me.Txt
  loc_F70539:   Call 0.Method_ChkNCBOOKING_Click0 (CInt(&H11), var_A4)
  loc_F70553:   If (var_A4.Visible = 0) Then
  loc_F70563:     Set var_88 = Me.Txt
  loc_F70569:     Call 0.Method_ChkNCBOOKING_Click0 (CInt(&H11), var_A4)
  loc_F70571:     var_A4.Visible = True
  loc_F70588:     Set var_88 = Me.Label1
  loc_F7058E:     Call 0.Method_ChkNCBOOKING_Click0 (&H16, var_A4)
  loc_F70596:     var_A4.Visible = True
  loc_F705A2:   End If
  loc_F705A5: Else
  loc_F705B3:   Set var_88 = Me.Txt
  loc_F705B9:   Call 0.Method_ChkNCBOOKING_Click0 (CInt(&H11), var_A4)
  loc_F705D3:   If (var_A4.Visible = &HFF) Then
  loc_F705E3:     Set var_88 = Me.Txt
  loc_F705E9:     Call 0.Method_ChkNCBOOKING_Click0 (CInt(&H11), var_A4)
  loc_F705F1:     var_A4.Visible = False
  loc_F70608:     Set var_88 = Me.Label1
  loc_F7060E:     Call 0.Method_ChkNCBOOKING_Click0 (&H16, var_A4)
  loc_F70616:     var_A4.Visible = False
  loc_F70622:   End If
  loc_F70622: End If
  loc_F70622: Exit Sub
End Sub

Private Sub CmdCustDetails_Click() 'E7D920
  'Data Table: 56D390
  loc_E7D8C8: Set var_88 = Me.TopCtrl1
  loc_E7D8CE: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_E7D8E7: If (CStr() = "Browse") Then
  loc_E7D8EA:   Exit Sub
  loc_E7D8EB: End If
  loc_E7D8F5: Set var_A0 = New RsPOSCustInfo
  loc_E7D906: var_A0.ParentForm = CVar(Me)
  loc_E7D91A: var_A0.Show 1, var_C0
  loc_E7D91F: Exit Sub
End Sub

Private Sub TxtPer_GotFocus(Index As Integer) 'EDF298
  'Data Table: 56D390
  Dim var_8C As TextBox
  Dim var_A8 As TextBox
  loc_EDF1F2: Set var_88 = Me.TxtPer
  loc_EDF1F8: Call 0.Method_TxtPer_GotFocus0 (Index)
  loc_EDF206: Proc_6_74_E226B0(var_8C)
  loc_EDF215: Call Proc_169_87_E5CB38(var_A0)
  loc_EDF22C: Set var_88 = Me.TxtPer
  loc_EDF232: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_EDF23A: var_8C.SelStart = 0
  loc_EDF253: Set var_88 = Me.TxtPer
  loc_EDF259: Call 0.Method_TxtPer_GotFocus0 (Index, var_8C)
  loc_EDF274: Set var_90 = Me.TxtPer
  loc_EDF27A: Call 0.Method_TxtPer_GotFocus0 (Index, var_A8)
  loc_EDF282: var_A8.SelLength = Len(var_8C.Text)
  loc_EDF295: Exit Sub
  loc_EDF296: Assert
End Sub

Private Sub TxtPer_KeyDown(KeyCode As Integer, Shift As Integer) 'E595F0
  'Data Table: 56D390
  loc_E595BD: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E595C6:   Proc_6_75_E527CC(Shift)
  loc_E595CB: End If
  loc_E595E0: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E595E9:   Proc_6_76_E52838(Shift, arg_14)
  loc_E595EE: End If
  loc_E595EE: Exit Sub
End Sub

Private Sub TxtPer_KeyPress(KeyAscii As Integer) 'E6560C
  'Data Table: 56D390
  Dim arg_10 As Integer
  loc_E655CE: Set var_88 = Me.TxtPer
  loc_E655D4: Call 0.Method_TxtPer_KeyPress0 (KeyAscii)
  loc_E655EF: Proc_6_42_129A86C(var_8C, arg_10, 2)
  loc_E65601: If (arg_10 = &H2D) Then
  loc_E65606:   arg_10 = 0
  loc_E65609: End If
  loc_E65609: Exit Sub
End Sub

Private Sub TxtPer_KeyUp(KeyCode As Integer, Shift As Integer) 'E00848
  'Data Table: 56D390
  loc_E00842: Call Proc_169_70_19122FC(KeyCode)
  loc_E00847: Exit Sub
End Sub

Private Sub TxtPer_LostFocus(Index As Integer) 'E48494
  'Data Table: 56D390
  loc_E48472: Set var_88 = Me.TxtPer
  loc_E48478: Call 0.Method_TxtPer_LostFocus0 (Index)
  loc_E48486: Proc_6_73_E22704(var_8C)
  loc_E48492: Exit Sub
End Sub

Private Sub DGNCType_UnknownEvent_9 'F5C120
  'Data Table: 56D390
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5C000: On Error Goto loc_F5C11A
  loc_F5C012: Me.DGNCType.Visible = False
  loc_F5C031: If (Me.RecordCount > 0) Then
  loc_F5C070:   Set var_B4 = Me.Txt
  loc_F5C076:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F5C07E:   var_B8.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_F5C0B1:   var_B0 = Me.Fields.Item("NCPer")
  loc_F5C0D0:   Set var_B4 = Me.Txt
  loc_F5C0D6:   Call 0.Method_DGNCType_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F5C0DE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5C0F4: End If
  loc_F5C0FF: Set var_A8 = Me.Txt
  loc_F5C105: Call 0.Method_DGNCType_UnknownEvent_90 (CInt(&H11))
  loc_F5C10D: var_B0.SetFocus
  loc_F5C119: Exit Sub
  loc_F5C11A: ' Referenced from: F5C000
  loc_F5C11A: Proc_6_60_E62BC4(var_B0)
  loc_F5C11F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1055724
  'Data Table: 56D390
  Dim var_8C As TextBox
  Dim var_A8 As Variant
  Dim var_AA As Integer
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_90 As Fields15
  Dim var_A0 As Variant
  loc_10554CA: Set var_88 = Me.Txt
  loc_10554D0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10554DE: Proc_6_74_E226B0(var_8C)
  loc_10554ED: Call Proc_169_87_E5CB38(var_A0)
  loc_1055504: Set var_88 = Me.Txt
  loc_105550A: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1055512: var_8C.SelStart = 0
  loc_105552B: Set var_88 = Me.Txt
  loc_1055531: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1055539: var_A4 = var_8C.Text
  loc_105554C: Set var_90 = Me.Txt
  loc_1055552: Call 0.Method_Txt_GotFocus0 (Index, var_A8)
  loc_105555A: var_A8.SelLength = Len(var_A4)
  loc_1055570: var_AA = Index
  loc_105557B: If (var_AA = CInt(&H11)) Then
  loc_1055595:   If (Me.RecordCount > 0) Then
  loc_10555A3:     Set var_8C = Me.FGPoint
  loc_10555BB:     Proc_6_137_1193554(Me.DGNCType, global_136, Index)
  loc_10555C9:   End If
  loc_1055617:   Set var_88 = Me.Txt
  loc_105561D:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1055625:   var_8C = var_8C.Text
  loc_105563D:   If (var_AA Or (var_A4 = vbNullString)) Then
  loc_1055640:     Exit Sub
  loc_1055641:   End If
  loc_105564E:   Set var_88 = Me.Txt
  loc_1055654:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_105565C:   var_A4 = var_8C.Text
  loc_1055664:   var_D4 = CVar(var_A4) 'String
  loc_10556A9:   If CBool(var_D4 <> Me.Fields.Item("NCType").Value) Then
  loc_10556B2:     Me.MoveFirst
  loc_10556D7:     Set var_88 = Me.Txt
  loc_10556DD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A4, "NCType =")
  loc_10556E5:     0 = var_8C.Text
  loc_10556F3:     Proc_6_17_EAA2B0(var_D4, CVar(var_A4), 1)
  loc_1055709:     Me.Find CStr(var_F8 & var_D4), var_8C, 
  loc_1055721:   End If
  loc_1055721: End If
  loc_1055721: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1154960
  'Data Table: 56D390
  Dim var_86 As Integer
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_A0 As DataGrid
  Dim var_98 As Variant
  Dim var_A4 As DataGrid
  Dim var_DE As Integer
  loc_11545C3: var_86 = Shift
  loc_11545D0: If (CLng(Shift) = &H1B) Then
  loc_11545D6:   Call Proc_169_87_E5CB38(var_98)
  loc_11545DE:   Exit Sub
  loc_11545DF: End If
  loc_11545E2: var_9A = KeyCode
  loc_11545ED: If (var_9A = CInt(&H11)) Then
  loc_115460D:   Set var_B4 = Me.FGPoint
  loc_1154618:   Set var_B0 = Nothing
  loc_115464A:   Proc_6_69_134A198(Me.DGNCType, Me.Txt, CInt(&H11), global_136, Shift, 0)
  loc_11546B9:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11546C0:     Set var_B0 = Me.DGNCType
  loc_11546DF:     Proc_6_138_106D6F8(var_B0, global_136, KeyCode, Me.FGPoint, 0)
  loc_11546ED:   End If
  loc_11546ED: End If
  loc_1154707: Set var_A4 = Me.DGNCType
  loc_1154728: If ((CBool(Me.DGItem.Visible) = 0) And (CBool(var_A4.Visible) = 0)) Then
  loc_1154749:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HF))) Then
  loc_1154752:     Proc_6_75_E527CC(Shift, arg_14, var_B0, var_B4)
  loc_1154757:   End If
  loc_115475B:   Set var_A0 = Me.TopCtrl1
  loc_1154761:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(0)
  loc_1154783:   If ((CStr(var_9A) = "Add") And (KeyCode <> CInt(3))) Then
  loc_115479B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11547A4:       Proc_6_76_E52838(Shift, arg_14)
  loc_11547AC:     Else
  loc_11547CA:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HF))) Then
  loc_11547D3:         Proc_6_75_E527CC(Shift, arg_14)
  loc_11547D8:       End If
  loc_11547D8:     End If
  loc_11547D8:   End If
  loc_11547DC:   Set var_A0 = Me.TopCtrl1
  loc_11547E2:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_86)
  loc_1154804:   If ((CStr() = "Edit") And (KeyCode <> CInt(4))) Then
  loc_115481C:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1154825:       Proc_6_76_E52838(Shift)
  loc_115482D:     Else
  loc_115484B:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(&HF))) Then
  loc_1154854:         Proc_6_75_E527CC(Shift, arg_14)
  loc_1154859:       End If
  loc_1154859:     End If
  loc_1154859:   End If
  loc_1154877:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HF))) Then
  loc_115487D:     Call Proc_169_91_FE9DB8(KeyCode)
  loc_1154882:   End If
  loc_1154882: End If
  loc_1154885: var_DE = KeyCode
  loc_1154890: If Not (var_DE = CInt(9)) Then
  loc_115489B:   If Not (var_DE = CInt(&HA)) Then
  loc_11548A6:     If Not (var_DE = CInt(6)) Then
  loc_11548B1:       If Not (var_DE = CInt(&HC)) Then
  loc_11548BC:         If (var_DE = CInt(&HF)) Then
  loc_11548BF:         End If
  loc_11548BF:       End If
  loc_11548BF:     End If
  loc_11548BF:   End If
  loc_11548C9:   Set var_A0 = Me.Txt
  loc_11548CF:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_11548EA:   Proc_6_41_FA0BA4(var_A4, Shift, 8)
  loc_11548F9: Else
  loc_1154901:   If Not (var_DE = CInt(7)) Then
  loc_115490C:     If Not (var_DE = CInt(8)) Then
  loc_1154917:       If Not (var_DE = CInt(&HD)) Then
  loc_1154922:         If (var_DE = CInt(&HE)) Then
  loc_1154925:         End If
  loc_1154925:       End If
  loc_1154925:     End If
  loc_115492F:     Set var_A0 = Me.Txt
  loc_1154935:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, 2)
  loc_1154950:     Proc_6_41_FA0BA4(var_A4, Shift, 2)
  loc_115495C:   End If
  loc_115495C: End If
  loc_115495C: Exit Sub
  loc_115495D: BranchFVar -2818
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'ED299C
  'Data Table: 56D390
  loc_ED28F0: On Error Goto loc_ED2996
  loc_ED28F6: Proc_6_58_E054C0(arg_10)
  loc_ED2909: If (KeyAscii = CInt(&H11)) Then
  loc_ED2928:   If (CBool(Me.DGNCType.Visible) = &HFF) Then
  loc_ED293A:     var_A0 = "NCType"
  loc_ED2955:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_136, arg_10)
  loc_ED2987:     Proc_6_138_106D6F8(Me.DGNCType, global_136, KeyAscii, Me.FGPoint)
  loc_ED2995:   End If
  loc_ED2995: End If
  loc_ED2995: Exit Sub
  loc_ED2996: ' Referenced from: ED28F0
  loc_ED2996: Proc_6_60_E62BC4(var_A0, 0)
  loc_ED299B: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48F8C
  'Data Table: 56D390
  loc_E48F6A: Set var_88 = Me.Txt
  loc_E48F70: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48F7E: Proc_6_73_E22704(var_8C)
  loc_E48F8A: Exit Sub
  loc_E48F8B: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12CF20C
  'Data Table: 56D390
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_F8 As TextBox
  Dim var_F4 As Variant
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Fields15
  loc_12CEB98: On Error Goto loc_12CF206
  loc_12CEB9E: var_8E = Cancel
  loc_12CEBA9: If (var_8E = CInt(0)) Then
  loc_12CEBAC:   GoTo loc_12CF1FD
  loc_12CEBAF: End If
  loc_12CEBB7: If (var_8E = CInt(3)) Then
  loc_12CEBC8:   Set var_94 = Me.Txt
  loc_12CEBCE:   Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_12CEC06:   If (Len(Trim(CVar(var_98.Text))) = 0) Then
  loc_12CEC1C:     Set var_94 = Me.Txt
  loc_12CEC22:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_12CEC2A:     var_98.Text = CStr(MemVar_1F920EC)
  loc_12CEC3C:   Else
  loc_12CEC46:     Set var_94 = Me.Txt
  loc_12CEC4C:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CEC6C:     Set var_F4 = Me.Txt
  loc_12CEC72:     Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_12CEC7A:     var_F8.Text = Proc_6_33_1512840(var_98)
  loc_12CEC8D:   End If
  loc_12CEC98:   Set var_94 = Me.Txt
  loc_12CEC9E:   Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_12CECC7:   If (Trim(CVar(var_98)) = vbNullString) Then
  loc_12CECD8:     Set var_94 = Me.Txt
  loc_12CECDE:     Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_12CECF9:     Set var_F0 = Me.Txt
  loc_12CECFF:     Call 0.Method_Txt_Validate0 (CInt(4), var_F4)
  loc_12CED07:     var_F4.Text = var_98.Text
  loc_12CED55:     Set var_94 = Me.TxtMask
  loc_12CED5B:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, CVar(CStr(Format(Time, "hh:mm"))))
  loc_12CED63:     var_98.defaultText = 1
  loc_12CED7A:   End If
  loc_12CED7E:   Set var_94 = Me.TopCtrl1
  loc_12CED84:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(1)
  loc_12CED8C:   var_9C = CStr(var_8E)
  loc_12CEDA2:   Set var_98 = Me.Txt
  loc_12CEDA8:   Call 0.Method_Txt_Validate0 (CInt(0), var_F0)
  loc_12CEDD1:   If ((var_9C = "Add") And (var_F0.Text = vbNullString)) Then
  loc_12CEDDA:     Call Proc_169_92_11832F8(MemVar_1F92044)
  loc_12CEDED:     Set var_94 = Me.Txt
  loc_12CEDF3:     Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_12CEDFB:     var_98.Text = var_9C
  loc_12CEE0A:   End If
  loc_12CEE0D: Else
  loc_12CEE15:   If (var_8E = CInt(4)) Then
  loc_12CEE22:     Set var_94 = Me.Txt
  loc_12CEE28:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CEE48:     Set var_F4 = Me.Txt
  loc_12CEE4E:     Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_12CEE56:     var_F8.Text = Proc_6_33_1512840(var_98)
  loc_12CEE74:     Set var_94 = Me.Txt
  loc_12CEE7A:     Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_12CEE82:     var_9C = "Delivery Date"
  loc_12CEEA3:     If (Proc_6_27_EA565C(var_98, var_9C) = 0) Then
  loc_12CEEB1:       Set var_94 = Me.Txt
  loc_12CEEB7:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_12CEEBF:       var_98.SetFocus
  loc_12CEECD:       arg_10 = &HFF
  loc_12CEED0:       Exit Sub
  loc_12CEED1:     End If
  loc_12CEED4:   Else
  loc_12CEEDC:     If (var_8E = CInt(1)) Then
  loc_12CEEEA:       Set var_94 = Me.Txt
  loc_12CEEF0:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12CEF19:       If (Trim(CVar(var_98)) = vbNullString) Then
  loc_12CEF1C:         Call CmdCustDetails_Click()
  loc_12CEF21:       End If
  loc_12CEF2C:       Set var_94 = Me.Txt
  loc_12CEF32:       Call 0.Method_Txt_Validate0 (CInt(4), var_98)
  loc_12CEF5B:       If (Trim(CVar(var_98)) = vbNullString) Then
  loc_12CEF6C:         Set var_94 = Me.Txt
  loc_12CEF72:         Call 0.Method_Txt_Validate0 (CInt(3), var_98, var_9C)
  loc_12CEF7A:         arg_10 = var_98.Text
  loc_12CEF8D:         Set var_F0 = Me.Txt
  loc_12CEF93:         Call 0.Method_Txt_Validate0 (CInt(4), var_F4)
  loc_12CEF9B:         var_F4.Text = var_9C
  loc_12CEFB9:         Set var_94 = Me.TxtMask
  loc_12CEFBF:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_12CEFDE:         Set var_F0 = Me.TxtMask
  loc_12CEFE4:         Call 0.Method_Txt_Validate0 (CInt(1), var_F4)
  loc_12CEFEC:         var_F4.defaultText = CVar(CStr(var_98.defaultText))
  loc_12CF003:       End If
  loc_12CF006:     Else
  loc_12CF00E:       If (var_8E = CInt(&H11)) Then
  loc_12CF01B:         Set var_94 = Me.Txt
  loc_12CF021:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF029:         var_9C = "NC Category"
  loc_12CF04A:         If (Proc_6_27_EA565C(var_98, var_9C) = 0) Then
  loc_12CF057:           Set var_94 = Me.Txt
  loc_12CF05D:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF065:           var_98.SetFocus
  loc_12CF073:           arg_10 = &HFF
  loc_12CF076:           Exit Sub
  loc_12CF077:         End If
  loc_12CF0C5:         Set var_94 = Me.Txt
  loc_12CF0CB:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_12CF0D3:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_12CF0EB:         If (arg_10 Or (var_9C = vbNullString)) Then
  loc_12CF0FB:           Set var_94 = Me.Txt
  loc_12CF101:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF109:           var_98.Text = vbNullString
  loc_12CF122:           Set var_94 = Me.Txt
  loc_12CF128:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_12CF130:           var_98.Tag = vbNullString
  loc_12CF13F:         Else
  loc_12CF17A:           Set var_F0 = Me.Txt
  loc_12CF180:           Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_12CF188:           var_F4.Text = CStr(Me.Fields.Item("NCType").Value)
  loc_12CF1CC:           var_9C = CStr(Me.Fields.Item("NCPer").Value)
  loc_12CF1D9:           Set var_F0 = Me.Txt
  loc_12CF1DF:           Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_12CF1E7:           var_F4.Tag = var_9C
  loc_12CF1FD:         End If
  loc_12CF1FD:       End If
  loc_12CF1FD:     End If
  loc_12CF1FD:   End If
  loc_12CF1FD:   ' Referenced from: 12CEBAC
  loc_12CF1FD: End If
  loc_12CF202: Set var_88 = Nothing
  loc_12CF205: Exit Sub
  loc_12CF206: ' Referenced from: 12CEB98
  loc_12CF206: Proc_6_60_E62BC4(var_9C)
  loc_12CF20B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1219FFC
  'Data Table: 56D390
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_94 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_124 As Variant
  loc_1219B27: Call Proc_169_87_E5CB38(var_94)
  loc_1219B3B: If (Index = 0) Then
  loc_1219B54:   Me.FGrid.CellBackColor = CVar(CLng(global_68))
  loc_1219B6F:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1219BAE:   Set var_108 = Me.TxtGrid
  loc_1219BB4:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_1219BBC:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_1219BED:   var_114 = CLng(Me.FGrid.Col)
  loc_1219BFD:   If (var_114 = CLng(2)) Then
  loc_1219C06:     var_A8 = "MultiBillGeneration"
  loc_1219C1D:     var_C0 = Me.Fields.Item(var_A8)
  loc_1219C59:     var_124 = (var_C0.Value = "Yes") And (global_104 = "Yes") And (global_108 = "N")
  loc_1219C73:     If CBool(Not var_124) Then
  loc_1219C91:       Me.Filter = CVar("OutletCode='" & global_52 & "'")
  loc_1219C9C:     End If
  loc_1219CAA:     Set var_BC = Me.TxtGrid
  loc_1219CB0:     Call 0.Method_TxtGrid_GotFocus0 (0, var_C0, 4)
  loc_1219CB8:     var_C0.MaxLength = var_114
  loc_1219CC7:   Else
  loc_1219CCE:     If (var_114 = CLng(3)) Then
  loc_1219CDF:       Set var_BC = Me.TxtGrid
  loc_1219CE5:       Call 0.Method_TxtGrid_GotFocus0 (0, var_C0, &H23)
  loc_1219CED:       var_C0.MaxLength = var_A8
  loc_1219D0C:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1219D14:       var_E0 = CVar(CLng(1)) 'Long
  loc_1219D34:       global_76 = CStr(Me.FGrid.TextMatrix))
  loc_1219D60:       If (Me.RecordCount > 0) Then
  loc_1219D86:         Proc_6_137_1193554(Me.DGItem, global_100, Index, Me.FGPoint)
  loc_1219D94:       End If
  loc_1219DD5:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1219DD8:         Exit Sub
  loc_1219DD9:       End If
  loc_1219DEC:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1219DF4:       var_E0 = CVar(CLng(3)) 'Long
  loc_1219E27:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1219E30:         Me.MoveFirst
  loc_1219E48:         var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1219E50:         var_E0 = CVar(CLng(1)) 'Long
  loc_1219E59:         Set var_C0 = Me.FGrid
  loc_1219E70:         Proc_6_17_EAA2B0(var_124, CVar(CStr(var_C0.TextMatrix))), var_E0, var_A8, var_E0)
  loc_1219E99:         Me.Find CStr("Code =" & var_124), 0, 1
  loc_1219EC9:         If (Me.EOF = &HFF) Then
  loc_1219ED2:           Me.MoveFirst
  loc_1219ED7:         End If
  loc_1219EE0:         CVarUnk
  loc_1219EE5:         VerifyVarObj
  loc_1219EEB:         Set var_BC = Me.DGItem
  loc_1219EF1:         LateIdStAd
  loc_1219EFF:       End If
  loc_1219F02:     Else
  loc_1219F09:       If (var_114 = CLng(5)) Then
  loc_1219F21:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, &H4B, Me.TxtGrid, global_100)
  loc_1219F29:         var_C0.MaxLength = var_15C
  loc_1219F38:       Else
  loc_1219F3F:         If (var_114 = CLng(6)) Then
  loc_1219F51:           Set var_BC = Me.TxtGrid
  loc_1219F57:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, &HA, var_A8)
  loc_1219F5F:           var_C0.MaxLength = var_E0
  loc_1219F6E:         Else
  loc_1219F75:           If (var_114 = CLng(7)) Then
  loc_1219F87:             Set var_BC = Me.TxtGrid
  loc_1219F8D:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, &HA)
  loc_1219F95:             var_C0.MaxLength = var_A8
  loc_1219FAA:             If (global_72 = 0) Then
  loc_1219FB5:               var_110 = "{Home}+{End}"
  loc_1219FBB:               Proc_303_0_FB9B68(CStr("Code =" & var_124), 0)
  loc_1219FC3:             End If
  loc_1219FC6:           Else
  loc_1219FCD:             If (var_114 = CLng(&HA)) Then
  loc_1219FDF:               Set var_BC = Me.TxtGrid
  loc_1219FE5:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_1219FED:               var_C0.MaxLength = 3
  loc_1219FF9:             End If
  loc_1219FF9:           End If
  loc_1219FF9:         End If
  loc_1219FF9:       End If
  loc_1219FF9:     End If
  loc_1219FF9:   End If
  loc_1219FF9: End If
  loc_1219FF9: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '134ECD8
  'Data Table: 56D390
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_98 As DataGrid
  Dim var_100 As Variant
  Dim Shift As Integer
  Dim var_94 As String
  loc_134E4DB: var_86 = Shift
  loc_134E4EA: If (KeyCode = 0) Then
  loc_134E4F7:   If (CLng(Shift) = &H1B) Then
  loc_134E507:     Set var_8C = Me.TxtGrid
  loc_134E50D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_134E515:     var_88 = var_90.Tag
  loc_134E527:     Set var_98 = Me.TxtGrid
  loc_134E52D:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_134E535:     var_9C.Text = var_94
  loc_134E551:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_134E559:     Call Proc_169_87_E5CB38(var_AC, arg_14)
  loc_134E565:     Set var_8C = Me.FGrid
  loc_134E582:     Set var_8C = Me.TxtGrid
  loc_134E588:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_134E590:     var_90.Visible = FGrid.DispID_8001
  loc_134E59C:     Exit Sub
  loc_134E59D:   End If
  loc_134E5C0:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_134E5E0:     Set var_9C = Me.FGPoint
  loc_134E5EB:     Set var_98 = Nothing
  loc_134E619:     Proc_6_69_134A198(Me.DGItem, Me.TxtGrid, KeyCode, global_100, Shift, &HFF)
  loc_134E638:     var_C8 = Me.RecordCount
  loc_134E688:     If ((var_C8 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_134E68F:       Set var_98 = Me.DGItem
  loc_134E6AE:       Proc_6_138_106D6F8(var_98, global_100, KeyCode, Me.FGPoint, 1)
  loc_134E6C5:       var_B2 = Me.BOF
  loc_134E6E5:       If ((var_B2 = &HFF) Or (Me.EOF = &HFF)) Then
  loc_134E6EE:         Me.MoveFirst
  loc_134E6F3:       End If
  loc_134E710:       var_90 = Me.Fields.Item("Code")
  loc_134E725:       Call Proc_169_96_11D7488(CStr(var_90.Value), var_98, var_9C)
  loc_134E737:     End If
  loc_134E744:     Set var_98 = Me.TxtGrid
  loc_134E74A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_DC)
  loc_134E752:     0 = var_9C.Height
  loc_134E764:     Set var_8C = Me.TxtGrid
  loc_134E76A:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_C8)
  loc_134E772:     var_B0 = var_90.Top
  loc_134E77E:     var_D8 = CVar((var_C8 + var_DC)) 'Single
  loc_134E78D:     Me.DGItem.Top = "Code"
  loc_134E7AC:     Set var_8C = Me.TxtGrid
  loc_134E7B2:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_134E7D1:     Me.DGItem.Left = CVar(var_90.Left)
  loc_134E7E9:     If (CLng(Shift) = &HD) Then
  loc_134E7F2:       Call Proc_169_90_187BCF4(KeyCode, var_B2)
  loc_134E7FD:       If (var_B2 = &HFF) Then
  loc_134E84A:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72)
  loc_134E8B7:         If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_134E8C8:           Proc_303_0_FB9B68("{Tab}", 0, CVar(CLng(3)), CVar(CLng(Me.FGrid.Row)), CByte((CInt(9) + 1)))
  loc_134E8D2:           Shift = 0
  loc_134E8D5:         End If
  loc_134E8D5:       End If
  loc_134E8D5:     End If
  loc_134E8D8:   Else
  loc_134E8DF:     If (var_B0 = CLng(5)) Then
  loc_134E922:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_134E92B:         Call Proc_169_90_187BCF4(KeyCode, var_B2, Shift, 5)
  loc_134E936:         If (var_B2 = &HFF) Then
  loc_134E983:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, CByte((CInt(9) + 1)))
  loc_134E993:         End If
  loc_134E993:       End If
  loc_134E996:     Else
  loc_134E99D:       If (var_B0 = CLng(6)) Then
  loc_134E9E0:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_134E9E9:           Call Proc_169_90_187BCF4(KeyCode, var_B2, 0, 0)
  loc_134E9F4:           If (var_B2 = &HFF) Then
  loc_134EA41:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 9, CByte((CInt(9) + 1)))
  loc_134EA51:           End If
  loc_134EA51:         End If
  loc_134EA54:       Else
  loc_134EA5B:         If (var_B0 = CLng(7)) Then
  loc_134EA9E:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_134EAA7:             Call Proc_169_90_187BCF4(KeyCode, var_B2, 0, 0)
  loc_134EAB2:             If (var_B2 = &HFF) Then
  loc_134EAFF:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, 9, CByte((CInt(9) + 1)))
  loc_134EB0F:             End If
  loc_134EB0F:           End If
  loc_134EB12:         Else
  loc_134EB19:           If (var_B0 = CLng(2)) Then
  loc_134EB26:             If (CLng(Shift) = &HD) Then
  loc_134EB2F:               Call Proc_169_90_187BCF4(KeyCode, var_B2, 0, 0)
  loc_134EB3A:               If (var_B2 = &HFF) Then
  loc_134EB87:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, CByte((CInt(6) + 1)), 0)
  loc_134EBAA:                 var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_134EBB2:                 var_100 = CVar(CLng(2)) 'Long
  loc_134EBE5:                 If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_134EBFA:                   Me.FGrid.Col = CVar(CLng(3))
  loc_134EC05:                 Else
  loc_134EC08:                   var_D8 = CVar(CLng(5)) 'Long
  loc_134EC17:                   Me.FGrid.Col = var_D8
  loc_134EC1F:                 End If
  loc_134EC1F:               End If
  loc_134EC1F:             End If
  loc_134EC22:           Else
  loc_134EC29:             If (var_B0 = CLng(&HA)) Then
  loc_134EC6C:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_72 = &HFF))) Then
  loc_134EC75:                 Call Proc_169_90_187BCF4(KeyCode, var_B2, var_100, var_D8, 0)
  loc_134EC80:                 If (var_B2 = &HFF) Then
  loc_134ECC6:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72, &HA, 0)
  loc_134ECD6:                 End If
  loc_134ECD6:               End If
  loc_134ECD6:             End If
  loc_134ECD6:           End If
  loc_134ECD6:         End If
  loc_134ECD6:       End If
  loc_134ECD6:     End If
  loc_134ECD6:   End If
  loc_134ECD6: End If
  loc_134ECD6: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '109CCD8
  'Data Table: 56D390
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_A4 As String
  loc_109CA1B: Proc_6_58_E054C0(arg_10)
  loc_109CA2C: If (KeyAscii = 0) Then
  loc_109CA42:   var_A0 = CLng(Me.FGrid.Col)
  loc_109CA52:   If (var_A0 = CLng(3)) Then
  loc_109CA71:     If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_109CA9E:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_100, arg_10)
  loc_109CAD0:       Proc_6_138_106D6F8(Me.DGItem, global_100, KeyAscii, Me.FGPoint)
  loc_109CB10:       Call Proc_169_96_11D7488(CStr(Me.Fields.Item("Code").Value), "Name", 0)
  loc_109CB22:     End If
  loc_109CB25:   Else
  loc_109CB2C:     If (var_A0 = CLng(2)) Then
  loc_109CB4A:       If (((arg_10 >= &H41) And (arg_10 <= &H5A)) Or ((arg_10 >= &H61) And (arg_10 <= &H7A))) Then
  loc_109CB5F:         Me.FGrid.Col = CVar(CLng(3))
  loc_109CB83:         If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_109CB95:           var_A4 = "Name"
  loc_109CBB0:           Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_100, arg_10)
  loc_109CBBF:         End If
  loc_109CBBF:       End If
  loc_109CBC2:     Else
  loc_109CBC9:       If (var_A0 = CLng(6)) Then
  loc_109CBF0:         Set var_AC = Me.FGrid
  loc_109CC01:         var_A4 = CStr(var_AC.TextMatrix))
  loc_109CC1F:         If (CDbl(Val(var_A4)) = CDbl(0)) Then
  loc_109CC2C:           Set var_8C = Me.TxtGrid
  loc_109CC32:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, CVar(CLng(&H1F)), CVar(CLng(Me.FGrid.Row)))
  loc_109CC4D:           Proc_6_42_129A86C(var_AC, arg_10, 7, 3)
  loc_109CC5C:         Else
  loc_109CC66:           Set var_8C = Me.TxtGrid
  loc_109CC6C:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_109CC87:           Proc_6_42_129A86C(var_AC, arg_10, 7, 0)
  loc_109CC93:         End If
  loc_109CC96:       Else
  loc_109CC9D:         If (var_A0 = CLng(7)) Then
  loc_109CCAA:           Set var_8C = Me.TxtGrid
  loc_109CCB0:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_109CCCB:           Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_109CCD7:         End If
  loc_109CCD7:       End If
  loc_109CCD7:     End If
  loc_109CCD7:   End If
  loc_109CCD7: End If
  loc_109CCD7: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1099F60
  'Data Table: 56D390
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B0 As MSHFlexGrid
  Dim var_AC As TextBox
  Dim var_100 As Variant
  loc_1099CB8: On Error Goto loc_1099F58
  loc_1099CBE: var_86 = KeyCode
  loc_1099CC7: If (var_86 = 0) Then
  loc_1099CDD:   var_A0 = CLng(Me.FGrid.Col)
  loc_1099CED:   If (var_A0 = CLng(3)) Then
  loc_1099D13:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_1099D24:       Call TxtGrid_KeyDown(KeyCode, global_74)
  loc_1099D29:     End If
  loc_1099D2D:     Set var_AC = Me.TxtGrid
  loc_1099D38:     var_A8 = "Name"
  loc_1099D53:     Proc_6_89_146F1AC(var_AC, KeyCode, global_100, Shift, var_A8)
  loc_1099D65:   Else
  loc_1099D6C:     If (var_A0 = CLng(6)) Then
  loc_1099D9C:       Set var_8C = Me.TxtGrid
  loc_1099DA2:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(6)), CVar(CLng(Me.FGrid.Row)))
  loc_1099DAA:       &HFF = var_AC.Text
  loc_1099DB9:       var_100 = CVar(CStr(Val(var_A8))) 'String
  loc_1099DC1:       Set var_114 = Me.FGrid
  loc_1099DC7:       LateIdCallSt
  loc_1099DE7:     Else
  loc_1099DEE:       If (var_A0 = CLng(&HA)) Then
  loc_1099DFB:         Set var_B0 = Me.TxtGrid
  loc_1099E01:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_114, var_114, var_100)
  loc_1099E13:         Set var_8C = Me.TxtGrid
  loc_1099E19:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8)
  loc_1099E21:         0 = var_AC.Text
  loc_1099E84:         If CBool((Len(var_A8) = 0) Or (Ucase(Mid(CVar(var_114), 1, 1)) = "Y")) Then
  loc_1099E94:           Set var_8C = Me.TxtGrid
  loc_1099E9A:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, "Yes")
  loc_1099EA2:           var_AC.Text = var_A0
  loc_1099EB1:         Else
  loc_1099EBB:           Set var_8C = Me.TxtGrid
  loc_1099EC1:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1099F03:           If (Ucase(Mid(CVar(var_AC), 1, 1)) = "N") Then
  loc_1099F13:             Set var_8C = Me.TxtGrid
  loc_1099F19:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1099F21:             var_AC.Text = "No"
  loc_1099F30:           Else
  loc_1099F3D:             Set var_8C = Me.TxtGrid
  loc_1099F43:             Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_1099F4B:             var_AC.Text = "Yes"
  loc_1099F57:           End If
  loc_1099F57:         End If
  loc_1099F57:       End If
  loc_1099F57:     End If
  loc_1099F57:   End If
  loc_1099F57: End If
  loc_1099F57: Exit Sub
  loc_1099F58: ' Referenced from: 1099CB8
  loc_1099F58: Proc_6_60_E62BC4(var_86)
  loc_1099F5D: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E237C0
  'Data Table: 56D390
  Dim arg_10 As Integer
  loc_E237A8: If (Cancel = 0) Then
  loc_E237B1:   Call Proc_169_90_187BCF4(Cancel, var_88)
  loc_E237BA:   arg_10 = Not(var_88)
  loc_E237BD: End If
  loc_E237BD: Exit Sub
End Sub

Public Function global_52Get() '56F524
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '56F533
  global_52 = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E10D44
  'Data Table: 56D390
  loc_E10D3C: global_172 = vNewValue
  loc_E10D40: Exit Sub
End Sub

Public Property Get PTableNo() 'E0D744
  'Data Table: 56D390
  loc_E0D738: var_88 = global_172
  loc_E0D73B: PTableNo = 
End Sub

Public Property Let pRestCode(vNewValue) 'E101BC
  'Data Table: 56D390
  loc_E101B4: global_176 = vNewValue
  loc_E101B8: Exit Sub
End Sub

Public Property Get pRestCode() 'E0D2C4
  'Data Table: 56D390
  loc_E0D2B8: var_88 = global_176
  loc_E0D2BB: pRestCode = 
End Sub

Public Property Get OpenMode() 'E061C0
  'Data Table: 56D390
  loc_E061B9: OpenMode = global_168
End Sub

Public Property Let OpenMode(vNewValue) 'E01310
  'Data Table: 56D390
  loc_E0130A: global_168 = vNewValue
  loc_E0130D: Exit Sub
End Sub

Public Property Get oVType() 'E0FF34
  'Data Table: 56D390
  loc_E0FF28: var_88 = global_164
  loc_E0FF2B: oVType = 
End Sub

Public Property Let oVType(vNewValue) 'E0FB8C
  'Data Table: 56D390
  loc_E0FB84: global_164 = vNewValue
  loc_E0FB88: Exit Sub
End Sub

Public Sub UpdateDetail() 'E77288
  'Data Table: 56D390
  Dim var_8C As TextBox
  Dim var_94 As TextBox
  loc_E77242: Set var_88 = Me.TxtCust
  loc_E77248: Call 0.Method_UpdateDetail0 (CInt(1), var_8C)
  loc_E77263: Set var_90 = Me.Txt
  loc_E77269: Call 0.Method_UpdateDetail0 (CInt(1), var_94)
  loc_E77271: var_94.Text = var_8C.Text
  loc_E77284: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94BD0
  'Data Table: 56D390
  Dim Me As Recordset15
  loc_E94B5E: On Error Goto loc_E94BC7
  loc_E94B67: Me.MoveFirst
  loc_E94B91: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94BB9: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E94BC1: Call Proc_169_93_18AB3CC(0)
  loc_E94BC6: Exit Sub
  loc_E94BC7: ' Referenced from: E94B5E
  loc_E94BC7: Proc_6_60_E62BC4(var_A0)
  loc_E94BCC: Exit Sub
End Sub

Public Sub Proc_169_69_1B17158(arg_C) '1B17158
  'Data Table: 56D390
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_E8 As Variant
  Dim var_BC As String
  Dim unk_56D39B As Connection15
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_15C As Variant
  Dim var_1BC As Integer
  Dim var_180 As String
  Dim var_1A8 As Variant
  Dim var_1AC As Variant
  Dim var_1C0 As Variant
  Dim var_250 As Variant
  Dim var_88 As Recordset15
  Dim var_288 As Variant
  Dim var_FC As Variant
  Dim var_298 As TextBox
  Dim var_A8 As Variant
  Dim var_278 As Label
  loc_1B12A68: Set var_90 = Me.TxtGt
  loc_1B12A6E: Call 0.Method_Proc_169_69_1B171580 (1, var_94)
  loc_1B12A76: var_96 = var_94.TabIndex
  loc_1B12A7E: var_8A = var_96
  loc_1B12A8C: Set var_90 = Me.TopCtrl1
  loc_1B12A92: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_8A)
  loc_1B12AAB: If (CStr() = "Add") Then
  loc_1B12ABA:   Set var_90 = Me.TxtPer
  loc_1B12AC0:   Call 0.Method_Proc_169_69_1B17158C (var_96, var_8C)
  loc_1B12ACB:   For var_B0 =  To var_96: 1 = var_B0 'Integer
  loc_1B12ADD:     Set var_90 = Me.TxtPer
  loc_1B12AE3:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B12AEB:     var_94.Visible = False
  loc_1B12AFA:   Next var_B0 'Integer
  loc_1B12B0B:   Set var_90 = Me.TxtGt
  loc_1B12B11:   Call 0.Method_Proc_169_69_1B17158C (var_96, var_8C)
  loc_1B12B1C:   For var_B4 =  To var_96: 1 = var_B4 'Integer
  loc_1B12B2E:     Set var_90 = Me.TxtGt
  loc_1B12B34:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B12B3C:     var_94.Visible = False
  loc_1B12B4B:   Next var_B4 'Integer
  loc_1B12B5C:   Set var_90 = Me.LblCap
  loc_1B12B62:   Call 0.Method_Proc_169_69_1B17158C (var_96, var_8C)
  loc_1B12B6D:   For var_B8 =  To var_96: 1 = var_B8 'Integer
  loc_1B12B7F:     Set var_90 = Me.LblCap
  loc_1B12B85:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B12B8D:     var_94.Visible = False
  loc_1B12B9C:   Next var_B8 'Integer
  loc_1B12BA1: End If
  loc_1B12BA5: Set var_90 = Me.TopCtrl1
  loc_1B12BAB: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1B12BC4: If (CStr() = "Add") Then
  loc_1B12BEB:   var_E8 = 0
  loc_1B12C08:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1B12C29:   unk_56D39B.Execute var_BC & "' and Code='" & global_52 & "'", var_A8, -1
  loc_1B12C31:   var_90 = var_90.Fields
  loc_1B12C39:   var_E8 = var_94.Item(var_94)
  loc_1B12C41:   var_EC = var_EC.Value
  loc_1B12C5C:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1B12C6F:   var_1BC = 0
  loc_1B12C8F:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_1B12C9F:   unk_56D39B.Execute var_180 & "'", var_1A4, -1
  loc_1B12CA7:   var_1A8 = var_1A8.Fields
  loc_1B12CAF:   var_1BC = var_1AC.Item(var_1AC)
  loc_1B12CB7:   var_1C0 = var_1C0.Value
  loc_1B12CD7:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1B12CE8:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F92078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1B12CF6:   unk_56D39B.Execute CStr(var_250), var_274, -1
  loc_1B12D01:   Set var_88 = var_278
  loc_1B12D4C: Else
  loc_1B12D70:   var_E8 = 0
  loc_1B12D8D:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1B12DAE:   unk_56D39B.Execute var_BC & "' and Code='" & global_52 & "'", var_A8, -1
  loc_1B12DB6:   var_90 = var_90.Fields
  loc_1B12DBE:   var_E8 = var_94.Item(var_94)
  loc_1B12DC6:   var_EC = var_EC.Value
  loc_1B12DE1:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1B12DF4:   var_1BC = 0
  loc_1B12E14:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_1B12E24:   unk_56D39B.Execute var_180 & "'", var_1A4, -1
  loc_1B12E2C:   var_1A8 = var_1A8.Fields
  loc_1B12E34:   var_1BC = var_1AC.Item(var_1AC)
  loc_1B12E3C:   var_1C0 = var_1C0.Value
  loc_1B12E5C:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F92078 & "' and V_Type='"))
  loc_1B12E7B:   unk_56D39B.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1B12E86:   Set var_88 = var_278
  loc_1B12ECE: End If
  loc_1B12ED5: Set var_90 = Me.LblCap
  loc_1B12EDB: Call 0.Method_Proc_169_69_1B171588 (var_96)
  loc_1B12F0B: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1B12F2D:   Set var_90 = Me.LblCap
  loc_1B12F33:   Call 0.Method_Proc_169_69_1B171588 (var_96, var_8C)
  loc_1B12F3E:   For var_284 = var_278 To var_96: CInt((var_88.RecordCount + 1)) = var_284 'Integer
  loc_1B12F4E:     Set var_90 = Me.LblCap
  loc_1B12F54:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B12F65:     Me.LblCap.Unload var_94
  loc_1B12F7B:     Set var_90 = Me.LblDummy
  loc_1B12F81:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B12F92:     Me.LblDummy.Unload var_94
  loc_1B12FA8:     Set var_90 = Me.LblAt
  loc_1B12FAE:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B12FBF:     Me.LblAt.Unload var_94
  loc_1B12FD5:     Set var_90 = Me.TxtPer
  loc_1B12FDB:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B12FEC:     Me.TxtPer.Unload var_94
  loc_1B13002:     Set var_90 = Me.TxtGt
  loc_1B13008:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B13019:     Me.TxtGt.Unload var_94
  loc_1B13028:   Next var_284 'Integer
  loc_1B1302D: End If
  loc_1B13041: If (var_88.RecordCount > 0) Then
  loc_1B1307D:   Set var_EC = Me.Txt
  loc_1B13083:   Call 0.Method_Proc_169_69_1B171580 (CInt(&H12), var_1A8)
  loc_1B1308B:   var_1A8.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_1B130A1:   ' Referenced from: 1B14CC7
  loc_1B130A7:   var_96 = var_88.EOF
  loc_1B130B0:   If Not(var_96) Then
  loc_1B130EF:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1B13123:       Set var_EC = Me.LblDummy
  loc_1B13129:       Call 0.Method_Proc_169_69_1B171588 (var_96)
  loc_1B13143:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1B13178:         Set var_EC = Me.LblDummy
  loc_1B1317E:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B1318F:         Me.LblDummy.Load var_1A8
  loc_1B131A2:       End If
  loc_1B131ED:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B13202:       Set var_1AC = Me.LblDummy
  loc_1B13208:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B13210:       var_1C0.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1B1325F:       Set var_EC = Me.TxtPer
  loc_1B13265:       Call 0.Method_Proc_169_69_1B171588 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B1327F:       If (var_1A8 > CVar(var_96)) Then
  loc_1B132B4:         Set var_EC = Me.TxtPer
  loc_1B132BA:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B132CB:         Me.TxtPer.Load var_1A8
  loc_1B132DE:       End If
  loc_1B13316:       Set var_EC = Me.TxtPer
  loc_1B1331C:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B13324:       var_1A8.TabIndex = (var_8A + 1)
  loc_1B1333D:       var_8A = (var_8A + 1)
  loc_1B13381:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B133C1:       Set var_1AC = Me.TxtPer
  loc_1B133C7:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1B133CF:       var_1C0.Visible = var_8A
  loc_1B1342E:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B1348D:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B13496:         Set var_278 = Me.TxtPer
  loc_1B1349C:         Call 0.Method_Proc_169_69_1B171580 (CInt(True), var_288)
  loc_1B134DE:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B134E7:         Set var_EC = Me.TxtPer
  loc_1B134ED:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_1B13511:         Set var_294 = Me.TxtPer
  loc_1B13517:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_298)
  loc_1B1351F:         var_298.Top = ((var_1A8.Top + var_288.Height) + CDbl(&HF))
  loc_1B13548:       End If
  loc_1B13584:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B135E3:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B135EC:         Set var_EC = Me.TxtPer
  loc_1B135F2:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_1B1360D:         Set var_278 = Me.TxtPer
  loc_1B13613:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B1361B:         var_288.Left = var_1A8.Left
  loc_1B1363A:       End If
  loc_1B1363E:       Set var_90 = Me.TopCtrl1
  loc_1B13644:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1A8)
  loc_1B1365D:       If (CStr() = "Add") Then
  loc_1B136BD:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B1370A:         Set var_278 = Me.TxtPer
  loc_1B13710:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_1C0.Value), var_288)
  loc_1B13718:         var_288.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1B13740:       End If
  loc_1B1378B:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B137A0:       Set var_1AC = Me.TxtPer
  loc_1B137A6:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B137AE:       var_1C0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1B13805:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B1383C:         Set var_EC = Me.TxtPer
  loc_1B13842:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1384A:         var_1A8.FontBold = True
  loc_1B13860:       Else
  loc_1B13894:         Set var_EC = Me.TxtPer
  loc_1B1389A:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B138A2:         var_1A8.FontBold = False
  loc_1B138B5:       End If
  loc_1B138EE:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B13925:         Set var_EC = Me.TxtPer
  loc_1B1392B:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B13933:         var_1A8.Enabled = False
  loc_1B13949:       Else
  loc_1B1397D:         Set var_EC = Me.TxtPer
  loc_1B13983:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1398B:         var_1A8.Enabled = True
  loc_1B1399E:       End If
  loc_1B139A2:       Set var_90 = Me.TopCtrl1
  loc_1B139A8:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1B139C1:       If (CStr() = "Browse") Then
  loc_1B139F8:         Set var_EC = Me.TxtPer
  loc_1B139FE:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B13A06:         var_1A8.Enabled = False
  loc_1B13A19:       End If
  loc_1B13A55:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1B13A8C:         Set var_EC = Me.TxtPer
  loc_1B13A92:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B13A9A:         var_1A8.Enabled = False
  loc_1B13AAD:       End If
  loc_1B13ADE:       Set var_EC = Me.LblCap
  loc_1B13AE4:       Call 0.Method_Proc_169_69_1B171588 (var_96)
  loc_1B13AFE:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1B13B33:         Set var_EC = Me.LblCap
  loc_1B13B39:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B13B4A:         Me.LblCap.Load var_1A8
  loc_1B13B5D:       End If
  loc_1B13B91:       Set var_EC = Me.LblCap
  loc_1B13B97:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B13B9F:       var_1A8.Visible = True
  loc_1B13C0E:       Set var_EC = Me.TxtPer
  loc_1B13C14:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B13C2F:       Set var_278 = Me.LblCap
  loc_1B13C35:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B13C3D:       var_288.Top = var_1A8.Top
  loc_1B13C98:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B13CDC:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B13CF7:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B13D00:         Set var_EC = Me.LblCap
  loc_1B13D06:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B13D21:         Set var_278 = Me.LblCap
  loc_1B13D27:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_1C0.Value), var_288)
  loc_1B13D2F:         var_288.Left = var_1A8.Left
  loc_1B13D4E:       End If
  loc_1B13DAE:       Set var_1AC = Me.LblCap
  loc_1B13DB4:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1C0)
  loc_1B13DBC:       var_1C0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1B13E25:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B13E3A:       Set var_1AC = Me.LblCap
  loc_1B13E40:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B13E48:       var_1C0.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1B13E9F:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B13ED6:         Set var_EC = Me.LblCap
  loc_1B13EDC:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B13EE4:         var_1A8.FontBold = True
  loc_1B13EFA:       Else
  loc_1B13F2E:         Set var_EC = Me.LblCap
  loc_1B13F34:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B13F3C:         var_1A8.FontBold = False
  loc_1B13F4F:       End If
  loc_1B13F80:       Set var_EC = Me.LblAt
  loc_1B13F86:       Call 0.Method_Proc_169_69_1B171588 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B13FA0:       If (var_1A8 > CVar(var_96)) Then
  loc_1B13FD5:         Set var_EC = Me.LblAt
  loc_1B13FDB:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B13FEC:         Me.LblAt.Load var_1A8
  loc_1B13FFF:       End If
  loc_1B14040:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B14080:       Set var_1AC = Me.LblAt
  loc_1B14086:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B1408E:       var_1C0.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1B140F2:       var_1C0 = var_88.Fields.Item("SNo")
  loc_1B1410D:       Set var_EC = Me.TxtPer
  loc_1B14113:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1412E:       Set var_278 = Me.LblAt
  loc_1B14134:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1C0.Value), var_288)
  loc_1B1413C:       var_288.Top = var_1A8.Top
  loc_1B14194:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B141CB:         Set var_EC = Me.LblAt
  loc_1B141D1:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B141D9:         var_1A8.FontBold = True
  loc_1B141EF:       Else
  loc_1B14223:         Set var_EC = Me.LblAt
  loc_1B14229:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B14231:         var_1A8.FontBold = False
  loc_1B14244:       End If
  loc_1B14293:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B142A8:       Set var_1AC = Me.LblAt
  loc_1B142AE:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B142B6:       var_1C0.Tag = CStr(Trim(CVar(var_88.Fields.Item("RoundOff"))))
  loc_1B14310:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B1436F:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B14378:         Set var_EC = Me.LblAt
  loc_1B1437E:         Call 0.Method_Proc_169_69_1B171580 (CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))), var_1A8)
  loc_1B14399:         Set var_278 = Me.LblAt
  loc_1B1439F:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B143A7:         var_288.Left = var_1A8.Left
  loc_1B143C6:       End If
  loc_1B143F7:       Set var_EC = Me.TxtGt
  loc_1B143FD:       Call 0.Method_Proc_169_69_1B171588 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B14417:       If (var_1A8 > CVar(var_96)) Then
  loc_1B1444C:         Set var_EC = Me.TxtGt
  loc_1B14452:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B14463:         Me.TxtGt.Load var_1A8
  loc_1B14476:       End If
  loc_1B144AE:       Set var_EC = Me.TxtGt
  loc_1B144B4:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B144BC:       var_1A8.TabIndex = (var_8A + 1)
  loc_1B144D5:       var_8A = (var_8A + 1)
  loc_1B1450C:       Set var_EC = Me.TxtGt
  loc_1B14512:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8, &HFF)
  loc_1B1451A:       var_1A8.Visible = var_8A
  loc_1B14589:       Set var_EC = Me.TxtPer
  loc_1B1458F:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B145AA:       Set var_278 = Me.TxtGt
  loc_1B145B0:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B145B8:       var_288.Top = var_1A8.Top
  loc_1B14613:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B14672:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B1467B:         Set var_EC = Me.TxtGt
  loc_1B14681:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1469C:         Set var_278 = Me.TxtGt
  loc_1B146A2:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B146AA:         var_288.Left = var_1A8.Left
  loc_1B146C9:       End If
  loc_1B146CD:       Set var_90 = Me.TopCtrl1
  loc_1B146D3:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1A8)
  loc_1B146EC:       If (CStr() = "Add") Then
  loc_1B1474C:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B14799:         Set var_278 = Me.TxtGt
  loc_1B1479F:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_1C0.Value), var_288)
  loc_1B147A7:         var_288.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1B147CF:       End If
  loc_1B14817:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B1481F:       var_FC = var_1A8.Value
  loc_1B1482C:       Set var_1AC = Me.TxtGt
  loc_1B14832:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_FC), var_1C0)
  loc_1B1483A:       var_1C0.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B1488F:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B148C6:         Set var_EC = Me.TxtGt
  loc_1B148CC:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B148D4:         var_1A8.FontBold = True
  loc_1B148EA:       Else
  loc_1B1491E:         Set var_EC = Me.TxtGt
  loc_1B14924:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1492C:         var_1A8.FontBold = False
  loc_1B1493F:       End If
  loc_1B14978:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B149AF:         Set var_EC = Me.TxtGt
  loc_1B149B5:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B149BD:         var_1A8.Enabled = False
  loc_1B149D3:       Else
  loc_1B14A07:         Set var_EC = Me.TxtGt
  loc_1B14A0D:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B14A15:         var_1A8.Enabled = True
  loc_1B14A28:       End If
  loc_1B14A5D:       Set var_EC = Me.LblCap
  loc_1B14A63:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B14A94:       If (var_1A8.Tag = MemVar_1F92078 & "ADV") Then
  loc_1B14ACB:         Set var_EC = Me.TxtGt
  loc_1B14AD1:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B14AD9:         var_1A8.Enabled = False
  loc_1B14AEC:       End If
  loc_1B14B21:       Set var_EC = Me.LblCap
  loc_1B14B27:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B14B58:       If (var_1A8.Tag = MemVar_1F92078 & "ROFF") Then
  loc_1B14B8F:         Set var_EC = Me.TxtGt
  loc_1B14B95:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B14B9D:         var_1A8.Enabled = False
  loc_1B14BB0:       End If
  loc_1B14BB4:       Set var_90 = Me.TopCtrl1
  loc_1B14BBA:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1B14BD3:       If (CStr() = "Browse") Then
  loc_1B14C0A:         Set var_EC = Me.TxtGt
  loc_1B14C10:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B14C18:         var_1A8.Enabled = False
  loc_1B14C2B:       End If
  loc_1B14C67:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1B14C91:         var_A8 = var_88.Fields.Item("SNo").Value
  loc_1B14C9E:         Set var_EC = Me.TxtGt
  loc_1B14CA4:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_A8), var_1A8)
  loc_1B14CAC:         var_1A8.Enabled = False
  loc_1B14CBF:       End If
  loc_1B14CBF:     End If
  loc_1B14CC2:     var_88.MoveNext
  loc_1B14CC7:     GoTo loc_1B130A1
  loc_1B14CCA:   End If
  loc_1B14CCA: End If
  loc_1B14CD1: Set var_90 = Me.TxtGt
  loc_1B14CD7: Call 0.Method_Proc_169_69_1B171588 (var_96)
  loc_1B14CE3: Set var_1A8 = Me.TxtGt
  loc_1B14CE9: Call 0.Method_Proc_169_69_1B171588 (var_29A)
  loc_1B14CFB: Set var_1AC = Me.TxtGt
  loc_1B14D01: Call 0.Method_Proc_169_69_1B171580 (var_29A, var_1C0)
  loc_1B14D1B: Set var_94 = Me.TxtGt
  loc_1B14D21: Call 0.Method_Proc_169_69_1B171580 (var_96, var_EC)
  loc_1B14D49: Set var_278 = Me.Txt
  loc_1B14D4F: Call 0.Method_Proc_169_69_1B171580 (CInt(&HF), var_288)
  loc_1B14D57: var_288.Top = (var_EC.Top + ((var_1C0.Height + CDbl(&HF)) * CDbl(2)))
  loc_1B14D76: Set var_90 = Me.TxtGt
  loc_1B14D7C: Call 0.Method_Proc_169_69_1B171588 (var_96)
  loc_1B14D88: Set var_1A8 = Me.TxtGt
  loc_1B14D8E: Call 0.Method_Proc_169_69_1B171588 (var_29A)
  loc_1B14DA0: Set var_1AC = Me.TxtGt
  loc_1B14DA6: Call 0.Method_Proc_169_69_1B171580 (var_29A, var_1C0)
  loc_1B14DC0: Set var_94 = Me.TxtGt
  loc_1B14DC6: Call 0.Method_Proc_169_69_1B171580 (var_96, var_EC)
  loc_1B14DE7: Set var_278 = Me.LblAdvRecd
  loc_1B14DED: var_278.Top = (var_EC.Top + ((var_1C0.Height + CDbl(&HF)) * CDbl(2)))
  loc_1B14E11: Set var_EC = Me.Txt
  loc_1B14E17: Call 0.Method_Proc_169_69_1B171580 (CInt(&HF), var_1A8)
  loc_1B14E32: Set var_90 = Me.Txt
  loc_1B14E38: Call 0.Method_Proc_169_69_1B171580 (CInt(&HF), var_94)
  loc_1B14E5C: Set var_1AC = Me.Txt
  loc_1B14E62: Call 0.Method_Proc_169_69_1B171580 (CInt(&H13), var_1C0)
  loc_1B14E6A: var_1C0.Top = ((var_94.Top + var_1A8.Height) + CDbl(&HF))
  loc_1B14E8C: Set var_EC = Me.Txt
  loc_1B14E92: Call 0.Method_Proc_169_69_1B171580 (CInt(&HF), var_1A8)
  loc_1B14EAD: Set var_90 = Me.Txt
  loc_1B14EB3: Call 0.Method_Proc_169_69_1B171580 (CInt(&HF), var_94)
  loc_1B14ED0: Set var_1AC = Me.LblNetAmtPayable
  loc_1B14ED6: var_1AC.Top = ((var_94.Top + var_1A8.Height) + CDbl(&HF))
  loc_1B14EF9: Set var_90 = Me.Txt
  loc_1B14EFF: Call 0.Method_Proc_169_69_1B171580 (CInt(&H14), var_94)
  loc_1B14F07: var_94.TabIndex = (var_8A + 1)
  loc_1B14F17: Set var_90 = Me.TopCtrl1
  loc_1B14F1D: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1B14F36: If (CStr() = "Add") Then
  loc_1B14F45:   Set var_90 = Me.TxtPer1
  loc_1B14F4B:   Call 0.Method_Proc_169_69_1B17158C (var_96, var_8C)
  loc_1B14F56:   For var_29E =  To var_96: 1 = var_29E 'Integer
  loc_1B14F68:     Set var_90 = Me.TxtPer1
  loc_1B14F6E:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B14F76:     var_94.Visible = False
  loc_1B14F85:   Next var_29E 'Integer
  loc_1B14F96:   Set var_90 = Me.TxtGt1
  loc_1B14F9C:   Call 0.Method_Proc_169_69_1B17158C (var_96, var_8C)
  loc_1B14FA7:   For var_2A2 =  To var_96: 1 = var_2A2 'Integer
  loc_1B14FB9:     Set var_90 = Me.TxtGt1
  loc_1B14FBF:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B14FC7:     var_94.Visible = False
  loc_1B14FD6:   Next var_2A2 'Integer
  loc_1B14FE7:   Set var_90 = Me.LblCap1
  loc_1B14FED:   Call 0.Method_Proc_169_69_1B17158C (var_96, var_8C)
  loc_1B14FF8:   For var_2A6 =  To var_96: 1 = var_2A6 'Integer
  loc_1B1500A:     Set var_90 = Me.LblCap1
  loc_1B15010:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B15018:     var_94.Visible = False
  loc_1B15027:   Next var_2A6 'Integer
  loc_1B1502C: End If
  loc_1B15030: Set var_90 = Me.TopCtrl1
  loc_1B15036: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1B1504F: If (CStr() = "Add") Then
  loc_1B15076:   var_E8 = 0
  loc_1B15093:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1B150B4:   unk_56D39B.Execute MemVar_1F92078 & "ROFF" & "' and Code='" & global_52 & "'", var_A8, -1
  loc_1B150BC:   var_90 = var_90.Fields
  loc_1B150C4:   var_E8 = var_94.Item(var_94)
  loc_1B150CC:   var_EC = var_EC.Value
  loc_1B150E7:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1B150FA:   var_1BC = 0
  loc_1B1511A:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_1B1512A:   unk_56D39B.Execute var_180 & "'", var_1A4, -1
  loc_1B15132:   var_1A8 = var_1A8.Fields
  loc_1B1513A:   var_1BC = var_1AC.Item(var_1AC)
  loc_1B15142:   var_1C0 = var_1C0.Value
  loc_1B15162:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate<=", var_15C & "' and V_Type='")
  loc_1B15173:   var_250 = CVar("Select * From SundryType WHERE logsite_code='" & MemVar_1F92078 & "' and V_Type='") & var_220 & "  Order by AppDate Desc) Order by SNO" 
  loc_1B15181:   unk_56D39B.Execute CStr(var_250), var_274, -1
  loc_1B1518C:   Set var_88 = var_278
  loc_1B151D7: Else
  loc_1B151FB:   var_E8 = 0
  loc_1B15218:   var_BC = "Select 'B'+ShortName From Depart Where LOGSITE_CODE='" & MemVar_1F92078
  loc_1B15239:   unk_56D39B.Execute MemVar_1F92078 & "ROFF" & "' and Code='" & global_52 & "'", var_A8, -1
  loc_1B15241:   var_90 = var_90.Fields
  loc_1B15249:   var_E8 = var_94.Item(var_94)
  loc_1B15251:   var_EC = var_EC.Value
  loc_1B1526C:   var_15C = var_FC & var_FC & "' aND AppDate in ( Select Distinct Top 1 AppDate From SundryType WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1B1527F:   var_1BC = 0
  loc_1B1529F:   var_180 = "Select 'B'+ShortName From Depart Where Code='" & global_52
  loc_1B152AF:   unk_56D39B.Execute var_180 & "'", var_1A4, -1
  loc_1B152B7:   var_1A8 = var_1A8.Fields
  loc_1B152BF:   var_1BC = var_1AC.Item(var_1AC)
  loc_1B152C7:   var_1C0 = var_1C0.Value
  loc_1B152E7:   Proc_6_7_F25D88(var_220, arg_C, var_1D0 & var_1D0 & "' aND AppDate=", var_15C & "' and V_Type='", CVar("Select * From SundryType WHERE LogSite_Code='" & MemVar_1F92078 & "' and V_Type='"))
  loc_1B15306:   unk_56D39B.Execute CStr(var_274 & var_220 & "  Order by AppDate Desc) Order by SNO"), -1, var_278
  loc_1B15311:   Set var_88 = var_278
  loc_1B15359: End If
  loc_1B15360: Set var_90 = Me.LblCap1
  loc_1B15366: Call 0.Method_Proc_169_69_1B171588 (var_96)
  loc_1B15396: If ((CLng(var_96) > var_88.RecordCount) And (var_88.RecordCount > 1)) Then
  loc_1B153B8:   Set var_90 = Me.LblCap1
  loc_1B153BE:   Call 0.Method_Proc_169_69_1B171588 (var_96, var_8C)
  loc_1B153C9:   For var_2AA = var_278 To var_96: CInt((var_88.RecordCount + 1)) = var_2AA 'Integer
  loc_1B153D9:     Set var_90 = Me.LblCap1
  loc_1B153DF:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B153F0:     Me.LblCap1.Unload var_94
  loc_1B15406:     Set var_90 = Me.LblDummy1
  loc_1B1540C:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B1541D:     Me.LblDummy1.Unload var_94
  loc_1B15433:     Set var_90 = Me.LblAt1
  loc_1B15439:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B1544A:     Me.LblAt1.Unload var_94
  loc_1B15460:     Set var_90 = Me.TxtPer1
  loc_1B15466:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B15477:     Me.TxtPer1.Unload var_94
  loc_1B1548D:     Set var_90 = Me.TxtGt1
  loc_1B15493:     Call 0.Method_Proc_169_69_1B171580 (var_8C, var_94)
  loc_1B154A4:     Me.TxtGt1.Unload var_94
  loc_1B154B3:   Next var_2AA 'Integer
  loc_1B154B8: End If
  loc_1B154CC: If (var_88.RecordCount > 0) Then
  loc_1B15508:   Set var_EC = Me.Txt
  loc_1B1550E:   Call 0.Method_Proc_169_69_1B171580 (CInt(&H12), var_1A8)
  loc_1B15516:   var_1A8.Text = CStr(var_88.Fields.Item("AppDate").Value)
  loc_1B1552C:   ' Referenced from: 1B17152
  loc_1B15532:   var_96 = var_88.EOF
  loc_1B1553B:   If Not(var_96) Then
  loc_1B1557A:     If CBool(var_88.Fields.Item("SNo").Value <> 0) Then
  loc_1B155AE:       Set var_EC = Me.LblDummy1
  loc_1B155B4:       Call 0.Method_Proc_169_69_1B171588 (var_96)
  loc_1B155CE:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1B15603:         Set var_EC = Me.LblDummy1
  loc_1B15609:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B1561A:         Me.LblDummy1.Load var_1A8
  loc_1B1562D:       End If
  loc_1B15678:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B1568D:       Set var_1AC = Me.LblDummy1
  loc_1B15693:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B1569B:       var_1C0.Tag = CStr(var_88.Fields.Item("RevCode").Value)
  loc_1B156EA:       Set var_EC = Me.TxtPer1
  loc_1B156F0:       Call 0.Method_Proc_169_69_1B171588 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B1570A:       If (var_1A8 > CVar(var_96)) Then
  loc_1B1573F:         Set var_EC = Me.TxtPer1
  loc_1B15745:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B15756:         Me.TxtPer1.Load var_1A8
  loc_1B15769:       End If
  loc_1B157A1:       Set var_EC = Me.TxtPer1
  loc_1B157A7:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B157AF:       var_1A8.TabIndex = (var_8A + 1)
  loc_1B157C8:       var_8A = (var_8A + 1)
  loc_1B1580C:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B1584C:       Set var_1AC = Me.TxtPer1
  loc_1B15852:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0, CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False)))
  loc_1B1585A:       var_1C0.Visible = var_8A
  loc_1B158B9:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B15918:         var_11C = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B15921:         Set var_278 = Me.TxtPer1
  loc_1B15927:         Call 0.Method_Proc_169_69_1B171580 (CInt(True), var_288)
  loc_1B15969:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B15972:         Set var_EC = Me.TxtPer1
  loc_1B15978:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_1B1599C:         Set var_294 = Me.TxtPer1
  loc_1B159A2:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_298)
  loc_1B159AA:         var_298.Top = ((var_1A8.Top + var_288.Height) + CDbl(&HF))
  loc_1B159D3:       End If
  loc_1B15A0F:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B15A6E:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B15A77:         Set var_EC = Me.TxtPer1
  loc_1B15A7D:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("RevCode").Value), var_1A8)
  loc_1B15A98:         Set var_278 = Me.TxtPer1
  loc_1B15A9E:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B15AA6:         var_288.Left = var_1A8.Left
  loc_1B15AC5:       End If
  loc_1B15AC9:       Set var_90 = Me.TopCtrl1
  loc_1B15ACF:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1A8)
  loc_1B15AE8:       If (CStr() = "Add") Then
  loc_1B15B48:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B15B95:         Set var_278 = Me.TxtPer1
  loc_1B15B9B:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_1C0.Value), var_288)
  loc_1B15BA3:         var_288.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1B15BCB:       End If
  loc_1B15C16:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B15C2B:       Set var_1AC = Me.TxtPer1
  loc_1B15C31:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B15C39:       var_1C0.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_1B15C90:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B15CC7:         Set var_EC = Me.TxtPer1
  loc_1B15CCD:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B15CD5:         var_1A8.FontBold = True
  loc_1B15CEB:       Else
  loc_1B15D1F:         Set var_EC = Me.TxtPer1
  loc_1B15D25:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B15D2D:         var_1A8.FontBold = False
  loc_1B15D40:       End If
  loc_1B15D79:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B15DB0:         Set var_EC = Me.TxtPer1
  loc_1B15DB6:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B15DBE:         var_1A8.Enabled = False
  loc_1B15DD4:       Else
  loc_1B15E08:         Set var_EC = Me.TxtPer1
  loc_1B15E0E:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B15E16:         var_1A8.Enabled = True
  loc_1B15E29:       End If
  loc_1B15E2D:       Set var_90 = Me.TopCtrl1
  loc_1B15E33:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1B15E4C:       If (CStr() = "Browse") Then
  loc_1B15E83:         Set var_EC = Me.TxtPer1
  loc_1B15E89:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B15E91:         var_1A8.Enabled = False
  loc_1B15EA4:       End If
  loc_1B15EE0:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1B15F17:         Set var_EC = Me.TxtPer1
  loc_1B15F1D:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B15F25:         var_1A8.Enabled = False
  loc_1B15F38:       End If
  loc_1B15F69:       Set var_EC = Me.LblCap1
  loc_1B15F6F:       Call 0.Method_Proc_169_69_1B171588 (var_96)
  loc_1B15F89:       If (var_88.Fields.Item("SNo").Value > CVar(var_96)) Then
  loc_1B15FBE:         Set var_EC = Me.LblCap1
  loc_1B15FC4:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B15FD5:         Me.LblCap1.Load var_1A8
  loc_1B15FE8:       End If
  loc_1B1601C:       Set var_EC = Me.LblCap1
  loc_1B16022:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1602A:       var_1A8.Visible = True
  loc_1B16099:       Set var_EC = Me.TxtPer1
  loc_1B1609F:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B160BA:       Set var_278 = Me.LblCap1
  loc_1B160C0:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B160C8:       var_288.Top = var_1A8.Top
  loc_1B16123:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B16167:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B16182:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B1618B:         Set var_EC = Me.LblCap1
  loc_1B16191:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B161AC:         Set var_278 = Me.LblCap1
  loc_1B161B2:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_1C0.Value), var_288)
  loc_1B161BA:         var_288.Left = var_1A8.Left
  loc_1B161D9:       End If
  loc_1B16239:       Set var_1AC = Me.LblCap1
  loc_1B1623F:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1C0)
  loc_1B16247:       var_1C0.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_1B162B0:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B162C5:       Set var_1AC = Me.LblCap1
  loc_1B162CB:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B162D3:       var_1C0.Tag = CStr(var_88.Fields.Item("SundryCode").Value)
  loc_1B1632A:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B16361:         Set var_EC = Me.LblCap1
  loc_1B16367:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B1636F:         var_1A8.FontBold = True
  loc_1B16385:       Else
  loc_1B163B9:         Set var_EC = Me.LblCap1
  loc_1B163BF:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B163C7:         var_1A8.FontBold = False
  loc_1B163DA:       End If
  loc_1B1640B:       Set var_EC = Me.LblAt1
  loc_1B16411:       Call 0.Method_Proc_169_69_1B171588 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B1642B:       If (var_1A8 > CVar(var_96)) Then
  loc_1B16460:         Set var_EC = Me.LblAt1
  loc_1B16466:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B16477:         Me.LblAt1.Load var_1A8
  loc_1B1648A:       End If
  loc_1B164CB:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B1650B:       Set var_1AC = Me.LblAt1
  loc_1B16511:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B16519:       var_1C0.Visible = CBool(IIf((var_88.Fields.Item("PerOrAmt").Value = "P"), True, False))
  loc_1B1657D:       var_1C0 = var_88.Fields.Item("SNo")
  loc_1B16598:       Set var_EC = Me.TxtPer1
  loc_1B1659E:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B165B9:       Set var_278 = Me.LblAt1
  loc_1B165BF:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1C0.Value), var_288)
  loc_1B165C7:       var_288.Top = var_1A8.Top
  loc_1B1661F:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B16656:         Set var_EC = Me.LblAt1
  loc_1B1665C:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16664:         var_1A8.FontBold = True
  loc_1B1667A:       Else
  loc_1B166AE:         Set var_EC = Me.LblAt1
  loc_1B166B4:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B166BC:         var_1A8.FontBold = False
  loc_1B166CF:       End If
  loc_1B1671E:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B16733:       Set var_1AC = Me.LblAt1
  loc_1B16739:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B16741:       var_1C0.Tag = CStr(Trim(CVar(var_88.Fields.Item("RoundOff"))))
  loc_1B1679B:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B167FA:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B16803:         Set var_EC = Me.LblAt1
  loc_1B16809:         Call 0.Method_Proc_169_69_1B171580 (CInt(Trim(CVar(var_88.Fields.Item("RoundOff")))), var_1A8)
  loc_1B16824:         Set var_278 = Me.LblAt1
  loc_1B1682A:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B16832:         var_288.Left = var_1A8.Left
  loc_1B16851:       End If
  loc_1B16882:       Set var_EC = Me.TxtGt1
  loc_1B16888:       Call 0.Method_Proc_169_69_1B171588 (var_96, var_88.Fields.Item("SNo").Value)
  loc_1B168A2:       If (var_1A8 > CVar(var_96)) Then
  loc_1B168D7:         Set var_EC = Me.TxtGt1
  loc_1B168DD:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value))
  loc_1B168EE:         Me.TxtGt1.Load var_1A8
  loc_1B16901:       End If
  loc_1B16939:       Set var_EC = Me.TxtGt1
  loc_1B1693F:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16947:       var_1A8.TabIndex = (var_8A + 1)
  loc_1B16960:       var_8A = (var_8A + 1)
  loc_1B16997:       Set var_EC = Me.TxtGt1
  loc_1B1699D:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8, &HFF)
  loc_1B169A5:       var_1A8.Visible = var_8A
  loc_1B16A14:       Set var_EC = Me.TxtPer1
  loc_1B16A1A:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16A35:       Set var_278 = Me.TxtGt1
  loc_1B16A3B:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B16A43:       var_288.Top = var_1A8.Top
  loc_1B16A9E:       If CBool(var_88.Fields.Item("SNo").Value <> 1) Then
  loc_1B16AFD:         var_FC = (var_88.Fields.Item("SNo").Value - 1)
  loc_1B16B06:         Set var_EC = Me.TxtGt1
  loc_1B16B0C:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16B27:         Set var_278 = Me.TxtGt1
  loc_1B16B2D:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_288)
  loc_1B16B35:         var_288.Left = var_1A8.Left
  loc_1B16B54:       End If
  loc_1B16B58:       Set var_90 = Me.TopCtrl1
  loc_1B16B5E:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_1A8)
  loc_1B16B77:       If (CStr() = "Add") Then
  loc_1B16BD7:         var_1C0 = var_88.Fields.Item("SNo")
  loc_1B16C24:         Set var_278 = Me.TxtGt1
  loc_1B16C2A:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_1C0.Value), var_288)
  loc_1B16C32:         var_288.Text = CStr(IIf((var_88.Fields.Item("PerOrAmt").Value = "A"), CVar(var_88.Fields.Item("SValue")), vbNullString))
  loc_1B16C5A:       End If
  loc_1B16CA2:       var_1A8 = var_88.Fields.Item("SNo")
  loc_1B16CB7:       Set var_1AC = Me.TxtGt1
  loc_1B16CBD:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_1A8.Value), var_1C0)
  loc_1B16CC5:       var_1C0.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_1B16D1A:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B16D51:         Set var_EC = Me.TxtGt1
  loc_1B16D57:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16D5F:         var_1A8.FontBold = True
  loc_1B16D75:       Else
  loc_1B16DA9:         Set var_EC = Me.TxtGt1
  loc_1B16DAF:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16DB7:         var_1A8.FontBold = False
  loc_1B16DCA:       End If
  loc_1B16E03:       If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP"))) = "Y") Then
  loc_1B16E3A:         Set var_EC = Me.TxtGt1
  loc_1B16E40:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16E48:         var_1A8.Enabled = False
  loc_1B16E5E:       Else
  loc_1B16E92:         Set var_EC = Me.TxtGt1
  loc_1B16E98:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16EA0:         var_1A8.Enabled = True
  loc_1B16EB3:       End If
  loc_1B16EE8:       Set var_EC = Me.LblCap1
  loc_1B16EEE:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16F1F:       If (var_1A8.Tag = MemVar_1F92078 & "ADV") Then
  loc_1B16F56:         Set var_EC = Me.TxtGt1
  loc_1B16F5C:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16F64:         var_1A8.Enabled = False
  loc_1B16F77:       End If
  loc_1B16FAC:       Set var_EC = Me.LblCap1
  loc_1B16FB2:       Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B16FE3:       If (var_1A8.Tag = MemVar_1F92078 & "ROFF") Then
  loc_1B1701A:         Set var_EC = Me.TxtGt1
  loc_1B17020:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B17028:         var_1A8.Enabled = False
  loc_1B1703B:       End If
  loc_1B1703F:       Set var_90 = Me.TopCtrl1
  loc_1B17045:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_1B1705E:       If (CStr() = "Browse") Then
  loc_1B17095:         Set var_EC = Me.TxtGt1
  loc_1B1709B:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B170A3:         var_1A8.Enabled = False
  loc_1B170B6:       End If
  loc_1B170F2:       If (var_88.Fields.Item("AutoManual").Value = "A") Then
  loc_1B17129:         Set var_EC = Me.TxtGt1
  loc_1B1712F:         Call 0.Method_Proc_169_69_1B171580 (CInt(var_88.Fields.Item("SNo").Value), var_1A8)
  loc_1B17137:         var_1A8.Enabled = False
  loc_1B1714A:       End If
  loc_1B1714A:     End If
  loc_1B1714D:     var_88.MoveNext
  loc_1B17152:     GoTo loc_1B1552C
  loc_1B17155:   End If
  loc_1B17155: End If
  loc_1B17155: Exit Sub
End Sub

Public Sub Proc_169_70_19122FC(arg_C) '19122FC
  'Data Table: 56D390
  Dim var_180 As Variant
  Dim var_DC As String
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_148 As String
  Dim unk_56D39B As Connection15
  Dim var_16C As Variant
  Dim var_170 As Variant
  Dim var_184 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_D0 As Variant
  Dim var_E4 As String
  Dim var_2A4 As Double
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_104 As Variant
  Dim var_2AC As Double
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_2B4 As Double
  Dim var_25C As Variant
  Dim var_27C As Variant
  Dim var_194 As Variant
  Dim var_23C As Variant
  Dim var_310 As Double
  Dim var_29C As Variant
  Dim var_2D8 As Variant
  Dim var_2F8 As Variant
  Dim var_168 As Variant
  Dim var_B4 As Double
  Dim var_384 As Double
  Dim var_88 As Recordset15
  loc_190F7DA: global_80 = CDbl(0)
  loc_190F7E9: Set var_D0 = Me.TxtGt
  loc_190F7EF: Call 0.Method_Proc_169_70_19122FC8 (var_D2, var_AA)
  loc_190F7FA: For var_D6 = global_80 To var_D2: 1 = var_D6 'Integer
  loc_190F83A:   Set var_D0 = Me.LblCap
  loc_190F840:   Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_E4, CVar("Select IsNull(Max(Nature),'') from SundryMast Where LOGSITE_CODE='" & MemVar_1F92078 & "' AND Code='"), var_168, -1)
  loc_190F875:   unk_56D39B.Execute CStr(var_170 & Trim(CVar(var_E4)) & "'"), 0, var_184
  loc_190F885:    = var_170.Item(global_80)
  loc_190F88D:    = var_184.Value
  loc_190F89A:   var_C8 = Proc_6_38_E68A98(var_E0.Tag.Fields)
  loc_190F8CA:   If (var_C8 = "Addition") Then
  loc_190F8DA:     Set var_D0 = Me.TxtGt
  loc_190F8E0:     Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_190F907:     Set var_16C = Me.TxtPer
  loc_190F90D:     Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170)
  loc_190F93A:     If ((CDbl(Val(var_E0.Text)) > CDbl(0)) And (CDbl(Val(var_170.Text)) <= CDbl(0))) Then
  loc_190F94A:       Set var_D0 = Me.TxtGt
  loc_190F950:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_190F965:       var_90 = Val(var_E0.Text)
  loc_190F972:     End If
  loc_190F975:   Else
  loc_190F97D:     If (var_C8 = "Advance") Then
  loc_190F98D:       Set var_D0 = Me.TxtGt
  loc_190F993:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_190F99B:       var_DC = var_E0.Text
  loc_190F9A8:       var_98 = Val(var_DC)
  loc_190F9B8:     Else
  loc_190F9C0:       If (var_C8 = "Redemption") Then
  loc_190F9D0:         Set var_D0 = Me.TxtGt
  loc_190F9D6:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_190F9DE:         var_98 = var_E0.Text
  loc_190F9EB:         var_A0 = Val(var_DC)
  loc_190F9FB:       Else
  loc_190FA03:         If (var_C8 = "Deduction") Then
  loc_190FA13:           Set var_D0 = Me.TxtGt
  loc_190FA19:           Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_190FA21:           var_A0 = var_E0.Text
  loc_190FA2E:           var_A8 = Val(var_DC)
  loc_190FA3E:         Else
  loc_190FA46:           If (var_C8 = "Discount") Then
  loc_190FA4E:             var_B6 = CByte(var_AA) 'Byte
  loc_190FA55:           Else
  loc_190FA5D:             If (var_C8 = "Service Charge") Then
  loc_190FA65:               var_C2 = CByte(var_AA) 'Byte
  loc_190FA6C:             Else
  loc_190FA8F:               If ((((var_C8 = "Sale Tax") Or (var_C8 = "CGST")) Or (var_C8 = "SGST")) Or (var_C8 = "IGST")) Then
  loc_190FA97:                 var_B8 = CByte(var_AA) 'Byte
  loc_190FAA1:                 global_96 = var_AA
  loc_190FAA4:               End If
  loc_190FAA4:             End If
  loc_190FAA4:           End If
  loc_190FAA4:         End If
  loc_190FAA4:       End If
  loc_190FAA4:     End If
  loc_190FAA4:   End If
  loc_190FAB1:   Set var_D0 = Me.TxtGt
  loc_190FAB7:   Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, vbNullString)
  loc_190FABF:   var_E0.Text = global_96
  loc_190FACE: Next var_D6 'Integer
  loc_190FAE6: Me.FGCat.Rows = 1
  loc_190FAF2: Set var_D0 = Me.TopCtrl1
  loc_190FAF8: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_190FB0C: Set var_E0 = Me.TopCtrl1
  loc_190FB12: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005((CStr() = "Add"))
  loc_190FB38: If ( Or (CStr() = "Edit")) Then
  loc_190FB3B:   Call Proc_169_71_12D67B4()
  loc_190FB40: End If
  loc_190FB4C: Set var_D0 = Me.TxtGt
  loc_190FB52: Call 0.Method_Proc_169_70_19122FC8 (var_D2, var_AA)
  loc_190FB5D: For var_198 =  To var_D2: 2 = var_198 'Integer
  loc_190FB70:   Set var_D0 = Me.LblCap
  loc_190FB76:   Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_190FBB1:   If (Trim(CVar(var_E0.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_190FBC1:     Set var_D0 = Me.TxtGt
  loc_190FBC7:     Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_190FBCF:     var_E0.Text = vbNullString
  loc_190FBE5:     If (var_B8 > var_B6) Then
  loc_190FC0D:       For var_19C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_19C 'Integer
  loc_190FC20:         Set var_D0 = Me.LblCap
  loc_190FC26:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_190FC61:         If (Trim(CVar(var_E0.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_190FC68:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_190FC70:           var_180 = CVar(CLng(&H14)) 'Long
  loc_190FC8A:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190FC9B:           If (var_DC = "Y") Then
  loc_190FCA2:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190FCBC:             Set var_D0 = Me.TxtPer
  loc_190FCC2:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, CVar(CLng(&HF)))
  loc_190FCCA:             var_134 = var_E0.Text
  loc_190FCD9:             var_F4 = CVar(CStr(Val(var_DC))) 'String
  loc_190FCE1:             Set var_16C = Me.FGrid
  loc_190FCE7:             LateIdCallSt
  loc_190FD1C:             Set var_D0 = Me.TxtPer
  loc_190FD22:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, CVar(CLng(&HF)), CVar(CLng(var_AC)))
  loc_190FD2A:             var_16C = var_E0.Text
  loc_190FD39:             var_F4 = CVar(CStr(Val(var_DC))) 'String
  loc_190FD41:             Set var_16C = Me.FGrid
  loc_190FD47:             LateIdCallSt
  loc_190FD5E:           End If
  loc_190FD5E:         End If
  loc_190FD68:         If (var_C2 < var_B8) Then
  loc_190FD75:           If (var_B6 < var_C2) Then
  loc_190FD7C:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190FD84:             var_180 = CVar(CLng(6)) 'Long
  loc_190FDAD:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190FDB5:             var_1DC = CVar(CLng(8)) 'Long
  loc_190FDDE:             var_1FC = CVar(CLng(var_AC)) 'Long
  loc_190FDE6:             var_21C = CVar(CLng(&HF)) 'Long
  loc_190FE0F:             var_25C = CVar(CLng(var_AC)) 'Long
  loc_190FE17:             var_27C = CVar(CLng(&H10)) 'Long
  loc_190FE40:             var_124 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_190FE50:             var_194 = CVar(CStr(Format(var_124, "0.00"))) 'String
  loc_190FE58:             Set var_170 = Me.FGrid
  loc_190FE5E:             LateIdCallSt
  loc_190FE8F:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190FE97:             var_180 = CVar(CLng(&HF)) 'Long
  loc_190FEB1:             var_DC = CStr(Me.FGrid.TextMatrix))
  loc_190FEC2:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190FF02:             If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> "Yes")) Then
  loc_190FF09:               var_134 = CVar(CLng(var_AC)) 'Long
  loc_190FF11:               var_180 = CVar(CLng(6)) 'Long
  loc_190FF3A:               var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190FF42:               var_1DC = CVar(CLng(8)) 'Long
  loc_190FF78:               global_80 = (global_80 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_190FF90:             End If
  loc_190FF93:           Else
  loc_190FF97:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_190FF9F:             var_180 = CVar(CLng(6)) 'Long
  loc_190FFC8:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_190FFD0:             var_1DC = CVar(CLng(8)) 'Long
  loc_190FFF9:             var_1FC = CVar(CLng(var_AC)) 'Long
  loc_1910001:             var_21C = CVar(CLng(&H1B)) 'Long
  loc_191002A:             var_23C = CVar(CLng(var_AC)) 'Long
  loc_1910032:             var_25C = CVar(CLng(&HF)) 'Long
  loc_191005B:             var_29C = CVar(CLng(var_AC)) 'Long
  loc_1910063:             var_2D8 = CVar(CLng(&H10)) 'Long
  loc_1910090:             var_144 = CVar(((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) + Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_19100A0:             var_2F8 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_19100A8:             Set var_184 = Me.FGrid
  loc_19100AE:             LateIdCallSt
  loc_19100E5:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_19100ED:             var_180 = CVar(CLng(&HF)) 'Long
  loc_1910107:             var_DC = CStr(Me.FGrid.TextMatrix))
  loc_1910118:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_1910158:             If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> "Yes")) Then
  loc_191015F:               var_134 = CVar(CLng(var_AC)) 'Long
  loc_1910167:               var_180 = CVar(CLng(6)) 'Long
  loc_1910190:               var_1BC = CVar(CLng(var_AC)) 'Long
  loc_1910198:               var_1DC = CVar(CLng(8)) 'Long
  loc_19101C1:               var_1FC = CVar(CLng(var_AC)) 'Long
  loc_19101C9:               var_21C = CVar(CLng(&H1B)) 'Long
  loc_1910203:               global_80 = (global_80 + ((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) + Val(CStr(Me.FGrid.TextMatrix)))))
  loc_1910221:             End If
  loc_1910221:           End If
  loc_1910224:         Else
  loc_1910228:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_1910230:           var_180 = CVar(CLng(6)) 'Long
  loc_1910259:           var_1BC = CVar(CLng(var_AC)) 'Long
  loc_1910261:           var_1DC = CVar(CLng(8)) 'Long
  loc_191028A:           var_1FC = CVar(CLng(var_AC)) 'Long
  loc_1910292:           var_21C = CVar(CLng(&HF)) 'Long
  loc_19102BB:           var_25C = CVar(CLng(var_AC)) 'Long
  loc_19102C3:           var_27C = CVar(CLng(&H10)) 'Long
  loc_19102EC:           var_124 = CVar((((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))) 'Double
  loc_19102FC:           var_194 = CVar(CStr(Format(var_124, "0.00"))) 'String
  loc_1910304:           Set var_170 = Me.FGrid
  loc_191030A:           LateIdCallSt
  loc_191033B:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_1910343:           var_180 = CVar(CLng(&HF)) 'Long
  loc_191035D:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_191036E:           var_1BC = CVar(CLng(var_AC)) 'Long
  loc_19103AE:           If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> "Yes")) Then
  loc_19103B5:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_19103BD:             var_180 = CVar(CLng(6)) 'Long
  loc_19103E6:             var_1BC = CVar(CLng(var_AC)) 'Long
  loc_19103EE:             var_1DC = CVar(CLng(8)) 'Long
  loc_1910424:             global_80 = (global_80 + (Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))
  loc_191043C:           End If
  loc_191043C:         End If
  loc_1910440:         var_1BC = CVar(CLng(var_AC)) 'Long
  loc_1910448:         var_1DC = CVar(CLng(6)) 'Long
  loc_1910471:         var_1FC = CVar(CLng(var_AC)) 'Long
  loc_1910482:         var_134 = CVar(CLng(var_AC)) 'Long
  loc_191048A:         var_180 = CVar(CLng(8)) 'Long
  loc_19104BA:         Set var_16C = Me.FGrid
  loc_19104C0:         LateIdCallSt
  loc_19104E5:         var_134 = CVar(CLng(var_AC)) 'Long
  loc_19104ED:         var_180 = CVar(CLng(9)) 'Long
  loc_1910507:         var_DC = CStr(Me.FGrid.TextMatrix))
  loc_191051E:         Set var_E0 = Me.LblDummy
  loc_1910524:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_16C, CStr(Val(var_DC)), var_180, var_134, var_16C, CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))))
  loc_191052C:         var_16C.Caption = var_180
  loc_1910551:         Set var_D0 = Me.LblCap
  loc_1910557:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, var_134, CVar(CLng(9)))
  loc_191055F:         var_1FC = var_E0.Tag
  loc_1910592:         If (Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1910599:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_19105BB:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_19105CC:           If (var_DC <> "Yes") Then
  loc_19105DC:             Set var_D0 = Me.TxtGt
  loc_19105E2:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, CVar(CLng(&HA)))
  loc_19105EA:             var_134 = var_E0.Text
  loc_19105FE:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_1910628:             var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1910647:             var_104 = CVar((Val(var_DC) + var_2AC)) 'Double
  loc_1910664:             Set var_170 = Me.TxtGt
  loc_191066A:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_184, CStr(Format(Trim(CVar(var_DC)), "0.00")), 1, 1, var_2AC)
  loc_1910672:             var_184.Text = CVar(CLng(&H10))
  loc_191069B:           Else
  loc_19106A8:             Set var_D0 = Me.TxtGt
  loc_19106AE:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, var_134)
  loc_19106B6:             var_2A4 = var_E0.Text
  loc_19106C3:             var_2A4 = Val(var_DC)
  loc_19106FB:             Set var_16C = Me.TxtGt
  loc_1910701:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, CStr(Format(CVar(var_2A4), "0.00")), 1, 1)
  loc_1910709:             var_170.Text = var_2A4
  loc_1910729:           End If
  loc_1910729:         End If
  loc_191072C:       Next var_19C 'Integer
  loc_1910734:     Else
  loc_1910759:       For var_314 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_AC = var_314 'Integer
  loc_191076C:         Set var_D0 = Me.LblCap
  loc_1910772:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_19107AD:         If (Trim(CVar(var_E0.Tag)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_19107B4:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_19107BC:           var_180 = CVar(CLng(&H14)) 'Long
  loc_19107D6:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_19107E7:           If (var_DC = "Y") Then
  loc_19107EE:             var_134 = CVar(CLng(var_AC)) 'Long
  loc_1910808:             Set var_D0 = Me.TxtPer
  loc_191080E:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, CVar(CLng(&HF)))
  loc_1910816:             var_134 = var_E0.Text
  loc_1910825:             var_F4 = CVar(CStr(Val(var_DC))) 'String
  loc_191082D:             Set var_16C = Me.FGrid
  loc_1910833:             LateIdCallSt
  loc_191084A:           End If
  loc_191084A:         End If
  loc_1910887:         Set var_E0 = Me.LblDummy
  loc_191088D:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_16C, CStr(Val(CStr(Me.FGrid.TextMatrix)))), CVar(CLng(9)), CVar(CLng(var_AC)))
  loc_1910895:         var_16C.Caption = var_16C
  loc_19108B1:         var_134 = CVar(CLng(var_AC)) 'Long
  loc_19108B9:         var_180 = CVar(CLng(9)) 'Long
  loc_19108E2:         var_1BC = CVar(CLng(var_AC)) 'Long
  loc_19108EA:         var_1DC = CVar(CLng(&HF)) 'Long
  loc_1910913:         var_21C = CVar(CLng(var_AC)) 'Long
  loc_191091B:         var_23C = CVar(CLng(&H10)) 'Long
  loc_1910950:         var_168 = CVar(CStr(Format(CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1910958:         Set var_16C = Me.FGrid
  loc_191095E:         LateIdCallSt
  loc_1910989:         var_134 = CVar(CLng(var_AC)) 'Long
  loc_1910991:         var_180 = CVar(CLng(&HF)) 'Long
  loc_19109AB:         var_DC = CStr(Me.FGrid.TextMatrix))
  loc_19109BC:         var_1BC = CVar(CLng(var_AC)) 'Long
  loc_19109CD:         Set var_E0 = Me.FGrid
  loc_19109FC:         If (CVar(CLng(&HA)) And (CStr(var_E0.TextMatrix)) <> "Yes")) Then
  loc_1910A03:           var_134 = CVar(CLng(var_AC)) 'Long
  loc_1910A0B:           var_180 = CVar(CLng(9)) 'Long
  loc_1910A25:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_1910A2D:           var_2A4 = Val(var_DC)
  loc_1910A3D:           global_80 = (global_80 + var_2A4)
  loc_1910A49:         End If
  loc_1910A56:         Set var_D0 = Me.LblCap
  loc_1910A5C:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, global_80, var_2A4, var_180, var_134)
  loc_1910A64:         var_1BC = var_E0.Tag
  loc_1910A97:         If (Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "DIS")) Then
  loc_1910AC0:           var_DC = CStr(Me.FGrid.TextMatrix))
  loc_1910AD1:           If (var_DC <> "Yes") Then
  loc_1910AE1:             Set var_D0 = Me.TxtGt
  loc_1910AE7:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, CVar(CLng(&HA)), CVar(CLng(var_AC)), (CDbl(Val(var_DC)) <> CDbl(0)))
  loc_1910AEF:             var_180 = var_E0.Text
  loc_1910AFC:             var_2A4 = Val(var_DC)
  loc_1910B2D:             var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1910B4C:             var_104 = CVar((var_2A4 + var_2AC)) 'Double
  loc_1910B69:             Set var_170 = Me.TxtGt
  loc_1910B6F:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_184, CStr(Format(Trim(CVar(var_DC)), "0.00")), 1, 1, var_2AC, CVar(CLng(&H10)))
  loc_1910B77:             var_184.Text = CVar(CLng(var_AC))
  loc_1910BA0:           Else
  loc_1910BAD:             Set var_D0 = Me.TxtGt
  loc_1910BB3:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, var_2A4)
  loc_1910BBB:             var_134 = var_E0.Text
  loc_1910BC8:             var_2A4 = Val(var_DC)
  loc_1910C00:             Set var_16C = Me.TxtGt
  loc_1910C06:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, CStr(Format(CVar(var_2A4), "0.00")), 1, 1)
  loc_1910C0E:             var_170.Text = var_2A4
  loc_1910C2E:           End If
  loc_1910C2E:         End If
  loc_1910C31:       Next var_314 'Integer
  loc_1910C36:     End If
  loc_1910C39:   Else
  loc_1910C46:     Set var_D0 = Me.TxtPer
  loc_1910C4C:     Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_1910C66:     If (var_E0.Visible = &HFF) Then
  loc_1910C6F:       Call Proc_169_73_12B0A14(var_AA)
  loc_1910C77:       var_B4 = var_2A4
  loc_1910C87:       Set var_D0 = Me.TxtPer
  loc_1910C8D:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_1910C95:       var_B4 = var_E0.Text
  loc_1910CE2:       Set var_16C = Me.TxtGt
  loc_1910CE8:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, CStr(Format(CVar(((var_B4 * Val(var_DC)) / CDbl(&H64))), "0.00")), 1)
  loc_1910CF0:       var_170.Text = 1
  loc_1910D1D:       Set var_D0 = Me.LblCap
  loc_1910D23:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_1910D2B:       var_2A4 = var_E0.Tag
  loc_1910D73:       If CBool((Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "ADD")) And (var_90 > CDbl(0))) Then
  loc_1910D9E:         var_DC = CStr(Format(var_90, "0.00"))
  loc_1910DAC:         Set var_D0 = Me.TxtGt
  loc_1910DB2:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_1910DBA:         var_E0.Text = 1
  loc_1910DD0:       End If
  loc_1910DDD:       Set var_D0 = Me.LblCap
  loc_1910DE3:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_1910DEB:       1 = var_E0.Tag
  loc_1910E33:       If CBool((Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "ADV")) And (var_98 > CDbl(0))) Then
  loc_1910E5E:         var_DC = CStr(Format(var_98, "0.00"))
  loc_1910E6C:         Set var_D0 = Me.TxtGt
  loc_1910E72:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_1910E7A:         var_E0.Text = 1
  loc_1910E90:       End If
  loc_1910E9D:       Set var_D0 = Me.LblCap
  loc_1910EA3:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_1910EAB:       1 = var_E0.Tag
  loc_1910EF3:       If CBool((Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "DED")) And (var_A8 > CDbl(0))) Then
  loc_1910F2C:         Set var_D0 = Me.TxtGt
  loc_1910F32:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, CStr(Format(var_A8, "0.00")))
  loc_1910F3A:         var_E0.Text = 1
  loc_1910F50:       End If
  loc_1910F55:       var_DC = CStr(var_B4)
  loc_1910F62:       Set var_D0 = Me.LblDummy
  loc_1910F68:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_1910F70:       var_E0.Caption = 1
  loc_1910F82:     Else
  loc_1910F8F:       Set var_D0 = Me.TxtPer
  loc_1910F95:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_1910FA8:       var_134 = (var_E0.Visible = 0)
  loc_1910FB9:       Set var_16C = Me.LblCap
  loc_1910FBF:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, var_DC)
  loc_1910FC7:       var_134 = var_170.Tag
  loc_1911008:       If CBool(var_2A4 And (Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "ADD"))) Then
  loc_1911033:         var_DC = CStr(Format(var_90, "0.00"))
  loc_1911041:         Set var_D0 = Me.TxtGt
  loc_1911047:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_191104F:         var_E0.Text = 1
  loc_1911068:       Else
  loc_1911075:         Set var_D0 = Me.TxtPer
  loc_191107B:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_191108E:         var_134 = (var_E0.Visible = 0)
  loc_191109F:         Set var_16C = Me.LblCap
  loc_19110A5:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, var_DC)
  loc_19110AD:         var_134 = var_170.Tag
  loc_19110EE:         If CBool(1 And (Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "ADV"))) Then
  loc_1911119:           var_DC = CStr(Format(var_98, "0.00"))
  loc_1911127:           Set var_D0 = Me.TxtGt
  loc_191112D:           Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_1911135:           var_E0.Text = 1
  loc_191114E:         Else
  loc_191115B:           Set var_D0 = Me.TxtPer
  loc_1911161:           Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_1911169:           var_D2 = var_E0.Visible
  loc_1911174:           var_134 = (var_D2 = 0)
  loc_1911185:           Set var_16C = Me.LblCap
  loc_191118B:           Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, var_DC)
  loc_1911193:           var_134 = var_170.Tag
  loc_19111D4:           If CBool(1 And (Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "DED"))) Then
  loc_191120D:             Set var_D0 = Me.TxtGt
  loc_1911213:             Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, CStr(Format(var_A8, "0.00")))
  loc_191121B:             var_E0.Text = 1
  loc_1911231:           End If
  loc_1911231:         End If
  loc_1911231:       End If
  loc_1911231:     End If
  loc_1911231:   End If
  loc_1911234: Next var_198 'Integer
  loc_191125E: For var_318 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_318 'Integer
  loc_1911268:   var_134 = CVar(CLng(var_AA)) 'Long
  loc_1911270:   var_180 = CVar(CLng(6)) 'Long
  loc_1911299:   var_1BC = CVar(CLng(var_AA)) 'Long
  loc_19112A1:   var_1DC = CVar(CLng(8)) 'Long
  loc_19112AA:   Set var_E0 = Me.FGrid
  loc_19112CA:   var_21C = CVar(CLng(var_AA)) 'Long
  loc_19112D2:   var_23C = CVar(CLng(9)) 'Long
  loc_1911311:   LateIdCallSt
  loc_191135E:   var_DC = CStr(Me.FGrid.TextMatrix))
  loc_191136F:   If (var_DC <> "Yes") Then
  loc_191137E:     Set var_D0 = Me.TxtGt
  loc_1911384:     Call 0.Method_Proc_169_70_19122FC0 (1, var_E0, var_DC, CVar(CLng(&HA)), CVar(CLng(var_AA)), Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(var_E0.TextMatrix))))), "0.00"))))
  loc_191138C:     1 = var_E0.Text
  loc_1911399:     var_2A4 = Val(var_DC)
  loc_19113CA:     var_2AC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19113E9:     var_104 = CVar((var_2A4 + var_2AC)) 'Double
  loc_1911405:     Set var_170 = Me.TxtGt
  loc_191140B:     Call 0.Method_Proc_169_70_19122FC0 (1, var_184, CStr(Format(var_E0.TextMatrix), "0.00")), 1, 1, var_2AC, CVar(CLng(9)))
  loc_1911413:     var_184.Text = CVar(CLng(var_AA))
  loc_191143C:   Else
  loc_1911448:     Set var_D0 = Me.TxtGt
  loc_191144E:     Call 0.Method_Proc_169_70_19122FC0 (1, var_E0, var_DC, var_2A4, 1)
  loc_1911456:     var_23C = var_E0.Text
  loc_1911463:     var_2A4 = Val(var_DC)
  loc_191149A:     Set var_16C = Me.TxtGt
  loc_19114A0:     Call 0.Method_Proc_169_70_19122FC0 (1, var_170, CStr(Format(CVar(var_2A4), "0.00")), 1, 1)
  loc_19114A8:     var_170.Text = var_2A4
  loc_19114C8:   End If
  loc_19114CB: Next var_318 'Integer
  loc_19114D4: Set var_D0 = Me.TopCtrl1
  loc_19114DA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_19114EE: Set var_E0 = Me.TopCtrl1
  loc_19114F4: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005((CStr() = "Add"))
  loc_191151A: If ( Or (CStr() = "Edit")) Then
  loc_1911529:   Set var_D0 = Me.TxtGt
  loc_191152F:   Call 0.Method_Proc_169_70_19122FC8 (var_D2, var_AA)
  loc_191153A:   For var_31C =  To var_D2: 2 = var_31C 'Integer
  loc_191154D:     Set var_D0 = Me.TxtPer
  loc_1911553:     Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_191155B:     var_D2 = var_E0.Visible
  loc_1911577:     Set var_16C = Me.LblCap
  loc_191157D:     Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170)
  loc_1911585:     var_DC = var_170.Tag
  loc_19115C6:     If CBool((var_D2 = &HFF) And (Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "SCH"))) Then
  loc_19115CF:       Call Proc_169_73_12B0A14(var_AA)
  loc_19115D7:       var_B4 = var_2A4
  loc_19115E7:       Set var_D0 = Me.TxtPer
  loc_19115ED:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_19115F5:       var_B4 = var_E0.Text
  loc_1911602:       var_2A4 = Val(var_DC)
  loc_1911642:       Set var_16C = Me.TxtGt
  loc_1911648:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, CStr(Format(CVar(((var_B4 * var_2A4) / CDbl(&H64))), "0.00")), 1)
  loc_1911650:       var_170.Text = 1
  loc_1911682:       Set var_D0 = Me.LblDummy
  loc_1911688:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, CStr(var_B4))
  loc_1911690:       var_E0.Caption = var_2A4
  loc_191169F:     End If
  loc_19116A2:   Next var_31C 'Integer
  loc_19116A7: End If
  loc_19116BA: Me.FGCat.Rows = 1
  loc_19116E7: For var_320 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_320 'Integer
  loc_19116F7:   If (var_B8 > var_B6) Then
  loc_1911704:     If (var_C2 < var_B8) Then
  loc_191170B:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_1911713:       var_180 = CVar(CLng(&H16)) 'Long
  loc_1911732:       var_1BC = CVar(CLng(var_AA)) 'Long
  loc_191173A:       var_1DC = CVar(CLng(8)) 'Long
  loc_1911763:       var_1FC = CVar(CLng(var_AA)) 'Long
  loc_191176B:       var_21C = CVar(CLng(6)) 'Long
  loc_19117BE:       var_384 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19117E1:       var_144 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))) - var_384)) 'Double
  loc_191181B:       var_388 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), 1, 1, var_384, CVar(CLng(&H10)), CVar(CLng(var_AA)))
  loc_1911870:       Call Proc_169_72_180FE2C(CStr(Me.FGrid.TextMatrix)), var_AA, CSng(Format((var_D2 = &HFF) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F92078 & "SCH")), "0.00")), var_388, Val(CStr(Me.FGrid.TextMatrix))), Val(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_AA)))
  loc_19118AF:     Else
  loc_19118B3:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_19118BB:       var_180 = CVar(CLng(&H16)) 'Long
  loc_19118DA:       var_1BC = CVar(CLng(var_AA)) 'Long
  loc_19118E2:       var_1DC = CVar(CLng(8)) 'Long
  loc_191190B:       var_1FC = CVar(CLng(var_AA)) 'Long
  loc_1911913:       var_21C = CVar(CLng(6)) 'Long
  loc_1911935:       var_310 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1911966:       var_384 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1911989:       var_144 = CVar(((Val(CStr(Me.FGrid.TextMatrix))) * var_310) - var_384)) 'Double
  loc_19119C3:       var_37C = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), 1, 1, var_384, CVar(CLng(&H10)), CVar(CLng(var_AA)))
  loc_19119ED:       Call Proc_169_72_180FE2C(CStr(Me.FGrid.TextMatrix)), var_AA, CSng(Format((var_D2 = &HFF) And (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = CVar(MemVar_1F92078 & "SCH")), "0.00")), var_37C, 0, var_310)
  loc_1911A23:     End If
  loc_1911A26:   Else
  loc_1911A30:     If (var_C2 < var_B8) Then
  loc_1911A37:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_1911A3F:       var_180 = CVar(CLng(&H16)) 'Long
  loc_1911A5E:       var_1BC = CVar(CLng(var_AA)) 'Long
  loc_1911A66:       var_1DC = CVar(CLng(8)) 'Long
  loc_1911AB9:       var_310 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1911B12:       var_37C = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), 1, 1, var_310, CVar(CLng(6)), CVar(CLng(var_AA)))
  loc_1911B2A:       Set var_184 = Me.FGrid
  loc_1911B67:       Call Proc_169_72_180FE2C(CStr(Me.FGrid.TextMatrix)), var_AA, CSng(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_310)), "0.00")), var_37C, Val(CStr(var_184.TextMatrix))), Val(CStr(var_184.TextMatrix))), CVar(CLng(&H1B)), CVar(CLng(var_AA)))
  loc_1911BA0:     Else
  loc_1911BA4:       var_134 = CVar(CLng(var_AA)) 'Long
  loc_1911BAC:       var_180 = CVar(CLng(&H16)) 'Long
  loc_1911BCB:       var_1BC = CVar(CLng(var_AA)) 'Long
  loc_1911BD3:       var_1DC = CVar(CLng(8)) 'Long
  loc_1911BF5:       var_2B4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1911C26:       var_310 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1911C7F:       var_378 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), 1, 1, var_310, CVar(CLng(6)), CVar(CLng(var_AA)))
  loc_1911CA9:       Call Proc_169_72_180FE2C(CStr(Me.FGrid.TextMatrix)), var_AA, CSng(Format(CVar((var_2B4 * var_310)), "0.00")), var_378, 0, var_2B4)
  loc_1911CD9:     End If
  loc_1911CD9:   End If
  loc_1911CDC: Next var_320 'Integer
  loc_1911D00: If (CLng(Me.FGCat.Rows) > 1) Then
  loc_1911D16:   Me.FGCat.FixedRows = 1
  loc_1911D1E: End If
  loc_1911D33: Set var_D0 = Me.TxtGt
  loc_1911D39: Call 0.Method_Proc_169_70_19122FC8 (var_D2, var_AA)
  loc_1911D44: For var_394 = CDbl(0) To var_D2: 1 = var_394 'Integer
  loc_1911D6F:   For var_398 = 0 To CInt((CLng(Me.FGCat.Rows) - 1)): var_AC = var_398 'Integer
  loc_1911D79:     var_134 = CVar(CLng(var_AC)) 'Long
  loc_1911D81:     var_180 = CVar(CLng(1)) 'Long
  loc_1911D9B:     var_DC = CStr(Me.FGCat.TextMatrix))
  loc_1911DB5:     Set var_E0 = Me.FGrid
  loc_1911DE3:     If (CStr(var_E0.TextMatrix)) <> "Yes") Then
  loc_1911DF3:       Set var_D0 = Me.LblCap
  loc_1911DF9:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, CVar(CLng(&HA)), CVar(CLng(Val(var_DC))))
  loc_1911E01:       var_180 = var_E0.Tag
  loc_1911E1B:       var_134 = CVar(CLng(var_AC)) 'Long
  loc_1911E63:       If (CVar(CLng(7)) = Trim(CVar(CStr(Me.FGCat.TextMatrix))))) Then
  loc_1911E94:         var_2A4 = Val(CStr(Me.FGCat.TextMatrix)))
  loc_1911EA4:         Set var_D0 = Me.TxtGt
  loc_1911EAA:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC, var_2A4, CVar(CLng(6)), CVar(CLng(var_AC)))
  loc_1911EC5:         var_148 = CStr((Val(var_DC) + var_2A4))
  loc_1911ED2:         Set var_170 = Me.TxtGt
  loc_1911ED8:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_184, CStr(var_184.TextMatrix)), Trim(CVar(var_DC)))
  loc_1911EE0:         var_184.Text = var_E0.Text
  loc_1911EFE:       End If
  loc_1911EFE:     End If
  loc_1911F01:   Next var_398 'Integer
  loc_1911F13:   Set var_D0 = Me.TxtGt
  loc_1911F19:   Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_1911F2E:   var_2A4 = Val(var_E0.Text)
  loc_1911F66:   Set var_16C = Me.TxtGt
  loc_1911F6C:   Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, CStr(Format(CVar(var_2A4), "0.00")))
  loc_1911F74:   var_170.Text = 1
  loc_1911F97: Next var_394 'Integer
  loc_1911FA8: Set var_D0 = Me.TxtGt
  loc_1911FAE: Call 0.Method_Proc_169_70_19122FC8 (var_D2, var_AA)
  loc_1911FB9: For var_39C =  To var_D2: 2 = var_39C 'Integer
  loc_1911FCC:   Set var_D0 = Me.LblCap
  loc_1911FD2:   Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0)
  loc_1911FE2:   var_F4 = CVar(var_E0.Tag) 'String
  loc_191200D:   If (Trim(var_F4) = CVar(MemVar_1F92078 & "ROFF")) Then
  loc_1912016:     Call Proc_169_73_12B0A14(var_AA)
  loc_191201E:     var_B4 = var_2A4
  loc_1912039:     Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, CStr(var_B4))
  loc_1912041:     var_E0.Caption = var_B4
  loc_1912074:     unk_56D39B.Execute "SELECT RoundOffType FROM RoundOffSetting WHERE ModuleName='Sale Bill' And LogSite_Code='" & MemVar_1F92078 & "'", var_F4, -1
  loc_191207F:     Set var_88 = Me.LblDummy
  loc_19120A3:     If (var_88.RecordCount > 0) Then
  loc_19120B5:       var_D0 = var_88.Fields
  loc_19120BD:       var_E0 = var_D0.Item("RoundOffType")
  loc_19120E9:       Proc_6_85_1261068(var_B4, CByte(2), CStr(Left(CVar(var_E0), 1)))
  loc_1912126:       Set var_16C = Me.TxtGt
  loc_191212C:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, CStr(Format(CVar(var_D0), "0.00")), 1)
  loc_1912134:       var_170.Text = 1
  loc_1912159:     Else
  loc_191215C:       var_DC = "S"
  loc_191216D:       Proc_6_85_1261068(var_B4, CByte(2), var_DC)
  loc_191219C:       var_E4 = CStr(Format(CVar(var_2A4), "0.00"))
  loc_19121AA:       Set var_D0 = Me.TxtGt
  loc_19121B0:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_E4, 1)
  loc_19121B8:       var_E0.Text = 1
  loc_19121D4:     End If
  loc_19121D7:   Else
  loc_19121DE:     If (var_AA <> arg_C) Then
  loc_19121EE:       Set var_D0 = Me.LblCap
  loc_19121F4:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, var_DC)
  loc_19121FC:       var_2A4 = var_E0.Tag
  loc_191222E:       Set var_16C = Me.LblCap
  loc_1912234:       Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_170, var_E4)
  loc_191223C:       (Trim(CVar(var_DC)) = CVar(MemVar_1F92078 & "TOT")) = var_170.Tag
  loc_1912281:       If CBool(var_2A4 Or (Trim(CVar(var_E4)) = CVar(MemVar_1F92078 & "NET"))) Then
  loc_191228A:         Call Proc_169_73_12B0A14(var_AA)
  loc_19122C4:         Set var_D0 = Me.TxtGt
  loc_19122CA:         Call 0.Method_Proc_169_70_19122FC0 (var_AA, var_E0, CStr(Format(CVar(var_2A4), "0.00")))
  loc_19122D2:         var_E0.Text = 1
  loc_19122EA:       End If
  loc_19122EA:     End If
  loc_19122EA:   End If
  loc_19122ED: Next var_39C 'Integer
  loc_19122F7: Set var_88 = Nothing
  loc_19122FA: Exit Sub
End Sub

Public Sub Proc_169_71_12D67B4
  'Data Table: 56D390
  Dim var_C4 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_9C As Double
  Dim var_120 As String
  Dim unk_56D39B As Connection15
  Dim var_8C As Recordset15
  Dim var_160 As Variant
  Dim var_148 As Variant
  Dim var_150 As Variant
  Dim var_164 As Field20
  Dim var_A4 As Double
  Dim var_188 As Variant
  Dim var_134 As Variant
  Dim var_174 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_144 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_94 As Double
  loc_12D6149: For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D8 'Integer
  loc_12D6153:   var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D615B:   var_108 = CVar(CLng(7)) 'Long
  loc_12D617D:   var_9C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12D618D:   var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6195:   var_108 = CVar(CLng(&H16)) 'Long
  loc_12D61C8:   var_120 = "SELECT TS.Code, TS.TaxCode, RM.Name, TS.Rate,RoundOff FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_12D61D8:   unk_56D39B.Execute var_120 & "' ORDER BY SNO DESC", var_144, -1
  loc_12D61E3:   Set var_8C = var_148
  loc_12D6211:   If (var_8C.RecordCount > 0) Then
  loc_12D6218:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6220:     var_108 = CVar(CLng(&H16)) 'Long
  loc_12D6241:     var_160 = 0
  loc_12D6262:     var_120 = "SELECT IsNull(Sum(TS.Rate),0) FROM TaxStru AS TS inner JOIN RevMast AS RM ON (TS.TaxCode = RM.Code) Where TS.Code='" & CStr(Me.FGrid.TextMatrix))
  loc_12D6272:     unk_56D39B.Execute var_120 & "'", var_144, -1
  loc_12D627A:     var_148 = var_148.Fields
  loc_12D6282:     var_160 = var_150.Item(var_150)
  loc_12D628A:     var_164 = var_164.Value
  loc_12D62B7:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D62BF:     var_108 = CVar(CLng(7)) 'Long
  loc_12D62ED:     var_9C = ((Val(CStr(Me.FGrid.TextMatrix))) / (CDbl(&H64) + CSng(var_174))) * CDbl(&H64))
  loc_12D62FC:     var_A4 = CDbl(0)
  loc_12D62FF:     ' Referenced from: 12D63B8
  loc_12D630E:     If Not(var_8C.EOF) Then
  loc_12D6315:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D631D:       var_108 = CVar(CLng(6)) 'Long
  loc_12D6386:       var_AC = CSng(((CVar(Val(CStr(Me.FGrid.TextMatrix)))) * (CVar(var_9C) * var_8C.Fields.Item("Rate").Value)) / 100))
  loc_12D63A3:       var_A4 = (var_AC + var_A4)
  loc_12D63AD:       var_B4 = (var_B4 + var_AC)
  loc_12D63B3:       var_8C.MoveNext
  loc_12D63B8:       GoTo loc_12D62FF
  loc_12D63BB:     End If
  loc_12D63BF:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D63C7:     var_108 = CVar(CLng(&H1A)) 'Long
  loc_12D63F2:     If (CStr(Me.FGrid.TextMatrix)) = "Y") Then
  loc_12D63F9:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6401:       var_108 = CVar(CLng(8)) 'Long
  loc_12D640B:       var_D4 = CVar(CStr(var_9C)) 'String
  loc_12D6413:       Set var_C4 = Me.FGrid
  loc_12D6419:       LateIdCallSt
  loc_12D642B:       var_134 = CVar(CLng(var_86)) 'Long
  loc_12D6433:       var_188 = CVar(CLng(6)) 'Long
  loc_12D645C:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_12D6464:       var_1E8 = CVar(CLng(9)) 'Long
  loc_12D646D:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6475:       var_108 = CVar(CLng(8)) 'Long
  loc_12D649D:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_12D64A5:       Set var_150 = Me.FGrid
  loc_12D64AB:       LateIdCallSt
  loc_12D64D0:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D64D8:       var_108 = CVar(CLng(9)) 'Long
  loc_12D6504:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12D6513:     Else
  loc_12D6517:       var_134 = CVar(CLng(var_86)) 'Long
  loc_12D651F:       var_188 = CVar(CLng(8)) 'Long
  loc_12D6528:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6530:       var_108 = CVar(CLng(7)) 'Long
  loc_12D6554:       var_144 = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_12D655C:       Set var_148 = Me.FGrid
  loc_12D6562:       LateIdCallSt
  loc_12D657F:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6587:       var_108 = CVar(CLng(8)) 'Long
  loc_12D65A6:       var_160 = CVar(CLng(var_86)) 'Long
  loc_12D65AE:       var_1A8 = CVar(CLng(8)) 'Long
  loc_12D65DB:       var_1B8 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_12D65E3:       Set var_148 = Me.FGrid
  loc_12D65E9:       LateIdCallSt
  loc_12D6609:       var_134 = CVar(CLng(var_86)) 'Long
  loc_12D6611:       var_188 = CVar(CLng(6)) 'Long
  loc_12D663A:       var_1C8 = CVar(CLng(var_86)) 'Long
  loc_12D6642:       var_1E8 = CVar(CLng(9)) 'Long
  loc_12D664B:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6653:       var_108 = CVar(CLng(8)) 'Long
  loc_12D667B:       var_174 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_12D6683:       Set var_150 = Me.FGrid
  loc_12D6689:       LateIdCallSt
  loc_12D66AE:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D66B6:       var_108 = CVar(CLng(9)) 'Long
  loc_12D66D5:       var_160 = CVar(CLng(var_86)) 'Long
  loc_12D66DD:       var_1A8 = CVar(CLng(9)) 'Long
  loc_12D670A:       var_1B8 = CVar(CStr(Format(CVar(CStr(Me.FGrid.TextMatrix))), "0.00"))) 'String
  loc_12D6712:       Set var_148 = Me.FGrid
  loc_12D6718:       LateIdCallSt
  loc_12D6738:       var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6740:       var_108 = CVar(CLng(9)) 'Long
  loc_12D676C:       var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12D6778:     End If
  loc_12D677C:     var_E8 = CVar(CLng(var_86)) 'Long
  loc_12D6784:     var_108 = CVar(CLng(&H12)) 'Long
  loc_12D678E:     var_D4 = CVar(CStr(var_A4)) 'String
  loc_12D6796:     Set var_C4 = Me.FGrid
  loc_12D679C:     LateIdCallSt
  loc_12D67AA:   End If
  loc_12D67AD: Next var_D8 'Integer
  loc_12D67B2: Exit Sub
End Sub

Public Sub Proc_169_72_180FE2C(arg_C, arg_10, arg_14) '180FE2C
  'Data Table: 56D390
  Dim var_E4 As String
  Dim var_E8 As String
  Dim unk_56D39B As Connection15
  Dim var_D8 As Recordset15
  Dim var_F8 As Variant
  Dim var_10C As Variant
  Dim var_108 As Variant
  Dim var_DA As Integer
  Dim var_94 As Double
  Dim var_86 As Integer
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  Dim var_8C As Recordset15
  Dim var_D2 As Integer
  Dim var_13C As Variant
  Dim var_12C As Variant
  Dim var_C0 As Recordset15
  Dim var_170 As Variant
  Dim var_14C As Variant
  Dim var_184 As Variant
  Dim var_198 As Variant
  Dim var_1CC As Variant
  Dim var_D0 As Double
  Dim var_200 As Double
  Dim var_16C As Variant
  Dim var_E0 As Recordset15
  Dim var_11C As MSHFlexGrid
  Dim var_1F4 As Double
  Dim var_9C As Double
  Dim var_1BC As Variant
  loc_180DB1C: unk_56D39B.Execute "Select DeskCode AS RestCode from Revmast where taxstru='" & arg_C & "'", var_108, -1
  loc_180DB27: Set var_D8 = var_10C
  loc_180DB4B: var_E4 = "SELECT TS.Code,TS.Limit, TS.TaxCode, RM.Name,RM.Sundry, TS.Rate,RoundOff,TS.CONDAPP,TS.NATURE FROM TaxStru AS TS LEFT JOIN RevMast AS RM ON TS.TaxCode = RM.Code Where TS.Code='" & arg_C
  loc_180DB5B: unk_56D39B.Execute var_E4 & "'", var_108, -1
  loc_180DB66: Set var_8C = var_10C
  loc_180DB8A: If (var_D8.RecordCount > 0) Then
  loc_180DBA2:   var_10C = var_D8.Fields
  loc_180DBC9:   If (var_10C <> Proc_6_38_E68A98(CVar(var_10C.Item("RestCode")), global_52)) Then
  loc_180DBCE:     var_DA = &HFF
  loc_180DBD4:   Else
  loc_180DBD6:     var_DA = 0
  loc_180DBD9:   End If
  loc_180DBDC: Else
  loc_180DBDE:   var_DA = 0
  loc_180DBE1: End If
  loc_180DBE4: var_94 = arg_14
  loc_180DBE9: var_86 = 1
  loc_180DBEF: var_A8 = var_94
  loc_180DBF5: var_B0 = var_94
  loc_180DBFB: var_B8 = CDbl(0)
  loc_180DC12: If (var_8C.RecordCount > 0) Then
  loc_180DC15:   ' Referenced from: 180FE00
  loc_180DC24:   If Not(var_8C.EOF) Then
  loc_180DC2B:     Set var_11C = Me.FGCat
  loc_180DC2E:     var_F8 = vbNullString
  loc_180DC53:     If (var_8C.RecordCount > 0) Then
  loc_180DC5C:       var_D2 = (var_D2 + 1)
  loc_180DC62:       var_F8 = "Nature"
  loc_180DC87:       var_13C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_F8)), var_D2, FGCat.DispID_10000, var_F8, var_B8, var_B0, var_A8)) 'String
  loc_180DC95:       var_15C = Trim(var_13C) 'Variant
  loc_180DCAE:       If (var_15C = "On Base Amt") Then
  loc_180DCD9:         var_13C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CondApp")), var_86, var_94, var_DA)) 'String
  loc_180DCFB:         If (Trim(var_13C) = "Room Rate") Then
  loc_180DD09:           If (global_112 = "Room Service") Then
  loc_180DD32:             Proc_6_39_E7C810(var_13C, CVar(var_8C.Fields.Item("Limit")), var_DA)
  loc_180DD60:             Proc_6_39_E7C810(var_16C, CVar(var_C0.Fields.Item("RoomRate")), var_13C)
  loc_180DD68:             var_184 = (var_DA <= var_16C)
  loc_180DD92:             Proc_6_39_E7C810(var_1BC, CVar(var_8C.Fields.Item("Rate")))
  loc_180DDC2:             If CBool(var_184 And (var_1BC > 0)) Then
  loc_180DE05:               If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_180DE43:                 var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_180DE56:               Else
  loc_180DE89:                 var_200 = Val(CStr(var_8C.Fields.Item("Rate").Value))
  loc_180DEB2:                 Proc_6_142_14A55B0(((var_200 * var_A8) / CDbl(&H64)), CByte(0), "U", 2)
  loc_180DEB7:                 var_D0 = var_200
  loc_180DECB:               End If
  loc_180DED2:               If (var_D0 > CDbl(0)) Then
  loc_180DEEE:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DEF6:                 var_198 = CVar(CLng(0)) 'Long
  loc_180DF00:                 var_13C = CVar(CStr(var_86)) 'String
  loc_180DF07:                 LateIdCallSt
  loc_180DF32:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180DF3A:                 var_198 = CVar(CLng(1)) 'Long
  loc_180DF44:                 var_13C = CVar(CStr(arg_10)) 'String
  loc_180DF4B:                 LateIdCallSt
  loc_180DF63:                 If (var_DA = 0) Then
  loc_180DF6A:                   Set var_170 = Me.FGCat
  loc_180DF7F:                   var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180DF87:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180DFB7:                   var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180DFBE:                   LateIdCallSt
  loc_180DFDB:                 Else
  loc_180DFF6:                   var_E8 = "Select RevCode as Code from SundryType where LogSite_Code='" & MemVar_1F92078 & "' and v_type in (Select V_Type from Voucher_Type where Restcode='"
  loc_180E034:                   var_14C = CVar(var_E8 & global_52 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180E04B:                   unk_56D39B.Execute CStr(var_14C & "')"), var_184, -1
  loc_180E056:                   Set var_E0 = var_170
  loc_180E08E:                   If (var_E0.RecordCount > 0) Then
  loc_180E0AA:                     var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E0B2:                     var_1CC = CVar(CLng(2)) 'Long
  loc_180E0E2:                     var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180E0E9:                     LateIdCallSt
  loc_180E103:                   End If
  loc_180E103:                 End If
  loc_180E11C:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E124:                 var_1CC = CVar(CLng(3)) 'Long
  loc_180E154:                 var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180E15B:                 LateIdCallSt
  loc_180E18E:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E196:                 var_198 = CVar(CLng(4)) 'Long
  loc_180E1A0:                 var_13C = CVar(CStr(var_A8)) 'String
  loc_180E1A7:                 LateIdCallSt
  loc_180E1D2:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E1DA:                 var_1CC = CVar(CLng(5)) 'Long
  loc_180E20A:                 var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180E211:                 LateIdCallSt
  loc_180E244:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E24C:                 var_198 = CVar(CLng(6)) 'Long
  loc_180E256:                 var_13C = CVar(CStr(var_D0)) 'String
  loc_180E25D:                 LateIdCallSt
  loc_180E288:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E290:                 var_1CC = CVar(CLng(7)) 'Long
  loc_180E2C0:                 var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_180E2C7:                 LateIdCallSt
  loc_180E2FA:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E302:                 var_198 = CVar(CLng(8)) 'Long
  loc_180E311:                 LateIdCallSt
  loc_180E322:               Else
  loc_180E328:                 var_86 = (var_86 - 1)
  loc_180E33E:                 var_F8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_180E354:               End If
  loc_180E36D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E375:               var_198 = CVar(CLng(6)) 'Long
  loc_180E39A:               var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180E3C3:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E3CB:               var_198 = CVar(CLng(6)) 'Long
  loc_180E3E6:               var_1F4 = Val(CStr(var_11C.TextMatrix)))
  loc_180E3F0:               var_94 = (var_94 + var_1F4)
  loc_180E407:               var_B0 = (var_B0 + var_D0)
  loc_180E40D:               var_B8 = var_D0
  loc_180E417:               var_B0 = (var_B0 + var_D0)
  loc_180E41D:               var_B8 = var_D0
  loc_180E420:             End If
  loc_180E420:           End If
  loc_180E423:         Else
  loc_180E449:           var_13C = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_180E463:           If (var_13C = "No") Then
  loc_180E4A5:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64))
  loc_180E4B8:           Else
  loc_180E518:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * (var_A8 + arg_1C)) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8)
  loc_180E51D:             var_D0 = var_B0
  loc_180E531:           End If
  loc_180E557:           Proc_6_39_E7C810(var_13C, CVar(var_8C.Fields.Item("Limit")), var_D0, var_B8, var_B0)
  loc_180E591:           Proc_6_39_E7C810(var_184, CVar(var_8C.Fields.Item("Rate")), (var_13C <= CVar(var_94)), var_94)
  loc_180E5BB:           If CBool(var_1F4 And (var_184 > 0)) Then
  loc_180E5C5:             If (var_D0 > CDbl(0)) Then
  loc_180E5E1:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E5E9:               var_198 = CVar(CLng(0)) 'Long
  loc_180E5F3:               var_13C = CVar(CStr(var_86)) 'String
  loc_180E5FA:               LateIdCallSt
  loc_180E625:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E62D:               var_198 = CVar(CLng(1)) 'Long
  loc_180E637:               var_13C = CVar(CStr(arg_10)) 'String
  loc_180E63E:               LateIdCallSt
  loc_180E656:               If (var_DA = 0) Then
  loc_180E65D:                 Set var_170 = Me.FGCat
  loc_180E672:                 var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180E67A:                 var_1CC = CVar(CLng(2)) 'Long
  loc_180E6AA:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180E6B1:                 LateIdCallSt
  loc_180E6CE:               Else
  loc_180E6E5:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_52
  loc_180E719:                 var_14C = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180E730:                 unk_56D39B.Execute CStr(var_14C & "')"), var_184, -1
  loc_180E73B:                 Set var_E0 = var_170
  loc_180E76F:                 If (var_E0.RecordCount > 0) Then
  loc_180E78B:                   var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E793:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180E7C3:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180E7CA:                   LateIdCallSt
  loc_180E7E4:                 End If
  loc_180E7E4:               End If
  loc_180E7FD:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E805:               var_1CC = CVar(CLng(3)) 'Long
  loc_180E835:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180E83C:               LateIdCallSt
  loc_180E86F:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E877:               var_198 = CVar(CLng(4)) 'Long
  loc_180E885:               var_13C = CVar(CStr((var_A8 + arg_1C))) 'String
  loc_180E88C:               LateIdCallSt
  loc_180E8B7:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E8BF:               var_1CC = CVar(CLng(5)) 'Long
  loc_180E8EF:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180E8F6:               LateIdCallSt
  loc_180E929:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E93B:               var_13C = CVar(CStr(var_D0)) 'String
  loc_180E942:               LateIdCallSt
  loc_180E95E:               var_13C = Me.FGCat.Rows
  loc_180E96D:               var_12C = CVar((CLng(var_13C) - 1)) 'Long
  loc_180E97D:               var_F8 = "Sundry"
  loc_180E9A2:               var_14C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_F8)), CVar(CLng(7)), "')", var_11C, var_13C, CVar(CLng(6)), var_F8)) 'String
  loc_180E9A9:               LateIdCallSt
  loc_180E9DA:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180E9E2:               var_198 = CVar(CLng(8)) 'Long
  loc_180E9F1:               LateIdCallSt
  loc_180E9FF:             End If
  loc_180EA18:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EA20:             var_198 = CVar(CLng(6)) 'Long
  loc_180EA45:             var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180EA6E:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EA76:             var_198 = CVar(CLng(6)) 'Long
  loc_180EA91:             var_1F4 = Val(CStr(var_11C.TextMatrix)))
  loc_180EA9B:             var_94 = (var_94 + var_1F4)
  loc_180EAB2:             var_B0 = (var_B0 + var_D0)
  loc_180EAB8:             var_B8 = var_D0
  loc_180EABB:           End If
  loc_180EABB:         End If
  loc_180EABE:       Else
  loc_180EAC9:         If (var_15C = "On Running Total") Then
  loc_180EAF2:           var_13C = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_180EB0C:           If (var_13C = "No") Then
  loc_180EB4A:             var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64))
  loc_180EB5D:           Else
  loc_180EBB9:             Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_180EBBE:             var_D0 = var_94
  loc_180EBD2:           End If
  loc_180EBF8:           Proc_6_39_E7C810(var_13C, CVar(var_8C.Fields.Item("Rate")), var_D0, var_1F4, var_198)
  loc_180EC12:           If (var_13C > 0) Then
  loc_180EC1C:             If (var_D0 > CDbl(0)) Then
  loc_180EC38:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EC40:               var_198 = CVar(CLng(0)) 'Long
  loc_180EC4A:               var_13C = CVar(CStr(var_86)) 'String
  loc_180EC51:               LateIdCallSt
  loc_180EC7C:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EC84:               var_198 = CVar(CLng(1)) 'Long
  loc_180EC8E:               var_13C = CVar(CStr(arg_10)) 'String
  loc_180EC95:               LateIdCallSt
  loc_180ECAD:               If (var_DA = 0) Then
  loc_180ECB4:                 Set var_170 = Me.FGCat
  loc_180ECC9:                 var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180ECD1:                 var_1CC = CVar(CLng(2)) 'Long
  loc_180ED01:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180ED08:                 LateIdCallSt
  loc_180ED25:               Else
  loc_180ED3C:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_52
  loc_180ED70:                 var_14C = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180ED87:                 unk_56D39B.Execute CStr(var_14C & "')"), var_184, -1
  loc_180ED92:                 Set var_E0 = var_170
  loc_180EDC6:                 If (var_E0.RecordCount > 0) Then
  loc_180EDE2:                   var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EDEA:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180EE1A:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180EE21:                   LateIdCallSt
  loc_180EE3B:                 End If
  loc_180EE3B:               End If
  loc_180EE54:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EE5C:               var_1CC = CVar(CLng(3)) 'Long
  loc_180EE8C:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180EE93:               LateIdCallSt
  loc_180EEC6:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EECE:               var_198 = CVar(CLng(4)) 'Long
  loc_180EED8:               var_13C = CVar(CStr(var_B0)) 'String
  loc_180EEDF:               LateIdCallSt
  loc_180EF0A:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EF12:               var_1CC = CVar(CLng(5)) 'Long
  loc_180EF42:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180EF49:               LateIdCallSt
  loc_180EF7C:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EF84:               var_198 = CVar(CLng(6)) 'Long
  loc_180EF8E:               var_13C = CVar(CStr(var_D0)) 'String
  loc_180EF95:               LateIdCallSt
  loc_180EFC0:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180EFC8:               var_1CC = CVar(CLng(7)) 'Long
  loc_180EFF8:               var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_180EFFF:               LateIdCallSt
  loc_180F032:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F03A:               var_198 = CVar(CLng(8)) 'Long
  loc_180F049:               LateIdCallSt
  loc_180F057:             End If
  loc_180F070:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F078:             var_198 = CVar(CLng(6)) 'Long
  loc_180F09D:             var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180F0C6:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F0CE:             var_198 = CVar(CLng(6)) 'Long
  loc_180F0F3:             var_94 = (var_94 + Val(CStr(var_11C.TextMatrix))))
  loc_180F10A:             var_B0 = (var_B0 + var_D0)
  loc_180F110:             var_B8 = var_D0
  loc_180F113:           End If
  loc_180F116:         Else
  loc_180F121:           If (var_15C = "On Prev. Tax Amt") Then
  loc_180F164:             If (Trim(CVar(var_8C.Fields.Item("RoundOff"))) = "No") Then
  loc_180F1A2:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64))
  loc_180F1B5:             Else
  loc_180F211:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_B8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_180F216:               var_D0 = var_94
  loc_180F22A:             End If
  loc_180F231:             If (var_D0 > CDbl(0)) Then
  loc_180F24D:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F255:               var_198 = CVar(CLng(0)) 'Long
  loc_180F25F:               var_13C = CVar(CStr(var_86)) 'String
  loc_180F266:               LateIdCallSt
  loc_180F291:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F299:               var_198 = CVar(CLng(1)) 'Long
  loc_180F2A3:               var_13C = CVar(CStr(arg_10)) 'String
  loc_180F2AA:               LateIdCallSt
  loc_180F2C2:               If (var_DA = 0) Then
  loc_180F2C9:                 Set var_170 = Me.FGCat
  loc_180F2DE:                 var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180F2E6:                 var_1CC = CVar(CLng(2)) 'Long
  loc_180F316:                 var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180F31D:                 LateIdCallSt
  loc_180F33A:               Else
  loc_180F351:                 var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_52
  loc_180F385:                 var_14C = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180F39C:                 unk_56D39B.Execute CStr(var_14C & "')"), var_184, -1
  loc_180F3A7:                 Set var_E0 = var_170
  loc_180F3DB:                 If (var_E0.RecordCount > 0) Then
  loc_180F3F7:                   var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F3FF:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180F42F:                   var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180F436:                   LateIdCallSt
  loc_180F450:                 End If
  loc_180F450:               End If
  loc_180F469:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F471:               var_1CC = CVar(CLng(3)) 'Long
  loc_180F4A1:               var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180F4A8:               LateIdCallSt
  loc_180F4DB:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F4E3:               var_198 = CVar(CLng(4)) 'Long
  loc_180F4ED:               var_13C = CVar(CStr(var_B8)) 'String
  loc_180F4F4:               LateIdCallSt
  loc_180F51F:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F527:               var_1CC = CVar(CLng(5)) 'Long
  loc_180F557:               var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180F55E:               LateIdCallSt
  loc_180F591:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F599:               var_198 = CVar(CLng(6)) 'Long
  loc_180F5A3:               var_13C = CVar(CStr(var_D0)) 'String
  loc_180F5AA:               LateIdCallSt
  loc_180F5D5:               var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F5DD:               var_1CC = CVar(CLng(7)) 'Long
  loc_180F60D:               var_14C = CVar(CStr(var_8C.Fields.Item("Sundry").Value)) 'String
  loc_180F614:               LateIdCallSt
  loc_180F647:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F64F:               var_198 = CVar(CLng(8)) 'Long
  loc_180F65E:               LateIdCallSt
  loc_180F66C:             End If
  loc_180F685:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F68D:             var_198 = CVar(CLng(6)) 'Long
  loc_180F6B2:             var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180F6DB:             var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F6E3:             var_198 = CVar(CLng(6)) 'Long
  loc_180F6FE:             var_1F4 = Val(CStr(var_11C.TextMatrix)))
  loc_180F708:             var_94 = (var_94 + var_1F4)
  loc_180F71F:             var_B0 = (var_B0 + var_D0)
  loc_180F725:             var_B8 = var_D0
  loc_180F72B:           Else
  loc_180F751:             var_13C = Trim(CVar(var_8C.Fields.Item("RoundOff")))
  loc_180F76B:             If (var_13C = "No") Then
  loc_180F7A9:               var_D0 = ((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))
  loc_180F7BC:             Else
  loc_180F818:               Proc_6_142_14A55B0(((Val(CStr(var_8C.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_8C.Fields.Item("Rate").Value)), var_D0, var_B8, var_B0)
  loc_180F81D:               var_D0 = var_94
  loc_180F831:             End If
  loc_180F834:             var_F8 = "Limit"
  loc_180F857:             Proc_6_39_E7C810(var_13C, CVar(var_8C.Fields.Item(var_F8)), var_D0, var_1F4, var_198)
  loc_180F891:             Proc_6_39_E7C810(var_184, CVar(var_8C.Fields.Item("Rate")), (var_13C <= CVar(var_94)), var_F8)
  loc_180F8BB:             If CBool(var_9C And (var_184 > 0)) Then
  loc_180F8C5:               If (var_D0 > CDbl(0)) Then
  loc_180F8E1:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F8E9:                 var_198 = CVar(CLng(0)) 'Long
  loc_180F8F3:                 var_13C = CVar(CStr(var_86)) 'String
  loc_180F8FA:                 LateIdCallSt
  loc_180F925:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180F92D:                 var_198 = CVar(CLng(1)) 'Long
  loc_180F937:                 var_13C = CVar(CStr(arg_10)) 'String
  loc_180F93E:                 LateIdCallSt
  loc_180F956:                 If (var_DA = 0) Then
  loc_180F95D:                   Set var_170 = Me.FGCat
  loc_180F972:                   var_12C = CVar((CLng(var_170.Rows) - 1)) 'Long
  loc_180F97A:                   var_1CC = CVar(CLng(2)) 'Long
  loc_180F9AA:                   var_14C = CVar(CStr(var_8C.Fields.Item("TaxCode").Value)) 'String
  loc_180F9B1:                   LateIdCallSt
  loc_180F9CE:                 Else
  loc_180F9E5:                   var_E4 = "Select RevCode as Code from SundryType where v_type in (Select V_Type from Voucher_Type where Restcode='" & global_52
  loc_180FA19:                   var_14C = CVar(var_E4 & "') and SundryCode in (Select Sundry from RevMast Where Code='") & var_8C.Fields.Item("TaxCode").Value 
  loc_180FA30:                   unk_56D39B.Execute CStr(var_14C & "')"), var_184, -1
  loc_180FA3B:                   Set var_E0 = var_170
  loc_180FA6F:                   If (var_E0.RecordCount > 0) Then
  loc_180FA8B:                     var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180FA93:                     var_1CC = CVar(CLng(2)) 'Long
  loc_180FAC3:                     var_14C = CVar(CStr(var_E0.Fields.Item("Code").Value)) 'String
  loc_180FACA:                     LateIdCallSt
  loc_180FAE4:                   End If
  loc_180FAE4:                 End If
  loc_180FAFD:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180FB05:                 var_1CC = CVar(CLng(3)) 'Long
  loc_180FB35:                 var_14C = CVar(CStr(var_8C.Fields.Item("Name").Value)) 'String
  loc_180FB3C:                 LateIdCallSt
  loc_180FB6F:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180FB77:                 var_198 = CVar(CLng(4)) 'Long
  loc_180FB81:                 var_13C = CVar(CStr(var_A8)) 'String
  loc_180FB88:                 LateIdCallSt
  loc_180FBB3:                 var_12C = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180FBBB:                 var_1CC = CVar(CLng(5)) 'Long
  loc_180FBEB:                 var_14C = CVar(CStr(var_8C.Fields.Item("Rate").Value)) 'String
  loc_180FBF2:                 LateIdCallSt
  loc_180FC25:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180FC37:                 var_13C = CVar(CStr(var_D0)) 'String
  loc_180FC3E:                 LateIdCallSt
  loc_180FC5A:                 var_13C = Me.FGCat.Rows
  loc_180FC69:                 var_12C = CVar((CLng(var_13C) - 1)) 'Long
  loc_180FC79:                 var_F8 = "Sundry"
  loc_180FC9E:                 var_14C = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_F8)), CVar(CLng(7)), "')", var_11C, var_13C, CVar(CLng(6)), var_F8)) 'String
  loc_180FCA5:                 LateIdCallSt
  loc_180FCD6:                 var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180FCDE:                 var_198 = CVar(CLng(8)) 'Long
  loc_180FCED:                 LateIdCallSt
  loc_180FCFB:               End If
  loc_180FD14:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180FD1C:               var_198 = CVar(CLng(6)) 'Long
  loc_180FD41:               var_9C = (var_9C + Val(CStr(var_11C.TextMatrix))))
  loc_180FD6A:               var_F8 = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_180FD72:               var_198 = CVar(CLng(6)) 'Long
  loc_180FD97:               var_94 = (var_94 + Val(CStr(var_11C.TextMatrix))))
  loc_180FDAE:               var_B0 = (var_B0 + var_D0)
  loc_180FDB4:               var_B8 = var_D0
  loc_180FDB7:             End If
  loc_180FDB7:           End If
  loc_180FDB7:         End If
  loc_180FDB7:       End If
  loc_180FDB7:     End If
  loc_180FDBD:     var_86 = (var_86 + 1)
  loc_180FDC2:     Set var_11C = Nothing 
  loc_180FDCA:     var_F8 = CVar(CLng(arg_10)) 'Long
  loc_180FDD2:     var_198 = CVar(CLng(&H12)) 'Long
  loc_180FDDC:     var_108 = CVar(CStr(var_9C)) 'String
  loc_180FDE4:     Set var_10C = Me.FGrid
  loc_180FDEA:     LateIdCallSt
  loc_180FDFB:     var_8C.MoveNext
  loc_180FE00:     GoTo loc_180DC15
  loc_180FE03:   End If
  loc_180FE08:   Set var_8C = Nothing
  loc_180FE10:   Set var_C4 = Nothing
  loc_180FE18:   Set var_C0 = Nothing
  loc_180FE20:   Set var_D8 = Nothing
  loc_180FE28:   Set var_E0 = Nothing
  loc_180FE2B: End If
  loc_180FE2B: Exit Sub
End Sub

Public Sub Proc_169_73_12B0A14(arg_C) '12B0A14
  'Data Table: 56D390
  Dim var_AC As Variant
  Dim var_D4 As String
  Dim var_A8 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_B0 As String
  Dim var_128 As Variant
  Dim var_D0 As Variant
  Dim var_160 As Double
  Dim var_A0 As Double
  Dim var_228 As Double
  Dim var_168 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_18C As Variant
  Dim var_20C As Variant
  Dim var_23C As Label
  Dim var_8C As Double
  Dim var_1AC As Variant
  loc_12B041D: Set var_A8 = Me.TxtGt
  loc_12B0423: Call 0.Method_Proc_169_73_12B0A140 (arg_C, var_AC)
  loc_12B0442: var_90 = CStr(Trim(CVar(var_AC.Tag)))
  loc_12B0460: Set var_A8 = Me.LblCap
  loc_12B0466: Call 0.Method_Proc_169_73_12B0A140 (arg_C, var_AC)
  loc_12B0490: If (var_AC.Tag = MemVar_1F92078 & "SCH") Then
  loc_12B04B8:   For var_D8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_D8 'Integer
  loc_12B04C2:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B04CA:     var_108 = CVar(CLng(&H19)) 'Long
  loc_12B04E4:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_12B04F0:     var_128 = CVar(CLng(var_A2)) 'Long
  loc_12B0530:     If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> "Yes")) Then
  loc_12B0537:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B053F:       var_108 = CVar(CLng(9)) 'Long
  loc_12B056B:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12B057B:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B0583:       var_108 = CVar(CLng(9)) 'Long
  loc_12B05A5:       var_160 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_12B05BD:       Set var_AC = Me.FGrid
  loc_12B05D6:       var_228 = Val(CStr(var_AC.TextMatrix)))
  loc_12B05E6:       Set var_164 = Me.TxtPer
  loc_12B05EC:       Call 0.Method_Proc_169_73_12B0A140 (arg_C, var_168, var_16C, var_228, CVar(CLng(&H10)), CVar(CLng(var_A2)), var_160)
  loc_12B05F4:       var_108 = var_168.Text
  loc_12B0608:       var_1CC = CVar(CLng(var_A2)) 'Long
  loc_12B0610:       var_1EC = CVar(CLng(&H1B)) 'Long
  loc_12B0639:       var_18C = CVar((((var_160 - var_228) * Val(var_16C)) / CDbl(&H64))) 'Double
  loc_12B0649:       var_20C = CVar(CStr(Format(var_18C, "0.00"))) 'String
  loc_12B0651:       Set var_220 = Me.FGrid
  loc_12B0657:       LateIdCallSt
  loc_12B0684:     End If
  loc_12B0687:   Next var_D8 'Integer
  loc_12B068F: Else
  loc_12B06B4:   For var_234 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_A2 = var_234 'Integer
  loc_12B06BE:     var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B06C6:     var_108 = CVar(CLng(&HA)) 'Long
  loc_12B06F1:     If (CStr(Me.FGrid.TextMatrix)) <> "Yes") Then
  loc_12B06F8:       var_E8 = CVar(CLng(var_A2)) 'Long
  loc_12B0700:       var_108 = CVar(CLng(9)) 'Long
  loc_12B072C:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_12B0738:     End If
  loc_12B073B:   Next var_234 'Integer
  loc_12B0740: End If
  loc_12B074A: If (Len(var_90) > 0) Then
  loc_12B077C:   Set var_A8 = Me.LblCap
  loc_12B0782:   Call 0.Method_Proc_169_73_12B0A140 (arg_C, var_AC)
  loc_12B0799:   var_D4 = MemVar_1F92078 & "SCH"
  loc_12B07AB:   Set var_164 = Me.LblCap
  loc_12B07B1:   Call 0.Method_Proc_169_73_12B0A140 (arg_C, var_168, var_16C)
  loc_12B07B9:   (var_AC.Tag = var_D4) = var_168.Tag
  loc_12B07DB:   Set var_220 = Me.LblCap
  loc_12B07E1:   Call 0.Method_Proc_169_73_12B0A140 (arg_C, var_23C)
  loc_12B082D:   If CBool( And (((Left(var_90, 1) = "1") Or (var_16C = MemVar_1F92078 & "ADD")) Or (var_23C.Tag = MemVar_1F92070 & "DED"))) Then
  loc_12B0833:     var_8C = var_A0
  loc_12B0839:   Else
  loc_12B0851:     var_B0 = CStr(Left(var_90, 1))
  loc_12B086B:     Set var_A8 = Me.TxtGt
  loc_12B0871:     Call 0.Method_Proc_169_73_12B0A140 (CInt(Val(var_B0)), var_AC, var_D4)
  loc_12B0879:     var_160 = var_AC.Text
  loc_12B0886:     var_8C = Val(var_D4)
  loc_12B089A:   End If
  loc_12B08BB:   var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_12B08C5:   ' Referenced from: 12B0A0A
  loc_12B08CF:   If (Len(var_90) > 0) Then
  loc_12B0912:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_12B095C:     var_90 = CStr(Mid(var_90, 2, CVar(Len(var_90))))
  loc_12B0973:     Set var_A8 = Me.TxtGt
  loc_12B0979:     Call 0.Method_Proc_169_73_12B0A140 (CInt(Left(var_90, 1)), var_AC, var_B0)
  loc_12B098E:     var_160 = Val(var_B0)
  loc_12B09A5:     Set var_164 = Me.TxtGt
  loc_12B09AB:     Call 0.Method_Proc_169_73_12B0A140 (var_AC.Text, var_168, var_D4, CVar(var_8C))
  loc_12B09C1:     var_D0 = CVar(-Val(var_D4)) 'Double
  loc_12B09D4:     var_E8 = (CStr(Left(var_90, 1)) = "+")
  loc_12B09E3:     var_1AC = (var_8C + IIf(var_90, CVar(var_168.Text), Mid(var_90, 2, CVar(Len(var_90)))))
  loc_12B09E8:     var_8C = CSng("0.00")
  loc_12B0A0A:     GoTo loc_12B08C5
  loc_12B0A0D:   End If
  loc_12B0A0D: End If
  loc_12B0A0D: Proc_169_73_12B0A14 = var_8C
End Sub

Public Sub Proc_169_74_F20D18(arg_C, arg_10, arg_14) 'F20D18
  'Data Table: 56D390
  Dim unk_56D39B As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F20C5D: Proc_6_7_F25D88(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F20C8F: unk_56D39B.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' And Party='' Order by Appdate Desc"), -1, var_15C
  loc_F20C9A: Set var_90 = var_15C
  loc_F20CCC: If (var_90.RecordCount > 0) Then
  loc_F20CFA:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F20D0A: Else
  loc_F20D0D:   var_8C = CDbl(0)
  loc_F20D10: End If
  loc_F20D10: Proc_169_74_F20D18 = var_8C
End Sub

Public Sub Proc_169_75_1298290
  'Data Table: 56D390
  Dim Me As Recordset15
  Dim var_DC As String
  Dim var_E0 As String
  Dim unk_56D39B As Connection15
  Dim var_C0 As Recordset15
  Dim var_F0 As Variant
  Dim var_104 As Fields15
  Dim var_100 As Variant
  Dim var_C2 As Integer
  Dim var_11C As String
  Dim var_124 As String
  Dim var_108 As TextBox
  Dim var_A0 As Recordset15
  Dim var_118 As Variant
  Dim var_B4 As Recordset15
  Dim var_16A As Integer
  Dim var_138 As Variant
  Dim var_CE As Integer
  loc_1297CE4: On Error Goto loc_1298288
  loc_1297CFE: If (Me.RecordCount <= 0) Then
  loc_1297D01:   Exit Sub
  loc_1297D02: End If
  loc_1297D29: unk_56D39B.Execute "Select * from Depart Where Code='" & global_52 & "'", var_100, -1
  loc_1297D34: Set var_C0 = var_104
  loc_1297D58: If (var_C0.RecordCount > 0) Then
  loc_1297D81:   Proc_6_39_E7C810(var_118, CVar(var_C0.Fields.Item("NoOfKot")))
  loc_1297D8A:   var_C2 = CInt(var_118)
  loc_1297DBF:   var_C8 = Proc_6_38_E68A98(CVar(var_C0.Fields.Item("OrderBookCom1")), var_C2)
  loc_1297DDF:   var_108 = var_C0.Fields.Item("OrderBookCom2")
  loc_1297DE7:   var_100 = CVar(var_108) 'Address
  loc_1297DF0:   var_CC = Proc_6_38_E68A98(var_100)
  loc_1297DF9:   ' Referenced from: 129824B
  loc_1297DF9: End If
  loc_1297E00: var_DC = "SELECT     P.VNo as BookingNo,PD.SNo,P.CustName as CustomerName,P.PhoneNo,P.Addr1,P.Addr2, I.Name as ItemName, P.VDate as BookingDate, " & "P.VTime as BookingTime, P.DDate as DeliveryDate, P.DTime as DeliveryTime, PD.Qty as Quantity, "
  loc_1297E07: var_E0 = var_DC & "PD.Rate, PD.Amount, P.Total,P.AdvAmt as Advance ,Discount, P.Tax, P.Addition, P.Deduction,P.RoundOff, P.NetAmt as NetAmount,P.TokenNo, "
  loc_1297E0E: var_11C = var_E0 & "PD.Remark, P.Site_Code,Isnull(P.NCBOOKING,'') As NCBOOKING,Isnull(P.NCTYPE,'') As NCTYPE,Isnull(P.PrintedYN,'') As PrintedYN FROM PackingOrder P INNER JOIN PackingOrderDetail  PD ON P.DocID = PD.DocID INNER JOIN "
  loc_1297E15: var_124 = var_11C & "Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code  INNER JOIN ItemMast I ON PD.ItemCode = I.Code And PD.ItemRestCode = I.RestCode where P.DocId='"
  loc_1297E26: Set var_104 = Me.Txt
  loc_1297E2C: Call 0.Method_Proc_169_75_12982900 (CInt(2), var_108, var_120)
  loc_1297E34: var_124 = var_108.Text
  loc_1297E44: var_88 = var_104 & var_120 & "' Order by PD.Sno"
  loc_1297E65: If (var_88 = vbNullString) Then
  loc_1297E68:   Exit Sub
  loc_1297E69: End If
  loc_1297E7F: unk_56D39B.Execute var_88, var_100, -1
  loc_1297E8A: Set var_A0 = var_104
  loc_1297EA7: If (var_A0.RecordCount <= 0) Then
  loc_1297EB0:   Call 0.Method_arg_50 (var_DC)
  loc_1297ECB:   var_100 = "** No Records Found to Print **"
  loc_1297ED1:   MsgBox(var_100, &H40, CVar(var_DC), var_148, var_168)
  loc_1297EE1:   Exit Sub
  loc_1297EE2: End If
  loc_1297EE8: If (var_CE = 0) Then
  loc_1297EEE:   var_D4 = var_C8
  loc_1297EF4: Else
  loc_1297EF7:   var_D4 = var_CC
  loc_1297EFA: End If
  loc_1297F1E: unk_56D39B.Execute "Select BookingSlipFooter1,BookingSlipFooter2 from Enviro where LOGSite_code='" & MemVar_1F92078 & "'", var_100, -1
  loc_1297F29: Set var_B4 = var_104
  loc_1297F3F: var_D8 = var_B4.RecordCount
  loc_1297F4D: If (var_D8 > 0) Then
  loc_1297F5F:   var_104 = var_B4.Fields
  loc_1297F78:   var_B8 = Proc_6_38_E68A98(CVar(var_104.Item("BookingSlipFooter1")), var_104)
  loc_1297F98:   var_108 = var_B4.Fields.Item("BookingSlipFooter2")
  loc_1297FA9:   var_BC = Proc_6_38_E68A98(CVar(var_108))
  loc_1297FB2: End If
  loc_1297FC8: Set var_104 = var_A0 
  loc_1297FD4: var_16A = CreateFieldDefFile(var_104, MemVar_1F920B4 & "\OrderBooking.ttx")
  loc_1297FDE: Set var_A0 = var_104
  loc_1297FE4: var_F0 = CVar(var_16A) 'Integer
  loc_1297FE7: var_9C = var_F0 'Variant
  loc_1298003: var_DC = MemVar_1F920B4 & "\OrderBooking.RPT"
  loc_129800C: Call 0.Method_arg_1C (var_DC, var_F0, var_104)
  loc_1298017: MemVar_1F921E4 = var_104
  loc_1298032: Call 0.Method_arg_90 (var_104, var_D8, var_AA, 1)
  loc_129803A: Call 0.Method_arg_24 (var_16A, &HFF)
  loc_1298046: For var_16E =  To CInt(var_D8): var_104 = var_16E 'Integer
  loc_129805F:   Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_1298067:   Call 0.Method_arg_20 (var_108)
  loc_129806F:   Call 0.Method_arg_30 (var_DC)
  loc_1298077:   var_174 = var_DC
  loc_1298089:   If (var_174 = "Title") Then
  loc_129809F:     Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_12980A7:     Call 0.Method_arg_20 (var_108)
  loc_12980AF:     Call 0.Method_arg_38 ("'Order Booking'")
  loc_12980BE:   Else
  loc_12980C6:     If (var_174 = "BookingComment") Then
  loc_12980EA:       Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_12980F2:       Call 0.Method_arg_20 (var_108)
  loc_12980FA:       Call 0.Method_arg_38 ("'" & var_D4 & "'")
  loc_1298110:     Else
  loc_1298118:       If (var_174 = "BookingSlipFooter1") Then
  loc_129813C:         Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_1298144:         Call 0.Method_arg_20 (var_108)
  loc_129814C:         Call 0.Method_arg_38 ("'" & var_B8 & "'")
  loc_1298162:       Else
  loc_129816A:         If (var_174 = "BookingSlipFooter2") Then
  loc_129818E:           Call 0.Method_arg_90 (var_104, CLng(var_AA))
  loc_1298196:           Call 0.Method_arg_20 (var_108)
  loc_129819E:           Call 0.Method_arg_38 ("'" & var_BC & "'")
  loc_12981B1:         End If
  loc_12981B1:       End If
  loc_12981B1:     End If
  loc_12981B1:   End If
  loc_12981B4: Next var_16E 'Integer
  loc_12981D2: Call 0.Method_arg_64 (var_104, CVar(var_A0))
  loc_12981DA: Call 0.Method_arg_2C (var_138)
  loc_12981E8: Call 0.Method_arg_150 (var_158)
  loc_12981F3: If (var_C2 <= 1) Then
  loc_1298213:   Call 0.Method_Me8 (False, 1, var_158)
  loc_129821B: Else
  loc_1298221:   If (var_CE = 0) Then
  loc_1298241:     Call 0.Method_Me8 (False, 1, var_158, var_184)
  loc_1298248:     var_CE = &HFF
  loc_129824B:     GoTo loc_1297DF9
  loc_1298251:   Else
  loc_1298263:     var_138 = CVar((var_C2 - 1)) 'Integer
  loc_1298272:     Call 0.Method_Me8 (False, 1, var_158, var_184, var_194)
  loc_1298277:   End If
  loc_1298277: End If
  loc_129827C: Set var_A0 = Nothing
  loc_1298284: Set var_B0 = Nothing
  loc_1298287: Exit Sub
  loc_1298288: ' Referenced from: 1297CE4
  loc_1298288: Proc_6_60_E62BC4(var_CE, var_194)
  loc_129828D: Exit Sub
  loc_129828E: ArrayRebase1Var
End Sub

Public Sub Proc_169_76_F0E548(arg_C) 'F0E548
  'Data Table: 56D390
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F0E477: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F0E4A0: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F0E4A9: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F0E4D9: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F0E4EE: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F0E508: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F0E51D: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F0E53F: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F0E544: Exit Sub
End Sub

Public Sub Proc_169_77_EFC41C(arg_C) 'EFC41C
  'Data Table: 56D390
  Dim var_8C As Variant
  loc_EFC345: Set var_8C = arg_C 
  loc_EFC36D: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EFC399: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EFC3C5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EFC3D5: var_8C.CursorType = 3
  loc_EFC3E2: var_8C.LockType = 3
  loc_EFC401: var_8C.Open var_A0, var_B0, -1
  loc_EFC408: Set var_8C = Nothing 
  loc_EFC40F: Set var_88 = arg_C 
  loc_EFC413: Proc_169_77_EFC41C = -1
  loc_EFC419: var_8C = -1
End Sub

Public Sub Proc_169_78_F12490(arg_C, arg_10, arg_14, arg_18) 'F12490
  'Data Table: 56D390
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F1239F: Set var_88 = arg_C 
  loc_F123AE: var_88.AddNew var_98, var_A8
  loc_F123E6: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F12428: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F1243A: var_98 = arg_18
  loc_F1244E: var_A8 = "Mark"
  loc_F1246A: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F12484: var_88.Update var_98, var_A8
  loc_F1248B: Set var_88 = Nothing 
  loc_F1248F: Exit Sub
End Sub

Public Sub Proc_169_79_10038D8(arg_C) '10038D8
  'Data Table: 56D390
  Dim var_8C As Recordset15
  loc_10036CD: Set var_8C = arg_C 
  loc_10036F5: var_8C.Fields.Append "mLine", &HC8, 2
  loc_1003721: var_8C.Fields.Append "Sno", &HC8, 3
  loc_100374D: var_8C.Fields.Append "DispCode", &HC8, 6
  loc_1003779: var_8C.Fields.Append "ItemName", &HC8, &H32
  loc_10037A5: var_8C.Fields.Append "Description", &HC8, &H4B
  loc_10037D1: var_8C.Fields.Append "Qty", &HC8, 8
  loc_10037FD: var_8C.Fields.Append "Rate", &HC8, 8
  loc_1003829: var_8C.Fields.Append "Unit", &HC8, &H14
  loc_1003855: var_8C.Fields.Append "VoidYN", &HC8, 1
  loc_1003881: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1003891: var_8C.CursorType = 3
  loc_100389E: var_8C.LockType = 3
  loc_10038BD: var_8C.Open var_A0, var_B0, -1
  loc_10038C4: Set var_8C = Nothing 
  loc_10038CB: Set var_88 = arg_C 
  loc_10038CF: Proc_169_79_10038D8 = -1
End Sub

Public Sub Proc_169_80_1C27D68
  'Data Table: 56D390
  Dim var_13C As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_150 As String
  Dim unk_56D39B As Connection15
  Dim var_100 As Recordset15
  Dim var_174 As Variant
  Dim var_12C As Variant
  Dim var_180 As String
  Dim var_10C As Recordset15
  Dim var_E6 As Integer
  Dim var_160 As Variant
  Dim var_194 As Fields15
  Dim var_190 As Variant
  Dim var_1D8 As Variant
  Dim var_170 As Variant
  Dim var_E8 As Integer
  Dim Me As Recordset15
  Dim var_17C As Field20
  Dim var_BC As Recordset15
  Dim var_198 As Field20
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1FC As Variant
  Dim var_1E8 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_284 As Variant
  Dim var_308 As String
  Dim var_310 As String
  Dim var_1A8 As Variant
  Dim var_368 As Variant
  Dim var_AE As Integer
  Dim var_36C As Recordset15
  Dim var_D0 As Recordset15
  Dim var_106 As Integer
  Dim var_370 As Recordset15
  Dim var_224 As Variant
  Dim var_304 As Variant
  Dim var_344 As Variant
  Dim var_30C As String
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_2F4 As Variant
  Dim var_2B4 As Variant
  Dim var_3AC As Variant
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_3F8 As Variant
  loc_1C21FC0: On Error Goto loc_1C27D61
  loc_1C21FE0: Proc_6_17_EAA2B0(var_12C, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1C21FF6: unk_56D39B.Execute CStr(var_170 & var_12C), -1, var_174
  loc_1C22001: Set var_100 = var_174
  loc_1C22027: If (var_100.RecordCount > 0) Then
  loc_1C22061:   var_F0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader1"))))))
  loc_1C220A7:   var_F4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader2"))))))
  loc_1C220ED:   var_F8 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("KOTHeader3"))))))
  loc_1C2210B:   var_174 = var_100.Fields
  loc_1C2211B:   var_12C = CVar(var_174.Item("KOTHeader4")) 'Address
  loc_1C22133:   var_FC = CStr(Trim(CVar(Proc_6_38_E68A98(var_12C))))
  loc_1C22142: End If
  loc_1C22159: var_150 = "Select distinct(ShortName),Name,Code,PrintType,CKOTPrintYN,CKOTPrintPath As Printer,NoOfKot From Depart Where Code='" & global_52
  loc_1C22169: unk_56D39B.Execute var_150 & "'", var_12C, -1
  loc_1C22174: Set var_10C = var_174
  loc_1C22198: If (var_10C.RecordCount > 0) Then
  loc_1C221C3:   var_14C = CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("CKOTPrintYN")))) 'String
  loc_1C221DD:   var_E4 = CStr(Ucase(Trim(var_14C)))
  loc_1C22214:   Proc_6_39_E7C810(var_14C, CVar(var_10C.Fields.Item("NoOfKot")))
  loc_1C2221D:   var_E6 = CInt(var_14C)
  loc_1C22250:   Proc_6_39_E7C810(var_14C, CVar(var_10C.Fields.Item("NoOfKot")))
  loc_1C22264:   var_194 = var_10C.Fields
  loc_1C22274:   var_190 = CVar(var_194.Item("NoOfKot")) 'Address
  loc_1C2227B:   Proc_6_39_E7C810(var_1A8, var_190)
  loc_1C22291:   var_170 = (var_14C <= 0)
  loc_1C222A8:   var_E8 = CInt(IIf(var_170, 1, var_1A8))
  loc_1C222C3: End If
  loc_1C222CB: If (var_E4 <> "Y") Then
  loc_1C222D4:   Call 0.Method_arg_50 (var_150, var_E8)
  loc_1C222F5:   MsgBox("Set Order Booking Printing 'Yes' In Outlet Master.", &H40, CVar(var_150), var_170, var_190)
  loc_1C2230A:   Set var_10C = Nothing
  loc_1C2230D:   Exit Sub
  loc_1C2230E: End If
  loc_1C22311: MemVar_1F923C0 = "N"
  loc_1C22318: MemVar_1F923C4 = "N"
  loc_1C2231F: MemVar_1F923C8 = "K"
  loc_1C22323: var_13C = "Select DISTINCT P.Vtime,P.VNo,P.VDate,P.DDate,P.DTime,P.NCBooking, PD.Remark , PD.ContraDocId, D.ShortName,P.U_Name From ((PackingOrderDetail PD Left Join PackingOrder P on P.DocId=PD.DocId)Left Join Depart D on D.Code=PD.RestCode)Where PD.DocID='"
  loc_1C22363: var_88 = CStr(var_13C & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C22376: var_13C = "Select PD.Sno,I.Name as ItemName,PD.Qty, Depart.ShortName From (PackingOrderDetail PD Left Join  ItemMast I on PD.ItemCode=I.Code And PD.ItemRestCode = I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code Where PD.DocID='"
  loc_1C22390: var_174 = Me.Fields
  loc_1C223A0: var_12C = var_174.Item("SearchCode").Value
  loc_1C223B6: var_8C = CStr(var_13C & var_12C & "'")
  loc_1C223D1: If (var_88 = vbNullString) Then
  loc_1C223D4:   Exit Sub
  loc_1C223D5: End If
  loc_1C223DD: If (var_8C = vbNullString) Then
  loc_1C223E0:   Exit Sub
  loc_1C223E1: End If
  loc_1C223F7: unk_56D39B.Execute var_88, var_12C, -1
  loc_1C22402: Set var_B4 = var_174
  loc_1C2241A: var_174 = var_100.Fields
  loc_1C22455: If (Trim(CVar(Proc_6_38_E68A98(CVar(var_174.Item("KOTPrinting")), var_174))) = "Seperate for All Kitchen") Then
  loc_1C2246C:   var_14C = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (PackingOrderDetail PD Left Join  ItemMast I on PD.ItemCode=I.Code And PD.ItemRestCode = I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where PD.DocID='") 'String
  loc_1C22484:   var_174 = Me.Fields
  loc_1C22494:   var_12C = var_174.Item("SearchCode").Value
  loc_1C224B3:   unk_56D39B.Execute CStr(var_14C & var_12C & "'"), var_1A8, -1
  loc_1C224BE:   Set var_BC = var_194
  loc_1C224DD: Else
  loc_1C224F1:   var_150 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F92078
  loc_1C22501:   unk_56D39B.Execute var_150 & "MK'", var_12C, -1
  loc_1C2250C:   Set var_BC = var_174
  loc_1C2251C:   ' Referenced from:   1C27D25
  loc_1C2251C: End If
  loc_1C2252B: If Not(var_BC.EOF) Then
  loc_1C2253D:   var_174 = var_100.Fields
  loc_1C22578:   If (Trim(CVar(Proc_6_38_E68A98(CVar(var_174.Item("KOTPrinting")), var_174, var_194))) = "Seperate for All Kitchen") Then
  loc_1C22582:     var_14C = CVar("Select PD.Sno,I.DispCode,I.Name as ItemName,PD.ItemCode,PD.Unit,PD.Qty,PD.Rate,PD.Remark As Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,PD.VoidYN As Cancel,P.PrintedYN From ((PackingOrderDetail PD Inner Join PackingOrder P on PD.DocId=P.DocId) Left Join  ItemMast I on PD.ItemCode=I.Code And PD.ItemRestCode = I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where PD.DocID='") 'String
  loc_1C225FB:     var_1E8 = var_14C & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C22637:     var_8C = CStr(var_1E8 & var_BC.Fields.Item("Code").Value & "'")
  loc_1C22665:   Else
  loc_1C2266C:     var_14C = CVar("Select PD.Sno,I.DispCode,I.Name as ItemName,PD.ItemCode,PD.Unit,PD.Qty,PD.Rate,PD.Remark As Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,PD.VoidYN As Cancel,P.PrintedYN From ((PackingOrderDetail PD Inner Join PackingOrder P on PD.DocId=P.DocId) Left Join  ItemMast I on PD.ItemCode=I.Code And PD.ItemRestCode = I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where PD.DocID='") 'String
  loc_1C22684:     var_174 = Me.Fields
  loc_1C22694:     var_12C = var_174.Item("SearchCode").Value
  loc_1C226AA:     var_8C = CStr(var_14C & var_12C & "'")
  loc_1C226BF:   End If
  loc_1C226D5:   unk_56D39B.Execute var_8C, var_12C, -1
  loc_1C226E0:   Set var_B8 = var_174
  loc_1C226FD:   If (var_B8.RecordCount > 0) Then
  loc_1C2270F:     var_174 = var_10C.Fields
  loc_1C2272E:     var_264 = Trim(CVar(var_174.Item("PrintType"))) 'Variant
  loc_1C22743:     If (var_264 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1C22753:       Call Proc_169_77_EFC41C(New)
  loc_1C2275B:       Set var_D4 = var_174
  loc_1C22761:       Me.Recordset15.MoveFirst
  loc_1C22766:       ' Referenced from: 1C232D2
  loc_1C22775:       If Not(var_B4.EOF) Then
  loc_1C2277A:         var_92 = 0
  loc_1C22791:         var_174 = var_B4.Fields
  loc_1C227F4:         var_1E8 = CVar(var_B4.Fields.Item("NCBOOKING")) 'Address
  loc_1C22898:         var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_174.Item("ShortName")), 1, var_92, var_174))), 1, 3)) = "LAU") 'Variant
  loc_1C228A2:         var_304 = IIf(var_2F4, IIf((Proc_6_38_E68A98(var_1E8, var_174) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING")), var_E6) = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C228AB:         var_90 = CStr(var_304)
  loc_1C228EF:         If (var_92 = 0) Then
  loc_1C22910:           Call Proc_169_78_F12490(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C2294C:           var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1C22983:           var_14C = CVar(Me.LblRest.Caption) 'String
  loc_1C22986:           var_170 = (Space(1) + var_14C)
  loc_1C2299B:           Call Proc_169_78_F12490(var_D4, vbNullString, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(Me.LblRest.Item("ShortName")), 1, var_92, Me.LblRest)))), vbNullString)
  loc_1C229CD:           Call Proc_169_78_F12490(var_D4, vbNullString, var_90, vbNullString)
  loc_1C22A25:           Call Proc_169_78_F12490(var_D4, vbNullString, Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")), &H12), vbNullString)
  loc_1C22A59:           Call Proc_169_78_F12490(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C22A8D:           Proc_6_39_E7C810(var_14C, CVar(var_B4.Fields.Item("VNo")))
  loc_1C22ACA:           Call Proc_169_78_F12490(var_D4, vbNullString, " BOOKING No.   : " & Proc_6_45_EAD428(CStr(var_14C), &HA), vbNullString)
  loc_1C22B9A:           Call Proc_169_78_F12490(var_D4, vbNullString, " BOOKING Dt.   : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8), vbNullString)
  loc_1C22C7C:           Call Proc_169_78_F12490(var_D4, vbNullString, " DELIVERY Dt.  : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))), &HC) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DTime"))), 8), vbNullString)
  loc_1C22D0E:           Call Proc_169_78_F12490(var_D4, vbNullString, " Remarks : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remark"))), &H1E), vbNullString)
  loc_1C22D42:           Call Proc_169_78_F12490(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C22D4E:         End If
  loc_1C22D74:         var_170 = (Space(1) + CVar(Proc_6_45_EAD428("ITEM NAME", &H19)))
  loc_1C22D88:         var_1A8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12, var_B4.Fields))) + Space(1))
  loc_1C22DA2:         var_1D8 = (Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12, var_B4.Fields))), 1, 3) + CVar(Proc_6_52_EAD4F4("Qty", 6)))
  loc_1C22DA7:         var_AC = CStr(CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'")
  loc_1C22DDA:         Call Proc_169_78_F12490(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C22DFE:         Call Proc_169_78_F12490(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C22E10:         var_92 = (var_92 + 4)
  loc_1C22E16:         var_B8.MoveFirst
  loc_1C22E1B:         ' Referenced from: 1C2319C
  loc_1C22E2A:         If Not(var_B8.EOF) Then
  loc_1C22E57:           var_13C = "qty"
  loc_1C22E7A:           Proc_6_39_E7C810(var_1E8, CVar(var_B8.Fields.Item(var_13C)))
  loc_1C22E89:           var_160 = "0"
  loc_1C22EA5:           var_1C8 = "Cancel"
  loc_1C22EDF:           var_1FC = "Y"
  loc_1C22F1D:           var_190 = (1 + CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1C22F29:           var_1A8 = Space(1)
  loc_1C22F31:           var_1B8 = (Space(1) + var_1A8)
  loc_1C22F4A:           var_284 = (&H12 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E8, var_160)), 3, CVar(Proc_6_52_EAD4F4("Qty", 6)))))
  loc_1C22F63:           var_368 = (CVar(var_B4.Fields.Item("NCBOOKING")) + CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item(var_1C8).Value = var_1FC), "Void", vbNullString)), 5)))
  loc_1C22FC2:           Call Proc_169_78_F12490(var_D4, vbNullString, CStr(var_368), vbNullString)
  loc_1C22FD4:           var_92 = (var_92 + 1)
  loc_1C23010:           If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C23068:             Call Proc_169_78_F12490(var_D4, vbNullString, "(" & Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description"))) & ")", vbNullString)
  loc_1C23088:             var_92 = (var_92 + 1)
  loc_1C2308B:           End If
  loc_1C23095:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C230B0:             Call Proc_169_78_F12490(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C230DA:             Call Proc_169_78_F12490(var_D4, vbNullString, " Contd.", vbNullString)
  loc_1C230EE:             var_94 = (var_94 + 1)
  loc_1C230F3:             var_92 = 0
  loc_1C2310E:             Call Proc_169_78_F12490(var_D4, vbNullString, var_90, vbNullString)
  loc_1C2311C:             var_92 = &H12
  loc_1C23137:             Call Proc_169_78_F12490(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C2315B:             Call Proc_169_78_F12490(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C2317F:             Call Proc_169_78_F12490(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C23191:             var_92 = (var_92 + 4)
  loc_1C23194:           End If
  loc_1C23197:           var_B8.MoveNext
  loc_1C2319C:           GoTo loc_1C22E1B
  loc_1C2319F:         End If
  loc_1C231A9:         If (var_92 < (&H45 - var_A6)) Then
  loc_1C231AC:           ' Referenced from: 1C231EE
  loc_1C231B6:           If (var_92 = (&H45 - var_A6)) Then
  loc_1C231D7:             Call Proc_169_78_F12490(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C231EB:             var_92 = (var_92 + 1)
  loc_1C231EE:             GoTo loc_1C231AC
  loc_1C231F1:           End If
  loc_1C231F1:         End If
  loc_1C23209:         Call Proc_169_78_F12490(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C23218:         var_11C = "U_Name"
  loc_1C23277:         Call Proc_169_78_F12490(var_D4, vbNullString, " User : " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item(var_11C)), var_92, var_92, var_92), &H14, var_92), vbNullString)
  loc_1C232BA:         Call Proc_169_78_F12490(var_D4, vbNullString, "** " & MemVar_1F9221C & " **", vbNullString)
  loc_1C232CD:         var_B4.MoveNext
  loc_1C232D2:         GoTo loc_1C22766
  loc_1C232D5:       End If
  loc_1C232D8:       var_D8 = "WinBOOKINGPrint"
  loc_1C232FF:       Set var_174 = var_D4 
  loc_1C23306:       CreateFieldDefFile(var_174, MemVar_1F920B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1C23348:       Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_D8 & ".RPT", var_11C, var_174)
  loc_1C23353:       MemVar_1F921E4 = var_174
  loc_1C2337C:       Call 0.Method_arg_64 (var_174, CVar(var_174), var_13C, var_160)
  loc_1C23384:       Call 0.Method_arg_2C (1, var_92)
  loc_1C233C5:       If (Proc_6_38_E68A98(CVar(var_10C.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1C23412:         If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C23424:           var_174 = var_10C.Fields
  loc_1C23441:           Call Proc_169_76_F0E548(Proc_6_38_E68A98(CVar(var_174.Item("Printer"))))
  loc_1C2344F:         End If
  loc_1C2344F:       End If
  loc_1C2345E:       var_13C = CVar(var_E8) 'Integer
  loc_1C2346D:       Call 0.Method_Me8 (False, var_13C, var_160)
  loc_1C23477:       Set var_D4 = Nothing
  loc_1C2347D:     Else
  loc_1C23480:       var_11C = "ADJUSTABLE WINDOWS KOT PRINT"
  loc_1C23488:       If (var_264 = var_11C) Then
  loc_1C23498:         Call Proc_169_79_10038D8(New)
  loc_1C234A0:         Set var_104 = var_174
  loc_1C234A6:         Me.Recordset15.MoveFirst
  loc_1C234AB:         ' Referenced from:   1C24822
  loc_1C234BA:         If Not(var_B4.EOF) Then
  loc_1C234BF:           var_AE = 1
  loc_1C234C5:           var_B8.MoveFirst
  loc_1C234CA:           ' Referenced from:   1C23BC4
  loc_1C234D9:           If Not(var_B8.EOF) Then
  loc_1C234DF:             Set var_36C = var_104 
  loc_1C234EE:             var_36C.AddNew var_11C, var_13C
  loc_1C23518:             var_36C.Fields.Item("mLine").Value = "GF"
  loc_1C2354C:             var_36C.Fields.Item("Sno").Value = CVar(CStr(var_AE))
  loc_1C235AA:             var_36C.Fields.Item("DispCode").Value = CVar(CStr(var_B8.Fields.Item("DispCode").Value))
  loc_1C235D0:             var_174 = var_B8.Fields
  loc_1C2360C:             var_36C.Fields.Item("ItemName").Value = CVar(Proc_6_38_E68A98(CVar(var_174.Item("ItemName")), var_AE, var_174))
  loc_1C23649:             var_14C = CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), var_1C8)) 'String
  loc_1C2366C:             var_36C.Fields.Item("Description").Value = var_14C
  loc_1C236A7:             Proc_6_39_E7C810(var_14C, CVar(var_B8.Fields.Item("qty")))
  loc_1C236EF:             var_36C.Fields.Item("Qty").Value = Format(var_14C, "0.000")
  loc_1C2372E:             Proc_6_39_E7C810(var_14C, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1C23776:             var_36C.Fields.Item("Rate").Value = Format(var_14C, "0.00")
  loc_1C237DA:             var_36C.Fields.Item("Unit").Value = CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Unit")), 1, 1))
  loc_1C2382A:             var_194 = var_36C.Fields
  loc_1C2383A:             var_194.Item("VoidYN").Value = CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Cancel")), 1))
  loc_1C2384F:             var_13C = "*"
  loc_1C23858:             var_11C = "Mark"
  loc_1C23874:             var_36C.Fields.Item(var_11C).Value = var_13C
  loc_1C2388B:             var_36C.Update var_11C, var_13C
  loc_1C23892:             Set var_36C = Nothing 
  loc_1C238AA:             var_150 = "Select IM.Name As ItemName, IM.Unit , Qty  from ComboPackDetail Inner Join ItemMast IM On  ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F92078
  loc_1C238BA:             var_11C = "ItemCode"
  loc_1C238DE:             var_170 = CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") & var_B8.Fields.Item(var_11C).Value 
  loc_1C238E2:             var_13C = "'"
  loc_1C238F5:             unk_56D39B.Execute CStr(var_170 & var_13C), var_1A8, -1
  loc_1C23900:             Set var_D0 = var_194
  loc_1C23926:             var_178 = var_D0.RecordCount
  loc_1C23934:             If (var_178 > 0) Then
  loc_1C23939:               var_106 = 1
  loc_1C2393C:               ' Referenced from:   1C23BA8
  loc_1C2394B:               If Not(var_D0.EOF) Then
  loc_1C23951:                 Set var_370 = var_104 
  loc_1C23960:                 var_370.AddNew var_11C, var_13C
  loc_1C2398A:                 var_370.Fields.Item("mLine").Value = "SB"
  loc_1C239BE:                 var_370.Fields.Item("Sno").Value = CVar(CStr(var_106))
  loc_1C239F5:                 var_14C = CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("ItemName")), var_106, var_194)) 'String
  loc_1C23A18:                 var_370.Fields.Item("ItemName").Value = var_14C
  loc_1C23A53:                 Proc_6_51_EF39F0(var_14C, CVar(var_D0.Fields.Item("qty")))
  loc_1C23A7B:                 var_370.Fields.Item("Qty").Value = var_14C
  loc_1C23ADB:                 var_370.Fields.Item("Unit").Value = CVar(Proc_6_38_E68A98(CVar(var_D0.Fields.Item("Unit")), var_1FC))
  loc_1C23B3B:                 var_370.Fields.Item("VoidYN").Value = CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Cancel"))))
  loc_1C23B50:                 var_13C = "*"
  loc_1C23B59:                 var_11C = "Mark"
  loc_1C23B75:                 var_370.Fields.Item(var_11C).Value = var_13C
  loc_1C23B8C:                 var_370.Update var_11C, var_13C
  loc_1C23B93:                 Set var_370 = Nothing 
  loc_1C23B9D:                 var_106 = (var_106 + 1)
  loc_1C23BA3:                 var_D0.MoveNext
  loc_1C23BA8:                 GoTo loc_1C2393C
  loc_1C23BAB:               End If
  loc_1C23BAB:             End If
  loc_1C23BB0:             Set var_D0 = Nothing
  loc_1C23BB9:             var_AE = (var_AE + 1)
  loc_1C23BBF:             var_B8.MoveNext
  loc_1C23BC4:             GoTo loc_1C234CA
  loc_1C23BC7:           End If
  loc_1C23BCA:           var_11C = "ShortName"
  loc_1C23BDE:           var_17C = var_B4.Fields.Item(var_11C)
  loc_1C23C1D:           var_1C8 = "NCBOOKING"
  loc_1C23C29:           var_194 = var_B4.Fields
  loc_1C23C31:           var_198 = var_194.Item(var_1C8)
  loc_1C23C66:           var_1FC = (Proc_6_38_E68A98(CVar(var_198), var_106) = "Y")
  loc_1C23CD3:           var_160 = "LAU"
  loc_1C23CE7:           var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_17C), var_AE))), 1, 3)) = var_160), IIf(var_1FC, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C23CF0:           var_90 = CStr(var_304)
  loc_1C23D31:           var_D8 = "BOOKINGPrint"
  loc_1C23D58:           Set var_174 = var_104 
  loc_1C23D5F:           CreateFieldDefFile(var_174, MemVar_1F920B4 & "\" & var_D8 & ".ttx")
  loc_1C23D8A:           var_150 = MemVar_1F920B4 & "\"
  loc_1C23DA1:           Call 0.Method_arg_1C (var_150 & var_D8 & ".RPT", var_11C, var_174)
  loc_1C23DAC:           MemVar_1F921E4 = var_174
  loc_1C23DD5:           Call 0.Method_arg_64 (var_174, CVar(var_174), var_13C)
  loc_1C23DDD:           Call 0.Method_arg_2C (var_160, &HFF)
  loc_1C23DEB:           Call 0.Method_arg_150 (var_174)
  loc_1C23E01:           Call 0.Method_arg_90 (var_174, var_178)
  loc_1C23E09:           Call 0.Method_arg_24 (var_AE)
  loc_1C23E15:           For var_374 =  To CInt(var_178):   1 = var_374 'Integer
  loc_1C23E2E:             Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C23E36:             Call 0.Method_arg_20 (var_17C)
  loc_1C23E3E:             Call 0.Method_arg_30 (var_150)
  loc_1C23E54:             var_384 = Ucase(CVar(var_150)) 'Variant
  loc_1C23E84:             If (var_384 = Ucase("comp_name")) Then
  loc_1C23EA8:               Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C23EB0:               Call 0.Method_arg_20 (var_17C)
  loc_1C23EB8:               Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_1C23ECE:             Else
  loc_1C23EF0:               If (var_384 = Ucase("comp_add1")) Then
  loc_1C23F14:                 Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C23F1C:                 Call 0.Method_arg_20 (var_17C)
  loc_1C23F24:                 Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1C23F3A:               Else
  loc_1C23F5C:                 If (var_384 = Ucase("comp_pin")) Then
  loc_1C23F80:                   Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C23F88:                   Call 0.Method_arg_20 (var_17C)
  loc_1C23F90:                   Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1C23FA6:                 Else
  loc_1C23FC8:                   If (var_384 = Ucase("comp_GSTIN")) Then
  loc_1C23FEC:                     Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C23FF4:                     Call 0.Method_arg_20 (var_17C)
  loc_1C23FFC:                     Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_1C24012:                   Else
  loc_1C24034:                     If (var_384 = Ucase("RestName")) Then
  loc_1C24041:                       Set var_174 = Me.LblRest
  loc_1C2406A:                       Call 0.Method_arg_90 (var_17C, CLng(var_AE))
  loc_1C24072:                       Call 0.Method_arg_20 (var_194)
  loc_1C2407A:                       Call 0.Method_arg_38 ("'" & var_174.Caption & "'")
  loc_1C24094:                     Else
  loc_1C240B6:                       If (var_384 = Ucase("mTitle")) Then
  loc_1C240DA:                         Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C240E2:                         Call 0.Method_arg_20 (var_17C)
  loc_1C240EA:                         Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1C24100:                       Else
  loc_1C24108:                         var_12C = "Header1"
  loc_1C24122:                         If (var_384 = Ucase(var_12C)) Then
  loc_1C24130:                           Proc_6_17_EAA2B0(var_12C)
  loc_1C2414C:                           Call 0.Method_arg_90 (var_174, CLng(var_AE), var_17C)
  loc_1C24154:                           Call 0.Method_arg_20 (CStr(var_12C))
  loc_1C2415C:                           Call 0.Method_arg_38 (var_F0)
  loc_1C24171:                         Else
  loc_1C24179:                           var_12C = "Header2"
  loc_1C24193:                           If (var_384 = Ucase(var_12C)) Then
  loc_1C241A1:                             Proc_6_17_EAA2B0(var_12C)
  loc_1C241BD:                             Call 0.Method_arg_90 (var_174, CLng(var_AE), var_17C)
  loc_1C241C5:                             Call 0.Method_arg_20 (CStr(var_12C))
  loc_1C241CD:                             Call 0.Method_arg_38 (var_F4)
  loc_1C241E2:                           Else
  loc_1C241EA:                             var_12C = "Header3"
  loc_1C24204:                             If (var_384 = Ucase(var_12C)) Then
  loc_1C24212:                               Proc_6_17_EAA2B0(var_12C)
  loc_1C2422E:                               Call 0.Method_arg_90 (var_174, CLng(var_AE), var_17C)
  loc_1C24236:                               Call 0.Method_arg_20 (CStr(var_12C))
  loc_1C2423E:                               Call 0.Method_arg_38 (var_F8)
  loc_1C24253:                             Else
  loc_1C2425B:                               var_12C = "Header4"
  loc_1C24275:                               If (var_384 = Ucase(var_12C)) Then
  loc_1C24283:                                 Proc_6_17_EAA2B0(var_12C)
  loc_1C2429F:                                 Call 0.Method_arg_90 (var_174, CLng(var_AE), var_17C)
  loc_1C242A7:                                 Call 0.Method_arg_20 (CStr(var_12C))
  loc_1C242AF:                                 Call 0.Method_arg_38 (var_FC)
  loc_1C242C4:                               Else
  loc_1C242D5:                                 var_14C = Ucase("BOOKNo")
  loc_1C242E6:                                 If (var_384 = var_14C) Then
  loc_1C24314:                                   Proc_6_39_E7C810(var_14C, CVar(var_B4.Fields.Item("VNo")))
  loc_1C24320:                                   var_160 = "'"
  loc_1C2433D:                                   Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C24345:                                   Call 0.Method_arg_20 (var_198)
  loc_1C2434D:                                   Call 0.Method_arg_38 (CStr("'" & var_14C & var_160))
  loc_1C2436C:                                 Else
  loc_1C2438E:                                   If (var_384 = Ucase("BOOKDate")) Then
  loc_1C243DA:                                     Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C243E2:                                     Call 0.Method_arg_20 (var_198)
  loc_1C243EA:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1C24407:                                   Else
  loc_1C24429:                                     If (var_384 = Ucase("BOOKTime")) Then
  loc_1C24475:                                       Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C2447D:                                       Call 0.Method_arg_20 (var_198)
  loc_1C24485:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1C244A2:                                     Else
  loc_1C244C4:                                       If (var_384 = Ucase("DELIDate")) Then
  loc_1C24510:                                         Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C24518:                                         Call 0.Method_arg_20 (var_198)
  loc_1C24520:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))) & "'")
  loc_1C2453D:                                       Else
  loc_1C2455F:                                         If (var_384 = Ucase("DELITime")) Then
  loc_1C245AB:                                           Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C245B3:                                           Call 0.Method_arg_20 (var_198)
  loc_1C245BB:                                           Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DTime"))) & "'")
  loc_1C245D8:                                         Else
  loc_1C245FA:                                           If (var_384 = Ucase("Remarks")) Then
  loc_1C2460F:                                             var_174 = var_B4.Fields
  loc_1C24617:                                             var_17C = var_174.Item("Remark")
  loc_1C24646:                                             Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C2464E:                                             Call 0.Method_arg_20 (var_198)
  loc_1C24656:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_17C)) & "'")
  loc_1C24673:                                           Else
  loc_1C24695:                                             If (var_384 = Ucase("BOOKRemark")) Then
  loc_1C246B9:                                               Call 0.Method_arg_90 (var_174, CLng(var_AE))
  loc_1C246C1:                                               Call 0.Method_arg_20 (var_17C)
  loc_1C246C9:                                               Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1C246DF:                                             Else
  loc_1C24701:                                               If (var_384 = Ucase("Kitchen")) Then
  loc_1C2474D:                                                 Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C24755:                                                 Call 0.Method_arg_20 (var_198)
  loc_1C2475D:                                                 Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name"))) & "'")
  loc_1C2477A:                                               Else
  loc_1C2479C:                                                 If (var_384 = Ucase("User")) Then
  loc_1C247E8:                                                   Call 0.Method_arg_90 (var_194, CLng(var_AE))
  loc_1C247F0:                                                   Call 0.Method_arg_20 (var_198)
  loc_1C247F8:                                                   Call 0.Method_arg_38 ("'" & Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name"))) & "'")
  loc_1C24812:                                                 End If
  loc_1C24812:                                               End If
  loc_1C24812:                                             End If
  loc_1C24812:                                           End If
  loc_1C24812:                                         End If
  loc_1C24812:                                       End If
  loc_1C24812:                                     End If
  loc_1C24812:                                   End If
  loc_1C24812:                                 End If
  loc_1C24812:                               End If
  loc_1C24812:                             End If
  loc_1C24812:                           End If
  loc_1C24812:                         End If
  loc_1C24812:                       End If
  loc_1C24812:                     End If
  loc_1C24812:                   End If
  loc_1C24812:                 End If
  loc_1C24812:               End If
  loc_1C24812:             End If
  loc_1C24815:           Next var_374 'Integer
  loc_1C2481D:           var_B4.MoveNext
  loc_1C24822:           GoTo loc_1C234AB
  loc_1C24825:         End If
  loc_1C2484D:         var_150 = Proc_6_38_E68A98(CVar(var_10C.Fields.Item("Printer")))
  loc_1C2485E:         If (var_150 <> vbNullString) Then
  loc_1C248AB:           If CBool(Ucase(CVar(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C248DA:             Call Proc_169_76_F0E548(Proc_6_38_E68A98(CVar(var_10C.Fields.Item("Printer"))))
  loc_1C248E8:           End If
  loc_1C248E8:         End If
  loc_1C248EE:         If (var_E6 <= 0) Then
  loc_1C248F7:           Call 0.Method_arg_50 (var_150)
  loc_1C24901:           Set var_17C = Nothing
  loc_1C2491B:           Set var_174 = MemVar_1F921E4 
  loc_1C24927:           Proc_6_99_1483714(var_174, 0, var_150)
  loc_1C24932:           MemVar_1F921E4 = var_174
  loc_1C24943:         Else
  loc_1C24961:           Call 0.Method_Me8 (False, CVar(var_E6), var_160, var_1C8)
  loc_1C24966:         End If
  loc_1C24969:       Else
  loc_1C24974:         If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1C24979:           Close 1
  loc_1C249A0:           Open "C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C249B0:           var_B4.MoveFirst
  loc_1C249B5:           ' Referenced from:     1C2565B
  loc_1C249C4:           If Not(var_B4.EOF) Then
  loc_1C249C9:             var_92 = 0
  loc_1C24A04:             var_190 = 3
  loc_1C24AA4:             var_30C = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING")), &HFF)
  loc_1C24AC0:             var_180 = var_30C
  loc_1C24AE7:             var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92))), 1, var_190)) = "LAU") 'Variant
  loc_1C24AF1:             var_304 = IIf(var_2F4, IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING")), (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING")), var_1FC) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_180 = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C24AFA:             var_90 = CStr(var_304)
  loc_1C24B3E:             If (var_92 = 0) Then
  loc_1C24B43:               Print 1
  loc_1C24B77:               var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C24B88:               If (var_F0 <> vbNullString) Then
  loc_1C24BB1:                 var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1C24BB7:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C24BC9:               End If
  loc_1C24BD1:               If (var_F4 <> vbNullString) Then
  loc_1C24BFA:                 var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1C24C00:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C24C12:               End If
  loc_1C24C1A:               If (var_F8 <> vbNullString) Then
  loc_1C24C43:                 var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1C24C49:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C24C5B:               End If
  loc_1C24C63:               If (var_FC <> vbNullString) Then
  loc_1C24C8C:                 var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1C24C92:                 Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C24CA4:               End If
  loc_1C24CA6:               Print 1
  loc_1C24CC9:               var_308 = "D"
  loc_1C24CD6:               Call Proc_169_97_10AC908(Me.LblRest.Caption, var_308, &H28)
  loc_1C24CE0:               Print 1, var_30C
  loc_1C24D06:               Call Proc_169_97_10AC908(var_90, "D", &H28)
  loc_1C24D10:               Print 1, var_180
  loc_1C24D4A:               var_30C = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")), &H12, var_180)
  loc_1C24D65:               Call Proc_169_97_10AC908(var_30C, "D", &H28)
  loc_1C24D6F:               Print 1, var_308
  loc_1C24D88:               Print 1
  loc_1C24DC1:               Proc_6_39_E7C810(var_190, CVar(var_B4.Fields.Item("VNo")), var_308)
  loc_1C24DE3:               var_14C = (Chr(&HF) + "BOOKING No.   :     ")
  loc_1C24DED:               var_1B8 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_190), &HA)))
  loc_1C24DF3:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, var_190))
  loc_1C24EA5:               var_14C = (Chr(&HF) + "BOOKING Dt.   :     ")
  loc_1C24EAF:               var_1A8 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_30C), &HC)))
  loc_1C24EB8:               var_1B8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_30C), &HC))), &HA)) + " ")
  loc_1C24EC2:               var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), var_30C), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C24EC8:               Print 1, "* NC LOT *"
  loc_1C24F6D:               var_310 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DTime")))
  loc_1C24F8C:               var_14C = (Chr(&HF) + "DELIVERY Dt.  :     ")
  loc_1C24F96:               var_1A8 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))), &HC)))
  loc_1C24F9F:               var_1B8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))), &HC))), &HA)) + " ")
  loc_1C24FA9:               var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))), &HC)))) + CVar(Proc_6_45_EAD428(var_310, 8)))
  loc_1C24FAF:               Print 1, "* NC LOT *"
  loc_1C25034:               var_1B8 = Chr(&H12)
  loc_1C25041:               var_14C = (Chr(&HF) + "Remarks :     ")
  loc_1C2504B:               var_1A8 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remark"))), &H32)))
  loc_1C25052:               var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remark"))), &H32))), &HA)) + var_1B8)
  loc_1C25058:               Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C25091:               var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C25097:               Print 1, CVar(Proc_6_45_EAD428(var_FC, &H28))
  loc_1C250A4:             End If
  loc_1C250CA:             var_170 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1C250D6:             var_180 = "Qty"
  loc_1C250E4:             var_1A8 = (CVar(var_B4.Fields.Item("Remark")) + CVar(Proc_6_52_EAD4F4(var_180, 6)))
  loc_1C250E9:             var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_180, 6))), &HA)))
  loc_1C25116:             var_14C = (Chr(&HF) + CVar(var_AC))
  loc_1C2511C:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C2513F:             var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C25145:             Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C25158:             var_92 = (var_92 + 4)
  loc_1C2515E:             var_B8.MoveFirst
  loc_1C25163:             ' Referenced from:     1C25504
  loc_1C25172:             If Not(var_B8.EOF) Then
  loc_1C251C2:               Proc_6_39_E7C810(var_1B8, CVar(var_B8.Fields.Item("qty")))
  loc_1C25265:               var_190 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C2527E:               var_234 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1B8, "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_180, 6)))))
  loc_1C25294:               var_304 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C25297:               var_344 = (&H12 + var_304)
  loc_1C252F0:               var_14C = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C252F6:               Print 1, Space(3)
  loc_1C25309:               var_92 = (var_92 + 1)
  loc_1C25345:               If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C25388:                 var_14C = (Chr(&HF) + "(")
  loc_1C25392:                 var_1A8 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1C2539B:                 var_1B8 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1C253A1:                 Print 1, var_1B8
  loc_1C253C2:                 var_92 = (var_92 + 1)
  loc_1C253C5:               End If
  loc_1C253CF:               If (&H12 = (&H45 - var_A6)) Then
  loc_1C253E8:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C253EE:                 Print 1, Space(3)
  loc_1C25400:                 Print 1, "Contd."
  loc_1C25418:                 Print 1, Chr(&HC)
  loc_1C25427:                 var_94 = (var_94 + 1)
  loc_1C2543D:                 Call Proc_169_98_134B1E8(1, 0, &H28, var_316)
  loc_1C2545C:                 Call Proc_169_97_10AC908(var_90, "B", &H28, var_180, var_316)
  loc_1C25466:                 Print 1, var_180
  loc_1C25475:                 var_92 = &H12
  loc_1C2548E:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C25494:                 Print 1, Space(3)
  loc_1C254B7:                 var_14C = (Chr(&HF) + CVar(var_AC))
  loc_1C254BD:                 Print 1, Space(3)
  loc_1C254E0:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C254E6:                 Print 1, Space(3)
  loc_1C254F9:                 var_92 = (var_92 + 4)
  loc_1C254FC:               End If
  loc_1C254FF:               var_B8.MoveNext
  loc_1C25504:               GoTo loc_1C25163
  loc_1C25507:             End If
  loc_1C25511:             If (var_92 < (&H45 - var_A6)) Then
  loc_1C25514:               ' Referenced from:     1C25535
  loc_1C2551E:               If (var_92 = (&H45 - var_A6)) Then
  loc_1C25526:                 Print 1, vbNullString
  loc_1C25532:                 var_92 = (var_92 + 1)
  loc_1C25535:                 GoTo loc_1C25514
  loc_1C25538:               End If
  loc_1C25538:             End If
  loc_1C2554E:             var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C25554:             Print 1, Space(3)
  loc_1C255B5:             var_14C = (Chr(&HF) + "User  :     ")
  loc_1C255BC:             var_190 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C255BF:             var_1A8 = (Space(3) + var_190)
  loc_1C255C5:             Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1C255F9:             var_14C = (Chr(&HF) + "** ")
  loc_1C25603:             var_170 = (Space(3) + CVar(MemVar_1F9221C))
  loc_1C2560C:             var_190 = (CVar(var_B4.Fields.Item("U_Name")) + " **")
  loc_1C25612:             Print 1, var_190
  loc_1C25626:             var_B4.MoveNext
  loc_1C2562D:             Print 1
  loc_1C25635:             Print 1
  loc_1C2563D:             Print 1
  loc_1C25645:             Print 1
  loc_1C2564D:             Print 1
  loc_1C25655:             Print 1
  loc_1C2565B:             GoTo loc_1C249B5
  loc_1C2565E:           End If
  loc_1C25660:           Close 1
  loc_1C2569B:           If (Proc_6_38_E68A98(CVar(var_10C.Fields.Item("Printer")), 1) <> vbNullString) Then
  loc_1C256C3:             Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C2571B:             var_170 = CVar("TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_10C.Fields.Item("Printer").Value 
  loc_1C25721:             Print 1, var_170
  loc_1C25741:           Else
  loc_1C25766:             Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C2579D:             Print 1, "TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C257AE:           End If
  loc_1C257B0:           Close 1
  loc_1C257BA:           If (MemVar_1F923B8 = "Y") Then
  loc_1C257EC:             var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C257FD:           Else
  loc_1C25805:             For var_388 = 1 To var_E8:       var_EA = var_388 'Integer
  loc_1C2583A:               var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C2584B:             Next var_388 'Integer
  loc_1C25850:           End If
  loc_1C25853:         Else
  loc_1C2585E:           If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1C25863:             Close 1
  loc_1C2588A:             Open "C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C2589A:             var_B4.MoveFirst
  loc_1C2589F:             ' Referenced from:       1C26595
  loc_1C258AE:             If Not(var_B4.EOF) Then
  loc_1C258EE:               var_190 = 3
  loc_1C25936:               var_308 = Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING")))
  loc_1C259D1:               var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_190)) = "LAU") 'Variant
  loc_1C259DB:               var_304 = IIf(var_2F4, IIf((var_308 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C259E4:               var_90 = CStr(var_304)
  loc_1C25A28:               If (0 = 0) Then
  loc_1C25A2D:                 Print 1
  loc_1C25A61:                 var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C25A72:                 If (var_F0 <> vbNullString) Then
  loc_1C25A9B:                   var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H28)))
  loc_1C25AA1:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C25AB3:                 End If
  loc_1C25ABB:                 If (var_F4 <> vbNullString) Then
  loc_1C25AE4:                   var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H28)))
  loc_1C25AEA:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C25AFC:                 End If
  loc_1C25B04:                 If (var_F8 <> vbNullString) Then
  loc_1C25B2D:                   var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H28)))
  loc_1C25B33:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C25B45:                 End If
  loc_1C25B4D:                 If (var_FC <> vbNullString) Then
  loc_1C25B76:                   var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H28)))
  loc_1C25B7C:                   Print 1, Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C25B8E:                 End If
  loc_1C25B90:                 Print 1
  loc_1C25BD4:                 Call Proc_169_97_10AC908(Proc_6_45_EAD428(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1C25BDE:                 Print 1, var_310
  loc_1C25C1C:                 Call Proc_169_97_10AC908(Proc_6_45_EAD428(var_90, &H14), "D", &H28)
  loc_1C25C26:                 Print 1, var_308
  loc_1C25C7F:                 Call Proc_169_97_10AC908(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")), &H12, var_308), "D", &H28)
  loc_1C25C89:                 Print 1, var_308
  loc_1C25CA2:                 Print 1
  loc_1C25CDB:                 Proc_6_39_E7C810(var_190, CVar(var_B4.Fields.Item("VNo")), var_308)
  loc_1C25CFD:                 var_14C = (Chr(&HF) + "BOOKING No.   :       ")
  loc_1C25D07:                 var_1B8 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(CStr(var_190), &HA)))
  loc_1C25D0D:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_190))
  loc_1C25DBF:                 var_14C = (Chr(&HF) + "BOOKING Dt.   :       ")
  loc_1C25DC6:                 var_190 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1C25DC9:                 var_1A8 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + var_190)
  loc_1C25DD2:                 var_1B8 = (CVar(Proc_6_45_EAD428(CStr(var_190), &HA)) + " ")
  loc_1C25DDC:                 var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_190)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C25DE2:                 Print 1, "* NC LOT *"
  loc_1C25EA6:                 var_14C = (Chr(&HF) + "DELIVERY Dt.  :       ")
  loc_1C25EB0:                 var_1A8 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))), &HC)))
  loc_1C25EB9:                 var_1B8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))), &HC))), &HA)) + " ")
  loc_1C25EC3:                 var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))), &HC)))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DTime"))), 8)))
  loc_1C25EC9:                 Print 1, "* NC LOT *"
  loc_1C25F4E:                 var_1B8 = Chr(&H12)
  loc_1C25F5B:                 var_14C = (Chr(&HF) + "Remarks :       ")
  loc_1C25F65:                 var_1A8 = (CVar(Proc_6_45_EAD428(var_FC, &H28)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remark"))), &H32)))
  loc_1C25F6C:                 var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remark"))), &H32))), &HA)) + var_1B8)
  loc_1C25F72:                 Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C25FAB:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C25FB1:                 Print 1, CVar(Proc_6_45_EAD428(var_FC, &H28))
  loc_1C25FBE:               End If
  loc_1C25FE4:               var_170 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H19)) + Space(3))
  loc_1C25FF0:               var_180 = "Qty"
  loc_1C25FFE:               var_1A8 = (CVar(var_B4.Fields.Item("Remark")) + CVar(Proc_6_52_EAD4F4(var_180, 6)))
  loc_1C26003:               var_AC = CStr(CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_52_EAD4F4(var_180, 6))), &HA)))
  loc_1C26030:               var_14C = (Chr(&HF) + CVar(var_AC))
  loc_1C26036:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C26059:               var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C2605F:               Print 1, CVar(Proc_6_45_EAD428("ITEM NAME", &H19))
  loc_1C26072:               var_92 = (var_92 + 4)
  loc_1C26078:               var_B8.MoveFirst
  loc_1C2607D:               ' Referenced from:       1C2641E
  loc_1C2608C:               If Not(var_B8.EOF) Then
  loc_1C260DC:                 Proc_6_39_E7C810(var_1B8, CVar(var_B8.Fields.Item("qty")))
  loc_1C2617F:                 var_190 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C26198:                 var_234 = (1 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1B8, "0.00")), 6, CVar(Proc_6_52_EAD4F4(var_180, 6)))))
  loc_1C261AE:                 var_304 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C261B1:                 var_344 = (&H12 + var_304)
  loc_1C2620A:                 var_14C = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C26210:                 Print 1, Space(3)
  loc_1C26223:                 var_92 = (var_92 + 1)
  loc_1C2625F:                 If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C262A2:                   var_14C = (Chr(&HF) + "(")
  loc_1C262AC:                   var_1A8 = (Space(3) + CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))))
  loc_1C262B5:                   var_1B8 = (CVar(var_B8.Fields.Item("qty")) + ")")
  loc_1C262BB:                   Print 1, var_1B8
  loc_1C262DC:                   var_92 = (var_92 + 1)
  loc_1C262DF:                 End If
  loc_1C262E9:                 If (&H12 = (&H45 - var_A6)) Then
  loc_1C26302:                   var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C26308:                   Print 1, Space(3)
  loc_1C2631A:                   Print 1, "Contd."
  loc_1C26332:                   Print 1, Chr(&HC)
  loc_1C26341:                   var_94 = (var_94 + 1)
  loc_1C26357:                   Call Proc_169_98_134B1E8(1, 0, &H28, var_316)
  loc_1C26376:                   Call Proc_169_97_10AC908(var_90, "B", &H28, var_180, var_316)
  loc_1C26380:                   Print 1, var_180
  loc_1C2638F:                   var_92 = &H12
  loc_1C263A8:                   var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C263AE:                   Print 1, Space(3)
  loc_1C263D1:                   var_14C = (Chr(&HF) + CVar(var_AC))
  loc_1C263D7:                   Print 1, Space(3)
  loc_1C263FA:                   var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C26400:                   Print 1, Space(3)
  loc_1C26413:                   var_92 = (var_92 + 4)
  loc_1C26416:                 End If
  loc_1C26419:                 var_B8.MoveNext
  loc_1C2641E:                 GoTo loc_1C2607D
  loc_1C26421:               End If
  loc_1C2642B:               If (var_92 < (&H45 - var_A6)) Then
  loc_1C2642E:                 ' Referenced from:       1C2644F
  loc_1C26438:                 If (var_92 = (&H45 - var_A6)) Then
  loc_1C26440:                   Print 1, vbNullString
  loc_1C2644C:                   var_92 = (var_92 + 1)
  loc_1C2644F:                   GoTo loc_1C2642E
  loc_1C26452:                 End If
  loc_1C26452:               End If
  loc_1C26468:               var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C2646E:               Print 1, Space(3)
  loc_1C264CF:               var_14C = (Chr(&HF) + "User :       ")
  loc_1C264D6:               var_190 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C264D9:               var_1A8 = (Space(3) + var_190)
  loc_1C264DF:               Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1C26513:               var_14C = (Chr(&HF) + "** ")
  loc_1C2651D:               var_170 = (Space(3) + CVar(MemVar_1F9221C))
  loc_1C26526:               var_190 = (CVar(var_B4.Fields.Item("U_Name")) + " **")
  loc_1C2652C:               Print 1, var_190
  loc_1C26540:               var_B4.MoveNext
  loc_1C26547:               Print 1
  loc_1C2654F:               Print 1
  loc_1C26557:               Print 1
  loc_1C2655F:               Print 1
  loc_1C26567:               Print 1
  loc_1C2656F:               Print 1
  loc_1C26577:               Print 1
  loc_1C2657F:               Print 1
  loc_1C26587:               Print 1
  loc_1C2658F:               Print 1
  loc_1C26595:               GoTo loc_1C2589F
  loc_1C26598:             End If
  loc_1C2659A:             Close 1
  loc_1C265D5:             If (Proc_6_38_E68A98(CVar(var_10C.Fields.Item("Printer")), 1) <> vbNullString) Then
  loc_1C265FD:               Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C26655:               var_170 = CVar("TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_10C.Fields.Item("Printer").Value 
  loc_1C2665B:               Print 1, var_170
  loc_1C2667B:             Else
  loc_1C266A0:               Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C266D7:               Print 1, "TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C266E8:             End If
  loc_1C266EA:             Close 1
  loc_1C266F4:             If (MemVar_1F923B8 = "Y") Then
  loc_1C26726:               var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C26737:             Else
  loc_1C2673F:               For var_38C = 1 To var_E8:         var_EA = var_38C 'Integer
  loc_1C26774:                 var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C26785:               Next var_38C 'Integer
  loc_1C2678A:             End If
  loc_1C2678D:           Else
  loc_1C26798:             If Not (var_264 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1C267A6:               If (var_264 = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)") Then
  loc_1C267A9:               End If
  loc_1C267AB:               Close 1
  loc_1C267D2:               Open "C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C267E2:               var_B4.MoveFirst
  loc_1C267E7:               ' Referenced from:         1C27A4E
  loc_1C267F6:               If Not(var_B4.EOF) Then
  loc_1C26923:                 var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC BOOKING *", "* BOOKING *"))
  loc_1C2692C:                 var_90 = CStr(var_304)
  loc_1C26998:                 var_C0 = Replace(CStr(Space(&H2E)), " ", "-", 1, -1, 0)
  loc_1C269A7:                 If (0 = 0) Then
  loc_1C269AC:                   Print 1
  loc_1C269BA:                   If (var_F0 <> vbNullString) Then
  loc_1C269F0:                     var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F0, &H2E)))
  loc_1C269F7:                     var_1A8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C269FD:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C26A13:                   End If
  loc_1C26A1B:                   If (var_F4 <> vbNullString) Then
  loc_1C26A51:                     var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F4, &H2E)))
  loc_1C26A58:                     var_1A8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C26A5E:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C26A74:                   End If
  loc_1C26A7C:                   If (var_F8 <> vbNullString) Then
  loc_1C26AB2:                     var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_F8, &H2E)))
  loc_1C26AB9:                     var_1A8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C26ABF:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C26AD5:                   End If
  loc_1C26ADD:                   If (var_FC <> vbNullString) Then
  loc_1C26B13:                     var_170 = (Chr(&HF) + CVar(Proc_6_45_EAD428(var_FC, &H2E)))
  loc_1C26B1A:                     var_1A8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C26B20:                     Print 1, Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C26B36:                   End If
  loc_1C26B38:                   Print 1
  loc_1C26B67:                   var_1A8 = (46 - Len(Trim(CVar(Me.LblRest))))
  loc_1C26BAA:                   var_2E4 = (46 - Len(Trim(CVar(Me.LblRest))))
  loc_1C26BB3:                   var_2F4 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC BOOKING *", "* BOOKING *") / 2)
  loc_1C26BD4:                   var_1E8 = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1C26BDB:                   var_254 = (CVar(var_B4.Fields.Item("NCBOOKING")) + Trim(CVar(Me.LblRest)))
  loc_1C26BE2:                   var_344 = (IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng(var_2F4)))
  loc_1C26BE9:                   var_368 = (IIf((var_B8.Fields.Item(2).Value = (Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1C26BEF:                   Print 1, var_368
  loc_1C26C3D:                   var_190 = (46 - Len(Trim(var_90)))
  loc_1C26C70:                   var_254 = (46 - Len(Trim(var_90)))
  loc_1C26C82:                   var_2B4 = Space(CLng((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC LOT *", "* LOT *") / 2)))
  loc_1C26C9A:                   var_1D8 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1C26CA4:                   var_1E8 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1C26CAB:                   var_2D4 = (CVar(var_B4.Fields.Item("NCBOOKING")) + var_2B4)
  loc_1C26CB2:                   var_2F4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1C26CB8:                   Print 1, var_2F4
  loc_1C26CD7:                   var_92 = &H12
  loc_1C26D1A:                   var_190 = Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")), 46)))
  loc_1C26D26:                   var_1B8 = (var_92 - Len(var_190))
  loc_1C26DA7:                   var_304 = (var_92 - Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")), 46)))))
  loc_1C26DD1:                   var_224 = (Chr(&HF) + Space(CLng((Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) / 2))))
  loc_1C26DDB:                   var_284 = (Trim(var_90) + CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")))))
  loc_1C26DE2:                   var_368 = ((IIf((Proc_6_38_E68A98(CVar(var_B4.Fields.Item("NCBOOKING"))) = "Y"), "* NC LOT *", "* LOT *") / 2) + Space(CLng((Space(CLng(Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")), 46)))))) / 2))))
  loc_1C26DE9:                   var_3AC = (var_368 + Chr(&H12))
  loc_1C26DEF:                   Print 1, var_3AC
  loc_1C26E26:                   Print 1
  loc_1C26E58:                   var_170 = CVar(var_B4.Fields.Item("VNo")) 'Address
  loc_1C26E5F:                   Proc_6_39_E7C810(var_190)
  loc_1C26E8E:                   var_14C = (Chr(&HF) + "BOOKING No. :         ")
  loc_1C26E98:                   var_1B8 = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EAD428(CStr(var_190), &H20)))
  loc_1C26E9F:                   var_1E8 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1C26EA5:                   Print 1, Space(CLng((Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) / 2)))
  loc_1C26F68:                   var_14C = (Chr(&HF) + "BOOKING Dt. :         ")
  loc_1C26F72:                   var_1A8 = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC)))
  loc_1C26F7B:                   var_1B8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VDate"))), &HC))), &H20)) + "   Tm. :         ")
  loc_1C26F85:                   var_224 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("VTIME"))), &HB)))
  loc_1C26F8C:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C26F92:                   Print 1, CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name"))))
  loc_1C27067:                   var_14C = (Chr(&HF) + "DELIVERY Dt.:         ")
  loc_1C27071:                   var_1A8 = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))), &HC)))
  loc_1C2707A:                   var_1B8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DDate"))), &HC))), &H20)) + "   Tm. :         ")
  loc_1C27084:                   var_224 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("DTime"))), &HB)))
  loc_1C2708B:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C27091:                   Print 1, CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name"))))
  loc_1C27127:                   var_14C = (Chr(&HF) + "Remarks :         ")
  loc_1C27131:                   var_1A8 = (CVar(var_BC.Fields.Item("Name")) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remark"))), &H24)))
  loc_1C27138:                   var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remark"))), &H24))), &H20)) + Chr(&H12))
  loc_1C2713E:                   Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C27184:                   var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C2718B:                   var_190 = (CVar(var_BC.Fields.Item("Name")) + Chr(&H12))
  loc_1C27191:                   Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("Remark"))), &H24))
  loc_1C271A2:                 End If
  loc_1C271C8:                 var_170 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H18)) + Space(1))
  loc_1C271E2:                 var_1A8 = (Chr(&H12) + CVar(Proc_6_45_EAD428("Unit", 8)))
  loc_1C271F6:                 var_1D8 = (CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428("Unit", 8))), &H20)) + Space(1))
  loc_1C27210:                 var_224 = (CVar(var_B4.Fields.Item("DTime")) + CVar(Proc_6_52_EAD4F4("Qty", 7)))
  loc_1C27259:                 var_14C = (Chr(&HF) + CVar(CStr(Trim(var_90))))
  loc_1C27260:                 var_190 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H18)) + Chr(&H12))
  loc_1C27266:                 Print 1, CVar(Proc_6_45_EAD428("Unit", 8))
  loc_1C2729A:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C272A1:                 var_190 = (CVar(Proc_6_45_EAD428("ITEM NAME", &H18)) + Chr(&H12))
  loc_1C272A7:                 Print 1, CVar(Proc_6_45_EAD428("Unit", 8))
  loc_1C272BE:                 var_92 = (var_92 + 4)
  loc_1C272C4:                 var_B8.MoveFirst
  loc_1C272C9:                 ' Referenced from:         1C278D3
  loc_1C272D8:                 If Not(var_B8.EOF) Then
  loc_1C27311:                   var_194 = var_B8.Fields
  loc_1C27353:                   Proc_6_39_E7C810(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")))), CVar(var_B8.Fields.Item("qty")))
  loc_1C273F6:                   var_190 = (CVar(Proc_6_45_EAD428(CStr(var_B8.Fields.Item("ItemName").Value), &H18, 1)) + Space(1))
  loc_1C2740B:                   var_1B8 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_194.Item("Unit")), var_92), 8, CVar(Proc_6_45_EAD428("Unit", 8)))) 'String
  loc_1C2740E:                   var_1D8 = (1 + var_1B8)
  loc_1C27422:                   var_224 = (CVar(var_B4.Fields.Item("DTime")) + Space(1))
  loc_1C27438:                   var_2D4 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")))), "0.000")), 7)) 'String
  loc_1C2743B:                   var_2E4 = (Trim(var_90) + var_2D4)
  loc_1C27451:                   var_3AC = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C27454:                   var_3C8 = (Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Name")), 46))) + var_3AC)
  loc_1C274CA:                   var_14C = (Chr(&HF) + CVar(CStr(var_3C8)))
  loc_1C274D1:                   var_190 = (Space(1) + Chr(&H12))
  loc_1C274D7:                   Print 1, CVar(Proc_6_45_EAD428("Unit", 8))
  loc_1C274EE:                   var_92 = (var_92 + 1)
  loc_1C2752A:                   If (Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")), var_92) <> vbNullString) Then
  loc_1C27573:                     var_1A8 = Left(CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Description")))), &H2C)
  loc_1C27580:                     var_14C = (Chr(&HF) + "(")
  loc_1C27587:                     var_1B8 = (Space(1) + var_1A8)
  loc_1C27590:                     var_1D8 = (var_1B8 + ")")
  loc_1C27596:                     Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C275B9:                     var_92 = (var_92 + 1)
  loc_1C275BC:                   End If
  loc_1C275D0:                   var_150 = "Select IM.Name As ItemName, IM.Unit , Qty  from ComboPackDetail Inner Join ItemMast IM On ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F92078
  loc_1C27604:                   var_170 = CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") & var_B8.Fields.Item("ItemCode").Value 
  loc_1C2761B:                   unk_56D39B.Execute CStr(var_170 & "'"), var_1A8, -1
  loc_1C27626:                   Set var_D0 = var_194
  loc_1C2765A:                   If (var_D0.RecordCount > 0) Then
  loc_1C2765F:                     var_106 = 1
  loc_1C27662:                     ' Referenced from:         1C278C0
  loc_1C27671:                     If Not(var_D0.EOF) Then
  loc_1C2767E:                       var_12C = Chr(CLng((&H60 + var_106)))
  loc_1C276B9:                       var_194 = var_D0.Fields
  loc_1C276FB:                       Proc_6_39_E7C810(var_2D4, CVar(var_D0.Fields.Item("qty")))
  loc_1C27786:                       var_14C = (var_B8.Fields.Item("ItemCode").Value + ")")
  loc_1C2778D:                       var_190 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + var_D0.Fields.Item("ItemName").Value)
  loc_1C277AE:                       var_1D8 = (CVar(Proc_6_45_EAD428(CStr(var_D0.Fields.Item("ItemName").Value & "'"), &H18, 1)) + Space(1))
  loc_1C277C3:                       var_224 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_194.Item("Unit")), var_106, var_194), 8, CVar(var_B4.Fields.Item("DTime")))) 'String
  loc_1C277C6:                       var_234 = (1 + var_224)
  loc_1C277DA:                       var_284 = (CVar(var_B8.Fields.Item("qty")) + Space(1))
  loc_1C277F3:                       var_344 = (var_92 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_2D4, "0.000")), 7, "0.000")))
  loc_1C27809:                       var_3E8 = CVar(Proc_6_52_EAD4F4(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C2780C:                       var_3F8 = ((var_B8.Fields.Item("Cancel").Value = "Y") + var_3E8)
  loc_1C27888:                       var_14C = (Chr(&HF) + CVar(CStr(var_3F8)))
  loc_1C2788F:                       var_190 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + Chr(&H12))
  loc_1C27895:                       Print 1, Chr(&H12) & "'"
  loc_1C278AC:                       var_92 = (var_92 + 1)
  loc_1C278B5:                       var_106 = (var_106 + 1)
  loc_1C278BB:                       var_D0.MoveNext
  loc_1C278C0:                       GoTo loc_1C27662
  loc_1C278C3:                     End If
  loc_1C278C3:                   End If
  loc_1C278C8:                   Set var_D0 = Nothing
  loc_1C278CE:                   var_B8.MoveNext
  loc_1C278D3:                   GoTo loc_1C272C9
  loc_1C278D6:                 End If
  loc_1C278F9:                 var_14C = (Chr(&HF) + CVar(var_C0))
  loc_1C27900:                 var_190 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + Chr(&H12))
  loc_1C27906:                 Print 1, Chr(&H12) & "'"
  loc_1C2796B:                 var_1B8 = Chr(&H12)
  loc_1C27978:                 var_14C = (Chr(&HF) + "User :         ")
  loc_1C27982:                 var_1A8 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name")), var_106), &H14)))
  loc_1C27989:                 var_1D8 = (Space(1) + var_1B8)
  loc_1C2798F:                 Print 1, CVar(var_B4.Fields.Item("DTime"))
  loc_1C279C7:                 var_14C = (Chr(&HF) + "** ")
  loc_1C279D1:                 var_170 = (CVar(var_150 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") + CVar(MemVar_1F9221C))
  loc_1C279DA:                 var_190 = (CVar(var_B4.Fields.Item("U_Name")) + " **")
  loc_1C279E0:                 Print 1, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name")), var_106), &H14))
  loc_1C279F4:                 var_B4.MoveNext
  loc_1C279FB:                 Print 1
  loc_1C27A03:                 Print 1
  loc_1C27A0B:                 Print 1
  loc_1C27A13:                 Print 1
  loc_1C27A39:                 var_170 = (Chr(&H1B) + Chr(&H6D))
  loc_1C27A3F:                 Print 1, CVar(var_B4.Fields.Item("U_Name"))
  loc_1C27A4E:                 GoTo loc_1C267E7
  loc_1C27A51:               End If
  loc_1C27A53:               Close 1
  loc_1C27A8E:               If (Proc_6_38_E68A98(CVar(var_10C.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_1C27AB6:                 Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C27B0E:                 var_170 = CVar("TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_10C.Fields.Item("Printer").Value 
  loc_1C27B14:                 Print 1, var_170
  loc_1C27B34:               Else
  loc_1C27B59:                 Open "C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C27B90:                 Print 1, "TYPE C:\reptmp\BOOKING_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F923B4
  loc_1C27BA1:               End If
  loc_1C27BA3:               Close 1
  loc_1C27BAD:               If (MemVar_1F923B8 = "Y") Then
  loc_1C27BDF:                 var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C27BF0:               Else
  loc_1C27BF8:                 For var_3FC = 1 To var_E8:           var_EA = var_3FC 'Integer
  loc_1C27C2D:                   var_A4 = CVar(Shell(CVar("C:\reptmp\BOOKINGPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C27C3E:                 Next var_3FC 'Integer
  loc_1C27C43:               End If
  loc_1C27C43:             End If
  loc_1C27C43:           End If
  loc_1C27C43:         End If
  loc_1C27C43:       End If
  loc_1C27C43:     End If
  loc_1C27C99:     unk_56D39B.Execute CStr("UPDATE PackingOrder SET PRINTEDYN='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name")), var_106), &H14)), -1
  loc_1C27CB8:   Else
  loc_1C27D02:     MsgBox("Please Check Printer Setting of " & var_10C.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_B4.Fields.Item("U_Name")), var_106), &H14)), Space(1), var_1B8)
  loc_1C27D1D:   End If
  loc_1C27D20:   var_BC.MoveNext
  loc_1C27D25:   GoTo loc_1C2251C
  loc_1C27D28: End If
  loc_1C27D2D: Set var_B4 = Nothing
  loc_1C27D35: Set var_B8 = Nothing
  loc_1C27D3D: Set var_BC = Nothing
  loc_1C27D45: Set var_10C = Nothing
  loc_1C27D4D: Set var_D0 = Nothing
  loc_1C27D55: Set var_DC = Nothing
  loc_1C27D5D: Set var_100 = Nothing
  loc_1C27D60: Exit Sub
  loc_1C27D61: ' Referenced from: 1C21FC0
  loc_1C27D61: Proc_6_60_E62BC4(var_194)
  loc_1C27D66: Exit Sub
End Sub

Public Sub Proc_169_81_FCE804(arg_C, arg_10, arg_14) 'FCE804
  'Data Table: 56D390
  Dim unk_56D39B As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  loc_FCE66E: If (arg_C = "ORDER") Then
  loc_FCE695:   unk_56D39B.Execute "Select DocId,VType,VNo From PackingOrderDetail Where DocId='" & arg_10 & "' And isnull(Contradocid,'')<>''", var_C0, -1
  loc_FCE6C4:   If (var_C4.RecordCount > 0) Then
  loc_FCE6CD:     Call 0.Method_arg_50 (var_D0)
  loc_FCE6FF:     var_C0 = CVar("Bill Already Generated." & vbCrLf & "Can not " & arg_14 & " the Record") 'String
  loc_FCE702:     MsgBox(var_C0, &H10, CVar(var_D0), var_F0, var_110)
  loc_FCE725:     Set var_8C = Nothing
  loc_FCE728:     Proc_169_81_FCE804 = 0
  loc_FCE72E:   End If
  loc_FCE752:   unk_56D39B.Execute "Select DocId,VType,VNo From PayCharge Where ContraDocId='" & arg_10 & "'", var_C0, -1
  loc_FCE781:   If (var_C4.RecordCount > 0) Then
  loc_FCE78A:     Call 0.Method_arg_50 (var_D0, var_C4)
  loc_FCE7BF:     MsgBox(CVar("Advance Entry Exists." & vbCrLf & "Can not " & arg_14 & " the Record"), &H10, CVar(var_D0), var_F0, var_110)
  loc_FCE7E2:     Set var_8C = Nothing
  loc_FCE7E5:     Proc_169_81_FCE804 = 0
  loc_FCE7EB:   End If
  loc_FCE7EE: Else
  loc_FCE7F3:   Proc_169_81_FCE804 = &HFF
  loc_FCE7F9: End If
  loc_FCE7FE: Proc_169_81_FCE804 = &HFF
End Sub

Public Sub Proc_169_82_F2B7B4(arg_C, arg_10, arg_14) 'F2B7B4
  'Data Table: 56D390
  Dim unk_56D39B As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  loc_F2B6DA: If (arg_C = "ORDER") Then
  loc_F2B701:   unk_56D39B.Execute "Select DocId,VType,VNo From PackingOrderDetail Where DocId='" & arg_10 & "' And isnull(Contradocid,'')=''", var_C0, -1
  loc_F2B731:   If Not((var_C4.RecordCount > 0)) Then
  loc_F2B73A:     Call 0.Method_arg_50 (var_D0)
  loc_F2B76F:     MsgBox(CVar("Bill Already Generated." & vbCrLf & "Can Not " & arg_14 & " The Record"), &H10, CVar(var_D0), var_F0, var_110)
  loc_F2B792:     Set var_8C = Nothing
  loc_F2B795:     Proc_169_82_F2B7B4 = 0
  loc_F2B79B:   End If
  loc_F2B79E: Else
  loc_F2B7A3:   Proc_169_82_F2B7B4 = &HFF
  loc_F2B7A9: End If
  loc_F2B7AE: Proc_169_82_F2B7B4 = &HFF
End Sub

Public Sub Proc_169_83_1617B94
  'Data Table: 56D390
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim var_F8 As String
  Dim unk_56D39B As Connection15
  Dim var_120 As String
  Dim var_12C As String
  Dim var_124 As Variant
  Dim var_8C As Recordset15
  Dim var_140 As Variant
  Dim var_D8 As Recordset15
  Dim var_11C As Fields15
  Dim var_118 As Variant
  Dim var_CE As Integer
  Dim var_D0 As Integer
  Dim var_E4 As Recordset15
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A4 As Variant
  Dim var_1C0 As Variant
  Dim var_258 As Variant
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_268 As Variant
  Dim var_278 As Variant
  Dim var_194 As Variant
  Dim var_288 As Variant
  Dim var_298 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_94 As Double
  Dim var_A4 As Double
  Dim var_9C As Double
  Dim var_AC As Double
  Dim var_B4 As Double
  Dim var_BC As Double
  Dim var_C4 As Double
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_36C As Variant
  Dim var_CC As Long
  loc_1616758: On Error Goto loc_1617B8C
  loc_1616772: If (Me.RecordCount <= 0) Then
  loc_1616775:   Exit Sub
  loc_1616776: End If
  loc_161679D: unk_56D39B.Execute "Select * from Depart Where Code='" & global_52 & "'", var_118, -1
  loc_16167A8: Set var_E4 = var_11C
  loc_16167BF: var_F4 = "SELECT     P.VNo as BookingNo,PD.SNo,P.CustName as CustomerName, I.Name as ItemName, P.VDate as BookingDate, " & "P.VTime as BookingTime, P.DDate as DeliveryDate, P.DTime as DeliveryTime, PD.Qty as Quantity, "
  loc_16167C6: var_F8 = var_F4 & "PD.Rate, PD.Amount, P.Total,P.AdvAmt as Advance ,Discount, P.Tax, P.Addition, P.Deduction,P.RoundOff, P.NetAmt as NetAmount,P.TokenNo, "
  loc_16167CD: var_120 = var_F8 & "PD.Remark, P.Site_Code,Isnull(P.NCBOOKING,'') As NCBOOKING,Isnull(P.NCTYPE,'') As NCTYPE FROM PackingOrder P INNER JOIN PackingOrderDetail  PD ON P.DocID = PD.DocID INNER JOIN "
  loc_16167D4: var_12C = var_120 & "Voucher_Type V ON P.VType = V.V_Type AND P.LogSite_Code = V.LogSite_Code  INNER JOIN ItemMast I ON PD.ItemCode = I.Code And PD.ItemRestCode = I.RestCode where P.DocId='"
  loc_16167E5: Set var_11C = Me.Txt
  loc_16167EB: Call 0.Method_Proc_169_83_1617B940 (CInt(2), var_124, var_128)
  loc_16167F3: var_12C = var_124.Text
  loc_1616803: var_88 = var_11C & var_128 & "' Order by PD.Sno"
  loc_1616824: If (var_88 = vbNullString) Then
  loc_1616827:   Exit Sub
  loc_1616828: End If
  loc_161683E: unk_56D39B.Execute var_88, var_118, -1
  loc_1616849: Set var_8C = var_11C
  loc_1616866: If (var_8C.RecordCount <= 0) Then
  loc_161686F:   Call 0.Method_arg_50 (var_F4)
  loc_161688A:   var_118 = "** No Records Found to Print **"
  loc_1616890:   MsgBox(var_118, &H40, CVar(var_F4), var_160, var_180)
  loc_16168A0:   Exit Sub
  loc_16168A1: End If
  loc_16168C5: unk_56D39B.Execute "Select BookingSlipFooter1,BookingSlipFooter2 from Enviro where LOGSite_code='" & MemVar_1F92078 & "'", var_118, -1
  loc_16168D0: Set var_D8 = var_11C
  loc_16168F4: If (var_D8.RecordCount > 0) Then
  loc_1616906:   var_11C = var_D8.Fields
  loc_161691F:   var_DC = Proc_6_38_E68A98(CVar(var_11C.Item("BookingSlipFooter1")), var_11C)
  loc_1616950:   var_E0 = Proc_6_38_E68A98(CVar(var_D8.Fields.Item("BookingSlipFooter2")))
  loc_1616959: End If
  loc_161695B: var_CE = 1
  loc_1616966: MemVar_1F923C8 = "K"
  loc_161696C: Close 1
  loc_1616975: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16169B2: If (Proc_6_38_E68A98(CVar(var_E4.Fields.Item("CstNo")), 1) <> vbNullString) Then
  loc_1616A17:   var_180 = (Chr(&HF) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("CstNo")), var_CE), &H23)))
  loc_1616A1E:   var_1A4 = (var_180 + Chr(&H12))
  loc_1616A24:   Print 1, var_1A4
  loc_1616A4B:   var_D0 = (var_D0 + 1)
  loc_1616A4E: End If
  loc_1616A87: If (Proc_6_38_E68A98(CVar(var_E4.Fields.Item("LstNo")), 1) <> vbNullString) Then
  loc_1616AD3:   var_120 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E4.Fields.Item("LstNo"))), &H23)
  loc_1616AEC:   var_180 = (Chr(&HF) + CVar(var_120))
  loc_1616AF3:   var_1A4 = (var_180 + Chr(&H12))
  loc_1616AF9:   Print 1, var_1A4
  loc_1616B20:   var_D0 = (var_D0 + 1)
  loc_1616B23: End If
  loc_1616B31: Call Proc_169_98_134B1E8(var_CE, 1, &H26)
  loc_1616B56: Call Proc_169_97_10AC908("Booking Slip", "D", &H26, var_120)
  loc_1616B60: Print 1, var_120
  loc_1616B72: var_8C.MoveFirst
  loc_1616BA5: var_C8 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1616BB3: Print 1, vbNullString
  loc_1616BEC: Proc_6_39_E7C810(var_180, CVar(var_8C.Fields.Item("bookingno")), var_1A6)
  loc_1616C7E: var_210 = ("Date : " + Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy"))
  loc_1616C87: var_230 = (var_210 + " ")
  loc_1616C91: var_278 = (var_230 + CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BookingTime")), 1, 1)))
  loc_1616CAA: var_140 = (Chr(&HF) + "Order No. : ")
  loc_1616CB4: var_1A4 = (CVar(var_E4.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(CStr(var_180), 5, var_1A6)))
  loc_1616CBE: var_298 = (var_1A4 + CVar(Proc_6_52_EAD4F4(CStr(var_278), &H17)))
  loc_1616CC4: Print 1, var_298
  loc_1616D54: var_140 = (Chr(&HF) + "Cust. Name: ")
  loc_1616D5E: var_194 = (CVar(var_E4.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("CustomerName").Value), &H1C)))
  loc_1616D64: Print 1, CVar(Proc_6_45_EAD428(CStr(CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("CustomerName").Value), &H1C))), 5, var_1A6))
  loc_1616E0A: var_1A4 = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + " ")
  loc_1616E14: var_1F0 = (var_1A4 + CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DeliveryTime")), 1, 1)))
  loc_1616E3A: var_140 = (Chr(&HF) + "Del. Date : ")
  loc_1616E44: var_230 = (CVar(var_E4.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(CStr(Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy")), &H14)))
  loc_1616E4B: var_268 = (var_230 + Chr(&H12))
  loc_1616E51: Print 1, CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BookingTime")), 1, 1))
  loc_1616EE2: var_140 = (Chr(&HF) + "Token No. : ")
  loc_1616EEC: var_194 = (CVar(var_E4.Fields.Item("LstNo")) + CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("TokenNo").Value), &HA)))
  loc_1616EF3: var_1C0 = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + Chr(&H12))
  loc_1616EF9: Print 1, CVar(var_8C.Fields.Item("DeliveryTime"))
  loc_1616F34: var_140 = (Chr(&HF) + CVar(var_C8))
  loc_1616F3A: Print 1, CVar(var_E4.Fields.Item("LstNo"))
  loc_1616F95: var_1E0 = Space(1)
  loc_1616FDC: var_160 = (Chr(&HF) + CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_1616FE3: var_194 = (var_8C.Fields.Item("TokenNo").Value + Space(1))
  loc_1616FED: var_1C0 = (Format(CVar(var_8C.Fields.Item("DeliveryDate")), "dd/mm/yy") + CVar(Proc_6_52_EAD4F4("Qty", 5)))
  loc_1616FF4: var_1F0 = (CVar(var_8C.Fields.Item("DeliveryTime")) + var_1E0)
  loc_1616FFE: var_230 = (Format(CVar(var_8C.Fields.Item("Bookingdate")), "dd/mm/yy") + CVar(Proc_6_52_EAD4F4("Rate", 6)))
  loc_1617005: var_268 = (var_230 + Space(1))
  loc_161700F: var_288 = (CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("BookingTime")), 1, 1)) + CVar(Proc_6_52_EAD4F4("Amount", 7)))
  loc_1617015: Print 1, CVar(Proc_6_52_EAD4F4(CStr(CVar(Proc_6_52_EAD4F4("Amount", 7))), &H17))
  loc_1617065: var_140 = (Chr(&HF) + CVar(var_C8))
  loc_161706B: Print 1, CVar(Proc_6_45_EAD428("Item Name", &H13))
  loc_161709E: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Total")))
  loc_16170A7: var_94 = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_16170DA: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Tax")), var_94)
  loc_16170E3: var_A4 = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_1617116: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Discount")), var_A4)
  loc_161711F: var_9C = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_1617152: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("NetAmount")), var_9C)
  loc_161715B: var_AC = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_161718E: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Advance")), var_AC)
  loc_1617197: var_B4 = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_16171CA: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("Addition")), var_B4)
  loc_16171D3: var_BC = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_1617206: Proc_6_39_E7C810(CVar(Proc_6_45_EAD428("Item Name", &H13)), CVar(var_8C.Fields.Item("RoundOff")), var_BC)
  loc_161720F: var_C4 = CSng(CVar(Proc_6_45_EAD428("Item Name", &H13)))
  loc_1617247: var_EC = CStr(var_8C.Fields.Item("NCBOOKING").Value)
  loc_161727F: var_E8 = CStr(var_8C.Fields.Item("NCType").Value)
  loc_161728C: ' Referenced from: 16174D9
  loc_161729B: If Not(var_8C.EOF) Then
  loc_161731A:   Proc_6_39_E7C810(var_1E0, CVar(var_8C.Fields.Item("Quantity")))
  loc_1617387:   Proc_6_39_E7C810(var_298, CVar(var_8C.Fields.Item("Rate")), 1)
  loc_16173F4:   Proc_6_39_E7C810(var_32C, CVar(var_8C.Fields.Item("Amount")), 1)
  loc_1617437:   var_180 = (Chr(&HF) + CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)))
  loc_161743E:   var_1A4 = (Space(1) + Space(1))
  loc_1617448:   var_258 = (CVar(Proc_6_52_EAD4F4("Qty", 5)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_1E0, "0.00")), 5, 1)))
  loc_161744F:   var_278 = (Space(1) + Space(1))
  loc_1617459:   var_2E4 = (CVar(Proc_6_52_EAD4F4("Amount", 7)) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_298, "0.00")), 6, 1)))
  loc_1617460:   var_304 = (var_2E4 + Space(1))
  loc_161746A:   var_36C = (var_304 + CVar(Proc_6_52_EAD4F4(CStr(Format(var_32C, "0.00")), 7, 1)))
  loc_1617470:   Print 1, var_36C
  loc_16174D4:   var_8C.MoveNext
  loc_16174D9:   GoTo loc_161728C
  loc_16174DC: End If
  loc_16174F2: var_140 = (Chr(&HF) + CVar(var_C8))
  loc_16174F8: Print 1, var_8C.Fields.Item("ItemName").Value
  loc_161755F: var_160 = (Chr(&HF) + Space(&H11))
  loc_1617568: var_180 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Total      : ")
  loc_1617572: var_1E0 = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_94, "0.00")), &HA, 1, 1)))
  loc_1617578: Print 1, var_1E0
  loc_161759F: If (var_9C > CDbl(0)) Then
  loc_16175FC:   var_160 = (Chr(&HF) + Space(&H11))
  loc_1617605:   var_180 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Discount   : ")
  loc_161760F:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_9C, "0.00")), &HA, 1, 1)))
  loc_1617615:   Print 1, var_1E0
  loc_1617635: End If
  loc_161763C: If (var_A4 > CDbl(0)) Then
  loc_1617699:   var_160 = (Chr(&HF) + Space(&H11))
  loc_16176A2:   var_180 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Tax        : ")
  loc_16176AC:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_A4, "0.00")), &HA, 1, 1)))
  loc_16176B2:   Print 1, var_1E0
  loc_16176D2: End If
  loc_16176D9: If (var_BC > CDbl(0)) Then
  loc_1617736:   var_160 = (Chr(&HF) + Space(&H11))
  loc_161773F:   var_180 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Addition   : ")
  loc_1617749:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_BC, "0.00")), &HA, 1, 1)))
  loc_161774F:   Print 1, var_1E0
  loc_161776F: End If
  loc_1617776: If (var_C4 > CDbl(0)) Then
  loc_16177D3:   var_160 = (Chr(&HF) + Space(&H11))
  loc_16177DC:   var_180 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Round off  : ")
  loc_16177E6:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_C4, "0.00")), &HA, 1, 1)))
  loc_16177EC:   Print 1, var_1E0
  loc_161780C: End If
  loc_1617813: If (var_AC > CDbl(0)) Then
  loc_1617870:   var_160 = (Chr(&HF) + Space(&H11))
  loc_1617879:   var_180 = (CVar(Proc_6_45_EAD428(CStr(var_8C.Fields.Item("ItemName").Value), &H13, var_C4)) + "Net Amount : ")
  loc_1617883:   var_1E0 = (Space(1) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_AC, "0.00")), &HA, 1, 1)))
  loc_1617889:   Print 1, var_1E0
  loc_16178A9: End If
  loc_16178BF: var_140 = (Chr(&HF) + CVar(var_C8))
  loc_16178C5: Print 1, Space(&H11)
  loc_16178D9: If (var_B4 > CDbl(0)) Then
  loc_161792B:   var_140 = (Chr(&HF) + "Advance Taken: ")
  loc_1617935:   var_1A4 = (Space(&H11) + CVar(Proc_6_52_EAD4F4(CStr(Format(var_B4, "0.00")), &HA, 1, 1)))
  loc_161793B:   Print 1, Format(var_AC, "0.00")
  loc_1617957: End If
  loc_161795C: Print 1, vbNullString
  loc_1617968: var_D0 = (var_D0 + 1)
  loc_1617973: If (var_EC = "Y") Then
  loc_161799D:   Print 1, "**NON CHARGEABLE FOR " & Ucase(var_E8) & "**"
  loc_16179B2:   var_D0 = (var_D0 + 1)
  loc_16179B5: End If
  loc_16179BD: If (var_EC = "Y") Then
  loc_16179C5:   Print 1, vbNullString
  loc_16179D1:   var_D0 = (var_D0 + 1)
  loc_16179D4: End If
  loc_16179F2: If CBool(Trim(var_DC) <> vbNullString) Then
  loc_16179FA:   Print 1, var_DC
  loc_1617A06:   var_D0 = (var_D0 + 1)
  loc_1617A09: End If
  loc_1617A27: If CBool(Trim(var_E0) <> vbNullString) Then
  loc_1617A2F:   Print 1, var_E0
  loc_1617A3B:   var_D0 = (var_D0 + 1)
  loc_1617A3E: End If
  loc_1617A43: Print 1, vbNullString
  loc_1617A4F: var_D0 = (var_D0 + 1)
  loc_1617A75: var_140 = (Chr(&HF) + CVar(MemVar_1F9221C))
  loc_1617A7C: var_180 = ("**NON CHARGEABLE FOR " & Ucase(var_E8) + Chr(&H12))
  loc_1617A82: Print 1, Format(var_B4, "0.00")
  loc_1617A99: var_D0 = (var_D0 + 1)
  loc_1617AA1: Print 1, vbNullString
  loc_1617AAD: var_D0 = (var_D0 + 1)
  loc_1617AB5: Print 1, vbNullString
  loc_1617AC1: var_D0 = (var_D0 + 1)
  loc_1617AC9: Print 1, vbNullString
  loc_1617AD5: var_D0 = (var_D0 + 1)
  loc_1617AF8: var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1617AFE: Print 1, Chr(&H12)
  loc_1617B0F: Close 1
  loc_1617B18: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_1617B28: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_1617B33: Close 1
  loc_1617B3D: If (MemVar_1F923B8 = "Y") Then
  loc_1617B56:   var_CC = CLng(Shell("C:\reptmp\SBILL.PIF", 0))
  loc_1617B5F: Else
  loc_1617B75:   var_CC = CLng(Shell("C:\reptmp\SBILL.BAT", 0))
  loc_1617B7B: End If
  loc_1617B80: Set var_8C = Nothing
  loc_1617B88: Set var_E4 = Nothing
  loc_1617B8B: Exit Sub
  loc_1617B8C: ' Referenced from: 1616758
  loc_1617B8C: Proc_6_60_E62BC4(var_CC, var_CC, var_1A6, var_1A6, var_1A6, var_1A6, var_1A6, var_1A6)
  loc_1617B91: Exit Sub
End Sub

Public Sub Proc_169_84_E98B60
  'Data Table: 56D390
  Dim var_88 As MSHFlexGrid
  loc_E98B21: Call Proc_169_96_11D7488(CStr(Me.FGrid.TextMatrix)), CVar(CLng(1)))
  loc_E98B3B: Set var_88 = Me.TopCtrl1
  loc_E98B41: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CVar(CLng(Me.FGrid.Row)))
  loc_E98B5A: If (CStr() = "Browse") Then
  loc_E98B5D:   Exit Sub
  loc_E98B5E: End If
  loc_E98B5E: Exit Sub
End Sub

Public Sub Proc_169_85_105F9A8
  'Data Table: 56D390
  Dim var_88 As MSFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  loc_105F71C: On Error Goto loc_105F99F
  loc_105F723: Set var_88 = Me.FGridFinish
  loc_105F73A: global_68 = CStr(CLng(var_88.BackColor))
  loc_105F750: var_88.Cols = 6
  loc_105F758: var_AC = CVar(CLng(0)) 'Long
  loc_105F75D: var_CC = &HFA
  loc_105F769: LateIdCallSt
  loc_105F771: var_AC = 0
  loc_105F77D: var_CC = CVar(CLng(0)) 'Long
  loc_105F782: var_EC = "SNo"
  loc_105F78B: LateIdCallSt
  loc_105F793: var_AC = 1
  loc_105F79F: var_CC = CVar(CLng(0)) 'Long
  loc_105F7A4: var_EC = "1"
  loc_105F7AD: LateIdCallSt
  loc_105F7B8: var_AC = CVar(CLng(0)) 'Long
  loc_105F7BD: var_CC = &H258
  loc_105F7C9: LateIdCallSt
  loc_105F7D1: var_AC = 0
  loc_105F7DD: var_CC = CVar(CLng(1)) 'Long
  loc_105F7E2: var_EC = "Item Code"
  loc_105F7EB: LateIdCallSt
  loc_105F7F6: var_AC = CVar(CLng(1)) 'Long
  loc_105F801: var_CC = CVar(CInt(1)) 'Integer
  loc_105F808: LateIdCallSt
  loc_105F813: var_AC = CVar(CLng(1)) 'Long
  loc_105F818: var_CC = 0
  loc_105F824: LateIdCallSt
  loc_105F82C: var_AC = 0
  loc_105F838: var_CC = CVar(CLng(2)) 'Long
  loc_105F83D: var_EC = "Item Name"
  loc_105F846: LateIdCallSt
  loc_105F851: var_AC = CVar(CLng(2)) 'Long
  loc_105F85C: var_CC = CVar(CInt(1)) 'Integer
  loc_105F863: LateIdCallSt
  loc_105F86E: var_AC = CVar(CLng(2)) 'Long
  loc_105F873: var_CC = &HAF0
  loc_105F87F: LateIdCallSt
  loc_105F887: var_AC = 0
  loc_105F893: var_CC = CVar(CLng(3)) 'Long
  loc_105F898: var_EC = "Unit"
  loc_105F8A1: LateIdCallSt
  loc_105F8AC: var_AC = CVar(CLng(3)) 'Long
  loc_105F8B7: var_CC = CVar(CInt(1)) 'Integer
  loc_105F8BE: LateIdCallSt
  loc_105F8C9: var_AC = CVar(CLng(3)) 'Long
  loc_105F8CE: var_CC = &H3E8
  loc_105F8DA: LateIdCallSt
  loc_105F8E2: var_AC = 0
  loc_105F8EE: var_CC = CVar(CLng(4)) 'Long
  loc_105F8F3: var_EC = "Qty"
  loc_105F8FC: LateIdCallSt
  loc_105F907: var_AC = CVar(CLng(4)) 'Long
  loc_105F912: var_CC = CVar(CInt(7)) 'Integer
  loc_105F919: LateIdCallSt
  loc_105F924: var_AC = CVar(CLng(4)) 'Long
  loc_105F929: var_CC = &H384
  loc_105F935: LateIdCallSt
  loc_105F93D: var_AC = 0
  loc_105F949: var_CC = CVar(CLng(5)) 'Long
  loc_105F94E: var_EC = "ComboCode"
  loc_105F957: LateIdCallSt
  loc_105F962: var_AC = CVar(CLng(5)) 'Long
  loc_105F96D: var_CC = CVar(CInt(7)) 'Integer
  loc_105F974: LateIdCallSt
  loc_105F97F: var_AC = CVar(CLng(5)) 'Long
  loc_105F984: var_CC = 0
  loc_105F990: LateIdCallSt
  loc_105F99A: Set var_88 = Nothing 
  loc_105F99E: Exit Sub
  loc_105F99F: ' Referenced from: 105F71C
  loc_105F99F: Proc_6_60_E62BC4(var_88, var_CC, var_AC, var_88, var_CC, var_AC, var_88, var_EC)
  loc_105F9A4: Exit Sub
End Sub

Public Sub Proc_169_86_13A65C0
  'Data Table: 56D390
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  Dim var_104 As MSHFlexGrid
  loc_13A5CA2: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_13A5CBD: Me.FGrid.Top = CVar(CDbl(1605))
  loc_13A5CD8: Me.FGrid.Height = CVar(CDbl(5500))
  loc_13A5CF3: Me.FGrid.Width = CVar(CDbl(8700))
  loc_13A5D0E: Me.DGItem.Left = CVar(CDbl(3000))
  loc_13A5D29: Me.DGItem.Top = CVar(CDbl(3145))
  loc_13A5D35: Set var_AC = Me.FGrid
  loc_13A5D4C: global_68 = CStr(CLng(var_AC.BackColor))
  loc_13A5D62: var_AC.Cols = &H20
  loc_13A5D67: var_94 = 0
  loc_13A5D73: var_D0 = CVar(CLng(0)) 'Long
  loc_13A5D78: var_F0 = vbNullString
  loc_13A5D81: LateIdCallSt
  loc_13A5D8C: var_94 = CVar(CLng(0)) 'Long
  loc_13A5D97: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A5D9E: LateIdCallSt
  loc_13A5DA9: var_94 = CVar(CLng(0)) 'Long
  loc_13A5DAE: var_D0 = &H190
  loc_13A5DBA: LateIdCallSt
  loc_13A5DC2: var_94 = 0
  loc_13A5DCE: var_D0 = CVar(CLng(1)) 'Long
  loc_13A5DD3: var_F0 = "Item Code"
  loc_13A5DDC: LateIdCallSt
  loc_13A5DE7: var_94 = CVar(CLng(1)) 'Long
  loc_13A5DF2: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A5DF9: LateIdCallSt
  loc_13A5E04: var_94 = CVar(CLng(1)) 'Long
  loc_13A5E09: var_D0 = 0
  loc_13A5E15: LateIdCallSt
  loc_13A5E1D: var_94 = 0
  loc_13A5E29: var_D0 = CVar(CLng(2)) 'Long
  loc_13A5E2E: var_F0 = "Item Code"
  loc_13A5E37: LateIdCallSt
  loc_13A5E42: var_94 = CVar(CLng(2)) 'Long
  loc_13A5E4D: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A5E54: LateIdCallSt
  loc_13A5E5F: var_94 = CVar(CLng(2)) 'Long
  loc_13A5E64: var_D0 = &H258
  loc_13A5E70: LateIdCallSt
  loc_13A5E78: var_94 = 0
  loc_13A5E84: var_D0 = CVar(CLng(3)) 'Long
  loc_13A5E89: var_F0 = "Item Name"
  loc_13A5E92: LateIdCallSt
  loc_13A5E9D: var_94 = CVar(CLng(3)) 'Long
  loc_13A5EA8: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A5EAF: LateIdCallSt
  loc_13A5EBA: var_94 = CVar(CLng(3)) 'Long
  loc_13A5EBF: var_D0 = &H8FC
  loc_13A5ECB: LateIdCallSt
  loc_13A5ED3: var_94 = 0
  loc_13A5EDF: var_D0 = CVar(CLng(4)) 'Long
  loc_13A5EE4: var_F0 = "Unit"
  loc_13A5EED: LateIdCallSt
  loc_13A5EF8: var_94 = CVar(CLng(4)) 'Long
  loc_13A5F03: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A5F0A: LateIdCallSt
  loc_13A5F15: var_94 = CVar(CLng(4)) 'Long
  loc_13A5F1A: var_D0 = &H258
  loc_13A5F26: LateIdCallSt
  loc_13A5F2E: var_94 = 0
  loc_13A5F3A: var_D0 = CVar(CLng(5)) 'Long
  loc_13A5F3F: var_F0 = "Remark"
  loc_13A5F48: LateIdCallSt
  loc_13A5F53: var_94 = CVar(CLng(5)) 'Long
  loc_13A5F5E: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A5F65: LateIdCallSt
  loc_13A5F70: var_94 = CVar(CLng(5)) 'Long
  loc_13A5F7B: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A5F82: LateIdCallSt
  loc_13A5F8D: var_94 = CVar(CLng(5)) 'Long
  loc_13A5F92: var_D0 = &H514
  loc_13A5F9E: LateIdCallSt
  loc_13A5FA6: var_94 = 0
  loc_13A5FB2: var_D0 = CVar(CLng(6)) 'Long
  loc_13A5FB7: var_F0 = "Qty"
  loc_13A5FC0: LateIdCallSt
  loc_13A5FCB: var_94 = CVar(CLng(6)) 'Long
  loc_13A5FD6: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A5FDD: LateIdCallSt
  loc_13A5FE8: var_94 = CVar(CLng(6)) 'Long
  loc_13A5FF3: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A5FFA: LateIdCallSt
  loc_13A6005: var_94 = CVar(CLng(6)) 'Long
  loc_13A600A: var_D0 = &H320
  loc_13A6016: LateIdCallSt
  loc_13A601E: var_94 = 0
  loc_13A602A: var_D0 = CVar(CLng(7)) 'Long
  loc_13A602F: var_F0 = "Rate"
  loc_13A6038: LateIdCallSt
  loc_13A6043: var_94 = CVar(CLng(7)) 'Long
  loc_13A604E: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A6055: LateIdCallSt
  loc_13A6060: var_94 = CVar(CLng(7)) 'Long
  loc_13A606B: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A6072: LateIdCallSt
  loc_13A607D: var_94 = CVar(CLng(7)) 'Long
  loc_13A6082: var_D0 = &H320
  loc_13A608E: LateIdCallSt
  loc_13A6096: var_94 = 0
  loc_13A60A2: var_D0 = CVar(CLng(9)) 'Long
  loc_13A60A7: var_F0 = "Amount"
  loc_13A60B0: LateIdCallSt
  loc_13A60BB: var_94 = CVar(CLng(9)) 'Long
  loc_13A60C6: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A60CD: LateIdCallSt
  loc_13A60D8: var_94 = CVar(CLng(9)) 'Long
  loc_13A60E3: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A60EA: LateIdCallSt
  loc_13A60F2: var_94 = 0
  loc_13A60FE: var_D0 = CVar(CLng(&HA)) 'Long
  loc_13A6103: var_F0 = "Cancel"
  loc_13A610C: LateIdCallSt
  loc_13A6117: var_94 = CVar(CLng(&HA)) 'Long
  loc_13A6122: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A6129: LateIdCallSt
  loc_13A6134: var_94 = CVar(CLng(&HA)) 'Long
  loc_13A613F: var_D0 = CVar(CInt(1)) 'Integer
  loc_13A6146: LateIdCallSt
  loc_13A6151: var_94 = CVar(CLng(&HA)) 'Long
  loc_13A6156: var_D0 = &H271
  loc_13A6162: LateIdCallSt
  loc_13A616A: var_94 = 0
  loc_13A6176: var_D0 = CVar(CLng(8)) 'Long
  loc_13A617B: var_F0 = "Rate1"
  loc_13A6184: LateIdCallSt
  loc_13A618F: var_94 = CVar(CLng(8)) 'Long
  loc_13A619A: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A61A1: LateIdCallSt
  loc_13A61AC: var_94 = CVar(CLng(8)) 'Long
  loc_13A61B7: var_D0 = CVar(CInt(7)) 'Integer
  loc_13A61BE: LateIdCallSt
  loc_13A61C9: var_94 = CVar(CLng(8)) 'Long
  loc_13A61CE: var_D0 = 0
  loc_13A61DA: LateIdCallSt
  loc_13A61E5: var_94 = CVar(CLng(&HE)) 'Long
  loc_13A61EA: var_D0 = 0
  loc_13A61F6: LateIdCallSt
  loc_13A6201: var_94 = CVar(CLng(&HD)) 'Long
  loc_13A6206: var_D0 = 0
  loc_13A6212: LateIdCallSt
  loc_13A621D: var_94 = CVar(CLng(&HB)) 'Long
  loc_13A6222: var_D0 = 0
  loc_13A622E: LateIdCallSt
  loc_13A6239: var_94 = CVar(CLng(&HC)) 'Long
  loc_13A623E: var_D0 = 0
  loc_13A624A: LateIdCallSt
  loc_13A6255: var_94 = CVar(CLng(&HF)) 'Long
  loc_13A625A: var_D0 = 0
  loc_13A6266: LateIdCallSt
  loc_13A6271: var_94 = CVar(CLng(&H10)) 'Long
  loc_13A6276: var_D0 = 0
  loc_13A6282: LateIdCallSt
  loc_13A628D: var_94 = CVar(CLng(&H11)) 'Long
  loc_13A6292: var_D0 = 0
  loc_13A629E: LateIdCallSt
  loc_13A62A9: var_94 = CVar(CLng(&H12)) 'Long
  loc_13A62AE: var_D0 = 0
  loc_13A62BA: LateIdCallSt
  loc_13A62C5: var_94 = CVar(CLng(&H13)) 'Long
  loc_13A62CA: var_D0 = 0
  loc_13A62D6: LateIdCallSt
  loc_13A62E1: var_94 = CVar(CLng(&H15)) 'Long
  loc_13A62E6: var_D0 = 0
  loc_13A62F2: LateIdCallSt
  loc_13A62FD: var_94 = CVar(CLng(&H14)) 'Long
  loc_13A6302: var_D0 = 0
  loc_13A630E: LateIdCallSt
  loc_13A6319: var_94 = CVar(CLng(&H16)) 'Long
  loc_13A631E: var_D0 = 0
  loc_13A632A: LateIdCallSt
  loc_13A6335: var_94 = CVar(CLng(&H17)) 'Long
  loc_13A633A: var_D0 = 0
  loc_13A6346: LateIdCallSt
  loc_13A6351: var_94 = CVar(CLng(&H18)) 'Long
  loc_13A6356: var_D0 = 0
  loc_13A6362: LateIdCallSt
  loc_13A636A: var_94 = 0
  loc_13A6376: var_D0 = CVar(CLng(&HC)) 'Long
  loc_13A637B: var_F0 = "Item Code"
  loc_13A6384: LateIdCallSt
  loc_13A638C: var_94 = 0
  loc_13A6398: var_D0 = CVar(CLng(&HF)) 'Long
  loc_13A639D: var_F0 = "Disc %"
  loc_13A63A6: LateIdCallSt
  loc_13A63AE: var_94 = 0
  loc_13A63BA: var_D0 = CVar(CLng(&H10)) 'Long
  loc_13A63BF: var_F0 = "Disc Amt."
  loc_13A63C8: LateIdCallSt
  loc_13A63D0: var_94 = 0
  loc_13A63DC: var_D0 = CVar(CLng(&H11)) 'Long
  loc_13A63E1: var_F0 = "Tax %"
  loc_13A63EA: LateIdCallSt
  loc_13A63F2: var_94 = 0
  loc_13A63FE: var_D0 = CVar(CLng(&H12)) 'Long
  loc_13A6403: var_F0 = "Tax Amt"
  loc_13A640C: LateIdCallSt
  loc_13A6414: var_94 = 0
  loc_13A6420: var_D0 = CVar(CLng(&H13)) 'Long
  loc_13A6425: var_F0 = "Total"
  loc_13A642E: LateIdCallSt
  loc_13A6436: var_94 = 0
  loc_13A6442: var_D0 = CVar(CLng(&H15)) 'Long
  loc_13A6447: var_F0 = "R Off"
  loc_13A6450: LateIdCallSt
  loc_13A6458: var_94 = 0
  loc_13A6464: var_D0 = CVar(CLng(&H14)) 'Long
  loc_13A6469: var_F0 = "Disc Y/N"
  loc_13A6472: LateIdCallSt
  loc_13A647A: var_94 = 0
  loc_13A6486: var_D0 = CVar(CLng(&H16)) 'Long
  loc_13A648B: var_F0 = "Tax Cat Code"
  loc_13A6494: LateIdCallSt
  loc_13A649F: var_94 = CVar(CLng(&H19)) 'Long
  loc_13A64A4: var_D0 = 0
  loc_13A64B0: LateIdCallSt
  loc_13A64BB: var_94 = CVar(CLng(&H1A)) 'Long
  loc_13A64C0: var_D0 = 0
  loc_13A64CC: LateIdCallSt
  loc_13A64D7: var_94 = CVar(CLng(&H1B)) 'Long
  loc_13A64DC: var_D0 = 0
  loc_13A64E8: LateIdCallSt
  loc_13A64F3: var_94 = CVar(CLng(&H1C)) 'Long
  loc_13A64F8: var_D0 = 0
  loc_13A6504: LateIdCallSt
  loc_13A650F: var_94 = CVar(CLng(&H1D)) 'Long
  loc_13A6514: var_D0 = 0
  loc_13A6520: LateIdCallSt
  loc_13A652B: var_94 = CVar(CLng(&H1E)) 'Long
  loc_13A6530: var_D0 = 0
  loc_13A653C: LateIdCallSt
  loc_13A6547: var_94 = CVar(CLng(&H1F)) 'Long
  loc_13A654C: var_D0 = 0
  loc_13A6558: LateIdCallSt
  loc_13A6562: Set var_AC = Nothing 
  loc_13A656A: Set var_104 = Me.FGCat
  loc_13A6581: global_68 = CStr(CLng(var_104.BackColor))
  loc_13A658E: var_94 = CVar(CLng(3)) 'Long
  loc_13A6593: var_D0 = &H7D0
  loc_13A659F: LateIdCallSt
  loc_13A65B3: var_104.Cols = 9
  loc_13A65BA: Set var_104 = Nothing 
  loc_13A65BE: Exit Sub
End Sub

Public Sub Proc_169_87_E5CB38
  'Data Table: 56D390
  loc_E5CB16: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E5CB28:   Me.DGItem.Visible = False
  loc_E5CB30: End If
  loc_E5CB30: Proc_169_87_E5CB38 = 
End Sub

Public Sub Proc_169_88_FCBBF8
  'Data Table: 56D390
  Dim var_A0 As Variant
  Dim var_90 As Variant
  Dim var_8C As Variant
  loc_FCBA3F: Set var_8C = Me.TxtMask
  loc_FCBA45: Call 0.Method_Proc_169_88_FCBBF80 (0, var_90)
  loc_FCBA4D: var_90.Text = "__:__"
  loc_FCBA68: Set var_8C = Me.TxtMask
  loc_FCBA6E: Call 0.Method_Proc_169_88_FCBBF80 (1, var_90)
  loc_FCBA76: var_90.Text = "__:__"
  loc_FCBA90: Set var_8C = Me.Txt
  loc_FCBA96: Call 0.Method_Proc_169_88_FCBBF8C (var_B2, var_86)
  loc_FCBAA6: For var_B6 =  To CByte((var_B2 - 1)): CByte(0) = var_B6 'Byte
  loc_FCBABC:   Set var_8C = Me.Txt
  loc_FCBAC2:   Call 0.Method_Proc_169_88_FCBBF80 (CInt(var_86), var_90)
  loc_FCBACA:   var_90.Text = vbNullString
  loc_FCBAE6:   Set var_8C = Me.Txt
  loc_FCBAEC:   Call 0.Method_Proc_169_88_FCBBF80 (CInt(var_86), var_90)
  loc_FCBAF4:   var_90.Tag = vbNullString
  loc_FCBB03: Next var_B6 'Byte
  loc_FCBB17: Set var_8C = Me.TxtCust
  loc_FCBB1D: Call 0.Method_Proc_169_88_FCBBF8C (var_B2, var_86)
  loc_FCBB2D: For var_BA =  To CByte((var_B2 - 1)): CByte(0) = var_BA 'Byte
  loc_FCBB43:   Set var_8C = Me.TxtCust
  loc_FCBB49:   Call 0.Method_Proc_169_88_FCBBF80 (CInt(var_86), var_90)
  loc_FCBB51:   var_90.Text = vbNullString
  loc_FCBB6D:   Set var_8C = Me.TxtCust
  loc_FCBB73:   Call 0.Method_Proc_169_88_FCBBF80 (CInt(var_86), var_90)
  loc_FCBB7B:   var_90.Tag = vbNullString
  loc_FCBB8A: Next var_BA 'Byte
  loc_FCBBA3: Me.FGrid.Rows = 1
  loc_FCBBAB: var_A0 = vbNullString
  loc_FCBBB5: Set var_8C = Me.FGrid
  loc_FCBBD9: Me.FGrid.FixedRows = 1
  loc_FCBBED: Me.ChkNCBOOKING.Value = 0
  loc_FCBBF5: Exit Sub
End Sub

Public Sub Proc_169_89_1005B7C(arg_C) '1005B7C
  'Data Table: 56D390
  Dim var_90 As Variant
  Dim var_8C As CheckBox
  loc_1005974: Set var_8C = Me.TxtMask
  loc_100597A: Call 0.Method_Proc_169_89_1005B7C0 (0, var_90)
  loc_1005982: var_90.Enabled = arg_C
  loc_100599E: Set var_8C = Me.TxtMask
  loc_10059A4: Call 0.Method_Proc_169_89_1005B7C0 (1, var_90)
  loc_10059AC: var_90.Enabled = arg_C
  loc_10059C6: Set var_8C = Me.Txt
  loc_10059CC: Call 0.Method_Proc_169_89_1005B7CC (var_A2, var_86)
  loc_10059DC: For var_A6 =  To CByte((var_A2 - 1)): CByte(0) = var_A6 'Byte
  loc_10059F2:   Set var_8C = Me.Txt
  loc_10059F8:   Call 0.Method_Proc_169_89_1005B7C0 (CInt(var_86), var_90)
  loc_1005A00:   var_90.Enabled = arg_C
  loc_1005A0F: Next var_A6 'Byte
  loc_1005A23: Set var_8C = Me.TxtPer
  loc_1005A29: Call 0.Method_Proc_169_89_1005B7CC (var_A2, var_86)
  loc_1005A36: For var_AA =  To CByte(var_A2): CByte(1) = var_AA 'Byte
  loc_1005A4C:   Set var_8C = Me.TxtPer
  loc_1005A52:   Call 0.Method_Proc_169_89_1005B7C0 (CInt(var_86), var_90)
  loc_1005A5A:   var_90.Enabled = arg_C
  loc_1005A69: Next var_AA 'Byte
  loc_1005A7D: Set var_8C = Me.TxtGt
  loc_1005A83: Call 0.Method_Proc_169_89_1005B7CC (var_A2, var_86)
  loc_1005A90: For var_AE =  To CByte(var_A2): CByte(1) = var_AE 'Byte
  loc_1005AA6:   Set var_8C = Me.TxtGt
  loc_1005AAC:   Call 0.Method_Proc_169_89_1005B7C0 (CInt(var_86), var_90)
  loc_1005AB4:   var_90.Enabled = arg_C
  loc_1005AC3: Next var_AE 'Byte
  loc_1005AD6: Me.ChkNCBOOKING.Enabled = arg_C
  loc_1005AEB: Set var_8C = Me.Txt
  loc_1005AF1: Call 0.Method_Proc_169_89_1005B7C0 (CInt(&H10), var_90)
  loc_1005AF9: var_90.Enabled = False
  loc_1005B12: Set var_8C = Me.Txt
  loc_1005B18: Call 0.Method_Proc_169_89_1005B7C0 (CInt(2), var_90)
  loc_1005B20: var_90.Enabled = False
  loc_1005B39: Set var_8C = Me.Txt
  loc_1005B3F: Call 0.Method_Proc_169_89_1005B7C0 (CInt(&HF), var_90)
  loc_1005B47: var_90.Enabled = False
  loc_1005B60: Set var_8C = Me.Txt
  loc_1005B66: Call 0.Method_Proc_169_89_1005B7C0 (CInt(&H13), var_90)
  loc_1005B6E: var_90.Enabled = False
  loc_1005B7A: Exit Sub
End Sub

Public Sub Proc_169_90_187BCF4(arg_C) '187BCF4
  'Data Table: 56D390
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_A8 As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_11C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_B8 As String
  Dim var_8E As Integer
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim var_144 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_16C As Variant
  Dim var_118 As Variant
  Dim var_1B0 As Variant
  Dim var_14C As String
  Dim unk_56D39B As Connection15
  Dim var_8C As Recordset15
  Dim var_15C As Double
  loc_187966C: If (arg_C = 0) Then
  loc_1879682:   var_A8 = CLng(Me.FGrid.Col)
  loc_1879692:   If (var_A8 = CLng(3)) Then
  loc_18796E3:     Set var_94 = Me.TxtGrid
  loc_18796E9:     Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, var_B8)
  loc_18796F1:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_B4.Text
  loc_1879709:     If (var_A8 Or (var_B8 = vbNullString)) Then
  loc_187971F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879727:       var_E8 = CVar(CLng(&HB)) 'Long
  loc_187972C:       var_108 = vbNullString
  loc_1879736:       Set var_B4 = Me.FGrid
  loc_187973C:       LateIdCallSt
  loc_1879761:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879769:       var_E8 = CVar(CLng(3)) 'Long
  loc_187976E:       var_108 = vbNullString
  loc_1879778:       Set var_B4 = Me.FGrid
  loc_187977E:       LateIdCallSt
  loc_18797A3:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18797AB:       var_E8 = CVar(CLng(1)) 'Long
  loc_18797B0:       var_108 = vbNullString
  loc_18797BA:       Set var_B4 = Me.FGrid
  loc_18797C0:       LateIdCallSt
  loc_18797E5:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18797ED:       var_E8 = CVar(CLng(2)) 'Long
  loc_18797F2:       var_108 = vbNullString
  loc_18797FC:       Set var_B4 = Me.FGrid
  loc_1879802:       LateIdCallSt
  loc_1879827:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187982F:       var_E8 = CVar(CLng(4)) 'Long
  loc_1879834:       var_108 = vbNullString
  loc_187983E:       Set var_B4 = Me.FGrid
  loc_1879844:       LateIdCallSt
  loc_1879869:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879871:       var_E8 = CVar(CLng(7)) 'Long
  loc_1879876:       var_108 = vbNullString
  loc_1879880:       Set var_B4 = Me.FGrid
  loc_1879886:       LateIdCallSt
  loc_18798AB:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18798B3:       var_E8 = CVar(CLng(8)) 'Long
  loc_18798B8:       var_108 = vbNullString
  loc_18798C2:       Set var_B4 = Me.FGrid
  loc_18798C8:       LateIdCallSt
  loc_18798ED:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18798F5:       var_E8 = CVar(CLng(&H14)) 'Long
  loc_18798FA:       var_108 = vbNullString
  loc_1879904:       Set var_B4 = Me.FGrid
  loc_187990A:       LateIdCallSt
  loc_187992F:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879937:       var_E8 = CVar(CLng(&H15)) 'Long
  loc_187993C:       var_108 = vbNullString
  loc_1879946:       Set var_B4 = Me.FGrid
  loc_187994C:       LateIdCallSt
  loc_1879971:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879979:       var_E8 = CVar(CLng(&H16)) 'Long
  loc_187997E:       var_108 = vbNullString
  loc_1879988:       Set var_B4 = Me.FGrid
  loc_187998E:       LateIdCallSt
  loc_18799B3:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18799BB:       var_E8 = CVar(CLng(&H18)) 'Long
  loc_18799C0:       var_108 = vbNullString
  loc_18799CA:       Set var_B4 = Me.FGrid
  loc_18799D0:       LateIdCallSt
  loc_18799F5:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_18799FD:       var_E8 = CVar(CLng(&H19)) 'Long
  loc_1879A02:       var_108 = vbNullString
  loc_1879A0C:       Set var_B4 = Me.FGrid
  loc_1879A12:       LateIdCallSt
  loc_1879A37:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879A3F:       var_E8 = CVar(CLng(&H1A)) 'Long
  loc_1879A44:       var_108 = vbNullString
  loc_1879A4E:       Set var_B4 = Me.FGrid
  loc_1879A54:       LateIdCallSt
  loc_1879A69:     Else
  loc_1879A7C:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879A84:       var_F8 = CVar(CLng(&HB)) 'Long
  loc_1879AB7:       var_13C = CVar(CStr(Me.Fields.Item("OutletCode").Value)) 'String
  loc_1879ABF:       Set var_140 = Me.FGrid
  loc_1879AC5:       LateIdCallSt
  loc_1879B15:       global_124 = CStr(Me.Fields.Item("OutletCode").Value)
  loc_1879B39:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879B41:       var_F8 = CVar(CLng(3)) 'Long
  loc_1879B74:       var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1879B7C:       Set var_140 = Me.FGrid
  loc_1879B82:       LateIdCallSt
  loc_1879BB1:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879BB9:       var_F8 = CVar(CLng(1)) 'Long
  loc_1879BEC:       var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1879BF4:       Set var_140 = Me.FGrid
  loc_1879BFA:       LateIdCallSt
  loc_1879C29:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879C31:       var_F8 = CVar(CLng(2)) 'Long
  loc_1879C64:       var_13C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_1879C6C:       Set var_140 = Me.FGrid
  loc_1879C72:       LateIdCallSt
  loc_1879CA1:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879CA9:       var_F8 = CVar(CLng(4)) 'Long
  loc_1879CDC:       var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_1879CE4:       Set var_140 = Me.FGrid
  loc_1879CEA:       LateIdCallSt
  loc_1879D1A:       var_8E = CInt(CLng(Me.FGrid.Row))
  loc_1879D27:       var_C8 = CVar(CLng(var_8E)) 'Long
  loc_1879D2F:       var_E8 = CVar(CLng(0)) 'Long
  loc_1879D39:       var_A4 = CVar(CStr(var_8E)) 'String
  loc_1879D41:       Set var_94 = Me.FGrid
  loc_1879D47:       LateIdCallSt
  loc_1879D68:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879D70:       var_E8 = CVar(CLng(6)) 'Long
  loc_1879DA8:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1879DBE:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879DC6:         var_E8 = CVar(CLng(6)) 'Long
  loc_1879DCB:         var_108 = "1.000"
  loc_1879DD5:         Set var_B4 = Me.FGrid
  loc_1879DDB:         LateIdCallSt
  loc_1879DED:       End If
  loc_1879DF3:       var_C8 = "Code"
  loc_1879E0A:       var_B4 = Me.Fields.Item(var_C8)
  loc_1879E25:       Set var_11C = Me.Txt
  loc_1879E2B:       Call 0.Method_Proc_169_90_187BCF40 (CInt(3), var_140, var_14C, var_B4, var_108, var_E8, var_C8)
  loc_1879E33:       var_E8 = var_140.Text
  loc_1879E7C:       Call Proc_169_74_F20D18(CStr(var_B4.Value), var_14C, CStr(Me.Fields.Item("OutletCode").Value))
  loc_1879E94:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879E9C:       var_1A0 = CVar(CLng(7)) 'Long
  loc_1879ED7:       LateIdCallSt
  loc_1879F44:       Set var_11C = Me.Txt
  loc_1879F4A:       Call 0.Method_Proc_169_90_187BCF40 (CInt(3), var_140, var_14C, Me.FGrid, CVar(CStr(Format(CVar(var_15C), "0.00"))), 1, 1)
  loc_1879F52:       var_1A0 = var_140.Text
  loc_1879F9B:       Call Proc_169_74_F20D18(CStr(Me.Fields.Item("Code").Value), var_14C, CStr(Me.Fields.Item("OutletCode").Value))
  loc_1879FB3:       var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1879FF6:       LateIdCallSt
  loc_187A076:       var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_15C), "0.00"))), 1, 1)) 'String
  loc_187A084:       LateIdCallSt
  loc_187A0E9:       var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C, CVar(CLng(8)))) 'String
  loc_187A0F7:       LateIdCallSt
  loc_187A15C:       var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187A16A:       LateIdCallSt
  loc_187A1CF:       var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187A1DD:       LateIdCallSt
  loc_187A242:       var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187A250:       LateIdCallSt
  loc_187A2B5:       var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187A2C3:       LateIdCallSt
  loc_187A2E7:       var_12C = Me.FGrid.Row
  loc_187A328:       var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H17)), CVar(CLng(var_12C)), Me.FGrid, var_13C)) 'String
  loc_187A336:       LateIdCallSt
  loc_187A35A:       var_13C = Me.FGrid.Row
  loc_187A399:       Proc_6_39_E7C810(var_12C, CVar(Me.Fields.Item("PriceType")), CVar(CLng(&H1F)), CVar(CLng(var_13C)), Me.FGrid, var_13C)
  loc_187A3A2:       var_16C = CVar(CStr(var_12C)) 'String
  loc_187A3AA:       Set var_140 = Me.FGrid
  loc_187A3B0:       LateIdCallSt
  loc_187A3DF:       var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A3E7:       var_E8 = CVar(CLng(&H1F)) 'Long
  loc_187A41F:       If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(1)) Then
  loc_187A435:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A43D:         var_E8 = CVar(CLng(6)) 'Long
  loc_187A44C:         var_12C = Me.FGrid.TextMatrix)
  loc_187A45C:         Set var_11C = Me.FGrid
  loc_187A46B:         var_118 = CVar(CLng(var_11C.Row)) 'Long
  loc_187A473:         var_1B0 = CVar(CLng(6)) 'Long
  loc_187A4A0:         var_1C0 = CVar(CStr(Format(CVar(CStr(var_12C)), "0"))) 'String
  loc_187A4A8:         Set var_140 = Me.FGrid
  loc_187A4AE:         LateIdCallSt
  loc_187A4D2:       End If
  loc_187A50D:       var_B8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_12C, -1, var_11C, var_140, var_1C0)
  loc_187A521:       unk_56D39B.Execute 1 & CStr(Me.FGrid.TextMatrix)) & "'", 1, var_1B0
  loc_187A52C:       Set var_8C = var_11C
  loc_187A55A:       If (var_8C.RecordCount > 0) Then
  loc_187A5A3:         Proc_6_39_E7C810(var_12C, CVar(var_8C.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_187A5AC:         var_16C = CVar(CStr(var_12C)) 'String
  loc_187A5B4:         Set var_140 = Me.FGrid
  loc_187A5BA:         LateIdCallSt
  loc_187A5D6:       End If
  loc_187A5D6:     End If
  loc_187A5E4:     Me.FGrid.Redraw = True
  loc_187A5F2:     If (var_88 = 1) Then
  loc_187A608:       Me.FGrid.Rows = 1
  loc_187A62E:       var_A4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(0), var_140, var_16C))) 'String
  loc_187A636:       Set var_B4 = Me.FGrid
  loc_187A663:       Me.FGrid.FixedRows = 1
  loc_187A66B:     End If
  loc_187A675:     var_A4 = Me.FGrid.Row
  loc_187A68F:     Set var_B4 = Me.FGrid
  loc_187A6A4:     Call Proc_169_96_11D7488(CStr(var_B4.TextMatrix)), CVar(CLng(1)), CVar(CLng(var_A4)), FGrid.DispID_10000)
  loc_187A6BF:     Call Proc_169_70_19122FC(&H32)
  loc_187A6C7:   Else
  loc_187A6CE:     If (var_A8 = CLng(2)) Then
  loc_187A6DD:       Set var_94 = Me.TxtGrid
  loc_187A6E3:       Call 0.Method_Proc_169_90_187BCF40 (0, var_B4, CStr(Me.FGrid.TextMatrix)), var_A4)
  loc_187A6EB:       var_118 = var_B4.Text
  loc_187A702:       If (CStr(Me.FGrid.TextMatrix)) <> "9999") Then
  loc_187A71C:         If (Me.RecordCount > 0) Then
  loc_187A725:           Me.MoveFirst
  loc_187A72A:         End If
  loc_187A741:         If (Me.RecordCount > 0) Then
  loc_187A750:           Set var_94 = Me.TxtGrid
  loc_187A756:           Call 0.Method_Proc_169_90_187BCF40 (0, var_B4, CStr(Me.FGrid.TextMatrix)))
  loc_187A75E:           var_12C = var_B4.Text
  loc_187A76B:           var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_187A791:           Me.Find "DispCode=" & CStr(var_15C), 0, 1
  loc_187A7A6:         End If
  loc_187A7F4:         Set var_94 = Me.TxtGrid
  loc_187A7FA:         Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, CStr(Me.FGrid.TextMatrix)), ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_187A802:         var_C8 = var_B4.Text
  loc_187A81A:         If (var_15C Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_187A830:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A838:           var_E8 = CVar(CLng(&HB)) 'Long
  loc_187A83D:           var_108 = vbNullString
  loc_187A847:           Set var_B4 = Me.FGrid
  loc_187A84D:           LateIdCallSt
  loc_187A872:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A87A:           var_E8 = CVar(CLng(3)) 'Long
  loc_187A87F:           var_108 = vbNullString
  loc_187A889:           Set var_B4 = Me.FGrid
  loc_187A88F:           LateIdCallSt
  loc_187A8B4:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A8BC:           var_E8 = CVar(CLng(1)) 'Long
  loc_187A8C1:           var_108 = vbNullString
  loc_187A8CB:           Set var_B4 = Me.FGrid
  loc_187A8D1:           LateIdCallSt
  loc_187A8F6:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A8FE:           var_E8 = CVar(CLng(2)) 'Long
  loc_187A903:           var_108 = vbNullString
  loc_187A90D:           Set var_B4 = Me.FGrid
  loc_187A913:           LateIdCallSt
  loc_187A938:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A940:           var_E8 = CVar(CLng(4)) 'Long
  loc_187A945:           var_108 = vbNullString
  loc_187A94F:           Set var_B4 = Me.FGrid
  loc_187A955:           LateIdCallSt
  loc_187A97A:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A982:           var_E8 = CVar(CLng(7)) 'Long
  loc_187A987:           var_108 = vbNullString
  loc_187A991:           Set var_B4 = Me.FGrid
  loc_187A997:           LateIdCallSt
  loc_187A9BC:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187A9C4:           var_E8 = CVar(CLng(8)) 'Long
  loc_187A9C9:           var_108 = vbNullString
  loc_187A9D3:           Set var_B4 = Me.FGrid
  loc_187A9D9:           LateIdCallSt
  loc_187A9FE:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AA06:           var_E8 = CVar(CLng(&H14)) 'Long
  loc_187AA0B:           var_108 = vbNullString
  loc_187AA15:           Set var_B4 = Me.FGrid
  loc_187AA1B:           LateIdCallSt
  loc_187AA40:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AA48:           var_E8 = CVar(CLng(&H15)) 'Long
  loc_187AA4D:           var_108 = vbNullString
  loc_187AA57:           Set var_B4 = Me.FGrid
  loc_187AA5D:           LateIdCallSt
  loc_187AA82:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AA8A:           var_E8 = CVar(CLng(&H16)) 'Long
  loc_187AA8F:           var_108 = vbNullString
  loc_187AA99:           Set var_B4 = Me.FGrid
  loc_187AA9F:           LateIdCallSt
  loc_187AAC4:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AACC:           var_E8 = CVar(CLng(&H18)) 'Long
  loc_187AAD1:           var_108 = vbNullString
  loc_187AADB:           Set var_B4 = Me.FGrid
  loc_187AAE1:           LateIdCallSt
  loc_187AB06:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AB0E:           var_E8 = CVar(CLng(&H19)) 'Long
  loc_187AB13:           var_108 = vbNullString
  loc_187AB1D:           Set var_B4 = Me.FGrid
  loc_187AB23:           LateIdCallSt
  loc_187AB48:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AB50:           var_E8 = CVar(CLng(&H1A)) 'Long
  loc_187AB55:           var_108 = vbNullString
  loc_187AB5F:           Set var_B4 = Me.FGrid
  loc_187AB65:           LateIdCallSt
  loc_187AB7A:         Else
  loc_187AB93:           var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AB9B:           var_E8 = CVar(CLng(1)) 'Long
  loc_187ABB5:           var_B8 = CStr(Me.FGrid.TextMatrix))
  loc_187ABD3:           var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187ABDB:           var_1A0 = CVar(CLng(1)) 'Long
  loc_187ABF5:           var_14C = CStr(Me.FGrid.TextMatrix))
  loc_187AC60:           If (CVar(CLng(Me.FGrid.Row)) Or (CVar(CLng(1)) And (CStr(Me.FGrid.TextMatrix)) = vbNullString))) Then
  loc_187AC76:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AC7E:             var_F8 = CVar(CLng(&HB)) 'Long
  loc_187ACB1:             var_13C = CVar(CStr(Me.Fields.Item("OutletCode").Value)) 'String
  loc_187ACB9:             Set var_140 = Me.FGrid
  loc_187ACBF:             LateIdCallSt
  loc_187AD0F:             global_124 = CStr(Me.Fields.Item("OutletCode").Value)
  loc_187AD33:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AD3B:             var_F8 = CVar(CLng(3)) 'Long
  loc_187AD6E:             var_13C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_187AD76:             Set var_140 = Me.FGrid
  loc_187AD7C:             LateIdCallSt
  loc_187ADAB:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187ADB3:             var_F8 = CVar(CLng(1)) 'Long
  loc_187ADE6:             var_13C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_187ADEE:             Set var_140 = Me.FGrid
  loc_187ADF4:             LateIdCallSt
  loc_187AE23:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AE2B:             var_F8 = CVar(CLng(2)) 'Long
  loc_187AE5E:             var_13C = CVar(CStr(Me.Fields.Item("DispCode").Value)) 'String
  loc_187AE66:             Set var_140 = Me.FGrid
  loc_187AE6C:             LateIdCallSt
  loc_187AE9B:             var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AEA3:             var_F8 = CVar(CLng(4)) 'Long
  loc_187AED6:             var_13C = CVar(CStr(Me.Fields.Item("Unit").Value)) 'String
  loc_187AEDE:             Set var_140 = Me.FGrid
  loc_187AEE4:             LateIdCallSt
  loc_187AF14:             var_8E = CInt(CLng(Me.FGrid.Row))
  loc_187AF21:             var_C8 = CVar(CLng(var_8E)) 'Long
  loc_187AF29:             var_E8 = CVar(CLng(0)) 'Long
  loc_187AF33:             var_A4 = CVar(CStr(var_8E)) 'String
  loc_187AF3B:             Set var_94 = Me.FGrid
  loc_187AF41:             LateIdCallSt
  loc_187AF62:             var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AF6A:             var_E8 = CVar(CLng(6)) 'Long
  loc_187AFA2:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_187AFB8:               var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187AFC0:               var_E8 = CVar(CLng(6)) 'Long
  loc_187AFC5:               var_108 = "1.000"
  loc_187AFCF:               Set var_B4 = Me.FGrid
  loc_187AFD5:               LateIdCallSt
  loc_187AFE7:             End If
  loc_187AFED:             var_C8 = "Code"
  loc_187B004:             var_B4 = Me.Fields.Item(var_C8)
  loc_187B01F:             Set var_11C = Me.Txt
  loc_187B025:             Call 0.Method_Proc_169_90_187BCF40 (CInt(3), var_140, var_14C, var_B4, var_108, var_E8, var_C8)
  loc_187B02D:             var_E8 = var_140.Text
  loc_187B076:             Call Proc_169_74_F20D18(CStr(var_B4.Value), var_14C, CStr(Me.Fields.Item("OutletCode").Value))
  loc_187B08E:             var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187B096:             var_1A0 = CVar(CLng(7)) 'Long
  loc_187B0D1:             LateIdCallSt
  loc_187B13E:             Set var_11C = Me.Txt
  loc_187B144:             Call 0.Method_Proc_169_90_187BCF40 (CInt(3), var_140, var_14C, Me.FGrid, CVar(CStr(Format(CVar(var_15C), "0.00"))), 1, 1)
  loc_187B14C:             var_1A0 = var_140.Text
  loc_187B166:             var_144 = Me.Fields
  loc_187B195:             Call Proc_169_74_F20D18(CStr(Me.Fields.Item("Code").Value), var_14C, CStr(var_144.Item("OutletCode").Value))
  loc_187B1AD:             var_108 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187B1F0:             LateIdCallSt
  loc_187B270:             var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(Format(CVar(var_15C), "0.00"))), 1, 1)) 'String
  loc_187B27E:             LateIdCallSt
  loc_187B2E3:             var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoundOff")), CVar(CLng(&H15)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C, CVar(CLng(8)))) 'String
  loc_187B2F1:             LateIdCallSt
  loc_187B356:             var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), CVar(CLng(&H16)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187B364:             LateIdCallSt
  loc_187B3C9:             var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Kitchen")), CVar(CLng(&H18)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187B3D7:             LateIdCallSt
  loc_187B43C:             var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SChrgApp")), CVar(CLng(&H19)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187B44A:             LateIdCallSt
  loc_187B4AF:             var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateIncTax")), CVar(CLng(&H1A)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_13C)) 'String
  loc_187B4BD:             LateIdCallSt
  loc_187B4E1:             var_12C = Me.FGrid.Row
  loc_187B522:             var_13C = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEdit")), CVar(CLng(&H17)), CVar(CLng(var_12C)), Me.FGrid, var_13C)) 'String
  loc_187B530:             LateIdCallSt
  loc_187B554:             var_13C = Me.FGrid.Row
  loc_187B593:             Proc_6_39_E7C810(var_12C, CVar(Me.Fields.Item("PriceType")), CVar(CLng(&H1F)), CVar(CLng(var_13C)), Me.FGrid, var_13C)
  loc_187B59C:             var_16C = CVar(CStr(var_12C)) 'String
  loc_187B5A4:             Set var_140 = Me.FGrid
  loc_187B5AA:             LateIdCallSt
  loc_187B5D9:             var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187B5E1:             var_E8 = CVar(CLng(&H1F)) 'Long
  loc_187B619:             If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(1)) Then
  loc_187B62F:               var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187B637:               var_E8 = CVar(CLng(6)) 'Long
  loc_187B646:               var_12C = Me.FGrid.TextMatrix)
  loc_187B656:               Set var_11C = Me.FGrid
  loc_187B665:               var_118 = CVar(CLng(var_11C.Row)) 'Long
  loc_187B66D:               var_1B0 = CVar(CLng(6)) 'Long
  loc_187B69A:               var_1C0 = CVar(CStr(Format(CVar(CStr(var_12C)), "0"))) 'String
  loc_187B6A2:               Set var_140 = Me.FGrid
  loc_187B6A8:               LateIdCallSt
  loc_187B6CC:             End If
  loc_187B707:             var_B8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("TaxStru")), "Select * from taxStru where code='", var_12C, -1, var_11C, var_140, var_1C0)
  loc_187B70B:             var_14C = 1 & CStr(Me.FGrid.TextMatrix))
  loc_187B71B:             unk_56D39B.Execute var_14C & "'", 1, var_1B0
  loc_187B726:             Set var_8C = var_11C
  loc_187B754:             If (var_8C.RecordCount > 0) Then
  loc_187B79D:               Proc_6_39_E7C810(var_12C, CVar(var_8C.Fields.Item("Rate")), CVar(CLng(&H11)), CVar(CLng(Me.FGrid.Row)))
  loc_187B7A6:               var_16C = CVar(CStr(var_12C)) 'String
  loc_187B7AE:               Set var_140 = Me.FGrid
  loc_187B7B4:               LateIdCallSt
  loc_187B7D0:             End If
  loc_187B7D0:           End If
  loc_187B7D0:         End If
  loc_187B7D0:       End If
  loc_187B7EB:       var_E8 = CVar(CLng(1)) 'Long
  loc_187B7F4:       Set var_B4 = Me.FGrid
  loc_187B7FA:       var_12C = var_B4.TextMatrix)
  loc_187B809:       Call Proc_169_96_11D7488(CStr(var_12C), var_E8, CVar(CLng(Me.FGrid.Row)), var_140)
  loc_187B824:       Call Proc_169_70_19122FC(&H32)
  loc_187B82C:     Else
  loc_187B833:       If (var_A8 = CLng(6)) Then
  loc_187B840:         Set var_94 = Me.TxtGrid
  loc_187B846:         Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, var_16C)
  loc_187B85C:         Set var_11C = Me.TopCtrl1
  loc_187B862:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(Not(IsNumeric(CVar(var_B4))))
  loc_187B87F:         Set var_140 = Me.TxtGrid
  loc_187B885:         Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_144, var_14C)
  loc_187B88D:         (CStr(var_118) = "Add") = var_144.Text
  loc_187B8BA:         If (var_E8 Or (var_12C And (CDbl(Val(var_14C)) <= CDbl(0)))) Then
  loc_187B8CE:           Set var_94 = Me.TxtGrid
  loc_187B8D4:           Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4)
  loc_187B8DC:           var_B4.Text = CStr(0)
  loc_187B8F0:           Proc_169_90_187BCF4 = 0
  loc_187B8F6:         End If
  loc_187B909:         var_C8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187B911:         var_E8 = CVar(CLng(&H1F)) 'Long
  loc_187B91A:         Set var_B4 = Me.FGrid
  loc_187B92B:         var_B8 = CStr(var_B4.TextMatrix))
  loc_187B949:         If (CDbl(Val(var_B8)) = CDbl(0)) Then
  loc_187B959:           Set var_94 = Me.TxtGrid
  loc_187B95F:           Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, var_B8)
  loc_187B967:           var_E8 = var_B4.Text
  loc_187B97F:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187B997:           var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_187B9C3:           var_190 = CVar(CStr(Format(CVar(var_B8), "0.000"))) 'String
  loc_187B9CB:           Set var_144 = Me.FGrid
  loc_187B9D1:           LateIdCallSt
  loc_187B9F8:         Else
  loc_187BA05:           Set var_94 = Me.TxtGrid
  loc_187BA0B:           Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, var_B8, var_144, var_190)
  loc_187BA13:           1 = var_B4.Text
  loc_187BA2B:           var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187BA43:           var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_187BA6F:           var_190 = CVar(CStr(Format(CVar(var_B8), "0"))) 'String
  loc_187BA77:           Set var_144 = Me.FGrid
  loc_187BA7D:           LateIdCallSt
  loc_187BAA1:         End If
  loc_187BAA6:         Call Proc_169_70_19122FC(&H32)
  loc_187BAAE:       Else
  loc_187BAB5:         If (var_A8 = CLng(7)) Then
  loc_187BAC2:           Set var_94 = Me.TxtGrid
  loc_187BAC8:           Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, var_144, var_190, 1, 1)
  loc_187BAE0:           If Not(IsNumeric(CVar(var_B4))) Then
  loc_187BAE7:             var_B8 = CStr(0)
  loc_187BAF4:             Set var_94 = Me.TxtGrid
  loc_187BAFA:             Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, var_B8, var_F8, var_D8)
  loc_187BB02:             var_B4.Text = 1
  loc_187BB11:           End If
  loc_187BB1E:           Set var_94 = Me.TxtGrid
  loc_187BB24:           Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, var_B8)
  loc_187BB2C:           var_F8 = var_B4.Text
  loc_187BB4F:           var_E8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_187BB67:           var_108 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_187BB94:           var_190 = CVar(CStr(Format(CVar(Val(var_B8)), "0.00"))) 'String
  loc_187BB9C:           Set var_144 = Me.FGrid
  loc_187BBA2:           LateIdCallSt
  loc_187BBCE:           Call Proc_169_70_19122FC(&H32)
  loc_187BBD6:         Else
  loc_187BBDD:           If (var_A8 = CLng(5)) Then
  loc_187BC1D:             Set var_94 = Me.TxtGrid
  loc_187BC23:             Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, var_B8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_144, var_190)
  loc_187BC2B:             1 = var_B4.Text
  loc_187BC33:             var_13C = CVar(var_B8) 'String
  loc_187BC3B:             Set var_144 = Me.FGrid
  loc_187BC41:             LateIdCallSt
  loc_187BC62:           Else
  loc_187BC69:             If (var_A8 = CLng(&HA)) Then
  loc_187BC99:               Set var_94 = Me.TxtGrid
  loc_187BC9F:               Call 0.Method_Proc_169_90_187BCF40 (arg_C, var_B4, var_B8, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_144, var_13C)
  loc_187BCA7:               1 = var_B4.Text
  loc_187BCAF:               var_12C = CVar(var_B8) 'String
  loc_187BCB7:               Set var_140 = Me.FGrid
  loc_187BCBD:               LateIdCallSt
  loc_187BCDC:               Call Proc_169_70_19122FC(&H32)
  loc_187BCE1:             End If
  loc_187BCE1:           End If
  loc_187BCE1:         End If
  loc_187BCE1:       End If
  loc_187BCE1:     End If
  loc_187BCE1:   End If
  loc_187BCE1: End If
  loc_187BCEB: Set var_8C = Nothing
  loc_187BCEE: Proc_169_90_187BCF4 = &HFF
End Sub

Public Sub Proc_169_91_FE9DB8
  'Data Table: 56D390
  loc_FE9BDF: Call Proc_169_87_E5CB38(var_94)
  loc_FE9BF2: Set var_98 = Me.Txt
  loc_FE9BF8: Call 0.Method_Proc_169_91_FE9DB80 (CInt(3))
  loc_FE9C21: If (Proc_6_27_EA565C(var_9C, "Booking Date") = 0) Then
  loc_FE9C24:   Exit Sub
  loc_FE9C25: End If
  loc_FE9C30: Set var_98 = Me.Txt
  loc_FE9C36: Call 0.Method_Proc_169_91_FE9DB80 (CInt(0), var_9C)
  loc_FE9C5F: If (Proc_6_27_EA565C(var_9C, "Booking Time") = 0) Then
  loc_FE9C62:   Exit Sub
  loc_FE9C63: End If
  loc_FE9C6E: Set var_98 = Me.Txt
  loc_FE9C74: Call 0.Method_Proc_169_91_FE9DB80 (CInt(0), var_9C)
  loc_FE9C9D: If (Proc_6_27_EA565C(var_9C, "Booking No") = 0) Then
  loc_FE9CA0:   Exit Sub
  loc_FE9CA1: End If
  loc_FE9CAC: Set var_98 = Me.Txt
  loc_FE9CB2: Call 0.Method_Proc_169_91_FE9DB80 (CInt(4), var_9C)
  loc_FE9CDB: If (Proc_6_27_EA565C(var_9C, "Delivery Date") = 0) Then
  loc_FE9CDE:   Exit Sub
  loc_FE9CDF: End If
  loc_FE9CEA: Set var_98 = Me.Txt
  loc_FE9CF0: Call 0.Method_Proc_169_91_FE9DB80 (CInt(1), var_9C)
  loc_FE9D19: If (Proc_6_27_EA565C(var_9C, "Delivery Time") = 0) Then
  loc_FE9D1C:   Exit Sub
  loc_FE9D1D: End If
  loc_FE9D28: Set var_98 = Me.Txt
  loc_FE9D2E: Call 0.Method_Proc_169_91_FE9DB80 (CInt(1), var_9C)
  loc_FE9D57: If (Proc_6_27_EA565C(var_9C, "Customer Name") = 0) Then
  loc_FE9D5A:   Exit Sub
  loc_FE9D5B: End If
  loc_FE9D92: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_FE9D95:   Call TopCtrl1_UnknownEvent_16()
  loc_FE9D9D: Else
  loc_FE9DA3:   Call 0.Method_arg_1E8 (var_98)
  loc_FE9DAB:   Call var_98.SetFocus
  loc_FE9DB4: End If
  loc_FE9DB4: Exit Sub
End Sub

Public Sub Proc_169_92_11832F8
  'Data Table: 56D390
  Dim var_B4 As String
  Dim var_C4 As String
  Dim var_EC As Variant
  Dim var_B0 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_110 As String
  Dim var_8C As Recordset15
  Dim var_C8 As Variant
  Dim var_CC As Variant
  Dim var_120 As Variant
  Dim var_DC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim unk_56D39B As Connection15
  Dim var_134 As Field20
  Dim var_184 As TextBox
  loc_1182F71: var_90 = CStr(Trim(global_164))
  loc_1182F8B: var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1182FBC: Set var_C8 = Me.Txt
  loc_1182FC2: Call 0.Method_Proc_169_92_11832F80 (CInt(3), var_CC, CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1182FD1: Proc_6_7_F25D88(var_DC, CVar(var_CC), var_130)
  loc_1182FD9: var_FC = -1 & var_DC 
  loc_1182FED: Me.Txt.Execute CStr(var_FC & " Order By VP.Date_From DESC"), var_134, 
  loc_1182FF8: Set var_8C = var_134
  loc_1183034: If (var_8C.RecordCount > 0) Then
  loc_1183073:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_11830A7:     global_152 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11830D2:     var_CC = var_8C.Fields.Item("start_srl_no")
  loc_11830E7:     var_DC = (var_CC.Value + 1)
  loc_11830EF:     global_156 = CInt(var_DC)
  loc_1183100:   End If
  loc_1183100: End If
  loc_118311B: var_DC = CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) 'String
  loc_118312B: var_B0 = Space((5 - Len(var_90)))
  loc_1183133: var_EC = (var_DC + var_CC.Value)
  loc_1183147: var_FC = Space((5 - Len(global_152)))
  loc_118314F: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_FC)
  loc_118315C: var_130 = (var_FC & " Order By VP.Date_From DESC" + CVar(global_152))
  loc_1183175: var_14C = Space((8 - Len(CStr(global_156))))
  loc_118317D: var_15C = (var_130 + var_14C)
  loc_118318C: var_17C = (var_15C + CVar(CStr(global_156)))
  loc_1183197: global_144 = CStr(var_17C)
  loc_11831CE: Set var_C8 = Me.Txt
  loc_11831D4: Call 0.Method_Proc_169_92_11832F80 (CInt(2), var_CC)
  loc_11831DC: var_CC.Text = global_144
  loc_11831EE: var_120 = 0
  loc_118322C: unk_56D39B.Execute "Select CurTokenNo From Depart Where Logsite_code='" & MemVar_1F92078 & "' And Code='" & global_52 & "'", var_CC.Value, -1
  loc_1183234: var_C8 = var_C8.Fields
  loc_118323C: var_120 = var_CC.Item(var_CC)
  loc_1183244: var_134 = var_134.Value
  loc_118324F: Proc_6_39_E7C810(CVar("Select CurTokenNo From Depart Where Logsite_code='" & MemVar_1F92078 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_DC)
  loc_1183257: var_C4 = CStr(CVar("Select CurTokenNo From Depart Where Logsite_code='" & MemVar_1F92078 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_1183266: var_110 = CStr((Val(var_C4) + CDbl(1)))
  loc_1183274: Set var_180 = Me.Txt
  loc_118327A: Call 0.Method_Proc_169_92_11832F80 (CInt(&H10), var_184, CStr(var_FC & " Order By VP.Date_From DESC"))
  loc_1183282: var_184.Text = var_DC
  loc_11832C2: Set var_C8 = Me.Txt
  loc_11832C8: Call 0.Method_Proc_169_92_11832F80 (CInt(0), var_CC)
  loc_11832D0: var_CC.Text = CStr(global_156)
  loc_11832E5: var_88 = global_144
  loc_11832ED: Set var_8C = Nothing
  loc_11832F0: Proc_169_92_11832F8 = global_156
End Sub

Public Sub Proc_169_93_18AB3CC
  'Data Table: 56D390
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_56D39B As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_BC As Variant
  Dim var_166 As Integer
  Dim var_124 As Variant
  Dim var_13C As Variant
  Dim var_110 As Variant
  Dim var_164 As Variant
  Dim var_178 As Variant
  Dim var_14C As Variant
  Dim var_120 As Variant
  Dim var_198 As Double
  Dim var_18C As String
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_8E As Integer
  Dim var_1AC As Variant
  Dim var_19C As MSHFlexGrid
  loc_18A8BB4: On Error Goto loc_18AB3C4
  loc_18A8BCE: If (Me.RecordCount > 0) Then
  loc_18A8C10:   var_DC = "Select P.* From PackingOrder P Where DocID='" & Me.Fields.Item("DocID").Value 
  loc_18A8C27:   unk_56D39B.Execute CStr(var_DC & "'"), var_120, -1
  loc_18A8C4F:   Set var_128 = var_124 
  loc_18A8C8C:   Set var_124 = Me.Txt
  loc_18A8C92:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(2), var_12C)
  loc_18A8C9A:   var_12C.Text = CStr(var_128.Fields.Item("DocID").Value)
  loc_18A8CE9:   Set var_124 = Me.Txt
  loc_18A8CEF:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(0), var_12C)
  loc_18A8CF7:   var_12C.Text = CStr(var_128.Fields.Item("VNo").Value)
  loc_18A8D33:   Proc_6_39_E7C810(var_DC, CVar(var_128.Fields.Item("TokenNo")))
  loc_18A8D4A:   Set var_124 = Me.Txt
  loc_18A8D50:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&H10), var_12C)
  loc_18A8D58:   var_12C.Text = CStr(var_DC)
  loc_18A8DFB:   var_100 = CStr(IIf(IsNull(CVar(var_128.Fields.Item("VDate"))), vbNullString, Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")))
  loc_18A8E0A:   Set var_160 = Me.Txt
  loc_18A8E10:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(3), var_164, var_100, 1)
  loc_18A8E18:   var_164.Text = 1
  loc_18A8EC8:   var_178 = CVar(CStr(IIf(IsNull(CVar(var_128.Fields.Item("VTIME"))), vbNullString, Format(CVar(var_128.Fields.Item("VTIME")), "hh:mm")))) 'String
  loc_18A8ED7:   Set var_160 = Me.TxtMask
  loc_18A8EDD:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(0), var_164, var_178, 1)
  loc_18A8EE5:   var_164.defaultText = 1
  loc_18A8F30:   var_166 = IsNull(CVar(var_128.Fields.Item("DDate")))
  loc_18A8FA2:   Set var_160 = Me.Txt
  loc_18A8FA8:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(4), var_164, CStr(IIf(var_166, vbNullString, Format(CVar(var_128.Fields.Item("DDate")), "DD/MMM/YYYY"))), 1, 1)
  loc_18A8FB0:   var_164.Text = var_166
  loc_18A8FFC:   var_166 = IsNull(CVar(var_128.Fields.Item("DTime")))
  loc_18A9016:   var_12C = var_128.Fields.Item("DTime")
  loc_18A9060:   var_178 = CVar(CStr(IIf(var_166, vbNullString, Format(CVar(var_12C), "hh:mm")))) 'String
  loc_18A906F:   Set var_160 = Me.TxtMask
  loc_18A9075:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(1), var_164, var_178, 1, 1)
  loc_18A907D:   var_164.defaultText = var_166
  loc_18A90D6:   Set var_124 = Me.Txt
  loc_18A90DC:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(1), var_12C, Proc_6_38_E68A98(CVar(var_128.Fields.Item("CustName")), var_166))
  loc_18A90E4:   var_12C.Text = var_166
  loc_18A912E:   Set var_124 = Me.Txt
  loc_18A9134:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&H14), var_12C)
  loc_18A913C:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("Remark")))
  loc_18A9186:   Set var_124 = Me.TxtCust
  loc_18A918C:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(0), var_12C)
  loc_18A9194:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("PhoneNo")))
  loc_18A91DE:   Set var_124 = Me.TxtCust
  loc_18A91E4:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(1), var_12C)
  loc_18A91EC:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("CustName")))
  loc_18A9236:   Set var_124 = Me.TxtCust
  loc_18A923C:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(2), var_12C)
  loc_18A9244:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("Addr1")))
  loc_18A928E:   Set var_124 = Me.TxtCust
  loc_18A9294:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(3), var_12C)
  loc_18A929C:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("Addr2")))
  loc_18A92CA:   var_AC = var_128.Fields.Item("NCBOOKING")
  loc_18A930B:   Me.ChkNCBOOKING.Value = CInt(IIf((var_AC.Value = "Y"), 1, 0))
  loc_18A9341:   If (Me.ChkNCBOOKING.Value = 1) Then
  loc_18A9351:     Set var_98 = Me.Txt
  loc_18A9357:     Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&H11), var_AC)
  loc_18A935F:     var_AC.Visible = True
  loc_18A9376:     Set var_98 = Me.Label1
  loc_18A937C:     Call 0.Method_Proc_169_93_18AB3CC0 (&H16, var_AC)
  loc_18A9384:     var_AC.Visible = True
  loc_18A9393:   Else
  loc_18A93A0:     Set var_98 = Me.Txt
  loc_18A93A6:     Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&H11), var_AC)
  loc_18A93AE:     var_AC.Visible = False
  loc_18A93C5:     Set var_98 = Me.Label1
  loc_18A93CB:     Call 0.Method_Proc_169_93_18AB3CC0 (&H16, var_AC)
  loc_18A93D3:     var_AC.Visible = False
  loc_18A93DF:   End If
  loc_18A9415:   Set var_124 = Me.Txt
  loc_18A941B:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&H11), var_12C)
  loc_18A9423:   var_12C.Text = Proc_6_38_E68A98(CVar(var_128.Fields.Item("NCType")))
  loc_18A9489:   Set var_124 = Me.Txt
  loc_18A948F:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(6), var_12C, CStr(Format(CVar(var_128.Fields.Item("Total")), "0.00")))
  loc_18A9497:   var_12C.Text = 1
  loc_18A9503:   Set var_124 = Me.Txt
  loc_18A9509:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(7), var_12C, CStr(Format(CVar(var_128.Fields.Item("Discount")), "0.00")), 1)
  loc_18A9511:   var_12C.Text = 1
  loc_18A957D:   Set var_124 = Me.Txt
  loc_18A9583:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&HD), var_12C, CStr(Format(CVar(var_128.Fields.Item("DiscPer")), "0.00")), 1)
  loc_18A958B:   var_12C.Text = 1
  loc_18A95F7:   Set var_124 = Me.Txt
  loc_18A95FD:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(8), var_12C, CStr(Format(CVar(var_128.Fields.Item("Tax")), "0.00")), 1)
  loc_18A9605:   var_12C.Text = 1
  loc_18A9671:   Set var_124 = Me.Txt
  loc_18A9677:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&HE), var_12C, CStr(Format(CVar(var_128.Fields.Item("TaxPer")), "0.00")), 1)
  loc_18A967F:   var_12C.Text = 1
  loc_18A96EB:   Set var_124 = Me.Txt
  loc_18A96F1:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(9), var_12C, CStr(Format(CVar(var_128.Fields.Item("Addition")), "0.00")), 1)
  loc_18A96F9:   var_12C.Text = 1
  loc_18A9765:   Set var_124 = Me.Txt
  loc_18A976B:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&HA), var_12C, CStr(Format(CVar(var_128.Fields.Item("Deduction")), "0.00")), 1)
  loc_18A9773:   var_12C.Text = 1
  loc_18A97DF:   Set var_124 = Me.Txt
  loc_18A97E5:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&HB), var_12C, CStr(Format(CVar(var_128.Fields.Item("RoundOff")), "0.00")), 1)
  loc_18A97ED:   var_12C.Text = 1
  loc_18A9859:   Set var_124 = Me.Txt
  loc_18A985F:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&HC), var_12C, CStr(Format(CVar(var_128.Fields.Item("NetAmt")), "0.00")), 1)
  loc_18A9867:   var_12C.Text = 1
  loc_18A9898:   var_AC = var_128.Fields.Item("AdvAmt")
  loc_18A98D3:   Set var_124 = Me.Txt
  loc_18A98D9:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&HF), var_12C, CStr(Format(CVar(var_AC), "0.00")), 1)
  loc_18A9909:   Set var_98 = Me.Txt
  loc_18A990F:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&HC), var_AC, var_18C)
  loc_18A9917:   1 = var_AC.Text
  loc_18A992A:   Set var_124 = Me.Txt
  loc_18A9930:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&HF), var_12C)
  loc_18A9945:   var_198 = Val(1)
  loc_18A9966:   var_BC = CVar((CDbl(var_18C) - var_198)) 'Double
  loc_18A9984:   Set var_160 = Me.Txt
  loc_18A998A:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&H13), var_164, CStr(Format(CVar(var_AC), "0.00")), 1)
  loc_18A9992:   var_164.Text = 1
  loc_18A99D2:   var_AC = var_128.Fields.Item("vType")
  loc_18A99E3:   var_100 = CStr(var_AC.Value)
  loc_18A99F1:   Set var_124 = Me.Txt
  loc_18A99F7:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(5), var_12C, var_100)
  loc_18A99FF:   var_12C.Tag = var_198
  loc_18A9A35:   Set var_98 = Me.Txt
  loc_18A9A3B:   Call 0.Method_Proc_169_93_18AB3CC0 (CInt(5), var_AC, var_100, "Select Description,NCat From Voucher_type Where V_Type='")
  loc_18A9A43:   var_14C = var_AC.Tag
  loc_18A9A59:   var_FC = -1 & Trim(CVar(var_100)) 
  loc_18A9A62:   var_120 = Format(CVar(var_AC), "0.00") & "'" 
  loc_18A9A70:   unk_56D39B.Execute CStr(var_120), var_124, var_124
  loc_18A9A7B:   Set var_8C = var_124
  loc_18A9AAB:   If (var_8C.RecordCount > 0) Then
  loc_18A9AE7:     Set var_124 = Me.Txt
  loc_18A9AED:     Call 0.Method_Proc_169_93_18AB3CC0 (CInt(5), var_12C)
  loc_18A9AF5:     var_12C.Text = CStr(var_8C.Fields.Item("Description").Value)
  loc_18A9B25:     var_AC = var_8C.Fields.Item("NCat")
  loc_18A9B3C:     global_160 = CStr(var_AC.Value)
  loc_18A9B50:   Else
  loc_18A9B5E:     Set var_98 = Me.Txt
  loc_18A9B64:     Call 0.Method_Proc_169_93_18AB3CC0 (CInt(5), var_AC)
  loc_18A9B6C:     var_AC.Text = vbNullString
  loc_18A9B7E:     global_160 = vbNullString
  loc_18A9B82:   End If
  loc_18A9BB3:   global_152 = CStr(var_128.Fields.Item("vPrefix").Value)
  loc_18A9BC6:   Set var_128 = Nothing 
  loc_18A9C20:   unk_56D39B.Execute CStr("Select S.* From PackingOrderDetail2 S Where S.DocId='" & Me.Fields.Item("SearchCode").Value & "' Order By SNo"), var_120, -1
  loc_18A9C2B:   Set var_88 = var_124
  loc_18A9C59:   If (var_88.RecordCount > 0) Then
  loc_18A9C8C:     Call Proc_169_69_1B17158(CDate(var_88.Fields.Item("SunAppDate").Value))
  loc_18A9CD4:     Set var_124 = Me.Txt
  loc_18A9CDA:     Call 0.Method_Proc_169_93_18AB3CC0 (CInt(&H12), var_12C)
  loc_18A9CE2:     var_12C.Text = CStr(var_88.Fields.Item("SunAppDate").Value)
  loc_18A9CF8:     ' Referenced from: 18AA18C
  loc_18A9D07:     If Not(var_88.EOF) Then
  loc_18A9D6A:       Set var_160 = Me.LblCap
  loc_18A9D70:       Call 0.Method_Proc_169_93_18AB3CC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A9D78:       var_164.Tag = CStr(var_88.Fields.Item("SunCode").Value)
  loc_18A9DF6:       Set var_160 = Me.TxtPer
  loc_18A9DFC:       Call 0.Method_Proc_169_93_18AB3CC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A9E04:       var_164.Tag = CStr(var_88.Fields.Item("Limit").Value)
  loc_18A9E82:       Set var_160 = Me.LblCap
  loc_18A9E88:       Call 0.Method_Proc_169_93_18AB3CC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A9E90:       var_164.Caption = CStr(var_88.Fields.Item("DispName").Value)
  loc_18A9F0E:       Set var_160 = Me.LblAt
  loc_18A9F14:       Call 0.Method_Proc_169_93_18AB3CC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A9F1C:       var_164.Tag = CStr(var_88.Fields.Item("Roff").Value)
  loc_18A9F97:       Set var_160 = Me.TxtGt
  loc_18A9F9D:       Call 0.Method_Proc_169_93_18AB3CC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18A9FA5:       var_164.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")))
  loc_18AA021:       Set var_160 = Me.TxtPer
  loc_18AA027:       Call 0.Method_Proc_169_93_18AB3CC0 (CInt(var_88.Fields.Item("SNo").Value), var_164)
  loc_18AA02F:       var_164.Text = CStr(var_88.Fields.Item("SValue").Value)
  loc_18AA09F:       var_DC = "0.00"
  loc_18AA0C6:       Set var_160 = Me.TxtGt
  loc_18AA0CC:       Call 0.Method_Proc_169_93_18AB3CC0 (CInt(var_88.Fields.Item("SNo").Value), var_164, CStr(Format(CVar(var_88.Fields.Item("Amount")), var_DC)))
  loc_18AA0D4:       var_164.Text = 1
  loc_18AA11A:       Proc_6_39_E7C810(var_DC, CVar(var_88.Fields.Item("BaseAmount")))
  loc_18AA13B:       var_124 = var_88.Fields
  loc_18AA158:       Set var_160 = Me.LblDummy
  loc_18AA15E:       Call 0.Method_Proc_169_93_18AB3CC0 (CInt(var_124.Item("SNo").Value), var_164, CStr(var_DC))
  loc_18AA166:       var_164.Caption = 1
  loc_18AA187:       var_88.MoveNext
  loc_18AA18C:       GoTo loc_18A9CF8
  loc_18AA18F:     End If
  loc_18AA18F:   End If
  loc_18AA19E:   Me.FGrid.Redraw = False
  loc_18AA1B9:   Me.FGrid.Rows = 1
  loc_18AA1C3:   var_8E = 1
  loc_18AA1DA:   var_DC = CVar("SELECT PD.*,I.Code as Code, I.name  as  ItemName,IsNull(U.PriceType,0) As PriceType,I.DispCode as DispCode FROM         PackingOrderDetail PD  LEFT OUTER JOIN " & "ItemMast I ON PD.ItemCode = I.Code And PD.ItemRestCode = I.RestCode Left Join UnitMast U On U.NAME=PD.Unit Where PD.Docid='") 'String
  loc_18AA237:   unk_56D39B.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "' and PD.RestCode='" & CVar(global_52) & "'"), var_178, -1
  loc_18AA242:   Set var_88 = var_124
  loc_18AA276:   If (var_88.RecordCount > 0) Then
  loc_18AA279:     ' Referenced from: 18AAE43
  loc_18AA288:     If Not(var_88.EOF) Then
  loc_18AA28B:       var_A8 = vbNullString
  loc_18AA295:       Set var_98 = Me.FGrid
  loc_18AA2AA:       Set var_19C = Me.FGrid
  loc_18AA2B1:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_18AA2B9:       var_110 = CVar(CLng(0)) 'Long
  loc_18AA2E9:       var_DC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18AA2F0:       LateIdCallSt
  loc_18AA30A:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_18AA312:       var_110 = CVar(CLng(1)) 'Long
  loc_18AA342:       var_DC = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_18AA349:       LateIdCallSt
  loc_18AA398:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemRestcode")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_19C, var_DC, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_18AA39F:       LateIdCallSt
  loc_18AA3EA:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispCode")), CVar(CLng(2)), CVar(CLng(var_8E)), var_19C, var_DC, var_19C)) 'String
  loc_18AA3F1:       LateIdCallSt
  loc_18AA43C:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(3)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18AA443:       LateIdCallSt
  loc_18AA48E:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(4)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18AA495:       LateIdCallSt
  loc_18AA4F2:       var_124 = var_88.Fields
  loc_18AA527:       var_14C = CVar(CStr(IIf((IsNull(CVar(var_88.Fields.Item("Remark"))) = &HFF), vbNullString, CVar(var_124.Item("Remark"))))) 'String
  loc_18AA52E:       LateIdCallSt
  loc_18AA585:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PriceType")), CVar(CLng(&H1F)), CVar(CLng(var_8E)), var_19C, var_14C, CVar(CLng(5)), CVar(CLng(var_8E)))) 'String
  loc_18AA58C:       LateIdCallSt
  loc_18AA5A2:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_18AA5AA:       var_EC = CVar(CLng(&H1F)) 'Long
  loc_18AA5D0:       If (CDbl(Val(CStr(var_19C.TextMatrix)))) = CDbl(0)) Then
  loc_18AA5F3:         var_EC = CVar(CLng(var_8E)) 'Long
  loc_18AA5FB:         var_13C = CVar(CLng(6)) 'Long
  loc_18AA628:         var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0.000"))) 'String
  loc_18AA62F:         LateIdCallSt
  loc_18AA648:       Else
  loc_18AA668:         var_EC = CVar(CLng(var_8E)) 'Long
  loc_18AA670:         var_13C = CVar(CLng(6)) 'Long
  loc_18AA69D:         var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), "0"))) 'String
  loc_18AA6A4:         LateIdCallSt
  loc_18AA6BA:       End If
  loc_18AA6DA:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18AA6E2:       var_13C = CVar(CLng(7)) 'Long
  loc_18AA70F:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemRate")), "0.00"))) 'String
  loc_18AA716:       LateIdCallSt
  loc_18AA74C:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18AA754:       var_13C = CVar(CLng(8)) 'Long
  loc_18AA781:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00"))) 'String
  loc_18AA788:       LateIdCallSt
  loc_18AA7FA:       LateIdCallSt
  loc_18AA838:       var_18C = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VoidYN")), var_19C, CVar(CStr(Format(CVar(var_88.Fields.Item("Amount")), "0.00"))), 1, 1, CVar(CLng(9)), CVar(CLng(var_8E)))
  loc_18AA83F:       var_13C = CVar(CLng(var_8E)) 'Long
  loc_18AA847:       var_1AC = CVar(CLng(&HA)) 'Long
  loc_18AA87D:       var_14C = CVar(CStr(IIf((var_18C = "Y"), "Yes", "No"))) 'String
  loc_18AA884:       LateIdCallSt
  loc_18AA8A9:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_18AA8B1:       var_110 = CVar(CLng(&HC)) 'Long
  loc_18AA8E1:       var_DC = CVar(CStr(var_88.Fields.Item("ItemCode").Value)) 'String
  loc_18AA8E8:       LateIdCallSt
  loc_18AA91E:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18AA926:       var_13C = CVar(CLng(&HF)) 'Long
  loc_18AA953:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscPer")), "0.00"))) 'String
  loc_18AA95A:       LateIdCallSt
  loc_18AA990:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18AA998:       var_13C = CVar(CLng(&H10)) 'Long
  loc_18AA9C5:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("DiscAmt")), "0.00"))) 'String
  loc_18AA9CC:       LateIdCallSt
  loc_18AAA02:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18AAA0A:       var_13C = CVar(CLng(&H11)) 'Long
  loc_18AAA37:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxPer")), "0.00"))) 'String
  loc_18AAA3E:       LateIdCallSt
  loc_18AAA74:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18AAA7C:       var_13C = CVar(CLng(&H12)) 'Long
  loc_18AAAA9:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("TaxAmt")), "0.00"))) 'String
  loc_18AAAB0:       LateIdCallSt
  loc_18AAAE6:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_18AAB22:       LateIdCallSt
  loc_18AAB71:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiscApp")), CVar(CLng(&H14)), CVar(CLng(var_8E)), var_19C, CVar(CStr(Format(CVar(var_88.Fields.Item("Total")), "0.00"))), 1, 1)) 'String
  loc_18AAB78:       LateIdCallSt
  loc_18AABC3:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxRoff")), CVar(CLng(&H15)), CVar(CLng(var_8E)), var_19C, var_DC, CVar(CLng(&H13)))) 'String
  loc_18AABCA:       LateIdCallSt
  loc_18AAC15:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxCode")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18AAC1C:       LateIdCallSt
  loc_18AAC67:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateEdit")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18AAC6E:       LateIdCallSt
  loc_18AACB9:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18AACC0:       LateIdCallSt
  loc_18AAD09:       Proc_6_39_E7C810(var_DC, CVar(var_88.Fields.Item("ContraSNo")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_19C, var_DC)
  loc_18AAD19:       LateIdCallSt
  loc_18AAD66:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DepartCode")), CVar(CLng(&H18)), CVar(CLng(var_8E)), var_19C, CVar(CStr(var_DC)))) 'String
  loc_18AAD6D:       LateIdCallSt
  loc_18AADB8:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RateIncTax")), CVar(CLng(&H1A)), CVar(CLng(var_8E)), var_19C, var_DC)) 'String
  loc_18AADBF:       LateIdCallSt
  loc_18AAE08:       Proc_6_39_E7C810(var_DC, CVar(var_88.Fields.Item("SChrgApp")), CVar(CLng(&H19)), CVar(CLng(var_8E)), var_19C, var_DC)
  loc_18AAE11:       var_FC = CVar(CStr(var_DC)) 'String
  loc_18AAE18:       LateIdCallSt
  loc_18AAE2E:       Set var_19C = Nothing 
  loc_18AAE38:       var_8E = (var_8E + 1)
  loc_18AAE3E:       var_88.MoveNext
  loc_18AAE43:       GoTo loc_18AA279
  loc_18AAE46:     End If
  loc_18AAE59:     Me.FGrid.FixedRows = 1
  loc_18AAE61:   End If
  loc_18AAE6F:   Me.FGrid.Redraw = True
  loc_18AAE8B:   var_DC = CVar("SELECT S.SNo1, S.Sno, S.TaxCode, RM.Name, S.BaseValue, S.TaxPer, S.TaxAmt,RM.Sundry " & " FROM PackingOrderDetail1 AS S LEFT JOIN RevMast AS RM ON S.TaxCode = RM.Code Where S.DocId='") 'String
  loc_18AAED2:   unk_56D39B.Execute CStr(var_DC & Me.Fields.Item("SearchCode").Value & "'"), var_14C, -1
  loc_18AAEDD:   Set var_88 = var_124
  loc_18AAF0C:   Me.FGCat.Rows = 1
  loc_18AAF28:   If (var_88.RecordCount > 0) Then
  loc_18AAF2B:     ' Referenced from: 18AB2F3
  loc_18AAF3A:     If Not(var_88.EOF) Then
  loc_18AAF41:       Set var_1D0 = Me.FGCat
  loc_18AAF44:       var_A8 = vbNullString
  loc_18AAF6E:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AAF76:       var_110 = CVar(CLng(0)) 'Long
  loc_18AAFA6:       var_FC = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_18AAFAD:       LateIdCallSt
  loc_18AAFE0:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AAFE8:       var_110 = CVar(CLng(1)) 'Long
  loc_18AB018:       var_FC = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_18AB01F:       LateIdCallSt
  loc_18AB052:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AB05A:       var_110 = CVar(CLng(2)) 'Long
  loc_18AB08A:       var_FC = CVar(CStr(var_88.Fields.Item("TaxCode").Value)) 'String
  loc_18AB091:       LateIdCallSt
  loc_18AB0C4:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AB0CC:       var_110 = CVar(CLng(3)) 'Long
  loc_18AB0FC:       var_FC = CVar(CStr(var_88.Fields.Item("Name").Value)) 'String
  loc_18AB103:       LateIdCallSt
  loc_18AB136:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AB13E:       var_110 = CVar(CLng(4)) 'Long
  loc_18AB16E:       var_FC = CVar(CStr(var_88.Fields.Item("BaseValue").Value)) 'String
  loc_18AB175:       LateIdCallSt
  loc_18AB1A8:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AB1B0:       var_110 = CVar(CLng(5)) 'Long
  loc_18AB1E0:       var_FC = CVar(CStr(var_88.Fields.Item("TaxPer").Value)) 'String
  loc_18AB1E7:       LateIdCallSt
  loc_18AB21A:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AB222:       var_110 = CVar(CLng(6)) 'Long
  loc_18AB252:       var_FC = CVar(CStr(var_88.Fields.Item("TaxAmt").Value)) 'String
  loc_18AB259:       LateIdCallSt
  loc_18AB28C:       var_CC = CVar((CLng(Me.FGCat.Rows) - 1)) 'Long
  loc_18AB294:       var_110 = CVar(CLng(7)) 'Long
  loc_18AB2C4:       var_FC = CVar(CStr(var_88.Fields.Item("Sundry").Value)) 'String
  loc_18AB2CB:       LateIdCallSt
  loc_18AB2E7:       Set var_1D0 = Nothing 
  loc_18AB2EE:       var_88.MoveNext
  loc_18AB2F3:       GoTo loc_18AAF2B
  loc_18AB2F6:     End If
  loc_18AB2F6:   End If
  loc_18AB2FC:   If (var_8E = 1) Then
  loc_18AB312:     Me.FGrid.Rows = 1
  loc_18AB324:     var_BC = Me.FGrid.Rows
  loc_18AB32F:     var_DC = CVar(CStr(CLng(var_BC))) 'String
  loc_18AB337:     Set var_AC = Me.FGrid
  loc_18AB366:     Me.FGrid.FixedRows = 1
  loc_18AB36E:   End If
  loc_18AB371: Else
  loc_18AB371:   Call Proc_169_88_FCBBF8(FGrid.DispID_10000, var_DC, var_1D0, var_FC, var_110, "'", var_1D0)
  loc_18AB376: End If
  loc_18AB379: Call Proc_169_87_E5CB38(var_BC, var_FC, var_110, "'")
  loc_18AB39C: If (Me.FrFinish.Visible = &HFF) Then
  loc_18AB3AB:   Me.FrFinish.Visible = False
  loc_18AB3B3: End If
  loc_18AB3B8: Set var_88 = Nothing
  loc_18AB3C0: Set var_8C = Nothing
  loc_18AB3C3: Exit Sub
  loc_18AB3C4: ' Referenced from: 18A8BB4
  loc_18AB3C4: Proc_6_60_E62BC4(var_1D0, var_FC)
  loc_18AB3C9: Exit Sub
End Sub

Public Sub Proc_169_94_10BC7EC
  'Data Table: 56D390
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim unk_56D39B As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_CC As Variant
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  loc_10BC535: Set var_9C = Me.TopCtrl1
  loc_10BC53B: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(&HFF)
  loc_10BC543: var_B0 = CStr()
  loc_10BC554: If (var_B0 = "Add") Then
  loc_10BC584:   Set var_9C = Me.Txt
  loc_10BC58A:   Call 0.Method_Proc_169_94_10BC7EC0 (CInt(2), var_B4, var_B0, "Select Count(*) From PackingOrder Where DocID='", var_AC, -1)
  loc_10BC5AB:   unk_56D39B.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_10BC5BB:    = var_D4.Item()
  loc_10BC5C3:    = var_E8.Value
  loc_10BC5F0:   If (var_B4.Text.Fields > 0) Then
  loc_10BC5F9:     Call 0.Method_arg_50 (var_B0)
  loc_10BC61A:     MsgBox("Duplicate booking No.", &H40, CVar(var_B0), var_118, var_128)
  loc_10BC630:     Call Proc_169_92_11832F8(MemVar_1F92044)
  loc_10BC643:     Set var_9C = Me.Txt
  loc_10BC649:     Call 0.Method_Proc_169_94_10BC7EC0 (CInt(2), var_B4)
  loc_10BC651:     var_B4.Text = var_B0
  loc_10BC665:     Proc_169_94_10BC7EC = 0
  loc_10BC66B:   End If
  loc_10BC66B: End If
  loc_10BC690: For var_12C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_12C 'Integer
  loc_10BC6C2:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_10BC6DE:   If CBool(var_118 <> vbNullString) Then
  loc_10BC6E7:     var_150 = global_160
  loc_10BC6EE:     Set var_9C = Me.TopCtrl1
  loc_10BC6F4:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(CVar(CLng(3)))
  loc_10BC6FC:     var_B0 = CStr(CVar(CLng(var_88)))
  loc_10BC708:     var_CC = CVar(CLng(var_88)) 'Long
  loc_10BC74D:     If (CVar(CLng(6)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0))) Then
  loc_10BC775:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_10BC79B:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_10BC7A7:       Set var_9C = Me.FGrid
  loc_10BC7CB:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_10BC7D8:       Proc_169_94_10BC7EC = 0
  loc_10BC7DE:     End If
  loc_10BC7DE:   End If
  loc_10BC7E1: Next var_12C 'Integer
  loc_10BC7E6: Proc_169_94_10BC7EC = 
End Sub

Public Sub Proc_169_95_DFD560
  'Data Table: 56D390
  loc_DFD55C: Exit Sub
End Sub

Public Sub Proc_169_96_11D7488(arg_C) '11D7488
  'Data Table: 56D390
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_9C As String
  Dim var_B4 As String
  Dim unk_56D39B As Connection15
  Dim var_CC As Variant
  Dim var_A4 As Recordset15
  Dim var_F8 As Variant
  Dim var_A6 As Integer
  Dim var_10C As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  loc_11D7036: var_98 = Me.FGridFinish.Tag
  loc_11D7058: If ((CStr(var_98) = arg_C) And (arg_C <> vbNullString)) Then
  loc_11D7076:   If (Me.FrFinish.Visible = 0) Then
  loc_11D707F:     Set var_88 = Me.FrFinish
  loc_11D7085:     var_88.Visible = True
  loc_11D708D:   End If
  loc_11D708D:   Exit Sub
  loc_11D708E: End If
  loc_11D70A2: var_9C = "Select ComboCode, ItemCode , IM.Name As ItemName, IM.Unit , Qty,IMC.Name As ComboItemName  from ComboPackDetail Inner Join ItemMast IM On ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode Inner Join ItemMast IMC On  ComboPackDetail.ComboCode = IMC.Code And ComboPackDetail.RestCode = IMC.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F92078
  loc_11D70BA: var_B4 = var_9C & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.restCode='" & global_52 & "' AND ComboPackDetail.combocode='"
  loc_11D70D1: unk_56D39B.Execute var_B4 & arg_C & "'", var_98, -1
  loc_11D70DC: Set var_A4 = var_88
  loc_11D7109: Call Proc_169_85_105F9A8(Me.FGridFinish.Text)
  loc_11D7121: Me.FGridFinish.Rows = 2
  loc_11D713C: Me.FGridFinish.FixedRows = 1
  loc_11D7154: Me.FGridFinish.Tag = vbNullString
  loc_11D7168: Me.FrFinish.Visible = False
  loc_11D7184: If (var_A4.RecordCount > 0) Then
  loc_11D71C3:   Me.FrFinish.Caption = Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ComboItemName"))) & " :"
  loc_11D7212:   Me.FGridFinish.Tag = CVar(CStr(var_A4.Fields.Item("ComboCode").Value))
  loc_11D7233:   Me.FrFinish.Visible = True
  loc_11D723D:   var_A6 = 1
  loc_11D7254:   var_CC = CVar((var_A4.RecordCount + 1)) 'Long
  loc_11D7263:   Me.FGridFinish.Rows = "ComboCode"
  loc_11D726B:   ' Referenced from: 11D747B
  loc_11D727A:   If Not(var_A4.EOF) Then
  loc_11D7281:     Set var_FC = Me.FGridFinish
  loc_11D7288:     var_CC = CVar(CLng(var_A6)) 'Long
  loc_11D7290:     var_10C = CVar(CLng(0)) 'Long
  loc_11D729A:     var_98 = CVar(CStr(var_A6)) 'String
  loc_11D72A1:     LateIdCallSt
  loc_11D72B0:     var_DC = CVar(CLng(var_A6)) 'Long
  loc_11D72B8:     var_11C = CVar(CLng(2)) 'Long
  loc_11D72E8:     var_F8 = CVar(CStr(var_A4.Fields.Item("ItemName").Value)) 'String
  loc_11D72EF:     LateIdCallSt
  loc_11D733E:     var_F8 = CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Unit")), CVar(CLng(3)), CVar(CLng(var_A6)), var_FC, var_F8, CVar(CLng(3)), CVar(CLng(var_A6)))) 'String
  loc_11D7345:     LateIdCallSt
  loc_11D738E:     Proc_6_51_EF39F0(var_F8, CVar(var_A4.Fields.Item("qty")), CVar(CLng(4)), CVar(CLng(var_A6)), var_FC, var_F8)
  loc_11D7397:     var_14C = CVar(CStr(var_F8)) 'String
  loc_11D739E:     LateIdCallSt
  loc_11D73B6:     var_DC = CVar(CLng(var_A6)) 'Long
  loc_11D73BE:     var_11C = CVar(CLng(1)) 'Long
  loc_11D73EE:     var_F8 = CVar(CStr(var_A4.Fields.Item("ItemCode").Value)) 'String
  loc_11D73F5:     LateIdCallSt
  loc_11D740F:     var_DC = CVar(CLng(var_A6)) 'Long
  loc_11D7417:     var_11C = CVar(CLng(5)) 'Long
  loc_11D7447:     var_F8 = CVar(CStr(var_A4.Fields.Item("ComboCode").Value)) 'String
  loc_11D744E:     LateIdCallSt
  loc_11D7466:     Set var_FC = Nothing 
  loc_11D7470:     var_A6 = (var_A6 + 1)
  loc_11D7476:     var_A4.MoveNext
  loc_11D747B:     GoTo loc_11D726B
  loc_11D747E:   End If
  loc_11D747E: End If
  loc_11D7483: Set var_A4 = Nothing
  loc_11D7486: Exit Sub
  loc_11D7487: var_A6(var_FC) = var_F8
End Sub

Public Sub Proc_169_97_10AC908(arg_C, arg_10, arg_14) '10AC908
  'Data Table: 56D390
  Dim var_AC As Variant
  Dim var_8A As Integer
  Dim arg_14 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10AC65D: var_88 = vbNullString
  loc_10AC674: arg_C = CStr(Trim(arg_C))
  loc_10AC680: var_8A = CInt(Len(arg_C))
  loc_10AC686: var_C0 = arg_10
  loc_10AC691: If (var_C0 = "A") Then
  loc_10AC6B0:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10AC6B4:   var_9C = arg_C 'Variant
  loc_10AC70A:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10AC71E:   var_110 = (0 + Chr(&H1B))
  loc_10AC727:   var_120 = (var_110 + "G")
  loc_10AC73B:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10AC745:   var_150 = (var_140 + CVar(arg_C))
  loc_10AC759:   var_170 = (var_150 + Chr(&H1B))
  loc_10AC762:   var_190 = (var_170 + "H")
  loc_10AC767:   var_88 = CStr(var_190)
  loc_10AC788: Else
  loc_10AC790:   If (var_C0 = "D") Then
  loc_10AC79E:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10AC7AF:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AC7B3:     var_9C = "G" 'Variant
  loc_10AC809:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10AC81D:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AC827:     var_120 = (var_110 + CVar(arg_C))
  loc_10AC82C:     var_88 = CStr(var_120)
  loc_10AC841:   Else
  loc_10AC849:     If (var_C0 = "E") Then
  loc_10AC85A:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AC85E:       var_9C = CVar(arg_C) 'Variant
  loc_10AC8B4:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10AC8C8:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AC8D2:       var_120 = (var_110 + CVar(arg_C))
  loc_10AC8E6:       var_140 = (var_120 + Chr(&H12))
  loc_10AC8EB:       var_88 = CStr(var_140)
  loc_10AC901:     End If
  loc_10AC901:   End If
  loc_10AC901: End If
  loc_10AC901: Proc_169_97_10AC908 = arg_14
End Sub

Public Sub Proc_169_98_134B1E8(arg_C, arg_10, arg_14) '134B1E8
  'Data Table: 56D390
  Dim var_F0 As String
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_274 As Variant
  Dim unk_56D39B As Connection15
  Dim var_A8 As Recordset15
  Dim var_278 As Fields15
  Dim var_290 As Double
  Dim var_EC As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_DC As Variant
  Dim arg_10 As Integer
  loc_134AA4D: var_90 = vbNullString
  loc_134AA53: var_94 = vbNullString
  loc_134AA59: var_98 = vbNullString
  loc_134AA5F: var_9C = vbNullString
  loc_134AA65: var_A0 = vbNullString
  loc_134AA6B: var_A4 = vbNullString
  loc_134AA76: If (MemVar_1F923C0 = "Y") Then
  loc_134AA80:   var_F0 = vbNullString & "DATE "
  loc_134AAB1:   var_8C = 1 & CStr(Format(MemVar_1F920EC, "dd/MM/yy"))
  loc_134AAC4: End If
  loc_134AACC: If (MemVar_1F923C4 = "Y") Then
  loc_134AADE:   var_DC = "dd/MM/yy"
  loc_134AB30:   var_174 = (CVar(arg_14) - IIf((MemVar_1F923C0 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F920EC, var_DC)))), 0))
  loc_134AB57:   var_1C4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_134AB5F:   var_1E4 = (var_174 - Len(var_1C4))
  loc_134AB70:   var_214 = (CVar(var_8C) + Space(CLng(var_1E4)))
  loc_134AB79:   var_234 = (var_214 + " PAGE NO ")
  loc_134AB9B:   var_274 = (var_234 + Trim(Str(arg_C)))
  loc_134ABA0:   var_8C = CStr(var_274)
  loc_134ABCD: End If
  loc_134ABDE: var_AC = "Select R.NAME,R.HEADER1,R.HEADER2,R.COMPANYTITLE,R.OUTLETTITLE,R.PHONE From DEPART R  Where R.CODE='" & global_52 & "'"
  loc_134ABFA: unk_56D39B.Execute var_AC, var_DC, -1
  loc_134AC05: Set var_A8 = var_278
  loc_134AC1C: If (MemVar_1F923C8 = "K") Then
  loc_134AC5B:   If (var_A8.Fields.Item("COMPANYTITLE").Value = "Y") Then
  loc_134AC68:     If (Len(MemVar_1F92130) <= &H23) Then
  loc_134AC94:       Call Proc_169_97_10AC908(MemVar_1F92130, "D", CInt(Val(CStr(arg_14))))
  loc_134AC9D:       var_90 = var_288 & var_288
  loc_134ACAC:     Else
  loc_134ACC2:       var_EC = (CVar(var_90) + Chr(&H12))
  loc_134ACD6:       var_144 = (Format(MemVar_1F920EC, Chr(&H12)) + Chr(&HE))
  loc_134ACEA:       var_174 = (0 + Chr(&HF))
  loc_134ACF4:       var_194 = (var_174 + CVar(MemVar_1F92130))
  loc_134AD08:       var_1C4 = (Str(arg_C) + Chr(&H12))
  loc_134AD0D:       var_90 = CStr(var_1C4)
  loc_134AD25:     End If
  loc_134AD25:   End If
  loc_134AD61:   If (var_A8.Fields.Item("OutletTitle").Value = "Y") Then
  loc_134ADA4:     If (Len(var_A8.Fields.Item("Name").Value) <= 35) Then
  loc_134ADDB:       var_290 = Val(CStr(arg_14))
  loc_134ADFC:       Call Proc_169_97_10AC908(CStr(var_A8.Fields.Item("Name").Value), "D", CInt(var_290))
  loc_134AE05:       var_94 = var_294 & var_294
  loc_134AE20:     Else
  loc_134AE36:       var_EC = (CVar(var_94) + Chr(&H12))
  loc_134AE4A:       var_144 = (Len(var_A8.Fields.Item("Name").Value) + Chr(&HE))
  loc_134AE5E:       var_174 = (0 + Chr(&HF))
  loc_134AE8C:       var_1A4 = (var_174 + var_A8.Fields.Item("Name").Value)
  loc_134AEA0:       var_1D4 = (Chr(&H12) + Chr(&H12))
  loc_134AEA5:       var_94 = CStr(Len(Chr(&H12)))
  loc_134AEC6:     End If
  loc_134AEC6:   End If
  loc_134AEDA:   If (var_A8.RecordCount > 0) Then
  loc_134AF16:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Header1")), var_94, var_290, var_90, var_290) <> vbNullString) Then
  loc_134AF4D:       var_290 = Val(CStr(arg_14))
  loc_134AF6E:       Call Proc_169_97_10AC908(CStr(var_A8.Fields.Item("Header1").Value), "D", CInt(var_290))
  loc_134AF77:       var_98 = var_294 & var_294
  loc_134AF8F:     End If
  loc_134AF9E:     var_278 = var_A8.Fields
  loc_134AFC8:     If (Proc_6_38_E68A98(CVar(var_278.Item("Header2")), var_98, var_290, var_278) <> vbNullString) Then
  loc_134AFFF:       var_290 = Val(CStr(arg_14))
  loc_134B020:       Call Proc_169_97_10AC908(CStr(var_A8.Fields.Item("Header2").Value), "D", CInt(var_290))
  loc_134B029:       var_9C = var_294 & var_294
  loc_134B041:     End If
  loc_134B07A:     If (Proc_6_38_E68A98(CVar(var_A8.Fields.Item("Phone")), var_9C, var_290, 1) <> vbNullString) Then
  loc_134B0D2:       Call Proc_169_97_10AC908(CStr(var_A8.Fields.Item("Phone").Value), "D", CInt(Val(CStr(arg_14))))
  loc_134B0DB:       var_A0 = var_294 & var_294
  loc_134B0F3:     End If
  loc_134B0F3:   End If
  loc_134B0F3: End If
  loc_134B0FD: If (Len(var_8C) > 0) Then
  loc_134B105:   Print 1, var_8C
  loc_134B111:   arg_10 = (arg_10 + 1)
  loc_134B114: End If
  loc_134B11E: If (Len(var_90) > 0) Then
  loc_134B126:   Print 1, var_90
  loc_134B132:   arg_10 = (arg_10 + 1)
  loc_134B135: End If
  loc_134B13F: If (Len(var_94) > 0) Then
  loc_134B147:   Print 1, var_94
  loc_134B153:   arg_10 = (arg_10 + 1)
  loc_134B156: End If
  loc_134B160: If (Len(var_98) > 0) Then
  loc_134B168:   Print 1, var_98
  loc_134B174:   arg_10 = (arg_10 + 1)
  loc_134B177: End If
  loc_134B181: If (Len(var_9C) > 0) Then
  loc_134B189:   Print 1, var_9C
  loc_134B195:   arg_10 = (arg_10 + 1)
  loc_134B198: End If
  loc_134B1A2: If (Len(var_A0) > 0) Then
  loc_134B1AA:   Print 1, var_A0
  loc_134B1B6:   arg_10 = (arg_10 + 1)
  loc_134B1B9: End If
  loc_134B1C3: If (Len(var_A4) > 0) Then
  loc_134B1CB:   Print 1, var_A4
  loc_134B1D7:   arg_10 = (arg_10 + 1)
  loc_134B1DA: End If
  loc_134B1E0: Proc_169_98_134B1E8 = arg_10
End Sub

Public Sub Proc_169_99_10B49C4(arg_C) '10B49C4
  'Data Table: 56D390
  Dim var_8C As Recordset15
  loc_10B46DD: Set var_8C = arg_C 
  loc_10B4705: var_8C.Fields.Append "mLine", &HC8, 2
  loc_10B4731: var_8C.Fields.Append "Sno", &HC8, 3
  loc_10B475D: var_8C.Fields.Append "DispCode", &HC8, 6
  loc_10B4789: var_8C.Fields.Append "Item", &HC8, &H32
  loc_10B47B5: var_8C.Fields.Append "Remark", &HC8, &H4B
  loc_10B47E1: var_8C.Fields.Append "Qty", &HC8, 8
  loc_10B480D: var_8C.Fields.Append "Rate", &HC8, 8
  loc_10B4839: var_8C.Fields.Append "TaxAmt", &HC8, 8
  loc_10B4865: var_8C.Fields.Append "Amount", &HC8, &HA
  loc_10B4891: var_8C.Fields.Append "TaxPer", &HC8, 8
  loc_10B48BD: var_8C.Fields.Append "NonTaxable", &HC8, &HA
  loc_10B48E9: var_8C.Fields.Append "Taxable", &HC8, &HA
  loc_10B4915: var_8C.Fields.Append "Unit", &HC8, &H14
  loc_10B4941: var_8C.Fields.Append "VoidYN", &HC8, 1
  loc_10B496D: var_8C.Fields.Append "Mark", &HC8, 1
  loc_10B497D: var_8C.CursorType = 3
  loc_10B498A: var_8C.LockType = 3
  loc_10B49A9: var_8C.Open var_A0, var_B0, -1
  loc_10B49B0: Set var_8C = Nothing 
  loc_10B49B7: Set var_88 = arg_C 
  loc_10B49BB: Proc_169_99_10B49C4 = -1
End Sub

Public Sub Proc_169_100_199E040
  'Data Table: 56D390
  Dim var_1A4 As String
  Dim var_1A8 As String
  Dim unk_56D39B As Connection15
  Dim var_1E0 As Variant
  Dim var_1B8 As Variant
  Dim Me As Recordset15
  Dim var_1CC As Fields15
  Dim var_1D0 As Field20
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_210 As Variant
  Dim var_1A0 As Recordset15
  Dim var_1C8 As Variant
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_100 As Recordset15
  Dim var_22C As Fields15
  Dim var_B2 As Integer
  Dim var_C4 As Recordset15
  Dim var_234 As Recordset15
  Dim var_194 As Recordset15
  Dim var_B6 As Integer
  Dim var_248 As Recordset15
  Dim var_CC As Double
  Dim var_178 As Double
  Dim var_180 As Double
  Dim var_11E As Integer
  Dim var_108 As Recordset15
  Dim var_B4 As Integer
  Dim var_18E As Integer
  loc_199B1B0: On Error Goto loc_199E039
  loc_199B1DA: unk_56D39B.Execute "Select * from Depart Where Code='" & global_52 & "'", var_1C8, -1
  loc_199B1E5: Set var_100 = var_1CC
  loc_199B235: var_88 = CStr("Select * From PackingOrder P Where P.DocID='" & Me.Fields.Item("SearchCode").Value & "'")
  loc_199B248: var_1E0 = "Select S.SNO AS SRNO,S.TAXPER AS TAXPER,S.TAXAMT AS TAXAMT,S.RATE AS RATE,S.QTY As QTY,S.AMOUNT AS AMT,S.REMARK,I.NAME AS ITEMNAME,S.ItemCode,I.DISPCODE As DISPCODE,Case When S.TAXAMT=0 THEN S.AMOUNT ELSE 0 END AS NONTAXABLE,Case When S.TAXAMT<>0 THEN S.AMOUNT ELSE 0 END AS TAXABLE,S.Unit As UNIT,IsNull(S.VoidYN,'') As VoidYN From PackingOrderDetail S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEMCODE And I.RestCODE=S.ItemRestCode Where S.DocID='"
  loc_199B288: var_8C = CStr(var_1E0 & Me.Fields.Item("SearchCode").Value & "' Order By S.Sno")
  loc_199B2BA: var_1CC = Me.Fields
  loc_199B2CA: var_1C8 = var_1CC.Item("SearchCode").Value
  loc_199B2D2: var_210 = CVar("Select st.sno,st.SunCode,st.dispname,st.sValue,St.AMOUNT From packingorderdetail2 St " & " Where St.DocID='") & var_1C8 
  loc_199B2E0: var_90 = CStr(var_210 & "' order by sno")
  loc_199B2F5: ' Referenced from: 199DF98
  loc_199B2FD: If (var_88 = vbNullString) Then
  loc_199B300:   Exit Sub
  loc_199B301: End If
  loc_199B309: If (var_8C = vbNullString) Then
  loc_199B30C:   Exit Sub
  loc_199B30D: End If
  loc_199B315: If (var_90 = vbNullString) Then
  loc_199B318:   Exit Sub
  loc_199B319: End If
  loc_199B32F: unk_56D39B.Execute var_88, var_1C8, -1
  loc_199B33A: Set var_BC = var_1CC
  loc_199B359: unk_56D39B.Execute var_8C, var_1C8, -1
  loc_199B364: Set var_C4 = var_1CC
  loc_199B383: unk_56D39B.Execute var_90, var_1C8, -1
  loc_199B38E: Set var_108 = var_1CC
  loc_199B3BB: unk_56D39B.Execute "Select BookingSlipFooter1,BookingSlipFooter2 from Enviro where LOGSite_code='" & MemVar_1F92078 & "'", var_1C8, -1
  loc_199B3C6: Set var_1A0 = var_1CC
  loc_199B3EA: If (var_1A0.RecordCount > 0) Then
  loc_199B3FC:   var_1CC = var_1A0.Fields
  loc_199B415:   var_198 = Proc_6_38_E68A98(CVar(var_1CC.Item("BookingSlipFooter1")), var_1CC, var_1CC)
  loc_199B42D:   var_1CC = var_1A0.Fields
  loc_199B446:   var_19C = Proc_6_38_E68A98(CVar(var_1CC.Item("BookingSlipFooter2")), var_1CC)
  loc_199B44F: End If
  loc_199B45C: Call Proc_169_99_10B49C4(New)
  loc_199B464: Set var_C0 = var_1CC
  loc_199B467: ' Referenced from: 199E00D
  loc_199B476: If Not(var_BC.EOF) Then
  loc_199B47B:   var_96 = 0
  loc_199B484:   If (var_96 = 0) Then
  loc_199B496:     var_1CC = var_100.Fields
  loc_199B4AF:     var_114 = Proc_6_38_E68A98(CVar(var_1CC.Item("CstNo")), var_96, var_1CC)
  loc_199B4C7:     var_1CC = var_100.Fields
  loc_199B4E0:     var_110 = Proc_6_38_E68A98(CVar(var_1CC.Item("LstNo")), var_1CC)
  loc_199B4FE:     var_144 = "Phone: " & MemVar_1F92140 & " Fax :" & MemVar_1F92144
  loc_199B530:     var_148 = Proc_6_38_E68A98(CVar(var_100.Fields.Item("Phone")))
  loc_199B548:     var_1CC = var_100.Fields
  loc_199B591:     var_1A8 = Proc_6_38_E68A98(CVar(var_100.Fields.Item("COMPANYTITLE")), (Proc_6_38_E68A98(CVar(var_1CC.Item("COMPANYTITLE"))) = "Y"))
  loc_199B5AF:     If (var_1CC Or (var_1A8 = vbNullString)) Then
  loc_199B5B5:       var_14C = "Y"
  loc_199B5B8:     End If
  loc_199B62E:     If ((Proc_6_38_E68A98(CVar(var_100.Fields.Item("OutletTitle"))) = "Y") Or (Proc_6_38_E68A98(CVar(var_100.Fields.Item("OutletTitle"))) = vbNullString)) Then
  loc_199B660:       var_E4 = CStr(Trim(CVar(var_100.Fields.Item("Name"))))
  loc_199B66D:     End If
  loc_199B695:     var_150 = Proc_6_38_E68A98(CVar(var_100.Fields.Item("Header1")))
  loc_199B6C6:     var_154 = Proc_6_38_E68A98(CVar(var_100.Fields.Item("Header2")))
  loc_199B6F7:     var_158 = Proc_6_38_E68A98(CVar(var_100.Fields.Item("Header3")))
  loc_199B728:     var_15C = Proc_6_38_E68A98(CVar(var_100.Fields.Item("Header4")))
  loc_199B759:     var_12C = Proc_6_38_E68A98(CVar(var_100.Fields.Item("Slogan1")))
  loc_199B78A:     var_130 = Proc_6_38_E68A98(CVar(var_100.Fields.Item("Slogan2")))
  loc_199B7C2:     var_138 = CStr(Trim(CVar(var_100.Fields.Item("OrderBookCom1"))))
  loc_199B7FE:     var_13C = CStr(Trim(CVar(var_100.Fields.Item("OrderBookCom2"))))
  loc_199B811:     If (var_18E = 0) Then
  loc_199B817:       var_140 = var_138
  loc_199B81D:     Else
  loc_199B820:       var_140 = var_13C
  loc_199B823:     End If
  loc_199B875:     var_F4 = CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VDate")))), "dd/MM/yy"))
  loc_199B8B1:     var_F8 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("VTIME")), 1)
  loc_199B8FD:     var_1F0 = CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("DDate")))) 'String
  loc_199B90C:     var_118 = CStr(Format(var_1F0, "dd/MM/yy"))
  loc_199B948:     var_11C = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("DTime")), 1)
  loc_199B977:     Proc_6_39_E7C810(var_1F0, CVar(var_BC.Fields.Item("VNo")))
  loc_199B980:     var_FC = CStr(var_1F0)
  loc_199B9B5:     var_134 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Remark")), 1)
  loc_199B9E6:     var_164 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("PhoneNo")))
  loc_199BA17:     var_168 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("CustName")))
  loc_199BA48:     var_16C = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Addr1")))
  loc_199BA79:     var_170 = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("Addr2")))
  loc_199BA85:     var_1B8 = "AdvAmt"
  loc_199BAA8:     Proc_6_39_E7C810(var_1F0, CVar(var_BC.Fields.Item(var_1B8)))
  loc_199BAB7:     var_1E0 = "0.00"
  loc_199BAD1:     var_160 = CStr(Format(var_1F0, var_1E0))
  loc_199BAE2:   End If
  loc_199BAE4:   var_B2 = 1
  loc_199BAEA:   var_C4.MoveFirst
  loc_199BAEF:   ' Referenced from: 199C508
  loc_199BAFE:   If Not(var_C4.EOF) Then
  loc_199BB04:     Set var_234 = var_C0 
  loc_199BB13:     var_234.AddNew var_1B8, var_1E0
  loc_199BB3D:     var_234.Fields.Item("mLine").Value = "GF"
  loc_199BB71:     var_234.Fields.Item("Sno").Value = CVar(CStr(var_B2))
  loc_199BBCF:     var_234.Fields.Item("DispCode").Value = CVar(CStr(var_C4.Fields.Item("DispCode").Value))
  loc_199BC31:     var_234.Fields.Item("Item").Value = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("ItemName")), var_B2, 1))
  loc_199BC6E:     var_1F0 = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Remark")), 1)) 'String
  loc_199BC91:     var_234.Fields.Item("Remark").Value = var_1F0
  loc_199BCCC:     Proc_6_39_E7C810(var_1F0, CVar(var_C4.Fields.Item("qty")))
  loc_199BD14:     var_234.Fields.Item("Qty").Value = Format(var_1F0, "0.000")
  loc_199BD53:     Proc_6_39_E7C810(var_1F0, CVar(var_C4.Fields.Item("Rate")), 1)
  loc_199BD9B:     var_234.Fields.Item("Rate").Value = Format(var_1F0, "0.00")
  loc_199BDDA:     Proc_6_39_E7C810(var_1F0, CVar(var_C4.Fields.Item("TaxAmt")), 1)
  loc_199BE22:     var_234.Fields.Item("TaxAmt").Value = Format(var_1F0, "0.00")
  loc_199BE61:     Proc_6_39_E7C810(var_1F0, CVar(var_C4.Fields.Item("Amt")), 1, 1)
  loc_199BE75:     var_210 = "0.00"
  loc_199BE8D:     var_200 = "Amount"
  loc_199BEA9:     var_234.Fields.Item(var_200).Value = Format(var_1F0, var_210)
  loc_199BEE8:     Proc_6_39_E7C810(var_1F0, CVar(var_C4.Fields.Item("TaxPer")), 1, 1)
  loc_199BEF3:     Proc_6_47_EF59D0(var_210, var_1F0, 1)
  loc_199BF1B:     var_234.Fields.Item("TaxPer").Value = var_210
  loc_199BF58:     Proc_6_47_EF59D0(var_1F0, CVar(var_C4.Fields.Item("nonTaxable")))
  loc_199BF80:     var_234.Fields.Item("NonTaxable").Value = var_1F0
  loc_199BFBB:     Proc_6_47_EF59D0(var_1F0, CVar(var_C4.Fields.Item("Taxable")))
  loc_199BFE3:     var_234.Fields.Item("Taxable").Value = var_1F0
  loc_199C043:     var_234.Fields.Item("Unit").Value = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("Unit")), 1))
  loc_199C093:     var_22C = var_234.Fields
  loc_199C0A3:     var_22C.Item("VoidYN").Value = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VoidYN"))))
  loc_199C0B8:     var_1E0 = "*"
  loc_199C0C1:     var_1B8 = "Mark"
  loc_199C0DD:     var_234.Fields.Item(var_1B8).Value = var_1E0
  loc_199C0F4:     var_234.Update var_1B8, var_1E0
  loc_199C0FB:     Set var_234 = Nothing 
  loc_199C113:     var_1A4 = "Select IM.Name As ItemName, IM.Unit , Qty  from ComboPackDetail Inner Join ItemMast IM On  ComboPackDetail.ItemCode = IM.Code And ComboPackDetail.RestCode = IM.RestCode where (ComboPackDetail.LOGSITE_CODE='" & MemVar_1F92078
  loc_199C123:     var_1B8 = "ItemCode"
  loc_199C147:     var_210 = CVar(var_1A4 & "' or ComboPackDetail.LOGSITE_CODE='HO') AND ComboPackDetail.combocode='") & var_C4.Fields.Item(var_1B8).Value 
  loc_199C14B:     var_1E0 = "'"
  loc_199C15E:     unk_56D39B.Execute CStr(var_210 & var_1E0), var_244, -1
  loc_199C169:     Set var_194 = var_22C
  loc_199C18F:     var_224 = var_194.RecordCount
  loc_199C19D:     If (var_224 > 0) Then
  loc_199C1A2:       var_B6 = 1
  loc_199C1A5:       ' Referenced from: 199C411
  loc_199C1B4:       If Not(var_194.EOF) Then
  loc_199C1BA:         Set var_248 = var_C0 
  loc_199C1C9:         var_248.AddNew var_1B8, var_1E0
  loc_199C1F3:         var_248.Fields.Item("mLine").Value = "SB"
  loc_199C227:         var_248.Fields.Item("Sno").Value = CVar(CStr(var_B6))
  loc_199C25E:         var_1F0 = CVar(Proc_6_38_E68A98(CVar(var_194.Fields.Item("ItemName")), var_B6)) 'String
  loc_199C281:         var_248.Fields.Item("Item").Value = var_1F0
  loc_199C2BC:         Proc_6_51_EF39F0(var_1F0, CVar(var_194.Fields.Item("qty")))
  loc_199C2D4:         var_22C = var_248.Fields
  loc_199C2E4:         var_22C.Item("Qty").Value = var_1F0
  loc_199C344:         var_248.Fields.Item("Unit").Value = CVar(Proc_6_38_E68A98(CVar(var_194.Fields.Item("Unit")), var_248.Fields))
  loc_199C381:         var_1F0 = CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("VoidYN")))) 'String
  loc_199C3A4:         var_248.Fields.Item("VoidYN").Value = var_1F0
  loc_199C3B9:         var_1E0 = "*"
  loc_199C3C2:         var_1B8 = "Mark"
  loc_199C3DE:         var_248.Fields.Item(var_1B8).Value = var_1E0
  loc_199C3F5:         var_248.Update var_1B8, var_1E0
  loc_199C3FC:         Set var_248 = Nothing 
  loc_199C406:         var_B6 = (var_B6 + 1)
  loc_199C40C:         var_194.MoveNext
  loc_199C411:         GoTo loc_199C1A5
  loc_199C414:       End If
  loc_199C414:     End If
  loc_199C419:     Set var_194 = Nothing
  loc_199C449:     Proc_6_39_E7C810(var_1F0, CVar(var_C4.Fields.Item("Amt")), CVar(var_CC))
  loc_199C451:     var_210 = (var_B6 + var_1F0)
  loc_199C492:     Proc_6_39_E7C810(var_1F0, CVar(var_C4.Fields.Item("nonTaxable")), CVar(var_178))
  loc_199C49A:     var_210 = (CSng(var_210) + var_1F0)
  loc_199C49F:     var_178 = CSng(var_210)
  loc_199C4B1:     var_1E0 = CVar(var_180) 'Double
  loc_199C4DB:     Proc_6_39_E7C810(var_1F0, CVar(var_C4.Fields.Item("Taxable")), var_1E0)
  loc_199C4E3:     var_210 = (var_178 + var_1F0)
  loc_199C4E8:     var_180 = CSng(var_210)
  loc_199C4FD:     var_B2 = (var_B2 + 1)
  loc_199C503:     var_C4.MoveNext
  loc_199C508:     GoTo loc_199BAEF
  loc_199C50B:   End If
  loc_199C522:   var_1D0 = var_BC.Fields.Item("U_Name")
  loc_199C533:   var_10C = Proc_6_38_E68A98(CVar(var_1D0), var_B2)
  loc_199C53E:   var_11E = &HFF
  loc_199C544:   var_124 = "OrderBooking"
  loc_199C547:   var_1B8 = "Order Booking"
  loc_199C55E:   var_128 = CStr(Ucase(var_1B8))
  loc_199C56E:   If (var_11E = 0) Then
  loc_199C571:     Exit Sub
  loc_199C572:   End If
  loc_199C596:   Set var_1CC = var_C0 
  loc_199C59D:   CreateFieldDefFile(var_1CC, MemVar_1F920B4 & "\" & var_124 & ".ttx", &HFF)
  loc_199C5C8:   var_1A4 = MemVar_1F920B4 & "\"
  loc_199C5DF:   Call 0.Method_arg_1C (var_1A4 & var_124 & ".RPT", var_1B8, var_1CC)
  loc_199C5EA:   MemVar_1F921E4 = var_1CC
  loc_199C613:   Call 0.Method_arg_64 (var_1CC, CVar(var_1CC), var_1E0, var_200)
  loc_199C61B:   Call 0.Method_arg_2C (var_11E, var_180)
  loc_199C629:   Call 0.Method_arg_150 (1)
  loc_199C63F:   Call 0.Method_arg_90 (var_1CC, var_224)
  loc_199C647:   Call 0.Method_arg_24 (var_B2)
  loc_199C653:   For var_254 =  To CInt(var_224): 1 = var_254 'Integer
  loc_199C66C:     Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199C674:     Call 0.Method_arg_20 (var_1D0)
  loc_199C67C:     Call 0.Method_arg_30 (var_1A4)
  loc_199C692:     var_264 = Ucase(CVar(var_1A4)) 'Variant
  loc_199C6A8:     var_1C8 = "comp_name"
  loc_199C6C2:     If (var_264 = Ucase(var_1C8)) Then
  loc_199C6D0:       Proc_6_17_EAA2B0(var_1C8)
  loc_199C6EC:       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C6F4:       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C6FC:       Call 0.Method_arg_38 (MemVar_1F92130)
  loc_199C711:     Else
  loc_199C719:       var_1C8 = "comp_add1"
  loc_199C733:       If (var_264 = Ucase(var_1C8)) Then
  loc_199C741:         Proc_6_17_EAA2B0(var_1C8)
  loc_199C75D:         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C765:         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C76D:         Call 0.Method_arg_38 (MemVar_1F92134)
  loc_199C782:       Else
  loc_199C78A:         var_1C8 = "comp_pin"
  loc_199C7A4:         If (var_264 = Ucase(var_1C8)) Then
  loc_199C7B2:           Proc_6_17_EAA2B0(var_1C8)
  loc_199C7CE:           Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C7D6:           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C7DE:           Call 0.Method_arg_38 (MemVar_1F9213C)
  loc_199C7F3:         Else
  loc_199C815:           If (var_264 = Ucase("comp_GSTIN")) Then
  loc_199C839:             Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199C841:             Call 0.Method_arg_20 (var_1D0)
  loc_199C849:             Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_199C85F:           Else
  loc_199C867:             var_1C8 = "Comp_Phone_Fax"
  loc_199C881:             If (var_264 = Ucase(var_1C8)) Then
  loc_199C88F:               Proc_6_17_EAA2B0(var_1C8)
  loc_199C8AB:               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C8B3:               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C8BB:               Call 0.Method_arg_38 (var_144)
  loc_199C8D0:             Else
  loc_199C8D8:               var_1C8 = "Outl_Phone_Fax"
  loc_199C8F2:               If (var_264 = Ucase(var_1C8)) Then
  loc_199C900:                 Proc_6_17_EAA2B0(var_1C8)
  loc_199C91C:                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C924:                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C92C:                 Call 0.Method_arg_38 (var_148)
  loc_199C941:               Else
  loc_199C949:                 var_1C8 = "CompTitleYN"
  loc_199C963:                 If (var_264 = Ucase(var_1C8)) Then
  loc_199C971:                   Proc_6_17_EAA2B0(var_1C8)
  loc_199C98D:                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199C995:                   Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199C99D:                   Call 0.Method_arg_38 (var_14C)
  loc_199C9B2:                 Else
  loc_199C9BA:                   var_1C8 = "Outlet_Title"
  loc_199C9D4:                   If (var_264 = Ucase(var_1C8)) Then
  loc_199C9E2:                     Proc_6_17_EAA2B0(var_1C8)
  loc_199C9FE:                     Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CA06:                     Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CA0E:                     Call 0.Method_arg_38 (var_E4)
  loc_199CA23:                   Else
  loc_199CA2B:                     var_1C8 = "Cst_No"
  loc_199CA45:                     If (var_264 = Ucase(var_1C8)) Then
  loc_199CA53:                       Proc_6_17_EAA2B0(var_1C8)
  loc_199CA6F:                       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CA77:                       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CA7F:                       Call 0.Method_arg_38 (var_114)
  loc_199CA94:                     Else
  loc_199CA9C:                       var_1C8 = "Lst_No"
  loc_199CAB6:                       If (var_264 = Ucase(var_1C8)) Then
  loc_199CAC4:                         Proc_6_17_EAA2B0(var_1C8)
  loc_199CAE0:                         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CAE8:                         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CAF0:                         Call 0.Method_arg_38 (var_110)
  loc_199CB05:                       Else
  loc_199CB0D:                         var_1C8 = "Title"
  loc_199CB27:                         If (var_264 = Ucase(var_1C8)) Then
  loc_199CB35:                           Proc_6_17_EAA2B0(var_1C8)
  loc_199CB51:                           Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CB59:                           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CB61:                           Call 0.Method_arg_38 (var_128)
  loc_199CB76:                         Else
  loc_199CB7E:                           var_1C8 = "Booking_No"
  loc_199CB98:                           If (var_264 = Ucase(var_1C8)) Then
  loc_199CBA6:                             Proc_6_17_EAA2B0(var_1C8)
  loc_199CBC2:                             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CBCA:                             Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CBD2:                             Call 0.Method_arg_38 (var_FC)
  loc_199CBE7:                           Else
  loc_199CBEF:                             var_1C8 = "AdvanceAmt"
  loc_199CC09:                             If (var_264 = Ucase(var_1C8)) Then
  loc_199CC17:                               Proc_6_17_EAA2B0(var_1C8)
  loc_199CC33:                               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CC3B:                               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CC43:                               Call 0.Method_arg_38 (var_160)
  loc_199CC58:                             Else
  loc_199CC60:                               var_1C8 = "Remark"
  loc_199CC7A:                               If (var_264 = Ucase(var_1C8)) Then
  loc_199CC88:                                 Proc_6_17_EAA2B0(var_1C8)
  loc_199CCA4:                                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CCAC:                                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CCB4:                                 Call 0.Method_arg_38 (var_134)
  loc_199CCC9:                               Else
  loc_199CCD1:                                 var_1C8 = "CustPhone"
  loc_199CCEB:                                 If (var_264 = Ucase(var_1C8)) Then
  loc_199CCF9:                                   Proc_6_17_EAA2B0(var_1C8)
  loc_199CD15:                                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CD1D:                                   Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CD25:                                   Call 0.Method_arg_38 (var_164)
  loc_199CD3A:                                 Else
  loc_199CD42:                                   var_1C8 = "CustName"
  loc_199CD5C:                                   If (var_264 = Ucase(var_1C8)) Then
  loc_199CD6A:                                     Proc_6_17_EAA2B0(var_1C8)
  loc_199CD86:                                     Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CD8E:                                     Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CD96:                                     Call 0.Method_arg_38 (var_168)
  loc_199CDAB:                                   Else
  loc_199CDB3:                                     var_1C8 = "CustAddr1"
  loc_199CDCD:                                     If (var_264 = Ucase(var_1C8)) Then
  loc_199CDDB:                                       Proc_6_17_EAA2B0(var_1C8)
  loc_199CDF7:                                       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CDFF:                                       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CE07:                                       Call 0.Method_arg_38 (var_16C)
  loc_199CE1C:                                     Else
  loc_199CE24:                                       var_1C8 = "CustAddr2"
  loc_199CE3E:                                       If (var_264 = Ucase(var_1C8)) Then
  loc_199CE4C:                                         Proc_6_17_EAA2B0(var_1C8)
  loc_199CE68:                                         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CE70:                                         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CE78:                                         Call 0.Method_arg_38 (var_170)
  loc_199CE8D:                                       Else
  loc_199CE95:                                         var_1C8 = "Booking_Date"
  loc_199CEAF:                                         If (var_264 = Ucase(var_1C8)) Then
  loc_199CEBD:                                           Proc_6_17_EAA2B0(var_1C8)
  loc_199CED9:                                           Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CEE1:                                           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CEE9:                                           Call 0.Method_arg_38 (var_F4)
  loc_199CEFE:                                         Else
  loc_199CF06:                                           var_1C8 = "Booking_Time"
  loc_199CF20:                                           If (var_264 = Ucase(var_1C8)) Then
  loc_199CF2E:                                             Proc_6_17_EAA2B0(var_1C8)
  loc_199CF4A:                                             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CF52:                                             Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CF5A:                                             Call 0.Method_arg_38 (var_F8)
  loc_199CF6F:                                           Else
  loc_199CF77:                                             var_1C8 = "Delivery_Date"
  loc_199CF91:                                             If (var_264 = Ucase(var_1C8)) Then
  loc_199CF9F:                                               Proc_6_17_EAA2B0(var_1C8)
  loc_199CFBB:                                               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199CFC3:                                               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199CFCB:                                               Call 0.Method_arg_38 (var_118)
  loc_199CFE0:                                             Else
  loc_199CFE8:                                               var_1C8 = "Delivery_Time"
  loc_199D002:                                               If (var_264 = Ucase(var_1C8)) Then
  loc_199D010:                                                 Proc_6_17_EAA2B0(var_1C8)
  loc_199D02C:                                                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D034:                                                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D03C:                                                 Call 0.Method_arg_38 (var_11C)
  loc_199D051:                                               Else
  loc_199D059:                                                 var_1C8 = "TotNonTaxable"
  loc_199D062:                                                 var_1F0 = Ucase(var_1C8)
  loc_199D073:                                                 If (var_264 = var_1F0) Then
  loc_199D081:                                                   Proc_6_47_EF59D0(var_1C8)
  loc_199D08C:                                                   Proc_6_17_EAA2B0(var_1F0, var_1C8)
  loc_199D0A8:                                                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D0B0:                                                   Call 0.Method_arg_20 (CStr(var_1F0))
  loc_199D0B8:                                                   Call 0.Method_arg_38 (var_178)
  loc_199D0D1:                                                 Else
  loc_199D0D9:                                                   var_1C8 = "TotTaxable"
  loc_199D0E2:                                                   var_1F0 = Ucase(var_1C8)
  loc_199D0F3:                                                   If (var_264 = var_1F0) Then
  loc_199D101:                                                     Proc_6_47_EF59D0(var_1C8)
  loc_199D10C:                                                     Proc_6_17_EAA2B0(var_1F0, var_1C8)
  loc_199D128:                                                     Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D130:                                                     Call 0.Method_arg_20 (CStr(var_1F0))
  loc_199D138:                                                     Call 0.Method_arg_38 (var_180)
  loc_199D151:                                                   Else
  loc_199D159:                                                     var_1C8 = "User_Name"
  loc_199D173:                                                     If (var_264 = Ucase(var_1C8)) Then
  loc_199D181:                                                       Proc_6_17_EAA2B0(var_1C8)
  loc_199D19D:                                                       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D1A5:                                                       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D1AD:                                                       Call 0.Method_arg_38 (var_10C)
  loc_199D1C2:                                                     Else
  loc_199D1CA:                                                       var_1C8 = "Header1"
  loc_199D1E4:                                                       If (var_264 = Ucase(var_1C8)) Then
  loc_199D1F2:                                                         Proc_6_17_EAA2B0(var_1C8)
  loc_199D20E:                                                         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D216:                                                         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D21E:                                                         Call 0.Method_arg_38 (var_150)
  loc_199D233:                                                       Else
  loc_199D23B:                                                         var_1C8 = "Header2"
  loc_199D255:                                                         If (var_264 = Ucase(var_1C8)) Then
  loc_199D263:                                                           Proc_6_17_EAA2B0(var_1C8)
  loc_199D27F:                                                           Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D287:                                                           Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D28F:                                                           Call 0.Method_arg_38 (var_154)
  loc_199D2A4:                                                         Else
  loc_199D2AC:                                                           var_1C8 = "Header3"
  loc_199D2C6:                                                           If (var_264 = Ucase(var_1C8)) Then
  loc_199D2D4:                                                             Proc_6_17_EAA2B0(var_1C8)
  loc_199D2F0:                                                             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D2F8:                                                             Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D300:                                                             Call 0.Method_arg_38 (var_158)
  loc_199D315:                                                           Else
  loc_199D31D:                                                             var_1C8 = "Header4"
  loc_199D337:                                                             If (var_264 = Ucase(var_1C8)) Then
  loc_199D345:                                                               Proc_6_17_EAA2B0(var_1C8)
  loc_199D361:                                                               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D369:                                                               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D371:                                                               Call 0.Method_arg_38 (var_15C)
  loc_199D386:                                                             Else
  loc_199D38E:                                                               var_1C8 = "Slogan1"
  loc_199D3A8:                                                               If (var_264 = Ucase(var_1C8)) Then
  loc_199D3B6:                                                                 Proc_6_17_EAA2B0(var_1C8)
  loc_199D3D2:                                                                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D3DA:                                                                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D3E2:                                                                 Call 0.Method_arg_38 (var_12C)
  loc_199D3F7:                                                               Else
  loc_199D3FF:                                                                 var_1C8 = "Slogan2"
  loc_199D419:                                                                 If (var_264 = Ucase(var_1C8)) Then
  loc_199D427:                                                                   Proc_6_17_EAA2B0(var_1C8)
  loc_199D443:                                                                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D44B:                                                                   Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D453:                                                                   Call 0.Method_arg_38 (var_130)
  loc_199D468:                                                                 Else
  loc_199D470:                                                                   var_1C8 = "OrderBookCom1"
  loc_199D48A:                                                                   If (var_264 = Ucase(var_1C8)) Then
  loc_199D498:                                                                     Proc_6_17_EAA2B0(var_1C8)
  loc_199D4B4:                                                                     Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D4BC:                                                                     Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D4C4:                                                                     Call 0.Method_arg_38 (var_138)
  loc_199D4D9:                                                                   Else
  loc_199D4E1:                                                                     var_1C8 = "OrderBookCom2"
  loc_199D4FB:                                                                     If (var_264 = Ucase(var_1C8)) Then
  loc_199D509:                                                                       Proc_6_17_EAA2B0(var_1C8)
  loc_199D525:                                                                       Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D52D:                                                                       Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D535:                                                                       Call 0.Method_arg_38 (var_13C)
  loc_199D54A:                                                                     Else
  loc_199D552:                                                                       var_1C8 = "OrderBookComment"
  loc_199D56C:                                                                       If (var_264 = Ucase(var_1C8)) Then
  loc_199D57A:                                                                         Proc_6_17_EAA2B0(var_1C8)
  loc_199D596:                                                                         Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D59E:                                                                         Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D5A6:                                                                         Call 0.Method_arg_38 (var_140)
  loc_199D5BB:                                                                       Else
  loc_199D5DD:                                                                         If (var_264 = Ucase("BookingSlipFooter1")) Then
  loc_199D601:                                                                           Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199D609:                                                                           Call 0.Method_arg_20 (var_1D0)
  loc_199D611:                                                                           Call 0.Method_arg_38 ("'" & var_198 & "'")
  loc_199D627:                                                                         Else
  loc_199D649:                                                                           If (var_264 = Ucase("BookingSlipFooter2")) Then
  loc_199D653:                                                                             var_1A4 = "'" & var_19C
  loc_199D66D:                                                                             Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199D675:                                                                             Call 0.Method_arg_20 (var_1D0)
  loc_199D67D:                                                                             Call 0.Method_arg_38 (var_1A4 & "'")
  loc_199D690:                                                                           End If
  loc_199D690:                                                                         End If
  loc_199D690:                                                                       End If
  loc_199D690:                                                                     End If
  loc_199D690:                                                                   End If
  loc_199D690:                                                                 End If
  loc_199D690:                                                               End If
  loc_199D690:                                                             End If
  loc_199D690:                                                           End If
  loc_199D690:                                                         End If
  loc_199D690:                                                       End If
  loc_199D690:                                                     End If
  loc_199D690:                                                   End If
  loc_199D690:                                                 End If
  loc_199D690:                                               End If
  loc_199D690:                                             End If
  loc_199D690:                                           End If
  loc_199D690:                                         End If
  loc_199D690:                                       End If
  loc_199D690:                                     End If
  loc_199D690:                                   End If
  loc_199D690:                                 End If
  loc_199D690:                               End If
  loc_199D690:                             End If
  loc_199D690:                           End If
  loc_199D690:                         End If
  loc_199D690:                       End If
  loc_199D690:                     End If
  loc_199D690:                   End If
  loc_199D690:                 End If
  loc_199D690:               End If
  loc_199D690:             End If
  loc_199D690:           End If
  loc_199D690:         End If
  loc_199D690:       End If
  loc_199D690:     End If
  loc_199D693:   Next var_254 'Integer
  loc_199D69E:   var_224 = var_108.RecordCount
  loc_199D6AC:   If (var_224 > 0) Then
  loc_199D6B2:     var_108.MoveFirst
  loc_199D6B7:     ' Referenced from: 199DE71
  loc_199D6C6:     If Not(var_108.EOF) Then
  loc_199D71D:       If (Ucase(Trim(CVar(var_108.Fields.Item("SunCode")))) = CVar(MemVar_1F92078 & "NET")) Then
  loc_199D750:         var_1F0 = StrConv(CVar(var_108.Fields.Item("DispName")), 3, 0)
  loc_199D775:         var_1CC = var_108.Fields
  loc_199D77D:         var_1D0 = var_1CC.Item("Amount")
  loc_199D785:         var_1C8 = CVar(var_1D0) 'Address
  loc_199D78C:         Proc_6_39_E7C810(var_1F0)
  loc_199D7B5:         var_18C = CStr(Format(var_1F0, "0.00"))
  loc_199D7D7:         Call 0.Method_arg_90 (var_1CC, var_224, var_B2, 1)
  loc_199D7DF:         Call 0.Method_arg_24 (1, 1)
  loc_199D7EB:         For var_268 =  To CInt(var_224): var_1C8 = var_268 'Integer
  loc_199D804:           Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199D80C:           Call 0.Method_arg_20 (var_1D0)
  loc_199D814:           Call 0.Method_arg_30 (var_1A4)
  loc_199D82A:           var_278 = Ucase(CVar(var_1A4)) 'Variant
  loc_199D840:           var_1C8 = "lblNetAmount"
  loc_199D85A:           If (var_278 = Ucase(var_1C8)) Then
  loc_199D868:             Proc_6_17_EAA2B0(var_1C8)
  loc_199D884:             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D88C:             Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199D894:             Call 0.Method_arg_38 (CStr(Ucase(var_1C8)))
  loc_199D8A9:           Else
  loc_199D8B1:             var_1C8 = "NetAmount"
  loc_199D8CB:             If (var_278 = Ucase(var_1C8)) Then
  loc_199D8D9:               Proc_6_17_EAA2B0(var_1C8)
  loc_199D8E1:               var_1A4 = CStr(var_1C8)
  loc_199D8F5:               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199D8FD:               Call 0.Method_arg_20 (var_1A4)
  loc_199D905:               Call 0.Method_arg_38 (var_18C)
  loc_199D917:             End If
  loc_199D917:           End If
  loc_199D91A:         Next var_268 'Integer
  loc_199D922:       Else
  loc_199D976:         If (Ucase(Trim(CVar(var_108.Fields.Item("SunCode")))) = CVar(MemVar_1F92078 & "TOT")) Then
  loc_199D9A9:           var_1F0 = StrConv(CVar(var_108.Fields.Item("DispName")), 3, 0)
  loc_199D9CE:           var_1CC = var_108.Fields
  loc_199D9D6:           var_1D0 = var_1CC.Item("Amount")
  loc_199D9DE:           var_1C8 = CVar(var_1D0) 'Address
  loc_199D9E5:           Proc_6_39_E7C810(var_1F0)
  loc_199DA0E:           var_18C = CStr(Format(var_1F0, "0.00"))
  loc_199DA30:           Call 0.Method_arg_90 (var_1CC, var_224, var_B2, 1)
  loc_199DA38:           Call 0.Method_arg_24 (1, 1)
  loc_199DA44:           For var_27C =  To CInt(var_224):   var_1C8 = var_27C 'Integer
  loc_199DA5D:             Call 0.Method_arg_90 (var_1CC, CLng(var_B2))
  loc_199DA65:             Call 0.Method_arg_20 (var_1D0)
  loc_199DA6D:             Call 0.Method_arg_30 (var_1A4)
  loc_199DA83:             var_28C = Ucase(CVar(var_1A4)) 'Variant
  loc_199DA99:             var_1C8 = "lblTotal"
  loc_199DAB3:             If (var_28C = Ucase(var_1C8)) Then
  loc_199DAC1:               Proc_6_17_EAA2B0(var_1C8)
  loc_199DADD:               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199DAE5:               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199DAED:               Call 0.Method_arg_38 (CStr(Ucase(var_1C8)))
  loc_199DB02:             Else
  loc_199DB0A:               var_1C8 = "Total"
  loc_199DB24:               If (var_28C = Ucase(var_1C8)) Then
  loc_199DB32:                 Proc_6_17_EAA2B0(var_1C8)
  loc_199DB3A:                 var_1A4 = CStr(var_1C8)
  loc_199DB4E:                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199DB56:                 Call 0.Method_arg_20 (var_1A4)
  loc_199DB5E:                 Call 0.Method_arg_38 (var_18C)
  loc_199DB70:               End If
  loc_199DB70:             End If
  loc_199DB73:           Next var_27C 'Integer
  loc_199DB7B:         Else
  loc_199DBAB:           var_1F0 = StrConv(CVar(var_108.Fields.Item("DispName")), 3, 0)
  loc_199DBE0:           var_1C8 = CVar(var_108.Fields.Item("SValue")) 'Address
  loc_199DBE7:           Proc_6_39_E7C810(var_1F0)
  loc_199DC10:           var_188 = CStr(Format(var_1F0, "0.00"))
  loc_199DC30:           var_1CC = var_108.Fields
  loc_199DC38:           var_1D0 = var_1CC.Item("Amount")
  loc_199DC40:           var_1C8 = CVar(var_1D0) 'Address
  loc_199DC47:           Proc_6_39_E7C810(var_1F0, var_1C8, 1)
  loc_199DC70:           var_18C = CStr(Format(var_1F0, "0.00"))
  loc_199DC87:           var_B4 = (var_B4 + 1)
  loc_199DC9B:           Call 0.Method_arg_90 (var_1CC, var_224, var_B2, 1, var_B4)
  loc_199DCA3:           Call 0.Method_arg_24 (1, 1)
  loc_199DCAF:           For var_290 = var_1C8 To CInt(var_224):     1 = var_290 'Integer
  loc_199DCC8:             Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199DCD0:             Call 0.Method_arg_20 (var_1A4)
  loc_199DCD8:             Call 0.Method_arg_30 (var_1C8)
  loc_199DCEE:             var_2A0 = Ucase(CVar(var_1A4)) 'Variant
  loc_199DD0B:             var_1C8 = CVar("lblSunName" & CStr(var_B4)) 'String
  loc_199DD25:             If (var_2A0 = Ucase(var_1C8)) Then
  loc_199DD33:               Proc_6_17_EAA2B0(var_1C8)
  loc_199DD4F:               Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199DD57:               Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199DD5F:               Call 0.Method_arg_38 (CStr(Ucase(var_1C8)))
  loc_199DD74:             Else
  loc_199DD83:               var_1C8 = CVar("SunPer" & CStr(var_B4)) 'String
  loc_199DD9D:               If (var_2A0 = Ucase(var_1C8)) Then
  loc_199DDAB:                 Proc_6_17_EAA2B0(var_1C8)
  loc_199DDC7:                 Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199DDCF:                 Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199DDD7:                 Call 0.Method_arg_38 (var_188)
  loc_199DDEC:               Else
  loc_199DDFB:                 var_1C8 = CVar("SunAmt" & CStr(var_B4)) 'String
  loc_199DE01:                 var_1F0 = Ucase(var_1C8)
  loc_199DE15:                 If (var_2A0 = var_1F0) Then
  loc_199DE23:                   Proc_6_17_EAA2B0(var_1C8)
  loc_199DE3F:                   Call 0.Method_arg_90 (var_1CC, CLng(var_B2), var_1D0)
  loc_199DE47:                   Call 0.Method_arg_20 (CStr(var_1C8))
  loc_199DE4F:                   Call 0.Method_arg_38 (var_18C)
  loc_199DE61:                 End If
  loc_199DE61:               End If
  loc_199DE61:             End If
  loc_199DE64:           Next var_290 'Integer
  loc_199DE69:         End If
  loc_199DE69:       End If
  loc_199DE6C:       var_108.MoveNext
  loc_199DE71:       GoTo loc_199D6B7
  loc_199DE74:     End If
  loc_199DE74:   End If
  loc_199DE93:   var_1C8 = CVar(var_100.Fields.Item("NoOfKot")) 'Address
  loc_199DE9A:   Proc_6_39_E7C810(var_1F0)
  loc_199DEB4:   If (var_1F0 <= 0) Then
  loc_199DEBC:     Set var_1D0 = Nothing
  loc_199DED8:     Set var_1CC = MemVar_1F921E4 
  loc_199DEE4:     Proc_6_99_1483714(var_1CC, 0, vbNullString)
  loc_199DEEF:     MemVar_1F921E4 = var_1CC
  loc_199DF00:   Else
  loc_199DF26:     Proc_6_39_E7C810(var_1F0, CVar(var_100.Fields.Item("NoOfKot")), &HFF)
  loc_199DF40:     If (var_1F0 = 1) Then
  loc_199DF60:       Call 0.Method_Me8 (False, 1, var_200, var_2B4)
  loc_199DF68:     Else
  loc_199DF6E:       If (var_18E = 0) Then
  loc_199DF8E:         Call 0.Method_Me8 (False, 1, var_200, var_2B4)
  loc_199DF95:         var_18E = &HFF
  loc_199DF98:         GoTo loc_199B2F5
  loc_199DF9E:       Else
  loc_199DFC4:         Proc_6_39_E7C810(var_1F0, CVar(var_100.Fields.Item("NoOfKot")), var_18E, var_2C4)
  loc_199DFDD:         var_210 = (var_1F0 - 1)
  loc_199DFED:         Call 0.Method_Me8 (False, "0.00", var_2B4, var_2C4)
  loc_199DFFC:       End If
  loc_199DFFC:     End If
  loc_199DFFC:   End If
  loc_199E001:   MemVar_1F921E4 = Nothing
  loc_199E008:   var_BC.MoveNext
  loc_199E00D:   GoTo loc_199B467
  loc_199E010: End If
  loc_199E015: Set var_BC = Nothing
  loc_199E01D: Set var_C0 = Nothing
  loc_199E025: Set var_108 = Nothing
  loc_199E02D: Set var_C4 = Nothing
  loc_199E035: Set var_100 = Nothing
  loc_199E038: Exit Sub
  loc_199E039: ' Referenced from: 199B1B0
  loc_199E039: Proc_6_60_E62BC4(var_2D4, var_2C4)
  loc_199E03E: Exit Sub
End Sub
