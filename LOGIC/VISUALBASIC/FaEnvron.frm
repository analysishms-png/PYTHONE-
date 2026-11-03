VERSION 5.00
Begin VB.Form FaEnvron
  Caption = "Environment Setting"
  BackColor = &HFFC0C0&
  ForeColor = &HC00000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  BorderStyle = 1 'Fixed Single
  Icon = "FaEnvron.frx":0
  MinButton = 0   'False
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 180
  ClientTop = 795
  ClientWidth = 8490
  ClientHeight = 7590
  WhatsThisHelp = -1  'True
  Begin Frame Frame7
    Caption = "Reports"
    BackColor = &HFFC0C0&
    ForeColor = &H4080&
    Left = 5625
    Top = 570
    Width = 5535
    Height = 795
    TabIndex = 86
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 39
      BackColor = &HFFFFFF&
      ForeColor = &H80&
      Left = 4845
      Top = 480
      Width = 550
      Height = 225
      TabIndex = 25
      BorderStyle = 0 'None
      MaxLength = 3
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
      Index = 37
      BackColor = &HFFFFFF&
      ForeColor = &H80&
      Left = 4845
      Top = 240
      Width = 550
      Height = 225
      TabIndex = 24
      BorderStyle = 0 'None
      MaxLength = 3
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
      Caption = "Want to Print To/By in place of Cr/Dr  (Y/N) ?"
      Index = 23
      ForeColor = &H80&
      Left = 1620
      Top = 480
      Width = 3165
      Height = 240
      TabIndex = 90
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Separate Page for each day in Cash/Bank Book (Y/N) ?"
      Index = 21
      ForeColor = &H80&
      Left = 825
      Top = 240
      Width = 3960
      Height = 240
      TabIndex = 87
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame6
    Caption = "Opening/Closing Stock Values"
    BackColor = &HFFC0C0&
    ForeColor = &H404000&
    Left = 5640
    Top = 3615
    Width = 3570
    Height = 855
    TabIndex = 81
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 34
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 810
      Top = 510
      Width = 550
      Height = 225
      TabIndex = 40
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 35
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 810
      Top = 270
      Width = 550
      Height = 225
      TabIndex = 38
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 33
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 2280
      Top = 510
      Width = 1155
      Height = 225
      TabIndex = 41
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      ForeColor = &H404000&
      Left = 2280
      Top = 270
      Width = 1155
      Height = 225
      TabIndex = 39
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      Appearance = 0 'Flat
    End
    Begin Label Label
      Caption = "Open.Qty"
      Index = 27
      ForeColor = &H404000&
      Left = 60
      Top = 270
      Width = 675
      Height = 240
      TabIndex = 85
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Clos.Qty"
      Index = 26
      ForeColor = &H404000&
      Left = 135
      Top = 510
      Width = 600
      Height = 240
      TabIndex = 84
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Value"
      Index = 17
      ForeColor = &H404000&
      Left = 1815
      Top = 510
      Width = 405
      Height = 240
      TabIndex = 83
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Value"
      Index = 16
      ForeColor = &H404000&
      Left = 1815
      Top = 270
      Width = 405
      Height = 240
      TabIndex = 82
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame5
    Caption = "Dos Printing"
    BackColor = &HFFC0C0&
    ForeColor = &H80000008&
    Left = 9300
    Top = 7680
    Width = 5460
    Height = 1110
    Visible = 0   'False
    TabIndex = 71
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 26
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4845
      Top = 225
      Width = 510
      Height = 195
      TabIndex = 20
      BorderStyle = 0 'None
      MaxLength = 6
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4845
      Top = 435
      Width = 450
      Height = 195
      TabIndex = 21
      BorderStyle = 0 'None
      MaxLength = 3
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4845
      Top = 855
      Width = 450
      Height = 195
      TabIndex = 23
      BorderStyle = 0 'None
      MaxLength = 3
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      ForeColor = &H0&
      Left = 4845
      Top = 645
      Width = 450
      Height = 195
      TabIndex = 22
      BorderStyle = 0 'None
      MaxLength = 3
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Company Name And Address Position on the Report (L/M) ?"
      Index = 14
      ForeColor = &H0&
      Left = 540
      Top = 225
      Width = 4260
      Height = 195
      TabIndex = 75
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Lbl
      Caption = "Report Date Should be Printed on the Report (Y/N) ?"
      Index = 13
      ForeColor = &H0&
      Left = 1035
      Top = 435
      Width = 3765
      Height = 195
      TabIndex = 74
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Lbl
      Caption = "Character to fill the lines in the report ?"
      Index = 12
      ForeColor = &H0&
      Left = 2100
      Top = 855
      Width = 2700
      Height = 195
      TabIndex = 73
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
    Begin Label Lbl
      Caption = "Page No. Should be Printed on the Report (Y/N) ?"
      Index = 11
      ForeColor = &H0&
      Left = 1230
      Top = 645
      Width = 3570
      Height = 195
      TabIndex = 72
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
    End
  End
  Begin Frame Frame4
    Caption = "Display"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 60
    Top = 4560
    Width = 5490
    Height = 1965
    TabIndex = 65
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 36
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 1665
      Width = 550
      Height = 225
      TabIndex = 19
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 30
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 1425
      Width = 550
      Height = 225
      TabIndex = 18
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 29
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 1185
      Width = 550
      Height = 225
      TabIndex = 17
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 22
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 705
      Width = 550
      Height = 225
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 21
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 945
      Width = 550
      Height = 225
      TabIndex = 16
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 20
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 465
      Width = 550
      Height = 225
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &H8080&
      Left = 4845
      Top = 225
      Width = 550
      Height = 225
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Show City Names With A/C Name (Y/N) ?"
      Index = 20
      ForeColor = &HC00000&
      Left = 1785
      Top = 1665
      Width = 2940
      Height = 240
      TabIndex = 88
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Monthly Summary (Y/N) ?"
      Index = 18
      ForeColor = &HC00000&
      Left = 2430
      Top = 1425
      Width = 2295
      Height = 240
      TabIndex = 79
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Balance in Cash/Bank Book (Y/N) ?"
      Index = 17
      ForeColor = &HC00000&
      Left = 1740
      Top = 1185
      Width = 2985
      Height = 240
      TabIndex = 78
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Site Code in Ledger (Y/N) ?"
      Index = 10
      ForeColor = &HC00000&
      Left = 2295
      Top = 705
      Width = 2430
      Height = 240
      TabIndex = 70
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Vr.Prefix in Ledger (Y/N) ?"
      Index = 9
      ForeColor = &HC00000&
      Left = 2370
      Top = 945
      Width = 2355
      Height = 240
      TabIndex = 69
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Division Code in Ledger (Y/N) ?"
      Index = 8
      ForeColor = &HC00000&
      Left = 1995
      Top = 465
      Width = 2730
      Height = 240
      TabIndex = 68
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Verticle Balance Sheet (Y/N) ?"
      Index = 7
      ForeColor = &HC00000&
      Left = 2130
      Top = 225
      Width = 2595
      Height = 240
      TabIndex = 66
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame3
    Caption = "Define Voucher"
    BackColor = &HFFC0C0&
    ForeColor = &H8000&
    Left = 60
    Top = 3600
    Width = 5490
    Height = 870
    TabIndex = 58
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &H8000&
      Left = 4845
      Top = 540
      Width = 550
      Height = 225
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &H8000&
      Left = 4845
      Top = 300
      Width = 550
      Height = 225
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Only System defined A/C Group in Don't Show A/C Groups (Y/N) ?"
      Index = 3
      ForeColor = &H8000&
      Left = 30
      Top = 555
      Width = 4725
      Height = 240
      TabIndex = 63
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Only System defined A/C Group in Must Show A/C Groups (Y/N) ?"
      Index = 2
      ForeColor = &H8000&
      Left = 60
      Top = 300
      Width = 4695
      Height = 240
      TabIndex = 62
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame2
    Caption = "Voucher Entry"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 45
    Top = 570
    Width = 5520
    Height = 2985
    TabIndex = 57
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 41
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 2625
      Width = 500
      Height = 225
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 40
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 2385
      Width = 500
      Height = 225
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 38
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 2145
      Width = 500
      Height = 225
      TabIndex = 8
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 31
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 1905
      Width = 500
      Height = 225
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 28
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 1425
      Width = 500
      Height = 225
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 27
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 1665
      Width = 500
      Height = 225
      TabIndex = 6
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 1185
      Width = 500
      Height = 225
      TabIndex = 4
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 945
      Width = 500
      Height = 225
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 225
      Width = 500
      Height = 225
      TabIndex = 0
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 465
      Width = 500
      Height = 225
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
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
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4905
      Top = 705
      Width = 500
      Height = 225
      TabIndex = 2
      BorderStyle = 0 'None
      MaxLength = 3
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lbl
      Caption = "Accept Post Dated Cheque (Y/N) ?"
      Index = 25
      ForeColor = &HC00000&
      Left = 2325
      Top = 2625
      Width = 2460
      Height = 240
      TabIndex = 92
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Enable Date Wise Current Balance (Y/N) ?"
      Index = 24
      ForeColor = &HC00000&
      Left = 1770
      Top = 2385
      Width = 3015
      Height = 240
      TabIndex = 91
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Use To/By Instead of Cr/Dr During Entry  (Y/N) ?"
      Index = 22
      ForeColor = &HC00000&
      Left = 1290
      Top = 2145
      Width = 3495
      Height = 240
      TabIndex = 89
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Online Adjustment (Y/N) ?"
      Index = 19
      ForeColor = &HC00000&
      Left = 2970
      Top = 1905
      Width = 1815
      Height = 240
      TabIndex = 80
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show A/c Group && Address (Y/N) ?"
      Index = 16
      ForeColor = &HC00000&
      Left = 2265
      Top = 1425
      Width = 2520
      Height = 240
      TabIndex = 77
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Enable A/c Help Filter (Y/N) ?"
      Index = 15
      ForeColor = &HC00000&
      Left = 2685
      Top = 1665
      Width = 2100
      Height = 240
      TabIndex = 76
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show City Name in A/C Help (Y/N) ?"
      Index = 5
      ForeColor = &HC00000&
      Left = 2175
      Top = 1185
      Width = 2610
      Height = 240
      TabIndex = 67
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Show Ledger Current Balance (Y/N) ?"
      Index = 4
      ForeColor = &HC00000&
      Left = 2055
      Top = 945
      Width = 2730
      Height = 240
      TabIndex = 64
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Limit Check for Debtors (Y/N) ?"
      Index = 6
      ForeColor = &HC00000&
      Left = 2595
      Top = 225
      Width = 2190
      Height = 240
      TabIndex = 61
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Limit Check for Creditors (Y/N) ?"
      Index = 0
      ForeColor = &HC00000&
      Left = 2505
      Top = 465
      Width = 2280
      Height = 240
      TabIndex = 60
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lbl
      Caption = "Warn on Negative Cash Balance (Y/N) ?"
      Index = 1
      ForeColor = &HC00000&
      Left = 1905
      Top = 705
      Width = 2880
      Height = 240
      TabIndex = 59
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame Frame1
    Caption = "Ageing Parameters"
    BackColor = &HFFC0C0&
    ForeColor = &H800080&
    Left = 5640
    Top = 1455
    Width = 3585
    Height = 2100
    TabIndex = 42
    ClipControls = 0   'False
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
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2295
      Top = 495
      Width = 1140
      Height = 225
      TabIndex = 32
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Left = 2295
      Top = 1695
      Width = 1140
      Height = 225
      TabIndex = 37
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2295
      Top = 1455
      Width = 1140
      Height = 225
      TabIndex = 36
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2295
      Top = 1215
      Width = 1140
      Height = 225
      TabIndex = 35
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Left = 2295
      Top = 975
      Width = 1140
      Height = 225
      TabIndex = 34
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      ForeColor = &HC00000&
      Left = 2295
      Top = 735
      Width = 1140
      Height = 225
      TabIndex = 33
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Left = 765
      Top = 735
      Width = 550
      Height = 225
      TabIndex = 27
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Left = 765
      Top = 975
      Width = 550
      Height = 225
      TabIndex = 28
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      ForeColor = &HC00000&
      Left = 765
      Top = 1215
      Width = 550
      Height = 225
      TabIndex = 29
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      ForeColor = &HC00000&
      Left = 765
      Top = 1455
      Width = 550
      Height = 225
      TabIndex = 30
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Left = 765
      Top = 1695
      Width = 550
      Height = 225
      TabIndex = 31
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 765
      Top = 495
      Width = 550
      Height = 225
      TabIndex = 26
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin Label Label
      Caption = "Amount"
      Index = 7
      ForeColor = &H800080&
      Left = 1485
      Top = 225
      Width = 915
      Height = 225
      TabIndex = 56
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Days"
      Index = 6
      ForeColor = &H800080&
      Left = 525
      Top = 225
      Width = 540
      Height = 225
      TabIndex = 55
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 1"
      Index = 0
      ForeColor = &H800080&
      Left = 1770
      Top = 495
      Width = 450
      Height = 240
      TabIndex = 54
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 6"
      Index = 1
      ForeColor = &H800080&
      Left = 1770
      Top = 1695
      Width = 450
      Height = 240
      TabIndex = 53
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 5"
      Index = 2
      ForeColor = &H800080&
      Left = 1770
      Top = 1455
      Width = 450
      Height = 240
      TabIndex = 52
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 4"
      Index = 3
      ForeColor = &H800080&
      Left = 1770
      Top = 1215
      Width = 450
      Height = 240
      TabIndex = 51
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 3"
      Index = 4
      ForeColor = &H800080&
      Left = 1770
      Top = 975
      Width = 450
      Height = 240
      TabIndex = 50
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Slab 2"
      Index = 5
      ForeColor = &H800080&
      Left = 1770
      Top = 735
      Width = 450
      Height = 240
      TabIndex = 49
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 2"
      Index = 9
      ForeColor = &H800080&
      Left = 90
      Top = 735
      Width = 600
      Height = 240
      TabIndex = 48
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 3"
      Index = 10
      ForeColor = &H800080&
      Left = 90
      Top = 975
      Width = 600
      Height = 240
      TabIndex = 47
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 4"
      Index = 11
      ForeColor = &H800080&
      Left = 90
      Top = 1215
      Width = 600
      Height = 240
      TabIndex = 46
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 5"
      Index = 12
      ForeColor = &H800080&
      Left = 90
      Top = 1455
      Width = 600
      Height = 240
      TabIndex = 45
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 6"
      Index = 13
      ForeColor = &H800080&
      Left = 90
      Top = 1695
      Width = 600
      Height = 240
      TabIndex = 44
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label
      Caption = "Period 1"
      Index = 14
      ForeColor = &H800080&
      Left = 90
      Top = 495
      Width = 600
      Height = 240
      TabIndex = 43
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin BtnEnh BTNCANCEL
    Left = 7350
    Top = 5670
    Width = 1500
    Height = 765
    TabIndex = 94
  End
  Begin BtnEnh btnok
    Left = 5835
    Top = 5670
    Width = 1500
    Height = 765
    TabIndex = 95
  End
  Begin BtnEnh BtnIntegrity
    Left = 5580
    Top = 4665
    Width = 3615
    Height = 840
    TabIndex = 96
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 93
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
End

Attribute VB_Name = "FaEnvron"


Private Sub btncancel_UnknownEvent_9 'E1A150
  'Data Table: 49EA24
  loc_E1A145: Me.Global.Unload Me
  loc_E1A14D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E49C24
  'Data Table: 49EA24
  loc_E49C02: Set var_88 = Me.Txt
  loc_E49C08: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E49C16: Call Ctrl_GetFocus(var_8C)
  loc_E49C22: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FAC3F0
  'Data Table: 49EA24
  Dim var_86 As Integer
  loc_FAC260: On Error Goto loc_FAC3C5
  loc_FAC266: var_86 = KeyCode
  loc_FAC271: If Not (var_86 = CInt(0)) Then
  loc_FAC27C:   If Not (var_86 = CInt(1)) Then
  loc_FAC287:     If Not (var_86 = CInt(2)) Then
  loc_FAC292:       If Not (var_86 = CInt(3)) Then
  loc_FAC29D:         If Not (var_86 = CInt(4)) Then
  loc_FAC2A8:           If (var_86 = CInt(5)) Then
  loc_FAC2AB:           End If
  loc_FAC2AB:         End If
  loc_FAC2AB:       End If
  loc_FAC2AB:     End If
  loc_FAC2AB:   End If
  loc_FAC2B5:   Set var_8C = Me.Txt
  loc_FAC2BB:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_FAC2D6:   Proc_183_21_FA163C(var_90, Shift, 4)
  loc_FAC2E5: Else
  loc_FAC2ED:   If Not (var_86 = CInt(&HA)) Then
  loc_FAC2F8:     If Not (var_86 = CInt(&HB)) Then
  loc_FAC303:       If Not (var_86 = CInt(&HC)) Then
  loc_FAC30E:         If Not (var_86 = CInt(&HD)) Then
  loc_FAC319:           If Not (var_86 = CInt(&HE)) Then
  loc_FAC324:             If Not (var_86 = CInt(&HF)) Then
  loc_FAC32F:               If Not (var_86 = CInt(&H20)) Then
  loc_FAC33A:                 If (var_86 = CInt(&H21)) Then
  loc_FAC33D:                 End If
  loc_FAC33D:               End If
  loc_FAC33D:             End If
  loc_FAC33D:           End If
  loc_FAC33D:         End If
  loc_FAC33D:       End If
  loc_FAC33D:     End If
  loc_FAC347:     Set var_8C = Me.Txt
  loc_FAC34D:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_FAC368:     Proc_183_21_FA163C(var_90, Shift, &HA)
  loc_FAC377:   Else
  loc_FAC37F:     If Not (var_86 = CInt(&H23)) Then
  loc_FAC38A:       If (var_86 = CInt(&H22)) Then
  loc_FAC38D:       End If
  loc_FAC397:       Set var_8C = Me.Txt
  loc_FAC39D:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, 2)
  loc_FAC3B8:       Proc_183_21_FA163C(var_90, Shift, 8)
  loc_FAC3C4:     End If
  loc_FAC3C4:   End If
  loc_FAC3C4: End If
  loc_FAC3C4: Exit Sub
  loc_FAC3C5: ' Referenced from: FAC260
  loc_FAC3CB: Call 0.Method_arg_50 (var_9C, 3)
  loc_FAC3E0: Proc_183_57_104AA84(var_9C, "Txt_KeyDown")
  loc_FAC3EC: Exit Sub
  loc_FAC3ED: DestructRecord
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1150610
  'Data Table: 49EA24
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  loc_1150264: On Error Goto loc_11505E8
  loc_115026A: var_86 = KeyAscii
  loc_1150275: If Not (var_86 = CInt(0)) Then
  loc_1150280:   If Not (var_86 = CInt(1)) Then
  loc_115028B:     If Not (var_86 = CInt(2)) Then
  loc_1150296:       If Not (var_86 = CInt(3)) Then
  loc_11502A1:         If Not (var_86 = CInt(4)) Then
  loc_11502AC:           If (var_86 = CInt(5)) Then
  loc_11502AF:           End If
  loc_11502AF:         End If
  loc_11502AF:       End If
  loc_11502AF:     End If
  loc_11502AF:   End If
  loc_11502B9:   Set var_8C = Me.Txt
  loc_11502BF:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_11502DA:   Proc_183_22_129AEBC(var_90, arg_10, 4)
  loc_11502E9: Else
  loc_11502F1:   If Not (var_86 = CInt(&HA)) Then
  loc_11502FC:     If Not (var_86 = CInt(&HB)) Then
  loc_1150307:       If Not (var_86 = CInt(&HC)) Then
  loc_1150312:         If Not (var_86 = CInt(&HD)) Then
  loc_115031D:           If Not (var_86 = CInt(&HE)) Then
  loc_1150328:             If Not (var_86 = CInt(&HF)) Then
  loc_1150333:               If Not (var_86 = CInt(&H20)) Then
  loc_115033E:                 If (var_86 = CInt(&H21)) Then
  loc_1150341:                 End If
  loc_1150341:               End If
  loc_1150341:             End If
  loc_1150341:           End If
  loc_1150341:         End If
  loc_1150341:       End If
  loc_1150341:     End If
  loc_115034B:     Set var_8C = Me.Txt
  loc_1150351:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_115036C:     Proc_183_22_129AEBC(var_90, arg_10, &HA)
  loc_115037B:   Else
  loc_1150383:     If Not (var_86 = CInt(&H23)) Then
  loc_115038E:       If (var_86 = CInt(&H22)) Then
  loc_1150391:       End If
  loc_115039B:       Set var_8C = Me.Txt
  loc_11503A1:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 2)
  loc_11503BC:       Proc_183_22_129AEBC(var_90, arg_10, 8)
  loc_11503CB:     Else
  loc_11503D3:       If Not (var_86 = CInt(6)) Then
  loc_11503DE:         If Not (var_86 = CInt(7)) Then
  loc_11503E9:           If Not (var_86 = CInt(8)) Then
  loc_11503F4:             If Not (var_86 = CInt(9)) Then
  loc_11503FF:               If Not (var_86 = CInt(&H10)) Then
  loc_115040A:                 If Not (var_86 = CInt(&H11)) Then
  loc_1150415:                   If Not (var_86 = CInt(&H12)) Then
  loc_1150420:                     If Not (var_86 = CInt(&H13)) Then
  loc_115042B:                       If Not (var_86 = CInt(&H14)) Then
  loc_1150436:                         If Not (var_86 = CInt(&H16)) Then
  loc_1150441:                           If Not (var_86 = CInt(&H15)) Then
  loc_115044C:                             If Not (var_86 = CInt(&H19)) Then
  loc_1150457:                               If Not (var_86 = CInt(&H17)) Then
  loc_1150462:                                 If Not (var_86 = CInt(&H1B)) Then
  loc_115046D:                                   If Not (var_86 = CInt(&H1C)) Then
  loc_1150478:                                     If Not (var_86 = CInt(&H1D)) Then
  loc_1150483:                                       If Not (var_86 = CInt(&H1E)) Then
  loc_115048E:                                         If Not (var_86 = CInt(&H1F)) Then
  loc_1150499:                                           If Not (var_86 = CInt(&H25)) Then
  loc_11504A4:                                             If Not (var_86 = CInt(&H24)) Then
  loc_11504AF:                                               If Not (var_86 = CInt(&H26)) Then
  loc_11504BA:                                                 If Not (var_86 = CInt(&H27)) Then
  loc_11504C5:                                                   If Not (var_86 = CInt(&H28)) Then
  loc_11504D0:                                                     If (var_86 = CInt(&H29)) Then
  loc_11504D3:                                                     End If
  loc_11504D3:                                                   End If
  loc_11504D3:                                                 End If
  loc_11504D3:                                               End If
  loc_11504D3:                                             End If
  loc_11504D3:                                           End If
  loc_11504D3:                                         End If
  loc_11504D3:                                       End If
  loc_11504D3:                                     End If
  loc_11504D3:                                   End If
  loc_11504D3:                                 End If
  loc_11504D3:                               End If
  loc_11504D3:                             End If
  loc_11504D3:                           End If
  loc_11504D3:                         End If
  loc_11504D3:                       End If
  loc_11504D3:                     End If
  loc_11504D3:                   End If
  loc_11504D3:                 End If
  loc_11504D3:               End If
  loc_11504D3:             End If
  loc_11504D3:           End If
  loc_11504D3:         End If
  loc_11504E0:         If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_11504F0:           Set var_8C = Me.Txt
  loc_11504F6:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, "No")
  loc_11504FE:           var_90.Text = 3
  loc_115050C:           arg_10 = 0
  loc_1150512:         Else
  loc_115051F:           If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_115052F:             Set var_8C = Me.Txt
  loc_1150535:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, "Yes")
  loc_115053D:             var_90.Text = arg_10
  loc_115054B:             arg_10 = 0
  loc_1150551:           Else
  loc_1150553:             arg_10 = 0
  loc_1150556:           End If
  loc_1150556:         End If
  loc_1150559:       Else
  loc_1150561:         If (var_86 = CInt(&H1A)) Then
  loc_1150571:           If ((arg_10 = &H4D) Or (arg_10 = &H6D)) Then
  loc_1150581:             Set var_8C = Me.Txt
  loc_1150587:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, "Middle", arg_10)
  loc_115058F:             var_90.Text = arg_10
  loc_115059D:             arg_10 = 0
  loc_11505A3:           Else
  loc_11505B0:             If ((arg_10 = &H4C) Or (arg_10 = &H6C)) Then
  loc_11505C0:               Set var_8C = Me.Txt
  loc_11505C6:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, "Left")
  loc_11505CE:               var_90.Text = arg_10
  loc_11505DC:               arg_10 = 0
  loc_11505E2:             Else
  loc_11505E4:               arg_10 = 0
  loc_11505E7:             End If
  loc_11505E7:           End If
  loc_11505E7:         End If
  loc_11505E7:       End If
  loc_11505E7:     End If
  loc_11505E7:   End If
  loc_11505E7: End If
  loc_11505E7: Exit Sub
  loc_11505E8: ' Referenced from: 1150264
  loc_11505EE: Call 0.Method_arg_50 (var_9C, arg_10, arg_10)
  loc_1150603: Proc_183_57_104AA84(var_9C, "TXT_KeyPress")
  loc_115060F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49C8C
  'Data Table: 49EA24
  loc_E49C6A: Set var_88 = Me.Txt
  loc_E49C70: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49C7E: Call Ctrl_validate(var_8C)
  loc_E49C8A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1210548
  'Data Table: 49EA24
  Dim var_86 As Integer
  Dim var_104 As Double
  Dim var_FC As String
  Dim var_F8 As TextBox
  Dim var_90 As TextBox
  loc_1210084: On Error Goto loc_121051F
  loc_121008A: var_86 = Cancel
  loc_1210095: If Not (var_86 = CInt(&H20)) Then
  loc_12100A0:   If (var_86 = CInt(&H21)) Then
  loc_12100A3:   End If
  loc_12100AD:   Set var_8C = Me.Txt
  loc_12100B3:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12100BF:   Proc_183_6_EA3004(CVar(var_90))
  loc_12100FC:   Set var_F4 = Me.Txt
  loc_1210102:   Call 0.Method_Txt_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_86), "0.00")))
  loc_121010A:   var_F8.Text = 1
  loc_1210129: Else
  loc_1210131:   If Not (var_86 = CInt(&H23)) Then
  loc_121013C:     If (var_86 = CInt(&H22)) Then
  loc_121013F:     End If
  loc_1210149:     Set var_8C = Me.Txt
  loc_121014F:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_121015B:     Proc_183_6_EA3004(CVar(var_90), 1)
  loc_1210198:     Set var_F4 = Me.Txt
  loc_121019E:     Call 0.Method_Txt_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_104), "0.000")))
  loc_12101A6:     var_F8.Text = 1
  loc_12101C5:   Else
  loc_12101CD:     If Not (var_86 = CInt(0)) Then
  loc_12101D8:       If Not (var_86 = CInt(1)) Then
  loc_12101E3:         If Not (var_86 = CInt(2)) Then
  loc_12101EE:           If Not (var_86 = CInt(3)) Then
  loc_12101F9:             If Not (var_86 = CInt(4)) Then
  loc_1210204:               If (var_86 = CInt(5)) Then
  loc_1210207:               End If
  loc_1210207:             End If
  loc_1210207:           End If
  loc_1210207:         End If
  loc_1210207:       End If
  loc_1210211:       Set var_8C = Me.Txt
  loc_1210217:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1210223:       Proc_183_6_EA3004(CVar(var_90), 1)
  loc_121023A:       var_E0 = "0"
  loc_121024A:       var_F0 = Format(CVar(var_104), var_E0)
  loc_1210252:       var_FC = CStr(var_F0)
  loc_1210260:       Set var_F4 = Me.Txt
  loc_1210266:       Call 0.Method_Txt_Validate0 (Cancel, var_F8, var_FC)
  loc_121026E:       var_F8.Text = 1
  loc_1210297:       Set var_8C = Me.Txt
  loc_121029D:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_FC)
  loc_12102A5:       1 = var_90.Text
  loc_12102C1:       Set var_F4 = Me.Txt
  loc_12102C7:       Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_12102EB:       If ((CDbl(Val(var_FC)) = CDbl(0)) Or (IsNumeric(CVar(var_F8)) = 0)) Then
  loc_12102F4:         Call 0.Method_arg_50 (var_FC)
  loc_1210315:         MsgBox(" Nil Amount Not Accepted ", &H10, CVar(var_FC), var_E0, var_F0)
  loc_1210332:         Set var_8C = Me.Txt
  loc_1210338:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1210340:         var_90.Text = vbNullString
  loc_1210356:         Set var_8C = Me.Txt
  loc_121035C:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1210364:         var_90.SetFocus
  loc_1210370:       End If
  loc_1210373:     Else
  loc_121037B:       If Not (var_86 = CInt(&HA)) Then
  loc_1210386:         If Not (var_86 = CInt(&HB)) Then
  loc_1210391:           If Not (var_86 = CInt(&HC)) Then
  loc_121039C:             If Not (var_86 = CInt(&HD)) Then
  loc_12103A7:               If Not (var_86 = CInt(&HE)) Then
  loc_12103B2:                 If (var_86 = CInt(&HF)) Then
  loc_12103B5:                 End If
  loc_12103B5:               End If
  loc_12103B5:             End If
  loc_12103B5:           End If
  loc_12103B5:         End If
  loc_12103BF:         Set var_8C = Me.Txt
  loc_12103C5:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12103D1:         Proc_183_6_EA3004(CVar(var_90))
  loc_12103E8:         var_E0 = "0.00"
  loc_12103F8:         var_F0 = Format(CVar(var_104), var_E0)
  loc_1210400:         var_FC = CStr(var_F0)
  loc_121040E:         Set var_F4 = Me.Txt
  loc_1210414:         Call 0.Method_Txt_Validate0 (Cancel, var_F8, var_FC)
  loc_121041C:         var_F8.Text = 1
  loc_1210445:         Set var_8C = Me.Txt
  loc_121044B:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_FC)
  loc_1210453:         1 = var_90.Text
  loc_121046F:         Set var_F4 = Me.Txt
  loc_1210475:         Call 0.Method_Txt_Validate0 (Cancel, var_F8)
  loc_1210499:         If ((CDbl(Val(var_FC)) = CDbl(0)) Or (IsNumeric(CVar(var_F8)) = 0)) Then
  loc_12104A2:           Call 0.Method_arg_50 (var_FC)
  loc_12104C3:           MsgBox(" Nil Quantity Not Accepted ", &H10, CVar(var_FC), var_E0, var_F0)
  loc_12104E0:           Set var_8C = Me.Txt
  loc_12104E6:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12104EE:           var_90.Text = vbNullString
  loc_1210504:           Set var_8C = Me.Txt
  loc_121050A:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1210512:           var_90.SetFocus
  loc_121051E:         End If
  loc_121051E:       End If
  loc_121051E:     End If
  loc_121051E:   End If
  loc_121051E: End If
  loc_121051E: Exit Sub
  loc_121051F: ' Referenced from: 1210084
  loc_1210525: Call 0.Method_arg_50 (var_FC)
  loc_121053A: Proc_183_57_104AA84(var_FC, "Txt_Validate")
  loc_1210546: Exit Sub
End Sub

Private Sub Form_Load() '1580DA4
  'Data Table: 49EA24
  Dim var_90 As Variant
  Dim var_94 As String
  Dim unk_49EA4F As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_D8 As TextBox
  Dim var_C0 As TextBox
  loc_157FC58: On Error Goto loc_1580D7A
  loc_157FC62: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_157FC75: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_157FC8B: Me.Frame2.BackColor = CLng(MemVar_1F921B0)
  loc_157FCA1: Me.Frame3.BackColor = CLng(MemVar_1F921B0)
  loc_157FCB7: Me.Frame4.BackColor = CLng(MemVar_1F921B0)
  loc_157FCCD: Me.Frame6.BackColor = CLng(MemVar_1F921B0)
  loc_157FCDD: Set var_90 = Me.Frame7
  loc_157FCE3: var_90.BackColor = CLng(MemVar_1F921B0)
  loc_157FCF2: Call 0.Method_arg_74 (CDbl(0))
  loc_157FCFE: Call 0.Method_arg_7C (CDbl(0))
  loc_157FD27: unk_49EA4F.Execute "select * from FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_B8, -1
  loc_157FD32: Set var_88 = var_90
  loc_157FD56: If (var_88.RecordCount > 0) Then
  loc_157FD7F:   Proc_183_3_E7D1C8(var_D0, CVar(var_88.Fields.Item("Age1")))
  loc_157FD96:   Set var_D4 = Me.Txt
  loc_157FD9C:   Call 0.Method_Form_Load0 (CInt(0), var_D8)
  loc_157FDA4:   var_D8.Text = CStr(var_D0)
  loc_157FDE2:   Proc_183_3_E7D1C8(var_D0, CVar(var_88.Fields.Item("Age2")))
  loc_157FDF9:   Set var_D4 = Me.Txt
  loc_157FDFF:   Call 0.Method_Form_Load0 (CInt(1), var_D8)
  loc_157FE07:   var_D8.Text = CStr(var_D0)
  loc_157FE45:   Proc_183_3_E7D1C8(var_D0, CVar(var_88.Fields.Item("Age3")))
  loc_157FE5C:   Set var_D4 = Me.Txt
  loc_157FE62:   Call 0.Method_Form_Load0 (CInt(2), var_D8)
  loc_157FE6A:   var_D8.Text = CStr(var_D0)
  loc_157FEA8:   Proc_183_3_E7D1C8(var_D0, CVar(var_88.Fields.Item("Age4")))
  loc_157FEBF:   Set var_D4 = Me.Txt
  loc_157FEC5:   Call 0.Method_Form_Load0 (CInt(3), var_D8)
  loc_157FECD:   var_D8.Text = CStr(var_D0)
  loc_157FF0B:   Proc_183_3_E7D1C8(var_D0, CVar(var_88.Fields.Item("Age5")))
  loc_157FF22:   Set var_D4 = Me.Txt
  loc_157FF28:   Call 0.Method_Form_Load0 (CInt(4), var_D8)
  loc_157FF30:   var_D8.Text = CStr(var_D0)
  loc_157FF6E:   Proc_183_3_E7D1C8(var_D0, CVar(var_88.Fields.Item("Age6")))
  loc_157FF85:   Set var_D4 = Me.Txt
  loc_157FF8B:   Call 0.Method_Form_Load0 (CInt(5), var_D8)
  loc_157FF93:   var_D8.Text = CStr(var_D0)
  loc_157FFD1:   Proc_183_4_EABBA8(var_D0, CVar(var_88.Fields.Item("Amt1")))
  loc_157FFE8:   Set var_D4 = Me.Txt
  loc_157FFEE:   Call 0.Method_Form_Load0 (CInt(&HA), var_D8)
  loc_157FFF6:   var_D8.Text = CStr(var_D0)
  loc_1580034:   Proc_183_4_EABBA8(var_D0, CVar(var_88.Fields.Item("Amt2")))
  loc_158004B:   Set var_D4 = Me.Txt
  loc_1580051:   Call 0.Method_Form_Load0 (CInt(&HB), var_D8)
  loc_1580059:   var_D8.Text = CStr(var_D0)
  loc_1580097:   Proc_183_4_EABBA8(var_D0, CVar(var_88.Fields.Item("Amt3")))
  loc_15800AE:   Set var_D4 = Me.Txt
  loc_15800B4:   Call 0.Method_Form_Load0 (CInt(&HC), var_D8)
  loc_15800BC:   var_D8.Text = CStr(var_D0)
  loc_15800FA:   Proc_183_4_EABBA8(var_D0, CVar(var_88.Fields.Item("Amt4")))
  loc_1580111:   Set var_D4 = Me.Txt
  loc_1580117:   Call 0.Method_Form_Load0 (CInt(&HD), var_D8)
  loc_158011F:   var_D8.Text = CStr(var_D0)
  loc_158015D:   Proc_183_4_EABBA8(var_D0, CVar(var_88.Fields.Item("Amt5")))
  loc_1580174:   Set var_D4 = Me.Txt
  loc_158017A:   Call 0.Method_Form_Load0 (CInt(&HE), var_D8)
  loc_1580182:   var_D8.Text = CStr(var_D0)
  loc_15801C0:   Proc_183_4_EABBA8(var_D0, CVar(var_88.Fields.Item("Amt6")))
  loc_15801D7:   Set var_D4 = Me.Txt
  loc_15801DD:   Call 0.Method_Form_Load0 (CInt(&HF), var_D8)
  loc_15801E5:   var_D8.Text = CStr(var_D0)
  loc_1580233:   Set var_D4 = Me.Txt
  loc_1580239:   Call 0.Method_Form_Load0 (CInt(6), var_D8)
  loc_1580241:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("DebitLimit")))
  loc_158028B:   Set var_D4 = Me.Txt
  loc_1580291:   Call 0.Method_Form_Load0 (CInt(7), var_D8)
  loc_1580299:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("CreditLimit")))
  loc_15802E3:   Set var_D4 = Me.Txt
  loc_15802E9:   Call 0.Method_Form_Load0 (CInt(8), var_D8)
  loc_15802F1:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("NegativeCashBalance")))
  loc_158033B:   Set var_D4 = Me.Txt
  loc_1580341:   Call 0.Method_Form_Load0 (CInt(9), var_D8)
  loc_1580349:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("ShowGroup")))
  loc_1580393:   Set var_D4 = Me.Txt
  loc_1580399:   Call 0.Method_Form_Load0 (CInt(&H10), var_D8)
  loc_15803A1:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("DonotShowGroup")))
  loc_15803EB:   Set var_D4 = Me.Txt
  loc_15803F1:   Call 0.Method_Form_Load0 (CInt(&H11), var_D8)
  loc_15803F9:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("ShowCurrentBalance")))
  loc_1580443:   Set var_D4 = Me.Txt
  loc_1580449:   Call 0.Method_Form_Load0 (CInt(&H12), var_D8)
  loc_1580451:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("VerticleBalanceSheet")))
  loc_158049B:   Set var_D4 = Me.Txt
  loc_15804A1:   Call 0.Method_Form_Load0 (CInt(&H13), var_D8)
  loc_15804A9:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("ShowCityName")))
  loc_15804F3:   Set var_D4 = Me.Txt
  loc_15804F9:   Call 0.Method_Form_Load0 (CInt(&H14), var_D8)
  loc_1580501:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("LedDivCode")))
  loc_158054B:   Set var_D4 = Me.Txt
  loc_1580551:   Call 0.Method_Form_Load0 (CInt(&H16), var_D8)
  loc_1580559:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("LedSiteCode")))
  loc_15805A3:   Set var_D4 = Me.Txt
  loc_15805A9:   Call 0.Method_Form_Load0 (CInt(&H15), var_D8)
  loc_15805B1:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("LedPrefix")))
  loc_15805FB:   Set var_D4 = Me.Txt
  loc_1580601:   Call 0.Method_Form_Load0 (CInt(&H18), var_D8)
  loc_1580609:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("linefiller")))
  loc_1580687:   Set var_D4 = Me.Txt
  loc_158068D:   Call 0.Method_Form_Load0 (CInt(&H19), var_D8)
  loc_1580695:   var_D8.Text = CStr(IIf((Proc_183_2_E5A304(CVar(var_88.Fields.Item("daterfill"))) = "Y"), "Yes", "No"))
  loc_1580723:   Set var_D4 = Me.Txt
  loc_1580729:   Call 0.Method_Form_Load0 (CInt(&H1A), var_D8)
  loc_1580731:   var_D8.Text = CStr(IIf((Proc_183_2_E5A304(CVar(var_88.Fields.Item("titlerfill"))) = "M"), "Middle", "Left"))
  loc_15807BF:   Set var_D4 = Me.Txt
  loc_15807C5:   Call 0.Method_Form_Load0 (CInt(&H17), var_D8)
  loc_15807CD:   var_D8.Text = CStr(IIf((Proc_183_2_E5A304(CVar(var_88.Fields.Item("pagenofill"))) = "Y"), "Yes", "No"))
  loc_1580827:   Set var_D4 = Me.Txt
  loc_158082D:   Call 0.Method_Form_Load0 (CInt(&H24), var_D8)
  loc_1580835:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("CityNameDisp")))
  loc_158087F:   Set var_D4 = Me.Txt
  loc_1580885:   Call 0.Method_Form_Load0 (CInt(&H1B), var_D8)
  loc_158088D:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("FilterAC")))
  loc_15808D7:   Set var_D4 = Me.Txt
  loc_15808DD:   Call 0.Method_Form_Load0 (CInt(&H1C), var_D8)
  loc_15808E5:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("AddressHelp")))
  loc_158092F:   Set var_D4 = Me.Txt
  loc_1580935:   Call 0.Method_Form_Load0 (CInt(&H1D), var_D8)
  loc_158093D:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("CashBookBalance")))
  loc_1580987:   Set var_D4 = Me.Txt
  loc_158098D:   Call 0.Method_Form_Load0 (CInt(&H1E), var_D8)
  loc_1580995:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("MonthTotal")))
  loc_15809DF:   Set var_D4 = Me.Txt
  loc_15809E5:   Call 0.Method_Form_Load0 (CInt(&H1F), var_D8)
  loc_15809ED:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("OnLineAdjustment")))
  loc_1580A37:   Set var_D4 = Me.Txt
  loc_1580A3D:   Call 0.Method_Form_Load0 (CInt(&H23), var_D8)
  loc_1580A45:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("OpStockQTY")))
  loc_1580A8F:   Set var_D4 = Me.Txt
  loc_1580A95:   Call 0.Method_Form_Load0 (CInt(&H20), var_D8)
  loc_1580A9D:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("OpStockValue")))
  loc_1580AE7:   Set var_D4 = Me.Txt
  loc_1580AED:   Call 0.Method_Form_Load0 (CInt(&H22), var_D8)
  loc_1580AF5:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("ClStockQTY")))
  loc_1580B3F:   Set var_D4 = Me.Txt
  loc_1580B45:   Call 0.Method_Form_Load0 (CInt(&H21), var_D8)
  loc_1580B4D:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("ClStockValue")))
  loc_1580B97:   Set var_D4 = Me.Txt
  loc_1580B9D:   Call 0.Method_Form_Load0 (CInt(&H25), var_D8)
  loc_1580BA5:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("CashBookPage")))
  loc_1580BEF:   Set var_D4 = Me.Txt
  loc_1580BF5:   Call 0.Method_Form_Load0 (CInt(&H28), var_D8)
  loc_1580BFD:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("PreBal")))
  loc_1580C47:   Set var_D4 = Me.Txt
  loc_1580C4D:   Call 0.Method_Form_Load0 (CInt(&H29), var_D8)
  loc_1580C55:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("PDCDt")))
  loc_1580C9F:   Set var_D4 = Me.Txt
  loc_1580CA5:   Call 0.Method_Form_Load0 (CInt(&H26), var_D8)
  loc_1580CAD:   var_D8.Text = Proc_183_2_E5A304(CVar(var_88.Fields.Item("ToBy")))
  loc_1580CD8:   var_C0 = var_88.Fields.Item("RepToBy")
  loc_1580CE9:   var_94 = Proc_183_2_E5A304(CVar(var_C0))
  loc_1580CF7:   Set var_D4 = Me.Txt
  loc_1580CFD:   Call 0.Method_Form_Load0 (CInt(&H27), var_D8)
  loc_1580D05:   var_D8.Text = var_94
  loc_1580D1C: Else
  loc_1580D2E:   Call 0.Method_Form_LoadC (var_12E, var_8A)
  loc_1580D3C:   For var_132 = Me.Txt To (var_12E - 1):   0 = var_132 'Integer
  loc_1580D4F:     Set var_90 = Me.Txt
  loc_1580D55:     Call 0.Method_Form_Load0 (var_8A, var_C0)
  loc_1580D5D:     var_C0.Text = vbNullString
  loc_1580D6C:   Next var_132 'Integer
  loc_1580D71: End If
  loc_1580D76: Set var_88 = Nothing
  loc_1580D79: Exit Sub
  loc_1580D7A: ' Referenced from: 157FC58
  loc_1580D80: Call 0.Method_arg_50 (var_94)
  loc_1580D88: var_12C = "Form_Load"
  loc_1580D95: Proc_183_57_104AA84(var_94)
  loc_1580DA1: Exit Sub
End Sub

Private Sub Form_Resize() 'E6EB14
  'Data Table: 49EA24
  loc_E6EABE: Call 0.Method_arg_50 (var_88)
  loc_E6EAD0: Me.LblFormCaption.Caption = var_88
  loc_E6EAE9: Me.LblFormCaption.Left = CDbl(0)
  loc_E6EAF7: Call 0.Method_arg_100 (var_90)
  loc_E6EB09: Me.LblFormCaption.Width = var_90
  loc_E6EB11: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E11FD4
  'Data Table: 49EA24
  loc_E11FCB: Set global_56 = Nothing
  loc_E11FD2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F18CD4
  'Data Table: 49EA24
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_9C As Variant
  Dim KeyCode As Integer
  loc_F18BE0: On Error Goto loc_F18CAC
  loc_F18BE6: var_86 = KeyCode
  loc_F18BF3: If Not (var_86 = CInt(&HD)) Then
  loc_F18C00:   If Not (var_86 = CInt(&H28)) Then
  loc_F18C0D:     If (var_86 = CInt(&H26)) Then
  loc_F18C10:     End If
  loc_F18C10:   End If
  loc_F18C13:   var_88 = KeyCode
  loc_F18C20:   If Not (var_88 = CInt(&H28)) Then
  loc_F18C2D:     If (var_88 = CInt(&H26)) Then
  loc_F18C30:     End If
  loc_F18C30:   End If
  loc_F18C36:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_F18C45:   If TypeOf var_8C Is arg_7 Then
  loc_F18C4E:     Call 0.Method_arg_1E8 (var_8C)
  loc_F18C56:     var_9C = var_8C.index
  loc_F18C69:     Call Txt_Validate(CInt(var_9C))
  loc_F18C74:   End If
  loc_F18C90:   Call 0.Method_arg_58 (Me, KeyCode, Shift, var_9E)
  loc_F18C9E:   If (var_9E = &HFF) Then
  loc_F18CA1:     Call Proc_199_14_E8D364(0, var_9C)
  loc_F18CA6:   End If
  loc_F18CA8:   KeyCode = 0
  loc_F18CAB: End If
  loc_F18CAB: Exit Sub
  loc_F18CAC: ' Referenced from: F18BE0
  loc_F18CB2: Call 0.Method_arg_50 (var_A4, KeyCode)
  loc_F18CC7: Proc_183_57_104AA84(var_A4, "Form_KeyDown")
  loc_F18CD3: Exit Sub
End Sub

Private Sub btnok_UnknownEvent_9 '160F8D8
  'Data Table: 49EA24
  Dim var_98 As Variant
  Dim var_104 As Variant
  Dim var_B0 As Variant
  Dim var_10C As Double
  Dim var_C8 As Variant
  Dim var_114 As Double
  Dim var_E0 As Variant
  Dim var_11C As Double
  Dim var_F8 As Variant
  Dim var_124 As Double
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_BC As TextBox
  Dim var_D4 As Variant
  Dim var_EC As TextBox
  Dim var_154 As Variant
  Dim var_164 As Variant
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim unk_49EA4F As Connection15
  Dim var_88 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_B4 As Variant
  Dim var_144 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_2A4 As Variant
  Dim var_454 As Variant
  Dim var_5EC As Variant
  Dim var_714 As Variant
  Dim var_894 As Variant
  Dim var_A7C As Variant
  Dim var_BFC As Variant
  Dim var_D94 As Variant
  Dim var_F14 As Variant
  Dim var_1024 As Variant
  loc_160E82C: On Error Goto loc_160F8AD
  loc_160E83D: Set var_94 = Me.Txt
  loc_160E843: Call 0.Method_btnok_UnknownEvent_90 (CInt(1), var_98)
  loc_160E858: var_104 = Val(var_98.Text)
  loc_160E869: Set var_AC = Me.Txt
  loc_160E86F: Call 0.Method_btnok_UnknownEvent_90 (CInt(2), var_B0)
  loc_160E884: var_10C = Val(var_B0.Text)
  loc_160E895: Set var_C4 = Me.Txt
  loc_160E89B: Call 0.Method_btnok_UnknownEvent_90 (CInt(3), var_C8, var_CC)
  loc_160E8B0: var_114 = Val(var_CC)
  loc_160E8C1: Set var_DC = Me.Txt
  loc_160E8C7: Call 0.Method_btnok_UnknownEvent_90 (CInt(4), var_E0, var_E4)
  loc_160E8DC: var_11C = Val(var_E4)
  loc_160E8ED: Set var_F4 = Me.Txt
  loc_160E8F3: Call 0.Method_btnok_UnknownEvent_90 (CInt(5), var_F8, var_FC)
  loc_160E908: var_124 = Val(var_FC)
  loc_160E919: Set var_88 = Me.Txt
  loc_160E91F: Call 0.Method_btnok_UnknownEvent_90 (CInt(0), var_8C, var_90)
  loc_160E948: Set var_A0 = Me.Txt
  loc_160E94E: Call 0.Method_btnok_UnknownEvent_90 (CInt(1), var_A4, var_A8)
  loc_160E956: (CDbl(Val(var_90)) >= CDbl(var_104)) = var_A4.Text
  loc_160E978: Set var_B8 = Me.Txt
  loc_160E97E: Call 0.Method_btnok_UnknownEvent_90 (CInt(2), var_BC)
  loc_160E9A8: Set var_D0 = Me.Txt
  loc_160E9AE: Call 0.Method_btnok_UnknownEvent_90 (CInt(3), var_D4)
  loc_160E9D8: Set var_E8 = Me.Txt
  loc_160E9DE: Call 0.Method_btnok_UnknownEvent_90 (CInt(4), var_EC)
  loc_160EA3C: If ((((var_104 Or (CDbl(Val(var_A8)) >= CDbl(var_C8.Text))) Or (CDbl(Val(var_BC.Text)) >= CDbl(var_E0.Text))) Or (CDbl(Val(var_D4.Text)) >= CDbl(var_F8.Text))) Or (CDbl(Val(var_EC.Text)) >= CDbl(var_8C.Text))) Then
  loc_160EA45:   Call 0.Method_arg_50 (var_90)
  loc_160EA66:   MsgBox(" Time Periods Must be in Increasing Order ", &H10, CVar(var_90), var_174, var_194)
  loc_160EA76:   Exit Sub
  loc_160EA7A: Else
  loc_160EA88:   Set var_94 = Me.Txt
  loc_160EA8E:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HB), var_98)
  loc_160EAA3:   var_104 = Val(var_98.Text)
  loc_160EAB4:   Set var_AC = Me.Txt
  loc_160EABA:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HC), var_B0)
  loc_160EACF:   var_10C = Val(var_B0.Text)
  loc_160EAE0:   Set var_C4 = Me.Txt
  loc_160EAE6:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HD), var_C8, var_CC)
  loc_160EAFB:   var_114 = Val(var_CC)
  loc_160EB0C:   Set var_DC = Me.Txt
  loc_160EB12:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HE), var_E0, var_E4)
  loc_160EB27:   var_11C = Val(var_E4)
  loc_160EB38:   Set var_F4 = Me.Txt
  loc_160EB3E:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HF), var_F8, var_FC)
  loc_160EB53:   var_124 = Val(var_FC)
  loc_160EB64:   Set var_88 = Me.Txt
  loc_160EB6A:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HA), var_8C, var_90)
  loc_160EB93:   Set var_A0 = Me.Txt
  loc_160EB99:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HB), var_A4, var_A8)
  loc_160EBA1:   (CDbl(Val(var_90)) >= CDbl(var_104)) = var_A4.Text
  loc_160EBC3:   Set var_B8 = Me.Txt
  loc_160EBC9:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HC), var_BC)
  loc_160EBD1:   var_C0 = var_BC.Text
  loc_160EBF3:   Set var_D0 = Me.Txt
  loc_160EBF9:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HD), var_D4)
  loc_160EC01:   var_D8 = var_D4.Text
  loc_160EC23:   Set var_E8 = Me.Txt
  loc_160EC29:   Call 0.Method_btnok_UnknownEvent_90 (CInt(&HE), var_EC)
  loc_160EC31:   var_F0 = var_EC.Text
  loc_160EC87:   If ((((var_104 Or (CDbl(Val(var_A8)) >= CDbl(var_C8.Text))) Or (CDbl(Val(var_C0)) >= CDbl(var_E0.Text))) Or (CDbl(Val(var_D8)) >= CDbl(var_F8.Text))) Or (CDbl(Val(var_F0)) >= CDbl(var_8C.Text))) Then
  loc_160EC90:     Call 0.Method_arg_50 (var_90)
  loc_160EC9E:     var_154 = CVar(var_90) 'String
  loc_160ECAB:     var_144 = " Amount Slab Must be in Increasing Order "
  loc_160ECB1:     MsgBox(var_144, &H10, var_154, var_174, var_194)
  loc_160ECC1:     Exit Sub
  loc_160ECC5:   Else
  loc_160ECCB:     var_164 = 0
  loc_160ECF8:     unk_49EA4F.Execute "SELECT COUNT(*) FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_144, -1
  loc_160ED00:     var_88 = var_88.Fields
  loc_160ED08:     var_164 = var_8C.Item(var_8C)
  loc_160ED10:     var_94 = var_94.Value
  loc_160ED37:     If (var_154 <= 0) Then
  loc_160ED4E:       var_90 = "INSERT INTO FAENVIRO (AGE1,SITE_CODE,LOGSITE_CODE) VALUES (0,'" & MemVar_1F92070
  loc_160ED55:       var_9C = var_90 & "','"
  loc_160ED5C:       var_A8 = var_9C & MemVar_1F92078
  loc_160ED63:       var_B4 = var_A8 & "')"
  loc_160ED6C:       unk_49EA4F.Execute var_B4, var_144, -1
  loc_160ED82:     End If
  loc_160ED8D:     Set var_88 = Me.Txt
  loc_160ED93:     Call 0.Method_btnok_UnknownEvent_90 (CInt(0), var_8C)
  loc_160EDA2:     Proc_183_3_E7D1C8(var_154, CVar(var_8C))
  loc_160EDB2:     Set var_94 = Me.Txt
  loc_160EDB8:     Call 0.Method_btnok_UnknownEvent_90 (CInt(1), var_98)
  loc_160EDC7:     Proc_183_3_E7D1C8(var_1B4, CVar(var_98))
  loc_160EDD7:     Set var_A0 = Me.Txt
  loc_160EDDD:     Call 0.Method_btnok_UnknownEvent_90 (CInt(2), var_A4)
  loc_160EDEC:     Proc_183_3_E7D1C8(var_1F4, CVar(var_A4))
  loc_160EDFC:     Set var_AC = Me.Txt
  loc_160EE02:     Call 0.Method_btnok_UnknownEvent_90 (CInt(3), var_B0)
  loc_160EE11:     Proc_183_3_E7D1C8(var_244, CVar(var_B0))
  loc_160EE21:     Set var_B8 = Me.Txt
  loc_160EE27:     Call 0.Method_btnok_UnknownEvent_90 (CInt(4), var_BC)
  loc_160EE36:     Proc_183_3_E7D1C8(var_294, CVar(var_BC))
  loc_160EE46:     Set var_C4 = Me.Txt
  loc_160EE4C:     Call 0.Method_btnok_UnknownEvent_90 (CInt(5), var_C8)
  loc_160EE5B:     Proc_183_3_E7D1C8(var_2E4, CVar(var_C8))
  loc_160EE6B:     Set var_D0 = Me.Txt
  loc_160EE71:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HA), var_D4)
  loc_160EE80:     Proc_183_3_E7D1C8(var_334, CVar(var_D4))
  loc_160EE90:     Set var_DC = Me.Txt
  loc_160EE96:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HB), var_E0)
  loc_160EEA5:     Proc_183_3_E7D1C8(var_384, CVar(var_E0))
  loc_160EEB5:     Set var_E8 = Me.Txt
  loc_160EEBB:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HC), var_EC)
  loc_160EECA:     Proc_183_3_E7D1C8(var_3D4, CVar(var_EC))
  loc_160EEDA:     Set var_F4 = Me.Txt
  loc_160EEE0:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HD), var_F8)
  loc_160EEEF:     Proc_183_3_E7D1C8(var_424, CVar(var_F8))
  loc_160EEFF:     Set var_458 = Me.Txt
  loc_160EF05:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HE), var_45C)
  loc_160EF14:     Proc_183_3_E7D1C8(var_47C, CVar(var_45C))
  loc_160EF24:     Set var_4B0 = Me.Txt
  loc_160EF2A:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&HF), var_4B4)
  loc_160EF39:     Proc_183_3_E7D1C8(var_4D4, CVar(var_4B4))
  loc_160EF49:     Set var_508 = Me.Txt
  loc_160EF4F:     Call 0.Method_btnok_UnknownEvent_90 (CInt(6), var_50C)
  loc_160EF5E:     Proc_183_9_EAA760(var_52C, CVar(var_50C))
  loc_160EF6E:     Set var_560 = Me.Txt
  loc_160EF74:     Call 0.Method_btnok_UnknownEvent_90 (CInt(7), var_564)
  loc_160EF83:     Proc_183_9_EAA760(var_584, CVar(var_564))
  loc_160EF93:     Set var_5B8 = Me.Txt
  loc_160EF99:     Call 0.Method_btnok_UnknownEvent_90 (CInt(8), var_5BC)
  loc_160EFA8:     Proc_183_9_EAA760(var_5DC, CVar(var_5BC))
  loc_160EFB8:     Set var_610 = Me.Txt
  loc_160EFBE:     Call 0.Method_btnok_UnknownEvent_90 (CInt(9), var_614)
  loc_160EFCD:     Proc_183_9_EAA760(var_634, CVar(var_614))
  loc_160EFDD:     Set var_668 = Me.Txt
  loc_160EFE3:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H10), var_66C)
  loc_160EFF2:     Proc_183_9_EAA760(var_68C, CVar(var_66C))
  loc_160F002:     Set var_6C0 = Me.Txt
  loc_160F008:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H11), var_6C4)
  loc_160F017:     Proc_183_9_EAA760(var_6E4, CVar(var_6C4))
  loc_160F027:     Set var_718 = Me.Txt
  loc_160F02D:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H12), var_71C)
  loc_160F03C:     Proc_183_9_EAA760(var_73C, CVar(var_71C))
  loc_160F04C:     Set var_770 = Me.Txt
  loc_160F052:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H13), var_774)
  loc_160F061:     Proc_183_9_EAA760(var_794, CVar(var_774))
  loc_160F071:     Set var_7C8 = Me.Txt
  loc_160F077:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H14), var_7CC)
  loc_160F086:     Proc_183_9_EAA760(var_7EC, CVar(var_7CC))
  loc_160F096:     Set var_840 = Me.Txt
  loc_160F09C:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H16), var_844)
  loc_160F0AB:     Proc_183_9_EAA760(var_864, CVar(var_844))
  loc_160F0BB:     Set var_898 = Me.Txt
  loc_160F0C1:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H15), var_89C)
  loc_160F0D0:     Proc_183_9_EAA760(var_8BC, CVar(var_89C))
  loc_160F0E0:     Set var_8F0 = Me.Txt
  loc_160F0E6:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H18), var_8F4)
  loc_160F0F5:     Proc_183_9_EAA760(var_914, CVar(var_8F4))
  loc_160F105:     Set var_948 = Me.Txt
  loc_160F10B:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H19), var_94C)
  loc_160F12A:     Proc_183_9_EAA760(var_97C, Left(CVar(var_94C), 1))
  loc_160F13A:     Set var_9D0 = Me.Txt
  loc_160F140:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1A), var_9D4)
  loc_160F15F:     Proc_183_9_EAA760(var_A04, Left(CVar(var_9D4), 1))
  loc_160F16F:     Set var_A38 = Me.Txt
  loc_160F175:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H17), var_A3C)
  loc_160F194:     Proc_183_9_EAA760(var_A6C, Left(CVar(var_A3C), 1))
  loc_160F1A4:     Set var_AA0 = Me.Txt
  loc_160F1AA:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1B), var_AA4)
  loc_160F1B9:     Proc_183_9_EAA760(var_AC4, CVar(var_AA4))
  loc_160F1C9:     Set var_AF8 = Me.Txt
  loc_160F1CF:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1C), var_AFC)
  loc_160F1DE:     Proc_183_9_EAA760(var_B1C, CVar(var_AFC))
  loc_160F1EE:     Set var_B50 = Me.Txt
  loc_160F1F4:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1D), var_B54)
  loc_160F203:     Proc_183_9_EAA760(var_B74, CVar(var_B54))
  loc_160F213:     Set var_BA8 = Me.Txt
  loc_160F219:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1E), var_BAC)
  loc_160F228:     Proc_183_9_EAA760(var_BCC, CVar(var_BAC))
  loc_160F238:     Set var_C00 = Me.Txt
  loc_160F23E:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H1F), var_C04)
  loc_160F24D:     Proc_183_9_EAA760(var_C24, CVar(var_C04))
  loc_160F25D:     Set var_C58 = Me.Txt
  loc_160F263:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H23), var_C5C)
  loc_160F272:     Proc_183_3_E7D1C8(var_C7C, CVar(var_C5C))
  loc_160F282:     Set var_CB0 = Me.Txt
  loc_160F288:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H20), var_CB4)
  loc_160F297:     Proc_183_3_E7D1C8(var_CD4, CVar(var_CB4))
  loc_160F2A7:     Set var_D08 = Me.Txt
  loc_160F2AD:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H22), var_D0C)
  loc_160F2BC:     Proc_183_3_E7D1C8(var_D2C, CVar(var_D0C))
  loc_160F2CC:     Set var_D60 = Me.Txt
  loc_160F2D2:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H21), var_D64)
  loc_160F2E1:     Proc_183_3_E7D1C8(var_D84, CVar(var_D64))
  loc_160F2F1:     Set var_DB8 = Me.Txt
  loc_160F2F7:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H25), var_DBC)
  loc_160F306:     Proc_183_9_EAA760(var_DDC, CVar(var_DBC))
  loc_160F316:     Set var_E10 = Me.Txt
  loc_160F31C:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H24), var_E14)
  loc_160F32B:     Proc_183_9_EAA760(var_E34, CVar(var_E14))
  loc_160F33B:     Set var_E68 = Me.Txt
  loc_160F341:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H26), var_E6C)
  loc_160F350:     Proc_183_9_EAA760(var_E8C, CVar(var_E6C))
  loc_160F360:     Set var_EC0 = Me.Txt
  loc_160F366:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H27), var_EC4)
  loc_160F375:     Proc_183_9_EAA760(var_EE4, CVar(var_EC4))
  loc_160F385:     Set var_F18 = Me.Txt
  loc_160F38B:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H28), var_F1C)
  loc_160F39A:     Proc_183_9_EAA760(var_F3C, CVar(var_F1C))
  loc_160F3AA:     Set var_F70 = Me.Txt
  loc_160F3B0:     Call 0.Method_btnok_UnknownEvent_90 (CInt(&H29), var_F74)
  loc_160F3BF:     Proc_183_9_EAA760(var_F94, CVar(var_F74))
  loc_160F419:     var_2A4 = "update FaEnviro SET AGE1=" & var_154 & ",AGE2=" & var_1B4 & ",AGE3=" & var_1F4 & ",AGE4=" & var_244 & ",AGE5=" & var_294 
  loc_160F472:     var_454 = var_2A4 & ",AGE6=" & var_2E4 & ",AMT1=" & var_334 & ",AMT2=" & var_384 & ",AMT3=" & var_3D4 & ",AMT4=" & var_424 & ",AMT5=" 
  loc_160F4B9:     var_5EC = var_454 & var_47C & ",AMT6=" & var_4D4 & ",DebitLimit=" & var_52C & ",CreditLimit=" & var_584 & ",NegativeCashBalance=" & var_5DC 
  loc_160F4F2:     var_714 = var_5EC & ",ShowGroup=" & var_634 & ",DonotShowGroup=" & var_68C & ",ShowCurrentBalance=" & var_6E4 & ",VerticleBalanceSheet=" 
  loc_160F53B:     var_894 = var_714 & var_73C & ",ShowCityName=" & var_794 & ",LedDivCode=" & var_7EC & "," & "LedSiteCode=" & var_864 & ",LedPrefix=" 
  loc_160F58B:     var_A7C = var_894 & var_8BC & ",linefiller=" & var_914 & ",daterfill=" & var_97C & "," & "titlerfill=" & var_A04 & ",pagenofill=" & var_A6C 
  loc_160F5D4:     var_BFC = var_A7C & ",FilterAC=" & var_AC4 & ",AddressHelp=" & var_B1C & ",CashBookBalance=" & var_B74 & ",MonthTotal=" & var_BCC & ",OnLineAdjustment=" 
  loc_160F61B:     var_D94 = var_BFC & var_C24 & ",OpStockQTY=" & var_C7C & ",OpStockValue=" & var_CD4 & ",ClStockQTY=" & var_D2C & ",ClStockValue=" & var_D84 
  loc_160F664:     var_F14 = var_D94 & ",CashBookPage=" & var_DDC & ",CityNameDisp=" & var_E34 & ",ToBy=" & var_E8C & ",RepToBy=" & var_EE4 & ",PreBal=" 
  loc_160F6A1:     var_1024 = var_F14 & var_F3C & ",PDCDt = " & var_F94 & ",SITE_CODE='" & CVar(MemVar_1F92070) & "',LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_160F6C1:     var_90 = CStr(var_1024 & "' WHERE LOGSITE_CODE='" & CVar(MemVar_1F92078) & "'")
  loc_160F6CB:     unk_49EA4F.Execute var_90, var_10A4, -1
  loc_160F897:   End If
  loc_160F897: End If
  loc_160F8A4: Me.Global.Unload Me
  loc_160F8AC: Exit Sub
  loc_160F8AD: ' Referenced from: 160E82C
  loc_160F8B3: Call 0.Method_arg_50 (var_90, var_10A8)
  loc_160F8C8: Proc_183_57_104AA84(var_90, "btnok_Click")
  loc_160F8D4: Exit Sub
End Sub

Private Sub BtnIntegrity_UnknownEvent_9 '1A6241C
  'Data Table: 49EA24
  Dim var_9C As String
  Dim var_98 As String
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_D8 As Variant
  Dim unk_49EA4F As Connection15
  Dim var_EC As Variant
  Dim var_A0 As Field20
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_154 As Variant
  Dim var_164 As String
  Dim var_174 As Variant
  Dim var_144 As Variant
  Dim var_B4 As String
  Dim var_1A8 As String
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_1CC As String
  Dim var_B8 As String
  loc_1A5EADC: On Error Goto loc_1A623F3
  loc_1A5EAE6: Call 0.Method_arg_A4 (CInt(&HB))
  loc_1A5EAF7: var_94 = Me.Global.App
  loc_1A5EB1B: Call 0.Method_arg_78 (App.Path & "\HMSACIssueList.Log", &HFF)
  loc_1A5EB3A: var_94 = Me.Global.App
  loc_1A5EB66: Call 0.Method_arg_7C (App.Path & "\HMSACIssueList.Log", 8, 0, 0)
  loc_1A5EB71: Set var_8C = var_A0
  loc_1A5EB8F: Call 0.Method_arg_38 ("***** Analysis Compter System            " & vbCrLf, var_A0)
  loc_1A5EB9E: var_98 = "-----------------------------------------" & vbCrLf
  loc_1A5EBA4: Call 0.Method_arg_38 ("***** Analysis Compter System            " & vbCrLf, 0)
  loc_1A5EBB9: Call 0.Method_arg_38 ("***** DESCRIPTION : Account Integrity Tool" & vbCrLf)
  loc_1A5EBCE: Call 0.Method_arg_38 ("***** WRITTEN BY  : HMS Team              " & vbCrLf)
  loc_1A5EBE3: Call 0.Method_arg_38 ("***** DATE UPDATED: 15/Jul/2012           " & vbCrLf)
  loc_1A5EBF2: var_98 = "-----------------------------------------" & vbCrLf
  loc_1A5EBF8: Call 0.Method_arg_38 ("***** DATE UPDATED: 15/Jul/2012           " & vbCrLf)
  loc_1A5EC0D: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5EC22: Call 0.Method_arg_38 ("***** Checking & Updating FaEnviro For System Defined Account Groups *****" & vbCrLf)
  loc_1A5EC2D: var_B8 = "N"
  loc_1A5EC36: var_B4 = "Y"
  loc_1A5EC71: Call Proc_199_15_116FC04("0022", "BANK ACCOUNTS", "A", "Bank", "060007")
  loc_1A5EC8A: var_B8 = "N"
  loc_1A5EC93: var_B4 = "Y"
  loc_1A5ECCE: Call Proc_199_15_116FC04("0011", "BANK OD/AC", "L", "Bank", "020001", &H6E)
  loc_1A5ECE7: var_B8 = "N"
  loc_1A5ED2B: Call Proc_199_15_116FC04("0007", "BRANCH/DIVISIONS", "A", "Others", "070", &H46, "Y")
  loc_1A5ED88: Call Proc_199_15_116FC04("0001", "CAPITAL ACCOUNT", "L", "Others", "010", &HA, "Y", "N")
  loc_1A5EDD6: var_9C = "CASH-IN-HAND"
  loc_1A5EDE5: Call Proc_199_15_116FC04("0021", "CAPITAL ACCOUNT", "A", "Cash", "060005", &HD2, "Y", "N")
  loc_1A5EE42: Call Proc_199_15_116FC04("000A", "CLOSING STOCK", "R", "Others", "200", &HF0, "Y", "Y")
  loc_1A5EE9F: Call Proc_199_15_116FC04("0006", "CURRENT ASSETS", "A", "Others", "060", &H3C, "Y", "N")
  loc_1A5EEFC: Call Proc_199_15_116FC04("0003", "CURRENT LIABILITIES", "L", "Others", "030", &H1E, "Y", "N")
  loc_1A5EF59: Call Proc_199_15_116FC04("0018", "DEPOSIT (ASSET)", "A", "Others", "060002", &HB4, "Y", "N")
  loc_1A5EFB6: Call Proc_199_15_116FC04("0026", "DIRECT EXPENSE", "E", "Others", "260", &H104, "Y", "Y")
  loc_1A5F013: Call Proc_199_15_116FC04("0025", "DIRECT INCOMES", "R", "Others", "250", &HFA, "Y", "Y")
  loc_1A5F070: Call Proc_199_15_116FC04("0014", "DUTIES & TAXES", "L", "Others", "030001", &H8C, "Y", "N")
  loc_1A5F0CD: Call Proc_199_15_116FC04("0004", "FIXED ASSETS", "A", "Others", "040", &H28, "Y", "N")
  loc_1A5F12A: Call Proc_199_15_116FC04("0028", "INDIRECT EXPENSES", "E", "Others", "280", &H118, "Y", "N")
  loc_1A5F187: Call Proc_199_15_116FC04("0027", "INDIRECT INCOME", "R", "Others", "270", &H10E, "Y", "N")
  loc_1A5F1E4: Call Proc_199_15_116FC04("0005", "INVESTMENTS", "A", "Others", "050", &H32, "Y", "N")
  loc_1A5F241: Call Proc_199_15_116FC04("0002", "LOAN (LIABILITY)", "L", "Others", "020", &H14, "Y", "N")
  loc_1A5F29E: Call Proc_199_15_116FC04("0019", "LOANS & ADVANCES (ASSET)", "A", "Others", "060003", &HBE, "Y", "N")
  loc_1A5F2FB: Call Proc_199_15_116FC04("0008", "MISC. EXPENSES (ASSET)", "A", "Others", "080", &H50, "Y", "N")
  loc_1A5F358: Call Proc_199_15_116FC04("0017", "OPENING STOCK", "A", "Others", "060001", &HAA, "Y", "N")
  loc_1A5F3B5: Call Proc_199_15_116FC04("0029", "PROFIT & LOSS A/C", "L", "Others", "999", &H3E8, "Y", "N")
  loc_1A5F412: Call Proc_199_15_116FC04("0015", "PROVISIONS", "L", "Others", "030002", &H96, "Y", "N")
  loc_1A5F46F: Call Proc_199_15_116FC04("0024", "PURCHASE ACCOUNTS", "E", "Purchase", "240", &HF0, "Y", "Y")
  loc_1A5F4CC: Call Proc_199_15_116FC04("0010", "RESERVE & SURPLUS", "L", "Others", "010001", &H64, "Y", "N")
  loc_1A5F529: Call Proc_199_15_116FC04("0023", "SALES ACCOUNTS", "R", "Sale", "230", &HE6, "Y", "Y")
  loc_1A5F586: Call Proc_199_15_116FC04("0012", "SECURED LOANS", "L", "Others", "020002", &H78, "Y", "N")
  loc_1A5F5E3: Call Proc_199_15_116FC04("0016", "SUNDRY CREDITORS", "L", "Supplier", "030003", &HA0, "Y", "N")
  loc_1A5F640: Call Proc_199_15_116FC04("0020", "SUNDRY DEBTORS", "A", "Customer", "060004", &HC8, "Y", "N")
  loc_1A5F69D: Call Proc_199_15_116FC04("0009", "SUSPENCE A/C ", "A", "Others", "090", &H5A, "Y", "N")
  loc_1A5F6B6: var_B8 = "N"
  loc_1A5F6BF: var_B4 = "Y"
  loc_1A5F6FA: Call Proc_199_15_116FC04("0013", "UNSECURED LOANS", "L", "Others", "020003", &H82, var_B4, var_B8)
  loc_1A5F726: Me.Connection15.Execute "SELECT * FROM LEDGER WHERE SUBCODE IS NULL OR SUBCODE=''", var_D8, -1
  loc_1A5F731: Set var_90 = var_94
  loc_1A5F74E: If (var_90.RecordCount > 0) Then
  loc_1A5F75E:   Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_B8, var_B4, var_B8)
  loc_1A5F773:   Call 0.Method_arg_38 ("***** These Ledger DocId Have Blank SubCode *****" & vbCrLf, &HDC, var_B4)
  loc_1A5F782:   var_98 = "---------------------" & vbCrLf
  loc_1A5F788:   Call 0.Method_arg_38 ("***** These Ledger DocId Have Blank SubCode *****" & vbCrLf, var_B8)
  loc_1A5F79D:   Call 0.Method_arg_38 ("DocId" & vbCrLf)
  loc_1A5F7AC:   var_98 = "---------------------" & vbCrLf
  loc_1A5F7B2:   Call 0.Method_arg_38 ("DocId" & vbCrLf)
  loc_1A5F7BA:   ' Referenced from: 1A5F81B
  loc_1A5F7C9:   If Not(var_90.EOF) Then
  loc_1A5F7DB:     var_94 = var_90.Fields
  loc_1A5F7EB:     var_D8 = CVar(var_94.Item("DocID")) 'Address
  loc_1A5F801:     Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8) & vbCrLf)
  loc_1A5F816:     var_90.MoveNext
  loc_1A5F81B:     GoTo loc_1A5F7BA
  loc_1A5F81E:   End If
  loc_1A5F825:   var_98 = "---------------------" & vbCrLf
  loc_1A5F82B:   Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8))
  loc_1A5F833: End If
  loc_1A5F840: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5F855: Call 0.Method_arg_38 ("***** Updating Ledger for Null Values in LedgerM/Ledger Table *****" & vbCrLf)
  loc_1A5F873: unk_49EA4F.Execute "UPDATE LEDGER SET AMTDR=0 WHERE AMTDR IS NULL", var_D8, -1
  loc_1A5F894: unk_49EA4F.Execute "UPDATE LEDGER SET AMTCR=0 WHERE AMTCR IS NULL", var_D8, -1
  loc_1A5F8B5: unk_49EA4F.Execute "UPDATE LEDGER SET NARRATION='' WHERE NARRATION IS NULL", var_D8, -1
  loc_1A5F8D6: unk_49EA4F.Execute "UPDATE LEDGERM SET NARRATION='' WHERE NARRATION IS NULL", var_D8, -1
  loc_1A5F8EE: Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94)
  loc_1A5F903: Call 0.Method_arg_38 ("***** Updating Ledger for Group Code & Group Nature *****" & vbCrLf, var_94)
  loc_1A5F921: unk_49EA4F.Execute "UPDATE LEDGER SET LEDGER.GROUPCODE=SUBGROUP.GROUPCODE,LEDGER.GROUPNATURE=SUBGROUP.GROUPNATURE FROM LEDGER LEFT JOIN SUBGROUP ON LEDGER.SUBCODE=SUBGROUP.SUBCODE", var_D8, -1
  loc_1A5F942: unk_49EA4F.Execute "SELECT LEDGER.*,SUBGROUP.NAME FROM LEDGER LEFT JOIN SUBGROUP ON LEDGER.SUBCODE=SUBGROUP.SUBCODE WHERE SUBGROUP.NAME IS NULL", var_D8, -1
  loc_1A5F94D: Set var_90 = var_94
  loc_1A5F96A: If (var_90.RecordCount > 0) Then
  loc_1A5F97A:   Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94)
  loc_1A5F98F:   Call 0.Method_arg_38 ("***** These Ledger Subcode(S) are not Available in Subgroup *****" & vbCrLf, var_94)
  loc_1A5F99E:   var_98 = "--------" & vbCrLf
  loc_1A5F9A4:   Call 0.Method_arg_38 ("***** These Ledger Subcode(S) are not Available in Subgroup *****" & vbCrLf)
  loc_1A5F9B9:   Call 0.Method_arg_38 ("SUBCODE " & vbCrLf)
  loc_1A5F9C8:   var_98 = "--------" & vbCrLf
  loc_1A5F9CE:   Call 0.Method_arg_38 ("SUBCODE " & vbCrLf)
  loc_1A5F9D6:   ' Referenced from: 1A5FA37
  loc_1A5F9E5:   If Not(var_90.EOF) Then
  loc_1A5F9F7:     var_94 = var_90.Fields
  loc_1A5FA07:     var_D8 = CVar(var_94.Item("subcode")) 'Address
  loc_1A5FA1D:     Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8) & vbCrLf)
  loc_1A5FA32:     var_90.MoveNext
  loc_1A5FA37:     GoTo loc_1A5F9D6
  loc_1A5FA3A:   End If
  loc_1A5FA41:   var_98 = "--------" & vbCrLf
  loc_1A5FA47:   Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8))
  loc_1A5FA4F: End If
  loc_1A5FA65: unk_49EA4F.Execute "SELECT * FROM SUBGROUP WHERE GROUPCODE NOT IN (SELECT GROUPCODE FROM ACGROUP)", var_D8, -1
  loc_1A5FA70: Set var_90 = var_94
  loc_1A5FA8D: If (var_90.RecordCount > 0) Then
  loc_1A5FA9D:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1A5FAB2:   Call 0.Method_arg_38 ("***** These SUBGROUP GroupCode(S) are not Available in ACgroup *****" & vbCrLf)
  loc_1A5FAC1:   var_98 = "---------" & vbCrLf
  loc_1A5FAC7:   Call 0.Method_arg_38 ("***** These SUBGROUP GroupCode(S) are not Available in ACgroup *****" & vbCrLf)
  loc_1A5FADC:   Call 0.Method_arg_38 ("GROUPCODE" & vbCrLf)
  loc_1A5FAEB:   var_98 = "---------" & vbCrLf
  loc_1A5FAF1:   Call 0.Method_arg_38 ("GROUPCODE" & vbCrLf)
  loc_1A5FAF9:   ' Referenced from: 1A5FB5A
  loc_1A5FB08:   If Not(var_90.EOF) Then
  loc_1A5FB1A:     var_94 = var_90.Fields
  loc_1A5FB2A:     var_D8 = CVar(var_94.Item("GroupCode")) 'Address
  loc_1A5FB40:     Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8) & vbCrLf)
  loc_1A5FB55:     var_90.MoveNext
  loc_1A5FB5A:     GoTo loc_1A5FAF9
  loc_1A5FB5D:   End If
  loc_1A5FB64:   var_98 = "---------" & vbCrLf
  loc_1A5FB6A:   Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8))
  loc_1A5FB72: End If
  loc_1A5FB88: unk_49EA4F.Execute "SELECT SUBGROUP.*,ACGROUP.GROUPNATURE AS GRNAT FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE SUBGROUP.GROUPNATURE<>ACGROUP.GROUPNATURE", var_D8, -1
  loc_1A5FB93: Set var_90 = var_94
  loc_1A5FBB0: If (var_90.RecordCount > 0) Then
  loc_1A5FBC0:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1A5FBD5:   Call 0.Method_arg_38 ("***** These GROUP NATURE MISMATCH *****" & vbCrLf)
  loc_1A5FBE4:   var_98 = "----------------------------------------------------------------------------------" & vbCrLf
  loc_1A5FBEA:   Call 0.Method_arg_38 ("***** These GROUP NATURE MISMATCH *****" & vbCrLf)
  loc_1A5FBFF:   Call 0.Method_arg_38 ("SUBCODE  A/CNAME                                            SUBGROUP        GROUP " & vbCrLf)
  loc_1A5FC14:   Call 0.Method_arg_38 ("                                                            Nature          Nature" & vbCrLf)
  loc_1A5FC23:   var_98 = "----------------------------------------------------------------------------------" & vbCrLf
  loc_1A5FC29:   Call 0.Method_arg_38 ("                                                            Nature          Nature" & vbCrLf)
  loc_1A5FC31:   ' Referenced from: 1A5FE66
  loc_1A5FC40:   If Not(var_90.EOF) Then
  loc_1A5FCB6:     var_154 = "UPDATE SUBGROUP SET GROUPNATURE='" & var_90.Fields.Item("GRNAT").Value & "' WHERE SUBCODE='" & var_90.Fields.Item("subcode").Value 
  loc_1A5FCCD:     unk_49EA4F.Execute CStr(var_154 & "'"), var_194, -1
  loc_1A5FD02:     var_94 = var_90.Fields
  loc_1A5FD12:     var_D8 = CVar(var_94.Item("subcode")) 'Address
  loc_1A5FD93:     var_144 = CVar(var_90.Fields.Item("GRNAT")) 'Address
  loc_1A5FDCF:     var_B4 = Proc_183_15_EAC900(Proc_183_2_E5A304(var_D8, var_90.Fields), 8) & " " & Proc_183_15_EAC900(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name"))), &H32)
  loc_1A5FE0D:     var_1CC = var_B4 & " " & Proc_183_15_EAC900(Proc_183_2_E5A304(CVar(var_90.Fields.Item("GroupNature"))), &HF) & " " & Proc_183_15_EAC900(Proc_183_2_E5A304(var_144), &HF)
  loc_1A5FE1A:     Call 0.Method_arg_38 (var_1CC & vbCrLf)
  loc_1A5FE61:     var_90.MoveNext
  loc_1A5FE66:     GoTo loc_1A5FC31
  loc_1A5FE69:   End If
  loc_1A5FE70:   var_98 = "----------------------------------------------------------------------------------" & vbCrLf
  loc_1A5FE76:   Call 0.Method_arg_38 (CStr(var_154 & "'"))
  loc_1A5FE7E: End If
  loc_1A5FE94: unk_49EA4F.Execute "SELECT * FROM SUBGROUP WHERE GROUPNATURE IS NULL OR GROUPNATURE=''", var_D8, -1
  loc_1A5FE9F: Set var_90 = var_94
  loc_1A5FEBC: If (var_90.RecordCount > 0) Then
  loc_1A5FECC:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1A5FEE1:   Call 0.Method_arg_38 ("***** These SUBGROUP GroupNature is Blank/Null *****" & vbCrLf)
  loc_1A5FEE9:   ' Referenced from: 1A5FF8E
  loc_1A5FEF8:   If Not(var_90.EOF) Then
  loc_1A5FF0A:     var_94 = var_90.Fields
  loc_1A5FF12:     var_A0 = var_94.Item("subcode")
  loc_1A5FF1A:     var_D8 = CVar(var_A0) 'Address
  loc_1A5FF66:     Call 0.Method_arg_38 (var_A0 & Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), Proc_183_2_E5A304(var_D8) & " ") & vbCrLf)
  loc_1A5FF89:     var_90.MoveNext
  loc_1A5FF8E:     GoTo loc_1A5FEE9
  loc_1A5FF91:   End If
  loc_1A5FF91: End If
  loc_1A5FFA7: unk_49EA4F.Execute "SELECT * FROM ACGROUP WHERE GROUPNATURE IS NULL OR GROUPNATURE=''", var_D8, -1
  loc_1A5FFB2: Set var_90 = var_94
  loc_1A5FFCF: If (var_90.RecordCount > 0) Then
  loc_1A5FFDF:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A5FFF4:   Call 0.Method_arg_38 (" ***** These ACGROUP GroupNature is Blank/Null *****" & vbCrLf)
  loc_1A60003:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A60009:   Call 0.Method_arg_38 (" ***** These ACGROUP GroupNature is Blank/Null *****" & vbCrLf)
  loc_1A60011:   ' Referenced from: 1A600B6
  loc_1A60020:   If Not(var_90.EOF) Then
  loc_1A60032:     var_94 = var_90.Fields
  loc_1A60042:     var_D8 = CVar(var_94.Item("GroupCode")) 'Address
  loc_1A6008E:     Call 0.Method_arg_38 (var_94 & Proc_183_2_E5A304(CVar(var_90.Fields.Item("GroupName")), Proc_183_2_E5A304(var_D8) & " ") & vbCrLf)
  loc_1A600B1:     var_90.MoveNext
  loc_1A600B6:     GoTo loc_1A60011
  loc_1A600B9:   End If
  loc_1A600B9: End If
  loc_1A600CF: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='N' WHERE GROUPNATURE IN ('A','L')", var_D8, -1
  loc_1A600F0: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='Y' WHERE GROUPNAME='Income (Direct)'", var_D8, -1
  loc_1A60111: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='Y' WHERE GROUPNAME='Expense (Direct)'", var_D8, -1
  loc_1A60132: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='N' WHERE GROUPNAME='Income (Indirect)'", var_D8, -1
  loc_1A60153: unk_49EA4F.Execute "UPDATE ACGROUP SET TRADINGYN='N' WHERE GROUPNAME='Expense (Indirect)'", var_D8, -1
  loc_1A60174: unk_49EA4F.Execute "UPDATE ACGROUP SET MainGrLen=Len(MainGrCode)", var_D8, -1
  loc_1A60195: unk_49EA4F.Execute "SELECT * FROM ACGROUP WHERE TRADINGYN IS NULL OR TRADINGYN=''", var_D8, -1
  loc_1A601A0: Set var_90 = var_94
  loc_1A601BD: If (var_90.RecordCount > 0) Then
  loc_1A601CD:   Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94, var_94)
  loc_1A601DC:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A601E2:   Call 0.Method_arg_38 (" " & vbCrLf, var_94, var_94)
  loc_1A601F7:   Call 0.Method_arg_38 ("***** These ACGROUP TradingYN is Blank/Null *****" & vbCrLf, var_94)
  loc_1A60206:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A6020C:   Call 0.Method_arg_38 ("***** These ACGROUP TradingYN is Blank/Null *****" & vbCrLf)
  loc_1A60214:   ' Referenced from: 1A602B9
  loc_1A60223:   If Not(var_90.EOF) Then
  loc_1A60235:     var_94 = var_90.Fields
  loc_1A60245:     var_D8 = CVar(var_94.Item("GroupCode")) 'Address
  loc_1A60291:     Call 0.Method_arg_38 (var_94 & Proc_183_2_E5A304(CVar(var_90.Fields.Item("GroupName")), Proc_183_2_E5A304(var_D8) & " ") & vbCrLf)
  loc_1A602B4:     var_90.MoveNext
  loc_1A602B9:     GoTo loc_1A60214
  loc_1A602BC:   End If
  loc_1A602BC: End If
  loc_1A602D2: unk_49EA4F.Execute "UPDATE ACGROUP SET ALIASYN='N' WHERE ALIASYN IS NULL OR ALIASYN=''", var_D8, -1
  loc_1A602F3: unk_49EA4F.Execute "SELECT * FROM ACGROUP WHERE ALIASYN IS NULL OR ALIASYN=''", var_D8, -1
  loc_1A602FE: Set var_90 = var_94
  loc_1A6031B: If (var_90.RecordCount > 0) Then
  loc_1A6032B:   Call 0.Method_arg_38 (" " & vbCrLf, var_94)
  loc_1A6033A:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A60340:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A60355:   Call 0.Method_arg_38 ("***** These ACGROUP AliasYN is Blank/Null *****" & vbCrLf)
  loc_1A60364:   var_98 = "-----------------------------------------------------" & vbCrLf
  loc_1A6036A:   Call 0.Method_arg_38 ("***** These ACGROUP AliasYN is Blank/Null *****" & vbCrLf)
  loc_1A60372:   ' Referenced from: 1A60417
  loc_1A60381:   If Not(var_90.EOF) Then
  loc_1A60393:     var_94 = var_90.Fields
  loc_1A603A3:     var_D8 = CVar(var_94.Item("GroupCode")) 'Address
  loc_1A603EF:     Call 0.Method_arg_38 (var_94 & Proc_183_2_E5A304(CVar(var_90.Fields.Item("GroupName")), Proc_183_2_E5A304(var_D8) & " ") & vbCrLf)
  loc_1A60412:     var_90.MoveNext
  loc_1A60417:     GoTo loc_1A60372
  loc_1A6041A:   End If
  loc_1A6041A: End If
  loc_1A60437: Proc_183_7_EB0C44(var_D8, MemVar_1F920F4, "SELECT *  FROM LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE WHERE V_DATE<")
  loc_1A60448: var_11C = var_144 & var_D8 & " AND SUBGROUP.GROUPNATURE IN ('E','R')" 
  loc_1A60456: unk_49EA4F.Execute CStr(var_11C), -1, var_94
  loc_1A60461: Set var_90 = var_94
  loc_1A60489: If (var_90.RecordCount > 0) Then
  loc_1A60499:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A604AE:   Call 0.Method_arg_38 ("***** Opening Balance Exist in Expenditure & Revenue *****" & vbCrLf)
  loc_1A604BD:   var_98 = "-----------------------------------------------------------------------------" & vbCrLf
  loc_1A604C3:   Call 0.Method_arg_38 ("***** Opening Balance Exist in Expenditure & Revenue *****" & vbCrLf)
  loc_1A604D8:   Call 0.Method_arg_38 ("DocID                              DEBIT   CREDIT  A/C NAME" & vbCrLf)
  loc_1A604E7:   var_98 = "-----------------------------------------------------------------------------" & vbCrLf
  loc_1A604ED:   Call 0.Method_arg_38 ("DocID                              DEBIT   CREDIT  A/C NAME" & vbCrLf)
  loc_1A604F5:   ' Referenced from: 1A6064C
  loc_1A60504:   If Not(var_90.EOF) Then
  loc_1A6052D:     Proc_183_5_EF3390(var_11C)
  loc_1A60551:     var_144 = CVar(var_90.Fields.Item("AmtCr")) 'Address
  loc_1A60558:     Proc_183_5_EF3390(var_154, var_144)
  loc_1A6056C:     var_94 = var_90.Fields
  loc_1A6057C:     var_D8 = CVar(var_94.Item("DocID")) 'Address
  loc_1A605CC:     var_1B0 = Proc_183_2_E5A304(var_D8) & " " & Proc_183_16_EAECDC(CStr(var_11C), &HD) & " " & Proc_183_16_EAECDC(CStr(var_154), &HD) & " "
  loc_1A605EE:     var_174 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_1A60608:     Call 0.Method_arg_38 (CVar(var_90.Fields.Item("AmtDr")) & Proc_183_2_E5A304(var_174, var_1B0) & vbCrLf)
  loc_1A60647:     var_90.MoveNext
  loc_1A6064C:     GoTo loc_1A604F5
  loc_1A6064F:   End If
  loc_1A60656:   var_98 = "-----------------------------------------------------------------------------" & vbCrLf
  loc_1A6065C:   Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8))
  loc_1A60664: End If
  loc_1A60671: var_EC = "SELECT SUM(AMTCR)-SUM(AMTDR) AS BAL FROM LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE WHERE V_DATE<"
  loc_1A60681: Proc_183_7_EB0C44(var_D8, MemVar_1F920F4, "AmtDr")
  loc_1A60689: var_FC = var_144 & var_D8 
  loc_1A606A0: unk_49EA4F.Execute CStr(var_FC & " AND SUBGROUP.GROUPNATURE NOT IN ('E','R')"), -1, var_94
  loc_1A606AB: Set var_90 = var_94
  loc_1A606D3: If (var_90.RecordCount > 0) Then
  loc_1A606F5:   var_D8 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_1A606FC:   Proc_183_3_E7D1C8(var_FC)
  loc_1A6070C:   var_11C = Round(var_FC, 2)
  loc_1A60728:   If CBool(var_11C <> 0) Then
  loc_1A60738:     Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A6074D:     Call 0.Method_arg_38 ("***** Opening Balance Difference *****" & vbCrLf)
  loc_1A6075C:     var_98 = "-----------------" & vbCrLf
  loc_1A60762:     Call 0.Method_arg_38 ("***** Opening Balance Difference *****" & vbCrLf)
  loc_1A60777:     Call 0.Method_arg_38 ("DIFFERANCE AMOUNT" & vbCrLf)
  loc_1A60786:     var_98 = "-----------------" & vbCrLf
  loc_1A6078C:     Call 0.Method_arg_38 ("DIFFERANCE AMOUNT" & vbCrLf)
  loc_1A60794:     ' Referenced from: 1A60810
  loc_1A607A3:     If Not(var_90.EOF) Then
  loc_1A607B5:       var_94 = var_90.Fields
  loc_1A607C5:       var_D8 = CVar(var_94.Item("Bal")) 'Address
  loc_1A607CC:       Proc_183_5_EF3390(var_FC, var_D8)
  loc_1A607F0:       Call 0.Method_arg_38 (Proc_183_16_EAECDC(CStr(var_FC), &HD) & vbCrLf)
  loc_1A6080B:       var_90.MoveNext
  loc_1A60810:       GoTo loc_1A60794
  loc_1A60813:     End If
  loc_1A6081A:     var_98 = "-----------------" & vbCrLf
  loc_1A60820:     Call 0.Method_arg_38 ("DIFFERANCE AMOUNT" & vbCrLf)
  loc_1A60828:   End If
  loc_1A60828: End If
  loc_1A60845: Proc_183_7_EB0C44(var_D8, MemVar_1F920EC, "SELECT * FROM LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE WHERE V_DATE>", var_11C)
  loc_1A6084D: var_FC = -1 & var_D8 
  loc_1A6085B: unk_49EA4F.Execute CStr(var_FC), var_94, var_D8
  loc_1A60866: Set var_90 = var_94
  loc_1A6088C: If (var_90.RecordCount > 0) Then
  loc_1A6089C:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A608B1:   Call 0.Method_arg_38 ("***** Transaction Exist in BIG Date *****" & vbCrLf)
  loc_1A608C0:   var_98 = "-------------------------------------------------------------" & vbCrLf
  loc_1A608C6:   Call 0.Method_arg_38 ("***** Transaction Exist in BIG Date *****" & vbCrLf)
  loc_1A608DB:   Call 0.Method_arg_38 ("DOCID                 DATE                DEBIT        CREDIT" & vbCrLf)
  loc_1A608EA:   var_98 = "-------------------------------------------------------------" & vbCrLf
  loc_1A608F0:   Call 0.Method_arg_38 ("DOCID                 DATE                DEBIT        CREDIT" & vbCrLf)
  loc_1A608F8:   ' Referenced from: 1A60A55
  loc_1A60907:   If Not(var_90.EOF) Then
  loc_1A60929:     var_11C = CVar(var_90.Fields.Item("AmtDr")) 'Address
  loc_1A60930:     Proc_183_5_EF3390(var_144)
  loc_1A6095B:     Proc_183_5_EF3390(var_174, CVar(var_90.Fields.Item("AmtCr")))
  loc_1A6096F:     var_94 = var_90.Fields
  loc_1A6097F:     var_D8 = CVar(var_94.Item("DocID")) 'Address
  loc_1A609E2:     var_1A8 = Proc_183_2_E5A304(var_D8) & " " & CStr(var_90.Fields.Item("V_DATE").Value) & " " & Proc_183_16_EAECDC(CStr(var_144), &HD)
  loc_1A60A0F:     Call 0.Method_arg_38 (var_1A8 & " " & Proc_183_16_EAECDC(CStr(var_174), &HD) & vbCrLf)
  loc_1A60A50:     var_90.MoveNext
  loc_1A60A55:     GoTo loc_1A608F8
  loc_1A60A58:   End If
  loc_1A60A5F:   var_98 = "-------------------------------------------------------------" & vbCrLf
  loc_1A60A65:   Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8))
  loc_1A60A6D: End If
  loc_1A60A7A: var_EC = "SELECT SUM(AMTCR)-SUM(AMTDR) AS BAL FROM LEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=LEDGER.SUBCODE WHERE V_DATE BETWEEN "
  loc_1A60A8A: Proc_183_7_EB0C44(var_D8, MemVar_1F920F4, "V_DATE", var_174)
  loc_1A60A92: var_FC = -1 & var_D8 
  loc_1A60A9B: var_11C = var_90.Fields.Item("V_DATE").Value & " AND " 
  loc_1A60AAA: Proc_183_7_EB0C44(var_144, MemVar_1F920EC, var_11C)
  loc_1A60AC0: unk_49EA4F.Execute CStr(var_94 & var_144), var_11C, 
  loc_1A60ACB: Set var_90 = var_94
  loc_1A60AF7: If (var_90.RecordCount > 0) Then
  loc_1A60B19:   var_D8 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_1A60B20:   Proc_183_3_E7D1C8(var_90.Fields.Item("V_DATE").Value)
  loc_1A60B4C:   If CBool(Round(var_90.Fields.Item("V_DATE").Value, 2) <> 0) Then
  loc_1A60B5C:     Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A60B71:     Call 0.Method_arg_38 ("***** Transaction Summary Difference *****" & vbCrLf)
  loc_1A60B80:     var_98 = "------------------" & vbCrLf
  loc_1A60B86:     Call 0.Method_arg_38 ("***** Transaction Summary Difference *****" & vbCrLf)
  loc_1A60B9B:     Call 0.Method_arg_38 ("DIFF. AMOUNT" & vbCrLf)
  loc_1A60BAA:     var_98 = "------------------" & vbCrLf
  loc_1A60BB0:     Call 0.Method_arg_38 ("DIFF. AMOUNT" & vbCrLf)
  loc_1A60BB8:     ' Referenced from: 1A60C34
  loc_1A60BC7:     If Not(var_90.EOF) Then
  loc_1A60BD9:       var_94 = var_90.Fields
  loc_1A60BE9:       var_D8 = CVar(var_94.Item("Bal")) 'Address
  loc_1A60BF0:       Proc_183_5_EF3390(var_90.Fields.Item("V_DATE").Value, var_D8)
  loc_1A60C14:       Call 0.Method_arg_38 (Proc_183_16_EAECDC(CStr(var_90.Fields.Item("V_DATE").Value), &HD) & vbCrLf)
  loc_1A60C2F:       var_90.MoveNext
  loc_1A60C34:       GoTo loc_1A60BB8
  loc_1A60C37:     End If
  loc_1A60C3E:     var_98 = "------------------" & vbCrLf
  loc_1A60C44:     Call 0.Method_arg_38 ("DIFF. AMOUNT" & vbCrLf)
  loc_1A60C4C:   End If
  loc_1A60C4C: End If
  loc_1A60C59: var_EC = "SELECT V_DATE,SUM(AMTCR)-SUM(AMTDR) AS BAL FROM LEDGER WHERE V_DATE BETWEEN "
  loc_1A60C69: Proc_183_7_EB0C44(var_D8, MemVar_1F920F4, 0, var_194)
  loc_1A60C71: var_FC = -1 & var_D8 
  loc_1A60C89: Proc_183_7_EB0C44(var_144, MemVar_1F920EC, var_90.Fields.Item("V_DATE").Value & " AND ")
  loc_1A60C95: var_164 = " GROUP BY V_DATE Having Sum (AmtCr)-Sum(AmtDr) <> 0"
  loc_1A60CA8: unk_49EA4F.Execute CStr(var_94 & var_144 & "'"), var_D8, 
  loc_1A60CB3: Set var_90 = var_94
  loc_1A60CE1: If (var_90.RecordCount > 0) Then
  loc_1A60CF1:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A60D06:   Call 0.Method_arg_38 ("***** Date Wise Difference in Transaction Sum *****" & vbCrLf)
  loc_1A60D15:   var_98 = "-------------------------" & vbCrLf
  loc_1A60D1B:   Call 0.Method_arg_38 ("***** Date Wise Difference in Transaction Sum *****" & vbCrLf)
  loc_1A60D30:   Call 0.Method_arg_38 ("DATE              BALANCE" & vbCrLf)
  loc_1A60D3F:   var_98 = "-------------------------" & vbCrLf
  loc_1A60D45:   Call 0.Method_arg_38 ("DATE              BALANCE" & vbCrLf)
  loc_1A60D4D:   ' Referenced from: 1A60E60
  loc_1A60D5C:   If Not(var_90.EOF) Then
  loc_1A60D7E:     var_D8 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_1A60D85:     Proc_183_3_E7D1C8(var_90.Fields.Item("V_DATE").Value)
  loc_1A60D95:     var_11C = Round(var_90.Fields.Item("V_DATE").Value, 2)
  loc_1A60DB1:     If CBool(var_11C <> 0) Then
  loc_1A60DDA:       Proc_183_5_EF3390(var_11C, CVar(var_90.Fields.Item("Bal")))
  loc_1A60DEE:       var_94 = var_90.Fields
  loc_1A60DFE:       var_D8 = CVar(var_94.Item("V_DATE")) 'Address
  loc_1A60E34:       Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8) & " " & Proc_183_16_EAECDC(CStr(var_11C), &HD) & vbCrLf)
  loc_1A60E58:     End If
  loc_1A60E5B:     var_90.MoveNext
  loc_1A60E60:     GoTo loc_1A60D4D
  loc_1A60E63:   End If
  loc_1A60E6A:   var_98 = "-------------------------" & vbCrLf
  loc_1A60E70:   Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8))
  loc_1A60E78: End If
  loc_1A60E85: var_EC = "SELECT DOCID,V_DATE,SUM(AMTCR)-SUM(AMTDR) AS BAL FROM LEDGER WHERE V_DATE BETWEEN "
  loc_1A60E95: Proc_183_7_EB0C44(var_D8, MemVar_1F920F4, "Bal", var_194)
  loc_1A60E9D: var_FC = -1 & var_D8 
  loc_1A60EB5: Proc_183_7_EB0C44(var_144, MemVar_1F920EC, CVar(var_90.Fields.Item("Bal")) & " AND ")
  loc_1A60EC1: var_164 = " GROUP BY DOCID,V_DATE Having Sum (AmtCr)-Sum(AmtDr) <> 0"
  loc_1A60ED4: unk_49EA4F.Execute CStr(var_94 & var_144 & "'"), var_D8, 
  loc_1A60EDF: Set var_90 = var_94
  loc_1A60F0D: If (var_90.RecordCount > 0) Then
  loc_1A60F1D:   Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A60F32:   Call 0.Method_arg_38 ("***** DocId Wise/ Date Wise Difference in Transaction Sum *****" & vbCrLf)
  loc_1A60F41:   var_98 = "-----------------------------------------------" & vbCrLf
  loc_1A60F47:   Call 0.Method_arg_38 ("***** DocId Wise/ Date Wise Difference in Transaction Sum *****" & vbCrLf)
  loc_1A60F5C:   Call 0.Method_arg_38 ("DOCID                 DATE              BALANCE" & vbCrLf)
  loc_1A60F6B:   var_98 = "-----------------------------------------------" & vbCrLf
  loc_1A60F71:   Call 0.Method_arg_38 ("DOCID                 DATE              BALANCE" & vbCrLf)
  loc_1A60F79:   ' Referenced from: 1A610CC
  loc_1A60F88:   If Not(var_90.EOF) Then
  loc_1A60FAA:     var_D8 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_1A60FB1:     Proc_183_3_E7D1C8(CVar(var_90.Fields.Item("Bal")))
  loc_1A60FDD:     If CBool(Round(CVar(var_90.Fields.Item("Bal")), 2) <> 0) Then
  loc_1A61006:       Proc_183_5_EF3390(var_144, CVar(var_90.Fields.Item("Bal")))
  loc_1A6101A:       var_94 = var_90.Fields
  loc_1A6102A:       var_D8 = CVar(var_94.Item("DocID")) 'Address
  loc_1A6105C:       var_FC = CVar(var_90.Fields.Item("V_DATE")) 'Address
  loc_1A61090:       var_1AC = var_D8 & Proc_183_2_E5A304(var_FC, Proc_183_2_E5A304(var_D8) & " ") & " " & Proc_183_16_EAECDC(CStr(var_144), &HD) & vbCrLf
  loc_1A61096:       Call 0.Method_arg_38 (var_1AC)
  loc_1A610C4:     End If
  loc_1A610C7:     var_90.MoveNext
  loc_1A610CC:     GoTo loc_1A60F79
  loc_1A610CF:   End If
  loc_1A610D6:   var_98 = "-----------------------------------------------" & vbCrLf
  loc_1A610DC:   Call 0.Method_arg_38 (Proc_183_2_E5A304(var_D8))
  loc_1A610E4: End If
  loc_1A610F1: Call 0.Method_arg_38 (" " & vbCrLf)
  loc_1A61106: Call 0.Method_arg_38 ("***** Checking & Updating FaEnviro *****" & vbCrLf)
  loc_1A61132: unk_49EA4F.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_D8, -1
  loc_1A6113D: Set var_90 = var_94
  loc_1A61161: If (var_90.RecordCount <= 0) Then
  loc_1A6117A:   unk_49EA4F.Execute "INSERT INTO FAENVIRO (AGE1) VALUES (0)", var_D8, -1
  loc_1A61185: End If
  loc_1A6118D: var_90.Requery -1
  loc_1A611B1: var_D8 = CVar(var_90.Fields.Item("Age1")) 'Address
  loc_1A611B8: Proc_183_3_E7D1C8(var_FC, var_D8)
  loc_1A611D2: If (var_FC = 0) Then
  loc_1A611EB:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age1=0", var_D8, -1
  loc_1A611F6: End If
  loc_1A61205: var_94 = var_90.Fields
  loc_1A61215: var_D8 = CVar(var_94.Item("Age2")) 'Address
  loc_1A6121C: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A61236: If (var_FC = 0) Then
  loc_1A6124F:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age2=15", var_D8, -1
  loc_1A6125A: End If
  loc_1A61269: var_94 = var_90.Fields
  loc_1A61279: var_D8 = CVar(var_94.Item("Age3")) 'Address
  loc_1A61280: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A6129A: If (var_FC = 0) Then
  loc_1A612B3:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age3=30", var_D8, -1
  loc_1A612BE: End If
  loc_1A612CD: var_94 = var_90.Fields
  loc_1A612DD: var_D8 = CVar(var_94.Item("Age4")) 'Address
  loc_1A612E4: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A612FE: If (var_FC = 0) Then
  loc_1A61317:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age4=45", var_D8, -1
  loc_1A61322: End If
  loc_1A61331: var_94 = var_90.Fields
  loc_1A61341: var_D8 = CVar(var_94.Item("Age5")) 'Address
  loc_1A61348: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A61362: If (var_FC = 0) Then
  loc_1A6137B:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age5=60", var_D8, -1
  loc_1A61386: End If
  loc_1A61395: var_94 = var_90.Fields
  loc_1A613A5: var_D8 = CVar(var_94.Item("Age6")) 'Address
  loc_1A613AC: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A613C6: If (var_FC = 0) Then
  loc_1A613DF:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Age6=90", var_D8, -1
  loc_1A613EA: End If
  loc_1A613F9: var_94 = var_90.Fields
  loc_1A61409: var_D8 = CVar(var_94.Item("Amt1")) 'Address
  loc_1A61410: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A6142A: If (var_FC = 0) Then
  loc_1A61443:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt1=1000", var_D8, -1
  loc_1A6144E: End If
  loc_1A6145D: var_94 = var_90.Fields
  loc_1A6146D: var_D8 = CVar(var_94.Item("Amt2")) 'Address
  loc_1A61474: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A6148E: If (var_FC = 0) Then
  loc_1A614A7:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt2=2000", var_D8, -1
  loc_1A614B2: End If
  loc_1A614C1: var_94 = var_90.Fields
  loc_1A614D1: var_D8 = CVar(var_94.Item("Amt3")) 'Address
  loc_1A614D8: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A614F2: If (var_FC = 0) Then
  loc_1A6150B:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt3=3000", var_D8, -1
  loc_1A61516: End If
  loc_1A61525: var_94 = var_90.Fields
  loc_1A61535: var_D8 = CVar(var_94.Item("Amt4")) 'Address
  loc_1A6153C: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A61556: If (var_FC = 0) Then
  loc_1A6156F:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt4=4000", var_D8, -1
  loc_1A6157A: End If
  loc_1A61589: var_94 = var_90.Fields
  loc_1A61599: var_D8 = CVar(var_94.Item("Amt5")) 'Address
  loc_1A615A0: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A615BA: If (var_FC = 0) Then
  loc_1A615D3:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt5=5000", var_D8, -1
  loc_1A615DE: End If
  loc_1A615ED: var_94 = var_90.Fields
  loc_1A615FD: var_D8 = CVar(var_94.Item("Amt6")) 'Address
  loc_1A61604: Proc_183_3_E7D1C8(var_FC, var_D8, var_94)
  loc_1A6161E: If (var_FC = 0) Then
  loc_1A61637:   unk_49EA4F.Execute "UPDATE FAENVIRO SET Amt6=6000", var_D8, -1
  loc_1A61642: End If
  loc_1A61651: var_94 = var_90.Fields
  loc_1A61661: var_D8 = CVar(var_94.Item("TagadaHeader1")) 'Address
  loc_1A6167B: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61694:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader1='Dear Sirs,'", var_D8, -1
  loc_1A6169F: End If
  loc_1A616AE: var_94 = var_90.Fields
  loc_1A616BE: var_D8 = CVar(var_94.Item("TagadaHeader2")) 'Address
  loc_1A616D8: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A616F1:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader2='                 SUB : Outstanding Letter'", var_D8, -1
  loc_1A616FC: End If
  loc_1A6170B: var_94 = var_90.Fields
  loc_1A6171B: var_D8 = CVar(var_94.Item("TagadaHeader3")) 'Address
  loc_1A61735: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A6174E:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader3=''", var_D8, -1
  loc_1A61759: End If
  loc_1A61768: var_94 = var_90.Fields
  loc_1A61778: var_D8 = CVar(var_94.Item("TagadaHeader4")) 'Address
  loc_1A61792: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A617AB:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader4='We Wish to draw your immediate attention towards our bills.details of which'", var_D8, -1
  loc_1A617B6: End If
  loc_1A617C5: var_94 = var_90.Fields
  loc_1A617D5: var_D8 = CVar(var_94.Item("TagadaHeader5")) 'Address
  loc_1A617EF: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61808:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaHeader5='are given below for your ready reference.'", var_D8, -1
  loc_1A61813: End If
  loc_1A61822: var_94 = var_90.Fields
  loc_1A61832: var_D8 = CVar(var_94.Item("TagadaFooter1")) 'Address
  loc_1A6184C: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61865:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaFooter1='The payment of the bills have become late and as such, we request you to'", var_D8, -1
  loc_1A61870: End If
  loc_1A6187F: var_94 = var_90.Fields
  loc_1A6188F: var_D8 = CVar(var_94.Item("TagadaFooter2")) 'Address
  loc_1A618A9: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A618C2:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaFooter2='send payment of the same at earliest,preferably vide draft drawn at kanpur.'", var_D8, -1
  loc_1A618CD: End If
  loc_1A618DC: var_94 = var_90.Fields
  loc_1A61906: If (Proc_183_2_E5A304(CVar(var_94.Item("TagadaFooter3")), var_94) = vbNullString) Then
  loc_1A61929:   Proc_183_9_EAA760(var_FC, "Thanking you                                           Your's faithfully", "UPDATE FAENVIRO SET TagadaFooter3=", var_144)
  loc_1A61931:   var_11C = -1 & var_FC 
  loc_1A6193F:   unk_49EA4F.Execute CStr(CVar(var_90.Fields.Item("Bal"))), var_94, var_94
  loc_1A61955: End If
  loc_1A61974: var_D8 = CVar(var_90.Fields.Item("TagadaFooter4")) 'Address
  loc_1A6198E: If (Proc_183_2_E5A304(var_D8) = vbNullString) Then
  loc_1A619A7:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaFooter4=''", var_D8, -1
  loc_1A619B2: End If
  loc_1A619C1: var_94 = var_90.Fields
  loc_1A619D1: var_D8 = CVar(var_94.Item("TagadaFooter5")) 'Address
  loc_1A619EB: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61A04:   unk_49EA4F.Execute "UPDATE FAENVIRO SET TagadaFooter5='                                                       For ABC & Company'", var_D8, -1
  loc_1A61A0F: End If
  loc_1A61A1E: var_94 = var_90.Fields
  loc_1A61A2E: var_D8 = CVar(var_94.Item("CreditLimit")) 'Address
  loc_1A61A48: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61A61:   unk_49EA4F.Execute "UPDATE FAENVIRO SET CreditLimit='Yes'", var_D8, -1
  loc_1A61A6C: End If
  loc_1A61A7B: var_94 = var_90.Fields
  loc_1A61A8B: var_D8 = CVar(var_94.Item("DebitLimit")) 'Address
  loc_1A61AA5: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61ABE:   unk_49EA4F.Execute "UPDATE FAENVIRO SET DebitLimit='Yes'", var_D8, -1
  loc_1A61AC9: End If
  loc_1A61AD8: var_94 = var_90.Fields
  loc_1A61AE8: var_D8 = CVar(var_94.Item("NegativeCashBalance")) 'Address
  loc_1A61B02: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61B1B:   unk_49EA4F.Execute "UPDATE FAENVIRO SET NegativeCashBalancE='Yes'", var_D8, -1
  loc_1A61B26: End If
  loc_1A61B35: var_94 = var_90.Fields
  loc_1A61B45: var_D8 = CVar(var_94.Item("ShowGroup")) 'Address
  loc_1A61B5F: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61B78:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ShowGroup='No'", var_D8, -1
  loc_1A61B83: End If
  loc_1A61B92: var_94 = var_90.Fields
  loc_1A61BA2: var_D8 = CVar(var_94.Item("DonotShowGroup")) 'Address
  loc_1A61BBC: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61BD5:   unk_49EA4F.Execute "UPDATE FAENVIRO SET DonotShowGroup='No'", var_D8, -1
  loc_1A61BE0: End If
  loc_1A61BEF: var_94 = var_90.Fields
  loc_1A61BFF: var_D8 = CVar(var_94.Item("ShowCurrentBalance")) 'Address
  loc_1A61C19: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61C32:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ShowCurrentBalance='Yes'", var_D8, -1
  loc_1A61C3D: End If
  loc_1A61C4C: var_94 = var_90.Fields
  loc_1A61C5C: var_D8 = CVar(var_94.Item("VerticleBalanceSheet")) 'Address
  loc_1A61C76: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61C8F:   unk_49EA4F.Execute "UPDATE FAENVIRO SET VerticleBalanceSheet='No'", var_D8, -1
  loc_1A61C9A: End If
  loc_1A61CA9: var_94 = var_90.Fields
  loc_1A61CB9: var_D8 = CVar(var_94.Item("ShowQty")) 'Address
  loc_1A61CD3: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61CEC:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ShowQty='No'", var_D8, -1
  loc_1A61CF7: End If
  loc_1A61D06: var_94 = var_90.Fields
  loc_1A61D16: var_D8 = CVar(var_94.Item("ShowCityName")) 'Address
  loc_1A61D30: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61D49:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ShowCityName='No'", var_D8, -1
  loc_1A61D54: End If
  loc_1A61D63: var_94 = var_90.Fields
  loc_1A61D73: var_D8 = CVar(var_94.Item("LedDivCode")) 'Address
  loc_1A61D8D: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61DA6:   unk_49EA4F.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_D8, -1
  loc_1A61DB1: End If
  loc_1A61DC0: var_94 = var_90.Fields
  loc_1A61DD0: var_D8 = CVar(var_94.Item("LedSiteCode")) 'Address
  loc_1A61DEA: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61E03:   unk_49EA4F.Execute "UPDATE FAENVIRO SET LedDivCode='No'", var_D8, -1
  loc_1A61E0E: End If
  loc_1A61E1D: var_94 = var_90.Fields
  loc_1A61E2D: var_D8 = CVar(var_94.Item("LedPrefix")) 'Address
  loc_1A61E47: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61E60:   unk_49EA4F.Execute "UPDATE FAENVIRO SET LedPrefix='No'", var_D8, -1
  loc_1A61E6B: End If
  loc_1A61E7A: var_94 = var_90.Fields
  loc_1A61E8A: var_D8 = CVar(var_94.Item("daterfill")) 'Address
  loc_1A61EA4: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61EBD:   unk_49EA4F.Execute "UPDATE FAENVIRO SET daterfill='Y'", var_D8, -1
  loc_1A61EC8: End If
  loc_1A61ED7: var_94 = var_90.Fields
  loc_1A61EE7: var_D8 = CVar(var_94.Item("titlerfill")) 'Address
  loc_1A61F01: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61F1A:   unk_49EA4F.Execute "UPDATE FAENVIRO SET titlerfill='M'", var_D8, -1
  loc_1A61F25: End If
  loc_1A61F34: var_94 = var_90.Fields
  loc_1A61F44: var_D8 = CVar(var_94.Item("pagenofill")) 'Address
  loc_1A61F5E: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61F77:   unk_49EA4F.Execute "UPDATE FAENVIRO SET pagenofill='Y'", var_D8, -1
  loc_1A61F82: End If
  loc_1A61F91: var_94 = var_90.Fields
  loc_1A61FA1: var_D8 = CVar(var_94.Item("RunPIF")) 'Address
  loc_1A61FBB: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A61FD4:   unk_49EA4F.Execute "UPDATE FAENVIRO SET RunPIF='Y'", var_D8, -1
  loc_1A61FDF: End If
  loc_1A61FEE: var_94 = var_90.Fields
  loc_1A61FFE: var_D8 = CVar(var_94.Item("FilterAC")) 'Address
  loc_1A62018: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A62031:   unk_49EA4F.Execute "UPDATE FAENVIRO SET FilterAC='No'", var_D8, -1
  loc_1A6203C: End If
  loc_1A6204B: var_94 = var_90.Fields
  loc_1A6205B: var_D8 = CVar(var_94.Item("AddressHelp")) 'Address
  loc_1A62075: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A6208E:   unk_49EA4F.Execute "UPDATE FAENVIRO SET AddressHelp='Yes'", var_D8, -1
  loc_1A62099: End If
  loc_1A620A8: var_94 = var_90.Fields
  loc_1A620B8: var_D8 = CVar(var_94.Item("DateLock")) 'Address
  loc_1A620D2: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A620EB:   unk_49EA4F.Execute "UPDATE FAENVIRO SET DateLock='Y'", var_D8, -1
  loc_1A620F6: End If
  loc_1A62105: var_94 = var_90.Fields
  loc_1A62115: var_D8 = CVar(var_94.Item("CashBookBalance")) 'Address
  loc_1A6212F: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A62148:   unk_49EA4F.Execute "UPDATE FAENVIRO SET CashBookBalance='Yes'", var_D8, -1
  loc_1A62153: End If
  loc_1A62162: var_94 = var_90.Fields
  loc_1A62172: var_D8 = CVar(var_94.Item("MonthTotal")) 'Address
  loc_1A6218C: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A621A5:   unk_49EA4F.Execute "UPDATE FAENVIRO SET MonthTotal='Yes'", var_D8, -1
  loc_1A621B0: End If
  loc_1A621BF: var_94 = var_90.Fields
  loc_1A621CF: var_D8 = CVar(var_94.Item("OnLineAdjustment")) 'Address
  loc_1A621E9: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A62202:   unk_49EA4F.Execute "UPDATE FAENVIRO SET OnLineAdjustment='Yes'", var_D8, -1
  loc_1A6220D: End If
  loc_1A6221C: var_94 = var_90.Fields
  loc_1A6222C: var_D8 = CVar(var_94.Item("linefiller")) 'Address
  loc_1A62246: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A6225F:   unk_49EA4F.Execute "UPDATE FAENVIRO SET linefiller='-'", var_D8, -1
  loc_1A6226A: End If
  loc_1A62279: var_94 = var_90.Fields
  loc_1A62289: var_D8 = CVar(var_94.Item("CashBookPage")) 'Address
  loc_1A622A3: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A622BC:   unk_49EA4F.Execute "UPDATE FAENVIRO SET CashBookPage='Yes'", var_D8, -1
  loc_1A622C7: End If
  loc_1A622D6: var_94 = var_90.Fields
  loc_1A622E6: var_D8 = CVar(var_94.Item("CityNameDisp")) 'Address
  loc_1A62300: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A62319:   unk_49EA4F.Execute "UPDATE FAENVIRO SET CityNameDisp='No'", var_D8, -1
  loc_1A62324: End If
  loc_1A62333: var_94 = var_90.Fields
  loc_1A62343: var_D8 = CVar(var_94.Item("ToBy")) 'Address
  loc_1A6235D: If (Proc_183_2_E5A304(var_D8, var_94) = vbNullString) Then
  loc_1A62376:   unk_49EA4F.Execute "UPDATE FAENVIRO SET ToBy='No'", var_D8, -1
  loc_1A62381: End If
  loc_1A62390: var_94 = var_90.Fields
  loc_1A623A0: var_D8 = CVar(var_94.Item("RepToBy")) 'Address
  loc_1A623A9: var_98 = Proc_183_2_E5A304(var_D8, var_94)
  loc_1A623BA: If (var_98 = vbNullString) Then
  loc_1A623D3:   unk_49EA4F.Execute "UPDATE FAENVIRO SET RepToBy='No'", var_D8, -1
  loc_1A623DE: End If
  loc_1A623E1: Call 0.Method_BtnIntegrity_UnknownEvent_9C (var_94)
  loc_1A623ED: Call 0.Method_arg_A4 (CInt(0))
  loc_1A623F2: Exit Sub
  loc_1A623F3: ' Referenced from: 1A5EADC
  loc_1A623F9: Call 0.Method_arg_50 (var_98)
  loc_1A6240E: Proc_183_57_104AA84(var_98, "BtnIntegrity_Click")
  loc_1A6241A: Exit Sub
End Sub

Public Sub Ctrl_validate(Ctrl) 'E20C70
  'Data Table: 49EA24
  Dim var_94 As Long
  Dim var_B01 As Double
  loc_E20C4C: var_94 = -2147483643
  loc_E20C58: Me.BackColor = var_94
  loc_E20C68: Me.ForeColor = &HC00000
  loc_E20C6C: Exit Sub
  loc_E20C6D: var_B01 = 
End Sub

Public Sub Ctrl_GetFocus(Ctrl) 'E20CC4
  'Data Table: 49EA24
  Dim var_94 As Long
  Dim var_B01 As Double
  loc_E20CA0: var_94 = -2147483640
  loc_E20CAC: Me.BackColor = var_94
  loc_E20CB0: var_94 = -2147483634
  loc_E20CBC: Me.ForeColor = var_94
  loc_E20CC0: Exit Sub
  loc_E20CC1: var_B01 = 
End Sub

Public Sub Proc_199_14_E8D364
  'Data Table: 49EA24
  Dim var_10C As TextBox
  loc_E8D333: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8D336:   Call btnok_UnknownEvent_9()
  loc_E8D33E: Else
  loc_E8D349:   Set var_108 = Me.Txt
  loc_E8D34F:   Call 0.Method_Proc_199_14_E8D3640 (CInt(6))
  loc_E8D357:   var_10C.SetFocus
  loc_E8D363: End If
  loc_E8D363: Exit Sub
End Sub

Public Sub Proc_199_15_116FC04(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C) '116FC04
  'Data Table: 49EA24
  Dim unk_49EA4F As Connection15
  Dim var_8A As Integer
  Dim var_1C0 As Integer
  Dim var_114 As Variant
  Dim var_188 As String
  Dim var_1AC As Variant
  Dim var_1B0 As Fields15
  Dim var_1C4 As Field20
  Dim var_90 As Recordset15
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_88 As Long
  Dim var_1F8 As String
  Dim var_22C As String
  Dim var_244 As String
  Dim unk_49EBDD As Connection15
  loc_116F8C0: On Error Resume Next
  loc_116F8CE: unk_49EA4F.BeginTrans var_94
  loc_116F8D7: var_8A = &HFF
  loc_116F8E1: var_E4 = "Upper(GroupName)"
  loc_116F8EC: var_C4 = "UCase(GroupName)"
  loc_116F911: var_154 = Ucase(arg_10)
  loc_116F91C: var_1C0 = 0
  loc_116F961: unk_49EA4F.Execute CStr("SELECT COUNT(*) FROM ACGROUP WHERE " & IIf((MemVar_1F923AC = "A"), var_C4, var_E4) & "='" & var_154 & "'"), var_1A8, -1
  loc_116F971: var_1C0 = var_1B0.Item(var_1B0)
  loc_116F979: var_1C4 = var_1C4.Value
  loc_116F9AE: If (var_1D4 <= 0) Then
  loc_116F9C9:   unk_49EA4F.Execute "SELECT MAX(ID) AS MAXID FROM ACGROUP", var_C4, -1
  loc_116F9D4:   Set var_90 = var_1AC.Fields
  loc_116F9F3:   If (var_90.RecordCount > 0) Then
  loc_116FA07:     var_1AC = var_90.Fields
  loc_116FA1E:     Proc_183_3_E7D1C8(var_E4, CVar(var_1AC.Item("MaxId")), var_1AC)
  loc_116FA2B:     var_F4 = (var_E4 + 1)
  loc_116FA31:     var_88 = CLng(IIf((MemVar_1F923AC = "A"), CVar(var_1AC.Item("MaxId")), var_E4))
  loc_116FA43:   Else
  loc_116FA4C:     var_88 = 1
  loc_116FA4F:   End If
  loc_116FA68:   var_188 = CStr(var_88)
  loc_116FA6C:   var_1F8 = "Insert Into ACGROUP (ID,GroupCode,GroupName,GroupNameBiLang,Site_Code,GroupNature,Nature,MainGrCode,SubLedYN,BlOrd,AliasYN,SysGroup,GroupHelp,TradingYN,U_Name,U_EntDt,U_AE) VALUES (" & var_188
  loc_116FAC7:   var_22C = var_1F8 & ",'" & arg_C & "','" & arg_10 & "','','" & MemVar_1F92070 & "','" & arg_14 & "','" & arg_18 & "','" & arg_1C & "','N',"
  loc_116FAF3:   var_244 = Proc_183_20_FB3974(arg_10, var_22C & CStr(arg_20) & ",'N','" & arg_24 & "','", var_154, -1, var_1AC)
  loc_116FB0C:   var_F4 = CVar(var_88 & var_244 & "','" & arg_28 & "','Analysis',") 'String
  loc_116FB1D:   Proc_183_7_EB0C44(var_E4, Now, var_F4)
  loc_116FB25:   var_114 = var_88 & var_E4 
  loc_116FB3C:   unk_49EA4F.Execute CStr(var_114 & ",'A')"), var_1D4, var_8A
  loc_116FB88: End If
  loc_116FB92: unk_49EA4F.CommitTrans
  loc_116FB9B: var_8A = 0
  loc_116FBA5: Set var_90 = Nothing
  loc_116FBAA: Exit Sub
  loc_116FBB3: If (var_8A = &HFF) Then
  loc_116FBBE:   unk_49EBDD.RollbackTrans
  loc_116FBC3: End If
  loc_116FBDB: Set var_1AC = Err()
  loc_116FBE1: Call 0.Method_arg_2C (var_188, 0, var_E4)
  loc_116FBEC: MsgBox(CVar(var_188), var_F4, var_114, var_8A, )
  loc_116FC01: Exit Sub
End Sub
