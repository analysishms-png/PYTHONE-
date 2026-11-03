VERSION 5.00
Begin VB.Form hAdvanceDepDialog
  Caption = "Settlement"
  BackColor = &HFFC0FF&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MinButton = 0   'False
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 7785
  ClientHeight = 9240
  LockControls = -1  'True
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrTxnNo
    Left = 495
    Top = 3405
    Width = 4950
    Height = 315
    Visible = 0   'False
    TabIndex = 68
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      TabIndex = 16
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
    Begin Label LblName
      Caption = "Txn. No."
      Index = 0
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 795
      Height = 240
      TabIndex = 69
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
  Begin BtnEnh BtnEnh5
    Left = 930
    Top = 7275
    Width = 4875
    Height = 375
    TabIndex = 67
  End
  Begin Frame FrMem
    Left = 7845
    Top = 1935
    Width = 4920
    Height = 300
    Visible = 0   'False
    TabIndex = 52
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 285
      TabIndex = 8
      BorderStyle = 0 'None
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Member"
      Index = 28
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 780
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
  End
  Begin Frame FrRem
    Left = 480
    Top = 3090
    Width = 4965
    Height = 315
    Visible = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      TabIndex = 17
      BorderStyle = 0 'None
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
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 885
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
  End
  Begin Frame FrChqDet
    Left = 7845
    Top = 2535
    Width = 2595
    Height = 615
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 285
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
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 315
      Width = 1440
      Height = 285
      TabIndex = 15
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
    Begin Label LblName
      Caption = "Cheque No."
      Index = 15
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 1110
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &HFF0000&
      Left = -15
      Top = 315
      Width = 1050
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
  End
  Begin Frame FrSendRoom
    Left = 7845
    Top = 1335
    Width = 3150
    Height = 300
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 285
      TabIndex = 6
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
    Begin Label LblName
      Caption = "Room No.#"
      Index = 26
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
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
  End
  Begin Frame FrEmp
    Left = 7845
    Top = 2235
    Width = 4935
    Height = 300
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 285
      TabIndex = 13
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
    Begin Label LblName
      Caption = "Staff"
      Index = 22
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 435
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
  End
  Begin Frame FrComp
    Left = 7845
    Top = 1635
    Width = 4920
    Height = 300
    Visible = 0   'False
    TabIndex = 38
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 285
      TabIndex = 7
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
    Begin Label LblName
      Caption = "Company"
      Index = 27
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 900
      Height = 240
      TabIndex = 39
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
  Begin Frame FrCCDet
    Left = 480
    Top = 2145
    Width = 4095
    Height = 945
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3315
      Top = 630
      Width = 705
      Height = 285
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
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 2415
      Height = 285
      TabIndex = 9
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
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 315
      Width = 2910
      Height = 285
      TabIndex = 10
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 630
      Width = 1275
      Height = 285
      TabIndex = 11
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
    Begin Label LblName
      Caption = "Batch No."
      Index = 1
      ForeColor = &HFF0000&
      Left = 2415
      Top = 630
      Width = 915
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
    Begin Label LblName
      Caption = "C.C. No."
      Index = 18
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 765
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
    Begin Label LblName
      Caption = "Holder"
      Index = 19
      ForeColor = &HFF0000&
      Left = -15
      Top = 315
      Width = 630
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
    Begin Label LblName
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &HFF0000&
      Left = -15
      Top = 630
      Width = 675
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
  End
  Begin DataGrid DGCompany
    Left = 8250
    Top = 8010
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGTable
    Left = 9300
    Top = 7530
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin DataGrid DGRoom
    Left = 10695
    Top = 6915
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 32
  End
  Begin DataGrid DGPayType
    Left = 10380
    Top = 6570
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGEmp
    Left = 10935
    Top = 6150
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin Frame FrRest
    Left = 240
    Top = 1170
    Width = 5220
    Height = 975
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3765
      Top = 660
      Width = 1395
      Height = 285
      TabIndex = 5
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 660
      Width = 1440
      Height = 285
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 345
      Width = 3810
      Height = 285
      TabIndex = 3
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
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 30
      Width = 3810
      Height = 285
      TabIndex = 2
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
    Begin Label LblName
      Caption = "Tip"
      Index = 21
      ForeColor = &HFF0000&
      Left = 3300
      Top = 675
      Width = 300
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
    Begin Label LblName
      Caption = "Amount"
      Index = 14
      ForeColor = &HFF0000&
      Left = 270
      Top = 675
      Width = 735
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
    Begin Label LblName
      Caption = "Room/T"
      Index = 12
      ForeColor = &HFF0000&
      Left = 270
      Top = 375
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
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &HFF0000&
      Left = 300
      Top = 30
      Width = 465
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
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 10380
    Top = 4485
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4335
    Top = 660
    Width = 1155
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1590
    Top = 660
    Width = 855
    Height = 285
    TabIndex = 0
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
    Index = 0
    BackColor = &H80000004&
    Left = 6570
    Top = 45
    Width = 2145
    Height = 255
    Visible = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 9360
    Top = 4215
    Width = 6780
    Height = 1560
    TabIndex = 24
  End
  Begin MSFlexGrid FGPoint
    Left = 13350
    Top = 2250
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGMember
    Left = 6900
    Top = 6615
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 51
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8790
    Width = 7785
    Height = 450
    TabIndex = 54
  End
  Begin BtnEnh BtnEnh3
    Left = 3510
    Top = 5190
    Width = 1380
    Height = 300
    TabIndex = 60
  End
  Begin BtnEnh BtnEnh1
    Left = 960
    Top = 5190
    Width = 1305
    Height = 300
    TabIndex = 61
  End
  Begin BtnEnh BtnEnh2
    Left = 2235
    Top = 5190
    Width = 1290
    Height = 300
    TabIndex = 62
  End
  Begin BtnEnh BtnEnh4
    Left = 4860
    Top = 5190
    Width = 1275
    Height = 300
    TabIndex = 63
  End
  Begin BtnEnh cmdDelete
    Left = 2955
    Top = 6120
    Width = 1140
    Height = 720
    TabIndex = 64
  End
  Begin BtnEnh CmdPrint
    Left = 1620
    Top = 6120
    Width = 1140
    Height = 720
    TabIndex = 65
  End
  Begin BtnEnh HeadExit
    Left = 4350
    Top = 6120
    Width = 1140
    Height = 720
    TabIndex = 66
  End
  Begin Shape Shape4
    BorderColor = &HFF0000&
    Left = 930
    Top = 5160
    Width = 5235
    Height = 630
    BorderStyle = 5 'Dash-Dot-Dot
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Label LTxt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 945
    Top = 5475
    Width = 1275
    Height = 285
    TabIndex = 59
    BorderStyle = 1 'Fixed Single
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
  Begin Label LTxt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4845
    Top = 5490
    Width = 1275
    Height = 285
    TabIndex = 58
    BorderStyle = 1 'Fixed Single
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
  Begin Label LTxt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2220
    Top = 5475
    Width = 1275
    Height = 285
    TabIndex = 57
    BorderStyle = 1 'Fixed Single
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
  Begin Label LTxt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3495
    Top = 5490
    Width = 1335
    Height = 285
    TabIndex = 56
    BorderStyle = 1 'Fixed Single
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
    Left = -15
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 55
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
  Begin Shape Shape5
    BorderColor = &H400040&
    Left = 14010
    Top = 7965
    Width = 375
    Height = 195
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Shape Shape1
    Index = 1
    BackColor = &H8000000F&
    BorderColor = &H400040&
    Left = 14430
    Top = 7620
    Width = 285
    Height = 180
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &H8000000F&
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 13095
    Top = 8430
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
  Begin Label Lbl
    Caption = "Rect. Date"
    Index = 37
    ForeColor = &H80&
    Left = 3315
    Top = 660
    Width = 975
    Height = 240
    TabIndex = 21
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
    Caption = "Rect. No."
    Index = 36
    ForeColor = &H80&
    Left = 630
    Top = 660
    Width = 855
    Height = 240
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
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "hAdvanceDepDialog"

Private global_112 As Long
Private global_136 As Double
Private global_104 As Integer
Private global_164 As Integer

Private Sub DGPayType_UnknownEvent_9 'F652DC
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F651BF: Me.DGPayType.Visible = False
  loc_F651D9: If (global_112 = 6) Then
  loc_F651F3:   If (Me.RecordCount > 0) Then
  loc_F65232:     Set var_B8 = Me.Txt
  loc_F65238:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_BC)
  loc_F65240:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F65273:     var_B4 = Me.Fields.Item("Code")
  loc_F65292:     Set var_B8 = Me.Txt
  loc_F65298:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_BC)
  loc_F652A0:     var_BC.Tag = CStr(var_B4.Value)
  loc_F652B6:   End If
  loc_F652C1:   Set var_A8 = Me.Txt
  loc_F652C7:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B4)
  loc_F652CF:   var_B4.SetFocus
  loc_F652DB: End If
  loc_F652DB: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA1C2C
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  loc_EA1BAC: Set var_88 = Me.DGPayType
  loc_EA1BD6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1BDE: Set var_BC = Me.DGPayType
  loc_EA1C1A: Proc_6_138_106D6F8(Me.DGPayType, global_64, CInt(3), Me.FGPoint)
  loc_EA1C28: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15D7790
  'Data Table: 55E2AC
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_CC As String
  Dim var_108 As Variant
  Dim var_DC As Variant
  Dim var_88 As Frame
  Dim var_94 As String
  Dim var_124 As Double
  loc_15D6436: Set var_88 = Me.Txt
  loc_15D643C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_15D644A: Proc_6_74_E226B0(var_8C)
  loc_15D6465: Set var_88 = Me.Txt
  loc_15D646B: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6473: var_8C.SelStart = 0
  loc_15D648C: Set var_88 = Me.Txt
  loc_15D6492: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D64AD: Set var_90 = Me.Txt
  loc_15D64B3: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D64BB: var_98.SelLength = Len(var_8C.Text)
  loc_15D64CE: Call Proc_137_78_FB6F3C(var_8C)
  loc_15D64D6: var_9A = Index
  loc_15D64E1: If (var_9A = CInt(&H12)) Then
  loc_15D64F1:   Set var_88 = Me.Txt
  loc_15D64F7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D652D:   var_98 = Me.Fields.Item("PayType")
  loc_15D653D:   var_CC = "Cash"
  loc_15D6562:   If CBool((var_8C.Text = vbNullString) And (var_98.Value = var_CC)) Then
  loc_15D6572:     Set var_88 = Me.Txt
  loc_15D6578:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6580:     var_8C.Text = "CASH PAYMENT RECD"
  loc_15D659B:     Set var_88 = Me.Txt
  loc_15D65A1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D65A9:     var_8C.SelStart = 0
  loc_15D65C2:     Set var_88 = Me.Txt
  loc_15D65C8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D65D0:     var_94 = var_8C.Text
  loc_15D65E3:     Set var_90 = Me.Txt
  loc_15D65E9:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D65F1:     var_98.SelLength = Len(var_94)
  loc_15D6604:   End If
  loc_15D6607: Else
  loc_15D660F:   If (var_9A = CInt(3)) Then
  loc_15D6632:     Set var_98 = Me.Txt
  loc_15D6638:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_108)
  loc_15D6653:     Set var_88 = Me.Txt
  loc_15D6659:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15D6671:     var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D6680:     Me.DGPayType.Top = "PayType"
  loc_15D66B4:     Set var_88 = Me.Txt
  loc_15D66BA:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15D66CE:     var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D66DD:     Me.DGPayType.Left = "PayType"
  loc_15D6704:     If (Me.RecordCount > 0) Then
  loc_15D6712:       Set var_8C = Me.FGPoint
  loc_15D672A:       Proc_6_137_1193554(Me.DGPayType, global_64, Index)
  loc_15D6738:     End If
  loc_15D6786:     Set var_88 = Me.Txt
  loc_15D678C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D6794:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D67AC:     If (var_8C Or (var_94 = vbNullString)) Then
  loc_15D67AF:       Exit Sub
  loc_15D67B0:     End If
  loc_15D67BD:     Set var_88 = Me.Txt
  loc_15D67C3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D67CB:     var_94 = var_8C.Text
  loc_15D67DD:     var_AC = "Name"
  loc_15D6818:     If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_15D6821:       Me.MoveFirst
  loc_15D6844:       Set var_88 = Me.Txt
  loc_15D684A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_15D6852:       0 = var_8C.Text
  loc_15D686B:       Me.Find 1 & var_94 & "'", var_AC, var_9A
  loc_15D6880:     End If
  loc_15D6883:   Else
  loc_15D688B:     If (var_9A = CInt(&H10)) Then
  loc_15D68AE:       Set var_98 = Me.Txt
  loc_15D68B4:       Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_108)
  loc_15D68CF:       Set var_88 = Me.Txt
  loc_15D68D5:       Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15D68ED:       var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D68FC:       Me.DGEmp.Top = var_AC
  loc_15D6930:       Set var_88 = Me.Txt
  loc_15D6936:       Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15D694A:       var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D6959:       Me.DGEmp.Left = var_AC
  loc_15D6980:       If (Me.RecordCount > 0) Then
  loc_15D698E:         Set var_8C = Me.FGPoint
  loc_15D69A6:         Proc_6_137_1193554(Me.DGEmp, global_68)
  loc_15D69B4:       End If
  loc_15D6A02:       Set var_88 = Me.Txt
  loc_15D6A08:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D6A10:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D6A28:       If (Index Or (var_94 = vbNullString)) Then
  loc_15D6A2B:         Exit Sub
  loc_15D6A2C:       End If
  loc_15D6A39:       Set var_88 = Me.Txt
  loc_15D6A3F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6A47:       var_94 = var_8C.Text
  loc_15D6A59:       var_AC = "Name"
  loc_15D6A94:       If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_15D6A9D:         Me.MoveFirst
  loc_15D6AC0:         Set var_88 = Me.Txt
  loc_15D6AC6:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_15D6ACE:         0 = var_8C.Text
  loc_15D6AE7:         Me.Find 1 & var_94 & "'", var_AC, var_8C
  loc_15D6AFC:       End If
  loc_15D6AFF:     Else
  loc_15D6B07:       If (var_9A = CInt(4)) Then
  loc_15D6B2A:         Set var_98 = Me.Txt
  loc_15D6B30:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_108)
  loc_15D6B4B:         Set var_88 = Me.Txt
  loc_15D6B51:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15D6B69:         var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D6B78:         Me.DGTable.Top = var_AC
  loc_15D6BAC:         Set var_88 = Me.Txt
  loc_15D6BB2:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15D6BC6:         var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D6BD5:         Me.DGTable.Left = var_AC
  loc_15D6BFC:         If (Me.RecordCount > 0) Then
  loc_15D6C0A:           Set var_8C = Me.FGPoint
  loc_15D6C22:           Proc_6_137_1193554(Me.DGTable, global_72)
  loc_15D6C30:         End If
  loc_15D6C7E:         Set var_88 = Me.Txt
  loc_15D6C84:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D6C8C:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D6CA4:         If (Index Or (var_94 = vbNullString)) Then
  loc_15D6CA7:           Exit Sub
  loc_15D6CA8:         End If
  loc_15D6CB5:         Set var_88 = Me.Txt
  loc_15D6CBB:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6CC3:         var_94 = var_8C.Text
  loc_15D6CCB:         var_DC = CVar(var_94) 'String
  loc_15D6D10:         If CBool(var_DC <> Me.Fields.Item("Name").Value) Then
  loc_15D6D19:           Me.MoveFirst
  loc_15D6D3E:           Set var_88 = Me.Txt
  loc_15D6D44:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D6D4C:           0 = var_8C.Text
  loc_15D6D5A:           Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_15D6D70:           Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D6D88:         End If
  loc_15D6D8B:       Else
  loc_15D6D93:         If (var_9A = CInt(&HD)) Then
  loc_15D6DB6:           Set var_98 = Me.Txt
  loc_15D6DBC:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_108)
  loc_15D6DD7:           Set var_88 = Me.Txt
  loc_15D6DDD:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_15D6DF5:           var_AC = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_108.Height)) 'Single
  loc_15D6E04:           Me.DGRoom.Top = "Name ="
  loc_15D6E38:           Set var_88 = Me.Txt
  loc_15D6E3E:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_15D6E52:           var_AC = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_15D6E61:           Me.DGRoom.Left = "Name ="
  loc_15D6E88:           If (Me.RecordCount > 0) Then
  loc_15D6E96:             Set var_8C = Me.FGPoint
  loc_15D6EAE:             Proc_6_137_1193554(Me.DGRoom, global_76)
  loc_15D6EBC:           End If
  loc_15D6F0A:           Set var_88 = Me.Txt
  loc_15D6F10:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D6F18:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D6F30:           If (Index Or (var_94 = vbNullString)) Then
  loc_15D6F33:             Exit Sub
  loc_15D6F34:           End If
  loc_15D6F41:           Set var_88 = Me.Txt
  loc_15D6F47:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6F4F:           var_94 = var_8C.Text
  loc_15D6F57:           var_DC = CVar(var_94) 'String
  loc_15D6F70:           var_90 = Me.Fields
  loc_15D6F9C:           If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_15D6FA5:             Me.MoveFirst
  loc_15D6FCA:             Set var_88 = Me.Txt
  loc_15D6FD0:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D6FD8:             0 = var_8C.Text
  loc_15D6FE6:             Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_15D6FFC:             Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D7014:           End If
  loc_15D7017:         Else
  loc_15D701F:           If (var_9A = CInt(&HE)) Then
  loc_15D7030:             Set var_8C = Me.Txt
  loc_15D7036:             Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_90)
  loc_15D705C:             var_AC = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_15D706B:             Me.DGCompany.Top = "Name ="
  loc_15D70AD:             Set var_88 = Me.Txt
  loc_15D70B3:             Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_15D70CB:             var_AC = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_15D70DA:             Me.DGCompany.Left = "Name ="
  loc_15D7103:             If (Me.RecordCount > 0) Then
  loc_15D7111:               Set var_8C = Me.FGPoint
  loc_15D7129:               Proc_6_137_1193554(Me.DGCompany, global_80)
  loc_15D7137:             End If
  loc_15D7185:             Set var_88 = Me.Txt
  loc_15D718B:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D7193:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D71AB:             If (Index Or (var_94 = vbNullString)) Then
  loc_15D71AE:               Exit Sub
  loc_15D71AF:             End If
  loc_15D71BC:             Set var_88 = Me.Txt
  loc_15D71C2:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D71CA:             var_94 = var_8C.Text
  loc_15D71D2:             var_DC = CVar(var_94) 'String
  loc_15D71EB:             var_90 = Me.Fields
  loc_15D7217:             If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_15D7220:               Me.MoveFirst
  loc_15D7245:               Set var_88 = Me.Txt
  loc_15D724B:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D7253:               0 = var_8C.Text
  loc_15D7261:               Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_15D7277:               Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D728F:             End If
  loc_15D7292:           Else
  loc_15D729A:             If (var_9A = CInt(&HF)) Then
  loc_15D72AB:               Set var_8C = Me.Txt
  loc_15D72B1:               Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_90)
  loc_15D72D7:               var_AC = CVar((Me.FrMem.Top + var_90.Height)) 'Single
  loc_15D72E6:               Me.DGMember.Top = "Name ="
  loc_15D7328:               Set var_88 = Me.Txt
  loc_15D732E:               Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15D734B:               var_AC = CVar((((var_8C.Left + Me.FrRest.Left) + Me.FrMem.Left) - CDbl(1260))) 'Single
  loc_15D735A:               Me.DGMember.Left = "Name ="
  loc_15D7383:               If (Me.RecordCount > 0) Then
  loc_15D7391:                 Set var_8C = Me.FGPoint
  loc_15D73A9:                 Proc_6_137_1193554(Me.DGMember, global_84)
  loc_15D73B7:               End If
  loc_15D7405:               Set var_88 = Me.Txt
  loc_15D740B:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D7413:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D742B:               If (Index Or (var_94 = vbNullString)) Then
  loc_15D742E:                 Exit Sub
  loc_15D742F:               End If
  loc_15D743C:               Set var_88 = Me.Txt
  loc_15D7442:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D744A:               var_94 = var_8C.Text
  loc_15D7452:               var_DC = CVar(var_94) 'String
  loc_15D7473:               var_98 = Me.Fields.Item("Name")
  loc_15D7497:               If CBool(var_DC <> var_98.Value) Then
  loc_15D74A0:                 Me.MoveFirst
  loc_15D74C5:                 Set var_88 = Me.Txt
  loc_15D74CB:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D74D3:                 0 = var_8C.Text
  loc_15D74E1:                 Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_15D74F7:                 Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D750F:               End If
  loc_15D7512:             Else
  loc_15D751A:               If (var_9A = CInt(5)) Then
  loc_15D7521:                 Set var_88 = Me.TopCtrl1
  loc_15D7527:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_15D7540:                 If (CStr() = "Add") Then
  loc_15D7551:                   Set var_88 = Me.LTxt
  loc_15D7557:                   Call 0.Method_Txt_GotFocus0 (CInt(&H15), var_8C)
  loc_15D756C:                   var_124 = Val(var_8C.Caption)
  loc_15D75A4:                   Set var_90 = Me.Txt
  loc_15D75AA:                   Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(var_124), "0.00")))
  loc_15D75B2:                   var_98.Text = 1
  loc_15D75D2:                 End If
  loc_15D75D6:                 Set var_88 = Me.TopCtrl1
  loc_15D75DC:                 Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(1)
  loc_15D75FF:                 If ((CStr(var_124) = "Edit") And (global_164 = 0)) Then
  loc_15D7610:                   Set var_88 = Me.LTxt
  loc_15D7616:                   Call 0.Method_Txt_GotFocus0 (CInt(&H15), var_8C)
  loc_15D7663:                   Set var_90 = Me.Txt
  loc_15D7669:                   Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(Val(var_8C.Caption)), "0.00")))
  loc_15D7671:                   var_98.Text = 1
  loc_15D7691:                 End If
  loc_15D76A0:                 Set var_88 = Me.Txt
  loc_15D76A6:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_15D76AE:                 var_8C.SelStart = 1
  loc_15D76C7:                 Set var_88 = Me.Txt
  loc_15D76CD:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D76E8:                 Set var_90 = Me.Txt
  loc_15D76EE:                 Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D76F6:                 var_98.SelLength = Len(var_8C.Text)
  loc_15D770C:               Else
  loc_15D7714:                 If (var_9A = CInt(6)) Then
  loc_15D7726:                   Set var_88 = Me.Txt
  loc_15D772C:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D7734:                   var_8C.SelStart = 0
  loc_15D774D:                   Set var_88 = Me.Txt
  loc_15D7753:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D776E:                   Set var_90 = Me.Txt
  loc_15D7774:                   Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D777C:                   var_98.SelLength = Len(var_8C.Text)
  loc_15D778F:                 End If
  loc_15D778F:               End If
  loc_15D778F:             End If
  loc_15D778F:           End If
  loc_15D778F:         End If
  loc_15D778F:       End If
  loc_15D778F:     End If
  loc_15D778F:   End If
  loc_15D778F: End If
  loc_15D778F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13C5E60
  'Data Table: 55E2AC
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_90 As DataGrid
  Dim var_A0 As DataGrid
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim Shift As Integer
  loc_13C54EB: var_88 = Shift
  loc_13C54F8: If (CLng(Shift) = &H1B) Then
  loc_13C54FB:   Call Proc_137_78_FB6F3C(var_88)
  loc_13C5500:   Exit Sub
  loc_13C5501: End If
  loc_13C5504: var_8A = KeyCode
  loc_13C550F: If (var_8A = CInt(3)) Then
  loc_13C552F:   Set var_A4 = Me.FGPoint
  loc_13C553A:   Set var_A0 = Nothing
  loc_13C556C:   Proc_6_69_134A198(Me.DGPayType, Me.Txt, CInt(3), global_64, Shift, 0)
  loc_13C55DB:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C5601:     Proc_6_138_106D6F8(Me.DGPayType, global_64, KeyCode, Me.FGPoint, 1)
  loc_13C560F:   End If
  loc_13C5612: Else
  loc_13C561A:   If (var_8A = CInt(&H10)) Then
  loc_13C5645:     Set var_A0 = Nothing
  loc_13C5677:     Proc_6_69_134A198(Me.DGEmp, Me.Txt, CInt(&H10), global_68, Shift, 0, 1)
  loc_13C56E6:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C56ED:       Set var_A0 = Me.DGEmp
  loc_13C570C:       Proc_6_138_106D6F8(var_A0, global_68, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_13C571A:     End If
  loc_13C571D:   Else
  loc_13C5725:     If (var_8A = CInt(4)) Then
  loc_13C5782:       Proc_6_69_134A198(Me.DGTable, Me.Txt, CInt(4), global_72, Shift, 0, 1, Nothing)
  loc_13C57F1:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C5817:         Proc_6_138_106D6F8(Me.DGTable, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C5825:       End If
  loc_13C5828:     Else
  loc_13C5830:       If (var_8A = CInt(&HD)) Then
  loc_13C588D:         Proc_6_69_134A198(Me.DGRoom, Me.Txt, CInt(&HD), global_76, Shift, 0, 1, Nothing)
  loc_13C58FC:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C5922:           Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C5930:         End If
  loc_13C5933:       Else
  loc_13C593B:         If (var_8A = CInt(&HE)) Then
  loc_13C5998:           Proc_6_69_134A198(Me.DGCompany, Me.Txt, CInt(&HE), global_80, Shift, 0, 1, Nothing)
  loc_13C5A07:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C5A2D:             Proc_6_138_106D6F8(Me.DGCompany, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C5A3B:           End If
  loc_13C5A3E:         Else
  loc_13C5A46:           If (var_8A = CInt(&HF)) Then
  loc_13C5A66:             Set var_A4 = Me.FGPoint
  loc_13C5AA3:             Proc_6_69_134A198(Me.DGMember, Me.Txt, CInt(&HF), global_84, Shift, 0, 1, Nothing)
  loc_13C5B12:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C5B19:               Set var_A0 = Me.DGMember
  loc_13C5B20:               Set var_94 = Me.FGPoint
  loc_13C5B38:               Proc_6_138_106D6F8(var_A0, global_84, KeyCode, var_94, var_A4, 0)
  loc_13C5B46:             End If
  loc_13C5B49:           Else
  loc_13C5B51:             If (var_8A = CInt(&H12)) Then
  loc_13C5B5E:               If (CLng(Shift) = &H2D) Then
  loc_13C5B64:                 Call Proc_137_89_EE39B8(var_BC, 0, var_A0)
  loc_13C5B76:                 Set var_90 = Me.Txt
  loc_13C5B7C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13C5BA0:                 Set var_90 = Me.Txt
  loc_13C5BA6:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13C5BAE:                 0 = var_A4
  loc_13C5BC1:                 Set var_A0 = Me.Txt
  loc_13C5BC7:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_13C5BCF:                 var_A4.SelStart = Len(var_BC)
  loc_13C5BE2:                 Exit Sub
  loc_13C5BE3:               End If
  loc_13C5BE3:             End If
  loc_13C5BE3:           End If
  loc_13C5BE3:         End If
  loc_13C5BE3:       End If
  loc_13C5BE3:     End If
  loc_13C5BE3:   End If
  loc_13C5BE3: End If
  loc_13C5C1A: var_EC = Me.DGPayType.Visible
  loc_13C5C31: var_FC = Me.DGEmp.Visible
  loc_13C5C8A: If ((((((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_13C5CAD:   If (((CLng(Shift) = &H26) And (global_112 = 5)) And (KeyCode = CInt(3))) Then
  loc_13C5CB0:     Exit Sub
  loc_13C5CB1:   End If
  loc_13C5CCF:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HA))) Then
  loc_13C5CDC:     If (CLng(Shift) = &H28) Then
  loc_13C5CDF:       Exit Sub
  loc_13C5CE0:     End If
  loc_13C5D17:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C5D1A:       Call Proc_137_84_1527200(var_8A)
  loc_13C5D21:       Shift = 0
  loc_13C5D24:     End If
  loc_13C5D24:     Exit Sub
  loc_13C5D28:   Else
  loc_13C5D46:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H12))) Then
  loc_13C5D53:       If (CLng(Shift) = &H28) Then
  loc_13C5D56:         Exit Sub
  loc_13C5D57:       End If
  loc_13C5D8E:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C5D91:         Call Proc_137_84_1527200(Shift)
  loc_13C5D98:         Shift = 0
  loc_13C5D9B:       End If
  loc_13C5D9B:       Exit Sub
  loc_13C5D9F:     Else
  loc_13C5DBD:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HD))) Then
  loc_13C5DCA:         If (CLng(Shift) = &H28) Then
  loc_13C5DCD:           Exit Sub
  loc_13C5DCE:         End If
  loc_13C5DDA:         Call Txt_Validate(CInt(&HD))
  loc_13C5E16:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C5E19:           Call Proc_137_84_1527200(0)
  loc_13C5E20:           Shift = 0
  loc_13C5E23:         End If
  loc_13C5E23:         Exit Sub
  loc_13C5E24:       End If
  loc_13C5E24:     End If
  loc_13C5E24:   End If
  loc_13C5E39:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13C5E42:     Proc_6_75_E527CC(Shift, arg_14)
  loc_13C5E47:   End If
  loc_13C5E51:   If (CLng(Shift) = &H26) Then
  loc_13C5E5A:     Proc_6_76_E52838(Shift, arg_14)
  loc_13C5E5F:   End If
  loc_13C5E5F: End If
  loc_13C5E5F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EA0610
  'Data Table: 55E2AC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EA0596: If (arg_10 = &HD) Then
  loc_EA059B:   arg_10 = 0
  loc_EA059E: End If
  loc_EA05A1: Proc_6_58_E054C0(arg_10)
  loc_EA05AC: Proc_6_133_E7EF78(var_94, arg_10)
  loc_EA05B5: arg_10 = CInt(var_94)
  loc_EA05BE: var_96 = KeyAscii
  loc_EA05C9: If Not (var_96 = CInt(5)) Then
  loc_EA05D4:   If (var_96 = CInt(6)) Then
  loc_EA05D7:   End If
  loc_EA05E1:   Set var_9C = Me.Txt
  loc_EA05E7:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_EA0602:   Proc_6_42_129A86C(var_A0, arg_10, 8)
  loc_EA060E: End If
  loc_EA060E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1181E50
  'Data Table: 55E2AC
  Dim var_86 As Integer
  loc_1181A6B: var_86 = KeyCode
  loc_1181A76: If (var_86 = CInt(3)) Then
  loc_1181A95:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_1181AA9:     var_A4 = "Name"
  loc_1181ACD:     Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyCode, global_64)
  loc_1181B03:     Proc_6_138_106D6F8(Me.DGPayType, global_64, KeyCode, Me.FGPoint)
  loc_1181B11:   End If
  loc_1181B14: Else
  loc_1181B1C:   If (var_86 = CInt(&H10)) Then
  loc_1181B3B:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1181B4F:       var_A4 = "Name"
  loc_1181B73:       Proc_6_68_129FB34(Me.DGEmp, Me.Txt, KeyCode, global_68, Shift)
  loc_1181BA9:       Proc_6_138_106D6F8(Me.DGEmp, global_68, KeyCode, Me.FGPoint)
  loc_1181BB7:     End If
  loc_1181BBA:   Else
  loc_1181BC2:     If (var_86 = CInt(4)) Then
  loc_1181BE1:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_1181C19:         Proc_6_68_129FB34(Me.DGTable, Me.Txt, KeyCode, global_72, Shift)
  loc_1181C4F:         Proc_6_138_106D6F8(Me.DGTable, global_72, KeyCode, Me.FGPoint, "Name")
  loc_1181C5D:       End If
  loc_1181C60:     Else
  loc_1181C68:       If (var_86 = CInt(&HD)) Then
  loc_1181C87:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1181CBF:           Proc_6_68_129FB34(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_1181CF5:           Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1181D03:         End If
  loc_1181D06:       Else
  loc_1181D0E:         If (var_86 = CInt(&HE)) Then
  loc_1181D2D:           If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1181D65:             Proc_6_68_129FB34(Me.DGCompany, Me.Txt, KeyCode, global_80, Shift)
  loc_1181D9B:             Proc_6_138_106D6F8(Me.DGCompany, global_80, KeyCode, Me.FGPoint, "Name")
  loc_1181DA9:           End If
  loc_1181DAC:         Else
  loc_1181DB4:           If (var_86 = CInt(&HF)) Then
  loc_1181DD3:             If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1181E0B:               Proc_6_68_129FB34(Me.DGMember, Me.Txt, KeyCode, global_84, Shift)
  loc_1181E41:               Proc_6_138_106D6F8(Me.DGMember, global_84, KeyCode, Me.FGPoint, "Name")
  loc_1181E4F:             End If
  loc_1181E4F:           End If
  loc_1181E4F:         End If
  loc_1181E4F:       End If
  loc_1181E4F:     End If
  loc_1181E4F:   End If
  loc_1181E4F: End If
  loc_1181E4F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E67C
  'Data Table: 55E2AC
  loc_E4E65A: Set var_88 = Me.Txt
  loc_E4E660: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E66E: Proc_6_73_E22704(var_8C)
  loc_E4E67A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14C4574
  'Data Table: 55E2AC
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_B8 As Variant
  Dim var_D4 As TextBox
  Dim var_11C As Double
  Dim var_E4 As Variant
  Dim var_CC As String
  loc_14C382B: var_8A = Cancel
  loc_14C3836: If (var_8A = CInt(1)) Then
  loc_14C3847:   Set var_90 = Me.Txt
  loc_14C384D:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_14C3855:   var_98 = var_94.Text
  loc_14C386C:   If (var_98 <> vbNullString) Then
  loc_14C3875:     Call Proc_137_80_11570F4(MemVar_1F92044, var_98)
  loc_14C3880:   Else
  loc_14C3882:     arg_10 = &HFF
  loc_14C3885:     Exit Sub
  loc_14C3886:   End If
  loc_14C3889: Else
  loc_14C3891:   If (var_8A = CInt(4)) Then
  loc_14C389E:     Set var_90 = Me.Txt
  loc_14C38A4:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C38AC:     var_98 = "Table"
  loc_14C38CD:     If (Proc_6_27_EA565C(var_94, var_98) = 0) Then
  loc_14C38DA:       Set var_90 = Me.Txt
  loc_14C38E0:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C38E8:       var_94.SetFocus
  loc_14C38F6:       arg_10 = &HFF
  loc_14C38F9:       Exit Sub
  loc_14C38FA:     End If
  loc_14C3948:     Set var_90 = Me.Txt
  loc_14C394E:     Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_14C396E:     If (var_94.Text Or (var_98 = vbNullString)) Then
  loc_14C397E:       Set var_90 = Me.Txt
  loc_14C3984:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C398C:       var_94.Text = vbNullString
  loc_14C39A5:       Set var_90 = Me.Txt
  loc_14C39AB:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C39B3:       var_94.Tag = vbNullString
  loc_14C39CA:       If (global_148 = "RO") Then
  loc_14C39D3:         global_144 = vbNullString
  loc_14C39D7:       End If
  loc_14C39DA:     Else
  loc_14C3A15:       Set var_9C = Me.Txt
  loc_14C3A1B:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C3A23:       var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C3A74:       Set var_9C = Me.Txt
  loc_14C3A7A:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C3A82:       var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14C3AA3:       If (global_148 = "RO") Then
  loc_14C3AC3:         var_94 = Me.Fields.Item("RoomCat")
  loc_14C3AD4:         var_98 = CStr(var_94.Value)
  loc_14C3ADA:         global_144 = var_98
  loc_14C3AEB:       End If
  loc_14C3AEB:     End If
  loc_14C3AEE:   Else
  loc_14C3AF6:     If (var_8A = CInt(&HD)) Then
  loc_14C3B47:       Set var_90 = Me.Txt
  loc_14C3B4D:       Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_14C3B55:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14C3B6D:       If (var_8A Or (var_98 = vbNullString)) Then
  loc_14C3B7D:         Set var_90 = Me.Txt
  loc_14C3B83:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C3B8B:         var_94.Text = vbNullString
  loc_14C3BA4:         Set var_90 = Me.Txt
  loc_14C3BAA:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C3BB2:         var_94.Tag = vbNullString
  loc_14C3BC1:       Else
  loc_14C3BFC:         Set var_9C = Me.Txt
  loc_14C3C02:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C3C0A:         var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C3C3D:         var_94 = Me.Fields.Item("Code")
  loc_14C3C5B:         Set var_9C = Me.Txt
  loc_14C3C61:         Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C3C69:         var_B8.Tag = CStr(var_94.Value)
  loc_14C3C7F:       End If
  loc_14C3C82:     Else
  loc_14C3C8A:       If (var_8A = CInt(2)) Then
  loc_14C3C9B:         Set var_90 = Me.Txt
  loc_14C3CA1:         Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_14C3CC8:         Set var_9C = Me.Txt
  loc_14C3CCE:         Call 0.Method_Txt_Validate0 (CInt(2), var_B8)
  loc_14C3CD6:         var_B8.Text = Proc_6_34_14ECF20(var_94.Text)
  loc_14C3CFB:         Set var_90 = Me.Txt
  loc_14C3D01:         Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_14C3D20:         If (var_94.Text = vbNullString) Then
  loc_14C3D25:           arg_10 = &HFF
  loc_14C3D28:         End If
  loc_14C3D2B:       Else
  loc_14C3D33:         If Not (var_8A = CInt(&HC)) Then
  loc_14C3D3E:           If (var_8A = CInt(9)) Then
  loc_14C3D41:           End If
  loc_14C3D4B:           Set var_90 = Me.Txt
  loc_14C3D51:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C3D71:           Set var_B8 = Me.Txt
  loc_14C3D77:           Call 0.Method_Txt_Validate0 (Cancel, var_D4)
  loc_14C3D7F:           var_D4.Text = Proc_6_33_1512840(var_94)
  loc_14C3D95:         Else
  loc_14C3D9D:           If (var_8A = CInt(3)) Then
  loc_14C3DAD:             Set var_90 = Me.Txt
  loc_14C3DB3:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C3DD2:             If (var_94.Text <> vbNullString) Then
  loc_14C3E10:               Set var_9C = Me.Txt
  loc_14C3E16:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C3E1E:               var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C3E6F:               Set var_9C = Me.Txt
  loc_14C3E75:               Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C3E7D:               var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14C3EC4:               global_152 = Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")))
  loc_14C3EDD:               Me.FrEmp.Visible = False
  loc_14C3EF1:               Me.FrChqDet.Visible = False
  loc_14C3F05:               Me.FrCCDet.Visible = False
  loc_14C3F19:               Me.FrTxnNo.Visible = False
  loc_14C3F3B:               var_94 = Me.Fields.Item("PayType")
  loc_14C3F50:               Call Proc_137_83_11AF1F8(Proc_6_38_E68A98(CVar(var_94)))
  loc_14C3F61:             Else
  loc_14C3F6E:               Set var_90 = Me.Txt
  loc_14C3F74:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C3F7C:               var_94.Text = vbNullString
  loc_14C3F95:               Set var_90 = Me.Txt
  loc_14C3F9B:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C3FA3:               var_94.Tag = vbNullString
  loc_14C3FAF:             End If
  loc_14C3FB2:           Else
  loc_14C3FBA:             If Not (var_8A = CInt(5)) Then
  loc_14C3FC5:               If (var_8A = CInt(6)) Then
  loc_14C3FC8:               End If
  loc_14C3FD2:               Set var_90 = Me.Txt
  loc_14C3FD8:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C3FE4:               Proc_6_40_EA50F0(CVar(var_94))
  loc_14C3FFB:               var_104 = "0.00"
  loc_14C4004:               var_E4 = CVar(arg_10) 'Double
  loc_14C400B:               var_114 = Format(var_E4, var_104)
  loc_14C4013:               var_98 = CStr(var_114)
  loc_14C4021:               Set var_9C = Me.Txt
  loc_14C4027:               Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_98)
  loc_14C402F:               var_B8.Text = 1
  loc_14C4059:               Set var_9C = Me.LTxt
  loc_14C405F:               Call 0.Method_Txt_Validate0 (CInt(&H15), var_B8, var_CC)
  loc_14C4067:               1 = var_B8.Caption
  loc_14C4074:               var_11C = Val(var_CC)
  loc_14C408D:               Set var_90 = Me.Txt
  loc_14C4093:               Call 0.Method_Txt_Validate0 (CInt(5), var_94, var_98)
  loc_14C409B:               (Cancel = CInt(5)) = var_94.Text
  loc_14C40CB:               If ((var_11C And (CDbl(Val(var_98)) > CDbl(var_11C))) And (global_164 = 0)) Then
  loc_14C40E7:                 MsgBox("Amount You have entered is greater than Actual amount", &H40, var_E4, var_104, var_114)
  loc_14C40F9:                 arg_10 = &HFF
  loc_14C40FC:                 Exit Sub
  loc_14C40FD:               End If
  loc_14C4100:             Else
  loc_14C4108:               If (var_8A = CInt(&HE)) Then
  loc_14C4159:                 Set var_90 = Me.Txt
  loc_14C415F:                 Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_14C4167:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14C417F:                 If (arg_10 Or (var_98 = vbNullString)) Then
  loc_14C418F:                   Set var_90 = Me.Txt
  loc_14C4195:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C419D:                   var_94.Text = vbNullString
  loc_14C41B6:                   Set var_90 = Me.Txt
  loc_14C41BC:                   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C41C4:                   var_94.Tag = vbNullString
  loc_14C41D3:                 Else
  loc_14C420E:                   Set var_9C = Me.Txt
  loc_14C4214:                   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C421C:                   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C424F:                   var_94 = Me.Fields.Item("Code")
  loc_14C4260:                   var_98 = CStr(var_94.Value)
  loc_14C426D:                   Set var_9C = Me.Txt
  loc_14C4273:                   Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C427B:                   var_B8.Tag = var_98
  loc_14C42AB:                   Set var_90 = Me.Txt
  loc_14C42B1:                   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_14C42B9:                   0 = var_94.Tag
  loc_14C42E1:                   If (Proc_96_1_F8C534(Proc_6_38_E68A98(CVar(var_98))) = 0) Then
  loc_14C42FD:                     MsgBox("Credit Not Allowed.", 0, var_E4, var_104, var_114)
  loc_14C430F:                     arg_10 = &HFF
  loc_14C4312:                     Exit Sub
  loc_14C4313:                   End If
  loc_14C431E:                   Set var_90 = Me.Txt
  loc_14C4324:                   Call 0.Method_Txt_Validate0 (CInt(&H12), var_94)
  loc_14C434D:                   If (Trim(CVar(var_94)) = vbNullString) Then
  loc_14C435E:                     Set var_90 = Me.Txt
  loc_14C4364:                     Call 0.Method_Txt_Validate0 (CInt(&H12), var_94, "AGAINST V.NO ")
  loc_14C436C:                     var_94.Text = arg_10
  loc_14C4378:                   End If
  loc_14C4378:                 End If
  loc_14C437B:               Else
  loc_14C4383:                 If (var_8A = CInt(&HF)) Then
  loc_14C43D4:                   Set var_90 = Me.Txt
  loc_14C43DA:                   Call 0.Method_Txt_Validate0 (Cancel, var_94, var_98)
  loc_14C43E2:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14C43FA:                   If (var_11C Or (var_98 = vbNullString)) Then
  loc_14C440A:                     Set var_90 = Me.Txt
  loc_14C4410:                     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C4418:                     var_94.Text = vbNullString
  loc_14C4431:                     Set var_90 = Me.Txt
  loc_14C4437:                     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_14C443F:                     var_94.Tag = vbNullString
  loc_14C444E:                   Else
  loc_14C4489:                     Set var_9C = Me.Txt
  loc_14C448F:                     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C4497:                     var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14C44CA:                     var_94 = Me.Fields.Item("Code")
  loc_14C44E8:                     Set var_9C = Me.Txt
  loc_14C44EE:                     Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_14C44F6:                     var_B8.Tag = CStr(var_94.Value)
  loc_14C4517:                     Set var_90 = Me.Txt
  loc_14C451D:                     Call 0.Method_Txt_Validate0 (CInt(&H12))
  loc_14C4546:                     If (Trim(CVar(var_94)) = vbNullString) Then
  loc_14C4557:                       Set var_90 = Me.Txt
  loc_14C455D:                       Call 0.Method_Txt_Validate0 (CInt(&H12), var_94)
  loc_14C4565:                       var_94.Text = "AGAINST V.NO "
  loc_14C4571:                     End If
  loc_14C4571:                   End If
  loc_14C4571:                 End If
  loc_14C4571:               End If
  loc_14C4571:             End If
  loc_14C4571:           End If
  loc_14C4571:         End If
  loc_14C4571:       End If
  loc_14C4571:     End If
  loc_14C4571:   End If
  loc_14C4571: End If
  loc_14C4571: Exit Sub
End Sub

Private Sub Del_Click() 'F93B24
  'Data Table: 55E2AC
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F939DF: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F93A19:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F93A3B:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F93A51:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F93A5A:       Set var_10C = Me.FGrid
  loc_F93A75:     Else
  loc_F93A88:       Me.FGrid.Rows = 1
  loc_F93AAC:       var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_F93AB4:       Set var_10C = Me.FGrid
  loc_F93AE1:       Me.FGrid.FixedRows = 1
  loc_F93AE9:     End If
  loc_F93AE9:   End If
  loc_F93AEC: Else
  loc_F93B07:   var_98 = "No Entries To Delete"
  loc_F93B0D:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F93B1D: End If
  loc_F93B1D: Call Proc_137_86_10A62C0(FGrid.DispID_10000, var_98)
  loc_F93B22: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F54DD0
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54CB0: On Error Goto loc_F54DCA
  loc_F54CC2: Me.DGTable.Visible = False
  loc_F54CE1: If (Me.RecordCount > 0) Then
  loc_F54D20:   Set var_B4 = Me.Txt
  loc_F54D26:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F54D2E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F54D61:   var_B0 = Me.Fields.Item("Code")
  loc_F54D80:   Set var_B4 = Me.Txt
  loc_F54D86:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F54D8E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F54DA4: End If
  loc_F54DAF: Set var_A8 = Me.Txt
  loc_F54DB5: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F54DBD: var_B0.SetFocus
  loc_F54DC9: Exit Sub
  loc_F54DCA: ' Referenced from: F54CB0
  loc_F54DCA: Proc_6_60_E62BC4(var_B0)
  loc_F54DCF: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA1F3C
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  loc_EA1EBC: Set var_88 = Me.DGTable
  loc_EA1EE6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1EEE: Set var_BC = Me.DGTable
  loc_EA1F2A: Proc_6_138_106D6F8(Me.DGTable, global_72, CInt(4), Me.FGPoint)
  loc_EA1F38: Exit Sub
  loc_EA1F39: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F3E5E4
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E4DB: Me.DGMember.Visible = False
  loc_F3E4FA: If (Me.RecordCount > 0) Then
  loc_F3E539:   Set var_B4 = Me.Txt
  loc_F3E53F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F3E547:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3E57A:   var_B0 = Me.Fields.Item("Code")
  loc_F3E599:   Set var_B4 = Me.Txt
  loc_F3E59F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F3E5A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3E5BD: End If
  loc_F3E5C8: Set var_A8 = Me.Txt
  loc_F3E5CE: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HF))
  loc_F3E5D6: var_B0.SetFocus
  loc_F3E5E2: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'EA2188
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  loc_EA2108: Set var_88 = Me.DGMember
  loc_EA2132: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA213A: Set var_BC = Me.DGMember
  loc_EA2176: Proc_6_138_106D6F8(Me.DGMember, global_84, CInt(&HF), Me.FGPoint)
  loc_EA2184: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F4BF24
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4BE1B: Me.DGEmp.Visible = False
  loc_F4BE3A: If (Me.RecordCount > 0) Then
  loc_F4BE79:   Set var_B4 = Me.Txt
  loc_F4BE7F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F4BE87:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4BEBA:   var_B0 = Me.Fields.Item("Code")
  loc_F4BED9:   Set var_B4 = Me.Txt
  loc_F4BEDF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F4BEE7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4BEFD: End If
  loc_F4BF08: Set var_A8 = Me.Txt
  loc_F4BF0E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H10))
  loc_F4BF16: var_B0.SetFocus
  loc_F4BF22: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA3F64
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  loc_EA3EE4: Set var_88 = Me.DGEmp
  loc_EA3F0E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3F16: Set var_BC = Me.DGEmp
  loc_EA3F52: Proc_6_138_106D6F8(Me.DGEmp, global_68, CInt(&H10), Me.FGPoint)
  loc_EA3F60: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F3D2A4
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D19B: Me.DGCompany.Visible = False
  loc_F3D1BA: If (Me.RecordCount > 0) Then
  loc_F3D1F9:   Set var_B4 = Me.Txt
  loc_F3D1FF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F3D207:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3D23A:   var_B0 = Me.Fields.Item("Code")
  loc_F3D259:   Set var_B4 = Me.Txt
  loc_F3D25F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F3D267:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3D27D: End If
  loc_F3D288: Set var_A8 = Me.Txt
  loc_F3D28E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HE))
  loc_F3D296: var_B0.SetFocus
  loc_F3D2A2: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA2000
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  loc_EA1F80: Set var_88 = Me.DGCompany
  loc_EA1FAA: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1FB2: Set var_BC = Me.DGCompany
  loc_EA1FEE: Proc_6_138_106D6F8(Me.DGCompany, global_80, CInt(&HE), Me.FGPoint)
  loc_EA1FFC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0B184
  'Data Table: 55E2AC
  loc_E0B170: Call Proc_137_88_1408F48()
  loc_E0B17B: Call Proc_137_83_11AF1F8(global_152)
  loc_E0B180: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FDDD4C
  'Data Table: 55E2AC
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FDDB80: Set var_88 = Me.TopCtrl1
  loc_FDDB86: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_FDDB9F: If (CStr() = "Browse") Then
  loc_FDDBA2:   Exit Sub
  loc_FDDBA3: End If
  loc_FDDBC0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FDDBC3:   Exit Sub
  loc_FDDBC4: End If
  loc_FDDBD5: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FDDBF7:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FDDC31:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FDDC53:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FDDC69:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FDDC72:         Set var_110 = Me.FGrid
  loc_FDDC8D:       Else
  loc_FDDCA0:         Me.FGrid.Rows = 1
  loc_FDDCC4:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_FDDCCC:         Set var_110 = Me.FGrid
  loc_FDDCF9:         Me.FGrid.FixedRows = 1
  loc_FDDD01:       End If
  loc_FDDD01:     End If
  loc_FDDD04:   Else
  loc_FDDD25:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FDDD35:   End If
  loc_FDDD39:   Set var_88 = Me.FGrid
  loc_FDDD4A: End If
  loc_FDDD4A: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_E(Index As Integer) 'E439B4
  'Data Table: 55E2AC
  loc_E4398A: If (Index = 2) Then
  loc_E439A5:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E439AD:   Call FGrid_UnknownEvent_9()
  loc_E439B2: End If
  loc_E439B2: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3EF84
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3EE7B: Me.DGRoom.Visible = False
  loc_F3EE9A: If (Me.RecordCount > 0) Then
  loc_F3EED9:   Set var_B4 = Me.Txt
  loc_F3EEDF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F3EEE7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3EF1A:   var_B0 = Me.Fields.Item("Code")
  loc_F3EF39:   Set var_B4 = Me.Txt
  loc_F3EF3F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F3EF47:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3EF5D: End If
  loc_F3EF68: Set var_A8 = Me.Txt
  loc_F3EF6E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HD))
  loc_F3EF76: var_B0.SetFocus
  loc_F3EF82: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA1E78
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  loc_EA1DF8: Set var_88 = Me.DGRoom
  loc_EA1E22: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1E2A: Set var_BC = Me.DGRoom
  loc_EA1E66: Proc_6_138_106D6F8(Me.DGRoom, global_76, CInt(&HD), Me.FGPoint)
  loc_EA1E74: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F32E00
  'Data Table: 55E2AC
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  loc_F32CE8: On Error Goto loc_F32DF8
  loc_F32D0E: Call Proc_137_73_F76A98(Proc_5_1_100CB50("ADD", Me))
  loc_F32D19: Call Proc_137_74_F985D4(global_60)
  loc_F32D46: var_88 = CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))
  loc_F32D55: Set var_8C = Me.Txt
  loc_F32D5B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F32D63: var_D4.Text = 1
  loc_F32D7F: var_D8 = global_112
  loc_F32D8B: If (var_D8 = 6) Then
  loc_F32D9B:   Set var_8C = Me.Txt
  loc_F32DA1:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4, &HFF)
  loc_F32DA9:   var_D4.Enabled = var_D8
  loc_F32DC1:   If (global_108 = 2) Then
  loc_F32DCA:     Call Proc_137_80_11570F4(MemVar_1F92044, var_88)
  loc_F32DDD:     Set var_8C = Me.Txt
  loc_F32DE3:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_F32DEB:     var_D4.SetFocus
  loc_F32DF7:   End If
  loc_F32DF7: End If
  loc_F32DF7: Exit Sub
  loc_F32DF8: ' Referenced from: F32CE8
  loc_F32DF8: Proc_6_60_E62BC4(1)
  loc_F32DFD: Exit Sub
  loc_F32DFE: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC63AC
  'Data Table: 55E2AC
  loc_EC6314: On Error Goto loc_EC63A4
  loc_EC634E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC635D:   Set var_110 = Me
  loc_EC6374:   Call Proc_137_73_F76A98(Proc_5_1_100CB50("INI", var_110))
  loc_EC637F:   Call Proc_137_78_FB6F3C(global_60)
  loc_EC6384:   Call Proc_137_76_154FB64()
  loc_EC638C: Else
  loc_EC6392:   Call 0.Method_arg_1E8 (var_110)
  loc_EC639A:   Call var_110.SetFocus
  loc_EC63A3: End If
  loc_EC63A3: Exit Sub
  loc_EC63A4: ' Referenced from: EC6314
  loc_EC63A4: Proc_6_60_E62BC4()
  loc_EC63A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10B1D80
  'Data Table: 55E2AC
  Dim unk_55E2CB As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10B1AD8: On Error Goto loc_10B1D30
  loc_10B1B12: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_10B1B1E:   unk_55E2CB.BeginTrans var_118
  loc_10B1B34:   var_94 = Me.Bookmark 'Variant
  loc_10B1B80:   var_F4 = "Delete From PAYCHARGEH Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10B1B8E:   unk_55E2CB.Execute CStr(var_F4), var_114, -1
  loc_10B1BD9:   var_160 = 0
  loc_10B1BEC:   var_158 = 0
  loc_10B1BF7:   var_154 = 0
  loc_10B1C0A:   var_14C = 0
  loc_10B1C15:   var_148 = 0
  loc_10B1C28:   var_140 = 0
  loc_10B1C68:   var_124 = "PayChargeH"
  loc_10B1C71:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_10B1C9F:   unk_55E2CB.CommitTrans
  loc_10B1CAF:   Me.Requery -1
  loc_10B1CCF:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10B1CDC:     Me.Bookmark = var_94
  loc_10B1CE4:   Else
  loc_10B1CF8:     If (Me.EOF = 0) Then
  loc_10B1D01:       Me.MoveLast
  loc_10B1D06:     End If
  loc_10B1D06:   End If
  loc_10B1D06:   Call Proc_137_76_154FB64(var_140, 0, var_148, var_14C)
  loc_10B1D27:   Proc_5_0_110649C(&HFF, Me, global_60, 0)
  loc_10B1D2F: End If
  loc_10B1D2F: Exit Sub
  loc_10B1D30: ' Referenced from: 10B1AD8
  loc_10B1D36: unk_55E2CB.RollbackTrans
  loc_10B1D43: Set var_11C = Err()
  loc_10B1D49: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_10B1D6A: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_10B1D7D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E5355C
  'Data Table: 55E2AC
  loc_E53524: On Error Goto loc_E53556
  loc_E5354A: Call Proc_137_73_F76A98(Proc_5_1_100CB50("EDIT", Me))
  loc_E53555: Exit Sub
  loc_E53556: ' Referenced from: E53524
  loc_E53556: Proc_6_60_E62BC4(global_60)
  loc_E5355B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B618
  'Data Table: 55E2AC
  Dim arg_34FF As Double
  loc_E1B60D: Me.Global.Unload Me
  loc_E1B615: Exit Sub
  loc_E1B616: arg_34FF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'DFBED4
  'Data Table: 55E2AC
  Dim arg_203D As Boolean
  loc_DFBED0: Exit Sub
  loc_DFBED1: arg_203D = True
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35FB8
  'Data Table: 55E2AC
  loc_E35FA8: Proc_5_0_110649C(&HFF, Me)
  loc_E35FB0: Call Proc_137_76_154FB64(global_60)
  loc_E35FB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35CB8
  'Data Table: 55E2AC
  loc_E35CA8: Proc_5_0_110649C(&HFF, Me)
  loc_E35CB0: Call Proc_137_76_154FB64(global_60)
  loc_E35CB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E35E38
  'Data Table: 55E2AC
  loc_E35E28: Proc_5_0_110649C(&HFF, Me)
  loc_E35E30: Call Proc_137_76_154FB64(global_60)
  loc_E35E35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E35F58
  'Data Table: 55E2AC
  loc_E35F48: Proc_5_0_110649C(&HFF, Me)
  loc_E35F50: Call Proc_137_76_154FB64(global_60)
  loc_E35F55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFC34C
  'Data Table: 55E2AC
  loc_DFC348: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E81930
  'Data Table: 55E2AC
  Dim Me As Recordset15
  Dim arg_DFF As Double
  loc_E818C7: Me.Requery -1
  loc_E818D7: Me.Requery -1
  loc_E818E7: Me.Requery -1
  loc_E818F7: Me.Requery -1
  loc_E81907: Me.Requery -1
  loc_E81917: Me.Requery -1
  loc_E81927: Me.Requery -1
  loc_E8192C: Exit Sub
  loc_E8192D: arg_DFF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '188CE74
  'Data Table: 55E2AC
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim var_128 As String
  Dim var_F0 As Variant
  Dim var_15C As Long
  Dim var_160 As Variant
  Dim var_168 As Variant
  Dim var_174 As Double
  Dim unk_55E2CB As Connection15
  Dim var_16C As String
  Dim var_17C As String
  Dim var_D0 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_AC As Variant
  Dim var_184 As Long
  Dim var_98 As Variant
  Dim var_110 As String
  Dim var_158 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_164 As MSHFlexGrid
  Dim var_1E8 As String
  Dim var_210 As String
  Dim var_1FC As Variant
  Dim var_CC As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Long
  Dim var_360 As Variant
  Dim var_380 As Variant
  Dim var_394 As MSHFlexGrid
  Dim var_3B4 As Variant
  Dim var_3D4 As Long
  Dim var_3E8 As Variant
  Dim var_418 As Variant
  Dim var_34C As String
  Dim var_4B8 As Variant
  Dim var_4D8 As Long
  Dim var_4EC As Variant
  Dim var_4FC As Variant
  Dim var_580 As MSHFlexGrid
  Dim var_590 As Variant
  Dim var_5D8 As Variant
  Dim var_62C As Variant
  Dim var_64C As Variant
  Dim var_674 As String
  Dim var_6C4 As Variant
  Dim var_6E4 As Variant
  Dim var_70C As String
  Dim var_FE4 As Double
  Dim var_75C As Variant
  Dim var_77C As Variant
  Dim var_7B0 As Variant
  Dim var_820 As Variant
  Dim var_840 As Variant
  Dim var_8D4 As Variant
  Dim var_8F4 As Variant
  Dim var_918 As Variant
  Dim var_A10 As Variant
  Dim var_AA4 As Variant
  Dim var_B38 As Variant
  Dim var_BBC As MSHFlexGrid
  Dim var_C60 As Variant
  Dim var_C70 As Variant
  Dim var_CD0 As Variant
  Dim var_D14 As Variant
  Dim var_D24 As Variant
  Dim var_E3C As Variant
  Dim var_E80 As Integer
  Dim var_E6C As Variant
  Dim var_E70 As Fields15
  Dim var_E84 As Field20
  Dim var_21C As String
  Dim var_224 As String
  Dim var_230 As String
  Dim var_234 As String
  Dim var_238 As String
  Dim var_250 As Variant
  Dim var_290 As Variant
  Dim var_2A0 As Variant
  Dim var_2C4 As Variant
  Dim var_2F4 As Variant
  Dim var_478 As Variant
  Dim var_51C As Variant
  Dim var_52C As Variant
  Dim var_5FC As Variant
  Dim var_6B4 As Variant
  Dim var_72C As Variant
  Dim var_8A4 As Variant
  Dim var_8C4 As Variant
  Dim var_958 As Variant
  Dim var_99C As Variant
  Dim var_A20 As Variant
  Dim var_B78 As Variant
  Dim var_DA4 As Variant
  Dim var_DD4 As Variant
  Dim var_E14 As Variant
  Dim var_314 As Variant
  Dim var_5D4 As Variant
  Dim var_55C As Long
  Dim var_7E0 As Variant
  Dim var_228 As String
  Dim var_438 As Variant
  Dim var_884 As Variant
  Dim var_938 As Variant
  Dim var_C4 As Double
  Dim var_1014 As Double
  Dim var_240 As TextBox
  Dim var_101C As Double
  Dim var_1024 As Double
  Dim var_E38 As Fields15
  Dim var_BEC As Variant
  Dim var_C90 As Variant
  Dim var_D34 As Variant
  Dim var_DC4 As Variant
  Dim var_1030 As Long
  Dim Me As Recordset15
  loc_188A9C8: On Error Goto loc_188CE22
  loc_188A9CB: var_E0 = 1
  loc_188A9D4: var_100 = 1
  loc_188A9F2: var_128 = CStr(Me.FGrid.TextMatrix))
  loc_188AA03: If (var_128 = vbNullString) Then
  loc_188AA27:   MsgBox("Please Fill Payment Details Before Saving..", &H40, "Save Data", var_148, var_158)
  loc_188AA37:   Exit Sub
  loc_188AA38: End If
  loc_188AA4A: If (global_112 = 6) Then
  loc_188AA5B:   Set var_114 = Me.LTxt
  loc_188AA61:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_160, var_128)
  loc_188AA69:   var_15C = var_160.Caption
  loc_188AA85:   If (CDbl(Val(var_128)) <> CDbl(0)) Then
  loc_188AA96:     Set var_164 = Me.LTxt
  loc_188AA9C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_168, var_16C)
  loc_188AAA4:     var_100 = var_168.Caption
  loc_188AAB1:     var_174 = Val(var_16C)
  loc_188AAC2:     Set var_114 = Me.LTxt
  loc_188AAC8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_160, var_128)
  loc_188AAF5:     If (CDbl(Val(var_128)) <> CDbl(var_160.Caption)) Then
  loc_188AAFE:       var_E0 = "Bill Sattlement..."
  loc_188AB15:       var_128 = "Bill Amount and Received Amount Not Matched" & vbCrLf
  loc_188AB38:       If (MsgBox(CVar(var_128 & "Are you want save?"), &H14, var_E0, var_148, var_158) = 7) Then
  loc_188AB3B:         Exit Sub
  loc_188AB3C:       End If
  loc_188AB3C:     End If
  loc_188AB3C:   End If
  loc_188AB3C: End If
  loc_188AB40: var_86 = CByte(0) 'Byte
  loc_188AB4D: unk_55E2CB.BeginTrans var_178
  loc_188AB56: var_86 = CByte(1) 'Byte
  loc_188AB78: Set var_114 = Me.Txt
  loc_188AB7E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "Select POSTDocid from paychargeH where Docid='")
  loc_188AB86: var_124 = var_160.Text
  loc_188AB8F: var_16C = -1 & var_128
  loc_188AB9F: unk_55E2CB.Execute var_16C & "'", var_164, var_E0
  loc_188ABAA: Set var_D0 = var_164
  loc_188ABD6: If (var_D0.RecordCount > 0) Then
  loc_188ABF7:   Set var_114 = Me.Txt
  loc_188ABFD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "Delete From PAYCHARGEH Where Docid='")
  loc_188AC05:   var_124 = var_160.Text
  loc_188AC0E:   var_16C = -1 & var_128
  loc_188AC1E:   unk_55E2CB.Execute var_16C & "'", var_164, 
  loc_188AC8B:   unk_55E2CB.Execute CStr("Delete From Ledger Where Docid='" & var_D0.Fields.Item("PostDocId").Value & "'"), var_158, -1
  loc_188ACA7: End If
  loc_188ACCC: For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_180 'Integer
  loc_188ACD6:   var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188ACDB:   var_100 = 2
  loc_188ACE8:   Set var_114 = Me.FGrid
  loc_188ACEE:   var_124 = var_114.TextMatrix)
  loc_188AD0A:   If (CStr(var_124) <> vbNullString) Then
  loc_188AD13:     var_AC = (var_AC + 1)
  loc_188AD1C:     var_184 = global_112
  loc_188AD28:     If (var_184 = 6) Then
  loc_188AD42:       var_128 = "Select Name,ShortName from depart where code='" & global_52
  loc_188AD52:       unk_55E2CB.Execute var_128 & "'", var_124, -1
  loc_188AD5D:       Set var_98 = var_114
  loc_188AD81:       If (var_98.RecordCount > 0) Then
  loc_188AD9B:         var_114 = var_98.Fields
  loc_188ADA3:         var_160 = var_114.Item("ShortName")
  loc_188ADB3:         var_138 = ("(" + var_160.Value)
  loc_188ADB7:         var_100 = ") "
  loc_188ADBC:         var_148 = ("Delete From Ledger Where Docid='" & var_D0.Fields.Item("PostDocId").Value + var_100)
  loc_188ADC0:         var_110 = "BILL NO.- "
  loc_188ADC5:         var_158 = ("Delete From Ledger Where Docid='" & var_D0.Fields.Item("PostDocId").Value & "'" + var_110)
  loc_188ADD7:         Set var_164 = Me.Txt
  loc_188ADDD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_114, var_184)
  loc_188ADE5:         var_AC = var_168.Text
  loc_188ADF0:         var_1A4 = (var_100 + CVar(var_128))
  loc_188ADF9:         var_1C4 = (var_1A4 + " ")
  loc_188AE02:         var_1E4 = (var_1C4 + vbNullString)
  loc_188AE07:         var_94 = CStr(var_1E4)
  loc_188AE2B:       Else
  loc_188AE2F:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188AE52:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_188AE63:         If (var_128 = "Cheque") Then
  loc_188AE77:           Set var_114 = Me.Txt
  loc_188AE7D:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_160, var_128, "PaymentRecd.Agnst.BANQUET BILL NO.- ", 2)
  loc_188AE95:           var_17C = var_160.Text & var_128 & " Chq."
  loc_188AE9C:           var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188AEC9:           var_210 = CVar(CLng(&HC)) & CStr(Me.FGrid.TextMatrix)) & " Dt."
  loc_188AED0:           var_1B4 = CVar(CLng(var_AA)) 'Long
  loc_188AEE1:           Set var_168 = Me.FGrid
  loc_188AEF6:           var_94 = CVar(CLng(&HD)) & CStr(var_168.TextMatrix))
  loc_188AF1F:         Else
  loc_188AF30:           Set var_114 = Me.Txt
  loc_188AF36:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_160, var_128, "AGNST BANQUET BILL NO.- ", var_1B4)
  loc_188AF3E:           var_210 = var_160.Text
  loc_188AF4E:           var_94 = var_E0 & var_128 & " "
  loc_188AF5F:         End If
  loc_188AF5F:       End If
  loc_188AF64:       Set var_98 = Nothing
  loc_188AF6C:       Set var_9C = Nothing
  loc_188AF8B:       var_124 = Me.FGrid.TextMatrix)
  loc_188AF96:       var_128 = CStr(var_124)
  loc_188AFA7:       If (var_128 = "Room") Then
  loc_188AFCE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "DELETE FROM PAYCHARGE WHERE DOCID='", var_124, -1)
  loc_188AFEF:         unk_55E2CB.Execute 2 & var_128 & "'", CVar(CLng(var_AA)), 2 & var_128 & "'"
  loc_188B034:         unk_55E2CB.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_124, -1
  loc_188B03F:         Set var_98 = Me.Txt
  loc_188B065:         If (var_98.RecordCount > 0) Then
  loc_188B075:           var_F0 = "Select * from taxstru where Code='"
  loc_188B094:           var_160 = var_98.Fields.Item("TaxStru")
  loc_188B0A4:           var_138 = var_F0 & var_160.Value 
  loc_188B0AD:           var_148 = var_138 & "' Order by Sno" 
  loc_188B0BB:           unk_55E2CB.Execute CStr(var_148), var_158, -1
  loc_188B0C6:           Set var_A0 = var_160.Text
  loc_188B0E3:         Else
  loc_188B0FC:           MsgBox("System Defined Revenue is not defined", 0, var_138, var_148, var_158)
  loc_188B112:           unk_55E2CB.RollbackTrans
  loc_188B117:           Exit Sub
  loc_188B118:         End If
  loc_188B11C:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188B121:         var_100 = &H16
  loc_188B147:         var_174 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_188B163:         var_17C = "Select GF.Docid,GF.GuestProf from GuestFolio GF Inner Join RoomOcc RO On GF.DocId=RO.DocId where GF.FolioNo=" & CStr(var_174)
  loc_188B16A:         var_1E8 = var_17C & " And RO.ChkOutDate Is Null"
  loc_188B173:         unk_55E2CB.Execute var_1E8, var_138, -1
  loc_188B17E:         Set var_CC = var_160
  loc_188B1AE:         If (var_CC.RecordCount > 0) Then
  loc_188B1CB:           var_160 = var_CC.Fields.Item("GuestProf")
  loc_188B1DC:           var_C8 = CStr(var_160.Value)
  loc_188B1E9:         End If
  loc_188B1F7:         Set var_114 = Me.Txt
  loc_188B1FD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1E8, var_160, var_174, var_100)
  loc_188B205:         var_E0 = var_160.Text
  loc_188B21E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_228, Me.Txt)
  loc_188B226:         var_114 = var_168.Text
  loc_188B246:         Set var_23C = Me.Txt
  loc_188B24C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_240)
  loc_188B25B:         Proc_6_7_F25D88(var_1C4, CVar(var_240))
  loc_188B28C:         var_1B4 = CVar(CLng(var_AA)) 'Long
  loc_188B294:         var_1FC = CVar(CLng(&H10)) 'Long
  loc_188B2B3:         var_304 = CVar(CLng(var_AA)) 'Long
  loc_188B2B8:         var_324 = 1
  loc_188B2DB:         var_360 = CVar(CLng(var_AA)) 'Long
  loc_188B2E0:         var_380 = &H14
  loc_188B303:         var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_188B308:         var_3D4 = &H18
  loc_188B34A:         var_438 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F92078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_188B353:         var_4B8 = CVar(CLng(var_AA)) 'Long
  loc_188B358:         var_4D8 = 1
  loc_188B365:         Set var_4EC = Me.FGrid
  loc_188B36B:         var_4FC = var_4EC.TextMatrix)
  loc_188B393:         var_590 = Me.FGrid.TextMatrix)
  loc_188B3AD:         Set var_5D4 = Me.LTxt
  loc_188B3B3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_5D8, var_5DC, var_590, 2, CVar(CLng(var_AA)), var_4FC)
  loc_188B3BB:         var_4D8 = var_5D8.Caption
  loc_188B3CF:         var_62C = CVar(CLng(var_AA)) 'Long
  loc_188B3D4:         var_64C = 8
  loc_188B401:         var_6C4 = CVar(CLng(var_AA)) 'Long
  loc_188B406:         var_6E4 = &H11
  loc_188B433:         var_75C = CVar(CLng(var_AA)) 'Long
  loc_188B438:         var_77C = &H12
  loc_188B474:         var_820 = CVar(CLng(var_AA)) 'Long
  loc_188B479:         var_840 = &H12
  loc_188B4BB:         var_8D4 = CVar(CLng(var_AA)) 'Long
  loc_188B4C0:         var_8F4 = &H12
  loc_188B521:         var_A10 = Me.FGrid.TextMatrix)
  loc_188B548:         var_AA4 = Me.FGrid.TextMatrix)
  loc_188B56F:         var_B38 = Me.FGrid.TextMatrix)
  loc_188B5A7:         Proc_6_7_F25D88(var_BEC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_B38, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_AA4)
  loc_188B5C2:         Set var_C60 = Me.FGrid
  loc_188B5C8:         var_C70 = var_C60.TextMatrix)
  loc_188B5D9:         Proc_6_17_EAA2B0(var_C90, CVar(CStr(var_C70)), &H1A, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_188B5F9:         var_D14 = Me.FGrid.TextMatrix)
  loc_188B604:         var_D24 = CVar(CStr(var_D14)) 'String
  loc_188B60A:         Proc_6_7_F25D88(var_D34, var_D24, CVar(CLng(&HB)), CVar(CLng(var_AA)), var_A10)
  loc_188B61D:         Proc_6_7_F25D88(var_DC4, Date, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_188B630:         Set var_E38 = Me.Txt
  loc_188B636:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E3C, var_E40)
  loc_188B63E:         var_918 = var_E3C.Text
  loc_188B649:         var_E80 = 0
  loc_188B676:         unk_55E2CB.Execute "SELECT BookDocId FROM HallSale1 WHERE DocId='" & var_E40 & "'", var_E68, -1
  loc_188B67E:         var_E6C = var_E6C.Fields
  loc_188B686:         var_E80 = var_E70.Item(var_E70)
  loc_188B68E:         var_E84 = var_E84.Value
  loc_188B6C0:         Proc_6_39_E7C810(var_F38, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AA)))
  loc_188B6D9:         var_128 = "Insert Into PAYCHARGEH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_188B6E7:         var_17C = var_128 & "RoomType,RoomNo,FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,ContraDocId,batchno,LogSite_Code) Values ("
  loc_188B708:         var_21C = var_17C & "'" & var_1E8 & "'," & CStr(var_AC)
  loc_188B727:         var_230 = var_21C & ",'" & global_120 & "','" & var_228
  loc_188B746:         var_E0 = "',"
  loc_188B765:         var_290 = CVar(var_230 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & var_E0 & var_1C4 & ",'" & CVar(Format$(Time, "HH:mm")) 
  loc_188B7B0:         var_51C = var_290 & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & var_438 & "','" & CVar(var_94) & "','" & CVar(CStr(var_4FC)) 
  loc_188B7F5:         var_6B4 = var_51C & "','" & CVar(CStr(var_590)) & "'," & CVar(Val(var_5DC)) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_188B820:         var_8A4 = var_6B4 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5) & "','" & LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)) 
  loc_188B829:         var_8C4 = var_8A4 & "','" 
  loc_188B854:         var_A20 = CVar(CStr(var_A10)) 'String
  loc_188B86B:         var_AC4 = var_8C4 & Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5)) & "'," & CVar(PTableOrRoomNo) & ",'" & var_A20 & "','" & CVar(CStr(var_AA4)) 
  loc_188B888:         var_B78 = var_AC4 & "','" & CVar(CStr(var_B38)) & "'," 
  loc_188B8CB:         var_DA4 = var_B78 & var_BEC & "," & var_C90 & "," & var_D34 & ",'" & CVar(MemVar_1F920C8) & "'," 
  loc_188B8E8:         var_E14 = var_DA4 & var_DC4 & ",'A','" & CVar(global_52) 
  loc_188B932:         unk_55E2CB.Execute CStr(var_E14 & "','" & var_E94 & "'," & var_F38 & ",'" & CVar(MemVar_1F92078) & "')"), var_FCC, -1
  loc_188BAA2:         Set var_114 = Me.Txt
  loc_188BAA8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, var_FD0)
  loc_188BAB0:         var_E94 = var_160.Text
  loc_188BAC3:         Set var_164 = Me.Txt
  loc_188BAC9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_21C)
  loc_188BAD1:         var_8F4 = var_168.Text
  loc_188BAF1:         Set var_23C = Me.Txt
  loc_188BAF7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_240)
  loc_188BB06:         Proc_6_7_F25D88(var_1C4, CVar(var_240))
  loc_188BB22:         var_270 = "HH:mm"
  loc_188BB5E:         var_314 = CVar(CLng(var_AA)) 'Long
  loc_188BB76:         var_418 = Me.FGrid.TextMatrix)
  loc_188BB90:         Set var_3E8 = Me.LTxt
  loc_188BB96:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_4EC, var_230, var_418, 2)
  loc_188BB9E:         var_314 = var_4EC.Caption
  loc_188BBB2:         var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_188BBB7:         var_3D4 = 8
  loc_188BBE4:         var_478 = CVar(CLng(var_AA)) 'Long
  loc_188BBE9:         var_4B8 = &H12
  loc_188BC25:         var_52C = CVar(CLng(var_AA)) 'Long
  loc_188BC2A:         var_55C = &H12
  loc_188BC84:         var_72C = Me.FGrid.TextMatrix)
  loc_188BCC0:         var_7E0 = Me.FGrid.TextMatrix)
  loc_188BCDA:         Proc_6_7_F25D88(var_8C4, Date, var_7E0, &H16, CVar(CLng(var_AA)), var_72C, &H12, CVar(CLng(var_AA)))
  loc_188BD1A:         var_16C = "Insert Into PAYCHARGE (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,BillAmount,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LogSite_Code)Values " & "('"
  loc_188BD34:         var_210 = var_16C & var_128 & "'," & CStr(var_AC)
  loc_188BD6E:         var_158 = CVar(var_210 & ",'" & global_120 & "'," & var_21C & ",'" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_188BDC0:         var_2F4 = var_158 & "'," & var_1C4 & ",'" & CVar(Format$(Time, var_270)) & "','" & CVar(var_C8) & "','" & CVar(var_94) & "','" 
  loc_188BE03:         var_4FC = var_2F4 & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(var_418)) & "'," & CVar(Val(var_230)) & ",0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_188BE23:         var_6B4 = var_4FC & ",'" & Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5) & "','" & LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)) 
  loc_188BE63:         var_884 = var_6B4 & "','" & Right(CVar(CStr(var_72C)), 5) & "'," & CVar(CStr(var_7E0)) & ",'','',0,''," & "'" & CVar(MemVar_1F920C8) 
  loc_188BEAC:         var_99C = var_884 & "'," & var_8C4 & ",'A','" & CVar(global_52) & "','" & var_CC.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F92078) 
  loc_188BEC3:         unk_55E2CB.Execute CStr(var_99C & "')"), var_A10, -1
  loc_188BF9F:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188BFA4:         var_100 = &H12
  loc_188BFE6:         var_B4 = CStr(Trim(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5)))
  loc_188BFFB:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188C000:         var_100 = &H12
  loc_188C042:         var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_188C057:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188C05C:         var_100 = &H16
  loc_188C084:         var_BC = CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_188C094:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188C099:         var_100 = &H12
  loc_188C0D5:         var_B0 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_188C0EA:         var_E0 = CVar(CLng(var_AA)) 'Long
  loc_188C0EF:         var_100 = 8
  loc_188C10D:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_188C115:         var_174 = Val(var_128)
  loc_188C11F:         var_C4 = (var_C4 + var_174)
  loc_188C139:         Set var_114 = Me.Txt
  loc_188C13F:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_210, var_C4, var_174, var_100, var_E0)
  loc_188C147:         var_124 = var_160.Text
  loc_188C15A:         Set var_164 = Me.Txt
  loc_188C160:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_100, var_E0)
  loc_188C168:         var_100 = var_168.Text
  loc_188C175:         var_1014 = Val(var_128)
  loc_188C196:         Set var_23C = Me.Txt
  loc_188C19C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_240, var_21C, var_1014)
  loc_188C1A4:         var_E0 = var_240.Text
  loc_188C1D4:         var_1A4 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_188C1FB:         var_2B4 = var_98.Fields.Item("Code").Value
  loc_188C20E:         Set var_394 = Me.LTxt
  loc_188C214:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_3E8, var_16C, 1)
  loc_188C21C:         1 = var_3E8.Caption
  loc_188C229:         var_101C = Val(var_16C)
  loc_188C230:         var_100 = CVar(CLng(var_AA)) 'Long
  loc_188C235:         var_1B4 = 8
  loc_188C248:         var_1C4 = Me.FGrid.TextMatrix)
  loc_188C25B:         var_1024 = Val(CStr(var_1C4))
  loc_188C26C:         var_1E4 = Date
  loc_188C274:         var_250 = Date
  loc_188C27C:         var_260 = Now
  loc_188C285:         Set var_580 = Me.TopCtrl1
  loc_188C28B:         Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(Val(var_BC))
  loc_188C2AE:         var_1E8 = CStr(var_270)
  loc_188C2BD:         var_2A0 = IIf((var_1E8 = "Add"), "A", "E")
  loc_188C2DC:         var_5D8 = var_CC.Fields.Item("DocID")
  loc_188C2E4:         var_2C4 = var_5D8.Value
  loc_188C2EE:         var_E40 = 0
  loc_188C2F9:         var_97C = 0
  loc_188C30C:         var_70C = 0
  loc_188C317:         var_674 = 0
  loc_188C354:         var_34C = vbNullString
  loc_188C35D:         var_238 = vbNullString
  loc_188C366:         var_234 = vbNullString
  loc_188C394:         var_230 = "Room"
  loc_188C3A8:         var_228 = vbNullString
  loc_188C3B1:         var_224 = vbNullString
  loc_188C3F5:         Proc_96_8_1CC2560(MemVar_1F92078 & "TOUT", var_210, var_AC, global_120, CLng(var_1014), MemVar_1F92070, CStr(Trim(CVar(Me.LblVPrefix))), CDate(var_21C))
  loc_188C470:       Else
  loc_188C47E:         Set var_114 = Me.Txt
  loc_188C484:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1E8, CStr(var_1A4), var_224)
  loc_188C48C:         var_228 = var_160.Text
  loc_188C49F:         Set var_164 = Me.Txt
  loc_188C4A5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_228, var_94)
  loc_188C4AD:         CStr(var_2B4) = var_168.Text
  loc_188C4BD:         var_138 = Trim(CVar(Me.LblVPrefix))
  loc_188C4CD:         Set var_23C = Me.Txt
  loc_188C4D3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_240)
  loc_188C4E2:         Proc_6_7_F25D88(var_1C4, CVar(var_240))
  loc_188C513:         var_1B4 = CVar(CLng(var_AA)) 'Long
  loc_188C51B:         var_1FC = CVar(CLng(&H10)) 'Long
  loc_188C53A:         var_304 = CVar(CLng(var_AA)) 'Long
  loc_188C53F:         var_324 = 1
  loc_188C562:         var_360 = CVar(CLng(var_AA)) 'Long
  loc_188C567:         var_380 = &H14
  loc_188C58A:         var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_188C58F:         var_3D4 = &H18
  loc_188C5D1:         var_438 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F92078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_188C5DA:         var_4B8 = CVar(CLng(var_AA)) 'Long
  loc_188C5DF:         var_4D8 = 1
  loc_188C5F2:         var_4FC = Me.FGrid.TextMatrix)
  loc_188C61A:         var_590 = Me.FGrid.TextMatrix)
  loc_188C634:         Set var_5D4 = Me.LTxt
  loc_188C63A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_5D8, var_5DC, var_590, 2, CVar(CLng(var_AA)), var_4FC)
  loc_188C642:         var_4D8 = var_5D8.Caption
  loc_188C656:         var_62C = CVar(CLng(var_AA)) 'Long
  loc_188C65B:         var_64C = 8
  loc_188C688:         var_6C4 = CVar(CLng(var_AA)) 'Long
  loc_188C68D:         var_6E4 = &H11
  loc_188C6B3:         var_FE4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_188C6D9:         var_884 = Me.FGrid.TextMatrix)
  loc_188C700:         var_918 = Me.FGrid.TextMatrix)
  loc_188C727:         var_958 = Me.FGrid.TextMatrix)
  loc_188C75F:         Proc_6_7_F25D88(var_A20, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_958, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_918)
  loc_188C791:         Proc_6_17_EAA2B0(var_AC4, CVar(CStr(Me.FGrid.TextMatrix))), &H1A, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_188C7C2:         Proc_6_7_F25D88(var_B78, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_884)
  loc_188C7D5:         Proc_6_7_F25D88(var_C70, Date, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_188C7E8:         Set var_BBC = Me.Txt
  loc_188C7EE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_C60, var_E40)
  loc_188C801:         var_CD0 = 0
  loc_188C82E:         unk_55E2CB.Execute "SELECT BookDocId FROM HallSale1 WHERE DocId='" & var_E40 & "'", var_D14, -1
  loc_188C836:         var_D04 = var_D04.Fields
  loc_188C83E:         var_CD0 = var_E38.Item(var_E38)
  loc_188C846:         var_E3C = var_E3C.Value
  loc_188C878:         Proc_6_39_E7C810(var_DA4, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AA)))
  loc_188C891:         var_128 = "Insert Into PAYCHARGEH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_188C89F:         var_17C = var_128 & "RoomType,RoomNo,FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,ContraDocId,batchno,LogSite_Code) Values ("
  loc_188C8F4:         var_148 = CVar(var_17C & "'" & var_1E8 & "'," & CStr(var_AC) & ",'" & global_120 & "','" & var_228 & "','" & MemVar_1F92070 & "','") 'String
  loc_188C8FA:         var_158 = var_148 & var_138 
  loc_188C8FE:         var_E0 = "',"
  loc_188C93A:         var_2F4 = var_158 & var_E0 & var_1C4 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_188C990:         var_5FC = var_2F4 & var_438 & "','" & CVar(var_94) & "','" & CVar(CStr(var_4FC)) & "','" & CVar(CStr(var_590)) & "'," & CVar(Val(var_5DC)) 
  loc_188C9D7:         var_7B0 = var_5FC & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_C60.Text) & ",'" & CVar(global_144) & "'," 
  loc_188CA28:         var_938 = var_7B0 & "'" & CVar(global_148) & "',''," & CVar(PTableOrRoomNo) & ",'" & CVar(CStr(var_884)) & "','" & CVar(CStr(var_918)) 
  loc_188CA7F:         var_BEC = var_938 & "','" & CVar(CStr(var_958)) & "'," & var_A20 & "," & var_AC4 & "," & var_B78 & ",'" & CVar(MemVar_1F920C8) 
  loc_188CAD8:         var_DD4 = var_BEC & "'," & var_C70 & ",'A','" & CVar(global_52) & "','" & var_D24 & "'," & var_DA4 & ",'" & CVar(MemVar_1F92078) 
  loc_188CAEF:         unk_55E2CB.Execute CStr(var_DD4 & "')"), var_E14, -1
  loc_188CC31:       End If
  loc_188CC31:     End If
  loc_188CC31:   End If
  loc_188CC34: Next var_180 'Integer
  loc_188CC3E: Set var_98 = Nothing
  loc_188CC46: Set var_9C = Nothing
  loc_188CC4E: Set var_A0 = Nothing
  loc_188CC56: Set var_A4 = Nothing
  loc_188CC5E: Set var_CC = Nothing
  loc_188CC67: unk_55E2CB.CommitTrans
  loc_188CC6C: Call Proc_137_90_1C5F1A4()
  loc_188CC75: var_86 = CByte(0) 'Byte
  loc_188CC7F: var_1030 = global_112
  loc_188CC8B: If (var_1030 = 6) Then
  loc_188CC9C:   var_E0 = "Want Print Receipt ?"
  loc_188CCBD:   If (MsgBox(var_E0, &H24, var_138, var_148, var_158) = 6) Then
  loc_188CCCE:     Set var_114 = Me.Txt
  loc_188CCD4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160)
  loc_188CCE7:     Call 0.Method_arg_50 (var_128)
  loc_188CD03:     Proc_263_2_12EC99C(var_160.Text, "W")
  loc_188CD18:   End If
  loc_188CD18: End If
  loc_188CD29: If (OpenMode = 1) Then
  loc_188CD39:   Me.Global.Unload Me
  loc_188CD41:   Exit Sub
  loc_188CD42: End If
  loc_188CD4D: Me.Requery -1
  loc_188CD5D: Me.Requery -1
  loc_188CD81: Set var_114 = Me.Txt
  loc_188CD87: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "SearchCode='", 0)
  loc_188CD8F: 1 = var_160.Text
  loc_188CDA8: Me.Find var_E0 & var_128 & "'", var_128, var_1030
  loc_188CDC1: Set var_114 = Me.TopCtrl1
  loc_188CDC7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005()
  loc_188CDE0: If (CStr() = "Add") Then
  loc_188CDE3:   Call TopCtrl1_UnknownEvent_A()
  loc_188CDE8:   Exit Sub
  loc_188CDE9: End If
  loc_188CDFE: var_128 = "INI"
  loc_188CE0C: Call Proc_137_73_F76A98(Proc_5_1_100CB50(var_128, Me))
  loc_188CE17: Call Proc_137_78_FB6F3C(global_60)
  loc_188CE1C: Call Proc_137_76_154FB64()
  loc_188CE21: Exit Sub
  loc_188CE22: ' Referenced from: 188A9C8
  loc_188CE2B: If (CInt(var_86) = 1) Then
  loc_188CE34:   unk_55E2CB.RollbackTrans
  loc_188CE39: End If
  loc_188CE41: Set var_114 = Err()
  loc_188CE47: Call 0.Method_arg_2C (var_128)
  loc_188CE60: MsgBox(CVar(var_128), &H10, var_138, var_148, var_158)
  loc_188CE73: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF90CC
  'Data Table: 55E2AC
  loc_EF900C: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF900F:   Call DGTable_UnknownEvent_9()
  loc_EF9014: End If
  loc_EF9030: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_EF9033:   Call DGEmp_UnknownEvent_9()
  loc_EF9038: End If
  loc_EF9054: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EF9057:   Call DGPayType_UnknownEvent_9()
  loc_EF905C: End If
  loc_EF9078: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_EF907B:   Call DGRoom_UnknownEvent_9()
  loc_EF9080: End If
  loc_EF909C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EF909F:   Call DGCompany_UnknownEvent_9()
  loc_EF90A4: End If
  loc_EF90C0: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_EF90C3:   Call DGMember_UnknownEvent_9()
  loc_EF90C8: End If
  loc_EF90C8: Exit Sub
End Sub

Private Sub HeadExit_UnknownEvent_9 'E1BC08
  'Data Table: 55E2AC
  Dim arg_34FF As Double
  loc_E1BBFD: Me.Global.Unload Me
  loc_E1BC05: Exit Sub
  loc_E1BC06: arg_34FF = 
End Sub

Private Sub Form_Load() '135C95C
  'Data Table: 55E2AC
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_CC As String
  Dim unk_55E2CB As Connection15
  Dim var_D4 As String
  Dim var_DC As Long
  Dim var_D0 As Variant
  Dim Me As Recordset15
  loc_135C128: On Error Goto loc_135C916
  loc_135C132: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_135C145: Me.FrCCDet.BackColor = CLng(MemVar_1F921B0)
  loc_135C15B: Me.FrChqDet.BackColor = CLng(MemVar_1F921B0)
  loc_135C171: Me.FrTxnNo.BackColor = CLng(MemVar_1F921B0)
  loc_135C187: Me.FrComp.BackColor = CLng(MemVar_1F921B0)
  loc_135C19D: Me.FrMem.BackColor = CLng(MemVar_1F921B0)
  loc_135C1B3: Me.FrSendRoom.BackColor = CLng(MemVar_1F921B0)
  loc_135C1C9: Me.FrEmp.BackColor = CLng(MemVar_1F921B0)
  loc_135C1DF: Me.FrRem.BackColor = CLng(MemVar_1F921B0)
  loc_135C1F5: Me.FrRest.BackColor = CLng(MemVar_1F921B0)
  loc_135C210: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_135C22B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_135C23D: Set var_94 = Me.TopCtrl1
  loc_135C243: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B("AEDP")
  loc_135C251: Call 0.Method_arg_50 (var_B8)
  loc_135C259: var_C8 = CVar(var_B8) 'String
  loc_135C261: Set var_94 = Me.TopCtrl1
  loc_135C267: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030007(var_C8)
  loc_135C2AE: unk_55E2CB.Execute "Select * from Enviro where Logsite_code='" & MemVar_1F92078 & "'", var_C8, -1
  loc_135C2B9: Set var_90 = var_94
  loc_135C2DD: var_B8 = "SELECT DP.PayCode as code, RevMast.name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F92078
  loc_135C2ED: unk_55E2CB.Execute var_B8 & "') AND DP.restcode='BANQ' ORDER BY NAME ", var_C8, -1
  loc_135C2FE: Set global_64 = var_94
  loc_135C31C: CVarUnk
  loc_135C321: VerifyVarObj
  loc_135C32D: LateIdStAd
  loc_135C351: unk_55E2CB.Execute "SELECT Code,Name FROM Employee ORDER BY Name", var_C8, -1
  loc_135C379: CVarUnk
  loc_135C37E: VerifyVarObj
  loc_135C38A: LateIdStAd
  loc_135C3AC: var_B8 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on (RoomOcc.RoomNo=T.Code and RoomOcc.LogSite_Code=T.LogSite_Code) where T.LogSite_Code in ('" & MemVar_1F92078
  loc_135C3BC: unk_55E2CB.Execute var_B8 & "','HO') and T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code", var_C8, -1
  loc_135C3EB: CVarUnk
  loc_135C3F0: VerifyVarObj
  loc_135C3FC: LateIdStAd
  loc_135C425: var_CC = "Select SubCode as Code,Name From SubGroup where LogSite_Code in ('" & MemVar_1F92078 & "','HO') and CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_135C42E: unk_55E2CB.Execute var_CC, var_C8, -1
  loc_135C45D: CVarUnk
  loc_135C462: VerifyVarObj
  loc_135C46E: LateIdStAd
  loc_135C497: var_CC = "Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_135C4AE: unk_55E2CB.Execute var_CC & MemVar_1F92078 & "') Order By Name", var_C8, -1
  loc_135C4E1: CVarUnk
  loc_135C4E6: VerifyVarObj
  loc_135C4EC: Set var_94 = Me.DGMember
  loc_135C4F2: LateIdStAd
  loc_135C50C: Call 0.Method_arg_38 (MemVar_1F923AC, var_94, Me.DGCompany, var_94, var_94, Me.DGRoom, var_94, var_94)
  loc_135C51D: Call 0.Method_arg_3C (MemVar_1F920EC, Me.DGEmp, var_94, var_94)
  loc_135C52E: Call 0.Method_arg_54 (MemVar_1F9206C, Me.DGPayType, var_94)
  loc_135C53F: Call 0.Method_arg_1C (MemVar_1F92070, var_94)
  loc_135C550: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_135C561: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_135C572: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_135C583: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_135C594: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_135C5A5: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_135C5BF: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_135C5CD: Set var_94 = MemVar_1F92044
  loc_135C5DC: Call 0.Method_Form_Load8 (var_94)
  loc_135C5F2: Me.DGMember.Clone
  loc_135C5FD: Set var_D0 = var_94
  loc_135C60C: Call 0.Method_arg_50 (var_D0, -1)
  loc_135C61E: var_DC = global_112
  loc_135C62A: If (var_DC = 6) Then
  loc_135C652:   var_D4 = "SELECT Distinct Docid as SearchCode FROM PAYCHARGEH Where LogSite_Code in ('" & MemVar_1F92078 & "') and Vtype='" & hAdvanceDepDialog.AdvType
  loc_135C662:   Me.Connection15.Execute var_D4 & "'", var_C8, -1
  loc_135C673:   Set global_60 = var_94
  loc_135C68C: End If
  loc_135C698: Set var_94 = Me
  loc_135C6AF: Call Proc_137_73_F76A98(Proc_5_1_100CB50("INI", var_94, global_60, var_94), var_DC)
  loc_135C6BA: Call Proc_137_75_121D450(var_94)
  loc_135C6BF: Call Proc_137_81_120E18C(global_64)
  loc_135C6D0: If (global_108 = 2) Then
  loc_135C6D3:   Call Proc_137_76_154FB64()
  loc_135C6D8: End If
  loc_135C6E4: If (global_108 = 1) Then
  loc_135C6F0:   Set var_94 = Me.TopCtrl1
  loc_135C6F6:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_135C70B:   Set var_94 = Me.Txt
  loc_135C711:   Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_135C719:   var_D0.Visible = False
  loc_135C725:   Call TopCtrl1_UnknownEvent_A()
  loc_135C741:   If (Me.RecordCount > 0) Then
  loc_135C74A:     Me.MoveFirst
  loc_135C777:     Me.Find "SearchCode='" & global_124 & "'", 0, 1
  loc_135C797:     If (Me.EOF = 0) Then
  loc_135C79A:       var_A4 = "Edit"
  loc_135C7A4:       Set var_94 = Me.TopCtrl1
  loc_135C7AA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005(var_A4)
  loc_135C7B2:       Call Proc_137_76_154FB64(var_A4)
  loc_135C7BD:       Call Proc_137_83_11AF1F8(global_152)
  loc_135C7C2:     End If
  loc_135C7C2:   End If
  loc_135C7D3:   Set var_94 = Me.Txt
  loc_135C7D9:   Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_135C7E1:   var_D0.Text = global_124
  loc_135C821:   Set var_94 = Me.Txt
  loc_135C827:   Call 0.Method_Form_Load0 (CInt(1), var_D0)
  loc_135C82F:   var_D0.Text = CStr(Val(CStr(Right(global_124, 8))))
  loc_135C873:   Me.LblVPrefix.Caption = CStr(Mid(global_124, 9, 5))
  loc_135C89B:   Set var_94 = Me.LTxt
  loc_135C8A1:   Call 0.Method_Form_Load0 (CInt(&H13), var_D0)
  loc_135C8A9:   var_D0.Caption = PBillAmt
  loc_135C8BE:   var_B8 = hAdvanceDepDialog.PersonCode
  loc_135C8D1:   Set var_94 = Me.Txt
  loc_135C8D7:   Call 0.Method_Form_Load0 (CInt(4), var_D0)
  loc_135C8DF:   var_D0.Text = var_B8
  loc_135C8EE: End If
  loc_135C8EE: Call Proc_137_86_10A62C0()
  loc_135C8F8: Set var_8C = Nothing
  loc_135C903: Call 0.Method_MeC (CDbl(9200))
  loc_135C910: Call 0.Method_Me4 (CDbl(7600))
  loc_135C915: Exit Sub
  loc_135C916: ' Referenced from: 135C128
  loc_135C91E: Set var_94 = Err()
  loc_135C924: Call 0.Method_arg_2C (var_B8)
  loc_135C945: MsgBox(CVar(var_B8), &H40, "Information", var_104, var_124)
  loc_135C958: Exit Sub
  loc_135C959: Exit Sub
End Sub

Private Sub Form_Resize() 'E71954
  'Data Table: 55E2AC
  loc_E718FE: Call 0.Method_arg_50 (var_88)
  loc_E71910: Me.LblFormCaption.Caption = var_88
  loc_E71929: Me.LblFormCaption.Left = CDbl(0)
  loc_E71937: Call 0.Method_arg_100 (var_90)
  loc_E71949: Me.LblFormCaption.Width = var_90
  loc_E71951: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6D1B8
  'Data Table: 55E2AC
  loc_E6D167: Set global_72 = Nothing
  loc_E6D179: Set global_60 = Nothing
  loc_E6D18B: Set global_64 = Nothing
  loc_E6D19D: Set global_68 = Nothing
  loc_E6D1AF: Set global_84 = Nothing
  loc_E6D1B6: Exit Sub
End Sub

Private Sub Form_Activate() 'F7B1E0
  'Data Table: 55E2AC
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_94 As Frame
  loc_F7B0AF: If (OpenMode = 1) Then
  loc_F7B0B5:   var_88 = OpenType
  loc_F7B0BD:   var_90 = var_88
  loc_F7B0C9:   If Not (var_90 = 5) Then
  loc_F7B0D5:     If (var_90 = 6) Then
  loc_F7B0D8:     End If
  loc_F7B0E3:     Set var_94 = Me.Txt
  loc_F7B0E9:     Call 0.Method_Form_Activate0 (CInt(3), var_98)
  loc_F7B0F1:     var_98.SetFocus
  loc_F7B10B:     Set var_94 = Me.Txt
  loc_F7B111:     Call 0.Method_Form_Activate0 (CInt(3), var_98, var_88)
  loc_F7B119:     var_90 = var_98.Left
  loc_F7B12A:     Set var_BC = Me.DGPayType
  loc_F7B130:     var_BC.Left = CVar(var_88)
  loc_F7B14C:     Set var_98 = Me.Txt
  loc_F7B152:     Call 0.Method_Form_Activate0 (CInt(3), var_BC)
  loc_F7B16D:     Set var_C4 = Me.Txt
  loc_F7B173:     Call 0.Method_Form_Activate0 (CInt(3), var_C8)
  loc_F7B1A1:     var_A8 = CVar((((Me.FrRest.Top + var_BC.Top) + var_C8.Height) + CDbl(&HF))) 'Single
  loc_F7B1B0:     Me.DGPayType.Top = CVar(Me.FrRest.Top)
  loc_F7B1C4:   End If
  loc_F7B1CC:   Call 0.Method_arg_7C (CDbl(1450))
  loc_F7B1D9:   Call 0.Method_arg_74 (CDbl(1600))
  loc_F7B1DE: End If
  loc_F7B1DE: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EFE61C
  'Data Table: 55E2AC
  Dim var_B4 As DataGrid
  loc_EFE564: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_EFE598:   Set var_B4 = Me.DGEmp
  loc_EFE5BD:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B4.Visible) = 0)) Then
  loc_EFE5CD:     Me.var_B4.Unload Me
  loc_EFE5D5:     Exit Sub
  loc_EFE5D6:   End If
  loc_EFE5D6: End If
  loc_EFE5F4: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_108 = 1)) Then
  loc_EFE5F7:   Call TopCtrl1_UnknownEvent_16()
  loc_EFE5FC:   Exit Sub
  loc_EFE5FD: End If
  loc_EFE611: Proc_6_88_FE81B4(Me, KeyCode)
  loc_EFE619: Exit Sub
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E1F770
  'Data Table: 55E2AC
  loc_E1F761: Set var_A8 = Me.cmdDelete
  loc_E1F767: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2E(&HFF0000)
  loc_E1F76F: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_0 'E1FDB0
  'Data Table: 55E2AC
  loc_E1FDA1: Set var_A8 = Me.cmdDelete
  loc_E1FDA7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2E(&HFF)
  loc_E1FDAF: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_1 'E1FC70
  'Data Table: 55E2AC
  loc_E1FC61: Set var_A8 = Me.cmdDelete
  loc_E1FC67: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2E(&HFF0000)
  loc_E1FC6F: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_9 'E5DF34
  'Data Table: 55E2AC
  loc_E5DEF0: Set var_88 = Me.cmdDelete
  loc_E5DEF6: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69()
  loc_E5DF07: If (CInt() = 1) Then
  loc_E5DF0A:   Call Proc_137_77_11367C8()
  loc_E5DF19:   Set var_88 = Me.cmdDelete
  loc_E5DF1F:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69(0)
  loc_E5DF27:   Call Proc_137_74_F985D4()
  loc_E5DF2C:   Call Form_Load()
  loc_E5DF31: End If
  loc_E5DF31: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_C 'E1F8B0
  'Data Table: 55E2AC
  loc_E1F8A1: Set var_A8 = Me.cmdDelete
  loc_E1F8A7: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2E(&HFF)
  loc_E1F8AF: Exit Sub
End Sub

Private Sub CmdPrint_UnknownEvent_9 'EB968C
  'Data Table: 55E2AC
  Dim var_9C As TextBox
  Dim var_88 As Variant
  loc_EB9604: Set var_88 = Me.CmdPrint
  loc_EB960A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_69()
  loc_EB961B: If (CInt() = 1) Then
  loc_EB962C:   Set var_88 = Me.Txt
  loc_EB9632:   Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(0), var_9C)
  loc_EB9645:   Call 0.Method_arg_50 (var_A0)
  loc_EB9661:   Proc_263_2_12EC99C(var_9C.Text, "W")
  loc_EB9683:   Me.Global.Unload Me
  loc_EB968B: End If
  loc_EB968B: Exit Sub
End Sub

Public Function global_52Get() '560134
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '560143
  global_52 = Value
End Sub

Public Function global_56Get() '560152
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '560161
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC55A4
  'Data Table: 55E2AC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC551A: On Error Goto loc_EC555F
  loc_EC5523: Me.MoveFirst
  loc_EC553D: var_8C = "Searchcode='" & MyValue
  loc_EC554D: Me.Find var_8C & "'", 0, 1
  loc_EC5559: Call Proc_137_76_154FB64(var_A0)
  loc_EC555E: Exit Sub
  loc_EC555F: ' Referenced from: EC551A
  loc_EC5567: Set var_A4 = Err()
  loc_EC556D: Call 0.Method_arg_2C (var_8C)
  loc_EC558E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC55A1: Exit Sub
  loc_EC55A2: Exit Sub
End Sub

Public Property Get OpenMode() 'E07E80
  'Data Table: 55E2AC
  loc_E07E79: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E00B18
  'Data Table: 55E2AC
  loc_E00B15: Exit Sub
  loc_E00B16: Set arg_3478 = vNewValue
End Sub

Public Property Get OpenType() 'E07E40
  'Data Table: 55E2AC
  loc_E07E39: OpenType = global_112
End Sub

Public Property Let OpenType(vNewValue) 'E00F8C
  'Data Table: 55E2AC
  loc_E00F86: global_112 = vNewValue
  loc_E00F89: Exit Sub
End Sub

Public Property Get AdvType() 'E11134
  'Data Table: 55E2AC
  loc_E11128: var_88 = global_120
  loc_E1112B: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E111C4
  'Data Table: 55E2AC
  loc_E111BC: global_120 = vNewValue
  loc_E111C0: Exit Sub
End Sub

Public Property Get IdNo() 'E11254
  'Data Table: 55E2AC
  loc_E11248: var_88 = global_116
  loc_E1124B: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E1129C
  'Data Table: 55E2AC
  loc_E11294: global_116 = vNewValue
  loc_E11298: Exit Sub
End Sub

Public Property Get PersonCode() 'E11404
  'Data Table: 55E2AC
  loc_E113F8: var_88 = global_128
  loc_E113FB: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E114DC
  'Data Table: 55E2AC
  loc_E114D4: global_128 = vNewValue
  loc_E114D8: Exit Sub
End Sub

Public Property Get pDocId() 'E115FC
  'Data Table: 55E2AC
  loc_E115F0: var_88 = global_124
  loc_E115F3: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E11644
  'Data Table: 55E2AC
  loc_E1163C: global_124 = vNewValue
  loc_E11640: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E116D4
  'Data Table: 55E2AC
  loc_E116C8: var_88 = global_132
  loc_E116CB: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E11764
  'Data Table: 55E2AC
  loc_E1175C: global_132 = vNewValue
  loc_E11760: Exit Sub
End Sub

Public Property Get PRoomCat() 'E117F4
  'Data Table: 55E2AC
  loc_E117E8: var_88 = global_156
  loc_E117EB: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E1183C
  'Data Table: 55E2AC
  loc_E11834: global_156 = vNewValue
  loc_E11838: Exit Sub
End Sub

Public Property Get PRoomtype() 'E11884
  'Data Table: 55E2AC
  loc_E11878: var_88 = global_160
  loc_E1187B: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E118CC
  'Data Table: 55E2AC
  loc_E118C4: global_160 = vNewValue
  loc_E118C8: Exit Sub
End Sub

Public Property Get PBillAmt() 'E119EC
  'Data Table: 55E2AC
  loc_E119E2: var_88 = CStr(global_136)
  loc_E119E5: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E11B54
  'Data Table: 55E2AC
  loc_E11B4E: global_136 = CDbl(vNewValue)
  loc_E11B51: Exit Sub
End Sub

Public Sub Proc_137_73_F76A98(arg_C) 'F76A98
  'Data Table: 55E2AC
  Dim var_98 As TextBox
  loc_F76956: Set var_8C = Me.Txt
  loc_F7695C: Call 0.Method_Proc_137_73_F76A988 (var_8E, var_86)
  loc_F7696C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F76999:   If ((((CInt(var_86) <> &H13) And (CInt(var_86) <> &H14)) And (CInt(var_86) <> &H15)) And (CInt(var_86) <> &H16)) Then
  loc_F769AC:     Set var_8C = Me.Txt
  loc_F769B2:     Call 0.Method_Proc_137_73_F76A980 (CInt(var_86), var_98)
  loc_F769BA:     var_98.Enabled = arg_C
  loc_F769C6:   End If
  loc_F769C9: Next var_92 'Byte
  loc_F769DB: If (global_108 = 1) Then
  loc_F769EB:   Set var_8C = Me.Txt
  loc_F769F1:   Call 0.Method_Proc_137_73_F76A980 (CInt(1), var_98)
  loc_F769F9:   var_98.Enabled = False
  loc_F76A05: End If
  loc_F76A12: Set var_8C = Me.Txt
  loc_F76A18: Call 0.Method_Proc_137_73_F76A980 (CInt(2), var_98)
  loc_F76A20: var_98.Enabled = True
  loc_F76A39: Set var_8C = Me.Txt
  loc_F76A3F: Call 0.Method_Proc_137_73_F76A980 (CInt(0), var_98)
  loc_F76A47: var_98.Enabled = False
  loc_F76A6A: If (OpenMode = 1) Then
  loc_F76A7A:   Set var_8C = Me.Txt
  loc_F76A80:   Call 0.Method_Proc_137_73_F76A980 (CInt(4), var_98)
  loc_F76A88:   var_98.Enabled = False
  loc_F76A94:   GoTo loc_F76A97
  loc_F76A97:   ' Referenced from: F76A94
  loc_F76A97: End If
  loc_F76A97: Exit Sub
End Sub

Public Sub Proc_137_74_F985D4
  'Data Table: 55E2AC
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F98466: Set var_8C = Me.Txt
  loc_F9846C: Call 0.Method_Proc_137_74_F985D4C (var_8E, var_86)
  loc_F9847C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F984A9:   If ((((CInt(var_86) <> &H13) And (CInt(var_86) <> &H14)) And (CInt(var_86) <> &H15)) And (CInt(var_86) <> &H16)) Then
  loc_F984BC:     Set var_8C = Me.Txt
  loc_F984C2:     Call 0.Method_Proc_137_74_F985D40 (CInt(var_86), var_98)
  loc_F984CA:     var_98.Text = vbNullString
  loc_F984E6:     Set var_8C = Me.Txt
  loc_F984EC:     Call 0.Method_Proc_137_74_F985D40 (CInt(var_86), var_98)
  loc_F984F4:     var_98.Tag = vbNullString
  loc_F98500:   End If
  loc_F98503: Next var_92 'Byte
  loc_F9851C: Me.FGrid.Rows = 1
  loc_F98524: var_A8 = "1"
  loc_F9852E: Set var_8C = Me.FGrid
  loc_F98552: Me.FGrid.FixedRows = 1
  loc_F98568: Set var_8C = Me.LTxt
  loc_F9856E: Call 0.Method_Proc_137_74_F985D40 (CInt(&H13), var_98, vbNullString)
  loc_F98576: var_98.Caption = FGrid.DispID_10000
  loc_F98590: Set var_8C = Me.LTxt
  loc_F98596: Call 0.Method_Proc_137_74_F985D40 (CInt(&H14), var_98)
  loc_F9859E: var_98.Caption = vbNullString
  loc_F985B8: Set var_8C = Me.LTxt
  loc_F985BE: Call 0.Method_Proc_137_74_F985D40 (CInt(&H15), var_98)
  loc_F985C6: var_98.Caption = vbNullString
  loc_F985D2: Exit Sub
End Sub

Public Sub Proc_137_75_121D450
  'Data Table: 55E2AC
  Dim var_A0 As Variant
  loc_121CF5F: Me.FrRest.Top = CDbl(915)
  loc_121CF75: Me.FrRest.Left = CDbl(0)
  loc_121CF94: If (OpenType = 6) Then
  loc_121CFAA:   Me.FGrid.Top = CVar(CDbl(2880))
  loc_121CFB2: End If
  loc_121CFC4: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_121D002: Me.FrChqDet.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121D01F: Me.FrChqDet.Left = CDbl(240)
  loc_121D05D: Me.FrTxnNo.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121D07A: Me.FrTxnNo.Left = CDbl(240)
  loc_121D0B8: Me.FrCCDet.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121D0D5: Me.FrCCDet.Left = CDbl(240)
  loc_121D0FF: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_121D130: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_121D16D: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_121D17C: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_121D1AF: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_121D1F4: Me.FrSendRoom.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121D211: Me.FrSendRoom.Left = CDbl(240)
  loc_121D24F: Me.FrEmp.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121D26C: Me.FrEmp.Left = CDbl(240)
  loc_121D2AA: Me.FrComp.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121D2C7: Me.FrComp.Left = CDbl(240)
  loc_121D305: Me.FrMem.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121D322: Me.FrMem.Left = CDbl(240)
  loc_121D33D: Me.DGRoom.Top = CVar(CDbl(405))
  loc_121D358: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_121D373: Me.DGEmp.Top = CVar(CDbl(405))
  loc_121D38E: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_121D3A9: Me.DGCompany.Top = CVar(CDbl(405))
  loc_121D3C4: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_121D3D8: If (global_112 = 6) Then
  loc_121D3EA:   Me.FrRem.Width = CDbl(4925)
  loc_121D3F2: End If
  loc_121D428: Me.FrRem.Top = (Me.FrRest.Top + Me.FrRest.Height)
  loc_121D445: Me.FrRem.Left = CDbl(240)
  loc_121D44D: Exit Sub
End Sub

Public Sub Proc_137_76_154FB64
  'Data Table: 55E2AC
  Dim Me As Recordset15
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_B0 As String
  Dim var_EC As Variant
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_55E2CB As Connection15
  Dim var_148 As Variant
  Dim var_144 As Variant
  Dim var_DC As Variant
  Dim var_8E As Integer
  Dim var_160 As Variant
  Dim var_130 As Variant
  Dim var_170 As Long
  Dim var_1A0 As Variant
  Dim var_8C As Recordset15
  loc_154EB68: On Error Goto loc_154FB1F
  loc_154EB71: Proc_183_45_E5C118(global_60)
  loc_154EB8D: If (Me.RecordCount <= 0) Then
  loc_154EB90:   Call Proc_137_74_F985D4()
  loc_154EB98: Else
  loc_154EBAA:   If (global_112 = 6) Then
  loc_154EBC1:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,"
  loc_154EBCF:     var_A4 = var_9C & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, "
  loc_154EBD6:     var_A8 = var_A4 & "ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode,CC.Name as MemName,CompCode As MemCode FROM ((((PAYCHARGEH AS ST LEFT JOIN "
  loc_154EBE4:     var_B0 = var_A8 & "GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E " & "ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) "
  loc_154EBF2:     var_EC = CVar(var_B0 & "LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='") 'String
  loc_154EC39:     unk_55E2CB.Execute CStr(var_EC & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_154EC44:     Set var_88 = var_144
  loc_154EC70:   End If
  loc_154ECA4:   global_92 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_154ECCC:   If (Me.Recordset15.RecordCount > 0) Then
  loc_154ED11:     Call 0.Method_Proc_137_76_154FB640 (CInt(0), var_148, CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_154ED19:     var_148.Text = Me.Txt
  loc_154ED6B:     Set var_144 = Me.Txt
  loc_154ED71:     Call 0.Method_Proc_137_76_154FB640 (CInt(1), var_148)
  loc_154ED79:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_154EDCB:     Set var_144 = Me.Txt
  loc_154EDD1:     Call 0.Method_Proc_137_76_154FB640 (CInt(2), var_148)
  loc_154EDD9:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_154EE2A:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_154EE77:     Set var_144 = Me.Txt
  loc_154EE7D:     Call 0.Method_Proc_137_76_154FB640 (CInt(7), var_148)
  loc_154EE85:     var_148.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_154EE99:   End If
  loc_154EEA8:   Me.FGrid.Redraw = False
  loc_154EEBD:   Set var_B8 = Me.FGrid
  loc_154EEC3:   var_B8.Rows = 1
  loc_154EECD:   var_8E = 1
  loc_154EEE7:   If (Me.var_B8.RecordCount > 0) Then
  loc_154EEEA:     ' Referenced from:   154FA5B
  loc_154EEFC:     If Not(Me.Recordset15.EOF) Then
  loc_154EEFF:       var_C8 = vbNullString
  loc_154EF09:       Set var_B8 = Me.FGrid
  loc_154EF1E:       Set var_150 = Me.FGrid
  loc_154EF25:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154EF2A:       var_160 = 0
  loc_154EF61:       var_EC = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_154EF68:       LateIdCallSt
  loc_154EFBB:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_150, var_EC, 2)) 'String
  loc_154EFC2:       LateIdCallSt
  loc_154EFD8:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154EFDD:       var_160 = 1
  loc_154F014:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_154F01B:       LateIdCallSt
  loc_154F06E:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_150, var_EC, 3, CVar(CLng(var_8E)))) 'String
  loc_154F075:       LateIdCallSt
  loc_154F0C4:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomCat")), 4, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_154F0CB:       LateIdCallSt
  loc_154F11A:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Roomtype")), 5, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F121:       LateIdCallSt
  loc_154F16F:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomNo")), CVar(CLng(6)), CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F176:       LateIdCallSt
  loc_154F1C4:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F1CB:       LateIdCallSt
  loc_154F200:       var_130 = CVar(CLng(var_8E)) 'Long
  loc_154F205:       var_170 = 8
  loc_154F236:       var_11C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_154F23D:       LateIdCallSt
  loc_154F257:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F25F:       var_160 = CVar(CLng(9)) 'Long
  loc_154F292:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_154F299:       LateIdCallSt
  loc_154F2B3:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F2BB:       var_160 = CVar(CLng(&HA)) 'Long
  loc_154F2EE:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_154F2F5:       LateIdCallSt
  loc_154F347:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_154F34E:       LateIdCallSt
  loc_154F39D:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_154F3A4:       LateIdCallSt
  loc_154F3F3:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H1A, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F3FA:       LateIdCallSt
  loc_154F410:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F418:       var_160 = CVar(CLng(&HC)) 'Long
  loc_154F44B:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_154F452:       LateIdCallSt
  loc_154F4A4:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HD)), CVar(CLng(var_8E)))) 'String
  loc_154F4AB:       LateIdCallSt
  loc_154F4C1:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F4C9:       var_160 = CVar(CLng(&HE)) 'Long
  loc_154F4FC:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_154F503:       LateIdCallSt
  loc_154F555:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HF)), CVar(CLng(var_8E)))) 'String
  loc_154F55C:       LateIdCallSt
  loc_154F572:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F57A:       var_160 = CVar(CLng(&H10)) 'Long
  loc_154F5AD:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_154F5B4:       LateIdCallSt
  loc_154F607:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_8E)), var_150, var_EC, &H14, CVar(CLng(var_8E)))) 'String
  loc_154F60E:       LateIdCallSt
  loc_154F65D:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_154F664:       LateIdCallSt
  loc_154F6B3:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F6BA:       LateIdCallSt
  loc_154F709:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154F710:       LateIdCallSt
  loc_154F726:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_154F72B:       var_160 = &H11
  loc_154F762:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_154F769:       LateIdCallSt
  loc_154F7BC:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomNo")), &H12, CVar(CLng(var_8E)), var_150, var_EC, &H12, CVar(CLng(var_8E)))) 'String
  loc_154F7C3:       LateIdCallSt
  loc_154F812:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomNo")), &H13, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_154F819:       LateIdCallSt
  loc_154F859:       var_EC = "0.00"
  loc_154F880:       Set var_144 = Me.LTxt
  loc_154F886:       Call 0.Method_Proc_137_76_154FB640 (CInt(&H13), var_148, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_EC)), 1, 1, var_150)
  loc_154F88E:       var_148.Caption = var_EC
  loc_154F8BC:       var_EC = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PAYCHARGEH AS P LEFT JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_154F8EC:       var_FC = var_EC & Me.Recordset15.Fields.Item("DocID").Value 
  loc_154F8F5:       var_11C = var_FC & "' And SNo=" 
  loc_154F92B:       var_1A0 = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_154F933:       var_9C = CStr(var_11C & var_1A0)
  loc_154F93D:       unk_55E2CB.Execute var_9C, var_1C0, -1
  loc_154F948:       Set var_8C = var_1C4
  loc_154F982:       If (var_8C.RecordCount > 0) Then
  loc_154F9C6:         var_EC = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(0).Value, &H12, CVar(CLng(var_8E)), var_1C4, var_EC)) 'String
  loc_154F9CD:         LateIdCallSt
  loc_154FA24:         var_EC = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(1).Value, &H13, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_154FA2B:         LateIdCallSt
  loc_154FA41:       End If
  loc_154FA43:       Set var_150 = Nothing 
  loc_154FA4D:       var_8E = (var_8E + 1)
  loc_154FA56:       Me.Recordset15.MoveNext
  loc_154FA5B:       GoTo loc_154EEEA
  loc_154FA5E:     End If
  loc_154FA71:     Me.FGrid.FixedRows = 1
  loc_154FA79:   End If
  loc_154FA87:   Me.FGrid.Redraw = True
  loc_154FA95:   If (var_8E = 1) Then
  loc_154FAAB:     Me.FGrid.Rows = 1
  loc_154FACF:     var_DC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, var_8E, var_150, var_EC))) 'String
  loc_154FAD7:     Set var_CC = Me.FGrid
  loc_154FB04:     Me.FGrid.FixedRows = 1
  loc_154FB0C:   End If
  loc_154FB0C:   Call Proc_137_86_10A62C0(FGrid.DispID_10000, var_DC, var_EC)
  loc_154FB11:   Call Proc_137_88_1408F48(var_150, var_EC)
  loc_154FB16: End If
  loc_154FB1B: Set var_88 = Nothing
  loc_154FB1E: Exit Sub
  loc_154FB1F: ' Referenced from: 154EB68
  loc_154FB27: Set var_B8 = Err()
  loc_154FB2D: Call 0.Method_arg_2C (var_9C)
  loc_154FB4E: MsgBox(CVar(var_9C), &H40, "Information", var_FC, var_11C)
  loc_154FB61: Exit Sub
End Sub

Public Sub Proc_137_77_11367C8
  'Data Table: 55E2AC
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_154 As Boolean
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_16C As String
  Dim unk_55E2CB As Connection15
  Dim var_88 As Recordset15
  Dim var_17C As Field20
  Dim Me As Recordset15
  loc_1136489: var_154 = (CLng(Me.FGrid.Rows) > 1)
  loc_1136491: Set var_A0 = Me.FGrid
  loc_11364A6: var_C0 = CVar((CLng(var_A0.Rows) - 1)) 'Long
  loc_11364B7: Set var_F4 = Me.FGrid
  loc_11364BD: var_104 = var_F4.TextMatrix)
  loc_11364C8: var_114 = CVar(CStr(var_104)) 'String
  loc_11364CE: var_124 = Trim(var_114)
  loc_11364FE: If CBool(CVar(CLng(5)) And (var_124 = vbNullString)) Then
  loc_1136501:   Exit Sub
  loc_1136502: End If
  loc_113650D: var_B0 = "Delete..."
  loc_1136518: var_C0 = "Are you sure delete record?"
  loc_113651D: var_9C = var_C0
  loc_1136539: If (MsgBox(var_9C, &H14, var_B0, var_104, var_114) = 7) Then
  loc_113653C:   Exit Sub
  loc_113653D: End If
  loc_113655B: Set var_8C = Me.Txt
  loc_1136561: Call 0.Method_Proc_137_77_11367C80 (CInt(0), var_A0, var_168, "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and Docid='", var_9C)
  loc_1136569: -1 = var_A0.Text
  loc_1136582: unk_55E2CB.Execute var_F4 & var_168 & "'", var_C0, var_154
  loc_11365BF: var_A0 = var_F4.Fields.Item(0)
  loc_11365E1: If (var_A0.Value > 0) Then
  loc_11365F7:   var_9C = "Guest Room Bill Already printed for this Room."
  loc_11365FD:   MsgBox(var_9C, &H10, var_B0, var_104, var_114)
  loc_113660D:   Exit Sub
  loc_113660E: End If
  loc_1136617: unk_55E2CB.BeginTrans var_174
  loc_1136629: var_E0 = "Delete from Ledger where Docid='"
  loc_113665B: Set var_8C = Me.Txt
  loc_1136661: Call 0.Method_Proc_137_77_11367C80 (CInt(0), var_A0, var_168, "SELECT PostDocId FROM PAYCHARGEH WHERE DocId='", var_9C, -1, var_F4)
  loc_1136682: unk_55E2CB.Execute 0 & var_168 & "'", var_17C, var_B0
  loc_113668A: var_E0 = var_F4.Fields
  loc_1136692: -1 = var_A0.Text.Item(var_124)
  loc_113669A:  = var_17C.Value
  loc_11366B9: unk_55E2CB.Execute CStr(var_B0 & "'"), , 
  loc_1136703: Set var_8C = Me.Txt
  loc_1136709: Call 0.Method_Proc_137_77_11367C80 (CInt(0), var_A0, var_168, "Delete From PAYCHARGEH Where Docid='")
  loc_1136711: var_9C = var_A0.Text
  loc_113671A: var_16C = -1 & var_168
  loc_113672A: unk_55E2CB.Execute 0 & var_168 & "'", var_F4, 
  loc_1136762: Set var_8C = Me.Txt
  loc_1136768: Call 0.Method_Proc_137_77_11367C80 (CInt(0), var_A0, var_168, "Delete From PAYCHARGE Where Docid='")
  loc_1136770: var_9C = var_A0.Text
  loc_1136779: var_16C = -1 & var_168
  loc_1136789: unk_55E2CB.Execute 0 & var_168 & "'", var_F4, 
  loc_11367A9: unk_55E2CB.CommitTrans
  loc_11367B3: Set var_88 = Nothing
  loc_11367C1: Me.Requery -1
  loc_11367C6: Exit Sub
End Sub

Public Sub Proc_137_78_FB6F3C
  'Data Table: 55E2AC
  loc_FB6DA4: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB6DB6:   Me.DGPayType.Visible = False
  loc_FB6DBE: End If
  loc_FB6DDA: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB6DEC:   Me.DGPayType.Visible = False
  loc_FB6DF4: End If
  loc_FB6E10: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_FB6E22:   Me.DGEmp.Visible = False
  loc_FB6E2A: End If
  loc_FB6E46: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_FB6E58:   Me.DGTable.Visible = False
  loc_FB6E60: End If
  loc_FB6E7C: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FB6E8E:   Me.DGRoom.Visible = False
  loc_FB6E96: End If
  loc_FB6EB2: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FB6EC4:   Me.DGCompany.Visible = False
  loc_FB6ECC: End If
  loc_FB6EE8: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_FB6EFA:   Me.DGMember.Visible = False
  loc_FB6F02: End If
  loc_FB6F1E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB6F30:   Me.FGPoint.Visible = False
  loc_FB6F38: End If
  loc_FB6F38: Exit Sub
End Sub

Public Sub Proc_137_79_E92264(arg_C) 'E92264
  'Data Table: 55E2AC
  Dim var_10C As TextBox
  loc_E921F8: Call Proc_137_78_FB6F3C()
  loc_E92234: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E92237:   Call TopCtrl1_UnknownEvent_16()
  loc_E9223F: Else
  loc_E92249:   Set var_108 = Me.Txt
  loc_E9224F:   Call 0.Method_Proc_137_79_E922640 (arg_C)
  loc_E92257:   var_10C.SetFocus
  loc_E92263: End If
  loc_E92263: Exit Sub
End Sub

Public Sub Proc_137_80_11570F4
  'Data Table: 55E2AC
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
  loc_1156D88: var_90 = global_120
  loc_1156D9F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1156DD0: Set var_A8 = Me.Txt
  loc_1156DD6: Call 0.Method_Proc_137_80_11570F40 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_1156DE5: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_1156DED: var_EC = -1 & var_CC 
  loc_1156E01: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_1156E0C: Set var_8C = var_134
  loc_1156E48: If (var_8C.RecordCount > 0) Then
  loc_1156E87:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1156E8A:     GoTo loc_1156F17
  loc_1156E8D:   End If
  loc_1156EBE:   global_100 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1156EE9:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1156EFE:   var_CC = (var_AC.Value + 1)
  loc_1156F06:   global_104 = CInt(var_CC)
  loc_1156F17:   ' Referenced from: 1156E8A
  loc_1156F42:   var_BC = Space((5 - Len(var_90)))
  loc_1156F4A:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_1156F5E:   var_EC = Space((5 - Len(global_100)))
  loc_1156F66:   var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_1156F73:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_100))
  loc_1156F8C:   var_14C = Space((8 - Len(CStr(global_104))))
  loc_1156F94:   var_15C = (var_130 + var_14C)
  loc_1156FA3:   var_17C = (var_15C + CVar(CStr(global_104)))
  loc_1156FAE:   global_96 = CStr(var_17C)
  loc_1156FE4:   Me.LblVPrefix.Caption = global_100
  loc_1156FFD:   Set var_A8 = Me.Txt
  loc_1157003:   Call 0.Method_Proc_137_80_11570F40 (CInt(0), var_AC)
  loc_115700B:   var_AC.Text = global_96
  loc_115702D:   Set var_A8 = Me.Txt
  loc_1157033:   Call 0.Method_Proc_137_80_11570F40 (CInt(1), var_AC)
  loc_115703B:   var_AC.Text = CStr(global_104)
  loc_1157050:   var_88 = global_96
  loc_1157056: Else
  loc_115705C:   global_96 = vbNullString
  loc_115706F:   global_104 = 0
  loc_1157082:   Me.LblVPrefix.Caption = vbNullString
  loc_115709B:   Set var_A8 = Me.Txt
  loc_11570A1:   Call 0.Method_Proc_137_80_11570F40 (CInt(0), var_AC, global_96)
  loc_11570A9:   var_AC.Text = global_104
  loc_11570C3:   Set var_A8 = Me.Txt
  loc_11570C9:   Call 0.Method_Proc_137_80_11570F40 (CInt(1), var_AC)
  loc_11570D1:   var_AC.Text = vbNullString
  loc_11570E3:   var_88 = global_96
  loc_11570E6: End If
  loc_11570EB: Set var_8C = Nothing
  loc_11570EE: Proc_137_80_11570F4 = global_104
End Sub

Public Sub Proc_137_81_120E18C
  'Data Table: 55E2AC
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_120DCBE: If (global_112 = 6) Then
  loc_120DCCD:   Me.FrRest.Visible = True
  loc_120DCD5: End If
  loc_120DCE8: Me.FGrid.Cols = &H19
  loc_120DCF0: var_A0 = CVar(CLng(9)) 'Long
  loc_120DCF5: var_C0 = 0
  loc_120DD01: LateIdCallSt
  loc_120DD0C: var_A0 = CVar(CLng(&HA)) 'Long
  loc_120DD11: var_C0 = 0
  loc_120DD1D: LateIdCallSt
  loc_120DD28: var_A0 = CVar(CLng(&HB)) 'Long
  loc_120DD2D: var_C0 = 0
  loc_120DD39: LateIdCallSt
  loc_120DD44: var_A0 = CVar(CLng(&HC)) 'Long
  loc_120DD49: var_C0 = 0
  loc_120DD55: LateIdCallSt
  loc_120DD60: var_A0 = CVar(CLng(&HD)) 'Long
  loc_120DD65: var_C0 = 0
  loc_120DD71: LateIdCallSt
  loc_120DD7C: var_A0 = CVar(CLng(&HE)) 'Long
  loc_120DD81: var_C0 = 0
  loc_120DD8D: LateIdCallSt
  loc_120DD98: var_A0 = CVar(CLng(&HF)) 'Long
  loc_120DD9D: var_C0 = 0
  loc_120DDA9: LateIdCallSt
  loc_120DDB4: var_A0 = CVar(CLng(&H10)) 'Long
  loc_120DDB9: var_C0 = 0
  loc_120DDC5: LateIdCallSt
  loc_120DDCD: var_A0 = &H11
  loc_120DDD6: var_C0 = 0
  loc_120DDE2: LateIdCallSt
  loc_120DDEA: var_A0 = 1
  loc_120DDF3: var_C0 = 0
  loc_120DDFF: LateIdCallSt
  loc_120DE07: var_A0 = 4
  loc_120DE10: var_C0 = 0
  loc_120DE1C: LateIdCallSt
  loc_120DE24: var_A0 = 5
  loc_120DE2D: var_C0 = 0
  loc_120DE39: LateIdCallSt
  loc_120DE44: var_A0 = CVar(CLng(6)) 'Long
  loc_120DE49: var_C0 = 0
  loc_120DE55: LateIdCallSt
  loc_120DE60: var_A0 = CVar(CLng(7)) 'Long
  loc_120DE65: var_C0 = 0
  loc_120DE71: LateIdCallSt
  loc_120DE79: var_A0 = 2
  loc_120DE82: var_C0 = 0
  loc_120DE8E: LateIdCallSt
  loc_120DE96: var_A0 = 0
  loc_120DE9F: var_C0 = &HFA
  loc_120DEAB: LateIdCallSt
  loc_120DEB3: var_A0 = 0
  loc_120DEBC: var_C0 = 0
  loc_120DEC5: var_E0 = "SNo"
  loc_120DECE: LateIdCallSt
  loc_120DED6: var_A0 = 0
  loc_120DEDF: var_C0 = &H1C2
  loc_120DEEB: LateIdCallSt
  loc_120DEF3: var_A0 = 0
  loc_120DEFC: var_C0 = 3
  loc_120DF05: var_E0 = "Payment Type"
  loc_120DF0E: LateIdCallSt
  loc_120DF16: var_A0 = 3
  loc_120DF25: var_C0 = CVar(CInt(1)) 'Integer
  loc_120DF2C: LateIdCallSt
  loc_120DF34: var_A0 = 3
  loc_120DF3D: var_C0 = &HDAC
  loc_120DF49: LateIdCallSt
  loc_120DF51: var_A0 = 0
  loc_120DF5A: var_C0 = 8
  loc_120DF63: var_E0 = "Amount"
  loc_120DF6C: LateIdCallSt
  loc_120DF74: var_A0 = 8
  loc_120DF83: var_C0 = CVar(CInt(7)) 'Integer
  loc_120DF8A: LateIdCallSt
  loc_120DF92: var_A0 = 8
  loc_120DFA1: var_C0 = CVar(CInt(7)) 'Integer
  loc_120DFA8: LateIdCallSt
  loc_120DFB0: var_A0 = 8
  loc_120DFB9: var_C0 = &H4EC
  loc_120DFC5: LateIdCallSt
  loc_120DFCD: var_A0 = 0
  loc_120DFD6: var_C0 = &H11
  loc_120DFDF: var_E0 = "Tip"
  loc_120DFE8: LateIdCallSt
  loc_120DFF0: var_A0 = &H11
  loc_120DFFF: var_C0 = CVar(CInt(7)) 'Integer
  loc_120E006: LateIdCallSt
  loc_120E00E: var_A0 = &H11
  loc_120E01D: var_C0 = CVar(CInt(7)) 'Integer
  loc_120E024: LateIdCallSt
  loc_120E02C: var_A0 = &H11
  loc_120E035: var_C0 = &H4EC
  loc_120E041: LateIdCallSt
  loc_120E049: var_A0 = &H12
  loc_120E052: var_C0 = 0
  loc_120E05E: LateIdCallSt
  loc_120E066: var_A0 = &H13
  loc_120E06F: var_C0 = 0
  loc_120E07B: LateIdCallSt
  loc_120E083: var_A0 = &H14
  loc_120E08C: var_C0 = 0
  loc_120E098: LateIdCallSt
  loc_120E0A0: var_A0 = &H15
  loc_120E0A9: var_C0 = 0
  loc_120E0B5: LateIdCallSt
  loc_120E0BD: var_A0 = &H18
  loc_120E0C6: var_C0 = 0
  loc_120E0D2: LateIdCallSt
  loc_120E0DA: var_A0 = &H19
  loc_120E0E3: var_C0 = 0
  loc_120E0EF: LateIdCallSt
  loc_120E0F7: var_A0 = &H16
  loc_120E100: var_C0 = 0
  loc_120E10C: LateIdCallSt
  loc_120E114: var_A0 = &H17
  loc_120E11D: var_C0 = 0
  loc_120E129: LateIdCallSt
  loc_120E131: var_A0 = &H1A
  loc_120E13A: var_C0 = 0
  loc_120E146: LateIdCallSt
  loc_120E178: LateIdCallSt
  loc_120E186: Call Proc_137_82_F44A44(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_120E18B: Exit Sub
End Sub

Public Sub Proc_137_82_F44A44
  'Data Table: 55E2AC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_BC As Variant
  loc_F44936: Set global_72 = New 
  loc_F44948: Me.Recordset15.CursorLocation = 3
  loc_F44964: If (OpenType = 6) Then
  loc_F4498C:   var_A8 = CVar("Select T.Code,T.Name As Name From RoomMast T where T.LogSite_Code in ('" & MemVar_1F92078 & "','HO') and T.Type in('HL') Order by T.Code") 'String
  loc_F44996:   Me.Open var_A8, CVar(MemVar_1F92044), 3
  loc_F449AD:   Set var_8C = Me.LblName
  loc_F449B3:   Call 0.Method_Proc_137_82_F44A440 (&HC, var_BC, "Party Name")
  loc_F449BB:   var_BC.Caption = 1
  loc_F449D7:   Set var_8C = Me.DGTable
  loc_F449F6:   DGTable.DispID_69.Item(1).Caption = "Party Name"
  loc_F44A0D:   global_144 = "HALL"
  loc_F44A17:   global_148 = "HS"
  loc_F44A1B: End If
  loc_F44A24: CVarUnk
  loc_F44A29: VerifyVarObj
  loc_F44A2F: Set var_8C = Me.DGTable
  loc_F44A35: LateIdStAd
  loc_F44A43: Exit Sub
End Sub

Public Sub Proc_137_83_11AF1F8(arg_C) '11AF1F8
  'Data Table: 55E2AC
  Dim var_98 As Frame
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_11AEDD0: Me.FrChqDet.Visible = False
  loc_11AEDE4: Me.FrTxnNo.Visible = False
  loc_11AEDF8: Me.FrRem.Visible = False
  loc_11AEE0C: Me.FrCCDet.Visible = False
  loc_11AEE20: Me.FrEmp.Visible = False
  loc_11AEE34: Me.FrComp.Visible = False
  loc_11AEE48: Me.FrMem.Visible = False
  loc_11AEE5C: Me.FrSendRoom.Visible = False
  loc_11AEE76: If (global_112 = 6) Then
  loc_11AEE7C:   var_90 = arg_C
  loc_11AEE87:   If (var_90 = "Cheque") Then
  loc_11AEE96:     Me.FrChqDet.Visible = True
  loc_11AEEAA:     Me.FrRem.Visible = True
  loc_11AEEEC:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_11AEEFD:   Else
  loc_11AEF05:     If (var_90 = "Credit Card") Then
  loc_11AEF14:       Me.FrCCDet.Visible = True
  loc_11AEF28:       Me.FrRem.Visible = False
  loc_11AEF33:     Else
  loc_11AEF3B:       If (var_90 = "Staff") Then
  loc_11AEF4A:         Me.FrEmp.Visible = True
  loc_11AEF5E:         Me.FrRem.Visible = True
  loc_11AEFA0:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_11AEFB1:       Else
  loc_11AEFB9:         If (var_90 = "Company") Then
  loc_11AEFC8:           Me.FrComp.Visible = True
  loc_11AEFDC:           Me.FrRem.Visible = True
  loc_11AF01E:           Me.FrRem.Top = ((Me.FrComp.Top + Me.FrComp.Height) + CDbl(&HF))
  loc_11AF02F:         Else
  loc_11AF037:           If (var_90 = "Member") Then
  loc_11AF046:             Me.FrMem.Visible = True
  loc_11AF05A:             Me.FrRem.Visible = True
  loc_11AF09C:             Me.FrRem.Top = ((Me.FrMem.Top + Me.FrMem.Height) + CDbl(&HF))
  loc_11AF0AD:           Else
  loc_11AF0B5:             If (var_90 = "Room") Then
  loc_11AF0C4:               Me.FrSendRoom.Visible = True
  loc_11AF0D8:               Me.FrRem.Visible = False
  loc_11AF0E3:             Else
  loc_11AF0EB:               If (var_90 = "UPI") Then
  loc_11AF0FA:                 Me.FrTxnNo.Visible = True
  loc_11AF10E:                 Me.FrRem.Visible = True
  loc_11AF14A:                 Set var_A0 = Me.FrRem
  loc_11AF150:                 var_A0.Top = ((Me.FrTxnNo.Top + Me.FrTxnNo.Height) + CDbl(&HF))
  loc_11AF161:               Else
  loc_11AF16D:                 Me.FrRem.Visible = True
  loc_11AF183:                 Set var_98 = Me.Txt
  loc_11AF189:                 Call 0.Method_Proc_137_83_11AF1F80 (CInt(5), var_A0)
  loc_11AF1A4:                 Set var_A4 = Me.Txt
  loc_11AF1AA:                 Call 0.Method_Proc_137_83_11AF1F80 (CInt(5), var_A8)
  loc_11AF1E3:                 Me.FrRem.Top = (((Me.FrRest.Top + var_A0.Top) + var_A8.Height) + CDbl(&HF))
  loc_11AF1F7:               End If
  loc_11AF1F7:             End If
  loc_11AF1F7:           End If
  loc_11AF1F7:         End If
  loc_11AF1F7:       End If
  loc_11AF1F7:     End If
  loc_11AF1F7:   End If
  loc_11AF1F7: End If
  loc_11AF1F7: Exit Sub
End Sub

Public Sub Proc_137_84_1527200
  'Data Table: 55E2AC
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  Dim var_BC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_11C As Long
  Dim Me As Variant
  loc_1526276: Set var_8C = Me.Txt
  loc_152627C: Call 0.Method_Proc_137_84_15272000 (CInt(5), var_90)
  loc_15262A0: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_15262B1:   Set var_8C = Me.Txt
  loc_15262B7:   Call 0.Method_Proc_137_84_15272000 (CInt(5), var_90)
  loc_15262BF:   var_90.Text = vbNullString
  loc_15262CB: End If
  loc_15262D9: Set var_8C = Me.Txt
  loc_15262DF: Call 0.Method_Proc_137_84_15272000 (CInt(5), var_90)
  loc_15262F9: If (var_90.Visible = &HFF) Then
  loc_1526307:   Set var_8C = Me.Txt
  loc_152630D:   Call 0.Method_Proc_137_84_15272000 (CInt(5))
  loc_1526315:   var_94 = "Amount"
  loc_1526336:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1526339:     Exit Sub
  loc_152633A:   End If
  loc_152633A: End If
  loc_1526353: Set var_8C = Me.Txt
  loc_1526359: Call 0.Method_Proc_137_84_15272000 (CInt(&H10), var_90, var_94)
  loc_1526361: (global_152 = "Staff") = var_90.Text
  loc_1526379: If (var_90 And (var_94 = vbNullString)) Then
  loc_1526387:   Set var_8C = Me.Txt
  loc_152638D:   Call 0.Method_Proc_137_84_15272000 (CInt(&H10))
  loc_1526395:   var_94 = "Staff Name"
  loc_15263B6:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15263B9:     Exit Sub
  loc_15263BA:   End If
  loc_15263BA: End If
  loc_15263D3: Set var_8C = Me.Txt
  loc_15263D9: Call 0.Method_Proc_137_84_15272000 (CInt(&HD), var_90, var_94)
  loc_15263E1: (global_152 = "Room") = var_90.Text
  loc_15263F9: If (var_90 And (var_94 = vbNullString)) Then
  loc_1526407:   Set var_8C = Me.Txt
  loc_152640D:   Call 0.Method_Proc_137_84_15272000 (CInt(&HD))
  loc_1526415:   var_94 = "Room Name"
  loc_1526436:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1526439:     Exit Sub
  loc_152643A:   End If
  loc_152643A: End If
  loc_1526453: Set var_8C = Me.Txt
  loc_1526459: Call 0.Method_Proc_137_84_15272000 (CInt(&HE), var_90, var_94)
  loc_1526461: (global_152 = "Company") = var_90.Text
  loc_1526479: If (var_90 And (var_94 = vbNullString)) Then
  loc_1526487:   Set var_8C = Me.Txt
  loc_152648D:   Call 0.Method_Proc_137_84_15272000 (CInt(&HE))
  loc_1526495:   var_94 = "Company Name"
  loc_15264B6:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15264B9:     Exit Sub
  loc_15264BA:   End If
  loc_15264BA: End If
  loc_15264D3: Set var_8C = Me.Txt
  loc_15264D9: Call 0.Method_Proc_137_84_15272000 (CInt(&HF), var_90, var_94)
  loc_15264E1: (global_152 = "Member") = var_90.Text
  loc_15264F9: If (var_90 And (var_94 = vbNullString)) Then
  loc_1526507:   Set var_8C = Me.Txt
  loc_152650D:   Call 0.Method_Proc_137_84_15272000 (CInt(&HF))
  loc_1526515:   var_94 = "Member Name"
  loc_1526536:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1526539:     Exit Sub
  loc_152653A:   End If
  loc_152653A: End If
  loc_1526545: If (global_56 = "Y") Then
  loc_1526561:   Set var_8C = Me.Txt
  loc_1526567:   Call 0.Method_Proc_137_84_15272000 (CInt(7), var_90, var_94)
  loc_152656F:   (global_152 = "Credit Card") = var_90.Text
  loc_1526587:   If (var_90 And (var_94 = vbNullString)) Then
  loc_1526595:     Set var_8C = Me.Txt
  loc_152659B:     Call 0.Method_Proc_137_84_15272000 (CInt(7))
  loc_15265A3:     var_94 = "Credit Card No."
  loc_15265C4:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15265C7:       Exit Sub
  loc_15265C8:     End If
  loc_15265C8:   End If
  loc_15265E1:   Set var_8C = Me.Txt
  loc_15265E7:   Call 0.Method_Proc_137_84_15272000 (CInt(8), var_90, var_94)
  loc_15265EF:   (global_152 = "Credit Card") = var_90.Text
  loc_1526607:   If (var_90 And (var_94 = vbNullString)) Then
  loc_1526615:     Set var_8C = Me.Txt
  loc_152661B:     Call 0.Method_Proc_137_84_15272000 (CInt(8))
  loc_1526644:     If (Proc_6_27_EA565C(var_90, "Holder's Name") = 0) Then
  loc_1526647:       Exit Sub
  loc_1526648:     End If
  loc_1526648:   End If
  loc_1526662:   Set var_8C = Me.Txt
  loc_1526668:   Call 0.Method_Proc_137_84_15272000 (CInt(&HA), var_90)
  loc_152669B:   If CBool((global_152 = "Credit Card") And (Trim(CVar(var_90)) = vbNullString)) Then
  loc_15266A9:     Set var_8C = Me.Txt
  loc_15266AF:     Call 0.Method_Proc_137_84_15272000 (CInt(&HA), var_90)
  loc_15266B7:     var_94 = "Batch No"
  loc_15266D8:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15266DB:       Exit Sub
  loc_15266DC:     End If
  loc_15266DC:   End If
  loc_15266DC: End If
  loc_15266F5: Set var_8C = Me.Txt
  loc_15266FB: Call 0.Method_Proc_137_84_15272000 (CInt(&H11), var_90, var_94)
  loc_1526703: (global_152 = "UPI") = var_90.Text
  loc_152671B: If (var_90 And (var_94 = vbNullString)) Then
  loc_1526729:   Set var_8C = Me.Txt
  loc_152672F:   Call 0.Method_Proc_137_84_15272000 (CInt(&H11))
  loc_1526737:   var_94 = "Txn. No."
  loc_1526758:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_152675B:     Exit Sub
  loc_152675C:   End If
  loc_152675C: End If
  loc_1526775: Set var_8C = Me.Txt
  loc_152677B: Call 0.Method_Proc_137_84_15272000 (CInt(&HB), var_90, var_94)
  loc_1526783: (global_152 = "Cheque") = var_90.Text
  loc_152679B: If (var_90 And (var_94 = vbNullString)) Then
  loc_15267A9:   Set var_8C = Me.Txt
  loc_15267AF:   Call 0.Method_Proc_137_84_15272000 (CInt(&HB))
  loc_15267B7:   var_94 = "Cheque No."
  loc_15267D8:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15267DB:     Exit Sub
  loc_15267DC:   End If
  loc_15267DC: End If
  loc_15267F5: Set var_8C = Me.Txt
  loc_15267FB: Call 0.Method_Proc_137_84_15272000 (CInt(&HC), var_90, var_94)
  loc_1526803: (global_152 = "Cheque") = var_90.Text
  loc_152681B: If (var_90 And (var_94 = vbNullString)) Then
  loc_1526829:   Set var_8C = Me.Txt
  loc_152682F:   Call 0.Method_Proc_137_84_15272000 (CInt(&HC))
  loc_1526858:   If (Proc_6_27_EA565C(var_90, "Cheque Dt.") = 0) Then
  loc_152685B:     Exit Sub
  loc_152685C:   End If
  loc_152685C: End If
  loc_1526865: If (global_164 = 0) Then
  loc_1526881:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15268BD:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15268DC:     var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, 3))) 'String
  loc_15268E4:     Set var_90 = Me.FGrid
  loc_15268FE:   End If
  loc_1526918:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1526924: Else
  loc_1526938:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_1526941: End If
  loc_152695A: var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_152695F: var_10C = 1
  loc_152696C: Set var_90 = Me.FGrid
  loc_152697D: var_94 = CStr(var_90.TextMatrix))
  loc_1526996: If (var_94 <> vbNullString) Then
  loc_1526999:   var_CC = vbNullString
  loc_15269A3:   Set var_8C = Me.FGrid
  loc_15269CE:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15269D7: End If
  loc_15269EE: If (OpenType = 6) Then
  loc_15269F5:   Set var_128 = Me.FGrid
  loc_15269FC:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1526A01:   var_10C = 0
  loc_1526A16:   LateIdCallSt
  loc_1526A41:   Set var_8C = Me.Txt
  loc_1526A47:   Call 0.Method_Proc_137_84_15272000 (CInt(3), var_90, var_94, 1, CVar(CLng(var_86)), var_128, CVar(CStr(var_86)))
  loc_1526A4F:   var_10C = var_90.Tag
  loc_1526A57:   var_AC = CVar(var_94) 'String
  loc_1526A5E:   LateIdCallSt
  loc_1526A74:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1526A79:   var_10C = 2
  loc_1526A8F:   LateIdCallSt
  loc_1526AB7:   Set var_8C = Me.Txt
  loc_1526ABD:   Call 0.Method_Proc_137_84_15272000 (CInt(3), var_90, var_94, 3, CVar(CLng(var_86)), var_128, global_152)
  loc_1526AC5:   var_10C = var_90.Text
  loc_1526ACD:   var_AC = CVar(var_94) 'String
  loc_1526AD4:   LateIdCallSt
  loc_1526AEA:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1526AEF:   var_10C = 4
  loc_1526B05:   LateIdCallSt
  loc_1526B11:   var_CC = CVar(CLng(var_86)) 'Long
  loc_1526B16:   var_10C = 5
  loc_1526B2C:   LateIdCallSt
  loc_1526B53:   Set var_8C = Me.Txt
  loc_1526B59:   Call 0.Method_Proc_137_84_15272000 (CInt(4), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_128, global_148)
  loc_1526B61:   var_10C = var_90.Tag
  loc_1526B70:   LateIdCallSt
  loc_1526BA1:   Set var_8C = Me.Txt
  loc_1526BA7:   Call 0.Method_Proc_137_84_15272000 (CInt(4), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_1526BAF:   var_CC = var_90.Text
  loc_1526BB7:   var_AC = CVar(var_94) 'String
  loc_1526BBE:   LateIdCallSt
  loc_1526BF0:   Set var_8C = Me.Txt
  loc_1526BF6:   Call 0.Method_Proc_137_84_15272000 (CInt(5), var_90, var_94, 8, CVar(CLng(var_86)), var_128)
  loc_1526BFE:   var_AC = var_90.Text
  loc_1526C06:   var_AC = CVar(var_94) 'String
  loc_1526C0D:   LateIdCallSt
  loc_1526C3E:   Set var_8C = Me.Txt
  loc_1526C44:   Call 0.Method_Proc_137_84_15272000 (CInt(7), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_1526C4C:   var_AC = var_90.Text
  loc_1526C54:   var_AC = CVar(var_94) 'String
  loc_1526C5B:   LateIdCallSt
  loc_1526C8C:   Set var_8C = Me.Txt
  loc_1526C92:   Call 0.Method_Proc_137_84_15272000 (CInt(8), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_1526C9A:   var_AC = var_90.Text
  loc_1526CA2:   var_AC = CVar(var_94) 'String
  loc_1526CA9:   LateIdCallSt
  loc_1526CDA:   Set var_8C = Me.Txt
  loc_1526CE0:   Call 0.Method_Proc_137_84_15272000 (CInt(9), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_1526CE8:   var_AC = var_90.Text
  loc_1526CF0:   var_AC = CVar(var_94) 'String
  loc_1526CF7:   LateIdCallSt
  loc_1526D29:   Set var_8C = Me.Txt
  loc_1526D2F:   Call 0.Method_Proc_137_84_15272000 (CInt(&HA), var_90, var_94, &H17, CVar(CLng(var_86)), var_128)
  loc_1526D37:   var_AC = var_90.Text
  loc_1526D3F:   var_AC = CVar(var_94) 'String
  loc_1526D46:   LateIdCallSt
  loc_1526D78:   Set var_8C = Me.Txt
  loc_1526D7E:   Call 0.Method_Proc_137_84_15272000 (CInt(&H11), var_90, var_94, &H1A, CVar(CLng(var_86)), var_128)
  loc_1526D86:   var_AC = var_90.Text
  loc_1526D8E:   var_AC = CVar(var_94) 'String
  loc_1526D95:   LateIdCallSt
  loc_1526DC6:   Set var_8C = Me.Txt
  loc_1526DCC:   Call 0.Method_Proc_137_84_15272000 (CInt(&HB), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128)
  loc_1526DD4:   var_AC = var_90.Text
  loc_1526DDC:   var_AC = CVar(var_94) 'String
  loc_1526DE3:   LateIdCallSt
  loc_1526E14:   Set var_8C = Me.Txt
  loc_1526E1A:   Call 0.Method_Proc_137_84_15272000 (CInt(&HC), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128)
  loc_1526E22:   var_AC = var_90.Text
  loc_1526E2A:   var_AC = CVar(var_94) 'String
  loc_1526E31:   LateIdCallSt
  loc_1526E62:   Set var_8C = Me.Txt
  loc_1526E68:   Call 0.Method_Proc_137_84_15272000 (CInt(&H12), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_1526E70:   var_AC = var_90.Text
  loc_1526E78:   var_AC = CVar(var_94) 'String
  loc_1526E7F:   LateIdCallSt
  loc_1526EB0:   Set var_8C = Me.Txt
  loc_1526EB6:   Call 0.Method_Proc_137_84_15272000 (CInt(&H10), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128)
  loc_1526EBE:   var_AC = var_90.Text
  loc_1526EC6:   var_AC = CVar(var_94) 'String
  loc_1526ECD:   LateIdCallSt
  loc_1526EFE:   Set var_8C = Me.Txt
  loc_1526F04:   Call 0.Method_Proc_137_84_15272000 (CInt(&H10), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128)
  loc_1526F0C:   var_AC = var_90.Tag
  loc_1526F14:   var_AC = CVar(var_94) 'String
  loc_1526F1B:   LateIdCallSt
  loc_1526F4D:   Set var_8C = Me.Txt
  loc_1526F53:   Call 0.Method_Proc_137_84_15272000 (CInt(6), var_90, var_94, &H11, CVar(CLng(var_86)), var_128)
  loc_1526F5B:   var_AC = var_90.Text
  loc_1526F63:   var_AC = CVar(var_94) 'String
  loc_1526F6A:   LateIdCallSt
  loc_1526F9C:   Set var_8C = Me.Txt
  loc_1526FA2:   Call 0.Method_Proc_137_84_15272000 (CInt(&HD), var_90, var_94, &H12, CVar(CLng(var_86)), var_128)
  loc_1526FAA:   var_AC = var_90.Tag
  loc_1526FB2:   var_AC = CVar(var_94) 'String
  loc_1526FB9:   LateIdCallSt
  loc_1526FEB:   Set var_8C = Me.Txt
  loc_1526FF1:   Call 0.Method_Proc_137_84_15272000 (CInt(&HD), var_90, var_94, &H13, CVar(CLng(var_86)), var_128)
  loc_1526FF9:   var_AC = var_90.Text
  loc_1527001:   var_AC = CVar(var_94) 'String
  loc_1527008:   LateIdCallSt
  loc_152703A:   Set var_8C = Me.Txt
  loc_1527040:   Call 0.Method_Proc_137_84_15272000 (CInt(&HE), var_90, var_94, &H14, CVar(CLng(var_86)), var_128)
  loc_1527048:   var_AC = var_90.Tag
  loc_1527050:   var_AC = CVar(var_94) 'String
  loc_1527057:   LateIdCallSt
  loc_1527089:   Set var_8C = Me.Txt
  loc_152708F:   Call 0.Method_Proc_137_84_15272000 (CInt(&HE), var_90, var_94, &H15, CVar(CLng(var_86)), var_128)
  loc_1527097:   var_AC = var_90.Text
  loc_152709F:   var_AC = CVar(var_94) 'String
  loc_15270A6:   LateIdCallSt
  loc_15270D8:   Set var_8C = Me.Txt
  loc_15270DE:   Call 0.Method_Proc_137_84_15272000 (CInt(&HF), var_90, var_94, &H18, CVar(CLng(var_86)), var_128)
  loc_15270E6:   var_AC = var_90.Tag
  loc_15270EE:   var_AC = CVar(var_94) 'String
  loc_15270F5:   LateIdCallSt
  loc_1527110:   var_10C = &H19
  loc_1527127:   Set var_8C = Me.Txt
  loc_152712D:   Call 0.Method_Proc_137_84_15272000 (CInt(&HF), var_90, var_94, var_10C, CVar(CLng(var_86)), var_128)
  loc_1527135:   var_AC = var_90.Text
  loc_152713D:   var_AC = CVar(var_94) 'String
  loc_1527144:   LateIdCallSt
  loc_1527161:   If (global_152 = "Room") Then
  loc_1527168:     var_EC = CVar(CLng(var_86)) 'Long
  loc_152716D:     var_11C = &H16
  loc_1527193:     var_90 = Me.Fields.Item("FolioNo")
  loc_152719B:     var_AC = var_90.Value
  loc_15271A4:     var_BC = CVar(CStr(var_AC)) 'String
  loc_15271AB:     LateIdCallSt
  loc_15271C1:   End If
  loc_15271C3:   Set var_128 = Nothing 
  loc_15271C7: End If
  loc_15271C7: Call Proc_137_86_10A62C0(var_128, var_BC, var_11C, var_EC, var_128, var_AC)
  loc_15271CC: Call Proc_137_85_FDC1D8(var_128, global_144, var_10C)
  loc_15271DC: Set var_8C = Me.Txt
  loc_15271E2: Call 0.Method_Proc_137_84_15272000 (CInt(3), var_90)
  loc_15271EA: var_90.SetFocus
  loc_15271FB: global_164 = 0
  loc_15271FE: Exit Sub
End Sub

Public Sub Proc_137_85_FDC1D8
  'Data Table: 55E2AC
  Dim var_8C As TextBox
  loc_FDC002: Set var_88 = Me.Txt
  loc_FDC008: Call 0.Method_Proc_137_85_FDC1D80 (CInt(3), var_8C)
  loc_FDC010: var_8C.Text = vbNullString
  loc_FDC02A: Set var_88 = Me.Txt
  loc_FDC030: Call 0.Method_Proc_137_85_FDC1D80 (CInt(5), var_8C)
  loc_FDC038: var_8C.Text = vbNullString
  loc_FDC052: Set var_88 = Me.Txt
  loc_FDC058: Call 0.Method_Proc_137_85_FDC1D80 (CInt(6), var_8C)
  loc_FDC060: var_8C.Text = vbNullString
  loc_FDC07A: Set var_88 = Me.Txt
  loc_FDC080: Call 0.Method_Proc_137_85_FDC1D80 (CInt(&H10), var_8C)
  loc_FDC088: var_8C.Text = vbNullString
  loc_FDC0A2: Set var_88 = Me.Txt
  loc_FDC0A8: Call 0.Method_Proc_137_85_FDC1D80 (CInt(&H12), var_8C)
  loc_FDC0B0: var_8C.Text = vbNullString
  loc_FDC0CA: Set var_88 = Me.Txt
  loc_FDC0D0: Call 0.Method_Proc_137_85_FDC1D80 (CInt(7), var_8C)
  loc_FDC0D8: var_8C.Text = vbNullString
  loc_FDC0F2: Set var_88 = Me.Txt
  loc_FDC0F8: Call 0.Method_Proc_137_85_FDC1D80 (CInt(8), var_8C)
  loc_FDC100: var_8C.Text = vbNullString
  loc_FDC11A: Set var_88 = Me.Txt
  loc_FDC120: Call 0.Method_Proc_137_85_FDC1D80 (CInt(9), var_8C)
  loc_FDC128: var_8C.Text = vbNullString
  loc_FDC142: Set var_88 = Me.Txt
  loc_FDC148: Call 0.Method_Proc_137_85_FDC1D80 (CInt(&HA), var_8C)
  loc_FDC150: var_8C.Text = vbNullString
  loc_FDC16A: Set var_88 = Me.Txt
  loc_FDC170: Call 0.Method_Proc_137_85_FDC1D80 (CInt(&H11), var_8C)
  loc_FDC178: var_8C.Text = vbNullString
  loc_FDC192: Set var_88 = Me.Txt
  loc_FDC198: Call 0.Method_Proc_137_85_FDC1D80 (CInt(&HB), var_8C)
  loc_FDC1A0: var_8C.Text = vbNullString
  loc_FDC1BA: Set var_88 = Me.Txt
  loc_FDC1C0: Call 0.Method_Proc_137_85_FDC1D80 (CInt(&HC), var_8C)
  loc_FDC1C8: var_8C.Text = vbNullString
  loc_FDC1D4: Exit Sub
  loc_FDC1D7: () = 
End Sub

Public Sub Proc_137_86_10A62C0
  'Data Table: 55E2AC
  Dim var_90 As Label
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_154 As Double
  Dim var_B8 As Variant
  Dim var_D8 As Long
  Dim var_EC As MSHFlexGrid
  Dim var_F0 As String
  Dim var_15C As Double
  Dim var_110 As Variant
  Dim var_148 As Label
  Dim var_144 As Variant
  Dim var_160 As Label
  loc_10A601A: Set var_8C = Me.LTxt
  loc_10A6020: Call 0.Method_Proc_137_86_10A62C00 (CInt(&H14), var_90)
  loc_10A6028: var_90.Caption = vbNullString
  loc_10A6059: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10A606D:   Set var_8C = Me.LTxt
  loc_10A6073:   Call 0.Method_Proc_137_86_10A62C00 (CInt(&H14), var_90)
  loc_10A608F:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_10A6094:   var_D8 = 8
  loc_10A60BA:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A60D9:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_10A60F7:   Set var_144 = Me.LTxt
  loc_10A60FD:   Call 0.Method_Proc_137_86_10A62C00 (CInt(&H14), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_10A6105:   var_148.Caption = var_15C
  loc_10A612E: Next var_A4 'Integer
  loc_10A6141: Set var_8C = Me.LTxt
  loc_10A6147: Call 0.Method_Proc_137_86_10A62C00 (CInt(&H13), var_90)
  loc_10A614F: var_A8 = var_90.Caption
  loc_10A616D: Set var_EC = Me.LTxt
  loc_10A6173: Call 0.Method_Proc_137_86_10A62C00 (CInt(&H14), var_144)
  loc_10A617B: var_F0 = var_144.Caption
  loc_10A61A7: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_10A61C5: Set var_148 = Me.LTxt
  loc_10A61CB: Call 0.Method_Proc_137_86_10A62C00 (CInt(&H15), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A61D3: var_160.Caption = 1
  loc_10A6207: Set var_8C = Me.LTxt
  loc_10A620D: Call 0.Method_Proc_137_86_10A62C00 (CInt(&H14), var_90, var_A8)
  loc_10A6215: var_15C = var_90.Caption
  loc_10A6222: var_154 = Val(var_A8)
  loc_10A6233: Set var_EC = Me.Txt
  loc_10A6239: Call 0.Method_Proc_137_86_10A62C00 (CInt(6), var_144, var_F0)
  loc_10A626D: var_A0 = CVar((var_144.Text + Val(var_F0))) 'Double
  loc_10A628B: Set var_148 = Me.LTxt
  loc_10A6291: Call 0.Method_Proc_137_86_10A62C00 (CInt(&H16), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A6299: var_160.Caption = 1
  loc_10A62BF: Exit Sub
End Sub

Public Sub Proc_137_87_1010B48
  'Data Table: 55E2AC
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_101095D: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_1010967:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_101096C:   var_E4 = 1
  loc_10109A6:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "MEM") Then
  loc_10109AD:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_10109B2:     var_E4 = &H18
  loc_10109D0:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_10109DD:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_10109E2:     var_E4 = 8
  loc_1010A12:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1010A1E:   End If
  loc_1010A21: Next var_B4 'Integer
  loc_1010A2E: If (var_94 <> vbNullString) Then
  loc_1010A49:   If (Proc_96_1_F8C534(var_94) = 0) Then
  loc_1010A4F:     Proc_96_2_100DE2C(var_94)
  loc_1010A59:     If (CDbl(0) < var_90) Then
  loc_1010A7D:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_1010A9A:       Me.Global.Unload Me
  loc_1010AA4:       var_86 = 0
  loc_1010AAA:     Else
  loc_1010AAC:       var_86 = &HFF
  loc_1010AAF:     End If
  loc_1010AB2:   Else
  loc_1010AC0:     If (Proc_96_1_F8C534(var_94, var_9C) = &HFF) Then
  loc_1010AC6:       Proc_96_2_100DE2C(var_94, var_86)
  loc_1010ADC:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_1010B00:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_1010B1D:         Me.Global.Unload Me
  loc_1010B27:         var_86 = 0
  loc_1010B2D:       Else
  loc_1010B2F:         var_86 = &HFF
  loc_1010B32:       End If
  loc_1010B35:     Else
  loc_1010B37:       var_86 = &HFF
  loc_1010B3A:     End If
  loc_1010B3A:   End If
  loc_1010B3D: Else
  loc_1010B3F:   var_86 = &HFF
  loc_1010B42: End If
  loc_1010B42: Proc_137_87_1010B48 = var_86
End Sub

Public Sub Proc_137_88_1408F48
  'Data Table: 55E2AC
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_F0 As String
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  Dim var_1FC As TextBox
  loc_140851F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1408524: var_C8 = 1
  loc_140855B: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1408562:   Set var_F4 = Me.FGrid
  loc_14085A2:   Set var_DC = Me.Txt
  loc_14085A8:   Call 0.Method_Proc_137_88_1408F480 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_14085B0:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_14085DB:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14085E0:   var_C8 = 2
  loc_14085FD:   global_152 = CStr(var_F4.TextMatrix))
  loc_1408626:   var_C8 = 3
  loc_140864B:   Set var_DC = Me.Txt
  loc_1408651:   Call 0.Method_Proc_137_88_1408F480 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_1408659:   var_F8.Text = var_C8
  loc_1408684:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1408689:   var_C8 = 4
  loc_14086A6:   global_144 = CStr(var_F4.TextMatrix))
  loc_14086CA:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_14086CF:   var_C8 = 5
  loc_14086EC:   global_148 = CStr(var_F4.TextMatrix))
  loc_1408710:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1408739:   Set var_DC = Me.Txt
  loc_140873F:   Call 0.Method_Proc_137_88_1408F480 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_1408747:   var_F8.Tag = var_A8
  loc_1408772:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140877A:   var_C8 = CVar(CLng(7)) 'Long
  loc_1408782:   var_EC = var_F4.TextMatrix)
  loc_1408792:   Set var_DC = Me.FGrid
  loc_14087B1:   var_158 = var_F4.TextMatrix)
  loc_14087F9:   var_F0 = CStr(var_EC)
  loc_140881F:   Set var_1FC = Me.Txt
  loc_1408825:   Call 0.Method_Proc_137_88_1408F480 (CInt(4), var_200, CStr(IIf((var_F0 = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), var_158, CVar(CLng(6)))
  loc_140882D:   var_200.Text = CVar(CLng(var_DC.Row))
  loc_140886B:   Set var_88 = Me.LTxt
  loc_1408871:   Call 0.Method_Proc_137_88_1408F480 (CInt(&H15), var_DC, var_F0, var_EC, var_C8)
  loc_1408879:   var_A8 = var_DC.Caption
  loc_140888C:   Set var_F8 = Me.Txt
  loc_1408892:   Call 0.Method_Proc_137_88_1408F480 (CInt(5), var_1FC, var_F0)
  loc_140889A:   var_1FC.Text = var_C8
  loc_14088E9:   Set var_DC = Me.Txt
  loc_14088EF:   Call 0.Method_Proc_137_88_1408F480 (CInt(7), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)))
  loc_14088F7:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140894B:   Set var_DC = Me.Txt
  loc_1408951:   Call 0.Method_Proc_137_88_1408F480 (CInt(8), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_1408959:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_14089AD:   Set var_DC = Me.Txt
  loc_14089B3:   Call 0.Method_Proc_137_88_1408F480 (CInt(9), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_14089BB:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408A10:   Set var_DC = Me.Txt
  loc_1408A16:   Call 0.Method_Proc_137_88_1408F480 (CInt(&HA), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_1408A1E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408A73:   Set var_DC = Me.Txt
  loc_1408A79:   Call 0.Method_Proc_137_88_1408F480 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), &H1A)
  loc_1408A81:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408AD5:   Set var_DC = Me.Txt
  loc_1408ADB:   Call 0.Method_Proc_137_88_1408F480 (CInt(&HB), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_1408AE3:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408B37:   Set var_DC = Me.Txt
  loc_1408B3D:   Call 0.Method_Proc_137_88_1408F480 (CInt(&HC), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_1408B45:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408B99:   Set var_DC = Me.Txt
  loc_1408B9F:   Call 0.Method_Proc_137_88_1408F480 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_1408BA7:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408BFB:   Set var_DC = Me.Txt
  loc_1408C01:   Call 0.Method_Proc_137_88_1408F480 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_1408C09:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408C5D:   Set var_DC = Me.Txt
  loc_1408C63:   Call 0.Method_Proc_137_88_1408F480 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_1408C6B:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1408CC0:   Set var_DC = Me.Txt
  loc_1408CC6:   Call 0.Method_Proc_137_88_1408F480 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), &H11)
  loc_1408CCE:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408D23:   Set var_DC = Me.Txt
  loc_1408D29:   Call 0.Method_Proc_137_88_1408F480 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_1408D31:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1408D86:   Set var_DC = Me.Txt
  loc_1408D8C:   Call 0.Method_Proc_137_88_1408F480 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_1408D94:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408DE9:   Set var_DC = Me.Txt
  loc_1408DEF:   Call 0.Method_Proc_137_88_1408F480 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_1408DF7:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1408E4C:   Set var_DC = Me.Txt
  loc_1408E52:   Call 0.Method_Proc_137_88_1408F480 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_1408E5A:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408EAF:   Set var_DC = Me.Txt
  loc_1408EB5:   Call 0.Method_Proc_137_88_1408F480 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_1408EBD:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1408F12:   Set var_DC = Me.Txt
  loc_1408F18:   Call 0.Method_Proc_137_88_1408F480 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_1408F20:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1408F3D:   global_164 = &HFF
  loc_1408F42:   Set var_F4 = Nothing 
  loc_1408F46: End If
  loc_1408F46: Exit Sub
End Sub

Public Sub Proc_137_89_EE39B8
  'Data Table: 55E2AC
  loc_EE3906: On Error Goto loc_EE394C
  loc_EE391E: Call 0.Method_arg_18C (var_8C)
  loc_EE3926: Call var_8C.Show
  loc_EE393B: Call 0.Method_arg_188 (var_B0)
  loc_EE3943: var_88 = var_B0
  loc_EE3946: Proc_137_89_EE39B8 = 1
  loc_EE394C: ' Referenced from: EE3906
  loc_EE3954: Set var_8C = Err()
  loc_EE395A: Call 0.Method_arg_1C (var_B4)
  loc_EE396B: If (var_B4 <> 0) Then
  loc_EE3976:   Set var_8C = Err()
  loc_EE397C:   Call 0.Method_arg_2C (var_B0)
  loc_EE399D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE39B0: End If
  loc_EE39B0: Proc_137_89_EE39B8 = 
End Sub

Public Sub Proc_137_90_1C5F1A4
  'Data Table: 55E2AC
  Dim var_B8 As String
  Dim var_124 As Variant
  Dim var_114 As String
  Dim var_C8 As Long
  Dim var_134 As Variant
  Dim var_110 As String
  Dim unk_55E2CB As Connection15
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_144 As Variant
  Dim var_17C As Variant
  Dim var_180 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1C8 As String
  Dim var_184 As String
  Dim var_1F4 As String
  Dim var_168 As Fields15
  Dim var_CE As Integer
  Dim var_1EC As Fields15
  Dim var_1F0 As Field20
  Dim var_1F8 As Fields15
  Dim var_204 As Fields15
  Dim var_DC As Recordset15
  Dim var_E0 As Recordset15
  Dim var_EC As Double
  Dim var_210 As Double
  Dim var_218 As Double
  Dim var_29C As Variant
  Dim var_F8 As Double
  Dim var_108 As Double
  Dim var_100 As Double
  Dim var_E4 As Recordset15
  Dim var_8C As Recordset15
  Dim var_22C As String
  Dim var_230 As String
  Dim var_1E8 As Variant
  loc_1C58D39: Call Proc_137_91_120B838(MemVar_1F92044, "BREC")
  loc_1C58D44: var_C2 = var_110
  loc_1C58D86: var_C8 = CLng(Val(CStr(Right(var_114, 8))))
  loc_1C58D93: var_134 = 5
  loc_1C58DBA: var_B8 = var_110
  loc_1C58DD2: global_100 = CStr(Trim(Mid(var_110, 9, var_134)))
  loc_1C58DF1: If (global_120 = "ODC") Then
  loc_1C58E18:   unk_55E2CB.Execute "Select OUTDOORPARTYAC AS IndoorPartyAC from Enviro where LOGSite_code='" & MemVar_1F92078 & "'", var_134, -1
  loc_1C58E23:   Set var_CC = var_168
  loc_1C58E36: Else
  loc_1C58E5A:   unk_55E2CB.Execute "Select * from Enviro where LOGSite_code='" & MemVar_1F92078 & "'", var_134, -1
  loc_1C58E65:   Set var_CC = var_168
  loc_1C58E75: End If
  loc_1C58E7E: unk_55E2CB.BeginTrans var_16C
  loc_1C58E87: var_86 = CByte(1) 'Byte
  loc_1C58EA5: var_114 = "UPDATE PaychargeH SET PostDocId='" & var_B8
  loc_1C58EAC: var_154 = CVar(var_114 & "', SettleDate=") 'String
  loc_1C58EBA: Proc_6_7_F25D88(var_134, MemVar_1F920EC, var_154, var_1E8, -1, var_1EC)
  loc_1C58EDD: Set var_168 = Me.Txt
  loc_1C58EE3: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(0), var_180, var_184, var_168 & var_134 & " WHERE DocID='")
  loc_1C58EEB: var_168 = var_180.Text
  loc_1C58F0D: unk_55E2CB.Execute CStr(var_C8 & CVar(var_184) & "'"), var_B8, var_114
  loc_1C58F4D: var_110 = var_B8
  loc_1C58F61: unk_55E2CB.Execute "Delete from Ledger where Docid='" & var_110 & "' AND V_Type='BREC'", var_134, -1
  loc_1C58F99: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(0), var_180, var_110, "select AmtCr as CreditAmt,PayCode,Accode ,revmast.name as RevenueName,PaychargeH.Comments,ChqNo,ChqDate from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode where PayChargeH.Docid='")
  loc_1C58FA1: var_1E8 = var_180.Text
  loc_1C58FAA: var_114 = -1 & var_110
  loc_1C58FBF: var_164 = CVar("Delete from Ledger where Docid='" & var_110 & "' And PaychargeH.SITE_CODE='" & MemVar_1F92070 & "' AND Vdate = ") 'String
  loc_1C58FCD: Set var_1EC = Me.Txt
  loc_1C58FD3: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_1F0, var_164)
  loc_1C58FE2: Proc_6_7_F25D88(var_154, CVar(var_1F0))
  loc_1C59017: unk_55E2CB.Execute CStr(var_1F8 & var_154 & " and AmtCr<>0 and PaychargeH.PayType='Cash' AND RestCode='" & CVar(global_52) & "'"), Me.Txt, 
  loc_1C59022: Set var_8C = var_1F8
  loc_1C59050: ' Referenced from: 1C596FD
  loc_1C59062: If Not(Me.Recordset15.EOF) Then
  loc_1C59090:   var_D4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C590B6:   var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C590D8:   If (var_180.Value > 0) Then
  loc_1C590E1:     var_CE = (var_CE + 1)
  loc_1C590F2:     Set var_168 = Me.Txt
  loc_1C590F8:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180)
  loc_1C59100:     var_184 = var_180.Text
  loc_1C5917E:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C59186:     var_164 = Now
  loc_1C59190:     var_238 = 0
  loc_1C5919B:     var_234 = 0
  loc_1C591A6:     var_230 = 0
  loc_1C591AF:     var_22C = "A"
  loc_1C59216:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C59266:     var_CE = (var_CE + 1)
  loc_1C59277:     Set var_168 = Me.Txt
  loc_1C5927D:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C59285:     CDbl(0) = var_180.Text
  loc_1C592AF:     var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C59303:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5930B:     var_164 = Now
  loc_1C59315:     var_238 = 0
  loc_1C59320:     var_234 = 0
  loc_1C5932B:     var_230 = 0
  loc_1C59334:     var_22C = "A"
  loc_1C59354:     var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5939B:     Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_CE, "Delete from Ledger where Docid='" & var_110, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C593A6:     var_B8 = var_110
  loc_1C593AF:     var_C2 = "Delete from Ledger where Docid='" & var_110
  loc_1C593E8:   Else
  loc_1C593EE:     var_CE = (var_CE + 1)
  loc_1C593FF:     Set var_168 = Me.Txt
  loc_1C59405:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C5940D:     CSng(var_154) = var_180.Text
  loc_1C5948B:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C59493:     var_164 = Now
  loc_1C5949D:     var_238 = 0
  loc_1C594A8:     var_234 = 0
  loc_1C594B3:     var_230 = 0
  loc_1C594BC:     var_22C = "A"
  loc_1C59523:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C59573:     var_CE = (var_CE + 1)
  loc_1C59584:     Set var_168 = Me.Txt
  loc_1C5958A:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C59592:     CDbl(0) = var_180.Text
  loc_1C595B4:     var_1F0 = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1C595BC:     var_17C = var_1F0.Value
  loc_1C595D6:     var_1F8 = Me.Recordset15.Fields
  loc_1C59610:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C59618:     var_164 = Now
  loc_1C59622:     var_238 = 0
  loc_1C5962D:     var_234 = 0
  loc_1C59638:     var_230 = 0
  loc_1C59641:     var_22C = "A"
  loc_1C59661:     var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C596A8:     Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_CE, "Delete from Ledger where Docid='" & var_110, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C596B3:     var_B8 = var_110
  loc_1C596BC:     var_C2 = "Delete from Ledger where Docid='" & var_110
  loc_1C596F2:   End If
  loc_1C596F8:   Me.Recordset15.MoveNext
  loc_1C596FD:   GoTo loc_1C59050
  loc_1C59700: End If
  loc_1C5971E: Set var_168 = Me.Txt
  loc_1C59724: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(0), var_180, var_110, "select sum(AmtDr) as CreditAmt,RestCode,PayCode,max(Accode) as ACCode,max(revmast.name) as RevenueNAme  from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode where PayChargeH.Docid='", var_1E8, -1, var_1F8)
  loc_1C5972C: CStr(var_17C) = var_180.Text
  loc_1C5974A: var_164 = CVar(CDbl(0) & var_110 & "' And PaychargeH.SITE_CODE='" & MemVar_1F92070 & "' AND Vdate = ") 'String
  loc_1C59758: Set var_1EC = Me.Txt
  loc_1C5975E: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_1F0, var_164, CSng(var_154))
  loc_1C5976D: Proc_6_7_F25D88(var_154, CVar(var_1F0), CStr(var_194))
  loc_1C59775: var_17C = var_D4 & var_154 
  loc_1C59794: var_1C4 = var_17C & " and AmtDr<>0 and PaychargeH.PayType='Room' and roomtype='RO' AND RestCode='" & CVar(global_52) & "' Group By PayCode,RestCode" 
  loc_1C597A2: unk_55E2CB.Execute CStr(var_1C4), MemVar_1F920C8, CDate(var_164)
  loc_1C597AD: Set var_8C = var_1F8
  loc_1C597DB: ' Referenced from: 1C5A659
  loc_1C597ED: If Not(Me.Recordset15.EOF) Then
  loc_1C59846:   unk_55E2CB.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_17C, -1
  loc_1C59851:   Set var_DC = var_1EC
  loc_1C5987F:   If (var_DC.RecordCount > 0) Then
  loc_1C598AA:     var_110 = Proc_6_38_E68A98(CVar(var_DC.Fields.Item("ShortName")))
  loc_1C598B1:     var_114 = var_110 & " "
  loc_1C598C6:     var_1EC = Me.Recordset15.Fields
  loc_1C598E3:     var_D4 = var_1EC & Proc_6_38_E68A98(CVar(var_1EC.Item("RevenueName")), var_114)
  loc_1C59900:   Else
  loc_1C5992E:     var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1C5993B:   End If
  loc_1C5996D:   If Not(IsNull(CVar(Me.Recordset15.Fields.Item("AcCode")))) Then
  loc_1C5998D:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C599AF:     If (var_180.Value > 0) Then
  loc_1C599B8:       var_CE = (var_CE + 1)
  loc_1C599C9:       Set var_168 = Me.Txt
  loc_1C599CF:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180)
  loc_1C599D7:       var_184 = var_180.Text
  loc_1C59A55:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C59A5D:       var_164 = Now
  loc_1C59A67:       var_238 = 0
  loc_1C59A72:       var_234 = 0
  loc_1C59A7D:       var_230 = 0
  loc_1C59A86:       var_22C = "A"
  loc_1C59AED:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C59B3D:       var_CE = (var_CE + 1)
  loc_1C59B4E:       Set var_168 = Me.Txt
  loc_1C59B54:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C59B5C:       CDbl(0) = var_180.Text
  loc_1C59B86:       var_17C = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C59BDA:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C59BE2:       var_164 = Now
  loc_1C59BEC:       var_238 = 0
  loc_1C59BF7:       var_234 = 0
  loc_1C59C02:       var_230 = 0
  loc_1C59C0B:       var_22C = "A"
  loc_1C59C2B:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C59C72:       Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C59C7D:       var_B8 = var_110
  loc_1C59C86:       var_C2 = var_114
  loc_1C59CBF:     Else
  loc_1C59CC5:       var_CE = (var_CE + 1)
  loc_1C59CD6:       Set var_168 = Me.Txt
  loc_1C59CDC:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C59CE4:       CSng(var_154) = var_180.Text
  loc_1C59D0E:       var_17C = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C59D62:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C59D6A:       var_164 = Now
  loc_1C59D74:       var_238 = 0
  loc_1C59D7F:       var_234 = 0
  loc_1C59D8A:       var_230 = 0
  loc_1C59D93:       var_22C = "A"
  loc_1C59DBA:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C59DFA:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C59E05:       var_B8 = var_110
  loc_1C59E0E:       var_C2 = var_114
  loc_1C59E44:     End If
  loc_1C59E4A:     var_CE = (var_CE + 1)
  loc_1C59E5B:     Set var_168 = Me.Txt
  loc_1C59E61:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CSng(var_154))
  loc_1C59E69:     CDbl(0) = var_180.Text
  loc_1C59E93:     var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C59EE7:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C59EEF:     var_164 = Now
  loc_1C59EF9:     var_238 = 0
  loc_1C59F04:     var_234 = 0
  loc_1C59F0F:     var_230 = 0
  loc_1C59F18:     var_22C = "A"
  loc_1C59F38:     var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C59F7F:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C59F8A:     var_B8 = var_110
  loc_1C59F93:     var_C2 = var_114
  loc_1C59FCC:   Else
  loc_1C59FE9:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5A00B:     If (var_180.Value > 0) Then
  loc_1C5A027:       MsgBox(vbNullString, &H10, var_154, var_164, var_17C)
  loc_1C5A03D:       var_CE = (var_CE + 1)
  loc_1C5A04E:       Set var_168 = Me.Txt
  loc_1C5A054:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C5A05C:       CSng(var_154) = var_180.Text
  loc_1C5A0DA:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5A0E2:       var_164 = Now
  loc_1C5A0EC:       var_238 = 0
  loc_1C5A0F7:       var_234 = 0
  loc_1C5A102:       var_230 = 0
  loc_1C5A10B:       var_22C = "A"
  loc_1C5A172:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5A1C2:       var_CE = (var_CE + 1)
  loc_1C5A1D3:       Set var_168 = Me.Txt
  loc_1C5A1D9:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5A1E1:       CDbl(0) = var_180.Text
  loc_1C5A20B:       var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5A25F:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5A267:       var_164 = Now
  loc_1C5A271:       var_238 = 0
  loc_1C5A27C:       var_234 = 0
  loc_1C5A287:       var_230 = 0
  loc_1C5A290:       var_22C = "A"
  loc_1C5A2B0:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5A2F7:       Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5A302:       var_B8 = var_110
  loc_1C5A30B:       var_C2 = var_114
  loc_1C5A344:     Else
  loc_1C5A34A:       var_CE = (var_CE + 1)
  loc_1C5A35B:       Set var_168 = Me.Txt
  loc_1C5A361:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C5A369:       CSng(var_154) = var_180.Text
  loc_1C5A3E7:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5A3EF:       var_164 = Now
  loc_1C5A3F9:       var_238 = 0
  loc_1C5A404:       var_234 = 0
  loc_1C5A40F:       var_230 = 0
  loc_1C5A418:       var_22C = "A"
  loc_1C5A47F:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5A4CF:       var_CE = (var_CE + 1)
  loc_1C5A4E0:       Set var_168 = Me.Txt
  loc_1C5A4E6:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5A4EE:       CDbl(0) = var_180.Text
  loc_1C5A510:       var_1F0 = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1C5A518:       var_17C = var_1F0.Value
  loc_1C5A532:       var_1F8 = Me.Recordset15.Fields
  loc_1C5A56C:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5A574:       var_164 = Now
  loc_1C5A57E:       var_238 = 0
  loc_1C5A589:       var_234 = 0
  loc_1C5A594:       var_230 = 0
  loc_1C5A59D:       var_22C = "A"
  loc_1C5A5BD:       var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C5A604:       Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5A60F:       var_B8 = var_110
  loc_1C5A618:       var_C2 = var_114
  loc_1C5A64E:     End If
  loc_1C5A64E:   End If
  loc_1C5A654:   Me.Recordset15.MoveNext
  loc_1C5A659:   GoTo loc_1C597DB
  loc_1C5A65C: End If
  loc_1C5A67A: Set var_168 = Me.Txt
  loc_1C5A680: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(0), var_180, var_110, "select Sum(AmtCr) as CreditAmt,PayCode,max(Comments) as Comments,max(Accode) as ACCode,max(CardNo) as CardNo,max(RestCode) as RestCode,max(PaychargeH.PayType) as Paytype,max(revmast.name) as RevenueName,BatchNo from PaychargeH Left Join RevMast on Revmast.Code=PaychargeH.PayCode  where PayChargeH.Docid='", var_1E8, -1, var_1F8)
  loc_1C5A688: CStr(var_17C) = var_180.Text
  loc_1C5A691: var_114 = CDbl(0) & var_110
  loc_1C5A69F: var_1C8 = var_114 & "' And PaychargeH.SITE_CODE='" & MemVar_1F92070
  loc_1C5A6A6: var_164 = CVar(var_1C8 & "' AND Vdate = ") 'String
  loc_1C5A6B4: Set var_1EC = Me.Txt
  loc_1C5A6BA: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_1F0, var_164, CSng(var_154))
  loc_1C5A6C9: Proc_6_7_F25D88(var_154, CVar(var_1F0), CStr(var_194))
  loc_1C5A6F0: var_1C4 = var_D4 & var_154 & "  and AmtCr<>0 and RestCode='" & CVar(global_52) & "' and PaychargeH.PayType in ('Credit Card') Group by Paycode,BatchNo" 
  loc_1C5A6F4: var_1F4 = CStr(var_1C4)
  loc_1C5A6FE: unk_55E2CB.Execute var_1F4, MemVar_1F920C8, CDate(var_164)
  loc_1C5A709: Set var_8C = var_1F8
  loc_1C5A737: ' Referenced from: 1C5D055
  loc_1C5A749: If Not(Me.Recordset15.EOF) Then
  loc_1C5A77A:   Proc_6_39_E7C810(var_154, CVar(Me.Recordset15.Fields.Item("BatchNo")))
  loc_1C5A787:   var_D4 = CStr("Batch No. " & var_154)
  loc_1C5A7B3:   var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5A7D5:   If (var_180.Value > 0) Then
  loc_1C5A7DE:     var_CE = (var_CE + 1)
  loc_1C5A7EF:     Set var_168 = Me.Txt
  loc_1C5A7F5:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180)
  loc_1C5A7FD:     var_184 = var_180.Text
  loc_1C5A87B:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5A883:     var_164 = Now
  loc_1C5A88D:     var_238 = 0
  loc_1C5A898:     var_234 = 0
  loc_1C5A8A3:     var_230 = 0
  loc_1C5A8AC:     var_22C = "A"
  loc_1C5A913:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5A963:     var_CE = (var_CE + 1)
  loc_1C5A974:     Set var_168 = Me.Txt
  loc_1C5A97A:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5A982:     CDbl(0) = var_180.Text
  loc_1C5A9AC:     var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5AA00:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5AA08:     var_164 = Now
  loc_1C5AA12:     var_238 = 0
  loc_1C5AA1D:     var_234 = 0
  loc_1C5AA28:     var_230 = 0
  loc_1C5AA31:     var_22C = "A"
  loc_1C5AA51:     var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5AA98:     Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5AAA3:     var_B8 = var_110
  loc_1C5AAAC:     var_C2 = var_114
  loc_1C5AAE5:   Else
  loc_1C5AAEB:     var_CE = (var_CE + 1)
  loc_1C5AAFC:     Set var_168 = Me.Txt
  loc_1C5AB02:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(var_17C), CDbl(0))
  loc_1C5AB0A:     CSng(var_154) = var_180.Text
  loc_1C5AB88:     var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5AB90:     var_164 = Now
  loc_1C5AB9A:     var_238 = 0
  loc_1C5ABA5:     var_234 = 0
  loc_1C5ABB0:     var_230 = 0
  loc_1C5ABB9:     var_22C = "A"
  loc_1C5AC20:     Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5AC70:     var_CE = (var_CE + 1)
  loc_1C5AC81:     Set var_168 = Me.Txt
  loc_1C5AC87:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5AC8F:     CDbl(0) = var_180.Text
  loc_1C5ACB1:     var_1F0 = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1C5ACB9:     var_17C = var_1F0.Value
  loc_1C5ACD3:     var_1F8 = Me.Recordset15.Fields
  loc_1C5AD0D:     var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5AD15:     var_164 = Now
  loc_1C5AD1F:     var_238 = 0
  loc_1C5AD2A:     var_234 = 0
  loc_1C5AD35:     var_230 = 0
  loc_1C5AD3E:     var_22C = "A"
  loc_1C5AD5E:     var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C5ADA5:     Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_CE, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5ADB0:     var_B8 = var_110
  loc_1C5ADB9:     var_C2 = var_114
  loc_1C5ADEF:   End If
  loc_1C5AE2E:   If (Me.Recordset15.Fields.Item("PayType").Value = "Credit Card") Then
  loc_1C5AE70:     var_154 = "Select Top 1 Revcode,AppDate from CreditCardHistory Where Revcode='" & Me.Recordset15.Fields.Item("PayCode").Value 
  loc_1C5AE88:     Set var_1EC = Me.Txt
  loc_1C5AE8E:     Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_1F0, var_154 & "' and AppDate<=", var_1E8, -1, var_1F8, CStr(var_17C))
  loc_1C5AE9D:     Proc_6_7_F25D88(var_194, CVar(var_1F0), CDbl(0), CSng(var_154))
  loc_1C5AEBC:     unk_55E2CB.Execute CStr(CStr(var_194) & var_194 & " Order by AppDate Desc"), var_D4, MemVar_1F920C8
  loc_1C5AEC7:     Set var_E0 = var_1F8
  loc_1C5AEFF:     If (var_E0.RecordCount > 0) Then
  loc_1C5AF0F:       var_144 = "Select CommAc as BankCommAc,CommPer as BankCommPer,Taxstru,Limit,Limit1,CompOperator from CreditCardHistory Where Revcode='"
  loc_1C5AF41:       var_154 = var_144 & Me.Recordset15.Fields.Item("PayCode").Value 
  loc_1C5AF4A:       var_164 = var_154 & "' and AppDate<=" 
  loc_1C5AF74:       Proc_6_7_F25D88(var_194, CVar(var_E0.Fields.Item("AppDate")), var_164, var_1E8)
  loc_1C5AF7C:       var_1A4 = -1 & var_194 
  loc_1C5AF93:       unk_55E2CB.Execute CStr(CStr(var_194) & var_194 & vbNullString), var_1F8, CDate(var_164)
  loc_1C5AF9E:       Set var_E0 = var_1F8
  loc_1C5AFC2:       ' Referenced from: 1C5C24A
  loc_1C5AFD1:       If Not(var_E0.EOF) Then
  loc_1C5B002:         Proc_6_39_E7C810(var_154, CVar(Me.Recordset15.Fields.Item("BatchNo")))
  loc_1C5B00F:         var_D4 = CStr("Batch No. " & var_154)
  loc_1C5B046:         var_25C = Proc_6_38_E68A98(CVar(var_E0.Fields.Item("CompOperator")))
  loc_1C5B057:         If (var_25C = "<=") Then
  loc_1C5B0C5:           If (Me.Recordset15.Fields.Item("CreditAmt").Value >= var_E0.Fields.Item("Limit").Value) Then
  loc_1C5B0FB:             var_EC = Val(CStr(var_E0.Fields.Item("BankCommPer").Value))
  loc_1C5B136:             var_F0 = CStr(var_E0.Fields.Item("TaxStru").Value)
  loc_1C5B160:             var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5B1D7:             var_194 = (Round(CVar(((Val(CStr(var_180.Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))), 2) > 0)
  loc_1C5B240:             var_29C = var_194 And Not(IsNull(CVar(var_E0.Fields.Item("BankCommAc")))) And (var_E0.Fields.Item("BankCommAc").Value <> vbNullString)
  loc_1C5B26F:             If CBool(var_29C) Then
  loc_1C5B278:               var_CE = (var_CE + 1)
  loc_1C5B289:               Set var_168 = Me.Txt
  loc_1C5B28F:               Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1F4, var_CE)
  loc_1C5B297:               var_218 = var_180.Text
  loc_1C5B345:               var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5B373:               var_1C4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5B37B:               var_194 = Now
  loc_1C5B385:               var_2AC = 0
  loc_1C5B390:               var_2A8 = 0
  loc_1C5B39B:               var_238 = 0
  loc_1C5B3A4:               var_234 = "A"
  loc_1C5B407:               Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_1F4))
  loc_1C5B465:               var_CE = (var_CE + 1)
  loc_1C5B476:               Set var_168 = Me.Txt
  loc_1C5B47C:               Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1F4, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(var_164, 2)))
  loc_1C5B484:               CDbl(0) = var_180.Text
  loc_1C5B4AB:               var_1A4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5B52F:               var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5B536:               var_17C = Round(var_164, 2)
  loc_1C5B560:               var_1C4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5B568:               var_194 = Now
  loc_1C5B572:               var_2AC = 0
  loc_1C5B57D:               var_2A8 = 0
  loc_1C5B588:               var_238 = 0
  loc_1C5B591:               var_234 = "A"
  loc_1C5B5F4:               Proc_6_141_12E1E18(MemVar_1F92044, var_184, var_CE, var_1C8, var_C8, global_100, MemVar_1F92070, CDate(var_1F4))
  loc_1C5B5FF:               var_B8 = var_184
  loc_1C5B608:               var_C2 = var_1C8
  loc_1C5B64C:             End If
  loc_1C5B64C:           End If
  loc_1C5B64F:         Else
  loc_1C5B657:           If (var_25C = "Between") Then
  loc_1C5B710:             var_1C4 = (Me.Recordset15.Fields.Item("CreditAmt").Value >= var_E0.Fields.Item("Limit").Value) And (Me.Recordset15.Fields.Item("CreditAmt").Value <= var_E0.Fields.Item("Limit1").Value)
  loc_1C5B734:             If CBool(var_1C4) Then
  loc_1C5B7A5:               var_F0 = CStr(var_E0.Fields.Item("TaxStru").Value)
  loc_1C5B7CF:               var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5B7E8:               var_210 = Val(CStr(var_180.Value))
  loc_1C5B81E:               var_218 = Val(CStr(var_E0.Fields.Item("BankCommPer").Value))
  loc_1C5B869:               var_1A4 = CVar(var_E0.Fields.Item("BankCommAc")) 'Address
  loc_1C5B8AF:               var_29C = (Round(CVar(((var_210 * var_218) / CDbl(&H64))), 2) > 0) And Not(IsNull(var_1A4)) And (var_E0.Fields.Item("BankCommAc").Value <> vbNullString)
  loc_1C5B8DE:               If CBool(var_29C) Then
  loc_1C5B8E7:                 var_CE = (var_CE + 1)
  loc_1C5B8F8:                 Set var_168 = Me.Txt
  loc_1C5B8FE:                 Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1F4, var_CE, var_218, var_210, Val(CStr(var_E0.Fields.Item("BankCommPer").Value)))
  loc_1C5B906:                 CStr(var_1A4) = var_180.Text
  loc_1C5B9B4:                 var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5B9E2:                 var_1C4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5B9EA:                 var_194 = Now
  loc_1C5B9F4:                 var_2AC = 0
  loc_1C5B9FF:                 var_2A8 = 0
  loc_1C5BA0A:                 var_238 = 0
  loc_1C5BA13:                 var_234 = "A"
  loc_1C5BA76:                 Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_1F4))
  loc_1C5BAD4:                 var_CE = (var_CE + 1)
  loc_1C5BAE5:                 Set var_168 = Me.Txt
  loc_1C5BAEB:                 Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1F4, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(var_164, 2)))
  loc_1C5BAF3:                 CDbl(0) = var_180.Text
  loc_1C5BB1A:                 var_1A4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5BB9E:                 var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5BBA5:                 var_17C = Round(var_164, 2)
  loc_1C5BBCF:                 var_1C4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5BBD7:                 var_194 = Now
  loc_1C5BBE1:                 var_2AC = 0
  loc_1C5BBEC:                 var_2A8 = 0
  loc_1C5BBF7:                 var_238 = 0
  loc_1C5BC00:                 var_234 = "A"
  loc_1C5BC63:                 Proc_6_141_12E1E18(MemVar_1F92044, var_184, var_CE, var_1C8, var_C8, global_100, MemVar_1F92070, CDate(var_1F4))
  loc_1C5BC6E:                 var_B8 = var_184
  loc_1C5BC77:                 var_C2 = var_1C8
  loc_1C5BCBB:               End If
  loc_1C5BCBB:             End If
  loc_1C5BCBE:           Else
  loc_1C5BCF1:             var_EC = Val(CStr(var_E0.Fields.Item("BankCommPer").Value))
  loc_1C5BD2C:             var_F0 = CStr(var_E0.Fields.Item("TaxStru").Value)
  loc_1C5BD56:             var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5BD6F:             var_210 = Val(CStr(var_180.Value))
  loc_1C5BDA5:             var_218 = Val(CStr(var_E0.Fields.Item("BankCommPer").Value))
  loc_1C5BDF0:             var_1A4 = CVar(var_E0.Fields.Item("BankCommAc")) 'Address
  loc_1C5BE36:             var_29C = (Round(CVar(((var_210 * var_218) / CDbl(&H64))), 2) > 0) And Not(IsNull(var_1A4)) And (var_E0.Fields.Item("BankCommAc").Value <> vbNullString)
  loc_1C5BE65:             If CBool(var_29C) Then
  loc_1C5BE6E:               var_CE = (var_CE + 1)
  loc_1C5BE7F:               Set var_168 = Me.Txt
  loc_1C5BE85:               Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1F4, var_CE, var_218, var_210, var_EC)
  loc_1C5BE8D:               CStr(var_1A4) = var_180.Text
  loc_1C5BF3B:               var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5BF69:               var_1C4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5BF71:               var_194 = Now
  loc_1C5BF7B:               var_2AC = 0
  loc_1C5BF86:               var_2A8 = 0
  loc_1C5BF91:               var_238 = 0
  loc_1C5BF9A:               var_234 = "A"
  loc_1C5BFFD:               Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_1F4))
  loc_1C5C05B:               var_CE = (var_CE + 1)
  loc_1C5C06C:               Set var_168 = Me.Txt
  loc_1C5C072:               Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1F4, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(var_164, 2)))
  loc_1C5C07A:               CDbl(0) = var_180.Text
  loc_1C5C0A1:               var_1A4 = var_E0.Fields.Item("BankCommAc").Value
  loc_1C5C125:               var_164 = CVar(((Val(CStr(Me.Recordset15.Fields.Item("CreditAmt").Value)) * Val(CStr(var_E0.Fields.Item("BankCommPer").Value))) / CDbl(&H64))) 'Double
  loc_1C5C12C:               var_17C = Round(var_164, 2)
  loc_1C5C156:               var_1C4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5C15E:               var_194 = Now
  loc_1C5C168:               var_2AC = 0
  loc_1C5C173:               var_2A8 = 0
  loc_1C5C17E:               var_238 = 0
  loc_1C5C187:               var_234 = "A"
  loc_1C5C1EA:               Proc_6_141_12E1E18(MemVar_1F92044, var_184, var_CE, var_1C8, var_C8, global_100, MemVar_1F92070, CDate(var_1F4))
  loc_1C5C1F5:               var_B8 = var_184
  loc_1C5C1FE:               var_C2 = var_1C8
  loc_1C5C242:             End If
  loc_1C5C242:           End If
  loc_1C5C242:         End If
  loc_1C5C245:         var_E0.MoveNext
  loc_1C5C24A:         GoTo loc_1C5AFC2
  loc_1C5C24D:       End If
  loc_1C5C262:       var_168 = Me.Recordset15.Fields
  loc_1C5C272:       var_134 = var_168.Item("CreditAmt").Value
  loc_1C5C2A6:       var_F8 = CSng(Round(CVar(((Val(CStr(var_134)) * var_EC) / CDbl(&H64))), 3))
  loc_1C5C2BF:       var_108 = CDbl(0)
  loc_1C5C2DC:       var_110 = "Select AcCode,Rate,TaxStru.Nature from TaxStru INNER JOIN revmast on RevMast.Code=TaxStru.TaxCode Where TaxStru.Code='" & var_F0
  loc_1C5C2E3:       var_114 = var_110 & "'"
  loc_1C5C2EC:       unk_55E2CB.Execute var_114, var_134, -1
  loc_1C5C2F7:       Set var_E4 = var_168
  loc_1C5C31B:       If (var_E4.RecordCount > 0) Then
  loc_1C5C338:         var_180 = var_E4.Fields.Item("Nature")
  loc_1C5C348:         var_2CC = var_180.Value 'Variant
  loc_1C5C35E:         If (var_2CC = "On Base Amt") Then
  loc_1C5C367:           var_CE = (var_CE + 1)
  loc_1C5C37E:           Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1C8, var_CE, Me.Txt, CDbl(0), var_108)
  loc_1C5C386:           var_F8 = var_180.Text
  loc_1C5C429:           var_1A4 = var_E4.Fields.Item("AcCode").Value
  loc_1C5C431:           var_17C = Now
  loc_1C5C43B:           var_2A8 = 0
  loc_1C5C446:           var_238 = 0
  loc_1C5C451:           var_234 = 0
  loc_1C5C45A:           var_230 = "A"
  loc_1C5C4BD:           Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_1C8))
  loc_1C5C513:           var_CE = (var_CE + 1)
  loc_1C5C524:           Set var_168 = Me.Txt
  loc_1C5C52A:           Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1C8, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 2)))
  loc_1C5C532:           CDbl(0) = var_180.Text
  loc_1C5C559:           var_194 = var_E4.Fields.Item("AcCode").Value
  loc_1C5C5AB:           var_164 = Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 2)
  loc_1C5C5D5:           var_1A4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5C5DD:           var_17C = Now
  loc_1C5C5E7:           var_2A8 = 0
  loc_1C5C5F2:           var_238 = 0
  loc_1C5C5FD:           var_234 = 0
  loc_1C5C606:           var_230 = "A"
  loc_1C5C669:           Proc_6_141_12E1E18(MemVar_1F92044, var_114, var_CE, var_184, var_C8, global_100, MemVar_1F92070, CDate(var_1C8))
  loc_1C5C674:           var_B8 = var_114
  loc_1C5C67D:           var_C2 = var_184
  loc_1C5C70F:           var_100 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_F8) / CDbl(&H64))), 3))
  loc_1C5C73F:           var_180 = var_E4.Fields.Item("Rate")
  loc_1C5C758:           var_210 = Val(CStr(var_180.Value))
  loc_1C5C781:           var_17C = (CVar(var_108) + Round(CVar(((var_210 * var_F8) / CDbl(&H64))), 3))
  loc_1C5C786:           var_108 = CSng(var_17C)
  loc_1C5C7A1:         Else
  loc_1C5C7AC:           If (var_2CC = "On Prev. Tax Amt") Then
  loc_1C5C7B5:             var_CE = (var_CE + 1)
  loc_1C5C7C6:             Set var_168 = Me.Txt
  loc_1C5C7CC:             Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1C8, var_CE, var_108, var_210, var_100)
  loc_1C5C7D4:             var_210 = var_180.Text
  loc_1C5C877:             var_1A4 = var_E4.Fields.Item("AcCode").Value
  loc_1C5C87F:             var_17C = Now
  loc_1C5C889:             var_2A8 = 0
  loc_1C5C894:             var_238 = 0
  loc_1C5C89F:             var_234 = 0
  loc_1C5C8A8:             var_230 = "A"
  loc_1C5C90B:             Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_1C8))
  loc_1C5C961:             var_CE = (var_CE + 1)
  loc_1C5C972:             Set var_168 = Me.Txt
  loc_1C5C978:             Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1C8, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 2)))
  loc_1C5C980:             CDbl(0) = var_180.Text
  loc_1C5C9A7:             var_194 = var_E4.Fields.Item("AcCode").Value
  loc_1C5C9F9:             var_164 = Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 2)
  loc_1C5CA23:             var_1A4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5CA2B:             var_17C = Now
  loc_1C5CA35:             var_2A8 = 0
  loc_1C5CA40:             var_238 = 0
  loc_1C5CA4B:             var_234 = 0
  loc_1C5CA54:             var_230 = "A"
  loc_1C5CAB7:             Proc_6_141_12E1E18(MemVar_1F92044, var_114, var_CE, var_184, var_C8, global_100, MemVar_1F92070, CDate(var_1C8))
  loc_1C5CAC2:             var_B8 = var_114
  loc_1C5CACB:             var_C2 = var_184
  loc_1C5CB5D:             var_100 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_100) / CDbl(&H64))), 3))
  loc_1C5CB8D:             var_180 = var_E4.Fields.Item("Rate")
  loc_1C5CBA6:             var_210 = Val(CStr(var_180.Value))
  loc_1C5CBCF:             var_17C = (CVar(var_108) + Round(CVar(((var_210 * var_100) / CDbl(&H64))), 3))
  loc_1C5CBD4:             var_108 = CSng(var_17C)
  loc_1C5CBEF:           Else
  loc_1C5CBFA:             If (var_2CC = "On Running Total") Then
  loc_1C5CC03:               var_CE = (var_CE + 1)
  loc_1C5CC14:               Set var_168 = Me.Txt
  loc_1C5CC1A:               Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1C8, var_CE, var_108, var_210, var_100)
  loc_1C5CC22:               var_210 = var_180.Text
  loc_1C5CCC5:               var_1A4 = var_E4.Fields.Item("AcCode").Value
  loc_1C5CCCD:               var_17C = Now
  loc_1C5CCD7:               var_2A8 = 0
  loc_1C5CCE2:               var_238 = 0
  loc_1C5CCED:               var_234 = 0
  loc_1C5CCF6:               var_230 = "A"
  loc_1C5CD59:               Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_CE, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_1C8))
  loc_1C5CDAF:               var_CE = (var_CE + 1)
  loc_1C5CDC0:               Set var_168 = Me.Txt
  loc_1C5CDC6:               Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_1C8, var_CE, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_108) / CDbl(&H64))), 2)))
  loc_1C5CDCE:               CDbl(0) = var_180.Text
  loc_1C5CDED:               var_1F0 = var_E4.Fields.Item("AcCode")
  loc_1C5CDF5:               var_194 = var_1F0.Value
  loc_1C5CE0C:               var_1F8 = var_E4.Fields
  loc_1C5CE47:               var_164 = Round(CVar(((Val(CStr(var_1F8.Item("Rate").Value)) * var_108) / CDbl(&H64))), 2)
  loc_1C5CE71:               var_1A4 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5CE79:               var_17C = Now
  loc_1C5CE83:               var_2A8 = 0
  loc_1C5CE8E:               var_238 = 0
  loc_1C5CE99:               var_234 = 0
  loc_1C5CEA2:               var_230 = "A"
  loc_1C5CF05:               Proc_6_141_12E1E18(MemVar_1F92044, var_114, var_CE, var_184, var_C8, global_100, MemVar_1F92070, CDate(var_1C8))
  loc_1C5CF10:               var_B8 = var_114
  loc_1C5CF19:               var_C2 = var_184
  loc_1C5CFAB:               var_100 = CSng(Round(CVar(((Val(CStr(var_E4.Fields.Item("Rate").Value)) * var_108) / CDbl(&H64))), 3))
  loc_1C5CFDB:               var_180 = var_E4.Fields.Item("Rate")
  loc_1C5CFEC:               var_110 = CStr(var_180.Value)
  loc_1C5CFF4:               var_210 = Val(var_110)
  loc_1C5D00E:               var_154 = CVar(((var_210 * var_108) / CDbl(&H64))) 'Double
  loc_1C5D01D:               var_17C = (CVar(var_108) + Round(var_154, 3))
  loc_1C5D022:               var_108 = CSng(var_17C)
  loc_1C5D03A:             End If
  loc_1C5D03A:           End If
  loc_1C5D03A:         End If
  loc_1C5D03A:       End If
  loc_1C5D03A:     End If
  loc_1C5D03F:     Set var_E0 = Nothing
  loc_1C5D047:     Set var_E4 = Nothing
  loc_1C5D04A:   End If
  loc_1C5D050:   var_8C.MoveNext
  loc_1C5D055:   GoTo loc_1C5A737
  loc_1C5D058: End If
  loc_1C5D076: Set var_168 = Me.Txt
  loc_1C5D07C: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(0), var_180, var_110, "select AmtCr as CreditAmt,PayCode,Comments,Accode,CardNo,RestCode,PaychargeH.PayType,revmast.name as RevenueName,ChqNo,ChqDate  from PaychargeH Left Join RevMast on Revmast.Code=PayChargeH.PayCode  where PayChargeH.Docid='", var_1E8, -1, var_1F8)
  loc_1C5D084: var_108 = var_180.Text
  loc_1C5D08D: var_114 = var_210 & var_110
  loc_1C5D094: var_184 = var_114 & "' And PaychargeH.SITE_CODE='"
  loc_1C5D0A2: var_164 = CVar(var_184 & MemVar_1F92070 & "' AND Vdate = ") 'String
  loc_1C5D0B0: Set var_1EC = Me.Txt
  loc_1C5D0B6: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_1F0, var_164, var_100)
  loc_1C5D0C5: Proc_6_7_F25D88(var_154, CVar(var_1F0), var_210)
  loc_1C5D0CD: var_17C = CStr(var_194) & var_154 
  loc_1C5D0D1: var_124 = " and AmtCr<>0 and PaychargeH.docid not in (Select ContraDocId from PaychargeH where ContraDocId is not null) and (PaychargeH.DbtChkIn<>'Yes' or PaychargeH.DbtChkIn is NULL ) AND RestCode='"
  loc_1C5D0EC: var_1C4 = var_17C & var_124 & CVar(global_52) & "' and PaychargeH.PayType not in ('Cash','Staff','Company','Member','Credit Card')" 
  loc_1C5D0FA: unk_55E2CB.Execute CStr(var_1C4), CDbl(0), CSng(var_164)
  loc_1C5D105: Set var_8C = var_1F8
  loc_1C5D133: ' Referenced from: 1C5E286
  loc_1C5D145: If Not(Me.Recordset15.EOF) Then
  loc_1C5D184:   If (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments"))) = vbNullString) Then
  loc_1C5D1DD:     unk_55E2CB.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_17C, -1
  loc_1C5D1E8:     Set var_DC = var_1EC
  loc_1C5D216:     If (var_DC.RecordCount > 0) Then
  loc_1C5D258:       If (Me.Recordset15.Fields.Item("PayType").Value = "Credit Card") Then
  loc_1C5D2BA:         var_17C = (CVar(Proc_6_38_E68A98(CVar(var_DC.Fields.Item("ShortName"))) & " C.C.No.") + Me.Recordset15.Fields.Item("CardNo").Value)
  loc_1C5D2BF:         var_D4 = CStr(var_17C)
  loc_1C5D2DC:       Else
  loc_1C5D33B:         var_17C = (CVar(Proc_6_38_E68A98(CVar(var_DC.Fields.Item("ShortName"))) & " ") + Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1C5D340:         var_D4 = CStr(var_17C)
  loc_1C5D35A:       End If
  loc_1C5D35D:     Else
  loc_1C5D38B:       var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1C5D398:     End If
  loc_1C5D398:   End If
  loc_1C5D3A3:   If (global_152 = "Cheque") Then
  loc_1C5D3D1:     var_110 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C5D3E2:     If (var_110 = vbNullString) Then
  loc_1C5D3E5:       GoTo loc_1C5D41C
  loc_1C5D3E8:     End If
  loc_1C5D413:     var_D4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C5D41C:     ' Referenced from: 1C5D3E5
  loc_1C5D41C:   End If
  loc_1C5D45B:   If (Me.Recordset15.Fields.Item("PayType").Value = "Cheque") Then
  loc_1C5D47B:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5D49D:     If (var_180.Value > 0) Then
  loc_1C5D4A6:       var_CE = (var_CE + 1)
  loc_1C5D4B7:       Set var_168 = Me.Txt
  loc_1C5D4BD:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184)
  loc_1C5D543:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5D54B:       var_164 = Now
  loc_1C5D575:       var_1A4 = Me.Recordset15.Fields.Item("ChqNo").Value
  loc_1C5D59F:       var_1C4 = Me.Recordset15.Fields.Item("ChqDate").Value
  loc_1C5D5A9:       var_238 = 0
  loc_1C5D5C2:       var_22C = "A"
  loc_1C5D629:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5D685:       var_CE = (var_CE + 1)
  loc_1C5D696:       Set var_168 = Me.Txt
  loc_1C5D69C:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5D6A4:       CDbl(0) = var_180.Text
  loc_1C5D6CE:       var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5D722:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5D72A:       var_164 = Now
  loc_1C5D754:       var_1A4 = Me.Recordset15.Fields.Item("ChqNo").Value
  loc_1C5D77E:       var_1C4 = Me.Recordset15.Fields.Item("ChqDate").Value
  loc_1C5D788:       var_238 = 0
  loc_1C5D7A1:       var_22C = "A"
  loc_1C5D7C1:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5D808:       Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5D813:       var_B8 = var_110
  loc_1C5D81C:       var_C2 = var_114
  loc_1C5D861:     Else
  loc_1C5D867:       var_CE = (var_CE + 1)
  loc_1C5D878:       Set var_168 = Me.Txt
  loc_1C5D87E:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(var_17C), CDbl(0))
  loc_1C5D886:       CSng(var_154) = var_180.Text
  loc_1C5D904:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5D90C:       var_164 = Now
  loc_1C5D936:       var_1A4 = Me.Recordset15.Fields.Item("ChqNo").Value
  loc_1C5D960:       var_1C4 = Me.Recordset15.Fields.Item("ChqDate").Value
  loc_1C5D96A:       var_238 = 0
  loc_1C5D983:       var_22C = "A"
  loc_1C5D9EA:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5DA46:       var_CE = (var_CE + 1)
  loc_1C5DA57:       Set var_168 = Me.Txt
  loc_1C5DA5D:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5DA65:       CDbl(0) = var_180.Text
  loc_1C5DA8F:       var_17C = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5DAE3:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5DAEB:       var_164 = Now
  loc_1C5DB15:       var_1A4 = Me.Recordset15.Fields.Item("ChqNo").Value
  loc_1C5DB3F:       var_1C4 = Me.Recordset15.Fields.Item("ChqDate").Value
  loc_1C5DB49:       var_238 = 0
  loc_1C5DB62:       var_22C = "A"
  loc_1C5DB82:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5DBC9:       Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5DBD4:       var_B8 = var_110
  loc_1C5DBDD:       var_C2 = var_114
  loc_1C5DC1F:     End If
  loc_1C5DC22:   Else
  loc_1C5DC3F:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5DC61:     If (var_180.Value > 0) Then
  loc_1C5DC6A:       var_CE = (var_CE + 1)
  loc_1C5DC7B:       Set var_168 = Me.Txt
  loc_1C5DC81:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(var_17C), CDbl(0))
  loc_1C5DC89:       CSng(var_154) = var_180.Text
  loc_1C5DD07:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5DD0F:       var_164 = Now
  loc_1C5DD19:       var_238 = 0
  loc_1C5DD24:       var_234 = 0
  loc_1C5DD2F:       var_230 = 0
  loc_1C5DD38:       var_22C = "A"
  loc_1C5DD9F:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5DDEF:       var_CE = (var_CE + 1)
  loc_1C5DE00:       Set var_168 = Me.Txt
  loc_1C5DE06:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5DE0E:       CDbl(0) = var_180.Text
  loc_1C5DE38:       var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5DE8C:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5DE94:       var_164 = Now
  loc_1C5DE9E:       var_238 = 0
  loc_1C5DEA9:       var_234 = 0
  loc_1C5DEB4:       var_230 = 0
  loc_1C5DEBD:       var_22C = "A"
  loc_1C5DEDD:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5DF24:       Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5DF2F:       var_B8 = var_110
  loc_1C5DF38:       var_C2 = var_114
  loc_1C5DF71:     Else
  loc_1C5DF77:       var_CE = (var_CE + 1)
  loc_1C5DF88:       Set var_168 = Me.Txt
  loc_1C5DF8E:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(var_17C), CDbl(0))
  loc_1C5DF96:       CSng(var_154) = var_180.Text
  loc_1C5E014:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5E01C:       var_164 = Now
  loc_1C5E026:       var_238 = 0
  loc_1C5E031:       var_234 = 0
  loc_1C5E03C:       var_230 = 0
  loc_1C5E045:       var_22C = "A"
  loc_1C5E0AC:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5E0FC:       var_CE = (var_CE + 1)
  loc_1C5E10D:       Set var_168 = Me.Txt
  loc_1C5E113:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5E11B:       CDbl(0) = var_180.Text
  loc_1C5E13D:       var_1F0 = Me.Recordset15.Fields.Item("IndoorPartyAC")
  loc_1C5E145:       var_17C = var_1F0.Value
  loc_1C5E15F:       var_1F8 = Me.Recordset15.Fields
  loc_1C5E199:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5E1A1:       var_164 = Now
  loc_1C5E1AB:       var_238 = 0
  loc_1C5E1B6:       var_234 = 0
  loc_1C5E1C1:       var_230 = 0
  loc_1C5E1CA:       var_22C = "A"
  loc_1C5E1EA:       var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C5E231:       Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5E23C:       var_B8 = var_110
  loc_1C5E245:       var_C2 = var_114
  loc_1C5E27B:     End If
  loc_1C5E27B:   End If
  loc_1C5E281:   Me.Recordset15.MoveNext
  loc_1C5E286:   GoTo loc_1C5D133
  loc_1C5E289: End If
  loc_1C5E2A7: Set var_168 = Me.Txt
  loc_1C5E2AD: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(0), var_180, var_110, "SELECT PaychargeH.AmtCr AS CreditAmt,Comments, PaychargeH.PayCode, RestCode,Employee.AC_Code as ACCode,Employee.Name as EName,revmast.name as RevenueName FROM (PaychargeH LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code) LEFT JOIN Employee ON PaychargeH.EmpCode = Employee.Code where  PayChargeH.Docid='", var_1A4, -1, var_1F8)
  loc_1C5E2B5: CStr(var_17C) = var_180.Text
  loc_1C5E2E4: var_164 = CVar(CDbl(0) & var_110 & "' And PaychargeH.RestCode='" & global_52 & "' and PaychargeH.SITE_CODE='" & MemVar_1F92070 & "' AND Vdate = ") 'String
  loc_1C5E2F2: Set var_1EC = Me.Txt
  loc_1C5E2F8: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_1F0, var_164, CSng(var_154))
  loc_1C5E307: Proc_6_7_F25D88(var_154, CVar(var_1F0), CStr(var_194))
  loc_1C5E30F: var_17C = var_D4 & var_154 
  loc_1C5E313: var_124 = " and AmtCr<>0 and PaychargeH.docid not in (Select distinct ContraDocId from PaychargeH where Contradocid is not NUll and ContraDocid<>'')  and PaychargeH.COntradocid not in (Select DocId from PaychargeH )and PaychargeH.PayType in ('Staff')"
  loc_1C5E326: unk_55E2CB.Execute CStr(var_17C & var_124), MemVar_1F920C8, CDate(var_164)
  loc_1C5E331: Set var_8C = var_1F8
  loc_1C5E35F: ' Referenced from: 1C5E843
  loc_1C5E371: If Not(Me.Recordset15.EOF) Then
  loc_1C5E3CA:   unk_55E2CB.Execute CStr("Select * from Depart Where Code='" & Me.Recordset15.Fields.Item("RestCode").Value & "'"), var_17C, -1
  loc_1C5E3D5:   Set var_DC = var_1EC
  loc_1C5E42B:   If (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments"))) = vbNullString) Then
  loc_1C5E442:     If (var_DC.RecordCount > 0) Then
  loc_1C5E46D:       var_110 = Proc_6_38_E68A98(CVar(var_DC.Fields.Item("ShortName")))
  loc_1C5E474:       var_114 = var_110 & " "
  loc_1C5E489:       var_1EC = Me.Recordset15.Fields
  loc_1C5E4A6:       var_D4 = var_1EC & Proc_6_38_E68A98(CVar(var_1EC.Item("EName")), var_114)
  loc_1C5E4C3:     Else
  loc_1C5E4EE:       var_D4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EName")))
  loc_1C5E4F7:     End If
  loc_1C5E4FA:   Else
  loc_1C5E514:     var_180 = Me.Recordset15.Fields.Item("Comments")
  loc_1C5E525:     var_D4 = Proc_6_38_E68A98(CVar(var_180))
  loc_1C5E52E:   End If
  loc_1C5E534:   var_CE = (var_CE + 1)
  loc_1C5E545:   Set var_168 = Me.Txt
  loc_1C5E54B:   Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180)
  loc_1C5E553:   var_184 = var_180.Text
  loc_1C5E5D1:   var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5E5D9:   var_164 = Now
  loc_1C5E5E3:   var_238 = 0
  loc_1C5E5EE:   var_234 = 0
  loc_1C5E5F9:   var_230 = 0
  loc_1C5E602:   var_22C = "A"
  loc_1C5E669:   Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5E6B9:   var_CE = (var_CE + 1)
  loc_1C5E6CA:   Set var_168 = Me.Txt
  loc_1C5E6D0:   Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CDbl(0))
  loc_1C5E6D8:   CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)) = var_180.Text
  loc_1C5E6FA:   var_1F0 = Me.Recordset15.Fields.Item("AcCode")
  loc_1C5E702:   var_17C = var_1F0.Value
  loc_1C5E71C:   var_1F8 = Me.Recordset15.Fields
  loc_1C5E746:   var_204 = Me.Recordset15.Fields
  loc_1C5E756:   var_194 = var_204.Item("IndoorPartyAC").Value
  loc_1C5E75E:   var_164 = Now
  loc_1C5E768:   var_238 = 0
  loc_1C5E773:   var_234 = 0
  loc_1C5E77E:   var_230 = 0
  loc_1C5E787:   var_22C = "A"
  loc_1C5E7A7:   var_154 = Abs(var_1F8.Item("CreditAmt").Value)
  loc_1C5E7EE:   Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5E7F9:   var_B8 = var_110
  loc_1C5E802:   var_C2 = var_114
  loc_1C5E83E:   Me.Recordset15.MoveNext
  loc_1C5E843:   GoTo loc_1C5E35F
  loc_1C5E846: End If
  loc_1C5E864: Set var_168 = Me.Txt
  loc_1C5E86A: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(0), var_180, var_110, "SELECT DocId,Vtype,Comments,DbtChkin,Sno,revmast.name as RevenueName FROM (PaychargeH LEFT JOIN SubGroup ON PaychargeH.CompCode = SubGroup.SubCode) LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code where PayChargeH.Docid='", var_1A4, -1, var_1F8)
  loc_1C5E872: CStr(var_17C) = var_180.Text
  loc_1C5E8A1: var_164 = CVar(CDbl(0) & var_110 & "' And PaychargeH.RestCode='" & global_52 & "' and PaychargeH.SITE_CODE='" & MemVar_1F92070 & "' AND  Vdate = ") 'String
  loc_1C5E8AF: Set var_1EC = Me.Txt
  loc_1C5E8B5: Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_1F0, var_164, CSng(var_154))
  loc_1C5E8C4: Proc_6_7_F25D88(var_154, CVar(var_1F0), CStr(var_194))
  loc_1C5E8E3: unk_55E2CB.Execute CStr(var_D4 & var_154 & " and AmtCr<>0  and PaychargeH.PayType in ('Company','Member')"), MemVar_1F920C8, CDate(var_164)
  loc_1C5E8EE: Set var_E0 = var_1F8
  loc_1C5E91C: ' Referenced from: 1C5F16D
  loc_1C5E92B: If Not(var_E0.EOF) Then
  loc_1C5E942:   var_110 = "SELECT PaychargeH.AmtCr AS CreditAmt,Comments ,PaychargeH.PayCode, SubGroup.SubCode as AcCode,revmast.name as RevenueNAme FROM (PaychargeH LEFT JOIN SubGroup ON PaychargeH.CompCode = SubGroup.SubCode) LEFT JOIN RevMast ON PaychargeH.PayCode = RevMast.Code where PaychargeH.SITE_CODE='" & MemVar_1F92070
  loc_1C5E957:   Set var_168 = Me.Txt
  loc_1C5E95D:   Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, CVar(var_110 & "' AND Vdate = "))
  loc_1C5E96C:   Proc_6_7_F25D88(var_154, CVar(var_180), var_2F4)
  loc_1C5E974:   var_17C = -1 & var_154 
  loc_1C5E9E2:   var_29C = var_D4 & var_154 & " and AmtCr<>0 and PaychargeH.DocId='" & var_E0.Fields.Item("DocID").Value & "' and Sno=" & var_E0.Fields.Item("SNo").Value 
  loc_1C5E9EF:   var_114 = CStr(var_29C & " and PaychargeH.PayType in ('Company','Member')")
  loc_1C5E9F9:   unk_55E2CB.Execute var_114, var_204, 
  loc_1C5EA04:   Set var_8C = var_204
  loc_1C5EA38:   ' Referenced from: 1C5F162
  loc_1C5EA4A:   If Not(Me.Recordset15.EOF) Then
  loc_1C5EA78:     var_110 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C5EA89:     If (var_110 = vbNullString) Then
  loc_1C5EABA:       var_D4 = CStr(Me.Recordset15.Fields.Item("RevenueName").Value)
  loc_1C5EACA:     Else
  loc_1C5EAF5:       var_D4 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Comments")))
  loc_1C5EAFE:     End If
  loc_1C5EB1B:     var_180 = Me.Recordset15.Fields.Item("CreditAmt")
  loc_1C5EB3D:     If (var_180.Value > 0) Then
  loc_1C5EB46:       var_CE = (var_CE + 1)
  loc_1C5EB57:       Set var_168 = Me.Txt
  loc_1C5EB5D:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180)
  loc_1C5EB65:       var_184 = var_180.Text
  loc_1C5EBE3:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5EBEB:       var_164 = Now
  loc_1C5EBF5:       var_238 = 0
  loc_1C5EC00:       var_234 = 0
  loc_1C5EC0B:       var_230 = 0
  loc_1C5EC14:       var_22C = "A"
  loc_1C5EC7B:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5ECCB:       var_CE = (var_CE + 1)
  loc_1C5ECDC:       Set var_168 = Me.Txt
  loc_1C5ECE2:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("IndoorPartyAC").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5ECEA:       CDbl(0) = var_180.Text
  loc_1C5ED14:       var_17C = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5ED68:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5ED70:       var_164 = Now
  loc_1C5ED7A:       var_238 = 0
  loc_1C5ED85:       var_234 = 0
  loc_1C5ED90:       var_230 = 0
  loc_1C5ED99:       var_22C = "A"
  loc_1C5EDB9:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5EE00:       Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5EE0B:       var_B8 = var_110
  loc_1C5EE14:       var_C2 = var_114
  loc_1C5EE4D:     Else
  loc_1C5EE53:       var_CE = (var_CE + 1)
  loc_1C5EE64:       Set var_168 = Me.Txt
  loc_1C5EE6A:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(var_17C), CDbl(0))
  loc_1C5EE72:       CSng(var_154) = var_180.Text
  loc_1C5EEF0:       var_194 = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5EEF8:       var_164 = Now
  loc_1C5EF02:       var_238 = 0
  loc_1C5EF0D:       var_234 = 0
  loc_1C5EF18:       var_230 = 0
  loc_1C5EF21:       var_22C = "A"
  loc_1C5EF88:       Proc_6_141_12E1E18(MemVar_1F92044, var_B8, var_180.Text, var_C2, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5EFD8:       var_CE = (var_CE + 1)
  loc_1C5EFE9:       Set var_168 = Me.Txt
  loc_1C5EFEF:       Call 0.Method_Proc_137_90_1C5F1A40 (CInt(2), var_180, var_184, var_180.Text, CStr(Me.Recordset15.Fields.Item("AcCode").Value), CSng(Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)))
  loc_1C5EFF7:       CDbl(0) = var_180.Text
  loc_1C5F021:       var_17C = Me.Recordset15.Fields.Item("IndoorPartyAC").Value
  loc_1C5F075:       var_194 = Me.Recordset15.Fields.Item("AcCode").Value
  loc_1C5F07D:       var_164 = Now
  loc_1C5F087:       var_238 = 0
  loc_1C5F092:       var_234 = 0
  loc_1C5F09D:       var_230 = 0
  loc_1C5F0A6:       var_22C = "A"
  loc_1C5F0C6:       var_154 = Abs(Me.Recordset15.Fields.Item("CreditAmt").Value)
  loc_1C5F10D:       Proc_6_141_12E1E18(MemVar_1F92044, var_110, var_180.Text, var_114, var_C8, global_100, MemVar_1F92070, CDate(var_184))
  loc_1C5F118:       var_B8 = var_110
  loc_1C5F121:       var_C2 = var_114
  loc_1C5F157:     End If
  loc_1C5F15D:     Me.Recordset15.MoveNext
  loc_1C5F162:     GoTo loc_1C5EA38
  loc_1C5F165:   End If
  loc_1C5F168:   var_E0.MoveNext
  loc_1C5F16D:   GoTo loc_1C5E91C
  loc_1C5F170: End If
  loc_1C5F176: unk_55E2CB.CommitTrans
  loc_1C5F17F: var_86 = CByte(0) 'Byte
  loc_1C5F188: Set var_8C = Nothing
  loc_1C5F190: Set var_CC = Nothing
  loc_1C5F198: Set var_E0 = Nothing
  loc_1C5F1A0: Set var_DC = Nothing
  loc_1C5F1A3: Exit Sub
End Sub

Public Sub Proc_137_91_120B838
  'Data Table: 55E2AC
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_EC As Variant
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_8C As Recordset15
  Dim var_B8 As Fields15
  Dim var_BC As Variant
  Dim var_90 As Recordset15
  Dim var_DC As Variant
  Dim var_9A As Integer
  Dim var_140 As Variant
  Dim var_18C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  loc_120B3D1: var_94 = arg_10
  loc_120B3E8: var_A4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_120B419: Set var_B8 = Me.Txt
  loc_120B41F: Call 0.Method_Proc_137_91_120B8380 (CInt(2), var_BC, CVar(var_A4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_94 & "' And "))
  loc_120B42E: Proc_6_7_F25D88(var_DC, CVar(var_BC), var_140)
  loc_120B436: var_FC = -1 & var_DC 
  loc_120B44A: Me.Txt.Execute CStr(var_FC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_144, 
  loc_120B455: Set var_8C = var_144
  loc_120B491: If (var_8C.RecordCount > 0) Then
  loc_120B4AE:   var_BC = var_8C.Fields.Item("Prefix")
  loc_120B4BF:   var_98 = CStr(var_BC.Value)
  loc_120B4EA:   Set var_B8 = Me.Txt
  loc_120B4F0:   Call 0.Method_Proc_137_91_120B8380 (CInt(0), var_BC, var_A4, "Select PostDocId FROM PayChargeH WHERE DocId='")
  loc_120B4F8:   var_CC = var_BC.Text
  loc_120B501:   var_A8 = -1 & var_A4
  loc_120B50E:   Me.Connection15.Execute var_A4 & "' AND VP.LOGSITE_CODE='" & "'", var_144, 
  loc_120B519:   Set var_90 = var_144
  loc_120B59D:   If CBool((var_90.RecordCount <= 0) And (Trim(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PostDocId"))))) <> vbNullString)) Then
  loc_120B5CB:     var_A0 = CStr(var_90.Fields.Item("PostDocId").Value)
  loc_120B5DB:   Else
  loc_120B5F5:     var_BC = var_8C.Fields.Item("start_srl_no")
  loc_120B60A:     var_DC = (var_BC.Value + 1)
  loc_120B60F:     var_9A = CInt(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PostDocId")))))
  loc_120B634:     var_A4 = "UPDATE Voucher_Prefix SET Start_Srl_No = Start_Srl_No+ 1 WHERE (SITE_CODE='" & MemVar_1F92070
  loc_120B665:     Set var_B8 = Me.Txt
  loc_120B66B:     Call 0.Method_Proc_137_91_120B8380 (CInt(2), var_BC, CVar(var_A4 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='" & var_94 & "' And "), var_140)
  loc_120B67A:     Proc_6_7_F25D88(CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PostDocId")))), CVar(var_BC), -1)
  loc_120B696:     Me.Txt.Execute CStr(var_144 & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PostDocId")))) & " between Date_From and Date_to"), var_9A, 
  loc_120B6EA:     var_EC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2)) + Trim(var_94))
  loc_120B710:     var_11C = Space((5 - Len(CStr(Trim(var_94)))))
  loc_120B718:     var_140 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='" & var_94 & "' And ") + var_144 & CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("PostDocId")))) & " between Date_From and Date_to")
  loc_120B73E:     var_17C = Space((5 - Len(CStr(Trim(var_98)))))
  loc_120B746:     var_18C = (var_140 + var_17C)
  loc_120B75D:     var_1BC = (var_18C + Trim(var_98))
  loc_120B773:     var_1CC = Space((8 - Len(CStr(var_9A))))
  loc_120B77B:     var_1DC = (var_1BC + var_1CC)
  loc_120B7AE:     var_21C = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_120B7B7:     var_23C = (var_1DC + CVar(CStr(var_21C)))
  loc_120B7BC:     var_A0 = CStr(var_23C)
  loc_120B7FC:   End If
  loc_120B7FF:   var_88 = var_A0
  loc_120B805: Else
  loc_120B811:   global_100 = vbNullString
  loc_120B817:   var_9A = 0
  loc_120B81D:   var_88 = vbNullString
  loc_120B820: End If
  loc_120B825: Set var_8C = Nothing
  loc_120B82D: Set var_90 = Nothing
  loc_120B830: Proc_137_91_120B838 = var_9A
  loc_120B836: Exit Sub
End Sub
