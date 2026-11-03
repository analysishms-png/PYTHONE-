VERSION 5.00
Begin VB.Form MemPaymentReceive
  Caption = "Payment Receive Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11010
  ClientHeight = 7950
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 7
    Left = 405
    Top = 8310
    Width = 10020
    Height = 960
    TabIndex = 94
    BorderStyle = 0 'None
    Begin TextBox TxtAmtCr
      Index = 7
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 38
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
    Begin TextBox TxtRem
      Index = 7
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 39
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtCrAc
      Index = 7
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 37
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
    Begin TextBox TxtCardNo
      Index = 7
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 36
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 7
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 99
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 7
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 98
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 7
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
      Height = 240
      TabIndex = 97
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 7
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
      Height = 240
      TabIndex = 96
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 7
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
      TabIndex = 95
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 6
    Left = 405
    Top = 7350
    Width = 10020
    Height = 960
    TabIndex = 88
    BorderStyle = 0 'None
    Begin TextBox TxtAmtCr
      Index = 6
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 34
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
    Begin TextBox TxtRem
      Index = 6
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 35
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtCrAc
      Index = 6
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 33
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
    Begin TextBox TxtCardNo
      Index = 6
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 32
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 6
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 93
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 6
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 92
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 6
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
      Height = 240
      TabIndex = 91
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 6
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
      Height = 240
      TabIndex = 90
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 6
      ForeColor = &HC000C0&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
      TabIndex = 89
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 5
    Left = 405
    Top = 6390
    Width = 10020
    Height = 960
    TabIndex = 82
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 5
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 28
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
    Begin TextBox TxtCrAc
      Index = 5
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 29
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
    Begin TextBox TxtRem
      Index = 5
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 31
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 5
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 30
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 5
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
      TabIndex = 87
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 5
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
      Height = 240
      TabIndex = 86
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 5
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
      Height = 240
      TabIndex = 85
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 5
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 84
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 5
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 83
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 4
    Left = 405
    Top = 5430
    Width = 10020
    Height = 960
    TabIndex = 76
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 4
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 24
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
    Begin TextBox TxtCrAc
      Index = 4
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
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
    Begin TextBox TxtRem
      Index = 4
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 27
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 4
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 26
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 4
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
      TabIndex = 81
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 4
      ForeColor = &HC00000&
      Left = 0
      Top = 15
      Width = 765
      Height = 240
      TabIndex = 80
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 4
      ForeColor = &HC00000&
      Left = 0
      Top = 255
      Width = 930
      Height = 240
      TabIndex = 79
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 4
      ForeColor = &HC00000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 78
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 4
      ForeColor = &HC00000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 77
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 3
    Left = 405
    Top = 4470
    Width = 10020
    Height = 960
    TabIndex = 70
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 20
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
    Begin TextBox TxtCrAc
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 21
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
    Begin TextBox TxtRem
      Index = 3
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 23
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 3
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 22
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 3
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
      TabIndex = 75
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 3
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 3
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 3
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 3
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 71
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 2
    Left = 405
    Top = 3510
    Width = 10020
    Height = 960
    TabIndex = 64
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 2
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 16
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
    Begin TextBox TxtCrAc
      Index = 2
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 17
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
    Begin TextBox TxtRem
      Index = 2
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 19
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 2
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 18
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 2
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 2
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 2
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
      Height = 240
      TabIndex = 67
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 2
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
      Height = 240
      TabIndex = 66
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 2
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
      Height = 240
      TabIndex = 65
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 1
    Left = 405
    Top = 2550
    Width = 10020
    Height = 960
    TabIndex = 58
    BorderStyle = 0 'None
    Begin TextBox TxtCardNo
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 12
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
    Begin TextBox TxtCrAc
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 13
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
    Begin TextBox TxtRem
      Index = 1
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 15
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtAmtCr
      Index = 1
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 14
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 1
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 15
      Width = 765
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 255
      Width = 930
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 495
      Width = 825
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 1
      ForeColor = &HFF0000&
      Left = 7785
      Top = 270
      Width = 705
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1125
    Width = 8700
    Height = 470
    TabIndex = 7
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 255
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
  Begin Frame FrDebit
    Caption = "Frame1"
    Index = 0
    Left = 405
    Top = 1590
    Width = 10020
    Height = 960
    TabIndex = 51
    BorderStyle = 0 'None
    Begin TextBox TxtAmtCr
      Index = 0
      BackColor = &HFFFFFF&
      Left = 8520
      Top = 255
      Width = 1350
      Height = 225
      TabIndex = 10
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
    Begin TextBox TxtRem
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 495
      Width = 8700
      Height = 470
      TabIndex = 11
      BorderStyle = 0 'None
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 255
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
    Begin TextBox TxtCrAc
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 255
      Width = 6405
      Height = 225
      TabIndex = 9
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
    Begin TextBox TxtCardNo
      Index = 0
      BackColor = &HFFFFFF&
      Left = 1170
      Top = 15
      Width = 1620
      Height = 225
      TabIndex = 8
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
    Begin Label LblAmtDr
      Caption = "Cr Amt."
      Index = 0
      ForeColor = &HC00000&
      Left = 7785
      Top = 270
      Width = 705
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
    Begin Label LblRem
      Caption = "Remarks"
      Index = 0
      ForeColor = &HC00000&
      Left = 0
      Top = 495
      Width = 825
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
    Begin Label LblCrAc
      Caption = "Credit A/c"
      Index = 0
      ForeColor = &HC00000&
      Left = 0
      Top = 255
      Width = 930
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
    Begin Label LblCardNo
      Caption = "Card No"
      Index = 0
      ForeColor = &HC00000&
      Left = 0
      Top = 15
      Width = 765
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
    Begin Label LblMem
      Caption = "(for member A/c)"
      Index = 0
      ForeColor = &HFF00FF&
      Left = 2865
      Top = 30
      Width = 1590
      Height = 240
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
  End
  Begin DataGrid DGAgAc
    Left = 8820
    Top = 9795
    Width = 6405
    Height = 3090
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 50
  End
  Begin DataGrid DGCrAc
    Left = 8805
    Top = 9420
    Width = 6405
    Height = 3090
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 44
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 885
    Width = 6405
    Height = 225
    TabIndex = 5
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
  Begin Frame FrmList
    Left = 5865
    Top = 9225
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 46
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 47
    End
  End
  Begin TextBox Txt
    Index = 6
    Left = 1575
    Top = 645
    Width = 1350
    Height = 225
    Enabled = 0   'False
    TabIndex = 4
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
    Index = 3
    BackColor = &HFFFFFF&
    Left = 8925
    Top = 885
    Width = 1350
    Height = 225
    TabIndex = 6
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
    Index = 1
    Left = 6630
    Top = 645
    Width = 1350
    Height = 225
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 2
    Left = 3705
    Top = 645
    Width = 1350
    Height = 225
    Enabled = 0   'False
    TabIndex = 3
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
    Index = 0
    Left = 10560
    Top = 120
    Width = 1875
    Height = 255
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin MaskEdBox txtM
    Index = 5
    Left = 5070
    Top = 645
    Width = 720
    Height = 225
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 4110
    Top = 9390
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 48
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11010
    Height = 450
    TabIndex = 100
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 0
    Top = 9840
    Width = 2880
    Height = 255
    TabIndex = 102
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
    Left = 120
    Top = 10200
    Width = 2790
    Height = 285
    TabIndex = 101
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
  Begin Label LblName
    Caption = "Remarks"
    Index = 0
    ForeColor = &HC00000&
    Left = 405
    Top = 1125
    Width = 825
    Height = 240
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
  Begin Label LblName
    Caption = "Against A/c"
    Index = 5
    ForeColor = &HC00000&
    Left = 405
    Top = 870
    Width = 1065
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
  Begin Label LblName
    Caption = "Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 405
    Top = 630
    Width = 465
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
  Begin Label LblName
    Caption = "Dr Amt."
    Index = 6
    ForeColor = &HC00000&
    Left = 8190
    Top = 885
    Width = 705
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
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 3120
    Top = 645
    Width = 435
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 8055
    Top = 645
    Width = 570
    Height = 210
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
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &HC00000&
    Left = 5985
    Top = 645
    Width = 525
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

Attribute VB_Name = "MemPaymentReceive"

Private MasterFormExit As Integer
Private global_72 As Recordset15
Private global_76 As Recordset15
Private global_80 As Variant

Private Sub FGPoint_UnknownEvent_9 'E65274
  'Data Table: 4F9424
  Dim var_98 As Variant
  loc_E65244: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_E65247:   Call DGAgAc_UnknownEvent_9()
  loc_E6524C: End If
  loc_E65268: If (CBool(Me.DGCrAc.Visible) = &HFF) Then
  loc_E6526B:   Call DGCrAc_UnknownEvent_9()
  loc_E65270: End If
  loc_E65270: Exit Sub
  loc_E65271: Set var_98 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FC66A8
  'Data Table: 4F9424
  Dim var_9C As Variant
  Dim var_90 As Label
  loc_FC64FC: On Error Goto loc_FC66A2
  loc_FC6522: Call Proc_289_59_FD1954(Proc_5_1_100CB50("ADD", Me))
  loc_FC652D: Call Proc_289_57_1050B68(global_68)
  loc_FC653E: Set var_90 = Me.FrDebit
  loc_FC6544: Call 0.Method_TopCtrl1_UnknownEvent_AC (var_92, var_86)
  loc_FC6552: For var_96 =  To (var_92 - 1): 1 = var_96 'Integer
  loc_FC6564:   Set var_90 = Me.FrDebit
  loc_FC656A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_86, var_9C)
  loc_FC6572:   var_9C.Visible = False
  loc_FC6581: Next var_96 'Integer
  loc_FC65C1: Set var_90 = Me.txtM
  loc_FC65C7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_9C, CVar(CStr(Format(Now, "HH:MM"))))
  loc_FC65CF: var_9C.Text = 1
  loc_FC65F7: Set var_90 = Me.txtM
  loc_FC65FD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_9C)
  loc_FC6605: var_9C.Tag = vbNullString
  loc_FC6624: Set var_90 = Me.Txt
  loc_FC662A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C)
  loc_FC6632: var_9C.Text = CStr(MemVar_1F920EC)
  loc_FC664D: Call Txt_Validate(CInt(2))
  loc_FC665D: Set var_90 = Me.Txt
  loc_FC6663: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_FC666B: var_9C.SetFocus
  loc_FC6684: Me.LblUser.Caption = vbNullString
  loc_FC6699: Me.LblLDt.Caption = vbNullString
  loc_FC66A1: Exit Sub
  loc_FC66A2: ' Referenced from: FC64FC
  loc_FC66A2: Proc_6_60_E62BC4(0)
  loc_FC66A7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EAF73C
  'Data Table: 4F9424
  loc_EAF6B8: On Error Goto loc_EAF733
  loc_EAF6F2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EAF718:   Call Proc_289_59_FD1954(Proc_5_1_100CB50("INI", Me))
  loc_EAF723:   Call Proc_289_60_EF3078(global_68)
  loc_EAF728:   Call Proc_289_57_1050B68()
  loc_EAF72D:   Call Proc_289_58_14850AC()
  loc_EAF732: End If
  loc_EAF732: Exit Sub
  loc_EAF733: ' Referenced from: EAF6B8
  loc_EAF733: Proc_6_60_E62BC4()
  loc_EAF738: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10BFAB4
  'Data Table: 4F9424
  Dim var_96 As Integer
  Dim unk_4F943C As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_10BF804: On Error Goto loc_10BFA5D
  loc_10BF815: If (Proc_183_56_FE8818(global_68) = &HFF) Then
  loc_10BF818:   Exit Sub
  loc_10BF819: End If
  loc_10BF850: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_10BF861:   unk_4F943C.BeginTrans var_11C
  loc_10BF877:   var_94 = Me.Bookmark 'Variant
  loc_10BF899:   Set var_120 = Me.Txt
  loc_10BF89F:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From Ledger Where DocID='")
  loc_10BF8A7:   var_B8 = var_124.Text
  loc_10BF8B0:   var_12C = -1 & var_128
  loc_10BF8C0:   unk_4F943C.Execute var_12C & "'", var_134, &HFF
  loc_10BF8E8:   Set var_120 = Me.Txt
  loc_10BF8EE:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_10BF900:   var_168 = 0
  loc_10BF913:   var_160 = 0
  loc_10BF91E:   var_15C = 0
  loc_10BF931:   var_154 = 0
  loc_10BF93C:   var_150 = 0
  loc_10BF94F:   var_148 = 0
  loc_10BF98E:   var_128 = "Ledger"
  loc_10BF997:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_10BF9C2:   unk_4F943C.CommitTrans
  loc_10BF9C9:   var_96 = 0
  loc_10BF9D7:   Me.Requery -1
  loc_10BF9F7:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10BFA04:     Me.Bookmark = var_94
  loc_10BFA0C:   Else
  loc_10BFA20:     If (Me.EOF = 0) Then
  loc_10BFA29:       Me.MoveLast
  loc_10BFA2E:     End If
  loc_10BFA2E:   End If
  loc_10BFA2E:   Call Proc_289_58_14850AC(var_96, var_148, 0, var_150, var_154)
  loc_10BFA33:   Call Proc_289_57_1050B68(0, var_15C)
  loc_10BFA54:   Proc_5_0_110649C(&HFF, Me, global_68)
  loc_10BFA5C: End If
  loc_10BFA5C: Exit Sub
  loc_10BFA5D: ' Referenced from: 10BF804
  loc_10BFA63: If (var_96 = &HFF) Then
  loc_10BFA6C:   unk_4F943C.RollbackTrans
  loc_10BFA71: End If
  loc_10BFA79: Set var_120 = Err()
  loc_10BFA7F: Call 0.Method_arg_2C (var_128, 0)
  loc_10BFAA0: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_10BFAB3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F9D3A4
  'Data Table: 4F9424
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F9D230: On Error Goto loc_F9D35F
  loc_F9D241: If (Proc_183_55_FE7900(global_68) = &HFF) Then
  loc_F9D244:   Exit Sub
  loc_F9D245: End If
  loc_F9D25C: If (Me.RecordCount > 0) Then
  loc_F9D274:   var_8C = "EDIT"
  loc_F9D282:   Call Proc_289_59_FD1954(Proc_5_1_100CB50(var_8C, Me))
  loc_F9D29A:   Set var_90 = Me.Txt
  loc_F9D2A0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F9D2A8:   var_98.Enabled = False
  loc_F9D2C1:   Set var_90 = Me.Txt
  loc_F9D2C7:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_98)
  loc_F9D2CF:   var_98.Enabled = False
  loc_F9D2E6:   Set var_90 = Me.Txt
  loc_F9D2EC:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_F9D2F4:   var_98.SetFocus
  loc_F9D303: Else
  loc_F9D324:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F9D334: End If
  loc_F9D341: Me.LblUser.Caption = vbNullString
  loc_F9D356: Me.LblLDt.Caption = vbNullString
  loc_F9D35E: Exit Sub
  loc_F9D35F: ' Referenced from: F9D230
  loc_F9D367: Set var_90 = Err()
  loc_F9D36D: Call 0.Method_arg_2C (var_8C)
  loc_F9D38E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F9D3A1: Exit Sub
  loc_F9D3A2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15420
  'Data Table: 4F9424
  loc_E15415: Me.Global.Unload Me
  loc_E1541D: Exit Sub
  loc_E1541E: Set var_5400 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F2FAF8
  'Data Table: 4F9424
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  loc_F2F9F0: On Error Goto loc_F2FAF0
  loc_F2FA0A: If (Me.RecordCount <= 0) Then
  loc_F2FA28:   var_A8 = "No Records To Search."
  loc_F2FA2E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F2FA3E:   Exit Sub
  loc_F2FA3F: End If
  loc_F2FA49: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_F2FA53:   var_10C = "Select DocID as SearchCode,V_No As VNo,V_Type As VType,cast(V_Date as Varchar(11)) as VDate,Convert(Varchar(5),L.U_EntDt,108) As VTime,S.Name As Agnst_Ac,cast(AmtDr as varchar) As Amount,L.Narration As Remarks From Ledger L Left Join SubGroup S On S.SubCode=L.SubCode where V_PREFIX='" & MemVar_1F9212C
  loc_F2FA68:   MemVar_1F920E4 = var_10C & "' And V_Type In ('MCRV','MBRV') And AmtDr<>0 And (L.LOGSITE_CODE='" & MemVar_1F92078 & "' or L.LOGSITE_CODE='HO') Order by V_No,V_Type"
  loc_F2FA78: Else
  loc_F2FA7F:   var_10C = "Select DocID as SearchCode,V_No As VNo,V_Type As VType,cast(V_Date as Varchar(11)) as VDate,Convert(Varchar(5),L.U_EntDt,108) As VTime,S.Name As Agnst_Ac,cast(AmtDr as varchar) As Amount,L.Narration As Remarks From Ledger L Left Join SubGroup S On S.SubCode=L.SubCode where V_Type In ('MCRV','MBRV') And AmtDr<>0 And (L.LOGSITE_CODE='" & MemVar_1F92078
  loc_F2FA94:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_F2FAA0:   var_B8 = " Order by V_No,V_Type"
  loc_F2FAAA:   MemVar_1F920E4 = CStr(CVar(var_10C & "' or L.LOGSITE_CODE='HO') and v_date=") & var_A8 & var_B8)
  loc_F2FABC: End If
  loc_F2FAC5: Proc_6_126_F1BCC0("900,600,1000,500,3500,1200,3500,7000", MemVar_1F920E4)
  loc_F2FAD3: MemVar_1F92120 = Me
  loc_F2FAEA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2FAEF: Exit Sub
  loc_F2FAF0: ' Referenced from: F2F9F0
  loc_F2FAF0: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F2FAF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2E938
  'Data Table: 4F9424
  loc_E2E928: Proc_5_0_110649C(&HFF, Me)
  loc_E2E930: Call Proc_289_58_14850AC(global_68)
  loc_E2E935: Exit Sub
  loc_E2E936: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2EAB8
  'Data Table: 4F9424
  Dim var_5301 As Variant
  loc_E2EAA8: Proc_5_0_110649C(&HFF, Me)
  loc_E2EAB0: Call Proc_289_58_14850AC(global_68)
  loc_E2EAB5: Exit Sub
  loc_E2EAB6: var_5301 = CVar(4) 'Integer
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2F2F8
  'Data Table: 4F9424
  loc_E2F2E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2F2F0: Call Proc_289_58_14850AC(global_68)
  loc_E2F2F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2F5F8
  'Data Table: 4F9424
  loc_E2F5E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2F5F0: Call Proc_289_58_14850AC(global_68)
  loc_E2F5F5: Exit Sub
  loc_E2F5F6: Set var_5400 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10343EC
  'Data Table: 4F9424
  Dim var_9C As Label
  Dim var_A4 As String
  Dim var_B4 As TextBox
  Dim var_C0 As String
  Dim unk_4F943A As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_A0 As String
  Dim var_13E As Integer
  Dim var_E4 As Variant
  loc_10341D8: On Error Goto loc_10343A2
  loc_10341F8: var_A0 = Me.LblVPrefix.Caption
  loc_1034201: var_A4 = "SELECT VOUCHER_TYPE.DESCRIPTION,NAME,LEDGER.V_Type,LEDGER.V_No,LEDGER.v_Prefix,LEDGER.V_Date,LEDGER.V_SNo,LEDGER.AmtCr,LEDGER.AmtDr,LEDGER.Chq_No,LEDGER.Chq_Date,LEDGER.Narration,LEDGERM.Narration AS NARRMAIN,LEDGER.U_Name As UserName,LEDGERM.DocId,LEDGERM.v_Prefix,LTDS.TDSAMT,LTDS.TDS,LTDS.ONAMT FROM (((LEDGER LEFT JOIN LEDGERM ON LEDGERM.DOCID=LEDGER.DOCID)LEFT JOIN SUBGROUP ON  SUBGROUP.SUBCODE = LEDGER.SUBCODE ) INNER JOIN VOUCHER_TYPE ON (VOUCHER_TYPE.V_tYPE=LEDGER.V_tYPE AND VOUCHER_TYPE.LOGSITE_CODE=LEDGER.LOGSITE_CODE)) LEFT JOIN LEDGERTDS LTDS ON (LTDS.TDSDRCODE=LEDGER.SUBCODE AND LEDGER.DOCID=LTDS.DOCID) WHERE LEDGER.V_PREFIX='" & var_A0
  loc_103422A: Set var_B0 = Me.Txt
  loc_1034230: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_B4, var_B8, var_A4 & "' And LEDGER.V_TYPE='" & global_60 & "' AND LEDGER.V_NO=")
  loc_1034238: var_E4 = var_B4.Text
  loc_1034241: var_C0 = -1 & var_B8
  loc_1034251: unk_4F943A.Execute var_C0 & " order by ledger.v_no,LEDGER.V_SNo", var_E8, 
  loc_103425C: Set var_88 = var_E8
  loc_1034294: If (var_88.RecordCount = 0) Then
  loc_103429D:   Call 0.Method_arg_50 (var_A0)
  loc_10342BE:   MsgBox("No record found to Print", &H40, CVar(var_A0), var_11C, var_13C)
  loc_10342CE:   Exit Sub
  loc_10342CF: End If
  loc_10342DE: var_A4 = MemVar_1F920B4 & "\MemPaymentRect.TTX"
  loc_10342E5: Set var_9C = var_88 
  loc_10342F1: var_13E = CreateFieldDefFile(var_9C, var_A4)
  loc_1034301: var_D4 = CVar(var_13E) 'Integer
  loc_1034304: var_98 = var_D4 'Variant
  loc_1034320: var_A0 = MemVar_1F920B4 & "\MemPaymentRect.RPT"
  loc_1034329: Call 0.Method_arg_1C (var_A0, var_D4, var_9C)
  loc_1034357: Call 0.Method_arg_64 (var_9C, CVar(var_9C), var_10C)
  loc_103435F: Call 0.Method_arg_2C (var_12C, var_13E)
  loc_103436D: Call 0.Method_arg_150 (&HFF)
  loc_1034378: Call 0.Method_arg_50 (var_A0)
  loc_1034391: Proc_183_10_14991A4(var_9C, 0)
  loc_103439E: Set var_88 = Nothing
  loc_10343A1: Exit Sub
  loc_10343A2: ' Referenced from: 10341D8
  loc_10343AA: Set var_9C = Err()
  loc_10343B0: Call 0.Method_arg_2C (var_A0, var_A0)
  loc_10343BB: Call 0.Method_arg_50 (var_A4)
  loc_10343D7: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_11C, var_13C)
  loc_10343EA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E26AF0
  'Data Table: 4F9424
  loc_E26AD6: Me.Recordset15.Requery -1
  loc_E26AE9: Me.Recordset15.Requery -1
  loc_E26AEE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14B43F0
  'Data Table: 4F9424
  Dim var_A8 As Variant
  Dim var_E0 As Variant
  Dim var_C0 As String
  Dim var_A0 As Double
  Dim var_130 As Double
  Dim var_86 As Integer
  Dim unk_4F943C As Connection15
  Dim var_B0 As String
  Dim var_F0 As Integer
  Dim var_A4 As Recordset15
  Dim var_AC As Variant
  Dim MemVar_1F920EC As Double
  Dim var_140 As String
  Dim var_144 As Variant
  Dim var_148 As Variant
  Dim var_96 As Integer
  Dim var_1BC As Double
  Dim var_150 As TextBox
  Dim var_158 As TextBox
  Dim var_160 As TextBox
  Dim var_1C4 As Double
  Dim var_16C As TextBox
  Dim var_1D0 As TextBox
  Dim var_170 As String
  Dim var_100 As Variant
  Dim var_D0 As Variant
  Dim var_120 As Variant
  Dim var_1E4 As Variant
  Dim var_8C As Recordset15
  Dim var_174 As String
  Dim var_17C As String
  Dim var_180 As String
  Dim var_194 As String
  Dim Me As Recordset15
  loc_14B3768: On Error Goto loc_14B43D5
  loc_14B3776: Set var_A4 = Me.Txt
  loc_14B377C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_14B37A5: If (Proc_6_27_EA565C(var_A8, "Date") = 0) Then
  loc_14B37A8:   Exit Sub
  loc_14B37A9: End If
  loc_14B37B4: Set var_A4 = Me.Txt
  loc_14B37BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14B37E3: If (Proc_6_27_EA565C(var_A8, "Vr No") = 0) Then
  loc_14B37E6:   Exit Sub
  loc_14B37E7: End If
  loc_14B37F2: Set var_A4 = Me.Txt
  loc_14B37F8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A8)
  loc_14B3821: If (Proc_6_27_EA565C(var_A8, "Against A/c") = 0) Then
  loc_14B3824:   Exit Sub
  loc_14B3825: End If
  loc_14B3833: Set var_A4 = Me.Txt
  loc_14B3839: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14B3841: var_B0 = var_A8.Text
  loc_14B385D: If (CDbl(Val(var_B0)) = CDbl(0)) Then
  loc_14B3866:   Call 0.Method_arg_50 (var_B0)
  loc_14B3887:   MsgBox("Voucher No. Should not be Zero", &H10, CVar(var_B0), var_100, var_120)
  loc_14B389E:   Call Txt_GotFocus()
  loc_14B38A3:   Exit Sub
  loc_14B38A4: End If
  loc_14B38B2: Set var_A4 = Me.Txt
  loc_14B38B8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0)
  loc_14B38C0: CInt(1) = var_A8.Text
  loc_14B38DC: If (CDbl(Val(var_B0)) = CDbl(0)) Then
  loc_14B38E5:   Call 0.Method_arg_50 (var_B0)
  loc_14B3906:   MsgBox("Amount Should not be Zero", &H10, CVar(var_B0), var_100, var_120)
  loc_14B391D:   Call Txt_GotFocus()
  loc_14B3922:   Exit Sub
  loc_14B3923: End If
  loc_14B3931: Set var_A4 = Me.Txt
  loc_14B3937: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8, var_B0)
  loc_14B393F: CInt(3) = var_A8.Text
  loc_14B394C: var_A0 = Val(var_B0)
  loc_14B3965: Set var_A4 = Me.FrDebit
  loc_14B396B: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_122, var_98, 0)
  loc_14B3979: For var_126 = var_A8 To (var_122 - 1): var_A0 = var_126 'Integer
  loc_14B398C:   Set var_A4 = Me.TxtAmtCr
  loc_14B3992:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_A8)
  loc_14B399A:   var_B0 = var_A8.Text
  loc_14B39B1:   var_A0 = (var_A0 - Val(var_B0))
  loc_14B39C1: Next var_126 'Integer
  loc_14B39CD: If (var_A0 <> CDbl(0)) Then
  loc_14B39D6:   Call 0.Method_arg_50 (var_B0)
  loc_14B39E4:   var_E0 = CVar(var_B0) 'String
  loc_14B39F1:   var_D0 = "Debit Credit Amount mismatched."
  loc_14B39F7:   MsgBox(var_D0, &H10, var_E0, var_100, var_120)
  loc_14B3A07:   Exit Sub
  loc_14B3A08: End If
  loc_14B3A14: Set var_A4 = Me.FrDebit
  loc_14B3A1A: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_122, var_98)
  loc_14B3A28: For var_134 =  To (var_122 - 1): 0 = var_134 'Integer
  loc_14B3A3B:   Set var_A4 = Me.TxtAmtCr
  loc_14B3A41:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_A8)
  loc_14B3A65:   If (CDbl(Val(var_A8.Text)) <> CDbl(0)) Then
  loc_14B3A72:     Set var_A4 = Me.TxtCrAc
  loc_14B3A78:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98)
  loc_14B3AA1:     If (Proc_6_27_EA565C(var_A8, "Credit A/c") = 0) Then
  loc_14B3AA4:       Exit Sub
  loc_14B3AA5:     End If
  loc_14B3AA5:   End If
  loc_14B3AA8: Next var_134 'Integer
  loc_14B3AB0: Call Proc_289_56_F8E7CC(var_122)
  loc_14B3ABB: If (var_122 = 0) Then
  loc_14B3ABE:   Exit Sub
  loc_14B3ABF: End If
  loc_14B3ACD: unk_4F943C.BeginTrans var_138
  loc_14B3AD6: Set var_A4 = Me.TopCtrl1
  loc_14B3ADC: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_14B3AF5: If (CStr() = "Add") Then
  loc_14B3AFE:   var_F0 = 0
  loc_14B3B1B:   var_B0 = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F92078
  loc_14B3B2B:   unk_4F943C.Execute var_B0 & "'", var_D0, -1
  loc_14B3B33:   var_A4 = var_A4.Fields
  loc_14B3B3B:   var_F0 = var_A8.Item(var_A8)
  loc_14B3B43:   var_AC = var_AC.Value
  loc_14B3B4D:   MemVar_1F920EC = CDate(var_E0)
  loc_14B3B94:   Set var_A4 = Me.Txt
  loc_14B3B9A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Select Count(*) From PaymentReceive Where DocID='", var_D0, -1, var_AC)
  loc_14B3BA2:   var_144 = var_A8.Text
  loc_14B3BBB:   unk_4F943C.Execute 0 & var_B0 & "'", var_148, var_E0
  loc_14B3BC3:   MemVar_1F920EC = var_AC.Fields
  loc_14B3BCB:    = var_144.Item(var_E0)
  loc_14B3BD3:    = var_148.Value
  loc_14B3C00:   If (var_E0 > 0) Then
  loc_14B3C09:     Call 0.Method_arg_50 (var_B0)
  loc_14B3C17:     var_E0 = CVar(var_B0) 'String
  loc_14B3C24:     var_D0 = "Duplicate Vr. No."
  loc_14B3C2A:     MsgBox(var_D0, &H40, var_E0, var_100, var_120)
  loc_14B3C40:     Call Proc_289_62_115CCB8(MemVar_1F92044)
  loc_14B3C50:     If (var_B0 = vbNullString) Then
  loc_14B3C53:       Exit Sub
  loc_14B3C54:     End If
  loc_14B3C5A:     Call Proc_289_62_115CCB8(MemVar_1F92044, var_B0)
  loc_14B3C6D:     Set var_A4 = Me.Txt
  loc_14B3C73:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14B3C7B:     var_A8.Text = var_B0
  loc_14B3C8A:     Exit Sub
  loc_14B3C8B:   End If
  loc_14B3C8B: End If
  loc_14B3CAE: Set var_A4 = Me.Txt
  loc_14B3CB4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Delete From lEDGER Where DocID='", var_D0)
  loc_14B3CBC: -1 = var_A8.Text
  loc_14B3CD5: unk_4F943C.Execute var_AC & var_B0 & "'", 0, var_B0
  loc_14B3CF5: var_96 = (var_96 + 1)
  loc_14B3D06: Set var_A4 = Me.Txt
  loc_14B3D0C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14B3D14: var_170 = var_A8.Text
  loc_14B3D27: Set var_AC = Me.Txt
  loc_14B3D2D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_144)
  loc_14B3D35: var_B0 = var_144.Text
  loc_14B3D42: var_1BC = Val(var_B0)
  loc_14B3D65: Set var_14C = Me.Txt
  loc_14B3D6B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_150, var_17C)
  loc_14B3D86: Set var_154 = Me.Txt
  loc_14B3D8C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_158)
  loc_14B3DA7: Set var_15C = Me.Txt
  loc_14B3DAD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_160)
  loc_14B3DC2: var_1C4 = Val(var_160.Text)
  loc_14B3DD3: Set var_168 = Me.Txt
  loc_14B3DD9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_16C, var_198)
  loc_14B3DF3: var_1B4 = 0
  loc_14B3DFE: var_1B0 = 0
  loc_14B3E09: var_1AC = 0
  loc_14B3E12: var_1A8 = "A"
  loc_14B3E2E: var_194 = vbNullString
  loc_14B3E76: Proc_6_141_12E1E18(MemVar_1F92044, var_170, 0, global_60, CLng(var_150.Text), Me.LblVPrefix.Caption, MemVar_1F92070, CDate(var_17C))
  loc_14B3EC2: Set var_A4 = Me.FrDebit
  loc_14B3EC8: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_122, var_98, 0, var_158.Tag, CDbl(0), var_16C.Text)
  loc_14B3ED6: For var_1C8 = var_198 To (var_122 - 1): var_194 = var_1C8 'Integer
  loc_14B3EE9:   Set var_A4 = Me.TxtAmtCr
  loc_14B3EEF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_A8, var_B0, var_198)
  loc_14B3EF7:   MemVar_1F920C8 = var_A8.Text
  loc_14B3F13:   If (CDbl(Val(var_B0)) <> CDbl(0)) Then
  loc_14B3F1C:     var_96 = (var_96 + 1)
  loc_14B3F2D:     Set var_A4 = Me.Txt
  loc_14B3F33:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_174)
  loc_14B3F4E:     Set var_AC = Me.Txt
  loc_14B3F54:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_144, var_B0)
  loc_14B3F5C:     CDate(Now) = var_144.Text
  loc_14B3F69:     var_1BC = Val(var_B0)
  loc_14B3F73:     Set var_148 = Me.LblVPrefix
  loc_14B3F8C:     Set var_14C = Me.Txt
  loc_14B3F92:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_150, var_180)
  loc_14B3FAC:     Set var_154 = Me.TxtCrAc
  loc_14B3FB2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_158)
  loc_14B3FBA:     var_140 = var_158.Tag
  loc_14B3FCC:     Set var_15C = Me.TxtAmtCr
  loc_14B3FD2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_160)
  loc_14B3FE7:     var_1C4 = Val(var_160.Text)
  loc_14B3FF8:     Set var_168 = Me.Txt
  loc_14B3FFE:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_16C, var_170)
  loc_14B4006:     var_1C4 = var_16C.Tag
  loc_14B4018:     Set var_1CC = Me.TxtRem
  loc_14B401E:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_98, var_1D0)
  loc_14B4026:     var_19C = var_1D0.Text
  loc_14B402E:     var_D0 = Now
  loc_14B4038:     var_1D4 = 0
  loc_14B4043:     var_1B4 = 0
  loc_14B404E:     var_1B0 = 0
  loc_14B4057:     var_1AC = "A"
  loc_14B40B9:     Proc_6_141_12E1E18(MemVar_1F92044, var_174, var_A8.Text, global_60, CLng(var_150.Text), var_148.Caption, MemVar_1F92070, CDate(var_180))
  loc_14B40FD:   End If
  loc_14B4100: Next var_1C8 'Integer
  loc_14B4109: Set var_A4 = Me.TopCtrl1
  loc_14B410F: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14B4128: If (CStr() = "Add") Then
  loc_14B413F:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_14B4165:   var_100 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_14B4176:   Set var_A4 = Me.Txt
  loc_14B417C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8, var_174, var_100)
  loc_14B4184:   var_1F4 = var_A8.Text
  loc_14B4192:   Proc_6_7_F25D88(var_E0, CVar(var_174))
  loc_14B419A:   var_120 = -1 & var_E0 
  loc_14B41A3:   var_1E4 = var_120 & " Order By VP.Date_From DESC" 
  loc_14B41B1:   unk_4F943C.Execute CStr(var_1E4), var_AC, 
  loc_14B41BC:   Set var_8C = var_AC
  loc_14B41FA:   If (var_8C.RecordCount > 0) Then
  loc_14B420B:     Set var_A4 = Me.Txt
  loc_14B4211:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14B4226:     var_130 = Val(var_A8.Text)
  loc_14B422C:     var_C0 = "Date_From"
  loc_14B424F:     Proc_6_7_F25D88(var_E0, CVar(var_8C.Fields.Item(var_C0)))
  loc_14B4282:     var_174 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_130) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_14B42B5:     unk_4F943C.Execute CStr(CVar(var_174 & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") & var_E0), var_1E4, -1
  loc_14B42E9:   End If
  loc_14B42E9: End If
  loc_14B42EF: unk_4F943C.CommitTrans
  loc_14B42F4: Call Proc_289_60_EF3078(var_148)
  loc_14B4307: Set var_A4 = Me.Txt
  loc_14B430D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14B4329: var_86 = 0
  loc_14B4337: Me.Requery -1
  loc_14B4361: Me.Find "SearchCode ='" & var_A8.Text & "'", 0, 1
  loc_14B4371: Set var_A4 = Me.TopCtrl1
  loc_14B4377: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_14B4390: If (CStr(var_86) = "Add") Then
  loc_14B4393:   Call TopCtrl1_UnknownEvent_A()
  loc_14B4398:   Exit Sub
  loc_14B4399: End If
  loc_14B43BC: Call Proc_289_59_FD1954(Proc_5_1_100CB50("INI", Me), global_68)
  loc_14B43C7: Call Proc_289_58_14850AC(var_130)
  loc_14B43D1: Set var_8C = Nothing
  loc_14B43D4: Exit Sub
  loc_14B43D5: ' Referenced from: 14B3768
  loc_14B43DB: If (var_86 = &HFF) Then
  loc_14B43E4:   unk_4F943C.RollbackTrans
  loc_14B43E9: End If
  loc_14B43E9: Proc_6_60_E62BC4()
  loc_14B43EE: Exit Sub
End Sub

Private Sub Form_Load() '12AA244
  'Data Table: 4F9424
  Dim var_94 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_C4 As String
  Dim Me As Recordset15
  Dim var_114 As TextBox
  Dim var_C0 As Variant
  Dim var_110 As DataGrid
  Dim var_A8 As Label
  loc_12A9C30: On Error Goto loc_12AA23B
  loc_12A9C3D: Set var_A8 = Me.TopCtrl1
  loc_12A9C43: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_12A9C51: Call 0.Method_arg_50 (var_AC)
  loc_12A9C61: Set var_A8 = Me.TopCtrl1
  loc_12A9C67: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_AC))
  loc_12A9C7E: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_12A9C8F: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_12A9CA0: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_12A9CB1: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_12A9CC2: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_12A9CD3: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_12A9CE4: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_12A9CF5: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_12A9D06: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_12A9D17: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_12A9D31: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_12A9D3F: Set var_A8 = MemVar_1F92044
  loc_12A9D4E: Call 0.Method_Form_Load8 (var_A8)
  loc_12A9D64: Me.TopCtrl1.Clone
  loc_12A9D7E: Call 0.Method_Form_LoadC (var_A8, -1)
  loc_12A9D98: Me.Recordset20.Clone
  loc_12A9DA3: Set var_C0 = var_A8
  loc_12A9DB2: Call 0.Method_arg_50 (var_C0, -1)
  loc_12A9DC8: Set global_68 = New 
  loc_12A9DDA: Me.Recordset15.CursorLocation = 3
  loc_12A9DE9: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_12A9E11:   var_C4 = "Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From Ledger where V_PREFIX='" & MemVar_1F9212C & "' And V_Type In ('MCRV','MBRV') And LOGSITE_CODE='"
  loc_12A9E1F:   var_BC = CVar(var_C4 & MemVar_1F92078 & "' Order by V_Type,V_No") 'String
  loc_12A9E29:   Me.Open var_BC, CVar(MemVar_1F92044), 2
  loc_12A9E3D: Else
  loc_12A9E48:   Proc_6_7_F25D88(var_BC, MemVar_1F920EC, 3)
  loc_12A9E6B:   var_AC = "Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From Ledger where V_Type In ('MCRV','MBRV') And LOGSITE_CODE='" & MemVar_1F92078
  loc_12A9E8C:   Me.Open CVar(var_AC & "' AND V_date=") & var_BC & " Order by V_Type,V_No", CVar(MemVar_1F92044), 2
  loc_12A9E9F: End If
  loc_12A9EBE: Me.Recordset15.CursorLocation = 3
  loc_12A9EE8: var_BC = CVar("Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_12A9EF5: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_12A9F0C: CVarUnk
  loc_12A9F11: VerifyVarObj
  loc_12A9F1D: LateIdStAd
  loc_12A9F39: Set var_110 = Me.Txt
  loc_12A9F3F: Call 0.Method_Form_Load0 (CInt(5), var_114, var_118, Me.DGAgAc, New, 3)
  loc_12A9F47: -1 = var_114.Height
  loc_12A9F5A: Set var_A8 = Me.Txt
  loc_12A9F60: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_10C, 3)
  loc_12A9F68: -1 = var_C0.Top
  loc_12A9F74: var_94 = CVar((var_10C + var_118)) 'Single
  loc_12A9F83: Me.DGAgAc.Top = CVar(MemVar_1F92044)
  loc_12A9FA3: Set var_A8 = Me.Txt
  loc_12A9FA9: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_10C)
  loc_12A9FB1: -1 = var_C0.Left
  loc_12A9FC2: Set var_110 = Me.DGAgAc
  loc_12A9FC8: var_110.Left = CVar(var_10C)
  loc_12A9FF5: Me.var_110.CursorLocation = 3
  loc_12AA01F: var_BC = CVar("Select SubCode as SearchCode,Name,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_12AA02C: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_12AA043: CVarUnk
  loc_12AA048: VerifyVarObj
  loc_12AA04E: Set var_A8 = Me.DGCrAc
  loc_12AA054: LateIdStAd
  loc_12AA085: Call Proc_289_59_FD1954(Proc_5_1_100CB50("INI", Me, global_68, Me, New), 3, -1)
  loc_12AA09F: Me.LblUser.Left = CDbl(500)
  loc_12AA0B6: Me.LblUser.Top = CDbl(7800)
  loc_12AA0CD: Me.LblLDt.Top = CDbl(8160)
  loc_12AA0DE: Set var_A8 = Me.LblLDt
  loc_12AA0E4: var_A8.Left = CDbl(500)
  loc_12AA0F3: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), var_A8)
  loc_12AA105: Set var_A8 = Me.FrDebit
  loc_12AA10B: Call 0.Method_Form_Load0 (0, var_C0)
  loc_12AA113: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_12AA12C: Set var_A8 = Me.FrDebit
  loc_12AA132: Call 0.Method_Form_Load0 (1, var_C0)
  loc_12AA13A: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_12AA153: Set var_A8 = Me.FrDebit
  loc_12AA159: Call 0.Method_Form_Load0 (2, var_C0)
  loc_12AA161: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_12AA17A: Set var_A8 = Me.FrDebit
  loc_12AA180: Call 0.Method_Form_Load0 (3, var_C0)
  loc_12AA188: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_12AA1A1: Set var_A8 = Me.FrDebit
  loc_12AA1A7: Call 0.Method_Form_Load0 (4, var_C0)
  loc_12AA1AF: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_12AA1C8: Set var_A8 = Me.FrDebit
  loc_12AA1CE: Call 0.Method_Form_Load0 (5, var_C0)
  loc_12AA1D6: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_12AA1EF: Set var_A8 = Me.FrDebit
  loc_12AA1F5: Call 0.Method_Form_Load0 (6, var_C0)
  loc_12AA1FD: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_12AA21C: Call 0.Method_Form_Load0 (7, var_C0)
  loc_12AA224: var_C0.BackColor = CLng(MemVar_1F921B0)
  loc_12AA230: Call Proc_289_57_1050B68(Me.FrDebit)
  loc_12AA235: Call Proc_289_58_14850AC()
  loc_12AA23A: Exit Sub
  loc_12AA23B: ' Referenced from: 12A9C30
  loc_12AA23B: Proc_6_60_E62BC4()
  loc_12AA240: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E418E4
  'Data Table: 4F9424
  loc_E418BF: Set global_68 = Nothing
  loc_E418CB: MasterFormExit = 0
  loc_E418D9: Set global_100 = Nothing
  loc_E418E0: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2425C
  'Data Table: 4F9424
  Dim var_53A8 As Long
  loc_E24241: If (MasterFormExit = &HFF) Then
  loc_E24251:   Me.Global.Unload Me
  loc_E24259: End If
  loc_E24259: Exit Sub
  loc_E2425A: var_53A8 = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B3F8
  'Data Table: 4F9424
  loc_E2B3CC: On Error Goto loc_E2B3F0
  loc_E2B3E7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2B3EF: Exit Sub
  loc_E2B3F0: ' Referenced from: E2B3CC
  loc_E2B3F0: Proc_6_60_E62BC4(Shift)
  loc_E2B3F5: Exit Sub
  loc_E2B3F6: CExtInstUnk
End Sub

Private Sub DGAgAc_UnknownEvent_9 'EEC398
  'Data Table: 4F9424
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEC2E1: Set var_A8 = Me.DGAgAc
  loc_EEC2E7: var_A8.Visible = False
  loc_EEC309: If (Me.var_A8.RecordCount > 0) Then
  loc_EEC32C:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEC34B:   Set var_B4 = Me.Txt
  loc_EEC351:   Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_EEC359:   var_B8.Text = CStr(var_B0.Value)
  loc_EEC36F: End If
  loc_EEC37A: Set var_A8 = Me.Txt
  loc_EEC380: Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5))
  loc_EEC388: var_B0.SetFocus
  loc_EEC394: Exit Sub
End Sub

Private Sub DGCrAc_UnknownEvent_9 'EEEA08
  'Data Table: 4F9424
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEE94D: Set var_A8 = Me.DGCrAc
  loc_EEE953: var_A8.Visible = False
  loc_EEE975: If (Me.var_A8.RecordCount > 0) Then
  loc_EEE998:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEE9B9:   Set var_B4 = Me.TxtCrAc
  loc_EEE9BF:   Call 0.Method_DGCrAc_UnknownEvent_90 (global_64, var_B8)
  loc_EEE9C7:   var_B8.Text = CStr(var_B0.Value)
  loc_EEE9DD: End If
  loc_EEE9EA: Set var_A8 = Me.TxtCrAc
  loc_EEE9F0: Call 0.Method_DGCrAc_UnknownEvent_90 (global_64)
  loc_EEE9F8: var_B0.SetFocus
  loc_EEEA04: Exit Sub
End Sub

Private Sub TxtAmtCr_GotFocus(Index As Integer) 'F82824
  'Data Table: 4F9424
  Dim var_98 As TextBox
  Dim var_90 As Double
  Dim var_9C As String
  loc_F826E2: Set var_94 = Me.Txt
  loc_F826E8: Call 0.Method_TxtAmtCr_GotFocus0 (CInt(3), var_98)
  loc_F826F0: var_9C = var_98.Text
  loc_F826FD: var_90 = Val(var_9C)
  loc_F82715: For var_A0 = 0 To (Index - 1): var_86 = var_A0 'Integer
  loc_F82728:   Set var_94 = Me.TxtAmtCr
  loc_F8272E:   Call 0.Method_TxtAmtCr_GotFocus0 (var_86, var_98, var_9C)
  loc_F82736:   0 = var_98.Text
  loc_F8274D:   var_90 = (var_90 - Val(var_9C))
  loc_F8275D: Next var_A0 'Integer
  loc_F8276F: Set var_94 = Me.TxtAmtCr
  loc_F82775: Call 0.Method_TxtAmtCr_GotFocus0 (Index, var_98)
  loc_F82799: If (CDbl(Val(var_98.Text)) = CDbl(0)) Then
  loc_F827D2:   Set var_94 = Me.TxtAmtCr
  loc_F827D8:   Call 0.Method_TxtAmtCr_GotFocus0 (Index, var_98, CStr(Format(var_90, "0.00")))
  loc_F827E0:   var_98.Text = 1
  loc_F827F6: End If
  loc_F82800: Set var_94 = Me.TxtAmtCr
  loc_F82806: Call 0.Method_TxtAmtCr_GotFocus0 (Index, var_98)
  loc_F82814: Proc_6_74_E226B0(var_98)
  loc_F82820: Exit Sub
End Sub

Private Sub TxtAmtCr_KeyDown(KeyCode As Integer, Shift As Integer) 'EFC98C
  'Data Table: 4F9424
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  loc_EFC8C8: If (CLng(Shift) = &H1B) Then
  loc_EFC8CB:   Call Proc_289_60_EF3078(Shift)
  loc_EFC8D0:   Exit Sub
  loc_EFC8D1: End If
  loc_EFC8DE: Set var_8C = Me.TxtAmtCr
  loc_EFC8E4: Call 0.Method_TxtAmtCr_KeyDown0 (KeyCode, var_90)
  loc_EFC8FF: Set var_98 = Me.TxtAmtCr
  loc_EFC905: Call 0.Method_TxtAmtCr_KeyDown0 (KeyCode, var_9C)
  loc_EFC90D: var_9C.SelLength = Len(var_90.Text)
  loc_EFC935: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EFC93E:   Proc_6_75_E527CC(Shift)
  loc_EFC943: End If
  loc_EFC958: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EFC961:   Proc_6_76_E52838(Shift, arg_14)
  loc_EFC966: End If
  loc_EFC97B: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EFC984:   Proc_6_75_E527CC(Shift, arg_14)
  loc_EFC989: End If
  loc_EFC989: Exit Sub
End Sub

Private Sub TxtAmtCr_KeyPress(KeyAscii As Integer) 'E6B364
  'Data Table: 4F9424
  Dim arg_10 As Integer
  loc_E6B317: Proc_6_58_E054C0(arg_10)
  loc_E6B322: If (arg_10 = &H2D) Then
  loc_E6B327:   arg_10 = 0
  loc_E6B32A: End If
  loc_E6B334: Set var_88 = Me.TxtAmtCr
  loc_E6B33A: Call 0.Method_TxtAmtCr_KeyPress0 (KeyAscii, var_8C)
  loc_E6B355: Proc_6_42_129A86C(var_8C, arg_10, 7)
  loc_E6B361: Exit Sub
  loc_E6B362: BranchFVar -21249
End Sub

Private Sub TxtAmtCr_LostFocus(Index As Integer) 'E4C9A4
  'Data Table: 4F9424
  loc_E4C982: Set var_88 = Me.TxtAmtCr
  loc_E4C988: Call 0.Method_TxtAmtCr_LostFocus0 (Index)
  loc_E4C996: Proc_6_73_E22704(var_8C)
  loc_E4C9A2: Exit Sub
End Sub

Private Sub TxtAmtCr_Validate(Cancel As Boolean) 'F8CD68
  'Data Table: 4F9424
  Dim var_E4 As String
  Dim var_E0 As TextBox
  Dim var_98 As Variant
  Dim var_90 As Double
  loc_F8CC1E: Set var_94 = Me.TxtAmtCr
  loc_F8CC24: Call 0.Method_TxtAmtCr_Validate0 (Cancel)
  loc_F8CC50: var_E4 = CStr(Format(CVar(var_98), "0.00"))
  loc_F8CC5E: Set var_DC = Me.TxtAmtCr
  loc_F8CC64: Call 0.Method_TxtAmtCr_Validate0 (Cancel, var_E0, var_E4)
  loc_F8CC6C: var_E0.Text = 1
  loc_F8CC94: Set var_94 = Me.Txt
  loc_F8CC9A: Call 0.Method_TxtAmtCr_Validate0 (CInt(3), var_98, var_E4)
  loc_F8CCA2: 1 = var_98.Text
  loc_F8CCAF: var_90 = Val(var_E4)
  loc_F8CCC4: For var_E8 = 0 To Cancel: var_86 = var_E8 'Integer
  loc_F8CCD7:   Set var_94 = Me.TxtAmtCr
  loc_F8CCDD:   Call 0.Method_TxtAmtCr_Validate0 (var_86, var_98, var_E4)
  loc_F8CCE5:   0 = var_98.Text
  loc_F8CCFC:   var_90 = (var_90 - Val(var_E4))
  loc_F8CD0C: Next var_E8 'Integer
  loc_F8CD22: Set var_94 = Me.FrDebit
  loc_F8CD28: Call 0.Method_TxtAmtCr_ValidateC (var_F2, Cancel)
  loc_F8CD38: If ( And ((var_90 > CDbl(0)) < (var_F2 - 1))) Then
  loc_F8CD4A:   Set var_94 = Me.FrDebit
  loc_F8CD50:   Call 0.Method_TxtAmtCr_Validate0 ((Cancel + 1), var_98)
  loc_F8CD58:   var_98.Visible = True
  loc_F8CD64: End If
  loc_F8CD64: Exit Sub
  loc_F8CD66: Get , ,  'get LBound(, ) bytes
End Sub

Private Sub TxtCrAc_GotFocus(Index As Integer) '10EFD20
  'Data Table: 4F9424
  Dim var_98 As Variant
  Dim var_A4 As TextBox
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_A0 As DataGrid
  Dim var_90 As Fields15
  loc_10EFA22: Set var_88 = Me.TxtCrAc
  loc_10EFA28: Call 0.Method_TxtCrAc_GotFocus0 (Index)
  loc_10EFA36: Proc_6_74_E226B0(var_8C)
  loc_10EFA4B: Call Proc_289_60_EF3078(Index)
  loc_10EFA5D: Set var_90 = Me.TxtCrAc
  loc_10EFA63: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_98)
  loc_10EFA7D: Set var_A0 = Me.TxtCrAc
  loc_10EFA83: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_A4)
  loc_10EFA9D: Set var_88 = Me.FrDebit
  loc_10EFAA3: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C)
  loc_10EFABF: var_B8 = CVar((((var_8C.Top + var_98.Top) + var_A4.Height) + CDbl(&HF))) 'Single
  loc_10EFACE: Me.DGCrAc.Top = var_B8
  loc_10EFAF1: Set var_90 = Me.TxtCrAc
  loc_10EFAF7: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_98)
  loc_10EFB11: Set var_88 = Me.FrDebit
  loc_10EFB17: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C)
  loc_10EFB2B: var_B8 = CVar((var_8C.Left + var_98.Left)) 'Single
  loc_10EFB34: Set var_A0 = Me.DGCrAc
  loc_10EFB3A: var_A0.Left = var_B8
  loc_10EFB66: If (Me.var_A0.RecordCount > 0) Then
  loc_10EFB74:   Set var_8C = Me.FGPoint
  loc_10EFB90:   Proc_6_137_1193554(Me.DGCrAc, global_72, Index)
  loc_10EFB9E: End If
  loc_10EFBF5: Set var_88 = Me.TxtCrAc
  loc_10EFBFB: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C, var_D4)
  loc_10EFC03: ((global_72.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_10EFC1B: If (var_8C Or (var_D4 = vbNullString)) Then
  loc_10EFC2B:   Set var_88 = Me.TxtCrAc
  loc_10EFC31:   Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C)
  loc_10EFC39:   var_8C.Tag = vbNullString
  loc_10EFC45:   Exit Sub
  loc_10EFC46: End If
  loc_10EFC53: Set var_88 = Me.TxtCrAc
  loc_10EFC59: Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C)
  loc_10EFC61: var_D4 = var_8C.Text
  loc_10EFC73: var_B8 = "Name"
  loc_10EFCB1: If CBool(CVar(var_D4) <> Me.Recordset15.Fields.Item(var_B8).Value) Then
  loc_10EFCBD:   Me.Recordset15.MoveFirst
  loc_10EFCE0:   Set var_88 = Me.TxtCrAc
  loc_10EFCE6:   Call 0.Method_TxtCrAc_GotFocus0 (Index, var_8C, var_D4, "Name='")
  loc_10EFCEE:   0 = var_8C.Text
  loc_10EFD0A:   Me.Recordset15.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_10EFD1F: End If
  loc_10EFD1F: Exit Sub
End Sub

Private Sub TxtCrAc_KeyDown(KeyCode As Integer, Shift As Integer) 'FC6C8C
  'Data Table: 4F9424
  Dim var_86 As Integer
  loc_FC6AE7: var_86 = Shift
  loc_FC6AF4: If (CLng(Shift) = &H1B) Then
  loc_FC6AF7:   Call Proc_289_60_EF3078(var_86)
  loc_FC6AFC:   Exit Sub
  loc_FC6AFD: End If
  loc_FC6B1A: Set var_9C = Me.FGPoint
  loc_FC6B25: Set var_98 = Nothing
  loc_FC6B57: Proc_6_69_134A198(Me.DGCrAc, Me.TxtCrAc, KeyCode, global_72, Shift)
  loc_FC6BC9: If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_FC6BD0:   Set var_98 = Me.DGCrAc
  loc_FC6BF3:   Proc_6_138_106D6F8(var_98, global_72, KeyCode, Me.FGPoint, 0)
  loc_FC6C01: End If
  loc_FC6C1D: If (CBool(Me.DGCrAc.Visible) = 0) Then
  loc_FC6C35:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC6C3E:     Proc_6_75_E527CC(Shift, arg_14, 1)
  loc_FC6C43:   End If
  loc_FC6C58:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FC6C61:     Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_FC6C66:   End If
  loc_FC6C7B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC6C84:     Proc_6_75_E527CC(Shift, arg_14)
  loc_FC6C89:   End If
  loc_FC6C89: End If
  loc_FC6C89: Exit Sub
End Sub

Private Sub TxtCrAc_KeyPress(KeyAscii As Integer) 'EC5230
  'Data Table: 4F9424
  loc_EC5197: Proc_6_58_E054C0(arg_10)
  loc_EC51B8: If (CBool(Me.DGCrAc.Visible) = &HFF) Then
  loc_EC51CA:   var_9C = "Name"
  loc_EC51E9:   Proc_6_89_146F1AC(Me.TxtCrAc, KeyAscii, global_72)
  loc_EC521F:   Proc_6_138_106D6F8(Me.DGCrAc, global_72, KeyAscii, Me.FGPoint)
  loc_EC522D: End If
  loc_EC522D: Exit Sub
End Sub

Private Sub TxtCrAc_LostFocus(Index As Integer) 'E4B9CC
  'Data Table: 4F9424
  loc_E4B9AA: Set var_88 = Me.TxtCrAc
  loc_E4B9B0: Call 0.Method_TxtCrAc_LostFocus0 (Index)
  loc_E4B9BE: Proc_6_73_E22704(var_8C)
  loc_E4B9CA: Exit Sub
End Sub

Private Sub TxtCrAc_Validate(Cancel As Boolean) 'FD722C
  'Data Table: 4F9424
  Dim var_94 As Variant
  Dim var_90 As Fields15
  Dim var_B0 As TextBox
  loc_FD70B3: Set var_90 = Me.TxtCrAc
  loc_FD70B9: Call 0.Method_TxtCrAc_Validate0 (Cancel, var_94)
  loc_FD70D9: If (((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_FD70E9:   Set var_90 = Me.TxtCrAc
  loc_FD70EF:   Call 0.Method_TxtCrAc_Validate0 (Cancel, var_94)
  loc_FD70F7:   var_94.Tag = vbNullString
  loc_FD7103:   Exit Sub
  loc_FD7104: End If
  loc_FD7142: Set var_AC = Me.TxtCrAc
  loc_FD7148: Call 0.Method_TxtCrAc_Validate0 (Cancel, var_B0)
  loc_FD7150: var_B0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_FD71A4: Set var_AC = Me.TxtCrAc
  loc_FD71AA: Call 0.Method_TxtCrAc_Validate0 (Cancel, var_B0)
  loc_FD71B2: var_B0.Tag = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_FD7206: Set var_AC = Me.TxtCardNo
  loc_FD720C: Call 0.Method_TxtCrAc_Validate0 (Cancel, var_B0)
  loc_FD7214: var_B0.Text = CStr(Me.Recordset15.Fields.Item("CardNo").Value)
  loc_FD722A: Exit Sub
End Sub

Private Sub TxtRem_GotFocus(Index As Integer) 'E4AB2C
  'Data Table: 4F9424
  loc_E4AB0A: Set var_88 = Me.TxtRem
  loc_E4AB10: Call 0.Method_TxtRem_GotFocus0 (Index)
  loc_E4AB1E: Proc_6_74_E226B0(var_8C)
  loc_E4AB2A: Exit Sub
End Sub

Private Sub TxtRem_KeyDown(KeyCode As Integer, Shift As Integer) 'F7A0AC
  'Data Table: 4F9424
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  loc_F79F78: If (CLng(Shift) = &H1B) Then
  loc_F79F7B:   Call Proc_289_60_EF3078(Shift)
  loc_F79F80:   Exit Sub
  loc_F79F81: End If
  loc_F79F8B: If (CLng(Shift) = &H2D) Then
  loc_F79F9B:   Set var_8C = Me.TxtRem
  loc_F79FA1:   Call 0.Method_TxtRem_KeyDown0 (KeyCode, var_90)
  loc_F79FB4:   Call Proc_289_63_EE49B8(var_94)
  loc_F79FCA:   Set var_9C = Me.Txt
  loc_F79FD0:   Call 0.Method_TxtRem_KeyDown0 (KeyCode, var_A0)
  loc_F79FD8:   var_A0.Text = var_90.Text & var_94
  loc_F79FFE:   Set var_8C = Me.TxtRem
  loc_F7A004:   Call 0.Method_TxtRem_KeyDown0 (KeyCode, var_90)
  loc_F7A01F:   Set var_9C = Me.TxtRem
  loc_F7A025:   Call 0.Method_TxtRem_KeyDown0 (KeyCode, var_A0)
  loc_F7A02D:   var_A0.SelStart = Len(var_90.Text)
  loc_F7A040:   Exit Sub
  loc_F7A041: End If
  loc_F7A056: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F7A05F:   Proc_6_75_E527CC(Shift)
  loc_F7A064: End If
  loc_F7A079: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F7A082:   Proc_6_76_E52838(Shift, arg_14)
  loc_F7A087: End If
  loc_F7A09C: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F7A0A5:   Proc_6_75_E527CC(Shift, arg_14)
  loc_F7A0AA: End If
  loc_F7A0AA: Exit Sub
End Sub

Private Sub TxtRem_KeyPress(KeyAscii As Integer) 'E00AA0
  'Data Table: 4F9424
  loc_E00A97: Proc_6_58_E054C0(arg_10)
  loc_E00A9C: Exit Sub
End Sub

Private Sub TxtRem_LostFocus(Index As Integer) 'E4AC64
  'Data Table: 4F9424
  loc_E4AC42: Set var_88 = Me.TxtRem
  loc_E4AC48: Call 0.Method_TxtRem_LostFocus0 (Index)
  loc_E4AC56: Proc_6_73_E22704(var_8C)
  loc_E4AC62: Exit Sub
End Sub

Private Sub TxtCardNo_GotFocus(Index As Integer) 'E4BA9C
  'Data Table: 4F9424
  loc_E4BA7A: Set var_88 = Me.TxtCardNo
  loc_E4BA80: Call 0.Method_TxtCardNo_GotFocus0 (Index)
  loc_E4BA8E: Proc_6_74_E226B0(var_8C)
  loc_E4BA9A: Exit Sub
End Sub

Private Sub TxtCardNo_KeyDown(KeyCode As Integer, Shift As Integer) 'E8EF28
  'Data Table: 4F9424
  loc_E8EEB4: If (CLng(Shift) = &H1B) Then
  loc_E8EEB7:   Call Proc_289_60_EF3078(Shift)
  loc_E8EEBC:   Exit Sub
  loc_E8EEBD: End If
  loc_E8EED2: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E8EEDB:   Proc_6_75_E527CC(Shift)
  loc_E8EEE0: End If
  loc_E8EEF5: If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_E8EEFE:   Proc_6_76_E52838(Shift, arg_14)
  loc_E8EF03: End If
  loc_E8EF18: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E8EF21:   Proc_6_75_E527CC(Shift, arg_14)
  loc_E8EF26: End If
  loc_E8EF26: Exit Sub
End Sub

Private Sub TxtCardNo_LostFocus(Index As Integer) 'E4DC54
  'Data Table: 4F9424
  loc_E4DC32: Set var_88 = Me.TxtCardNo
  loc_E4DC38: Call 0.Method_TxtCardNo_LostFocus0 (Index)
  loc_E4DC46: Proc_6_73_E22704(var_8C)
  loc_E4DC52: Exit Sub
End Sub

Private Sub TxtCardNo_Validate(Cancel As Boolean) '111AF94
  'Data Table: 4F9424
  Dim var_B8 As String
  Dim var_B4 As TextBox
  Dim var_8C As Variant
  Dim var_D4 As String
  Dim var_88 As Fields15
  loc_111AC4A: Set var_88 = Me.TxtCardNo
  loc_111AC50: Call 0.Method_TxtCardNo_Validate0 (Cancel)
  loc_111AC75: Set var_B0 = Me.TxtCardNo
  loc_111AC7B: Call 0.Method_TxtCardNo_Validate0 (Cancel, var_B4)
  loc_111AC83: var_B4.Text = CStr(Trim(CVar(var_8C)))
  loc_111ACA8: Set var_88 = Me.TxtCardNo
  loc_111ACAE: Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111ACCD: If (var_8C.Text = vbNullString) Then
  loc_111ACD0:   Exit Sub
  loc_111ACD1: End If
  loc_111ACEB: If (global_72.RecordCount > 0) Then
  loc_111ACF7:   Me.Recordset15.MoveFirst
  loc_111AD09:   Set var_88 = Me.TxtCardNo
  loc_111AD0F:   Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111AD17:   var_B8 = var_8C.Text
  loc_111AD2E:   If (var_B8 <> vbNullString) Then
  loc_111AD4F:     Set var_88 = Me.TxtCardNo
  loc_111AD55:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C, var_B8, "CardNo='")
  loc_111AD5D:     0 = var_8C.Text
  loc_111AD79:     Me.Recordset15.Find 1 & var_B8 & "'", var_D4, var_8C
  loc_111AD8E:   End If
  loc_111ADCA:   Set var_88 = Me.TxtCardNo
  loc_111ADD0:   Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111ADF0:   If (((global_72.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF)) Or (var_8C.Text = vbNullString)) Then
  loc_111AE00:     Set var_88 = Me.TxtCrAc
  loc_111AE06:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111AE0E:     var_8C.Text = vbNullString
  loc_111AE27:     Set var_88 = Me.TxtCrAc
  loc_111AE2D:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111AE35:     var_8C.Tag = vbNullString
  loc_111AE4E:     Set var_88 = Me.TxtCardNo
  loc_111AE54:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_8C)
  loc_111AE5C:     var_8C.Text = vbNullString
  loc_111AE6B:   Else
  loc_111AEA9:     Set var_B0 = Me.TxtCrAc
  loc_111AEAF:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_B4)
  loc_111AEB7:     var_B4.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_111AF0B:     Set var_B0 = Me.TxtCrAc
  loc_111AF11:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_B4)
  loc_111AF19:     var_B4.Tag = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_111AF6D:     Set var_B0 = Me.TxtCardNo
  loc_111AF73:     Call 0.Method_TxtCardNo_Validate0 (Cancel, var_B4)
  loc_111AF7B:     var_B4.Text = CStr(Me.Recordset15.Fields.Item("CardNo").Value)
  loc_111AF91:   End If
  loc_111AF91: End If
  loc_111AF91: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E52B24
  'Data Table: 4F9424
  loc_E52AFE: Set var_88 = Me.txtM
  loc_E52B04: Call 0.Method_txtM_UnknownEvent_00 (Cancel)
  loc_E52B12: Proc_6_74_E226B0(var_8C)
  loc_E52B1E: Call Proc_289_60_EF3078(var_8C)
  loc_E52B23: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E49DC4
  'Data Table: 4F9424
  loc_E49DA2: Set var_88 = Me.txtM
  loc_E49DA8: Call 0.Method_txtM_UnknownEvent_10 (Cancel)
  loc_E49DB6: Proc_6_73_E22704(var_8C)
  loc_E49DC2: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E54CF8
  'Data Table: 4F9424
  Dim arg_10 As Integer
  loc_E54CCE: Set var_88 = Me.txtM
  loc_E54CD4: Call 0.Method_txtM_UnknownEvent_80 (Cancel)
  loc_E54CEE: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E54CF3:   arg_10 = &HFF
  loc_E54CF6: End If
  loc_E54CF6: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E625BC
  'Data Table: 4F9424
  loc_E62576: If (CLng(arg_10) = &H1B) Then
  loc_E62579:   Call Proc_289_60_EF3078()
  loc_E6257E:   Exit Sub
  loc_E6257F: End If
  loc_E62594: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E6259D:   Proc_6_75_E527CC(arg_10)
  loc_E625A2: End If
  loc_E625AC: If (CLng(arg_10) = &H26) Then
  loc_E625B5:   Proc_6_76_E52838(arg_10, arg_14)
  loc_E625BA: End If
  loc_E625BA: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1118B10
  'Data Table: 4F9424
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B4 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  loc_11187DE: Set var_88 = Me.Txt
  loc_11187E4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11187F2: Proc_6_74_E226B0(var_8C)
  loc_11187FE: Call Proc_289_60_EF3078(var_8C)
  loc_1118806: var_92 = Index
  loc_1118811: If Not (var_92 = CInt(2)) Then
  loc_111881C:   If (var_92 = CInt(3)) Then
  loc_111881F:   End If
  loc_1118827:   var_98 = "{Home}+{End}"
  loc_111882D:   Proc_303_0_FB9B68(var_98, 0)
  loc_1118838: Else
  loc_1118840:   If (var_92 = CInt(5)) Then
  loc_111885D:     If (Me.Recordset15.RecordCount > 0) Then
  loc_111886B:       Set var_8C = Me.FGPoint
  loc_1118887:       Proc_6_137_1193554(Me.DGAgAc, global_76, Index)
  loc_1118895:     End If
  loc_11188EC:     Set var_88 = Me.Txt
  loc_11188F2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_11188FA:     ((global_76.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_1118912:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_1118922:       Set var_88 = Me.Txt
  loc_1118928:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1118930:       var_8C.Tag = vbNullString
  loc_111893C:       Exit Sub
  loc_111893D:     End If
  loc_111894A:     Set var_88 = Me.Txt
  loc_1118950:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1118958:     var_98 = var_8C.Text
  loc_111896A:     var_B4 = "Name"
  loc_11189A8:     If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_11189B4:       Me.Recordset15.MoveFirst
  loc_11189D7:       Set var_88 = Me.Txt
  loc_11189DD:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name='")
  loc_11189E5:       0 = var_8C.Text
  loc_1118A01:       Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_92
  loc_1118A16:     End If
  loc_1118A19:   Else
  loc_1118A21:     If (var_92 = CInt(6)) Then
  loc_1118A31:       ReDim var_F4(0 To 1)
  loc_1118A48:       var_F4(0) = "Cash Rect."
  loc_1118A57:       var_F4(1) = "Bank Rect."
  loc_1118A6E:       global_80 = Array(var_F4)
  loc_1118A79:       Set var_B8 = Me.ListView
  loc_1118A94:       Set var_8C = Me.Txt
  loc_1118AAE:       Set global_96 = Proc_6_66_EFF8FC(var_B8, var_8C, Index)
  loc_1118ACC:       Set var_88 = Me.Txt
  loc_1118AD2:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1118ADA:       global_80 = var_8C.Text
  loc_1118AEC:       Set var_90 = Me.Txt
  loc_1118AF2:       Call 0.Method_Txt_GotFocus0 (Index, var_B8, var_98)
  loc_1118AFA:       var_B8.Tag = 2
  loc_1118B0D:     End If
  loc_1118B0D:   End If
  loc_1118B0D: End If
  loc_1118B0D: Exit Sub
  loc_1118B0E: Loop Until Not global_80 'do at: 11133D4
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11BF1F4
  'Data Table: 4F9424
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As Frame
  loc_11BEDCF: var_86 = Shift
  loc_11BEDDC: If (CLng(Shift) = &H1B) Then
  loc_11BEDDF:   Call Proc_289_60_EF3078(var_86)
  loc_11BEDE4:   Exit Sub
  loc_11BEDE5: End If
  loc_11BEDE8: var_88 = KeyCode
  loc_11BEDF3: If (var_88 = CInt(3)) Then
  loc_11BEE03:   Set var_8C = Me.Txt
  loc_11BEE09:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11BEE11:   var_94 = var_90.Text
  loc_11BEE24:   Set var_98 = Me.Txt
  loc_11BEE2A:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11BEE32:   var_9C.SelLength = Len(var_94)
  loc_11BEE48: Else
  loc_11BEE50:   If (var_88 = CInt(5)) Then
  loc_11BEE5E:     Set var_AC = Me.Txt
  loc_11BEE70:     Set var_9C = Me.FGPoint
  loc_11BEE7B:     Set var_98 = Nothing
  loc_11BEEAD:     Proc_6_69_134A198(Me.DGAgAc, var_AC, KeyCode, global_76, Shift, 0)
  loc_11BEECF:     var_B4 = Me.FGPoint.RecordCount
  loc_11BEF1F:     If ((var_B4 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11BEF26:       Set var_98 = Me.DGAgAc
  loc_11BEF2D:       Set var_90 = Me.FGPoint
  loc_11BEF49:       Proc_6_138_106D6F8(var_98, global_76, KeyCode, var_90, 1)
  loc_11BEF57:     End If
  loc_11BEF5A:   Else
  loc_11BEF62:     If (var_88 = CInt(6)) Then
  loc_11BEF87:       Set var_8C = Me.Txt
  loc_11BEF8D:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, var_98)
  loc_11BEF95:       var_9C = var_90.Left
  loc_11BEFA7:       Set var_98 = Me.Txt
  loc_11BEFAD:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_11BEFB5:       0 = var_9C.Top
  loc_11BEFC7:       Set var_A8 = Me.Txt
  loc_11BEFCD:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_11BEFD5:       var_BC = var_AC.Height
  loc_11BEFE7:       Set var_B0 = Me.Txt
  loc_11BEFED:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11BEFF5:       var_C4 = var_C0.Width
  loc_11BF03D:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11BF064:     Else
  loc_11BF06C:       If (var_88 = CInt(4)) Then
  loc_11BF079:         If (CLng(Shift) = &H2D) Then
  loc_11BF089:           Set var_8C = Me.Txt
  loc_11BF08F:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E4, CInt(var_B4))
  loc_11BF097:           CInt((var_B8 + var_BC)) = var_90.Text
  loc_11BF0A2:           Call Proc_289_63_EE49B8(var_94, var_E4, CInt(var_C4))
  loc_11BF0B8:           Set var_98 = Me.Txt
  loc_11BF0BE:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11BF0C6:           var_9C.Text = 680 & var_94
  loc_11BF0EC:           Set var_8C = Me.Txt
  loc_11BF0F2:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11BF10D:           Set var_98 = Me.Txt
  loc_11BF113:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11BF11B:           var_9C.SelStart = Len(var_90.Text)
  loc_11BF12E:           Exit Sub
  loc_11BF12F:         End If
  loc_11BF12F:       End If
  loc_11BF12F:     End If
  loc_11BF12F:   End If
  loc_11BF12F: End If
  loc_11BF185: If (((CBool(Me.DGCrAc.Visible) = 0) And (CBool(Me.DGAgAc.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_11BF19D:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11BF1A6:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11BF1AB:   End If
  loc_11BF1C0:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11BF1C9:     Proc_6_76_E52838(Shift, arg_14)
  loc_11BF1CE:   End If
  loc_11BF1E3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11BF1EC:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11BF1F1:   End If
  loc_11BF1F1: End If
  loc_11BF1F1: Exit Sub
  loc_11BF1F2: Set var_5394 = var_88
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F756A4
  'Data Table: 4F9424
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_8C As DataGrid
  loc_F75563: Proc_6_58_E054C0(arg_10)
  loc_F7556B: var_86 = KeyAscii
  loc_F75576: If (var_86 = CInt(1)) Then
  loc_F75583:   Set var_8C = Me.Txt
  loc_F75589:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F755A4:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_F755B3: Else
  loc_F755BB:   If (var_86 = CInt(3)) Then
  loc_F755C4:     If (arg_10 = &H2D) Then
  loc_F755C9:       arg_10 = 0
  loc_F755CC:     End If
  loc_F755D6:     Set var_8C = Me.Txt
  loc_F755DC:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, arg_10)
  loc_F755F7:     Proc_6_42_129A86C(var_90, arg_10, 7)
  loc_F75606:   Else
  loc_F7560E:     If (var_86 = CInt(5)) Then
  loc_F7562D:       If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_F7565E:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_F75694:         Proc_6_138_106D6F8(Me.DGAgAc, global_76, KeyAscii, Me.FGPoint)
  loc_F756A2:       End If
  loc_F756A2:     End If
  loc_F756A2:   End If
  loc_F756A2: End If
  loc_F756A2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE17C
  'Data Table: 4F9424
  Dim var_86 As Integer
  loc_DFE177: var_86 = KeyCode
  loc_DFE17A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EC94
  'Data Table: 4F9424
  loc_E4EC72: Set var_88 = Me.Txt
  loc_E4EC78: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EC86: Proc_6_73_E22704(var_8C)
  loc_E4EC92: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1315EFC
  'Data Table: 4F9424
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim unk_4F943C As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_8C As Fields15
  loc_13157A3: var_86 = Cancel
  loc_13157AE: If (var_86 = CInt(1)) Then
  loc_13157BC:   Set var_8C = Me.Txt
  loc_13157C2:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13157CA:   var_98 = "Vr No"
  loc_13157EB:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_13157F9:     Set var_8C = Me.Txt
  loc_13157FF:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1315807:     var_90.SetFocus
  loc_1315815:     arg_10 = &HFF
  loc_1315818:     Exit Sub
  loc_1315819:   End If
  loc_1315827:   Set var_8C = Me.Txt
  loc_131582D:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_1315835:   arg_10 = var_90.Text
  loc_131584D:   If (CDbl(var_98) = CDbl(0)) Then
  loc_1315863:     var_B8 = "Vr. No. Can Not Be 0"
  loc_1315869:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_1315883:     Set var_8C = Me.Txt
  loc_1315889:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1315891:     var_90.SetFocus
  loc_131589F:     arg_10 = &HFF
  loc_13158A2:     Exit Sub
  loc_13158A3:   End If
  loc_13158A7:   Set var_8C = Me.TopCtrl1
  loc_13158AD:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_13158B5:   var_98 = CStr(var_86)
  loc_13158C6:   If (var_98 = "Add") Then
  loc_13158CF:     Call Proc_289_62_115CCB8(MemVar_1F92044)
  loc_13158E2:     Set var_8C = Me.Txt
  loc_13158E8:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13158F0:     var_90.Text = var_98
  loc_13158FF:   End If
  loc_1315903:   Set var_8C = Me.TopCtrl1
  loc_1315909:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_1315911:   var_98 = CStr()
  loc_1315922:   If (var_98 = "Add") Then
  loc_1315952:     Set var_8C = Me.Txt
  loc_1315958:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_1315979:     unk_4F943C.Execute var_124 & var_98 & "'", 0, var_128
  loc_1315989:      = var_124.Item()
  loc_1315991:      = var_128.Value
  loc_13159BE:     If (var_90.Text.Fields > 0) Then
  loc_13159C7:       Call 0.Method_arg_50 (var_98)
  loc_13159E8:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_13159FE:       Call Proc_289_62_115CCB8(MemVar_1F92044)
  loc_1315A0E:       If (var_98 = vbNullString) Then
  loc_1315A1B:         Set var_8C = Me.Txt
  loc_1315A21:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1315A29:         var_90.SetFocus
  loc_1315A37:         arg_10 = &HFF
  loc_1315A3A:         Exit Sub
  loc_1315A3B:       End If
  loc_1315A41:       Call Proc_289_62_115CCB8(MemVar_1F92044, var_98)
  loc_1315A54:       Set var_8C = Me.Txt
  loc_1315A5A:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_1315A62:       var_90.Text = arg_10
  loc_1315A73:       arg_10 = &HFF
  loc_1315A76:       Exit Sub
  loc_1315A77:     End If
  loc_1315A77:   End If
  loc_1315A7A: Else
  loc_1315A82:   If (var_86 = CInt(2)) Then
  loc_1315A93:     Set var_8C = Me.Txt
  loc_1315A99:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_1315AA1:     arg_10 = var_90.Text
  loc_1315AD1:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_1315AE7:       Set var_8C = Me.Txt
  loc_1315AED:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_1315AF5:       var_90.Text = CStr(MemVar_1F920EC)
  loc_1315B07:     Else
  loc_1315B11:       Set var_8C = Me.Txt
  loc_1315B17:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1315B37:       Set var_124 = Me.Txt
  loc_1315B3D:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_1315B45:       var_128.Text = Proc_6_33_1512840(var_90)
  loc_1315B58:     End If
  loc_1315B5B:   Else
  loc_1315B63:     If (var_86 = CInt(3)) Then
  loc_1315B70:       Set var_8C = Me.Txt
  loc_1315B76:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1315BA2:       var_98 = CStr(Format(CVar(var_90), "0.00"))
  loc_1315BB0:       Set var_94 = Me.Txt
  loc_1315BB6:       Call 0.Method_Txt_Validate0 (Cancel, var_124, var_98)
  loc_1315BBE:       var_124.Text = 1
  loc_1315BDB:     Else
  loc_1315BE3:       If (var_86 = CInt(5)) Then
  loc_1315C3D:         Set var_8C = Me.Txt
  loc_1315C43:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1315C4B:         ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_90.Text
  loc_1315C63:         If (1 Or (var_98 = vbNullString)) Then
  loc_1315C73:           Set var_8C = Me.Txt
  loc_1315C79:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1315C81:           var_90.Tag = vbNullString
  loc_1315C8F:           arg_10 = &HFF
  loc_1315C92:           Exit Sub
  loc_1315C93:         End If
  loc_1315CD1:         Set var_94 = Me.Txt
  loc_1315CD7:         Call 0.Method_Txt_Validate0 (Cancel, var_124, CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_1315CDF:         var_124.Text = arg_10
  loc_1315D15:         var_90 = Me.Recordset15.Fields.Item("SearchCode")
  loc_1315D26:         var_98 = CStr(var_90.Value)
  loc_1315D33:         Set var_94 = Me.Txt
  loc_1315D39:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_1315D41:         var_124.Tag = var_98
  loc_1315D5A:       Else
  loc_1315D62:         If (var_86 = CInt(6)) Then
  loc_1315D70:           Set var_8C = Me.Txt
  loc_1315D76:           Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_1315D7E:           var_B8 = CVar(var_90) 'Address
  loc_1315D9F:           If (Trim(var_B8) = vbNullString) Then
  loc_1315DA4:             arg_10 = &HFF
  loc_1315DA7:             Exit Sub
  loc_1315DA8:           End If
  loc_1315DBC:           Call 0.Method_Txt_Validate0 (CInt(6), var_90, var_98)
  loc_1315DC4:           arg_10 = var_90.Text
  loc_1315DDB:           If (var_98 = "Bank Rect.") Then
  loc_1315DE4:             global_60 = "MBRV"
  loc_1315DEE:             Call Proc_289_62_115CCB8(MemVar_1F92044, var_98)
  loc_1315E0A:             var_98 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And Nature='Bank' and (LOGSITE_CODE='" & MemVar_1F92078
  loc_1315E1A:             unk_4F943C.Execute var_98 & "' or LOGSITE_CODE='HO') Order by Name", var_B8, -1
  loc_1315E2B:             Set global_76 = Me.Txt
  loc_1315E4C:             CVarUnk
  loc_1315E51:             VerifyVarObj
  loc_1315E57:             Set var_8C = Me.DGAgAc
  loc_1315E5D:             LateIdStAd
  loc_1315E6E:           Else
  loc_1315E74:             global_60 = "MCRV"
  loc_1315E7E:             Call Proc_289_62_115CCB8(MemVar_1F92044, var_98, var_8C)
  loc_1315E9A:             var_98 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And Nature='Cash' and (LOGSITE_CODE='" & MemVar_1F92078
  loc_1315EAA:             unk_4F943C.Execute var_98 & "' or LOGSITE_CODE='HO') Order by Name", var_B8, -1
  loc_1315EBB:             Set global_76 = var_8C
  loc_1315EDC:             CVarUnk
  loc_1315EE1:             VerifyVarObj
  loc_1315EE7:             Set var_8C = Me.DGAgAc
  loc_1315EED:             LateIdStAd
  loc_1315EFB:           End If
  loc_1315EFB:         End If
  loc_1315EFB:       End If
  loc_1315EFB:     End If
  loc_1315EFB:   End If
  loc_1315EFB: End If
  loc_1315EFB: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F165C4
  'Data Table: 4F9424
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F164E0: On Error Goto loc_F165BE
  loc_F164E7: Set var_A4 = Me.ListView
  loc_F16531: Set var_BC = Me.Txt
  loc_F16537: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F1653F: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F1656B: Me.FrmList.Visible = False
  loc_F1658D: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F1659B: Set var_9C = Me.Txt
  loc_F165A1: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F165A9: var_A4.SetFocus
  loc_F165BD: Exit Sub
  loc_F165BE: ' Referenced from: F164E0
  loc_F165BE: Proc_6_60_E62BC4(var_C8)
  loc_F165C3: Exit Sub
End Sub

Public Function MasterFormExitGet() '4FA868
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4FA877
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95190
  'Data Table: 4F9424
  Dim Me As Recordset15
  loc_E9511E: On Error Goto loc_E95187
  loc_E95127: Me.MoveFirst
  loc_E95151: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95179: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E95181: Call Proc_289_58_14850AC(0)
  loc_E95186: Exit Sub
  loc_E95187: ' Referenced from: E9511E
  loc_E95187: Proc_6_60_E62BC4(var_A0)
  loc_E9518C: Exit Sub
End Sub

Public Sub Proc_289_52_DFC68C
  'Data Table: 4F9424
  loc_DFC688: Exit Sub
End Sub

Public Sub Proc_289_53_13B5F4C
  'Data Table: 4F9424
  Dim unk_4F9494 As Connection15
  Dim var_86 As Integer
  Dim var_F0 As Variant
  Dim var_DC As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1F4 As Variant
  Dim var_214 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_94 As Recordset15
  Dim var_C8 As Fields15
  Dim var_E0 As Field20
  loc_13B565A: unk_4F9494.Execute "Select * from PrinterSetup", var_C4, -1
  loc_13B5665: Set var_94 = var_C8
  loc_13B5670: Close 1
  loc_13B5679: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_13B5683: If (var_86 = 0) Then
  loc_13B56B4:   var_8C = Replace(CStr(Space(&H30)), " ", "-", 1, -1, 0)
  loc_13B56EB:   var_90 = Replace(CStr(Space(&HC)), " ", "-", 1, -1, 0)
  loc_13B56F9:   Print 1, vbNullString
  loc_13B5705:   var_86 = (var_86 + 1)
  loc_13B570D:   Print 1, vbNullString
  loc_13B5719:   var_86 = (var_86 + 1)
  loc_13B5721:   Print 1, vbNullString
  loc_13B572D:   var_86 = (var_86 + 1)
  loc_13B5748:   Set var_C8 = Me.Txt
  loc_13B574E:   Call 0.Method_Proc_289_53_13B5F4C0 (CInt(1), var_E0, var_86)
  loc_13B579B:   Set var_178 = Me.Txt
  loc_13B57A1:   Call 0.Method_Proc_289_53_13B5F4C0 (CInt(2), var_17C)
  loc_13B57D1:   var_DC = (Space(5) + "V NO. ")
  loc_13B57DB:   var_114 = (var_DC + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_E0), var_86), &HA)))
  loc_13B57E2:   var_134 = (var_114 + Space(&H1F))
  loc_13B57E9:   var_154 = (var_134 + Space(5))
  loc_13B57F2:   var_174 = (var_154 + "Date: ")
  loc_13B57FC:   var_1B4 = (var_174 + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_17C), var_86), &HB)))
  loc_13B5802:   Print 1, var_1B4
  loc_13B5841:   var_86 = (var_86 + 1)
  loc_13B5849:   Print 1, vbNullString
  loc_13B5855:   var_86 = (var_86 + 1)
  loc_13B5870:   Set var_C8 = Me.Txt
  loc_13B5876:   Call 0.Method_Proc_289_53_13B5F4C0 (CInt(6), var_E0, var_86)
  loc_13B5902:   var_1B4 = IIf((Ucase(Trim(CVar(var_E0))) = "CASH RECT."), CVar(Proc_6_38_E68A98(StrConv("Cash Receipt", 3, 0), var_86)), CVar(Proc_6_38_E68A98(StrConv("Bank Receipt", 3, 0))))
  loc_13B5932:   var_1F4 = (Space(&H20) + CVar(Proc_6_45_EAD428(CStr(var_1B4), &H14)))
  loc_13B5939:   var_214 = (var_1F4 + Space(&H1B))
  loc_13B593F:   Print 1, var_214
  loc_13B597A:   var_86 = (var_86 + 1)
  loc_13B5982:   Print 1, vbNullString
  loc_13B598E:   var_86 = (var_86 + 1)
  loc_13B5996:   Print 1, vbNullString
  loc_13B59A2:   var_86 = (var_86 + 1)
  loc_13B59AA:   Print 1, vbNullString
  loc_13B59B6:   var_86 = (var_86 + 1)
  loc_13B59BE:   Print 1, vbNullString
  loc_13B59CA:   var_86 = (var_86 + 1)
  loc_13B59D2:   Print 1, vbNullString
  loc_13B59DE:   var_86 = (var_86 + 1)
  loc_13B59F7:   var_DC = (Space(&HA) + CVar(var_8C))
  loc_13B59FD:   Print 1, CVar(var_E0)
  loc_13B5A10:   var_86 = (var_86 + 1)
  loc_13B5A55:   var_F0 = (Space(&HA) + CVar(Proc_6_45_EAD428("Particulars", &H23, var_86, var_86, var_86)))
  loc_13B5A5E:   var_104 = (Trim(CVar(var_E0)) + " | ")
  loc_13B5A68:   var_124 = (Ucase(Trim(CVar(var_E0))) + CVar(Proc_6_52_EAD4F4("Amount", &HA, var_86, var_86)))
  loc_13B5A6E:   Print 1, "Cash Receipt"
  loc_13B5A94:   var_86 = (var_86 + 1)
  loc_13B5AAD:   var_DC = (Space(&HA) + CVar(var_8C))
  loc_13B5AB3:   Print 1, CVar(Proc_6_45_EAD428("Particulars", &H23, var_86, var_86, var_86))
  loc_13B5AC6:   var_86 = (var_86 + 1)
  loc_13B5AE1:   Set var_C8 = Me.Txt
  loc_13B5AE7:   Call 0.Method_Proc_289_53_13B5F4C0 (CInt(4), var_E0, var_86, var_86)
  loc_13B5AEF:   var_F0 = CVar(var_E0) 'Address
  loc_13B5B4A:   Set var_178 = Me.Txt
  loc_13B5B50:   Call 0.Method_Proc_289_53_13B5F4C0 (CInt(3), var_17C)
  loc_13B5B80:   var_DC = (Space(&HA) + vbNullString)
  loc_13B5B8A:   var_144 = (CVar(Proc_6_45_EAD428("Particulars", &H23, var_86, var_86, var_86)) + CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(StrConv(Left(Trim(var_F0), &H23), 3, 0), var_86), &H23)))
  loc_13B5B93:   var_154 = ("Bank Receipt" + " : ")
  loc_13B5B9D:   var_1A4 = (StrConv("Bank Receipt", 3, 0) + CVar(Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(var_17C), var_86), &HA)))
  loc_13B5BA3:   Print 1, CVar(Proc_6_38_E68A98(StrConv("Bank Receipt", 3, 0)))
  loc_13B5BE0:   var_86 = (var_86 + 1)
  loc_13B5BE8:   Print 1, vbNullString
  loc_13B5BF4:   var_86 = (var_86 + 1)
  loc_13B5BFC:   Print 1, vbNullString
  loc_13B5C08:   var_86 = (var_86 + 1)
  loc_13B5C21:   var_DC = (Space(&HA) + CVar(var_8C))
  loc_13B5C27:   Print 1, CVar(Proc_6_45_EAD428("Particulars", &H23, var_86, var_86, var_86))
  loc_13B5C3A:   var_86 = (var_86 + 1)
  loc_13B5C55:   Set var_C8 = Me.Txt
  loc_13B5C5B:   Call 0.Method_Proc_289_53_13B5F4C0 (CInt(3), var_E0, var_86, var_86)
  loc_13B5C6A:   Proc_6_39_E7C810(var_F0, CVar(var_E0), var_86)
  loc_13B5CC8:   var_1C0 = Proc_6_45_EAD428(CStr("Charge: Rs. " & StrConv(CVar(Proc_6_43_10041F4(CSng(Abs(var_F0)), vbNullString, vbNullString)), 3, 0)), &H48)
  loc_13B5CD4:   var_154 = (Space(&HA) + CVar(var_1C0))
  loc_13B5CDA:   Print 1, StrConv("Bank Receipt", 3, 0)
  loc_13B5D08:   Print 1, vbNullString
  loc_13B5D14:   var_86 = (var_86 + 1)
  loc_13B5D44:   var_F0 = (Chr(&HF) + Space(&H16))
  loc_13B5D4E:   var_104 = (var_F0 + CVar(MemVar_1F920C8))
  loc_13B5D55:   var_124 = (Abs(var_F0) + Chr(&H12))
  loc_13B5D5B:   Print 1, StrConv(CVar(Proc_6_43_10041F4(CSng(Abs(var_F0)), vbNullString, vbNullString)), 3, 0)
  loc_13B5D76:   var_86 = (var_86 + 1)
  loc_13B5DC0:   var_F0 = (Chr(&HF) + Space(&H14))
  loc_13B5DC9:   var_104 = (var_F0 + "Prepared By")
  loc_13B5DD0:   var_124 = (Abs(var_F0) + Space(&H14))
  loc_13B5DD9:   var_134 = (StrConv(CVar(Proc_6_43_10041F4(CSng(Abs(var_F0)), vbNullString, vbNullString)), 3, 0) + "Guest Signature")
  loc_13B5DE0:   var_154 = ("Charge: Rs. " & StrConv(CVar(Proc_6_43_10041F4(CSng(Abs(var_F0)), vbNullString, vbNullString)), 3, 0) + Space(&H14))
  loc_13B5DE9:   var_174 = (StrConv("Bank Receipt", 3, 0) + "Auth. Signature")
  loc_13B5DF0:   var_1A4 = (CVar(var_17C) + Chr(&H12))
  loc_13B5DF6:   Print 1, CVar(Proc_6_38_E68A98(StrConv("Bank Receipt", 3, 0)))
  loc_13B5E1D:   var_86 = (var_86 + 1)
  loc_13B5E25:   Print 1, vbNullString
  loc_13B5E31:   var_86 = (var_86 + 1)
  loc_13B5E39:   Print 1, vbNullString
  loc_13B5E45:   var_86 = (var_86 + 1)
  loc_13B5E48: End If
  loc_13B5E4D: Print 1, vbNullString
  loc_13B5E59: var_86 = (var_86 + 1)
  loc_13B5E61: Print 1, vbNullString
  loc_13B5E6D: var_86 = (var_86 + 1)
  loc_13B5E75: Print 1, vbNullString
  loc_13B5E81: var_86 = (var_86 + 1)
  loc_13B5E96: Print 1, Chr(&HC)
  loc_13B5EA1: Close 1
  loc_13B5EAA: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_13B5EE3: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & var_94.Fields.Item("Printer").Value
  loc_13B5EF9: Close 1
  loc_13B5F03: If (MemVar_1F923B8 = "Y") Then
  loc_13B5F1F:   var_A4 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_13B5F29: Else
  loc_13B5F42:   var_A4 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_13B5F49: End If
  loc_13B5F49: Exit Sub
End Sub

Public Sub Proc_289_54_13C191C
  'Data Table: 4F9424
  Dim var_96 As Integer
  Dim var_F4 As Variant
  Dim var_B0 As Variant
  Dim var_A0 As Recordset15
  Dim var_C0 As Variant
  Dim var_148 As String
  Dim var_9C As Fields15
  Dim var_C4 As Field20
  Dim var_D8 As String
  Dim var_F8 As String
  loc_13C0FDF: var_90 = "PaymentReceiveRep"
  loc_13C0FE5: var_94 = "Payment Receive Report"
  loc_13C0FEA: var_96 = 0
  loc_13C0FFA: Call Proc_289_55_FBC85C(New, var_9C)
  loc_13C1002: Set var_8C = var_9C
  loc_13C1008: Set var_A0 = var_8C 
  loc_13C1017: Me.Recordset15.AddNew var_B0, var_C0
  loc_13C1027: Set var_9C = Me.Txt
  loc_13C102D: Call 0.Method_Proc_289_54_13C191C0 (CInt(1), var_C4)
  loc_13C1075: var_A0.Fields.Item("VNo").Value = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4)), &HA))
  loc_13C109C: Set var_9C = Me.Txt
  loc_13C10A2: Call 0.Method_Proc_289_54_13C191C0 (CInt(2), var_C4)
  loc_13C10EA: var_A0.Fields.Item("VDate").Value = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_C4)), &HB))
  loc_13C1111: Set var_9C = Me.Txt
  loc_13C1117: Call 0.Method_Proc_289_54_13C191C0 (CInt(6), var_C4)
  loc_13C1168: var_148 = "Bank Receipt"
  loc_13C11A3: var_1A8 = IIf((Ucase(Trim(CVar(var_C4))) = "CASH RECT."), CVar(Proc_6_38_E68A98(StrConv("Cash Receipt", 3, 0))), CVar(Proc_6_38_E68A98(StrConv(var_148, 3, 0))))
  loc_13C11DD: var_A0.Fields.Item("VType").Value = CVar(Proc_6_45_EAD428(CStr(var_1A8), &H14))
  loc_13C1218: Set var_9C = Me.Txt
  loc_13C121E: Call 0.Method_Proc_289_54_13C191C0 (CInt(5), var_C4)
  loc_13C127B: var_A0.Fields.Item("AgAc").Value = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(StrConv(CVar(var_C4), 3, 0)), &H32))
  loc_13C12A4: Set var_9C = Me.Txt
  loc_13C12AA: Call 0.Method_Proc_289_54_13C191C0 (CInt(4), var_C4)
  loc_13C1323: var_A0.Fields.Item("Particulars").Value = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(StrConv(Left(Trim(CVar(var_C4)), &H96), 3, 0)), 150))
  loc_13C1350: Set var_9C = Me.Txt
  loc_13C1356: Call 0.Method_Proc_289_54_13C191C0 (CInt(3), var_C4)
  loc_13C137B: var_F4 = CVar(Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(var_C4)), &HA)) 'String
  loc_13C139E: var_A0.Fields.Item("Amount").Value = var_F4
  loc_13C13C5: Set var_9C = Me.Txt
  loc_13C13CB: Call 0.Method_Proc_289_54_13C191C0 (CInt(3), var_C4)
  loc_13C13DA: Proc_6_39_E7C810(var_F4, CVar(var_C4))
  loc_13C13E2: var_F8 = vbNullString
  loc_13C1440: var_A0.Fields.Item("Charge").Value = StrConv(CVar(Proc_6_43_10041F4(CSng(Abs(var_F4)), vbNullString)), 3, 0)
  loc_13C1465: var_C0 = CVar(MemVar_1F920C8) 'String
  loc_13C146C: var_B0 = "Uname"
  loc_13C1480: var_C4 = var_A0.Fields.Item(var_B0)
  loc_13C1488: var_C4.Value = var_C0
  loc_13C149F: var_A0.Update var_B0, var_C0
  loc_13C14C8: Set var_9C = var_8C 
  loc_13C14CF: CreateFieldDefFile(var_9C, MemVar_1F920B4 & "\" & var_90 & ".ttx", &HFF)
  loc_13C14FD: var_D8 = "\" & var_90
  loc_13C1504: var_F8 = var_D8 & ".RPT"
  loc_13C1511: Call 0.Method_arg_1C (MemVar_1F920B4 & var_F8, var_B0, var_9C)
  loc_13C151C: MemVar_1F921E4 = var_9C
  loc_13C1545: Call 0.Method_arg_64 (var_9C, CVar(var_9C), var_C0)
  loc_13C154D: Call 0.Method_arg_2C (var_148, var_F8)
  loc_13C155B: Call 0.Method_arg_150 (var_96)
  loc_13C1571: Call 0.Method_arg_90 (var_9C, var_1DC)
  loc_13C1579: Call 0.Method_arg_24 (var_98)
  loc_13C1585: For var_1E0 =  To CInt(var_1DC): 1 = var_1E0 'Integer
  loc_13C159E:   Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C15A6:   Call 0.Method_arg_20 (var_C4)
  loc_13C15AE:   Call 0.Method_arg_30 (var_D8)
  loc_13C15C4:   var_1F0 = Ucase(CVar(var_D8)) 'Variant
  loc_13C15F4:   If (var_1F0 = Ucase("comp_name")) Then
  loc_13C1618:     Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C1620:     Call 0.Method_arg_20 (var_C4)
  loc_13C1628:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_13C163E:   Else
  loc_13C1660:     If (var_1F0 = Ucase("comp_add1")) Then
  loc_13C1684:       Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C168C:       Call 0.Method_arg_20 (var_C4)
  loc_13C1694:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_13C16AA:     Else
  loc_13C16CC:       If (var_1F0 = Ucase("comp_pin")) Then
  loc_13C16F0:         Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C16F8:         Call 0.Method_arg_20 (var_C4)
  loc_13C1700:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_13C1716:       Else
  loc_13C1738:         If (var_1F0 = Ucase("comp_GSTIN")) Then
  loc_13C175C:           Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C1764:           Call 0.Method_arg_20 (var_C4)
  loc_13C176C:           Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_13C1782:         Else
  loc_13C17A4:           If (var_1F0 = Ucase("comp_tin")) Then
  loc_13C17C8:             Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C17D0:             Call 0.Method_arg_20 (var_C4)
  loc_13C17D8:             Call 0.Method_arg_38 ("'" & MemVar_1F92150 & "'")
  loc_13C17EE:           Else
  loc_13C1810:             If (var_1F0 = Ucase("Title")) Then
  loc_13C1834:               Call 0.Method_arg_90 (var_9C, CLng(var_98))
  loc_13C183C:               Call 0.Method_arg_20 (var_C4)
  loc_13C1844:               Call 0.Method_arg_38 ("'Phone No. " & MemVar_1F92140 & "'")
  loc_13C185A:             Else
  loc_13C187C:               If (var_1F0 = Ucase("BetweenDate")) Then
  loc_13C187F:                 GoTo loc_13C18CF
  loc_13C1882:               End If
  loc_13C18A4:               If (var_1F0 = Ucase("Dater")) Then
  loc_13C18A7:                 GoTo loc_13C18CF
  loc_13C18AA:               End If
  loc_13C18CC:               If (var_1F0 = Ucase("Pager")) Then
  loc_13C18CF:                 ' Referenced from:             13C18A7
  loc_13C18CF:                 ' Referenced from:             13C187F
  loc_13C18CF:               End If
  loc_13C18CF:             End If
  loc_13C18CF:           End If
  loc_13C18CF:         End If
  loc_13C18CF:       End If
  loc_13C18CF:     End If
  loc_13C18CF:   End If
  loc_13C18D2: Next var_1E0 'Integer
  loc_13C18DC: Set var_C4 = Nothing
  loc_13C18F0: Set var_9C = MemVar_1F921E4 
  loc_13C18FC: Proc_6_99_1483714(var_9C, var_96, var_94)
  loc_13C1907: MemVar_1F921E4 = var_9C
  loc_13C1914: Set var_A0 = Nothing 
  loc_13C1918: Exit Sub
End Sub

Public Sub Proc_289_55_FBC85C(arg_C) 'FBC85C
  'Data Table: 4F9424
  Dim var_8C As Recordset15
  loc_FBC6A9: Set var_8C = arg_C 
  loc_FBC6D1: var_8C.Fields.Append "VNo", &HC8, &HA
  loc_FBC6FD: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_FBC729: var_8C.Fields.Append "VType", &HC8, &H32
  loc_FBC755: var_8C.Fields.Append "AgAc", &HC8, &H32
  loc_FBC781: var_8C.Fields.Append "Particulars", &HC8, &H96
  loc_FBC7AD: var_8C.Fields.Append "Amount", &HC8, &HB
  loc_FBC7D9: var_8C.Fields.Append "Charge", &HC8, &HC8
  loc_FBC805: var_8C.Fields.Append "Uname", &HC8, &HA
  loc_FBC815: var_8C.CursorType = 3
  loc_FBC822: var_8C.LockType = 3
  loc_FBC841: var_8C.Open var_A0, var_B0, -1
  loc_FBC848: Set var_8C = Nothing 
  loc_FBC84F: Set var_88 = arg_C 
  loc_FBC853: Proc_289_55_FBC85C = -1
End Sub

Public Sub Proc_289_56_F8E7CC
  'Data Table: 4F9424
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_4F943C As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F8E68D: Set var_8C = Me.TopCtrl1
  loc_F8E693: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F8E69B: var_A0 = CStr()
  loc_F8E6AC: If (var_A0 = "Add") Then
  loc_F8E6DC:   Set var_8C = Me.Txt
  loc_F8E6E2:   Call 0.Method_Proc_289_56_F8E7CC0 (CInt(0), var_A4, var_A0, "Select Count(*) From Ledger Where DocID='", var_9C, -1)
  loc_F8E703:   unk_4F943C.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F8E713:    = var_C4.Item()
  loc_F8E71B:    = var_D8.Value
  loc_F8E748:   If (var_A4.Text.Fields > 0) Then
  loc_F8E751:     Call 0.Method_arg_50 (var_A0)
  loc_F8E772:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F8E788:     Call Proc_289_62_115CCB8(MemVar_1F92044)
  loc_F8E79B:     Set var_8C = Me.Txt
  loc_F8E7A1:     Call 0.Method_Proc_289_56_F8E7CC0 (CInt(0), var_A4)
  loc_F8E7A9:     var_A4.Text = var_A0
  loc_F8E7BD:     Proc_289_56_F8E7CC = 0
  loc_F8E7C3:   End If
  loc_F8E7C3: End If
  loc_F8E7C3: Proc_289_56_F8E7CC = var_A0
End Sub

Public Sub Proc_289_57_1050B68
  'Data Table: 4F9424
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_10508FA: Set var_8C = Me.Txt
  loc_1050900: Call 0.Method_Proc_289_57_1050B68C (var_8E, var_86)
  loc_1050910: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1050926:   Set var_8C = Me.Txt
  loc_105092C:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_1050934:   var_98.Text = vbNullString
  loc_1050950:   Set var_8C = Me.Txt
  loc_1050956:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_105095E:   var_98.Tag = vbNullString
  loc_105096D: Next var_92 'Byte
  loc_1050981: Set var_8C = Me.FrDebit
  loc_1050987: Call 0.Method_Proc_289_57_1050B68C (var_8E, var_86)
  loc_1050997: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_10509AD:   Set var_8C = Me.TxtCardNo
  loc_10509B3:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_10509BB:   var_98.Text = vbNullString
  loc_10509D7:   Set var_8C = Me.TxtCrAc
  loc_10509DD:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_10509E5:   var_98.Text = vbNullString
  loc_1050A01:   Set var_8C = Me.TxtAmtCr
  loc_1050A07:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_1050A0F:   var_98.Text = vbNullString
  loc_1050A2B:   Set var_8C = Me.TxtRem
  loc_1050A31:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_1050A39:   var_98.Text = vbNullString
  loc_1050A55:   Set var_8C = Me.TxtCardNo
  loc_1050A5B:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_1050A63:   var_98.Tag = vbNullString
  loc_1050A7F:   Set var_8C = Me.TxtCrAc
  loc_1050A85:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_1050A8D:   var_98.Tag = vbNullString
  loc_1050AA9:   Set var_8C = Me.TxtAmtCr
  loc_1050AAF:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_1050AB7:   var_98.Tag = vbNullString
  loc_1050AD3:   Set var_8C = Me.TxtRem
  loc_1050AD9:   Call 0.Method_Proc_289_57_1050B680 (CInt(var_86), var_98)
  loc_1050AE1:   var_98.Tag = vbNullString
  loc_1050AF0: Next var_9C 'Byte
  loc_1050B07: Set var_8C = Me.txtM
  loc_1050B0D: Call 0.Method_Proc_289_57_1050B680 (CInt(5), var_98)
  loc_1050B15: var_98.defaultText = vbNullString
  loc_1050B2E: Me.LblVPrefix.Caption = vbNullString
  loc_1050B3F: Set var_8C = Me.TopCtrl1
  loc_1050B45: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_1050B56: Set var_8C = Me.TopCtrl1
  loc_1050B5C: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_1050B64: Exit Sub
End Sub

Public Sub Proc_289_58_14850AC
  'Data Table: 4F9424
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_E4 As Variant
  Dim var_108 As String
  Dim unk_4F943C As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim var_1F0 As Recordset15
  Dim var_130 As Variant
  Dim var_128 As Variant
  Dim var_8E As Integer
  Dim var_1F4 As Recordset15
  loc_148448C: On Error Goto loc_14850A3
  loc_148448F: Call Proc_289_57_1050B68()
  loc_14844A0: Set var_94 = Me.FrDebit
  loc_14844A6: Call 0.Method_Proc_289_58_14850ACC (var_96, var_8E)
  loc_14844B4: For var_9A =  To (var_96 - 1): 1 = var_9A 'Integer
  loc_14844C6:   Set var_94 = Me.FrDebit
  loc_14844CC:   Call 0.Method_Proc_289_58_14850AC0 (var_8E, var_A0)
  loc_14844D4:   var_A0.Visible = False
  loc_14844E3: Next var_9A 'Integer
  loc_14844FF: If (Me.RecordCount > 0) Then
  loc_1484541:   var_E4 = "SELECT S.Name as AcName,S.CardNo, L.* FROM Ledger L LEFT JOIN SubGroup S ON L.SubCode = S.SubCode Where DocID='" & Me.Fields.Item("DocID").Value 
  loc_1484558:   unk_4F943C.Execute CStr(var_E4 & "' And AmtDr<>0 Order By V_SNo"), var_128, -1
  loc_1484563:   Set var_88 = var_12C
  loc_14845B7:   var_12C = var_88.Fields
  loc_1484620:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1484665:   Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_194)))
  loc_14846DF:   var_130 = var_88.Fields.Item("U_AE")
  loc_1484740:   var_194 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_130)) = "E"), "Last Update : ", "entdt : "))
  loc_1484785:   Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_14847D1:   If (var_88.RecordCount > 0) Then
  loc_14847D7:     Set var_1F0 = var_88 
  loc_1484817:     If (var_88.Fields.Item("V_Type").Value = "MCRV") Then
  loc_1484834:       var_A0 = var_88.Fields.Item("V_Type")
  loc_148483C:       var_C4 = var_A0.Value
  loc_148484B:       global_60 = CStr(var_C4)
  loc_1484870:       Call 0.Method_Proc_289_58_14850AC0 (CInt(6), var_A0)
  loc_1484878:       var_A0.Text = "Cash Rect."
  loc_1484898:       var_108 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And Nature='Cash' and (LOGSITE_CODE='" & MemVar_1F92078
  loc_14848A8:       unk_4F943C.Execute var_108 & "' or LOGSITE_CODE='HO') Order by Name", var_C4, -1
  loc_14848B9:       Set global_76 = Me.Txt
  loc_14848DA:       CVarUnk
  loc_14848DF:       VerifyVarObj
  loc_14848E5:       Set var_94 = Me.DGAgAc
  loc_14848EB:       LateIdStAd
  loc_14848FC:     Else
  loc_1484938:       If (var_88.Fields.Item("V_Type").Value = "MBRV") Then
  loc_1484955:         var_A0 = var_88.Fields.Item("V_Type")
  loc_148495D:         var_C4 = var_A0.Value
  loc_148496C:         global_60 = CStr(var_C4)
  loc_148498B:         Set var_94 = Me.Txt
  loc_1484991:         Call 0.Method_Proc_289_58_14850AC0 (CInt(6), var_A0, "Bank Rect.")
  loc_1484999:         var_A0.Text = var_94
  loc_14849B9:         var_108 = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And Nature='Bank' and (LOGSITE_CODE='" & MemVar_1F92078
  loc_14849C9:         unk_4F943C.Execute var_108 & "' or LOGSITE_CODE='HO') Order by Name", var_C4, -1
  loc_14849DA:         Set global_76 = var_94
  loc_14849FB:         CVarUnk
  loc_1484A00:         VerifyVarObj
  loc_1484A06:         Set var_94 = Me.DGAgAc
  loc_1484A0C:         LateIdStAd
  loc_1484A1A:       End If
  loc_1484A1A:     End If
  loc_1484A2C:     var_94 = var_1F0.Fields
  loc_1484A53:     Set var_12C = Me.Txt
  loc_1484A59:     Call 0.Method_Proc_289_58_14850AC0 (CInt(0), var_130, CStr(var_94.Item("DocID").Value), var_94)
  loc_1484A61:     var_130.Text = global_76
  loc_1484AAF:     Me.LblVPrefix.Caption = CStr(var_1F0.Fields.Item("v_Prefix").Value)
  loc_1484B15:     Set var_12C = Me.Txt
  loc_1484B1B:     Call 0.Method_Proc_289_58_14850AC0 (CInt(2), var_130, CStr(Format(CVar(var_1F0.Fields.Item("V_DATE")), "dd/MMM/yyyy")), 1)
  loc_1484B23:     var_130.Text = 1
  loc_1484B4F:     var_94 = var_1F0.Fields
  loc_1484B76:     Set var_12C = Me.Txt
  loc_1484B7C:     Call 0.Method_Proc_289_58_14850AC0 (CInt(1), var_130, CStr(var_94.Item("V_NO").Value))
  loc_1484B84:     var_130.Text = var_94
  loc_1484BDE:     var_128 = CVar(CStr(Format(CVar(var_1F0.Fields.Item("U_EntDt")), "hh:mm"))) 'String
  loc_1484BED:     Set var_12C = Me.txtM
  loc_1484BF3:     Call 0.Method_Proc_289_58_14850AC0 (CInt(5), var_130, var_128, 1)
  loc_1484BFB:     var_130.defaultText = 1
  loc_1484C4A:     Set var_12C = Me.Txt
  loc_1484C50:     Call 0.Method_Proc_289_58_14850AC0 (CInt(5), var_130)
  loc_1484C58:     var_130.Tag = Proc_6_38_E68A98(CVar(var_1F0.Fields.Item("subcode")), global_76)
  loc_1484CA2:     Set var_12C = Me.Txt
  loc_1484CA8:     Call 0.Method_Proc_289_58_14850AC0 (CInt(5), var_130)
  loc_1484CB0:     var_130.Text = Proc_6_38_E68A98(CVar(var_1F0.Fields.Item("AcName")))
  loc_1484D16:     Set var_12C = Me.Txt
  loc_1484D1C:     Call 0.Method_Proc_289_58_14850AC0 (CInt(3), var_130, CStr(Format(CVar(var_1F0.Fields.Item("AmtDr")), "0.00")))
  loc_1484D24:     var_130.Text = 1
  loc_1484D74:     Set var_12C = Me.Txt
  loc_1484D7A:     Call 0.Method_Proc_289_58_14850AC0 (CInt(4), var_130)
  loc_1484D82:     var_130.Text = Proc_6_38_E68A98(CVar(var_1F0.Fields.Item("Narration")), 1)
  loc_1484D98:     Set var_1F0 = Nothing 
  loc_1484D9C:   End If
  loc_1484DDB:   var_E4 = "SELECT S.Name as AcName,S.CardNo, L.* FROM Ledger L LEFT JOIN SubGroup S ON L.SubCode = S.SubCode Where DocID='" & Me.Fields.Item("DocID").Value 
  loc_1484DF2:   unk_4F943C.Execute CStr(var_E4 & "' And AmtCr<>0 Order By V_SNo"), var_128, -1
  loc_1484DFD:   Set var_88 = var_12C
  loc_1484E2B:   If (var_88.RecordCount > 0) Then
  loc_1484E30:     var_8E = 0
  loc_1484E33:     ' Referenced from: 148505E
  loc_1484E42:     If Not(var_88.EOF) Then
  loc_1484E48:       Set var_1F4 = var_88 
  loc_1484E87:       Call 0.Method_Proc_289_58_14850AC0 (var_8E, var_130, Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("CardNo")), var_8E))
  loc_1484E8F:       var_130.Text = Me.TxtCardNo
  loc_1484ED8:       Set var_12C = Me.TxtCrAc
  loc_1484EDE:       Call 0.Method_Proc_289_58_14850AC0 (var_8E, var_130)
  loc_1484EE6:       var_130.Tag = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("subcode")))
  loc_1484F2F:       Set var_12C = Me.TxtCrAc
  loc_1484F35:       Call 0.Method_Proc_289_58_14850AC0 (var_8E, var_130)
  loc_1484F3D:       var_130.Text = Proc_6_38_E68A98(CVar(var_1F4.Fields.Item("AcName")))
  loc_1484FA2:       Set var_12C = Me.TxtAmtCr
  loc_1484FA8:       Call 0.Method_Proc_289_58_14850AC0 (var_8E, var_130, CStr(Format(CVar(var_1F4.Fields.Item("AmtCr")), "0.00")))
  loc_1484FB0:       var_130.Text = 1
  loc_1484FE1:       var_A0 = var_1F4.Fields.Item("Narration")
  loc_1484FFF:       Set var_12C = Me.TxtRem
  loc_1485005:       Call 0.Method_Proc_289_58_14850AC0 (var_8E, var_130)
  loc_148500D:       var_130.Text = Proc_6_38_E68A98(CVar(var_A0), 1)
  loc_1485023:       Set var_1F4 = Nothing 
  loc_1485033:       Set var_94 = Me.FrDebit
  loc_1485039:       Call 0.Method_Proc_289_58_14850AC0 (var_8E, var_A0)
  loc_1485041:       var_A0.Visible = True
  loc_1485053:       var_8E = (var_8E + 1)
  loc_1485059:       var_88.MoveNext
  loc_148505E:       GoTo loc_1484E33
  loc_1485061:     End If
  loc_1485061:   End If
  loc_1485069:   Set var_94 = Me.TopCtrl1
  loc_148506F:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030016(True)
  loc_148507F:   Set var_94 = Me.TopCtrl1
  loc_1485085:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030017(True)
  loc_1485090: Else
  loc_1485090:   Call Proc_289_57_1050B68(var_8E)
  loc_1485095: End If
  loc_1485095: Call Proc_289_60_EF3078(var_94)
  loc_148509F: Set var_88 = Nothing
  loc_14850A2: Exit Sub
  loc_14850A3: ' Referenced from: 148448C
  loc_14850A3: Proc_6_60_E62BC4()
  loc_14850A8: Exit Sub
End Sub

Public Sub Proc_289_59_FD1954(arg_C) 'FD1954
  'Data Table: 4F9424
  Dim var_98 As Variant
  loc_FD178A: Set var_8C = Me.Txt
  loc_FD1790: Call 0.Method_Proc_289_59_FD1954C (var_8E, var_86)
  loc_FD17A0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FD17B6:   Set var_8C = Me.Txt
  loc_FD17BC:   Call 0.Method_Proc_289_59_FD19540 (CInt(var_86), var_98)
  loc_FD17C4:   var_98.Enabled = arg_C
  loc_FD17D3: Next var_92 'Byte
  loc_FD17E7: Set var_8C = Me.FrDebit
  loc_FD17ED: Call 0.Method_Proc_289_59_FD1954C (var_8E, var_86)
  loc_FD17FD: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_FD1813:   Set var_8C = Me.TxtCardNo
  loc_FD1819:   Call 0.Method_Proc_289_59_FD19540 (CInt(var_86), var_98)
  loc_FD1821:   var_98.Enabled = arg_C
  loc_FD183D:   Set var_8C = Me.TxtCrAc
  loc_FD1843:   Call 0.Method_Proc_289_59_FD19540 (CInt(var_86), var_98)
  loc_FD184B:   var_98.Enabled = arg_C
  loc_FD1867:   Set var_8C = Me.TxtAmtCr
  loc_FD186D:   Call 0.Method_Proc_289_59_FD19540 (CInt(var_86), var_98)
  loc_FD1875:   var_98.Enabled = arg_C
  loc_FD1891:   Set var_8C = Me.TxtRem
  loc_FD1897:   Call 0.Method_Proc_289_59_FD19540 (CInt(var_86), var_98)
  loc_FD189F:   var_98.Enabled = arg_C
  loc_FD18AE: Next var_9C 'Byte
  loc_FD18C1: Set var_8C = Me.Txt
  loc_FD18C7: Call 0.Method_Proc_289_59_FD19540 (CInt(2), var_98)
  loc_FD18CF: var_98.Enabled = False
  loc_FD18E8: Set var_8C = Me.Txt
  loc_FD18EE: Call 0.Method_Proc_289_59_FD19540 (CInt(1), var_98)
  loc_FD18F6: var_98.Enabled = False
  loc_FD1912: Set var_8C = Me.txtM
  loc_FD1918: Call 0.Method_Proc_289_59_FD19540 (CInt(5), var_98)
  loc_FD1920: var_98.Enabled = False
  loc_FD1939: Set var_8C = Me.Txt
  loc_FD193F: Call 0.Method_Proc_289_59_FD19540 (CInt(0), var_98)
  loc_FD1947: var_98.Enabled = False
  loc_FD1953: Exit Sub
End Sub

Public Sub Proc_289_60_EF3078
  'Data Table: 4F9424
  loc_EF2FBC: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_EF2FCE:   Me.DGAgAc.Visible = False
  loc_EF2FD6: End If
  loc_EF2FF2: If (CBool(Me.DGCrAc.Visible) = &HFF) Then
  loc_EF3004:   Me.DGCrAc.Visible = False
  loc_EF300C: End If
  loc_EF3027: If (Me.FrmList.Visible = &HFF) Then
  loc_EF3036:   Me.FrmList.Visible = False
  loc_EF303E: End If
  loc_EF305A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF306C:   Me.FGPoint.Visible = False
  loc_EF3074: End If
  loc_EF3074: Exit Sub
End Sub

Public Sub Proc_289_61_E90590(arg_C) 'E90590
  'Data Table: 4F9424
  Dim var_10C As TextBox
  loc_E90524: Call Proc_289_60_EF3078()
  loc_E90560: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E90563:   Call TopCtrl1_UnknownEvent_16()
  loc_E9056B: Else
  loc_E90575:   Set var_108 = Me.Txt
  loc_E9057B:   Call 0.Method_Proc_289_61_E905900 (arg_C)
  loc_E90583:   var_10C.SetFocus
  loc_E9058F: End If
  loc_E9058F: Exit Sub
End Sub

Public Sub Proc_289_62_115CCB8
  'Data Table: 4F9424
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115C950: var_90 = global_60
  loc_115C967: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115C98A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115C998: Set var_B4 = Me.Txt
  loc_115C99E: Call 0.Method_Proc_289_62_115CCB80 (CInt(2), var_B8, var_E8)
  loc_115C9AD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115C9B5: var_F8 = -1 & var_D8 
  loc_115C9C9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115C9D4: Set var_8C = var_140
  loc_115CA10: If (var_8C.RecordCount <= 0) Then
  loc_115CA2C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115CA3F:   var_88 = vbNullString
  loc_115CA42:   Proc_289_62_115CCB8 = 
  loc_115CA48: End If
  loc_115CA5C: If (var_8C.RecordCount > 0) Then
  loc_115CA9B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115CAB8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115CAC9:     var_9C = CStr(var_B8.Value)
  loc_115CAE4:     Set var_B4 = Me.Txt
  loc_115CAEA:     Call 0.Method_Proc_289_62_115CCB80 (CInt(1), var_B8)
  loc_115CB00:     var_94 = CLng(Val(var_B8.Text))
  loc_115CB10:   Else
  loc_115CB3B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115CB62:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115CB77:     var_D8 = (var_B8.Value + 1)
  loc_115CB7D:     var_94 = CLng(var_D8)
  loc_115CB8E:   End If
  loc_115CB8E: End If
  loc_115CBB9: var_C8 = Space((5 - Len(var_90)))
  loc_115CBC1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115CBCB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115CBDC: var_118 = Space((5 - Len(var_9C)))
  loc_115CBE4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115CBFA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115CC02: var_188 = (var_13C + var_178)
  loc_115CC0E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115CC13: var_98 = CStr(var_1A8)
  loc_115CC43: Me.LblVPrefix.Caption = var_9C
  loc_115CC59: Set var_B4 = Me.Txt
  loc_115CC5F: Call 0.Method_Proc_289_62_115CCB80 (CInt(0), var_B8)
  loc_115CC67: var_B8.Text = var_98
  loc_115CC86: Set var_B4 = Me.Txt
  loc_115CC8C: Call 0.Method_Proc_289_62_115CCB80 (CInt(1), var_B8)
  loc_115CC94: var_B8.Text = CStr(var_94)
  loc_115CCA6: var_88 = var_98
  loc_115CCAE: Set var_8C = Nothing
  loc_115CCB1: Proc_289_62_115CCB8 = var_94
End Sub

Public Sub Proc_289_63_EE49B8
  'Data Table: 4F9424
  loc_EE4906: On Error Goto loc_EE494C
  loc_EE491E: Call 0.Method_arg_18C (var_8C)
  loc_EE4926: Call var_8C.Show
  loc_EE493B: Call 0.Method_arg_188 (var_B0)
  loc_EE4943: var_88 = var_B0
  loc_EE4946: Proc_289_63_EE49B8 = 1
  loc_EE494C: ' Referenced from: EE4906
  loc_EE4954: Set var_8C = Err()
  loc_EE495A: Call 0.Method_arg_1C (var_B4)
  loc_EE496B: If (var_B4 <> 0) Then
  loc_EE4976:   Set var_8C = Err()
  loc_EE497C:   Call 0.Method_arg_2C (var_B0)
  loc_EE499D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE49B0: End If
  loc_EE49B0: Proc_289_63_EE49B8 = 
End Sub
