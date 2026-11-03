VERSION 5.00
Begin VB.Form rrsAdvanceDepDialog
  Caption = "Settlememt Entry"
  BackColor = &HFFC0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "rrsAdvanceDepDialog.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6915
  ClientHeight = 7440
  LockControls = -1  'True
  Begin Frame FrTxnNo
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 2340
    Width = 4965
    Height = 300
    Visible = 0   'False
    TabIndex = 72
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3810
      Height = 285
      TabIndex = 5
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
  End
  Begin DataGrid DGBill
    Left = 4980
    Top = 4965
    Width = 2700
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 71
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6915
    Height = 450
    TabIndex = 68
  End
  Begin Frame FrRest
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 1425
    Width = 6210
    Height = 945
    Visible = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 1605
      Height = 285
      TabIndex = 70
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
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4530
      Top = 0
      Width = 1605
      Height = 285
      TabIndex = 1
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
      Index = 25
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4530
      Top = 630
      Width = 1600
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
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 3
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
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 5025
      Height = 285
      TabIndex = 2
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
    Begin Label Lbl
      Caption = "Bill No."
      Index = 37
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 690
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
    Begin Label LblName
      Caption = "Room/T"
      Index = 12
      ForeColor = &HC00000&
      Left = 3465
      Top = 30
      Width = 735
      Height = 240
      TabIndex = 64
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
      Caption = "Tip"
      Index = 21
      ForeColor = &HC00000&
      Left = 3885
      Top = 645
      Width = 300
      Height = 240
      TabIndex = 63
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
      ForeColor = &HC00000&
      Left = 0
      Top = 660
      Width = 735
      Height = 240
      TabIndex = 62
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
      ForeColor = &HC00000&
      Left = 0
      Top = 330
      Width = 465
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
  End
  Begin Frame FrMember
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 2010
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 47
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
      Height = 285
      TabIndex = 13
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
    Begin Label LblName
      Caption = "Member"
      Index = 2
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 780
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
  Begin Frame FrRem
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 2370
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 42
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
      Height = 285
      TabIndex = 16
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
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 900
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
  Begin Frame FrChqDet
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 2640
    Width = 6210
    Height = 630
    Visible = 0   'False
    TabIndex = 39
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 21
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 1600
      Height = 285
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 10
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
      Index = 22
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 1600
      Height = 285
      TabIndex = 15
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
    Begin Label LblName
      Caption = "Cheque No."
      Index = 15
      ForeColor = &HC00000&
      Left = -15
      Top = 0
      Width = 1110
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &HC00000&
      Left = -15
      Top = 315
      Width = 1050
      Height = 240
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
  End
  Begin Frame FrSendRoom
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 975
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 37
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 30
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 1600
      Height = 285
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 10
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
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 1035
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
  End
  Begin Frame FrEmp
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 1335
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
      Height = 285
      TabIndex = 11
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
    Begin Label LblName
      Caption = "Staff"
      Index = 22
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 435
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
  End
  Begin Frame FrComp
    BackColor = &HC9E2F5&
    Left = 7935
    Top = 1680
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 33
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
      Height = 285
      TabIndex = 12
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
    Begin Label LblName
      Caption = "Company"
      Index = 27
      ForeColor = &HC00000&
      Left = 0
      Top = 0
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
  End
  Begin Frame FrCCDet
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 2685
    Width = 6210
    Height = 945
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4530
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 9
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
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
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
    Begin TextBox Txt
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 5025
      Height = 285
      TabIndex = 7
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
      Index = 20
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 8
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
    Begin Label LblName
      Caption = "Batch No"
      Index = 1
      ForeColor = &HC00000&
      Left = 3615
      Top = 660
      Width = 855
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
      Caption = "C.C. No."
      Index = 18
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 765
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
    Begin Label LblName
      Caption = "Holder"
      Index = 19
      ForeColor = &HC00000&
      Left = 0
      Top = 345
      Width = 630
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
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &HC00000&
      Left = 0
      Top = 660
      Width = 675
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
  End
  Begin DataGrid DGCompany
    Left = 11805
    Top = 7110
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 27
  End
  Begin DataGrid DGTable
    Left = 7785
    Top = 5640
    Width = 2700
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin DataGrid DGRoom
    Left = 13545
    Top = 6705
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin DataGrid DGPayType
    Left = 12105
    Top = 5055
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin DataGrid DGEmp
    Left = 12225
    Top = 5940
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin Frame FrRest1
    BackColor = &HFFFFFF&
    Left = 1125
    Top = 1000
    Width = 6555
    Height = 390
    TabIndex = 23
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 5085
      Top = 60
      Width = 1080
      Height = 285
      TabIndex = 0
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
    Begin Label LblOutLet
      ForeColor = &HC00000&
      Left = 45
      Top = 60
      Width = 2715
      Height = 285
      TabIndex = 65
      Alignment = 2 'Center
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
      Caption = "Bill Detail"
      Index = 36
      ForeColor = &HC00000&
      Left = 3030
      Top = 60
      Width = 930
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
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &HE0E0E0&
    Left = 1485
    Top = 4305
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
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
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 1380
    Top = 4185
    Width = 6105
    Height = 2325
    TabIndex = 17
  End
  Begin MSFlexGrid FGPoint
    Left = 14100
    Top = 615
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 44
  End
  Begin MSHFlexGrid FGrid1
    Left = 7560
    Top = 3960
    Width = 6780
    Height = 4500
    TabIndex = 18
  End
  Begin DataGrid DGMember
    Left = 12840
    Top = 3510
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4395
    Top = 7920
    Width = 2790
    Height = 285
    TabIndex = 67
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
    Left = 1020
    Top = 7920
    Width = 2880
    Height = 255
    TabIndex = 66
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
  Begin Label LTxt
    Index = 26
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1425
    Top = 3885
    Width = 1470
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
  Begin Label LTxt
    Index = 28
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 5925
    Top = 3885
    Width = 1515
    Height = 285
    TabIndex = 57
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
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2925
    Top = 3885
    Width = 1470
    Height = 285
    TabIndex = 56
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
    Left = 1425
    Top = 3630
    Width = 1515
    Height = 255
    TabIndex = 55
    Alignment = 2 'Center
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
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Paid Amount"
    Index = 24
    BackColor = &HC7EBEB&
    ForeColor = &H808000&
    Left = 2925
    Top = 3630
    Width = 1515
    Height = 255
    TabIndex = 54
    Alignment = 2 'Center
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
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Balance"
    Index = 17
    BackColor = &HC7EBEB&
    ForeColor = &HFF&
    Left = 5925
    Top = 3630
    Width = 1515
    Height = 255
    TabIndex = 53
    Alignment = 2 'Center
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
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Payable Amt"
    Index = 0
    BackColor = &HC7EBEB&
    ForeColor = &HC0&
    Left = 4425
    Top = 3630
    Width = 1515
    Height = 255
    TabIndex = 52
    Alignment = 2 'Center
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
    Appearance = 0 'Flat
  End
  Begin Label LTxt
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4425
    Top = 3885
    Width = 1470
    Height = 285
    TabIndex = 51
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
  Begin Shape Shape5
    BorderColor = &H400040&
    Left = 10245
    Top = 7350
    Width = 750
    Height = 585
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Shape Shape1
    Index = 1
    BackColor = &HE7F3FA&
    BorderColor = &H400040&
    Left = 9795
    Top = 8250
    Width = 990
    Height = 525
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HE7F3FA&
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 50
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
    Caption = "Settlement Payment Pending Bill Details"
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 7560
    Top = 3615
    Width = 5430
    Height = 345
    TabIndex = 45
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
  Begin Label Label1
    Caption = "Press Ctrl+S to Save"
    Index = 0
    ForeColor = &HFF0000&
    Left = 240
    Top = 75
    Width = 2970
    Height = 300
    TabIndex = 28
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
    Left = 14265
    Top = 2895
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 21
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
  Begin Shape Shape4
    BorderColor = &H400040&
    Left = 9780
    Top = 6825
    Width = 1170
    Height = 405
    Visible = 0   'False
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "rrsAdvanceDepDialog"

Private global_88 As Recordset15
Private global_180 As Double
Private global_116 As Long
Private global_120 As Long
Private global_144 As Double
Private global_112 As Long
Private global_172 As Integer

Private Sub DGBill_UnknownEvent_9 'F655C4
  'Data Table: 5495E4
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F65498: On Error Goto loc_F655BB
  loc_F654A4: Set var_A8 = Me.DGBill
  loc_F654AA: var_A8.Visible = False
  loc_F654CC: If (Me.var_A8.RecordCount > 0) Then
  loc_F6550E:   Set var_B4 = Me.Txt
  loc_F65514:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(1), var_B8)
  loc_F6551C:   var_B8.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F65552:   var_B0 = Me.Recordset15.Fields.Item("Code")
  loc_F65571:   Set var_B4 = Me.Txt
  loc_F65577:   Call 0.Method_DGBill_UnknownEvent_90 (CInt(1), var_B8)
  loc_F6557F:   var_B8.Tag = CStr(var_B0.Value)
  loc_F65595: End If
  loc_F655A0: Set var_A8 = Me.Txt
  loc_F655A6: Call 0.Method_DGBill_UnknownEvent_90 (CInt(1))
  loc_F655AE: var_B0.SetFocus
  loc_F655BA: Exit Sub
  loc_F655BB: ' Referenced from: F65498
  loc_F655BB: Proc_6_60_E62BC4(var_B0)
  loc_F655C0: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5E178
  'Data Table: 5495E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5E058: On Error Goto loc_F5E172
  loc_F5E06A: Me.DGTable.Visible = False
  loc_F5E089: If (Me.RecordCount > 0) Then
  loc_F5E0C8:   Set var_B4 = Me.Txt
  loc_F5E0CE:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5E0D6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5E109:   var_B0 = Me.Fields.Item("Code")
  loc_F5E128:   Set var_B4 = Me.Txt
  loc_F5E12E:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F5E136:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5E14C: End If
  loc_F5E157: Set var_A8 = Me.Txt
  loc_F5E15D: Call 0.Method_DGTable_UnknownEvent_90 (CInt(&H10))
  loc_F5E165: var_B0.SetFocus
  loc_F5E171: Exit Sub
  loc_F5E172: ' Referenced from: F5E058
  loc_F5E172: Proc_6_60_E62BC4(var_B0)
  loc_F5E177: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'E71138
  'Data Table: 5495E4
  loc_E710F6: Proc_6_153_E91194(Me.DGTable, arg_14)
  loc_E7110D: Set var_8C = Me.FGPoint
  loc_E71129: Proc_6_138_106D6F8(Me.DGTable, global_72, CInt(&H10))
  loc_E71137: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F40584
  'Data Table: 5495E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4047B: Me.DGMember.Visible = False
  loc_F4049A: If (Me.RecordCount > 0) Then
  loc_F404D9:   Set var_B4 = Me.Txt
  loc_F404DF:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20), var_B8)
  loc_F404E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4051A:   var_B0 = Me.Fields.Item("Code")
  loc_F40539:   Set var_B4 = Me.Txt
  loc_F4053F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20), var_B8)
  loc_F40547:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4055D: End If
  loc_F40568: Set var_A8 = Me.Txt
  loc_F4056E: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&H20))
  loc_F40576: var_B0.SetFocus
  loc_F40582: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'E70F7C
  'Data Table: 5495E4
  loc_E70F3A: Proc_6_153_E91194(Me.DGMember, arg_14)
  loc_E70F51: Set var_8C = Me.FGPoint
  loc_E70F6D: Proc_6_138_106D6F8(Me.DGMember, global_92, CInt(&H20))
  loc_E70F7B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '15B8F4C
  'Data Table: 5495E4
  Dim var_92 As Integer
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_F4 As Variant
  Dim var_88 As Frame
  Dim var_D4 As String
  Dim var_C8 As String
  loc_15B7C8A: Set var_88 = Me.Txt
  loc_15B7C90: Call 0.Method_Txt_GotFocus0 (Index)
  loc_15B7C9E: Proc_6_74_E226B0(var_8C)
  loc_15B7CAA: Call Proc_98_71_FB6978(var_8C)
  loc_15B7CB2: var_92 = Index
  loc_15B7CBD: If (var_92 = CInt(&HF)) Then
  loc_15B7CE0:   Set var_A0 = Me.Txt
  loc_15B7CE6:   Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_A4)
  loc_15B7D01:   Set var_88 = Me.Txt
  loc_15B7D07:   Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15B7D1F:   var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_15B7D2E:   Me.DGPayType.Top = var_B8
  loc_15B7D62:   Set var_88 = Me.Txt
  loc_15B7D68:   Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15B7D7C:   var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15B7D8B:   Me.DGPayType.Left = var_B8
  loc_15B7DB2:   If (Me.RecordCount > 0) Then
  loc_15B7DC0:     Set var_8C = Me.FGPoint
  loc_15B7DD8:     Proc_6_137_1193554(Me.DGPayType, global_64, Index)
  loc_15B7DE6:   End If
  loc_15B7E34:   Set var_88 = Me.Txt
  loc_15B7E3A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B7E42:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B7E5A:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_15B7E5D:     Exit Sub
  loc_15B7E5E:   End If
  loc_15B7E6B:   Set var_88 = Me.Txt
  loc_15B7E71:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B7E79:   var_D4 = var_8C.Text
  loc_15B7E8B:   var_B8 = "Name"
  loc_15B7EC6:   If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_15B7ECF:     Me.MoveFirst
  loc_15B7EF2:     Set var_88 = Me.Txt
  loc_15B7EF8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_15B7F00:     0 = var_8C.Text
  loc_15B7F19:     Me.Find 1 & var_D4 & "'", var_B8, var_92
  loc_15B7F2E:   End If
  loc_15B7F31: Else
  loc_15B7F39:   If (var_92 = CInt(&H18)) Then
  loc_15B7F53:     If (Me.RecordCount > 0) Then
  loc_15B7F61:       Set var_8C = Me.FGPoint
  loc_15B7F79:       Proc_6_137_1193554(Me.DGEmp, global_68)
  loc_15B7F87:     End If
  loc_15B7FD5:     Set var_88 = Me.Txt
  loc_15B7FDB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B7FE3:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B7FFB:     If (Index Or (var_D4 = vbNullString)) Then
  loc_15B7FFE:       Exit Sub
  loc_15B7FFF:     End If
  loc_15B800C:     Set var_88 = Me.Txt
  loc_15B8012:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B801A:     var_D4 = var_8C.Text
  loc_15B802C:     var_B8 = "Name"
  loc_15B8067:     If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_15B8070:       Me.MoveFirst
  loc_15B8093:       Set var_88 = Me.Txt
  loc_15B8099:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_15B80A1:       0 = var_8C.Text
  loc_15B80BA:       Me.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_15B80CF:     End If
  loc_15B80D2:   Else
  loc_15B80DA:     If (var_92 = CInt(1)) Then
  loc_15B80FD:       Set var_A0 = Me.Txt
  loc_15B8103:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_A4)
  loc_15B811E:       Set var_88 = Me.Txt
  loc_15B8124:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_15B813C:       var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_15B814B:       Me.DGBill.Top = var_B8
  loc_15B817F:       Set var_88 = Me.Txt
  loc_15B8185:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_15B8199:       var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15B81A2:       Set var_A0 = Me.DGBill
  loc_15B81A8:       var_A0.Left = var_B8
  loc_15B81D2:       If (Me.var_A0.RecordCount > 0) Then
  loc_15B81E0:         Set var_8C = Me.FGPoint
  loc_15B81FC:         Proc_6_137_1193554(Me.DGBill, global_88)
  loc_15B820A:       End If
  loc_15B8261:       Set var_88 = Me.Txt
  loc_15B8267:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B826F:       ((global_88.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_15B8287:       If (Index Or (var_D4 = vbNullString)) Then
  loc_15B828A:         Exit Sub
  loc_15B828B:       End If
  loc_15B8298:       Set var_88 = Me.Txt
  loc_15B829E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B82A6:       var_D4 = var_8C.Text
  loc_15B82AE:       var_F4 = CVar(var_D4) 'String
  loc_15B82F6:       If CBool(var_F4 <> Me.Recordset15.Fields.Item("Name").Value) Then
  loc_15B8302:         Me.Recordset15.MoveFirst
  loc_15B8327:         Set var_88 = Me.Txt
  loc_15B832D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B8335:         0 = var_8C.Text
  loc_15B8343:         Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_15B835C:         Me.Recordset15.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B8374:       End If
  loc_15B8377:     Else
  loc_15B837F:       If (var_92 = CInt(&H10)) Then
  loc_15B83A2:         Set var_A0 = Me.Txt
  loc_15B83A8:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_A4)
  loc_15B83C3:         Set var_88 = Me.Txt
  loc_15B83C9:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15B83E1:         var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_15B83F0:         Me.DGTable.Top = "Name ="
  loc_15B8424:         Set var_88 = Me.Txt
  loc_15B842A:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_15B843E:         var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15B844D:         Me.DGTable.Left = "Name ="
  loc_15B8474:         If (Me.RecordCount > 0) Then
  loc_15B8482:           Set var_8C = Me.FGPoint
  loc_15B849A:           Proc_6_137_1193554(Me.DGTable, global_72)
  loc_15B84A8:         End If
  loc_15B84F6:         Set var_88 = Me.Txt
  loc_15B84FC:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B8504:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B851C:         If (Index Or (var_D4 = vbNullString)) Then
  loc_15B851F:           Exit Sub
  loc_15B8520:         End If
  loc_15B852D:         Set var_88 = Me.Txt
  loc_15B8533:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B853B:         var_D4 = var_8C.Text
  loc_15B8543:         var_F4 = CVar(var_D4) 'String
  loc_15B8588:         If CBool(var_F4 <> Me.Fields.Item("Name").Value) Then
  loc_15B8591:           Me.MoveFirst
  loc_15B85B6:           Set var_88 = Me.Txt
  loc_15B85BC:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B85C4:           0 = var_8C.Text
  loc_15B85D2:           Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_15B85E8:           Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B8600:         End If
  loc_15B8603:       Else
  loc_15B860B:         If (var_92 = CInt(&H1E)) Then
  loc_15B862E:           Set var_A0 = Me.Txt
  loc_15B8634:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_A4)
  loc_15B864F:           Set var_88 = Me.Txt
  loc_15B8655:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_8C)
  loc_15B866D:           var_B8 = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_A4.Height)) 'Single
  loc_15B867C:           Me.DGRoom.Top = "Name ="
  loc_15B86B0:           Set var_88 = Me.Txt
  loc_15B86B6:           Call 0.Method_Txt_GotFocus0 (CInt(&H1E), var_8C)
  loc_15B86CA:           var_B8 = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_15B86D9:           Me.DGRoom.Left = "Name ="
  loc_15B8700:           If (Me.RecordCount > 0) Then
  loc_15B870E:             Set var_8C = Me.FGPoint
  loc_15B8726:             Proc_6_137_1193554(Me.DGRoom, global_76)
  loc_15B8734:           End If
  loc_15B8782:           Set var_88 = Me.Txt
  loc_15B8788:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B8790:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B87A8:           If (Index Or (var_D4 = vbNullString)) Then
  loc_15B87AB:             Exit Sub
  loc_15B87AC:           End If
  loc_15B87B9:           Set var_88 = Me.Txt
  loc_15B87BF:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B87C7:           var_D4 = var_8C.Text
  loc_15B87CF:           var_F4 = CVar(var_D4) 'String
  loc_15B87E8:           var_90 = Me.Fields
  loc_15B8814:           If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_15B881D:             Me.MoveFirst
  loc_15B8842:             Set var_88 = Me.Txt
  loc_15B8848:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B8850:             0 = var_8C.Text
  loc_15B885E:             Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_15B8874:             Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B888C:           End If
  loc_15B888F:         Else
  loc_15B8897:           If (var_92 = CInt(&H1F)) Then
  loc_15B88A8:             Set var_8C = Me.Txt
  loc_15B88AE:             Call 0.Method_Txt_GotFocus0 (CInt(&H1F), var_90)
  loc_15B88D4:             var_B8 = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_15B88E3:             Me.DGCompany.Top = "Name ="
  loc_15B8925:             Set var_88 = Me.Txt
  loc_15B892B:             Call 0.Method_Txt_GotFocus0 (CInt(&H1F), var_8C)
  loc_15B8943:             var_B8 = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_15B8952:             Me.DGCompany.Left = "Name ="
  loc_15B897B:             If (Me.RecordCount > 0) Then
  loc_15B8989:               Set var_8C = Me.FGPoint
  loc_15B89A1:               Proc_6_137_1193554(Me.DGCompany, global_84)
  loc_15B89AF:             End If
  loc_15B89FD:             Set var_88 = Me.Txt
  loc_15B8A03:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B8A0B:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B8A23:             If (Index Or (var_D4 = vbNullString)) Then
  loc_15B8A26:               Exit Sub
  loc_15B8A27:             End If
  loc_15B8A34:             Set var_88 = Me.Txt
  loc_15B8A3A:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B8A42:             var_D4 = var_8C.Text
  loc_15B8A4A:             var_F4 = CVar(var_D4) 'String
  loc_15B8A63:             var_90 = Me.Fields
  loc_15B8A8F:             If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_15B8A98:               Me.MoveFirst
  loc_15B8ABD:               Set var_88 = Me.Txt
  loc_15B8AC3:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B8ACB:               0 = var_8C.Text
  loc_15B8AD9:               Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_15B8AEF:               Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B8B07:             End If
  loc_15B8B0A:           Else
  loc_15B8B12:             If (var_92 = CInt(&H20)) Then
  loc_15B8B23:               Set var_8C = Me.Txt
  loc_15B8B29:               Call 0.Method_Txt_GotFocus0 (CInt(&H20), var_90)
  loc_15B8B4F:               var_B8 = CVar((Me.FrMember.Top + var_90.Height)) 'Single
  loc_15B8B5E:               Me.DGMember.Top = "Name ="
  loc_15B8BA0:               Set var_88 = Me.Txt
  loc_15B8BA6:               Call 0.Method_Txt_GotFocus0 (CInt(&H20), var_8C)
  loc_15B8BC3:               var_B8 = CVar((((var_8C.Left + Me.FrRest.Left) + Me.FrMember.Left) - CDbl(1260))) 'Single
  loc_15B8BD2:               Me.DGMember.Left = "Name ="
  loc_15B8BFB:               If (Me.RecordCount > 0) Then
  loc_15B8C09:                 Set var_8C = Me.FGPoint
  loc_15B8C21:                 Proc_6_137_1193554(Me.DGMember, global_92)
  loc_15B8C2F:               End If
  loc_15B8C7D:               Set var_88 = Me.Txt
  loc_15B8C83:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15B8C8B:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_15B8CA3:               If (Index Or (var_D4 = vbNullString)) Then
  loc_15B8CA6:                 Exit Sub
  loc_15B8CA7:               End If
  loc_15B8CB4:               Set var_88 = Me.Txt
  loc_15B8CBA:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B8CC2:               var_D4 = var_8C.Text
  loc_15B8CCA:               var_F4 = CVar(var_D4) 'String
  loc_15B8CEB:               var_A0 = Me.Fields.Item("Name")
  loc_15B8D0F:               If CBool(var_F4 <> var_A0.Value) Then
  loc_15B8D18:                 Me.MoveFirst
  loc_15B8D3D:                 Set var_88 = Me.Txt
  loc_15B8D43:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15B8D4B:                 0 = var_8C.Text
  loc_15B8D59:                 Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_15B8D6F:                 Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15B8D87:               End If
  loc_15B8D8A:             Else
  loc_15B8D92:               If (var_92 = CInt(&H11)) Then
  loc_15B8D99:                 Set var_88 = Me.TopCtrl1
  loc_15B8D9F:                 Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_15B8DB8:                 If (CStr() = "Add") Then
  loc_15B8DC9:                   Set var_88 = Me.LTxt
  loc_15B8DCF:                   Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_8C)
  loc_15B8E1C:                   Set var_90 = Me.Txt
  loc_15B8E22:                   Call 0.Method_Txt_GotFocus0 (Index, var_A0, CStr(Format(CVar(Val(var_8C.Caption)), "0.00")))
  loc_15B8E2A:                   var_A0.Text = 1
  loc_15B8E4A:                 End If
  loc_15B8E59:                 Set var_88 = Me.Txt
  loc_15B8E5F:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, 0)
  loc_15B8E67:                 var_8C.SelStart = 1
  loc_15B8E80:                 Set var_88 = Me.Txt
  loc_15B8E86:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B8EA1:                 Set var_90 = Me.Txt
  loc_15B8EA7:                 Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_15B8EAF:                 var_A0.SelLength = Len(var_8C.Text)
  loc_15B8EC5:               Else
  loc_15B8ECD:                 If (var_92 = CInt(&H19)) Then
  loc_15B8EDF:                   Set var_88 = Me.Txt
  loc_15B8EE5:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B8EED:                   var_8C.SelStart = 0
  loc_15B8F06:                   Set var_88 = Me.Txt
  loc_15B8F0C:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15B8F27:                   Set var_90 = Me.Txt
  loc_15B8F2D:                   Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_15B8F35:                   var_A0.SelLength = Len(var_8C.Text)
  loc_15B8F48:                 End If
  loc_15B8F48:               End If
  loc_15B8F48:             End If
  loc_15B8F48:           End If
  loc_15B8F48:         End If
  loc_15B8F48:       End If
  loc_15B8F48:     End If
  loc_15B8F48:   End If
  loc_15B8F48: End If
  loc_15B8F48: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '142B0F0
  'Data Table: 5495E4
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
  loc_142A63B: var_88 = Shift
  loc_142A648: If (CLng(Shift) = &H1B) Then
  loc_142A64B:   Call Proc_98_71_FB6978(var_88)
  loc_142A650:   Exit Sub
  loc_142A651: End If
  loc_142A654: var_8A = KeyCode
  loc_142A65F: If (var_8A = CInt(&HF)) Then
  loc_142A67F:   Set var_A4 = Me.FGPoint
  loc_142A68A:   Set var_A0 = Nothing
  loc_142A6BC:   Proc_6_69_134A198(Me.DGPayType, Me.Txt, CInt(&HF), global_64, Shift, 0)
  loc_142A72B:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142A751:     Proc_6_138_106D6F8(Me.DGPayType, global_64, KeyCode, Me.FGPoint, 1)
  loc_142A75F:   End If
  loc_142A762: Else
  loc_142A76A:   If (var_8A = CInt(&H18)) Then
  loc_142A795:     Set var_A0 = Nothing
  loc_142A7C7:     Proc_6_69_134A198(Me.DGEmp, Me.Txt, CInt(&H18), global_68, Shift, 0, 1)
  loc_142A836:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142A83D:       Set var_A0 = Me.DGEmp
  loc_142A85C:       Proc_6_138_106D6F8(var_A0, global_68, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_142A86A:     End If
  loc_142A86D:   Else
  loc_142A875:     If (var_8A = CInt(1)) Then
  loc_142A8D6:       Proc_6_69_134A198(Me.DGBill, Me.Txt, CInt(1), global_88, Shift, 0, 1, Nothing)
  loc_142A948:       If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142A972:         Proc_6_138_106D6F8(Me.DGBill, global_88, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_142A980:       End If
  loc_142A983:     Else
  loc_142A98B:       If (var_8A = CInt(&H10)) Then
  loc_142A9E8:         Proc_6_69_134A198(Me.DGTable, Me.Txt, CInt(&H10), global_72, Shift, 0, 1, Nothing)
  loc_142AA57:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AA7D:           Proc_6_138_106D6F8(Me.DGTable, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_142AA8B:         End If
  loc_142AA8E:       Else
  loc_142AA96:         If (var_8A = CInt(&H1E)) Then
  loc_142AAF3:           Proc_6_69_134A198(Me.DGRoom, Me.Txt, CInt(&H1E), global_76, Shift, 0, 1, Nothing)
  loc_142AB62:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AB88:             Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_142AB96:           End If
  loc_142AB99:         Else
  loc_142ABA1:           If (var_8A = CInt(&H1F)) Then
  loc_142ABFE:             Proc_6_69_134A198(Me.DGCompany, Me.Txt, CInt(&H1F), global_84, Shift, 0, 1, Nothing)
  loc_142AC6D:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AC93:               Proc_6_138_106D6F8(Me.DGCompany, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_142ACA1:             End If
  loc_142ACA4:           Else
  loc_142ACAC:             If (var_8A = CInt(&H20)) Then
  loc_142ACCC:               Set var_A4 = Me.FGPoint
  loc_142AD09:               Proc_6_69_134A198(Me.DGMember, Me.Txt, CInt(&H20), global_92, Shift, 0, 1, Nothing)
  loc_142AD78:               If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_142AD7F:                 Set var_A0 = Me.DGMember
  loc_142AD86:                 Set var_94 = Me.FGPoint
  loc_142AD9E:                 Proc_6_138_106D6F8(var_A0, global_92, KeyCode, var_94, var_A4, 0)
  loc_142ADAC:               End If
  loc_142ADAF:             Else
  loc_142ADB7:               If (var_8A = CInt(&H17)) Then
  loc_142ADC4:                 If (CLng(Shift) = &H2D) Then
  loc_142ADCA:                   Call Proc_98_81_EE3CB8(var_BC, 0, var_A0)
  loc_142ADDC:                   Set var_90 = Me.Txt
  loc_142ADE2:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_142AE06:                   Set var_90 = Me.Txt
  loc_142AE0C:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_142AE14:                   0 = var_A4
  loc_142AE27:                   Set var_A0 = Me.Txt
  loc_142AE2D:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_142AE35:                   var_A4.SelStart = Len(var_BC)
  loc_142AE48:                   Exit Sub
  loc_142AE49:                 End If
  loc_142AE49:               End If
  loc_142AE49:             End If
  loc_142AE49:           End If
  loc_142AE49:         End If
  loc_142AE49:       End If
  loc_142AE49:     End If
  loc_142AE49:   End If
  loc_142AE49: End If
  loc_142AE80: var_EC = Me.DGPayType.Visible
  loc_142AE97: var_FC = Me.DGEmp.Visible
  loc_142AF0B: If (((((((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGRoom.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) And (CBool(Me.DGBill.Visible) = 0)) Then
  loc_142AF2E:   If (((CLng(Shift) = &H26) And (global_120 = 5)) And (KeyCode = CInt(&HF))) Then
  loc_142AF31:     Exit Sub
  loc_142AF32:   End If
  loc_142AF50:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_142AF5D:     If (CLng(Shift) = &H28) Then
  loc_142AF60:       Exit Sub
  loc_142AF61:     End If
  loc_142AF98:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_142AF9B:       Call Proc_98_77_1590730(var_8A)
  loc_142AFA2:       Shift = 0
  loc_142AFA5:     End If
  loc_142AFA5:     Exit Sub
  loc_142AFA9:   Else
  loc_142AFC7:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_142AFD4:       If (CLng(Shift) = &H28) Then
  loc_142AFD7:         Exit Sub
  loc_142AFD8:       End If
  loc_142B00F:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_142B012:         Call Proc_98_77_1590730(Shift)
  loc_142B019:         Shift = 0
  loc_142B01C:       End If
  loc_142B01C:       Exit Sub
  loc_142B020:     Else
  loc_142B03E:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_142B04B:         If (CLng(Shift) = &H28) Then
  loc_142B04E:           Exit Sub
  loc_142B04F:         End If
  loc_142B051:         var_86 = 0
  loc_142B05E:         Call Txt_Validate(CInt(&H1E))
  loc_142B069:         If (var_86 = &HFF) Then
  loc_142B06C:           Exit Sub
  loc_142B06D:         End If
  loc_142B0A4:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_142B0A7:           Call Proc_98_77_1590730(var_86, var_86)
  loc_142B0AE:           Shift = 0
  loc_142B0B1:         End If
  loc_142B0B1:         Exit Sub
  loc_142B0B2:       End If
  loc_142B0B2:     End If
  loc_142B0B2:   End If
  loc_142B0C7:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_142B0D0:     Proc_6_75_E527CC(Shift, arg_14)
  loc_142B0D5:   End If
  loc_142B0DF:   If (CLng(Shift) = &H26) Then
  loc_142B0E8:     Proc_6_76_E52838(Shift, arg_14)
  loc_142B0ED:   End If
  loc_142B0ED: End If
  loc_142B0ED: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE72E4
  'Data Table: 5495E4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EE7226: If (arg_10 = &HD) Then
  loc_EE722B:   arg_10 = 0
  loc_EE722E: End If
  loc_EE7231: Proc_6_58_E054C0(arg_10)
  loc_EE723C: Proc_6_133_E7EF78(var_94, arg_10)
  loc_EE7245: arg_10 = CInt(var_94)
  loc_EE724E: var_96 = KeyAscii
  loc_EE7259: If Not (var_96 = CInt(&H11)) Then
  loc_EE7264:   If (var_96 = CInt(&H19)) Then
  loc_EE7267:   End If
  loc_EE7271:   Set var_9C = Me.Txt
  loc_EE7277:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_EE7292:   Proc_6_42_129A86C(var_A0, arg_10, 8)
  loc_EE72A1: Else
  loc_EE72A9:   If (var_96 = CInt(3)) Then
  loc_EE72B6:     Set var_9C = Me.Txt
  loc_EE72BC:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 2)
  loc_EE72D7:     Proc_6_42_129A86C(var_A0, arg_10, 5)
  loc_EE72E3:   End If
  loc_EE72E3: End If
  loc_EE72E3: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '11EC154
  'Data Table: 5495E4
  Dim var_86 As Integer
  loc_11EBCBF: var_86 = KeyCode
  loc_11EBCCA: If (var_86 = CInt(&HF)) Then
  loc_11EBCE9:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_11EBCFD:     var_A4 = "Name"
  loc_11EBD21:     Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyCode, global_64)
  loc_11EBD57:     Proc_6_138_106D6F8(Me.DGPayType, global_64, KeyCode, Me.FGPoint)
  loc_11EBD65:   End If
  loc_11EBD68: Else
  loc_11EBD70:   If (var_86 = CInt(&H18)) Then
  loc_11EBD8F:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_11EBDA3:       var_A4 = "Name"
  loc_11EBDC7:       Proc_6_68_129FB34(Me.DGEmp, Me.Txt, KeyCode, global_68, Shift)
  loc_11EBDFD:       Proc_6_138_106D6F8(Me.DGEmp, global_68, KeyCode, Me.FGPoint)
  loc_11EBE0B:     End If
  loc_11EBE0E:   Else
  loc_11EBE16:     If (var_86 = CInt(1)) Then
  loc_11EBE35:       If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_11EBE71:         Proc_6_68_129FB34(Me.DGBill, Me.Txt, KeyCode, global_88, Shift)
  loc_11EBEAB:         Proc_6_138_106D6F8(Me.DGBill, global_88, KeyCode, Me.FGPoint, "Name")
  loc_11EBEB9:       End If
  loc_11EBEBC:     Else
  loc_11EBEC4:       If (var_86 = CInt(&H10)) Then
  loc_11EBEE3:         If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_11EBF1B:           Proc_6_68_129FB34(Me.DGTable, Me.Txt, KeyCode, global_72, Shift)
  loc_11EBF51:           Proc_6_138_106D6F8(Me.DGTable, global_72, KeyCode, Me.FGPoint, "Name")
  loc_11EBF5F:         End If
  loc_11EBF62:       Else
  loc_11EBF6A:         If (var_86 = CInt(&H1E)) Then
  loc_11EBF89:           If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_11EBFC1:             Proc_6_68_129FB34(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_11EBFF7:             Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_11EC005:           End If
  loc_11EC008:         Else
  loc_11EC010:           If (var_86 = CInt(&H1F)) Then
  loc_11EC02F:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_11EC067:               Proc_6_68_129FB34(Me.DGCompany, Me.Txt, KeyCode, global_84, Shift)
  loc_11EC09D:               Proc_6_138_106D6F8(Me.DGCompany, global_84, KeyCode, Me.FGPoint, "Name")
  loc_11EC0AB:             End If
  loc_11EC0AE:           Else
  loc_11EC0B6:             If (var_86 = CInt(&H20)) Then
  loc_11EC0D5:               If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_11EC10D:                 Proc_6_68_129FB34(Me.DGMember, Me.Txt, KeyCode, global_92, Shift)
  loc_11EC143:                 Proc_6_138_106D6F8(Me.DGMember, global_92, KeyCode, Me.FGPoint, "Name")
  loc_11EC151:               End If
  loc_11EC151:             End If
  loc_11EC151:           End If
  loc_11EC151:         End If
  loc_11EC151:       End If
  loc_11EC151:     End If
  loc_11EC151:   End If
  loc_11EC151: End If
  loc_11EC151: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49FCC
  'Data Table: 5495E4
  loc_E49FAA: Set var_88 = Me.Txt
  loc_E49FB0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49FBE: Proc_6_73_E22704(var_8C)
  loc_E49FCA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '16AE858
  'Data Table: 5495E4
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim var_94 As Variant
  Dim var_A0 As String
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_D4 As String
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_9C As Fields15
  Dim unk_54960A As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_190 As TextBox
  loc_16ACEDF: var_8E = Cancel
  loc_16ACEEA: If (var_8E = CInt(1)) Then
  loc_16ACEF7:   Set var_94 = Me.Txt
  loc_16ACEFD:   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ACF05:   var_A0 = "Bill No."
  loc_16ACF26:   If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_16ACF36:     Set var_94 = Me.Txt
  loc_16ACF3C:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ACF56:     If (var_98.Enabled = &HFF) Then
  loc_16ACF63:       Set var_94 = Me.Txt
  loc_16ACF69:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ACF71:       var_98.SetFocus
  loc_16ACF7D:     End If
  loc_16ACF7F:     arg_10 = &HFF
  loc_16ACF82:     Exit Sub
  loc_16ACF83:   End If
  loc_16ACFDA:   Set var_94 = Me.Txt
  loc_16ACFE0:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16ACFE8:   ((global_88.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_16AD000:   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16AD010:     Set var_94 = Me.Txt
  loc_16AD016:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AD01E:     var_98.Text = vbNullString
  loc_16AD037:     Set var_94 = Me.Txt
  loc_16AD03D:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AD045:     var_98.Tag = vbNullString
  loc_16AD05C:     If (global_156 = "RO") Then
  loc_16AD065:       global_152 = vbNullString
  loc_16AD069:     End If
  loc_16AD06C:   Else
  loc_16AD0AA:     Set var_9C = Me.Txt
  loc_16AD0B0:     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AD0B8:     var_C0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_16AD10C:     Set var_9C = Me.Txt
  loc_16AD112:     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AD11A:     var_C0.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_16AD164:     global_156 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Roomtype")))
  loc_16AD1A5:     global_152 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomCat")))
  loc_16AD1B2:     Call Proc_98_68_103E9D8(var_8E)
  loc_16AD1F5:     Set var_9C = Me.Txt
  loc_16AD1FB:     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AD203:     var_C0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_16AD257:     Set var_9C = Me.Txt
  loc_16AD25D:     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AD265:     var_C0.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_16AD2B7:     Set var_9C = Me.Txt
  loc_16AD2BD:     Call 0.Method_Txt_Validate0 (CInt(&H10), var_C0)
  loc_16AD2C5:     var_C0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TableNo")))
  loc_16AD315:     Set var_9C = Me.Txt
  loc_16AD31B:     Call 0.Method_Txt_Validate0 (CInt(0), var_C0)
  loc_16AD323:     var_C0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("DocID")))
  loc_16AD357:     var_98 = Me.Recordset15.Fields.Item("NetAmt")
  loc_16AD376:     Set var_9C = Me.LTxt
  loc_16AD37C:     Call 0.Method_Txt_Validate0 (CInt(&H1A), var_C0)
  loc_16AD384:     var_C0.Caption = CStr(var_98.Value)
  loc_16AD3AC:     Set var_94 = Me.LTxt
  loc_16AD3B2:     Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_16AD3BA:     var_98.Caption = CStr(0)
  loc_16AD3DB:     Set var_94 = Me.LTxt
  loc_16AD3E1:     Call 0.Method_Txt_Validate0 (CInt(&H1D), var_98)
  loc_16AD3E9:     var_98.Caption = CStr(0)
  loc_16AD418:     var_98 = Me.Recordset15.Fields.Item("NetAmt")
  loc_16AD437:     Set var_9C = Me.LTxt
  loc_16AD43D:     Call 0.Method_Txt_Validate0 (CInt(&H1C), var_C0)
  loc_16AD445:     var_C0.Caption = CStr(var_98.Value)
  loc_16AD45B:   End If
  loc_16AD45E: Else
  loc_16AD466:   If (var_8E = CInt(&H10)) Then
  loc_16AD473:     Set var_94 = Me.Txt
  loc_16AD479:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_16AD481:     var_A0 = "Table"
  loc_16AD4A2:     If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_16AD4B2:       Set var_94 = Me.Txt
  loc_16AD4B8:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AD4D2:       If (var_98.Enabled = &HFF) Then
  loc_16AD4DF:         Set var_94 = Me.Txt
  loc_16AD4E5:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AD4ED:         var_98.SetFocus
  loc_16AD4F9:       End If
  loc_16AD4FB:       arg_10 = &HFF
  loc_16AD4FE:       Exit Sub
  loc_16AD4FF:     End If
  loc_16AD54D:     Set var_94 = Me.Txt
  loc_16AD553:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AD55B:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16AD573:     If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16AD583:       Set var_94 = Me.Txt
  loc_16AD589:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AD591:       var_98.Text = vbNullString
  loc_16AD5AA:       Set var_94 = Me.Txt
  loc_16AD5B0:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AD5B8:       var_98.Tag = vbNullString
  loc_16AD5CF:       If (global_156 = "RO") Then
  loc_16AD5D8:         global_152 = vbNullString
  loc_16AD5DC:       End If
  loc_16AD5DF:     Else
  loc_16AD61A:       Set var_9C = Me.Txt
  loc_16AD620:       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AD628:       var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16AD679:       Set var_9C = Me.Txt
  loc_16AD67F:       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AD687:       var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16AD6A8:       If (global_156 = "RO") Then
  loc_16AD6DF:         global_152 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_16AD6F0:       End If
  loc_16AD704:       var_A0 = "SELECT Sale1.Docid,Sale1.Vno,sale1.NetAmt FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code WHERE  (SALE1.LOGSITE_CODE='" & MemVar_1F92078
  loc_16AD70B:       var_D4 = var_A0 & "' or SALE1.LOGSITE_CODE='HO') AND IsNull(PAYCHARGE.AmtCr, 0)< SALE1.NetAmt AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_16AD71C:       var_E8 = CVar(var_D4 & global_52 & "' and sale1.RoomNO='") 'String
  loc_16AD755:       var_118 = var_E8 & Me.Fields.Item("Code").Value & "' AND Sale1.DocId='" 
  loc_16AD776:       var_C0 = Me.Fields.Item("DocID")
  loc_16AD79D:       unk_54960A.Execute CStr(var_118 & var_C0.Value & "'"), var_18C, -1
  loc_16AD7A8:       Set var_88 = var_190
  loc_16AD7EA:       If (var_88.RecordCount > 0) Then
  loc_16AD7ED:         Call Proc_98_68_103E9D8(var_190)
  loc_16AD82D:         Set var_9C = Me.Txt
  loc_16AD833:         Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AD83B:         var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16AD88C:         Set var_9C = Me.Txt
  loc_16AD892:         Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AD89A:         var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16AD8D6:         Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("VNo")))
  loc_16AD8ED:         Set var_9C = Me.Txt
  loc_16AD8F3:         Call 0.Method_Txt_Validate0 (CInt(1), var_C0)
  loc_16AD8FB:         var_C0.Text = CStr(var_E8)
  loc_16AD949:         Set var_9C = Me.Txt
  loc_16AD94F:         Call 0.Method_Txt_Validate0 (CInt(0), var_C0)
  loc_16AD957:         var_C0.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")))
  loc_16AD985:         var_98 = var_88.Fields.Item("NetAmt")
  loc_16AD9A4:         Set var_9C = Me.LTxt
  loc_16AD9AA:         Call 0.Method_Txt_Validate0 (CInt(&H1A), var_C0)
  loc_16AD9B2:         var_C0.Caption = CStr(var_98.Value)
  loc_16AD9DA:         Set var_94 = Me.LTxt
  loc_16AD9E0:         Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_16AD9E8:         var_98.Caption = CStr(0)
  loc_16ADA09:         Set var_94 = Me.LTxt
  loc_16ADA0F:         Call 0.Method_Txt_Validate0 (CInt(&H1D), var_98)
  loc_16ADA17:         var_98.Caption = CStr(0)
  loc_16ADA40:         var_98 = var_88.Fields.Item("NetAmt")
  loc_16ADA51:         var_A0 = CStr(var_98.Value)
  loc_16ADA5F:         Set var_9C = Me.LTxt
  loc_16ADA65:         Call 0.Method_Txt_Validate0 (CInt(&H1C), var_C0)
  loc_16ADA6D:         var_C0.Caption = var_A0
  loc_16ADA83:       End If
  loc_16ADA83:     End If
  loc_16ADA86:   Else
  loc_16ADA8E:     If (var_8E = CInt(&H1E)) Then
  loc_16ADADF:       Set var_94 = Me.Txt
  loc_16ADAE5:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16ADAED:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16ADB05:       If (var_98 Or (var_A0 = vbNullString)) Then
  loc_16ADB15:         Set var_94 = Me.Txt
  loc_16ADB1B:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADB23:         var_98.Text = vbNullString
  loc_16ADB3C:         Set var_94 = Me.Txt
  loc_16ADB42:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADB4A:         var_98.Tag = vbNullString
  loc_16ADB59:       Else
  loc_16ADB94:         Set var_9C = Me.Txt
  loc_16ADB9A:         Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16ADBA2:         var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16ADBF9:         Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16ADC01:         var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16ADC56:         var_E8 = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & Me.Fields.Item("FolioNoDocid").Value 
  loc_16ADC5F:         var_F8 = var_E8 & "'" 
  loc_16ADC63:         var_A0 = CStr(var_F8)
  loc_16ADC6D:         unk_54960A.Execute var_A0, var_118, -1
  loc_16ADCAC:         var_98 = Me.Txt.Fields.Item(0)
  loc_16ADCCE:         If (var_98.Value > 0) Then
  loc_16ADCEA:           MsgBox("Guest Room Bill Already printed for this Room", &H10, var_E8, var_F8, var_118)
  loc_16ADCFF:           Set var_8C = Nothing
  loc_16ADD04:           arg_10 = &HFF
  loc_16ADD07:           Exit Sub
  loc_16ADD08:         End If
  loc_16ADD08:       End If
  loc_16ADD0B:     Else
  loc_16ADD13:       If (var_8E = CInt(2)) Then
  loc_16ADD24:         Set var_94 = Me.Txt
  loc_16ADD2A:         Call 0.Method_Txt_Validate0 (CInt(2), var_98, var_A0)
  loc_16ADD32:         arg_10 = var_98.Text
  loc_16ADD51:         Set var_9C = Me.Txt
  loc_16ADD57:         Call 0.Method_Txt_Validate0 (CInt(2), var_C0)
  loc_16ADD5F:         var_C0.Text = Proc_6_34_14ECF20(var_A0)
  loc_16ADD7C:         Call Proc_98_73_10C91E4(MemVar_1F92044, var_A0)
  loc_16ADD92:         Set var_94 = Me.Txt
  loc_16ADD98:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_16ADDB7:         If (var_98.Text = vbNullString) Then
  loc_16ADDBC:           arg_10 = &HFF
  loc_16ADDBF:         End If
  loc_16ADDC2:       Else
  loc_16ADDCA:         If (var_8E = CInt(&H16)) Then
  loc_16ADDD7:           Set var_94 = Me.Txt
  loc_16ADDDD:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADDFD:           Set var_C0 = Me.Txt
  loc_16ADE03:           Call 0.Method_Txt_Validate0 (Cancel, var_190)
  loc_16ADE0B:           var_190.Text = Proc_6_33_1512840(var_98, arg_10)
  loc_16ADE21:         Else
  loc_16ADE29:           If (var_8E = CInt(&H14)) Then
  loc_16ADE3A:             Set var_94 = Me.Txt
  loc_16ADE40:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_16ADE5F:             If (var_98.Text = vbNullString) Then
  loc_16ADE6C:               Set var_94 = Me.Txt
  loc_16ADE72:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADE9B:               If (Proc_6_27_EA565C(var_98, "Expiry Date") = 0) Then
  loc_16ADEA8:                 Set var_94 = Me.Txt
  loc_16ADEAE:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADEB6:                 var_98.SetFocus
  loc_16ADEC4:                 arg_10 = &HFF
  loc_16ADEC7:                 Exit Sub
  loc_16ADEC8:               End If
  loc_16ADEC8:             End If
  loc_16ADED2:             Set var_94 = Me.Txt
  loc_16ADED8:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADEF8:             Set var_C0 = Me.Txt
  loc_16ADEFE:             Call 0.Method_Txt_Validate0 (Cancel, var_190)
  loc_16ADF06:             var_190.Text = Proc_6_33_1512840(var_98, arg_10)
  loc_16ADF27:             Set var_94 = Me.Txt
  loc_16ADF2D:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_16ADF4D:             If (CDate(var_98.Text) <= MemVar_1F920EC) Then
  loc_16ADF69:               MsgBox("Credit Card has been Expired", &H40, var_E8, var_F8, var_118)
  loc_16ADF7B:               arg_10 = &HFF
  loc_16ADF7E:               Exit Sub
  loc_16ADF7F:             End If
  loc_16ADF82:           Else
  loc_16ADF8A:             If (var_8E = CInt(&HF)) Then
  loc_16ADF97:               Set var_94 = Me.Txt
  loc_16ADF9D:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADFA5:               var_A0 = "Payment Type"
  loc_16ADFC6:               If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_16ADFD3:                 Set var_94 = Me.Txt
  loc_16ADFD9:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16ADFE1:                 var_98.SetFocus
  loc_16ADFEF:                 arg_10 = &HFF
  loc_16ADFF2:                 Exit Sub
  loc_16ADFF3:               End If
  loc_16AE000:               Set var_94 = Me.Txt
  loc_16AE006:               Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AE025:               If (var_A0 <> vbNullString) Then
  loc_16AE063:                 Set var_9C = Me.Txt
  loc_16AE069:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0, CStr(Me.Fields.Item("Name").Value))
  loc_16AE071:                 var_C0.Text = Me.Fields.Item("Name").Text
  loc_16AE0C2:                 Set var_9C = Me.Txt
  loc_16AE0C8:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE0D0:                 var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_16AE117:                 global_160 = Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")))
  loc_16AE130:                 Me.FrEmp.Visible = False
  loc_16AE144:                 Me.FrChqDet.Visible = False
  loc_16AE158:                 Me.FrCCDet.Visible = False
  loc_16AE16C:                 Me.FrTxnNo.Visible = False
  loc_16AE18E:                 var_98 = Me.Fields.Item("PayType")
  loc_16AE1A3:                 Call Proc_98_76_11D4504(Proc_6_38_E68A98(CVar(var_98)))
  loc_16AE1B4:               Else
  loc_16AE1C1:                 Set var_94 = Me.Txt
  loc_16AE1C7:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE1CF:                 var_98.Text = vbNullString
  loc_16AE1E8:                 Set var_94 = Me.Txt
  loc_16AE1EE:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE1F6:                 var_98.Tag = vbNullString
  loc_16AE202:               End If
  loc_16AE205:             Else
  loc_16AE20D:               If Not (var_8E = CInt(&H11)) Then
  loc_16AE218:                 If (var_8E = CInt(&H19)) Then
  loc_16AE21B:                 End If
  loc_16AE225:                 Set var_94 = Me.Txt
  loc_16AE22B:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE237:                 Proc_6_40_EA50F0(CVar(var_98))
  loc_16AE24E:                 var_F8 = "0.00"
  loc_16AE257:                 var_E8 = CVar(var_9C) 'Double
  loc_16AE25E:                 var_118 = Format(var_E8, var_F8)
  loc_16AE266:                 var_A0 = CStr(var_118)
  loc_16AE274:                 Set var_9C = Me.Txt
  loc_16AE27A:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0, var_A0)
  loc_16AE282:                 var_C0.Text = 1
  loc_16AE2AC:                 Set var_9C = Me.LTxt
  loc_16AE2B2:                 Call 0.Method_Txt_Validate0 (CInt(&H1C), var_C0, var_D4)
  loc_16AE2BA:                 1 = var_C0.Caption
  loc_16AE2E0:                 Set var_94 = Me.Txt
  loc_16AE2E6:                 Call 0.Method_Txt_Validate0 (CInt(&H11), var_98, var_A0)
  loc_16AE2EE:                 (Cancel = CInt(&H11)) = var_98.Text
  loc_16AE31E:                 If ((Val(var_D4) And (CDbl(Val(var_A0)) > CDbl(Val(var_D4)))) And (global_172 = 0)) Then
  loc_16AE33A:                   MsgBox("Amount You have entered is greater than Actual amount", &H40, var_E8, var_F8, var_118)
  loc_16AE34C:                   arg_10 = &HFF
  loc_16AE34F:                   Exit Sub
  loc_16AE350:                 End If
  loc_16AE353:               Else
  loc_16AE35B:                 If (var_8E = CInt(&H1F)) Then
  loc_16AE3AC:                   Set var_94 = Me.Txt
  loc_16AE3B2:                   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AE3BA:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16AE3D2:                   If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16AE3E2:                     Set var_94 = Me.Txt
  loc_16AE3E8:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE3F0:                     var_98.Text = vbNullString
  loc_16AE409:                     Set var_94 = Me.Txt
  loc_16AE40F:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE417:                     var_98.Tag = vbNullString
  loc_16AE426:                   Else
  loc_16AE461:                     Set var_9C = Me.Txt
  loc_16AE467:                     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE46F:                     var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16AE4A2:                     var_98 = Me.Fields.Item("Code")
  loc_16AE4B3:                     var_A0 = CStr(var_98.Value)
  loc_16AE4C0:                     Set var_9C = Me.Txt
  loc_16AE4C6:                     Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE4CE:                     var_C0.Tag = var_A0
  loc_16AE4FE:                     Set var_94 = Me.Txt
  loc_16AE504:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AE50C:                     0 = var_98.Tag
  loc_16AE534:                     If (Proc_96_1_F8C534(Proc_6_38_E68A98(CVar(var_A0))) = 0) Then
  loc_16AE550:                       MsgBox("Credit Not Allowed.", 0, var_E8, var_F8, var_118)
  loc_16AE562:                       arg_10 = &HFF
  loc_16AE565:                       Exit Sub
  loc_16AE566:                     End If
  loc_16AE566:                   End If
  loc_16AE569:                 Else
  loc_16AE571:                   If (var_8E = CInt(&H20)) Then
  loc_16AE5C2:                     Set var_94 = Me.Txt
  loc_16AE5C8:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_16AE5D0:                     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_16AE5E8:                     If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_16AE5F8:                       Set var_94 = Me.Txt
  loc_16AE5FE:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE606:                       var_98.Text = vbNullString
  loc_16AE61F:                       Set var_94 = Me.Txt
  loc_16AE625:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE62D:                       var_98.Tag = vbNullString
  loc_16AE63C:                     Else
  loc_16AE677:                       Set var_9C = Me.Txt
  loc_16AE67D:                       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE685:                       var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_16AE6B8:                       var_98 = Me.Fields.Item("Code")
  loc_16AE6D6:                       Set var_9C = Me.Txt
  loc_16AE6DC:                       Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_16AE6E4:                       var_C0.Tag = CStr(var_98.Value)
  loc_16AE6FA:                     End If
  loc_16AE6FD:                   Else
  loc_16AE705:                     If (var_8E = CInt(&H12)) Then
  loc_16AE712:                       Set var_94 = Me.Txt
  loc_16AE718:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE741:                       If (Proc_6_27_EA565C(var_98, "Credit Card No.") = 0) Then
  loc_16AE74E:                         Set var_94 = Me.Txt
  loc_16AE754:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE75C:                         var_98.SetFocus
  loc_16AE76A:                         arg_10 = &HFF
  loc_16AE76D:                         Exit Sub
  loc_16AE76E:                       End If
  loc_16AE771:                     Else
  loc_16AE779:                       If (var_8E = CInt(&H13)) Then
  loc_16AE786:                         Set var_94 = Me.Txt
  loc_16AE78C:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE7B5:                         If (Proc_6_27_EA565C(var_98, "Account Holder Name") = 0) Then
  loc_16AE7C2:                           Set var_94 = Me.Txt
  loc_16AE7C8:                           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE7D0:                           var_98.SetFocus
  loc_16AE7DE:                           arg_10 = &HFF
  loc_16AE7E1:                           Exit Sub
  loc_16AE7E2:                         End If
  loc_16AE7E5:                       Else
  loc_16AE7ED:                         If (var_8E = CInt(3)) Then
  loc_16AE7FA:                           Set var_94 = Me.Txt
  loc_16AE800:                           Call 0.Method_Txt_Validate0 (Cancel, var_98, arg_10)
  loc_16AE829:                           If (Proc_6_27_EA565C(var_98, "Batch No.") = 0) Then
  loc_16AE836:                             Set var_94 = Me.Txt
  loc_16AE83C:                             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_16AE844:                             var_98.SetFocus
  loc_16AE852:                             arg_10 = &HFF
  loc_16AE855:                             Exit Sub
  loc_16AE856:                           End If
  loc_16AE856:                         End If
  loc_16AE856:                       End If
  loc_16AE856:                     End If
  loc_16AE856:                   End If
  loc_16AE856:                 End If
  loc_16AE856:               End If
  loc_16AE856:             End If
  loc_16AE856:           End If
  loc_16AE856:         End If
  loc_16AE856:       End If
  loc_16AE856:     End If
  loc_16AE856:   End If
  loc_16AE856: End If
  loc_16AE856: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F6EF8C
  'Data Table: 5495E4
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F6EE63: Me.DGPayType.Visible = False
  loc_F6EE71: var_AC = global_120
  loc_F6EE7D: If Not (var_AC = 5) Then
  loc_F6EE89:   If (var_AC = 6) Then
  loc_F6EE8C:   End If
  loc_F6EEA3:   If (Me.RecordCount > 0) Then
  loc_F6EEE2:     Set var_B8 = Me.Txt
  loc_F6EEE8:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F6EEF0:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F6EF23:     var_B4 = Me.Fields.Item("Code")
  loc_F6EF42:     Set var_B8 = Me.Txt
  loc_F6EF48:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_BC)
  loc_F6EF50:     var_BC.Tag = CStr(var_B4.Value)
  loc_F6EF66:   End If
  loc_F6EF71:   Set var_A8 = Me.Txt
  loc_F6EF77:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&HF), var_B4)
  loc_F6EF7F:   var_B4.SetFocus
  loc_F6EF8B: End If
  loc_F6EF8B: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E71544
  'Data Table: 5495E4
  loc_E71502: Proc_6_153_E91194(Me.DGPayType, arg_14)
  loc_E71519: Set var_8C = Me.FGPoint
  loc_E71535: Proc_6_138_106D6F8(Me.DGPayType, global_64, CInt(&HF))
  loc_E71543: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F37AA4
  'Data Table: 5495E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3799B: Me.DGEmp.Visible = False
  loc_F379BA: If (Me.RecordCount > 0) Then
  loc_F379F9:   Set var_B4 = Me.Txt
  loc_F379FF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F37A07:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F37A3A:   var_B0 = Me.Fields.Item("Code")
  loc_F37A59:   Set var_B4 = Me.Txt
  loc_F37A5F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F37A67:   var_B8.Tag = CStr(var_B0.Value)
  loc_F37A7D: End If
  loc_F37A88: Set var_A8 = Me.Txt
  loc_F37A8E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18))
  loc_F37A96: var_B0.SetFocus
  loc_F37AA2: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'E715D8
  'Data Table: 5495E4
  loc_E71596: Proc_6_153_E91194(Me.DGEmp, arg_14)
  loc_E715AD: Set var_8C = Me.FGPoint
  loc_E715C9: Proc_6_138_106D6F8(Me.DGEmp, global_68, CInt(&H18))
  loc_E715D7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0A7B0
  'Data Table: 5495E4
  loc_E0A79C: Call Proc_98_80_140E534()
  loc_E0A7A7: Call Proc_98_76_11D4504(global_160)
  loc_E0A7AC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE29CC
  'Data Table: 5495E4
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE2800: Set var_88 = Me.TopCtrl1
  loc_FE2806: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_FE281F: If (CStr() = "Browse") Then
  loc_FE2822:   Exit Sub
  loc_FE2823: End If
  loc_FE2840: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE2843:   Exit Sub
  loc_FE2844: End If
  loc_FE2855: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE2877:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE28B1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE28D3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE28E9:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE28F2:         Set var_110 = Me.FGrid
  loc_FE290D:       Else
  loc_FE2920:         Me.FGrid.Rows = 1
  loc_FE2944:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_FE294C:         Set var_110 = Me.FGrid
  loc_FE2979:         Me.FGrid.FixedRows = 1
  loc_FE2981:       End If
  loc_FE2981:     End If
  loc_FE2984:   Else
  loc_FE29A5:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE29B5:   End If
  loc_FE29B9:   Set var_88 = Me.FGrid
  loc_FE29CA: End If
  loc_FE29CA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E3F878
  'Data Table: 5495E4
  loc_E3F84E: If (Cancel = 2) Then
  loc_E3F869:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E3F871:   Call FGrid_UnknownEvent_9()
  loc_E3F876: End If
  loc_E3F876: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED1E68
  'Data Table: 5495E4
  loc_ED1DCC: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED1DCF:   Call DGTable_UnknownEvent_9()
  loc_ED1DD4: End If
  loc_ED1DF0: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED1DF3:   Call DGEmp_UnknownEvent_9()
  loc_ED1DF8: End If
  loc_ED1E14: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED1E17:   Call DGPayType_UnknownEvent_9()
  loc_ED1E1C: End If
  loc_ED1E38: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED1E3B:   Call DGRoom_UnknownEvent_9()
  loc_ED1E40: End If
  loc_ED1E5C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED1E5F:   Call DGCompany_UnknownEvent_9()
  loc_ED1E64: End If
  loc_ED1E64: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F43444
  'Data Table: 5495E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4333B: Me.DGCompany.Visible = False
  loc_F4335A: If (Me.RecordCount > 0) Then
  loc_F43399:   Set var_B4 = Me.Txt
  loc_F4339F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F433A7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F433DA:   var_B0 = Me.Fields.Item("Code")
  loc_F433F9:   Set var_B4 = Me.Txt
  loc_F433FF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F), var_B8)
  loc_F43407:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4341D: End If
  loc_F43428: Set var_A8 = Me.Txt
  loc_F4342E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H1F))
  loc_F43436: var_B0.SetFocus
  loc_F43442: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'E710A4
  'Data Table: 5495E4
  loc_E71062: Proc_6_153_E91194(Me.DGCompany, arg_14)
  loc_E71079: Set var_8C = Me.FGPoint
  loc_E71095: Proc_6_138_106D6F8(Me.DGCompany, global_84, CInt(&H1F))
  loc_E710A3: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3AEE4
  'Data Table: 5495E4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3ADDB: Me.DGRoom.Visible = False
  loc_F3ADFA: If (Me.RecordCount > 0) Then
  loc_F3AE39:   Set var_B4 = Me.Txt
  loc_F3AE3F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F3AE47:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3AE7A:   var_B0 = Me.Fields.Item("Code")
  loc_F3AE99:   Set var_B4 = Me.Txt
  loc_F3AE9F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E), var_B8)
  loc_F3AEA7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3AEBD: End If
  loc_F3AEC8: Set var_A8 = Me.Txt
  loc_F3AECE: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H1E))
  loc_F3AED6: var_B0.SetFocus
  loc_F3AEE2: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'E714B0
  'Data Table: 5495E4
  loc_E7146E: Proc_6_153_E91194(Me.DGRoom, arg_14)
  loc_E71485: Set var_8C = Me.FGPoint
  loc_E714A1: Proc_6_138_106D6F8(Me.DGRoom, global_76, CInt(&H1E))
  loc_E714AF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F7D124
  'Data Table: 5495E4
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  Dim var_8C As Label
  loc_F7CFD8: On Error Goto loc_F7D11E
  loc_F7CFFE: Call Proc_98_67_FDC82C(Proc_5_1_100CB50("ADD", Me))
  loc_F7D009: Call Proc_98_68_103E9D8(global_60)
  loc_F7D036: var_88 = CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))
  loc_F7D045: Set var_8C = Me.Txt
  loc_F7D04B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F7D053: var_D4.Text = 1
  loc_F7D06F: var_D8 = global_120
  loc_F7D07B: If Not (var_D8 = 5) Then
  loc_F7D087:   If (var_D8 = 6) Then
  loc_F7D08A:   End If
  loc_F7D097:   Set var_8C = Me.Txt
  loc_F7D09D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HF), var_D4, &HFF)
  loc_F7D0A5:   var_D4.Enabled = var_D8
  loc_F7D0BD:   If (global_116 = 2) Then
  loc_F7D0C6:     Call Proc_98_73_10C91E4(MemVar_1F92044, var_88)
  loc_F7D0D9:     Set var_8C = Me.Txt
  loc_F7D0DF:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_D4)
  loc_F7D0E7:     var_D4.SetFocus
  loc_F7D0F3:   End If
  loc_F7D0F3: End If
  loc_F7D100: Me.LblUser.Caption = vbNullString
  loc_F7D115: Me.LblLDt.Caption = vbNullString
  loc_F7D11D: Exit Sub
  loc_F7D11E: ' Referenced from: F7CFD8
  loc_F7D11E: Proc_6_60_E62BC4(1)
  loc_F7D123: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC592C
  'Data Table: 5495E4
  Dim MemVar_0 As Integer
  loc_EC5894: On Error Goto loc_EC5924
  loc_EC58CE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC58DD:   Set var_110 = Me
  loc_EC58F4:   Call Proc_98_67_FDC82C(Proc_5_1_100CB50("INI", var_110))
  loc_EC58FF:   Call Proc_98_71_FB6978(global_60)
  loc_EC5904:   Call Proc_98_70_15D3C04()
  loc_EC590C: Else
  loc_EC5912:   Call 0.Method_arg_1E8 (var_110)
  loc_EC591A:   Call var_110.SetFocus
  loc_EC5923: End If
  loc_EC5923: Exit Sub
  loc_EC5924: ' Referenced from: EC5894
  loc_EC5924: Proc_6_60_E62BC4()
  loc_EC5929: Exit Sub
  loc_EC592A: MemVar_0 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1070D08
  'Data Table: 5495E4
  Dim unk_54960A As Connection15
  Dim Me As Recordset15
  Dim var_11C As Variant
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_1070A80: On Error Goto loc_1070CB7
  loc_1070A91: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_1070A94:   Exit Sub
  loc_1070A95: End If
  loc_1070ACC: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_1070AD8:   unk_54960A.BeginTrans var_118
  loc_1070AEE:   var_94 = Me.Bookmark 'Variant
  loc_1070B3A:   var_F4 = "Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1070B3E:   var_124 = CStr(var_F4)
  loc_1070B48:   unk_54960A.Execute var_124, var_114, -1
  loc_1070B6A:   unk_54960A.CommitTrans
  loc_1070B7A:   Me.Requery -1
  loc_1070B8D:   Me.Recordset15.Requery -1
  loc_1070B9D:   Me.Requery -1
  loc_1070BAE:   CVarUnk
  loc_1070BB3:   VerifyVarObj
  loc_1070BB9:   Set var_11C = Me.FGrid1
  loc_1070BBF:   LateIdStAd
  loc_1070BE7:   If (Me.FGrid1.RecordCount <= 0) Then
  loc_1070BFD:     Me.FGrid1.Rows = 2
  loc_1070C18:     Me.FGrid1.FixedRows = 1
  loc_1070C2D:     Set var_11C = Me.FGrid1
  loc_1070C33:     var_11C.Row = 1
  loc_1070C3B:   End If
  loc_1070C56:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1070C63:     Me.Bookmark = var_94
  loc_1070C6B:   Else
  loc_1070C7F:     If (Me.EOF = 0) Then
  loc_1070C88:       Me.MoveLast
  loc_1070C8D:     End If
  loc_1070C8D:   End If
  loc_1070C8D:   Call Proc_98_70_15D3C04(var_11C, global_88)
  loc_1070CAE:   Proc_5_0_110649C(&HFF, Me, global_60)
  loc_1070CB6: End If
  loc_1070CB6: Exit Sub
  loc_1070CB7: ' Referenced from: 1070A80
  loc_1070CBD: unk_54960A.RollbackTrans
  loc_1070CCA: Set var_11C = Err()
  loc_1070CD0: Call 0.Method_arg_2C (var_124, 0)
  loc_1070CF1: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_1070D04: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F059EC
  'Data Table: 5495E4
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F05904: On Error Goto loc_F059E5
  loc_F05915: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_F05918:   Exit Sub
  loc_F05919: End If
  loc_F0593C: Call Proc_98_67_FDC82C(Proc_5_1_100CB50("EDIT", Me))
  loc_F05954: Set var_8C = Me.Txt
  loc_F0595A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F05962: var_94.Enabled = False
  loc_F0597B: Set var_8C = Me.Txt
  loc_F05981: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H10), var_94)
  loc_F05989: var_94.Enabled = False
  loc_F059A0: Set var_8C = Me.Txt
  loc_F059A6: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HF), var_94)
  loc_F059AE: var_94.SetFocus
  loc_F059C7: Me.LblUser.Caption = vbNullString
  loc_F059DC: Me.LblLDt.Caption = vbNullString
  loc_F059E4: Exit Sub
  loc_F059E5: ' Referenced from: F05904
  loc_F059E5: Proc_6_60_E62BC4(global_60)
  loc_F059EA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19DC0
  'Data Table: 5495E4
  loc_E19DB5: Me.Global.Unload Me
  loc_E19DBD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '105A100
  'Data Table: 5495E4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim var_108 As Variant
  Dim var_144 As Variant
  Dim MemVar_1F920E4 As String
  Dim var_124 As Variant
  Dim var_1D4 As Variant
  Dim var_A8 As Variant
  loc_1059EB0: On Error Goto loc_105A098
  loc_1059EBC: var_88 = Me.RecordCount
  loc_1059ECA: If (var_88 <= 0) Then
  loc_1059EEE:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_1059EFE:   Exit Sub
  loc_1059EFF: End If
  loc_1059F0A: var_A8 = Ucase(MemVar_1F920C8)
  loc_1059F33: If CBool((var_A8 = "SA") Or (MemVar_1F920B8 = 1)) Then
  loc_1059F3D:   var_10C = "SELECT Sale1.DocId as SearchCode,max(Sale1.vNO) as Bill_No,MAX(T.CODE) AS Table_No,CAST(max(SALE1.VDATE) AS VARCHAR(11)) as Bill_Date FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F92078
  loc_1059F44:   var_110 = var_10C & "'  AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_1059F63:   Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_1059F83:   Proc_6_7_F25D88(var_124, MemVar_1F920FC)
  loc_1059F94:   var_144 = CVar(var_110 & global_52 & "' AND Sale1.VDate between ") & var_A8 & " and " & var_124 & " GROUP BY SALE1.DOCID ORDER BY max(Sale1.vNO),MAX(T.Code)" 
  loc_1059F99:   MemVar_1F920E4 = CStr(var_144)
  loc_1059FBA: Else
  loc_1059FC1:   var_10C = "SELECT Sale1.DocId as SearchCode,max(Sale1.vNO) as Bill_No,MAX(T.CODE) AS Table_No,CAST(max(SALE1.VDATE) AS VARCHAR(11)) as Bill_Date FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F92078
  loc_1059FD6:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_1059FDE:   var_E8 = CVar(var_10C & "' aND PCHRG.VDATE=") & var_A8 
  loc_1059FE2:   var_B8 = " AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_1059FE7:   var_108 = var_E8 & var_B8 
  loc_105A00C:   Proc_6_7_F25D88(var_144, MemVar_1F920F4)
  loc_105A02C:   Proc_6_7_F25D88(var_1A4, MemVar_1F920FC)
  loc_105A03D:   var_1D4 = var_108 & CVar(global_52) & "' AND Sale1.VDate between " & var_144 & " and " & var_1A4 & " GROUP BY SALE1.DOCID ORDER BY max(Sale1.vNO),MAX(T.Code)" 
  loc_105A042:   MemVar_1F920E4 = CStr(var_1D4)
  loc_105A064: End If
  loc_105A06A: MemVar_1F92120 = Me
  loc_105A071: var_10C = "1100,1100,1500"
  loc_105A077: Proc_6_126_F1BCC0(var_10C, MemVar_1F920E4)
  loc_105A092: Call 0.Method_arg_2B0 (1, var_B8)
  loc_105A097: Exit Sub
  loc_105A098: ' Referenced from: 1059EB0
  loc_105A0A0: Set var_1D8 = Err()
  loc_105A0A6: Call 0.Method_arg_1C (var_88)
  loc_105A0B7: If (var_88 <> 0) Then
  loc_105A0C2:   Set var_1D8 = Err()
  loc_105A0C8:   Call 0.Method_arg_2C (var_10C)
  loc_105A0E9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_105A0FC: End If
  loc_105A0FC: Exit Sub
  loc_105A0FD: ThisVCallI2
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E341B8
  'Data Table: 5495E4
  loc_E341A8: Proc_5_0_110649C(&HFF, Me)
  loc_E341B0: Call Proc_98_70_15D3C04(global_60)
  loc_E341B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A3F8
  'Data Table: 5495E4
  loc_E3A3E8: Proc_5_0_110649C(&HFF, Me)
  loc_E3A3F0: Call Proc_98_70_15D3C04(global_60)
  loc_E3A3F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3A398
  'Data Table: 5495E4
  loc_E3A388: Proc_5_0_110649C(&HFF, Me)
  loc_E3A390: Call Proc_98_70_15D3C04(global_60)
  loc_E3A395: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3A338
  'Data Table: 5495E4
  loc_E3A328: Proc_5_0_110649C(&HFF, Me)
  loc_E3A330: Call Proc_98_70_15D3C04(global_60)
  loc_E3A335: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E82934
  'Data Table: 5495E4
  Dim Me As Recordset15
  loc_E828CB: Me.Requery -1
  loc_E828DB: Me.Requery -1
  loc_E828EB: Me.Requery -1
  loc_E828FB: Me.Requery -1
  loc_E8290B: Me.Requery -1
  loc_E8291B: Me.Requery -1
  loc_E8292B: Me.Requery -1
  loc_E82930: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1737F78
  'Data Table: 5495E4
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_124 As String
  Dim var_EC As Variant
  Dim var_158 As Long
  Dim var_15C As Variant
  Dim var_164 As Variant
  Dim var_170 As Double
  Dim unk_54960A As Connection15
  Dim var_168 As String
  Dim var_17C As String
  Dim var_AC As Variant
  Dim var_184 As Long
  Dim var_98 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_290 As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Long
  Dim var_360 As Variant
  Dim var_380 As Variant
  Dim var_394 As MSHFlexGrid
  Dim var_3B4 As Variant
  Dim var_3D4 As Variant
  Dim var_3E8 As Variant
  Dim var_34C As String
  Dim var_408 As Variant
  Dim var_4B8 As Variant
  Dim var_4D8 As Variant
  Dim var_4FC As Variant
  Dim var_580 As MSHFlexGrid
  Dim var_590 As Variant
  Dim var_5D8 As Variant
  Dim var_64C As Long
  Dim var_674 As String
  Dim var_EB4 As Double
  Dim var_70C As String
  Dim var_EBC As Double
  Dim var_7F4 As TextBox
  Dim var_840 As TextBox
  Dim var_8D8 As Variant
  Dim var_96C As Variant
  Dim var_A00 As Variant
  Dim var_A94 As Variant
  Dim var_B38 As Variant
  Dim var_1E0 As String
  Dim var_1EC As String
  Dim var_1F4 As String
  Dim var_200 As String
  Dim var_204 As String
  Dim var_208 As String
  Dim var_220 As Variant
  Dim var_270 As Variant
  Dim var_2C4 As Variant
  Dim var_2F4 As Variant
  Dim var_478 As Variant
  Dim var_488 As Variant
  Dim var_5B0 As Variant
  Dim var_5FC As Variant
  Dim var_6B4 As Variant
  Dim var_74C As Variant
  Dim var_78C As Variant
  Dim var_7CC As Variant
  Dim var_8E8 As Variant
  Dim var_918 As Variant
  Dim var_A20 As Variant
  Dim var_A40 As Variant
  Dim var_CDC As Variant
  Dim var_134 As Variant
  Dim var_1D8 As String
  Dim var_C8 As Recordset15
  Dim var_314 As Variant
  Dim var_334 As Long
  Dim var_5D4 As Variant
  Dim var_1F8 As String
  Dim var_438 As Variant
  Dim var_C4 As Double
  Dim var_EEC As Double
  Dim var_210 As TextBox
  Dim var_EF4 As Double
  Dim var_EFC As Double
  Dim Me As Recordset15
  loc_1736514: On Error Goto loc_1737F23
  loc_1736517: var_DC = 1
  loc_1736520: var_FC = 1
  loc_173653E: var_124 = CStr(Me.FGrid.TextMatrix))
  loc_173654F: If (var_124 = vbNullString) Then
  loc_173655D:   var_134 = "Save Data"
  loc_1736568:   var_DC = "Please Fill Payment Details Before Saving.."
  loc_1736573:   MsgBox(var_DC, &H40, var_134, var_144, var_154)
  loc_1736583:   Exit Sub
  loc_1736584: End If
  loc_173658A: var_158 = global_120
  loc_1736596: If Not (var_158 = 5) Then
  loc_17365A2:   If (var_158 = 6) Then
  loc_17365A5:   End If
  loc_17365B3:   Set var_110 = Me.LTxt
  loc_17365B9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_15C, var_124)
  loc_17365C1:   var_158 = var_15C.Caption
  loc_17365DD:   If (CDbl(Val(var_124)) <> CDbl(0)) Then
  loc_17365EE:     Set var_160 = Me.LTxt
  loc_17365F4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_164, var_168)
  loc_17365FC:     var_FC = var_164.Caption
  loc_1736609:     var_170 = Val(var_168)
  loc_173661A:     Set var_110 = Me.LTxt
  loc_1736620:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_15C, var_124)
  loc_173664D:     If (CDbl(Val(var_124)) <> CDbl(var_15C.Caption)) Then
  loc_173666F:       MsgBox(CVar("Bill Amount and Received Amount Not Matched" & vbCrLf & "Entry could not be Saved?"), 0, var_134, var_144, var_154)
  loc_1736682:       Exit Sub
  loc_1736683:     End If
  loc_1736683:   End If
  loc_1736683: End If
  loc_1736686: Call Proc_98_66_10120A8(var_172)
  loc_1736691: If (var_172 = 0) Then
  loc_1736694:   Exit Sub
  loc_1736695: End If
  loc_1736699: Set var_110 = Me.TopCtrl1
  loc_173669F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_DC)
  loc_17366B8: If (CStr() = "Add") Then
  loc_17366C1:   global_176 = MemVar_1F920C8
  loc_17366CA:   var_124 = Proc_6_14_EF349C()
  loc_17366D2:   global_180 = CDate(var_124)
  loc_17366D8: End If
  loc_17366DC: var_86 = CByte(0) 'Byte
  loc_17366E9: unk_54960A.BeginTrans var_178
  loc_17366F2: var_86 = CByte(1) 'Byte
  loc_1736714: Set var_110 = Me.Txt
  loc_173671A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "Delete From PayCharge Where Docid='")
  loc_1736722: var_120 = var_15C.Text
  loc_173672B: var_168 = -1 & var_124
  loc_173673B: unk_54960A.Execute var_168 & "'", var_160, global_180
  loc_173677A: For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_180 'Integer
  loc_1736784:   var_DC = CVar(CLng(var_AA)) 'Long
  loc_1736789:   var_FC = 2
  loc_1736796:   Set var_110 = Me.FGrid
  loc_173679C:   var_120 = var_110.TextMatrix)
  loc_17367B8:   If (CStr(var_120) <> vbNullString) Then
  loc_17367C1:     var_AC = (var_AC + 1)
  loc_17367CA:     var_184 = global_120
  loc_17367D6:     If Not (var_184 = 5) Then
  loc_17367E2:       If (var_184 = 6) Then
  loc_17367E5:       End If
  loc_17367FC:       var_124 = "Select Name,ShortName from depart where code='" & global_52
  loc_173680C:       unk_54960A.Execute var_124 & "'", var_120, -1
  loc_1736817:       Set var_98 = var_110
  loc_173683B:       If (var_98.RecordCount > 0) Then
  loc_173684D:         var_110 = var_98.Fields
  loc_1736855:         var_15C = var_110.Item("ShortName")
  loc_173686C:         var_EC = " ("
  loc_1736871:         var_144 = (Trim(CVar(var_15C)) + var_EC)
  loc_1736875:         var_FC = "BILL NO.- "
  loc_173687A:         var_154 = (var_144 + var_FC)
  loc_173688C:         Set var_160 = Me.Txt
  loc_1736892:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_124, var_154, var_110)
  loc_173689A:         var_184 = var_164.Text
  loc_17368A5:         var_1A4 = (var_AC + CVar(var_124))
  loc_17368AE:         var_1B4 = (var_1A4 + " ")
  loc_17368B7:         var_1D4 = (var_1B4 + ")")
  loc_17368BC:         var_94 = CStr(var_1D4)
  loc_17368DB:       End If
  loc_17368E0:       Set var_98 = Nothing
  loc_17368E8:       Set var_9C = Nothing
  loc_17368F9:       Set var_110 = Me.Txt
  loc_17368FF:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_1D8)
  loc_1736907:       var_FC = var_15C.Text
  loc_1736920:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_1F8)
  loc_1736928:       var_DC = var_164.Text
  loc_1736948:       Set var_20C = Me.Txt
  loc_173694E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210)
  loc_173695D:       Proc_6_7_F25D88(var_1B4, CVar(var_210))
  loc_173698E:       var_1C4 = CVar(CLng(var_AA)) 'Long
  loc_1736996:       var_290 = CVar(CLng(&H10)) 'Long
  loc_17369B5:       var_304 = CVar(CLng(var_AA)) 'Long
  loc_17369BA:       var_324 = 1
  loc_17369DD:       var_360 = CVar(CLng(var_AA)) 'Long
  loc_17369E2:       var_380 = &H14
  loc_1736A05:       var_3B4 = CVar(CLng(var_AA)) 'Long
  loc_1736A0A:       var_3D4 = &H18
  loc_1736A4C:       var_438 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F92078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1736A55:       var_4B8 = CVar(CLng(var_AA)) 'Long
  loc_1736A5A:       var_4D8 = 1
  loc_1736A6D:       var_4FC = Me.FGrid.TextMatrix)
  loc_1736A95:       var_590 = Me.FGrid.TextMatrix)
  loc_1736AAF:       Set var_5D4 = Me.LTxt
  loc_1736AB5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_5D8, var_5DC, var_590, 2, CVar(CLng(var_AA)), var_4FC)
  loc_1736ABD:       var_4D8 = var_5D8.Caption
  loc_1736ACA:       var_170 = Val(var_5DC)
  loc_1736AD6:       var_64C = 8
  loc_1736AFC:       var_EB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1736B2E:       var_EBC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1736B3F:       Set var_7F0 = Me.Txt
  loc_1736B45:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_7F4, var_7F8, var_EBC, &H11, CVar(CLng(var_AA)), var_EB4)
  loc_1736B4D:       var_64C = var_7F4.Text
  loc_1736B60:       Set var_83C = Me.Txt
  loc_1736B66:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_840, var_844, CVar(CLng(var_AA)), var_170)
  loc_1736B6E:       var_4B8 = var_840.Tag
  loc_1736B7B:       var_EC4 = Val(var_844)
  loc_1736B99:       var_8D8 = Me.FGrid.TextMatrix)
  loc_1736BC0:       var_96C = Me.FGrid.TextMatrix)
  loc_1736BE7:       var_A00 = Me.FGrid.TextMatrix)
  loc_1736C1F:       Proc_6_7_F25D88(var_AB4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_A00, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_96C)
  loc_1736C3F:       var_B38 = Me.FGrid.TextMatrix)
  loc_1736C50:       Proc_6_17_EAA2B0(var_B58, CVar(CStr(var_B38)), CVar(CLng(&H1A)), CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_1736C81:       Proc_6_7_F25D88(var_BFC, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_8D8)
  loc_1736C94:       Proc_6_7_F25D88(var_C8C, Date, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_1736CC6:       Proc_6_39_E7C810(var_D70, CVar(CStr(Me.FGrid.TextMatrix))), &H17, CVar(CLng(var_AA)))
  loc_1736CD9:       Proc_6_17_EAA2B0(var_E00, global_176, var_EC4)
  loc_1736CEC:       Proc_6_8_EB0DE4(var_E50, global_180)
  loc_1736D05:       var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_1736D13:       var_17C = var_124 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,BatchNo,LOGSITE_CODE,AU_Name,AU_EntDt) Values ("
  loc_1736D34:       var_1EC = var_17C & "'" & var_1D8 & "'," & CStr(var_AC)
  loc_1736D6E:       var_154 = CVar(var_1EC & ",'" & global_128 & "','" & var_1F8 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_1736D72:       var_DC = "',"
  loc_1736D82:       var_EC = ",'"
  loc_1736DAE:       var_2F4 = var_154 & var_DC & var_1B4 & var_EC & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_1736E04:       var_5FC = var_2F4 & var_438 & "','" & CVar(var_94) & "','" & CVar(CStr(var_4FC)) & "','" & CVar(CStr(var_590)) & "'," & CVar(var_170) 
  loc_1736E61:       var_7CC = var_5FC & "," & CVar(var_EB4) & "," & CVar(var_EBC) & ",'" & CVar(global_152) & "'," & "'" & CVar(global_156) 
  loc_1736E99:       var_8E8 = CVar(CStr(var_8D8)) 'String
  loc_1736EC4:       var_A20 = var_7CC & "','" & CVar(var_7F8) & "'," & CVar(var_EC4) & ",'" & var_8E8 & "','" & CVar(CStr(var_96C)) & "','" & CVar(CStr(var_A00)) 
  loc_1736ECD:       var_A40 = var_A20 & "'," 
  loc_1736F2D:       var_CDC = var_A40 & var_AB4 & "," & var_B58 & "," & var_BFC & ",'" & CVar(MemVar_1F920C8) & "'," & var_C8C & ",'A','" & CVar(global_52) 
  loc_1736F87:       unk_54960A.Execute CStr(var_CDC & "'," & var_D70 & ",'" & CVar(MemVar_1F92078) & "'," & var_E00 & "," & var_E50 & ")"), var_EA4, -1
  loc_17370D1:       var_AC = (var_AC + 1)
  loc_17370D8:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17370DD:       var_FC = 2
  loc_17370EA:       Set var_110 = Me.FGrid
  loc_17370F0:       var_120 = var_110.TextMatrix)
  loc_173710C:       If (CStr(var_120) = "Room") Then
  loc_173713A:         unk_54960A.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_120, -1
  loc_1737145:         Set var_98 = var_110
  loc_173716B:         If (var_98.RecordCount > 0) Then
  loc_173719A:           var_15C = var_98.Fields.Item("TaxStru")
  loc_17371AA:           var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_17371B3:           var_144 = var_134 & "' Order by Sno" 
  loc_17371C1:           unk_54960A.Execute CStr(var_144), var_154, -1
  loc_17371CC:           Set var_A0 = Me.Txt
  loc_17371E9:         Else
  loc_1737202:           MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_1737218:           unk_54960A.RollbackTrans
  loc_173721D:           Exit Sub
  loc_173721E:         End If
  loc_1737222:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1737227:         var_FC = &H16
  loc_173725A:         var_124 = "Select Docid,GuestProf from GuestFolio where LOGSITE_CODE='" & MemVar_1F92078
  loc_173727C:         unk_54960A.Execute var_124 & "' AND Docid='" & CStr(Me.FGrid.TextMatrix)) & "' ORDER BY VDATE DESC", var_134, -1
  loc_1737287:         Set var_C8 = var_15C
  loc_17372B9:         If (var_C8.RecordCount > 0) Then
  loc_17372C2:           var_DC = "GuestProf"
  loc_17372D6:           var_15C = var_C8.Fields.Item(var_DC)
  loc_17372DE:           var_120 = var_15C.Value
  loc_17372E7:           var_CC = CStr(var_120)
  loc_17372F4:         End If
  loc_1737308:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_15C, var_120, var_FC, var_DC)
  loc_1737310:         var_160 = var_15C.Text
  loc_1737323:         Set var_160 = Me.Txt
  loc_1737329:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_1EC, Me.Txt, var_FC)
  loc_1737331:         var_DC = var_164.Text
  loc_1737351:         Set var_20C = Me.Txt
  loc_1737357:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_AC)
  loc_1737366:         Proc_6_7_F25D88(var_1B4, CVar(var_210))
  loc_1737382:         var_240 = "HH:mm"
  loc_17373BE:         var_314 = CVar(CLng(var_AA)) 'Long
  loc_17373C3:         var_334 = 2
  loc_17373E6:         var_380 = CVar(CLng(var_AA)) 'Long
  loc_17373EB:         var_3B4 = 8
  loc_17373F8:         Set var_3E8 = Me.FGrid
  loc_1737418:         var_408 = CVar(CLng(var_AA)) 'Long
  loc_173741D:         var_478 = &H12
  loc_1737430:         var_4FC = Me.FGrid.TextMatrix)
  loc_1737471:         var_5B0 = Me.FGrid.TextMatrix)
  loc_17374B8:         var_6B4 = Me.FGrid.TextMatrix)
  loc_17374F4:         var_78C = Me.FGrid.TextMatrix)
  loc_1737520:         var_EB4 = Val(CStr(Right(CVar(CStr(var_78C)), 8)))
  loc_1737531:         Proc_6_7_F25D88(var_8E8, Date, var_EB4, var_78C, &H16, CVar(CLng(var_AA)), var_6B4, &H12)
  loc_173756B:         Proc_6_17_EAA2B0(var_A40, global_176, CVar(CLng(var_AA)), var_5B0, &H12)
  loc_173757E:         Proc_6_8_EB0DE4(var_AB4, global_180, CVar(CLng(var_AA)), var_4FC)
  loc_1737597:         var_168 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LOGSITE_CODE,AU_Name,AU_EntDt)Values " & "('"
  loc_17375B1:         var_1E0 = var_168 & var_124 & "'," & CStr(var_AC)
  loc_17375EB:         var_154 = CVar(var_1E0 & ",'" & global_128 & "'," & var_1EC & ",'" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_173763D:         var_2F4 = var_154 & "'," & var_1B4 & ",'" & CVar(Format$(Time, var_240)) & "','" & CVar(var_CC) & "','" & CVar(var_94) & "','" 
  loc_173766C:         var_488 = var_2F4 & var_98.Fields.Item("Code").Value & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(var_3E8.TextMatrix)))) 
  loc_173769C:         var_74C = var_488 & ",'" & Mid(CVar(CStr(var_4FC)), 3, 5) & "','" & LTrim(Left(CVar(CStr(var_5B0)), 2)) & "','" & Right(CVar(CStr(var_6B4)), 5) 
  loc_17376EE:         var_918 = var_74C & "'," & CVar(var_EB4) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F920C8) & "'," & var_8E8 & ",'A','" 
  loc_173772E:         var_A94 = var_918 & CVar(global_52) & "','" & var_C8.Fields.Item("DocID").Value & "','" & CVar(MemVar_1F92078) & "'," & var_A40 
  loc_1737755:         unk_54960A.Execute CStr(var_A94 & "," & var_AB4 & ")"), var_B38, -1
  loc_173783B:         var_AC = (var_AC + 1)
  loc_1737842:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1737847:         var_FC = &H12
  loc_173787E:         var_B4 = CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5))
  loc_1737891:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_1737896:         var_FC = &H12
  loc_17378D8:         var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_17378ED:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_17378F2:         var_FC = &H16
  loc_1737949:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_173794E:         var_FC = &H12
  loc_173798A:         var_B0 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_173799F:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_17379A4:         var_FC = 8
  loc_17379C2:         var_124 = CStr(Me.FGrid.TextMatrix))
  loc_17379CA:         var_170 = Val(var_124)
  loc_17379D4:         var_C4 = (var_C4 + var_170)
  loc_17379EE:         Set var_110 = Me.Txt
  loc_17379F4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_1E0, var_C4, var_170, var_FC, var_DC)
  loc_17379FC:         var_120 = var_15C.Text
  loc_1737A0F:         Set var_160 = Me.Txt
  loc_1737A15:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_164, var_124, var_FC, var_DC)
  loc_1737A1D:         var_120 = var_164.Text
  loc_1737A2A:         var_EEC = Val(var_124)
  loc_1737A38:         var_134 = Trim(CVar(Me.LblVPrefix))
  loc_1737A4B:         Set var_20C = Me.Txt
  loc_1737A51:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_1EC, var_EEC)
  loc_1737A59:         var_FC = var_210.Text
  loc_1737A61:         var_144 = Time
  loc_1737A75:         var_154 = "HH:mm"
  loc_1737A89:         var_1A4 = Trim(CVar(Format$(var_144, var_154)))
  loc_1737AB0:         var_2B4 = var_98.Fields.Item("Code").Value
  loc_1737AC3:         Set var_394 = Me.LTxt
  loc_1737AC9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_3E8, var_168, 1)
  loc_1737AD1:         1 = var_3E8.Caption
  loc_1737ADE:         var_EF4 = Val(var_168)
  loc_1737AE5:         var_FC = CVar(CLng(var_AA)) 'Long
  loc_1737AEA:         var_1C4 = 8
  loc_1737B10:         var_EFC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1737B21:         var_1D4 = Date
  loc_1737B29:         var_220 = Date
  loc_1737B31:         var_230 = Now
  loc_1737B3A:         Set var_580 = Me.TopCtrl1
  loc_1737B40:         Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(Val(CStr(Val(CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))))
  loc_1737B72:         var_270 = IIf((CStr(var_240) = "Add"), "A", "E")
  loc_1737B99:         var_2C4 = var_C8.Fields.Item("DocID").Value
  loc_1737BA3:         var_844 = 0
  loc_1737BAE:         var_7F8 = 0
  loc_1737BC1:         var_70C = 0
  loc_1737BCC:         var_674 = 0
  loc_1737C09:         var_34C = vbNullString
  loc_1737C12:         var_208 = vbNullString
  loc_1737C1B:         var_204 = vbNullString
  loc_1737C49:         var_200 = "Room"
  loc_1737C5D:         var_1F8 = vbNullString
  loc_1737C66:         var_1F4 = vbNullString
  loc_1737CAA:         Proc_96_8_1CC2560(MemVar_1F92078 & "TOUT", var_1E0, var_AC, global_128, CLng(var_EEC), MemVar_1F92070, CStr(var_134), CDate(var_1EC))
  loc_1737D22:       End If
  loc_1737D22:     End If
  loc_1737D22:   End If
  loc_1737D25: Next var_180 'Integer
  loc_1737D2F: Set var_98 = Nothing
  loc_1737D37: Set var_9C = Nothing
  loc_1737D3F: Set var_A0 = Nothing
  loc_1737D47: Set var_A4 = Nothing
  loc_1737D50: unk_54960A.CommitTrans
  loc_1737D59: var_86 = CByte(0) 'Byte
  loc_1737D6E: If (OpenMode = 1) Then
  loc_1737D7E:   Me.Global.Unload Me
  loc_1737D86:   Exit Sub
  loc_1737D87: End If
  loc_1737D92: Me.Requery -1
  loc_1737DA2: Me.Requery -1
  loc_1737DB5: Me.Recordset15.Requery -1
  loc_1737DC5: Me.Requery -1
  loc_1737DD6: CVarUnk
  loc_1737DDB: VerifyVarObj
  loc_1737DE1: Set var_110 = Me.FGrid1
  loc_1737DE7: LateIdStAd
  loc_1737E0F: If (Me.FGrid1.RecordCount <= 0) Then
  loc_1737E25:   Me.FGrid1.Rows = 2
  loc_1737E40:   Me.FGrid1.FixedRows = 1
  loc_1737E48:   var_DC = 1
  loc_1737E5B:   Me.FGrid1.Row = var_DC
  loc_1737E63: End If
  loc_1737E88: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "SearchCode='", 0)
  loc_1737E90: 1 = var_15C.Text
  loc_1737EA9: Me.Find var_DC & var_124 & "'", Me.Txt, global_88
  loc_1737EC2: Set var_110 = Me.TopCtrl1
  loc_1737EC8: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1737EE1: If (CStr() = "Add") Then
  loc_1737EE4:   Call TopCtrl1_UnknownEvent_A()
  loc_1737EE9:   Exit Sub
  loc_1737EEA: End If
  loc_1737EFF: var_124 = "INI"
  loc_1737F0D: Call Proc_98_67_FDC82C(Proc_5_1_100CB50(var_124, Me))
  loc_1737F18: Call Proc_98_71_FB6978(global_60)
  loc_1737F1D: Call Proc_98_70_15D3C04()
  loc_1737F22: Exit Sub
  loc_1737F23: ' Referenced from: 1736514
  loc_1737F2C: If (CInt(var_86) = 1) Then
  loc_1737F35:   unk_54960A.RollbackTrans
  loc_1737F3A: End If
  loc_1737F42: Set var_110 = Err()
  loc_1737F48: Call 0.Method_arg_2C (var_124)
  loc_1737F61: MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_1737F74: Exit Sub
End Sub

Private Sub Form_Load() '1495108
  'Data Table: 5495E4
  Dim var_A8 As String
  Dim var_AC As Variant
  Dim var_C4 As Variant
  Dim var_D8 As Long
  Dim var_E8 As Variant
  Dim var_B0 As String
  Dim unk_54960A As Connection15
  Dim var_EC As Variant
  Dim var_90 As Recordset15
  Dim var_B4 As String
  Dim var_F8 As String
  Dim var_100 As Long
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_190 As Variant
  Dim var_1AC As String
  Dim var_1B8 As String
  loc_14944BC: On Error Goto loc_14950C1
  loc_14944C7: var_A8 = 0
  loc_14944F8: Me.LblFormCaption.Caption = var_9C & " Bill Settlement"
  loc_149450A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), Proc_96_17_FDBD80(global_52, var_A0, var_9C))
  loc_149451E: Me.LblUser.Left = CDbl(13500)
  loc_1494535: Me.LblUser.Top = CDbl(7800)
  loc_149454C: Me.LblLDt.Top = CDbl(8160)
  loc_1494563: Me.LblLDt.Left = CDbl(13500)
  loc_1494589: var_A8 = 0
  loc_1494595: Proc_96_17_FDBD80(global_52, var_A8, 0, 0)
  loc_14945B6: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_14945D1: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_14945E7: Me.FrRem.BackColor = CLng(MemVar_1F921B0)
  loc_14945F5: var_D8 = global_120
  loc_1494601: If Not (var_D8 = 5) Then
  loc_149460D:   If (var_D8 = 6) Then
  loc_1494610:   End If
  loc_1494610: End If
  loc_149461A: Set var_AC = Me.TopCtrl1
  loc_1494620: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_149462E: Call 0.Method_arg_50 (var_A8, var_D8, var_A4)
  loc_1494636: var_E8 = CVar(var_A8) 'String
  loc_1494644: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_E8)
  loc_1494660: global_128 = rrsAdvanceDepDialog.AdvType
  loc_149468E: unk_54960A.Execute "Select Name from depart where code='" & global_52 & "'", var_E8, -1
  loc_14946BB: var_AC = Me.TopCtrl1.Fields
  loc_14946CB: var_E8 = var_AC.Item("Name").Value
  loc_14946E1: Me.LblOutLet.Caption = CStr(var_E8)
  loc_1494719: unk_54960A.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_E8, -1
  loc_1494743: var_AC = var_AC.Fields
  loc_1494753: var_E8 = CVar(var_AC.Item("CreditCardInfoMandatory")) 'Address
  loc_149476D: If (Proc_6_38_E68A98(var_E8, var_AC, var_AC) = "Y") Then
  loc_1494776:   global_56 = "Y"
  loc_149477A: End If
  loc_149478E: var_A8 = "SELECT DP.PayCode as code, RevMast.name as Name, revMast.PayType as PayType FROM DepartPay as DP LEFT OUTER JOIN RevMast ON DP.PayCode = RevMast.code where (DP.LOGSITE_CODE='" & MemVar_1F92078
  loc_14947BD: unk_54960A.Execute var_A8 & "') AND DP.restcode='" & global_52 & "' And RevMast.Code Not In ('" & MemVar_1F92078 & "CCAD') ORDER BY NAME ", var_E8, -1
  loc_14947CE: Set global_64 = var_AC
  loc_14947F4: CVarUnk
  loc_14947F9: VerifyVarObj
  loc_1494805: LateIdStAd
  loc_1494837: unk_54960A.Execute "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F92078 & "' or LogSite_Code='HO') ORDER BY Name", var_E8, -1
  loc_1494866: CVarUnk
  loc_149486B: VerifyVarObj
  loc_1494877: LateIdStAd
  loc_1494899: var_A8 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.Docid as FolioNODocid From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (T.LOGSITE_CODE='" & MemVar_1F92078
  loc_14948A0: var_B0 = "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F92078 & "' or T.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_14948A9: unk_54960A.Execute var_B0, var_E8, -1
  loc_14948D8: CVarUnk
  loc_14948DD: VerifyVarObj
  loc_14948E9: LateIdStAd
  loc_1494912: var_B0 = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_149491B: unk_54960A.Execute var_B0, var_E8, -1
  loc_149494A: CVarUnk
  loc_149494F: VerifyVarObj
  loc_149495B: LateIdStAd
  loc_1494984: var_B0 = "Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_149499B: unk_54960A.Execute var_B0 & MemVar_1F92078 & "') Order By Name", var_E8, -1
  loc_14949CE: CVarUnk
  loc_14949D3: VerifyVarObj
  loc_14949D9: Set var_AC = Me.DGMember
  loc_14949DF: LateIdStAd
  loc_14949F9: Call 0.Method_arg_38 (MemVar_1F923AC, var_AC, Me.DGCompany, var_AC, var_AC, Me.DGRoom, var_AC, var_AC)
  loc_1494A0A: Call 0.Method_arg_3C (MemVar_1F920EC, Me.DGEmp, var_AC, var_AC)
  loc_1494A1B: Call 0.Method_arg_54 (MemVar_1F9206C, Me.DGPayType, var_AC)
  loc_1494A2C: Call 0.Method_arg_1C (MemVar_1F92070, var_AC)
  loc_1494A3D: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_1494A4E: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_1494A5F: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_1494A70: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_1494A81: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_1494A92: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_1494AAC: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_1494ABA: Set var_AC = MemVar_1F92044
  loc_1494AC9: Call 0.Method_Form_Load8 (var_AC)
  loc_1494ADF: Me.DGMember.Clone
  loc_1494AEA: Set var_EC = var_AC
  loc_1494AF9: Call 0.Method_arg_50 (var_EC, -1)
  loc_1494B0B: var_100 = global_120
  loc_1494B17: If Not (var_100 = 5) Then
  loc_1494B23:   If (var_100 = 6) Then
  loc_1494B26:   End If
  loc_1494B3A:   var_A8 = "SELECT Sale1.DocId as SearchCode,max(Sale1.LogSite_Code) as LogSite_Code,max(Sale1.Site_Code) as Site_Code FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F92078
  loc_1494B4F:   Proc_6_7_F25D88(var_E8, MemVar_1F920EC, CVar(var_A8 & "' aND PCHRG.VDATE="), var_190, -1)
  loc_1494B60:   var_130 = var_AC & var_E8 & " AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='" 
  loc_1494B6D:   var_150 = var_130 & CVar(global_52) 
  loc_1494B84:   unk_54960A.Execute CStr(var_150 & "' GROUP BY SALE1.DOCID ORDER BY  max(SALE1.vno)"), var_100, var_AC
  loc_1494B95:   Set global_60 = var_AC
  loc_1494BC2:   If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_1494BD9:     var_A8 = "SELECT Sale1.DocId as SearchCode,max(Sale1.LogSite_Code) as LogSite_Code,max(Sale1.Site_Code) as Site_Code FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F92078
  loc_1494BE0:     var_B0 = var_A8 & "'  AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_1494BFF:     Proc_6_7_F25D88(var_E8, MemVar_1F920F4, CVar(var_B0 & global_52 & "' AND SALE1.VDATE BETWEEN "), var_1A0)
  loc_1494C07:     var_120 = -1 & var_E8 
  loc_1494C1F:     Proc_6_7_F25D88(var_150, MemVar_1F920FC, var_AC & var_E8 & " AND ")
  loc_1494C30:     var_190 = var_AC & var_150 & " GROUP BY SALE1.DOCID ORDER BY  max(SALE1.vno)" 
  loc_1494C3E:     unk_54960A.Execute CStr(var_190), global_64, 
  loc_1494C4F:     Set global_60 = var_AC
  loc_1494C7B:   Else
  loc_1494C8F:     var_A8 = "SELECT Sale1.DocId as SearchCode,max(Sale1.LogSite_Code) as LogSite_Code,max(Sale1.Site_Code) as Site_Code FROM ((SALE1 INNER JOIN pAYcHARGE AS pchrg ON SALE1.DOCID=PCHRG.DOCID ) left JOIN RoomMast AS T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) left JOIN Waiter ON Sale1.Waiter = Waiter.Code  Where SALE1.LOGSITE_CODE='" & MemVar_1F92078
  loc_1494CA4:     Proc_6_7_F25D88(var_E8, MemVar_1F920EC, CVar(var_A8 & "' aND PCHRG.VDATE="))
  loc_1494CAC:     var_120 = var_190 & var_E8 
  loc_1494CB5:     var_130 = var_120 & " AND (Sale1.DelFlag='' Or Sale1.DelFlag='N' OR Sale1.DelFlag IS NULL) AND  Sale1.RoomType='TB' AND SALE1.restcode='" 
  loc_1494CD9:     unk_54960A.Execute CStr(var_130 & CVar(global_52) & "' GROUP BY SALE1.DOCID ORDER BY  max(SALE1.vno)"), -1, var_AC
  loc_1494CEA:     Set global_60 = var_AC
  loc_1494D0D:   End If
  loc_1494D0D: End If
  loc_1494D19: Set var_AC = Me
  loc_1494D30: Call Proc_98_67_FDC82C(Proc_5_1_100CB50("INI", var_AC))
  loc_1494D3B: Call Proc_98_69_1206238(global_60)
  loc_1494D40: Call Proc_98_74_1216208()
  loc_1494D51: If (global_116 = 2) Then
  loc_1494D54:   Call Proc_98_70_15D3C04()
  loc_1494D6D:   var_A8 = "SELECT Cast(MAX(Sale1.VNo) As Varchar) AS Code,Cast(MAX(Sale1.VNo) As Varchar) AS Name,Max(Sale1.RoomType) As RoomType,Max(Sale1.RoomCat) As RoomCat,Sale1.DocId,MAX(Sale1.VNo) AS BillNo,MAX(T.Code) AS TableNo ,Case When IsNull(max(DB.Name),'')<>'' Then 'DB - '+max(DB.Name) Else max(Waiter.Name) End Steward, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End,Sum(SALE1.NetAmt) As NetAmt "
  loc_1494D7B:   var_B4 = "INI" & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "INNER JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_1494D89:   var_F8 = var_B4 & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "INNER JOIN Waiter on SAle1.Waiter=Waiter.Code LEFT JOIN AssignDelivery AD on SAle1.DocId=AD.Docid LEFT JOIN DeliveryBoy DB on AD.DeliBoy=DB.Code "
  loc_1494D9E:   var_1AC = var_F8 & "WHERE (SALE1.LOGSITE_CODE='" & MemVar_1F92078 & "' or SALE1.LOGSITE_CODE='HO') AND PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') "
  loc_1494DB6:   var_1B8 = var_1AC & "AND  Sale1.RoomType='TB' AND SALE1.restcode='" & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(Sale1.VNo),MAX(T.Code)"
  loc_1494DBF:   unk_54960A.Execute var_1B8, var_E8, -1
  loc_1494DD0:   Set global_88 = var_AC
  loc_1494E03:   CVarUnk
  loc_1494E08:   VerifyVarObj
  loc_1494E0E:   Set var_AC = Me.FGrid1
  loc_1494E14:   LateIdStAd
  loc_1494E2E:   CVarUnk
  loc_1494E33:   VerifyVarObj
  loc_1494E39:   Set var_AC = Me.DGBill
  loc_1494E3F:   LateIdStAd
  loc_1494E4D:   var_C4 = 0
  loc_1494E56:   var_140 = 0
  loc_1494E63:   Set var_AC = Me.FGrid1
  loc_1494E69:   LateIdCallSt
  loc_1494E74:   var_C4 = 1
  loc_1494E7D:   var_140 = 0
  loc_1494E8A:   Set var_AC = Me.FGrid1
  loc_1494E90:   LateIdCallSt
  loc_1494E9B:   var_C4 = 2
  loc_1494EA4:   var_140 = 0
  loc_1494EB1:   Set var_AC = Me.FGrid1
  loc_1494EB7:   LateIdCallSt
  loc_1494EC2:   var_C4 = 3
  loc_1494ECB:   var_140 = 0
  loc_1494ED8:   Set var_AC = Me.FGrid1
  loc_1494EDE:   LateIdCallSt
  loc_1494EE9:   var_C4 = 4
  loc_1494EF2:   var_140 = 0
  loc_1494EFF:   Set var_AC = Me.FGrid1
  loc_1494F05:   LateIdCallSt
  loc_1494F10:   var_C4 = 5
  loc_1494F19:   var_140 = 0
  loc_1494F26:   Set var_AC = Me.FGrid1
  loc_1494F2C:   LateIdCallSt
  loc_1494F37:   var_C4 = 6
  loc_1494F40:   var_140 = &H514
  loc_1494F4D:   Set var_AC = Me.FGrid1
  loc_1494F53:   LateIdCallSt
  loc_1494F5E:   var_C4 = 7
  loc_1494F67:   var_140 = &H3E8
  loc_1494F74:   Set var_AC = Me.FGrid1
  loc_1494F7A:   LateIdCallSt
  loc_1494F85:   var_C4 = 8
  loc_1494F8E:   var_140 = &H9C4
  loc_1494F9B:   Set var_AC = Me.FGrid1
  loc_1494FA1:   LateIdCallSt
  loc_1494FAC:   var_C4 = 9
  loc_1494FB5:   var_140 = &H514
  loc_1494FC2:   Set var_AC = Me.FGrid1
  loc_1494FC8:   LateIdCallSt
  loc_1494FD3:   var_C4 = &HA
  loc_1494FDC:   var_140 = &H578
  loc_1494FE9:   Set var_AC = Me.FGrid1
  loc_1494FEF:   LateIdCallSt
  loc_1494FFE:   var_C4 = CVar(CDbl(7800)) 'Single
  loc_149500D:   Me.FGrid1.Width = var_C4
  loc_1495029:   Call 0.Method_Form_Load0 (1, var_EC, CDbl(7500), Me.Label1, var_140, var_C4, Me.Label1)
  loc_1495031:   var_EC.Width = var_140
  loc_1495057:   If (Me.Recordset15.RecordCount <= 0) Then
  loc_149506D:     Me.FGrid1.Rows = 2
  loc_1495088:     Me.FGrid1.FixedRows = 1
  loc_1495090:     var_C4 = 1
  loc_149509D:     Set var_AC = Me.FGrid1
  loc_14950A3:     var_AC.Row = var_C4
  loc_14950AB:   End If
  loc_14950AB: End If
  loc_14950AB: Call Proc_98_79_107A52C(var_C4, var_AC, var_140)
  loc_14950B5: Set var_8C = Nothing
  loc_14950BD: Set var_90 = Nothing
  loc_14950C0: Exit Sub
  loc_14950C1: ' Referenced from: 14944BC
  loc_14950C9: Set var_AC = Err()
  loc_14950CF: Call 0.Method_arg_2C ("INI", var_C4)
  loc_14950F0: MsgBox(CVar("INI"), &H40, "Information", var_120, var_130)
  loc_1495103: Exit Sub
  loc_1495104: Exit Sub
End Sub

Private Sub Form_Resize() 'EAA69C
  'Data Table: 5495E4
  Dim var_88 As Label
  loc_EAA626: Me.LblFormCaption.Left = CDbl(0)
  loc_EAA632: Set var_9C = Me.TopCtrl1
  loc_EAA638: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_EAA645: Set var_88 = Me.TopCtrl1
  loc_EAA64B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_EAA665: Me.LblFormCaption.Top = (CDbl() + CDbl(var_AC))
  loc_EAA680: Call 0.Method_arg_100 (var_B4)
  loc_EAA692: Me.LblFormCaption.Width = var_B4
  loc_EAA69A: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E824B4
  'Data Table: 5495E4
  loc_E8244F: Set global_72 = Nothing
  loc_E82461: Set global_60 = Nothing
  loc_E82473: Set global_64 = Nothing
  loc_E82485: Set global_68 = Nothing
  loc_E82497: Set global_88 = Nothing
  loc_E824A9: Set global_92 = Nothing
  loc_E824B0: Exit Sub
End Sub

Private Sub Form_Activate() '10796A0
  'Data Table: 5495E4
  Dim var_90 As Long
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_C8 As TextBox
  Dim var_94 As Variant
  Dim var_D4 As String
  Dim var_DC As String
  Dim var_E4 As String
  Dim var_EC As String
  Dim unk_54960A As Connection15
  loc_1079443: If (OpenMode = 1) Then
  loc_1079449:   var_88 = OpenType
  loc_1079451:   var_90 = var_88
  loc_107945D:   If Not (var_90 = 5) Then
  loc_1079469:     If (var_90 = 6) Then
  loc_107946C:     End If
  loc_1079477:     Set var_94 = Me.Txt
  loc_107947D:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98)
  loc_1079485:     var_98.SetFocus
  loc_107949F:     Set var_94 = Me.Txt
  loc_10794A5:     Call 0.Method_Form_Activate0 (CInt(&HF), var_98, var_88)
  loc_10794AD:     var_90 = var_98.Left
  loc_10794BE:     Set var_BC = Me.DGPayType
  loc_10794C4:     var_BC.Left = CVar(var_88)
  loc_10794E0:     Set var_98 = Me.Txt
  loc_10794E6:     Call 0.Method_Form_Activate0 (CInt(&HF), var_BC)
  loc_1079501:     Set var_C4 = Me.Txt
  loc_1079507:     Call 0.Method_Form_Activate0 (CInt(&HF), var_C8)
  loc_107951B:     Set var_94 = Me.FrRest
  loc_1079535:     var_A8 = CVar((((var_94.Top + var_BC.Top) + var_C8.Height) + CDbl(&HF))) 'Single
  loc_1079544:     Me.DGPayType.Top = CVar(var_94.Top)
  loc_1079558:   End If
  loc_1079558: End If
  loc_1079564: If (global_116 = 2) Then
  loc_107957B:   var_D4 = "SELECT Cast(MAX(Sale1.VNo) As Varchar) AS Code,Cast(MAX(Sale1.VNo) As Varchar) AS Name,Max(Sale1.RoomType) As RoomType,Max(Sale1.RoomCat) As RoomCat,Sale1.DocId,MAX(Sale1.VNo) AS BillNo,MAX(T.Code) AS TableNo ,Case When IsNull(max(DB.Name),'')<>'' Then 'DB - '+max(DB.Name) Else max(Waiter.Name) End Steward, " & "Status = CASE WHEN Sum(IsNull(PAYCHARGE.AmtCr, 0)) < Sum(SALE1.NetAmt) Then 'Pending' Else 'Settle' End,Sum(SALE1.NetAmt) As NetAmt "
  loc_1079589:   var_DC = var_D4 & "FROM ((Sale1 LEFT JOIN PayCharge ON Sale1.DocId = PayCharge.DocId) " & "LEFT JOIN RoomMast AS T ON (Sale1.RoomType = T.Type) "
  loc_1079597:   var_E4 = var_DC & "AND (Sale1.RoomNo = T.Code) AND (Sale1.RestCode = T.RestCode)) " & "LEFT JOIN Waiter on SAle1.Waiter=Waiter.Code LEFT JOIN AssignDelivery AD on SAle1.DocId=AD.Docid LEFT JOIN DeliveryBoy DB on AD.DeliBoy=DB.Code "
  loc_10795A5:   var_EC = var_E4 & "WHERE PayCharge.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') " & "AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_10795BF:   unk_54960A.Execute var_EC & global_52 & "' GROUP BY SALE1.DOCID ORDER BY MAX(Sale1.VNo),MAX(T.Code)", var_104, -1
  loc_10795D0:   Set global_88 = var_94
  loc_10795FF:   CVarUnk
  loc_1079604:   VerifyVarObj
  loc_107960A:   Set var_94 = Me.FGrid1
  loc_1079610:   LateIdStAd
  loc_107962A:   CVarUnk
  loc_107962F:   VerifyVarObj
  loc_1079635:   Set var_94 = Me.DGBill
  loc_107963B:   LateIdStAd
  loc_1079663:   If (Me.DGBill.RecordCount <= 0) Then
  loc_1079679:     Me.FGrid1.Rows = 2
  loc_1079694:     Me.FGrid1.FixedRows = 1
  loc_107969C:   End If
  loc_107969C: End If
  loc_107969C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F35B04
  'Data Table: 5495E4
  Dim var_B8 As DataGrid
  Dim var_86 As Integer
  Dim KeyCode As Integer
  loc_F35A08: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F35A3C:   Set var_B8 = Me.DGEmp
  loc_F35A61:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B8.Visible) = 0)) Then
  loc_F35A71:     Me.var_B8.Unload Me
  loc_F35A79:     Exit Sub
  loc_F35A7A:   End If
  loc_F35A7A: End If
  loc_F35A98: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_116 = 1)) Then
  loc_F35AB6:   If (Me.FrSendRoom.Visible = &HFF) Then
  loc_F35ABB:     var_86 = 0
  loc_F35AC8:     Call Txt_Validate(CInt(&H1E))
  loc_F35AD3:     If (var_86 = &HFF) Then
  loc_F35AD8:       KeyCode = 0
  loc_F35ADB:       Exit Sub
  loc_F35ADC:     End If
  loc_F35ADC:   End If
  loc_F35ADC:   Call Proc_98_77_1590730(KeyCode, var_86)
  loc_F35AE1:   Call TopCtrl1_UnknownEvent_16()
  loc_F35AE6:   Exit Sub
  loc_F35AE7: End If
  loc_F35AFB: Proc_6_88_FE81B4(Me, KeyCode, Shift)
  loc_F35B03: Exit Sub
End Sub

Private Sub Del_Click() 'F93E84
  'Data Table: 5495E4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F93D3F: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F93D79:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F93D9B:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F93DB1:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F93DBA:       Set var_10C = Me.FGrid
  loc_F93DD5:     Else
  loc_F93DE8:       Me.FGrid.Rows = 1
  loc_F93E0C:       var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_F93E14:       Set var_10C = Me.FGrid
  loc_F93E41:       Me.FGrid.FixedRows = 1
  loc_F93E49:     End If
  loc_F93E49:   End If
  loc_F93E4C: Else
  loc_F93E67:   var_98 = "No Entries To Delete"
  loc_F93E6D:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F93E7D: End If
  loc_F93E7D: Call Proc_98_79_107A52C(FGrid.DispID_10000, var_98)
  loc_F93E82: Exit Sub
End Sub

Public Function global_52Get() '54B30C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '54B31B
  global_52 = Value
End Sub

Public Function global_56Get() '54B32A
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '54B339
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC31C4
  'Data Table: 5495E4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC313A: On Error Goto loc_EC317F
  loc_EC3143: Me.MoveFirst
  loc_EC315D: var_8C = "Searchcode='" & MyValue
  loc_EC316D: Me.Find var_8C & "'", 0, 1
  loc_EC3179: Call Proc_98_70_15D3C04(var_A0)
  loc_EC317E: Exit Sub
  loc_EC317F: ' Referenced from: EC313A
  loc_EC3187: Set var_A4 = Err()
  loc_EC318D: Call 0.Method_arg_2C (var_8C)
  loc_EC31AE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC31C1: Exit Sub
  loc_EC31C2: Exit Sub
End Sub

Public Property Get OpenMode() 'E04F80
  'Data Table: 5495E4
  loc_E04F79: OpenMode = global_116
End Sub

Public Property Let OpenMode(vNewValue) 'E0260C
  'Data Table: 5495E4
  loc_E02606: global_116 = vNewValue
  loc_E02609: Exit Sub
End Sub

Public Property Get OpenType() 'E04D00
  'Data Table: 5495E4
  loc_E04CF9: OpenType = global_120
End Sub

Public Property Let OpenType(vNewValue) 'E021D4
  'Data Table: 5495E4
  loc_E021CE: global_120 = vNewValue
  loc_E021D1: Exit Sub
End Sub

Public Property Get AdvType() 'E13F9C
  'Data Table: 5495E4
  loc_E13F90: var_88 = global_128
  loc_E13F93: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E13F0C
  'Data Table: 5495E4
  loc_E13F04: global_128 = vNewValue
  loc_E13F08: Exit Sub
  loc_E13F09: () = 
  loc_E13F0A:  = 
End Sub

Public Property Get IdNo() 'E12D0C
  'Data Table: 5495E4
  loc_E12D00: var_88 = global_124
  loc_E12D03: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E12A3C
  'Data Table: 5495E4
  loc_E12A34: global_124 = vNewValue
  loc_E12A38: Exit Sub
End Sub

Public Property Get PersonCode() 'E129F4
  'Data Table: 5495E4
  loc_E129E8: var_88 = global_136
  loc_E129EB: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E129AC
  'Data Table: 5495E4
  loc_E129A4: global_136 = vNewValue
  loc_E129A8: Exit Sub
End Sub

Public Property Get pDocId() 'E1291C
  'Data Table: 5495E4
  loc_E12910: var_88 = global_132
  loc_E12913: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E128D4
  'Data Table: 5495E4
  loc_E128CC: global_132 = vNewValue
  loc_E128D0: Exit Sub
  loc_E128D2: If Not ( = ) Then Exit Sub
  loc_E128D2: End If
End Sub

Public Property Get PTableOrRoomNo() 'E127B4
  'Data Table: 5495E4
  loc_E127A8: var_88 = global_140
  loc_E127AB: PTableOrRoomNo = 
  loc_E127B2: If Not ( = ) Then Exit Sub
  loc_E127B2: End If
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E126DC
  'Data Table: 5495E4
  loc_E126D4: global_140 = vNewValue
  loc_E126D8: Exit Sub
  loc_E126D9: Set var_8C = 
End Sub

Public Property Get PRoomCat() 'E12604
  'Data Table: 5495E4
  loc_E125F8: var_88 = global_164
  loc_E125FB: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E12574
  'Data Table: 5495E4
  loc_E1256C: global_164 = vNewValue
  loc_E12570: Exit Sub
  loc_E12571: Set var_8C = 
End Sub

Public Property Get PRoomtype() 'E124E4
  'Data Table: 5495E4
  loc_E124D8: var_88 = global_168
  loc_E124DB: PRoomtype = 
  loc_E124E1: () = 
  loc_E124E2:  = 
End Sub

Public Property Let PRoomtype(vNewValue) 'E1249C
  'Data Table: 5495E4
  loc_E12494: global_168 = vNewValue
  loc_E12498: Exit Sub
  loc_E1249A: If Not ( = ) Then Exit Sub
  loc_E1249A: End If
End Sub

Public Property Get PBillAmt() 'E1240C
  'Data Table: 5495E4
  loc_E12402: var_88 = CStr(global_144)
  loc_E12405: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E12214
  'Data Table: 5495E4
  loc_E1220E: global_144 = CDbl(vNewValue)
  loc_E12211: Exit Sub
End Sub

Public Sub Proc_98_66_10120A8
  'Data Table: 5495E4
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_1011EBD: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_1011EC7:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_1011ECC:   var_E4 = 1
  loc_1011F06:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "MEM") Then
  loc_1011F0D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1011F12:     var_E4 = &H18
  loc_1011F30:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_1011F3D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_1011F42:     var_E4 = 8
  loc_1011F72:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1011F7E:   End If
  loc_1011F81: Next var_B4 'Integer
  loc_1011F8E: If (var_94 <> vbNullString) Then
  loc_1011FA9:   If (Proc_96_1_F8C534(var_94) = 0) Then
  loc_1011FAF:     Proc_96_2_100DE2C(var_94)
  loc_1011FB9:     If (CDbl(0) < var_90) Then
  loc_1011FDD:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_1011FFA:       Me.Global.Unload Me
  loc_1012004:       var_86 = 0
  loc_101200A:     Else
  loc_101200C:       var_86 = &HFF
  loc_101200F:     End If
  loc_1012012:   Else
  loc_1012020:     If (Proc_96_1_F8C534(var_94, var_9C) = &HFF) Then
  loc_1012026:       Proc_96_2_100DE2C(var_94, var_86)
  loc_101203C:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_1012060:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_101207D:         Me.Global.Unload Me
  loc_1012087:         var_86 = 0
  loc_101208D:       Else
  loc_101208F:         var_86 = &HFF
  loc_1012092:       End If
  loc_1012095:     Else
  loc_1012097:       var_86 = &HFF
  loc_101209A:     End If
  loc_101209A:   End If
  loc_101209D: Else
  loc_101209F:   var_86 = &HFF
  loc_10120A2: End If
  loc_10120A2: Proc_98_66_10120A8 = var_86
End Sub

Public Sub Proc_98_67_FDC82C(arg_C) 'FDC82C
  'Data Table: 5495E4
  Dim var_98 As TextBox
  loc_FDC656: Set var_8C = Me.Txt
  loc_FDC65C: Call 0.Method_Proc_98_67_FDC82C8 (var_8E, var_86)
  loc_FDC669: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_FDC704:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_FDC717:     Set var_8C = Me.Txt
  loc_FDC71D:     Call 0.Method_Proc_98_67_FDC82C0 (CInt(var_86), var_98)
  loc_FDC725:     var_98.Enabled = arg_C
  loc_FDC731:   End If
  loc_FDC734: Next var_92 'Byte
  loc_FDC746: If (global_116 = 1) Then
  loc_FDC756:   Set var_8C = Me.Txt
  loc_FDC75C:   Call 0.Method_Proc_98_67_FDC82C0 (CInt(1), var_98)
  loc_FDC764:   var_98.Enabled = False
  loc_FDC770: End If
  loc_FDC77D: Set var_8C = Me.Txt
  loc_FDC783: Call 0.Method_Proc_98_67_FDC82C0 (CInt(2), var_98)
  loc_FDC78B: var_98.Enabled = False
  loc_FDC7A4: Set var_8C = Me.Txt
  loc_FDC7AA: Call 0.Method_Proc_98_67_FDC82C0 (CInt(0), var_98)
  loc_FDC7B2: var_98.Enabled = False
  loc_FDC7CB: Set var_8C = Me.Txt
  loc_FDC7D1: Call 0.Method_Proc_98_67_FDC82C0 (CInt(&H10), var_98)
  loc_FDC7D9: var_98.Enabled = False
  loc_FDC7FC: If (OpenMode = 1) Then
  loc_FDC80C:   Set var_8C = Me.Txt
  loc_FDC812:   Call 0.Method_Proc_98_67_FDC82C0 (CInt(&H10), var_98)
  loc_FDC81A:   var_98.Enabled = False
  loc_FDC826:   GoTo loc_FDC829
  loc_FDC829:   ' Referenced from: FDC826
  loc_FDC829: End If
  loc_FDC829: Exit Sub
  loc_FDC82A: ArrayRebase1Var
End Sub

Public Sub Proc_98_68_103E9D8
  'Data Table: 5495E4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_103E78E: Set var_8C = Me.Txt
  loc_103E794: Call 0.Method_Proc_98_68_103E9D88 (var_8E, var_86)
  loc_103E7A1: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_103E83C:   If (((((((((((((((CInt(var_86) <> 4) And (CInt(var_86) <> 5)) And (CInt(var_86) <> 6)) And (CInt(var_86) <> 7)) And (CInt(var_86) <> 8)) And (CInt(var_86) <> 9)) And (CInt(var_86) <> &HA)) And (CInt(var_86) <> &HB)) And (CInt(var_86) <> &HC)) And (CInt(var_86) <> &HD)) And (CInt(var_86) <> &HE)) And (CInt(var_86) <> &H1A)) And (CInt(var_86) <> &H1B)) And (CInt(var_86) <> &H1C)) And (CInt(var_86) <> &H1D)) Then
  loc_103E84F:     Set var_8C = Me.Txt
  loc_103E855:     Call 0.Method_Proc_98_68_103E9D80 (CInt(var_86), var_98)
  loc_103E85D:     var_98.Text = vbNullString
  loc_103E879:     Set var_8C = Me.Txt
  loc_103E87F:     Call 0.Method_Proc_98_68_103E9D80 (CInt(var_86), var_98)
  loc_103E887:     var_98.Tag = vbNullString
  loc_103E893:   End If
  loc_103E896: Next var_92 'Byte
  loc_103E8D3: Set var_8C = Me.Txt
  loc_103E8D9: Call 0.Method_Proc_98_68_103E9D80 (CInt(2), var_98, CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy")))
  loc_103E8E1: var_98.Text = 1
  loc_103E90A: Me.FGrid.Rows = 1
  loc_103E912: var_A8 = "1"
  loc_103E91C: Set var_8C = Me.FGrid
  loc_103E92D: var_A8 = 1
  loc_103E940: Me.FGrid.FixedRows = var_A8
  loc_103E956: Set var_8C = Me.LTxt
  loc_103E95C: Call 0.Method_Proc_98_68_103E9D80 (CInt(&H1A), var_98, vbNullString)
  loc_103E964: var_98.Caption = FGrid.DispID_10000
  loc_103E97E: Set var_8C = Me.LTxt
  loc_103E984: Call 0.Method_Proc_98_68_103E9D80 (CInt(&H1B), var_98, vbNullString)
  loc_103E98C: var_98.Caption = var_A8
  loc_103E9A6: Set var_8C = Me.LTxt
  loc_103E9AC: Call 0.Method_Proc_98_68_103E9D80 (CInt(&H1C), var_98)
  loc_103E9B4: var_98.Caption = vbNullString
  loc_103E9C6: global_176 = vbNullString
  loc_103E9D3: global_180 = CDate(var_A8)
  loc_103E9D6: Exit Sub
End Sub

Public Sub Proc_98_69_1206238
  'Data Table: 5495E4
  Dim var_90 As Long
  Dim var_A0 As Variant
  loc_1205D77: Me.FrRest.Top = CDbl(1425)
  loc_1205D8E: Me.FrRest.Left = CDbl(1230)
  loc_1205DA4: Me.FrRest.BackColor = CLng(MemVar_1F921B0)
  loc_1205DB7: var_90 = OpenType
  loc_1205DC3: If Not (var_90 = 1) Then
  loc_1205DCF:   If (var_90 = 7) Then
  loc_1205DD2:   End If
  loc_1205DE5:   Me.FGrid.Top = CVar(CDbl(4185))
  loc_1205DF0: Else
  loc_1205DF9:   If Not (var_90 = 5) Then
  loc_1205E05:     If (var_90 = 6) Then
  loc_1205E08:     End If
  loc_1205E1B:     Me.FGrid.Top = CVar(CDbl(4185))
  loc_1205E23:   End If
  loc_1205E23: End If
  loc_1205E36: Me.FGrid.Left = CVar(CDbl(1430))
  loc_1205E63: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(945))
  loc_1205E7E: Me.FrChqDet.Left = CDbl(1230)
  loc_1205E94: Me.FrChqDet.BackColor = CLng(MemVar_1F921B0)
  loc_1205EC1: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(945))
  loc_1205EDC: Me.FrCCDet.Left = CDbl(1230)
  loc_1205EF2: Me.FrCCDet.BackColor = CLng(MemVar_1F921B0)
  loc_1205F1C: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1205F4D: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1205F8A: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_1205F99: Me.DGTable.Top = CVar(CDbl(Me.FGrid.Height))
  loc_1205FCC: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_1206000: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(945))
  loc_120601B: Me.FrSendRoom.Left = CDbl(1230)
  loc_1206031: Me.FrSendRoom.BackColor = CLng(MemVar_1F921B0)
  loc_120605E: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(945))
  loc_1206079: Me.FrEmp.Left = CDbl(1230)
  loc_120608F: Me.FrEmp.BackColor = CLng(MemVar_1F921B0)
  loc_12060BC: Me.FrComp.Top = (Me.FrRest.Top + CDbl(945))
  loc_12060D7: Me.FrComp.Left = CDbl(1230)
  loc_12060ED: Me.FrComp.BackColor = CLng(MemVar_1F921B0)
  loc_120611A: Me.FrMember.Top = (Me.FrRest.Top + CDbl(945))
  loc_1206135: Me.FrMember.Left = CDbl(1230)
  loc_120614B: Me.FrMember.BackColor = CLng(MemVar_1F921B0)
  loc_1206166: Me.DGRoom.Top = CVar(CDbl(405))
  loc_1206181: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_120619C: Me.DGEmp.Top = CVar(CDbl(405))
  loc_12061B7: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_12061D2: Me.DGCompany.Top = CVar(CDbl(405))
  loc_12061ED: Me.DGCompany.Left = CVar(CDbl(5415))
  loc_1206214: Me.FrTxnNo.Left = Me.FrRest.Left
  loc_120622E: Me.FrTxnNo.BackColor = CLng(MemVar_1F921B0)
  loc_1206236: Exit Sub
End Sub

Public Sub Proc_98_70_15D3C04
  'Data Table: 5495E4
  Dim Me As Variant
  Dim var_98 As Long
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
  Dim unk_54960A As Connection15
  Dim var_DC As Variant
  Dim var_144 As Variant
  Dim var_158 As Variant
  Dim var_130 As Variant
  Dim var_1AC As Fields15
  Dim var_1D0 As Variant
  Dim var_148 As Variant
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_8C As Recordset15
  loc_15D28E4: On Error Goto loc_15D3BBF
  loc_15D28ED: Proc_183_45_E5C118(global_60)
  loc_15D2909: If (Me.RecordCount <= 0) Then
  loc_15D290C:   Call Proc_98_68_103E9D8()
  loc_15D2914: Else
  loc_15D291A:   var_98 = global_120
  loc_15D2926:   If Not (var_98 = 5) Then
  loc_15D2932:     If (var_98 = 6) Then
  loc_15D2935:     End If
  loc_15D2949:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,"
  loc_15D2957:     var_A4 = var_9C & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.CardNo, ST.CardHolder, ST.ChqNo,ST.BatchNo, "
  loc_15D295E:     var_A8 = var_A4 & "ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode,st.U_AE,st.U_Name,st.U_Entdt,st.AU_Name,st.AU_Entdt,CC.Name as MemName,CompCode as MemCode FROM ((((PayCharge AS ST left JOIN "
  loc_15D296C:     var_B0 = var_A8 & "GuestProf AS GP ON ST.GuestProf = GP.Code) left JOIN Employee AS E " & "ON ST.EmpCode = E.Code) left JOIN RevMast AS P ON ST.PayCode = P.Code) "
  loc_15D297A:     var_EC = CVar(var_B0 & "left JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='") 'String
  loc_15D29C1:     unk_54960A.Execute CStr(var_EC & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0"), var_140, -1
  loc_15D29CC:     Set var_88 = var_144
  loc_15D29F8:   End If
  loc_15D2AA1:   var_1A8 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE")), Me.Recordset15.Fields) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_15D2AE9:   Me.LblUser.Caption = CStr(var_98 & CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_Name")), var_1A8)))
  loc_15D2B69:   var_148 = Me.Recordset15.Fields.Item("U_AE")
  loc_15D2BCA:   var_1A8 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_148)) = "E"), "Last Update :   ", "entdt :   "))
  loc_15D2BE4:   var_1AC = Me.Recordset15.Fields
  loc_15D2BF4:   var_1D0 = CVar(var_1AC.Item("U_EntDt")) 'Address
  loc_15D2C12:   Me.LblLDt.Caption = CStr(var_1A8 & CVar(Proc_6_38_E68A98(var_1D0)))
  loc_15D2C7E:   global_100 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_15D2CA6:   If (Me.Recordset15.RecordCount > 0) Then
  loc_15D2CDD:     global_176 = CStr(Me.Recordset15.Fields.Item("AU_Name").Value)
  loc_15D2D20:     global_180 = CDate(Me.Recordset15.Fields.Item("AU_EntDt").Value)
  loc_15D2D69:     Set var_144 = Me.Txt
  loc_15D2D6F:     Call 0.Method_Proc_98_70_15D3C040 (CInt(0), var_148)
  loc_15D2D77:     var_148.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_15D2DC9:     Set var_144 = Me.Txt
  loc_15D2DCF:     Call 0.Method_Proc_98_70_15D3C040 (CInt(1), var_148)
  loc_15D2DD7:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_15D2E29:     Set var_144 = Me.Txt
  loc_15D2E2F:     Call 0.Method_Proc_98_70_15D3C040 (CInt(2), var_148)
  loc_15D2E37:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_15D2E88:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_15D2ED5:     Set var_144 = Me.Txt
  loc_15D2EDB:     Call 0.Method_Proc_98_70_15D3C040 (CInt(&H12), var_148)
  loc_15D2EE3:     var_148.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_15D2EF7:   End If
  loc_15D2F06:   Me.FGrid.Redraw = False
  loc_15D2F1B:   Set var_B8 = Me.FGrid
  loc_15D2F21:   var_B8.Rows = 1
  loc_15D2F2B:   var_90 = 1
  loc_15D2F45:   If (Me.var_B8.RecordCount > 0) Then
  loc_15D2F48:     ' Referenced from:   15D3A5D
  loc_15D2F5A:     If Not(Me.Recordset15.EOF) Then
  loc_15D2F5D:       var_C8 = vbNullString
  loc_15D2F67:       Set var_B8 = Me.FGrid
  loc_15D2F7C:       Set var_1FC = Me.FGrid
  loc_15D2F83:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D2F88:       var_158 = 0
  loc_15D2FBF:       var_EC = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_15D2FC6:       LateIdCallSt
  loc_15D3019:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_90)), var_1FC, var_EC, 2)) 'String
  loc_15D3020:       LateIdCallSt
  loc_15D3079:       LateIdCallSt
  loc_15D30BA:       var_9C = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayCode")), var_1FC, CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)), 1, CVar(CLng(var_90)), var_1FC)
  loc_15D30D6:       If (var_9C = MemVar_1F92070 & "CCAD") Then
  loc_15D30DB:         var_8E = &HFF
  loc_15D30DE:       End If
  loc_15D311B:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_90)), var_8E, var_EC)) 'String
  loc_15D3122:       LateIdCallSt
  loc_15D3138:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D313D:       var_158 = 4
  loc_15D3174:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("RoomCat").Value)) 'String
  loc_15D317B:       LateIdCallSt
  loc_15D3195:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D319A:       var_158 = 5
  loc_15D31D1:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Roomtype").Value)) 'String
  loc_15D31D8:       LateIdCallSt
  loc_15D31F2:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D31FA:       var_158 = CVar(CLng(6)) 'Long
  loc_15D322D:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("RoomNo").Value)) 'String
  loc_15D3234:       LateIdCallSt
  loc_15D3286:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_90)), var_1FC, var_EC, CVar(CLng(7)), CVar(CLng(var_90)))) 'String
  loc_15D328D:       LateIdCallSt
  loc_15D32C2:       var_130 = CVar(CLng(var_90)) 'Long
  loc_15D32FF:       LateIdCallSt
  loc_15D3351:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")), CVar(CLng(9)), CVar(CLng(var_90)), var_1FC, CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))), 1, 1)) 'String
  loc_15D3358:       LateIdCallSt
  loc_15D33A6:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardHolder")), CVar(CLng(&HA)), CVar(CLng(var_90)), var_1FC, var_EC, 8)) 'String
  loc_15D33AD:       LateIdCallSt
  loc_15D33FB:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D3402:       LateIdCallSt
  loc_15D344F:       Proc_6_39_E7C810(var_EC, CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_90)), var_1FC, var_EC)
  loc_15D345F:       LateIdCallSt
  loc_15D34AF:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqNo")), CVar(CLng(&HC)), CVar(CLng(var_90)), var_1FC, CVar(CStr(var_EC)))) 'String
  loc_15D34B6:       LateIdCallSt
  loc_15D3504:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D350B:       LateIdCallSt
  loc_15D3559:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TxnNo")), CVar(CLng(&H1A)), CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D3560:       LateIdCallSt
  loc_15D3576:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D357E:       var_158 = CVar(CLng(&HE)) 'Long
  loc_15D35B1:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_15D35B8:       LateIdCallSt
  loc_15D360A:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_90)), var_1FC, var_EC, CVar(CLng(&HF)), CVar(CLng(var_90)))) 'String
  loc_15D3611:       LateIdCallSt
  loc_15D365F:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpCode")), CVar(CLng(&H10)), CVar(CLng(var_90)), var_1FC, var_EC, var_1FC)) 'String
  loc_15D3666:       LateIdCallSt
  loc_15D36B5:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D36BC:       LateIdCallSt
  loc_15D370B:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D3712:       LateIdCallSt
  loc_15D3761:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D3768:       LateIdCallSt
  loc_15D37B7:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D37BE:       LateIdCallSt
  loc_15D37D4:       var_10C = CVar(CLng(var_90)) 'Long
  loc_15D3810:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_15D3817:       LateIdCallSt
  loc_15D385B:       var_EC = "0.00"
  loc_15D3882:       Set var_144 = Me.LTxt
  loc_15D3888:       Call 0.Method_Proc_98_70_15D3C040 (CInt(&H1A), var_148, CStr(Format(CVar(Me.Recordset15.Fields.Item("BillAmount")), var_EC)), 1, 1, var_1FC, var_EC)
  loc_15D3890:       var_148.Caption = &H11
  loc_15D38BE:       var_EC = CVar("SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code " & " FROM PayCharge AS P INNER JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='") 'String
  loc_15D38EE:       var_FC = var_EC & Me.Recordset15.Fields.Item("DocID").Value 
  loc_15D38F7:       var_11C = var_FC & "' And SNo=" 
  loc_15D392D:       var_198 = (Me.Recordset15.Fields.Item("SNo").Value + 1)
  loc_15D393F:       unk_54960A.Execute CStr(var_11C & "Created By :   "), var_1D0, -1
  loc_15D394A:       Set var_8C = var_1AC
  loc_15D3984:       If (var_8C.RecordCount > 0) Then
  loc_15D39C8:         var_EC = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(0).Value, &H12, CVar(CLng(var_90)), var_1AC, CVar(CLng(var_90)))) 'String
  loc_15D39CF:         LateIdCallSt
  loc_15D3A26:         var_EC = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(1).Value, &H13, CVar(CLng(var_90)), var_1FC, var_EC)) 'String
  loc_15D3A2D:         LateIdCallSt
  loc_15D3A43:       End If
  loc_15D3A45:       Set var_1FC = Nothing 
  loc_15D3A4F:       var_90 = (var_90 + 1)
  loc_15D3A58:       Me.Recordset15.MoveNext
  loc_15D3A5D:       GoTo loc_15D2F48
  loc_15D3A60:     End If
  loc_15D3A73:     Me.FGrid.FixedRows = 1
  loc_15D3A7B:   End If
  loc_15D3A89:   Me.FGrid.Redraw = True
  loc_15D3A97:   If (var_90 = 1) Then
  loc_15D3AAD:     Me.FGrid.Rows = 1
  loc_15D3AD1:     var_DC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, var_90, var_1FC, var_EC))) 'String
  loc_15D3AD9:     Set var_CC = Me.FGrid
  loc_15D3B06:     Me.FGrid.FixedRows = 1
  loc_15D3B0E:   End If
  loc_15D3B17:   var_130 = 2
  loc_15D3B39:   Call Proc_98_76_11D4504(CStr(Me.FGrid.TextMatrix)), var_130, 1, FGrid.DispID_10000, Me.FGrid.TextMatrix))
  loc_15D3B47:   Call Proc_98_79_107A52C(var_1FC, var_EC, var_EC)
  loc_15D3B4C:   Call Proc_98_80_140E534(var_130)
  loc_15D3B66:   var_9C = "INI"
  loc_15D3B74:   Call Proc_98_67_FDC82C(Proc_5_1_100CB50(var_9C, Me))
  loc_15D3B85:   If (var_8E = &HFF) Then
  loc_15D3B91:     Set var_B8 = Me.TopCtrl1
  loc_15D3B97:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030016(False)
  loc_15D3BA8:     Set var_B8 = Me.TopCtrl1
  loc_15D3BAE:     Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030017(False)
  loc_15D3BB6:   End If
  loc_15D3BB6: End If
  loc_15D3BBB: Set var_88 = Nothing
  loc_15D3BBE: Exit Sub
  loc_15D3BBF: ' Referenced from: 15D28E4
  loc_15D3BC7: Set var_B8 = Err()
  loc_15D3BCD: Call 0.Method_arg_2C (var_9C, global_60)
  loc_15D3BEE: MsgBox(CVar(var_9C), &H40, "Information", var_FC, var_11C)
  loc_15D3C01: Exit Sub
End Sub

Public Sub Proc_98_71_FB6978
  'Data Table: 5495E4
  loc_FB67E0: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB67F2:   Me.DGPayType.Visible = False
  loc_FB67FA: End If
  loc_FB6816: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB6828:   Me.DGPayType.Visible = False
  loc_FB6830: End If
  loc_FB684C: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_FB685E:   Me.DGEmp.Visible = False
  loc_FB6866: End If
  loc_FB6882: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_FB6894:   Me.DGTable.Visible = False
  loc_FB689C: End If
  loc_FB68B8: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FB68CA:   Me.DGRoom.Visible = False
  loc_FB68D2: End If
  loc_FB68EE: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FB6900:   Me.DGCompany.Visible = False
  loc_FB6908: End If
  loc_FB6924: If (CBool(Me.DGBill.Visible) = &HFF) Then
  loc_FB6936:   Me.DGBill.Visible = False
  loc_FB693E: End If
  loc_FB695A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB696C:   Me.FGPoint.Visible = False
  loc_FB6974: End If
  loc_FB6974: Exit Sub
End Sub

Public Sub Proc_98_72_E919F4(arg_C) 'E919F4
  'Data Table: 5495E4
  Dim var_10C As TextBox
  loc_E91988: Call Proc_98_71_FB6978()
  loc_E919C4: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E919C7:   Call TopCtrl1_UnknownEvent_16()
  loc_E919CF: Else
  loc_E919D9:   Set var_108 = Me.Txt
  loc_E919DF:   Call 0.Method_Proc_98_72_E919F40 (arg_C)
  loc_E919E7:   var_10C.SetFocus
  loc_E919F3: End If
  loc_E919F3: Exit Sub
End Sub

Public Sub Proc_98_73_10C91E4
  'Data Table: 5495E4
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Field20
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_10C8F34: var_90 = global_128
  loc_10C8F4B: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10C8F7C: Set var_A8 = Me.Txt
  loc_10C8F82: Call 0.Method_Proc_98_73_10C91E40 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_10C8F91: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10C8F99: var_EC = -1 & var_CC 
  loc_10C8FAD: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_10C8FB8: Set var_8C = var_134
  loc_10C8FF4: If (var_8C.RecordCount > 0) Then
  loc_10C9033:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10C9036:     GoTo loc_10C90C4
  loc_10C9039:   End If
  loc_10C906A:   global_108 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10C90AA:   var_CC = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10C90B3:   global_112 = CLng(var_CC)
  loc_10C90C4:   ' Referenced from: 10C9036
  loc_10C90EF:   var_BC = Space((5 - Len(var_90)))
  loc_10C90F7:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_10C910B:   var_EC = Space((5 - Len(global_108)))
  loc_10C9113:   var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_10C9120:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_108))
  loc_10C9139:   var_14C = Space((8 - Len(CStr(global_112))))
  loc_10C9141:   var_15C = (var_130 + var_14C)
  loc_10C9150:   var_17C = (var_15C + CVar(CStr(global_112)))
  loc_10C915B:   global_104 = CStr(var_17C)
  loc_10C9191:   Me.LblVPrefix.Caption = global_108
  loc_10C919C: Else
  loc_10C91A2:   global_104 = vbNullString
  loc_10C91B8:   global_112 = 0
  loc_10C91CB:   Me.LblVPrefix.Caption = vbNullString
  loc_10C91D3: End If
  loc_10C91D8: Set var_8C = Nothing
  loc_10C91DB: Proc_98_73_10C91E4 = global_112
  loc_10C91E1: Result global_112 End Sub 'Currency
End Sub

Public Sub Proc_98_74_1216208
  'Data Table: 5495E4
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_1215D22: var_88 = global_120
  loc_1215D2E: If Not (var_88 = 5) Then
  loc_1215D3A:   If (var_88 = 6) Then
  loc_1215D3D:   End If
  loc_1215D49:   Me.FrRest.Visible = True
  loc_1215D51: End If
  loc_1215D64: Me.FGrid.Cols = &H19
  loc_1215D6C: var_A0 = CVar(CLng(9)) 'Long
  loc_1215D71: var_C0 = 0
  loc_1215D7D: LateIdCallSt
  loc_1215D88: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1215D8D: var_C0 = 0
  loc_1215D99: LateIdCallSt
  loc_1215DA4: var_A0 = CVar(CLng(&HB)) 'Long
  loc_1215DA9: var_C0 = 0
  loc_1215DB5: LateIdCallSt
  loc_1215DC0: var_A0 = CVar(CLng(&HC)) 'Long
  loc_1215DC5: var_C0 = 0
  loc_1215DD1: LateIdCallSt
  loc_1215DDC: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1215DE1: var_C0 = 0
  loc_1215DED: LateIdCallSt
  loc_1215DF8: var_A0 = CVar(CLng(&HE)) 'Long
  loc_1215DFD: var_C0 = 0
  loc_1215E09: LateIdCallSt
  loc_1215E14: var_A0 = CVar(CLng(&HF)) 'Long
  loc_1215E19: var_C0 = 0
  loc_1215E25: LateIdCallSt
  loc_1215E30: var_A0 = CVar(CLng(&H10)) 'Long
  loc_1215E35: var_C0 = 0
  loc_1215E41: LateIdCallSt
  loc_1215E49: var_A0 = &H11
  loc_1215E52: var_C0 = 0
  loc_1215E5E: LateIdCallSt
  loc_1215E66: var_A0 = 1
  loc_1215E6F: var_C0 = 0
  loc_1215E7B: LateIdCallSt
  loc_1215E83: var_A0 = 4
  loc_1215E8C: var_C0 = 0
  loc_1215E98: LateIdCallSt
  loc_1215EA0: var_A0 = 5
  loc_1215EA9: var_C0 = 0
  loc_1215EB5: LateIdCallSt
  loc_1215EC0: var_A0 = CVar(CLng(6)) 'Long
  loc_1215EC5: var_C0 = 0
  loc_1215ED1: LateIdCallSt
  loc_1215EDC: var_A0 = CVar(CLng(7)) 'Long
  loc_1215EE1: var_C0 = 0
  loc_1215EED: LateIdCallSt
  loc_1215EF5: var_A0 = 2
  loc_1215EFE: var_C0 = 0
  loc_1215F0A: LateIdCallSt
  loc_1215F12: var_A0 = 0
  loc_1215F1B: var_C0 = &HFA
  loc_1215F27: LateIdCallSt
  loc_1215F2F: var_A0 = 0
  loc_1215F38: var_C0 = 0
  loc_1215F41: var_E0 = "SNo"
  loc_1215F4A: LateIdCallSt
  loc_1215F52: var_A0 = 0
  loc_1215F5B: var_C0 = &H1F4
  loc_1215F67: LateIdCallSt
  loc_1215F6F: var_A0 = 0
  loc_1215F78: var_C0 = 3
  loc_1215F81: var_E0 = "Payment Type"
  loc_1215F8A: LateIdCallSt
  loc_1215F92: var_A0 = 3
  loc_1215FA1: var_C0 = CVar(CInt(1)) 'Integer
  loc_1215FA8: LateIdCallSt
  loc_1215FB0: var_A0 = 3
  loc_1215FB9: var_C0 = &HDAC
  loc_1215FC5: LateIdCallSt
  loc_1215FCD: var_A0 = 0
  loc_1215FD6: var_C0 = 8
  loc_1215FDF: var_E0 = "Amount"
  loc_1215FE8: LateIdCallSt
  loc_1215FF0: var_A0 = 8
  loc_1215FFF: var_C0 = CVar(CInt(7)) 'Integer
  loc_1216006: LateIdCallSt
  loc_121600E: var_A0 = 8
  loc_121601D: var_C0 = CVar(CInt(7)) 'Integer
  loc_1216024: LateIdCallSt
  loc_121602C: var_A0 = 8
  loc_1216035: var_C0 = &H4EC
  loc_1216041: LateIdCallSt
  loc_1216049: var_A0 = 0
  loc_1216052: var_C0 = &H11
  loc_121605B: var_E0 = "Tip"
  loc_1216064: LateIdCallSt
  loc_121606C: var_A0 = &H11
  loc_121607B: var_C0 = CVar(CInt(7)) 'Integer
  loc_1216082: LateIdCallSt
  loc_121608A: var_A0 = &H11
  loc_1216099: var_C0 = CVar(CInt(7)) 'Integer
  loc_12160A0: LateIdCallSt
  loc_12160A8: var_A0 = &H11
  loc_12160B1: var_C0 = &H320
  loc_12160BD: LateIdCallSt
  loc_12160C5: var_A0 = &H12
  loc_12160CE: var_C0 = 0
  loc_12160DA: LateIdCallSt
  loc_12160E2: var_A0 = &H13
  loc_12160EB: var_C0 = 0
  loc_12160F7: LateIdCallSt
  loc_12160FF: var_A0 = &H14
  loc_1216108: var_C0 = 0
  loc_1216114: LateIdCallSt
  loc_121611C: var_A0 = &H15
  loc_1216125: var_C0 = 0
  loc_1216131: LateIdCallSt
  loc_1216139: var_A0 = &H18
  loc_1216142: var_C0 = 0
  loc_121614E: LateIdCallSt
  loc_1216156: var_A0 = &H19
  loc_121615F: var_C0 = 0
  loc_121616B: LateIdCallSt
  loc_1216173: var_A0 = &H16
  loc_121617C: var_C0 = 0
  loc_1216188: LateIdCallSt
  loc_1216190: var_A0 = &H17
  loc_1216199: var_C0 = 0
  loc_12161A5: LateIdCallSt
  loc_12161B0: var_A0 = CVar(CLng(&H1A)) 'Long
  loc_12161B5: var_C0 = 0
  loc_12161C1: LateIdCallSt
  loc_12161F3: LateIdCallSt
  loc_1216201: Call Proc_98_75_11BED7C(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_1216206: Exit Sub
End Sub

Public Sub Proc_98_75_11BED7C
  'Data Table: 5495E4
  Dim var_94 As Long
  Dim var_98 As String
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_BC As Variant
  Dim var_C4 As String
  loc_11BE932: Set global_72 = New 
  loc_11BE944: Me.Recordset15.CursorLocation = 3
  loc_11BE954: var_94 = OpenType
  loc_11BE960: If (var_94 = 6) Then
  loc_11BE988:   var_A8 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND T.Type in('HL') Order by T.Code") 'String
  loc_11BE992:   Me.Open var_A8, CVar(MemVar_1F92044), 3
  loc_11BE9A9:   Set var_8C = Me.LblName
  loc_11BE9AF:   Call 0.Method_Proc_98_75_11BED7C0 (&HC, var_BC, "Hall")
  loc_11BE9B7:   var_BC.Caption = 1
  loc_11BE9D3:   Set var_8C = Me.DGTable
  loc_11BE9E4:   Set var_BC = DGTable.DispID_69
  loc_11BE9F2:   var_BC.Item(1).Caption = "Hall"
  loc_11BEA09:   global_152 = "HALL"
  loc_11BEA13:   global_156 = "HS"
  loc_11BEA1A: Else
  loc_11BEA23:   If (var_94 = 5) Then
  loc_11BEA2E:     If (MemVar_1F921A8 = "Hall") Then
  loc_11BEA3D:       Set var_8C = Me.LblName
  loc_11BEA43:       Call 0.Method_Proc_98_75_11BED7C0 (&HC, var_BC, "Hall #")
  loc_11BEA4B:       var_BC.Caption = -1
  loc_11BEA67:       Set var_8C = Me.DGTable
  loc_11BEA78:       Set var_BC = DGTable.DispID_69
  loc_11BEA86:       var_BC.Item(1).Caption = "Hall #"
  loc_11BEABC:       var_A8 = CVar("Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND T.Type in ('HL') Order By T.Code") 'String
  loc_11BEAC6:       Me.Open var_A8, CVar(MemVar_1F92044), 3
  loc_11BEAD7:       global_152 = "HALL"
  loc_11BEAE1:       global_156 = "HL"
  loc_11BEAE8:     Else
  loc_11BEAF0:       If (MemVar_1F921A8 = "Fast Food") Then
  loc_11BEAFE:         Set var_8C = Me.LblName
  loc_11BEB04:         Call 0.Method_Proc_98_75_11BED7C0 (&HC, var_BC, 0)
  loc_11BEB0C:         var_BC.Visible = True
  loc_11BEB25:         Set var_8C = Me.Txt
  loc_11BEB2B:         Call 0.Method_Proc_98_75_11BED7C0 (CInt(&H10), var_BC, 0)
  loc_11BEB33:         var_BC.Visible = True
  loc_11BEB4F:         Set var_8C = Me.DGTable
  loc_11BEB60:         Set var_BC = DGTable.DispID_69
  loc_11BEB6E:         var_BC.Item(1).Caption = "Hall #"
  loc_11BEBA4:         var_A8 = CVar("Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND T.Type in ('HL') Order By T.Code") 'String
  loc_11BEBAE:         Me.Open var_A8, CVar(MemVar_1F92044), 3
  loc_11BEBBF:         global_152 = "HALL"
  loc_11BEBC9:         global_156 = "HL"
  loc_11BEBD0:       Else
  loc_11BEBD8:         If (MemVar_1F921A8 = "Room Service") Then
  loc_11BEBE7:           Set var_8C = Me.LblName
  loc_11BEBED:           Call 0.Method_Proc_98_75_11BED7C0 (&HC, var_BC, "Room #")
  loc_11BEBF5:           var_BC.Caption = 1
  loc_11BEC11:           Set var_8C = Me.DGTable
  loc_11BEC22:           Set var_BC = DGTable.DispID_69
  loc_11BEC30:           var_BC.Item(1).Caption = "Room #"
  loc_11BEC66:           var_A8 = CVar("Select T.Code,T.Code As Name,RoomCat From RoomMast T where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND  T.Type in('RO') Order by T.Code") 'String
  loc_11BEC70:           Me.Open var_A8, CVar(MemVar_1F92044), 3
  loc_11BEC81:           global_156 = "RO"
  loc_11BEC88:         Else
  loc_11BEC94:           Set var_8C = Me.LblName
  loc_11BEC9A:           Call 0.Method_Proc_98_75_11BED7C0 (&HC, var_BC, "Table #", 1)
  loc_11BECA2:           var_BC.Caption = -1
  loc_11BECBE:           Set var_8C = Me.DGTable
  loc_11BECDD:           DGTable.DispID_69.Item(1).Caption = "Table #"
  loc_11BED0C:           var_98 = "SELECT Max(T.Code) AS CODE, Max(T.Code) AS Name, Sale1.DocId, Max(Sale1.VNo) AS VNO FROM ((SALE1 LEFT JOIN (SELECT DOCID,SUM(AMTCR) AS AMT FROM PAYCHARGE GROUP BY DOCID ) PCHRG ON SALE1.DOCID=PCHRG.DOCID ) INNER JOIN RoomMast T ON (Sale1.RestCode = T.RestCode) AND (Sale1.RoomNo = T.Code) AND (Sale1.RoomType = T.Type)) Left JOIN Waiter ON Sale1.Waiter = Waiter.Code WHERE (SALE1.LOGSITE_CODE='" & MemVar_1F92078
  loc_11BED13:           var_C4 = var_98 & "' or SALE1.LOGSITE_CODE='HO') AND IsNull(PCHRG.Amt, 0) < SALE1.NetAmt AND PCHRG.DocId Is Null AND (Sale1.DelFlag='' Or Sale1.DelFlag='N') AND  Sale1.RoomType='TB' AND SALE1.restcode='"
  loc_11BED2E:           Me.Open CVar(var_C4 & global_52 & "'GROUP BY SALE1.DOCID ORDER BY MAX(T.Code)"), CVar(MemVar_1F92044), 3
  loc_11BED45:           global_152 = "REST"
  loc_11BED4F:           global_156 = "TB"
  loc_11BED53:         End If
  loc_11BED53:       End If
  loc_11BED53:     End If
  loc_11BED53:   End If
  loc_11BED53: End If
  loc_11BED5C: CVarUnk
  loc_11BED61: VerifyVarObj
  loc_11BED67: Set var_8C = Me.DGTable
  loc_11BED6D: LateIdStAd
  loc_11BED7B: Exit Sub
End Sub

Public Sub Proc_98_76_11D4504(arg_C) '11D4504
  'Data Table: 5495E4
  Dim var_8C As Long
  Dim var_98 As Frame
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_11D409C: Me.FrChqDet.Visible = False
  loc_11D40B0: Me.FrRem.Visible = False
  loc_11D40C4: Me.FrCCDet.Visible = False
  loc_11D40D8: Me.FrEmp.Visible = False
  loc_11D40EC: Me.FrComp.Visible = False
  loc_11D4100: Me.FrMember.Visible = False
  loc_11D4114: Me.FrSendRoom.Visible = False
  loc_11D4128: Me.FrTxnNo.Visible = False
  loc_11D4136: var_8C = global_120
  loc_11D4142: If Not (var_8C = 5) Then
  loc_11D414E:   If (var_8C = 6) Then
  loc_11D4151:   End If
  loc_11D4154:   var_90 = arg_C
  loc_11D415F:   If (var_90 = "Cheque") Then
  loc_11D416E:     Me.FrChqDet.Visible = True
  loc_11D4182:     Me.FrRem.Visible = True
  loc_11D41C0:     Me.FrRem.Top = (Me.FrChqDet.Top + Me.FrChqDet.Height)
  loc_11D41D1:   Else
  loc_11D41D9:     If (var_90 = "Credit Card") Then
  loc_11D41E8:       Me.FrCCDet.Visible = True
  loc_11D41FC:       Me.FrRem.Visible = False
  loc_11D4207:     Else
  loc_11D420F:       If (var_90 = "Staff") Then
  loc_11D421E:         Me.FrEmp.Visible = True
  loc_11D4232:         Me.FrRem.Visible = True
  loc_11D4270:         Me.FrRem.Top = (Me.FrEmp.Top + Me.FrEmp.Height)
  loc_11D4281:       Else
  loc_11D4289:         If (var_90 = "Company") Then
  loc_11D4298:           Me.FrComp.Visible = True
  loc_11D42AC:           Me.FrRem.Visible = True
  loc_11D42EA:           Me.FrRem.Top = (Me.FrComp.Top + Me.FrComp.Height)
  loc_11D42FB:         Else
  loc_11D4303:           If (var_90 = "Member") Then
  loc_11D4312:             Me.FrMember.Visible = True
  loc_11D4326:             Me.FrRem.Visible = True
  loc_11D4364:             Me.FrRem.Top = (Me.FrMember.Top + Me.FrMember.Height)
  loc_11D4375:           Else
  loc_11D437D:             If (var_90 = "Room") Then
  loc_11D438C:               Me.FrSendRoom.Visible = True
  loc_11D43A0:               Me.FrRem.Visible = False
  loc_11D43AB:             Else
  loc_11D43B3:               If (var_90 = "UPI") Then
  loc_11D43C2:                 Me.FrTxnNo.Visible = True
  loc_11D43D6:                 Me.FrRem.Visible = True
  loc_11D4418:                 Me.FrTxnNo.Top = ((Me.FrRest.Top + Me.FrRest.Height) + CDbl(&HF))
  loc_11D445A:                 Set var_A0 = Me.FrRem
  loc_11D4460:                 var_A0.Top = ((Me.FrTxnNo.Top + Me.FrTxnNo.Height) + CDbl(&HF))
  loc_11D4471:               Else
  loc_11D447D:                 Me.FrRem.Visible = True
  loc_11D4493:                 Set var_98 = Me.Txt
  loc_11D4499:                 Call 0.Method_Proc_98_76_11D45040 (CInt(&H11), var_A0)
  loc_11D44B4:                 Set var_A4 = Me.Txt
  loc_11D44BA:                 Call 0.Method_Proc_98_76_11D45040 (CInt(&H11), var_A8)
  loc_11D44EF:                 Me.FrRem.Top = ((Me.FrRest.Top + var_A0.Top) + var_A8.Height)
  loc_11D4503:               End If
  loc_11D4503:             End If
  loc_11D4503:           End If
  loc_11D4503:         End If
  loc_11D4503:       End If
  loc_11D4503:     End If
  loc_11D4503:   End If
  loc_11D4503: End If
  loc_11D4503: Exit Sub
End Sub

Public Sub Proc_98_77_1590730
  'Data Table: 5495E4
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_104 As Long
  Dim var_118 As String
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim Me As Variant
  loc_158F582: Set var_8C = Me.Txt
  loc_158F588: Call 0.Method_Proc_98_77_15907300 (CInt(&H11), var_90)
  loc_158F5AC: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_158F5BD:   Set var_8C = Me.Txt
  loc_158F5C3:   Call 0.Method_Proc_98_77_15907300 (CInt(&H11), var_90)
  loc_158F5CB:   var_90.Text = vbNullString
  loc_158F5D7: End If
  loc_158F5E5: Set var_8C = Me.Txt
  loc_158F5EB: Call 0.Method_Proc_98_77_15907300 (CInt(&H11), var_90)
  loc_158F605: If (var_90.Visible = &HFF) Then
  loc_158F613:   Set var_8C = Me.Txt
  loc_158F619:   Call 0.Method_Proc_98_77_15907300 (CInt(&H11))
  loc_158F621:   var_94 = "Amount"
  loc_158F642:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158F645:     Exit Sub
  loc_158F646:   End If
  loc_158F646: End If
  loc_158F65F: Set var_8C = Me.Txt
  loc_158F665: Call 0.Method_Proc_98_77_15907300 (CInt(&H18), var_90, var_94)
  loc_158F66D: (global_160 = "Staff") = var_90.Text
  loc_158F685: If (var_90 And (var_94 = vbNullString)) Then
  loc_158F693:   Set var_8C = Me.Txt
  loc_158F699:   Call 0.Method_Proc_98_77_15907300 (CInt(&H18))
  loc_158F6A1:   var_94 = "Staff Name"
  loc_158F6C2:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158F6C5:     Exit Sub
  loc_158F6C6:   End If
  loc_158F6C6: End If
  loc_158F6DF: Set var_8C = Me.Txt
  loc_158F6E5: Call 0.Method_Proc_98_77_15907300 (CInt(&H1E), var_90, var_94)
  loc_158F6ED: (global_160 = "Room") = var_90.Text
  loc_158F705: If (var_90 And (var_94 = vbNullString)) Then
  loc_158F713:   Set var_8C = Me.Txt
  loc_158F719:   Call 0.Method_Proc_98_77_15907300 (CInt(&H1E))
  loc_158F721:   var_94 = "Room Name"
  loc_158F742:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158F745:     Exit Sub
  loc_158F746:   End If
  loc_158F746: End If
  loc_158F75F: Set var_8C = Me.Txt
  loc_158F765: Call 0.Method_Proc_98_77_15907300 (CInt(&H1F), var_90, var_94)
  loc_158F76D: (global_160 = "Company") = var_90.Text
  loc_158F785: If (var_90 And (var_94 = vbNullString)) Then
  loc_158F793:   Set var_8C = Me.Txt
  loc_158F799:   Call 0.Method_Proc_98_77_15907300 (CInt(&H1F))
  loc_158F7A1:   var_94 = "Company Name"
  loc_158F7C2:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158F7C5:     Exit Sub
  loc_158F7C6:   End If
  loc_158F7C6: End If
  loc_158F7DF: Set var_8C = Me.Txt
  loc_158F7E5: Call 0.Method_Proc_98_77_15907300 (CInt(&H20), var_90, var_94)
  loc_158F7ED: (global_160 = "Member") = var_90.Text
  loc_158F805: If (var_90 And (var_94 = vbNullString)) Then
  loc_158F813:   Set var_8C = Me.Txt
  loc_158F819:   Call 0.Method_Proc_98_77_15907300 (CInt(&H20))
  loc_158F821:   var_94 = "Member Name"
  loc_158F842:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158F845:     Exit Sub
  loc_158F846:   End If
  loc_158F846: End If
  loc_158F851: If (global_56 = "Y") Then
  loc_158F86D:   Set var_8C = Me.Txt
  loc_158F873:   Call 0.Method_Proc_98_77_15907300 (CInt(&H12), var_90, var_94)
  loc_158F87B:   (global_160 = "Credit Card") = var_90.Text
  loc_158F893:   If (var_90 And (var_94 = vbNullString)) Then
  loc_158F8A1:     Set var_8C = Me.Txt
  loc_158F8A7:     Call 0.Method_Proc_98_77_15907300 (CInt(&H12))
  loc_158F8AF:     var_94 = "Credit Card No."
  loc_158F8D0:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158F8D3:       Exit Sub
  loc_158F8D4:     End If
  loc_158F8D4:   End If
  loc_158F8ED:   Set var_8C = Me.Txt
  loc_158F8F3:   Call 0.Method_Proc_98_77_15907300 (CInt(&H13), var_90, var_94)
  loc_158F8FB:   (global_160 = "Credit Card") = var_90.Text
  loc_158F913:   If (var_90 And (var_94 = vbNullString)) Then
  loc_158F921:     Set var_8C = Me.Txt
  loc_158F927:     Call 0.Method_Proc_98_77_15907300 (CInt(&H13))
  loc_158F92F:     var_94 = "Holder's Name"
  loc_158F950:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158F953:       Exit Sub
  loc_158F954:     End If
  loc_158F954:   End If
  loc_158F96D:   Set var_8C = Me.Txt
  loc_158F973:   Call 0.Method_Proc_98_77_15907300 (CInt(3), var_90, var_94)
  loc_158F97B:   (global_160 = "Credit Card") = var_90.Text
  loc_158F993:   If (var_90 And (var_94 = vbNullString)) Then
  loc_158F9A1:     Set var_8C = Me.Txt
  loc_158F9A7:     Call 0.Method_Proc_98_77_15907300 (CInt(3))
  loc_158F9AF:     var_94 = "Batch No."
  loc_158F9D0:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158F9D3:       Exit Sub
  loc_158F9D4:     End If
  loc_158F9D4:   End If
  loc_158F9D4: End If
  loc_158F9ED: Set var_8C = Me.Txt
  loc_158F9F3: Call 0.Method_Proc_98_77_15907300 (CInt(&H15), var_90, var_94)
  loc_158F9FB: (global_160 = "Cheque") = var_90.Text
  loc_158FA13: If (var_90 And (var_94 = vbNullString)) Then
  loc_158FA21:   Set var_8C = Me.Txt
  loc_158FA27:   Call 0.Method_Proc_98_77_15907300 (CInt(&H15))
  loc_158FA2F:   var_94 = "Cheque No."
  loc_158FA50:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158FA53:     Exit Sub
  loc_158FA54:   End If
  loc_158FA54: End If
  loc_158FA6D: Set var_8C = Me.Txt
  loc_158FA73: Call 0.Method_Proc_98_77_15907300 (CInt(&H16), var_90, var_94)
  loc_158FA7B: (global_160 = "Cheque") = var_90.Text
  loc_158FA93: If (var_90 And (var_94 = vbNullString)) Then
  loc_158FAA1:   Set var_8C = Me.Txt
  loc_158FAA7:   Call 0.Method_Proc_98_77_15907300 (CInt(&H16))
  loc_158FAAF:   var_94 = "Cheque Dt."
  loc_158FAD0:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158FAD3:     Exit Sub
  loc_158FAD4:   End If
  loc_158FAD4: End If
  loc_158FAED: Set var_8C = Me.Txt
  loc_158FAF3: Call 0.Method_Proc_98_77_15907300 (CInt(4), var_90, var_94)
  loc_158FAFB: (global_160 = "UPI") = var_90.Text
  loc_158FB13: If (var_90 And (var_94 = vbNullString)) Then
  loc_158FB21:   Set var_8C = Me.Txt
  loc_158FB27:   Call 0.Method_Proc_98_77_15907300 (CInt(4))
  loc_158FB50:   If (Proc_6_27_EA565C(var_90, "Txn. No.") = 0) Then
  loc_158FB53:     Exit Sub
  loc_158FB54:   End If
  loc_158FB54: End If
  loc_158FB5D: If (global_172 = 0) Then
  loc_158FB79:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_158FB9C:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_158FBB5:   If (var_94 <> vbNullString) Then
  loc_158FBD4:     var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, 3))) 'String
  loc_158FBDC:     Set var_90 = Me.FGrid
  loc_158FBF6:   End If
  loc_158FC10:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_158FC1C: Else
  loc_158FC30:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_158FC39: End If
  loc_158FC44: var_104 = OpenType
  loc_158FC50: If Not (var_104 = 5) Then
  loc_158FC5C:   If (var_104 = 6) Then
  loc_158FC5F:   End If
  loc_158FC63:   Set var_108 = Me.FGrid
  loc_158FC86:   Set var_8C = Me.Txt
  loc_158FC8C:   Call 0.Method_Proc_98_77_15907300 (CInt(&HF), var_90, var_94, 1, CVar(CLng(var_86)), var_104)
  loc_158FC94:   var_86 = var_90.Tag
  loc_158FC9C:   var_AC = CVar(var_94) 'String
  loc_158FCA3:   LateIdCallSt
  loc_158FCB9:   var_BC = CVar(CLng(var_86)) 'Long
  loc_158FCBE:   var_DC = 2
  loc_158FCD4:   LateIdCallSt
  loc_158FCFC:   Set var_8C = Me.Txt
  loc_158FD02:   Call 0.Method_Proc_98_77_15907300 (CInt(&HF), var_90, var_94, 3, CVar(CLng(var_86)), var_108, global_160)
  loc_158FD0A:   var_DC = var_90.Text
  loc_158FD12:   var_AC = CVar(var_94) 'String
  loc_158FD19:   LateIdCallSt
  loc_158FD2F:   var_BC = CVar(CLng(var_86)) 'Long
  loc_158FD34:   var_DC = 4
  loc_158FD4A:   LateIdCallSt
  loc_158FD56:   var_BC = CVar(CLng(var_86)) 'Long
  loc_158FD5B:   var_DC = 5
  loc_158FD71:   LateIdCallSt
  loc_158FD98:   Set var_8C = Me.Txt
  loc_158FD9E:   Call 0.Method_Proc_98_77_15907300 (CInt(&H10), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_108, global_156)
  loc_158FDA6:   var_DC = var_90.Tag
  loc_158FDB5:   LateIdCallSt
  loc_158FDE6:   Set var_8C = Me.Txt
  loc_158FDEC:   Call 0.Method_Proc_98_77_15907300 (CInt(&H10), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_158FDF4:   var_BC = var_90.Text
  loc_158FDFC:   var_AC = CVar(var_94) 'String
  loc_158FE03:   LateIdCallSt
  loc_158FE35:   Set var_8C = Me.Txt
  loc_158FE3B:   Call 0.Method_Proc_98_77_15907300 (CInt(&H11), var_90, var_94, 8, CVar(CLng(var_86)), var_108)
  loc_158FE43:   var_AC = var_90.Text
  loc_158FE4B:   var_AC = CVar(var_94) 'String
  loc_158FE52:   LateIdCallSt
  loc_158FE84:   Set var_8C = Me.Txt
  loc_158FE8A:   Call 0.Method_Proc_98_77_15907300 (CInt(&H19), var_90, var_94, &H11, CVar(CLng(var_86)), var_108)
  loc_158FE92:   var_AC = var_90.Text
  loc_158FE9A:   var_AC = CVar(var_94) 'String
  loc_158FEA1:   LateIdCallSt
  loc_158FED2:   Set var_8C = Me.Txt
  loc_158FED8:   Call 0.Method_Proc_98_77_15907300 (CInt(&H17), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_108)
  loc_158FEE0:   var_AC = var_90.Text
  loc_158FEE8:   var_AC = CVar(var_94) 'String
  loc_158FEEF:   LateIdCallSt
  loc_158FF0C:   If (global_160 = "Credit Card") Then
  loc_158FF2E:     Set var_8C = Me.Txt
  loc_158FF34:     Call 0.Method_Proc_98_77_15907300 (CInt(&H12), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_108)
  loc_158FF3C:     var_AC = var_90.Text
  loc_158FF44:     var_AC = CVar(var_94) 'String
  loc_158FF4B:     LateIdCallSt
  loc_158FF7C:     Set var_8C = Me.Txt
  loc_158FF82:     Call 0.Method_Proc_98_77_15907300 (CInt(&H13), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_108)
  loc_158FF8A:     var_AC = var_90.Text
  loc_158FF92:     var_AC = CVar(var_94) 'String
  loc_158FF99:     LateIdCallSt
  loc_158FFCA:     Set var_8C = Me.Txt
  loc_158FFD0:     Call 0.Method_Proc_98_77_15907300 (CInt(&H14), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_108)
  loc_158FFD8:     var_AC = var_90.Text
  loc_158FFE0:     var_AC = CVar(var_94) 'String
  loc_158FFE7:     LateIdCallSt
  loc_1590019:     Set var_8C = Me.Txt
  loc_159001F:     Call 0.Method_Proc_98_77_15907300 (CInt(3), var_90, var_94, &H17, CVar(CLng(var_86)), var_108)
  loc_1590027:     var_AC = var_90.Text
  loc_159002F:     var_AC = CVar(var_94) 'String
  loc_1590036:     LateIdCallSt
  loc_159004B:   Else
  loc_159004F:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590057:     var_DC = CVar(CLng(9)) 'Long
  loc_159005C:     var_118 = vbNullString
  loc_1590065:     LateIdCallSt
  loc_1590071:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590079:     var_DC = CVar(CLng(&HA)) 'Long
  loc_159007E:     var_118 = vbNullString
  loc_1590087:     LateIdCallSt
  loc_1590093:     var_BC = CVar(CLng(var_86)) 'Long
  loc_159009B:     var_DC = CVar(CLng(&HB)) 'Long
  loc_15900A0:     var_118 = vbNullString
  loc_15900A9:     LateIdCallSt
  loc_15900B5:     var_BC = CVar(CLng(var_86)) 'Long
  loc_15900BA:     var_DC = &H17
  loc_15900C3:     var_118 = vbNullString
  loc_15900CC:     LateIdCallSt
  loc_15900D4:   End If
  loc_15900DF:   If (global_160 = "Cheque") Then
  loc_1590101:     Set var_8C = Me.Txt
  loc_1590107:     Call 0.Method_Proc_98_77_15907300 (CInt(&H15), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_108, var_118)
  loc_159010F:     var_DC = var_90.Text
  loc_159011E:     LateIdCallSt
  loc_159014F:     Set var_8C = Me.Txt
  loc_1590155:     Call 0.Method_Proc_98_77_15907300 (CInt(&H16), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_159015D:     var_BC = var_90.Text
  loc_1590165:     var_AC = CVar(var_94) 'String
  loc_159016C:     LateIdCallSt
  loc_1590181:   Else
  loc_1590185:     var_BC = CVar(CLng(var_86)) 'Long
  loc_159018D:     var_DC = CVar(CLng(&HC)) 'Long
  loc_1590192:     var_118 = vbNullString
  loc_159019B:     LateIdCallSt
  loc_15901A7:     var_BC = CVar(CLng(var_86)) 'Long
  loc_15901AF:     var_DC = CVar(CLng(&HD)) 'Long
  loc_15901B4:     var_118 = vbNullString
  loc_15901BD:     LateIdCallSt
  loc_15901C5:   End If
  loc_15901D0:   If (global_160 = "UPI") Then
  loc_15901F2:     Set var_8C = Me.Txt
  loc_15901F8:     Call 0.Method_Proc_98_77_15907300 (CInt(4), var_90, var_94, CVar(CLng(&H1A)), CVar(CLng(var_86)), var_108, var_118)
  loc_1590200:     var_DC = var_90.Text
  loc_1590208:     var_AC = CVar(var_94) 'String
  loc_159020F:     LateIdCallSt
  loc_1590224:   Else
  loc_1590228:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590230:     var_DC = CVar(CLng(&H1A)) 'Long
  loc_1590235:     var_118 = vbNullString
  loc_159023E:     LateIdCallSt
  loc_1590246:   End If
  loc_1590251:   If (global_160 = "Staff") Then
  loc_1590273:     Set var_8C = Me.Txt
  loc_1590279:     Call 0.Method_Proc_98_77_15907300 (CInt(&H18), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_108, var_118)
  loc_1590281:     var_DC = var_90.Text
  loc_1590290:     LateIdCallSt
  loc_15902C1:     Set var_8C = Me.Txt
  loc_15902C7:     Call 0.Method_Proc_98_77_15907300 (CInt(&H18), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_15902CF:     var_BC = var_90.Tag
  loc_15902D7:     var_AC = CVar(var_94) 'String
  loc_15902DE:     LateIdCallSt
  loc_15902F3:   Else
  loc_15902F7:     var_BC = CVar(CLng(var_86)) 'Long
  loc_15902FF:     var_DC = CVar(CLng(&HF)) 'Long
  loc_1590304:     var_118 = vbNullString
  loc_159030D:     LateIdCallSt
  loc_1590319:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590321:     var_DC = CVar(CLng(&H10)) 'Long
  loc_1590326:     var_118 = vbNullString
  loc_159032F:     LateIdCallSt
  loc_1590337:   End If
  loc_1590342:   If (global_160 = "Company") Then
  loc_1590365:     Set var_8C = Me.Txt
  loc_159036B:     Call 0.Method_Proc_98_77_15907300 (CInt(&H1F), var_90, var_94, &H14, CVar(CLng(var_86)), var_108, var_118)
  loc_1590373:     var_DC = var_90.Tag
  loc_1590382:     LateIdCallSt
  loc_15903B4:     Set var_8C = Me.Txt
  loc_15903BA:     Call 0.Method_Proc_98_77_15907300 (CInt(&H1F), var_90, var_94, &H15, CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_15903C2:     var_BC = var_90.Text
  loc_15903CA:     var_AC = CVar(var_94) 'String
  loc_15903D1:     LateIdCallSt
  loc_15903E6:   Else
  loc_15903EA:     var_BC = CVar(CLng(var_86)) 'Long
  loc_15903EF:     var_DC = &H14
  loc_15903F8:     var_118 = vbNullString
  loc_1590401:     LateIdCallSt
  loc_159040D:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590412:     var_DC = &H15
  loc_159041B:     var_118 = vbNullString
  loc_1590424:     LateIdCallSt
  loc_159042C:   End If
  loc_1590437:   If (global_160 = "Member") Then
  loc_159045A:     Set var_8C = Me.Txt
  loc_1590460:     Call 0.Method_Proc_98_77_15907300 (CInt(&H20), var_90, var_94, &H18, CVar(CLng(var_86)), var_108, var_118)
  loc_1590468:     var_DC = var_90.Tag
  loc_1590477:     LateIdCallSt
  loc_15904A9:     Set var_8C = Me.Txt
  loc_15904AF:     Call 0.Method_Proc_98_77_15907300 (CInt(&H20), var_90, var_94, &H19, CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_15904B7:     var_BC = var_90.Text
  loc_15904BF:     var_AC = CVar(var_94) 'String
  loc_15904C6:     LateIdCallSt
  loc_15904DB:   Else
  loc_15904DF:     var_BC = CVar(CLng(var_86)) 'Long
  loc_15904E4:     var_DC = &H18
  loc_15904ED:     var_118 = vbNullString
  loc_15904F6:     LateIdCallSt
  loc_1590502:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590507:     var_DC = &H19
  loc_1590510:     var_118 = vbNullString
  loc_1590519:     LateIdCallSt
  loc_1590521:   End If
  loc_159052C:   If (global_160 = "Room") Then
  loc_1590533:     var_CC = CVar(CLng(var_86)) 'Long
  loc_1590538:     var_EC = &H16
  loc_159055E:     var_90 = Me.Fields.Item("FolioNoDocid")
  loc_1590576:     LateIdCallSt
  loc_15905AC:     Set var_8C = Me.Txt
  loc_15905B2:     Call 0.Method_Proc_98_77_15907300 (CInt(&H1E), var_90, var_94, &H12, CVar(CLng(var_86)), var_108, CVar(CStr(var_90.Value)))
  loc_15905BA:     var_EC = var_90.Tag
  loc_15905C9:     LateIdCallSt
  loc_15905FB:     Set var_8C = Me.Txt
  loc_1590601:     Call 0.Method_Proc_98_77_15907300 (CInt(&H1E), var_90, var_94, &H13, CVar(CLng(var_86)), var_108, CVar(var_94))
  loc_1590609:     var_CC = var_90.Text
  loc_1590611:     var_AC = CVar(var_94) 'String
  loc_1590618:     LateIdCallSt
  loc_159062D:   Else
  loc_1590631:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590636:     var_DC = &H16
  loc_159063F:     var_118 = vbNullString
  loc_1590648:     LateIdCallSt
  loc_1590654:     var_BC = CVar(CLng(var_86)) 'Long
  loc_1590659:     var_DC = &H12
  loc_1590662:     var_118 = vbNullString
  loc_159066B:     LateIdCallSt
  loc_1590677:     var_BC = CVar(CLng(var_86)) 'Long
  loc_159067C:     var_DC = &H13
  loc_1590685:     var_118 = vbNullString
  loc_159068E:     LateIdCallSt
  loc_1590696:   End If
  loc_1590698:   Set var_108 = Nothing 
  loc_159069C: End If
  loc_159069C: Call Proc_98_79_107A52C(var_108, var_118, var_DC, var_BC, var_108, var_118, var_DC, var_BC)
  loc_15906AF: Set var_8C = Me.LTxt
  loc_15906B5: Call 0.Method_Proc_98_77_15907300 (CInt(&H1C), var_90, var_94, var_108, var_118)
  loc_15906BD: var_DC = var_90.Caption
  loc_15906F3: If (((CDbl(Val(var_94)) = CDbl(0)) And (global_120 = 5)) Or (global_120 = 6)) Then
  loc_15906F6:   Call TopCtrl1_UnknownEvent_16()
  loc_15906FB:   Exit Sub
  loc_15906FC: End If
  loc_15906FC: Call Proc_98_78_101A4F4(var_BC, var_108)
  loc_159070C: Set var_8C = Me.Txt
  loc_1590712: Call 0.Method_Proc_98_77_15907300 (CInt(&HF), var_90)
  loc_159071A: var_90.SetFocus
  loc_159072B: global_172 = 0
  loc_159072E: Exit Sub
End Sub

Public Sub Proc_98_78_101A4F4
  'Data Table: 5495E4
  Dim var_8C As TextBox
  loc_101A2CE: Set var_88 = Me.Txt
  loc_101A2D4: Call 0.Method_Proc_98_78_101A4F40 (CInt(&HF), var_8C)
  loc_101A2DC: var_8C.Text = vbNullString
  loc_101A2F6: Set var_88 = Me.Txt
  loc_101A2FC: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H11), var_8C)
  loc_101A304: var_8C.Text = vbNullString
  loc_101A31E: Set var_88 = Me.Txt
  loc_101A324: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H19), var_8C)
  loc_101A32C: var_8C.Text = vbNullString
  loc_101A346: Set var_88 = Me.Txt
  loc_101A34C: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H18), var_8C)
  loc_101A354: var_8C.Text = vbNullString
  loc_101A36E: Set var_88 = Me.Txt
  loc_101A374: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H17), var_8C)
  loc_101A37C: var_8C.Text = vbNullString
  loc_101A396: Set var_88 = Me.Txt
  loc_101A39C: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H12), var_8C)
  loc_101A3A4: var_8C.Text = vbNullString
  loc_101A3BE: Set var_88 = Me.Txt
  loc_101A3C4: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H13), var_8C)
  loc_101A3CC: var_8C.Text = vbNullString
  loc_101A3E6: Set var_88 = Me.Txt
  loc_101A3EC: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H14), var_8C)
  loc_101A3F4: var_8C.Text = vbNullString
  loc_101A40E: Set var_88 = Me.Txt
  loc_101A414: Call 0.Method_Proc_98_78_101A4F40 (CInt(3), var_8C)
  loc_101A41C: var_8C.Text = vbNullString
  loc_101A436: Set var_88 = Me.Txt
  loc_101A43C: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H15), var_8C)
  loc_101A444: var_8C.Text = vbNullString
  loc_101A45E: Set var_88 = Me.Txt
  loc_101A464: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H16), var_8C)
  loc_101A46C: var_8C.Text = vbNullString
  loc_101A486: Set var_88 = Me.Txt
  loc_101A48C: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H1F), var_8C)
  loc_101A494: var_8C.Text = vbNullString
  loc_101A4AE: Set var_88 = Me.Txt
  loc_101A4B4: Call 0.Method_Proc_98_78_101A4F40 (CInt(&H20), var_8C)
  loc_101A4BC: var_8C.Text = vbNullString
  loc_101A4D6: Set var_88 = Me.Txt
  loc_101A4DC: Call 0.Method_Proc_98_78_101A4F40 (CInt(4), var_8C)
  loc_101A4E4: var_8C.Text = vbNullString
  loc_101A4F0: Exit Sub
End Sub

Public Sub Proc_98_79_107A52C
  'Data Table: 5495E4
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
  Dim var_14C As String
  Dim var_148 As Label
  Dim var_144 As Variant
  Dim var_160 As Label
  loc_107A2B6: Set var_8C = Me.LTxt
  loc_107A2BC: Call 0.Method_Proc_98_79_107A52C0 (CInt(&H1B), var_90)
  loc_107A2C4: var_90.Caption = vbNullString
  loc_107A2F5: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_107A309:   Set var_8C = Me.LTxt
  loc_107A30F:   Call 0.Method_Proc_98_79_107A52C0 (CInt(&H1B), var_90)
  loc_107A32B:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_107A330:   var_D8 = 8
  loc_107A356:   var_15C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_107A375:   var_110 = CVar((Val(var_90.Caption) + var_15C)) 'Double
  loc_107A393:   Set var_144 = Me.LTxt
  loc_107A399:   Call 0.Method_Proc_98_79_107A52C0 (CInt(&H1B), var_148, CStr(Format(var_110, "0.00")), 1, 1)
  loc_107A3A1:   var_148.Caption = var_15C
  loc_107A3CA: Next var_A4 'Integer
  loc_107A3DD: Set var_8C = Me.LTxt
  loc_107A3E3: Call 0.Method_Proc_98_79_107A52C0 (CInt(&H1A), var_90)
  loc_107A3EB: var_A8 = var_90.Caption
  loc_107A409: Set var_EC = Me.LTxt
  loc_107A40F: Call 0.Method_Proc_98_79_107A52C0 (CInt(&H1B), var_144)
  loc_107A417: var_F0 = var_144.Caption
  loc_107A443: var_A0 = CVar((Val(var_A8) - Val(var_F0))) 'Double
  loc_107A461: Set var_148 = Me.LTxt
  loc_107A467: Call 0.Method_Proc_98_79_107A52C0 (CInt(&H1C), var_160, CStr(Format(Me.FGrid.TextMatrix), "0.00")), 1)
  loc_107A46F: var_160.Caption = 1
  loc_107A4A3: Set var_EC = Me.Txt
  loc_107A4A9: Call 0.Method_Proc_98_79_107A52C0 (CInt(&H19), var_144, var_F0)
  loc_107A4B1: var_15C = var_144.Text
  loc_107A4BE: var_154 = Val(var_F0)
  loc_107A4CF: Set var_8C = Me.LTxt
  loc_107A4D5: Call 0.Method_Proc_98_79_107A52C0 (CInt(&H1B), var_90, var_A8)
  loc_107A4F0: var_14C = CStr((Val(var_A8) + var_90.Caption))
  loc_107A4FE: Set var_148 = Me.LTxt
  loc_107A504: Call 0.Method_Proc_98_79_107A52C0 (CInt(&H1D), var_160)
  loc_107A50C: var_160.Caption = CStr(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_107A529: Exit Sub
End Sub

Public Sub Proc_98_80_140E534
  'Data Table: 5495E4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_140DAF7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140DAFC: var_C8 = 1
  loc_140DB33: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_140DB3A:   Set var_F4 = Me.FGrid
  loc_140DB7A:   Set var_DC = Me.Txt
  loc_140DB80:   Call 0.Method_Proc_98_80_140E5340 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_140DB88:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140DBB3:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140DBB8:   var_C8 = 2
  loc_140DBD5:   global_160 = CStr(var_F4.TextMatrix))
  loc_140DBFE:   var_C8 = 3
  loc_140DC23:   Set var_DC = Me.Txt
  loc_140DC29:   Call 0.Method_Proc_98_80_140E5340 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_140DC31:   var_F8.Text = var_C8
  loc_140DC5C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140DC61:   var_C8 = 4
  loc_140DC7E:   global_152 = CStr(var_F4.TextMatrix))
  loc_140DCA2:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140DCA7:   var_C8 = 5
  loc_140DCC4:   global_156 = CStr(var_F4.TextMatrix))
  loc_140DCE8:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140DD11:   Set var_DC = Me.Txt
  loc_140DD17:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_140DD1F:   var_F8.Tag = var_A8
  loc_140DD4A:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140DD52:   var_C8 = CVar(CLng(7)) 'Long
  loc_140DD89:   var_158 = var_F4.TextMatrix)
  loc_140DD99:   Set var_F8 = Me.FGrid
  loc_140DDF7:   Set var_1FC = Me.Txt
  loc_140DDFD:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H10), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_140DE05:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_140DE4D:   var_C8 = 8
  loc_140DE59:   var_EC = var_F4.TextMatrix)
  loc_140DE72:   Set var_DC = Me.Txt
  loc_140DE78:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H11), var_F8, CStr(var_EC), var_C8, CVar(CLng(Me.FGrid.Row)), var_EC)
  loc_140DE80:   var_F8.Text = var_C8
  loc_140DEAB:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140DED4:   Set var_DC = Me.Txt
  loc_140DEDA:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)), var_A8)
  loc_140DEE2:   var_F8.Text = var_A8
  loc_140DF36:   Set var_DC = Me.Txt
  loc_140DF3C:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_140DF44:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140DF98:   Set var_DC = Me.Txt
  loc_140DF9E:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H14), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_140DFA6:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140DFFB:   Set var_DC = Me.Txt
  loc_140E001:   Call 0.Method_Proc_98_80_140E5340 (CInt(3), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_140E009:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E05D:   Set var_DC = Me.Txt
  loc_140E063:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H15), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_140E06B:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E0BF:   Set var_DC = Me.Txt
  loc_140E0C5:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H16), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_140E0CD:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E121:   Set var_DC = Me.Txt
  loc_140E127:   Call 0.Method_Proc_98_80_140E5340 (CInt(4), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H1A)))
  loc_140E12F:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E183:   Set var_DC = Me.Txt
  loc_140E189:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H17), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_140E191:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E1E5:   Set var_DC = Me.Txt
  loc_140E1EB:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_140E1F3:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E247:   Set var_DC = Me.Txt
  loc_140E24D:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H18), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_140E255:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140E2AA:   Set var_DC = Me.Txt
  loc_140E2B0:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H19), var_F8, CStr(var_F4.TextMatrix)), &H11)
  loc_140E2B8:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E30D:   Set var_DC = Me.Txt
  loc_140E313:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_140E31B:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140E370:   Set var_DC = Me.Txt
  loc_140E376:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H1E), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_140E37E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E3D3:   Set var_DC = Me.Txt
  loc_140E3D9:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_140E3E1:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140E436:   Set var_DC = Me.Txt
  loc_140E43C:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H1F), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_140E444:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E499:   Set var_DC = Me.Txt
  loc_140E49F:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H20), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_140E4A7:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_140E4FC:   Set var_DC = Me.Txt
  loc_140E502:   Call 0.Method_Proc_98_80_140E5340 (CInt(&H20), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_140E50A:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_140E527:   global_172 = &HFF
  loc_140E52C:   Set var_F4 = Nothing 
  loc_140E530: End If
  loc_140E530: Exit Sub
End Sub

Public Sub Proc_98_81_EE3CB8
  'Data Table: 5495E4
  loc_EE3C06: On Error Goto loc_EE3C4C
  loc_EE3C1E: Call 0.Method_arg_18C (var_8C)
  loc_EE3C26: Call var_8C.Show
  loc_EE3C3B: Call 0.Method_arg_188 (var_B0)
  loc_EE3C43: var_88 = var_B0
  loc_EE3C46: Proc_98_81_EE3CB8 = 1
  loc_EE3C4C: ' Referenced from: EE3C06
  loc_EE3C54: Set var_8C = Err()
  loc_EE3C5A: Call 0.Method_arg_1C (var_B4)
  loc_EE3C6B: If (var_B4 <> 0) Then
  loc_EE3C76:   Set var_8C = Err()
  loc_EE3C7C:   Call 0.Method_arg_2C (var_B0)
  loc_EE3C9D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE3CB0: End If
  loc_EE3CB0: Proc_98_81_EE3CB8 = 
  loc_EE3CB6: CExtInstUnk
End Sub
