VERSION 5.00
Begin VB.Form RsPaymentReceice
  Caption = "Payment Receive Entry (POS)"
  BackColor = &HFFC0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsPaymentReceice.frx":0
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
    Left = 1275
    Top = 7200
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 59
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
      Height = 285
      TabIndex = 17
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
      ForeColor = &HC00000&
      Left = -15
      Top = 15
      Width = 795
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
  End
  Begin DataGrid DGAgAc
    Left = 14640
    Top = 5295
    Width = 5385
    Height = 2160
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 57
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2340
    Top = 1110
    Width = 5025
    Height = 285
    TabIndex = 1
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
  Begin DataGrid DGRoom
    Left = 14640
    Top = 4935
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin DataGrid DGCompany
    Left = 14655
    Top = 4560
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin DataGrid DGEmp
    Left = 14640
    Top = 4200
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 24
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6915
    Height = 450
    TabIndex = 53
  End
  Begin Frame FrRest
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 1425
    Width = 6210
    Height = 945
    TabIndex = 48
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 5505
      Top = 0
      Width = 630
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
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4080
      Top = 0
      Width = 1395
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
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 1605
      Height = 285
      TabIndex = 2
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
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 6
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
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 5025
      Height = 285
      TabIndex = 5
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
      Caption = "Date"
      Index = 0
      ForeColor = &HC00000&
      Left = 3570
      Top = 15
      Width = 435
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
    Begin Label Lbl
      Caption = "Vr. No."
      Index = 37
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 645
      Height = 240
      TabIndex = 54
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
    Begin Label LblName
      Caption = "Type"
      Index = 13
      ForeColor = &HC00000&
      Left = 0
      Top = 330
      Width = 465
      Height = 240
      TabIndex = 49
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
    Left = 1275
    Top = 6255
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
      Height = 285
      TabIndex = 14
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
  End
  Begin Frame FrRem
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 2370
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
      Height = 285
      TabIndex = 18
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
  End
  Begin Frame FrChqDet
    BackColor = &HC9E2F5&
    Left = 1275
    Top = 5325
    Width = 6210
    Height = 630
    Visible = 0   'False
    TabIndex = 38
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 1600
      Height = 285
      TabIndex = 11
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
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 1600
      Height = 285
      TabIndex = 12
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
      Top = 15
      Width = 1110
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &HC00000&
      Left = -15
      Top = 330
      Width = 1050
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
  Begin Frame FrSendRoom
    BackColor = &HC9E2F5&
    Left = 1275
    Top = 6885
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 1600
      Height = 285
      TabIndex = 16
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
  Begin Frame FrEmp
    BackColor = &HC9E2F5&
    Left = 1275
    Top = 6570
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 15
      Width = 5025
      Height = 285
      TabIndex = 15
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
  Begin Frame FrComp
    BackColor = &HC9E2F5&
    Left = 1275
    Top = 5940
    Width = 6210
    Height = 315
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 13
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
      Caption = "Company"
      Index = 27
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 900
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
  End
  Begin Frame FrCCDet
    BackColor = &HC9E2F5&
    Left = 1230
    Top = 2685
    Width = 6210
    Height = 945
    Visible = 0   'False
    TabIndex = 28
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4530
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 10
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
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 5025
      Height = 285
      TabIndex = 7
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
      ForeColor = &HC00000&
      Left = 1110
      Top = 315
      Width = 5025
      Height = 285
      TabIndex = 8
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
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 630
      Width = 1600
      Height = 285
      TabIndex = 9
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
    Begin Label LblName
      Caption = "C.C. No."
      Index = 18
      ForeColor = &HC00000&
      Left = 0
      Top = 30
      Width = 765
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
      Caption = "Holder"
      Index = 19
      ForeColor = &HC00000&
      Left = 0
      Top = 345
      Width = 630
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
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &HC00000&
      Left = 0
      Top = 660
      Width = 675
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
  End
  Begin DataGrid DGPayType
    Left = 14640
    Top = 3840
    Width = 4995
    Height = 2300
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
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
    TabIndex = 21
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
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 1275
    Top = 4080
    Width = 6105
    Height = 1230
    TabIndex = 20
  End
  Begin MSFlexGrid FGPoint
    Left = 14100
    Top = 615
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 43
  End
  Begin DataGrid DGMember
    Left = 14640
    Top = 3480
    Width = 6735
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin MSHFlexGrid GridSel
    Left = 7695
    Top = 1440
    Width = 6495
    Height = 5985
    TabIndex = 19
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 480
    Width = 180
    Height = 540
    TabIndex = 58
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
  Begin Label Lbl
    Caption = "Party"
    Index = 1
    ForeColor = &HC00000&
    Left = 1230
    Top = 1155
    Width = 495
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4395
    Top = 7920
    Width = 2790
    Height = 285
    TabIndex = 52
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
    TabIndex = 50
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
  Begin Label Label1
    Caption = "Press Ctrl+S to Save"
    Index = 0
    ForeColor = &HFF0000&
    Left = 240
    Top = 75
    Width = 2970
    Height = 300
    TabIndex = 27
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
    Left = 6120
    Top = 600
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 23
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
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "RsPaymentReceice"

Private global_184 As Double
Private global_196 As Double
Private global_164 As Integer
Private global_116 As Long
Private global_120 As Long
Private global_112 As Long
Private global_176 As Integer

Private Sub Txt_GotFocus(Index As Integer) '1514774
  'Data Table: 539FB0
  Dim var_92 As Integer
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_8C As TextBox
  Dim var_B8 As Variant
  Dim var_A0 As Variant
  Dim Me As Variant
  Dim var_F4 As Variant
  Dim var_88 As Frame
  loc_151385E: Set var_88 = Me.Txt
  loc_1513864: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1513872: Proc_6_74_E226B0(var_8C)
  loc_151387E: Call Proc_339_73_F7001C(var_8C)
  loc_1513886: var_92 = Index
  loc_1513891: If (var_92 = CInt(5)) Then
  loc_15138B4:   Set var_A0 = Me.Txt
  loc_15138BA:   Call 0.Method_Txt_GotFocus0 (CInt(5), var_A4)
  loc_15138D5:   Set var_88 = Me.Txt
  loc_15138DB:   Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_15138F3:   var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_1513902:   Me.DGPayType.Top = var_B8
  loc_1513936:   Set var_88 = Me.Txt
  loc_151393C:   Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_1513950:   var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_151395F:   Me.DGPayType.Left = var_B8
  loc_1513986:   If (Me.RecordCount > 0) Then
  loc_1513994:     Set var_8C = Me.FGPoint
  loc_15139AC:     Proc_6_137_1193554(Me.DGPayType, global_68, Index)
  loc_15139BA:   End If
  loc_1513A08:   Set var_88 = Me.Txt
  loc_1513A0E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1513A16:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1513A2E:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_1513A31:     Exit Sub
  loc_1513A32:   End If
  loc_1513A3F:   Set var_88 = Me.Txt
  loc_1513A45:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1513A4D:   var_D4 = var_8C.Text
  loc_1513A5F:   var_B8 = "Name"
  loc_1513A76:   var_A0 = Me.Fields.Item(var_B8)
  loc_1513A9A:   If CBool(CVar(var_D4) <> var_A0.Value) Then
  loc_1513AA3:     Me.MoveFirst
  loc_1513AC6:     Set var_88 = Me.Txt
  loc_1513ACC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_1513AD4:     0 = var_8C.Text
  loc_1513AED:     Me.Find 1 & var_D4 & "'", var_B8, var_92
  loc_1513B02:   End If
  loc_1513B05: Else
  loc_1513B0D:   If (var_92 = CInt(4)) Then
  loc_1513B1E:     Set var_90 = Me.Txt
  loc_1513B24:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_A0)
  loc_1513B3F:     Set var_88 = Me.Txt
  loc_1513B45:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1513B59:     var_B8 = CVar((var_8C.Top + var_A0.Height)) 'Single
  loc_1513B62:     Set var_A4 = Me.DGAgAc
  loc_1513B68:     var_A4.Top = var_B8
  loc_1513B88:     Set var_88 = Me.Txt
  loc_1513B8E:     Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1513BA7:     Set var_90 = Me.DGAgAc
  loc_1513BAD:     var_90.Left = CVar(var_8C.Left)
  loc_1513BD5:     If (Me.var_90.RecordCount > 0) Then
  loc_1513BE3:       Set var_8C = Me.FGPoint
  loc_1513BFF:       Proc_6_137_1193554(Me.DGAgAc, global_92)
  loc_1513C0D:     End If
  loc_1513C64:     Set var_88 = Me.Txt
  loc_1513C6A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1513C72:     ((global_92.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1513C8A:     If (Index Or (var_D4 = vbNullString)) Then
  loc_1513C9A:       Set var_88 = Me.Txt
  loc_1513CA0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1513CA8:       var_8C.Tag = vbNullString
  loc_1513CB4:       Exit Sub
  loc_1513CB5:     End If
  loc_1513CC2:     Set var_88 = Me.Txt
  loc_1513CC8:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1513CDB:     global_168 = var_8C.Text
  loc_1513CF6:     Set var_88 = Me.Txt
  loc_1513CFC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1513D04:     var_D4 = var_8C.Text
  loc_1513D16:     var_B8 = "Name"
  loc_1513D54:     If CBool(CVar(var_D4) <> Me.Recordset15.Fields.Item(var_B8).Value) Then
  loc_1513D60:       Me.Recordset15.MoveFirst
  loc_1513D83:       Set var_88 = Me.Txt
  loc_1513D89:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name='")
  loc_1513D91:       0 = var_8C.Text
  loc_1513DAD:       Me.Recordset15.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_1513DC2:     End If
  loc_1513DC5:   Else
  loc_1513DCD:     If (var_92 = CInt(&HF)) Then
  loc_1513DE7:       If (Me.RecordCount > 0) Then
  loc_1513DF5:         Set var_8C = Me.FGPoint
  loc_1513E0D:         Proc_6_137_1193554(Me.DGEmp, global_72)
  loc_1513E1B:       End If
  loc_1513E69:       Set var_88 = Me.Txt
  loc_1513E6F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1513E77:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1513E8F:       If (Index Or (var_D4 = vbNullString)) Then
  loc_1513E92:         Exit Sub
  loc_1513E93:       End If
  loc_1513EA0:       Set var_88 = Me.Txt
  loc_1513EA6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1513EAE:       var_D4 = var_8C.Text
  loc_1513EC0:       var_B8 = "Name"
  loc_1513EFB:       If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_1513F04:         Me.MoveFirst
  loc_1513F27:         Set var_88 = Me.Txt
  loc_1513F2D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_1513F35:         0 = var_8C.Text
  loc_1513F4E:         Me.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_1513F63:       End If
  loc_1513F66:     Else
  loc_1513F6E:       If (var_92 = CInt(&H10)) Then
  loc_1513F91:         Set var_A0 = Me.Txt
  loc_1513F97:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_A4)
  loc_1513FB2:         Set var_88 = Me.Txt
  loc_1513FB8:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_1513FD0:         var_B8 = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_A4.Height)) 'Single
  loc_1513FDF:         Me.DGRoom.Top = var_B8
  loc_1514013:         Set var_88 = Me.Txt
  loc_1514019:         Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_151402D:         var_B8 = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_151403C:         Me.DGRoom.Left = var_B8
  loc_1514063:         If (Me.RecordCount > 0) Then
  loc_1514071:           Set var_8C = Me.FGPoint
  loc_1514089:           Proc_6_137_1193554(Me.DGRoom, global_76)
  loc_1514097:         End If
  loc_15140E5:         Set var_88 = Me.Txt
  loc_15140EB:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15140F3:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_151410B:         If (Index Or (var_D4 = vbNullString)) Then
  loc_151410E:           Exit Sub
  loc_151410F:         End If
  loc_151411C:         Set var_88 = Me.Txt
  loc_1514122:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151412A:         var_D4 = var_8C.Text
  loc_1514132:         var_F4 = CVar(var_D4) 'String
  loc_151414B:         var_90 = Me.Fields
  loc_1514177:         If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_1514180:           Me.MoveFirst
  loc_15141A5:           Set var_88 = Me.Txt
  loc_15141AB:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15141B3:           0 = var_8C.Text
  loc_15141C1:           Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_15141D7:           Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15141EF:         End If
  loc_15141F2:       Else
  loc_15141FA:         If (var_92 = CInt(&HD)) Then
  loc_151420B:           Set var_8C = Me.Txt
  loc_1514211:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_90)
  loc_1514237:           var_B8 = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_1514246:           Me.DGCompany.Top = "Name ="
  loc_1514288:           Set var_88 = Me.Txt
  loc_151428E:           Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_15142A6:           var_B8 = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_15142B5:           Me.DGCompany.Left = "Name ="
  loc_15142DE:           If (Me.RecordCount > 0) Then
  loc_15142EC:             Set var_8C = Me.FGPoint
  loc_1514304:             Proc_6_137_1193554(Me.DGCompany, global_84)
  loc_1514312:           End If
  loc_1514360:           Set var_88 = Me.Txt
  loc_1514366:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_151436E:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1514386:           If (Index Or (var_D4 = vbNullString)) Then
  loc_1514389:             Exit Sub
  loc_151438A:           End If
  loc_1514397:           Set var_88 = Me.Txt
  loc_151439D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15143A5:           var_D4 = var_8C.Text
  loc_15143AD:           var_F4 = CVar(var_D4) 'String
  loc_15143C6:           var_90 = Me.Fields
  loc_15143F2:           If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_15143FB:             Me.MoveFirst
  loc_1514420:             Set var_88 = Me.Txt
  loc_1514426:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_151442E:             0 = var_8C.Text
  loc_151443C:             Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_1514452:             Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_151446A:           End If
  loc_151446D:         Else
  loc_1514475:           If (var_92 = CInt(&HE)) Then
  loc_1514486:             Set var_8C = Me.Txt
  loc_151448C:             Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_90)
  loc_15144B2:             var_B8 = CVar((Me.FrMember.Top + var_90.Height)) 'Single
  loc_15144C1:             Me.DGMember.Top = "Name ="
  loc_1514503:             Set var_88 = Me.Txt
  loc_1514509:             Call 0.Method_Txt_GotFocus0 (CInt(&HE), var_8C)
  loc_1514526:             var_B8 = CVar((((var_8C.Left + Me.FrRest.Left) + Me.FrMember.Left) - CDbl(1260))) 'Single
  loc_1514535:             Me.DGMember.Left = "Name ="
  loc_151455E:             If (Me.RecordCount > 0) Then
  loc_151456C:               Set var_8C = Me.FGPoint
  loc_1514584:               Proc_6_137_1193554(Me.DGMember, global_88)
  loc_1514592:             End If
  loc_15145E0:             Set var_88 = Me.Txt
  loc_15145E6:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_15145EE:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1514606:             If (Index Or (var_D4 = vbNullString)) Then
  loc_1514609:               Exit Sub
  loc_151460A:             End If
  loc_1514617:             Set var_88 = Me.Txt
  loc_151461D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1514625:             var_D4 = var_8C.Text
  loc_151462D:             var_F4 = CVar(var_D4) 'String
  loc_151464E:             var_A0 = Me.Fields.Item("Name")
  loc_1514672:             If CBool(var_F4 <> var_A0.Value) Then
  loc_151467B:               Me.MoveFirst
  loc_15146A0:               Set var_88 = Me.Txt
  loc_15146A6:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15146AE:               0 = var_8C.Text
  loc_15146BC:               Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_15146D2:               Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_15146EA:             End If
  loc_15146ED:           Else
  loc_15146F5:             If (var_92 = CInt(6)) Then
  loc_1514707:               Set var_88 = Me.Txt
  loc_151470D:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1514715:               var_8C.SelStart = 0
  loc_151472E:               Set var_88 = Me.Txt
  loc_1514734:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_151474F:               Set var_90 = Me.Txt
  loc_1514755:               Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_151475D:               var_A0.SelLength = Len(var_8C.Text)
  loc_1514770:             End If
  loc_1514770:           End If
  loc_1514770:         End If
  loc_1514770:       End If
  loc_1514770:     End If
  loc_1514770:   End If
  loc_1514770: End If
  loc_1514770: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13E42E4
  'Data Table: 539FB0
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_A0 As Variant
  Dim var_9C As DataGrid
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim Shift As Integer
  Dim var_86 As Integer
  loc_13E3907: var_88 = Shift
  loc_13E3914: If (CLng(Shift) = &H1B) Then
  loc_13E3917:   Call Proc_339_73_F7001C(var_88)
  loc_13E391C:   Exit Sub
  loc_13E391D: End If
  loc_13E3920: var_8A = KeyCode
  loc_13E392B: If (var_8A = CInt(5)) Then
  loc_13E394B:   Set var_A0 = Me.FGPoint
  loc_13E3956:   Set var_9C = Nothing
  loc_13E3984:   Proc_6_69_134A198(Me.DGPayType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_13E39F3:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E39FA:     Set var_9C = Me.DGPayType
  loc_13E3A19:     Proc_6_138_106D6F8(var_9C, global_68, KeyCode, Me.FGPoint, 1)
  loc_13E3A27:   End If
  loc_13E3A3E:   If (Me.RecordCount > 0) Then
  loc_13E3A70:     Call Proc_339_77_1197A3C(Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")), var_9C, var_A0), 0)
  loc_13E3A7E:   End If
  loc_13E3A81: Else
  loc_13E3A89:   If (var_8A = CInt(4)) Then
  loc_13E3AA9:     Set var_A0 = Me.FGPoint
  loc_13E3AB4:     Set var_9C = Nothing
  loc_13E3AE6:     Proc_6_69_134A198(Me.DGAgAc, Me.Txt, KeyCode, global_92, Shift, 0)
  loc_13E3B58:     If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E3B82:       Proc_6_138_106D6F8(Me.DGAgAc, global_92, KeyCode, Me.FGPoint, 1)
  loc_13E3B90:     End If
  loc_13E3B93:   Else
  loc_13E3B9B:     If (var_8A = CInt(&HF)) Then
  loc_13E3BC6:       Set var_9C = Nothing
  loc_13E3BF8:       Proc_6_69_134A198(Me.DGEmp, Me.Txt, CInt(&HF), global_72, Shift, 0, 1)
  loc_13E3C67:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E3C6E:         Set var_9C = Me.DGEmp
  loc_13E3C8D:         Proc_6_138_106D6F8(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_13E3C9B:       End If
  loc_13E3C9E:     Else
  loc_13E3CA6:       If (var_8A = CInt(&H10)) Then
  loc_13E3D03:         Proc_6_69_134A198(Me.DGRoom, Me.Txt, CInt(&H10), global_76, Shift, 0, 1, Nothing)
  loc_13E3D72:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E3D98:           Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13E3DA6:         End If
  loc_13E3DA9:       Else
  loc_13E3DB1:         If (var_8A = CInt(&HD)) Then
  loc_13E3E0E:           Proc_6_69_134A198(Me.DGCompany, Me.Txt, CInt(&HD), global_84, Shift, 0, 1, Nothing)
  loc_13E3E7D:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E3EA3:             Proc_6_138_106D6F8(Me.DGCompany, global_84, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13E3EB1:           End If
  loc_13E3EB4:         Else
  loc_13E3EBC:           If (var_8A = CInt(&HE)) Then
  loc_13E3EDC:             Set var_A0 = Me.FGPoint
  loc_13E3F19:             Proc_6_69_134A198(Me.DGMember, Me.Txt, CInt(&HE), global_88, Shift, 0, 1, Nothing)
  loc_13E3F88:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13E3F8F:               Set var_9C = Me.DGMember
  loc_13E3F96:               Set var_94 = Me.FGPoint
  loc_13E3FAE:               Proc_6_138_106D6F8(var_9C, global_88, KeyCode, var_94, var_A0, 0)
  loc_13E3FBC:             End If
  loc_13E3FBF:           Else
  loc_13E3FC7:             If (var_8A = CInt(&H12)) Then
  loc_13E3FD4:               If (CLng(Shift) = &H2D) Then
  loc_13E3FDA:                 Call Proc_339_82_EE34B8(var_D8, 0, var_9C)
  loc_13E3FEC:                 Set var_90 = Me.Txt
  loc_13E3FF2:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_D8)
  loc_13E4016:                 Set var_90 = Me.Txt
  loc_13E401C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_D8)
  loc_13E4024:                 0 = var_A0
  loc_13E4037:                 Set var_9C = Me.Txt
  loc_13E403D:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0)
  loc_13E4045:                 var_A0.SelStart = Len(var_D8)
  loc_13E4058:                 Exit Sub
  loc_13E4059:               End If
  loc_13E4059:             End If
  loc_13E4059:           End If
  loc_13E4059:         End If
  loc_13E4059:       End If
  loc_13E4059:     End If
  loc_13E4059:   End If
  loc_13E4059: End If
  loc_13E4090: var_FC = Me.DGAgAc.Visible
  loc_13E40A7: var_10C = Me.DGEmp.Visible
  loc_13E4100: If ((((((CBool(Me.DGRoom.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_FC) = 0)) And (CBool(var_10C) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_13E4123:   If (((CLng(Shift) = &H26) And (global_120 = 5)) And (KeyCode = CInt(5))) Then
  loc_13E4126:     Exit Sub
  loc_13E4127:   End If
  loc_13E4145:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HA))) Then
  loc_13E4152:     If (CLng(Shift) = &H28) Then
  loc_13E4155:       Exit Sub
  loc_13E4156:     End If
  loc_13E418D:     If (MsgBox("OK?", 4, "Save Detail", var_FC, var_10C) = 6) Then
  loc_13E4190:       Call Proc_339_78_14D2330(var_8A)
  loc_13E4197:       Shift = 0
  loc_13E419A:     End If
  loc_13E419A:     Exit Sub
  loc_13E419E:   Else
  loc_13E41BC:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H12))) Then
  loc_13E41C9:       If (CLng(Shift) = &H28) Then
  loc_13E41CC:         Exit Sub
  loc_13E41CD:       End If
  loc_13E4204:       If (MsgBox("OK?", 4, "Save Detail", var_FC, var_10C) = 6) Then
  loc_13E4207:         Call Proc_339_78_14D2330(Shift)
  loc_13E420E:         Shift = 0
  loc_13E4211:       End If
  loc_13E4211:       Exit Sub
  loc_13E4215:     Else
  loc_13E4233:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H10))) Then
  loc_13E4240:         If (CLng(Shift) = &H28) Then
  loc_13E4243:           Exit Sub
  loc_13E4244:         End If
  loc_13E4246:         var_86 = 0
  loc_13E4253:         Call Txt_Validate(CInt(&H10))
  loc_13E425E:         If (var_86 = &HFF) Then
  loc_13E4261:           Exit Sub
  loc_13E4262:         End If
  loc_13E4299:         If (MsgBox("OK?", 4, "Save Detail", var_FC, var_10C) = 6) Then
  loc_13E429C:           Call Proc_339_78_14D2330(var_86, var_86)
  loc_13E42A3:           Shift = 0
  loc_13E42A6:         End If
  loc_13E42A6:         Exit Sub
  loc_13E42A7:       End If
  loc_13E42A7:     End If
  loc_13E42A7:   End If
  loc_13E42BC:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13E42C5:     Proc_6_75_E527CC(Shift, arg_14)
  loc_13E42CA:   End If
  loc_13E42D4:   If (CLng(Shift) = &H26) Then
  loc_13E42DD:     Proc_6_76_E52838(Shift, arg_14)
  loc_13E42E2:   End If
  loc_13E42E2: End If
  loc_13E42E2: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1032304
  'Data Table: 539FB0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As Variant
  Dim var_94 As Variant
  Dim Me As Recordset15
  loc_10320C2: If (arg_10 = &HD) Then
  loc_10320C7:   arg_10 = 0
  loc_10320CA: End If
  loc_10320CD: Proc_6_58_E054C0(arg_10)
  loc_10320D8: Proc_6_133_E7EF78(var_94, arg_10)
  loc_10320E1: arg_10 = CInt(var_94)
  loc_10320EA: var_96 = KeyAscii
  loc_10320F5: If (var_96 = CInt(5)) Then
  loc_1032114:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_1032141:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1032173:     Proc_6_138_106D6F8(Me.DGPayType, global_68, KeyAscii, Me.FGPoint)
  loc_1032181:   End If
  loc_1032198:   If (Me.RecordCount > 0) Then
  loc_10321B5:     var_A8 = Me.Fields.Item("PayType")
  loc_10321CA:     Call Proc_339_77_1197A3C(Proc_6_38_E68A98(CVar(var_A8), 0, var_96), arg_10)
  loc_10321D8:   End If
  loc_10321DB: Else
  loc_10321E3:   If (var_96 = CInt(6)) Then
  loc_10321F0:     Set var_9C = Me.Txt
  loc_10321F6:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_1032211:     Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_1032220:   Else
  loc_1032228:     If (var_96 = CInt(&HA)) Then
  loc_1032235:       Set var_9C = Me.Txt
  loc_103223B:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_1032256:       Proc_6_42_129A86C(var_A8, arg_10, 5)
  loc_1032265:     Else
  loc_103226D:       If (var_96 = CInt(4)) Then
  loc_103228C:         If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_10322BD:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_92, arg_10, "Name")
  loc_10322F3:           Proc_6_138_106D6F8(Me.DGAgAc, global_92, KeyAscii, Me.FGPoint)
  loc_1032301:         End If
  loc_1032301:       End If
  loc_1032301:     End If
  loc_1032301:   End If
  loc_1032301: End If
  loc_1032301: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1108F34
  'Data Table: 539FB0
  Dim var_86 As Integer
  loc_1108BF3: var_86 = KeyCode
  loc_1108BFE: If (var_86 = CInt(5)) Then
  loc_1108C1D:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_1108C31:     var_A4 = "Name"
  loc_1108C55:     Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyCode, global_68)
  loc_1108C8B:     Proc_6_138_106D6F8(Me.DGPayType, global_68, KeyCode, Me.FGPoint)
  loc_1108C99:   End If
  loc_1108C9C: Else
  loc_1108CA4:   If (var_86 = CInt(&HF)) Then
  loc_1108CC3:     If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1108CD7:       var_A4 = "Name"
  loc_1108CFB:       Proc_6_68_129FB34(Me.DGEmp, Me.Txt, KeyCode, global_72, Shift)
  loc_1108D31:       Proc_6_138_106D6F8(Me.DGEmp, global_72, KeyCode, Me.FGPoint)
  loc_1108D3F:     End If
  loc_1108D42:   Else
  loc_1108D4A:     If (var_86 = CInt(&H10)) Then
  loc_1108D69:       If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1108DA1:         Proc_6_68_129FB34(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_1108DD7:         Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1108DE5:       End If
  loc_1108DE8:     Else
  loc_1108DF0:       If (var_86 = CInt(&HD)) Then
  loc_1108E0F:         If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1108E47:           Proc_6_68_129FB34(Me.DGCompany, Me.Txt, KeyCode, global_84, Shift)
  loc_1108E7D:           Proc_6_138_106D6F8(Me.DGCompany, global_84, KeyCode, Me.FGPoint, "Name")
  loc_1108E8B:         End If
  loc_1108E8E:       Else
  loc_1108E96:         If (var_86 = CInt(&HE)) Then
  loc_1108EB5:           If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_1108EED:             Proc_6_68_129FB34(Me.DGMember, Me.Txt, KeyCode, global_88, Shift)
  loc_1108F23:             Proc_6_138_106D6F8(Me.DGMember, global_88, KeyCode, Me.FGPoint, "Name")
  loc_1108F31:           End If
  loc_1108F31:         End If
  loc_1108F31:       End If
  loc_1108F31:     End If
  loc_1108F31:   End If
  loc_1108F31: End If
  loc_1108F31: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C5FC
  'Data Table: 539FB0
  loc_E4C5DA: Set var_88 = Me.Txt
  loc_E4C5E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C5EE: Proc_6_73_E22704(var_8C)
  loc_E4C5FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14F8E5C
  'Data Table: 539FB0
  Dim var_8E As Integer
  Dim Me As Variant
  Dim var_A0 As Variant
  Dim var_9C As Fields15
  Dim var_A4 As String
  Dim var_BC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim unk_539FDF As Connection15
  Dim var_8C As Recordset15
  Dim arg_10 As Integer
  Dim var_130 As TextBox
  loc_14F7FEB: var_8E = Cancel
  loc_14F7FF6: If (var_8E = CInt(&H10)) Then
  loc_14F8047:   Set var_9C = Me.Txt
  loc_14F804D:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F8055:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_14F806D:   If (var_8E Or (var_A4 = vbNullString)) Then
  loc_14F807D:     Set var_9C = Me.Txt
  loc_14F8083:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F808B:     var_A0.Text = vbNullString
  loc_14F80A4:     Set var_9C = Me.Txt
  loc_14F80AA:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F80B2:     var_A0.Tag = vbNullString
  loc_14F80C1:   Else
  loc_14F80FC:     Set var_B8 = Me.Txt
  loc_14F8102:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F810A:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14F8161:     Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F8169:     var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14F81BE:     var_EC = "Select count(Distinct Bill_no) from paycharge where bill_no is not null and bill_no<>'' and FolionoDocid='" & Me.Fields.Item("FolioNoDocid").Value 
  loc_14F81C7:     var_10C = var_EC & "'" 
  loc_14F81D5:     unk_539FDF.Execute CStr(var_10C), var_12C, -1
  loc_14F8214:     var_A0 = Me.Txt.Fields.Item(0)
  loc_14F8236:     If (var_A0.Value > 0) Then
  loc_14F8252:       MsgBox("Guest Room Bill Already printed for this Room", &H10, var_EC, var_10C, var_12C)
  loc_14F8267:       Set var_8C = Nothing
  loc_14F826C:       arg_10 = &HFF
  loc_14F826F:       Exit Sub
  loc_14F8270:     End If
  loc_14F8270:   End If
  loc_14F8273: Else
  loc_14F827B:   If (var_8E = CInt(2)) Then
  loc_14F827E:     GoTo loc_14F8E58
  loc_14F8281:   End If
  loc_14F8289:   If (var_8E = CInt(&HC)) Then
  loc_14F8296:     Set var_9C = Me.Txt
  loc_14F829C:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F82BC:     Set var_BC = Me.Txt
  loc_14F82C2:     Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_14F82CA:     var_130.Text = Proc_6_33_1512840(var_A0, arg_10)
  loc_14F82E0:   Else
  loc_14F82E8:     If (var_8E = CInt(9)) Then
  loc_14F82F9:       Set var_9C = Me.Txt
  loc_14F82FF:       Call 0.Method_Txt_Validate0 (CInt(9), var_A0)
  loc_14F831E:       If (var_A0.Text = vbNullString) Then
  loc_14F832B:         Set var_9C = Me.Txt
  loc_14F8331:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F835A:         If (Proc_6_27_EA565C(var_A0, "Expiry Date") = 0) Then
  loc_14F8367:           Set var_9C = Me.Txt
  loc_14F836D:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8375:           var_A0.SetFocus
  loc_14F8383:           arg_10 = &HFF
  loc_14F8386:           Exit Sub
  loc_14F8387:         End If
  loc_14F8387:       End If
  loc_14F8391:       Set var_9C = Me.Txt
  loc_14F8397:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F83B7:       Set var_BC = Me.Txt
  loc_14F83BD:       Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_14F83C5:       var_130.Text = Proc_6_33_1512840(var_A0, arg_10)
  loc_14F83E6:       Set var_9C = Me.Txt
  loc_14F83EC:       Call 0.Method_Txt_Validate0 (CInt(9), var_A0)
  loc_14F840C:       If (CDate(var_A0.Text) <= MemVar_1F920EC) Then
  loc_14F8428:         MsgBox("Credit Card has been Expired", &H40, var_EC, var_10C, var_12C)
  loc_14F843A:         arg_10 = &HFF
  loc_14F843D:         Exit Sub
  loc_14F843E:       End If
  loc_14F8441:     Else
  loc_14F8449:       If (var_8E = CInt(5)) Then
  loc_14F8456:         Set var_9C = Me.Txt
  loc_14F845C:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8464:         var_A4 = "Payment Type"
  loc_14F8485:         If (Proc_6_27_EA565C(var_A0, var_A4) = 0) Then
  loc_14F8492:           Set var_9C = Me.Txt
  loc_14F8498:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F84A0:           var_A0.SetFocus
  loc_14F84AE:           arg_10 = &HFF
  loc_14F84B1:           Exit Sub
  loc_14F84B2:         End If
  loc_14F84BF:         Set var_9C = Me.Txt
  loc_14F84C5:         Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F84E4:         If (var_A4 <> vbNullString) Then
  loc_14F8522:           Set var_B8 = Me.Txt
  loc_14F8528:           Call 0.Method_Txt_Validate0 (Cancel, var_BC, CStr(Me.Fields.Item("Name").Value))
  loc_14F8530:           var_BC.Text = Me.Fields.Item("Name").Text
  loc_14F8581:           Set var_B8 = Me.Txt
  loc_14F8587:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F858F:           var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14F85D0:           var_A4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")))
  loc_14F85D6:           global_160 = var_A4
  loc_14F85FD:           var_A0 = Me.Fields.Item("PayType")
  loc_14F8612:           Call Proc_339_79_11AA5B4(Proc_6_38_E68A98(CVar(var_A0)))
  loc_14F8623:         Else
  loc_14F8630:           Set var_9C = Me.Txt
  loc_14F8636:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F863E:           var_A0.Text = vbNullString
  loc_14F8657:           Set var_9C = Me.Txt
  loc_14F865D:           Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8665:           var_A0.Tag = vbNullString
  loc_14F8671:         End If
  loc_14F8674:       Else
  loc_14F867C:         If (var_8E = CInt(4)) Then
  loc_14F86D6:           Set var_9C = Me.Txt
  loc_14F86DC:           Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F86E4:           ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_A0.Text
  loc_14F86FC:           If (var_B8 Or (var_A4 = vbNullString)) Then
  loc_14F870C:             Set var_9C = Me.Txt
  loc_14F8712:             Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F871A:             var_A0.Tag = vbNullString
  loc_14F8726:             Exit Sub
  loc_14F8727:           End If
  loc_14F8765:           Set var_B8 = Me.Txt
  loc_14F876B:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F8773:           var_BC.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_14F87C7:           Set var_B8 = Me.Txt
  loc_14F87CD:           Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F87D5:           var_BC.Tag = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_14F8831:           If CBool(CVar(global_168) <> Me.Recordset15.Fields.Item("Name").Value) Then
  loc_14F8834:             Call Proc_339_83_11B5114()
  loc_14F8839:             Call Proc_339_71_11001CC()
  loc_14F885E:             var_A0 = Me.Recordset15.Fields.Item("SearchCode")
  loc_14F8873:             Call Proc_339_84_1245FC4(CStr(var_A0.Value))
  loc_14F888B:             global_196 = CDbl(0)
  loc_14F88A4:             Set var_9C = Me.Txt
  loc_14F88AA:             Call 0.Method_Txt_Validate0 (CInt(6), var_A0)
  loc_14F88B2:             var_A0.Text = CStr(global_196)
  loc_14F88C1:           End If
  loc_14F88C4:         Else
  loc_14F88CC:           If (var_8E = CInt(6)) Then
  loc_14F88D9:             Set var_9C = Me.Txt
  loc_14F88DF:             Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F88EB:             Proc_6_40_EA50F0(CVar(var_A0))
  loc_14F8902:             var_10C = "0.00"
  loc_14F890B:             var_EC = CVar(global_196) 'Double
  loc_14F8912:             var_12C = Format(var_EC, var_10C)
  loc_14F891A:             var_A4 = CStr(var_12C)
  loc_14F8928:             Set var_B8 = Me.Txt
  loc_14F892E:             Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_A4)
  loc_14F8936:             var_BC.Text = 1
  loc_14F8955:           Else
  loc_14F895D:             If (var_8E = CInt(&HD)) Then
  loc_14F89AE:               Set var_9C = Me.Txt
  loc_14F89B4:               Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F89BC:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_14F89D4:               If (1 Or (var_A4 = vbNullString)) Then
  loc_14F89E4:                 Set var_9C = Me.Txt
  loc_14F89EA:                 Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F89F2:                 var_A0.Text = vbNullString
  loc_14F8A0B:                 Set var_9C = Me.Txt
  loc_14F8A11:                 Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8A19:                 var_A0.Tag = vbNullString
  loc_14F8A28:               Else
  loc_14F8A63:                 Set var_B8 = Me.Txt
  loc_14F8A69:                 Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F8A71:                 var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14F8AA4:                 var_A0 = Me.Fields.Item("Code")
  loc_14F8AB5:                 var_A4 = CStr(var_A0.Value)
  loc_14F8AC2:                 Set var_B8 = Me.Txt
  loc_14F8AC8:                 Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F8AD0:                 var_BC.Tag = var_A4
  loc_14F8B00:                 Set var_9C = Me.Txt
  loc_14F8B06:                 Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F8B0E:                 0 = var_A0.Tag
  loc_14F8B36:                 If (Proc_96_1_F8C534(Proc_6_38_E68A98(CVar(var_A4))) = 0) Then
  loc_14F8B52:                   MsgBox("Credit Not Allowed.", 0, var_EC, var_10C, var_12C)
  loc_14F8B64:                   arg_10 = &HFF
  loc_14F8B67:                   Exit Sub
  loc_14F8B68:                 End If
  loc_14F8B68:               End If
  loc_14F8B6B:             Else
  loc_14F8B73:               If (var_8E = CInt(&HE)) Then
  loc_14F8BC4:                 Set var_9C = Me.Txt
  loc_14F8BCA:                 Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4)
  loc_14F8BD2:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_A0.Text
  loc_14F8BEA:                 If (arg_10 Or (var_A4 = vbNullString)) Then
  loc_14F8BFA:                   Set var_9C = Me.Txt
  loc_14F8C00:                   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8C08:                   var_A0.Text = vbNullString
  loc_14F8C21:                   Set var_9C = Me.Txt
  loc_14F8C27:                   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8C2F:                   var_A0.Tag = vbNullString
  loc_14F8C3E:                 Else
  loc_14F8C79:                   Set var_B8 = Me.Txt
  loc_14F8C7F:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F8C87:                   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14F8CBA:                   var_A0 = Me.Fields.Item("Code")
  loc_14F8CD8:                   Set var_B8 = Me.Txt
  loc_14F8CDE:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14F8CE6:                   var_BC.Tag = CStr(var_A0.Value)
  loc_14F8CFC:                 End If
  loc_14F8CFF:               Else
  loc_14F8D07:                 If (var_8E = CInt(7)) Then
  loc_14F8D14:                   Set var_9C = Me.Txt
  loc_14F8D1A:                   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8D43:                   If (Proc_6_27_EA565C(var_A0, "Credit Card No.") = 0) Then
  loc_14F8D50:                     Set var_9C = Me.Txt
  loc_14F8D56:                     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8D5E:                     var_A0.SetFocus
  loc_14F8D6C:                     arg_10 = &HFF
  loc_14F8D6F:                     Exit Sub
  loc_14F8D70:                   End If
  loc_14F8D73:                 Else
  loc_14F8D7B:                   If (var_8E = CInt(8)) Then
  loc_14F8D88:                     Set var_9C = Me.Txt
  loc_14F8D8E:                     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8DB7:                     If (Proc_6_27_EA565C(var_A0, "Account Holder Name") = 0) Then
  loc_14F8DC4:                       Set var_9C = Me.Txt
  loc_14F8DCA:                       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8DD2:                       var_A0.SetFocus
  loc_14F8DE0:                       arg_10 = &HFF
  loc_14F8DE3:                       Exit Sub
  loc_14F8DE4:                     End If
  loc_14F8DE7:                   Else
  loc_14F8DEF:                     If (var_8E = CInt(&HA)) Then
  loc_14F8DFC:                       Set var_9C = Me.Txt
  loc_14F8E02:                       Call 0.Method_Txt_Validate0 (Cancel, var_A0, arg_10)
  loc_14F8E2B:                       If (Proc_6_27_EA565C(var_A0, "Batch No.") = 0) Then
  loc_14F8E38:                         Set var_9C = Me.Txt
  loc_14F8E3E:                         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14F8E46:                         var_A0.SetFocus
  loc_14F8E54:                         arg_10 = &HFF
  loc_14F8E57:                         Exit Sub
  loc_14F8E58:                       End If
  loc_14F8E58:                     End If
  loc_14F8E58:                   End If
  loc_14F8E58:                 End If
  loc_14F8E58:               End If
  loc_14F8E58:             End If
  loc_14F8E58:           End If
  loc_14F8E58:         End If
  loc_14F8E58:       End If
  loc_14F8E58:       ' Referenced from:   14F827E
  loc_14F8E58:     End If
  loc_14F8E58:   End If
  loc_14F8E58: End If
  loc_14F8E58: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F36344
  'Data Table: 539FB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3623B: Me.DGEmp.Visible = False
  loc_F3625A: If (Me.RecordCount > 0) Then
  loc_F36299:   Set var_B4 = Me.Txt
  loc_F3629F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F362A7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F362DA:   var_B0 = Me.Fields.Item("Code")
  loc_F362F9:   Set var_B4 = Me.Txt
  loc_F362FF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_F36307:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3631D: End If
  loc_F36328: Set var_A8 = Me.Txt
  loc_F3632E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&HF))
  loc_F36336: var_B0.SetFocus
  loc_F36342: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'E6D6D4
  'Data Table: 539FB0
  loc_E6D692: Proc_6_153_E91194(Me.DGEmp, arg_14)
  loc_E6D6A9: Set var_8C = Me.FGPoint
  loc_E6D6C5: Proc_6_138_106D6F8(Me.DGEmp, global_72, CInt(&HF))
  loc_E6D6D3: Exit Sub
End Sub

Private Sub Form_Load() '134D3A0
  'Data Table: 539FB0
  Dim var_A8 As String
  Dim var_C8 As Variant
  Dim var_118 As Variant
  Dim var_11C As String
  Dim var_120 As Variant
  Dim unk_539FDF As Connection15
  Dim var_90 As Recordset15
  Dim var_F8 As Variant
  Dim Me As Recordset15
  loc_134CBB4: On Error Goto loc_134D35A
  loc_134CBEB: var_A8 = "(" & var_9C
  loc_134CC0C: var_118 = ("Payment Receive " + IIf((var_9C <> vbNullString), CVar(var_A8 & ")"), "(POS)"))
  loc_134CC1E: Me.LblFormCaption.Caption = CStr(var_118)
  loc_134CC41: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), Proc_96_17_FDBD80(global_52, global_56, var_9C))
  loc_134CC55: Me.LblUser.Left = CDbl(13500)
  loc_134CC6C: Me.LblUser.Top = CDbl(7800)
  loc_134CC83: Me.LblLDt.Top = CDbl(8160)
  loc_134CC9A: Me.LblLDt.Left = CDbl(13500)
  loc_134CCB5: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_134CCCB: Me.FrRem.BackColor = CLng(MemVar_1F921B0)
  loc_134CCDD: Set var_120 = Me.TopCtrl1
  loc_134CCE3: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_134CCF1: Call 0.Method_arg_50 (var_A8, var_A0)
  loc_134CD07: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_A8))
  loc_134CD24: var_C8 = CVar("P" & var_A0) 'String
  loc_134CD45: global_128 = CStr(IIf((var_A0 <> vbNullString), var_C8, "RPV"))
  loc_134CD7B: unk_539FDF.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_C8, -1
  loc_134CDA5: var_120 = Me.TopCtrl1.Fields
  loc_134CDB5: var_C8 = CVar(var_120.Item("CreditCardInfoMandatory")) 'Address
  loc_134CDCF: If (Proc_6_38_E68A98(var_C8, var_120) = "Y") Then
  loc_134CDD8:   global_60 = "Y"
  loc_134CDDC: End If
  loc_134CDF0: var_A8 = "SELECT RevMast.Code as code, RevMast.name as Name, RevMast.PayType as PayType FROM RevMast where (LOGSITE_CODE='" & MemVar_1F92078
  loc_134CDF7: var_11C = var_A8 & "') And RevMast.Fieldtype in ('P') And RevMast.PayType In ('Cash','Cheque','Credit Card','Complementry','UPI','Other') ORDER BY NAME "
  loc_134CE00: unk_539FDF.Execute var_11C, var_C8, -1
  loc_134CE11: Set global_68 = var_120
  loc_134CE2F: CVarUnk
  loc_134CE34: VerifyVarObj
  loc_134CE40: LateIdStAd
  loc_134CE72: unk_539FDF.Execute "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F92078 & "' or LogSite_Code='HO') ORDER BY Name", var_C8, -1
  loc_134CE83: Set global_72 = Me.DGPayType
  loc_134CEA1: CVarUnk
  loc_134CEA6: VerifyVarObj
  loc_134CEB2: LateIdStAd
  loc_134CED4: var_A8 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.Docid as FolioNODocid From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (T.LOGSITE_CODE='" & MemVar_1F92078
  loc_134CEDB: var_11C = "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F92078 & "' or T.LOGSITE_CODE='HO') AND T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_134CEE4: unk_539FDF.Execute var_11C, var_C8, -1
  loc_134CF13: CVarUnk
  loc_134CF18: VerifyVarObj
  loc_134CF24: LateIdStAd
  loc_134CF4D: var_11C = "Select SubCode as Code,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_134CF56: unk_539FDF.Execute var_11C, var_C8, -1
  loc_134CF85: CVarUnk
  loc_134CF8A: VerifyVarObj
  loc_134CF96: LateIdStAd
  loc_134CFBF: var_11C = "Select SubCode as Code,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_134CFD6: unk_539FDF.Execute var_11C & MemVar_1F92078 & "') Order By Name", var_C8, -1
  loc_134D009: CVarUnk
  loc_134D00E: VerifyVarObj
  loc_134D01A: LateIdStAd
  loc_134D03C: var_A8 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And SubCode In (Select CompCode From PayCharge Where RestCode In (Select Code From Depart Where RestType In ('Outlet','Room Service'))) And (LOGSITE_CODE='" & MemVar_1F92078
  loc_134D04C: unk_539FDF.Execute var_A8 & "' or LOGSITE_CODE='HO') Order by Name", var_C8, -1
  loc_134D07E: CVarUnk
  loc_134D083: VerifyVarObj
  loc_134D089: Set var_120 = Me.DGAgAc
  loc_134D08F: LateIdStAd
  loc_134D0A9: Call 0.Method_arg_38 (MemVar_1F923AC, var_120, Me.DGMember, var_120, var_120, Me.DGCompany, var_120, var_120)
  loc_134D0BA: Call 0.Method_arg_3C (MemVar_1F920EC, Me.DGRoom, var_120, var_120)
  loc_134D0CB: Call 0.Method_arg_54 (MemVar_1F9206C, Me.DGEmp, var_120)
  loc_134D0DC: Call 0.Method_arg_1C (MemVar_1F92070, var_120)
  loc_134D0ED: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_134D0FE: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_134D10F: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_134D120: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_134D131: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_134D142: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_134D15C: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_134D16A: Set var_120 = MemVar_1F92044
  loc_134D179: Call 0.Method_Form_Load8 (var_120)
  loc_134D18F: Me.DGAgAc.Clone
  loc_134D1A9: Call 0.Method_arg_50 (var_120, -1)
  loc_134D1BF: Set global_64 = New 
  loc_134D1D1: Me.Recordset15.CursorLocation = 3
  loc_134D1E0: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_134D1EE:   Proc_6_7_F25D88(var_C8, MemVar_1F920F4)
  loc_134D21B:   var_11C = "Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From PayCharge where VType='" & global_128 & "' And RestCode='"
  loc_134D254:   Me.Open CVar(var_11C & global_52 & "' And LOGSITE_CODE='" & MemVar_1F92078 & "' AND vdate>=") & var_C8 & " Order by DocID", CVar(MemVar_1F92044), 2
  loc_134D274: Else
  loc_134D27F:   Proc_6_7_F25D88(var_C8, MemVar_1F920EC, 3)
  loc_134D2AC:   var_11C = "Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From PayCharge where VType='" & global_128 & "' And RestCode='"
  loc_134D2D1:   var_F8 = CVar(var_11C & global_52 & "' And LOGSITE_CODE='" & MemVar_1F92078 & "' AND vdate=") & var_C8 
  loc_134D2DA:   var_118 = var_F8 & " Order by DocID" 
  loc_134D2E5:   Me.Open var_118, CVar(MemVar_1F92044), 2
  loc_134D302: End If
  loc_134D30E: Set var_120 = Me
  loc_134D317: var_A8 = "INI"
  loc_134D325: Call Proc_339_69_F8DAB4(Proc_5_1_100CB50(var_A8, var_120, global_64, 3), -1, -1)
  loc_134D330: Call Proc_339_83_11B5114(var_120)
  loc_134D335: Call Proc_339_71_11001CC(global_72)
  loc_134D33A: Call Proc_339_76_11C20B8()
  loc_134D33F: Call Proc_339_72_1640A30()
  loc_134D344: Call Proc_339_80_DFD3F4()
  loc_134D34E: Set var_8C = Nothing
  loc_134D356: Set var_90 = Nothing
  loc_134D359: Exit Sub
  loc_134D35A: ' Referenced from: 134CBB4
  loc_134D362: Set var_120 = Err()
  loc_134D368: Call 0.Method_arg_2C (var_A8)
  loc_134D389: MsgBox(CVar(var_A8), &H40, "Information", var_F8, var_118)
  loc_134D39C: Exit Sub
  loc_134D39D: Exit Sub
End Sub

Private Sub Form_Resize() 'EA8E64
  'Data Table: 539FB0
  Dim var_88 As Label
  loc_EA8DEE: Me.LblFormCaption.Left = CDbl(0)
  loc_EA8DFA: Set var_9C = Me.TopCtrl1
  loc_EA8E00: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_EA8E0D: Set var_88 = Me.TopCtrl1
  loc_EA8E13: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_EA8E2D: Me.LblFormCaption.Top = (CDbl() + CDbl(var_AC))
  loc_EA8E48: Call 0.Method_arg_100 (var_B4)
  loc_EA8E5A: Me.LblFormCaption.Width = var_B4
  loc_EA8E62: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E61438
  'Data Table: 539FB0
  loc_E613F7: Set global_64 = Nothing
  loc_E61409: Set global_68 = Nothing
  loc_E6141B: Set global_72 = Nothing
  loc_E6142D: Set global_88 = Nothing
  loc_E61434: Exit Sub
  loc_E61435: Exit Sub
End Sub

Private Sub Form_Activate() 'DFB924
  'Data Table: 539FB0
  loc_DFB920: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F1D33C
  'Data Table: 539FB0
  Dim var_A4 As DataGrid
  Dim var_86 As Integer
  Dim KeyCode As Integer
  loc_F1D258: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F1D275:   Set var_A4 = Me.DGEmp
  loc_F1D296:   If ((CBool(Me.DGPayType.Visible) = 0) And (CBool(var_A4.Visible) = 0)) Then
  loc_F1D2A6:     Me.var_A4.Unload Me
  loc_F1D2AE:     Exit Sub
  loc_F1D2AF:   End If
  loc_F1D2AF: End If
  loc_F1D2CD: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_116 = 1)) Then
  loc_F1D2EB:   If (Me.FrSendRoom.Visible = &HFF) Then
  loc_F1D2F0:     var_86 = 0
  loc_F1D2FD:     Call Txt_Validate(CInt(&H10))
  loc_F1D308:     If (var_86 = &HFF) Then
  loc_F1D30D:       KeyCode = 0
  loc_F1D310:       Exit Sub
  loc_F1D311:     End If
  loc_F1D311:   End If
  loc_F1D311:   Call Proc_339_78_14D2330(KeyCode, var_86)
  loc_F1D316:   Call TopCtrl1_UnknownEvent_16()
  loc_F1D31B:   Exit Sub
  loc_F1D31C: End If
  loc_F1D330: Proc_6_88_FE81B4(Me, KeyCode, Shift)
  loc_F1D338: Exit Sub
  loc_F1D339: StAryRecMove
End Sub

Private Sub DGCompany_UnknownEvent_9 'F4B584
  'Data Table: 539FB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4B47B: Me.DGCompany.Visible = False
  loc_F4B49A: If (Me.RecordCount > 0) Then
  loc_F4B4D9:   Set var_B4 = Me.Txt
  loc_F4B4DF:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4B4E7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4B51A:   var_B0 = Me.Fields.Item("Code")
  loc_F4B539:   Set var_B4 = Me.Txt
  loc_F4B53F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HD), var_B8)
  loc_F4B547:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4B55D: End If
  loc_F4B568: Set var_A8 = Me.Txt
  loc_F4B56E: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HD))
  loc_F4B576: var_B0.SetFocus
  loc_F4B582: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'E6D518
  'Data Table: 539FB0
  loc_E6D4D6: Proc_6_153_E91194(Me.DGCompany, arg_14)
  loc_E6D4ED: Set var_8C = Me.FGPoint
  loc_E6D509: Proc_6_138_106D6F8(Me.DGCompany, global_84, CInt(&HD))
  loc_E6D517: Exit Sub
End Sub

Private Sub DGAgAc_UnknownEvent_9 'EEA3A0
  'Data Table: 539FB0
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEA2E9: Set var_A8 = Me.DGAgAc
  loc_EEA2EF: var_A8.Visible = False
  loc_EEA311: If (Me.var_A8.RecordCount > 0) Then
  loc_EEA334:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEA353:   Set var_B4 = Me.Txt
  loc_EEA359:   Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(4), var_B8)
  loc_EEA361:   var_B8.Text = CStr(var_B0.Value)
  loc_EEA377: End If
  loc_EEA382: Set var_A8 = Me.Txt
  loc_EEA388: Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(4))
  loc_EEA390: var_B0.SetFocus
  loc_EEA39C: Exit Sub
End Sub

Private Sub DGAgAc_UnknownEvent_1F 'E7A210
  'Data Table: 539FB0
  loc_E7A1CA: Proc_6_153_E91194(Me.DGAgAc, arg_14)
  loc_E7A1E1: Set var_8C = Me.FGPoint
  loc_E7A201: Proc_6_138_106D6F8(Me.DGAgAc, global_92, CInt(4))
  loc_E7A20F: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED1148
  'Data Table: 539FB0
  loc_ED10AC: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED10AF:   Call DGEmp_UnknownEvent_9()
  loc_ED10B4: End If
  loc_ED10D0: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED10D3:   Call DGPayType_UnknownEvent_9()
  loc_ED10D8: End If
  loc_ED10F4: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_ED10F7:   Call DGAgAc_UnknownEvent_9()
  loc_ED10FC: End If
  loc_ED1118: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED111B:   Call DGRoom_UnknownEvent_9()
  loc_ED1120: End If
  loc_ED113C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED113F:   Call DGCompany_UnknownEvent_9()
  loc_ED1144: End If
  loc_ED1144: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E09D98
  'Data Table: 539FB0
  loc_E09D84: Call Proc_339_81_1373770()
  loc_E09D8F: Call Proc_339_77_1197A3C(global_160)
  loc_E09D94: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE016C
  'Data Table: 539FB0
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FDFFA0: Set var_88 = Me.TopCtrl1
  loc_FDFFA6: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FDFFBF: If (CStr() = "Browse") Then
  loc_FDFFC2:   Exit Sub
  loc_FDFFC3: End If
  loc_FDFFE0: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FDFFE3:   Exit Sub
  loc_FDFFE4: End If
  loc_FDFFF5: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FE0017:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE0051:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE0073:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE0089:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE0092:         Set var_110 = Me.FGrid
  loc_FE00AD:       Else
  loc_FE00C0:         Me.FGrid.Rows = 1
  loc_FE00E4:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_FE00EC:         Set var_110 = Me.FGrid
  loc_FE0119:         Me.FGrid.FixedRows = 1
  loc_FE0121:       End If
  loc_FE0121:     End If
  loc_FE0124:   Else
  loc_FE0145:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE0155:   End If
  loc_FE0159:   Set var_88 = Me.FGrid
  loc_FE016A: End If
  loc_FE016A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E43054
  'Data Table: 539FB0
  loc_E4302A: If (KeyCode = 2) Then
  loc_E43045:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E4304D:   Call FGrid_UnknownEvent_9()
  loc_E43052: End If
  loc_E43052: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FBA730
  'Data Table: 539FB0
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_8C As Label
  loc_FBA588: On Error Goto loc_FBA72A
  loc_FBA5AE: Call Proc_339_69_F8DAB4(Proc_5_1_100CB50("ADD", Me))
  loc_FBA5B9: Call Proc_339_70_F792AC(global_64)
  loc_FBA5F8: Set var_8C = Me.Txt
  loc_FBA5FE: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4, CStr(Format(Now, "HH:MM")))
  loc_FBA606: var_D4.Text = 1
  loc_FBA62C: Set var_8C = Me.Txt
  loc_FBA632: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_D4)
  loc_FBA63A: var_D4.Tag = vbNullString
  loc_FBA66E: var_88 = CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))
  loc_FBA67D: Set var_8C = Me.Txt
  loc_FBA683: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_FBA68B: var_D4.Text = 1
  loc_FBA6AD: Call Txt_Validate(CInt(2))
  loc_FBA6B8: Call Proc_339_75_10EE19C(MemVar_1F92044, var_88, 0)
  loc_FBA6D2: Call Proc_339_77_1197A3C(vbNullString, CDbl(0))
  loc_FBA6E5: Set var_8C = Me.Txt
  loc_FBA6EB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_FBA6F3: var_D4.SetFocus
  loc_FBA70C: Me.LblUser.Caption = vbNullString
  loc_FBA721: Me.LblLDt.Caption = vbNullString
  loc_FBA729: Exit Sub
  loc_FBA72A: ' Referenced from: FBA588
  loc_FBA72A: Proc_6_60_E62BC4(1)
  loc_FBA72F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC14EC
  'Data Table: 539FB0
  loc_EC1454: On Error Goto loc_EC14E4
  loc_EC148E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC149D:   Set var_110 = Me
  loc_EC14B4:   Call Proc_339_69_F8DAB4(Proc_5_1_100CB50("INI", var_110))
  loc_EC14BF:   Call Proc_339_73_F7001C(global_64)
  loc_EC14C4:   Call Proc_339_72_1640A30()
  loc_EC14CC: Else
  loc_EC14D2:   Call 0.Method_arg_1E8 (var_110)
  loc_EC14DA:   Call var_110.SetFocus
  loc_EC14E3: End If
  loc_EC14E3: Exit Sub
  loc_EC14E4: ' Referenced from: EC1454
  loc_EC14E4: Proc_6_60_E62BC4()
  loc_EC14E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1035B20
  'Data Table: 539FB0
  Dim unk_539FDF As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_10358E4: On Error Goto loc_1035AD1
  loc_10358F5: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_10358F8:   Exit Sub
  loc_10358F9: End If
  loc_1035930: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F4, var_114) = 6) Then
  loc_103593C:   unk_539FDF.BeginTrans var_118
  loc_1035952:   var_94 = Me.Bookmark 'Variant
  loc_10359AC:   unk_539FDF.Execute CStr("Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_1035A10:   var_F4 = "Delete From LedgerAdj Where Docid1='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1035A14:   var_124 = CStr(var_F4)
  loc_1035A1E:   unk_539FDF.Execute var_124, var_114, -1
  loc_1035A40:   unk_539FDF.CommitTrans
  loc_1035A50:   Me.Requery -1
  loc_1035A70:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1035A7D:     Me.Bookmark = var_94
  loc_1035A85:   Else
  loc_1035A99:     If (Me.EOF = 0) Then
  loc_1035AA2:       Me.MoveLast
  loc_1035AA7:     End If
  loc_1035AA7:   End If
  loc_1035AA7:   Call Proc_339_72_1640A30(var_128)
  loc_1035AC8:   Proc_5_0_110649C(&HFF, Me, global_64)
  loc_1035AD0: End If
  loc_1035AD0: Exit Sub
  loc_1035AD1: ' Referenced from: 10358E4
  loc_1035AD7: unk_539FDF.RollbackTrans
  loc_1035AE4: Set var_11C = Err()
  loc_1035AEA: Call 0.Method_arg_2C (var_124, 0)
  loc_1035B0B: MsgBox(CVar(var_124), &H30, " Deletion Error ", var_F4, var_114)
  loc_1035B1E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF7F88
  'Data Table: 539FB0
  Dim var_94 As TextBox
  Dim var_8C As Variant
  loc_EF7EB0: On Error Goto loc_EF7F81
  loc_EF7EC1: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_EF7EC4:   Exit Sub
  loc_EF7EC5: End If
  loc_EF7EE8: Call Proc_339_69_F8DAB4(Proc_5_1_100CB50("EDIT", Me))
  loc_EF7F00: Set var_8C = Me.Txt
  loc_EF7F06: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_EF7F0E: var_94.Enabled = False
  loc_EF7F29: Me.GridSel.Enabled = False
  loc_EF7F3C: Set var_8C = Me.Txt
  loc_EF7F42: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_94)
  loc_EF7F4A: var_94.SetFocus
  loc_EF7F63: Me.LblUser.Caption = vbNullString
  loc_EF7F78: Me.LblLDt.Caption = vbNullString
  loc_EF7F80: Exit Sub
  loc_EF7F81: ' Referenced from: EF7EB0
  loc_EF7F81: Proc_6_60_E62BC4(global_64)
  loc_EF7F86: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A52C
  'Data Table: 539FB0
  loc_E1A521: Me.Global.Unload Me
  loc_E1A529: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '100E090
  'Data Table: 539FB0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_E8 As Variant
  Dim var_10C As String
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F920E4 As String
  Dim var_A8 As Variant
  loc_100DE8C: On Error Goto loc_100E029
  loc_100DE98: var_88 = Me.RecordCount
  loc_100DEA6: If (var_88 <= 0) Then
  loc_100DECA:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_100DEDA:   Exit Sub
  loc_100DEDB: End If
  loc_100DEE6: var_A8 = Ucase(MemVar_1F920C8)
  loc_100DF0F: If CBool((var_A8 = "SA") Or (MemVar_1F920B8 = 1)) Then
  loc_100DF1C:   var_10C = "Select P.DocID as SearchCode,P.VNo,S.Name As Party From PayCharge P Left Join Subgroup S On S.SubCode=P.AgAc where P.VType='" & global_128
  loc_100DF42:   var_C8 = CVar(var_10C & "' And P.RestCode='" & global_52 & "' And P.LOGSITE_CODE='" & MemVar_1F92078 & "' AND P.vdate>=") 'String
  loc_100DF50:   Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_100DF66:   MemVar_1F920E4 = CStr(var_C8 & var_A8 & " Order by DocID")
  loc_100DF85: Else
  loc_100DF8F:   var_10C = "Select P.DocID as SearchCode,P.VNo,S.Name As Party From PayCharge P Left Join Subgroup S On S.SubCode=P.AgAc where P.VType='" & global_128
  loc_100DFB5:   var_C8 = CVar(var_10C & "' And P.RestCode='" & global_52 & "' And P.LOGSITE_CODE='" & MemVar_1F92078 & "' AND P.vdate=") 'String
  loc_100DFC3:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_100DFCB:   var_E8 = var_C8 & var_A8 
  loc_100DFCF:   var_B8 = " Order by DocID"
  loc_100DFD4:   var_108 = var_E8 & var_B8 
  loc_100DFD9:   MemVar_1F920E4 = CStr(var_108)
  loc_100DFF5: End If
  loc_100DFFB: MemVar_1F92120 = Me
  loc_100E002: var_10C = "1100,3500"
  loc_100E008: Proc_6_126_F1BCC0(var_10C, MemVar_1F920E4)
  loc_100E023: Call 0.Method_arg_2B0 (1, var_B8)
  loc_100E028: Exit Sub
  loc_100E029: ' Referenced from: 100DE8C
  loc_100E031: Set var_120 = Err()
  loc_100E037: Call 0.Method_arg_1C (var_88)
  loc_100E048: If (var_88 <> 0) Then
  loc_100E053:   Set var_120 = Err()
  loc_100E059:   Call 0.Method_arg_2C (var_10C)
  loc_100E07A:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_100E08D: End If
  loc_100E08D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3A038
  'Data Table: 539FB0
  loc_E3A028: Proc_5_0_110649C(&HFF, Me)
  loc_E3A030: Call Proc_339_72_1640A30(global_64)
  loc_E3A035: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39D38
  'Data Table: 539FB0
  loc_E39D28: Proc_5_0_110649C(&HFF, Me)
  loc_E39D30: Call Proc_339_72_1640A30(global_64)
  loc_E39D35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33738
  'Data Table: 539FB0
  loc_E33728: Proc_5_0_110649C(&HFF, Me)
  loc_E33730: Call Proc_339_72_1640A30(global_64)
  loc_E33735: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33C18
  'Data Table: 539FB0
  loc_E33C08: Proc_5_0_110649C(&HFF, Me)
  loc_E33C10: Call Proc_339_72_1640A30(global_64)
  loc_E33C15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '11C8C30
  'Data Table: 539FB0
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_B0 As String
  Dim unk_539FDF As Connection15
  Dim var_88 As Recordset15
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_EC As Long
  loc_11C87FC: On Error Goto loc_11C8C27
  loc_11C8813: var_AC = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.AMTCR AS RECTAMT,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo,P.ChqDate,P.ExpDate AS CCExpDate,P.BatchNo,P.AgAc,S.Name AS AgCompany," & " R.NAME As PayName,P.TxnNo FROM PAYCHARGE P LEFT JOIN RevMast R ON P.PayCode = R.Code LEFT JOIN SubGroup S ON P.AgAc = S.SubCode WHERE P.DOCID='"
  loc_11C8824: Set var_A0 = Me.Txt
  loc_11C882A: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, var_A8, var_AC)
  loc_11C8832: var_D4 = var_A4.Text
  loc_11C883B: var_B0 = -1 & var_A8
  loc_11C884B: unk_539FDF.Execute var_B0 & "' ORDER BY P.DOCID", var_D8, 
  loc_11C8856: Set var_88 = var_D8
  loc_11C888E: Set var_A0 = Me.Txt
  loc_11C8894: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_A4, var_A8, "Select D.Name OutletName, Cast(LTrim(Substring(DocId1,14,8)) As Integer) RecptNo, Cast(LTrim(Substring(DocId2,14,8)) As Integer) BillNo,Cr As BillAmt From LEDGERADJ LA Left Join PayCharge P On LA.Docid1=P.Docid Left Join Depart D On D.Code=P.RestCode Where Docid1='")
  loc_11C889C: var_D4 = var_A4.Text
  loc_11C88A5: var_AC = -1 & var_A8
  loc_11C88B5: unk_539FDF.Execute var_AC & "' Order By Cast(LTrim(Substring(DocId2,14,8)) As Integer)", var_D8, 
  loc_11C88DB: var_9C = "PosPaymentRecieptBillInfo"
  loc_11C88E4: var_DC = var_88.RecordCount
  loc_11C88F2: If (var_DC > 0) Then
  loc_11C88F8:   var_8C = "POSPAYMENTRECIEPT"
  loc_11C891F:   Set var_A0 = var_88 
  loc_11C8926:   CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\" & var_8C & ".ttx")
  loc_11C8968:   Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & var_8C & ".RPT", var_C4)
  loc_11C8973:   MemVar_1F921E4 = var_A0
  loc_11C899C:   Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_EC)
  loc_11C89A4:   Call 0.Method_arg_2C (var_FC, var_A0)
  loc_11C89B5:   Call 0.Method_arg_20 (var_A0)
  loc_11C89C0:   Set var_104 = var_A0
  loc_11C89D1:   Call 0.Method_arg_24 (var_DC, var_10E)
  loc_11C89DA:   For var_114 = &HFF To CInt(var_DC): 1 = var_114 'Integer
  loc_11C89ED:     Call 0.Method_arg_20 (CVar(var_10E), var_A0)
  loc_11C89F8:     Set var_108 = var_A0
  loc_11C8A04:     Call 0.Method_arg_2C (var_A0)
  loc_11C8A0F:     Set var_10C = var_A0
  loc_11C8A20:     Call 0.Method_arg_24 (var_DC, var_110)
  loc_11C8A29:     For var_118 = &HFF To CInt(var_DC): 1 = var_118 'Integer
  loc_11C8A3C:       Call 0.Method_arg_20 (CVar(var_110), var_A0)
  loc_11C8A49:       var_EC = 5
  loc_11C8A5A:       If (var_A0.Kind = var_EC) Then
  loc_11C8A6A:         Call 0.Method_arg_20 (CVar(var_110), var_A0)
  loc_11C8A89:         If (var_A0.Name = "Subreport1") Then
  loc_11C8A98:           var_A8 = "\" & var_9C
  loc_11C8AB0:           Set var_A0 = var_D8 
  loc_11C8AB7:           CreateFieldDefFile(var_A0, MemVar_1F920B4 & var_A8 & ".ttx")
  loc_11C8AF3:           Call 0.Method_arg_174 (var_9C, var_A0, var_A4, CVar(var_A0))
  loc_11C8AFB:           Call 0.Method_arg_64 (var_EC, var_FC)
  loc_11C8B03:           Call 0.Method_arg_2C (&HFF)
  loc_11C8B0F:         End If
  loc_11C8B0F:       End If
  loc_11C8B12:     Next var_118 'Integer
  loc_11C8B1A:   Next var_114 'Integer
  loc_11C8B25:   Call 0.Method_arg_150 ()
  loc_11C8B3B:   Call 0.Method_arg_90 (var_A0, var_DC)
  loc_11C8B43:   Call 0.Method_arg_24 (var_92)
  loc_11C8B4F:   For var_13C =  To CInt(var_DC): 1 = var_13C 'Integer
  loc_11C8B68:     Call 0.Method_arg_90 (var_A0, CLng(var_92))
  loc_11C8B70:     Call 0.Method_arg_20 (var_A4)
  loc_11C8B78:     Call 0.Method_arg_30 (var_A8)
  loc_11C8BA7:     If (Ucase(CVar(var_A8)) = "TITLE") Then
  loc_11C8BBD:       Call 0.Method_arg_90 (var_A0, CLng(var_92))
  loc_11C8BC5:       Call 0.Method_arg_20 (var_A4)
  loc_11C8BCD:       Call 0.Method_arg_38 ("'PAYMENT RECIEPT'")
  loc_11C8BD9:     End If
  loc_11C8BDC:   Next var_13C 'Integer
  loc_11C8BE6:   Set var_A4 = Nothing
  loc_11C8BFC:   Set var_A0 = MemVar_1F921E4 
  loc_11C8C08:   Proc_6_99_1483714(var_A0, 0, var_90)
  loc_11C8C13:   MemVar_1F921E4 = var_A0
  loc_11C8C1E: End If
  loc_11C8C23: Set var_88 = Nothing
  loc_11C8C26: Exit Sub
  loc_11C8C27: ' Referenced from: 11C87FC
  loc_11C8C27: Proc_6_60_E62BC4(&HFF)
  loc_11C8C2C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E6D89C
  'Data Table: 539FB0
  Dim Me As Recordset15
  loc_E6D843: Me.Requery -1
  loc_E6D853: Me.Requery -1
  loc_E6D863: Me.Requery -1
  loc_E6D873: Me.Requery -1
  loc_E6D883: Me.Requery -1
  loc_E6D893: Me.Requery -1
  loc_E6D898: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '17BECDC
  'Data Table: 539FB0
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_124 As String
  Dim var_EC As Variant
  Dim var_15C As Variant
  Dim var_168 As Double
  Dim var_158 As Variant
  Dim var_160 As String
  Dim var_170 As String
  Dim unk_539FDF As Connection15
  Dim var_96 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1C4 As Variant
  Dim var_134 As Variant
  Dim var_1C8 As String
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_218 As MSHFlexGrid
  Dim var_144 As Variant
  Dim var_390 As Double
  Dim var_238 As Variant
  Dim var_26C As Variant
  Dim var_154 As Variant
  Dim var_17C As String
  Dim var_1D4 As String
  Dim var_220 As String
  Dim var_224 As String
  Dim var_270 As String
  Dim var_274 As String
  Dim var_278 As String
  Dim var_27C As String
  Dim var_2B0 As Variant
  Dim var_2E0 As Variant
  Dim var_2F0 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_330 As Variant
  Dim var_340 As Variant
  Dim unk_539FFD As Connection15
  Dim var_AC As Variant
  Dim var_2A0 As Variant
  Dim var_3A4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_3FC As Variant
  Dim var_374 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_4B4 As MSHFlexGrid
  Dim var_514 As Variant
  Dim var_534 As Long
  Dim var_5A8 As Variant
  Dim var_5C8 As Long
  Dim var_5EC As Variant
  Dim var_63C As Variant
  Dim var_65C As Long
  Dim var_6D0 As Variant
  Dim var_6F0 As Variant
  Dim var_718 As String
  Dim var_7B0 As String
  Dim var_F58 As Double
  Dim var_898 As TextBox
  Dim var_F60 As Double
  Dim var_930 As Variant
  Dim var_9C4 As Variant
  Dim var_A58 As Variant
  Dim var_B90 As Variant
  Dim var_D5C As TextBox
  Dim var_290 As Variant
  Dim var_384 As Variant
  Dim var_3B4 As Variant
  Dim var_3C4 As Variant
  Dim var_450 As Variant
  Dim var_4E4 As Variant
  Dim var_578 As Variant
  Dim var_60C As Variant
  Dim var_6C0 As Variant
  Dim var_7D0 As Variant
  Dim var_810 As Variant
  Dim var_850 As Variant
  Dim var_940 As Variant
  Dim var_9E4 As Variant
  Dim var_A04 As Variant
  Dim var_A98 As Variant
  Dim var_D34 As Variant
  Dim var_F28 As String
  Dim var_9C As Recordset15
  Dim var_C8 As Recordset15
  Dim var_440 As Variant
  Dim var_C4 As Double
  Dim var_F88 As Double
  Dim var_F90 As Double
  Dim var_F98 As Double
  Dim Me As Recordset15
  loc_17BCF54: Call Proc_339_78_14D2330()
  loc_17BCF59: var_DC = 1
  loc_17BCF62: var_FC = 1
  loc_17BCF91: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_17BCFB5:   MsgBox("Please Fill Payment Details Before Saving..", &H40, "Save Data", var_144, var_154)
  loc_17BCFC5:   Exit Sub
  loc_17BCFC6: End If
  loc_17BCFD4: Set var_158 = Me.Txt
  loc_17BCFDA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_15C, var_160)
  loc_17BCFE2: var_FC = var_15C.Text
  loc_17BCFEF: var_168 = Val(var_160)
  loc_17BCFF2: var_DC = 1
  loc_17BCFFB: var_FC = 8
  loc_17BD03A: If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(var_168)) Then
  loc_17BD048:   var_134 = "Save Data"
  loc_17BD053:   var_DC = "Amount Mismatched save Detail in Grid first"
  loc_17BD05E:   MsgBox(var_DC, &H40, var_134, var_144, var_154)
  loc_17BD06E:   Exit Sub
  loc_17BD06F: End If
  loc_17BD072: Call Proc_339_67_100F128(var_16A, var_FC, var_DC)
  loc_17BD07D: If (var_16A = 0) Then
  loc_17BD080:   Exit Sub
  loc_17BD081: End If
  loc_17BD085: Set var_110 = Me.TopCtrl1
  loc_17BD08B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_168)
  loc_17BD0A4: If (CStr(var_DC) = "Add") Then
  loc_17BD0AD:   global_180 = MemVar_1F920C8
  loc_17BD0BE:   global_184 = CDate(Proc_6_14_EF349C())
  loc_17BD0C4: End If
  loc_17BD0C8: Set var_110 = Me.TopCtrl1
  loc_17BD0CE: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(global_184)
  loc_17BD0E7: If (CStr() = "Add") Then
  loc_17BD0F0:   Call Proc_339_75_10EE19C(MemVar_1F92044)
  loc_17BD0F8: End If
  loc_17BD106: Set var_110 = Me.Txt
  loc_17BD10C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158)
  loc_17BD114: var_124 = var_158.Text
  loc_17BD12B: If (var_124 = vbNullString) Then
  loc_17BD147:   MsgBox("Voucher Not defined for Entry", &H10, var_134, var_144, var_154)
  loc_17BD157: End If
  loc_17BD175: Set var_110 = Me.Txt
  loc_17BD17B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, "Delete From LEDGERADJ Where Docid1='")
  loc_17BD183: var_120 = var_158.Text
  loc_17BD18C: var_160 = -1 & var_124
  loc_17BD19C: unk_539FDF.Execute var_160 & "'", var_15C, var_124
  loc_17BD1BA: var_86 = CByte(0) 'Byte
  loc_17BD1C7: unk_539FDF.BeginTrans var_174
  loc_17BD1D0: var_86 = CByte(1) 'Byte
  loc_17BD1F2: Set var_110 = Me.Txt
  loc_17BD1F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, "Delete From PayCharge Where Docid='")
  loc_17BD200: var_120 = var_158.Text
  loc_17BD209: var_160 = -1 & var_124
  loc_17BD219: unk_539FDF.Execute var_160 & "'", var_15C, 
  loc_17BD258: For var_178 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_AA = var_178 'Integer
  loc_17BD261:   var_96 = var_AA
  loc_17BD268:   var_DC = CVar(CLng(var_96)) 'Long
  loc_17BD270:   var_FC = CVar(CLng(0)) 'Long
  loc_17BD29B:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_17BD2C4:     var_124 = CStr(Me.GridSel.TextMatrix))
  loc_17BD2D5:     If (var_124 <> vbNullString) Then
  loc_17BD2E6:       Set var_110 = Me.Txt
  loc_17BD2EC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, CVar(CLng(2)), CVar(CLng(var_96)))
  loc_17BD2F4:       var_FC = var_158.Text
  loc_17BD2FD:       var_DC = CVar(CLng(var_96)) 'Long
  loc_17BD305:       var_FC = CVar(CLng(2)) 'Long
  loc_17BD324:       var_190 = CVar(CLng(var_96)) 'Long
  loc_17BD32C:       var_1B0 = CVar(CLng(3)) 'Long
  loc_17BD335:       Set var_1C4 = Me.GridSel
  loc_17BD37F:       var_390 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_17BD397:       Set var_26C = Me.GridSel
  loc_17BD39D:       var_154 = var_26C.TextMatrix)
  loc_17BD3B7:       Proc_183_7_EB0C44(var_2A0, Now, var_154, CVar(CLng(7)), CVar(CLng(var_96)), var_390, CVar(CLng(5)), CVar(CLng(var_96)))
  loc_17BD3D0:       var_160 = "INSERT INTO LEDGERADJ (DOCID1,V_SNO1,DOCID2,V_SNO2,CR,SUBCODE,U_Name,U_EntDt,U_AE,SITE_CODE,LOGSITE_CODE) VALUES ('" & var_124
  loc_17BD3DE:       var_17C = CStr(Me.GridSel.TextMatrix))
  loc_17BD404:       var_224 = CStr(var_390)
  loc_17BD421:       var_27C = var_160 & "',1,'" & var_17C & "'," & CStr(Val(CStr(var_1C4.TextMatrix)))) & "," & var_224 & ",'" & CStr(var_154) & "','"
  loc_17BD42F:       var_2B0 = CVar(var_27C & MemVar_1F920C8 & "',") 'String
  loc_17BD472:       unk_539FFD.Execute CStr(var_2B0 & var_2A0 & ",'A','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_384, -1
  loc_17BD4D0:     End If
  loc_17BD4D0:   End If
  loc_17BD4D3: Next var_178 'Integer
  loc_17BD4FD: For var_394 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_394 'Integer
  loc_17BD507:   var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BD50C:   var_FC = 2
  loc_17BD53B:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_17BD544:     var_AC = (var_AC + 1)
  loc_17BD555:     Set var_110 = Me.Txt
  loc_17BD55B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_17C, var_AC)
  loc_17BD563:     var_FC = var_158.Text
  loc_17BD57C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_224)
  loc_17BD584:     var_DC = var_1C4.Text
  loc_17BD5A4:     Set var_218 = Me.Txt
  loc_17BD5AA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_26C)
  loc_17BD5B9:     Proc_6_7_F25D88(var_2B0, CVar(var_26C))
  loc_17BD5EA:     var_190 = CVar(CLng(var_AA)) 'Long
  loc_17BD5F2:     var_1B0 = CVar(CLng(&H10)) 'Long
  loc_17BD611:     var_1F4 = CVar(CLng(var_AA)) 'Long
  loc_17BD616:     var_214 = 1
  loc_17BD639:     var_248 = CVar(CLng(var_AA)) 'Long
  loc_17BD63E:     var_268 = &H14
  loc_17BD661:     var_2F0 = CVar(CLng(var_AA)) 'Long
  loc_17BD666:     var_330 = &H18
  loc_17BD6A8:     var_440 = IIf((CStr(Me.FGrid.TextMatrix)) = MemVar_1F92078 & "CRED"), CVar(CStr(Me.FGrid.TextMatrix))), CVar(CStr(Me.FGrid.TextMatrix))))
  loc_17BD6B1:     var_480 = CVar(CLng(var_AA)) 'Long
  loc_17BD6B9:     var_4A0 = CVar(CLng(&HE)) 'Long
  loc_17BD6D8:     var_514 = CVar(CLng(var_AA)) 'Long
  loc_17BD6DD:     var_534 = 1
  loc_17BD700:     var_5A8 = CVar(CLng(var_AA)) 'Long
  loc_17BD705:     var_5C8 = 2
  loc_17BD728:     var_63C = CVar(CLng(var_AA)) 'Long
  loc_17BD72D:     var_65C = 8
  loc_17BD75A:     var_6D0 = CVar(CLng(var_AA)) 'Long
  loc_17BD75F:     var_6F0 = 8
  loc_17BD785:     var_390 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17BD7B7:     var_F58 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17BD7C8:     Set var_894 = Me.Txt
  loc_17BD7CE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_898, var_89C, var_F58, &H11, CVar(CLng(var_AA)), var_390)
  loc_17BD7D6:     var_6F0 = var_898.Tag
  loc_17BD7E3:     var_F60 = Val(var_89C)
  loc_17BD801:     var_930 = Me.FGrid.TextMatrix)
  loc_17BD828:     var_9C4 = Me.FGrid.TextMatrix)
  loc_17BD84F:     var_A58 = Me.FGrid.TextMatrix)
  loc_17BD887:     Proc_6_7_F25D88(var_B0C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_A58, CVar(CLng(&HC)), CVar(CLng(var_AA)), var_9C4)
  loc_17BD8A8:     var_B90 = Me.FGrid.TextMatrix)
  loc_17BD8B9:     Proc_6_17_EAA2B0(var_BB0, CVar(CStr(var_B90)), &H1A, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_17BD8EA:     Proc_6_7_F25D88(var_C54, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_930)
  loc_17BD8FD:     Proc_6_7_F25D88(var_CE4, Date, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_17BD910:     Set var_D58 = Me.Txt
  loc_17BD916:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_D5C, var_D60)
  loc_17BD950:     Proc_6_39_E7C810(var_E14, CVar(CStr(Me.FGrid.TextMatrix))), &H17)
  loc_17BD963:     Proc_6_17_EAA2B0(var_EA4, global_180, CVar(CLng(var_AA)))
  loc_17BD976:     Proc_6_8_EB0DE4(var_EF4, global_184)
  loc_17BD98F:     var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,"
  loc_17BD99D:     var_170 = var_124 & "RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,AgAc,BatchNo,LOGSITE_CODE,AU_Name,AU_EntDt) Values ("
  loc_17BD9BE:     var_1D4 = var_170 & "'" & var_17C & "'," & CStr(var_AC)
  loc_17BD9F8:     var_154 = CVar(var_1D4 & ",'" & global_128 & "','" & var_224 & "','" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_17BDA0C:     var_EC = ",'"
  loc_17BDA3F:     var_450 = var_154 & "'," & var_2B0 & var_EC & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & var_440 
  loc_17BDA7B:     var_60C = var_450 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_17BDACD:     var_810 = var_60C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_390) & "," & CVar(var_F58) & ",'" & CVar(global_152) 
  loc_17BDB11:     var_940 = CVar(CStr(var_930)) 'String
  loc_17BDB28:     var_9E4 = var_810 & "'," & "'" & CVar(global_156) & "','.'," & CVar(var_D5C.Tag) & ",'" & var_940 & "','" & CVar(CStr(var_9C4)) 
  loc_17BDB45:     var_A98 = var_9E4 & "','" & CVar(CStr(var_A58)) & "'," 
  loc_17BDBA5:     var_D34 = var_A98 & var_B0C & "," & var_BB0 & "," & var_C54 & ",'" & CVar(MemVar_1F920C8) & "'," & var_CE4 & ",'A','" & CVar(global_52) 
  loc_17BDC08:     var_F28 = CStr(var_D34 & "','" & CVar(var_D60) & "'," & var_E14 & ",'" & CVar(MemVar_1F92078) & "'," & var_EA4 & "," & var_EF4 & ")")
  loc_17BDC12:     unk_539FDF.Execute var_F28, var_F48, -1
  loc_17BDD62:     var_AC = (var_AC + 1)
  loc_17BDD69:     var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BDD6E:     var_FC = 2
  loc_17BDD7B:     Set var_110 = Me.FGrid
  loc_17BDD81:     var_120 = var_110.TextMatrix)
  loc_17BDD9D:     If (CStr(var_120) = "Room") Then
  loc_17BDDCB:       unk_539FDF.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_120, -1
  loc_17BDDD6:       Set var_9C = var_110
  loc_17BDDFC:       If (var_9C.RecordCount > 0) Then
  loc_17BDE2B:         var_158 = var_9C.Fields.Item("TaxStru")
  loc_17BDE3B:         var_134 = "Select * from taxstru where Code='" & var_158.Value 
  loc_17BDE44:         var_144 = var_134 & "' Order by Sno" 
  loc_17BDE52:         unk_539FDF.Execute CStr(var_144), var_154, -1
  loc_17BDE5D:         Set var_A0 = Me.Txt
  loc_17BDE7A:       Else
  loc_17BDE93:         MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_17BDEA9:         unk_539FDF.RollbackTrans
  loc_17BDEAE:         Exit Sub
  loc_17BDEAF:       End If
  loc_17BDEB3:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BDEB8:       var_FC = &H16
  loc_17BDEEB:       var_124 = "Select Docid,GuestProf from GuestFolio where LOGSITE_CODE='" & MemVar_1F92078
  loc_17BDF0D:       unk_539FDF.Execute var_124 & "' AND Docid='" & CStr(Me.FGrid.TextMatrix)) & "' ORDER BY VDATE DESC", var_134, -1
  loc_17BDF18:       Set var_C8 = var_158
  loc_17BDF4A:       If (var_C8.RecordCount > 0) Then
  loc_17BDF53:         var_DC = "GuestProf"
  loc_17BDF67:         var_158 = var_C8.Fields.Item(var_DC)
  loc_17BDF6F:         var_120 = var_158.Value
  loc_17BDF78:         var_CC = CStr(var_120)
  loc_17BDF85:       End If
  loc_17BDF99:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, var_158, var_120, var_FC, var_DC)
  loc_17BDFA1:       var_15C = var_158.Text
  loc_17BDFB4:       Set var_15C = Me.Txt
  loc_17BDFBA:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_1D4, Me.Txt, var_FC)
  loc_17BDFC2:       var_DC = var_1C4.Text
  loc_17BDFE2:       Set var_218 = Me.Txt
  loc_17BDFE8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_26C, var_AC)
  loc_17BDFF7:       Proc_6_7_F25D88(var_2B0, CVar(var_26C))
  loc_17BE04F:       var_204 = CVar(CLng(var_AA)) 'Long
  loc_17BE054:       var_238 = 2
  loc_17BE077:       var_268 = CVar(CLng(var_AA)) 'Long
  loc_17BE07C:       var_2F0 = 8
  loc_17BE0A9:       var_374 = CVar(CLng(var_AA)) 'Long
  loc_17BE0AE:       var_480 = &H12
  loc_17BE0C1:       var_4E4 = Me.FGrid.TextMatrix)
  loc_17BE102:       var_5EC = Me.FGrid.TextMatrix)
  loc_17BE149:       var_6C0 = Me.FGrid.TextMatrix)
  loc_17BE185:       var_7D0 = Me.FGrid.TextMatrix)
  loc_17BE1B1:       var_390 = Val(CStr(Right(CVar(CStr(var_7D0)), 8)))
  loc_17BE1C2:       Proc_6_7_F25D88(var_940, Date, var_390, var_7D0, &H16, CVar(CLng(var_AA)), var_6C0, &H12)
  loc_17BE1FC:       Proc_6_17_EAA2B0(var_A98, global_180, CVar(CLng(var_AA)), var_5EC, &H12)
  loc_17BE20F:       Proc_6_8_EB0DE4(var_B0C, global_184, CVar(CLng(var_AA)), var_4E4)
  loc_17BE228:       var_160 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,FolioNoDocid,LOGSITE_CODE,AU_Name,AU_EntDt)Values " & "('"
  loc_17BE242:       var_1C8 = var_160 & var_124 & "'," & CStr(var_AC)
  loc_17BE285:       var_290 = CVar(var_1C8 & ",'" & global_128 & "'," & var_1D4 & ",'" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) & "'," 
  loc_17BE29C:       var_340 = CVar(Format$(Time, "HH:mm")) 'String
  loc_17BE2D5:       var_3FC = var_290 & var_2B0 & ",'" & var_340 & "','" & CVar(var_CC) & "','" & CVar(var_94) & "','" & var_9C.Fields.Item("Code").Value 
  loc_17BE30D:       var_578 = var_3FC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Mid(CVar(CStr(var_4E4)), 3, 5) 
  loc_17BE34A:       var_850 = var_578 & "','" & LTrim(Left(CVar(CStr(var_5EC)), 2)) & "','" & Right(CVar(CStr(var_6C0)), 5) & "'," & CVar(var_390) & ",'','',0,''," 
  loc_17BE39C:       var_A04 = var_850 & vbNullString & "'" & CVar(MemVar_1F920C8) & "'," & var_940 & ",'A','" & CVar(global_52) & "','" & var_C8.Fields.Item("DocID").Value 
  loc_17BE3E6:       unk_539FDF.Execute CStr(var_A04 & "','" & CVar(MemVar_1F92078) & "'," & var_A98 & "," & var_B0C & ")"), var_B90, -1
  loc_17BE4CC:       var_AC = (var_AC + 1)
  loc_17BE4D3:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BE4D8:       var_FC = &H12
  loc_17BE50F:       var_B4 = CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 5))
  loc_17BE522:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BE527:       var_FC = &H12
  loc_17BE569:       var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_17BE57E:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BE583:       var_FC = &H16
  loc_17BE5DA:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BE5DF:       var_FC = &H12
  loc_17BE61B:       var_B0 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_17BE630:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_17BE635:       var_FC = 8
  loc_17BE653:       var_124 = CStr(Me.FGrid.TextMatrix))
  loc_17BE65B:       var_168 = Val(var_124)
  loc_17BE665:       var_C4 = (var_C4 + var_168)
  loc_17BE67F:       Set var_110 = Me.Txt
  loc_17BE685:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_1C8, var_C4, var_168, var_FC, var_DC)
  loc_17BE68D:       var_120 = var_158.Text
  loc_17BE6A0:       Set var_15C = Me.Txt
  loc_17BE6A6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1C4, var_124, var_FC, var_DC)
  loc_17BE6AE:       var_120 = var_1C4.Text
  loc_17BE6BB:       var_F88 = Val(var_124)
  loc_17BE6C9:       var_134 = Trim(CVar(Me.LblVPrefix))
  loc_17BE6DC:       Set var_218 = Me.Txt
  loc_17BE6E2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_26C, var_1D4, var_F88)
  loc_17BE6EA:       var_FC = var_26C.Text
  loc_17BE71A:       var_2A0 = Trim(CVar(Format$(Time, "HH:mm")))
  loc_17BE741:       var_3B4 = var_9C.Fields.Item("Code").Value
  loc_17BE74A:       var_FC = CVar(CLng(var_AA)) 'Long
  loc_17BE74F:       var_190 = 8
  loc_17BE775:       var_F90 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17BE77C:       var_1B0 = CVar(CLng(var_AA)) 'Long
  loc_17BE781:       var_1E4 = 8
  loc_17BE7A7:       var_F98 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_17BE7B8:       var_2E0 = Date
  loc_17BE7C0:       var_300 = Date
  loc_17BE7C8:       var_320 = Now
  loc_17BE7D1:       Set var_4B4 = Me.TopCtrl1
  loc_17BE7D7:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(Val(CStr(Val(CStr(Right(CVar(CStr(Me.FGrid.TextMatrix))), 8))))))
  loc_17BE809:       var_3A4 = IIf((CStr(var_340) = "Add"), "A", "E")
  loc_17BE830:       var_3C4 = var_C8.Fields.Item("DocID").Value
  loc_17BE83A:       var_D60 = 0
  loc_17BE845:       var_89C = 0
  loc_17BE858:       var_7B0 = 0
  loc_17BE863:       var_718 = 0
  loc_17BE8A0:       var_27C = vbNullString
  loc_17BE8A9:       var_278 = vbNullString
  loc_17BE8B2:       var_274 = vbNullString
  loc_17BE8E0:       var_270 = "Room"
  loc_17BE8F4:       var_224 = vbNullString
  loc_17BE8FD:       var_220 = vbNullString
  loc_17BE941:       Proc_96_8_1CC2560(MemVar_1F92078 & "TOUT", var_1C8, var_AC, global_128, CLng(var_F88), MemVar_1F92070, CStr(var_134), CDate(var_1D4))
  loc_17BE9B9:     End If
  loc_17BE9B9:   End If
  loc_17BE9BC: Next var_394 'Integer
  loc_17BE9C5: Set var_110 = Me.TopCtrl1
  loc_17BE9CB: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17BE9E4: If (CStr() = "Add") Then
  loc_17BE9FB:   var_124 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_17BEA21:   var_144 = CVar(var_124 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_128 & "' And VP.Date_From<=") 'String
  loc_17BEA32:   Set var_110 = Me.Txt
  loc_17BEA38:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_158, var_1C8, var_144)
  loc_17BEA40:   var_2A0 = var_158.Text
  loc_17BEA4E:   Proc_6_7_F25D88(var_134, CVar(var_1C8))
  loc_17BEA56:   var_154 = -1 & var_134 
  loc_17BEA5F:   var_290 = "HH:mm" & " Order By VP.Date_From DESC" 
  loc_17BEA6D:   unk_539FDF.Execute CStr(var_290), var_15C, 
  loc_17BEA78:   Set var_90 = var_15C
  loc_17BEAB9:   If (Me.Recordset15.RecordCount > 0) Then
  loc_17BEACA:     Set var_110 = Me.Txt
  loc_17BEAD0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_158)
  loc_17BEAD8:     var_124 = var_158.Text
  loc_17BEAE5:     var_168 = Val(var_124)
  loc_17BEAEB:     var_DC = "Date_From"
  loc_17BEB11:     Proc_6_7_F25D88(var_134, CVar(Me.Recordset15.Fields.Item(var_DC)))
  loc_17BEB44:     var_1C8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_168) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_17BEB63:     var_144 = CVar(var_1C8 & MemVar_1F92078 & "') and V_Type='" & global_128 & "' and Date_From=") 'String
  loc_17BEB69:     var_154 = var_144 & var_134 
  loc_17BEB77:     unk_539FDF.Execute CStr(var_154), var_290, -1
  loc_17BEBAB:   End If
  loc_17BEBAB: End If
  loc_17BEBB0: Set var_9C = Nothing
  loc_17BEBB8: Set var_A0 = Nothing
  loc_17BEBC0: Set var_A4 = Nothing
  loc_17BEBC9: unk_539FDF.CommitTrans
  loc_17BEBE1: Me.Requery -1
  loc_17BEBF1: Me.Requery -1
  loc_17BEC15: Set var_110 = Me.Txt
  loc_17BEC1B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_158, var_124, "SearchCode='", 0)
  loc_17BEC23: 1 = var_158.Text
  loc_17BEC3C: Me.Find var_DC & var_124 & "'", var_218, var_168
  loc_17BEC66: var_124 = "INI"
  loc_17BEC74: Call Proc_339_69_F8DAB4(Proc_5_1_100CB50(var_124, Me))
  loc_17BEC7F: Call Proc_339_73_F7001C(global_64)
  loc_17BEC84: Call Proc_339_72_1640A30()
  loc_17BEC89: Exit Sub
  loc_17BEC93: If (CInt(CByte(0)) = 1) Then
  loc_17BEC9C:   unk_539FDF.RollbackTrans
  loc_17BECA1: End If
  loc_17BECA9: Set var_110 = Err()
  loc_17BECAF: Call 0.Method_arg_2C (var_124)
  loc_17BECC8: MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_17BECDB: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_9 'F4FA44
  'Data Table: 539FB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F93B: Me.DGMember.Visible = False
  loc_F4F95A: If (Me.RecordCount > 0) Then
  loc_F4F999:   Set var_B4 = Me.Txt
  loc_F4F99F:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F4F9A7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4F9DA:   var_B0 = Me.Fields.Item("Code")
  loc_F4F9F9:   Set var_B4 = Me.Txt
  loc_F4F9FF:   Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F4FA07:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4FA1D: End If
  loc_F4FA28: Set var_A8 = Me.Txt
  loc_F4FA2E: Call 0.Method_DGMember_UnknownEvent_90 (CInt(&HE))
  loc_F4FA36: var_B0.SetFocus
  loc_F4FA42: Exit Sub
End Sub

Private Sub DGMember_UnknownEvent_1F 'E6DAE0
  'Data Table: 539FB0
  loc_E6DA9E: Proc_6_153_E91194(Me.DGMember, arg_14)
  loc_E6DAB5: Set var_8C = Me.FGPoint
  loc_E6DAD1: Proc_6_138_106D6F8(Me.DGMember, global_88, CInt(&HE))
  loc_E6DADF: Exit Sub
End Sub

Private Sub Del_Click() 'F94F64
  'Data Table: 539FB0
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F94E1F: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F94E59:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F94E7B:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F94E91:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F94E9A:       Set var_10C = Me.FGrid
  loc_F94EB5:     Else
  loc_F94EC8:       Me.FGrid.Rows = 1
  loc_F94EEC:       var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_F94EF4:       Set var_10C = Me.FGrid
  loc_F94F21:       Me.FGrid.FixedRows = 1
  loc_F94F29:     End If
  loc_F94F29:   End If
  loc_F94F2C: Else
  loc_F94F47:   var_98 = "No Entries To Delete"
  loc_F94F4D:   MsgBox(var_98, &H10, "Delete Module", var_E8, var_108)
  loc_F94F5D: End If
  loc_F94F5D: Call Proc_339_80_DFD3F4(FGrid.DispID_10000, var_98)
  loc_F94F62: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) '10E0874
  'Data Table: 539FB0
  Dim var_94 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1D8 As Double
  Dim var_86 As Integer
  loc_10E057E: If (Index = &HD) Then
  loc_10E058F:   Proc_303_0_FB9B68("	")
  loc_10E0597: End If
  loc_10E05B6: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_10E05B9:   Exit Sub
  loc_10E05BA: End If
  loc_10E05E2: If ((CLng(Index) = &H20) And (CLng(Me.GridSel.Col) = CLng(0))) Then
  loc_10E05F5:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_10E060F:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_10E062A:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E0632:   var_D4 = CVar(CLng(0)) 'Long
  loc_10E0660:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E0668:   var_19C = CVar(CLng(0)) 'Long
  loc_10E069F:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10E06A7:   Set var_1D0 = Me.GridSel
  loc_10E06AD:   LateIdCallSt
  loc_10E06E9:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E06F1:   var_D4 = CVar(CLng(0)) 'Long
  loc_10E0724:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10E073A:     var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E0742:     var_D4 = CVar(CLng(5)) 'Long
  loc_10E0774:     global_196 = (global_196 + Val(CStr(Me.GridSel.TextMatrix))))
  loc_10E078B:   Else
  loc_10E079E:     var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_10E07A6:     var_D4 = CVar(CLng(5)) 'Long
  loc_10E07AF:     Set var_E8 = Me.GridSel
  loc_10E07C8:     var_1D8 = Val(CStr(var_E8.TextMatrix)))
  loc_10E07D8:     global_196 = (global_196 - var_1D8)
  loc_10E07EC:   End If
  loc_10E0802:   Set var_94 = Me.Txt
  loc_10E0808:   Call 0.Method_GridSel_UnknownEvent_A0 (CInt(6), var_E8, CStr(global_196), global_196, var_1D8, var_D4, var_B4)
  loc_10E0810:   var_E8.Text = global_196
  loc_10E0830:   var_86 = CInt((UBound(global_172, 1) + 1))
  loc_10E0842:   ReDim Preserve global_172(0 To CLng(var_86))
  loc_10E086A:   global_172(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_10E0871: End If
  loc_10E0871: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5D204
  'Data Table: 539FB0
  loc_E5D1DD: If (CLng(Me.GridSel.Col) <> CLng(0)) Then
  loc_E5D1E0:   Exit Sub
  loc_E5D1E1: End If
  loc_E5D1F8: global_164 = CInt(CLng(Me.GridSel.Row))
  loc_E5D201: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '10A9D9C
  'Data Table: 539FB0
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B0 As Double
  Dim var_1A8 As TextBox
  Dim var_86 As Integer
  loc_10A9AFB: If ((CLng(Me.GridSel.Col) <> CLng(0)) Or (global_164 = 0)) Then
  loc_10A9AFE:   Exit Sub
  loc_10A9AFF: End If
  loc_10A9B2E: For var_A0 = global_164 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_A0 'Integer
  loc_10A9B47:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_10A9B62:   Me.GridSel.Col = 0
  loc_10A9B7A:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_10A9B94:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_10A9BA0:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_10A9BA8:   var_D0 = CVar(CLng(0)) 'Long
  loc_10A9BC7:   var_154 = CVar(CLng(var_88)) 'Long
  loc_10A9BCF:   var_174 = CVar(CLng(0)) 'Long
  loc_10A9C06:   var_194 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10A9C0E:   Set var_1A8 = Me.GridSel
  loc_10A9C14:   LateIdCallSt
  loc_10A9C39:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_10A9C41:   var_D0 = CVar(CLng(0)) 'Long
  loc_10A9C6C:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10A9C73:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_10A9C7B:     var_D0 = CVar(CLng(5)) 'Long
  loc_10A9CAD:     global_196 = (global_196 + Val(CStr(Me.GridSel.TextMatrix))))
  loc_10A9CBC:   Else
  loc_10A9CC0:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_10A9CC8:     var_D0 = CVar(CLng(5)) 'Long
  loc_10A9CEA:     var_1B0 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_10A9CFA:     global_196 = (global_196 - var_1B0)
  loc_10A9D06:   End If
  loc_10A9D1C:   Set var_8C = Me.Txt
  loc_10A9D22:   Call 0.Method_GridSel_UnknownEvent_100 (CInt(6), var_1A8, CStr(global_196), global_196, var_1B0, var_D0, var_B0)
  loc_10A9D2A:   var_1A8.Text = global_196
  loc_10A9D4A:   var_86 = CInt((UBound(global_172, 1) + 1))
  loc_10A9D5C:   ReDim Preserve global_172(0 To CLng(var_86))
  loc_10A9D84:   global_172(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_10A9D8E: Next var_A0 'Integer
  loc_10A9D98: global_164 = 0
  loc_10A9D9B: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F4F624
  'Data Table: 539FB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F51B: Me.DGRoom.Visible = False
  loc_F4F53A: If (Me.RecordCount > 0) Then
  loc_F4F579:   Set var_B4 = Me.Txt
  loc_F4F57F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F4F587:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4F5BA:   var_B0 = Me.Fields.Item("Code")
  loc_F4F5D9:   Set var_B4 = Me.Txt
  loc_F4F5DF:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F4F5E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4F5FD: End If
  loc_F4F608: Set var_A8 = Me.Txt
  loc_F4F60E: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(&H10))
  loc_F4F616: var_B0.SetFocus
  loc_F4F622: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'E6D5AC
  'Data Table: 539FB0
  loc_E6D56A: Proc_6_153_E91194(Me.DGRoom, arg_14)
  loc_E6D581: Set var_8C = Me.FGPoint
  loc_E6D59D: Proc_6_138_106D6F8(Me.DGRoom, global_76, CInt(&H10))
  loc_E6D5AB: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F38C84
  'Data Table: 539FB0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F38B7B: Me.DGPayType.Visible = False
  loc_F38B9A: If (Me.RecordCount > 0) Then
  loc_F38BD9:   Set var_B4 = Me.Txt
  loc_F38BDF:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_B8)
  loc_F38BE7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F38C1A:   var_B0 = Me.Fields.Item("Code")
  loc_F38C39:   Set var_B4 = Me.Txt
  loc_F38C3F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_B8)
  loc_F38C47:   var_B8.Tag = CStr(var_B0.Value)
  loc_F38C5D: End If
  loc_F38C68: Set var_A8 = Me.Txt
  loc_F38C6E: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5))
  loc_F38C76: var_B0.SetFocus
  loc_F38C82: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E6D484
  'Data Table: 539FB0
  loc_E6D442: Proc_6_153_E91194(Me.DGPayType, arg_14)
  loc_E6D459: Set var_8C = Me.FGPoint
  loc_E6D475: Proc_6_138_106D6F8(Me.DGPayType, global_68, CInt(5))
  loc_E6D483: Exit Sub
End Sub

Public Function global_52Get() '53BAAC
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '53BABB
  global_52 = Value
End Sub

Public Function global_56Get() '53BACA
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '53BAD9
  global_56 = Value
End Sub

Public Function global_60Get() '53BAE8
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '53BAF7
  global_60 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC1864
  'Data Table: 539FB0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC17DA: On Error Goto loc_EC181F
  loc_EC17E3: Me.MoveFirst
  loc_EC17FD: var_8C = "Searchcode='" & MyValue
  loc_EC180D: Me.Find var_8C & "'", 0, 1
  loc_EC1819: Call Proc_339_72_1640A30(var_A0)
  loc_EC181E: Exit Sub
  loc_EC181F: ' Referenced from: EC17DA
  loc_EC1827: Set var_A4 = Err()
  loc_EC182D: Call 0.Method_arg_2C (var_8C)
  loc_EC184E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC1861: Exit Sub
  loc_EC1862: Exit Sub
End Sub

Public Property Get OpenMode() 'E096C0
  'Data Table: 539FB0
  loc_E096B9: OpenMode = global_116
End Sub

Public Property Let OpenMode(vNewValue) 'E007D0
  'Data Table: 539FB0
  loc_E007CA: global_116 = vNewValue
  loc_E007CD: Exit Sub
End Sub

Public Property Get OpenType() 'E09600
  'Data Table: 539FB0
  loc_E095F9: OpenType = global_120
End Sub

Public Property Let OpenType(vNewValue) 'E004C4
  'Data Table: 539FB0
  loc_E004BE: global_120 = vNewValue
  loc_E004C1: Exit Sub
End Sub

Public Property Get AdvType() 'E0D39C
  'Data Table: 539FB0
  loc_E0D390: var_88 = global_128
  loc_E0D393: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E0D114
  'Data Table: 539FB0
  loc_E0D10C: global_128 = vNewValue
  loc_E0D110: Exit Sub
  loc_E0D112: arg_3808 = Mid$(, , )
End Sub

Public Property Get IdNo() 'E0BFEC
  'Data Table: 539FB0
  loc_E0BFE0: var_88 = global_124
  loc_E0BFE3: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E0BECC
  'Data Table: 539FB0
  loc_E0BEC4: global_124 = vNewValue
  loc_E0BEC8: Exit Sub
  loc_E0BECA: arg_3808 = Mid$(, , )
End Sub

Public Property Get PersonCode() 'E0BC8C
  'Data Table: 539FB0
  loc_E0BC80: var_88 = global_136
  loc_E0BC83: PersonCode = 
  loc_E0BC8A: arg_3808 = Mid$(, , )
End Sub

Public Property Let PersonCode(vNewValue) 'E0BC44
  'Data Table: 539FB0
  loc_E0BC3C: global_136 = vNewValue
  loc_E0BC40: Exit Sub
  loc_E0BC42: arg_3808 = Mid$(, , )
End Sub

Public Property Get pDocId() 'E0BA04
  'Data Table: 539FB0
  loc_E0B9F8: var_88 = global_132
  loc_E0B9FB: pDocId = 
  loc_E0BA02: arg_3808 = Mid$(, , )
End Sub

Public Property Let pDocId(vNewValue) 'E0C46C
  'Data Table: 539FB0
  loc_E0C464: global_132 = vNewValue
  loc_E0C468: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E0C5D4
  'Data Table: 539FB0
  loc_E0C5C8: var_88 = global_140
  loc_E0C5CB: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E0C664
  'Data Table: 539FB0
  loc_E0C65C: global_140 = vNewValue
  loc_E0C660: Exit Sub
  loc_E0C662: arg_3808 = Mid$(, , )
End Sub

Public Property Get PBillAmt() 'E0CA54
  'Data Table: 539FB0
  loc_E0CA4A: var_88 = CStr(global_144)
  loc_E0CA4D: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E0CB74
  'Data Table: 539FB0
  loc_E0CB71: Exit Sub
  loc_E0CB72: arg_3808 = Mid$(CDbl(vNewValue), , )
End Sub

Public Sub Proc_339_67_100F128
  'Data Table: 539FB0
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_90 As Double
  Dim var_86 As Integer
  loc_100EF3D: For var_B4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B4 'Integer
  loc_100EF47:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_100EF4C:   var_E4 = 1
  loc_100EF86:   If (CStr(Me.FGrid.TextMatrix)) = MemVar_1F92070 & "MEM") Then
  loc_100EF8D:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_100EF92:     var_E4 = &H18
  loc_100EFB0:     var_94 = CStr(Me.FGrid.TextMatrix))
  loc_100EFBD:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_100EFC2:     var_E4 = 8
  loc_100EFF2:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_100EFFE:   End If
  loc_100F001: Next var_B4 'Integer
  loc_100F00E: If (var_94 <> vbNullString) Then
  loc_100F029:   If (Proc_96_1_F8C534(var_94) = 0) Then
  loc_100F02F:     Proc_96_2_100DE2C(var_94)
  loc_100F039:     If (CDbl(0) < var_90) Then
  loc_100F05D:       MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_100F07A:       Me.Global.Unload Me
  loc_100F084:       var_86 = 0
  loc_100F08A:     Else
  loc_100F08C:       var_86 = &HFF
  loc_100F08F:     End If
  loc_100F092:   Else
  loc_100F0A0:     If (Proc_96_1_F8C534(var_94, var_9C) = &HFF) Then
  loc_100F0A6:       Proc_96_2_100DE2C(var_94, var_86)
  loc_100F0BC:       If ((CDbl((var_86 + var_9C)) < var_90) And (var_9C > CDbl(0))) Then
  loc_100F0E0:         MsgBox("Insufficient Ac. Balance.", 0, "Member Detail", var_124, var_134)
  loc_100F0FD:         Me.Global.Unload Me
  loc_100F107:         var_86 = 0
  loc_100F10D:       Else
  loc_100F10F:         var_86 = &HFF
  loc_100F112:       End If
  loc_100F115:     Else
  loc_100F117:       var_86 = &HFF
  loc_100F11A:     End If
  loc_100F11A:   End If
  loc_100F11D: Else
  loc_100F11F:   var_86 = &HFF
  loc_100F122: End If
  loc_100F122: Proc_339_67_100F128 = var_86
End Sub

Public Sub Proc_339_68_DFCC3C
  'Data Table: 539FB0
  loc_DFCC38: Exit Sub
End Sub

Public Sub Proc_339_69_F8DAB4(arg_C) 'F8DAB4
  'Data Table: 539FB0
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  loc_F8D952: Set var_8C = Me.Txt
  loc_F8D958: Call 0.Method_Proc_339_69_F8DAB48 (var_8E, var_86)
  loc_F8D965: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F8D97B:   Set var_8C = Me.Txt
  loc_F8D981:   Call 0.Method_Proc_339_69_F8DAB40 (CInt(var_86), var_98)
  loc_F8D989:   var_98.Enabled = arg_C
  loc_F8D998: Next var_92 'Byte
  loc_F8D9AA: If (global_116 = 1) Then
  loc_F8D9BA:   Set var_8C = Me.Txt
  loc_F8D9C0:   Call 0.Method_Proc_339_69_F8DAB40 (CInt(1), var_98)
  loc_F8D9C8:   var_98.Enabled = False
  loc_F8D9D4: End If
  loc_F8D9E1: Set var_8C = Me.Txt
  loc_F8D9E7: Call 0.Method_Proc_339_69_F8DAB40 (CInt(1), var_98)
  loc_F8D9EF: var_98.Enabled = False
  loc_F8DA08: Set var_8C = Me.Txt
  loc_F8DA0E: Call 0.Method_Proc_339_69_F8DAB40 (CInt(2), var_98)
  loc_F8DA16: var_98.Enabled = False
  loc_F8DA2F: Set var_8C = Me.Txt
  loc_F8DA35: Call 0.Method_Proc_339_69_F8DAB40 (CInt(3), var_98)
  loc_F8DA3D: var_98.Enabled = False
  loc_F8DA56: Set var_8C = Me.Txt
  loc_F8DA5C: Call 0.Method_Proc_339_69_F8DAB40 (CInt(0), var_98)
  loc_F8DA64: var_98.Enabled = False
  loc_F8DA7D: Set var_8C = Me.Txt
  loc_F8DA83: Call 0.Method_Proc_339_69_F8DAB40 (CInt(6), var_98)
  loc_F8DA8B: var_98.Enabled = False
  loc_F8DAA8: Me.GridSel.Enabled = arg_C
  loc_F8DAB0: Exit Sub
End Sub

Public Sub Proc_339_70_F792AC
  'Data Table: 539FB0
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F79172: Set var_8C = Me.Txt
  loc_F79178: Call 0.Method_Proc_339_70_F792AC8 (var_8E, var_86)
  loc_F79185: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F7919B:   Set var_8C = Me.Txt
  loc_F791A1:   Call 0.Method_Proc_339_70_F792AC0 (CInt(var_86), var_98)
  loc_F791A9:   var_98.Text = vbNullString
  loc_F791C5:   Set var_8C = Me.Txt
  loc_F791CB:   Call 0.Method_Proc_339_70_F792AC0 (CInt(var_86), var_98)
  loc_F791D3:   var_98.Tag = vbNullString
  loc_F791E2: Next var_92 'Byte
  loc_F7921F: Set var_8C = Me.Txt
  loc_F79225: Call 0.Method_Proc_339_70_F792AC0 (CInt(2), var_98, CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy")))
  loc_F7922D: var_98.Text = 1
  loc_F79256: Me.FGrid.Rows = 1
  loc_F7925E: var_A8 = "1"
  loc_F79268: Set var_8C = Me.FGrid
  loc_F7928C: Me.FGrid.FixedRows = 1
  loc_F7929A: global_180 = vbNullString
  loc_F792A7: global_184 = CDate(var_A8)
  loc_F792AA: Exit Sub
End Sub

Public Sub Proc_339_71_11001CC
  'Data Table: 539FB0
  loc_10FFE8E: Me.FrRest.BackColor = CLng(MemVar_1F921B0)
  loc_10FFEBB: Me.FrChqDet.Top = (Me.FrRest.Top + CDbl(945))
  loc_10FFED6: Me.FrChqDet.Left = CDbl(1230)
  loc_10FFEEC: Me.FrChqDet.BackColor = CLng(MemVar_1F921B0)
  loc_10FFF19: Me.FrTxnNo.Top = (Me.FrRest.Top + CDbl(945))
  loc_10FFF34: Me.FrTxnNo.Left = CDbl(1230)
  loc_10FFF4A: Me.FrTxnNo.BackColor = CLng(MemVar_1F921B0)
  loc_10FFF77: Me.FrCCDet.Top = (Me.FrRest.Top + CDbl(945))
  loc_10FFF92: Me.FrCCDet.Left = CDbl(1230)
  loc_10FFFA8: Me.FrCCDet.BackColor = CLng(MemVar_1F921B0)
  loc_10FFFD5: Me.FrSendRoom.Top = (Me.FrRest.Top + CDbl(945))
  loc_10FFFF0: Me.FrSendRoom.Left = CDbl(1230)
  loc_1100006: Me.FrSendRoom.BackColor = CLng(MemVar_1F921B0)
  loc_1100033: Me.FrEmp.Top = (Me.FrRest.Top + CDbl(945))
  loc_110004E: Me.FrEmp.Left = CDbl(1230)
  loc_1100064: Me.FrEmp.BackColor = CLng(MemVar_1F921B0)
  loc_1100091: Me.FrComp.Top = (Me.FrRest.Top + CDbl(945))
  loc_11000AC: Me.FrComp.Left = CDbl(1230)
  loc_11000C2: Me.FrComp.BackColor = CLng(MemVar_1F921B0)
  loc_11000EF: Me.FrMember.Top = (Me.FrRest.Top + CDbl(945))
  loc_110010A: Me.FrMember.Left = CDbl(300)
  loc_1100120: Me.FrMember.BackColor = CLng(MemVar_1F921B0)
  loc_110013B: Me.DGRoom.Top = CVar(CDbl(405))
  loc_1100156: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_1100171: Me.DGEmp.Top = CVar(CDbl(405))
  loc_110018C: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_11001A7: Me.DGCompany.Top = CVar(CDbl(405))
  loc_11001C2: Me.DGCompany.Left = CVar(CDbl(5415))
  loc_11001CA: Exit Sub
End Sub

Public Sub Proc_339_72_1640A30
  'Data Table: 539FB0
  Dim Me As Variant
  Dim var_98 As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_AC As String
  Dim var_E8 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim unk_539FDF As Connection15
  Dim var_D8 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_154 As Variant
  Dim var_12C As Variant
  Dim var_1A8 As Fields15
  Dim var_1DC As Variant
  Dim var_144 As Variant
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_13C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  loc_163F46C: On Error Goto loc_16409EA
  loc_163F475: Proc_183_45_E5C118(global_64)
  loc_163F491: If (Me.RecordCount <= 0) Then
  loc_163F494:   Call Proc_339_70_F792AC()
  loc_163F49C: Else
  loc_163F4B0:   var_98 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VTime,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName, ST.EmpCode, " & "E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,"
  loc_163F4BE:   var_A0 = var_98 & "ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, " & "R.Name AS RoomName, ST.FolioNo, ST.CardNo, ST.CardHolder, ST.ChqNo,ST.BatchNo, "
  loc_163F4C5:   var_A4 = var_A0 & "ST.ChqDate, ST.ExpDate, ST.TxnNo,CC.Name as CompName,CompCode,Ag.Name As Party,st.AgAc,st.U_AE,st.U_Name,st.U_Entdt,st.AU_Name,st.AU_Entdt,CC.Name as MemName,CompCode as MemCode FROM ((((PayCharge AS ST left JOIN "
  loc_163F4D3:   var_AC = var_A4 & "GuestProf AS GP ON ST.GuestProf = GP.Code) left JOIN Employee AS E " & "ON ST.EmpCode = E.Code) left JOIN RevMast AS P ON ST.PayCode = P.Code) "
  loc_163F4E1:   var_E8 = CVar(var_AC & "left JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) " & "AND (ST.RoomNo = R.Code))left join SubGroup CC on CC.SubCode=ST.CompCode left join SubGroup Ag on Ag.SubCode=ST.AgAc where ST.Docid='") 'String
  loc_163F528:   unk_539FDF.Execute CStr(var_E8 & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0"), var_13C, -1
  loc_163F533:   Set var_88 = var_140
  loc_163F59F:   var_140 = Me.Recordset15.Fields
  loc_163F608:   var_1A4 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_140.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_163F650:   Me.LblUser.Caption = CStr(var_140 & CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_Name")), var_1A4)))
  loc_163F6D0:   var_144 = Me.Recordset15.Fields.Item("U_AE")
  loc_163F731:   var_1A4 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_144)) = "E"), "Last Update :   ", "entdt :   "))
  loc_163F74B:   var_1A8 = Me.Recordset15.Fields
  loc_163F764:   var_1DC = CVar(Proc_6_38_E68A98(CVar(var_1A8.Item("U_EntDt")))) 'String
  loc_163F779:   Me.LblLDt.Caption = CStr(var_1A4 & var_1DC)
  loc_163F7E5:   global_100 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_163F80D:   If (Me.Recordset15.RecordCount > 0) Then
  loc_163F844:     global_180 = CStr(Me.Recordset15.Fields.Item("AU_Name").Value)
  loc_163F887:     global_184 = CDate(Me.Recordset15.Fields.Item("AU_EntDt").Value)
  loc_163F8D0:     Set var_140 = Me.Txt
  loc_163F8D6:     Call 0.Method_Proc_339_72_1640A300 (CInt(0), var_144)
  loc_163F8DE:     var_144.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_163F930:     Set var_140 = Me.Txt
  loc_163F936:     Call 0.Method_Proc_339_72_1640A300 (CInt(4), var_144)
  loc_163F93E:     var_144.Text = CStr(Me.Recordset15.Fields.Item("Party").Value)
  loc_163F990:     Set var_140 = Me.Txt
  loc_163F996:     Call 0.Method_Proc_339_72_1640A300 (CInt(4), var_144)
  loc_163F99E:     var_144.Tag = CStr(Me.Recordset15.Fields.Item("AgAc").Value)
  loc_163F9F0:     Set var_140 = Me.Txt
  loc_163F9F6:     Call 0.Method_Proc_339_72_1640A300 (CInt(1), var_144)
  loc_163F9FE:     var_144.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_163FA50:     Set var_140 = Me.Txt
  loc_163FA56:     Call 0.Method_Proc_339_72_1640A300 (CInt(2), var_144)
  loc_163FA5E:     var_144.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_163FAB0:     Set var_140 = Me.Txt
  loc_163FAB6:     Call 0.Method_Proc_339_72_1640A300 (CInt(3), var_144)
  loc_163FABE:     var_144.Text = CStr(Me.Recordset15.Fields.Item("VTIME").Value)
  loc_163FB0F:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_163FB5C:     Set var_140 = Me.Txt
  loc_163FB62:     Call 0.Method_Proc_339_72_1640A300 (CInt(7), var_144)
  loc_163FB6A:     var_144.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_163FB7E:   End If
  loc_163FB8D:   Me.FGrid.Redraw = False
  loc_163FBA2:   Set var_B4 = Me.FGrid
  loc_163FBA8:   var_B4.Rows = 1
  loc_163FBB2:   var_90 = 1
  loc_163FBCC:   If (Me.var_B4.RecordCount > 0) Then
  loc_163FBCF:     ' Referenced from:   1640307
  loc_163FBE1:     If Not(Me.Recordset15.EOF) Then
  loc_163FBE4:       var_C4 = vbNullString
  loc_163FBEE:       Set var_B4 = Me.FGrid
  loc_163FC03:       Set var_1F8 = Me.FGrid
  loc_163FC0A:       var_108 = CVar(CLng(var_90)) 'Long
  loc_163FC0F:       var_154 = 0
  loc_163FC46:       var_E8 = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_163FC4D:       LateIdCallSt
  loc_163FCA0:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_90)), var_1F8, var_E8, 2)) 'String
  loc_163FCA7:       LateIdCallSt
  loc_163FD00:       LateIdCallSt
  loc_163FD41:       var_98 = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayCode")), var_1F8, CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)), 1, CVar(CLng(var_90)), var_1F8)
  loc_163FD5D:       If (var_98 = MemVar_1F92070 & "CCAD") Then
  loc_163FD62:         var_8E = &HFF
  loc_163FD65:       End If
  loc_163FDA2:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_90)), var_8E, var_E8)) 'String
  loc_163FDA9:       LateIdCallSt
  loc_163FDDE:       var_12C = CVar(CLng(var_90)) 'Long
  loc_163FE1B:       LateIdCallSt
  loc_163FE6D:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")), CVar(CLng(9)), CVar(CLng(var_90)), var_1F8, CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))), 1, 1)) 'String
  loc_163FE74:       LateIdCallSt
  loc_163FEC2:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardHolder")), CVar(CLng(&HA)), CVar(CLng(var_90)), var_1F8, var_E8, 8)) 'String
  loc_163FEC9:       LateIdCallSt
  loc_163FF17:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_163FF1E:       LateIdCallSt
  loc_163FF6B:       Proc_6_39_E7C810(var_E8, CVar(Me.Recordset15.Fields.Item("BatchNo")), &H17, CVar(CLng(var_90)), var_1F8, var_E8)
  loc_163FF7B:       LateIdCallSt
  loc_163FFCC:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H1A, CVar(CLng(var_90)), var_1F8, CVar(CStr(var_E8)))) 'String
  loc_163FFD3:       LateIdCallSt
  loc_1640021:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqNo")), CVar(CLng(&HC)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1640028:       LateIdCallSt
  loc_1640076:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HD)), CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_164007D:       LateIdCallSt
  loc_1640093:       var_108 = CVar(CLng(var_90)) 'Long
  loc_164009B:       var_154 = CVar(CLng(&HE)) 'Long
  loc_16400CE:       var_E8 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_16400D5:       LateIdCallSt
  loc_1640127:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&HF)), CVar(CLng(var_90)), var_1F8, var_E8, CVar(CLng(&HF)), CVar(CLng(var_90)))) 'String
  loc_164012E:       LateIdCallSt
  loc_164017C:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpCode")), CVar(CLng(&H10)), CVar(CLng(var_90)), var_1F8, var_E8, var_1F8)) 'String
  loc_1640183:       LateIdCallSt
  loc_16401D2:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), &H14, CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_16401D9:       LateIdCallSt
  loc_1640228:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), &H15, CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_164022F:       LateIdCallSt
  loc_164027E:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemCode")), &H18, CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_1640285:       LateIdCallSt
  loc_16402D4:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("MemName")), &H19, CVar(CLng(var_90)), var_1F8, var_E8)) 'String
  loc_16402DB:       LateIdCallSt
  loc_16402EF:       Set var_1F8 = Nothing 
  loc_16402F9:       var_90 = (var_90 + 1)
  loc_1640302:       Me.Recordset15.MoveNext
  loc_1640307:       GoTo loc_163FBCF
  loc_164030A:     End If
  loc_164031D:     Me.FGrid.FixedRows = 1
  loc_1640325:   End If
  loc_1640333:   Me.FGrid.Redraw = True
  loc_1640341:   If (var_90 = 1) Then
  loc_1640357:     Me.FGrid.Rows = 1
  loc_164037B:     var_D8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, var_90, var_1F8, var_E8))) 'String
  loc_1640383:     Set var_C8 = Me.FGrid
  loc_16403B0:     Me.FGrid.FixedRows = 1
  loc_16403B8:   End If
  loc_16403B8:   Call Proc_339_83_11B5114(FGrid.DispID_10000, var_D8, var_E8, var_12C)
  loc_16403DB:   Set var_B4 = Me.Txt
  loc_16403E1:   Call 0.Method_Proc_339_72_1640A300 (CInt(4), var_C8, var_98, "Select P.DocId,P.Vno,P.SNo,P.Vdate,P.AmtCr,P.PayType,P.CompCode From (Sale1 S Inner Join PayCharge P on P.DocId=S.DocId) Where IsNull(P.PayType,'') In('Company') And P.CompCode='", var_1DC)
  loc_16403E9:   -1 = var_C8.Tag
  loc_16403F9:   var_E8 = CVar(var_1A8 & var_98 & "' And P.DocId+Cast(P.SNo As Varchar) In (Select Docid2+Cast(V_SNo2 As Varchar) From LedgerAdj Where DocId1='") 'String
  loc_1640445:   var_194 = var_E8 & Me.Fields.Item("SearchCode").Value & "' And Logsite_Code='" & CVar(MemVar_1F92078) & "') And P.Logsite_Code='" 
  loc_1640466:   unk_539FDF.Execute CStr(var_194 & CVar(MemVar_1F92078) & "' Order by P.Vno,P.SNo"), var_1F8, var_E8
  loc_1640471:   Set var_88 = var_1A8
  loc_16404B6:   If (Me.Recordset15.RecordCount > 0) Then
  loc_16404B9:     ' Referenced from:   16408E2
  loc_16404CB:     If Not(Me.Recordset15.EOF) Then
  loc_16404D2:       Set var_1FC = Me.GridSel
  loc_16404D5:       var_C4 = vbNullString
  loc_16404F6:       Me.GridSel.CellFontName = "WINGDINGS"
  loc_1640510:       Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_164052B:       var_C4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1640533:       var_12C = CVar(CLng(0)) 'Long
  loc_1640541:       LateIdCallSt
  loc_1640559:       var_D8 = Me.GridSel.Row
  loc_1640562:       var_108 = CVar(CLng(var_D8)) 'Long
  loc_164056A:       var_154 = CVar(CLng(1)) 'Long
  loc_164059D:       var_F8 = CVar(CStr(Me.var_D8.Fields.Item("VNo").Value)) 'String
  loc_16405A4:       LateIdCallSt
  loc_16405C8:       var_E8 = Me.GridSel.Row
  loc_1640609:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.var_E8.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(var_E8)), var_1FC, var_F8, CVar(CLng(2)), CVar(CLng(var_E8)))) 'String
  loc_1640610:       LateIdCallSt
  loc_1640632:       var_E8 = Me.GridSel.Row
  loc_1640673:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.var_E8.Fields.Item("SNo")), CVar(CLng(3)), CVar(CLng(var_E8)), var_1FC, var_F8, var_1FC)) 'String
  loc_164067A:       LateIdCallSt
  loc_16406CA:       var_13C = Me.GridSel.Row
  loc_16406D3:       var_12C = CVar(CLng(var_13C)) 'Long
  loc_16406DB:       var_164 = CVar(CLng(4)) 'Long
  loc_16406F8:       var_E8 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("VDate")), var_1FC, "dd/mmm/yyyy", "ü")) 'String
  loc_164070E:       LateIdCallSt
  loc_1640758:       Proc_6_39_E7C810(var_E8, CVar(Me.var_13C.Fields.Item("AmtCr")), var_1FC, CVar(CStr(Format(var_E8, "dd/mmm/yyyy"))), 1, 1)
  loc_1640770:       var_12C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1640778:       var_164 = CVar(CLng(5)) 'Long
  loc_1640798:       var_118 = Format(var_E8, "0.00")
  loc_16407A8:       LateIdCallSt
  loc_16407D0:       var_E8 = Me.GridSel.Row
  loc_1640811:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.var_E8.Fields.Item("PayType")), CVar(CLng(6)), CVar(CLng(var_E8)), var_1FC, CVar(CStr(var_118)), 1, 1)) 'String
  loc_1640818:       LateIdCallSt
  loc_164083A:       var_E8 = Me.GridSel.Row
  loc_164087B:       var_F8 = CVar(Proc_6_38_E68A98(CVar(Me.var_E8.Fields.Item("CompCode")), CVar(CLng(7)), CVar(CLng(var_E8)), var_1FC, var_F8, var_164)) 'String
  loc_1640882:       LateIdCallSt
  loc_164089C:       Set var_1FC = Nothing 
  loc_16408B9:       var_C4 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_16408C2:       Set var_C8 = Me.GridSel
  loc_16408C8:       var_C8.Row = "CompCode"
  loc_16408DD:       Me.var_C8.MoveNext
  loc_16408E2:       GoTo loc_16404B9
  loc_16408E5:     End If
  loc_16408F8:     Me.GridSel.FixedRows = 1
  loc_1640903:   Else
  loc_1640916:     Me.GridSel.Rows = 2
  loc_1640931:     Me.GridSel.Row = 1
  loc_1640939:   End If
  loc_1640942:   var_12C = 2
  loc_1640964:   Call Proc_339_77_1197A3C(CStr(Me.FGrid.TextMatrix)), var_12C, 1, var_1FC, var_F8)
  loc_1640972:   Call Proc_339_80_DFD3F4(var_12C, var_164, var_12C)
  loc_1640977:   Call Proc_339_81_1373770(var_12C)
  loc_1640991:   var_98 = "INI"
  loc_164099F:   Call Proc_339_69_F8DAB4(Proc_5_1_100CB50(var_98, Me))
  loc_16409B0:   If (var_8E = &HFF) Then
  loc_16409BC:     Set var_B4 = Me.TopCtrl1
  loc_16409C2:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_16409D3:     Set var_B4 = Me.TopCtrl1
  loc_16409D9:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_16409E1:   End If
  loc_16409E1: End If
  loc_16409E6: Set var_88 = Nothing
  loc_16409E9: Exit Sub
  loc_16409EA: ' Referenced from: 163F46C
  loc_16409F2: Set var_B4 = Err()
  loc_16409F8: Call 0.Method_arg_2C (var_98, global_64)
  loc_1640A19: MsgBox(CVar(var_98), &H40, "Information", var_F8, var_118)
  loc_1640A2C: Exit Sub
End Sub

Public Sub Proc_339_73_F7001C
  'Data Table: 539FB0
  loc_F6FEF0: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F6FF02:   Me.DGPayType.Visible = False
  loc_F6FF0A: End If
  loc_F6FF26: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_F6FF38:   Me.DGAgAc.Visible = False
  loc_F6FF40: End If
  loc_F6FF5C: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_F6FF6E:   Me.DGEmp.Visible = False
  loc_F6FF76: End If
  loc_F6FF92: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_F6FFA4:   Me.DGRoom.Visible = False
  loc_F6FFAC: End If
  loc_F6FFC8: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_F6FFDA:   Me.DGCompany.Visible = False
  loc_F6FFE2: End If
  loc_F6FFFE: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F70010:   Me.FGPoint.Visible = False
  loc_F70018: End If
  loc_F70018: Exit Sub
End Sub

Public Sub Proc_339_74_E8F078(arg_C) 'E8F078
  'Data Table: 539FB0
  Dim var_10C As TextBox
  loc_E8F00C: Call Proc_339_73_F7001C()
  loc_E8F048: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8F04B:   Call TopCtrl1_UnknownEvent_16()
  loc_E8F053: Else
  loc_E8F05D:   Set var_108 = Me.Txt
  loc_E8F063:   Call 0.Method_Proc_339_74_E8F0780 (arg_C)
  loc_E8F06B:   var_10C.SetFocus
  loc_E8F077: End If
  loc_E8F077: Exit Sub
End Sub

Public Sub Proc_339_75_10EE19C
  'Data Table: 539FB0
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
  loc_10EDEC0: var_90 = global_128
  loc_10EDED7: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10EDF08: Set var_A8 = Me.Txt
  loc_10EDF0E: Call 0.Method_Proc_339_75_10EE19C0 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_10EDF1D: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10EDF25: var_EC = -1 & var_CC 
  loc_10EDF39: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_10EDF44: Set var_8C = var_134
  loc_10EDF80: If (var_8C.RecordCount > 0) Then
  loc_10EDFBF:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_10EDFC2:     GoTo loc_10EE050
  loc_10EDFC5:   End If
  loc_10EDFF6:   global_108 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10EE021:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10EE036:   var_CC = (var_AC.Value + 1)
  loc_10EE03F:   global_112 = CLng(var_CC)
  loc_10EE050:   ' Referenced from: 10EDFC2
  loc_10EE07B:   var_BC = Space((5 - Len(var_90)))
  loc_10EE083:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_10EE097:   var_EC = Space((5 - Len(global_108)))
  loc_10EE09F:   var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_10EE0AC:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_108))
  loc_10EE0C5:   var_14C = Space((8 - Len(CStr(global_112))))
  loc_10EE0CD:   var_15C = (var_130 + var_14C)
  loc_10EE0DC:   var_17C = (var_15C + CVar(CStr(global_112)))
  loc_10EE0E7:   global_104 = CStr(var_17C)
  loc_10EE11D:   Me.LblVPrefix.Caption = global_108
  loc_10EE136:   Set var_A8 = Me.Txt
  loc_10EE13C:   Call 0.Method_Proc_339_75_10EE19C0 (CInt(0), var_AC)
  loc_10EE144:   var_AC.Text = global_104
  loc_10EE166:   Set var_A8 = Me.Txt
  loc_10EE16C:   Call 0.Method_Proc_339_75_10EE19C0 (CInt(1), var_AC)
  loc_10EE174:   var_AC.Text = CStr(global_112)
  loc_10EE189:   var_88 = global_104
  loc_10EE18C: End If
  loc_10EE191: Set var_8C = Nothing
  loc_10EE194: Proc_339_75_10EE19C = global_112
End Sub

Public Sub Proc_339_76_11C20B8
  'Data Table: 539FB0
  Dim var_88 As Long
  Dim var_8C As Frame
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_E0 As String
  Dim var_100 As Variant
  loc_11C1C52: var_88 = global_120
  loc_11C1C5E: If Not (var_88 = 5) Then
  loc_11C1C6A:   If (var_88 = 6) Then
  loc_11C1C6D:   End If
  loc_11C1C79:   Me.FrRest.Visible = True
  loc_11C1C81: End If
  loc_11C1C94: Me.FGrid.Cols = &H19
  loc_11C1C9C: var_A0 = CVar(CLng(9)) 'Long
  loc_11C1CA1: var_C0 = 0
  loc_11C1CAD: LateIdCallSt
  loc_11C1CB8: var_A0 = CVar(CLng(&HA)) 'Long
  loc_11C1CBD: var_C0 = 0
  loc_11C1CC9: LateIdCallSt
  loc_11C1CD4: var_A0 = CVar(CLng(&HB)) 'Long
  loc_11C1CD9: var_C0 = 0
  loc_11C1CE5: LateIdCallSt
  loc_11C1CED: var_A0 = &H1A
  loc_11C1CF6: var_C0 = 0
  loc_11C1D02: LateIdCallSt
  loc_11C1D0D: var_A0 = CVar(CLng(&HC)) 'Long
  loc_11C1D12: var_C0 = 0
  loc_11C1D1E: LateIdCallSt
  loc_11C1D29: var_A0 = CVar(CLng(&HD)) 'Long
  loc_11C1D2E: var_C0 = 0
  loc_11C1D3A: LateIdCallSt
  loc_11C1D45: var_A0 = CVar(CLng(&HE)) 'Long
  loc_11C1D4A: var_C0 = 0
  loc_11C1D56: LateIdCallSt
  loc_11C1D61: var_A0 = CVar(CLng(&HF)) 'Long
  loc_11C1D66: var_C0 = 0
  loc_11C1D72: LateIdCallSt
  loc_11C1D7D: var_A0 = CVar(CLng(&H10)) 'Long
  loc_11C1D82: var_C0 = 0
  loc_11C1D8E: LateIdCallSt
  loc_11C1D96: var_A0 = &H11
  loc_11C1D9F: var_C0 = 0
  loc_11C1DAB: LateIdCallSt
  loc_11C1DB3: var_A0 = 1
  loc_11C1DBC: var_C0 = 0
  loc_11C1DC8: LateIdCallSt
  loc_11C1DD0: var_A0 = 4
  loc_11C1DD9: var_C0 = 0
  loc_11C1DE5: LateIdCallSt
  loc_11C1DED: var_A0 = 5
  loc_11C1DF6: var_C0 = 0
  loc_11C1E02: LateIdCallSt
  loc_11C1E0D: var_A0 = CVar(CLng(6)) 'Long
  loc_11C1E12: var_C0 = 0
  loc_11C1E1E: LateIdCallSt
  loc_11C1E29: var_A0 = CVar(CLng(7)) 'Long
  loc_11C1E2E: var_C0 = 0
  loc_11C1E3A: LateIdCallSt
  loc_11C1E42: var_A0 = 2
  loc_11C1E4B: var_C0 = 0
  loc_11C1E57: LateIdCallSt
  loc_11C1E5F: var_A0 = 0
  loc_11C1E68: var_C0 = &HFA
  loc_11C1E74: LateIdCallSt
  loc_11C1E7C: var_A0 = 0
  loc_11C1E85: var_C0 = 0
  loc_11C1E8E: var_E0 = "SNo"
  loc_11C1E97: LateIdCallSt
  loc_11C1E9F: var_A0 = 0
  loc_11C1EA8: var_C0 = &H1F4
  loc_11C1EB4: LateIdCallSt
  loc_11C1EBC: var_A0 = 0
  loc_11C1EC5: var_C0 = 3
  loc_11C1ECE: var_E0 = "Payment Type"
  loc_11C1ED7: LateIdCallSt
  loc_11C1EDF: var_A0 = 3
  loc_11C1EEE: var_C0 = CVar(CInt(1)) 'Integer
  loc_11C1EF5: LateIdCallSt
  loc_11C1EFD: var_A0 = 3
  loc_11C1F06: var_C0 = &H1068
  loc_11C1F12: LateIdCallSt
  loc_11C1F1A: var_A0 = 0
  loc_11C1F23: var_C0 = 8
  loc_11C1F2C: var_E0 = "Amount"
  loc_11C1F35: LateIdCallSt
  loc_11C1F3D: var_A0 = 8
  loc_11C1F4C: var_C0 = CVar(CInt(7)) 'Integer
  loc_11C1F53: LateIdCallSt
  loc_11C1F5B: var_A0 = 8
  loc_11C1F6A: var_C0 = CVar(CInt(7)) 'Integer
  loc_11C1F71: LateIdCallSt
  loc_11C1F79: var_A0 = 8
  loc_11C1F82: var_C0 = &H4EC
  loc_11C1F8E: LateIdCallSt
  loc_11C1F96: var_A0 = &H12
  loc_11C1F9F: var_C0 = 0
  loc_11C1FAB: LateIdCallSt
  loc_11C1FB3: var_A0 = &H13
  loc_11C1FBC: var_C0 = 0
  loc_11C1FC8: LateIdCallSt
  loc_11C1FD0: var_A0 = &H14
  loc_11C1FD9: var_C0 = 0
  loc_11C1FE5: LateIdCallSt
  loc_11C1FED: var_A0 = &H15
  loc_11C1FF6: var_C0 = 0
  loc_11C2002: LateIdCallSt
  loc_11C200A: var_A0 = &H18
  loc_11C2013: var_C0 = 0
  loc_11C201F: LateIdCallSt
  loc_11C2027: var_A0 = &H19
  loc_11C2030: var_C0 = 0
  loc_11C203C: LateIdCallSt
  loc_11C2044: var_A0 = &H16
  loc_11C204D: var_C0 = 0
  loc_11C2059: LateIdCallSt
  loc_11C2061: var_A0 = &H17
  loc_11C206A: var_C0 = 0
  loc_11C2076: LateIdCallSt
  loc_11C2080: Set var_90 = Nothing 
  loc_11C2084: var_A0 = 1
  loc_11C208D: var_C0 = 0
  loc_11C209A: var_100 = CVar(CStr(1)) 'String
  loc_11C20A2: Set var_8C = Me.FGrid
  loc_11C20A8: LateIdCallSt
  loc_11C20B6: Exit Sub
End Sub

Public Sub Proc_339_77_1197A3C(arg_C) '1197A3C
  'Data Table: 539FB0
  Dim var_94 As Frame
  Dim var_9C As Variant
  Dim var_A4 As TextBox
  loc_1197640: Me.FrTxnNo.Visible = False
  loc_1197654: Me.FrChqDet.Visible = False
  loc_1197668: Me.FrRem.Visible = False
  loc_119767C: Me.FrCCDet.Visible = False
  loc_1197690: Me.FrEmp.Visible = False
  loc_11976A4: Me.FrComp.Visible = False
  loc_11976B8: Me.FrMember.Visible = False
  loc_11976CC: Me.FrSendRoom.Visible = False
  loc_11976D7: var_8C = arg_C
  loc_11976E2: If (var_8C = "Cheque") Then
  loc_11976F1:   Me.FrChqDet.Visible = True
  loc_1197705:   Me.FrRem.Visible = True
  loc_1197743:   Me.FrRem.Top = (Me.FrChqDet.Top + Me.FrChqDet.Height)
  loc_1197754: Else
  loc_119775C:   If (var_8C = "Credit Card") Then
  loc_119776B:     Me.FrCCDet.Visible = True
  loc_119777F:     Me.FrRem.Visible = False
  loc_119778A:   Else
  loc_1197792:     If (var_8C = "Staff") Then
  loc_11977A1:       Me.FrEmp.Visible = True
  loc_11977B5:       Me.FrRem.Visible = True
  loc_11977F3:       Me.FrRem.Top = (Me.FrEmp.Top + Me.FrEmp.Height)
  loc_1197804:     Else
  loc_119780C:       If (var_8C = "Company") Then
  loc_119781B:         Me.FrComp.Visible = True
  loc_119782F:         Me.FrRem.Visible = True
  loc_119786D:         Me.FrRem.Top = (Me.FrComp.Top + Me.FrComp.Height)
  loc_119787E:       Else
  loc_1197886:         If (var_8C = "Member") Then
  loc_1197895:           Me.FrMember.Visible = True
  loc_11978A9:           Me.FrRem.Visible = True
  loc_11978E7:           Me.FrRem.Top = (Me.FrMember.Top + Me.FrMember.Height)
  loc_11978F8:         Else
  loc_1197900:           If (var_8C = "Room") Then
  loc_119790F:             Me.FrSendRoom.Visible = True
  loc_1197923:             Me.FrRem.Visible = False
  loc_119792E:           Else
  loc_1197936:             If (var_8C = "UPI") Then
  loc_1197945:               Me.FrTxnNo.Visible = True
  loc_1197959:               Me.FrRem.Visible = True
  loc_1197991:               Set var_9C = Me.FrRem
  loc_1197997:               var_9C.Top = (Me.FrTxnNo.Top + Me.FrTxnNo.Height)
  loc_11979A8:             Else
  loc_11979B4:               Me.FrRem.Visible = True
  loc_11979CA:               Set var_94 = Me.Txt
  loc_11979D0:               Call 0.Method_Proc_339_77_1197A3C0 (CInt(6), var_9C)
  loc_11979EB:               Set var_A0 = Me.Txt
  loc_11979F1:               Call 0.Method_Proc_339_77_1197A3C0 (CInt(6), var_A4)
  loc_1197A26:               Me.FrRem.Top = ((Me.FrRest.Top + var_9C.Top) + var_A4.Height)
  loc_1197A3A:             End If
  loc_1197A3A:           End If
  loc_1197A3A:         End If
  loc_1197A3A:       End If
  loc_1197A3A:     End If
  loc_1197A3A:   End If
  loc_1197A3A: End If
  loc_1197A3A: Exit Sub
End Sub

Public Sub Proc_339_78_14D2330
  'Data Table: 539FB0
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim Me As Variant
  loc_14D1582: Set var_8C = Me.Txt
  loc_14D1588: Call 0.Method_Proc_339_78_14D23300 (CInt(6), var_90)
  loc_14D15AC: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_14D15BD:   Set var_8C = Me.Txt
  loc_14D15C3:   Call 0.Method_Proc_339_78_14D23300 (CInt(6), var_90)
  loc_14D15CB:   var_90.Text = vbNullString
  loc_14D15D7: End If
  loc_14D15E5: Set var_8C = Me.Txt
  loc_14D15EB: Call 0.Method_Proc_339_78_14D23300 (CInt(6), var_90)
  loc_14D1605: If (var_90.Visible = &HFF) Then
  loc_14D1613:   Set var_8C = Me.Txt
  loc_14D1619:   Call 0.Method_Proc_339_78_14D23300 (CInt(6))
  loc_14D1621:   var_94 = "Amount"
  loc_14D1642:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D1645:     Exit Sub
  loc_14D1646:   End If
  loc_14D1646: End If
  loc_14D165F: Set var_8C = Me.Txt
  loc_14D1665: Call 0.Method_Proc_339_78_14D23300 (CInt(&HF), var_90, var_94)
  loc_14D166D: (global_160 = "Staff") = var_90.Text
  loc_14D1685: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D1693:   Set var_8C = Me.Txt
  loc_14D1699:   Call 0.Method_Proc_339_78_14D23300 (CInt(&HF))
  loc_14D16A1:   var_94 = "Staff Name"
  loc_14D16C2:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D16C5:     Exit Sub
  loc_14D16C6:   End If
  loc_14D16C6: End If
  loc_14D16DF: Set var_8C = Me.Txt
  loc_14D16E5: Call 0.Method_Proc_339_78_14D23300 (CInt(&H10), var_90, var_94)
  loc_14D16ED: (global_160 = "Room") = var_90.Text
  loc_14D1705: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D1713:   Set var_8C = Me.Txt
  loc_14D1719:   Call 0.Method_Proc_339_78_14D23300 (CInt(&H10))
  loc_14D1721:   var_94 = "Room Name"
  loc_14D1742:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D1745:     Exit Sub
  loc_14D1746:   End If
  loc_14D1746: End If
  loc_14D175F: Set var_8C = Me.Txt
  loc_14D1765: Call 0.Method_Proc_339_78_14D23300 (CInt(&HD), var_90, var_94)
  loc_14D176D: (global_160 = "Company") = var_90.Text
  loc_14D1785: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D1793:   Set var_8C = Me.Txt
  loc_14D1799:   Call 0.Method_Proc_339_78_14D23300 (CInt(&HD))
  loc_14D17A1:   var_94 = "Company Name"
  loc_14D17C2:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D17C5:     Exit Sub
  loc_14D17C6:   End If
  loc_14D17C6: End If
  loc_14D17DF: Set var_8C = Me.Txt
  loc_14D17E5: Call 0.Method_Proc_339_78_14D23300 (CInt(&HE), var_90, var_94)
  loc_14D17ED: (global_160 = "Member") = var_90.Text
  loc_14D1805: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D1813:   Set var_8C = Me.Txt
  loc_14D1819:   Call 0.Method_Proc_339_78_14D23300 (CInt(&HE))
  loc_14D1821:   var_94 = "Member Name"
  loc_14D1842:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D1845:     Exit Sub
  loc_14D1846:   End If
  loc_14D1846: End If
  loc_14D1851: If (global_60 = "Y") Then
  loc_14D186D:   Set var_8C = Me.Txt
  loc_14D1873:   Call 0.Method_Proc_339_78_14D23300 (CInt(7), var_90, var_94)
  loc_14D187B:   (global_160 = "Credit Card") = var_90.Text
  loc_14D1893:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14D18A1:     Set var_8C = Me.Txt
  loc_14D18A7:     Call 0.Method_Proc_339_78_14D23300 (CInt(7))
  loc_14D18AF:     var_94 = "Credit Card No."
  loc_14D18D0:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D18D3:       Exit Sub
  loc_14D18D4:     End If
  loc_14D18D4:   End If
  loc_14D18ED:   Set var_8C = Me.Txt
  loc_14D18F3:   Call 0.Method_Proc_339_78_14D23300 (CInt(8), var_90, var_94)
  loc_14D18FB:   (global_160 = "Credit Card") = var_90.Text
  loc_14D1913:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14D1921:     Set var_8C = Me.Txt
  loc_14D1927:     Call 0.Method_Proc_339_78_14D23300 (CInt(8))
  loc_14D192F:     var_94 = "Holder's Name"
  loc_14D1950:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D1953:       Exit Sub
  loc_14D1954:     End If
  loc_14D1954:   End If
  loc_14D196D:   Set var_8C = Me.Txt
  loc_14D1973:   Call 0.Method_Proc_339_78_14D23300 (CInt(&HA), var_90, var_94)
  loc_14D197B:   (global_160 = "Credit Card") = var_90.Text
  loc_14D1993:   If (var_90 And (var_94 = vbNullString)) Then
  loc_14D19A1:     Set var_8C = Me.Txt
  loc_14D19A7:     Call 0.Method_Proc_339_78_14D23300 (CInt(&HA))
  loc_14D19AF:     var_94 = "Batch No."
  loc_14D19D0:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D19D3:       Exit Sub
  loc_14D19D4:     End If
  loc_14D19D4:   End If
  loc_14D19D4: End If
  loc_14D19ED: Set var_8C = Me.Txt
  loc_14D19F3: Call 0.Method_Proc_339_78_14D23300 (CInt(&H11), var_90, var_94)
  loc_14D19FB: (global_160 = "UPI") = var_90.Text
  loc_14D1A13: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D1A21:   Set var_8C = Me.Txt
  loc_14D1A27:   Call 0.Method_Proc_339_78_14D23300 (CInt(&H11))
  loc_14D1A2F:   var_94 = "Txn. No."
  loc_14D1A50:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D1A53:     Exit Sub
  loc_14D1A54:   End If
  loc_14D1A54: End If
  loc_14D1A6D: Set var_8C = Me.Txt
  loc_14D1A73: Call 0.Method_Proc_339_78_14D23300 (CInt(&HB), var_90, var_94)
  loc_14D1A7B: (global_160 = "Cheque") = var_90.Text
  loc_14D1A93: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D1AA1:   Set var_8C = Me.Txt
  loc_14D1AA7:   Call 0.Method_Proc_339_78_14D23300 (CInt(&HB))
  loc_14D1AAF:   var_94 = "Cheque No."
  loc_14D1AD0:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_14D1AD3:     Exit Sub
  loc_14D1AD4:   End If
  loc_14D1AD4: End If
  loc_14D1AED: Set var_8C = Me.Txt
  loc_14D1AF3: Call 0.Method_Proc_339_78_14D23300 (CInt(&HC), var_90, var_94)
  loc_14D1AFB: (global_160 = "Cheque") = var_90.Text
  loc_14D1B13: If (var_90 And (var_94 = vbNullString)) Then
  loc_14D1B21:   Set var_8C = Me.Txt
  loc_14D1B27:   Call 0.Method_Proc_339_78_14D23300 (CInt(&HC))
  loc_14D1B50:   If (Proc_6_27_EA565C(var_90, "Cheque Dt.") = 0) Then
  loc_14D1B53:     Exit Sub
  loc_14D1B54:   End If
  loc_14D1B54: End If
  loc_14D1B5D: If (global_176 = 0) Then
  loc_14D1B79:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14D1B9C:   var_94 = CStr(Me.FGrid.TextMatrix))
  loc_14D1BB5:   If (var_94 <> vbNullString) Then
  loc_14D1BD4:     var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, 3))) 'String
  loc_14D1BDC:     Set var_90 = Me.FGrid
  loc_14D1BF6:   End If
  loc_14D1C10:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_14D1C1C: Else
  loc_14D1C30:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_14D1C39: End If
  loc_14D1C3D: Set var_100 = Me.FGrid
  loc_14D1C60: Set var_8C = Me.Txt
  loc_14D1C66: Call 0.Method_Proc_339_78_14D23300 (CInt(5), var_90, var_94, 1, CVar(CLng(var_86)), var_86)
  loc_14D1C6E: var_86 = var_90.Tag
  loc_14D1C76: var_AC = CVar(var_94) 'String
  loc_14D1C7D: LateIdCallSt
  loc_14D1C93: var_BC = CVar(CLng(var_86)) 'Long
  loc_14D1C98: var_DC = 2
  loc_14D1CAE: LateIdCallSt
  loc_14D1CD6: Set var_8C = Me.Txt
  loc_14D1CDC: Call 0.Method_Proc_339_78_14D23300 (CInt(5), var_90, var_94, 3, CVar(CLng(var_86)), var_100, global_160)
  loc_14D1CE4: var_DC = var_90.Text
  loc_14D1CEC: var_AC = CVar(var_94) 'String
  loc_14D1CF3: LateIdCallSt
  loc_14D1D09: var_BC = CVar(CLng(var_86)) 'Long
  loc_14D1D0E: var_DC = 4
  loc_14D1D24: LateIdCallSt
  loc_14D1D30: var_BC = CVar(CLng(var_86)) 'Long
  loc_14D1D35: var_DC = 5
  loc_14D1D4B: LateIdCallSt
  loc_14D1D73: Set var_8C = Me.Txt
  loc_14D1D79: Call 0.Method_Proc_339_78_14D23300 (CInt(6), var_90, var_94, 8, CVar(CLng(var_86)), var_100, global_156)
  loc_14D1D81: var_DC = var_90.Text
  loc_14D1D90: LateIdCallSt
  loc_14D1DC1: Set var_8C = Me.Txt
  loc_14D1DC7: Call 0.Method_Proc_339_78_14D23300 (CInt(7), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_100, CVar(var_94))
  loc_14D1DCF: var_BC = var_90.Text
  loc_14D1DD7: var_AC = CVar(var_94) 'String
  loc_14D1DDE: LateIdCallSt
  loc_14D1E0F: Set var_8C = Me.Txt
  loc_14D1E15: Call 0.Method_Proc_339_78_14D23300 (CInt(8), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_100)
  loc_14D1E1D: var_AC = var_90.Text
  loc_14D1E25: var_AC = CVar(var_94) 'String
  loc_14D1E2C: LateIdCallSt
  loc_14D1E5D: Set var_8C = Me.Txt
  loc_14D1E63: Call 0.Method_Proc_339_78_14D23300 (CInt(9), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_100)
  loc_14D1E6B: var_AC = var_90.Text
  loc_14D1E73: var_AC = CVar(var_94) 'String
  loc_14D1E7A: LateIdCallSt
  loc_14D1EAC: Set var_8C = Me.Txt
  loc_14D1EB2: Call 0.Method_Proc_339_78_14D23300 (CInt(&HA), var_90, var_94, &H17, CVar(CLng(var_86)), var_100)
  loc_14D1EBA: var_AC = var_90.Text
  loc_14D1EC2: var_AC = CVar(var_94) 'String
  loc_14D1EC9: LateIdCallSt
  loc_14D1EFB: Set var_8C = Me.Txt
  loc_14D1F01: Call 0.Method_Proc_339_78_14D23300 (CInt(&H11), var_90, var_94, &H1A, CVar(CLng(var_86)), var_100)
  loc_14D1F09: var_AC = var_90.Text
  loc_14D1F11: var_AC = CVar(var_94) 'String
  loc_14D1F18: LateIdCallSt
  loc_14D1F49: Set var_8C = Me.Txt
  loc_14D1F4F: Call 0.Method_Proc_339_78_14D23300 (CInt(&HB), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_100)
  loc_14D1F57: var_AC = var_90.Text
  loc_14D1F5F: var_AC = CVar(var_94) 'String
  loc_14D1F66: LateIdCallSt
  loc_14D1F97: Set var_8C = Me.Txt
  loc_14D1F9D: Call 0.Method_Proc_339_78_14D23300 (CInt(&HC), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_100)
  loc_14D1FA5: var_AC = var_90.Text
  loc_14D1FAD: var_AC = CVar(var_94) 'String
  loc_14D1FB4: LateIdCallSt
  loc_14D1FE5: Set var_8C = Me.Txt
  loc_14D1FEB: Call 0.Method_Proc_339_78_14D23300 (CInt(&H12), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_100)
  loc_14D1FF3: var_AC = var_90.Text
  loc_14D1FFB: var_AC = CVar(var_94) 'String
  loc_14D2002: LateIdCallSt
  loc_14D2033: Set var_8C = Me.Txt
  loc_14D2039: Call 0.Method_Proc_339_78_14D23300 (CInt(&HF), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_100)
  loc_14D2041: var_AC = var_90.Text
  loc_14D2049: var_AC = CVar(var_94) 'String
  loc_14D2050: LateIdCallSt
  loc_14D2081: Set var_8C = Me.Txt
  loc_14D2087: Call 0.Method_Proc_339_78_14D23300 (CInt(&HF), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_100)
  loc_14D208F: var_AC = var_90.Tag
  loc_14D2097: var_AC = CVar(var_94) 'String
  loc_14D209E: LateIdCallSt
  loc_14D20D0: Set var_8C = Me.Txt
  loc_14D20D6: Call 0.Method_Proc_339_78_14D23300 (CInt(&H10), var_90, var_94, &H12, CVar(CLng(var_86)), var_100)
  loc_14D20DE: var_AC = var_90.Tag
  loc_14D20E6: var_AC = CVar(var_94) 'String
  loc_14D20ED: LateIdCallSt
  loc_14D211F: Set var_8C = Me.Txt
  loc_14D2125: Call 0.Method_Proc_339_78_14D23300 (CInt(&H10), var_90, var_94, &H13, CVar(CLng(var_86)), var_100)
  loc_14D212D: var_AC = var_90.Text
  loc_14D2135: var_AC = CVar(var_94) 'String
  loc_14D213C: LateIdCallSt
  loc_14D216E: Set var_8C = Me.Txt
  loc_14D2174: Call 0.Method_Proc_339_78_14D23300 (CInt(&HD), var_90, var_94, &H14, CVar(CLng(var_86)), var_100)
  loc_14D217C: var_AC = var_90.Tag
  loc_14D2184: var_AC = CVar(var_94) 'String
  loc_14D218B: LateIdCallSt
  loc_14D21BD: Set var_8C = Me.Txt
  loc_14D21C3: Call 0.Method_Proc_339_78_14D23300 (CInt(&HD), var_90, var_94, &H15, CVar(CLng(var_86)), var_100)
  loc_14D21CB: var_AC = var_90.Text
  loc_14D21D3: var_AC = CVar(var_94) 'String
  loc_14D21DA: LateIdCallSt
  loc_14D220C: Set var_8C = Me.Txt
  loc_14D2212: Call 0.Method_Proc_339_78_14D23300 (CInt(&HE), var_90, var_94, &H18, CVar(CLng(var_86)), var_100)
  loc_14D221A: var_AC = var_90.Tag
  loc_14D2222: var_AC = CVar(var_94) 'String
  loc_14D2229: LateIdCallSt
  loc_14D225B: Set var_8C = Me.Txt
  loc_14D2261: Call 0.Method_Proc_339_78_14D23300 (CInt(&HE), var_90, var_94, &H19, CVar(CLng(var_86)), var_100)
  loc_14D2269: var_AC = var_90.Text
  loc_14D2271: var_AC = CVar(var_94) 'String
  loc_14D2278: LateIdCallSt
  loc_14D2295: If (global_160 = "Room") Then
  loc_14D229C:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14D22A1:   var_EC = &H16
  loc_14D22C7:   var_90 = Me.Fields.Item("FolioNoDocid")
  loc_14D22CF:   var_AC = var_90.Value
  loc_14D22D8:   var_FC = CVar(CStr(var_AC)) 'String
  loc_14D22DF:   LateIdCallSt
  loc_14D22F5: End If
  loc_14D22F7: Set var_100 = Nothing 
  loc_14D22FB: Call Proc_339_80_DFD3F4(var_100, var_FC, var_EC, var_CC, var_100, var_AC)
  loc_14D230B: Set var_8C = Me.Txt
  loc_14D2311: Call 0.Method_Proc_339_78_14D23300 (CInt(5), var_90, var_100, global_152)
  loc_14D2319: var_90.SetFocus
  loc_14D232A: global_176 = &HFF
  loc_14D232D: Exit Sub
End Sub

Public Sub Proc_339_79_11AA5B4(arg_C) '11AA5B4
  'Data Table: 539FB0
  Dim var_8C As TextBox
  loc_11AA178: If (arg_C = vbNullString) Then
  loc_11AA189:   Set var_88 = Me.Txt
  loc_11AA18F:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(5), var_8C)
  loc_11AA197:   var_8C.Text = vbNullString
  loc_11AA1B1:   Set var_88 = Me.Txt
  loc_11AA1B7:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(6), var_8C)
  loc_11AA1BF:   var_8C.Text = vbNullString
  loc_11AA1D9:   Set var_88 = Me.Txt
  loc_11AA1DF:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&H12), var_8C)
  loc_11AA1E7:   var_8C.Text = vbNullString
  loc_11AA201:   Set var_88 = Me.Txt
  loc_11AA207:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(7), var_8C)
  loc_11AA20F:   var_8C.Text = vbNullString
  loc_11AA229:   Set var_88 = Me.Txt
  loc_11AA22F:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(8), var_8C)
  loc_11AA237:   var_8C.Text = vbNullString
  loc_11AA251:   Set var_88 = Me.Txt
  loc_11AA257:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(9), var_8C)
  loc_11AA25F:   var_8C.Text = vbNullString
  loc_11AA279:   Set var_88 = Me.Txt
  loc_11AA27F:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HA), var_8C)
  loc_11AA287:   var_8C.Text = vbNullString
  loc_11AA2A1:   Set var_88 = Me.Txt
  loc_11AA2A7:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&H11), var_8C)
  loc_11AA2AF:   var_8C.Text = vbNullString
  loc_11AA2C9:   Set var_88 = Me.Txt
  loc_11AA2CF:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HB), var_8C)
  loc_11AA2D7:   var_8C.Text = vbNullString
  loc_11AA2F1:   Set var_88 = Me.Txt
  loc_11AA2F7:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HC), var_8C)
  loc_11AA2FF:   var_8C.Text = vbNullString
  loc_11AA319:   Set var_88 = Me.Txt
  loc_11AA31F:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HD), var_8C)
  loc_11AA327:   var_8C.Text = vbNullString
  loc_11AA341:   Set var_88 = Me.Txt
  loc_11AA347:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HE), var_8C)
  loc_11AA34F:   var_8C.Text = vbNullString
  loc_11AA369:   Set var_88 = Me.Txt
  loc_11AA36F:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HF), var_8C)
  loc_11AA377:   var_8C.Text = vbNullString
  loc_11AA391:   Set var_88 = Me.Txt
  loc_11AA397:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&H10), var_8C)
  loc_11AA39F:   var_8C.Text = vbNullString
  loc_11AA3AB: End If
  loc_11AA3B3: If (arg_C <> "UPI") Then
  loc_11AA3C4:   Set var_88 = Me.Txt
  loc_11AA3CA:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&H11), var_8C)
  loc_11AA3D2:   var_8C.Text = vbNullString
  loc_11AA3DE: End If
  loc_11AA3E6: If (arg_C <> "Cheque") Then
  loc_11AA3F7:   Set var_88 = Me.Txt
  loc_11AA3FD:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HB), var_8C)
  loc_11AA405:   var_8C.Text = vbNullString
  loc_11AA41F:   Set var_88 = Me.Txt
  loc_11AA425:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HC), var_8C)
  loc_11AA42D:   var_8C.Text = vbNullString
  loc_11AA439: End If
  loc_11AA441: If (arg_C <> "Credit Card") Then
  loc_11AA452:   Set var_88 = Me.Txt
  loc_11AA458:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(7), var_8C)
  loc_11AA460:   var_8C.Text = vbNullString
  loc_11AA47A:   Set var_88 = Me.Txt
  loc_11AA480:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(8), var_8C)
  loc_11AA488:   var_8C.Text = vbNullString
  loc_11AA4A2:   Set var_88 = Me.Txt
  loc_11AA4A8:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(9), var_8C)
  loc_11AA4B0:   var_8C.Text = vbNullString
  loc_11AA4CA:   Set var_88 = Me.Txt
  loc_11AA4D0:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HA), var_8C)
  loc_11AA4D8:   var_8C.Text = vbNullString
  loc_11AA4E4: End If
  loc_11AA4EC: If (arg_C <> "Company") Then
  loc_11AA4FD:   Set var_88 = Me.Txt
  loc_11AA503:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HD), var_8C)
  loc_11AA50B:   var_8C.Text = vbNullString
  loc_11AA517: End If
  loc_11AA51F: If (arg_C <> "Member") Then
  loc_11AA530:   Set var_88 = Me.Txt
  loc_11AA536:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HE), var_8C)
  loc_11AA53E:   var_8C.Text = vbNullString
  loc_11AA54A: End If
  loc_11AA552: If (arg_C <> "Staff") Then
  loc_11AA563:   Set var_88 = Me.Txt
  loc_11AA569:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&HF), var_8C)
  loc_11AA571:   var_8C.Text = vbNullString
  loc_11AA57D: End If
  loc_11AA585: If (arg_C <> "Room") Then
  loc_11AA596:   Set var_88 = Me.Txt
  loc_11AA59C:   Call 0.Method_Proc_339_79_11AA5B40 (CInt(&H10), var_8C)
  loc_11AA5A4:   var_8C.Text = vbNullString
  loc_11AA5B0: End If
  loc_11AA5B0: Exit Sub
End Sub

Public Sub Proc_339_80_DFD3F4
  'Data Table: 539FB0
  loc_DFD3F0: Exit Sub
End Sub

Public Sub Proc_339_81_1373770
  'Data Table: 539FB0
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As TextBox
  loc_1372EF7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1372EFC: var_C8 = 1
  loc_1372F33: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1372F3A:   Set var_F4 = Me.FGrid
  loc_1372F7A:   Set var_DC = Me.Txt
  loc_1372F80:   Call 0.Method_Proc_339_81_13737700 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_1372F88:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1372FB3:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1372FB8:   var_C8 = 2
  loc_1372FD5:   global_160 = CStr(var_F4.TextMatrix))
  loc_1372FFE:   var_C8 = 3
  loc_1373023:   Set var_DC = Me.Txt
  loc_1373029:   Call 0.Method_Proc_339_81_13737700 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_1373031:   var_F8.Text = var_C8
  loc_137305C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1373061:   var_C8 = 4
  loc_137307E:   global_152 = CStr(var_F4.TextMatrix))
  loc_13730A2:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13730A7:   var_C8 = 5
  loc_13730C4:   global_156 = CStr(var_F4.TextMatrix))
  loc_13730E8:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1373112:   Set var_DC = Me.Txt
  loc_1373118:   Call 0.Method_Proc_339_81_13737700 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), 8, var_A8, 8)
  loc_1373120:   var_F8.Text = var_A8
  loc_1373153:   var_C8 = CVar(CLng(9)) 'Long
  loc_1373174:   Set var_DC = Me.Txt
  loc_137317A:   Call 0.Method_Proc_339_81_13737700 (CInt(7), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_1373182:   var_F8.Text = var_C8
  loc_13731AD:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13731D6:   Set var_DC = Me.Txt
  loc_13731DC:   Call 0.Method_Proc_339_81_13737700 (CInt(8), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)), var_A8)
  loc_13731E4:   var_F8.Text = var_A8
  loc_1373238:   Set var_DC = Me.Txt
  loc_137323E:   Call 0.Method_Proc_339_81_13737700 (CInt(9), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_1373246:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_137329B:   Set var_DC = Me.Txt
  loc_13732A1:   Call 0.Method_Proc_339_81_13737700 (CInt(&HA), var_F8, CStr(var_F4.TextMatrix)), &H17)
  loc_13732A9:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13732FE:   Set var_DC = Me.Txt
  loc_1373304:   Call 0.Method_Proc_339_81_13737700 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), &H1A)
  loc_137330C:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1373360:   Set var_DC = Me.Txt
  loc_1373366:   Call 0.Method_Proc_339_81_13737700 (CInt(&HB), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_137336E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13733C2:   Set var_DC = Me.Txt
  loc_13733C8:   Call 0.Method_Proc_339_81_13737700 (CInt(&HC), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_13733D0:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1373424:   Set var_DC = Me.Txt
  loc_137342A:   Call 0.Method_Proc_339_81_13737700 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_1373432:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1373486:   Set var_DC = Me.Txt
  loc_137348C:   Call 0.Method_Proc_339_81_13737700 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_1373494:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13734E8:   Set var_DC = Me.Txt
  loc_13734EE:   Call 0.Method_Proc_339_81_13737700 (CInt(&HF), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_13734F6:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_137354B:   Set var_DC = Me.Txt
  loc_1373551:   Call 0.Method_Proc_339_81_13737700 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_1373559:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13735AE:   Set var_DC = Me.Txt
  loc_13735B4:   Call 0.Method_Proc_339_81_13737700 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H13)
  loc_13735BC:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1373611:   Set var_DC = Me.Txt
  loc_1373617:   Call 0.Method_Proc_339_81_13737700 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), &H14)
  loc_137361F:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_1373674:   Set var_DC = Me.Txt
  loc_137367A:   Call 0.Method_Proc_339_81_13737700 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_1373682:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13736D7:   Set var_DC = Me.Txt
  loc_13736DD:   Call 0.Method_Proc_339_81_13737700 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_13736E5:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_137373A:   Set var_DC = Me.Txt
  loc_1373740:   Call 0.Method_Proc_339_81_13737700 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), &H19)
  loc_1373748:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_1373765:   global_176 = &HFF
  loc_137376A:   Set var_F4 = Nothing 
  loc_137376E: End If
  loc_137376E: Exit Sub
End Sub

Public Sub Proc_339_82_EE34B8
  'Data Table: 539FB0
  loc_EE3406: On Error Goto loc_EE344C
  loc_EE341E: Call 0.Method_arg_18C (var_8C)
  loc_EE3426: Call var_8C.Show
  loc_EE343B: Call 0.Method_arg_188 (var_B0)
  loc_EE3443: var_88 = var_B0
  loc_EE3446: Proc_339_82_EE34B8 = 1
  loc_EE344C: ' Referenced from: EE3406
  loc_EE3454: Set var_8C = Err()
  loc_EE345A: Call 0.Method_arg_1C (var_B4)
  loc_EE346B: If (var_B4 <> 0) Then
  loc_EE3476:   Set var_8C = Err()
  loc_EE347C:   Call 0.Method_arg_2C (var_B0)
  loc_EE349D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE34B0: End If
  loc_EE34B0: Proc_339_82_EE34B8 = 
End Sub

Public Sub Proc_339_83_11B5114
  'Data Table: 539FB0
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11B4CDA: Me.GridSel.Rows = 1
  loc_11B4CEE: Me.GridSel.Cols = 8
  loc_11B4CF3: var_98 = 0
  loc_11B4CFF: var_BC = CVar(CLng(0)) 'Long
  loc_11B4D04: var_DC = "O"
  loc_11B4D0D: LateIdCallSt
  loc_11B4D18: var_98 = CVar(CLng(0)) 'Long
  loc_11B4D1D: var_BC = &H258
  loc_11B4D29: LateIdCallSt
  loc_11B4D31: var_98 = 0
  loc_11B4D3D: var_BC = CVar(CLng(1)) 'Long
  loc_11B4D42: var_DC = "Bill No"
  loc_11B4D4B: LateIdCallSt
  loc_11B4D56: var_98 = CVar(CLng(1)) 'Long
  loc_11B4D61: var_BC = CVar(CInt(1)) 'Integer
  loc_11B4D68: LateIdCallSt
  loc_11B4D73: var_98 = CVar(CLng(1)) 'Long
  loc_11B4D7E: var_BC = CVar(CInt(1)) 'Integer
  loc_11B4D85: LateIdCallSt
  loc_11B4D90: var_98 = CVar(CLng(1)) 'Long
  loc_11B4D95: var_BC = &H514
  loc_11B4DA1: LateIdCallSt
  loc_11B4DA9: var_98 = 0
  loc_11B4DB5: var_BC = CVar(CLng(2)) 'Long
  loc_11B4DBA: var_DC = "DocId"
  loc_11B4DC3: LateIdCallSt
  loc_11B4DCE: var_98 = CVar(CLng(2)) 'Long
  loc_11B4DD9: var_BC = CVar(CInt(7)) 'Integer
  loc_11B4DE0: LateIdCallSt
  loc_11B4DEB: var_98 = CVar(CLng(2)) 'Long
  loc_11B4DF6: var_BC = CVar(CInt(7)) 'Integer
  loc_11B4DFD: LateIdCallSt
  loc_11B4E08: var_98 = CVar(CLng(2)) 'Long
  loc_11B4E0D: var_BC = 0
  loc_11B4E19: LateIdCallSt
  loc_11B4E21: var_98 = 0
  loc_11B4E2D: var_BC = CVar(CLng(3)) 'Long
  loc_11B4E32: var_DC = "SNo"
  loc_11B4E3B: LateIdCallSt
  loc_11B4E46: var_98 = CVar(CLng(3)) 'Long
  loc_11B4E51: var_BC = CVar(CInt(7)) 'Integer
  loc_11B4E58: LateIdCallSt
  loc_11B4E63: var_98 = CVar(CLng(3)) 'Long
  loc_11B4E6E: var_BC = CVar(CInt(7)) 'Integer
  loc_11B4E75: LateIdCallSt
  loc_11B4E80: var_98 = CVar(CLng(3)) 'Long
  loc_11B4E85: var_BC = 0
  loc_11B4E91: LateIdCallSt
  loc_11B4E99: var_98 = 0
  loc_11B4EA5: var_BC = CVar(CLng(4)) 'Long
  loc_11B4EAA: var_DC = "Bill Date"
  loc_11B4EB3: LateIdCallSt
  loc_11B4EBE: var_98 = CVar(CLng(4)) 'Long
  loc_11B4EC9: var_BC = CVar(CInt(1)) 'Integer
  loc_11B4ED0: LateIdCallSt
  loc_11B4EDB: var_98 = CVar(CLng(4)) 'Long
  loc_11B4EE6: var_BC = CVar(CInt(1)) 'Integer
  loc_11B4EED: LateIdCallSt
  loc_11B4EF8: var_98 = CVar(CLng(4)) 'Long
  loc_11B4EFD: var_BC = &H640
  loc_11B4F09: LateIdCallSt
  loc_11B4F11: var_98 = 0
  loc_11B4F1D: var_BC = CVar(CLng(5)) 'Long
  loc_11B4F22: var_DC = "Bill Amount"
  loc_11B4F2B: LateIdCallSt
  loc_11B4F36: var_98 = CVar(CLng(5)) 'Long
  loc_11B4F41: var_BC = CVar(CInt(7)) 'Integer
  loc_11B4F48: LateIdCallSt
  loc_11B4F53: var_98 = CVar(CLng(5)) 'Long
  loc_11B4F5E: var_BC = CVar(CInt(7)) 'Integer
  loc_11B4F65: LateIdCallSt
  loc_11B4F70: var_98 = CVar(CLng(5)) 'Long
  loc_11B4F75: var_BC = &H640
  loc_11B4F81: LateIdCallSt
  loc_11B4F89: var_98 = 0
  loc_11B4F95: var_BC = CVar(CLng(6)) 'Long
  loc_11B4F9A: var_DC = "PayType"
  loc_11B4FA3: LateIdCallSt
  loc_11B4FAE: var_98 = CVar(CLng(6)) 'Long
  loc_11B4FB9: var_BC = CVar(CInt(1)) 'Integer
  loc_11B4FC0: LateIdCallSt
  loc_11B4FCB: var_98 = CVar(CLng(6)) 'Long
  loc_11B4FD6: var_BC = CVar(CInt(1)) 'Integer
  loc_11B4FDD: LateIdCallSt
  loc_11B4FE8: var_98 = CVar(CLng(6)) 'Long
  loc_11B4FED: var_BC = 0
  loc_11B4FF9: LateIdCallSt
  loc_11B5001: var_98 = 0
  loc_11B500D: var_BC = CVar(CLng(7)) 'Long
  loc_11B5012: var_DC = "CompCode"
  loc_11B501B: LateIdCallSt
  loc_11B5026: var_98 = CVar(CLng(7)) 'Long
  loc_11B5031: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5038: LateIdCallSt
  loc_11B5043: var_98 = CVar(CLng(7)) 'Long
  loc_11B504E: var_BC = CVar(CInt(1)) 'Integer
  loc_11B5055: LateIdCallSt
  loc_11B5060: var_98 = CVar(CLng(7)) 'Long
  loc_11B5065: var_BC = 0
  loc_11B5071: LateIdCallSt
  loc_11B5079: var_98 = vbNullString
  loc_11B5083: Set var_AC = Me.GridSel
  loc_11B50A7: Me.GridSel.FixedRows = 1
  loc_11B50B1: Set var_88 = Nothing 
  loc_11B50C5: ReDim Preserve global_172(0 To 0)
  loc_11B50DC: global_172(0) = 0
  loc_11B50F0: Me.GridSel.Height = CVar(CDbl(6000))
  loc_11B510B: Me.GridSel.Width = CVar(CDbl(6500))
  loc_11B5113: Exit Sub
End Sub

Public Sub Proc_339_84_1245FC4(arg_C) '1245FC4
  'Data Table: 539FB0
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_539FDF As Connection15
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_C8 As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_E4 As Variant
  Dim var_10C As Variant
  Dim var_150 As Variant
  Dim var_140 As Variant
  loc_1245AB7: If (global_52 <> vbNullString) Then
  loc_1245ACB:   var_88 = " And P.RestCode='" & global_52 & "'"
  loc_1245AD4: Else
  loc_1245AD7:   var_88 = " And P.RestCode In (Select Code From Depart Where OutletYN='Y')"
  loc_1245ADA: End If
  loc_1245AEE: var_8C = "Select P.DocId,P.Vno,P.SNo,P.Vdate,P.AmtCr,P.PayType,P.CompCode From (Sale1 S Inner Join PayCharge P on P.DocId=S.DocId) Where IsNull(P.PayType,'') In('Company') And P.CompCode='" & arg_C
  loc_1245AF5: var_90 = var_8C & "' And P.DocId+Cast(P.SNo As Varchar) Not In (Select Docid2+Cast(V_SNo2 As Varchar) From LedgerAdj Where Logsite_Code='"
  loc_1245B28: unk_539FDF.Execute var_90 & MemVar_1F92078 & "') " & var_88 & " And P.Logsite_Code='" & MemVar_1F92078 & "' Order by P.Vno,P.SNo", var_C8, -1
  loc_1245B39: Set global_192 = var_CC
  loc_1245B71: If (Me.RecordCount = 0) Then
  loc_1245B87:   Me.GridSel.Rows = 2
  loc_1245B8F:   Exit Sub
  loc_1245B90: End If
  loc_1245BA3: Me.GridSel.Row = 1
  loc_1245BAB: ' Referenced from: 1245FA2
  loc_1245BBD: If Not(Me.EOF) Then
  loc_1245BC4:   Set var_EC = Me.GridSel
  loc_1245BC7:   var_B8 = vbNullString
  loc_1245BEB:   var_B8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1245BF3:   var_FC = CVar(CLng(0)) 'Long
  loc_1245C01:   LateIdCallSt
  loc_1245C22:   var_E4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1245C2A:   var_10C = CVar(CLng(1)) 'Long
  loc_1245C5D:   var_150 = CVar(CStr(Me.Fields.Item("VNo").Value)) 'String
  loc_1245C64:   LateIdCallSt
  loc_1245CC9:   var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_EC, var_150, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_1245CD0:   LateIdCallSt
  loc_1245D33:   var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("SNo")), CVar(CLng(3)), CVar(CLng(Me.GridSel.Row)), var_EC, var_150, var_EC)) 'String
  loc_1245D3A:   LateIdCallSt
  loc_1245D93:   var_FC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1245D9B:   var_11C = CVar(CLng(4)) 'Long
  loc_1245DB8:   var_140 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("VDate")), var_EC, "dd/mmm/yyyy", vbNullString)) 'String
  loc_1245DCE:   LateIdCallSt
  loc_1245E18:   Proc_6_39_E7C810(var_140, CVar(Me.Fields.Item("AmtCr")), var_EC, CVar(CStr(Format(var_140, "dd/mmm/yyyy"))), 1, 1)
  loc_1245E30:   var_FC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1245E68:   LateIdCallSt
  loc_1245ED1:   var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType")), CVar(CLng(6)), CVar(CLng(Me.GridSel.Row)), var_EC, CVar(CStr(Format(Me.GridSel.Row, "0.00"))), 1, 1)) 'String
  loc_1245ED8:   LateIdCallSt
  loc_1245F3B:   var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("CompCode")), CVar(CLng(7)), CVar(CLng(Me.GridSel.Row)), var_EC, var_150, CVar(CLng(5)))) 'String
  loc_1245F42:   LateIdCallSt
  loc_1245F5C:   Set var_EC = Nothing 
  loc_1245F79:   var_B8 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1245F88:   Me.GridSel.Row = "CompCode"
  loc_1245F9D:   Me.MoveNext
  loc_1245FA2:   GoTo loc_1245BAB
  loc_1245FA5: End If
  loc_1245FB8: Me.GridSel.FixedRows = 1
  loc_1245FC0: Exit Sub
End Sub
