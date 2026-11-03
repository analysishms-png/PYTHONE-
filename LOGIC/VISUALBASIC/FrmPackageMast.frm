VERSION 5.00
Begin VB.Form FrmPackageMast
  Caption = "Package Defination Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = False
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 8595
  ClientHeight = 9705
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 17
    ForeColor = &HC00000&
    Left = 4530
    Top = 1590
    Width = 4380
    Height = 285
    TabIndex = 56
    BorderStyle = 0 'None
    MaxLength = 50
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 9960
    Top = 1275
    Width = 1920
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 20
    BeginProperty Font
      Name = "Tahoma"
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
    Width = 8595
    Height = 450
    TabIndex = 54
  End
  Begin TextBox TxtGrid
    Index = 1
    BackColor = &HFFC0C0&
    ForeColor = &HFF0000&
    Left = 1830
    Top = 7380
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 48
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    ForeColor = &HC00000&
    Left = 9960
    Top = 960
    Width = 1425
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 15
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGRoomCat
    Left = 12510
    Top = 9135
    Width = 3495
    Height = 1980
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
  Begin PictureBox Picture1
    Picture = "FrmPackageMast.frx":0
    ForeColor = &HC00000&
    Left = 13020
    Top = 4155
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 44
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture3
    Picture = "FrmPackageMast.frx":34E
    ForeColor = &HC00000&
    Left = 12615
    Top = 4140
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 43
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 14
    ForeColor = &HC00000&
    Left = 4530
    Top = 1275
    Width = 4380
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 11535
    Top = 1410
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 2415
      Height = 1800
      TabIndex = 41
    End
  End
  Begin TextBox Txt
    Index = 12
    Left = 11130
    Top = 6900
    Width = 1425
    Height = 285
    TabIndex = 38
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 13
    ForeColor = &HC00000&
    Left = 4530
    Top = 3480
    Width = 660
    Height = 285
    Text = "Yes"
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 4530
    Top = 3795
    Width = 1425
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 4530
    Top = 3165
    Width = 3870
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 4530
    Top = 2850
    Width = 660
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 8295
    Top = 1905
    Width = 615
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 6990
    Top = 1905
    Width = 660
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 4530
    Top = 2220
    Width = 660
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 4530
    Top = 1905
    Width = 1425
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 7740
    Top = 3795
    Width = 1170
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HC00000&
    Left = 4530
    Top = 4110
    Width = 660
    Height = 285
    Text = "Yes"
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
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
    Caption = "Percentage Basis"
    BackColor = &HC0FFFF&
    ForeColor = &HC00000&
    Left = 8925
    Top = 1890
    Width = 2025
    Height = 270
    Visible = 0   'False
    TabIndex = 24
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 4530
    Top = 2535
    Width = 1425
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGPoint
    Left = 16305
    Top = 5070
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 22
  End
  Begin DataGrid DGHelp
    Left = 13560
    Top = 7935
    Width = 3495
    Height = 1980
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 21
  End
  Begin DataGrid DGRev
    Left = 14670
    Top = 7680
    Width = 3855
    Height = 1200
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 20
  End
  Begin TextBox Txt
    Index = 1
    Left = 11130
    Top = 7215
    Width = 1425
    Height = 285
    TabIndex = 18
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 2040
    Top = 4500
    Width = 930
    Height = 240
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
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
    ForeColor = &HC00000&
    Left = 4530
    Top = 960
    Width = 4380
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 990
    Top = 4500
    Width = 12915
    Height = 2340
    TabIndex = 15
  End
  Begin MSHFlexGrid FGrid1
    Left = 975
    Top = 7140
    Width = 6975
    Height = 1560
    TabIndex = 47
  End
  Begin DataGrid DGTokenRev
    Left = 11400
    Top = 8850
    Width = 3855
    Height = 1575
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGTaxStru
    Left = 9555
    Top = 8175
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 58
  End
  Begin Label Label1
    Caption = "Room Tax Structure"
    Index = 21
    ForeColor = &HC00000&
    Left = 1260
    Top = 1605
    Width = 1905
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
  Begin Label Label1
    Caption = "MapCode"
    Index = 20
    ForeColor = &HC00000&
    Left = 9000
    Top = 1290
    Width = 900
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 53
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 14250
    Top = 4560
    Width = 2700
    Height = 255
    TabIndex = 52
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
    Left = 14310
    Top = 5700
    Width = 2970
    Height = 285
    TabIndex = 51
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
  Begin Label Label1
    Caption = "Token Information :"
    Index = 19
    ForeColor = &HC00000&
    Left = 1065
    Top = 6825
    Width = 1860
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
  Begin Label Label1
    Caption = "Tariff"
    Index = 18
    ForeColor = &HC00000&
    Left = 9360
    Top = 960
    Width = 495
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
  Begin Label Label1
    Caption = "Room Category"
    Index = 17
    ForeColor = &HC00000&
    Left = 1260
    Top = 1290
    Width = 1470
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
  Begin Label Label1
    Caption = "Net Room Rate"
    Index = 16
    ForeColor = &HC00000&
    Left = 9630
    Top = 6915
    Width = 1425
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
  Begin Label Label1
    Caption = "Yes/No"
    Index = 15
    ForeColor = &H80&
    Left = 5205
    Top = 2865
    Width = 645
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
  Begin Label Label1
    Caption = "Room Tax Inc in Package Amount"
    Index = 14
    ForeColor = &HC00000&
    Left = 1260
    Top = 3495
    Width = 3240
    Height = 285
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
  Begin Label Label1
    Caption = "Yes/No"
    Index = 13
    ForeColor = &H80&
    Left = 5190
    Top = 3495
    Width = 645
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
  Begin Label Label1
    Caption = "Room Rate"
    Index = 12
    ForeColor = &HC00000&
    Left = 1260
    Top = 3810
    Width = 1050
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
  Begin Label Label1
    Caption = "Discount Applicable On"
    Index = 11
    ForeColor = &HC00000&
    Left = 1260
    Top = 3180
    Width = 2220
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
  Begin Label Label1
    Caption = "Discount Applicable"
    Index = 10
    ForeColor = &HC00000&
    Left = 1260
    Top = 2880
    Width = 1890
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
  Begin Label Label1
    Caption = "Child"
    Index = 9
    ForeColor = &HC00000&
    Left = 7725
    Top = 1920
    Width = 495
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
  Begin Label Label1
    Caption = "Adult"
    Index = 8
    ForeColor = &HC00000&
    Left = 6435
    Top = 1920
    Width = 495
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
  Begin Label Label1
    Caption = "No of Nights"
    Index = 7
    ForeColor = &HC00000&
    Left = 1260
    Top = 2235
    Width = 1140
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
  Begin Label Label1
    Caption = "PackageAmt"
    Index = 6
    ForeColor = &HC00000&
    Left = 1260
    Top = 1920
    Width = 1200
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
  Begin Label Label1
    Caption = "Room Percent"
    Index = 5
    ForeColor = &HC00000&
    Left = 6345
    Top = 3810
    Width = 1350
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
  Begin Label Label1
    Caption = "Yes/No"
    Index = 4
    ForeColor = &H80&
    Left = 5190
    Top = 4125
    Width = 645
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
  Begin Label Label1
    Caption = "Active"
    Index = 3
    ForeColor = &HC00000&
    Left = 1260
    Top = 4140
    Width = 585
    Height = 240
    TabIndex = 25
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
  Begin Label Label1
    Caption = "Applicable Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1260
    Top = 2550
    Width = 1515
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
  Begin Label Label1
    Caption = "Total"
    Index = 0
    ForeColor = &HC00000&
    Left = 9645
    Top = 7230
    Width = 480
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
  Begin Label Label1
    Caption = "Package Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1260
    Top = 975
    Width = 1440
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

Attribute VB_Name = "FrmPackageMast"

Private global_92 As Integer
Private global_94 As Integer

Private Sub DGTokenRev_UnknownEvent_9 'F51328
  'Data Table: 506778
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F51223: If (Me.RecordCount > 0) Then
  loc_F51249:   If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_F51269:     var_B4 = Me.Fields.Item("Name")
  loc_F51286:     Set var_B8 = Me.TxtGrid
  loc_F5128C:     Call 0.Method_DGTokenRev_UnknownEvent_90 (1, var_BC)
  loc_F51294:     var_BC.Text = CStr(var_B4.Value)
  loc_F512AA:   End If
  loc_F512AA: End If
  loc_F512B7: Call Proc_150_68_19529BC(1, 0)
  loc_F512C8: Set var_8C = Me.TxtGrid
  loc_F512CE: Call 0.Method_DGTokenRev_UnknownEvent_90 (1, var_B4, var_C2)
  loc_F512D6: var_C6 = var_B4.Visible
  loc_F512E8: If (var_C2 = &HFF) Then
  loc_F512F4:   Set var_8C = Me.TxtGrid
  loc_F512FA:   Call 0.Method_DGTokenRev_UnknownEvent_90 (1, var_B4)
  loc_F51302:   var_B4.SetFocus
  loc_F5130E: End If
  loc_F5131D: Me.DGTokenRev.Visible = False
  loc_F51325: Exit Sub
End Sub

Private Sub DGTokenRev_UnknownEvent_1F 'E58D14
  'Data Table: 506778
  loc_E58CE7: Set var_90 = Me.FGPoint
  loc_E58D03: Proc_6_138_106D6F8(Me.DGTokenRev, global_64)
  loc_E58D11: Exit Sub
End Sub

Private Sub DGRoomCat_UnknownEvent_9 'F45964
  'Data Table: 506778
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4585B: Me.DGRoomCat.Visible = False
  loc_F4587A: If (Me.RecordCount > 0) Then
  loc_F458B9:   Set var_B4 = Me.Txt
  loc_F458BF:   Call 0.Method_DGRoomCat_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F458C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F458FA:   var_B0 = Me.Fields.Item("Name")
  loc_F45919:   Set var_B4 = Me.Txt
  loc_F4591F:   Call 0.Method_DGRoomCat_UnknownEvent_90 (CInt(&HE), var_B8)
  loc_F45927:   var_B8.Text = CStr(var_B0.Value)
  loc_F4593D: End If
  loc_F45948: Set var_A8 = Me.Txt
  loc_F4594E: Call 0.Method_DGRoomCat_UnknownEvent_90 (CInt(&HE))
  loc_F45956: var_B0.SetFocus
  loc_F45962: Exit Sub
End Sub

Private Sub Form_Load() '13229EC
  'Data Table: 506778
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_AC As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  Dim var_194 As String
  Dim var_D0 As Variant
  Dim unk_5067A0 As Connection15
  loc_1322270: On Error Goto loc_13229E5
  loc_132227D: Set var_A8 = Me.TopCtrl1
  loc_1322283: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1322292: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13222AA: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13222C5: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13222DC: Me.LblUser.Left = CDbl(13500)
  loc_13222F3: Me.LblUser.Top = CDbl(7800)
  loc_132230A: Me.LblLDt.Top = CDbl(8160)
  loc_132231B: Set var_A8 = Me.LblLDt
  loc_1322321: var_A8.Left = CDbl(13500)
  loc_1322332: Call 0.Method_arg_160 (var_A8)
  loc_1322340: Call 0.Method_arg_164 (var_A8)
  loc_1322356: Set var_A8 = Me.PictShortCuts
  loc_132235C: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_132237B: Me.DGHelp.Left = CVar(MDIForm1.PictShortCuts.Left)
  loc_1322397: Set var_B4 = Me.Txt
  loc_132239D: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_13223B8: Set var_A8 = Me.Txt
  loc_13223BE: Call 0.Method_Form_Load0 (CInt(0), var_AC)
  loc_13223D6: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_13223E5: Me.DGHelp.Top = CVar(MDIForm1.PictShortCuts.Left)
  loc_1322405: Set var_A8 = Me.Txt
  loc_132240B: Call 0.Method_Form_Load0 (CInt(&HE), var_AC)
  loc_132242A: Me.DGRoomCat.Left = CVar(var_AC.Left)
  loc_1322446: Set var_B4 = Me.Txt
  loc_132244C: Call 0.Method_Form_Load0 (CInt(&HE), var_B8)
  loc_1322467: Set var_A8 = Me.Txt
  loc_132246D: Call 0.Method_Form_Load0 (CInt(&HE), var_AC)
  loc_1322485: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1322494: Me.DGRoomCat.Top = CVar(var_AC.Left)
  loc_13224B4: Set var_A8 = Me.Txt
  loc_13224BA: Call 0.Method_Form_Load0 (CInt(&H11), var_AC)
  loc_13224D9: Me.DGTaxStru.Left = CVar(var_AC.Left)
  loc_13224F5: Set var_B4 = Me.Txt
  loc_13224FB: Call 0.Method_Form_Load0 (CInt(&H11), var_B8)
  loc_1322516: Set var_A8 = Me.Txt
  loc_132251C: Call 0.Method_Form_Load0 (CInt(&H11), var_AC)
  loc_1322534: var_94 = CVar(((var_AC.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_1322543: Me.DGTaxStru.Top = CVar(var_AC.Left)
  loc_1322568: Me.DGRev.Left = CVar(CDbl(3720))
  loc_132257D: Set var_A8 = Me.DGRev
  loc_1322583: var_A8.Top = CVar(CDbl(1185))
  loc_132258B: Call Proc_150_65_13915B4()
  loc_1322590: Call Proc_150_66_102C050()
  loc_132259F: Set global_72 = New 
  loc_13225B1: Me.var_A8.CursorLocation = 3
  loc_132260B: var_140 = "Select *,Code as SearchCode From PlanMast where Plan_Package = '" & IIf((global_56 = "Plan"), "Plan", "Package") & "' AND (LOGSITE_CODE='" 
  loc_1322629: Me.Open var_140 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') Order by Name", CVar(MemVar_1F92044), 3
  loc_132264B: Set global_64 = New 
  loc_132265D: Me.Recordset15.CursorLocation = 3
  loc_1322680: var_194 = "Select Code,Name,Sname,Revcode,TaxInc,Taxstru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild From FixedCharge WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_1322691: Me.Open CVar(var_194 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F92044), 3
  loc_13226A5: CVarUnk
  loc_13226AA: VerifyVarObj
  loc_13226B0: Set var_A8 = Me.DGRev
  loc_13226B6: LateIdStAd
  loc_13226CE: Set global_68 = New 
  loc_13226E0: Me.DGRev.CursorLocation = 3
  loc_1322703: var_194 = "Select Code,Name,Sname,Revcode,TaxInc,Taxstru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild From FixedCharge WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_1322714: Me.Open CVar(var_194 & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F92044), 3
  loc_1322728: CVarUnk
  loc_132272D: VerifyVarObj
  loc_1322733: Set var_A8 = Me.DGTokenRev
  loc_1322739: LateIdStAd
  loc_1322763: Me.DGTokenRev.CursorLocation = 3
  loc_132278D: var_D0 = CVar("Select Code,Name From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_13227AB: CVarUnk
  loc_13227B0: VerifyVarObj
  loc_13227BC: LateIdStAd
  loc_13227E5: Set global_80 = New 
  loc_13227F7: Me.DGRoomCat.CursorLocation = 3
  loc_1322820: unk_5067A0.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_D0, -1
  loc_132284F: CVarUnk
  loc_1322854: VerifyVarObj
  loc_132285A: Set var_A8 = Me.DGTaxStru
  loc_1322860: LateIdStAd
  loc_1322879: Me.CursorLocation = 3
  loc_13228D3: var_140 = "Select Code,Name From PlanMast where Plan_Package='" & IIf((global_56 = "Plan"), "Plan", "Package") & " ' AND (LOGSITE_CODE='" 
  loc_13228F1: r_D0, CVar(MemVar_1F92044), 3 var_140 & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') Order by Name", CVar(MemVar_1F92044), 3
  loc_1322912: CVarUnk
  loc_1322917: VerifyVarObj
  loc_132291D: Set var_A8 = Me.DGHelp
  loc_1322923: LateIdStAd
  loc_132293C: If (global_56 = "Plan") Then
  loc_132294B:   Set var_A8 = Me.Label1
  loc_1322951:   Call 0.Method_Form_Load0 (1, var_AC, "Plan Name", var_A8, New, 1, -1)
  loc_1322959:   var_AC.Caption = var_A8
  loc_1322971:   Set var_A8 = Me.Label1
  loc_1322977:   Call 0.Method_Form_Load0 (6, var_AC, "Plan Amount", Me.DGRoomCat, var_A8)
  loc_132297F:   var_AC.Caption = var_A8
  loc_1322997:   Set var_A8 = Me.Label1
  loc_132299D:   Call 0.Method_Form_Load0 (&HE, var_AC, "Room Tax Inc in Plan Amount")
  loc_13229A5:   var_AC.Caption = New
  loc_13229B1: End If
  loc_13229D4: Call Proc_150_63_EB2180(Proc_5_1_100CB50("INI", Me, global_72), 1)
  loc_13229DF: Call Proc_150_67_16C5688(-1)
  loc_13229E4: Exit Sub
  loc_13229E5: ' Referenced from: 1322270
  loc_13229E5: Proc_6_60_E62BC4()
  loc_13229EA: Exit Sub
End Sub

Private Sub Form_Resize() 'ED80C8
  'Data Table: 506778
  Dim var_8C As Label
  loc_ED8026: Call 0.Method_arg_50 (var_88)
  loc_ED8038: Me.LblFormCaption.Caption = var_88
  loc_ED8051: Me.LblFormCaption.Left = CDbl(0)
  loc_ED805D: Set var_A0 = Me.TopCtrl1
  loc_ED8063: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED8070: Set var_8C = Me.TopCtrl1
  loc_ED8076: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED8090: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED80AB: Call 0.Method_arg_100 (var_B8)
  loc_ED80BD: Me.LblFormCaption.Width = var_B8
  loc_ED80C5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E679A4
  'Data Table: 506778
  Dim MeFF As Double
  loc_E6795B: Set global_72 = Nothing
  loc_E6796D: Set global_60 = Nothing
  loc_E6797F: Set global_64 = Nothing
  loc_E67991: Set global_68 = Nothing
  loc_E679A0: Exit Sub
  loc_E679A1: MeFF = 0
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5A994
  'Data Table: 506778
  loc_E5A95C: Set var_88 = Me.TopCtrl1
  loc_E5A962: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5A985: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5A98D:   Call Form_Unload(&HFF)
  loc_E5A992: End If
  loc_E5A992: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2F118
  'Data Table: 506778
  loc_E2F0EC: On Error Goto loc_E2F110
  loc_E2F107: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2F10F: Exit Sub
  loc_E2F110: ' Referenced from: E2F0EC
  loc_E2F110: Proc_6_60_E62BC4(Shift)
  loc_E2F115: Exit Sub
  loc_E2F116: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F43864
  'Data Table: 506778
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4375B: Me.DGHelp.Visible = False
  loc_F4377A: If (Me.RecordCount > 0) Then
  loc_F437B9:   Set var_B4 = Me.Txt
  loc_F437BF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F437C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F437FA:   var_B0 = Me.Fields.Item("Name")
  loc_F43819:   Set var_B4 = Me.Txt
  loc_F4381F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F43827:   var_B8.Text = CStr(var_B0.Value)
  loc_F4383D: End If
  loc_F43848: Set var_A8 = Me.Txt
  loc_F4384E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F43856: var_B0.SetFocus
  loc_F43862: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E58EE4
  'Data Table: 506778
  loc_E58EB7: Set var_90 = Me.FGPoint
  loc_E58ED3: Proc_6_138_106D6F8(Me.DGHelp, global_60)
  loc_E58EE1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA743C
  'Data Table: 506778
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA73D7: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_104)) Then
  loc_EA73ED:   Me.FGrid.Col = 1
  loc_EA73F5: End If
  loc_EA7408: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA741B: Set var_88 = Me.TxtGrid
  loc_EA7421: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA7429: var_BC.Visible = False
  loc_EA7435: Call Proc_150_61_F1FA44()
  loc_EA743A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EBE0
  'Data Table: 506778
  loc_E1EBD7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EBDF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6C39C
  'Data Table: 506778
  Dim var_8C As TextBox
  loc_E6C357: Set var_88 = Me.TxtGrid
  loc_E6C35D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E6C365: var_8C.Visible = False
  loc_E6C375: Set var_88 = Me.TopCtrl1
  loc_E6C37B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E6C394: If (CStr() = "Browse") Then
  loc_E6C397:   Exit Sub
  loc_E6C398: End If
  loc_E6C398: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '12E02B0
  'Data Table: 506778
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_12DFBE8: On Error Goto loc_12E02A8
  loc_12DFBEF: Set var_88 = Me.TopCtrl1
  loc_12DFBF5: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12DFC0E: If (CStr() = "Browse") Then
  loc_12DFC11:   Exit Sub
  loc_12DFC12: End If
  loc_12DFC86: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_12DFC9C:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12DFCAC:   var_9C = "+{Tab}"
  loc_12DFCB2:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_12DFCBC:   KeyCode = 0
  loc_12DFCC2: Else
  loc_12DFCCC:   var_B0 = Me.FGrid.Rows
  loc_12DFD19:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_12DFD2F:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12DFD3C:     Call Proc_150_64_ED62C0(0, var_B0, KeyCode)
  loc_12DFD41:   End If
  loc_12DFD41: End If
  loc_12DFD47: global_92 = KeyCode
  loc_12DFD6D: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12DFD91: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_12DFDA7:   var_EC = CLng(Me.FGrid.Col)
  loc_12DFDB7:   If (var_EC = CLng(1)) Then
  loc_12DFDCD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DFDD5:     var_FC = CVar(CLng(1)) 'Long
  loc_12DFDDA:     var_11C = vbNullString
  loc_12DFDE4:     Set var_A0 = Me.FGrid
  loc_12DFDEA:     LateIdCallSt
  loc_12DFE0F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DFE17:     var_FC = CVar(CLng(2)) 'Long
  loc_12DFE1C:     var_11C = vbNullString
  loc_12DFE26:     Set var_A0 = Me.FGrid
  loc_12DFE2C:     LateIdCallSt
  loc_12DFE51:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DFE59:     var_FC = CVar(CLng(3)) 'Long
  loc_12DFE5E:     var_11C = vbNullString
  loc_12DFE68:     Set var_A0 = Me.FGrid
  loc_12DFE6E:     LateIdCallSt
  loc_12DFE93:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DFE9B:     var_FC = CVar(CLng(7)) 'Long
  loc_12DFEA0:     var_11C = vbNullString
  loc_12DFEAA:     Set var_A0 = Me.FGrid
  loc_12DFEB0:     LateIdCallSt
  loc_12DFED5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DFEDD:     var_FC = CVar(CLng(8)) 'Long
  loc_12DFEE2:     var_11C = vbNullString
  loc_12DFEEC:     Set var_A0 = Me.FGrid
  loc_12DFEF2:     LateIdCallSt
  loc_12DFF17:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DFF1F:     var_FC = CVar(CLng(9)) 'Long
  loc_12DFF24:     var_11C = vbNullString
  loc_12DFF2E:     Set var_A0 = Me.FGrid
  loc_12DFF34:     LateIdCallSt
  loc_12DFF59:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DFF61:     var_FC = CVar(CLng(&HA)) 'Long
  loc_12DFF66:     var_11C = vbNullString
  loc_12DFF70:     Set var_A0 = Me.FGrid
  loc_12DFF76:     LateIdCallSt
  loc_12DFF9B:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DFFA3:     var_FC = CVar(CLng(&HF)) 'Long
  loc_12DFFA8:     var_11C = vbNullString
  loc_12DFFB2:     Set var_A0 = Me.FGrid
  loc_12DFFB8:     LateIdCallSt
  loc_12DFFDD:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12DFFE5:     var_FC = CVar(CLng(4)) 'Long
  loc_12DFFEA:     var_11C = vbNullString
  loc_12DFFF4:     Set var_A0 = Me.FGrid
  loc_12DFFFA:     LateIdCallSt
  loc_12E001F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E0027:     var_FC = CVar(CLng(&HC)) 'Long
  loc_12E002C:     var_11C = vbNullString
  loc_12E0036:     Set var_A0 = Me.FGrid
  loc_12E003C:     LateIdCallSt
  loc_12E0061:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E0069:     var_FC = CVar(CLng(&HD)) 'Long
  loc_12E006E:     var_11C = vbNullString
  loc_12E0078:     Set var_A0 = Me.FGrid
  loc_12E007E:     LateIdCallSt
  loc_12E00A3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E00AB:     var_FC = CVar(CLng(&HE)) 'Long
  loc_12E00B0:     var_11C = vbNullString
  loc_12E00BA:     Set var_A0 = Me.FGrid
  loc_12E00C0:     LateIdCallSt
  loc_12E00E5:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E00ED:     var_FC = CVar(CLng(5)) 'Long
  loc_12E00F2:     var_11C = vbNullString
  loc_12E00FC:     Set var_A0 = Me.FGrid
  loc_12E0102:     LateIdCallSt
  loc_12E0127:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E012F:     var_FC = CVar(CLng(6)) 'Long
  loc_12E0134:     var_11C = vbNullString
  loc_12E013E:     Set var_A0 = Me.FGrid
  loc_12E0144:     LateIdCallSt
  loc_12E0169:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E0171:     var_FC = CVar(CLng(&H12)) 'Long
  loc_12E0176:     var_11C = vbNullString
  loc_12E0180:     Set var_A0 = Me.FGrid
  loc_12E0186:     LateIdCallSt
  loc_12E019B:   Else
  loc_12E01A2:     If (var_EC = CLng(7)) Then
  loc_12E01AF:       var_98 = Me.FGrid.Row
  loc_12E01C1:       Set var_A0 = Me.FGrid
  loc_12E01E5:       LateIdCallSt
  loc_12E0200:       Call Proc_150_70_101D074(var_98, Me.FGrid, "0.00", CVar(CLng(var_A0.Col)), CVar(CLng(var_98)), var_A0, "0.00", CVar(CLng(var_A0.Col)))
  loc_12E020B:     Else
  loc_12E0212:       If Not (var_EC = CLng(5)) Then
  loc_12E021C:         If (var_EC = CLng(6)) Then
  loc_12E021F:         End If
  loc_12E0222:       Else
  loc_12E0229:         If (var_EC = CLng(&H10)) Then
  loc_12E022C:           GoTo loc_12E0291
  loc_12E022F:         End If
  loc_12E0236:         If (var_EC = CLng(&HB)) Then
  loc_12E024C:           var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12E0264:           var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12E0269:           var_11C = "0"
  loc_12E0273:           Set var_B4 = Me.FGrid
  loc_12E0279:           LateIdCallSt
  loc_12E0291:           ' Referenced from:       12E022C
  loc_12E0291:         End If
  loc_12E0291:       End If
  loc_12E0291:     End If
  loc_12E0291:   End If
  loc_12E0291: End If
  loc_12E0297: If (KeyCode = &HD) Then
  loc_12E029F:   global_94 = 0
  loc_12E02A2: End If
  loc_12E02A4: KeyCode = 0
  loc_12E02A7: Exit Sub
  loc_12E02A8: ' Referenced from: 12DFBE8
  loc_12E02A8: Proc_6_60_E62BC4(KeyCode, global_94, var_B4, var_11C, var_FC, var_D4, var_D4)
  loc_12E02AD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F0B788
  'Data Table: 506778
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F0B6A8: On Error Goto loc_F0B77F
  loc_F0B6AF: Set var_88 = Me.TopCtrl1
  loc_F0B6B5: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F0B6CE: If (CStr() = "Browse") Then
  loc_F0B6D1:   Exit Sub
  loc_F0B6D2: End If
  loc_F0B6E5: var_A0 = CLng(Me.FGrid.Col)
  loc_F0B6F5: If Not (var_A0 = CLng(1)) Then
  loc_F0B6FF:   If Not (var_A0 = CLng(7)) Then
  loc_F0B709:     If Not (var_A0 = CLng(&HF)) Then
  loc_F0B713:       If Not (var_A0 = CLng(&H12)) Then
  loc_F0B71D:         If (var_A0 = CLng(&H13)) Then
  loc_F0B720:         End If
  loc_F0B720:       End If
  loc_F0B720:     End If
  loc_F0B720:   End If
  loc_F0B738:   var_9C = 0
  loc_F0B761:   Proc_6_61_1077428(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F0B776: End If
  loc_F0B77B: global_94 = 0
  loc_F0B77E: Exit Sub
  loc_F0B77F: ' Referenced from: F0B6A8
  loc_F0B77F: Proc_6_60_E62BC4(global_94, var_9C)
  loc_F0B784: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '109AE84
  'Data Table: 506778
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_109ABCC: On Error Goto loc_109AE7B
  loc_109ABD3: Set var_88 = Me.TopCtrl1
  loc_109ABD9: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_109ABF2: If (CStr() = "Browse") Then
  loc_109ABF5:   Exit Sub
  loc_109ABF6: End If
  loc_109AC09: var_A0 = CLng(Me.FGrid.Col)
  loc_109AC19: If (var_A0 = CLng(1)) Then
  loc_109AC5A:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_109AC6F: Else
  loc_109AC76:   If (var_A0 = CLng(7)) Then
  loc_109ACB7:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode)
  loc_109ACCC:   Else
  loc_109ACD3:     If (var_A0 = CLng(5)) Then
  loc_109AD14:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode)
  loc_109AD29:     Else
  loc_109AD30:       If Not (var_A0 = CLng(6)) Then
  loc_109AD3A:         If (var_A0 = CLng(7)) Then
  loc_109AD3D:         End If
  loc_109AD7B:         Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode, 0)
  loc_109AD90:       Else
  loc_109AD97:         If Not (var_A0 = CLng(&H10)) Then
  loc_109ADA1:           If Not (var_A0 = CLng(&H12)) Then
  loc_109ADAB:             If Not (var_A0 = CLng(8)) Then
  loc_109ADB5:               If (var_A0 = CLng(&HF)) Then
  loc_109ADB8:               End If
  loc_109ADB8:             End If
  loc_109ADB8:           End If
  loc_109ADF6:           Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, KeyCode, 0)
  loc_109AE0B:         Else
  loc_109AE12:           If (var_A0 = CLng(&HB)) Then
  loc_109AE53:             Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, 0, KeyCode, 0)
  loc_109AE65:           End If
  loc_109AE65:         End If
  loc_109AE65:       End If
  loc_109AE65:     End If
  loc_109AE65:   End If
  loc_109AE65: End If
  loc_109AE6F: If (CLng(KeyCode) <> &HD) Then
  loc_109AE77:   global_94 = &HFF
  loc_109AE7A: End If
  loc_109AE7A: Exit Sub
  loc_109AE7B: ' Referenced from: 109ABCC
  loc_109AE7B: Proc_6_60_E62BC4(global_94, 0, 0, 0)
  loc_109AE80: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FEB9F8
  'Data Table: 506778
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FEB818: On Error Goto loc_FEB9F0
  loc_FEB81F: Set var_8C = Me.TopCtrl1
  loc_FEB825: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FEB83E: If (CStr() = "Browse") Then
  loc_FEB841:   Exit Sub
  loc_FEB842: End If
  loc_FEB85F: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FEB862:   Exit Sub
  loc_FEB863: End If
  loc_FEB874: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FEB896:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FEB8D0:     If (MsgBox("Delete for Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FEB8F2:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FEB908:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FEB911:         Set var_114 = Me.FGrid
  loc_FEB92C:       Else
  loc_FEB93F:         Me.FGrid.Rows = 1
  loc_FEB95C:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FEB964:         Set var_114 = Me.FGrid
  loc_FEB993:         Me.FGrid.FixedRows = 1
  loc_FEB99B:       End If
  loc_FEB99B:     End If
  loc_FEB99E:   Else
  loc_FEB9A9:     var_D0 = "Delete Module"
  loc_FEB9B9:     var_9C = "No Entries To Delete"
  loc_FEB9BF:     MsgBox(var_9C, &H10, var_D0, var_F0, var_110)
  loc_FEB9CF:   End If
  loc_FEB9D2:   Call Proc_150_70_101D074(var_9C, FGrid.DispID_10000, var_D0)
  loc_FEB9DE:   Set var_8C = Me.FGrid
  loc_FEB9EF: End If
  loc_FEB9EF: Exit Sub
  loc_FEB9F0: ' Referenced from: FEB818
  loc_FEB9F0: Proc_6_60_E62BC4(FGrid.DispID_8001, FGrid.DispID_10000)
  loc_FEB9F5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EB90
  'Data Table: 506778
  loc_E1EB87: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EB8F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3F8D8
  'Data Table: 506778
  Dim var_8C As TextBox
  loc_E3F8B7: Set var_88 = Me.TxtGrid
  loc_E3F8BD: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E3F8C5: var_8C.Visible = False
  loc_E3F8D1: Call Proc_150_61_F1FA44()
  loc_E3F8D6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA8B4C
  'Data Table: 506778
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EA8AC0: On Error Goto loc_EA8B46
  loc_EA8AD0: Me.LblUser.Caption = vbNullString
  loc_EA8AE5: Me.LblLDt.Caption = vbNullString
  loc_EA8B10: Call Proc_150_63_EB2180(Proc_5_1_100CB50("ADD", Me))
  loc_EA8B1B: Call Proc_150_62_FD7EC4(global_72)
  loc_EA8B2B: Set var_88 = Me.Txt
  loc_EA8B31: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA8B39: var_94.SetFocus
  loc_EA8B45: Exit Sub
  loc_EA8B46: ' Referenced from: EA8AC0
  loc_EA8B46: Proc_6_60_E62BC4(var_94)
  loc_EA8B4B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC0ECC
  'Data Table: 506778
  loc_EC0E34: On Error Goto loc_EC0EC4
  loc_EC0E6E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC0E71:   Call Proc_150_61_F1FA44()
  loc_EC0E82:   Set var_10C = Me
  loc_EC0E99:   Call Proc_150_63_EB2180(Proc_5_1_100CB50("INI", var_10C))
  loc_EC0EA4:   Call Proc_150_67_16C5688(global_72)
  loc_EC0EAC: Else
  loc_EC0EB2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC0EBA:   Call var_10C.SetFocus
  loc_EC0EC3: End If
  loc_EC0EC3: Exit Sub
  loc_EC0EC4: ' Referenced from: EC0E34
  loc_EC0EC4: Proc_6_60_E62BC4()
  loc_EC0EC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11C6694
  'Data Table: 506778
  Dim var_98 As Integer
  Dim unk_5067A0 As Connection15
  Dim Me As Recordset15
  Dim var_128 As Fields15
  Dim var_100 As Variant
  Dim var_130 As String
  loc_11C6268: On Error Goto loc_11C663D
  loc_11C6279: If (Proc_183_56_FE8818(global_72) = &HFF) Then
  loc_11C627C:   Exit Sub
  loc_11C627D: End If
  loc_11C62B4: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_100, var_120) = 6) Then
  loc_11C62B9:   var_98 = &HFF
  loc_11C62C5:   unk_5067A0.BeginTrans var_124
  loc_11C62DB:   var_94 = Me.Bookmark 'Variant
  loc_11C6335:   unk_5067A0.Execute CStr("Delete From PlanMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_11C6380:   var_16C = 0
  loc_11C6393:   var_164 = 0
  loc_11C639E:   var_160 = 0
  loc_11C63B1:   var_158 = 0
  loc_11C63BC:   var_154 = 0
  loc_11C63CF:   var_14C = 0
  loc_11C6418:   Proc_154_5_10E33A4(MemVar_1F92044, "PlanMast", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C6488:   var_100 = "Delete from Plan1 where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11C6496:   unk_5067A0.Execute CStr(var_100), var_120, -1
  loc_11C64E1:   var_16C = 0
  loc_11C64F4:   var_164 = 0
  loc_11C64FF:   var_160 = 0
  loc_11C6512:   var_158 = 0
  loc_11C651D:   var_154 = 0
  loc_11C6530:   var_14C = 0
  loc_11C6570:   var_130 = "Plan1"
  loc_11C6579:   Proc_154_5_10E33A4(MemVar_1F92044, var_130, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C65A7:   unk_5067A0.CommitTrans
  loc_11C65AE:   var_98 = 0
  loc_11C65BC:   Me.Requery -1
  loc_11C65DC:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11C65E9:     Me.Bookmark = var_94
  loc_11C65F1:   Else
  loc_11C6605:     If (Me.EOF = 0) Then
  loc_11C660E:       Me.MoveLast
  loc_11C6613:     End If
  loc_11C6613:   End If
  loc_11C6613:   Call Proc_150_67_16C5688(var_98, var_14C, 0, var_154, var_158)
  loc_11C6634:   Proc_5_0_110649C(&HFF, Me, global_72, 0)
  loc_11C663C: End If
  loc_11C663C: Exit Sub
  loc_11C663D: ' Referenced from: 11C6268
  loc_11C6643: If (var_98 = &HFF) Then
  loc_11C664C:   unk_5067A0.RollbackTrans
  loc_11C6651: End If
  loc_11C6659: Set var_128 = Err()
  loc_11C665F: Call 0.Method_arg_2C (var_130, 0, var_160)
  loc_11C6680: MsgBox(CVar(var_130), &H10, " Deletion Message", var_100, var_120)
  loc_11C6693: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F98414
  'Data Table: 506778
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F982A4: On Error Goto loc_F9840C
  loc_F982B4: Me.LblUser.Caption = vbNullString
  loc_F982C9: Me.LblLDt.Caption = vbNullString
  loc_F982DF: If (Proc_183_55_FE7900(global_72) = &HFF) Then
  loc_F982E2:   Exit Sub
  loc_F982E3: End If
  loc_F98306: Call Proc_150_63_EB2180(Proc_5_1_100CB50("EDIT", Me))
  loc_F9831F: Set var_88 = Me.Txt
  loc_F98325: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F98338: global_84 = var_94.Text
  loc_F98354: Set var_88 = Me.Txt
  loc_F9835A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F9836D: global_88 = var_94.Text
  loc_F98393: Call Proc_150_69_F2A5B0(Me.FGrid, 0)
  loc_F983A5: Set var_94 = Me.FGrid
  loc_F983CC: Set var_88 = Me.Txt
  loc_F983D2: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94, 0, FGrid.DispID_10000)
  loc_F983DA: var_94.Enabled = CVar(CStr(var_96))
  loc_F983F1: Set var_88 = Me.Txt
  loc_F983F7: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F983FF: var_94.SetFocus
  loc_F9840B: Exit Sub
  loc_F9840C: ' Referenced from: F982A4
  loc_F9840C: Proc_6_60_E62BC4(var_96)
  loc_F98411: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16130
  'Data Table: 506778
  loc_E16125: Me.Global.Unload Me
  loc_E1612D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEBA54
  'Data Table: 506778
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEB990: On Error Goto loc_EEBA4E
  loc_EEB9AA: If (Me.RecordCount <= 0) Then
  loc_EEB9B3:   var_B8 = "Information"
  loc_EEB9CE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEB9DE:   Exit Sub
  loc_EEB9DF: End If
  loc_EEB9EA: If (global_56 = "Plan") Then
  loc_EEB9F4:   var_10C = "Select P.Code As SearchCode,P.Name,R.Name Category,P.Adults,P.RRIncTax TaxInc,P.PackageAmount Amount,P.Tariff from PlanMast P Left Join RoomCat R On R.Code=P.RoomCat where P.Plan_Package in ('Plan') AND (P.LOGSITE_CODE='" & MemVar_1F92078
  loc_EEB9FB:   MemVar_1F920E4 = var_10C & "' or P.LOGSITE_CODE='HO') Order By P.Name"
  loc_EEBA05: Else
  loc_EEBA0C:   var_10C = "Select P.Code As SearchCode,P.Name,R.Name Category,P.Adults,P.RRIncTax TaxInc,P.PackageAmount Amount,P.Tariff from PlanMast P Left Join RoomCat R On R.Code=P.RoomCat where P.Plan_Package in ('Package') AND (P.LOGSITE_CODE='" & MemVar_1F92078
  loc_EEBA13:   MemVar_1F920E4 = var_10C & "' or P.LOGSITE_CODE='HO') Order By P.Name"
  loc_EEBA1A: End If
  loc_EEBA23: Proc_6_126_F1BCC0("3000,2000,1000,1000,1500,1000", MemVar_1F920E4)
  loc_EEBA31: MemVar_1F92120 = Me
  loc_EEBA48: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEBA4D: Exit Sub
  loc_EEBA4E: ' Referenced from: EEB990
  loc_EEBA4E: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EEBA53: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2ECF8
  'Data Table: 506778
  loc_E2ECE8: Proc_5_0_110649C(&HFF, Me)
  loc_E2ECF0: Call Proc_150_67_16C5688(global_72)
  loc_E2ECF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2EC98
  'Data Table: 506778
  loc_E2EC88: Proc_5_0_110649C(&HFF, Me)
  loc_E2EC90: Call Proc_150_67_16C5688(global_72)
  loc_E2EC95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2EC38
  'Data Table: 506778
  loc_E2EC28: Proc_5_0_110649C(&HFF, Me)
  loc_E2EC30: Call Proc_150_67_16C5688(global_72)
  loc_E2EC35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2EBD8
  'Data Table: 506778
  Dim arg_FF As Double
  loc_E2EBC8: Proc_5_0_110649C(&HFF, Me)
  loc_E2EBD0: Call Proc_150_67_16C5688(global_72)
  loc_E2EBD5: Exit Sub
  loc_E2EBD6: arg_FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E58158
  'Data Table: 506778
  Dim Me As Recordset15
  loc_E5811F: Me.Requery -1
  loc_E5812F: Me.Requery -1
  loc_E5813F: Me.Requery -1
  loc_E5814F: Me.Requery -1
  loc_E58154: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '174A638
  'Data Table: 506778
  Dim var_8A As Integer
  Dim var_B8 As Variant
  Dim var_C4 As Variant
  Dim var_9C As Variant
  Dim var_D4 As Variant
  Dim unk_5067A0 As Connection15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_BC As Variant
  Dim var_98 As Variant
  Dim var_A0 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1D8 As Variant
  Dim var_104 As Variant
  Dim var_260 As Variant
  Dim var_310 As Variant
  Dim var_3CC As Variant
  Dim var_424 As Variant
  Dim var_47C As Variant
  Dim var_4D4 As Variant
  Dim var_67C As TextBox
  Dim var_6D8 As TextBox
  Dim var_734 As Variant
  Dim var_158 As String
  Dim var_170 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_228 As Variant
  Dim var_2E8 As Variant
  Dim var_2F8 As Variant
  Dim var_334 As Variant
  Dim var_344 As Variant
  Dim var_354 As Variant
  Dim var_384 As Variant
  Dim var_3FC As Variant
  Dim var_464 As Variant
  Dim var_49C As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_54C As Variant
  Dim var_55C As Variant
  Dim var_60C As Variant
  Dim var_61C As Variant
  Dim var_654 As Variant
  Dim var_6C0 As Variant
  Dim var_6FC As Variant
  Dim var_754 As Variant
  Dim var_764 As Variant
  Dim var_7DC As Variant
  Dim Me As Recordset15
  Dim var_174 As Variant
  Dim var_274 As Variant
  Dim var_270 As Variant
  Dim var_2C8 As Variant
  Dim var_620 As TextBox
  Dim var_678 As TextBox
  Dim var_804 As TextBox
  Dim var_148 As String
  Dim var_250 As Variant
  Dim var_2A8 As Variant
  Dim var_3DC As Variant
  Dim var_434 As Variant
  Dim var_53C As Variant
  Dim var_5EC As Variant
  Dim var_7AC As Variant
  Dim var_6DC As String
  Dim var_B4 As Variant
  Dim var_198 As Variant
  Dim var_F4 As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_7F0 As Variant
  Dim var_22C As MSHFlexGrid
  Dim var_848 As Variant
  Dim var_868 As Variant
  Dim var_230 As MSHFlexGrid
  Dim var_894 As Variant
  Dim var_8B4 As Variant
  Dim var_8E4 As Variant
  Dim var_904 As Variant
  Dim var_278 As MSHFlexGrid
  Dim var_934 As Variant
  Dim var_954 As Variant
  Dim var_30C As MSHFlexGrid
  Dim var_C50 As Double
  Dim var_3B8 As MSHFlexGrid
  Dim var_C58 As Double
  Dim var_3BC As MSHFlexGrid
  Dim var_C60 As Double
  Dim var_414 As MSHFlexGrid
  Dim var_C68 As Double
  Dim var_B6C As Variant
  Dim var_4C0 As MSHFlexGrid
  Dim var_BD0 As Variant
  Dim var_BF0 As Variant
  Dim var_4C4 As MSHFlexGrid
  Dim var_884 As String
  loc_1748B74: On Error Goto loc_174A61A
  loc_1748B82: Set var_98 = Me.Txt
  loc_1748B88: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1748BB1: If (Proc_6_27_EA565C(var_9C, "Plan Name") = 0) Then
  loc_1748BB4:   Exit Sub
  loc_1748BB5: End If
  loc_1748BC0: Set var_98 = Me.Txt
  loc_1748BC6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_1748BCE: var_A4 = "Applicable Date"
  loc_1748BEF: If (Proc_6_27_EA565C(var_9C, var_A4) = 0) Then
  loc_1748BF2:   Exit Sub
  loc_1748BF3: End If
  loc_1748BFB: Call Proc_150_70_101D074(var_B4, &HFF)
  loc_1748C11: Set var_A0 = Me.Txt
  loc_1748C17: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_1748C2C: var_C4 = Val(var_B8.Text)
  loc_1748C3D: Set var_98 = Me.Txt
  loc_1748C43: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_9C, var_A4)
  loc_1748C70: If (CDbl(Val(var_A4)) <> CDbl(var_9C.Text)) Then
  loc_1748C86:   var_B4 = "Package Amount Mismatched"
  loc_1748C8C:   MsgBox(var_B4, &H40, var_F4, var_114, var_134)
  loc_1748C9C:   Exit Sub
  loc_1748C9D: End If
  loc_1748CA6: unk_5067A0.BeginTrans var_138
  loc_1748CAF: Set var_98 = Me.TopCtrl1
  loc_1748CB5: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_1748CCE: If (CStr() = "Add") Then
  loc_1748CD7:   var_E4 = 0
  loc_1748CF4:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From PlanMast WHERE SITE_CODE='" & MemVar_1F92070
  loc_1748CFB:   var_BC = CStr() & "'"
  loc_1748D04:   unk_5067A0.Execute var_BC, var_B4, -1
  loc_1748D0C:   var_98 = var_98.Fields
  loc_1748D14:   var_E4 = var_9C.Item(var_9C)
  loc_1748D1C:   var_A0 = var_A0.Value
  loc_1748D55:   var_114 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1748D7B:   var_F4 = Format(CStr(var_F4), "000")
  loc_1748D83:   var_134 = (1 + var_F4)
  loc_1748DAE:   Set var_98 = Me.Txt
  loc_1748DB4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_BC)
  loc_1748DBC:   1 = var_9C.Text
  loc_1748DCF:   Set var_A0 = Me.Txt
  loc_1748DD5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_148)
  loc_1748DDD:   var_114 = var_B8.Text
  loc_1748DF0:   Proc_6_7_F25D88(var_F4, Date)
  loc_1748E00:   Set var_174 = Me.Txt
  loc_1748E06:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_178)
  loc_1748E15:   Proc_6_7_F25D88(var_198, CVar(var_178))
  loc_1748E52:   Set var_22C = Me.Txt
  loc_1748E58:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_230)
  loc_1748E77:   Set var_274 = Me.Txt
  loc_1748E7D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_278)
  loc_1748EC9:   Set var_30C = Me.Txt
  loc_1748ECF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_310)
  loc_1748EE4:   var_C4 = Val(var_310.Text)
  loc_1748EF2:   Set var_3B8 = Me.Txt
  loc_1748EF8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_3BC)
  loc_1748F00:   var_3CC = CVar(var_3BC) 'Address
  loc_1748F07:   Proc_6_39_E7C810(var_3DC, var_3CC)
  loc_1748F17:   Set var_410 = Me.Txt
  loc_1748F1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_414)
  loc_1748F25:   var_424 = CVar(var_414) 'Address
  loc_1748F2C:   Proc_6_39_E7C810(var_434, var_424)
  loc_1748F3C:   Set var_468 = Me.Txt
  loc_1748F42:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_46C)
  loc_1748F4A:   var_47C = CVar(var_46C) 'Address
  loc_1748F61:   Set var_4C0 = Me.Txt
  loc_1748F67:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_4C4)
  loc_1748F6F:   var_4D4 = CVar(var_4C4) 'Address
  loc_1748F86:   Set var_518 = Me.Txt
  loc_1748F8C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_51C)
  loc_1748F9B:   Proc_6_39_E7C810(var_53C, CVar(var_51C))
  loc_1748FAB:   Set var_570 = Me.Txt
  loc_1748FB1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_574)
  loc_1748FC0:   Proc_6_39_E7C810(var_594, CVar(var_574))
  loc_1748FD0:   Set var_5C8 = Me.Txt
  loc_1748FD6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_5CC)
  loc_1748FE5:   Proc_6_39_E7C810(var_5EC, CVar(var_5CC))
  loc_1748FF5:   Set var_620 = Me.Txt
  loc_1748FFB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_624)
  loc_174901D:   Set var_678 = Me.Txt
  loc_1749023:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_67C)
  loc_174904C:   Set var_6D4 = Me.Txt
  loc_1749052:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_6D8)
  loc_174906A:   Set var_720 = Me.Txt
  loc_1749070:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_724)
  loc_174908F:   Set var_778 = Me.Txt
  loc_1749095:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_77C)
  loc_17490AC:   Proc_6_17_EAA2B0(var_7AC, CVar(Proc_6_38_E68A98(CVar(var_77C))))
  loc_17490C8:   var_A4 = "Insert Into PlanMast (Code,Name,Total,Site_Code,U_Name,U_EntDt,U_AE,App_Date,Plan_Package,ActiveYn,RoomPer,LogSite_Code,PercentApp,RoomRate,PackageAmount,DiscAppYN,DiscAppOn,Nights,Adults,Childs,RRIncTax,RoomCat,RoomTaxStru,Tariff,MapCode) Values ('" & CStr(var_134)
  loc_174911D:   var_1A8 = CVar(var_A4 & "','" & var_BC & "'," & var_148 & ",'" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_F4 & ",'A'," & var_198 
  loc_174913D:   var_2E8 = var_1A8 & ",'" & IIf((global_56 = "Plan"), "Plan", "Package") & "','" & IIf((Trim(CVar(var_230)) = vbNullString), "Yes", Trim(CVar(var_278))) 
  loc_174915A:   var_354 = var_2E8 & "'," & CVar(var_C4) & ",'" 
  loc_17491A0:   var_49C = var_354 & CVar(MemVar_1F92078) & "','Yes'" & "," & var_3DC & "," & var_434 & ",'" & CVar(Proc_6_38_E68A98(var_47C, var_C4)) 
  loc_17491F6:   var_654 = var_49C & "','" & CVar(Proc_6_38_E68A98(var_4D4)) & "'," & var_53C & "," & var_594 & "," & var_5EC & ",'" & CVar(Proc_6_38_E68A98(CVar(var_624))) 
  loc_174921C:   var_6FC = var_654 & "','" & CVar(Proc_6_38_E68A98(CVar(var_67C.Tag))) & "','" & CVar(var_6D8.Tag) 
  loc_174922F:   var_754 = var_6FC & "','" & CVar(Proc_6_38_E68A98(CVar(var_724))) 
  loc_1749248:   var_7DC = var_754 & "'," & var_7AC & ")" 
  loc_1749256:   unk_5067A0.Execute CStr(var_7DC), var_800, -1
  loc_1749357: Else
  loc_1749374:   var_9C = Me.Fields.Item("SearchCode")
  loc_1749385:   var_A4 = CStr(var_9C.Value)
  loc_174938B:   global_96 = var_A4
  loc_17493AA:   Set var_98 = Me.Txt
  loc_17493B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_17493B8:   var_804 = var_9C.Text
  loc_17493CB:   Set var_A0 = Me.Txt
  loc_17493D1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_17493E1:   var_B4 = Date
  loc_17493EC:   Proc_6_7_F25D88(var_F4, var_B4)
  loc_1749436:   Set var_178 = Me.Txt
  loc_174943C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_22C)
  loc_174945E:   Set var_230 = Me.Txt
  loc_1749464:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_274)
  loc_1749479:   var_C4 = Val(var_274.Text)
  loc_1749487:   Set var_278 = Me.Txt
  loc_174948D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_30C)
  loc_17494AC:   Set var_310 = Me.Txt
  loc_17494B2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_3B8)
  loc_17494D1:   Set var_3BC = Me.Txt
  loc_17494D7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_410)
  loc_17494E6:   Proc_6_39_E7C810(var_354, CVar(var_410))
  loc_17494F6:   Set var_414 = Me.Txt
  loc_17494FC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_468)
  loc_174950B:   Proc_6_39_E7C810(var_3CC, CVar(var_468))
  loc_174951B:   Set var_46C = Me.Txt
  loc_1749521:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_4C0)
  loc_1749530:   Proc_6_39_E7C810(var_424, CVar(var_4C0))
  loc_1749540:   Set var_4C4 = Me.Txt
  loc_1749546:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_518)
  loc_1749555:   Proc_6_39_E7C810(var_47C, CVar(var_518))
  loc_1749565:   Set var_51C = Me.Txt
  loc_174956B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_570)
  loc_1749573:   var_4BC = CVar(var_570) 'Address
  loc_174957A:   Proc_6_39_E7C810(var_4D4, var_4BC)
  loc_174958A:   Set var_574 = Me.Txt
  loc_1749590:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_5C8)
  loc_17495DF:   Set var_5CC = Me.Txt
  loc_17495E5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_620)
  loc_174960E:   Set var_624 = Me.Txt
  loc_1749614:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_678)
  loc_174962C:   Set var_67C = Me.Txt
  loc_1749632:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_6D4)
  loc_1749651:   Set var_6D8 = Me.Txt
  loc_1749657:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_720)
  loc_174966E:   Proc_6_17_EAA2B0(var_6FC, CVar(Proc_6_38_E68A98(CVar(var_720))))
  loc_174967E:   Set var_724 = Me.Txt
  loc_1749684:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_778)
  loc_1749693:   Proc_6_7_F25D88(var_754, CVar(var_778))
  loc_17496A6:   Set var_77C = Me.Txt
  loc_17496AC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_804)
  loc_17496F7:   var_158 = "Update PlanMast Set Name='" & var_A4 & "',Total=" & var_B8.Text & ",Site_Code='" & MemVar_1F92070 & "',U_Name='" & MemVar_1F920C8
  loc_1749714:   var_1B8 = CVar(var_158 & "',U_EntDt=") & var_F4 & ",U_AE='E',PercentAPP='" & IIf((Me.Check1.Value = 1), "Yes", "No") 
  loc_1749741:   var_250 = var_1B8 & "',ActiveYN='" & Trim(CVar(var_22C)) & "',RoomPer=" & CVar(var_C4) & ",DiscAppYN='" 
  loc_1749754:   var_2A8 = var_250 & CVar(Proc_6_38_E68A98(CVar(var_30C), var_C4)) & "',DiscAppOn='" 
  loc_174978E:   var_434 = var_2A8 & CVar(Proc_6_38_E68A98(CVar(var_3B8))) & "',RoomRate=" & var_354 & ",PackageAmount=" & var_3CC & ",Adults=" & var_424 
  loc_17497CA:   var_54C = var_434 & ",Childs=" & var_47C & ",Nights=" & var_4D4 & ",RRIncTax='" & CVar(Proc_6_38_E68A98(CVar(var_5C8))) & "',Plan_Package='" 
  loc_17497ED:   var_61C = var_54C & IIf((global_56 = "Plan"), "Plan", "Package") & "',RoomCat='" & CVar(Proc_6_38_E68A98(CVar(var_620.Tag))) & "',RoomTaxStru='" 
  loc_1749823:   var_734 = var_61C & CVar(var_678.Tag) & "',Tariff='" & CVar(Proc_6_38_E68A98(CVar(var_6D4))) & "',MapCode=" & var_6FC & " WHERE APP_DATE=" 
  loc_1749854:   unk_5067A0.Execute CStr(var_734 & var_754 & " AND CODE='" & CVar(var_804.Tag) & "'"), var_7DC, -1
  loc_1749954: End If
  loc_1749965: Set var_98 = Me.Txt
  loc_174996B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, global_96)
  loc_1749973: var_9C.Tag = var_81C
  loc_1749985: var_E4 = 0
  loc_17499B5: unk_5067A0.Execute "Select Count(*) From Plan1 Where Code='" & global_96 & "'", var_B4, -1
  loc_17499BD: var_98 = var_98.Fields
  loc_17499C5: var_E4 = var_9C.Item(var_9C)
  loc_17499F4: If (var_F4 > 0) Then
  loc_1749A14:   Set var_98 = Me.Txt
  loc_1749A1A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, "DELETE FROM Plan1 WHERE APP_DATE=", var_1B8)
  loc_1749A29:   Proc_6_7_F25D88(var_F4, CVar(var_9C), -1)
  loc_1749A5A:   var_198 = var_A0.Value.Value.Value.Value.Value & var_F4 & " AND Code='" & CVar(global_96) & "' AND SITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1749A71:   unk_5067A0.Execute CStr(var_198 & "'"), var_F4, var_F4
  loc_1749A95: End If
  loc_1749ABD: For var_820 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_92 = var_820 'Byte
  loc_1749AC8:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_1749AD0:   var_104 = CVar(CLng(1)) 'Long
  loc_1749AEA:   var_A4 = CStr(Me.FGrid.TextMatrix))
  loc_1749AFB:   If (var_A4 <> vbNullString) Then
  loc_1749B03:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_1749B0B:     var_104 = CVar(CLng(&H11)) 'Long
  loc_1749B14:     Set var_98 = Me.FGrid
  loc_1749B1A:     var_B4 = var_98.TextMatrix)
  loc_1749B2B:     var_1D8 = CVar(CLng(var_92)) 'Long
  loc_1749B33:     var_260 = CVar(CLng(2)) 'Long
  loc_1749B3C:     Set var_9C = Me.FGrid
  loc_1749B42:     var_F4 = var_9C.TextMatrix)
  loc_1749B53:     var_2F8 = CVar(CLng(var_92)) 'Long
  loc_1749B5B:     var_344 = CVar(CLng(5)) 'Long
  loc_1749B64:     Set var_A0 = Me.FGrid
  loc_1749B7B:     var_384 = CVar(CLng(var_92)) 'Long
  loc_1749B83:     var_3FC = CVar(CLng(6)) 'Long
  loc_1749B8C:     Set var_B8 = Me.FGrid
  loc_1749BA3:     var_4AC = CVar(CLng(var_92)) 'Long
  loc_1749BAB:     var_55C = CVar(CLng(3)) 'Long
  loc_1749BB4:     Set var_174 = Me.FGrid
  loc_1749BCB:     var_60C = CVar(CLng(var_92)) 'Long
  loc_1749BD3:     var_6C0 = CVar(CLng(&HC)) 'Long
  loc_1749BF3:     var_764 = CVar(CLng(var_92)) 'Long
  loc_1749BFB:     var_7F0 = CVar(CLng(&HD)) 'Long
  loc_1749C1B:     var_848 = CVar(CLng(var_92)) 'Long
  loc_1749C23:     var_868 = CVar(CLng(&HE)) 'Long
  loc_1749C43:     var_894 = CVar(CLng(var_92)) 'Long
  loc_1749C4B:     var_8B4 = CVar(CLng(&HF)) 'Long
  loc_1749C5A:     var_1B8 = Me.FGrid.TextMatrix)
  loc_1749C6D:     var_C4 = Val(CStr(var_1B8))
  loc_1749C75:     var_8E4 = CVar(CLng(var_92)) 'Long
  loc_1749C7D:     var_904 = CVar(CLng(7)) 'Long
  loc_1749CA7:     var_934 = CVar(CLng(var_92)) 'Long
  loc_1749CAF:     var_954 = CVar(CLng(8)) 'Long
  loc_1749CD1:     var_C48 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1749D03:     var_C50 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1749D35:     var_C58 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1749D54:     var_228 = Me.FGrid.TextMatrix)
  loc_1749D67:     var_C60 = Val(CStr(var_228))
  loc_1749D78:     Proc_6_7_F25D88(var_250, Date, var_C60, CVar(CLng(&HB)), CVar(CLng(var_92)), var_C58, CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1749D81:     Set var_410 = Me.TopCtrl1
  loc_1749D87:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C50)
  loc_1749DED:     var_C68 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1749DFB:     Set var_468 = Me.Txt
  loc_1749E01:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_46C, var_C68, CVar(CLng(&H12)), CVar(CLng(var_92)), CVar(CLng(9)))
  loc_1749E10:     Proc_6_7_F25D88(var_3CC, CVar(var_46C), CVar(CLng(var_92)), var_C48)
  loc_1749E1A:     var_B6C = CVar(CLng(var_92)) 'Long
  loc_1749E22:     var_B8C = CVar(CLng(&H13)) 'Long
  loc_1749E4C:     var_BD0 = CVar(CLng(var_92)) 'Long
  loc_1749E54:     var_BF0 = CVar(CLng(&H14)) 'Long
  loc_1749E90:     var_A4 = "INSERT INTO Plan1 (Code,ChrgCode,RevCode,TaxInc,FixRate,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,child,ExtraAdult,ExtraChild,NoOfDays,Site_Code,U_Name,U_EntDT,U_AE,PlanPer,App_Date,LogSite_Code,PerDayAmount,NetAmount)VALUES ('" & global_96
  loc_1749E97:     var_BC = var_A4 & "','"
  loc_1749EDF:     var_6DC = var_BC & CStr(var_B4) & "','" & CStr(var_F4) & "','" & CStr(var_A0.TextMatrix)) & "','" & CStr(var_B8.TextMatrix)) & "','"
  loc_1749F20:     var_884 = var_6DC & CStr(var_174.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix)) & "','" & CStr(Me.FGrid.TextMatrix))
  loc_1749F73:     var_A0C = var_884 & "'," & CStr(var_C4) & "," & CStr(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CStr(var_C48) & "," & CStr(var_C50) & ","
  loc_1749FB5:     var_270 = CVar(var_A0C & CStr(var_C58) & "," & CStr(var_C60) & ",'" & MemVar_1F92078 & "','" & MemVar_1F920C8 & "',") 'String
  loc_1749FD4:     var_334 = var_270 & var_250 & ",'" & IIf((CStr(var_2A8) = "Add"), "A", "E") & "'," 
  loc_174A01F:     var_464 = var_334 & CVar(var_C68) & "," & var_3CC & ",'" & CVar(MemVar_1F92078) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_174A041:     unk_5067A0.Execute CStr(var_464 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ")"), var_4BC, -1
  loc_174A13F:   End If
  loc_174A142: Next var_820 'Byte
  loc_174A14E: var_E4 = 0
  loc_174A17E: unk_5067A0.Execute "Select Count(*) From PlanTokenDetails Where PlanCode='" & global_96 & "'", var_B4, -1
  loc_174A186: var_98 = var_98.Fields
  loc_174A18E: var_E4 = var_9C.Item(var_9C)
  loc_174A1BD: If (var_F4 > 0) Then
  loc_174A1DD:   Set var_98 = Me.Txt
  loc_174A1E3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C, "DELETE FROM PlanTokenDetails WHERE APP_DATE=", var_1B8)
  loc_174A1F2:   Proc_6_7_F25D88(var_F4, CVar(var_9C), -1)
  loc_174A210:   var_170 = var_A0.Value.Value.Value & var_F4 & " AND PlanCode='" & CVar(global_96) 
  loc_174A23A:   unk_5067A0.Execute CStr(var_170 & "' AND SITE_CODE='" & CVar(MemVar_1F92078) & "'"), var_F4, 
  loc_174A25E: End If
  loc_174A286: For var_C7C = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_92 = var_C7C 'Byte
  loc_174A291:   var_D4 = CVar(CLng(var_92)) 'Long
  loc_174A299:   var_104 = CVar(CLng(1)) 'Long
  loc_174A2C4:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_174A2CC:     var_D4 = CVar(CLng(var_92)) 'Long
  loc_174A2D4:     var_104 = CVar(CLng(2)) 'Long
  loc_174A2E3:     var_B4 = Me.FGrid1.TextMatrix)
  loc_174A305:     Set var_9C = Me.FGrid1
  loc_174A31E:     var_C4 = Val(CStr(var_9C.TextMatrix)))
  loc_174A33D:     var_114 = Me.FGrid1.TextMatrix)
  loc_174A354:     Set var_B8 = Me.Txt
  loc_174A35A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174, var_114, CVar(CLng(4)), CVar(CLng(var_92)), var_C4, CVar(CLng(3)))
  loc_174A369:     Proc_6_7_F25D88(var_170, CVar(var_174), CVar(CLng(var_92)), var_B4, var_104)
  loc_174A37C:     Proc_6_7_F25D88(var_228, Date, var_D4)
  loc_174A385:     Set var_178 = Me.TopCtrl1
  loc_174A38B:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_104)
  loc_174A3DC:     var_BC = "INSERT INTO PlanTokenDetails (Sno,PlanCode,ChrgCode,Rate,Remarks,App_Date,Site_Code,U_Name,U_EntDT,U_AE,LogSite_Code) VALUES (" & CStr(var_92)
  loc_174A431:     var_198 = CVar(var_BC & ",'" & global_96 & "','" & CStr(var_B4) & "'," & CStr(var_C4) & ",'" & CStr(var_114) & "',") & var_170 
  loc_174A477:     var_2C8 = var_198 & ",'" & CVar(MemVar_1F92078) & "','" & CVar(MemVar_1F920C8) & "'," & var_228 & ",'" & IIf((CStr(var_270) = "Add"), "A", "E") 
  loc_174A4A1:     unk_5067A0.Execute CStr(var_2C8 & "','" & CVar(MemVar_1F92078) & "')"), var_334, -1
  loc_174A50F:   End If
  loc_174A512: Next var_C7C 'Byte
  loc_174A51E: unk_5067A0.CommitTrans
  loc_174A525: var_8A = 0
  loc_174A536: Set var_98 = Me.Txt
  loc_174A53C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_174A558: var_8A = 0
  loc_174A566: Me.Requery -1
  loc_174A576: Me.Requery -1
  loc_174A581: Me.MoveFirst
  loc_174A5AB: Me.Find "SearchCode='" & var_9C.Tag & "'", 0, 1
  loc_174A5BB: Set var_98 = Me.TopCtrl1
  loc_174A5C1: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_D4)
  loc_174A5DA: If (CStr(var_8A) = "Add") Then
  loc_174A5DD:   Call TopCtrl1_UnknownEvent_A()
  loc_174A5E2:   Exit Sub
  loc_174A5E3: End If
  loc_174A606: Call Proc_150_63_EB2180(Proc_5_1_100CB50("INI", Me), global_72)
  loc_174A616: Set var_88 = Nothing
  loc_174A619: Exit Sub
  loc_174A61A: ' Referenced from: 1748B74
  loc_174A620: If (var_8A = &HFF) Then
  loc_174A629:   unk_5067A0.RollbackTrans
  loc_174A62E: End If
  loc_174A62E: Proc_6_60_E62BC4(var_8A)
  loc_174A633: Exit Sub
  loc_174A634: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F45D84
  'Data Table: 506778
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F45C7B: Me.DGTaxStru.Visible = False
  loc_F45C9A: If (Me.RecordCount > 0) Then
  loc_F45CD9:   Set var_B4 = Me.Txt
  loc_F45CDF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F45CE7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F45D1A:   var_B0 = Me.Fields.Item("Name")
  loc_F45D39:   Set var_B4 = Me.Txt
  loc_F45D3F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F45D47:   var_B8.Text = CStr(var_B0.Value)
  loc_F45D5D: End If
  loc_F45D68: Set var_A8 = Me.Txt
  loc_F45D6E: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11))
  loc_F45D76: var_B0.SetFocus
  loc_F45D82: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_1F 'E58BB8
  'Data Table: 506778
  loc_E58B8B: Set var_90 = Me.FGPoint
  loc_E58BA7: Proc_6_138_106D6F8(Me.DGTaxStru, global_80)
  loc_E58BB5: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '12F5A98
  'Data Table: 506778
  Dim var_8C As Variant
  Dim var_8E As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_130 As String
  Dim var_15C As Long
  loc_12F53B0: On Error Goto loc_12F5A91
  loc_12F53B3: Call Proc_150_61_F1FA44()
  loc_12F53C7: Set var_88 = Me.TxtGrid
  loc_12F53CD: Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_12F53D5: var_8C.MaxLength = 0
  loc_12F53E4: var_8E = Index
  loc_12F53ED: If (var_8E = 0) Then
  loc_12F5403:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F540C:   Set var_8C = Me.FGrid
  loc_12F5442:   Set var_108 = Me.TxtGrid
  loc_12F5448:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_12F5450:   var_10C.Tag = CVar(CLng(var_8C.Col))
  loc_12F5481:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12F54AC:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_12F54BB:     Set var_88 = Me.TxtGrid
  loc_12F54C1:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, var_118)
  loc_12F54C9:     var_114 = var_8C.Left
  loc_12F54E0:     Me.DGRev.Left = CVar(var_118)
  loc_12F54FA:     Set var_F4 = Me.TxtGrid
  loc_12F5500:     Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_11C)
  loc_12F5508:     var_C0 = var_108.Height
  loc_12F5519:     Set var_88 = Me.TxtGrid
  loc_12F551F:     Call 0.Method_TxtGrid_GotFocus0 (0, var_8C)
  loc_12F5533:     var_C0 = CVar((var_8C.Top + var_11C)) 'Single
  loc_12F553C:     Set var_10C = Me.DGRev
  loc_12F5542:     var_10C.Top = var_C0
  loc_12F556B:     If (Me.RecordCount > 0) Then
  loc_12F5579:       Set var_8C = Me.FGPoint
  loc_12F5591:       Proc_6_137_1193554(Me.DGRev, global_64, Index)
  loc_12F559F:     End If
  loc_12F55A8:     var_118 = Me.RecordCount
  loc_12F55BF:     var_11E = Me.EOF
  loc_12F55D3:     var_120 = Me.BOF
  loc_12F55F3:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F562F:     If (CVar(CLng(1)) Or (CStr(Me.FGrid.TextMatrix)) = vbNullString)) Then
  loc_12F5632:       Exit Sub
  loc_12F5633:     End If
  loc_12F5646:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F564E:     var_E0 = CVar(CLng(1)) 'Long
  loc_12F5672:     var_130 = "Name"
  loc_12F56B1:     If CBool(CVar(CStr(Me.FGrid.TextMatrix))) <> Me.Fields.Item(var_130).Value) Then
  loc_12F56BA:       Me.MoveFirst
  loc_12F56D2:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12F56DA:       var_E0 = CVar(CLng(1)) 'Long
  loc_12F571E:       Me.Find "Name ='" & CStr(Me.FGrid.TextMatrix)) & "'", 0, 1
  loc_12F573A:     End If
  loc_12F573A:   End If
  loc_12F573D: Else
  loc_12F5743:   If (var_8E = 1) Then
  loc_12F5762:     Set var_8C = Me.FGrid1
  loc_12F5768:     var_B0 = var_8C.Col
  loc_12F5771:     var_E0 = CVar(CLng(var_B0)) 'Long
  loc_12F5798:     Set var_108 = Me.TxtGrid
  loc_12F579E:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), var_E0, CVar(CLng(Me.FGrid1.Row)), var_130, var_B0)
  loc_12F57A6:     var_10C.Tag = var_E0
  loc_12F57C8:     var_C0 = CVar(CLng("16777215")) 'Long
  loc_12F57D7:     Me.FGrid1.CellBackColor = var_C0
  loc_12F57F2:     var_15C = CLng(Me.FGrid1.Col)
  loc_12F5802:     If (var_15C = CLng(1)) Then
  loc_12F5811:       Set var_88 = Me.TxtGrid
  loc_12F5817:       Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_118, var_15C, var_C0)
  loc_12F581F:       var_E0 = var_8C.Left
  loc_12F5827:       var_C0 = CVar(var_118) 'Single
  loc_12F5836:       Me.DGTokenRev.Left = var_C0
  loc_12F5850:       Set var_F4 = Me.TxtGrid
  loc_12F5856:       Call 0.Method_TxtGrid_GotFocus0 (1, var_108, var_11C, var_C0)
  loc_12F585E:       var_C0 = var_108.Height
  loc_12F586F:       Set var_88 = Me.TxtGrid
  loc_12F5875:       Call 0.Method_TxtGrid_GotFocus0 (1, var_8C, var_118)
  loc_12F587D:       ((var_118 = 0) Or ((var_11E = &HFF) Or (var_120 = &HFF))) = var_8C.Top
  loc_12F5889:       var_C0 = CVar((var_118 + var_11C)) 'Single
  loc_12F5898:       Me.DGTokenRev.Top = var_C0
  loc_12F58C1:       If (Me.RecordCount > 0) Then
  loc_12F58CF:         Set var_8C = Me.FGPoint
  loc_12F58E7:         Proc_6_137_1193554(Me.DGTokenRev, global_68, Index)
  loc_12F58F5:       End If
  loc_12F58FE:       var_118 = Me.RecordCount
  loc_12F5915:       var_11E = Me.EOF
  loc_12F5929:       var_120 = Me.BOF
  loc_12F5949:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F5985:       If (CVar(CLng(1)) Or (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_12F5988:         Exit Sub
  loc_12F5989:       End If
  loc_12F599C:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F59A4:       var_E0 = CVar(CLng(1)) 'Long
  loc_12F59C8:       var_130 = "Name"
  loc_12F5A07:       If CBool(CVar(CStr(Me.FGrid1.TextMatrix))) <> Me.Fields.Item(var_130).Value) Then
  loc_12F5A10:         Me.MoveFirst
  loc_12F5A28:         var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_12F5A30:         var_E0 = CVar(CLng(1)) 'Long
  loc_12F5A3F:         var_B0 = Me.FGrid1.TextMatrix)
  loc_12F5A74:         Me.Find "Name ='" & CStr(var_B0) & "'", 0, 1
  loc_12F5A90:       End If
  loc_12F5A90:     End If
  loc_12F5A90:   End If
  loc_12F5A90: End If
  loc_12F5A90: Exit Sub
  loc_12F5A91: ' Referenced from: 12F53B0
  loc_12F5A91: Proc_6_60_E62BC4(var_130, var_B0, var_E0, var_C0, var_E0)
  loc_12F5A96: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1446B50
  'Data Table: 506778
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_9E As Integer
  Dim var_8C As Variant
  Dim var_B4 As Long
  Dim Me As Recordset15
  Dim var_D0 As Long
  loc_144601F: var_86 = Shift
  loc_1446022: On Error Goto loc_1446B47
  loc_144602F: If (CLng(Shift) = &H1B) Then
  loc_144603F:   Set var_8C = Me.TxtGrid
  loc_1446045:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_144605F:   Set var_98 = Me.TxtGrid
  loc_1446065:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_144606D:   var_9C.Text = var_90.Tag
  loc_1446086:   If (KeyCode = 0) Then
  loc_144608D:     Set var_8C = Me.FGrid
  loc_14460A1:   Else
  loc_14460A5:     Set var_8C = Me.FGrid
  loc_14460B6:   End If
  loc_14460C2:   Set var_8C = Me.TxtGrid
  loc_14460C8:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_14460D0:   var_90.Visible = FGrid.DispID_8001
  loc_14460DC:   Exit Sub
  loc_14460DD: End If
  loc_14460E0: var_9E = KeyCode
  loc_14460E9: If (var_9E = 0) Then
  loc_14460FF:   var_B4 = CLng(Me.FGrid.Col)
  loc_144610F:   If (var_B4 = CLng(5)) Then
  loc_1446152:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1446160:       Call Proc_150_68_19529BC(KeyCode, 0, var_B8, var_B4)
  loc_144616B:       If (var_B8 = &HFF) Then
  loc_14461B1:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 5)
  loc_14461C1:       End If
  loc_14461C1:     End If
  loc_14461C4:   Else
  loc_14461CB:     If (var_B4 = CLng(6)) Then
  loc_144620E:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_144621C:         Call Proc_150_68_19529BC(KeyCode, 0, var_B8, 0, 6)
  loc_1446227:         If (var_B8 = &HFF) Then
  loc_144626D:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 6, 0)
  loc_144627D:         End If
  loc_144627D:       End If
  loc_1446280:     Else
  loc_1446287:       If (var_B4 = CLng(7)) Then
  loc_14462CA:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_14462D8:           Call Proc_150_68_19529BC(KeyCode, 0, var_B8, 7, 0)
  loc_14462E3:           If (var_B8 = &HFF) Then
  loc_1446329:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 7, 0)
  loc_1446339:           End If
  loc_1446339:         End If
  loc_144633C:       Else
  loc_1446343:         If (var_B4 = CLng(8)) Then
  loc_1446386:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1446394:             Call Proc_150_68_19529BC(KeyCode, 0, var_B8, 8, 0)
  loc_144639F:             If (var_B8 = &HFF) Then
  loc_14463E5:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 8, 0)
  loc_14463F5:             End If
  loc_14463F5:           End If
  loc_14463F8:         Else
  loc_14463FF:           If (var_B4 = CLng(&HF)) Then
  loc_1446442:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1446450:               Call Proc_150_68_19529BC(KeyCode, 0, var_B8, &HB, 0)
  loc_144645B:               If (var_B8 = &HFF) Then
  loc_14464A8:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, CByte((CInt(&HF) + 1)), 0)
  loc_14464B8:               End If
  loc_14464B8:             End If
  loc_14464BB:           Else
  loc_14464C2:             If (var_B4 = CLng(1)) Then
  loc_144651B:               Proc_6_69_134A198(Me.DGRev, Me.TxtGrid, KeyCode, global_64, Shift, &HFF, 1, Nothing)
  loc_144658A:               If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14465B0:                 Proc_6_138_106D6F8(Me.DGRev, global_64, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14465BE:               End If
  loc_14465C8:               If (CLng(Shift) = &HD) Then
  loc_14465D6:                 Call Proc_150_68_19529BC(KeyCode, 0, var_B8, 0, 0)
  loc_14465E1:                 If (var_B8 = &HFF) Then
  loc_1446627:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 1, 0)
  loc_1446637:                 End If
  loc_1446637:               End If
  loc_144663A:             Else
  loc_1446641:               If (var_B4 = CLng(&HB)) Then
  loc_1446684:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1446692:                   Call Proc_150_68_19529BC(KeyCode, 0, var_B8, &HB, 0)
  loc_144669D:                   If (var_B8 = &HFF) Then
  loc_14466BB:                     If (Me.Check1.Value = 1) Then
  loc_1446708:                       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, CByte((CInt(7) + 1)), 0)
  loc_144671B:                     Else
  loc_144675E:                       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, 1, 0, 0)
  loc_144676E:                     End If
  loc_144676E:                   End If
  loc_144676E:                 End If
  loc_1446771:               Else
  loc_1446778:                 If (var_B4 = CLng(&H12)) Then
  loc_14467BB:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_14467C9:                     Call Proc_150_68_19529BC(KeyCode, 0, var_B8, 0, &H12)
  loc_14467D4:                     If (var_B8 = &HFF) Then
  loc_144681A:                       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_94, &H12, 0)
  loc_144682A:                     End If
  loc_144682A:                   End If
  loc_144682A:                 End If
  loc_144682A:               End If
  loc_144682A:             End If
  loc_144682A:           End If
  loc_144682A:         End If
  loc_144682A:       End If
  loc_144682A:     End If
  loc_144682A:   End If
  loc_144682D: Else
  loc_1446833:   If (var_9E = 1) Then
  loc_1446849:     var_D0 = CLng(Me.FGrid1.Col)
  loc_1446859:     If (var_D0 = CLng(1)) Then
  loc_14468B2:       Proc_6_69_134A198(Me.DGTokenRev, Me.TxtGrid, KeyCode, global_68, Shift, &HFF, 1, Nothing)
  loc_1446921:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_1446947:         Proc_6_138_106D6F8(Me.DGTokenRev, global_68, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_1446955:       End If
  loc_144695F:       If (CLng(Shift) = &HD) Then
  loc_144696D:         Call Proc_150_68_19529BC(KeyCode, 0, var_B8, var_D0, 0)
  loc_1446978:         If (var_B8 = &HFF) Then
  loc_14469BE:           Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_94, 5, 0)
  loc_14469CE:         End If
  loc_14469CE:       End If
  loc_14469D1:     Else
  loc_14469D8:       If (var_D0 = CLng(3)) Then
  loc_1446A1B:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1446A29:           Call Proc_150_68_19529BC(KeyCode, 0, var_B8, 3, 0)
  loc_1446A34:           If (var_B8 = &HFF) Then
  loc_1446A7A:             Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_94, 5, 0)
  loc_1446A8A:           End If
  loc_1446A8A:         End If
  loc_1446A8D:       Else
  loc_1446A94:         If (var_D0 = CLng(4)) Then
  loc_1446AD7:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_94 = &HFF))) Then
  loc_1446AE5:             Call Proc_150_68_19529BC(KeyCode, 0, var_B8, 4, 0)
  loc_1446AF0:             If (var_B8 = &HFF) Then
  loc_1446B36:               Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_94, 5, 0)
  loc_1446B46:             End If
  loc_1446B46:           End If
  loc_1446B46:         End If
  loc_1446B46:       End If
  loc_1446B46:     End If
  loc_1446B46:   End If
  loc_1446B46: End If
  loc_1446B46: Exit Sub
  loc_1446B47: ' Referenced from: 1446022
  loc_1446B47: Proc_6_60_E62BC4(0, 0, 0)
  loc_1446B4C: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '10ED428
  'Data Table: 506778
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim arg_10 As Integer
  Dim var_E8 As Long
  Dim TxtGrid_KeyPress As String
  loc_10ED108: On Error Goto loc_10ED420
  loc_10ED10E: Proc_6_58_E054C0(arg_10)
  loc_10ED116: var_86 = KeyAscii
  loc_10ED11F: If (var_86 = 0) Then
  loc_10ED135:   var_A0 = CLng(Me.FGrid.Col)
  loc_10ED145:   If (var_A0 = CLng(1)) Then
  loc_10ED164:     If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_10ED176:       var_A4 = "Name"
  loc_10ED191:       Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_64, arg_10)
  loc_10ED1AB:       Set var_AC = Me.FGPoint
  loc_10ED1C3:       Proc_6_138_106D6F8(Me.DGRev, global_64, KeyAscii, var_AC)
  loc_10ED1D1:     End If
  loc_10ED1D4:   Else
  loc_10ED1DB:     If (var_A0 = CLng(6)) Then
  loc_10ED207:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_10ED217:         Set var_8C = Me.TxtGrid
  loc_10ED21D:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes", var_A4)
  loc_10ED225:         var_AC.Text = 0
  loc_10ED234:       Else
  loc_10ED241:         Set var_8C = Me.TxtGrid
  loc_10ED247:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_10ED24F:         var_AC.Text = var_A0
  loc_10ED25B:       End If
  loc_10ED25D:       arg_10 = 0
  loc_10ED263:     Else
  loc_10ED26A:       If Not (var_A0 = CLng(7)) Then
  loc_10ED274:         If Not (var_A0 = CLng(8)) Then
  loc_10ED27E:           If (var_A0 = CLng(&HF)) Then
  loc_10ED281:           End If
  loc_10ED281:         End If
  loc_10ED28B:         Set var_8C = Me.TxtGrid
  loc_10ED291:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC)
  loc_10ED2AC:         Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_10ED2BB:       Else
  loc_10ED2C2:         If (var_A0 = CLng(&HB)) Then
  loc_10ED2CF:           Set var_8C = Me.TxtGrid
  loc_10ED2D5:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 2)
  loc_10ED2F0:           Proc_6_42_129A86C(var_AC, arg_10, 2)
  loc_10ED2FF:         Else
  loc_10ED306:           If Not (var_A0 = CLng(5)) Then
  loc_10ED310:             If (var_A0 = CLng(6)) Then
  loc_10ED313:             End If
  loc_10ED313:           End If
  loc_10ED313:         End If
  loc_10ED313:       End If
  loc_10ED313:     End If
  loc_10ED313:   End If
  loc_10ED316: Else
  loc_10ED31C:   If (var_86 = 1) Then
  loc_10ED332:     var_E8 = CLng(Me.FGrid1.Col)
  loc_10ED342:     If (var_E8 = CLng(1)) Then
  loc_10ED361:       If (CBool(Me.DGTokenRev.Visible) = &HFF) Then
  loc_10ED38E:         Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_68, arg_10, "Name")
  loc_10ED3A8:         Set var_AC = Me.FGPoint
  loc_10ED3C0:         Proc_6_138_106D6F8(Me.DGTokenRev, global_68, KeyAscii, var_AC, 0)
  loc_10ED3CE:       End If
  loc_10ED3D1:     Else
  loc_10ED3D8:       If (var_E8 = CLng(3)) Then
  loc_10ED3E5:         Set var_8C = Me.TxtGrid
  loc_10ED3EB:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_E8)
  loc_10ED406:         Proc_6_42_129A86C(var_AC, arg_10, 8, 2)
  loc_10ED415:       Else
  loc_10ED41C:         If (var_E8 = CLng(4)) Then
  loc_10ED41F:         End If
  loc_10ED41F:       End If
  loc_10ED41F:     End If
  loc_10ED41F:   End If
  loc_10ED41F: End If
  loc_10ED41F: Exit Sub
  loc_10ED420: ' Referenced from: 10ED108
  loc_10ED420: Proc_6_60_E62BC4(0, arg_10)
  loc_10ED425: Exit Sub
  loc_10ED426: TxtGrid_KeyPress = var_86
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1108484
  'Data Table: 506778
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_114 As Variant
  Dim var_12C As Long
  loc_110814C: On Error Goto loc_110847C
  loc_1108152: var_86 = KeyCode
  loc_110815B: If (var_86 = 0) Then
  loc_1108171:   var_A0 = CLng(Me.FGrid.Col)
  loc_1108181:   If (var_A0 = CLng(1)) Then
  loc_11081A7:     If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_11081B8:       Call TxtGrid_KeyDown(KeyCode, global_92)
  loc_11081C1:       Set var_AC = Me.TxtGrid
  loc_11081CC:       var_A8 = "Name"
  loc_11081E7:       Proc_6_89_146F1AC(var_AC, KeyCode, global_64, Shift, var_A8)
  loc_11081F6:     End If
  loc_11081F9:   Else
  loc_1108200:     If Not (var_A0 = CLng(7)) Then
  loc_110820A:       If Not (var_A0 = CLng(&H12)) Then
  loc_1108214:         If Not (var_A0 = CLng(8)) Then
  loc_110821E:           If (var_A0 = CLng(&HF)) Then
  loc_1108221:           End If
  loc_1108221:         End If
  loc_1108221:       End If
  loc_110822B:       var_9C = Me.FGrid.Row
  loc_110825E:       Set var_8C = Me.TxtGrid
  loc_1108264:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_9C)))
  loc_110826C:       &HFF = var_AC.Text
  loc_110827B:       var_114 = CVar(CStr(Val(var_A8))) 'String
  loc_1108283:       Set var_128 = Me.FGrid
  loc_1108289:       LateIdCallSt
  loc_11082AA:     End If
  loc_11082AA:   End If
  loc_11082AD:   Call Proc_150_70_101D074(var_9C, var_128, var_114)
  loc_11082B8: Else
  loc_11082BE:   If (var_86 = 1) Then
  loc_11082D4:     var_12C = CLng(Me.FGrid1.Col)
  loc_11082E4:     If (var_12C = CLng(1)) Then
  loc_110830A:       If ((Shift <> &HD) And (CBool(Me.DGTokenRev.Visible) = 0)) Then
  loc_110831B:         Call TxtGrid_KeyDown(KeyCode, global_92)
  loc_1108324:         Set var_AC = Me.TxtGrid
  loc_110832F:         var_A8 = "Name"
  loc_110834A:         Proc_6_89_146F1AC(var_AC, KeyCode, global_68, Shift, var_A8, &HFF)
  loc_1108359:       End If
  loc_110835C:     Else
  loc_1108363:       If (var_12C = CLng(3)) Then
  loc_11083A3:         Set var_8C = Me.TxtGrid
  loc_11083A9:         Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))
  loc_11083B1:         0 = var_AC.Text
  loc_11083C0:         var_114 = CVar(CStr(Val(var_A8))) 'String
  loc_11083C8:         Set var_128 = Me.FGrid1
  loc_11083CE:         LateIdCallSt
  loc_11083F2:       Else
  loc_11083F9:         If (var_12C = CLng(4)) Then
  loc_1108439:           Set var_8C = Me.TxtGrid
  loc_110843F:           Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC, var_A8, CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)), var_128)
  loc_1108447:           var_114 = var_AC.Text
  loc_110844F:           var_114 = CVar(var_A8) 'String
  loc_1108457:           Set var_128 = Me.FGrid1
  loc_110845D:           LateIdCallSt
  loc_110847B:         End If
  loc_110847B:       End If
  loc_110847B:     End If
  loc_110847B:   End If
  loc_110847B: End If
  loc_110847B: Exit Sub
  loc_110847C: ' Referenced from: 110814C
  loc_110847C: Proc_6_60_E62BC4(var_128, var_114, var_12C)
  loc_1108481: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5268C
  'Data Table: 506778
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E52650: On Error Goto loc_E52683
  loc_E52656: var_86 = Cancel
  loc_E5265F: If Not (var_86 = 0) Then
  loc_E52668:   If (var_86 = 1) Then
  loc_E5266B:   End If
  loc_E52676:   Call Proc_150_68_19529BC(Cancel, &HFF)
  loc_E5267F:   arg_10 = Not(var_8A)
  loc_E52682: End If
  loc_E52682: Exit Sub
  loc_E52683: ' Referenced from: E52650
  loc_E52683: Proc_6_60_E62BC4(arg_10, var_8A)
  loc_E52688: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F56F84
  'Data Table: 506778
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F56EA6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F56EAD:   Set var_A8 = Me.ListView
  loc_F56EF7:   Set var_C0 = Me.Txt
  loc_F56EFD:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F56F05:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F56F25: End If
  loc_F56F31: Me.FrmList.Visible = False
  loc_F56F61: Set var_9C = Me.Txt
  loc_F56F67: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F56F6F: var_A8.SetFocus
  loc_F56F83: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '126EF8C
  'Data Table: 506778
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_AC As String
  Dim var_88 As ListView
  Dim var_8C As TextBox
  loc_126EA0E: Set var_88 = Me.Txt
  loc_126EA14: Call 0.Method_Txt_GotFocus0 (Index)
  loc_126EA22: Proc_6_74_E226B0(var_8C)
  loc_126EA31: var_92 = Index
  loc_126EA3C: If (var_92 = CInt(0)) Then
  loc_126EA56:   If (Me.RecordCount > 0) Then
  loc_126EA64:     Set var_8C = Me.FGPoint
  loc_126EA7C:     Proc_6_137_1193554(Me.DGHelp, global_60, Index)
  loc_126EA8A:   End If
  loc_126EA8D: Else
  loc_126EA95:   If (var_92 = CInt(&HF)) Then
  loc_126EAA5:     ReDim var_9C(0 To 3)
  loc_126EABC:     var_9C(0) = "E.P."
  loc_126EACB:     var_9C(1) = "C.P."
  loc_126EADA:     var_9C(2) = "M.A.P."
  loc_126EAE9:     var_9C(3) = "A.P."
  loc_126EB19:     Me.ListView.Tag = CVar(CStr(&HF))
  loc_126EB5D:     Set global_124 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index, Array(var_9C), 4)
  loc_126EB71:   Else
  loc_126EB79:     If (var_92 = CInt(7)) Then
  loc_126EB89:       ReDim var_9C(0 To 2)
  loc_126EBA0:       var_9C(0) = "Disc Post On Room"
  loc_126EBAF:       var_9C(1) = "Disc On Food"
  loc_126EBBE:       var_9C(2) = "Disc on Both"
  loc_126EBD5:       global_108 = Array(var_9C)
  loc_126EBEE:       Me.ListView.Tag = CVar(CStr(7))
  loc_126EC32:       Set global_124 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index, global_108, 3)
  loc_126EC46:     Else
  loc_126EC4E:       If (var_92 = CInt(&HE)) Then
  loc_126EC68:         If (Me.RecordCount > 0) Then
  loc_126EC76:           Set var_8C = Me.FGPoint
  loc_126EC8E:           Proc_6_137_1193554(Me.DGRoomCat, global_76, Index, var_8C, global_108)
  loc_126EC9C:         End If
  loc_126ECEA:         Set var_88 = Me.Txt
  loc_126ECF0:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_126ECF8:         global_108 = var_8C.Text
  loc_126ED10:         If (var_8C Or (var_100 = vbNullString)) Then
  loc_126ED13:           Exit Sub
  loc_126ED14:         End If
  loc_126ED21:         Set var_88 = Me.Txt
  loc_126ED27:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_126ED2F:         var_92 = var_8C.Text
  loc_126ED41:         var_AC = "Name"
  loc_126ED7C:         If CBool(CVar(var_100) <> Me.Fields.Item(var_AC).Value) Then
  loc_126ED85:           Me.MoveFirst
  loc_126EDA8:           Set var_88 = Me.Txt
  loc_126EDAE:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_126EDB6:           0 = var_8C.Text
  loc_126EDCF:           Me.Find 1 & var_100 & "'", var_AC, var_8C
  loc_126EDE4:         End If
  loc_126EDE7:       Else
  loc_126EDEF:         If (var_92 = CInt(&H11)) Then
  loc_126EE09:           If (Me.RecordCount > 0) Then
  loc_126EE17:             Set var_8C = Me.FGPoint
  loc_126EE2F:             Proc_6_137_1193554(Me.DGTaxStru, global_80)
  loc_126EE3D:           End If
  loc_126EE8B:           Set var_88 = Me.Txt
  loc_126EE91:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100)
  loc_126EE99:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_126EEB1:           If (Index Or (var_100 = vbNullString)) Then
  loc_126EEB4:             Exit Sub
  loc_126EEB5:           End If
  loc_126EEC2:           Set var_88 = Me.Txt
  loc_126EEC8:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_126EED0:           var_100 = var_8C.Text
  loc_126EEE2:           var_AC = "Name"
  loc_126EF1D:           If CBool(CVar(var_100) <> Me.Fields.Item(var_AC).Value) Then
  loc_126EF26:             Me.MoveFirst
  loc_126EF49:             Set var_88 = Me.Txt
  loc_126EF4F:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_100, "Name ='")
  loc_126EF57:             0 = var_8C.Text
  loc_126EF70:             Me.Find 1 & var_100 & "'", var_AC, var_8C
  loc_126EF85:           End If
  loc_126EF85:         End If
  loc_126EF85:       End If
  loc_126EF85:     End If
  loc_126EF85:   End If
  loc_126EF85: End If
  loc_126EF85: Call Proc_150_61_F1FA44()
  loc_126EF8A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '137C540
  'Data Table: 506778
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_AC As TextBox
  Dim var_C4 As TextBox
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_A8 As Frame
  loc_137BCE4: If (CLng(Shift) = &H1B) Then
  loc_137BCE7:   Call Proc_150_61_F1FA44(Shift)
  loc_137BCEC:   Exit Sub
  loc_137BCED: End If
  loc_137BCF0: var_88 = KeyCode
  loc_137BCFB: If (var_88 = CInt(0)) Then
  loc_137BD20:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_137BD40:     Set var_9C = Me.FGPoint
  loc_137BD6E:     Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, KeyCode, global_60, Shift)
  loc_137BD82:   End If
  loc_137BDDB:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_137BE01:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint, 0)
  loc_137BE0F:   End If
  loc_137BE12: Else
  loc_137BE1A:   If (var_88 = CInt(&HE)) Then
  loc_137BE45:     Set var_9C = Nothing
  loc_137BE77:     Proc_6_69_134A198(Me.DGRoomCat, Me.Txt, CInt(&HE), global_76, Shift, 0, 1)
  loc_137BEE6:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_137BEED:       Set var_9C = Me.DGRoomCat
  loc_137BF0C:       Proc_6_138_106D6F8(var_9C, global_76, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_137BF1A:     End If
  loc_137BF1D:   Else
  loc_137BF25:     If (var_88 = CInt(&H11)) Then
  loc_137BF33:       Set var_AC = Me.Txt
  loc_137BF45:       Set var_A4 = Me.FGPoint
  loc_137BF82:       Proc_6_69_134A198(Me.DGTaxStru, var_AC, CInt(&H11), global_80, Shift, 0, 1, Nothing)
  loc_137BFA1:       var_8C = Me.RecordCount
  loc_137BFF1:       If ((var_8C > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_137BFFF:         Set var_94 = Me.FGPoint
  loc_137C017:         Proc_6_138_106D6F8(Me.DGTaxStru, global_80, KeyCode, var_94, var_A4, 0)
  loc_137C025:       End If
  loc_137C028:     Else
  loc_137C030:       If (var_88 = CInt(4)) Then
  loc_137C03E:         Set var_90 = Me.Txt
  loc_137C044:         Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, 0, 1)
  loc_137C05F:         Proc_6_41_FA0BA4(var_94, Shift, 2, 5)
  loc_137C079:         Set var_90 = Me.Txt
  loc_137C07F:         Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, var_B8)
  loc_137C087:         var_9C = var_94.Text
  loc_137C0B5:         If ((CDbl(Val(var_B8)) = CDbl(0)) And ((Shift = &HD) Or (CLng(Shift) = 9))) Then
  loc_137C0C3:           Set var_90 = Me.Txt
  loc_137C0C9:           Call 0.Method_Txt_KeyDown0 (CInt(8), var_94)
  loc_137C0D1:           var_94.SetFocus
  loc_137C0DD:           Exit Sub
  loc_137C0DE:         End If
  loc_137C0E1:       Else
  loc_137C0E9:         If Not (var_88 = CInt(8)) Then
  loc_137C0F4:           If (var_88 = CInt(5)) Then
  loc_137C0F7:           End If
  loc_137C101:           Set var_90 = Me.Txt
  loc_137C107:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_94)
  loc_137C122:           Proc_6_41_FA0BA4(var_94, Shift, 7)
  loc_137C131:         Else
  loc_137C139:           If Not (var_88 = CInt(9)) Then
  loc_137C144:             If Not (var_88 = CInt(&HA)) Then
  loc_137C14F:               If (var_88 = CInt(&HB)) Then
  loc_137C152:               End If
  loc_137C152:             End If
  loc_137C15C:             Set var_90 = Me.Txt
  loc_137C162:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, 2)
  loc_137C17D:             Proc_6_41_FA0BA4(var_94, Shift, 2)
  loc_137C18C:           Else
  loc_137C194:             If (var_88 = CInt(&HF)) Then
  loc_137C1B9:               Set var_90 = Me.Txt
  loc_137C1BF:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C)
  loc_137C1C7:               0 = var_94.Left
  loc_137C1D9:               Set var_9C = Me.Txt
  loc_137C1DF:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_BC)
  loc_137C1E7:               0 = var_A4.Top
  loc_137C1F9:               Set var_A8 = Me.Txt
  loc_137C1FF:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_137C207:               var_C0 = var_AC.Height
  loc_137C219:               Set var_B4 = Me.Txt
  loc_137C21F:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_C4)
  loc_137C227:               var_C8 = var_C4.Width
  loc_137C26F:               Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_137C296:             Else
  loc_137C29E:               If (var_88 = CInt(7)) Then
  loc_137C2C3:                 Set var_90 = Me.Txt
  loc_137C2C9:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_8C, CInt(var_8C))
  loc_137C2D1:                 CInt((var_BC + var_C0)) = var_94.Left
  loc_137C2E3:                 Set var_9C = Me.Txt
  loc_137C2E9:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_BC)
  loc_137C2F1:                 CInt(var_C8) = var_A4.Top
  loc_137C303:                 Set var_A8 = Me.Txt
  loc_137C309:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_C0)
  loc_137C311:                 1200 = var_AC.Height
  loc_137C323:                 Set var_B4 = Me.Txt
  loc_137C329:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_C4)
  loc_137C331:                 var_C8 = var_C4.Width
  loc_137C379:                 Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_137C3A0:               Else
  loc_137C3A8:                 If (var_88 = CInt(6)) Then
  loc_137C3B5:                   Set var_90 = Me.Txt
  loc_137C3BB:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, CInt(var_8C), CInt((var_BC + var_C0)))
  loc_137C3F6:                   If (Left(Ucase(CVar(var_94)), 1) = "Y") Then
  loc_137C406:                     Set var_90 = Me.Txt
  loc_137C40C:                     Call 0.Method_Txt_KeyDown0 (CInt(7), var_94, &HFF)
  loc_137C414:                     var_94.Enabled = CInt(var_C8)
  loc_137C423:                   Else
  loc_137C430:                     Set var_90 = Me.Txt
  loc_137C436:                     Call 0.Method_Txt_KeyDown0 (CInt(7), var_94, 0)
  loc_137C43E:                     var_94.Enabled = True
  loc_137C458:                     Set var_90 = Me.Txt
  loc_137C45E:                     Call 0.Method_Txt_KeyDown0 (CInt(7), var_94)
  loc_137C466:                     var_94.Text = vbNullString
  loc_137C472:                   End If
  loc_137C472:                 End If
  loc_137C472:               End If
  loc_137C472:             End If
  loc_137C472:           End If
  loc_137C472:         End If
  loc_137C472:       End If
  loc_137C472:     End If
  loc_137C472:   End If
  loc_137C472: End If
  loc_137C4FE: If (((((CBool(Me.DGRoomCat.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) And (CBool(Me.DGRev.Visible) = 0)) And (CBool(Me.DGTaxStru.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_137C516:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_137C51F:     Proc_6_75_E527CC(Shift, arg_14)
  loc_137C524:   End If
  loc_137C52E:   If (CLng(Shift) = &H26) Then
  loc_137C537:     Proc_6_76_E52838(Shift, arg_14)
  loc_137C53C:   End If
  loc_137C53C: End If
  loc_137C53C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1161530
  'Data Table: 506778
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As Variant
  loc_116117E: Proc_6_133_E7EF78(var_94)
  loc_1161193: If (CInt(var_94) = &HD) Then
  loc_1161198:   arg_10 = 0
  loc_116119B: End If
  loc_116119E: Proc_6_58_E054C0(arg_10, arg_10)
  loc_11611A6: var_96 = KeyAscii
  loc_11611B1: If (var_96 = CInt(&HE)) Then
  loc_11611D0:   If (CBool(Me.DGRoomCat.Visible) = &HFF) Then
  loc_11611FD:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_116122F:     Proc_6_138_106D6F8(Me.DGRoomCat, global_76, KeyAscii, Me.FGPoint)
  loc_116123D:   End If
  loc_1161240: Else
  loc_1161248:   If (var_96 = CInt(&H11)) Then
  loc_1161267:     If (CBool(Me.DGTaxStru.Visible) = &HFF) Then
  loc_1161294:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_11612AE:       Set var_A8 = Me.FGPoint
  loc_11612C6:       Proc_6_138_106D6F8(Me.DGTaxStru, global_80, KeyAscii, var_A8, 0)
  loc_11612D4:     End If
  loc_11612D7:   Else
  loc_11612DF:     If Not (var_96 = CInt(3)) Then
  loc_11612EA:       If Not (var_96 = CInt(6)) Then
  loc_11612F5:         If (var_96 = CInt(&HD)) Then
  loc_11612F8:         End If
  loc_11612F8:       End If
  loc_1161321:       If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1161331:         Set var_9C = Me.Txt
  loc_1161337:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes", 0)
  loc_116133F:         var_A8.Text = var_96
  loc_116134E:       Else
  loc_1161377:         If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1161387:           Set var_9C = Me.Txt
  loc_116138D:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_1161395:           var_A8.Text = arg_10
  loc_11613A1:         End If
  loc_11613A1:       End If
  loc_11613A9:       If (KeyAscii = CInt(&HD)) Then
  loc_11613B6:         Set var_9C = Me.Txt
  loc_11613BC:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_11613E5:         If (Trim(CVar(var_A8)) = "Yes") Then
  loc_11613F4:           Set var_9C = Me.Label1
  loc_11613FA:           Call 0.Method_Txt_KeyPress0 (&HC, var_A8)
  loc_1161402:           var_A8.Caption = "Net Room Rate"
  loc_1161411:         Else
  loc_116141D:           Set var_9C = Me.Label1
  loc_1161423:           Call 0.Method_Txt_KeyPress0 (&HC, var_A8)
  loc_116142B:           var_A8.Caption = "Room Rate"
  loc_1161437:         End If
  loc_1161437:       End If
  loc_1161439:       arg_10 = 0
  loc_116143F:     Else
  loc_1161447:       If (var_96 = CInt(4)) Then
  loc_1161454:         Set var_9C = Me.Txt
  loc_116145A:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_1161475:         Proc_6_42_129A86C(var_A8, arg_10, 2)
  loc_1161484:       Else
  loc_116148C:         If Not (var_96 = CInt(8)) Then
  loc_1161497:           If (var_96 = CInt(5)) Then
  loc_116149A:           End If
  loc_11614A4:           Set var_9C = Me.Txt
  loc_11614AA:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 5)
  loc_11614C5:           Proc_6_42_129A86C(var_A8, arg_10, 7)
  loc_11614D4:         Else
  loc_11614DC:           If Not (var_96 = CInt(9)) Then
  loc_11614E7:             If Not (var_96 = CInt(&HA)) Then
  loc_11614F2:               If (var_96 = CInt(&HB)) Then
  loc_11614F5:               End If
  loc_11614F5:             End If
  loc_11614FF:             Set var_9C = Me.Txt
  loc_1161505:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_1161520:             Proc_6_42_129A86C(var_A8, arg_10, 2)
  loc_116152C:           End If
  loc_116152C:         End If
  loc_116152C:       End If
  loc_116152C:     End If
  loc_116152C:   End If
  loc_116152C: End If
  loc_116152C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '12ACF88
  'Data Table: 506778
  Dim var_96 As Integer
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim var_128 As Double
  Dim var_C4 As TextBox
  Dim var_130 As Double
  Dim var_D0 As TextBox
  Dim var_138 As Double
  Dim var_11C As TextBox
  Dim var_D4 As String
  loc_12AC983: var_96 = KeyCode
  loc_12AC98E: If (var_96 = CInt(0)) Then
  loc_12AC9C5:   If ((CBool(Me.DGHelp.Visible) = &HFF) And (Me.RecordCount > 0)) Then
  loc_12AC9D2:     var_B4 = "Name"
  loc_12AC9ED:     Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_60)
  loc_12ACA1F:     Proc_6_138_106D6F8(Me.DGHelp, global_60, KeyCode, Me.FGPoint)
  loc_12ACA2D:   End If
  loc_12ACA30: Else
  loc_12ACA38:   If (var_96 = CInt(&HF)) Then
  loc_12ACA56:     If (Me.FrmList.Visible = &HFF) Then
  loc_12ACA85:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_12ACA95:     End If
  loc_12ACA98:   Else
  loc_12ACAA0:     If (var_96 = CInt(7)) Then
  loc_12ACABE:       If (Me.FrmList.Visible = &HFF) Then
  loc_12ACACC:         Set var_C4 = Me.Txt
  loc_12ACADE:         Set var_B8 = var_C4
  loc_12ACAED:         Proc_6_64_F28E58(Me.ListView, var_B8, KeyCode, Shift, global_124)
  loc_12ACAFD:       End If
  loc_12ACB00:     Else
  loc_12ACB08:       If (var_96 = CInt(8)) Then
  loc_12ACB19:         Set var_9C = Me.Txt
  loc_12ACB1F:         Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8, var_B4, global_124)
  loc_12ACB27:         Shift = var_B8.Text
  loc_12ACB43:         If (CDbl(Val(var_B4)) > CDbl(0)) Then
  loc_12ACB54:           Set var_9C = Me.Txt
  loc_12ACB5A:           Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8, var_B4)
  loc_12ACB6F:           var_128 = Val(var_B8.Text)
  loc_12ACB80:           Set var_BC = Me.Txt
  loc_12ACB86:           Call 0.Method_Txt_KeyUp0 (CInt(9), var_C4, var_C8)
  loc_12ACB9B:           var_130 = Val(var_C8)
  loc_12ACBAC:           Set var_CC = Me.Txt
  loc_12ACBB2:           Call 0.Method_Txt_KeyUp0 (CInt(5), var_D0, var_D4)
  loc_12ACBC7:           var_138 = Val(var_D4)
  loc_12ACC0C:           Set var_118 = Me.Txt
  loc_12ACC12:           Call 0.Method_Txt_KeyUp0 (CInt(4), var_11C, CStr(Format(CVar((((var_C4.Text * var_D0.Text) * CDbl(&H64)) / var_138)), "0.00000")), 1)
  loc_12ACC1A:           var_11C.Text = 1
  loc_12ACC49:         Else
  loc_12ACC57:           Set var_9C = Me.Txt
  loc_12ACC5D:           Call 0.Method_Txt_KeyUp0 (CInt(4), var_B8, "0.00000")
  loc_12ACC65:           var_B8.Text = var_138
  loc_12ACC71:         End If
  loc_12ACC7F:         Set var_9C = Me.Txt
  loc_12ACC85:         Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8)
  loc_12ACC9A:         var_128 = Val(var_B8.Tag)
  loc_12ACCAB:         Set var_BC = Me.Txt
  loc_12ACCB1:         Call 0.Method_Txt_KeyUp0 (CInt(9), var_C4, var_C8)
  loc_12ACCC6:         var_130 = Val(var_C8)
  loc_12ACCE5:         var_AC = CVar((var_C4.Text * var_130)) 'Double
  loc_12ACCF4:         var_D4 = CStr(Format(var_AC, "0.00"))
  loc_12ACD03:         Set var_CC = Me.Txt
  loc_12ACD09:         Call 0.Method_Txt_KeyUp0 (CInt(&HC), var_D0, var_D4, 1)
  loc_12ACD11:         var_D0.Text = 1
  loc_12ACD3A:         Call Proc_150_70_101D074(var_AC, var_130)
  loc_12ACD45:       Else
  loc_12ACD4D:         If (var_96 = CInt(4)) Then
  loc_12ACD5E:           Set var_9C = Me.Txt
  loc_12ACD64:           Call 0.Method_Txt_KeyUp0 (CInt(4), var_B8)
  loc_12ACD88:           If (CDbl(Val(var_B8.Text)) > CDbl(0)) Then
  loc_12ACD99:             Set var_9C = Me.Txt
  loc_12ACD9F:             Call 0.Method_Txt_KeyUp0 (CInt(4), var_B8)
  loc_12ACDB4:             var_128 = Val(var_B8.Text)
  loc_12ACDC5:             Set var_BC = Me.Txt
  loc_12ACDCB:             Call 0.Method_Txt_KeyUp0 (CInt(5), var_C4, var_C8)
  loc_12ACDE0:             var_130 = Val(var_C8)
  loc_12ACDF1:             Set var_CC = Me.Txt
  loc_12ACDF7:             Call 0.Method_Txt_KeyUp0 (CInt(9), var_D0, var_D4)
  loc_12ACE0C:             var_138 = Val(var_D4)
  loc_12ACE51:             Set var_118 = Me.Txt
  loc_12ACE57:             Call 0.Method_Txt_KeyUp0 (CInt(8), var_11C, CStr(Format(CVar(((var_C4.Text * (var_D0.Text / var_138)) / CDbl(&H64))), "0")), 1)
  loc_12ACE5F:             var_11C.Text = 1
  loc_12ACE8E:           Else
  loc_12ACE9C:             Set var_9C = Me.Txt
  loc_12ACEA2:             Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8, "0.00")
  loc_12ACEAA:             var_B8.Text = var_138
  loc_12ACEB6:           End If
  loc_12ACEC4:           Set var_9C = Me.Txt
  loc_12ACECA:           Call 0.Method_Txt_KeyUp0 (CInt(8), var_B8)
  loc_12ACEDF:           var_128 = Val(var_B8.Text)
  loc_12ACEF0:           Set var_BC = Me.Txt
  loc_12ACEF6:           Call 0.Method_Txt_KeyUp0 (CInt(9), var_C4, var_C8)
  loc_12ACF0B:           var_130 = Val(var_C8)
  loc_12ACF2A:           var_AC = CVar((var_C4.Text * var_130)) 'Double
  loc_12ACF48:           Set var_CC = Me.Txt
  loc_12ACF4E:           Call 0.Method_Txt_KeyUp0 (CInt(&HC), var_D0, CStr(Format(var_AC, "0.00")), 1)
  loc_12ACF56:           var_D0.Text = 1
  loc_12ACF7F:           Call Proc_150_70_101D074(var_AC, var_130)
  loc_12ACF87:         End If
  loc_12ACF87:       End If
  loc_12ACF87:     End If
  loc_12ACF87:   End If
  loc_12ACF87: End If
  loc_12ACF87: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A2A4
  'Data Table: 506778
  loc_E4A282: Set var_88 = Me.Txt
  loc_E4A288: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A296: Proc_6_73_E22704(var_8C)
  loc_E4A2A2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13F12B0
  'Data Table: 506778
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As Variant
  Dim var_E8 As Variant
  Dim var_C4 As Variant
  Dim var_F8 As Variant
  Dim unk_5067A0 As Connection15
  Dim var_130 As Variant
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim arg_10 As Integer
  Dim var_158 As Variant
  Dim var_B0 As Recordset15
  loc_13F08C3: var_88 = Cancel
  loc_13F08CE: If (var_88 = CInt(&HE)) Then
  loc_13F091F:   Set var_94 = Me.Txt
  loc_13F0925:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_13F092D:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_13F0945:   If (var_88 Or (var_9C = vbNullString)) Then
  loc_13F0948:     Exit Sub
  loc_13F0949:   End If
  loc_13F0984:   Set var_B0 = Me.Txt
  loc_13F098A:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13F0992:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13F09C5:   var_98 = Me.Fields.Item("Code")
  loc_13F09E3:   Set var_B0 = Me.Txt
  loc_13F09E9:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13F09F1:   var_B4.Tag = CStr(var_98.Value)
  loc_13F0A0A: Else
  loc_13F0A12:   If (var_88 = CInt(&H11)) Then
  loc_13F0A63:     Set var_94 = Me.Txt
  loc_13F0A69:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F0A89:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_13F0A99:       Set var_94 = Me.Txt
  loc_13F0A9F:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F0AA7:       var_98.Tag = vbNullString
  loc_13F0AB3:       Exit Sub
  loc_13F0AB4:     End If
  loc_13F0AEF:     Set var_B0 = Me.Txt
  loc_13F0AF5:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13F0AFD:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13F0B30:     var_98 = Me.Fields.Item("Code")
  loc_13F0B4E:     Set var_B0 = Me.Txt
  loc_13F0B54:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_13F0B5C:     var_B4.Tag = CStr(var_98.Value)
  loc_13F0B75:   Else
  loc_13F0B7D:     If (var_88 = CInt(0)) Then
  loc_13F0B97:       If (Me.RecordCount = 0) Then
  loc_13F0B9A:         Exit Sub
  loc_13F0B9B:       End If
  loc_13F0BA9:       Set var_94 = Me.Txt
  loc_13F0BAF:       Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_13F0BCE:       If (var_98.Text <> vbNullString) Then
  loc_13F0BD5:         Set var_94 = Me.TopCtrl1
  loc_13F0BDB:         Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_13F0BE3:         var_9C = CStr()
  loc_13F0BF4:         If (var_9C = "Add") Then
  loc_13F0C24:           Set var_94 = Me.Txt
  loc_13F0C2A:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_12C, -1)
  loc_13F0C32:           var_130 = var_98.Text
  loc_13F0C42:           var_E8 = CVar(var_134 & var_9C & "' and App_Date=") 'String
  loc_13F0C50:           Set var_B0 = Me.Txt
  loc_13F0C56:           Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_E8)
  loc_13F0C65:           Proc_6_7_F25D88(var_D8, CVar(var_B4), 0)
  loc_13F0C6D:           var_F8 = var_148 & var_D8 
  loc_13F0C84:           unk_5067A0.Execute CStr(var_F8 & vbNullString), var_158, 
  loc_13F0C8C:            = var_130.Fields
  loc_13F0C94:            = var_134.Item()
  loc_13F0C9C:            = var_148.Value
  loc_13F0CD5:           If (var_158 > 0) Then
  loc_13F0CE3:             var_D8 = "Information"
  loc_13F0CF9:             MsgBox("Duplicate Name", &H40, var_D8, var_E8, var_F8)
  loc_13F0D14:             Set var_94 = Me.Txt
  loc_13F0D1A:             Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13F0D22:             var_98.SetFocus
  loc_13F0D30:             arg_10 = &HFF
  loc_13F0D33:             Exit Sub
  loc_13F0D34:           End If
  loc_13F0D37:         Else
  loc_13F0D64:           Set var_94 = Me.Txt
  loc_13F0D6A:           Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_178, -1, var_130)
  loc_13F0D72:           var_134 = var_98.Text
  loc_13F0D93:           var_E8 = CVar(0 & var_9C & "' And Name<>'" & global_84 & "' And App_Date=") 'String
  loc_13F0DA1:           Set var_B0 = Me.Txt
  loc_13F0DA7:           Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_E8, var_148)
  loc_13F0DB6:           Proc_6_7_F25D88(var_D8, CVar(var_B4), var_190)
  loc_13F0DBE:           var_F8 = arg_10 & var_D8 
  loc_13F0DD9:           Proc_6_7_F25D88(var_12C, global_88)
  loc_13F0DE1:           var_158 = var_F8 & " And App_date<>" & var_12C 
  loc_13F0DEF:           unk_5067A0.Execute CStr(var_158), var_98, 
  loc_13F0DF7:            = var_130.Fields
  loc_13F0DFF:            = var_134.Item()
  loc_13F0E07:            = var_148.Value
  loc_13F0E48:           If (var_190 > 0) Then
  loc_13F0E56:             var_D8 = "Information"
  loc_13F0E6C:             MsgBox("Duplicate Name", &H40, var_D8, var_E8, var_F8)
  loc_13F0E87:             Set var_94 = Me.Txt
  loc_13F0E8D:             Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13F0E95:             var_98.SetFocus
  loc_13F0EA3:             arg_10 = &HFF
  loc_13F0EA6:             Exit Sub
  loc_13F0EA7:           End If
  loc_13F0EA7:         End If
  loc_13F0EA7:       End If
  loc_13F0EAA:     Else
  loc_13F0EB2:       If (var_88 = CInt(2)) Then
  loc_13F0EBF:         Set var_94 = Me.Txt
  loc_13F0EC5:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F0EE5:         Set var_B4 = Me.Txt
  loc_13F0EEB:         Call 0.Method_Txt_Validate0 (Cancel, var_130)
  loc_13F0EF3:         var_130.Text = Proc_6_33_1512840(var_98, arg_10)
  loc_13F0F13:         Set var_94 = Me.Txt
  loc_13F0F19:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F0F21:         var_9C = var_98.Text
  loc_13F0F38:         If (var_9C = vbNullString) Then
  loc_13F0F3D:           arg_10 = &HFF
  loc_13F0F40:           Exit Sub
  loc_13F0F41:         End If
  loc_13F0F4F:         Set var_94 = Me.Txt
  loc_13F0F55:         Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C)
  loc_13F0F5D:         arg_10 = var_98.Text
  loc_13F0F74:         If (var_9C <> vbNullString) Then
  loc_13F0F7B:           Set var_94 = Me.TopCtrl1
  loc_13F0F81:           Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_13F0F89:           var_9C = CStr()
  loc_13F0F9A:           If (var_9C = "Add") Then
  loc_13F0FCA:             Set var_94 = Me.Txt
  loc_13F0FD0:             Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_12C, -1)
  loc_13F0FD8:             var_130 = var_98.Text
  loc_13F0FE8:             var_E8 = CVar(var_134 & var_9C & "' and App_date=") 'String
  loc_13F0FF6:             Set var_B0 = Me.Txt
  loc_13F0FFC:             Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_E8)
  loc_13F100B:             Proc_6_7_F25D88(var_D8, CVar(var_B4), 0)
  loc_13F1013:             var_F8 = var_148 & var_D8 
  loc_13F102A:             unk_5067A0.Execute CStr(var_F8 & vbNullString), var_158, 
  loc_13F1032:              = var_130.Fields
  loc_13F103A:              = var_134.Item()
  loc_13F1042:              = var_148.Value
  loc_13F107B:             If (var_158 > 0) Then
  loc_13F1089:               var_D8 = "Information"
  loc_13F1099:               var_C4 = "Duplicate Name"
  loc_13F109F:               MsgBox(var_C4, &H40, var_D8, var_E8, var_F8)
  loc_13F10BA:               Set var_94 = Me.Txt
  loc_13F10C0:               Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13F10C8:               var_98.SetFocus
  loc_13F10D6:               arg_10 = &HFF
  loc_13F10D9:               Exit Sub
  loc_13F10DA:             End If
  loc_13F10DD:           Else
  loc_13F110A:             Set var_94 = Me.Txt
  loc_13F1110:             Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_9C, "Select Count(*) From PlanMast Where Name='", var_C4, -1, var_B0)
  loc_13F1142:             unk_5067A0.Execute 0 & var_9C & "' And Name<>'" & global_84 & "'", var_130, var_D8
  loc_13F114A:             arg_10 = var_B0.Fields
  loc_13F1152:              = var_98.Text.Item(var_98)
  loc_13F115A:              = var_130.Value
  loc_13F118B:             If (var_D8 > 0) Then
  loc_13F11AF:               MsgBox("Duplicate Name", &H40, "Information", var_E8, var_F8)
  loc_13F11CA:               Set var_94 = Me.Txt
  loc_13F11D0:               Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13F11D8:               var_98.SetFocus
  loc_13F11E6:               arg_10 = &HFF
  loc_13F11E9:               Exit Sub
  loc_13F11EA:             End If
  loc_13F11EA:           End If
  loc_13F11EA:         End If
  loc_13F11ED:       Else
  loc_13F11F5:         If Not (var_88 = CInt(3)) Then
  loc_13F1200:           If Not (var_88 = CInt(6)) Then
  loc_13F120B:             If (var_88 = CInt(&HD)) Then
  loc_13F120E:             End If
  loc_13F120E:           End If
  loc_13F1218:           Set var_94 = Me.Txt
  loc_13F121E:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F1259:           If (Ucase(Left(CVar(var_98), 1)) = "Y") Then
  loc_13F1269:             Set var_94 = Me.Txt
  loc_13F126F:             Call 0.Method_Txt_Validate0 (Cancel, var_98, "Yes")
  loc_13F1277:             var_98.Text = arg_10
  loc_13F1286:           Else
  loc_13F1293:             Set var_94 = Me.Txt
  loc_13F1299:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13F12A1:             var_98.Text = "No"
  loc_13F12AD:           End If
  loc_13F12AD:         End If
  loc_13F12AD:       End If
  loc_13F12AD:     End If
  loc_13F12AD:   End If
  loc_13F12AD: End If
  loc_13F12AD: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E86548
  'Data Table: 506778
  loc_E864F4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E864F7:   Call DGHelp_UnknownEvent_9()
  loc_E864FC: End If
  loc_E86518: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_E8651B:   Call DGRev_UnknownEvent_9()
  loc_E86520: End If
  loc_E8653C: If (CBool(Me.DGTokenRev.Visible) = &HFF) Then
  loc_E8653F:   Call DGTokenRev_UnknownEvent_9()
  loc_E86544: End If
  loc_E86544: Exit Sub
  loc_E86545: Set var_B4 = 
End Sub

Private Sub Fgrid1_UnknownEvent_0 'EA7EF4
  'Data Table: 506778
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA7E8F: If (CDbl(CLng(Me.FGrid1.BackColorSel)) = CDbl(global_104)) Then
  loc_EA7EA5:   Me.FGrid1.Col = 1
  loc_EA7EAD: End If
  loc_EA7EC0: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_EA7ED3: Set var_88 = Me.TxtGrid
  loc_EA7ED9: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_BC)
  loc_EA7EE1: var_BC.Visible = False
  loc_EA7EED: Call Proc_150_61_F1FA44()
  loc_EA7EF2: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E6D23C
  'Data Table: 506778
  Dim var_8C As TextBox
  loc_E6D1F7: Set var_88 = Me.TxtGrid
  loc_E6D1FD: Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_8C)
  loc_E6D205: var_8C.Visible = False
  loc_E6D215: Set var_88 = Me.TopCtrl1
  loc_E6D21B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E6D234: If (CStr() = "Browse") Then
  loc_E6D237:   Exit Sub
  loc_E6D238: End If
  loc_E6D238: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '1193118
  'Data Table: 506778
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1192D1C: On Error Goto loc_119310F
  loc_1192D23: Set var_88 = Me.TopCtrl1
  loc_1192D29: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1192D42: If (CStr() = "Browse") Then
  loc_1192D45:   Exit Sub
  loc_1192D46: End If
  loc_1192DBA: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_1192DD0:   Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_1192DE0:   var_9C = "+{Tab}"
  loc_1192DE6:   Proc_303_0_FB9B68(CStr(Me.FGrid1.Tag), 0)
  loc_1192DF0:   Cancel = 0
  loc_1192DF6: Else
  loc_1192E4D:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_1192E63:     Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_1192E6B:   End If
  loc_1192E6B: End If
  loc_1192E71: global_92 = Cancel
  loc_1192E97: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_1192EBB: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1192ED1:   var_EC = CLng(Me.FGrid1.Col)
  loc_1192EE1:   If (var_EC = CLng(1)) Then
  loc_1192EF7:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1192EFF:     var_FC = CVar(CLng(1)) 'Long
  loc_1192F04:     var_11C = vbNullString
  loc_1192F0E:     Set var_A0 = Me.FGrid1
  loc_1192F14:     LateIdCallSt
  loc_1192F39:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1192F41:     var_FC = CVar(CLng(2)) 'Long
  loc_1192F46:     var_11C = vbNullString
  loc_1192F50:     Set var_A0 = Me.FGrid1
  loc_1192F56:     LateIdCallSt
  loc_1192F7B:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1192F83:     var_FC = CVar(CLng(3)) 'Long
  loc_1192F88:     var_11C = vbNullString
  loc_1192F92:     Set var_A0 = Me.FGrid1
  loc_1192F98:     LateIdCallSt
  loc_1192FBD:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1192FC5:     var_FC = CVar(CLng(4)) 'Long
  loc_1192FCA:     var_11C = vbNullString
  loc_1192FD4:     Set var_A0 = Me.FGrid1
  loc_1192FDA:     LateIdCallSt
  loc_1192FFF:     var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1193007:     var_FC = CVar(CLng(5)) 'Long
  loc_119300C:     var_11C = vbNullString
  loc_1193016:     Set var_A0 = Me.FGrid1
  loc_119301C:     LateIdCallSt
  loc_1193031:   Else
  loc_1193038:     If (var_EC = CLng(3)) Then
  loc_119304E:       var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1193066:       var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_119306B:       var_11C = "0.00"
  loc_1193075:       Set var_B4 = Me.FGrid1
  loc_119307B:       LateIdCallSt
  loc_1193096:     Else
  loc_119309D:       If (var_EC = CLng(4)) Then
  loc_11930B3:         var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11930CB:         var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_11930D0:         var_11C = "0.00"
  loc_11930DA:         Set var_B4 = Me.FGrid1
  loc_11930E0:         LateIdCallSt
  loc_11930F8:       End If
  loc_11930F8:     End If
  loc_11930F8:   End If
  loc_11930F8: End If
  loc_11930FE: If (Cancel = &HD) Then
  loc_1193106:   global_94 = 0
  loc_1193109: End If
  loc_119310B: Cancel = 0
  loc_119310E: Exit Sub
  loc_119310F: ' Referenced from: 1192D1C
  loc_119310F: Proc_6_60_E62BC4(Cancel, global_94, var_B4, var_11C, var_FC, var_D4, var_B4, var_11C)
  loc_1193114: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'EFCA9C
  'Data Table: 506778
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_EFC9D0: On Error Goto loc_EFCA93
  loc_EFC9D7: Set var_88 = Me.TopCtrl1
  loc_EFC9DD: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EFC9F6: If (CStr() = "Browse") Then
  loc_EFC9F9:   Exit Sub
  loc_EFC9FA: End If
  loc_EFCA0D: var_A0 = CLng(Me.FGrid1.Col)
  loc_EFCA1D: If Not (var_A0 = CLng(1)) Then
  loc_EFCA27:   If Not (var_A0 = CLng(3)) Then
  loc_EFCA31:     If (var_A0 = CLng(4)) Then
  loc_EFCA34:     End If
  loc_EFCA34:   End If
  loc_EFCA4C:   var_9C = 0
  loc_EFCA75:   Proc_6_61_1077428(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_EFCA8A: End If
  loc_EFCA8F: global_94 = 0
  loc_EFCA92: Exit Sub
  loc_EFCA93: ' Referenced from: EFC9D0
  loc_EFCA93: Proc_6_60_E62BC4(global_94, var_9C)
  loc_EFCA98: Exit Sub
  loc_EFCA9B: 0 = var_A0
End Sub

Private Sub Fgrid1_UnknownEvent_C 'F6347C
  'Data Table: 506778
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F63358: On Error Goto loc_F63475
  loc_F6335F: Set var_88 = Me.TopCtrl1
  loc_F63365: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F6337E: If (CStr() = "Browse") Then
  loc_F63381:   Exit Sub
  loc_F63382: End If
  loc_F63395: var_A0 = CLng(Me.FGrid1.Col)
  loc_F633A5: If (var_A0 = CLng(1)) Then
  loc_F633E6:   Proc_6_63_110ABA4(Me, Me.FGrid1, Me.TxtGrid, 1)
  loc_F633FB: Else
  loc_F63402:   If Not (var_A0 = CLng(3)) Then
  loc_F6340C:     If (var_A0 = CLng(4)) Then
  loc_F6340F:     End If
  loc_F6344D:     Proc_6_63_110ABA4(Me, Me.FGrid1, Me.TxtGrid, 1, &HFF, Cancel)
  loc_F6345F:   End If
  loc_F6345F: End If
  loc_F63469: If (CLng(Cancel) <> &HD) Then
  loc_F63471:   global_94 = &HFF
  loc_F63474: End If
  loc_F63474: Exit Sub
  loc_F63475: ' Referenced from: F63358
  loc_F63475: Proc_6_60_E62BC4(global_94, 0, 0)
  loc_F6347A: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FDCE70
  'Data Table: 506778
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FDCC9C: On Error Goto loc_FDCE69
  loc_FDCCA3: Set var_8C = Me.TopCtrl1
  loc_FDCCA9: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FDCCC2: If (CStr() = "Browse") Then
  loc_FDCCC5:   Exit Sub
  loc_FDCCC6: End If
  loc_FDCCE3: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FDCCE6:   Exit Sub
  loc_FDCCE7: End If
  loc_FDCCF8: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FDCD1A:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_FDCD54:     If (MsgBox("Delete for Sure?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FDCD76:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FDCD8C:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FDCD95:         Set var_114 = Me.FGrid1
  loc_FDCDB0:       Else
  loc_FDCDC3:         Me.FGrid1.Rows = 1
  loc_FDCDE0:         var_D0 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_FDCDE8:         Set var_114 = Me.FGrid1
  loc_FDCE17:         Me.FGrid1.FixedRows = 1
  loc_FDCE1F:       End If
  loc_FDCE1F:     End If
  loc_FDCE22:   Else
  loc_FDCE2D:     var_D0 = "Delete Module"
  loc_FDCE43:     MsgBox("No Entries To Delete", &H10, var_D0, var_F0, var_110)
  loc_FDCE53:   End If
  loc_FDCE57:   Set var_8C = Me.FGrid1
  loc_FDCE68: End If
  loc_FDCE68: Exit Sub
  loc_FDCE69: ' Referenced from: FDCC9C
  loc_FDCE69: Proc_6_60_E62BC4(FGrid1.DispID_8001, FGrid1.DispID_10000, var_D0)
  loc_FDCE6E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'E1EAF0
  'Data Table: 506778
  loc_E1EAE7: Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_E1EAEF: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E40C60
  'Data Table: 506778
  Dim var_8C As TextBox
  loc_E40C3F: Set var_88 = Me.TxtGrid
  loc_E40C45: Call 0.Method_Fgrid1_UnknownEvent_150 (1, var_8C)
  loc_E40C4D: var_8C.Visible = False
  loc_E40C59: Call Proc_150_61_F1FA44()
  loc_E40C5E: Exit Sub
End Sub

Private Sub DGRev_UnknownEvent_9 'F51FAC
  'Data Table: 506778
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F51EA7: If (Me.RecordCount > 0) Then
  loc_F51ECD:   If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_F51EED:     var_B4 = Me.Fields.Item("Name")
  loc_F51F0A:     Set var_B8 = Me.TxtGrid
  loc_F51F10:     Call 0.Method_DGRev_UnknownEvent_90 (0, var_BC)
  loc_F51F18:     var_BC.Text = CStr(var_B4.Value)
  loc_F51F2E:   End If
  loc_F51F2E: End If
  loc_F51F3B: Call Proc_150_68_19529BC(0, 0)
  loc_F51F4C: Set var_8C = Me.TxtGrid
  loc_F51F52: Call 0.Method_DGRev_UnknownEvent_90 (0, var_B4, var_C2)
  loc_F51F5A: var_C6 = var_B4.Visible
  loc_F51F6C: If (var_C2 = &HFF) Then
  loc_F51F78:   Set var_8C = Me.TxtGrid
  loc_F51F7E:   Call 0.Method_DGRev_UnknownEvent_90 (0, var_B4)
  loc_F51F86:   var_B4.SetFocus
  loc_F51F92: End If
  loc_F51FA1: Me.DGRev.Visible = False
  loc_F51FA9: Exit Sub
End Sub

Private Sub DGRev_UnknownEvent_1F 'E58B44
  'Data Table: 506778
  loc_E58B17: Set var_90 = Me.FGPoint
  loc_E58B33: Proc_6_138_106D6F8(Me.DGRev, global_64)
  loc_E58B41: Exit Sub
End Sub

Public Function MasterFormExitGet() '507C9C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '507CAB
  MasterFormExit = Value
End Sub

Public Function global_56Get() '507CBA
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '507CC9
  global_56 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E94C88
  'Data Table: 506778
  Dim Me As Recordset15
  loc_E94C16: On Error Goto loc_E94C7F
  loc_E94C1F: Me.MoveFirst
  loc_E94C49: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E94C71: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E94C79: Call Proc_150_67_16C5688(0)
  loc_E94C7E: Exit Sub
  loc_E94C7F: ' Referenced from: E94C16
  loc_E94C7F: Proc_6_60_E62BC4(var_A0)
  loc_E94C84: Exit Sub
End Sub

Public Sub Proc_150_61_F1FA44
  'Data Table: 506778
  loc_F1F954: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F1F966:   Me.DGHelp.Visible = False
  loc_F1F96E: End If
  loc_F1F98A: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_F1F99C:   Me.DGRev.Visible = False
  loc_F1F9A4: End If
  loc_F1F9C0: If (CBool(Me.DGTokenRev.Visible) = &HFF) Then
  loc_F1F9D2:   Me.DGTokenRev.Visible = False
  loc_F1F9DA: End If
  loc_F1F9F6: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F1FA08:   Me.FGPoint.Visible = False
  loc_F1FA10: End If
  loc_F1FA2B: If (Me.FrmList.Visible = &HFF) Then
  loc_F1FA3A:   Me.FrmList.Visible = False
  loc_F1FA42: End If
  loc_F1FA42: Exit Sub
End Sub

Public Sub Proc_150_62_FD7EC4
  'Data Table: 506778
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_FD7CF2: global_84 = vbNullString
  loc_FD7CFC: global_88 = vbNullString
  loc_FD7D0E: Set var_8C = Me.Txt
  loc_FD7D14: Call 0.Method_Proc_150_62_FD7EC4C (var_8E, var_86)
  loc_FD7D24: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FD7D3A:   Set var_8C = Me.Txt
  loc_FD7D40:   Call 0.Method_Proc_150_62_FD7EC40 (CInt(var_86), var_98)
  loc_FD7D48:   var_98.Text = vbNullString
  loc_FD7D64:   Set var_8C = Me.Txt
  loc_FD7D6A:   Call 0.Method_Proc_150_62_FD7EC40 (CInt(var_86), var_98)
  loc_FD7D72:   var_98.Tag = vbNullString
  loc_FD7D81: Next var_92 'Byte
  loc_FD7D92: If (global_56 = "Plan") Then
  loc_FD7DA3:   Set var_8C = Me.Txt
  loc_FD7DA9:   Call 0.Method_Proc_150_62_FD7EC40 (CInt(9), var_98)
  loc_FD7DB1:   var_98.Text = "1"
  loc_FD7DCA:   Set var_8C = Me.Txt
  loc_FD7DD0:   Call 0.Method_Proc_150_62_FD7EC40 (CInt(9), var_98)
  loc_FD7DD8:   var_98.Enabled = False
  loc_FD7DE4: End If
  loc_FD7DF7: Me.FGrid.Rows = 1
  loc_FD7E14: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD7E1C: Set var_98 = Me.FGrid
  loc_FD7E4B: Me.FGrid.FixedRows = 1
  loc_FD7E66: Me.FGrid1.Rows = 1
  loc_FD7E83: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FD7E8B: Set var_98 = Me.FGrid1
  loc_FD7EBA: Me.FGrid1.FixedRows = 1
  loc_FD7EC2: Exit Sub
End Sub

Public Sub Proc_150_63_EB2180(arg_C) 'EB2180
  'Data Table: 506778
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_EB20F2: Set var_8C = Me.Txt
  loc_EB20F8: Call 0.Method_Proc_150_63_EB2180C (var_8E, var_86)
  loc_EB2108: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB211E:   Set var_8C = Me.Txt
  loc_EB2124:   Call 0.Method_Proc_150_63_EB21800 (CInt(var_86), var_98)
  loc_EB212C:   var_98.Enabled = arg_C
  loc_EB213B: Next var_92 'Byte
  loc_EB214E: Me.Check1.Enabled = arg_C
  loc_EB2163: Set var_8C = Me.Txt
  loc_EB2169: Call 0.Method_Proc_150_63_EB21800 (CInt(1), var_98)
  loc_EB2171: var_98.Enabled = False
  loc_EB217D: Exit Sub
End Sub

Public Sub Proc_150_64_ED62C0
  'Data Table: 506778
  loc_ED6220: Call Proc_150_61_F1FA44()
  loc_ED6230: Set var_88 = Me.Txt
  loc_ED6236: Call 0.Method_Proc_150_64_ED62C00 (CInt(0))
  loc_ED625F: If (Proc_6_27_EA565C(var_8C, "Name") = 0) Then
  loc_ED6262:   Exit Sub
  loc_ED6263: End If
  loc_ED629A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED629D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED62A5: Else
  loc_ED62AB:   Call 0.Method_arg_1E8 (var_88)
  loc_ED62B3:   Call var_88.SetFocus
  loc_ED62BC: End If
  loc_ED62BC: Exit Sub
End Sub

Public Sub Proc_150_65_13915B4
  'Data Table: 506778
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_1390CC9: global_104 = CStr(&HC9FCF7)
  loc_1390CE3: Me.FGrid.Cols = &H15
  loc_1390CE8: var_9C = 0
  loc_1390CF4: var_BC = CVar(CLng(0)) 'Long
  loc_1390CF9: var_DC = "No."
  loc_1390D02: LateIdCallSt
  loc_1390D0D: var_9C = CVar(CLng(0)) 'Long
  loc_1390D18: var_BC = CVar(CInt(4)) 'Integer
  loc_1390D1F: LateIdCallSt
  loc_1390D2A: var_9C = CVar(CLng(0)) 'Long
  loc_1390D35: var_BC = CVar(CInt(4)) 'Integer
  loc_1390D3C: LateIdCallSt
  loc_1390D47: var_9C = CVar(CLng(0)) 'Long
  loc_1390D4C: var_BC = 5
  loc_1390D58: LateIdCallSt
  loc_1390D60: var_9C = 0
  loc_1390D6C: var_BC = CVar(CLng(1)) 'Long
  loc_1390D71: var_DC = "Fixed Charge"
  loc_1390D7A: LateIdCallSt
  loc_1390D85: var_9C = CVar(CLng(1)) 'Long
  loc_1390D90: var_BC = CVar(CInt(1)) 'Integer
  loc_1390D97: LateIdCallSt
  loc_1390DA2: var_9C = CVar(CLng(1)) 'Long
  loc_1390DAD: var_BC = CVar(CInt(1)) 'Integer
  loc_1390DB4: LateIdCallSt
  loc_1390DBF: var_9C = CVar(CLng(1)) 'Long
  loc_1390DC4: var_BC = &H7D0
  loc_1390DD0: LateIdCallSt
  loc_1390DDB: var_9C = CVar(CLng(2)) 'Long
  loc_1390DE0: var_BC = 0
  loc_1390DEC: LateIdCallSt
  loc_1390DF7: var_9C = CVar(CLng(&H11)) 'Long
  loc_1390DFC: var_BC = 0
  loc_1390E08: LateIdCallSt
  loc_1390E10: var_9C = 0
  loc_1390E1C: var_BC = CVar(CLng(3)) 'Long
  loc_1390E21: var_DC = "TaxStru"
  loc_1390E2A: LateIdCallSt
  loc_1390E35: var_9C = CVar(CLng(3)) 'Long
  loc_1390E40: var_BC = CVar(CInt(1)) 'Integer
  loc_1390E47: LateIdCallSt
  loc_1390E52: var_9C = CVar(CLng(3)) 'Long
  loc_1390E5D: var_BC = CVar(CInt(1)) 'Integer
  loc_1390E64: LateIdCallSt
  loc_1390E6F: var_9C = CVar(CLng(3)) 'Long
  loc_1390E74: var_BC = 0
  loc_1390E80: LateIdCallSt
  loc_1390E8B: var_9C = CVar(CLng(4)) 'Long
  loc_1390E90: var_BC = 0
  loc_1390E9C: LateIdCallSt
  loc_1390EA4: var_9C = 0
  loc_1390EB0: var_BC = CVar(CLng(5)) 'Long
  loc_1390EB5: var_DC = "Tax Inc"
  loc_1390EBE: LateIdCallSt
  loc_1390EC9: var_9C = CVar(CLng(5)) 'Long
  loc_1390ED4: var_BC = CVar(CInt(4)) 'Integer
  loc_1390EDB: LateIdCallSt
  loc_1390EE6: var_9C = CVar(CLng(5)) 'Long
  loc_1390EF1: var_BC = CVar(CInt(4)) 'Integer
  loc_1390EF8: LateIdCallSt
  loc_1390F03: var_9C = CVar(CLng(5)) 'Long
  loc_1390F08: var_BC = &H3E8
  loc_1390F14: LateIdCallSt
  loc_1390F1C: var_9C = 0
  loc_1390F28: var_BC = CVar(CLng(6)) 'Long
  loc_1390F2D: var_DC = "Fix Rate"
  loc_1390F36: LateIdCallSt
  loc_1390F41: var_9C = CVar(CLng(6)) 'Long
  loc_1390F4C: var_BC = CVar(CInt(4)) 'Integer
  loc_1390F53: LateIdCallSt
  loc_1390F5E: var_9C = CVar(CLng(6)) 'Long
  loc_1390F69: var_BC = CVar(CInt(4)) 'Integer
  loc_1390F70: LateIdCallSt
  loc_1390F7B: var_9C = CVar(CLng(6)) 'Long
  loc_1390F80: var_BC = &H3E8
  loc_1390F8C: LateIdCallSt
  loc_1390F94: var_9C = 0
  loc_1390FA0: var_BC = CVar(CLng(7)) 'Long
  loc_1390FA5: var_DC = "Adult"
  loc_1390FAE: LateIdCallSt
  loc_1390FB9: var_9C = CVar(CLng(7)) 'Long
  loc_1390FC4: var_BC = CVar(CInt(1)) 'Integer
  loc_1390FCB: LateIdCallSt
  loc_1390FD6: var_9C = CVar(CLng(7)) 'Long
  loc_1390FE1: var_BC = CVar(CInt(1)) 'Integer
  loc_1390FE8: LateIdCallSt
  loc_1390FF3: var_9C = CVar(CLng(7)) 'Long
  loc_1390FF8: var_BC = &H384
  loc_1391004: LateIdCallSt
  loc_139100C: var_9C = 0
  loc_1391018: var_BC = CVar(CLng(8)) 'Long
  loc_139101D: var_DC = "Child"
  loc_1391026: LateIdCallSt
  loc_1391031: var_9C = CVar(CLng(8)) 'Long
  loc_139103C: var_BC = CVar(CInt(1)) 'Integer
  loc_1391043: LateIdCallSt
  loc_139104E: var_9C = CVar(CLng(8)) 'Long
  loc_1391059: var_BC = CVar(CInt(1)) 'Integer
  loc_1391060: LateIdCallSt
  loc_139106B: var_9C = CVar(CLng(8)) 'Long
  loc_1391070: var_BC = &H384
  loc_139107C: LateIdCallSt
  loc_1391084: var_9C = 0
  loc_1391090: var_BC = CVar(CLng(9)) 'Long
  loc_1391095: var_DC = "Extra Adult"
  loc_139109E: LateIdCallSt
  loc_13910A9: var_9C = CVar(CLng(9)) 'Long
  loc_13910B4: var_BC = CVar(CInt(1)) 'Integer
  loc_13910BB: LateIdCallSt
  loc_13910C6: var_9C = CVar(CLng(9)) 'Long
  loc_13910D1: var_BC = CVar(CInt(1)) 'Integer
  loc_13910D8: LateIdCallSt
  loc_13910E3: var_9C = CVar(CLng(9)) 'Long
  loc_13910E8: var_BC = 0
  loc_13910F4: LateIdCallSt
  loc_13910FC: var_9C = 0
  loc_1391108: var_BC = CVar(CLng(&HA)) 'Long
  loc_139110D: var_DC = "Extra Child"
  loc_1391116: LateIdCallSt
  loc_1391121: var_9C = CVar(CLng(&HA)) 'Long
  loc_139112C: var_BC = CVar(CInt(1)) 'Integer
  loc_1391133: LateIdCallSt
  loc_139113E: var_9C = CVar(CLng(&HA)) 'Long
  loc_1391149: var_BC = CVar(CInt(1)) 'Integer
  loc_1391150: LateIdCallSt
  loc_139115B: var_9C = CVar(CLng(&HA)) 'Long
  loc_1391160: var_BC = 0
  loc_139116C: LateIdCallSt
  loc_1391174: var_9C = 0
  loc_1391180: var_BC = CVar(CLng(&HB)) 'Long
  loc_1391185: var_DC = "Occurrence"
  loc_139118E: LateIdCallSt
  loc_1391199: var_9C = CVar(CLng(&HB)) 'Long
  loc_13911A4: var_BC = CVar(CInt(1)) 'Integer
  loc_13911AB: LateIdCallSt
  loc_13911B6: var_9C = CVar(CLng(&HB)) 'Long
  loc_13911C1: var_BC = CVar(CInt(1)) 'Integer
  loc_13911C8: LateIdCallSt
  loc_13911D3: var_9C = CVar(CLng(&HB)) 'Long
  loc_13911D8: var_BC = &H4B0
  loc_13911E4: LateIdCallSt
  loc_13911EC: var_9C = 0
  loc_13911F8: var_BC = CVar(CLng(&H10)) 'Long
  loc_13911FD: var_DC = "Tax Amount"
  loc_1391206: LateIdCallSt
  loc_1391211: var_9C = CVar(CLng(&H10)) 'Long
  loc_139121C: var_BC = CVar(CInt(1)) 'Integer
  loc_1391223: LateIdCallSt
  loc_139122E: var_9C = CVar(CLng(&H10)) 'Long
  loc_1391239: var_BC = CVar(CInt(1)) 'Integer
  loc_1391240: LateIdCallSt
  loc_139124B: var_9C = CVar(CLng(&H10)) 'Long
  loc_1391250: var_BC = 0
  loc_139125C: LateIdCallSt
  loc_1391264: var_9C = 0
  loc_1391270: var_BC = CVar(CLng(&HC)) 'Long
  loc_1391275: var_DC = "Print Option"
  loc_139127E: LateIdCallSt
  loc_1391289: var_9C = CVar(CLng(&HC)) 'Long
  loc_1391294: var_BC = CVar(CInt(1)) 'Integer
  loc_139129B: LateIdCallSt
  loc_13912A6: var_9C = CVar(CLng(&HC)) 'Long
  loc_13912B1: var_BC = CVar(CInt(1)) 'Integer
  loc_13912B8: LateIdCallSt
  loc_13912C3: var_9C = CVar(CLng(&HC)) 'Long
  loc_13912C8: var_BC = 0
  loc_13912D4: LateIdCallSt
  loc_13912DC: var_9C = 0
  loc_13912E8: var_BC = CVar(CLng(&HD)) 'Long
  loc_13912ED: var_DC = "Posting Method"
  loc_13912F6: LateIdCallSt
  loc_1391301: var_9C = CVar(CLng(&HD)) 'Long
  loc_139130C: var_BC = CVar(CInt(1)) 'Integer
  loc_1391313: LateIdCallSt
  loc_139131E: var_9C = CVar(CLng(&HD)) 'Long
  loc_1391329: var_BC = CVar(CInt(1)) 'Integer
  loc_1391330: LateIdCallSt
  loc_139133B: var_9C = CVar(CLng(&HD)) 'Long
  loc_1391340: var_BC = 0
  loc_139134C: LateIdCallSt
  loc_1391354: var_9C = 0
  loc_1391360: var_BC = CVar(CLng(&HE)) 'Long
  loc_1391365: var_DC = "Charge Type"
  loc_139136E: LateIdCallSt
  loc_1391379: var_9C = CVar(CLng(&HE)) 'Long
  loc_1391384: var_BC = CVar(CInt(1)) 'Integer
  loc_139138B: LateIdCallSt
  loc_1391396: var_9C = CVar(CLng(&HE)) 'Long
  loc_13913A1: var_BC = CVar(CInt(1)) 'Integer
  loc_13913A8: LateIdCallSt
  loc_13913B3: var_9C = CVar(CLng(&HE)) 'Long
  loc_13913B8: var_BC = 0
  loc_13913C4: LateIdCallSt
  loc_13913CC: var_9C = 0
  loc_13913D8: var_BC = CVar(CLng(&HF)) 'Long
  loc_13913DD: var_DC = "Flat Rate"
  loc_13913E6: LateIdCallSt
  loc_13913F1: var_9C = CVar(CLng(&HF)) 'Long
  loc_13913FC: var_BC = CVar(CInt(1)) 'Integer
  loc_1391403: LateIdCallSt
  loc_139140E: var_9C = CVar(CLng(&HF)) 'Long
  loc_1391419: var_BC = CVar(CInt(1)) 'Integer
  loc_1391420: LateIdCallSt
  loc_139142B: var_9C = CVar(CLng(&HF)) 'Long
  loc_1391430: var_BC = &H3E8
  loc_139143C: LateIdCallSt
  loc_1391444: var_9C = 0
  loc_1391450: var_BC = CVar(CLng(&H12)) 'Long
  loc_1391455: var_DC = "Percentage"
  loc_139145E: LateIdCallSt
  loc_1391469: var_9C = CVar(CLng(&H12)) 'Long
  loc_1391474: var_BC = CVar(CInt(7)) 'Integer
  loc_139147B: LateIdCallSt
  loc_1391486: var_9C = CVar(CLng(&H12)) 'Long
  loc_1391491: var_BC = CVar(CInt(7)) 'Integer
  loc_1391498: LateIdCallSt
  loc_13914A3: var_9C = CVar(CLng(&H12)) 'Long
  loc_13914A8: var_BC = &H578
  loc_13914B4: LateIdCallSt
  loc_13914BC: var_9C = 0
  loc_13914C8: var_BC = CVar(CLng(&H13)) 'Long
  loc_13914CD: var_DC = "Amount/Day"
  loc_13914D6: LateIdCallSt
  loc_13914E1: var_9C = CVar(CLng(&H13)) 'Long
  loc_13914EC: var_BC = CVar(CInt(7)) 'Integer
  loc_13914F3: LateIdCallSt
  loc_13914FE: var_9C = CVar(CLng(&H13)) 'Long
  loc_1391509: var_BC = CVar(CInt(7)) 'Integer
  loc_1391510: LateIdCallSt
  loc_139151B: var_9C = CVar(CLng(&H13)) 'Long
  loc_1391520: var_BC = &H578
  loc_139152C: LateIdCallSt
  loc_1391534: var_9C = 0
  loc_1391540: var_BC = CVar(CLng(&H14)) 'Long
  loc_1391545: var_DC = "Net Amt"
  loc_139154E: LateIdCallSt
  loc_1391559: var_9C = CVar(CLng(&H14)) 'Long
  loc_1391564: var_BC = CVar(CInt(7)) 'Integer
  loc_139156B: LateIdCallSt
  loc_1391576: var_9C = CVar(CLng(&H14)) 'Long
  loc_1391581: var_BC = CVar(CInt(7)) 'Integer
  loc_1391588: LateIdCallSt
  loc_1391593: var_9C = CVar(CLng(&H14)) 'Long
  loc_1391598: var_BC = &H4B0
  loc_13915A4: LateIdCallSt
  loc_13915AE: Set var_8C = Nothing 
  loc_13915B2: Exit Sub
End Sub

Public Sub Proc_150_66_102C050
  'Data Table: 506778
  Dim var_9C As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_102BE11: global_104 = CStr(&HC9FCF7)
  loc_102BE2B: Me.FGrid1.Cols = 6
  loc_102BE30: var_9C = 0
  loc_102BE3C: var_BC = CVar(CLng(0)) 'Long
  loc_102BE41: var_DC = "No."
  loc_102BE4A: LateIdCallSt
  loc_102BE55: var_9C = CVar(CLng(0)) 'Long
  loc_102BE60: var_BC = CVar(CInt(4)) 'Integer
  loc_102BE67: LateIdCallSt
  loc_102BE72: var_9C = CVar(CLng(0)) 'Long
  loc_102BE7D: var_BC = CVar(CInt(4)) 'Integer
  loc_102BE84: LateIdCallSt
  loc_102BE8F: var_9C = CVar(CLng(0)) 'Long
  loc_102BE94: var_BC = 5
  loc_102BEA0: LateIdCallSt
  loc_102BEA8: var_9C = 0
  loc_102BEB4: var_BC = CVar(CLng(1)) 'Long
  loc_102BEB9: var_DC = "Fixed Charge"
  loc_102BEC2: LateIdCallSt
  loc_102BECD: var_9C = CVar(CLng(1)) 'Long
  loc_102BED8: var_BC = CVar(CInt(1)) 'Integer
  loc_102BEDF: LateIdCallSt
  loc_102BEEA: var_9C = CVar(CLng(1)) 'Long
  loc_102BEF5: var_BC = CVar(CInt(1)) 'Integer
  loc_102BEFC: LateIdCallSt
  loc_102BF07: var_9C = CVar(CLng(1)) 'Long
  loc_102BF0C: var_BC = &H7D0
  loc_102BF18: LateIdCallSt
  loc_102BF23: var_9C = CVar(CLng(2)) 'Long
  loc_102BF28: var_BC = 0
  loc_102BF34: LateIdCallSt
  loc_102BF3F: var_9C = CVar(CLng(5)) 'Long
  loc_102BF44: var_BC = 0
  loc_102BF50: LateIdCallSt
  loc_102BF58: var_9C = 0
  loc_102BF64: var_BC = CVar(CLng(3)) 'Long
  loc_102BF69: var_DC = "Rate"
  loc_102BF72: LateIdCallSt
  loc_102BF7D: var_9C = CVar(CLng(3)) 'Long
  loc_102BF88: var_BC = CVar(CInt(1)) 'Integer
  loc_102BF8F: LateIdCallSt
  loc_102BF9A: var_9C = CVar(CLng(3)) 'Long
  loc_102BFA5: var_BC = CVar(CInt(1)) 'Integer
  loc_102BFAC: LateIdCallSt
  loc_102BFB7: var_9C = CVar(CLng(3)) 'Long
  loc_102BFBC: var_BC = &H3E8
  loc_102BFC8: LateIdCallSt
  loc_102BFD0: var_9C = 0
  loc_102BFDC: var_BC = CVar(CLng(4)) 'Long
  loc_102BFE1: var_DC = "Remarks"
  loc_102BFEA: LateIdCallSt
  loc_102BFF5: var_9C = CVar(CLng(4)) 'Long
  loc_102C000: var_BC = CVar(CInt(1)) 'Integer
  loc_102C007: LateIdCallSt
  loc_102C012: var_9C = CVar(CLng(4)) 'Long
  loc_102C01D: var_BC = CVar(CInt(1)) 'Integer
  loc_102C024: LateIdCallSt
  loc_102C02F: var_9C = CVar(CLng(4)) 'Long
  loc_102C034: var_BC = &HDAC
  loc_102C040: LateIdCallSt
  loc_102C04A: Set var_8C = Nothing 
  loc_102C04E: Exit Sub
End Sub

Public Sub Proc_150_67_16C5688
  'Data Table: 506778
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim unk_5067A0 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_120 As Fields15
  Dim var_138 As Variant
  Dim var_18C As Fields15
  Dim var_1E4 As Recordset15
  Dim var_124 As TextBox
  Dim var_148 As Variant
  Dim var_1A0 As TextBox
  Dim var_8A As Integer
  Dim var_204 As Double
  Dim var_11C As Variant
  Dim var_178 As Variant
  loc_16C3CD0: On Error Goto loc_16C5680
  loc_16C3CEA: If (Me.RecordCount > 0) Then
  loc_16C3CFA:   var_C8 = "Select PLANMAST.*,ROOMCAT.NAME AS ROOMCATNAME,TaxStru.Name as TaxStruName From PlanMast LEFT JOIN ROOMCAT ON (ROOMCAT.CODE=PLANMAST.ROOMCAT) Left Join TaxStru on TaxStru.Code=PlanMast.RoomTaxStru Where PLANMAST.Code='"
  loc_16C3D43:   unk_5067A0.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "'"), var_11C, -1
  loc_16C3D4E:   Set var_88 = var_120
  loc_16C3DA2:   var_120 = var_88.Fields
  loc_16C3E0B:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16C3E50:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_16C3ECA:   var_124 = var_88.Fields.Item("U_AE")
  loc_16C3ED2:   var_D8 = CVar(var_124) 'Address
  loc_16C3EE3:   var_11C = "entdt : "
  loc_16C3F2B:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(var_D8) = "E"), "Last Update : ", var_11C))
  loc_16C3F4A:   var_1A0 = var_88.Fields.Item("U_EntDt")
  loc_16C3F70:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_1A0))))
  loc_16C3FBC:   If (var_88.RecordCount > 0) Then
  loc_16C3FC2:     Set var_1E4 = var_88 
  loc_16C3FFC:     Set var_120 = Me.Txt
  loc_16C4002:     Call 0.Method_Proc_150_67_16C56880 (CInt(0), var_124)
  loc_16C400A:     var_124.Text = Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("Name")))
  loc_16C4035:     var_A8 = var_1E4.Fields.Item("Code")
  loc_16C4054:     Set var_120 = Me.Txt
  loc_16C405A:     Call 0.Method_Proc_150_67_16C56880 (CInt(0), var_124)
  loc_16C4062:     var_124.Tag = Proc_6_38_E68A98(CVar(var_A8))
  loc_16C4084:     Set var_94 = Me.Txt
  loc_16C408A:     Call 0.Method_Proc_150_67_16C56880 (CInt(0), var_A8)
  loc_16C409D:     global_84 = var_A8.Text
  loc_16C40E1:     Set var_120 = Me.Txt
  loc_16C40E7:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HF), var_124)
  loc_16C40EF:     var_124.Text = Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("Tariff")))
  loc_16C410F:     Me.Check1.Value = 1
  loc_16C4136:     var_B8 = CVar(var_1E4.Fields.Item("Adults")) 'Address
  loc_16C413D:     Proc_6_39_E7C810(var_D8)
  loc_16C4154:     Set var_120 = Me.Txt
  loc_16C415A:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HA), var_124)
  loc_16C4162:     var_124.Text = CStr(var_D8)
  loc_16C41A0:     Proc_6_39_E7C810(var_D8, CVar(var_1E4.Fields.Item("Childs")))
  loc_16C41B7:     Set var_120 = Me.Txt
  loc_16C41BD:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HA), var_124)
  loc_16C41C5:     var_124.Text = CStr(var_D8)
  loc_16C4203:     Proc_6_39_E7C810(var_D8, CVar(var_1E4.Fields.Item("PackageAmount")))
  loc_16C421A:     Set var_120 = Me.Txt
  loc_16C4220:     Call 0.Method_Proc_150_67_16C56880 (CInt(5), var_124)
  loc_16C4228:     var_124.Text = CStr(var_D8)
  loc_16C4257:     var_A8 = var_1E4.Fields.Item("RRIncTax")
  loc_16C4276:     Set var_120 = Me.Txt
  loc_16C427C:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HD), var_124)
  loc_16C4284:     var_124.Text = Proc_6_38_E68A98(CVar(var_A8))
  loc_16C42A6:     Set var_94 = Me.Txt
  loc_16C42AC:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HD), var_A8)
  loc_16C42CB:     If (var_A8.Text = "Yes") Then
  loc_16C42DA:       Set var_94 = Me.Label1
  loc_16C42E0:       Call 0.Method_Proc_150_67_16C56880 (&HC, var_A8)
  loc_16C42E8:       var_A8.Caption = "Net Room Rate"
  loc_16C42F7:     Else
  loc_16C4303:       Set var_94 = Me.Label1
  loc_16C4309:       Call 0.Method_Proc_150_67_16C56880 (&HC, var_A8)
  loc_16C4311:       var_A8.Caption = "Room Rate"
  loc_16C431D:     End If
  loc_16C4353:     Set var_120 = Me.Txt
  loc_16C4359:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HE), var_124)
  loc_16C4361:     var_124.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCatName")))
  loc_16C43AB:     Set var_120 = Me.Txt
  loc_16C43B1:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HE), var_124)
  loc_16C43B9:     var_124.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomCat")))
  loc_16C4403:     Set var_120 = Me.Txt
  loc_16C4409:     Call 0.Method_Proc_150_67_16C56880 (CInt(&H11), var_124)
  loc_16C4411:     var_124.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxStruName")))
  loc_16C445B:     Set var_120 = Me.Txt
  loc_16C4461:     Call 0.Method_Proc_150_67_16C56880 (CInt(&H11), var_124)
  loc_16C4469:     var_124.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomTaxStru")))
  loc_16C44A3:     Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("RoomRate")))
  loc_16C44BA:     Set var_120 = Me.Txt
  loc_16C44C0:     Call 0.Method_Proc_150_67_16C56880 (CInt(8), var_124)
  loc_16C44C8:     var_124.Text = CStr(var_D8)
  loc_16C4506:     Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("RoomRate")))
  loc_16C4525:     var_124 = var_88.Fields.Item("Nights")
  loc_16C4534:     Proc_6_39_E7C810(var_11C, CVar(var_124))
  loc_16C454F:     Set var_18C = Me.Txt
  loc_16C4555:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HC), var_1A0)
  loc_16C455D:     var_1A0.Text = CStr((var_D8 * var_11C))
  loc_16C45A1:     Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("Nights")))
  loc_16C45B8:     Set var_120 = Me.Txt
  loc_16C45BE:     Call 0.Method_Proc_150_67_16C56880 (CInt(9), var_124)
  loc_16C45C6:     var_124.Text = CStr(var_D8)
  loc_16C4614:     Set var_120 = Me.Txt
  loc_16C461A:     Call 0.Method_Proc_150_67_16C56880 (CInt(3), var_124)
  loc_16C4622:     var_124.Text = Proc_6_38_E68A98(CVar(var_1E4.Fields.Item("ActiveYN")))
  loc_16C466C:     Set var_120 = Me.Txt
  loc_16C4672:     Call 0.Method_Proc_150_67_16C56880 (CInt(6), var_124)
  loc_16C467A:     var_124.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiscAppYN")))
  loc_16C46C4:     Set var_120 = Me.Txt
  loc_16C46CA:     Call 0.Method_Proc_150_67_16C56880 (CInt(7), var_124)
  loc_16C46D2:     var_124.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DiscAppOn")))
  loc_16C470C:     Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("Adults")))
  loc_16C4723:     Set var_120 = Me.Txt
  loc_16C4729:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HA), var_124)
  loc_16C4731:     var_124.Text = CStr(var_D8)
  loc_16C476F:     Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("Childs")))
  loc_16C4786:     Set var_120 = Me.Txt
  loc_16C478C:     Call 0.Method_Proc_150_67_16C56880 (CInt(&HB), var_124)
  loc_16C4794:     var_124.Text = CStr(var_D8)
  loc_16C47D2:     Proc_6_39_E7C810(var_D8, CVar(var_1E4.Fields.Item("RoomPer")))
  loc_16C47F2:     var_11C = Format(var_D8, "0.00000")
  loc_16C4809:     Set var_120 = Me.Txt
  loc_16C480F:     Call 0.Method_Proc_150_67_16C56880 (CInt(4), var_124, CStr(var_11C))
  loc_16C4817:     var_124.Text = 1
  loc_16C4859:     Proc_6_39_E7C810(var_D8, CVar(var_1E4.Fields.Item("Total")))
  loc_16C4870:     Set var_120 = Me.Txt
  loc_16C4876:     Call 0.Method_Proc_150_67_16C56880 (CInt(1), var_124, CStr(var_D8))
  loc_16C487E:     var_124.Text = 1
  loc_16C48CF:     Set var_120 = Me.Txt
  loc_16C48D5:     Call 0.Method_Proc_150_67_16C56880 (CInt(2), var_124)
  loc_16C48DD:     var_124.Text = CStr(var_1E4.Fields.Item("App_Date").Value)
  loc_16C490A:     var_A8 = var_1E4.Fields.Item("MapCode")
  loc_16C492F:     Call 0.Method_Proc_150_67_16C56880 (CInt(&H10), var_124)
  loc_16C4937:     var_124.Text = Proc_6_38_E68A98(CVar(var_A8))
  loc_16C4959:     Set var_94 = Me.Txt
  loc_16C495F:     Call 0.Method_Proc_150_67_16C56880 (CInt(2), var_A8)
  loc_16C4972:     global_88 = var_A8.Text
  loc_16C4982:     Set var_1E4 = Nothing 
  loc_16C4999:     Me.FGrid.Rows = 1
  loc_16C49AE:     var_C8 = "SELECT Plan1.*,FixedCharge.Name as RevName FROM Plan1 Left Join FixedCharge on Plan1.ChrgCode=FixedCharge.Code WHERE Plan1.Code='"
  loc_16C49F7:     unk_5067A0.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' order by FixedCharge.Name"), var_11C, -1
  loc_16C4A02:     Set var_88 = Me.Txt
  loc_16C4A1E:     var_8A = 1
  loc_16C4A21:     ' Referenced from: 16C527C
  loc_16C4A30:     If Not(var_88.EOF) Then
  loc_16C4A33:       var_A4 = vbNullString
  loc_16C4A3D:       Set var_94 = Me.FGrid
  loc_16C4A52:       Set var_1EC = Me.FGrid
  loc_16C4A59:       var_A4 = CVar(CLng(var_8A)) 'Long
  loc_16C4A6B:       var_B8 = CVar(CStr(var_8A)) 'String
  loc_16C4A72:       LateIdCallSt
  loc_16C4AB6:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1EC, CVar(var_88.Fields.Item("RevName")), CVar(CLng(0)))) 'String
  loc_16C4ABD:       LateIdCallSt
  loc_16C4AD2:       var_A4 = "Adult"
  loc_16C4AF5:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item(var_A4)), var_1EC, var_D8, var_A4)
  loc_16C4B36:       LateIdCallSt
  loc_16C4B87:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChrgCode")), CVar(CLng(&H11)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_16C4B8E:       LateIdCallSt
  loc_16C4BD9:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1EC, var_D8, CVar(CLng(7)))) 'String
  loc_16C4BE0:       LateIdCallSt
  loc_16C4C2B:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Code")), CVar(CLng(4)), CVar(CLng(var_8A)), var_1EC, var_D8)) 'String
  loc_16C4C32:       LateIdCallSt
  loc_16C4C6A:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("Child")), var_1EC, var_D8, CVar(CLng(var_8A)))
  loc_16C4C73:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C4C7B:       var_138 = CVar(CLng(8)) 'Long
  loc_16C4CAB:       LateIdCallSt
  loc_16C4CE9:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("ExtraAdult")), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)
  loc_16C4CF2:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C4D2A:       LateIdCallSt
  loc_16C4D68:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("FlatRate")), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1, CVar(CLng(9)))
  loc_16C4D71:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C4DA9:       LateIdCallSt
  loc_16C4DE7:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("ExtraChild")), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1, CVar(CLng(&HF)))
  loc_16C4E28:       LateIdCallSt
  loc_16C4E79:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostingMethod")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_16C4E80:       LateIdCallSt
  loc_16C4ECB:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_1EC, var_D8, CVar(CLng(&HA)))) 'String
  loc_16C4ED2:       LateIdCallSt
  loc_16C4F1D:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PrintOption")), CVar(CLng(&HC)), CVar(CLng(var_8A)), var_1EC, var_D8)) 'String
  loc_16C4F24:       LateIdCallSt
  loc_16C4F6F:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_8A)), var_1EC, var_D8)) 'String
  loc_16C4F76:       LateIdCallSt
  loc_16C4FC1:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("FixRate")), CVar(CLng(6)), CVar(CLng(var_8A)), var_1EC, var_D8)) 'String
  loc_16C4FC8:       LateIdCallSt
  loc_16C501A:       LateIdCallSt
  loc_16C5054:       var_FC = Proc_6_38_E68A98(CVar(var_88.Fields.Item("NoofDays")), var_1EC, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("TaxStru")), CVar(CLng(3)), CVar(CLng(var_8A)), var_1EC, var_D8)), CVar(CLng(var_8A)))
  loc_16C505C:       var_204 = Val(var_FC)
  loc_16C507F:       var_120 = var_88.Fields
  loc_16C508F:       var_D8 = CVar(var_120.Item("NoofDays")) 'Address
  loc_16C50BE:       var_178 = CVar(CStr(IIf((CDbl(var_204) = CDbl(0)), "NA", CVar(Proc_6_38_E68A98(var_D8, CVar(CLng(&HB)), CVar(CLng(var_8A)), var_204))))) 'String
  loc_16C50C5:       LateIdCallSt
  loc_16C510E:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("PlanPer")), var_1EC, var_178)
  loc_16C5117:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C511F:       var_138 = CVar(CLng(&H12)) 'Long
  loc_16C514F:       LateIdCallSt
  loc_16C518D:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("PerDayAmount")), var_1EC, CVar(CStr(Format(var_D8, "0.00000"))), 1, 1)
  loc_16C5196:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C51CE:       LateIdCallSt
  loc_16C520C:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("NetAmount")), var_1EC, CVar(CStr(Format(var_D8, "0.00"))), 1, 1, CVar(CLng(&H13)))
  loc_16C5215:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C521D:       var_138 = CVar(CLng(&H14)) 'Long
  loc_16C523D:       var_11C = Format(var_D8, "0.00")
  loc_16C5246:       var_148 = CVar(CStr(var_11C)) 'String
  loc_16C524D:       LateIdCallSt
  loc_16C5267:       Set var_1EC = Nothing 
  loc_16C5271:       var_8A = (var_8A + 1)
  loc_16C5277:       var_88.MoveNext
  loc_16C527C:       GoTo loc_16C4A21
  loc_16C527F:     End If
  loc_16C5292:     Me.FGrid1.Rows = 1
  loc_16C52A7:     var_C8 = "SELECT PlanTokenDetails.*,FixedCharge.Name as RevName FROM PlanTokenDetails Left Join FixedCharge on PlanTokenDetails.ChrgCode=FixedCharge.Code WHERE PlanTokenDetails.PlanCode='"
  loc_16C52D9:     var_D8 = var_C8 & Me.Fields.Item("SearchCode").Value 
  loc_16C52F0:     unk_5067A0.Execute CStr(var_D8 & "' order by FixedCharge.Name,PlanTokenDetails.Sno"), var_11C, -1
  loc_16C52FB:     Set var_88 = var_120
  loc_16C5317:     var_8A = 1
  loc_16C531A:     ' Referenced from: 16C5587
  loc_16C5329:     If Not(var_88.EOF) Then
  loc_16C532C:       var_A4 = vbNullString
  loc_16C5336:       Set var_94 = Me.FGrid1
  loc_16C534B:       Set var_208 = Me.FGrid1
  loc_16C5362:       var_A4 = "SNo"
  loc_16C5385:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item(var_A4)), CVar(CLng(0)), CVar(CLng(var_8A)), FGrid1.DispID_10000, var_A4, var_8A)
  loc_16C5395:       LateIdCallSt
  loc_16C53E2:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevName")), CVar(CLng(1)), CVar(CLng(var_8A)), var_208, CVar(CStr(var_D8)), var_120)) 'String
  loc_16C53E9:       LateIdCallSt
  loc_16C5434:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ChrgCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_208, var_D8, var_8A)) 'String
  loc_16C543B:       LateIdCallSt
  loc_16C5486:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PlanCode")), CVar(CLng(5)), CVar(CLng(var_8A)), var_208, var_D8)) 'String
  loc_16C548D:       LateIdCallSt
  loc_16C54C5:       Proc_6_39_E7C810(var_D8, CVar(var_88.Fields.Item("Rate")), var_208, var_D8, var_1EC)
  loc_16C54CE:       var_E8 = CVar(CLng(var_8A)) 'Long
  loc_16C54D6:       var_138 = CVar(CLng(3)) 'Long
  loc_16C5506:       LateIdCallSt
  loc_16C5557:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), CVar(CLng(4)), CVar(CLng(var_8A)), var_208, CVar(CStr(Format(var_D8, "0.00"))), 1, 1)) 'String
  loc_16C555E:       LateIdCallSt
  loc_16C5572:       Set var_208 = Nothing 
  loc_16C557C:       var_8A = (var_8A + 1)
  loc_16C5582:       var_88.MoveNext
  loc_16C5587:       GoTo loc_16C531A
  loc_16C558A:     End If
  loc_16C558A:   End If
  loc_16C558A:   var_A4 = 0
  loc_16C5594:   Set var_94 = Me.FGrid
  loc_16C55C1:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_16C55C4:     var_A4 = "1"
  loc_16C55CE:     Set var_94 = Me.FGrid
  loc_16C55DF:   End If
  loc_16C55F2:   Me.FGrid.FixedRows = 1
  loc_16C55FA:   var_A4 = 0
  loc_16C5604:   Set var_94 = Me.FGrid1
  loc_16C5631:   If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_16C5634:     var_A4 = "1"
  loc_16C563E:     Set var_94 = Me.FGrid1
  loc_16C564F:   End If
  loc_16C564F:   var_A4 = 1
  loc_16C5662:   Me.FGrid1.FixedRows = var_A4
  loc_16C566D: Else
  loc_16C566D:   Call Proc_150_62_FD7EC4(FGrid1.DispID_10000, var_A4, FGrid1.DispID_2E, var_A4, FGrid.DispID_10000, var_A4, FGrid.DispID_2E)
  loc_16C5672: End If
  loc_16C5672: Call Proc_150_61_F1FA44(var_A4, var_8A, var_208)
  loc_16C567C: Set var_88 = Nothing
  loc_16C567F: Exit Sub
  loc_16C5680: ' Referenced from: 16C3CD0
  loc_16C5680: Proc_6_60_E62BC4(var_D8, var_138)
  loc_16C5685: Exit Sub
End Sub

Public Sub Proc_150_68_19529BC(arg_C) '19529BC
  'Data Table: 506778
  Dim var_8A As Integer
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_124 As Variant
  Dim var_B4 As String
  Dim var_168 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_200 As MSHFlexGrid
  Dim var_210 As Variant
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_19C As Variant
  Dim var_114 As Variant
  Dim var_158 As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_260 As Variant
  Dim var_278 As String
  Dim var_298 As Double
  Dim var_274 As Variant
  Dim var_2A0 As Double
  Dim var_280 As Variant
  Dim var_284 As Variant
  Dim var_288 As String
  Dim var_2A8 As Double
  Dim var_178 As Variant
  Dim var_18C As Variant
  Dim var_27C As String
  Dim var_290 As MSHFlexGrid
  Dim var_2BC As Double
  Dim var_2B0 As MSHFlexGrid
  Dim var_2B4 As TextBox
  Dim var_2D0 As Double
  Dim var_2F0 As Variant
  Dim var_310 As Variant
  Dim var_230 As Variant
  Dim var_334 As Long
  loc_194FCDF: var_8A = arg_C
  loc_194FCE8: If (var_8A = 0) Then
  loc_194FCFE:   var_A4 = CLng(Me.FGrid.Col)
  loc_194FD0E:   If (var_A4 = CLng(1)) Then
  loc_194FD31:     var_AA = Me.EOF
  loc_194FD5E:     Set var_90 = Me.TxtGrid
  loc_194FD64:     Call 0.Method_Proc_150_68_19529BC0 (0, var_B0, var_B4)
  loc_194FD6C:     ((Me.RecordCount = 0) Or ((var_AA = &HFF) Or (Me.BOF = &HFF))) = var_B0.Text
  loc_194FD84:     If (var_A4 Or (var_B4 = vbNullString)) Then
  loc_194FD9A:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_194FDA2:       var_E4 = CVar(CLng(1)) 'Long
  loc_194FDA7:       var_104 = vbNullString
  loc_194FDB1:       Set var_B0 = Me.FGrid
  loc_194FDB7:       LateIdCallSt
  loc_194FDDC:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_194FDE4:       var_E4 = CVar(CLng(2)) 'Long
  loc_194FDE9:       var_104 = vbNullString
  loc_194FDF3:       Set var_B0 = Me.FGrid
  loc_194FDF9:       LateIdCallSt
  loc_194FE0E:     Else
  loc_194FE11:       Call Proc_150_71_F8037C(var_AA, var_B0, var_104, var_E4, var_C4)
  loc_194FE1C:       If (var_AA = &HFF) Then
  loc_194FE24:         Proc_150_68_19529BC = 0
  loc_194FE2A:       End If
  loc_194FE3D:       var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_194FE45:       var_148 = CVar(CLng(0)) 'Long
  loc_194FE63:       var_C4 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_194FE6B:       var_E4 = CVar(CLng(0)) 'Long
  loc_194FE85:       var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_194FE93:       var_168 = CVar(CStr((Val(var_B4) + CDbl(1)))) 'String
  loc_194FE9B:       Set var_17C = Me.FGrid
  loc_194FEA1:       LateIdCallSt
  loc_194FED5:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_194FEDD:       var_F4 = CVar(CLng(1)) 'Long
  loc_194FF10:       var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_194FF18:       Set var_17C = Me.FGrid
  loc_194FF1E:       LateIdCallSt
  loc_194FF4D:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_194FF55:       var_F4 = CVar(CLng(2)) 'Long
  loc_194FF88:       var_138 = CVar(CStr(Me.Fields.Item("RevCode").Value)) 'String
  loc_194FF90:       Set var_17C = Me.FGrid
  loc_194FF96:       LateIdCallSt
  loc_194FFC5:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_194FFCD:       var_F4 = CVar(CLng(3)) 'Long
  loc_194FFEF:       var_B0 = Me.Fields.Item("TaxStru")
  loc_195000E:       LateIdCallSt
  loc_1950058:       Set var_90 = Me.Txt
  loc_195005E:       Call 0.Method_Proc_150_68_19529BC0 (CInt(0), var_B0, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, CVar(CStr(var_B0.Value)))
  loc_1950066:       var_F4 = var_B0.Tag
  loc_195006E:       var_124 = CVar(var_B4) 'String
  loc_1950076:       Set var_17C = Me.FGrid
  loc_195007C:       LateIdCallSt
  loc_19500A9:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19500B1:       var_F4 = CVar(CLng(5)) 'Long
  loc_19500E4:       var_138 = CVar(CStr(Me.Fields.Item("TaxInc").Value)) 'String
  loc_19500EC:       Set var_17C = Me.FGrid
  loc_19500F2:       LateIdCallSt
  loc_1950121:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950129:       var_E4 = CVar(CLng(6)) 'Long
  loc_1950161:       var_220 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950169:       var_240 = CVar(CLng(6)) 'Long
  loc_1950181:       var_114 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950189:       var_158 = CVar(CLng(6)) 'Long
  loc_19501D1:       var_260 = CVar(CStr(IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString), "No", CVar(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_19501D9:       Set var_274 = Me.FGrid
  loc_19501DF:       LateIdCallSt
  loc_1950224:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195022C:       var_F4 = CVar(CLng(7)) 'Long
  loc_195025F:       var_138 = CVar(CStr(Me.Fields.Item("Adult").Value)) 'String
  loc_1950267:       Set var_17C = Me.FGrid
  loc_195026D:       LateIdCallSt
  loc_195029C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19502A4:       var_F4 = CVar(CLng(8)) 'Long
  loc_19502D7:       var_138 = CVar(CStr(Me.Fields.Item("Child").Value)) 'String
  loc_19502DF:       Set var_17C = Me.FGrid
  loc_19502E5:       LateIdCallSt
  loc_1950314:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195031C:       var_F4 = CVar(CLng(9)) 'Long
  loc_195034F:       var_138 = CVar(CStr(Me.Fields.Item("ExtraAdult").Value)) 'String
  loc_1950357:       Set var_17C = Me.FGrid
  loc_195035D:       LateIdCallSt
  loc_195038C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950394:       var_F4 = CVar(CLng(&HA)) 'Long
  loc_19503C7:       var_138 = CVar(CStr(Me.Fields.Item("ExtraChild").Value)) 'String
  loc_19503CF:       Set var_17C = Me.FGrid
  loc_19503D5:       LateIdCallSt
  loc_1950404:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195040C:       var_F4 = CVar(CLng(&HC)) 'Long
  loc_195043F:       var_138 = CVar(CStr(Me.Fields.Item("PrintOption").Value)) 'String
  loc_1950447:       Set var_17C = Me.FGrid
  loc_195044D:       LateIdCallSt
  loc_195047C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950484:       var_F4 = CVar(CLng(&HD)) 'Long
  loc_19504B7:       var_138 = CVar(CStr(Me.Fields.Item("PostingMethod").Value)) 'String
  loc_19504BF:       Set var_17C = Me.FGrid
  loc_19504C5:       LateIdCallSt
  loc_19504F4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19504FC:       var_F4 = CVar(CLng(&HE)) 'Long
  loc_195052F:       var_138 = CVar(CStr(Me.Fields.Item("ChargeType").Value)) 'String
  loc_1950537:       Set var_17C = Me.FGrid
  loc_195053D:       LateIdCallSt
  loc_195056C:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950574:       var_F4 = CVar(CLng(&HF)) 'Long
  loc_19505A7:       var_138 = CVar(CStr(Me.Fields.Item("FlatRate").Value)) 'String
  loc_19505AF:       Set var_17C = Me.FGrid
  loc_19505B5:       LateIdCallSt
  loc_19505E4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19505EC:       var_F4 = CVar(CLng(&H11)) 'Long
  loc_195061F:       var_138 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1950627:       Set var_17C = Me.FGrid
  loc_195062D:       LateIdCallSt
  loc_195065C:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950664:       var_E4 = CVar(CLng(&HE)) 'Long
  loc_1950697:       If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_19506AD:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19506B5:         var_F4 = CVar(CLng(&H13)) 'Long
  loc_19506D7:         var_B0 = Me.Fields.Item("FlatRate")
  loc_19506E8:         var_B4 = CStr(var_B0.Value)
  loc_19506F2:         var_138 = CVar(CStr(Val(var_B4))) 'String
  loc_19506FA:         Set var_17C = Me.FGrid
  loc_1950700:         LateIdCallSt
  loc_1950722:       Else
  loc_1950730:         Set var_90 = Me.Txt
  loc_1950736:         Call 0.Method_Proc_150_68_19529BC0 (CInt(&HB), var_B0, var_B4, var_17C, var_138, var_F4, var_D4)
  loc_195073E:         var_E4 = var_B0.Text
  loc_195075A:         If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_1950763:           var_C4 = "Adult"
  loc_1950793:           var_298 = Val(CStr(Me.Fields.Item(var_C4).Value))
  loc_19507A4:           Set var_200 = Me.Txt
  loc_19507AA:           Call 0.Method_Proc_150_68_19529BC0 (CInt(&HB), var_274, var_27C, var_298, var_C4)
  loc_19507B2:           var_17C = var_274.Text
  loc_19507BF:           var_2A0 = Val(var_27C)
  loc_19507DF:           var_284 = Me.Fields.Item("Child")
  loc_19507F0:           var_288 = CStr(var_284.Value)
  loc_19507F8:           var_2A8 = Val(var_288)
  loc_1950829:           Set var_90 = Me.Txt
  loc_195082F:           Call 0.Method_Proc_150_68_19529BC0 (CInt(&HA), var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_2A8)
  loc_1950852:           var_168 = CVar(CStr(((Val(var_B4) * var_298) + (var_B0.Text * var_2A8)))) 'String
  loc_195085A:           Set var_290 = Me.FGrid
  loc_1950860:           LateIdCallSt
  loc_1950898:         Else
  loc_19508CE:           var_298 = Val(CStr(Me.Fields.Item("Adult").Value))
  loc_19508FF:           Set var_90 = Me.Txt
  loc_1950905:           Call 0.Method_Proc_150_68_19529BC0 (CInt(&HA), var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_298)
  loc_195090D:           var_290 = var_B0.Text
  loc_1950920:           var_138 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_1950928:           Set var_274 = Me.FGrid
  loc_195092E:           LateIdCallSt
  loc_1950955:         End If
  loc_1950955:       End If
  loc_1950968:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950979:       Set var_17C = Me.FGrid
  loc_195098A:       var_278 = CStr(var_17C.TextMatrix))
  loc_1950992:       var_298 = Val(var_278)
  loc_19509C3:       Set var_90 = Me.Txt
  loc_19509C9:       Call 0.Method_Proc_150_68_19529BC0 (CInt(9), var_B0, var_B4, CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), var_298, CVar(CLng(&H13)))
  loc_19509D1:       var_C4 = var_B0.Text
  loc_19509E4:       var_168 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_19509F2:       LateIdCallSt
  loc_1950A3F:       Set var_B0 = Me.FGrid
  loc_1950A50:       var_B4 = CStr(var_B0.TextMatrix))
  loc_1950A58:       var_298 = Val(var_B4)
  loc_1950A69:       Set var_128 = Me.Txt
  loc_1950A6F:       Call 0.Method_Proc_150_68_19529BC0 (CInt(5), var_17C, var_278, var_298, CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), Me.FGrid)
  loc_1950A77:       var_168 = var_17C.Text
  loc_1950A84:       var_2A0 = Val(var_278)
  loc_1950A9A:       var_148 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950AA2:       var_178 = CVar(CLng(&H12)) 'Long
  loc_1950AB6:       var_168 = "0.00000"
  loc_1950AD7:       var_1AC = CVar(CStr(Format(CVar(((var_298 * CDbl(&H64)) / var_2A0)), var_168))) 'String
  loc_1950ADF:       Set var_274 = Me.FGrid
  loc_1950AE5:       LateIdCallSt
  loc_1950B14:     End If
  loc_1950B17:   Else
  loc_1950B1E:     If (var_A4 = CLng(6)) Then
  loc_1950B2B:       Set var_90 = Me.TxtGrid
  loc_1950B31:       Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_274, var_1AC, 1, 1, var_178)
  loc_1950B50:       var_138 = Ucase(Left(CVar(var_B0), 1))
  loc_1950B6C:       If (var_138 = "Y") Then
  loc_1950B7C:         Set var_90 = Me.TxtGrid
  loc_1950B82:         Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, "Yes", var_148, var_2A0)
  loc_1950B8A:         var_B0.Text = var_274
  loc_1950B99:       Else
  loc_1950BA6:         Set var_90 = Me.TxtGrid
  loc_1950BAC:         Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, "No", var_138)
  loc_1950BB4:         var_B0.Text = var_168
  loc_1950BC0:       End If
  loc_1950BD3:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950BFD:       Set var_90 = Me.TxtGrid
  loc_1950C03:       Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, CVar(CLng(Me.FGrid.Col)))
  loc_1950C0B:       var_C4 = var_B0.Text
  loc_1950C13:       var_138 = CVar(var_B4) 'String
  loc_1950C1B:       Set var_200 = Me.FGrid
  loc_1950C21:       LateIdCallSt
  loc_1950C42:     Else
  loc_1950C49:       If Not (var_A4 = CLng(7)) Then
  loc_1950C53:         If (var_A4 = CLng(8)) Then
  loc_1950C56:         End If
  loc_1950C63:         Set var_90 = Me.TxtGrid
  loc_1950C69:         Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, var_200)
  loc_1950C71:         var_138 = var_B0.Text
  loc_1950C94:         var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950CAC:         var_104 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1950CE7:         LateIdCallSt
  loc_1950D1B:         Set var_90 = Me.TxtGrid
  loc_1950D21:         Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(CVar(Val(var_B4)), "0.00"))), 1)
  loc_1950D29:         1 = var_B0.Text
  loc_1950D45:         If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_1950D5B:           var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950D63:           var_E4 = CVar(CLng(&HE)) 'Long
  loc_1950D96:           If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_1950DAC:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950DB4:             var_148 = CVar(CLng(&H13)) 'Long
  loc_1950DCC:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950DD4:             var_E4 = CVar(CLng(&HF)) 'Long
  loc_1950DF8:             var_168 = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_1950E00:             Set var_17C = Me.FGrid
  loc_1950E06:             LateIdCallSt
  loc_1950E3A:             var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950E42:             var_148 = CVar(CLng(&H13)) 'Long
  loc_1950E4B:             Set var_17C = Me.FGrid
  loc_1950E5C:             var_278 = CStr(var_17C.TextMatrix))
  loc_1950E64:             var_298 = Val(var_278)
  loc_1950E7A:             var_178 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950E82:             var_220 = CVar(CLng(&H14)) 'Long
  loc_1950E9A:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950EA2:             var_E4 = CVar(CLng(&HB)) 'Long
  loc_1950EAB:             Set var_B0 = Me.FGrid
  loc_1950EBC:             var_B4 = CStr(var_B0.TextMatrix))
  loc_1950ECA:             var_19C = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_1950ED2:             Set var_274 = Me.FGrid
  loc_1950ED8:             LateIdCallSt
  loc_1950F08:           Else
  loc_1950F16:             Set var_90 = Me.Txt
  loc_1950F1C:             Call 0.Method_Proc_150_68_19529BC0 (CInt(&HB), var_B0, var_B4, var_274, var_19C, var_E4, var_C4)
  loc_1950F24:             var_220 = var_B0.Text
  loc_1950F40:             If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_1950F51:               Set var_128 = Me.Txt
  loc_1950F57:               Call 0.Method_Proc_150_68_19529BC0 (CInt(&HA), var_17C, var_278, var_178, var_298)
  loc_1950F5F:               var_148 = var_17C.Text
  loc_1950F82:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1950FAC:               var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1950FBD:               Set var_280 = Me.Txt
  loc_1950FC3:               Call 0.Method_Proc_150_68_19529BC0 (CInt(&HB), var_284, var_288, var_2A0, CVar(CLng(7)))
  loc_1950FCB:               var_C4 = var_284.Text
  loc_1950FEE:               var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951018:               var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1951048:               Set var_90 = Me.TxtGrid
  loc_195104E:               Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_2BC, CVar(CLng(8)))
  loc_1951056:               var_104 = var_B0.Text
  loc_1951075:               var_19C = CVar(CStr(((Val(var_B4) * (Val(var_278) * var_2A0)) + (Val(var_288) * var_2BC)))) 'String
  loc_195107D:               Set var_2B4 = Me.FGrid
  loc_1951083:               LateIdCallSt
  loc_19510C5:             Else
  loc_19510D8:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951102:               var_298 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1951133:               Set var_90 = Me.Txt
  loc_1951139:               Call 0.Method_Proc_150_68_19529BC0 (CInt(&HA), var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_298, CVar(CLng(7)))
  loc_1951141:               var_C4 = var_B0.Text
  loc_1951154:               var_168 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_195115C:               Set var_274 = Me.FGrid
  loc_1951162:               LateIdCallSt
  loc_195118B:             End If
  loc_195119E:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19511AF:             Set var_17C = Me.FGrid
  loc_19511C0:             var_278 = CStr(var_17C.TextMatrix))
  loc_19511C8:             var_298 = Val(var_278)
  loc_19511F9:             Set var_90 = Me.Txt
  loc_19511FF:             Call 0.Method_Proc_150_68_19529BC0 (CInt(9), var_B0, var_B4, CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), var_298, CVar(CLng(&H13)))
  loc_1951207:             var_C4 = var_B0.Text
  loc_195121A:             var_168 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_1951222:             Set var_274 = Me.FGrid
  loc_1951228:             LateIdCallSt
  loc_1951251:           End If
  loc_1951251:         End If
  loc_195125B:         var_A0 = Me.FGrid.Row
  loc_1951275:         Set var_B0 = Me.FGrid
  loc_1951286:         var_B4 = CStr(var_B0.TextMatrix))
  loc_195128E:         var_298 = Val(var_B4)
  loc_195129F:         Set var_128 = Me.Txt
  loc_19512A5:         Call 0.Method_Proc_150_68_19529BC0 (CInt(5), var_17C, var_278, var_298, CVar(CLng(&H14)), CVar(CLng(var_A0)), var_274)
  loc_19512AD:         var_168 = var_17C.Text
  loc_19512BA:         var_2A0 = Val(var_278)
  loc_1951315:         Set var_274 = Me.FGrid
  loc_195131B:         LateIdCallSt
  loc_195134D:         Call Proc_150_70_101D074(var_A0, var_274, CVar(CStr(Format(CVar(((var_298 * CDbl(&H64)) / var_2A0)), "0.00000"))), 1, 1, CVar(CLng(&H12)), CVar(CLng(Me.FGrid.Row)))
  loc_1951358:       Else
  loc_195135F:         If (var_A4 = CLng(&HF)) Then
  loc_195136F:           Set var_90 = Me.Txt
  loc_1951375:           Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, var_2A0, var_274)
  loc_195137D:           var_168 = var_B0.Text
  loc_1951399:           If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_19513AF:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19513B7:             var_E4 = CVar(CLng(7)) 'Long
  loc_19513BC:             var_104 = "0.00"
  loc_19513C6:             Set var_B0 = Me.FGrid
  loc_19513CC:             LateIdCallSt
  loc_19513F1:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_19513F9:             var_E4 = CVar(CLng(8)) 'Long
  loc_19513FE:             var_104 = "0.00"
  loc_1951408:             Set var_B0 = Me.FGrid
  loc_195140E:             LateIdCallSt
  loc_1951420:           End If
  loc_195142D:           Set var_90 = Me.TxtGrid
  loc_1951433:           Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, var_B0, var_104, var_E4, var_C4)
  loc_195143B:           var_B0 = var_B0.Text
  loc_195145E:           var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951476:           var_104 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_19514B1:           LateIdCallSt
  loc_19514E5:           Set var_90 = Me.TxtGrid
  loc_19514EB:           Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, Me.FGrid, CVar(CStr(Format(CVar(Val(var_B4)), "0.00"))), 1, 1)
  loc_19514F3:           var_104 = var_B0.Text
  loc_195150F:           If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_1951525:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195152D:             var_E4 = CVar(CLng(&HE)) 'Long
  loc_1951560:             If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_1951576:               var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195157E:               var_148 = CVar(CLng(&H13)) 'Long
  loc_1951596:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195159E:               var_E4 = CVar(CLng(&HF)) 'Long
  loc_19515C2:               var_168 = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_19515CA:               Set var_17C = Me.FGrid
  loc_19515D0:               LateIdCallSt
  loc_1951604:               var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195160C:               var_148 = CVar(CLng(&H13)) 'Long
  loc_1951615:               Set var_17C = Me.FGrid
  loc_1951626:               var_278 = CStr(var_17C.TextMatrix))
  loc_195162E:               var_298 = Val(var_278)
  loc_1951644:               var_178 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195164C:               var_220 = CVar(CLng(&H14)) 'Long
  loc_1951664:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195166C:               var_E4 = CVar(CLng(&HB)) 'Long
  loc_1951675:               Set var_B0 = Me.FGrid
  loc_1951686:               var_B4 = CStr(var_B0.TextMatrix))
  loc_1951694:               var_19C = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_195169C:               Set var_274 = Me.FGrid
  loc_19516A2:               LateIdCallSt
  loc_19516D2:             Else
  loc_19516E0:               Set var_90 = Me.Txt
  loc_19516E6:               Call 0.Method_Proc_150_68_19529BC0 (CInt(&HB), var_B0, var_B4, var_274, var_19C, var_E4, var_C4)
  loc_19516EE:               var_220 = var_B0.Text
  loc_195170A:               If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_195171B:                 Set var_128 = Me.Txt
  loc_1951721:                 Call 0.Method_Proc_150_68_19529BC0 (CInt(&HA), var_17C, var_278, var_178, var_298)
  loc_1951729:                 var_148 = var_17C.Text
  loc_195174C:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951776:                 var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1951787:                 Set var_280 = Me.Txt
  loc_195178D:                 Call 0.Method_Proc_150_68_19529BC0 (CInt(&HB), var_284, var_288, var_2A0, CVar(CLng(7)))
  loc_1951795:                 var_C4 = var_284.Text
  loc_19517A2:                 var_2A8 = Val(var_288)
  loc_19517E2:                 var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19517F3:                 Set var_2B0 = Me.Txt
  loc_19517F9:                 Call 0.Method_Proc_150_68_19529BC0 (CInt(9), var_2B4, var_2C0, var_2BC, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)))
  loc_195180E:                 var_2D0 = Val(var_2C0)
  loc_195183E:                 Set var_90 = Me.TxtGrid
  loc_1951844:                 Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)))
  loc_195186F:                 var_19C = CVar(CStr((((Val(var_B4) * (Val(var_278) * var_2A0)) + (var_2B4.Text * var_2BC)) / var_B0.Text))) 'String
  loc_1951877:                 Set var_2C8 = Me.FGrid
  loc_195187D:                 LateIdCallSt
  loc_19518C5:               Else
  loc_19518D3:                 Set var_128 = Me.Txt
  loc_19518D9:                 Call 0.Method_Proc_150_68_19529BC0 (CInt(&HA), var_17C, var_278, var_2C8, var_19C)
  loc_19518E1:                 var_298 = var_17C.Text
  loc_1951904:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195192E:                 var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_195193F:                 Set var_280 = Me.Txt
  loc_1951945:                 Call 0.Method_Proc_150_68_19529BC0 (CInt(9), var_284, var_288, var_2A0, CVar(CLng(8)))
  loc_195194D:                 var_C4 = var_284.Text
  loc_195195A:                 var_2A8 = Val(var_288)
  loc_195198A:                 Set var_90 = Me.TxtGrid
  loc_1951990:                 Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)))
  loc_19519B3:                 var_168 = CVar(CStr((((Val(var_B4) * Val(var_278)) * var_2A0) / var_B0.Text))) 'String
  loc_19519BB:                 Set var_290 = Me.FGrid
  loc_19519C1:                 LateIdCallSt
  loc_19519F6:               End If
  loc_1951A09:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951A1A:               Set var_17C = Me.FGrid
  loc_1951A2B:               var_278 = CStr(var_17C.TextMatrix))
  loc_1951A33:               var_298 = Val(var_278)
  loc_1951A64:               Set var_90 = Me.Txt
  loc_1951A6A:               Call 0.Method_Proc_150_68_19529BC0 (CInt(9), var_B0, var_B4, CVar(CLng(&H14)), CVar(CLng(Me.FGrid.Row)), var_298, CVar(CLng(&H13)))
  loc_1951A72:               var_C4 = var_B0.Text
  loc_1951A85:               var_168 = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_1951A8D:               Set var_274 = Me.FGrid
  loc_1951A93:               LateIdCallSt
  loc_1951ABC:             End If
  loc_1951ABC:           End If
  loc_1951AC6:           var_A0 = Me.FGrid.Row
  loc_1951AE0:           Set var_B0 = Me.FGrid
  loc_1951AF1:           var_B4 = CStr(var_B0.TextMatrix))
  loc_1951AF9:           var_298 = Val(var_B4)
  loc_1951B0A:           Set var_128 = Me.Txt
  loc_1951B10:           Call 0.Method_Proc_150_68_19529BC0 (CInt(5), var_17C, var_278, var_298, CVar(CLng(&H14)), CVar(CLng(var_A0)), var_274)
  loc_1951B18:           var_168 = var_17C.Text
  loc_1951B25:           var_2A0 = Val(var_278)
  loc_1951B86:           LateIdCallSt
  loc_1951BB8:           Call Proc_150_70_101D074(var_A0, Me.FGrid, CVar(CStr(Format(CVar(((var_298 * CDbl(&H64)) / var_2A0)), "0.00000"))), 1, 1, CVar(CLng(&H12)), CVar(CLng(Me.FGrid.Row)))
  loc_1951BC3:         Else
  loc_1951BCA:           If (var_A4 = CLng(&H12)) Then
  loc_1951BDA:             Set var_90 = Me.TxtGrid
  loc_1951BE0:             Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, var_2A0, var_290)
  loc_1951BE8:             var_168 = var_B0.Text
  loc_1951C0B:             var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951C23:             var_104 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1951C50:             var_19C = CVar(CStr(Format(CVar(Val(var_B4)), "0.00000"))) 'String
  loc_1951C58:             Set var_200 = Me.FGrid
  loc_1951C5E:             LateIdCallSt
  loc_1951C88:           Else
  loc_1951C8F:             If (var_A4 = CLng(&HB)) Then
  loc_1951CCF:               Set var_90 = Me.TxtGrid
  loc_1951CD5:               Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_200, var_19C)
  loc_1951CDD:               1 = var_B0.Text
  loc_1951CEC:               var_138 = CVar(CStr(Val(var_B4))) 'String
  loc_1951CF4:               Set var_200 = Me.FGrid
  loc_1951CFA:               LateIdCallSt
  loc_1951D2E:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951D46:               var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1951D82:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1951D98:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951DB0:                 var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1951DB5:                 var_104 = "NA"
  loc_1951DBF:                 Set var_128 = Me.FGrid
  loc_1951DC5:                 LateIdCallSt
  loc_1951DDD:               End If
  loc_1951DF0:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951DF8:               var_E4 = CVar(CLng(&HB)) 'Long
  loc_1951E30:               If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1951E46:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951E4E:                 var_E4 = CVar(CLng(&HE)) 'Long
  loc_1951E81:                 If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_1951E97:                   var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951E9F:                   var_148 = CVar(CLng(&H13)) 'Long
  loc_1951EB7:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951EBF:                   var_E4 = CVar(CLng(&HF)) 'Long
  loc_1951EE3:                   var_168 = CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))) 'String
  loc_1951EEB:                   Set var_17C = Me.FGrid
  loc_1951EF1:                   LateIdCallSt
  loc_1951F25:                   var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951F2D:                   var_148 = CVar(CLng(&H13)) 'Long
  loc_1951F36:                   Set var_17C = Me.FGrid
  loc_1951F47:                   var_278 = CStr(var_17C.TextMatrix))
  loc_1951F4F:                   var_298 = Val(var_278)
  loc_1951F65:                   var_178 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951F6D:                   var_220 = CVar(CLng(&H14)) 'Long
  loc_1951F85:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1951F8D:                   var_E4 = CVar(CLng(&HB)) 'Long
  loc_1951F96:                   Set var_B0 = Me.FGrid
  loc_1951FA7:                   var_B4 = CStr(var_B0.TextMatrix))
  loc_1951FB5:                   var_19C = CVar(CStr((Val(var_B4) * var_298))) 'String
  loc_1951FBD:                   Set var_274 = Me.FGrid
  loc_1951FC3:                   LateIdCallSt
  loc_1951FF3:                 Else
  loc_1952001:                   Set var_90 = Me.Txt
  loc_1952007:                   Call 0.Method_Proc_150_68_19529BC0 (CInt(&HB), var_B0, var_B4, var_274, var_19C, var_E4, var_C4)
  loc_195200F:                   var_220 = var_B0.Text
  loc_195202B:                   If (CDbl(Val(var_B4)) <> CDbl(0)) Then
  loc_195203C:                     Set var_128 = Me.Txt
  loc_1952042:                     Call 0.Method_Proc_150_68_19529BC0 (CInt(&HA), var_17C, var_278, var_178, var_298)
  loc_195204A:                     var_148 = var_17C.Text
  loc_195206D:                     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1952097:                     var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19520A8:                     Set var_280 = Me.Txt
  loc_19520AE:                     Call 0.Method_Proc_150_68_19529BC0 (CInt(&HB), var_284, var_288, var_2A0, CVar(CLng(7)))
  loc_19520B6:                     var_C4 = var_284.Text
  loc_19520C3:                     var_2A8 = Val(var_288)
  loc_1952103:                     var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1952114:                     Set var_2B0 = Me.Txt
  loc_195211A:                     Call 0.Method_Proc_150_68_19529BC0 (CInt(9), var_2B4, var_2C0, var_2BC, CVar(CLng(8)), CVar(CLng(Me.FGrid.Row)))
  loc_195212F:                     var_2D0 = Val(var_2C0)
  loc_195215F:                     Set var_90 = Me.TxtGrid
  loc_1952165:                     Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)))
  loc_1952190:                     var_19C = CVar(CStr((((Val(var_B4) * (Val(var_278) * var_2A0)) + (var_2B4.Text * var_2BC)) / var_B0.Text))) 'String
  loc_1952198:                     Set var_2C8 = Me.FGrid
  loc_195219E:                     LateIdCallSt
  loc_19521E6:                   Else
  loc_19521F4:                     Set var_128 = Me.Txt
  loc_19521FA:                     Call 0.Method_Proc_150_68_19529BC0 (CInt(&HA), var_17C, var_278, var_2C8, var_19C)
  loc_1952202:                     var_298 = var_17C.Text
  loc_1952225:                     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195222D:                     var_E4 = CVar(CLng(7)) 'Long
  loc_195224F:                     var_2A0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_195227F:                     Set var_90 = Me.TxtGrid
  loc_1952285:                     Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)), var_2A0)
  loc_195228D:                     var_E4 = var_B0.Text
  loc_19522A4:                     var_168 = CVar(CStr(((Val(var_B4) * Val(var_278)) * var_2A0))) 'String
  loc_19522AC:                     Set var_284 = Me.FGrid
  loc_19522B2:                     LateIdCallSt
  loc_19522E1:                   End If
  loc_195230B:                   var_124 = Me.FGrid.TextMatrix)
  loc_1952325:                   Set var_128 = Me.Txt
  loc_195232B:                   Call 0.Method_Proc_150_68_19529BC0 (CInt(9), var_17C, var_278, var_124, CVar(CLng(&HB)), CVar(CLng(Me.FGrid.Row)), var_284)
  loc_1952333:                   var_168 = var_17C.Text
  loc_1952356:                   var_2F0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195235E:                   var_310 = CVar(CLng(&H14)) 'Long
  loc_1952376:                   var_104 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195237E:                   var_148 = CVar(CLng(&HB)) 'Long
  loc_19523BE:                   var_1AC = IIf((CStr(var_124) = "NA"), CVar(Val(var_278)), CVar(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_19523D9:                   var_230 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_195240C:                   var_210 = CVar(CStr((CVar(CLng(&H13)) * CVar(Val(CStr(Me.FGrid.TextMatrix))))))) 'String
  loc_1952414:                   Set var_290 = Me.FGrid
  loc_195241A:                   LateIdCallSt
  loc_195245F:                 End If
  loc_195245F:               End If
  loc_1952469:               var_A0 = Me.FGrid.Row
  loc_1952483:               Set var_B0 = Me.FGrid
  loc_1952494:               var_B4 = CStr(var_B0.TextMatrix))
  loc_195249C:               var_298 = Val(var_B4)
  loc_19524AD:               Set var_128 = Me.Txt
  loc_19524B3:               Call 0.Method_Proc_150_68_19529BC0 (CInt(5), var_17C, var_278, var_298, CVar(CLng(&H14)), CVar(CLng(var_A0)), var_290)
  loc_19524BB:               var_210 = var_17C.Text
  loc_19524C8:               var_2A0 = Val(var_278)
  loc_195251B:               var_1AC = CVar(CStr(Format(CVar(((var_298 * CDbl(&H64)) / var_2A0)), "0.00000"))) 'String
  loc_1952529:               LateIdCallSt
  loc_195255B:               Call Proc_150_70_101D074(var_A0, Me.FGrid, var_1AC, 1, 1, CVar(CLng(&H12)), CVar(CLng(Me.FGrid.Row)))
  loc_1952563:             End If
  loc_1952563:           End If
  loc_1952563:         End If
  loc_1952563:       End If
  loc_1952563:     End If
  loc_1952563:   End If
  loc_1952566: Else
  loc_195256C:   If (var_8A = 1) Then
  loc_1952582:     var_334 = CLng(Me.FGrid1.Col)
  loc_1952592:     If (var_334 = CLng(1)) Then
  loc_19525B5:       var_AA = Me.EOF
  loc_19525E3:       Set var_90 = Me.TxtGrid
  loc_19525E9:       Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, ((Me.RecordCount = 0) Or ((var_AA = &HFF) Or (Me.BOF = &HFF))), var_334, var_2A0)
  loc_19525F1:       var_230 = var_B0.Text
  loc_1952609:       If (var_1AC Or (var_B4 = vbNullString)) Then
  loc_195261F:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1952627:         var_E4 = CVar(CLng(1)) 'Long
  loc_195262C:         var_104 = vbNullString
  loc_1952636:         Set var_B0 = Me.FGrid1
  loc_195263C:         LateIdCallSt
  loc_1952661:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1952669:         var_E4 = CVar(CLng(2)) 'Long
  loc_195266E:         var_104 = vbNullString
  loc_1952678:         Set var_B0 = Me.FGrid1
  loc_195267E:         LateIdCallSt
  loc_1952693:       Else
  loc_1952696:         Call Proc_150_72_F80054(var_AA, var_B0, var_104, var_E4, var_C4, var_B0, var_104)
  loc_19526A1:         If (var_AA = &HFF) Then
  loc_19526A9:           Proc_150_68_19529BC = 0
  loc_19526AF:         End If
  loc_19526C2:         var_104 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_19526CA:         var_148 = CVar(CLng(0)) 'Long
  loc_19526E8:         var_C4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_19526F0:         var_E4 = CVar(CLng(0)) 'Long
  loc_195270A:         var_B4 = CStr(Me.FGrid1.TextMatrix))
  loc_1952718:         var_168 = CVar(CStr((Val(var_B4) + CDbl(1)))) 'String
  loc_1952720:         Set var_17C = Me.FGrid1
  loc_1952726:         LateIdCallSt
  loc_195275A:         var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1952762:         var_F4 = CVar(CLng(1)) 'Long
  loc_1952795:         var_138 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_195279D:         Set var_17C = Me.FGrid1
  loc_19527A3:         LateIdCallSt
  loc_19527D2:         var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_19527DA:         var_F4 = CVar(CLng(2)) 'Long
  loc_19527FC:         var_B0 = Me.Fields.Item("Code")
  loc_195281B:         LateIdCallSt
  loc_1952865:         Set var_90 = Me.Txt
  loc_195286B:         Call 0.Method_Proc_150_68_19529BC0 (CInt(0), var_B0, var_B4, CVar(CLng(5)), CVar(CLng(Me.FGrid1.Row)), Me.FGrid1, CVar(CStr(var_B0.Value)))
  loc_1952873:         var_F4 = var_B0.Tag
  loc_195287B:         var_124 = CVar(var_B4) 'String
  loc_1952883:         Set var_17C = Me.FGrid1
  loc_1952889:         LateIdCallSt
  loc_19528A3:       End If
  loc_19528A6:     Else
  loc_19528AD:       If (var_334 = CLng(3)) Then
  loc_19528BA:         Set var_90 = Me.TxtGrid
  loc_19528C0:         Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_17C, var_124, var_D4)
  loc_19528D8:         var_D4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_19528E0:         var_F4 = CVar(CLng(3)) 'Long
  loc_195290D:         var_18C = CVar(CStr(Format(CVar(var_B0), "0.00"))) 'String
  loc_1952915:         Set var_17C = Me.FGrid1
  loc_195291B:         LateIdCallSt
  loc_195293C:       Else
  loc_1952943:         If (var_334 = CLng(4)) Then
  loc_1952973:           Set var_90 = Me.TxtGrid
  loc_1952979:           Call 0.Method_Proc_150_68_19529BC0 (arg_C, var_B0, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid1.Row)), var_17C, var_18C)
  loc_1952981:           1 = var_B0.Text
  loc_1952989:           var_124 = CVar(var_B4) 'String
  loc_1952991:           Set var_17C = Me.FGrid1
  loc_1952997:           LateIdCallSt
  loc_19529B1:         End If
  loc_19529B1:       End If
  loc_19529B1:     End If
  loc_19529B1:   End If
  loc_19529B1: End If
  loc_19529B6: Proc_150_68_19529BC = &HFF
End Sub

Public Sub Proc_150_69_F2A5B0
  'Data Table: 506778
  Dim var_BC As Variant
  Dim var_8C As Integer
  Dim var_108 As Variant
  Dim var_86 As Integer
  loc_F2A4B6: var_BC = (Me.rows - 1)
  loc_F2A4BE: For var_C0 = 1 To CInt(var_BC): var_88 = var_C0 'Integer
  loc_F2A4D7:   var_BC = (Me.rows - 1)
  loc_F2A4DF:   For var_C4 = var_88 To CInt(var_BC): var_8A = var_C4 'Integer
  loc_F2A508:     var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F2A533:     var_108 = CVar(Val(CStr(Me.TextMatrix))) 'Double
  loc_F2A55D:     If (arg_10 > Me.TextMatrix) Then
  loc_F2A583:       var_8C = CInt(Val(CStr(Me.TextMatrix)))
  loc_F2A58C:       Exit For
  loc_F2A58F:     End If
  loc_F2A592:   Next var_C4 'Integer
  loc_F2A597:   ' Referenced from: F2A58C
  loc_F2A59A: Next var_C0 'Integer
  loc_F2A5A5: var_86 = (var_8C + 1)
  loc_F2A5A8: Proc_150_69_F2A5B0 = var_86
End Sub

Public Sub Proc_150_70_101D074
  'Data Table: 506778
  Dim var_A0 As Double
  Dim var_A4 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As TextBox
  Dim var_130 As TextBox
  loc_101CE61: var_A0 = CDbl(0)
  loc_101CE8C: For var_B8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_96 = var_B8 'Byte
  loc_101CE97:   var_C8 = CVar(CLng(var_96)) 'Long
  loc_101CE9F:   var_E8 = CVar(CLng(&HE)) 'Long
  loc_101CECA:   If (CStr(Me.FGrid.TextMatrix)) = "Flat Rate") Then
  loc_101CED2:     var_C8 = CVar(CLng(var_96)) 'Long
  loc_101CEDA:     var_E8 = CVar(CLng(&HF)) 'Long
  loc_101CF05:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_101CF0D:       var_C8 = CVar(CLng(var_96)) 'Long
  loc_101CF15:       var_E8 = CVar(CLng(&H14)) 'Long
  loc_101CF41:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_101CF4D:     End If
  loc_101CF50:   Else
  loc_101CF55:     var_C8 = CVar(CLng(var_96)) 'Long
  loc_101CF5D:     var_E8 = CVar(CLng(7)) 'Long
  loc_101CF88:     If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_101CF90:       var_C8 = CVar(CLng(var_96)) 'Long
  loc_101CF98:       var_E8 = CVar(CLng(&H14)) 'Long
  loc_101CFC4:       var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_101CFD0:     End If
  loc_101CFD0:   End If
  loc_101CFD3: Next var_B8 'Byte
  loc_101CFE7: Set var_A4 = Me.Txt
  loc_101CFED: Call 0.Method_Proc_150_70_101D0740 (CInt(&HC), var_108)
  loc_101D021: var_B4 = CVar((var_A0 + Val(var_108.Text))) 'Double
  loc_101D03F: Set var_12C = Me.Txt
  loc_101D045: Call 0.Method_Proc_150_70_101D0740 (CInt(1), var_130, CStr(Format(Me.FGrid.TextMatrix), "0.00")))
  loc_101D04D: var_130.Text = 1
  loc_101D06D: Proc_150_70_101D074 = 1
End Sub

Public Sub Proc_150_71_F8037C
  'Data Table: 506778
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As String
  Dim var_E8 As MSHFlexGrid
  Dim var_FC As TextBox
  loc_F8023E: var_86 = 0
  loc_F80269: For var_A0 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Byte
  loc_F80274:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_F8027C:   var_D0 = CVar(CLng(1)) 'Long
  loc_F80296:   var_E4 = CStr(Me.FGrid.TextMatrix))
  loc_F802C9:   If ((var_E4 <> vbNullString) And (CLng(var_88) <> CLng(Me.FGrid.Row))) Then
  loc_F802D1:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_F802D9:     var_D0 = CVar(CLng(1)) 'Long
  loc_F80302:     Set var_E8 = Me.TxtGrid
  loc_F80308:     Call 0.Method_Proc_150_71_F8037C0 (0, var_FC, var_E4, CStr(Me.FGrid.TextMatrix)), var_D0)
  loc_F80310:     var_B0 = var_FC.Text
  loc_F8032D:     If (var_D0 = var_E4) Then
  loc_F80351:       MsgBox("Duplicate Revenue", &H40, "Validation", var_110, var_120)
  loc_F80366:       Proc_150_71_F8037C = &HFF
  loc_F8036C:     End If
  loc_F8036C:   End If
  loc_F8036F: Next var_A0 'Byte
  loc_F80375: Proc_150_71_F8037C = 
End Sub

Public Sub Proc_150_72_F80054
  'Data Table: 506778
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As String
  Dim var_E8 As MSHFlexGrid
  Dim var_FC As TextBox
  loc_F7FF16: var_86 = 0
  loc_F7FF41: For var_A0 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_A0 'Byte
  loc_F7FF4C:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_F7FF54:   var_D0 = CVar(CLng(1)) 'Long
  loc_F7FF6E:   var_E4 = CStr(Me.FGrid1.TextMatrix))
  loc_F7FFA1:   If ((var_E4 <> vbNullString) And (CLng(var_88) <> CLng(Me.FGrid1.Row))) Then
  loc_F7FFA9:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_F7FFB1:     var_D0 = CVar(CLng(1)) 'Long
  loc_F7FFDA:     Set var_E8 = Me.TxtGrid
  loc_F7FFE0:     Call 0.Method_Proc_150_72_F800540 (1, var_FC, var_E4, CStr(Me.FGrid1.TextMatrix)), var_D0)
  loc_F7FFE8:     var_B0 = var_FC.Text
  loc_F80005:     If (var_D0 = var_E4) Then
  loc_F80029:       MsgBox("Duplicate Revenue", &H40, "Validation", var_110, var_120)
  loc_F8003E:       Proc_150_72_F80054 = &HFF
  loc_F80044:     End If
  loc_F80044:   End If
  loc_F80047: Next var_A0 'Byte
  loc_F8004D: Proc_150_72_F80054 = 
End Sub

Public Sub Proc_150_73_F57964
  'Data Table: 506778
  Dim var_94 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_FC As TextBox
  Dim var_86 As Integer
  loc_F5786D: For var_A8 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A8 'Integer
  loc_F57877:   var_B8 = CVar(CLng(var_88)) 'Long
  loc_F5787F:   var_D8 = CVar(CLng(&H12)) 'Long
  loc_F578AB:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F578BA: Next var_A8 'Integer
  loc_F578DA: If (Me.Check1.Value = 1) Then
  loc_F578EB:   Set var_94 = Me.Txt
  loc_F578F1:   Call 0.Method_Proc_150_73_F579640 (CInt(4), var_FC)
  loc_F57910:   var_90 = (var_90 + Val(var_FC.Text))
  loc_F5791D: End If
  loc_F57924: If (var_90 = CDbl(&H64)) Then
  loc_F57929:   var_86 = &HFF
  loc_F5792F: Else
  loc_F57948:   MsgBox("Please enter valid Percent Rate", 0, var_10C, var_11C, var_12C)
  loc_F5795A:   var_86 = 0
  loc_F5795D: End If
  loc_F5795D: Proc_150_73_F57964 = var_86
End Sub

Public Sub Proc_150_74_13CF338(arg_C, arg_10) '13CF338
  'Data Table: 506778
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_154 As Variant
  Dim var_178 As String
  Dim unk_5067A0 As Connection15
  Dim var_B4 As Recordset15
  Dim var_E0 As String
  Dim var_19C As Field20
  Dim var_134 As Variant
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_AC As Recordset15
  Dim var_1C0 As Double
  Dim var_C0 As Double
  Dim var_1D8 As Double
  Dim var_1A4 As Fields15
  Dim var_1E8 As Double
  loc_13CE9BC: var_D0 = CVar(CLng(arg_C)) 'Long
  loc_13CE9C4: var_F0 = CVar(CLng(2)) 'Long
  loc_13CE9FE: var_154 = "SELECT * FROM REVMAST WHERE CODE='" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_13CEA15: unk_5067A0.Execute CStr(var_154 & "'"), var_198, -1
  loc_13CEA20: Set var_B4 = var_19C
  loc_13CEA50: If (var_B4.RecordCount > 0) Then
  loc_13CEA60:   var_E0 = "Select taxstru.*,RevMAst.Name AS TaxName,REVMAST.RoundOff from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and taxstru.Code='"
  loc_13CEA8F:   var_124 = var_E0 & var_B4.Fields.Item("TaxStru").Value 
  loc_13CEA98:   var_134 = var_124 & "' Order by Sno" 
  loc_13CEAA6:   unk_5067A0.Execute CStr(var_134), var_154, -1
  loc_13CEAB1:   Set var_AC = var_1A4
  loc_13CEACE: Else
  loc_13CEAE7:   MsgBox("System Defined Revenue is not defined", 0, var_124, var_134, var_154)
  loc_13CEAF7:   Proc_150_74_13CF338 = var_1A4
  loc_13CEAFD: End If
  loc_13CEB00: var_98 = arg_10
  loc_13CEB06: var_A0 = arg_10
  loc_13CEB0C: var_A8 = CDbl(0)
  loc_13CEB23: If (var_AC.RecordCount > 0) Then
  loc_13CEB26:   ' Referenced from: 13CF2BD
  loc_13CEB35:   If Not(var_AC.EOF) Then
  loc_13CEB63:     var_B8 = CStr(var_AC.Fields.Item("TaxName").Value)
  loc_13CEBA6:     var_1B8 = Trim(CVar(Proc_6_38_E68A98(CVar(var_AC.Fields.Item("Nature")), var_A8, var_A0, var_98))) 'Variant
  loc_13CEBBF:     If (var_1B8 = "On Base Amt") Then
  loc_13CEC02:       If (Trim(CVar(var_AC.Fields.Item("RoundOff"))) = "No") Then
  loc_13CEC6B:         var_C0 = CSng(Format(CVar(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_98) / CDbl(&H64))), "0.00000"))
  loc_13CEC86:       Else
  loc_13CECB9:         var_1D8 = Val(CStr(var_AC.Fields.Item("Rate").Value))
  loc_13CED18:         Proc_6_142_14A55B0(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_98) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_AC.Fields.Item("Rate").Value)), var_1D8, var_C0)
  loc_13CED44:         var_134 = CVar((((var_1D8 * var_98) / CDbl(&H64)) + 1)) 'Double
  loc_13CED54:         var_C0 = CSng(Format("0.00000", "0.00000"))
  loc_13CED78:       End If
  loc_13CED7F:       var_A0 = (var_A0 + var_C0)
  loc_13CED85:       var_A8 = var_C0
  loc_13CED8B:     Else
  loc_13CED96:       If (var_1B8 = "On Running Total") Then
  loc_13CEDD9:         If (Trim(CVar(var_AC.Fields.Item("RoundOff"))) = "No") Then
  loc_13CEE0F:           var_1C0 = Val(CStr(var_AC.Fields.Item("Rate").Value))
  loc_13CEE42:           var_C0 = CSng(Format(CVar(((var_1C0 * var_A0) / CDbl(&H64))), "0.00000"))
  loc_13CEE5D:         Else
  loc_13CEEB9:           Proc_6_142_14A55B0(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_A0) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_AC.Fields.Item("Rate").Value)), var_C0, 1, 1)
  loc_13CEEE9:           var_C0 = CSng(Format(CVar(var_1C0), "0.00000"))
  loc_13CEF05:         End If
  loc_13CEF0C:         var_A0 = (var_A0 + var_C0)
  loc_13CEF12:         var_A8 = var_C0
  loc_13CEF18:       Else
  loc_13CEF23:         If (var_1B8 = "On Prev. Tax Amt") Then
  loc_13CEF66:           If (Trim(CVar(var_AC.Fields.Item("RoundOff"))) = "No") Then
  loc_13CEFCF:             var_C0 = CSng(Format(CVar(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64))), "0.00000"))
  loc_13CEFEA:           Else
  loc_13CF01D:             var_1D8 = Val(CStr(var_AC.Fields.Item("Rate").Value))
  loc_13CF07C:             Proc_6_142_14A55B0(((Val(CStr(var_AC.Fields.Item("Rate").Value)) * var_A8) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_AC.Fields.Item("Rate").Value)), var_1D8, var_C0, 1)
  loc_13CF0A8:             var_134 = CVar((((var_1D8 * var_98) / CDbl(&H64)) + 1)) 'Double
  loc_13CF0B8:             var_C0 = CSng(Format("0.00000", "0.00000"))
  loc_13CF0DC:           End If
  loc_13CF0E3:           var_A0 = (var_A0 + var_C0)
  loc_13CF0E9:           var_A8 = var_C0
  loc_13CF0EF:         Else
  loc_13CF12F:           If (Trim(CVar(var_AC.Fields.Item("RoundOff"))) = "No") Then
  loc_13CF165:             var_1C0 = Val(CStr(var_AC.Fields.Item("Rate").Value))
  loc_13CF198:             var_C0 = CSng(Format(CVar(((var_1C0 * var_98) / CDbl(&H64))), "0.00000"))
  loc_13CF1B3:           Else
  loc_13CF1DE:             var_178 = CStr(var_AC.Fields.Item("Rate").Value)
  loc_13CF1E6:             var_1D8 = Val(var_178)
  loc_13CF20B:             var_124 = var_AC.Fields.Item("Rate").Value
  loc_13CF245:             Proc_6_142_14A55B0(((Val(CStr(var_124)) * var_98) / CDbl(&H64)), CByte(0), "U", 2, Val(CStr(var_124)), var_1D8, var_C0, 1)
  loc_13CF24A:             var_1E8 = 1
  loc_13CF25C:             var_154 = "0.00000"
  loc_13CF271:             var_134 = CVar((((var_1D8 * var_98) / CDbl(&H64)) + var_1E8)) 'Double
  loc_13CF281:             var_C0 = CSng(Format("0.00000", var_154))
  loc_13CF2A5:           End If
  loc_13CF2AC:           var_A0 = (var_A0 + var_C0)
  loc_13CF2B2:           var_A8 = var_C0
  loc_13CF2B5:         End If
  loc_13CF2B5:       End If
  loc_13CF2B5:     End If
  loc_13CF2B8:     var_AC.MoveNext
  loc_13CF2BD:     GoTo loc_13CEB26
  loc_13CF2C0:   End If
  loc_13CF2C0: End If
  loc_13CF2C5: Set var_AC = Nothing
  loc_13CF2CD: Set var_B4 = Nothing
  loc_13CF2D5: Set var_B0 = Nothing
  loc_13CF2DE: Proc_150_74_13CF338 = var_A0
  loc_13CF2EA: If (var_90 = &HFF) Then
  loc_13CF2F3:   unk_5067A0.RollbackTrans
  loc_13CF2F8: End If
  loc_13CF300: Set var_104 = Err()
  loc_13CF306: Call 0.Method_arg_2C (var_178, var_A8, var_A0, var_C0, 1, 1, var_1E8)
  loc_13CF31F: MsgBox(CVar(var_178), &H40, var_124, "0.00000", var_154)
  loc_13CF332: Proc_150_74_13CF338 = var_1C0
End Sub
