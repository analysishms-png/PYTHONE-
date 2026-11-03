VERSION 5.00
Begin VB.Form MemTagadaLetter
  Caption = "Payment Due Letter Entry"
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  Icon = "MemTagadaLetter.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 10680
  ClientHeight = 7065
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
  PaletteMode = 1
  Begin Frame FrArticle
    Caption = "Article"
    Left = 360
    Top = 3720
    Width = 17295
    Height = 5010
    Visible = 0   'False
    TabIndex = 27
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin MSFlexGrid FGPoint
      Left = 7185
      Top = 660
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 69
    End
    Begin DataGrid DgMemType
      Left = 4605
      Top = 480
      Width = 4830
      Height = 2730
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 68
    End
    Begin TextBox Text1
      Index = 24
      ForeColor = &HFF0000&
      Left = 2445
      Top = 30
      Width = 3375
      Height = 240
      TabIndex = 66
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
    Begin CommandButton CmdRefresh1
      Caption = "Re&fresh"
      Left = 8880
      Top = 240
      Width = 1650
      Height = 375
      Visible = 0   'False
      TabIndex = 39
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
    Begin TextBox Text1
      Index = 22
      ForeColor = &HFF0000&
      Left = 2445
      Top = 795
      Width = 2055
      Height = 240
      TabIndex = 37
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
    Begin TextBox Text1
      Index = 21
      ForeColor = &HFF0000&
      Left = 2445
      Top = 540
      Width = 2055
      Height = 240
      TabIndex = 35
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
    Begin TextBox Text1
      Index = 20
      ForeColor = &HFF0000&
      Left = 2445
      Top = 285
      Width = 2055
      Height = 240
      TabIndex = 34
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
    Begin CheckBox Check1
      Caption = "All"
      BackColor = &H808080&
      ForeColor = &HFFFFFF&
      Left = 330
      Top = 1215
      Width = 915
      Height = 195
      TabIndex = 28
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
      Left = 240
      Top = 1200
      Width = 17040
      Height = 3480
      TabIndex = 29
    End
    Begin BtnEnh CmdRefresh
      Left = 6075
      Top = 0
      Width = 1470
      Height = 1065
      TabIndex = 64
    End
    Begin Label Label1
      Caption = "Member Category"
      Index = 24
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 315
      Top = 45
      Width = 1890
      Height = 240
      TabIndex = 67
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
    Begin Label Label1
      Caption = "Curr. Bill Month"
      Index = 15
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 300
      Top = 810
      Width = 1485
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Debit Amt. Upto Date"
      Index = 14
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 300
      Top = 555
      Width = 1980
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
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Debit Amt. >="
      Index = 13
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 300
      Top = 300
      Width = 1290
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
      Appearance = 0 'Flat
    End
  End
  Begin TextBox Text1
    Index = 23
    Left = 7995
    Top = 3150
    Width = 1740
    Height = 240
    TabIndex = 61
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    Appearance = 0 'Flat
  End
  Begin Frame FrPrinting
    Caption = "Printing"
    Left = 10440
    Top = 8655
    Width = 5265
    Height = 1665
    Visible = 0   'False
    TabIndex = 54
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdmultiPrint
      Caption = "PRINT"
      Left = 2670
      Top = 930
      Width = 1065
      Height = 450
      TabIndex = 56
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &HC000C0&
      UseMaskColor = -1  'True
      Style = 1
    End
    Begin CommandButton CmdExit
      Caption = "EXIT"
      Left = 3780
      Top = 930
      Width = 1065
      Height = 450
      TabIndex = 55
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &HC000C0&
      UseMaskColor = -1  'True
      Style = 1
    End
    Begin DataCombo TXT_FROMBILLNO
      Left = 915
      Top = 405
      Width = 1560
      Height = 360
      TabIndex = 57
    End
    Begin DataCombo TXT_TOBILLNO
      Left = 3270
      Top = 405
      Width = 1560
      Height = 360
      TabIndex = 58
    End
    Begin Label LblTo
      Caption = "To"
      ForeColor = &H0&
      Left = 2700
      Top = 465
      Width = 225
      Height = 210
      TabIndex = 60
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
    Begin Label LblFrom
      Caption = "From"
      ForeColor = &H0&
      Left = 300
      Top = 465
      Width = 450
      Height = 210
      TabIndex = 59
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
  End
  Begin TextBox Text1
    Index = 19
    Left = 10710
    Top = 2385
    Width = 1410
    Height = 240
    TabIndex = 52
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 18
    Left = 7995
    Top = 2895
    Width = 1740
    Height = 240
    TabIndex = 50
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 17
    Left = 10710
    Top = 2640
    Width = 1410
    Height = 240
    TabIndex = 48
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 16
    Left = 7995
    Top = 2640
    Width = 1740
    Height = 240
    TabIndex = 46
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 15
    Left = 7995
    Top = 2385
    Width = 1740
    Height = 240
    TabIndex = 44
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 14
    Left = 7995
    Top = 2130
    Width = 4125
    Height = 240
    TabIndex = 42
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 13
    Left = 7995
    Top = 1875
    Width = 4125
    Height = 240
    TabIndex = 40
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    Index = 12
    Left = 7995
    Top = 1620
    Width = 4125
    Height = 240
    TabIndex = 30
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin Frame FrArticles
    Left = 2040
    Top = 405
    Width = 9135
    Height = 525
    TabIndex = 24
    BorderStyle = 0 'None
    Begin OptionButton OptArticles
      Caption = "Article_23"
      Index = 2
      ForeColor = &HFF00FF&
      Left = 6780
      Top = 240
      Width = 2085
      Height = 270
      TabIndex = 65
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin OptionButton OptArticles
      Caption = "Article_26(b)"
      Index = 1
      ForeColor = &HFF00FF&
      Left = 3525
      Top = 240
      Width = 2085
      Height = 270
      TabIndex = 26
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin OptionButton OptArticles
      Caption = "Article_26(a)"
      Index = 0
      ForeColor = &HFF00FF&
      Left = 270
      Top = 240
      Width = 2085
      Height = 270
      TabIndex = 25
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TextBox Text1
    Index = 11
    ForeColor = &HFF0000&
    Left = 7995
    Top = 1260
    Width = 4125
    Height = 240
    TabIndex = 11
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
  Begin TextBox Text1
    Index = 9
    ForeColor = &HFF0000&
    Left = 1845
    Top = 3045
    Width = 4005
    Height = 240
    TabIndex = 9
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
  Begin TextBox Text1
    Index = 10
    ForeColor = &HFF0000&
    Left = 1845
    Top = 3300
    Width = 4005
    Height = 240
    TabIndex = 10
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
  Begin TextBox Text1
    Index = 8
    ForeColor = &HFF0000&
    Left = 1845
    Top = 2790
    Width = 4005
    Height = 240
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
  Begin TextBox Text1
    Index = 4
    ForeColor = &HFF0000&
    Left = 1845
    Top = 1770
    Width = 4005
    Height = 240
    TabIndex = 4
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
  End
  Begin TextBox Text1
    Index = 7
    ForeColor = &HFF0000&
    Left = 1845
    Top = 2535
    Width = 4005
    Height = 240
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
  Begin TextBox Text1
    Index = 6
    ForeColor = &HFF0000&
    Left = 1845
    Top = 2280
    Width = 4005
    Height = 240
    TabIndex = 6
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
  Begin TextBox Text1
    Index = 1
    ForeColor = &HFF0000&
    Left = 1845
    Top = 1260
    Width = 615
    Height = 240
    TabIndex = 1
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
  Begin TextBox Text1
    Index = 0
    Left = 1845
    Top = 1005
    Width = 1425
    Height = 240
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin TextBox Text1
    Index = 5
    ForeColor = &HFF0000&
    Left = 1845
    Top = 2025
    Width = 4005
    Height = 240
    TabIndex = 5
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
  Begin TextBox Text1
    Index = 2
    ForeColor = &HFF0000&
    Left = 2475
    Top = 1260
    Width = 3375
    Height = 240
    TabIndex = 2
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
  Begin TextBox Text1
    Index = 3
    ForeColor = &HFF0000&
    Left = 1845
    Top = 1515
    Width = 4005
    Height = 240
    TabIndex = 3
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10680
    Height = 450
    TabIndex = 63
  End
  Begin DataGrid DBGrid1
    Left = 360
    Top = 3720
    Width = 13680
    Height = 4665
    TabIndex = 23
  End
  Begin Label Label1
    Caption = "Tot Due Amount"
    Index = 23
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6330
    Top = 3165
    Width = 1530
    Height = 210
    TabIndex = 62
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
  Begin Label Label1
    Caption = "Till Date"
    Index = 22
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 9825
    Top = 2400
    Width = 900
    Height = 210
    TabIndex = 53
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
  Begin Label Label1
    Caption = "Month"
    Index = 21
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 9825
    Top = 2655
    Width = 525
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Credit Amount"
    Index = 20
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6330
    Top = 2910
    Width = 1530
    Height = 210
    TabIndex = 49
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
  Begin Label Label1
    Caption = "Cur. Bill Amount"
    Index = 19
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6360
    Top = 2655
    Width = 1305
    Height = 210
    TabIndex = 47
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
  Begin Label Label1
    Caption = "Due Amount"
    Index = 18
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6345
    Top = 2400
    Width = 1305
    Height = 210
    TabIndex = 45
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
  Begin Label Label1
    Caption = "Email"
    Index = 17
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6345
    Top = 2145
    Width = 1050
    Height = 210
    TabIndex = 43
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
  Begin Label Label1
    Caption = "Fax"
    Index = 16
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6345
    Top = 1890
    Width = 405
    Height = 210
    TabIndex = 41
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
  Begin Label Label1
    Caption = "Mobile(s)"
    Index = 12
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6345
    Top = 1635
    Width = 975
    Height = 210
    TabIndex = 32
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
  Begin Label Label1
    Caption = "Card No."
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 1530
    Width = 945
    Height = 210
    TabIndex = 31
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
  Begin Label Label1
    Caption = "Phone(s)"
    Index = 11
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 6360
    Top = 1260
    Width = 990
    Height = 210
    TabIndex = 22
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
  Begin Label Label1
    Caption = "Pin Code"
    Index = 9
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 3060
    Width = 1080
    Height = 210
    TabIndex = 21
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
  Begin Label Label1
    Index = 7
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 330
    Top = 2535
    Width = 870
    Height = 240
    TabIndex = 20
    BackStyle = 0 'Transparent
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "City"
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 2805
    Width = 780
    Height = 210
    TabIndex = 19
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
  Begin Label Label1
    Index = 6
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 330
    Top = 2280
    Width = 1125
    Height = 210
    TabIndex = 18
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "State"
    Index = 10
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 3315
    Width = 690
    Height = 210
    TabIndex = 17
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
  Begin Label Label1
    Caption = "Serial No."
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 1005
    Width = 945
    Height = 240
    TabIndex = 16
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Member Name"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 1275
    Width = 1425
    Height = 210
    TabIndex = 15
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
  Begin Label Label1
    Caption = "A/C Name"
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 1785
    Width = 1065
    Height = 210
    TabIndex = 14
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
  Begin Label Label1
    Caption = "Address"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 360
    Top = 2025
    Width = 645
    Height = 210
    TabIndex = 13
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
  Begin Label Label1
    Index = 2
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 780
    Top = 1275
    Width = 705
    Height = 210
    TabIndex = 12
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "MemTagadaLetter"

Private global_64 As Integer
Private global_68 As Recordset15

Private Sub CmdRefresh_UnknownEvent_9 '1025788
  'Data Table: 4D5018
  loc_1025557: If (global_52 = "Article_26(a)") Then
  loc_1025565:   Set var_88 = Me.Text1
  loc_102556B:   Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H15))
  loc_1025594:   If (Proc_6_27_EA565C(var_8C, "Debit Upto Date") = 0) Then
  loc_1025597:     Exit Sub
  loc_1025598:   End If
  loc_10255A3:   Set var_88 = Me.Text1
  loc_10255A9:   Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H16), var_8C)
  loc_10255D2:   If (Proc_6_27_EA565C(var_8C, "Current Bill Month") = 0) Then
  loc_10255D5:     Exit Sub
  loc_10255D6:   End If
  loc_10255DF:   Set var_88 = Me.CmdRefresh
  loc_10255E5:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_10255ED:   Call Proc_290_37_1791050(var_8C)
  loc_10255FA:   Set var_88 = Me.CmdRefresh
  loc_1025600:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_102560B: Else
  loc_1025616:   If (global_52 = "Article_26(b)") Then
  loc_1025624:     Set var_88 = Me.Text1
  loc_102562A:     Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H15))
  loc_1025653:     If (Proc_6_27_EA565C(var_8C, "Article_26(a) Entry Date") = 0) Then
  loc_1025656:       Exit Sub
  loc_1025657:     End If
  loc_1025662:     Set var_88 = Me.Text1
  loc_1025668:     Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H16), var_8C)
  loc_1025691:     If (Proc_6_27_EA565C(var_8C, "Current Bill Month") = 0) Then
  loc_1025694:       Exit Sub
  loc_1025695:     End If
  loc_102569E:     Set var_88 = Me.CmdRefresh
  loc_10256A4:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_10256AC:     Call Proc_290_37_1791050(var_8C)
  loc_10256B9:     Set var_88 = Me.CmdRefresh
  loc_10256BF:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_10256CA:   Else
  loc_10256D5:     If (global_52 = "Article_23") Then
  loc_10256E3:       Set var_88 = Me.Text1
  loc_10256E9:       Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H15))
  loc_1025712:       If (Proc_6_27_EA565C(var_8C, "Debit Upto Date") = 0) Then
  loc_1025715:         Exit Sub
  loc_1025716:       End If
  loc_1025721:       Set var_88 = Me.Text1
  loc_1025727:       Call 0.Method_CmdRefresh_UnknownEvent_90 (CInt(&H16), var_8C)
  loc_1025750:       If (Proc_6_27_EA565C(var_8C, "Current Bill Month") = 0) Then
  loc_1025753:         Exit Sub
  loc_1025754:       End If
  loc_102575D:       Set var_88 = Me.CmdRefresh
  loc_1025763:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_102576B:       Call Proc_290_37_1791050(var_8C)
  loc_1025778:       Set var_88 = Me.CmdRefresh
  loc_102577E:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_1025786:     End If
  loc_1025786:   End If
  loc_1025786: End If
  loc_1025786: Exit Sub
End Sub

Private Sub Form_Load() '1000400
  'Data Table: 4D5018
  Dim var_88 As Variant
  Dim var_AC As OptionButton
  Dim var_C4 As Variant
  Dim Me As Recordset15
  loc_10001F4: On Error Goto loc_10003F7
  loc_10001FE: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1000211: Me.FrArticles.BackColor = CLng(MemVar_1F921B0)
  loc_1000227: Me.FrArticle.BackColor = CLng(MemVar_1F921B0)
  loc_1000242: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_1000257: Set var_88 = Me.OptArticles
  loc_100025D: Call 0.Method_Form_Load0 (0, var_AC)
  loc_1000265: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_100027E: Set var_88 = Me.OptArticles
  loc_1000284: Call 0.Method_Form_Load0 (1, var_AC)
  loc_100028C: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_10002A5: Set var_88 = Me.OptArticles
  loc_10002AB: Call 0.Method_Form_Load0 (2, var_AC)
  loc_10002B3: var_AC.BackColor = CLng(MemVar_1F921B0)
  loc_10002DB: Me.Recordset15.CursorLocation = 3
  loc_1000305: var_C4 = CVar("Select  Code, Name, Corporate From MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_100030F: Me.Open var_C4, CVar(MemVar_1F921DC), 2
  loc_1000323: CVarUnk
  loc_1000328: VerifyVarObj
  loc_100032E: Set var_88 = Me.DgMemType
  loc_1000334: LateIdStAd
  loc_1000350: Me.FrPrinting.Left = CDbl(0)
  loc_1000366: Me.FrPrinting.Top = CDbl(0)
  loc_1000378: Set global_68 = New 
  loc_100038D: Me.Recordset15.CursorLocation = 3
  loc_10003A0: Me.Recordset15.CursorType = 2
  loc_10003B3: Me.Recordset15.LockType = 3
  loc_10003C9: Call 0.Method_Form_Load0 (0, var_AC, &HFF, Me.OptArticles)
  loc_10003D1: var_AC.Value = New
  loc_10003E2: Call OptArticles_Click()
  loc_10003E7: Call Proc_290_43_DFC554(0, 3)
  loc_10003EC: Call Proc_290_35_13414C0(-1)
  loc_10003F1: Call Proc_290_41_136C4E4()
  loc_10003F6: Exit Sub
  loc_10003F7: ' Referenced from: 10001F4
  loc_10003F7: Proc_6_60_E62BC4()
  loc_10003FC: Exit Sub
End Sub

Private Sub Form_Resize() 'ED9C28
  'Data Table: 4D5018
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_ED9B86: Set var_88 = Me.Text1
  loc_ED9B8C: Call 0.Method_Form_Resize0 (CInt(&H18), var_8C)
  loc_ED9BAB: Me.DgMemType.Left = CVar(var_8C.Left)
  loc_ED9BC7: Set var_B4 = Me.Text1
  loc_ED9BCD: Call 0.Method_Form_Resize0 (CInt(&H18), var_B8)
  loc_ED9BE8: Set var_88 = Me.Text1
  loc_ED9BEE: Call 0.Method_Form_Resize0 (CInt(&H18), var_8C)
  loc_ED9C06: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_ED9C15: Me.DgMemType.Top = CVar(var_8C.Left)
  loc_ED9C27: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E28020
  'Data Table: 4D5018
  loc_E28003: Set global_68 = Nothing
  loc_E28015: Set global_56 = Nothing
  loc_E2801C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27D40
  'Data Table: 4D5018
  loc_E27D18: On Error Goto loc_E27D38
  loc_E27D2F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27D37: Exit Sub
  loc_E27D38: ' Referenced from: E27D18
  loc_E27D38: Proc_6_60_E62BC4(Shift)
  loc_E27D3D: Exit Sub
End Sub

Private Sub OptArticles_Click(Index As Integer) 'F6205C
  'Data Table: 4D5018
  Dim var_8C As OptionButton
  Dim var_90 As String
  Dim unk_4D5035 As Connection15
  loc_F61F4B: Call 0.Method_OptArticles_Click0 (Index, var_8C)
  loc_F61F83: var_90 = "SELECT MTL.code as searchcode,MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Type='" & var_8C.Caption
  loc_F61FA1: unk_4D5035.Execute var_90 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F92078 & "' or MTL.LOGSITE_CODE='HO') ORDER BY MTL.Code", var_BC, -1
  loc_F61FB2: Set global_68 = Me.OptArticles
  loc_F61FD7: CVarUnk
  loc_F61FDC: VerifyVarObj
  loc_F61FE2: Set var_88 = Me.DBGrid1
  loc_F61FE8: LateIdStAd
  loc_F6201D: Call Proc_290_42_F795D0(Proc_5_1_100CB50("INI", Me, global_68), Me)
  loc_F62031: Set var_88 = Me.TopCtrl1
  loc_F62037: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030016(False)
  loc_F62048: Set var_88 = Me.TopCtrl1
  loc_F6204E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030017(False)
  loc_F62056: Call Proc_290_41_136C4E4(global_68)
  loc_F6205B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5CD2C
  'Data Table: 4D5018
  loc_E5CD07: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5CD0A:   Exit Sub
  loc_E5CD0B: End If
  loc_E5CD22: global_64 = CInt(CLng(Me.GridSel.Row))
  loc_E5CD2B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '102665C
  'Data Table: 4D5018
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_102645D: If ((CLng(Me.GridSel.Col) <> 0) Or (global_64 = 0)) Then
  loc_1026460:   Exit Sub
  loc_1026461: End If
  loc_10264BD: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_10264C0:   Exit Sub
  loc_10264C1: End If
  loc_10264F0: For var_BA = global_64 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1026509:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1026524:   Me.GridSel.Col = 0
  loc_102653C:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1026556:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1026562:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1026567:   var_EC = 0
  loc_102658A:   var_160 = CVar(CLng(var_88)) 'Long
  loc_102658F:   var_180 = 0
  loc_10265CA:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10265D2:   Set var_A0 = Me.GridSel
  loc_10265D8:   LateIdCallSt
  loc_102660A:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_102661C:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1026644:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_102664E: Next var_BA 'Integer
  loc_1026658: global_64 = 0
  loc_102665B: Exit Sub
End Sub

Private Sub CmdmultiPrint_Click() '1127A24
  'Data Table: 4D5018
  Dim var_A0 As Variant
  Dim var_11C As Variant
  Dim var_B0 As Variant
  Dim var_128 As Double
  Dim var_114 As Variant
  Dim var_88 As Long
  Dim var_8C As Long
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_1E0 As Variant
  Dim unk_4D5085 As Connection15
  Dim var_90 As Recordset15
  loc_112770E: If (Trim(CVar(Me.TXT_FROMBILLNO)) = vbNullString) Then
  loc_1127732:   MsgBox("Serial No # From", &H40, "Validation", var_D0, var_110)
  loc_1127746:   Set var_114 = Me.TXT_FROMBILLNO
  loc_1127757:   Exit Sub
  loc_1127758: End If
  loc_112777A: If (Trim(CVar(Me.TXT_TOBILLNO)) = vbNullString) Then
  loc_112779E:   MsgBox("Serial No # To", &H40, "Validation", var_D0, var_110)
  loc_11277B2:   Set var_114 = Me.TXT_TOBILLNO
  loc_11277C3:   Exit Sub
  loc_11277C4: End If
  loc_11277C8: Set var_11C = Me.TXT_TOBILLNO
  loc_11277DE: var_128 = Val(CStr(var_11C.BoundText))
  loc_1127816: If (CDbl(Val(CStr(Me.TXT_FROMBILLNO.BoundText))) > CDbl(var_128)) Then
  loc_112783A:   MsgBox("Serial No # From Should be less then To", &H40, "Validation", var_D0, var_110)
  loc_112784E:   Set var_114 = Me.TXT_FROMBILLNO
  loc_112785F:   Exit Sub
  loc_1127860: End If
  loc_112787B: var_88 = CLng(Val(CStr(Me.TXT_FROMBILLNO.BoundText)))
  loc_1127891: var_A0 = Me.TXT_TOBILLNO.BoundText
  loc_11278A2: var_8C = CLng(Val(CStr(var_A0)))
  loc_11278E9: var_B0 = CVar("SELECT Code As SearchCode FROM MemTagadaLetter WHERE Type='" & Me.FrPrinting.Tag & "' And (LOGSITE_CODE='" & MemVar_1F92078 & "') AND VDate between ") 'String
  loc_11278F7: Proc_6_7_F25D88(var_A0, MemVar_1F920F4, var_B0, var_204, -1, var_11C)
  loc_1127917: Proc_6_7_F25D88(var_140, MemVar_1F920FC, var_8C & var_A0 & " and ", var_88)
  loc_1127950: var_1E0 = TXT_FROMBILLNO.DispID_8001 & var_140 & "AND Cast(Code As Int) between " & CVar(var_88) & " and " & CVar(var_8C) & " order by Cast(Code As Int)" 
  loc_112795E: unk_4D5085.Execute CStr(var_1E0), var_128, TXT_TOBILLNO.DispID_8001
  loc_1127969: Set var_90 = var_11C
  loc_112799B: ' Referenced from: 1127A15
  loc_11279AA: If Not(var_90.EOF) Then
  loc_11279F5:   Call Proc_290_44_1060A3C(CStr(var_90.Fields.Item("SearchCode").Value), Me.FrPrinting.Tag)
  loc_1127A10:   var_90.MoveNext
  loc_1127A15:   GoTo loc_112799B
  loc_1127A18: End If
  loc_1127A1D: Set var_90 = Nothing
  loc_1127A20: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '12A34E8
  'Data Table: 4D5018
  Dim var_8C As Frame
  Dim var_94 As Variant
  loc_12A2EC8: On Error Goto loc_12A34DF
  loc_12A2EF2: Call Proc_290_42_F795D0(Proc_5_1_100CB50("ADD", Me))
  loc_12A2EFD: Call Proc_290_40_E96898(global_68)
  loc_12A2F02: Call Proc_290_35_13414C0()
  loc_12A2F17: Me.FrArticle.Caption = global_52
  loc_12A2F2B: Set var_8C = Me.OptArticles
  loc_12A2F31: Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_94)
  loc_12A2F4B: If (var_94.Value = &HFF) Then
  loc_12A2F5C:   Set var_8C = Me.Text1
  loc_12A2F62:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A2F6A:   var_94.Text = vbNullString
  loc_12A2F84:   Set var_8C = Me.Text1
  loc_12A2F8A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A2F92:   var_94.Tag = vbNullString
  loc_12A2FAC:   Set var_8C = Me.Text1
  loc_12A2FB2:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A2FBA:   var_94.Text = vbNullString
  loc_12A2FD9:   Set var_8C = Me.Text1
  loc_12A2FDF:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H15), var_94)
  loc_12A2FE7:   var_94.Text = CStr(MemVar_1F920EC)
  loc_12A303F:   Set var_8C = Me.Text1
  loc_12A3045:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H16), var_94, CStr(Format(DateAdd("m", CDbl(1), MemVar_1F920EC), "MMM/YYYY")))
  loc_12A304D:   var_94.Text = 1
  loc_12A3071:   Me.FrArticles.Enabled = False
  loc_12A3084:   Set var_8C = Me.Label1
  loc_12A308A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HD, var_94)
  loc_12A3092:   var_94.Visible = True
  loc_12A30AA:   Set var_8C = Me.Label1
  loc_12A30B0:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HE, var_94)
  loc_12A30B8:   var_94.Caption = "Debit Amt. Upto Date"
  loc_12A30D1:   Set var_8C = Me.Text1
  loc_12A30D7:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A30DF:   var_94.Visible = True
  loc_12A30F8:   Set var_8C = Me.Text1
  loc_12A30FE:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A3106:   var_94.Visible = True
  loc_12A311D:   Set var_8C = Me.Label1
  loc_12A3123:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (&H18, var_94)
  loc_12A312B:   var_94.Visible = True
  loc_12A3143:   Me.FrArticle.Visible = True
  loc_12A3156:   Set var_8C = Me.Text1
  loc_12A315C:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A3164:   var_94.SetFocus
  loc_12A3173: Else
  loc_12A317F:   Set var_8C = Me.OptArticles
  loc_12A3185:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (1, var_94)
  loc_12A319F:   If (var_94.Value = &HFF) Then
  loc_12A31AE:     Me.FrArticles.Enabled = False
  loc_12A31C1:     Set var_8C = Me.Label1
  loc_12A31C7:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HD, var_94)
  loc_12A31CF:     var_94.Visible = False
  loc_12A31E7:     Set var_8C = Me.Label1
  loc_12A31ED:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HE, var_94)
  loc_12A31F5:     var_94.Caption = "Article_26(a) Entry Date"
  loc_12A320E:     Set var_8C = Me.Text1
  loc_12A3214:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A321C:     var_94.Visible = False
  loc_12A3235:     Set var_8C = Me.Text1
  loc_12A323B:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A3243:     var_94.Visible = False
  loc_12A325A:     Set var_8C = Me.Label1
  loc_12A3260:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (&H18, var_94)
  loc_12A3268:     var_94.Visible = False
  loc_12A3280:     Me.FrArticle.Visible = True
  loc_12A328B:   Else
  loc_12A3297:     Set var_8C = Me.OptArticles
  loc_12A329D:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (2, var_94)
  loc_12A32B7:     If (var_94.Value = &HFF) Then
  loc_12A32C8:       Set var_8C = Me.Text1
  loc_12A32CE:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A32D6:       var_94.Text = vbNullString
  loc_12A32F0:       Set var_8C = Me.Text1
  loc_12A32F6:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A32FE:       var_94.Tag = vbNullString
  loc_12A3318:       Set var_8C = Me.Text1
  loc_12A331E:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A3326:       var_94.Text = vbNullString
  loc_12A3345:       Set var_8C = Me.Text1
  loc_12A334B:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H15), var_94)
  loc_12A3353:       var_94.Text = CStr(MemVar_1F920EC)
  loc_12A33AB:       Set var_8C = Me.Text1
  loc_12A33B1:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H16), var_94, CStr(Format(DateAdd("m", CDbl(1), MemVar_1F920EC), "MMM/YYYY")))
  loc_12A33B9:       var_94.Text = 1
  loc_12A33DD:       Me.FrArticles.Enabled = False
  loc_12A33F0:       Set var_8C = Me.Label1
  loc_12A33F6:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HD, var_94, &HFF)
  loc_12A33FE:       var_94.Visible = True
  loc_12A3416:       Set var_8C = Me.Label1
  loc_12A341C:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (&HE, var_94)
  loc_12A3424:       var_94.Caption = "Debit Amt. Upto Date"
  loc_12A343D:       Set var_8C = Me.Text1
  loc_12A3443:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A344B:       var_94.Visible = True
  loc_12A3464:       Set var_8C = Me.Text1
  loc_12A346A:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_12A3472:       var_94.Visible = True
  loc_12A348B:       Set var_8C = Me.Text1
  loc_12A3491:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A3499:       var_94.Visible = True
  loc_12A34B1:       Me.FrArticle.Visible = True
  loc_12A34C4:       Set var_8C = Me.Text1
  loc_12A34CA:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_12A34D2:       var_94.SetFocus
  loc_12A34DE:     End If
  loc_12A34DE:   End If
  loc_12A34DE: End If
  loc_12A34DE: Exit Sub
  loc_12A34DF: ' Referenced from: 12A2EC8
  loc_12A34DF: Proc_6_60_E62BC4(1)
  loc_12A34E4: Exit Sub
  loc_12A34E5: Set var_12C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E827E4
  'Data Table: 4D5018
  loc_E82778: On Error Goto loc_E827DC
  loc_E827A2: Call Proc_290_42_F795D0(Proc_5_1_100CB50("INI", Me))
  loc_E827B6: Set var_90 = Me.TopCtrl1
  loc_E827BC: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030016(False)
  loc_E827CD: Set var_90 = Me.TopCtrl1
  loc_E827D3: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030017(False)
  loc_E827DB: Exit Sub
  loc_E827DC: ' Referenced from: E82778
  loc_E827DC: Proc_6_60_E62BC4(global_68)
  loc_E827E1: Exit Sub
  loc_E827E2: ArrayRebase1Var
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'E8EACC
  'Data Table: 4D5018
  Dim unk_4D5035 As Connection15
  loc_E8EA6C: On Error Goto loc_E8EA70
  loc_E8EA6F: Exit Sub
  loc_E8EA70: ' Referenced from: E8EA6C
  loc_E8EA79: If (CInt(var_A2) = 1) Then
  loc_E8EA82:   unk_4D5035.RollbackTrans
  loc_E8EA87: End If
  loc_E8EA8F: Set var_A8 = Err()
  loc_E8EA95: Call 0.Method_arg_2C (var_AC)
  loc_E8EAB6: MsgBox(CVar(var_AC), &H10, " Deletion Message", var_FC, var_11C)
  loc_E8EAC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E023B4
  'Data Table: 4D5018
  loc_E023A8: On Error Goto loc_E023AC
  loc_E023AB: Exit Sub
  loc_E023AC: ' Referenced from: E023A8
  loc_E023AC: Proc_6_60_E62BC4()
  loc_E023B1: Exit Sub
  loc_E023B2: Set var_5F88 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19E58
  'Data Table: 4D5018
  loc_E19E4D: Me.Global.Unload Me
  loc_E19E55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'E7C948
  'Data Table: 4D5018
  loc_E7C8EC: On Error Goto loc_E7C93F
  loc_E7C909: If (Me.Recordset15.RecordCount <= 0) Then
  loc_E7C92D:   MsgBox("No Records To Search.", &H40, "Information", var_E8, var_108)
  loc_E7C93D:   Exit Sub
  loc_E7C93E: End If
  loc_E7C93E: Exit Sub
  loc_E7C93F: ' Referenced from: E7C8EC
  loc_E7C93F: Proc_6_60_E62BC4()
  loc_E7C944: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E44C74
  'Data Table: 4D5018
  loc_E44C64: Proc_5_0_110649C(&HFF, Me)
  loc_E44C6C: Call Proc_290_41_136C4E4(global_68)
  loc_E44C71: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E44CD8
  'Data Table: 4D5018
  loc_E44CC8: Proc_5_0_110649C(&HFF, Me)
  loc_E44CD0: Call Proc_290_41_136C4E4(global_68)
  loc_E44CD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E44E04
  'Data Table: 4D5018
  loc_E44DF4: Proc_5_0_110649C(&HFF, Me)
  loc_E44DFC: Call Proc_290_41_136C4E4(global_68)
  loc_E44E01: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E450C0
  'Data Table: 4D5018
  loc_E450B0: Proc_5_0_110649C(&HFF, Me)
  loc_E450B8: Call Proc_290_41_136C4E4(global_68)
  loc_E450BD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1021230
  'Data Table: 4D5018
  Dim var_A8 As String
  Dim var_C4 As Variant
  Dim var_164 As Variant
  loc_1021034: On Error Goto loc_102122A
  loc_1021051: If (Me.Recordset15.RecordCount <= 0) Then
  loc_1021054:   Exit Sub
  loc_1021055: End If
  loc_102106C: Me.FrPrinting.Caption = global_52 & " Letter Printing:"
  loc_1021087: Me.FrPrinting.Tag = global_52
  loc_1021092: var_C4 = MemVar_1F920F4
  loc_102109A: Proc_6_7_F25D88(var_D4)
  loc_10210AA: Proc_6_7_F25D88(var_134, MemVar_1F920FC)
  loc_10210B9: var_170 = "CODE"
  loc_10210DB: var_A8 = "SELECT  convert(Char,Cast(Code As Int)) AS CODE, convert(Char,Cast(Code As int)) as Name  FROM MemTagadaletter WHERE Type='" & global_52
  loc_102110F: var_164 = CVar(var_A8 & "'And (LOGSITE_CODE='" & MemVar_1F92078 & "') AND VDate between ") & var_D4 & " and " & var_134 & " order by Cast(Code As Int)" 
  loc_1021118: Proc_6_92_EF7064(CStr(var_164), Me.TXT_FROMBILLNO, "Name")
  loc_102114F: Proc_6_7_F25D88(var_D4, MemVar_1F920F4)
  loc_102115F: Proc_6_7_F25D88(var_134, MemVar_1F920FC)
  loc_102116E: var_170 = "CODE"
  loc_1021190: var_A8 = "SELECT  convert(Char,Cast(Code As Int)) AS CODE, convert(Char,Cast(Code As int)) as Name  FROM MemTagadaletter WHERE Type='" & global_52
  loc_10211C4: var_164 = CVar(var_A8 & "'And (LOGSITE_CODE='" & MemVar_1F92078 & "') AND VDate between ") & var_D4 & " and " & var_134 & " order by Cast(Code As Int)" 
  loc_10211CD: Proc_6_92_EF7064(CStr(var_164), Me.TXT_TOBILLNO, "Name")
  loc_1021205: Me.FrArticles.Enabled = False
  loc_1021219: Me.FrPrinting.Visible = True
  loc_1021226: Set var_9C = Nothing
  loc_1021229: Exit Sub
  loc_102122A: ' Referenced from: 1021034
  loc_102122A: Proc_6_60_E62BC4(var_170, var_170)
  loc_102122F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B64C
  'Data Table: 4D5018
  Dim Me As Recordset15
  loc_E0B643: Me.Requery -1
  loc_E0B648: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1149BDC
  'Data Table: 4D5018
  Dim var_118 As OptionButton
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim unk_4D5035 As Connection15
  Dim var_114 As CheckBox
  loc_1149854: On Error Goto loc_1149BBF
  loc_1149862: If (global_52 = vbNullString) Then
  loc_114987E:   MsgBox("No Aricles Option Is Selected", 0, var_D0, var_F0, var_110)
  loc_114988E:   Exit Sub
  loc_114988F: End If
  loc_114989B: Set var_114 = Me.OptArticles
  loc_11498A1: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_118)
  loc_11498BB: If (var_118.Value = &HFF) Then
  loc_11498C9:   Set var_114 = Me.Text1
  loc_11498CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15))
  loc_11498F8:   If (Proc_6_27_EA565C(var_118, "Debit Upto Date") = 0) Then
  loc_11498FB:     Exit Sub
  loc_11498FC:   End If
  loc_1149907:   Set var_114 = Me.Text1
  loc_114990D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_118)
  loc_1149936:   If (Proc_6_27_EA565C(var_118, "Current Bill Month") = 0) Then
  loc_1149939:     Exit Sub
  loc_114993A:   End If
  loc_1149940:   Call 0.Method_arg_50 (var_12C)
  loc_114996B:   var_B0 = CVar("Are U Sure To Generate Information Under Article_26(a) For Selected Members." & vbCrLf & vbCrLf & "Process Will Blocked Their Accounts.") 'String
  loc_114998B:   If (MsgBox(var_B0, &H21, CVar(var_12C), var_F0, var_110) = 2) Then
  loc_114998E:     Exit Sub
  loc_114998F:   End If
  loc_1149992: Else
  loc_114999E:   Set var_114 = Me.OptArticles
  loc_11499A4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_118)
  loc_11499BE:   If (var_118.Value = &HFF) Then
  loc_11499CC:     Set var_114 = Me.Text1
  loc_11499D2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_118)
  loc_11499FB:     If (Proc_6_27_EA565C(var_118, "Debit Upto Date") = 0) Then
  loc_11499FE:       Exit Sub
  loc_11499FF:     End If
  loc_1149A0A:     Set var_114 = Me.Text1
  loc_1149A10:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_118)
  loc_1149A39:     If (Proc_6_27_EA565C(var_118, "Current Bill Month") = 0) Then
  loc_1149A3C:       Exit Sub
  loc_1149A3D:     End If
  loc_1149A43:     Call 0.Method_arg_50 (var_12C)
  loc_1149A6E:     var_B0 = CVar("Are U Sure To Generate Information Under Article_23 For Selected Members." & vbCrLf & vbCrLf & "Process Will Blocked Their Accounts.") 'String
  loc_1149A8E:     If (MsgBox(var_B0, &H21, CVar(var_12C), var_F0, var_110) = 2) Then
  loc_1149A91:       Exit Sub
  loc_1149A92:     End If
  loc_1149A92:   End If
  loc_1149A92: End If
  loc_1149A94: var_8A = &HFF
  loc_1149AA0: unk_4D5035.BeginTrans var_130
  loc_1149AA9: Set var_114 = Me.TopCtrl1
  loc_1149AAF: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_8A)
  loc_1149AC8: If (CStr(var_118) = "Add") Then
  loc_1149AD8:   var_11A = Me.Check1.Value
  loc_1149AFA:   Call Proc_290_36_170ECBC(global_60, CByte(var_11A))
  loc_1149B02: End If
  loc_1149B08: unk_4D5035.CommitTrans
  loc_1149B19: Set var_114 = Me.OptArticles
  loc_1149B1F: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_118, var_11A)
  loc_1149B27: global_52 = var_118.Value
  loc_1149B39: If (var_11A = &HFF) Then
  loc_1149B41:   Call OptArticles_Click(0)
  loc_1149B49: Else
  loc_1149B55:   Set var_114 = Me.OptArticles
  loc_1149B5B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_118)
  loc_1149B75:   If (var_118.Value = &HFF) Then
  loc_1149B7D:     Call OptArticles_Click(1)
  loc_1149B85:   Else
  loc_1149B91:     Set var_114 = Me.OptArticles
  loc_1149B97:     Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_118)
  loc_1149BB1:     If (var_118.Value = &HFF) Then
  loc_1149BB9:       Call OptArticles_Click(2)
  loc_1149BBE:     End If
  loc_1149BBE:   End If
  loc_1149BBE: End If
  loc_1149BBE: Exit Sub
  loc_1149BBF: ' Referenced from: 1149854
  loc_1149BC5: If (var_8A = &HFF) Then
  loc_1149BCE:   unk_4D5035.RollbackTrans
  loc_1149BD3: End If
  loc_1149BD3: Proc_6_60_E62BC4(var_134)
  loc_1149BD8: Exit Sub
  loc_1149BD9: StAryRecMove
End Sub

Private Sub Text1_GotFocus(Index As Integer) 'FF0428
  'Data Table: 4D5018
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_EE As Integer
  loc_FF0256: Set var_88 = Me.Text1
  loc_FF025C: Call 0.Method_Text1_GotFocus0 (Index)
  loc_FF026A: Proc_6_74_E226B0(var_8C)
  loc_FF0276: Call Proc_290_38_E551CC(var_8C)
  loc_FF027E: var_92 = Index
  loc_FF0289: If (var_92 = CInt(&H18)) Then
  loc_FF02A3:   If (Me.RecordCount > 0) Then
  loc_FF02B1:     Set var_8C = Me.FGPoint
  loc_FF02C9:     Proc_6_137_1193554(Me.DgMemType, global_56, Index)
  loc_FF02D7:   End If
  loc_FF0325:   Set var_88 = Me.Text1
  loc_FF032B:   Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0)
  loc_FF0333:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF034B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FF034E:     Exit Sub
  loc_FF034F:   End If
  loc_FF035C:   Set var_88 = Me.Text1
  loc_FF0362:   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_FF036A:   var_A0 = var_8C.Text
  loc_FF037C:   var_B0 = "Name"
  loc_FF03B7:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FF03C0:     Me.MoveFirst
  loc_FF03E3:     Set var_88 = Me.Text1
  loc_FF03E9:     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FF03F1:     0 = var_8C.Text
  loc_FF040A:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_FF041F:   End If
  loc_FF041F: End If
  loc_FF0422: var_EE = Index
  loc_FF0425: Exit Sub
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer) '10C0464
  'Data Table: 4D5018
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_C4 As String
  loc_10C019E: If (CLng(Shift) = &H1B) Then
  loc_10C01A1:   Call Proc_290_38_E551CC()
  loc_10C01A6:   Exit Sub
  loc_10C01A7: End If
  loc_10C01AA: var_88 = KeyCode
  loc_10C01B5: If (var_88 = CInt(&H18)) Then
  loc_10C01D5:   Set var_9C = Me.FGPoint
  loc_10C01E0:   Set var_98 = Nothing
  loc_10C020E:   Proc_6_69_134A198(Me.DgMemType, Me.Text1, KeyCode, global_56, Shift, 0)
  loc_10C022D:   var_B0 = Me.RecordCount
  loc_10C027D:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10C0284:     Set var_98 = Me.DgMemType
  loc_10C02A3:     Proc_6_138_106D6F8(var_98, global_56, KeyCode, Me.FGPoint, 1)
  loc_10C02B1:   End If
  loc_10C02B1: End If
  loc_10C02EA: If ((CBool(Me.DgMemType.Visible) = 0) And (Me.FrArticle.Visible = 0)) Then
  loc_10C0302:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10C030B:     Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_10C0310:   End If
  loc_10C0314:   Set var_8C = Me.TopCtrl1
  loc_10C031A:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_9C)
  loc_10C0333:   If (CStr(0) = "Add") Then
  loc_10C034B:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10C0354:       Proc_6_76_E52838(Shift, arg_14)
  loc_10C0359:     End If
  loc_10C035C:   Else
  loc_10C0360:     Set var_8C = Me.TopCtrl1
  loc_10C0366:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_88)
  loc_10C036E:     var_C4 = CStr()
  loc_10C037F:     If (var_C4 = "Edit") Then
  loc_10C0397:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10C03A0:         Proc_6_76_E52838(Shift)
  loc_10C03A5:       End If
  loc_10C03A5:     End If
  loc_10C03A5:   End If
  loc_10C03C0:   If (Me.FrArticle.Visible = &HFF) Then
  loc_10C03D8:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10C03E1:       Proc_6_75_E527CC(Shift, arg_14)
  loc_10C03E6:     End If
  loc_10C03F0:     If (CLng(Shift) = &H26) Then
  loc_10C03F9:       Proc_6_76_E52838(Shift, arg_14)
  loc_10C03FE:     End If
  loc_10C03FE:   End If
  loc_10C03FE: End If
  loc_10C03FE: Exit Sub
  loc_10C0407: Set var_8C = Err()
  loc_10C040D: Call 0.Method_arg_1C (var_B0)
  loc_10C041E: If (var_B0 <> 0) Then
  loc_10C0429:   Set var_8C = Err()
  loc_10C042F:   Call 0.Method_arg_2C (var_C4)
  loc_10C0450:   MsgBox(CVar(var_C4), &H40, "Validation", var_104, var_124)
  loc_10C0463: End If
  loc_10C0463: Exit Sub
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) 'F02DCC
  'Data Table: 4D5018
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_5FFF As Double
  loc_F02CF6: Proc_6_133_E7EF78(var_94)
  loc_F02D0B: If (CInt(var_94) = &HD) Then
  loc_F02D10:   arg_10 = 0
  loc_F02D13: End If
  loc_F02D16: Proc_6_58_E054C0(arg_10, arg_10)
  loc_F02D1E: var_96 = KeyAscii
  loc_F02D29: If (var_96 = CInt(&H14)) Then
  loc_F02D36:   Set var_9C = Me.Text1
  loc_F02D3C:   Call 0.Method_Text1_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_F02D57:   Proc_6_42_129A86C(var_A0, arg_10, 9)
  loc_F02D66: Else
  loc_F02D6E:   If (var_96 = CInt(&H18)) Then
  loc_F02D8D:     If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_F02DBA:       Proc_183_41_1459C78(Me.Text1, KeyAscii, global_56, arg_10, "Name")
  loc_F02DC9:     End If
  loc_F02DC9:   End If
  loc_F02DC9: End If
  loc_F02DC9: Exit Sub
  loc_F02DCA: var_5FFF = 0
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer) 'E003D4
  'Data Table: 4D5018
  Dim var_86 As Integer
  loc_E003CF: var_86 = KeyCode
  loc_E003D2: Exit Sub
End Sub

Private Sub Text1_LostFocus(Index As Integer) 'E49CF4
  'Data Table: 4D5018
  loc_E49CD2: Set var_88 = Me.Text1
  loc_E49CD8: Call 0.Method_Text1_LostFocus0 (Index)
  loc_E49CE6: Proc_6_73_E22704(var_8C)
  loc_E49CF2: Exit Sub
End Sub

Private Sub Text1_Validate(Cancel As Boolean) '1133A44
  'Data Table: 4D5018
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_F8 As Double
  Dim var_C4 As Variant
  Dim var_EC As TextBox
  Dim var_94 As String
  Dim var_FC As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  loc_11336D7: var_86 = Cancel
  loc_11336E2: If (var_86 = CInt(&H14)) Then
  loc_11336F2:   Set var_8C = Me.Text1
  loc_11336F8:   Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_113370D:   var_F8 = Val(var_90.Text)
  loc_1133745:   Set var_E8 = Me.Text1
  loc_113374B:   Call 0.Method_Text1_Validate0 (Cancel, var_EC, CStr(Format(CVar(var_F8), "0.00")), 1)
  loc_1133753:   var_EC.Text = 1
  loc_1133776: Else
  loc_113377E:   If (var_86 = CInt(&H15)) Then
  loc_113378B:     Set var_8C = Me.Text1
  loc_1133791:     Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_11337B2:     Set var_EC = Me.Text1
  loc_11337B8:     Call 0.Method_Text1_Validate0 (CInt(&H15), var_FC)
  loc_11337C0:     var_FC.Text = Proc_6_33_1512840(var_90, var_F8)
  loc_11337D6:   Else
  loc_11337DE:     If (var_86 = CInt(&H16)) Then
  loc_11337EB:       Set var_8C = Me.Text1
  loc_11337F1:       Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_1133804:       var_94 = Proc_6_120_133A1D8(var_90)
  loc_1133812:       Set var_EC = Me.Text1
  loc_1133818:       Call 0.Method_Text1_Validate0 (CInt(&H16), var_FC)
  loc_1133820:       var_FC.Text = var_94
  loc_1133836:     Else
  loc_113383E:       If (var_86 = CInt(&H18)) Then
  loc_113384B:         Set var_8C = Me.Text1
  loc_1133851:         Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_113387A:         If (Trim(CVar(var_90)) = vbNullString) Then
  loc_113388A:           Set var_8C = Me.Text1
  loc_1133890:           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_1133898:           var_90.Tag = vbNullString
  loc_11338A4:         End If
  loc_11338E5:         var_C4 = ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF)))
  loc_11338F6:         Set var_8C = Me.Text1
  loc_11338FC:         Call 0.Method_Text1_Validate0 (Cancel, var_90, var_94)
  loc_1133904:         var_C4 = var_90.Text
  loc_113393A:         If CBool(var_86 Or (Trim(CVar(var_94)) = vbNullString)) Then
  loc_113394A:           Set var_8C = Me.Text1
  loc_1133950:           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_1133958:           var_90.Text = vbNullString
  loc_1133971:           Set var_8C = Me.Text1
  loc_1133977:           Call 0.Method_Text1_Validate0 (Cancel, var_90)
  loc_113397F:           var_90.Tag = vbNullString
  loc_113398E:         Else
  loc_11339C6:           Set var_E8 = Me.Text1
  loc_11339CC:           Call 0.Method_Text1_Validate0 (Cancel, var_EC)
  loc_11339D4:           var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_1133A20:           Set var_E8 = Me.Text1
  loc_1133A26:           Call 0.Method_Text1_Validate0 (Cancel, var_EC)
  loc_1133A2E:           var_EC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_1133A42:         End If
  loc_1133A42:       End If
  loc_1133A42:     End If
  loc_1133A42:   End If
  loc_1133A42: End If
  loc_1133A42: Exit Sub
End Sub

Private Sub DGMemType_UnknownEvent_9 'FA5300
  'Data Table: 4D5018
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_C8 As TextBox
  Dim var_B0 As TextBox
  loc_FA5188: On Error Goto loc_FA5298
  loc_FA519A: Me.DgMemType.Visible = False
  loc_FA51AB: var_AC = Me.RecordCount
  loc_FA51B9: If (var_AC > 0) Then
  loc_FA51F5:   Set var_C4 = Me.Text1
  loc_FA51FB:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H18), var_C8)
  loc_FA5203:   var_C8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_FA5231:   var_B0 = Me.Fields.Item("Code")
  loc_FA5242:   var_CC = Proc_6_38_E68A98(CVar(var_B0))
  loc_FA5250:   Set var_C4 = Me.Text1
  loc_FA5256:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H18), var_C8)
  loc_FA525E:   var_C8.Tag = var_CC
  loc_FA5272: End If
  loc_FA527D: Set var_A8 = Me.Text1
  loc_FA5283: Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H18))
  loc_FA528B: var_B0.SetFocus
  loc_FA5297: Exit Sub
  loc_FA5298: ' Referenced from: FA5188
  loc_FA52A0: Set var_A8 = Err()
  loc_FA52A6: Call 0.Method_arg_1C (var_AC)
  loc_FA52B7: If (var_AC <> 0) Then
  loc_FA52C2:   Set var_A8 = Err()
  loc_FA52C8:   Call 0.Method_arg_2C (var_CC)
  loc_FA52E9:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA52FC: End If
  loc_FA52FC: Exit Sub
End Sub

Private Sub DGMemType_UnknownEvent_1F 'EA224C
  'Data Table: 4D5018
  Dim var_A8 As Variant
  loc_EA21CC: Set var_88 = Me.DgMemType
  loc_EA21F6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA21FE: Set var_BC = Me.DgMemType
  loc_EA223A: Proc_6_138_106D6F8(Me.DgMemType, global_56, CInt(&H18), Me.FGPoint)
  loc_EA2248: Exit Sub
End Sub

Private Sub CmdExit_Click() 'E2DE58
  'Data Table: 4D5018
  loc_E2DE38: Me.FrArticles.Enabled = True
  loc_E2DE4C: Me.FrPrinting.Visible = False
  loc_E2DE54: Exit Sub
End Sub

Public Sub DBGrid1_UnknownEvent_1A(Index As Integer) '10DD2AC
  'Data Table: 4D5018
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_15C As String
  Dim unk_4D5035 As Connection15
  loc_10DCFC4: On Error Goto loc_10DD266
  loc_10DCFE1: If (Me.Recordset15.RecordCount > 0) Then
  loc_10DCFF5:   Set var_8C = Me.DBGrid1
  loc_10DD01C:   var_C8 = CVar(DBGrid1.DispID_69.Item(CVar(Index)).DataField) 'String
  loc_10DD022:   var_D8 = Ucase(var_C8)
  loc_10DD02A:   var_E8 = var_D8 'Variant
  loc_10DD049:   If Not (var_E8 = "CODE") Then
  loc_10DD057:     If Not (var_E8 = "VDATE") Then
  loc_10DD065:       If Not (var_E8 = "DUEAMT") Then
  loc_10DD073:         If Not (var_E8 = "CURMONTHBILLAMT") Then
  loc_10DD081:           If Not (var_E8 = "BALANCETILLDATE") Then
  loc_10DD08F:             If Not (var_E8 = "CURBILLMONTH") Then
  loc_10DD09D:               If (var_E8 = "TILLDATE") Then
  loc_10DD0A0:               End If
  loc_10DD0A0:             End If
  loc_10DD0A0:           End If
  loc_10DD0A0:         End If
  loc_10DD0A0:       End If
  loc_10DD0A0:     End If
  loc_10DD0B7:     var_B8 = "SELECT MTL.code as searchcode,MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Type='" & global_52
  loc_10DD0E0:     Set var_8C = Me.DBGrid1
  loc_10DD108:     var_15C = var_B8 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F92078 & "' or MTL.LOGSITE_CODE='HO') ORDER BY MTL." & DBGrid1.DispID_69.Item(CVar(Index)).DataField
  loc_10DD111:     unk_4D5035.Execute var_15C, var_C8, -1
  loc_10DD122:     Set global_68 = var_160
  loc_10DD14C:   Else
  loc_10DD157:     If Not (var_E8 = "CONPREFIX") Then
  loc_10DD165:       If Not (var_E8 = "CONPERSON") Then
  loc_10DD173:         If (var_E8 = "CARDNO") Then
  loc_10DD176:         End If
  loc_10DD176:       End If
  loc_10DD18D:       var_B8 = "SELECT MTL.code as searchcode,MTL.*,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Type='" & global_52
  loc_10DD1B6:       Set var_8C = Me.DBGrid1
  loc_10DD1DE:       var_15C = var_B8 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F92078 & "' or MTL.LOGSITE_CODE='HO') ORDER BY SG." & DBGrid1.DispID_69.Item(CVar(Index)).DataField
  loc_10DD1E7:       unk_4D5035.Execute var_15C, var_C8, -1
  loc_10DD1F8:       Set global_68 = var_160
  loc_10DD21F:       GoTo loc_10DD222
  loc_10DD222:       ' Referenced from:   10DD21F
  loc_10DD222:     End If
  loc_10DD222:   End If
  loc_10DD230:   global_68.Requery -1
  loc_10DD241:   CVarUnk
  loc_10DD246:   VerifyVarObj
  loc_10DD252:   LateIdStAd
  loc_10DD260:   Call Proc_290_41_136C4E4(Me.DBGrid1, global_68)
  loc_10DD265: End If
  loc_10DD265: Exit Sub
  loc_10DD266: ' Referenced from: 10DCFC4
  loc_10DD26E: Set var_8C = Err()
  loc_10DD274: Call 0.Method_arg_2C (var_B8, var_160)
  loc_10DD295: MsgBox(CVar(var_B8), &H10, "Information", var_D8, var_174)
  loc_10DD2A8: Exit Sub
  loc_10DD2A9: Exit Sub
End Sub

Public Sub DBGrid1_UnknownEvent_1D(Index As Integer) 'E14DF8
  'Data Table: 4D5018
  loc_E14DED: If ((Index = &H26) Or (Index = &H28)) Then
  loc_E14DF0:   Call Proc_290_41_136C4E4()
  loc_E14DF5: End If
  loc_E14DF5: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_22 'E8E970
  'Data Table: 4D5018
  loc_E8E904: On Error Goto loc_E8E92A
  loc_E8E921: If (Me.Recordset15.RecordCount > 0) Then
  loc_E8E924:   Call Proc_290_41_136C4E4()
  loc_E8E929: End If
  loc_E8E929: Exit Sub
  loc_E8E92A: ' Referenced from: E8E904
  loc_E8E932: Set var_8C = Err()
  loc_E8E938: Call 0.Method_arg_2C (var_90)
  loc_E8E959: MsgBox(CVar(var_90), &H10, "Information", var_E0, var_100)
  loc_E8E96C: Exit Sub
  loc_E8E96D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E9D190
  'Data Table: 4D5018
  loc_E9D116: On Error Goto loc_E9D189
  loc_E9D122: Me.Recordset15.MoveFirst
  loc_E9D14F: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9D17B: Proc_5_0_110649C(&HFF, Me, global_68)
  loc_E9D183: Call Proc_290_41_136C4E4(0)
  loc_E9D188: Exit Sub
  loc_E9D189: ' Referenced from: E9D116
  loc_E9D189: Proc_6_60_E62BC4(var_A0)
  loc_E9D18E: Exit Sub
End Sub

Public Sub Proc_290_35_13414C0
  'Data Table: 4D5018
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_1340CDE: Me.GridSel.Rows = 1
  loc_1340CF2: Me.GridSel.Cols = &HE
  loc_1340CF7: var_98 = 0
  loc_1340D03: var_BC = CVar(CLng(0)) 'Long
  loc_1340D08: var_DC = vbNullString
  loc_1340D11: LateIdCallSt
  loc_1340D1C: var_98 = CVar(CLng(0)) 'Long
  loc_1340D21: var_BC = &H258
  loc_1340D2D: LateIdCallSt
  loc_1340D35: var_98 = 0
  loc_1340D41: var_BC = CVar(CLng(1)) 'Long
  loc_1340D46: var_DC = "MemCode"
  loc_1340D4F: LateIdCallSt
  loc_1340D5A: var_98 = CVar(CLng(1)) 'Long
  loc_1340D5F: var_BC = 0
  loc_1340D6B: LateIdCallSt
  loc_1340D73: var_98 = 0
  loc_1340D7F: var_BC = CVar(CLng(2)) 'Long
  loc_1340D84: var_DC = "Serial No."
  loc_1340D8D: LateIdCallSt
  loc_1340D98: var_98 = CVar(CLng(2)) 'Long
  loc_1340DA3: var_BC = CVar(CInt(1)) 'Integer
  loc_1340DAA: LateIdCallSt
  loc_1340DB5: var_98 = CVar(CLng(2)) 'Long
  loc_1340DC0: var_BC = CVar(CInt(1)) 'Integer
  loc_1340DC7: LateIdCallSt
  loc_1340DE6: If ((global_52 = "Article_26(a)") Or (global_52 = "Article_23")) Then
  loc_1340DEC:   var_98 = CVar(CLng(2)) 'Long
  loc_1340DF1:   var_BC = 0
  loc_1340DFD:   LateIdCallSt
  loc_1340E08: Else
  loc_1340E0B:   var_98 = CVar(CLng(2)) 'Long
  loc_1340E10:   var_BC = &H384
  loc_1340E1C:   LateIdCallSt
  loc_1340E24: End If
  loc_1340E24: var_98 = 0
  loc_1340E30: var_BC = CVar(CLng(3)) 'Long
  loc_1340E35: var_DC = "Entry Date"
  loc_1340E3E: LateIdCallSt
  loc_1340E49: var_98 = CVar(CLng(3)) 'Long
  loc_1340E54: var_BC = CVar(CInt(1)) 'Integer
  loc_1340E5B: LateIdCallSt
  loc_1340E66: var_98 = CVar(CLng(3)) 'Long
  loc_1340E71: var_BC = CVar(CInt(1)) 'Integer
  loc_1340E78: LateIdCallSt
  loc_1340E83: var_98 = CVar(CLng(3)) 'Long
  loc_1340E88: var_BC = &H44C
  loc_1340E94: LateIdCallSt
  loc_1340E9C: var_98 = 0
  loc_1340EA8: var_BC = CVar(CLng(4)) 'Long
  loc_1340EAD: var_DC = "Prefix"
  loc_1340EB6: LateIdCallSt
  loc_1340EC1: var_98 = CVar(CLng(4)) 'Long
  loc_1340ECC: var_BC = CVar(CInt(1)) 'Integer
  loc_1340ED3: LateIdCallSt
  loc_1340EDE: var_98 = CVar(CLng(4)) 'Long
  loc_1340EE9: var_BC = CVar(CInt(1)) 'Integer
  loc_1340EF0: LateIdCallSt
  loc_1340EFB: var_98 = CVar(CLng(4)) 'Long
  loc_1340F00: var_BC = 0
  loc_1340F0C: LateIdCallSt
  loc_1340F14: var_98 = 0
  loc_1340F20: var_BC = CVar(CLng(5)) 'Long
  loc_1340F25: var_DC = "Con. Person"
  loc_1340F2E: LateIdCallSt
  loc_1340F39: var_98 = CVar(CLng(5)) 'Long
  loc_1340F44: var_BC = CVar(CInt(1)) 'Integer
  loc_1340F4B: LateIdCallSt
  loc_1340F56: var_98 = CVar(CLng(5)) 'Long
  loc_1340F61: var_BC = CVar(CInt(1)) 'Integer
  loc_1340F68: LateIdCallSt
  loc_1340F73: var_98 = CVar(CLng(5)) 'Long
  loc_1340F78: var_BC = &HBB8
  loc_1340F84: LateIdCallSt
  loc_1340F8C: var_98 = 0
  loc_1340F98: var_BC = CVar(CLng(6)) 'Long
  loc_1340F9D: var_DC = "Card No."
  loc_1340FA6: LateIdCallSt
  loc_1340FB1: var_98 = CVar(CLng(6)) 'Long
  loc_1340FBC: var_BC = CVar(CInt(1)) 'Integer
  loc_1340FC3: LateIdCallSt
  loc_1340FCE: var_98 = CVar(CLng(6)) 'Long
  loc_1340FD9: var_BC = CVar(CInt(1)) 'Integer
  loc_1340FE0: LateIdCallSt
  loc_1340FEB: var_98 = CVar(CLng(6)) 'Long
  loc_1340FF0: var_BC = &H320
  loc_1340FFC: LateIdCallSt
  loc_1341004: var_98 = 0
  loc_1341010: var_BC = CVar(CLng(7)) 'Long
  loc_1341015: var_DC = "Due Amt."
  loc_134101E: LateIdCallSt
  loc_1341029: var_98 = CVar(CLng(7)) 'Long
  loc_1341034: var_BC = CVar(CInt(7)) 'Integer
  loc_134103B: LateIdCallSt
  loc_1341046: var_98 = CVar(CLng(7)) 'Long
  loc_1341051: var_BC = CVar(CInt(7)) 'Integer
  loc_1341058: LateIdCallSt
  loc_1341063: var_98 = CVar(CLng(7)) 'Long
  loc_1341068: var_BC = &H44C
  loc_1341074: LateIdCallSt
  loc_134107C: var_98 = 0
  loc_1341088: var_BC = CVar(CLng(8)) 'Long
  loc_134108D: var_DC = "Cur. Bill Amt."
  loc_1341096: LateIdCallSt
  loc_13410A1: var_98 = CVar(CLng(8)) 'Long
  loc_13410AC: var_BC = CVar(CInt(7)) 'Integer
  loc_13410B3: LateIdCallSt
  loc_13410BE: var_98 = CVar(CLng(8)) 'Long
  loc_13410C9: var_BC = CVar(CInt(7)) 'Integer
  loc_13410D0: LateIdCallSt
  loc_13410DB: var_98 = CVar(CLng(8)) 'Long
  loc_13410E0: var_BC = &H4B0
  loc_13410EC: LateIdCallSt
  loc_13410F4: var_98 = 0
  loc_1341100: var_BC = CVar(CLng(9)) 'Long
  loc_1341105: var_DC = "Credit Amt."
  loc_134110E: LateIdCallSt
  loc_1341119: var_98 = CVar(CLng(9)) 'Long
  loc_1341124: var_BC = CVar(CInt(7)) 'Integer
  loc_134112B: LateIdCallSt
  loc_1341136: var_98 = CVar(CLng(9)) 'Long
  loc_1341141: var_BC = CVar(CInt(7)) 'Integer
  loc_1341148: LateIdCallSt
  loc_1341153: var_98 = CVar(CLng(9)) 'Long
  loc_1341158: var_BC = &H4B0
  loc_1341164: LateIdCallSt
  loc_134116C: var_98 = 0
  loc_1341178: var_BC = CVar(CLng(&HA)) 'Long
  loc_134117D: var_DC = "Tot Due Amt."
  loc_1341186: LateIdCallSt
  loc_1341191: var_98 = CVar(CLng(&HA)) 'Long
  loc_134119C: var_BC = CVar(CInt(7)) 'Integer
  loc_13411A3: LateIdCallSt
  loc_13411AE: var_98 = CVar(CLng(&HA)) 'Long
  loc_13411B9: var_BC = CVar(CInt(7)) 'Integer
  loc_13411C0: LateIdCallSt
  loc_13411CB: var_98 = CVar(CLng(&HA)) 'Long
  loc_13411D0: var_BC = &H514
  loc_13411DC: LateIdCallSt
  loc_13411E4: var_98 = 0
  loc_13411F0: var_BC = CVar(CLng(&HB)) 'Long
  loc_13411F5: var_DC = "Bill Month"
  loc_13411FE: LateIdCallSt
  loc_1341209: var_98 = CVar(CLng(&HB)) 'Long
  loc_1341214: var_BC = CVar(CInt(1)) 'Integer
  loc_134121B: LateIdCallSt
  loc_1341226: var_98 = CVar(CLng(&HB)) 'Long
  loc_1341231: var_BC = CVar(CInt(1)) 'Integer
  loc_1341238: LateIdCallSt
  loc_1341243: var_98 = CVar(CLng(&HB)) 'Long
  loc_1341248: var_BC = &H384
  loc_1341254: LateIdCallSt
  loc_134125C: var_98 = 0
  loc_1341268: var_BC = CVar(CLng(&HC)) 'Long
  loc_134126D: var_DC = "Till Date"
  loc_1341276: LateIdCallSt
  loc_1341281: var_98 = CVar(CLng(&HC)) 'Long
  loc_134128C: var_BC = CVar(CInt(1)) 'Integer
  loc_1341293: LateIdCallSt
  loc_134129E: var_98 = CVar(CLng(&HC)) 'Long
  loc_13412A9: var_BC = CVar(CInt(1)) 'Integer
  loc_13412B0: LateIdCallSt
  loc_13412BB: var_98 = CVar(CLng(&HC)) 'Long
  loc_13412C0: var_BC = &H44C
  loc_13412CC: LateIdCallSt
  loc_13412D4: var_98 = 0
  loc_13412E0: var_BC = CVar(CLng(&HD)) 'Long
  loc_13412E5: var_DC = "A/C Name"
  loc_13412EE: LateIdCallSt
  loc_13412F9: var_98 = CVar(CLng(&HD)) 'Long
  loc_1341304: var_BC = CVar(CInt(1)) 'Integer
  loc_134130B: LateIdCallSt
  loc_1341316: var_98 = CVar(CLng(&HD)) 'Long
  loc_1341321: var_BC = CVar(CInt(1)) 'Integer
  loc_1341328: LateIdCallSt
  loc_1341333: var_98 = CVar(CLng(&HD)) 'Long
  loc_1341338: var_BC = &HDAC
  loc_1341344: LateIdCallSt
  loc_134134C: var_98 = vbNullString
  loc_1341356: Set var_AC = Me.GridSel
  loc_134137A: Me.GridSel.FixedRows = 1
  loc_1341384: Set var_88 = Nothing 
  loc_1341398: ReDim Preserve global_60(0 To 0)
  loc_13413AF: global_60(0) = 0
  loc_13413B0: var_98 = 0
  loc_13413E1: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_13413F0: var_98 = 0
  loc_1341421: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_1341452: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_1341483: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_13414A2: Me.Check1.Value = CInt(0)
  loc_13414B6: Me.Check1.Visible = False
  loc_13414BE: Exit Sub
End Sub

Public Sub Proc_290_36_170ECBC(arg_C, arg_10, arg_14) '170ECBC
  'Data Table: 4D5018
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_8C As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_EC As String
  Dim var_C8 As Variant
  Dim var_F8 As String
  Dim unk_4D5035 As Connection15
  Dim var_FC As Variant
  Dim var_100 As Variant
  Dim var_114 As String
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_1F4 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_670 As Double
  Dim var_378 As Variant
  Dim var_3C0 As String
  Dim var_678 As Double
  Dim var_680 As Double
  Dim var_688 As Double
  Dim var_580 As Variant
  Dim var_110 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_348 As Variant
  Dim var_368 As Variant
  Dim var_3E0 As Variant
  Dim var_550 As Variant
  Dim var_5A0 As Variant
  Dim var_5C0 As Variant
  Dim var_5E0 As Variant
  Dim var_600 As Variant
  Dim var_590 As Variant
  Dim var_664 As Variant
  loc_170D196: var_86 = &HFF
  loc_170D19B: var_88 = 0
  loc_170D1A7: If (CInt(arg_10) = 1) Then
  loc_170D1CF:   For var_A8 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_8A = var_A8 'Integer
  loc_170D1D8:     var_8C = var_8A
  loc_170D1DF:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170D1F6:     var_A4 = Me.GridSel.TextMatrix)
  loc_170D212:     If (CStr(var_A4) <> vbNullString) Then
  loc_170D21B:       var_C8 = 0
  loc_170D238:       var_EC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),0)+1 AS MyCode From MemTagadaLetter where Site_Code='" & MemVar_1F92070
  loc_170D256:       unk_4D5035.Execute CStr(var_A4) & "' And Type='" & arg_14 & "'", var_A4, -1
  loc_170D25E:       var_94 = var_94.Fields
  loc_170D266:       var_C8 = var_FC.Item(var_FC)
  loc_170D26E:       var_100 = var_100.Value
  loc_170D2AD:       var_A4 = "00000000"
  loc_170D2C1:       var_110 = Format(CStr(var_110), var_A4)
  loc_170D2D0:       global_72 = CStr(var_110)
  loc_170D2E6:       If (arg_14 = "Article_26(a)") Then
  loc_170D2F4:         Proc_6_7_F25D88(var_A4, MemVar_1F920EC, 1, 1, var_110, CVar(CLng(1)))
  loc_170D2FD:         var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170D305:         var_144 = CVar(CLng(1)) 'Long
  loc_170D314:         var_164 = Me.GridSel.TextMatrix)
  loc_170D335:         Set var_FC = Me.GridSel
  loc_170D33B:         var_1F4 = var_FC.TextMatrix)
  loc_170D373:         Proc_6_7_F25D88(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170D37C:         var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170D3A6:         var_670 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170D3D7:         var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170D408:         var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170D439:         var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170D441:         var_580 = CVar(Proc_6_15_EF2C1C(var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)), CVar(CLng(var_8C)), var_678, CVar(CLng(8)))) 'String
  loc_170D447:         Proc_6_7_F25D88(var_590, var_580, CVar(CLng(var_8C)), var_670, CVar(CLng(7)))
  loc_170D460:         var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170D47F:         var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170D4DA:         var_368 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(var_670) & "," 
  loc_170D539:         var_5C0 = var_368 & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(MemVar_1F92070) & "'," & var_590 & ",'" 
  loc_170D54C:         var_600 = var_5C0 & CVar(MemVar_1F920C8) & "','A','" 
  loc_170D56D:         unk_4D5035.Execute CStr(var_600 & CVar(MemVar_1F92078) & "')"), var_664, -1
  loc_170D5F1:         var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170D5F9:         var_D8 = CVar(CLng(1)) 'Long
  loc_170D608:         var_A4 = Me.GridSel.TextMatrix)
  loc_170D641:         var_114 = "Update SubGroup Set AllowCredit='N' Where SubCode='" & CStr(var_A4) & "' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')"
  loc_170D64A:         unk_4D5035.Execute var_114, var_110, -1
  loc_170D66D:       Else
  loc_170D675:         If (arg_14 = "Article_26(b)") Then
  loc_170D683:           Proc_6_7_F25D88(var_A4, MemVar_1F920EC, var_FC, var_A4, var_D8, MemVar_1F920EC)
  loc_170D68C:           var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170D694:           var_144 = CVar(CLng(1)) 'Long
  loc_170D6A3:           var_164 = Me.GridSel.TextMatrix)
  loc_170D6C4:           Set var_FC = Me.GridSel
  loc_170D6CA:           var_1F4 = var_FC.TextMatrix)
  loc_170D702:           Proc_6_7_F25D88(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170D70B:           var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170D713:           var_304 = CVar(CLng(7)) 'Long
  loc_170D73C:           var_378 = CVar(CLng(var_8C)) 'Long
  loc_170D766:           var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170D797:           var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170D7C8:           var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170D7E6:           var_550 = Me.GridSel.TextMatrix)
  loc_170D7F7:           var_5E0 = CVar(Proc_6_15_EF2C1C(var_550, CVar(CLng(2)), CVar(CLng(var_8C)), var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)))) 'String
  loc_170D7FD:           Proc_6_7_F25D88(var_600, var_5E0, CVar(CLng(var_8C)), var_678, CVar(CLng(8)))
  loc_170D816:           var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,ContraCode,ContraType,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170D835:           var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170D887:           var_348 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(Val(CStr(Me.GridSel.TextMatrix)))) 
  loc_170D8E0:           var_590 = var_348 & "," & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(CStr(var_550)) & "','Article_26(a)','" 
  loc_170D90D:           var_664 = var_590 & CVar(MemVar_1F92070) & "'," & var_600 & ",'" & CVar(MemVar_1F920C8) 
  loc_170D937:           unk_4D5035.Execute CStr(var_664 & "','A','" & CVar(MemVar_1F92078) & "')"), var_718, -1
  loc_170D9C5:           var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170D9CD:           var_D8 = CVar(CLng(2)) 'Long
  loc_170D9DC:           var_A4 = Me.GridSel.TextMatrix)
  loc_170DA1F:           var_3C0 = "Update MemTagadaLetter Set ContraCode='" & global_72 & "',ContraType='" & arg_14 & "' Where Code='" & CStr(var_A4)
  loc_170DA3D:           unk_4D5035.Execute var_3C0 & "' And Type='Article_26(a)' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_110, -1
  loc_170DA68:         Else
  loc_170DA70:           If (arg_14 = "Article_23") Then
  loc_170DA7E:             Proc_6_7_F25D88(var_A4, MemVar_1F920EC, var_FC, var_A4, var_D8, MemVar_1F920EC)
  loc_170DA87:             var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170DA8F:             var_144 = CVar(CLng(1)) 'Long
  loc_170DA9E:             var_164 = Me.GridSel.TextMatrix)
  loc_170DABF:             Set var_FC = Me.GridSel
  loc_170DAC5:             var_1F4 = var_FC.TextMatrix)
  loc_170DAFD:             Proc_6_7_F25D88(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170DB06:             var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170DB30:             var_670 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170DB61:             var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170DB92:             var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170DBC3:             var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170DBCB:             var_580 = CVar(Proc_6_15_EF2C1C(var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)), CVar(CLng(var_8C)), var_678, CVar(CLng(8)))) 'String
  loc_170DBD1:             Proc_6_7_F25D88(var_590, var_580, CVar(CLng(var_8C)), var_670, CVar(CLng(7)))
  loc_170DBEA:             var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170DC09:             var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170DC5B:             var_348 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(var_670) 
  loc_170DCBA:             var_5A0 = var_348 & "," & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(MemVar_1F92070) & "'," & var_590 
  loc_170DCF7:             unk_4D5035.Execute CStr(var_5A0 & ",'" & CVar(MemVar_1F920C8) & "','A','" & CVar(MemVar_1F92078) & "')"), var_664, -1
  loc_170DD7B:             var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170DD83:             var_D8 = CVar(CLng(1)) 'Long
  loc_170DDC4:             var_F8 = "Update SubGroup Set AllowCredit='N' Where SubCode='" & CStr(Me.GridSel.TextMatrix)) & "' And (LOGSITE_CODE='" & MemVar_1F92078
  loc_170DDD4:             unk_4D5035.Execute var_F8 & "' or LOGSITE_CODE='HO')", var_110, -1
  loc_170DDF4:           End If
  loc_170DDF4:         End If
  loc_170DDF4:       End If
  loc_170DDF6:       var_88 = &HFF
  loc_170DE1E:       For var_720 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_720 'Integer
  loc_170DE37:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_170DE52:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_170DE6D:         Me.GridSel.CellBackColor = &H80FF
  loc_170DE78:       Next var_720 'Integer
  loc_170DE7D:     End If
  loc_170DE80:   Next var_A8 'Integer
  loc_170DE85:   Exit For
  loc_170DE88: End If
  loc_170DE90: CRefVarAry
  loc_170DE98: For var_724 = 0 To CInt(UBound(arg_C, 1)): var_8A = var_724 'Integer
  loc_170DED6:   var_D8 = (CLng(var_8A) > (CLng(Me.GridSel.Rows) - 1))
  loc_170DEEC:   If CBool((arg_C(var_8A) = 0) Or var_D8) Then
  loc_170DEEF:     GoTo loc_170EBE6
  loc_170DEF2:   End If
  loc_170DF03:   var_8C = CInt(arg_C(var_8A))
  loc_170DF0D:   var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170DF12:   var_D8 = 0
  loc_170DF41:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_170DF48:     var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170DF5F:     var_A4 = Me.GridSel.TextMatrix)
  loc_170DF7B:     If (CStr(var_A4) <> vbNullString) Then
  loc_170DF84:       var_C8 = 0
  loc_170DFA1:       var_EC = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),0)+1 AS MyCode From MemTagadaLetter where Site_Code='" & MemVar_1F92070
  loc_170DFBF:       unk_4D5035.Execute CStr(var_A4) & "' And Type='" & arg_14 & "'", var_A4, -1
  loc_170DFC7:       var_94 = var_94.Fields
  loc_170DFCF:       var_C8 = var_FC.Item(var_FC)
  loc_170DFD7:       var_100 = var_100.Value
  loc_170E016:       var_A4 = "00000000"
  loc_170E02A:       var_110 = Format(CStr(var_110), var_A4)
  loc_170E039:       global_72 = CStr(var_110)
  loc_170E04F:       If (arg_14 = "Article_26(a)") Then
  loc_170E05D:         Proc_6_7_F25D88(var_A4, MemVar_1F920EC, 1, 1, var_110, CVar(CLng(1)))
  loc_170E066:         var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170E06E:         var_144 = CVar(CLng(1)) 'Long
  loc_170E07D:         var_164 = Me.GridSel.TextMatrix)
  loc_170E09E:         Set var_FC = Me.GridSel
  loc_170E0A4:         var_1F4 = var_FC.TextMatrix)
  loc_170E0DC:         Proc_6_7_F25D88(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170E0E5:         var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170E10F:         var_670 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E140:         var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E171:         var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E1A2:         var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E1AA:         var_580 = CVar(Proc_6_15_EF2C1C(var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)), CVar(CLng(var_8C)), var_678, CVar(CLng(8)))) 'String
  loc_170E1B0:         Proc_6_7_F25D88(var_590, var_580, CVar(CLng(var_8C)), var_670, CVar(CLng(7)))
  loc_170E1C9:         var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170E1E8:         var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170E243:         var_368 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(var_670) & "," 
  loc_170E2A2:         var_5C0 = var_368 & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(MemVar_1F92070) & "'," & var_590 & ",'" 
  loc_170E2B5:         var_600 = var_5C0 & CVar(MemVar_1F920C8) & "','A','" 
  loc_170E2D6:         unk_4D5035.Execute CStr(var_600 & CVar(MemVar_1F92078) & "')"), var_664, -1
  loc_170E35A:         var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170E362:         var_D8 = CVar(CLng(1)) 'Long
  loc_170E371:         var_A4 = Me.GridSel.TextMatrix)
  loc_170E3AA:         var_114 = "Update SubGroup Set AllowCredit='N' Where SubCode='" & CStr(var_A4) & "' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')"
  loc_170E3B3:         unk_4D5035.Execute var_114, var_110, -1
  loc_170E3D6:       Else
  loc_170E3DE:         If (arg_14 = "Article_26(b)") Then
  loc_170E3EC:           Proc_6_7_F25D88(var_A4, MemVar_1F920EC, var_FC, var_A4, var_D8, MemVar_1F920EC)
  loc_170E3F5:           var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170E3FD:           var_144 = CVar(CLng(1)) 'Long
  loc_170E40C:           var_164 = Me.GridSel.TextMatrix)
  loc_170E42D:           Set var_FC = Me.GridSel
  loc_170E433:           var_1F4 = var_FC.TextMatrix)
  loc_170E46B:           Proc_6_7_F25D88(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170E474:           var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170E47C:           var_304 = CVar(CLng(7)) 'Long
  loc_170E4A5:           var_378 = CVar(CLng(var_8C)) 'Long
  loc_170E4CF:           var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E500:           var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E531:           var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E54F:           var_550 = Me.GridSel.TextMatrix)
  loc_170E560:           var_5E0 = CVar(Proc_6_15_EF2C1C(var_550, CVar(CLng(2)), CVar(CLng(var_8C)), var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)))) 'String
  loc_170E566:           Proc_6_7_F25D88(var_600, var_5E0, CVar(CLng(var_8C)), var_678, CVar(CLng(8)))
  loc_170E57F:           var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,ContraCode,ContraType,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170E59E:           var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170E5F0:           var_348 = var_110 & var_A4 & ",'" & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(Val(CStr(Me.GridSel.TextMatrix)))) 
  loc_170E649:           var_590 = var_348 & "," & CVar(var_678) & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(CStr(var_550)) & "','Article_26(a)','" 
  loc_170E676:           var_664 = var_590 & CVar(MemVar_1F92070) & "'," & var_600 & ",'" & CVar(MemVar_1F920C8) 
  loc_170E6A0:           unk_4D5035.Execute CStr(var_664 & "','A','" & CVar(MemVar_1F92078) & "')"), var_718, -1
  loc_170E72E:           var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170E736:           var_D8 = CVar(CLng(2)) 'Long
  loc_170E745:           var_A4 = Me.GridSel.TextMatrix)
  loc_170E788:           var_3C0 = "Update MemTagadaLetter Set ContraCode='" & global_72 & "',ContraType='" & arg_14 & "' Where Code='" & CStr(var_A4)
  loc_170E7A6:           unk_4D5035.Execute var_3C0 & "' And Type='Article_26(a)' And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_110, -1
  loc_170E7D1:         Else
  loc_170E7D9:           If (arg_14 = "Article_23") Then
  loc_170E7E7:             Proc_6_7_F25D88(var_A4, MemVar_1F920EC, var_FC, var_A4, var_D8, MemVar_1F920EC)
  loc_170E7F0:             var_D8 = CVar(CLng(var_8C)) 'Long
  loc_170E7F8:             var_144 = CVar(CLng(1)) 'Long
  loc_170E807:             var_164 = Me.GridSel.TextMatrix)
  loc_170E82E:             var_1F4 = Me.GridSel.TextMatrix)
  loc_170E866:             Proc_6_7_F25D88(var_2A4, CVar(CStr(Me.GridSel.TextMatrix))), CVar(CLng(&HC)), CVar(CLng(var_8C)), var_1F4, CVar(CLng(&HB)), CVar(CLng(var_8C)), var_164)
  loc_170E86F:             var_2E4 = CVar(CLng(var_8C)) 'Long
  loc_170E899:             var_670 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E8CA:             var_678 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E8FB:             var_680 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E92C:             var_688 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_170E934:             var_580 = CVar(Proc_6_15_EF2C1C(var_688, CVar(CLng(&HA)), CVar(CLng(var_8C)), var_680, CVar(CLng(9)), CVar(CLng(var_8C)), var_678, CVar(CLng(8)))) 'String
  loc_170E93A:             Proc_6_7_F25D88(var_590, var_580, CVar(CLng(var_8C)), var_670, CVar(CLng(7)))
  loc_170E953:             var_EC = "Insert Into MemTagadaLetter(Code,Type,Vdate,MemCode,CurBillMonth,TillDate,DueAmt,CurMonthBillAmt,CreditAmt,BalanceTillDate,Site_Code,U_EntDt,U_Name,U_AE,LogSite_Code) " & "Values('"
  loc_170E972:             var_110 = CVar(var_EC & global_72 & "','" & arg_14 & "',") 'String
  loc_170E978:             var_124 = var_110 & var_A4 
  loc_170E981:             var_134 = var_124 & ",'" 
  loc_170E9D8:             var_3E0 = var_134 & CVar(CStr(var_164)) & "','" & CVar(CStr(var_1F4)) & "'," & var_2A4 & "," & CVar(var_670) & "," & CVar(var_678) 
  loc_170EA36:             var_5E0 = var_3E0 & "," & CVar(var_680) & "," & CVar(var_688) & ",'" & CVar(MemVar_1F92070) & "'," & var_590 & ",'" & CVar(MemVar_1F920C8) 
  loc_170EA60:             unk_4D5035.Execute CStr(var_5E0 & "','A','" & CVar(MemVar_1F92078) & "')"), var_664, -1
  loc_170EAE4:             var_B8 = CVar(CLng(var_8C)) 'Long
  loc_170EAEC:             var_D8 = CVar(CLng(1)) 'Long
  loc_170EB2D:             var_F8 = "Update SubGroup Set AllowCredit='N' Where SubCode='" & CStr(Me.GridSel.TextMatrix)) & "' And (LOGSITE_CODE='" & MemVar_1F92078
  loc_170EB3D:             unk_4D5035.Execute var_F8 & "' or LOGSITE_CODE='HO')", var_110, -1
  loc_170EB5D:           End If
  loc_170EB5D:         End If
  loc_170EB5D:       End If
  loc_170EB5F:       var_88 = &HFF
  loc_170EB87:       For var_728 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_8E = var_728 'Integer
  loc_170EBA0:         Me.GridSel.Row = CVar(CLng(var_8C))
  loc_170EBBB:         Me.GridSel.Col = CVar(CLng(var_8E))
  loc_170EBD6:         Me.GridSel.CellBackColor = &H80FF
  loc_170EBE1:       Next var_728 'Integer
  loc_170EBE6:       ' Referenced from: 170DEEF
  loc_170EBE6:     End If
  loc_170EBE6:   End If
  loc_170EBE9: Next var_724 'Integer
  loc_170EBEE: ' Referenced from: 170DE85
  loc_170EBFE: If ((var_88 = 0) And (CInt(arg_10) = 0)) Then
  loc_170EC03:   var_86 = 0
  loc_170EC06:   var_B8 = 0
  loc_170EC0F:   var_D8 = 1
  loc_170EC22:   var_A4 = Me.GridSel.TextMatrix)
  loc_170EC4A:   MsgBox(CVar("Select " & CStr(var_A4)), &H40, var_124, var_134, var_164)
  loc_170EC75:   Me.GridSel.Row = 1
  loc_170EC90:   Me.GridSel.Col = 0
  loc_170EC9C:   Set var_94 = Me.GridSel
  loc_170ECAD: End If
  loc_170ECAD: Proc_290_36_170ECBC = GridSel.DispID_8001
  loc_170ECB3: Proc_290_36_170ECBC = var_A4
End Sub

Public Sub Proc_290_37_1791050
  'Data Table: 4D5018
  Dim var_9C As String
  Dim var_BC As Variant
  Dim var_AC As Variant
  Dim var_118 As Variant
  Dim var_164 As Variant
  Dim var_1D8 As Double
  Dim var_11C As String
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_13C As Variant
  Dim var_CC As Variant
  Dim var_14C As Variant
  Dim var_EC As Variant
  Dim var_15C As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim unk_4D5035 As Connection15
  Dim var_100 As Recordset15
  Dim var_88 As Variant
  Dim var_12C As TextBox
  Dim var_1BC As Variant
  Dim var_160 As Recordset15
  Dim var_1D0 As Field20
  Dim var_108 As Double
  Dim var_1F0 As Variant
  Dim var_110 As Double
  Dim var_128 As Variant
  Dim var_214 As Integer
  Dim var_26C As Variant
  loc_178F1BC: Set var_88 = Me.TopCtrl1
  loc_178F1C2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_178F1CA: var_9C = CStr()
  loc_178F1DB: If (var_9C <> "Add") Then
  loc_178F1E4:   Call 0.Method_arg_50 (var_9C)
  loc_178F1F2:   var_BC = CVar(var_9C) 'String
  loc_178F205:   MsgBox("Only In Add Mode.", &H40, var_BC, var_DC, var_FC)
  loc_178F215:   Exit Sub
  loc_178F216: End If
  loc_178F21A: Set var_100 = New 
  loc_178F228: If (global_52 = "Article_26(a)") Then
  loc_178F239:   Set var_88 = Me.Text1
  loc_178F23F:   Call 0.Method_Proc_290_37_17910500 (CInt(&H18), var_118)
  loc_178F257:   Set var_128 = Me.Text1
  loc_178F25D:   Call 0.Method_Proc_290_37_17910500 (CInt(&H15))
  loc_178F26C:   Proc_6_7_F25D88(var_BC, CVar(var_12C))
  loc_178F27F:   Set var_160 = Me.Text1
  loc_178F285:   Call 0.Method_Proc_290_37_17910500 (CInt(&H14), var_164)
  loc_178F29A:   var_1D8 = Val(var_164.Text)
  loc_178F2B1:   var_11C = "Select L.SubCode,Max(S.ConPrefix) As ConPrefix,Max(S.ConPerson) As ConPerson,Max(S.CardNo) As CardNo,Max(S.Name) As AcName,isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0) As Balance From Ledger L Left Join SubGroup S On L.SubCode=S.SubCode INNER JOIN MEMCATMAST MCAT ON S.COMPANYTYPE=MCAT.CODE WHERE S.ActiveYN=1 And (S.COMPANYTYPE IS NOT NULL AND S.COMPANYTYPE<>'') And S.CompanyType='" & var_118.Tag
  loc_178F2D0:   var_AC = " And L.SubCode Not In (Select Distinct MemCode From MemTagadaLetter MTL Inner Join SubGroup S On MemCode=S.SubCode WHERE S.AllowCredit='N' And IsNull(MTL.ContraCode,'')='' And IsNull(MTL.ContraType,'')='' And (MTL.LOGSITE_CODE='"
  loc_178F2DF:   var_14C = CVar(var_11C & "' and (S.LOGSITE_CODE='" & MemVar_1F92078 & "' or S.LOGSITE_CODE='HO') And L.V_date<=") & var_BC & var_AC & CVar(MemVar_1F92078) 
  loc_178F2E3:   var_EC = "' or MTL.LOGSITE_CODE='HO')) Group By L.SubCode Having isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0)>="
  loc_178F2E8:   var_15C = var_14C & var_EC 
  loc_178F30A:   unk_4D5035.Execute CStr(var_15C & CVar(var_1D8) & " Order By Max(S.ConPerson)"), var_1CC, -1
  loc_178F315:   Set var_100 = var_1D0
  loc_178F350: Else
  loc_178F35B:   If (global_52 = "Article_26(b)") Then
  loc_178F36B:     var_AC = "Select MTL.Code,MTL.Vdate,MTL.MemCode,S.ConPrefix As ConPrefix,S.ConPerson As ConPerson,S.CardNo As CardNo,S.Name As AcName,MTL.CurBillMonth,MTL.TillDate,MTL.DueAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate From MemTagadaLetter MTL Left Join SubGroup S On MTL.MemCode=S.SubCode WHERE S.AllowCredit='N' And MTL.Vdate="
  loc_178F37B:     Set var_88 = Me.Text1
  loc_178F381:     Call 0.Method_Proc_290_37_17910500 (CInt(&H15), var_118, var_AC, var_15C, -1)
  loc_178F390:     Proc_6_7_F25D88(var_BC, CVar(var_118), var_128)
  loc_178F3AB:     var_13C = var_1D0 & var_BC & " And IsNull(MTL.ContraCode,'')='' And IsNull(MTL.ContraType,'')='' And (S.LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_178F3C2:     unk_4D5035.Execute CStr(var_13C & "' or S.LOGSITE_CODE='HO') Order By MTL.VDate,S.ConPerson"), var_1D8, var_12C
  loc_178F3CD:     Set var_100 = var_128
  loc_178F3EE:   Else
  loc_178F3F9:     If (global_52 = "Article_23") Then
  loc_178F40A:       Set var_88 = Me.Text1
  loc_178F410:       Call 0.Method_Proc_290_37_17910500 (CInt(&H18), var_118)
  loc_178F428:       Set var_128 = Me.Text1
  loc_178F42E:       Call 0.Method_Proc_290_37_17910500 (CInt(&H15))
  loc_178F43D:       Proc_6_7_F25D88(var_BC, CVar(var_12C))
  loc_178F450:       Set var_160 = Me.Text1
  loc_178F456:       Call 0.Method_Proc_290_37_17910500 (CInt(&H14), var_164)
  loc_178F46B:       var_1D8 = Val(var_164.Text)
  loc_178F482:       var_11C = "Select L.SubCode,Max(S.ConPrefix) As ConPrefix,Max(S.ConPerson) As ConPerson,Max(S.CardNo) As CardNo,Max(S.Name) As AcName,isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0) As Balance From Ledger L Left Join SubGroup S On L.SubCode=S.SubCode INNER JOIN MEMCATMAST MCAT ON S.COMPANYTYPE=MCAT.CODE WHERE S.ActiveYN=1 And (S.COMPANYTYPE IS NOT NULL AND S.COMPANYTYPE<>'') And S.CompanyType='" & var_118.Tag
  loc_178F4A1:       var_AC = " And L.SubCode Not In (Select Distinct MemCode From MemTagadaLetter MTL Inner Join SubGroup S On MemCode=S.SubCode WHERE S.AllowCredit='N' And IsNull(MTL.ContraCode,'')='' And IsNull(MTL.ContraType,'')='' And (MTL.LOGSITE_CODE='"
  loc_178F4A6:       var_13C = CVar(var_11C & "' and (S.LOGSITE_CODE='" & MemVar_1F92078 & "' or S.LOGSITE_CODE='HO') And L.V_date<=") & var_BC & var_AC 
  loc_178F4B4:       var_EC = "' or MTL.LOGSITE_CODE='HO')) Group By L.SubCode Having isnull(Sum(AmtDr),0)-isnull(Sum(AmtCr),0)>="
  loc_178F4B9:       var_15C = var_13C & CVar(MemVar_1F92078) & CVar(MemVar_1F92078) 
  loc_178F4C4:       var_188 = var_15C & CVar(var_1D8) 
  loc_178F4CD:       var_1A8 = var_188 & " Order By Max(S.ConPerson)" 
  loc_178F4DB:       unk_4D5035.Execute CStr(var_1A8), var_1CC, -1
  loc_178F4E6:       Set var_100 = var_1D0
  loc_178F51E:     End If
  loc_178F51E:   End If
  loc_178F51E: End If
  loc_178F51E: Call Proc_290_35_13414C0(var_1D0, var_1D8)
  loc_178F537: If (var_100.RecordCount = 0) Then
  loc_178F54D:   Me.GridSel.Rows = 2
  loc_178F555:   Exit Sub
  loc_178F556: End If
  loc_178F569: Me.GridSel.Row = 1
  loc_178F57C: If (global_52 = "Article_26(a)") Then
  loc_178F57F:   ' Referenced from: 178FE25
  loc_178F58E:   If Not(var_100.EOF) Then
  loc_178F5C6:     Set var_128 = Me.Text1
  loc_178F5CC:     Call 0.Method_Proc_290_37_17910500 (CInt(&H16), var_12C)
  loc_178F5DF:     var_1BC = 0
  loc_178F601:     var_EC = "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_178F610:     var_13C = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & var_100.Fields.Item("subcode").Value & CVar(MemVar_1F92078) & CVar(var_12C.Text) 
  loc_178F627:     unk_4D5035.Execute CStr(var_13C & "'"), var_15C, -1
  loc_178F62F:     var_160 = var_160.Fields
  loc_178F637:     var_1BC = var_164.Item(var_164)
  loc_178F63F:     var_1D0 = var_1D0.Value
  loc_178F64A:     Proc_6_39_E7C810(var_1A8, var_188)
  loc_178F653:     var_108 = CSng(var_1A8)
  loc_178F6B1:     Set var_128 = Me.Text1
  loc_178F6B7:     Call 0.Method_Proc_290_37_17910500 (CInt(&H15), var_12C, var_108)
  loc_178F6C6:     Proc_6_7_F25D88(var_13C, CVar(var_12C))
  loc_178F6D6:     Proc_6_7_F25D88(var_188, MemVar_1F920EC)
  loc_178F6E1:     var_1F0 = 0
  loc_178F6FF:     var_BC = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST') And SubCode='" & var_100.Fields.Item("subcode").Value 
  loc_178F723:     var_9C = CStr(var_BC & "' And V_date>" & var_13C & " And V_date <=" & var_188)
  loc_178F72D:     unk_4D5035.Execute var_9C, var_1CC, -1
  loc_178F735:     var_160 = var_160.Fields
  loc_178F73D:     var_1F0 = var_164.Item(var_164)
  loc_178F745:     var_1D0 = var_1D0.Value
  loc_178F74E:     var_110 = CSng(var_200)
  loc_178F7A2:     Proc_6_39_E7C810(var_BC, CVar(var_100.Fields.Item("Balance")), var_110)
  loc_178F7BE:     If (var_BC > CVar(var_110)) Then
  loc_178F7C5:       Set var_204 = Me.GridSel
  loc_178F7C8:       var_AC = vbNullString
  loc_178F7EC:       var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F7F4:       var_EC = CVar(CLng(0)) 'Long
  loc_178F7F9:       var_198 = vbNullString
  loc_178F802:       LateIdCallSt
  loc_178F823:       var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F82B:       var_EC = CVar(CLng(2)) 'Long
  loc_178F830:       var_198 = vbNullString
  loc_178F839:       LateIdCallSt
  loc_178F85A:       var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F862:       var_198 = CVar(CLng(3)) 'Long
  loc_178F897:       LateIdCallSt
  loc_178F8C0:       var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178F8C8:       var_178 = CVar(CLng(1)) 'Long
  loc_178F8F8:       var_DC = CVar(CStr(var_100.Fields.Item("subcode").Value)) 'String
  loc_178F8FF:       LateIdCallSt
  loc_178F961:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("ConPrefix")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_204, var_DC, CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_178F968:       LateIdCallSt
  loc_178F9C8:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("ConPerson")), CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)), var_204, var_DC, var_204)) 'String
  loc_178F9CF:       LateIdCallSt
  loc_178F9F1:       var_BC = Me.GridSel.Row
  loc_178FA36:       LateIdCallSt
  loc_178FA74:       Proc_6_39_E7C810(var_BC, CVar(var_100.Fields.Item("Balance")), var_204, CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("CardNo")), CVar(CLng(6)), CVar(CLng(var_BC)), var_204, var_DC)), CVar(CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))))
  loc_178FA8C:       var_178 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FA94:       var_1BC = CVar(CLng(7)) 'Long
  loc_178FAB8:       var_DC = (var_BC - CVar(var_110))
  loc_178FABC:       var_FC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("CardNo")), CVar(CLng(6)), CVar(CLng(var_BC)), var_204, var_DC)) 'Variant
  loc_178FACF:       var_188 = CVar(CStr(Format(var_FC, "0.00"))) 'String
  loc_178FAD6:       LateIdCallSt
  loc_178FB09:       var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FB11:       var_198 = CVar(CLng(8)) 'Long
  loc_178FB3F:       var_FC = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_178FB46:       LateIdCallSt
  loc_178FB6F:       var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FB9C:       var_BC = Format(var_110, "0.00")
  loc_178FBAC:       LateIdCallSt
  loc_178FBD9:       var_118 = var_100.Fields.Item("Balance")
  loc_178FBE8:       Proc_6_39_E7C810(var_BC, CVar(var_118), var_204, CVar(CStr(var_BC)), 1, 1, CVar(CLng(9)))
  loc_178FBF7:       var_188 = Me.GridSel.Row
  loc_178FC00:       var_198 = CVar(CLng(var_188)) 'Long
  loc_178FC2C:       var_DC = (var_BC + CVar(var_108))
  loc_178FC37:       var_FC = (Me.GridSel.Row - CVar(var_110))
  loc_178FC45:       var_15C = Format(CVar(CStr(var_BC)), "0.00")
  loc_178FC4E:       var_1A8 = CVar(CStr(var_15C)) 'String
  loc_178FC55:       LateIdCallSt
  loc_178FC82:       Set var_88 = Me.Text1
  loc_178FC88:       Call 0.Method_Proc_290_37_17910500 (CInt(&H16), var_118, var_204, var_1A8, 1, 1, CVar(CLng(&HA)))
  loc_178FCA0:       var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FCDC:       LateIdCallSt
  loc_178FD03:       Set var_88 = Me.Text1
  loc_178FD09:       Call 0.Method_Proc_290_37_17910500 (CInt(&H15), var_118, var_204, CVar(CStr(Format(CVar(var_118), "MMM/yyyy"))), 1, 1, CVar(CLng(&HB)))
  loc_178FD21:       var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_178FD29:       var_178 = CVar(CLng(&HC)) 'Long
  loc_178FD5D:       LateIdCallSt
  loc_178FD94:       var_178 = CVar(CLng(&HD)) 'Long
  loc_178FDC1:       var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("AcName")), var_178, CVar(CLng(Me.GridSel.Row)), var_204, CVar(CStr(Format(CVar(var_100.Fields.Item("AcName")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_178FDC8:       LateIdCallSt
  loc_178FDE2:       Set var_204 = Nothing 
  loc_178FDFF:       var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_178FE0E:       Me.GridSel.Row = "AcName"
  loc_178FE1D:     End If
  loc_178FE20:     var_100.MoveNext
  loc_178FE25:     GoTo loc_178F57F
  loc_178FE28:   End If
  loc_178FE2B: Else
  loc_178FE36:   If (global_52 = "Article_26(b)") Then
  loc_178FE39:     ' Referenced from:   179076D
  loc_178FE48:     If Not(var_100.EOF) Then
  loc_178FE80:       Set var_128 = Me.Text1
  loc_178FE86:       Call 0.Method_Proc_290_37_17910500 (CInt(&H16), var_12C, var_9C, var_204, var_DC, var_178)
  loc_178FE8E:       var_CC = var_12C.Text
  loc_178FE99:       var_1BC = 0
  loc_178FEAF:       var_CC = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='"
  loc_178FEBB:       var_EC = "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_178FECA:       var_13C = var_CC & var_100.Fields.Item("MemCode").Value & CVar(var_110) & CVar(var_9C) 
  loc_178FEE1:       unk_4D5035.Execute CStr(var_13C & "'"), var_15C, -1
  loc_178FEE9:       var_160 = var_160.Fields
  loc_178FEF1:       var_1BC = var_164.Item(var_164)
  loc_178FEF9:       var_1D0 = var_1D0.Value
  loc_178FF04:       Proc_6_39_E7C810(var_1A8, var_188, var_188, var_CC)
  loc_178FF0D:       var_108 = CSng(var_1A8)
  loc_178FF77:       var_12C = var_100.Fields.Item("TillDate")
  loc_178FF86:       Proc_6_7_F25D88(var_13C, CVar(var_12C), var_108)
  loc_178FF96:       Proc_6_7_F25D88(var_188, MemVar_1F920EC, var_198)
  loc_178FFA1:       var_214 = 0
  loc_178FFBF:       var_BC = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST') And SubCode='" & var_100.Fields.Item("MemCode").Value 
  loc_178FFC3:       var_EC = "' And V_date>"
  loc_178FFE3:       var_9C = CStr(var_BC & var_EC & var_13C & " And V_date <=" & var_188)
  loc_178FFED:       unk_4D5035.Execute var_9C, var_1CC, -1
  loc_178FFF5:       var_160 = var_160.Fields
  loc_178FFFD:       var_214 = var_164.Item(var_164)
  loc_1790005:       var_1D0 = var_1D0.Value
  loc_1790010:       Proc_6_39_E7C810(var_234, var_200, var_200)
  loc_179003E:       Proc_6_39_E7C810(var_25C, CVar(var_100.Fields.Item("CreditAmt")), var_234)
  loc_1790046:       var_26C = (var_EC - var_25C)
  loc_179004B:       var_110 = CSng(var_26C)
  loc_17900A7:       Proc_6_39_E7C810(var_BC, CVar(var_100.Fields.Item("BalanceTillDate")))
  loc_17900C3:       If (var_BC > CVar(var_110)) Then
  loc_17900CA:         Set var_270 = Me.GridSel
  loc_17900CD:         var_AC = vbNullString
  loc_17900F1:         var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790107:         LateIdCallSt
  loc_179015D:         var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("Code")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_270, vbNullString, CVar(CLng(0)))) 'String
  loc_1790164:         LateIdCallSt
  loc_17901AB:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_17901B3:         var_198 = CVar(CLng(3)) 'Long
  loc_17901E7:         LateIdCallSt
  loc_1790216:         var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_179021E:         var_178 = CVar(CLng(1)) 'Long
  loc_179024E:         var_DC = CVar(CStr(var_100.Fields.Item("MemCode").Value)) 'String
  loc_1790255:         LateIdCallSt
  loc_17902B7:         var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("ConPrefix")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_270, var_DC, CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_17902BE:         LateIdCallSt
  loc_179031E:         var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("ConPerson")), CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)), var_270, var_DC, var_270)) 'String
  loc_1790325:         LateIdCallSt
  loc_1790347:         var_BC = Me.GridSel.Row
  loc_1790385:         var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("CardNo")), CVar(CLng(6)), CVar(CLng(var_BC)), var_270, var_DC)) 'String
  loc_179038C:         LateIdCallSt
  loc_17903CA:         Proc_6_39_E7C810(var_BC, CVar(var_100.Fields.Item("BalanceTillDate")), var_270, var_DC, CVar(CStr(Format(CVar(var_100.Fields.Item("VDate")), "dd/MMM/yyyy"))))
  loc_17903E2:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_17903EA:         var_198 = CVar(CLng(7)) 'Long
  loc_1790413:         var_14C = CVar(CStr(Format(var_BC, "0.00"))) 'String
  loc_179041A:         LateIdCallSt
  loc_179044B:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790453:         var_198 = CVar(CLng(8)) 'Long
  loc_1790481:         var_FC = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_1790488:         LateIdCallSt
  loc_17904B1:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_17904DE:         var_BC = Format(var_110, "0.00")
  loc_17904EE:         LateIdCallSt
  loc_179051B:         var_118 = var_100.Fields.Item("BalanceTillDate")
  loc_179052A:         Proc_6_39_E7C810(var_BC, CVar(var_118), var_270, CVar(CStr(var_BC)), 1, 1, CVar(CLng(9)))
  loc_1790539:         var_188 = Me.GridSel.Row
  loc_1790542:         var_198 = CVar(CLng(var_188)) 'Long
  loc_179056E:         var_DC = (var_BC + CVar(var_108))
  loc_1790579:         var_FC = (Me.GridSel.Row - CVar(var_110))
  loc_1790587:         var_15C = Format(CVar(CStr(var_BC)), "0.00")
  loc_1790590:         var_1A8 = CVar(CStr(var_15C)) 'String
  loc_1790597:         LateIdCallSt
  loc_17905C4:         Set var_88 = Me.Text1
  loc_17905CA:         Call 0.Method_Proc_290_37_17910500 (CInt(&H16), var_118, var_270, var_1A8, 1, 1, CVar(CLng(&HA)))
  loc_17905E2:         var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_17905EA:         var_178 = CVar(CLng(&HB)) 'Long
  loc_1790617:         var_13C = CVar(CStr(Format(CVar(var_118), "MMM/yyyy"))) 'String
  loc_179061E:         LateIdCallSt
  loc_1790669:         var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790671:         var_198 = CVar(CLng(&HC)) 'Long
  loc_17906A5:         LateIdCallSt
  loc_1790709:         var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("AcName")), CVar(CLng(&HD)), CVar(CLng(Me.GridSel.Row)), var_270, CVar(CStr(Format(CVar(var_100.Fields.Item("TillDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1790710:         LateIdCallSt
  loc_179072A:         Set var_270 = Nothing 
  loc_1790747:         var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1790756:         Me.GridSel.Row = "AcName"
  loc_1790765:       End If
  loc_1790768:       var_100.MoveNext
  loc_179076D:       GoTo loc_178FE39
  loc_1790770:     End If
  loc_1790773:   Else
  loc_179077E:     If (global_52 = "Article_23") Then
  loc_1790781:       ' Referenced from:     1791027
  loc_1790790:       If Not(var_100.EOF) Then
  loc_17907C8:         Set var_128 = Me.Text1
  loc_17907CE:         Call 0.Method_Proc_290_37_17910500 (CInt(&H16), var_12C, var_9C, var_270, var_DC, var_198)
  loc_17907D6:         var_EC = var_12C.Text
  loc_17907E1:         var_1BC = 0
  loc_1790803:         var_EC = "' And Substring(Convert(Varchar(11),V_date,106),4,3)+'/'+Substring(Convert(Varchar(11),V_date,106),8,4)='"
  loc_1790812:         var_13C = "Select isnull(Sum(AmtDr),0) From Ledger Where SubCode='" & var_100.Fields.Item("subcode").Value & var_EC & CVar(var_9C) 
  loc_1790829:         unk_4D5035.Execute CStr(var_13C & "'"), var_15C, -1
  loc_1790831:         var_160 = var_160.Fields
  loc_1790839:         var_1BC = var_164.Item(var_164)
  loc_1790841:         var_1D0 = var_1D0.Value
  loc_179084C:         Proc_6_39_E7C810(var_1A8, var_188, var_188, var_270)
  loc_1790855:         var_108 = CSng(var_1A8)
  loc_17908B3:         Set var_128 = Me.Text1
  loc_17908B9:         Call 0.Method_Proc_290_37_17910500 (CInt(&H15), var_12C, var_108)
  loc_17908C8:         Proc_6_7_F25D88(var_13C, CVar(var_12C), var_13C)
  loc_17908D8:         Proc_6_7_F25D88(var_188, MemVar_1F920EC)
  loc_17908E3:         var_1F0 = 0
  loc_1790901:         var_BC = "Select isnull(Sum(AmtCr),0) From Ledger Where isnull(AmtCr,0)<>0 And V_Type Not In ('HPOST') And SubCode='" & var_100.Fields.Item("subcode").Value 
  loc_179092F:         unk_4D5035.Execute CStr(var_BC & "' And V_date>" & var_13C & " And V_date <=" & var_188), var_1CC, -1
  loc_1790937:         var_160 = var_160.Fields
  loc_179093F:         var_1F0 = var_164.Item(var_164)
  loc_1790947:         var_1D0 = var_1D0.Value
  loc_1790950:         var_110 = CSng(var_200)
  loc_17909A4:         Proc_6_39_E7C810(var_BC, CVar(var_100.Fields.Item("Balance")), var_110)
  loc_17909C0:         If (var_BC > CVar(var_110)) Then
  loc_17909C7:           Set var_274 = Me.GridSel
  loc_17909CA:           var_AC = vbNullString
  loc_17909EE:           var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_17909F6:           var_EC = CVar(CLng(0)) 'Long
  loc_17909FB:           var_198 = vbNullString
  loc_1790A04:           LateIdCallSt
  loc_1790A25:           var_AC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790A2D:           var_EC = CVar(CLng(2)) 'Long
  loc_1790A32:           var_198 = vbNullString
  loc_1790A3B:           LateIdCallSt
  loc_1790A5C:           var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790A64:           var_198 = CVar(CLng(3)) 'Long
  loc_1790A99:           LateIdCallSt
  loc_1790AC2:           var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790ACA:           var_178 = CVar(CLng(1)) 'Long
  loc_1790AFA:           var_DC = CVar(CStr(var_100.Fields.Item("subcode").Value)) 'String
  loc_1790B01:           LateIdCallSt
  loc_1790B63:           var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("ConPrefix")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_274, var_DC, CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_1790B6A:           LateIdCallSt
  loc_1790BCA:           var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("ConPerson")), CVar(CLng(5)), CVar(CLng(Me.GridSel.Row)), var_274, var_DC, var_274)) 'String
  loc_1790BD1:           LateIdCallSt
  loc_1790BF3:           var_BC = Me.GridSel.Row
  loc_1790C31:           var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("CardNo")), CVar(CLng(6)), CVar(CLng(var_BC)), var_274, var_DC)) 'String
  loc_1790C38:           LateIdCallSt
  loc_1790C76:           Proc_6_39_E7C810(var_BC, CVar(var_100.Fields.Item("Balance")), var_274, var_DC, CVar(CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))))
  loc_1790C8E:           var_178 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790C96:           var_1BC = CVar(CLng(7)) 'Long
  loc_1790CBA:           var_DC = (var_BC - CVar(var_110))
  loc_1790CD1:           var_188 = CVar(CStr(Format(var_DC, "0.00"))) 'String
  loc_1790CD8:           LateIdCallSt
  loc_1790D0B:           var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790D13:           var_198 = CVar(CLng(8)) 'Long
  loc_1790D41:           var_FC = CVar(CStr(Format(var_108, "0.00"))) 'String
  loc_1790D48:           LateIdCallSt
  loc_1790D71:           var_EC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790D9E:           var_BC = Format(var_110, "0.00")
  loc_1790DAE:           LateIdCallSt
  loc_1790DDB:           var_118 = var_100.Fields.Item("Balance")
  loc_1790DEA:           Proc_6_39_E7C810(var_BC, CVar(var_118), var_274, CVar(CStr(var_BC)), 1, 1, CVar(CLng(9)))
  loc_1790E02:           var_198 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790E2E:           var_DC = (var_BC + CVar(var_108))
  loc_1790E39:           var_FC = (Me.GridSel.Row - CVar(var_110))
  loc_1790E57:           LateIdCallSt
  loc_1790E84:           Set var_88 = Me.Text1
  loc_1790E8A:           Call 0.Method_Proc_290_37_17910500 (CInt(&H16), var_118, var_274, CVar(CStr(Format(CVar(CStr(var_BC)), "0.00"))), 1, 1, CVar(CLng(&HA)))
  loc_1790EA2:           var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790EDE:           LateIdCallSt
  loc_1790F05:           Set var_88 = Me.Text1
  loc_1790F0B:           Call 0.Method_Proc_290_37_17910500 (CInt(&H15), var_118, var_274, CVar(CStr(Format(CVar(var_118), "MMM/yyyy"))), 1, 1, CVar(CLng(&HB)))
  loc_1790F23:           var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1790F2B:           var_178 = CVar(CLng(&HC)) 'Long
  loc_1790F5F:           LateIdCallSt
  loc_1790FC3:           var_DC = CVar(Proc_6_38_E68A98(CVar(var_100.Fields.Item("AcName")), CVar(CLng(&HD)), CVar(CLng(Me.GridSel.Row)), var_274, CVar(CStr(Format(CVar(var_100.Fields.Item("AcName")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1790FCA:           LateIdCallSt
  loc_1790FE4:           Set var_274 = Nothing 
  loc_1791001:           var_AC = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1791010:           Me.GridSel.Row = "AcName"
  loc_179101F:         End If
  loc_1791022:         var_100.MoveNext
  loc_1791027:         GoTo loc_1790781
  loc_179102A:       End If
  loc_179102A:     End If
  loc_179102A:   End If
  loc_179102A: End If
  loc_179103D: Me.GridSel.FixedRows = 1
  loc_179104A: Set var_100 = Nothing
  loc_179104D: Exit Sub
End Sub

Public Sub Proc_290_38_E551CC
  'Data Table: 4D5018
  loc_E551B0: If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_E551C2:   Me.DgMemType.Visible = False
  loc_E551CA: End If
  loc_E551CA: Exit Sub
End Sub

Public Sub Proc_290_39_E915BC
  'Data Table: 4D5018
  loc_E91550: On Error Goto loc_E91554
  loc_E91553: Exit Sub
  loc_E91554: ' Referenced from: E91550
  loc_E9155C: Set var_88 = Err()
  loc_E91562: Call 0.Method_arg_1C (var_8C)
  loc_E91573: If (var_8C <> 0) Then
  loc_E9157E:   Set var_88 = Err()
  loc_E91584:   Call 0.Method_arg_2C (var_90)
  loc_E915A5:   MsgBox(CVar(var_90), &H40, "Validation", var_E0, var_100)
  loc_E915B8: End If
  loc_E915B8: Exit Sub
End Sub

Public Sub Proc_290_40_E96898
  'Data Table: 4D5018
  Dim var_98 As TextBox
  loc_E96824: Set var_8C = Me.Text1
  loc_E9682A: Call 0.Method_Proc_290_40_E96898C (var_8E, var_86)
  loc_E96838: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_E9684B:   Set var_8C = Me.Text1
  loc_E96851:   Call 0.Method_Proc_290_40_E968980 (var_86, var_98)
  loc_E96859:   var_98.Text = vbNullString
  loc_E96872:   Set var_8C = Me.Text1
  loc_E96878:   Call 0.Method_Proc_290_40_E968980 (var_86, var_98)
  loc_E96880:   var_98.Tag = vbNullString
  loc_E9688F: Next var_92 'Integer
  loc_E96894: Exit Sub
End Sub

Public Sub Proc_290_41_136C4E4
  'Data Table: 4D5018
  Dim var_A8 As TextBox
  loc_136BC70: On Error Goto loc_136C4DC
  loc_136BC8D: If (Me.Recordset15.RecordCount > 0) Then
  loc_136BCCF:   Set var_A4 = Me.Text1
  loc_136BCD5:   Call 0.Method_Proc_290_41_136C4E40 (CInt(0), var_A8)
  loc_136BCDD:   var_A8.Text = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_136BD2F:   Set var_A4 = Me.Text1
  loc_136BD35:   Call 0.Method_Proc_290_41_136C4E40 (CInt(1), var_A8)
  loc_136BD3D:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ConPrefix")))
  loc_136BD8D:   Set var_A4 = Me.Text1
  loc_136BD93:   Call 0.Method_Proc_290_41_136C4E40 (CInt(2), var_A8)
  loc_136BD9B:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ConPerson")))
  loc_136BDEB:   Set var_A4 = Me.Text1
  loc_136BDF1:   Call 0.Method_Proc_290_41_136C4E40 (CInt(3), var_A8)
  loc_136BDF9:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_136BE49:   Set var_A4 = Me.Text1
  loc_136BE4F:   Call 0.Method_Proc_290_41_136C4E40 (CInt(4), var_A8)
  loc_136BE57:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AcName")))
  loc_136BEA7:   Set var_A4 = Me.Text1
  loc_136BEAD:   Call 0.Method_Proc_290_41_136C4E40 (CInt(5), var_A8)
  loc_136BEB5:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Add1")))
  loc_136BF05:   Set var_A4 = Me.Text1
  loc_136BF0B:   Call 0.Method_Proc_290_41_136C4E40 (CInt(6), var_A8)
  loc_136BF13:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Add2")))
  loc_136BF63:   Set var_A4 = Me.Text1
  loc_136BF69:   Call 0.Method_Proc_290_41_136C4E40 (CInt(7), var_A8)
  loc_136BF71:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Add3")))
  loc_136BFC1:   Set var_A4 = Me.Text1
  loc_136BFC7:   Call 0.Method_Proc_290_41_136C4E40 (CInt(8), var_A8)
  loc_136BFCF:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("City")))
  loc_136C01F:   Set var_A4 = Me.Text1
  loc_136C025:   Call 0.Method_Proc_290_41_136C4E40 (CInt(9), var_A8)
  loc_136C02D:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Pin")))
  loc_136C07D:   Set var_A4 = Me.Text1
  loc_136C083:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&HA), var_A8)
  loc_136C08B:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("State")))
  loc_136C0DB:   Set var_A4 = Me.Text1
  loc_136C0E1:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&HB), var_A8)
  loc_136C0E9:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Phone")))
  loc_136C139:   Set var_A4 = Me.Text1
  loc_136C13F:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&HC), var_A8)
  loc_136C147:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Mobile")))
  loc_136C197:   Set var_A4 = Me.Text1
  loc_136C19D:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&HD), var_A8)
  loc_136C1A5:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Fax")))
  loc_136C1F5:   Set var_A4 = Me.Text1
  loc_136C1FB:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&HE), var_A8)
  loc_136C203:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Email")))
  loc_136C26F:   Set var_A4 = Me.Text1
  loc_136C275:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&HF), var_A8, CStr(Format(CVar(Me.Recordset15.Fields.Item("DueAmt")), "0.00")))
  loc_136C27D:   var_A8.Text = 1
  loc_136C2EF:   Set var_A4 = Me.Text1
  loc_136C2F5:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&H10), var_A8, CStr(Format(CVar(Me.Recordset15.Fields.Item("CurMonthBillAmt")), "0.00")))
  loc_136C2FD:   var_A8.Text = 1
  loc_136C353:   Set var_A4 = Me.Text1
  loc_136C359:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&H11), var_A8)
  loc_136C361:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CurBillMonth")), 1)
  loc_136C3CD:   Set var_A4 = Me.Text1
  loc_136C3D3:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&H12), var_A8, CStr(Format(CVar(Me.Recordset15.Fields.Item("CreditAmt")), "0.00")))
  loc_136C3DB:   var_A8.Text = 1
  loc_136C44D:   Set var_A4 = Me.Text1
  loc_136C453:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&H17), var_A8, CStr(Format(CVar(Me.Recordset15.Fields.Item("BalanceTillDate")), "0.00")), 1)
  loc_136C45B:   var_A8.Text = 1
  loc_136C4B1:   Set var_A4 = Me.Text1
  loc_136C4B7:   Call 0.Method_Proc_290_41_136C4E40 (CInt(&H13), var_A8)
  loc_136C4BF:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TillDate")), 1)
  loc_136C4D6: Else
  loc_136C4D6:   Call Proc_290_40_E96898(1)
  loc_136C4DB: End If
  loc_136C4DB: Exit Sub
  loc_136C4DC: ' Referenced from: 136BC70
  loc_136C4DC: Proc_6_60_E62BC4()
  loc_136C4E1: Exit Sub
End Sub

Public Sub Proc_290_42_F795D0(arg_C) 'F795D0
  'Data Table: 4D5018
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F79488: Set var_8C = Me.Text1
  loc_F7948E: Call 0.Method_Proc_290_42_F795D0C (var_8E, var_86)
  loc_F7949C: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_F794AE:   Set var_8C = Me.Text1
  loc_F794B4:   Call 0.Method_Proc_290_42_F795D00 (var_86, var_98)
  loc_F794BC:   var_98.Enabled = False
  loc_F794CB: Next var_92 'Integer
  loc_F794DE: Set var_8C = Me.Text1
  loc_F794E4: Call 0.Method_Proc_290_42_F795D00 (CInt(&H14), var_98)
  loc_F794EC: var_98.Enabled = arg_C
  loc_F79506: Set var_8C = Me.Text1
  loc_F7950C: Call 0.Method_Proc_290_42_F795D00 (CInt(&H15), var_98)
  loc_F79514: var_98.Enabled = arg_C
  loc_F7952E: Set var_8C = Me.Text1
  loc_F79534: Call 0.Method_Proc_290_42_F795D00 (CInt(&H16), var_98)
  loc_F7953C: var_98.Enabled = arg_C
  loc_F79556: Set var_8C = Me.Text1
  loc_F7955C: Call 0.Method_Proc_290_42_F795D00 (CInt(&H18), var_98)
  loc_F79564: var_98.Enabled = arg_C
  loc_F7957D: Me.Check1.Enabled = arg_C
  loc_F79598: Me.DBGrid1.Visible = Not(arg_C)
  loc_F795B1: Me.FrArticles.Enabled = Not(arg_C)
  loc_F795C6: Me.FrArticle.Visible = arg_C
  loc_F795CE: Exit Sub
End Sub

Public Sub Proc_290_43_DFC554
  'Data Table: 4D5018
  loc_DFC550: Exit Sub
End Sub

Public Sub Proc_290_44_1060A3C(arg_C, arg_10) '1060A3C
  'Data Table: 4D5018
  Dim var_9C As String
  Dim unk_4D5035 As Connection15
  Dim var_88 As Recordset15
  Dim var_DA As Integer
  Dim var_C0 As Variant
  Dim var_EC As Integer
  loc_10607CC: On Error Goto loc_1060A33
  loc_10607DA: If (global_52 = "Article_26(a)") Then
  loc_10607F1:   var_9C = "SELECT MTL.code As SerialNo,MTL.VDate As EntryDate,MTL.CurBillMonth,MTL.TillDate,MTL.DueAmt As NoticeAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate As TotalDueAmt,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Code='" & arg_C
  loc_106081D:   unk_4D5035.Execute var_9C & "' And MTL.Type='" & arg_10 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F92078 & "' or MTL.LOGSITE_CODE='HO')", var_D0, -1
  loc_1060828:   Set var_88 = var_D4
  loc_1060843: Else
  loc_106084E:   If (global_52 = "Article_26(b)") Then
  loc_1060865:     var_9C = "SELECT MTL.code As SerialNo,MTL.VDate As EntryDate,MTL.CurBillMonth,MTL.ContraCode As ContraSerialNo,MTL.TillDate As ContraEntryDate,MTL.DueAmt As NoticeAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate As TotalDueAmt,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Code='" & arg_C
  loc_1060891:     unk_4D5035.Execute var_9C & "' And MTL.Type='" & arg_10 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F92078 & "' or MTL.LOGSITE_CODE='HO')", var_D0, -1
  loc_106089C:     Set var_88 = var_D4
  loc_10608B7:   Else
  loc_10608C2:     If (global_52 = "Article_23") Then
  loc_10608D9:       var_9C = "SELECT MTL.code As SerialNo,MTL.VDate As EntryDate,MTL.CurBillMonth,MTL.TillDate,MTL.DueAmt As NoticeAmt,MTL.CurMonthBillAmt,MTL.CreditAmt,MTL.BalanceTillDate As TotalDueAmt,SG.ConPrefix,SG.ConPerson,SG.CardNo,SG.Name as AcName,SG.Add1,SG.Add2,SG.Add3,City.CityName As City,SG.Pin,State.Name As State,SG.Phone,SG.Mobile,SG.Fax,SG.Email FROM MemTagadaLetter MTL Left Join SubGroup SG On MTL.MemCode=SG.SubCode Left Join City On SG.CityCode=City.CityCode Left Join State On City.State=State.Code where MTL.Code='" & arg_C
  loc_1060905:       unk_4D5035.Execute var_9C & "' And MTL.Type='" & arg_10 & "' And (MTL.LOGSITE_CODE='" & MemVar_1F92078 & "' or MTL.LOGSITE_CODE='HO')", var_D0, -1
  loc_1060910:       Set var_88 = var_D4
  loc_1060928:     End If
  loc_1060928:   End If
  loc_1060928: End If
  loc_106093C: If (var_88.RecordCount > 0) Then
  loc_1060963:   Set var_D4 = var_88 
  loc_106096F:   var_DA = CreateFieldDefFile(var_D4, MemVar_1F920B4 & "\" & arg_10 & ".ttx", &HFF)
  loc_106097F:   var_C0 = CVar(var_DA) 'Integer
  loc_1060982:   var_98 = var_C0 'Variant
  loc_10609B9:   Call 0.Method_arg_1C (MemVar_1F920B4 & "\" & arg_10 & ".RPT", var_C0, var_D4, var_DA)
  loc_10609C4:   MemVar_1F921E4 = var_D4
  loc_10609ED:   Call 0.Method_arg_64 (var_D4, CVar(var_D4), var_EC, var_FC)
  loc_10609F5:   Call 0.Method_arg_2C (var_D4, var_D4)
  loc_1060A03:   Call 0.Method_arg_150 (var_D4)
  loc_1060A25:   Call 0.Method_Me8 (False, 1, var_FC)
  loc_1060A2A: End If
  loc_1060A2F: Set var_88 = Nothing
  loc_1060A32: Exit Sub
  loc_1060A33: ' Referenced from: 10607CC
  loc_1060A33: Proc_6_60_E62BC4(var_10C)
  loc_1060A38: Exit Sub
End Sub
