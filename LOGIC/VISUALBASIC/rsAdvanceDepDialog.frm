VERSION 5.00
Begin VB.Form rsAdvanceDepDialog
  Caption = "Settlement"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14100
  ClientHeight = 8175
  LockControls = -1  'True
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrTxnNo
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 3120
    Width = 4965
    Height = 300
    Visible = 0   'False
    TabIndex = 73
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 18
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
      Index = 5
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 795
      Height = 240
      TabIndex = 74
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
  Begin BtnEnh BtnEnh1
    Left = 1320
    Top = 5280
    Width = 5745
    Height = 435
    TabIndex = 69
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7725
    Width = 14100
    Height = 450
    TabIndex = 57
  End
  Begin Frame FrCashCard
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 2490
    Width = 4965
    Height = 615
    Visible = 0   'False
    TabIndex = 54
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 315
      Width = 3810
      Height = 285
      Enabled = 0   'False
      TabIndex = 17
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
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      Enabled = 0   'False
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
      Caption = "Holder"
      Index = 4
      ForeColor = &HFF0000&
      Left = -15
      Top = 315
      Width = 630
      Height = 240
      TabIndex = 56
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
      Index = 3
      ForeColor = &HFF0000&
      Left = -15
      Top = 0
      Width = 765
      Height = 240
      TabIndex = 55
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
  Begin Frame FrMem
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 1110
    Width = 4920
    Height = 300
    Visible = 0   'False
    TabIndex = 52
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3795
      Height = 285
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
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Member"
      Index = 28
      ForeColor = &HFF0000&
      Left = 0
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
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 3435
    Width = 4965
    Height = 300
    Visible = 0   'False
    TabIndex = 61
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      TabIndex = 19
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
      Left = -15
      Top = 15
      Width = 885
      Height = 240
      TabIndex = 68
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
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 1800
    Width = 2595
    Height = 615
    Visible = 0   'False
    TabIndex = 46
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 10
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
      Index = 11
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &HFF0000&
      Left = -15
      Top = 315
      Width = 1050
      Height = 240
      TabIndex = 47
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
    BackColor = &HC9E2F5&
    Left = 8580
    Top = 450
    Width = 2580
    Height = 285
    Visible = 0   'False
    TabIndex = 44
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 14
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
  Begin Frame FrEmp
    BackColor = &HC9E2F5&
    Left = 8535
    Top = 1470
    Width = 4935
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
  Begin Frame FrComp
    BackColor = &HC9E2F5&
    Left = 8580
    Top = 750
    Width = 4920
    Height = 300
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 15
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
      Left = 0
      Top = 0
      Width = 900
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
  Begin Frame FrCCDet
    BackColor = &HC9E2F5&
    Left = 390
    Top = 7905
    Width = 5790
    Height = 960
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3540
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
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1335
      Top = 0
      Width = 2895
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
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1335
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
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1335
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
      Left = 2625
      Top = 645
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
      Left = 210
      Top = 0
      Width = 765
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
    Begin Label LblName
      Caption = "Holder"
      Index = 19
      ForeColor = &HFF0000&
      Left = 210
      Top = 315
      Width = 630
      Height = 240
      TabIndex = 38
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
      Left = 210
      Top = 630
      Width = 675
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
  End
  Begin DataGrid DGCompany
    Left = 5145
    Top = 8010
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 34
  End
  Begin DataGrid DGTable
    Left = 6195
    Top = 7530
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 32
  End
  Begin DataGrid DGRoom
    Left = 7590
    Top = 6915
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGPayType
    Left = 7275
    Top = 6570
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin DataGrid DGEmp
    Left = 7830
    Top = 6150
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin Frame FrRest
    BackColor = &HC9E2F5&
    Left = 1065
    Top = 1050
    Width = 5775
    Height = 1080
    Visible = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 20
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3525
      Top = 780
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
      Left = 1110
      Top = 780
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
      Left = 1110
      Top = 465
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
      Left = 1110
      Top = 150
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
      Left = 2895
      Top = 780
      Width = 300
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
    Begin Label LblName
      Caption = "Amount"
      Index = 14
      ForeColor = &HFF0000&
      Left = 0
      Top = 780
      Width = 735
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
    Begin Label LblName
      Caption = "Room/T"
      Index = 12
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
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
      Caption = "Type"
      Index = 13
      ForeColor = &HFF0000&
      Left = 0
      Top = 150
      Width = 465
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
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1665
    Top = 4080
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF&
    Left = 5055
    Top = 570
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
    ForeColor = &HFF&
    Left = 2400
    Top = 585
    Width = 960
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
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 510
    Top = 3795
    Width = 6795
    Height = 1410
    TabIndex = 63
  End
  Begin MSFlexGrid FGPoint
    Left = 8535
    Top = 3630
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGMember
    Left = 12030
    Top = 3900
    Width = 6750
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 51
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 90
    Top = 2340
    Width = 2880
    Height = 255
    TabIndex = 72
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
    Left = 3465
    Top = 2340
    Width = 2790
    Height = 285
    TabIndex = 71
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
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 70
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
  Begin Label LTxt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1050
    Top = 3345
    Width = 1410
    Height = 285
    TabIndex = 67
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
  Begin Label LTxt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5505
    Top = 3345
    Width = 1320
    Height = 285
    TabIndex = 66
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
  Begin Label LTxt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2475
    Top = 3345
    Width = 1500
    Height = 285
    TabIndex = 65
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
  Begin Label LblName
    Caption = "Bill Amount"
    Index = 23
    BackColor = &HC7EBEB&
    ForeColor = &HC00000&
    Left = 1050
    Top = 3060
    Width = 1410
    Height = 285
    TabIndex = 64
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
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Paid Amount"
    Index = 24
    BackColor = &HC7EBEB&
    ForeColor = &H808000&
    Left = 2475
    Top = 3060
    Width = 1500
    Height = 285
    TabIndex = 62
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
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Balance"
    Index = 17
    BackColor = &HC7EBEB&
    ForeColor = &HFF&
    Left = 5505
    Top = 3060
    Width = 1335
    Height = 285
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
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Payable Amt"
    Index = 0
    BackColor = &HC7EBEB&
    ForeColor = &H0&
    Left = 3990
    Top = 3060
    Width = 1500
    Height = 285
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
    Appearance = 0 'Flat
  End
  Begin Label LTxt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3990
    Top = 3345
    Width = 1500
    Height = 285
    TabIndex = 58
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
  Begin Label Label1
    Caption = "Press Ctrl+S to Save"
    ForeColor = &HFF0000&
    Left = 12120
    Top = 8100
    Width = 2970
    Height = 300
    Visible = 0   'False
    TabIndex = 35
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 14670
    Top = 1845
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 24
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
    Caption = "Deposit Date"
    Index = 37
    ForeColor = &HFF0000&
    Left = 3840
    Top = 615
    Width = 1200
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
  Begin Label Lbl
    Caption = "Deposit No"
    Index = 36
    ForeColor = &HFF0000&
    Left = 1290
    Top = 615
    Width = 1020
    Height = 240
    TabIndex = 22
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

Attribute VB_Name = "rsAdvanceDepDialog"

Private global_180 As Double
Private global_104 As Long
Private global_108 As Long
Private global_132 As Double
Private global_100 As Integer
Private global_172 As Integer

Private Sub DGMember_UnknownEvent_9 'F47FE4
  'Data Table: 53E444
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F47EDB: Me.DGMember.Visible = False
  loc_F47EFA: If (Me.RecordCount > 0) Then
  loc_F47F39:   Set var_B4 = Me.Txt
  loc_F47F3F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F47F47:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F47F7A:   var_B0 = Me.Fields.Item("Code")
  loc_F47F99:   Set var_B4 = Me.Txt
  loc_F47F9F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F47FA7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F47FBD: End If
  loc_F47FC8: Set var_A8 = Me.Txt
  loc_F47FCE: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H10))
  loc_F47FD6: var_B0.SetFocus
  loc_F47FE2: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'EA7128
  'Data Table: 53E444
  Dim var_A8 As Variant
  loc_EA70A8: Set var_88 = Me.DGMember
  loc_EA70D2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA70DA: Set var_BC = Me.DGMember
  loc_EA7116: Proc_6_138_106D6F8(Me.DGMember, global_80, CInt(&H10), Me.FGPoint)
  loc_EA7124: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F4F204
  'Data Table: 53E444
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F0FB: Me.DGCompany.Visible = False
  loc_F4F11A: If (Me.RecordCount > 0) Then
  loc_F4F159:   Set var_B4 = Me.Txt
  loc_F4F15F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F4F167:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4F19A:   var_B0 = Me.Fields.Item("Code")
  loc_F4F1B9:   Set var_B4 = Me.Txt
  loc_F4F1BF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F4F1C7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4F1DD: End If
  loc_F4F1E8: Set var_A8 = Me.Txt
  loc_F4F1EE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HF))
  loc_F4F1F6: var_B0.SetFocus
  loc_F4F202: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA71EC
  'Data Table: 53E444
  Dim var_A8 As Variant
  loc_EA716C: Set var_88 = Me.DGCompany
  loc_EA7196: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA719E: Set var_BC = Me.DGCompany
  loc_EA71DA: Proc_6_138_106D6F8(Me.DGCompany, global_76, CInt(&HF), Me.FGPoint)
  loc_EA71E8: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F54290
  'Data Table: 53E444
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F54170: On Error Goto loc_F5428A
  loc_F54182: Me.DGTable.Visible = False
  loc_F541A1: If (Me.RecordCount > 0) Then
  loc_F541E0:   Set var_B4 = Me.Txt
  loc_F541E6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F541EE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F54221:   var_B0 = Me.Fields.Item("Code")
  loc_F54240:   Set var_B4 = Me.Txt
  loc_F54246:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5424E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F54264: End If
  loc_F5426F: Set var_A8 = Me.Txt
  loc_F54275: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F5427D: var_B0.SetFocus
  loc_F54289: Exit Sub
  loc_F5428A: ' Referenced from: F54170
  loc_F5428A: Proc_6_60_E62BC4(var_B0)
  loc_F5428F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA7374
  'Data Table: 53E444
  Dim var_A8 As Variant
  loc_EA72F4: Set var_88 = Me.DGTable
  loc_EA731E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7326: Set var_BC = Me.DGTable
  loc_EA7362: Proc_6_138_106D6F8(Me.DGTable, global_68, CInt(4), Me.FGPoint)
  loc_EA7370: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15D63CC
  'Data Table: 53E444
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
  loc_15D5072: Set var_88 = Me.Txt
  loc_15D5078: Call 0.Method_Txt_GotFocus0 (Index)
  loc_15D5086: Proc_6_74_E226B0(var_8C)
  loc_15D50A1: Set var_88 = Me.Txt
  loc_15D50A7: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D50AF: var_8C.SelStart = 0
  loc_15D50C8: Set var_88 = Me.Txt
  loc_15D50CE: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D50E9: Set var_90 = Me.Txt
  loc_15D50EF: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D50F7: var_98.SelLength = Len(var_8C.Text)
  loc_15D510A: Call Proc_76_76_F963C4(var_8C)
  loc_15D5112: var_9A = Index
  loc_15D511D: If (var_9A = CInt(&HC)) Then
  loc_15D512D:   Set var_88 = Me.Txt
  loc_15D5133:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5169:   var_98 = Me.Fields.Item("PayType")
  loc_15D5179:   var_CC = "Cash"
  loc_15D519E:   If CBool((var_8C.Text = vbNullString) And (var_98.Value = var_CC)) Then
  loc_15D51AE:     Set var_88 = Me.Txt
  loc_15D51B4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D51BC:     var_8C.Text = "CASH PAYMENT RECD"
  loc_15D51D7:     Set var_88 = Me.Txt
  loc_15D51DD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D51E5:     var_8C.SelStart = 0
  loc_15D51FE:     Set var_88 = Me.Txt
  loc_15D5204:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D520C:     var_94 = var_8C.Text
  loc_15D521F:     Set var_90 = Me.Txt
  loc_15D5225:     Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D522D:     var_98.SelLength = Len(var_94)
  loc_15D5240:   End If
  loc_15D5243: Else
  loc_15D524B:   If (var_9A = CInt(3)) Then
  loc_15D526E:     Set var_98 = Me.Txt
  loc_15D5274:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_108)
  loc_15D528F:     Set var_88 = Me.Txt
  loc_15D5295:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15D52AD:     var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D52BC:     Me.DGPayType.Top = "PayType"
  loc_15D52F0:     Set var_88 = Me.Txt
  loc_15D52F6:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_15D530A:     var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D5319:     Me.DGPayType.Left = "PayType"
  loc_15D5340:     If (Me.RecordCount > 0) Then
  loc_15D534E:       Set var_8C = Me.FGPoint
  loc_15D5366:       Proc_6_137_1193554(Me.DGPayType, global_60, Index)
  loc_15D5374:     End If
  loc_15D53C2:     Set var_88 = Me.Txt
  loc_15D53C8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D53D0:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D53E8:     If (var_8C Or (var_94 = vbNullString)) Then
  loc_15D53EB:       Exit Sub
  loc_15D53EC:     End If
  loc_15D53F9:     Set var_88 = Me.Txt
  loc_15D53FF:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5407:     var_94 = var_8C.Text
  loc_15D5419:     var_AC = "Name"
  loc_15D5454:     If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_15D545D:       Me.MoveFirst
  loc_15D5480:       Set var_88 = Me.Txt
  loc_15D5486:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_15D548E:       0 = var_8C.Text
  loc_15D54A7:       Me.Find 1 & var_94 & "'", var_AC, var_9A
  loc_15D54BC:     End If
  loc_15D54BF:   Else
  loc_15D54C7:     If (var_9A = CInt(&HD)) Then
  loc_15D54EA:       Set var_98 = Me.Txt
  loc_15D54F0:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_108)
  loc_15D550B:       Set var_88 = Me.Txt
  loc_15D5511:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_15D5529:       var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D5538:       Me.DGEmp.Top = var_AC
  loc_15D556C:       Set var_88 = Me.Txt
  loc_15D5572:       Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_15D5586:       var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D5595:       Me.DGEmp.Left = var_AC
  loc_15D55BC:       If (Me.RecordCount > 0) Then
  loc_15D55CA:         Set var_8C = Me.FGPoint
  loc_15D55E2:         Proc_6_137_1193554(Me.DGEmp, global_64)
  loc_15D55F0:       End If
  loc_15D563E:       Set var_88 = Me.Txt
  loc_15D5644:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D564C:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D5664:       If (Index Or (var_94 = vbNullString)) Then
  loc_15D5667:         Exit Sub
  loc_15D5668:       End If
  loc_15D5675:       Set var_88 = Me.Txt
  loc_15D567B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5683:       var_94 = var_8C.Text
  loc_15D5695:       var_AC = "Name"
  loc_15D56D0:       If CBool(CVar(var_94) <> Me.Fields.Item(var_AC).Value) Then
  loc_15D56D9:         Me.MoveFirst
  loc_15D56FC:         Set var_88 = Me.Txt
  loc_15D5702:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_15D570A:         0 = var_8C.Text
  loc_15D5723:         Me.Find 1 & var_94 & "'", var_AC, var_8C
  loc_15D5738:       End If
  loc_15D573B:     Else
  loc_15D5743:       If (var_9A = CInt(4)) Then
  loc_15D5766:         Set var_98 = Me.Txt
  loc_15D576C:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_108)
  loc_15D5787:         Set var_88 = Me.Txt
  loc_15D578D:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15D57A5:         var_AC = CVar(((var_8C.Top + Me.FrRest.Top) + var_108.Height)) 'Single
  loc_15D57B4:         Me.DGTable.Top = var_AC
  loc_15D57E8:         Set var_88 = Me.Txt
  loc_15D57EE:         Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_15D5802:         var_AC = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15D5811:         Me.DGTable.Left = var_AC
  loc_15D5838:         If (Me.RecordCount > 0) Then
  loc_15D5846:           Set var_8C = Me.FGPoint
  loc_15D585E:           Proc_6_137_1193554(Me.DGTable, global_68)
  loc_15D586C:         End If
  loc_15D58BA:         Set var_88 = Me.Txt
  loc_15D58C0:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D58C8:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D58E0:         If (Index Or (var_94 = vbNullString)) Then
  loc_15D58E3:           Exit Sub
  loc_15D58E4:         End If
  loc_15D58F1:         Set var_88 = Me.Txt
  loc_15D58F7:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D58FF:         var_94 = var_8C.Text
  loc_15D5907:         var_DC = CVar(var_94) 'String
  loc_15D594C:         If CBool(var_DC <> Me.Fields.Item("Name").Value) Then
  loc_15D5955:           Me.MoveFirst
  loc_15D597A:           Set var_88 = Me.Txt
  loc_15D5980:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D5988:           0 = var_8C.Text
  loc_15D5996:           Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_15D59AC:           Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D59C4:         End If
  loc_15D59C7:       Else
  loc_15D59CF:         If (var_9A = CInt(&HE)) Then
  loc_15D59F2:           Set var_98 = Me.Txt
  loc_15D59F8:           Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_108)
  loc_15D5A13:           Set var_88 = Me.Txt
  loc_15D5A19:           Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_15D5A31:           var_AC = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_108.Height)) 'Single
  loc_15D5A40:           Me.DGRoom.Top = "Name ="
  loc_15D5A74:           Set var_88 = Me.Txt
  loc_15D5A7A:           Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_15D5A8E:           var_AC = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_15D5A9D:           Me.DGRoom.Left = "Name ="
  loc_15D5AC4:           If (Me.RecordCount > 0) Then
  loc_15D5AD2:             Set var_8C = Me.FGPoint
  loc_15D5AEA:             Proc_6_137_1193554(Me.DGRoom, global_72)
  loc_15D5AF8:           End If
  loc_15D5B46:           Set var_88 = Me.Txt
  loc_15D5B4C:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D5B54:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D5B6C:           If (Index Or (var_94 = vbNullString)) Then
  loc_15D5B6F:             Exit Sub
  loc_15D5B70:           End If
  loc_15D5B7D:           Set var_88 = Me.Txt
  loc_15D5B83:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5B8B:           var_94 = var_8C.Text
  loc_15D5B93:           var_DC = CVar(var_94) 'String
  loc_15D5BAC:           var_90 = Me.Fields
  loc_15D5BD8:           If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_15D5BE1:             Me.MoveFirst
  loc_15D5C06:             Set var_88 = Me.Txt
  loc_15D5C0C:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D5C14:             0 = var_8C.Text
  loc_15D5C22:             Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_15D5C38:             Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D5C50:           End If
  loc_15D5C53:         Else
  loc_15D5C5B:           If (var_9A = CInt(&HF)) Then
  loc_15D5C6C:             Set var_8C = Me.Txt
  loc_15D5C72:             Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_90)
  loc_15D5C98:             var_AC = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_15D5CA7:             Me.DGCompany.Top = "Name ="
  loc_15D5CE9:             Set var_88 = Me.Txt
  loc_15D5CEF:             Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15D5D07:             var_AC = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_15D5D16:             Me.DGCompany.Left = "Name ="
  loc_15D5D3F:             If (Me.RecordCount > 0) Then
  loc_15D5D4D:               Set var_8C = Me.FGPoint
  loc_15D5D65:               Proc_6_137_1193554(Me.DGCompany, global_76)
  loc_15D5D73:             End If
  loc_15D5DC1:             Set var_88 = Me.Txt
  loc_15D5DC7:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D5DCF:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D5DE7:             If (Index Or (var_94 = vbNullString)) Then
  loc_15D5DEA:               Exit Sub
  loc_15D5DEB:             End If
  loc_15D5DF8:             Set var_88 = Me.Txt
  loc_15D5DFE:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D5E06:             var_94 = var_8C.Text
  loc_15D5E0E:             var_DC = CVar(var_94) 'String
  loc_15D5E27:             var_90 = Me.Fields
  loc_15D5E53:             If CBool(var_DC <> var_90.Item("Name").Value) Then
  loc_15D5E5C:               Me.MoveFirst
  loc_15D5E81:               Set var_88 = Me.Txt
  loc_15D5E87:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D5E8F:               0 = var_8C.Text
  loc_15D5E9D:               Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_15D5EB3:               Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D5ECB:             End If
  loc_15D5ECE:           Else
  loc_15D5ED6:             If (var_9A = CInt(&H10)) Then
  loc_15D5EE7:               Set var_8C = Me.Txt
  loc_15D5EED:               Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_90)
  loc_15D5F13:               var_AC = CVar((Me.FrMem.Top + var_90.Height)) 'Single
  loc_15D5F22:               Me.DGMember.Top = "Name ="
  loc_15D5F64:               Set var_88 = Me.Txt
  loc_15D5F6A:               Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15D5F87:               var_AC = CVar((((var_8C.Left + Me.FrRest.Left) + Me.FrMem.Left) - CDbl(1260))) 'Single
  loc_15D5F96:               Me.DGMember.Left = "Name ="
  loc_15D5FBF:               If (Me.RecordCount > 0) Then
  loc_15D5FCD:                 Set var_8C = Me.FGPoint
  loc_15D5FE5:                 Proc_6_137_1193554(Me.DGMember, global_80)
  loc_15D5FF3:               End If
  loc_15D6041:               Set var_88 = Me.Txt
  loc_15D6047:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_15D604F:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15D6067:               If (Index Or (var_94 = vbNullString)) Then
  loc_15D606A:                 Exit Sub
  loc_15D606B:               End If
  loc_15D6078:               Set var_88 = Me.Txt
  loc_15D607E:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6086:               var_94 = var_8C.Text
  loc_15D608E:               var_DC = CVar(var_94) 'String
  loc_15D60AF:               var_98 = Me.Fields.Item("Name")
  loc_15D60D3:               If CBool(var_DC <> var_98.Value) Then
  loc_15D60DC:                 Me.MoveFirst
  loc_15D6101:                 Set var_88 = Me.Txt
  loc_15D6107:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_15D610F:                 0 = var_8C.Text
  loc_15D611D:                 Proc_6_17_EAA2B0(var_DC, CVar(var_94), 1)
  loc_15D6133:                 Me.Find CStr(var_CC & var_DC), var_8C, 
  loc_15D614B:               End If
  loc_15D614E:             Else
  loc_15D6156:               If (var_9A = CInt(5)) Then
  loc_15D615D:                 Set var_88 = Me.TopCtrl1
  loc_15D6163:                 Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15D617C:                 If (CStr() = "Add") Then
  loc_15D618D:                   Set var_88 = Me.LTxt
  loc_15D6193:                   Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_15D61A8:                   var_124 = Val(var_8C.Caption)
  loc_15D61E0:                   Set var_90 = Me.Txt
  loc_15D61E6:                   Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(var_124), "0.00")))
  loc_15D61EE:                   var_98.Text = 1
  loc_15D620E:                 End If
  loc_15D6212:                 Set var_88 = Me.TopCtrl1
  loc_15D6218:                 Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_15D623B:                 If ((CStr(var_124) = "Edit") And (global_172 = 0)) Then
  loc_15D624C:                   Set var_88 = Me.LTxt
  loc_15D6252:                   Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_15D629F:                   Set var_90 = Me.Txt
  loc_15D62A5:                   Call 0.Method_Txt_GotFocus0 (Index, var_98, CStr(Format(CVar(Val(var_8C.Caption)), "0.00")))
  loc_15D62AD:                   var_98.Text = 1
  loc_15D62CD:                 End If
  loc_15D62DC:                 Set var_88 = Me.Txt
  loc_15D62E2:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_15D62EA:                 var_8C.SelStart = 1
  loc_15D6303:                 Set var_88 = Me.Txt
  loc_15D6309:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6324:                 Set var_90 = Me.Txt
  loc_15D632A:                 Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D6332:                 var_98.SelLength = Len(var_8C.Text)
  loc_15D6348:               Else
  loc_15D6350:                 If (var_9A = CInt(&H14)) Then
  loc_15D6362:                   Set var_88 = Me.Txt
  loc_15D6368:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D6370:                   var_8C.SelStart = 0
  loc_15D6389:                   Set var_88 = Me.Txt
  loc_15D638F:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15D63AA:                   Set var_90 = Me.Txt
  loc_15D63B0:                   Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_15D63B8:                   var_98.SelLength = Len(var_8C.Text)
  loc_15D63CB:                 End If
  loc_15D63CB:               End If
  loc_15D63CB:             End If
  loc_15D63CB:           End If
  loc_15D63CB:         End If
  loc_15D63CB:       End If
  loc_15D63CB:     End If
  loc_15D63CB:   End If
  loc_15D63CB: End If
  loc_15D63CB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13DBDCC
  'Data Table: 53E444
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
  Dim var_86 As Integer
  loc_13DB403: var_88 = Shift
  loc_13DB410: If (CLng(Shift) = &H1B) Then
  loc_13DB413:   Call Proc_76_76_F963C4(var_88)
  loc_13DB418:   Exit Sub
  loc_13DB419: End If
  loc_13DB41C: var_8A = KeyCode
  loc_13DB427: If (var_8A = CInt(3)) Then
  loc_13DB447:   Set var_A4 = Me.FGPoint
  loc_13DB452:   Set var_A0 = Nothing
  loc_13DB484:   Proc_6_69_134A198(Me.DGPayType, Me.Txt, CInt(3), global_60, Shift, 0)
  loc_13DB4F3:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DB519:     Proc_6_138_106D6F8(Me.DGPayType, global_60, KeyCode, Me.FGPoint, 1)
  loc_13DB527:   End If
  loc_13DB52A: Else
  loc_13DB532:   If (var_8A = CInt(&HD)) Then
  loc_13DB55D:     Set var_A0 = Nothing
  loc_13DB58F:     Proc_6_69_134A198(Me.DGEmp, Me.Txt, CInt(&HD), global_64, Shift, 0, 1)
  loc_13DB5FE:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DB605:       Set var_A0 = Me.DGEmp
  loc_13DB60C:       Set var_94 = Me.FGPoint
  loc_13DB624:       Proc_6_138_106D6F8(var_A0, global_64, KeyCode, var_94, var_A0, Me.FGPoint)
  loc_13DB632:     End If
  loc_13DB635:   Else
  loc_13DB63D:     If (var_8A = CInt(9)) Then
  loc_13DB64A:       Set var_90 = Me.Txt
  loc_13DB650:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 0, var_A0)
  loc_13DB66B:       Proc_6_41_FA0BA4(var_94, Shift, 6, 0)
  loc_13DB67A:     Else
  loc_13DB682:       If (var_8A = CInt(4)) Then
  loc_13DB6A2:         Set var_A4 = Me.FGPoint
  loc_13DB6AD:         Set var_A0 = Nothing
  loc_13DB6DF:         Proc_6_69_134A198(Me.DGTable, Me.Txt, CInt(4), global_68, Shift, 0, 1)
  loc_13DB74E:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DB755:           Set var_A0 = Me.DGTable
  loc_13DB774:           Proc_6_138_106D6F8(var_A0, global_68, KeyCode, Me.FGPoint, var_A0)
  loc_13DB782:         End If
  loc_13DB785:       Else
  loc_13DB78D:         If (var_8A = CInt(&HE)) Then
  loc_13DB7EA:           Proc_6_69_134A198(Me.DGRoom, Me.Txt, CInt(&HE), global_72, Shift, 0, 1, Nothing)
  loc_13DB859:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DB87F:             Proc_6_138_106D6F8(Me.DGRoom, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13DB88D:           End If
  loc_13DB890:         Else
  loc_13DB898:           If (var_8A = CInt(&HF)) Then
  loc_13DB8F5:             Proc_6_69_134A198(Me.DGCompany, Me.Txt, CInt(&HF), global_76, Shift, 0, 1, Nothing)
  loc_13DB964:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DB98A:               Proc_6_138_106D6F8(Me.DGCompany, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13DB998:             End If
  loc_13DB99B:           Else
  loc_13DB9A3:             If (var_8A = CInt(&H10)) Then
  loc_13DB9C3:               Set var_A4 = Me.FGPoint
  loc_13DBA00:               Proc_6_69_134A198(Me.DGMember, Me.Txt, CInt(&H10), global_80, Shift, 0, 1, Nothing)
  loc_13DBA6F:               If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13DBA7D:                 Set var_94 = Me.FGPoint
  loc_13DBA95:                 Proc_6_138_106D6F8(Me.DGMember, global_80, KeyCode, var_94, var_A4, 0)
  loc_13DBAA3:               End If
  loc_13DBAA6:             Else
  loc_13DBAAE:               If (var_8A = CInt(&HC)) Then
  loc_13DBABB:                 If (CLng(Shift) = &H2D) Then
  loc_13DBAC1:                   Call Proc_76_89_EE4CB8(var_BC, var_A4, 0)
  loc_13DBAD3:                   Set var_90 = Me.Txt
  loc_13DBAD9:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13DBAFD:                   Set var_90 = Me.Txt
  loc_13DBB03:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13DBB0B:                   0 = var_A4
  loc_13DBB1E:                   Set var_A0 = Me.Txt
  loc_13DBB24:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_13DBB2C:                   var_A4.SelStart = Len(var_BC)
  loc_13DBB3F:                   Exit Sub
  loc_13DBB40:                 End If
  loc_13DBB40:               End If
  loc_13DBB40:             End If
  loc_13DBB40:           End If
  loc_13DBB40:         End If
  loc_13DBB40:       End If
  loc_13DBB40:     End If
  loc_13DBB40:   End If
  loc_13DBB40: End If
  loc_13DBB77: var_EC = Me.DGPayType.Visible
  loc_13DBB8E: var_FC = Me.DGEmp.Visible
  loc_13DBBE7: If ((((((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_13DBC0A:   If (((CLng(Shift) = &H26) And (global_108 = 5)) And (KeyCode = CInt(3))) Then
  loc_13DBC0D:     Exit Sub
  loc_13DBC0E:   End If
  loc_13DBC2C:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_13DBC39:     If (CLng(Shift) = &H28) Then
  loc_13DBC3C:       Exit Sub
  loc_13DBC3D:     End If
  loc_13DBC74:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13DBC77:       Call Proc_76_82_15D9F30(var_8A)
  loc_13DBC7E:       Shift = 0
  loc_13DBC81:     End If
  loc_13DBC81:     Exit Sub
  loc_13DBC85:   Else
  loc_13DBCA3:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_13DBCB0:       If (CLng(Shift) = &H28) Then
  loc_13DBCB3:         Exit Sub
  loc_13DBCB4:       End If
  loc_13DBCEB:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13DBCEE:         Call Proc_76_82_15D9F30(Shift)
  loc_13DBCF5:         Shift = 0
  loc_13DBCF8:       End If
  loc_13DBCF8:       Exit Sub
  loc_13DBCFC:     Else
  loc_13DBD1A:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HE))) Then
  loc_13DBD27:         If (CLng(Shift) = &H28) Then
  loc_13DBD2A:           Exit Sub
  loc_13DBD2B:         End If
  loc_13DBD2D:         var_86 = 0
  loc_13DBD3A:         Call Txt_Validate(CInt(&HE))
  loc_13DBD45:         If (var_86 = &HFF) Then
  loc_13DBD48:           Exit Sub
  loc_13DBD49:         End If
  loc_13DBD80:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13DBD83:           Call Proc_76_82_15D9F30(var_86, var_86)
  loc_13DBD8A:           Shift = 0
  loc_13DBD8D:         End If
  loc_13DBD8D:         Exit Sub
  loc_13DBD8E:       End If
  loc_13DBD8E:     End If
  loc_13DBD8E:   End If
  loc_13DBDA3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13DBDAC:     Proc_6_75_E527CC(Shift, arg_14)
  loc_13DBDB1:   End If
  loc_13DBDBB:   If (CLng(Shift) = &H26) Then
  loc_13DBDC4:     Proc_6_76_E52838(Shift, arg_14)
  loc_13DBDC9:   End If
  loc_13DBDC9: End If
  loc_13DBDC9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE6BC8
  'Data Table: 53E444
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EE6B0A: If (arg_10 = &HD) Then
  loc_EE6B0F:   arg_10 = 0
  loc_EE6B12: End If
  loc_EE6B15: Proc_6_58_E054C0(arg_10)
  loc_EE6B20: Proc_6_133_E7EF78(var_94, arg_10)
  loc_EE6B29: arg_10 = CInt(var_94)
  loc_EE6B32: var_96 = KeyAscii
  loc_EE6B3D: If Not (var_96 = CInt(5)) Then
  loc_EE6B48:   If (var_96 = CInt(&H14)) Then
  loc_EE6B4B:   End If
  loc_EE6B55:   Set var_9C = Me.Txt
  loc_EE6B5B:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_EE6B76:   Proc_6_42_129A86C(var_A0, arg_10, 8)
  loc_EE6B85: Else
  loc_EE6B8D:   If (var_96 = CInt(9)) Then
  loc_EE6B9A:     Set var_9C = Me.Txt
  loc_EE6BA0:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 2)
  loc_EE6BBB:     Proc_6_42_129A86C(var_A0, arg_10, 6)
  loc_EE6BC7:   End If
  loc_EE6BC7: End If
  loc_EE6BC7: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1183FD0
  'Data Table: 53E444
  Dim var_86 As Integer
  loc_1183BEB: var_86 = KeyCode
  loc_1183BF6: If (var_86 = CInt(3)) Then
  loc_1183C15:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_1183C29:     var_A4 = "Name"
  loc_1183C4D:     Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyCode, global_60)
  loc_1183C83:     Proc_6_138_106D6F8(Me.DGPayType, global_60, KeyCode, Me.FGPoint)
  loc_1183C91:   End If
  loc_1183C94: Else
  loc_1183C9C:   If (var_86 = CInt(&HD)) Then
  loc_1183CBB:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1183CCF:       var_A4 = "Name"
  loc_1183CF3:       Proc_6_68_129FB34(Me.DGEmp, Me.Txt, KeyCode, global_64, Shift)
  loc_1183D29:       Proc_6_138_106D6F8(Me.DGEmp, global_64, KeyCode, Me.FGPoint)
  loc_1183D37:     End If
  loc_1183D3A:   Else
  loc_1183D42:     If (var_86 = CInt(4)) Then
  loc_1183D61:       If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_1183D99:         Proc_6_68_129FB34(Me.DGTable, Me.Txt, KeyCode, global_68, Shift)
  loc_1183DCF:         Proc_6_138_106D6F8(Me.DGTable, global_68, KeyCode, Me.FGPoint, "Name")
  loc_1183DDD:       End If
  loc_1183DE0:     Else
  loc_1183DE8:       If (var_86 = CInt(&HE)) Then
  loc_1183E07:         If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1183E3F:           Proc_6_68_129FB34(Me.DGRoom, Me.Txt, KeyCode, global_72, Shift)
  loc_1183E75:           Proc_6_138_106D6F8(Me.DGRoom, global_72, KeyCode, Me.FGPoint, "Name")
  loc_1183E83:         End If
  loc_1183E86:       Else
  loc_1183E8E:         If (var_86 = CInt(&HF)) Then
  loc_1183EAD:           If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1183EE5:             Proc_6_68_129FB34(Me.DGCompany, Me.Txt, KeyCode, global_76, Shift)
  loc_1183F1B:             Proc_6_138_106D6F8(Me.DGCompany, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1183F29:           End If
  loc_1183F2C:         Else
  loc_1183F34:           If (var_86 = CInt(&H10)) Then
  loc_1183F53:             If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1183F8B:               Proc_6_68_129FB34(Me.DGMember, Me.Txt, KeyCode, global_80, Shift)
  loc_1183FC1:               Proc_6_138_106D6F8(Me.DGMember, global_80, KeyCode, Me.FGPoint, "Name")
  loc_1183FCF:             End If
  loc_1183FCF:           End If
  loc_1183FCF:         End If
  loc_1183FCF:       End If
  loc_1183FCF:     End If
  loc_1183FCF:   End If
  loc_1183FCF: End If
  loc_1183FCF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49E94
  'Data Table: 53E444
  loc_E49E72: Set var_88 = Me.Txt
  loc_E49E78: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49E86: Proc_6_73_E22704(var_8C)
  loc_E49E92: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '151B46C
  'Data Table: 53E444
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_BC As Variant
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_53E465 As Connection15
  Dim var_A0 As Recordset15
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_CC As Variant
  Dim var_140 As Double
  Dim var_144 As TextBox
  loc_151A537: var_8E = Cancel
  loc_151A542: If (var_8E = CInt(1)) Then
  loc_151A553:   Set var_94 = Me.Txt
  loc_151A559:   Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_151A561:   var_9C = var_98.Text
  loc_151A578:   If (var_9C <> vbNullString) Then
  loc_151A581:     Call Proc_76_78_1159CC8(MemVar_1F92044, var_9C)
  loc_151A58C:   Else
  loc_151A58E:     arg_10 = &HFF
  loc_151A591:     Exit Sub
  loc_151A592:   End If
  loc_151A595: Else
  loc_151A59D:   If (var_8E = CInt(4)) Then
  loc_151A5AA:     Set var_94 = Me.Txt
  loc_151A5B0:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151A5B8:     var_9C = "Table"
  loc_151A5D9:     If (Proc_6_27_EA565C(var_98, var_9C) = 0) Then
  loc_151A5E6:       Set var_94 = Me.Txt
  loc_151A5EC:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151A5F4:       var_98.SetFocus
  loc_151A602:       arg_10 = &HFF
  loc_151A605:       Exit Sub
  loc_151A606:     End If
  loc_151A654:     Set var_94 = Me.Txt
  loc_151A65A:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_151A67A:     If (var_98.Text Or (var_9C = vbNullString)) Then
  loc_151A68A:       Set var_94 = Me.Txt
  loc_151A690:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151A698:       var_98.Text = vbNullString
  loc_151A6B1:       Set var_94 = Me.Txt
  loc_151A6B7:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151A6BF:       var_98.Tag = vbNullString
  loc_151A6D6:       If (global_156 = "RO") Then
  loc_151A6DF:         global_152 = vbNullString
  loc_151A6E3:       End If
  loc_151A6E6:     Else
  loc_151A721:       Set var_A0 = Me.Txt
  loc_151A727:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151A72F:       var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151A780:       Set var_A0 = Me.Txt
  loc_151A786:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151A78E:       var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_151A7AF:       If (global_156 = "RO") Then
  loc_151A7CF:         var_98 = Me.Fields.Item("RoomCat")
  loc_151A7E0:         var_9C = CStr(var_98.Value)
  loc_151A7E6:         global_152 = var_9C
  loc_151A7F7:       End If
  loc_151A7F7:     End If
  loc_151A7FA:   Else
  loc_151A802:     If (var_8E = CInt(&HE)) Then
  loc_151A853:       Set var_94 = Me.Txt
  loc_151A859:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_151A861:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_151A879:       If (var_8E Or (var_9C = vbNullString)) Then
  loc_151A889:         Set var_94 = Me.Txt
  loc_151A88F:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151A897:         var_98.Text = vbNullString
  loc_151A8B0:         Set var_94 = Me.Txt
  loc_151A8B6:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151A8BE:         var_98.Tag = vbNullString
  loc_151A8CD:       Else
  loc_151A908:         Set var_A0 = Me.Txt
  loc_151A90E:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151A916:         var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151A949:         var_98 = Me.Fields.Item("Code")
  loc_151A951:         var_CC = var_98.Value
  loc_151A95A:         var_9C = CStr(var_CC)
  loc_151A967:         Set var_A0 = Me.Txt
  loc_151A96D:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151A975:         var_BC.Tag = var_9C
  loc_151A9B8:         Set var_94 = Me.Txt
  loc_151A9BE:         Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and PayType='Room' And Docid='", var_CC, -1)
  loc_151A9C6:         var_A0 = var_98.Text
  loc_151A9CF:         var_D0 = var_BC & var_9C
  loc_151A9DF:         unk_53E465.Execute var_D0 & "'", 0, var_E8
  loc_151A9EF:          = var_BC.Item()
  loc_151A9F7:          = var_E8.Value
  loc_151AA24:         If (var_A0.Fields > 0) Then
  loc_151AA29:           arg_10 = &HFF
  loc_151AA2C:           Exit Sub
  loc_151AA2D:         End If
  loc_151AA6C:         var_F8 = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & Me.Fields.Item("FolioNoDocid").Value 
  loc_151AA75:         var_118 = var_F8 & "'" 
  loc_151AA79:         var_9C = CStr(var_118)
  loc_151AA83:         unk_53E465.Execute var_9C, var_138, -1
  loc_151AAC2:         var_98 = var_A0.Fields.Item(0)
  loc_151AAE4:         If (var_98.Value > 0) Then
  loc_151AB00:           MsgBox("Guest Room Bill Already printed for this Room", &H10, var_F8, var_118, var_138)
  loc_151AB15:           Set var_8C = Nothing
  loc_151AB1A:           arg_10 = &HFF
  loc_151AB1D:           Exit Sub
  loc_151AB1E:         End If
  loc_151AB1E:       End If
  loc_151AB21:     Else
  loc_151AB29:       If (var_8E = CInt(2)) Then
  loc_151AB3A:         Set var_94 = Me.Txt
  loc_151AB40:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_9C)
  loc_151AB48:         arg_10 = var_98.Text
  loc_151AB67:         Set var_A0 = Me.Txt
  loc_151AB6D:         Call 0.Method_Txt_Validate0 (CInt(2), var_BC)
  loc_151AB75:         var_BC.Text = Proc_6_34_14ECF20(var_9C, var_A0)
  loc_151AB92:         Call Proc_76_78_1159CC8(MemVar_1F92044, var_9C)
  loc_151ABA8:         Set var_94 = Me.Txt
  loc_151ABAE:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_151ABCD:         If (var_98.Text = vbNullString) Then
  loc_151ABD2:           arg_10 = &HFF
  loc_151ABD5:         End If
  loc_151ABD8:       Else
  loc_151ABE0:         If Not (var_8E = CInt(&HB)) Then
  loc_151ABEB:           If (var_8E = CInt(8)) Then
  loc_151ABEE:           End If
  loc_151ABF8:           Set var_94 = Me.Txt
  loc_151ABFE:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151AC1E:           Set var_BC = Me.Txt
  loc_151AC24:           Call 0.Method_Txt_Validate0 (Cancel, var_E8)
  loc_151AC2C:           var_E8.Text = Proc_6_33_1512840(var_98, arg_10)
  loc_151AC42:         Else
  loc_151AC4A:           If (var_8E = CInt(3)) Then
  loc_151AC5A:             Set var_94 = Me.Txt
  loc_151AC60:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151AC7F:             If (var_98.Text <> vbNullString) Then
  loc_151ACBD:               Set var_A0 = Me.Txt
  loc_151ACC3:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151AD1C:               Set var_A0 = Me.Txt
  loc_151AD22:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151AD2A:               var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_151AD5A:               var_98 = Me.Fields.Item("PayType")
  loc_151AD71:               global_160 = Proc_6_38_E68A98(CVar(var_98))
  loc_151AD8A:               Me.FrEmp.Visible = False
  loc_151AD9E:               Me.FrChqDet.Visible = False
  loc_151ADB2:               Me.FrCCDet.Visible = False
  loc_151ADC6:               Me.FrCashCard.Visible = False
  loc_151ADEC:               Set var_94 = Me.Txt
  loc_151ADF2:               Call 0.Method_Txt_Validate0 (CInt(&H10), var_98, var_D0)
  loc_151ADFA:               (PSettlementMode = "Auto") = var_98.Tag
  loc_151AE16:               Set var_A0 = Me.Txt
  loc_151AE1C:               Call 0.Method_Txt_Validate0 (CInt(&H11), var_BC)
  loc_151AE24:               var_D4 = CStr(Me.Fields.Item("Name").Value)
  loc_151AE46:               If ((arg_10 And (var_D0 = vbNullString)) And (var_D4 = vbNullString)) Then
  loc_151AE49:                 Call Proc_76_70_12C8BA0()
  loc_151AE51:               Else
  loc_151AE7B:                 Set var_94 = Me.Txt
  loc_151AE81:                 Call 0.Method_Txt_Validate0 (CInt(&H11), var_98)
  loc_151AE89:                 var_D0 = var_98.Text
  loc_151AEA5:                 If (((PSettlementMode = "Semi") And (global_160 = "Cash Card")) And (var_D0 = vbNullString)) Then
  loc_151AEA8:                   Call Proc_76_70_12C8BA0()
  loc_151AEB0:                 Else
  loc_151AECA:                   var_98 = Me.Fields.Item("PayType")
  loc_151AEDF:                   Call Proc_76_81_120F604(Proc_6_38_E68A98(CVar(var_98)))
  loc_151AEED:                 End If
  loc_151AEED:               End If
  loc_151AEF0:             Else
  loc_151AEFD:               Set var_94 = Me.Txt
  loc_151AF03:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151AF0B:               var_98.Text = vbNullString
  loc_151AF24:               Set var_94 = Me.Txt
  loc_151AF2A:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151AF32:               var_98.Tag = vbNullString
  loc_151AF3E:             End If
  loc_151AF41:           Else
  loc_151AF49:             If Not (var_8E = CInt(5)) Then
  loc_151AF54:               If (var_8E = CInt(&H14)) Then
  loc_151AF57:               End If
  loc_151AF61:               Set var_94 = Me.Txt
  loc_151AF67:               Call 0.Method_Txt_Validate0 (Cancel)
  loc_151AF73:               Proc_6_40_EA50F0(CVar(var_98))
  loc_151AF8A:               var_118 = "0.00"
  loc_151AF93:               var_F8 = CVar(var_98) 'Double
  loc_151AF9A:               var_138 = Format(var_F8, var_118)
  loc_151AFA2:               var_9C = CStr(var_138)
  loc_151AFB0:               Set var_A0 = Me.Txt
  loc_151AFB6:               Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_9C)
  loc_151AFBE:               var_BC.Text = 1
  loc_151AFE8:               Set var_A0 = Me.LTxt
  loc_151AFEE:               Call 0.Method_Txt_Validate0 (CInt(2), var_BC, var_D0)
  loc_151AFF6:               1 = var_BC.Caption
  loc_151B003:               var_140 = Val(var_D0)
  loc_151B01C:               Set var_94 = Me.Txt
  loc_151B022:               Call 0.Method_Txt_Validate0 (CInt(5), var_98, var_9C)
  loc_151B02A:               (Cancel = CInt(5)) = var_98.Text
  loc_151B04B:               Set var_E8 = Me.Txt
  loc_151B051:               Call 0.Method_Txt_Validate0 (CInt(5), var_144, var_D4)
  loc_151B059:               (CDbl(Val(var_9C)) > CDbl(var_140)) = var_144.Text
  loc_151B08F:               If ((var_140 And (var_140 Or (CDbl(Val(var_D4)) < CDbl(0)))) And (global_172 = 0)) Then
  loc_151B0AB:                 MsgBox("Amount You have entered mismatched to Actual amount", &H40, var_F8, var_118, var_138)
  loc_151B0BD:                 arg_10 = &HFF
  loc_151B0C0:                 Exit Sub
  loc_151B0C1:               End If
  loc_151B0C4:             Else
  loc_151B0CC:               If (var_8E = CInt(&HF)) Then
  loc_151B11D:                 Set var_94 = Me.Txt
  loc_151B123:                 Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_151B12B:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_151B143:                 If (arg_10 Or (var_9C = vbNullString)) Then
  loc_151B153:                   Set var_94 = Me.Txt
  loc_151B159:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B161:                   var_98.Text = vbNullString
  loc_151B17A:                   Set var_94 = Me.Txt
  loc_151B180:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B188:                   var_98.Tag = vbNullString
  loc_151B197:                 Else
  loc_151B1D2:                   Set var_A0 = Me.Txt
  loc_151B1D8:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151B1E0:                   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151B213:                   var_98 = Me.Fields.Item("Code")
  loc_151B231:                   Set var_A0 = Me.Txt
  loc_151B237:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151B23F:                   var_BC.Tag = CStr(var_98.Value)
  loc_151B26F:                   Set var_94 = Me.Txt
  loc_151B275:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B27D:                   var_9C = var_98.Tag
  loc_151B2A5:                   If (Proc_96_1_F8C534(Proc_6_38_E68A98(CVar(var_9C))) = 0) Then
  loc_151B2C1:                     MsgBox("Credit Not Allowed.", 0, var_F8, var_118, var_138)
  loc_151B2D3:                     arg_10 = &HFF
  loc_151B2D6:                     Exit Sub
  loc_151B2D7:                   End If
  loc_151B2D7:                 End If
  loc_151B2DA:               Else
  loc_151B2E2:                 If (var_8E = CInt(&H10)) Then
  loc_151B333:                   Set var_94 = Me.Txt
  loc_151B339:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_151B341:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_151B359:                   If (arg_10 Or (var_9C = vbNullString)) Then
  loc_151B369:                     Set var_94 = Me.Txt
  loc_151B36F:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B377:                     var_98.Text = vbNullString
  loc_151B390:                     Set var_94 = Me.Txt
  loc_151B396:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_151B39E:                     var_98.Tag = vbNullString
  loc_151B3AD:                   Else
  loc_151B3E8:                     Set var_A0 = Me.Txt
  loc_151B3EE:                     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151B3F6:                     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_151B447:                     Set var_A0 = Me.Txt
  loc_151B44D:                     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_151B455:                     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_151B46B:                   End If
  loc_151B46B:                 End If
  loc_151B46B:               End If
  loc_151B46B:             End If
  loc_151B46B:           End If
  loc_151B46B:         End If
  loc_151B46B:       End If
  loc_151B46B:     End If
  loc_151B46B:   End If
  loc_151B46B: End If
  loc_151B46B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED7958
  'Data Table: 53E444
  loc_ED78BC: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED78BF:   Call DGTable_UnknownEvent_9()
  loc_ED78C4: End If
  loc_ED78E0: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED78E3:   Call DGEmp_UnknownEvent_9()
  loc_ED78E8: End If
  loc_ED7904: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED7907:   Call DGPayType_UnknownEvent_9()
  loc_ED790C: End If
  loc_ED7928: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED792B:   Call DGRoom_UnknownEvent_9()
  loc_ED7930: End If
  loc_ED794C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED794F:   Call DGCompany_UnknownEvent_9()
  loc_ED7954: End If
  loc_ED7954: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0A0C8
  'Data Table: 53E444
  loc_E0A0B4: Call Proc_76_88_144A518()
  loc_E0A0BF: Call Proc_76_81_120F604(global_160)
  loc_E0A0C4: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FDF4AC
  'Data Table: 53E444
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FDF2E0: Set var_88 = Me.TopCtrl1
  loc_FDF2E6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FDF2FF: If (CStr() = "Browse") Then
  loc_FDF302:   Exit Sub
  loc_FDF303: End If
  loc_FDF320: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FDF323:   Exit Sub
  loc_FDF324: End If
  loc_FDF335: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FDF357:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FDF391:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FDF3B3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FDF3C9:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FDF3D2:         Set var_110 = Me.FGrid
  loc_FDF3ED:       Else
  loc_FDF400:         Me.FGrid.Rows = 1
  loc_FDF424:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_FDF42C:         Set var_110 = Me.FGrid
  loc_FDF459:         Me.FGrid.FixedRows = 1
  loc_FDF461:       End If
  loc_FDF461:     End If
  loc_FDF464:   Else
  loc_FDF485:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FDF495:   End If
  loc_FDF499:   Set var_88 = Me.FGrid
  loc_FDF4AA: End If
  loc_FDF4AA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E3EACC
  'Data Table: 53E444
  loc_E3EAA2: If (Cancel = 2) Then
  loc_E3EABD:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3EAC5:   Call FGrid_UnknownEvent_9()
  loc_E3EACA: End If
  loc_E3EACA: Exit Sub
End Sub

Private Sub Del_Click() 'F95114
  'Data Table: 53E444
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F94FCF: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F95009:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F9502B:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F95041:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F9504A:       Set var_10C = Me.FGrid
  loc_F95065:     Else
  loc_F95078:       Me.FGrid.Rows = 1
  loc_F9509C:       var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_F950A4:       Set var_10C = Me.FGrid
  loc_F950D1:       Me.FGrid.FixedRows = 1
  loc_F950D9:     End If
  loc_F950D9:   End If
  loc_F950DC: Else
  loc_F950F7:   var_98 = "No Entries To Delete"
  loc_F950FD:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F9510D: End If
  loc_F9510D: Call Proc_76_84_10A9758(FGrid.DispID_10000, var_98)
  loc_F95112: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F7A564
  'Data Table: 53E444
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  Dim var_8C As Label
  loc_F7A418: On Error Goto loc_F7A55E
  loc_F7A43E: Call Proc_76_71_FCFEA4(Proc_5_1_100CB50("ADD", Me))
  loc_F7A449: Call Proc_76_73_F88260(global_56)
  loc_F7A476: var_88 = CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))
  loc_F7A485: Set var_8C = Me.Txt
  loc_F7A48B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F7A493: var_D4.Text = 1
  loc_F7A4AF: var_D8 = global_108
  loc_F7A4BB: If Not (var_D8 = 5) Then
  loc_F7A4C7:   If (var_D8 = 6) Then
  loc_F7A4CA:   End If
  loc_F7A4D7:   Set var_8C = Me.Txt
  loc_F7A4DD:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4, &HFF)
  loc_F7A4E5:   var_D4.Enabled = var_D8
  loc_F7A4FD:   If (global_104 = 2) Then
  loc_F7A506:     Call Proc_76_78_1159CC8(MemVar_1F92044, var_88)
  loc_F7A519:     Set var_8C = Me.Txt
  loc_F7A51F:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_F7A527:     var_D4.SetFocus
  loc_F7A533:   End If
  loc_F7A533: End If
  loc_F7A540: Me.LblUser.Caption = vbNullString
  loc_F7A555: Me.LblLDt.Caption = vbNullString
  loc_F7A55D: Exit Sub
  loc_F7A55E: ' Referenced from: F7A418
  loc_F7A55E: Proc_6_60_E62BC4(1)
  loc_F7A563: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBE84C
  'Data Table: 53E444
  Dim var_33B8 As String
  loc_EBE7B4: On Error Goto loc_EBE844
  loc_EBE7EE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBE7FD:   Set var_110 = Me
  loc_EBE814:   Call Proc_76_71_FCFEA4(Proc_5_1_100CB50("INI", var_110))
  loc_EBE81F:   Call Proc_76_76_F963C4(global_56)
  loc_EBE824:   Call Proc_76_75_15B4280()
  loc_EBE82C: Else
  loc_EBE832:   Call 0.Method_arg_1E8 (var_110)
  loc_EBE83A:   Call var_110.SetFocus
  loc_EBE843: End If
  loc_EBE843: Exit Sub
  loc_EBE844: ' Referenced from: EBE7B4
  loc_EBE844: Proc_6_60_E62BC4()
  loc_EBE849: Exit Sub
  loc_EBE84A: var_33B8 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FDD6E8
  'Data Table: 53E444
  Dim unk_53E465 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_FDD51C: On Error Goto loc_FDD697
  loc_FDD52D: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_FDD530:   Exit Sub
  loc_FDD531: End If
  loc_FDD568: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_FDD574:   unk_53E465.BeginTrans var_118
  loc_FDD58A:   var_94 = Me.Bookmark 'Variant
  loc_FDD5D6:   var_F4 = "Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_FDD5DA:   var_124 = CStr(var_F4)
  loc_FDD5E4:   unk_53E465.Execute var_124, var_114, -1
  loc_FDD606:   unk_53E465.CommitTrans
  loc_FDD616:   Me.Requery -1
  loc_FDD636:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_FDD643:     Me.Bookmark = var_94
  loc_FDD64B:   Else
  loc_FDD65F:     If (Me.EOF = 0) Then
  loc_FDD668:       Me.MoveLast
  loc_FDD66D:     End If
  loc_FDD66D:   End If
  loc_FDD66D:   Call Proc_76_75_15B4280(var_128)
  loc_FDD68E:   Proc_5_0_110649C(&HFF, Me)
  loc_FDD696: End If
  loc_FDD696: Exit Sub
  loc_FDD697: ' Referenced from: FDD51C
  loc_FDD69D: unk_53E465.RollbackTrans
  loc_FDD6AA: Set var_11C = Err()
  loc_FDD6B0: Call 0.Method_arg_2C (var_124, global_56)
  loc_FDD6D1: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_FDD6E4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E88480
  'Data Table: 53E444
  loc_E8840C: On Error Goto loc_E8847A
  loc_E8841D: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_E88420:   Exit Sub
  loc_E88421: End If
  loc_E88444: Call Proc_76_71_FCFEA4(Proc_5_1_100CB50("EDIT", Me))
  loc_E8845C: Me.LblUser.Caption = vbNullString
  loc_E88471: Me.LblLDt.Caption = vbNullString
  loc_E88479: Exit Sub
  loc_E8847A: ' Referenced from: E8840C
  loc_E8847A: Proc_6_60_E62BC4(global_56)
  loc_E8847F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19EF0
  'Data Table: 53E444
  loc_E19EE5: Me.Global.Unload Me
  loc_E19EED: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'DFCEAC
  'Data Table: 53E444
  loc_DFCEA8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3A878
  'Data Table: 53E444
  loc_E3A868: Proc_5_0_110649C(&HFF, Me)
  loc_E3A870: Call Proc_76_75_15B4280(global_56)
  loc_E3A875: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E351D8
  'Data Table: 53E444
  loc_E351C8: Proc_5_0_110649C(&HFF, Me)
  loc_E351D0: Call Proc_76_75_15B4280(global_56)
  loc_E351D5: Exit Sub
  loc_E351D6: var_3388 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3A998
  'Data Table: 53E444
  loc_E3A988: Proc_5_0_110649C(&HFF, Me)
  loc_E3A990: Call Proc_76_75_15B4280(global_56)
  loc_E3A995: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3A8D8
  'Data Table: 53E444
  loc_E3A8C8: Proc_5_0_110649C(&HFF, Me)
  loc_E3A8D0: Call Proc_76_75_15B4280(global_56)
  loc_E3A8D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFCFE4
  'Data Table: 53E444
  loc_DFCFE0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E820E0
  'Data Table: 53E444
  Dim Me As Recordset15
  loc_E82077: Me.Requery -1
  loc_E82087: Me.Requery -1
  loc_E82097: Me.Requery -1
  loc_E820A7: Me.Requery -1
  loc_E820B7: Me.Requery -1
  loc_E820C7: Me.Requery -1
  loc_E820D7: Me.Requery -1
  loc_E820DC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '17AEA30
  'Data Table: 53E444
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
  Dim var_AA As Variant
  Dim unk_53E465 As Connection15
  Dim var_16C As String
  Dim var_184 As String
  Dim var_AE As Variant
  Dim var_18C As Long
  Dim var_98 As Variant
  Dim var_138 As Variant
  Dim var_19C As Variant
  Dim var_148 As Variant
  Dim var_110 As String
  Dim var_158 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_298 As Variant
  Dim var_2BC As Variant
  Dim var_30C As Variant
  Dim var_32C As Long
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As MSHFlexGrid
  Dim var_3BC As Variant
  Dim var_3DC As Variant
  Dim var_3F0 As Variant
  Dim var_354 As String
  Dim var_410 As Variant
  Dim var_4C0 As Variant
  Dim var_4E0 As Variant
  Dim var_504 As Variant
  Dim var_588 As MSHFlexGrid
  Dim var_598 As Variant
  Dim var_5E0 As Variant
  Dim var_654 As Long
  Dim var_67C As String
  Dim var_EBC As Double
  Dim var_714 As String
  Dim var_EC4 As Double
  Dim var_7FC As TextBox
  Dim var_848 As TextBox
  Dim var_ECC As Double
  Dim var_8E0 As Variant
  Dim var_974 As Variant
  Dim var_A08 As Variant
  Dim var_A9C As Variant
  Dim var_B40 As Variant
  Dim var_1F8 As String
  Dim var_204 As String
  Dim var_20C As String
  Dim var_218 As String
  Dim var_21C As String
  Dim var_220 As String
  Dim var_238 As Variant
  Dim var_288 As Variant
  Dim var_2CC As Variant
  Dim var_2FC As Variant
  Dim var_480 As Variant
  Dim var_490 As Variant
  Dim var_5B8 As Variant
  Dim var_604 As Variant
  Dim var_6BC As Variant
  Dim var_754 As Variant
  Dim var_794 As Variant
  Dim var_7D4 As Variant
  Dim var_8F0 As Variant
  Dim var_920 As Variant
  Dim var_A28 As Variant
  Dim var_A48 As Variant
  Dim var_CE4 As Variant
  Dim var_D0 As Recordset15
  Dim var_1F0 As String
  Dim var_31C As Variant
  Dim var_33C As Long
  Dim var_5DC As Variant
  Dim var_210 As String
  Dim var_440 As Variant
  Dim var_C8 As Double
  Dim var_EF4 As Double
  Dim var_228 As TextBox
  Dim var_EFC As Double
  Dim Me As Recordset15
  loc_17ACCE8: On Error Goto loc_17AE9BC
  loc_17ACCEB: var_E0 = 1
  loc_17ACCF4: var_100 = 1
  loc_17ACD12: var_128 = CStr(Me.FGrid.TextMatrix))
  loc_17ACD23: If (var_128 = vbNullString) Then
  loc_17ACD31:   var_138 = "Save Data"
  loc_17ACD47:   MsgBox("Please Fill Payment Details Before Saving..", &H40, var_138, var_148, var_158)
  loc_17ACD57:   Exit Sub
  loc_17ACD58: End If
  loc_17ACD5E: var_15C = global_108
  loc_17ACD6A: If Not (var_15C = 5) Then
  loc_17ACD76:   If (var_15C = 6) Then
  loc_17ACD79:   End If
  loc_17ACD87:   Set var_114 = Me.LTxt
  loc_17ACD8D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128)
  loc_17ACD95:   var_15C = var_160.Caption
  loc_17ACDB1:   If (CDbl(Val(var_128)) <> CDbl(0)) Then
  loc_17ACDC2:     Set var_164 = Me.LTxt
  loc_17ACDC8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_16C)
  loc_17ACDD0:     var_100 = var_168.Caption
  loc_17ACDDD:     var_174 = Val(var_16C)
  loc_17ACDEE:     Set var_114 = Me.LTxt
  loc_17ACDF4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128)
  loc_17ACE21:     If (CDbl(Val(var_128)) <> CDbl(var_160.Caption)) Then
  loc_17ACE43:       MsgBox(CVar("Bill Amount and Received Amount Not Matched" & vbCrLf & "Entry could not be Saved?"), 0, var_138, var_148, var_158)
  loc_17ACE56:       Exit Sub
  loc_17ACE57:     End If
  loc_17ACE57:   End If
  loc_17ACE57: End If
  loc_17ACE7C: For var_178 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_178 'Integer
  loc_17ACE86:   var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17ACE8B:   var_100 = 2
  loc_17ACEBA:   If (CStr(Me.FGrid.TextMatrix)) = "Cash Card") Then
  loc_17ACEBF:     var_AA = &HFF
  loc_17ACEC2:   End If
  loc_17ACEC5: Next var_178 'Integer
  loc_17ACECD: Call Proc_76_85_1011268(var_17A)
  loc_17ACED8: If (var_17A = 0) Then
  loc_17ACEDB:   Exit Sub
  loc_17ACEDC: End If
  loc_17ACEE0: Set var_114 = Me.TopCtrl1
  loc_17ACEE6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17ACF06: If ((CStr() = "Add") And (var_AA = &HFF)) Then
  loc_17ACF0C:   Call Proc_76_87_F67EA8(var_17A)
  loc_17ACF17:   If (var_17A = 0) Then
  loc_17ACF1A:     Exit Sub
  loc_17ACF1B:   End If
  loc_17ACF1B: End If
  loc_17ACF1F: Set var_114 = Me.TopCtrl1
  loc_17ACF25: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17ACF3E: If (CStr() = "Add") Then
  loc_17ACF47:   global_176 = MemVar_1F920C8
  loc_17ACF50:   var_128 = Proc_6_14_EF349C()
  loc_17ACF58:   global_180 = CDate(var_128)
  loc_17ACF5E: End If
  loc_17ACF62: var_86 = CByte(0) 'Byte
  loc_17ACF6F: unk_53E465.BeginTrans var_180
  loc_17ACF78: var_86 = CByte(1) 'Byte
  loc_17ACF9A: Set var_114 = Me.Txt
  loc_17ACFA0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "Delete From PayCharge Where Docid='")
  loc_17ACFA8: var_124 = var_160.Text
  loc_17ACFB1: var_16C = -1 & var_128
  loc_17ACFC1: unk_53E465.Execute var_16C & "'", var_164, global_180
  loc_17AD000: For var_188 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AC = var_188 'Integer
  loc_17AD00A:   var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AD00F:   var_100 = 2
  loc_17AD01C:   Set var_114 = Me.FGrid
  loc_17AD022:   var_124 = var_114.TextMatrix)
  loc_17AD03E:   If (CStr(var_124) <> vbNullString) Then
  loc_17AD047:     var_AE = (var_AE + 1)
  loc_17AD050:     var_18C = global_108
  loc_17AD05C:     If Not (var_18C = 5) Then
  loc_17AD068:       If (var_18C = 6) Then
  loc_17AD06B:       End If
  loc_17AD092:       unk_53E465.Execute "Select Name,ShortName from depart where code='" & global_52 & "'", var_124, -1
  loc_17AD09D:       Set var_98 = var_114
  loc_17AD0C1:       If (var_98.RecordCount > 0) Then
  loc_17AD0C8:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AD0CD:         var_100 = 2
  loc_17AD0EB:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_17AD0FC:         If (var_128 <> "Room") Then
  loc_17AD103:           var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AD10B:           var_100 = CVar(CLng(&HE)) 'Long
  loc_17AD147:           If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_17AD14E:             var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AD156:             var_100 = CVar(CLng(&HE)) 'Long
  loc_17AD17F:             var_94 = CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_17AD191:           Else
  loc_17AD19C:             var_E0 = "ShortName"
  loc_17AD1C0:             var_138 = ("(" + var_98.Fields.Item(var_E0).Value)
  loc_17AD1C4:             var_100 = ") "
  loc_17AD1C9:             var_148 = (CVar(CStr(Me.FGrid.TextMatrix))) + var_100)
  loc_17AD1CD:             var_110 = "BILL NO.- "
  loc_17AD1D2:             var_158 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + var_110)
  loc_17AD1E4:             Set var_164 = Me.Txt
  loc_17AD1EA:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_100, var_E0, var_100)
  loc_17AD1F2:             var_E0 = var_168.Text
  loc_17AD1FD:             var_1BC = (var_100 + CVar(var_128))
  loc_17AD206:             var_1CC = (var_1BC + " ")
  loc_17AD20F:             var_1EC = (var_1CC + vbNullString)
  loc_17AD214:             var_94 = CStr(var_1EC)
  loc_17AD235:           End If
  loc_17AD238:         Else
  loc_17AD243:           var_E0 = "ShortName"
  loc_17AD257:           var_160 = var_98.Fields.Item(var_E0)
  loc_17AD267:           var_138 = ("(" + var_160.Value)
  loc_17AD270:           var_148 = (CVar(CStr(Me.FGrid.TextMatrix))) + ") ")
  loc_17AD274:           var_110 = "BILL NO.- "
  loc_17AD279:           var_158 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + var_110)
  loc_17AD28B:           Set var_164 = Me.Txt
  loc_17AD291:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_158, var_E0)
  loc_17AD299:           var_114 = var_168.Text
  loc_17AD2A4:           var_1BC = (var_18C + CVar(var_128))
  loc_17AD2AD:           var_1CC = (var_1BC + " ")
  loc_17AD2B6:           var_1EC = (var_1CC + vbNullString)
  loc_17AD2BB:           var_94 = CStr(var_1EC)
  loc_17AD2DC:         End If
  loc_17AD2DC:       End If
  loc_17AD2E1:       Set var_98 = Nothing
  loc_17AD2E9:       Set var_9C = Nothing
  loc_17AD2FA:       Set var_114 = Me.Txt
  loc_17AD300:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1F0)
  loc_17AD308:       var_AE = var_160.Text
  loc_17AD31B:       Set var_164 = Me.Txt
  loc_17AD321:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_17AD349:       Set var_224 = Me.Txt
  loc_17AD34F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_228)
  loc_17AD35E:       Proc_6_7_F25D88(var_1CC, CVar(var_228))
  loc_17AD38F:       var_19C = CVar(CLng(var_AC)) 'Long
  loc_17AD397:       var_298 = CVar(CLng(&H10)) 'Long
  loc_17AD3B6:       var_30C = CVar(CLng(var_AC)) 'Long
  loc_17AD3BB:       var_32C = 1
  loc_17AD3DE:       var_368 = CVar(CLng(var_AC)) 'Long
  loc_17AD3E3:       var_388 = &H14
  loc_17AD406:       var_3BC = CVar(CLng(var_AC)) 'Long
  loc_17AD40B:       var_3DC = &H18
  loc_17AD44D:       var_440 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F92078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_17AD456:       var_4C0 = CVar(CLng(var_AC)) 'Long
  loc_17AD45B:       var_4E0 = 1
  loc_17AD46E:       var_504 = Me.FGrid.TextMatrix)
  loc_17AD496:       var_598 = Me.FGrid.TextMatrix)
  loc_17AD4B0:       Set var_5DC = Me.LTxt
  loc_17AD4B6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_5E0, var_5E4, var_598, 2, CVar(CLng(var_AC)), var_504)
  loc_17AD4BE:       var_4E0 = var_5E0.Caption
  loc_17AD4CB:       var_174 = Val(var_5E4)
  loc_17AD4D7:       var_654 = 8
  loc_17AD4FD:       var_EBC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17AD52F:       var_EC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17AD540:       Set var_7F8 = Me.Txt
  loc_17AD546:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_7FC, var_800, var_EC4, &H1A, CVar(CLng(var_AC)), var_EBC)
  loc_17AD54E:       var_654 = var_7FC.Text
  loc_17AD561:       Set var_844 = Me.Txt
  loc_17AD567:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_848, var_84C, CVar(CLng(var_AC)), var_174)
  loc_17AD56F:       var_4C0 = var_848.Tag
  loc_17AD57C:       var_ECC = Val(var_84C)
  loc_17AD59A:       var_8E0 = Me.FGrid.TextMatrix)
  loc_17AD5C1:       var_974 = Me.FGrid.TextMatrix)
  loc_17AD5E8:       var_A08 = Me.FGrid.TextMatrix)
  loc_17AD620:       Proc_6_7_F25D88(var_ABC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AC)), var_A08, CVar(CLng(&HC)), CVar(CLng(var_AC)), var_974)
  loc_17AD640:       var_B40 = Me.FGrid.TextMatrix)
  loc_17AD651:       Proc_6_17_EAA2B0(var_B60, CVar(CStr(var_B40)), CVar(CLng(&H11)), CVar(CLng(var_AC)), CVar(CLng(&HA)), CVar(CLng(var_AC)))
  loc_17AD682:       Proc_6_7_F25D88(var_C04, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AC)), var_8E0)
  loc_17AD695:       Proc_6_7_F25D88(var_C94, Date, CVar(CLng(9)), CVar(CLng(var_AC)))
  loc_17AD6C7:       Proc_6_39_E7C810(var_D78, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AC)))
  loc_17AD6DA:       Proc_6_17_EAA2B0(var_E08, global_176, var_ECC)
  loc_17AD6ED:       Proc_6_8_EB0DE4(var_E58, global_180)
  loc_17AD706:       var_128 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_17AD714:       var_184 = var_128 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,batchno,LOGSITE_CODE,AU_Name,AU_EntDt) Values ("
  loc_17AD762:       var_220 = var_184 & "'" & var_1F0 & "'," & CStr(var_AE) & ",'" & global_116 & "','" & var_168.Text & "','" & MemVar_1F92070
  loc_17AD76F:       var_158 = CVar(var_220 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_17AD773:       var_E0 = "',"
  loc_17AD7AF:       var_2FC = var_158 & var_E0 & var_1CC & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_17AD805:       var_604 = var_2FC & var_440 & "','" & CVar(var_94) & "','" & CVar(CStr(var_504)) & "','" & CVar(CStr(var_598)) & "'," & CVar(var_174) 
  loc_17AD862:       var_7D4 = var_604 & "," & CVar(var_EBC) & "," & CVar(var_EC4) & ",'" & CVar(global_152) & "'," & "'" & CVar(global_156) 
  loc_17AD89A:       var_8F0 = CVar(CStr(var_8E0)) 'String
  loc_17AD8C5:       var_A28 = var_7D4 & "','" & CVar(var_800) & "'," & CVar(var_ECC) & ",'" & var_8F0 & "','" & CVar(CStr(var_974)) & "','" & CVar(CStr(var_A08)) 
  loc_17AD8CE:       var_A48 = var_A28 & "'," 
  loc_17AD92E:       var_CE4 = var_A48 & var_ABC & "," & var_B60 & "," & var_C04 & ",'" & CVar(MemVar_1F920C8) & "'," & var_C94 & ",'A','" & CVar(global_52) 
  loc_17AD988:       unk_53E465.Execute CStr(var_CE4 & "'," & var_D78 & ",'" & CVar(MemVar_1F92078) & "'," & var_E08 & "," & var_E58 & ")"), var_EAC, -1
  loc_17ADAD2:       var_AE = (var_AE + 1)
  loc_17ADAD9:       var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17ADADE:       var_100 = 2
  loc_17ADAEB:       Set var_114 = Me.FGrid
  loc_17ADAF1:       var_124 = var_114.TextMatrix)
  loc_17ADB0D:       If (CStr(var_124) = "Room") Then
  loc_17ADB3B:         unk_53E465.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_124, -1
  loc_17ADB46:         Set var_98 = var_114
  loc_17ADB6C:         If (var_98.RecordCount > 0) Then
  loc_17ADB9B:           var_160 = var_98.Fields.Item("TaxStru")
  loc_17ADBAB:           var_138 = "Select * from taxstru where Code='" & var_160.Value 
  loc_17ADBB4:           var_148 = var_138 & "' Order by Sno" 
  loc_17ADBC2:           unk_53E465.Execute CStr(var_148), var_158, -1
  loc_17ADBCD:           Set var_A0 = var_164
  loc_17ADBEA:         Else
  loc_17ADC03:           MsgBox("System Defined Revenue is not defined", 0, var_138, var_148, var_158)
  loc_17ADC19:           unk_53E465.RollbackTrans
  loc_17ADC1E:           Exit Sub
  loc_17ADC1F:         End If
  loc_17ADC23:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17ADC28:         var_100 = &H16
  loc_17ADC66:         var_184 = "Select Docid,GuestProf,Company from GuestFolio where Docid='" & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_17ADC6F:         unk_53E465.Execute var_184, var_138, -1
  loc_17ADC7A:         Set var_D0 = var_160
  loc_17ADCA8:         If (var_D0.RecordCount > 0) Then
  loc_17ADCD6:           var_CC = CStr(var_D0.Fields.Item("GuestProf").Value)
  loc_17ADCE6:           var_E0 = "Company"
  loc_17ADCFA:           var_160 = var_D0.Fields.Item(var_E0)
  loc_17ADD1C:           If (Proc_6_38_E68A98(CVar(var_160), var_160, CVar(var_160), var_100, var_E0, var_164) <> vbNullString) Then
  loc_17ADD3E:             var_114 = var_D0.Fields
  loc_17ADD46:             var_160 = var_114.Item("Company")
  loc_17ADD57:             var_128 = Proc_6_38_E68A98(CVar(var_160), "Update Sale1 Set Party='", var_138, -1, var_224, var_114)
  loc_17ADD62:             var_1F0 = var_100 & Proc_6_38_E68A98(CVar(var_160), var_160, CVar(var_160), var_100, "Company", var_164) & "' Where Docid='"
  loc_17ADD73:             Set var_164 = Me.Txt
  loc_17ADD79:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_168, var_184, var_1F0)
  loc_17ADD81:             var_E0 = var_168.Text
  loc_17ADD9A:             unk_53E465.Execute var_AE & var_184 & "'", var_EB0, var_3DC
  loc_17ADDC0:           End If
  loc_17ADDC0:         End If
  loc_17ADDCE:         Set var_114 = Me.Txt
  loc_17ADDD4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160)
  loc_17ADDEF:         Set var_164 = Me.Txt
  loc_17ADDF5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168)
  loc_17ADDFD:         var_204 = var_168.Text
  loc_17ADE1D:         Set var_224 = Me.Txt
  loc_17ADE23:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_17ADE32:         Proc_6_7_F25D88(var_1CC, CVar(var_228))
  loc_17ADE4E:         var_258 = "HH:mm"
  loc_17ADE8A:         var_31C = CVar(CLng(var_AC)) 'Long
  loc_17ADE8F:         var_33C = 2
  loc_17ADEB2:         var_388 = CVar(CLng(var_AC)) 'Long
  loc_17ADEB7:         var_3BC = 8
  loc_17ADEC4:         Set var_3F0 = Me.FGrid
  loc_17ADEE4:         var_410 = CVar(CLng(var_AC)) 'Long
  loc_17ADEE9:         var_480 = &H12
  loc_17ADEFC:         var_504 = Me.FGrid.TextMatrix)
  loc_17ADF3D:         var_5B8 = Me.FGrid.TextMatrix)
  loc_17ADF84:         var_6BC = Me.FGrid.TextMatrix)
  loc_17ADFC0:         var_794 = Me.FGrid.TextMatrix)
  loc_17ADFEC:         var_EBC = Val(CStr(Right(CVar(CStr(var_794)), 8)))
  loc_17ADFFD:         Proc_6_7_F25D88(var_8F0, Date, var_EBC, var_794, &H16, CVar(CLng(var_AC)), var_6BC, &H12)
  loc_17AE037:         Proc_6_17_EAA2B0(var_A48, global_176, CVar(CLng(var_AC)), var_5B8, &H12)
  loc_17AE04A:         Proc_6_8_EB0DE4(var_ABC, global_180, CVar(CLng(var_AC)), var_504)
  loc_17AE063:         var_16C = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LOGSITE_CODE,AU_Name,AU_EntDt)Values " & "('"
  loc_17AE07D:         var_1F8 = var_16C & var_160.Text & "'," & CStr(var_AE)
  loc_17AE0B7:         var_158 = CVar(var_1F8 & ",'" & global_116 & "'," & var_204 & ",'" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_17AE109:         var_2FC = var_158 & "'," & var_1CC & ",'" & CVar(Format$(Time, var_258)) & "','" & CVar(var_CC) & "','" & CVar(var_94) & "','" 
  loc_17AE138:         var_490 = var_2FC & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(var_3F0.TextMatrix)))) 
  loc_17AE168:         var_754 = var_490 & ",'" & Mid(CVar(CStr(var_504)), 3, 5) & "','" & LTrim(Left(CVar(CStr(var_5B8)), 2)) & "','" & Right(CVar(CStr(var_6BC)), 5) 
  loc_17AE1BA:         var_920 = var_754 & "'," & CVar(var_EBC) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F920C8) & "'," & var_8F0 & ",'A','" 
  loc_17AE1FA:         var_A9C = var_920 & CVar(global_52) & "','" & var_D0.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F92078) & "'," & var_A48 
  loc_17AE221:         unk_53E465.Execute CStr(var_A9C & "," & var_ABC & ")"), var_B40, -1
  loc_17AE307:         var_AE = (var_AE + 1)
  loc_17AE30E:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AE313:         var_100 = &H12
  loc_17AE34A:         var_B8 = CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5))
  loc_17AE35D:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AE362:         var_100 = &H12
  loc_17AE3A4:         var_BC = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_17AE3B9:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AE3BE:         var_100 = &H16
  loc_17AE415:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AE41A:         var_100 = &H12
  loc_17AE456:         var_B4 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_17AE46B:         var_E0 = CVar(CLng(var_AC)) 'Long
  loc_17AE470:         var_100 = 8
  loc_17AE48E:         var_128 = CStr(Me.FGrid.TextMatrix))
  loc_17AE496:         var_174 = Val(var_128)
  loc_17AE4A0:         var_C8 = (var_C8 + var_174)
  loc_17AE4BA:         Set var_114 = Me.Txt
  loc_17AE4C0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_1F8, var_C8, var_174, var_100, var_E0)
  loc_17AE4C8:         var_124 = var_160.Text
  loc_17AE4DB:         Set var_164 = Me.Txt
  loc_17AE4E1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_168, var_128, var_100, var_E0)
  loc_17AE4E9:         var_124 = var_168.Text
  loc_17AE4F6:         var_EF4 = Val(var_128)
  loc_17AE504:         var_138 = Trim(CVar(Me.LblVPrefix))
  loc_17AE517:         Set var_224 = Me.Txt
  loc_17AE51D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_228, var_204, var_EF4)
  loc_17AE525:         var_100 = var_228.Text
  loc_17AE52D:         var_148 = Time
  loc_17AE53C:         var_E0 = "HH:mm"
  loc_17AE541:         var_158 = var_E0
  loc_17AE555:         var_1BC = Trim(CVar(Format$(var_148, var_158)))
  loc_17AE560:         var_F0 = "Code"
  loc_17AE57C:         var_2BC = var_98.Fields.Item(var_F0).Value
  loc_17AE58F:         Set var_39C = Me.LTxt
  loc_17AE595:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_3F0, var_16C, 1)
  loc_17AE59D:         1 = var_3F0.Caption
  loc_17AE5AA:         var_EFC = Val(var_16C)
  loc_17AE5B1:         var_100 = CVar(CLng(var_AC)) 'Long
  loc_17AE5B6:         var_19C = 8
  loc_17AE5DC:         var_F04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17AE5ED:         var_1EC = Date
  loc_17AE5F5:         var_238 = Date
  loc_17AE5FD:         var_248 = Now
  loc_17AE606:         Set var_588 = Me.TopCtrl1
  loc_17AE60C:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(Val(CStr(Val(CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))))
  loc_17AE63E:         var_288 = IIf((CStr(var_258) = "Add"), "A", "E")
  loc_17AE665:         var_2CC = var_D0.Fields.Item("DocID").Value
  loc_17AE66F:         var_84C = 0
  loc_17AE67A:         var_800 = 0
  loc_17AE68D:         var_714 = 0
  loc_17AE698:         var_67C = 0
  loc_17AE6D5:         var_354 = vbNullString
  loc_17AE6DE:         var_220 = vbNullString
  loc_17AE6E7:         var_21C = vbNullString
  loc_17AE715:         var_218 = "Room"
  loc_17AE729:         var_210 = vbNullString
  loc_17AE732:         var_20C = vbNullString
  loc_17AE776:         Proc_96_8_1CC2560(MemVar_1F92078 & "TOUT", var_1F8, var_AE, global_116, CLng(var_EF4), MemVar_1F92070, CStr(var_138), CDate(var_204))
  loc_17AE7EE:       End If
  loc_17AE7EE:     End If
  loc_17AE7EE:   End If
  loc_17AE7F1: Next var_188 'Integer
  loc_17AE7FB: Set var_98 = Nothing
  loc_17AE803: Set var_9C = Nothing
  loc_17AE80B: Set var_A0 = Nothing
  loc_17AE813: Set var_A4 = Nothing
  loc_17AE81B: Set var_D0 = Nothing
  loc_17AE82F: If (OpenMode = 1) Then
  loc_17AE836:   Set var_114 = Me.TopCtrl1
  loc_17AE83C:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17AE844:   var_128 = CStr()
  loc_17AE85C:   If ((var_128 = "Add") And (var_AA = &HFF)) Then
  loc_17AE862:     Call Proc_76_86_125B3A4(var_17A)
  loc_17AE86D:     If (var_17A = &HFF) Then
  loc_17AE876:       unk_53E465.CommitTrans
  loc_17AE87F:       var_86 = CByte(0) 'Byte
  loc_17AE890:       Me.Global.Unload Me
  loc_17AE898:       Exit Sub
  loc_17AE89C:     Else
  loc_17AE89F:     Else
  loc_17AE89F:     End If
  loc_17AE89F:   End If
  loc_17AE8A5:   unk_53E465.CommitTrans
  loc_17AE8AE:   var_86 = CByte(0) 'Byte
  loc_17AE8B5:   var_180 = OpenMode
  loc_17AE8C3:   If (var_180 = 1) Then
  loc_17AE8D3:     Me.Global.Unload Me
  loc_17AE8DB:     Exit Sub
  loc_17AE8DC:   End If
  loc_17AE8E7:   Me.Requery -1
  loc_17AE8F7:   Me.Requery -1
  loc_17AE91B:   Set var_114 = Me.Txt
  loc_17AE921:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_128, "SearchCode='")
  loc_17AE929:   0 = var_160.Text
  loc_17AE942:   Me.Find 1 & var_128 & "'", var_E0, 
  loc_17AE95B:   Set var_114 = Me.TopCtrl1
  loc_17AE961:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17AE97A:   If (CStr() = "Add") Then
  loc_17AE97D:     Call TopCtrl1_UnknownEvent_A()
  loc_17AE982:     Exit Sub
  loc_17AE983:   End If
  loc_17AE998:   var_128 = "INI"
  loc_17AE9A6:   Call Proc_76_71_FCFEA4(Proc_5_1_100CB50(var_128, Me))
  loc_17AE9B1:   Call Proc_76_76_F963C4(global_56)
  loc_17AE9B6:   Call Proc_76_75_15B4280()
  loc_17AE9BB:   Exit Sub
  loc_17AE9BC: End If
  loc_17AE9BC: ' Referenced from: 17ACCE8
  loc_17AE9C5: If (CInt(var_86) = 1) Then
  loc_17AE9CE:   unk_53E465.RollbackTrans
  loc_17AE9D3: End If
  loc_17AE9DB: Set var_114 = Err()
  loc_17AE9E1: Call 0.Method_arg_1C (var_180)
  loc_17AE9F2: If (var_180 <> 0) Then
  loc_17AE9FD:   Set var_114 = Err()
  loc_17AEA03:   Call 0.Method_arg_2C (var_128)
  loc_17AEA1C:   MsgBox(CVar(var_128), &H10, var_138, var_148, var_158)
  loc_17AEA2F: End If
  loc_17AEA2F: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F6EE0C
  'Data Table: 53E444
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F6ECE3: Me.DGPayType.Visible = False
  loc_F6ECF1: var_AC = global_108
  loc_F6ECFD: If Not (var_AC = 5) Then
  loc_F6ED09:   If (var_AC = 6) Then
  loc_F6ED0C:   End If
  loc_F6ED23:   If (Me.RecordCount > 0) Then
  loc_F6ED62:     Set var_B8 = Me.Txt
  loc_F6ED68:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_BC)
  loc_F6ED70:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F6EDA3:     var_B4 = Me.Fields.Item("Code")
  loc_F6EDC2:     Set var_B8 = Me.Txt
  loc_F6EDC8:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_BC)
  loc_F6EDD0:     var_BC.Tag = CStr(var_B4.Value)
  loc_F6EDE6:   End If
  loc_F6EDF1:   Set var_A8 = Me.Txt
  loc_F6EDF7:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B4)
  loc_F6EDFF:   var_B4.SetFocus
  loc_F6EE0B: End If
  loc_F6EE0B: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA780C
  'Data Table: 53E444
  Dim var_A8 As Variant
  loc_EA778C: Set var_88 = Me.DGPayType
  loc_EA77B6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA77BE: Set var_BC = Me.DGPayType
  loc_EA77FA: Proc_6_138_106D6F8(Me.DGPayType, global_60, CInt(3), Me.FGPoint)
  loc_EA7808: Exit Sub
End Sub

Private Sub Form_Load() '146D8E8
  'Data Table: 53E444
  Dim var_98 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Long
  Dim var_DC As Variant
  Dim var_CC As String
  Dim var_E0 As String
  Dim unk_53E465 As Connection15
  Dim var_C4 As Variant
  Dim var_A0 As Variant
  Dim var_E4 As Field20
  Dim var_F8 As String
  Dim var_90 As Recordset15
  Dim var_100 As Long
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_128 As Long
  Dim var_12C As TextBox
  loc_146CCF0: On Error Goto loc_146D8A4
  loc_146CCFF: Set var_A0 = MemVar_1F92244.PictSubMenu
  loc_146CD16: Set var_98 = MemVar_1F92244.PictSubMenu
  loc_146CD31: Call 0.Method_arg_7C (((MDIForm1.PictSubMenu.Top + MDIForm1.PictSubMenu.Height) + CDbl(2000)))
  loc_146CD44: Call 0.Method_arg_74 (CDbl(&H19))
  loc_146CD51: Call 0.Method_MeC (CDbl(6500))
  loc_146CD5E: Call 0.Method_Me4 (CDbl(8000))
  loc_146CD72: Me.LblUser.Left = CDbl(13500)
  loc_146CD89: Me.LblUser.Top = CDbl(7800)
  loc_146CDA0: Me.LblLDt.Top = CDbl(8160)
  loc_146CDB7: Me.LblLDt.Left = CDbl(13500)
  loc_146CDC6: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_146CDDE: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_146CDF4: Me.FrSendRoom.BackColor = CLng(MemVar_1F921B0)
  loc_146CE0A: Me.FrCashCard.BackColor = CLng(MemVar_1F921B0)
  loc_146CE20: Me.FrCCDet.BackColor = CLng(MemVar_1F921B0)
  loc_146CE36: Me.FrChqDet.BackColor = CLng(MemVar_1F921B0)
  loc_146CE4C: Me.FrComp.BackColor = CLng(MemVar_1F921B0)
  loc_146CE62: Me.FrEmp.BackColor = CLng(MemVar_1F921B0)
  loc_146CE78: Me.FrMem.BackColor = CLng(MemVar_1F921B0)
  loc_146CE8E: Me.FrRem.BackColor = CLng(MemVar_1F921B0)
  loc_146CEA4: Me.FrTxnNo.BackColor = CLng(MemVar_1F921B0)
  loc_146CEBA: Me.FrRest.BackColor = CLng(MemVar_1F921B0)
  loc_146CEC8: var_C8 = global_108
  loc_146CED4: If Not (var_C8 = 5) Then
  loc_146CEE0:   If (var_C8 = 6) Then
  loc_146CEE3:   End If
  loc_146CEE3: End If
  loc_146CEED: Set var_98 = Me.TopCtrl1
  loc_146CEF3: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_146CF01: Call 0.Method_arg_50 (var_CC)
  loc_146CF09: var_DC = CVar(var_CC) 'String
  loc_146CF17: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_DC)
  loc_146CF33: global_116 = rsAdvanceDepDialog.AdvType
  loc_146CF5E: unk_53E465.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_DC, -1
  loc_146CF7F: var_C4 = 0
  loc_146CFAF: unk_53E465.Execute "Select Max(ShortName) from depart where code='" & global_52 & "'", var_DC, -1
  loc_146CFB7: var_98 = var_98.Fields
  loc_146CFBF: var_C4 = var_A0.Item(var_A0)
  loc_146CFC7: var_E4 = var_E4.Value
  loc_146CFDA: global_188 = Proc_6_38_E68A98(var_F4, var_F4)
  loc_146D006: var_98 = Me.TopCtrl1.Fields
  loc_146D016: var_DC = CVar(var_98.Item("CreditCardInfoMandatory")) 'Address
  loc_146D030: If (Proc_6_38_E68A98(var_DC, var_98) = "Y") Then
  loc_146D039:   global_196 = "Y"
  loc_146D03D: End If
  loc_146D051: var_CC = "SELECT DP.PayCode as code, RevMast.Name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F92078
  loc_146D072: unk_53E465.Execute var_CC & "') AND DP.restcode='" & global_52 & "' ORDER BY NAME ", var_DC, -1
  loc_146D083: Set global_60 = var_98
  loc_146D0A5: CVarUnk
  loc_146D0AA: VerifyVarObj
  loc_146D0B6: LateIdStAd
  loc_146D0E8: unk_53E465.Execute "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_DC, -1
  loc_146D117: CVarUnk
  loc_146D11C: VerifyVarObj
  loc_146D128: LateIdStAd
  loc_146D14A: var_CC = "Select T.Type+t.RoomCat+Cast(space(5-len(T.RoomCat)) As Varchar)+Code+Cast(space(5-len(Code)) As Varchar) as Code,T.Code As Name,RoomOcc.DOCID as FolioNoDocid From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (RoomOcc.LOGSITE_CODE='" & MemVar_1F92078
  loc_146D151: var_E0 = "SELECT Code,Name FROM Employee WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or RoomOcc.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_146D15A: unk_53E465.Execute var_E0, var_DC, -1
  loc_146D189: CVarUnk
  loc_146D18E: VerifyVarObj
  loc_146D19A: LateIdStAd
  loc_146D1C3: var_E0 = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_146D1CC: unk_53E465.Execute var_E0, var_DC, -1
  loc_146D1FB: CVarUnk
  loc_146D200: VerifyVarObj
  loc_146D20C: LateIdStAd
  loc_146D235: var_E0 = "Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_146D24C: unk_53E465.Execute var_E0 & MemVar_1F92078 & "') Order By Name", var_DC, -1
  loc_146D27F: CVarUnk
  loc_146D284: VerifyVarObj
  loc_146D28A: Set var_98 = Me.DGMember
  loc_146D290: LateIdStAd
  loc_146D2AA: Call 0.Method_arg_38 (MemVar_1F923AC, var_98, Me.DGCompany, var_98, var_98, Me.DGRoom, var_98, var_98)
  loc_146D2BB: Call 0.Method_arg_3C (MemVar_1F920EC, Me.DGEmp, var_98, var_98)
  loc_146D2CC: Call 0.Method_arg_54 (MemVar_1F9206C, Me.DGPayType, var_98)
  loc_146D2DD: Call 0.Method_arg_1C (MemVar_1F92070, var_98)
  loc_146D2EE: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_146D2FF: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_146D310: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_146D321: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_146D332: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_146D343: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_146D35D: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_146D36B: Set var_98 = MemVar_1F92044
  loc_146D37A: Call 0.Method_Form_Load8 (var_98)
  loc_146D390: Me.DGMember.Clone
  loc_146D39B: Set var_A0 = var_98
  loc_146D3AA: Call 0.Method_arg_50 (var_A0, -1)
  loc_146D3BC: var_100 = global_108
  loc_146D3C8: If Not (var_100 = 5) Then
  loc_146D3D4:   If (var_100 = 6) Then
  loc_146D3D7:   End If
  loc_146D3F2:   var_E0 = "SELECT Distinct Docid as SearchCode FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND Vtype='"
  loc_146D40C:   unk_53E465.Execute var_E0 & global_116 & "'", var_DC, -1
  loc_146D41D:   Set global_56 = var_98
  loc_146D436: End If
  loc_146D442: Set var_98 = Me
  loc_146D459: Call Proc_76_71_FCFEA4(Proc_5_1_100CB50("INI", var_98, global_56, var_98), var_100)
  loc_146D464: Call Proc_76_74_1224340(var_98)
  loc_146D469: Call Proc_76_79_1215CE0(global_60)
  loc_146D47A: If (global_104 = 2) Then
  loc_146D47D:   Call Proc_76_75_15B4280()
  loc_146D482: End If
  loc_146D48E: If (global_104 = 1) Then
  loc_146D49A:   Set var_98 = Me.TopCtrl1
  loc_146D4A0:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_146D4B5:   Set var_98 = Me.Txt
  loc_146D4BB:   Call 0.Method_Form_Load0 (CInt(0), var_A0)
  loc_146D4C3:   var_A0.Visible = False
  loc_146D4D5:   var_C4 = 0
  loc_146D4F5:   var_CC = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and PayType='Room' And Docid='" & global_120
  loc_146D505:   unk_53E465.Execute var_CC & "'", var_DC, -1
  loc_146D50D:   var_98 = var_98.Fields
  loc_146D515:   var_C4 = var_A0.Item(var_A0)
  loc_146D51D:   var_E4 = var_E4.Value
  loc_146D544:   If (var_F4 > 0) Then
  loc_146D549:     var_92 = &HFF
  loc_146D54F:   Else
  loc_146D54F:     Call TopCtrl1_UnknownEvent_A()
  loc_146D554:   End If
  loc_146D56B:   If (Me.RecordCount > 0) Then
  loc_146D574:     Me.MoveFirst
  loc_146D5A1:     Me.Find "SearchCode='" & global_120 & "'", 0, 1
  loc_146D5C1:     If (Me.EOF = 0) Then
  loc_146D5CA:       If (var_92 = 0) Then
  loc_146D5CD:         var_B4 = "Edit"
  loc_146D5D7:         Set var_98 = Me.TopCtrl1
  loc_146D5DD:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B4)
  loc_146D5E5:       End If
  loc_146D5E5:       Call Proc_76_75_15B4280(var_B4, var_92)
  loc_146D5F0:       Call Proc_76_81_120F604(global_160)
  loc_146D5F5:     End If
  loc_146D5F5:   End If
  loc_146D606:   Set var_98 = Me.Txt
  loc_146D60C:   Call 0.Method_Form_Load0 (CInt(0), var_A0)
  loc_146D614:   var_A0.Text = global_120
  loc_146D654:   Set var_98 = Me.Txt
  loc_146D65A:   Call 0.Method_Form_Load0 (CInt(1), var_A0)
  loc_146D662:   var_A0.Text = CStr(Val(CStr(Right(global_120, 8))))
  loc_146D678:   var_DC = 5
  loc_146D6A6:   Me.LblVPrefix.Caption = CStr(Mid(global_120, 9, var_DC))
  loc_146D6BE:   var_128 = global_108
  loc_146D6CA:   If Not (var_128 = 5) Then
  loc_146D6D6:     If (var_128 = 6) Then
  loc_146D6D9:     End If
  loc_146D6F0:     Call 0.Method_Form_Load0 (CInt(4), var_A0, global_128)
  loc_146D6F8:     var_A0.Tag = var_128
  loc_146D710:     If (global_108 = 6) Then
  loc_146D738:       var_F8 = "Select Name from RoomMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND code='" & global_128
  loc_146D748:       unk_53E465.Execute var_F8 & "' and Type='HL' and RoomCat='HALL'", var_DC, -1
  loc_146D753:       Set var_8C = Me.Txt
  loc_146D779:       var_98 = Me.Recordset15.Fields
  loc_146D781:       var_A0 = var_98.Item("Name")
  loc_146D7A0:       Set var_E4 = Me.Txt
  loc_146D7A6:       Call 0.Method_Form_Load0 (CInt(4), var_12C)
  loc_146D7AE:       var_12C.Text = Proc_6_38_E68A98(CVar(var_A0), var_98)
  loc_146D7C5:     Else
  loc_146D7D6:       Set var_98 = Me.Txt
  loc_146D7DC:       Call 0.Method_Form_Load0 (CInt(4), var_A0)
  loc_146D7E4:       var_A0.Text = global_128
  loc_146D7F0:     End If
  loc_146D813:     var_F4 = Format(global_132, "0.00")
  loc_146D82A:     Set var_98 = Me.LTxt
  loc_146D830:     Call 0.Method_Form_Load0 (CInt(0), var_A0, CStr(var_F4))
  loc_146D838:     var_A0.Caption = 1
  loc_146D84E:   End If
  loc_146D84E: End If
  loc_146D84E: Call Proc_76_84_10A9758(1)
  loc_146D857: Set var_98 = Me.TopCtrl1
  loc_146D85D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_F4)
  loc_146D865: var_CC = CStr()
  loc_146D88B: If ((var_CC = "Add") And (PSettlementMode = "Auto")) Then
  loc_146D88E:   Call Proc_76_70_12C8BA0()
  loc_146D893: End If
  loc_146D898: Set var_8C = Nothing
  loc_146D8A0: Set var_90 = Nothing
  loc_146D8A3: Exit Sub
  loc_146D8A4: ' Referenced from: 146CCF0
  loc_146D8AC: Set var_98 = Err()
  loc_146D8B2: Call 0.Method_arg_2C (var_CC)
  loc_146D8D3: MsgBox(CVar(var_CC), &H40, "Information", var_124, var_13C)
  loc_146D8E6: Exit Sub
  loc_146D8E7: Exit Sub
End Sub

Private Sub Form_Resize() 'ED61D8
  'Data Table: 53E444
  Dim var_8C As Label
  loc_ED6136: Call 0.Method_arg_50 (var_88)
  loc_ED6148: Me.LblFormCaption.Caption = var_88
  loc_ED6161: Me.LblFormCaption.Left = CDbl(0)
  loc_ED616D: Set var_A0 = Me.TopCtrl1
  loc_ED6173: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED6180: Set var_8C = Me.TopCtrl1
  loc_ED6186: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED61A0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED61BB: Call 0.Method_arg_100 (var_B8)
  loc_ED61CD: Me.LblFormCaption.Width = var_B8
  loc_ED61D5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6D368
  'Data Table: 53E444
  loc_E6D317: Set global_68 = Nothing
  loc_E6D329: Set global_56 = Nothing
  loc_E6D33B: Set global_60 = Nothing
  loc_E6D34D: Set global_64 = Nothing
  loc_E6D35F: Set global_80 = Nothing
  loc_E6D366: Exit Sub
End Sub

Private Sub Form_Activate() 'F8DF9C
  'Data Table: 53E444
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_CC As TextBox
  Dim var_94 As Frame
  loc_F8DE53: If (OpenMode = 1) Then
  loc_F8DE61:   var_90 = OpenType
  loc_F8DE6D:   If Not (var_90 = 5) Then
  loc_F8DE79:     If (var_90 = 6) Then
  loc_F8DE7C:     End If
  loc_F8DE8A:     Set var_94 = Me.Txt
  loc_F8DE90:     Call 0.Method_Form_Activate0 (CInt(3), var_98, var_9A)
  loc_F8DE98:     var_90 = var_98.Enabled
  loc_F8DEAA:     If (var_9A = &HFF) Then
  loc_F8DEB8:       Set var_94 = Me.Txt
  loc_F8DEBE:       Call 0.Method_Form_Activate0 (CInt(3), var_98)
  loc_F8DEC6:       var_98.SetFocus
  loc_F8DED2:     End If
  loc_F8DEE0:     Set var_94 = Me.Txt
  loc_F8DEE6:     Call 0.Method_Form_Activate0 (CInt(3), var_98)
  loc_F8DEFF:     Set var_C0 = Me.DGPayType
  loc_F8DF05:     var_C0.Left = CVar(var_98.Left)
  loc_F8DF21:     Set var_98 = Me.Txt
  loc_F8DF27:     Call 0.Method_Form_Activate0 (CInt(3), var_C0)
  loc_F8DF42:     Set var_C8 = Me.Txt
  loc_F8DF48:     Call 0.Method_Form_Activate0 (CInt(3), var_CC)
  loc_F8DF76:     var_AC = CVar((((Me.FrRest.Top + var_C0.Top) + var_CC.Height) + CDbl(&HF))) 'Single
  loc_F8DF85:     Me.DGPayType.Top = CVar(var_98.Left)
  loc_F8DF99:   End If
  loc_F8DF99: End If
  loc_F8DF99: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F418C4
  'Data Table: 53E444
  Dim var_B8 As DataGrid
  Dim var_86 As Integer
  Dim KeyCode As Integer
  loc_F417C8: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F417FC:   Set var_B8 = Me.DGEmp
  loc_F41821:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B8.Visible) = 0)) Then
  loc_F41831:     Me.var_B8.Unload Me
  loc_F41839:     Exit Sub
  loc_F4183A:   End If
  loc_F4183A: End If
  loc_F41858: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_104 = 1)) Then
  loc_F41876:   If (Me.FrSendRoom.Visible = &HFF) Then
  loc_F4187B:     var_86 = 0
  loc_F41888:     Call Txt_Validate(CInt(&HE))
  loc_F41893:     If (var_86 = &HFF) Then
  loc_F41898:       KeyCode = 0
  loc_F4189B:       Exit Sub
  loc_F4189C:     End If
  loc_F4189C:   End If
  loc_F4189C:   Call Proc_76_82_15D9F30(KeyCode, var_86)
  loc_F418A1:   Call TopCtrl1_UnknownEvent_16()
  loc_F418A6:   Exit Sub
  loc_F418A7: End If
  loc_F418BB: Proc_6_88_FE81B4(Me, KeyCode, Shift)
  loc_F418C3: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3B724
  'Data Table: 53E444
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B61B: Me.DGRoom.Visible = False
  loc_F3B63A: If (Me.RecordCount > 0) Then
  loc_F3B679:   Set var_B4 = Me.Txt
  loc_F3B67F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F3B687:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3B6BA:   var_B0 = Me.Fields.Item("Code")
  loc_F3B6D9:   Set var_B4 = Me.Txt
  loc_F3B6DF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F3B6E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3B6FD: End If
  loc_F3B708: Set var_A8 = Me.Txt
  loc_F3B70E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&HE))
  loc_F3B716: var_B0.SetFocus
  loc_F3B722: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA74FC
  'Data Table: 53E444
  Dim var_A8 As Variant
  loc_EA747C: Set var_88 = Me.DGRoom
  loc_EA74A6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA74AE: Set var_BC = Me.DGRoom
  loc_EA74EA: Proc_6_138_106D6F8(Me.DGRoom, global_72, CInt(&HE), Me.FGPoint)
  loc_EA74F8: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F3A3E4
  'Data Table: 53E444
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A2DB: Me.DGEmp.Visible = False
  loc_F3A2FA: If (Me.RecordCount > 0) Then
  loc_F3A339:   Set var_B4 = Me.Txt
  loc_F3A33F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F3A347:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3A37A:   var_B0 = Me.Fields.Item("Code")
  loc_F3A399:   Set var_B4 = Me.Txt
  loc_F3A39F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F3A3A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3A3BD: End If
  loc_F3A3C8: Set var_A8 = Me.Txt
  loc_F3A3CE: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HD))
  loc_F3A3D6: var_B0.SetFocus
  loc_F3A3E2: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA78D0
  'Data Table: 53E444
  Dim var_A8 As Variant
  loc_EA7850: Set var_88 = Me.DGEmp
  loc_EA787A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA7882: Set var_BC = Me.DGEmp
  loc_EA78BE: Proc_6_138_106D6F8(Me.DGEmp, global_64, CInt(&HD), Me.FGPoint)
  loc_EA78CC: Exit Sub
End Sub

Public Function global_52Get() '54000C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '54001B
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EBE5A4
  'Data Table: 53E444
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBE51A: On Error Goto loc_EBE55F
  loc_EBE523: Me.MoveFirst
  loc_EBE53D: var_8C = "Searchcode='" & MyValue
  loc_EBE54D: Me.Find var_8C & "'", 0, 1
  loc_EBE559: Call Proc_76_75_15B4280(var_A0)
  loc_EBE55E: Exit Sub
  loc_EBE55F: ' Referenced from: EBE51A
  loc_EBE567: Set var_A4 = Err()
  loc_EBE56D: Call 0.Method_arg_2C (var_8C)
  loc_EBE58E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBE5A1: Exit Sub
  loc_EBE5A2: Exit Sub
End Sub

Public Property Get OpenMode() 'E049C0
  'Data Table: 53E444
  loc_E049B9: OpenMode = global_104
End Sub

Public Property Let OpenMode(vNewValue) 'E022C4
  'Data Table: 53E444
  loc_E022BE: global_104 = vNewValue
  loc_E022C1: Exit Sub
End Sub

Public Property Get OpenType() 'E04700
  'Data Table: 53E444
  loc_E046F9: OpenType = global_108
End Sub

Public Property Let OpenType(vNewValue) 'E01B80
  'Data Table: 53E444
  loc_E01B7A: global_108 = vNewValue
  loc_E01B7D: Exit Sub
End Sub

Public Property Get AdvType() 'E13B64
  'Data Table: 53E444
  loc_E13B58: var_88 = global_116
  loc_E13B5B: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E13A44
  'Data Table: 53E444
  loc_E13A3C: global_116 = vNewValue
  loc_E13A40: Exit Sub
End Sub

Public Property Get IdNo() 'E139FC
  'Data Table: 53E444
  loc_E139F0: var_88 = global_112
  loc_E139F3: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E139B4
  'Data Table: 53E444
  loc_E139AC: global_112 = vNewValue
  loc_E139B0: Exit Sub
  loc_E139B1: ThisVCallAd
End Sub

Public Property Get PersonCode() 'E13924
  'Data Table: 53E444
  loc_E13918: var_88 = global_124
  loc_E1391B: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E13894
  'Data Table: 53E444
  loc_E1388C: global_124 = vNewValue
  loc_E13890: Exit Sub
End Sub

Public Property Get pDocId() 'E134EC
  'Data Table: 53E444
  loc_E134E0: var_88 = global_120
  loc_E134E3: pDocId = 
  loc_E134E9: ThisVCallAd
End Sub

Public Property Let pDocId(vNewValue) 'E132AC
  'Data Table: 53E444
  loc_E132A4: global_120 = vNewValue
  loc_E132A8: Exit Sub
  loc_E132A9: ThisVCallAd
End Sub

Public Property Get PTableOrRoomNo() 'E1321C
  'Data Table: 53E444
  loc_E13210: var_88 = global_128
  loc_E13213: PTableOrRoomNo = 
  loc_E13219: ThisVCallAd
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E1318C
  'Data Table: 53E444
  loc_E13184: global_128 = vNewValue
  loc_E13188: Exit Sub
End Sub

Public Property Get PRoomCat() 'E13144
  'Data Table: 53E444
  loc_E13138: var_88 = global_164
  loc_E1313B: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E130B4
  'Data Table: 53E444
  loc_E130AC: global_164 = vNewValue
  loc_E130B0: Exit Sub
End Sub

Public Property Get PRoomtype() 'E12FDC
  'Data Table: 53E444
  loc_E12FD0: var_88 = global_168
  loc_E12FD3: PRoomtype = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E12F94
  'Data Table: 53E444
  loc_E12F8C: global_168 = vNewValue
  loc_E12F90: Exit Sub
End Sub

Public Property Get PBillAmt() 'E12D9C
  'Data Table: 53E444
  loc_E12D92: var_88 = CStr(global_132)
  loc_E12D95: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E12CC4
  'Data Table: 53E444
  loc_E12CBE: global_132 = CDbl(vNewValue)
  loc_E12CC1: Exit Sub
End Sub

Public Property Get PSettlementMode() 'E12C7C
  'Data Table: 53E444
  loc_E12C70: var_88 = global_140
  loc_E12C73: PSettlementMode = 
  loc_E12C79: ThisVCallAd
End Sub

Public Property Let PSettlementMode(vNewValue) 'E12C34
  'Data Table: 53E444
  loc_E12C2C: global_140 = vNewValue
  loc_E12C30: Exit Sub
End Sub

Public Property Get PCardType() 'E12BA4
  'Data Table: 53E444
  loc_E12B98: var_88 = global_144
  loc_E12B9B: PCardType = 
  loc_E12BA1: Exit Sub
End Sub

Public Property Let PCardType(vNewValue) 'E12B14
  'Data Table: 53E444
  loc_E12B0C: global_144 = vNewValue
  loc_E12B10: Exit Sub
  loc_E12B11: ThisVCallAd
End Sub

Public Property Get PCardCode() 'E12ACC
  'Data Table: 53E444
  loc_E12AC0: var_88 = global_148
  loc_E12AC3: PCardCode = 
  loc_E12AC9: ThisVCallAd
End Sub

Public Property Let PCardCode(vNewValue) 'E12A84
  'Data Table: 53E444
  loc_E12A7C: global_148 = vNewValue
  loc_E12A80: Exit Sub
End Sub

Public Sub Proc_76_70_12C8BA0
  'Data Table: 53E444
  Dim var_A8 As String
  Dim unk_53E465 As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As String
  Dim var_D0 As Fields15
  Dim var_CC As Variant
  Dim var_9C As Recordset15
  Dim var_D8 As TextBox
  Dim Me As Recordset15
  loc_12C8548: On Error Goto loc_12C8B98
  loc_12C856F: unk_53E465.Execute "Select Interface From MemEnviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_CC, -1
  loc_12C857A: Set var_88 = var_D0
  loc_12C859E: If (var_88.RecordCount > 0) Then
  loc_12C85B0:   var_D0 = var_88.Fields
  loc_12C85C0:   var_CC = CVar(var_D0.Item("Interface")) 'Address
  loc_12C85C9:   var_DC = Proc_6_38_E68A98(var_CC)
  loc_12C85DA:   If (var_DC = "SmartCard_ACR") Then
  loc_12C8635:     If (Proc_275_12_130A7A4(2, 0, var_8C, var_94, var_90, 0) = 0) Then
  loc_12C8638:       Exit Sub
  loc_12C8639:     End If
  loc_12C8641:     If (var_94 = "Member") Then
  loc_12C8658:       var_A8 = "Select S.Name From SmartCardRegistration SCR Inner Join SubGroup S On SCR.MemberCode=S.SubCode Where SCR.Code='" & var_8C
  loc_12C8668:       unk_53E465.Execute var_A8 & "'", var_CC, -1
  loc_12C8673:       Set var_9C = var_D0
  loc_12C8697:       If (var_9C.RecordCount > 0) Then
  loc_12C869D:         var_BC = "Name"
  loc_12C86A9:         var_D0 = var_9C.Fields
  loc_12C86B1:         var_D8 = var_D0.Item(var_BC)
  loc_12C86C2:         var_A4 = Proc_6_38_E68A98(CVar(var_D8), var_D0, 0, var_A0)
  loc_12C86CB:       End If
  loc_12C86CB:     End If
  loc_12C86CE:     var_A8 = PCardType
  loc_12C8705:     If (((var_A8 = "Cash Card") And (var_94 = "Member")) Or ((PSettlementMode = "Semi") And (var_94 = "Member"))) Then
  loc_12C8716:       Set var_D0 = Me.Txt
  loc_12C871C:       Call 0.Method_Proc_76_70_12C8BA00 (CInt(3), var_D8, "CASH CARD")
  loc_12C8724:       var_D8.Text = 0
  loc_12C8771:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12C8774:         Exit Sub
  loc_12C8775:       End If
  loc_12C877B:       Me.MoveFirst
  loc_12C87A5:       Call 0.Method_Proc_76_70_12C8BA00 (CInt(3), var_D8, var_A8, "Name ='", 0)
  loc_12C87AD:       1 = var_D8.Text
  loc_12C87C6:       Me.Find var_BC & var_A8 & "'", 0, Me.Txt
  loc_12C87E9:       Set var_D0 = Me.Txt
  loc_12C87EF:       Call 0.Method_Proc_76_70_12C8BA00 (CInt(&H11), var_D8)
  loc_12C87F7:       var_D8.Text = var_8C
  loc_12C8811:       Set var_D0 = Me.Txt
  loc_12C8817:       Call 0.Method_Proc_76_70_12C8BA00 (CInt(&H12), var_D8)
  loc_12C881F:       var_D8.Text = var_90
  loc_12C8835:       Call Txt_Validate(CInt(3))
  loc_12C883D:     Else
  loc_12C8840:       var_A8 = PCardType
  loc_12C8859:       If ((var_A8 = "Member") And (var_94 = "Member")) Then
  loc_12C886A:         Set var_D0 = Me.Txt
  loc_12C8870:         Call 0.Method_Proc_76_70_12C8BA00 (CInt(3), var_D8)
  loc_12C8878:         var_D8.Text = "BILL TO MEMBER"
  loc_12C88C5:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12C88C8:           Exit Sub
  loc_12C88C9:         End If
  loc_12C88CF:         Me.MoveFirst
  loc_12C88F3:         Set var_D0 = Me.Txt
  loc_12C88F9:         Call 0.Method_Proc_76_70_12C8BA00 (CInt(3), var_D8, var_A8, "Name ='")
  loc_12C8901:         0 = var_D8.Text
  loc_12C891A:         Me.Find 1 & var_A8 & "'", var_BC, var_96
  loc_12C893D:         Set var_D0 = Me.Txt
  loc_12C8943:         Call 0.Method_Proc_76_70_12C8BA00 (CInt(&H10), var_D8)
  loc_12C894B:         var_D8.Text = var_A4
  loc_12C8965:         Set var_D0 = Me.Txt
  loc_12C896B:         Call 0.Method_Proc_76_70_12C8BA00 (CInt(&H10), var_D8)
  loc_12C8973:         var_D8.Tag = var_A0
  loc_12C8989:         Call Txt_Validate(CInt(3))
  loc_12C8991:       Else
  loc_12C8994:         var_A8 = PCardType
  loc_12C89CB:         If (((var_A8 = "Cash Card") And (var_94 = "Cash Card")) Or ((PSettlementMode = "Semi") And (var_94 = "Cash Card"))) Then
  loc_12C89DC:           Set var_D0 = Me.Txt
  loc_12C89E2:           Call 0.Method_Proc_76_70_12C8BA00 (CInt(3), var_D8)
  loc_12C89EA:           var_D8.Text = "CASH CARD"
  loc_12C8A37:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_12C8A3A:             Exit Sub
  loc_12C8A3B:           End If
  loc_12C8A41:           Me.MoveFirst
  loc_12C8A65:           Set var_D0 = Me.Txt
  loc_12C8A6B:           Call 0.Method_Proc_76_70_12C8BA00 (CInt(3), var_D8, var_A8, "Name ='")
  loc_12C8A73:           0 = var_D8.Text
  loc_12C8A8C:           Me.Find 1 & var_A8 & "'", var_BC, var_96
  loc_12C8AAF:           Set var_D0 = Me.Txt
  loc_12C8AB5:           Call 0.Method_Proc_76_70_12C8BA00 (CInt(&H11), var_D8)
  loc_12C8ABD:           var_D8.Text = var_8C
  loc_12C8AD7:           Set var_D0 = Me.Txt
  loc_12C8ADD:           Call 0.Method_Proc_76_70_12C8BA00 (CInt(&H12), var_D8)
  loc_12C8AE5:           var_D8.Text = var_90
  loc_12C8AFB:           Call Txt_Validate(CInt(3))
  loc_12C8B00:         End If
  loc_12C8B00:       End If
  loc_12C8B00:     End If
  loc_12C8B03:   Else
  loc_12C8B0B:     If (var_DC = "NBSD_Mifare") Then
  loc_12C8B27:       MsgBox("Procedure Not Defined!", &H40, var_124, var_144, var_164)
  loc_12C8B3A:     Else
  loc_12C8B53:       MsgBox("Smart Card Interface Not Defined!", &H40, var_124, var_144, var_164)
  loc_12C8B63:     End If
  loc_12C8B63:   End If
  loc_12C8B66: Else
  loc_12C8B7F:   MsgBox("Member Environment Settings NOT SET!", 0, var_124, var_144, var_164)
  loc_12C8B8F: End If
  loc_12C8B94: Set var_88 = Nothing
  loc_12C8B97: Exit Sub
  loc_12C8B98: ' Referenced from: 12C8548
  loc_12C8B98: Proc_6_60_E62BC4(var_96)
  loc_12C8B9D: Exit Sub
End Sub

Public Sub Proc_76_71_FCFEA4(arg_C) 'FCFEA4
  'Data Table: 53E444
  Dim var_98 As TextBox
  loc_FCFCDE: Set var_8C = Me.Txt
  loc_FCFCE4: Call 0.Method_Proc_76_71_FCFEA48 (var_8E, var_86)
  loc_FCFCF4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FCFDA3:   If (((((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) And (CInt(var_86) <> &H21)) And (CInt(var_86) <> &H22)) Then
  loc_FCFDB6:     Set var_8C = Me.Txt
  loc_FCFDBC:     Call 0.Method_Proc_76_71_FCFEA40 (CInt(var_86), var_98)
  loc_FCFDC4:     var_98.Enabled = arg_C
  loc_FCFDD0:   End If
  loc_FCFDD3: Next var_92 'Byte
  loc_FCFDE5: If (global_104 = 1) Then
  loc_FCFDF5:   Set var_8C = Me.Txt
  loc_FCFDFB:   Call 0.Method_Proc_76_71_FCFEA40 (CInt(1), var_98)
  loc_FCFE03:   var_98.Enabled = False
  loc_FCFE0F: End If
  loc_FCFE1C: Set var_8C = Me.Txt
  loc_FCFE22: Call 0.Method_Proc_76_71_FCFEA40 (CInt(2), var_98)
  loc_FCFE2A: var_98.Enabled = False
  loc_FCFE43: Set var_8C = Me.Txt
  loc_FCFE49: Call 0.Method_Proc_76_71_FCFEA40 (CInt(0), var_98)
  loc_FCFE51: var_98.Enabled = False
  loc_FCFE74: If (OpenMode = 1) Then
  loc_FCFE84:   Set var_8C = Me.Txt
  loc_FCFE8A:   Call 0.Method_Proc_76_71_FCFEA40 (CInt(4), var_98)
  loc_FCFE92:   var_98.Enabled = False
  loc_FCFE9E:   GoTo loc_FCFEA1
  loc_FCFEA1:   ' Referenced from: FCFE9E
  loc_FCFEA1: End If
  loc_FCFEA1: Exit Sub
End Sub

Public Sub Proc_76_72_F10304(arg_C) 'F10304
  'Data Table: 53E444
  Dim var_98 As TextBox
  loc_F1021A: Set var_8C = Me.Txt
  loc_F10220: Call 0.Method_Proc_76_72_F103048 (var_8E, var_86)
  loc_F10230: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F102CB:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_F102DE:     Set var_8C = Me.Txt
  loc_F102E4:     Call 0.Method_Proc_76_72_F103040 (CInt(var_86), var_98)
  loc_F102EC:     var_98.Enabled = arg_C
  loc_F102F8:   End If
  loc_F102FB: Next var_92 'Byte
  loc_F10301: Exit Sub
End Sub

Public Sub Proc_76_73_F88260
  'Data Table: 53E444
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F88106: Set var_8C = Me.Txt
  loc_F8810C: Call 0.Method_Proc_76_73_F88260C (var_8E, var_86)
  loc_F8811C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F88132:   Set var_8C = Me.Txt
  loc_F88138:   Call 0.Method_Proc_76_73_F882600 (CInt(var_86), var_98)
  loc_F88140:   var_98.Text = vbNullString
  loc_F8815C:   Set var_8C = Me.Txt
  loc_F88162:   Call 0.Method_Proc_76_73_F882600 (CInt(var_86), var_98)
  loc_F8816A:   var_98.Tag = vbNullString
  loc_F88179: Next var_92 'Byte
  loc_F88192: Me.FGrid.Rows = 1
  loc_F8819A: var_A8 = "1"
  loc_F881A4: Set var_8C = Me.FGrid
  loc_F881C8: Me.FGrid.FixedRows = 1
  loc_F881DE: Set var_8C = Me.LTxt
  loc_F881E4: Call 0.Method_Proc_76_73_F882600 (CInt(0), var_98, vbNullString)
  loc_F881EC: var_98.Caption = FGrid.DispID_10000
  loc_F88206: Set var_8C = Me.LTxt
  loc_F8820C: Call 0.Method_Proc_76_73_F882600 (CInt(1), var_98)
  loc_F88214: var_98.Caption = vbNullString
  loc_F8822E: Set var_8C = Me.LTxt
  loc_F88234: Call 0.Method_Proc_76_73_F882600 (CInt(2), var_98)
  loc_F8823C: var_98.Caption = vbNullString
  loc_F8824E: global_176 = vbNullString
  loc_F8825B: global_180 = CDate(var_A8)
  loc_F8825E: Exit Sub
End Sub

Public Sub Proc_76_74_1224340
  'Data Table: 53E444
  Dim var_90 As Long
  Dim var_A0 As Variant
  loc_1223E3F: Me.FrRest.Top = CDbl(825)
  loc_1223E56: Me.FrRest.Left = CDbl(1250)
  loc_1223E69: var_90 = OpenType
  loc_1223E75: If Not (var_90 = 1) Then
  loc_1223E81:   If (var_90 = 7) Then
  loc_1223E84:   End If
  loc_1223E97:   Me.FGrid.Top = CVar(CDbl(3705))
  loc_1223EA2: Else
  loc_1223EAB:   If Not (var_90 = 5) Then
  loc_1223EB7:     If (var_90 = 6) Then
  loc_1223EBA:     End If
  loc_1223ECD:     Me.FGrid.Top = CVar(CDbl(3800))
  loc_1223ED5:   End If
  loc_1223ED5: End If
  loc_1223EE8: Me.FGrid.Left = CVar(CDbl(510))
  loc_1223F15: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(1110))
  loc_1223F30: Me.FrChqDet.Left = CDbl(1250)
  loc_1223F5D: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(1110))
  loc_1223F78: Me.FrCCDet.Left = CDbl(1250)
  loc_1223FA2: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1223FD3: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1224010: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_122401F: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_1224052: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1224086: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(1110))
  loc_12240A1: Me.FrSendRoom.Left = CDbl(1250)
  loc_12240CE: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(1110))
  loc_12240E9: Me.FrEmp.Left = CDbl(1250)
  loc_1224116: Me.FrComp.Top = (Me.FrRest.Top + CDbl(1110))
  loc_1224131: Me.FrComp.Left = CDbl(1250)
  loc_122415E: Me.FrMem.Top = (Me.FrRest.Top + CDbl(1110))
  loc_1224179: Me.FrMem.Left = CDbl(1250)
  loc_12241A6: Me.FrCashCard.Top = (Me.FrRest.Top + CDbl(1110))
  loc_12241C1: Me.FrCashCard.Left = CDbl(1250)
  loc_12241DC: Me.DGRoom.Top = CVar(CDbl(405))
  loc_12241F7: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_1224212: Me.DGEmp.Top = CVar(CDbl(405))
  loc_122422D: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_1224248: Me.DGCompany.Top = CVar(CDbl(405))
  loc_1224263: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_1224277: If (global_108 = 5) Then
  loc_1224289:   Me.FrRem.Width = CDbl(4925)
  loc_1224291: End If
  loc_122429D: If (global_108 = 6) Then
  loc_12242AF:   Me.FrRem.Width = CDbl(4925)
  loc_12242B7: End If
  loc_12242DC: Me.FrRem.Top = (Me.FrRest.Top + CDbl(960))
  loc_1224307: Me.FrRem.Left = Me.FrRest.Left
  loc_1224332: Me.FrTxnNo.Left = Me.FrRest.Left
  loc_122433E: Exit Sub
End Sub

Public Sub Proc_76_75_15B4280
  'Data Table: 53E444
  Dim Me As Variant
  Dim var_98 As Long
  Dim var_9C As String
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_B0 As String
  Dim var_B8 As String
  Dim var_F4 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_D4 As Field20
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_124 As Variant
  Dim unk_53E465 As Connection15
  Dim var_E4 As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_160 As Variant
  Dim var_138 As Variant
  Dim var_1B4 As Fields15
  Dim var_1D8 As Variant
  Dim var_150 As Variant
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_1A0 As Variant
  Dim var_1B0 As Variant
  Dim var_8C As Recordset15
  loc_15B3020: On Error Goto loc_15B423A
  loc_15B3029: Proc_183_45_E5C118(global_56)
  loc_15B3045: If (Me.RecordCount <= 0) Then
  loc_15B3048:   Call Proc_76_73_F88260()
  loc_15B3050: Else
  loc_15B3056:   var_98 = global_108
  loc_15B3062:   If Not (var_98 = 5) Then
  loc_15B306E:     If (var_98 = 6) Then
  loc_15B3071:     End If
  loc_15B3085:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,"
  loc_15B3093:     var_A4 = var_9C & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.CardNo, st.U_AE,st.U_Name,st.U_Entdt,st.AU_Name,st.AU_Entdt,ST.CardHolder, ST.ChqNo, "
  loc_15B309A:     var_A8 = var_A4 & "ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode,CC.Name as MemName,CompCode As MemCode FROM ((((PayCharge AS ST LEFT JOIN "
  loc_15B30A8:     var_B0 = var_A8 & "GuestProf AS GP ON (ST.GuestProf = GP.Code AND ST.LOGSITE_CODE=GP.LOGSITE_CODE)) LEFT JOIN Employee AS E " & "ON (ST.EmpCode = E.Code AND ST.LOGSITE_CODE=E.LOGSITE_CODE)) LEFT JOIN RevMast AS P ON (ST.PayCode = P.Code AND ST.LOGSITE_CODE=P.LOGSITE_CODE)) "
  loc_15B30B6:     var_B8 = var_B0 & "LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where (ST.LOGSITE_CODE='"
  loc_15B30FD:     var_124 = CVar(var_B8 & MemVar_1F92078 & "' or ST.LOGSITE_CODE='HO') AND ST.Docid='") & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0" 
  loc_15B310B:     unk_53E465.Execute CStr(var_124), var_148, -1
  loc_15B3116:     Set var_88 = var_14C
  loc_15B3146:   End If
  loc_15B31EF:   var_1B0 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE")), Me.Recordset15.Fields) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_15B3237:   Me.LblUser.Caption = CStr(var_98 & CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_Name")), var_1B0)))
  loc_15B32B7:   var_150 = Me.Recordset15.Fields.Item("U_AE")
  loc_15B3318:   var_1B0 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_150)) = "E"), "Last Update :   ", "entdt :   "))
  loc_15B3332:   var_1B4 = Me.Recordset15.Fields
  loc_15B3342:   var_1D8 = CVar(var_1B4.Item("U_EntDt")) 'Address
  loc_15B3360:   Me.LblLDt.Caption = CStr(var_1B0 & CVar(Proc_6_38_E68A98(var_1D8)))
  loc_15B33CC:   global_88 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_15B33F4:   If (Me.Recordset15.RecordCount > 0) Then
  loc_15B342B:     global_176 = CStr(Me.Recordset15.Fields.Item("AU_Name").Value)
  loc_15B346E:     global_180 = CDate(Me.Recordset15.Fields.Item("AU_EntDt").Value)
  loc_15B34B7:     Set var_14C = Me.Txt
  loc_15B34BD:     Call 0.Method_Proc_76_75_15B42800 (CInt(0), var_150)
  loc_15B34C5:     var_150.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_15B3517:     Set var_14C = Me.Txt
  loc_15B351D:     Call 0.Method_Proc_76_75_15B42800 (CInt(1), var_150)
  loc_15B3525:     var_150.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_15B3577:     Set var_14C = Me.Txt
  loc_15B357D:     Call 0.Method_Proc_76_75_15B42800 (CInt(2), var_150)
  loc_15B3585:     var_150.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_15B35D6:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_15B35EA:   End If
  loc_15B35F9:   Me.FGrid.Redraw = False
  loc_15B360E:   Set var_C0 = Me.FGrid
  loc_15B3614:   var_C0.Rows = 1
  loc_15B361E:   var_90 = 1
  loc_15B3638:   If (Me.var_C0.RecordCount > 0) Then
  loc_15B363B:     ' Referenced from:   15B4163
  loc_15B364D:     If Not(Me.Recordset15.EOF) Then
  loc_15B3650:       var_D0 = vbNullString
  loc_15B365A:       Set var_C0 = Me.FGrid
  loc_15B366F:       Set var_204 = Me.FGrid
  loc_15B3676:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B367B:       var_160 = 0
  loc_15B36B2:       var_F4 = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_15B36B9:       LateIdCallSt
  loc_15B370C:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_90)), var_204, var_F4, 2)) 'String
  loc_15B3713:       LateIdCallSt
  loc_15B376C:       LateIdCallSt
  loc_15B37AD:       var_9C = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayCode")), var_204, CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)), 1, CVar(CLng(var_90)), var_204)
  loc_15B37C9:       If (var_9C = MemVar_1F92070 & "CCAD") Then
  loc_15B37CE:         var_8E = &HFF
  loc_15B37D1:       End If
  loc_15B380E:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_90)), var_8E, var_F4)) 'String
  loc_15B3815:       LateIdCallSt
  loc_15B382B:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B3830:       var_160 = 4
  loc_15B3867:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("RoomCat").Value)) 'String
  loc_15B386E:       LateIdCallSt
  loc_15B3888:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B388D:       var_160 = 5
  loc_15B38C4:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("Roomtype").Value)) 'String
  loc_15B38CB:       LateIdCallSt
  loc_15B38E5:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B38ED:       var_160 = CVar(CLng(6)) 'Long
  loc_15B3920:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("RoomNo").Value)) 'String
  loc_15B3927:       LateIdCallSt
  loc_15B3979:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_90)), var_204, var_F4, CVar(CLng(7)), CVar(CLng(var_90)))) 'String
  loc_15B3980:       LateIdCallSt
  loc_15B39B5:       var_138 = CVar(CLng(var_90)) 'Long
  loc_15B39BA:       var_170 = 8
  loc_15B39EB:       var_124 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_15B39F2:       LateIdCallSt
  loc_15B3A0C:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B3A14:       var_160 = CVar(CLng(9)) 'Long
  loc_15B3A47:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_15B3A4E:       LateIdCallSt
  loc_15B3A68:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B3A70:       var_160 = CVar(CLng(&HA)) 'Long
  loc_15B3AA3:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_15B3AAA:       LateIdCallSt
  loc_15B3AFC:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_90)), var_204, var_F4, CVar(CLng(&HB)), CVar(CLng(var_90)))) 'String
  loc_15B3B03:       LateIdCallSt
  loc_15B3B52:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_90)), var_204, var_F4, var_204)) 'String
  loc_15B3B59:       LateIdCallSt
  loc_15B3B6F:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B3B77:       var_160 = CVar(CLng(&HC)) 'Long
  loc_15B3BAA:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_15B3BB1:       LateIdCallSt
  loc_15B3C03:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_90)), var_204, var_F4, CVar(CLng(&HD)), CVar(CLng(var_90)))) 'String
  loc_15B3C0A:       LateIdCallSt
  loc_15B3C58:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TxnNo")), CVar(CLng(&H11)), CVar(CLng(var_90)), var_204, var_F4, var_204)) 'String
  loc_15B3C5F:       LateIdCallSt
  loc_15B3C75:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B3C7D:       var_160 = CVar(CLng(&HE)) 'Long
  loc_15B3CB0:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_15B3CB7:       LateIdCallSt
  loc_15B3D09:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_90)), var_204, var_F4, CVar(CLng(&HF)), CVar(CLng(var_90)))) 'String
  loc_15B3D10:       LateIdCallSt
  loc_15B3D26:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B3D2E:       var_160 = CVar(CLng(&H10)) 'Long
  loc_15B3D61:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_15B3D68:       LateIdCallSt
  loc_15B3DBB:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_90)), var_204, var_F4, &H14, CVar(CLng(var_90)))) 'String
  loc_15B3DC2:       LateIdCallSt
  loc_15B3E11:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_90)), var_204, var_F4, var_204)) 'String
  loc_15B3E18:       LateIdCallSt
  loc_15B3E67:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_90)), var_204, var_F4)) 'String
  loc_15B3E6E:       LateIdCallSt
  loc_15B3EBD:       var_F4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_90)), var_204, var_F4)) 'String
  loc_15B3EC4:       LateIdCallSt
  loc_15B3EDA:       var_114 = CVar(CLng(var_90)) 'Long
  loc_15B3F16:       var_F4 = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_15B3F1D:       LateIdCallSt
  loc_15B3F61:       var_F4 = "0.00"
  loc_15B3F88:       Set var_14C = Me.LTxt
  loc_15B3F8E:       Call 0.Method_Proc_76_75_15B42800 (CInt(0), var_150, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_F4)), 1, 1, var_204, var_F4)
  loc_15B3F96:       var_150.Caption = &H1A
  loc_15B3FC4:       var_F4 = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PayCharge AS P INNER JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_15B3FF4:       var_104 = var_F4 & Me.Recordset15.Fields.Item("DocID").Value 
  loc_15B3FFD:       var_124 = var_104 & "' And SNo=" 
  loc_15B4033:       var_1A0 = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_15B403B:       var_9C = CStr(var_124 & "Created By :   ")
  loc_15B4045:       unk_53E465.Execute var_9C, var_1D8, -1
  loc_15B4050:       Set var_8C = var_1B4
  loc_15B408A:       If (var_8C.RecordCount > 0) Then
  loc_15B40CE:         var_F4 = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(0).Value, &H12, CVar(CLng(var_90)), var_1B4, CVar(CLng(var_90)))) 'String
  loc_15B40D5:         LateIdCallSt
  loc_15B412C:         var_F4 = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(1).Value, &H13, CVar(CLng(var_90)), var_204, var_F4)) 'String
  loc_15B4133:         LateIdCallSt
  loc_15B4149:       End If
  loc_15B414B:       Set var_204 = Nothing 
  loc_15B4155:       var_90 = (var_90 + 1)
  loc_15B415E:       Me.Recordset15.MoveNext
  loc_15B4163:       GoTo loc_15B363B
  loc_15B4166:     End If
  loc_15B4179:     Me.FGrid.FixedRows = 1
  loc_15B4181:   End If
  loc_15B418F:   Me.FGrid.Redraw = True
  loc_15B419D:   If (var_90 = 1) Then
  loc_15B41B3:     Me.FGrid.Rows = 1
  loc_15B41D7:     var_E4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, var_90, var_204, var_F4))) 'String
  loc_15B41DF:     Set var_D4 = Me.FGrid
  loc_15B420C:     Me.FGrid.FixedRows = 1
  loc_15B4214:   End If
  loc_15B4214:   Call Proc_76_84_10A9758(FGrid.DispID_10000, var_E4, var_204, var_F4)
  loc_15B4219:   Call Proc_76_88_144A518(var_F4, var_204)
  loc_15B4224:   If (var_8E = &HFF) Then
  loc_15B422C:     Call Proc_76_72_F10304(0)
  loc_15B4231:   End If
  loc_15B4231: End If
  loc_15B4236: Set var_88 = Nothing
  loc_15B4239: Exit Sub
  loc_15B423A: ' Referenced from: 15B3020
  loc_15B4242: Set var_C0 = Err()
  loc_15B4248: Call 0.Method_arg_2C (var_9C)
  loc_15B4269: MsgBox(CVar(var_9C), &H40, "Information", var_104, var_124)
  loc_15B427C: Exit Sub
End Sub

Public Sub Proc_76_76_F963C4
  'Data Table: 53E444
  loc_F96264: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F96276:   Me.DGPayType.Visible = False
  loc_F9627E: End If
  loc_F9629A: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F962AC:   Me.DGPayType.Visible = False
  loc_F962B4: End If
  loc_F962D0: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_F962E2:   Me.DGEmp.Visible = False
  loc_F962EA: End If
  loc_F96306: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_F96318:   Me.DGTable.Visible = False
  loc_F96320: End If
  loc_F9633C: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F9634E:   Me.DGRoom.Visible = False
  loc_F96356: End If
  loc_F96372: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F96384:   Me.DGCompany.Visible = False
  loc_F9638C: End If
  loc_F963A8: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F963BA:   Me.FGPoint.Visible = False
  loc_F963C2: End If
  loc_F963C2: Exit Sub
End Sub

Public Sub Proc_76_77_E8E808(arg_C) 'E8E808
  'Data Table: 53E444
  Dim var_10C As TextBox
  loc_E8E79C: Call Proc_76_76_F963C4()
  loc_E8E7D8: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8E7DB:   Call TopCtrl1_UnknownEvent_16()
  loc_E8E7E3: Else
  loc_E8E7ED:   Set var_108 = Me.Txt
  loc_E8E7F3:   Call 0.Method_Proc_76_77_E8E8080 (arg_C)
  loc_E8E7FB:   var_10C.SetFocus
  loc_E8E807: End If
  loc_E8E807: Exit Sub
End Sub

Public Sub Proc_76_78_1159CC8
  'Data Table: 53E444
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
  loc_115995C: var_90 = global_116
  loc_1159973: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_11599A4: Set var_A8 = Me.Txt
  loc_11599AA: Call 0.Method_Proc_76_78_1159CC80 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_11599B9: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_11599C1: var_EC = -1 & var_CC 
  loc_11599D5: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_11599E0: Set var_8C = var_134
  loc_1159A1C: If (var_8C.RecordCount > 0) Then
  loc_1159A5B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1159A5E:     GoTo loc_1159AEB
  loc_1159A61:   End If
  loc_1159A92:   global_96 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_1159ABD:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_1159AD2:   var_CC = (var_AC.Value + 1)
  loc_1159ADA:   global_100 = CInt(var_CC)
  loc_1159AEB:   ' Referenced from: 1159A5E
  loc_1159B16:   var_BC = Space((5 - Len(var_90)))
  loc_1159B1E:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_1159B32:   var_EC = Space((5 - Len(global_96)))
  loc_1159B3A:   var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_1159B47:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_96))
  loc_1159B60:   var_14C = Space((8 - Len(CStr(global_100))))
  loc_1159B68:   var_15C = (var_130 + var_14C)
  loc_1159B77:   var_17C = (var_15C + CVar(CStr(global_100)))
  loc_1159B82:   global_92 = CStr(var_17C)
  loc_1159BB8:   Me.LblVPrefix.Caption = global_96
  loc_1159BD1:   Set var_A8 = Me.Txt
  loc_1159BD7:   Call 0.Method_Proc_76_78_1159CC80 (CInt(0), var_AC)
  loc_1159BDF:   var_AC.Text = global_92
  loc_1159C01:   Set var_A8 = Me.Txt
  loc_1159C07:   Call 0.Method_Proc_76_78_1159CC80 (CInt(1), var_AC)
  loc_1159C0F:   var_AC.Text = CStr(global_100)
  loc_1159C24:   var_88 = global_92
  loc_1159C2A: Else
  loc_1159C30:   global_92 = vbNullString
  loc_1159C43:   global_100 = 0
  loc_1159C56:   Me.LblVPrefix.Caption = vbNullString
  loc_1159C6F:   Set var_A8 = Me.Txt
  loc_1159C75:   Call 0.Method_Proc_76_78_1159CC80 (CInt(0), var_AC, global_92)
  loc_1159C7D:   var_AC.Text = global_100
  loc_1159C97:   Set var_A8 = Me.Txt
  loc_1159C9D:   Call 0.Method_Proc_76_78_1159CC80 (CInt(1), var_AC)
  loc_1159CA5:   var_AC.Text = vbNullString
  loc_1159CB7:   var_88 = global_92
  loc_1159CBA: End If
  loc_1159CBF: Set var_8C = Nothing
  loc_1159CC2: Proc_76_78_1159CC8 = global_100
End Sub

Public Sub Proc_76_79_1215CE0
  'Data Table: 53E444
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_12157FA: var_88 = global_108
  loc_1215806: If Not (var_88 = 5) Then
  loc_1215812:   If (var_88 = 6) Then
  loc_1215815:   End If
  loc_1215821:   Me.FrRest.Visible = True
  loc_1215829: End If
  loc_121583C: Me.FGrid.Cols = &H1B
  loc_1215844: var_A0 = CVar(CLng(9)) 'Long
  loc_1215849: var_C0 = 0
  loc_1215855: LateIdCallSt
  loc_1215860: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1215865: var_C0 = 0
  loc_1215871: LateIdCallSt
  loc_121587C: var_A0 = CVar(CLng(&HB)) 'Long
  loc_1215881: var_C0 = 0
  loc_121588D: LateIdCallSt
  loc_1215898: var_A0 = CVar(CLng(&HC)) 'Long
  loc_121589D: var_C0 = 0
  loc_12158A9: LateIdCallSt
  loc_12158B4: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12158B9: var_C0 = 0
  loc_12158C5: LateIdCallSt
  loc_12158D0: var_A0 = CVar(CLng(&HE)) 'Long
  loc_12158D5: var_C0 = 0
  loc_12158E1: LateIdCallSt
  loc_12158EC: var_A0 = CVar(CLng(&HF)) 'Long
  loc_12158F1: var_C0 = 0
  loc_12158FD: LateIdCallSt
  loc_1215908: var_A0 = CVar(CLng(&H10)) 'Long
  loc_121590D: var_C0 = 0
  loc_1215919: LateIdCallSt
  loc_1215921: var_A0 = &H1A
  loc_121592A: var_C0 = 0
  loc_1215936: LateIdCallSt
  loc_121593E: var_A0 = 1
  loc_1215947: var_C0 = 0
  loc_1215953: LateIdCallSt
  loc_121595B: var_A0 = 4
  loc_1215964: var_C0 = 0
  loc_1215970: LateIdCallSt
  loc_1215978: var_A0 = 5
  loc_1215981: var_C0 = 0
  loc_121598D: LateIdCallSt
  loc_1215998: var_A0 = CVar(CLng(6)) 'Long
  loc_121599D: var_C0 = 0
  loc_12159A9: LateIdCallSt
  loc_12159B4: var_A0 = CVar(CLng(7)) 'Long
  loc_12159B9: var_C0 = 0
  loc_12159C5: LateIdCallSt
  loc_12159CD: var_A0 = 2
  loc_12159D6: var_C0 = 0
  loc_12159E2: LateIdCallSt
  loc_12159EA: var_A0 = 0
  loc_12159F3: var_C0 = &HFA
  loc_12159FF: LateIdCallSt
  loc_1215A07: var_A0 = 0
  loc_1215A10: var_C0 = 0
  loc_1215A19: var_E0 = "SNo"
  loc_1215A22: LateIdCallSt
  loc_1215A2A: var_A0 = 0
  loc_1215A33: var_C0 = &H1C2
  loc_1215A3F: LateIdCallSt
  loc_1215A47: var_A0 = 0
  loc_1215A50: var_C0 = 3
  loc_1215A59: var_E0 = "Payment Type"
  loc_1215A62: LateIdCallSt
  loc_1215A6A: var_A0 = 3
  loc_1215A79: var_C0 = CVar(CInt(1)) 'Integer
  loc_1215A80: LateIdCallSt
  loc_1215A88: var_A0 = 3
  loc_1215A91: var_C0 = &HDAC
  loc_1215A9D: LateIdCallSt
  loc_1215AA5: var_A0 = 0
  loc_1215AAE: var_C0 = 8
  loc_1215AB7: var_E0 = "Amount"
  loc_1215AC0: LateIdCallSt
  loc_1215AC8: var_A0 = 8
  loc_1215AD7: var_C0 = CVar(CInt(7)) 'Integer
  loc_1215ADE: LateIdCallSt
  loc_1215AE6: var_A0 = 8
  loc_1215AF5: var_C0 = CVar(CInt(7)) 'Integer
  loc_1215AFC: LateIdCallSt
  loc_1215B04: var_A0 = 8
  loc_1215B0D: var_C0 = &H4EC
  loc_1215B19: LateIdCallSt
  loc_1215B21: var_A0 = 0
  loc_1215B2A: var_C0 = &H1A
  loc_1215B33: var_E0 = "Tip"
  loc_1215B3C: LateIdCallSt
  loc_1215B44: var_A0 = &H1A
  loc_1215B53: var_C0 = CVar(CInt(7)) 'Integer
  loc_1215B5A: LateIdCallSt
  loc_1215B62: var_A0 = &H1A
  loc_1215B71: var_C0 = CVar(CInt(7)) 'Integer
  loc_1215B78: LateIdCallSt
  loc_1215B80: var_A0 = &H1A
  loc_1215B89: var_C0 = &H4EC
  loc_1215B95: LateIdCallSt
  loc_1215B9D: var_A0 = &H12
  loc_1215BA6: var_C0 = 0
  loc_1215BB2: LateIdCallSt
  loc_1215BBA: var_A0 = &H13
  loc_1215BC3: var_C0 = 0
  loc_1215BCF: LateIdCallSt
  loc_1215BD7: var_A0 = &H14
  loc_1215BE0: var_C0 = 0
  loc_1215BEC: LateIdCallSt
  loc_1215BF4: var_A0 = &H15
  loc_1215BFD: var_C0 = 0
  loc_1215C09: LateIdCallSt
  loc_1215C11: var_A0 = &H18
  loc_1215C1A: var_C0 = 0
  loc_1215C26: LateIdCallSt
  loc_1215C2E: var_A0 = &H19
  loc_1215C37: var_C0 = 0
  loc_1215C43: LateIdCallSt
  loc_1215C4B: var_A0 = &H16
  loc_1215C54: var_C0 = 0
  loc_1215C60: LateIdCallSt
  loc_1215C68: var_A0 = &H17
  loc_1215C71: var_C0 = 0
  loc_1215C7D: LateIdCallSt
  loc_1215C88: var_A0 = CVar(CLng(&H11)) 'Long
  loc_1215C8D: var_C0 = 0
  loc_1215C99: LateIdCallSt
  loc_1215CCB: LateIdCallSt
  loc_1215CD9: Call Proc_76_80_117BE84(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_1215CDE: Exit Sub
End Sub

Public Sub Proc_76_80_117BE84
  'Data Table: 53E444
  Dim var_94 As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  loc_117BAAA: Set global_68 = New 
  loc_117BABC: Me.Recordset15.CursorLocation = 3
  loc_117BACC: var_94 = OpenType
  loc_117BAD8: If (var_94 = 6) Then
  loc_117BAFE:   Me.Open "Select T.Code,T.Name As Name From RoomMast T where T.Type in('HL') Order by T.Code", CVar(MemVar_1F92044), 3
  loc_117BB0F:   Set var_8C = Me.LblName
  loc_117BB15:   Call 0.Method_Proc_76_80_117BE840 (&HC, var_B8, "Hall")
  loc_117BB1D:   var_B8.Caption = 1
  loc_117BB39:   Set var_8C = Me.DGTable
  loc_117BB4A:   Set var_B8 = DGTable.DispID_69
  loc_117BB58:   var_B8.Item(1).Caption = "Hall"
  loc_117BB6F:   global_152 = "HALL"
  loc_117BB79:   global_156 = "HS"
  loc_117BB80: Else
  loc_117BB89:   If (var_94 = 5) Then
  loc_117BB94:     If (MemVar_1F921A8 = "Hall") Then
  loc_117BBA3:       Set var_8C = Me.LblName
  loc_117BBA9:       Call 0.Method_Proc_76_80_117BE840 (&HC, var_B8, "Hall #")
  loc_117BBB1:       var_B8.Caption = -1
  loc_117BBCD:       Set var_8C = Me.DGTable
  loc_117BBDE:       Set var_B8 = DGTable.DispID_69
  loc_117BBEC:       var_B8.Item(1).Caption = "Hall #"
  loc_117BC20:       Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('HL') Order By T.Code", CVar(MemVar_1F92044), 3
  loc_117BC2B:       global_152 = "HALL"
  loc_117BC35:       global_156 = "HL"
  loc_117BC3C:     Else
  loc_117BC44:       If (MemVar_1F921A8 = "Fast Food") Then
  loc_117BC52:         Set var_8C = Me.LblName
  loc_117BC58:         Call 0.Method_Proc_76_80_117BE840 (&HC, var_B8, 0)
  loc_117BC60:         var_B8.Visible = True
  loc_117BC79:         Set var_8C = Me.Txt
  loc_117BC7F:         Call 0.Method_Proc_76_80_117BE840 (CInt(4), var_B8, 0)
  loc_117BC87:         var_B8.Visible = True
  loc_117BCA3:         Set var_8C = Me.DGTable
  loc_117BCB4:         Set var_B8 = DGTable.DispID_69
  loc_117BCC2:         var_B8.Item(1).Caption = "Hall #"
  loc_117BCF6:         Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('HL') Order By T.Code", CVar(MemVar_1F92044), 3
  loc_117BD01:         global_152 = "HALL"
  loc_117BD0B:         global_156 = "HL"
  loc_117BD12:       Else
  loc_117BD1A:         If (MemVar_1F921A8 = "Room Service") Then
  loc_117BD29:           Set var_8C = Me.LblName
  loc_117BD2F:           Call 0.Method_Proc_76_80_117BE840 (&HC, var_B8, "Room #")
  loc_117BD37:           var_B8.Caption = 1
  loc_117BD53:           Set var_8C = Me.DGTable
  loc_117BD64:           Set var_B8 = DGTable.DispID_69
  loc_117BD72:           var_B8.Item(1).Caption = "Room #"
  loc_117BDA6:           Me.Open "Select T.Code,T.Code As Name,RoomCat From RoomMast T where T.Type in('RO') Order by T.Code", CVar(MemVar_1F92044), 3
  loc_117BDB1:           global_156 = "RO"
  loc_117BDB8:         Else
  loc_117BDC4:           Set var_8C = Me.LblName
  loc_117BDCA:           Call 0.Method_Proc_76_80_117BE840 (&HC, var_B8, "Table #", 1)
  loc_117BDD2:           var_B8.Caption = -1
  loc_117BDEE:           Set var_8C = Me.DGTable
  loc_117BE0D:           DGTable.DispID_69.Item(1).Caption = "Table #"
  loc_117BE41:           Me.Open "Select T.Code,T.Code As Name From RoomMast T where T.Type in ('TB') Order By T.Code", CVar(MemVar_1F92044), 3
  loc_117BE4C:           global_152 = "REST"
  loc_117BE56:           global_156 = "TB"
  loc_117BE5A:         End If
  loc_117BE5A:       End If
  loc_117BE5A:     End If
  loc_117BE5A:   End If
  loc_117BE5A: End If
  loc_117BE63: CVarUnk
  loc_117BE68: VerifyVarObj
  loc_117BE6E: Set var_8C = Me.DGTable
  loc_117BE74: LateIdStAd
  loc_117BE82: Exit Sub
End Sub

Public Sub Proc_76_81_120F604(arg_C) '120F604
  'Data Table: 53E444
  Dim var_8C As Long
  loc_120F130: Me.FrChqDet.Visible = False
  loc_120F144: Me.FrTxnNo.Visible = False
  loc_120F158: Me.FrRem.Visible = False
  loc_120F16C: Me.FrCCDet.Visible = False
  loc_120F180: Me.FrEmp.Visible = False
  loc_120F194: Me.FrComp.Visible = False
  loc_120F1A8: Me.FrMem.Visible = False
  loc_120F1BC: Me.FrSendRoom.Visible = False
  loc_120F1D0: Me.FrCashCard.Visible = False
  loc_120F1DE: var_8C = global_108
  loc_120F1EA: If Not (var_8C = 5) Then
  loc_120F1F6:   If (var_8C = 6) Then
  loc_120F1F9:   End If
  loc_120F1FC:   var_90 = arg_C
  loc_120F207:   If (var_90 = "Cheque") Then
  loc_120F216:     Me.FrChqDet.Visible = True
  loc_120F22A:     Me.FrRem.Visible = True
  loc_120F26C:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_120F27D:   Else
  loc_120F285:     If (var_90 = "Credit Card") Then
  loc_120F294:       Me.FrCCDet.Visible = True
  loc_120F2A8:       Me.FrRem.Visible = False
  loc_120F2B3:     Else
  loc_120F2BB:       If (var_90 = "Staff") Then
  loc_120F2CA:         Me.FrEmp.Visible = True
  loc_120F2DE:         Me.FrRem.Visible = True
  loc_120F320:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_120F331:       Else
  loc_120F339:         If (var_90 = "Company") Then
  loc_120F348:           Me.FrComp.Visible = True
  loc_120F35C:           Me.FrRem.Visible = True
  loc_120F39E:           Me.FrRem.Top = ((Me.FrComp.Top + Me.FrComp.Height) + CDbl(&HF))
  loc_120F3AF:         Else
  loc_120F3B7:           If (var_90 = "Member") Then
  loc_120F3C6:             Me.FrMem.Visible = True
  loc_120F3DA:             Me.FrRem.Visible = True
  loc_120F41C:             Me.FrRem.Top = ((Me.FrMem.Top + Me.FrMem.Height) + CDbl(&HF))
  loc_120F42D:           Else
  loc_120F435:             If (var_90 = "Room") Then
  loc_120F444:               Me.FrSendRoom.Visible = True
  loc_120F458:               Me.FrRem.Visible = False
  loc_120F463:             Else
  loc_120F46B:               If (var_90 = "Cash Card") Then
  loc_120F47A:                 Me.FrCashCard.Visible = True
  loc_120F48E:                 Me.FrRem.Visible = True
  loc_120F4D0:                 Me.FrRem.Top = ((Me.FrCashCard.Top + Me.FrCashCard.Height) + CDbl(&HF))
  loc_120F4E1:               Else
  loc_120F4E9:                 If (var_90 = "UPI") Then
  loc_120F4F8:                   Me.FrTxnNo.Visible = True
  loc_120F50C:                   Me.FrRem.Visible = True
  loc_120F54E:                   Me.FrTxnNo.Top = ((Me.FrRest.Top + Me.FrRest.Height) + CDbl(&HF))
  loc_120F596:                   Me.FrRem.Top = ((Me.FrTxnNo.Top + Me.FrTxnNo.Height) + CDbl(&HF))
  loc_120F5A7:                 Else
  loc_120F5B3:                   Me.FrRem.Visible = True
  loc_120F5F5:                   Me.FrRem.Top = ((Me.FrRest.Top + Me.FrRest.Height) + CDbl(&HF))
  loc_120F603:                 End If
  loc_120F603:               End If
  loc_120F603:             End If
  loc_120F603:           End If
  loc_120F603:         End If
  loc_120F603:       End If
  loc_120F603:     End If
  loc_120F603:   End If
  loc_120F603: End If
  loc_120F603: Exit Sub
End Sub

Public Sub Proc_76_82_15D9F30
  'Data Table: 53E444
  Dim var_90 As Variant
  Dim var_EC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_124 As Long
  Dim var_138 As String
  Dim var_11C As Long
  Dim Me As Variant
  loc_15D8BC6: Set var_8C = Me.LTxt
  loc_15D8BCC: Call 0.Method_Proc_76_82_15D9F300 (CInt(2), var_90)
  loc_15D8BFC: If ((CDbl(Val(var_90.Caption)) <= CDbl(0)) And (global_160 = "Cash Card")) Then
  loc_15D8BFF:   Exit Sub
  loc_15D8C00: End If
  loc_15D8C0E: Set var_8C = Me.Txt
  loc_15D8C14: Call 0.Method_Proc_76_82_15D9F300 (CInt(5), var_90)
  loc_15D8C38: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_15D8C49:   Set var_8C = Me.Txt
  loc_15D8C4F:   Call 0.Method_Proc_76_82_15D9F300 (CInt(5), var_90)
  loc_15D8C57:   var_90.Text = vbNullString
  loc_15D8C63: End If
  loc_15D8C71: Set var_8C = Me.Txt
  loc_15D8C77: Call 0.Method_Proc_76_82_15D9F300 (CInt(3), var_90)
  loc_15D8C91: If (var_90.Visible = &HFF) Then
  loc_15D8C9F:   Set var_8C = Me.Txt
  loc_15D8CA5:   Call 0.Method_Proc_76_82_15D9F300 (CInt(3))
  loc_15D8CCE:   If (Proc_6_27_EA565C(var_90, "Payment Type") = 0) Then
  loc_15D8CD1:     Exit Sub
  loc_15D8CD2:   End If
  loc_15D8CD2: End If
  loc_15D8CE0: Set var_8C = Me.Txt
  loc_15D8CE6: Call 0.Method_Proc_76_82_15D9F300 (CInt(5), var_90)
  loc_15D8D00: If (var_90.Visible = &HFF) Then
  loc_15D8D0E:   Set var_8C = Me.Txt
  loc_15D8D14:   Call 0.Method_Proc_76_82_15D9F300 (CInt(5), var_90)
  loc_15D8D1C:   var_94 = "Amount"
  loc_15D8D3D:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15D8D40:     Exit Sub
  loc_15D8D41:   End If
  loc_15D8D41: End If
  loc_15D8D5A: Set var_8C = Me.Txt
  loc_15D8D60: Call 0.Method_Proc_76_82_15D9F300 (CInt(&HD), var_90, var_94)
  loc_15D8D68: (global_160 = "Staff") = var_90.Text
  loc_15D8D80: If (var_90 And (var_94 = vbNullString)) Then
  loc_15D8D8E:   Set var_8C = Me.Txt
  loc_15D8D94:   Call 0.Method_Proc_76_82_15D9F300 (CInt(&HD))
  loc_15D8D9C:   var_94 = "Staff Name"
  loc_15D8DBD:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15D8DC0:     Exit Sub
  loc_15D8DC1:   End If
  loc_15D8DC1: End If
  loc_15D8DDA: Set var_8C = Me.Txt
  loc_15D8DE0: Call 0.Method_Proc_76_82_15D9F300 (CInt(&HE), var_90, var_94)
  loc_15D8DE8: (global_160 = "Room") = var_90.Text
  loc_15D8E00: If (var_90 And (var_94 = vbNullString)) Then
  loc_15D8E0E:   Set var_8C = Me.Txt
  loc_15D8E14:   Call 0.Method_Proc_76_82_15D9F300 (CInt(&HE))
  loc_15D8E1C:   var_94 = "Room Name"
  loc_15D8E3D:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15D8E40:     Exit Sub
  loc_15D8E41:   End If
  loc_15D8E41: End If
  loc_15D8E5A: Set var_8C = Me.Txt
  loc_15D8E60: Call 0.Method_Proc_76_82_15D9F300 (CInt(&HF), var_90, var_94)
  loc_15D8E68: (global_160 = "Company") = var_90.Text
  loc_15D8E80: If (var_90 And (var_94 = vbNullString)) Then
  loc_15D8E8E:   Set var_8C = Me.Txt
  loc_15D8E94:   Call 0.Method_Proc_76_82_15D9F300 (CInt(&HF))
  loc_15D8E9C:   var_94 = "Company Name"
  loc_15D8EBD:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15D8EC0:     Exit Sub
  loc_15D8EC1:   End If
  loc_15D8EC1: End If
  loc_15D8EDA: Set var_8C = Me.Txt
  loc_15D8EE0: Call 0.Method_Proc_76_82_15D9F300 (CInt(&H10), var_90, var_94)
  loc_15D8EE8: (global_160 = "Member") = var_90.Text
  loc_15D8F00: If (var_90 And (var_94 = vbNullString)) Then
  loc_15D8F0E:   Set var_8C = Me.Txt
  loc_15D8F14:   Call 0.Method_Proc_76_82_15D9F300 (CInt(&H10))
  loc_15D8F1C:   var_94 = "Member Name"
  loc_15D8F3D:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15D8F40:     Exit Sub
  loc_15D8F41:   End If
  loc_15D8F41: End If
  loc_15D8F4C: If (global_196 = "Y") Then
  loc_15D8F68:   Set var_8C = Me.Txt
  loc_15D8F6E:   Call 0.Method_Proc_76_82_15D9F300 (CInt(6), var_90, var_94)
  loc_15D8F76:   (global_160 = "Credit Card") = var_90.Text
  loc_15D8F8E:   If (var_90 And (var_94 = vbNullString)) Then
  loc_15D8F9C:     Set var_8C = Me.Txt
  loc_15D8FA2:     Call 0.Method_Proc_76_82_15D9F300 (CInt(6))
  loc_15D8FAA:     var_94 = "Credit Card No."
  loc_15D8FCB:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15D8FCE:       Exit Sub
  loc_15D8FCF:     End If
  loc_15D8FCF:   End If
  loc_15D8FE8:   Set var_8C = Me.Txt
  loc_15D8FEE:   Call 0.Method_Proc_76_82_15D9F300 (CInt(7), var_90, var_94)
  loc_15D8FF6:   (global_160 = "Credit Card") = var_90.Text
  loc_15D900E:   If (var_90 And (var_94 = vbNullString)) Then
  loc_15D901C:     Set var_8C = Me.Txt
  loc_15D9022:     Call 0.Method_Proc_76_82_15D9F300 (CInt(7))
  loc_15D904B:     If (Proc_6_27_EA565C(var_90, "Holder's Name") = 0) Then
  loc_15D904E:       Exit Sub
  loc_15D904F:     End If
  loc_15D904F:   End If
  loc_15D9069:   Set var_8C = Me.Txt
  loc_15D906F:   Call 0.Method_Proc_76_82_15D9F300 (CInt(9), var_90)
  loc_15D90A2:   If CBool((global_160 = "Credit Card") And (Trim(CVar(var_90)) = vbNullString)) Then
  loc_15D90B0:     Set var_8C = Me.Txt
  loc_15D90B6:     Call 0.Method_Proc_76_82_15D9F300 (CInt(9), var_90)
  loc_15D90BE:     var_94 = "Batch No"
  loc_15D90DF:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15D90E2:       Exit Sub
  loc_15D90E3:     End If
  loc_15D90E3:   End If
  loc_15D90E3: End If
  loc_15D90FC: Set var_8C = Me.Txt
  loc_15D9102: Call 0.Method_Proc_76_82_15D9F300 (CInt(&HA), var_90, var_94)
  loc_15D910A: (global_160 = "Cheque") = var_90.Text
  loc_15D9122: If (var_90 And (var_94 = vbNullString)) Then
  loc_15D9130:   Set var_8C = Me.Txt
  loc_15D9136:   Call 0.Method_Proc_76_82_15D9F300 (CInt(&HA))
  loc_15D913E:   var_94 = "Cheque No."
  loc_15D915F:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15D9162:     Exit Sub
  loc_15D9163:   End If
  loc_15D9163: End If
  loc_15D917C: Set var_8C = Me.Txt
  loc_15D9182: Call 0.Method_Proc_76_82_15D9F300 (CInt(&HB), var_90, var_94)
  loc_15D918A: (global_160 = "Cheque") = var_90.Text
  loc_15D91A2: If (var_90 And (var_94 = vbNullString)) Then
  loc_15D91B0:   Set var_8C = Me.Txt
  loc_15D91B6:   Call 0.Method_Proc_76_82_15D9F300 (CInt(&HB))
  loc_15D91BE:   var_94 = "Cheque Dt."
  loc_15D91DF:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_15D91E2:     Exit Sub
  loc_15D91E3:   End If
  loc_15D91E3: End If
  loc_15D91FC: Set var_8C = Me.Txt
  loc_15D9202: Call 0.Method_Proc_76_82_15D9F300 (CInt(&H13), var_90, var_94)
  loc_15D920A: (global_160 = "UPI") = var_90.Text
  loc_15D9222: If (var_90 And (var_94 = vbNullString)) Then
  loc_15D9230:   Set var_8C = Me.Txt
  loc_15D9236:   Call 0.Method_Proc_76_82_15D9F300 (CInt(&H13))
  loc_15D925F:   If (Proc_6_27_EA565C(var_90, "Txn. No.") = 0) Then
  loc_15D9262:     Exit Sub
  loc_15D9263:   End If
  loc_15D9263: End If
  loc_15D926C: If (global_172 = 0) Then
  loc_15D9288:   var_CC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15D92AB:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_15D92C4:   If (var_94 <> vbNullString) Then
  loc_15D92E3:     var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, 3))) 'String
  loc_15D92EB:     Set var_90 = Me.FGrid
  loc_15D9305:   End If
  loc_15D931F:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15D932B: Else
  loc_15D933F:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_15D9348: End If
  loc_15D9353: var_124 = OpenType
  loc_15D935F: If Not (var_124 = 5) Then
  loc_15D936B:   If (var_124 = 6) Then
  loc_15D936E:   End If
  loc_15D9372:   Set var_128 = Me.FGrid
  loc_15D9395:   Set var_8C = Me.Txt
  loc_15D939B:   Call 0.Method_Proc_76_82_15D9F300 (CInt(3), var_90, var_94, 1, CVar(CLng(var_86)), var_124)
  loc_15D93A3:   var_86 = var_90.Tag
  loc_15D93AB:   var_AC = CVar(var_94) 'String
  loc_15D93B2:   LateIdCallSt
  loc_15D93C8:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15D93CD:   var_10C = 2
  loc_15D93E3:   LateIdCallSt
  loc_15D940B:   Set var_8C = Me.Txt
  loc_15D9411:   Call 0.Method_Proc_76_82_15D9F300 (CInt(3), var_90, var_94, 3, CVar(CLng(var_86)), var_128, global_160)
  loc_15D9419:   var_10C = var_90.Text
  loc_15D9421:   var_AC = CVar(var_94) 'String
  loc_15D9428:   LateIdCallSt
  loc_15D943E:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9443:   var_10C = 4
  loc_15D9459:   LateIdCallSt
  loc_15D9465:   var_CC = CVar(CLng(var_86)) 'Long
  loc_15D946A:   var_10C = 5
  loc_15D9480:   LateIdCallSt
  loc_15D94A7:   Set var_8C = Me.Txt
  loc_15D94AD:   Call 0.Method_Proc_76_82_15D9F300 (CInt(4), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_128, global_156)
  loc_15D94B5:   var_10C = var_90.Tag
  loc_15D94C4:   LateIdCallSt
  loc_15D94F5:   Set var_8C = Me.Txt
  loc_15D94FB:   Call 0.Method_Proc_76_82_15D9F300 (CInt(4), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15D9503:   var_CC = var_90.Text
  loc_15D950B:   var_AC = CVar(var_94) 'String
  loc_15D9512:   LateIdCallSt
  loc_15D9544:   Set var_8C = Me.Txt
  loc_15D954A:   Call 0.Method_Proc_76_82_15D9F300 (CInt(5), var_90, var_94, 8, CVar(CLng(var_86)), var_128)
  loc_15D9552:   var_AC = var_90.Text
  loc_15D955A:   var_AC = CVar(var_94) 'String
  loc_15D9561:   LateIdCallSt
  loc_15D9593:   Set var_8C = Me.Txt
  loc_15D9599:   Call 0.Method_Proc_76_82_15D9F300 (CInt(&H14), var_90, var_94, &H1A, CVar(CLng(var_86)), var_128)
  loc_15D95A1:   var_AC = var_90.Text
  loc_15D95A9:   var_AC = CVar(var_94) 'String
  loc_15D95B0:   LateIdCallSt
  loc_15D95E1:   Set var_8C = Me.Txt
  loc_15D95E7:   Call 0.Method_Proc_76_82_15D9F300 (CInt(&HC), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_15D95EF:   var_AC = var_90.Text
  loc_15D95F7:   var_AC = CVar(var_94) 'String
  loc_15D95FE:   LateIdCallSt
  loc_15D961B:   If (global_160 = "Cash Card") Then
  loc_15D963D:     Set var_8C = Me.Txt
  loc_15D9643:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&H11), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128)
  loc_15D964B:     var_AC = var_90.Text
  loc_15D9653:     var_AC = CVar(var_94) 'String
  loc_15D965A:     LateIdCallSt
  loc_15D968B:     Set var_8C = Me.Txt
  loc_15D9691:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&H12), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128)
  loc_15D9699:     var_AC = var_90.Text
  loc_15D96A1:     var_AC = CVar(var_94) 'String
  loc_15D96A8:     LateIdCallSt
  loc_15D96BE:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D96C6:     var_10C = CVar(CLng(&HB)) 'Long
  loc_15D96CB:     var_138 = vbNullString
  loc_15D96D4:     LateIdCallSt
  loc_15D96E0:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D96E5:     var_10C = &H17
  loc_15D96EE:     var_138 = vbNullString
  loc_15D96F7:     LateIdCallSt
  loc_15D9702:   Else
  loc_15D970D:     If (global_160 = "Credit Card") Then
  loc_15D972F:       Set var_8C = Me.Txt
  loc_15D9735:       Call 0.Method_Proc_76_82_15D9F300 (CInt(6), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128, var_138)
  loc_15D973D:       var_10C = var_90.Text
  loc_15D974C:       LateIdCallSt
  loc_15D977D:       Set var_8C = Me.Txt
  loc_15D9783:       Call 0.Method_Proc_76_82_15D9F300 (CInt(7), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15D978B:       var_CC = var_90.Text
  loc_15D9793:       var_AC = CVar(var_94) 'String
  loc_15D979A:       LateIdCallSt
  loc_15D97CB:       Set var_8C = Me.Txt
  loc_15D97D1:       Call 0.Method_Proc_76_82_15D9F300 (CInt(8), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_15D97D9:       var_AC = var_90.Text
  loc_15D97E1:       var_AC = CVar(var_94) 'String
  loc_15D97E8:       LateIdCallSt
  loc_15D981A:       Set var_8C = Me.Txt
  loc_15D9820:       Call 0.Method_Proc_76_82_15D9F300 (CInt(9), var_90, var_94, &H17, CVar(CLng(var_86)), var_128)
  loc_15D9828:       var_AC = var_90.Text
  loc_15D9830:       var_AC = CVar(var_94) 'String
  loc_15D9837:       LateIdCallSt
  loc_15D984C:     Else
  loc_15D9850:       var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9858:       var_10C = CVar(CLng(9)) 'Long
  loc_15D985D:       var_138 = vbNullString
  loc_15D9866:       LateIdCallSt
  loc_15D9872:       var_CC = CVar(CLng(var_86)) 'Long
  loc_15D987A:       var_10C = CVar(CLng(&HA)) 'Long
  loc_15D987F:       var_138 = vbNullString
  loc_15D9888:       LateIdCallSt
  loc_15D9894:       var_CC = CVar(CLng(var_86)) 'Long
  loc_15D989C:       var_10C = CVar(CLng(&HB)) 'Long
  loc_15D98A1:       var_138 = vbNullString
  loc_15D98AA:       LateIdCallSt
  loc_15D98B6:       var_CC = CVar(CLng(var_86)) 'Long
  loc_15D98BB:       var_10C = &H17
  loc_15D98C4:       var_138 = vbNullString
  loc_15D98CD:       LateIdCallSt
  loc_15D98D5:     End If
  loc_15D98D5:   End If
  loc_15D98E0:   If (global_160 = "Cheque") Then
  loc_15D9902:     Set var_8C = Me.Txt
  loc_15D9908:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&HA), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128, var_138)
  loc_15D9910:     var_10C = var_90.Text
  loc_15D991F:     LateIdCallSt
  loc_15D9950:     Set var_8C = Me.Txt
  loc_15D9956:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&HB), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15D995E:     var_CC = var_90.Text
  loc_15D9966:     var_AC = CVar(var_94) 'String
  loc_15D996D:     LateIdCallSt
  loc_15D9982:   Else
  loc_15D9986:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D998E:     var_10C = CVar(CLng(&HC)) 'Long
  loc_15D9993:     var_138 = vbNullString
  loc_15D999C:     LateIdCallSt
  loc_15D99A8:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D99B0:     var_10C = CVar(CLng(&HD)) 'Long
  loc_15D99B5:     var_138 = vbNullString
  loc_15D99BE:     LateIdCallSt
  loc_15D99C6:   End If
  loc_15D99D1:   If (global_160 = "UPI") Then
  loc_15D99F3:     Set var_8C = Me.Txt
  loc_15D99F9:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&H13), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_128, var_138)
  loc_15D9A01:     var_10C = var_90.Text
  loc_15D9A09:     var_AC = CVar(var_94) 'String
  loc_15D9A10:     LateIdCallSt
  loc_15D9A25:   Else
  loc_15D9A29:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9A31:     var_10C = CVar(CLng(&H11)) 'Long
  loc_15D9A36:     var_138 = vbNullString
  loc_15D9A3F:     LateIdCallSt
  loc_15D9A47:   End If
  loc_15D9A52:   If (global_160 = "Staff") Then
  loc_15D9A74:     Set var_8C = Me.Txt
  loc_15D9A7A:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&HD), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128, var_138)
  loc_15D9A82:     var_10C = var_90.Text
  loc_15D9A91:     LateIdCallSt
  loc_15D9AC2:     Set var_8C = Me.Txt
  loc_15D9AC8:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&HD), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15D9AD0:     var_CC = var_90.Tag
  loc_15D9AD8:     var_AC = CVar(var_94) 'String
  loc_15D9ADF:     LateIdCallSt
  loc_15D9AF4:   Else
  loc_15D9AF8:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9B00:     var_10C = CVar(CLng(&HF)) 'Long
  loc_15D9B05:     var_138 = vbNullString
  loc_15D9B0E:     LateIdCallSt
  loc_15D9B1A:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9B22:     var_10C = CVar(CLng(&H10)) 'Long
  loc_15D9B27:     var_138 = vbNullString
  loc_15D9B30:     LateIdCallSt
  loc_15D9B38:   End If
  loc_15D9B43:   If (global_160 = "Company") Then
  loc_15D9B66:     Set var_8C = Me.Txt
  loc_15D9B6C:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&HF), var_90, var_94, &H14, CVar(CLng(var_86)), var_128, var_138)
  loc_15D9B74:     var_10C = var_90.Tag
  loc_15D9B83:     LateIdCallSt
  loc_15D9BB5:     Set var_8C = Me.Txt
  loc_15D9BBB:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&HF), var_90, var_94, &H15, CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15D9BC3:     var_CC = var_90.Text
  loc_15D9BCB:     var_AC = CVar(var_94) 'String
  loc_15D9BD2:     LateIdCallSt
  loc_15D9BE7:   Else
  loc_15D9BEB:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9BF0:     var_10C = &H14
  loc_15D9BF9:     var_138 = vbNullString
  loc_15D9C02:     LateIdCallSt
  loc_15D9C0E:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9C13:     var_10C = &H15
  loc_15D9C1C:     var_138 = vbNullString
  loc_15D9C25:     LateIdCallSt
  loc_15D9C2D:   End If
  loc_15D9C38:   If (global_160 = "Member") Then
  loc_15D9C5B:     Set var_8C = Me.Txt
  loc_15D9C61:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&H10), var_90, var_94, &H18, CVar(CLng(var_86)), var_128, var_138)
  loc_15D9C69:     var_10C = var_90.Tag
  loc_15D9C78:     LateIdCallSt
  loc_15D9CAA:     Set var_8C = Me.Txt
  loc_15D9CB0:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&H10), var_90, var_94, &H19, CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15D9CB8:     var_CC = var_90.Text
  loc_15D9CC0:     var_AC = CVar(var_94) 'String
  loc_15D9CC7:     LateIdCallSt
  loc_15D9CDC:   Else
  loc_15D9CE0:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9CE5:     var_10C = &H18
  loc_15D9CEE:     var_138 = vbNullString
  loc_15D9CF7:     LateIdCallSt
  loc_15D9D03:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9D08:     var_10C = &H19
  loc_15D9D11:     var_138 = vbNullString
  loc_15D9D1A:     LateIdCallSt
  loc_15D9D22:   End If
  loc_15D9D2D:   If (global_160 = "Room") Then
  loc_15D9D34:     var_EC = CVar(CLng(var_86)) 'Long
  loc_15D9D39:     var_11C = &H16
  loc_15D9D5F:     var_90 = Me.Fields.Item("FolioNoDocid")
  loc_15D9D77:     LateIdCallSt
  loc_15D9DAD:     Set var_8C = Me.Txt
  loc_15D9DB3:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&HE), var_90, var_94, &H12, CVar(CLng(var_86)), var_128, CVar(CStr(var_90.Value)))
  loc_15D9DBB:     var_11C = var_90.Tag
  loc_15D9DCA:     LateIdCallSt
  loc_15D9DFC:     Set var_8C = Me.Txt
  loc_15D9E02:     Call 0.Method_Proc_76_82_15D9F300 (CInt(&HE), var_90, var_94, &H13, CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15D9E0A:     var_EC = var_90.Text
  loc_15D9E12:     var_AC = CVar(var_94) 'String
  loc_15D9E19:     LateIdCallSt
  loc_15D9E2E:   Else
  loc_15D9E32:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9E37:     var_10C = &H16
  loc_15D9E40:     var_138 = vbNullString
  loc_15D9E49:     LateIdCallSt
  loc_15D9E55:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9E5A:     var_10C = &H12
  loc_15D9E63:     var_138 = vbNullString
  loc_15D9E6C:     LateIdCallSt
  loc_15D9E78:     var_CC = CVar(CLng(var_86)) 'Long
  loc_15D9E7D:     var_10C = &H13
  loc_15D9E86:     var_138 = vbNullString
  loc_15D9E8F:     LateIdCallSt
  loc_15D9E97:   End If
  loc_15D9E99:   Set var_128 = Nothing 
  loc_15D9E9D: End If
  loc_15D9E9D: Call Proc_76_84_10A9758(var_128, var_138, var_10C, var_CC, var_128, var_138, var_10C, var_CC)
  loc_15D9EB0: Set var_8C = Me.LTxt
  loc_15D9EB6: Call 0.Method_Proc_76_82_15D9F300 (CInt(2), var_90, var_94, var_128, var_138)
  loc_15D9EBE: var_10C = var_90.Caption
  loc_15D9EF4: If (((CDbl(Val(var_94)) = CDbl(0)) And (global_108 = 5)) Or (global_108 = 6)) Then
  loc_15D9EF7:   Call TopCtrl1_UnknownEvent_16()
  loc_15D9EFC:   Exit Sub
  loc_15D9EFD: End If
  loc_15D9EFD: Call Proc_76_83_1057D80(var_CC, var_128)
  loc_15D9F0D: Set var_8C = Me.Txt
  loc_15D9F13: Call 0.Method_Proc_76_82_15D9F300 (CInt(3), var_90)
  loc_15D9F1B: var_90.SetFocus
  loc_15D9F2C: global_172 = 0
  loc_15D9F2F: Exit Sub
End Sub

Public Sub Proc_76_83_1057D80
  'Data Table: 53E444
  Dim var_8C As TextBox
  loc_1057B0A: Set var_88 = Me.Txt
  loc_1057B10: Call 0.Method_Proc_76_83_1057D800 (CInt(3), var_8C)
  loc_1057B18: var_8C.Text = vbNullString
  loc_1057B32: Set var_88 = Me.Txt
  loc_1057B38: Call 0.Method_Proc_76_83_1057D800 (CInt(5), var_8C)
  loc_1057B40: var_8C.Text = vbNullString
  loc_1057B5A: Set var_88 = Me.Txt
  loc_1057B60: Call 0.Method_Proc_76_83_1057D800 (CInt(&H14), var_8C)
  loc_1057B68: var_8C.Text = vbNullString
  loc_1057B82: Set var_88 = Me.Txt
  loc_1057B88: Call 0.Method_Proc_76_83_1057D800 (CInt(&HD), var_8C)
  loc_1057B90: var_8C.Text = vbNullString
  loc_1057BAA: Set var_88 = Me.Txt
  loc_1057BB0: Call 0.Method_Proc_76_83_1057D800 (CInt(&HC), var_8C)
  loc_1057BB8: var_8C.Text = vbNullString
  loc_1057BD2: Set var_88 = Me.Txt
  loc_1057BD8: Call 0.Method_Proc_76_83_1057D800 (CInt(6), var_8C)
  loc_1057BE0: var_8C.Text = vbNullString
  loc_1057BFA: Set var_88 = Me.Txt
  loc_1057C00: Call 0.Method_Proc_76_83_1057D800 (CInt(7), var_8C)
  loc_1057C08: var_8C.Text = vbNullString
  loc_1057C22: Set var_88 = Me.Txt
  loc_1057C28: Call 0.Method_Proc_76_83_1057D800 (CInt(8), var_8C)
  loc_1057C30: var_8C.Text = vbNullString
  loc_1057C4A: Set var_88 = Me.Txt
  loc_1057C50: Call 0.Method_Proc_76_83_1057D800 (CInt(9), var_8C)
  loc_1057C58: var_8C.Text = vbNullString
  loc_1057C72: Set var_88 = Me.Txt
  loc_1057C78: Call 0.Method_Proc_76_83_1057D800 (CInt(&H11), var_8C)
  loc_1057C80: var_8C.Text = vbNullString
  loc_1057C9A: Set var_88 = Me.Txt
  loc_1057CA0: Call 0.Method_Proc_76_83_1057D800 (CInt(&H12), var_8C)
  loc_1057CA8: var_8C.Text = vbNullString
  loc_1057CC2: Set var_88 = Me.Txt
  loc_1057CC8: Call 0.Method_Proc_76_83_1057D800 (CInt(&HA), var_8C)
  loc_1057CD0: var_8C.Text = vbNullString
  loc_1057CEA: Set var_88 = Me.Txt
  loc_1057CF0: Call 0.Method_Proc_76_83_1057D800 (CInt(&HB), var_8C)
  loc_1057CF8: var_8C.Text = vbNullString
  loc_1057D12: Set var_88 = Me.Txt
  loc_1057D18: Call 0.Method_Proc_76_83_1057D800 (CInt(&HF), var_8C)
  loc_1057D20: var_8C.Text = vbNullString
  loc_1057D3A: Set var_88 = Me.Txt
  loc_1057D40: Call 0.Method_Proc_76_83_1057D800 (CInt(&H10), var_8C)
  loc_1057D48: var_8C.Text = vbNullString
  loc_1057D62: Set var_88 = Me.Txt
  loc_1057D68: Call 0.Method_Proc_76_83_1057D800 (CInt(&H13), var_8C)
  loc_1057D70: var_8C.Text = vbNullString
  loc_1057D7C: Exit Sub
End Sub

Public Sub Proc_76_84_10A9758
  'Data Table: 53E444
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
  loc_10A94B2: Set var_8C = Me.LTxt
  loc_10A94B8: Call 0.Method_Proc_76_84_10A97580 (CInt(1), var_90)
  loc_10A94C0: var_90.Caption = vbNullString
  loc_10A94F1: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_10A9505:   Set var_8C = Me.LTxt
  loc_10A950B:   Call 0.Method_Proc_76_84_10A97580 (CInt(1), var_90)
  loc_10A9527:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_10A952C:   var_D8 = 8
  loc_10A9552:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10A9571:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_10A958F:   Set var_144 = Me.LTxt
  loc_10A9595:   Call 0.Method_Proc_76_84_10A97580 (CInt(1), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_10A959D:   var_148.Caption = var_15C
  loc_10A95C6: Next var_A4 'Integer
  loc_10A95D9: Set var_8C = Me.LTxt
  loc_10A95DF: Call 0.Method_Proc_76_84_10A97580 (CInt(0), var_90)
  loc_10A95E7: var_A8 = var_90.Caption
  loc_10A9605: Set var_EC = Me.LTxt
  loc_10A960B: Call 0.Method_Proc_76_84_10A97580 (CInt(1), var_144)
  loc_10A9613: var_F0 = var_144.Caption
  loc_10A963F: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_10A965D: Set var_148 = Me.LTxt
  loc_10A9663: Call 0.Method_Proc_76_84_10A97580 (CInt(2), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A966B: var_160.Caption = 1
  loc_10A969F: Set var_8C = Me.LTxt
  loc_10A96A5: Call 0.Method_Proc_76_84_10A97580 (CInt(1), var_90, var_A8)
  loc_10A96AD: var_15C = var_90.Caption
  loc_10A96BA: var_154 = Val(var_A8)
  loc_10A96CB: Set var_EC = Me.Txt
  loc_10A96D1: Call 0.Method_Proc_76_84_10A97580 (CInt(&H14), var_144, var_F0)
  loc_10A9705: var_A0 = CVar((var_144.Text + Val(var_F0))) 'Double
  loc_10A9723: Set var_148 = Me.LTxt
  loc_10A9729: Call 0.Method_Proc_76_84_10A97580 (CInt(3), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_10A9731: var_160.Caption = 1
  loc_10A9757: Exit Sub
End Sub

Public Sub Proc_76_85_1011268
  'Data Table: 53E444
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_101107D: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_1011087:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_101108C:   var_E4 = 1
  loc_10110C6:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "MEM") Then
  loc_10110CD:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_10110D2:     var_E4 = &H18
  loc_10110F0:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_10110FD:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1011102:     var_E4 = 8
  loc_1011132:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_101113E:   End If
  loc_1011141: Next var_B4 'Integer
  loc_101114E: If (var_94 <> vbNullString) Then
  loc_1011169:   If (Proc_96_1_F8C534(var_94) = 0) Then
  loc_101116F:     Proc_96_2_100DE2C(var_94)
  loc_1011179:     If (CDbl(0) < var_90) Then
  loc_101119D:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_10111BA:       Me.Global.Unload Me
  loc_10111C4:       var_86 = 0
  loc_10111CA:     Else
  loc_10111CC:       var_86 = &HFF
  loc_10111CF:     End If
  loc_10111D2:   Else
  loc_10111E0:     If (Proc_96_1_F8C534(var_94, var_9C) = &HFF) Then
  loc_10111E6:       Proc_96_2_100DE2C(var_94, var_86)
  loc_10111FC:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_1011220:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_101123D:         Me.Global.Unload Me
  loc_1011247:         var_86 = 0
  loc_101124D:       Else
  loc_101124F:         var_86 = &HFF
  loc_1011252:       End If
  loc_1011255:     Else
  loc_1011257:       var_86 = &HFF
  loc_101125A:     End If
  loc_101125A:   End If
  loc_101125D: Else
  loc_101125F:   var_86 = &HFF
  loc_1011262: End If
  loc_1011262: Proc_76_85_1011268 = var_86
End Sub

Public Sub Proc_76_86_125B3A4
  'Data Table: 53E444
  Dim var_B8 As MSHFlexGrid
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As String
  Dim var_1B8 As Boolean
  Dim var_124 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_90 As Double
  Dim var_86 As Integer
  Dim var_EC As Variant
  Dim var_1DC As String
  Dim var_188 As Variant
  Dim var_22C As Variant
  Dim unk_53E465 As Connection15
  Dim var_254 As TextBox
  Dim var_25C As TextBox
  Dim var_278 As String
  loc_125AEC1: For var_CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_CC 'Integer
  loc_125AECB:   var_DC = CVar(CLng(var_88)) 'Long
  loc_125AED0:   var_FC = 1
  loc_125AEFD:   var_1B8 = (CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "CCAD")
  loc_125AF05:   var_124 = CVar(CLng(var_88)) 'Long
  loc_125AF16:   Set var_158 = Me.FGrid
  loc_125AF27:   var_178 = CVar(CStr(var_158.TextMatrix))) 'String
  loc_125AF2D:   var_188 = Trim(var_178)
  loc_125AF60:   If CBool(CVar(CLng(9)) And (var_188 <> vbNullString)) Then
  loc_125AF67:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125AF6F:     var_FC = CVar(CLng(9)) 'Long
  loc_125AF89:     var_B0 = CStr(Me.FGrid.TextMatrix))
  loc_125AF96:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125AF9E:     var_FC = CVar(CLng(&HA)) 'Long
  loc_125AFB8:     var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_125AFC5:     var_DC = CVar(CLng(var_88)) 'Long
  loc_125AFCA:     var_FC = 8
  loc_125AFFA:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_125B006:   End If
  loc_125B009: Next var_CC 'Integer
  loc_125B019: var_1DC = 0
  loc_125B049: var_110 = 0
  loc_125B068: If (Proc_275_12_130A7A4(2, var_A8, var_94, var_110, 0) = &HFF) Then
  loc_125B073:   If (var_94 <> var_B0) Then
  loc_125B078:     var_86 = 0
  loc_125B086:     var_168 = "Smart Card Verification"
  loc_125B09C:     MsgBox("Smart Card is changed.", &H10, var_168, var_178, var_188)
  loc_125B0AC:   End If
  loc_125B0B3:   If (var_9C >= var_90) Then
  loc_125B0D4:     Set var_B8 = Me.Txt
  loc_125B0DA:     Call 0.Method_Proc_76_86_125B3A40 (CInt(1), var_158, var_110, ") BILL NO.- ", "Agnst. (" & global_188, var_86)
  loc_125B0E2:     0 = var_158.Text
  loc_125B0EF:     var_AC = 0 & var_110 & 0 & var_110
  loc_125B10D:     Proc_6_17_EAA2B0(var_168, CVar(Proc_6_14_EF349C(var_9C)))
  loc_125B11D:     Proc_6_17_EAA2B0(var_1FC, var_94)
  loc_125B137:     var_110 = CStr(var_90)
  loc_125B142:     var_178 = CVar("Update SmartCardRegistration Set LastTransAmt=" & var_110 & ",LastTransDate=") 'String
  loc_125B148:     var_188 = var_178 & var_168 
  loc_125B15C:     var_EC = CVar((var_9C - var_90)) 'Double
  loc_125B183:     var_22C = var_188 & ",CurrBal=" & "Smart Card Verification" & " Where Code=" & var_1FC & " And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_125B19A:     unk_53E465.Execute CStr(var_22C & "'"), var_24C, -1
  loc_125B1D6:     Set var_B8 = Me.Txt
  loc_125B1DC:     Call 0.Method_Proc_76_86_125B3A40 (CInt(0), var_158, var_110)
  loc_125B1E4:     var_B8 = var_158.Text
  loc_125B1F7:     Set var_250 = Me.Txt
  loc_125B1FD:     Call 0.Method_Proc_76_86_125B3A40 (CInt(1), var_254)
  loc_125B22A:     Set var_258 = Me.Txt
  loc_125B230:     Call 0.Method_Proc_76_86_125B3A40 (CInt(2), var_25C)
  loc_125B24B:     var_288 = "CARDEXP"
  loc_125B254:     var_284 = "A"
  loc_125B25D:     var_278 = Proc_6_14_EF349C(var_A4)
  loc_125B2AB:     Proc_275_16_10AF42C(MemVar_1F92044, var_110, 1, global_116, CLng(var_254.Text), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_25C.Text))
  loc_125B2EA:     If (Proc_275_7_10CC664((var_9C - var_90), var_A4, var_A8, var_94, var_A8, CDbl(0)) = &HFF) Then
  loc_125B2EF:       var_86 = &HFF
  loc_125B2F5:     Else
  loc_125B2F7:       var_86 = 0
  loc_125B31B:       MsgBox("Transaction Failed.", &H10, "Cash Card Detail", var_178, var_188)
  loc_125B32B:     End If
  loc_125B32E:   Else
  loc_125B330:     var_86 = 0
  loc_125B354:     MsgBox("Insufficient Smart Card Balance.", &H10, "Smart Card Verification", var_178, var_188)
  loc_125B364:   End If
  loc_125B367: Else
  loc_125B369:   var_86 = 0
  loc_125B38D:   MsgBox("Transaction Failed.", &H10, "Cash Card Detail", var_178, var_188)
  loc_125B39D: End If
  loc_125B39D: Proc_76_86_125B3A4 = var_86
End Sub

Public Sub Proc_76_87_F67EA8
  'Data Table: 53E444
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_F67DA5: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_BC 'Integer
  loc_F67DAF:   var_CC = CVar(CLng(var_88)) 'Long
  loc_F67DB4:   var_EC = 1
  loc_F67DEE:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "CCAD") Then
  loc_F67DF5:     var_CC = CVar(CLng(var_88)) 'Long
  loc_F67DFA:     var_EC = 8
  loc_F67E2A:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F67E36:   End If
  loc_F67E39: Next var_BC 'Integer
  loc_F67E4F: If (Proc_275_8_10BE7C4(var_98, var_A0) = &HFF) Then
  loc_F67E59:   If (var_98 < var_90) Then
  loc_F67E7D:     MsgBox("Insufficient Cash Card Balance.", &H40, "Cash Card Detail", var_12C, var_13C)
  loc_F67E8F:     var_86 = 0
  loc_F67E95:   Else
  loc_F67E97:     var_86 = &HFF
  loc_F67E9A:   End If
  loc_F67E9D: Else
  loc_F67E9F:   var_86 = 0
  loc_F67EA2: End If
  loc_F67EA2: Proc_76_87_F67EA8 = var_86
End Sub

Public Sub Proc_76_88_144A518
  'Data Table: 53E444
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_1449A07: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1449A0C: var_C8 = 1
  loc_1449A43: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1449A4A:   Set var_F4 = Me.FGrid
  loc_1449A8A:   Set var_DC = Me.Txt
  loc_1449A90:   Call 0.Method_Proc_76_88_144A5180 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_1449A98:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1449AC3:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1449AC8:   var_C8 = 2
  loc_1449B0E:   var_C8 = 3
  loc_1449B33:   Set var_DC = Me.Txt
  loc_1449B39:   Call 0.Method_Proc_76_88_144A5180 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_1449B41:   var_F8.Text = var_C8
  loc_1449B6C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1449B71:   var_C8 = 4
  loc_1449B8E:   global_152 = CStr(var_F4.TextMatrix))
  loc_1449BB2:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1449BB7:   var_C8 = 5
  loc_1449BD4:   global_156 = CStr(var_F4.TextMatrix))
  loc_1449BF8:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1449C21:   Set var_DC = Me.Txt
  loc_1449C27:   Call 0.Method_Proc_76_88_144A5180 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_1449C2F:   var_F8.Tag = var_A8
  loc_1449C5A:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1449C62:   var_C8 = CVar(CLng(7)) 'Long
  loc_1449C99:   var_158 = var_F4.TextMatrix)
  loc_1449CA9:   Set var_F8 = Me.FGrid
  loc_1449D07:   Set var_1FC = Me.Txt
  loc_1449D0D:   Call 0.Method_Proc_76_88_144A5180 (CInt(4), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_1449D15:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_1449D5D:   var_C8 = 8
  loc_1449D69:   var_EC = var_F4.TextMatrix)
  loc_1449D82:   Set var_DC = Me.Txt
  loc_1449D88:   Call 0.Method_Proc_76_88_144A5180 (CInt(5), var_F8, CStr(var_EC), var_C8, CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_1449D90:   var_F8.Text = var_C8
  loc_1449DB3:   If (CStr(var_F4.TextMatrix)) = "Cash Card") Then
  loc_1449DC9:     var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1449DF2:     Set var_DC = Me.Txt
  loc_1449DF8:     Call 0.Method_Proc_76_88_144A5180 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8)
  loc_1449E00:     var_F8.Text = var_A8
  loc_1449E54:     Set var_DC = Me.Txt
  loc_1449E5A:     Call 0.Method_Proc_76_88_144A5180 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_1449E62:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1449E7D:   Else
  loc_1449EB9:     Set var_DC = Me.Txt
  loc_1449EBF:     Call 0.Method_Proc_76_88_144A5180 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)))
  loc_1449EC7:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1449F1B:     Set var_DC = Me.Txt
  loc_1449F21:     Call 0.Method_Proc_76_88_144A5180 (CInt(7), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_1449F29:     var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1449F41:   End If
  loc_1449F7D:   Set var_DC = Me.Txt
  loc_1449F83:   Call 0.Method_Proc_76_88_144A5180 (CInt(8), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_1449F8B:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1449FE0:   Set var_DC = Me.Txt
  loc_1449FE6:   Call 0.Method_Proc_76_88_144A5180 (CInt(9), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_1449FEE:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A042:   Set var_DC = Me.Txt
  loc_144A048:   Call 0.Method_Proc_76_88_144A5180 (CInt(&HA), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_144A050:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A0A4:   Set var_DC = Me.Txt
  loc_144A0AA:   Call 0.Method_Proc_76_88_144A5180 (CInt(&HB), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_144A0B2:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A106:   Set var_DC = Me.Txt
  loc_144A10C:   Call 0.Method_Proc_76_88_144A5180 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H11)))
  loc_144A114:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A168:   Set var_DC = Me.Txt
  loc_144A16E:   Call 0.Method_Proc_76_88_144A5180 (CInt(&HC), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_144A176:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A1CA:   Set var_DC = Me.Txt
  loc_144A1D0:   Call 0.Method_Proc_76_88_144A5180 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_144A1D8:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A22C:   Set var_DC = Me.Txt
  loc_144A232:   Call 0.Method_Proc_76_88_144A5180 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_144A23A:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_144A28F:   Set var_DC = Me.Txt
  loc_144A295:   Call 0.Method_Proc_76_88_144A5180 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), &H1A)
  loc_144A29D:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A2F2:   Set var_DC = Me.Txt
  loc_144A2F8:   Call 0.Method_Proc_76_88_144A5180 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_144A300:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_144A355:   Set var_DC = Me.Txt
  loc_144A35B:   Call 0.Method_Proc_76_88_144A5180 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_144A363:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A3B8:   Set var_DC = Me.Txt
  loc_144A3BE:   Call 0.Method_Proc_76_88_144A5180 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_144A3C6:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_144A41B:   Set var_DC = Me.Txt
  loc_144A421:   Call 0.Method_Proc_76_88_144A5180 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_144A429:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A47E:   Set var_DC = Me.Txt
  loc_144A484:   Call 0.Method_Proc_76_88_144A5180 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_144A48C:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_144A4E1:   Set var_DC = Me.Txt
  loc_144A4E7:   Call 0.Method_Proc_76_88_144A5180 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_144A4EF:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_144A50C:   global_172 = &HFF
  loc_144A511:   Set var_F4 = Nothing 
  loc_144A515: End If
  loc_144A515: Exit Sub
End Sub

Public Sub Proc_76_89_EE4CB8
  'Data Table: 53E444
  loc_EE4C06: On Error Goto loc_EE4C4C
  loc_EE4C1E: Call 0.Method_arg_18C (var_8C)
  loc_EE4C26: Call var_8C.Show
  loc_EE4C3B: Call 0.Method_arg_188 (var_B0)
  loc_EE4C43: var_88 = var_B0
  loc_EE4C46: Proc_76_89_EE4CB8 = 1
  loc_EE4C4C: ' Referenced from: EE4C06
  loc_EE4C54: Set var_8C = Err()
  loc_EE4C5A: Call 0.Method_arg_1C (var_B4)
  loc_EE4C6B: If (var_B4 <> 0) Then
  loc_EE4C76:   Set var_8C = Err()
  loc_EE4C7C:   Call 0.Method_arg_2C (var_B0)
  loc_EE4C9D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE4CB0: End If
  loc_EE4CB0: Proc_76_89_EE4CB8 = 
End Sub
