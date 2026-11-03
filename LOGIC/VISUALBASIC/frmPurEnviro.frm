VERSION 5.00
Begin VB.Form frmPurEnviro
  Caption = "Purchase Parameter"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 13
    ForeColor = &H8000&
    Left = 5235
    Top = 1635
    Width = 2535
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
  Begin TextBox Txt
    Index = 12
    ForeColor = &H8000&
    Left = 5205
    Top = 4785
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5220
    Top = 4470
    Width = 2535
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
  Begin DataGrid DGDepart
    Left = 12015
    Top = 5580
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin DataGrid DGHelp
    Left = 12180
    Top = 5055
    Width = 5160
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 46
  End
  Begin DataGrid DGTaxStru
    Left = 12015
    Top = 4515
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
  Begin DataGrid DGRevenue
    Left = 12135
    Top = 3945
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 44
  End
  Begin Frame FrmList
    Left = 10965
    Top = 6225
    Width = 1425
    Height = 1830
    Visible = 0   'False
    TabIndex = 43
    BorderStyle = 0 'None
  End
  Begin DataGrid DGTAX
    Left = 12255
    Top = 3330
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 42
  End
  Begin CommandButton CmdSave
    Caption = "&Save && Exit"
    BackColor = &HC0FFFF&
    Left = 3000
    Top = 6750
    Width = 2250
    Height = 465
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
    Style = 1
  End
  Begin CommandButton CmdExit
    Caption = "&Cancel && Exit"
    BackColor = &HFFFFC0&
    Left = 5340
    Top = 6750
    Width = 2250
    Height = 465
    TabIndex = 38
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &H8000&
    Left = 5235
    Top = 1005
    Width = 2535
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 75
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
    ForeColor = &H8000&
    Left = 5205
    Top = 5100
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 13
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
    Index = 2
    ForeColor = &H8000&
    Left = 5235
    Top = 1320
    Width = 2535
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
    Index = 86
    ForeColor = &H8000&
    Left = 10635
    Top = 5235
    Width = 615
    Height = 285
    Visible = 0   'False
    Text = "No"
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5235
    Top = 1935
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 89
    ForeColor = &H8000&
    Left = 6855
    Top = 5370
    Width = 615
    Height = 285
    Visible = 0   'False
    Text = "No"
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 15
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
    Index = 90
    ForeColor = &H8000&
    Left = 6390
    Top = 5715
    Width = 2535
    Height = 285
    Visible = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5220
    Top = 2250
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5220
    Top = 2565
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5220
    Top = 2880
    Width = 615
    Height = 285
    Text = "No"
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 15
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
    ForeColor = &H8000&
    Left = 5220
    Top = 3510
    Width = 2535
    Height = 285
    TabIndex = 8
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
    Index = 9
    ForeColor = &H8000&
    Left = 5220
    Top = 3825
    Width = 2535
    Height = 285
    TabIndex = 9
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
    Index = 10
    ForeColor = &H8000&
    Left = 5220
    Top = 4140
    Width = 2535
    Height = 285
    TabIndex = 10
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
    Index = 7
    ForeColor = &H8000&
    Left = 5220
    Top = 3195
    Width = 2535
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
  Begin ListView ListView
    Left = 12870
    Top = 1110
    Width = 1650
    Height = 1815
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 40
  End
  Begin DataGrid DGGodown
    Left = 12270
    Top = 2715
    Width = 3900
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
  Begin MSFlexGrid FGPoint
    Left = 11865
    Top = 195
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 48
  End
  Begin Label Label3
    Caption = "Banquet Kitchen"
    Index = 2
    ForeColor = &H8000&
    Left = 2535
    Top = 1650
    Width = 1575
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
  Begin Label Label
    Caption = "(Kitchen Closing)"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 6720
    Top = 4785
    Width = 1665
    Height = 285
    TabIndex = 53
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label
    Caption = "Yes/No"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5850
    Top = 4800
    Width = 720
    Height = 285
    TabIndex = 52
    Alignment = 1 'Right Justify
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
  Begin Label Label3
    Caption = "Auto Fill Item"
    Index = 1
    ForeColor = &H8000&
    Left = 2520
    Top = 4800
    Width = 1275
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
  Begin Label Label
    Caption = "(Data Transfer)"
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC0&
    Left = 7830
    Top = 4455
    Width = 1410
    Height = 285
    TabIndex = 50
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label3
    Caption = "Stock Receive for Godown"
    Index = 0
    ForeColor = &H8000&
    Left = 2520
    Top = 4485
    Width = 2520
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
  Begin Label Label3
    Caption = "Cash Purchase A/c"
    Index = 4
    ForeColor = &H8000&
    Left = 2535
    Top = 1005
    Width = 1770
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
  Begin Label Label3
    Caption = "Show All A/c In Category"
    Index = 47
    ForeColor = &H8000&
    Left = 2520
    Top = 5115
    Width = 2370
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
  Begin Label Label3
    Caption = "Purchase Godown"
    Index = 60
    ForeColor = &H8000&
    Left = 2535
    Top = 1335
    Width = 1740
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
  Begin Label Label3
    Caption = "Req. Company Wise"
    Index = 72
    ForeColor = &H8000&
    Left = 8310
    Top = 5250
    Width = 1920
    Height = 240
    Visible = 0   'False
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
  Begin Label Label3
    Caption = "Modify Account Field"
    Index = 73
    ForeColor = &H8000&
    Left = 2535
    Top = 1950
    Width = 1995
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 33
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 11280
    Top = 5250
    Width = 720
    Height = 285
    Visible = 0   'False
    TabIndex = 32
    Alignment = 1 'Right Justify
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 34
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5880
    Top = 1950
    Width = 720
    Height = 285
    TabIndex = 31
    Alignment = 1 'Right Justify
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 35
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 7500
    Top = 5385
    Width = 720
    Height = 285
    Visible = 0   'False
    TabIndex = 30
    Alignment = 1 'Right Justify
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
  Begin Label Label3
    Caption = "Exp. && Mfd. Date In M.R."
    Index = 75
    ForeColor = &H8000&
    Left = 4530
    Top = 5385
    Width = 2295
    Height = 240
    Visible = 0   'False
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
  Begin Label Label3
    Caption = "Excise Invoice Tax Stru."
    Index = 76
    ForeColor = &H8000&
    Left = 4065
    Top = 5715
    Width = 2295
    Height = 240
    Visible = 0   'False
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 40
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5865
    Top = 2265
    Width = 720
    Height = 285
    TabIndex = 27
    Alignment = 1 'Right Justify
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
  Begin Label Label3
    Caption = "Rate Editable In P.O."
    Index = 101
    ForeColor = &H8000&
    Left = 2535
    Top = 2265
    Width = 1980
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 41
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5865
    Top = 2580
    Width = 720
    Height = 285
    TabIndex = 25
    Alignment = 1 'Right Justify
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
  Begin Label Label3
    Caption = "Rate Editable In Issue"
    Index = 102
    ForeColor = &H8000&
    Left = 2535
    Top = 2580
    Width = 2055
    Height = 240
    TabIndex = 24
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
  Begin Label Label3
    Caption = "Bar Code Feature"
    Index = 107
    ForeColor = &H8000&
    Left = 2535
    Top = 2895
    Width = 1680
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 43
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5865
    Top = 2895
    Width = 720
    Height = 285
    TabIndex = 22
    Alignment = 1 'Right Justify
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
  Begin Label Label3
    Caption = "Kitchen Stock Report"
    Index = 108
    ForeColor = &H8000&
    Left = 2535
    Top = 3510
    Width = 1995
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
  Begin Label Label3
    Caption = "Item Rate In M.R. Based on"
    Index = 109
    ForeColor = &H8000&
    Left = 2535
    Top = 3825
    Width = 2580
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
  Begin Label Label3
    Caption = "Item Rate In P.Bill Based on"
    Index = 110
    ForeColor = &H8000&
    Left = 2535
    Top = 4140
    Width = 2670
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
  Begin Label Label
    Caption = "Yes/No"
    Index = 44
    BackColor = &H80000005&
    ForeColor = &H8000&
    Left = 5850
    Top = 5100
    Width = 720
    Height = 285
    TabIndex = 18
    Alignment = 1 'Right Justify
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
  Begin Label Label3
    Caption = "Purchase Tax (VAT)"
    Index = 116
    ForeColor = &H8000&
    Left = 2535
    Top = 3195
    Width = 1875
    Height = 240
    TabIndex = 17
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

Attribute VB_Name = "frmPurEnviro"

Private global_68 As Recordset15

Private Sub ListView_UnknownEvent_13 'F53E4C
  'Data Table: 46EAD4
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F53D6E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F53D75:   Set var_A8 = Me.ListView
  loc_F53DBF:   Set var_C0 = Me.Txt
  loc_F53DC5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F53DCD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F53DED: End If
  loc_F53DF9: Me.FrmList.Visible = False
  loc_F53E29: Set var_9C = Me.Txt
  loc_F53E2F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F53E37: var_A8.SetFocus
  loc_F53E4B: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F787D4
  'Data Table: 46EAD4
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F786AB: var_86 = CInt(Val(CStr(Me.DGTaxStru.Tag)))
  loc_F786C0: Set var_8C = Me.DGTaxStru
  loc_F786C6: var_8C.Visible = False
  loc_F786E8: If (Me.var_8C.RecordCount > 0) Then
  loc_F78729:   Set var_CC = Me.Txt
  loc_F7872F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (var_86, var_D0)
  loc_F78737:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F7876D:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F7878B:   Set var_CC = Me.Txt
  loc_F78791:   Call 0.Method_DGTaxStru_UnknownEvent_90 (var_86, var_D0)
  loc_F78799:   var_D0.Tag = CStr(var_C8.Value)
  loc_F787AF: End If
  loc_F787B9: Set var_8C = Me.Txt
  loc_F787BF: Call 0.Method_DGTaxStru_UnknownEvent_90 (var_86, var_C8)
  loc_F787C7: var_C8.SetFocus
  loc_F787D3: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'EAF4D8
  'Data Table: 46EAD4
  loc_EAF46A: Proc_6_153_E91194(Me.DGTaxStru, arg_14)
  loc_EAF49E: Set var_A8 = Me.FGPoint
  loc_EAF4BE: Proc_6_138_106D6F8(Me.DGTaxStru, global_72, CInt(Val(CStr(Me.DGTaxStru.Tag))))
  loc_EAF4D4: Exit Sub
  loc_EAF4D5: ThisVCallI2
End Sub

Private Sub CmdExit_Click() 'E1663C
  'Data Table: 46EAD4
  loc_E16631: Me.Global.Unload Me
  loc_E16639: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11A6B70
  'Data Table: 46EAD4
  Dim var_92 As Integer
  Dim var_88 As DataGrid
  Dim var_B4 As Variant
  Dim var_8C As TextBox
  Dim var_90 As Fields15
  Dim var_D4 As Variant
  loc_11A6772: Set var_88 = Me.Txt
  loc_11A6778: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11A6786: Proc_6_74_E226B0(var_8C)
  loc_11A6792: Call Proc_294_20_F6AC6C(var_8C)
  loc_11A679A: var_92 = Index
  loc_11A67A5: If (var_92 = CInt(1)) Then
  loc_11A67C4:   If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_11A67DA:     Me.DGHelp.Left = CVar(CDbl(2200))
  loc_11A67F5:     Me.DGHelp.Top = CVar(CDbl(400))
  loc_11A6810:     Me.DGHelp.Tag = CVar(CStr(Index))
  loc_11A681B:   End If
  loc_11A6835:   If (global_68.RecordCount > 0) Then
  loc_11A6843:     Set var_8C = Me.FGPoint
  loc_11A685F:     Proc_6_137_1193554(Me.DGHelp, global_68, Index)
  loc_11A686D:   End If
  loc_11A68C4:   Set var_88 = Me.Txt
  loc_11A68CA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D0)
  loc_11A68D2:   ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_11A68EA:   If (var_8C Or (var_D0 = vbNullString)) Then
  loc_11A68ED:     Exit Sub
  loc_11A68EE:   End If
  loc_11A68FB:   Set var_88 = Me.Txt
  loc_11A6901:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11A6909:   var_D0 = var_8C.Text
  loc_11A691B:   var_B4 = "Name"
  loc_11A6959:   If CBool(CVar(var_D0) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_11A6965:     Me.Recordset15.MoveFirst
  loc_11A6988:     Set var_88 = Me.Txt
  loc_11A698E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D0, "Name ='")
  loc_11A6996:     0 = var_8C.Text
  loc_11A69B2:     Me.Recordset15.Find 1 & var_D0 & "'", var_B4, var_92
  loc_11A69C7:   End If
  loc_11A69CA: Else
  loc_11A69D2:   If (var_92 = CInt(8)) Then
  loc_11A69E2:     ReDim var_100(0 To 1)
  loc_11A69F9:     var_100(0) = "Advanced"
  loc_11A6A08:     var_100(1) = "Standard"
  loc_11A6A1C:     var_110 = Array(var_100) 'Variant
  loc_11A6A24:     Set var_D4 = Me.ListView
  loc_11A6A3C:     Set var_8C = Me.Txt
  loc_11A6A56:     Set global_64 = Proc_6_66_EFF8FC(var_D4, var_8C, Index)
  loc_11A6A74:     Set var_88 = Me.Txt
  loc_11A6A7A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D0)
  loc_11A6A82:     var_110 = var_8C.Text
  loc_11A6A94:     Set var_90 = Me.Txt
  loc_11A6A9A:     Call 0.Method_Txt_GotFocus0 (Index, var_D4)
  loc_11A6AA2:     var_D4.Tag = var_D0
  loc_11A6AB8:   Else
  loc_11A6AC0:     If Not (var_92 = CInt(9)) Then
  loc_11A6ACB:       If (var_92 = CInt(&HA)) Then
  loc_11A6ACE:       End If
  loc_11A6ADB:       ReDim var_100(0 To 2)
  loc_11A6AF2:       var_100(0) = "Purchase Rate"
  loc_11A6B01:       var_100(1) = "Last Purchase Rate"
  loc_11A6B10:       var_100(2) = "Party Wise Last Pur Rate"
  loc_11A6B24:       var_110 = Array(var_100) 'Variant
  loc_11A6B5E:       Set global_64 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index)
  loc_11A6B6F:     End If
  loc_11A6B6F:   End If
  loc_11A6B6F: End If
  loc_11A6B6F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12E5788
  'Data Table: 46EAD4
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Variant
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_A4 As Frame
  Dim var_C8 As DataGrid
  loc_12E50FE: If (CLng(Shift) = &H1B) Then
  loc_12E5101:   Call Proc_294_20_F6AC6C()
  loc_12E5106:   Exit Sub
  loc_12E5107: End If
  loc_12E510A: var_86 = KeyCode
  loc_12E5115: If (var_86 = CInt(1)) Then
  loc_12E5130:   Set var_9C = Nothing
  loc_12E513B:   Set var_98 = Nothing
  loc_12E516D:   Proc_6_69_134A198(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_12E51DD:   If ((Me.Txt.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12E5207:     Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 1)
  loc_12E5215:   End If
  loc_12E5218: Else
  loc_12E5220:   If Not (var_86 = CInt(2)) Then
  loc_12E522B:     If Not (var_86 = CInt(&HB)) Then
  loc_12E5236:       If (var_86 = CInt(&HD)) Then
  loc_12E5239:       End If
  loc_12E5239:     End If
  loc_12E525C:     Set var_98 = Nothing
  loc_12E528E:     Proc_6_69_134A198(Me.DGGodown, Me.Txt, KeyCode, global_56, Shift, 0, 1)
  loc_12E52FE:     If ((Me.Txt.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12E5305:       Set var_98 = Me.DGGodown
  loc_12E5328:       Proc_6_138_106D6F8(var_98, global_56, KeyCode, Me.FGPoint, var_98, Nothing)
  loc_12E5336:     End If
  loc_12E5339:   Else
  loc_12E533F:     If Not (var_86 = 7) Then
  loc_12E534A:       If (var_86 = CInt(var_BC)) Then
  loc_12E534D:       End If
  loc_12E5358:       Set var_A8 = Me.Txt
  loc_12E5365:       Set var_9C = Nothing
  loc_12E53A2:       Proc_6_69_134A198(Me.DGTAX, var_A8, KeyCode, global_60, Shift, 0, 1, Nothing)
  loc_12E53C2:       var_AC = Me.Txt.RecordCount
  loc_12E5412:       If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12E5420:         Set var_90 = Me.FGPoint
  loc_12E543C:         Proc_6_138_106D6F8(Me.DGTAX, global_60, KeyCode, var_90, var_9C, 0)
  loc_12E544A:       End If
  loc_12E544D:     Else
  loc_12E5455:       If (var_86 = CInt(8)) Then
  loc_12E547A:         Set var_8C = Me.Txt
  loc_12E5480:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_12E5488:         var_98 = var_90.Left
  loc_12E549A:         Set var_98 = Me.Txt
  loc_12E54A0:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_C0)
  loc_12E54A8:         var_9C = var_9C.Top
  loc_12E54BA:         Set var_A4 = Me.Txt
  loc_12E54C0:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_C4)
  loc_12E54C8:         0 = var_A8.Height
  loc_12E54DA:         Set var_C8 = Me.Txt
  loc_12E54E0:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_CC)
  loc_12E54E8:         var_D0 = var_CC.Width
  loc_12E5530:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E5557:       Else
  loc_12E555F:         If Not (var_86 = CInt(9)) Then
  loc_12E556A:           If (var_86 = CInt(&HA)) Then
  loc_12E556D:           End If
  loc_12E558F:           Set var_8C = Me.Txt
  loc_12E5595:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_12E559D:           CInt((var_C0 + var_C4)) = var_90.Left
  loc_12E55AF:           Set var_98 = Me.Txt
  loc_12E55B5:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_C0)
  loc_12E55BD:           CInt(var_D0) = var_9C.Top
  loc_12E55CF:           Set var_A4 = Me.Txt
  loc_12E55D5:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_C4)
  loc_12E55DD:           520 = var_A8.Height
  loc_12E55EF:           Set var_C8 = Me.Txt
  loc_12E55F5:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_CC)
  loc_12E55FD:           var_D0 = var_CC.Width
  loc_12E5645:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12E5669:         End If
  loc_12E5669:       End If
  loc_12E5669:     End If
  loc_12E5669:   End If
  loc_12E5669: End If
  loc_12E5746: If ((((((((CBool(Me.DGRevenue.Visible) = 0) And (CBool(Me.DGTAX.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) And (CBool(Me.DGHelp.Visible) = 0)) And (Me.FrmList.Visible = 0)) And (CBool(Me.DGDepart.Visible) = 0)) And (CBool(Me.DGGodown.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) Then
  loc_12E575E:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12E5767:     Proc_6_75_E527CC(Shift, arg_14, CInt(var_AC), CInt((var_C0 + var_C4)))
  loc_12E576C:   End If
  loc_12E5776:   If (CLng(Shift) = &H26) Then
  loc_12E577F:     Proc_6_76_E52838(Shift, arg_14, CInt(var_D0))
  loc_12E5784:   End If
  loc_12E5784: End If
  loc_12E5784: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FBA150
  'Data Table: 46EAD4
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  Dim arg_10 As Integer
  loc_FB9FBB: var_86 = KeyAscii
  loc_FB9FC6: If (var_86 = CInt(1)) Then
  loc_FB9FE5:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FB9FEC:     Set var_A8 = Me.Txt
  loc_FB9FF7:     var_A0 = "Name"
  loc_FBA016:     Proc_6_89_146F1AC(var_A8, KeyAscii, global_68, arg_10)
  loc_FBA025:   End If
  loc_FBA028: Else
  loc_FBA030:   If Not (var_86 = CInt(var_B8)) Then
  loc_FBA03B:     If Not (var_86 = CInt(3)) Then
  loc_FBA046:       If Not (var_86 = CInt(var_C8)) Then
  loc_FBA051:         If Not (var_86 = CInt(4)) Then
  loc_FBA05C:           If Not (var_86 = CInt(5)) Then
  loc_FBA067:             If Not (var_86 = CInt(6)) Then
  loc_FBA072:               If Not (var_86 = CInt(&HC)) Then
  loc_FBA07D:                 If Not (var_86 = CInt(&HE)) Then
  loc_FBA088:                   If (var_86 = CInt(var_D8)) Then
  loc_FBA08B:                   End If
  loc_FBA08B:                 End If
  loc_FBA08B:               End If
  loc_FBA08B:             End If
  loc_FBA08B:           End If
  loc_FBA08B:         End If
  loc_FBA08B:       End If
  loc_FBA08B:     End If
  loc_FBA0B4:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_FBA0C4:       Set var_8C = Me.Txt
  loc_FBA0CA:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_FBA0D2:       var_A8.Text = var_A0
  loc_FBA0E1:     Else
  loc_FBA10A:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_FBA11A:         Set var_8C = Me.Txt
  loc_FBA120:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_FBA128:         var_A8.Text = 0
  loc_FBA134:       End If
  loc_FBA134:     End If
  loc_FBA136:     arg_10 = 0
  loc_FBA13C:   Else
  loc_FBA144:     If (var_86 = CInt(var_118)) Then
  loc_FBA149:       arg_10 = 0
  loc_FBA14C:     End If
  loc_FBA14C:   End If
  loc_FBA14C: End If
  loc_FBA14C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FBCE28
  'Data Table: 46EAD4
  Dim var_86 As Integer
  loc_FBCC83: var_86 = KeyCode
  loc_FBCC8E: If (var_86 = CInt(1)) Then
  loc_FBCCAD:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FBCCC1:     var_A4 = "Name"
  loc_FBCCE9:     Proc_6_68_129FB34(Me.DGHelp, Me.Txt, KeyCode, global_68)
  loc_FBCD23:     Proc_6_138_106D6F8(Me.DGHelp, global_68, KeyCode, Me.FGPoint)
  loc_FBCD31:   End If
  loc_FBCD34: Else
  loc_FBCD3C:   If (var_86 = CInt(8)) Then
  loc_FBCD5A:     If (Me.FrmList.Visible = &HFF) Then
  loc_FBCD89:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_FBCD99:     End If
  loc_FBCD9C:   Else
  loc_FBCDA6:     If Not (var_86 = CInt(3)) Then
  loc_FBCDB1:       If Not (var_86 = CInt(9)) Then
  loc_FBCDBC:         If Not (var_86 = CInt(&HA)) Then
  loc_FBCDC7:           If (var_86 = CInt(var_C0)) Then
  loc_FBCDCA:           End If
  loc_FBCDCA:         End If
  loc_FBCDCA:       End If
  loc_FBCDE5:       If (Me.FrmList.Visible = &HFF) Then
  loc_FBCE14:         Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_64)
  loc_FBCE24:       End If
  loc_FBCE24:     End If
  loc_FBCE24:   End If
  loc_FBCE24: End If
  loc_FBCE24: Exit Sub
  loc_FBCE25: arg_5C0F = global_64
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47C74
  'Data Table: 46EAD4
  loc_E47C52: Set var_88 = Me.Txt
  loc_E47C58: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47C66: Proc_6_73_E22704(var_8C)
  loc_E47C72: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '119F87C
  'Data Table: 46EAD4
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_119F478: Call Proc_294_20_F6AC6C()
  loc_119F480: var_86 = Cancel
  loc_119F48B: If (var_86 = CInt(1)) Then
  loc_119F4E5:   Set var_94 = Me.Txt
  loc_119F4EB:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_119F4F3:   ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_98.Text
  loc_119F50B:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_119F51B:     Set var_94 = Me.Txt
  loc_119F521:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_119F529:     var_98.Tag = vbNullString
  loc_119F535:     Exit Sub
  loc_119F536:   End If
  loc_119F574:   Set var_B0 = Me.Txt
  loc_119F57A:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_119F582:   var_B4.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_119F5B8:   var_98 = Me.Recordset15.Fields.Item("Code")
  loc_119F5D6:   Set var_B0 = Me.Txt
  loc_119F5DC:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_119F5E4:   var_B4.Tag = CStr(var_98.Value)
  loc_119F5FD: Else
  loc_119F605:   If (var_86 = CInt(&HD)) Then
  loc_119F65F:     Set var_94 = Me.Txt
  loc_119F665:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_119F685:     If (((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_119F695:       Set var_94 = Me.Txt
  loc_119F69B:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_119F6A3:       var_98.Tag = vbNullString
  loc_119F6AF:       Exit Sub
  loc_119F6B0:     End If
  loc_119F6EE:     Set var_B0 = Me.Txt
  loc_119F6F4:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_119F6FC:     var_B4.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_119F732:     var_98 = Me.Recordset15.Fields.Item("Code")
  loc_119F750:     Set var_B0 = Me.Txt
  loc_119F756:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_119F75E:     var_B4.Tag = CStr(var_98.Value)
  loc_119F777:   Else
  loc_119F77F:     If Not (var_86 = CInt(var_D4)) Then
  loc_119F78A:       If Not (var_86 = CInt(3)) Then
  loc_119F795:         If Not (var_86 = CInt(var_E4)) Then
  loc_119F7A0:           If Not (var_86 = CInt(4)) Then
  loc_119F7AB:             If Not (var_86 = CInt(5)) Then
  loc_119F7B6:               If Not (var_86 = CInt(6)) Then
  loc_119F7C1:                 If Not (var_86 = CInt(&HC)) Then
  loc_119F7CC:                   If Not (var_86 = CInt(&HE)) Then
  loc_119F7D7:                     If (var_86 = CInt(var_F4)) Then
  loc_119F7DA:                     End If
  loc_119F7DA:                   End If
  loc_119F7DA:                 End If
  loc_119F7DA:               End If
  loc_119F7DA:             End If
  loc_119F7DA:           End If
  loc_119F7DA:         End If
  loc_119F7DA:       End If
  loc_119F7E4:       Set var_94 = Me.Txt
  loc_119F7EA:       Call 0.Method_Txt_Validate0 (Cancel)
  loc_119F825:       If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_119F835:         Set var_94 = Me.Txt
  loc_119F83B:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_119F843:         var_98.Text = "Yes"
  loc_119F852:       Else
  loc_119F85F:         Set var_94 = Me.Txt
  loc_119F865:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_119F86D:         var_98.Text = "No"
  loc_119F879:       End If
  loc_119F879:     End If
  loc_119F879:   End If
  loc_119F879: End If
  loc_119F879: Exit Sub
End Sub

Private Sub CmdSave_Click() '1250190
  'Data Table: 46EAD4
  Dim unk_46EAD9 As Connection15
  Dim var_86 As Integer
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_C0 As String
  Dim var_B8 As TextBox
  Dim var_10C As String
  Dim var_154 As String
  Dim var_19C As String
  Dim var_1A4 As TextBox
  Dim var_23C As Variant
  Dim var_314 As TextBox
  Dim var_388 As Variant
  Dim var_90 As Variant
  loc_124FD7C: On Error Goto loc_1250173
  loc_124FD7F: Call Proc_294_20_F6AC6C()
  loc_124FD8D: unk_46EAD9.BeginTrans var_8C
  loc_124FDB5: Set var_90 = Me.Txt
  loc_124FDBB: Call 0.Method_CmdSave_Click0 (CInt(1), var_94, var_98, "Update Enviro Set  CashPurchAc='")
  loc_124FDC3: var_3CC = var_94.Tag
  loc_124FDCC: var_9C = -1 & var_98
  loc_124FDD3: var_AC = var_9C & "',PurchaseGodown='"
  loc_124FDE4: Set var_A0 = Me.Txt
  loc_124FDEA: Call 0.Method_CmdSave_Click0 (CInt(2), var_A4, var_A8)
  loc_124FDF2: var_AC = var_A4.Tag
  loc_124FE02: var_C0 = var_3D0 & var_A8 & "',BanquetKitchen='"
  loc_124FE13: Set var_B4 = Me.Txt
  loc_124FE19: Call 0.Method_CmdSave_Click0 (CInt(&HD), var_B8, var_BC)
  loc_124FE21: var_C0 = var_B8.Tag
  loc_124FE3F: Set var_C8 = Me.Txt
  loc_124FE45: Call 0.Method_CmdSave_Click0 (CInt(3), var_CC)
  loc_124FE6F: Set var_EC = Me.Txt
  loc_124FE75: Call 0.Method_CmdSave_Click0 (CInt(4), var_F0)
  loc_124FE8A: var_10C = &HFF & var_BC & "',AcFieldAlterable='" & Proc_6_38_E68A98(CVar(var_CC)) & "',RateEditableInPO='" & Proc_6_38_E68A98(CVar(var_F0))
  loc_124FE9F: Set var_110 = Me.Txt
  loc_124FEA5: Call 0.Method_CmdSave_Click0 (CInt(5), var_114)
  loc_124FECF: Set var_134 = Me.Txt
  loc_124FED5: Call 0.Method_CmdSave_Click0 (CInt(6), var_138)
  loc_124FEEA: var_154 = var_10C & "',RateEditableInStockIssue='" & Proc_6_38_E68A98(CVar(var_114)) & "',BarCodeFeatureInPurchase='" & Proc_6_38_E68A98(CVar(var_138))
  loc_124FEFF: Set var_158 = Me.Txt
  loc_124FF05: Call 0.Method_CmdSave_Click0 (CInt(&HC), var_15C)
  loc_124FF2F: Set var_17C = Me.Txt
  loc_124FF35: Call 0.Method_CmdSave_Click0 (CInt(&HE), var_180)
  loc_124FF4A: var_19C = var_154 & "',AutoFillItemInKitchenClosingYN='" & Proc_6_38_E68A98(CVar(var_15C)) & "',ShowAllAcInPurcahseCategoryYN='" & Proc_6_38_E68A98(CVar(var_180))
  loc_124FF60: Set var_1A0 = Me.Txt
  loc_124FF66: Call 0.Method_CmdSave_Click0 (7, var_1A4)
  loc_124FF97: Set var_1C8 = Me.Txt
  loc_124FF9D: Call 0.Method_CmdSave_Click0 (CInt(8), var_1CC)
  loc_124FFB4: Proc_6_17_EAA2B0(var_1FC, CVar(Proc_6_38_E68A98(CVar(var_1CC))))
  loc_124FFC5: var_23C = CVar(var_19C & "',PurchaseTaxVAT='" & Proc_6_38_E68A98(CVar(var_1A4.Tag)) & "',KitchenStockReport = ") & var_1FC & ", ItemRateInMRBasedOn = " 
  loc_124FFD4: Set var_240 = Me.Txt
  loc_124FFDA: Call 0.Method_CmdSave_Click0 (CInt(9), var_244)
  loc_124FFF1: Proc_6_17_EAA2B0(var_274, CVar(Proc_6_38_E68A98(CVar(var_244))))
  loc_1250011: Set var_2A8 = Me.Txt
  loc_1250017: Call 0.Method_CmdSave_Click0 (CInt(&HA), var_2AC)
  loc_125002E: Proc_6_17_EAA2B0(var_2DC, CVar(Proc_6_38_E68A98(CVar(var_2AC))))
  loc_1250051: Set var_310 = Me.Txt
  loc_1250057: Call 0.Method_CmdSave_Click0 (CInt(&HB), var_314)
  loc_125006D: Proc_6_17_EAA2B0(var_338, CVar(var_314.Tag))
  loc_1250088: var_388 = var_23C & var_274 & ", ItemRateInPurchaseBillBasedOn = " & var_2DC & ",StockRecGodown=" & var_338 & " WHERE SITECODE='" & CVar(MemVar_1F92078) 
  loc_125009F: unk_46EAD9.Execute CStr(var_388 & "'"), , 
  loc_1250153: unk_46EAD9.CommitTrans
  loc_125015A: var_86 = 0
  loc_125016A: Me.Global.Unload Me
  loc_1250172: Exit Sub
  loc_1250173: ' Referenced from: 124FD7C
  loc_1250179: If (var_86 = &HFF) Then
  loc_1250182:   unk_46EAD9.RollbackTrans
  loc_1250187: End If
  loc_1250187: Proc_6_60_E62BC4(var_86)
  loc_125018C: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F79434
  'Data Table: 46EAD4
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F7930B: var_86 = CInt(Val(CStr(Me.DGHelp.Tag)))
  loc_F79320: Set var_8C = Me.DGHelp
  loc_F79326: var_8C.Visible = False
  loc_F79348: If (Me.var_8C.RecordCount > 0) Then
  loc_F79389:   Set var_CC = Me.Txt
  loc_F7938F:   Call 0.Method_DGHelp_UnknownEvent_90 (var_86, var_D0)
  loc_F79397:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F793CD:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F793EB:   Set var_CC = Me.Txt
  loc_F793F1:   Call 0.Method_DGHelp_UnknownEvent_90 (var_86, var_D0)
  loc_F793F9:   var_D0.Tag = CStr(var_C8.Value)
  loc_F7940F: End If
  loc_F79419: Set var_8C = Me.Txt
  loc_F7941F: Call 0.Method_DGHelp_UnknownEvent_90 (var_86, var_C8)
  loc_F79427: var_C8.SetFocus
  loc_F79433: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EAF5A4
  'Data Table: 46EAD4
  loc_EAF536: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_EAF56A: Set var_A8 = Me.FGPoint
  loc_EAF58A: Proc_6_138_106D6F8(Me.DGHelp, global_68, CInt(Val(CStr(Me.DGHelp.Tag))))
  loc_EAF5A0: Exit Sub
End Sub

Private Sub Form_Load() '10097E0
  'Data Table: 46EAD4
  Dim var_9C As Variant
  loc_10095CF: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10095DE: Set global_68 = New 
  loc_10095F3: Me.Recordset15.CursorLocation = 3
  loc_100961D: var_9C = CVar("Select SubCode as Code,Name From SubGroup WHERE ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_100962A: Me.Recordset15.Open var_9C, CVar(MemVar_1F92044), 2
  loc_1009641: CVarUnk
  loc_1009646: VerifyVarObj
  loc_100964C: Set var_88 = Me.DGHelp
  loc_1009652: LateIdStAd
  loc_100966A: Set global_56 = New 
  loc_100967F: Me.DGHelp.CursorLocation = 3
  loc_10096A9: var_9C = CVar("Select Code,Name From Godownmast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10096B6: Me.Recordset15.Open var_9C, CVar(MemVar_1F92044), 2
  loc_10096CD: CVarUnk
  loc_10096D2: VerifyVarObj
  loc_10096D8: Set var_88 = Me.DGGodown
  loc_10096DE: LateIdStAd
  loc_10096F6: Set global_52 = New 
  loc_100970B: Me.DGGodown.CursorLocation = 3
  loc_1009742: Me.Recordset15.Open CVar("Select * From Enviro WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "')"), CVar(MemVar_1F92044), 2
  loc_100976C: Me.Recordset15.CursorLocation = 3
  loc_1009796: var_9C = CVar("Select Code,Name From RevMast Where  FieldType='T' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10097A3: Me.Recordset15.Open var_9C, CVar(MemVar_1F92044), 2
  loc_10097BA: CVarUnk
  loc_10097BF: VerifyVarObj
  loc_10097CB: LateIdStAd
  loc_10097D9: Call Proc_294_19_150ACE4(Me.DGTAX, New, 3, -1, 3, -1, Me.DGTAX)
  loc_10097DE: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB3700
  'Data Table: 46EAD4
  loc_EB3677: Set global_68 = Nothing
  loc_EB3689: Set global_52 = Nothing
  loc_EB369B: Set global_56 = Nothing
  loc_EB36AD: Set global_72 = Nothing
  loc_EB36B6: var_98 = Nothing 'Address
  loc_EB36BC: var_A8 = Nothing 'Address
  loc_EB36CB: Set global_64 = Nothing
  loc_EB36DD: Set global_60 = Nothing
  loc_EB36EF: Set global_72 = Nothing
  loc_EB36F8: var_B8 = Nothing 'Address
  loc_EB36FC: Exit Sub
  loc_EB36FD: If  Then Exit Sub
  loc_EB36FD: End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A694
  'Data Table: 46EAD4
  loc_E2A66C: On Error Goto loc_E2A68C
  loc_E2A683: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A68B: Exit Sub
  loc_E2A68C: ' Referenced from: E2A66C
  loc_E2A68C: Proc_6_60_E62BC4(Shift)
  loc_E2A691: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAD10C
  'Data Table: 46EAD4
  loc_EAD094: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EAD097:   Call DGHelp_UnknownEvent_9()
  loc_EAD09C: End If
  loc_EAD0B8: If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_EAD0CA:   Me.DGGodown.Visible = False
  loc_EAD0D2: End If
  loc_EAD0EE: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_EAD100:   Me.DGTaxStru.Visible = False
  loc_EAD108: End If
  loc_EAD108: Exit Sub
End Sub

Private Sub DGGodown_UnknownEvent_9 'F7785C
  'Data Table: 46EAD4
  Dim var_8C As Variant
  Dim var_86 As Integer
  Dim var_C8 As Variant
  Dim var_D0 As TextBox
  loc_F77733: var_86 = CInt(Val(CStr(Me.DGGodown.Tag)))
  loc_F77748: Set var_8C = Me.DGGodown
  loc_F7774E: var_8C.Visible = False
  loc_F77770: If (Me.var_8C.RecordCount > 0) Then
  loc_F777B1:   Set var_CC = Me.Txt
  loc_F777B7:   Call 0.Method_DGGodown_UnknownEvent_90 (var_86, var_D0)
  loc_F777BF:   var_D0.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_F777F5:   var_C8 = Me.Recordset15.Fields.Item("Code")
  loc_F77813:   Set var_CC = Me.Txt
  loc_F77819:   Call 0.Method_DGGodown_UnknownEvent_90 (var_86, var_D0)
  loc_F77821:   var_D0.Tag = CStr(var_C8.Value)
  loc_F77837: End If
  loc_F77841: Set var_8C = Me.Txt
  loc_F77847: Call 0.Method_DGGodown_UnknownEvent_90 (var_86, var_C8)
  loc_F7784F: var_C8.SetFocus
  loc_F7785B: Exit Sub
End Sub

Private Sub DGGodown_UnknownEvent_1F 'EAF010
  'Data Table: 46EAD4
  loc_EAEFA2: Proc_6_153_E91194(Me.DGGodown, arg_14)
  loc_EAEFD6: Set var_A8 = Me.FGPoint
  loc_EAEFF6: Proc_6_138_106D6F8(Me.DGGodown, global_56, CInt(Val(CStr(Me.DGGodown.Tag))))
  loc_EAF00C: Exit Sub
End Sub

Public Sub Proc_294_19_150ACE4
  'Data Table: 46EAD4
  Dim var_8C As Fields15
  Dim var_B0 As Variant
  Dim var_BC As String
  Dim var_B8 As TextBox
  Dim var_A0 As Variant
  Dim var_C0 As String
  Dim unk_46EAD9 As Connection15
  Dim var_88 As Recordset15
  Dim var_132 As Integer
  Dim var_B4 As Fields15
  Dim var_130 As TextBox
  Dim var_144 As Variant
  loc_1509E39: var_A0 = Me.Recordset15.Fields.Item("CashPurchAc")
  loc_1509E58: Set var_B4 = Me.Txt
  loc_1509E5E: Call 0.Method_Proc_294_19_150ACE40 (CInt(1), var_B8)
  loc_1509E66: var_B8.Tag = Proc_6_38_E68A98(CVar(var_A0))
  loc_1509E88: Set var_8C = Me.Txt
  loc_1509E8E: Call 0.Method_Proc_294_19_150ACE40 (CInt(1), var_A0)
  loc_1509E96: var_BC = var_A0.Tag
  loc_1509EAD: If (var_BC <> vbNullString) Then
  loc_1509ECE:   Set var_8C = Me.Txt
  loc_1509ED4:   Call 0.Method_Proc_294_19_150ACE40 (CInt(1), var_A0, var_BC, "Select Name From SubGroup Where SubCode='")
  loc_1509EDC:   var_B0 = var_A0.Tag
  loc_1509EE5:   var_C0 = -1 & var_BC
  loc_1509EF5:   unk_46EAD9.Execute var_C0 & "'", var_B4, 
  loc_1509F00:   Set var_88 = var_B4
  loc_1509F2C:   If (var_88.RecordCount > 0) Then
  loc_1509F49:     var_A0 = var_88.Fields.Item("Name")
  loc_1509F68:     Set var_B4 = Me.Txt
  loc_1509F6E:     Call 0.Method_Proc_294_19_150ACE40 (CInt(1), var_B8)
  loc_1509F76:     var_B8.Text = CStr(var_A0.Value)
  loc_1509F8C:   End If
  loc_1509F8F: Else
  loc_1509F9D:   Set var_8C = Me.Txt
  loc_1509FA3:   Call 0.Method_Proc_294_19_150ACE40 (CInt(1), var_A0)
  loc_1509FAB:   var_A0.Text = vbNullString
  loc_1509FB7: End If
  loc_1509FD4: var_A0 = Me.Recordset15.Fields.Item("PurchaseGodown")
  loc_1509FE5: var_132 = IsNull(CVar(var_A0))
  loc_1509FFD: var_B4 = Me.Recordset15.Fields
  loc_150A005: var_B8 = var_B4.Item("PurchaseGodown")
  loc_150A03D: Set var_12C = Me.Txt
  loc_150A043: Call 0.Method_Proc_294_19_150ACE40 (CInt(2), var_130)
  loc_150A04B: var_130.Tag = CStr(IIf(var_132, vbNullString, CVar(var_B8)))
  loc_150A079: Set var_8C = Me.Txt
  loc_150A07F: Call 0.Method_Proc_294_19_150ACE40 (CInt(2), var_A0)
  loc_150A087: var_BC = var_A0.Tag
  loc_150A09E: If (var_BC <> vbNullString) Then
  loc_150A0BF:   Set var_8C = Me.Txt
  loc_150A0C5:   Call 0.Method_Proc_294_19_150ACE40 (CInt(2), var_A0, var_BC, "Select Name From Godownmast Where Code='")
  loc_150A0CD:   var_B0 = var_A0.Tag
  loc_150A0D6:   var_C0 = -1 & var_BC
  loc_150A0E6:   unk_46EAD9.Execute var_C0 & "'", var_B4, var_132
  loc_150A0F1:   Set var_88 = var_B4
  loc_150A11D:   If (var_88.RecordCount > 0) Then
  loc_150A13A:     var_A0 = var_88.Fields.Item("Name")
  loc_150A159:     Set var_B4 = Me.Txt
  loc_150A15F:     Call 0.Method_Proc_294_19_150ACE40 (CInt(2), var_B8)
  loc_150A167:     var_B8.Text = CStr(var_A0.Value)
  loc_150A17D:   End If
  loc_150A180: Else
  loc_150A18E:   Set var_8C = Me.Txt
  loc_150A194:   Call 0.Method_Proc_294_19_150ACE40 (CInt(2), var_A0)
  loc_150A19C:   var_A0.Text = vbNullString
  loc_150A1A8: End If
  loc_150A1C5: var_A0 = Me.Recordset15.Fields.Item("BanquetKitchen")
  loc_150A1D6: var_132 = IsNull(CVar(var_A0))
  loc_150A1EE: var_B4 = Me.Recordset15.Fields
  loc_150A1F6: var_B8 = var_B4.Item("BanquetKitchen")
  loc_150A22E: Set var_12C = Me.Txt
  loc_150A234: Call 0.Method_Proc_294_19_150ACE40 (CInt(&HD), var_130)
  loc_150A23C: var_130.Tag = CStr(IIf(var_132, vbNullString, CVar(var_B8)))
  loc_150A26A: Set var_8C = Me.Txt
  loc_150A270: Call 0.Method_Proc_294_19_150ACE40 (CInt(&HD), var_A0)
  loc_150A278: var_BC = var_A0.Tag
  loc_150A28F: If (var_BC <> vbNullString) Then
  loc_150A2B0:   Set var_8C = Me.Txt
  loc_150A2B6:   Call 0.Method_Proc_294_19_150ACE40 (CInt(&HD), var_A0, var_BC, "Select Name From Godownmast Where Code='")
  loc_150A2BE:   var_B0 = var_A0.Tag
  loc_150A2C7:   var_C0 = -1 & var_BC
  loc_150A2D7:   unk_46EAD9.Execute var_C0 & "'", var_B4, var_132
  loc_150A2E2:   Set var_88 = var_B4
  loc_150A30E:   If (var_88.RecordCount > 0) Then
  loc_150A32B:     var_A0 = var_88.Fields.Item("Name")
  loc_150A34A:     Set var_B4 = Me.Txt
  loc_150A350:     Call 0.Method_Proc_294_19_150ACE40 (CInt(&HD), var_B8)
  loc_150A358:     var_B8.Text = CStr(var_A0.Value)
  loc_150A36E:   End If
  loc_150A371: Else
  loc_150A37F:   Set var_8C = Me.Txt
  loc_150A385:   Call 0.Method_Proc_294_19_150ACE40 (CInt(&HD), var_A0)
  loc_150A38D:   var_A0.Text = vbNullString
  loc_150A399: End If
  loc_150A3B6: var_A0 = Me.Recordset15.Fields.Item("PurchaseTaxVAT")
  loc_150A3C7: var_132 = IsNull(CVar(var_A0))
  loc_150A3DF: var_B4 = Me.Recordset15.Fields
  loc_150A3E7: var_B8 = var_B4.Item("PurchaseTaxVAT")
  loc_150A41D: Set var_12C = Me.Txt
  loc_150A423: Call 0.Method_Proc_294_19_150ACE40 (7, var_130)
  loc_150A42B: var_130.Tag = CStr(IIf(var_132, vbNullString, CVar(var_B8)))
  loc_150A457: Set var_8C = Me.Txt
  loc_150A45D: Call 0.Method_Proc_294_19_150ACE40 (7, var_A0)
  loc_150A465: var_BC = var_A0.Tag
  loc_150A47C: If (var_BC <> vbNullString) Then
  loc_150A49B:   Set var_8C = Me.Txt
  loc_150A4A1:   Call 0.Method_Proc_294_19_150ACE40 (7, var_A0, var_BC, "Select MAx(Name) As Name From RevMast Where FieldType='T' and Code='")
  loc_150A4A9:   var_B0 = var_A0.Tag
  loc_150A4B2:   var_C0 = -1 & var_BC
  loc_150A4C2:   unk_46EAD9.Execute var_C0 & "'", var_B4, var_132
  loc_150A4CD:   Set var_88 = var_B4
  loc_150A4F9:   If (var_88.RecordCount > 0) Then
  loc_150A516:     var_A0 = var_88.Fields.Item("Name")
  loc_150A533:     Set var_B4 = Me.Txt
  loc_150A539:     Call 0.Method_Proc_294_19_150ACE40 (7, var_B8)
  loc_150A541:     var_B8.Text = CStr(var_A0.Value)
  loc_150A557:   End If
  loc_150A55A: Else
  loc_150A566:   Set var_8C = Me.Txt
  loc_150A56C:   Call 0.Method_Proc_294_19_150ACE40 (7, var_A0)
  loc_150A574:   var_A0.Text = vbNullString
  loc_150A580: End If
  loc_150A602: var_144 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AcFieldAlterable"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("AcFieldAlterable"))))
  loc_150A619: Set var_12C = Me.Txt
  loc_150A61F: Call 0.Method_Proc_294_19_150ACE40 (CInt(3), var_130)
  loc_150A627: var_130.Text = CStr(var_144)
  loc_150A6E6: var_194 = IIf((Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KitchenStockReport"))))) = vbNullString), "Standard", Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("KitchenStockReport"))))))
  loc_150A6FD: Set var_12C = Me.Txt
  loc_150A703: Call 0.Method_Proc_294_19_150ACE40 (CInt(8), var_130)
  loc_150A70B: var_130.Text = CStr(var_194)
  loc_150A7B5: var_144 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RateEditableInPO"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("RateEditableInPO"))))
  loc_150A7CC: Set var_12C = Me.Txt
  loc_150A7D2: Call 0.Method_Proc_294_19_150ACE40 (CInt(4), var_130)
  loc_150A7DA: var_130.Text = CStr(var_144)
  loc_150A884: var_144 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RateEditableInStockIssue"))) = vbNullString), "Yes", Trim(CVar(Me.Recordset15.Fields.Item("RateEditableInStockIssue"))))
  loc_150A89B: Set var_12C = Me.Txt
  loc_150A8A1: Call 0.Method_Proc_294_19_150ACE40 (CInt(5), var_130)
  loc_150A8A9: var_130.Text = CStr(var_144)
  loc_150A953: var_144 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ItemRateInMRBasedOn"))) = vbNullString), "Purchase Rate", Trim(CVar(Me.Recordset15.Fields.Item("ItemRateInMRBasedOn"))))
  loc_150A96A: Set var_12C = Me.Txt
  loc_150A970: Call 0.Method_Proc_294_19_150ACE40 (CInt(9), var_130)
  loc_150A978: var_130.Text = CStr(var_144)
  loc_150AA22: var_144 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ItemRateInPurchaseBillBasedOn"))) = vbNullString), "Purchase Rate", Trim(CVar(Me.Recordset15.Fields.Item("ItemRateInPurchaseBillBasedOn"))))
  loc_150AA39: Set var_12C = Me.Txt
  loc_150AA3F: Call 0.Method_Proc_294_19_150ACE40 (CInt(&HA), var_130)
  loc_150AA47: var_130.Text = CStr(var_144)
  loc_150AAF1: var_144 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BarCodeFeatureInPurchase"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("BarCodeFeatureInPurchase"))))
  loc_150AB08: Set var_12C = Me.Txt
  loc_150AB0E: Call 0.Method_Proc_294_19_150ACE40 (CInt(6), var_130)
  loc_150AB16: var_130.Text = CStr(var_144)
  loc_150ABC0: var_144 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AutoFillItemInKitchenClosingYN"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("AutoFillItemInKitchenClosingYN"))))
  loc_150ABD7: Set var_12C = Me.Txt
  loc_150ABDD: Call 0.Method_Proc_294_19_150ACE40 (CInt(&HC), var_130)
  loc_150ABE5: var_130.Text = CStr(var_144)
  loc_150AC8F: var_144 = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ShowAllAcInPurcahseCategoryYN"))) = vbNullString), "No", Trim(CVar(Me.Recordset15.Fields.Item("ShowAllAcInPurcahseCategoryYN"))))
  loc_150ACA6: Set var_12C = Me.Txt
  loc_150ACAC: Call 0.Method_Proc_294_19_150ACE40 (CInt(&HE), var_130)
  loc_150ACB4: var_130.Text = CStr(var_144)
  loc_150ACDC: Call Proc_294_20_F6AC6C()
  loc_150ACE1: Exit Sub
End Sub

Public Sub Proc_294_20_F6AC6C
  'Data Table: 46EAD4
  loc_F6AB44: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F6AB56:   Me.DGHelp.Visible = False
  loc_F6AB5E: End If
  loc_F6AB79: If (Me.FrmList.Visible = &HFF) Then
  loc_F6AB88:   Me.FrmList.Visible = False
  loc_F6AB90: End If
  loc_F6ABAC: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F6ABBE:   Me.DGDepart.Visible = False
  loc_F6ABC6: End If
  loc_F6ABE2: If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_F6ABF4:   Me.DGGodown.Visible = False
  loc_F6ABFC: End If
  loc_F6AC18: If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_F6AC2A:   Me.DGTaxStru.Visible = False
  loc_F6AC32: End If
  loc_F6AC4E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6AC60:   Me.FGPoint.Visible = False
  loc_F6AC68: End If
  loc_F6AC68: Exit Sub
loc_F6AC69: End Sub
End Sub
